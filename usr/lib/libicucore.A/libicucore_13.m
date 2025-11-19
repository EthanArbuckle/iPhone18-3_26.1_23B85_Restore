void ulocimp_setKeywordValue(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v19[10] = v6;
    v19[11] = v7;
    v14 = *a5;
    v15 = strchr(*a5, 64);
    if (v15)
    {
      v16 = v15 - v14;
      v17 = &v14[v15 - v14];
      v18 = *(a5 + 56) - (v15 - v14);
      icu::CharString::truncate(a5, v16);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v19[0] = 0;
    v19[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v19, a5);
    ulocimp_setKeywordValue(v17, v18, a1, a2, a3, a4, v19, a6);
    icu::CharStringByteSink::~CharStringByteSink(v19);
  }
}

char *sub_195265F3C(char *__s1)
{
  v1 = __s1;
  v2 = sub_195265F84(off_1E7407938, __s1);
  if ((v2 & 0x10000) != 0)
  {
    return off_1E74079C8[v2];
  }

  return v1;
}

uint64_t sub_195265F84(const char **a1, char *__s1)
{
  v3 = a1;
  v4 = -a1;
  v5 = 1;
  while (1)
  {
    v6 = *v3;
    if (*v3)
    {
      break;
    }

LABEL_6:
    ++v3;
    if (++v5 == 3)
    {
      return 0;
    }
  }

  v7 = v4 + v3;
  while (strcmp(__s1, v6))
  {
    v8 = v3[1];
    ++v3;
    v6 = v8;
    v7 += 8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  return (v7 >> 3) | 0x10000u;
}

char *sub_195266004(char *__s1)
{
  v1 = __s1;
  v2 = sub_195265F84(off_1E7407A58, __s1);
  if ((v2 & 0x10000) != 0)
  {
    return off_1E7407A90[v2];
  }

  return v1;
}

void ulocimp_getLanguage(const char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_getSubtags(a1, v7, 0, 0, 0, 0, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_getScript(const char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_getSubtags(a1, 0, v7, 0, 0, 0, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_getRegion(const char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_getSubtags(a1, 0, 0, v7, 0, 0, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_getVariant(const char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_getSubtags(a1, 0, 0, 0, v7, 0, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_getSubtags(const char *a1, icu::CharString *a2, icu::CharString *a3, icu::CharString *a4, icu::CharString *a5, char **a6, UErrorCode *a7)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  if (*a7 <= 0)
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    if (a2)
    {
      sub_195266484(v23, &v28);
    }

    if (a3)
    {
      sub_195266484(v21, &v27);
    }

    if (a4)
    {
      sub_195266484(v19, &v26);
    }

    if (a5)
    {
      sub_195266484(v17, &v25);
      if (v18)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v24)
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

    if (v22)
    {
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }

    ulocimp_getSubtags(a1, v14, v15, v16, v13, a6, a7);
    if (v18 == 1)
    {
      icu::CharStringByteSink::~CharStringByteSink(v17);
    }

    if (v20 == 1)
    {
      icu::CharStringByteSink::~CharStringByteSink(v19);
    }

    if (v22 == 1)
    {
      icu::CharStringByteSink::~CharStringByteSink(v21);
    }

    if (v24 == 1)
    {
      icu::CharStringByteSink::~CharStringByteSink(v23);
    }
  }
}

void *sub_195266484(icu::CharStringByteSink *a1, uint64_t *a2)
{
  if (*(a1 + 16) == 1)
  {
    icu::CharStringByteSink::~CharStringByteSink(a1);
    *(a1 + 16) = 0;
  }

  result = icu::CharStringByteSink::CharStringByteSink(a1, *a2);
  *(result + 16) = 1;
  return result;
}

uint64_t ulocimp_getSubtags(uint64_t result, icu::ByteSink *a2, icu::ByteSink *a3, icu::ByteSink *a4, icu::ByteSink *a5, char **a6, UErrorCode *a7)
{
  v68[2] = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v10 = a4;
    v13 = result;
    if (a6)
    {
      *a6 = result;
    }

    else if (!a2 && !a3 && !a4 && !a5)
    {
      goto LABEL_47;
    }

    if (!result)
    {
      result = uloc_getDefault_0();
      v13 = result;
    }

    v14 = *v13 - 73;
    v15 = v14 > 0x2F;
    v16 = (1 << v14) & 0x800100008001;
    if (v15 || v16 == 0)
    {
      v21 = 0;
    }

    else
    {
      v18 = v13[1];
      if (v18 == 95 || v18 == 45)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }
    }

    while (1)
    {
      v22 = v13[v21];
      v23 = (v22 - 45) > 0x32 || ((1 << (v22 - 45)) & 0x4000000080003) == 0;
      if (!v23 || v22 == 0)
      {
        break;
      }

      if (v21 == 11)
      {
        *a7 = U_ILLEGAL_ARGUMENT_ERROR;
        goto LABEL_47;
      }

      ++v21;
    }

    if (a2 && v21)
    {
      v65 = v10;
      v25 = uprv_max(v21, 4);
      memset(v68, 0, 11);
      v67 = 0;
      v26 = (*(*a2 + 24))(a2, v25, v25, v68, 11, &v67);
      v27 = 0;
      do
      {
        v26[v27] = uprv_asciitolower(v13[v27]);
        ++v27;
      }

      while (v21 != v27);
      v28 = v13[1];
      if (v28 == 45 || v28 == 95)
      {
        v26[1] = 45;
      }

      v10 = v65;
      if (v21 == 3 && (v26[3] = 0, v29 = sub_195265F84(off_1E7408E78, v26), (v29 & 0x10000) != 0))
      {
        v30 = off_1E7407AC8[v29];
        v31 = strlen(v30);
        result = (*(*a2 + 16))(a2, v30, v31);
      }

      else
      {
        result = (*(*a2 + 16))(a2, v26, v21);
      }
    }

    if (*a7 <= 0)
    {
      v33 = &v13[v21];
      if (a6)
      {
        *a6 = v33;
      }

      else if (!a3 && !v10 && !a5)
      {
        goto LABEL_47;
      }

      v34 = *v33;
      if (v34 == 95 || v34 == 45)
      {
        v66 = v10;
        v35 = v13 + 1;
        for (i = 4; ; --i)
        {
          v37 = v35[v21];
          v38 = (v37 - 45) > 0x32 || ((1 << (v37 - 45)) & 0x4000000080003) == 0;
          if (!v38 || v37 == 0)
          {
            break;
          }

          result = uprv_isASCIILetter(v37);
          if (!result)
          {
            break;
          }

          if (!i)
          {
            v10 = v66;
            goto LABEL_76;
          }

          ++v35;
        }

        v10 = v66;
        if (i)
        {
          goto LABEL_76;
        }

        __s = (v33 + 5);
        if (a3)
        {
          v67 = 0;
          LODWORD(v68[0]) = 0;
          v40 = (*(*a3 + 24))(a3, 4, 4, v68, 4, &v67);
          v41 = 0;
          *v40 = uprv_toupper(v33[1]);
          do
          {
            v40[v41 + 1] = uprv_asciitolower(v13[v21 + 2 + v41]);
            ++v41;
          }

          while (v41 != 3);
          result = (*(*a3 + 16))(a3, v40, 4);
          v10 = v66;
        }

        if (a6)
        {
          v42 = 0;
          v33 += 5;
          *a6 = __s;
          v43 = v10 == 0;
          v44 = a5 == 0;
          goto LABEL_79;
        }

        v33 += 5;
      }

LABEL_76:
      v43 = v10 == 0;
      v44 = a5 == 0;
      v42 = a6 == 0;
      if (v10 || a5 || a6)
      {
LABEL_79:
        v45 = *v33;
        if (v45 != 45 && v45 != 95)
        {
          goto LABEL_92;
        }

        v46 = 0;
        v47 = v33 + 1;
        while (1)
        {
          v48 = v47[v46];
          v49 = (v48 - 45) > 0x32 || ((1 << (v48 - 45)) & 0x4000000080003) == 0;
          if (!v49 || v48 == 0)
          {
            break;
          }

          if (v46 == 3)
          {
            goto LABEL_92;
          }

          ++v46;
        }

        if (v46 >= 2)
        {
          if (!v43)
          {
            v52 = v42;
            v67 = 0;
            LODWORD(v68[0]) = 0;
            v53 = v10;
            v54 = (*(*v10 + 24))(v10, 4, 4, v68, 4, &v67);
            for (j = 0; j != v46; ++j)
            {
              v54[j] = uprv_toupper(v47[j]);
            }

            if (v46 == 3 && (v54[3] = 0, v56 = sub_195265F84(off_1E740AA90, v54), (v56 & 0x10000) != 0))
            {
              v57 = off_1E740A228[v56];
              v58 = strlen(v57);
              result = (*(*v53 + 16))(v53, v57, v58);
            }

            else
            {
              result = (*(*v53 + 16))(v53, v54, v46);
            }

            v42 = v52;
          }

          v33 = &v47[v46];
          if (a6)
          {
            *a6 = v33;
          }

          v51 = 1;
        }

        else
        {
LABEL_92:
          v51 = 0;
        }

        if (!v42 || !v44)
        {
          v59 = *v33;
          if (v59 == 95 || v59 == 45 && ((v60 = v33[1] - 84, v60 > 0x24) || ((1 << v60) & 0x1300000013) == 0 || v33[2] != 45))
          {
            if ((v51 & 1) == 0)
            {
              v61 = v33[1];
              if (v61 == 95 || v61 == 45)
              {
                ++v33;
              }
            }

            v68[0] = 0;
            v63 = *v33;
            v62 = (v33 + 1);
            result = sub_195266B28(v62, v63, a5, v68, 0, a7);
            if (*a7 <= 0 && a6 && v68[0] != v62)
            {
              *a6 = v68[0];
            }
          }
        }
      }
    }
  }

LABEL_47:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_195266B28(char *__s, int a2, uint64_t a3, char **a4, char a5, int *a6)
{
  if (*a6 > 0)
  {
    return __s;
  }

  v25 = v6;
  v26 = v7;
  v13 = __s;
  if (a4)
  {
    *a4 = __s;
  }

  if (a2 != 95 && a2 != 45)
  {
LABEL_23:
    if (a2 != 64)
    {
      __s = strchr(v13, 64);
      if (!__s)
      {
        return __s;
      }

      v13 = __s + 1;
    }

    for (i = 179; ; --i)
    {
      v20 = *v13;
      if (!*v13 || v20 == 46 || v20 == 64)
      {
        if (a4)
        {
          *a4 = v13;
        }

        return __s;
      }

      if (!i)
      {
        goto LABEL_42;
      }

      if (a5)
      {
        if (!a3)
        {
          goto LABEL_39;
        }

        (*(*a3 + 16))(a3, "_", 1);
        LOBYTE(v20) = *v13;
      }

      else if (!a3)
      {
        goto LABEL_39;
      }

      v21 = uprv_toupper(v20);
      if ((v21 & 0xFFFFFFFE) == 0x2C)
      {
        v22 = 95;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22;
      __s = (*(*a3 + 16))(a3, &v23, 1);
LABEL_39:
      a5 = 0;
      ++v13;
    }
  }

  v14 = 179;
  for (j = __s; ; ++j)
  {
    v16 = *j;
    if (!*j || v16 == 46 || v16 == 64)
    {
      break;
    }

    if (!v14)
    {
LABEL_42:
      *a6 = 1;
      return __s;
    }

    if (a5)
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      (*(*a3 + 16))(a3, "_", 1);
      LOBYTE(v16) = *j;
    }

    else if (!a3)
    {
      goto LABEL_19;
    }

    v17 = uprv_toupper(v16);
    if (v17 == 45)
    {
      v18 = 95;
    }

    else
    {
      v18 = v17;
    }

    v24 = v18;
    __s = (*(*a3 + 16))(a3, &v24, 1);
LABEL_19:
    a5 = 0;
    --v14;
  }

  if (a4)
  {
    *a4 = j;
  }

  if (v14 == 179)
  {
    goto LABEL_23;
  }

  return __s;
}

void *uloc_openKeywordList(const void *a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = malloc_type_malloc(0x10uLL, 0x10040B8F86A93uLL);
  v8 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  v3 = v8;
  if (v7 && v8 && (v9 = *&off_1F09358E0, *v8 = xmmword_1F09358D0, v8[1] = v9, v8[2] = xmmword_1F09358F0, *(v8 + 6) = off_1F0935900, v10 = malloc_type_malloc(a2 + 1, 0x100004077774924uLL), (*v7 = v10) != 0))
  {
    memcpy(v10, a1, a2);
    v11 = 0;
    *(*v7 + a2) = 0;
    v7[1] = *v7;
    v3[1] = v7;
    v7 = 0;
  }

  else
  {
    *a3 = 7;
    v11 = v3;
    v3 = 0;
  }

  free(v11);
  free(v7);
  return v3;
}

UErrorCode *uloc_openKeywords(char *__s, int *a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2 <= 0)
    {
      Default_0 = __s;
      memset(&v20[1], 0, 48);
      v21 = 0;
      v20[0] = &v20[1] + 5;
      LODWORD(v20[1]) = 40;
      if (__s)
      {
        if (!strchr(__s, 64))
        {
          v4 = strlen(Default_0);
          if (v4 >= 1)
          {
            v5 = 0;
            v6 = 0;
            v7 = v4 & 0x7FFFFFFF;
            v8 = 1;
            do
            {
              v9 = Default_0[v5];
              if (v9 == 45 || v9 == 95)
              {
                if (v6 >= v4)
                {
                  v10 = v4;
                }

                else
                {
                  v10 = v6;
                }

                if (v6)
                {
                  v4 = v10;
                }

                v8 = 1;
              }

              else
              {
                v11 = (v8 & 1) == 0;
                v8 = 0;
                if (v11)
                {
                  ++v6;
                }

                else
                {
                  v6 = 1;
                }
              }

              ++v5;
            }

            while (v7 != v5);
            if (v4 == 1)
            {
              ulocimp_forLanguageTag(Default_0, 0, v2, -1, v16);
              icu::CharString::operator=(v20, v16);
              if (BYTE4(v16[1]))
              {
                free(v16[0]);
              }

              if (*v2 <= 0 && v21)
              {
                Default_0 = v20[0];
              }
            }
          }
        }
      }

      else
      {
        Default_0 = uloc_getDefault_0();
      }

      __sa = Default_0;
      ulocimp_getSubtags(Default_0, 0, 0, 0, 0, &__sa, v2);
      if (*v2 <= 0 && (v14 = strchr(__sa, 64), (__sa = v14) != 0))
      {
        v18 = 0u;
        v19 = 0u;
        *v16 = 0u;
        v17 = 0u;
        ulocimp_getKeywords(v14 + 1, v2, 64, 0, v16);
        if (*v2 <= 0)
        {
          v2 = uloc_openKeywordList(v16[0], SDWORD2(v19), v2);
        }

        else
        {
          v2 = 0;
        }

        if (BYTE4(v16[1]))
        {
          free(v16[0]);
        }
      }

      else
      {
        v2 = 0;
      }

      if (BYTE4(v20[1]))
      {
        free(v20[0]);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t uloc_getParent(char *a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_getParent(a1, &v10, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_getParent(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_getParent(a1, v7, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

char *ulocimp_getParent(char *__s, icu::ByteSink *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    Default_0 = __s;
    if (!__s)
    {
      Default_0 = uloc_getDefault_0(0);
    }

    __s = strrchr(Default_0, 95);
    if (__s)
    {
      v5 = __s - Default_0;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= 1)
    {
      v6 = *(*a2 + 16);

      return v6(a2, Default_0);
    }
  }

  return __s;
}

uint64_t uloc_getLanguage(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_getSubtags(a1, &v10, 0, 0, 0, 0, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

uint64_t uloc_getScript(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_getSubtags(a1, 0, &v10, 0, 0, 0, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

uint64_t uloc_getCountry(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_getSubtags(a1, 0, 0, &v10, 0, 0, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

uint64_t uloc_getVariant(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_getSubtags(a1, 0, 0, 0, &v10, 0, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

uint64_t uloc_getName(char *a1, char *a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  sub_195267788(a1);
  v4 = 0;
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = 15;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_getName(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v6[4] = v3;
    v6[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v6[0] = 0;
    v6[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v6, a3);
    sub_195267788(a1);
    icu::CharStringByteSink::~CharStringByteSink(v6);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void sub_195267788(char *__s, icu::ByteSink *a2, char a3, UErrorCode *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    Default_0 = __s;
    memset(&v51[1], 0, 48);
    v51[0] = &v51[1] + 5;
    LODWORD(v51[1]) = 40;
    v52 = 0;
    memset(&v50[1], 0, 56);
    v50[0] = &v50[1] + 5;
    LODWORD(v50[1]) = 40;
    __sa = 0;
    if (__s)
    {
      if (!strchr(__s, 64))
      {
        v8 = strlen(Default_0);
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = 0;
          v11 = v8 & 0x7FFFFFFF;
          v12 = 1;
          do
          {
            v13 = Default_0[v9];
            if (v13 == 45 || v13 == 95)
            {
              if (v10 >= v8)
              {
                v14 = v8;
              }

              else
              {
                v14 = v10;
              }

              if (v10)
              {
                v8 = v14;
              }

              v12 = 1;
            }

            else
            {
              v15 = (v12 & 1) == 0;
              v12 = 0;
              if (v15)
              {
                ++v10;
              }

              else
              {
                v10 = 1;
              }
            }

            ++v9;
          }

          while (v11 != v9);
          if (v8 == 1)
          {
            if (strchr(Default_0, 95))
            {
              v16 = Default_0[1];
              if (v16 != 45 && v16 != 95)
              {
                icu::CharString::append(v50, Default_0, -1, a4);
                if (*a4 <= 0)
                {
                  for (i = v50[0]; ; ++i)
                  {
                    if (*i == 95)
                    {
                      *i = 45;
                    }

                    else if (!*i)
                    {
                      Default_0 = v50[0];
                      break;
                    }
                  }
                }
              }
            }

            ulocimp_forLanguageTag(Default_0, 0, a4, -1, __s1);
            icu::CharString::operator=(v51, __s1);
            if (BYTE4(__s1[1]))
            {
              free(__s1[0]);
            }

            if (*a4 <= 0 && v52)
            {
              Default_0 = v51[0];
            }
          }
        }
      }
    }

    else
    {
      Default_0 = uloc_getDefault_0(0);
    }

    __sa = Default_0;
    memset(&__s1[1], 0, 48);
    v47[1] = 0;
    __s1[0] = &__s1[1] + 5;
    LODWORD(__s1[1]) = 40;
    v49 = 0;
    memset(&v46[1], 0, 48);
    v45[1] = 0;
    v46[0] = &v46[1] + 5;
    LODWORD(v46[1]) = 40;
    v47[0] = 0;
    memset(&v44[1], 0, 48);
    *v43 = 0;
    v44[0] = &v44[1] + 5;
    LODWORD(v44[1]) = 40;
    v45[0] = 0;
    memset(&v42[1], 0, 48);
    v42[0] = &v42[1] + 5;
    LODWORD(v42[1]) = 40;
    ulocimp_getSubtags(Default_0, __s1, v46, v44, v42, &__sa, a4);
    if (*a4 > 0)
    {
      goto LABEL_31;
    }

    if (v49 == 9 && (v19 = strncmp(Default_0, "i-defaultund", 9uLL), !v19))
    {
      LODWORD(v49) = 0;
      *__s1[0] = 0;
      v21 = uloc_getDefault_0(v19);
      icu::StringPiece::StringPiece(&__s2, v21);
      icu::CharString::append(__s1, __s2, v40[0], a4);
      v20 = 0;
    }

    else
    {
      if (v47[0])
      {
        icu::CharString::append(__s1, 95, a4);
        icu::CharString::append(__s1, v46[0], v47[0], a4);
        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      if (v45[0])
      {
        ++v20;
        icu::CharString::append(__s1, 95, a4);
        icu::CharString::append(__s1, v44[0], v45[0], a4);
      }

      if (v43[0])
      {
        ++v20;
        if (!v45[0])
        {
          icu::CharString::append(__s1, 95, a4);
        }

        icu::CharString::append(__s1, 95, a4);
        icu::CharString::append(__s1, v42[0], v43[0], a4);
      }
    }

    v22 = __sa;
    if (a3)
    {
      v26 = strchr(__sa, 64);
      __sa = v26;
      if (!v26)
      {
        v27 = 0;
        v28 = 0;
LABEL_82:
        v35 = off_1E740B300;
        v36 = 10;
        while (1)
        {
          __s2 = 0;
          *v40 = 0;
          icu::StringPiece::StringPiece(&__s2, *(v35 - 1));
          if (v49 == v40[0])
          {
            if (!v40[0])
            {
              if (__sa)
              {
                goto LABEL_93;
              }

LABEL_92:
              LODWORD(v49) = 0;
              *__s1[0] = 0;
              icu::StringPiece::StringPiece(&v37, *v35);
              icu::CharString::append(__s1, v37, v38, a4);
LABEL_93:
              (*(*a2 + 16))(a2, __s1[0], v49);
              if ((a3 & 2) == 0 && __sa && v28 && (!v27 || v27 > v28))
              {
                (*(*a2 + 16))(a2, "@", 1);
                ulocimp_getKeywords(__sa + 1, 64, a2, 1, a4);
              }

              goto LABEL_31;
            }

            if (!memcmp(__s1[0], __s2, v40[0]))
            {
              goto LABEL_92;
            }
          }

          v35 += 2;
          if (!--v36)
          {
            goto LABEL_93;
          }
        }
      }
    }

    else
    {
      if (*__sa == 46)
      {
        icu::CharString::append(__s1, 46, a4);
        v23 = __sa + 1;
        __sa = v23;
        v24 = strchr(v23, 64);
        if (v24)
        {
          v25 = v24 - v23;
        }

        else
        {
          v25 = strlen(v23);
        }

        if (v25 > 0x40)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
          goto LABEL_31;
        }

        icu::CharString::append(__s1, v23, v25, a4);
        v22 = &__sa[v25];
        __sa += v25;
      }

      v26 = strchr(v22, 64);
      __sa = v26;
      if (!v26)
      {
        v28 = 0;
        v27 = 0;
        goto LABEL_93;
      }
    }

    v29 = v26;
    v28 = strchr(v26, 61);
    v27 = strchr(v29, 59);
    v30 = v28 == 0;
    if ((a3 & 1) == 0 && !v28)
    {
      v31 = *v29;
      if (!*v29)
      {
        v28 = 0;
        goto LABEL_93;
      }

      do
      {
        icu::CharString::append(__s1, v31, a4);
        v31 = *++__sa;
      }

      while (*__sa);
      v28 = 0;
      v30 = 1;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_93;
    }

    if (!v30)
    {
      goto LABEL_82;
    }

    if (v20 < 2 || v20 == 2 && v47[0])
    {
      if (v20 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v20;
      }

      v33 = v32 - v20 + 1;
      do
      {
        icu::CharString::append(__s1, 95, a4);
        --v33;
      }

      while (v33);
    }

    __s2 = 0;
    *v40 = 0;
    icu::CharStringByteSink::CharStringByteSink(&__s2, __s1);
    sub_195266B28(__sa + 1, 64, &__s2, 0, v43[0] != 0, a4);
    v34 = *a4;
    icu::CharStringByteSink::~CharStringByteSink(&__s2);
    if (v34 <= U_ZERO_ERROR)
    {
      goto LABEL_82;
    }

LABEL_31:
    if (BYTE4(v42[1]))
    {
      free(v42[0]);
    }

    if (BYTE4(v44[1]))
    {
      free(v44[0]);
    }

    if (BYTE4(v46[1]))
    {
      free(v46[0]);
    }

    if (BYTE4(__s1[1]))
    {
      free(__s1[0]);
    }

    if (BYTE4(v50[1]))
    {
      free(v50[0]);
    }

    if (BYTE4(v51[1]))
    {
      free(v51[0]);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t uloc_getBaseName(char *a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  sub_195267788(a1, &v10, 2, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_getBaseName(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    sub_195267788(a1, v7, 2, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

uint64_t uloc_canonicalize(char *a1, char *a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  sub_195267788(a1);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = 15;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_canonicalize(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v6[4] = v3;
    v6[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v6[0] = 0;
    v6[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v6, a3);
    sub_195267788(a1);
    icu::CharStringByteSink::~CharStringByteSink(v6);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

uint64_t ualoc_canonicalForm(icu::Locale *a1, void *a2, int a3, int *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__s = 0u;
    v15 = 0u;
    memset(v13, 0, sizeof(v13));
    icu::Locale::createCanonical(a1, v13);
    v8 = __s[1];
    v9 = strlen(__s[1]);
    v10 = uprv_min(v9, a3);
    memcpy(a2, v8, v10);
    v4 = u_terminateChars(a2, a3, v9, a4);
    icu::Locale::~Locale(v13);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

const char *uloc_getISO3Language(const char *Default_0)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = U_ZERO_ERROR;
  if (!Default_0)
  {
    Default_0 = uloc_getDefault_0(0);
  }

  v8 = 0u;
  v9 = 0u;
  *__s1 = 0u;
  v7 = 0u;
  ulocimp_getLanguage(Default_0, &v5, __s1);
  if (v5 <= U_ZERO_ERROR && (v1 = sub_195265F84(off_1E7407AC8, __s1[0]), (v1 & 0x10000) != 0))
  {
    v2 = off_1E7408E78[v1];
  }

  else
  {
    v2 = "";
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

const char *uloc_getISO3Country(const char *Default_0)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = U_ZERO_ERROR;
  if (!Default_0)
  {
    Default_0 = uloc_getDefault_0(0);
  }

  v8 = 0u;
  v9 = 0u;
  *__s1 = 0u;
  v7 = 0u;
  ulocimp_getRegion(Default_0, &v5, __s1);
  if (v5 <= U_ZERO_ERROR && (v1 = sub_195265F84(off_1E740A228, __s1[0]), (v1 & 0x10000) != 0))
  {
    v2 = off_1E740AA90[v1];
  }

  else
  {
    v2 = "";
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t uloc_getLCID(char *a1)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v8 = U_ZERO_ERROR;
  if (a1 && strlen(a1) >= 2)
  {
    v2 = uprv_convertToLCIDPlatform();
    v3 = v2;
    if (!v2)
    {
      memset(v17, 0, 64);
      ulocimp_getLanguage(a1, &v8, v17);
      if (v8 <= U_ZERO_ERROR)
      {
        if (!strchr(a1, 64))
        {
          goto LABEL_15;
        }

        v15 = 0u;
        v16 = 0u;
        *v13 = 0u;
        v14 = 0u;
        ulocimp_getKeywordValue(a1, "collation", 9, &v8, v13);
        if (v8 > U_ZERO_ERROR || !DWORD2(v16))
        {
          goto LABEL_11;
        }

        v11 = 0u;
        v12 = 0u;
        *v9 = 0u;
        v10 = 0u;
        ulocimp_getBaseName(a1, &v8, v9);
        ulocimp_setKeywordValue("collation", 9, v13[0], SDWORD2(v16), v9, &v8);
        v7 = v8;
        if (v8 <= U_ZERO_ERROR)
        {
          v3 = uprv_convertToLCID(v17[0], v9[0], &v8);
        }

        if (BYTE4(v9[1]))
        {
          free(v9[0]);
        }

        if (v7 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          v6 = 0;
        }

        else
        {
LABEL_11:
          v8 = U_ZERO_ERROR;
          v6 = 1;
        }

        if (BYTE4(v13[1]))
        {
          free(v13[0]);
        }

        if (v6)
        {
LABEL_15:
          v3 = uprv_convertToLCID(v17[0], a1, &v8);
        }
      }

      else
      {
        v3 = 0;
      }

      if (BYTE4(v17[1]))
      {
        free(v17[0]);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

char *uloc_setDefault(char *a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1951E8CD4(a1);
  }

  return a1;
}

const char *uloc_toUnicodeLocaleKey(const char *__s)
{
  if (__s)
  {
    v1 = __s;
    if (*__s)
    {
      v3[0] = 0;
      v3[1] = 0;
      v4 = 0;
      v2 = strlen(__s);
      ulocimp_toBcpKeyWithFallback(v1, v2, v3);
      if (v4)
      {
        return v3[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

double ulocimp_toBcpKeyWithFallback@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  ulocimp_toBcpKey(a1, a2, &v7);
  if ((v8 & 1) != 0 || !sub_19526A898(a1, a2))
  {
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 1;
  }

  return result;
}

const char *uloc_toUnicodeLocaleType(const char *__s, char *a2)
{
  if (__s)
  {
    v3 = __s;
    __s = 0;
    if (a2)
    {
      if (*v3)
      {
        if (*a2)
        {
          v6[0] = 0;
          v6[1] = 0;
          v7 = 0;
          v4 = strlen(v3);
          v5 = strlen(a2);
          ulocimp_toBcpTypeWithFallback(v3, v4, a2, v5, v6);
          if (v7)
          {
            return v6[0];
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return __s;
}

double ulocimp_toBcpTypeWithFallback@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = 0uLL;
  v10 = 0;
  ulocimp_toBcpType(a1, a2, a3, a4, &v9);
  if ((v10 & 1) != 0 || !sub_19526A90C(a3, a4))
  {
    result = *&v9;
    *a5 = v9;
    *(a5 + 16) = v10;
  }

  else
  {
    *a5 = a3;
    *(a5 + 8) = a4;
    *(a5 + 16) = 1;
  }

  return result;
}

const char *uloc_toLegacyKey(const char *__s)
{
  if (__s)
  {
    v1 = __s;
    if (*__s)
    {
      v3 = 0uLL;
      v4 = 0;
      v2 = strlen(__s);
      ulocimp_toLegacyKeyWithFallback(v1, v2, &v3);
      if (v4)
      {
        return v3.n128_u64[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

void ulocimp_toLegacyKeyWithFallback(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  ulocimp_toLegacyKey(a1, a2, &v11);
  if (v12)
  {
LABEL_2:
    *a3 = v11;
    a3[1].n128_u64[0] = v12;
    return;
  }

  if (a2)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      v8 = *v7;
      isASCIILetter = uprv_isASCIILetter(*v7);
      if ((v8 - 48) >= 0xA && !isASCIILetter)
      {
        goto LABEL_2;
      }

      ++v7;
    }

    while (--v6);
  }

  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = a2;
  a3[1].n128_u8[0] = 1;
}

const char *uloc_toLegacyType(const char *__s, const char *a2)
{
  if (__s)
  {
    v3 = __s;
    __s = 0;
    if (a2)
    {
      if (*v3)
      {
        if (*a2)
        {
          v6[0] = 0;
          v6[1] = 0;
          v7 = 0;
          v4 = strlen(v3);
          v5 = strlen(a2);
          ulocimp_toLegacyTypeWithFallback(v3, v4, a2, v5, v6);
          if (v7)
          {
            return v6[0];
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return __s;
}

double ulocimp_toLegacyTypeWithFallback@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = 0uLL;
  v18 = 0;
  ulocimp_toLegacyType(a1, a2, a3, a4, &v17);
  if ((v18 & 1) == 0 && a4)
  {
    v8 = 0;
    v9 = (a3 + a4);
    v10 = a3;
    while (1)
    {
      while (1)
      {
        v11 = *v10;
        if ((v11 - 45) > 0x32 || ((1 << (v11 - 45)) & 0x4000000000005) == 0)
        {
          break;
        }

        if (v8)
        {
          v8 = 0;
          if (++v10 != v9)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v13 = v11;
      isASCIILetter = uprv_isASCIILetter(v11);
      if ((v13 - 48) >= 0xA && !isASCIILetter)
      {
        break;
      }

      ++v8;
      if (++v10 == v9)
      {
        if (!v8)
        {
          break;
        }

        *a5 = a3;
        *(a5 + 8) = a4;
        *(a5 + 16) = 1;
        return result;
      }
    }
  }

LABEL_18:
  result = *&v17;
  *a5 = v17;
  *(a5 + 16) = v18;
  return result;
}

void sub_195268B0C(void ***a1)
{
  free(*a1[1]);
  free(a1[1]);

  free(a1);
}

uint64_t sub_195268B54(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (!*v1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    v2 = (v2 + 1);
    v3 = &v1[strlen(v1)];
    v4 = *(v3 + 1);
    v1 = v3 + 1;
  }

  while (v4);
  return v2;
}

_BYTE *sub_195268BA8(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (!*v4)
  {
    v4 = 0;
    v5 = 0;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = strlen(*(v3 + 8));
  *(v3 + 8) = &v4[v5 + 1];
  if (a2)
  {
LABEL_3:
    *a2 = v5;
  }

  return v4;
}

void ulocimp_toBcpKey(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  if (atomic_load_explicit(&dword_1ED442990, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442990))
  {
    if (dword_1ED442994 >= 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1952691A0(&v7);
    dword_1ED442994 = v7;
    icu::umtx_initImplPostInit(&dword_1ED442990);
  }

  if (v7 < 1)
  {
    v5 = uhash_get(qword_1ED442988, v6);
    if (v5)
    {
      *a3 = *(v5 + 16);
      v4 = 1;
      goto LABEL_7;
    }
  }

LABEL_6:
  v4 = 0;
  *a3 = 0;
LABEL_7:
  *(a3 + 16) = v4;
}

__n128 ulocimp_toLegacyKey@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  if (atomic_load_explicit(&dword_1ED442990, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442990))
  {
    if (dword_1ED442994 >= 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1952691A0(&v7);
    dword_1ED442994 = v7;
    icu::umtx_initImplPostInit(&dword_1ED442990);
  }

  if (v7 < 1)
  {
    v5 = uhash_get(qword_1ED442988, v6);
    if (v5)
    {
      result = *v5;
      *a3 = *v5;
      a3[1].n128_u8[0] = 1;
      return result;
    }
  }

LABEL_6:
  a3->n128_u8[0] = 0;
  a3[1].n128_u8[0] = 0;
  return result;
}

void ulocimp_toBcpType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  *&v12 = a3;
  *(&v12 + 1) = a4;
  v14 = 0;
  if (atomic_load_explicit(&dword_1ED442990, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442990))
  {
    if (dword_1ED442994 >= 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1952691A0(&v14);
    dword_1ED442994 = v14;
    icu::umtx_initImplPostInit(&dword_1ED442990);
  }

  if (v14 < 1)
  {
    v7 = uhash_get(qword_1ED442988, v13);
    if (v7)
    {
      v8 = v7;
      v9 = uhash_get(*(v7 + 32), &v12);
      if (v9)
      {
        v10 = *(v9 + 16);
LABEL_11:
        *a5 = v10;
        v6 = 1;
        goto LABEL_7;
      }

      v11 = *(v8 + 40);
      if (v11)
      {
        if (v11 & 1) != 0 && (sub_195268EC4(v12, *(&v12 + 1)))
        {
          goto LABEL_20;
        }

        if ((v11 & 2) != 0)
        {
          if (sub_195268F5C(v12, *(&v12 + 1)))
          {
LABEL_20:
            v10 = v12;
            goto LABEL_11;
          }

          v11 = *(v8 + 40);
        }

        if ((v11 & 4) != 0 && sub_195268FF4(v12, *(&v12 + 1)))
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_6:
  v6 = 0;
  *a5 = 0;
LABEL_7:
  *(a5 + 16) = v6;
}

uint64_t sub_195268EC4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  while (*a1 == 45)
  {
    v3 = 0;
    if ((v2 - 7) < 0xFFFFFFFD)
    {
      goto LABEL_15;
    }

LABEL_12:
    ++a1;
    v2 = v3;
    if (!--a2)
    {
      v8 = 1;
      v2 = v3;
      goto LABEL_16;
    }
  }

  if ((*a1 - 48) < 0xAu || ((v4 = *a1 - 65, v5 = v4 > 0x25, v6 = (1 << v4) & 0x3F0000003FLL, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    v3 = v2 + 1;
    goto LABEL_12;
  }

LABEL_15:
  v8 = 0;
LABEL_16:
  if ((v2 - 4) < 3)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195268F5C(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  while (1)
  {
    v5 = *a1;
    if (v5 != 45)
    {
      break;
    }

    v6 = 0;
    if ((v4 - 9) < 0xFFFFFFFA)
    {
      goto LABEL_11;
    }

LABEL_8:
    ++a1;
    v4 = v6;
    if (!--v2)
    {
      v7 = 1;
      v4 = v6;
      goto LABEL_12;
    }
  }

  if (uprv_isASCIILetter(v5))
  {
    v6 = v4 + 1;
    goto LABEL_8;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  if ((v4 - 3) < 6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195268FF4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a1 + v4);
    if (v4 > 1)
    {
      break;
    }

    if (!uprv_isASCIILetter(v5))
    {
      goto LABEL_10;
    }

LABEL_7:
    if (a2 == ++v4)
    {
      v6 = 1;
      LODWORD(v4) = a2;
      goto LABEL_11;
    }
  }

  if ((v5 & 0xFFFFFFDF) == 0x5A)
  {
    goto LABEL_7;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  if (v4 == 6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void ulocimp_toLegacyType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  *&v12 = a3;
  *(&v12 + 1) = a4;
  v14 = 0;
  if (atomic_load_explicit(&dword_1ED442990, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442990))
  {
    if (dword_1ED442994 >= 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1952691A0(&v14);
    dword_1ED442994 = v14;
    icu::umtx_initImplPostInit(&dword_1ED442990);
  }

  if (v14 < 1)
  {
    v7 = uhash_get(qword_1ED442988, v13);
    if (v7)
    {
      v8 = v7;
      v9 = uhash_get(*(v7 + 32), &v12);
      if (v9)
      {
        v10 = *v9;
LABEL_11:
        *a5 = v10;
        v6 = 1;
        goto LABEL_7;
      }

      v11 = *(v8 + 40);
      if (v11)
      {
        if (v11 & 1) != 0 && (sub_195268EC4(v12, *(&v12 + 1)))
        {
          goto LABEL_20;
        }

        if ((v11 & 2) != 0)
        {
          if (sub_195268F5C(v12, *(&v12 + 1)))
          {
LABEL_20:
            v10 = v12;
            goto LABEL_11;
          }

          v11 = *(v8 + 40);
        }

        if ((v11 & 4) != 0 && sub_195268FF4(v12, *(&v12 + 1)))
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_6:
  v6 = 0;
  *a5 = 0;
LABEL_7:
  *(a5 + 16) = v6;
}

void sub_1952691A0(int *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1952376A4(6u, sub_195269C7C);
  qword_1ED442988 = uhash_open(uhash_hashIStringView, uhash_compareIStringView, 0, a1);
  v2 = ures_openDirect(0, "keyTypeData", a1);
  v3 = ures_getByKey(v2, "keyMap", 0, a1);
  v4 = ures_getByKey(v2, "typeMap", 0, a1);
  if (*a1 <= 0)
  {
    v6 = 0;
    ures_getByKey(v2, "typeAlias", 0, &v6);
    v6 = 0;
    ures_getByKey(v2, "bcpTypeAlias", 0, &v6);
    operator new();
  }

  if (v4)
  {
    ures_close(v4);
  }

  if (v3)
  {
    ures_close(v3);
  }

  if (v2)
  {
    ures_close(v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195269C7C()
{
  if (qword_1ED442988)
  {
    uhash_close(qword_1ED442988);
    qword_1ED442988 = 0;
  }

  if (qword_1ED4429A0)
  {
    v0 = sub_19526A284(qword_1ED4429A0);
    MEMORY[0x19A8B2600](v0, 0x10A0C40F0F83814);
  }

  qword_1ED4429A0 = 0;
  if (qword_1ED4429A8)
  {
    v1 = sub_19526A314(qword_1ED4429A8);
    MEMORY[0x19A8B2600](v1, 0x10A0C40F0F83814);
  }

  qword_1ED4429A8 = 0;
  if (qword_1EAEC9A30)
  {
    v2 = sub_19526A394(qword_1EAEC9A30);
    MEMORY[0x19A8B2600](v2, 0x10A0C40F0F83814);
  }

  qword_1EAEC9A30 = 0;
  if (qword_1ED442998)
  {
    v3 = sub_19526A414(qword_1ED442998);
    MEMORY[0x19A8B2600](v3, 0x10A0C40F0F83814);
  }

  qword_1ED442998 = 0;
  atomic_store(0, &dword_1ED442990);
  return 1;
}

void *sub_195269D3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_195269E44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(v4, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return v5;
}

void *sub_195269F8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_19526A084(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_19526A188(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t sub_19526A284(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        v5 = *(v4 + 32);
        if (v5)
        {
          uhash_close(v5);
        }

        MEMORY[0x19A8B2600](v4, 0x1070C40AFB791DBLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19526A314(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        MEMORY[0x19A8B2600](v4, 0x1050C407EF9F939);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19526A394(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        MEMORY[0x19A8B2600](v4, 0x1050C40717B85FCLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19526A414(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 12))
        {
          free(*v4);
        }

        MEMORY[0x19A8B2600](v4, 0x1010C40AA5E6C2FLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

BOOL sub_19526A4A8(char *__s, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v2 = strlen(__s);
  }

  if (v2 - 2 > 6 || !uprv_isASCIILetter(*__s))
  {
    return 0;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (v2 == v4)
    {
      break;
    }

    isASCIILetter = uprv_isASCIILetter(__s[v4]);
    v4 = v5 + 1;
  }

  while (isASCIILetter);
  return v5 >= v2;
}

BOOL sub_19526A534(char *__s, int a2)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  if (a2 != 4 || !uprv_isASCIILetter(*__s))
  {
    return 0;
  }

  v3 = __s + 1;
  v4 = 1;
  while (v4 != -2)
  {
    v5 = *v3++;
    --v4;
    if (!uprv_isASCIILetter(v5))
    {
      return -v4 > 2;
    }
  }

  return 1;
}

BOOL sub_19526A5B0(char *__s, int a2)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  if (a2 == 3)
  {
    if (*__s - 48 <= 9 && __s[1] - 48 <= 9 && __s[2] - 48 < 0xA)
    {
      return 1;
    }
  }

  else if (a2 == 2 && uprv_isASCIILetter(*__s))
  {
    v3 = 0;
    v4 = __s + 1;
    while (v3 != 1)
    {
      if (!uprv_isASCIILetter(v4[v3++]))
      {
        return v3 != 1;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_19526A680(uint64_t (*a1)(char *, void), char *__s, int a3)
{
  v3 = __s;
  if (a3 < 0)
  {
    a3 = strlen(__s);
  }

  if (a3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = a3;
  v7 = v3;
  do
  {
    if (*v3 == 45)
    {
      if (!v5 || (a1(v5, (v7 - v5)) & 1) == 0)
      {
        return 0;
      }

      v5 = 0;
    }

    else if (!v5)
    {
      v5 = v3;
    }

    ++v3;
    ++v7;
    ++v4;
  }

  while (v4 < v6);
  if (!v5)
  {
    return 0;
  }

  return a1(v5, (v7 - v5));
}

BOOL sub_19526A754(char *__s, int a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = strlen(__s);
  }

  return sub_19526A820(__s, v2, 5) || v2 == 4 && *__s - 48 <= 9 && sub_19526D708((__s + 1), 3);
}

BOOL sub_19526A820(char *__s, int a2, int a3)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  return a2 >= a3 && a2 <= 8 && sub_19526D708(__s, a2);
}

BOOL sub_19526A898(char *__s, int a2)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  return a2 == 2 && (uprv_isASCIILetter(*__s) || *__s - 48 <= 9) && uprv_isASCIILetter(__s[1]);
}

char *sub_19526A928(char *a1)
{
  v1 = a1;
  v2 = strchr(a1, 45);
  if (v2)
  {
    v3 = v2;
    while (!sub_19526A998(v1, v3 - v1))
    {
      v1 = v3 + 1;
      v3 = strchr(v3 + 1, 45);
      if (!v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (!sub_19526A998(v1, -1))
    {
      return 0;
    }
  }

  return v1;
}

BOOL sub_19526A998(char *__s, int a2)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  return a2 == 2 && uprv_isASCIILetter(*__s) && __s[1] - 48 < 0xA;
}

uint64_t sub_19526AA14(uint64_t (*a1)(int *, char *, uint64_t), char *__s, int a3)
{
  v3 = a3;
  v4 = __s;
  v11 = 0;
  if (a3 < 0)
  {
    v3 = strlen(__s);
  }

  if (v3 >= 1)
  {
    v6 = 0;
    v7 = v4 + 1;
    v8 = v3 + 1;
    while (1)
    {
      if (*(v7 - 1) == 45)
      {
        v9 = a1(&v11, v4, v6);
        v6 = 0;
        v4 = v7;
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v6 = (v6 + 1);
      }

      ++v7;
      if (--v8 <= 1)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = 0;
LABEL_12:
  LODWORD(result) = a1(&v11, v4, v6);
  if (v11 >= 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL sub_19526AAD8(int *a1, char *__s, unsigned int a3)
{
  v3 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    v3 = strlen(__s);
  }

  result = 0;
  v7 = *a1;
  if (*a1 <= 1)
  {
    if (v7 == -1)
    {
      result = sub_19526A820(__s, v3, 3);
      if (!result)
      {
        return result;
      }

      v8 = 6;
      goto LABEL_27;
    }

    if (!v7)
    {
      if (sub_19526A4A8(__s, v3) && v3 != 4)
      {
        result = 1;
        *a1 = 1;
        return result;
      }

LABEL_25:
      result = sub_19526A998(__s, v3);
      if (!result)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v7 != 1)
    {
      return result;
    }

    if (sub_19526A534(__s, v3))
    {
      v8 = 2;
LABEL_27:
      *a1 = v8;
      return 1;
    }

    goto LABEL_16;
  }

  if ((v7 - 3) < 2)
  {
LABEL_18:
    if (sub_19526A754(__s, v3))
    {
      v8 = 4;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
LABEL_16:
    if (sub_19526A5B0(__s, v3))
    {
      v8 = 3;
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (v7 != 6)
  {
    return result;
  }

  if (sub_19526A998(__s, v3))
  {
LABEL_26:
    v8 = -1;
    goto LABEL_27;
  }

  return sub_19526A820(__s, v3, 3);
}

BOOL sub_19526AC54(int *a1, char *__s, int a3)
{
  v6 = *a1;
  if (*a1 == 2)
  {
LABEL_4:
    if (sub_19526A898(__s, a3))
    {
      result = 1;
      *a1 = 1;
    }

    else
    {

      return sub_19526A820(__s, a3, 3);
    }

    return result;
  }

  if (v6 != 1)
  {
    if (v6)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (!sub_19526A898(__s, a3))
  {
    result = sub_19526A820(__s, a3, 3);
    if (!result)
    {
      return result;
    }

    *a1 = 2;
  }

  return 1;
}

uint64_t uloc_toLanguageTag(char *a1, char *a2, int a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v12, a2, a3);
  ulocimp_toLanguageTag(a1, &v12, a4 != 0, a5);
  if (*a5 <= 0)
  {
    v5 = DWORD2(v13);
    if (BYTE12(v13))
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v5 = u_terminateChars(a2, a3, DWORD2(v13), a5);
    }
  }

  else
  {
    v5 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v12);
  return v5;
}

void ulocimp_toLanguageTag(char *a1@<X0>, UErrorCode *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  if (*a2 < 1)
  {
    v9[6] = v4;
    v9[7] = v5;
    *(a4 + 8) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *a4 = a4 + 13;
    *(a4 + 8) = 40;
    v9[0] = 0;
    v9[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v9, a4);
    ulocimp_toLanguageTag(a1, v9, a3, a2);
    icu::CharStringByteSink::~CharStringByteSink(v9);
  }

  else
  {
    *a4 = a4 + 13;
    *(a4 + 8) = 40;
    *(a4 + 12) = 0;
    *(a4 + 56) = 0;
  }
}

void ulocimp_toLanguageTag(char *a1, icu::ByteSink *a2, int a3, UErrorCode *a4)
{
  v114 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_239;
  }

  v91 = U_ZERO_ERROR;
  memset(v103, 0, sizeof(v103));
  ulocimp_canonicalize(a1, &v91, v103);
  if (v91 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a4 = v91;
    goto LABEL_237;
  }

  KeywordsStart = locale_getKeywordsStart(v103[0]);
  if (KeywordsStart == v103[0])
  {
    v9 = uloc_openKeywords(v103[0], &v91);
    v10 = v9;
    if (v91 <= U_ZERO_ERROR && uenum_count(v9, &v91) == 1)
    {
      LODWORD(v102[0]) = 0;
      v11 = uenum_next(v10, v102, &v91);
      if (LODWORD(v102[0]) == 1)
      {
        v12 = v11;
        if (*v11 == 120)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v13 = strlen(v11);
          ulocimp_getKeywordValue(a1, v12, v13, &v91, &v108);
          if (v91 > U_ZERO_ERROR)
          {
            goto LABEL_10;
          }

          if (sub_19526A680(sub_19526A810, v108, SDWORD2(v111)))
          {
            (*(*a2 + 16))(a2, "und-x-", 6);
            (*(*a2 + 16))(a2, v108, DWORD2(v111));
            goto LABEL_13;
          }

          if (a3)
          {
LABEL_10:
            *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_13:
            if (BYTE12(v108))
            {
              free(v108);
            }

            if (v10)
            {
              uenum_close(v10);
            }

            goto LABEL_237;
          }

          if (BYTE12(v108))
          {
            free(v108);
          }
        }
      }
    }

    if (v10)
    {
      uenum_close(v10);
    }
  }

  LODWORD(v102[0]) = 0;
  if (*a4 >= 1)
  {
    goto LABEL_237;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  ulocimp_getLanguage(v103[0], v102, &v108);
  if (SLODWORD(v102[0]) >= 1 && a3)
  {
    goto LABEL_25;
  }

  if (!DWORD2(v111))
  {
    goto LABEL_34;
  }

  if (!sub_19526A4A8(v108, DWORD2(v111)))
  {
    if (a3)
    {
LABEL_25:
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_35;
    }

LABEL_34:
    (*(*a2 + 16))(a2, "und", 3);
    goto LABEL_35;
  }

  v14 = DWORD2(v111);
  v15 = "in";
  v16 = -2;
  v17 = v108;
  while (1)
  {
    if (v14 < strlen(v15))
    {
LABEL_32:
      (*(*a2 + 16))(a2, v17, v14);
      goto LABEL_35;
    }

    if (!strcmp(v17, v15))
    {
      break;
    }

    v15 += 8;
    v16 += 2;
    if (v16 >= 0x9A)
    {
      goto LABEL_32;
    }
  }

  v23 = strlen(v15 + 4);
  (*(*a2 + 16))(a2, v15 + 4, v23);
LABEL_35:
  if (BYTE12(v108))
  {
    free(v108);
  }

  v18 = *a4;
  LODWORD(v102[0]) = 0;
  if (v18 > 0)
  {
    goto LABEL_237;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  ulocimp_getScript(v103[0], v102, &v108);
  if (SLODWORD(v102[0]) >= 1)
  {
    goto LABEL_39;
  }

  if (DWORD2(v111))
  {
    if (!sub_19526A534(v108, SDWORD2(v111)))
    {
LABEL_39:
      if (a3)
      {
        *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      }

      goto LABEL_44;
    }

    (*(*a2 + 16))(a2, "-", 1);
    (*(*a2 + 16))(a2, v108, DWORD2(v111));
  }

LABEL_44:
  if (BYTE12(v108))
  {
    free(v108);
  }

  v19 = *a4;
  LODWORD(v102[0]) = 0;
  if (v19 >= 1)
  {
    goto LABEL_237;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  ulocimp_getRegion(v103[0], v102, &v108);
  if (SLODWORD(v102[0]) >= 1)
  {
    goto LABEL_48;
  }

  if (!DWORD2(v111))
  {
    goto LABEL_58;
  }

  if (sub_19526A5B0(v108, SDWORD2(v111)))
  {
    (*(*a2 + 16))(a2, "-", 1);
    v20 = &unk_19547BD8F;
    v21 = -2;
    v22 = v108;
    while (strcmp(v22, v20))
    {
      v20 += 6;
      v21 += 2;
      if (v21 >= 0xA)
      {
        (*(*a2 + 16))(a2, v22, DWORD2(v111));
        goto LABEL_58;
      }
    }

    v24 = strlen(v20 + 3);
    (*(*a2 + 16))(a2, v20 + 3, v24);
  }

  else
  {
LABEL_48:
    if (a3)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

LABEL_58:
  if (BYTE12(v108))
  {
    free(v108);
  }

  if (*a4 > 0)
  {
    goto LABEL_237;
  }

  v95[0] = U_ZERO_ERROR;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  ulocimp_getVariant(v103[0], v95, &v108);
  if (v95[0] > U_ZERO_ERROR || v95[0] == U_STRING_NOT_TERMINATED_WARNING)
  {
    if (a3)
    {
      v32 = 0;
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_103;
    }

    goto LABEL_94;
  }

  if (!DWORD2(v111))
  {
LABEL_94:
    v32 = 0;
    goto LABEL_103;
  }

  v89 = 0;
  v25 = 0;
  v102[0] = 0;
  for (i = v108; ; ++i)
  {
    v27 = *i;
    if (!*i)
    {
      break;
    }

    if (v27 == 95 || v27 == 45)
    {
      *i = 0;
      v28 = 1;
      goto LABEL_70;
    }

    if (!v25)
    {
      v25 = i;
    }

LABEL_91:
    ;
  }

  v28 = 0;
LABEL_70:
  if (!v25)
  {
    if (a3)
    {
      goto LABEL_95;
    }

    if (!v28)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

  v29 = *v25;
  if (*v25)
  {
    v30 = (v25 + 1);
    do
    {
      *(v30 - 1) = uprv_asciitolower(v29);
      v31 = *v30++;
      v29 = v31;
    }

    while (v31);
  }

  if (sub_19526A754(v25, -1))
  {
    if (strcmp(v25, "posix") || DWORD2(v111) != 5)
    {
      operator new();
    }

    v89 = 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

  if (!a3)
  {
    if (sub_19526A820(v25, -1, 1) || ((v28 ^ 1) & 1) != 0)
    {
      goto LABEL_96;
    }

LABEL_90:
    v25 = 0;
    goto LABEL_91;
  }

LABEL_95:
  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_96:
  v33 = v102[0];
  if (*a4 <= 0 && v102[0])
  {
    sub_19526D690(v102[0]);
    v34 = v33;
    do
    {
      (*(*a2 + 16))(a2, "-", 1);
      v35 = strlen(*v34);
      (*(*a2 + 16))(a2, *v34, v35);
      v34 = v34[1];
    }

    while (v34);
  }

  if (v33)
  {
    do
    {
      v36 = *(v33 + 8);
      MEMORY[0x19A8B2600](v33, 0x70C405DA25F43);
      v33 = v36;
    }

    while (v36);
  }

  v32 = v89;
LABEL_103:
  if (BYTE12(v108))
  {
    free(v108);
  }

  if (*a4 > 0)
  {
    goto LABEL_237;
  }

  v37 = v103[0];
  *&v108 = 0;
  v109 = 0u;
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  *(&v108 + 1) = &v109 + 8;
  LODWORD(v109) = 8;
  v102[0] = 0;
  memset(&v102[2], 0, 72);
  v102[1] = &v102[3];
  LODWORD(v102[2]) = 8;
  v101[0] = 0;
  memset(&v101[2], 0, 72);
  v101[1] = &v101[3];
  LODWORD(v101[2]) = 8;
  v38 = uloc_openKeywords(v103[0], a4);
  v40 = *a4 < 1 && v38 != 0;
  if (((v32 | v40) & 1) == 0)
  {
    goto LABEL_203;
  }

  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  *v95 = 0;
  memset(v96, 0, sizeof(v96));
  *&v95[2] = v96 + 8;
  LODWORD(v96[0]) = 8;
  v94 = 0;
  v90 = v38;
  v41 = uenum_next(v38, 0, a4);
  if (!v41)
  {
    goto LABEL_181;
  }

  v42 = v41;
  *&v87[8] = 0;
  v88 = 0;
  *v87 = a3 ^ 1u;
  while (2)
  {
    v107 = 0u;
    memset(v106, 0, sizeof(v106));
    v43 = strlen(v42);
    ulocimp_getKeywordValue(v37, v42, v43, &v94, v106);
    v44 = DWORD2(v107);
    v100 = DWORD2(v107);
    v45 = v94;
    if (v94 >= 1)
    {
      if (v94 != 7)
      {
        if (!a3)
        {
          v94 = 0;
LABEL_167:
          v54 = 2;
          goto LABEL_168;
        }

LABEL_164:
        v45 = U_ILLEGAL_ARGUMENT_ERROR;
      }

LABEL_165:
      *a4 = v45;
      v54 = 3;
      goto LABEL_168;
    }

    v46 = strlen(v42);
    if (strcmp(v42, "attribute"))
    {
      if (v46 < 2)
      {
        if (*v42 == 120)
        {
          v59 = v106[0];
          v60 = sub_19526A810;
          v61 = v44;
        }

        else
        {
          if (!sub_19526DAC8(v42, v46))
          {
            goto LABEL_163;
          }

          v59 = v106[0];
          v61 = v100;
          v60 = sub_19526A7EC;
        }

        if (sub_19526A680(v60, v59, v61))
        {
          *v104 = v106[0];
          v63 = sub_19526DB3C(v95);
          if (v63)
          {
            v64 = v94;
            if (v94 < 1)
            {
              *&v87[4] = *v63;
              v88 = v42;
LABEL_154:
              v62 = sub_19526DC78(v102);
              if (v62)
              {
                *v62 = v88;
                v62[1] = *&v87[4];
                if ((sub_19526DD70(&v99, v62, 1) | *v87))
                {
                  v54 = 0;
                  goto LABEL_168;
                }

                goto LABEL_164;
              }

              goto LABEL_179;
            }
          }

          else
          {
            v64 = U_MEMORY_ALLOCATION_ERROR;
          }

          *a4 = v64;
          v54 = 3;
          v88 = v42;
          goto LABEL_168;
        }
      }

      else
      {
        memset(v104, 0, 24);
        v47 = strlen(v42);
        ulocimp_toBcpKeyWithFallback(v42, v47, v104);
        if (v104[16])
        {
          v88 = *v104;
          v92[0] = 0;
          v92[1] = 0;
          v93 = 0;
          v48 = strlen(v42);
          ulocimp_toBcpTypeWithFallback(v42, v48, v106[0], SDWORD2(v107), v92);
          if ((v93 & 1) == 0)
          {
            if ((a3 & 1) == 0)
            {
              goto LABEL_167;
            }

            goto LABEL_164;
          }

          v49 = v92[0];
          if (v92[0] != v106[0])
          {
            goto LABEL_124;
          }

          v65 = sub_19526D8E8(v95);
          if (v65)
          {
            v45 = v94;
            if (v94 > 0)
            {
              goto LABEL_165;
            }

            v66 = v65;
            T_CString_toLowerCase(*v65);
            v49 = *v66;
LABEL_124:
            *&v87[4] = v49;
            goto LABEL_154;
          }

LABEL_179:
          v45 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_165;
        }
      }

LABEL_163:
      if (!a3)
      {
        goto LABEL_167;
      }

      goto LABEL_164;
    }

    if (v44 < 1)
    {
      goto LABEL_154;
    }

    v50 = 0;
    while (2)
    {
      v105 = 0;
      memset(&v104[8], 0, 48);
      *v104 = &v104[13];
      *&v104[8] = 40;
      v51 = v100;
      if (v50 < v100)
      {
        v52 = v106[0][v50];
        if (v52 != 45)
        {
          v53 = v50 + 1;
          do
          {
            icu::CharString::append(v104, v52, a4);
            v51 = v100;
            if (v53 >= v100)
            {
              break;
            }

            v52 = v106[0][v53];
            ++v50;
            ++v53;
          }

          while (v52 != 45);
        }

        ++v50;
      }

      if (*a4 > 0)
      {
        v54 = 1;
        goto LABEL_145;
      }

      if (v105 || v50 < v51)
      {
        v55 = sub_19526D7F4(&v108);
        if (!v55 || (v56 = v55, (v57 = sub_19526D8E8(v101)) == 0))
        {
          v58 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_143;
        }

        if (*a4 <= 0)
        {
          *v56 = *v57;
          if ((sub_19526DA18(&v98, v56) | *v87))
          {
            v54 = 0;
            goto LABEL_145;
          }

          v58 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_143:
          *a4 = v58;
        }
      }

      v54 = 5;
LABEL_145:
      if (v104[12])
      {
        free(*v104);
      }

      if (!v54)
      {
        continue;
      }

      break;
    }

    if (v54 == 5)
    {
      *&v87[4] = 0;
      v88 = "attribute";
      goto LABEL_154;
    }

LABEL_168:
    if (BYTE4(v106[1]))
    {
      free(v106[0]);
    }

    if (v54 && v54 != 2)
    {
      if (v54 == 3)
      {
        break;
      }

      goto LABEL_202;
    }

    v42 = uenum_next(v90, 0, a4);
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_181:
  if ((v32 & 1) == 0)
  {
LABEL_184:
    if (*a4 > 0)
    {
      goto LABEL_202;
    }

    v68 = v99;
    if (!v99)
    {
      goto LABEL_202;
    }

    v69 = 0;
    v70 = v98;
    while (1)
    {
      v71 = *v68;
      if ((v69 & 1) == 0)
      {
        if (strlen(*v68) < 2)
        {
          v69 = 0;
          goto LABEL_192;
        }

        (*(*a2 + 16))(a2, "-u", 2);
        v71 = *v68;
      }

      v69 = 1;
LABEL_192:
      if (!strcmp(v71, "attribute"))
      {
        if (v70)
        {
          v75 = v70;
          do
          {
            (*(*a2 + 16))(a2, "-", 1);
            v76 = strlen(*v75);
            (*(*a2 + 16))(a2, *v75, v76);
            v75 = v75[1];
          }

          while (v75);
        }
      }

      else
      {
        (*(*a2 + 16))(a2, "-", 1);
        v72 = strlen(*v68);
        (*(*a2 + 16))(a2, *v68, v72);
        v73 = v68[1];
        if (strcmp(v73, "true") && strcmp(v73, "yes"))
        {
          (*(*a2 + 16))(a2, "-", 1);
          v74 = strlen(v68[1]);
          (*(*a2 + 16))(a2, v68[1], v74);
        }
      }

      v68 = v68[2];
      if (!v68)
      {
        goto LABEL_202;
      }
    }
  }

  v67 = sub_19526DC78(v102);
  if (v67)
  {
    *v67 = "va";
    v67[1] = "posix";
    sub_19526DD70(&v99, v67, 1);
    goto LABEL_184;
  }

  *a4 = U_MEMORY_ALLOCATION_ERROR;
LABEL_202:
  sub_19526A414(v95);
  v38 = v90;
LABEL_203:
  if (v38)
  {
    uenum_close(v38);
  }

  sub_19526A414(v101);
  sub_19526DEF8(v102);
  sub_19526DF78(&v108);
  if (*a4 <= 0)
  {
    LODWORD(v102[0]) = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    ulocimp_getVariant(v103[0], v102, &v108);
    if (SLODWORD(v102[0]) < 1)
    {
      if (DWORD2(v111))
      {
        v77 = 1;
        for (j = v108; ; ++j)
        {
          v79 = 0;
          while (1)
          {
            v80 = *j;
            if (!*j)
            {
              break;
            }

            if (v80 == 95 || v80 == 45)
            {
              *j = 0;
              v81 = 1;
              goto LABEL_220;
            }

            if (!v79)
            {
              v79 = j;
            }

            ++j;
          }

          v81 = 0;
LABEL_220:
          if (!v79)
          {
            break;
          }

          v82 = *v79;
          if (*v79)
          {
            v83 = (v79 + 1);
            do
            {
              *(v83 - 1) = uprv_asciitolower(v82);
              v84 = *v83++;
              v82 = v84;
            }

            while (v84);
          }

          if (!sub_19526A820(v79, -1, 1))
          {
            goto LABEL_207;
          }

          if ((v77 & 1) != 0 && sub_19526A754(v79, -1))
          {
            v77 = 1;
            break;
          }

          (*(*a2 + 16))(a2, "-", 1);
          if (v77)
          {
            (*(*a2 + 16))(a2, "x", 1);
            (*(*a2 + 16))(a2, "-", 1);
            (*(*a2 + 16))(a2, "lvariant", 8);
            (*(*a2 + 16))(a2, "-", 1);
          }

          v85 = strlen(v79);
          (*(*a2 + 16))(a2, v79, v85);
          if ((v81 & 1) == 0)
          {
            goto LABEL_235;
          }

          v77 = 0;
LABEL_234:
          ;
        }

        if (v81)
        {
          goto LABEL_234;
        }
      }
    }

    else
    {
LABEL_207:
      if (a3)
      {
        *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

LABEL_235:
    if (BYTE12(v108))
    {
      free(v108);
    }
  }

LABEL_237:
  if (BYTE4(v103[1]))
  {
    free(v103[0]);
  }

LABEL_239:
  v86 = *MEMORY[0x1E69E9840];
}

uint64_t uloc_forLanguageTag(const char *a1, char *a2, int a3, int *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v12, a2, a3);
  ulocimp_forLanguageTag(a1, -1, &v12, a4, a5);
  if (*a5 <= 0)
  {
    v5 = DWORD2(v13);
    if (BYTE12(v13))
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v5 = u_terminateChars(a2, a3, DWORD2(v13), a5);
    }
  }

  else
  {
    v5 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v12);
  return v5;
}

void ulocimp_forLanguageTag(const char *a1@<X0>, int *a2@<X2>, UErrorCode *a3@<X3>, int a4@<W1>, uint64_t a5@<X8>)
{
  if (*a3 < 1)
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
    ulocimp_forLanguageTag(a1, a4, v11, a2, a3);
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

void ulocimp_forLanguageTag(const char *__s, int a2, icu::ByteSink *a3, int *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return;
  }

  v155 = v5;
  v156 = v6;
  v7 = a5;
  v10 = a2;
  if (a4)
  {
    *a4 = 0;
  }

  if (a2 < 0)
  {
    v10 = strlen(__s);
  }

  v12 = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
  if (!v12)
  {
LABEL_27:
    *v7 = U_MEMORY_ALLOCATION_ERROR;
    return;
  }

  v13 = v12;
  if (v10 >= 1)
  {
    memcpy(v12, __s, v10);
  }

  v13[v10] = 0;
  v14 = malloc_type_malloc(0x58uLL, 0x700406CB1884CuLL);
  if (!v14)
  {
    free(v13);
    goto LABEL_27;
  }

  v15 = v14;
  v14[2] = 0;
  v130 = v14 + 2;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = &unk_19547BDD5;
  v14[6] = &unk_19547BDD5;
  v14[7] = 0;
  v14[9] = &unk_19547BDD5;
  v14[10] = &unk_19547BDD5;
  v14[8] = 0;
  *v14 = v13;
  v14[1] = &unk_19547BDD5;
  v137 = v7;
  if (v10 <= 1)
  {
    goto LABEL_121;
  }

  v128 = a4;
  v138 = v14;
  v16 = off_1E740B3A0;
  v17 = -2;
  while (1)
  {
    v18 = strlen(*(v16 - 1));
    v19 = v18;
    v20 = v10 - v18;
    if (v10 >= v18 && (v10 <= v18 || v13[v18] == 45) && !uprv_strnicmp(*(v16 - 1), v13, v18))
    {
      break;
    }

    v16 += 2;
    v17 += 2;
    if (v17 >= 0x30)
    {
      v127 = 0;
      goto LABEL_18;
    }
  }

  v27 = *v16;
  v28 = strlen(*v16);
  v29 = v20 + v28;
  if (v10 >= v20 + v28)
  {
    v30 = *v138;
  }

  else
  {
    free(v13);
    v30 = malloc_type_malloc((v29 + 1), 0x100004077774924uLL);
    *v138 = v30;
    v13 = v30;
    v10 = v20 + v28;
    if (!v30)
    {
      *v137 = U_MEMORY_ALLOCATION_ERROR;
      sub_19526D5EC(v138);
      v15 = 0;
      goto LABEL_120;
    }
  }

  v127 = v19 - v28;
  strcpy(v30, v27);
  v31 = v19;
  if (v10 != v19)
  {
    memcpy((*v138 + v28), &__s[v19], v20);
    *(*v138 + v29) = 0;
    v31 = v10;
  }

  v10 = v31;
  if (v19)
  {
    goto LABEL_39;
  }

LABEL_18:
  v21 = off_1E740B530;
  v22 = -2;
  while (1)
  {
    v23 = strlen(*(v21 - 1));
    if (!uprv_strnicmp(*(v21 - 1), v13, v23))
    {
      v24 = v13[v23];
      v25 = v24 == 45 || v24 == 0;
      if (v25)
      {
        break;
      }
    }

    v21 += 2;
    v22 += 2;
    if (v22 >= 0x32)
    {
      goto LABEL_39;
    }
  }

  v26 = strlen(*v21);
  memcpy(*v138, *v21, v26);
  if (v13[v23] == 45)
  {
    memmove(&v13[v26], &v13[v23], v10 - v23 + 1);
  }

  else
  {
    v13[v26] = 0;
  }

  v127 = v23 - v26;
LABEL_39:
  v134 = 0;
  v129 = 0;
  v131 = 0;
  v32 = 129;
  v33 = v13;
  while (1)
  {
    for (i = 0; ; ++i)
    {
      v35 = v13[i];
      if (!v13[i] || v35 == 45)
      {
        break;
      }
    }

    v36 = &v13[i];
    if (v13[i])
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 0;
    }

    if ((v32 & 1) != 0 && sub_19526A4A8(v13, i))
    {
      v13[i] = 0;
      *(v138 + 8) = T_CString_toLowerCase(v13);
      if (i >= 4)
      {
        v32 = 188;
      }

      else
      {
        v32 = 190;
      }

      goto LABEL_111;
    }

    if ((v32 & 2) != 0)
    {
      v38 = (i & 0x80000000) != 0 ? strlen(v13) : i;
      if (v38 == 3 && uprv_isASCIILetter(*v13))
      {
        v39 = 1;
        while (v39 != 3)
        {
          if (!uprv_isASCIILetter(v13[v39++]))
          {
            if ((v39 - 2) < 2)
            {
              goto LABEL_66;
            }

            break;
          }
        }

        *v36 = 0;
        v130[v131] = T_CString_toLowerCase(v13);
        if (v131 >= 2)
        {
          v32 = 188;
        }

        else
        {
          v32 = 190;
        }

        ++v131;
        goto LABEL_111;
      }
    }

LABEL_66:
    if ((v32 & 4) != 0 && sub_19526A534(v13, i))
    {
      *v36 = 0;
      *v13 = uprv_toupper(*v13);
      v41 = v13[1];
      if (v41)
      {
        v42 = v13 + 2;
        do
        {
          *(v42 - 1) = uprv_asciitolower(v41);
          v43 = *v42++;
          v41 = v43;
        }

        while (v43);
      }

      *(v138 + 40) = v13;
      v32 = 184;
      goto LABEL_111;
    }

    if ((v32 & 8) == 0 || !sub_19526A5B0(v13, i))
    {
      break;
    }

    *v36 = 0;
    *(v138 + 48) = T_CString_toUpperCase(v13);
    v32 = 176;
LABEL_111:
    v13 = v37;
    v33 = v36;
    if (!v37)
    {
      goto LABEL_117;
    }
  }

  if ((v32 & 0x10) != 0 && (sub_19526A754(v13, i) || (v129 & 1) != 0 && sub_19526A820(v13, i, 1)))
  {
    operator new();
  }

  if ((v32 & 0x20) != 0 && sub_19526DAC8(v13, i))
  {
    operator new();
  }

  if ((v32 & 0x40) != 0 && sub_19526A820(v13, i, 2))
  {
    v44 = v134;
    if (!v134)
    {
      v44 = v13;
    }

    v134 = v44;
    v32 = 224;
    v36 = v33;
    goto LABEL_111;
  }

  if ((v32 & 0x80) != 0 && (v45 = uprv_asciitolower(*v13), i == 1) && v45 == 120)
  {
    v46 = v33;
    if (!v35)
    {
      v133 = v33;
      goto LABEL_118;
    }

    v47 = (v36 + 1);
    while (1)
    {
      v36 = v46;
      if (!v47)
      {
        break;
      }

        ;
      }

      v46 = &v47[j];
      if (v47[j])
      {
        v49 = v46 + 1;
      }

      else
      {
        v49 = 0;
      }

      if (!strncmp(v47, "lvariant", 8uLL))
      {
        v47[j] = 0;
        v32 = 16;
        v129 = 1;
        goto LABEL_110;
      }

      v50 = sub_19526A820(v47, j, 1);
      v47 = v49;
      if (!v50)
      {
        goto LABEL_107;
      }
    }

    v49 = 0;
LABEL_107:
    if (v32 == 16)
    {
      v32 = 16;
LABEL_110:
      v37 = v49;
      goto LABEL_111;
    }

    if (v36 - v37 >= 1)
    {
      *v36 = 0;
      *(v138 + 72) = T_CString_toLowerCase(v37);
    }
  }

  else
  {
    LODWORD(v36) = v33;
  }

LABEL_117:
  v133 = v36;
LABEL_118:
  v15 = v138;
  if (v128)
  {
    *v128 = v127 + v133 - *v138;
  }

LABEL_120:
  v7 = v137;
LABEL_121:
  if (*v7 >= 1)
  {
    if (v15)
    {
      goto LABEL_293;
    }

    return;
  }

  v51 = 0;
  v52 = 0;
  do
  {
    if (*(v15 + 16 + v51))
    {
      ++v52;
    }

    v51 += 8;
  }

  while (v51 != 24);
  v25 = v52 == 0;
  v53 = 16;
  if (v25)
  {
    v53 = 8;
  }

  v54 = *(v15 + v53);
  if (!strcmp(v54, "und") || strlen(v54) < 1)
  {
    v55 = 1;
  }

  else
  {
    (*(*a3 + 16))(a3, v54);
    v55 = 0;
  }

  v56 = *(v15 + 40);
  v57 = strlen(v56);
  v58 = (v57 - 1);
  if (v57 >= 1)
  {
    (*(*a3 + 16))(a3, "_", 1);
    v149[0].n128_u8[0] = uprv_toupper(*v56);
    (*(*a3 + 16))(a3, v149, 1);
    (*(*a3 + 16))(a3, v56 + 1, v58);
    v55 = 0;
  }

  v59 = *(v15 + 48);
  v60 = strlen(v59);
  if (v60 >= 1)
  {
    (*(*a3 + 16))(a3, "_", 1);
    v61 = *v59;
    if (*v59)
    {
      v62 = (v59 + 1);
      do
      {
        v149[0].n128_u8[0] = uprv_toupper(v61);
        (*(*a3 + 16))(a3, v149, 1);
        v63 = *v62++;
        v61 = v63;
      }

      while (v63);
    }

    v55 = 0;
  }

  sub_19526D690(*(v15 + 56));
  v64 = *(v15 + 56);
  if (v64)
  {
    v65 = 0;
    do
    {
      v64 = *(v64 + 8);
      ++v65;
    }

    while (v64);
    if (v60 < 1)
    {
      (*(*a3 + 16))(a3, "_", 1);
      v55 = 0;
    }

    v66 = 0;
    v67 = 1;
    do
    {
      v68 = *(v15 + 56);
      if (v68)
      {
        v69 = v67;
        while (--v69)
        {
          v68 = *(v68 + 8);
          if (!v68)
          {
            goto LABEL_151;
          }
        }

        v70 = *v68;
      }

      else
      {
LABEL_151:
        v70 = 0;
      }

      (*(*a3 + 16))(a3, "_", 1);
      v71 = *v70;
      if (*v70)
      {
        v72 = v70 + 1;
        do
        {
          v149[0].n128_u8[0] = uprv_toupper(v71);
          (*(*a3 + 16))(a3, v149, 1);
          v73 = *v72++;
          v71 = v73;
        }

        while (v73);
      }

      ++v66;
      ++v67;
    }

    while (v65 != v66);
    v7 = v137;
  }

  if (*(v15 + 64))
  {
    if (v55)
    {
      (*(*a3 + 16))(a3, "und", 3);
    }
  }

  else if (!**(v15 + 72))
  {
    goto LABEL_293;
  }

  v74 = *v7;
  if (*v7 > 0)
  {
LABEL_293:
    sub_19526D5EC(v15);
    return;
  }

  v142 = 0;
  v141[0] = 0;
  memset(&v141[2], 0, 72);
  v141[1] = &v141[3];
  LODWORD(v141[2]) = 8;
  v140[0] = 0;
  memset(&v140[2], 0, 72);
  v140[1] = &v140[3];
  LODWORD(v140[2]) = 8;
  v75 = *(v15 + 64);
  v139 = v15;
  if (!v75)
  {
    v119 = 0;
LABEL_278:
    v120 = *(v15 + 72);
    if (strlen(v120) >= 1)
    {
      v121 = sub_19526DC78(v141);
      if (!v121)
      {
        goto LABEL_289;
      }

      *v121 = "x";
      v121[1] = v120;
      if (!sub_19526DD70(&v142, v121, 0))
      {
LABEL_290:
        v126 = 1;
        goto LABEL_291;
      }

      v74 = *v7;
    }

    if (((v74 < 1) & v119) == 1)
    {
      (*(*a3 + 16))(a3, "_POSIX", 6);
      v74 = *v7;
    }

    if (v74 <= 0)
    {
      v122 = v142;
      if (v142)
      {
        v123 = "@";
        do
        {
          (*(*a3 + 16))(a3, v123, 1);
          v124 = strlen(*v122);
          (*(*a3 + 16))(a3, *v122, v124);
          (*(*a3 + 16))(a3, "=", 1);
          v125 = strlen(v122[1]);
          (*(*a3 + 16))(a3, v122[1], v125);
          v122 = v122[2];
          v123 = ";";
        }

        while (v122);
      }
    }

    goto LABEL_292;
  }

  v76 = -1;
  do
  {
    v75 = *(v75 + 16);
    ++v76;
  }

  while (v75);
  v77 = 0;
  v78 = 0;
  v79 = 1;
  while (2)
  {
    v80 = *(v139 + 64);
    v81 = v79;
    v82 = v80;
    while (--v81)
    {
      v82 = *(v82 + 16);
      if (!v82)
      {
        v83 = 0;
        goto LABEL_172;
      }
    }

    v83 = *v82;
LABEL_172:
    v84 = v79;
    while (--v84)
    {
      v80 = *(v80 + 16);
      if (!v80)
      {
        v85 = 0;
        goto LABEL_177;
      }
    }

    v85 = *(v80 + 8);
LABEL_177:
    if (*v83 != 117)
    {
      v99 = sub_19526DC78(v141);
      if (v99)
      {
        *v99 = v83;
        v99[1] = v85;
        if (sub_19526DD70(&v142, v99, 0))
        {
          goto LABEL_273;
        }

        goto LABEL_290;
      }

LABEL_289:
      v126 = 7;
LABEL_291:
      *v7 = v126;
      break;
    }

    v86 = *(v139 + 56) != 0;
    if (*v7 > 0)
    {
      break;
    }

    v153 = 0;
    v154 = v85;
    v152 = 0;
    v150 = 0;
    v151 = 0;
    v149[0].n128_u64[0] = 0;
    memset(&v149[1], 0, 64);
    v149[0].n128_u64[1] = &v149[1].n128_u64[1];
    v149[1].n128_u32[0] = 8;
    __s1[0] = 0;
    memset(v147, 0, sizeof(v147));
    v148 = 0;
    __s1[1] = v147 + 8;
    LODWORD(v147[0]) = 8;
    v136 = v77;
    if (*v85)
    {
      while (1)
      {
        for (k = 0; ; ++k)
        {
          v152 = k;
          if (!v85[k] || v85[k] == 45)
          {
            break;
          }
        }

        if (sub_19526A898(v85, k))
        {
          v88 = v154;
          goto LABEL_191;
        }

        v88 = sub_19526D7F4(__s1);
        if (!v88)
        {
          goto LABEL_206;
        }

        v89 = sub_19526DB3C(v149);
        if (!v89)
        {
          v88 = 0;
          goto LABEL_206;
        }

        if (*v7 > 0)
        {
          break;
        }

        *v88 = *v89;
        sub_19526DA18(&v151, v88);
        v90 = v154 + v152;
        v154 = v90;
        if (*v90)
        {
          v85 = v90 + 1;
          v154 = (v90 + 1);
          if (v90[1])
          {
            continue;
          }
        }

        goto LABEL_190;
      }

      v98 = 0;
      v88 = 0;
      goto LABEL_208;
    }

LABEL_190:
    v88 = 0;
LABEL_191:
    v91 = v151;
    if (!v151)
    {
      v98 = 1;
      goto LABEL_208;
    }

    v92 = sub_19526DC78(v141);
    if (!v92 || (v93 = v92, (v94 = sub_195269D3C(v140)) == 0))
    {
LABEL_206:
      v98 = 7;
LABEL_207:
      *v7 = v98;
      v98 = 0;
      goto LABEL_208;
    }

    v95 = v94;
    v132 = v86;
    v96 = v91;
    do
    {
      v97 = v96[1];
      if (v96 != v91)
      {
        icu::CharString::append(v95, 45, v137);
      }

      icu::StringPiece::StringPiece(&v144, *v96);
      icu::CharString::append(v95, v144, v145, v137);
      v96 = v97;
    }

    while (v97);
    v7 = v137;
    v86 = v132;
    if (*v137 > 0)
    {
      v98 = 0;
      goto LABEL_208;
    }

    *v93 = "attribute";
    v93[1] = *v95;
    v98 = 1;
    if ((sub_19526DD70(&v153, v93, 0) & 1) == 0)
    {
      goto LABEL_207;
    }

LABEL_208:
    sub_19526DF78(__s1);
    sub_19526A414(v149);
    if (!v98)
    {
      v78 = 0;
      goto LABEL_271;
    }

    if (!v88)
    {
      v78 = 0;
LABEL_263:
      v77 = v136;
      v116 = v153;
      if (v153)
      {
        do
        {
          v117 = v116[2];
          sub_19526DD70(&v142, v116, 0);
          v116 = v117;
        }

        while (v117);
      }

      goto LABEL_272;
    }

    v135 = v86 | v78;
    v143 = 0;
    v144 = 0;
    v151 = 0;
    v154 = v88;
    v78 = 0;
    while (2)
    {
      while (2)
      {
        v100 = *v88;
        if (*v88)
        {
          for (m = 0; ; ++m)
          {
            v152 = m;
            if (!v88[m] || v88[m] == 45)
            {
              break;
            }
          }

          if (!sub_19526A898(v88, m))
          {
            if (v151)
            {
              v103 = v152;
              LODWORD(v143) = v152 + v143 + 1;
              v102 = v154;
            }

            else
            {
              v102 = v154;
              v151 = v154;
              v103 = v152;
              LODWORD(v143) = v152;
            }

            goto LABEL_222;
          }

          v102 = v154;
          if (!v144)
          {
            v144 = v154;
            v103 = v152;
            HIDWORD(v143) = v152;
LABEL_222:
            v88 = &v102[v103];
            v154 = v88;
            if (*v88)
            {
              v154 = ++v88;
            }

            continue;
          }

          v104 = v152;
          v154 = (v154 + v152);
          if (v102[v152])
          {
            v154 = &v102[v152 + 1];
          }
        }

        else
        {
          v104 = 0;
          v102 = 0;
        }

        break;
      }

      if (HIDWORD(v143) != 2)
      {
        v7 = v137;
        *v137 = U_ILLEGAL_ARGUMENT_ERROR;
        goto LABEL_271;
      }

      memset(v149, 0, 24);
      ulocimp_toLegacyKeyWithFallback(v144, 2, v149);
      if ((v149[1].n128_u8[0] & 1) == 0)
      {
        v114 = v137;
        v115 = 1;
LABEL_261:
        *v114 = v115;
        goto LABEL_270;
      }

      v105 = v149[0].n128_u64[0];
      if (v149[0].n128_u64[0] == v144)
      {
        v106 = sub_19526DB3C(v140);
        if (!v106)
        {
          *v137 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_270;
        }

        if (*v137 > 0)
        {
          goto LABEL_270;
        }

        v107 = v106;
        T_CString_toLowerCase(*v106);
        v105 = *v107;
      }

      if (!v151)
      {
        v109 = "yes";
LABEL_240:
        if ((v135 & 1) == 0 && *v105 == 118 && *(v105 + 1) == 97 && !*(v105 + 2) && !strcmp(v109, "posix"))
        {
          v78 = 1;
        }

        else
        {
          v112 = sub_19526DC78(v141);
          if (!v112)
          {
            v114 = v137;
            v115 = 7;
            goto LABEL_261;
          }

          *v112 = v105;
          v112[1] = v109;
          sub_19526DD70(&v153, v112, 0);
        }

        v144 = v102;
        if (v102)
        {
          v113 = v104;
        }

        else
        {
          v113 = 0;
        }

        HIDWORD(v143) = v113;
        v151 = 0;
        LODWORD(v143) = 0;
        if (!v100)
        {
          v7 = v137;
          goto LABEL_263;
        }

        v88 = v154;
        continue;
      }

      break;
    }

    __s1[0] = 0;
    __s1[1] = 0;
    *&v147[0] = 0;
    v108 = strlen(v105);
    ulocimp_toLegacyTypeWithFallback(v105, v108, v151, v143, __s1);
    if (LOBYTE(v147[0]) != 1)
    {
      v118 = 1;
      goto LABEL_269;
    }

    v109 = __s1[0];
    if (__s1[0] != v151)
    {
      goto LABEL_240;
    }

    v110 = sub_19526DB3C(v140);
    if (v110)
    {
      if (*v137 > 0)
      {
        goto LABEL_270;
      }

      v111 = v110;
      T_CString_toLowerCase(*v110);
      v109 = *v111;
      goto LABEL_240;
    }

    v118 = 7;
LABEL_269:
    *v137 = v118;
LABEL_270:
    v7 = v137;
LABEL_271:
    v77 = v136;
LABEL_272:
    if (*v7 < 1)
    {
LABEL_273:
      ++v79;
      v25 = v76 == v77++;
      if (!v25)
      {
        continue;
      }

      v74 = *v7;
      if (*v7 <= 0)
      {
        v119 = v78;
        v15 = v139;
        goto LABEL_278;
      }
    }

    break;
  }

LABEL_292:
  sub_19526A414(v140);
  sub_19526DEF8(v141);
  v15 = v139;
  if (v139)
  {
    goto LABEL_293;
  }
}

void sub_19526D5EC(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    v2 = *(a1 + 56);
    if (v2)
    {
      do
      {
        v3 = *(v2 + 8);
        MEMORY[0x19A8B2600]();
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 16);
        MEMORY[0x19A8B2600]();
        v4 = v5;
      }

      while (v5);
    }

    free(a1);
  }
}

uint64_t sub_19526D690(uint64_t result)
{
  if (result)
  {
    for (i = result; ; i = v2)
    {
      v2 = *(i + 8);
      v3 = v2;
      if (!v2)
      {
        break;
      }

      do
      {
        v4 = *i;
        v5 = *v3;
        result = strcmp(*i, *v3);
        if (result >= 1)
        {
          *i = v5;
          *v3 = v4;
        }

        v3 = *(v3 + 8);
      }

      while (v3);
    }
  }

  return result;
}

BOOL sub_19526D708(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    for (i = a2; i != v3; v4 = v3 >= i)
    {
      if (!uprv_isASCIILetter(*(a1 + v3)) && *(a1 + v3) - 48 > 9)
      {
        break;
      }

      ++v3;
    }
  }

  return v4;
}

uint64_t sub_19526D780(const char ***a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    v5 = *v4;
    while (1)
    {
      v6 = v3;
      if (!strcmp(v5, *v3))
      {
        return 0;
      }

      v3 = v6[1];
      if (!v3)
      {
        a1 = (v6 + 1);
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(v4 + 8) = 0;
    *a2 = 0;
    v7 = 1;
    *a1 = v4;
  }

  return v7;
}

void *sub_19526D7F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_19526D8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(v4, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return v5;
}

uint64_t sub_19526DA18(const char ***a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    *(a2 + 8) = 0;
    *a1 = a2;
    return 1;
  }

  v5 = *a2;
  result = strcmp(*a2, *v4);
  if ((result & 0x80000000) != 0)
  {
    v7 = 0;
LABEL_9:
    if (v7)
    {
      v9 = (v7 + 1);
    }

    else
    {
      v9 = a1;
    }

    *v9 = a2;
    *(a2 + 8) = v4;
    return 1;
  }

  v8 = v4;
  while (result)
  {
    v4 = v8[1];
    if (!v4)
    {
      v8[1] = a2;
      *(a2 + 8) = 0;
      return 1;
    }

    result = strcmp(v5, *v4);
    v7 = v8;
    v8 = v4;
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL sub_19526DAC8(char *__s, int a2)
{
  if (a2 < 0)
  {
    a2 = strlen(__s);
  }

  result = 0;
  if (a2 == 1)
  {
    v3 = !uprv_isASCIILetter(*__s) && (*__s - 48) > 9u;
    if (!v3 && uprv_asciitolower(*__s) != 120)
    {
      return 1;
    }
  }

  return result;
}

void *sub_19526DB3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(v4, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return v5;
}

void *sub_19526DC78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

uint64_t sub_19526DD70(const char ***a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = *a2;
    while (1)
    {
      v9 = v7;
      v7 = v5;
      if (a3)
      {
        v10 = strlen(v8);
        v11 = *v7;
        v12 = strlen(*v7);
        if (v10 == 1 && v12 == 1)
        {
          v13 = *v8;
          v14 = *v11;
          if (v13 == v14)
          {
            return 0;
          }

          if (v13 == 120)
          {
            goto LABEL_13;
          }

          if (v14 == 120)
          {
            goto LABEL_22;
          }

          v15 = v13 - v14;
        }

        else if (v10 == 1)
        {
          v15 = *v8 - 117;
        }

        else if (v12 == 1)
        {
          v15 = 117 - *v11;
        }

        else
        {
          result = strcmp(v8, v11);
          if (!result)
          {
            return result;
          }

          v15 = result;
          if (!strcmp(v11, "attribute"))
          {
            goto LABEL_13;
          }

          if (!strcmp(v8, "attribute"))
          {
LABEL_22:
            v17 = (v9 + 2);
            if (!v9)
            {
              v17 = a1;
            }

            *v17 = a2;
            *(a2 + 16) = v7;
            return 1;
          }
        }
      }

      else
      {
        v15 = strcmp(v8, *v5);
      }

      if (v15 < 0)
      {
        goto LABEL_22;
      }

      if (!v15)
      {
        return 0;
      }

LABEL_13:
      v5 = v7[2];
      if (!v5)
      {
        v7[2] = a2;
        *(a2 + 16) = 0;
        return 1;
      }
    }
  }

  *(a2 + 16) = 0;
  *a1 = a2;
  return 1;
}

uint64_t sub_19526DEF8(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        MEMORY[0x19A8B2600](v4, 0x70C409B098B1ALL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_19526DF78(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        MEMORY[0x19A8B2600](v4, 0x70C405DA25F43);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t ulocale_openForLocaleID(icu::Locale *a1, int a2, UErrorCode *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    if (a2 < 0)
    {
      icu::Locale::createFromName(a1, v7);
      icu::Locale::clone(v7);
    }

    memset(&v6[1], 0, 56);
    v6[0] = (&v6[1] + 5);
    LODWORD(v6[1]) = 40;
    icu::CharString::append(v6, a1, a2, a3);
    if (*a3 <= 0)
    {
      icu::Locale::createFromName(v6[0], v7);
      icu::Locale::clone(v7);
    }

    if (BYTE4(v6[1]))
    {
      free(v6[0]);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ulocale_openForLanguageTag(char *__s, int a2, UErrorCode *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v4 = __s;
    memset(v9, 0, sizeof(v9));
    if (a2 < 0)
    {
      icu::StringPiece::StringPiece(&v7, __s);
      v4 = v7;
    }

    else
    {
      v7 = __s;
      LODWORD(v8) = a2;
    }

    icu::Locale::forLanguageTag(v4, v8, a3, v9);
    if (*a3 <= 0)
    {
      icu::Locale::clone(v9);
    }

    icu::Locale::~Locale(v9);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ulocale_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ulocale_getLanguage(uint64_t a1)
{
  if (a1)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ulocale_getScript(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t ulocale_getRegion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 26;
  }

  else
  {
    return 0;
  }
}

const char *ulocale_getVariant(const char *result)
{
  if (result)
  {
    if (result[216])
    {
      return "";
    }

    else
    {
      return (*(result + 26) + *(result + 8));
    }
  }

  return result;
}

uint64_t ulocale_getLocaleID(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

icu::Locale *ulocale_getBaseName(icu::Locale *result)
{
  if (result)
  {
    return icu::Locale::getBaseName(result);
  }

  return result;
}

uint64_t ulocale_getKeywordValue(uint64_t a1, char *a2, int a3, char *a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = a1;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    icu::CheckedArrayByteSink::CheckedArrayByteSink(&v13, a4, a5);
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v15, a2);
      a2 = v15;
    }

    else
    {
      v15 = a2;
      LODWORD(v16) = a3;
    }

    icu::Locale::getKeywordValue(v6, a2, v16, &v13, a6);
    if (*a6 <= 0)
    {
      v6 = DWORD2(v14);
      if (BYTE12(v14))
      {
        *a6 = U_BUFFER_OVERFLOW_ERROR;
      }

      else
      {
        v6 = u_terminateChars(a4, a5, DWORD2(v14), a6);
      }
    }

    else
    {
      v6 = 0;
    }

    icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v13);
  }

  else
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v6;
}

uint64_t ulocale_getUnicodeKeywordValue(uint64_t a1, const char *a2, int a3, char *a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = a1;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    icu::CheckedArrayByteSink::CheckedArrayByteSink(&v13, a4, a5);
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v15, a2);
      a2 = v15;
    }

    else
    {
      v15 = a2;
      LODWORD(v16) = a3;
    }

    icu::Locale::getUnicodeKeywordValue(v6, a2, v16, &v13, a6);
    if (*a6 <= 0)
    {
      v6 = DWORD2(v14);
      if (BYTE12(v14))
      {
        *a6 = U_BUFFER_OVERFLOW_ERROR;
      }

      else
      {
        v6 = u_terminateChars(a4, a5, DWORD2(v14), a6);
      }
    }

    else
    {
      v6 = 0;
    }

    icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v13);
  }

  else
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v6;
}

_OWORD *ulocale_getKeywords(icu::Locale *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  Keywords = icu::Locale::createKeywords(a1, a2);

  return uenum_openFromStringEnumeration(Keywords, a2);
}

_OWORD *ulocale_getUnicodeKeywords(icu::Locale *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  UnicodeKeywords = icu::Locale::createUnicodeKeywords(a1, a2);

  return uenum_openFromStringEnumeration(UnicodeKeywords, a2);
}

BOOL ulocale_isBogus(_BOOL8 result)
{
  if (result)
  {
    return *(result + 216) != 0;
  }

  return result;
}

uint64_t ulocbld_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

icu::LocaleBuilder *ulocbld_setLocale(icu::LocaleBuilder *result, const char *a2, unsigned int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    memset(v10, 0, sizeof(v10));
    icu::Locale::Locale(v10);
    if ((a3 & 0x80000000) != 0 || !a2[a3])
    {
      v6 = a2;
    }

    else
    {
      if (a3 >= 0x9D)
      {
        icu::Locale::setToBogus(v10);
        goto LABEL_9;
      }

      memset(v8, 0, 157);
      memcpy(v8, a2, a3);
      *(v8 + a3) = 0;
      v6 = v8;
    }

    icu::Locale::Locale(v9, v6, 0, 0, 0);
    icu::Locale::operator=(v10, v9);
    icu::Locale::~Locale(v9);
LABEL_9:
    icu::LocaleBuilder::setLocale(v5, v10);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

icu::LocaleBuilder *ulocbld_adoptULocale(icu::LocaleBuilder *result, const icu::Locale *a2)
{
  if (result)
  {
    icu::LocaleBuilder::setLocale(result, a2);
  }

  return result;
}

UErrorCode *ulocbld_setLanguageTag(UErrorCode *result, const char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::setLanguageTag(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_setLanguage(uint64_t result, char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::setLanguage(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_setScript(uint64_t result, char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::setScript(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_setRegion(uint64_t result, char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::setRegion(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_setVariant(uint64_t result, const char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::setVariant(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_addUnicodeLocaleAttribute(uint64_t result, const char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::addUnicodeLocaleAttribute(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_removeUnicodeLocaleAttribute(uint64_t result, const char *a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v4, a2);
      a2 = v4;
    }

    else
    {
      v4 = a2;
      LODWORD(v5) = a3;
    }

    return icu::LocaleBuilder::removeUnicodeLocaleAttribute(v3, a2, v5);
  }

  return result;
}

uint64_t ulocbld_setExtension(uint64_t result, int a2, char *__s, int a4)
{
  if (result)
  {
    v5 = result;
    if (a4 < 0)
    {
      icu::StringPiece::StringPiece(&v6, __s);
      __s = v6;
    }

    else
    {
      v6 = __s;
      LODWORD(v7) = a4;
    }

    return icu::LocaleBuilder::setExtension(v5, a2, __s, v7);
  }

  return result;
}

uint64_t ulocbld_setUnicodeLocaleKeyword(uint64_t result, const char *a2, int a3, char *__s, int a5)
{
  if (result)
  {
    v7 = result;
    if (a3 < 0)
    {
      icu::StringPiece::StringPiece(&v10, a2);
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = a2;
      LODWORD(v11) = a3;
      if ((a5 & 0x80000000) == 0)
      {
LABEL_4:
        v8 = __s;
        LODWORD(v9) = a5;
        return icu::LocaleBuilder::setUnicodeLocaleKeyword(v7, v10, v11, __s, v9);
      }
    }

    icu::StringPiece::StringPiece(&v8, __s);
    __s = v8;
    return icu::LocaleBuilder::setUnicodeLocaleKeyword(v7, v10, v11, __s, v9);
  }

  return result;
}

icu::LocaleBuilder *ulocbld_clear(icu::LocaleBuilder *this)
{
  if (this)
  {
    return icu::LocaleBuilder::clear(this);
  }

  return this;
}

icu::LocaleBuilder *ulocbld_clearExtensions(icu::LocaleBuilder *this)
{
  if (this)
  {
    return icu::LocaleBuilder::clearExtensions(this);
  }

  return this;
}

uint64_t ulocbld_buildULocale(icu::LocaleBuilder *a1, UErrorCode *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v5, 0, sizeof(v5));
    icu::LocaleBuilder::build(a1, a2, v5);
    if (*a2 <= 0)
    {
      icu::Locale::clone(v5);
    }

    icu::Locale::~Locale(v5);
  }

  else
  {
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ulocbld_buildLocaleID(icu::LocaleBuilder *a1, void *a2, int a3, UErrorCode *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a1)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__s = 0u;
      v14 = 0u;
      memset(v12, 0, sizeof(v12));
      icu::LocaleBuilder::build(a1, a4, v12);
      if (*a4 <= 0)
      {
        v8 = strlen(__s[1]);
        v9 = v8;
        if (v8 >= 1 && v8 <= a3)
        {
          memcpy(a2, __s[1], v8 & 0x7FFFFFFF);
        }

        v4 = u_terminateChars(a2, a3, v9, a4);
      }

      else
      {
        v4 = 0;
      }

      icu::Locale::~Locale(v12);
    }

    else
    {
      v4 = 0;
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ulocbld_buildLanguageTag(icu::LocaleBuilder *a1, char *a2, int a3, UErrorCode *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a1)
    {
      memset(v12, 0, sizeof(v12));
      icu::LocaleBuilder::build(a1, a4, v12);
      if (*a4 <= 0)
      {
        v10 = 0u;
        v11 = 0u;
        icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
        icu::Locale::toLanguageTag(v12, &v10, a4);
        if (*a4 <= 0)
        {
          v4 = DWORD2(v11);
          if (BYTE12(v11))
          {
            *a4 = U_BUFFER_OVERFLOW_ERROR;
          }

          else
          {
            v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
          }
        }

        else
        {
          v4 = 0;
        }

        icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
      }

      else
      {
        v4 = 0;
      }

      icu::Locale::~Locale(v12);
    }

    else
    {
      v4 = 0;
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL ulocbld_copyErrorTo(icu::LocaleBuilder *a1, UErrorCode *a2)
{
  if (a1)
  {
    return icu::LocaleBuilder::copyErrorTo(a1, a2);
  }

  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return 1;
}

void *ulocdata_open(char *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x18uLL, 0x1020040984C81BBuLL);
  v2 = v6;
  if (!v6)
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
    return v2;
  }

  v6[2] = 0;
  *v6 = 0;
  v6[1] = ures_open(0, a1, a2);
  v7 = *a2;
  if (*a2 >= 1)
  {
    free(v2);
    return 0;
  }

  v2[2] = ures_open("icudt76l-lang", a1, a2);
  if (*a2 == U_MISSING_RESOURCE_ERROR)
  {
    *a2 = v7;
  }

  return v2;
}

void ulocdata_close(void **a1)
{
  if (a1)
  {
    ures_close(a1[2]);
    ures_close(a1[1]);

    free(a1);
  }
}

icu::UnicodeSet *ulocdata_getExemplarSet(uint64_t a1, icu::UnicodeSet *a2, int a3, int a4, UErrorCode *a5)
{
  v12 = 0;
  if (*a5 > 0)
  {
    return 0;
  }

  StringByKey = ures_getStringByKey(*(a1 + 8), off_1E740B6C8[a4], &v12 + 1, &v12);
  v10 = v12;
  if (v12 == -127)
  {
    if (*a1)
    {
      v10 = 2;
      LODWORD(v12) = 2;
    }

    else
    {
      v10 = -127;
    }
  }

  else if (!v12)
  {
    v10 = *a5;
    goto LABEL_9;
  }

  *a5 = v10;
LABEL_9:
  if (v10 > 0)
  {
    return 0;
  }

  if (!a2)
  {
    uset_openPatternOptions(StringByKey, SHIDWORD(v12));
  }

  uset_applyPattern(a2, StringByKey, HIDWORD(v12), a3 | 1, a5);
  return a2;
}

uint64_t ulocdata_getDelimiter(uint64_t a1, int a2, UChar *a3, int32_t a4, int *a5)
{
  v16 = 0;
  if (*a5 > 0)
  {
    return 0;
  }

  v10 = ures_getByKey(*(a1 + 8), "delimiters", 0, &v16);
  v11 = v10;
  v12 = v16;
  if (v16 == -127)
  {
    if (*a1)
    {
      v12 = 2;
      LODWORD(v16) = 2;
    }

    else
    {
      v12 = -127;
    }
  }

  else if (!v16)
  {
    v12 = *a5;
    goto LABEL_9;
  }

  *a5 = v12;
LABEL_9:
  if (v12 >= 1)
  {
    ures_close(v10);
    return 0;
  }

  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v10, off_1E740B6E8[a2], &v16 + 1, &v16);
  ures_close(v11);
  v14 = v16;
  if (v16 == -127)
  {
    if (*a1)
    {
      v14 = 2;
      LODWORD(v16) = 2;
    }

    else
    {
      v14 = -127;
    }
  }

  else if (!v16)
  {
    v14 = *a5;
    goto LABEL_18;
  }

  *a5 = v14;
LABEL_18:
  if (v14 <= 0)
  {
    u_strncpy(a3, StringByKeyWithFallback, a4);
    return HIDWORD(v16);
  }

  return 0;
}

uint64_t ulocdata_getMeasurementSystem(char *a1, UErrorCode *a2)
{
  if (!a2)
  {
    return 3;
  }

  v3 = 3;
  if (*a2 <= 0)
  {
    v4 = sub_19526F220(a1, "MeasurementSystem", a2);
    Int = ures_getInt(v4, a2);
    if (*a2 <= 0)
    {
      v3 = Int;
    }

    else
    {
      v3 = 3;
    }

    ures_close(v4);
  }

  return v3;
}

uint64_t sub_19526F220(char *a1, const char *a2, UErrorCode *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    ulocimp_getRegionForSupplementalData(a1, a3, 1, v12);
    v6 = ures_openDirect(0, "supplementalData", a3);
    ures_getByKey(v6, "measurementData", v6, a3);
    if (v6)
    {
      v7 = ures_getByKey(v6, v12[0], 0, a3);
      v8 = v7;
      v9 = *a3;
      if (*a3 <= 0)
      {
        v3 = ures_getByKey(v7, a2, 0, a3);
        v9 = *a3;
      }

      else
      {
        v3 = 0;
      }

      if (v9 == U_MISSING_RESOURCE_ERROR)
      {
        *a3 = U_ZERO_ERROR;
        if (v8)
        {
          ures_close(v8);
        }

        v8 = ures_getByKey(v6, "001", 0, a3);
        v3 = ures_getByKey(v8, a2, 0, a3);
      }

      ures_close(v8);
    }

    else
    {
      v3 = 0;
    }

    ures_close(v6);
    if (BYTE4(v12[1]))
    {
      free(v12[0]);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void ulocdata_getPaperSize(char *a1, int *a2, _DWORD *a3, UErrorCode *a4)
{
  v9 = 0;
  if (a4 && *a4 <= 0)
  {
    v7 = sub_19526F220(a1, "PaperSize", a4);
    IntVector = ures_getIntVector(v7, &v9, a4);
    if (*a4 <= 0)
    {
      if (v9 > 1)
      {
        *a2 = *IntVector;
        *a3 = IntVector[1];
      }

      else
      {
        *a4 = U_INTERNAL_PROGRAM_ERROR;
      }
    }

    ures_close(v7);
  }
}

void ulocdata_getCLDRVersion(uint8_t *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v5 = ures_openDirect(0, "supplementalData", a2);
    ures_getVersionByKey(v5, "cldrVersion", a1, a2);

    ures_close(v5);
  }
}

uint64_t ulocdata_getLocaleDisplayPattern(uint64_t a1, UChar *a2, int32_t a3, int *a4)
{
  v14 = 0;
  if (*a4 > 0)
  {
    return 0;
  }

  result = *(a1 + 16);
  if (!result)
  {
    *a4 = 2;
    return result;
  }

  v9 = ures_getByKey(result, "localeDisplayPattern", 0, &v14);
  v10 = v9;
  v11 = v14;
  if (v14 == -127)
  {
    if (*a1)
    {
      v11 = 2;
      LODWORD(v14) = 2;
    }

    else
    {
      v11 = -127;
    }
  }

  else if (!v14)
  {
    v11 = *a4;
    goto LABEL_13;
  }

  *a4 = v11;
LABEL_13:
  if (v11 >= 1)
  {
    ures_close(v9);
    return 0;
  }

  StringByKey = ures_getStringByKey(v9, "pattern", &v14 + 1, &v14);
  ures_close(v10);
  v13 = v14;
  if (v14 == -127)
  {
    if (*a1)
    {
      v13 = 2;
      LODWORD(v14) = 2;
    }

    else
    {
      v13 = -127;
    }
  }

  else if (!v14)
  {
    v13 = *a4;
    goto LABEL_22;
  }

  *a4 = v13;
LABEL_22:
  if (v13 <= 0)
  {
    u_strncpy(a2, StringByKey, a3);
    return HIDWORD(v14);
  }

  return 0;
}

uint64_t ulocdata_getLocaleSeparator(uint64_t a1, UChar *a2, int32_t a3, int *a4)
{
  v17 = 0;
  if (*a4 > 0)
  {
    return 0;
  }

  result = *(a1 + 16);
  if (!result)
  {
    *a4 = 2;
    return result;
  }

  v9 = ures_getByKey(result, "localeDisplayPattern", 0, &v17);
  v10 = v9;
  v11 = v17;
  if (v17 == -127)
  {
    if (*a1)
    {
      v11 = 2;
      LODWORD(v17) = 2;
    }

    else
    {
      v11 = -127;
    }
  }

  else if (!v17)
  {
    v11 = *a4;
    goto LABEL_13;
  }

  *a4 = v11;
LABEL_13:
  if (v11 >= 1)
  {
    ures_close(v9);
    return 0;
  }

  StringByKey = ures_getStringByKey(v9, "separator", &v17 + 1, &v17);
  ures_close(v10);
  v13 = v17;
  if (v17 == -127)
  {
    if (*a1)
    {
      v13 = 2;
      LODWORD(v17) = 2;
    }

    else
    {
      v13 = -127;
    }
  }

  else if (!v17)
  {
    v13 = *a4;
    goto LABEL_22;
  }

  *a4 = v13;
LABEL_22:
  if (v13 > 0)
  {
    return 0;
  }

  v14 = u_strstr(StringByKey, "{");
  v15 = u_strstr(StringByKey, "{");
  if (v14 && v15 && v14 <= v15 && (StringByKey = v14 + 3, v16 = (v15 - (v14 + 3)) >> 1, HIDWORD(v17) = v16, v16 < a3))
  {
    u_strncpy(a2, v14 + 3, v16);
    result = SHIDWORD(v17);
    a2[SHIDWORD(v17)] = 0;
  }

  else
  {
    u_strncpy(a2, StringByKey, a3);
    return HIDWORD(v17);
  }

  return result;
}

uint64_t uprv_mapFile(uint64_t a1, const char *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  sub_19525ECCC(a1);
  v3 = 0;
  if (!stat(a2, &v11))
  {
    st_size = v11.st_size;
    if (v11.st_size >= 1)
    {
      v8 = open(a2, 0, *&v11.st_dev, *&v11.st_uid, *&v11.st_atimespec, *&v11.st_mtimespec, *&v11.st_ctimespec, *&v11.st_birthtimespec);
      if (v8 != -1)
      {
        v9 = v8;
        v10 = mmap(0, st_size, 1, 1, v8, 0);
        close(v9);
        if (v10 != -1)
        {
          *(a1 + 8) = v10;
          *(a1 + 32) = v10;
          *(a1 + 40) = &v10[st_size];
          *(a1 + 48) = st_size;
          v3 = 1;
          posix_madvise(v10, st_size, 1);
          return v3;
        }
      }

      return 0;
    }
  }

  return v3;
}

uint64_t sub_19526F8B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      result = munmap(*(result + 32), v2 - *(result + 32));
      v1[1] = 0;
      v1[4] = 0;
      v1[5] = 0;
    }
  }

  return result;
}

uint64_t uprv_max(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t uprv_min(uint64_t result, int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t umutablecptrie_open(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_19526F9A0(uint64_t a1, int a2, int a3, int *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFFF00000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 36) = a2;
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 48) = 0;
  *(a1 + 52) = a2;
  *(a1 + 56) = 0;
  if (*a4 <= 0)
  {
    *a1 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
    v6 = malloc_type_malloc(0x10000uLL, 0x100004052888210uLL);
    *(a1 + 16) = v6;
    if (v6 && *a1)
    {
      *(a1 + 8) = 4096;
      *(a1 + 24) = 0x4000;
    }

    else
    {
      *a4 = 7;
    }
  }

  return a1;
}

void ***sub_19526FA58(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_19526FC68(v2);
    MEMORY[0x19A8B2600](v3, 0x1010C4030F65E08);
  }

  return a1;
}

uint64_t umutablecptrie_clone(uint64_t a1, int *a2)
{
  if (a1 && *a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void **umutablecptrie_close(void **result)
{
  if (result)
  {
    sub_19526FC68(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void **sub_19526FC68(void **a1)
{
  free(*a1);
  free(a1[2]);
  free(a1[7]);
  return a1;
}

uint64_t umutablecptrie_fromUCPMap(UCPMap *map, int *a2)
{
  if (*a2 <= 0)
  {
    if (map)
    {
      ucpmap_get(map, -1);
      ucpmap_get(map, 1114111);
      operator new();
    }

    *a2 = 1;
  }

  return 0;
}

uint64_t umutablecptrie_fromUCPTrie(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (a1)
    {
      v2 = *(a1 + 31);
      if (v2 == 2)
      {
        v9 = *(a1 + 8) + *(a1 + 20);
        v10 = *(v9 - 1);
        v11 = *(v9 - 2);
      }

      else
      {
        if (v2 != 1)
        {
          if (!*(a1 + 31))
          {
            v3 = *(a1 + 8) + 2 * *(a1 + 20);
            v4 = *(v3 - 2);
            v5 = *(v3 - 4);
            goto LABEL_10;
          }

          goto LABEL_7;
        }

        v6 = *(a1 + 8) + 4 * *(a1 + 20);
        v7 = *(v6 - 8);
        v8 = *(v6 - 4);
      }

LABEL_10:
      operator new();
    }

LABEL_7:
    *a2 = 1;
  }

  return 0;
}

uint64_t umutablecptrie_get(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x110000)
  {
    if (*(a1 + 48) <= a2)
    {
      v2 = (a1 + 52);
    }

    else
    {
      v3 = a2 >> 4;
      if (*(a1 + v3 + 64))
      {
        v2 = (*(a1 + 16) + 4 * (*(*a1 + 4 * v3) + (a2 & 0xF)));
      }

      else
      {
        v2 = (*a1 + 4 * v3);
      }
    }
  }

  else
  {
    v2 = (a1 + 44);
  }

  return *v2;
}

uint64_t sub_195270070(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, _DWORD *a5)
{
  if (WORD1(a2) > 0x10u)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  v5 = 1114111;
  if (*(a1 + 48) <= a2)
  {
    if (a5)
    {
      v30 = *(a1 + 52);
      if (a3)
      {
        LODWORD(v30) = a3(a4, v30);
      }

      *a5 = v30;
    }

    return v5;
  }

  v11 = *(a1 + 40);
  if (a3)
  {
    LODWORD(v11) = a3(a4, v11);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v9 >> 4;
  while (1)
  {
    v16 = *(*a1 + 4 * v15);
    if (!*(a1 + 64 + v15))
    {
      if (v14)
      {
        if (v16 == v12)
        {
          v16 = v12;
        }

        else
        {
          if (!a3)
          {
            return (v9 - 1);
          }

          v26 = v11;
          if (v16 != *(a1 + 40))
          {
            v26 = a3(a4, *(*a1 + 4 * v15));
          }

          if (v26 != v13)
          {
            return (v9 - 1);
          }
        }
      }

      else
      {
        v20 = *(a1 + 40);
        if (v16 == v20)
        {
          v13 = v11;
        }

        else
        {
          v13 = *(*a1 + 4 * v15);
        }

        if (a3 && v16 != v20)
        {
          v13 = a3(a4, *(*a1 + 4 * v15));
        }

        if (a5)
        {
          *a5 = v13;
        }
      }

      v9 = (v9 & 0xFFFFFFF0) + 16;
      goto LABEL_49;
    }

    v17 = v16 + (v9 & 0xF);
    v18 = *(a1 + 16);
    v16 = *(v18 + 4 * v17);
    if (v14)
    {
      if (v16 == v12)
      {
        v16 = v12;
      }

      else
      {
        if (!a3)
        {
          return (v9 - 1);
        }

        v21 = v11;
        if (v16 != *(a1 + 40))
        {
          v21 = a3(a4, *(v18 + 4 * v17));
        }

        if (v21 != v13)
        {
          return (v9 - 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (v16 == v19)
      {
        v13 = v11;
      }

      else
      {
        v13 = *(v18 + 4 * v17);
      }

      if (a3 && v16 != v19)
      {
        v13 = a3(a4, *(v18 + 4 * v17));
      }

      if (a5)
      {
        *a5 = v13;
      }
    }

    if (((v9 + 1) & 0xF) != 0)
    {
      break;
    }

    v9 = (v9 + 1);
LABEL_49:
    ++v15;
    v14 = 1;
    v12 = v16;
    if (v9 >= *(a1 + 48))
    {
      v27 = *(a1 + 52);
      v28 = *(a1 + 40);
      if (v27 == v28)
      {
        v29 = v11;
      }

      else
      {
        v29 = *(a1 + 52);
      }

      if (a3 && v27 != v28)
      {
        v29 = (a3)(a4);
      }

      if (v29 == v13)
      {
        return 1114111;
      }

      else
      {
        return (v9 - 1);
      }
    }
  }

  v22 = 4 * v17 + 4;
  while (1)
  {
    v23 = v16;
    v16 = *(*(a1 + 16) + v22);
    if (v16 != v23)
    {
      if (!a3)
      {
        return v9;
      }

      v24 = v11;
      if (v16 != *(a1 + 40))
      {
        v24 = a3(a4, *(*(a1 + 16) + v22));
      }

      if (v24 != v13)
      {
        return v9;
      }
    }

    v25 = v9 + 2;
    v9 = (v9 + 1);
    v22 += 4;
    if ((v25 & 0xF) == 0)
    {
      v9 = (v9 + 1);
      goto LABEL_49;
    }
  }
}

void umutablecptrie_set(void *a1, unsigned int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    sub_19527032C(a1, a2, a3, a4);
  }
}

void sub_19527032C(void *a1, unsigned int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x110000)
    {
      if (sub_195272188(a1, a2))
      {
        sub_195272264(a1, a2 >> 4);
        if ((v9 & 0x80000000) == 0)
        {
          *(a1[2] + 4 * (v9 + (a2 & 0xF))) = a3;
          return;
        }
      }

      v6 = 7;
    }

    else
    {
      v6 = 1;
    }

    *a4 = v6;
  }
}

void umutablecptrie_setRange(void *a1, unsigned int a2, int a3, unsigned int a4, int *a5)
{
  if (*a5 <= 0)
  {
    sub_1952703D0(a1, a2, a3, a4, a5);
  }
}

void sub_1952703D0(void *a1, unsigned int a2, int a3, unsigned int a4, int *a5)
{
  if (*a5 > 0)
  {
    return;
  }

  v7 = a2;
  v8 = 1;
  if (a2 > a3 || a2 > 0x10FFFF || a3 > 0x10FFFF)
  {
LABEL_49:
    *a5 = v8;
    return;
  }

  if (!sub_195272188(a1, a3))
  {
    goto LABEL_48;
  }

  v11 = a3 + 1;
  v12 = v7 & 0xF;
  if ((v7 & 0xF) == 0)
  {
    goto LABEL_29;
  }

  sub_195272264(a1, v7 >> 4);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_48:
    v8 = 7;
    goto LABEL_49;
  }

  v7 = (v7 + 15) & 0x3FFFF0;
  v14 = a1[2];
  if (v7 > v11)
  {
    if (v12 < (v11 & 0xF))
    {
      v15 = 0;
      v16 = v14 + 4 * v13;
      v17 = v16 + 4 * (v11 & 0xF);
      v18 = v16 + 4 * v12 + 4;
      if (v18 > v17)
      {
        v17 = v18;
      }

      v19 = v17 + ~v14;
      v20 = 4 * v13 + 4 * v12;
      v21 = vdupq_n_s64((v19 - v20) >> 2);
      v22 = (((v19 - 4 * v13 - 4 * v12) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v23 = (v20 + v14 + 8);
      do
      {
        v24 = vdupq_n_s64(v15);
        v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_19544D5F0)));
        if (vuzp1_s16(v25, *v21.i8).u8[0])
        {
          *(v23 - 2) = a4;
        }

        if (vuzp1_s16(v25, *&v21).i8[2])
        {
          *(v23 - 1) = a4;
        }

        if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_19544D5E0)))).i32[1])
        {
          *v23 = a4;
          v23[1] = a4;
        }

        v15 += 4;
        v23 += 4;
      }

      while (v22 != v15);
    }

    return;
  }

  v26 = 0;
  v27 = 4 * v12;
  v28 = vdupq_n_s64((v27 >> 2) ^ 0xF);
  v29 = (v27 + 4 * v13 + v14 + 8);
  do
  {
    v30 = vdupq_n_s64(v26);
    v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_19544D5F0)));
    if (vuzp1_s16(v31, *v28.i8).u8[0])
    {
      *(v29 - 2) = a4;
    }

    if (vuzp1_s16(v31, *&v28).i8[2])
    {
      *(v29 - 1) = a4;
    }

    if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_19544D5E0)))).i32[1])
    {
      *v29 = a4;
      v29[1] = a4;
    }

    v26 += 4;
    v29 += 4;
  }

  while (((19 - ((4 * v12) >> 2)) & 0x1CLL) != v26);
LABEL_29:
  if (v7 < (v11 & 0x3FFFF0))
  {
    v32 = vdupq_n_s32(a4);
    v33 = v7 >> 4;
    do
    {
      if (*(a1 + v33 + 64))
      {
        v34 = (a1[2] + 4 * *(*a1 + 4 * v33));
        *v34 = v32;
        v34[1] = v32;
        v34[2] = v32;
        v34[3] = v32;
      }

      else
      {
        *(*a1 + 4 * v33) = a4;
      }

      ++v33;
      v7 += 16;
    }

    while ((v11 & 0x3FFFF0) > v7);
  }

  if ((v11 & 0xF) != 0)
  {
    sub_195272264(a1, v7 >> 4);
    if ((v35 & 0x80000000) == 0)
    {
      v36 = 0;
      v37 = a1[2];
      v38 = v37 + 4 * v35;
      v39 = v38 + 4 * (v11 & 0xF);
      if (v39 <= v38 + 4)
      {
        v39 = v38 + 4;
      }

      v40 = (v39 + ~v37 - 4 * v35) >> 2;
      v41 = vdupq_n_s64(v40);
      v42 = (v40 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v43 = (v38 + 8);
      do
      {
        v44 = vdupq_n_s64(v36);
        v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_19544D5F0)));
        if (vuzp1_s16(v45, *v41.i8).u8[0])
        {
          *(v43 - 2) = a4;
        }

        if (vuzp1_s16(v45, *&v41).i8[2])
        {
          *(v43 - 1) = a4;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_19544D5E0)))).i32[1])
        {
          *v43 = a4;
          v43[1] = a4;
        }

        v36 += 4;
        v43 += 4;
      }

      while (v42 != v36);
      return;
    }

    goto LABEL_48;
  }
}

char *umutablecptrie_buildImmutable()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v319 = *MEMORY[0x1E69E9840];
  if (*v3 <= 0)
  {
    if (v1 > 1 || v2 >= 3)
    {
      v4 = 0;
      *v3 = 1;
      goto LABEL_206;
    }

    if (v2)
    {
      if (v2 != 2)
      {
        goto LABEL_18;
      }

      v5 = 255;
    }

    else
    {
      v5 = 0xFFFF;
    }

    v0[5] = vand_s8(v0[5], vdup_n_s32(v5));
    v6 = v0[6].i32[0];
    v0[6].i32[1] &= v5;
    v7 = (v6 >> 4);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (!v0[8].i8[i])
        {
          *(*v0 + 4 * i) &= v5;
        }
      }
    }

    if (v0[3].i32[1] >= 1)
    {
      v9 = 0;
      v10 = v0[2];
      do
      {
        *(*&v10 + 4 * v9++) &= v5;
      }

      while (v9 < v0[3].i32[1]);
    }

LABEL_18:
    if (v1)
    {
      v11 = 4096;
    }

    else
    {
      v11 = 0x10000;
    }

    v12 = v0[6].i32[0];
    if (v12 < 1114112)
    {
      v13 = &v0[6] + 1;
    }

    else if (v0[8711].i8[7])
    {
      v13 = (*&v0[2] + 4 * (*(*v0 + 278524) + 15));
    }

    else
    {
      v13 = (*v0 + 278524);
    }

    v14 = v11 >> 4;
    v15 = *v13;
    v0[6].i32[1] = v15;
    v16 = (v12 >> 4);
    if (v16 < 1)
    {
LABEL_35:
      v20 = 0;
    }

    else
    {
      while (1)
      {
        v17 = v16 - 1;
        if (v0[7].i8[v16 + 7])
        {
          break;
        }

        if (*(*v0 + 4 * v17) != v15)
        {
          goto LABEL_36;
        }

LABEL_33:
        v19 = v16-- <= 1;
        if (v19)
        {
          goto LABEL_35;
        }
      }

      v18 = 0;
      while (*(*&v0[2] + 4 * *(*v0 + 4 * v17) + v18) == v15)
      {
        v18 += 4;
        if (v18 == 64)
        {
          goto LABEL_33;
        }
      }

LABEL_36:
      v20 = (16 * v16 + 511) & 0x7FFFFE00;
      if (v20 == 1114112)
      {
        v0[6].i32[1] = v0[5].i32[0];
        v21 = 1114112;
        goto LABEL_43;
      }

      v21 = (16 * v16 + 511) & 0x7FFFFE00;
      if (v20 >= v11)
      {
LABEL_43:
        v292 = v20;
        v300 = v3;
        v297 = v2;
        v26 = 0;
        v0[6].i32[0] = v21;
        v27 = v0 + 8;
        memset(__src, 0, sizeof(__src));
        do
        {
          v28 = &v0[6] + 1;
          if (v26 < v21)
          {
            v29 = v26 >> 4;
            if (v27->i8[v29])
            {
              v28 = (*&v0[2] + 4 * (*(*v0 + 4 * v29) + (v26 & 0xF)));
            }

            else
            {
              v28 = (*v0 + 4 * v29);
            }
          }

          *(__src + v26++) = *v28;
        }

        while (v26 != 128);
        v293 = &v0[6] + 1;
        v294 = v1;
        v295 = v11;
        v313 = 0;
        memset(v312, 0, sizeof(v312));
        DWORD1(v312[0]) = -1;
        v309 = v0;
        if (!v21)
        {
          v306 = 148;
          goto LABEL_107;
        }

        v30 = 0;
        v31 = v21 >> 4;
        v32 = 64;
        v33 = 4;
        v34 = 148;
        while (1)
        {
          if (v30 == v14)
          {
            v32 = 16;
            v33 = 1;
          }

          v35 = *v0;
          v36 = *(*v0 + 4 * v30);
          if (v27->i8[v30] == 1)
          {
            v37 = (*&v0[2] + 4 * v36);
            v39 = *v37;
            v38 = v37 + 1;
            LODWORD(v36) = v39;
            v40 = &v38[v32 - 1];
            do
            {
              if (*v38 != v36)
              {
                break;
              }

              ++v38;
            }

            while (v38 < v40);
            if (v38 != v40)
            {
              goto LABEL_91;
            }

            v27->i8[v30] = 0;
            v35 = *v0;
            *(*v0 + 4 * v30) = v36;
          }

          else if (v33 >= 2)
          {
            v41 = v30 + 1;
            do
            {
              if (v41 >= v33 + v30)
              {
                goto LABEL_65;
              }

              v42 = *(*&v35 + 4 * v41++);
            }

            while (v42 == v36);
            sub_195272264(v0, v30);
            if (v43 < 0)
            {
              goto LABEL_115;
            }

            v34 += v32;
            v0 = v309;
            goto LABEL_92;
          }

LABEL_65:
          v44 = DWORD1(v312[0]);
          if ((DWORD1(v312[0]) & 0x80000000) != 0 || *(&v312[8] + DWORD1(v312[0]) + 2) != v36)
          {
            break;
          }

LABEL_74:
          *(&v312[16] + v44 + 2) += v33;
          v46 = *(v312 + v44 + 2);
          if (v46 == -2)
          {
LABEL_75:
            if (!v30)
            {
LABEL_82:
              if (SLODWORD(v312[0]) < 1)
              {
                v49 = -1;
              }

              else
              {
                v48 = 0;
                v49 = -1;
                v50 = 69632;
                do
                {
                  if (*(&v312[16] + v48 + 2) < v50)
                  {
                    v49 = v48;
                    v50 = *(&v312[16] + v48 + 2);
                  }

                  ++v48;
                }

                while (LODWORD(v312[0]) != v48);
              }

              DWORD1(v312[0]) = v49;
              v45 = v49;
              *(v312 + v49 + 2) = v30;
              *(&v312[8] + v49 + 2) = v36;
LABEL_90:
              *(&v312[16] + v45 + 2) = v33;
              goto LABEL_91;
            }

            v46 = 0;
            v47 = 4;
            while (1)
            {
              if (v46 == v14)
              {
                v47 = 1;
              }

              if (!v27->i8[v46] && *(*&v35 + 4 * v46) == v36)
              {
                break;
              }

              v46 += v47;
              if (v46 == v30)
              {
                goto LABEL_82;
              }
            }

            if (SLODWORD(v312[0]) < 1)
            {
              v52 = -1;
            }

            else
            {
              v51 = 0;
              v52 = -1;
              v53 = 69632;
              do
              {
                if (*(&v312[16] + v51 + 2) < v53)
                {
                  v52 = v51;
                  v53 = *(&v312[16] + v51 + 2);
                }

                ++v51;
              }

              while (LODWORD(v312[0]) != v51);
            }

            DWORD1(v312[0]) = v52;
            *(v312 + v52 + 2) = v46;
            *(&v312[8] + v52 + 2) = v36;
            *(&v312[16] + v52 + 2) = v47 + v33;
          }

          if ((v46 & 0x80000000) == 0)
          {
            v27->i8[v30] = 2;
            *(*v0 + 4 * v30) = v46;
            goto LABEL_92;
          }

LABEL_91:
          v34 += v32;
LABEL_92:
          v30 += v33;
          if (v30 >= v31)
          {
            v306 = v34;
            if (v34 < 0)
            {
LABEL_115:
              *v300 = 7;
              goto LABEL_204;
            }

LABEL_107:
            v54 = malloc_type_malloc((4 * v306), 0x100004052888210uLL);
            if (!v54)
            {
              goto LABEL_115;
            }

            v55 = v54;
            memcpy(v54, __src, 0x200uLL);
            if (LODWORD(v312[0]))
            {
              if (SLODWORD(v312[0]) < 1)
              {
                v59 = -1;
              }

              else
              {
                v56 = 0;
                v57 = 0;
                v58 = -1;
                do
                {
                  if (*(&v312[16] + v56 + 2) > v57)
                  {
                    v58 = v56;
                    v57 = *(&v312[16] + v56 + 2);
                  }

                  ++v56;
                }

                while (LODWORD(v312[0]) != v56);
                v59 = v58;
              }

              v61 = v309;
              v60 = *(v312 + v59 + 2);
            }

            else
            {
              v60 = -1;
              v61 = v309;
            }

            *v310 = 0u;
            v311 = 0u;
            v62 = *v61;
            *v62 = 0;
            v62[4] = 64;
            if (!sub_195272410(v310, v306, 64))
            {
LABEL_200:
              LODWORD(v120) = 0;
              v121 = 7;
              v119 = v300;
LABEL_201:
              *v119 = v121;
LABEL_202:
              v122 = v297;
              goto LABEL_203;
            }

            LODWORD(v63) = 128;
            sub_19527250C(v310, v55, 0, 128);
            v64 = v309;
            v65 = v309[6].i32[0] >> 4;
            if (v65 >= 9)
            {
              v66 = 0;
              v67 = v55 - 4;
              v68 = 4;
              v69 = 8;
              v70 = 64;
              v63 = 128;
              v296 = v60;
              v291 = v309[6].i32[0] >> 4;
              while (1)
              {
                if (v69 == v14)
                {
                  if (!sub_195272410(v310, v306, 16))
                  {
                    goto LABEL_200;
                  }

                  sub_19527250C(v310, v55, 0, v63);
                  v70 = 16;
                  v68 = 1;
                  v66 = v63;
                  v64 = v309;
                }

                if (v27->i8[v69] == 1)
                {
                  break;
                }

                if (v27->i8[v69])
                {
                  *(*v64 + 4 * v69) = *(*v64 + 4 * *(*v64 + 4 * v69));
                }

                else
                {
                  v71 = *v64;
                  v72 = *(*v64 + 4 * v69);
                  v73 = v72;
                  if (SDWORD2(v311) >= 2)
                  {
                    v74 = DWORD2(v311) - 1;
                    v73 = *(*v64 + 4 * v69);
                    do
                    {
                      v73 = v72 + 37 * v73;
                      --v74;
                    }

                    while (v74);
                  }

                  v75 = v73 % (HIDWORD(v310[1]) - 1) + 1;
                  v76 = *(v310[0] + v75);
                  if (v76)
                  {
                    v77 = v73 << v311;
                    v78 = v73 % (HIDWORD(v310[1]) - 1) + 1;
                    while (1)
                    {
                      if ((v76 & ~DWORD1(v311)) == v77)
                      {
                        v79 = (v55 + 4 * ((v76 & DWORD1(v311)) - 1));
                        v80 = &v79[SDWORD2(v311)];
                        if (SDWORD2(v311) >= 1)
                        {
                          do
                          {
                            if (*v79 != v72)
                            {
                              break;
                            }

                            ++v79;
                          }

                          while (v79 < v80);
                        }

                        if (v79 == v80)
                        {
                          break;
                        }
                      }

                      v78 = (v78 + v75) % SHIDWORD(v310[1]);
                      v76 = *(v310[0] + v78);
                      if (!v76)
                      {
                        goto LABEL_160;
                      }
                    }
                  }

                  else
                  {
                    v78 = v73 % (HIDWORD(v310[1]) - 1) + 1;
LABEL_160:
                    v78 = ~v78;
                  }

                  if (v78 < 0)
                  {
                    v102 = -1;
                  }

                  else
                  {
                    v102 = (DWORD1(v311) & *(v310[0] + v78)) - 1;
                  }

                  v103 = v102 >= 0;
                  if (v69 == v60 && v69 >= v14 && (v102 & 0x80000000) == 0 && v102 < v66)
                  {
                    v104 = v63 - v70;
                    while (1)
                    {
                      v105 = 0;
                      while (*(*&v71 + 4 * v105) != v102)
                      {
                        v105 += 4;
                        if (v105 >= v14)
                        {
                          goto LABEL_186;
                        }
                      }

                      if (v104 <= v102)
                      {
                        break;
                      }

                      v106 = v102;
                      while (1)
                      {
                        v102 = v106 + 1;
                        if (*(v55 + 4 * (v106 + 1)) == v72)
                        {
                          break;
                        }

LABEL_181:
                        v106 = v102;
                        if (v102 >= v104)
                        {
                          goto LABEL_187;
                        }
                      }

                      v107 = (v55 + 8 + 4 * v106);
                      v108 = -2;
                      v109 = v70 - 1;
                      do
                      {
                        v110 = *v107++;
                        if (v110 != v72)
                        {
                          v102 = v106 - v108;
                          goto LABEL_181;
                        }

                        --v108;
                        --v109;
                      }

                      while (v109);
                      v103 = v106 > -2;
                      if (v106 < -1 || v102 >= v66)
                      {
                        goto LABEL_185;
                      }
                    }

LABEL_187:
                    v111 = v63 - v70 + 1;
                    LODWORD(v112) = v63;
                    if (v111 < v63)
                    {
                      v112 = v63;
                      while (*(v67 + 4 * v112) == v72)
                      {
                        if (--v112 <= v111)
                        {
                          LODWORD(v112) = v63 - v70 + 1;
                          break;
                        }
                      }
                    }

                    v304 = v68;
                    v113 = v66;
                    *(*&v71 + 4 * v69) = v112;
                    v114 = v63;
                    if (v63 - v112 < v70)
                    {
                      v115 = (v55 + 4 * v63);
                      v116 = v112 + v70;
                      LODWORD(v114) = v63;
                      do
                      {
                        *v115++ = v72;
                        v114 = (v114 + 1);
                      }

                      while (v116 != v114);
                    }

                    v117 = v63;
                    v118 = v70;
                    sub_19527250C(v310, v55, v117, v114);
                    v70 = v118;
                    v63 = v114;
                    v67 = v55 - 4;
                    v66 = v113;
                    v68 = v304;
                    v60 = v296;
LABEL_196:
                    v64 = v309;
                    goto LABEL_197;
                  }

LABEL_185:
                  if (!v103)
                  {
                    goto LABEL_187;
                  }

LABEL_186:
                  *(*&v71 + 4 * v69) = v102;
                }

LABEL_197:
                v69 += v68;
                if (v69 >= v65)
                {
                  goto LABEL_198;
                }
              }

              v301 = v70;
              v303 = v68;
              v298 = v66;
              v81 = v64[2];
              v82 = *v64;
              v83 = 4 * *(*v64 + 4 * v69);
              v85 = (*&v81 + v83 + 4);
              v84 = *(*&v81 + v83);
              if (SDWORD2(v311) <= 2)
              {
                v86 = 2;
              }

              else
              {
                v86 = DWORD2(v311);
              }

              v87 = v86 - 1;
              do
              {
                v88 = *v85++;
                v84 = v88 + 37 * v84;
                --v87;
              }

              while (v87);
              v89 = sub_1952725D0(v310, v55, *&v81 + v83, 0, v84);
              if ((v89 & 0x80000000) != 0 || (v90 = (DWORD1(v311) & *(v310[0] + v89)) - 1, v90 < 0))
              {
                v91 = 4 * v63 - 4 * v301 + 4;
                v92 = v301;
                do
                {
                  v93 = v92--;
                  v94 = v91;
                  v95 = v93;
                  v96 = (*&v81 + v83);
                  while (*(v55 + v94) == *v96)
                  {
                    ++v96;
                    --v95;
                    v94 += 4;
                    if (v95 <= 1)
                    {
                      goto LABEL_155;
                    }
                  }

                  v91 += 4;
                }

                while (v93 >= 3);
                LODWORD(v92) = 0;
LABEL_155:
                *(*&v82 + 4 * v69) = v63 - v92;
                v97 = v63;
                v65 = v291;
                if (v92 < v301)
                {
                  v98 = (*&v81 + v83 + 4 * v92);
                  v99 = v301 - v92;
                  v100 = (v55 + 4 * v63);
                  v97 = v63 + v301 - v92;
                  do
                  {
                    v101 = *v98++;
                    *v100++ = v101;
                    --v99;
                  }

                  while (v99);
                }

                sub_19527250C(v310, v55, v63, v97);
                v70 = v301;
                v63 = v97;
                v60 = v296;
                v67 = v55 - 4;
                v66 = v298;
                v68 = v303;
              }

              else
              {
                *(*&v82 + 4 * v69) = v90;
                v60 = v296;
                v65 = v291;
                v67 = v55 - 4;
                v66 = v298;
                v68 = v303;
                v70 = v301;
              }

              goto LABEL_196;
            }

LABEL_198:
            v119 = v300;
            if (*v300 > 0)
            {
              LODWORD(v120) = 0;
              goto LABEL_202;
            }

            free(*&v64[2]);
            v139 = v309;
            v309[2] = v55;
            v309[3].i32[0] = v306;
            v309[3].i32[1] = v63;
            if (v63 >= 0x40010)
            {
              LODWORD(v120) = 0;
              v121 = 8;
              goto LABEL_201;
            }

            if ((v60 & 0x80000000) != 0)
            {
              v142 = 0xFFFFF;
              v143 = 4;
            }

            else
            {
              v141 = *(*v309 + 4 * v60);
              v309[4].i32[0] = v141;
              v142 = *(v55 + 4 * v141);
              v143 = 5;
            }

            v309[v143].i32[0] = v142;
            v120 = v295 >> 6;
            if (v120 >= v309[6].i32[0] >> 6)
            {
              v309[1].i32[1] = 0x7FFF;
            }

            else
            {
              bzero(v318, 0x800uLL);
              v153 = 0;
              v154 = *v309;
              if (v14 <= 4)
              {
                v155 = 4;
              }

              else
              {
                v155 = v14;
              }

              v156 = ((v155 - 1) >> 2) + 1;
              v157 = -1;
              do
              {
                v158 = **&v154;
                v318[v153] = **&v154;
                if (v158 == v309[4].i32[0])
                {
                  if (v157 < 0)
                  {
                    v157 = v153;
                  }

                  else if (v309[1].i32[1] < 0 && v157 + 31 == v153)
                  {
                    v309[1].i32[1] = v157;
                  }
                }

                else
                {
                  v157 = -1;
                }

                v159 = vaddq_s32(vdupq_n_s32(v158), xmmword_19547BDF0);
                *(*&v154 + 4) = v159.i64[0];
                *(*&v154 + 12) = v159.i32[2];
                ++v153;
                *&v154 += 16;
              }

              while (v156 != v153);
              if ((sub_195272410(v310, v120, 32) & 1) == 0)
              {
                goto LABEL_361;
              }

              v160 = v294 == 0;
              sub_195272684(v310, v318, 0, 0, v120);
              v161 = (v160 << 12);
              v162 = v309;
              v163 = (v309[6].i32[0] >> 4);
              if (v163 <= v160 << 12)
              {
                v307 = 0;
                v164 = 0;
              }

              else
              {
                v164 = 0;
                v307 = 0;
                v165 = v309[1].i32[1];
                v166 = *v309;
                v167 = *v309 + 4 * v161;
                v168 = v161;
                do
                {
                  v169 = vdupq_n_s32(v162[4].u32[0]);
                  v170 = *(v167 + 16);
                  v171 = *(v167 + 32);
                  v172 = *(v167 + 48);
                  v174 = *(v167 + 64);
                  v173 = *(v167 + 80);
                  v176 = *(v167 + 96);
                  v175 = *(v167 + 112);
                  v177 = vmaxvq_u8(vornq_s8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_s32(*v167, v169), vceqq_s32(v170, v169)), vuzp1q_s16(vceqq_s32(v171, v169), vceqq_s32(v172, v169)))), vuzp1q_s8(vuzp1q_s16(vceqq_s32(v174, v169), vceqq_s32(v173, v169)), vuzp1q_s16(vceqq_s32(v176, v169), vceqq_s32(v175, v169)))));
                  v178 = vorrq_s8(vorrq_s8(vorrq_s8(v174, *v167), vorrq_s8(v176, v171)), vorrq_s8(vorrq_s8(v173, v170), vorrq_s8(v175, v172)));
                  *v178.i8 = vorr_s8(*v178.i8, *&vextq_s8(v178, v178, 8uLL));
                  v179 = v178.i32[0] | v178.i32[1];
                  if (v177)
                  {
                    if (HIWORD(v179))
                    {
                      v27->i8[v168] = 3;
                      v164 += 36;
                      v307 = 1;
                    }

                    else
                    {
                      v180 = sub_19527274C(v310, v318, v166, v168);
                      if (v180 < 0)
                      {
                        v27->i8[v168] = 2;
                        v164 += 32;
                      }

                      else
                      {
                        v27->i8[v168] = 1;
                        *v167 = v180;
                      }

                      v162 = v309;
                    }
                  }

                  else
                  {
                    v27->i8[v168] = 0;
                    if (v165 < 0)
                    {
                      v165 = 0;
                      v181 = HIWORD(v179);
                      v307 |= v181 != 0;
                      if (v181)
                      {
                        v182 = 36;
                      }

                      else
                      {
                        v182 = 32;
                      }

                      v164 += v182;
                    }
                  }

                  v168 += 32;
                  v167 += 128;
                }

                while (v168 < v163);
              }

              v209 = (v120 + ((((v163 - v161) >> 5) + 31) >> 5));
              v210 = malloc_type_malloc(2 * (v209 + ((v163 - v161) >> 5) + v164 + 1), 0x1000040BDFB0063uLL);
              v139 = v309;
              v309[7] = v210;
              if (v210)
              {
                memcpy(v210, v318, v295 >> 5);
                if (sub_195272410(v310, v209 + ((v163 - v161) >> 5) + v164 + 1, 32))
                {
                  *v314 = 0u;
                  v315 = 0u;
                  if ((v307 & 1) != 0 && (sub_195272410(v314, v209 + ((v163 - v161) >> 5) + v164 + 1, 36) & 1) == 0)
                  {
                    LODWORD(v268) = 0;
                    v119 = v300;
                    *v300 = 7;
                  }

                  else
                  {
                    bzero(v317, 0x1100uLL);
                    v212 = v309;
                    v213 = v309[1].u32[1];
                    v299 = (v120 + ((((v163 - v161) >> 5) + 31) >> 5));
                    if (v163 > v161)
                    {
                      v214 = 0;
                      v302 = ((v163 + ~v161) >> 5) + 1;
                      v288 = v209;
                      v215 = 4 * v161;
                      v216 = v215 + 28;
                      v217 = xmmword_19547BE00;
                      v218 = xmmword_19547BE10;
                      v219 = xmmword_19547BE20;
                      v220 = xmmword_19547BE30;
                      v221 = v309[1].i32[1];
                      v222 = v209;
                      while (1)
                      {
                        v223 = v27->u8[v161];
                        if (v27->i8[v161] || (v221 & 0x80000000) == 0)
                        {
                          if (!v27->i8[v161])
                          {
                            v224 = v213;
                            goto LABEL_355;
                          }

                          if (v223 == 2)
                          {
                            v305 = v221;
LABEL_312:
                            v289 = v216;
                            v225 = v215;
                            v226 = v214;
                            v227 = v209;
                            v228 = v222;
                            v229 = v212[7];
                            v230 = *v212;
                            v231 = sub_19527274C(v310, v229, *v212, v161);
                            if ((v231 & 0x80000000) != 0)
                            {
                              v232 = v228;
                              v233 = v227;
                              if (v228 == v227)
                              {
                                v234 = 0;
                                v235 = v227;
                                v224 = v227;
                                v214 = v226;
                                v215 = v225;
                                v236 = v288;
                                v216 = v289;
                              }

                              else
                              {
                                v236 = v228;
                                v257 = 32;
                                v234 = 31;
                                v214 = v226;
                                v215 = v225;
                                v216 = v289;
LABEL_331:
                                v258 = (v229 + 2 * (v228 - v234));
                                v259 = v257;
                                v260 = (v230 + 4 * v161);
                                do
                                {
                                  if (*v260 != *v258)
                                  {
                                    --v257;
                                    v19 = v234-- > 1;
                                    if (v19)
                                    {
                                      goto LABEL_331;
                                    }

                                    v235 = v233;
                                    v234 = 0;
                                    v224 = v228;
                                    goto LABEL_338;
                                  }

                                  ++v258;
                                  ++v260;
                                  --v259;
                                }

                                while (v259 > 1);
                                v235 = v233;
                                v224 = (v228 - v234);
                                if (v234 > 31)
                                {
                                  goto LABEL_340;
                                }
                              }

LABEL_338:
                              v261 = (v229 + 2 * v236);
                              v262 = 4 * v234;
                              v228 = (v236 - v234 + 32);
                              do
                              {
                                *v261++ = *(v230 + v215 + v262);
                                v262 += 4;
                              }

                              while (v262 != 128);
LABEL_340:
                              v263 = v229;
                              v264 = v235;
                              v265 = v232;
                              sub_195272684(v310, v263, v235, v232, v228);
                              if (v307)
                              {
                                sub_195272684(v314, *&v309[7], v264, v265, v228);
                                v212 = v309;
                                v222 = v228;
                                v218 = xmmword_19547BE10;
                                v217 = xmmword_19547BE00;
                                v220 = xmmword_19547BE30;
                                v219 = xmmword_19547BE20;
                                v221 = v305;
                              }

                              else
                              {
                                v222 = v228;
                                v218 = xmmword_19547BE10;
                                v217 = xmmword_19547BE00;
                                v220 = xmmword_19547BE30;
                                v219 = xmmword_19547BE20;
                                v221 = v305;
                                v212 = v309;
                              }

                              v209 = v264;
                            }

                            else
                            {
                              v224 = v231;
                              v218 = xmmword_19547BE10;
                              v217 = xmmword_19547BE00;
                              v220 = xmmword_19547BE30;
                              v219 = xmmword_19547BE20;
                              v221 = v305;
                              v222 = v228;
                              v209 = v227;
                              v214 = v226;
                              v215 = v225;
                              v216 = v289;
                              v212 = v309;
                            }

                            goto LABEL_355;
                          }

                          if (v223 == 1)
                          {
                            v224 = *(*v212 + 4 * v161);
                            goto LABEL_355;
                          }

                          v305 = v221;
                        }

                        else
                        {
                          v305 = 0;
                          if (v212[4].i32[0] < 0x10000)
                          {
                            goto LABEL_312;
                          }
                        }

                        v237 = v212[7];
                        v290 = 2 * v222;
                        v238 = (v237 + v290 + 16);
                        v239 = (*v212 + v216);
                        v240 = v161;
                        do
                        {
                          v241 = v239[-2].i32[1];
                          v211.i64[0] = v239[-2].i64[1];
                          v242 = v239[-1];
                          v243 = vzip1q_s32(v211, vextq_s8(v211, v242, 0xCuLL));
                          v243.i32[1] = v241;
                          v244 = vorrq_s8(vandq_s8(vshlq_u32(v243, v217), v219), vandq_s8(vshlq_u32(*(&v239[-1] + 4), v218), v220));
                          *v244.i8 = vorr_s8(*v244.i8, *&vextq_s8(v244, v244, 8uLL));
                          v245 = v239->i32[0];
                          v239 += 2;
                          v244.i32[0] |= v244.u32[1];
                          v244.i32[1] = v241;
                          v244.i64[1] = v211.i64[0];
                          v240 += 8;
                          v238->i16[0] = v245;
                          v211 = vuzp1q_s16(v244, v242);
                          v238[-1] = v211;
                          v238 = (v238 + 18);
                        }

                        while (v240 < v161 + 32);
                        v246 = sub_19527284C(v314, v237, v237, v222);
                        if ((v246 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v247 = v299;
                        v248 = v222;
                        if (v222 == v299)
                        {
LABEL_349:
                          v222 = (v222 + 36);
                        }

                        else
                        {
                          v249 = 0;
                          v250 = 0;
                          v251 = 0x7FFFFFFFFFFFFFDDLL;
                          v252 = 36;
                          v253 = (v237 + 2 * v222);
LABEL_324:
                          v254 = v252--;
                          v255 = v254;
                          v256 = (v237 + 2 * v222);
                          do
                          {
                            if (v256[v251] != *v256)
                            {
                              ++v251;
                              v250 -= 2;
                              ++v249;
                              if (v254 >= 3)
                              {
                                goto LABEL_324;
                              }

                              v247 = v222;
                              goto LABEL_349;
                            }

                            ++v256;
                            --v255;
                          }

                          while (v255 > 1);
                          v247 = v222 - v252;
                          if (v254 < 2)
                          {
                            goto LABEL_349;
                          }

                          if (v254 <= 0x24)
                          {
                            v222 = (v222 + v249 + 1);
                            do
                            {
                              *v253++ = *(v237 + v290 + 70 + v250);
                              v250 += 2;
                            }

                            while (v250 != 2);
                          }
                        }

                        v266 = v248;
                        sub_195272684(v310, v237, v299, v248, v222);
                        if ((v307 & 1) == 0)
                        {
                          v218 = xmmword_19547BE10;
                          v217 = xmmword_19547BE00;
                          v220 = xmmword_19547BE30;
                          v219 = xmmword_19547BE20;
                          v221 = v305;
                          v209 = v299;
                          goto LABEL_353;
                        }

                        sub_195272684(v314, *&v309[7], v299, v266, v222);
                        v212 = v309;
                        v218 = xmmword_19547BE10;
                        v217 = xmmword_19547BE00;
                        v220 = xmmword_19547BE30;
                        v219 = xmmword_19547BE20;
                        v221 = v305;
                        v209 = v299;
LABEL_354:
                        v224 = v247 | 0x8000u;
LABEL_355:
                        v213 = v212[1].u32[1];
                        if ((v213 & 0x80000000) != 0 && (v221 & 0x80000000) == 0)
                        {
                          v212[1].i32[1] = v224;
                          v213 = v224;
                        }

                        v317[v214] = v224;
                        v161 += 32;
                        v216 += 128;
                        v215 += 128;
                        ++v214;
                        v267 = v302;
                        if (v214 == v302)
                        {
                          v268 = v222;
                          goto LABEL_366;
                        }
                      }

                      v247 = v246;
                      v209 = v299;
                      v218 = xmmword_19547BE10;
                      v217 = xmmword_19547BE00;
                      v220 = xmmword_19547BE30;
                      v219 = xmmword_19547BE20;
                      v221 = v305;
LABEL_353:
                      v212 = v309;
                      goto LABEL_354;
                    }

                    v267 = 0;
                    v268 = (v120 + ((((v163 - v161) >> 5) + 31) >> 5));
LABEL_366:
                    if ((v213 & 0x80000000) != 0)
                    {
                      v212[1].i32[1] = 0x7FFF;
                    }

                    if (v268 > 32798)
                    {
                      LODWORD(v268) = 0;
                      *v300 = 8;
                      goto LABEL_405;
                    }

                    if (v267 >= 1)
                    {
                      v269 = 0;
                      v308 = v209;
                      v270 = v212[7];
                      v271 = v267 + 1;
                      v272 = 32;
                      v273 = v267;
                      do
                      {
                        v274 = v267 - v269;
                        if (v267 - v269 >= v272)
                        {
                          v276 = v270;
                          v275 = sub_19527284C(v310, v270, v317, v269);
                          v270 = v276;
                          LOWORD(v276) = v275;
                          if (v275 < 0)
                          {
                            goto LABEL_387;
                          }

                          goto LABEL_401;
                        }

                        if (v268 - v274 < v209)
                        {
LABEL_374:
                          v272 = v267 - v269;
                          goto LABEL_387;
                        }

                        v276 = v308;
                        while (1)
                        {
                          if (v274 >= 1)
                          {
                            v277 = (v270 + 2 * v276);
                            v278 = v271 - v269;
                            v279 = &v317[v269];
                            while (*v277 == *v279)
                            {
                              ++v277;
                              ++v279;
                              if (--v278 <= 1)
                              {
                                v272 = v267 - v269;
                                if ((v276 & 0x80000000) == 0)
                                {
                                  goto LABEL_401;
                                }

                                goto LABEL_387;
                              }
                            }

                            goto LABEL_384;
                          }

                          if (!v274)
                          {
                            break;
                          }

LABEL_384:
                          if (v268 - v274 + 1 == ++v276)
                          {
                            goto LABEL_374;
                          }
                        }

                        v272 = 0;
                        if ((v276 & 0x80000000) != 0)
                        {
LABEL_387:
                          if (v268 == v209)
                          {
                            v280 = 0;
                            goto LABEL_398;
                          }

                          v280 = v272 - 1;
                          if (v272 <= 1)
                          {
                            LOWORD(v276) = v268 - v280;
                            goto LABEL_399;
                          }

                          v281 = v272;
                          do
                          {
                            v282 = v281--;
                            v283 = (v270 + 2 * (v268 - v281));
                            v284 = v282;
                            v285 = &v317[v269];
                            while (*v283 == *v285)
                            {
                              ++v283;
                              ++v285;
                              if (--v284 <= 1)
                              {
                                v280 = v281;
                                goto LABEL_398;
                              }
                            }

                            v280 = 0;
                          }

                          while (v282 >= 3);
LABEL_398:
                          LOWORD(v276) = v268 - v280;
                          v286 = v268;
                          if (v280 < v272)
                          {
LABEL_399:
                            v287 = v270;
                            memcpy((v270 + 2 * v268), &v317[v280 + v269], 2 * (v272 + ~v280) + 2);
                            v270 = v287;
                            v286 = (v272 + v268 - v280);
                          }

                          LODWORD(v209) = v299;
                          sub_195272684(v310, v270, v299, v268, v286);
                          v270 = v309[7];
                          v268 = v286;
                          v267 = v273;
                        }

LABEL_401:
                        *(v270 + 2 * v120++) = v276;
                        v269 += v272;
                      }

                      while (v269 < v267);
                    }

LABEL_405:
                    v119 = v300;
                  }

                  free(v314[0]);
                  LODWORD(v120) = v268;
LABEL_362:
                  v122 = v297;
                  v183 = v292;
                  v139 = v309;
LABEL_363:
                  v139[6].i32[0] = v183;
LABEL_203:
                  free(v310[0]);
                  if (*v119 >= 1)
                  {
LABEL_204:
                    v123 = v309;
                    v309[1].i32[1] = -1;
                    *(&v309[3] + 4) = 0xFFFFFFFF00000000;
                    v124 = v309[4].i32[1];
                    v309[5].i32[0] = v124;
                    v309[6].i32[0] = 0;
                    v309[6].i32[1] = v124;
                    free(*&v309[7]);
                    v4 = 0;
LABEL_205:
                    v123[7] = 0;
                    goto LABEL_206;
                  }

                  if (v122 == 1 && (v120 & 1) != 0)
                  {
                    *(*&v309[7] + 2 * v120) = -18;
                    v127 = 2 * (v120 + 1);
                    LODWORD(v120) = v120 + 1;
LABEL_217:
                    v133 = v309[2];
                    v134 = v309[3].i32[1];
                    v135 = (*&v133 + 4 * v134);
                    v136 = *(v135 - 1);
                    v137 = v309[5].i32[1];
                    v138 = v309[6].i32[1];
                    if (v136 != v137 || *(v135 - 2) != v138)
                    {
                      if (v136 != v138)
                      {
                        v309[3].i32[1] = v134 + 1;
                        *v135 = v138;
                        v137 = v309[5].i32[1];
                        v134 = v309[3].i32[1];
                      }

                      v309[3].i32[1] = v134 + 1;
                      *(*&v133 + 4 * v134) = v137;
                      v134 = v309[3].i32[1];
                    }

                    v140 = v127 + 4 * v134;
LABEL_275:
                    v188 = malloc_type_malloc(v140 + 48, 0x100004077774924uLL);
                    v4 = v188;
                    if (v188)
                    {
                      *(v188 + 1) = 0u;
                      *(v188 + 2) = 0u;
                      *v188 = 0u;
                      v189 = v309;
                      v190 = v309[3].i32[1];
                      v191 = v309[4].i32[0];
                      *(v188 + 4) = v120;
                      *(v188 + 5) = v190;
                      v192 = v309[6].i32[0];
                      *(v188 + 14) = (v192 + 4095) >> 12;
                      *(v188 + 6) = v192;
                      v188[30] = v294;
                      v188[31] = v122;
                      *(v188 + 19) = v309[1].i32[1];
                      v193 = v309[5].i32[0];
                      *(v188 + 10) = v191;
                      *(v188 + 11) = v193;
                      v194 = v188 + 48;
                      *v188 = v188 + 48;
                      if (v192 <= v295)
                      {
                        if (v120 < 1)
                        {
                          v195 = v188 + 48;
                        }

                        else
                        {
                          v198 = *v309;
                          v195 = v188 + 48;
                          do
                          {
                            v199 = *v198;
                            v198 += 4;
                            *v195 = v199;
                            v195 += 2;
                            LODWORD(v120) = v120 - 1;
                          }

                          while (v120);
                        }
                      }

                      else
                      {
                        memcpy(v188 + 48, *&v309[7], v127);
                        v189 = v309;
                        v195 = &v194[2 * v120];
                      }

                      v200 = &v194[v127];
                      v201 = v189[2];
                      if (v122 == 2)
                      {
                        *(v4 + 1) = v200;
                        v202 = v189[3].i32[1];
                        if (v202 >= 1)
                        {
                          v203 = v202 + 1;
                          do
                          {
                            v204 = *v201++;
                            *v200++ = v204;
                            --v203;
                          }

                          while (v203 > 1);
                        }
                      }

                      else if (v122 == 1)
                      {
                        *(v4 + 1) = v200;
                        memcpy(v200, v201, 4 * v189[3].i32[1]);
                        v189 = v309;
                      }

                      else
                      {
                        *(v4 + 1) = v195;
                        v205 = v189[3].i32[1];
                        if (v205 >= 1)
                        {
                          v206 = v205 + 1;
                          do
                          {
                            v207 = *v201++;
                            *v195 = v207;
                            v195 += 2;
                            --v206;
                          }

                          while (v206 > 1);
                        }
                      }

                      v189[1].i32[1] = -1;
                      *(&v189[3] + 4) = 0xFFFFFFFF00000000;
                      v208 = v189[4].i32[1];
                      v189[5].i32[0] = v208;
                      v189[6].i32[0] = 0;
                      v189[6].i32[1] = v208;
                      v197 = v189[7];
                      v123 = v189;
                    }

                    else
                    {
                      *v300 = 7;
                      v123 = v309;
                      v309[1].i32[1] = -1;
                      *(&v309[3] + 4) = 0xFFFFFFFF00000000;
                      v196 = v309[4].i32[1];
                      v309[5].i32[0] = v196;
                      v309[6].i32[0] = 0;
                      v309[6].i32[1] = v196;
                      v197 = v309[7];
                    }

                    free(v197);
                    goto LABEL_205;
                  }

                  v127 = 2 * v120;
                  if (!v122)
                  {
                    v144 = v309[3].i32[1];
                    v145 = v309[2];
                    v146 = v309[5].i32[1];
                    if ((v144 ^ v120))
                    {
                      v309[3].i32[1] = v144 + 1;
                      *(*&v145 + 4 * v144) = v146;
                      v144 = v309[3].i32[1];
                    }

                    v147 = (*&v145 + 4 * v144);
                    v148 = *v293;
                    if (*(v147 - 1) != v146 || *(v147 - 2) != v148)
                    {
                      v309[3].i32[1] = v144 + 1;
                      *v147 = v148;
                      v149 = v309[5].i32[1];
                      v150 = v309[3].i32[1];
                      v309[3].i32[1] = v150 + 1;
                      *(*&v145 + 4 * v150) = v149;
                      v144 = v309[3].i32[1];
                    }

                    v140 = 2 * (v144 + v120);
                    goto LABEL_275;
                  }

                  if (v122 == 1)
                  {
                    goto LABEL_217;
                  }

                  v128 = v309[3].i32[1];
                  v129 = (v128 + v127) & 3;
                  v130 = v309[2];
                  if (v129 > 1)
                  {
                    if (v129 == 2)
                    {
                      goto LABEL_273;
                    }

                    v151 = (*&v130 + 4 * v128);
                    v132 = *v293;
                    if (*(v151 - 1) != *v293)
                    {
                      goto LABEL_271;
                    }

                    v152 = v309[5].i32[1];
                    v309[3].i32[1] = v128 + 1;
                    *v151 = v152;
                  }

                  else
                  {
                    if (((v128 + v127) & 3) != 0)
                    {
                      v132 = *v293;
                    }

                    else
                    {
                      v131 = *&v130 + 4 * v128;
                      v132 = v309[6].i32[1];
                      if (*(v131 - 4) == v309[5].i32[1] && *(v131 - 8) == v132)
                      {
                        goto LABEL_274;
                      }
                    }

                    do
                    {
LABEL_271:
                      v184 = v309[3].i32[1];
                      v309[3].i32[1] = v184 + 1;
                      *(*&v130 + 4 * v184) = v132;
                      v129 = (v129 + 1) & 3;
                    }

                    while (v129 != 2);
                    v128 = v309[3].i32[1];
LABEL_273:
                    v185 = v309[6].i32[1];
                    v309[3].i32[1] = v128 + 1;
                    *(*&v130 + 4 * v128) = v185;
                    v186 = v309[5].i32[1];
                    v187 = v309[3].i32[1];
                    v309[3].i32[1] = v187 + 1;
                    *(*&v130 + 4 * v187) = v186;
                  }

LABEL_274:
                  v140 = v309[3].i32[1] + v127;
                  goto LABEL_275;
                }

LABEL_361:
                LODWORD(v120) = 0;
                v119 = v300;
                *v300 = 7;
                goto LABEL_362;
              }

              LODWORD(v120) = 0;
              v119 = v300;
              *v300 = 7;
            }

            v122 = v297;
            v183 = v292;
            goto LABEL_363;
          }
        }

        if (SLODWORD(v312[0]) >= 1)
        {
          v44 = 0;
          do
          {
            if (*(&v312[8] + v44 + 2) == v36)
            {
              DWORD1(v312[0]) = v44;
              goto LABEL_74;
            }

            ++v44;
          }

          while (LODWORD(v312[0]) != v44);
          if (LODWORD(v312[0]) == 32)
          {
            goto LABEL_75;
          }
        }

        DWORD1(v312[0]) = v312[0];
        *(v312 + SLODWORD(v312[0]) + 2) = v30;
        *(&v312[8] + SLODWORD(v312[0]) + 2) = v36;
        v45 = SLODWORD(v312[0]);
        ++LODWORD(v312[0]);
        goto LABEL_90;
      }
    }

    v22 = v20 >> 4;
    if (v20 >> 4 < v14)
    {
      v23 = v14 - v22;
      v24 = (*v0 + 4 * v22);
      v25 = &v0[8] + v22;
      do
      {
        *v25++ = 0;
        *v24++ = v15;
        --v23;
      }

      while (v23);
    }

    v21 = v11;
    goto LABEL_43;
  }

  v4 = 0;
LABEL_206:
  v125 = *MEMORY[0x1E69E9840];
  return v4;
}