unsigned __int8 *_pcre2_find_bracket_8(unsigned __int8 *result, int a2, int a3)
{
  while (1)
  {
    while (1)
    {
      v3 = *result;
      if (v3 <= 0x60)
      {
        break;
      }

      if (*result <= 0x7Cu)
      {
        switch(v3)
        {
          case 'a':
LABEL_20:
            v5 = result[3];
            goto LABEL_21;
          case 'p':
            v7 = *(result + 1);
            break;
          case 'w':
            v7 = *(result + 5);
            break;
          default:
            goto LABEL_26;
        }

        result += __rev16(v7);
      }

      else
      {
        v4 = v3 - 125;
        if (v3 - 125 > 0x21)
        {
          goto LABEL_26;
        }

        if (((1 << v4) & 0x2AA000000) != 0)
        {
          v6 = result[1];
          goto LABEL_22;
        }

        if (((1 << v4) & 0x6300) != 0)
        {
          if (a3 == bswap32(*(result + 3)) >> 16)
          {
            return result;
          }

          result += _pcre2_OP_lengths_8[*result];
        }

        else if (v3 == 125)
        {
          if (a3 < 0)
          {
            return result;
          }

          result += 3;
        }

        else
        {
LABEL_26:
          result += _pcre2_OP_lengths_8[*result];
          if (a2 && v3 - 29 <= 0x37)
          {
            v8 = *(result - 1);
            if (v8 >= 0xC0)
            {
              result += _pcre2_utf8_table4[v8 & 0x3F];
            }
          }
        }
      }
    }

    if (*result <= 0x5Au)
    {
      break;
    }

    if (v3 - 91 < 3)
    {
      goto LABEL_20;
    }

    if (v3 - 94 >= 3)
    {
      goto LABEL_26;
    }

LABEL_14:
    v5 = result[1];
LABEL_21:
    v6 = 2 * ((v5 - 15) < 2);
LABEL_22:
    result += v6 + _pcre2_OP_lengths_8[*result];
  }

  if (v3 - 85 < 6)
  {
    goto LABEL_14;
  }

  if (*result)
  {
    goto LABEL_26;
  }

  return 0;
}

