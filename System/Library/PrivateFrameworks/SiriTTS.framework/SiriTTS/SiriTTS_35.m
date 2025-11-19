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
  v30 = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
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
        break;
      }

      if (v10 == 58)
      {
        if (v9 <= v8)
        {
          v12 = 0;
        }

        else
        {
          memcpy(__dst, &a1[v8], v9 + ~v8 + 1);
          v12 = v9 - v8;
        }

        v6 = __dst;
        __dst[v12] = 0;
        ++v9;
        if (__dst[1] == 95)
        {
          v24 = __dst[0];
          v25 = memchr("SsEeIi", __dst[0], 7uLL);
          v6 = &__dst[2 * (v25 != 0)];
          if (v25)
          {
            v5 = v24;
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

LABEL_26:
        v8 = v9;
        goto LABEL_27;
      }

      if (v10 == 59)
      {
        break;
      }

      ++v9;
LABEL_27:
      if (v9 > v4)
      {
        goto LABEL_36;
      }
    }

    if (v5)
    {
      __src[0] = v5;
      __src[1] = 95;
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v9 > v8)
    {
      v13 = &a1[v8];
      v14 = v9 - v8;
      do
      {
        v15 = *v13++;
        __src[v11++] = v15;
        --v14;
      }

      while (v14);
    }

    __src[v11] = 0;
    if (v6)
    {
      v16 = strcmp(v6, "POS");
      v17 = a2 + 8;
      if (!v16)
      {
        goto LABEL_23;
      }

      v18 = strcmp(v6, "PHR");
      v17 = a2 + 9;
      if (!v18)
      {
        goto LABEL_23;
      }

      v19 = strcmp(v6, "CLASS");
      v17 = a2 + 10;
      if (!v19)
      {
        goto LABEL_23;
      }

      v20 = strcmp(v6, "PUNC");
      v17 = a2 + 12;
      if (!v20 || (v21 = strcmp(v6, "COMP"), v17 = a2 + 11, !v21) || (v22 = strcmp(v6, "BNDSHAPE"), v17 = a2 + 13, !v22) || (v23 = strcmp(v6, "COMPPOS"), v17 = a2 + 14, !v23))
      {
LABEL_23:
        strcpy(*v17, __src);
      }

      ++v7;
    }

    v5 = 0;
    ++v9;
    goto LABEL_26;
  }

  v7 = 0;
LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t DupWrdRecField(uint64_t a1, char **a2, uint64_t a3, const char *a4)
{
  v8 = heap_Alloc(*(a1 + 8), a3);
  v14 = v8;
  if (v8)
  {
    strncpy(v8, a4, a3 - 1);
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

uint64_t nnextract_Process2Buff(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
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
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  GetLingTabIndex(v13, v42);
  if (SLOWORD(v42[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOWELS entry.", v21, v22, v23, v24, v25);
  }

  if (SWORD1(v42[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOICEDPHONES entry.", v21, v22, v23, v24, v25);
  }

  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v42, a9, a10, a2, a3, v18, v17, a8);
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
        v40 = *a12;
        v41 = *(*a7 + 4024);
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
  v41 = a2 + 4;
  v39 = a2 + 6;
  v40 = a2 + 5;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 1) = v8;
  v37 = a2 + 8;
  v38 = a2 + 7;
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
    v9 = *a1;
    if (!*a1)
    {
      break;
    }

    v10 = strcmp(*a1, "VOWELS");
    v11 = a2;
    if (!v10)
    {
      goto LABEL_20;
    }

    v12 = strcmp(v9, "VOICEDPHONES");
    v11 = v5;
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = strcmp(v9, "BC_MONOVOWELS");
    v11 = v6;
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = strcmp(v9, "BC_DIPTHVOWELS");
    v11 = v7;
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = strcmp(v9, "BC_AFFRICATES");
    v11 = v41;
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = strcmp(v9, "BC_FRICATIVES");
    v11 = v40;
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = strcmp(v9, "BC_STOPS");
    v11 = v39;
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = strcmp(v9, "BC_LIQUIDS_TAP");
    v11 = v38;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = strcmp(v9, "BC_NASALS");
    v11 = v37;
    if (!v19)
    {
      goto LABEL_20;
    }

    v20 = strcmp(v9, "BC_GLIDES");
    v11 = v36;
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = strcmp(v9, "COMMON_WORDLIST");
    v11 = v35;
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = strcmp(v9, "FXN_WORDLIST");
    v11 = v34;
    if (!v22)
    {
      goto LABEL_20;
    }

    v23 = strcmp(v9, "WH_WORDLIST");
    v11 = v33;
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = strcmp(v9, "CONJ_WORDLIST");
    v11 = v32;
    if (v24)
    {
      v25 = strcmp(v9, "AUXV_WORDLIST");
      v11 = v31;
      if (v25)
      {
        v26 = strcmp(v9, "ADPOS_WORDLIST");
        v11 = v30;
        if (v26)
        {
          v27 = strcmp(v9, "EXCL_FEATLIST");
          v11 = v29;
          if (v27)
          {
            continue;
          }
        }
      }
    }

LABEL_20:
    *v11 = v4++;
    a1 += 2;
  }

  while (v4 != 17);
  return v4;
}

uint64_t extractNnFeatures(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, uint64_t a10)
{
  v352[13] = *MEMORY[0x1E69E9840];
  v349[1] = 0;
  v350 = 0;
  v349[0] = 0;
  v352[0] = fExtGetPhoneFeats;
  v352[1] = fExtGetLexicalFeats;
  v352[2] = fExtGetParseFeats;
  v352[3] = fExtGetPhraseFeats;
  v352[4] = fExtGetPunctFeats;
  v352[5] = fExtGetPhone2BdryFeats;
  v352[6] = fExtGetSyll2BdryFeats;
  v352[7] = fExtGetStrGrp2BdryFeats;
  v352[8] = fExtGetWord2BdryFeats;
  v352[9] = fExtGetParse2BdryFeats;
  v352[10] = fExtGetPhrase2BdryFeats;
  v352[11] = fExtGetPunct2BdryFeats;
  v352[12] = fExtGetVPhone2BdryFeats;
  TrieIntInit(v349);
  v16 = TrieIntAdd(a1, v349, "Phone", a9);
  v17 = TrieIntAdd(a1, v349, "Voicing", a9) | v16;
  v18 = TrieIntAdd(a1, v349, "ConsVow", a9);
  v19 = v17 | v18 | TrieIntAdd(a1, v349, "BroadClass", a9);
  v20 = TrieIntAdd(a1, v349, "LexStress", a9);
  v21 = v20 | TrieIntAdd(a1, v349, "PhoneTag", a9);
  v22 = v19 | v21 | TrieIntAdd(a1, v349, "PhoneDiff", a9);
  v23 = TrieIntAdd(a1, v349, "Prominence", a9);
  v24 = v23 | TrieIntAdd(a1, v349, "POS", a9);
  v25 = v24 | TrieIntAdd(a1, v349, "nluPOS", a9);
  v26 = v22 | v25 | TrieIntAdd(a1, v349, "nluCLS", a9);
  v27 = TrieIntAdd(a1, v349, "nluPNC", a9);
  v28 = v27 | TrieIntAdd(a1, v349, "nluCMP", a9);
  v29 = v28 | TrieIntAdd(a1, v349, "nluBDS", a9);
  v30 = v29 | TrieIntAdd(a1, v349, "nluCPS", a9);
  v31 = v26 | v30 | TrieIntAdd(a1, v349, "IsFxnWord", a9);
  v32 = TrieIntAdd(a1, v349, "IsWHWord", a9);
  v33 = v32 | TrieIntAdd(a1, v349, "IsAuxWord", a9);
  v34 = v33 | TrieIntAdd(a1, v349, "IsConjWord", a9);
  v35 = v34 | TrieIntAdd(a1, v349, "IsAdposWord", a9);
  if (v31 | v35 | TrieIntAdd(a1, v349, "CommonWord", a9))
  {
    v41 = " in extractFeatures while calling TrieAdd.";
    goto LABEL_53;
  }

  v346 = a2;
  v339 = a8;
  if (a10)
  {
    v42 = 14;
  }

  else
  {
    v42 = 13;
  }

  v43 = kaldi::QuantizedMatrixBase<short>::NumRows(v349);
  v44 = FillProsWords(a1, a6, a7, &v350 + 4, &v350, "-", a4, a5);
  if (!v44)
  {
    v41 = " in extractFeatures while calling FillProsWords.";
    goto LABEL_53;
  }

  v45 = v44;
  v337 = v43;
  v46 = v350;
  v47 = HIDWORD(v350);
  v48 = heap_Alloc(a1[1], 72);
  if (!v48)
  {
    v63 = " allocating memory in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v54 = v48;
  *(v48 + 64) = 0;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  v55 = heap_Alloc(a1[1], 24);
  if (!v55)
  {
    v62 = " allocating memory in BuildPhonePhT.";
    goto LABEL_14;
  }

  v61 = v55;
  if (TierInit(a1, v55, v46, "Phone-level PHONE tier"))
  {
    v62 = " in BuildPhonePhT initializing tier.";
LABEL_14:
    NNFX_logMsg(a1, 0, v62, v56, v57, v58, v59, v60);
    *v54 = 0;
    v63 = " building phone tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v341 = v47;
  v344 = v61;
  v332 = v42;
  v334 = v54;
  v335 = v46;
  if (v47)
  {
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = v45[v64];
      v67 = *(v66 + 144);
      if (v67)
      {
        v68 = v45;
        v69 = 0;
        v70 = *(v344 + 1) + 2 * v65;
        do
        {
          v71 = *(a3 + 2);
          v72 = 1;
          if (v71 != -1 && v71 <= 499)
          {
            if (strchr(**(v346 + 16 * *(a3 + 2) + 8), *(*(v66 + 152) + v69)))
            {
              v72 = 2;
            }

            else
            {
              v72 = 1;
            }
          }

          *(v70 + 2 * v69++) = v72;
        }

        while (v67 != v69);
        v65 += v69;
        v45 = v68;
        v47 = v341;
      }

      ++v64;
    }

    while (v64 != v47);
  }

  v73 = v335;
  v344[1] = v335;
  *v334 = v344;
  v74 = heap_Alloc(a1[1], 24);
  if (!v74)
  {
    v81 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_51;
  }

  v80 = v74;
  if (TierInit(a1, v74, v335, "Phone-level SYLLABLE tier"))
  {
    v81 = " in BuildSyllablePhT initializing tier.";
    goto LABEL_51;
  }

  v82 = v341;
  if (v341)
  {
    v83 = 0;
    v82 = 0;
    while (1)
    {
      v84 = v45[v83];
      v85 = *(v84 + 144);
      if (v85)
      {
        break;
      }

LABEL_39:
      if (++v83 == v341)
      {
        goto LABEL_40;
      }
    }

    v86 = 0;
    v87 = v335 - v82;
    v88 = 4 * v85;
    if (v335 < v82)
    {
      v87 = 0;
    }

    v89 = 4 * v87;
    v90 = 2 * v82;
    while (v89 != v86)
    {
      *(*(v80 + 1) + v90) = *(*(v84 + 184) + v86);
      v86 += 4;
      ++v82;
      v90 += 2;
      if (v88 == v86)
      {
        goto LABEL_39;
      }
    }

    v81 = " in BuildSyllablePhT attempting to write at index %d in a buffer of size %d.";
LABEL_51:
    NNFX_logMsg(a1, 0, v81, v75, v76, v77, v78, v79);
    v334[1] = 0;
    v63 = " building syllable tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

LABEL_40:
  if (v82 != v335)
  {
    v81 = ": %d phones processed, but total %d phones expected in BuildSyllablePhT.";
    goto LABEL_51;
  }

  v91 = 0;
  if (v335)
  {
    v92 = *(v80 + 1);
    v93 = v335;
    do
    {
      if (*v92++)
      {
        ++v91;
      }

      --v93;
    }

    while (v93);
  }

  v80[1] = v91;
  v334[1] = v80;
  v95 = heap_Alloc(a1[1], 24);
  if (!v95)
  {
    v102 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_56;
  }

  v101 = v95;
  if (TierInit(a1, v95, v335, "Phone-level WORD tier"))
  {
    v102 = " in BuildWordPhT initializing tier.";
    goto LABEL_56;
  }

  if (v341)
  {
    v106 = 0;
    v107 = 0;
    while (v107 < v335)
    {
      v108 = *(v101 + 1);
      v109 = *(v45[v106] + 144) - 1;
      if (*(v45[v106] + 144) != 1)
      {
        v110 = v109 + v107;
        do
        {
          *(v108 + 2 * v107++) = 0;
          --v109;
        }

        while (v109);
        v107 = v110;
      }

      v111 = v107 + 1;
      *(v108 + 2 * v107) = 1;
      ++v106;
      ++v107;
      if (v106 == v341)
      {
        goto LABEL_67;
      }
    }

    v102 = " in BuildWordPhT attempting to write at index %d in a buffer of size %d.";
LABEL_56:
    NNFX_logMsg(a1, 0, v102, v96, v97, v98, v99, v100);
    v334[2] = 0;
    v63 = " building word tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v111 = 0;
LABEL_67:
  if (v111 != v335)
  {
    v102 = ": %d phones processed, but total %d phones expected in BuildWordPhT.";
    goto LABEL_56;
  }

  v112 = 0;
  if (v335)
  {
    v113 = *(v101 + 1);
    do
    {
      if (*v113++)
      {
        ++v112;
      }

      --v73;
    }

    while (v73);
  }

  v101[1] = v112;
  if (v112 != v341)
  {
    v102 = ": %d word-boundaries created, but total %d prosodic words in BuildWordPhT.";
    goto LABEL_56;
  }

  v115 = v45;
  v334[2] = v101;
  v116 = heap_Alloc(a1[1], 24);
  if (!v116)
  {
    v123 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_140;
  }

  v122 = v116;
  if (TierInit(a1, v116, v335, "Phone-level PHRASE tier"))
  {
    v123 = " in BuildPrasePhT initializing tier.";
LABEL_140:
    NNFX_logMsg(a1, 0, v123, v117, v118, v119, v120, v121);
    v334[3] = 0;
    v63 = " building phrase tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  if (!v341)
  {
    v132 = 0;
    goto LABEL_99;
  }

  v124 = 0;
  for (i = 0; ; ++i)
  {
    v126 = v45[v124];
    v127 = *(v126 + 144) - 1;
    if (*(v126 + 144) != 1)
    {
      v128 = v335 - i;
      if (v335 < i)
      {
        v128 = 0;
      }

      v129 = 2 * i;
      while (v128)
      {
        *(*(v122 + 1) + v129) = 0;
        ++i;
        v129 += 2;
        --v128;
        if (!--v127)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_139;
    }

LABEL_89:
    if (v124 == v341 - 1)
    {
      break;
    }

    if (*(v126 + 192) == 1)
    {
      if (i >= v335)
      {
        goto LABEL_139;
      }

      v130 = *(v122 + 1);
    }

    else
    {
      if (i >= v335)
      {
        goto LABEL_139;
      }

      v131 = *(v126 + 136) & 0xFB;
      v130 = *(v122 + 1);
      if (v131 == 83)
      {
        *(v130 + 2 * i) = 1;
        goto LABEL_97;
      }
    }

    *(v130 + 2 * i) = 0;
LABEL_97:
    ++v124;
  }

  if (i >= v335)
  {
LABEL_139:
    v123 = " in BuildPhrasePhT attempting to write at index %d in a buffer of size %d.";
    goto LABEL_140;
  }

  v132 = i + 1;
  *(*(v122 + 1) + 2 * i) = 1;
LABEL_99:
  if (v132 != v335)
  {
    v123 = ": %d phones processed, but total %d phones expected in BuildWordPhT.";
    goto LABEL_140;
  }

  v133 = v335;
  if (v335)
  {
    v133 = 0;
    v134 = *(v122 + 1);
    v135 = v335;
    do
    {
      if (*v134++)
      {
        ++v133;
      }

      --v135;
    }

    while (v135);
  }

  v122[1] = v133;
  v334[3] = v122;
  v137 = heap_Alloc(a1[1], 24);
  if (!v137)
  {
    v144 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_153;
  }

  v143 = v137;
  if (TierInit(a1, v137, v335, "Phone-level PUNCTUATION tier"))
  {
    v144 = " in BuildPunctPhT initializing tier.";
    goto LABEL_153;
  }

  if (v341)
  {
    v145 = 0;
    v146 = 0;
    v147 = (v341 - 1);
    while (1)
    {
      v148 = *(v115 + 8 * v145);
      v149 = *(v148 + 144) - 1;
      if (*(v148 + 144) != 1)
      {
        break;
      }

LABEL_118:
      if (v145 == v147)
      {
        if (v146 >= v335)
        {
          goto LABEL_141;
        }

        v152 = 1;
      }

      else
      {
        if (*(v148 + 192) || (v153 = strlen(*(v148 + 32))) == 0 || ((v154 = *(*(v148 + 32) + (v153 - 1)), v155 = v154 > 0x3F, v156 = (1 << v154) & 0x8C00500200000000, !v155) ? (v157 = v156 == 0) : (v157 = 1), v157))
        {
          v152 = 0;
        }

        else
        {
          v152 = 1;
          if (*(v148 + 136) == 78)
          {
            NNFX_logMsg(a1, 1, "::nnfeatextract, BOD=%c on punctuated word '%s'", v138, v139, v140, v141, v142);
          }
        }

        if (v146 >= v335)
        {
          goto LABEL_141;
        }

        if (v145 == v341 - 2 && *(*(v115 + 8 * v147) + 192))
        {
          v152 = 1;
        }
      }

      *(*(v143 + 1) + 2 * v146++) = v152;
      if (++v145 == v341)
      {
        goto LABEL_143;
      }
    }

    v150 = v335 - v146;
    if (v335 < v146)
    {
      v150 = 0;
    }

    v151 = 2 * v146;
    while (v150)
    {
      *(*(v143 + 1) + v151) = 0;
      ++v146;
      v151 += 2;
      --v150;
      if (!--v149)
      {
        goto LABEL_118;
      }
    }

LABEL_141:
    v144 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
LABEL_153:
    NNFX_logMsg(a1, 0, v144, v138, v139, v140, v141, v142);
    v334[4] = 0;
    v63 = " building punctuation tier in BuildPhoneTiers().";
LABEL_52:
    NNFX_logMsg(a1, 0, v63, v49, v50, v51, v52, v53);
    v41 = " building Phone Tiers in extratFeatures().";
    goto LABEL_53;
  }

  v146 = 0;
LABEL_143:
  if (v146 != v335)
  {
    v144 = ": Only %d phones were processed while a total of %d phones were expected in BuildWordPhT.";
    goto LABEL_153;
  }

  v158 = v335;
  if (v335)
  {
    v158 = 0;
    v159 = *(v143 + 1);
    v160 = v335;
    do
    {
      if (*v159++)
      {
        ++v158;
      }

      --v160;
    }

    while (v160);
  }

  v143[1] = v158;
  v334[4] = v143;
  v162 = heap_Alloc(a1[1], 24);
  if (!v162)
  {
    v169 = " allocating memory in BuildSentencePhT.";
    goto LABEL_177;
  }

  v168 = v162;
  if (TierInit(a1, v162, v335, "Phone-level SENTENCE tier"))
  {
    v169 = " allocating mem in BuildSentencePhT to hold boundaries.";
    goto LABEL_177;
  }

  v170 = heap_Calloc(a1[1], v341, 2);
  v171 = v170;
  if (!v170)
  {
    v169 = " allocating memory in BuildSentencePh().";
    v179 = a1;
LABEL_178:
    NNFX_logMsg(v179, v171, v169, v163, v164, v165, v166, v167);
    v334[7] = 0;
    v63 = " building sentence tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v172 = v341;
  v173 = (v341 - 1);
  if (v341 == 1)
  {
    v178 = 0;
LABEL_164:
    *(v170 + 2 * v178) = v172;
    goto LABEL_166;
  }

  v174 = v115;
  v175 = v170;
  v176 = (v341 - 1);
  do
  {
    v177 = *v174++;
    *v175++ = *(v177 + 196) == 1;
    --v176;
  }

  while (v176);
  *(v170 + 2 * v173) = 1;
  if (v341 >= 2 && *(*(v115 + 8 * v173) + 192))
  {
    v172 = 0;
    v178 = (v341 - 2);
    goto LABEL_164;
  }

  if (v341)
  {
LABEL_166:
    v180 = 0;
    v181 = 0;
    while (1)
    {
      v182 = *(*(v115 + 8 * v180) + 144) - 1;
      if (*(*(v115 + 8 * v180) + 144) != 1)
      {
        break;
      }

LABEL_173:
      if (v181 >= v335)
      {
        v169 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_177;
      }

      v185 = v181 + 1;
      *(*(v168 + 1) + 2 * v181++) = *(v170 + 2 * v180++);
      if (v180 == v341)
      {
        goto LABEL_180;
      }
    }

    v183 = v335 - v181;
    if (v335 < v181)
    {
      v183 = 0;
    }

    v184 = 2 * v181;
    while (v183)
    {
      *(*(v168 + 1) + v184) = 0;
      ++v181;
      v184 += 2;
      --v183;
      if (!--v182)
      {
        goto LABEL_173;
      }
    }

    v169 = " in BuildSentencePhT attempting to write at index %d in a buffer of size %d.";
LABEL_177:
    v179 = a1;
    v171 = 0;
    goto LABEL_178;
  }

  v185 = 0;
LABEL_180:
  heap_Free(a1[1], v170);
  if (v185 != v335)
  {
    v169 = ": Only %d phones were processed while a total of %d phones were expected in BuildSentencePhT.";
    goto LABEL_177;
  }

  v186 = v335;
  if (v335)
  {
    v186 = 0;
    v187 = *(v168 + 1);
    v188 = v335;
    do
    {
      if (*v187++)
      {
        ++v186;
      }

      --v188;
    }

    while (v188);
  }

  v168[1] = v186;
  v334[7] = v168;
  v190 = heap_Alloc(a1[1], 24);
  if (!v190)
  {
    v197 = " allocating memory in BuildSentencePhT.";
    goto LABEL_224;
  }

  v196 = v190;
  if (TierInit(a1, v190, v335, "Phone-level PARSE tier") || (v198 = heap_Calloc(a1[1], v341, 2)) == 0)
  {
    v197 = " allocating memory in BuildParsePhT.";
    goto LABEL_224;
  }

  v199 = v198;
  if (v341 == 1)
  {
    *(v198 + 2 * v173) = 1;
    goto LABEL_213;
  }

  v200 = v115 + 8;
  v201 = (v341 - 1);
  v202 = v198;
  do
  {
    v203 = *(v200 - 8);
    *v202++ = *(v203 + 192) == 1 || strcmp(*(v203 + 88), *(*v200 + 88));
    v200 += 8;
    --v201;
  }

  while (v201);
  *(v199 + 2 * v173) = 1;
  if (v341)
  {
LABEL_213:
    v217 = 0;
    v218 = 0;
    while (1)
    {
      v219 = *(*(v115 + 8 * v217) + 144) - 1;
      if (*(*(v115 + 8 * v217) + 144) != 1)
      {
        break;
      }

LABEL_220:
      if (v218 >= v335)
      {
        v197 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_224;
      }

      v204 = v218 + 1;
      *(*(v196 + 1) + 2 * v218++) = *(v199 + 2 * v217++);
      if (v217 == v341)
      {
        goto LABEL_203;
      }
    }

    v220 = v335 - v218;
    if (v335 < v218)
    {
      v220 = 0;
    }

    v221 = 2 * v218;
    while (v220)
    {
      *(*(v196 + 1) + v221) = 0;
      ++v218;
      v221 += 2;
      --v220;
      if (!--v219)
      {
        goto LABEL_220;
      }
    }

    v197 = " in BuildParsePhT attempting to write at index %d in a buffer of size %d.";
LABEL_224:
    NNFX_logMsg(a1, 0, v197, v191, v192, v193, v194, v195);
    v334[5] = 0;
    v63 = " building parse tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v204 = 0;
LABEL_203:
  heap_Free(a1[1], v199);
  if (v204 != v335)
  {
    v197 = ": Only %d phones were processed while a total of %d phones were expected in BuildSentencePhT.";
    goto LABEL_224;
  }

  v205 = v335;
  if (v335)
  {
    v205 = 0;
    v206 = *(v196 + 1);
    v207 = v335;
    do
    {
      if (*v206++)
      {
        ++v205;
      }

      --v207;
    }

    while (v207);
  }

  v196[1] = v205;
  v334[5] = v196;
  v209 = heap_Alloc(a1[1], 24);
  if (!v209)
  {
    v216 = " allocating memory in BuildStressGroupPhT.";
    goto LABEL_345;
  }

  v215 = v209;
  if (TierInit(a1, v209, v335, "Phone-level STRESS-GROUP tier"))
  {
    v216 = " in BuildStressGroupPhT initializing tier.";
    goto LABEL_345;
  }

  v222 = v341;
  if (v341)
  {
    v223 = 0;
    v222 = 0;
    while (1)
    {
      v224 = *(v115 + 8 * v223);
      v225 = *(v224 + 144);
      if (v225)
      {
        break;
      }

      v229 = v223 + 1;
LABEL_252:
      v223 = v229;
      if (v229 == v341)
      {
        goto LABEL_253;
      }
    }

    v226 = 0;
    v227 = *(v224 + 184);
    v228 = (v225 - 1);
    v229 = v223 + 1;
    LODWORD(v230) = v335 - v222;
    if (v335 >= v222)
    {
      v230 = v230;
    }

    else
    {
      v230 = 0;
    }

    while (2)
    {
      if (*(v227 + 4 * v226) != 1)
      {
        goto LABEL_241;
      }

      if (v226 < v228 && *(*(v224 + 176) + 4 * v226 + 4) == 1)
      {
LABEL_240:
        v231 = 1;
      }

      else
      {
        v231 = 0;
        if (v223 < v173 && v228 == v226)
        {
          if (**(*(v115 + 8 * v229) + 176) == 1)
          {
            goto LABEL_240;
          }

LABEL_241:
          v231 = 0;
        }
      }

      if (v230 == v226)
      {
        v216 = " in BuildStressGroupPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_345;
      }

      if (v228 == v226 && v223 == v173)
      {
        v231 = 1;
      }

      *(*(v215 + 1) + 2 * v222 + 2 * v226++) = v231;
      if (v225 == v226)
      {
        v222 += v226;
        goto LABEL_252;
      }

      continue;
    }
  }

LABEL_253:
  if (v222 != v335)
  {
    v216 = ": %d phones processed, but total %d phones expected in BuildStressGroupPhT.";
LABEL_345:
    NNFX_logMsg(a1, 0, v216, v210, v211, v212, v213, v214);
    v334[6] = 0;
    v63 = " building stress-group tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v233 = v335;
  if (v335)
  {
    v233 = 0;
    v234 = *(v215 + 1);
    v235 = v335;
    do
    {
      if (*v234++)
      {
        ++v233;
      }

      --v235;
    }

    while (v235);
  }

  v215[1] = v233;
  v334[6] = v215;
  v237 = BuildSilencePhT(a1, v115, v341, v335);
  v334[8] = v237;
  if (!v237)
  {
    v63 = " building silence tier in BuildPhoneTiers().";
    goto LABEL_52;
  }

  v238 = v334;
  TierAddBoundaries(v334[6], v334[3]);
  TierAddBoundaries(v238[6], v238[8]);
  TierAddBoundaries(v238[5], v238[3]);
  TierAddBoundaries(v238[5], v238[4]);
  TierAddBoundaries(v238[5], v238[8]);
  v328 = (v337 + v332);
  v331 = heap_Calloc(a1[1], v328, 8);
  if (!v331)
  {
    v41 = " in extractFeatures() while mem-allocating to hold feature extractors.";
    goto LABEL_53;
  }

  for (j = 0; j != 13; ++j)
  {
    v240 = (v352[j])(a1, v346, a3, v115, v334, HIDWORD(v350), v350);
    v331[j] = v240;
    if (!v240)
    {
      v41 = " in extractFeatures() while calling extractor %d of %d.";
      goto LABEL_53;
    }
  }

  v330 = 0;
  v329 = 0;
  v327 = " in contextualize() trying to mallocate output.";
  while (1)
  {
    v241 = v331[v330];
    if (*(v241 + 4016))
    {
      break;
    }

LABEL_304:
    if (++v330 == 13)
    {
      if (v329 != kaldi::QuantizedMatrixBase<short>::NumRows(v349))
      {
        v41 = " in extractFeatures. Unknown features in context list.";
        goto LABEL_53;
      }

      if (a10)
      {
        v331[(v328 - 1)] = a10;
      }

      v103 = mergePhoneFeaturesAtStateLevel(a1, v331, v328, v339, v37, v38, v39, v40);
      if (!v103)
      {
        NNFX_logMsg(a1, 0, " in extractFeatures() while merging phone-level streams at the state level.", v306, v307, v308, v309, v310);
        goto LABEL_54;
      }

      if (v328)
      {
        for (k = 0; k != v328; ++k)
        {
          v312 = v331[k];
          if (*(v312 + 4016))
          {
            v313 = 0;
            do
            {
              *(*(v312 + 8) + 8 * v313++) = 0;
              v312 = v331[k];
            }

            while (v313 < *(v312 + 4016));
          }
        }
      }

      v314 = HIDWORD(v350);
      if (HIDWORD(v350))
      {
        v315 = 0;
        do
        {
          v316 = *(v115 + 8 * v315);
          if (v316)
          {
            freepPWRI(a1, v316);
            *(v115 + 8 * v315) = 0;
            v314 = HIDWORD(v350);
          }

          ++v315;
        }

        while (v315 < v314);
      }

      heap_Free(a1[1], v115);
      freepPhoneTiers(a1, v334);
      if (!v328)
      {
LABEL_342:
        heap_Free(a1[1], v331);
        TrieIntFree(a1, v349);
        goto LABEL_54;
      }

      v317 = 0;
      while (2)
      {
        v318 = v331[v317];
        if (v318)
        {
          v319 = *(v318 + 4016);
          if (v319)
          {
            for (m = 0; m < v319; ++m)
            {
              v321 = *(*(v318 + 8) + 8 * m);
              if (v321)
              {
                heap_Free(a1[1], v321);
                v319 = *(v318 + 4016);
              }
            }
          }

          v322 = *(v318 + 8);
          if (v322)
          {
            heap_Free(a1[1], v322);
          }

          v323 = *(v318 + 4040);
          v324 = *v318;
          if (!v323)
          {
            freepppFeats(a1, v324, *(v318 + 4016), *(v318 + 4024));
            goto LABEL_338;
          }

          if (!v324)
          {
            goto LABEL_339;
          }

          if (*(v318 + 4016))
          {
            v325 = 0;
            do
            {
              freeppFeats(a1, *(*v318 + 8 * v325), *(v318 + 4024), *(*(v318 + 4040) + 4 * v325));
              *(*v318 + 8 * v325++) = 0;
            }

            while (v325 < *(v318 + 4016));
            v324 = *v318;
          }

          heap_Free(a1[1], v324);
LABEL_338:
          *v318 = 0;
          v323 = *(v318 + 4040);
          if (v323)
          {
LABEL_339:
            heap_Free(a1[1], v323);
          }

          *(v318 + 4040) = 0;
          heap_Free(a1[1], v318);
        }

        if (++v317 == v328)
        {
          goto LABEL_342;
        }

        continue;
      }
    }
  }

  v347 = 0;
  while (2)
  {
    v242 = *(*(v241 + 8) + 8 * v347);
    v348 = 0;
    if (!v242 || (v243 = TrieIntGet(v349, v242, &v348), v241 = v331[v330], v243))
    {
LABEL_303:
      if (++v347 >= *(v241 + 4016))
      {
        goto LABEL_304;
      }

      continue;
    }

    break;
  }

  v342 = *(v241 + 4032);
  v333 = v348;
  v351 = 0;
  v244 = heap_Calloc(a1[1], 1, 4048);
  if (!v244)
  {
    goto LABEL_352;
  }

  v250 = v244;
  v251 = (2 * v333);
  *(v244 + 4016) = v251;
  *(v244 + 4024) = *(v241 + 4024);
  if (v251 < 1)
  {
LABEL_277:
    if (v333 >= 1)
    {
      v345 = 0;
      v336 = 0;
      v338 = 1;
      do
      {
        if (v336)
        {
          v256 = 2;
        }

        else
        {
          v256 = 1;
        }

        BYTE4(v351) = 95;
        LOBYTE(v351) = 95;
        memset(&v351 + 5, 76, v256);
        memset(&v351 + 1, 82, v256);
        if (v338 >= 3)
        {
          BYTE6(v351) = v338 + 48;
          BYTE2(v351) = v338 + 48;
        }

        v262 = *(v250 + 4024);
        if (v262 >= 1)
        {
          v263 = 0;
          v264 = 8 * v262;
          do
          {
            *(*(*v250 + 8 * v345) + v263) = 0;
            v263 += 8;
          }

          while (v264 != v263);
        }

        if (v342[1] > v338)
        {
          v265 = 0;
          do
          {
            ElementInGroup = lastElementInGroup(a1, v342, v265, v257, v258, v259, v260, v261);
            v272 = firstElementInGroup(a1, v342, v265 + v338, v267, v268, v269, v270, v271);
            v278 = lastElementInGroup(a1, v342, v265 + v338, v273, v274, v275, v276, v277);
            if (v272 <= v278)
            {
              v279 = v278 - v272 + 1;
              v280 = 8 * v272;
              do
              {
                *(*(*v250 + 8 * v345) + v280) = *(*(*v241 + 8 * v347) + 8 * ElementInGroup);
                v280 += 8;
                --v279;
              }

              while (v279);
            }

            ++v265;
          }

          while (v265 < (v342[1] - v338));
        }

        *(*(v250 + 8) + 8 * v345) = stringcat(a1, *(*(v241 + 8) + 8 * v347), &v351 + 4);
        v286 = v345 | 1;
        v287 = *(v250 + 4024);
        if (v287 >= 1)
        {
          v288 = 0;
          v289 = 8 * v287;
          do
          {
            *(*(*v250 + 8 * v286) + v288) = 0;
            v288 += 8;
          }

          while (v289 != v288);
        }

        for (n = v338; n < v342[1]; ++n)
        {
          v291 = lastElementInGroup(a1, v342, n, v281, v282, v283, v284, v285);
          v297 = firstElementInGroup(a1, v342, n - v338, v292, v293, v294, v295, v296);
          v303 = lastElementInGroup(a1, v342, n - v338, v298, v299, v300, v301, v302);
          if (v297 <= v303)
          {
            v304 = v303 - v297 + 1;
            v305 = 8 * v297;
            do
            {
              *(*(*v250 + 8 * v286) + v305) = *(*(*v241 + 8 * v347) + 8 * v291);
              v305 += 8;
              --v304;
            }

            while (v304);
          }
        }

        *(*(v250 + 8) + 8 * v286) = stringcat(a1, *(*(v241 + 8) + 8 * v347), &v351);
        v345 += 2;
        ++v338;
        ++v336;
      }

      while (v336 != v333);
    }

    v331[v329 + 13] = v250;
    ++v329;
    v241 = v331[v330];
    goto LABEL_303;
  }

  v252 = heap_Calloc(a1[1], v251, 8);
  *(v250 + 8) = v252;
  if (!v252 || (v253 = heap_Calloc(a1[1], *(v250 + 4016), 4), (*(v250 + 4040) = v253) == 0))
  {
    v326 = " in contextualize() allocating for feature names";
    goto LABEL_351;
  }

  if (!allocpppFeats(a1, v250, *(v250 + 4016), *(v250 + 4024)))
  {
    if (*(v250 + 4016) >= 1)
    {
      v254 = 0;
      v255 = *(v250 + 4040);
      do
      {
        *(v255 + 4 * v254++) = 0;
      }

      while (v254 < *(v250 + 4016));
    }

    goto LABEL_277;
  }

  v326 = " in contextualize() allocating features";
LABEL_351:
  v327 = v326;
LABEL_352:
  NNFX_logMsg(a1, 0, v327, v245, v246, v247, v248, v249);
  v331[v329 + 13] = 0;
  v41 = " in extractFeatures() while allocating context features.";
LABEL_53:
  NNFX_logMsg(a1, 0, v41, v36, v37, v38, v39, v40);
  v103 = 0;
LABEL_54:
  v104 = *MEMORY[0x1E69E9840];
  return v103;
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
  v4 = 0;
  v5 = *(a1 + 16 * *(a2 + 32) + 8);
  v6 = a3 + 16;
  do
  {
    v7 = *(v5 + 8 * v4);
    if (!v7)
    {
      break;
    }

    v8 = *(a3 + 4016);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *(a3 + 8);
      do
      {
        if (!strcmp(v7, *(v10 + 8 * v9)))
        {
          *(v6 + 4 * v9) = 0;
          --*(a3 + 4020);
          v8 = *(a3 + 4016);
        }

        ++v9;
      }

      while (v9 < v8);
    }

    ++v4;
  }

  while (v4 != 500);
  return 0;
}

uint64_t nnextract_Rolled(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
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
  v123 = *MEMORY[0x1E69E9840];
  NNFX_logMsg(a1, 3, "Extracting phone-level attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v15, v16, v17, v18, v19);
  v106 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v20, v21, v22, v23, v24);
  v25 = heap_Calloc(*(a1 + 8), 1, 4048);
  v31 = v25;
  if (!v25)
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhoneFeats() trying to mallocate output.", v26, v27, v28, v29, v30);
    goto LABEL_120;
  }

  *(v25 + 4016) = 8;
  *(v25 + 4024) = v8;
  *(v25 + 4032) = *a5;
  v32 = heap_Alloc(*(a1 + 8), 64);
  *(v31 + 8) = v32;
  if (!v32)
  {
    v103 = " in fExtGetPhoneFeats() allocating feature names";
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
        v103 = " in fExtGetPhoneFeats allocating feature stream names.";
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
    v103 = " in fExtGetPhoneFeats() trying to malloc-ate output.";
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
        v108 = *(v31 + 4016);
        v103 = " in fExtGetPhoneFeats mallocating for output stream %d of %d";
        goto LABEL_119;
      }

      ++v42;
    }

    while (v42 < *(v31 + 4016));
  }

  if (v9)
  {
    v44 = 0;
    v45 = 0;
    v109 = v9;
    v110 = v8;
    v118 = a3;
    v111 = a2;
    while (!*(*(a4 + 8 * v44) + 144))
    {
LABEL_98:
      if (++v44 == v109)
      {
        goto LABEL_106;
      }
    }

    v46 = 0;
    v119 = 1;
    v112 = v44;
    while (1)
    {
      v121 = v46;
      v47 = heap_Alloc(*(a1 + 8), 16);
      if (!v47)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 0 of word %d.";
        goto LABEL_119;
      }

      v48 = v47;
      v120 = v45;
      v49 = heap_Alloc(*(a1 + 8), 16);
      if (!v49)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 1 of word %d.";
        goto LABEL_119;
      }

      v50 = v49;
      v51 = heap_Alloc(*(a1 + 8), 16);
      if (!v51)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 2 of word %d.";
        goto LABEL_119;
      }

      v52 = v51;
      v53 = heap_Alloc(*(a1 + 8), 16);
      if (!v53)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 3 of word %d.";
        goto LABEL_119;
      }

      v54 = v53;
      v55 = heap_Alloc(*(a1 + 8), 16);
      if (!v55)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 4 of word %d.";
        goto LABEL_119;
      }

      v116 = v54;
      v117 = v55;
      v56 = heap_Alloc(*(a1 + 8), 16);
      if (!v56)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 5 of word %d.";
        goto LABEL_119;
      }

      v57 = v56;
      v58 = heap_Alloc(*(a1 + 8), 16);
      if (!v58)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 6 of word %d.";
        goto LABEL_119;
      }

      v114 = v57;
      v115 = v58;
      v59 = heap_Alloc(*(a1 + 8), 16);
      if (!v59)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for stream 7 of word %d.";
        goto LABEL_119;
      }

      v60 = v59;
      v61 = *(a4 + 8 * v44);
      *(v48 + 8) = 3;
      __s = *(*(v61 + 152) + v121);
      v62 = stringdup(a1, &__s);
      *v48 = v62;
      if (!v62)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for phoneID.";
        goto LABEL_119;
      }

      *(**v31 + 8 * v120) = v48;
      v63 = *(a4 + 8 * v44);
      v113 = v60;
      if (*(v63 + 192))
      {
        goto LABEL_51;
      }

      if (v121)
      {
        v64 = v119;
        while (1)
        {
          v65 = v64 - 2;
          if ((v64 - 2) < 0)
          {
            break;
          }

          --v64;
          if (*(*(v63 + 184) + 4 * v65) == 1)
          {
            goto LABEL_32;
          }
        }
      }

      v64 = 0;
LABEL_32:
      v66 = *(v63 + 144) - 1;
      if (v121 <= v66)
      {
        v67 = v121;
        while (*(*(v63 + 184) + 4 * v67) != 1)
        {
          if (++v67 > v66)
          {
            goto LABEL_38;
          }
        }

        v66 = v67;
      }

LABEL_38:
      v68 = *a3;
      if (v68 == -1 || v64 > v66)
      {
        break;
      }

      v70 = **(v111 + 16 * v68 + 8);
      v71 = *(v63 + 152);
      v72 = v64;
      while (1)
      {
        v73 = strchr(v70, *(v71 + v72));
        if (v73)
        {
          break;
        }

        if (++v72 > v66)
        {
          goto LABEL_47;
        }
      }

      v74 = *v73;
      if (v74 == 45)
      {
        break;
      }

LABEL_52:
      *(v50 + 8) = 3;
      __s = v74;
      v81 = stringdup(a1, &__s);
      *v50 = v81;
      if (!v81)
      {
        v103 = " in fExtGetPhoneFeats while allocating mem for VowInSyl.";
        goto LABEL_119;
      }

      *(*(*v31 + 8) + 8 * v120) = v50;
      if (*v118 == -1)
      {
        v83 = 45;
        v8 = v110;
        v82 = v111;
        v44 = v112;
      }

      else
      {
        v82 = v111;
        v44 = v112;
        if (strchr(**(v111 + 16 * v118[1] + 8), *(*(*(a4 + 8 * v112) + 152) + v121)))
        {
          v83 = 86;
        }

        else
        {
          v83 = 45;
        }

        v8 = v110;
      }

      *(v52 + 8) = 2;
      *v52 = v83;
      *(*(*v31 + 16) + 8 * v120) = v52;
      v84 = *v118;
      if (v84 == -1)
      {
        v87 = 45;
        v85 = v121;
      }

      else
      {
        v85 = v121;
        v86 = *(*(*(a4 + 8 * v44) + 152) + v121);
        if (v86 == SilPhone[0])
        {
          v87 = 45;
        }

        else
        {
          v88 = strchr(**(v82 + 16 * v84 + 8), v86);
          v85 = v121;
          if (v88)
          {
            v87 = 86;
          }

          else
          {
            v87 = 67;
          }
        }
      }

      *(v116 + 8) = 2;
      *v116 = v87;
      *(*(*v31 + 24) + 8 * v120) = v116;
      v89 = *(*(*(a4 + 8 * v44) + 152) + v85);
      if (v89 == SilPhone[0])
      {
        v90 = 45;
      }

      else
      {
        v91 = v89;
        v92 = v118[2];
        if (v92 != -1 && (v93 = *(v82 + 16 * v92 + 8)) != 0 && strchr(*v93, v91))
        {
          v90 = 77;
        }

        else
        {
          v94 = v118[3];
          if (v94 != -1 && (v95 = *(v82 + 16 * v94 + 8)) != 0 && strchr(*v95, v91))
          {
            v90 = 68;
          }

          else if (check_phn_class(v82, v118[4], v91))
          {
            v90 = 65;
          }

          else if (check_phn_class(v82, v118[5], v91))
          {
            v90 = 70;
          }

          else if (check_phn_class(v82, v118[6], v91))
          {
            v90 = 83;
          }

          else if (check_phn_class(v82, v118[7], v91))
          {
            v90 = 76;
          }

          else if (check_phn_class(v82, v118[8], v91))
          {
            v90 = 78;
          }

          else if (check_phn_class(v82, v118[9], v91))
          {
            v90 = 71;
          }

          else
          {
            v90 = 45;
          }
        }

        v85 = v121;
      }

      *(v117 + 8) = 2;
      *v117 = v90;
      *(*(*v31 + 32) + 8 * v120) = v117;
      v96 = *(a4 + 8 * v44);
      *(v114 + 8) = 2;
      v97 = *(*(v96 + 176) + 4 * v85);
      if (v97)
      {
        v98 = v97 + 48;
      }

      else
      {
        v98 = 45;
      }

      *v114 = v98;
      *(*(*v31 + 40) + 8 * v120) = v114;
      *(v115 + 8) = 3;
      v99 = v85;
      v100 = stringdup(a1, *(*(*(a4 + 8 * v44) + 168) + 8 * v85));
      *v115 = v100;
      if (!v100)
      {
        v103 = " in fExtGetPhoneFeats copying phone tag for phone %d in word %d.";
LABEL_119:
        NNFX_logMsg(a1, 0, v103, v33, v34, v35, v36, v37);
        v31 = 0;
        goto LABEL_120;
      }

      *(*(*v31 + 48) + 8 * v120) = v115;
      v101 = *(a4 + 8 * v44);
      *(v113 + 8) = 2;
      v102 = *(*(v101 + 160) + v99);
      if (v102 == 32)
      {
        LOBYTE(v102) = 45;
      }

      *v113 = v102;
      *(*(*v31 + 56) + 8 * v120) = v113;
      v45 = v120 + 1;
      v46 = v99 + 1;
      ++v119;
      a3 = v118;
      if (v46 >= *(*(a4 + 8 * v44) + 144))
      {
        goto LABEL_98;
      }
    }

