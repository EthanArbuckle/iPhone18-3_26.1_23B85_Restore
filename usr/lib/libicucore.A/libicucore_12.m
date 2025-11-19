const UChar *ucurr_getPluralName(const UChar *a1, char *a2, _BYTE *a3, char *a4, int *a5, int *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v21 = U_ZERO_ERROR;
    v24 = 0u;
    v25 = 0u;
    *v22 = 0u;
    v23 = 0u;
    ulocimp_getName(a2, &v21, v22);
    if (v21 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      *v20 = 0;
      u_UCharsToChars(a1, v20, 3);
      v20[3] = 0;
      v21 = U_ZERO_ERROR;
      v13 = ures_open("icudt76l-curr", v22[0], &v21);
      v14 = ures_getByKey(v13, "CurrencyPlurals", v13, &v21);
      v15 = ures_getByKeyWithFallback(v14, v20, v14, &v21);
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v15, a4, a5, &v21);
      v17 = v21;
      if (v21 < U_ILLEGAL_ARGUMENT_ERROR || (v21 = U_ZERO_ERROR, StringByKeyWithFallback = ures_getStringByKeyWithFallback(v15, "other", a5, &v21), v17 = v21, v21 < U_ILLEGAL_ARGUMENT_ERROR))
      {
        Name = StringByKeyWithFallback;
        if (v17 == U_USING_DEFAULT_WARNING || v17 == U_USING_FALLBACK_WARNING && *a6 != -127)
        {
          *a6 = v17;
        }
      }

      else
      {
        Name = ucurr_getName(a1, a2, 1u, a3, a5, a6);
      }

      if (v15)
      {
        ures_close(v15);
      }
    }

    else
    {
      Name = 0;
      *a6 = 1;
    }

    if (BYTE4(v22[1]))
    {
      free(v22[0]);
    }
  }

  else
  {
    Name = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return Name;
}

void uprv_parseCurrency(char *a1, uint64_t a2, uint64_t a3, int a4, int *a5, UChar *a6, int *a7)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v14 = sub_19525A448(a1, a7);
    if (*a7 <= 0)
    {
      v15 = v14;
      v26 = *(v14 + 184);
      v27 = *(v14 + 168);
      v28 = *(v14 + 160);
      v29 = *(v14 + 176);
      v16 = *(a3 + 8);
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      *src = 0u;
      v49 = 0u;
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *dest = 0u;
      v36 = 0u;
      v17 = *(a2 + 8);
      if ((v17 & 0x8000) != 0)
      {
        v18 = *(a2 + 12);
      }

      else
      {
        v18 = v17 >> 5;
      }

      v19 = v18 - v16;
      if ((v18 - v16) > 100)
      {
        v19 = 100;
      }

      icu::UnicodeString::doExtract(a2, v16, v19, src, 0);
      pErrorCode = U_ZERO_ERROR;
      v20 = u_strToUpper(dest, 100, src, v19, a1, &pErrorCode);
      *a5 = 0;
      v32 = -1;
      v33 = 0;
      sub_19525AF2C(v28, v27, dest, v20, a5, &v33, &v32);
      v21 = 0;
      v30 = -1;
      v31 = 0;
      v22 = a4 == 1;
      v23 = v29;
      if (!v22)
      {
        sub_19525AF2C(v29, v26, src, v20, a5, &v31, &v30);
        v21 = v31;
      }

      if (v33 < v21 || (v24 = v32, v32 == -1))
      {
        if (v21 < v33)
        {
          goto LABEL_16;
        }

        v24 = v30;
        if (v30 == -1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v23 = v28;
        v21 = v33;
      }

      u_charsToUChars(*(v23 + 24 * v24), a6, 4);
      *(a3 + 8) = v21 + v16;
LABEL_16:
      sub_19525B1D8(v15);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19525A448(char *a1, int *a2)
{
  v111[9] = *MEMORY[0x1E69E9840];
  umtx_lock(&unk_1EAEC99C0);
  for (i = 0; i != 10; ++i)
  {
    v5 = qword_1EAEC9968[i];
    if (v5 && !strcmp(a1, v5))
    {
LABEL_119:
      v11 = qword_1EAEC9968[i];
      ++*(v11 + 188);
LABEL_120:
      umtx_unlock(&unk_1EAEC99C0);
      goto LABEL_121;
    }
  }

  umtx_unlock(&unk_1EAEC99C0);
  if (*a2 >= 1)
  {
    goto LABEL_12;
  }

  v6 = sub_19525C8B0();
  v97 = U_ZERO_ERROR;
  v106 = 0u;
  v107 = 0u;
  *__s = 0u;
  v105 = 0u;
  ulocimp_getName(a1, &v97, __s);
  if (v97 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v7 = 0;
    __base = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
LABEL_8:
    *a2 = v10;
    goto LABEL_9;
  }

  memset(&v111[1], 0, 56);
  v111[0] = &v111[1] + 5;
  LODWORD(v111[1]) = 40;
  v101[0] = U_ZERO_ERROR;
  icu::StringPiece::StringPiece(v108, __s[0]);
  icu::CharString::append(v111, *v108, v109[0], v101);
  v12 = 0;
  v13 = 0;
  v88 = v6;
  if (v101[0] > U_ZERO_ERROR)
  {
    goto LABEL_39;
  }

  v89 = a2;
  v14 = sub_19525C8B0();
  v15 = 0;
  v16 = 0;
  do
  {
    srcLength = 0;
    v17 = ures_open("icudt76l-curr", v111[0], &srcLength);
    v18 = ures_getByKey(v17, "Currencies", 0, &srcLength);
    Size = ures_getSize(v18);
    v94 = v17;
    if (Size < 1)
    {
      goto LABEL_26;
    }

    v20 = Size;
    for (j = 0; j != v20; ++j)
    {
      v22 = ures_getByIndex(v18, j, 0, &srcLength);
      v99 = 0;
      StringByIndex = ures_getStringByIndex(v22, 0, &v99, &srcLength);
      if (v14)
      {
        v98 = StringByIndex;
        icu::UnicodeString::UnicodeString(v108, 1, &v98);
        v102 = v108;
        v103 = v108;
        *v101 = v14;
        do
        {
          ++v16;
        }

        while (sub_195259644(v101));
        icu::UnicodeString::~UnicodeString(v24, v108);
        if (v22)
        {
LABEL_21:
          ures_close(v22);
        }
      }

      else
      {
        ++v16;
        if (v22)
        {
          goto LABEL_21;
        }
      }

      ++v16;
    }

    v15 += v20;
    v17 = v94;
LABEL_26:
    v108[0] = 0;
    v25 = ures_getByKey(v17, "CurrencyPlurals", 0, v108);
    v26 = ures_getSize(v25);
    if (v26 >= 1)
    {
      v27 = v26;
      for (k = 0; k != v27; ++k)
      {
        v29 = ures_getByIndex(v25, k, 0, v108);
        v30 = ures_getSize(v29);
        if (v29)
        {
          ures_close(v29);
        }

        v15 += v30;
      }
    }

    v31 = sub_19525C9D0(v111);
    if (v25)
    {
      ures_close(v25);
    }

    if (v18)
    {
      ures_close(v18);
    }

    if (v94)
    {
      ures_close(v94);
    }
  }

  while (v31);
  v12 = 24 * v15;
  v13 = 24 * v16;
  v6 = v88;
  a2 = v89;
LABEL_39:
  if (BYTE4(v111[1]))
  {
    free(v111[0]);
  }

  __base = malloc_type_malloc(v12, 0x10500409F5D8AEAuLL);
  if (!__base)
  {
    v7 = 0;
    __base = 0;
    v8 = 0;
    v9 = 0;
    *a2 = 7;
    goto LABEL_9;
  }

  v32 = malloc_type_malloc(v13, 0x10500409F5D8AEAuLL);
  if (!v32)
  {
    free(__base);
    v7 = 0;
    __base = 0;
    v8 = 0;
    v9 = 0;
    v10 = 7;
    goto LABEL_8;
  }

  v33 = v32;
  v101[0] = U_ZERO_ERROR;
  LODWORD(v98) = 0;
  v34 = uhash_open(uhash_hashChars, uhash_compareChars, 0, v101);
  v7 = 0;
  v93 = 0;
  v95 = 0;
  v90 = v33;
  v84 = v33 + 16;
  v91 = v34;
  v85 = uhash_open(uhash_hashChars, uhash_compareChars, 0, &v98);
  while (2)
  {
    v97 = U_ZERO_ERROR;
    v83 = ures_open("icudt76l-curr", __s[0], &v97);
    v92 = ures_getByKey(v83, "Currencies", 0, &v97);
    v35 = ures_getSize(v92);
    if (v35 >= 1)
    {
      v36 = v35;
      for (m = 0; m != v36; ++m)
      {
        v38 = ures_getByIndex(v92, m, 0, &v97);
        srcLength = 0;
        v39 = ures_getStringByIndex(v38, 0, &srcLength, &v97);
        Key = ures_getKey(v38);
        if (v95 && uhash_get(v34, Key))
        {
          v41 = 7;
          goto LABEL_68;
        }

        uhash_put(v34, Key, Key, v101);
        v42 = srcLength;
        v43 = v93 + 1;
        v44 = &v90[24 * v93];
        *v44 = Key;
        v44[1] = v39;
        v44[2] = v42;
        if (v6)
        {
          memset(v111, 0, 64);
          v96 = v39;
          icu::UnicodeString::UnicodeString(v111, 1, &v96);
          *v109 = v111;
          v110 = v111;
          *v108 = v6;
          v45 = sub_195259644(v108);
          if (v45)
          {
            v47 = &v84[24 * v43];
            do
            {
              v48 = *(v45 + 8);
              if ((v48 & 0x11) != 0)
              {
                v49 = 0;
                if ((v48 & 0x8000) != 0)
                {
                  goto LABEL_59;
                }
              }

              else if ((v48 & 2) != 0)
              {
                v49 = v45 + 10;
                if ((v48 & 0x8000) != 0)
                {
LABEL_59:
                  v50 = *(v45 + 12);
                  goto LABEL_60;
                }
              }

              else
              {
                v49 = *(v45 + 24);
                if ((v48 & 0x8000) != 0)
                {
                  goto LABEL_59;
                }
              }

              v50 = v48 >> 5;
LABEL_60:
              *(v47 - 2) = Key;
              *(v47 - 1) = v49;
              *v47 = v50;
              *(v47 + 1) = 0;
              v47 += 24;
              v45 = sub_195259644(v108);
              ++v43;
            }

            while (v45);
          }

          icu::UnicodeString::~UnicodeString(v46, v111);
        }

        v93 = v43;
        v51 = ures_getStringByIndex(v38, 1, &srcLength, &v97);
        v52 = sub_19525C904(v51, srcLength, a1);
        if (v52)
        {
          v53 = srcLength;
          v54 = &__base[24 * v7];
          *v54 = Key;
          *(v54 + 1) = v52;
          *(v54 + 4) = v53;
          *(v54 + 5) = 1;
          v55 = malloc_type_malloc(6uLL, 0x1000040BDFB0063uLL);
          if (v55)
          {
            v56 = v55;
            u_charsToUChars(Key, v55, 3);
            v41 = 0;
            v57 = &v90[24 * v93];
            *v57 = Key;
            v57[1] = v56;
            v57[2] = 0x100000003;
            ++v7;
            ++v93;
          }

          else
          {
            *a2 = 7;
            v41 = 10;
            ++v7;
          }

          v6 = v88;
        }

        else
        {
          *a2 = 7;
          v41 = 10;
        }

LABEL_68:
        if (v38)
        {
          ures_close(v38);
        }

        if (v41 != 7 && v41)
        {
          v62 = v85;
          v72 = v83;
          v73 = v92;
          if (!v92)
          {
            goto LABEL_98;
          }

LABEL_97:
          ures_close(v73);
          goto LABEL_98;
        }

        v34 = v91;
      }
    }

    LODWORD(v111[0]) = 0;
    v58 = ures_getByKey(v83, "CurrencyPlurals", 0, v111);
    v59 = ures_getSize(v58);
    v86 = v58;
    if (v59 < 1)
    {
      v62 = v85;
LABEL_93:
      v41 = 2 * (sub_19525C9D0(__s) == 0);
    }

    else
    {
      v60 = v59;
      v61 = 0;
      v62 = v85;
      while (1)
      {
        v63 = ures_getByIndex(v58, v61, 0, v111);
        v64 = ures_getKey(v63);
        if (v95 && uhash_get(v62, v64))
        {
          v41 = 13;
        }

        else
        {
          uhash_put(v62, v64, v64, &v98);
          v65 = ures_getSize(v63);
          v108[0] = 0;
          if (v65 < 1)
          {
            v41 = 0;
          }

          else
          {
            v66 = v65;
            v67 = 0;
            v68 = &__base[24 * v7 + 16];
            while (1)
            {
              v69 = ures_getStringByIndex(v63, v67, v108, v111);
              v70 = sub_19525C904(v69, v108[0], a1);
              if (!v70)
              {
                break;
              }

              v71 = v108[0];
              *(v68 - 2) = v64;
              *(v68 - 1) = v70;
              *v68 = v71;
              v68[1] = 1;
              v68 += 6;
              ++v67;
              ++v7;
              if (v66 == v67)
              {
                v41 = 0;
                goto LABEL_85;
              }
            }

            *a2 = 7;
            v41 = 10;
LABEL_85:
            v62 = v85;
            v58 = v86;
          }
        }

        if (v63)
        {
          ures_close(v63);
        }

        if (v41 != 13 && v41)
        {
          break;
        }

        if (++v61 == v60)
        {
          goto LABEL_93;
        }
      }
    }

    v72 = v83;
    v73 = v92;
    if (v86)
    {
      ures_close(v86);
    }

    v6 = v88;
    if (v92)
    {
      goto LABEL_97;
    }

LABEL_98:
    if (v72)
    {
      ures_close(v72);
    }

    if (!v41)
    {
      ++v95;
      v34 = v91;
      continue;
    }

    break;
  }

  v79 = v41 == 2;
  v9 = v90;
  v8 = v93;
  if (v79)
  {
    qsort(__base, v7, 0x18uLL, sub_19525CABC);
    v62 = v85;
    qsort(v90, v93, 0x18uLL, sub_19525CABC);
    v80 = v101[0];
    if (v101[0] > U_ZERO_ERROR || (v80 = v98, v98 > 0))
    {
      *a2 = v80;
      goto LABEL_126;
    }
  }

  if (*a2 >= 1)
  {
LABEL_126:
    sub_19525C7A0(__base, v7);
    sub_19525C7A0(v90, v93);
    v7 = 0;
    __base = 0;
    v8 = 0;
    v9 = 0;
  }

  if (v62)
  {
    uhash_close(v62);
  }

  if (v91)
  {
    uhash_close(v91);
  }

LABEL_9:
  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

  if (*a2 <= 0)
  {
    umtx_lock(&unk_1EAEC99C0);
    for (i = 0; i != 10; ++i)
    {
      v74 = qword_1EAEC9968[i];
      if (v74 && !strcmp(a1, v74))
      {
        sub_19525C7A0(__base, v7);
        sub_19525C7A0(v9, v8);
        goto LABEL_119;
      }
    }

    v75 = qword_1EAEC9968[byte_1EAEC99B8];
    if (v75)
    {
      v76 = *(v75 + 188) - 1;
      *(v75 + 188) = v76;
      if (!v76)
      {
        sub_19525C754(v75);
      }
    }

    v77 = malloc_type_malloc(0xC0uLL, 0x10200401A14EE70uLL);
    v11 = v77;
    if (v77)
    {
      v78 = byte_1EAEC99B8;
      qword_1EAEC9968[byte_1EAEC99B8] = v77;
      strcpy(v77, a1);
      *(v11 + 160) = __base;
      *(v11 + 168) = v7;
      *(v11 + 176) = v9;
      *(v11 + 184) = v8;
      *(v11 + 188) = 2;
      byte_1EAEC99B8 = (v78 + 1) % 0xAu;
      sub_1952376A4(0xEu, sub_19525C808);
      goto LABEL_120;
    }

    sub_19525C7A0(__base, v7);
    sub_19525C7A0(v9, v8);
    *a2 = 7;
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

LABEL_121:
  v81 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19525AF2C(uint64_t result, int a2, unsigned __int16 *__s2, int a4, int *a5, int *a6, int *a7)
{
  v12 = result;
  v13 = 0;
  v14 = 0;
  *a7 = -1;
  *a6 = 0;
  v15 = a2 - 1;
  while (2)
  {
    if (v13 == (a4 & ~(a4 >> 31)) || v14 > v15)
    {
      return result;
    }

    v16 = __s2[v13];
    v17 = v14;
    v18 = v15;
    while (1)
    {
      v19 = (v18 + v17) / 2;
      v20 = v12 + 24 * v19;
      result = *(v20 + 16);
      if (v13 < result)
      {
        v21 = *(*(v20 + 8) + 2 * v13);
        if (v21 >= v16)
        {
          break;
        }
      }

      v17 = v19 + 1;
LABEL_10:
      if (v17 > v18)
      {
        return result;
      }
    }

    if (v21 > v16)
    {
      v18 = v19 - 1;
      goto LABEL_10;
    }

    if (v14 < v19)
    {
      v22 = (v18 + v17) / 2;
      do
      {
        v23 = (v14 + v22) / 2;
        v24 = v12 + 24 * v23;
        result = *(v24 + 16);
        if (v13 >= result)
        {
          v14 = v23 + 1;
        }

        else if (*(*(v24 + 8) + 2 * v13) >= v16)
        {
          v22 = (v14 + v22) / 2;
        }

        else
        {
          v14 = v23 + 1;
        }
      }

      while (v14 < v22);
    }

    while (v19 < v15)
    {
      v25 = (v19 + v15) / 2;
      v26 = v12 + 24 * v25;
      if (v13 <= *(v26 + 16))
      {
        if (*(*(v26 + 8) + 2 * v13) > v16)
        {
          v15 = (v19 + v15) / 2;
        }

        else
        {
          v19 = v25 + 1;
        }
      }

      else
      {
        v19 = v25 + 1;
      }
    }

    v27 = *(*(v12 + 24 * v15 + 8) + 2 * v13) > v16;
    v28 = v13 + 1;
    if (v13 + 1 == *(v12 + 24 * v14 + 16))
    {
      v29 = v14;
    }

    else
    {
      v29 = -1;
    }

    if (v14 != -1)
    {
      if (v13 >= *a5)
      {
        v30 = v13 + 1;
      }

      else
      {
        v30 = *a5;
      }

      *a5 = v30;
      if (v29 != -1)
      {
        *a6 = v28;
        *a7 = v29;
      }

      v15 -= v27;
      v13 = v28;
      if (v15 - v14 <= 9)
      {
        if (v15 >= v14)
        {
          v31 = v14;
          v32 = *a5;
          v33 = v15 + 1;
          v44 = v15 + 1;
          do
          {
            v34 = v12 + 24 * v31;
            v35 = *(v34 + 16);
            v36 = v35 > a4 || v35 <= *a6;
            if (v36 || (result = memcmp(*(v34 + 8), __s2, 2 * v35), v33 = v44, result))
            {
              if (v35 >= a4)
              {
                v37 = a4;
              }

              else
              {
                v37 = v35;
              }

              if (v32 < v37)
              {
                v38 = *(v34 + 8);
                v39 = v32 + 1;
                v40 = v37 - v32;
                v41 = v32;
                do
                {
                  if (*(v38 + 2 * v41) != __s2[v41])
                  {
                    break;
                  }

                  v42 = *a5;
                  v36 = v41++ < v42;
                  if (!v36)
                  {
                    LODWORD(v42) = v39;
                  }

                  *a5 = v42;
                  ++v39;
                  --v40;
                }

                while (v40);
              }
            }

            else
            {
              v43 = *a5;
              if (*a5 <= v35)
              {
                v43 = v35;
              }

              *a5 = v43;
              *a7 = v31;
              *a6 = v35;
            }

            ++v31;
          }

          while (v33 != v31);
        }

        return result;
      }

      continue;
    }

    return result;
  }
}

void sub_19525B1D8(uint64_t a1)
{
  umtx_lock(&unk_1EAEC99C0);
  v2 = *(a1 + 188) - 1;
  *(a1 + 188) = v2;
  if (!v2)
  {
    sub_19525C754(a1);
  }

  umtx_unlock(&unk_1EAEC99C0);
}

const UChar *uprv_getStaticCurrencyName(const UChar *a1, char *a2, uint64_t a3, int *a4)
{
  v13 = 0;
  result = ucurr_getName(a1, a2, 0, 0, &v13, a4);
  if (*a4 <= 0)
  {
    v7 = result;
    v8 = v13;
    icu::UnicodeString::unBogus(a3);
    v9 = *(a3 + 8);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a3 + 12);
    }

    return icu::UnicodeString::doReplace(a3, 0, v12, v7, 0, v8);
  }

  return result;
}

uint64_t ucurr_getDefaultFractionDigits(const UChar *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return *sub_19525B360(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ucurr_getDefaultFractionDigitsForUsage(const UChar *a1, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return sub_19525B360(a1, a3)[2];
  }

  if (!a2)
  {
    return *sub_19525B360(a1, a3);
  }

  result = 0;
  *a3 = U_UNSUPPORTED_ERROR;
  return result;
}

int *sub_19525B360(const UChar *a1, UErrorCode *a2)
{
  if (a1 && *a1)
  {
    v4 = ures_openDirect("icudt76l-curr", "supplementalData", a2);
    v5 = ures_getByKey(v4, "CurrencyMeta", v4, a2);
    v6 = &unk_19547B71C;
    if (*a2 > 0)
    {
LABEL_23:
      if (v5)
      {
        ures_close(v5);
      }

      return v6;
    }

    *v15 = 0;
    u_UCharsToChars(a1, &v15[4], 3);
    v15[7] = 0;
    v7 = ures_getByKey(v5, &v15[4], 0, v15);
    v8 = v7;
    if (*v15 < 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = ures_getByKey(v5, "DEFAULT", 0, a2);
      if (v8)
      {
        ures_close(v8);
      }

      if (*a2 > 0)
      {
        goto LABEL_21;
      }
    }

    v14 = 0;
    IntVector = ures_getIntVector(v9, &v14, a2);
    v11 = *a2;
    if (v14 == 4 && v11 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v6 = IntVector;
    }

    if (v11 <= U_ZERO_ERROR && v14 != 4)
    {
      *a2 = U_INVALID_FORMAT_ERROR;
      v6 = &unk_19547B71C;
    }

LABEL_21:
    if (v9)
    {
      ures_close(v9);
    }

    goto LABEL_23;
  }

  if (*a2 <= 0)
  {
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return &unk_19547B71C;
}

int *ucurr_getRoundingIncrementForUsage(const UChar *a1, int a2, UErrorCode *a3)
{
  result = sub_19525B360(a1, a3);
  if (*a3 <= 0)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v9 = 16;
        goto LABEL_11;
      }

      v6 = result + 2;
      v7 = 3;
    }

    else
    {
      v7 = 1;
      v6 = result;
    }

    v8 = *v6;
    if (v8 >= 0xA)
    {
      v9 = 3;
LABEL_11:
      *a3 = v9;
      return result;
    }

    v10 = result[v7];
    if (v10 >= 2)
    {
      v11 = v10 / dword_19547B6AC[v8];
    }
  }

  return result;
}

uint64_t ucurr_isAvailable(uint64_t a1, int *a2, double a3, double a4)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9A20, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9A20))
  {
    v9 = dword_1EAEC9A24;
    if (dword_1EAEC9A24 >= 1)
    {
      result = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_19525B6A0(a2);
    dword_1EAEC9A24 = *a2;
    icu::umtx_initImplPostInit(&dword_1EAEC9A20);
  }

  if (*a2 > 0)
  {
    return 0;
  }

  result = uhash_get(qword_1EAEC9960, a1);
  if (result)
  {
    if (a3 <= a4)
    {
      return *(result + 16) >= a3 && *(result + 8) <= a4;
    }

    result = 0;
    v9 = 1;
LABEL_8:
    *a2 = v9;
  }

  return result;
}

