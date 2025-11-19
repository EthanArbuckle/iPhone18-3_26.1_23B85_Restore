BOOL __btrie_find_common_prefix(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8x8_t a9)
{
  v14 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v14 == 2)
    {
      v29 = (*(a1 + 8) + (a2 - 2));
      v30 = *v29;
      if (*v29)
      {
        if (a7)
        {
          *(a7 + 8 * *a5) = &a3[-a8];
        }

        v31 = *a5;
        v32 = *a5 + 1;
        *a5 = v32;
        *(a6 + 4 * v31) = v30;
        if (v32 > 0x3FF)
        {
          return 1;
        }
      }

      if (!a4)
      {
        return 0;
      }

      v33 = *a3;
      v34 = (v29 + 1);
      v35 = v33 >> 5;
      v36 = v29[(v33 >> 5) + 1];
      if (((v36 >> v33) & 1) == 0)
      {
        return 0;
      }

      v37 = v33 & 0x1F;
      v38 = v29 + 10;
      if (v33 >= 0x20)
      {
        v39 = 0;
        do
        {
          v45 = *v34++;
          a9 = vcnt_s8(v45);
          a9.i16[0] = vaddlv_u8(a9);
          v39 += a9.i32[0];
          --v35;
        }

        while (v35);
      }

      else
      {
        v39 = 0;
      }

      a9.i32[0] = v36 & ~(-1 << v37);
      v46 = vcnt_s8(a9);
      v46.i16[0] = vaddlv_u8(v46);
      v47 = v38[v39 + v46.i32[0]];
    }

    else
    {
      v40 = (*(a1 + 8) + (a2 - 3));
      v41 = *v40;
      if (*v40)
      {
        if (a7)
        {
          *(a7 + 8 * *a5) = &a3[-a8];
        }

        v42 = *a5;
        v43 = *a5 + 1;
        *a5 = v43;
        *(a6 + 4 * v42) = v41;
        if (v43 > 0x3FF)
        {
          return 1;
        }
      }

      if (!a4)
      {
        return 0;
      }

      v44 = v40[*a3 + 1];
    }

    return __btrie_find_common_prefix() != 0;
  }

  if ((a2 & 3) != 0)
  {
    v15 = (*(a1 + 16) + (a2 - 1));
    v16 = v15[1];
    if (!v16)
    {
      goto LABEL_42;
    }

    if (a7)
    {
      *(a7 + 8 * *a5) = &a3[-a8];
    }

    v17 = *a5;
    v18 = *a5 + 1;
    *a5 = v18;
    *(a6 + 4 * v17) = v16;
    if (v18 <= 0x3FF)
    {
LABEL_42:
      if (a4)
      {
        v19 = *v15;
        if (v19 >= 5)
        {
          v20 = v15 + v19;
          v21 = (v15 + 2);
          v22 = &a3[-a8];
          while (1)
          {
            v25 = *v21;
            v23 = v21 + 1;
            v24 = v25;
            if (v25 <= a4)
            {
              v26 = memcmp(v23, a3, v24);
              if (v26 > 0)
              {
                return 0;
              }

              if (!v26)
              {
                v27 = *a5;
                if (a7)
                {
                  *(a7 + 8 * v27) = &v22[v24];
                  v27 = *a5;
                }

                *a5 = v27 + 1;
                *(a6 + 4 * v27) = *&v23[v24];
                if (*a5 > 0x3FF)
                {
                  break;
                }
              }
            }

            v28 = &v23[v24];
            v21 = &v23[v24 + 4];
            if (v28 >= v20)
            {
              return 0;
            }
          }

          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return v14;
}

uint64_t germantok_tokenize()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  theString = v1;
  v122 = v3;
  v123 = v2;
  v5 = v4;
  v7 = v6;
  v120 = v8;
  v10 = v9;
  v11 = v0;
  v147 = *MEMORY[0x29EDCA608];
  v12 = &v138;
  memset(v128, 0, sizeof(v128));
  v133[2000] = v133;
  v141 = 0;
  pthread_mutex_lock(&__gt_mutex);
  v13 = __gt_germanTokenizerInitializeTrie__gt_refContext;
  v119 = v7;
  v116 = v11;
  if (!__gt_germanTokenizerInitializeTrie__gt_refContext)
  {
    __gt_germanTokenizerInitializeTrie__gt_refContext = malloc_type_malloc(0x18uLL, 0x10A00404568A766uLL);
    if (getenv("APPLE_FRAMEWORKS_ROOT"))
    {
      __strlcpy_chk();
      __strlcat_chk();
      __strlcat_chk();
      v103 = open(v146, 0, 0);
    }

    else
    {
      v103 = open("/usr/share/germantok/german.index", 0, 0);
    }

    if (v103 != -1)
    {
      v104 = v103;
      memset(v146, 0, 144);
      fstat(v103, v146);
      v105 = mmap(0, v146[0].st_size, 1, 1, v104, 0);
      *(__gt_germanTokenizerInitializeTrie__gt_refContext + 8) = v105;
      if (v105 != -1)
      {
        close(v104);
        st_size = v146[0].st_size;
        v107 = __gt_germanTokenizerInitializeTrie__gt_refContext;
        *__gt_germanTokenizerInitializeTrie__gt_refContext = v146[0].st_size;
        v108 = *(v107 + 8);
        v109 = malloc_type_malloc(0x48uLL, 0x1090040DA38FBB1uLL);
        if (v109)
        {
          *(v109 + 8) = 0;
          *(v109 + 2) = 0u;
          *(v109 + 3) = 0u;
          *v109 = 0u;
          *(v109 + 1) = 0u;
          *(v109 + 1) = v108;
          *(v109 + 5) = st_size;
          if (st_size >= 0x18 && v108)
          {
            *v109 = *(v108 + 4);
            *(v109 + 2) = v108 + *(v108 + 12);
            v110 = *(v108 + 16);
            *&v111 = v110;
            *(&v111 + 1) = HIDWORD(v110);
            *(v109 + 24) = v111;
          }

          v13 = __gt_germanTokenizerInitializeTrie__gt_refContext;
          *(__gt_germanTokenizerInitializeTrie__gt_refContext + 16) = v109;
          v7 = v119;
          v11 = v116;
          goto LABEL_2;
        }

        *(__gt_germanTokenizerInitializeTrie__gt_refContext + 16) = 0;
      }
    }

    free(__gt_germanTokenizerInitializeTrie__gt_refContext);
    __gt_germanTokenizerInitializeTrie__gt_refContext = 0;
    pthread_mutex_unlock(&__gt_mutex);
    result = 0;
    goto LABEL_191;
  }

LABEL_2:
  *&v128[0] = *(v13 + 16);
  pthread_mutex_unlock(&__gt_mutex);
  result = v141;
  if (v10 < 0 || v141 >= v123)
  {
    goto LABEL_191;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  LOWORD(v19) = v141;
  v20 = v10 & 0x7FFFFFFF;
  v114 = v5;
  v115 = v20;
  do
  {
    if (v15 != v20)
    {
      v21 = *(v11 + 2 * v15);
      if (v21 >= 0x30)
      {
        v22 = v21 - 58 > 0x26 || ((1 << (v21 - 58)) & 0x7E0000007FLL) == 0;
        if (v22 && v21 - 0x2000 >= 0xE81 && v21 - 123 >= 0x45 && (v21 & 0xFFFFFFDF) != 0xD7)
        {
          ++v17;
          v18 = 1;
          goto LABEL_172;
        }
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_171;
    }

    v121 = v16;
    v23 = (v11 + 2 * v16);
    v24 = *v23;
    if ((v24 - 65) >= 0x1A)
    {
      v25 = v24 - 196;
      v26 = v25 > 0x18;
      v27 = (1 << v25) & 0x1040001;
      if (v26 || v27 == 0)
      {
        if (v120)
        {
          v48 = (v120 + 16 * result);
          *v48 = v121;
          v48[1] = v17;
        }

        if (v7)
        {
          *(v7 + 8 * result) = 0;
        }

        if (v5)
        {
          v49 = (v5 + 16 * result);
          *v49 = 0;
          v49[1] = 0;
        }

        if (v122)
        {
          *(v122 + 8 * result) = 0;
        }

        goto LABEL_170;
      }
    }

    v140 = 0;
    memset(&v139[1632], 0, 96);
    *(v12 + 1750) = 0;
    *v12 = v134;
    v134[0] = 0;
    v136 = 0;
    v137 = 0;
    v135 = 0;
    *(v12 + 102) = xmmword_298AAD2E0;
    v12[202] = v139;
    *(v12 + 812) = 0;
    *(v12 + 4) = 0;
    *(v12 + 1626) = 0;
    pErrorCode = U_ZERO_ERROR;
    srcLength_2 = v17;
    v117 = v17;
    v29 = u_strToLower(v128 + 4, 256, v23, v17, "en_us", &pErrorCode);
    srcLength = v29;
    if (pErrorCode)
    {
      goto LABEL_162;
    }

    if (v29 > 99)
    {
      goto LABEL_162;
    }

    u_strToUTF8(&v131, 100, 0, v128 + 4, v29, &pErrorCode);
    if (pErrorCode)
    {
      goto LABEL_162;
    }

    v30 = v131;
    if (v131)
    {
      v31 = 0;
      v32 = v132;
      while (1)
      {
        v33 = v31-- != 0;
        v34 = v33;
        if (v30 == 101 && v34)
        {
          v35 = *(v32 - 2) - 65;
          if (v35 < 0x35 && ((0x10400100104001uLL >> v35) & 1) != 0)
          {
            break;
          }
        }

        v36 = *v32++;
        v30 = v36;
        if (!v36)
        {
          goto LABEL_30;
        }
      }

      v37 = 1;
    }

    else
    {
LABEL_30:
      v37 = 0;
    }

    v125 = 0;
    memset(v124, 0, sizeof(v124));
    v38 = strlen(&v131);
    __gt_getWordData(v128, v124, &v131);
    if (!DWORD1(v124[0]) || (BYTE2(v124[0]) & 1) == 0)
    {
      __gt_findSubstrings();
      v39 = (v38 - 1);
      __gt_tokenizeHelper(v128, v39, v134, 0, v23);
      if ((*(v12 + 1626) & 1) == 0)
      {
        v40 = v37 ^ 1;
        if (*(v12 + 812))
        {
          v40 = 1;
        }

        if ((v40 & 1) == 0)
        {
          *(v12 + 1750) = 1;
          v41 = srcLength;
          if (srcLength >= 1)
          {
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v44 = v43 + 1;
              v45 = *(v128 + v43 + 4);
              if (v44 < v41)
              {
                if (*(v128 + v43 + 4) > 0x60u)
                {
                  if (v45 == 117)
                  {
                    if (*(v128 + v44 + 4) == 101)
                    {
                      v46 = 1;
                      LOWORD(v45) = 252;
                      goto LABEL_59;
                    }
                  }

                  else if (v45 == 111)
                  {
                    if (*(v128 + v44 + 4) == 101)
                    {
                      v46 = 1;
                      LOWORD(v45) = 246;
                      goto LABEL_59;
                    }
                  }

                  else if (v45 == 97 && *(v128 + v44 + 4) == 101)
                  {
                    v46 = 1;
                    LOWORD(v45) = 228;
                    goto LABEL_59;
                  }
                }

                else if (v45 == 65)
                {
                  if (*(v128 + v44 + 4) == 101)
                  {
                    v46 = 1;
                    LOWORD(v45) = 196;
                    goto LABEL_59;
                  }
                }

                else if (v45 == 79)
                {
                  if (*(v128 + v44 + 4) == 101)
                  {
                    v46 = 1;
                    LOWORD(v45) = 214;
                    goto LABEL_59;
                  }
                }

                else if (v45 == 85 && *(v128 + v44 + 4) == 101)
                {
                  v46 = 1;
                  LOWORD(v45) = 220;
LABEL_59:
                  ++v43;
                  goto LABEL_61;
                }
              }

              v46 = 0;
LABEL_61:
              *(&v146[0].st_dev + v42) = v45;
              v142[v42] = v46;
              v47 = v42 + 1;
              if (v42 <= 0x62)
              {
                ++v43;
                ++v42;
                if (v43 < v41)
                {
                  continue;
                }
              }

              goto LABEL_74;
            }
          }

          v47 = 0;
LABEL_74:
          srcLength = v47;
          u_memcpy(v128 + 4, v146, v47);
          u_strToUTF8(&v131, 100, 0, v128 + 4, srcLength, &pErrorCode);
          if (pErrorCode)
          {
            goto LABEL_162;
          }

          __gt_findSubstrings();
          __gt_tokenizeHelper(v128, v39, v134, 0, v23);
        }
      }
    }

    if (*(v12 + 1626))
    {
      goto LABEL_161;
    }

    v50 = *(v12 + 812);
    if (!*(v12 + 812))
    {
      goto LABEL_161;
    }

    v113 = v15;
    v51 = v139;
    v12[202] = v139;
    if (v50 < 1)
    {
      v55 = 0;
    }

    else
    {
      v52 = 0;
      do
      {
        v53 = v12;
        v54 = *v51;
        v55 = v146 + 40 * v52;
        *(v55 + 4) = *v51;
        *v55 = 0xFFEFFFFFFFFFFFFFLL;
        v56 = *(v54 + 40);
        if (v56)
        {
          v57 = 0;
          v58 = 0;
          v59 = -1.79769313e308;
          while (1)
          {
            v60 = v56;
            if (*v54)
            {
              break;
            }

            if (v59 == -1.79769313e308)
            {
              v61 = 0.0;
            }

            else
            {
              v61 = v59;
            }

            v59 = v61 + log(*(v54 + 32));
            *v55 = v59;
            if (v57 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = v57;
            }

            v57 = v62 * *(v54 + 16);
            ++v58;
            v56 = *(v60 + 40);
            v54 = v60;
            if (!v56)
            {
              goto LABEL_92;
            }
          }

          *(v55 + 2) = 1;
          *v55 = 0xFFEFFFFFFFFFFFFFLL;
          v63 = 1.0;
          v59 = -1.79769313e308;
        }

        else
        {
          v58 = 0;
          v57 = 0;
          v59 = -1.79769313e308;
LABEL_92:
          *(v55 + 2) = v58;
          v63 = v58;
        }

        v64 = 1.0 / v63;
        v65 = pow(v57, 1.0 / v63);
        *(v55 + 2) = v59 * v64;
        *(v55 + 3) = v65;
        ++v51;
        v12 = v53;
        v53[202] = v51;
        ++v52;
      }

      while (v52 != v50);
    }

    qsort(v146, v50, 0x28uLL, __gt_compareParseScoresDescending);
    st_ino = v146[0].st_ino;
    v67 = *&v146[0].st_uid;
    v5 = v114;
    v15 = v113;
    if (*&v146[0].st_uid < 4.09434456 && srcLength / SLODWORD(v146[0].st_ino) < 5)
    {
      goto LABEL_161;
    }

    p_tv_nsec = &v146[0].st_atimespec.tv_nsec;
    v69 = v146;
    while (p_tv_nsec <= v55)
    {
      v70 = v69;
      v69 = p_tv_nsec;
      while (1)
      {
        v71 = st_ino - *(p_tv_nsec + 2);
        if (v71 >= 1 && v67 + v71 * -0.287682072 < *(p_tv_nsec + 2))
        {
          break;
        }

        p_tv_nsec += 5;
        if (p_tv_nsec > v55)
        {
          v69 = v70;
          goto LABEL_107;
        }
      }

      v67 = *&v69->st_uid;
      st_ino = v69->st_ino;
      p_tv_nsec = &v69->st_atimespec.tv_nsec;
    }

LABEL_107:
    while (1)
    {
      v72 = &v69->st_atimespec.tv_nsec;
      if (&v69->st_atimespec.tv_nsec > v55)
      {
        break;
      }

      v73 = v69;
      v69 = (v69 + 40);
      while (*(v72 + 3) <= *&v73->st_rdev || *&v73->st_uid + -0.287682072 >= *(v72 + 2) || *(v72 + 2) <= 1)
      {
        v72 += 5;
        if (v72 > v55)
        {
          v69 = v73;
          goto LABEL_114;
        }
      }
    }

LABEL_114:
    if (SLODWORD(v69->st_ino) > 10 || (tv_sec = v69->st_atimespec.tv_sec, v76 = (tv_sec + 40), (v75 = *(tv_sec + 40)) == 0))
    {
LABEL_161:
      v7 = v119;
      goto LABEL_162;
    }

    v77 = 0;
    v78 = 1;
    do
    {
      if (!*(*(v69->st_atimespec.tv_sec + 40) + 40) && !*(tv_sec + 24))
      {
        goto LABEL_158;
      }

      *v127 = 0;
      u_strFromUTF8(&v144, 100, &v127[1], &v132[*(tv_sec + 8) - 1], *(tv_sec + 16), v127);
      v127[0] = U_ZERO_ERROR;
      v79 = u_strToUpper(v143, 5, &v144, 1, "en", v127);
      if (v120)
      {
        v80 = *(tv_sec + 8);
        v81 = &v131;
        v82 = &v132[v80 - 1];
        if (v80 < 1)
        {
          v83 = 0;
        }

        else
        {
          v83 = 0;
          do
          {
            ++v83;
            v81 += __gt_utf8ByteLength_utf8_len_table[*v81 >> 4];
          }

          while (v81 < v82);
        }

        v84 = *(tv_sec + 16);
        if (v84 < 1)
        {
          v85 = 0;
          if (*(v12 + 1750))
          {
            goto LABEL_135;
          }
        }

        else
        {
          v85 = 0;
          v86 = &v82[v84];
          do
          {
            ++v85;
            v82 += __gt_utf8ByteLength_utf8_len_table[*v82 >> 4];
          }

          while (v82 < v86);
          if (*(v12 + 1750))
          {
            v87 = v83 + v85;
            v88 = v83;
            do
            {
              if (v142[v88])
              {
                ++v85;
              }

              ++v88;
            }

            while (v88 < v87);
LABEL_135:
            v89 = v142;
            v90 = v83;
            if (v83)
            {
              do
              {
                if (*v89++)
                {
                  ++v90;
                }

                --v83;
              }

              while (v83);
              v83 = v90;
            }
          }
        }

        v92 = (v120 + 16 * *(v12 + 874));
        *v92 = v83 + v121;
        v92[1] = v85;
      }

      if (v119)
      {
        v93 = 2;
        if ((v78 & 1) == 0)
        {
          v93 = 0;
        }

        *(v119 + 8 * *(v12 + 874)) = v93;
        v78 = 0;
      }

      if (*(tv_sec + 1) == 1)
      {
        v94 = *(tv_sec + 16) + *(tv_sec + 8);
        if (v94 < strlen(&v131) && v132[v94 - 1] == 101)
        {
          v95 = v120 + 16 * *(v12 + 874);
          ++*(v95 + 8);
        }

        v96 = v127[1];
        v145[v127[1] - 1] = 101;
        v127[1] = v96 + 1;
        v5 = v114;
      }

      if (v122)
      {
        *(v122 + 8 * *(v12 + 874)) = 2;
      }

      if (v5)
      {
        Length = CFStringGetLength(theString);
        v98 = (v5 + 16 * *(v12 + 874));
        v99 = v79 + v127[1] - 1;
        *v98 = Length;
        v98[1] = v99;
      }

      if (theString)
      {
        CFStringAppendCharacters(theString, v143, v79);
        CFStringAppendCharacters(theString, v145, v127[1] - 1);
      }

      v100 = *(v12 + 874) + 1;
      *(v12 + 874) = v100;
      ++v77;
      if (v123 == v100)
      {
        break;
      }

      v75 = *v76;
LABEL_158:
      tv_sec = v75;
      v76 = (v75 + 40);
      v75 = *(v75 + 40);
    }

    while (v75);
    v7 = v119;
    if (v77)
    {
      LOWORD(v19) = *(v12 + 874);
      v16 = v113;
      v11 = v116;
      v20 = v115;
      goto LABEL_171;
    }

LABEL_162:
    v19 = *(v12 + 874);
    if (v120)
    {
      v101 = (v120 + 16 * v19);
      *v101 = v121;
      v101[1] = v117;
    }

    if (v7)
    {
      *(v7 + 8 * v19) = 2;
    }

    v20 = v115;
    if (v5)
    {
      v102 = (v5 + 16 * v19);
      *v102 = 0;
      v102[1] = 0;
    }

    v11 = v116;
    if (v122)
    {
      *(v122 + 8 * v19) = 0;
    }

LABEL_170:
    LOWORD(v19) = v19 + 1;
    *(v12 + 874) = v19;
    v16 = v15;
LABEL_171:
    v18 = 0;
    v17 = 0;
    ++v16;
LABEL_172:
    result = v19;
    if (v15 >= v20)
    {
      break;
    }

    ++v15;
  }

  while (v19 < v123);
LABEL_191:
  v112 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __gt_getWordData(uint64_t *a1, uint64_t a2, char *__s)
{
  v3 = __s;
  v6 = *a1;
  result = strlen(__s);
  v9 = result;
  v10 = v6;
  while (1)
  {
    v11 = *v10;
    v12 = *v10 & 3;
    if (v12 == 3)
    {
      v13 = (*(v6 + 8) + v11 - 3);
      if (!v9)
      {
LABEL_28:
        v12 = *v13;
        goto LABEL_32;
      }

      v10 = &v13[*v3 + 1];
      goto LABEL_13;
    }

    if (v12 != 2)
    {
      break;
    }

    v13 = (*(v6 + 8) + v11 - 2);
    if (!v9)
    {
      goto LABEL_28;
    }

    v14 = *v3;
    v15 = v13 + 1;
    v16 = v14 >> 5;
    v17 = v13[(v14 >> 5) + 1];
    if (((v17 >> v14) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v14 >= 0x20)
    {
      v18 = 0;
      do
      {
        v19 = *v15++;
        v8 = vcnt_s8(v19);
        v8.i16[0] = vaddlv_u8(v8);
        v18 += v8.i32[0];
        --v16;
      }

      while (v16);
    }

    else
    {
      v18 = 0;
    }

    v8.i32[0] = v17 & ~(-1 << (v14 & 0x1F));
    v8 = vcnt_s8(v8);
    v8.i16[0] = vaddlv_u8(v8);
    v10 = &v13[v18 + v8.i32[0] + 10];
LABEL_13:
    --v9;
    ++v3;
  }

  if ((v11 & 3) == 0)
  {
    goto LABEL_32;
  }

  v20 = (*(v6 + 16) + v11 - 1);
  if (v9)
  {
    v21 = *v20;
    if (v21 >= 5)
    {
      v22 = v20 + v21;
      v23 = (v20 + 2);
      while (1)
      {
        v26 = *v23;
        v24 = (v23 + 1);
        v25 = v26;
        v27 = v26 - v9;
        v28 = v26 >= v9 ? v9 : v25;
        result = memcmp(v24, v3, v28);
        v29 = result ? result : v27;
        if (v29 > 0)
        {
          break;
        }

        v30 = &v24[v25];
        if (!v29)
        {
          v12 = *v30;
          goto LABEL_32;
        }

        v12 = 0;
        v23 = (v30 + 4);
        if (v30 >= v22)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_29:
    v12 = 0;
    goto LABEL_32;
  }

  v12 = v20[1];
LABEL_32:
  *(a2 + 4) = v12 & 0xFFFFF;
  *(a2 + 2) = (v12 & 0x800000) != 0;
  *a2 = (v12 & 0x400000) != 0;
  *(a2 + 1) = (v12 & 0x200000) != 0;
  v31 = HIBYTE(v12) & 0xF;
  if (v31 == 15)
  {
    v32 = -1;
  }

  else
  {
    v32 = 100 * v31;
  }

  *(a1[2078] + 8) = v32;
  return result;
}

size_t __gt_findSubstrings()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v30 = *MEMORY[0x29EDCA608];
  *(v0 + 16624) = v0 + 624;
  v2 = v0 + 16632;
  v3 = 2079;
  v4 = 656;
  do
  {
    if ((v3 - 2079) <= 0x63)
    {
      *(v0 + 8 * v3) = 0;
    }

    *(v0 + v4) = 0;
    ++v3;
    v4 += 40;
  }

  while (v3 != 2479);
  v5 = v0 + 524;
  result = strlen((v0 + 524));
  v8 = result;
  if (result >= 1)
  {
    v9 = 0;
    v10 = 0;
    v26 = result & 0x7FFFFFFF;
    while (1)
    {
      v11 = *v1;
      v27 = 0;
      result = __btrie_find_common_prefix(v11, *v11, (v5 + v9), v8 - v9, &v27, v29, v28, v5 + v9, v7);
      v12 = v27;
      if (v27)
      {
        break;
      }

LABEL_24:
      if (++v9 == v26)
      {
        goto LABEL_25;
      }
    }

    v13 = 0;
    if (v10 <= 398)
    {
      v14 = 398;
    }

    else
    {
      v14 = v10;
    }

    v15 = (v14 - v10);
    v16 = v9 - 1;
    while (1)
    {
      v17 = v28[v13] >= 0x100uLL ? 256 : v28[v13];
      v18 = v16 + v17;
      if (v16 + v17 > 99)
      {
        break;
      }

      v19 = v29[v13];
      v20 = HIBYTE(v19) & 0xF;
      v21 = 100 * v20;
      if (v20 == 15)
      {
        v21 = -1;
      }

      v22 = *(v1 + 16624);
      *(v22 + 8) = v21;
      *(v22 + 4) = v29[v13] & 0xFFFFF;
      *(v22 + 2) = (v19 & 0x800000) != 0;
      *v22 = (v19 & 0x400000) != 0;
      *(v22 + 1) = (v19 & 0x200000) != 0;
      *(v22 + 16) = v9;
      *(v22 + 24) = v17;
      v23 = *(v2 + 8 * v18);
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *(v23 + 32);
        }

        while (v23);
        *(v24 + 32) = v22;
      }

      else
      {
        *(v2 + 8 * v18) = v22;
        v22 = *(v1 + 16624);
      }

      *(v1 + 16624) = v22 + 40;
      if (v13 == v15)
      {
        break;
      }

      ++v10;
      if (v12 <= ++v13)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __gt_tokenizeHelper(uint64_t result, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v80 = *MEMORY[0x29EDCA608];
  if ((a2 - 100) < 0xFFFFFF9F)
  {
    goto LABEL_108;
  }

  v5 = a5;
  v6 = a4;
  v7 = a2;
  v8 = result;
  v9 = result + 36632;
  v10 = a2;
  v71 = a3;
  if (a4)
  {
    goto LABEL_3;
  }

  v42 = *(result + 524 + a2);
  v43 = (a2 - 1);
  v44 = *(result + 524 + v43);
  v70 = a2 - 2;
  v45 = *(result + 524 + (a2 - 2));
  if (v44 == 101)
  {
    if (v42 == 101)
    {
LABEL_87:
      v49 = *(a3 + 40);
      if (v49)
      {
        goto LABEL_3;
      }

      while (byte_298AAD300[v49] != v44)
      {
        if (++v49 == 5)
        {
          v50 = "e";
LABEL_98:
          result = __gt_tokenizeHelper(v8, (v7 - 1), a3, v50, v5);
          a3 = v71;
          if (*(v9 + 1626))
          {
            goto LABEL_108;
          }

          goto LABEL_104;
        }
      }

      goto LABEL_104;
    }

    if (v42 != 115 && v42 != 110)
    {
      goto LABEL_3;
    }

    for (i = 0; i != 5; ++i)
    {
      if (byte_298AAD300[i] == v45)
      {
        goto LABEL_80;
      }
    }

    if (v42 == 115)
    {
      v47 = "es";
    }

    else
    {
      v47 = "en";
    }

    result = __gt_tokenizeHelper(result, v70, a3, v47, a5);
    a3 = v71;
    if (*(v9 + 1626))
    {
      goto LABEL_108;
    }
  }

LABEL_80:
  if (v42 == 101)
  {
    goto LABEL_87;
  }

  if (v42 != 110)
  {
    if (v42 == 115)
    {
      v48 = 0;
      while (byte_298AAD305[v48] != v44)
      {
        if (++v48 == 6)
        {
          goto LABEL_97;
        }
      }

      if (v48 == 3 && v45 != 116)
      {
LABEL_97:
        v50 = "s";
        goto LABEL_98;
      }
    }

LABEL_104:
    if (v44 != 115 || v42 != 116)
    {
      goto LABEL_3;
    }

    v51 = "st";
    v52 = v8;
    v53 = v70;
    goto LABEL_107;
  }

  if (v44 != 108 && v44 != 114)
  {
    v54 = 0;
    v55 = byte_298AAD300;
    v68 = v8;
    while (1)
    {
      if (v55[v54] == v44)
      {
        v56 = v8;
        v57 = v43;
        v58 = v5;
        v59 = v7;
        v60 = v9;
        v61 = v42;
        v62 = v10;
        v63 = v6;
        v64 = v43;
        v65 = v5;
        v66 = v55;
        result = __gt_tokenizeHelper(v56, v57, a3, "n", v58);
        v55 = v66;
        v5 = v65;
        v43 = v64;
        v6 = v63;
        v10 = v62;
        v42 = v61;
        v9 = v60;
        v7 = v59;
        v8 = v68;
        a3 = v71;
        if (*(v9 + 1626))
        {
          goto LABEL_108;
        }
      }

      if (++v54 == 5)
      {
        goto LABEL_104;
      }
    }
  }

  v51 = "n";
  v52 = v8;
  v53 = (v7 - 1);
LABEL_107:
  result = __gt_tokenizeHelper(v52, v53, a3, v51, v5);
  if (*(v9 + 1626))
  {
    goto LABEL_108;
  }

LABEL_3:
  v11 = *(v8 + 8 * v10 + 16632);
  if (v11)
  {
    v12 = v8 + 38280;
    while (1)
    {
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = (v11 + 16);
      v16 = v13 + v14;
      if (v13 + v14 <= v14)
      {
        goto LABEL_14;
      }

      v17 = v14;
      do
      {
        while (v17 > 99)
        {
          if (v16 <= ++v17)
          {
            goto LABEL_14;
          }
        }

        v18 = *(v12 + v17++);
      }

      while (v16 > v17 && (v18 & 1) != 0);
      if ((v18 & 1) != 0 || *(v9 + 1632) == v14 && *(v9 + 1640) == v13)
      {
        goto LABEL_14;
      }

      if (v14 < 0 || v16 >= 99)
      {
        goto LABEL_94;
      }

      result = __strncpy_chk();
      v19 = *(v11 + 24);
      if (v19 < 1)
      {
        v20 = 0;
        v22 = v71;
      }

      else
      {
        v20 = 0;
        v21 = v79;
        v22 = v71;
        do
        {
          ++v20;
          v21 += __gt_utf8ByteLength_utf8_len_table[*v21 >> 4];
        }

        while (v21 < &v79[v19]);
      }

      v23 = *(v11 + 4);
      if (!v23)
      {
        goto LABEL_14;
      }

      v24 = v23 > 50 || v20 >= 6;
      if (!v24 || *v11 == 1 && v20 <= 5 && v23 <= 999 && (*(v11 + 2) & 1) != 0)
      {
        goto LABEL_14;
      }

      if (*(v22 + 36))
      {
        v25 = v6;
        v26 = *(v22 + 16) + v19;
        v69 = v25;
        if (v25)
        {
          v26 += strlen(v25);
        }

        v27 = *(v8 + 522);
        v28 = v27 - 1;
        if (*v15 < v27)
        {
          v28 = *v15;
        }

        v29 = v28 & ~(v28 >> 63);
        v30 = v29 + v26 <= v27 ? v26 : v27 - v29;
        v6 = v69;
        if (v30)
        {
          break;
        }
      }

LABEL_48:
      v79[v19] = 101;
      v79[*(v11 + 24) + 1] = 0;
      v78 = 0;
      *dest = 0u;
      v77 = 0u;
      result = __gt_getWordData(v8, dest, v79);
      v33 = dest[2];
      if (*&dest[2])
      {
        if (*&dest[2] >= 3 * *(v11 + 4))
        {
          *(v11 + 4) = *&dest[2];
          v33 = 1;
        }

        else
        {
          v33 = 0;
        }
      }

      if (*(v11 + 1) == 1)
      {
        v34 = *(v11 + 16);
        v35 = *(v11 + 24) + v34;
        if (v35 > v34)
        {
          v34 = v34;
          do
          {
            if (v34 <= 99)
            {
              *(v12 + v34) = 1;
            }

            ++v34;
          }

          while (v35 != v34);
        }
      }

      v36 = *v9;
      *v9 += 48;
      v37 = ++*(v9 + 8);
      if (v37 > 398)
      {
        goto LABEL_94;
      }

      *(v36 + 56) = *v15;
      v38 = *v9;
      *(v38 + 1) = v33;
      *(v38 + 24) = v6;
      *(v38 + 32) = *(v11 + 4);
      v39 = *(v11 + 8);
      *(v38 + 36) = v39;
      *(v38 + 40) = v71;
      *v38 = 0;
      if (v6 && v39)
      {
        result = strlen(v6);
        v40 = result + *(v11 + 24);
        *(v9 + 1632) = *(v11 + 16);
        *(v9 + 1640) = v40;
      }

      if (!*v15)
      {
        **(v9 + 1616) = v38;
        v41 = *(v9 + 1624) + 1;
        *(v9 + 1624) = v41;
        *(v9 + 1616) += 8;
        if (v41 > 198)
        {
LABEL_94:
          *(v9 + 1626) = 1;
          goto LABEL_108;
        }
      }

      if ((*(v9 + 1626) & 1) == 0)
      {
        result = __gt_tokenizeHelper(v8, (v7 - *(v11 + 24)), *v9, 0, v5);
        if (*(v9 + 1626))
        {
          goto LABEL_108;
        }
      }

LABEL_14:
      v11 = *(v11 + 32);
      if (!v11)
      {
        goto LABEL_108;
      }
    }

    pErrorCode = U_ZERO_ERROR;
    v31 = u_strToLower(dest, 100, (v5 + 2 * v29), v30, "en_us", &pErrorCode);
    pErrorCode = U_ZERO_ERROR;
    u_strToUTF8(__s, 100, 0, dest, v31, &pErrorCode);
    v73 = 0;
    memset(v72, 0, sizeof(v72));
    __gt_getWordData(v8, v72, __s);
    v32 = *(v71 + 36);
    if (DWORD1(v72[0]))
    {
      if (SDWORD1(v72[0]) <= v32)
      {
LABEL_47:
        v19 = *(v11 + 24);
        goto LABEL_48;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    *v71 = 1;
    goto LABEL_47;
  }

LABEL_108:
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __gt_compareParseScoresDescending(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16) - *(a1 + 16);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 > 0.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}