LABEL_47:
    NNFX_logMsg(a1, 1, "::nnfeatextract, No vowel found in syllable ", v33, v34, v35, v36, v37);
    if (v64 <= v66)
    {
      v80 = v64;
      do
      {
        v107 = *(*(*(a4 + 8 * v112) + 152) + v80);
        NNFX_logMsg(a1, 1, "%c", v75, v76, v77, v78, v79);
        ++v80;
      }

      while (v80 <= v66);
    }

    NNFX_logMsg(a1, 1, " from %d to %d for phone %d", v75, v76, v77, v78, v79);
LABEL_51:
    LOBYTE(v74) = 45;
    goto LABEL_52;
  }

  v45 = 0;
LABEL_106:
  if (v45 != v8)
  {
    v103 = " in fExtGetPhoneFeats(). %d phones processed, but %d phones in input.";
    goto LABEL_119;
  }

LABEL_120:
  v104 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t fExtGetLexicalFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting lexical attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v15, v16, v17, v18, v19);
  v108 = *(*a4 + 136);
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
    v107 = " in fExtGetLexicalFeats() allocating feature names";
    goto LABEL_116;
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
        v107 = " in fExtGetLexicalFeats allocating feature stream names.";
        goto LABEL_116;
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
    v107 = " in fExtGetLexicalFeats() trying to malloc-ate feature array.";
    goto LABEL_116;
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
        v110 = *(v31 + 4016);
        v107 = " in fExtGetLexicalFeats mallocating output stream %d of %d";
        goto LABEL_116;
      }

      ++v42;
    }

    while (v42 < *(v31 + 4016));
  }

  v44 = *(a5 + 16);
  if (v44[1] != v9)
  {
    v107 = " in fExtGetLexicalFeats. Number of prosodic words %d does not match %d boundaries in the WORD tier.";
    goto LABEL_116;
  }

  if (*v44 != v8)
  {
    v109 = *v44;
    v107 = " in fExtGetLexicalFeats. Number of elments %d in WORD tier does not match number of phones.";
    goto LABEL_116;
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
        v107 = " in fExtGetLexicalFeats finding beginning of group %d in WORD tier.";
        goto LABEL_116;
      }

      v135 = lastElementInGroup(a1, *(a5 + 16), v45, v33, v34, v35, v36, v37);
      if (v135 == -1)
      {
        v107 = " in fExtGetLexicalFeats finding end of group %d in WORD tier.";
        goto LABEL_116;
      }

      if (ElementInGroup != v47 + 1)
      {
        v107 = " in fExtGetLexicalFeats on WORD tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_116;
      }

      if (v135 >= v8)
      {
        v107 = " in fExtGetLexicalFeats on WORD tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_116;
      }

      if (v46)
      {
        heap_Free(*(a1 + 8), v46);
      }

      v48 = stringdup(a1, *(*(a4 + 8 * v45) + 32));
      if (!v48)
      {
        v107 = " in fExtGetLexicalFeats trying to lowercase ";
        goto LABEL_116;
      }

      v46 = v48;
      v133 = v45;
      if (*v48)
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v46[v49] = __tolower(v46[v49]);
          v49 = v50;
        }

        while (strlen(v46) > v50++);
      }

      v136 = check_lex_feat(a2, v46, a3[11]);
      v131 = check_lex_feat(a2, v46, a3[12]);
      v129 = check_lex_feat(a2, v46, a3[14]);
      v127 = check_lex_feat(a2, v46, a3[13]);
      v52 = check_lex_feat(a2, v46, a3[15]);
      v53 = a3[10];
      LODWORD(v54) = -1;
      if (v53 != -1 && v53 <= 499)
      {
        v55 = *(a2 + 16 * a3[10] + 8);
        if (v55)
        {
          v138 = v52;
          v54 = 0;
          do
          {
            v56 = *(v55 + 8 * v54);
            if (!v56)
            {
              break;
            }

            if (!strcmp(v46, v56))
            {
              goto LABEL_35;
            }

            ++v54;
          }

          while (v54 != 500);
          LODWORD(v54) = -1;
LABEL_35:
          v52 = v138;
        }

        else
        {
          LODWORD(v54) = -1;
        }
      }

      v126 = v54;
      v57 = v133;
      if (ElementInGroup <= v135)
      {
        v139 = 0;
        if (v136)
        {
          v58 = 49;
        }

        else
        {
          v58 = 45;
        }

        v115 = v58;
        if (v131)
        {
          v59 = 49;
        }

        else
        {
          v59 = 45;
        }

        v114 = v59;
        if (v129)
        {
          v60 = 49;
        }

        else
        {
          v60 = 45;
        }

        if (v127)
        {
          v61 = 49;
        }

        else
        {
          v61 = 45;
        }

        v112 = v61;
        v113 = v60;
        if (v52)
        {
          v62 = 49;
        }

        else
        {
          v62 = 45;
        }

        v111 = v62;
        v137 = 8 * ElementInGroup;
        do
        {
          v63 = heap_Alloc(*(a1 + 8), 16);
          if (!v63)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 0 of word %d.";
            goto LABEL_116;
          }

          v64 = v63;
          v65 = heap_Alloc(*(a1 + 8), 16);
          if (!v65)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 1 of word %d.";
            goto LABEL_116;
          }

          v66 = v65;
          v130 = heap_Alloc(*(a1 + 8), 16);
          if (!v130)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 2 of word %d.";
            goto LABEL_116;
          }

          v67 = heap_Alloc(*(a1 + 8), 16);
          if (!v67)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 3 of word %d.";
            goto LABEL_116;
          }

          v128 = v67;
          v125 = heap_Alloc(*(a1 + 8), 16);
          if (!v125)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 4 of word %d.";
            goto LABEL_116;
          }

          v68 = heap_Alloc(*(a1 + 8), 16);
          if (!v68)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 5 of word %d.";
            goto LABEL_116;
          }

          v124 = v68;
          v123 = heap_Alloc(*(a1 + 8), 16);
          if (!v123)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 6 of word %d.";
            goto LABEL_116;
          }

          v69 = heap_Alloc(*(a1 + 8), 16);
          if (!v69)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 7 of word %d.";
            goto LABEL_116;
          }

          v122 = v69;
          v70 = heap_Alloc(*(a1 + 8), 16);
          if (!v70)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 8 of word %d.";
            goto LABEL_116;
          }

          v121 = v70;
          v71 = heap_Alloc(*(a1 + 8), 16);
          if (!v71)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 9 of word %d.";
            goto LABEL_116;
          }

          v120 = v71;
          v72 = heap_Alloc(*(a1 + 8), 16);
          if (!v72)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 10 of word %d.";
            goto LABEL_116;
          }

          v119 = v72;
          v73 = heap_Alloc(*(a1 + 8), 16);
          if (!v73)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 11 of word %d.";
            goto LABEL_116;
          }

          v118 = v73;
          v74 = heap_Alloc(*(a1 + 8), 16);
          if (!v74)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 12 of word %d.";
            goto LABEL_116;
          }

          v117 = v74;
          v75 = heap_Alloc(*(a1 + 8), 16);
          if (!v75)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 13 of word %d.";
            goto LABEL_116;
          }

          v132 = v75;
          v76 = heap_Alloc(*(a1 + 8), 16);
          if (!v76)
          {
            v107 = " in fExtGetLexicalFeats while allocating mem for stream 14 of word %d.";
            goto LABEL_116;
          }

          v116 = v76;
          v77 = *(*(a4 + 8 * v133) + 20);
          if (v77)
          {
            v78 = v77 + 48;
          }

          else
          {
            v78 = 45;
          }

          *v64 = v78;
          *(**v31 + v137 + 8 * v139) = v64;
          *(v64 + 8) = 2;
          *(v66 + 8) = 3;
          v79 = *(*(a4 + 8 * v133) + 56);
          if (*v79)
          {
            v80 = stringdup(a1, v79);
            *v66 = v80;
            v81 = v130;
            if (!v80)
            {
              v107 = " in fExtGetLexicalFeats copying POS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v82 = stringdup(a1, "-");
            *v66 = v82;
            v81 = v130;
            if (!v82)
            {
              v107 = " in fExtGetLexicalFeats copying null POS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 8) + v137 + 8 * v139) = v66;
          *(v81 + 8) = 3;
          v57 = v133;
          v83 = *(*(a4 + 8 * v133) + 80);
          if (*v83)
          {
            v84 = stringdup(a1, v83);
            *v81 = v84;
            if (!v84)
            {
              v107 = " in fExtGetLexicalFeats copying nluPOS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v85 = stringdup(a1, "-");
            *v81 = v85;
            if (!v85)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluPOS feature while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 16) + v137 + 8 * v139) = v81;
          *(v128 + 8) = 3;
          v86 = *(*(a4 + 8 * v133) + 96);
          if (*v86)
          {
            v87 = stringdup(a1, v86);
            *v128 = v87;
            if (!v87)
            {
              v107 = " in fExtGetLexicalFeats copying nluCLS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v88 = stringdup(a1, "-");
            *v128 = v88;
            if (!v88)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluCLS feature while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 24) + v137 + 8 * v139) = v128;
          *(v125 + 8) = 3;
          v89 = *(*(a4 + 8 * v133) + 112);
          if (*v89)
          {
            v90 = stringdup(a1, v89);
            *v125 = v90;
            if (!v90)
            {
              v107 = " in fExtGetLexicalFeats copying nluPNC value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v91 = stringdup(a1, "-");
            *v125 = v91;
            if (!v91)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluPNC feature while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 32) + v137 + 8 * v139) = v125;
          *(v124 + 8) = 3;
          v92 = *(*(a4 + 8 * v133) + 104);
          if (*v92)
          {
            v93 = stringdup(a1, v92);
            *v124 = v93;
            if (!v93)
            {
              v107 = " in fExtGetLexicalFeats copying nluCMP value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v94 = stringdup(a1, "-");
            *v124 = v94;
            if (!v94)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluCMP feature while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 40) + v137 + 8 * v139) = v124;
          *(v123 + 8) = 3;
          v95 = *(*(a4 + 8 * v133) + 120);
          if (*v95)
          {
            v96 = stringdup(a1, v95);
            *v123 = v96;
            if (!v96)
            {
              v107 = " in fExtGetLexicalFeats copying nluBDS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v97 = stringdup(a1, "-");
            *v123 = v97;
            if (!v97)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluBDS feature while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          *(*(*v31 + 48) + v137 + 8 * v139) = v123;
          *(v122 + 8) = 3;
          v98 = *(*(a4 + 8 * v133) + 128);
          if (*v98)
          {
            v99 = stringdup(a1, v98);
            *v122 = v99;
            if (!v99)
            {
              v107 = " in fExtGetLexicalFeats copying nluCPS value while processing phone %d (pros word %d)";
              goto LABEL_116;
            }
          }

          else
          {
            v100 = stringdup(a1, "-");
            *v122 = v100;
            if (!v100)
            {
              v107 = " in fExtGetLexicalFeats copying null value to nluCPS feature while processing phone %d (pros word %d)";
LABEL_116:
              NNFX_logMsg(a1, 0, v107, v33, v34, v35, v36, v37);
              return 0;
            }
          }

          *(*(*v31 + 56) + v137 + 8 * v139) = v122;
          *(v121 + 8) = 2;
          *v121 = v115;
          *(*(*v31 + 64) + v137 + 8 * v139) = v121;
          *v120 = v114;
          *(*(*v31 + 72) + v137 + 8 * v139) = v120;
          *(v120 + 8) = 2;
          *(v119 + 8) = 2;
          *v119 = v113;
          *(*(*v31 + 80) + v137 + 8 * v139) = v119;
          v118[2] = 2;
          *v118 = v112;
          *(*(*v31 + 88) + v137 + 8 * v139) = v118;
          *(v117 + 8) = 2;
          *v117 = v111;
          *(*(*v31 + 96) + v137 + 8 * v139) = v117;
          *(v132 + 8) = 3;
          if (v126 == -1)
          {
            v102 = a1;
            v101 = "-";
          }

          else
          {
            v101 = *(*(a2 + 16 * a3[10] + 8) + 8 * v126);
            v102 = a1;
          }

          v103 = stringdup(v102, v101);
          *v132 = v103;
          if (!v103)
          {
            v107 = " in fExtGetLexicalFeats copying value to lexeme.";
            goto LABEL_116;
          }

          v104 = v139;
          *(*(*v31 + 104) + v137 + 8 * v139) = v132;
          *(v116 + 8) = 2;
          v105 = **(*(a4 + 8 * v133) + 48);
          if (!v105)
          {
            v105 = 45;
          }

          *v116 = v105;
          *(*(*v31 + 112) + v137 + 8 * v139++) = v116;
        }

        while (~v135 + ElementInGroup + v104 + 1);
      }

      v45 = v57 + 1;
      v44 = *(a5 + 16);
      v47 = v135;
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
  v58 = *(*a4 + 136);
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
    v57 = " in fExtGetParseFeats() allocating feature names";
LABEL_36:
    NNFX_logMsg(a1, 0, v57, v31, v32, v33, v34, v35);
    return 0;
  }

  v36 = heap_Alloc(*(a1 + 8), 8 * *(v29 + 4016));
  *v29 = v36;
  if (!v36)
  {
    v57 = " in fExtGetParseFeats() trying to malloc-ate output.";
    goto LABEL_36;
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

    v60 = *(v29 + 4016);
    v57 = " in fExtGetParseFeats mallocating for output stream %d of %d";
    goto LABEL_36;
  }

LABEL_9:
  v39 = *(a5 + 40);
  if (*v39 != v8)
  {
    v59 = *v39;
    v57 = " in fExtGetParseFeats. Number of elments %d in PARSE tier does not match number of phones %d.";
    goto LABEL_36;
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
        v57 = " in fExtGetParseFeats finding beginning of group %d in PARSE tier.";
        goto LABEL_36;
      }

      v43 = ElementInGroup;
      v44 = lastElementInGroup(a1, *(a5 + 40), v40, v31, v32, v33, v34, v35);
      if (v44 == -1)
      {
        v57 = " in fExtGetParseFeats finding end of group %d in PARSE tier.";
        goto LABEL_36;
      }

      if (v43 != v41 + 1)
      {
        v57 = " in fExtGetParseFeats on PARSE tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_36;
      }

      v45 = v44;
      if (v44 >= v8)
      {
        v57 = " in fExtGetParseFeats on PARSE tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_36;
      }

      if (!v9)
      {
LABEL_48:
        v57 = " in fExtGetParseFeats. Initial phone %d in parse group %d does not align with the start of any prosodic word.";
        goto LABEL_36;
      }

      v46 = 0;
      v47 = 0;
      v62 = v44;
      while (*(*(a4 + 8 * v47) + 140) != v43)
      {
        ++v47;
        v46 += 0x100000000;
        if (v9 == v47)
        {
          goto LABEL_48;
        }
      }

      v61 = v40;
      v48 = 0;
      v49 = 0;
      while (*(*(a4 + 8 * v49) + 140) + *(*(a4 + 8 * v49) + 144) - 1 != v44)
      {
        ++v49;
        v48 += 0x100000000;
        if (v9 == v49)
        {
          v57 = " in fExtGetParseFeats. Last phone %d in parse group %d does not align with the end of any prosodic word.";
          goto LABEL_36;
        }
      }

      v63 = v48 >> 29;
      if (strcmp(*(*(a4 + (v46 >> 29)) + 88), *(*(a4 + (v48 >> 29)) + 88)))
      {
        v57 = " in fExtGetParseFeats. First (%d) and last (%d) words in parse group %d (from phone %d to phone %d) do not share a common nluPHR tag.";
        goto LABEL_36;
      }

      if (v43 <= v45)
      {
        break;
      }

LABEL_33:
      v40 = v61 + 1;
      v39 = *(a5 + 40);
      v41 = v62;
      if (v61 + 1 >= v39[1])
      {
        return v29;
      }
    }

    v50 = 8 * v43;
    v51 = v45 - v43 + 1;
    while (1)
    {
      v52 = heap_Alloc(*(a1 + 8), 16);
      if (!v52)
      {
        v57 = " in fExtGetParseFeats while allocating mem for stream 0 of parse group %d.";
        goto LABEL_36;
      }

      v53 = v52;
      *(v52 + 8) = 3;
      v54 = *(*(a4 + v63) + 88);
      if (!*v54)
      {
        v54 = "-";
      }

      v55 = stringdup(a1, v54);
      *v53 = v55;
      if (!v55)
      {
        break;
      }

      *(**v29 + v50) = v53;
      v50 += 8;
      if (!--v51)
      {
        goto LABEL_33;
      }
    }

    v57 = " in fExtGetParseFeats copying syntactical category feature.";
    goto LABEL_36;
  }

  return v29;
}