void sub_19525B6A0(int *a1)
{
  sub_1952376A4(0xEu, sub_19525C808);
  v2 = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a1);
  v3 = v2;
  if (*a1 > 0)
  {
    goto LABEL_7;
  }

  uhash_setValueDeleter(v2, j__free);
  v31 = U_ZERO_ERROR;
  v4 = ures_openDirect("icudt76l-curr", "supplementalData", &v31);
  v5 = ures_getByKey(v4, "CurrencyMap", v4, &v31);
  v6 = v5;
  if (v31 > U_ZERO_ERROR)
  {
    *a1 = v31;
    goto LABEL_4;
  }

  if (ures_getSize(v5) >= 1)
  {
    v7 = 0;
    v27 = v6;
    v28 = v3;
    while (1)
    {
      v8 = ures_getByIndex(v6, v7, 0, &v31);
      v9 = v8;
      if (v31 > U_ZERO_ERROR)
      {
        break;
      }

      if (ures_getSize(v8) < 1)
      {
        goto LABEL_13;
      }

      v11 = 0;
      while (1)
      {
        v12 = ures_getByIndex(v9, v11, 0, &v31);
        v13 = malloc_type_malloc(0x18uLL, 0x1050040E4AAA758uLL);
        if (v13)
        {
          v14 = v13;
          v30 = 0;
          v15 = ures_getByKey(v12, "id", 0, &v31);
          if (v15)
          {
            v16 = v15;
            String = ures_getString(v15, &v30, &v31);
            v18 = ures_getByKey(v12, "from", 0, &v31);
            v19 = v18;
            if (v31 <= U_ZERO_ERROR)
            {
              v29 = 0;
              IntVector = ures_getIntVector(v18, &v29, &v31);
              v20 = (IntVector[1] | (*IntVector << 32));
            }

            else
            {
              v20 = -1.79769313e308;
            }

            v31 = U_ZERO_ERROR;
            v23 = ures_getByKey(v12, "to", 0, &v31);
            v24 = v23;
            if (v31 <= U_ZERO_ERROR)
            {
              v29 = 0;
              v26 = ures_getIntVector(v23, &v29, &v31);
              v25 = (v26[1] | (*v26 << 32));
            }

            else
            {
              v25 = 1.79769313e308;
            }

            *v14 = String;
            *(v14 + 8) = v20;
            *(v14 + 16) = v25;
            v31 = U_ZERO_ERROR;
            uhash_put(v28, String, v14, &v31);
            if (v24)
            {
              ures_close(v24);
            }

            if (v19)
            {
              ures_close(v19);
            }

            ures_close(v16);
            v21 = 0;
          }

          else
          {
            v21 = 7;
          }
        }

        else
        {
          *a1 = 7;
          v21 = 1;
        }

        if (v12)
        {
          ures_close(v12);
        }

        if (v21 != 7 && v21)
        {
          break;
        }

        if (++v11 >= ures_getSize(v9))
        {
          v21 = 0;
          break;
        }
      }

      v10 = v21 == 0;
      v6 = v27;
      v3 = v28;
      if (!v9)
      {
        goto LABEL_15;
      }

LABEL_14:
      ures_close(v9);
LABEL_15:
      if (v10 && ++v7 < ures_getSize(v6))
      {
        continue;
      }

      goto LABEL_4;
    }

    *a1 = v31;
LABEL_13:
    v10 = 1;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  if (v6)
  {
    ures_close(v6);
  }

  if (*a1 <= 0)
  {
    qword_1EAEC9960 = v3;
    return;
  }

LABEL_7:
  if (v3)
  {
    uhash_close(v3);
  }
}

void *ucurr_openISOCurrencies(int a1, _DWORD *a2)
{
  v4 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *&off_1F09355D0;
    *v4 = xmmword_1F09355C0;
    *(v4 + 1) = v6;
    *(v4 + 2) = xmmword_1F09355E0;
    v4[6] = off_1F09355F0;
    v7 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (v7)
    {
      *v7 = a1;
      v7[1] = 0;
      v5[1] = v7;
    }

    else
    {
      *a2 = 7;
      free(v5);
      return 0;
    }
  }

  else
  {
    *a2 = 7;
  }

  return v5;
}