_BYTE *pcre2_maketables_8(uint64_t a1)
{
  if (a1)
  {
    v1 = (*a1)(1088, *(a1 + 16));
  }

  else
  {
    v1 = malloc(0x440uLL);
  }

  v2 = v1;
  if (v1)
  {
    v3 = 0;
    do
    {
      v2[v3] = cstdlib_tolower(v3);
      ++v3;
    }

    while (v3 != 256);
    v4 = 0;
    do
    {
      if (cstdlib_islower(v4))
      {
        v5 = cstdlib_toupper(v4);
      }

      else
      {
        v5 = cstdlib_tolower(v4);
      }

      v2[v4++ + v3] = v5;
    }

    while (v4 != 256);
    v6 = &v2[v3];
    cstdlib_memset(&v2[v3 + v4], 0, 0x140uLL);
    v7 = 0;
    for (i = 0; i != 256; ++i)
    {
      v9 = v4 + (v7 >> 3);
      if (cstdlib_isdigit(i))
      {
        v2[v9 + 64 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_isupper(i))
      {
        v2[v9 + 96 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_islower(i))
      {
        v2[v9 + 128 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_isalnum(i))
      {
        v6[v9 + 160] |= 1 << (i & 7);
      }

      if (i == 95)
      {
        v2[v4 + 171 + v3] |= 0x80u;
      }

      if (cstdlib_isspace(i))
      {
        v6[v9] |= 1 << (i & 7);
      }

      if (cstdlib_isxdigit(i))
      {
        v2[v9 + 32 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_isgraph(i))
      {
        v2[v9 + 192 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_isprint(i))
      {
        v2[v9 + 224 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_ispunct(i))
      {
        v2[v9 + 256 + v3] |= 1 << (i & 7);
      }

      if (cstdlib_iscntrl(i))
      {
        v2[v9 + 288 + v3] |= 1 << (i & 7);
      }

      ++v7;
    }

    v10 = 0;
    v11 = &v2[v3 + 320 + v4];
    do
    {
      v12 = cstdlib_isspace(v10);
      v13 = cstdlib_isalpha(v10);
      if (v12)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12 != 0;
      }

      if (cstdlib_isdigit(v10))
      {
        v15 |= 4u;
      }

      if (cstdlib_isxdigit(v10))
      {
        v15 |= 8u;
      }

      if (cstdlib_isalnum(v10))
      {
        v16 = 1;
      }

      else
      {
        v16 = v10 == 95;
      }

      v17 = v15 + 16;
      if (!v16)
      {
        v17 = v15;
      }

      *v11++ = v17;
      ++v10;
    }

    while (v10 != 256);
  }

  return v2;
}

uint64_t pcre2_match_8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, __int128 *a7)
{
  v11 = a3;
  v121 = *MEMORY[0x277D85DE8];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  memset(v114, 0, sizeof(v114));
  memset(v113, 0, 40);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  memset(v120, 0, sizeof(v120));
  v101 = v120;
  if (a3 == -1)
  {
    v11 = _pcre2_strlen_8(a2);
  }

  if ((a5 & 0x1FFFDFC0) != 0)
  {
    return 4294967262;
  }

  v14 = 4294967245;
  if (!a1 || !a2 || !a6)
  {
    return v14;
  }

  if (v11 < a4)
  {
    return 4294967263;
  }

  if (*(a1 + 80) != 1346589253)
  {
    return 4294967265;
  }

  v16 = *(a1 + 96);
  if ((v16 & 7) != 1)
  {
    return 4294967264;
  }

  v17 = *(a1 + 88);
  v18 = (a5 >> 4) & 1;
  if ((a5 & 0x20) != 0)
  {
    v18 = 2;
  }

  LOWORD(v106) = v18;
  if (v18)
  {
    if (((v17 | a5) & 0x20000000) != 0)
    {
      return 4294967262;
    }
  }

  __s = &a2[a4];
  v96 = v17;
  v93 = v17 & 0x80000;
  if ((a5 & 0x40000000) == 0 && v93)
  {
    v19 = &a2[a4];
    if (a4)
    {
      if (v11 > a4 && (*__s & 0xC0) == 0x80)
      {
        return 4294967260;
      }

      v20 = *(a1 + 124);
      v19 = &a2[a4];
      if (*(a1 + 124))
      {
        v19 = &a2[a4];
        if (a4 >= 1)
        {
          v21 = &a2[a4];
LABEL_28:
          v22 = v21 - 1;
          while (1)
          {
            v19 = v22;
            if (v22 <= a2)
            {
              break;
            }

            --v22;
            if ((*v19 & 0xC0) != 0x80)
            {
              v21 = v19;
              if (--v20)
              {
                goto LABEL_28;
              }

              break;
            }
          }
        }
      }
    }

    v23 = v19 - a2;
    valid = _pcre2_valid_utf_8(v19, v11 - (v19 - a2), (a6 + 64));
    *(a6 + 76) = valid;
    if (valid)
    {
      v14 = valid;
      *(a6 + 64) += v23;
      return v14;
    }
  }

  if (a7)
  {
    v25 = *(a7 + 5);
    if (v25 != -1 && (*(a1 + 90) & 0x80) == 0)
    {
      return 4294967240;
    }

    v98 = *a7;
    *&v99 = *(a7 + 2);
  }

  else
  {
    v98 = *a1;
    *&v99 = *(a1 + 16);
    a7 = &_pcre2_default_match_context_8;
    v25 = *(&xmmword_287EEF1C8 + 1);
  }

  v26 = &a2[v11];
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  *&v113[1] = v114;
  LODWORD(v114[0]) = 2;
  if (v25 == -1)
  {
    v29 = &a2[v11];
  }

  else
  {
    v29 = &a2[v25];
  }

  v92 = v29;
  *&v115 = a2;
  *(&v115 + 1) = v11;
  DWORD2(v119) = 0;
  *(&v113[1] + 8) = vextq_s8(*(a7 + 24), *(a7 + 24), 8uLL);
  *&v105 = a4;
  *(&v107 + 1) = a2;
  *&v108 = &a2[v11];
  v83 = v28;
  DWORD1(v112) = (v16 >> 14) & 0xC | a5;
  v90 = v27;
  DWORD2(v112) = v27;
  HIDWORD(v102) = 0;
  LODWORD(v103) = (v28 >> 12) & 1;
  v110 = 0uLL;
  WORD2(v106) = *(a1 + 134);
  WORD3(v106) = *(a1 + 132);
  *(&v106 + 1) = a1 + 136;
  *&v107 = a1 + 136 + WORD3(v106) * WORD2(v106);
  WORD1(v106) = *(a1 + 120);
  *&v113[0] = 0;
  v14 = 4294967252;
  v30 = *(a1 + 122);
  if (v30 > 3)
  {
    switch(v30)
    {
      case 4u:
        v32 = 1;
        break;
      case 5u:
        v32 = 2;
        break;
      case 6u:
        DWORD2(v113[0]) = 1;
        BYTE12(v113[0]) = 0;
        goto LABEL_58;
      default:
        return v14;
    }

    DWORD1(v113[0]) = v32;
  }

  else
  {
    switch(v30)
    {
      case 1u:
        DWORD2(v113[0]) = 1;
        v31 = 13;
        break;
      case 2u:
        DWORD2(v113[0]) = 1;
        v31 = 10;
        break;
      case 3u:
        DWORD2(v113[0]) = 2;
        WORD6(v113[0]) = 2573;
        goto LABEL_58;
      default:
        return v14;
    }

    BYTE12(v113[0]) = v31;
  }

LABEL_58:
  v33 = *(a1 + 128);
  v34 = 16 * v33;
  v35 = 16 * v33 + 128;
  LODWORD(v36) = *(a7 + 12);
  v37 = *(a1 + 100);
  if (v36 >= v37)
  {
    v36 = v37;
  }

  else
  {
    v36 = v36;
  }

  *(&v101 + 1) = v36;
  *&v102 = vmin_u32(*(a7 + 52), *(a1 + 104));
  if (v33 > 0x78)
  {
    *(&v99 + 1) = 10 * v35;
    if (v36 < (10 * v35) >> 10)
    {
      if (v35 > v36 << 10)
      {
        return 4294967233;
      }

      *(&v99 + 1) = (v36 << 10) - (v36 << 10) % v35;
    }

    v38 = (v98)();
    *&v100 = v38;
    if (!v38)
    {
      return 4294967248;
    }

    v39 = *(&v99 + 1);
    v34 = 16 * *(a1 + 128);
  }

  else
  {
    v38 = v101;
    v39 = 0x5000 / v35 * v35;
    *(&v99 + 1) = v39;
    *&v100 = v101;
  }

  *(&v100 + 1) = v38 + v39;
  cstdlib_memset((v38 + 128), 255, v34);
  v40 = *(a1 + 24);
  v41 = v40 + 256;
  *(&v103 + 1) = v40;
  *&v104 = v40 + 256;
  *(&v104 + 1) = v40 + 832;
  v42 = *(a1 + 96);
  v88 = v42 & 0x10;
  if ((v42 & 0x10) != 0)
  {
    v43 = *(a1 + 112);
    v84 = 0;
    if ((v42 & 0x20) != 0)
    {
      v85 = *(v41 + v43);
    }

    else
    {
      v85 = *(a1 + 112);
    }
  }

  else
  {
    LODWORD(v43) = 0;
    v85 = 0;
    v44 = (v83 >> 9) & 1;
    if ((v42 & 0x40) == 0)
    {
      v44 = 1;
    }

    if (v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = a1 + 40;
    }

    v84 = v45;
  }

  v81 = __s - 1;
  v89 = (v96 >> 19) & 1;
  __c = v43;
  v87 = *(a1 + 96);
  v91 = v35;
  if ((v42 & 0x80) != 0)
  {
    v78 = *(a1 + 116);
    if ((v42 & 0x100) != 0)
    {
      v79 = *(v41 + *(a1 + 116));
    }

    else
    {
      v79 = *(a1 + 116);
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v46 = 0;
  v97 = 0;
  v94 = v90 | a5;
  v47 = v90;
  v49 = (v42 & 0x10) != 0 || v84 != 0;
  v82 = v49;
  v80 = v88 >> 4;
  for (i = &a2[a4]; ; i = v54)
  {
    if (*(a1 + 90))
    {
      goto LABEL_200;
    }

    if ((v47 & 0x100) == 0)
    {
      v51 = v26;
      goto LABEL_94;
    }

    if (v93)
    {
      v51 = i;
      if (i >= v26)
      {
        goto LABEL_94;
      }

LABEL_102:
      if (DWORD1(v113[0]))
      {
        if (v51 < v108 && _pcre2_is_newline_8(v51, SDWORD1(v113[0]), v108, v113 + 2, v89))
        {
          goto LABEL_94;
        }
      }

      else if (v51 <= v108 - DWORD2(v113[0]) && *v51 == BYTE12(v113[0]) && (DWORD2(v113[0]) == 1 || v51[1] == BYTE13(v113[0])))
      {
        goto LABEL_94;
      }

      ++v51;
      while (v51 < v26)
      {
        v55 = *v51++;
        if ((v55 & 0xC0) != 0x80)
        {
          --v51;
          goto LABEL_102;
        }
      }
    }

    else
    {
      v51 = i;
      if (i < v26)
      {
        do
        {
          if (DWORD1(v113[0]))
          {
            if (v51 < v108 && _pcre2_is_newline_8(v51, SDWORD1(v113[0]), v108, v113 + 2, v89))
            {
              break;
            }
          }

          else if (v51 <= v108 - DWORD2(v113[0]) && *v51 == BYTE12(v113[0]) && (DWORD2(v113[0]) == 1 || v51[1] == BYTE13(v113[0])))
          {
            break;
          }

          ++v51;
        }

        while (v51 < v26);
      }
    }

LABEL_94:
    if (v94 < 0)
    {
      break;
    }

    if (!v88)
    {
      if ((v83 & 0x200) != 0)
      {
        if (i > *(&v107 + 1) + a4)
        {
          if (v93)
          {
            if (i >= v51)
            {
              goto LABEL_189;
            }

LABEL_146:
            if (DWORD1(v113[0]))
            {
              if (i > *(&v107 + 1) && _pcre2_was_newline_8(i, SDWORD1(v113[0]), *(&v107 + 1), v113 + 2, v89))
              {
                goto LABEL_189;
              }

LABEL_154:
              ++i;
              while (i < v51)
              {
                v60 = *i++;
                if ((v60 & 0xC0) != 0x80)
                {
                  --i;
                  goto LABEL_146;
                }
              }
            }

            else if (i < *(&v107 + 1) + DWORD2(v113[0]) || *(i - DWORD2(v113[0])) != BYTE12(v113[0]) || DWORD2(v113[0]) != 1 && *(i - DWORD2(v113[0]) + 1) != BYTE13(v113[0]))
            {
              goto LABEL_154;
            }
          }

          else
          {
            while (i < v51)
            {
              if (DWORD1(v113[0]))
              {
                if (i > *(&v107 + 1) && _pcre2_was_newline_8(i, SDWORD1(v113[0]), *(&v107 + 1), v113 + 2, v89))
                {
                  break;
                }
              }

              else if (i >= *(&v107 + 1) + DWORD2(v113[0]) && *(i - DWORD2(v113[0])) == BYTE12(v113[0]) && (DWORD2(v113[0]) == 1 || *(i - DWORD2(v113[0]) + 1) == BYTE13(v113[0])))
              {
                break;
              }

              ++i;
            }
          }

LABEL_189:
          if (*(i - 1) == 13)
          {
            v66 = (DWORD1(v113[0]) - 1) > 1 || i >= v51;
            if (!v66 && *i == 10)
            {
              ++i;
            }
          }
        }

LABEL_196:
        v47 = v90;
        v63 = v106;
        v26 = v108;
        v54 = i;
      }

      else
      {
        if (!v84)
        {
          goto LABEL_196;
        }

        do
        {
          v54 = i;
          if (i >= v51)
          {
            break;
          }

          ++i;
        }

        while (((*(v84 + (*v54 >> 3)) >> (*v54 & 7)) & 1) == 0);
        v63 = v106;
        v26 = v108;
        if (v106)
        {
          v64 = 0;
        }

        else
        {
          v64 = v54 >= v108;
        }

        if (v64)
        {
LABEL_259:
          v14 = 0;
          i = v54;
          goto LABEL_261;
        }

        v47 = v90;
      }

      v65 = v87;
      goto LABEL_198;
    }

    v52 = cstdlib_memchr(i, __c, &v51[-i]);
    v53 = v52;
    if (__c == v85)
    {
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v51;
      }
    }

    else
    {
      v61 = cstdlib_memchr(i, v85, &v51[-i]);
      if (v53)
      {
        if (v53 < v61 || v61 == 0)
        {
          v54 = v53;
        }

        else
        {
          v54 = v61;
        }
      }

      else if (v61)
      {
        v54 = v61;
      }

      else
      {
        v54 = v51;
      }
    }

    v65 = v87;
    v63 = v106;
    v26 = v108;
    if (!v106 && v54 >= v108)
    {
      goto LABEL_259;
    }

    v47 = v90;
LABEL_198:
    if (v63)
    {
      goto LABEL_199;
    }

    if (v26 - v54 < *(a1 + 126))
    {
      goto LABEL_255;
    }

    if ((v65 & 0x80) == 0 || (v26 - v54) > 0x7CF || (v73 = &v54[v80], &v54[v80] <= v81))
    {
LABEL_199:
      i = v54;
      goto LABEL_200;
    }

    if (v73 >= v26)
    {
      v74 = &v54[v80];
    }

    else
    {
      v74 = cstdlib_memchr(&v54[v80], v78, v26 - v73);
      if (v78 == v79)
      {
        goto LABEL_232;
      }

      if (!v74)
      {
        v74 = cstdlib_memchr(v73, v79, v26 - v73);
LABEL_232:
        if (!v74)
        {
          v74 = v26;
        }
      }
    }

    v81 = v74;
    if (v74 >= v26)
    {
      goto LABEL_255;
    }

    i = v54;
    v47 = v90;
LABEL_200:
    if (i > v92)
    {
      goto LABEL_258;
    }

    *&v116 = i - a2;
    DWORD2(v119) |= 1u;
    *&v109 = i;
    *(&v109 + 1) = i;
    DWORD2(v102) = 0;
    *(&v105 + 1) = 0;
    HIDWORD(v112) = 0;
    matched = match_1(i, v107, (a6 + 80), *(a6 + 74), *(a1 + 128), v91, &v98);
    v14 = matched;
    v68 = HIDWORD(v102) != 0;
    v69 = v46 == 0;
    v70 = !v68 || !v69;
    if (v68 && v69)
    {
      v46 = v109;
    }

    v71 = v97;
    if (!v70)
    {
      v71 = i;
    }

    v97 = v71;
    if (matched <= -995)
    {
      if (matched == -996)
      {
        goto LABEL_213;
      }

      if (matched != -995)
      {
        if (matched != -997)
        {
          goto LABEL_262;
        }

LABEL_258:
        v14 = 0;
        goto LABEL_262;
      }

      v54 = *(&v111 + 1);
      if (*(&v111 + 1) <= i)
      {
LABEL_213:
        LODWORD(v113[0]) = 0;
        v54 = (i + 1);
        if (v93 && v54 < v26)
        {
          v72 = &v26[~i];
          while ((*v54 & 0xC0) == 0x80)
          {
            ++v54;
            if (!--v72)
            {
              v54 = v26;
              break;
            }
          }
        }
      }
    }

    else
    {
      if (!matched || matched == -993)
      {
        goto LABEL_213;
      }

      if (matched != -994)
      {
        goto LABEL_262;
      }

      LODWORD(v113[0]) = HIDWORD(v112);
      v54 = i;
    }

    if ((v47 & 0x100) != 0)
    {
      if (DWORD1(v113[0]))
      {
        if (i < v108 && _pcre2_is_newline_8(i, SDWORD1(v113[0]), v108, v113 + 2, v89))
        {
          goto LABEL_258;
        }
      }

      else if (i <= v108 - DWORD2(v113[0]) && *i == BYTE12(v113[0]) && (DWORD2(v113[0]) == 1 || *(i + 1) == BYTE13(v113[0])))
      {
        goto LABEL_258;
      }
    }

    if (v94 < 0 || v54 > v26)
    {
LABEL_255:
      v14 = 0;
      i = v54;
      goto LABEL_262;
    }

    if (v54 > __s && *(v54 - 1) == 13 && v54 < v26 && *v54 == 10 && (*(a1 + 97) & 8) == 0 && ((DWORD1(v113[0]) - 1) < 2 || DWORD2(v113[0]) == 2))
    {
      ++v54;
    }

    *&v110 = 0;
  }

  if (!v82)
  {
    goto LABEL_196;
  }

  if (i < v51)
  {
    v56 = *i;
    v58 = v56 != __c && v56 != v85 || v88 == 0;
    v59 = !v58;
    if (v58 && v84)
    {
      v59 = (*(v84 + (*i >> 3)) >> (v56 & 7)) & 1;
    }

    if (v59)
    {
      goto LABEL_196;
    }
  }

  v14 = 0;
LABEL_261:
  v26 = v51;
LABEL_262:
  if (v100 != v101)
  {
    (*(&v98 + 1))(v100, v99);
  }

  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 40) = v110;
  *(a6 + 72) = 0;
  if (v14 == 1)
  {
    if (SDWORD2(v105) < 2 * *(a6 + 74))
    {
      v14 = (SDWORD2(v105) / 2 + 1);
    }

    else
    {
      v14 = 0;
    }

    *(a6 + 64) = i - a2;
    v76 = *(&v109 + 1);
    v77 = v109;
    if (*(&v109 + 1) <= *(&v108 + 1))
    {
      v76 = *(&v108 + 1);
    }

    *(a6 + 76) = v14;
    *(a6 + 48) = v77 - a2;
    *(a6 + 56) = v76 - a2;
  }

  else
  {
    *(a6 + 40) = *(&v110 + 1);
    if (v14 == -2 || !v14)
    {
      if (v97)
      {
        *(a6 + 80) = v97 - a2;
        *(a6 + 88) = v26 - a2;
        *(a6 + 56) = v26 - a2;
        *(a6 + 64) = v97 - a2;
        *(a6 + 48) = v46 - a2;
        v14 = 4294967294;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }
    }

    *(a6 + 76) = v14;
  }

  return v14;
}

uint64_t match_1(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, unsigned int a4, int a5, unsigned __int8 *a6, uint64_t a7)
{
  v8 = a6;
  v1241 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v1247 = 0;
  v14 = *(a7 + 232);
  v1243 = (v14 >> 19) & 1;
  v1244 = v14 & 0x80000;
  __n = (a6 - 80);
  v15 = *(a7 + 32);
  *(v15 + 48) = 0;
  *(v15 + 104) = 0xFFFFFFFFLL;
  *(v15 + 80) = a1;
  *(v15 + 88) = a1;
  *(v15 + 96) = 0;
  *(v15 + 112) = xmmword_26ED1CDB0;
  v16 = -a6;
LABEL_2:
  *(v15 + 52) = v12;
  *v15 = a2;
  *(v15 + 32) = v8;
  if (v12)
  {
    *(v15 + 112) = v15 - *(a7 + 32);
    if ((v12 & 0xFFFF0000) == 0x40000)
    {
      *(v15 + 104) = v12;
    }
  }

  v17 = *(a7 + 72);
  *(a7 + 72) = v17 + 1;
  if (v17 >= *(a7 + 64))
  {
    return 4294967249;
  }

  if (v10 >= *(a7 + 68))
  {
    return 4294967243;
  }

  while (2)
  {
    v18 = *a2;
    *(v15 + 73) = v18;
    v19 = 4294967252;
    v20 = 0;
    switch(v18)
    {
      case 0u:
      case 0xA0u:
        if (*(v15 + 104) != -1)
        {
          v43 = v15;
          do
          {
            v44 = *(v43 + 14);
            if (v44 == -1)
            {
              return 4294967252;
            }

            v13 = (*(a7 + 32) + v44);
            v43 = &v13[v16];
          }

          while (*(v13 + 27) << 16 != 0x40000);
          *(v43 + 10) = *(v15 + 80);
          *(v43 + 12) = *(v15 + 96);
          *v43 += 3;
          v15 = &v13[v16];
          goto LABEL_2990;
        }

        v335 = *(v15 + 80);
        v336 = *(v15 + 88);
        if (v335 == v336)
        {
          v516 = *(a7 + 228);
          if ((v516 & 4) != 0 || (v516 & 8) != 0 && v335 == (*(a7 + 152) + *(a7 + 112)))
          {
            goto LABEL_1212;
          }
        }

        if (v335 < *(a7 + 160) && ((*(a7 + 232) | *(a7 + 228)) & 0x20000000) != 0)
        {
          v20 = 0;
          v19 = 0;
          if (!v18)
          {
            goto LABEL_2416;
          }
        }

        else
        {
          *(a7 + 168) = v335;
          *(a7 + 120) = *(v15 + 120);
          *(a7 + 192) = *(v15 + 96);
          if (v335 > *(a7 + 184))
          {
            *(a7 + 184) = v335;
          }

          v1233 = *(a7 + 152);
          *a3 = &v336[-v1233];
          a3[1] = &v335[-v1233];
          if (a5 + 1 < a4)
          {
            v1234 = a5 + 1;
          }

          else
          {
            v1234 = a4;
          }

          v1235 = 2 * v1234;
          v1236 = 2 * v1234 - 2;
          cstdlib_memcpy(a3 + 2, (v15 + 128), 8 * v1236);
          v1237 = (v1235 - 1);
          if (*(v15 + 120) + 2 <= v1237)
          {
            do
            {
              a3[v1237] = -1;
              v1237 = v1236;
              v100 = *(v15 + 120) + 2 > v1236;
              v19 = 1;
              --v1236;
            }

            while (!v100);
          }

          else
          {
            return 1;
          }
        }

        return v19;
      case 1u:
        v139 = *(v15 + 80);
        v140 = *(a7 + 152);
        goto LABEL_237;
      case 2u:
        v139 = *(v15 + 80);
        v140 = (*(a7 + 152) + *(a7 + 112));
LABEL_237:
        if (v139 == v140)
        {
          goto LABEL_2385;
        }

        goto LABEL_2911;
      case 3u:
        *(v15 + 88) = *(v15 + 80);
        goto LABEL_2385;
      case 4u:
      case 5u:
        v51 = *(v15 + 80);
        if (v51 == *(a7 + 152))
        {
          goto LABEL_766;
        }

        if (!v1244)
        {
          v52 = v51 - 1;
          v53 = *(v51 - 1);
          goto LABEL_761;
        }

        v52 = *(v15 + 80);
        do
        {
          v54 = *--v52;
          v53 = v54;
        }

        while ((v54 & 0xC0) == 0x80);
        if (v53 < 0xC0)
        {
          goto LABEL_761;
        }

        v55 = v52[1] & 0x3F;
        if ((v53 & 0x20) == 0)
        {
          v53 = v52[1] & 0x3F | ((v53 & 0x1F) << 6);
          goto LABEL_761;
        }

        if ((v53 & 0x10) != 0)
        {
          if ((v53 & 8) != 0)
          {
            v794 = v52[2] & 0x3F;
            v795 = v52[3] & 0x3F;
            v796 = v52[4] & 0x3F;
            if ((v53 & 4) == 0)
            {
              v53 = ((v53 & 3) << 24) | (v55 << 18) | (v794 << 12) | (v795 << 6) | v796;
              goto LABEL_761;
            }

            v623 = ((v53 & 1) << 30) | (v55 << 24) | (v794 << 18) | (v795 << 12) | (v796 << 6);
            v624 = v52[5];
          }

          else
          {
            v623 = ((v53 & 7) << 18) | (v55 << 12) | ((v52[2] & 0x3F) << 6);
            v624 = v52[3];
          }
        }

        else
        {
          v623 = ((v53 & 0xF) << 12) | (v55 << 6);
          v624 = v52[2];
        }

        v53 = v623 & 0xFFFFFFC0 | v624 & 0x3F;
LABEL_761:
        if (v52 < *(a7 + 176))
        {
          *(a7 + 176) = v52;
        }

        if ((*(a7 + 234) & 2) != 0)
        {
          v351 = v53 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v53 & 0x7F | (_pcre2_ucd_stage1_8[v53 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
        }

        else if (v53 > 0xFF)
        {
LABEL_766:
          v351 = 0;
        }

        else
        {
          v351 = (*(*(a7 + 104) + v53) >> 4) & 1;
        }

        v505 = *(a7 + 160);
        if (v51 >= v505)
        {
          v510 = *(a7 + 128);
          if (*(a7 + 128))
          {
            if (v51 > *(a7 + 176))
            {
              *(a7 + 76) = 1;
              if (v510 != 1)
              {
                return 4294967294;
              }
            }
          }

          goto LABEL_1132;
        }

        v506 = v51 + 1;
        if (v1244)
        {
          v507 = v51 + 1;
          if (v506 < v505)
          {
            v507 = v51 + 1;
            while ((*v507 & 0xC0) == 0x80)
            {
              if (++v507 == v505)
              {
                v507 = *(a7 + 160);
                break;
              }
            }
          }

          v508 = *v51;
          if (v508 < 0xC0)
          {
            goto LABEL_1127;
          }

          v509 = *v506 & 0x3F;
          if ((v508 & 0x20) != 0)
          {
            if ((v508 & 0x10) != 0)
            {
              if ((v508 & 8) != 0)
              {
                v809 = v51[2] & 0x3F;
                v810 = v51[3] & 0x3F;
                v811 = v51[4] & 0x3F;
                if ((v508 & 4) == 0)
                {
                  v508 = ((v508 & 3) << 24) | (v509 << 18) | (v809 << 12) | (v810 << 6) | v811;
                  goto LABEL_1127;
                }

                v632 = ((v508 & 1) << 30) | (v509 << 24) | (v809 << 18) | (v810 << 12) | (v811 << 6);
                v633 = v51[5];
              }

              else
              {
                v632 = ((v508 & 7) << 18) | (v509 << 12) | ((v51[2] & 0x3F) << 6);
                v633 = v51[3];
              }
            }

            else
            {
              v632 = ((v508 & 0xF) << 12) | (v509 << 6);
              v633 = v51[2];
            }

            v508 = v632 & 0xFFFFFFC0 | v633 & 0x3F;
            goto LABEL_1127;
          }

          v508 = v509 & 0xFFFFF83F | ((v508 & 0x1F) << 6);
        }

        else
        {
          v508 = *v51;
          v507 = v51 + 1;
        }

LABEL_1127:
        if (v507 > *(a7 + 184))
        {
          *(a7 + 184) = v507;
        }

        if ((*(a7 + 234) & 2) != 0)
        {
          v511 = v508 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v508 & 0x7F | (_pcre2_ucd_stage1_8[v508 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
LABEL_1133:
          *v15 = a2 + 1;
          if (*a2 == 5)
          {
            if (v511 != v351)
            {
              goto LABEL_2990;
            }
          }

          else if (v511 == v351)
          {
            goto LABEL_2990;
          }

          goto LABEL_2911;
        }

        if (v508 <= 0xFF)
        {
          v511 = (*(*(a7 + 104) + v508) >> 4) & 1;
          goto LABEL_1133;
        }

LABEL_1132:
        v511 = 0;
        goto LABEL_1133;
      case 6u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v143 = *v80;
        if (v1244 && v143 >= 0xC0)
        {
          if ((v143 & 0x20) != 0)
          {
            v638 = v80[1] & 0x3F;
            if ((v143 & 0x10) != 0)
            {
              if ((v143 & 8) != 0)
              {
                v818 = v80[2] & 0x3F;
                v819 = v80[3] & 0x3F;
                v820 = v80[4] & 0x3F;
                if ((v143 & 4) != 0)
                {
                  v143 = ((v143 & 1) << 30) | (v638 << 24) | (v818 << 18) | (v819 << 12) | (v820 << 6) | v80[5] & 0x3F;
                  v639 = v80 + 6;
                }

                else
                {
                  v143 = ((v143 & 3) << 24) | (v638 << 18) | (v818 << 12) | (v819 << 6) | v820;
                  v639 = v80 + 5;
                }
              }

              else
              {
                v143 = ((v143 & 7) << 18) | (v638 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v639 = v80 + 4;
              }
            }

            else
            {
              v143 = ((v143 & 0xF) << 12) | (v638 << 6) | v80[2] & 0x3F;
              v639 = v80 + 3;
            }

            *(v15 + 80) = v639;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v143 = v80[1] & 0x3F | ((v143 & 0x1F) << 6);
          }

          if (v143 > 0xFF)
          {
            goto LABEL_2385;
          }
        }

        if ((*(*(a7 + 104) + v143) & 4) == 0)
        {
          goto LABEL_2385;
        }

        goto LABEL_1212;
      case 7u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v158 = *v80;
        if (!v1244 || v158 < 0xC0 || ((v158 & 0x20) != 0 ? ((v645 = v80[1] & 0x3F, (v158 & 0x10) != 0) ? ((v158 & 8) != 0 ? ((v830 = v80[2] & 0x3F, v831 = v80[3] & 0x3F, v832 = v80[4] & 0x3F, (v158 & 4) != 0) ? (v158 = ((v158 & 1) << 30) | (v645 << 24) | (v830 << 18) | (v831 << 12) | (v832 << 6) | v80[5] & 0x3F, v646 = v80 + 6) : (v158 = ((v158 & 3) << 24) | (v645 << 18) | (v830 << 12) | (v831 << 6) | v832, v646 = v80 + 5)) : (v158 = ((v158 & 7) << 18) | (v645 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F, v646 = v80 + 4)) : (v158 = ((v158 & 0xF) << 12) | (v645 << 6) | v80[2] & 0x3F, v646 = v80 + 3), *(v15 + 80) = v646) : (*(v15 + 80) = v80 + 2, v158 = v80[1] & 0x3F | ((v158 & 0x1F) << 6)), v158 <= 0xFF))
        {
          if ((*(*(a7 + 104) + v158) & 4) != 0)
          {
            goto LABEL_2385;
          }
        }

        goto LABEL_1212;
      case 8u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v133 = *v80;
        if (v1244 && v133 >= 0xC0)
        {
          if ((v133 & 0x20) != 0)
          {
            v626 = v80[1] & 0x3F;
            if ((v133 & 0x10) != 0)
            {
              if ((v133 & 8) != 0)
              {
                v800 = v80[2] & 0x3F;
                v801 = v80[3] & 0x3F;
                v802 = v80[4] & 0x3F;
                if ((v133 & 4) != 0)
                {
                  v133 = ((v133 & 1) << 30) | (v626 << 24) | (v800 << 18) | (v801 << 12) | (v802 << 6) | v80[5] & 0x3F;
                  v627 = v80 + 6;
                }

                else
                {
                  v133 = ((v133 & 3) << 24) | (v626 << 18) | (v800 << 12) | (v801 << 6) | v802;
                  v627 = v80 + 5;
                }
              }

              else
              {
                v133 = ((v133 & 7) << 18) | (v626 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v627 = v80 + 4;
              }
            }

            else
            {
              v133 = ((v133 & 0xF) << 12) | (v626 << 6) | v80[2] & 0x3F;
              v627 = v80 + 3;
            }

            *(v15 + 80) = v627;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v133 = v80[1] & 0x3F | ((v133 & 0x1F) << 6);
          }

          if (v133 > 0xFF)
          {
            goto LABEL_2385;
          }
        }

        if ((*(*(a7 + 104) + v133) & 1) == 0)
        {
          goto LABEL_2385;
        }

        goto LABEL_1212;
      case 9u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v141 = *v80;
        if (!v1244 || v141 < 0xC0 || ((v141 & 0x20) != 0 ? ((v634 = v80[1] & 0x3F, (v141 & 0x10) != 0) ? ((v141 & 8) != 0 ? ((v812 = v80[2] & 0x3F, v813 = v80[3] & 0x3F, v814 = v80[4] & 0x3F, (v141 & 4) != 0) ? (v141 = ((v141 & 1) << 30) | (v634 << 24) | (v812 << 18) | (v813 << 12) | (v814 << 6) | v80[5] & 0x3F, v635 = v80 + 6) : (v141 = ((v141 & 3) << 24) | (v634 << 18) | (v812 << 12) | (v813 << 6) | v814, v635 = v80 + 5)) : (v141 = ((v141 & 7) << 18) | (v634 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F, v635 = v80 + 4)) : (v141 = ((v141 & 0xF) << 12) | (v634 << 6) | v80[2] & 0x3F, v635 = v80 + 3), *(v15 + 80) = v635) : (*(v15 + 80) = v80 + 2, v141 = v80[1] & 0x3F | ((v141 & 0x1F) << 6)), v141 <= 0xFF))
        {
          if (*(*(a7 + 104) + v141))
          {
            goto LABEL_2385;
          }
        }

        goto LABEL_1212;
      case 0xAu:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v151 = *v80;
        if (v1244 && v151 >= 0xC0)
        {
          if ((v151 & 0x20) != 0)
          {
            v640 = v80[1] & 0x3F;
            if ((v151 & 0x10) != 0)
            {
              if ((v151 & 8) != 0)
              {
                v821 = v80[2] & 0x3F;
                v822 = v80[3] & 0x3F;
                v823 = v80[4] & 0x3F;
                if ((v151 & 4) != 0)
                {
                  v151 = ((v151 & 1) << 30) | (v640 << 24) | (v821 << 18) | (v822 << 12) | (v823 << 6) | v80[5] & 0x3F;
                  v641 = v80 + 6;
                }

                else
                {
                  v151 = ((v151 & 3) << 24) | (v640 << 18) | (v821 << 12) | (v822 << 6) | v823;
                  v641 = v80 + 5;
                }
              }

              else
              {
                v151 = ((v151 & 7) << 18) | (v640 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v641 = v80 + 4;
              }
            }

            else
            {
              v151 = ((v151 & 0xF) << 12) | (v640 << 6) | v80[2] & 0x3F;
              v641 = v80 + 3;
            }

            *(v15 + 80) = v641;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v151 = v80[1] & 0x3F | ((v151 & 0x1F) << 6);
          }

          if (v151 > 0xFF)
          {
            goto LABEL_2385;
          }
        }

        if ((*(*(a7 + 104) + v151) & 0x10) == 0)
        {
          goto LABEL_2385;
        }

        goto LABEL_1212;
      case 0xBu:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v142 = *v80;
        if (!v1244 || v142 < 0xC0 || ((v142 & 0x20) != 0 ? ((v636 = v80[1] & 0x3F, (v142 & 0x10) != 0) ? ((v142 & 8) != 0 ? ((v815 = v80[2] & 0x3F, v816 = v80[3] & 0x3F, v817 = v80[4] & 0x3F, (v142 & 4) != 0) ? (v142 = ((v142 & 1) << 30) | (v636 << 24) | (v815 << 18) | (v816 << 12) | (v817 << 6) | v80[5] & 0x3F, v637 = v80 + 6) : (v142 = ((v142 & 3) << 24) | (v636 << 18) | (v815 << 12) | (v816 << 6) | v817, v637 = v80 + 5)) : (v142 = ((v142 & 7) << 18) | (v636 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F, v637 = v80 + 4)) : (v142 = ((v142 & 0xF) << 12) | (v636 << 6) | v80[2] & 0x3F, v637 = v80 + 3), *(v15 + 80) = v637) : (*(v15 + 80) = v80 + 2, v142 = v80[1] & 0x3F | ((v142 & 0x1F) << 6)), v142 <= 0xFF))
        {
          if ((*(*(a7 + 104) + v142) & 0x10) != 0)
          {
            goto LABEL_2385;
          }
        }

        goto LABEL_1212;
      case 0xCu:
        v162 = *(a7 + 244);
        v163 = *(v15 + 80);
        v157 = *(a7 + 160);
        if (v162)
        {
          if (v163 < v157)
          {
            if (_pcre2_is_newline_8(v163, v162, v157, (a7 + 248), v1243))
            {
              goto LABEL_1212;
            }

            v157 = *(a7 + 160);
          }
        }

        else
        {
          v499 = *(a7 + 248);
          if (v163 <= v157 - v499 && *v163 == *(a7 + 252) && (v499 == 1 || v163[1] == *(a7 + 253)))
          {
            goto LABEL_1212;
          }
        }

        v500 = *(a7 + 128);
        if (*(a7 + 128))
        {
          v501 = *(v15 + 80);
          if (v501 == (v157 - 1) && !*(a7 + 244) && *(a7 + 248) == 2 && *v501 == *(a7 + 252))
          {
            *(a7 + 76) = 1;
            if (v500 != 1)
            {
              return 4294967294;
            }
          }
        }

LABEL_1096:
        v63 = *(v15 + 80);
        if (v63 >= v157)
        {
          goto LABEL_1209;
        }

        v502 = v63 + 1;
        *(v15 + 80) = v502;
        if (v1244 && v502 < v157)
        {
          do
          {
            if ((*v502 & 0xC0) != 0x80)
            {
              break;
            }

            *(v15 + 80) = ++v502;
          }

          while (v502 != v157);
        }

        goto LABEL_2255;
      case 0xDu:
        v157 = *(a7 + 160);
        goto LABEL_1096;
      case 0xEu:
        v63 = *(v15 + 80);
        if (v63 >= *(a7 + 160))
        {
          goto LABEL_1209;
        }

        v123 = v63 + 1;
        goto LABEL_200;
      case 0xFu:
      case 0x10u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v81 = *v80;
        if (v1244 && v81 >= 0xC0)
        {
          if ((v81 & 0x20) != 0)
          {
            v524 = v80[1] & 0x3F;
            if ((v81 & 0x10) != 0)
            {
              if ((v81 & 8) != 0)
              {
                v773 = v80[2] & 0x3F;
                v774 = v80[3] & 0x3F;
                v775 = v80[4] & 0x3F;
                if ((v81 & 4) != 0)
                {
                  v81 = ((v81 & 1) << 30) | (v524 << 24) | (v773 << 18) | (v774 << 12) | (v775 << 6) | v80[5] & 0x3F;
                  v525 = v80 + 6;
                }

                else
                {
                  v81 = ((v81 & 3) << 24) | (v524 << 18) | (v773 << 12) | (v774 << 6) | v775;
                  v525 = v80 + 5;
                }
              }

              else
              {
                v81 = ((v81 & 7) << 18) | (v524 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v525 = v80 + 4;
              }
            }

            else
            {
              v81 = ((v81 & 0xF) << 12) | (v524 << 6) | v80[2] & 0x3F;
              v525 = v80 + 3;
            }

            *(v15 + 80) = v525;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v81 = v80[1] & 0x3F | ((v81 & 0x1F) << 6);
          }
        }

        v833 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v81 & 0x7F | (_pcre2_ucd_stage1_8[v81 >> 7] << 7)]];
        v834 = a2[1];
        v19 = 4294967252;
        if (v834 > 5)
        {
          if (a2[1] > 8u)
          {
            if (v834 == 9)
            {
              v846 = &_pcre2_ucd_caseless_sets_8[a2[2]];
              while (1)
              {
                v847 = *v846;
                if (v81 < *v846)
                {
                  break;
                }

                ++v846;
                if (v81 == v847)
                {
                  if (v18 == 16)
                  {
                    goto LABEL_2959;
                  }

LABEL_1212:
                  v20 = 0;
                  goto LABEL_2416;
                }
              }

              if (v18 == 16)
              {
                goto LABEL_1212;
              }

              goto LABEL_2959;
            }

            if (v834 == 10)
            {
              if ((v81 - 36) > 0x3C || ((1 << (v81 - 36)) & 0x1000000010000001) == 0)
              {
                v840 = (v81 - 160) >> 5;
                v841 = v81 >> 13 > 6;
                v842 = v840 < 0x6BB || v841;
LABEL_2029:
                if (v842 == (v18 == 15))
                {
                  goto LABEL_1212;
                }

                goto LABEL_2959;
              }

              goto LABEL_2001;
            }
          }

          else
          {
            if (v834 - 6 < 2)
            {
              if (v81 < 0x2000)
              {
                if (v81 > 132)
                {
                  if (v81 > 5759)
                  {
                    if (v81 == 5760 || v81 == 6158)
                    {
                      goto LABEL_2018;
                    }
                  }

                  else if (v81 == 133 || v81 == 160)
                  {
                    goto LABEL_2018;
                  }
                }

                else if (v81 <= 0x20 && ((1 << v81) & 0x100003E00) != 0)
                {
                  goto LABEL_2018;
                }
              }

              else if ((v81 - 0x2000) < 0xB || (v81 - 8232) <= 0x37 && ((1 << (v81 - 40)) & 0x80000000000083) != 0 || v81 == 12288)
              {
                goto LABEL_2018;
              }

              v837 = _pcre2_ucp_gentype_8[v833[1]] == 6;
LABEL_1982:
              v838 = v837;
              v839 = v18 == 15;
LABEL_2010:
              v848 = !v839;
              if ((v848 ^ v838))
              {
                goto LABEL_1212;
              }

              goto LABEL_2959;
            }

            if (v834 == 8)
            {
              if ((_pcre2_ucp_gentype_8[v833[1]] | 2) != 3)
              {
                v843 = v81 == 95;
                goto LABEL_2026;
              }

LABEL_2001:
              v842 = 1;
              goto LABEL_2029;
            }
          }
        }

        else
        {
          if (a2[1] <= 2u)
          {
            if (a2[1])
            {
              if (v834 != 1)
              {
                v835 = _pcre2_ucp_gentype_8[v833[1]];
                v836 = a2[2];
LABEL_2009:
                v838 = v835 != v836;
                v839 = v18 == 16;
                goto LABEL_2010;
              }

              v844 = v833[1];
              if (v844 != 5 && v844 != 9)
              {
                v843 = v844 == 8;
LABEL_2026:
                v842 = v843;
                goto LABEL_2029;
              }

              goto LABEL_2001;
            }

LABEL_2018:
            if (v18 == 15)
            {
              goto LABEL_1212;
            }

            goto LABEL_2959;
          }

          switch(v834)
          {
            case 3u:
              v835 = a2[2];
              v836 = v833[1];
              goto LABEL_2009;
            case 4u:
              v835 = a2[2];
              v836 = *v833;
              goto LABEL_2009;
            case 5u:
              v837 = (_pcre2_ucp_gentype_8[v833[1]] & 0xFFFFFFFD) == 1;
              goto LABEL_1982;
          }
        }

        return v19;
      case 0x11u:
        v153 = *(v15 + 80);
        v154 = *(a7 + 160);
        if (v153 >= v154)
        {
          v164 = *(a7 + 128);
          if (!*(a7 + 128) || v153 <= *(a7 + 176))
          {
            goto LABEL_1212;
          }

          goto LABEL_945;
        }

        v155 = v153 + 1;
        *(v15 + 80) = v153 + 1;
        v156 = *v153;
        if (v1244 && v156 >= 0xC0)
        {
          if ((v156 & 0x20) != 0)
          {
            v644 = *v155 & 0x3F;
            if ((v156 & 0x10) != 0)
            {
              if ((v156 & 8) != 0)
              {
                v827 = v153[2] & 0x3F;
                v828 = v153[3] & 0x3F;
                v829 = v153[4] & 0x3F;
                if ((v156 & 4) != 0)
                {
                  v156 = ((v156 & 1) << 30) | (v644 << 24) | (v827 << 18) | (v828 << 12) | (v829 << 6) | v153[5] & 0x3F;
                  v155 = v153 + 6;
                }

                else
                {
                  v156 = ((v156 & 3) << 24) | (v644 << 18) | (v827 << 12) | (v828 << 6) | v829;
                  v155 = v153 + 5;
                }
              }

              else
              {
                v156 = ((v156 & 7) << 18) | (v644 << 12) | ((v153[2] & 0x3F) << 6) | v153[3] & 0x3F;
                v155 = v153 + 4;
              }
            }

            else
            {
              v156 = ((v156 & 0xF) << 12) | (v644 << 6) | v153[2] & 0x3F;
              v155 = v153 + 3;
            }

            *(v15 + 80) = v155;
          }

          else
          {
            v155 = v153 + 2;
            *(v15 + 80) = v153 + 2;
            v156 = v153[1] & 0x3F | ((v156 & 0x1F) << 6);
          }
        }

        v20 = 0;
        if (v156 <= 12)
        {
          if ((v156 - 11) >= 2)
          {
            if (v156 != 10)
            {
              goto LABEL_2416;
            }

            goto LABEL_2385;
          }
        }

        else if ((v156 - 8232) >= 2 && v156 != 133)
        {
          if (v156 != 13)
          {
            goto LABEL_2416;
          }

          if (v155 < v154)
          {
            if (*v155 == 10)
            {
              v123 = v155 + 1;
LABEL_200:
              *(v15 + 80) = v123;
            }

            goto LABEL_2385;
          }

          v175 = *(a7 + 128);
          if (!*(a7 + 128) || v155 <= *(a7 + 176))
          {
LABEL_2385:
            v105 = a2 + 1;
            goto LABEL_2989;
          }

LABEL_805:
          *(a7 + 76) = 1;
          if (v175 != 1)
          {
            return 4294967294;
          }

          goto LABEL_2385;
        }

        if (*(a7 + 130) == 2)
        {
          goto LABEL_1212;
        }

        goto LABEL_2385;
      case 0x12u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v135 = *v80;
        if (v1244 && v135 >= 0xC0)
        {
          if ((v135 & 0x20) != 0)
          {
            v630 = v80[1] & 0x3F;
            if ((v135 & 0x10) != 0)
            {
              if ((v135 & 8) != 0)
              {
                v806 = v80[2] & 0x3F;
                v807 = v80[3] & 0x3F;
                v808 = v80[4] & 0x3F;
                if ((v135 & 4) != 0)
                {
                  v135 = ((v135 & 1) << 30) | (v630 << 24) | (v806 << 18) | (v807 << 12) | (v808 << 6) | v80[5] & 0x3F;
                  v631 = v80 + 6;
                }

                else
                {
                  v135 = ((v135 & 3) << 24) | (v630 << 18) | (v806 << 12) | (v807 << 6) | v808;
                  v631 = v80 + 5;
                }
              }

              else
              {
                v135 = ((v135 & 7) << 18) | (v630 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v631 = v80 + 4;
              }
            }

            else
            {
              v135 = ((v135 & 0xF) << 12) | (v630 << 6) | v80[2] & 0x3F;
              v631 = v80 + 3;
            }

            *(v15 + 80) = v631;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v135 = v80[1] & 0x3F | ((v135 & 0x1F) << 6);
          }
        }

        v20 = 0;
        if (v135 < 0x2000)
        {
          if (v135 <= 159)
          {
            if (v135 == 9 || v135 == 32)
            {
              goto LABEL_2416;
            }
          }

          else if (v135 == 160 || v135 == 5760 || v135 == 6158)
          {
            goto LABEL_2416;
          }
        }

        else if (v135 > 8238)
        {
          v935 = v135 == 8239 || v135 == 8287;
          if (v935 || v135 == 12288)
          {
            goto LABEL_2416;
          }
        }

        else if ((v135 - 0x2000) < 0xB)
        {
          goto LABEL_2416;
        }

        goto LABEL_2385;
      case 0x13u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v134 = *v80;
        if (v1244 && v134 >= 0xC0)
        {
          if ((v134 & 0x20) != 0)
          {
            v628 = v80[1] & 0x3F;
            if ((v134 & 0x10) != 0)
            {
              if ((v134 & 8) != 0)
              {
                v803 = v80[2] & 0x3F;
                v804 = v80[3] & 0x3F;
                v805 = v80[4] & 0x3F;
                if ((v134 & 4) != 0)
                {
                  v134 = ((v134 & 1) << 30) | (v628 << 24) | (v803 << 18) | (v804 << 12) | (v805 << 6) | v80[5] & 0x3F;
                  v629 = v80 + 6;
                }

                else
                {
                  v134 = ((v134 & 3) << 24) | (v628 << 18) | (v803 << 12) | (v804 << 6) | v805;
                  v629 = v80 + 5;
                }
              }

              else
              {
                v134 = ((v134 & 7) << 18) | (v628 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v629 = v80 + 4;
              }
            }

            else
            {
              v134 = ((v134 & 0xF) << 12) | (v628 << 6) | v80[2] & 0x3F;
              v629 = v80 + 3;
            }

            *(v15 + 80) = v629;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v134 = v80[1] & 0x3F | ((v134 & 0x1F) << 6);
          }
        }

        v20 = 0;
        if (v134 < 0x2000)
        {
          if (v134 <= 159)
          {
            if (v134 != 9 && v134 != 32)
            {
              goto LABEL_2416;
            }

            goto LABEL_2385;
          }

          v930 = v134 == 160 || v134 == 5760;
          v931 = 6158;
        }

        else
        {
          if (v134 <= 8238)
          {
            if ((v134 - 0x2000) >= 0xB)
            {
              goto LABEL_2416;
            }

            goto LABEL_2385;
          }

          if (v134 == 8239)
          {
            goto LABEL_2385;
          }

          v930 = v134 == 12288;
          v931 = 8287;
        }

        if (!v930 && v134 != v931)
        {
          goto LABEL_2416;
        }

        goto LABEL_2385;
      case 0x14u:
        v80 = *(v15 + 80);
        if (v80 >= *(a7 + 160))
        {
          goto LABEL_309;
        }

        *(v15 + 80) = v80 + 1;
        v152 = *v80;
        if (v1244 && v152 >= 0xC0)
        {
          if ((v152 & 0x20) != 0)
          {
            v642 = v80[1] & 0x3F;
            if ((v152 & 0x10) != 0)
            {
              if ((v152 & 8) != 0)
              {
                v824 = v80[2] & 0x3F;
                v825 = v80[3] & 0x3F;
                v826 = v80[4] & 0x3F;
                if ((v152 & 4) != 0)
                {
                  v152 = ((v152 & 1) << 30) | (v642 << 24) | (v824 << 18) | (v825 << 12) | (v826 << 6) | v80[5] & 0x3F;
                  v643 = v80 + 6;
                }

                else
                {
                  v152 = ((v152 & 3) << 24) | (v642 << 18) | (v824 << 12) | (v825 << 6) | v826;
                  v643 = v80 + 5;
                }
              }

              else
              {
                v152 = ((v152 & 7) << 18) | (v642 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                v643 = v80 + 4;
              }
            }

            else
            {
              v152 = ((v152 & 0xF) << 12) | (v642 << 6) | v80[2] & 0x3F;
              v643 = v80 + 3;
            }

            *(v15 + 80) = v643;
          }

          else
          {
            *(v15 + 80) = v80 + 2;
            v152 = v80[1] & 0x3F | ((v152 & 0x1F) << 6);
          }
        }

        v20 = 0;
        v936 = v152 - 10 >= 4 && v152 - 8232 >= 2;
        if (v936 && v152 != 133)
        {
          goto LABEL_2385;
        }

        goto LABEL_2416;
      case 0x15u:
        v80 = *(v15 + 80);
        if (v80 < *(a7 + 160))
        {
          *(v15 + 80) = v80 + 1;
          v165 = *v80;
          if (v1244 && v165 >= 0xC0)
          {
            if ((v165 & 0x20) != 0)
            {
              v649 = v80[1] & 0x3F;
              if ((v165 & 0x10) != 0)
              {
                if ((v165 & 8) != 0)
                {
                  v852 = v80[2] & 0x3F;
                  v853 = v80[3] & 0x3F;
                  v854 = v80[4] & 0x3F;
                  if ((v165 & 4) != 0)
                  {
                    v165 = ((v165 & 1) << 30) | (v649 << 24) | (v852 << 18) | (v853 << 12) | (v854 << 6) | v80[5] & 0x3F;
                    v650 = v80 + 6;
                  }

                  else
                  {
                    v165 = ((v165 & 3) << 24) | (v649 << 18) | (v852 << 12) | (v853 << 6) | v854;
                    v650 = v80 + 5;
                  }
                }

                else
                {
                  v165 = ((v165 & 7) << 18) | (v649 << 12) | ((v80[2] & 0x3F) << 6) | v80[3] & 0x3F;
                  v650 = v80 + 4;
                }
              }

              else
              {
                v165 = ((v165 & 0xF) << 12) | (v649 << 6) | v80[2] & 0x3F;
                v650 = v80 + 3;
              }

              *(v15 + 80) = v650;
            }

            else
            {
              *(v15 + 80) = v80 + 2;
              v165 = v80[1] & 0x3F | ((v165 & 0x1F) << 6);
            }
          }

          v944 = v165 - 10 >= 4 && v165 - 8232 >= 2;
          if (v944 && v165 != 133)
          {
            goto LABEL_1212;
          }

          goto LABEL_2385;
        }

LABEL_309:
        v164 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_1212;
        }

        goto LABEL_310;
      case 0x16u:
        v63 = *(v15 + 80);
        v125 = *(a7 + 160);
        if (v63 >= v125)
        {
          goto LABEL_1209;
        }

        v126 = v63 + 1;
        *(v15 + 80) = v63 + 1;
        v127 = *v63;
        if (v1244 && v127 >= 0xC0)
        {
          if ((v127 & 0x20) != 0)
          {
            v625 = *v126 & 0x3F;
            if ((v127 & 0x10) != 0)
            {
              if ((v127 & 8) != 0)
              {
                v797 = v63[2] & 0x3F;
                v798 = v63[3] & 0x3F;
                v799 = v63[4] & 0x3F;
                if ((v127 & 4) != 0)
                {
                  v127 = ((v127 & 1) << 30) | (v625 << 24) | (v797 << 18) | (v798 << 12) | (v799 << 6) | v63[5] & 0x3F;
                  v126 = v63 + 6;
                }

                else
                {
                  v127 = ((v127 & 3) << 24) | (v625 << 18) | (v797 << 12) | (v798 << 6) | v799;
                  v126 = v63 + 5;
                }
              }

              else
              {
                v127 = ((v127 & 7) << 18) | (v625 << 12) | ((v63[2] & 0x3F) << 6) | v63[3] & 0x3F;
                v126 = v63 + 4;
              }
            }

            else
            {
              v127 = ((v127 & 0xF) << 12) | (v625 << 6) | v63[2] & 0x3F;
              v126 = v63 + 3;
            }

            *(v15 + 80) = v126;
          }

          else
          {
            v126 = v63 + 2;
            *(v15 + 80) = v63 + 2;
            v127 = v63[1] & 0x3F | ((v127 & 0x1F) << 6);
          }
        }

        v169 = _pcre2_extuni_8(v127, v126, *(a7 + 152), v125, v1243, 0);
        *(v15 + 80) = v169;
        v173 = *(a7 + 128);
        if (*(a7 + 128) && v169 >= *(a7 + 160))
        {
          goto LABEL_2253;
        }

        goto LABEL_2255;
      case 0x17u:
        goto LABEL_323;
      case 0x18u:
        goto LABEL_330;
      case 0x19u:
        if ((*(a7 + 228) & 2) != 0)
        {
          goto LABEL_2911;
        }

        if ((*(a7 + 232) & 0x10) != 0)
        {
LABEL_330:
          v174 = *(v15 + 80);
          if (v174 < *(a7 + 160))
          {
            goto LABEL_2911;
          }

          v175 = *(a7 + 128);
          if (!*(a7 + 128) || v174 <= *(a7 + 176))
          {
            goto LABEL_2385;
          }

          goto LABEL_805;
        }

LABEL_323:
        v169 = *(v15 + 80);
        v170 = *(a7 + 160);
        if (v169 >= v170)
        {
          goto LABEL_328;
        }

        v171 = *(a7 + 244);
        if (v171)
        {
          if (_pcre2_is_newline_8(v169, v171, v170, (a7 + 248), v1243))
          {
            v169 = *(v15 + 80);
            v170 = *(a7 + 160);
            v172 = *(a7 + 248);
            goto LABEL_327;
          }
        }

        else
        {
          v172 = *(a7 + 248);
          if (v169 <= v170 - v172 && *v169 == *(a7 + 252) && (v172 == 1 || v169[1] == *(a7 + 253)))
          {
LABEL_327:
            if (v169 == (v170 - v172))
            {
LABEL_328:
              v173 = *(a7 + 128);
              if (*(a7 + 128))
              {
LABEL_2253:
                if (v169 > *(a7 + 176))
                {
                  *(a7 + 76) = 1;
                  if (v173 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

LABEL_2255:
              v105 = (*v15 + 1);
LABEL_2989:
              *v15 = v105;
              goto LABEL_2990;
            }
          }
        }

LABEL_1376:
        v391 = *(a7 + 128);
        if (!*(a7 + 128))
        {
          goto LABEL_2911;
        }

        v598 = *(v15 + 80);
        if ((v598 + 1) < *(a7 + 160) || *(a7 + 244) || *(a7 + 248) != 2 || *v598 != *(a7 + 252))
        {
          goto LABEL_2911;
        }

LABEL_1740:
        *(a7 + 76) = 1;
        if (v391 == 1)
        {
          goto LABEL_2911;
        }

        return 4294967294;
      case 0x1Au:
        v136 = *(v15 + 80);
        v137 = *(a7 + 160);
        if (v136 >= v137)
        {
          if ((*(a7 + 228) & 2) != 0)
          {
            goto LABEL_2911;
          }

          v175 = *(a7 + 128);
          if (!*(a7 + 128) || v136 <= *(a7 + 176))
          {
            goto LABEL_2385;
          }

          goto LABEL_805;
        }

        v138 = *(a7 + 244);
        if (v138)
        {
          if (_pcre2_is_newline_8(v136, v138, v137, (a7 + 248), v1243))
          {
LABEL_320:
            a2 = *v15;
            goto LABEL_2385;
          }
        }

        else
        {
          v597 = *(a7 + 248);
          if (v136 <= v137 - v597 && *v136 == *(a7 + 252) && (v597 == 1 || v136[1] == *(a7 + 253)))
          {
            goto LABEL_2385;
          }
        }

        goto LABEL_1376;
      case 0x1Bu:
        if (*(v15 + 80) != *(a7 + 152) || (*(a7 + 228) & 1) != 0)
        {
          goto LABEL_2911;
        }

        goto LABEL_2385;
      case 0x1Cu:
        v166 = *(v15 + 80);
        v167 = *(a7 + 152);
        if ((*(a7 + 228) & 1) != 0 && v166 == v167)
        {
          goto LABEL_2911;
        }

        if (v166 == v167)
        {
          goto LABEL_2385;
        }

        if (v166 == *(a7 + 160) && (*(a7 + 234) & 0x20) == 0)
        {
          goto LABEL_2911;
        }

        v168 = *(a7 + 244);
        if (!v168)
        {
          v651 = *(a7 + 248);
          if (v166 < v167 + v651 || v166[-v651] != *(a7 + 252) || v651 != 1 && v166[-v651 + 1] != *(a7 + 253))
          {
            goto LABEL_2911;
          }

          goto LABEL_2385;
        }

        if (v166 <= v167)
        {
          goto LABEL_2911;
        }

        v20 = _pcre2_was_newline_8(v166, v168, v167, (a7 + 248), v1243);
        if (!v20)
        {
          goto LABEL_2416;
        }

        goto LABEL_320;
      case 0x1Du:
        if (v1244)
        {
          v144 = 1;
          *(v15 + 24) = 1;
          *v15 = a2 + 1;
          v145 = a2[1];
          if (v145 >= 0xC0)
          {
            v144 = 3;
            v146 = 4;
            v147 = 5;
            if ((v145 & 4) != 0)
            {
              v147 = 6;
            }

            if ((v145 & 8) != 0)
            {
              v146 = v147;
            }

            if ((v145 & 0x10) != 0)
            {
              v144 = v146;
            }

            if ((v145 & 0x20) == 0)
            {
              v144 = 2;
            }

            *(v15 + 24) = v144;
          }

          v148 = *(a7 + 160);
          v149 = *(v15 + 80);
          if (v144 <= v148 - v149)
          {
            v520 = v149 + 1;
            v521 = a2 + 2;
            v522 = (v144 - 1);
            do
            {
              *v15 = v521;
              v523 = *(v521 - 1);
              *(v15 + 80) = v520;
              if (v523 != *(v520 - 1))
              {
                goto LABEL_1212;
              }

              *(v15 + 24) = v522;
              ++v520;
              ++v521;
              --v522;
            }

            while (v522 != -1);
            goto LABEL_2990;
          }

          v20 = 0;
          if (v149 < v148)
          {
            goto LABEL_2416;
          }

          v150 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_2416;
          }

          if (v149 <= *(a7 + 176))
          {
            goto LABEL_1212;
          }

          *(a7 + 76) = 1;
          if (v150 <= 1)
          {
            goto LABEL_1212;
          }

          return 4294967294;
        }

        v63 = *(v15 + 80);
        if ((*(a7 + 160) - v63) <= 0)
        {
          goto LABEL_1209;
        }

        v363 = a2[1];
        *(v15 + 80) = v63 + 1;
        if (v363 != *v63)
        {
          goto LABEL_1212;
        }

        goto LABEL_1175;
      case 0x1Eu:
        v63 = *(v15 + 80);
        if (v63 >= *(a7 + 160))
        {
          goto LABEL_1209;
        }

        if (!v1244)
        {
          if (*(*(a7 + 88) + a2[1]) != *(*(a7 + 88) + *v63))
          {
            goto LABEL_1212;
          }

          *(v15 + 80) = v63 + 1;
          goto LABEL_1175;
        }

        v120 = 1;
        *(v15 + 24) = 1;
        *v15 = a2 + 1;
        v121 = a2[1];
        if (v121 >= 0xC0)
        {
          v122 = a2[2] & 0x3F;
          if ((v121 & 0x20) != 0)
          {
            if ((v121 & 0x10) != 0)
            {
              if ((v121 & 8) != 0)
              {
                v927 = a2[3] & 0x3F;
                v928 = a2[4] & 0x3F;
                v929 = a2[5] & 0x3F;
                if ((v121 & 4) != 0)
                {
                  v121 = ((v121 & 1) << 30) | (v122 << 24) | (v927 << 18) | (v928 << 12) | (v929 << 6) | a2[6] & 0x3F;
                  v120 = 6;
                }

                else
                {
                  v121 = ((v121 & 3) << 24) | (v122 << 18) | (v927 << 12) | (v928 << 6) | v929;
                  v120 = 5;
                }
              }

              else
              {
                v121 = ((v121 & 7) << 18) | (v122 << 12) | ((a2[3] & 0x3F) << 6) | a2[4] & 0x3F;
                v120 = 4;
              }
            }

            else
            {
              v121 = ((v121 & 0xF) << 12) | (v122 << 6) | a2[3] & 0x3F;
              v120 = 3;
            }
          }

          else
          {
            v120 = 2;
            v121 = a2[2] & 0x3F | ((v121 & 0x1F) << 6);
          }

          *(v15 + 24) = v120;
        }

        if (v121 > 0x7F)
        {
          *(v15 + 80) = v63 + 1;
          v947 = *v63;
          if (v947 >= 0xC0)
          {
            if ((v947 & 0x20) != 0)
            {
              v948 = v63[1] & 0x3F;
              if ((v947 & 0x10) != 0)
              {
                if ((v947 & 8) != 0)
                {
                  v950 = v63[2] & 0x3F;
                  v951 = v63[3] & 0x3F;
                  v952 = v63[4] & 0x3F;
                  if ((v947 & 4) != 0)
                  {
                    v947 = ((v947 & 1) << 30) | (v948 << 24) | (v950 << 18) | (v951 << 12) | (v952 << 6) | v63[5] & 0x3F;
                    v949 = v63 + 6;
                  }

                  else
                  {
                    v947 = ((v947 & 3) << 24) | (v948 << 18) | (v950 << 12) | (v951 << 6) | v952;
                    v949 = v63 + 5;
                  }
                }

                else
                {
                  v947 = ((v947 & 7) << 18) | (v948 << 12) | ((v63[2] & 0x3F) << 6) | v63[3] & 0x3F;
                  v949 = v63 + 4;
                }
              }

              else
              {
                v947 = ((v947 & 0xF) << 12) | (v948 << 6) | v63[2] & 0x3F;
                v949 = v63 + 3;
              }

              *(v15 + 80) = v949;
            }

            else
            {
              *(v15 + 80) = v63 + 2;
              v947 = v63[1] & 0x3F | ((v947 & 0x1F) << 6);
            }
          }

          *v15 = &a2[v120 + 1];
          if (v947 != v121 && v947 != _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v121 & 0x7F | (_pcre2_ucd_stage1_8[v121 >> 7] << 7)] + 1] + v121)
          {
            goto LABEL_1212;
          }

          goto LABEL_2990;
        }

        if (*(*(a7 + 88) + v121) != *(*(a7 + 88) + *v63))
        {
          goto LABEL_1212;
        }

        *v15 = a2 + 2;
        v620 = v63 + 1;
        goto LABEL_2401;
      case 0x1Fu:
      case 0x20u:
        v82 = *(v15 + 80);
        if (v82 >= *(a7 + 160))
        {
          v164 = *(a7 + 128);
          if (!*(a7 + 128) || v82 <= *(a7 + 176))
          {
            goto LABEL_1212;
          }

          goto LABEL_945;
        }

        if (v1244)
        {
          *v15 = a2 + 2;
          v83 = a2[1];
          if (v83 >= 0xC0)
          {
            if ((v83 & 0x20) != 0)
            {
              v647 = a2[2] & 0x3F;
              if ((v83 & 0x10) != 0)
              {
                if ((v83 & 8) != 0)
                {
                  v849 = a2[3] & 0x3F;
                  v850 = a2[4] & 0x3F;
                  v851 = a2[5] & 0x3F;
                  if ((v83 & 4) != 0)
                  {
                    v83 = ((v83 & 1) << 30) | (v647 << 24) | (v849 << 18) | (v850 << 12) | (v851 << 6) | a2[6] & 0x3F;
                    v648 = a2 + 7;
                  }

                  else
                  {
                    v83 = ((v83 & 3) << 24) | (v647 << 18) | (v849 << 12) | (v850 << 6) | v851;
                    v648 = a2 + 6;
                  }
                }

                else
                {
                  v83 = ((v83 & 7) << 18) | (v647 << 12) | ((a2[3] & 0x3F) << 6) | a2[4] & 0x3F;
                  v648 = a2 + 5;
                }
              }

              else
              {
                v83 = ((v83 & 0xF) << 12) | (v647 << 6) | a2[3] & 0x3F;
                v648 = a2 + 4;
              }

              *v15 = v648;
            }

            else
            {
              *v15 = a2 + 3;
              v83 = a2[2] & 0x3F | ((v83 & 0x1F) << 6);
            }
          }

          *(v15 + 80) = v82 + 1;
          v937 = *v82;
          if (v937 >= 0xC0)
          {
            if ((v937 & 0x20) != 0)
            {
              v938 = v82[1] & 0x3F;
              if ((v937 & 0x10) != 0)
              {
                if ((v937 & 8) != 0)
                {
                  v940 = v82[2] & 0x3F;
                  v941 = v82[3] & 0x3F;
                  v942 = v82[4] & 0x3F;
                  if ((v937 & 4) != 0)
                  {
                    v937 = ((v937 & 1) << 30) | (v938 << 24) | (v940 << 18) | (v941 << 12) | (v942 << 6) | v82[5] & 0x3F;
                    v939 = v82 + 6;
                  }

                  else
                  {
                    v937 = ((v937 & 3) << 24) | (v938 << 18) | (v940 << 12) | (v941 << 6) | v942;
                    v939 = v82 + 5;
                  }
                }

                else
                {
                  v937 = ((v937 & 7) << 18) | (v938 << 12) | ((v82[2] & 0x3F) << 6) | v82[3] & 0x3F;
                  v939 = v82 + 4;
                }
              }

              else
              {
                v937 = ((v937 & 0xF) << 12) | (v938 << 6) | v82[2] & 0x3F;
                v939 = v82 + 3;
              }

              *(v15 + 80) = v939;
            }

            else
            {
              *(v15 + 80) = v82 + 2;
              v937 = v82[1] & 0x3F | ((v937 & 0x1F) << 6);
            }
          }

          if (v83 == v937)
          {
            goto LABEL_1212;
          }

          if (v18 == 32)
          {
            v943 = v83 < 0x80 ? *(*(a7 + 96) + v83) : _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v83 & 0x7F | (_pcre2_ucd_stage1_8[v83 >> 7] << 7)] + 1] + v83;
            if (v943 == v937)
            {
              goto LABEL_1212;
            }
          }

          goto LABEL_2990;
        }

        v364 = a2[1];
        *(v15 + 80) = v82 + 1;
        v365 = *v82;
        if (v364 == v365 || v18 == 32 && *(*(a7 + 96) + v364) == v365)
        {
          goto LABEL_1212;
        }

LABEL_1175:
        v105 = a2 + 2;
        goto LABEL_2989;
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
        v21 = a2 + 1;
        *v15 = a2 + 1;
        v22 = *a2;
        if (v18 >= 0x2E)
        {
          v23 = -46;
        }

        else
        {
          v23 = -33;
        }

        v24 = v23 + v22;
        v25 = rep_min[v23 + v22];
        *(v15 + 56) = v25;
        v26 = rep_max[v24];
        *(v15 + 60) = v26;
        v11 = rep_typ[v24];
        goto LABEL_54;
      case 0x27u:
      case 0x34u:
        v25 = 0;
        *(v15 + 56) = 0;
        v26 = __rev16(*(a2 + 1));
        *(v15 + 60) = v26;
        v21 = a2 + 3;
        *v15 = a2 + 3;
        v11 = 1;
        goto LABEL_54;
      case 0x28u:
      case 0x35u:
        v25 = 0;
        v11 = 0;
        *(v15 + 56) = 0;
        v26 = __rev16(*(a2 + 1));
        *(v15 + 60) = v26;
        v21 = a2 + 3;
        *v15 = a2 + 3;
        goto LABEL_54;
      case 0x29u:
      case 0x36u:
        v26 = __rev16(*(a2 + 1));
        *(v15 + 56) = v26;
        *(v15 + 60) = v26;
        v21 = a2 + 3;
        *v15 = a2 + 3;
        v25 = v26;
        goto LABEL_54;
      case 0x2Au:
      case 0x37u:
        v25 = 0;
        *(v15 + 56) = 0xFFFFFFFF00000000;
        v21 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        goto LABEL_32;
      case 0x2Bu:
      case 0x38u:
        *(v15 + 56) = 0xFFFFFFFF00000001;
        v21 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        v25 = 1;
LABEL_32:
        v26 = -1;
        goto LABEL_54;
      case 0x2Cu:
      case 0x39u:
        v25 = 0;
        *(v15 + 56) = 0x100000000;
        v21 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        v26 = 1;
        goto LABEL_54;
      case 0x2Du:
      case 0x3Au:
        v25 = 0;
        *(v15 + 56) = 0;
        v26 = __rev16(*(a2 + 1));
        *(v15 + 60) = v26;
        v21 = a2 + 3;
        *v15 = a2 + 3;
        v11 = 2;
LABEL_54:
        if (v1244)
        {
          *(v15 + 24) = 1;
          v56 = (v15 + 24);
          *(v15 + 16) = v21;
          v57 = *v21;
          if (v57 >= 0xC0)
          {
            v58 = v21[1] & 0x3F;
            if ((v57 & 0x20) != 0)
            {
              if ((v57 & 0x10) != 0)
              {
                if ((v57 & 8) != 0)
                {
                  v264 = v21[2] & 0x3F;
                  v265 = v21[3] & 0x3F;
                  v266 = v21[4] & 0x3F;
                  if ((v57 & 4) != 0)
                  {
                    v59 = ((v57 & 1) << 30) | (v58 << 24) | (v264 << 18) | (v265 << 12) | (v266 << 6) | v21[5] & 0x3F;
                    v60 = 6;
                  }

                  else
                  {
                    v59 = ((v57 & 3) << 24) | (v58 << 18) | (v264 << 12) | (v265 << 6) | v266;
                    v60 = 5;
                  }
                }

                else
                {
                  v59 = ((v57 & 7) << 18) | (v58 << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
                  v60 = 4;
                }
              }

              else
              {
                v59 = ((v57 & 0xF) << 12) | (v58 << 6) | v21[2] & 0x3F;
                v60 = 3;
              }
            }

            else
            {
              v59 = v21[1] & 0x3F | ((v57 & 0x1F) << 6);
              v60 = 2;
            }

            v405 = v11;
            *(v15 + 24) = v60;
            *v15 = &v21[v60];
            if (v18 >= 0x2E && (v406 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v59 & 0x7F | (_pcre2_ucd_stage1_8[v59 >> 7] << 7)] + 1]) != 0)
            {
              v407 = v16;
              *(v15 + 40) = _pcre2_ord2utf_8(v406 + v59, v15 + 74);
              if (!*(v15 + 56))
              {
LABEL_919:
                v408 = 0;
LABEL_928:
                v417 = *(v15 + 60);
                v16 = v407;
                if (v408 == v417)
                {
                  v11 = v405;
                  goto LABEL_2990;
                }

                v11 = v405;
                if (v405)
                {
                  v419 = *(v15 + 80);
                  *(v15 + 8) = v419;
                  if (v408 >= v417)
                  {
                    goto LABEL_951;
                  }

                  v420 = (v15 + 40);
                  while (1)
                  {
                    if (v419 > *(a7 + 160) - *v56 || (v421 = cstdlib_memcmp(v419, *(v15 + 16), *v56), v422 = (v15 + 24), v421))
                    {
                      v423 = *v420;
                      if (!*v420)
                      {
                        break;
                      }

                      v424 = *(v15 + 80);
                      if (v424 > *(a7 + 160) - v423)
                      {
                        break;
                      }

                      v425 = cstdlib_memcmp(v424, (v15 + 74), v423);
                      v422 = (v15 + 40);
                      if (v425)
                      {
                        break;
                      }
                    }

                    v419 = (*(v15 + 80) + *v422);
                    *(v15 + 80) = v419;
                    if (++v408 >= *(v15 + 60))
                    {
                      goto LABEL_951;
                    }
                  }

                  v426 = *(a7 + 128);
                  if (!*(a7 + 128) || (v427 = *(v15 + 80), v427 < *(a7 + 160)) || v427 <= *(a7 + 176) || (*(a7 + 76) = 1, v426 == 1))
                  {
LABEL_951:
                    if (v405 != 2)
                    {
                      v428 = *(v15 + 80);
LABEL_2895:
                      if (v428 > *(v15 + 8))
                      {
                        v12 = 0;
                        a2 = *v15;
                        v1207 = -53;
                        goto LABEL_3173;
                      }
                    }

                    goto LABEL_2990;
                  }

                  return 4294967294;
                }

LABEL_3271:
                v12 = 0;
                a2 = *v15;
                v1207 = -54;
                goto LABEL_3173;
              }
            }

            else
            {
              v407 = v16;
              *(v15 + 40) = 0;
              if (!v25)
              {
                goto LABEL_919;
              }
            }

            v409 = (v15 + 40);
            v410 = *(v15 + 80);
            v411 = 1;
            while (1)
            {
              if (v410 > *(a7 + 160) - *v56 || (v412 = cstdlib_memcmp(v410, *(v15 + 16), *v56), v413 = (v15 + 24), v412))
              {
                v414 = *v409;
                if (!*v409)
                {
                  break;
                }

                v415 = *(v15 + 80);
                if (v415 > *(a7 + 160) - v414)
                {
                  break;
                }

                v416 = cstdlib_memcmp(v415, (v15 + 74), v414);
                v413 = (v15 + 40);
                if (v416)
                {
                  break;
                }
              }

              v410 = (*(v15 + 80) + *v413);
              *(v15 + 80) = v410;
              ++v411;
              v408 = *(v15 + 56);
              if (v411 > v408)
              {
                goto LABEL_928;
              }
            }

            v164 = *(a7 + 128);
            if (!*(a7 + 128))
            {
              v20 = 0;
              v16 = v407;
              v11 = v405;
              goto LABEL_2416;
            }

            v418 = *(v15 + 80);
            v16 = v407;
            if (v418 < *(a7 + 160))
            {
              v20 = 0;
              v11 = v405;
              goto LABEL_2416;
            }

            v11 = v405;
            if (v418 <= *(a7 + 176))
            {
              goto LABEL_1212;
            }

            goto LABEL_945;
          }

          a2 = v21 + 1;
          *v15 = v21 + 1;
        }

        else
        {
          a2 = v21 + 1;
          *v15 = v21 + 1;
          v57 = *v21;
        }

        *(v15 + 64) = v57;
        if (v18 <= 0x2D)
        {
          if (!v25)
          {
LABEL_88:
            if (v26 == v25)
            {
              goto LABEL_2990;
            }

            if (!v11)
            {
              v12 = 0;
LABEL_3224:
              v1207 = 27;
              goto LABEL_3173;
            }

            v76 = *(v15 + 80);
            *(v15 + 8) = v76;
            v77 = v76;
            v615 = v26 >= v25;
            v78 = v26 - v25;
            if (v78 == 0 || !v615)
            {
              goto LABEL_826;
            }

            v79 = *(a7 + 160);
            v77 = v76;
            while (v77 < v79)
            {
              if (v57 == *v77)
              {
                *(v15 + 80) = ++v77;
                if (--v78)
                {
                  continue;
                }
              }

              goto LABEL_826;
            }

            v367 = *(a7 + 128);
            if (!*(a7 + 128) || v77 <= *(a7 + 176) || (*(a7 + 76) = 1, v367 == 1))
            {
LABEL_826:
              if (v11 != 2)
              {
LABEL_2897:
                if (v77 > v76)
                {
                  v12 = 0;
                  a2 = *v15;
                  v1207 = 28;
                  goto LABEL_3173;
                }
              }

              goto LABEL_2990;
            }

            return 4294967294;
          }

          v73 = *(a7 + 160);
          v74 = *(v15 + 80);
          v75 = 1;
          while (v74 < v73)
          {
            *(v15 + 80) = v74 + 1;
            if (v57 != *v74)
            {
              goto LABEL_1212;
            }

            ++v75;
            ++v74;
            if (v75 > v25)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_667;
        }

        v61 = *(*(a7 + 96) + v57);
        *(v15 + 68) = v61;
        if (v25)
        {
          v62 = *(a7 + 160);
          v63 = *(v15 + 80);
          v64 = 1;
          while (v63 < v62)
          {
            v65 = *v63;
            if (v57 != v65 && v61 != v65)
            {
              goto LABEL_1212;
            }

            *(v15 + 80) = ++v63;
            if (++v64 > v25)
            {
              goto LABEL_70;
            }
          }

LABEL_1209:
          v534 = *(a7 + 128);
          if (!*(a7 + 128))
          {
            goto LABEL_1212;
          }

          if (v63 <= *(a7 + 176))
          {
            goto LABEL_1212;
          }

          *(a7 + 76) = 1;
          if (v534 == 1)
          {
            goto LABEL_1212;
          }

          return 4294967294;
        }

LABEL_70:
        if (v26 == v25)
        {
          goto LABEL_2990;
        }

        if (!v11)
        {
          v12 = 0;
LABEL_3207:
          v1207 = 25;
          goto LABEL_3173;
        }

        v67 = *(v15 + 80);
        *(v15 + 8) = v67;
        v68 = v67;
        v615 = v26 >= v25;
        v69 = v26 - v25;
        if (v69 == 0 || !v615)
        {
          goto LABEL_821;
        }

        v70 = *(a7 + 160);
        v68 = v67;
        while (v68 < v70)
        {
          v71 = *v68;
          if (v57 == v71 || v61 == v71)
          {
            *(v15 + 80) = ++v68;
            if (--v69)
            {
              continue;
            }
          }

          goto LABEL_821;
        }

        v366 = *(a7 + 128);
        if (!*(a7 + 128) || v68 <= *(a7 + 176) || (*(a7 + 76) = 1, v366 == 1))
        {
LABEL_821:
          if (v11 != 2)
          {
LABEL_2882:
            if (v68 != v67)
            {
              v12 = 0;
              a2 = *v15;
              v1207 = 26;
              goto LABEL_3173;
            }
          }

          goto LABEL_2990;
        }

        return 4294967294;
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
        v27 = a2 + 1;
        *v15 = a2 + 1;
        if (v18 <= 0x47)
        {
          v28 = -59;
        }

        else
        {
          v28 = -72;
        }

        v29 = v28 + *a2;
        v30 = rep_min[v29];
        *(v15 + 56) = v30;
        v31 = rep_max[v29];
        *(v15 + 60) = v31;
        v11 = rep_typ[v29];
        goto LABEL_113;
      case 0x41u:
      case 0x4Eu:
        v30 = 0;
        *(v15 + 56) = 0;
        v31 = __rev16(*(a2 + 1));
        *(v15 + 60) = v31;
        v27 = a2 + 3;
        *v15 = a2 + 3;
        v11 = 1;
        goto LABEL_113;
      case 0x42u:
      case 0x4Fu:
        v30 = 0;
        v11 = 0;
        *(v15 + 56) = 0;
        v31 = __rev16(*(a2 + 1));
        *(v15 + 60) = v31;
        v27 = a2 + 3;
        *v15 = a2 + 3;
        goto LABEL_113;
      case 0x43u:
      case 0x50u:
        v31 = __rev16(*(a2 + 1));
        *(v15 + 56) = v31;
        *(v15 + 60) = v31;
        v27 = a2 + 3;
        *v15 = a2 + 3;
        v30 = v31;
        goto LABEL_113;
      case 0x44u:
      case 0x51u:
        v30 = 0;
        *(v15 + 56) = 0xFFFFFFFF00000000;
        v27 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        goto LABEL_100;
      case 0x45u:
      case 0x52u:
        *(v15 + 56) = 0xFFFFFFFF00000001;
        v27 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        v30 = 1;
LABEL_100:
        v31 = -1;
        goto LABEL_113;
      case 0x46u:
      case 0x53u:
        v30 = 0;
        *(v15 + 56) = 0x100000000;
        v27 = a2 + 1;
        *v15 = a2 + 1;
        v11 = 2;
        v31 = 1;
        goto LABEL_113;
      case 0x47u:
      case 0x54u:
        v30 = 0;
        *(v15 + 56) = 0;
        v31 = __rev16(*(a2 + 1));
        *(v15 + 60) = v31;
        v27 = a2 + 3;
        *v15 = a2 + 3;
        v11 = 2;
LABEL_113:
        a2 = v27 + 1;
        *v15 = v27 + 1;
        v84 = *v27;
        *(v15 + 64) = v84;
        if (v1244 && v84 >= 0xC0)
        {
          if ((v84 & 0x20) != 0)
          {
            v86 = *a2 & 0x3F;
            if ((v84 & 0x10) != 0)
            {
              if ((v84 & 8) != 0)
              {
                v106 = v27[2] & 0x3F;
                v107 = v27[3] & 0x3F;
                v108 = v27[4] & 0x3F;
                if ((v84 & 4) != 0)
                {
                  v84 = ((v84 & 1) << 30) | (v86 << 24) | (v106 << 18) | (v107 << 12) | (v108 << 6) | v27[5] & 0x3F;
                  *(v15 + 64) = v84;
                  a2 = v27 + 6;
                }

                else
                {
                  a2 = v27 + 5;
                  v84 = ((v84 & 3) << 24) | (v86 << 18) | (v106 << 12) | (v107 << 6) | v108;
                  *(v15 + 64) = v84;
                }
              }

              else
              {
                v84 = ((v84 & 7) << 18) | (v86 << 12) | ((v27[2] & 0x3F) << 6) | v27[3] & 0x3F;
                *(v15 + 64) = v84;
                a2 = v27 + 4;
              }
            }

            else
            {
              v84 = ((v84 & 0xF) << 12) | (v86 << 6) | v27[2] & 0x3F;
              *(v15 + 64) = v84;
              a2 = v27 + 3;
            }

            *v15 = a2;
          }

          else
          {
            a2 = v27 + 2;
            *v15 = v27 + 2;
            v85 = v27[1] & 0x3F | ((v84 & 0x1F) << 6);
            *(v15 + 64) = v85;
            v84 = v85;
          }
        }

        if (v18 >= 0x48)
        {
          if (v1244)
          {
            if (v84 <= 0x7F)
            {
              v267 = *(*(a7 + 96) + v84);
            }

            else
            {
              v267 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v84 & 0x7F | (_pcre2_ucd_stage1_8[v84 >> 7] << 7)] + 1] + v84;
            }

            *(v15 + 68) = v267;
            if (v30)
            {
              v293 = *(a7 + 160);
              v74 = *(v15 + 80);
              v294 = 1;
              while (v74 < v293)
              {
                *(v15 + 80) = v74 + 1;
                v295 = *v74;
                if (v295 < 0xC0)
                {
                  ++v74;
                }

                else if ((v295 & 0x20) != 0)
                {
                  v297 = v74[1] & 0x3F;
                  if ((v295 & 0x10) != 0)
                  {
                    if ((v295 & 8) != 0)
                    {
                      v298 = v74[2] & 0x3F;
                      v299 = v74[3] & 0x3F;
                      v300 = v74[4] & 0x3F;
                      if ((v295 & 4) != 0)
                      {
                        v295 = ((v295 & 1) << 30) | (v297 << 24) | (v298 << 18) | (v299 << 12) | (v300 << 6) | v74[5] & 0x3F;
                        v74 += 6;
                      }

                      else
                      {
                        v295 = ((v295 & 3) << 24) | (v297 << 18) | (v298 << 12) | (v299 << 6) | v300;
                        v74 += 5;
                      }
                    }

                    else
                    {
                      v295 = ((v295 & 7) << 18) | (v297 << 12) | ((v74[2] & 0x3F) << 6) | v74[3] & 0x3F;
                      v74 += 4;
                    }
                  }

                  else
                  {
                    v295 = ((v295 & 0xF) << 12) | (v297 << 6) | v74[2] & 0x3F;
                    v74 += 3;
                  }

                  *(v15 + 80) = v74;
                }

                else
                {
                  *(v15 + 80) = v74 + 2;
                  v296 = v74[1] & 0x3F | ((v295 & 0x1F) << 6);
                  v74 += 2;
                  v295 = v296;
                }

                if (v84 == v295 || v267 == v295)
                {
                  goto LABEL_1212;
                }

                if (++v294 > v30)
                {
                  goto LABEL_643;
                }
              }

LABEL_667:
              v164 = *(a7 + 128);
              if (!*(a7 + 128) || v74 <= *(a7 + 176))
              {
                goto LABEL_1212;
              }

              goto LABEL_945;
            }

            goto LABEL_643;
          }

          v267 = *(*(a7 + 96) + v84);
          *(v15 + 68) = v267;
          if (!v30)
          {
LABEL_643:
            if (v31 == v30)
            {
              goto LABEL_2990;
            }

            if (v11)
            {
              v302 = *(v15 + 80);
              *(v15 + 8) = v302;
              if (v1244)
              {
                v303 = v302;
                v615 = v31 >= v30;
                v304 = v31 - v30;
                if (v304 == 0 || !v615)
                {
                  goto LABEL_1153;
                }

                v305 = *(a7 + 160);
                v303 = v302;
                while (v303 < v305)
                {
                  v306 = *v303;
                  if (v306 < 0xC0)
                  {
                    v308 = 1;
                  }

                  else
                  {
                    v307 = v303[1] & 0x3F;
                    if ((v306 & 0x20) != 0)
                    {
                      if ((v306 & 0x10) != 0)
                      {
                        if ((v306 & 8) != 0)
                        {
                          v310 = v303[2] & 0x3F;
                          v311 = v303[3] & 0x3F;
                          v312 = v303[4] & 0x3F;
                          if ((v306 & 4) != 0)
                          {
                            v306 = ((v306 & 1) << 30) | (v307 << 24) | (v310 << 18) | (v311 << 12) | (v312 << 6) | v303[5] & 0x3F;
                            v308 = 6;
                          }

                          else
                          {
                            v306 = ((v306 & 3) << 24) | (v307 << 18) | (v310 << 12) | (v311 << 6) | v312;
                            v308 = 5;
                          }
                        }

                        else
                        {
                          v306 = ((v306 & 7) << 18) | (v307 << 12) | ((v303[2] & 0x3F) << 6) | v303[3] & 0x3F;
                          v308 = 4;
                        }
                      }

                      else
                      {
                        v306 = ((v306 & 0xF) << 12) | (v307 << 6) | v303[2] & 0x3F;
                        v308 = 3;
                      }
                    }

                    else
                    {
                      v308 = 2;
                      v306 = v303[1] & 0x3F | ((v306 & 0x1F) << 6);
                    }
                  }

                  if (v84 != v306 && v267 != v306)
                  {
                    v303 += v308;
                    *(v15 + 80) = v303;
                    if (--v304)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1153;
                }

                v514 = *(a7 + 128);
                if (!*(a7 + 128) || v303 <= *(a7 + 176) || (*(a7 + 76) = 1, v514 == 1))
                {
LABEL_1153:
                  if (v11 != 2)
                  {
LABEL_2914:
                    if (v303 > v302)
                    {
                      v12 = 0;
                      a2 = *v15;
                      v1207 = -51;
                      goto LABEL_3173;
                    }
                  }

                  goto LABEL_2990;
                }
              }

              else
              {
                v316 = v302;
                v615 = v31 >= v30;
                v317 = v31 - v30;
                if (v317 == 0 || !v615)
                {
                  goto LABEL_1158;
                }

                v318 = *(a7 + 160);
                v316 = v302;
                while (v316 < v318)
                {
                  v319 = *v316;
                  if (v84 != v319 && v267 != v319)
                  {
                    *(v15 + 80) = ++v316;
                    if (--v317)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1158;
                }

                v515 = *(a7 + 128);
                if (!*(a7 + 128) || v316 <= *(a7 + 176) || (*(a7 + 76) = 1, v515 == 1))
                {
LABEL_1158:
                  if (v11 != 2)
                  {
LABEL_2929:
                    if (v316 != v302)
                    {
                      v12 = 0;
                      a2 = *v15;
                      v1207 = 30;
                      goto LABEL_3173;
                    }
                  }

                  goto LABEL_2990;
                }
              }

              return 4294967294;
            }

            if (!v1244)
            {
LABEL_3275:
              v12 = 0;
              v1207 = 29;
              goto LABEL_3173;
            }

            v1207 = -52;
LABEL_3198:
            v12 = 0;
            goto LABEL_3173;
          }

          v277 = *(a7 + 160);
          v269 = *(v15 + 80);
          v278 = 1;
          while (v269 < v277)
          {
            v279 = *v269;
            if (v84 == v279 || v267 == v279)
            {
              goto LABEL_1212;
            }

            *(v15 + 80) = ++v269;
            if (++v278 > v30)
            {
              goto LABEL_643;
            }
          }

LABEL_670:
          v164 = *(a7 + 128);
          if (!*(a7 + 128) || v269 <= *(a7 + 176))
          {
            goto LABEL_1212;
          }

          goto LABEL_945;
        }

        if (v1244)
        {
          if (v30)
          {
            v268 = *(a7 + 160);
            v269 = *(v15 + 80);
            v270 = 1;
            while (v269 < v268)
            {
              *(v15 + 80) = v269 + 1;
              v271 = *v269;
              if (v271 < 0xC0)
              {
                ++v269;
              }

              else if ((v271 & 0x20) != 0)
              {
                v273 = v269[1] & 0x3F;
                if ((v271 & 0x10) != 0)
                {
                  if ((v271 & 8) != 0)
                  {
                    v274 = v269[2] & 0x3F;
                    v275 = v269[3] & 0x3F;
                    v276 = v269[4] & 0x3F;
                    if ((v271 & 4) != 0)
                    {
                      v271 = ((v271 & 1) << 30) | (v273 << 24) | (v274 << 18) | (v275 << 12) | (v276 << 6) | v269[5] & 0x3F;
                      v269 += 6;
                    }

                    else
                    {
                      v271 = ((v271 & 3) << 24) | (v273 << 18) | (v274 << 12) | (v275 << 6) | v276;
                      v269 += 5;
                    }
                  }

                  else
                  {
                    v271 = ((v271 & 7) << 18) | (v273 << 12) | ((v269[2] & 0x3F) << 6) | v269[3] & 0x3F;
                    v269 += 4;
                  }
                }

                else
                {
                  v271 = ((v271 & 0xF) << 12) | (v273 << 6) | v269[2] & 0x3F;
                  v269 += 3;
                }

                *(v15 + 80) = v269;
              }

              else
              {
                *(v15 + 80) = v269 + 2;
                v272 = v269[1] & 0x3F | ((v271 & 0x1F) << 6);
                v269 += 2;
                v271 = v272;
              }

              if (v84 == v271)
              {
                goto LABEL_1212;
              }

              if (++v270 > v30)
              {
                goto LABEL_601;
              }
            }

            goto LABEL_670;
          }
        }

        else if (v30)
        {
          v281 = *(a7 + 160);
          v74 = *(v15 + 80);
          v282 = 1;
          while (v74 < v281)
          {
            *(v15 + 80) = v74 + 1;
            if (v84 == *v74)
            {
              goto LABEL_1212;
            }

            ++v282;
            ++v74;
            if (v282 > v30)
            {
              goto LABEL_601;
            }
          }

          goto LABEL_667;
        }

LABEL_601:
        if (v31 == v30)
        {
          goto LABEL_2990;
        }

        if (v11)
        {
          v283 = *(v15 + 80);
          *(v15 + 8) = v283;
          if (v1244)
          {
            v284 = v283;
            v615 = v31 >= v30;
            v285 = v31 - v30;
            if (v285 == 0 || !v615)
            {
              goto LABEL_1143;
            }

            v286 = *(a7 + 160);
            v284 = v283;
            while (v284 < v286)
            {
              v287 = *v284;
              if (v287 < 0xC0)
              {
                v289 = 1;
              }

              else
              {
                v288 = v284[1] & 0x3F;
                if ((v287 & 0x20) != 0)
                {
                  if ((v287 & 0x10) != 0)
                  {
                    if ((v287 & 8) != 0)
                    {
                      v290 = v284[2] & 0x3F;
                      v291 = v284[3] & 0x3F;
                      v292 = v284[4] & 0x3F;
                      if ((v287 & 4) != 0)
                      {
                        v287 = ((v287 & 1) << 30) | (v288 << 24) | (v290 << 18) | (v291 << 12) | (v292 << 6) | v284[5] & 0x3F;
                        v289 = 6;
                      }

                      else
                      {
                        v287 = ((v287 & 3) << 24) | (v288 << 18) | (v290 << 12) | (v291 << 6) | v292;
                        v289 = 5;
                      }
                    }

                    else
                    {
                      v287 = ((v287 & 7) << 18) | (v288 << 12) | ((v284[2] & 0x3F) << 6) | v284[3] & 0x3F;
                      v289 = 4;
                    }
                  }

                  else
                  {
                    v287 = ((v287 & 0xF) << 12) | (v288 << 6) | v284[2] & 0x3F;
                    v289 = 3;
                  }
                }

                else
                {
                  v289 = 2;
                  v287 = v284[1] & 0x3F | ((v287 & 0x1F) << 6);
                }
              }

              if (v84 != v287)
              {
                v284 += v289;
                *(v15 + 80) = v284;
                if (--v285)
                {
                  continue;
                }
              }

              goto LABEL_1143;
            }

            v512 = *(a7 + 128);
            if (!*(a7 + 128) || v284 <= *(a7 + 176) || (*(a7 + 76) = 1, v512 == 1))
            {
LABEL_1143:
              if (v11 != 2)
              {
LABEL_2901:
                if (v284 > v283)
                {
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -49;
                  goto LABEL_3173;
                }
              }

              goto LABEL_2990;
            }
          }

          else
          {
            v313 = v283;
            v615 = v31 >= v30;
            v314 = v31 - v30;
            if (v314 == 0 || !v615)
            {
              goto LABEL_1148;
            }

            v315 = *(a7 + 160);
            v313 = v283;
            while (v313 < v315)
            {
              if (v84 != *v313)
              {
                *(v15 + 80) = ++v313;
                if (--v314)
                {
                  continue;
                }
              }

              goto LABEL_1148;
            }

            v513 = *(a7 + 128);
            if (!*(a7 + 128) || v313 <= *(a7 + 176) || (*(a7 + 76) = 1, v513 == 1))
            {
LABEL_1148:
              if (v11 != 2)
              {
LABEL_2927:
                if (v313 != v283)
                {
                  v12 = 0;
                  a2 = *v15;
                  v1207 = 32;
                  goto LABEL_3173;
                }
              }

              goto LABEL_2990;
            }
          }

          return 4294967294;
        }

        if (!v1244)
        {
LABEL_3225:
          v12 = 0;
          v1207 = 31;
          goto LABEL_3173;
        }

        v1207 = -50;
        goto LABEL_3198;
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
        v32 = a2 + 1;
        *v15 = a2 + 1;
        v33 = *a2 - 85;
        v34 = rep_min[v33];
        *(v15 + 56) = v34;
        *(v15 + 60) = rep_max[v33];
        v11 = rep_typ[v33];
        goto LABEL_346;
      case 0x5Bu:
      case 0x5Cu:
        v34 = 0;
        *(v15 + 56) = 0;
        *(v15 + 60) = __rev16(*(a2 + 1));
        v11 = *a2 != 92;
        goto LABEL_186;
      case 0x5Du:
        v34 = __rev16(*(a2 + 1));
        *(v15 + 56) = v34;
        *(v15 + 60) = v34;
LABEL_186:
        v32 = a2 + 3;
        *v15 = a2 + 3;
        goto LABEL_346;
      case 0x5Eu:
        v34 = 0;
        v124 = 0xFFFFFFFF00000000;
        goto LABEL_344;
      case 0x5Fu:
        *(v15 + 56) = 0xFFFFFFFF00000001;
        v181 = (v15 + 56);
        *v15 = a2 + 2;
        v182 = a2[1];
        *(v15 + 64) = v182;
        v183 = (v15 + 64);
        if ((v182 - 15) <= 1)
        {
          *v15 = a2 + 3;
          v184 = a2[2];
          *v15 = a2 + 4;
          v185 = a2[3];
          *(v15 + 68) = v185;
          v11 = 2;
          v34 = 1;
LABEL_348:
          v186 = v182;
          v19 = 4294967252;
          if (v184 <= 5)
          {
            if (v184 <= 2)
            {
              if (v184)
              {
                if (v184 == 1)
                {
                  v439 = *(a7 + 160);
                  v440 = *(v15 + 80);
                  v441 = v182 == 15;
                  v442 = 1;
                  while (v440 < v439)
                  {
                    *(v15 + 80) = v440 + 1;
                    v443 = *v440;
                    if (v1244 && v443 >= 0xC0)
                    {
                      if ((v443 & 0x20) != 0)
                      {
                        v445 = v440[1] & 0x3F;
                        if ((v443 & 0x10) != 0)
                        {
                          if ((v443 & 8) != 0)
                          {
                            v446 = v440[2] & 0x3F;
                            v447 = v440[3] & 0x3F;
                            v448 = v440[4] & 0x3F;
                            if ((v443 & 4) != 0)
                            {
                              v443 = ((v443 & 1) << 30) | (v445 << 24) | (v446 << 18) | (v447 << 12) | (v448 << 6) | v440[5] & 0x3F;
                              v440 += 6;
                            }

                            else
                            {
                              v443 = ((v443 & 3) << 24) | (v445 << 18) | (v446 << 12) | (v447 << 6) | v448;
                              v440 += 5;
                            }
                          }

                          else
                          {
                            v443 = ((v443 & 7) << 18) | (v445 << 12) | ((v440[2] & 0x3F) << 6) | v440[3] & 0x3F;
                            v440 += 4;
                          }
                        }

                        else
                        {
                          v443 = ((v443 & 0xF) << 12) | (v445 << 6) | v440[2] & 0x3F;
                          v440 += 3;
                        }

                        *(v15 + 80) = v440;
                      }

                      else
                      {
                        *(v15 + 80) = v440 + 2;
                        v444 = v440[1] & 0x3F | ((v443 & 0x1F) << 6);
                        v440 += 2;
                        v443 = v444;
                      }
                    }

                    else
                    {
                      ++v440;
                    }

                    v449 = BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v443 & 0x7F | (_pcre2_ucd_stage1_8[v443 >> 7] << 7)]]);
                    v451 = v449 == 5 || v449 == 9 || v449 == 8;
                    if (v451 == v441)
                    {
                      goto LABEL_2864;
                    }

                    if (++v442 > v34)
                    {
                      goto LABEL_393;
                    }
                  }

                  v487 = *(a7 + 128);
                  if (!*(a7 + 128) || v440 <= *(a7 + 176))
                  {
                    goto LABEL_2864;
                  }
                }

                else
                {
                  v187 = *(a7 + 160);
                  v188 = *(v15 + 80);
                  v189 = 1;
                  while (v188 < v187)
                  {
                    *(v15 + 80) = v188 + 1;
                    v190 = *v188;
                    if (v1244 && v190 >= 0xC0)
                    {
                      if ((v190 & 0x20) != 0)
                      {
                        v192 = v188[1] & 0x3F;
                        if ((v190 & 0x10) != 0)
                        {
                          if ((v190 & 8) != 0)
                          {
                            v193 = v188[2] & 0x3F;
                            v194 = v188[3] & 0x3F;
                            v195 = v188[4] & 0x3F;
                            if ((v190 & 4) != 0)
                            {
                              v190 = ((v190 & 1) << 30) | (v192 << 24) | (v193 << 18) | (v194 << 12) | (v195 << 6) | v188[5] & 0x3F;
                              v188 += 6;
                            }

                            else
                            {
                              v190 = ((v190 & 3) << 24) | (v192 << 18) | (v193 << 12) | (v194 << 6) | v195;
                              v188 += 5;
                            }
                          }

                          else
                          {
                            v190 = ((v190 & 7) << 18) | (v192 << 12) | ((v188[2] & 0x3F) << 6) | v188[3] & 0x3F;
                            v188 += 4;
                          }
                        }

                        else
                        {
                          v190 = ((v190 & 0xF) << 12) | (v192 << 6) | v188[2] & 0x3F;
                          v188 += 3;
                        }

                        *(v15 + 80) = v188;
                      }

                      else
                      {
                        *(v15 + 80) = v188 + 2;
                        v191 = v188[1] & 0x3F | ((v190 & 0x1F) << 6);
                        v188 += 2;
                        v190 = v191;
                      }
                    }

                    else
                    {
                      ++v188;
                    }

                    if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v190 & 0x7F | (_pcre2_ucd_stage1_8[v190 >> 7] << 7)]])] == v185) != (v182 != 15))
                    {
                      goto LABEL_2864;
                    }

                    if (++v189 > v34)
                    {
                      goto LABEL_393;
                    }
                  }

LABEL_2861:
                  v487 = *(a7 + 128);
                  if (!*(a7 + 128) || v188 <= *(a7 + 176))
                  {
                    goto LABEL_2864;
                  }
                }

                goto LABEL_2863;
              }

              if (v182 == 15)
              {
                goto LABEL_1212;
              }

              v471 = *(a7 + 160);
              v322 = *(v15 + 80);
              v472 = 1;
              while (v322 < v471)
              {
                v473 = v322 + 1;
                *(v15 + 80) = v322 + 1;
                if (v1244)
                {
                  v474 = *v322;
                  if (v474 >= 0xC0)
                  {
                    v475 = 2;
                    v476 = 3;
                    v477 = 4;
                    v478 = 5;
                    if ((v474 & 4) != 0)
                    {
                      v478 = 6;
                    }

                    if ((v474 & 8) != 0)
                    {
                      v477 = v478;
                    }

                    if ((v474 & 0x10) != 0)
                    {
                      v476 = v477;
                    }

                    if ((v474 & 0x20) != 0)
                    {
                      v475 = v476;
                    }

                    v473 = &v322[v475];
                    *(v15 + 80) = v473;
                  }
                }

                ++v472;
                v322 = v473;
                if (v472 > v34)
                {
                  goto LABEL_393;
                }
              }

              v487 = *(a7 + 128);
              if (!*(a7 + 128))
              {
                goto LABEL_1212;
              }

              goto LABEL_1469;
            }

            if (v184 == 3)
            {
              v479 = *(a7 + 160);
              v228 = *(v15 + 80);
              v480 = 1;
              while (v228 < v479)
              {
                *(v15 + 80) = v228 + 1;
                v481 = *v228;
                if (v1244 && v481 >= 0xC0)
                {
                  if ((v481 & 0x20) != 0)
                  {
                    v483 = v228[1] & 0x3F;
                    if ((v481 & 0x10) != 0)
                    {
                      if ((v481 & 8) != 0)
                      {
                        v484 = v228[2] & 0x3F;
                        v485 = v228[3] & 0x3F;
                        v486 = v228[4] & 0x3F;
                        if ((v481 & 4) != 0)
                        {
                          v481 = ((v481 & 1) << 30) | (v483 << 24) | (v484 << 18) | (v485 << 12) | (v486 << 6) | v228[5] & 0x3F;
                          v228 += 6;
                        }

                        else
                        {
                          v481 = ((v481 & 3) << 24) | (v483 << 18) | (v484 << 12) | (v485 << 6) | v486;
                          v228 += 5;
                        }
                      }

                      else
                      {
                        v481 = ((v481 & 7) << 18) | (v483 << 12) | ((v228[2] & 0x3F) << 6) | v228[3] & 0x3F;
                        v228 += 4;
                      }
                    }

                    else
                    {
                      v481 = ((v481 & 0xF) << 12) | (v483 << 6) | v228[2] & 0x3F;
                      v228 += 3;
                    }

                    *(v15 + 80) = v228;
                  }

                  else
                  {
                    *(v15 + 80) = v228 + 2;
                    v482 = v228[1] & 0x3F | ((v481 & 0x1F) << 6);
                    v228 += 2;
                    v481 = v482;
                  }
                }

                else
                {
                  ++v228;
                }

                if ((v185 == BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v481 & 0x7F | (_pcre2_ucd_stage1_8[v481 >> 7] << 7)]])) != (v182 != 15))
                {
                  goto LABEL_2864;
                }

                if (++v480 > v34)
                {
                  goto LABEL_393;
                }
              }
            }

            else if (v184 == 4)
            {
              v452 = *(a7 + 160);
              v228 = *(v15 + 80);
              v453 = 1;
              while (v228 < v452)
              {
                *(v15 + 80) = v228 + 1;
                v454 = *v228;
                if (v1244 && v454 >= 0xC0)
                {
                  if ((v454 & 0x20) != 0)
                  {
                    v456 = v228[1] & 0x3F;
                    if ((v454 & 0x10) != 0)
                    {
                      if ((v454 & 8) != 0)
                      {
                        v457 = v228[2] & 0x3F;
                        v458 = v228[3] & 0x3F;
                        v459 = v228[4] & 0x3F;
                        if ((v454 & 4) != 0)
                        {
                          v454 = ((v454 & 1) << 30) | (v456 << 24) | (v457 << 18) | (v458 << 12) | (v459 << 6) | v228[5] & 0x3F;
                          v228 += 6;
                        }

                        else
                        {
                          v454 = ((v454 & 3) << 24) | (v456 << 18) | (v457 << 12) | (v458 << 6) | v459;
                          v228 += 5;
                        }
                      }

                      else
                      {
                        v454 = ((v454 & 7) << 18) | (v456 << 12) | ((v228[2] & 0x3F) << 6) | v228[3] & 0x3F;
                        v228 += 4;
                      }
                    }

                    else
                    {
                      v454 = ((v454 & 0xF) << 12) | (v456 << 6) | v228[2] & 0x3F;
                      v228 += 3;
                    }

                    *(v15 + 80) = v228;
                  }

                  else
                  {
                    *(v15 + 80) = v228 + 2;
                    v455 = v228[1] & 0x3F | ((v454 & 0x1F) << 6);
                    v228 += 2;
                    v454 = v455;
                  }
                }

                else
                {
                  ++v228;
                }

                if ((v185 == LOBYTE(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v454 & 0x7F | (_pcre2_ucd_stage1_8[v454 >> 7] << 7)]])) != (v182 != 15))
                {
                  goto LABEL_2864;
                }

                if (++v453 > v34)
                {
                  goto LABEL_393;
                }
              }
            }

            else
            {
              v245 = *(a7 + 160);
              v228 = *(v15 + 80);
              v246 = 1;
              while (v228 < v245)
              {
                *(v15 + 80) = v228 + 1;
                v247 = *v228;
                if (v1244 && v247 >= 0xC0)
                {
                  if ((v247 & 0x20) != 0)
                  {
                    v249 = v228[1] & 0x3F;
                    if ((v247 & 0x10) != 0)
                    {
                      if ((v247 & 8) != 0)
                      {
                        v250 = v228[2] & 0x3F;
                        v251 = v228[3] & 0x3F;
                        v252 = v228[4] & 0x3F;
                        if ((v247 & 4) != 0)
                        {
                          v247 = ((v247 & 1) << 30) | (v249 << 24) | (v250 << 18) | (v251 << 12) | (v252 << 6) | v228[5] & 0x3F;
                          v228 += 6;
                        }

                        else
                        {
                          v247 = ((v247 & 3) << 24) | (v249 << 18) | (v250 << 12) | (v251 << 6) | v252;
                          v228 += 5;
                        }
                      }

                      else
                      {
                        v247 = ((v247 & 7) << 18) | (v249 << 12) | ((v228[2] & 0x3F) << 6) | v228[3] & 0x3F;
                        v228 += 4;
                      }
                    }

                    else
                    {
                      v247 = ((v247 & 0xF) << 12) | (v249 << 6) | v228[2] & 0x3F;
                      v228 += 3;
                    }

                    *(v15 + 80) = v228;
                  }

                  else
                  {
                    *(v15 + 80) = v228 + 2;
                    v248 = v228[1] & 0x3F | ((v247 & 0x1F) << 6);
                    v228 += 2;
                    v247 = v248;
                  }
                }

                else
                {
                  ++v228;
                }

                if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v247 & 0x7F | (_pcre2_ucd_stage1_8[v247 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) != (v182 != 15))
                {
                  goto LABEL_2864;
                }

                if (++v246 > v34)
                {
                  goto LABEL_393;
                }
              }
            }

LABEL_1078:
            v487 = *(a7 + 128);
            if (!*(a7 + 128) || v228 <= *(a7 + 176))
            {
              goto LABEL_2864;
            }

            goto LABEL_2863;
          }

          if (v184 > 8)
          {
            if (v184 == 9)
            {
              v460 = *(a7 + 160);
              v322 = *(v15 + 80);
              v461 = &_pcre2_ucd_caseless_sets_8[v185];
              v462 = 1;
              while (v322 < v460)
              {
                *(v15 + 80) = v322 + 1;
                v463 = *v322;
                if (v1244 && v463 >= 0xC0)
                {
                  if ((v463 & 0x20) != 0)
                  {
                    v465 = v322[1] & 0x3F;
                    if ((v463 & 0x10) != 0)
                    {
                      if ((v463 & 8) != 0)
                      {
                        v466 = v322[2] & 0x3F;
                        v467 = v322[3] & 0x3F;
                        v468 = v322[4] & 0x3F;
                        if ((v463 & 4) != 0)
                        {
                          v463 = ((v463 & 1) << 30) | (v465 << 24) | (v466 << 18) | (v467 << 12) | (v468 << 6) | v322[5] & 0x3F;
                          v322 += 6;
                        }

                        else
                        {
                          v463 = ((v463 & 3) << 24) | (v465 << 18) | (v466 << 12) | (v467 << 6) | v468;
                          v322 += 5;
                        }
                      }

                      else
                      {
                        v463 = ((v463 & 7) << 18) | (v465 << 12) | ((v322[2] & 0x3F) << 6) | v322[3] & 0x3F;
                        v322 += 4;
                      }
                    }

                    else
                    {
                      v463 = ((v463 & 0xF) << 12) | (v465 << 6) | v322[2] & 0x3F;
                      v322 += 3;
                    }

                    *(v15 + 80) = v322;
                  }

                  else
                  {
                    *(v15 + 80) = v322 + 2;
                    v464 = v322[1] & 0x3F | ((v463 & 0x1F) << 6);
                    v322 += 2;
                    v463 = v464;
                  }
                }

                else
                {
                  ++v322;
                }

                v469 = v461;
                do
                {
                  v470 = *v469;
                  if (v463 < *v469)
                  {
                    if (v182 != 15)
                    {
                      goto LABEL_2864;
                    }

                    v186 = 15;
                    goto LABEL_1042;
                  }

                  ++v469;
                }

                while (v463 != v470);
                if (v186 == 15)
                {
                  goto LABEL_2864;
                }

LABEL_1042:
                if (++v462 > v34)
                {
                  goto LABEL_393;
                }
              }
            }

            else
            {
              if (v184 != 10)
              {
                return v19;
              }

              v321 = *(a7 + 160);
              v322 = *(v15 + 80);
              v323 = v182 == 15;
              v324 = 1;
              while (v322 < v321)
              {
                *(v15 + 80) = v322 + 1;
                v325 = *v322;
                if (v1244 && v325 >= 0xC0)
                {
                  if ((v325 & 0x20) != 0)
                  {
                    v327 = v322[1] & 0x3F;
                    if ((v325 & 0x10) != 0)
                    {
                      if ((v325 & 8) != 0)
                      {
                        v328 = v322[2] & 0x3F;
                        v329 = v322[3] & 0x3F;
                        v330 = v322[4] & 0x3F;
                        if ((v325 & 4) != 0)
                        {
                          v325 = ((v325 & 1) << 30) | (v327 << 24) | (v328 << 18) | (v329 << 12) | (v330 << 6) | v322[5] & 0x3F;
                          v322 += 6;
                        }

                        else
                        {
                          v325 = ((v325 & 3) << 24) | (v327 << 18) | (v328 << 12) | (v329 << 6) | v330;
                          v322 += 5;
                        }
                      }

                      else
                      {
                        v325 = ((v325 & 7) << 18) | (v327 << 12) | ((v322[2] & 0x3F) << 6) | v322[3] & 0x3F;
                        v322 += 4;
                      }
                    }

                    else
                    {
                      v325 = ((v325 & 0xF) << 12) | (v327 << 6) | v322[2] & 0x3F;
                      v322 += 3;
                    }

                    *(v15 + 80) = v322;
                  }

                  else
                  {
                    *(v15 + 80) = v322 + 2;
                    v326 = v322[1] & 0x3F | ((v325 & 0x1F) << 6);
                    v322 += 2;
                    v325 = v326;
                  }
                }

                else
                {
                  ++v322;
                }

                if (v325 - 36 > 0x3C || ((1 << (v325 - 36)) & 0x1000000010000001) == 0)
                {
                  v333 = (v325 - 160) >> 5;
                  v332 = v325 >> 13 > 6;
                  if (v333 < 0x6BB)
                  {
                    v332 = 1;
                  }
                }

                else
                {
                  v332 = 1;
                }

                if (v332 == v323)
                {
                  goto LABEL_2864;
                }

                if (++v324 > v34)
                {
                  goto LABEL_393;
                }
              }
            }

            v487 = *(a7 + 128);
            if (!*(a7 + 128))
            {
              goto LABEL_2864;
            }

LABEL_1469:
            if (v322 <= *(a7 + 176))
            {
              goto LABEL_2864;
            }

            goto LABEL_2863;
          }

          if ((v184 - 6) >= 2)
          {
            if (v184 != 8)
            {
              return v19;
            }

            v429 = *(a7 + 160);
            v228 = *(v15 + 80);
            v430 = 1;
            while (v228 < v429)
            {
              *(v15 + 80) = v228 + 1;
              v431 = *v228;
              if (v1244 && v431 >= 0xC0)
              {
                if ((v431 & 0x20) != 0)
                {
                  v433 = v228[1] & 0x3F;
                  if ((v431 & 0x10) != 0)
                  {
                    if ((v431 & 8) != 0)
                    {
                      v434 = v228[2] & 0x3F;
                      v435 = v228[3] & 0x3F;
                      v436 = v228[4] & 0x3F;
                      if ((v431 & 4) != 0)
                      {
                        v431 = ((v431 & 1) << 30) | (v433 << 24) | (v434 << 18) | (v435 << 12) | (v436 << 6) | v228[5] & 0x3F;
                        v228 += 6;
                      }

                      else
                      {
                        v431 = ((v431 & 3) << 24) | (v433 << 18) | (v434 << 12) | (v435 << 6) | v436;
                        v228 += 5;
                      }
                    }

                    else
                    {
                      v431 = ((v431 & 7) << 18) | (v433 << 12) | ((v228[2] & 0x3F) << 6) | v228[3] & 0x3F;
                      v228 += 4;
                    }
                  }

                  else
                  {
                    v431 = ((v431 & 0xF) << 12) | (v433 << 6) | v228[2] & 0x3F;
                    v228 += 3;
                  }

                  *(v15 + 80) = v228;
                }

                else
                {
                  *(v15 + 80) = v228 + 2;
                  v432 = v228[1] & 0x3F | ((v431 & 0x1F) << 6);
                  v228 += 2;
                  v431 = v432;
                }
              }

              else
              {
                ++v228;
              }

              v438 = v431 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v431 & 0x7F | (_pcre2_ucd_stage1_8[v431 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
              if (((v182 != 15) ^ v438))
              {
                goto LABEL_2864;
              }

              if (++v430 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1078;
          }

          v227 = *(a7 + 160);
          v228 = *(v15 + 80);
          v229 = 1;
          while (1)
          {
            if (v228 >= v227)
            {
              goto LABEL_1078;
            }

            *(v15 + 80) = v228 + 1;
            v230 = *v228;
            if (v1244 && v230 >= 0xC0)
            {
              if ((v230 & 0x20) != 0)
              {
                v232 = v228[1] & 0x3F;
                if ((v230 & 0x10) != 0)
                {
                  if ((v230 & 8) != 0)
                  {
                    v233 = v228[2] & 0x3F;
                    v234 = v228[3] & 0x3F;
                    v235 = v228[4] & 0x3F;
                    if ((v230 & 4) != 0)
                    {
                      v230 = ((v230 & 1) << 30) | (v232 << 24) | (v233 << 18) | (v234 << 12) | (v235 << 6) | v228[5] & 0x3F;
                      v228 += 6;
                    }

                    else
                    {
                      v230 = ((v230 & 3) << 24) | (v232 << 18) | (v233 << 12) | (v234 << 6) | v235;
                      v228 += 5;
                    }
                  }

                  else
                  {
                    v230 = ((v230 & 7) << 18) | (v232 << 12) | ((v228[2] & 0x3F) << 6) | v228[3] & 0x3F;
                    v228 += 4;
                  }
                }

                else
                {
                  v230 = ((v230 & 0xF) << 12) | (v232 << 6) | v228[2] & 0x3F;
                  v228 += 3;
                }

                *(v15 + 80) = v228;
              }

              else
              {
                *(v15 + 80) = v228 + 2;
                v231 = v228[1] & 0x3F | ((v230 & 0x1F) << 6);
                v228 += 2;
                v230 = v231;
              }
            }

            else
            {
              ++v228;
            }

            if (v230 < 0x2000)
            {
              if (v230 > 132)
              {
                if (v230 > 5759)
                {
                  if (v230 != 5760 && v230 != 6158)
                  {
                    goto LABEL_474;
                  }
                }

                else if (v230 != 133 && v230 != 160)
                {
                  goto LABEL_474;
                }
              }

              else if (v230 > 0x20 || ((1 << v230) & 0x100003E00) == 0)
              {
                goto LABEL_474;
              }
            }

            else if ((v230 - 0x2000) >= 0xB && ((v230 - 8232) > 0x37 || ((1 << (v230 - 40)) & 0x80000000000083) == 0) && v230 != 12288)
            {
LABEL_474:
              if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v230 & 0x7F | (_pcre2_ucd_stage1_8[v230 >> 7] << 7)]])] == 6) != (v182 != 15))
              {
                goto LABEL_2864;
              }

              goto LABEL_466;
            }

            if (v182 == 15)
            {
              goto LABEL_2864;
            }

LABEL_466:
            if (++v229 > v34)
            {
              goto LABEL_393;
            }
          }
        }

        v11 = 2;
        v34 = 1;
        goto LABEL_372;
      case 0x60u:
        v34 = 0;
        v124 = 0x100000000;