uint64_t fExtGetPhraseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting phrase-level attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v13, v14, v15, v16, v17);
  v55 = *(*a4 + 136);
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

    v57 = *(v29 + 4016);
    v53 = "in fExtGetPhraseFeats mallocating for output stream %d of %d";
    goto LABEL_30;
  }

LABEL_9:
  v39 = *(a5 + 24);
  if (*v39 != v8)
  {
    v56 = *v39;
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

      v58 = v44;
      v59 = v40;
      if (v43 <= v44)
      {
        break;
      }

LABEL_27:
      v41 = v58;
      v40 = v59 + 1;
      v39 = *(a5 + 24);
      if (v59 + 1 >= v39[1])
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
    v54 = " in fExtGetPunctFeats() allocating feature names";
    goto LABEL_71;
  }

  **(v19 + 8) = stringdup(a1, "PunctMark");
  if (!**(v19 + 8))
  {
    v54 = " in fExtGetPunctFeats() allocating feature names.";
    goto LABEL_71;
  }

  v26 = heap_Alloc(*(a1 + 8), 8 * *(v19 + 4016));
  *v19 = v26;
  if (!v26)
  {
    v54 = " in fExtGetPunctFeats() trying to malloc-ate feature array.";
    goto LABEL_71;
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
        v57 = *(v19 + 4016);
        v54 = " in fExtGetPunctFeats mallocating output stream %d of %d";
        goto LABEL_71;
      }

      ++v27;
    }

    while (v27 < *(v19 + 4016));
  }

  v29 = *(a5 + 32);
  if (*v29 != v8)
  {
    v56 = *v29;
    v54 = " in fExtGetPunctFeats. Number of elments %d in PUNCT tier does not match number of phones %d.";
    goto LABEL_71;
  }

  if (v29[1])
  {
    v30 = 0;
    v62 = v9;
    __s = 0;
    v31 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v29, v30, v21, v22, v23, v24, v25);
      if (ElementInGroup == -1)
      {
        v54 = " in fExtGetPunctFeats finding beginning of group %d in PUNCT tier.";
        goto LABEL_71;
      }

      v33 = ElementInGroup;
      v34 = lastElementInGroup(a1, *(a5 + 32), v30, v21, v22, v23, v24, v25);
      if (v34 == -1)
      {
        v54 = " in fExtGetPunctFeats finding end of group %d in PUNCT tier.";
        goto LABEL_71;
      }

      if (v33 != v31 + 1)
      {
        v54 = " in fExtGetPunctFeats on PUNCT tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_71;
      }

      if (v34 >= v8)
      {
        v54 = " in fExtGetPunctFeats on PUNCT tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_71;
      }

      if (!v9)
      {
LABEL_70:
        v54 = " in fExtGetPunctFeats. First phone %d in parse group %d does not align with the start of any prosodic word.";
        goto LABEL_71;
      }

      v35 = 0;
      v36 = 0;
      v61 = v34;
      while (*(*(a4 + 8 * v36) + 140) != v33)
      {
        ++v36;
        v35 += 0x100000000;
        if (v62 == v36)
        {
          goto LABEL_70;
        }
      }

      v60 = v30;
      v59 = v9;
      v37 = 0;
      v38 = 0;
      while (*(*(a4 + 8 * v38) + 140) + *(*(a4 + 8 * v38) + 144) - 1 != v34)
      {
        ++v38;
        ++v37;
        if (v62 == v38)
        {
          v54 = " in fExtGetPunctFeats. Last phone %d in parse group %d does not align with the end of any prosodic word.";
          goto LABEL_71;
        }
      }

      if (__s)
      {
        v58 = v34;
        heap_Free(*(a1 + 8), __s);
        v34 = v58;
      }

      if (v38 < v36)
      {
        __s = 0;
        v9 = v59;
        v39 = v60;
        goto LABEL_45;
      }

      v40 = v37 + 1;
      v41 = a4 + 8 * v37;
      v39 = v60;
      while (*(*v41 + 192))
      {
        --v40;
        v41 -= 8;
        if (v40 <= v35 >> 32)
        {
          __s = 0;
          v9 = v59;
          goto LABEL_45;
        }
      }

      v42 = v34;
      v43 = *(*v41 + 32);
      v44 = strlen(v43);
      if (!v44)
      {
        goto LABEL_42;
      }

      v45 = v43[v44 - 1];
      if (v45 > 0x39)
      {
        v9 = v59;
        if (v45 == 58)
        {
          v46 = "COLON";
        }

        else
        {
          if (v45 != 59)
          {
            if (v45 == 63)
            {
              v46 = "QMARK";
            }

            else
            {
LABEL_42:
              v46 = "PERIOD";
            }

            v9 = v59;
            goto LABEL_44;
          }

          v46 = "SEMICOLON";
        }
      }

      else
      {
        v9 = v59;
        if (v45 == 33)
        {
          v46 = "EXCL";
        }

        else
        {
          if (v45 != 44)
          {
            goto LABEL_42;
          }

          v46 = "COMMA";
        }
      }

LABEL_44:
      v47 = stringdup(a1, v46);
      v34 = v42;
      __s = v47;
      if (!v47)
      {
        v54 = " in fExtGetPunctFeats while allocating mem for punctMark feature.";
LABEL_71:
        NNFX_logMsg(a1, 0, v54, v21, v22, v23, v24, v25);
        return 0;
      }