uint64_t ucurr_countCurrencies(char *a1, UErrorCode *a2, double a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || *a2 > 0)
  {
    goto LABEL_32;
  }

  v26 = U_ZERO_ERROR;
  v29 = 0u;
  v30 = 0u;
  *__s = 0u;
  v28 = 0u;
  ulocimp_getRegionForSupplementalData(a1, a2, 0, __s);
  if (*a2 <= 0)
  {
    v7 = __s[0];
    v8 = strchr(__s[0], 95);
    if (v8)
    {
      icu::CharString::truncate(__s, v8 - v7);
    }

    v9 = ures_openDirect("icudt76l-curr", "supplementalData", &v26);
    v10 = ures_getByKey(v9, "CurrencyMap", v9, &v26);
    v11 = ures_getByKey(v9, __s[0], v10, &v26);
    v12 = v11;
    if (v26 > U_ZERO_ERROR || ures_getSize(v11) < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v13 = 0;
      do
      {
        v14 = ures_getByIndex(v12, v13, 0, &v26);
        v25 = 0;
        v15 = ures_getByKey(v14, "from", 0, &v26);
        IntVector = ures_getIntVector(v15, &v25, &v26);
        v17 = (IntVector[1] | (*IntVector << 32));
        if (ures_getSize(v14) < 3)
        {
          if (v17 <= a3)
          {
            v6 = (v6 + 1);
          }
        }

        else
        {
          v24 = 0;
          v18 = ures_getByKey(v14, "to", 0, &v26);
          v19 = ures_getIntVector(v18, &v24, &v26);
          if (v17 <= a3 && (v19[1] | (*v19 << 32)) > a3)
          {
            v6 = (v6 + 1);
          }

          if (v18)
          {
            ures_close(v18);
          }
        }

        if (v15)
        {
          ures_close(v15);
        }

        if (v14)
        {
          ures_close(v14);
        }

        ++v13;
      }

      while (v13 < ures_getSize(v12));
    }

    v20 = *a2;
    v21 = v26;
    if (*a2 == U_ZERO_ERROR || v26)
    {
      *a2 = v26;
      v20 = v21;
    }

    v5 = v20 > U_ZERO_ERROR;
    if (v12)
    {
      ures_close(v12);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

  if (v5)
  {
LABEL_32:
    v6 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ucurr_forLocaleAndDate(char *a1, int a2, UChar *a3, int a4, UErrorCode *a5, double a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (!a5 || *a5 > 0)
  {
    v7 = 0;
    goto LABEL_4;
  }

  if (!a3 && a4)
  {
    v7 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_4;
  }

  v37 = U_ZERO_ERROR;
  v41 = 0u;
  v42 = 0u;
  *__s = 0u;
  v40 = 0u;
  ulocimp_getRegionForSupplementalData(a1, a5, 0, __s);
  v7 = 0;
  if (*a5 <= 0)
  {
    v14 = __s[0];
    v15 = strchr(__s[0], 95);
    if (v15)
    {
      icu::CharString::truncate(__s, v15 - v14);
    }

    v16 = ures_openDirect("icudt76l-curr", "supplementalData", &v37);
    v17 = ures_getByKey(v16, "CurrencyMap", v16, &v37);
    v18 = ures_getByKey(v16, __s[0], v17, &v37);
    v19 = v18;
    if (v37 > U_ZERO_ERROR)
    {
      goto LABEL_12;
    }

    if (a2 < 1 || ures_getSize(v18) < a2)
    {
      goto LABEL_24;
    }

    if (ures_getSize(v19) < 1)
    {
LABEL_12:
      StringByKey = 0;
      v21 = 1;
    }

    else
    {
      v33 = 0;
      v25 = 0;
      do
      {
        v26 = ures_getByIndex(v19, v25, 0, &v37);
        StringByKey = ures_getStringByKey(v26, "id", &v38, &v37);
        v36 = 0;
        v27 = ures_getByKey(v26, "from", 0, &v37);
        IntVector = ures_getIntVector(v27, &v36, &v37);
        v29 = (IntVector[1] | (*IntVector << 32));
        if (ures_getSize(v26) < 3)
        {
          v32 = v29 <= a6 && ++v33 == a2;
        }

        else
        {
          v34 = StringByKey;
          v35 = 0;
          v30 = ures_getByKey(v26, "to", 0, &v37);
          v31 = ures_getIntVector(v30, &v35, &v37);
          v32 = v29 <= a6 && (v31[1] | (*v31 << 32)) > a6 && ++v33 == a2;
          if (v30)
          {
            ures_close(v30);
          }

          StringByKey = v34;
        }

        if (v27)
        {
          ures_close(v27);
        }

        if (v26)
        {
          ures_close(v26);
        }

        if (v32)
        {
          break;
        }

        ++v25;
      }

      while (v25 < ures_getSize(v19));
      v21 = !v32;
    }

    v22 = *a5;
    v23 = v37;
    if (*a5 == U_ZERO_ERROR || v37)
    {
      *a5 = v37;
      v22 = v23;
    }

    v24 = v38;
    if (v22 > U_ZERO_ERROR)
    {
      goto LABEL_21;
    }

    if (v38 >= a4)
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      u_strcpy(a3, StringByKey);
      v24 = v38;
LABEL_21:
      v7 = u_terminateUChars(a3, a4, v24, a5);
      goto LABEL_25;
    }

LABEL_24:
    v7 = 0;
LABEL_25:
    if (v19)
    {
      ures_close(v19);
    }
  }

  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void **ucurr_getKeywordValuesForLocale(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  ulocimp_getRegionForSupplementalData(a2, a4, 1, v47);
  if (!DWORD2(v48))
  {
    icu::StringPiece::StringPiece(v38, "US");
    icu::CharString::append(v47, v38[0], v38[1], a4);
  }

  EmptyList = ulist_createEmptyList(a4);
  v8 = ulist_createEmptyList(a4);
  v9 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  KeywordValuesForLocale = v9;
  if (v9 && *a4 < 1)
  {
    v29 = a1;
    v11 = *&off_1F0935608;
    *v9 = xmmword_1F09355F8;
    *(v9 + 1) = v11;
    *(v9 + 2) = xmmword_1F0935618;
    v9[6] = off_1F0935628;
    v9[1] = EmptyList;
    v12 = ures_openDirect("icudt76l-curr", "supplementalData", a4);
    v13 = ures_getByKey(v12, "CurrencyMap", v12, a4);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *v38 = 0u;
    v39 = 0u;
    icu::StackUResourceBundle::StackUResourceBundle(v38);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    icu::StackUResourceBundle::StackUResourceBundle(v36);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    icu::StackUResourceBundle::StackUResourceBundle(v34);
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    icu::StackUResourceBundle::StackUResourceBundle(v32);
    if (*a4 > 0)
    {
      goto LABEL_6;
    }

    while (ures_hasNext(v13))
    {
      ures_getNextResource(v13, v38, a4);
      if (*a4 > 0)
      {
        goto LABEL_6;
      }

      Key = ures_getKey(v38);
      icu::StringPiece::StringPiece(&__s2, Key);
      if (DWORD2(v48) == v31)
      {
        if (!v31)
        {
          v17 = 1;
LABEL_27:
          ures_getByKey(v13, Key, v36, a4);
          while (1)
          {
            do
            {
LABEL_28:
              if (*a4 > 0)
              {
                goto LABEL_6;
              }

              if (!ures_hasNext(v36))
              {
                goto LABEL_24;
              }

              ures_getNextResource(v36, v34, a4);
            }

            while (ures_getType(v34) != 2);
            v18 = malloc_type_malloc(0x60uLL, 0x100004077774924uLL);
            if (!v18)
            {
              *a4 = U_MEMORY_ALLOCATION_ERROR;
              goto LABEL_6;
            }

            v19 = v18;
            LODWORD(__s2) = 96;
            ures_getUTF8StringByKey(v34, "id", v18, &__s2, 1, a4);
            if (*a4 >= 1)
            {
              goto LABEL_6;
            }

            ures_getByKey(v34, "to", v32, a4);
            if (*a4 >= 1 && (*a4 = U_ZERO_ERROR, v17) && (v20 = strlen(v19), !ulist_containsString(EmptyList, v19, v20)))
            {
              v22 = EmptyList;
            }

            else
            {
              v21 = strlen(v19);
              if (ulist_containsString(v8, v19, v21) | a3)
              {
                free(v19);
                goto LABEL_28;
              }

              v22 = v8;
            }

            ulist_addItemEndList(v22, v19, 1, a4);
          }
        }

        v17 = memcmp(*&v47[0], __s2, v31) == 0;
        if (!a3)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 0;
        if (!a3)
        {
          goto LABEL_27;
        }
      }

      if (v17)
      {
        goto LABEL_27;
      }

LABEL_24:
      if (*a4 > 0)
      {
        goto LABEL_6;
      }
    }

    if (*a4 > 0)
    {
LABEL_6:
      ulist_deleteList(EmptyList);
      free(KeywordValuesForLocale);
      KeywordValuesForLocale = 0;
    }

    else
    {
      if (!a3)
      {
        ulist_resetList(v8);
        Next = ulist_getNext(v8);
        if (!Next)
        {
          goto LABEL_54;
        }

        v24 = Next;
        while (1)
        {
          v25 = strlen(v24);
          if (!ulist_containsString(EmptyList, v24, v25))
          {
            v26 = malloc_type_malloc(0x60uLL, 0x100004077774924uLL);
            if (!v26)
            {
              *a4 = U_MEMORY_ALLOCATION_ERROR;
              goto LABEL_54;
            }

            v27 = v26;
            v28 = strlen(v24);
            memcpy(v27, v24, v28 + 1);
            ulist_addItemEndList(EmptyList, v27, 1, a4);
            if (*a4 > 0)
            {
              goto LABEL_54;
            }
          }

          v24 = ulist_getNext(v8);
          if (!v24)
          {
            goto LABEL_54;
          }
        }
      }

      if (!ulist_getListSize(EmptyList))
      {
        uenum_close(KeywordValuesForLocale);
        KeywordValuesForLocale = ucurr_getKeywordValuesForLocale(v29, "und", 1, a4);
      }

LABEL_54:
      ulist_resetList(KeywordValuesForLocale[1]);
    }

    ulist_deleteList(v8);
    icu::StackUResourceBundle::~StackUResourceBundle(v32);
    icu::StackUResourceBundle::~StackUResourceBundle(v34);
    icu::StackUResourceBundle::~StackUResourceBundle(v36);
    icu::StackUResourceBundle::~StackUResourceBundle(v38);
    if (v13)
    {
      ures_close(v13);
    }
  }

  else
  {
    if (v9)
    {
      free(v9);
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }

    ulist_deleteList(EmptyList);
    ulist_deleteList(v8);
    KeywordValuesForLocale = 0;
  }

  if (BYTE12(v47[0]))
  {
    free(*&v47[0]);
  }

  v14 = *MEMORY[0x1E69E9840];
  return KeywordValuesForLocale;
}

BOOL sub_19525C624(uint64_t a1, const void *a2, int a3)
{
  if (*(a1 + 56) != a3)
  {
    return 0;
  }

  if (a3)
  {
    return memcmp(*a1, a2, a3) == 0;
  }

  return 1;
}

uint64_t ucurr_getNumericCode(const UChar *a1)
{
  if (!a1 || u_strlen(a1) != 3)
  {
    return 0;
  }

  v8 = U_ZERO_ERROR;
  v2 = ures_openDirect(0, "currencyNumericCodes", &v8);
  v3 = ures_getByKey(v2, "codeMap", v2, &v8);
  v4 = 0;
  if (v8 <= U_ZERO_ERROR)
  {
    *v7 = 0;
    u_UCharsToChars(a1, v7, 3);
    v7[3] = 0;
    T_CString_toUpperCase(v7);
    ures_getByKey(v3, v7, v3, &v8);
    Int = ures_getInt(v3, &v8);
    if (v8 <= U_ZERO_ERROR)
    {
      v4 = Int;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v3)
  {
    ures_close(v3);
  }

  return v4;
}

void sub_19525C754(uint64_t a1)
{
  sub_19525C7A0(*(a1 + 160), *(a1 + 168));
  sub_19525C7A0(*(a1 + 176), *(a1 + 184));

  free(a1);
}

void sub_19525C7A0(char *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = a1 + 20;
    do
    {
      if (*v4)
      {
        free(*(v4 - 12));
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t sub_19525C808()
{
  for (i = 0; i != 10; ++i)
  {
    v1 = qword_1EAEC9968[i];
    if (v1)
    {
      sub_19525C754(v1);
      qword_1EAEC9968[i] = 0;
    }
  }

  if (qword_1EAEC9960)
  {
    uhash_close(qword_1EAEC9960);
    qword_1EAEC9960 = 0;
  }

  atomic_store(0, &dword_1EAEC9A20);
  v2 = qword_1EAEC9A10;
  if (qword_1EAEC9A10)
  {
    if (*qword_1EAEC9A10)
    {
      uhash_close(*qword_1EAEC9A10);
    }

    MEMORY[0x19A8B2600](v2, 0x10A0C40DD2A5DBALL);
  }

  qword_1EAEC9A10 = 0;
  atomic_store(0, &unk_1EAEC9A18);
  return 1;
}

uint64_t sub_19525C8B0()
{
  if (atomic_load_explicit(dword_1EAEC9A18, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9A18))
  {
    sub_19525CB1C();
  }

  return qword_1EAEC9A10;
}

UChar *sub_19525C904(UChar *src, int32_t srcLength, char *locale)
{
  pErrorCode = U_ZERO_ERROR;
  v6 = u_strToUpper(0, 0, src, srcLength, locale, &pErrorCode);
  v7 = v6;
  pErrorCode = U_ZERO_ERROR;
  if (v6 <= srcLength)
  {
    v8 = srcLength;
  }

  else
  {
    v8 = v6;
  }

  v9 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  v10 = v9;
  if (v9)
  {
    u_strToUpper(v9, v7, src, srcLength, locale, &pErrorCode);
    if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      u_memcpy(v10, src, srcLength);
    }
  }

  return v10;
}

uint64_t sub_19525C9D0(icu::CharString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 14))
  {
    v4 = U_ZERO_ERROR;
    icu::StringPiece::StringPiece(&v5, "en_GB");
    if (sub_19525C624(a1, v5, v6[0]))
    {
      icu::CharString::truncate(a1, 3);
      icu::StringPiece::StringPiece(&v5, "001");
      icu::CharString::append(a1, v5, v6[0], &v4);
    }

    else
    {
      ulocimp_getParent(*a1, &v4, &v5);
      icu::CharString::operator=(a1, &v5);
      if (LOBYTE(v6[1]))
      {
        free(v5);
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19525CABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4 < 1)
  {
LABEL_9:
    v10 = v2 < v3;
    v11 = v2 > v3;
    if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v10 = v7 > v9;
      if (v7 < v9)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10)
      {
        return 1;
      }

      if (!--v4)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_19525CB1C()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = 0;
  sub_1952376A4(0xEu, sub_19525C808);
  operator new();
}

uint64_t sub_19525D0A0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_19525D0D0(void **a1)
{
  free(a1[1]);

  free(a1);
}

uint64_t sub_19525D10C(uint64_t a1)
{
  result = 0;
  v3 = **(a1 + 8);
  v4 = &off_1E74065F8;
  do
  {
    if (v3 == 0x7FFFFFFF || (v3 & ~*(v4 - 2)) == 0)
    {
      result = (result + 1);
    }

    v5 = *v4;
    v4 += 2;
  }

  while (v5);
  return result;
}

uint64_t sub_19525D14C(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  if (v3 <= 0x134)
  {
    v4 = 308;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4 - v3;
  v6 = &(&off_1E74065E8)[2 * v3 + 1];
  v7 = v3 + 1;
  while (v5)
  {
    v8 = v6;
    v2[1] = v7;
    if (*v2 != 0x7FFFFFFF)
    {
      v6 += 2;
      --v5;
      ++v7;
      if ((*v2 & ~*v8) != 0)
      {
        continue;
      }
    }

    if (a2)
    {
      *a2 = 3;
    }

    return *(v8 - 1);
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_19525D1DC(uint64_t a1, const char *DataDirectory, const char *a3, char *__s, const char *a5, char a6, UErrorCode *a7)
{
  *(a1 + 24) = 0;
  v13 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 48) = a1 + 61;
  v14 = (a1 + 48);
  *(a1 + 56) = 40;
  *(a1 + 60) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 125;
  *(a1 + 120) = 40;
  *(a1 + 124) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 189;
  v15 = (a1 + 176);
  *(a1 + 184) = 40;
  *(a1 + 188) = 0;
  *(a1 + 232) = 0;
  if (!DataDirectory)
  {
    DataDirectory = u_getDataDirectory();
  }

  *a1 = DataDirectory;
  if (a3)
  {
    v16 = icu::CharString::append(v15, 47, a7);
    icu::StringPiece::StringPiece(&v22, a3);
    icu::CharString::append(v16, v22, v23, a7);
  }

  v17 = strrchr(__s, 47);
  if (v17)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = __s;
  }

  *(a1 + 16) = v18;
  *(a1 + 40) = strlen(v18);
  v19 = a1;
  if (v18 != __s)
  {
    icu::CharString::append(v14, __s, v18 - __s, a7);
    v19 = v14;
  }

  *(a1 + 8) = *v19;
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = "";
  }

  icu::StringPiece::StringPiece(&v22, v20);
  *v13 = v22;
  *(v13 + 8) = v23;
  *(a1 + 240) = a6;
  return a1;
}

uint64_t sub_19525D35C(uint64_t a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      return 0;
    }

    if (v5 == *(a1 + 48))
    {
      *(a1 + 8) = *a1;
    }

    else
    {
      v6 = strchr(*(a1 + 8), 58);
      *(a1 + 8) = v6;
      if (v6)
      {
        v7 = v6 - v5;
        *(a1 + 8) = v6 + 1;
        if (v6 == v5)
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    v7 = strlen(v5);
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_10:
    *(a1 + 168) = 0;
    **(a1 + 112) = 0;
    icu::CharString::append((a1 + 112), v5, v7, a2);
    v8 = *(a1 + 112);
    v9 = strrchr(v8, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v8;
    }

    if (v7 >= 4)
    {
      if (*(a1 + 240))
      {
        if (!strncmp(&v8[(v7 - 4)], *(a1 + 24), 4uLL))
        {
          v11 = *(a1 + 40);
          if (!strncmp(v10, *(a1 + 16), v11) && strlen(v10) == v11 + 4)
          {
            return *(a1 + 112);
          }
        }
      }
    }

    if (v8[((v7 << 32) - 0x100000000) >> 32] == 47)
    {
      goto LABEL_28;
    }

    if (v7 < 4 || strncmp(&v8[(v7 - 4)], ".dat", 4uLL))
    {
      break;
    }

LABEL_21:
    if (!*a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 232);
  if (v12)
  {
    if (v7 > v12)
    {
      v13 = *(a1 + 232);
      if (!strcmp(&v8[v7 - v12], *(a1 + 176)))
      {
        icu::CharString::truncate(a1 + 112, v7 - v13);
      }
    }
  }

  icu::CharString::append((a1 + 112), 47, a2);
LABEL_28:
  icu::CharString::append((a1 + 112), (*(a1 + 176) + 1), *(a1 + 232) - 1, a2);
  v14 = *(a1 + 32);
  if (v14)
  {
    if (v14 >= 5)
    {
      icu::CharString::ensureEndsWithFileSeparator((a1 + 112), a2);
    }

    icu::CharString::append((a1 + 112), *(a1 + 24), *(a1 + 32), a2);
  }

  return *(a1 + 112);
}

void udata_setCommonData(uint64_t a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    if (a1)
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      sub_19525ECCC(v4);
      sub_19525EDB0(v4, a1);
      sub_195237784(v4, a2);
      if (*a2 <= 0)
      {
        sub_19525D618(v4, 1, a2);
      }
    }

    else
    {
      *a2 = 1;
    }
  }
}

void sub_19525D618(uint64_t a1, int a2, int *a3)
{
  NewInstance = UDataMemory_createNewInstance(a3);
  if (*a3 <= 0)
  {
    v7 = NewInstance;
    sub_19525ECE8(NewInstance, a1);
    umtx_lock(0);
    v8 = 0;
    while (1)
    {
      v9 = qword_1ED442920[v8];
      if (!v9)
      {
        break;
      }

      if (*(v9 + 8) != *(a1 + 8) && ++v8 != 10)
      {
        continue;
      }

      goto LABEL_8;
    }

    qword_1ED442920[v8] = v7;
LABEL_8:
    umtx_unlock(0);
    if (a2 && v8 == 10)
    {
      *a3 = -127;
    }

    if (v9)
    {

      free(v7);
    }

    else
    {

      sub_1952376A4(0x18u, sub_19525E338);
    }
  }
}

void **udata_setAppData(void **result, uint64_t a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    if (a2)
    {
      v5 = result;
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_19525ECCC(v6);
      sub_19525EDB0(v6, a2);
      sub_195237784(v6, a3);
      return sub_19525D7CC(v5, v6, a3);
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

void **sub_19525D7CC(char *a1, uint64_t a2, int *a3)
{
  v16 = 0;
  if (*a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1ED442978, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442978))
  {
    v7 = dword_1ED44297C;
    if (dword_1ED44297C >= 1)
    {
      result = 0;
LABEL_9:
      *a3 = v7;
      return result;
    }
  }

  else
  {
    sub_19525E3AC(a3);
    dword_1ED44297C = *a3;
    icu::umtx_initImplPostInit(&dword_1ED442978);
  }

  if (*a3 > 0)
  {
    return 0;
  }

  v8 = qword_1ED442970;
  result = malloc_type_malloc(0x10uLL, 0x30040EEE2E2AFuLL);
  if (!result)
  {
    v7 = 7;
    goto LABEL_9;
  }

  v9 = result;
  NewInstance = UDataMemory_createNewInstance(a3);
  v9[1] = NewInstance;
  if (*a3 >= 1)
  {
LABEL_13:
    free(v9);
    return 0;
  }

  sub_19525ECE8(NewInstance, a2);
  v11 = strrchr(a1, 47);
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = a1;
  }

  v13 = strlen(v12);
  v14 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
  *v9 = v14;
  if (!v14)
  {
    *a3 = 7;
    free(v9[1]);
    goto LABEL_13;
  }

  strcpy(v14, v12);
  umtx_lock(0);
  v15 = uhash_get(v8, a1);
  if (v15)
  {
    v16 = -127;
  }

  else
  {
    uhash_put(v8, *v9, v9, &v16);
  }

  umtx_unlock(0);
  if (v16 != -127 && v16 < 1)
  {
    return v9[1];
  }

  *a3 = v16;
  free(*v9);
  free(v9[1]);
  free(v9);
  if (v15)
  {
    return *(v15 + 8);
  }

  return 0;
}

void *udata_open(char *a1, const char *a2, const char *a3, UErrorCode *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (a3 && *a3)
    {
      return sub_19525DA08(a1, a2, a3, 0, 0, a4);
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void *sub_19525DA08(char *__s1, const char *a2, const char *a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, UErrorCode *a6)
{
  v9 = __s1;
  v64 = *MEMORY[0x1E69E9840];
  v46 = 0;
  if (!__s1 || !strcmp(__s1, "ICUDATA") || !strncmp(v9, "icudt76l-", 9uLL) || !strncmp(v9, "ICUDATA-", 8uLL))
  {
    v11 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  memset(&v62[1], 0, 48);
  v63 = 0;
  v62[0] = &v62[1] + 5;
  LODWORD(v62[1]) = 40;
  memset(&v61[1], 0, 56);
  v61[0] = &v61[1] + 5;
  LODWORD(v61[1]) = 40;
  memset(&v59[1], 0, 48);
  v60[1] = 0;
  v58[1] = 0;
  v59[0] = &v59[1] + 5;
  LODWORD(v59[1]) = 40;
  v60[0] = 0;
  memset(&v57[1], 0, 48);
  v57[0] = &v57[1] + 5;
  LODWORD(v57[1]) = 40;
  v58[0] = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

  v12 = strrchr(v9, 47);
  v13 = strchr(v9, 47);
  if (uprv_pathIsAbsolute(v9) || v12 != v13)
  {
    if (v12)
    {
      v16 = v12 + 1;
LABEL_20:
      icu::StringPiece::StringPiece(&v52, v16);
      icu::CharString::append(v59, v52, v53[0], a6);
      goto LABEL_21;
    }

LABEL_18:
    v16 = v9;
    goto LABEL_20;
  }

  v14 = strchr(v9, 45);
  if (!v14)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = v14;
  icu::StringPiece::StringPiece(&v52, v14 + 1);
  icu::CharString::append(v57, v52, v53[0], a6);
  if ((v11 & 1) == 0)
  {
LABEL_19:
    v16 = "icudt76l";
    goto LABEL_20;
  }

  icu::CharString::append(v59, v9, v15 - v9, a6);
  if (!v12)
  {
    v9 = v59[0];
  }

LABEL_21:
  icu::CharString::append(v62, v59[0], v60[0], a6);
  icu::CharString::append(v61, v59[0], v60[0], a6);
  v17 = v63;
  if (v58[0])
  {
    v18 = icu::CharString::append(v62, 47, a6);
    icu::CharString::append(v18, v57[0], v58[0], a6);
    v19 = icu::CharString::append(v61, 47, a6);
    icu::CharString::append(v19, v57[0], v58[0], a6);
  }

  v20 = icu::CharString::append(v62, 47, a6);
  icu::StringPiece::StringPiece(&v52, a3);
  icu::CharString::append(v20, v52, v53[0], a6);
  v21 = icu::CharString::append(v61, 47, a6);
  icu::StringPiece::StringPiece(&v52, a3);
  icu::CharString::append(v21, v52, v53[0], a6);
  if (a2 && *a2)
  {
    icu::StringPiece::StringPiece(&v52, ".");
    v22 = icu::CharString::append(v62, v52, v53[0], a6);
    icu::StringPiece::StringPiece(&v52, a2);
    icu::CharString::append(v22, v52, v53[0], a6);
    icu::StringPiece::StringPiece(&v52, ".");
    v23 = icu::CharString::append(v61, v52, v53[0], a6);
    icu::StringPiece::StringPiece(&v52, a2);
    icu::CharString::append(v23, v52, v53[0], a6);
  }

  v24 = v61[0] + v17;
  if (!v9)
  {
    v9 = "icudt76l";
  }

  DataDirectory = u_getDataDirectory();
  if (v10 && !strcmp(a2, "res") && (!strcmp(a3, "zoneinfo64") || !strcmp(a3, "timezoneTypes") || !strcmp(a3, "windowsZones") || !strcmp(a3, "metaZones")) && (TimeZoneFilesDirectory = u_getTimeZoneFilesDirectory(a6), *TimeZoneFilesDirectory))
  {
    v45 = U_ZERO_ERROR;
    *v53 = 0u;
    v55 = 0u;
    v54 = 0u;
    v52 = &v53[1] + 1;
    v53[0] = 40;
    v56 = 0;
    v40 = TimeZoneFilesDirectory;
    icu::StringPiece::StringPiece(&v47, TimeZoneFilesDirectory);
    icu::CharString::append(&v52, v47, v48[0], &v45);
    v31 = icu::CharString::append(&v52, 47, &v45);
    icu::StringPiece::StringPiece(&v47, "icutz44l");
    icu::CharString::append(v31, v47, v48[0], &v45);
    *v48 = 0u;
    v51 = 0;
    v50 = 0u;
    v49 = 0u;
    v47 = &v48[1] + 1;
    v48[0] = 40;
    icu::StringPiece::StringPiece(&v43, "icutz44l");
    icu::CharString::append(&v47, v43, v44, &v45);
    if (v58[0])
    {
      v32 = icu::CharString::append(&v47, 47, &v45);
      icu::CharString::append(v32, v57[0], v58[0], &v45);
    }

    v33 = icu::CharString::append(&v47, 47, &v45);
    icu::StringPiece::StringPiece(&v43, a3);
    icu::CharString::append(v33, v43, v44, &v45);
    if (a2 && *a2)
    {
      icu::StringPiece::StringPiece(&v43, ".");
      v34 = icu::CharString::append(&v47, v43, v44, &v45);
      icu::StringPiece::StringPiece(&v43, a2);
      icu::CharString::append(v34, v43, v44, &v45);
    }

    v35 = sub_19525E494(0, v47, v52, a2, a3, a4, a5, &v46, &v45);
    v36 = (v45 > U_ZERO_ERROR || (v26 = v35) == 0) && (v26 = sub_19525E698("", v40, v24 + 1, "", a2, a3, a4, a5, &v46, a6)) == 0 && *a6 < U_ILLEGAL_ARGUMENT_ERROR;
    if (LOBYTE(v48[1]))
    {
      free(v47);
    }

    if (LOBYTE(v53[1]))
    {
      free(v52);
    }

    if (!v36)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = dword_1EAEC6D30;
  if (dword_1EAEC6D30 == 2)
  {
    v28 = sub_19525E494(v10, v62[0], v9, a2, a3, a4, a5, &v46, a6);
    if (v28)
    {
      goto LABEL_76;
    }

    if (*a6 > 0)
    {
      goto LABEL_78;
    }

    v26 = 0;
    v27 = dword_1EAEC6D30;
  }

  if ((v27 & 0xFFFFFFFD) == 0)
  {
    if (DataDirectory)
    {
      if (*DataDirectory)
      {
        v29 = 0;
      }

      else
      {
        v29 = v10;
      }

      if (v29)
      {
        goto LABEL_36;
      }
    }

    else if (v10)
    {
      goto LABEL_36;
    }

    v28 = sub_19525E698(v59[0], DataDirectory, v24 + 1, v9, a2, a3, a4, a5, &v46, a6);
    if (v28)
    {
      goto LABEL_76;
    }

    if (*a6 > 0)
    {
      goto LABEL_78;
    }

    v26 = 0;
    v27 = dword_1EAEC6D30;
  }

LABEL_36:
  if (v27 <= 1)
  {
    v28 = sub_19525E494(v10, v62[0], v9, a2, a3, a4, a5, &v46, a6);
    if (!v28)
    {
      if (*a6 <= 0)
      {
        v26 = 0;
        v27 = dword_1EAEC6D30;
        goto LABEL_40;
      }

LABEL_78:
      v26 = 0;
      goto LABEL_79;
    }

LABEL_76:
    v26 = v28;
    goto LABEL_79;
  }

LABEL_40:
  if (v27 == 3)
  {
    v26 = sub_19525E494(v10, v62[0], v9, a2, a3, a4, a5, &v46, a6);
    if (v26 || *a6 >= 1)
    {
      goto LABEL_79;
    }
  }

  else if (*a6 > 0)
  {
    goto LABEL_79;
  }

  v37 = v46;
  if (v46 <= 0)
  {
    v37 = 4;
  }

  *a6 = v37;
LABEL_79:
  if (BYTE4(v57[1]))
  {
    free(v57[0]);
  }

  if (BYTE4(v59[1]))
  {
    free(v59[0]);
  }

  if (BYTE4(v61[1]))
  {
    free(v61[0]);
  }

  if (BYTE4(v62[1]))
  {
    free(v62[0]);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v26;
}

void *udata_openChoice(char *a1, const char *a2, const char *a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, UErrorCode *a6)
{
  if (a6 && *a6 <= 0)
  {
    if (a3 && a4 && *a3)
    {
      return sub_19525DA08(a1, a2, a3, a4, a5, a6);
    }

    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

void *udata_getInfo(void *result, unsigned __int16 *a2)
{
  if (a2)
  {
    if (result && (v3 = result[1]) != 0)
    {
      v4 = sub_195237758(v3 + 4);
      v5 = *a2;
      if (v5 > v4)
      {
        *a2 = v4;
        v5 = v4;
      }

      result = memcpy(a2 + 1, v3 + 6, v5 - 2);
      if (v3[8])
      {
        a2[1] = bswap32(*(v3 + 3)) >> 16;
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_19525E338()
{
  if (qword_1ED442970)
  {
    uhash_close(qword_1ED442970);
    qword_1ED442970 = 0;
  }

  v0 = 0;
  atomic_store(0, &dword_1ED442978);
  do
  {
    v1 = qword_1ED442920[v0];
    if (!v1)
    {
      break;
    }

    udata_close(v1);
    qword_1ED442920[v0++] = 0;
  }

  while (v0 != 10);
  atomic_store(0, &unk_1ED442980);
  return 1;
}

void sub_19525E3AC(int *a1)
{
  v2 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a1);
  qword_1ED442970 = v2;
  if (*a1 <= 0)
  {
    uhash_setValueDeleter(v2, sub_19525E450);

    sub_1952376A4(0x18u, sub_19525E338);
  }
}

void sub_19525E450(uint64_t a1)
{
  udata_close(*(a1 + 8));
  free(*a1);

  free(a1);
}

void *sub_19525E494(int a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, int *a8, int *a9)
{
  v13 = 0;
  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  while (1)
  {
    v15 = sub_19525E834(a3, v14, a8);
    v16 = v15;
    v17 = *a8;
    if (*a8 <= 0 && v15 != 0)
    {
      break;
    }

LABEL_12:
    if (v17 == 7)
    {
      result = 0;
      *a9 = 7;
      return result;
    }

    if (!a1)
    {
      return 0;
    }

    if (v16)
    {
      ++v14;
    }

    else
    {
      if (v13)
      {
        return 0;
      }

      v32 = 0;
      v31 = 0u;
      memset(v30, 0, sizeof(v30));
      if (!atomic_load_explicit(dword_1ED442980, memory_order_acquire))
      {
        v21 = sub_19525E834("icudt76l", 0xFFFFFFFF, a8);
        sub_19525ECCC(v30);
        if (v21)
        {
          sub_19525ECE8(v30, v21);
          v31 = 0uLL;
          sub_19525D618(v30, 0, a8);
        }

        atomic_store(1u, dword_1ED442980);
      }

      v22 = sub_19525EB7C("icudt76l", a8);
      if (*a8 > 0)
      {
        return 0;
      }

      v23 = v22;
      if (!v22)
      {
        return 0;
      }

      umtx_lock(0);
      v24 = 0;
      while (1)
      {
        v25 = qword_1ED442920[v24];
        if (v25)
        {
          if (*(v25 + 8) == *(v23 + 8))
          {
            break;
          }
        }

        if (++v24 == 10)
        {
          umtx_unlock(0);
          return 0;
        }
      }

      umtx_unlock(0);
      v13 = 1;
    }
  }

  LODWORD(v30[0]) = 0;
  v19 = (**v15)(v15, a2, v30, a8);
  if (!v19)
  {
    goto LABEL_11;
  }

  result = sub_19525EAC8(v19, a6, a7, a4, a5, a8, a9);
  if (*a9 > 0)
  {
    return 0;
  }

  if (!result)
  {
LABEL_11:
    v17 = *a8;
    goto LABEL_12;
  }

  *(result + 12) = v30[0];
  return result;
}

void *sub_19525E698(const char *a1, const char *a2, const char *a3, char *a4, uint64_t a5, uint64_t a6, unsigned int (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, _DWORD *a9, UErrorCode *a10)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  sub_19525D1DC(v23, a2, a1, a4, a3, 0, a10);
  v14 = sub_19525D35C(v23, a10);
  if (!v14)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v15 = v14;
  while (!uprv_mapFile(v20, v15, a10))
  {
LABEL_7:
    v15 = sub_19525D35C(v23, a10);
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = sub_19525EAC8(*(&v20[0] + 1), a7, a8, a5, a6, a9, a10);
  if (!v16)
  {
    udata_close(v20);
    if (*a10 > 0)
    {
      goto LABEL_8;
    }

    *a9 = 3;
    goto LABEL_7;
  }

  v17 = v16;
  *(v16 + 2) = v21;
  *(v16 + 12) = v22;
LABEL_9:
  if (BYTE4(v32[1]))
  {
    free(v32[0]);
  }

  if (BYTE4(v28[1]))
  {
    free(v28[0]);
  }

  if (BYTE4(v24[1]))
  {
    free(v24[0]);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_19525E834(char *a1, unsigned int a2, int *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_19525ECCC(v15);
  if ((a2 & 0x80000000) != 0)
  {
    v11 = strrchr(a1, 47);
    if (v11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = a1;
    }

    if (!*v12)
    {
      if (*a3 <= 0)
      {
        v3 = 0;
        *a3 = 4;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v3 = sub_19525EB7C(v12, a3);
    if (v3)
    {
      goto LABEL_3;
    }

    if (*a3 > 0)
    {
      goto LABEL_2;
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    DataDirectory = u_getDataDirectory();
    sub_19525D1DC(&v17, DataDirectory, v12, a1, ".dat", 1, a3);
    while (!sub_19525EEE8(v15))
    {
      v14 = sub_19525D35C(&v17, a3);
      if (!v14)
      {
        break;
      }

      uprv_mapFile(v15, v14, a3);
    }

    if (*a3 <= 0)
    {
      if (sub_19525EEE8(v15))
      {
        sub_195237784(v15, a3);
        v3 = sub_19525D7CC(v12, v15, a3);
      }

      else
      {
        v3 = 0;
        *a3 = 4;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_19525EC78(&v17);
  }

  else
  {
    if (a2 > 9)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_3;
    }

    umtx_lock(0);
    v3 = qword_1ED442920[a2];
    if (!v3)
    {
      if (a2)
      {
        v9 = qword_1ED442920;
        v10 = a2;
        while (*(*v9 + 8) != &icudt76_dat)
        {
          ++v9;
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v3 = 0;
      }

      else
      {
LABEL_11:
        umtx_unlock(0);
        *&v20 = 0;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        sub_19525ECCC(&v17);
        sub_19525EDB0(&v17, &icudt76_dat);
        sub_195237784(&v17, a3);
        sub_19525D618(&v17, 0, a3);
        umtx_lock(0);
        v3 = qword_1ED442920[a2];
      }
    }

    umtx_unlock(0);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void *sub_19525EAC8(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  if (*(a1 + 2) == 218 && *(a1 + 3) == 39 && (!a2 || a2(a3, a4, a5, a1 + 4)))
  {
    result = UDataMemory_createNewInstance(a7);
    if (*a7 <= 0)
    {
      result[1] = a1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a6 = 3;
  }

  return result;
}

uint64_t sub_19525EB7C(char *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1ED442978, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442978))
  {
    if (dword_1ED44297C >= 1)
    {
      result = 0;
      *a2 = dword_1ED44297C;
      return result;
    }
  }

  else
  {
    sub_19525E3AC(a2);
    dword_1ED44297C = *a2;
    icu::umtx_initImplPostInit(&dword_1ED442978);
  }

  if (*a2 > 0)
  {
    return 0;
  }

  v5 = qword_1ED442970;
  v6 = strrchr(a1, 47);
  if (v6)
  {
    a1 = v6 + 1;
  }

  umtx_lock(0);
  v7 = uhash_get(v5, a1);
  umtx_unlock(0);
  if (v7)
  {
    return *(v7 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19525EC78(uint64_t a1)
{
  if (*(a1 + 188))
  {
    free(*(a1 + 176));
  }

  if (*(a1 + 124))
  {
    free(*(a1 + 112));
  }

  if (*(a1 + 60))
  {
    free(*(a1 + 48));
  }

  return a1;
}

double sub_19525ECCC(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = -1;
  return result;
}

__n128 sub_19525ECE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 48) = v5;
  *(a1 + 32) = result;
  *(a1 + 24) = v2;
  return result;
}

void *UDataMemory_createNewInstance(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  result = malloc_type_malloc(0x38uLL, 0x10E0040B3FCEC02uLL);
  if (result)
  {
    result[6] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    *(result + 12) = -1;
    *(result + 24) = 1;
  }

  else
  {
    *a1 = 7;
  }

  return result;
}

uint64_t sub_19525ED8C(uint64_t result)
{
  if (result && (*(result + 2) != 218 || *(result + 3) != 39))
  {
    result += 8;
  }

  return result;
}

uint64_t sub_19525EDB0(uint64_t result, uint64_t a2)
{
  if (a2 && (*(a2 + 2) != 218 || *(a2 + 3) != 39))
  {
    a2 += 8;
  }

  *(result + 8) = a2;
  return result;
}

double udata_close(_OWORD *a1)
{
  if (a1)
  {
    sub_19526F8B0(a1);
    if (*(a1 + 24))
    {

      free(a1);
    }

    else
    {
      *(a1 + 6) = 0;
      result = 0.0;
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
      *(a1 + 12) = -1;
    }
  }

  return result;
}

uint64_t udata_getMemory(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      return v1 + sub_19523772C(*(result + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t udata_getLength(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 - sub_19523772C(v2);
  }
}

uint64_t udata_getRawMemory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *(a1 + 8);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t udata_swapInvStringBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v8 = a3, (a3 & 0x80000000) == 0) && (!a3 || a4))
  {
    if (a3)
    {
      v10 = a3;
      while (*(a2 - 1 + v10))
      {
        v11 = __OFSUB__(v10, 1);
        v10 = (v10 - 1);
        if ((v10 < 0) ^ v11 | (v10 == 0))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }

    (*(a1 + 72))(a1, a2, v10, a4, a5);
    if (a2 != a4 && v8 > v10)
    {
      memcpy((a4 + v10), (a2 + v10), v8 - v10);
    }

    if (*a5 <= 0)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a5 = 1;
  }

  return result;
}

uint64_t udata_printError(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 80))
  {
    return (*(result + 80))(*(result + 88), a2, &a9);
  }

  return result;
}

size_t udata_swapDataHeader(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (v12 = a3, a3 < -1) || a3 >= 1 && !a4)
  {
    v9 = 0;
    v14 = 1;
LABEL_21:
    *a5 = v14;
    return v9;
  }

  if (a3 < 0x18 || *(a2 + 2) != 218 || *(a2 + 3) != 39 || *(a2 + 10) != 2)
  {
    udata_printError(a1, "udata_swapDataHeader(): initial bytes do not look like ICU data\n", a3, a4, a5, a6, a7, a8, v27);
    v9 = 0;
    v14 = 16;
    goto LABEL_21;
  }

  v15 = (*(a1 + 8))(*a2);
  v16 = (*(a1 + 8))(a2[2]);
  v9 = v15;
  if (v15 < 0x18 || v16 < 0x14 || (v23 = v16 + 4, v23 > v9) || (v12 & 0x80000000) == 0 && v9 > v12)
  {
    udata_printError(a1, "udata_swapDataHeader(): header size mismatch - headerSize %d infoSize %d length %d\n", v17, v18, v19, v20, v21, v22, v9);
    v9 = 0;
    v14 = 8;
    goto LABEL_21;
  }

  if (v12 >= 1)
  {
    if (a2 != a4)
    {
      memcpy(a4, a2, v9);
    }

    a4[4] = *(a1 + 2);
    (*(a1 + 48))(a1, a2, 2, a4, a5);
    (*(a1 + 48))(a1, a2 + 2, 4, a4 + 2, a5);
    v25 = (v9 - v23);
    if (v25 >= 1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (!*(a2 + v23 + i))
        {
          break;
        }
      }
    }

    (*(a1 + 72))(a1);
  }

  return v9;
}

_OWORD *udata_openSwapper(int a1, unsigned int a2, int a3, int a4, int *a5)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 > 0)
  {
    return 0;
  }

  if ((a4 | a2) >= 2)
  {
    result = 0;
    v22 = 1;
LABEL_31:
    *a5 = v22;
    return result;
  }

  result = malloc_type_malloc(0x60uLL, 0x10800403B716175uLL);
  if (!result)
  {
    v22 = 7;
    goto LABEL_31;
  }

  *result = 0u;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  *result = a1;
  *(result + 1) = a2;
  *(result + 2) = a3;
  *(result + 3) = a4;
  if (a1)
  {
    v11 = sub_19525F484;
  }

  else
  {
    v11 = nullsub_19;
  }

  v12 = sub_19525F490;
  if (!a1)
  {
    v12 = nullsub_20;
  }

  *(result + 1) = v11;
  *(result + 2) = v12;
  if (a3)
  {
    v13 = sub_19525F4A0;
  }

  else
  {
    v13 = sub_19525F498;
  }

  v14 = sub_19525F4B4;
  if (!a3)
  {
    v14 = sub_19525F4AC;
  }

  *(result + 4) = v13;
  *(result + 5) = v14;
  v15 = sub_195262808;
  if (!a4)
  {
    v15 = sub_19526270C;
  }

  *(result + 3) = v15;
  if (a1 == a3)
  {
    v16 = sub_19525F4C0;
  }

  else
  {
    v16 = sub_19525F630;
  }

  if (a1 == a3)
  {
    v17 = sub_19525F538;
  }

  else
  {
    v17 = sub_19525F69C;
  }

  v18 = sub_19525F708;
  if (a1 == a3)
  {
    v18 = sub_19525F5B4;
  }

  *(result + 6) = v16;
  *(result + 7) = v17;
  *(result + 8) = v18;
  if (a2)
  {
    v19 = a4 == 1;
    v20 = sub_195262504;
    v21 = sub_1952625E4;
  }

  else
  {
    v19 = a4 == 0;
    v20 = uprv_ebcdicFromAscii;
    v21 = sub_195262420;
  }

  if (v19)
  {
    v20 = v21;
  }

  *(result + 9) = v20;
  return result;
}

size_t sub_19525F4C0(uint64_t a1, const void *a2, size_t __n, void *__dst, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v5 = __n, (__n & 0x80000000) == 0) && (__n & 1) == 0 && __dst)
  {
    if (__n && a2 != __dst)
    {
      memcpy(__dst, a2, __n);
    }
  }

  else
  {
    v5 = 0;
    *a5 = 1;
  }

  return v5;
}

size_t sub_19525F538(uint64_t a1, const void *a2, size_t __n, void *__dst, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v5 = __n, (__n & 0x80000000) == 0) && (__n & 3) == 0 && __dst)
  {
    if (__n && a2 != __dst)
    {
      memcpy(__dst, a2, __n);
    }
  }

  else
  {
    v5 = 0;
    *a5 = 1;
  }

  return v5;
}

size_t sub_19525F5B4(uint64_t a1, const void *a2, size_t __n, void *__dst, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v5 = __n, (__n & 0x80000000) == 0) && (__n & 7) == 0 && __dst)
  {
    if (__n && a2 != __dst)
    {
      memcpy(__dst, a2, __n);
    }
  }

  else
  {
    v5 = 0;
    *a5 = 1;
  }

  return v5;
}

uint64_t sub_19525F630(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (a3 & 0x80000000) == 0 && (a3 & 1) == 0 && a4)
  {
    if (a3)
    {
      v6 = (a3 >> 1) + 1;
      do
      {
        v7 = *a2++;
        *a4++ = bswap32(v7) >> 16;
        --v6;
      }

      while (v6 > 1);
    }
  }

  else
  {
    a3 = 0;
    *a5 = 1;
  }

  return a3;
}

uint64_t sub_19525F69C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (a3 & 0x80000000) == 0 && (a3 & 3) == 0 && a4)
  {
    if (a3)
    {
      v6 = (a3 >> 2) + 1;
      do
      {
        v7 = *a2++;
        *a4++ = bswap32(v7);
        --v6;
      }

      while (v6 > 1);
    }
  }

  else
  {
    a3 = 0;
    *a5 = 1;
  }

  return a3;
}

uint64_t sub_19525F708(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (a3 & 0x80000000) == 0 && (a3 & 7) == 0 && a4)
  {
    if (a3)
    {
      v6 = (a3 >> 3) + 1;
      do
      {
        v7 = *a2++;
        *a4++ = bswap64(v7);
        --v6;
      }

      while (v6 > 1);
    }
  }

  else
  {
    a3 = 0;
    *a5 = 1;
  }

  return a3;
}

_OWORD *udata_openSwapperForInputData(unsigned __int16 *a1, unsigned int a2, int a3, unsigned int a4, int *a5)
{
  if (a5 && *a5 <= 0)
  {
    if (a1 && a2 >= 0x18 && a4 < 2)
    {
      if (*(a1 + 2) == 218 && *(a1 + 3) == 39 && *(a1 + 10) == 2)
      {
        v5 = *a1;
        if (*(a1 + 8))
        {
          v5 = __rev16(v5);
          v6 = bswap32(a1[2]) >> 16;
        }

        else
        {
          v6 = a1[2];
        }

        if (v5 <= a2 && v5 >= 0x18 && v6 >= 0x14 && v6 + 4 <= v5)
        {
          return udata_openSwapper(*(a1 + 8), *(a1 + 9), a3, a4, a5);
        }
      }

      v7 = 16;
    }

    else
    {
      v7 = 1;
    }

    *a5 = v7;
  }

  return 0;
}

void uenum_close(void **a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = *a1;
      if (*a1)
      {
        free(v3);
        v2 = a1[2];
      }

      v2(a1);
    }

    else
    {

      free(a1);
    }
  }
}

uint64_t uenum_count(uint64_t a1, int *a2)
{
  if (!a1 || *a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    *a2 = 16;
    return 0xFFFFFFFFLL;
  }

  return v3();
}

UChar *uenum_unextDefault(uint64_t a1, _DWORD *a2, int *a3)
{
  v12 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = v5();
    if (!v7)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = v7;
    v9 = sub_19525F998(a1, 2 * v12 + 2);
    if (v9)
    {
      u_charsToUChars(v8, v9, v12 + 1);
      goto LABEL_9;
    }

    v10 = 7;
  }

  else
  {
    v9 = 0;
    v10 = 16;
  }

  *a3 = v10;
LABEL_9:
  if (a2)
  {
    *a2 = v12;
  }

  return v9;
}

_DWORD *sub_19525F998(_DWORD **a1, int a2)
{
  result = *a1;
  if (result)
  {
    if (*result >= a2)
    {
      return ++result;
    }

    result = malloc_type_realloc(result, a2 + 12, 0x100004052888210uLL);
  }

  else
  {
    result = malloc_type_malloc(a2 + 12, 0x100004052888210uLL);
  }

  *a1 = result;
  if (!result)
  {
    return result;
  }

  *result = a2 + 8;
  return ++result;
}

char *uenum_nextDefault(uint64_t a1, _DWORD *a2, int *a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v9 = 0;
    v10 = 16;
LABEL_8:
    *a3 = v10;
    return v9;
  }

  v7 = v4();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_19525F998(a1, *a2 + 1);
  if (!v9)
  {
    v10 = 7;
    goto LABEL_8;
  }

  u_UCharsToChars(v8, v9, *a2 + 1);
  return v9;
}

uint64_t uenum_unext(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a1 || *a3 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    *a3 = 16;
    return 0;
  }

  return v4();
}

uint64_t uenum_next(uint64_t result, uint64_t a2, int *a3)
{
  if (result)
  {
    if (*a3 <= 0)
    {
      v5 = *(result + 40);
      if (v5)
      {
        if (a2)
        {

          return v5();
        }

        else
        {
          v7 = v3;
          v8 = v4;
          v6 = 0;
          return v5();
        }
      }

      else
      {
        result = 0;
        *a3 = 16;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uenum_reset(uint64_t result, int *a2)
{
  if (result && *a2 <= 0)
  {
    v2 = *(result + 48);
    if (v2)
    {
      return v2();
    }

    else
    {
      *a2 = 16;
    }
  }

  return result;
}

int32x2_t *sub_19525FB94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v12 = malloc_type_malloc(0x50uLL, 0x10A00409C0E02B0uLL);
  v5 = v12;
  if (!v12)
  {
    *a5 = 7;
    return v5;
  }

  sub_19525FC88(v12, a1, a2, a3, a4, a5);
  v5[9].i8[1] = 1;
  if (*a5 >= 1)
  {
    free(v5);
    return 0;
  }

  return v5;
}

int32x2_t *uhash_openSize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  for (i = 0; i != 28; ++i)
  {
    if (dword_19547B750[i] >= a4)
    {
      break;
    }
  }

  return sub_19525FB94(a1, a2, a3, i, a5);
}

int32x2_t *sub_19525FC88(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  a1[1] = a2;
  a1[2] = a3;
  a1[9].i8[1] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = a4;
  a1[8] = 1056964608;
  sub_195260B6C(a1, a5, a6);
  if (*a6 >= 1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

int32x2_t *uhash_initSize(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  for (i = 0; i != 28; ++i)
  {
    if (dword_19547B750[i] >= a5)
    {
      break;
    }
  }

  return sub_19525FC88(a1, a2, a3, a4, i, a6);
}

void uhash_close(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (a1[4] || a1[5])
      {
        LODWORD(v3) = -1;
LABEL_6:
        v3 = v3;
        v2 = *a1;
        v4 = (*a1 + 24 * v3 + 24);
        while (++v3 < *(a1 + 13))
        {
          v5 = v4 + 6;
          v6 = *v4;
          v4 += 6;
          if ((v6 & 0x80000000) == 0)
          {
            v7 = a1[4];
            if (v7 && *(v5 - 1))
            {
              v7();
            }

            v8 = a1[5];
            if (v8)
            {
              if (*(v5 - 2))
              {
                v8();
              }
            }

            goto LABEL_6;
          }
        }
      }

      free(v2);
      *a1 = 0;
    }

    if (*(a1 + 73))
    {

      free(a1);
    }
  }
}

uint64_t uhash_nextElement(uint64_t *a1, int *a2)
{
  v2 = *a2;
  v3 = v2 + 1;
  v4 = 24 * v2;
  while (v3 < *(a1 + 13))
  {
    v5 = *a1;
    v6 = *(*a1 + v4 + 24);
    LODWORD(v2) = v2 + 1;
    ++v3;
    v4 += 24;
    if ((v6 & 0x80000000) == 0)
    {
      *a2 = v2;
      return v5 + v4;
    }
  }

  return 0;
}

uint64_t uhash_setKeyHasher(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = a2;
  return v2;
}

uint64_t uhash_setKeyComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t uhash_setValueComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  return v2;
}

uint64_t uhash_setKeyDeleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  return v2;
}

uint64_t uhash_setValueDeleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  return v2;
}

void uhash_setResizePolicy(int32x2_t *a1, int a2)
{
  v3 = 0;
  v2 = qword_19547B7C4[a2];
  a1[7] = vrev64_s32(vcvt_s32_f32(vmul_n_f32(v2, a1[6].i32[1])));
  a1[8] = vrev64_s32(v2);
  sub_19525FEEC(a1, &v3);
}

void sub_19525FEEC(int32x2_t *a1, int *a2)
{
  v4 = *a1;
  v5 = a1[9].i8[0];
  v6 = a1[6].i32[0];
  v7 = a1[6].u32[1];
  if (v6 <= a1[7].i32[0])
  {
    if (v6 >= a1[7].i32[1] || v5 < 1)
    {
      return;
    }

    v8 = v5 - 1;
  }

  else
  {
    if (v5 > 27)
    {
      return;
    }

    v8 = v5 + 1;
  }

  sub_195260B6C(a1, v8, a2);
  if (*a2 <= 0)
  {
    if (v7 >= 1)
    {
      v10 = v7 + 1;
      v11 = &v4[24 * v7 - 8];
      do
      {
        v12 = *(v11 - 4);
        if ((v12 & 0x80000000) == 0)
        {
          v13 = sub_195260044(a1, *v11, v12);
          *(v13 + 2) = *v11;
          *(v13 + 1) = *(v11 - 1);
          *v13 = *(v11 - 4);
          ++a1[6].i32[0];
        }

        --v10;
        v11 -= 3;
      }

      while (v10 > 1);
    }

    free(v4);
  }

  else
  {
    *a1 = v4;
    a1[6].i32[1] = v7;
  }
}

int *sub_195260044(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = 0;
  v5 = a3 & 0x7FFFFFFF;
  v6 = *(a1 + 13);
  v7 = (a3 & 0x7FFFFFFF ^ 0x4000000) % v6;
  v8 = *a1;
  v9 = -1;
  v10 = v7;
  do
  {
    v11 = (v8 + 24 * v10);
    v12 = *v11;
    if (*v11 == v5)
    {
      if ((a1[2])(a2, *(v11 + 2)))
      {
        return v11;
      }

      v6 = *(a1 + 13);
    }

    else if (v12 < 0)
    {
      if (v9 < 0)
      {
        v9 = v10;
      }

      if (v12 == -2147483647)
      {
        return (v8 + 24 * v9);
      }
    }

    if (!v4)
    {
      v4 = v5 % (v6 - 1) + 1;
    }

    v10 = (v4 + v10) % v6;
  }

  while (v10 != v7);
  if (v9 < 0)
  {
    v9 = v7;
    if (v12 != -2147483647)
    {
      abort();
    }
  }

  return (v8 + 24 * v9);
}

uint64_t uhash_iget(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (*(a1 + 8))(a2);
  return *(sub_195260044(a1, v3, v4) + 1);
}

uint64_t uhash_igeti(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (*(a1 + 8))(a2);
  return sub_195260044(a1, v3, v4)[2];
}

uint64_t uhash_getiAndFound(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v6 = (*(a1 + 8))(a2);
  v7 = sub_195260044(a1, a2, v6);
  *a3 = *v7 >= 0;
  return v7[2];
}

uint64_t uhash_igetiAndFound(uint64_t a1, unsigned int a2, BOOL *a3)
{
  v5 = a2;
  v6 = (*(a1 + 8))(a2);
  v7 = sub_195260044(a1, v5, v6);
  *a3 = *v7 >= 0;
  return v7[2];
}

uint64_t sub_1952602E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int *a5)
{
  if (*a5 > 0)
  {
LABEL_2:
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = a2 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v8(a2);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = a3 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v10(a3);
    }

    return 0;
  }

  if ((a4 & 2) != 0)
  {
    if (!a3)
    {
LABEL_16:

      return sub_1952604F0(a1, a2);
    }
  }

  else if (!a3 && (a4 & 4) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 48) > *(a1 + 56))
  {
    sub_19525FEEC(a1, a5);
    if (*a5 > 0)
    {
      goto LABEL_2;
    }
  }

  v14 = (*(a1 + 8))(a2);
  v15 = sub_195260044(a1, a2, v14);
  if (*v15 < 0)
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 52);
    *(a1 + 48) = v16 + 1;
    if (v16 + 1 == v17)
    {
      *(a1 + 48) = v16;
      *a5 = 7;
      goto LABEL_2;
    }
  }

  return sub_195260C2C(a1, v15, v14 & 0x7FFFFFFF, a2, a3);
}