LABEL_344:
        *(v15 + 56) = v124;
        v32 = a2 + 1;
        goto LABEL_345;
      case 0x61u:
        v34 = 0;
        *(v15 + 56) = 0;
        *(v15 + 60) = __rev16(*(a2 + 1));
        v32 = a2 + 3;
LABEL_345:
        *v15 = v32;
        v11 = 2;
LABEL_346:
        *v15 = v32 + 1;
        v182 = *v32;
        *(v15 + 64) = v182;
        v183 = (v15 + 64);
        if ((v182 - 15) < 2)
        {
          *v15 = v32 + 2;
          v184 = v32[1];
          *v15 = v32 + 3;
          v185 = v32[2];
          *(v15 + 68) = v185;
          if (v34)
          {
            goto LABEL_348;
          }

LABEL_393:
          v207 = *(v15 + 56);
          v206 = *(v15 + 60);
          v208 = v206 - v207;
          if (v206 == v207)
          {
            goto LABEL_2990;
          }

          if (v11)
          {
            v209 = *(v15 + 80);
            *(v15 + 8) = v209;
            if ((v184 & 0x80000000) == 0)
            {
              v19 = 4294967252;
              if (v184 <= 5)
              {
                if (v184 > 2)
                {
                  if (v184 == 3)
                  {
                    v615 = v206 >= v207;
                    v588 = v206 - v207;
                    if (v588 == 0 || !v615)
                    {
                      goto LABEL_1366;
                    }

                    v589 = *(a7 + 160);
                    while (v209 < v589)
                    {
                      v590 = *v209;
                      v591 = 1;
                      if (v1244 && v590 >= 0xC0)
                      {
                        v592 = v209[1] & 0x3F;
                        if ((v590 & 0x20) != 0)
                        {
                          if ((v590 & 0x10) != 0)
                          {
                            if ((v590 & 8) != 0)
                            {
                              v593 = v209[2] & 0x3F;
                              v594 = v209[3] & 0x3F;
                              v595 = v209[4] & 0x3F;
                              if ((v590 & 4) != 0)
                              {
                                v590 = ((v590 & 1) << 30) | (v592 << 24) | (v593 << 18) | (v594 << 12) | (v595 << 6) | v209[5] & 0x3F;
                                v591 = 6;
                              }

                              else
                              {
                                v590 = ((v590 & 3) << 24) | (v592 << 18) | (v593 << 12) | (v594 << 6) | v595;
                                v591 = 5;
                              }
                            }

                            else
                            {
                              v590 = ((v590 & 7) << 18) | (v592 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v591 = 4;
                            }
                          }

                          else
                          {
                            v590 = ((v590 & 0xF) << 12) | (v592 << 6) | v209[2] & 0x3F;
                            v591 = 3;
                          }
                        }

                        else
                        {
                          v591 = 2;
                          v590 = v209[1] & 0x3F | ((v590 & 0x1F) << 6);
                        }
                      }

                      if ((*(v15 + 68) == BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v590 & 0x7F | (_pcre2_ucd_stage1_8[v590 >> 7] << 7)]])) == (*(v15 + 64) != 15))
                      {
                        v209 += v591;
                        *(v15 + 80) = v209;
                        if (--v588)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1366;
                    }
                  }

                  else if (v184 == 4)
                  {
                    v615 = v206 >= v207;
                    v563 = v206 - v207;
                    if (v563 == 0 || !v615)
                    {
                      goto LABEL_1366;
                    }

                    v564 = *(a7 + 160);
                    while (v209 < v564)
                    {
                      v565 = *v209;
                      v566 = 1;
                      if (v1244 && v565 >= 0xC0)
                      {
                        v567 = v209[1] & 0x3F;
                        if ((v565 & 0x20) != 0)
                        {
                          if ((v565 & 0x10) != 0)
                          {
                            if ((v565 & 8) != 0)
                            {
                              v568 = v209[2] & 0x3F;
                              v569 = v209[3] & 0x3F;
                              v570 = v209[4] & 0x3F;
                              if ((v565 & 4) != 0)
                              {
                                v565 = ((v565 & 1) << 30) | (v567 << 24) | (v568 << 18) | (v569 << 12) | (v570 << 6) | v209[5] & 0x3F;
                                v566 = 6;
                              }

                              else
                              {
                                v565 = ((v565 & 3) << 24) | (v567 << 18) | (v568 << 12) | (v569 << 6) | v570;
                                v566 = 5;
                              }
                            }

                            else
                            {
                              v565 = ((v565 & 7) << 18) | (v567 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v566 = 4;
                            }
                          }

                          else
                          {
                            v565 = ((v565 & 0xF) << 12) | (v567 << 6) | v209[2] & 0x3F;
                            v566 = 3;
                          }
                        }

                        else
                        {
                          v566 = 2;
                          v565 = v209[1] & 0x3F | ((v565 & 0x1F) << 6);
                        }
                      }

                      if ((*(v15 + 68) == LOBYTE(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v565 & 0x7F | (_pcre2_ucd_stage1_8[v565 >> 7] << 7)]])) == (*(v15 + 64) != 15))
                      {
                        v209 += v566;
                        *(v15 + 80) = v209;
                        if (--v563)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1366;
                    }
                  }

                  else
                  {
                    v615 = v206 >= v207;
                    v352 = v206 - v207;
                    if (v352 == 0 || !v615)
                    {
                      goto LABEL_1366;
                    }

                    v353 = *(a7 + 160);
                    while (v209 < v353)
                    {
                      v354 = *v209;
                      v355 = 1;
                      if (v1244 && v354 >= 0xC0)
                      {
                        v356 = v209[1] & 0x3F;
                        if ((v354 & 0x20) != 0)
                        {
                          if ((v354 & 0x10) != 0)
                          {
                            if ((v354 & 8) != 0)
                            {
                              v357 = v209[2] & 0x3F;
                              v358 = v209[3] & 0x3F;
                              v359 = v209[4] & 0x3F;
                              if ((v354 & 4) != 0)
                              {
                                v354 = ((v354 & 1) << 30) | (v356 << 24) | (v357 << 18) | (v358 << 12) | (v359 << 6) | v209[5] & 0x3F;
                                v355 = 6;
                              }

                              else
                              {
                                v354 = ((v354 & 3) << 24) | (v356 << 18) | (v357 << 12) | (v358 << 6) | v359;
                                v355 = 5;
                              }
                            }

                            else
                            {
                              v354 = ((v354 & 7) << 18) | (v356 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v355 = 4;
                            }
                          }

                          else
                          {
                            v354 = ((v354 & 0xF) << 12) | (v356 << 6) | v209[2] & 0x3F;
                            v355 = 3;
                          }
                        }

                        else
                        {
                          v355 = 2;
                          v354 = v209[1] & 0x3F | ((v354 & 0x1F) << 6);
                        }
                      }

                      if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v354 & 0x7F | (_pcre2_ucd_stage1_8[v354 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) == (*v183 != 15))
                      {
                        v209 += v355;
                        *(v15 + 80) = v209;
                        if (--v352)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1366;
                    }
                  }
                }

                else if (v184)
                {
                  if (v184 == 1)
                  {
                    v615 = v206 >= v207;
                    v552 = v206 - v207;
                    if (v552 == 0 || !v615)
                    {
                      goto LABEL_1366;
                    }

                    v553 = *(a7 + 160);
                    while (v209 < v553)
                    {
                      v554 = *v209;
                      v555 = 1;
                      if (v1244 && v554 >= 0xC0)
                      {
                        v556 = v209[1] & 0x3F;
                        if ((v554 & 0x20) != 0)
                        {
                          if ((v554 & 0x10) != 0)
                          {
                            if ((v554 & 8) != 0)
                            {
                              v557 = v209[2] & 0x3F;
                              v558 = v209[3] & 0x3F;
                              v559 = v209[4] & 0x3F;
                              if ((v554 & 4) != 0)
                              {
                                v554 = ((v554 & 1) << 30) | (v556 << 24) | (v557 << 18) | (v558 << 12) | (v559 << 6) | v209[5] & 0x3F;
                                v555 = 6;
                              }

                              else
                              {
                                v554 = ((v554 & 3) << 24) | (v556 << 18) | (v557 << 12) | (v558 << 6) | v559;
                                v555 = 5;
                              }
                            }

                            else
                            {
                              v554 = ((v554 & 7) << 18) | (v556 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v555 = 4;
                            }
                          }

                          else
                          {
                            v554 = ((v554 & 0xF) << 12) | (v556 << 6) | v209[2] & 0x3F;
                            v555 = 3;
                          }
                        }

                        else
                        {
                          v555 = 2;
                          v554 = v209[1] & 0x3F | ((v554 & 0x1F) << 6);
                        }
                      }

                      v560 = BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v554 & 0x7F | (_pcre2_ucd_stage1_8[v554 >> 7] << 7)]]);
                      v562 = v560 == 5 || v560 == 9 || v560 == 8;
                      if (v562 != (*v183 == 15))
                      {
                        v209 += v555;
                        *(v15 + 80) = v209;
                        if (--v552)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1366;
                    }
                  }

                  else
                  {
                    if (v184 != 2)
                    {
                      return v19;
                    }

                    v615 = v206 >= v207;
                    v210 = v206 - v207;
                    if (v210 == 0 || !v615)
                    {
                      goto LABEL_1366;
                    }

                    v211 = *(a7 + 160);
                    while (v209 < v211)
                    {
                      v212 = *v209;
                      v213 = 1;
                      if (v1244 && v212 >= 0xC0)
                      {
                        v214 = v209[1] & 0x3F;
                        if ((v212 & 0x20) != 0)
                        {
                          if ((v212 & 0x10) != 0)
                          {
                            if ((v212 & 8) != 0)
                            {
                              v215 = v209[2] & 0x3F;
                              v216 = v209[3] & 0x3F;
                              v217 = v209[4] & 0x3F;
                              if ((v212 & 4) != 0)
                              {
                                v212 = ((v212 & 1) << 30) | (v214 << 24) | (v215 << 18) | (v216 << 12) | (v217 << 6) | v209[5] & 0x3F;
                                v213 = 6;
                              }

                              else
                              {
                                v212 = ((v212 & 3) << 24) | (v214 << 18) | (v215 << 12) | (v216 << 6) | v217;
                                v213 = 5;
                              }
                            }

                            else
                            {
                              v212 = ((v212 & 7) << 18) | (v214 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v213 = 4;
                            }
                          }

                          else
                          {
                            v212 = ((v212 & 0xF) << 12) | (v214 << 6) | v209[2] & 0x3F;
                            v213 = 3;
                          }
                        }

                        else
                        {
                          v213 = 2;
                          v212 = v209[1] & 0x3F | ((v212 & 0x1F) << 6);
                        }
                      }

                      if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v212 & 0x7F | (_pcre2_ucd_stage1_8[v212 >> 7] << 7)]])] == *(v15 + 68)) == (*(v15 + 64) != 15))
                      {
                        v209 += v213;
                        *(v15 + 80) = v209;
                        if (--v210)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1366;
                    }
                  }
                }

                else
                {
                  v615 = v206 >= v207;
                  v580 = v206 - v207;
                  if (v580 == 0 || !v615)
                  {
                    goto LABEL_1366;
                  }

                  v581 = *(a7 + 160);
                  while (v209 < v581)
                  {
                    v582 = 1;
                    if (v1244)
                    {
                      v583 = *v209;
                      v584 = 2;
                      v585 = 3;
                      v586 = 4;
                      v587 = 5;
                      if ((v583 & 4) != 0)
                      {
                        v587 = 6;
                      }

                      if ((v583 & 8) != 0)
                      {
                        v586 = v587;
                      }

                      if ((v583 & 0x10) != 0)
                      {
                        v585 = v586;
                      }

                      if ((v583 & 0x20) != 0)
                      {
                        v584 = v585;
                      }

                      if (v583 >= 0xC0)
                      {
                        v582 = v584;
                      }
                    }

                    if (*v183 != 15)
                    {
                      v209 += v582;
                      *(v15 + 80) = v209;
                      if (--v580)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1366;
                  }
                }

LABEL_1363:
                v596 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v209 > *(a7 + 176))
                  {
                    *(a7 + 76) = 1;
                    if (v596 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

LABEL_1366:
                if (v11 != 2)
                {
LABEL_1367:
                  if (v209 > *(v15 + 8))
                  {
                    v12 = 0;
                    a2 = *v15;
                    v1207 = -34;
                    goto LABEL_3173;
                  }
                }

                goto LABEL_2990;
              }

              if (v184 > 8)
              {
                if (v184 == 9)
                {
                  if (v206 <= v207)
                  {
                    goto LABEL_1366;
                  }

                  v571 = *(a7 + 160);
                  while (v209 < v571)
                  {
                    v572 = *v209;
                    v573 = 1;
                    if (v1244 && v572 >= 0xC0)
                    {
                      v574 = v209[1] & 0x3F;
                      if ((v572 & 0x20) != 0)
                      {
                        if ((v572 & 0x10) != 0)
                        {
                          if ((v572 & 8) != 0)
                          {
                            v575 = v209[2] & 0x3F;
                            v576 = v209[3] & 0x3F;
                            v577 = v209[4] & 0x3F;
                            if ((v572 & 4) != 0)
                            {
                              v572 = ((v572 & 1) << 30) | (v574 << 24) | (v575 << 18) | (v576 << 12) | (v577 << 6) | v209[5] & 0x3F;
                              v573 = 6;
                            }

                            else
                            {
                              v572 = ((v572 & 3) << 24) | (v574 << 18) | (v575 << 12) | (v576 << 6) | v577;
                              v573 = 5;
                            }
                          }

                          else
                          {
                            v572 = ((v572 & 7) << 18) | (v574 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                            v573 = 4;
                          }
                        }

                        else
                        {
                          v572 = ((v572 & 0xF) << 12) | (v574 << 6) | v209[2] & 0x3F;
                          v573 = 3;
                        }
                      }

                      else
                      {
                        v573 = 2;
                        v572 = v209[1] & 0x3F | ((v572 & 0x1F) << 6);
                      }
                    }

                    v578 = &_pcre2_ucd_caseless_sets_8[*(v15 + 68)];
                    do
                    {
                      v579 = *v578;
                      if (v572 < *v578)
                      {
                        if (*v183 != 15)
                        {
                          goto LABEL_1366;
                        }

                        goto LABEL_1325;
                      }

                      ++v578;
                    }

                    while (v572 != v579);
                    if (*v183 == 15)
                    {
                      goto LABEL_1366;
                    }

LABEL_1325:
                    v209 += v573;
                    *(v15 + 80) = v209;
                    if (++v207 == v206)
                    {
                      goto LABEL_1366;
                    }
                  }
                }

                else
                {
                  if (v184 != 10)
                  {
                    return v19;
                  }

                  v615 = v206 >= v207;
                  v392 = v206 - v207;
                  if (v392 == 0 || !v615)
                  {
                    goto LABEL_1366;
                  }

                  v393 = *(a7 + 160);
                  while (v209 < v393)
                  {
                    v394 = *v209;
                    v395 = 1;
                    if (v1244 && v394 >= 0xC0)
                    {
                      v396 = v209[1] & 0x3F;
                      if ((v394 & 0x20) != 0)
                      {
                        if ((v394 & 0x10) != 0)
                        {
                          if ((v394 & 8) != 0)
                          {
                            v397 = v209[2] & 0x3F;
                            v398 = v209[3] & 0x3F;
                            v399 = v209[4] & 0x3F;
                            if ((v394 & 4) != 0)
                            {
                              v394 = ((v394 & 1) << 30) | (v396 << 24) | (v397 << 18) | (v398 << 12) | (v399 << 6) | v209[5] & 0x3F;
                              v395 = 6;
                            }

                            else
                            {
                              v394 = ((v394 & 3) << 24) | (v396 << 18) | (v397 << 12) | (v398 << 6) | v399;
                              v395 = 5;
                            }
                          }

                          else
                          {
                            v394 = ((v394 & 7) << 18) | (v396 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                            v395 = 4;
                          }
                        }

                        else
                        {
                          v394 = ((v394 & 0xF) << 12) | (v396 << 6) | v209[2] & 0x3F;
                          v395 = 3;
                        }
                      }

                      else
                      {
                        v395 = 2;
                        v394 = v209[1] & 0x3F | ((v394 & 0x1F) << 6);
                      }
                    }

                    v400 = v394 - 36;
                    v401 = (v394 - 160) >> 5;
                    v402 = v394 >> 13 > 6;
                    if (v401 < 0x6BB)
                    {
                      v402 = 1;
                    }

                    v100 = v400 > 0x3C;
                    v403 = (1 << v400) & 0x1000000010000001;
                    if (!v100 && v403 != 0)
                    {
                      v402 = 1;
                    }

                    if (v402 != (*v183 == 15))
                    {
                      v209 += v395;
                      *(v15 + 80) = v209;
                      if (--v392)
                      {
                        continue;
                      }
                    }

                    goto LABEL_1366;
                  }
                }

                goto LABEL_1363;
              }

              if ((v184 - 6) >= 2)
              {
                if (v184 != 8)
                {
                  return v19;
                }

                v615 = v206 >= v207;
                v542 = v206 - v207;
                if (v542 == 0 || !v615)
                {
                  goto LABEL_1366;
                }

                v543 = *(a7 + 160);
                while (v209 < v543)
                {
                  v544 = *v209;
                  v545 = 1;
                  if (v1244 && v544 >= 0xC0)
                  {
                    v546 = v209[1] & 0x3F;
                    if ((v544 & 0x20) != 0)
                    {
                      if ((v544 & 0x10) != 0)
                      {
                        if ((v544 & 8) != 0)
                        {
                          v547 = v209[2] & 0x3F;
                          v548 = v209[3] & 0x3F;
                          v549 = v209[4] & 0x3F;
                          if ((v544 & 4) != 0)
                          {
                            v544 = ((v544 & 1) << 30) | (v546 << 24) | (v547 << 18) | (v548 << 12) | (v549 << 6) | v209[5] & 0x3F;
                            v545 = 6;
                          }

                          else
                          {
                            v544 = ((v544 & 3) << 24) | (v546 << 18) | (v547 << 12) | (v548 << 6) | v549;
                            v545 = 5;
                          }
                        }

                        else
                        {
                          v544 = ((v544 & 7) << 18) | (v546 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                          v545 = 4;
                        }
                      }

                      else
                      {
                        v544 = ((v544 & 0xF) << 12) | (v546 << 6) | v209[2] & 0x3F;
                        v545 = 3;
                      }
                    }

                    else
                    {
                      v545 = 2;
                      v544 = v209[1] & 0x3F | ((v544 & 0x1F) << 6);
                    }
                  }

                  v551 = v544 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v544 & 0x7F | (_pcre2_ucd_stage1_8[v544 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
                  if ((((*v183 != 15) ^ v551) & 1) == 0)
                  {
                    v209 += v545;
                    *(v15 + 80) = v209;
                    if (--v542)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1366;
                }

                goto LABEL_1363;
              }

              v615 = v206 >= v207;
              v256 = v206 - v207;
              if (v256 == 0 || !v615)
              {
                goto LABEL_1366;
              }

              v257 = *(a7 + 160);
              while (1)
              {
                if (v209 >= v257)
                {
                  goto LABEL_1363;
                }

                v258 = *v209;
                v259 = 1;
                if (v1244 && v258 >= 0xC0)
                {
                  v260 = v209[1] & 0x3F;
                  if ((v258 & 0x20) != 0)
                  {
                    if ((v258 & 0x10) != 0)
                    {
                      if ((v258 & 8) != 0)
                      {
                        v261 = v209[2] & 0x3F;
                        v262 = v209[3] & 0x3F;
                        v263 = v209[4] & 0x3F;
                        if ((v258 & 4) != 0)
                        {
                          v258 = ((v258 & 1) << 30) | (v260 << 24) | (v261 << 18) | (v262 << 12) | (v263 << 6) | v209[5] & 0x3F;
                          v259 = 6;
                        }

                        else
                        {
                          v258 = ((v258 & 3) << 24) | (v260 << 18) | (v261 << 12) | (v262 << 6) | v263;
                          v259 = 5;
                        }
                      }

                      else
                      {
                        v258 = ((v258 & 7) << 18) | (v260 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                        v259 = 4;
                      }
                    }

                    else
                    {
                      v258 = ((v258 & 0xF) << 12) | (v260 << 6) | v209[2] & 0x3F;
                      v259 = 3;
                    }
                  }

                  else
                  {
                    v259 = 2;
                    v258 = v209[1] & 0x3F | ((v258 & 0x1F) << 6);
                  }
                }

                if (v258 < 0x2000)
                {
                  if (v258 > 132)
                  {
                    if (v258 > 5759)
                    {
                      if (v258 == 5760 || v258 == 6158)
                      {
                        goto LABEL_549;
                      }
                    }

                    else if (v258 == 133 || v258 == 160)
                    {
                      goto LABEL_549;
                    }
                  }

                  else if (v258 <= 0x20 && ((1 << v258) & 0x100003E00) != 0)
                  {
                    goto LABEL_549;
                  }
                }

                else if ((v258 - 0x2000) < 0xB || (v258 - 8232) <= 0x37 && ((1 << (v258 - 40)) & 0x80000000000083) != 0 || v258 == 12288)
                {
LABEL_549:
                  if (*v183 == 15)
                  {
                    goto LABEL_1366;
                  }

                  goto LABEL_550;
                }

                if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v258 & 0x7F | (_pcre2_ucd_stage1_8[v258 >> 7] << 7)]])] == 6) != (*v183 != 15))
                {
                  goto LABEL_1366;
                }

LABEL_550:
                v209 += v259;
                *(v15 + 80) = v209;
                if (!--v256)
                {
                  goto LABEL_1366;
                }
              }
            }

            v236 = *v183;
            if (*v183 == 22)
            {
              if (v206 <= v207)
              {
                goto LABEL_1429;
              }

              while (1)
              {
                v237 = *(a7 + 160);
                if (v209 >= v237)
                {
                  break;
                }

                v238 = v209 + 1;
                *(v15 + 80) = v209 + 1;
                v239 = *v209;
                if (v1244 && v239 >= 0xC0)
                {
                  if ((v239 & 0x20) != 0)
                  {
                    v240 = *v238 & 0x3F;
                    if ((v239 & 0x10) != 0)
                    {
                      if ((v239 & 8) != 0)
                      {
                        v241 = v209[2] & 0x3F;
                        v242 = v209[3] & 0x3F;
                        v243 = v209[4] & 0x3F;
                        if ((v239 & 4) != 0)
                        {
                          v239 = ((v239 & 1) << 30) | (v240 << 24) | (v241 << 18) | (v242 << 12) | (v243 << 6) | v209[5] & 0x3F;
                          v238 = v209 + 6;
                        }

                        else
                        {
                          v239 = ((v239 & 3) << 24) | (v240 << 18) | (v241 << 12) | (v242 << 6) | v243;
                          v238 = v209 + 5;
                        }
                      }

                      else
                      {
                        v239 = ((v239 & 7) << 18) | (v240 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                        v238 = v209 + 4;
                      }
                    }

                    else
                    {
                      v239 = ((v239 & 0xF) << 12) | (v240 << 6) | v209[2] & 0x3F;
                      v238 = v209 + 3;
                    }

                    *(v15 + 80) = v238;
                  }

                  else
                  {
                    v238 = v209 + 2;
                    *(v15 + 80) = v209 + 2;
                    v239 = v209[1] & 0x3F | ((v239 & 0x1F) << 6);
                  }
                }

                v209 = _pcre2_extuni_8(v239, v238, *(a7 + 152), v237, v1243, 0);
                *(v15 + 80) = v209;
                v244 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v209 >= *(a7 + 160) && v209 > *(a7 + 176))
                  {
                    *(a7 + 76) = 1;
                    if (v244 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

                if (++v207 >= *(v15 + 60))
                {
                  goto LABEL_1429;
                }
              }

              v621 = *(a7 + 128);
              if (!*(a7 + 128) || v209 <= *(a7 + 176) || (*(a7 + 76) = 1, v621 == 1))
              {
LABEL_1429:
                if (v11 == 2)
                {
                  goto LABEL_2990;
                }

                v622 = *(v15 + 8);
                goto LABEL_3170;
              }

              return 4294967294;
            }

            if (v1244)
            {
              v19 = 4294967252;
              if (v236 <= 12)
              {
                if (v236 > 8)
                {
                  if (v236 > 10)
                  {
                    if (v236 == 11)
                    {
                      v615 = v206 >= v207;
                      v898 = v206 - v207;
                      if (v898 == 0 || !v615)
                      {
                        goto LABEL_2394;
                      }

                      v899 = *(a7 + 160);
                      while (v209 < v899)
                      {
                        v900 = *v209;
                        if (v900 < 0xC0)
                        {
                          v902 = 1;
                        }

                        else
                        {
                          v901 = v209[1] & 0x3F;
                          if ((v900 & 0x20) != 0)
                          {
                            if ((v900 & 0x10) != 0)
                            {
                              if ((v900 & 8) != 0)
                              {
                                v903 = v209[2] & 0x3F;
                                v904 = v209[3] & 0x3F;
                                v905 = v209[4] & 0x3F;
                                if ((v900 & 4) != 0)
                                {
                                  v900 = ((v900 & 1) << 30) | (v901 << 24) | (v903 << 18) | (v904 << 12) | (v905 << 6) | v209[5] & 0x3F;
                                  v902 = 6;
                                }

                                else
                                {
                                  v900 = ((v900 & 3) << 24) | (v901 << 18) | (v903 << 12) | (v904 << 6) | v905;
                                  v902 = 5;
                                }
                              }

                              else
                              {
                                v900 = ((v900 & 7) << 18) | (v901 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                                v902 = 4;
                              }
                            }

                            else
                            {
                              v900 = ((v900 & 0xF) << 12) | (v901 << 6) | v209[2] & 0x3F;
                              v902 = 3;
                            }
                          }

                          else
                          {
                            v902 = 2;
                            v900 = v209[1] & 0x3F | ((v900 & 0x1F) << 6);
                          }

                          if (v900 > 0xFF)
                          {
                            goto LABEL_2394;
                          }
                        }

                        if ((*(*(a7 + 104) + v900) & 0x10) != 0)
                        {
                          v209 += v902;
                          *(v15 + 80) = v209;
                          if (--v898)
                          {
                            continue;
                          }
                        }

                        goto LABEL_2394;
                      }
                    }

                    else
                    {
                      if (v206 <= v207)
                      {
                        goto LABEL_2394;
                      }

                      v776 = *(a7 + 160);
                      while (v209 < v776)
                      {
                        v777 = *(a7 + 244);
                        if (v777)
                        {
                          if (_pcre2_is_newline_8(v209, v777, v776, (a7 + 248), v1243))
                          {
                            goto LABEL_2394;
                          }

                          v209 = *(v15 + 80);
                          v776 = *(a7 + 160);
                        }

                        else
                        {
                          v778 = *(a7 + 248);
                          if (v209 <= v776 - v778 && *v209 == *(a7 + 252) && (v778 == 1 || v209[1] == *(a7 + 253)))
                          {
                            goto LABEL_2394;
                          }
                        }

                        v779 = *(a7 + 128);
                        v780 = v209 + 1;
                        if (*(a7 + 128))
                        {
                          if (v780 >= v776 && !*(a7 + 244) && *(a7 + 248) == 2 && *v209 == *(a7 + 252))
                          {
                            *(a7 + 76) = 1;
                            if (v779 != 1)
                            {
                              return 4294967294;
                            }
                          }
                        }

                        do
                        {
                          v209 = v780;
                          *(v15 + 80) = v780;
                          if (v780 >= v776)
                          {
                            break;
                          }

                          ++v780;
                        }

                        while ((*v209 & 0xC0) == 0x80);
                        if (++v207 >= *(v15 + 60))
                        {
                          goto LABEL_2394;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v236 != 9)
                    {
                      v615 = v206 >= v207;
                      v337 = v206 - v207;
                      if (v337 == 0 || !v615)
                      {
                        goto LABEL_2394;
                      }

                      v338 = *(a7 + 160);
                      while (1)
                      {
                        if (v209 >= v338)
                        {
                          goto LABEL_2241;
                        }

                        v339 = *v209;
                        if (v339 < 0xC0)
                        {
                          break;
                        }

                        v340 = v209[1] & 0x3F;
                        if ((v339 & 0x20) != 0)
                        {
                          if ((v339 & 0x10) != 0)
                          {
                            if ((v339 & 8) != 0)
                            {
                              v342 = v209[2] & 0x3F;
                              v343 = v209[3] & 0x3F;
                              v344 = v209[4] & 0x3F;
                              if ((v339 & 4) != 0)
                              {
                                v339 = ((v339 & 1) << 30) | (v340 << 24) | (v342 << 18) | (v343 << 12) | (v344 << 6) | v209[5] & 0x3F;
                                v341 = 6;
                              }

                              else
                              {
                                v339 = ((v339 & 3) << 24) | (v340 << 18) | (v342 << 12) | (v343 << 6) | v344;
                                v341 = 5;
                              }
                            }

                            else
                            {
                              v339 = ((v339 & 7) << 18) | (v340 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v341 = 4;
                            }
                          }

                          else
                          {
                            v339 = ((v339 & 0xF) << 12) | (v340 << 6) | v209[2] & 0x3F;
                            v341 = 3;
                          }
                        }

                        else
                        {
                          v341 = 2;
                          v339 = v209[1] & 0x3F | ((v339 & 0x1F) << 6);
                        }

                        if (v339 <= 0xFF)
                        {
                          goto LABEL_748;
                        }

LABEL_749:
                        v209 += v341;
                        *(v15 + 80) = v209;
                        if (!--v337)
                        {
                          goto LABEL_2394;
                        }
                      }

                      v341 = 1;
LABEL_748:
                      if ((*(*(a7 + 104) + v339) & 0x10) != 0)
                      {
                        goto LABEL_2394;
                      }

                      goto LABEL_749;
                    }

                    v615 = v206 >= v207;
                    v890 = v206 - v207;
                    if (v890 == 0 || !v615)
                    {
                      goto LABEL_2394;
                    }

                    v891 = *(a7 + 160);
                    while (v209 < v891)
                    {
                      v892 = *v209;
                      if (v892 < 0xC0)
                      {
                        v894 = 1;
                      }

                      else
                      {
                        v893 = v209[1] & 0x3F;
                        if ((v892 & 0x20) != 0)
                        {
                          if ((v892 & 0x10) != 0)
                          {
                            if ((v892 & 8) != 0)
                            {
                              v895 = v209[2] & 0x3F;
                              v896 = v209[3] & 0x3F;
                              v897 = v209[4] & 0x3F;
                              if ((v892 & 4) != 0)
                              {
                                v892 = ((v892 & 1) << 30) | (v893 << 24) | (v895 << 18) | (v896 << 12) | (v897 << 6) | v209[5] & 0x3F;
                                v894 = 6;
                              }

                              else
                              {
                                v892 = ((v892 & 3) << 24) | (v893 << 18) | (v895 << 12) | (v896 << 6) | v897;
                                v894 = 5;
                              }
                            }

                            else
                            {
                              v892 = ((v892 & 7) << 18) | (v893 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v894 = 4;
                            }
                          }

                          else
                          {
                            v892 = ((v892 & 0xF) << 12) | (v893 << 6) | v209[2] & 0x3F;
                            v894 = 3;
                          }
                        }

                        else
                        {
                          v894 = 2;
                          v892 = v209[1] & 0x3F | ((v892 & 0x1F) << 6);
                        }

                        if (v892 > 0xFF)
                        {
                          goto LABEL_2394;
                        }
                      }

                      if (*(*(a7 + 104) + v892))
                      {
                        v209 += v894;
                        *(v15 + 80) = v209;
                        if (--v890)
                        {
                          continue;
                        }
                      }

                      goto LABEL_2394;
                    }
                  }

                  goto LABEL_2241;
                }

                if (v236 != 6)
                {
                  if (v236 != 7)
                  {
                    if (v236 != 8)
                    {
                      return v19;
                    }

                    v615 = v206 >= v207;
                    v756 = v206 - v207;
                    if (v756 == 0 || !v615)
                    {
                      goto LABEL_2394;
                    }

                    v757 = *(a7 + 160);
                    while (1)
                    {
                      if (v209 >= v757)
                      {
                        goto LABEL_2241;
                      }

                      v758 = *v209;
                      if (v758 < 0xC0)
                      {
                        break;
                      }

                      v759 = v209[1] & 0x3F;
                      if ((v758 & 0x20) != 0)
                      {
                        if ((v758 & 0x10) != 0)
                        {
                          if ((v758 & 8) != 0)
                          {
                            v761 = v209[2] & 0x3F;
                            v762 = v209[3] & 0x3F;
                            v763 = v209[4] & 0x3F;
                            if ((v758 & 4) != 0)
                            {
                              v758 = ((v758 & 1) << 30) | (v759 << 24) | (v761 << 18) | (v762 << 12) | (v763 << 6) | v209[5] & 0x3F;
                              v760 = 6;
                            }

                            else
                            {
                              v758 = ((v758 & 3) << 24) | (v759 << 18) | (v761 << 12) | (v762 << 6) | v763;
                              v760 = 5;
                            }
                          }

                          else
                          {
                            v758 = ((v758 & 7) << 18) | (v759 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                            v760 = 4;
                          }
                        }

                        else
                        {
                          v758 = ((v758 & 0xF) << 12) | (v759 << 6) | v209[2] & 0x3F;
                          v760 = 3;
                        }
                      }

                      else
                      {
                        v760 = 2;
                        v758 = v209[1] & 0x3F | ((v758 & 0x1F) << 6);
                      }

                      if (v758 <= 0xFF)
                      {
                        goto LABEL_1796;
                      }

LABEL_1797:
                      v209 += v760;
                      *(v15 + 80) = v209;
                      if (!--v756)
                      {
                        goto LABEL_2394;
                      }
                    }

                    v760 = 1;
LABEL_1796:
                    if (*(*(a7 + 104) + v758))
                    {
                      goto LABEL_2394;
                    }

                    goto LABEL_1797;
                  }

                  v615 = v206 >= v207;
                  v906 = v206 - v207;
                  if (v906 == 0 || !v615)
                  {
                    goto LABEL_2394;
                  }

                  v907 = *(a7 + 160);
                  while (v209 < v907)
                  {
                    v908 = *v209;
                    if (v908 < 0xC0)
                    {
                      v910 = 1;
                    }

                    else
                    {
                      v909 = v209[1] & 0x3F;
                      if ((v908 & 0x20) != 0)
                      {
                        if ((v908 & 0x10) != 0)
                        {
                          if ((v908 & 8) != 0)
                          {
                            v911 = v209[2] & 0x3F;
                            v912 = v209[3] & 0x3F;
                            v913 = v209[4] & 0x3F;
                            if ((v908 & 4) != 0)
                            {
                              v908 = ((v908 & 1) << 30) | (v909 << 24) | (v911 << 18) | (v912 << 12) | (v913 << 6) | v209[5] & 0x3F;
                              v910 = 6;
                            }

                            else
                            {
                              v908 = ((v908 & 3) << 24) | (v909 << 18) | (v911 << 12) | (v912 << 6) | v913;
                              v910 = 5;
                            }
                          }

                          else
                          {
                            v908 = ((v908 & 7) << 18) | (v909 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                            v910 = 4;
                          }
                        }

                        else
                        {
                          v908 = ((v908 & 0xF) << 12) | (v909 << 6) | v209[2] & 0x3F;
                          v910 = 3;
                        }
                      }

                      else
                      {
                        v910 = 2;
                        v908 = v209[1] & 0x3F | ((v908 & 0x1F) << 6);
                      }

                      if (v908 > 0xFF)
                      {
                        goto LABEL_2394;
                      }
                    }

                    if ((*(*(a7 + 104) + v908) & 4) != 0)
                    {
                      v209 += v910;
                      *(v15 + 80) = v209;
                      if (--v906)
                      {
                        continue;
                      }
                    }

                    goto LABEL_2394;
                  }

LABEL_2241:
                  v926 = *(a7 + 128);
                  if (!*(a7 + 128) || v209 <= *(a7 + 176))
                  {
                    goto LABEL_2394;
                  }

                  goto LABEL_2243;
                }

                v615 = v206 >= v207;
                v916 = v206 - v207;
                if (v916 == 0 || !v615)
                {
                  goto LABEL_2394;
                }

                v917 = *(a7 + 160);
                while (1)
                {
                  if (v209 >= v917)
                  {
                    goto LABEL_2241;
                  }

                  v918 = *v209;
                  if (v918 < 0xC0)
                  {
                    break;
                  }

                  v919 = v209[1] & 0x3F;
                  if ((v918 & 0x20) != 0)
                  {
                    if ((v918 & 0x10) != 0)
                    {
                      if ((v918 & 8) != 0)
                      {
                        v921 = v209[2] & 0x3F;
                        v922 = v209[3] & 0x3F;
                        v923 = v209[4] & 0x3F;
                        if ((v918 & 4) != 0)
                        {
                          v918 = ((v918 & 1) << 30) | (v919 << 24) | (v921 << 18) | (v922 << 12) | (v923 << 6) | v209[5] & 0x3F;
                          v920 = 6;
                        }

                        else
                        {
                          v918 = ((v918 & 3) << 24) | (v919 << 18) | (v921 << 12) | (v922 << 6) | v923;
                          v920 = 5;
                        }
                      }

                      else
                      {
                        v918 = ((v918 & 7) << 18) | (v919 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                        v920 = 4;
                      }
                    }

                    else
                    {
                      v918 = ((v918 & 0xF) << 12) | (v919 << 6) | v209[2] & 0x3F;
                      v920 = 3;
                    }
                  }

                  else
                  {
                    v920 = 2;
                    v918 = v209[1] & 0x3F | ((v918 & 0x1F) << 6);
                  }

                  if (v918 <= 0xFF)
                  {
                    goto LABEL_2229;
                  }

LABEL_2230:
                  v209 += v920;
                  *(v15 + 80) = v209;
                  if (!--v916)
                  {
                    goto LABEL_2394;
                  }
                }

                v920 = 1;
LABEL_2229:
                if ((*(*(a7 + 104) + v918) & 4) != 0)
                {
                  goto LABEL_2394;
                }

                goto LABEL_2230;
              }

              if (v236 > 17)
              {
                if ((v236 - 18) >= 2)
                {
                  if ((v236 - 20) >= 2)
                  {
                    return v19;
                  }

                  v615 = v206 >= v207;
                  v606 = v206 - v207;
                  if (v606 != 0 && v615)
                  {
                    v607 = *(a7 + 160);
                    v608 = v236 == 20;
                    while (v209 < v607)
                    {
                      v609 = *v209;
                      if (v609 < 0xC0)
                      {
                        v611 = 1;
                      }

                      else
                      {
                        v610 = v209[1] & 0x3F;
                        if ((v609 & 0x20) != 0)
                        {
                          if ((v609 & 0x10) != 0)
                          {
                            if ((v609 & 8) != 0)
                            {
                              v617 = v209[2] & 0x3F;
                              v618 = v209[3] & 0x3F;
                              v619 = v209[4] & 0x3F;
                              if ((v609 & 4) != 0)
                              {
                                v609 = ((v609 & 1) << 30) | (v610 << 24) | (v617 << 18) | (v618 << 12) | (v619 << 6) | v209[5] & 0x3F;
                                v611 = 6;
                              }

                              else
                              {
                                v609 = ((v609 & 3) << 24) | (v610 << 18) | (v617 << 12) | (v618 << 6) | v619;
                                v611 = 5;
                              }
                            }

                            else
                            {
                              v609 = ((v609 & 7) << 18) | (v610 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                              v611 = 4;
                            }
                          }

                          else
                          {
                            v609 = ((v609 & 0xF) << 12) | (v610 << 6) | v209[2] & 0x3F;
                            v611 = 3;
                          }
                        }

                        else
                        {
                          v611 = 2;
                          v609 = v209[1] & 0x3F | ((v609 & 0x1F) << 6);
                        }
                      }

                      v612 = v609 - 10;
                      v613 = v609 == 133;
                      v614 = v609 - 8232;
                      v615 = v612 >= 4 && v614 >= 2;
                      v616 = !v615 || v613;
                      if (v616 != v608)
                      {
                        v209 += v611;
                        *(v15 + 80) = v209;
                        if (--v606)
                        {
                          continue;
                        }
                      }

                      goto LABEL_2394;
                    }

                    goto LABEL_2241;
                  }

                  goto LABEL_2394;
                }

                v615 = v206 >= v207;
                v781 = v206 - v207;
                if (v781 == 0 || !v615)
                {
                  goto LABEL_2394;
                }

                v782 = *(a7 + 160);
                v783 = v236 == 18;
                while (1)
                {
                  if (v209 >= v782)
                  {
                    goto LABEL_2241;
                  }

                  v784 = *v209;
                  if (v784 < 0xC0)
                  {
                    v786 = 1;
                  }

                  else
                  {
                    v785 = v209[1] & 0x3F;
                    if ((v784 & 0x20) != 0)
                    {
                      if ((v784 & 0x10) != 0)
                      {
                        if ((v784 & 8) != 0)
                        {
                          v788 = v209[2] & 0x3F;
                          v789 = v209[3] & 0x3F;
                          v790 = v209[4] & 0x3F;
                          if ((v784 & 4) != 0)
                          {
                            v784 = ((v784 & 1) << 30) | (v785 << 24) | (v788 << 18) | (v789 << 12) | (v790 << 6) | v209[5] & 0x3F;
                            v786 = 6;
                          }

                          else
                          {
                            v784 = ((v784 & 3) << 24) | (v785 << 18) | (v788 << 12) | (v789 << 6) | v790;
                            v786 = 5;
                          }
                        }

                        else
                        {
                          v784 = ((v784 & 7) << 18) | (v785 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                          v786 = 4;
                        }
                      }

                      else
                      {
                        v784 = ((v784 & 0xF) << 12) | (v785 << 6) | v209[2] & 0x3F;
                        v786 = 3;
                      }
                    }

                    else
                    {
                      v786 = 2;
                      v784 = v209[1] & 0x3F | ((v784 & 0x1F) << 6);
                    }
                  }

                  v787 = 1;
                  if (v784 < 0x2000)
                  {
                    if (v784 <= 159)
                    {
                      if (v784 == 9 || v784 == 32)
                      {
                        goto LABEL_1896;
                      }
                    }

                    else if (v784 == 160 || v784 == 5760 || v784 == 6158)
                    {
                      goto LABEL_1896;
                    }
                  }

                  else if (v784 > 8238)
                  {
                    if (v784 == 8239 || v784 == 8287 || v784 == 12288)
                    {
                      goto LABEL_1896;
                    }
                  }

                  else if ((v784 - 0x2000) < 0xB)
                  {
                    goto LABEL_1896;
                  }

                  v787 = 0;
LABEL_1896:
                  if (v787 != v783)
                  {
                    v209 += v786;
                    *(v15 + 80) = v209;
                    if (--v781)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2394;
                }
              }

              if (v236 == 13)
              {
                if (v206 == -1)
                {
                  v945 = *(a7 + 160);
                  *(v15 + 80) = v945;
                  v926 = *(a7 + 128);
                  if (!*(a7 + 128) || v945 <= *(a7 + 176))
                  {
                    goto LABEL_2394;
                  }

LABEL_2243:
                  *(a7 + 76) = 1;
                  if (v926 != 1)
                  {
                    return 4294967294;
                  }

                  goto LABEL_2394;
                }

                if (v206 <= v207)
                {
                  goto LABEL_2394;
                }

                v924 = *(a7 + 160);
                while (v209 < v924)
                {
                  v925 = v209 + 1;
                  do
                  {
                    v209 = v925;
                    *(v15 + 80) = v925;
                    if (v925 >= v924)
                    {
                      break;
                    }

                    ++v925;
                  }

                  while ((*v209 & 0xC0) == 0x80);
                  if (++v207 == v206)
                  {
                    goto LABEL_2394;
                  }
                }

                goto LABEL_2241;
              }

              if (v236 == 14)
              {
                v914 = *(a7 + 160);
                if (v208 <= v914 - v209)
                {
                  *(v15 + 80) = &v209[v208];
                }

                else
                {
                  *(v15 + 80) = v914;
                  v915 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    if (v914 > *(a7 + 176))
                    {
                      *(a7 + 76) = 1;
                      if (v915 != 1)
                      {
                        return 4294967294;
                      }
                    }
                  }
                }

                goto LABEL_2394;
              }

              if (v236 != 17)
              {
                return v19;
              }

              v615 = v206 >= v207;
              v764 = v206 - v207;
              if (v764 == 0 || !v615)
              {
LABEL_2394:
                if (v11 != 2)
                {
                  v946 = *(v15 + 80);
LABEL_2934:
                  if (v946 > *(v15 + 8))
                  {
                    v12 = 0;
                    a2 = *v15;
                    v1207 = -35;
                    goto LABEL_3173;
                  }
                }

                goto LABEL_2990;
              }

              v765 = *(a7 + 160);
              while (1)
              {
                if (v209 >= v765)
                {
                  goto LABEL_2241;
                }

                v766 = *v209;
                if (v766 < 0xC0)
                {
                  v768 = 1;
                }

                else
                {
                  v767 = v209[1] & 0x3F;
                  if ((v766 & 0x20) != 0)
                  {
                    if ((v766 & 0x10) != 0)
                    {
                      if ((v766 & 8) != 0)
                      {
                        v770 = v209[2] & 0x3F;
                        v771 = v209[3] & 0x3F;
                        v772 = v209[4] & 0x3F;
                        if ((v766 & 4) != 0)
                        {
                          v766 = ((v766 & 1) << 30) | (v767 << 24) | (v770 << 18) | (v771 << 12) | (v772 << 6) | v209[5] & 0x3F;
                          v768 = 6;
                        }

                        else
                        {
                          v766 = ((v766 & 3) << 24) | (v767 << 18) | (v770 << 12) | (v771 << 6) | v772;
                          v768 = 5;
                        }
                      }

                      else
                      {
                        v766 = ((v766 & 7) << 18) | (v767 << 12) | ((v209[2] & 0x3F) << 6) | v209[3] & 0x3F;
                        v768 = 4;
                      }
                    }

                    else
                    {
                      v766 = ((v766 & 0xF) << 12) | (v767 << 6) | v209[2] & 0x3F;
                      v768 = 3;
                    }
                  }

                  else
                  {
                    v768 = 2;
                    v766 = v209[1] & 0x3F | ((v766 & 0x1F) << 6);
                  }
                }

                if (v766 != 10)
                {
                  if (v766 == 13)
                  {
                    v769 = v209 + 1;
                    *(v15 + 80) = v209 + 1;
                    if ((v209 + 1) >= v765)
                    {
                      goto LABEL_2394;
                    }

                    if (*v769 != 10)
                    {
                      goto LABEL_1820;
                    }

                    v768 = 2;
                  }

                  else if (*(a7 + 130) == 2 || v766 - 11 >= 2 && v766 - 8232 >= 2 && v766 != 133)
                  {
                    goto LABEL_2394;
                  }
                }

                v769 = &v209[v768];
                *(v15 + 80) = &v209[v768];
LABEL_1820:
                v209 = v769;
                if (!--v764)
                {
                  goto LABEL_2394;
                }
              }
            }

            v19 = 4294967252;
            switch(v236)
            {
              case 6:
                v615 = v206 >= v207;
                v862 = v206 - v207;
                if (v862 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v863 = *(a7 + 160);
                while (v209 < v863)
                {
                  if ((*(*(a7 + 104) + *v209) & 4) == 0)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v862)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 7:
                v615 = v206 >= v207;
                v864 = v206 - v207;
                if (v864 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v865 = *(a7 + 160);
                while (v209 < v865)
                {
                  if ((*(*(a7 + 104) + *v209) & 4) != 0)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v864)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 8:
                v615 = v206 >= v207;
                v860 = v206 - v207;
                if (v860 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v861 = *(a7 + 160);
                while (v209 < v861)
                {
                  if ((*(*(a7 + 104) + *v209) & 1) == 0)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v860)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 9:
                v615 = v206 >= v207;
                v866 = v206 - v207;
                if (v866 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v867 = *(a7 + 160);
                while (v209 < v867)
                {
                  if (*(*(a7 + 104) + *v209))
                  {
                    *(v15 + 80) = ++v209;
                    if (--v866)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 10:
                v615 = v206 >= v207;
                v878 = v206 - v207;
                if (v878 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v879 = *(a7 + 160);
                while (v209 < v879)
                {
                  if ((*(*(a7 + 104) + *v209) & 0x10) == 0)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v878)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 11:
                v615 = v206 >= v207;
                v858 = v206 - v207;
                if (v858 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v859 = *(a7 + 160);
                while (v209 < v859)
                {
                  if ((*(*(a7 + 104) + *v209) & 0x10) != 0)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v858)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 12:
                if (v206 <= v207)
                {
                  goto LABEL_2149;
                }

                while (2)
                {
                  v874 = *(a7 + 160);
                  if (v209 >= v874)
                  {
                    goto LABEL_2144;
                  }

                  v875 = *(a7 + 244);
                  if (v875)
                  {
                    if (_pcre2_is_newline_8(v209, v875, v874, (a7 + 248), v1243))
                    {
                      goto LABEL_2149;
                    }

                    v209 = *(v15 + 80);
LABEL_2105:
                    v877 = *(a7 + 128);
                    if (!*(a7 + 128) || (v209 + 1) < *(a7 + 160) || *(a7 + 244) || *(a7 + 248) != 2 || *v209 != *(a7 + 252) || (*(a7 + 76) = 1, v877 == 1))
                    {
                      *(v15 + 80) = ++v209;
                      if (++v207 >= *(v15 + 60))
                      {
                        goto LABEL_2149;
                      }

                      continue;
                    }

                    return 4294967294;
                  }

                  break;
                }

                v876 = *(a7 + 248);
                if (v209 > v874 - v876 || *v209 != *(a7 + 252) || v876 != 1 && v209[1] != *(a7 + 253))
                {
                  goto LABEL_2105;
                }

                goto LABEL_2149;
              case 13:
              case 14:
                v503 = *(a7 + 160);
                if (v208 <= v503 - v209)
                {
                  *(v15 + 80) = &v209[v208];
                }

                else
                {
                  *(v15 + 80) = v503;
                  v504 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    if (v503 > *(a7 + 176))
                    {
                      *(a7 + 76) = 1;
                      if (v504 != 1)
                      {
                        return 4294967294;
                      }
                    }
                  }
                }

                goto LABEL_2149;
              case 17:
                v615 = v206 >= v207;
                v883 = v206 - v207;
                if (v883 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v884 = *(a7 + 160);
                while (2)
                {
                  if (v209 >= v884)
                  {
                    goto LABEL_2144;
                  }

                  v885 = *v209;
                  if (v885 == 10)
                  {
                    v887 = 1;
                  }

                  else if (v885 == 13)
                  {
                    v886 = v209 + 1;
                    *(v15 + 80) = v209 + 1;
                    if ((v209 + 1) >= v884)
                    {
                      goto LABEL_2149;
                    }

                    if (*v886 != 10)
                    {
LABEL_2142:
                      v209 = v886;
                      if (!--v883)
                      {
                        goto LABEL_2149;
                      }

                      continue;
                    }

                    v887 = 2;
                  }

                  else if (*(a7 + 130) == 2 || (v887 = 1, (v885 - 11) >= 2) && v885 != 133)
                  {
LABEL_2149:
                    if (v11 != 2)
                    {
                      v889 = *(v15 + 80);
LABEL_2889:
                      if (v889 != *(v15 + 8))
                      {
                        v12 = 0;
                        a2 = *v15;
                        v1207 = 34;
                        goto LABEL_3173;
                      }
                    }

                    goto LABEL_2990;
                  }

                  break;
                }

                v886 = &v209[v887];
                *(v15 + 80) = v886;
                goto LABEL_2142;
              case 18:
                v615 = v206 >= v207;
                v855 = v206 - v207;
                if (v855 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v856 = *(a7 + 160);
                while (v209 < v856)
                {
                  v857 = *v209;
                  if (v857 != 9 && v857 != 32 && v857 != 160)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v855)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 19:
                v615 = v206 >= v207;
                v868 = v206 - v207;
                if (v868 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v869 = *(a7 + 160);
                while (v209 < v869)
                {
                  v870 = *v209;
                  if (v870 == 9 || v870 == 160 || v870 == 32)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v868)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 20:
                v615 = v206 >= v207;
                v880 = v206 - v207;
                if (v880 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v881 = *(a7 + 160);
                while (v209 < v881)
                {
                  v882 = *v209;
                  if ((v882 - 10) >= 4 && v882 != 133)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v880)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

                goto LABEL_2144;
              case 21:
                v615 = v206 >= v207;
                v871 = v206 - v207;
                if (v871 == 0 || !v615)
                {
                  goto LABEL_2149;
                }

                v872 = *(a7 + 160);
                while (v209 < v872)
                {
                  v873 = *v209;
                  if ((v873 - 10) < 4 || v873 == 133)
                  {
                    *(v15 + 80) = ++v209;
                    if (--v871)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2149;
                }

LABEL_2144:
                v888 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v209 > *(a7 + 176))
                  {
                    *(a7 + 76) = 1;
                    if (v888 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

                goto LABEL_2149;
              default:
                return v19;
            }
          }

          if ((v184 & 0x80000000) == 0)
          {
            v11 = 0;
            v19 = 4294967252;
            if (v184 <= 5)
            {
              if (v184 > 2)
              {
                if (v184 == 3)
                {
LABEL_3289:
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -45;
                }

                else if (v184 == 4)
                {
LABEL_3290:
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -44;
                }

                else
                {
LABEL_3288:
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -43;
                }

                goto LABEL_3173;
              }

              if (!v184)
              {
                v11 = v184;
LABEL_3312:
                v12 = 0;
                a2 = *v15;
                v1207 = -48;
                goto LABEL_3173;
              }

              if (v184 != 1)
              {
                if (v184 == 2)
                {
LABEL_3193:
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -46;
                  goto LABEL_3173;
                }

                return v19;
              }

LABEL_3220:
              v12 = 0;
              a2 = *v15;
              v1207 = -47;
              goto LABEL_3173;
            }

            if (v184 > 8)
            {
              if (v184 == 9)
              {
                goto LABEL_3302;
              }

              if (v184 != 10)
              {
                return v19;
              }

LABEL_3301:
              v12 = 0;
              a2 = *v15;
              v1207 = -39;
              goto LABEL_3173;
            }

            if ((v184 - 6) >= 2)
            {
              if (v184 == 8)
              {
LABEL_3310:
                v12 = 0;
                a2 = *v15;
                v1207 = -41;
                goto LABEL_3173;
              }

              return v19;
            }

LABEL_3233:
            v12 = 0;
            a2 = *v15;
            v1207 = -42;
            goto LABEL_3173;
          }

          if (*v183 == 22)
          {
            v11 = 0;
LABEL_3334:
            v12 = 0;
            a2 = *v15;
            v1207 = -38;
            goto LABEL_3173;
          }

          v11 = 0;
          if (v1244)
          {
LABEL_3277:
            v12 = 0;
            a2 = *v15;
            v1207 = -37;
            goto LABEL_3173;
          }

LABEL_3339:
          v12 = 0;
          a2 = *v15;
          v1207 = 33;
          goto LABEL_3173;
        }

        if (!v34)
        {
LABEL_392:
          v184 = 0xFFFFFFFFLL;
          goto LABEL_393;
        }

        v181 = (v15 + 56);
LABEL_372:
        if (v182 == 22)
        {
          v196 = *(v15 + 80);
          v197 = 1;
          while (1)
          {
            v198 = *(a7 + 160);
            if (v196 >= v198)
            {
              break;
            }

            v199 = v196 + 1;
            *(v15 + 80) = v196 + 1;
            v200 = *v196;
            if (v1244 && v200 >= 0xC0)
            {
              if ((v200 & 0x20) != 0)
              {
                v201 = *v199 & 0x3F;
                if ((v200 & 0x10) != 0)
                {
                  if ((v200 & 8) != 0)
                  {
                    v202 = v196[2] & 0x3F;
                    v203 = v196[3] & 0x3F;
                    v204 = v196[4] & 0x3F;
                    if ((v200 & 4) != 0)
                    {
                      v200 = ((v200 & 1) << 30) | (v201 << 24) | (v202 << 18) | (v203 << 12) | (v204 << 6) | v196[5] & 0x3F;
                      v199 = v196 + 6;
                    }

                    else
                    {
                      v200 = ((v200 & 3) << 24) | (v201 << 18) | (v202 << 12) | (v203 << 6) | v204;
                      v199 = v196 + 5;
                    }
                  }

                  else
                  {
                    v200 = ((v200 & 7) << 18) | (v201 << 12) | ((v196[2] & 0x3F) << 6) | v196[3] & 0x3F;
                    v199 = v196 + 4;
                  }
                }

                else
                {
                  v200 = ((v200 & 0xF) << 12) | (v201 << 6) | v196[2] & 0x3F;
                  v199 = v196 + 3;
                }

                *(v15 + 80) = v199;
              }

              else
              {
                v199 = v196 + 2;
                *(v15 + 80) = v196 + 2;
                v200 = v196[1] & 0x3F | ((v200 & 0x1F) << 6);
              }
            }

            v196 = _pcre2_extuni_8(v200, v199, *(a7 + 152), v198, v1243, 0);
            *(v15 + 80) = v196;
            v205 = *(a7 + 128);
            if (*(a7 + 128))
            {
              if (v196 >= *(a7 + 160) && v196 > *(a7 + 176))
              {
                *(a7 + 76) = 1;
                if (v205 != 1)
                {
                  return 4294967294;
                }
              }
            }

            if (++v197 > *v181)
            {
              goto LABEL_392;
            }
          }

LABEL_1738:
          v391 = *(a7 + 128);
          if (!*(a7 + 128) || v196 <= *(a7 + 176))
          {
            goto LABEL_2911;
          }

          goto LABEL_1740;
        }

        if (v1244)
        {
          v19 = 4294967252;
          switch(v182)
          {
            case 6:
              v218 = *(a7 + 160);
              v219 = *(v15 + 80);
              v220 = 1;
              while (2)
              {
                if (v219 >= v218)
                {
                  goto LABEL_1716;
                }

                *(v15 + 80) = v219 + 1;
                v221 = *v219;
                if (v221 < 0xC0)
                {
                  ++v219;
                }

                else if ((v221 & 0x20) != 0)
                {
                  v223 = v219[1] & 0x3F;
                  if ((v221 & 0x10) != 0)
                  {
                    if ((v221 & 8) != 0)
                    {
                      v224 = v219[2] & 0x3F;
                      v225 = v219[3] & 0x3F;
                      v226 = v219[4] & 0x3F;
                      if ((v221 & 4) != 0)
                      {
                        v221 = ((v221 & 1) << 30) | (v223 << 24) | (v224 << 18) | (v225 << 12) | (v226 << 6) | v219[5] & 0x3F;
                        v219 += 6;
                      }

                      else
                      {
                        v221 = ((v221 & 3) << 24) | (v223 << 18) | (v224 << 12) | (v225 << 6) | v226;
                        v219 += 5;
                      }
                    }

                    else
                    {
                      v221 = ((v221 & 7) << 18) | (v223 << 12) | ((v219[2] & 0x3F) << 6) | v219[3] & 0x3F;
                      v219 += 4;
                    }
                  }

                  else
                  {
                    v221 = ((v221 & 0xF) << 12) | (v223 << 6) | v219[2] & 0x3F;
                    v219 += 3;
                  }

                  *(v15 + 80) = v219;
                }

                else
                {
                  *(v15 + 80) = v219 + 2;
                  v222 = v219[1] & 0x3F | ((v221 & 0x1F) << 6);
                  v219 += 2;
                  v221 = v222;
                }

                if (v221 > 0x7F || (*(*(a7 + 104) + v221) & 4) == 0)
                {
                  ++v220;
                  v184 = 0xFFFFFFFFLL;
                  if (v220 > v34)
                  {
                    goto LABEL_393;
                  }

                  continue;
                }

                goto LABEL_2911;
              }

            case 7:
              v705 = *(a7 + 160);
              v254 = *(v15 + 80);
              v706 = 1;
              while (2)
              {
                if (v254 >= v705)
                {
                  goto LABEL_1558;
                }

                v707 = *v254;
                if ((v707 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v707) & 4) != 0)
                {
                  *(v15 + 80) = ++v254;
                  ++v706;
                  v184 = 0xFFFFFFFFLL;
                  if (v706 > v34)
                  {
                    goto LABEL_393;
                  }

                  continue;
                }

                goto LABEL_2911;
              }

            case 8:
              v701 = *(a7 + 160);
              v254 = *(v15 + 80);
              v702 = 1;
              while (v254 < v701)
              {
                v703 = *v254;
                if (v703 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v703))
                {
                  goto LABEL_2911;
                }

                v704 = v254 + 1;
                do
                {
                  v254 = v704;
                  *(v15 + 80) = v704;
                  if (v704 >= v701)
                  {
                    break;
                  }

                  ++v704;
                }

                while ((*v254 & 0xC0) == 0x80);
                ++v702;
                v184 = 0xFFFFFFFFLL;
                if (v702 > v34)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1558;
            case 9:
              v726 = *(a7 + 160);
              v254 = *(v15 + 80);
              v727 = 1;
              while (2)
              {
                if (v254 >= v726)
                {
                  goto LABEL_1558;
                }

                v728 = *v254;
                if (v728 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v728))
                {
                  *(v15 + 80) = ++v254;
                  ++v727;
                  v184 = 0xFFFFFFFFLL;
                  if (v727 > v34)
                  {
                    goto LABEL_393;
                  }

                  continue;
                }

                goto LABEL_2911;
              }

            case 10:
              v744 = *(a7 + 160);
              v254 = *(v15 + 80);
              v745 = 1;
              while (v254 < v744)
              {
                v746 = *v254;
                if ((v746 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v746) & 0x10) != 0)
                {
                  goto LABEL_2911;
                }

                v747 = v254 + 1;
                do
                {
                  v254 = v747;
                  *(v15 + 80) = v747;
                  if (v747 >= v744)
                  {
                    break;
                  }

                  ++v747;
                }

                while ((*v254 & 0xC0) == 0x80);
                ++v745;
                v184 = 0xFFFFFFFFLL;
                if (v745 > v34)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1558;
            case 11:
              v698 = *(a7 + 160);
              v254 = *(v15 + 80);
              v699 = 1;
              while (2)
              {
                if (v254 >= v698)
                {
                  goto LABEL_1558;
                }

                v700 = *v254;
                if ((v700 & 0x8000000000000000) == 0 && (*(*(a7 + 104) + v700) & 0x10) != 0)
                {
                  *(v15 + 80) = ++v254;
                  ++v699;
                  v184 = 0xFFFFFFFFLL;
                  if (v699 > v34)
                  {
                    goto LABEL_393;
                  }

                  continue;
                }

                goto LABEL_2911;
              }

            case 12:
              v196 = *(v15 + 80);
              v738 = *(a7 + 160);
              v739 = 1;
              while (v196 < v738)
              {
                v740 = *(a7 + 244);
                if (v740)
                {
                  if (_pcre2_is_newline_8(v196, v740, v738, (a7 + 248), v1243))
                  {
                    goto LABEL_2911;
                  }

                  v196 = *(v15 + 80);
                  v738 = *(a7 + 160);
                }

                else
                {
                  v741 = *(a7 + 248);
                  if (v196 <= v738 - v741 && *v196 == *(a7 + 252) && (v741 == 1 || v196[1] == *(a7 + 253)))
                  {
                    goto LABEL_2911;
                  }
                }

                v742 = *(a7 + 128);
                v743 = v196 + 1;
                if (*(a7 + 128))
                {
                  if (v743 >= v738 && !*(a7 + 244) && *(a7 + 248) == 2 && *v196 == *(a7 + 252))
                  {
                    *(a7 + 76) = 1;
                    if (v742 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

                do
                {
                  v196 = v743;
                  *(v15 + 80) = v743;
                  if (v743 >= v738)
                  {
                    break;
                  }

                  ++v743;
                }

                while ((*v196 & 0xC0) == 0x80);
                ++v739;
                v184 = 0xFFFFFFFFLL;
                if (v739 > *v181)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1738;
            case 13:
              v695 = *(a7 + 160);
              v219 = *(v15 + 80);
              v696 = 1;
              while (v219 < v695)
              {
                v697 = v219 + 1;
                do
                {
                  v219 = v697;
                  *(v15 + 80) = v697;
                  if (v697 >= v695)
                  {
                    break;
                  }

                  ++v697;
                }

                while ((*v219 & 0xC0) == 0x80);
                ++v696;
                v184 = 0xFFFFFFFFLL;
                if (v696 > v34)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1716;
            case 14:
              v254 = *(v15 + 80);
              if (v254 <= *(a7 + 160) - v34)
              {
                goto LABEL_1687;
              }

              goto LABEL_2911;
            case 17:
              v748 = *(a7 + 160);
              v661 = *(v15 + 80);
              v749 = 1;
              while (2)
              {
                if (v661 >= v748)
                {
                  goto LABEL_1861;
                }

                v750 = v661 + 1;
                *(v15 + 80) = v661 + 1;
                v751 = *v661;
                if (v751 >= 0xC0)
                {
                  if ((v751 & 0x20) != 0)
                  {
                    v752 = *v750 & 0x3F;
                    if ((v751 & 0x10) != 0)
                    {
                      if ((v751 & 8) != 0)
                      {
                        v753 = v661[2] & 0x3F;
                        v754 = v661[3] & 0x3F;
                        v755 = v661[4] & 0x3F;
                        if ((v751 & 4) != 0)
                        {
                          v751 = ((v751 & 1) << 30) | (v752 << 24) | (v753 << 18) | (v754 << 12) | (v755 << 6) | v661[5] & 0x3F;
                          v750 = v661 + 6;
                        }

                        else
                        {
                          v751 = ((v751 & 3) << 24) | (v752 << 18) | (v753 << 12) | (v754 << 6) | v755;
                          v750 = v661 + 5;
                        }
                      }

                      else
                      {
                        v751 = ((v751 & 7) << 18) | (v752 << 12) | ((v661[2] & 0x3F) << 6) | v661[3] & 0x3F;
                        v750 = v661 + 4;
                      }
                    }

                    else
                    {
                      v751 = ((v751 & 0xF) << 12) | (v752 << 6) | v661[2] & 0x3F;
                      v750 = v661 + 3;
                    }

                    *(v15 + 80) = v750;
                  }

                  else
                  {
                    v750 = v661 + 2;
                    *(v15 + 80) = v661 + 2;
                    v751 = v661[1] & 0x3F | ((v751 & 0x1F) << 6);
                  }
                }

                if (v751 <= 12)
                {
                  if ((v751 - 11) >= 2)
                  {
                    if (v751 != 10)
                    {
                      goto LABEL_2911;
                    }

LABEL_1773:
                    ++v749;
                    v184 = 0xFFFFFFFFLL;
                    v661 = v750;
                    if (v749 > v34)
                    {
                      goto LABEL_393;
                    }

                    continue;
                  }
                }

                else if ((v751 - 8232) >= 2 && v751 != 133)
                {
                  if (v751 != 13)
                  {
                    goto LABEL_2911;
                  }

                  if (v750 < v748 && *v750 == 10)
                  {
                    *(v15 + 80) = ++v750;
                  }

                  goto LABEL_1773;
                }

                break;
              }

              if (*(a7 + 130) == 2)
              {
                goto LABEL_2911;
              }

              goto LABEL_1773;
            case 18:
              v687 = *(a7 + 160);
              v668 = *(v15 + 80);
              v688 = 1;
              while (v668 < v687)
              {
                *(v15 + 80) = v668 + 1;
                v689 = *v668;
                if (v689 < 0xC0)
                {
                  ++v668;
                }

                else if ((v689 & 0x20) != 0)
                {
                  v691 = v668[1] & 0x3F;
                  if ((v689 & 0x10) != 0)
                  {
                    if ((v689 & 8) != 0)
                    {
                      v692 = v668[2] & 0x3F;
                      v693 = v668[3] & 0x3F;
                      v694 = v668[4] & 0x3F;
                      if ((v689 & 4) != 0)
                      {
                        v689 = ((v689 & 1) << 30) | (v691 << 24) | (v692 << 18) | (v693 << 12) | (v694 << 6) | v668[5] & 0x3F;
                        v668 += 6;
                      }

                      else
                      {
                        v689 = ((v689 & 3) << 24) | (v691 << 18) | (v692 << 12) | (v693 << 6) | v694;
                        v668 += 5;
                      }
                    }

                    else
                    {
                      v689 = ((v689 & 7) << 18) | (v691 << 12) | ((v668[2] & 0x3F) << 6) | v668[3] & 0x3F;
                      v668 += 4;
                    }
                  }

                  else
                  {
                    v689 = ((v689 & 0xF) << 12) | (v691 << 6) | v668[2] & 0x3F;
                    v668 += 3;
                  }

                  *(v15 + 80) = v668;
                }

                else
                {
                  *(v15 + 80) = v668 + 2;
                  v690 = v668[1] & 0x3F | ((v689 & 0x1F) << 6);
                  v668 += 2;
                  v689 = v690;
                }

                if (v689 < 0x2000)
                {
                  if (v689 <= 159)
                  {
                    if (v689 == 9 || v689 == 32)
                    {
                      goto LABEL_1212;
                    }
                  }

                  else if (v689 == 160 || v689 == 5760 || v689 == 6158)
                  {
                    goto LABEL_1212;
                  }
                }

                else if (v689 > 8238)
                {
                  if (v689 == 8239 || v689 == 8287 || v689 == 12288)
                  {
                    goto LABEL_1212;
                  }
                }

                else if ((v689 - 0x2000) < 0xB)
                {
                  goto LABEL_1212;
                }

                ++v688;
                v184 = 0xFFFFFFFFLL;
                if (v688 > v34)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1661;
            case 19:
              v708 = *(a7 + 160);
              v668 = *(v15 + 80);
              v709 = 1;
              while (2)
              {
                if (v668 >= v708)
                {
                  goto LABEL_1661;
                }

                *(v15 + 80) = v668 + 1;
                v710 = *v668;
                if (v710 < 0xC0)
                {
                  ++v668;
                }

                else if ((v710 & 0x20) != 0)
                {
                  v712 = v668[1] & 0x3F;
                  if ((v710 & 0x10) != 0)
                  {
                    if ((v710 & 8) != 0)
                    {
                      v713 = v668[2] & 0x3F;
                      v714 = v668[3] & 0x3F;
                      v715 = v668[4] & 0x3F;
                      if ((v710 & 4) != 0)
                      {
                        v710 = ((v710 & 1) << 30) | (v712 << 24) | (v713 << 18) | (v714 << 12) | (v715 << 6) | v668[5] & 0x3F;
                        v668 += 6;
                      }

                      else
                      {
                        v710 = ((v710 & 3) << 24) | (v712 << 18) | (v713 << 12) | (v714 << 6) | v715;
                        v668 += 5;
                      }
                    }

                    else
                    {
                      v710 = ((v710 & 7) << 18) | (v712 << 12) | ((v668[2] & 0x3F) << 6) | v668[3] & 0x3F;
                      v668 += 4;
                    }
                  }

                  else
                  {
                    v710 = ((v710 & 0xF) << 12) | (v712 << 6) | v668[2] & 0x3F;
                    v668 += 3;
                  }

                  *(v15 + 80) = v668;
                }

                else
                {
                  *(v15 + 80) = v668 + 2;
                  v711 = v668[1] & 0x3F | ((v710 & 0x1F) << 6);
                  v668 += 2;
                  v710 = v711;
                }

                if (v710 < 0x2000)
                {
                  if (v710 <= 159)
                  {
                    if (v710 != 9 && v710 != 32)
                    {
                      goto LABEL_1212;
                    }

                    goto LABEL_1647;
                  }

                  if (v710 == 160 || v710 == 5760)
                  {
                    goto LABEL_1647;
                  }

                  v716 = 6158;
                }

                else
                {
                  if (v710 <= 8238)
                  {
                    if ((v710 - 0x2000) >= 0xB)
                    {
                      goto LABEL_1212;
                    }

LABEL_1647:
                    ++v709;
                    v184 = 0xFFFFFFFFLL;
                    if (v709 > v34)
                    {
                      goto LABEL_393;
                    }

                    continue;
                  }

                  if (v710 == 8239 || v710 == 12288)
                  {
                    goto LABEL_1647;
                  }

                  v716 = 8287;
                }

                break;
              }

              if (v710 != v716)
              {
                goto LABEL_1212;
              }

              goto LABEL_1647;
            case 20:
              v729 = *(a7 + 160);
              v219 = *(v15 + 80);
              v730 = 1;
              while (v219 < v729)
              {
                *(v15 + 80) = v219 + 1;
                v731 = *v219;
                if (v731 < 0xC0)
                {
                  ++v219;
                }

                else if ((v731 & 0x20) != 0)
                {
                  v733 = v219[1] & 0x3F;
                  if ((v731 & 0x10) != 0)
                  {
                    if ((v731 & 8) != 0)
                    {
                      v734 = v219[2] & 0x3F;
                      v735 = v219[3] & 0x3F;
                      v736 = v219[4] & 0x3F;
                      if ((v731 & 4) != 0)
                      {
                        v731 = ((v731 & 1) << 30) | (v733 << 24) | (v734 << 18) | (v735 << 12) | (v736 << 6) | v219[5] & 0x3F;
                        v219 += 6;
                      }

                      else
                      {
                        v731 = ((v731 & 3) << 24) | (v733 << 18) | (v734 << 12) | (v735 << 6) | v736;
                        v219 += 5;
                      }
                    }

                    else
                    {
                      v731 = ((v731 & 7) << 18) | (v733 << 12) | ((v219[2] & 0x3F) << 6) | v219[3] & 0x3F;
                      v219 += 4;
                    }
                  }

                  else
                  {
                    v731 = ((v731 & 0xF) << 12) | (v733 << 6) | v219[2] & 0x3F;
                    v219 += 3;
                  }

                  *(v15 + 80) = v219;
                }

                else
                {
                  *(v15 + 80) = v219 + 2;
                  v732 = v219[1] & 0x3F | ((v731 & 0x1F) << 6);
                  v219 += 2;
                  v731 = v732;
                }

                v737 = v731 - 10 >= 4 && v731 - 8232 >= 2;
                if (!v737 || v731 == 133)
                {
                  goto LABEL_1212;
                }

                ++v730;
                v184 = 0xFFFFFFFFLL;
                if (v730 > v34)
                {
                  goto LABEL_393;
                }
              }

              goto LABEL_1716;
            case 21:
              v717 = *(a7 + 160);
              v219 = *(v15 + 80);
              v718 = 1;
              while (v219 < v717)
              {
                *(v15 + 80) = v219 + 1;
                v719 = *v219;
                if (v719 < 0xC0)
                {
                  ++v219;
                }

                else if ((v719 & 0x20) != 0)
                {
                  v721 = v219[1] & 0x3F;
                  if ((v719 & 0x10) != 0)
                  {
                    if ((v719 & 8) != 0)
                    {
                      v722 = v219[2] & 0x3F;
                      v723 = v219[3] & 0x3F;
                      v724 = v219[4] & 0x3F;
                      if ((v719 & 4) != 0)
                      {
                        v719 = ((v719 & 1) << 30) | (v721 << 24) | (v722 << 18) | (v723 << 12) | (v724 << 6) | v219[5] & 0x3F;
                        v219 += 6;
                      }

                      else
                      {
                        v719 = ((v719 & 3) << 24) | (v721 << 18) | (v722 << 12) | (v723 << 6) | v724;
                        v219 += 5;
                      }
                    }

                    else
                    {
                      v719 = ((v719 & 7) << 18) | (v721 << 12) | ((v219[2] & 0x3F) << 6) | v219[3] & 0x3F;
                      v219 += 4;
                    }
                  }

                  else
                  {
                    v719 = ((v719 & 0xF) << 12) | (v721 << 6) | v219[2] & 0x3F;
                    v219 += 3;
                  }

                  *(v15 + 80) = v219;
                }

                else
                {
                  *(v15 + 80) = v219 + 2;
                  v720 = v219[1] & 0x3F | ((v719 & 0x1F) << 6);
                  v219 += 2;
                  v719 = v720;
                }

                v725 = v719 - 10 >= 4 && v719 - 8232 >= 2;
                if (v725 && v719 != 133)
                {
                  goto LABEL_1212;
                }

                ++v718;
                v184 = 0xFFFFFFFFLL;
                if (v718 > v34)
                {
                  goto LABEL_393;
                }
              }

LABEL_1716:
              v391 = *(a7 + 128);
              if (!*(a7 + 128) || v219 <= *(a7 + 176))
              {
                goto LABEL_2911;
              }

              goto LABEL_1740;
            default:
              return v19;
          }
        }

        v19 = 4294967252;
        switch(v182)
        {
          case 6:
            v253 = *(a7 + 160);
            v254 = *(v15 + 80);
            v255 = 1;
            while (v254 < v253)
            {
              if ((*(*(a7 + 104) + *v254) & 4) != 0)
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v255;
              v184 = 0xFFFFFFFFLL;
              if (v255 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1558;
          case 7:
            v656 = *(a7 + 160);
            v254 = *(v15 + 80);
            v657 = 1;
            while (v254 < v656)
            {
              if ((*(*(a7 + 104) + *v254) & 4) == 0)
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v657;
              v184 = 0xFFFFFFFFLL;
              if (v657 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1558;
          case 8:
            v665 = *(a7 + 160);
            v254 = *(v15 + 80);
            v666 = 1;
            while (v254 < v665)
            {
              if (*(*(a7 + 104) + *v254))
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v666;
              v184 = 0xFFFFFFFFLL;
              if (v666 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1558;
          case 9:
            v658 = *(a7 + 160);
            v254 = *(v15 + 80);
            v659 = 1;
            while (v254 < v658)
            {
              if ((*(*(a7 + 104) + *v254) & 1) == 0)
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v659;
              v184 = 0xFFFFFFFFLL;
              if (v659 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1558;
          case 10:
            v676 = *(a7 + 160);
            v254 = *(v15 + 80);
            v677 = 1;
            while (v254 < v676)
            {
              if ((*(*(a7 + 104) + *v254) & 0x10) != 0)
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v677;
              v184 = 0xFFFFFFFFLL;
              if (v677 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1558;
          case 11:
            v654 = *(a7 + 160);
            v254 = *(v15 + 80);
            v655 = 1;
            while (v254 < v654)
            {
              if ((*(*(a7 + 104) + *v254) & 0x10) == 0)
              {
                goto LABEL_2911;
              }

              *(v15 + 80) = ++v254;
              ++v655;
              v184 = 0xFFFFFFFFLL;
              if (v655 > v34)
              {
                goto LABEL_393;
              }
            }

LABEL_1558:
            v391 = *(a7 + 128);
            if (*(a7 + 128))
            {
              goto LABEL_1559;
            }

            goto LABEL_2911;
          case 12:
            v196 = *(v15 + 80);
            v671 = 1;
            while (2)
            {
              v672 = *(a7 + 160);
              if (v196 >= v672)
              {
                goto LABEL_1738;
              }

              v673 = *(a7 + 244);
              if (v673)
              {
                if (_pcre2_is_newline_8(v196, v673, v672, (a7 + 248), v1243))
                {
                  goto LABEL_2911;
                }

                v196 = *(v15 + 80);
              }

              else
              {
                v674 = *(a7 + 248);
                if (v196 <= v672 - v674 && *v196 == *(a7 + 252) && (v674 == 1 || v196[1] == *(a7 + 253)))
                {
                  goto LABEL_2911;
                }
              }

              v675 = *(a7 + 128);
              if (!*(a7 + 128) || (v196 + 1) < *(a7 + 160) || *(a7 + 244) || *(a7 + 248) != 2 || *v196 != *(a7 + 252) || (*(a7 + 76) = 1, v675 == 1))
              {
                *(v15 + 80) = ++v196;
                ++v671;
                v184 = 0xFFFFFFFFLL;
                if (v671 > *(v15 + 56))
                {
                  goto LABEL_393;
                }

                continue;
              }

              return 4294967294;
            }

          case 13:
            v254 = *(v15 + 80);
            if (v254 > *(a7 + 160) - v34)
            {
              goto LABEL_1558;
            }

LABEL_1687:
            *(v15 + 80) = &v254[v34];
            goto LABEL_392;
          case 17:
            v660 = *(a7 + 160);
            v661 = *(v15 + 80);
            v662 = 1;
            while (2)
            {
              if (v661 >= v660)
              {
LABEL_1861:
                v391 = *(a7 + 128);
                if (!*(a7 + 128) || v661 <= *(a7 + 176))
                {
                  goto LABEL_2911;
                }

                goto LABEL_1740;
              }

              v663 = v661 + 1;
              *(v15 + 80) = v661 + 1;
              v664 = *v661;
              if (v664 > 0xC)
              {
                if (v664 != 133)
                {
                  if (v664 != 13)
                  {
                    goto LABEL_2911;
                  }

                  if (v663 < v660 && *v663 == 10)
                  {
                    v663 = v661 + 2;
                    *(v15 + 80) = v661 + 2;
                  }

                  goto LABEL_1509;
                }
              }

              else if (v664 - 11 >= 2)
              {
                if (v664 != 10)
                {
                  goto LABEL_2911;
                }

                goto LABEL_1509;
              }

              if (*(a7 + 130) == 2)
              {
                goto LABEL_2911;
              }

LABEL_1509:
              ++v662;
              v184 = 0xFFFFFFFFLL;
              v661 = v663;
              if (v662 > v34)
              {
                goto LABEL_393;
              }

              continue;
            }

          case 18:
            v678 = *(a7 + 160);
            v668 = *(v15 + 80);
            v679 = 1;
            while (v668 < v678)
            {
              *(v15 + 80) = v668 + 1;
              v680 = *v668;
              if (v680 == 9 || v680 == 32 || v680 == 160)
              {
                goto LABEL_1212;
              }

              ++v679;
              v184 = 0xFFFFFFFFLL;
              ++v668;
              if (v679 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1661;
          case 19:
            v684 = *(a7 + 160);
            v668 = *(v15 + 80);
            v685 = 1;
            while (v668 < v684)
            {
              *(v15 + 80) = v668 + 1;
              v686 = *v668;
              if (v686 != 9 && v686 != 160 && v686 != 32)
              {
                goto LABEL_1212;
              }

              ++v685;
              v184 = 0xFFFFFFFFLL;
              ++v668;
              if (v685 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1661;
          case 20:
            v667 = *(a7 + 160);
            v668 = *(v15 + 80);
            v669 = 1;
            while (v668 < v667)
            {
              *(v15 + 80) = v668 + 1;
              v670 = *v668;
              if ((v670 - 10) < 4 || v670 == 133)
              {
                goto LABEL_1212;
              }

              ++v669;
              v184 = 0xFFFFFFFFLL;
              ++v668;
              if (v669 > v34)
              {
                goto LABEL_393;
              }
            }

            goto LABEL_1661;
          case 21:
            v681 = *(a7 + 160);
            v668 = *(v15 + 80);
            v682 = 1;
            while (v668 < v681)
            {
              *(v15 + 80) = v668 + 1;
              v683 = *v668;
              if ((v683 - 10) >= 4 && v683 != 133)
              {
                goto LABEL_1212;
              }

              ++v682;
              v184 = 0xFFFFFFFFLL;
              ++v668;
              if (v682 > v34)
              {
                goto LABEL_393;
              }
            }

LABEL_1661:
            v391 = *(a7 + 128);
            if (!*(a7 + 128) || v668 <= *(a7 + 176))
            {
              goto LABEL_2911;
            }

            goto LABEL_1740;
          default:
            return v19;
        }

      case 0x6Eu:
      case 0x6Fu:
        v45 = a2 + 1;
        *(v15 + 16) = a2 + 1;
        v46 = a2 + 33;
        *v15 = a2 + 33;
        v47 = a2[33] - 98;
        if (v47 > 0xB)
        {
          *(v15 + 56) = 0x100000001;
          v50 = 1;
          v49 = 1;
          if (v1244)
          {
LABEL_834:
            v369 = *(a7 + 160);
            v370 = *(v15 + 80);
            v371 = 1;
            while (v370 < v369)
            {
              v372 = v370 + 1;
              *(v15 + 80) = v370 + 1;
              v373 = *v370;
              if (v373 < 0xC0 || ((v373 & 0x20) != 0 ? ((v374 = *v372 & 0x3F, (v373 & 0x10) != 0) ? ((v373 & 8) != 0 ? ((v375 = v370[2] & 0x3F, v376 = v370[3] & 0x3F, v377 = v370[4] & 0x3F, (v373 & 4) != 0) ? (v373 = ((v373 & 1) << 30) | (v374 << 24) | (v375 << 18) | (v376 << 12) | (v377 << 6) | v370[5] & 0x3F, v372 = v370 + 6) : (v373 = ((v373 & 3) << 24) | (v374 << 18) | (v375 << 12) | (v376 << 6) | v377, v372 = v370 + 5)) : (v373 = ((v373 & 7) << 18) | (v374 << 12) | ((v370[2] & 0x3F) << 6) | v370[3] & 0x3F, v372 = v370 + 4)) : (v373 = ((v373 & 0xF) << 12) | (v374 << 6) | v370[2] & 0x3F, v372 = v370 + 3), *(v15 + 80) = v372) : (v372 = v370 + 2, *(v15 + 80) = v370 + 2, v373 = v370[1] & 0x3F | ((v373 & 0x1F) << 6)), v373 < 0x100))
              {
                if (((v45[v373 >> 3] >> (v373 & 7)) & 1) == 0)
                {
                  goto LABEL_1212;
                }
              }

              else if (v18 == 110)
              {
                goto LABEL_1212;
              }

              ++v371;
              v370 = v372;
              if (v371 > v49)
              {
                goto LABEL_858;
              }
            }

            v164 = *(a7 + 128);
            if (!*(a7 + 128) || v370 <= *(a7 + 176))
            {
              goto LABEL_1212;
            }
          }

          else
          {
LABEL_854:
            v378 = *(a7 + 160);
            v379 = *(v15 + 80);
            v380 = 1;
            while (v379 < v378)
            {
              *(v15 + 80) = v379 + 1;
              if (((v45[*v379 >> 3] >> (*v379 & 7)) & 1) == 0)
              {
                goto LABEL_1212;
              }

              ++v380;
              ++v379;
              if (v380 > v49)
              {
                goto LABEL_858;
              }
            }

            v164 = *(a7 + 128);
            if (!*(a7 + 128) || v379 <= *(a7 + 176))
            {
              goto LABEL_1212;
            }
          }

LABEL_945:
          *(a7 + 76) = 1;
          if (v164 == 1)
          {
            goto LABEL_1212;
          }

          return 4294967294;
        }

        if (((1 << v47) & 0x73F) != 0)
        {
          v46 = a2 + 34;
          *v15 = a2 + 34;
          v48 = a2[33] - 98;
          v49 = rep_min[v48];
          *(v15 + 56) = v49;
          v50 = rep_max[v48];
          *(v15 + 60) = v50;
          v11 = rep_typ[v48];
        }

        else
        {
          v49 = __rev16(*(a2 + 17));
          *(v15 + 56) = v49;
          v368 = __rev16(*(a2 + 18));
          if (v368)
          {
            v50 = v368;
          }

          else
          {
            v50 = -1;
          }

          *(v15 + 60) = v50;
          v11 = rep_typ[a2[33] - 98];
          v46 = a2 + 38;
          *v15 = a2 + 38;
        }

        if (v1244)
        {
          if (v49)
          {
            goto LABEL_834;
          }
        }

        else if (v49)
        {
          goto LABEL_854;
        }

LABEL_858:
        if (v50 == v49)
        {
          goto LABEL_2990;
        }

        if (!v11)
        {
          if (v1244)
          {
            v1207 = -56;
            v12 = 0;
          }

          else
          {
LABEL_3221:
            v12 = 0;
            v1207 = 23;
          }

          a2 = v46;
          goto LABEL_3173;
        }

        v381 = *(v15 + 80);
        *(v15 + 8) = v381;
        if (!v1244)
        {
          v517 = v381;
          v615 = v50 >= v49;
          v518 = v50 - v49;
          if (v518 == 0 || !v615)
          {
            goto LABEL_1926;
          }

          v519 = *(a7 + 160);
          v517 = v381;
          while (v517 < v519)
          {
            if ((v45[*v517 >> 3] >> (*v517 & 7)))
            {
              *(v15 + 80) = ++v517;
              if (--v518)
              {
                continue;
              }
            }

            goto LABEL_1926;
          }

          v792 = *(a7 + 128);
          if (!*(a7 + 128) || v517 <= *(a7 + 176) || (*(a7 + 76) = 1, v792 == 1))
          {
LABEL_1926:
            if (v11 == 2)
            {
              goto LABEL_2990;
            }

LABEL_2903:
            if (v517 >= v381)
            {
              v12 = 0;
              a2 = *v15;
              v1207 = 24;
              goto LABEL_3173;
            }

            goto LABEL_2911;
          }

          return 4294967294;
        }

        v615 = v50 >= v49;
        v382 = v50 - v49;
        if (v382 == 0 || !v615)
        {
          goto LABEL_1921;
        }

        v383 = *(a7 + 160);
        while (2)
        {
          if (v381 < v383)
          {
            v384 = *v381;
            if (v384 < 0xC0)
            {
              v386 = 1;
            }

            else
            {
              v385 = v381[1] & 0x3F;
              if ((v384 & 0x20) != 0)
              {
                if ((v384 & 0x10) != 0)
                {
                  if ((v384 & 8) != 0)
                  {
                    v387 = v381[2] & 0x3F;
                    v388 = v381[3] & 0x3F;
                    v389 = v381[4] & 0x3F;
                    if ((v384 & 4) != 0)
                    {
                      v384 = ((v384 & 1) << 30) | (v385 << 24) | (v387 << 18) | (v388 << 12) | (v389 << 6) | v381[5] & 0x3F;
                      v386 = 6;
                    }

                    else
                    {
                      v384 = ((v384 & 3) << 24) | (v385 << 18) | (v387 << 12) | (v388 << 6) | v389;
                      v386 = 5;
                    }
                  }

                  else
                  {
                    v384 = ((v384 & 7) << 18) | (v385 << 12) | ((v381[2] & 0x3F) << 6) | v381[3] & 0x3F;
                    v386 = 4;
                  }
                }

                else
                {
                  v384 = ((v384 & 0xF) << 12) | (v385 << 6) | v381[2] & 0x3F;
                  v386 = 3;
                }
              }

              else
              {
                v386 = 2;
                v384 = v381[1] & 0x3F | ((v384 & 0x1F) << 6);
              }

              if (v384 >= 0x100)
              {
                if (v18 == 110)
                {
                  goto LABEL_1921;
                }

                goto LABEL_880;
              }
            }

            if (((v45[v384 >> 3] >> (v384 & 7)) & 1) == 0)
            {
              goto LABEL_1921;
            }

LABEL_880:
            v381 += v386;
            *(v15 + 80) = v381;
            if (!--v382)
            {
              goto LABEL_1921;
            }

            continue;
          }

          break;
        }

        v791 = *(a7 + 128);
        if (*(a7 + 128))
        {
          if (v381 > *(a7 + 176))
          {
            *(a7 + 76) = 1;
            if (v791 != 1)
            {
              return 4294967294;
            }
          }
        }

LABEL_1921:
        if (v11 != 2)
        {
LABEL_3296:
          v12 = 0;
          a2 = *v15;
          v1207 = -55;
          goto LABEL_3173;
        }

LABEL_2990:
        a2 = *v15;
        continue;
      case 0x70u:
        *(v15 + 16) = a2 + 3;
        v176 = &a2[__rev16(*(a2 + 1))];
        *v15 = v176;
        v177 = *v176 - 98;
        if (v177 > 0xB)
        {
          *(v15 + 56) = 0x100000001;
        }

        else
        {
          if (((1 << v177) & 0x73F) != 0)
          {
            *v15 = v176 + 1;
            v178 = *v176 - 98;
            v179 = rep_min[v178];
            *(v15 + 56) = v179;
            v180 = rep_max[v178];
            *(v15 + 60) = v180;
            v11 = rep_typ[v178];
          }

          else
          {
            v179 = __rev16(*(v176 + 1));
            *(v15 + 56) = v179;
            v180 = __rev16(*(v176 + 3));
            if (!v180)
            {
              v180 = -1;
            }

            *(v15 + 60) = v180;
            v11 = rep_typ[*v176 - 98];
            *v15 = v176 + 5;
          }

          if (!v179)
          {
            v533 = 0;
LABEL_1214:
            if (v533 == v180)
            {
              goto LABEL_2990;
            }

            if (v11)
            {
              v535 = *(v15 + 80);
              *(v15 + 8) = v535;
              while (1)
              {
                if (v533 >= *(v15 + 60))
                {
                  goto LABEL_1931;
                }

                if (v535 >= *(a7 + 160))
                {
                  break;
                }

                v536 = *v535;
                v537 = 1;
                if (v1244 && v536 >= 0xC0)
                {
                  v538 = v535[1] & 0x3F;
                  if ((v536 & 0x20) != 0)
                  {
                    if ((v536 & 0x10) != 0)
                    {
                      if ((v536 & 8) != 0)
                      {
                        v539 = v535[2] & 0x3F;
                        v540 = v535[3] & 0x3F;
                        v541 = v535[4] & 0x3F;
                        if ((v536 & 4) != 0)
                        {
                          v536 = ((v536 & 1) << 30) | (v538 << 24) | (v539 << 18) | (v540 << 12) | (v541 << 6) | v535[5] & 0x3F;
                          v537 = 6;
                        }

                        else
                        {
                          v536 = ((v536 & 3) << 24) | (v538 << 18) | (v539 << 12) | (v540 << 6) | v541;
                          v537 = 5;
                        }
                      }

                      else
                      {
                        v536 = ((v536 & 7) << 18) | (v538 << 12) | ((v535[2] & 0x3F) << 6) | v535[3] & 0x3F;
                        v537 = 4;
                      }
                    }

                    else
                    {
                      v536 = ((v536 & 0xF) << 12) | (v538 << 6) | v535[2] & 0x3F;
                      v537 = 3;
                    }
                  }

                  else
                  {
                    v537 = 2;
                    v536 = v535[1] & 0x3F | ((v536 & 0x1F) << 6);
                  }
                }

                if (!_pcre2_xclass_8(v536, *(v15 + 16)))
                {
                  goto LABEL_1931;
                }

                v535 = (*(v15 + 80) + v537);
                *(v15 + 80) = v535;
                ++v533;
              }

              v793 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if (v535 > *(a7 + 176))
                {
                  *(a7 + 76) = 1;
                  if (v793 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

LABEL_1931:
              if (v11 == 2)
              {
                goto LABEL_2990;
              }

              goto LABEL_3186;
            }

LABEL_3219:
            v12 = 0;
            a2 = *v15;
            v1207 = 100;
            goto LABEL_3173;
          }
        }

        v526 = 1;
        while (1)
        {
          v63 = *(v15 + 80);
          if (v63 >= *(a7 + 160))
          {
            goto LABEL_1209;
          }

          *(v15 + 80) = v63 + 1;
          v527 = *v63;
          if (v1244 && v527 >= 0xC0)
          {
            if ((v527 & 0x20) != 0)
            {
              v528 = v63[1] & 0x3F;
              if ((v527 & 0x10) != 0)
              {
                if ((v527 & 8) != 0)
                {
                  v530 = v63[2] & 0x3F;
                  v531 = v63[3] & 0x3F;
                  v532 = v63[4] & 0x3F;
                  if ((v527 & 4) != 0)
                  {
                    v527 = ((v527 & 1) << 30) | (v528 << 24) | (v530 << 18) | (v531 << 12) | (v532 << 6) | v63[5] & 0x3F;
                    v529 = v63 + 6;
                  }

                  else
                  {
                    v527 = ((v527 & 3) << 24) | (v528 << 18) | (v530 << 12) | (v531 << 6) | v532;
                    v529 = v63 + 5;
                  }
                }

                else
                {
                  v527 = ((v527 & 7) << 18) | (v528 << 12) | ((v63[2] & 0x3F) << 6) | v63[3] & 0x3F;
                  v529 = v63 + 4;
                }
              }

              else
              {
                v527 = ((v527 & 0xF) << 12) | (v528 << 6) | v63[2] & 0x3F;
                v529 = v63 + 3;
              }

              *(v15 + 80) = v529;
            }

            else
            {
              *(v15 + 80) = v63 + 2;
              v527 = v63[1] & 0x3F | ((v527 & 0x1F) << 6);
            }
          }

          v20 = _pcre2_xclass_8(v527, *(v15 + 16));
          if (!v20)
          {
            break;
          }

          ++v526;
          v533 = *(v15 + 56);
          if (v526 > v533)
          {
            v180 = *(v15 + 60);
            goto LABEL_1214;
          }
        }

LABEL_2416:
        while (2)
        {
          while (2)
          {
            v19 = v20;
            if (!*(v15 + 48))
            {
              return v19;
            }

            v15 -= *(v15 + 32);
            *(*(a7 + 256) + 104) |= 2u;
            v953 = *(v15 + 72);
            v19 = 4294967252;
            if (v953 <= 0x63)
            {
              switch(*(v15 + 72))
              {
                case 1:
                  if (v20)
                  {
                    continue;
                  }

                  a2 = *(v15 + 8);
                  *v15 = a2;
                  goto LABEL_2891;
                case 2:
                  if (v20 != -993)
                  {
                    if (v20)
                    {
                      continue;
                    }

                    v1013 = *v15;
                    v1014 = __rev16(*(*v15 + 1));
                    goto LABEL_2848;
                  }

                  v1013 = *v15;
                  v1014 = __rev16(*(*v15 + 1));
                  v1015 = (*v15 + v1014);
                  if (*(a7 + 208) < v1015 && (*v1013 == 120 || *v1015 == 120))
                  {
LABEL_2848:
                    a2 = &v1013[v1014];
                    *v15 = &v1013[v1014];
                    if (v1013[v1014] != 120)
                    {
                      goto LABEL_2864;
                    }

                    v12 = *(v15 + 56);
LABEL_3218:
                    a2 += _pcre2_OP_lengths_8[*a2];
                    v1207 = 2;
                    goto LABEL_3173;
                  }

                  goto LABEL_2639;
                case 3:
                  if (v20 == -993 || !v20)
                  {
                    v1055 = *v15;
                    v1056 = __rev16(*(*v15 + 1));
                    a2 = (*v15 + v1056);
                    *v15 = a2;
                    if (v1055[v1056] != 120)
                    {
                      goto LABEL_2864;
                    }

                    v12 = *(v15 + 56);
                    v1199 = 0x78u;
LABEL_3181:
                    a2 += _pcre2_OP_lengths_8[v1199];
                    v1207 = 3;
                    goto LABEL_3173;
                  }

                  if (v20 != -999)
                  {
                    continue;
                  }

                  cstdlib_memcpy((v15 + 128), v1241 + 16, 8 * v1241[15]);
                  *(v15 + 120) = v1241[15];
                  *(v15 + 96) = v1241[12];
                  v40 = *v15;
                  do
                  {
                    v40 += __rev16(*(v40 + 1));
                    *v15 = v40;
                  }

                  while (*v40 == 120);
                  goto LABEL_2988;
                case 4:
                  if (v20 <= -994)
                  {
                    if (v20 != -999)
                    {
                      if ((v20 + 997) >= 3)
                      {
                        continue;
                      }

                      a2 = *v15;
                      do
                      {
                        a2 += __rev16(*(a2 + 1));
                        *v15 = a2;
                      }

                      while (*a2 == 120);
LABEL_2959:
                      v105 = a2 + 3;
                      goto LABEL_2989;
                    }

                    goto LABEL_2714;
                  }

                  if (v20 == 1)
                  {
                    goto LABEL_2714;
                  }

                  if (v20 != -993 && v20)
                  {
                    continue;
                  }

                  a2 = (*v15 + __rev16(*(*v15 + 1)));
                  *v15 = a2;
                  if (*a2 != 120)
                  {
                    goto LABEL_2959;
                  }

                  v12 = *(v15 + 56);
                  v1206 = 0x78u;
LABEL_3213:
                  a2 += _pcre2_OP_lengths_8[v1206];
                  v1207 = 4;
LABEL_3173:
                  *(v15 + 72) = v1207;
                  v13 = &v8[v15];
                  if (&v8[v15] >= *(a7 + 40))
                  {
                    v1190 = v8;
                    v1191 = v11;
                    v1192 = v16;
                    v1193 = *(a7 + 24);
                    v1194 = 2 * v1193;
                    v1195 = *(a7 + 56);
                    if (v1195 < (2 * v1193) >> 10)
                    {
                      v1194 = (v1195 << 10) / v8 * v8;
                      if (v1193 >= v1194)
                      {
                        return 4294967233;
                      }
                    }

                    v1196 = (*a7)(v1194, *(a7 + 16));
                    if (!v1196)
                    {
                      return 4294967248;
                    }

                    v1197 = v1196;
                    cstdlib_memcpy(v1196, *(a7 + 32), *(a7 + 24));
                    v1198 = *(a7 + 32);
                    if (v1198 != *(a7 + 48))
                    {
                      (*(a7 + 8))(*(a7 + 32), *(a7 + 16));
                    }

                    *(a7 + 32) = v1197;
                    *(a7 + 40) = &v1197[v1194];
                    v15 = &v1197[v15 - v1198];
                    *(a7 + 24) = v1194;
                    v16 = v1192;
                    v11 = v1191;
                    v13 = &v1190[v15];
                    v8 = v1190;
                  }

                  cstdlib_memcpy(v13 + 80, (v15 + 80), __n);
                  v10 = *(v15 + 48) + 1;
                  *(v13 + 12) = v10;
                  v15 = v13;
                  goto LABEL_2;
                case 5:
                  if (v20 <= -994)
                  {
                    if ((v20 + 997) >= 3)
                    {
                      if (v20 != -999)
                      {
                        continue;
                      }

                      cstdlib_memcpy((v15 + 128), v1241 + 16, 8 * v1241[15]);
                      *(v15 + 120) = v1241[15];
                      goto LABEL_2936;
                    }

                    goto LABEL_2870;
                  }

                  if (v20 != -993 && v20)
                  {
                    if (v20 != 1)
                    {
                      continue;
                    }

LABEL_2936:
                    if (!*(v15 + 56))
                    {
                      goto LABEL_2937;
                    }

LABEL_2871:
                    v88 = *v15;
                    do
                    {
                      v88 += __rev16(*(v88 + 1));
                      *v15 = v88;
                      v91 = *v88;
                    }

                    while (v91 == 120);
                    goto LABEL_2873;
                  }

                  v1091 = *(v15 + 8);
                  v1092 = __rev16(*(v1091 + 1));
                  v88 = &v1091[v1092];
                  *(v15 + 8) = &v1091[v1092];
                  if (v1091[v1092] != 120)
                  {
LABEL_2870:
                    if (*(v15 + 56))
                    {
LABEL_2937:
                      v87 = *(v15 + 24);
                      v88 = *v15;
                      goto LABEL_2938;
                    }

                    goto LABEL_2871;
                  }

                  v1216 = **v15;
                  v1217 = 0x78u;
                  goto LABEL_3317;
                case 6:
                  if (v20)
                  {
                    continue;
                  }

                  v105 = (*v15 - __rev16(*(*v15 + 1)));
                  goto LABEL_2989;
                case 7:
                  if (v20)
                  {
                    continue;
                  }

                  a2 = *v15;
                  goto LABEL_2959;
                case 8:
                  if (v20 == -993)
                  {
                    v1016 = *v15;
                    v1017 = __rev16(*(*v15 + 1));
                    v1018 = (*v15 + v1017);
                    if (*(a7 + 208) >= v1018 || *v1016 != 120 && *v1018 != 120)
                    {
LABEL_2639:
                      v20 = 4294966303;
                      continue;
                    }
                  }

                  else
                  {
                    if (v20)
                    {
                      if (v20 != -998)
                      {
                        continue;
                      }

                      *(v15 + 60) = 1;
                      if (*(v15 + 80) == *(v15 + 8))
                      {
                        v40 = *v15;
                        do
                        {
                          v40 += __rev16(*(v40 + 1));
                          *v15 = v40;
                        }

                        while (*v40 == 120);
                        goto LABEL_2988;
                      }

                      v1089 = *(v15 + 16);
                      *v15 = v1089;
LABEL_3255:
                      *(v15 + 8) = *(v15 + 80);
                      v12 = *(v15 + 56);
                      a2 = &v1089[_pcre2_OP_lengths_8[*v1089]];
                      v1207 = 8;
                      goto LABEL_3173;
                    }

                    v1016 = *v15;
                    v1017 = __rev16(*(*v15 + 1));
                  }

                  v1089 = &v1016[v1017];
                  *v15 = &v1016[v1017];
                  if (v1016[v1017] != 120)
                  {
                    if (!*(v15 + 60) && !*(v15 + 64))
                    {
                      goto LABEL_2864;
                    }

                    v40 = &v1016[v1017];
                    goto LABEL_2988;
                  }

                  goto LABEL_3255;
                case 9:
                  if (v20)
                  {
                    continue;
                  }

                  v40 = *(v15 + 8);
                  do
                  {
                    v40 += __rev16(*(v40 + 1));
                    *(v15 + 8) = v40;
                  }

                  while (*v40 == 120);
                  goto LABEL_2988;
                case 0xA:
                  if (!v20)
                  {
                    goto LABEL_2255;
                  }

                  continue;
                case 0xB:
                  v980 = *(v15 + 8);
                  v981 = &v980[__rev16(*(v980 + 1))];
                  if ((v20 + 997) >= 5)
                  {
                    if (v20)
                    {
                      continue;
                    }
                  }

                  else
                  {
                    if ((*(v15 + 56) ^ *(a7 + 224)) != 0x40000)
                    {
                      continue;
                    }

                    if (v20 != -993 || *(a7 + 208) >= v981 || *v980 != 120 && *v981 != 120)
                    {
                      goto LABEL_2864;
                    }
                  }

                  *(v15 + 8) = v981;
                  if (*v981 != 120)
                  {
                    goto LABEL_2864;
                  }

                  v12 = *(v15 + 56);
                  v1202 = 0x78u;
                  goto LABEL_3245;
                case 0xC:
                  if (v20 == -994)
                  {
                    if (_pcre2_strcmp_8((*v15 + 2), *(a7 + 216)))
                    {
                      v20 = 4294966302;
                    }

                    else
                    {
                      *(a7 + 216) = *(v15 + 80);
                      v20 = 4294966301;
                    }
                  }

                  continue;
                case 0xD:
                case 0x24:
                  if (!v20)
                  {
                    *(a7 + 224) = *(v15 + 104);
                    v20 = 4294966299;
                  }

                  continue;
                case 0xE:
                case 0xF:
                  if (!v20)
                  {
                    *(a7 + 224) = *(v15 + 104);
                    v20 = 4294966300;
                  }

                  continue;
                case 0x10:
                  if (!v20)
                  {
                    *(a7 + 216) = *(v15 + 80);
                    *(a7 + 224) = *(v15 + 104);
                    v20 = 4294966301;
                  }

                  continue;
                case 0x11:
                  if (!v20)
                  {
                    *(a7 + 216) = *v15 + 2;
                    *(a7 + 224) = *(v15 + 104);
                    v20 = 4294966302;
                  }

                  continue;
                case 0x12:
                case 0x13:
                  if (!v20)
                  {
                    *(a7 + 208) = *v15;
                    *(a7 + 224) = *(v15 + 104);
                    v20 = 4294966303;
                  }

                  continue;
                case 0x14:
                  if (v20)
                  {
                    continue;
                  }

                  v1076 = *(v15 + 56);
                  v1077 = *(v15 + 60);
                  *(v15 + 56) = v1076 + 1;
                  if (v1076 >= v1077)
                  {
                    goto LABEL_2864;
                  }

                  matched = match_ref(*(v15 + 40), *(v15 + 64), v15, a7, &v1245);
                  if (!matched)
                  {
                    *(v15 + 80) += v1245;
                    goto LABEL_3204;
                  }

                  if (matched >= 1)
                  {
                    *(v15 + 80) = *(a7 + 160);
                  }

                  v487 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    goto LABEL_2864;
                  }

                  v1059 = *(v15 + 80);
                  if (v1059 < *(a7 + 160))
                  {
                    goto LABEL_2864;
                  }

                  goto LABEL_2845;
                case 0x15:
                  if (v20)
                  {
                    continue;
                  }

                  v653 = (*(v15 + 80) - *(v15 + 24));
                  *(v15 + 80) = v653;
                  goto LABEL_2910;
                case 0x16:
                  if (v20)
                  {
                    continue;
                  }

                  v979 = *(v15 + 8);
                  if (*(v15 + 80) == v979)
                  {
                    continue;
                  }

                  *(v15 + 80) = v979;
                  v1223 = *(v15 + 56);
                  v1224 = *(v15 + 60) - 1;
                  *(v15 + 60) = v1224;
                  while (v1223 < v1224)
                  {
                    v1246 = 0;
                    match_ref(*(v15 + 40), *(v15 + 64), v15, a7, &v1246);
                    *(v15 + 80) += v1246;
                    ++v1223;
                    v1224 = *(v15 + 60);
                  }

                  goto LABEL_3314;
                case 0x17:
                  if (v20)
                  {
                    continue;
                  }

                  v1000 = *(v15 + 56);
                  v1001 = *(v15 + 60);
                  *(v15 + 56) = v1000 + 1;
                  if (v1000 >= v1001)
                  {
                    goto LABEL_2714;
                  }

                  v964 = *(v15 + 80);
                  if (v964 >= *(a7 + 160))
                  {
                    goto LABEL_2614;
                  }

                  *(v15 + 80) = v964 + 1;
                  if (((*(*(v15 + 16) + (*v964 >> 3)) >> (*v964 & 7)) & 1) == 0)
                  {
                    goto LABEL_2714;
                  }

                  v46 = *v15;
                  goto LABEL_3221;
                case 0x18:
                  if (v20)
                  {
                    continue;
                  }

                  v517 = (*(v15 + 80) - 1);
                  *(v15 + 80) = v517;
                  v381 = *(v15 + 8);
                  goto LABEL_2903;
                case 0x19:
                  if (v20)
                  {
                    continue;
                  }

                  v962 = *(v15 + 56);
                  v963 = *(v15 + 60);
                  *(v15 + 56) = v962 + 1;
                  if (v962 >= v963)
                  {
                    goto LABEL_2714;
                  }

                  v964 = *(v15 + 80);
                  if (v964 >= *(a7 + 160))
                  {
                    goto LABEL_2614;
                  }

                  v965 = *v964;
                  if (*(v15 + 64) != v965 && *(v15 + 68) != v965)
                  {
                    goto LABEL_2714;
                  }

                  v12 = 0;
                  *(v15 + 80) = v964 + 1;
                  a2 = *v15;
                  goto LABEL_3207;
                case 0x1A:
                  v68 = (*(v15 + 80) - 1);
                  *(v15 + 80) = v68;
                  if (v20)
                  {
                    continue;
                  }

                  v67 = *(v15 + 8);
                  goto LABEL_2882;
                case 0x1B:
                  if (v20)
                  {
                    continue;
                  }

                  v1009 = *(v15 + 56);
                  v1010 = *(v15 + 60);
                  *(v15 + 56) = v1009 + 1;
                  if (v1009 >= v1010)
                  {
                    goto LABEL_2714;
                  }

                  v964 = *(v15 + 80);
                  if (v964 >= *(a7 + 160))
                  {
                    goto LABEL_2614;
                  }

                  v1011 = *(v15 + 64);
                  *(v15 + 80) = v964 + 1;
                  if (v1011 != *v964)
                  {
                    goto LABEL_2714;
                  }

                  v12 = 0;
                  a2 = *v15;
                  goto LABEL_3224;
                case 0x1C:
                  v77 = (*(v15 + 80) - 1);
                  *(v15 + 80) = v77;
                  if (v20)
                  {
                    continue;
                  }

                  v76 = *(v15 + 8);
                  goto LABEL_2897;
                case 0x1D:
                  if (v20)
                  {
                    continue;
                  }

                  v1006 = *(v15 + 56);
                  v1007 = *(v15 + 60);
                  *(v15 + 56) = v1006 + 1;
                  if (v1006 >= v1007)
                  {
                    goto LABEL_2714;
                  }

                  v964 = *(v15 + 80);
                  if (v964 >= *(a7 + 160))
                  {
                    goto LABEL_2614;
                  }

                  v1008 = *v964;
                  if (*(v15 + 64) == v1008 || *(v15 + 68) == v1008)
                  {
                    goto LABEL_2714;
                  }

                  *(v15 + 80) = v964 + 1;
                  a2 = *v15;
                  goto LABEL_3275;
                case 0x1E:
                  if (v20)
                  {
                    continue;
                  }

                  v316 = (*(v15 + 80) - 1);
                  *(v15 + 80) = v316;
                  v302 = *(v15 + 8);
                  goto LABEL_2929;
                case 0x1F:
                  if (v20)
                  {
                    continue;
                  }

                  v982 = *(v15 + 56);
                  v983 = *(v15 + 60);
                  *(v15 + 56) = v982 + 1;
                  if (v982 >= v983)
                  {
                    goto LABEL_2714;
                  }

                  v964 = *(v15 + 80);
                  if (v964 >= *(a7 + 160))
                  {
                    goto LABEL_2614;
                  }

                  v984 = *(v15 + 64);
                  *(v15 + 80) = v964 + 1;
                  if (v984 == *v964)
                  {
                    goto LABEL_2714;
                  }

                  a2 = *v15;
                  goto LABEL_3225;
                case 0x20:
                  if (v20)
                  {
                    continue;
                  }

                  v313 = (*(v15 + 80) - 1);
                  *(v15 + 80) = v313;
                  v283 = *(v15 + 8);
                  goto LABEL_2927;
                case 0x21:
                  if (v20)
                  {
                    continue;
                  }

                  v985 = *(v15 + 56);
                  v986 = *(v15 + 60);
                  *(v15 + 56) = v985 + 1;
                  if (v985 >= v986)
                  {
                    goto LABEL_2864;
                  }

                  v987 = *(v15 + 80);
                  v988 = *(a7 + 160);
                  if (v987 >= v988)
                  {
                    goto LABEL_2828;
                  }

                  v989 = *(v15 + 64);
                  if (v989 != 12)
                  {
                    goto LABEL_2561;
                  }

                  v990 = *(a7 + 244);
                  if (v990)
                  {
                    if (_pcre2_is_newline_8(*(v15 + 80), v990, v988, (a7 + 248), v1243))
                    {
                      goto LABEL_2864;
                    }

                    v989 = *(v15 + 64);
                    v987 = *(v15 + 80);
LABEL_2561:
                    *(v15 + 80) = v987 + 1;
                    v19 = 4294967252;
                    v991 = v989 - 6;
                    v992 = *v987;
                    switch(v991)
                    {
                      case 0:
                        if ((*(*(a7 + 104) + *v987) & 4) == 0)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 1:
                        if ((*(*(a7 + 104) + *v987) & 4) != 0)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 2:
                        if ((*(*(a7 + 104) + *v987) & 1) == 0)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 3:
                        if (*(*(a7 + 104) + *v987))
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 4:
                        if ((*(*(a7 + 104) + *v987) & 0x10) == 0)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 5:
                        if ((*(*(a7 + 104) + *v987) & 0x10) != 0)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 6:
                        v1219 = v987 + 1;
                        goto LABEL_3279;
                      case 7:
                      case 8:
                        goto LABEL_3339;
                      case 11:
                        v20 = 0;
                        if (*v987 > 0xCu)
                        {
                          if (v992 != 133)
                          {
                            if (v992 != 13)
                            {
                              continue;
                            }

                            if ((v987 + 1) < *(a7 + 160) && v987[1] == 10)
                            {
                              *(v15 + 80) = v987 + 2;
                            }

                            goto LABEL_3339;
                          }
                        }

                        else if ((v992 - 11) >= 2)
                        {
                          if (v992 != 10)
                          {
                            continue;
                          }

                          goto LABEL_3339;
                        }

                        if (*(a7 + 130) == 2)
                        {
                          goto LABEL_2864;
                        }

                        goto LABEL_3339;
                      case 12:
                        v20 = 0;
                        if (v992 != 9 && v992 != 32 && v992 != 160)
                        {
                          goto LABEL_3339;
                        }

                        continue;
                      case 13:
                        if (v992 == 9 || v992 == 32 || v992 == 160)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      case 14:
                        v20 = 0;
                        if ((v992 - 10) >= 4 && v992 != 133)
                        {
                          goto LABEL_3339;
                        }

                        continue;
                      case 15:
                        if ((v992 - 10) < 4 || v992 == 133)
                        {
                          goto LABEL_3339;
                        }

                        goto LABEL_2864;
                      default:
                        return v19;
                    }
                  }

                  v1132 = *(a7 + 248);
                  if (v987 <= v988 - v1132 && *v987 == *(a7 + 252) && (v1132 == 1 || v987[1] == *(a7 + 253)))
                  {
                    goto LABEL_2864;
                  }

                  v1219 = v987 + 1;
                  *(v15 + 80) = v987 + 1;
                  v992 = *v987;
LABEL_3279:
                  v1220 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    if (v1219 >= *(a7 + 160) && !*(a7 + 244) && *(a7 + 248) == 2 && v992 == *(a7 + 252))
                    {
                      *(a7 + 76) = 1;
                      if (v1220 != 1)
                      {
                        return 4294967294;
                      }
                    }
                  }

                  goto LABEL_3339;
                case 0x22:
                  if (v20)
                  {
                    continue;
                  }

                  v1098 = *(v15 + 80);
                  v889 = v1098 - 1;
                  *(v15 + 80) = v1098 - 1;
                  if (*(v15 + 64) == 17 && v889 > *(v15 + 8) && *v889 == 10)
                  {
                    v1100 = *(v1098 - 2);
                    v1099 = v1098 - 2;
                    if (v1100 == 13)
                    {
                      *(v15 + 80) = v1099;
                      v889 = v1099;
                    }
                  }

                  goto LABEL_2889;
                case 0x23:
                  continue;
                default:
                  return v19;
              }
            }

            break;
          }

          switch(*(v15 + 72))
          {
            case 0xC8:
              if (v20)
              {
                continue;
              }

              v954 = *(v15 + 56);
              v955 = *(v15 + 60);
              *(v15 + 56) = v954 + 1;
              if (v954 >= v955)
              {
                goto LABEL_2714;
              }

              v956 = *(v15 + 80);
              if (v956 >= *(a7 + 160))
              {
                goto LABEL_2628;
              }

              *(v15 + 80) = v956 + 1;
              v957 = *v956;
              if (v957 < 0xC0 || ((v957 & 0x20) != 0 ? ((v1023 = v956[1] & 0x3F, (v957 & 0x10) != 0) ? ((v957 & 8) != 0 ? ((v1039 = v956[2] & 0x3F, v1040 = v956[3] & 0x3F, v1041 = v956[4] & 0x3F, (v957 & 4) != 0) ? (v957 = ((v957 & 1) << 30) | (v1023 << 24) | (v1039 << 18) | (v1040 << 12) | (v1041 << 6) | v956[5] & 0x3F, v1024 = v956 + 6) : (v957 = ((v957 & 3) << 24) | (v1023 << 18) | (v1039 << 12) | (v1040 << 6) | v1041, v1024 = v956 + 5)) : (v957 = ((v957 & 7) << 18) | (v1023 << 12) | ((v956[2] & 0x3F) << 6) | v956[3] & 0x3F, v1024 = v956 + 4)) : (v957 = ((v957 & 0xF) << 12) | (v1023 << 6) | v956[2] & 0x3F, v1024 = v956 + 3), *(v15 + 80) = v1024) : (*(v15 + 80) = v956 + 2, v957 = v956[1] & 0x3F | ((v957 & 0x1F) << 6)), v957 < 0x100))
              {
                if ((*(*(v15 + 16) + (v957 >> 3)) >> (v957 & 7)))
                {
                  goto LABEL_3227;
                }
              }

              else if (*(v15 + 73) != 110)
              {
LABEL_3227:
                v12 = 0;
                a2 = *v15;
                v1207 = -56;
                goto LABEL_3173;
              }

              goto LABEL_2714;
            case 0xC9:
              if (v20)
              {
                continue;
              }

              v978 = *(v15 + 80);
              *(v15 + 80) = v978 - 1;
              if (v978 <= *(v15 + 8))
              {
                continue;
              }

              if ((*(v978 - 1) & 0xC0) == 0x80)
              {
                v1221 = v978 - 2;
                do
                {
                  *(v15 + 80) = v1221;
                  v1222 = *v1221--;
                }

                while ((v1222 & 0xC0) == 0x80);
              }

              goto LABEL_3296;
            case 0xCA:
              if (v20)
              {
                continue;
              }

              v971 = *(v15 + 56);
              v972 = *(v15 + 60);
              *(v15 + 56) = v971 + 1;
              if (v971 >= v972)
              {
                goto LABEL_2714;
              }

              v973 = *(v15 + 80);
              v974 = *(v15 + 24);
              if (v973 > *(a7 + 160) - v974 || cstdlib_memcmp(v973, *(v15 + 16), v974))
              {
                v975 = *(v15 + 40);
                if (!v975 || (v976 = *(v15 + 80), v976 > *(a7 + 160) - v975) || cstdlib_memcmp(v976, (v15 + 74), v975))
                {
                  v977 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    v956 = *(v15 + 80);
                    if (v956 >= *(a7 + 160))
                    {
LABEL_2629:
                      if (v956 > *(a7 + 176))
                      {
                        *(a7 + 76) = 1;
                        if (v977 != 1)
                        {
                          return 4294967294;
                        }
                      }
                    }
                  }

LABEL_2714:
                  v20 = 0;
                  continue;
                }

                v1208 = 40;
              }

              else
              {
                v1208 = 24;
              }

              *(v15 + 80) += *(v15 + v1208);
              goto LABEL_3271;
            case 0xCB:
              if (v20)
              {
                continue;
              }

              v1102 = (*(v15 + 80) - 1);
              do
              {
                *(v15 + 80) = v1102;
                v1103 = *v1102--;
              }

              while ((v1103 & 0xC0) == 0x80);
              v428 = v1102 + 1;
              goto LABEL_2895;
            case 0xCC:
              if (v20)
              {
                continue;
              }

              v959 = *(v15 + 56);
              v960 = *(v15 + 60);
              *(v15 + 56) = v959 + 1;
              if (v959 >= v960)
              {
                goto LABEL_2714;
              }

              v956 = *(v15 + 80);
              if (v956 >= *(a7 + 160))
              {
                goto LABEL_2628;
              }

              *(v15 + 80) = v956 + 1;
              v961 = *v956;
              if (v961 >= 0xC0)
              {
                if ((v961 & 0x20) != 0)
                {
                  v1019 = v956[1] & 0x3F;
                  if ((v961 & 0x10) != 0)
                  {
                    if ((v961 & 8) != 0)
                    {
                      v1033 = v956[2] & 0x3F;
                      v1034 = v956[3] & 0x3F;
                      v1035 = v956[4] & 0x3F;
                      if ((v961 & 4) != 0)
                      {
                        v961 = ((v961 & 1) << 30) | (v1019 << 24) | (v1033 << 18) | (v1034 << 12) | (v1035 << 6) | v956[5] & 0x3F;
                        v1020 = v956 + 6;
                      }

                      else
                      {
                        v961 = ((v961 & 3) << 24) | (v1019 << 18) | (v1033 << 12) | (v1034 << 6) | v1035;
                        v1020 = v956 + 5;
                      }
                    }

                    else
                    {
                      v961 = ((v961 & 7) << 18) | (v1019 << 12) | ((v956[2] & 0x3F) << 6) | v956[3] & 0x3F;
                      v1020 = v956 + 4;
                    }
                  }

                  else
                  {
                    v961 = ((v961 & 0xF) << 12) | (v1019 << 6) | v956[2] & 0x3F;
                    v1020 = v956 + 3;
                  }

                  *(v15 + 80) = v1020;
                }

                else
                {
                  *(v15 + 80) = v956 + 2;
                  v961 = v956[1] & 0x3F | ((v961 & 0x1F) << 6);
                }
              }

              if (*(v15 + 64) == v961 || *(v15 + 68) == v961)
              {
                goto LABEL_2714;
              }

              v12 = 0;
              a2 = *v15;
              v1207 = -52;
              goto LABEL_3173;
            case 0xCD:
              if (v20)
              {
                continue;
              }

              v1109 = (*(v15 + 80) - 1);
              do
              {
                *(v15 + 80) = v1109;
                v1110 = *v1109--;
              }

              while ((v1110 & 0xC0) == 0x80);
              v302 = *(v15 + 8);
              v303 = v1109 + 1;
              goto LABEL_2914;
            case 0xCE:
              if (v20)
              {
                continue;
              }

              v993 = *(v15 + 56);
              v994 = *(v15 + 60);
              *(v15 + 56) = v993 + 1;
              if (v993 >= v994)
              {
                goto LABEL_2714;
              }

              v956 = *(v15 + 80);
              if (v956 >= *(a7 + 160))
              {
                goto LABEL_2628;
              }

              *(v15 + 80) = v956 + 1;
              v995 = *v956;
              if (v995 >= 0xC0)
              {
                if ((v995 & 0x20) != 0)
                {
                  v1025 = v956[1] & 0x3F;
                  if ((v995 & 0x10) != 0)
                  {
                    if ((v995 & 8) != 0)
                    {
                      v1042 = v956[2] & 0x3F;
                      v1043 = v956[3] & 0x3F;
                      v1044 = v956[4] & 0x3F;
                      if ((v995 & 4) != 0)
                      {
                        v995 = ((v995 & 1) << 30) | (v1025 << 24) | (v1042 << 18) | (v1043 << 12) | (v1044 << 6) | v956[5] & 0x3F;
                        v1026 = v956 + 6;
                      }

                      else
                      {
                        v995 = ((v995 & 3) << 24) | (v1025 << 18) | (v1042 << 12) | (v1043 << 6) | v1044;
                        v1026 = v956 + 5;
                      }
                    }

                    else
                    {
                      v995 = ((v995 & 7) << 18) | (v1025 << 12) | ((v956[2] & 0x3F) << 6) | v956[3] & 0x3F;
                      v1026 = v956 + 4;
                    }
                  }

                  else
                  {
                    v995 = ((v995 & 0xF) << 12) | (v1025 << 6) | v956[2] & 0x3F;
                    v1026 = v956 + 3;
                  }

                  *(v15 + 80) = v1026;
                }

                else
                {
                  *(v15 + 80) = v956 + 2;
                  v995 = v956[1] & 0x3F | ((v995 & 0x1F) << 6);
                }
              }

              if (*(v15 + 64) == v995)
              {
                goto LABEL_2714;
              }

              v12 = 0;
              a2 = *v15;
              v1207 = -50;
              goto LABEL_3173;
            case 0xCF:
              if (v20)
              {
                continue;
              }

              v1104 = (*(v15 + 80) - 1);
              do
              {
                *(v15 + 80) = v1104;
                v1105 = *v1104--;
              }

              while ((v1105 & 0xC0) == 0x80);
              v283 = *(v15 + 8);
              v284 = v1104 + 1;
              goto LABEL_2901;
            case 0xD0:
              if (v20)
              {
                continue;
              }

              v996 = *(v15 + 56);
              v997 = *(v15 + 60);
              *(v15 + 56) = v996 + 1;
              if (v996 >= v997)
              {
                goto LABEL_2714;
              }

              v964 = *(v15 + 80);
              if (v964 >= *(a7 + 160))
              {
                goto LABEL_2614;
              }

              *(v15 + 80) = v964 + 1;
              if (v1244)
              {
                v998 = *v964;
                if (v998 >= 0xC0)
                {
                  if ((v998 & 0x20) != 0)
                  {
                    v1027 = 4;
                    v1028 = 5;
                    if ((v998 & 4) != 0)
                    {
                      v1028 = 6;
                    }

                    if ((v998 & 8) != 0)
                    {
                      v1027 = v1028;
                    }

                    if ((v998 & 0x10) != 0)
                    {
                      v999 = v1027;
                    }

                    else
                    {
                      v999 = 3;
                    }
                  }

                  else
                  {
                    v999 = 2;
                  }

                  *(v15 + 80) = &v964[v999];
                }
              }

              if (*(v15 + 64) != 15)
              {
                goto LABEL_3312;
              }

              goto LABEL_2714;
            case 0xD1:
              if (v20)
              {
                continue;
              }

              v969 = *(v15 + 56);
              v970 = *(v15 + 60);
              *(v15 + 56) = v969 + 1;
              if (v969 >= v970)
              {
                goto LABEL_2714;
              }

              v956 = *(v15 + 80);
              if (v956 < *(a7 + 160))
              {
                *(v15 + 80) = v956 + 1;
                v1090 = *v956;
                if (v1244 && v1090 >= 0xC0)
                {
                  if ((v1090 & 0x20) != 0)
                  {
                    v1114 = v956[1] & 0x3F;
                    if ((v1090 & 0x10) != 0)
                    {
                      if ((v1090 & 8) != 0)
                      {
                        v1134 = v956[2] & 0x3F;
                        v1135 = v956[3] & 0x3F;
                        v1136 = v956[4] & 0x3F;
                        if ((v1090 & 4) != 0)
                        {
                          v1090 = ((v1090 & 1) << 30) | (v1114 << 24) | (v1134 << 18) | (v1135 << 12) | (v1136 << 6) | v956[5] & 0x3F;
                          v1115 = v956 + 6;
                        }

                        else
                        {
                          v1090 = ((v1090 & 3) << 24) | (v1114 << 18) | (v1134 << 12) | (v1135 << 6) | v1136;
                          v1115 = v956 + 5;
                        }
                      }

                      else
                      {
                        v1090 = ((v1090 & 7) << 18) | (v1114 << 12) | ((v956[2] & 0x3F) << 6) | v956[3] & 0x3F;
                        v1115 = v956 + 4;
                      }
                    }

                    else
                    {
                      v1090 = ((v1090 & 0xF) << 12) | (v1114 << 6) | v956[2] & 0x3F;
                      v1115 = v956 + 3;
                    }

                    *(v15 + 80) = v1115;
                  }

                  else
                  {
                    *(v15 + 80) = v956 + 2;
                    v1090 = v956[1] & 0x3F | ((v1090 & 0x1F) << 6);
                  }
                }

                v1163 = BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1090 & 0x7F | (_pcre2_ucd_stage1_8[v1090 >> 7] << 7)]]);
                v1165 = v1163 == 5 || v1163 == 9 || v1163 == 8;
                if (v1165 == (*(v15 + 64) == 15))
                {
                  goto LABEL_2864;
                }

                goto LABEL_3220;
              }

LABEL_2628:
              v977 = *(a7 + 128);
              if (*(a7 + 128))
              {
                goto LABEL_2629;
              }

              goto LABEL_2714;
            case 0xD2:
              if (v20)
              {
                continue;
              }

              v1083 = *(v15 + 56);
              v1084 = *(v15 + 60);
              *(v15 + 56) = v1083 + 1;
              if (v1083 >= v1084)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1085 = *v1059;
              if (v1244 && v1085 >= 0xC0)
              {
                if ((v1085 & 0x20) != 0)
                {
                  v1128 = v1059[1] & 0x3F;
                  if ((v1085 & 0x10) != 0)
                  {
                    if ((v1085 & 8) != 0)
                    {
                      v1155 = v1059[2] & 0x3F;
                      v1156 = v1059[3] & 0x3F;
                      v1157 = v1059[4] & 0x3F;
                      if ((v1085 & 4) != 0)
                      {
                        v1085 = ((v1085 & 1) << 30) | (v1128 << 24) | (v1155 << 18) | (v1156 << 12) | (v1157 << 6) | v1059[5] & 0x3F;
                        v1129 = v1059 + 6;
                      }

                      else
                      {
                        v1085 = ((v1085 & 3) << 24) | (v1128 << 18) | (v1155 << 12) | (v1156 << 6) | v1157;
                        v1129 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1085 = ((v1085 & 7) << 18) | (v1128 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1129 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1085 = ((v1085 & 0xF) << 12) | (v1128 << 6) | v1059[2] & 0x3F;
                    v1129 = v1059 + 3;
                  }

                  *(v15 + 80) = v1129;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1085 = v1059[1] & 0x3F | ((v1085 & 0x1F) << 6);
                }
              }

              if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1085 & 0x7F | (_pcre2_ucd_stage1_8[v1085 >> 7] << 7)]])] == *(v15 + 68)) == (*(v15 + 64) != 15))
              {
                goto LABEL_3193;
              }

              goto LABEL_2864;
            case 0xD3:
              if (v20)
              {
                continue;
              }

              v1064 = *(v15 + 56);
              v1065 = *(v15 + 60);
              *(v15 + 56) = v1064 + 1;
              if (v1064 >= v1065)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1066 = *v1059;
              if (v1244 && v1066 >= 0xC0)
              {
                if ((v1066 & 0x20) != 0)
                {
                  v1120 = v1059[1] & 0x3F;
                  if ((v1066 & 0x10) != 0)
                  {
                    if ((v1066 & 8) != 0)
                    {
                      v1143 = v1059[2] & 0x3F;
                      v1144 = v1059[3] & 0x3F;
                      v1145 = v1059[4] & 0x3F;
                      if ((v1066 & 4) != 0)
                      {
                        v1066 = ((v1066 & 1) << 30) | (v1120 << 24) | (v1143 << 18) | (v1144 << 12) | (v1145 << 6) | v1059[5] & 0x3F;
                        v1121 = v1059 + 6;
                      }

                      else
                      {
                        v1066 = ((v1066 & 3) << 24) | (v1120 << 18) | (v1143 << 12) | (v1144 << 6) | v1145;
                        v1121 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1066 = ((v1066 & 7) << 18) | (v1120 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1121 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1066 = ((v1066 & 0xF) << 12) | (v1120 << 6) | v1059[2] & 0x3F;
                    v1121 = v1059 + 3;
                  }

                  *(v15 + 80) = v1121;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1066 = v1059[1] & 0x3F | ((v1066 & 0x1F) << 6);
                }
              }

              if ((*(v15 + 68) == BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1066 & 0x7F | (_pcre2_ucd_stage1_8[v1066 >> 7] << 7)]])) == (*(v15 + 64) != 15))
              {
                goto LABEL_3289;
              }

              goto LABEL_2864;
            case 0xD4:
              if (v20)
              {
                continue;
              }

              v1057 = *(v15 + 56);
              v1058 = *(v15 + 60);
              *(v15 + 56) = v1057 + 1;
              if (v1057 >= v1058)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1060 = *v1059;
              if (v1244 && v1060 >= 0xC0)
              {
                if ((v1060 & 0x20) != 0)
                {
                  v1116 = v1059[1] & 0x3F;
                  if ((v1060 & 0x10) != 0)
                  {
                    if ((v1060 & 8) != 0)
                    {
                      v1137 = v1059[2] & 0x3F;
                      v1138 = v1059[3] & 0x3F;
                      v1139 = v1059[4] & 0x3F;
                      if ((v1060 & 4) != 0)
                      {
                        v1060 = ((v1060 & 1) << 30) | (v1116 << 24) | (v1137 << 18) | (v1138 << 12) | (v1139 << 6) | v1059[5] & 0x3F;
                        v1117 = v1059 + 6;
                      }

                      else
                      {
                        v1060 = ((v1060 & 3) << 24) | (v1116 << 18) | (v1137 << 12) | (v1138 << 6) | v1139;
                        v1117 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1060 = ((v1060 & 7) << 18) | (v1116 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1117 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1060 = ((v1060 & 0xF) << 12) | (v1116 << 6) | v1059[2] & 0x3F;
                    v1117 = v1059 + 3;
                  }

                  *(v15 + 80) = v1117;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1060 = v1059[1] & 0x3F | ((v1060 & 0x1F) << 6);
                }
              }

              if ((*(v15 + 68) == LOBYTE(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1060 & 0x7F | (_pcre2_ucd_stage1_8[v1060 >> 7] << 7)]])) == (*(v15 + 64) != 15))
              {
                goto LABEL_3290;
              }

              goto LABEL_2864;
            case 0xD5:
              if (v20)
              {
                continue;
              }

              v1073 = *(v15 + 56);
              v1074 = *(v15 + 60);
              *(v15 + 56) = v1073 + 1;
              if (v1073 >= v1074)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1075 = *v1059;
              if (v1244 && v1075 >= 0xC0)
              {
                if ((v1075 & 0x20) != 0)
                {
                  v1126 = v1059[1] & 0x3F;
                  if ((v1075 & 0x10) != 0)
                  {
                    if ((v1075 & 8) != 0)
                    {
                      v1152 = v1059[2] & 0x3F;
                      v1153 = v1059[3] & 0x3F;
                      v1154 = v1059[4] & 0x3F;
                      if ((v1075 & 4) != 0)
                      {
                        v1075 = ((v1075 & 1) << 30) | (v1126 << 24) | (v1152 << 18) | (v1153 << 12) | (v1154 << 6) | v1059[5] & 0x3F;
                        v1127 = v1059 + 6;
                      }

                      else
                      {
                        v1075 = ((v1075 & 3) << 24) | (v1126 << 18) | (v1152 << 12) | (v1153 << 6) | v1154;
                        v1127 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1075 = ((v1075 & 7) << 18) | (v1126 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1127 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1075 = ((v1075 & 0xF) << 12) | (v1126 << 6) | v1059[2] & 0x3F;
                    v1127 = v1059 + 3;
                  }

                  *(v15 + 80) = v1127;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1075 = v1059[1] & 0x3F | ((v1075 & 0x1F) << 6);
                }
              }

              if (((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1075 & 0x7F | (_pcre2_ucd_stage1_8[v1075 >> 7] << 7)]])] & 0xFFFFFFFD) == 1) == (*(v15 + 64) != 15))
              {
                goto LABEL_3288;
              }

              goto LABEL_2864;
            case 0xD6:
              if (v20)
              {
                continue;
              }

              v1061 = *(v15 + 56);
              v1062 = *(v15 + 60);
              *(v15 + 56) = v1061 + 1;
              if (v1061 >= v1062)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1063 = *v1059;
              if (v1244 && v1063 >= 0xC0)
              {
                if ((v1063 & 0x20) != 0)
                {
                  v1118 = v1059[1] & 0x3F;
                  if ((v1063 & 0x10) != 0)
                  {
                    if ((v1063 & 8) != 0)
                    {
                      v1140 = v1059[2] & 0x3F;
                      v1141 = v1059[3] & 0x3F;
                      v1142 = v1059[4] & 0x3F;
                      if ((v1063 & 4) != 0)
                      {
                        v1063 = ((v1063 & 1) << 30) | (v1118 << 24) | (v1140 << 18) | (v1141 << 12) | (v1142 << 6) | v1059[5] & 0x3F;
                        v1119 = v1059 + 6;
                      }

                      else
                      {
                        v1063 = ((v1063 & 3) << 24) | (v1118 << 18) | (v1140 << 12) | (v1141 << 6) | v1142;
                        v1119 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1063 = ((v1063 & 7) << 18) | (v1118 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1119 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1063 = ((v1063 & 0xF) << 12) | (v1118 << 6) | v1059[2] & 0x3F;
                    v1119 = v1059 + 3;
                  }

                  *(v15 + 80) = v1119;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1063 = v1059[1] & 0x3F | ((v1063 & 0x1F) << 6);
                }
              }

              if (v1063 >= 0x2000)
              {
                if ((v1063 - 0x2000) >= 0xB)
                {
                  v1166 = (v1063 - 8232) > 0x37 || ((1 << (v1063 - 40)) & 0x80000000000083) == 0;
                  if (v1166 && v1063 != 12288)
                  {
                    goto LABEL_3094;
                  }
                }

LABEL_3101:
                if (*(v15 + 64) == 15)
                {
                  goto LABEL_2864;
                }

                goto LABEL_3233;
              }

              if (v1063 > 132)
              {
                if (v1063 <= 5759)
                {
                  if (v1063 != 133 && v1063 != 160)
                  {
                    goto LABEL_3094;
                  }

                  goto LABEL_3101;
                }

                if (v1063 == 5760 || v1063 == 6158)
                {
                  goto LABEL_3101;
                }
              }

              else if (v1063 <= 0x20 && ((1 << v1063) & 0x100003E00) != 0)
              {
                goto LABEL_3101;
              }

LABEL_3094:
              if ((_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1063 & 0x7F | (_pcre2_ucd_stage1_8[v1063 >> 7] << 7)]])] == 6) != (*(v15 + 64) != 15))
              {
                goto LABEL_2864;
              }

              goto LABEL_3233;
            case 0xD7:
              if (v20)
              {
                continue;
              }

              v1067 = *(v15 + 56);
              v1068 = *(v15 + 60);
              *(v15 + 56) = v1067 + 1;
              if (v1067 >= v1068)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1069 = *v1059;
              if (v1244 && v1069 >= 0xC0)
              {
                if ((v1069 & 0x20) != 0)
                {
                  v1122 = v1059[1] & 0x3F;
                  if ((v1069 & 0x10) != 0)
                  {
                    if ((v1069 & 8) != 0)
                    {
                      v1146 = v1059[2] & 0x3F;
                      v1147 = v1059[3] & 0x3F;
                      v1148 = v1059[4] & 0x3F;
                      if ((v1069 & 4) != 0)
                      {
                        v1069 = ((v1069 & 1) << 30) | (v1122 << 24) | (v1146 << 18) | (v1147 << 12) | (v1148 << 6) | v1059[5] & 0x3F;
                        v1123 = v1059 + 6;
                      }

                      else
                      {
                        v1069 = ((v1069 & 3) << 24) | (v1122 << 18) | (v1146 << 12) | (v1147 << 6) | v1148;
                        v1123 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1069 = ((v1069 & 7) << 18) | (v1122 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1123 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1069 = ((v1069 & 0xF) << 12) | (v1122 << 6) | v1059[2] & 0x3F;
                    v1123 = v1059 + 3;
                  }

                  *(v15 + 80) = v1123;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1069 = v1059[1] & 0x3F | ((v1069 & 0x1F) << 6);
                }
              }

              v1170 = v1069 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1069 & 0x7F | (_pcre2_ucd_stage1_8[v1069 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
              if ((((*(v15 + 64) != 15) ^ v1170) & 1) == 0)
              {
                goto LABEL_3310;
              }

              goto LABEL_2864;
            case 0xD8:
              if (v20)
              {
                continue;
              }

              v1070 = *(v15 + 56);
              v1071 = *(v15 + 60);
              *(v15 + 56) = v1070 + 1;
              if (v1070 >= v1071)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
                goto LABEL_2844;
              }

              *(v15 + 80) = v1059 + 1;
              v1072 = *v1059;
              if (v1244 && v1072 >= 0xC0)
              {
                if ((v1072 & 0x20) != 0)
                {
                  v1124 = v1059[1] & 0x3F;
                  if ((v1072 & 0x10) != 0)
                  {
                    if ((v1072 & 8) != 0)
                    {
                      v1149 = v1059[2] & 0x3F;
                      v1150 = v1059[3] & 0x3F;
                      v1151 = v1059[4] & 0x3F;
                      if ((v1072 & 4) != 0)
                      {
                        v1072 = ((v1072 & 1) << 30) | (v1124 << 24) | (v1149 << 18) | (v1150 << 12) | (v1151 << 6) | v1059[5] & 0x3F;
                        v1125 = v1059 + 6;
                      }

                      else
                      {
                        v1072 = ((v1072 & 3) << 24) | (v1124 << 18) | (v1149 << 12) | (v1150 << 6) | v1151;
                        v1125 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1072 = ((v1072 & 7) << 18) | (v1124 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1125 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1072 = ((v1072 & 0xF) << 12) | (v1124 << 6) | v1059[2] & 0x3F;
                    v1125 = v1059 + 3;
                  }

                  *(v15 + 80) = v1125;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1072 = v1059[1] & 0x3F | ((v1072 & 0x1F) << 6);
                }
              }

              v1171 = &_pcre2_ucd_caseless_sets_8[*(v15 + 68)];
              do
              {
                v1172 = *v1171;
                if (v1072 < *v1171)
                {
                  if (*(v15 + 64) != 15)
                  {
                    goto LABEL_2864;
                  }

LABEL_3302:
                  v12 = 0;
                  a2 = *v15;
                  v1207 = -40;
                  goto LABEL_3173;
                }

                ++v1171;
              }

              while (v1072 != v1172);
              if (*(v15 + 64) != 15)
              {
                goto LABEL_3302;
              }

LABEL_2864:
              v20 = 0;
              continue;
            case 0xD9:
              if (v20)
              {
                continue;
              }

              v1086 = *(v15 + 56);
              v1087 = *(v15 + 60);
              *(v15 + 56) = v1086 + 1;
              if (v1086 >= v1087)
              {
                goto LABEL_2864;
              }

              v1059 = *(v15 + 80);
              if (v1059 >= *(a7 + 160))
              {
LABEL_2844:
                v487 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  goto LABEL_2864;
                }

LABEL_2845:
                if (v1059 <= *(a7 + 176))
                {
                  goto LABEL_2864;
                }

LABEL_2863:
                *(a7 + 76) = 1;
                if (v487 == 1)
                {
                  goto LABEL_2864;
                }

                return 4294967294;
              }

              *(v15 + 80) = v1059 + 1;
              v1088 = *v1059;
              if (v1244 && v1088 >= 0xC0)
              {
                if ((v1088 & 0x20) != 0)
                {
                  v1130 = v1059[1] & 0x3F;
                  if ((v1088 & 0x10) != 0)
                  {
                    if ((v1088 & 8) != 0)
                    {
                      v1158 = v1059[2] & 0x3F;
                      v1159 = v1059[3] & 0x3F;
                      v1160 = v1059[4] & 0x3F;
                      if ((v1088 & 4) != 0)
                      {
                        v1088 = ((v1088 & 1) << 30) | (v1130 << 24) | (v1158 << 18) | (v1159 << 12) | (v1160 << 6) | v1059[5] & 0x3F;
                        v1131 = v1059 + 6;
                      }

                      else
                      {
                        v1088 = ((v1088 & 3) << 24) | (v1130 << 18) | (v1158 << 12) | (v1159 << 6) | v1160;
                        v1131 = v1059 + 5;
                      }
                    }

                    else
                    {
                      v1088 = ((v1088 & 7) << 18) | (v1130 << 12) | ((v1059[2] & 0x3F) << 6) | v1059[3] & 0x3F;
                      v1131 = v1059 + 4;
                    }
                  }

                  else
                  {
                    v1088 = ((v1088 & 0xF) << 12) | (v1130 << 6) | v1059[2] & 0x3F;
                    v1131 = v1059 + 3;
                  }

                  *(v15 + 80) = v1131;
                }

                else
                {
                  *(v15 + 80) = v1059 + 2;
                  v1088 = v1059[1] & 0x3F | ((v1088 & 0x1F) << 6);
                }
              }

              if (v1088 - 36 > 0x3C || ((1 << (v1088 - 36)) & 0x1000000010000001) == 0)
              {
                v1175 = (v1088 - 160) >> 5;
                v1174 = v1088 >> 13 > 6;
                if (v1175 < 0x6BB)
                {
                  v1174 = 1;
                }
              }

              else
              {
                v1174 = 1;
              }

              if (v1174 == (*(v15 + 64) == 15))
              {
                goto LABEL_2864;
              }

              goto LABEL_3301;
            case 0xDA:
              if (v20)
              {
                continue;
              }

              v1079 = *(v15 + 56);
              v1080 = *(v15 + 60);
              *(v15 + 56) = v1079 + 1;
              if (v1079 >= v1080)
              {
                goto LABEL_2864;
              }

              v987 = *(v15 + 80);
              v1081 = *(a7 + 160);
              if (v987 >= v1081)
              {
LABEL_2828:
                v1082 = *(a7 + 128);
                if (!*(a7 + 128))
                {
                  goto LABEL_2864;
                }

                if (v987 <= *(a7 + 176))
                {
                  goto LABEL_2864;
                }

                *(a7 + 76) = 1;
                if (v1082 == 1)
                {
                  goto LABEL_2864;
                }

                return 4294967294;
              }

              v1203 = v987 + 1;
              *(v15 + 80) = v987 + 1;
              v1204 = *v987;
              if (v1244 && v1204 >= 0xC0)
              {
                if ((v1204 & 0x20) != 0)
                {
                  v1218 = *v1203 & 0x3F;
                  if ((v1204 & 0x10) != 0)
                  {
                    if ((v1204 & 8) != 0)
                    {
                      v1226 = v987[2] & 0x3F;
                      v1227 = v987[3] & 0x3F;
                      v1228 = v987[4] & 0x3F;
                      if ((v1204 & 4) != 0)
                      {
                        v1204 = ((v1204 & 1) << 30) | (v1218 << 24) | (v1226 << 18) | (v1227 << 12) | (v1228 << 6) | v987[5] & 0x3F;
                        v1203 = v987 + 6;
                      }

                      else
                      {
                        v1204 = ((v1204 & 3) << 24) | (v1218 << 18) | (v1226 << 12) | (v1227 << 6) | v1228;
                        v1203 = v987 + 5;
                      }
                    }

                    else
                    {
                      v1204 = ((v1204 & 7) << 18) | (v1218 << 12) | ((v987[2] & 0x3F) << 6) | v987[3] & 0x3F;
                      v1203 = v987 + 4;
                    }
                  }

                  else
                  {
                    v1204 = ((v1204 & 0xF) << 12) | (v1218 << 6) | v987[2] & 0x3F;
                    v1203 = v987 + 3;
                  }

                  *(v15 + 80) = v1203;
                }

                else
                {
                  v1203 = v987 + 2;
                  *(v15 + 80) = v987 + 2;
                  v1204 = v987[1] & 0x3F | ((v1204 & 0x1F) << 6);
                }
              }

              v1230 = _pcre2_extuni_8(v1204, v1203, *(a7 + 152), v1081, v1243, 0);
              *(v15 + 80) = v1230;
              v1231 = *(a7 + 128);
              if (*(a7 + 128))
              {
                if (v1230 >= *(a7 + 160) && v1230 > *(a7 + 176))
                {
                  *(a7 + 76) = 1;
                  if (v1231 != 1)
                  {
                    return 4294967294;
                  }
                }
              }

              goto LABEL_3334;
            case 0xDB:
              if (v20)
              {
                continue;
              }

              v1002 = *(v15 + 56);
              v1003 = *(v15 + 60);
              *(v15 + 56) = v1002 + 1;
              if (v1002 >= v1003)
              {
                goto LABEL_2864;
              }

              v188 = *(v15 + 80);
              v1004 = *(a7 + 160);
              if (v188 >= v1004)
              {
                goto LABEL_2861;
              }

              if (*(v15 + 64) != 12)
              {
                goto LABEL_2663;
              }

              v1005 = *(a7 + 244);
              if (v1005)
              {
                if (_pcre2_is_newline_8(v188, v1005, v1004, (a7 + 248), v1243))
                {
                  goto LABEL_2864;
                }

                v188 = *(v15 + 80);
              }

              else
              {
                v1029 = *(a7 + 248);
                if (v188 <= v1004 - v1029 && *v188 == *(a7 + 252) && (v1029 == 1 || v188[1] == *(a7 + 253)))
                {
                  goto LABEL_2864;
                }
              }

LABEL_2663:
              v1030 = v188 + 1;
              *(v15 + 80) = v188 + 1;
              v1031 = *v188;
              if (v1031 >= 0xC0)
              {
                if ((v1031 & 0x20) != 0)
                {
                  v1032 = *v1030 & 0x3F;
                  if ((v1031 & 0x10) != 0)
                  {
                    if ((v1031 & 8) != 0)
                    {
                      v1045 = v188[2] & 0x3F;
                      v1046 = v188[3] & 0x3F;
                      v1047 = v188[4] & 0x3F;
                      if ((v1031 & 4) != 0)
                      {
                        v1031 = ((v1031 & 1) << 30) | (v1032 << 24) | (v1045 << 18) | (v1046 << 12) | (v1047 << 6) | v188[5] & 0x3F;
                        v1030 = v188 + 6;
                      }

                      else
                      {
                        v1031 = ((v1031 & 3) << 24) | (v1032 << 18) | (v1045 << 12) | (v1046 << 6) | v1047;
                        v1030 = v188 + 5;
                      }
                    }

                    else
                    {
                      v1031 = ((v1031 & 7) << 18) | (v1032 << 12) | ((v188[2] & 0x3F) << 6) | v188[3] & 0x3F;
                      v1030 = v188 + 4;
                    }
                  }

                  else
                  {
                    v1031 = ((v1031 & 0xF) << 12) | (v1032 << 6) | v188[2] & 0x3F;
                    v1030 = v188 + 3;
                  }

                  *(v15 + 80) = v1030;
                }

                else
                {
                  v1030 = v188 + 2;
                  *(v15 + 80) = v188 + 2;
                  v1031 = v188[1] & 0x3F | ((v1031 & 0x1F) << 6);
                }
              }

              v19 = 4294967252;
              switch(*(v15 + 64))
              {
                case 6:
                  if (v1031 > 0xFF || (*(*(a7 + 104) + v1031) & 4) == 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 7:
                  if (v1031 <= 0xFF && (*(*(a7 + 104) + v1031) & 4) != 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 8:
                  if (v1031 > 0xFF || (*(*(a7 + 104) + v1031) & 1) == 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 9:
                  if (v1031 <= 0xFF && (*(*(a7 + 104) + v1031) & 1) != 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 0xA:
                  if (v1031 > 0xFF || (*(*(a7 + 104) + v1031) & 0x10) == 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 0xB:
                  if (v1031 <= 0xFF && (*(*(a7 + 104) + v1031) & 0x10) != 0)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                case 0xC:
                  v1229 = *(a7 + 128);
                  if (*(a7 + 128))
                  {
                    if (v1030 >= *(a7 + 160) && !*(a7 + 244) && *(a7 + 248) == 2 && v1031 == *(a7 + 252))
                    {
                      *(a7 + 76) = 1;
                      if (v1229 != 1)
                      {
                        return 4294967294;
                      }
                    }
                  }

                  goto LABEL_3277;
                case 0xD:
                case 0xE:
                  goto LABEL_3277;
                case 0x11:
                  v20 = 0;
                  if (v1031 <= 132)
                  {
                    if ((v1031 - 11) >= 2)
                    {
                      if (v1031 != 10)
                      {
                        if (v1031 != 13)
                        {
                          continue;
                        }

                        if (v1030 < *(a7 + 160) && *v1030 == 10)
                        {
                          *(v15 + 80) = v1030 + 1;
                        }
                      }

                      goto LABEL_3277;
                    }
                  }

                  else if ((v1031 - 8232) >= 2 && v1031 != 133)
                  {
                    continue;
                  }

                  if (*(a7 + 130) == 2)
                  {
                    goto LABEL_2864;
                  }

                  goto LABEL_3277;
                case 0x12:
                  v20 = 0;
                  if (v1031 < 0x2000)
                  {
                    if (v1031 <= 159)
                    {
                      if (v1031 == 9 || v1031 == 32)
                      {
                        continue;
                      }
                    }

                    else if (v1031 == 160 || v1031 == 5760 || v1031 == 6158)
                    {
                      continue;
                    }
                  }

                  else if (v1031 > 8238)
                  {
                    v1054 = v1031 == 8239 || v1031 == 8287;
                    if (v1054 || v1031 == 12288)
                    {
                      continue;
                    }
                  }

                  else if ((v1031 - 0x2000) < 0xB)
                  {
                    continue;
                  }

                  goto LABEL_3277;
                case 0x13:
                  v20 = 0;
                  if (v1031 < 0x2000)
                  {
                    if (v1031 <= 159)
                    {
                      if (v1031 != 9 && v1031 != 32)
                      {
                        continue;
                      }
                    }

                    else if (v1031 != 160 && v1031 != 5760 && v1031 != 6158)
                    {
                      continue;
                    }
                  }

                  else if (v1031 > 8238)
                  {
                    v1053 = v1031 == 8239 || v1031 == 8287;
                    if (!v1053 && v1031 != 12288)
                    {
                      continue;
                    }
                  }

                  else if ((v1031 - 0x2000) >= 0xB)
                  {
                    continue;
                  }

                  goto LABEL_3277;
                case 0x14:
                  v20 = 0;
                  v1048 = (v1031 - 10) >= 4 && (v1031 - 8232) >= 2;
                  if (v1048 && v1031 != 133)
                  {
                    goto LABEL_3277;
                  }

                  continue;
                case 0x15:
                  v1133 = (v1031 - 10) >= 4 && (v1031 - 8232) >= 2;
                  if (!v1133 || v1031 == 133)
                  {
                    goto LABEL_3277;
                  }

                  goto LABEL_2864;
                default:
                  return v19;
              }

            case 0xDC:
              if (v20)
              {
                continue;
              }

              v1093 = *(v15 + 80);
              v209 = v1093 - 1;
              *(v15 + 80) = v1093 - 1;
              v1094 = *(v1093 - 1);
              if (!v1244)
              {
                goto LABEL_3151;
              }

              if ((v1094 & 0xC0) == 0x80)
              {
                v1095 = v1093 - 2;
                do
                {
                  *(v15 + 80) = v1095;
                  v1096 = *v1095--;
                  v1094 = v1096;
                }

                while ((v1096 & 0xC0) == 0x80);
                v209 = v1095 + 1;
              }

              if (v1094 < 0xC0)
              {
                goto LABEL_3151;
              }

              v1097 = v209[1] & 0x3F;
              if ((v1094 & 0x20) == 0)
              {
                v1094 = v209[1] & 0x3F | ((v1094 & 0x1F) << 6);
                goto LABEL_3151;
              }

              if ((v1094 & 0x10) != 0)
              {
                if ((v1094 & 8) != 0)
                {
                  v1176 = v209[2] & 0x3F;
                  v1177 = v209[3] & 0x3F;
                  v1178 = v209[4] & 0x3F;
                  if ((v1094 & 4) == 0)
                  {
                    v1094 = ((v1094 & 3) << 24) | (v1097 << 18) | (v1176 << 12) | (v1177 << 6) | v1178;
                    goto LABEL_3151;
                  }

                  v1161 = ((v1094 & 1) << 30) | (v1097 << 24) | (v1176 << 18) | (v1177 << 12) | (v1178 << 6);
                  v1162 = v209[5];
                }

                else
                {
                  v1161 = ((v1094 & 7) << 18) | (v1097 << 12) | ((v209[2] & 0x3F) << 6);
                  v1162 = v209[3];
                }
              }

              else
              {
                v1161 = ((v1094 & 0xF) << 12) | (v1097 << 6);
                v1162 = v209[2];
              }

              v1094 = v1161 & 0xFFFFFFC0 | v1162 & 0x3F;
LABEL_3151:
              v622 = *(v15 + 8);
              if (v209 <= v622)
              {
                goto LABEL_3170;
              }

              v1179 = BYTE2(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1094 & 0x7F | (_pcre2_ucd_stage1_8[v1094 >> 7] << 7)]]);
              v1180 = v209;
              while (1)
              {
                if (v1244)
                {
                  do
                  {
                    v1182 = *--v1180;
                    v1181 = v1182;
                  }

                  while ((v1182 & 0xC0) == 0x80);
                  if (v1181 < 0xC0)
                  {
                    goto LABEL_3159;
                  }

                  v1183 = v1180[1] & 0x3F;
                  if ((v1181 & 0x20) != 0)
                  {
                    if ((v1181 & 0x10) == 0)
                    {
                      v1185 = ((v1181 & 0xF) << 12) | (v1183 << 6);
                      v1186 = v1180[2];
LABEL_3169:
                      v1181 = v1185 & 0xFFFFFFC0 | v1186 & 0x3F;
                      goto LABEL_3159;
                    }

                    if ((v1181 & 8) == 0)
                    {
                      v1185 = ((v1181 & 7) << 18) | (v1183 << 12) | ((v1180[2] & 0x3F) << 6);
                      v1186 = v1180[3];
                      goto LABEL_3169;
                    }

                    v1187 = v1180[2] & 0x3F;
                    v1188 = v1180[3] & 0x3F;
                    v1189 = v1180[4] & 0x3F;
                    if ((v1181 & 4) != 0)
                    {
                      v1185 = ((v1181 & 1) << 30) | (v1183 << 24) | (v1187 << 18) | (v1188 << 12) | (v1189 << 6);
                      v1186 = v1180[5];
                      goto LABEL_3169;
                    }

                    v1181 = ((v1181 & 3) << 24) | (v1183 << 18) | (v1187 << 12) | (v1188 << 6) | v1189;
                  }

                  else
                  {
                    v1181 = v1180[1] & 0x3F | ((v1181 & 0x1F) << 6);
                  }
                }

                else
                {
                  v1180 = v209 - 1;
                  v1181 = *(v209 - 1);
                }

LABEL_3159:
                v1184 = BYTE2(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v1181 & 0x7F | (_pcre2_ucd_stage1_8[v1181 >> 7] << 7)]]);
                if (((_pcre2_ucp_gbtable_8[v1184] >> v1179) & 1) == 0)
                {
                  goto LABEL_3170;
                }

                *(v15 + 80) = v1180;
                v1179 = v1184;
                v209 = v1180;
                if (v1180 <= v622)
                {
                  v209 = v1180;
LABEL_3170:
                  if (v209 > v622)
                  {
                    v12 = 0;
                    a2 = *v15;
                    v1207 = -36;
                    goto LABEL_3173;
                  }

                  goto LABEL_2990;
                }
              }

            case 0xDD:
              if (v20)
              {
                continue;
              }

              v946 = (*(v15 + 80) - 1);
              do
              {
                *(v15 + 80) = v946;
                v1112 = *v946--;
                v1111 = v1112;
              }

              while ((v1112 & 0xC0) == 0x80);
              if (*(v15 + 64) == 17 && (v1111 == 10 ? (v1113 = (v946 + 1) > *(v15 + 8)) : (v1113 = 0), v1113 && *v946 == 13))
              {
                *(v15 + 80) = v946;
              }

              else
              {
                ++v946;
              }

              goto LABEL_2934;
            case 0xDE:
              if (v20)
              {
                continue;
              }

              v1106 = *(v15 + 80);
              v209 = v1106 - 1;
              *(v15 + 80) = v1106 - 1;
              if (v1244 && (*v209 & 0xC0) == 0x80)
              {
                v1107 = v1106 - 2;
                do
                {
                  *(v15 + 80) = v1107;
                  v1108 = *v1107--;
                }

                while ((v1108 & 0xC0) == 0x80);
                v209 = v1107 + 1;
              }

              goto LABEL_1367;
            default:
              if (v953 != 100)
              {
                if (v953 != 101)
                {
                  return v19;
                }

                if (v20)
                {
                  continue;
                }

                v958 = *(v15 + 80);
                *(v15 + 80) = v958 - 1;
                if (v958 <= *(v15 + 8))
                {
                  goto LABEL_2714;
                }

                if (v1244 && (*(v958 - 1) & 0xC0) == 0x80)
                {
                  v1200 = v958 - 2;
                  do
                  {
                    *(v15 + 80) = v1200;
                    v1201 = *v1200--;
                  }

                  while ((v1201 & 0xC0) == 0x80);
                }

LABEL_3186:
                v12 = 0;
                a2 = *v15;
                v1207 = 101;
                goto LABEL_3173;
              }

              if (v20)
              {
                continue;
              }

              v966 = *(v15 + 56);
              v967 = *(v15 + 60);
              *(v15 + 56) = v966 + 1;
              if (v966 >= v967)
              {
                goto LABEL_2714;
              }

              v964 = *(v15 + 80);
              if (v964 >= *(a7 + 160))
              {
LABEL_2614:
                v1012 = *(a7 + 128);
                if (*(a7 + 128))
                {
                  if (v964 > *(a7 + 176))
                  {
                    *(a7 + 76) = 1;
                    if (v1012 != 1)
                    {
                      return 4294967294;
                    }
                  }
                }

                goto LABEL_2714;
              }

              *(v15 + 80) = v964 + 1;
              v968 = *v964;
              if (v1244 && v968 >= 0xC0)
              {
                if ((v968 & 0x20) != 0)
                {
                  v1021 = v964[1] & 0x3F;
                  if ((v968 & 0x10) != 0)
                  {
                    if ((v968 & 8) != 0)
                    {
                      v1036 = v964[2] & 0x3F;
                      v1037 = v964[3] & 0x3F;
                      v1038 = v964[4] & 0x3F;
                      if ((v968 & 4) != 0)
                      {
                        v968 = ((v968 & 1) << 30) | (v1021 << 24) | (v1036 << 18) | (v1037 << 12) | (v1038 << 6) | v964[5] & 0x3F;
                        v1022 = v964 + 6;
                      }

                      else
                      {
                        v968 = ((v968 & 3) << 24) | (v1021 << 18) | (v1036 << 12) | (v1037 << 6) | v1038;
                        v1022 = v964 + 5;
                      }
                    }

                    else
                    {
                      v968 = ((v968 & 7) << 18) | (v1021 << 12) | ((v964[2] & 0x3F) << 6) | v964[3] & 0x3F;
                      v1022 = v964 + 4;
                    }
                  }

                  else
                  {
                    v968 = ((v968 & 0xF) << 12) | (v1021 << 6) | v964[2] & 0x3F;
                    v1022 = v964 + 3;
                  }

                  *(v15 + 80) = v1022;
                }

                else
                {
                  *(v15 + 80) = v964 + 2;
                  v968 = v964[1] & 0x3F | ((v968 & 0x1F) << 6);
                }
              }

              v20 = _pcre2_xclass_8(v968, *(v15 + 16));
              if (!v20)
              {
                continue;
              }

              break;
          }

          goto LABEL_3219;
        }

      case 0x71u:
      case 0x72u:
        v41 = v18 == 114;
        *(v15 + 64) = v41;
        *(v15 + 40) = ((a2[1] << 9) | (2 * a2[2])) - 2;
        v42 = a2 + 3;
        *v15 = a2 + 3;
        goto LABEL_142;
      case 0x73u:
      case 0x74u:
        v41 = v18 == 116;
        *(v15 + 64) = v41;
        v92 = __rev16(*(a2 + 3));
        v93 = *(a7 + 136);
        v94 = a2[1];
        v95 = a2[2];
        v96 = *(a7 + 134);
        v42 = a2 + 5;
        *v15 = a2 + 5;
        if (!v92)
        {
          goto LABEL_142;
        }

        v97 = *(v15 + 120);
        v98 = (v93 + (v95 | (v94 << 8)) * v96 + 1);
        while (2)
        {
          v99 = (((*(v98 - 1) << 9) | (2 * *v98)) - 2);
          *(v15 + 40) = v99;
          if (v99 >= v97)
          {
            if (v92 < 2)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v100 = *(v15 + 128 + 8 * v99) == -1 && v92 > 1;
            if (!v100)
            {
LABEL_142:
              v101 = *v42;
              if ((v101 - 98) >= 6)
              {
                if ((v101 - 104) >= 2)
                {
                  v390 = match_ref(*(v15 + 40), v41, v15, a7, &v1247);
                  if (!v390)
                  {
                    v620 = &v1247[*(v15 + 80)];
LABEL_2401:
                    *(v15 + 80) = v620;
                    goto LABEL_2990;
                  }

                  if (v390 >= 1)
                  {
                    *(v15 + 80) = *(a7 + 160);
                  }

                  v391 = *(a7 + 128);
                  if (!*(a7 + 128))
                  {
                    goto LABEL_2911;
                  }

                  v254 = *(v15 + 80);
                  if (v254 < *(a7 + 160))
                  {
                    goto LABEL_2911;
                  }

LABEL_1559:
                  if (v254 <= *(a7 + 176))
                  {
                    goto LABEL_2911;
                  }

                  goto LABEL_1740;
                }

                v103 = __rev16(*(v42 + 1));
                *(v15 + 56) = v103;
                v104 = __rev16(*(v42 + 3));
                *(v15 + 60) = v104;
                v110 = *v42;
                v109 = v42 + 5;
                v11 = rep_typ[v110 - 98];
                if (!v104)
                {
                  v104 = -1;
                }

                *(v15 + 60) = v104;
                *v15 = v109;
              }

              else
              {
                *v15 = v42 + 1;
                v102 = *v42 - 98;
                v103 = rep_min[v102];
                *(v15 + 56) = v103;
                v104 = rep_max[v102];
                *(v15 + 60) = v104;
                v11 = rep_typ[v102];
              }

              v111 = *(v15 + 40);
              if (v111 >= *(v15 + 120) || (v112 = *(v15 + 128 + 8 * v111), v112 == -1))
              {
                if (!v103 || (*(a7 + 233) & 2) != 0)
                {
                  goto LABEL_2990;
                }
              }

              else
              {
                if (v112 == *(v15 + 128 + 8 * v111 + 8))
                {
                  goto LABEL_2990;
                }

                if (!v103)
                {
                  v113 = 0;
                  goto LABEL_168;
                }
              }

              v114 = 1;
              while (1)
              {
                v1246 = 0;
                v115 = match_ref(*(v15 + 40), *(v15 + 64), v15, a7, &v1246);
                if (v115)
                {
                  break;
                }

                *(v15 + 80) += v1246;
                ++v114;
                v113 = *(v15 + 56);
                if (v114 > v113)
                {
                  v104 = *(v15 + 60);
LABEL_168:
                  if (v113 == v104)
                  {
                    goto LABEL_2990;
                  }

                  if (v11)
                  {
                    *(v15 + 8) = *(v15 + 80);
                    *(v15 + 24) = *(v15 + 8 * *(v15 + 40) + 136) - *(v15 + 8 * *(v15 + 40) + 128);
                    if (v113 >= v104)
                    {
                      goto LABEL_1481;
                    }

                    v116 = 1;
                    while (1)
                    {
                      v1246 = 0;
                      v117 = match_ref(*(v15 + 40), *(v15 + 64), v15, a7, &v1246);
                      if (v117)
                      {
                        break;
                      }

                      if (v1246 != *(v15 + 24))
                      {
                        v116 = 0;
                      }

                      *(v15 + 80) += v1246;
                      if (++v113 >= *(v15 + 60))
                      {
                        goto LABEL_1480;
                      }
                    }

                    if (v117 < 1 || (v652 = *(a7 + 128), !*(a7 + 128)) || *(a7 + 160) <= *(a7 + 176) || (*(a7 + 76) = 1, v652 == 1))
                    {
LABEL_1480:
                      if (!v116)
                      {
                        *(v15 + 60) = v113;
LABEL_3314:
                        v12 = 0;
                        a2 = *v15;
                        v1207 = 22;
                        goto LABEL_3173;
                      }

LABEL_1481:
                      v653 = *(v15 + 80);
LABEL_2910:
                      if (v653 >= *(v15 + 8))
                      {
                        v12 = 0;
                        a2 = *v15;
                        v1207 = 21;
                        goto LABEL_3173;
                      }

LABEL_2911:
                      v20 = 0;
                      goto LABEL_2416;
                    }

                    return 4294967294;
                  }

LABEL_3204:
                  v12 = 0;
                  v1245 = 0;
                  a2 = *v15;
                  v1207 = 20;
                  goto LABEL_3173;
                }
              }

              if (v115 >= 1)
              {
                *(v15 + 80) = *(a7 + 160);
              }

              v164 = *(a7 + 128);
              if (!*(a7 + 128))
              {
                goto LABEL_1212;
              }

              v80 = *(v15 + 80);
              if (v80 < *(a7 + 160))
              {
                goto LABEL_1212;
              }

LABEL_310:
              if (v80 <= *(a7 + 176))
              {
                goto LABEL_1212;
              }

              goto LABEL_945;
            }
          }

          v98 += v96;
          --v92;
          continue;
        }

      case 0x75u:
        v1209 = __rev16(*(a2 + 1));
        v981 = (*(a7 + 144) + v1209);
        v12 = 0x40000;
        if (v1209)
        {
          v12 = (bswap32(*(v981 + 3)) >> 16) | 0x40000;
        }

        if (*(v15 + 104) == -1)
        {
          goto LABEL_3244;
        }

        v1210 = v15;
        do
        {
          v1211 = v1210[14];
          if (v1211 == -1)
          {
            goto LABEL_3244;
          }

          v1212 = &v1211[*(a7 + 32)];
          v1210 = &v1212[v16];
        }

        while (*(v1212 + 13) != v12);
        if (*(v15 + 80) == v1210[10])
        {
          return 4294967244;
        }

LABEL_3244:
        *(v15 + 8) = v981;
        *(v15 + 56) = v12;
        v1202 = *v981;
LABEL_3245:
        a2 = &v981[_pcre2_OP_lengths_8[v1202]];
        v1207 = 11;
        goto LABEL_3173;
      case 0x76u:
      case 0x77u:
        v20 = do_callout_0(v15, a7, &v1247);
        if (v20 > 0)
        {
          goto LABEL_2911;
        }

        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_2416;
        }

        v105 = &v1247[*v15];
        goto LABEL_2989;
      case 0x78u:
        do
        {
          a2 += __rev16(*(a2 + 1));
          *v15 = a2;
        }

        while (*a2 == 120);
        goto LABEL_2990;
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
        v35 = &a2[-__rev16(*(a2 + 1))];
        v36 = *v35;
        if ((v36 | 4) == 0x87)
        {
          v37 = 0;
        }

        else
        {
          v13 = (*(a7 + 32) + *(v15 + 112));
          v37 = &v13[v16];
          *(v15 + 112) = *&v13[v16 + 112];
          if (*(v13 + 27) << 16 == 196608)
          {
            cstdlib_memcpy(v37 + 128, (v15 + 128), 8 * *(v15 + 120));
            *(v37 + 15) = *(v15 + 120);
            *(v15 + 32) = v15 - v37;
            v20 = 1;
            goto LABEL_2416;
          }

          v36 = *v35;
        }

        v20 = 1;
        if (v36 <= 128)
        {
          if (v36 != 126)
          {
            if (v36 == 127)
            {
              goto LABEL_2416;
            }

            if (v36 != 128)
            {
              goto LABEL_754;
            }
          }

          v118 = *(v15 + 80);
          if (v118 > *(a7 + 184))
          {
            *(a7 + 184) = v118;
          }

          *(v15 + 80) = *(v37 + 10);
        }

        else
        {
          v38 = v36 - 129;
          if (v38 > 0xA)
          {
            goto LABEL_754;
          }

          if (((1 << v38) & 0x630) != 0)
          {
            v39 = *(v35 + 3);
            if (*(v15 + 104) == bswap32(v39) >> 16)
            {
              cstdlib_memcpy((v15 + 128), &v13[v16 + 128], 8 * *&v13[v16 + 120]);
              *(v15 + 120) = *&v13[v16 + 120];
              *(v15 + 104) = *&v13[v16 + 104];
              v40 = *&v13[v16];
LABEL_2988:
              v105 = v40 + 3;
              goto LABEL_2989;
            }

            v345 = __rev16(v39);
            v346 = 2 * v345 - 2;
            *(v15 + 108) = v345;
            v347 = *(a7 + 152);
            v348 = (*(v37 + 10) - v347);
            v349 = (v15 + 8 * v346);
            v350 = (*(v15 + 80) - v347);
            v349[16] = v348;
            v349[17] = v350;
            if (*(v15 + 120) <= v346)
            {
              *(v15 + 120) = v346 + 2;
            }

LABEL_754:
            if (*a2 == 124)
            {
              cstdlib_memcpy(v37 + 80, (v15 + 80), __n);
              v20 = 4294966298;
              goto LABEL_2416;
            }

            if (v18 != 121 && (!v37 || *(v15 + 80) != *(v37 + 10)))
            {
              v12 = 0;
              v1215 = v18 == 123;
              if (v18 == 123)
              {
                v1207 = 6;
              }

              else
              {
                v1207 = 7;
              }

              if (v1215)
              {
                a2 += 3;
              }

              else
              {
                a2 = v35;
              }

              goto LABEL_3173;
            }

            goto LABEL_2959;
          }

          if (!v38)
          {
            goto LABEL_2416;
          }

          if (v38 != 1)
          {
            goto LABEL_754;
          }
        }

        *(v15 + 32) = v15 - v37;
        v334 = *v37 + __rev16(*(*v37 + 1));
        if (*v334 == 120)
        {
          do
          {
            *v37 = v334;
            v334 += __rev16(*(v334 + 1));
          }

          while (*v334 == 120);
          a2 = *v15;
        }

        goto LABEL_754;
      case 0x7Du:
        v128 = __rev16(*(a2 + 1));
        if (v1244)
        {
          if (v128)
          {
            v129 = *(a7 + 152);
            v130 = *(v15 + 80);
            do
            {
              if (v130 <= v129)
              {
                goto LABEL_2911;
              }

              LODWORD(v128) = v128 - 1;
              v131 = v130 - 1;
              do
              {
                *(v15 + 80) = v131;
                v132 = *v131--;
              }

              while ((v132 & 0xC0) == 0x80);
              v130 = v131 + 1;
            }

            while (v128);
          }

          else
          {
            v130 = *(v15 + 80);
          }
        }

        else
        {
          v362 = *(v15 + 80);
          if (&v362[-*(a7 + 152)] < v128)
          {
            goto LABEL_2911;
          }

          v130 = &v362[-v128];
          *(v15 + 80) = v130;
        }

        if (v130 < *(a7 + 176))
        {
          *(a7 + 176) = v130;
        }

        goto LABEL_2959;
      case 0x7Eu:
      case 0x80u:
        v12 = v18 | 0x20000;
        *(v15 + 56) = v18 | 0x20000;
        v1199 = *a2;
        goto LABEL_3181;
      case 0x7Fu:
      case 0x81u:
        v12 = v18 | 0x20000;
        *(v15 + 56) = v18 | 0x20000;
        v1206 = *a2;
        goto LABEL_3213;
      case 0x82u:
      case 0x88u:
        v12 = v18 | 0x20000;
        goto LABEL_3215;
      case 0x83u:
        if (!*(a7 + 80) && *(v15 + 48))
        {
LABEL_2891:
          v1101 = __rev16(*(a2 + 1));
          *(v15 + 8) = &a2[v1101];
          LODWORD(v1101) = a2[v1101];
          a2 += _pcre2_OP_lengths_8[*a2];
          if (v1101 == 120)
          {
            v12 = 0;
            v1207 = 1;
            goto LABEL_3173;
          }

          *v15 = a2;
          goto LABEL_2990;
        }

        v12 = 0;
        *(v15 + 56) = 0;
        goto LABEL_3218;
      case 0x84u:
      case 0x89u:
        *(v15 + 64) = 0;
        v1205 = 0x20000;
        goto LABEL_3253;
      case 0x85u:
      case 0x8Au:
        v12 = (bswap32(*(a2 + 3)) >> 16) | 0x10000;
LABEL_3215:
        *(v15 + 56) = v12;
        goto LABEL_3218;
      case 0x86u:
      case 0x8Bu:
        *(v15 + 64) = 0;
        goto LABEL_3252;
      case 0x87u:
      case 0x8Cu:
        v87 = __rev16(*(a2 + 1));
        *(v15 + 24) = v87;
        if (a2[v87] != 120)
        {
          v87 -= 3;
          *(v15 + 24) = v87;
        }

        v88 = a2 + 3;
        *v15 = a2 + 3;
        v89 = a2[3];
        if ((v89 & 0xFE) != 0x76)
        {
          goto LABEL_128;
        }

        v20 = do_callout_0(v15, a7, &v1247);
        if (v20 > 0)
        {
          goto LABEL_2911;
        }

        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_2416;
        }

        v90 = v1247;
        v88 = &v1247[*v15];
        *v15 = v88;
        v87 = *(v15 + 24) - v90;
        *(v15 + 24) = v87;
        v89 = *v88;
LABEL_128:
        v91 = v89;
        if (v89 <= 143)
        {
          if (v89 <= 141)
          {
            if (v89 != 141)
            {
              if (v89 == 126)
              {
                v1225 = 1;
LABEL_3316:
                *(v15 + 56) = v1225;
                *(v15 + 8) = v88;
                v1216 = *v88;
                v1217 = *v88;
LABEL_3317:
                v12 = v1216 | 0x30000;
                a2 = &v88[_pcre2_OP_lengths_8[v1217]];
                v1207 = 5;
                goto LABEL_3173;
              }

LABEL_3315:
              v1225 = v89 == 128;
              goto LABEL_3316;
            }

            v599 = ((v88[1] << 9) | (2 * v88[2])) - 2;
            if (v599 >= *(v15 + 120) || *(v15 + 8 * v599 + 128) == -1)
            {
              goto LABEL_2938;
            }

            v91 = 0x8Du;
          }

          else
          {
            if (v89 == 142)
            {
              if (!(v88[4] | (v88[3] << 8)))
              {
                goto LABEL_2938;
              }

              v600 = (v88[3] << 8) + v88[4] + 1;
              v601 = (*(a7 + 136) + *(a7 + 134) * __rev16(*(v88 + 1)) + 1);
              while (1)
              {
                v602 = ((*(v601 - 1) << 9) | (2 * *v601)) - 2;
                if (v602 < *(v15 + 120) && *(v15 + 128 + 8 * v602) != -1)
                {
                  break;
                }

                v601 += *(a7 + 134);
                if (--v600 <= 1)
                {
                  goto LABEL_2938;
                }
              }

              v91 = 0x8Eu;
              goto LABEL_2873;
            }

            v360 = *(v15 + 104);
            if (v360 == -1)
            {
              goto LABEL_2938;
            }

            v361 = __rev16(*(v88 + 1));
            v91 = 0x8Fu;
            if (v361 != 0xFFFF && v361 != v360)
            {
              goto LABEL_2938;
            }
          }
        }

        else
        {
          if (v89 <= 145)
          {
            if (v89 == 144)
            {
              v603 = *(v15 + 104);
              if (v603 != -1)
              {
                if (v88[4] | (v88[3] << 8))
                {
                  v604 = (v88[3] << 8) + v88[4] + 1;
                  v605 = *(a7 + 136) + *(a7 + 134) * __rev16(*(v88 + 1)) + 1;
                  while (v603 != bswap32(*(v605 - 1)) >> 16)
                  {
                    v605 += *(a7 + 134);
                    if (--v604 <= 1)
                    {
                      goto LABEL_2938;
                    }
                  }

                  v91 = 0x90u;
                  goto LABEL_2873;
                }
              }
            }

LABEL_2938:
            a2 = &v88[v87];
            *v15 = &v88[v87];
            if (*(v15 + 73) == 140)
            {
              v12 = 131212;
              v1207 = 35;
              goto LABEL_3173;
            }

            goto LABEL_2990;
          }

          if (v89 != 146)
          {
            if (v89 == 159)
            {
              goto LABEL_2938;
            }

            goto LABEL_3315;
          }
        }

LABEL_2873:
        v87 = _pcre2_OP_lengths_8[v91];
        goto LABEL_2938;
      case 0x93u:
        v12 = 0;
        *(v15 + 8) = ++a2;
        v1207 = 9;
        goto LABEL_3173;
      case 0x94u:
        v1213 = a2 + 1;
        *(v15 + 8) = a2 + 1;
        do
        {
          v1213 += __rev16(*(v1213 + 1));
          *(v15 + 8) = v1213;
        }

        while (*v1213 == 120);
        v12 = 0;
        a2 = v1213 + 3;
        v1207 = 10;
        goto LABEL_3173;
      case 0x95u:
        *(v15 + 64) = 1;
        v1089 = a2 + 1;
        *v15 = a2 + 1;
        v1214 = a2[1];
        if (v1214 == 134 || v1214 == 139)
        {
          ++a2;
LABEL_3252:
          v1205 = (bswap32(*(a2 + 3)) >> 16) | 0x10000;
LABEL_3253:
          v1089 = a2;
        }

        else
        {
          v1205 = 0x20000;
        }

        *(v15 + 56) = v1205;
        *(v15 + 60) = 0;
        *(v15 + 16) = v1089;
        goto LABEL_3255;
      case 0x96u:
        v12 = 0;
        *(a7 + 200) = a2 + 2;
        *(v15 + 96) = a2 + 2;
        a2 += a2[1] + _pcre2_OP_lengths_8[*a2];
        v1207 = 12;
        goto LABEL_3173;
      case 0x97u:
        v12 = 0;
        ++a2;
        v1207 = 14;
        goto LABEL_3173;
      case 0x98u:
        v12 = 0;
        *(a7 + 200) = a2 + 2;
        *(v15 + 96) = a2 + 2;
        a2 += a2[1] + _pcre2_OP_lengths_8[*a2];
        v1207 = 15;
        goto LABEL_3173;
      case 0x99u:
        v12 = 0;
        ++a2;
        v1207 = 16;
        goto LABEL_3173;
      case 0x9Au:
        v159 = *(a7 + 240);
        v160 = *(a7 + 236) + 1;
        *(a7 + 236) = v160;
        v161 = _pcre2_OP_lengths_8[*a2];
        if (v160 > v159)
        {
          v12 = 0;
          a2 += v161 + a2[1];
          v1207 = 17;
          goto LABEL_3173;
        }

        v105 = &a2[v161 + a2[1]];
        goto LABEL_2989;
      case 0x9Bu:
        v12 = 0;
        ++a2;
        v1207 = 18;
        goto LABEL_3173;
      case 0x9Cu:
        v12 = 0;
        *(a7 + 200) = a2 + 2;
        *(v15 + 96) = a2 + 2;
        a2 += a2[1] + _pcre2_OP_lengths_8[*a2];
        v1207 = 19;
        goto LABEL_3173;
      case 0x9Du:
        v12 = 0;
        ++a2;
        v1207 = 13;
        goto LABEL_3173;
      case 0x9Eu:
        v12 = 0;
        *(a7 + 200) = a2 + 2;
        *(v15 + 96) = a2 + 2;
        a2 += a2[1] + _pcre2_OP_lengths_8[*a2];
        v1207 = 36;
        goto LABEL_3173;
      case 0x9Fu:
        goto LABEL_2416;
      case 0xA1u:
        v119 = *(v15 + 80);
        if (v119 > *(a7 + 184))
        {
          *(a7 + 184) = v119;
        }

        v20 = 4294966297;
        v1241 = v15;
        goto LABEL_2416;
      case 0xA2u:
        if (*(v15 + 104) != -1)
        {
          goto LABEL_184;
        }

        v488 = *(a2 + 1);
        v489 = __rev16(v488);
        v490 = (bswap32(v488) >> 16) | 0x10000;
        v491 = v15;
        while (1)
        {
          v492 = *(v491 + 14);
          if (v492 == -1)
          {
            return 4294967252;
          }

          v13 = &v492[*(a7 + 32)];
          v491 = &v13[v16];
          if (*(v13 + 13) == v490)
          {
            v493 = 2 * v489 - 2;
            *(v15 + 108) = v489;
            v494 = *(v491 + 10);
            v495 = *(a7 + 152);
            v496 = &v494[-v495];
            v497 = (v15 + 8 * v493);
            v498 = (*(v15 + 80) - v495);
            v497[16] = v496;
            v497[17] = v498;
            if (*(v15 + 120) <= v493)
            {
              *(v15 + 120) = v493 + 2;
            }

LABEL_184:
            v105 = &a2[_pcre2_OP_lengths_8[*a2]];
            goto LABEL_2989;
          }
        }

      case 0xA3u:
        v40 = a2 + 1;
        *v15 = a2 + 1;
        do
        {
          v40 += __rev16(*(v40 + 1));
          *v15 = v40;
        }

        while (*v40 == 120);
        goto LABEL_2988;
      default:
        return v19;
    }
  }
}