LABEL_45:
      if (v33 <= v34)
      {
        v48 = 8 * v33;
        for (i = v34 - v33 + 1; i; --i)
        {
          v50 = heap_Alloc(*(a1 + 8), 16);
          if (!v50)
          {
            v54 = " in fExtGetPunctFeats while allocating mem for stream 0 of parse group %d.";
            goto LABEL_71;
          }

          v51 = v50;
          *(v50 + 8) = 3;
          if (__s)
          {
            v52 = stringdup(a1, __s);
            *v51 = v52;
            if (!v52)
            {
              v54 = " in fExtGetPunctFeats copying punctuation mark feature.";
              goto LABEL_71;
            }
          }

          else
          {
            v53 = stringdup(a1, "-");
            *v51 = v53;
            if (!v53)
            {
              v54 = " in fExtGetPunctFeats copying default punctuation mark feature.";
              goto LABEL_71;
            }
          }

          *(**v19 + v48) = v51;
          v48 += 8;
        }
      }

      v30 = v39 + 1;
      v29 = *(a5 + 32);
      v31 = v61;
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
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v65 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 24;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 192);
    v28[1] = v29;
    if (!v29)
    {
      v63 = " in fExtGetSyll2BdryFeats() allocating feature names";
      goto LABEL_60;
    }

    *v28[1] = stringdup(a1, "Syll2StrGrpLCtInt");
    v28[1][1] = stringdup(a1, "Syll2StrGrpRCtInt");
    v28[1][2] = stringdup(a1, "Syll2StrGrpLCtFloat");
    v28[1][3] = stringdup(a1, "Syll2StrGrpRCtFloat");
    v28[1][4] = stringdup(a1, "Syll2WordLCtInt");
    v28[1][5] = stringdup(a1, "Syll2WordRCtInt");
    v28[1][6] = stringdup(a1, "Syll2WordLCtFloat");
    v28[1][7] = stringdup(a1, "Syll2WordRCtFloat");
    v28[1][8] = stringdup(a1, "Syll2StxGrpLCtInt");
    v28[1][9] = stringdup(a1, "Syll2StxGrpRCtInt");
    v28[1][10] = stringdup(a1, "Syll2StxGrpLCtFloat");
    v28[1][11] = stringdup(a1, "Syll2StxGrpRCtFloat");
    v28[1][12] = stringdup(a1, "Syll2PhraseLCtInt");
    v28[1][13] = stringdup(a1, "Syll2PhraseRCtInt");
    v28[1][14] = stringdup(a1, "Syll2PhraseLCtFloat");
    v28[1][15] = stringdup(a1, "Syll2PhraseRCtFloat");
    v28[1][16] = stringdup(a1, "Syll2PunctLCtInt");
    v28[1][17] = stringdup(a1, "Syll2PunctRCtInt");
    v28[1][18] = stringdup(a1, "Syll2PunctLCtFloat");
    v28[1][19] = stringdup(a1, "Syll2PunctRCtFloat");
    v28[1][20] = stringdup(a1, "Syll2SentLCtInt");
    v28[1][21] = stringdup(a1, "Syll2SentRCtInt");
    v28[1][22] = stringdup(a1, "Syll2SentLCtFloat");
    v28[1][23] = stringdup(a1, "Syll2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v63 = " in fExtGetSyll2BdryFeats allocating feature stream names.";
      goto LABEL_60;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v63 = " in fExtGetSyll2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_60;
    }

    LeftCounts = getLeftCounts(a1, a5[1], a5[6]);
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_60;
    }

    RightCounts = getRightCounts(a1, a5[1], a5[6]);
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_60;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_60;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_60;
    }

    v43 = getLeftCounts(a1, a5[1], a5[2]);
    (*v28)[4] = v43;
    if (!v43)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-WORD-BDRY counts.";
      goto LABEL_60;
    }

    v44 = getRightCounts(a1, a5[1], a5[2]);
    (*v28)[5] = v44;
    if (!v44)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-WORD-BDRY counts.";
      goto LABEL_60;
    }

    v45 = normalizeCounts(a1, (*v28)[4], (*v28)[5], a7, v31, v32, v33, v34);
    (*v28)[6] = v45;
    if (!v45)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-WORD-BDRY norm-counts.";
      goto LABEL_60;
    }

    v46 = normalizeCounts(a1, (*v28)[5], (*v28)[4], a7, v31, v32, v33, v34);
    (*v28)[7] = v46;
    if (!v46)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-WORD-BDRY norm-counts.";
      goto LABEL_60;
    }

    v47 = getLeftCounts(a1, a5[1], a5[5]);
    (*v28)[8] = v47;
    if (!v47)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SYNTAX-BDRY counts.";
      goto LABEL_60;
    }

    v48 = getRightCounts(a1, a5[1], a5[5]);
    (*v28)[9] = v48;
    if (!v48)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SYNTAX-BDRY counts.";
      goto LABEL_60;
    }

    v49 = normalizeCounts(a1, (*v28)[8], (*v28)[9], a7, v31, v32, v33, v34);
    (*v28)[10] = v49;
    if (!v49)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_60;
    }

    v50 = normalizeCounts(a1, (*v28)[9], (*v28)[8], a7, v31, v32, v33, v34);
    (*v28)[11] = v50;
    if (!v50)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_60;
    }

    v51 = getLeftCounts(a1, a5[1], a5[3]);
    (*v28)[12] = v51;
    if (!v51)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PHRASE-BDRY counts.";
      goto LABEL_60;
    }

    v52 = getRightCounts(a1, a5[1], a5[3]);
    (*v28)[13] = v52;
    if (!v52)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PHRASE-BDRY counts.";
      goto LABEL_60;
    }

    v53 = normalizeCounts(a1, (*v28)[12], (*v28)[13], a7, v31, v32, v33, v34);
    (*v28)[14] = v53;
    if (!v53)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_60;
    }

    v54 = normalizeCounts(a1, (*v28)[13], (*v28)[12], a7, v31, v32, v33, v34);
    (*v28)[15] = v54;
    if (!v54)
    {
      v63 = " in fExtGetSyll2BdryFeats creating RIGHT SYLL-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_60;
    }

    v55 = getLeftCounts(a1, a5[1], a5[4]);
    (*v28)[16] = v55;
    if (!v55)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PUNCT-BDRY counts.";
      goto LABEL_60;
    }

    v56 = getRightCounts(a1, a5[1], a5[4]);
    (*v28)[17] = v56;
    if (!v56)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PUNCT-BDRY counts.";
      goto LABEL_60;
    }

    v57 = normalizeCounts(a1, (*v28)[16], (*v28)[17], a7, v31, v32, v33, v34);
    (*v28)[18] = v57;
    if (!v57)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v58 = normalizeCounts(a1, (*v28)[17], (*v28)[16], a7, v31, v32, v33, v34);
    (*v28)[19] = v58;
    if (!v58)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v59 = getLeftCounts(a1, a5[1], a5[7]);
    (*v28)[20] = v59;
    if (!v59)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY counts.";
      goto LABEL_60;
    }

    v60 = getRightCounts(a1, a5[1], a5[7]);
    (*v28)[21] = v60;
    if (!v60)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY counts.";
      goto LABEL_60;
    }

    v61 = normalizeCounts(a1, (*v28)[20], (*v28)[21], a7, v31, v32, v33, v34);
    (*v28)[22] = v61;
    if (!v61)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v62 = normalizeCounts(a1, (*v28)[21], (*v28)[20], a7, v31, v32, v33, v34);
    (*v28)[23] = v62;
    if (!v62)
    {
      v63 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY norm-counts.";
LABEL_60:
      NNFX_logMsg(a1, 0, v63, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetSyll2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
}

uint64_t **fExtGetStrGrp2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Stress-Group-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v49 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 8;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 64);
    v28[1] = v29;
    if (!v29)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() allocating feature names";
      goto LABEL_28;
    }

    *v28[1] = stringdup(a1, "StrGrp2PhraseLCtInt");
    v28[1][1] = stringdup(a1, "StrGrp2PhraseRCtInt");
    v28[1][2] = stringdup(a1, "StrGrp2PhraseLCtFloat");
    v28[1][3] = stringdup(a1, "StrGrp2PhraseRCtFloat");
    v28[1][4] = stringdup(a1, "StrGrp2SentLCtInt");
    v28[1][5] = stringdup(a1, "StrGrp2SentRCtInt");
    v28[1][6] = stringdup(a1, "StrGrp2SentLCtFloat");
    v28[1][7] = stringdup(a1, "StrGrp2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v47 = " in fExtGetStrGrp2BdryFeats allocating feature stream names.";
      goto LABEL_28;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_28;
    }

    LeftCounts = getLeftCounts(a1, a5[6], a5[3]);
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-PHRASE-BDRY counts.";
      goto LABEL_28;
    }

    RightCounts = getRightCounts(a1, a5[6], a5[3]);
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-PHRASE-BDRY counts.";
      goto LABEL_28;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_28;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_28;
    }

    v43 = getLeftCounts(a1, a5[6], a5[7]);
    (*v28)[4] = v43;
    if (!v43)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-SENT-BDRY counts.";
      goto LABEL_28;
    }

    v44 = getRightCounts(a1, a5[6], a5[7]);
    (*v28)[5] = v44;
    if (!v44)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-SENT-BDRY counts.";
      goto LABEL_28;
    }

    v45 = normalizeCounts(a1, (*v28)[4], (*v28)[5], a7, v31, v32, v33, v34);
    (*v28)[6] = v45;
    if (!v45)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY norm-counts.";
      goto LABEL_28;
    }

    v46 = normalizeCounts(a1, (*v28)[5], (*v28)[4], a7, v31, v32, v33, v34);
    (*v28)[7] = v46;
    if (!v46)
    {
      v47 = " in fExtGetStrGrp2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY norm-counts.";
LABEL_28:
      NNFX_logMsg(a1, 0, v47, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhone2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
}

uint64_t **fExtGetWord2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Word-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v57 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 16;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 128);
    v28[1] = v29;
    if (!v29)
    {
      v55 = " in fExtGetWord2BdryFeats() allocating feature names";
      goto LABEL_44;
    }

    *v28[1] = stringdup(a1, "Word2StxGrpLCtInt");
    v28[1][1] = stringdup(a1, "Word2StxGrpRCtInt");
    v28[1][2] = stringdup(a1, "Word2StxGrpLCtFloat");
    v28[1][3] = stringdup(a1, "Word2StxGrpRCtFloat");
    v28[1][4] = stringdup(a1, "Word2PhraseLCtInt");
    v28[1][5] = stringdup(a1, "Word2PhraseRCtInt");
    v28[1][6] = stringdup(a1, "Word2PhraseLCtFloat");
    v28[1][7] = stringdup(a1, "Word2PhraseRCtFloat");
    v28[1][8] = stringdup(a1, "Word2PunctLCtInt");
    v28[1][9] = stringdup(a1, "Word2PunctRCtInt");
    v28[1][10] = stringdup(a1, "Word2PunctLCtFloat");
    v28[1][11] = stringdup(a1, "Word2PunctRCtFloat");
    v28[1][12] = stringdup(a1, "Word2SentLCtInt");
    v28[1][13] = stringdup(a1, "Word2SentRCtInt");
    v28[1][14] = stringdup(a1, "Word2SentLCtFloat");
    v28[1][15] = stringdup(a1, "Word2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v55 = " in fExtGetWord2BdryFeats allocating feature stream names.";
      goto LABEL_44;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v55 = " in fExtGetWord2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_44;
    }

    LeftCounts = getLeftCounts(a1, a5[2], a5[5]);
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SYNTAX-BDRY counts.";
      goto LABEL_44;
    }

    RightCounts = getRightCounts(a1, a5[2], a5[5]);
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SYNTAX-BDRY counts.";
      goto LABEL_44;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_44;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_44;
    }

    v43 = getLeftCounts(a1, a5[2], a5[3]);
    (*v28)[4] = v43;
    if (!v43)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PHRASE-BDRY counts.";
      goto LABEL_44;
    }

    v44 = getRightCounts(a1, a5[2], a5[3]);
    (*v28)[5] = v44;
    if (!v44)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PHRASE-BDRY counts.";
      goto LABEL_44;
    }

    v45 = normalizeCounts(a1, (*v28)[4], (*v28)[5], a7, v31, v32, v33, v34);
    (*v28)[6] = v45;
    if (!v45)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_44;
    }

    v46 = normalizeCounts(a1, (*v28)[5], (*v28)[4], a7, v31, v32, v33, v34);
    (*v28)[7] = v46;
    if (!v46)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_44;
    }

    v47 = getLeftCounts(a1, a5[2], a5[4]);
    (*v28)[8] = v47;
    if (!v47)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PUNCT-BDRY counts.";
      goto LABEL_44;
    }

    v48 = getRightCounts(a1, a5[2], a5[4]);
    (*v28)[9] = v48;
    if (!v48)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PUNCT-BDRY counts.";
      goto LABEL_44;
    }

    v49 = normalizeCounts(a1, (*v28)[8], (*v28)[9], a7, v31, v32, v33, v34);
    (*v28)[10] = v49;
    if (!v49)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v50 = normalizeCounts(a1, (*v28)[9], (*v28)[8], a7, v31, v32, v33, v34);
    (*v28)[11] = v50;
    if (!v50)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v51 = getLeftCounts(a1, a5[2], a5[7]);
    (*v28)[12] = v51;
    if (!v51)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SENT-BDRY counts.";
      goto LABEL_44;
    }

    v52 = getRightCounts(a1, a5[2], a5[7]);
    (*v28)[13] = v52;
    if (!v52)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SENT-BDRY counts.";
      goto LABEL_44;
    }

    v53 = normalizeCounts(a1, (*v28)[12], (*v28)[13], a7, v31, v32, v33, v34);
    (*v28)[14] = v53;
    if (!v53)
    {
      v55 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SENT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v54 = normalizeCounts(a1, (*v28)[13], (*v28)[12], a7, v31, v32, v33, v34);
    (*v28)[15] = v54;
    if (!v54)
    {
      v55 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SENT-BDRY norm-counts.";
LABEL_44:
      NNFX_logMsg(a1, 0, v55, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetWord2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
}

uint64_t **fExtGetParse2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Syntax-Group-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v53 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 12;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 96);
    v28[1] = v29;
    if (!v29)
    {
      v51 = " in fExtGetParse2BdryFeats() allocating feature names";
      goto LABEL_36;
    }

    *v28[1] = stringdup(a1, "StxGrp2PhraseLCtInt");
    v28[1][1] = stringdup(a1, "StxGrp2PhraseRCtInt");
    v28[1][2] = stringdup(a1, "StxGrp2PhraseLCtFloat");
    v28[1][3] = stringdup(a1, "StxGrp2PhraseRCtFloat");
    v28[1][4] = stringdup(a1, "StxGrp2PunctLCtInt");
    v28[1][5] = stringdup(a1, "StxGrp2PunctRCtInt");
    v28[1][6] = stringdup(a1, "StxGrp2PunctLCtFloat");
    v28[1][7] = stringdup(a1, "StxGrp2PunctRCtFloat");
    v28[1][8] = stringdup(a1, "StxGrp2SentLCtInt");
    v28[1][9] = stringdup(a1, "StxGrp2SentRCtInt");
    v28[1][10] = stringdup(a1, "StxGrp2SentLCtFloat");
    v28[1][11] = stringdup(a1, "StxGrp2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v51 = " in fExtGetParse2BdryFeats allocating feature stream names.";
      goto LABEL_36;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v51 = " in fExtGetParse2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_36;
    }

    LeftCounts = getLeftCounts(a1, a5[5], a5[3]);
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PHRASE-BDRY counts.";
      goto LABEL_36;
    }

    RightCounts = getRightCounts(a1, a5[5], a5[3]);
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PHRASE-BDRY counts.";
      goto LABEL_36;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_36;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_36;
    }

    v43 = getLeftCounts(a1, a5[5], a5[4]);
    (*v28)[4] = v43;
    if (!v43)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PUNCT-BDRY counts.";
      goto LABEL_36;
    }

    v44 = getRightCounts(a1, a5[5], a5[4]);
    (*v28)[5] = v44;
    if (!v44)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PUNCT-BDRY counts.";
      goto LABEL_36;
    }

    v45 = normalizeCounts(a1, (*v28)[4], (*v28)[5], a7, v31, v32, v33, v34);
    (*v28)[6] = v45;
    if (!v45)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v46 = normalizeCounts(a1, (*v28)[5], (*v28)[4], a7, v31, v32, v33, v34);
    (*v28)[7] = v46;
    if (!v46)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v47 = getLeftCounts(a1, a5[5], a5[7]);
    (*v28)[8] = v47;
    if (!v47)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_36;
    }

    v48 = getRightCounts(a1, a5[5], a5[7]);
    (*v28)[9] = v48;
    if (!v48)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_36;
    }

    v49 = normalizeCounts(a1, (*v28)[8], (*v28)[9], a7, v31, v32, v33, v34);
    (*v28)[10] = v49;
    if (!v49)
    {
      v51 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v50 = normalizeCounts(a1, (*v28)[9], (*v28)[8], a7, v31, v32, v33, v34);
    (*v28)[11] = v50;
    if (!v50)
    {
      v51 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-SENT-BDRY norm-counts.";
LABEL_36:
      NNFX_logMsg(a1, 0, v51, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetParse2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
}

uint64_t **fExtGetPhrase2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Phrase-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v45 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 4;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 32);
    v28[1] = v29;
    if (!v29)
    {
      v43 = " in fExtGetPhrase2BdryFeats() allocating feature names";
      goto LABEL_20;
    }

    *v28[1] = stringdup(a1, "Phrase2SentLCtInt");
    v28[1][1] = stringdup(a1, "Phrase2SentRCtInt");
    v28[1][2] = stringdup(a1, "Phrase2SentLCtFloat");
    v28[1][3] = stringdup(a1, "Phrase2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v43 = " in fExtGetPhrase2BdryFeats allocating feature stream names.";
      goto LABEL_20;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v43 = " in fExtGetPhrase2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_20;
    }

    LeftCounts = getLeftCounts(a1, *(a5 + 24), *(a5 + 56));
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v43 = " in fExtGetPhrase2BdryFeats() creating LEFT PHRASE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    RightCounts = getRightCounts(a1, *(a5 + 24), *(a5 + 56));
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v43 = " in fExtGetPhrase2BdryFeats() creating RIGHT PHRASE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v43 = " in fExtGetPhrase2BdryFeats() creating LEFT PHRASE-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_20;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v43 = " in fExtGetPhrase2BdryFeats() creating RIGHT PHRASE-NODE-TO-SENT-BDRY norm-counts.";
LABEL_20:
      NNFX_logMsg(a1, 0, v43, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetParse2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
}

uint64_t **fExtGetPunct2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Punctuation-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v12, v13, v14, v15, v16);
  v45 = *(*a4 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v17, v18, v19, v20, v21);
  v22 = heap_Calloc(*(a1 + 8), 1, 4048);
  v28 = v22;
  if (v22)
  {
    *(v22 + 4016) = 4;
    *(v22 + 4024) = a7;
    v29 = heap_Alloc(*(a1 + 8), 32);
    v28[1] = v29;
    if (!v29)
    {
      v43 = " in fExtGetLexicalFeats() allocating feature names";
      goto LABEL_20;
    }

    *v28[1] = stringdup(a1, "Punct2SentLCtInt");
    v28[1][1] = stringdup(a1, "Punct2SentRCtInt");
    v28[1][2] = stringdup(a1, "Punct2SentLCtFloat");
    v28[1][3] = stringdup(a1, "Punct2SentRCtFloat");
    v35 = *(v28 + 1004);
    if (v35 >= 1)
    {
      v36 = v28[1];
      v37 = *(v28 + 1004);
      while (*v36)
      {
        ++v36;
        if (!--v37)
        {
          goto LABEL_7;
        }
      }

      v43 = " in fExtGetPunct2BdryFeats allocating feature stream names.";
      goto LABEL_20;
    }

LABEL_7:
    v38 = heap_Alloc(*(a1 + 8), 8 * v35);
    *v28 = v38;
    if (!v38)
    {
      v43 = " in fExtGetLexicalFeats() trying to malloc-ate feature array.";
      goto LABEL_20;
    }

    LeftCounts = getLeftCounts(a1, *(a5 + 32), *(a5 + 56));
    **v28 = LeftCounts;
    if (!LeftCounts)
    {
      v43 = " in fExtGetPunct2BdryFeats creating LEFT PUNCT-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    RightCounts = getRightCounts(a1, *(a5 + 32), *(a5 + 56));
    (*v28)[1] = RightCounts;
    if (!RightCounts)
    {
      v43 = " in fExtGetPunct2BdryFeats creating RIGHT PUNCT-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    v41 = normalizeCounts(a1, **v28, (*v28)[1], a7, v31, v32, v33, v34);
    (*v28)[2] = v41;
    if (!v41)
    {
      v43 = " in fExtGetPunct2BdryFeats creating LEFT PUNCT-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_20;
    }

    v42 = normalizeCounts(a1, (*v28)[1], **v28, a7, v31, v32, v33, v34);
    (*v28)[3] = v42;
    if (!v42)
    {
      v43 = " in fExtGetPunct2BdryFeats creating RIGHT PUNCT-NODE-TO-SENT-BDRY norm-counts.";
LABEL_20:
      NNFX_logMsg(a1, 0, v43, v30, v31, v32, v33, v34);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPunct2BdryFeats() trying to mallocate output.", v23, v24, v25, v26, v27);
  }

  return v28;
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
  if (a4 > 9)
  {
    v9 = " in mergePhoneFeaturesAtStateLevel(). More than 9 states per phone  used";
    goto LABEL_39;
  }

  v10 = a4;
  v13 = *(*a2 + 4024);
  if (a3 >= 2)
  {
    for (i = 1; i != a3; ++i)
    {
      if (*(a2[i] + 4024) != v13)
      {
        v9 = " in mergePhoneFeaturesAtStateLevel(). Record 0 of length %d cannot be merged with record %d of length %d";
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
    *(v20 + 4024) = v13 * v10;
    if (v19 && ((v27 = heap_Calloc(*(a1 + 8), v19, 8), (*(v26 + 8) = v27) == 0) || (v28 = heap_Calloc(*(a1 + 8), *(v26 + 4016), 4), (*(v26 + 4040) = v28) == 0)) || (**(v26 + 8) = stringdup(a1, "StateID")) == 0)
    {
      v9 = " in mergePhoneFeaturesAtStateLevel() allocating feature names";
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
            v9 = " in mergePhoneFeaturesAtStateLevel() allocating array";
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
            v40 = *(v31 + 4016);
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
      v9 = " in mergePhoneFeatures() trying to malloc-ate output.";
      goto LABEL_39;
    }

    if (v13)
    {
      v42 = 0;
      v43 = 0;
      while (1)
      {
        v58 = v42;
        if (v10)
        {
          break;
        }

        v49 = v43;
LABEL_50:
        v42 = v58 + 1;
        v43 = v49;
        if (v58 + 1 == v13)
        {
          goto LABEL_51;
        }
      }

      v44 = v10;
      v45 = "S01";
      while (1)
      {
        v46 = heap_Alloc(*(a1 + 8), 16);
        if (!v46)
        {
          break;
        }

        v47 = v46;
        *(v46 + 8) = 3;
        v48 = heap_Alloc(*(a1 + 8), 5);
        *v47 = v48;
        if (!v48)
        {
          break;
        }

        strcpy(v48, v45);
        v49 = (v43 + 1);
        *(**v26 + 8 * v43) = v47;
        v45 += 5;
        LODWORD(v43) = v43 + 1;
        if (!--v44)
        {
          goto LABEL_50;
        }
      }

      v9 = " in mergePhoneFeatures() while allocating mem for stream state ID.";
LABEL_39:
      NNFX_logMsg(a1, 0, v9, a4, a5, a6, a7, a8);
      return 0;
    }

    else
    {
LABEL_51:
      if (a3)
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = a2[v50];
          if (*(v52 + 4016))
          {
            v53 = 0;
            do
            {
              if (v13)
              {
                v54 = 0;
                v55 = 0;
                do
                {
                  if (v10)
                  {
                    v56 = v55 + v10;
                    v57 = v10;
                    do
                    {
                      *(*(*v26 + 8 * v51) + 8 * v55++) = *(*(*a2[v50] + 8 * v53) + 8 * v54);
                      --v57;
                    }

                    while (v57);
                    v55 = v56;
                  }

                  ++v54;
                }

                while (v54 != v13);
                v52 = a2[v50];
              }

              ++v51;
              ++v53;
            }

            while (v53 < *(v52 + 4016));
          }

          ++v50;
        }

        while (v50 != a3);
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
  return v3 && strchr(*v3, __c) != 0;
}

uint64_t check_lex_feat(uint64_t a1, char *__s1, int a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 16 * a3 + 8);
  if (v3)
  {
    for (i = 0; i != 4000; i += 8)
    {
      v6 = *(v3 + i);
      if (!v6)
      {
        break;
      }

      if (!strcmp(__s1, v6))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t **fExtGetPhone2BdryFeats__(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, BOOL (*a6)(int a1), uint64_t a7, uint64_t a8)
{
  v13 = *a3;
  v71 = *(*a3 + 2);
  NNFX_logMsg(a1, 3, "Extracting %s-to-X boundary features", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v14, v15, v16, v17, v18);
  v72 = *(*a2 + 136);
  NNFX_logMsg(a1, 3, "First boundary: %c", v19, v20, v21, v22, v23);
  v24 = heap_Calloc(*(a1 + 8), 1, 4048);
  v30 = v24;
  if (v24)
  {
    *(v24 + 4016) = 28;
    *(v24 + 4024) = a5;
    v31 = heap_Alloc(*(a1 + 8), 224);
    v30[1] = v31;
    if (!v31)
    {
      v69 = " in fExtGetPhone2BdryFeats() allocating feature names";
      goto LABEL_68;
    }

    *v30[1] = stringdup(a1, "Phone2SyllLCtInt");
    v30[1][1] = stringdup(a1, "Phone2SyllRCtInt");
    v30[1][2] = stringdup(a1, "Phone2SyllLCtFloat");
    v30[1][3] = stringdup(a1, "Phone2SyllRCtFloat");
    v30[1][4] = stringdup(a1, "Phone2StrGrpLCtInt");
    v30[1][5] = stringdup(a1, "Phone2StrGrpRCtInt");
    v30[1][6] = stringdup(a1, "Phone2StrGrpLCtFloat");
    v30[1][7] = stringdup(a1, "Phone2StrGrpRCtFloat");
    v30[1][8] = stringdup(a1, "Phone2WordLCtInt");
    v30[1][9] = stringdup(a1, "Phone2WordRCtInt");
    v30[1][10] = stringdup(a1, "Phone2WordLCtFloat");
    v30[1][11] = stringdup(a1, "Phone2WordRCtFloat");
    v30[1][12] = stringdup(a1, "Phone2StxGrpLCtInt");
    v30[1][13] = stringdup(a1, "Phone2StxGrpRCtInt");
    v30[1][14] = stringdup(a1, "Phone2StxGrpLCtFloat");
    v30[1][15] = stringdup(a1, "Phone2StxGrpRCtFloat");
    v30[1][16] = stringdup(a1, "Phone2PhraseLCtInt");
    v30[1][17] = stringdup(a1, "Phone2PhraseRCtInt");
    v30[1][18] = stringdup(a1, "Phone2PhraseLCtFloat");
    v30[1][19] = stringdup(a1, "Phone2PhraseRCtFloat");
    v30[1][20] = stringdup(a1, "Phone2PunctLCtInt");
    v30[1][21] = stringdup(a1, "Phone2PunctRCtInt");
    v30[1][22] = stringdup(a1, "Phone2PunctLCtFloat");
    v30[1][23] = stringdup(a1, "Phone2PunctRCtFloat");
    v30[1][24] = stringdup(a1, "Phone2SentLCtInt");
    v30[1][25] = stringdup(a1, "Phone2SentRCtInt");
    v30[1][26] = stringdup(a1, "Phone2SentLCtFloat");
    v30[1][27] = stringdup(a1, "Phone2SentRCtFloat");
    v37 = *(v30 + 1004);
    if (v37 >= 1)
    {
      v38 = v30[1];
      v39 = *(v30 + 1004);
      while (*v38)
      {
        ++v38;
        if (!--v39)
        {
          goto LABEL_7;
        }
      }

      v69 = " in fExtGetPhone2BdryFeats__ allocating feature stream names.";
      goto LABEL_68;
    }

LABEL_7:
    v40 = heap_Alloc(*(a1 + 8), 8 * v37);
    *v30 = v40;
    if (!v40)
    {
      v69 = " in fExtGetPhone2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_68;
    }

    LeftCounts = getLeftCounts_(a1, v13, a3[1], a6);
    **v30 = LeftCounts;
    if (!LeftCounts)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYLL-BDRY counts.";
      goto LABEL_68;
    }

    RightCounts = getRightCounts_(a1, v13, a3[1], a6);
    (*v30)[1] = RightCounts;
    if (!RightCounts)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYLL-BDRY     counts.";
      goto LABEL_68;
    }

    v43 = normalizeCounts(a1, **v30, (*v30)[1], a5, v33, v34, v35, v36);
    (*v30)[2] = v43;
    if (!v43)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYLL-BDRY norm-counts.";
      goto LABEL_68;
    }

    v44 = normalizeCounts(a1, (*v30)[1], **v30, a5, v33, v34, v35, v36);
    (*v30)[3] = v44;
    if (!v44)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYLL-BDRY norm-counts.";
      goto LABEL_68;
    }

    v45 = getLeftCounts_(a1, v13, a3[6], a6);
    (*v30)[4] = v45;
    if (!v45)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_68;
    }

    v46 = getRightCounts_(a1, v13, a3[6], a6);
    (*v30)[5] = v46;
    if (!v46)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_68;
    }

    v47 = normalizeCounts(a1, (*v30)[4], (*v30)[5], a5, v33, v34, v35, v36);
    (*v30)[6] = v47;
    if (!v47)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_68;
    }

    v48 = normalizeCounts(a1, (*v30)[5], (*v30)[4], a5, v33, v34, v35, v36);
    (*v30)[7] = v48;
    if (!v48)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_68;
    }

    v49 = getLeftCounts_(a1, v13, a3[2], a6);
    (*v30)[8] = v49;
    if (!v49)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-WORD-BDRY counts.";
      goto LABEL_68;
    }

    v50 = getRightCounts_(a1, v13, a3[2], a6);
    (*v30)[9] = v50;
    if (!v50)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-WORD-BDRY counts.";
      goto LABEL_68;
    }

    v51 = normalizeCounts(a1, (*v30)[8], (*v30)[9], a5, v33, v34, v35, v36);
    (*v30)[10] = v51;
    if (!v51)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-WORD-BDRY norm-counts.";
      goto LABEL_68;
    }

    v52 = normalizeCounts(a1, (*v30)[9], (*v30)[8], a5, v33, v34, v35, v36);
    (*v30)[11] = v52;
    if (!v52)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-WORD-BDRY norm-counts.";
      goto LABEL_68;
    }

    v53 = getLeftCounts_(a1, v13, a3[5], a6);
    (*v30)[12] = v53;
    if (!v53)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYNTAX-BDRY counts.";
      goto LABEL_68;
    }

    v54 = getRightCounts_(a1, v13, a3[5], a6);
    (*v30)[13] = v54;
    if (!v54)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYNTAX-BDRY counts.";
      goto LABEL_68;
    }

    v55 = normalizeCounts(a1, (*v30)[12], (*v30)[13], a5, v33, v34, v35, v36);
    (*v30)[14] = v55;
    if (!v55)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_68;
    }

    v56 = normalizeCounts(a1, (*v30)[13], (*v30)[12], a5, v33, v34, v35, v36);
    (*v30)[15] = v56;
    if (!v56)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_68;
    }

    v57 = getLeftCounts_(a1, v13, a3[3], a6);
    (*v30)[16] = v57;
    if (!v57)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PHRASE-BDRY counts.";
      goto LABEL_68;
    }

    v58 = getRightCounts_(a1, v13, a3[3], a6);
    (*v30)[17] = v58;
    if (!v58)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PHRASE-BDRY counts.";
      goto LABEL_68;
    }

    v59 = normalizeCounts(a1, (*v30)[16], (*v30)[17], a5, v33, v34, v35, v36);
    (*v30)[18] = v59;
    if (!v59)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_68;
    }

    v60 = normalizeCounts(a1, (*v30)[17], (*v30)[16], a5, v33, v34, v35, v36);
    (*v30)[19] = v60;
    if (!v60)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_68;
    }

    v61 = getLeftCounts_(a1, v13, a3[4], a6);
    (*v30)[20] = v61;
    if (!v61)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PUNCT-BDRY counts.";
      goto LABEL_68;
    }

    v62 = getRightCounts_(a1, v13, a3[4], a6);
    (*v30)[21] = v62;
    if (!v62)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PUNCT-BDRY counts.";
      goto LABEL_68;
    }

    v63 = normalizeCounts(a1, (*v30)[20], (*v30)[21], a5, v33, v34, v35, v36);
    (*v30)[22] = v63;
    if (!v63)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v64 = normalizeCounts(a1, (*v30)[21], (*v30)[20], a5, v33, v34, v35, v36);
    (*v30)[23] = v64;
    if (!v64)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v65 = getLeftCounts_(a1, v13, a3[7], a6);
    (*v30)[24] = v65;
    if (!v65)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SENT-BDRY counts.";
      goto LABEL_68;
    }

    v66 = getRightCounts_(a1, v13, a3[7], a6);
    (*v30)[25] = v66;
    if (!v66)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SENT-BDRY counts.";
      goto LABEL_68;
    }

    v67 = normalizeCounts(a1, (*v30)[24], (*v30)[25], a5, v33, v34, v35, v36);
    (*v30)[26] = v67;
    if (!v67)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SENT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v68 = normalizeCounts(a1, (*v30)[25], (*v30)[24], a5, v33, v34, v35, v36);
    (*v30)[27] = v68;
    if (!v68)
    {
      v69 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SENT-BDRY norm-counts.";
LABEL_68:
      NNFX_logMsg(a1, 0, v69, v32, v33, v34, v35, v36);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhone2BdryFeats() trying to mallocate output.", v25, v26, v27, v28, v29);
  }

  return v30;
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
  v8 = strlen(__s);

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
  v6 = strlen(__s);

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