uint64_t sub_1952604F0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8))(a2);
  v5 = sub_195260044(a1, a2, v4);
  if (*v5 < 0)
  {
    return 0;
  }

  --*(a1 + 48);
  v6 = sub_195260C2C(a1, v5, 0x80000000, 0, 0);
  if (*(a1 + 48) < *(a1 + 60))
  {
    v8 = 0;
    sub_19525FEEC(a1, &v8);
  }

  return v6;
}

uint64_t uhash_removeAll(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    LODWORD(v2) = -1;
LABEL_3:
    v3 = 24 * v2;
    v2 = v2;
    while (++v2 < *(v1 + 52))
    {
      v4 = v3 + 24;
      v5 = *(*v1 + v3 + 24);
      v3 += 24;
      if ((v5 & 0x80000000) == 0)
      {
        result = uhash_removeElement(v1, (*v1 + v4));
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t uhash_removeElement(uint64_t a1, _DWORD *a2)
{
  if ((*a2 & 0x80000000) != 0)
  {
    return 0;
  }

  --*(a1 + 48);
  return sub_195260C2C(a1, a2, 0x80000000, 0, 0);
}

BOOL uhash_icontainsKey(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (*(a1 + 8))(a2);
  return *sub_195260044(a1, v3, v4) >= 0;
}

int *uhash_find(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8))(a2);
  result = sub_195260044(a1, a2, v4);
  if (*result < 0)
  {
    return 0;
  }

  return result;
}

const UChar *uhash_hashUChars(const UChar *result)
{
  if (result)
  {
    v1 = result;
    v2 = u_strlen(result);

    return ustr_hashUCharsN(v1, v2);
  }

  return result;
}

const char *uhash_hashChars(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);

    return ustr_hashCharsN(v1, v2);
  }

  return result;
}

unsigned __int8 *uhash_hashIChars(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);

    return ustr_hashICharsN(v1, v2);
  }

  return result;
}

unsigned __int8 *uhash_hashIStringView(unsigned __int8 *result)
{
  if (result)
  {
    return ustr_hashICharsN(*result, *(result + 2));
  }

  return result;
}

uint64_t uhash_equals(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    result = 0;
    v5 = *(a1 + 24);
    if (v5 && v5 == *(a2 + 24))
    {
      v6 = *(a1 + 48);
      if (v6 != *(a2 + 48))
      {
        return 0;
      }

      if (v6 < 1)
      {
        return 1;
      }

      else
      {
        v7 = 0;
        v8 = -1;
        do
        {
          v9 = (*a1 + 24 * v8 + 24);
          do
          {
            ++v8;
            v10 = *v9;
            v9 += 6;
          }

          while (v10 < 0);
          v12 = *(v9 - 2);
          v11 = *(v9 - 1);
          v13 = (*(a2 + 8))(v11);
          v14 = sub_195260044(a2, v11, v13);
          result = (*(a1 + 24))(v12, *(v14 + 1));
          if (!result)
          {
            break;
          }

          ++v7;
          result = 1;
        }

        while (v7 != v6);
      }
    }
  }

  return result;
}

BOOL uhash_compareUChars(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = a1 + 1;
      do
      {
        if (v4 != *a2)
        {
          break;
        }

        ++a2;
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    return v4 == *a2;
  }

  return result;
}

BOOL uhash_compareChars(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = a1 + 1;
      do
      {
        if (v4 != *a2)
        {
          break;
        }

        ++a2;
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }

    return v4 == *a2;
  }

  return result;
}

BOOL uhash_compareIChars(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = *a1;
      if (*a1)
      {
        v6 = a1 + 1;
        while (1)
        {
          v7 = uprv_asciitolower(v5);
          if (v7 != uprv_asciitolower(*v4))
          {
            break;
          }

          ++v4;
          v8 = *v6++;
          v5 = v8;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        v9 = *(v6 - 1);
      }

      else
      {
LABEL_10:
        v9 = 0;
      }

      return v9 == *v4;
    }
  }

  return result;
}

uint64_t uhash_compareIStringView(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = a1[1];
    if (v5 == a2[1])
    {
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = uprv_asciitolower(*(*a1 + v6));
          v8 = v7 == uprv_asciitolower(*(*a2 + v6));
          result = v8;
          if (!v8)
          {
            break;
          }

          ++v6;
        }

        while (v6 < a1[1]);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int32x2_t *sub_195260B6C(int32x2_t *result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    v4 = result;
    result[9].i8[0] = a2;
    v5 = dword_19547B750[a2];
    result[6].i32[1] = v5;
    result = malloc_type_malloc(24 * v5, 0x1082040D44858EFuLL);
    *v4 = result;
    if (result)
    {
      v6 = v4[6].i32[1];
      if (v6 >= 1)
      {
        v7 = &result[3 * v6];
        do
        {
          result[1] = 0;
          result[2] = 0;
          result->i32[0] = -2147483647;
          result += 3;
        }

        while (result < v7);
        v6 = v4[6].i32[1];
      }

      v4[6].i32[0] = 0;
      v4[7] = vcvt_s32_f32(vmul_n_f32(v4[8], v6));
    }

    else
    {
      *a3 = 7;
    }
  }

  return result;
}

uint64_t sub_195260C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 8);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(a2 + 16);
    if (v12 && v12 != a4)
    {
      v11();
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    if (v10)
    {
      v15 = v10 == a5;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v14(v10);
    }

    v10 = 0;
  }

  *(a2 + 8) = a5;
  *(a2 + 16) = a4;
  *a2 = a3;
  return v10;
}

void ***uhash_deleteHashtable(void ***result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      uhash_close(v1);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_195260DF8(UChar *s, uint64_t a2, UChar *a3, int a4, char a5, uint64_t a6, uint64_t a7, int *a8)
{
  v14 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v14 = u_strlen(s);
  }

  v51 = 0;
  memset(v50, 0, sizeof(v50));
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (v14 < 101)
  {
    v16 = v50;
    if (v14 < 1)
    {
      v14 = 0;
LABEL_19:
      v23 = *a8;
      v18 = v14;
      goto LABEL_20;
    }

    v17 = 100;
  }

  else
  {
    v16 = malloc_type_malloc((2 * v14), 0x1000040BDFB0063uLL);
    v17 = v14;
    if (!v16)
    {
LABEL_5:
      v16 = 0;
      v18 = 0;
      *a8 = 7;
      v19 = v48;
      goto LABEL_24;
    }
  }

  v20 = 0;
  v21 = 1;
  do
  {
    v22 = s[v20];
    if (v22 > 0x7F)
    {
      v21 = 0;
    }

    v16[v20++] = v22;
  }

  while (v14 != v20);
  if (v21)
  {
    goto LABEL_19;
  }

  v18 = usprep_prepare(a6, s, v14, v16, v17, a5 & 1, a7, a8);
  v23 = *a8;
  if (*a8 == 15)
  {
    if (v16 != v50)
    {
      free(v16);
    }

    v24 = malloc_type_malloc(2 * v18, 0x1000040BDFB0063uLL);
    if (!v24)
    {
      goto LABEL_5;
    }

    v16 = v24;
    *a8 = 0;
    v14 = usprep_prepare(a6, s, v14, v24, v18, a5 & 1, a7, a8);
    goto LABEL_19;
  }

LABEL_20:
  if (v23 > 0)
  {
    goto LABEL_21;
  }

  if (!v18)
  {
    *a8 = 66567;
    goto LABEL_22;
  }

  if (v18 < 1)
  {
    if ((a5 & 2) != 0)
    {
      v37 = 0;
      goto LABEL_58;
    }

LABEL_77:
    if (v18 > a4)
    {
      goto LABEL_22;
    }

    u_memmove(a3, v16, v18);
    v19 = v48;
    goto LABEL_79;
  }

  v27 = 0;
  v28 = 1;
  v29 = -1;
  v30 = 1;
  v31 = v18;
  do
  {
    v32 = v16[v27];
    if (v32 > 0x7F)
    {
      v30 = 0;
      goto LABEL_51;
    }

    if (v32 > 0x7A)
    {
      v33 = 1;
LABEL_48:
      v28 = 0;
      goto LABEL_49;
    }

    v36 = v32 - 58 >= 0xFFFFFFF6 || v32 - 91 >= 0xFFFFFFE6 || v32 == 45 || v32 >= 0x61;
    v33 = !v36;
    if (!v36)
    {
      goto LABEL_48;
    }

LABEL_49:
    if (v33)
    {
      v29 = v27;
    }

LABEL_51:
    ++v27;
  }

  while (v18 != v27);
  v37 = v30 == 0;
  if ((a5 & 2) != 0)
  {
    if (!v28)
    {
      *a8 = 66563;
      v38 = v16;
      goto LABEL_64;
    }

LABEL_58:
    if (*v16 == 45)
    {
      v39 = 66563;
      goto LABEL_60;
    }

    if (v16[v18 - 1] == 45)
    {
      *a8 = 66563;
      v29 = v18 - (v18 > 0);
      v38 = v16;
      goto LABEL_63;
    }
  }

  if (!v37)
  {
    goto LABEL_77;
  }

  if (v18 < 4)
  {
    goto LABEL_81;
  }

  v40 = *v16;
  if ((v40 - 65) < 0x1A)
  {
    v40 |= 0x20u;
  }

  if (v40 != 120)
  {
LABEL_81:
    v19 = v48;
    v45 = u_strToPunycode(v16, v18, v48, 100, 0, a8);
    v46 = v45;
    v47 = *a8;
    if (*a8 == 15)
    {
      v19 = malloc_type_malloc(2 * v45, 0x1000040BDFB0063uLL);
      if (!v19)
      {
        v18 = 0;
        v44 = 7;
        goto LABEL_89;
      }

      *a8 = 0;
      v46 = u_strToPunycode(v16, v18, v19, v46, 0, a8);
      v47 = *a8;
    }

    if (v47 > 0)
    {
      v18 = 0;
      goto LABEL_23;
    }

    v18 = (v46 + 4);
    if (v18 > a4)
    {
      v44 = 15;
LABEL_89:
      *a8 = v44;
      goto LABEL_23;
    }

    u_memcpy(a3, aXn, 4);
    u_memcpy(a3 + 4, v19, v46);
LABEL_79:
    if (v18 < 64)
    {
      goto LABEL_23;
    }

    v44 = 66566;
    goto LABEL_89;
  }

  v41 = 1;
  while (v41 != 4)
  {
    v42 = v16[v41];
    if ((v42 - 65) < 0x1A)
    {
      v42 |= 0x20u;
    }

    v43 = aXn[v41++];
    if (v42 != v43)
    {
      if ((v41 - 2) <= 2)
      {
        goto LABEL_81;
      }

      break;
    }
  }

  v39 = 66564;
LABEL_60:
  *a8 = v39;
  v38 = v16;
  v29 = 0;
LABEL_63:
  v31 = v18;
LABEL_64:
  uprv_syntaxError(v38, v29, v31, a7);
LABEL_21:
  v18 = 0;
LABEL_22:
  v19 = v48;
LABEL_23:
  if (v16 != v50)
  {
LABEL_24:
    free(v16);
  }

  if (v19 != v48)
  {
    free(v19);
  }

  result = u_terminateUChars(a3, a4, v18, a8);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952613E4(UChar *a1, uint64_t a2, UChar *dest, int a4, int32_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v12 = a4;
  v64 = *MEMORY[0x1E69E9840];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *desta = 0u;
  v48 = 0u;
  if (a2 == -1)
  {
    v18 = *a1;
    if (!*a1)
    {
      v15 = 0;
      v21 = a1;
LABEL_42:
      if (v15 <= v12)
      {
        u_memmove(dest, a1, v15);
      }

      v30 = v60;
      v32 = desta;
      v25 = v15;
      goto LABEL_49;
    }

    v46 = a4;
    v17 = 0;
    v19 = 1;
    do
    {
      if (v18 > 0x7F)
      {
        v19 = 0;
      }

      v20 = &a1[v17++];
      v18 = v20[1];
    }

    while (v18);
    if (v19)
    {
      v15 = v17;
LABEL_14:
      v21 = a1;
      goto LABEL_23;
    }

    v15 = v17;
  }

  else
  {
    v15 = a2;
    if (a2 < 1)
    {
      result = 0;
      goto LABEL_62;
    }

    v16 = 0;
    v46 = a4;
    while (a1[v16] <= 0x7Fu)
    {
      if (a2 == ++v16)
      {
        LODWORD(v17) = a2;
        goto LABEL_14;
      }
    }
  }

  v21 = v62;
  v23 = usprep_prepare(a6, a1, v15, v62, 100, a5 & 1, a7, a8);
  LODWORD(v17) = v23;
  v24 = *a8;
  if (*a8 == 15)
  {
    v21 = malloc_type_malloc(2 * v23, 0x1000040BDFB0063uLL);
    if (!v21)
    {
      v25 = 0;
      *a8 = 7;
      goto LABEL_46;
    }

    *a8 = 0;
    LODWORD(v17) = usprep_prepare(a6, a1, v15, v21, v17, a5 & 1, a7, a8);
    v24 = *a8;
  }

  if (v24 > 0)
  {
    v25 = 0;
LABEL_46:
    v30 = v60;
LABEL_47:
    v32 = desta;
    goto LABEL_48;
  }

LABEL_23:
  if (v17 < 4)
  {
    goto LABEL_41;
  }

  v26 = *v21;
  if ((v26 - 65) < 0x1A)
  {
    v26 |= 0x20u;
  }

  if (v26 != 120)
  {
LABEL_41:
    v12 = v46;
    goto LABEL_42;
  }

  v27 = 1;
  while (v27 != 4)
  {
    v28 = v21[v27];
    if ((v28 - 65) < 0x1A)
    {
      v28 |= 0x20u;
    }

    v29 = aXn[v27++];
    if (v28 != v29)
    {
      if ((v27 - 2) < 3)
      {
        goto LABEL_41;
      }

      break;
    }
  }

  parseError = a7;
  v30 = v60;
  v31 = u_strFromPunycode(v21 + 4, (v17 - 4), v60, 100, 0, a8);
  v25 = v31;
  if (*a8 == 15)
  {
    v30 = malloc_type_malloc(2 * v31, 0x1000040BDFB0063uLL);
    if (!v30)
    {
      v25 = 0;
      *a8 = 7;
      goto LABEL_47;
    }

    *a8 = 0;
    v25 = u_strFromPunycode(v21 + 4, (v17 - 4), v30, v25, 0, a8);
  }

  v32 = desta;
  v33 = uidna_toASCII(v30, v25, desta, 100, a5, parseError, a8);
  v34 = *a8;
  if (*a8 == 15)
  {
    destCapacity = v33;
    v32 = malloc_type_malloc(2 * v33, 0x1000040BDFB0063uLL);
    if (!v32)
    {
      v25 = 0;
      v43 = 7;
LABEL_81:
      *a8 = v43;
      goto LABEL_48;
    }

    *a8 = 0;
    v33 = uidna_toASCII(v30, v25, v32, destCapacity, a5, parseError, a8);
    v34 = *a8;
  }

  if (v34 <= 0)
  {
    if (v33)
    {
      if (v17 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v17;
      }

      v37 = v21;
      v38 = v32;
      while (1)
      {
        v40 = *v37++;
        v39 = v40;
        v42 = *v38++;
        v41 = v42;
        if (v39 != v42)
        {
          if ((v39 - 65) < 0x1A)
          {
            v39 |= 0x20u;
          }

          if ((v41 - 65) < 0x1A)
          {
            v41 |= 0x20u;
          }

          if (v39 != v41)
          {
            break;
          }
        }

        if (!--v36)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
LABEL_75:
      if (v17 == v33)
      {
        v12 = v46;
        if (v25 <= v46)
        {
          u_memmove(dest, v30, v25);
        }

        goto LABEL_49;
      }
    }

    v25 = 0;
    v43 = 66565;
    goto LABEL_81;
  }

  v25 = 0;
LABEL_48:
  v12 = v46;
LABEL_49:
  if (v21 != v62 && v21 != a1)
  {
    free(v21);
  }

  if (v30 != v60)
  {
    free(v30);
  }

  if (v32 != desta)
  {
    free(v32);
  }

  if (*a8 >= 1)
  {
    if (dest && v15 <= v12)
    {
      u_memmove(dest, a1, v15);
    }

    *a8 = 0;
    v25 = v15;
  }

  result = u_terminateUChars(dest, v12, v25, a8);
LABEL_62:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

int32_t uidna_compare(const UChar *s1, int32_t length1, const UChar *s2, int32_t length2, int32_t options, UErrorCode *status)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!status || *status > 0)
  {
    v7 = -1;
    goto LABEL_4;
  }

  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *dest = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  memset(&v28, 0, sizeof(v28));
  v15 = dest;
  v16 = uidna_IDNToASCII(s1, length1, dest, 256, options, &v28, status);
  v17 = v16;
  if (*status != U_BUFFER_OVERFLOW_ERROR)
  {
LABEL_8:
    v18 = v29;
    v19 = uidna_IDNToASCII(s2, length2, v29, 256, options, &v28, status);
    v20 = v19;
    if (*status == U_BUFFER_OVERFLOW_ERROR)
    {
      v18 = malloc_type_malloc(2 * v19, 0x1000040BDFB0063uLL);
      if (!v18)
      {
        *status = U_MEMORY_ALLOCATION_ERROR;
        v7 = -1;
        goto LABEL_33;
      }

      *status = U_ZERO_ERROR;
      v20 = uidna_IDNToASCII(s2, length2, v18, v20, options, &v28, status);
    }

    if (v17 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    if (v17 < v20)
    {
      v22 = -1;
    }

    else
    {
      v22 = 1;
    }

    if (v17 == v20)
    {
      v7 = 0;
    }

    else
    {
      v7 = v22;
    }

    if (v21)
    {
      v23 = 0;
      v24 = 2 * v21;
      while (1)
      {
        v25 = v15[v23 / 2];
        v26 = v18[v23 / 2];
        if (v25 != v26)
        {
          if ((v25 - 65) < 0x1A)
          {
            v25 |= 0x20u;
          }

          if ((v26 - 65) < 0x1A)
          {
            v26 |= 0x20u;
          }

          v27 = v25 - v26;
          if (v27)
          {
            break;
          }
        }

        v23 += 2;
        if (v24 == v23)
        {
          goto LABEL_33;
        }
      }

      v7 = v27;
    }

LABEL_33:
    if (v15 == dest)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v15 = malloc_type_malloc(2 * v16, 0x1000040BDFB0063uLL);
  if (v15)
  {
    *status = U_ZERO_ERROR;
    v17 = uidna_IDNToASCII(s1, length1, v15, v17, options, &v28, status);
    goto LABEL_8;
  }

  *status = U_MEMORY_ALLOCATION_ERROR;
  v18 = v29;
  v7 = -1;
LABEL_34:
  free(v15);
LABEL_35:
  if (v18 != v29)
  {
    free(v18);
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void u_init(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9A28, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9A28))
    {
      if (dword_1EAEC9A2C >= 1)
      {
        *a1 = dword_1EAEC9A2C;
      }
    }

    else
    {
      ucnv_io_countKnownConverters(a1);
      sub_1952376A4(0x1Au, sub_195262218);
      dword_1EAEC9A2C = *a1;

      icu::umtx_initImplPostInit(&dword_1EAEC9A28);
    }
  }
}

void u_charsToUChars(const char *cs, UChar *us, int32_t length)
{
  if (length >= 1)
  {
    v3 = length + 1;
    do
    {
      v4 = *cs++;
      *us++ = v4;
      --v3;
    }

    while (v3 > 1);
  }
}

void u_UCharsToChars(const UChar *us, char *cs, int32_t length)
{
  if (length >= 1)
  {
    v3 = length + 1;
    do
    {
      v5 = *us++;
      v4 = v5;
      if (v5 > 0x7F || ((*(&unk_19547B7E4 + ((v4 >> 3) & 0x1FFC)) >> v4) & 1) == 0)
      {
        LOBYTE(v4) = 0;
      }

      *cs++ = v4;
      --v3;
    }

    while (v3 > 1);
  }
}

uint64_t uprv_isInvariantString(unsigned __int8 *a1, int a2)
{
  while ((a2 & 0x80000000) == 0)
  {
    if (!a2)
    {
      return 1;
    }

    --a2;
    v3 = *a1++;
    v2 = v3;
    if (v3)
    {
LABEL_6:
      if ((v2 & 0x80) != 0 || ((dword_19547B7E4[v2 >> 5] >> v2) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v4 = *a1++;
  v2 = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t uprv_isInvariantUString(_WORD *a1, int a2)
{
  while ((a2 & 0x80000000) == 0)
  {
    if (!a2)
    {
      return 1;
    }

    --a2;
    v2 = *a1;
LABEL_5:
    if (v2 <= 0x7F)
    {
      ++a1;
      if ((dword_19547B7E4[v2 >> 5] >> v2))
      {
        continue;
      }
    }

    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t uprv_ebcdicFromAscii(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 <= 0)
  {
    v9 = 1;
    if (a1 && a2 && (a3 & 0x80000000) == 0 && (!a3 || a4))
    {
      if (!a3)
      {
        return a3;
      }

      v10 = 0;
      while (1)
      {
        v12 = *a2++;
        v11 = v12;
        if (v12 < 0 || ((*(dword_19547B7E4 + ((v11 >> 3) & 0x1C)) >> v11) & 1) == 0)
        {
          break;
        }

        *a4++ = byte_19547B9FF[v11];
        --v10;
        if (a3 + v10 + 1 <= 1)
        {
          return a3;
        }
      }

      udata_printError(a1, "uprv_ebcdicFromAscii() string[%d] contains a variant character in position %d\n", a3, a4, a5, a6, a7, a8, a3);
      v9 = 10;
    }

    a3 = 0;
    *a5 = v9;
    return a3;
  }

  return 0;
}

uint64_t sub_195262420(uint64_t a1, _BYTE *a2, uint64_t __n, _BYTE *__dst, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v9 = __n, (__n & 0x80000000) == 0) && (!__n || __dst))
  {
    if (__n)
    {
      v12 = 0;
      v13 = __n + 1;
      do
      {
        if (a2[v12] < 0 || ((*(dword_19547B7E4 + ((a2[v12] >> 3) & 0x1C)) >> a2[v12]) & 1) == 0)
        {
          udata_printError(a1, "uprv_copyFromAscii() string[%d] contains a variant character in position %d\n", __n, __dst, a5, a6, a7, a8, __n);
          v9 = 0;
          v10 = 10;
          goto LABEL_10;
        }

        ++v12;
        --v13;
      }

      while (v13 > 1);
      if (a2 != __dst)
      {
        memcpy(__dst, a2, __n);
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
LABEL_10:
    *a5 = v10;
  }

  return v9;
}

uint64_t sub_195262504(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 <= 0)
  {
    v9 = 1;
    if (a1 && a2 && (a3 & 0x80000000) == 0 && (!a3 || a4))
    {
      if (!a3)
      {
        return a3;
      }

      v10 = 0;
      while (1)
      {
        v12 = *a2++;
        v11 = v12;
        if (v12)
        {
          v11 = byte_19547B7F4[v11];
          if (!v11 || ((*(dword_19547B7E4 + ((v11 >> 3) & 0x1C)) >> v11) & 1) == 0)
          {
            break;
          }
        }

        *a4++ = v11;
        --v10;
        if (a3 + v10 + 1 <= 1)
        {
          return a3;
        }
      }

      udata_printError(a1, "uprv_asciiFromEbcdic() string[%d] contains a variant character in position %d\n", a3, a4, a5, a6, a7, a8, a3);
      v9 = 10;
    }

    a3 = 0;
    *a5 = v9;
    return a3;
  }

  return 0;
}

uint64_t sub_1952625E4(uint64_t a1, _BYTE *a2, uint64_t __n, _BYTE *__dst, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (a1 && a2 && (v9 = __n, (__n & 0x80000000) == 0) && (!__n || __dst))
  {
    if (__n)
    {
      v12 = 0;
      v13 = __n + 1;
      do
      {
        if (a2[v12])
        {
          if (!byte_19547B7F4[a2[v12]] || (v14 = byte_19547B7F4[a2[v12]], ((*(dword_19547B7E4 + ((v14 >> 3) & 0x1C)) >> v14) & 1) == 0))
          {
            udata_printError(a1, "uprv_copyEbcdic() string[%] contains a variant character in position %d\n", __n, __dst, a5, a6, a7, a8, __n);
            v9 = 0;
            v10 = 10;
            goto LABEL_10;
          }
        }

        ++v12;
        --v13;
      }

      while (v13 > 1);
      if (a2 != __dst)
      {
        memcpy(__dst, a2, __n);
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
LABEL_10:
    *a5 = v10;
  }

  return v9;
}

BOOL uprv_isEbcdicAtSign(_BOOL8 __c)
{
  if (__c)
  {
    return memchr(&unk_19547B8F4, __c, 0xBuLL) != 0;
  }

  return __c;
}

uint64_t sub_19526270C(int a1, char *__s, int a3, UChar *s, int a5)
{
  result = 0;
  if (!__s)
  {
    return result;
  }

  v6 = a3;
  if (a3 < -1)
  {
    return result;
  }

  v7 = s;
  if (!s)
  {
    return result;
  }

  v8 = a5;
  if (a5 < -1)
  {
    return result;
  }

  v9 = __s;
  if (a3 < 0)
  {
    v6 = strlen(__s);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a5 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v8 = u_strlen(v7);
LABEL_7:
  result = (v6 - v8);
  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v10 >= 1)
  {
    v11 = v10 + 1;
    while (1)
    {
      v13 = *v9++;
      v12 = v13;
      if (v13 < 0 || ((*(dword_19547B7E4 + ((v12 >> 3) & 0x1C)) >> v12) & 1) == 0)
      {
        v12 = -1;
      }

      v15 = *v7++;
      v14 = v15;
      if (v15 > 0x7F || ((*(dword_19547B7E4 + ((v14 >> 3) & 0x1FFC)) >> v14) & 1) == 0)
      {
        LODWORD(v14) = -2;
      }

      v16 = (v12 - v14);
      if (v16)
      {
        break;
      }

      if (--v11 < 2)
      {
        return result;
      }
    }

    return v16;
  }

  return result;
}

uint64_t sub_195262808(int a1, char *__s, int a3, UChar *s, int a5)
{
  result = 0;
  if (!__s)
  {
    return result;
  }

  v6 = a3;
  if (a3 < -1)
  {
    return result;
  }

  v7 = s;
  if (!s)
  {
    return result;
  }

  v8 = a5;
  if (a5 < -1)
  {
    return result;
  }

  v9 = __s;
  if (a3 < 0)
  {
    v6 = strlen(__s);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a5 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v8 = u_strlen(v7);
LABEL_7:
  result = (v6 - v8);
  if (v6 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v10 >= 1)
  {
    v11 = v10 + 1;
    while (1)
    {
      v13 = *v9++;
      v12 = v13;
      if (v13)
      {
        v12 = byte_19547B7F4[v12];
        if (!v12 || ((*(dword_19547B7E4 + ((v12 >> 3) & 0x1C)) >> v12) & 1) == 0)
        {
          LODWORD(v12) = -1;
        }
      }

      v15 = *v7++;
      v14 = v15;
      if (v15 > 0x7F || ((*(dword_19547B7E4 + ((v14 >> 3) & 0x1FFC)) >> v14) & 1) == 0)
      {
        LODWORD(v14) = -2;
      }

      v16 = (v12 - v14);
      if (v16)
      {
        break;
      }

      if (--v11 < 2)
      {
        return result;
      }
    }

    return v16;
  }

  return result;
}

uint64_t uprv_compareInvEbcdicAsAscii(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
LABEL_5:
    if (v2)
    {
      v8 = byte_19547B7F4[v2];
      if (!byte_19547B7F4[v2] || ((*(dword_19547B7E4 + ((v8 >> 3) & 0x1C)) >> v8) & 1) == 0)
      {
        LODWORD(v8) = -v2;
      }

      if (v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LODWORD(v8) = 0;
      if (v3)
      {
LABEL_10:
        v9 = byte_19547B7F4[v3];
        if (!byte_19547B7F4[v3] || ((*(dword_19547B7E4 + ((v9 >> 3) & 0x1C)) >> v9) & 1) == 0)
        {
          LODWORD(v9) = -v3;
        }

        return (v8 - v9);
      }
    }

    LODWORD(v9) = 0;
    return (v8 - v9);
  }

  v4 = a2 + 1;
  v5 = a1 + 1;
  while (v2)
  {
    v6 = *v5++;
    v2 = v6;
    v7 = *v4++;
    v3 = v7;
    if (v2 != v7)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

_BYTE *uprv_aestrncpy(_BYTE *a1, char *__s, int a3)
{
  if (a3 == -1)
  {
    a3 = strlen(__s) + 1;
  }

  v5 = *__s;
  if (*__s)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = a3;
    v9 = a1;
  }

  else
  {
    v8 = __s + 1;
    v9 = a1;
    do
    {
      *v9++ = byte_19547B7F4[v5];
      v7 = a3 - 1;
      v10 = *v8++;
      v5 = v10;
      if (v10)
      {
        v11 = a3 > 1;
      }

      else
      {
        v11 = 0;
      }

      --a3;
    }

    while (v11);
  }

  if (v7 >= 1)
  {
    bzero(v9, v7);
  }

  return a1;
}

_BYTE *uprv_eastrncpy(_BYTE *a1, char *__s, int a3)
{
  if (a3 == -1)
  {
    a3 = strlen(__s) + 1;
  }

  v5 = *__s;
  if (*__s)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = a3;
    v9 = a1;
  }

  else
  {
    v8 = __s + 1;
    v9 = a1;
    do
    {
      v10 = byte_19547B9FF[v5];
      if (!v10)
      {
        LOBYTE(v10) = 111;
      }

      *v9++ = v10;
      v7 = a3 - 1;
      v11 = *v8++;
      v5 = v11;
      if (v11)
      {
        v12 = a3 > 1;
      }

      else
      {
        v12 = 0;
      }

      --a3;
    }

    while (v12);
  }

  if (v7 >= 1)
  {
    bzero(v9, v7);
  }

  return a1;
}

void uiter_setString(UCharIterator *iter, const UChar *s, int32_t length)
{
  if (iter)
  {
    if (s && length >= -1)
    {
      v4 = *&off_1F0935680;
      *&iter->current = xmmword_1F0935670;
      *&iter->previous = v4;
      *&iter->getState = xmmword_1F0935690;
      v5 = unk_1F0935640;
      *&iter->context = xmmword_1F0935630;
      *&iter->index = v5;
      v6 = *&off_1F0935660;
      *&iter->getIndex = xmmword_1F0935650;
      *&iter->hasNext = v6;
      iter->context = s;
      if (length < 0)
      {
        length = u_strlen(s);
      }

      iter->length = length;
      iter->limit = length;
    }

    else
    {
      v7 = *&off_1F09356F0;
      *&iter->current = xmmword_1F09356E0;
      *&iter->previous = v7;
      *&iter->getState = xmmword_1F0935700;
      v8 = *algn_1F09356B0;
      *&iter->context = xmmword_1F09356A0;
      *&iter->index = v8;
      v9 = *&off_1F09356D0;
      *&iter->getIndex = xmmword_1F09356C0;
      *&iter->hasNext = v9;
    }
  }
}

void uiter_setUTF16BE(UCharIterator *iter, const char *s, int32_t length)
{
  if (iter)
  {
    if (!s)
    {
LABEL_5:
      v4 = *&off_1F09356F0;
      *&iter->current = xmmword_1F09356E0;
      *&iter->previous = v4;
      *&iter->getState = xmmword_1F0935700;
      v5 = *algn_1F09356B0;
      *&iter->context = xmmword_1F09356A0;
      *&iter->index = v5;
      v6 = *&off_1F09356D0;
      *&iter->getIndex = xmmword_1F09356C0;
      *&iter->hasNext = v6;
      return;
    }

    if (length == -1)
    {
      v7 = *&off_1F0935760;
      *&iter->current = xmmword_1F0935750;
      *&iter->previous = v7;
      *&iter->getState = xmmword_1F0935770;
      v8 = unk_1F0935720;
      *&iter->context = xmmword_1F0935710;
      *&iter->index = v8;
      v9 = *&off_1F0935740;
      *&iter->getIndex = xmmword_1F0935730;
      *&iter->hasNext = v9;
      iter->context = s;
      if (s)
      {
          ;
        }

        v10 = (i + (i >> 63)) >> 1;
      }

      else
      {
        LODWORD(v10) = u_strlen(s);
      }
    }

    else
    {
      if ((length & 0x80000001) != 0)
      {
        goto LABEL_5;
      }

      LODWORD(v10) = length >> 1;
      v11 = *&off_1F0935760;
      *&iter->current = xmmword_1F0935750;
      *&iter->previous = v11;
      *&iter->getState = xmmword_1F0935770;
      v12 = unk_1F0935720;
      *&iter->context = xmmword_1F0935710;
      *&iter->index = v12;
      v13 = *&off_1F0935740;
      *&iter->getIndex = xmmword_1F0935730;
      *&iter->hasNext = v13;
      iter->context = s;
    }

    iter->length = v10;
    iter->limit = v10;
  }
}

__n128 uiter_setCharacterIterator(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *&off_1F09357D0;
      *(a1 + 64) = xmmword_1F09357C0;
      *(a1 + 80) = v2;
      *(a1 + 96) = xmmword_1F09357E0;
      v3 = *algn_1F0935790;
      *a1 = xmmword_1F0935780;
      *(a1 + 16) = v3;
      result = *&off_1F09357B0;
      *(a1 + 32) = xmmword_1F09357A0;
      *(a1 + 48) = result;
      *a1 = a2;
    }

    else
    {
      v5 = *&off_1F09356F0;
      *(a1 + 64) = xmmword_1F09356E0;
      *(a1 + 80) = v5;
      *(a1 + 96) = xmmword_1F0935700;
      v6 = *algn_1F09356B0;
      *a1 = xmmword_1F09356A0;
      *(a1 + 16) = v6;
      result = *&off_1F09356D0;
      *(a1 + 32) = xmmword_1F09356C0;
      *(a1 + 48) = result;
    }
  }

  return result;
}

__n128 uiter_setReplaceable(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = unk_1F0935800;
      *a1 = xmmword_1F09357F0;
      *(a1 + 16) = v3;
      *(a1 + 96) = xmmword_1F0935850;
      v4 = *&off_1F0935840;
      *(a1 + 64) = xmmword_1F0935830;
      *(a1 + 80) = v4;
      v5 = *&off_1F0935820;
      *(a1 + 32) = xmmword_1F0935810;
      *(a1 + 48) = v5;
      *a1 = a2;
      v6 = (*(*a2 + 64))(a2);
      *(a1 + 8) = v6;
      *(a1 + 20) = v6;
    }

    else
    {
      v8 = *&off_1F09356F0;
      *(a1 + 64) = xmmword_1F09356E0;
      *(a1 + 80) = v8;
      *(a1 + 96) = xmmword_1F0935700;
      v9 = *algn_1F09356B0;
      *a1 = xmmword_1F09356A0;
      *(a1 + 16) = v9;
      result = *&off_1F09356D0;
      *(a1 + 32) = xmmword_1F09356C0;
      *(a1 + 48) = result;
    }
  }

  return result;
}

void uiter_setUTF8(UCharIterator *iter, const char *s, int32_t length)
{
  if (iter)
  {
    if (s && length >= -1)
    {
      v4 = *&off_1F09358B0;
      *&iter->current = xmmword_1F09358A0;
      *&iter->previous = v4;
      *&iter->getState = xmmword_1F09358C0;
      v5 = *algn_1F0935870;
      *&iter->context = xmmword_1F0935860;
      *&iter->index = v5;
      v6 = *&off_1F0935890;
      *&iter->getIndex = xmmword_1F0935880;
      *&iter->hasNext = v6;
      iter->context = s;
      if (length < 0)
      {
        length = strlen(s);
      }

      iter->limit = length;
      if (length >= 2)
      {
        v7 = -1;
      }

      else
      {
        v7 = length;
      }

      iter->length = v7;
    }

    else
    {
      v8 = *&off_1F09356F0;
      *&iter->current = xmmword_1F09356E0;
      *&iter->previous = v8;
      *&iter->getState = xmmword_1F0935700;
      v9 = *algn_1F09356B0;
      *&iter->context = xmmword_1F09356A0;
      *&iter->index = v9;
      v10 = *&off_1F09356D0;
      *&iter->getIndex = xmmword_1F09356C0;
      *&iter->hasNext = v10;
    }
  }
}

UChar32 uiter_current32(UCharIterator *iter)
{
  v2 = (iter->current)();
  v3 = v2;
  if (v2 >> 11 == 27)
  {
    if ((v2 & 0x400) == 0)
    {
      (iter->move)(iter, 1, 1);
      v4 = (iter->current)(iter);
      if (v4 >> 10 == 55)
      {
        v3 = (v3 << 10) - 56613888 + v4;
      }

      v5 = 0xFFFFFFFFLL;
      goto LABEL_10;
    }

    v6 = (iter->previous)(iter);
    if (v6 >> 10 == 54)
    {
      v3 = v3 - 56613888 + (v6 << 10);
    }

    if ((v6 & 0x80000000) == 0)
    {
      v5 = 1;
LABEL_10:
      (iter->move)(iter, v5, 1);
    }
  }

  return v3;
}

UChar32 uiter_next32(UCharIterator *iter)
{
  v2 = (iter->next)();
  if (v2 >> 10 == 54)
  {
    v3 = (iter->next)(iter);
    if (v3 >> 10 == 55)
    {
      return v3 + (v2 << 10) - 56613888;
    }

    else if ((v3 & 0x80000000) == 0)
    {
      (iter->move)(iter, 0xFFFFFFFFLL, 1);
    }
  }

  return v2;
}

UChar32 uiter_previous32(UCharIterator *iter)
{
  v2 = (iter->previous)();
  if (v2 >> 10 == 55)
  {
    v3 = (iter->previous)(iter);
    if (v3 >> 10 == 54)
    {
      return v2 + (v3 << 10) - 56613888;
    }

    else if ((v3 & 0x80000000) == 0)
    {
      (iter->move)(iter, 1, 1);
    }
  }

  return v2;
}

uint32_t uiter_getState(const UCharIterator *iter)
{
  if (iter && (getState = iter->getState) != 0)
  {
    return getState();
  }

  else
  {
    return -1;
  }
}

void uiter_setState(UCharIterator *iter, uint32_t state, UErrorCode *pErrorCode)
{
  if (pErrorCode && *pErrorCode <= 0)
  {
    if (iter)
    {
      setState = iter->setState;
      if (setState)
      {
        setState();
        return;
      }

      v4 = U_UNSUPPORTED_ERROR;
    }

    else
    {
      v4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *pErrorCode = v4;
  }
}

uint64_t sub_195263094(unsigned int *a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return a1[3];
    }

    if (a2 == 1)
    {
      return a1[4];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return a1[5];
      case 3:
        return 0;
      case 4:
        return a1[2];
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1952630F0(_DWORD *a1, int a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return v3;
      }

      v4 = a1[4];
    }

    else
    {
      v4 = a1[3];
    }

    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v4 = a1[5];
LABEL_11:
    a2 += v4;
    goto LABEL_12;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return v3;
    }

    v4 = a1[2];
    goto LABEL_11;
  }

LABEL_12:
  v3 = a1[3];
  if (a2 >= v3)
  {
    LODWORD(v3) = a1[5];
    if (a2 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = a2;
    }
  }

  a1[4] = v3;
  return v3;
}

uint64_t sub_195263184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= *(a1 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*a1 + 2 * v1);
  }
}

uint64_t sub_1952631A8(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 >= *(a1 + 5))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  *(a1 + 4) = v1 + 1;
  return *(v2 + 2 * v1);
}