uint64_t TierInit(uint64_t a1, int *a2, int a3, char *a4)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  TierClear(a1, a2);
  if (a4)
  {
    *(a2 + 2) = stringdup(a1, a4);
  }

  if (a3 < 1)
  {
    return 0;
  }

  *a2 = a3;
  *(a2 + 1) = 0;
  v8 = heap_Calloc(*(a1 + 8), a3, 2);
  *(a2 + 1) = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = v8 + 2 * *a2;
  if (!*(v9 - 2))
  {
    ++a2[1];
  }

  result = 0;
  *(v9 - 2) = 1;
  return result;
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
    v29 = *(a2 + 4);
    NNFX_logMsg(a1, 0, "outside range [0-%d] in sub-tier ", a4, a5, a6, a7, a8);
    v25 = *(a2 + 16);
    if (*v25)
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v30 = v25[v26];
        NNFX_logMsg(a1, 0, "%c", v20, v21, v22, v23, v24);
        v26 = v27;
        v25 = *(a2 + 16);
      }

      while (strlen(v25) > v27++);
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
    v20 = a2[1];
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
    v34 = *(a2 + 4);
    NNFX_logMsg(a1, 0, "outside range [0-%d] in sub-tier ", v20, v21, v22, v23, v24);
    v30 = *(a2 + 16);
    if (*v30)
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v35 = v30[v31];
        NNFX_logMsg(a1, 0, "%c", v25, v26, v27, v28, v29);
        v31 = v32;
        v30 = *(a2 + 16);
      }

      while (strlen(v30) > v32++);
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
    v21 = *(a2 + 4);
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

uint64_t SymTabReadBuf(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v39[128] = *MEMORY[0x1E69E9840];
  bzero(__dst, 0x800uLL);
  SymTabFree(a1, a2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  *(a2 + 1) = v9;
  if (v9)
  {
    if (a4 < 1)
    {
      v17 = 0;
LABEL_25:
      v30 = *(*a5 + 4016) - v17;
      *(*a5 + 4020) = v30;
      if (*a2 != v30)
      {
        v33 = *a2;
        NNFX_logMsg(a1, 0, "ERROR::nnfeatextract: Symbol table contains %d entries while number of active features is %d.\n", v10, v11, v12, v13, v14);
      }

      result = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v18) = 0;
      v19 = __dst;
      v20 = v39;
      v37 = -1;
      v34 = a2;
      while (1)
      {
        v21 = v20;
        v22 = strcpy(v19, *(a3 + 8 * v15));
        v23 = strrchr(v22, 10);
        if (v23)
        {
          *v23 = 0;
        }

        v24 = strchr(v19, 32);
        if (v24)
        {
          *v24 = 0;
        }

        v25 = strchr(v19, 9);
        if (v25)
        {
          *v25 = 0;
        }

        v26 = strchr(v19, 61);
        v27 = v26;
        if (v26)
        {
          *v26 = 0;
          v27 = v26 + 1;
        }

        if (!*v19)
        {
          break;
        }

        if (strcmp(v19, v21))
        {
          v28 = *a5;
          if (v18 < *(*a5 + 4016))
          {
            v18 = v18;
            do
            {
              if (!strcmp(*(*(v28 + 8) + 8 * v18), v19))
              {
                break;
              }

              NNFX_logMsg(a1, 3, "Missing feature: %s", v10, v11, v12, v13, v14);
              v28 = *a5;
              *(*a5 + 4 * v18++ + 16) = 0;
              ++v17;
            }

            while (v18 < *(v28 + 4016));
          }

          v32 = *(*(v28 + 8) + 8 * v18);
          NNFX_logMsg(a1, 3, "\nsymtab:%s  feat:%s", v10, v11, v12, v13, v14);
          v16 = 0;
          *(*a5 + 4 * v18 + 16) = 1;
          LODWORD(v18) = v18 + 1;
          ++v37;
          a2 = v34;
          ++*v34;
        }

        if (v27)
        {
          TrieIntAdd(a1, (*(a2 + 1) + 16 * v37), v27, ++v16);
        }

        ++v15;
        v20 = v19;
        v19 = v21;
        if (v15 == v35)
        {
          goto LABEL_25;
        }
      }

      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
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
    v26 = *a2;
    v27 = *(*a3 + 4020);
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
            v25 = *(*a3 + 4024);
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
    v8 = v26;
    v7 = v27;
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

  v4 = strlen(__s);
  v5 = heap_Alloc(*(a1 + 8), v4 + 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = strlen(__s) + 1;

  return memmove(v6, __s, v7);
}

void *safe_strcpy(void *result, char *__s)
{
  if (result && __s)
  {
    v3 = result;
    v4 = strlen(__s) + 1;

    return memmove(v3, __s, v4);
  }

  return result;
}

char *stringcat(uint64_t a1, char *__s, const char *a3)
{
  if (!__s)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = strlen(a3);
  v8 = heap_Alloc(*(a1 + 8), v6 + v7 + 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  safe_strcpy(v8, __s);

  return strcat(v9, a3);
}

uint64_t Lingdb2NnWordRec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v13 = a6;
  v18 = a9;
  v19 = *a6;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v171 = 0;
  v172 = 4;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  *a7 = 0;
  *a9 = 0;
  *a10 = 0;
  v20 = (*(a3 + 104))(a4, a5, 1, 0, &v174 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = v20;
    goto LABEL_9;
  }

  v21 = (*(a3 + 168))(a4, a5, HIWORD(v174), 3, 1, a7, &v173);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_9:
    *(v13 + 5) = 0;
    return v21;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v174), 1, &v168) & 0x80000000) == 0 && v168 == 1)
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v174), 1, &v169, &v168 + 2);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  v22 = a11;
  if (HIWORD(v168))
  {
    v164 = v169[3];
  }

  else
  {
    v164 = 0;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v174), 0, &v168) & 0x80000000) != 0 || v168 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v174), 4, &v168) & 0x80000000) != 0 || v168 != 1)
    {
      goto LABEL_21;
    }

    v21 = (*(a3 + 176))(a4, a5, HIWORD(v174), 4, &v179, &v173);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v174), 0, &v179, &v173);
    if ((v21 & 0x80000000) != 0)
    {
      log_OutPublic(a1[4], a2, 0, 0, v24, v25, v26, v27, v152);
      goto LABEL_9;
    }
  }

  if (v173 <= 1u)
  {
    v179 = 0;
    goto LABEL_27;
  }

LABEL_21:
  if (!v179)
  {
LABEL_27:
    v32 = 0;
    if (a8 && HIWORD(v168))
    {
      v33 = 0;
      v34 = v169;
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
          **(a8 + 280) = 35;
          *a9 = 1;
          *a10 = 1;
          v32 = 2;
          *a11 = 2;
          goto LABEL_37;
        }

        ++v33;
      }

      while (v33 < HIWORD(v168));
      v32 = 0;
    }

LABEL_37:
    *(v13 + 5) = v32;
    return v21;
  }

  LODWORD(v28) = HIWORD(v168);
  if (HIWORD(v168))
  {
    v29 = 0;
    v30 = (v169 + 3);
    while (1)
    {
      v31 = *v30;
      v30 += 8;
      if (v31 != v164)
      {
        break;
      }

      if (HIWORD(v168) == ++v29)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v28) = v29;
  }