uint64_t sub_1952631D4(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 <= *(a1 + 3))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = v1 - 1;
  *(a1 + 4) = v3;
  return *(v2 + 2 * v3);
}

_DWORD *sub_195263204(_DWORD *result, int a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    if (result)
    {
      if (result[3] <= a2 && result[5] >= a2)
      {
        result[4] = a2;
        return result;
      }

      v3 = 8;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t sub_195263284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= *(a1 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*a1 + 2 * v1 + 1) | (*(*a1 + 2 * v1) << 8);
  }
}

uint64_t sub_1952632B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= *(a1 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = v1 + 1;
  return *(*a1 + 2 * v1 + 1) | (*(*a1 + 2 * v1) << 8);
}

uint64_t sub_1952632F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1 - 1;
  *(a1 + 16) = v2;
  return *(*a1 + 2 * v2 + 1) | (*(*a1 + 2 * v2) << 8);
}

uint64_t sub_19526332C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return *(*a1 + 16);
    }

    if (a2 == 1)
    {
      return *(*a1 + 12);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return *(*a1 + 20);
      case 3:
        return 0;
      case 4:
        return *(*a1 + 8);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_195263398(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    if (a3 == 4)
    {
      v8 = *a1;
      v9 = *(*a1 + 8);
      (*(**a1 + 120))();
    }

    else
    {
      if (a3 != 3)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = *a1;
      (*(**a1 + 120))();
    }

    return *(*a1 + 12);
  }

  v4 = *a1;
  v5 = *(**a1 + 192);

  return v5();
}

uint64_t sub_1952634CC(void *a1)
{
  v2 = (*(**a1 + 136))(*a1);
  if (v2 == 0xFFFF)
  {
    if ((*(**a1 + 56))())
    {
      return 0xFFFFLL;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t sub_195263558(void *a1)
{
  if ((*(**a1 + 56))(*a1))
  {
    return (*(**a1 + 40))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1952635D4(void *a1)
{
  if ((*(**a1 + 184))(*a1))
  {
    return (*(**a1 + 168))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_DWORD *sub_19526365C(_DWORD *result, int a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    if (result && (result = *result) != 0)
    {
      if (result[4] <= a2 && result[5] >= a2)
      {
        return (*(*result + 120))();
      }

      v3 = 8;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t sub_1952636CC(_DWORD *a1)
{
  if (a1[4] >= a1[5])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (*(**a1 + 72))(*a1);
  }
}

uint64_t sub_195263720(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 >= *(a1 + 5))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  *(a1 + 4) = v1 + 1;
  return (*(*v2 + 72))(v2);
}

uint64_t sub_195263780(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 <= *(a1 + 3))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  *(a1 + 4) = v1 - 1;
  return (*(*v2 + 72))(v2);
}

uint64_t sub_1952637E0(uint64_t *a1, int a2)
{
  v2 = 0;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return v2;
    }

    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v2 = *(a1 + 4);
    if ((v2 & 0x80000000) == 0)
    {
      return v2;
    }

    v5 = *(a1 + 3);
    if (v5 < 1)
    {
      LODWORD(v7) = 0;
      v6 = 0;
LABEL_69:
      *(a1 + 3) = v7;
      if (v7 == *(a1 + 5))
      {
        *(a1 + 2) = v6;
      }

      v2 = v6 - (*(a1 + 6) != 0);
      *(a1 + 4) = v2;
      return v2;
    }

    v6 = 0;
    LODWORD(v7) = 0;
    v8 = *a1;
    while (1)
    {
      v9 = v7;
      v10 = *(v8 + v7);
      v7 = v7 + 1;
      v11 = 1;
      if ((v10 & 0x80000000) == 0 || v7 == v5)
      {
        goto LABEL_37;
      }

      if (v10 < 0xE0u)
      {
        break;
      }

      if (v10 <= 0xEFu)
      {
        v12 = v10 & 0xF;
        if ((a00000000000000[v12] >> (*(v8 + v7) >> 5)))
        {
          v13 = *(v8 + v7) & 0x3F;
          goto LABEL_21;
        }

LABEL_36:
        v11 = 1;
        goto LABEL_37;
      }

      if (v10 > 0xF4u)
      {
        goto LABEL_36;
      }

      v15 = v10 - 240;
      v16 = *(v8 + v7);
      if (((byte_19547BAFF[v16 >> 4] >> v15) & 1) == 0)
      {
        goto LABEL_36;
      }

      v7 = v9 + 2;
      if (v9 + 2 == v5)
      {
LABEL_103:
        ++v6;
        LODWORD(v7) = *(a1 + 3);
        goto LABEL_69;
      }

      v13 = *(v8 + v7) ^ 0x80;
      if (v13 <= 0x3F)
      {
        LODWORD(v12) = v16 & 0x3F | (v15 << 6);
LABEL_21:
        LODWORD(v7) = v7 + 1;
        if (v7 == v5)
        {
          goto LABEL_103;
        }

        v14 = v13 | (v12 << 6);
LABEL_25:
        if (v14 < 0x400)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        if (*(v8 + v7) <= -65)
        {
          LODWORD(v7) = v7 + 1;
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_37;
      }

      v11 = 1;
LABEL_37:
      v6 += v11;
      if (v7 >= v5)
      {
        goto LABEL_69;
      }
    }

    if (v10 >= 0xC2u)
    {
      v14 = v10 & 0x1F;
      goto LABEL_25;
    }

    goto LABEL_36;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return v2;
    }

    if (a2 != 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v2 = *(a1 + 2);
  if ((v2 & 0x80000000) == 0)
  {
    return v2;
  }

  v3 = *a1;
  LODWORD(v4) = *(a1 + 3);
  LODWORD(v2) = *(a1 + 4);
  if ((v2 & 0x80000000) == 0)
  {
    if (*(a1 + 6))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    goto LABEL_74;
  }

  if (v4 < 1)
  {
    LODWORD(v17) = 0;
    v2 = 0;
    goto LABEL_73;
  }

  LODWORD(v2) = 0;
  LODWORD(v17) = 0;
  while (1)
  {
    v18 = v17;
    v19 = *(v3 + v17);
    v17 = v17 + 1;
    v20 = 1;
    if ((v19 & 0x80000000) == 0 || v17 == v4)
    {
      goto LABEL_65;
    }

    if (v19 < 0xE0u)
    {
      if (v19 >= 0xC2u)
      {
        v23 = v19 & 0x1F;
        goto LABEL_53;
      }

      goto LABEL_64;
    }

    if (v19 <= 0xEFu)
    {
      v21 = v19 & 0xF;
      if ((a00000000000000[v21] >> (*(v3 + v17) >> 5)))
      {
        v22 = *(v3 + v17) & 0x3F;
        goto LABEL_49;
      }

LABEL_64:
      v20 = 1;
      goto LABEL_65;
    }

    if (v19 > 0xF4u)
    {
      goto LABEL_64;
    }

    v24 = v19 - 240;
    v25 = *(v3 + v17);
    if (((byte_19547BAFF[v25 >> 4] >> v24) & 1) == 0)
    {
      goto LABEL_64;
    }

    v17 = v18 + 2;
    if (v18 + 2 == v4)
    {
      break;
    }

    v22 = *(v3 + v17) ^ 0x80;
    if (v22 <= 0x3F)
    {
      LODWORD(v21) = v25 & 0x3F | (v24 << 6);
LABEL_49:
      LODWORD(v17) = v17 + 1;
      if (v17 == v4)
      {
        break;
      }

      v23 = v22 | (v21 << 6);
LABEL_53:
      if (v23 < 0x400)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (*(v3 + v17) <= -65)
      {
        LODWORD(v17) = v17 + 1;
      }

      else
      {
        v20 = 1;
      }

      goto LABEL_65;
    }

    v20 = 1;
LABEL_65:
    v2 = (v20 + v2);
    if (v17 >= v4)
    {
      goto LABEL_73;
    }
  }

  v2 = (v2 + 1);
  LODWORD(v17) = *(a1 + 3);
LABEL_73:
  v26 = *(a1 + 6) != 0;
  *(a1 + 3) = v17;
  *(a1 + 4) = v2 - v26;
  LODWORD(v4) = v17;
LABEL_74:
  v27 = *(a1 + 5);
  if (v4 >= v27)
  {
    goto LABEL_101;
  }

  while (2)
  {
    v28 = v4;
    v29 = *(v3 + v4);
    v4 = v4 + 1;
    v30 = 1;
    if ((v29 & 0x80000000) == 0 || v4 == v27)
    {
      goto LABEL_97;
    }

    if (v29 < 0xE0u)
    {
      if (v29 < 0xC2u)
      {
        goto LABEL_96;
      }

      v33 = v29 & 0x1F;
LABEL_85:
      if (v33 < 0x400)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (*(v3 + v4) <= -65)
      {
        LODWORD(v4) = v4 + 1;
      }

      else
      {
        v30 = 1;
      }

      goto LABEL_97;
    }

    if (v29 <= 0xEFu)
    {
      v31 = v29 & 0xF;
      if ((a00000000000000[v31] >> (*(v3 + v4) >> 5)))
      {
        v32 = *(v3 + v4) & 0x3F;
        goto LABEL_81;
      }

LABEL_96:
      v30 = 1;
LABEL_97:
      v2 = (v30 + v2);
      if (v4 >= v27)
      {
        goto LABEL_101;
      }

      continue;
    }

    break;
  }

  if (v29 > 0xF4u)
  {
    goto LABEL_96;
  }

  v34 = v29 - 240;
  v35 = *(v3 + v4);
  if (((byte_19547BAFF[v35 >> 4] >> v34) & 1) == 0)
  {
    goto LABEL_96;
  }

  v4 = v28 + 2;
  if (v28 + 2 != v27)
  {
    v32 = *(v3 + v4) ^ 0x80;
    if (v32 > 0x3F)
    {
      v30 = 1;
      goto LABEL_97;
    }

    LODWORD(v31) = v35 & 0x3F | (v34 << 6);
LABEL_81:
    LODWORD(v4) = v4 + 1;
    if (v4 == v27)
    {
      goto LABEL_100;
    }

    v33 = v32 | (v31 << 6);
    goto LABEL_85;
  }

LABEL_100:
  v2 = (v2 + 1);
LABEL_101:
  *(a1 + 2) = v2;
  return v2;
}

uint64_t sub_195263C00(uint64_t a1, signed int a2, int a3)
{
  v3 = a2;
  v5 = 0xFFFFFFFFLL;
  if (a3 > 1)
  {
    if (a3 != 4)
    {
      if (a3 == 3)
      {
        goto LABEL_11;
      }

      if (a3 != 2)
      {
        return v5;
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & 0x80000000) == 0)
    {
      v3 = v6 + a2;
      goto LABEL_11;
    }

    v7 = 0xFFFFFFFFLL;
    v9 = *(a1 + 20);
    *(a1 + 12) = v9;
    *(a1 + 16) = -1;
    *(a1 + 24) = 0;
    if ((a2 & 0x80000000) == 0)
    {
      return 4294967294;
    }

LABEL_64:
    if (v9 > -a2)
    {
      v26 = *(a1 + 20);
      if (v26 - v9 > a2)
      {
        goto LABEL_25;
      }

      v27 = *(a1 + 8);
      *(a1 + 12) = v26;
      *(a1 + 16) = v27;
      *(a1 + 24) = 0;
      if (v27 < 0)
      {
        return 4294967294;
      }

      else
      {
        return v27;
      }
    }

LABEL_69:
    v5 = 0;
    *(a1 + 24) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    return v5;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return v5;
    }

    v7 = *(a1 + 16);
    if ((v7 & 0x80000000) != 0)
    {
      if (!a2)
      {
        return 4294967294;
      }

      v9 = *(a1 + 12);
      goto LABEL_64;
    }

    v3 = v7 + a2;
  }

LABEL_11:
  if (v3 <= 0)
  {
    goto LABEL_69;
  }

  v5 = *(a1 + 8);
  if (v5 <= v3)
  {
    *(a1 + 12) = *(a1 + 20);
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    return v5;
  }

  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if ((v7 & 0x80000000) != 0 || v3 < v7 >> 1)
  {
    v5 = 0;
    *(a1 + 24) = 0;
    *(a1 + 12) = 0;
  }

  else
  {
    if ((v5 & 0x80000000) != 0 || v5 - v3 >= v3 - v7)
    {
      goto LABEL_23;
    }

    *(a1 + 12) = *(a1 + 20);
    *(a1 + 16) = v5;
    v8 = (a1 + 24);
  }

  *v8 = 0;
  v7 = v5;
LABEL_23:
  v3 -= v7;
  if (v3)
  {
    v9 = *(a1 + 12);
LABEL_25:
    v10 = *a1;
    if (v3 < 1)
    {
      if (*(a1 + 24))
      {
        *(a1 + 24) = 0;
        v11 = (v9 - 4);
        v5 = (v7 - 1);
        ++v3;
      }

      else
      {
        v11 = v9;
        v5 = v7;
      }

      if ((v3 & 0x80000000) == 0 || v11 < 1)
      {
        goto LABEL_87;
      }

      while (1)
      {
        pi = v11 - 1;
        v28 = v10[(v11 - 1)];
        if (v28 < 0 && (v29 = utf8_prevCharSafeBody(v10, 0, &pi, v28, -3), v29 >= 0x10000))
        {
          if (v3 >= -1)
          {
            v11 = (pi + 4);
            *(a1 + 24) = v29;
            v5 = (v5 - 1);
            goto LABEL_87;
          }

          v30 = 2;
          v31 = -2;
        }

        else
        {
          v30 = 1;
          v31 = -1;
        }

        v5 = (v5 + v31);
        v11 = pi;
        v3 += v30;
        if (v3 >= 0 || pi <= 0)
        {
          goto LABEL_87;
        }
      }
    }

    v11 = *(a1 + 20);
    v5 = v7;
    if (*(a1 + 24))
    {
      *(a1 + 24) = 0;
      v5 = (v7 + 1);
      --v3;
    }

    v12 = 0;
    if (!v3 || v9 >= v11)
    {
LABEL_57:
      v23 = 0;
      goto LABEL_58;
    }

    while (1)
    {
      v13 = v9;
      v14 = v10[v9];
      v9 = v9 + 1;
      v15 = -1;
      v16 = 1;
      if ((v14 & 0x80000000) == 0 || v9 == v11)
      {
        goto LABEL_50;
      }

      if (v14 < 0xE0u)
      {
        if (v14 < 0xC2u)
        {
          goto LABEL_49;
        }

        v19 = v14 & 0x1F;
      }

      else
      {
        if (v14 > 0xEFu)
        {
          if (v14 > 0xF4u)
          {
LABEL_49:
            v15 = -1;
            goto LABEL_50;
          }

          v21 = v14 - 240;
          v22 = v10[v9];
          if (((byte_19547BAFF[v22 >> 4] >> v21) & 1) == 0)
          {
LABEL_48:
            v15 = -1;
            v16 = 1;
            goto LABEL_50;
          }

          v9 = v13 + 2;
          if (v13 + 2 == v11)
          {
LABEL_47:
            v15 = -1;
            v16 = 1;
            v9 = v11;
            goto LABEL_50;
          }

          v18 = v10[v9] ^ 0x80;
          if (v18 > 0x3F)
          {
            v15 = -1;
            v16 = 1;
            goto LABEL_50;
          }

          LODWORD(v17) = v22 & 0x3F | (v21 << 6);
        }

        else
        {
          v17 = v14 & 0xF;
          if (((a00000000000000[v17] >> (v10[v9] >> 5)) & 1) == 0)
          {
            goto LABEL_48;
          }

          v18 = v10[v9] & 0x3F;
        }

        v9 = (v9 + 1);
        if (v9 == v11)
        {
          goto LABEL_47;
        }

        v19 = v18 | (v17 << 6);
      }

      v20 = v10[v9] ^ 0x80;
      if (v20 > 0x3F)
      {
        goto LABEL_48;
      }

      v9 = (v9 + 1);
      if (v19 < 0x400)
      {
        goto LABEL_48;
      }

      if (v3 <= 1)
      {
        *(a1 + 24) = v20 | (v19 << 6);
        v5 = (v5 + 1);
        v23 = 1;
        v12 = -1;
LABEL_58:
        if (v9 == v11)
        {
          v24 = *(a1 + 8);
          if (v24 < 0)
          {
            if ((v7 & 0x80000000) == 0)
            {
              *(a1 + 8) = v5 + v23;
            }
          }

          else if ((v7 & 0x80000000) != 0)
          {
            v25 = v24 + v12;
            *(a1 + 16) = v24 + v12;
            goto LABEL_88;
          }
        }

        else
        {
          v11 = v9;
        }

LABEL_87:
        v25 = *(a1 + 16);
LABEL_88:
        *(a1 + 12) = v11;
        if ((v25 & 0x80000000) == 0)
        {
          *(a1 + 16) = v5;
          return v5;
        }

        if (v11 <= 1)
        {
          *(a1 + 16) = v11;
          return v11;
        }

        return 4294967294;
      }

      v15 = -2;
      v16 = 2;
LABEL_50:
      v12 = 0;
      v5 = (v5 + v16);
      v3 += v15;
      if (v3 < 1)
      {
        goto LABEL_57;
      }

      v23 = 0;
      if (v9 >= v11)
      {
        goto LABEL_58;
      }
    }
  }

  return v7;
}

uint64_t sub_195264050(uint64_t *a1)
{
  if (*(a1 + 6))
  {
    return a1[3] & 0x3FF | 0xDC00;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 5);
  if (v2 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  v5 = *(*a1 + v2);
  result = *(*a1 + v2);
  if (v5 < 0)
  {
    v6 = v2 + 1;
    if (v2 + 1 == v3)
    {
      return 65533;
    }

    if (result < 0xE0)
    {
      if (result < 0xC2)
      {
        return 65533;
      }

      v9 = result & 0x1F;
    }

    else
    {
      if (result > 0xEF)
      {
        if (result > 0xF4)
        {
          return 65533;
        }

        v6 = *(v4 + v6);
        if (((byte_19547BAFF[v6 >> 4] >> (result + 16)) & 1) == 0)
        {
          return 65533;
        }

        v11 = v2 + 2;
        if (v2 + 2 == v3)
        {
          return 65533;
        }

        v8 = *(v4 + v11) ^ 0x80;
        if (v8 > 0x3F)
        {
          return 65533;
        }

        LODWORD(v7) = v6 & 0x3F | ((result - 240) << 6);
        LODWORD(v6) = v11;
      }

      else
      {
        v7 = v5 & 0xF;
        if (((a00000000000000[v7] >> (*(v4 + v6) >> 5)) & 1) == 0)
        {
          return 65533;
        }

        v8 = *(v4 + v6) & 0x3F;
      }

      LODWORD(v6) = v6 + 1;
      if (v6 == v3)
      {
        return 65533;
      }

      v9 = v8 | (v7 << 6);
    }

    v10 = *(v4 + v6) ^ 0x80;
    if (v10 > 0x3F)
    {
      return 65533;
    }

    if (v9 > 0x3FF)
    {
      return ((v9 >> 4) - 10304);
    }

    else
    {
      return v10 | (v9 << 6);
    }
  }

  return result;
}

uint64_t sub_19526417C(uint64_t *a1)
{
  if (*(a1 + 6))
  {
    v1 = a1[3] & 0x3FF | 0xDC00;
    *(a1 + 6) = 0;
    v2 = *(a1 + 4);
    if ((v2 & 0x80000000) == 0)
    {
      *(a1 + 4) = v2 + 1;
    }

    return v1;
  }

  v3 = *(a1 + 3);
  v4 = *(a1 + 5);
  if (v3 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  v6 = v3 + 1;
  *(a1 + 3) = v3 + 1;
  v7 = *(v5 + v3);
  v1 = *(v5 + v3);
  if (v7 < 0)
  {
    if (v6 == v4)
    {
LABEL_7:
      v1 = 65533;
      LODWORD(v6) = v4;
      goto LABEL_25;
    }

    if (v1 < 0xE0)
    {
      if (v1 < 0xC2)
      {
        goto LABEL_24;
      }

      v10 = v1 & 0x1F;
    }

    else
    {
      if (v1 > 0xEF)
      {
        if (v1 > 0xF4)
        {
          goto LABEL_24;
        }

        v12 = v1 - 240;
        v13 = *(v5 + v6);
        if (((byte_19547BAFF[v13 >> 4] >> v12) & 1) == 0)
        {
          goto LABEL_24;
        }

        v6 = v3 + 2;
        *(a1 + 3) = v3 + 2;
        if (v3 + 2 == v4)
        {
          goto LABEL_7;
        }

        v9 = *(v5 + v6) ^ 0x80;
        if (v9 > 0x3F)
        {
          v1 = 65533;
          goto LABEL_25;
        }

        LODWORD(v8) = v13 & 0x3F | (v12 << 6);
      }

      else
      {
        v8 = v7 & 0xF;
        if (((a00000000000000[v8] >> (*(v5 + v6) >> 5)) & 1) == 0)
        {
          goto LABEL_24;
        }

        v9 = *(v5 + v6) & 0x3F;
      }

      LODWORD(v6) = v6 + 1;
      *(a1 + 3) = v6;
      if (v6 == v4)
      {
        goto LABEL_7;
      }

      v10 = v9 | (v8 << 6);
    }

    v11 = *(v5 + v6) ^ 0x80;
    if (v11 <= 0x3F)
    {
      v1 = v11 | (v10 << 6);
      LODWORD(v6) = v6 + 1;
      *(a1 + 3) = v6;
      goto LABEL_25;
    }

LABEL_24:
    v1 = 65533;
  }

LABEL_25:
  v14 = *(a1 + 4);
  if (v14 < 0)
  {
    if (v6 == v4)
    {
      v16 = *(a1 + 2);
      if ((v16 & 0x80000000) == 0)
      {
        *(a1 + 4) = v16 - (v1 >= 0x10000);
      }
    }
  }

  else
  {
    *(a1 + 4) = v14 + 1;
    if ((a1[1] & 0x80000000) != 0 && v6 == v4)
    {
      v15 = v14 + 2;
      if (v1 < 0x10000)
      {
        v15 = v14 + 1;
      }

      *(a1 + 2) = v15;
    }
  }

  if (v1 >= 0x10000)
  {
    *(a1 + 6) = v1;
    return ((v1 >> 10) - 10304);
  }

  return v1;
}

uint64_t sub_195264338(int32_t *pi)
{
  v2 = pi[6];
  if (v2)
  {
    v3 = (v2 >> 10) + 55232;
    pi[6] = 0;
    v4 = pi[4];
    pi[3] -= 4;
    if (v4 >= 1)
    {
      pi[4] = v4 - 1;
    }

    return v3;
  }

  v8 = pi + 3;
  v7 = pi[3];
  v9 = __OFSUB__(v7, 1);
  v10 = v7 - 1;
  if (v10 < 0 != v9)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *pi;
  pi[3] = v10;
  v12 = v11[v10];
  CharSafeBody = v12;
  if (v12 < 0)
  {
    CharSafeBody = utf8_prevCharSafeBody(v11, 0, pi + 3, v12, -3);
  }

  v13 = pi[4];
  v9 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v14 < 0 != v9)
  {
    v14 = *v8;
    if (*v8 > 1)
    {
      goto LABEL_15;
    }

    if (CharSafeBody >= 0x10000)
    {
      ++v14;
    }
  }

  pi[4] = v14;
LABEL_15:
  if (CharSafeBody >= 0x10000)
  {
    pi[3] += 4;
    pi[6] = CharSafeBody;
    return CharSafeBody & 0x3FF | 0xDC00;
  }

  return CharSafeBody;
}

uint64_t sub_195264430(uint64_t result, unsigned int a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    v4 = result;
    if (result)
    {
      if (((*(result + 24) != 0) | (2 * *(result + 12))) == a2)
      {
        return result;
      }

      if ((a2 & 0xFFFFFFF9) != 1)
      {
        v5 = a2 >> 1;
        if (*(result + 20) >= v5)
        {
          if (a2 >= 4)
          {
            v6 = -1;
          }

          else
          {
            v6 = a2 >> 1;
          }

          *(result + 12) = v5;
          *(result + 16) = v6;
          if ((a2 & 1) == 0)
          {
            *(result + 24) = 0;
            return result;
          }

          result = *result;
          v8 = v5 - 1;
          pi = v8;
          v9 = *(result + v8);
          if (v9 < 0)
          {
            result = utf8_prevCharSafeBody(result, 0, &pi, v9, -3);
            if (result >= 0x10000)
            {
              *(v4 + 24) = result;
              return result;
            }
          }
        }
      }

      v7 = 8;
    }

    else
    {
      v7 = 1;
    }

    *a3 = v7;
  }

  return result;
}

void *ulist_createEmptyList(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  result = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  if (!result)
  {
    *a1 = 7;
    return 0;
  }

  *result = 0;
  result[1] = 0;
  *(result + 6) = 0;
  result[2] = 0;
  return result;
}

void ulist_addItemEndList(uint64_t a1, void *a2, int a3, int *a4)
{
  if (a2 && a1 && *a4 < 1)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x10A00408AB2CE21uLL);
    if (v8)
    {
      *v8 = a2;
      v8[24] = a3;
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = *(a1 + 16);
        *(v8 + 1) = 0;
        *(v8 + 2) = v10;
        *(v10 + 8) = v8;
        *(a1 + 16) = v8;
      }

      else
      {
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *(a1 + 8) = v8;
        *(a1 + 16) = v8;
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = v9 + 1;
    }

    else
    {
      if (a3)
      {
        free(a2);
      }

      *a4 = 7;
    }
  }

  else if (a3)
  {

    free(a2);
  }
}

void ulist_addItemBeginList(uint64_t a1, void *a2, int a3, int *a4)
{
  if (a2 && a1 && *a4 < 1)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x10A00408AB2CE21uLL);
    if (v8)
    {
      *v8 = a2;
      v8[24] = a3;
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = *(a1 + 8);
        *(v8 + 1) = v10;
        *(v8 + 2) = 0;
        *(v10 + 16) = v8;
        *(a1 + 8) = v8;
      }

      else
      {
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *(a1 + 8) = v8;
        *(a1 + 16) = v8;
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = v9 + 1;
    }

    else
    {
      if (a3)
      {
        free(a2);
      }

      *a4 = 7;
    }
  }

  else if (a3)
  {

    free(a2);
  }
}

uint64_t ulist_containsString(uint64_t result, const void *a2, int a3)
{
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v6 = a3;
      while (strlen(*v3) != a3 || memcmp(a2, *v3, v6))
      {
        v3 = *(v3 + 8);
        if (!v3)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ulist_removeString(uint64_t result, char *__s1)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    do
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        return 0;
      }
    }

    while (strcmp(__s1, *v4));
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = *(v4 + 16);
    }

    else
    {
      v7 = v3;
    }

    *(v7 + 8) = v5;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *(v8 + 16) = v6;
    if (*v3 == v4)
    {
      *v3 = v5;
    }

    --*(v3 + 24);
    if (*(v4 + 24))
    {
      free(*v4);
    }

    free(v4);
    return 1;
  }

  return result;
}