LABEL_39:
  v38 = (*(a3 + 152))(a4, a5, 2, HIWORD(v174), &v168);
  LOWORD(v39) = 0;
  if (v38 < 0 || !v168)
  {
    v161 = 0;
  }

  else
  {
    v21 = (*(a3 + 104))(a4, a5, 2, HIWORD(v174), &v174);
    if ((v21 & 0x80000000) != 0)
    {
      v136 = 1;
      goto LABEL_288;
    }

    v40 = v174;
    if (v174)
    {
      v153 = 0;
      v161 = 0;
      v39 = 0;
      v156 = 0;
      v157 = 1;
      v158 = 0;
      v154 = v13;
      v155 = a8;
      while (1)
      {
        v163 = v39;
        v41 = (*(a3 + 168))(a4, a5, v40, 0, 1, &v172, &v173);
        if ((v41 & 0x80000000) != 0)
        {
LABEL_286:
          v21 = v41;
LABEL_287:
          v136 = v157;
LABEL_288:
          *(v13 + 5) = v136;
          return v21;
        }

        v42 = v172;
        v43 = a8 + 144 * v163;
        *v43 = v172;
        if ((v42 - 9) >= 6)
        {
          if (v42 == 15)
          {
            ++*a10;
            if (((*(a3 + 184))(a4, a5, v174, 7, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v174, 7, 1, &v170, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v43 + 12) = v170;
            }

            if (((*(a3 + 184))(a4, a5, v174, 1, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v174, 1, 1, &v171, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v43 + 4) = v171;
            }

            if (((*(a3 + 184))(a4, a5, v174, 2, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v174, 2, 1, &v170 + 2, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v43 + 8) = HIWORD(v170);
            }

            v173 = 0;
            if (((*(a3 + 184))(a4, a5, v174, 4, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 176))(a4, a5, v174, 4, &v176, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (v176)
              {
                strcpy(*(v43 + 32), v176);
              }
            }

            if (v179)
            {
              v167 = 0;
              v80 = v171;
              if (v171 >= HIWORD(v170))
              {
                v81 = 0;
              }

              else
              {
                v81 = 0;
                do
                {
                  v82 = *(v179 + v80);
                  v83 = *(v43 + 128);
                  v167 = v81 + 1;
                  *(v83 + v81) = v82;
                  ++v80;
                  v81 = v167;
                }

                while (v80 < HIWORD(v170) && v167 < 0x1FFuLL);
              }

              *(*(v43 + 128) + v81) = 0;
            }

            if (v170 <= 2u)
            {
              *(v43 + 120) = 0x575353u >> (8 * v170);
            }

            if (v163)
            {
              v84 = v163 - 1;
              while (1)
              {
                v85 = v84;
                v86 = *(a8 + 144 * v84);
                if ((v86 - 9) < 6 || v86 == 4)
                {
                  break;
                }

                if (v86 != 15)
                {
                  --v84;
                  if (v85)
                  {
                    continue;
                  }
                }

                goto LABEL_222;
              }

              *(a8 + 144 * v84 + 120) = *(v43 + 120);
LABEL_222:
              v153 = v163;
            }

            else
            {
              v163 = 0;
              v153 = 0;
            }

            goto LABEL_224;
          }

          if (v42 != 4)
          {
            if (((*(a3 + 184))(a4, a5, v174, 1, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v174, 1, 1, &v171, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v43 + 4) = v171;
            }

            if (((*(a3 + 184))(a4, a5, v174, 2, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v174, 2, 1, &v170 + 2, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              *(v43 + 8) = HIWORD(v170);
            }

            v173 = 0;
            if (((*(a3 + 184))(a4, a5, v174, 4, &v168) & 0x80000000) == 0 && v168 == 1)
            {
              v41 = (*(a3 + 176))(a4, a5, v174, 4, &v177, &v173);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (v177)
              {
                strcpy(*(v43 + 32), v177);
              }
            }

            if (v179)
            {
              v167 = 0;
              v51 = v171;
              if (v171 >= HIWORD(v170))
              {
                v52 = 0;
              }

              else
              {
                v52 = 0;
                do
                {
                  v53 = *(v179 + v51);
                  v54 = *(v43 + 128);
                  v167 = v52 + 1;
                  *(v54 + v52) = v53;
                  ++v51;
                  v52 = v167;
                }

                while (v51 < HIWORD(v170) && v167 < 0x1FFuLL);
              }

              *(*(v43 + 128) + v52) = 0;
            }

LABEL_224:
            v22 = a11;
            goto LABEL_258;
          }
        }

        ++*v18;
        if (v42 == 12)
        {
          v44 = v158;
        }

        else
        {
          v44 = 0;
        }

        v162 = v44;
        v46 = v42 != 14 || v158 == 0;
        if (((*(a3 + 184))(a4, a5, v174, 1, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v174, 1, 1, &v171, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v43 + 4) = v171;
        }

        if (((*(a3 + 184))(a4, a5, v174, 2, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v174, 2, 1, &v170 + 2, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v43 + 8) = HIWORD(v170);
        }

        if (((*(a3 + 184))(a4, a5, v174, 13, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 13, &v175, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v43 + 20) = atoi(v175);
        }

        if (((*(a3 + 184))(a4, a5, v174, 7, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v174, 7, 1, &v171 + 2, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v43 + 12) = HIWORD(v171);
        }

        if (((*(a3 + 184))(a4, a5, v174, 17, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 17, &v175, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          *(v43 + 24) = atoi(v175);
        }

        if (v176)
        {
          strcpy(*(v43 + 32), v176);
        }

        if (((*(a3 + 184))(a4, a5, v174, 5, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 5, &v177, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v177)
          {
            strcpy(*(v43 + 40), v177);
          }
        }

        if (((*(a3 + 184))(a4, a5, v174, 6, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 6, &v177, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v177)
          {
            strcpy(*(v43 + 48), v177);
          }
        }

        if (((*(a3 + 184))(a4, a5, v174, 9, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 9, &v177, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v177)
          {
            strcpy(*(v43 + 56), v177);
          }
        }

        if (((*(a3 + 184))(a4, a5, v174, 14, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 14, &v177, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (v177)
          {
            ParseWnluStr(v177, v43);
          }
        }

        if (v179)
        {
          v167 = 0;
          v47 = v171;
          if (v171 >= HIWORD(v170))
          {
            v48 = 0;
          }

          else
          {
            v48 = 0;
            do
            {
              v49 = *(v179 + v47);
              v50 = *(v43 + 128);
              v167 = v48 + 1;
              *(v50 + v48) = v49;
              ++v47;
              v48 = v167;
            }

            while (v47 < HIWORD(v170) && v167 < 0x1FFuLL);
          }

          *(*(v43 + 128) + v48) = 0;
        }

        v173 = 0;
        v178 = 0;
        if (((*(a3 + 184))(a4, a5, v174, 3, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v174, 3, &v178, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        v55 = v173;
        v159 = v46;
        if (v173 >= 2u)
        {
          v56 = v178;
        }

        else if (v172 == 14)
        {
          v56 = "M";
          v178 = "M";
        }

        else
        {
          v56 = 0;
          v178 = 0;
        }

        v57 = atoi(v175);
        if (!v56 || v57)
        {
          if (!v56)
          {
            goto LABEL_149;
          }
        }

        else if (*v56 == 34 && !v56[1])
        {
          v178 = 0;
LABEL_149:
          a8 = v155;
          v18 = a9;
          goto LABEL_235;
        }

        if (v55 >= 2)
        {
          v58 = 0;
          while (1)
          {
            v59 = v58;
            v60 = v178[v58];
            if (v60 < 0)
            {
              if (!__maskrune(v178[v58], 0x4000uLL))
              {
LABEL_150:
                v61 = v43;
                goto LABEL_151;
              }
            }

            else if ((*(MEMORY[0x1E69E9830] + 4 * v60 + 60) & 0x4000) == 0)
            {
              goto LABEL_150;
            }

            if (v173 - 1 <= ++v58)
            {
              v61 = v43;
              v59 = v58;
              v58 = v58;
              goto LABEL_151;
            }
          }
        }

        v61 = v43;
        v59 = 0;
        v58 = 0;
LABEL_151:
        v62 = 0;
        while (v173 - 1 > v62)
        {
          v63 = v19;
          v64 = v178;
          v65 = v178[v59 + v62];
          if (v65 < 0)
          {
            if (__maskrune(v178[v59 + v62], 0x4000uLL))
            {
LABEL_159:
              v19 = v63;
              break;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v65 + 60) & 0x4000) != 0)
          {
            goto LABEL_159;
          }

          *(*(v61 + 136) + v62) = v64[(v58 + v62)];
          ++v62;
          v19 = v63;
          if (v62 == 511)
          {
            break;
          }
        }

        *(*(v61 + 136) + v62) = 0;
        v18 = a9;
        v66 = v156;
        if (!v178)
        {
          a8 = v155;
          v22 = a11;
          v13 = v154;
          goto LABEL_236;
        }

        v67 = v61;
        v13 = v154;
        a8 = v155;
        if (*v178)
        {
          v68 = v157;
          v69 = v157 > 1 && v162 == 0;
          v70 = v159;
          if (!v69)
          {
            v70 = 0;
          }

          if (v70 && v172 != 14)
          {
            v72 = HIWORD(v168);
            if (v28 < HIWORD(v168))
            {
              v73 = 0;
              v74 = 0;
              v75 = v28;
              v76 = &v169[8 * v28];
              while (v76[3] - v164 <= v171)
              {
                v78 = *v76;
                v76 += 8;
                v77 = v78;
                if (v78 == 8)
                {
                  v79 = v74 + 1;
                }

                else
                {
                  v79 = v74;
                }

                if (v77 == 26)
                {
                  ++v73;
                }

                else
                {
                  v74 = v79;
                }

                if (HIWORD(v168) == ++v75)
                {
                  goto LABEL_226;
                }
              }

              v72 = v75;
LABEL_226:
              if (v73)
              {
                v160 = v72;
                if (v74)
                {
                  v88 = *(v155 + 144 * v161 + 16);
                }

                else
                {
                  v88 = 200;
                }

                *(v155 + 144 * v161 + 16) = v88;
                v98 = *v154;
                if (strstr((*v154 + 152), "bet4") || strstr((v98 + 152), "bet5"))
                {
                  inited = InitFromWrdRec(a1, v67, v67 + 432, v99, v100, v101, v102, v103);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  inited = Init_WrdRec(a1, &v166, 1u);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  inited = InitFromWrdRec(a1, v166, v67, v105, v106, v107, v108, v109);
                  v18 = a9;
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v67 = 15;
                  *(v67 + 12) = 0x100000002;
                  *(v67 + 120) = 87;
                  v115 = v155 + 144 * (v163 + 1);
                  inited = InitFromWrdRec(a1, v166, v115, v110, v111, v112, v113, v114);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v115 = 4;
                  **(v115 + 136) = 35;
                  v121 = v155 + 144 * (v163 + 2);
                  inited = InitFromWrdRec(a1, v166, v121, v116, v117, v118, v119, v120);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  *v121 = 15;
                  v122 = v155 + 144 * v153;
                  *(v121 + 12) = *(v122 + 12);
                  *(v121 + 120) = *(v122 + 120);
                  v163 += 3;
                  Free_WrdRec(a1, v166, 1u);
                  *a10 += 2;
                  ++*a9;
                  v66 = 5;
                  v68 = v157;
                  LODWORD(v28) = v160;
                }

                else
                {
                  v18 = a9;
                  v68 = v157;
                }
              }
            }
          }

          v89 = v68 <= 1 || v66 == 0;
          v90 = v157;
          if (!v89)
          {
            v90 = v157 + 1;
          }

          v157 = v90;
        }

LABEL_235:
        v22 = a11;
LABEL_236:
        if (v172 != 13)
        {
          if (v172 != 14)
          {
            goto LABEL_240;
          }

          v162 = 1;
        }

        ++*(v13 + 7);
LABEL_240:
        v91 = 0;
        if (((*(a3 + 184))(a4, a5, v174, 8, &v168) & 0x80000000) == 0 && v168 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v174, 8, 1, &v167, &v173);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v91 = v167;
        }

        v92 = v163;
        *(a8 + 144 * v163 + 16) = v91;
        v93 = v164;
        if (v178 && *v178)
        {
          v180[0] = v178;
          skipUnvalidPhonemes(v19, v180);
          v94 = v180[0];
          if (*v180[0])
          {
            v95 = 0;
            do
            {
              ++v95;
              v180[0] = v94 + 1;
              skipUnvalidPhonemes(v19, v180);
              v94 = v180[0];
            }

            while (*v180[0]);
          }

          else
          {
            v95 = 0;
          }

          v157 += v95;
          v18 = a9;
          v92 = v163;
          v93 = v164;
        }

        v156 = v91;
        if (v28 < HIWORD(v168))
        {
          v28 = v28;
          v96 = &v169[8 * v28 + 3];
          while (1)
          {
            v97 = *v96;
            v96 += 8;
            if (v97 - v93 > v171)
            {
              break;
            }

            if (HIWORD(v168) == ++v28)
            {
              LODWORD(v28) = HIWORD(v168);
              break;
            }
          }
        }

        v161 = v92;
        v158 = v162;
LABEL_258:
        v21 = (*(a3 + 120))(a4, a5, v174, &v174);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_287;
        }

        v39 = v163 + 1;
        v40 = v174;
        if (!v174)
        {
          goto LABEL_272;
        }
      }
    }

    LOWORD(v39) = 0;
    v161 = 0;
  }

LABEL_272:
  if (!*v18)
  {
LABEL_295:
    if (v39)
    {
      v148 = v39 - 1;
      while (1)
      {
        v149 = v148;
        v150 = *(a8 + 144 * v148);
        if ((v150 - 9) < 6 || v150 == 4)
        {
          break;
        }

        if (v150 != 15)
        {
          --v148;
          if (v149)
          {
            continue;
          }
        }

        goto LABEL_305;
      }

      *(a8 + 144 * v148 + 120) = 83;
    }

LABEL_305:
    *v22 = v39;
    return v21;
  }

  v123 = v39;
  v124 = *v13;
  if (!strstr((*v13 + 152), "bet4") && !strstr((v124 + 152), "bet5") || v28 >= HIWORD(v168))
  {
LABEL_294:
    LOWORD(v39) = v123;
    goto LABEL_295;
  }

  v130 = v28;
  v131 = &v169[8 * v28];
  v132 = -1;
  LOWORD(v39) = v123;
  do
  {
    v133 = *v131;
    v131 += 8;
    if (v133 == 26)
    {
      v132 = v130;
    }

    ++v130;
  }

  while (HIWORD(v168) != v130);
  if (v132 == -1)
  {
    goto LABEL_295;
  }

  v134 = v123 + 1;
  v135 = a8 + 144 * (v123 - 1);
  while (v134 - 2 > v161)
  {
    v21 = InitFromWrdRec(a1, v135, a8 + 144 * v134--, v125, v126, v127, v128, v129);
    v135 -= 144;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  *(a8 + 144 * v161 + 16) = 0;
  inited = Init_WrdRec(a1, &v166, 1u);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v142 = a8 + 144 * v161;
  inited = InitFromWrdRec(a1, v166, v142 + 144, v137, v138, v139, v140, v141);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v142 + 144) = 15;
  *(v142 + 156) = 0x100000000;
  *(v142 + 264) = 83;
  v21 = InitFromWrdRec(a1, v166, v142 + 288, v143, v144, v145, v146, v147);
  if ((v21 & 0x80000000) == 0)
  {
    *(v142 + 288) = 4;
    *(v142 + 304) = 200;
    **(v142 + 424) = 35;
    ++v167;
    ++*a10;
    ++*a9;
    v123 += 2;
    Free_WrdRec(a1, v166, 1u);
    goto LABEL_294;
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

uint64_t usextract_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v14 = *a6;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 4;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  __src = 0;
  v66 = 0;
  *a7 = 0;
  v15 = (*(a3 + 272))(a4, a5, 114, 3, 0, 0);
  if ((v15 & 0x80000000) != 0 || (v15 = (*(a3 + 104))(a4, a5, 1, 0, &v74 + 2), (v15 & 0x80000000) != 0))
  {
    v17 = v15;
    goto LABEL_14;
  }

  v17 = (*(a3 + 168))(a4, a5, HIWORD(v74), 3, 1, a7, &v73);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v74), 1, &v66) & 0x80000000) != 0 || v66 != 1)
  {
    LODWORD(v23) = *(a6 + 3520);
  }

  else
  {
    v17 = (*(a3 + 176))(a4, a5, HIWORD(v74), 1, &__src, &v73);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v18 = heap_Alloc(*(a1 + 8), 32 * v73);
    *(a6 + 3512) = v18;
    if (!v18)
    {
      goto LABEL_46;
    }

    memcpy(v18, __src, 32 * v73);
    LODWORD(v23) = v73;
    *(a6 + 3520) = v73;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      while (marker_copyParts(*(a6 + 3512) + v24, *(a1 + 8), *(a6 + 3512) + v24))
      {
        ++v25;
        v23 = *(a6 + 3520);
        v24 += 32;
        if (v25 >= v23)
        {
          goto LABEL_18;
        }
      }

      if (v25)
      {
        v38 = 0;
        do
        {
          marker_freeParts((*(a6 + 3512) + 32 * v38++), *(a1 + 8));
        }

        while (v25 > v38);
      }

      heap_Free(*(a1 + 8), *(a6 + 3512));
      *(a6 + 3512) = 0;
LABEL_46:
      log_OutPublic(*(a1 + 32), a2, 19000, 0, v19, v20, v21, v22, v62);
      LOWORD(v26) = 0;
      v17 = 2229280778;
      goto LABEL_15;
    }
  }

LABEL_18:
  v28 = v23 ? *(*(a6 + 3512) + 12) : 0;
  if (((*(a3 + 184))(a4, a5, HIWORD(v74), 0, &v66) & 0x80000000) != 0 || v66 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v74), 4, &v66) & 0x80000000) != 0 || v66 != 1)
    {
      goto LABEL_30;
    }

    v29 = (*(a3 + 176))(a4, a5, HIWORD(v74), 4, &v75, &v73);
  }

  else
  {
    v29 = (*(a3 + 176))(a4, a5, HIWORD(v74), 0, &v75, &v73);
  }

  v17 = v29;
  if ((v29 & 0x80000000) != 0)
  {
LABEL_14:
    LOWORD(v26) = 0;
    goto LABEL_15;
  }

  if (v73 <= 1u)
  {
    v75 = 0;
    goto LABEL_36;
  }

LABEL_30:
  if (!v75)
  {
LABEL_36:
    v34 = *(a6 + 3520);
    if (v34)
    {
      v35 = *(a6 + 3512);
      while (1)
      {
        v36 = *v35;
        v35 += 8;
        v37 = v36 - 8;
        if (v36 - 8) < 0x16 && ((0x270F01u >> v37))
        {
          break;
        }

        if (!--v34)
        {
          goto LABEL_122;
        }
      }

      LOWORD(v34) = 2;
    }

    goto LABEL_122;
  }

  v30 = *(a6 + 3520);
  if (v30)
  {
    v31 = 0;
    v32 = (*(a6 + 3512) + 12);
    while (1)
    {
      v33 = *v32;
      v32 += 8;
      if (v33 != v28)
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_48;
      }
    }

    LODWORD(v30) = v31;
  }

LABEL_48:
  HIDWORD(v70) = v30;
  v39 = (*(a3 + 152))(a4, a5, 2, HIWORD(v74), &v66);
  v40 = 3;
  if (v39 < 0 || !v66)
  {
LABEL_121:
    LOWORD(v34) = v40 + *(a6 + 14);
LABEL_122:
    *(a6 + 10) = v34;
    *(a6 + 3524) = *(v14 + 3578) * v34;
    return v17;
  }

  v17 = (*(a3 + 104))(a4, a5, 2, HIWORD(v74), &v74);
  if ((v17 & 0x80000000) != 0)
  {
    LOWORD(v26) = 1;
    goto LABEL_15;
  }

  v41 = v74;
  if (!v74)
  {
    v40 = 3;
    goto LABEL_121;
  }

  v64 = 0;
  v26 = 1;
  while (1)
  {
    v42 = (*(a3 + 168))(a4, a5, v41, 0, 1, &v72, &v73);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    if ((v72 - 9) >= 6 && v72 != 4)
    {
      goto LABEL_106;
    }

    v63 = v72;
    v44 = v64;
    if (v72 != 12)
    {
      v44 = 0;
    }

    v65 = v44;
    v42 = usextract_readFromPos(a3, a4, a5, v74, &v69);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v73 = 0;
    if (((*(a3 + 184))(a4, a5, v74, 3, &v66) & 0x80000000) == 0 && v66 == 1)
    {
      v42 = (*(a3 + 176))(a4, a5, v74, 3, &v71, &v73);
      if ((v42 & 0x80000000) != 0)
      {
        break;
      }
    }

    if (v73 <= 1u)
    {
      v45 = v72;
      if (v72 != 14)
      {
        v71 = 0;
        goto LABEL_92;
      }

      v46 = "M";
      v71 = "M";
LABEL_69:
      if (*v46)
      {
        v47 = *(a6 + 3520);
        v48 = v47 >= v30;
        v49 = v47 - v30;
        if (v49 != 0 && v48)
        {
          v50 = (*(a6 + 3512) + 32 * v30);
          while (v50[3] - v28 <= v69)
          {
            if (*v50 == 26)
            {
              v51 = v65;
              if (v63 == 14)
              {
                v51 = v64;
              }

              if (!v51)
              {
                v53 = v26 > 1;
                v52 = v72 != 14;
                v54 = v70;
                if (v72 != 14 && v70 == 0 && v26 >= 2)
                {
                  v54 = 5;
                  LODWORD(v70) = 5;
                  v53 = 1;
                  v68 = 1;
                  v52 = 1;
                }

                goto LABEL_82;
              }

              break;
            }

            v50 += 8;
            if (!--v49)
            {
              break;
            }
          }
        }

        v52 = 0;
        v53 = v26 > 1;
        v54 = v70;
LABEL_82:
        if (v54)
        {
          v55 = !v53;
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          usextract_insertPause(0, a6, v54, v68, v26++, v28, v69, &v70 + 1);
        }

        if (v52)
        {
          v56 = *a6;
          if (strstr((*a6 + 152), "bet4") || strstr((v56 + 152), "bet5"))
          {
            usextract_insertPause(0, a6, 5u, 1, v26++, v28, v69, &v70 + 1);
          }
        }
      }

      goto LABEL_91;
    }

    v46 = v71;
    if (v71)
    {
      goto LABEL_69;
    }

LABEL_91:
    v45 = v72;
LABEL_92:
    if (v45 == 13)
    {
      goto LABEL_95;
    }

    if (v45 == 14)
    {
      v65 = 1;
LABEL_95:
      ++*(a6 + 14);
    }

    v42 = usextract_readSilDur(a3, a4, a5, v74, &v70, &v68);
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v57 = *(a6 + 3520);
    LODWORD(v30) = HIDWORD(v70);
    if (HIDWORD(v70) < v57)
    {
      v58 = (*(a6 + 3512) + 32 * HIDWORD(v70) + 12);
      while (1)
      {
        v59 = *v58;
        v58 += 8;
        if (v59 - v28 > v69)
        {
          break;
        }

        LODWORD(v30) = v30 + 1;
        if (v57 == v30)
        {
          LODWORD(v30) = *(a6 + 3520);
          break;
        }
      }
    }

    HIDWORD(v70) = v30;
    if (v71 && *v71)
    {
      v26 += usextract_nrOfValidPhonemes(v14, v71);
    }

    v64 = v65;
LABEL_106:
    v17 = (*(a3 + 120))(a4, a5, v74, &v74);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v41 = v74;
    if (!v74)
    {
      v40 = v26 + 2;
      goto LABEL_121;
    }
  }

  v17 = v42;
LABEL_15:
  *(a6 + 10) = v26;
  *(a6 + 3524) = *(v14 + 3578) * v26;
  usextract_ProcessEnd(a1, v16, a6);
  return v17;
}

uint64_t usextract_readFromPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 1, &v12 + 2);
  result = 0;
  if ((v10 & 0x80000000) == 0 && HIWORD(v12) == 1)
  {
    return (*(a1 + 168))(a2, a3, a4, 1, 1, a5, &v12);
  }

  return result;
}

void *usextract_insertPause(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, _DWORD *a8)
{
  v15 = *a2;
  v16 = strstr((*a2 + 152), "bet4");
  v17 = strstr((v15 + 152), "bet5");
  result = strstr((v15 + 152), "bet6");
  v19 = result;
  if (a1 && *(a1 + 674) < a5)
  {
    result = memset((*(a2 + 13) + *(a1 + 674)), 4, (a5 - *(a1 + 674)) & ~((a5 - *(a1 + 674)) >> 31));
  }

  v20 = *a8;
  v21 = a2[880];
  v22 = v21 - v20;
  if (v21 <= v20)
  {
    v23 = 0;
    v25 = a3;
  }

  else
  {
    v23 = 0;
    v24 = (*(a2 + 439) + 32 * v20);
    v25 = a3;
    do
    {
      if (v24[3] - a6 > a7)
      {
        break;
      }

      v26 = *v24;
      v24 += 8;
      if (v26 == 8)
      {
        ++v23;
      }

      --v22;
    }

    while (v22);
  }

  if (a4)
  {
    v27 = 1;
  }

  else
  {
    v27 = (v17 | v19) == 0;
  }

  v28 = !v27;
  if (v16)
  {
    v29 = v23 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v28 = 1;
  }

  if (v25 >= 0xFFFF)
  {
    v30 = -1;
  }

  else
  {
    v30 = v25;
  }

  if (v23)
  {
    v31 = *(a2 + 439);
    do
    {
      v32 = *(v31 + 32 * v20) == 8;
      if (a1)
      {
        ++*(*(a2 + 225) + 2 * a5);
      }

      LODWORD(v20) = v20 + 1;
      *a8 = v20;
      v23 -= v32;
    }

    while (v23);
  }

  if (a1)
  {
    ++*(a1 + 720);
    *(a1 + 716) = 0;
    *(a1 + 682) = a5;
    *(*(a2 + 4) + a5) = 35;
    if (*(a1 + 666) == a5)
    {
      *(a1 + 666) = a5 + 1;
    }

    if (*(a1 + 668) == a5)
    {
      *(a1 + 668) = a5 + 1;
    }

    v33 = *(a2 + 72);
    if (v33)
    {
      *(v33 + a5) = *(v33 + a5 - 1);
    }

    if (v28)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    *(*(a2 + 223) + 2 * a5) = v34;
    *(*(a2 + 14) + a5 - 1) = 3;
    *(*(a2 + 13) + a5) = 3;
    *(a1 + 12) = 3;
    *(*(a2 + 15) + a5) = *(a1 + 14);
    *(a1 + 15) = 0;
  }

  return result;
}

uint64_t usextract_readSilDur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v16 = 0;
  *a5 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v15 = 0;
  __s1 = 0;
  v12 = 0;
  if (((*(a1 + 184))(a2, a3, a4, 8, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
  {
    v12 = (*(a1 + 168))(a2, a3, a4, 8, 1, &v15, &v16);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    *a5 = v15;
  }

  if (a6)
  {
    if (((*(a1 + 184))(a2, a3, a4, 18, &v16 + 2) & 0x80000000) == 0 && HIWORD(v16) == 1)
    {
      v12 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v16);
      if ((v12 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v12;
}

uint64_t usextract_nrOfValidPhonemes(uint64_t a1, unsigned __int8 *a2)
{
  v6 = a2;
  skipUnvalidPhonemes(a1, &v6);
  v3 = v6;
  if (*v6)
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 = v3 + 1;
      skipUnvalidPhonemes(a1, &v6);
      v3 = v6;
    }

    while (*v6);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t usextract_ProcessEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 3512);
  if (v3)
  {
    if (*(a3 + 3520))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        marker_freeParts((*(a3 + 3512) + v6), *(a1 + 8));
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a3 + 3520));
      v3 = *(a3 + 3512);
    }

    heap_Free(*(a1 + 8), v3);
    *(a3 + 3512) = 0;
  }

  return 0;
}

uint64_t usextract_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v13 = 0;
  v409 = *MEMORY[0x1E69E9840];
  v14 = *a6;
  v385 = 0;
  v384 = 0;
  v383 = 4;
  v381 = 0;
  __s = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v15 = *(a6 + 10);
  v16 = v15 & ~(v15 >> 31);
  v377 = 0u;
  memset(v376, 0, sizeof(v376));
  v375 = 0u;
  memset(v396, 0, 448);
  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  v369 = *(v14 + 2744);
  v374 = 0;
  LODWORD(v375) = 0;
  v376[3] = 0;
  *&v377 = 0x100000000;
  WORD4(v377) = -1;
  v372 = 0;
  v373 = 0;
  v17 = a6 + 16;
  *(&v375 + 1) = 0;
  v376[0] = 0;
  v18 = &word_1C37B13A4;
  v19 = 9;
  v20 = 33;
  LOWORD(v376[1]) = 0;
  do
  {
    *(&v392 + v19 + 1) = *(v18 - 2);
    if (*(v17 + 8 * v19))
    {
      *(&v396[9] + v13++ + 6) = v19;
    }

    v21 = *v18;
    v18 += 2;
    v19 = v21;
    --v20;
  }

  while (v20);
  *(&v396[9] + v13 + 6) = 218;
  BYTE6(v394) = 0;
  v22 = *(v14 + 3336);
  v370 = v14;
  if (v22)
  {
    if (*v22)
    {
      v23 = 0;
      v24 = v22 + 1;
        ;
      }

      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v397 = heap_Alloc(*(a1 + 8), v26);
    if (!v397)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v397 = 0;
  }

  LOBYTE(v392) = 0;
  v407 = 0;
  v408 = 0;
  v403 = 0;
  v404 = 0;
  v405 = 0;
  v406 = -1;
  v398 = xmmword_1C37B1380;
  __len = 0xFFFF;
  if (v15 <= 1)
  {
    log_OutPublic(*(v12 + 32), a2, 19010, 0, a5, a6, a7, a8, v348);
    v27 = 0;
    v28 = 0;
    v29 = 2229280785;
    goto LABEL_573;
  }

  if (*(a6 + 14) >= 1)
  {
    v30 = heap_Alloc(*(v12 + 8), 500);
    *(&v375 + 1) = v30;
    if (!v30)
    {
      goto LABEL_23;
    }

    *v30 = 0;
    v31 = heap_Alloc(*(v12 + 8), 500);
    v376[0] = v31;
    if (!v31)
    {
      goto LABEL_23;
    }

    *v31 = 0;
  }

  if (!*(a6 + 456))
  {
    v36 = v12;
    v363 = 0;
    v359 = 0;
    v366 = 0;
    goto LABEL_25;
  }

  v366 = heap_Calloc(*(v12 + 8), 1, (v16 + 3));
  if (!v366)
  {
LABEL_23:
    v29 = 2229280778;
    log_OutPublic(*(v12 + 32), a2, 19000, 0, a5, a6, a7, a8, v348);
    v27 = 0;
    v28 = 0;
    goto LABEL_573;
  }

  v359 = v16 + 2;
  v363 = heap_Alloc(*(v12 + 8), (v16 + 2));
  if (!v363)
  {
    v29 = 2229280778;
    log_OutPublic(*(v12 + 32), a2, 19000, 0, v32, v33, v34, v35, v348);
    v27 = 0;
    v28 = v366;
    goto LABEL_573;
  }

  v36 = v12;
LABEL_25:
  v37 = a3;
  v368 = a5;
  v38 = v36;
  if (log_HasTraceTuningDataSubscriber(*(v36 + 32)))
  {
    log_OutTraceTuningData(*(v38 + 32), 301, "%s%s %s%.*s %s%s", v39, v40, v41, v42, v43, "BEG");
  }

  v364 = v38;
  SentType = usextract_GetSentType(v38, a2, v370, "\\TS\", 0, 0, &v379);
  LOBYTE(v392) = SentType;
  BYTE14(v393) = SentType;
  memset(*(a6 + 184), 4, v16);
  memset(*(a6 + 96), 3, v16);
  memset(*(a6 + 248), SentType, v16);
  if (*(v370 + 2604) == 2)
  {
    v45 = 87;
  }

  else
  {
    v45 = 88;
  }

  memset(*(a6 + 48), v45, v16);
  v46 = *(a6 + 288);
  if (v46)
  {
    memset(v46, 1, v16);
  }

  v47 = *(a6 + 312);
  v48 = v368;
  v49 = v37;
  if (v47)
  {
    memset(v47, 1, v16);
  }

  v12 = v364;
  if (!*(v370 + 2516))
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = *a6;
    LODWORD(v54) = *(*a6 + 2966);
    if (v16 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v15 & ~(v15 >> 31);
    }

    do
    {
      if (v54)
      {
        v56 = 0;
        v57 = 0;
        do
        {
          v58 = *(v53 + 2968) + v56;
          v59 = *(v58 + 4);
          v60 = v51 * *(*a6 + 2966);
          *(*(a6 + 3568) + 4 * (v57 + v60)) = v59;
          *(*(a6 + 3576) + 4 * (v57 + v60)) = v59;
          *(*(a6 + 3600) + v60 + v57++) = *(v58 + 10);
          v54 = *(v53 + 2966);
          v56 += 32;
        }

        while (v57 < v54);
      }

      v61 = *(v53 + 3360);
      if (*(v53 + 3360))
      {
        v62 = (*(v53 + 3368) + 4);
        v63 = v50 * *(*a6 + 3360);
        v64 = (*(a6 + 3592) + v63);
        v65 = (*(a6 + 3584) + v63);
        do
        {
          v66 = *v62;
          v62 += 3;
          *v65++ = v66;
          *v64++ = v66;
          --v61;
        }

        while (v61);
      }

      ++v52;
      ++v51;
      v50 += 4;
    }

    while (v52 != v55);
  }

  **(a6 + 104) = 1;
  *(*(a6 + 104) + 1) = 5;
  **(a6 + 120) = 1;
  *(*(a6 + 120) + 1) = 1;
  v67 = a4;
  WordPrm = (*(v49 + 104))(a4, v368, 1, 0, &v385 + 2);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v365 = v49;
  if (*(a6 + 3520))
  {
    v69 = *(a6 + 3512);
    v70 = *(v69 + 12);
    v71 = *(a6 + 3520);
    v72 = strstr((*a6 + 152), "bet4");
    v73 = v71;
    v12 = v364;
    v74 = v70;
    v48 = v368;
    v67 = a4;
    v75 = 0;
    v76 = 0;
    v77 = *(a6 + 1800);
    v78 = *v77;
    v79 = (v69 + 24);
    v49 = v365;
    while (1)
    {
      if (*(v79 - 6) == 8)
      {
        v75 += *v79;
      }

      *v77 = ++v78;
      if (v73 - 1 == v76)
      {
        break;
      }

      ++v76;
      v80 = v79[5];
      v79 += 8;
      if (v80 != v74)
      {
        goto LABEL_56;
      }
    }

    LODWORD(v76) = v73;
LABEL_56:
    v360 = v74;
    HIDWORD(v381) = v76;
  }

  else
  {
    v72 = strstr((*a6 + 152), "bet4");
    v360 = 0;
    v75 = 0;
  }

  **(a6 + 32) = 35;
  if (v75 >= 0xFFFF)
  {
    LOWORD(v75) = -1;
  }

  if (v72)
  {
    LOWORD(v75) = 0;
  }

  **(a6 + 1784) = v75;
  LODWORD(v381) = 0;
  v391 = 0;
  v389 = 0;
  v388 = 4;
  v387 = 0;
  v386 = 0;
  __s1 = 0;
  WordPrm = (*(v49 + 104))(v67, v48, 1, 0, &v391 + 2);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v355 = a2;
  if (((*(v49 + 152))(v67, v48, 2, HIWORD(v391), &v387) & 0x80000000) != 0 || !v387)
  {
    goto LABEL_108;
  }

  WordPrm = (*(v49 + 104))(v67, v48, 2, HIWORD(v391), &v391);
  if ((WordPrm & 0x80000000) != 0)
  {
LABEL_570:
    v29 = WordPrm;
    goto LABEL_571;
  }

  v81 = v391;
  if (!v391)
  {
    goto LABEL_108;
  }

  v361 = 0;
  LOWORD(v82) = 0;
  do
  {
    if (!v82)
    {
LABEL_85:
      v89 = v67;
      v90 = v368;
      goto LABEL_86;
    }

    v83 = (*(v49 + 168))(v67, v368, v81, 0, 1, &v388, &v389 + 2);
    if ((v83 & 0x80000000) != 0)
    {
      v29 = v83;
      v48 = v368;
      goto LABEL_105;
    }

    __s1 = 0;
    if (((*(v49 + 184))(v67, v368, v82, 14, &v387) & 0x80000000) == 0 && v387 == 1)
    {
      v84 = (*(v49 + 176))(v67, v368, v82, 14, &__s1, &v389 + 2);
      if ((v84 & 0x80000000) != 0)
      {
        v29 = v84;
        goto LABEL_103;
      }
    }

    if ((v388 - 9) < 6)
    {
      goto LABEL_73;
    }

    if (v388 != 15)
    {
      if (v388 != 4)
      {
        goto LABEL_85;
      }

LABEL_73:
      v85 = __s1;
      if (!__s1)
      {
        goto LABEL_85;
      }

      v386 = __s1;
      do
      {
        if (!strncmp(__s1, "BNDSHAPE", 8uLL))
        {
          v86 = hlp_NLUStrStrip(v85);
        }

        else
        {
          v86 = hlp_NLUStrNext(v85);
        }

        v85 = v86;
        v386 = v86;
      }

      while (v86);
      hlp_NLUStrJoin(__s1, "");
      v87 = (strlen(__s1) + 1);
      v88 = v67;
      v89 = v67;
      v90 = v368;
      (*(v49 + 160))(v88, v368, v82, 14, v87, __s1, &v389);
      goto LABEL_86;
    }

    if (__s1)
    {
      if (hlp_NLUStrFind(__s1, "BNDSHAPE", &v386, &v389 + 1))
      {
        goto LABEL_85;
      }

      v92 = strlen(__s1);
      v93 = heap_Realloc(*(v12 + 8), v361, v92 + 13);
      v386 = v93;
      if (!v93)
      {
        goto LABEL_731;
      }

      v98 = v93;
      v99 = strcpy(v93, __s1);
      hlp_NLUStrJoin(v99, "BNDSHAPE:L%");
      v100 = (strlen(v98) + 1);
      v101 = v67;
      v89 = v67;
      v90 = v368;
      (*(v49 + 160))(v101, v368, v82, 14, v100, v98, &v389);
      v361 = v98;
    }

    else
    {
      v91 = v67;
      v89 = v67;
      v90 = v368;
      (*(v49 + 160))(v91, v368, v82, 14, 12, "BNDSHAPE:L%", &v389);
    }

LABEL_86:
    v82 = v391;
    v29 = (*(v49 + 120))(v89, v90, v391, &v391);
    if ((v29 & 0x80000000) != 0)
    {
      v48 = v368;
      v67 = a4;
      v49 = v365;
      goto LABEL_105;
    }

    v81 = v391;
    v67 = a4;
    v49 = v365;
  }

  while (v391);
  if (!v82)
  {
    goto LABEL_103;
  }

  __s1 = 0;
  v48 = v368;
  if (((*(v365 + 184))(a4, v368, v82, 14, &v387) & 0x80000000) != 0 || v387 != 1 || (v29 = (*(v365 + 176))(a4, v368, v82, 14, &__s1, &v389 + 2), (v29 & 0x80000000) == 0))
  {
    if (__s1)
    {
      if (hlp_NLUStrFind(__s1, "BNDSHAPE", &v386, &v389 + 1))
      {
        goto LABEL_105;
      }

      v102 = strlen(__s1);
      v103 = heap_Realloc(*(v12 + 8), v361, v102 + 13);
      v386 = v103;
      if (v103)
      {
        v104 = v103;
        v105 = strcpy(v103, __s1);
        hlp_NLUStrJoin(v105, "BNDSHAPE:L%");
        v106 = (strlen(v104) + 1);
        (*(v365 + 160))(a4, v368, v82, 14, v106, v104, &v389);
        v49 = v365;
        v107 = v104;
        v48 = v368;
        v67 = a4;
        goto LABEL_106;
      }

LABEL_731:
      v29 = 2229280778;
      log_OutPublic(*(v12 + 32), v355, 19000, 0, v94, v95, v96, v97, v348);
LABEL_103:
      v48 = v368;
      goto LABEL_105;
    }

    (*(v365 + 160))(a4, v368, v82, 14, 12, "BNDSHAPE:L%", &v389);
  }

LABEL_105:
  v107 = v361;
  if (!v361)
  {
    goto LABEL_107;
  }

LABEL_106:
  heap_Free(*(v12 + 8), v107);
LABEL_107:
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_571;
  }

LABEL_108:
  v111 = 0;
  LOWORD(v112) = 1;
  if (((*(v49 + 152))(v67, v48, 2, HIWORD(v385), &v379 + 2) & 0x80000000) != 0 || !HIWORD(v379))
  {
LABEL_589:
    if (HIDWORD(v374))
    {
      usextract_finishPrompt(&v372, v364, v355, a6, v112, v108, v109, v110);
    }

    if (*(a6 + 576))
    {
      LOWORD(v302) = v112 - 1;
      do
      {
        *(*(a6 + 576) + v302) = 5;
        v302 = (v302 - 1);
      }

      while (v302 >= 1 && *(*(a6 + 32) + v302) == 35);
    }

    v303 = WORD3(v398);
    v304 = SWORD4(v398);
    v305 = SWORD4(v398);
    if (SWORD4(v398) < v112)
    {
      memset((*(a6 + 120) + SWORD4(v398)), 3, (v112 - SWORD4(v398)) & ~((v112 - SWORD4(v398)) >> 31));
      if (*(a6 + 592))
      {
        v306 = v305;
        do
        {
          *(*(a6 + 592) + v306++) = 5;
        }

        while (v112 != v306);
      }
    }

    v307 = v303 != v305;
    if (v304 < v112 && (v305 & 0x80000000) == 0 && *(a6 + 544))
    {
      v308 = v305;
      do
      {
        v309 = *(a6 + 544);
        if (*(v309 + v308) > v307)
        {
          *(v309 + v308) = v307;
        }

        ++v308;
      }

      while (v112 != v308);
    }

    if (v305 < v112 && (v305 & 0x80000000) == 0 && *(a6 + 1440))
    {
      do
      {
        v310 = *(a6 + 1440);
        if (*(v310 + v305) > v307)
        {
          *(v310 + v305) = v307;
        }

        ++v305;
      }

      while (v112 != v305);
    }

    v311 = SWORD5(v398);
    if (SWORD5(v398) < v112)
    {
      v312 = WORD3(v398);
      v313 = SWORD5(v398);
      memset((*(a6 + 104) + SWORD5(v398)), 5, (v112 - SWORD5(v398)) & ~((v112 - SWORD5(v398)) >> 31));
      if (*(a6 + 608))
      {
        v314 = v311;
        do
        {
          *(*(a6 + 608) + v314++) = 5;
        }

        while (v112 != v314);
      }

      v315 = v312 != v311;
      if (*(a6 + 560))
      {
        v316 = v311;
        do
        {
          *(*(a6 + 560) + v316++) = v315;
        }

        while (v112 != v316);
      }

      if (*(a6 + 1496))
      {
        do
        {
          *(*(a6 + 1496) + v313++) = v315;
        }

        while (v112 != v313);
      }
    }

    usextract_updateLastStrAcc(a6, v112, SWORD6(v398), 1u);
    usextract_updateLastStrAccShp(a6, v112, SHIWORD(v398), 6u, 1u);
    if (SHIWORD(__len) >= 1)
    {
      memset(*(a6 + 136), 1, SHIWORD(__len));
    }

    v317 = *a6;
    v318 = strstr((*a6 + 152), "bet4");
    v319 = strstr((v317 + 152), "bet5");
    v324 = HIDWORD(v381);
    v325 = *(a6 + 3520);
    v28 = v366;
    v27 = v363;
    if (v318 | v319 && HIDWORD(v381) < v325)
    {
      v326 = HIDWORD(v381) + 1;
      v327 = (*(a6 + 3512) + 32 * HIDWORD(v381));
      do
      {
        v329 = *v327;
        v327 += 8;
        v328 = v329;
      }

      while (v329 != 26 && v326++ < v325);
      if (v328 == 26)
      {
        *(*(a6 + 32) + v112) = 35;
        if (*(a6 + 576))
        {
          LOWORD(v331) = v112;
          do
          {
            *(*(a6 + 576) + v331) = 5;
            v331 = (v331 - 1);
          }

          while (v331 >= 1 && *(*(a6 + 32) + v331) == 35);
        }

        *(*(a6 + 104) + v112) = 5;
        *(*(a6 + 120) + v112) = 3;
        *(*(a6 + 248) + v112) = *(*(a6 + 248) + v112 - 1);
        LOWORD(v112) = v112 + 1;
        LODWORD(v325) = *(a6 + 3520);
      }
    }

    if (v324 >= v325)
    {
      v332 = 0;
      v334 = v112;
    }

    else
    {
      v332 = 0;
      v333 = *(a6 + 1800);
      v334 = v112;
      v335 = *(v333 + 2 * v112);
      v336 = v325 - v324;
      v337 = (*(a6 + 3512) + 32 * v324);
      do
      {
        if (*v337 == 8)
        {
          v332 += v337[6];
        }

        *(v333 + 2 * v112) = ++v335;
        v337 += 8;
        --v336;
      }

      while (v336);
      HIDWORD(v381) = v325;
    }

    *(*(a6 + 32) + v334) = 35;
    if (*(a6 + 576))
    {
      LOWORD(v338) = v112;
      do
      {
        *(*(a6 + 576) + v338) = 5;
        v338 = (v338 - 1);
      }

      while (v338 >= 1 && *(*(a6 + 32) + v338) == 35);
    }

    if (v332 >= 0xFFFF)
    {
      v339 = -1;
    }

    else
    {
      v339 = v332;
    }

    if (v318)
    {
      v339 = 0;
    }

    *(*(a6 + 1784) + 2 * v334) = v339;
    *(*(a6 + 104) + v334) = 5;
    *(*(a6 + 120) + v334) = 3;
    *(*(a6 + 248) + v334) = *(*(a6 + 248) + v334 - 1);
    v340 = (v112 + 1);
    v341 = *(a6 + 456);
    if (v341 && *(*(a6 + 32) + (v112 + 1)) == v366[v111])
    {
      *(v341 + (v112 + 1)) = v363[v111];
    }

    if (*(a6 + 10) >= v340)
    {
      *(a6 + 10) = v340;
      usextract_setUnknownOnPauses(a6);
      v342 = v370;
      v12 = v364;
      if ((*(v370 + 3104) & 0x80000000) == 0 && (*(v370 + 3208) & 0x80000000) == 0)
      {
        usextract_setNextDifferentiator(v370, a6);
      }

      if ((*(v370 + 3092) & 0x80000000) != 0)
      {
        v343 = BYTE14(v393);
        if (BYTE14(v393) == 2 && WORD5(v398) == 1 && WORD4(v398) == 1)
        {
          v343 = 0;
          BYTE14(v393) = 0;
        }

        memset(*(a6 + 248), v343, v340 & ~(v340 >> 31));
        v342 = v370;
      }

      usextract_setPrePostSylBnd(a6);
      if (!*(v342 + 2516) && *(v370 + 2604) != 2)
      {
        v344 = *(a6 + 10);
        if (v344 >= 1)
        {
          v345 = 0;
          do
          {
            v346 = *(*(a6 + 32) + v345);
            if (v346 != 35)
            {
              *(*(a6 + 48) + v345) = *(v370 + 1373 + *(v370 + 2144 + v346));
              LOWORD(v344) = *(a6 + 10);
            }

            ++v345;
          }

          while (v345 < v344);
        }
      }

      usextract_setWordPhrs(a6);
      usextract_setFineSylPosInPhrs(a6);
      usextract_finalizeSylType(a6);
      usextract_setSylPos(a6, SHIWORD(__len));
      usextract_finalizeNrSylInPhrs(a6);
      usextract_finalizePhnCntSyl(a6);
      if (*(a6 + 576))
      {
        if (!*(a6 + 1416) || !*(a6 + 1408) || (usextract_setNrSylInIP4(a6), *(a6 + 576)))
        {
          if (!*(a6 + 1456) || (usextract_setSylNrInIP4(a6), usextract_finalizeFineSylPosInIP4(a6), *(a6 + 576)))
          {
            if (!*(a6 + 1432) || !*(a6 + 1424) || !*(a6 + 1464) || !*(a6 + 1472) || (usextract_setSylStressedPrm(a6), *(a6 + 576)))
            {
              if (!*(a6 + 1400) || !*(a6 + 1480) || !*(a6 + 1488) || (usextract_setWrdBndTone(a6), *(a6 + 576)))
              {
                if (!*(a6 + 1504) || !*(a6 + 1512) || (usextract_setIP4PosInSent(a6), *(a6 + 576)))
                {
                  if (*(a6 + 1432))
                  {
                    if (!*(a6 + 1528) || !*(a6 + 1544) || !*(a6 + 1560) || !*(a6 + 1576) || (usextract_setRhythmRelated(a6), *(a6 + 576)))
                    {
                      if (*(a6 + 1432) && *(a6 + 1520) && *(a6 + 1536) && *(a6 + 1552) && *(a6 + 1568))
                      {
                        usextract_setRhythmRelatedBackward(a6);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (*(a6 + 568) && *(a6 + 1432) && *(a6 + 1584))
      {
        usextract_finalizeFineSylBndShape(a6);
      }

      if (*(a6 + 1384))
      {
        usextract_setSylIndexInWordFromStart(a6);
      }

      if (*(a6 + 1392))
      {
        usextract_setSylIndexInWordFromEnd(a6);
      }

      if (*(a6 + 304))
      {
        usextract_setSylPosInWordRelEnd(a6);
      }

      if (*(a6 + 296))
      {
        usextract_setSylPosInSenRelStr(a6, __len, v406);
      }

      usextract_setPitchAndDurFromCart(v370, a6);
      if ((*(v370 + 3392) & 0x80000000) == 0 || (*(v370 + 3396) & 0x80000000) == 0)
      {
        usextract_setSylTrans(v370, a6);
      }

      if (*(v370 + 2560))
      {
        usextract_setSylChunk(a6);
      }

      v347 = usextract_applyGenericContextRules(v370, a6);
      if ((v347 & 0x80000000) != 0)
      {
        v29 = v347;
      }

      else
      {
        if (*(a6 + 14) >= 1 && !strstr((*a6 + 152), "bet5"))
        {
          usextract_removePromptColumns(a6);
        }

        usextract_setMNXfeatures(v364, v355, a6);
        if (log_GetLogLevel(*(v364 + 32)) >= 6)
        {
          usextract_logAllFeatures(v364, v355, a6);
        }

        v29 = 0;
      }
    }

    else
    {
      v12 = v364;
      log_OutPublic(*(v364 + 32), v355, 19011, "%s%d%s%d", v320, v321, v322, v323, "allocated");
      v29 = 2229281030;
    }

    goto LABEL_573;
  }

  v113 = v368;
  v114 = (*(v49 + 104))(v67, v368, 2, HIWORD(v385), &v385);
  if ((v114 & 0x80000000) != 0)
  {
    v29 = v114;
    v28 = v366;
    v27 = v363;
    v12 = v364;
    goto LABEL_573;
  }

  v354 = 0;
  v115 = 0;
  v12 = v364;
  if (v363)
  {
    v116 = v366 == 0;
  }

  else
  {
    v116 = 1;
  }

  v117 = v116;
  v351 = v117;
  v352 = 0;
  v358 = v370 + 2144;
  v112 = 1;
  while (2)
  {
    if (!v385)
    {
      v111 = v354;
      goto LABEL_589;
    }

    v362 = v115;
    WordPrm = (*(v49 + 168))(v67, v113);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }

    v121 = v383;
    if (v383 - 9 < 6)
    {
      break;
    }

    if (v383 == 15)
    {
      usextract_handlePhraseRecord(&v392, v49, v67, v113, v385, a6, v112);
      goto LABEL_559;
    }

    if (v383 != 4)
    {
LABEL_559:
      WordPrm = (*(v49 + 120))(v67, v113, v385, &v385);
      v115 = v362;
      if ((WordPrm & 0x80000000) != 0)
      {
        goto LABEL_570;
      }

      continue;
    }

    break;
  }

  if (v383 != 11 && HIDWORD(v374) != 0)
  {
    usextract_finishPrompt(&v372, v12, v355, a6, v112, v118, v119, v120);
    v352 = 1;
    v121 = v383;
  }

  LODWORD(v375) = 0;
  if (v121 != 12 && v374)
  {
    LODWORD(v374) = 0;
    LODWORD(v375) = v121 == 14;
  }

  WordPrm = usextract_readFromPos(v49, v67, v113, v385, &v378);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  v384 = 0;
  if (((*(v49 + 184))(v67, v113, v385, 3, &v379 + 2) & 0x80000000) == 0 && HIWORD(v379) == 1)
  {
    WordPrm = (*(v49 + 176))(v67, v113, v385, 3, &__s, &v384);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  v367 = v112;
  if (v384 > 1u)
  {
    v127 = __s;
    if (__s)
    {
      v128 = strlen(__s);
      v129 = v128;
      LOWORD(__s1) = 0;
      if (!v128)
      {
        goto LABEL_153;
      }

      v130 = 0;
      v131 = 0;
      do
      {
        while (v130)
        {
          v132 = &v127[v130];
          if (*v132 != 42 || *(v132 - 1) == 45)
          {
            break;
          }

          *v132 = 45;
          ++v130;
          v131 = 1;
          if (v128 <= v130)
          {
            goto LABEL_151;
          }
        }

        ++v130;
      }

      while (v128 > v130);
      if (v131)
      {
LABEL_151:
        v133 = v128;
        strlen(v127);
        v113 = v368;
        WordPrm = (*(v365 + 160))(v67);
        v129 = v133;
        v49 = v365;
        if ((WordPrm & 0x80000000) != 0)
        {
          goto LABEL_570;
        }
      }

      else
      {
LABEL_153:
        v113 = v368;
      }
    }

    else
    {
      v129 = v362;
    }

    v362 = v129;
    v126 = __s;
  }

  else
  {
    log_OutText(*(v12 + 32), v355, 5, 0, "Word record with empty phonetization, eTokenType=%d", v123, v124, v125, v383);
    v362 = v383 == 14;
    v126 = v383 == 14 ? "M" : 0;
  }

  if (*(a6 + 536))
  {
    WordPrm = usextract_readWordPrm(v49, v67, v113, v385, v396 + 2);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  if (*(a6 + 1424))
  {
    WordPrm = usextract_readWordPrm(v49, v67, v113, v385, &v396[7] + 1);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }
  }

  if (*(a6 + 3504))
  {
    v134 = v385;
    v135 = v397;
    LOWORD(v386) = 0;
    LOWORD(v388) = 0;
    __s1 = 0;
    v136 = *(v370 + 3336);
    if (*v136)
    {
      v137 = v136 + 1;
      v138 = v397;
      do
      {
        *v138++ = 0;
      }

      while (*v137++);
    }

    v356 = v135;
    if (((*(v49 + 184))(v67, v113, v134, 14, &v386) & 0x80000000) != 0 || v386 != 1)
    {
      goto LABEL_180;
    }

    v29 = (*(v49 + 176))(v67, v368, v134, 14, &__s1, &v388);
    if ((v29 & 0x80000000) != 0 || !v388)
    {
LABEL_217:
      v113 = v368;
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_571;
      }
    }

    else
    {
      v140 = __s1;
      if (__s1)
      {
        v141 = *__s1;
        if (*__s1)
        {
          v142 = 0;
          do
          {
            if (v140[1] == 95 && memchr("SsEeIi", v141, 7uLL))
            {
              v143 = strlen(v140 + 2);
              memmove(v140, v140 + 2, v143 + 1);
            }

            else if (v141 == 58 && v142)
            {
              v144 = strlen(v140 + 1);
              memmove(v140 + 3, v140 + 1, v144 + 1);
              v141 = 0;
              v140[2] = 95;
              v140 += 2;
              *(v140 - 1) = v142;
            }

            else
            {
              v141 = v142;
            }

            v142 = v141;
            v145 = *++v140;
            v141 = v145;
          }

          while (v145);
          v140 = __s1;
          goto LABEL_214;
        }

        v12 = v364;
        while (*v140)
        {
          v146 = v140 - 1;
          do
          {
            v147 = *++v146;
          }

          while (memchr(";: \t", v147, 5uLL));
          v148 = strchr(v146, 58);
          if (!v148)
          {
            log_OutPublic(*(v12 + 32), v355, 19021, "%s%s", v149, v150, v151, v152, "missing feature value");
            v67 = a4;
            goto LABEL_217;
          }

          v153 = v148;
          if (v148 > v146)
          {
            while (1)
            {
              v153 = (v148 - 1);
              v154 = *(v148 - 1);
              v181 = v154 > 0x20;
              v155 = (1 << v154) & 0x100000201;
              if (v181 || v155 == 0)
              {
                break;
              }

              --v148;
              if (v153 <= v146)
              {
                goto LABEL_195;
              }
            }

            v153 = v148;
          }

LABEL_195:
          Index = usextract_getIndex(*(v370 + 3336), v146, v153);
          if ((Index & 0x80000000) != 0)
          {
            log_OutText(*(v364 + 32), v355, 3, 0, "unknown generic feature", v157, v158, v159, v348);
          }

          v161 = (v153 - 1);
          do
          {
            v162 = *++v161;
          }

          while (memchr(": \t", v162, 4uLL));
          v163 = strchr(v161, 59);
          if (!v163)
          {
            v163 = &v161[strlen(v161)];
          }

          if (v163 > v161)
          {
            v140 = v163;
            while (1)
            {
              v164 = *--v140;
              v165 = (1 << v164) & 0x100000201;
              if (v164 > 0x20 || v165 == 0)
              {
                break;
              }

              v163 = v140;
              if (v140 <= v161)
              {
                goto LABEL_210;
              }
            }
          }

          v140 = v163;
LABEL_210:
          if ((Index & 0x80000000) == 0)
          {
            v167 = usextract_getIndex(*(*(v370 + 3344) + 8 * Index), v161, v140);
            if ((v167 & 0x80000000) != 0)
            {
              log_OutText(*(v364 + 32), v355, 3, 0, "unknown generic feature", v168, v169, v170, v348);
            }

            else
            {
              *(v356 + Index) = *(*(*(v370 + 3352) + 8 * Index) + v167);
            }
          }

LABEL_214:
          v12 = v364;
          v67 = a4;
          if (!v140)
          {
            goto LABEL_217;
          }
        }

        goto LABEL_217;
      }

LABEL_180:
      v113 = v368;
    }
  }

  v171 = v360;
  v172 = v370;
  if (*(a6 + 456))
  {
    v173 = v385;
    __s1 = 0;
    HIWORD(v389) = 0;
    if (v351)
    {
      v29 = 2229280775;
      goto LABEL_571;
    }

    LOWORD(v386) = 0;
    LOWORD(v388) = 0;
    v391 = 0;
    v174 = (*(v365 + 152))(v67, v113, 4, v385, &v389 + 2, v360);
    v175 = 0;
    if ((v174 & 0x80000000) == 0 && HIWORD(v389))
    {
      v176 = (*(v365 + 104))(v67, v113, 4, v173, &v386);
      if ((v176 & 0x80000000) != 0 || (v176 = (*(v365 + 104))(v67, v113, 5, v386, &v388), (v176 & 0x80000000) != 0))
      {
LABEL_587:
        v29 = v176;
        v28 = v366;
        *v366 = 0;
        goto LABEL_572;
      }

      v175 = 0;
      if (v359)
      {
        v177 = v388;
        if (v388)
        {
          v178 = v113;
          v179 = 0;
          do
          {
            v176 = (*(v365 + 176))(v67, v178, v177, 0, &__s1, &v391);
            if ((v176 & 0x80000000) != 0)
            {
              goto LABEL_587;
            }

            if (__s1)
            {
              v180 = *__s1;
              if (v180 == 35 || *(v358 + v180) != 255)
              {
                v176 = (*(v365 + 168))(v67, v368, v388, 1, 1, &v391 + 2, &v391);
                if ((v176 & 0x80000000) != 0)
                {
                  goto LABEL_587;
                }

                v366[v179] = *__s1;
                v363[v179++] = BYTE2(v391);
              }
            }

            v178 = v368;
            (*(v365 + 112))(v67, v368, v388, &v388);
            v177 = v388;
            if (v388)
            {
              v181 = v359 > v179;
            }

            else
            {
              v181 = 0;
            }
          }

          while (v181);
          v175 = v179;
          v113 = v368;
        }
      }
    }

    v354 = 0;
    v366[v175] = 0;
    v171 = v360;
    if (*v366 == 35)
    {
      v172 = v370;
      if (v367 >= 1)
      {
        v182 = v367 - 1;
        if (*(*(a6 + 32) + v182) == 35)
        {
          *(*(a6 + 456) + v182) = *v363;
          v354 = 1;
        }

        else
        {
          v354 = 0;
        }
      }
    }

    else
    {
      v172 = v370;
    }
  }

  if (!v126 || !*v126)
  {
    goto LABEL_279;
  }

  v183 = *(a6 + 3520);
  if (v183 > HIDWORD(v381))
  {
    v184 = v183 - HIDWORD(v381);
    v185 = (*(a6 + 3512) + 32 * HIDWORD(v381));
    while (v185[3] - v171 <= v378)
    {
      if (*v185 == 26)
      {
        if (v374 | v375)
        {
          break;
        }

        v187 = v367 > 1;
        v186 = v383 != 14;
        v188 = v381;
        if (v383 != 14 && v381 == 0 && v367 >= 2)
        {
          v188 = 5;
          LODWORD(v381) = 5;
          v187 = 1;
          v380 = 1;
          v186 = 1;
        }

        goto LABEL_254;
      }

      v185 += 8;
      if (!--v184)
      {
        break;
      }
    }
  }

  v186 = 0;
  v187 = v367 > 1;
  v188 = v381;
LABEL_254:
  if (v188)
  {
    v189 = !v187;
  }

  else
  {
    v189 = 1;
  }

  if (v189)
  {
    if (v352 && v367 >= 1 && !*(v172 + 2692))
    {
      *(*(a6 + 3608) + ((((v367 * *(v172 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
    }
  }

  else
  {
    usextract_insertPause(&v392, a6, v188, v380, v367, v171, v378, &v381 + 1);
    v190 = *(a6 + 456);
    if (v190)
    {
      v191 = v370;
      if (*(*(a6 + 32) + v367) == v366[v354])
      {
        *(v190 + v367) = v363[v354++];
      }
    }

    else
    {
      v191 = v370;
    }

    if (v374 && *(v191 + 3578))
    {
      memset_pattern16((*(a6 + 3608) + 4 * v367 * *(v191 + 3578)), &unk_1C37B1390, 4 * *(v191 + 3578));
    }

    v367 = (v367 + 1);
  }

  if (!v186)
  {
    v352 = 0;
LABEL_279:
    v357 = 0;
    goto LABEL_280;
  }

  v192 = *a6;
  if (strstr((*a6 + 152), "bet4") || strstr((v192 + 152), "bet5"))
  {
    usextract_insertPause(&v392, a6, 5u, 1, v367, v360, v378, &v381 + 1);
    v193 = *(a6 + 456);
    if (v193 && *(*(a6 + 32) + v367) == v366[v354])
    {
      *(v193 + v367) = v363[v354++];
    }

    v352 = 0;
    v367 = (v367 + 1);
    v357 = 1;
  }

  else
  {
    v352 = 0;
    v357 = 1;
  }

LABEL_280:
  if (v383 != 11)
  {
    if (v383 == 14)
    {
      LODWORD(v374) = 1;
    }

    else if (v383 == 13)
    {
      goto LABEL_283;
    }

LABEL_311:
    WordPrm = usextract_readSilDur(v365, v67, v113, v385, &v381, &v380);
    if ((WordPrm & 0x80000000) != 0)
    {
      goto LABEL_570;
    }

    v209 = *(a6 + 3520);
    v210 = HIDWORD(v381);
    if (HIDWORD(v381) < v209)
    {
      v211 = (*(a6 + 3512) + 32 * HIDWORD(v381) + 12);
      v212 = v360;
      while (1)
      {
        v213 = *v211;
        v211 += 8;
        if (v213 - v212 > v378)
        {
LABEL_327:
          v12 = v364;
          v113 = v368;
          goto LABEL_328;
        }

        if (!v357)
        {
          break;
        }

        v214 = *a6;
        if (strstr((*a6 + 152), "bet4"))
        {
          v212 = v360;
          if (v367 < 1)
          {
            break;
          }
        }

        else
        {
          if (strstr((v214 + 152), "bet5"))
          {
            v216 = v367 <= 0;
          }

          else
          {
            v216 = 1;
          }

          v212 = v360;
          if (v216)
          {
            break;
          }
        }

        v215 = (*(a6 + 1800) + 2 * v367 - 2);
LABEL_325:
        ++*v215;
        if (v209 == ++v210)
        {
          v210 = v209;
          goto LABEL_327;
        }
      }

      v215 = (*(a6 + 1800) + 2 * v367);
      goto LABEL_325;
    }

LABEL_328:
    HIDWORD(v381) = v210;
    v67 = a4;
    if (!v126 || !*v126)
    {
      v49 = v365;
      v112 = v367;
      goto LABEL_559;
    }

    usextract_handleWordStart(&v392, a6, v126, v367);
    v217 = v369;
    v49 = v365;
    if (*(a6 + 280))
    {
      v218 = 0;
      do
      {
        v219 = v126[v218];
        if (v219 <= 0x2D && ((1 << v219) & 0x200800000001) != 0)
        {
          break;
        }

        v221 = v219 - 49;
        if ((v219 - 49) < 4u)
        {
          goto LABEL_340;
        }

        ++v218;
      }

      while (v219 != 53);
      v221 = 0;
LABEL_340:
      BYTE2(v394) = v221;
    }

    usextract_handleBoundaryShape(&v392, v370);
    LOWORD(v379) = 0;
    v226 = v362;
    if (!v362)
    {
LABEL_558:
      v12 = v364;
      v292 = v126;
      v112 = v367;
      usextract_handleWordEnd(&v372, &v392, v364, v355, a6, v292, v367, v225);
      goto LABEL_559;
    }

    v227 = 0;
    v228 = 0;
    while (2)
    {
      if (v217)
      {
        if (__len_4 == -1)
        {
          v232 = 0;
          goto LABEL_353;
        }

        v229 = __len_6;
        if (__len_6 == -1 || v227 <= __len_6)
        {
          if (v227 > v402)
          {
            LOWORD(v232) = v402;
            v231 = 1;
            goto LABEL_370;
          }
        }

        else
        {
          v232 = __len_6;
LABEL_353:
          __len_4 = v232;
          v229 = v232;
          do
          {
            __len_6 = ++v229;
            v233 = v126[v229];
            if (v126[v229])
            {
              v234 = v217 == v233;
            }

            else
            {
              v234 = 1;
            }
          }

          while (!v234);
          v231 = 0;
          if (v232)
          {
            v235 = 2;
          }

          else
          {
            v235 = 1;
          }

          if (v232)
          {
            v236 = 3;
          }

          else
          {
            v236 = 0;
          }

          if (v217 == v233)
          {
            v237 = v235;
          }

          else
          {
            v237 = v236;
          }

          BYTE9(v396[9]) = v237;
          v402 = v232;
          if (v126[v232 + 1] == 45)
          {
            LOWORD(v232) = v232 + 1;
          }

          while (1)
          {
LABEL_370:
            LOWORD(v232) = v232 + 1;
            v402 = v232;
            if (!v126[v232])
            {
LABEL_373:
              if (v231)
              {
                v238 = 3;
              }

              else
              {
                v238 = 0;
              }

              goto LABEL_379;
            }

            if (v126[v232] == 45)
            {
              break;
            }

            if (v232 >= v229)
            {
              goto LABEL_373;
            }
          }

          if (v231)
          {
            v238 = 2;
          }

          else
          {
            v238 = 1;
          }

LABEL_379:
          BYTE10(v396[9]) = v238;
        }
      }

      v239 = &v126[v228];
      v240 = *v239;
      v241 = *a6;
      if (*(v358 + v240) != 255)
      {
        if (BYTE7(v393) != 255)
        {
          ++BYTE7(v393);
          LOBYTE(v240) = *v239;
        }

        *(*(a6 + 32) + v367) = v240;
        v242 = WORD6(v396[9]);
        if (WORD6(v396[9]) != 218)
        {
          v243 = 1;
          do
          {
            *(*(v17 + 8 * v242) + v367) = *(&v392 + v242 + 1);
            v242 = *(&v396[9] + v243++ + 6);
          }

          while (v242 != 218);
        }

        v244 = *(*a6 + 3336);
        v113 = v368;
        if (v244 && *v244)
        {
          v245 = 0;
          v246 = v244 + 1;
          do
          {
            *(*(*(a6 + 3504) + 8 * v245) + v367) = v397[v245];
          }

          while (v246[v245++]);
        }

        v248 = *(a6 + 264);
        if (v248)
        {
          v249 = v227 + 1;
          if (v249 < v226)
          {
            v250 = strchr((v241 + 2400), v126[v249]);
            v226 = v362;
            if (v250)
            {
              *(v248 + v367) = v250 - (v241 + 96) + 1;
            }
          }

          v251 = *(a6 + 272);
          v113 = v368;
          if (v251)
          {
            v252 = v367 - 1;
            if (*(*(a6 + 32) + v252) == 35)
            {
              v253 = strlen((v241 + 2400));
              v226 = v362;
              v254 = v253 + 1;
            }

            else if (*(*(a6 + 112) + v252))
            {
              v254 = *(*(a6 + 264) + v252);
            }

            else
            {
              v254 = *(v251 + v252);
            }

            *(v251 + v367) = v254;
          }
        }

        if (BYTE6(v393) <= 1u)
        {
          BYTE6(v393) = 2;
        }

        BYTE6(v396[0]) = 0;
        v261 = *(a6 + 456);
        v49 = v365;
        if (v261 && *(*(a6 + 32) + v367) == v366[v354])
        {
          *(v261 + v367) = v363[v354++];
        }

        v262 = *a6;
        if (v374)
        {
          if (*(v262 + 3578))
          {
            memset_pattern16((*(a6 + 3608) + 4 * v367 * *(v262 + 3578)), &unk_1C37B1390, 4 * *(v262 + 3578));
            v226 = v362;
          }

          goto LABEL_440;
        }

        if (!HIDWORD(v374))
        {
          goto LABEL_440;
        }

        if (LOBYTE(v376[1]))
        {
          --LOBYTE(v376[1]);
          goto LABEL_440;
        }

        if (HIDWORD(v376[1]))
        {
LABEL_445:
          DWORD1(v377) = 0;
          goto LABEL_446;
        }

        v269 = *(a6 + 32);
        v270 = *(v269 + v367);
        v271 = v373;
        v272 = *v373;
        if (v270 != 35 && v272 == 35)
        {
          do
          {
            v373 = v271 + 1;
            skipUnvalidPhonemes(v262, &v373);
            v271 = v373;
            v376[3] += 4 * *(v262 + 3578);
            v272 = *v373;
          }

          while (v272 == 35);
          v270 = *(v269 + v367);
          v226 = v362;
          v113 = v368;
        }

        v49 = v365;
        if (v270 == v272)
        {
          if (!HIDWORD(v376[1]))
          {
            if (LODWORD(v376[2]))
            {
              LODWORD(v376[2]) = 0;
              v273 = *(v262 + 3578);
            }

            else
            {
              v273 = *(v262 + 3578);
              *(*(a6 + 3608) + 4 * v367 * *(v262 + 3578)) = *v376[3];
            }

            if (v273 >= 2)
            {
              v287 = v273;
              v288 = v273 - 1;
              v289 = (*(a6 + 3608) + 4 * v367 * v287 + 4);
              v290 = v376[3] + 4;
              do
              {
                v291 = *v290;
                v290 += 4;
                *v289++ = v291;
                --v288;
              }

              while (v288);
            }

            if (*v271)
            {
              v373 = v271 + 1;
              skipUnvalidPhonemes(v262, &v373);
              v226 = v362;
              v376[3] += 4 * *(v262 + 3578);
            }

LABEL_440:
            v367 = (v367 + 1);
            v67 = a4;
LABEL_441:
            v217 = v369;
LABEL_442:
            LOWORD(v379) = ++v228;
            v227 = v228;
            if (v226 <= v228)
            {
              goto LABEL_558;
            }

            continue;
          }
        }

        else
        {
          HIDWORD(v376[1]) = 1;
          v280 = strlen(v271);
          v226 = v362;
          if (v280 > 1)
          {
            goto LABEL_445;
          }
        }

LABEL_446:
        if (v367 >= 1 && *(*(a6 + 32) + v367) != 35 && !*(v262 + 2692))
        {
          *(*(a6 + 3608) + ((((v367 * *(v262 + 3578)) << 32) - 0x100000000) >> 30)) = -1;
        }

        goto LABEL_440;
      }

      break;
    }

    LOWORD(__s1) = 0;
    if (v240 > 48)
    {
      if ((v240 - 49) < 5)
      {
        if (*(a6 + 280))
        {
          v255 = 0;
          v113 = v368;
          v217 = v369;
          do
          {
            v256 = v239[v255 + 1];
            if (v256 <= 0x2D && ((1 << v256) & 0x200800000001) != 0)
            {
              break;
            }

            v258 = v256 - 49;
            if ((v256 - 49) < 4u)
            {
              goto LABEL_409;
            }

            ++v255;
          }

          while (v256 != 53);
          v258 = 0;
LABEL_409:
          BYTE2(v394) = v258;
          goto LABEL_442;
        }

LABEL_423:
        if (!strchr((v241 + 2400), v240))
        {
          log_OutPublic(*(v364 + 32), v355, 19012, "%s%d%s%s", v222, v223, v224, v225, "phoneme");
        }

        v113 = v368;
LABEL_426:
        v217 = v369;
        v226 = v362;
        goto LABEL_442;
      }

      if (v240 == 96)
      {
        v113 = v368;
        if (WORD4(v398) != v367)
        {
          log_OutPublic(*(v364 + 32), v355, 19015, "%s%s", v222, v223, v224, v225, "word");
          v226 = v362;
        }

        BYTE10(v392) = 1;
        BYTE3(v393) = 7;
        BYTE4(v396[0]) = 7;
        BYTE2(v396[7]) = 12;
        goto LABEL_441;
      }

      if (v240 != 92)
      {
        goto LABEL_423;
      }

      v259 = usextract_GetSentType(v364, v355, v241, v239, v392, 1, &__s1);
      v226 = v362;
      BYTE14(v393) = v259;
      v260 = __s1 - 1;
      if (__s1 <= 1u)
      {
        v260 = 1;
      }

      v228 = v260 + v379;
LABEL_422:
      v113 = v368;
      goto LABEL_441;
    }

    switch(v240)
    {
      case '""':
        if (WORD4(v398) != v367)
        {
          log_OutPublic(*(v364 + 32), v355, 19013, "%s%s", v222, v223, v224, v225, "word");
          v226 = v362;
        }

        v263 = v407++;
        BYTE10(v392) = 3;
        LOWORD(__len) = v367;
        BYTE3(v394) = 2;
        v113 = v368;
        v217 = v369;
        if (BYTE4(v393) <= 1u)
        {
          BYTE4(v393) = 2;
        }

        if (BYTE4(v396[7]) <= 2u)
        {
          if (BYTE1(v396[7]) <= 1u)
          {
            v264 = 3;
          }

          else
          {
            v264 = 4;
          }

          BYTE4(v396[7]) = v264;
        }

        if (v406 == -1)
        {
          v406 = v367;
        }

        if (v408)
        {
          v265 = 4;
        }

        else
        {
          v265 = 3;
        }

        if (v263)
        {
          v266 = 2;
        }

        else
        {
          v266 = v265;
        }

        BYTE3(v393) = v266;
        if (BYTE2(v396[0]) == 3)
        {
          v268 = 0;
          goto LABEL_509;
        }

        if (BYTE2(v396[0]) == 2)
        {
          goto LABEL_476;
        }

        break;
      case '\'':
        if (WORD4(v398) != v367)
        {
          log_OutPublic(*(v364 + 32), v355, 19014, "%s%s", v222, v223, v224, v225, "word");
          v226 = v362;
        }

        BYTE10(v392) = 2;
        LOWORD(__len) = v367;
        BYTE3(v394) = 2;
        v113 = v368;
        v217 = v369;
        if (v406 == -1)
        {
          v406 = v367;
        }

        v267 = 1;
        BYTE3(v393) = 1;
        if (BYTE2(v396[0]) == 3)
        {
          v268 = 0;
          goto LABEL_514;
        }

        if (BYTE2(v396[0]) == 2)
        {
LABEL_476:
          if (HIDWORD(v403))
          {
            if (v403)
            {
              v268 = 5;
            }

            else
            {
              v268 = 4;
            }

LABEL_509:
            v267 = 1;
          }

          else
          {
            v267 = 1;
            v268 = 3;
          }

LABEL_514:
          BYTE4(v396[0]) = v268;
          switch(BYTE1(v396[7]))
          {
            case 4u:
              v281 = 0;
              goto LABEL_526;
            case 3u:
              if (HIDWORD(v404))
              {
                if (v404)
                {
                  v281 = 5;
                }

                else
                {
                  v281 = 4;
                }

LABEL_526:
                v282 = 1;
              }

              else
              {
                v282 = 1;
                v281 = 3;
              }

              break;
            case 2u:
              if (HIDWORD(v404))
              {
                if (v404)
                {
                  v281 = 10;
                }

                else
                {
                  v281 = 9;
                }

                goto LABEL_526;
              }

              v282 = 1;
              v281 = 8;
              break;
            default:
              v282 = 0;
              v281 = 11;
              break;
          }

          BYTE2(v396[7]) = v281;
          if (v267)
          {
            v403 = 0x100000001;
            WORD6(v398) = v367;
          }

          if (v282)
          {
            v404 = 0x100000001;
            HIWORD(v398) = v367;
          }

          goto LABEL_442;
        }

        break;
      case '-':
        if (WORD4(v398) == v367)
        {
          log_OutPublic(*(v364 + 32), v355, 19019, "%s%s", v222, v223, v224, v225, "word");
          v226 = v362;
          goto LABEL_422;
        }

        WORD4(v398) = v367;
        v274 = v367 - 1;
        *(*(a6 + 112) + v274) = 1;
        BYTE10(v392) = 0;
        BYTE6(v393) = 1;
        v113 = v368;
        if (BYTE6(v394) != 255)
        {
          ++BYTE6(v394);
        }

        if (HIBYTE(v392) != 255)
        {
          ++HIBYTE(v392);
        }

        v275 = v239 + 1;
        if (strchr(v239 + 1, 45))
        {
          v276 = 2;
        }

        else
        {
          v276 = 3;
        }

        BYTE11(v392) = v276;
        BYTE7(v393) = 0;
        BYTE14(v392) = 2;
        BYTE3(v393) = 0;
        BYTE3(v396[0]) = 12;
        BYTE3(v396[7]) = 12;
        BYTE6(v396[0]) = 1;
        BYTE8(v396[0]) = 1;
        BYTE14(v396[0]) = 1;
        v277 = *(a6 + 576);
        if (v277)
        {
          *(v277 + v274) = 1;
        }

        if (v228)
        {
          v278 = *(a6 + 184);
          if (*(v278 + v274) == 2)
          {
            *(v278 + v274) = 3;
          }
        }

        BYTE4(v396[0]) = 8;
        BYTE2(v396[7]) = 13;
        if (BYTE3(v394) == 2)
        {
          BYTE3(v394) = 1;
        }

        v49 = v365;
        if (BYTE4(v393) == 2)
        {
          v279 = 3;
LABEL_535:
          BYTE4(v393) = v279;
        }

        else if (BYTE4(v393) == 3)
        {
          v279 = 4;
          goto LABEL_535;
        }

        if (BYTE4(v396[7]) - 3 <= 3)
        {
          BYTE4(v396[7]) += 2;
        }

        if (*(a6 + 280))
        {
          v283 = 0;
          do
          {
            v284 = v275[v283];
            if (v284 <= 0x2D && ((1 << v284) & 0x200800000001) != 0)
            {
              break;
            }

            v286 = v284 - 49;
            if ((v284 - 49) < 4u)
            {
              goto LABEL_548;
            }

            ++v283;
          }

          while (v284 != 53);
          v286 = 0;
LABEL_548:
          BYTE2(v394) = v286;
        }

        if (*v275 == 42)
        {
          log_OutPublic(*(v364 + 32), v355, 19016, "%s%s", v222, v223, v224, v225, "word");
          LOWORD(v379) = ++v228;
        }

        goto LABEL_426;
      default:
        goto LABEL_423;
    }

    v267 = 0;
    v268 = 6;
    goto LABEL_514;
  }

LABEL_283:
  HIDWORD(v374) = 1;
  v350 = *a6;
  LOWORD(v386) = 0;
  LOWORD(v388) = 0;
  LODWORD(__s1) = 0;
  v353 = v385;
  WordPrm = (*(v365 + 176))(v67, v113);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  WordPrm = (*(v365 + 176))(v67, v113, v353, 15, &v373, &v386);
  if ((WordPrm & 0x80000000) != 0)
  {
    goto LABEL_570;
  }

  valid = usextract_nrOfValidPhonemes(v350, v373);
  v194 = usextract_readSilDur(v365, v67, v113, v353, &__s1, 0);
  if ((v194 & 0x80000000) == 0)
  {
    v198 = *(v350 + 3578);
    if (__s1)
    {
      v199 = valid;
      v200 = v388;
      v67 = a4;
      if (v198 + v198 * valid == v388)
      {
        LODWORD(v377) = 1;
LABEL_293:
        v372 = v373;
        skipUnvalidPhonemes(v350, &v373);
        if (v383 == 13)
        {
          usextract_startNewPrompt(&v372, a6, v126, v367);
        }

        if (v376[0] && v372)
        {
          v201 = strlen(v376[0]);
          if (strlen(v372) + v201 > 0x1EF)
          {
            if (v201 <= 0x1EF)
            {
              *&v376[0][strlen(v376[0])] = 3026478;
            }

            log_OutText(*(v364 + 32), v355, 3, 0, "prompt too long for logging", v202, v203, v204, v348);
          }

          else
          {
            strcat(v376[0], v372);
          }

          v67 = a4;
        }

        v12 = v364;
        if (v126 && *(&v375 + 1))
        {
          v205 = strlen(*(&v375 + 1));
          if (strlen(v126) + v205 > 0x1EF)
          {
            if (v205 <= 0x1EF)
            {
              *(*(&v375 + 1) + strlen(*(&v375 + 1))) = 3026478;
            }

            log_OutText(*(v364 + 32), v355, 3, 0, "phon too long for prompt logging", v206, v207, v208, v348);
          }

          else
          {
            strcat(*(&v375 + 1), v126);
          }

          v67 = a4;
        }

        goto LABEL_311;
      }
    }

    else
    {
      v200 = v388;
      v67 = a4;
      v199 = valid;
    }

    LODWORD(v377) = 0;
    if (v198 * v199 != v200)
    {
      log_OutText(*(v364 + 32), v355, 3, 0, "Warning (incoherent prompt): %d segment ids for %d valid phones", v195, v196, v197, v200);
      HIDWORD(v376[1]) = 1;
      DWORD1(v377) = 0;
    }

    goto LABEL_293;
  }

  v29 = v194;
  v12 = v364;
LABEL_571:
  v28 = v366;
LABEL_572:
  v27 = v363;
LABEL_573:
  if (log_HasTraceTuningDataSubscriber(*(v12 + 32)))
  {
    log_OutTraceTuningData(*(v12 + 32), 301, "%s%s %s%.*s", v295, v296, v297, v298, v299, "END");
  }

  if (*(&v375 + 1))
  {
    heap_Free(*(v12 + 8), *(&v375 + 1));
  }

  if (v376[0])
  {
    heap_Free(*(v12 + 8), v376[0]);
  }

  if (v28)
  {
    heap_Free(*(v12 + 8), v28);
  }

  if (v27)
  {
    heap_Free(*(v12 + 8), v27);
  }

  if (v397)
  {
    heap_Free(*(v12 + 8), v397);
  }

  v300 = *MEMORY[0x1E69E9840];
  return v29;
}