void *ulist_getNext(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (*a1)
  {
    v1 = *v1;
    *a1 = *(*a1 + 8);
  }

  return v1;
}

uint64_t ulist_getListSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *ulist_resetList(void *result)
{
  if (result)
  {
    *result = result[1];
  }

  return result;
}

void ulist_deleteList(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      do
      {
        v3 = *(v2 + 8);
        if (*(v2 + 24))
        {
          free(*v2);
        }

        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

void ulist_close_keyword_values_iterator(void **a1)
{
  if (a1)
  {
    ulist_deleteList(a1[1]);

    free(a1);
  }
}

uint64_t ulist_count_keyword_values(uint64_t a1, int *a2)
{
  if (*a2 <= 0 && (v3 = *(a1 + 8)) != 0)
  {
    return *(v3 + 24);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const char *ulist_next_keyword_value(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  v3 = *v6;
  *v5 = *(v6 + 8);
  if (a2 && v3)
  {
    *a2 = strlen(v3);
  }

  return v3;
}

uint64_t ulist_reset_keyword_values_iterator(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    v2 = *(result + 8);
    if (v2)
    {
      *v2 = v2[1];
    }
  }

  return result;
}

void ulocimp_getKeywords(char *a1@<X0>, UErrorCode *a2@<X3>, int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  if (*a2 < 1)
  {
    v11[6] = v5;
    v11[7] = v6;
    *(a5 + 8) = 0u;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    v11[0] = 0;
    v11[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v11, a5);
    ulocimp_getKeywords(a1, a3, v11, a4, a2);
    icu::CharStringByteSink::~CharStringByteSink(v11);
  }

  else
  {
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    *(a5 + 12) = 0;
    *(a5 + 56) = 0;
  }
}

void ulocimp_getKeywords(char *a1, int a2, icu::ByteSink *a3, int a4, UErrorCode *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    bzero(__s1, 0x4B0uLL);
    if (a2 == 64)
    {
      v10 = 0;
      while (1)
      {
        for (i = a1; *i == 32; ++i)
        {
          ++a1;
        }

        if (!*i)
        {
          break;
        }

        if (v10 == 25)
        {
          goto LABEL_52;
        }

        v12 = strchr(i, 61);
        v13 = strchr(i, 59);
        if (!v12 || (v14 = v13) != 0 && v13 < v12)
        {
LABEL_49:
          v33 = U_INVALID_FORMAT_ERROR;
LABEL_50:
          *a5 = v33;
          goto LABEL_51;
        }

        v15 = v12 - a1;
        if (v15 > 24)
        {
LABEL_52:
          v33 = U_INTERNAL_PROGRAM_ERROR;
          goto LABEL_50;
        }

        if (v15 < 1)
        {
          goto LABEL_49;
        }

        v16 = 0;
        v17 = 0;
        v35 = v10;
        v18 = &__s1[3 * v10];
        do
        {
          v19 = i[v16];
          if (v19 != 32)
          {
            *(v18 + v17++) = uprv_asciitolower(v19);
          }

          ++v16;
        }

        while (v15 > v16);
        if (!v17)
        {
          goto LABEL_49;
        }

        *(v18 + v17) = 0;
        *(v18 + 7) = v17;
        v20 = v14 - v12;
        do
        {
          v21 = v20;
          v23 = *++v12;
          v22 = v23;
          --v20;
        }

        while (v23 == 32);
        if (!v22 || v12 == v14)
        {
          goto LABEL_49;
        }

        *(v18 + 4) = v12;
        if (v14)
        {
          v24 = v14 - 1;
          do
          {
            v25 = *v24--;
            --v21;
          }

          while (v25 == 32);
          *(v18 + 10) = v21;
          a1 = v14 + 1;
        }

        else
        {
          v26 = strlen(v12);
          if (v26)
          {
            v27 = v26;
            do
            {
              if (v12[v27 - 1] != 32)
              {
                break;
              }

              --v27;
            }

            while (v27);
          }

          else
          {
            LODWORD(v27) = 0;
          }

          a1 = 0;
          *(v18 + 10) = v27;
        }

        if (v35 < 1)
        {
LABEL_38:
          v10 = (v35 + 1);
          if (!a1)
          {
            break;
          }
        }

        else
        {
          v28 = v35;
          v29 = __s1;
          while (strcmp(v29, v18))
          {
            v29 += 48;
            if (!--v28)
            {
              goto LABEL_38;
            }
          }

          v10 = v35;
          if (!a1)
          {
            break;
          }
        }
      }

      uprv_sortArray(__s1, v10, 48, sub_195264E4C, 0, 0, a5);
      if (v10 >= 1)
      {
        v30 = 0;
        v31 = __s1;
        do
        {
          (*(*a3 + 16))(a3, v31, *(v31 + 7));
          v32 = *(*a3 + 16);
          if (a4)
          {
            v32(a3, "=", 1);
            (*(*a3 + 16))(a3, *(v31 + 4), *(v31 + 10));
            if (v30 < (v10 - 1))
            {
              (*(*a3 + 16))(a3, ";", 1);
            }
          }

          else
          {
            v32(a3, byte_19547BB10, 1);
          }

          ++v30;
          v31 += 3;
        }

        while (v10 != v30);
      }
    }
  }

LABEL_51:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t uloc_getKeywordValue(char *a1, char *a2, char *a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (a2 && *a2)
  {
    v13 = 0u;
    v14 = 0u;
    icu::CheckedArrayByteSink::CheckedArrayByteSink(&v13, a3, a4);
    v11 = strlen(a2);
    ulocimp_getKeywordValue(a1, a2, v11, &v13, a5);
    if (*a5 <= 0)
    {
      v5 = DWORD2(v14);
      if (BYTE12(v14))
      {
        *a5 = U_BUFFER_OVERFLOW_ERROR;
      }

      else
      {
        v5 = u_terminateChars(a3, a4, DWORD2(v14), a5);
      }
    }

    else
    {
      v5 = 0;
    }

    icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v13);
  }

  else
  {
    v5 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v5;
}

void ulocimp_getKeywordValue(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  if (*a4 < 1)
  {
    v11[6] = v5;
    v11[7] = v6;
    *(a5 + 8) = 0u;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    v11[0] = 0;
    v11[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v11, a5);
    ulocimp_getKeywordValue(a1, a2, a3, v11, a4);
    icu::CharStringByteSink::~CharStringByteSink(v11);
  }

  else
  {
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    *(a5 + 12) = 0;
    *(a5 + 56) = 0;
  }
}

void ulocimp_getKeywordValue(char *a1, char *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v6 = a1;
    if (a1 && a3)
    {
      memset(&v47[1], 0, 48);
      v47[0] = &v47[1] + 5;
      LODWORD(v47[1]) = 40;
      v48 = 0;
      v45 = 0u;
      *__n = 0u;
      *__s1 = 0u;
      v44 = 0u;
      sub_19526540C(a2, a3, a5, __s1);
      if (*a5 <= 0)
      {
        if (!strchr(v6, 64))
        {
          v33 = strlen(v6);
          if (v33 >= 1)
          {
            v34 = 0;
            v35 = 0;
            v36 = v33 & 0x7FFFFFFF;
            v37 = 1;
            do
            {
              v38 = v6[v34];
              if (v38 == 45 || v38 == 95)
              {
                if (v35 >= v33)
                {
                  v39 = v33;
                }

                else
                {
                  v39 = v35;
                }

                if (v35)
                {
                  v33 = v39;
                }

                v37 = 1;
              }

              else
              {
                v18 = (v37 & 1) == 0;
                v37 = 0;
                if (v18)
                {
                  ++v35;
                }

                else
                {
                  v35 = 1;
                }
              }

              ++v34;
            }

            while (v36 != v34);
            if (v33 == 1)
            {
              ulocimp_forLanguageTag(v6, 0, a5, -1, __s2);
              icu::CharString::operator=(v47, __s2);
              if (BYTE4(__s2[1]))
              {
                free(__s2[0]);
              }

              if (*a5 <= 0 && v48)
              {
                v6 = v47[0];
              }
            }
          }
        }

        v9 = strchr(v6, 64);
        if (v9)
        {
          v10 = v9;
          while (1)
          {
            if (!v10)
            {
              goto LABEL_5;
            }

            v11 = strchr(v10 + 1, 61);
            if (!v11)
            {
              goto LABEL_78;
            }

            v12 = v11;
            do
            {
              v13 = *++v10;
            }

            while (v13 == 32);
            v14 = v11;
            do
            {
              v15 = v14;
              if (v14 <= v10)
              {
                break;
              }

              --v14;
            }

            while (*(v15 - 1) == 32);
            if (v15 == v10)
            {
LABEL_78:
              *a5 = U_ILLEGAL_ARGUMENT_ERROR;
              goto LABEL_5;
            }

            v42 = 0;
            memset(&__s2[1], 0, 48);
            __s2[0] = &__s2[1] + 5;
            LODWORD(__s2[1]) = 40;
            v41 = 0;
            if (v15 > v10)
            {
              break;
            }

LABEL_28:
            if (*a5 <= 0)
            {
              v10 = strchr(v12, 59);
              if (LODWORD(__n[1]) == v41 && (!LODWORD(__n[1]) || !memcmp(__s1[0], __s2[0], SLODWORD(__n[1]))))
              {
                do
                {
                  v22 = *++v12;
                }

                while (v22 == 32);
                v23 = v10;
                if (!v10)
                {
                  v23 = &v12[strlen(v12)];
                }

                while (v23 > v12)
                {
                  v24 = *--v23;
                  if (v24 != 32)
                  {
                    v25 = (v23 + 1);
                    while (1)
                    {
                      v26 = *v12;
                      isASCIILetter = uprv_isASCIILetter(*v12);
                      if ((v26 - 48) >= 0xA && !isASCIILetter)
                      {
                        v29 = *v12 - 43;
                        v30 = v29 > 0x34;
                        v31 = (1 << v29) & 0x10000000000015;
                        if (v30 || v31 == 0)
                        {
                          goto LABEL_52;
                        }
                      }

                      (*(*a4 + 16))(a4, v12++, 1);
                      if (v12 >= v25)
                      {
                        goto LABEL_29;
                      }
                    }
                  }
                }

                if (v23 != v12)
                {
                  goto LABEL_29;
                }

LABEL_52:
                v21 = 0;
                *a5 = U_ILLEGAL_ARGUMENT_ERROR;
                goto LABEL_53;
              }

              v21 = 1;
            }

            else
            {
LABEL_29:
              v21 = 0;
            }

LABEL_53:
            if (BYTE4(__s2[1]))
            {
              free(__s2[0]);
            }

            if ((v21 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          while (1)
          {
            v16 = *v10;
            v17 = uprv_isASCIILetter(*v10);
            v18 = (v16 - 48) >= 0xA && !v17;
            if (v18)
            {
              goto LABEL_52;
            }

            v19 = *v10++;
            v20 = uprv_asciitolower(v19);
            icu::CharString::append(__s2, v20, a5);
            if (v10 >= v15)
            {
              goto LABEL_28;
            }
          }
        }
      }

LABEL_5:
      if (BYTE4(__s1[1]))
      {
        free(__s1[0]);
      }

      if (BYTE4(v47[1]))
      {
        free(v47[0]);
      }
    }

    else
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19526540C(char *a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 < 1)
  {
    v6 = a2;
    memset(&v13[1], 0, 48);
    v14 = 0;
    v13[0] = &v13[1] + 5;
    LODWORD(v13[1]) = 40;
    if (a2)
    {
      do
      {
        v8 = *a1;
        isASCIILetter = uprv_isASCIILetter(*a1);
        if ((v8 - 48) >= 0xA && !isASCIILetter)
        {
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
          *a4 = a4 + 13;
          *(a4 + 8) = 40;
          goto LABEL_13;
        }

        v11 = uprv_asciitolower(v8);
        icu::CharString::append(v13, v11, a3);
        ++a1;
        --v6;
      }

      while (v6);
      if (!v14)
      {
        goto LABEL_11;
      }

      icu::CharString::CharString(a4, v13);
    }

    else
    {
LABEL_11:
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
      *a4 = a4 + 13;
      *(a4 + 8) = 40;
LABEL_13:
      *(a4 + 12) = 0;
      *(a4 + 56) = 0;
    }

    if (BYTE4(v13[1]))
    {
      free(v13[0]);
    }
  }

  else
  {
    *a4 = a4 + 13;
    *(a4 + 8) = 40;
    *(a4 + 12) = 0;
    *(a4 + 56) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t uloc_setKeywordValue(char *a1, char *a2, char *__s, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (a1 && *a1 && a4 > 1 && (v11 = strlen(__s), v11 <= a4))
  {
    v13 = strchr(__s, 64);
    v14 = v13;
    if (v13)
    {
      v15 = v13 - __s;
    }

    else
    {
      v15 = v11;
    }

    memset(v21, 0, sizeof(v21));
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = &__s[v11];
    }

    icu::CheckedArrayByteSink::CheckedArrayByteSink(v21, v16, ~v15 + a4);
    if (v14)
    {
      v17 = strlen(v14);
    }

    else
    {
      v17 = 0;
    }

    v18 = strlen(a1);
    if (a2)
    {
      v19 = strlen(a2);
    }

    else
    {
      v19 = 0;
    }

    v20 = ulocimp_setKeywordValue(v14, v17, a1, v18, a2, v19, v21, a5);
    if (*a5 < 1)
    {
      v5 = u_terminateChars(__s, a4, (v20 + v15), a5);
    }

    else if (*a5 == U_BUFFER_OVERFLOW_ERROR)
    {
      v5 = (v20 + v15);
    }

    else
    {
      v5 = 0;
    }

    icu::CheckedArrayByteSink::~CheckedArrayByteSink(v21);
  }

  else
  {
    v5 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v5;
}

size_t ulocimp_setKeywordValue(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, UErrorCode *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = *a8;
  if (*a8 > 0)
  {
    v9 = 0;
    goto LABEL_3;
  }

  memset(&v67[1], 0, 48);
  v67[0] = &v67[1] + 5;
  LODWORD(v67[1]) = 40;
  v68 = 0;
  if (v8 == U_STRING_NOT_TERMINATED_WARNING)
  {
    *a8 = U_ZERO_ERROR;
  }

  if (!a4)
  {
    v9 = 0;
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_3;
  }

  v65 = 0uLL;
  *__n = 0uLL;
  *__src = 0uLL;
  v64 = 0uLL;
  sub_19526540C(a3, a4, a8, __src);
  if (*a8 > 0)
  {
    v9 = 0;
    goto LABEL_105;
  }

  memset(&v61[1], 0, 48);
  v62 = 0;
  v61[0] = &v61[1] + 5;
  LODWORD(v61[1]) = 40;
  if (a6)
  {
    do
    {
      v18 = *a5;
      v19 = *a5;
      isASCIILetter = uprv_isASCIILetter(*a5);
      if ((v18 - 48) >= 0xA && !isASCIILetter && ((v19 - 43) > 0x34 || ((1 << (v19 - 43)) & 0x10000000000015) == 0))
      {
LABEL_93:
        v9 = 0;
        v50 = 1;
        goto LABEL_102;
      }

      icu::CharString::append(v61, v19, a8);
      ++a5;
      --a6;
    }

    while (a6);
    if (*a8 > 0)
    {
LABEL_92:
      v9 = 0;
      goto LABEL_103;
    }
  }

  if (a2 < 2)
  {
    if (v62)
    {
      v9 = (v62 + LODWORD(__n[1]) + 2);
      LODWORD(__s2[0]) = 0;
      v23 = (*(*a7 + 24))(a7, v9, v9, 0, v9, __s2);
      if (SLODWORD(__s2[0]) >= v9)
      {
        v24 = v23;
        if (v23)
        {
          *v23 = 64;
          memcpy(v23 + 1, __src[0], SLODWORD(__n[1]));
          v25 = &v24[SLODWORD(__n[1]) + 1];
          *v25 = 61;
          memcpy(v25 + 1, v61[0], v62);
          (*(*a7 + 16))(a7, v24, v9);
          goto LABEL_103;
        }
      }

      goto LABEL_101;
    }

    goto LABEL_92;
  }

  v54 = a7;
  v26 = 0;
  v27 = a1 - 1;
  v55 = 1 - a1;
  v56 = 0;
  v57 = 64;
  while (v26 != -1)
  {
    if (a2 <= ++v26)
    {
      goto LABEL_93;
    }

    v28 = memchr((a1 + v26), 61, a2 - v26);
    if (!v28)
    {
      goto LABEL_93;
    }

    v29 = v28;
    v30 = &v28[-a1];
    if (&v28[-a1] == -1)
    {
      goto LABEL_93;
    }

    v31 = &v28[-a1];
    while (*(a1 + v26) == 32)
    {
      if (a2 == ++v26)
      {
        v26 = a2;
        break;
      }
    }

    v32 = v26 >= v30 ? &v28[-a1] : v26;
    while (v31 > v26)
    {
      v33 = v31 - 1;
      v34 = (v31--)[v27];
      if (v34 != 32)
      {
        v32 = v33 + 1;
        break;
      }
    }

    if (v26 == v32)
    {
      goto LABEL_93;
    }

    v60 = 0;
    memset(&__s2[1], 0, 48);
    __s2[0] = &__s2[1] + 5;
    LODWORD(__s2[1]) = 40;
    v59 = 0;
    if (v26 < v32)
    {
      while (1)
      {
        v35 = *(a1 + v26);
        v36 = uprv_isASCIILetter(*(a1 + v26));
        if ((v35 - 48) >= 0xA && !v36)
        {
          break;
        }

        v39 = uprv_asciitolower(*(a1 + v26));
        icu::CharString::append(__s2, v39, a8);
        v38 = ++v26;
        if (v26 >= v32)
        {
          goto LABEL_52;
        }
      }

      v40 = 0;
      *a8 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_86;
    }

    v38 = v26;
LABEL_52:
    if (*a8 > 0)
    {
      v40 = 0;
LABEL_54:
      v26 = v38;
      goto LABEL_86;
    }

    if (a2 <= v30)
    {
      v26 = -1;
    }

    else
    {
      v41 = memchr(&v30[a1], 59, a2 - v30);
      if (v41)
      {
        v26 = v41 - a1;
      }

      else
      {
        v26 = -1;
      }
    }

    do
    {
      v42 = v29;
      v43 = &v29[v55];
      if (&v29[v55] >= a2)
      {
        break;
      }

      v44 = *++v29;
    }

    while (v44 == 32);
    if (v26 == -1)
    {
      v45 = a2;
    }

    else
    {
      v45 = v26;
    }

    if (v45 >= v43)
    {
      v46 = v43;
    }

    else
    {
      v46 = v45;
    }

    while (v45 > v43)
    {
      v47 = v45 - 1;
      v48 = *(v27 + v45--);
      if (v48 != 32)
      {
        v46 = v47 + 1;
        break;
      }
    }

    if (!&v42[v55 - v46])
    {
      v40 = 0;
      *a8 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_54;
    }

    v49 = strcmp(__src[0], __s2[0]);
    if (v49)
    {
      if (v49 < 0 && !((v62 == 0) | v56 & 1))
      {
        icu::CharString::append(v67, v57, a8);
        icu::CharString::append(v67, __src[0], __n[1], a8);
        icu::CharString::append(v67, 61, a8);
        icu::CharString::append(v67, v61[0], v62, a8);
        v56 = 1;
        v57 = 59;
      }

      icu::CharString::append(v67, v57, a8);
      icu::CharString::append(v67, __s2[0], v59, a8);
      icu::CharString::append(v67, 61, a8);
      icu::CharString::append(v67, v42 + 1, a1 - 1 + v46 - v42, a8);
    }

    else
    {
      if (!v62)
      {
        v56 = 1;
        goto LABEL_82;
      }

      icu::CharString::append(v67, v57, a8);
      icu::CharString::append(v67, __src[0], __n[1], a8);
      icu::CharString::append(v67, 61, a8);
      icu::CharString::append(v67, v61[0], v62, a8);
      v56 = 1;
    }

    v57 = 59;
LABEL_82:
    if (v26 == -1)
    {
      if (!((v62 == 0) | v56 & 1))
      {
        icu::CharString::append(v67, v57, a8);
        icu::CharString::append(v67, __src[0], __n[1], a8);
        icu::CharString::append(v67, 61, a8);
        icu::CharString::append(v67, v61[0], v62, a8);
        v26 = -1;
        v40 = 1;
        v56 = 1;
        goto LABEL_86;
      }

      v26 = -1;
    }

    v40 = 1;
LABEL_86:
    if (BYTE4(__s2[1]))
    {
      free(__s2[0]);
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  if ((v56 & (*a8 < U_ILLEGAL_ARGUMENT_ERROR)) == 0)
  {
    v9 = a2;
    goto LABEL_103;
  }

  v9 = v68;
  if (v68 >= 1)
  {
    LODWORD(__s2[0]) = 0;
    v51 = (*(*v54 + 24))(v54, v68, v68, 0, v68, __s2);
    if (SLODWORD(__s2[0]) >= v9 && v51 != 0)
    {
      v53 = v51;
      memcpy(v51, v67[0], v9);
      (*(*v54 + 16))(v54, v53, v9);
      goto LABEL_103;
    }

LABEL_101:
    v50 = 15;
LABEL_102:
    *a8 = v50;
  }

LABEL_103:
  if (BYTE4(v61[1]))
  {
    free(v61[0]);
  }

LABEL_105:
  if (BYTE4(__src[1]))
  {
    free(__src[0]);
  }

  if (BYTE4(v67[1]))
  {
    free(v67[0]);
  }

LABEL_3:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}