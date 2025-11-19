uint64_t svgets(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = 496;
  do
  {
    fread((v2 + v3), 1uLL, 1uLL, *(v2 + 480));
    v2 = *(a1 + 200);
  }

  while (*(v2 + v3++));
  return v2 + 496;
}

size_t svputl(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2);
  OUTLINED_FUNCTION_11_46(a1);
  return fwrite(&__ptr, 1uLL, 4uLL, v2);
}

size_t svputi(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2) >> 16;
  OUTLINED_FUNCTION_11_46(a1);
  return fwrite(&__ptr, 1uLL, 2uLL, v2);
}

size_t svputs(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*(a1 + 200) + 480);

  return fwrite(__s, 1uLL, v4 + 1, v5);
}

uint64_t svputlptrs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  v3 = *(v2 + 8112);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v2 + 8104);
      if (v5)
      {
        v7 = result;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (v9 < *(v5 + 58))
        {
          v11 = *(v5 + 16);
          if (*(v11 + v8 + 16) == -6 && (*(v11 + v8 + 18) & 0x80000000) == 0 && **(*(v4 + 16) + 8 * v9) == a2)
          {
            if (!v10)
            {
              v12 = OUTLINED_FUNCTION_6_52();
              svputc(v12);
              v11 = *(*(*(v7 + 192) + 8104) + 16);
            }

            result = svputs(v7, *(v11 + v8));
            v5 = *(*(v7 + 192) + 8104);
            v10 = 1;
          }

          ++v9;
          v8 += 24;
        }

        if (v10)
        {

          return svputs(v7, &unk_26E7817DA);
        }
      }
    }
  }

  return result;
}

uint64_t vsv2delta(uint64_t a1, char *__filename)
{
  v40 = *MEMORY[0x277D85DE8];
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "wb");
  *(*(a1 + 200) + 480) = result;
  if (result)
  {
    svputs(a1, &unk_26E7817DA);
    v4 = OUTLINED_FUNCTION_16_38();
    svputi(v4, v5);
    svputi(a1, 1u);
    v6 = OUTLINED_FUNCTION_16_38();
    svputi(v6, v7);
    svputi(a1, *(*(a1 + 192) + 8868));
    for (i = 0; ; ++i)
    {
      OUTLINED_FUNCTION_18_36();
      if (v10)
      {
        break;
      }

      v11 = &vstmtbl[12 * i];
      svputs(a1, *v11);
      svputi(a1, *(v11 + 16));
      v12 = *(*(*(a1 + 192) + 9072) + i);
      svputc(a1);
      v13 = 0;
      for (j = 0; j < *(v11 + 16); ++j)
      {
        v15 = &v11[1][v13];
        svputs(a1, *v15);
        svputi(a1, *(v15 + 15));
        svputi(a1, *(v15 + 14));
        svputi(a1, v15[32]);
        v13 += 40;
      }
    }

    for (k = -2; k < v9; k = v17)
    {
      v17 = k + 1;
      if (k != -1)
      {
        svputc(a1);
        v18 = OUTLINED_FUNCTION_17_37();
        svputi(v18, v19);
        if (k == -2)
        {
          v20 = 0;
        }

        else
        {
          v20 = &vstmtbl[12 * k];
        }

        v21 = **(a1 + 200);
        if (k == -2)
        {
          v22 = -99;
        }

        else
        {
          v22 = -2;
        }

        for (; v21; v21 = (*v29 & 0xFFFFFFFFFFFFFFFCLL))
        {
          if ((*v21 & 2) != 0)
          {
            v30 = *(a1 + 200);
            if (v21 != *v30 && v21 != v30[1])
            {
              svputc(a1);
              v31 = absoluteSyncNum(a1, v21);
              svputi(a1, v31);
              v32 = *(a1 + 192);
              LODWORD(v33) = v22;
              if (!*(v32 + 8868))
              {
                v33 = -2;
                v34 = 1;
                while (*(a1 + 288) != v33)
                {
                  if (v34 && k > v33 && (*&v21[8 * v33 + 8 * *(v32 + 9084)] & 1) != 0)
                  {
                    goto LABEL_40;
                  }

                  ++v33;
                  --v34;
                }

                LODWORD(v33) = -99;
              }

LABEL_40:
              svputc(a1);
              if (v33 == -99)
              {
                NONSEQ(v21);
                svputc(a1);
                ONESTM(v21);
                svputc(a1);
                ALLNSQ(v21);
                svputc(a1);
                svputlptrs(a1, v21);
              }
            }

            v29 = &v21[8 * k + 8 * *(*(a1 + 192) + 9084)];
          }

          else
          {
            svputc(a1);
            v23 = 0;
            v24 = 30;
            while (v23 < *(v20 + 16))
            {
              v25 = v20[1];
              v26 = (*&v20[2][8 * v23])(v21 + 16);
              switch(*&v25[v24])
              {
                case 0xFFFB:
                  __sprintf_chk(__s, 0, 0x32uLL, "%g", *v26);
                  svputs(a1, __s);
                  break;
                case 0xFFFC:
                  v28 = *v26;
                  goto LABEL_27;
                case 0xFFFD:
                  svputl(a1, *v26);
                  break;
                case 0xFFFE:
                  v28 = *v26;
LABEL_27:
                  svputi(a1, v28);
                  break;
                case 0xFFFF:
                  v27 = *v26;
                  svputu(a1);
                  break;
                default:
                  break;
              }

              ++v23;
              v24 += 40;
            }

            v29 = v21 + 8;
          }
        }

        v9 = *(a1 + 288);
        v17 = k + 1;
      }
    }

    OUTLINED_FUNCTION_22_30();
    svputlptrs(a1, v35);
    OUTLINED_FUNCTION_20_32();
    svputlptrs(a1, v36);
    svputc(a1);
    fclose(*(*(a1 + 200) + 480));
    v37 = OUTLINED_FUNCTION_16_38();
    result = vclrctxt(v37);
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void *findsync(uint64_t a1, int a2, char a3)
{
  v4 = (4 * a2);
  v5 = **(a1 + 200);
  for (i = a3; v5; v5 = VRSYNC(a1, v5, i))
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFFCLL) == v4)
    {
      break;
    }
  }

  return v5;
}

FILE *vrsdelta2(uint64_t a1, char *__filename)
{
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "rb");
  *(*(a1 + 200) + 480) = result;
  if (!result)
  {
    return result;
  }

  if (*svgets(a1) || svgeti(a1) || svgeti(a1) != 1 || svgeti(a1) || svgeti(a1) != *(*(a1 + 192) + 8868))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_16_38();
  vdltinit(v4, v5);
  *(*(a1 + 184) + 452) = 1;
  OUTLINED_FUNCTION_22_30();
  v7 = *v6;
  ***(a1 + 200) = (4 * absoluteSyncNum(a1, v6)) | (v7 & 3);
  OUTLINED_FUNCTION_20_32();
  v9 = *v8;
  **(*(a1 + 200) + 8) = (4 * absoluteSyncNum(a1, v8)) | (v9 & 3);
  v10 = *(a1 + 16);
  v11 = 1162;
  for (i = 9184; ; i += 24)
  {
    v13 = v11 - 1161;
    if (v11 - 1161 >= v10)
    {
      break;
    }

    v14 = *(a1 + 192);
    if (*(v14 + i) == -6 && v13 != *(a1 + 290) && v13 != *(a1 + 292))
    {
      **(v14 + 8 * v11) = 0;
    }

    ++v11;
  }

  for (j = 0; ; ++j)
  {
    OUTLINED_FUNCTION_18_36();
    if (v16)
    {
      break;
    }

    v17 = &vstmtbl[12 * j];
    svgets(a1);
    v18 = *(v17 + 16);
    if (v18 != svgeti(a1))
    {
      return 0;
    }

    *(*(*(a1 + 192) + 9072) + j) = svgetc(a1);
    v19 = OUTLINED_FUNCTION_6_52();
    setnonseqIndex(v19, v20);
    if (*(*(*(a1 + 192) + 9072) + j) > 1u)
    {
      return 0;
    }

    v21 = 0;
    v22 = -1;
    while (++v22 < *(v17 + 16))
    {
      v23 = v17[1];
      svgets(a1);
      v24 = *&v23[v21 + 30];
      if (svgeti(a1) != v24)
      {
        return 0;
      }

      v25 = *&v23[v21 + 28];
      if (svgeti(a1) != v25)
      {
        return 0;
      }

      v26 = v23[v21 + 32];
      v27 = svgeti(a1);
      result = 0;
      v21 += 40;
      if (v27 != v26)
      {
        return result;
      }
    }
  }

  if (svgetc(a1) != 125)
  {
    return 0;
  }

  v28 = 0;
  for (k = -2; ; k = v32)
  {
    OUTLINED_FUNCTION_18_36();
    if (v30 == v31)
    {
      fclose(*(*(a1 + 200) + 480));
      if (v28)
      {
        v62 = 0;
        do
        {
          if (v62 >= *(a1 + 288))
          {
            break;
          }

          for (m = **(a1 + 200); m; m = (*v64 & 0xFFFFFFFFFFFFFFFCLL))
          {
            if ((*m & 2) != 0)
            {
              *m &= 3uLL;
              v64 = &m[*(*(a1 + 192) + 9084) + v62];
            }

            else
            {
              v64 = m + 1;
            }
          }

          ++v62;
        }

        while (!checkInterrupt(a1));
        *(*(a1 + 192) + 9080) = 0;
        return 1;
      }

      return 0;
    }

    v32 = k + 1;
    if (k != -1)
    {
      break;
    }

LABEL_86:
    ;
  }

  if (v28)
  {
    return 0;
  }

  v67 = svgeti(a1);
  if (v67 != k)
  {
    return 0;
  }

  v28 = 0;
  v33 = &vstmtbl[12 * k];
  v34 = **(a1 + 200);
  v65 = k + 3;
  v35 = 1;
  while (2)
  {
    if ((v35 & 1) == 0)
    {
      v32 = k + 1;
      goto LABEL_86;
    }

    v35 = 1;
    switch(svgetc(a1))
    {
      case 't':
        OUTLINED_FUNCTION_20_32();
        goto LABEL_57;
      case 'u':
        OUTLINED_FUNCTION_22_30();
LABEL_57:
        v38 = a1;
        goto LABEL_58;
      case 'v':
        v38 = a1;
        v36 = v34;
LABEL_58:
        svgetptrs(v38, v36, 0);
        continue;
      case 'w':
        OUTLINED_FUNCTION_20_32();
        goto LABEL_40;
      case 'x':
        OUTLINED_FUNCTION_22_30();
LABEL_40:
        v39 = a1;
        goto LABEL_61;
      case 'y':
        v35 = 0;
        v28 = 1;
        continue;
      case 'z':
        v39 = a1;
        v37 = v34;
LABEL_61:
        svgetptrs(v39, v37, 1);
        continue;
      case '{':
        v66 = v28;
        v40 = 0;
        v41 = 30;
LABEL_42:
        if (v40 >= *(v33 + 16))
        {
          v35 = 1;
          v28 = v66;
          continue;
        }

        v71 = 0;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        switch(*&v33[1][v41])
        {
          case 0xFFFB:
            v43 = svgets(a1);
            v42 = &v68;
            sscanf(v43, "%lg", &v68);
            break;
          case 0xFFFC:
            v69 = svgeti(a1);
            v42 = &v69;
            break;
          case 0xFFFD:
          case 0xFFFE:
            v70 = svgetl(a1);
            v42 = &v70;
            break;
          case 0xFFFF:
            v71 = svgetu(a1);
            v42 = &v71;
            break;
          default:
            v42 = 0;
            break;
        }

        if (v40)
        {
          (*&v33[3][8 * v40])(16, v42);
          v44 = v34;
LABEL_55:
          ++v40;
          v41 += 40;
          v34 = v44;
          goto LABEL_42;
        }

        v45 = *(v33[1] + 15);
        result = alloc_tok(a1, v33);
        if (result)
        {
          v44 = result;
          OUTLINED_FUNCTION_9_50();
          *(v34 + 8 * v46) = *(v34 + 8 * v46) & 3 | v47;
          OUTLINED_FUNCTION_23_28();
          *(v48 + 8 * k + 24) = *(v48 + 8 * k + 24) & 3 | v49;
          OUTLINED_FUNCTION_23_28();
          *v50 = v34;
          v50[1] = v51;
          if (v45 < 0)
          {
            vinitflds(a1, v67, &v44->_flags, v42);
          }

          else
          {
            memcpy(&v44->_flags, v42, *(v33 + 17));
          }

          goto LABEL_55;
        }

        return result;
      case '|':
        v52 = svgeti(a1);
        v53 = svgetc(a1);
        v54 = (4 * v52);
        if (v53 != -99)
        {
          v56 = v53;
          v57 = *(a1 + 200);
          v55 = *v57;
          while (v55 != v57[1])
          {
            if ((*v55 & 0xFFFFFFFFFFFFFFFCLL) == v54)
            {
              goto LABEL_78;
            }

            v55 = VRSYNC(a1, v55, v56);
            v57 = *(a1 + 200);
          }

          return 0;
        }

        result = alloc_sync(a1);
        if (!result)
        {
          return result;
        }

        v55 = result;
        result->_p = (result->_p & 3 | v54);
        if (svgetc(a1))
        {
          SETNONSEQ(v55);
        }

        else
        {
          CLRNONSEQ(v55);
        }

        if (svgetc(a1))
        {
          SETONESTM(v55);
        }

        else
        {
          CLRONESTM(v55);
        }

        if (svgetc(a1))
        {
          SETALLNSQ(v55);
        }

        else
        {
          CLRALLNSQ(v55);
        }

LABEL_78:
        if (k != -2)
        {
          OUTLINED_FUNCTION_9_50();
          *(v55 + 8 * v58) |= 1uLL;
        }

        OUTLINED_FUNCTION_23_28();
        *(v59 + 8 * v65) = *(v59 + 8 * v65) & 3 | v55;
        v60 = k + *(*(a1 + 192) + 9084);
        *(v55 + 8 * v60) = *(v55 + 8 * v60) & 3 | *(*(a1 + 200) + 8);
        *(v55 + 8 * v65) = *(v55 + 8 * v65) & 3 | v34;
        if (v34 && (*v34 & 2) != 0)
        {
          OUTLINED_FUNCTION_9_50();
          *(v34 + 8 * v61) = *(v34 + 8 * v61) & 3 | v55;
        }

        else
        {
          *(v34 + 8) = v55;
        }

        v35 = 1;
        v34 = v55;
        continue;
      case '}':
        v35 = 0;
        continue;
      default:
        continue;
    }
  }
}

_BYTE *svgetptrs(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    result = svgets(a1);
    if (!*result)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_15_42();
    if (a3)
    {
      if (!getgptr(v6, v7, v8))
      {
        v9 = OUTLINED_FUNCTION_15_42();
        getlptr(v9, v10, v11);
      }
    }

    else if (!getlptr(v6, v7, v8))
    {
      v12 = OUTLINED_FUNCTION_15_42();
      getgptr(v12, v13, v14);
    }
  }

  return result;
}

uint64_t prstuff(uint64_t result, int a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v6 = a3;
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = &vstmtbl[12 * a2];
    v12 = a3;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    if (!v10)
    {
      v13 = OUTLINED_FUNCTION_6_52();
      LODWORD(result) = prinsert(v13);
    }

    v14 = *(v11[1] + 15);
    disptok(result, v12 + 16, a2, 0, (*(v8 + 200) + 408));
    OUTLINED_FUNCTION_4_53();
    if (v17 > 2)
    {
      vf_puts(v8, v15, "'", 1);
      v20 = OUTLINED_FUNCTION_0_71();
      vf_puts(v20, v21, v22, v23);
      OUTLINED_FUNCTION_4_53();
      v19 = v8;
      v18 = "'";
    }

    else
    {
      v18 = (v16 + 408);
      v19 = v8;
    }

    vf_puts(v19, v15, v18, 1);
    OUTLINED_FUNCTION_4_53();
    v10 = 1;
    result = vf_puts(v8, v24, " ", 1);
    v9 = 0;
    v25 = v12 + 8;
    while (1)
    {
      v12 = (*v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v12)
      {
        goto LABEL_4;
      }

LABEL_3:
      if ((*v12 & 2) == 0)
      {
        goto LABEL_4;
      }

      if (v9)
      {
        if (v10)
        {
          v26 = OUTLINED_FUNCTION_6_52();
          prrange(v26);
        }

        v27 = OUTLINED_FUNCTION_6_52();
        result = prinsert(v27);
        v10 = 0;
      }

      v28 = a5;
      v30 = a5 >= 0 && v12 == a4;
      v31 = v6;
      if (v12 != v6 && !v30)
      {
        v32 = 9184;
        for (i = 1162; i - 1161 < *(v8 + 16); ++i)
        {
          v34 = *(v8 + 192);
          v35 = v34 + v32;
          if (*(v34 + v32) == -6 && **(v34 + 8 * i) == v12)
          {
            v36 = *(v8 + 200);
            if (v12 != *v36 && v12 != v36[1])
            {
              v63 = *(v35 - 16);
              v37 = OUTLINED_FUNCTION_13_45();
              __sprintf_chk(v37, v38, v39, "!%s ", v63);
              v40 = OUTLINED_FUNCTION_0_71();
              result = vf_puts(v40, v41, v42, v43);
            }
          }

          v32 += 24;
        }
      }

      if (v9)
      {
        v44 = OUTLINED_FUNCTION_6_52();
        result = prrange(v44);
      }

      if (v12 == a4)
      {
        break;
      }

      v25 = &v12[8 * *(*(v8 + 192) + 9084) + 8 * a2];
      v9 = 1;
      a5 = v28;
      v6 = v31;
    }

    if (v10)
    {
      v45 = OUTLINED_FUNCTION_6_52();
      result = prrange(v45);
    }

    if ((v28 & 0x80000000) == 0)
    {
      v46 = &vstmtbl[12 * v28];
      v64 = *v46;
      v47 = OUTLINED_FUNCTION_2_62(*(v8 + 200));
      __sprintf_chk(v47, v48, v49, v50, v64);
      v51 = OUTLINED_FUNCTION_0_71();
      result = vf_puts(v51, v52, v53, v54);
      if (!v10)
      {
        v65 = vstmtbl[12 * a2];
        v66 = *v46;
        v55 = OUTLINED_FUNCTION_2_62(*(v8 + 200));
        __sprintf_chk(v55, v56, v57, v58, v65, v66);
        v59 = OUTLINED_FUNCTION_0_71();

        return vf_puts(v59, v60, v61, v62);
      }
    }
  }

  return result;
}

uint64_t prrange(uint64_t a1)
{
  OUTLINED_FUNCTION_19_34(a1);
  v12 = *(vstmtbl + v1);
  v3 = OUTLINED_FUNCTION_2_62(v2);
  __sprintf_chk(v3, v4, v5, v6, v12, v12);
  v7 = OUTLINED_FUNCTION_0_71();

  return vf_puts(v7, v8, v9, v10);
}

uint64_t prinsert(uint64_t a1)
{
  OUTLINED_FUNCTION_19_34(a1);
  v12 = *(vstmtbl + v1);
  v3 = OUTLINED_FUNCTION_2_62(v2);
  __sprintf_chk(v3, v4, v5, v6, "%", v12);
  v7 = OUTLINED_FUNCTION_0_71();

  return vf_puts(v7, v8, v9, v10);
}

uint64_t getgptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v6 = *(a1 + 16);
  v7 = 1162;
  for (i = 9184; ; i += 24)
  {
    if (v7 - 1161 >= v6)
    {
      return 0;
    }

    v9 = *(a1 + 192);
    if (*(v9 + i) == -6 && !strcmp(*(v9 + i - 16), __s2))
    {
      break;
    }

    ++v7;
  }

  **(v9 + 8 * v7) = a2;
  return 1;
}

uint64_t getlptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 192);
  v8 = *(*(v7 + 8112) + 8);
  v9 = *(v7 + 8104);
  v10 = 8 * (*(v9 + 58) & ~(*(v9 + 58) >> 31));
  while (1)
  {
    if (v10 == v6)
    {
      return 0;
    }

    v11 = *(v9 + 16);
    if (*(v11 + v5 + 16) == -6 && !strcmp(*(v11 + v5), __s2))
    {
      break;
    }

    v6 += 8;
    v5 += 24;
  }

  **(*(v8 + 16) + v6) = a2;
  return 1;
}

uint64_t OUTLINED_FUNCTION_3_57()
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 8) + 40 * v2 + 8);
  v5 = *(v3 + 8 * v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return rdtokverr(v6, v7, v8, va);
}

const char **OUTLINED_FUNCTION_26_27(uint64_t a1, int a2, char *a3)
{

  return logicalFileFindPhysical(a1, a2, a3, 1, 1);
}

uint64_t vdur_ass(uint64_t *a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v24 = a5;
  v23 = 0;
  if (vrange_2pt(a1, a2, a3, a4, 0))
  {
    return 1;
  }

  v11 = vdur(a1, a2, a3, a4);
  v12.n128_u64[0] = 0;
  v13 = 0.0;
  if (v11)
  {
    v13 = a5 / v11;
  }

  v14 = &vstmtbl[12 * a4];
  v15 = -0.5;
  if (v13 >= 0.0)
  {
    v15 = 0.5;
  }

  if ((*(v14[1] + 15) & 0xFFFE) == 0xFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  for (i = *a2; i != *a3; i = (*v21 & 0xFFFFFFFFFFFFFFFCLL))
  {
    if (i && (*i & 2) != 0)
    {
      OUTLINED_FUNCTION_1_66();
      v21 = &i[8 * v22 + 8 * a4];
    }

    else
    {
      v18 = *(v14[1] + 15);
      v19 = (*v14[2])(i + 16, v12);
      if (v18 == -3)
      {
        v24 = (v16 + *v19 * v13);
        v20 = &v24;
      }

      else
      {
        v24 = (v16 + *v19 * v13);
        v23 = v24;
        v20 = &v23;
      }

      vinitflds(a1, a4, i + 16, v20);
      v21 = i + 8;
    }
  }

  return 0;
}

uint64_t vrange_2pt(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4, int a5)
{
  if (a5)
  {
    v10 = *a2;
    OUTLINED_FUNCTION_3_58();
    if ((*&v12[8 * v13 + 8 * *(a2 + 8)] & 1) == 0 || a2[2])
    {
      v11 = vnormalize(a1, a2);
      if (v11 == 2)
      {
        *a2 = vsplit_time(a1, *(a2 + 8), *a2, a2[2]);
        v20 = *(a2 + 8);
        OUTLINED_FUNCTION_3_58();
        v25 = *(v21 + 8 * (v24 + v22));
        goto LABEL_22;
      }

      if (v11 == 4)
      {
LABEL_13:
        v14 = *a2;
        v15 = a1[25];
        if (a5 == 205)
        {
          v16 = v15[1];
          if (v14 != v16)
          {
LABEL_20:
            if (v14 != v16)
            {
              v26 = *(a2 + 8);
              OUTLINED_FUNCTION_3_58();
              v25 = *(v23 + 8 * (v27 + v22));
LABEL_22:
              v28 = OUTLINED_FUNCTION_20_33(v21, v22, v23, v25 & 0xFFFFFFFFFFFFFFFCLL);
              *a3 = v28;
              if (!v28)
              {
                return 1;
              }

              goto LABEL_26;
            }

            return 1;
          }
        }

        else if (a5 != 206)
        {
          v16 = v15[1];
          goto LABEL_20;
        }

        if (v14 == *v15)
        {
          return 1;
        }

        *a3 = v14;
        v29 = OUTLINED_FUNCTION_20_33(v11, *(a2 + 8), *(*a2 + 8 * *(a2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL, *a2);
        *a2 = v29;
        if (!v29)
        {
          return 1;
        }

LABEL_26:
        v19 = 1;
        *(a2 + 24) = 1;
        *(a3 + 24) = 1;
        goto LABEL_27;
      }

      if (v11 != 3)
      {
        return 1;
      }

      v12 = *a2;
    }

    *a3 = v12;
    if ((a5 - 205) <= 1)
    {
      v11 = lmost(*(a2 + 8), *a2);
      *a2 = v11;
      v12 = *a3;
    }

    if ((a5 & 0xFFFFFFFD) == 0xCD)
    {
      v11 = rmost(a1, *(a2 + 8), v12);
      v12 = v11;
      *a3 = v11;
    }

    if (*a2 != v12)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v17 = *(a2 + 1);
  v32[0] = *a2;
  v32[1] = v17;
  v18 = *(a3 + 16);
  v31[0] = *a3;
  v31[1] = v18;
  vcomp_pta(a1, v32, v31);
  if (!*(a1[24] + 8120))
  {
    return 1;
  }

  vtmark_tv(a1, a2);
  v19 = 1;
  vtmark_tv(a1, a3);
LABEL_27:
  if (vdef_proj(a1, *a2, a4) && vdef_proj(a1, *a3, a4))
  {
    return 0;
  }

  return v19;
}

uint64_t gcql(uint64_t a1, uint64_t a2, int a3, int a4)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_66();
    if (*(v6 + 8 * (v7 + a3)))
    {
      break;
    }

    VLSYNC(v6, a4);
  }

  return v6;
}

uint64_t gcqr(uint64_t a1, uint64_t a2, int a3, int a4)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_66();
    if (*(v7 + 8 * (v8 + a3)))
    {
      break;
    }

    VRSYNC(a1, v7, a4);
  }

  return v7;
}

uint64_t dur2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  if (v7 == *a3)
  {
    return *(a3 + 16) - *(a2 + 16);
  }

  if (a5)
  {
    v11 = v7;
  }

  else
  {
    v13 = visleft(a1, v7, *a3);
    if (v13)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    if (v13)
    {
      v15 = a3;
    }

    else
    {
      v15 = a2;
    }

    v8 = *v15;
    v11 = *v14;
    v7 = *a2;
  }

  v16 = *(*(a1 + 192) + 9084) + a4;
  if ((*(v7 + 8 * v16) & 1) == 0)
  {
    if (!ctxt_clstr(a1, v7, a4))
    {
      return -2147483647;
    }

    v16 = *(*(a1 + 192) + 9084) + a4;
  }

  if ((*(*a3 + 8 * v16) & 1) == 0 && !ctxt_clstr(a1, *a3, a4))
  {
    return -2147483647;
  }

  v17 = 0;
  v18 = 0;
  v19 = &vstmtbl[12 * a4];
  while (v11 != v8 && v11)
  {
    if ((*v11 & 2) != 0)
    {
      v21 = &v11[8 * *(*(a1 + 192) + 9084) + 8 * a4];
    }

    else
    {
      v20 = *(v19[1] + 15);
      if (v20 == 65532)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      else if (v20 == 65533)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      v21 = v11 + 8;
      v18 = 1;
    }

    v11 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v22 = *(a2 + 24);
  if (v8 == *a2)
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 += *(a2 + 16);
    }

    if ((*(a3 + 24) & 2) != 0)
    {
      v17 -= *(a3 + 16);
    }

    v17 = -v17;
  }

  else
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 -= *(a2 + 16);
    }

    if ((*(a3 + 24) & 2) != 0)
    {
      v17 += *(a3 + 16);
    }
  }

  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 == 0;
  }

  if (v23)
  {
    return -2147483647;
  }

  else
  {
    return v17;
  }
}

uint64_t val_expr2(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7)
{
  v9 = a2;
  *a7 = 0;
  v11 = *(a2 + 8);
  if (!a5)
  {
    if (BYTE4(vstmtbl[12 * a3 + 11]))
    {
      a5 = vstmtbl[12 * *(a2 + 8) + 11];
    }

    else
    {
      a5 = 0;
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v103 = a5;
  if (a6 == 9)
  {
    v12 = -2147483647;
    switch(vnormalize(a1, a2))
    {
      case 2u:
        v13 = *v9;
        if ((v9[2] & 0x8000000000000000) != 0)
        {
          v15 = *(*(v13 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          OUTLINED_FUNCTION_1_66();
          v15 = v13;
          v13 = *((*(v13 + 8 * (v14 + v11)) & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0xFFFFFFFFFFFFFFFCLL;
        }

        *&v108 = v15;
        *&v106 = v13;
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v35, v36, v37, v38);
        goto LABEL_14;
      case 3u:
        v19 = rmost(a1, v11, *v9);
        firstdefd(a1, v11, v19, a3, 0);
        v20 = lmost(v11, *v9);
        v104 = 1;
        firstdefd(a1, v11, v20, a3, 1);
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v21, v22, v23, v24);
        OUTLINED_FUNCTION_10_50();
        v18 = gcqr(v25, v26, v27, v28);
        goto LABEL_15;
      case 4u:
        v29 = *v9;
        OUTLINED_FUNCTION_10_50();
        v17 = gcql(v30, v31, v32, v33);
        v34 = *v9;
LABEL_14:
        OUTLINED_FUNCTION_10_50();
        v18 = gcqr(v39, v40, v41, v42);
        v104 = 1;
        goto LABEL_15;
      default:
        return v12;
    }
  }

  v104 = 0;
  v16 = *(a1 + 200);
  v17 = *(*(v16 + 616) + 8 * a3);
  v18 = *(*(v16 + 624) + 8 * a3);
LABEL_15:
  v43 = 0;
  v105 = a3;
  v44 = v17;
  v12 = -2147483647;
  while (v44 != v18)
  {
    if (v44 && (*v44 & 2) != 0)
    {
      v45 = v11;
      v46 = v9;
      v47 = *&v44[8 * *(*(a1 + 192) + 9084) + 8 * a3] & 0xFFFFFFFFFFFFFFFCLL;
      v48 = *&vstmtbl[12 * a3 + 1][40 * a4 + 30];
      if (v48 == 65532)
      {
        OUTLINED_FUNCTION_2_63();
        v51 = v50(v47 + 16);
        if (*v51 == -32767)
        {
          v43 = -2147483647;
        }

        else
        {
          v43 = *v51;
        }
      }

      else if (v48 == 65533)
      {
        OUTLINED_FUNCTION_2_63();
        v43 = *v49(v47 + 16);
      }

      v52 = v43;
      if (v12 != -2147483647)
      {
        v52 = v12;
        if (v12 != v43)
        {
          return -2147483647;
        }
      }

      v44 = (*(v47 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = v52;
      v9 = v46;
      v11 = v45;
    }
  }

  if (v12 == -2147483647)
  {
    *&v109 = 0;
    BYTE8(v109) = 1;
    *&v107 = 0;
    BYTE8(v107) = 1;
    if (!v17)
    {
LABEL_32:
      v53 = -2147483647;
      goto LABEL_43;
    }

    while ((*v17 & 2) != 0)
    {
      v17 = *(v17 + 8 * (a3 + 3)) & 0xFFFFFFFFFFFFFFFCLL;
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v54 = *(v17 + 8);
    OUTLINED_FUNCTION_1_66();
    if ((*(v55 + 8 * (v56 + v11)) & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_11_47();
      v55 = vgetsc(v57, 0, 1, v58, v59);
    }

    *&v108 = v55;
    OUTLINED_FUNCTION_15_43();
    v53 = -2147483647;
    if (v60 == 65532)
    {
      OUTLINED_FUNCTION_2_63();
      v63 = v62(v17 + 16);
      v53 = -2147483647;
      OUTLINED_FUNCTION_5_54(v63);
      if (!v89)
      {
        v53 = v64;
      }
    }

    else if (v60 == 65533)
    {
      OUTLINED_FUNCTION_2_63();
      v53 = *v61(v17 + 16);
    }

    while (1)
    {
LABEL_43:
      if (!v18)
      {
        if (!v17)
        {
          return -32767;
        }

        v66 = *(*(a1 + 200) + 640);
        v67 = OUTLINED_FUNCTION_17_38();
        v72 = durcalc(v67, v68, v69, v70, v71, v104);
        if (!v72)
        {
          return v53;
        }

        v12 = -2147483647;
        if (v72 == -2147483647)
        {
          return v53;
        }

        return v12;
      }

      if ((*v18 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_1_66();
      v18 = (v18[v65 + a3] & 0xFFFFFFFFFFFFFFFCLL);
    }

    OUTLINED_FUNCTION_1_66();
    if ((*(v73 + 8 * (v74 + v11)) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_47();
      OUTLINED_FUNCTION_16_39();
      v73 = vgetsc(v75, v76, v77, v78, v79);
    }

    *&v106 = v73;
    OUTLINED_FUNCTION_15_43();
    if (v80 == 65532)
    {
      OUTLINED_FUNCTION_2_63();
      v84 = v83(v18 + 2);
      OUTLINED_FUNCTION_5_54(v84);
      if (v89)
      {
        v81 = -2147483647;
      }

      else
      {
        v81 = v85;
      }
    }

    else if (v80 == 65533)
    {
      OUTLINED_FUNCTION_2_63();
      v81 = *v82(v18 + 2);
    }

    v86 = v81;
    v87 = *(a1 + 200);
    if (v17)
    {
      v88 = durcalc(a1, &v108, &v106, v11, (*(v87 + 632) + 24 * v105), v104);
      v89 = v88 == -2147483647 || v88 == 0;
      if (!v89)
      {
        v92 = v88;
        *a7 = 1;
        v93 = *(*(a1 + 200) + 640);
        v94 = OUTLINED_FUNCTION_17_38();
        v99 = durcalc(v94, v95, v96, v97, v98, v104);
        if (v99 == -2147483647)
        {
          v100 = 0;
        }

        else
        {
          v100 = v99;
        }

        return (v53 + (v86 - v53) * (v100 / v92));
      }

      if (v103 == -1)
      {
        return v53;
      }

      if (v103 != 1)
      {
        if (v103)
        {
          return -2147483647;
        }

        return vcvtd_n_f64_s64(v86 + v53, 1uLL);
      }
    }

    else
    {
      v91 = durcalc(a1, v9, &v106, v11, (*(v87 + 648) + 24 * v105), v104);
      if (v91)
      {
        v12 = -2147483647;
        if (v91 != -2147483647)
        {
          return v12;
        }
      }
    }

    return v86;
  }

  return v12;
}

uint64_t vnormalize(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = &vstmtbl[12 * v5];
  v41 = *v6[2];
  v7 = *(a2 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v16 = 0;
    v17 = 65532;
    v18 = *(a2 + 16);
    v19 = &v4[v5 + 3];
LABEL_17:
    v11 = v18;
    v20 = v19;
    while (v4 != **(a1 + 200))
    {
      v19 = (*v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v19 || (*v19 & 2) == 0)
      {
        v21 = *(v6[1] + 15);
        if (v21 == v17)
        {
          v23 = v41(v19 + 16);
          OUTLINED_FUNCTION_5_54(v23);
          if (v24)
          {
            v16 = -2147483647;
          }
        }

        else if (v21 == 65533)
        {
          v22 = v41(v19 + 16);
          v17 = 65532;
          v16 = *v22;
        }

        v18 = v16 + v11;
        if (v16 != -2147483647 && v18 < 1)
        {
          goto LABEL_17;
        }

        break;
      }

      v20 = &v19[8 * v5 + 24];
      v4 = v19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_53();
    v10 = &v4[v9];
    v11 = v7;
LABEL_3:
    v12 = *(*(a1 + 200) + 8);
    while (v4 != v12)
    {
      v13 = (*v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v13 || (*v13 & 2) == 0)
      {
        v15 = *(v6[1] + 15);
        if (v15 == 65532)
        {
          v8 = *v41(v13 + 16);
          if (v8 == -32767)
          {
            break;
          }
        }

        else
        {
          if (v15 == 65533)
          {
            v8 = *v41(v13 + 16);
          }

          if (v8 == -2147483647)
          {
            break;
          }
        }

        if (v11 - v8 < 0)
        {
          break;
        }

        v10 = v13 + 8;
        v11 -= v8;
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_53();
      v10 = &v13[8 * v14];
      v4 = v13;
    }
  }

  v26 = *(a2 + 24);
  if ((v26 & 4) != 0)
  {
    if (v11 < 0)
    {
      if ((v4[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v32 = *(v4[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
        if ((v32 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v32 = MEMORY[0];
      }

      v4 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    }

    else if (!v11)
    {
      v4 = lmost(v5, v4);
      v27 = *(a2 + 24);
LABEL_51:
      v34 = v27 ^ 4;
      goto LABEL_52;
    }

LABEL_50:
    v27 = *(a2 + 24);
    goto LABEL_51;
  }

  if ((v26 & 8) == 0)
  {
    v28 = v7 >> 63;
    v29 = 1;
    goto LABEL_53;
  }

  if (v11 >= 1)
  {
    OUTLINED_FUNCTION_3_58();
    v31 = v4[v30 + v5] & 0xFFFFFFFFFFFFFFFCLL;
    if (!v31 || (*v31 & 2) == 0)
    {
      v4 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    }

    goto LABEL_46;
  }

  if (v11 < 0)
  {
LABEL_46:
    v33 = v26;
    goto LABEL_47;
  }

  v4 = rmost(a1, v5, v4);
  v33 = *(a2 + 24);
LABEL_47:
  v34 = v33 ^ 8;
LABEL_52:
  v11 = 0;
  v29 = 0;
  LODWORD(v28) = (v26 >> 2) & 1;
  *(a2 + 24) = v34;
LABEL_53:
  *a2 = v4;
  *(a2 + 16) = v11;
  v35 = *(a1 + 200);
  if (v4 == *v35 && v11 < 0)
  {
    return 1;
  }

  if (v4 == v35[1] && v11 > 0)
  {
    return 1;
  }

  if (v11)
  {
    return 2;
  }

  if (!v29)
  {
    return 4;
  }

  if (v28)
  {
    v38 = *(*(a1 + 192) + 9084) + v5;
  }

  else
  {
    v38 = v5 + 3;
  }

  v39 = (v4[v38] & 0xFFFFFFFFFFFFFFFCLL);
  v40 = *(v6[1] + 15);
  if (v40 == 65532)
  {
    if (v39 && ((*v39 & 2) != 0 || !*v41(v39 + 16)))
    {
      return 3;
    }

    return 4;
  }

  if (v40 != 65533 || !v39 || (*v39 & 2) == 0 && *v41(v39 + 16))
  {
    return 4;
  }

  return 3;
}

_BYTE *firstdefd(uint64_t a1, int a2, _BYTE *a3, int a4, int a5)
{
  v7 = a3;
  v10 = 0;
  v11 = &vstmtbl[12 * a2];
  v21 = *v11[2];
  v12 = *(v11 + 86);
  v13 = 8 * (a5 != 0);
  if (a3)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_3:
    v14 = *(v11[1] + 15);
    if (v14 == 65532)
    {
      v10 = 0;
      if (v7 && v12)
      {
        v15 = *v21(v7 + 16) == 0;
LABEL_15:
        v10 = v15;
      }
    }

    else if (v14 == 65533)
    {
      v10 = 0;
      if (v7)
      {
        if (v12)
        {
          v15 = *v21(v7 + 16) == 0;
          goto LABEL_15;
        }
      }
    }

    if (!v10)
    {
      return a3;
    }

    v18 = &v7[v13];
    v10 = 1;
    while (1)
    {
      v7 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v7)
      {
        break;
      }

LABEL_2:
      if ((*v7 & 2) == 0)
      {
        goto LABEL_3;
      }

      v16 = *(*(a1 + 192) + 9084);
      if (*&v7[8 * v16 + 8 * a4])
      {
        return v7;
      }

      v17 = v16 + a2;
      if (!a5)
      {
        v17 = a2 + 3;
      }

      v18 = &v7[8 * v17];
    }
  }
}

_BYTE *rmost(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = a3;
  v4 = 0;
  v5 = &vstmtbl[12 * a2];
  v6 = *v5[2];
  v7 = *(v5 + 86);
  v8 = &a3[8 * *(*(a1 + 192) + 9084) + 8 * a2];
  while (1)
  {
    while (1)
    {
      v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v9 || (*v9 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_53();
      v8 = &v9[8 * v12];
      v3 = v9;
    }

    v10 = *(v5[1] + 15);
    if (v10 == 65532)
    {
      v4 = 0;
      if (v9 && v7)
      {
        v11 = *v6(v9 + 16) == 0;
LABEL_12:
        v4 = v11;
      }
    }

    else if (v10 == 65533)
    {
      v4 = 0;
      if (v9)
      {
        if (v7)
        {
          v11 = *v6(v9 + 16) == 0;
          goto LABEL_12;
        }
      }
    }

    if (!v4)
    {
      return v3;
    }

    v8 = v9 + 8;
    v4 = 1;
  }
}

void *lmost(int a1, void *a2)
{
  v3 = 0;
  v4 = &vstmtbl[12 * a1];
  v5 = *v4[2];
  v6 = *(v4 + 86);
  v7 = a1 + 3;
LABEL_2:
  v8 = &a2[v7];
  do
  {
    v8 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      a2 = v8;
      goto LABEL_2;
    }

    v9 = *(v4[1] + 15);
    if (v9 == 65532)
    {
      v3 = 0;
      if (v8 && v6)
      {
        v10 = *v5(v8 + 2) == 0;
LABEL_13:
        v3 = v10;
      }
    }

    else if (v9 == 65533)
    {
      v3 = 0;
      if (v8)
      {
        if (v6)
        {
          v10 = *v5(v8 + 2) == 0;
          goto LABEL_13;
        }
      }
    }

    v10 = v3 == 0;
    v3 = 1;
  }

  while (!v10);
  return a2;
}

uint64_t durcalc(uint64_t a1, void *a2, uint64_t *a3, int a4, void *a5, int a6)
{
  if (a6)
  {

    return dur2(a1, a2, a3, a4, 0);
  }

  else
  {
    v17[2] = 0;
    v16[2] = 0;
    v16[3] = 1;
    v17[3] = 1;
    v12 = a5[1];
    v17[0] = *a5;
    v17[1] = 0;
    v16[0] = v12;
    v16[1] = 0;
    v13 = a5[2];
    v14 = dur2(a1, v16, a3, a4, 1) + v13;
    result = v14 - dur2(a1, v17, a2, a4, 1);
    a5[2] = result - a3[2] + a2[2];
    v15 = *a3;
    *a5 = *a2;
    a5[1] = v15;
  }

  return result;
}

uint64_t vgen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v139 = *MEMORY[0x277D85DE8];
  v138[0] = 0;
  if ((~*(a4 + 24) & 7) != 0)
  {
LABEL_87:
    result = 0;
    goto LABEL_88;
  }

  v8 = a2;
  v10 = *(a4 + 8);
  *(a2 + 8) = *(a4 + 8);
  *(a2 + 24) = 2;
  *(a2 + 16) = 0;
  result = dynaBufNew(40);
  v137 = result;
  if (result)
  {
    v12 = *(a1 + 200);
    if (!*(v12 + 616))
    {
      *(*(a1 + 200) + 616) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
      *(*(a1 + 200) + 624) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
      v42 = OUTLINED_FUNCTION_7_52();
      *(*(a1 + 200) + 640) = malloc_type_malloc(v42, 0x1080040CC6EE3FDuLL);
      v43 = OUTLINED_FUNCTION_7_52();
      *(*(a1 + 200) + 632) = malloc_type_malloc(v43, 0x1080040CC6EE3FDuLL);
      v44 = OUTLINED_FUNCTION_7_52();
      v45 = malloc_type_malloc(v44, 0x1080040CC6EE3FDuLL);
      v12 = *(a1 + 200);
      *(v12 + 648) = v45;
      v46 = *(v12 + 616);
      if (!v46 || !*(v12 + 624) || !*(v12 + 640) || !v45)
      {
        free(v46);
        free(*(*(a1 + 200) + 624));
        free(*(*(a1 + 200) + 640));
        free(*(*(a1 + 200) + 632));
        v47 = *(*(a1 + 200) + 648);
LABEL_36:
        free(v47);
        goto LABEL_87;
      }
    }

    v13 = 0;
    v14 = *(a1 + 288);
    while (v14 > v13)
    {
      *(*(v12 + 624) + 8 * v13) = 0;
      *(*(*(a1 + 200) + 616) + 8 * v13) = 0;
      v12 = *(a1 + 200);
      v15 = vld1q_dup_f64(v12);
      v16 = *(v12 + 648) + 24 * v13;
      *v16 = v15;
      v17 = *(v12 + 632) + 24 * v13;
      *v17 = v15;
      v18 = *(v12 + 640) + 24 * v13;
      *v18 = v15;
      *(v16 + 16) = 0;
      *(v17 + 16) = 0;
      *(v18 + 16) = 0;
      ++v13;
    }

    v134 = a3;
    v130 = a5;
    v19 = dynaBufContents(*(a4 + 16));
    v20 = 0;
    v21 = 0;
    v23 = (v19 + 1);
    v22 = *v19;
    v136 = v8;
    v132 = v22;
    while (v22 > v21)
    {
      v24 = *v23;
      v25 = *v8;
      OUTLINED_FUNCTION_16_39();
      v30 = vgetsc(v26, v27, v28, v29, v24);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = (*&v30[8 * v24 + 24] & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v30 && (*v30 & 2) != 0);
      }

      else
      {
        v31 = 0;
      }

      if (vgetsc(a1, 0, 1, *v134, v24))
      {
        OUTLINED_FUNCTION_13_46();
        v34 = v33 + v24;
        do
        {
          v35 = v32;
          v32 = (*&v32[8 * v34] & 0xFFFFFFFFFFFFFFFCLL);
        }

        while (v32 && (*v32 & 2) != 0);
        if (v31)
        {
LABEL_21:
          while (1)
          {
            OUTLINED_FUNCTION_13_46();
            if ((*(v31 + 8 * (v36 + v10)) & 1) == 0)
            {
              goto LABEL_86;
            }

            v37 = VRSYNC(a1, v31, v24);
            if (v37)
            {
              v31 = v37;
              if (v37 != v35)
              {
                continue;
              }
            }

            break;
          }
        }
      }

      else
      {
        v35 = 0;
        if (v31)
        {
          goto LABEL_21;
        }
      }

      v8 = v136;
      *(*(*(a1 + 200) + 616) + 8 * v24) = gcql(a1, *v136, v24, v10);
      v38 = gcqr(a1, *v136, v24, v10);
      v39 = 0;
      *(*(*(a1 + 200) + 624) + 8 * v24) = v38;
      v40 = v23[1];
      while (v39 < v40)
      {
        if (*(a4 + 9) == v20)
        {
          v41 = v20 + 1;
        }

        else
        {
          v41 = v20;
        }

        v20 = v41 + 1;
        ++v39;
      }

      v23 += v40 + 2;
      ++v21;
      v22 = v132;
    }

    v133 = malloc_type_malloc(8 * v20 * *(a1 + 288), 0x10040436913F5uLL);
    if (!v133)
    {
LABEL_86:
      dynaBufDelete(v137);
      goto LABEL_87;
    }

    v128 = 0;
    v129 = 0;
    v48 = 0;
    v49 = 1;
    HIDWORD(v121) = v130;
    v135 = vdur(a1, v8, v134, *(a4 + 8));
    for (i = v135; i >= 1; i = v131 - v115)
    {
      v51 = *v136;
      if (v129 == 3 && (v48 & 1) != 0)
      {
        v51 = lmost(v10, *v136);
      }

      v52 = vnormalize(a1, v136);
      v127 = v51;
      if (v52 - 3 >= 2)
      {
        if (v52 != 2)
        {
LABEL_89:
          dynaBufDelete(v137);
          v47 = v133;
          goto LABEL_36;
        }

        v53 = v136[2] <= v128;
      }

      else
      {
        v53 = 1;
      }

      LODWORD(v124) = v53;
      v54 = v52;
      v55 = *a4;
      if (i < *a4)
      {
        v55 = i;
      }

      v128 = v55;
      v137 = dynaBufReset(v137);
      v56 = dynaBufContents(*(a4 + 16));
      v57 = 0;
      v58 = 0;
      v60 = (v56 + 1);
      v59 = *v56;
      v129 = v54;
      v131 = i;
      HIDWORD(v123) = v49 | (v54 != 2);
      v61 = v136;
      HIDWORD(v124) = v59;
      do
      {
        if (v59 <= v58)
        {
          break;
        }

        HIDWORD(v126) = v58;
        v62 = *v60;
        v63 = *(a1 + 200);
        v64 = *(*(v63 + 616) + 8 * v62);
        v65 = v60[1];
        v125 = *(*(v63 + 624) + 8 * v62);
        v66 = *v61;
        switch(v129)
        {
          case 2:
            goto LABEL_93;
          case 4:
            v68 = *v61;
            break;
          case 3:
            firstdefd(a1, v10, *v61, *v60, 0);
            v122 = v64;
            v67 = lmost(v10, v66);
            v66 = firstdefd(a1, v10, v67, v62, 1);
            break;
          default:
            goto LABEL_89;
        }

        OUTLINED_FUNCTION_13_46();
        if (v66[v70 + v62])
        {
          v72 = 0;
          *(*(*(a1 + 200) + 624) + 8 * v62) = v69;
          *(*(*(a1 + 200) + 616) + 8 * v62) = v66;
        }

        else
        {
LABEL_93:
          if (v124)
          {
            while (1)
            {
              OUTLINED_FUNCTION_13_46();
              if (v66[v71 + v62])
              {
                break;
              }

              if (v66 == v127)
              {
                goto LABEL_62;
              }

              v66 = VLSYNC(v66, v10);
            }

            *(*(*(a1 + 200) + 616) + 8 * v62) = v66;
            *(*(*(a1 + 200) + 624) + 8 * v62) = VRSYNC(a1, v66, v62);
          }

LABEL_62:
          v72 = (v123 & 0x100000000) == 0 && (v73 = *(a1 + 200), v64 == *(*(v73 + 616) + 8 * v62)) && v125 == *(*(v73 + 624) + 8 * v62);
        }

        v74 = 0;
        v60 += 2;
        do
        {
          if (v74 >= v65)
          {
            break;
          }

          if (*(a4 + 9) == v57)
          {
            v75 = OUTLINED_FUNCTION_8_51();
            v78 = __sprintf_chk(v75, v76, v77, "%d ", v128);
            OUTLINED_FUNCTION_12_46(v78, v79, v80, v81, v82, v83, v84, v85, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
            ++v57;
          }

          if (i == v135)
          {
            v86 = vstmtbl[12 * *(a4 + 8) + 11];
          }

          else
          {
            v86 = 0;
          }

          v88 = *v60++;
          v87 = v88;
          if (!v72 || (v89 = *(v133 + v57), v89 == 0x8000000000000000))
          {
            LODWORD(v89) = val_expr2(a1, v136, v62, v87, v86, v129, v138);
            v90 = 0x8000000000000000;
            if (!v138[0])
            {
              v90 = v89;
            }

            *(v133 + v57) = v90;
          }

          if (v89 == -2147483647)
          {
            goto LABEL_89;
          }

          v118 = v89;
          v91 = OUTLINED_FUNCTION_8_51();
          v94 = __sprintf_chk(v91, v92, v93, "%d ", v118);
          OUTLINED_FUNCTION_12_46(v94, v95, v96, v97, v98, v99, v100, v101, v119, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
          ++v57;
          ++v74;
          i = v131;
        }

        while (!checkInterrupt(a1));
        v102 = checkInterrupt(a1);
        v58 = HIDWORD(v126) + 1;
        v61 = v136;
        v59 = HIDWORD(v124);
      }

      while (!v102);
      if (checkInterrupt(a1))
      {
        break;
      }

      if (*(a4 + 9) == v57)
      {
        v103 = OUTLINED_FUNCTION_8_51();
        v106 = __sprintf_chk(v103, v104, v105, "%d ", v128);
        OUTLINED_FUNCTION_12_46(v106, v107, v108, v109, v110, v111, v112, v113, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
      }

      dynaBufAddChar(v137, 10, 0);
      dynaBufAddChar(v137, 0, 0);
      v114 = dynaBufContents(v137);
      v48 = 1;
      vf_puts(a1, SHIDWORD(v121), v114, 1);
      v49 = 0;
      *(v136 + 24) = 2;
      v115 = *a4;
      v136[2] = (v136[2] + *a4);
    }

    dynaBufDelete(v137);
    free(v133);
    result = 1;
  }

LABEL_88:
  v116 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t visleft(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (!*(*(a1 + 192) + 8868) || NONSEQ(a2) || NONSEQ(v6))
      {
        v7 = 0;
        v8 = *(a1 + 288);
        while (1)
        {
          if (--v8 < 0)
          {
            OUTLINED_FUNCTION_11_47();
            OUTLINED_FUNCTION_16_39();
            result = vgetsc(v10, v11, v12, v6, v13);
            goto LABEL_15;
          }

          v9 = *(*(a1 + 192) + 9084) + (v8 & 0x7F);
          if (*(a2 + 8 * v9))
          {
            v7 = v8;
            if (*(v6 + 8 * v9))
            {
              break;
            }
          }
        }

        v7 = v8;
        result = VLSYNC(v6, v8);
        if (!result)
        {
          return result;
        }

LABEL_15:
        v14 = v7 + 3;
        while (1)
        {
          if (result == a2)
          {
            return 1;
          }

          v15 = (*(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL);
          if (!v15)
          {
            break;
          }

          if ((*v15 & 2) != 0)
          {
            result = *(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            result = *v15 & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        return 0;
      }

      else
      {
        v16 = *(a1 + 200);
        if (*(v16 + 656) == spine_changed)
        {
          v17 = 0;
          v18 = v16 + 1064;
          for (i = (v16 + 664); ; ++i)
          {
            if (v17 == 50)
            {
              v23 = *(v16 + 660);
              if (v23 <= 48)
              {
                v24 = v23 + 1;
              }

              else
              {
                v24 = 0;
              }

              *(v16 + 660) = v24;
              v25 = v24;
              while (*(v16 + 1516 + 4 * v25) >= 13)
              {
                if (v25 <= 48)
                {
                  ++v25;
                }

                else
                {
                  v25 = 0;
                }

                if (v25 == v24)
                {
                  v21 = v24;
                  v25 = v24;
LABEL_45:
                  *(v16 + 660) = v25;
                  *(v16 + 664 + 8 * v21) = a2;
                  *(*(a1 + 200) + 8 * v21 + 1064) = v6;
                  v22 = *(a1 + 200);
                  v22[v21 + 379] = 1;
                  goto LABEL_46;
                }
              }

              v21 = v25;
              goto LABEL_45;
            }

            if (*i == a2 && i[50] == v6)
            {
              break;
            }

            ++v17;
          }

          ++*(v18 + 4 * v17 + 452);
          return *(v18 + v17 + 400);
        }

        else
        {
          for (j = 0; j != 50; ++j)
          {
            *(v16 + 8 * j + 664) = 0;
            *(*(a1 + 200) + 8 * j + 1064) = 0;
            v16 = *(a1 + 200);
            *(v16 + 4 * j + 1516) = 0;
          }

          v21 = 0;
          *(v16 + 664) = a2;
          *(*(a1 + 200) + 1064) = v6;
          v22 = *(a1 + 200);
          v22[379] = 1;
          v22[165] = 0;
          v22[164] = spine_changed;
LABEL_46:
          while (1)
          {
            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            if (!v6)
            {
              break;
            }

            if (v6 == a2)
            {
              result = 1;
              *(v22 + v21 + 1464) = 1;
              return result;
            }
          }

          result = 0;
          *(v22 + v21 + 1464) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t vsync_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if (vnormalize(a1, a2) == 2)
    {
      *a2 = OUTLINED_FUNCTION_19_35();
    }

    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

uint64_t vtmark_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_54(a1, a2);
    if (v5 == 2)
    {
      v6 = OUTLINED_FUNCTION_19_35();
    }

    else
    {
      if (v5 != 3)
      {
LABEL_9:
        OUTLINED_FUNCTION_0_72();
        return 1;
      }

      if (v4)
      {
        v6 = lmost(*(v2 + 8), *v2);
      }

      else
      {
        v6 = rmost(v3, *(v2 + 8), *v2);
      }
    }

    *v2 = v6;
    goto LABEL_9;
  }

  return 1;
}

uint64_t vtimept_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_4_54(a1, a2);
  if (v5 != 2)
  {
    if (v5 != 4)
    {
      if (v5 != 3)
      {
        return 0;
      }

      if (v4)
      {
        v6 = lmost(*(v2 + 8), *v2);
      }

      else
      {
        v6 = rmost(v3, *(v2 + 8), *v2);
      }

      *v2 = v6;
    }

    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

BOOL vctxt_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v2 = vnormalize(a1, a2);
  if ((v2 - 3) < 2)
  {
    OUTLINED_FUNCTION_0_72();
    return 1;
  }

  return v2 == 2;
}

uint64_t vmove_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    vnormalize(a1, a2);
    OUTLINED_FUNCTION_0_72();
  }

  return 1;
}

void vtsttmark_tv(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_4_54(a1, a2);
    if ((v5 - 1) >= 2)
    {
      if (v5 == 3)
      {
        if (v4)
        {
          v6 = lmost(*(v2 + 8), *v2);
        }

        else
        {
          v6 = rmost(v3, *(v2 + 8), *v2);
        }

        *v2 = v6;
      }

      OUTLINED_FUNCTION_0_72();
    }
  }
}

void vtstctx_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_54(a1, a2);
  if (v5 == 2)
  {
    v6 = v2[2];
    if (v4 == 1 && v6 >= 1)
    {
      v17 = &vstmtbl[12 * *(v2 + 8)];
      v18 = *(*v2 + 8 * (*(*(v3 + 192) + 9084) + *(v2 + 8)));
      v19 = v17[1];
      v20 = *v17[2];
      OUTLINED_FUNCTION_14_44();
      if (v21)
      {
        v25 = *v22(v23 + 16);
        v26 = -2147483647;
      }

      else
      {
        if (v24 != 65532)
        {
          v25 = 0;
LABEL_25:
          v2[2] -= v25;
LABEL_26:
          v27 = *(*v2 + 8);
LABEL_33:
          *v2 = v27 & 0xFFFFFFFFFFFFFFFCLL;
          return;
        }

        v25 = *v22(v23 + 16);
        v26 = -32767;
      }

      if (v25 == v26)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v4 || (v6 & 0x8000000000000000) == 0)
    {
      return;
    }

    v8 = &vstmtbl[12 * *(v2 + 8)];
    v9 = v8[1];
    v10 = *v8[2];
    v11 = *(*v2 + 8 * *(v2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL;
    OUTLINED_FUNCTION_14_44();
    if (v21)
    {
      v15 = *v12(v13 + 16);
      v16 = -2147483647;
    }

    else
    {
      if (v14 != 65532)
      {
        v15 = 0;
LABEL_31:
        v2[2] += v15;
LABEL_32:
        v27 = **v2;
        goto LABEL_33;
      }

      v15 = *v12(v13 + 16);
      v16 = -32767;
    }

    if (v15 == v16)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v5 == 4 || v5 == 3)
  {
    OUTLINED_FUNCTION_0_72();
  }
}

uint64_t vcomp_pta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 24) & 1) != 0 && (*(a3 + 24))
  {
    v15 = *a2 == *a3;
LABEL_23:
    v14 = !v15;
    goto LABEL_26;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  if ((*(a3 + 24) & 2) != 0)
  {
    vnormalize(a1, a2);
    vnormalize(a1, v3);
    if (*(a2 + 8) != *(v3 + 8) || *a2 != *v3 || *(a2 + 16) != v3[2])
    {
LABEL_20:
      v10 = a1 + 192;
LABEL_21:
      v14 = 1;
      goto LABEL_27;
    }

    v14 = 0;
LABEL_26:
    v10 = a1 + 192;
    goto LABEL_27;
  }

  v6 = a3;
  v3 = a2;
LABEL_7:
  v7 = *v6;
  switch(vnormalize(a1, v3))
  {
    case 3u:
      v8 = lmost(*(v3 + 8), *v3);
      v9 = rmost(a1, *(v3 + 8), *v3);
      v10 = a1 + 192;
      v11 = *(v3 + 8);
      v12 = *(v7 + 8 * (*(*(a1 + 192) + 9084) + v11));
      v13 = v7;
      if ((v12 & 1) == 0)
      {
        v7 = *(v7 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL;
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v7 != v8 && !visleft(a1, v8, v7) || v13 != v9 && !visleft(a1, v13, v9))
      {
        goto LABEL_21;
      }

      v14 = 0;
      break;
    case 4u:
      v15 = *v3 == v7;
      goto LABEL_23;
    default:
      goto LABEL_20;
  }

LABEL_27:
  *(*v10 + 8120) = v14;
  return 0;
}

uint64_t vrange_l()
{
  OUTLINED_FUNCTION_9_51();
  vtmark_tv(v5, v6);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == **(v1 + 200))
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_20_33(result, v4, *(*v2 + 8 * v4 + 24) & 0xFFFFFFFFFFFFFFFCLL, *v2);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 1);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

void dupsync(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0;
  if (a4)
  {
    while (v7 < *(a1 + 288))
    {
      OUTLINED_FUNCTION_18_37();
      if (v8)
      {
        v9 = *&a3[8 * v7 + 24];
        v10 = OUTLINED_FUNCTION_11_47();
        if (!vproject(v10, a2, v11, a3, v12))
        {
          break;
        }
      }

      ++v7;
    }
  }

  else
  {
    while (v7 < *(a1 + 288))
    {
      OUTLINED_FUNCTION_18_37();
      if (v13)
      {
        v14 = OUTLINED_FUNCTION_11_47();
        if (!vproject(v14, a2, a3, v15, v16))
        {
          break;
        }
      }

      LODWORD(v7) = v7 + 1;
    }
  }
}

uint64_t vrange_r()
{
  OUTLINED_FUNCTION_9_51();
  vtmark_tv(v5, v6);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == *(*(v1 + 200) + 8))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      result = OUTLINED_FUNCTION_20_33(v9, v4, v10, *(v10 + 8 * (v8 + v4)) & 0xFFFFFFFFFFFFFFFCLL);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 0);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t vprt_range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vtimept_tv(a1, a2);
  if (result)
  {
    result = vtimept_tv(a1, a3);
    if (result)
    {
      if ((*(a2 + 24) & 2) != 0 && *(a2 + 16) >= 1)
      {
        *a2 = VRSYNC(a1, *a2, *(a2 + 8));
      }

      if ((*(a3 + 24) & 2) != 0 && (*(a3 + 16) & 0x8000000000000000) != 0)
      {
        *a3 = VLSYNC(*a3, *(a3 + 8));
      }

      return 1;
    }
  }

  return result;
}

uint64_t ctxt_clstr(uint64_t a1, uint64_t a2, int a3)
{
  v6 = &vstmtbl[12 * a3];
  v7 = *v6[2];
  OUTLINED_FUNCTION_16_39();
  v12 = vgetsc(v8, v9, v10, a2, v11);
  v13 = vgetsc(a1, 0, 1, a2, a3);
  while (1)
  {
    if (v12 == v13)
    {
      return 1;
    }

    if (v12 && (*v12 & 2) != 0)
    {
      OUTLINED_FUNCTION_3_58();
      v16 = &v12[8 * v15 + 8 * a3];
      goto LABEL_12;
    }

    v14 = *(v6[1] + 15);
    if (v14 == 65532)
    {
      if (*v7(v12 + 16))
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v14 == 65533 && *v7(v12 + 16))
    {
      return 0;
    }

LABEL_11:
    v16 = v12 + 8;
LABEL_12:
    v12 = (*v16 & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1, uint64_t a2)
{

  return vnormalize(a1, a2);
}

uint64_t OUTLINED_FUNCTION_12_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{

  return dynaBufAddString(a23, (v23 - 116), 0);
}

uint64_t OUTLINED_FUNCTION_19_35()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = *v0;

  return vsplit_time(v1, v4, v5, v3);
}

uint64_t OUTLINED_FUNCTION_20_33(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{

  return vins_sync(v4, a2, a3, a4);
}

BOOL initializeDeltaHeap(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = 0;
  v6 = *(a1 + 200);
  *(v6 + 1736) = v4;
  *(v6 + 1752) = v4;
  *(v6 + 1776) = a2;
  v7 = v6 + 1800;
  while (v5 != 400)
  {
    *(v7 + v5) = 1;
    v5 += 40;
  }

  return v4 != 0;
}

_DWORD *allocDynaSegment(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 2192);
  if (v3)
  {
    v3[4] = 0;
    v4 = *(v3 + 4);
    *(v2 + 2192) = *(v3 + 5);
    --*(v2 + 2184);
    v5 = v4 & 3;
    if ((v4 & 7) == 0)
    {
      v5 = 4;
    }

    *(v3 + 5) = 0;
    *v3 = 0;
    *(v3 + 1) = v5;
  }

  else
  {
    v8 = malloc_type_malloc(0x30uLL, 0x10A0040B1233896uLL);
    v3 = v8;
    if (v8)
    {
      v8[5] = 0;
      *v8 = 0;
      *(v8 + 4) = 0;
      v9 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(v3 + 3) = v9;
      if (v9)
      {
        v10 = v9 + a2 - 1;
        *(v3 + 4) = v10;
        v11 = v10 & 3;
        v12 = (v10 & 7) == 0;
        v13 = 4;
        if (!v12)
        {
          v13 = v11;
        }

        *(v3 + 1) = v13;
      }

      else
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *allocDeltaHeapObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 1752);
  if (a2 + 8 < 1)
  {
    LODWORD(v6) = *(v3 + 2);
  }

  else
  {
    if ((a2 & 7) != 0)
    {
      v4 = ((a2 + 8) & 0x7FFFFFF8) + 8;
    }

    else
    {
      v4 = a2 + 8;
    }

    v5 = v3[1];
    v6 = v5 + v4;
    v3[1] = v6;
    v7 = *(v2 + 1776);
    if (v7 <= v6)
    {
      v3[1] = v5;
      result = allocDynaSegment(a1, v7);
      v3[5] = result;
      if (!result)
      {
        return result;
      }

      v6 = result[1] + v4;
      *result = v3;
      result[1] = v6;
      v2 = *(a1 + 200);
      if (*(v2 + 1776) < v6)
      {
        return 0;
      }

      v3 = result;
    }
  }

  v10 = v3[4];
  if (!v10)
  {
    return 0;
  }

  v11 = (v10 - v6);
  v12 = *(v2 + 1752);
  v13 = *(v12 + 40);
  if (v13)
  {
    *(v2 + 1752) = v13;
    v12 = v13;
  }

  *v11 = v12;
  result = v11 + 1;
  ++*(v12 + 16);
  return result;
}

void freeDeltaHeapObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 4) - 1;
  *(v2 + 4) = v3;
  if (!v3)
  {
    v4 = *(a1 + 200);
    v5 = *(v4 + 1752);
    if (v2 == v5)
    {
      v5[1] = v5[4] & 3;
    }

    else
    {
      v6 = *(v4 + 2184);
      v7 = v2[5];
      v8 = *v2;
      *(*v2 + 40) = v7;
      if (v6 > 19)
      {
        if (v7)
        {
          *v7 = v8;
        }

        free(v2[3]);

        free(v2);
      }

      else
      {
        if (v7)
        {
          *v7 = v8;
        }

        v2[5] = *(v4 + 2192);
        *(v4 + 2192) = v2;
        *(v4 + 2184) = v6 + 1;
      }
    }
  }
}

BOOL resetDeltaHeap(uint64_t a1)
{
  OUTLINED_FUNCTION_0_73(a1);
  freeDynaMem(*(v2 + 1736));
  v3 = *(*(v1 + 200) + 1776);

  return initializeDeltaHeap(v1, v3);
}

void freeDynaMem(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    do
    {
      v2 = *(v1 + 40);
      free(*(v1 + 24));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void freeDeltaHeapTo(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i != 10; ++i)
  {
    v7 = *(a1 + 200);
    v8 = v7 + 40 * i;
    if (!*(v8 + 1800) && *(v8 + 1784) == a2)
    {
      while (1)
      {
        v11 = *(v7 + 1752);
        v12 = v7 + 1784;
        if (!v11 || v11 == *(v12 + 40 * i + 8))
        {
          break;
        }

        free(*(v11 + 24));
        v9 = *(a1 + 200);
        v10 = **(v9 + 1752);
        *(v9 + 1752) = v10;
        free(*(v10 + 40));
        v7 = *(a1 + 200);
      }

      if (v11)
      {
        v14 = v12 + 40 * i;
        *(v11 + 8) = *(v14 + 24);
        *(v11 + 16) = *(v14 + 32);
        if (a3)
        {
          *(v12 + 40 * i + 16) = 1;
        }

        return;
      }
    }
  }
}

uint64_t recordDeltaHeapPos(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 + 1744;
  v3 = 11;
  while (--v3)
  {
    v4 = v2 + 40;
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5)
    {
      *(v4 + 16) = 0;
      v6 = *(v1 + 1752);
      v7 = *(v6 + 8);
      v8 = *(v6 + 32) - v7;
      *(v4 + 24) = v7;
      *(v4 + 32) = *(v6 + 16);
      *v4 = v8;
      *(v4 + 8) = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t getDeltaHeapSegNumber(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = *(a2 - 8);
  v5 = *(a1 + 200);
  for (i = (v5 + 1736); ; i = (v7 + 40))
  {
    v7 = *i;
    if (!v7 || v7 == v4)
    {
      break;
    }

    ++v3;
  }

  if (v7)
  {
    return ((*(v4 + 32) - a2) / a3) + *(v5 + 1776) / a3 * v3;
  }

  v10 = (v5 + 2192);
  do
  {
    v11 = *v10;
    v10 = (*v10 + 40);
    if (v11)
    {
      v12 = v11 == v4;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (v11)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t initializeDeltaStack(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = *(a1 + 200);
  *(v5 + 1744) = v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 4) - v6;
  *(v5 + 1780) = a2;
  v8 = *(v5 + 296);
  v9 = (v7 - v8);
  *(v5 + 1720) = v9;
  *(v5 + 1728) = a2 - v6 - v8;
  *v9 = 8;
  *(v5 + 1760) = v9;
  return 1;
}

uint64_t resetDeltaStack(uint64_t a1)
{
  OUTLINED_FUNCTION_0_73(a1);
  freeDynaMem(*(v2 + 1744));
  v3 = *(v1 + 200);
  *(v3 + 1744) = 0;
  v4 = *(v3 + 1780);

  return initializeDeltaStack(v1, v4);
}

uint64_t peekDeltaStackStart(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_73(a1);
  *(v3 + 1768) = *(v3 + 1720);
  peekDeltaStackNext(v2);
  return *(*(v1 + 200) + 1768);
}

uint64_t peekDeltaStackNext(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1768);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    case 8:
      v3 = 2;
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1768) = result + v3;
  return result;
}

uint64_t popDeltaStackTop(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1720);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1720) = result + v3;
  *(v1 + 1728) += v3;
  return result;
}

void deltaHeapCleanup(uint64_t a1)
{
  OUTLINED_FUNCTION_0_73(a1);
  v3 = v2[274];
  if (v3)
  {
    freeDynaMem(v3);
    v2 = *(v1 + 200);
  }

  v4 = v2[217];
  if (v4)
  {
    freeDynaMem(v4);
    v2 = *(v1 + 200);
  }

  v5 = v2[218];
  if (v5)
  {
    freeDynaMem(v5);
    v2 = *(v1 + 200);
  }

  v2[274] = 0;
  v2[217] = 0;
  v2[219] = 0;
  v2[218] = 0;
}

uint64_t vmeminit(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(v2 + 276) = ((*(a1 + 232) - 1) | 3) + 1;
  *(v2 + 280) = xmmword_26E780270;
  *(v2 + 296) = 4;
  result = initializeDeltaStack(a1, 0xFA00u);
  if (result)
  {
    result = initializeDeltaHeap(a1, 0x2000u);
    if (result)
    {
      v4 = *(a1 + 200);
      *(*(a1 + 192) + 8112) = *(v4 + 1720);
      *(v4 + 252) = 0;
      *(v4 + 256) = 0;
      result = malloc_type_malloc(0x50uLL, 0x100004090896170uLL);
      v5 = *(a1 + 200);
      *(v5 + 264) = result;
      if (result)
      {
        *(v5 + 272) = -1;
        viasizes();
        return 1;
      }
    }
  }

  return result;
}

void *vpush_var(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = &unk_26E780280 + 4 * (v2 + 6);
  if (v2 <= 0xFFFFFFF9)
  {
    v3 = &vstmtbl[12 * *(a2 + 8) + 8] + 4;
  }

  v4 = *v3;
  v5 = *(a1 + 200);
  v6 = *(v5 + 280);
  v7 = ((v4 - 1) | 3) + 1;
  v8 = *(v5 + 1720) - (v7 + v6);
  *(v5 + 1720) = v8;
  *(v5 + 1728) -= v7 + v6;
  *v8 = 2;
  *(v8 + 2) = v2;
  *(v8 + 16) = v4;
  v9 = *a2;
  *(v8 + 8) = v9;
  return memcpy((v8 + v6), v9, v7);
}

void vadd(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v9 = *(a3 + 4);
      switch(v9)
      {
        case 65531:
          v11 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          break;
        case 65532:
          v10 = *a2;
          v11 = **a2;
          v13 = **a3;
          break;
        case 65533:
          v11 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          v13 = v12;
          break;
        default:
          return;
      }

      *v10 = v11 + v13;
      break;
    case 65532:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v14 = (**a3 + **a2);
        OUTLINED_FUNCTION_3_59(*a2);
      }

      else if (v7 == 65532 || v7 == 65533)
      {
        v8 = **a2 + **a3;
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v16 = (**a3 + **a2);
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65532:
          v15 = **a2 + **a3;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65533:
          v6 = **a3 + **a2;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
      }

      break;
  }
}

void vsub(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v10 = *(a3 + 4);
      switch(v10)
      {
        case 65531:
          v12 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          break;
        case 65532:
          v11 = *a2;
          v12 = **a2;
          v14 = **a3;
          break;
        case 65533:
          v12 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          v14 = v13;
          break;
        default:
          return;
      }

      *v11 = v12 - v14;
      break;
    case 65532:
      v8 = *(a3 + 4);
      if (v8 == 65531)
      {
        v15 = (**a2 - **a3);
        OUTLINED_FUNCTION_3_59(*a2);
      }

      else if (v8 == 65532 || v8 == 65533)
      {
        v9 = **a2 - **a3;
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v18 = (**a2 - **a3);
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65532:
          v16 = **a2;
          v17 = **a3;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65533:
          v6 = **a2;
          v7 = **a3;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
      }

      break;
  }
}

void vmult(uint64_t a1, double **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v9 = *(a3 + 4);
      switch(v9)
      {
        case 65531:
          v11 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          break;
        case 65532:
          v10 = *a2;
          v11 = **a2;
          v13 = **a3;
          break;
        case 65533:
          v11 = OUTLINED_FUNCTION_6_54(v3, a2, a3);
          v13 = v12;
          break;
        default:
          return;
      }

      *v10 = v11 * v13;
      break;
    case 65532:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v14 = (**a3 * **a2);
        OUTLINED_FUNCTION_3_59(*a2);
      }

      else if (v7 == 65532 || v7 == 65533)
      {
        v8 = **a2 * **a3;
        OUTLINED_FUNCTION_3_59(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v16 = (**a3 * **a2);
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65532:
          v15 = **a2 * **a3;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
        case 65533:
          v6 = **a3 * **a2;
          OUTLINED_FUNCTION_2_64(*a2);
          break;
      }

      break;
  }
}

double vdiv(double result, uint64_t a2, double **a3, uint64_t **a4)
{
  v4 = *(a3 + 4);
  switch(v4)
  {
    case 65531:
      v8 = *(a4 + 4);
      if (v8 != 65531)
      {
        if (v8 == 65532)
        {
          v9 = *a3;
          v10 = **a3;
          v11 = **a4;
        }

        else
        {
          if (v8 != 65533)
          {
            return result;
          }

          v9 = *a3;
          v10 = **a3;
          v11 = **a4;
        }

        result = v10 / v11;
        *v9 = result;
        return result;
      }

      result = **a3 / **a4;
      **a3 = result;
      break;
    case 65532:
      v7 = *(a4 + 4);
      switch(v7)
      {
        case 65531:
          v12 = **a3 / **a4;
          OUTLINED_FUNCTION_3_59(*a3);
          break;
        case 65532:
          **a3 /= **a4;
          break;
        case 65533:
          **a3 = **a3 / **a4;
          break;
      }

      break;
    case 65533:
      v5 = *(a4 + 4);
      switch(v5)
      {
        case 65531:
          v13 = **a3 / **a4;
          OUTLINED_FUNCTION_2_64(*a3);
          break;
        case 65532:
          v6 = **a4;
          goto LABEL_21;
        case 65533:
          v6 = **a4;
LABEL_21:
          **a3 /= v6;
          break;
      }

      break;
  }

  return result;
}

uint64_t vnegative(uint64_t a1, double **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      return **a2 < 0.0;
    case 65532:
      return **a2 >> 15;
    case 65533:
      return **a2 >> 63;
  }

  return 0;
}

double vnegate(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      result = -**a2;
      **a2 = result;
      break;
    case 65532:
      v5 = -**a2;
      OUTLINED_FUNCTION_3_59(*a2);
      break;
    case 65533:
      v3 = -**a2;
      OUTLINED_FUNCTION_2_64(*a2);
      break;
  }

  return result;
}

void vassign(uint64_t a1, void **a2, const void **a3)
{
  switch(*(a2 + 4))
  {
    case 0xFFFA:
      v3 = **a3;
      OUTLINED_FUNCTION_2_64(*a2);
      return;
    case 0xFFFB:
      v8 = *(a3 + 4);
      switch(v8)
      {
        case 65531:
          v10 = **a3;
          break;
        case 65532:
          v12 = **a3;
          if (v12 == 32769)
          {
            goto LABEL_23;
          }

          v10 = v12;
          break;
        case 65533:
          v9 = **a3;
          if (v9 == -2147483647)
          {
            goto LABEL_23;
          }

          v10 = v9;
          break;
        default:
          return;
      }

      **a2 = v10;
      return;
    case 0xFFFC:
      v6 = *(a3 + 4);
      switch(v6)
      {
        case 65531:
          v13 = **a3;
          if (v13 != 2.22507386e-308)
          {
            v7 = v13;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_3_59(*a2);
          break;
        case 65532:
          goto LABEL_11;
        case 65533:
          **a2 = **a3;
          break;
      }

      return;
    case 0xFFFD:
      v4 = *(a3 + 4);
      switch(v4)
      {
        case 65531:
          v11 = **a3;
          if (v11 == 2.22507386e-308)
          {
LABEL_23:
            OUTLINED_FUNCTION_2_64(*a2);
            return;
          }

          v5 = v11;
          break;
        case 65532:
          v5 = **a3;
          break;
        case 65533:
          v5 = **a3;
          break;
        default:
          return;
      }

      **a2 = v5;
      return;
    case 0xFFFE:
LABEL_11:
      LOWORD(v7) = **a3;
LABEL_12:
      **a2 = v7;
      return;
    case 0xFFFF:
      **a2 = **a3;
      return;
    default:
      memcpy(*a2, *a3, SHIDWORD(vstmtbl[12 * *(a2 + 4) + 8]));
      return;
  }
}

void vcompare(uint64_t a1, void **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 0xFFFAu:
      v5 = absoluteSyncNumPtr(**a2);
      absoluteSyncNumPtr(**a3);
      OUTLINED_FUNCTION_4_55();
      if (v5 == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    case 0xFFFBu:
      v18 = *(a3 + 4);
      if (v18 == 65531)
      {
        v19 = OUTLINED_FUNCTION_5_55(a1, a2);
      }

      else
      {
        if (v18 != 65533)
        {
          return;
        }

        v19 = OUTLINED_FUNCTION_5_55(a1, a2);
        v21 = v20;
      }

      if (v19 < v21)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_55();
      if (v26 != v27)
      {
        goto LABEL_32;
      }

LABEL_31:
      *(v6 + v7) = 0;
      return;
    case 0xFFFCu:
      v12 = *(a3 + 4);
      if (v12 == 65532)
      {
        goto LABEL_12;
      }

      if (v12 != 65533)
      {
        return;
      }

      v13 = **a2;
      v14 = **a3;
      if (v14 > v13)
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 192);
      if (v14 != v13)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    case 0xFFFDu:
      v9 = *(a3 + 4);
      if (v9 == 65532)
      {
        v10 = **a2;
        v11 = **a3;
      }

      else
      {
        if (v9 != 65533)
        {
          return;
        }

        v10 = **a2;
        v11 = **a3;
      }

      if (v10 < v11)
      {
LABEL_29:
        OUTLINED_FUNCTION_4_55();
        v25 = -1;
        goto LABEL_33;
      }

      v15 = *(a1 + 192);
      if (v10 == v11)
      {
LABEL_19:
        *(v15 + 8120) = 0;
      }

      else
      {
LABEL_26:
        *(v15 + 8120) = 1;
      }

      break;
    case 0xFFFEu:
LABEL_12:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 0xFFFFu:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

LABEL_18:
      v15 = *(a1 + 192);
      if (v16 == v17)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    default:
      if (*(a3 + 4) == v4)
      {
        memcmp(*a2, *a3, SHIDWORD(vstmtbl[12 * v4 + 8]));
        OUTLINED_FUNCTION_4_55();
        *(v23 + v24) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_4_55();
LABEL_32:
        v25 = 1;
LABEL_33:
        *(v6 + v7) = v25;
      }

      break;
  }
}

BOOL vcompareTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  switch(v3)
  {
    case -6:
      v5 = *(a3 + 8) == -6;
      goto LABEL_6;
    case -5:
    case -4:
    case -3:
      return (*(a3 + 8) + 5) < 3u;
    case -2:
      v5 = *(a3 + 8) == -2;
      goto LABEL_6;
    case -1:
      v5 = *(a3 + 8) == -1;
LABEL_6:
      result = v5;
      break;
    default:
      result = (v3 & 0x80000000) == 0 && v3 < *(a1 + 288);
      break;
  }

  return result;
}

uint64_t vinitloc(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*a2 + 16);
  if (v4 < 0 || (v5 = *(a2 + 8), v5 == -1))
  {
    v9 = 0;
    *(result + 8) = v4;
    *result = *(a2 + 16);
  }

  else
  {
    v6 = *&vstmtbl[12 * *(*a2 + 16) + 2][8 * v5];
    v7 = TVFLDS(*(a2 + 16));
    result = v6(v7);
    *v3 = result;
    v8 = &vstmtbl[12 * *(*a2 + 16) + 1][40 * *(a2 + 8)];
    *(v3 + 8) = *(v8 + 15);
    v9 = v8[32];
  }

  *(v3 + 10) = v9;
  return result;
}

uint64_t vnspush(uint64_t result, _WORD **a2)
{
  v2 = *(a2 + 4);
  v3 = *(result + 200);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272) + 1;
  *(v3 + 272) = v5;
  *(v4 + 16 * v5 + 8) = v2;
  switch(v2)
  {
    case 0xFFFB:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFC:
    case 0xFFFE:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFD:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFF:
      *(v4 + 16 * v5) = **a2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t vnspop(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 272);
  v4 = *(v2 + 264) + 16 * v3;
  v5 = *(v4 + 8);
  *(a2 + 8) = v5;
  *(a2 + 10) = 0;
  if (v5 >= 0xFFFB)
  {
    *a2 = v4;
  }

  *(v2 + 272) = v3 - 1;
  return result;
}

uint64_t vonstack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192) + 8112;
  while (1)
  {
    v3 = *v2;
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 8);
    v5 = *v4;
    v2 = (v4 + 7);
    if (v5 == a2)
    {
      return *(*v2 + 8);
    }
  }

  return 0;
}

void *alloc_sync(uint64_t a1)
{
  v2 = allocDeltaHeapObject(a1, *(*(a1 + 200) + 248));
  v3 = v2;
  if (v2)
  {
    bzero(v2, *(*(a1 + 200) + 248));
    *v3 |= 2uLL;
    SETONESTM(v3);
    CLRALLNSQ(v3);
  }

  return v3;
}

uint64_t vdltinit(uint64_t a1, int a2)
{
  *(*(a1 + 200) + 248) = 16 * *(a1 + 288) + 48;
  resetDeltaHeap(a1);
  **(a1 + 200) = alloc_sync(a1);
  v4 = alloc_sync(a1);
  result = 0;
  v6 = *(a1 + 200);
  v6[1] = v4;
  if (*v6)
  {
    if (v4)
    {
      result = recordDeltaHeapPos(a1);
      if (result)
      {
        CLRONESTM(**(a1 + 200));
        CLRONESTM(*(*(a1 + 200) + 8));
        v7 = 0;
        v8 = &qword_2806BD1A8;
        while (v7 < *(a1 + 288))
        {
          *v8 = 0;
          v9 = *(a1 + 192);
          OUTLINED_FUNCTION_0_74(**(a1 + 200));
          OUTLINED_FUNCTION_0_74(*(v10 + 8));
          OUTLINED_FUNCTION_1_67(v11);
          if (a2)
          {
            result = vinit_stm(a1, v7);
            if (!result)
            {
              return result;
            }
          }

          ++v7;
          v8 += 12;
        }

        SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
        SETSPINEL(*(*(a1 + 200) + 8), **(a1 + 200));
        v12 = *(a1 + 192);
        *(v12 + 8080) = 0;
        *(v12 + 8088) = 256;
        result = 1;
        *(v12 + 8090) = 1;
        *(v12 + 9080) = 1;
      }
    }
  }

  return result;
}

uint64_t vscaninit(uint64_t result)
{
  v1 = *(result + 192);
  *(v1 + 8080) = 0;
  *(v1 + 8088) = 256;
  *(v1 + 8090) = 1;
  return result;
}

uint64_t deltaReinit(uint64_t a1, int a2)
{
  CLRONESTM(**(a1 + 200));
  CLRONESTM(*(*(a1 + 200) + 8));
  v4 = 0;
  v5 = &qword_2806BD1A8;
  while (v4 < *(a1 + 288))
  {
    *v5 = 0;
    v6 = *(a1 + 192);
    OUTLINED_FUNCTION_0_74(**(a1 + 200));
    OUTLINED_FUNCTION_0_74(*(v7 + 8));
    OUTLINED_FUNCTION_1_67(v8);
    if (a2)
    {
      vinit_stm(a1, v4);
    }

    ++v4;
    v5 += 12;
  }

  SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
  v9 = *(a1 + 200);
  v11 = *v9;
  v10 = v9[1];

  return SETSPINEL(v10, v11);
}

void vnstackCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 264);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 264) = 0;
  }
}

void OUTLINED_FUNCTION_0_74(uint64_t a1@<X8>)
{
  *(a1 + 8 * (v3 + *(v1 + 9084))) |= 1uLL;
  v5 = *(v2 + 192);
  v4 = *(v2 + 200);
}

void OUTLINED_FUNCTION_1_67(void *a1@<X8>)
{
  *(*a1 + 8 * (v3 + *(v1 + 9084))) = *(*a1 + 8 * (v3 + *(v1 + 9084))) & 3 | a1[1];
  v4 = *(*(v2 + 200) + 8) + 8 * v3;
  *(v4 + 24) = *(v4 + 24) & 3 | **(v2 + 200);
}

double OUTLINED_FUNCTION_5_55(uint64_t a1, double **a2)
{
  result = **a2;
  v4 = **v2;
  return result;
}

double OUTLINED_FUNCTION_6_54(uint64_t a1, double **a2, uint64_t **a3)
{
  result = **a2;
  v4 = **a3;
  return result;
}

uint64_t print_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11)
{
  v112 = *MEMORY[0x277D85DE8];
  *v111 = a4;
  *&v111[8] = a5;
  v15 = malloc_type_malloc(0x58uLL, 0x10300406A7A1B15uLL);
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v15[16] = a9 + 2;
  v15[6] = a9;
  *v15 = *v111;
  *(v15 + 2) = a8;
  *(v15 + 68) = a6;
  v17 = num_fields(v15);
  *(v16 + 28) = v17;
  v18 = malloc_type_calloc(v17 + 1, 0x10uLL, 0x1010040449DF08BuLL);
  *(v16 + 32) = v18;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = *(v16 + 28);
  v21 = v18 + 8;
  while (v19 <= v20)
  {
    *v21 = 0;
    v21 += 2;
    ++v19;
  }

  OUTLINED_FUNCTION_15_44();
  v25 = hashNew(v22, v23, v24);
  *(v16 + 72) = v25;
  if (!v25)
  {
LABEL_19:
    free_lines(v16);
LABEL_20:
    free(v16);
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_15_44();
  v29 = hashNew(v26, v27, v28);
  *(v16 + 80) = v29;
  if (!v29)
  {
LABEL_18:
    v37 = *(v16 + 72);
    OUTLINED_FUNCTION_15_44();
    *(v16 + 72) = hashDelete(v38, v39, v40);
    goto LABEL_19;
  }

  v30 = rb_alloc(*(v16 + 28), 0);
  *(v16 + 40) = v30;
  if (!v30)
  {
LABEL_17:
    v33 = *(v16 + 80);
    OUTLINED_FUNCTION_15_44();
    *(v16 + 80) = hashDelete(v34, v35, v36);
    goto LABEL_18;
  }

  if (a6)
  {
    v31 = rb_alloc(1, 0);
    *(v16 + 48) = v31;
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v16 + 48) = 0;
  }

  if (pvlist_size(*(v16 + 16)) < 1)
  {
    *(v16 + 56) = 0;
  }

  else
  {
    v32 = rb_alloc(1, 0);
    *(v16 + 56) = v32;
    if (!v32)
    {
      rb_free(*(v16 + 48));
LABEL_16:
      rb_free(*(v16 + 40));
      goto LABEL_17;
    }
  }

  v43 = OUTLINED_FUNCTION_18_38();
  if (first_field(v43, v44, v45, v46))
  {
    v47 = 0;
    do
    {
      v48 = *(v16 + 32) + 16 * v47;
      *v48 = 0;
      *(v48 + 4) = 0;
      v49 = stream_name(0);
      v50 = 0;
      *(*(v16 + 32) + 16 * v47 + 8) = strdup(v49);
      while (v50 < *(v16 + 64))
      {
        place_char(v16, v47, v50++, 32);
      }

      place_char(v16, v47++, v50, 0);
      v51 = OUTLINED_FUNCTION_18_38();
    }

    while (next_field(v51, v52, v53, v54));
  }

  for (i = 0; ; ++i)
  {
    v56 = *(v16 + 28);
    if (i >= *(v16 + 64))
    {
      break;
    }

    place_char(v16, v56, i, 45);
  }

  place_char(v16, v56, i, 0);
  v57 = 0;
  while (1)
  {
    v58 = *(v16 + 28);
    if (v57 >= v58)
    {
      break;
    }

    v59 = left_delta(a1);
    if (register_sync(v16, v57, v59, 0))
    {
      v60 = right_delta(a1);
      if (register_sync(v16, v57++, v60, *(v16 + 64) - 1))
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (!a7)
  {
    v96 = 0;
    for (j = 0; j < v58; ++j)
    {
      if (time_stream(*(*(v16 + 32) + v96)))
      {
        v98 = OUTLINED_FUNCTION_5_56();
        if (!add_tokens(v98, v99, v100))
        {
          goto LABEL_37;
        }

        if (a11)
        {
          v101 = OUTLINED_FUNCTION_5_56();
          if (!space_syncs(v101, v102, v103))
          {
            goto LABEL_37;
          }
        }
      }

      v58 = *(v16 + 28);
      v96 += 16;
    }
  }

  v62 = 0;
  for (k = 0; k < v58; ++k)
  {
    if (!time_stream(*(*(v16 + 32) + v62)))
    {
      v64 = OUTLINED_FUNCTION_5_56();
      if (!add_tokens(v64, v65, v66))
      {
        goto LABEL_37;
      }

      if (a11)
      {
        v67 = OUTLINED_FUNCTION_5_56();
        if (!space_syncs(v67, v68, v69))
        {
          goto LABEL_37;
        }
      }
    }

    v58 = *(v16 + 28);
    v62 += 16;
  }

  if (a7)
  {
    for (m = 0; m < v58; ++m)
    {
      if (!time_stream(*(*(v16 + 32) + 16 * m)))
      {
        goto LABEL_72;
      }

      v71 = *(*(v16 + 32) + 16 * m);
      if (checkInterrupt(a1))
      {
        goto LABEL_37;
      }

      v72 = left_delta(a1);
      v73 = 0;
      while (1)
      {
        v74 = right_delta(a1);
        if (syncmark_equ(v72, v74))
        {
          break;
        }

        v75 = v72;
        do
        {
          v75 = sync_to_right(a1, v71, v75);
          v76 = hashLookupInt(*(v16 + 80), v75);
        }

        while (!v76);
        find_off(v76, v16, v75);
        v77 = OUTLINED_FUNCTION_19_36();
        v80 = place_char(v77, v78, v79, 124);
        find_off(v80, v16, v72);
        v81 = OUTLINED_FUNCTION_19_36();
        v84 = OUTLINED_FUNCTION_21_32(v81, v82, v83);
        if (v85)
        {
          goto LABEL_37;
        }

        v86 = v84;
        v87 = 1;
        while (1)
        {
          v72 = sync_to_right(a1, v71, v72);
          if (syncmark_equ(v72, v75))
          {
            break;
          }

          if (is_token_prev(v71, v72))
          {
            if (v87)
            {
              v73 = 0;
            }

            token = prev_token(v71, v72);
            v87 = 0;
            v73 += time_field_value(v71, token);
          }
        }

        if (is_token_prev(v71, v75))
        {
          if (v87)
          {
            v73 = 0;
          }

          v89 = prev_token(v71, v75);
          v73 += time_field_value(v71, v89);
          goto LABEL_67;
        }

        v72 = v75;
        if ((v87 & 1) == 0)
        {
LABEL_67:
          __sprintf_chk(v111, 0, 0x10uLL, "%i", v73);
          v90 = OUTLINED_FUNCTION_19_36();
          if (insert_token_name(v90, v91, v86, v92) == -1)
          {
            goto LABEL_37;
          }

          v93 = OUTLINED_FUNCTION_19_36();
          v72 = v75;
          if (insert_padding(v93, v94, v95) == -1)
          {
            goto LABEL_37;
          }
        }
      }

      if (a11 && !space_syncs(a1, v16, m))
      {
        goto LABEL_37;
      }

LABEL_72:
      v58 = *(v16 + 28);
    }
  }

  if (a6)
  {
    for (n = 0; n < *(v16 + 64); ++n)
    {
      if (*(*(*(*(v16 + 40) + 16) + 8 * *(v16 + 28)) + n) == 43)
      {
        sync = find_sync(v16, n);
        v106 = absoluteSyncNum(a1, sync);
        __sprintf_chk(v111, 0, 6uLL, "%i", v106);
        if (!rb_stradd(*(v16 + 48), n, v111))
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (checkInterrupt(a1))
  {
LABEL_37:
    close_ddisp(v16);
    goto LABEL_21;
  }

  if (pvlist_size(*(v16 + 16)) >= 1)
  {
    for (ii = 0; ii < pvlist_size(*(v16 + 16)); ++ii)
    {
      v108 = pvlist_name(a1, *(v16 + 16), ii);
      v109 = pvlist_val(a1, *(v16 + 16), ii);
      if (v109)
      {
        off = find_off(v109, v16, v109);
        if ((off & 0x80000000) == 0 && !rb_stradd(*(v16 + 56), off, v108))
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_22:
  v41 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t add_tokens(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v6 = (*(a2 + 32) + 16 * a3);
  v7 = *v6;
  v8 = *(v6 + 1);
  if (checkInterrupt(a1))
  {
LABEL_2:
    result = 0;
  }

  else
  {
    v11 = left_delta(v5);
    while (1)
    {
      v12 = right_delta(v5);
      if (syncmark_equ(v11, v12))
      {
        break;
      }

      v13 = v11;
      do
      {
        v13 = sync_to_right(v5, v7, v13);
        v14 = hashLookupInt(*(a2 + 80), v13);
      }

      while (!v14);
      find_off(v14, a2, v13);
      v15 = OUTLINED_FUNCTION_1_68();
      v18 = place_char(v15, v16, v17, 124);
      find_off(v18, a2, v11);
      v19 = OUTLINED_FUNCTION_1_68();
      v22 = OUTLINED_FUNCTION_21_32(v19, v20, v21);
      if (v23)
      {
        goto LABEL_2;
      }

      inserted = v22;
      while (1)
      {
        v11 = sync_to_right(v5, v7, v11);
        if (syncmark_equ(v11, v13))
        {
          break;
        }

        v25 = inserted;
        while (1)
        {
          sync = col_next_sync(a2, v25);
          if (sync == -1)
          {
            break;
          }

          v27 = find_sync(a2, sync);
          if (!syncmark_order(v5, v27, v11))
          {
            break;
          }

          v28 = OUTLINED_FUNCTION_1_68();
          v25 = ensure_spaces(v28, v29, v25, v30);
          if (v25 == -1)
          {
            goto LABEL_2;
          }
        }

        v31 = hashLookupInt(*(a2 + 72), v25);
        if (v31)
        {
          if (!syncmark_equ(*(v31 + 8), v11))
          {
            v32 = OUTLINED_FUNCTION_1_68();
            result = insert_space_0(v32, v33, v25);
            if (!result)
            {
              goto LABEL_3;
            }
          }
        }

        v34 = OUTLINED_FUNCTION_1_68();
        register_sync(v34, v35, v11, v25);
        if (is_token_prev(v7, v11))
        {
          v85 = v5;
          v82 = v11;
          token = prev_token(v7, v11);
          v83 = v8;
          v84 = v7;
          v37 = field_value(v7, token, v8, v87);
          v38 = 0;
          v39 = inserted;
          v40 = inserted;
          for (i = v37 + 1; ; ++i)
          {
            v42 = v37[v38];
            if (!v42)
            {
              break;
            }

            OUTLINED_FUNCTION_9_52();
            if (*(*(v43 + 8 * a3) + v39 + v38) != 32)
            {
              break;
            }

            v44 = OUTLINED_FUNCTION_1_68();
            place_char(v44, v45, v46, v47);
            ++v38;
            ++inserted;
          }

          while (1)
          {
            if (!v42)
            {
              goto LABEL_29;
            }

            OUTLINED_FUNCTION_9_52();
            if (*(*(v48 + 8 * a3) + v39 + v38) != 124 || *(*(v48 + 8 * *(a2 + 28)) + v39 + v38 + 1) == 43)
            {
              break;
            }

            v49 = OUTLINED_FUNCTION_1_68();
            place_char_in_stream(v49, v50, v40 + v38, 32);
            v51 = OUTLINED_FUNCTION_1_68();
            place_char_in_stream(v51, v52, v40 + v38 + 1, 124);
            place_char(a2, *(a2 + 28), v40 + v38, 45);
            place_char(a2, *(a2 + 28), v40 + v38 + 1, 43);
            v86 = inserted;
            v53 = v39;
            v54 = hashLookupInt(*(a2 + 72), v40 + v38);
            *v54 = v40 + v38 + 1;
            hashDeleteInt(*(a2 + 72), v40 + v38);
            hashInsertInt(*(a2 + 72), v40 + v38 + 1, v54);
            v55 = &v37[v38];
            v56 = v37[v38];
            v57 = OUTLINED_FUNCTION_1_68();
            place_char(v57, v58, v40 + v38++, v59);
            v42 = v55[1];
            v39 = v53;
            inserted = v86 + 1;
            ++i;
          }

          v42 = 1;
LABEL_29:
          while (v42)
          {
            v60 = OUTLINED_FUNCTION_1_68();
            result = insert_space_0(v60, v61, inserted);
            if (!result)
            {
              goto LABEL_3;
            }

            v62 = *(i - 1);
            v63 = OUTLINED_FUNCTION_1_68();
            place_char(v63, v64, inserted, v65);
            v66 = *i++;
            v42 = v66;
            ++inserted;
          }

          if (inserted == -1)
          {
            goto LABEL_2;
          }

          v67 = OUTLINED_FUNCTION_1_68();
          OUTLINED_FUNCTION_21_32(v67, v68, inserted);
          if (v23)
          {
            goto LABEL_2;
          }

          v69 = OUTLINED_FUNCTION_1_68();
          next_sync(v69, v70, v25);
          v5 = v85;
          v8 = v83;
          v7 = v84;
          v11 = v82;
        }

        v71 = OUTLINED_FUNCTION_1_68();
        inserted = insert_padding(v71, v72, v73);
        result = 0;
        if (inserted == -1)
        {
          goto LABEL_3;
        }
      }

      v11 = v13;
      if (is_token_prev(v7, v13))
      {
        v74 = prev_token(v7, v13);
        field_value(v7, v74, v8, v87);
        v75 = OUTLINED_FUNCTION_1_68();
        if (insert_token_name(v75, v76, inserted, v77) == -1)
        {
          goto LABEL_2;
        }

        v78 = OUTLINED_FUNCTION_1_68();
        v81 = insert_padding(v78, v79, v80);
        result = 0;
        v11 = v13;
        if (v81 == -1)
        {
          goto LABEL_3;
        }
      }
    }

    result = 1;
  }

LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t space_syncs(uint64_t a1, uint64_t a2, int a3)
{
  if (checkInterrupt(a1))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_68();
  v8 = 1;
  while (1)
  {
    sync = next_sync(v6, v7, v8);
    if (sync >= *(a2 + 64))
    {
      break;
    }

    OUTLINED_FUNCTION_9_52();
    if (*(*(v10 + 8 * a3) + sync - 1) == 124)
    {
      v11 = OUTLINED_FUNCTION_1_68();
      result = insert_space_0(v11, v12, sync);
      if (!result)
      {
        return result;
      }
    }

    v6 = OUTLINED_FUNCTION_1_68();
  }

  return 1;
}

void close_ddisp(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    OUTLINED_FUNCTION_15_44();
    *(a1 + 80) = hashDelete(v3, v4, v5);
    *(a1 + 72) = hashDelete(*(a1 + 72), 0, 1);
    rb_free(*(a1 + 40));
    rb_free(*(a1 + 48));
    rb_free(*(a1 + 56));
    free_lines(a1);

    free(a1);
  }
}

uint64_t find_sync(uint64_t a1, unsigned int a2)
{
  do
  {
    v4 = hashLookupInt(*(a1 + 72), a2--);
  }

  while (!v4);
  return *(v4 + 8);
}

uint64_t find_off(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = hashLookupInt(*(a2 + 80), a3);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void lf_print_delta(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11, int a12)
{
  v100 = *MEMORY[0x277D85DE8];
  v97 = 0;
  v98 = 0;
  if (a12)
  {
    v17 = a12;
  }

  else
  {
    v17 = 77;
  }

  fill_stream_list(a1, &v97, a5);
  if (v20)
  {
    v21 = print_delta(a1, v18, v19, v97, v98, a6, a7, a8, a9, 0, a11);
    if (v21)
    {
      v22 = v21;
      v95 = a1;
      v96 = a2;
      v23 = 0;
      v24 = 0;
      v25 = 16 * (*(v21 + 28) & ~(*(v21 + 28) >> 31));
      while (v25 != v23)
      {
        v26 = *(v22 + 32) + v23;
        v27 = strlen(*(v26 + 8));
        if (*(v26 + 4))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v29 = v28 + v27;
        if (v24 <= v29)
        {
          v24 = v29;
        }

        v23 += 16;
      }

      __memset_chk();
      LODWORD(v30) = 0;
      v99[v24] = 0;
      HIDWORD(v94) = v17 - v24;
LABEL_15:
      while ((v30 & 0x80000000) == 0)
      {
        v31 = *(v22 + 64);
        if (v30 >= v31)
        {
          break;
        }

        v32 = 0;
        v33 = v30 + HIDWORD(v94);
        if (v30 + HIDWORD(v94) >= v31)
        {
          v34 = *(v22 + 64);
        }

        else
        {
          v34 = v30 + HIDWORD(v94);
        }

        v35 = *(v22 + 28) & ~(*(v22 + 28) >> 31);
        abs_split = v34;
        while (v32 != v35)
        {
          for (i = v34; i > v30; --i)
          {
            v38 = OUTLINED_FUNCTION_3_60();
            if (can_split_stream_line(v38, v39, i))
            {
              break;
            }
          }

          if (abs_split >= i)
          {
            abs_split = i;
          }

          ++v32;
        }

        if (*(v22 + 68))
        {
          for (j = 0; j < rb_lines(*(v22 + 48)); ++j)
          {
            rb_width(*(v22 + 48));
            OUTLINED_FUNCTION_17_39();
            if (v41 == v42)
            {
              rb_width(*(v22 + 48));
            }

            OUTLINED_FUNCTION_3_60();
            if (abs_split >= prev_abs_split())
            {
              rb_width(*(v22 + 48));
              OUTLINED_FUNCTION_17_39();
              if (v41 == v42)
              {
                rb_width(*(v22 + 48));
              }

              OUTLINED_FUNCTION_3_60();
              abs_split = prev_abs_split();
            }
          }
        }

        v43 = rb_lines(*(v22 + 56));
        if (v43 >= 1)
        {
          for (k = 0; ; ++k)
          {
            v43 = rb_lines(*(v22 + 56));
            if (k >= v43)
            {
              break;
            }

            rb_width(*(v22 + 56));
            OUTLINED_FUNCTION_17_39();
            if (v41 == v42)
            {
              rb_width(*(v22 + 56));
            }

            OUTLINED_FUNCTION_3_60();
            if (abs_split >= prev_ptr_split())
            {
              rb_width(*(v22 + 56));
              OUTLINED_FUNCTION_17_39();
              if (v41 == v42)
              {
                rb_width(*(v22 + 56));
              }

              OUTLINED_FUNCTION_3_60();
              abs_split = prev_ptr_split();
            }
          }
        }

        if (abs_split == v30)
        {
          if (v33 >= *(v22 + 64))
          {
            abs_split = *(v22 + 64);
          }

          else
          {
            abs_split = v30 + HIDWORD(v94);
          }
        }

        v51 = 0;
        while (1)
        {
          v52 = *(v22 + 28);
          if (v51 >= v52)
          {
            break;
          }

          v53 = *(v22 + 32);
          if (*(v53 + 16 * v51 + 4) < 1)
          {
            v54 = 0;
          }

          else
          {
            heading_string_buf[0] = 32;
            v54 = 1u;
          }

          for (m = 0; ; ++m)
          {
            v56 = *(*(v53 + 16 * v51 + 8) + m);
            if (!v56)
            {
              break;
            }

            heading_string_buf[v54 + m] = v56;
            v53 = *(v22 + 32);
          }

          v57 = v54 + m;
          v58 = (v54 + m);
          v59 = 58;
          do
          {
            heading_string_buf[v58] = v59;
            v58 = v57 + 1;
            LODWORD(v54) = v54 + 1;
            v59 = 32;
            ++v57;
          }

          while (v24 > m + v54);
          heading_string_buf[(m + v54)] = 0;
          OUTLINED_FUNCTION_16_40();
          v61 = *(v60 + 8 * v51);
          OUTLINED_FUNCTION_3_60();
          stream_split = next_stream_split();
          OUTLINED_FUNCTION_3_60();
          v63 = next_stream_split();
          v35 = v95;
          lf_put_disp_line(v95, v96, heading_string_buf, v61, v30, stream_split, v63, 0);
          v43 = checkInterrupt(v95);
          ++v51;
          if (v43)
          {
LABEL_74:
            LODWORD(v30) = -1;
            goto LABEL_15;
          }
        }

        if (*(v22 + 68))
        {
          OUTLINED_FUNCTION_11_48(v43, v44, v45, *(*(*(v22 + 40) + 16) + 8 * v52), v46, v47, v48, v49, v92, HIDWORD(v92), v93, v94);
          v64 = 0;
          while (v64 < rb_lines(*(v22 + 48)))
          {
            rb_gets(*(v22 + 48), v64, 0);
            OUTLINED_FUNCTION_3_60();
            next_abs_split();
            OUTLINED_FUNCTION_3_60();
            v65 = next_abs_split();
            OUTLINED_FUNCTION_8_52(v65, v66, v67, v68, v69, v70, v71, v72, v92);
            ++v64;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        if (rb_lines(*(v22 + 56)))
        {
          OUTLINED_FUNCTION_16_40();
          OUTLINED_FUNCTION_11_48(v74, v75, v76, *(v73 + 8 * *(v22 + 28)), v77, v78, v79, v80, v92, HIDWORD(v92), v93, v94);
          v81 = 0;
          while (v81 < rb_lines(*(v22 + 56)))
          {
            rb_gets(*(v22 + 56), v81, 0);
            OUTLINED_FUNCTION_3_60();
            next_ptr_split();
            OUTLINED_FUNCTION_3_60();
            ptr_split = next_ptr_split();
            OUTLINED_FUNCTION_8_52(ptr_split, v83, v84, v85, v86, v87, v88, v89, v92);
            ++v81;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        vf_puts(v95, v96, "\n", 1);
        v30 = abs_split;
        if (abs_split <= v33)
        {
          v90 = v33;
        }

        else
        {
          v90 = abs_split;
        }

        while (v30 < v33)
        {
          if (*(*(*(*(v22 + 40) + 16) + 8 * *(v22 + 28)) + v30) == 43)
          {
            goto LABEL_15;
          }

          ++v30;
        }

        LODWORD(v30) = v90;
      }

      close_ddisp(v22);
    }
  }

  v91 = *MEMORY[0x277D85DE8];
}

void free_lines(uint64_t a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 32);
    if (v2 > *(a1 + 28))
    {
      break;
    }

    free(*&v4[i]);
    *(*(a1 + 32) + i) = 0;
    ++v2;
  }

  free(v4);
  *(a1 + 32) = 0;
}

void delta_erase(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a2 + 28) > a3)
  {
    if (a4 == a5)
    {
      OUTLINED_FUNCTION_9_52();
      v10 = a3;
      if (*(*(v11 + 8 * a3) + a4) == 124)
      {
        v12 = *(*(a2 + 32) + 16 * a3);
        sync = find_sync(a2, a4);
        if (can_del_sync(a1, v12, sync))
        {
          v14 = *(*(a2 + 32) + 16 * a3);
          v15 = find_sync(a2, a4);
          if (del_sync(a1, v14, v15))
          {
            v16 = OUTLINED_FUNCTION_1_68();
            unregister_sync(v16, v17, a4);
            update_token(a2, a3, (a4 - 1));
          }
        }

LABEL_17:
        OUTLINED_FUNCTION_22_31();
        return;
      }
    }

    else
    {
      v10 = a3;
    }

    v18 = *(*(a2 + 32) + 16 * v10);
    v19 = find_sync(a2, a4);
    v20 = find_sync(a2, a5);
    if (del_two_point(a1, v18, v19, v20))
    {
      v21 = OUTLINED_FUNCTION_1_68();
      v23 = prev_sync(v21, v22, a4);
      v24 = OUTLINED_FUNCTION_1_68();
      v26 = v23;
      v27 = (next_sync(v24, v25, a5) - 1);
      v28 = v23 + 1;
      while (v26 < v27)
      {
        OUTLINED_FUNCTION_9_52();
        v30 = *(*(v29 + 8 * v10) + v26 + 1);
        v31 = OUTLINED_FUNCTION_1_68();
        if (v33 == 124)
        {
          unregister_sync(v31, v32, v28);
        }

        else
        {
          place_char_in_stream(v31, v32, v28, 32);
        }

        ++v28;
        ++v26;
      }
    }

    goto LABEL_17;
  }
}

void unregister_sync(uint64_t a1, int a2, signed int a3)
{
  if (a3 && *(a1 + 64) - 1 != a3)
  {
    place_char_in_stream(a1, a2, a3, 32);
    v5 = 0;
    v6 = *(a1 + 28);
    while (8 * (v6 & ~(v6 >> 31)) != v5)
    {
      v7 = *(*(*(*(a1 + 40) + 16) + v5) + a3);
      v5 += 8;
      if (v7 == 124)
      {
        return;
      }
    }

    place_char(a1, v6, a3, 45);
    v8 = OUTLINED_FUNCTION_1_68();
    sync = find_sync(v8, v9);
    hashDeleteInt(*(a1 + 80), sync);
    hashDeleteInt(*(a1 + 72), a3);
    if (*(a1 + 68))
    {
      rb_strdel(*(a1 + 48), a3);
    }

    if (rb_lines(*(a1 + 56)))
    {
      v11 = *(a1 + 56);

      rb_strdel(v11, a3);
    }
  }
}

unint64_t update_token(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v30 = *MEMORY[0x277D85DE8];
  sync = prev_sync(a1, a2, a3);
  v7 = OUTLINED_FUNCTION_1_68();
  v9 = next_sync(v7, v8, v3);
  v10 = *(*(a1 + 32) + 16 * v4);
  v11 = find_sync(a1, v9);
  result = prev_token(v10, v11);
  if (result)
  {
    v13 = result;
    v14 = v4;
    v15 = sync + 1;
    for (i = v15; ; ++i)
    {
      v17 = OUTLINED_FUNCTION_1_68();
      if (i >= v9)
      {
        break;
      }

      place_char_in_stream(v17, v18, i, 32);
    }

    v19 = OUTLINED_FUNCTION_21_32(v17, v18, v15);
    if (v20)
    {
LABEL_13:
      result = 0;
    }

    else
    {
      v21 = v19;
      v22 = 16 * v4;
      v23 = v19;
      while (v14 < *(a1 + 28))
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + v22);
        if (v25 != *(v24 + 16 * v4))
        {
          break;
        }

        v26 = field_value(v25, v13, *(v24 + v22 + 4), v29);
        inserted = insert_token_name(a1, v14, v21, v26);
        if (inserted == -1)
        {
          goto LABEL_13;
        }

        if (v23 <= inserted)
        {
          v23 = inserted;
        }

        ++v14;
        v22 += 16;
      }

      OUTLINED_FUNCTION_21_32(a1, v4, v23);
      if (v20)
      {
        result = 0;
      }

      else
      {
        result = 1;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t prev_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 28);
  if (a3 >= -1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a3;
  }

  if (v4 <= a2)
  {
    while ((a3 & 0x80000000) == 0)
    {
      if (*(*(*(*(a1 + 40) + 16) + 8 * v4) + a3) == 43)
      {
        return OUTLINED_FUNCTION_10_51(result, a2, a3);
      }

      a3 = (a3 - 1);
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) != 124)
    {
      a3 = (a3 - 1);
      if ((a3 & 0x80000000) != 0)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_10_51(result, a2, a3);
  }

  return result;
}

uint64_t next_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 28);
  v4 = *(*(a1 + 40) + 16);
  result = a3;
  if (v3 <= a2)
  {
    v7 = *(v4 + 8 * v3);
    while (*(v7 + result) && *(v7 + result) != 43)
    {
      ++result;
    }
  }

  else
  {
    v6 = *(v4 + 8 * a2);
    while (*(v6 + result) && *(v6 + result) != 124)
    {
      ++result;
    }
  }

  return result;
}

void place_char_in_stream(uint64_t a1, int a2, int a3, char a4)
{
  v6 = a2;
  v8 = a2;
  v9 = a2 - 1;
  v10 = 16 * a2;
  while (1)
  {
    v11 = __OFSUB__(v6, 1);
    if (--v6 < 0 != v11 || *(*(a1 + 32) + 16 * v9) != *(*(a1 + 32) + v10))
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_20_34();
    place_char(v12, v13, a3, a4);
    --v9;
  }

  for (i = v10; v8 < *(a1 + 28) && *(*(a1 + 32) + i) == *(*(a1 + 32) + v10); i += 16)
  {
    place_char(a1, v8++, a3, a4);
  }

  OUTLINED_FUNCTION_22_31();
}

uint64_t insert_spaces(uint64_t a1, int a2, uint64_t a3, int a4)
{
  for (i = 0; ; ++i)
  {
    v9 = *(a1 + 28);
    if (i >= v9)
    {
      break;
    }

    if (a2 == i)
    {
      v10 = *(a1 + 40);
      v11 = a2;
      space_or_sync = a3;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_20_34();
      space_or_sync = next_space_or_sync(v13, v14, a3);
      v10 = *(a1 + 40);
      v11 = i;
    }

    result = rb_inscn(v10, v11, space_or_sync, 32, a4);
    if (!result)
    {
      return result;
    }
  }

  result = rb_inscn(*(a1 + 40), v9, a3, 45, a4);
  if (result)
  {
    shift_table_right(*(a1 + 72), a3, *(a1 + 64), a4);
    *(a1 + 64) += a4;
    result = rb_push(*(a1 + 48), a3, a4);
    if (result)
    {
      return rb_push(*(a1 + 56), a3, a4) != 0;
    }
  }

  return result;
}

uint64_t next_space_or_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3); ; ++i)
  {
    v4 = *i;
    if (v4 != 39)
    {
      break;
    }

    if (i[1] == 32 && i[2] == 39)
    {
      LODWORD(a3) = a3 + 2;
      i += 2;
    }

LABEL_10:
    a3 = (a3 + 1);
  }

  if (*i && v4 != 32 && v4 != 124)
  {
    goto LABEL_10;
  }

  return OUTLINED_FUNCTION_10_51(a1, a2, a3);
}

_DWORD *shift_table_right(_DWORD *result, int a2, unsigned int a3, int a4)
{
  v6 = result;
  v7 = a4 + a2;
  while ((a4 + a3) >= v7)
  {
    result = hashMoveInt(v6, a3, a4 + a3);
    if (result)
    {
      *result = a4 + a3;
    }

    --a3;
  }

  return result;
}

uint64_t place_sync(uint64_t a1, uint64_t a2, int a3, signed int a4)
{
  if (preceded_by_token(a2, a3))
  {
    v8 = OUTLINED_FUNCTION_6_55();
    if (followed_by_token(v8, v9))
    {
      return 0;
    }

    v20 = *(*(a2 + 32) + 16 * a3);
    v21 = OUTLINED_FUNCTION_6_55();
    sync = next_sync(v21, v22, v23);
    find_sync(a2, sync);
    v16 = OUTLINED_FUNCTION_20_34();
    v19 = 1;
  }

  else
  {
    v11 = *(*(a2 + 32) + 16 * a3);
    v12 = OUTLINED_FUNCTION_6_55();
    v15 = prev_sync(v12, v13, v14);
    find_sync(a2, v15);
    v16 = OUTLINED_FUNCTION_20_34();
    v19 = 0;
  }

  v25 = ins_sync(v16, v17, v18, v19);
  place_char_in_stream(a2, a3, a4, 124);
  OUTLINED_FUNCTION_9_52();
  if (*(*(v26 + 8 * *(a2 + 28)) + a4) == 43)
  {
    return 1;
  }

  result = new_sync(a2, v25, a4);
  if (result)
  {
    if (!*(a2 + 68))
    {
      return 1;
    }

    v27 = absoluteSyncNum(a1, v25);
    __sprintf_chk(v28, 0, 6uLL, "%i", v27);
    result = rb_stradd(*(a2 + 48), a4, v28);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL preceded_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_47(a1, a2);
  return *(v2 + prev_non_blank(v3, v5, (v4 - 1))) != 124;
}

BOOL followed_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_12_47(a1, a2);
  return *(v2 + next_non_blank(v3, v5, (v4 + 1))) != 124;
}

void *new_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!hashLookupInt(*(a1 + 72), a3) && !hashLookupInt(*(a1 + 80), a2))
  {
    v8 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
    v6 = v8;
    if (!v8)
    {
      return v6;
    }

    *v8 = a3;
    *(v8 + 1) = a2;
    if (hashInsertInt(*(a1 + 72), a3, v8) && hashInsertInt(*(a1 + 80), a2, v6))
    {
      place_char(a1, *(a1 + 28), a3, 43);
      return v6;
    }

    free(v6);
  }

  return 0;
}

void insert_token(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, char *a5, uint64_t a6)
{
  v10 = *(*(a2 + 32) + 16 * a3);
  sync = find_sync(a2, a4);
  if (ins_tok_named(a1, v10, a6, a5, sync) && (v12 = OUTLINED_FUNCTION_4_56(), update_token(v12, v13, v14)))
  {
    v15 = OUTLINED_FUNCTION_4_56();
    next_sync(v15, v16, a4);
    OUTLINED_FUNCTION_22_31();

    change_field(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_22_31();
  }
}

void change_field(uint64_t *a1, uint64_t a2, int a3, signed int a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a2 + 32) + 16 * a3);
  v11 = *v10;
  v12 = *(v10 + 1);
  sync = find_sync(a2, a4);
  if (set_fld_value(a1, v11, v12, a6, a5, sync))
  {
    v14 = OUTLINED_FUNCTION_1_68();
    v17 = prev_sync(v14, v15, v16) + 1;
    for (i = v17; ; ++i)
    {
      v19 = OUTLINED_FUNCTION_1_68();
      if (i >= a4)
      {
        break;
      }

      place_char(v19, v20, i, 32);
    }

    OUTLINED_FUNCTION_21_32(v19, v20, v17);
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_1_68();
      if (insert_token_name(v22, v23, v24, a5) != -1)
      {
        v25 = OUTLINED_FUNCTION_1_68();
        OUTLINED_FUNCTION_21_32(v25, v26, v27);
      }
    }
  }

  OUTLINED_FUNCTION_22_31();
}

uint64_t insert_token_name(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  for (i = (a4 + 1); ; ++i)
  {
    v7 = *(i - 1);
    if (!v7)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_40();
    if (*(*(v8 + 8 * a2) + v5) == 124)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_7_53();
    place_char(v9, v10, v11, v12);
    ++v5;
  }

  v7 = 1;
LABEL_8:
  while (v7)
  {
    v13 = OUTLINED_FUNCTION_7_53();
    if (!insert_space_0(v13, v14, v15))
    {
      return 0xFFFFFFFFLL;
    }

    v16 = *(i - 1);
    v17 = OUTLINED_FUNCTION_7_53();
    place_char(v17, v18, v19, v20);
    v21 = *i++;
    v7 = v21;
    v5 = (v5 + 1);
  }

  return v5;
}

uint64_t col_prev_sync(uint64_t a1, uint64_t a2)
{
  if (a2 >= -1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a2;
  }

  if ((a2 & 0x80000000) == 0)
  {
    while (*(*(*(*(a1 + 40) + 16) + 8 * *(a1 + 28)) + a2) == 45)
    {
      a2 = (a2 - 1);
      if ((a2 & 0x80000000) != 0)
      {
        return result;
      }
    }

    return a2;
  }

  return result;
}

uint64_t col_next_sync(uint64_t a1, unsigned int a2)
{
  v2 = (*(*(*(a1 + 40) + 16) + 8 * *(a1 + 28)) + a2);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (v4 != 45)
    {
      break;
    }

    ++a2;
  }

  if (v3 == 43)
  {
    return a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t prev_non_blank(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 28);
  if (v3 <= a2)
  {
    if ((a3 & 0x80000000) == 0 && v3 == a2)
    {
      while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) == 45)
      {
        v5 = a3 <= 0;
        a3 = (a3 - 1);
        if (v5)
        {
          a3 = 0xFFFFFFFFLL;
          return OUTLINED_FUNCTION_10_51(a1, a2, a3);
        }
      }
    }
  }

  else
  {
    if (a3 >= -1)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
LABEL_8:
      a3 = v4;
    }

    else
    {
      while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) == 32)
      {
        a3 = (a3 - 1);
        if ((a3 & 0x80000000) != 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_10_51(a1, a2, a3);
}

uint64_t next_non_blank(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 28);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      v6 = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3);
      LODWORD(a3) = a3 + 1;
      do
      {
        v7 = *v6--;
        a3 = (a3 - 1);
      }

      while (v7 == 45);
    }
  }

  else
  {
    v4 = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3);
    LODWORD(a3) = a3 - 1;
    do
    {
      v5 = *v4++;
      a3 = (a3 + 1);
    }

    while (v5 == 32);
  }

  return OUTLINED_FUNCTION_10_51(a1, a2, a3);
}

uint64_t num_to_sync(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i < *(a2 + 64); ++i)
  {
    OUTLINED_FUNCTION_9_52();
    if (*(*(v7 + 8 * *(a2 + 28)) + i) == 43)
    {
      sync = find_sync(a2, i);
      if (absoluteSyncNum(a1, sync) == a3)
      {
        return sync;
      }
    }
  }

  return 0;
}

BOOL bet_tokens()
{
  OUTLINED_FUNCTION_13_47();
  result = preceded_by_token(v0, v1);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_7_53();
    return followed_by_token(v3, v4);
  }

  return result;
}

uint64_t ensure_spaces(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a3;
  while (a4 >= 1)
  {
    if (*(*(*(*(a1 + 40) + 16) + 8 * a2) + v5) != 32)
    {
      if (insert_spaces(a1, a2, v5, a4))
      {
        return (a4 + v5);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    ++v5;
    --a4;
  }

  return v5;
}

BOOL register_sync(uint64_t a1, int a2, uint64_t a3, signed int a4)
{
  place_char(a1, a2, a4, 124);
  OUTLINED_FUNCTION_16_40();
  return *(*(v7 + 8 * *(a1 + 28)) + a4) == 43 || new_sync(a1, a3, a4) != 0;
}

uint64_t insert_space_0(uint64_t a1, int a2, int a3)
{
  for (i = 0; ; ++i)
  {
    v7 = *(a1 + 28);
    if (i >= v7)
    {
      break;
    }

    if (a2 == i)
    {
      v8 = *(a1 + 40);
      v9 = a2;
      space_or_sync = a3;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_6_55();
      space_or_sync = next_space_or_sync(v11, v12, v13);
      v8 = *(a1 + 40);
      v9 = i;
    }

    result = rb_insc(v8, v9, space_or_sync, 32);
    if (!result)
    {
      return result;
    }
  }

  result = rb_insc(*(a1 + 40), v7, a3, 45);
  if (result)
  {
    shift_table_right(*(a1 + 72), a3, *(a1 + 64), 1);
    ++*(a1 + 64);
    result = rb_push(*(a1 + 48), a3, 1);
    if (result)
    {
      return rb_push(*(a1 + 56), a3, 1) != 0;
    }
  }

  return result;
}

uint64_t prev_abs_split()
{
  OUTLINED_FUNCTION_0_75();
  while (v0 > v1)
  {
    OUTLINED_FUNCTION_2_65();
    can_split_abs_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 - 1);
  }

  return v0;
}

uint64_t prev_ptr_split()
{
  OUTLINED_FUNCTION_0_75();
  while (v0 > v1)
  {
    OUTLINED_FUNCTION_2_65();
    can_split_ptr_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 - 1);
  }

  return v0;
}

void lf_put_disp_line(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v12 = *(a4 + a7);
  *(a4 + a7) = 0;
  v13 = a4 + a6;
  if (!a8)
  {
    goto LABEL_6;
  }

    ;
  }

  if (*i)
  {
LABEL_6:
    v15 = OUTLINED_FUNCTION_4_56();
    vf_puts(v15, v16, v17, 0);
    for (j = (a6 - a5) & ~((a6 - a5) >> 31); ; --j)
    {
      v19 = OUTLINED_FUNCTION_4_56();
      if (!j)
      {
        break;
      }

      vf_puts(v19, v20, " ", 0);
    }

    vf_puts(v19, v20, v13, 0);
    v21 = OUTLINED_FUNCTION_4_56();
    vf_puts(v21, v22, v23, 0);
  }

  *(a4 + a7) = v12;
  OUTLINED_FUNCTION_22_31();
}

uint64_t next_stream_split()
{
  OUTLINED_FUNCTION_0_75();
  while (v0 < v1)
  {
    v2 = OUTLINED_FUNCTION_2_65();
    if (can_split_stream_line(v2, v3, v4))
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

uint64_t next_abs_split()
{
  OUTLINED_FUNCTION_0_75();
  while (v0 < v1)
  {
    OUTLINED_FUNCTION_2_65();
    can_split_abs_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

uint64_t next_ptr_split()
{
  OUTLINED_FUNCTION_0_75();
  while (v0 < v1)
  {
    OUTLINED_FUNCTION_2_65();
    can_split_ptr_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

BOOL can_split_stream_line(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 64) == a3)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_12_47(a1, a2);
  v8 = *(v3 + v7);
  if (v8 == 124)
  {
    return 1;
  }

  if (v8 == 32)
  {
    return *(v3 + next_non_blank(v5, v6, v7)) == 124;
  }

  return 0;
}

void can_split_abs_line()
{
  OUTLINED_FUNCTION_13_47();
  if (rb_width(*(v2 + 48)) != v0 && v0)
  {
    OUTLINED_FUNCTION_14_45(*(v1 + 48));
    if (!v4)
    {
      v5 = *(v3 - 1) == 32;
    }
  }
}

void can_split_ptr_line()
{
  OUTLINED_FUNCTION_13_47();
  if (rb_width(*(v2 + 56)) != v0 && v0)
  {
    OUTLINED_FUNCTION_14_45(*(v1 + 56));
    if (!v4)
    {
      v5 = *(v3 - 1) == 32;
    }
  }
}

void OUTLINED_FUNCTION_8_52(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  lf_put_disp_line(a5, a7, va, v9, v10, v11, a1, 1);
}

void OUTLINED_FUNCTION_11_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  lf_put_disp_line(a8, a10, va, a4, v12, v12, v13, 0);
}

uint64_t vardesc(uint64_t a1, __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = a3 | (a2 << 8);
  if ((a2 & 0x80) != 0)
  {
    return *(a1 + 192) + 24 * ((a3 | (a2 << 8)) & 0x3FFF) + 9144;
  }

  v5 = a4;
  v6 = *(a1 + 192);
  if (!a4)
  {
    v5 = *(v6 + 8104);
LABEL_8:
    result = *(*(v6 + 8112) + 8);
    if (!result)
    {
      return result;
    }

    return *(v5 + 16) + 24 * (v4 & 0x3FFF);
  }

  if (*(v6 + 8104) == a4)
  {
    goto LABEL_8;
  }

  result = vonstack(a1, a4);
  if (result)
  {
    return *(v5 + 16) + 24 * (v4 & 0x3FFF);
  }

  return result;
}

void *rb_alloc(int a1, int a2)
{
  LODWORD(v3) = a1;
  v4 = malloc_type_malloc(0x18uLL, 0x1080040216EE090uLL);
  v5 = v4;
  if (v4)
  {
    if (a2 >= 1)
    {
      v6 = 96 * (a2 / 0x60u) + 96;
    }

    else
    {
      v6 = 96;
    }

    if (v3 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    *v4 = v3;
    v4[1] = v6;
    v4[2] = -1;
    v7 = malloc_type_calloc(v3, 8uLL, 0x10040436913F5uLL);
    v5[2] = v7;
    if (v7)
    {
      for (i = 0; v3 != i; ++i)
      {
        v9 = malloc_type_calloc((v6 + 1), 1uLL, 0x100004077774924uLL);
        *(v5[2] + 8 * i) = v9;
        if (!v9)
        {
          while (1)
          {
            v10 = v5[2];
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            free(v10[i]);
            LODWORD(i) = i - 1;
          }

          free(v10);
          goto LABEL_16;
        }

        init_line(*(v5[2] + 8 * i), v6);
      }
    }

    else
    {
LABEL_16:
      free(v5);
      return 0;
    }
  }

  return v5;
}

void *init_line(void *a1, int a2)
{
  result = memset(a1, 32, a2);
  *(a1 + a2) = 0;
  return result;
}

void rb_free(void *a1)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v3 = a1[2];
      if (i >= *a1)
      {
        break;
      }

      free(v3[i]);
    }

    free(v3);

    free(a1);
  }
}

uint64_t rb_putc(uint64_t a1, int a2, int a3, char a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, a3);
    if (result)
    {
      *(*(*(a1 + 16) + 8 * a2) + a3) = a4;
      v9 = *(a1 + 8);
      if (v9 <= a3)
      {
        v9 = a3;
      }

      *(a1 + 8) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t expand_lines(int *a1, int a2)
{
  if (*a1 > a2)
  {
    return 1;
  }

  v5 = a2 + 1;
  result = malloc_type_realloc(*(a1 + 2), 8 * (a2 + 1), 0x10040436913F5uLL);
  if (result)
  {
    *(a1 + 2) = result;
    for (i = *a1; ; ++i)
    {
      if (i > a2)
      {
        *a1 = v5;
        return 1;
      }

      v7 = malloc_type_calloc(a1[1] + 1, 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2) + 8 * i) = v7;
      if (!v7)
      {
        break;
      }

      init_line(*(*(a1 + 2) + 8 * i), a1[1]);
    }

    while (1)
    {
      v8 = *a1;
      v9 = *(a1 + 2);
      if (i < v8)
      {
        break;
      }

      free(v9[i--]);
    }

    v10 = malloc_type_realloc(v9, 8 * v8, 0x10040436913F5uLL);
    result = 0;
    *(a1 + 2) = v10;
  }

  return result;
}

uint64_t expand_cols(int *a1, int a2)
{
  if (a1[1] > a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 96 * ((a2 + 1) / 96);
  v6 = v5 + 96;
  v7 = v5 + 97;
  while (1)
  {
    v8 = *a1;
    if (v4 >= v8)
    {
      break;
    }

    v9 = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), v7, 0x100004077774924uLL);
    if (!v9)
    {
      LODWORD(v8) = *a1;
      break;
    }

    *(*(a1 + 2) + 8 * v4) = v9;
    init_line((*(*(a1 + 2) + 8 * v4++) + a1[1]), v6 - a1[1]);
  }

  if (v8 <= v4)
  {
    a1[1] = v6;
    return 1;
  }

  else
  {
    for (; (v4 & 0x80000000) == 0; LODWORD(v4) = v4 - 1)
    {
      *(*(a1 + 2) + 8 * v4) = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), a1[1] + 1, 0x100004077774924uLL);
    }

    return 0;
  }
}

uint64_t rb_insc(uint64_t a1, int a2, int a3, char a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, a3);
    if (result)
    {
      v9 = *(*(a1 + 16) + 8 * a2);
      v10 = *(a1 + 4);
      if (*(v9 + v10 - 1) != 32)
      {
        result = expand_cols(a1, v10 + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(*(a1 + 16) + 8 * a2);
        LODWORD(v10) = *(a1 + 4);
      }

      v11 = (v9 + a3);
      memmove(v11 + 1, v11, v10 + ~a3);
      *v11 = a4;
      ++*(a1 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t rb_inscn(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = v11 - a5;
    if (v11 >= -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = *(a1 + 8);
    }

    if ((v11 & 0x80000000) == 0)
    {
      while (*(*(*(a1 + 16) + 8 * a2) + v11) == 32 && v11 > v12)
      {
        if (--v11 < 0)
        {
          goto LABEL_13;
        }
      }

      v13 = v11;
    }

LABEL_13:
    result = expand_cols(a1, v13 + a5);
    if (result)
    {
      v15 = (*(*(a1 + 16) + 8 * a2) + a3);
      if ((v11 & 0x80000000) == 0)
      {
        memmove(&v15[a5], v15, v13 - a3 + 1);
      }

      memset(v15, a4, a5);
      v16 = *(a1 + 8);
      if (v16 <= v13 + a5)
      {
        v16 = v13 + a5;
      }

      *(a1 + 8) = v16;
      return 1;
    }
  }

  return result;
}

uint64_t rb_puts(uint64_t a1, int a2, int a3, char *a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v9 = 0;
    v10 = a3;
    while (*a4)
    {
      result = expand_cols(a1, a3 + v9);
      if (!result)
      {
        return result;
      }

      v11 = *a4++;
      *(*(*(a1 + 16) + 8 * a2) + v10) = v11;
      ++v9;
      ++v10;
    }

    v12 = *(a1 + 8);
    if (v12 < v9)
    {
      v12 = v9 - 2;
    }

    *(a1 + 8) = v12;
    return 1;
  }

  return result;
}

uint64_t rb_puts_v(int *a1, int a2, int a3, char *a4)
{
  result = expand_cols(a1, a3);
  if (result)
  {
    while (*a4)
    {
      result = expand_lines(a1, a2);
      if (!result)
      {
        return result;
      }

      v9 = *a4++;
      OUTLINED_FUNCTION_1_69(v9);
    }

    v10 = 32;
    while (a2 < *a1)
    {
      OUTLINED_FUNCTION_1_69(v10);
    }

    v11 = a1[2];
    if (v11 <= a3)
    {
      v11 = a3;
    }

    a1[2] = v11;
    return 1;
  }

  return result;
}

uint64_t rb_stradd(int *a1, int a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = 0;
  v7 = a2 - 1;
  v8 = a2;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    v10 = a1[1];
    v11 = v4 < 1 || v10 < v4;
    if (v11 || (v12 = OUTLINED_FUNCTION_0_76(), rb_getc(v12, v13, v7) == 32))
    {
      v14 = v10;
      if (v10 <= v4)
      {
        break;
      }

      v15 = v8;
      v16 = a3;
      while (*v16++)
      {
        if (v15 >= v14 || (v18 = OUTLINED_FUNCTION_0_76(), rb_getc(v18, v19, v15) != 32))
        {
          if (v15 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

        ++v15;
      }

      if (v15 >= v14)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_0_76();
      if (rb_getc(v20, v21, v15) == 32)
      {
        break;
      }
    }

LABEL_20:
    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

LABEL_23:
  while (*a3++)
  {
    v22 = OUTLINED_FUNCTION_0_76();
    result = rb_putc(v22, v23, v4++, v24);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

unsigned int *rb_lines(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t rb_getc(uint64_t a1, int a2, int a3)
{
  if (*a1 <= a2 || *(a1 + 4) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 16) + 8 * a2) + a3);
  }
}

uint64_t rb_strdel(uint64_t result, int a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *v3; v4 < i; i = 0)
  {
    result = rb_getc(v3, v4, a2);
    if (result != 32 && (!a2 || *(*(*(v3 + 2) + 8 * v4) + v5 - 1) == 32))
    {
      for (j = v5; *(*(*(v3 + 2) + 8 * v4) + j) != 32; ++j)
      {
        result = rb_putc(v3, v4, j, 32);
      }
    }

    ++v4;
    if (v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t rb_push(int *a1, int a2, int a3)
{
  v6 = 0;
  v7 = a2;
  v8 = a2 + 1;
  v9 = a2 + 1;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    if (a2)
    {
      v11 = OUTLINED_FUNCTION_0_76();
      v13 = rb_getc(v11, v12, a2);
      v14 = a2;
      if (v13 != 32)
      {
        v15 = *(*(a1 + 2) + 8 * v6);
        v14 = a2;
        if (*(v15 + v7 - 1) != 32)
        {
          v16 = a1[1];
          if (v16 <= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = a1[1];
          }

          v18 = v9;
          v14 = a2;
          while (v18 < v16)
          {
            v19 = *(v15 + v18);
            ++v14;
            ++v18;
            if (v19 == 32)
            {
              goto LABEL_16;
            }
          }

          v14 = v17;
        }
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
    if (v14 < a1[1])
    {
      v20 = OUTLINED_FUNCTION_0_76();
      result = rb_inscn(v20, v21, v22, 32, a3);
      if (!result)
      {
        return result;
      }
    }

    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 1;
}

uint64_t rb_gets(uint64_t a1, int a2, int a3)
{
  if (*a1 > a2 && *(a1 + 4) >= a3)
  {
    return *(*(a1 + 16) + 8 * a2) + a3;
  }

  else
  {
    return 0;
  }
}

uint64_t rb_width(uint64_t result)
{
  if (result)
  {
    return (*(result + 8) + 1);
  }

  return result;
}

uint64_t calcMidline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 100)
  {
    v3 = 100;
  }

  *(a3 + 2) = MidlineVals[v3];
  return OUTLINED_FUNCTION_0_77();
}

uint64_t f0_stepi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 2);
  v7 = *(a5 + 2) * *(a4 + 2);
  if (v7 + v6 < 1)
  {
    LOWORD(v7) = 20 - v6;
  }

  if (v7)
  {
    v8 = v7;
    if (v6 >= 4208)
    {
      v9 = 4208;
    }

    else
    {
      v9 = *(a3 + 2);
    }

    v10 = v9 & ~(v9 >> 31);
    v11 = v10 >> 4;
    v12 = v10 & 0xF;
    if (v12)
    {
      v13 = LnTable[v11 + 1];
      v14 = LnTable[v11];
      v11 = v14 + (((v13 - v14) * v12) >> 4);
    }

    else
    {
      LOWORD(v11) = LnTable[v11];
    }

    v16 = v8 + v6;
    if (v16 >= 4208)
    {
      v16 = 4208;
    }

    v17 = v16 & ~(v16 >> 31);
    v18 = v17 >> 4;
    v19 = v17 & 0xF;
    if (v19)
    {
      v20 = LnTable[v18 + 1];
      v21 = LnTable[v18];
      v18 = v21 + (((v20 - v21) * v19) >> 4);
    }

    else
    {
      LOWORD(v18) = LnTable[v18];
    }

    v15 = (v11 - v18) / *(a2 + 2);
  }

  else
  {
    LOWORD(v15) = 0;
  }

  *(a6 + 2) = v15;
  return OUTLINED_FUNCTION_0_77();
}

uint64_t calcIntoni(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(v5) = *(a2 + 2);
  if (*(a3 + 2))
  {
    v6 = *(a4 + 2) * *(a3 + 2);
    if (v6 >= 1023)
    {
      v6 = 1023;
    }

    v5 = (ExpTable[v6 & ~(v6 >> 31)] * *(a2 + 2)) >> 14;
    if (v5 >= 0x7FFF)
    {
      LOWORD(v5) = 0x7FFF;
    }
  }

  *(a5 + 2) = v5;
  return OUTLINED_FUNCTION_0_77();
}

uint64_t scaleValue100i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v5 >= *(a4 + 2) * *(a3 + 2) / 100)
  {
    v5 = *(a4 + 2) * *(a3 + 2) / 100;
  }

  if (v5 >= v4)
  {
    LOWORD(v4) = v5;
  }

  *(a4 + 2) = v4;
  return OUTLINED_FUNCTION_0_77();
}

uint64_t calcSpeedFactori(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 150)
  {
    v3 = 150;
  }

  *(a3 + 8) = SpeedTable[v3];
  return OUTLINED_FUNCTION_0_77();
}

uint64_t modulate_pwindi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(a3 + 2) = (PwindModTable[v5] * *(a3 + 2)) >> 7;
  v6 = v5 + 95;
  v7 = 105 - v5;
  if (v4 <= 4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a4 + 2) = v8 * *(a4 + 2) / 100;
  return OUTLINED_FUNCTION_0_77();
}

uint64_t modulo(uint64_t a1, double *a2, double *a3, double *a4)
{
  v8 = 0;
  v9 = 0;
  getDeltaCcodeParm(a2, &v9, -3);
  getDeltaCcodeParm(a3, &v8, -3);
  v7 = v9 % v8;
  setDeltaCcodeReturnValue(&v7, -3, a4);
  return 0;
}

uint64_t IntLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 5120)
  {
    v3 = 5120;
  }

  v4 = LogTab[v3 >> 5];
  *(a3 + 2) = v4 + (((LogTab[(v3 >> 5) + 1] - v4) * (v3 & 0x1Fu)) >> 5);
  return OUTLINED_FUNCTION_0_77();
}

uint64_t IntExp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2);
  if (v3 <= 2400)
  {
    v3 = 2400;
  }

  if (v3 >= 5200)
  {
    v3 = 5200;
  }

  v4 = (v3 - 2400) >> 4;
  v5 = ExpTab[v4];
  *(a3 + 2) = v5 + (((v3 & 0xFu) * (ExpTab[v4 + 1] - v5)) >> 4);
  return OUTLINED_FUNCTION_0_77();
}

_DWORD *clr_vector(_DWORD *result, uint64_t a2)
{
  for (i = a2 & ~(a2 >> 63); i; --i)
  {
    *result++ = 0;
  }

  return result;
}

__int16 *mul1_vector(__int16 *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float *mulf_vector(float *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float parallel0_filter(float *a1, float *a2, uint64_t a3)
{
  *(a2 - 2) = a1[13];
  v3 = a1 + 12;
  *(a2 - 1) = a1[12];
  v4 = a2;
  for (i = a3 & ~(a3 >> 63); i; --i)
  {
    *v4 = (a1[2] * *(v4 - 2)) + (a1[1] * *(v4 - 1));
    ++v4;
  }

  v6 = &a2[a3 & ~(a3 >> 63)];
  if (a3 > 1)
  {
    v3 = v6 - 2;
  }

  a1[13] = *v3;
  result = *(v6 - 1);
  a1[12] = result;
  return result;
}

uint64_t output_speech(uint64_t result, uint64_t a2)
{
  v2 = result + 0x2000;
  if (*(result + 8866))
  {
    v6 = a2;
    v3 = (result + 2048);
    v7 = result + 2048;
    v4 = *(result + 148);
    if (v4 != 1.0)
    {
      for (i = a2 & ~(a2 >> 63); i; --i)
      {
        *v3 = (v4 * *v3);
        ++v3;
      }
    }

    if (*(result + 3720) == 2)
    {
      result = (*(result + 3728))(*(result + 8), &v6);
      *(v2 + 470) = result;
    }
  }

  return result;
}

double klatt_new(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x22A8uLL, 0x10F20402EFE26D7uLL);
  if (v2)
  {
    *v2 = KlattVersion;
    *(v2 + 1) = a1;
    *(v2 + 38) = 0;
    *(v2 + 1588) = 0;
    *(v2 + 4330) = 0;
    result = 0.0;
    *(v2 + 6504) = 0u;
    *(v2 + 817) = 0;
    *(v2 + 819) = 0;
    *(v2 + 818) = 0;
    v2[8866] = 1;
  }

  return result;
}

void klatt_delete(void *a1)
{
  if (verifyKlattHandle(a1))
  {

    free(a1);
  }
}

void *KlattSetConstParms(uint64_t a1, const void *a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 152) == 2)
    {
      KlattClose(a1);
    }

    result = memcpy((a1 + 3648), a2, 0x58uLL);
    v5 = *(a1 + 3652);
    *(a1 + 6412) = 1000.0 / v5;
    *(a1 + 6408) = v5 * 0.001;
    v6 = *(a1 + 3664);
    *(a1 + 8656) = v6;
    *(a1 + 8658) = v6;
    *(a1 + 6392) = 0;
    v7 = ((1000.0 / v5) * 3.1416) * 0.001;
    *(a1 + 6400) = v7;
    *(a1 + 6404) = v7 + v7;
    *(a1 + 8160) = *(a1 + 3660);
    v8 = *(a1 + 3680);
    v9 = vcvtq_s64_f64(vcvt_hight_f64_f32(v8));
    v10 = vcvtq_s64_f64(vcvtq_f64_f32(*v8.f32));
    v11 = vextq_s8(v10, v9, 8uLL);
    v10.i64[1] = v9.i64[1];
    *(a1 + 8865) = 0;
    *(a1 + 8216) = v11;
    *(a1 + 8200) = v10;
    if (v5 == 11025.0)
    {
      v12 = 1;
    }

    else if (v5 == 16000.0)
    {
      v12 = 2;
    }

    else
    {
      if (v5 == 8000.0)
      {
        *(a1 + 8868) = 0;
        goto LABEL_9;
      }

      v12 = 3;
    }

    *(a1 + 8868) = v12;
LABEL_9:
    *(a1 + 24) = 1;
  }

  return result;
}

BOOL KlattClose(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 152) = 0;
  }

  return result;
}

BOOL KlattOpen(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 24) != 1)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Call KlattSetConstParms at least once before KlattOpen!");
      return 0;
    }

    if (*(a1 + 152) == 2)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Synthesizer is already open!");
      return 0;
    }

    *(a1 + 152) = 2;
    *(a1 + 4544) = a1 + 3744;
    *(a1 + 6168) = a1 + 5364;
    *(a1 + 6364) = 0;
    v3 = (a1 + 240);
    v4 = 21;
    do
    {
      *(v3 - 2) = 0;
      *(v3 - 28) = 0;
      *(v3 - 8) = 0;
      --v4;
      *v3 = 0;
      v3 += 11;
    }

    while (v4);
    *(a1 + 16) = 0;
    *(a1 + 6360) = 0;
    *(a1 + 6352) = 0;
    *(a1 + 6504) = 0u;
    *(a1 + 6536) = 0;
    *(a1 + 6552) = 0;
    *(a1 + 6544) = 0;
    result = 1;
    *(a1 + 8866) = 1;
    *(a1 + 8660) = 0;
  }

  return result;
}

BOOL KlattSetOutputSamplesOption(uint64_t a1, char a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 8866) = a2;
  }

  return result;
}

uint64_t KlattLength(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6544);
  }

  else
  {
    return 0;
  }
}

uint64_t KlattMax(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6552);
  }

  else
  {
    return 0;
  }
}

BOOL KlattSynth(uint64_t a1, uint64_t a2)
{
  v282 = *MEMORY[0x277D85DE8];
  result = verifyKlattHandle(a1);
  if (!result)
  {
    goto LABEL_301;
  }

  v5 = (a1 + 6420);
  ++*(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 3648);
  v9 = *(a2 + 32);
  v10 = *(a2 + 28);
  v11 = *(a1 + 6408);
  *(a1 + 8176) = v7;
  *(a1 + 8184) = v10;
  *(a1 + 0x2000) = v9;
  if (v7 | v10)
  {
    *(a1 + 6356) = 1101004800;
  }

  v12 = v6 * v8;
  if (v9)
  {
    *(a1 + 6360) = 1101004800;
  }

  v13 = v12 * v11;
  *(a1 + 8663) = 0;
  v14 = *(a2 + 108);
  v15 = *(a2 + 112);
  v17 = *(a2 + 116);
  v16 = *(a2 + 120);
  v19 = *(a2 + 124);
  v18 = *(a2 + 128);
  *&v269[3] = v14;
  *&v269[4] = v19;
  v263[3] = v15;
  v263[4] = v18;
  v21 = *(a2 + 132);
  v20 = *(a2 + 136);
  *&v269[1] = v17;
  *&v269[2] = v21;
  v263[1] = v16;
  v263[2] = v20;
  v22 = *(a2 + 40);
  v23 = *(a2 + 52);
  v24 = *(a2 + 56);
  v270[0] = *(a2 + 36);
  v270[1] = v23;
  v264[0] = v22;
  v264[1] = v24;
  v25 = *(a2 + 60);
  v26 = *(a2 + 64);
  v275 = v23;
  v276 = v25;
  v27 = *(a2 + 68);
  v28 = *(a2 + 72);
  v270[2] = v25;
  v270[3] = v27;
  v264[2] = v26;
  v264[3] = v28;
  v29 = *(a2 + 76);
  v30 = *(a2 + 80);
  v277 = v27;
  v278 = v29;
  v274 = v270[0];
  v270[4] = v29;
  v264[4] = v30;
  v31 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 140)));
  v265 = *(a2 + 176);
  v32 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 148)));
  v259[0] = v31;
  v259[1] = v32;
  v266 = *(a2 + 192);
  v260 = *(a2 + 156);
  v33 = *(a1 + 8160);
  if (v33 >= 6)
  {
    v34 = *(a2 + 88);
    v35 = *(a2 + 92);
    v36 = *(a2 + 96);
    v271 = *(a2 + 84);
    v272 = v35;
    v264[5] = v34;
    v264[6] = v36;
    v37 = *(a2 + 100);
    v38 = *(a2 + 104);
    v280 = v35;
    v281 = v37;
    v279 = v271;
    v273 = v37;
    v264[7] = v38;
    v267 = *(a2 + 196);
    v261 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 160)));
    v268 = *(a2 + 204);
    v262 = *(a2 + 168);
  }

  v250 = v13;
  v39 = *(a1 + 6356);
  v40 = v39;
  if (v39 > 0.00001)
  {
    if (v14 == v17 && v15 == v16)
    {
      *(a1 + 320) = 0;
      *(a1 + 496) = 0;
    }

    else
    {
      *(a1 + 320) = v39;
      *(a1 + 496) = v39;
      if (v14 != *(a1 + 480))
      {
        *(a1 + 6188) = cosf(v14 * *(a1 + 6404));
      }

      if (v17 != *(a1 + 304))
      {
        *(a1 + 6180) = cosf(v17 * *(a1 + 6404));
      }

      if (v15 != *(a1 + 484))
      {
        *(a1 + 6272) = expf(-(*(a1 + 6400) * v15));
      }

      if (v16 != *(a1 + 308))
      {
        *(a1 + 6264) = expf(-(*(a1 + 6400) * v16));
      }
    }

    if (v19 == v21 && v18 == v20)
    {
      *(a1 + 408) = 0;
      *(a1 + 584) = 0;
    }

    else
    {
      *(a1 + 408) = v39;
      *(a1 + 584) = v39;
      if (v19 != *(a1 + 568))
      {
        *(a1 + 6192) = cosf(v19 * *(a1 + 6404));
      }

      if (v21 != *(a1 + 392))
      {
        *(a1 + 6184) = cosf(v21 * *(a1 + 6404));
      }

      if (v18 != *(a1 + 572))
      {
        *(a1 + 6276) = expf(-(*(a1 + 6400) * v18));
      }

      if (v20 != *(a1 + 396))
      {
        *(a1 + 6268) = expf(-(*(a1 + 6400) * v20));
      }
    }
  }

  v253 = a2;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = v33 + 5;
  v258 = a1 + 160;
  v248 = (a1 + 6260);
  while (v43 + 5 < v46)
  {
    *(a1 + v44 + 672) = *(a1 + 6356);
    v47 = *&v270[v45 / 4];
    if (v47 != *(a1 + v44 + 656))
    {
      *(a1 + v45 + 6196) = cosf(v47 * *(a1 + 6404));
    }

    v48 = *&v264[v45 / 4];
    if (v48 != *(a1 + v44 + 660) && *(a1 + 6356) != 0.0)
    {
      *(a1 + v45 + 6280) = expf(-(*(a1 + 6400) * v48));
    }

    v49 = *(a1 + 6360);
    if (v49 <= 0.00001)
    {
      *(a1 + v44 + 1376) = 0;
    }

    else
    {
      if (*(v259 + v43))
      {
        *(a1 + v44 + 1376) = v49;
      }

      *(a1 + v45 + 6228) = *(a1 + v45 + 6196);
      v50 = *(&v265 + v45);
      if (v50 != *(a1 + v44 + 1364))
      {
        *(a1 + v45 + 6312) = expf(-(*(a1 + 6400) * v50));
      }
    }

    v45 += 4;
    v44 += 88;
    ++v43;
  }

  v51 = (a1 + 260);
  for (i = 1; i < v46; ++i)
  {
    v53 = v258 + 88 * i;
    if (*(v53 + 72) != 0.0)
    {
      v54 = v248[i];
      v55 = -(v54 * v54);
      *(v53 + 8) = v55;
      v56 = (v54 * *(a1 + 6176 + 4 * i)) + (v54 * *(a1 + 6176 + 4 * i));
      *v53 = (1.0 - v56) - v55;
      *(v53 + 4) = v56;
      v57 = *(v53 + 56);
      if (v57 == 0.0 || *&v269[i] == v57 && v263[i] == *(v53 + 60))
      {
        *(v53 + 80) = 0;
      }

      else
      {
        *(v53 + 80) = 3;
        v58 = (v56 - *(v53 + 64)) * 0.25;
        v59 = (v55 - *(v53 + 68)) * 0.25;
        v60 = -3;
        v61 = v51;
        do
        {
          v62 = (v60 + 4);
          v63 = *(v53 + 68) + (v62 * v59);
          v61[6] = v63;
          v64 = *(v53 + 64) + (v62 * v58);
          v61[3] = v64;
          *v61++ = (1.0 - v64) - v63;
          ++v60;
        }

        while (v60);
      }
    }

    v51 += 22;
  }

  v65 = *(a1 + 8208) + *(a1 + 0x2000) + *(a1 + 8224);
  v66 = *(a2 + 172);
  if (v66 != 0.0)
  {
    v67 = db2lin(v65 + v66);
    *(a1 + 4552) = *&v67 * -0.0000000033599;
  }

  v68 = 0;
  v69 = 0.0000000033599;
  v70 = 1376;
  v71 = 6228;
  while (v68 + 13 < *(a1 + 8160) + 13)
  {
    v72 = a1 + v70;
    if (*(a1 + v70) != 0.0)
    {
      v73 = *(a1 + v71 + 84);
      *(v72 - 64) = -(v73 * v73);
      *(v72 - 68) = (v73 * *(a1 + v71)) + (v73 * *(a1 + v71));
      v74 = *(v259 + v68);
      if (v74)
      {
        v75 = db2lin(v74 + v65);
        v76 = (v69 * *&v75) * ((1.0 - *(v72 - 68)) - *(v72 - 64));
      }

      else
      {
        v76 = 0.0;
      }

      *(v72 - 72) = v76;
    }

    v69 = -v69;
    ++v68;
    v70 += 88;
    v71 += 4;
  }

  if (*(a1 + 6356) > 0.0001)
  {
    v77 = (a1 + 284);
    for (j = 1; j != 3; ++j)
    {
      v79 = v258 + 88 * j;
      if (*(v79 + 72) != 0.0)
      {
        LODWORD(v40) = *v79;
        v80 = a1 + 2008 + 12 * j;
        *v80 = 1.0 / *v79;
        v40 = COERCE_DOUBLE(vdiv_f32(vneg_f32(*(v79 + 4)), vdup_lane_s32(*&v40, 0)));
        *(v80 + 4) = v40;
        if (*(v79 + 80))
        {
          v81 = v77;
          v82 = 3;
          do
          {
            v83 = *(v81 - 6);
            *(v81 - 6) = 1.0 / v83;
            *(v81 - 3) = -*(v81 - 3) / v83;
            *v81 = -*v81 / v83;
            ++v81;
            --v82;
          }

          while (v82);
        }
      }

      v77 += 22;
    }
  }

  *(a1 + 6376) = *(v253 + 4);
  *(a1 + 6372) = *(v253 + 24);
  *(a1 + 6388) = *(v253 + 12) * 0.01;
  v84 = 200;
  if (v250 < 200)
  {
    v84 = v250;
  }

  *(a1 + 6448) = v84;
  v85 = *(a1 + 8184);
  if (v85)
  {
    v86 = db2lin(*(a1 + 8208) + v85 + *(a1 + 8216));
    v87 = *&v86 * 0.000011921;
  }

  else
  {
    v87 = 0.0;
  }

  v254 = (a1 + 6504);
  v88 = (a1 + 6560);
  v89 = (a1 + 8665);
  v251 = a1 + 512;
  v90 = a1 + 2048;
  v91 = 10000.0;
  v92 = 0.001;
  v249 = 1;
  v252 = 1;
  v93 = v250;
  while (v93 >= 1)
  {
    if (*(a1 + 6448) >= v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = *(a1 + 6448);
    }

    *(a1 + 6448) = v94;
    *(a1 + 6364) = (1000 * v94) / *(a1 + 3652);
    v256 = v93;
    if (*(a1 + 6356) >= 0.0001)
    {
      v95 = *v254;
LABEL_93:
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
      if (v95)
      {
        goto LABEL_94;
      }

      v96 = 0;
      goto LABEL_102;
    }

    v95 = *(a1 + 6504);
    if (*(a1 + 6360) >= 0.0001)
    {
      goto LABEL_93;
    }

    if (v95)
    {
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
LABEL_94:
      if (v95 >= v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = v95;
      }

      clr_vector(*(a1 + 4544), v96);
      *(a1 + 6504) -= v96;
      OUTLINED_FUNCTION_7_54();
      v97 = v94 - v96;
      v88[v99] = v98 + v96;
      v100 = *(a1 + 8232) + 1;
      goto LABEL_103;
    }

    if (!*(a1 + 6536))
    {
      v101 = *(a1 + 6512);
      if (!v101)
      {
        for (k = v94; v101 < k; k = *(a1 + 6448))
        {
          *(v90 + 8 * v101++) = 0;
        }

        goto LABEL_293;
      }
    }

    v96 = 0;
    *v88 = 0;
LABEL_102:
    v100 = 1;
    v97 = v94;
LABEL_103:
    v257 = v94;
    *(a1 + 8232) = v100;
    v88[v100] = 0;
    v102 = *(a1 + 6512);
    if (v102)
    {
      if (v102 >= v97)
      {
        v103 = v97;
      }

      else
      {
        v103 = *(a1 + 6512);
      }

      *(a1 + 6480) = v103;
      v104 = *(a1 + 6416);
      v105 = v103 + v96;
      while (v96 < v105)
      {
        *(*(a1 + 4544) + 4 * v96) = v104 + (-(*(a1 + 6424) * v104) * v104);
        v104 = v104 + *(a1 + 6420);
        ++v96;
      }

      *(a1 + 6416) = v104;
      *(a1 + 6512) = v102 - v103;
      v97 -= v103;
      OUTLINED_FUNCTION_1_70(v103);
    }

    else
    {
      v105 = v96;
    }

    OUTLINED_FUNCTION_0_78();
    v106 = *(a1 + 6536);
    if (v106 && v97)
    {
      if (v106 >= v97)
      {
        v107 = v97;
      }

      else
      {
        v107 = *(a1 + 6536);
      }

      *(a1 + 6496) = v107;
      v108 = OUTLINED_FUNCTION_3_61();
      clr_vector(v108, v109);
      v110 = *(a1 + 6496);
      *(a1 + 6536) -= v110;
      v97 -= v110;
      v105 += v110;
      OUTLINED_FUNCTION_1_70(v110);
    }

    if (v105 < 1)
    {
      v111 = 0;
    }

    else
    {
      pole_filter(v258, *(a1 + 4544), v105);
      v111 = v105;
    }

    v255 = v111;
    if (v97 < 1)
    {
      goto LABEL_204;
    }

    v112 = *(a1 + 6376);
    if (v112 != 0.0)
    {
      v116 = *(a1 + 8176);
      if (v116)
      {
        if (v252)
        {
          v117 = *(v253 + 20);
          if (v117 != 0.0)
          {
            v118 = v92;
            v119 = v91;
            v120 = (v112 * v117) * 0.0002;
            v121 = *(a1 + 6352);
            v122 = sinf(v121 * 0.079796);
            v123 = v122 + sinf(v121 * 0.044611);
            v124 = v120 * (sinf(v121 * 0.029531) + v123);
            v91 = v119;
            v92 = v118;
            *(a1 + 8248) = v124;
            v112 = v112 + v124;
            *(a1 + 6376) = v112;
            if (v112 <= 0.0)
            {
              *(a1 + 6376) = 1065353216;
              v112 = 1.0;
            }
          }

          *(a1 + 6380) = v91 / v112;
          v125 = (v91 / v112) * (*(a1 + 3652) * v92);
          *(a1 + 6384) = v125;
          v126 = *(a1 + 6388);
          if (v126 > 0.0)
          {
            v127 = *(a1 + 8200) + v116 + *(a1 + 8208);
            if (v127 < 1)
            {
              *(a1 + 6436) = 0;
            }

            else
            {
              *(a1 + 6440) = 1.5 / (v126 * v125);
              v128 = db2lin(v127);
              v129 = *(a1 + 6440);
              *&v128 = (*&v128 * 18.469) * v129;
              *(a1 + 6436) = LODWORD(v128);
              *(a1 + 6440) = v129 / *&v128;
            }
          }

          v133 = *(a1 + 6372);
          if (*(a1 + 8660))
          {
            if (v133 == 0.0)
            {
              *(a1 + 8660) = 0;
              goto LABEL_143;
            }

LABEL_141:
            v134 = 1.0 - (v133 * 0.01);
            *(a1 + 6368) = v134;
            *(a1 + 6464) = (((v133 * *(a1 + 6384)) * (1.0 - *(a1 + 6388))) * 0.01);
            if (v134 <= 0.0)
            {
              *(a1 + 6428) = 0;
            }

            else
            {
              *(a1 + 6428) = v134 * *(a1 + 6436);
              *(a1 + 6432) = *(a1 + 6440) / v134;
            }
          }

          else
          {
            if (v133 > 0.0)
            {
              *(a1 + 8660) = 1;
              goto LABEL_141;
            }

LABEL_143:
            *v5 = *(a1 + 6436);
          }

          v135 = *(v253 + 16);
          if (v135 >= 35.0)
          {
            v135 = 35.0;
          }

          v136 = v135;
          *(a1 + 8168) = v135;
          if (v135 && (v137 = *(a1 + 6356), v137 > 0.0001))
          {
            *(a1 + 232) = v137;
            *(a1 + 240) = 0;
            v138 = tl_table[v136];
            *v269 = v138;
            v139 = v138 * 0.375;
            v263[0] = v138 * 0.375;
            v140 = *(a1 + 8868);
            if (v140)
            {
              if (v140 == 2 || v140 == 1)
              {
                v249 = 0;
                v141 = &tilt16;
                goto LABEL_158;
              }

              if (v138 != *(a1 + 216))
              {
                *(a1 + 6176) = cosf(v138 * *(a1 + 6404));
              }

              if (v139 == *(a1 + 220))
              {
                v144 = *v248;
              }

              else
              {
                v144 = expf(-(*(a1 + 6400) * v139));
                *(a1 + 6260) = v144;
              }

              v249 = 0;
              v145 = -(v144 * v144);
              *(a1 + 168) = v145;
              v146 = (v144 * *(a1 + 6176)) + (v144 * *(a1 + 6176));
              *(a1 + 160) = (1.0 - v146) - v145;
              *(a1 + 164) = v146;
              *(a1 + 240) = 0;
            }

            else
            {
              v249 = 0;
              v141 = &tilt8;
LABEL_158:
              v143 = &v141[12 * v136];
              *(a1 + 160) = *v143;
              *(a1 + 168) = *(v143 + 2);
            }
          }

          else
          {
            *(a1 + 232) = 0;
          }
        }

        compute_voicing_size(a1);
        v252 = 0;
        goto LABEL_177;
      }
    }

    if (*(a1 + 8184))
    {
      *(a1 + 6456) = v97;
      *(a1 + 6472) = v97;
      OUTLINED_FUNCTION_5_57();
      v115 = &v88[v114];
    }

    else
    {
      *(a1 + 6472) = 0;
      OUTLINED_FUNCTION_0_78();
      v115 = (a1 + 6456);
      v113 = v97;
    }

    *v115 = v97;
    *(a1 + 6488) = v113;
    OUTLINED_FUNCTION_5_57();
    v88[v131] = v130;
    v132 = OUTLINED_FUNCTION_3_61();
    clr_vector(v132, v97);
    v97 = 0;
    *(a1 + 6392) = 0;
LABEL_177:
    while (v97 >= 1 && v97 >= *(a1 + 6456))
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          *(a1 + 6496) = *(a1 + 6488) - *(a1 + 6464);
          v147 = OUTLINED_FUNCTION_3_61();
          clr_vector(v147, v148);
          v149 = *(a1 + 6464);
          v105 += v149;
          OUTLINED_FUNCTION_1_70(v149);
          v150 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_56();
          v150 = 1;
        }

        *(a1 + 8661) = v150;
      }

      OUTLINED_FUNCTION_0_78();
      v151 = *(a1 + 6420);
      if (v151 == 0.0)
      {
        v155 = OUTLINED_FUNCTION_3_61();
        clr_vector(v155, *(a1 + 6472));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
      }

      else
      {
        v152 = v151 * (*(a1 + 6392) * *(a1 + 6408));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
        while (v105 < v154)
        {
          *(*(a1 + 4544) + 4 * v105) = v152 + (-(*(a1 + 6424) * v152) * v152);
          v152 = v152 + *(a1 + 6420);
          ++v105;
        }
      }

      OUTLINED_FUNCTION_1_70(v153);
      OUTLINED_FUNCTION_0_78();
      clr_vector((*(a1 + 4544) + 4 * v154), *(a1 + 6496));
      v156 = *(a1 + 6496);
      v105 = v156 + v154;
      v88[*(a1 + 8232)] += v156;
      v97 -= *(a1 + 6456);
      compute_v_start(a1);
      compute_voicing_size(a1);
    }

    if (v97 < 1)
    {
      *(a1 + 6536) = 0;
      *v254 = 0;
      *(a1 + 6512) = 0;
    }

    else
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          v158 = *(a1 + 6464);
          *(a1 + 6496) -= v158;
          if (v158 >= v97)
          {
            v159 = v97;
          }

          else
          {
            v159 = v158;
          }

          v160 = OUTLINED_FUNCTION_3_61();
          clr_vector(v160, v159);
          *(a1 + 6504) = *(a1 + 6464) - v159;
          v105 += v159;
          v97 -= v159;
          OUTLINED_FUNCTION_7_54();
          v88[v162] = v161 + v159;
          v163 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_56();
          *(a1 + 6504) = 0;
          v163 = 1;
        }

        *(a1 + 8661) = v163;
      }

      OUTLINED_FUNCTION_0_78();
      v164 = *(a1 + 6472);
      if (v164 >= v97)
      {
        v165 = v97;
      }

      else
      {
        v165 = *(a1 + 6472);
      }

      *(a1 + 6480) = v165;
      v166 = *(a1 + 6420);
      v167 = (*(a1 + 6392) * *(a1 + 6408)) * v166;
      if (v166 == 0.0)
      {
        v169 = OUTLINED_FUNCTION_3_61();
        clr_vector(v169, v170);
        v164 = *(a1 + 6472);
        v165 = *(a1 + 6480);
        v166 = *(a1 + 6420);
      }

      else
      {
        for (m = v105; m < v165 + v105; ++m)
        {
          *(*(a1 + 4544) + 4 * m) = v167 + (-(*(a1 + 6424) * v167) * v167);
          v166 = *(a1 + 6420);
          v167 = v167 + v166;
        }
      }

      *(a1 + 6416) = v167;
      *(a1 + 6512) = v164 - v165;
      *(a1 + 6520) = v164;
      *(a1 + 6528) = v166;
      OUTLINED_FUNCTION_7_54();
      v88[v173] = v172 + v171;
      OUTLINED_FUNCTION_5_57();
      v88[v176] = 0;
      if (*(a1 + 6496) >= v175)
      {
        v177 = v175;
      }

      else
      {
        v177 = *(a1 + 6496);
      }

      clr_vector((*(a1 + 4544) + 4 * v105 + 4 * v174), v177);
      *(a1 + 6536) = *(a1 + 6496) - v177;
      OUTLINED_FUNCTION_7_54();
      v88[v179] = v178 + v177;
      compute_v_start(a1);
    }

LABEL_204:
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_0_78();
    v93 = v256;
    v94 = v257;
    if (*(a1 + 8663))
    {
      v180 = 0;
      v181 = 0;
      v182 = 0;
      while (v181 < *(a1 + 8232) / 2)
      {
        v183 = v88[2 * v181] + v182;
        while (v180 < v183)
        {
          v89[v180++] = 0;
        }

        v182 = v88[2 * v181 + 1] + v183;
        while (v180 < v182)
        {
          v89[v180++] = 1;
        }

        ++v181;
      }
    }

    pole_filter(v258, (*(a1 + 4544) + 4 * v255), *(a1 + 6448) - v255);
    if (!*(a1 + 3676))
    {
      if (*(a1 + 6356) > 0.0001)
      {
        if (*(a1 + 8184))
        {
          *(a1 + 8656) = noise(a1, *(a1 + 8656));
          OUTLINED_FUNCTION_2_66();
          mul1_vector((a1 + 8256), v87, v184, v185);
        }

        OUTLINED_FUNCTION_2_66();
        pole_filter(a1 + 424, v186, v187);
        zero_filter(a1 + 248, (a1 + 2020), *(a1 + 4544), *(a1 + 6448));
        OUTLINED_FUNCTION_2_66();
        pole_filter(v251, v188, v189);
        zero_filter(a1 + 336, (a1 + 2032), *(a1 + 4544), *(a1 + 6448));
        v190 = *(a1 + 8160);
        v191 = v190 + 4;
        v192 = v251 + 88 * v190;
        while (v191 >= 6)
        {
          OUTLINED_FUNCTION_2_66();
          pole_filter(v192, v193, v194);
          --v191;
          v192 -= 88;
        }

        v195 = *(a1 + 8663);
        OUTLINED_FUNCTION_2_66();
        if (v200)
        {
          v201 = 2;
          v93 = v256;
          v94 = v257;
          if (*(a1 + 672) != 0.0)
          {
            *(v196 - 2) = *(a1 + 652);
            *(v196 - 1) = *(a1 + 648);
            v202 = 0;
            v203 = 0;
            v204 = 0;
            switch(*(a1 + 156))
            {
              case 0:
                v205 = *(a1 + 680);
                if (v205 >= v197)
                {
                  v206 = v197;
                }

                else
                {
                  v206 = *(a1 + 680);
                }

                v202 = v206 & ~(v206 >> 63);
                v207 = (a1 + 648 - 4 * v205);
                v208 = v196;
                for (n = v202; n; --n)
                {
                  v210 = (*(v207 - 3) * *(v208 - 1)) + (*(v207 - 6) * *v208);
                  v211 = *v207++;
                  *v208 = v210 + (v211 * *(v208 - 2));
                  ++v208;
                }

                *(a1 + 680) = v205 - v206;
                goto LABEL_245;
              case 1:
                goto LABEL_245;
              case 2:
                goto LABEL_233;
              case 3:
                goto LABEL_239;
              default:
                v202 = 0;
                if (*v89)
                {
                  goto LABEL_232;
                }

                break;
            }

LABEL_238:
            *(a1 + 156) = 3;
            v204 = v202;
LABEL_239:
            v214 = &v196[v204];
            v202 = v204;
            while (2)
            {
              if (v202 < v197)
              {
                if (!v89[v202])
                {
                  *&v199 = *(v214 - 1);
                  *&v198 = *(a1 + 604) * *&v199;
                  OUTLINED_FUNCTION_4_57(*&v198 + (*(a1 + 600) * *v214), *(a1 + 608), v198, v199, *(v214 - 2));
                  continue;
                }

                v213 = 3;
LABEL_244:
                *(a1 + 8240) = v213;
                *(a1 + 156) = 1;
LABEL_245:
                for (ii = &v196[v202]; ; OUTLINED_FUNCTION_4_57(*&v198 + (v218[3] * *ii), v218[9], v198, v199, *(ii - 2)))
                {
                  if (v202 >= v197)
                  {
                    goto LABEL_252;
                  }

                  v216 = *(a1 + 8240);
                  if (v89[v202])
                  {
                    v217 = v216 - 1;
                    *(a1 + 8240) = v216 - 1;
                    if (v216 < 1)
                    {
LABEL_232:
                      *(a1 + 156) = v201;
                      v203 = v202;
LABEL_233:
                      v212 = &v196[v203];
                      v202 = v203;
                      while (1)
                      {
                        if (v202 >= v197)
                        {
                          goto LABEL_252;
                        }

                        if (!v89[v202])
                        {
                          break;
                        }

                        *&v199 = *(v212 - 1);
                        *&v198 = *algn_2806C5A0C * *&v199;
                        OUTLINED_FUNCTION_4_57((*algn_2806C5A0C * *&v199) + (*f1d * *v212), *&dword_2806C5A10, v198, v199, *(v212 - 2));
                      }

                      v213 = -1;
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    v217 = v216 + 1;
                    *(a1 + 8240) = v216 + 1;
                    if (v216 > 1)
                    {
                      goto LABEL_238;
                    }
                  }

                  v218 = &f1d[v217];
                  *&v199 = *(ii - 1);
                  *&v198 = v218[6] * *&v199;
                }
              }

              break;
            }

LABEL_252:
            v219 = &v196[v202];
            v220 = v219 - 2;
            if (v197 <= 1)
            {
              v220 = (a1 + 648);
            }

            *(a1 + 652) = *v220;
            *(a1 + 648) = *(v219 - 1);
          }
        }

        else
        {
          pole_filter(a1 + 600, v196, v197);
          v93 = v256;
          v94 = v257;
        }

        if (!*(a1 + 8184) && !*(a1 + 8176))
        {
          v221 = *(a1 + 6356) - *(a1 + 6364);
          *(a1 + 6356) = v221;
          if (v221 < 0.00001)
          {
            *(a1 + 6356) = 0;
          }
        }
      }

      if (*(a1 + 6360) <= 0.0001)
      {
        goto LABEL_286;
      }

      if (*(a1 + 0x2000))
      {
        *(a1 + 8658) = noise(a1, *(a1 + 8658));
        v222 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
        v223 = (a1 + 4556);
        for (jj = (a1 + 8256); v222; --v222)
        {
          v225 = *jj++;
          *v223++ = v225;
        }
      }

      if (*(v253 + 172) != 0.0 && *(a1 + 0x2000))
      {
        v226 = *(a1 + 4552);
        OUTLINED_FUNCTION_2_66();
        mulf_vector((a1 + 4556), v229, v227, v228);
      }

      v230 = 13;
      while (2)
      {
        if (v230 >= *(a1 + 8160) + 13)
        {
          v93 = v256;
          v94 = v257;
          if (!*(a1 + 0x2000))
          {
            v238 = *(a1 + 6360) - *(a1 + 6364);
            *(a1 + 6360) = v238;
            if (v238 < 0.0001)
            {
              *(a1 + 6360) = 0;
            }
          }

          break;
        }

        v231 = v258 + 88 * v230;
        if (*(v231 + 72) != 0.0)
        {
          if (*(a1 + 0x2000))
          {
            v232 = v230 - 13;
            v233 = *(a1 + 6448);
            if (*(&v259[-6] + v230 - 1))
            {
              for (kk = 0; (v233 & ~(v233 >> 63)) != kk; ++kk)
              {
                *(*(a1 + 6168) + 4 * kk) = *(a1 + 4556 + 4 * kk);
              }

              pole_filter(v231, *(a1 + 6168), v233);
              goto LABEL_279;
            }
          }

          else
          {
            v233 = *(a1 + 6448);
            v232 = v230 - 13;
          }

          parallel0_filter((v258 + 88 * v230), *(a1 + 6168), v233);
          if (!*(v259 + v232))
          {
            v235 = *(v231 + 72) - *(a1 + 6364);
            *(v231 + 72) = v235;
            if (v235 < 0.0)
            {
              *(v231 + 72) = 0;
            }
          }

LABEL_279:
          v236 = 0;
          v237 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
          while (v237 != v236)
          {
            *(*(a1 + 4544) + 4 * v236) = *(*(a1 + 6168) + 4 * v236) + *(*(a1 + 4544) + 4 * v236);
            ++v236;
          }
        }

        ++v230;
        continue;
      }
    }

LABEL_286:
    for (mm = 0; ; ++mm)
    {
      k = *(a1 + 6448);
      if (mm >= k)
      {
        break;
      }

      v240 = *(*(a1 + 4544) + 4 * mm);
      *(v90 + 8 * mm) = v240;
      if (v240 < 0)
      {
        v240 = -v240;
      }

      if (v240 > *(a1 + 6552))
      {
        *(a1 + 6552) = v240;
      }
    }

LABEL_293:
    v93 -= v94;
    output_speech(a1, k);
  }

  *(a1 + 6352) = *(a1 + 6352) + (*v253 * *(a1 + 3648));
  v241 = v249;
  *(a1 + 6544) += v250;
  v242 = a1 + 88 * v249 + 160;
  while (v241 <= 20)
  {
    if (*(v242 + 72) == 0.0)
    {
      *(v242 + 48) = 0;
      v245 = 0;
      v246 = 52;
      v243 = 0;
      v244 = 0.0;
    }

    else
    {
      v243 = v269[v241];
      v244 = v263[v241];
      v245 = *(v242 + 8);
      *(v242 + 64) = *(v242 + 4);
      v246 = 68;
    }

    *(v242 + v246) = v245;
    ++v241;
    *(v242 + 56) = v243;
    *(v242 + 60) = v244;
    v242 += 88;
  }

  result = 1;
LABEL_301:
  v247 = *MEMORY[0x277D85DE8];
  return result;
}

double db2lin(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  if (a1 >= 0x190)
  {
    a1 = 400;
  }

  v1 = ldiv(a1, 20);
  *&result = p10[v1.quot] * l10[v1.rem];
  return result;
}

float pole_filter(uint64_t a1, float *a2, uint64_t a3)
{
  result = *(a1 + 72);
  if (result != 0.0)
  {
    *(a2 - 2) = *(a1 + 52);
    v4 = (a1 + 48);
    *(a2 - 1) = *(a1 + 48);
    v5 = *(a1 + 80);
    if (v5)
    {
      if (v5 >= a3)
      {
        v6 = a3;
      }

      else
      {
        v6 = *(a1 + 80);
      }

      v7 = v6 & ~(v6 >> 63);
      v8 = (a1 - 4 * v5 + 48);
      v9 = a2;
      for (i = v7; i; --i)
      {
        v11 = (*(v8 - 3) * *(v9 - 1)) + (*(v8 - 6) * *v9);
        v12 = *v8++;
        *v9 = v11 + (v12 * *(v9 - 2));
        ++v9;
      }

      *(a1 + 80) = v5 - v6;
    }

    else
    {
      v7 = 0;
    }

    v13 = &a2[v7 - 2];
    while (v7 < a3)
    {
      v13[2] = ((*(a1 + 4) * v13[1]) + (*a1 * v13[2])) + (*(a1 + 8) * *v13);
      ++v7;
      ++v13;
    }

    if (a3 > 1)
    {
      v4 = v13;
    }

    *(a1 + 52) = *v4;
    result = v13[1];
    *(a1 + 48) = result;
  }

  return result;
}

double compute_voicing_size(float *a1)
{
  v1 = a1[1595];
  v2 = a1[1598];
  v3 = a1[1602];
  v4 = (((v1 - v2) * v3) + 0.9999);
  result = (v3 * -(v2 - (a1[1597] * v1))) + 0.4999;
  *(a1 + 807) = v4;
  *(a1 + 809) = result;
  *(a1 + 810) = result;
  v6 = v4 - result;
  *(a1 + 811) = v6;
  *(a1 + 812) = v6;
  return result;
}

float compute_v_start(float *a1)
{
  result = (a1[1598] + (*(a1 + 807) * a1[1603])) - a1[1595];
  a1[1598] = result;
  return result;
}

uint64_t noise(_WORD *a1, __int16 a2)
{
  v2 = 20077 * a2 + 12345;
  a1[4128] = v2;
  *(a1 + 8865) = 0;
  v3 = *(a1 + 806);
  v4 = a1 + 4129;
  for (i = 1; i < v3; ++i)
  {
    v2 = 20077 * v2 + 12345;
    *v4++ = v2;
  }

  if (*(a1 + 1022))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a1 + 820);
    v9 = (*(a1 + 1029) / 2) & ~((*(a1 + 1029) / 2) >> 63);
    while (v6 != v9)
    {
      while (v7 < v8)
      {
        a1[v7 + 4128] = a1[v7 + 4128] >> 1;
        ++v7;
      }

      v10 = &a1[8 * v6 + 3280];
      v7 += *(v10 + 1);
      v8 = v7 + *(v10 + 2);
      ++v6;
    }
  }

  return v2;
}

uint64_t zero_filter(uint64_t result, float *a2, float *a3, uint64_t a4)
{
  if (*(result + 72) != 0.0)
  {
    v5 = *(result + 48);
    v4 = *(result + 52);
    v6 = *(result + 80);
    if (v6)
    {
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = *(result + 80);
      }

      v8 = v7 & ~(v7 >> 63);
      v9 = (result - 4 * v6 + 24);
      v10 = v8;
      v11 = a3;
      while (1)
      {
        v12 = v5;
        if (!v10)
        {
          break;
        }

        v5 = *v11;
        *v11 = ((v12 * v9[3]) + (*v9 * *v11)) + (v9[6] * v4);
        ++v11;
        --v10;
        ++v9;
        v4 = v12;
      }

      *(result + 80) = v6 - v7;
    }

    else
    {
      v8 = 0;
    }

    while (1)
    {
      v13 = v5;
      if (v8 >= a4)
      {
        break;
      }

      v5 = a3[v8];
      a3[v8++] = ((v13 * a2[1]) + (*a2 * v5)) + (a2[2] * v4);
      v4 = v13;
    }

    if (a4 <= 1)
    {
      v4 = *(result + 48);
    }

    *(result + 48) = v5;
    *(result + 52) = v4;
  }

  return result;
}

BOOL klattSetVolumeMultiplier(uint64_t a1, float a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 148) = a2;
  }

  return result;
}

void OUTLINED_FUNCTION_0_78()
{
  v2 = *(v0 + 8232) + 1;
  *(v0 + 8232) = v2;
  *(v1 + 8 * v2) = 0;
}

float OUTLINED_FUNCTION_4_57(float a1, float a2, double a3, double a4, float a5)
{
  result = a1 + (a2 * a5);
  *v5 = result;
  return result;
}

double OUTLINED_FUNCTION_6_56()
{
  result = v1[2];
  *v1 = result;
  *(v0 + 6496) = *(v0 + 6488);
  return result;
}

void *dynaBufNew(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x1010040FAA616C6uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    if (a1)
    {
      v4 = a1 + 1;
    }

    else
    {
      v4 = 16;
    }

    if (v4)
    {
      v5 = ((v4 - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
    }

    else
    {
      v5 = 16;
    }

    if (resize(v2, v5))
    {
      **v3 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t resize(uint64_t a1, size_t size)
{
  if (!size)
  {
    return 0;
  }

  v4 = *a1;
  if (v4)
  {
    result = malloc_type_realloc(v4, size, 0x100004077774924uLL);
    if (!result)
    {
      return result;
    }

    *a1 = result;
  }

  else
  {
    result = malloc_type_malloc(size, 0x100004077774924uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 8) = size;
  return 1;
}

uint64_t dynaBufDelete(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1);
  }

  return 0;
}

uint64_t dynaBufReset(uint64_t result)
{
  *(result + 16) = 0;
  **result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t dynaBufAddChar(uint64_t *a1, char a2, int a3)
{
  if (a3)
  {
    v6 = a1[2];
  }

  else
  {
    v7 = a1[2];
    v6 = a1[3];
    if (v6 != v7)
    {
      goto LABEL_10;
    }
  }

  result = setUsed(a1, v6 + 1);
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    v7 = a1[2];
    v6 = a1[3];
LABEL_10:
    if (v6 == v7 - 1)
    {
      *(*a1 + v7) = 0;
      v6 = a1[3];
    }

    goto LABEL_12;
  }

  for (i = a1[2]; ; --i)
  {
    v6 = a1[3];
    if (i < v6 + 1)
    {
      break;
    }

    *(*a1 + i) = *(*a1 + i - 1);
  }

LABEL_12:
  v10 = *a1;
  a1[3] = v6 + 1;
  *(v10 + v6) = a2;
  return 1;
}

uint64_t setUsed(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= (a2 + 1) || (result = resize(a1, (a2 & 0xFFFFFFFFFFFFFFF0) + 16), result))
  {
    *(a1 + 16) = a2;
    return 1;
  }

  return result;
}

uint64_t dynaBufAddString(uint64_t *a1, char *__s, int a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v7 = v6;
  if (a3 || (v8 = a1[2] - a1[3], v7 = v6 - v8, v6 > v8))
  {
    if (v7)
    {
      result = setUsed(a1, a1[2] + v7);
      if (!result)
      {
        return result;
      }

      *(*a1 + a1[2]) = 0;
      if (a3)
      {
        for (i = a1[2] - 1; i >= a1[3] + v7; --i)
        {
          *(*a1 + i) = *(*a1 + i - v7);
        }
      }
    }
  }

  while (1)
  {
    v13 = *v4;
    if (!*v4)
    {
      break;
    }

    v11 = *a1;
    v12 = a1[3];
    a1[3] = v12 + 1;
    *(v11 + v12) = v13;
    ++v4;
  }

  return 1;
}

uint64_t dynaBufAddInt(uint64_t *a1, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __sprintf_chk(__s, 0, 0x14uLL, "%d", a2);
  result = dynaBufAddString(a1, __s, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dynaBufAddDynaBuf(uint64_t *a1, void *a2, int a3)
{
  if (a3)
  {
    v6 = a2[2];
  }

  else
  {
    v7 = a1[2] - a1[3];
    v8 = a2[2];
    v6 = v8 - v7;
    if (v8 <= v7)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    result = setUsed(a1, a1[2] + v6);
    if (!result)
    {
      return result;
    }

    if (a3)
    {
      v10 = a1[2];
      v11 = v10 - v6;
      while (v10 >= a1[3] + v6)
      {
        *(*a1 + v10--) = *(*a1 + v11--);
      }
    }
  }

LABEL_10:
  for (i = 0; i < a2[2]; ++i)
  {
    v13 = *(*a2 + i);
    v14 = *a1;
    v15 = a1[3];
    a1[3] = v15 + 1;
    *(v14 + v15) = v13;
  }

  *(*a1 + a1[2]) = 0;
  return 1;
}

uint64_t *dynaBufDeleteChars(uint64_t *result, unint64_t a2)
{
  v3 = result[2];
  v2 = result[3];
  if (v3 - v2 <= a2)
  {
    v5 = *result;
    result[2] = v2;
    *(v5 + v2) = 0;
  }

  else if (a2)
  {
    v4 = v3 - a2;
    result[2] = v4;
    while (v2 <= v4)
    {
      *(*result + v2) = *(*result + v2 + a2);
      ++v2;
      v4 = result[2];
    }
  }

  return result;
}

uint64_t dynaBufMoveRel(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = -a2;
    v4 = *(a1 + 24);
    v5 = v4 >= v3;
    v2 = v4 - v3;
    if (!v5)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = *(a1 + 24) + a2;
    if (v2 >= *(a1 + 16))
    {
      v2 = *(a1 + 16);
    }
  }

  return OUTLINED_FUNCTION_0_79(a1, v2);
}

uint64_t dynaBufMoveAbs(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = a2;
  }

  return OUTLINED_FUNCTION_0_79(a1, v2);
}

uint64_t dynaBufChar(void *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || a1[2] < a2)
  {
    return 0;
  }

  else
  {
    return *(*a1 + a2);
  }
}

uint64_t dynaBufCurrentChar(uint64_t *a1, int a2)
{
  v2 = a1[3];
  if (a2 && v2 < a1[2])
  {
    v3 = *a1;
    a1[3] = v2 + 1;
  }

  else
  {
    v3 = *a1;
  }

  return *(v3 + v2);
}

uint64_t dynaBufExtract(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0 || a1[2] < a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a4;
  v6 = a2;
  while (a4 != v4)
  {
    if (a1[2] <= v6)
    {
      v5 = v4;
      break;
    }

    v7 = *(*a1 + v6++);
    *(a3 + v4++) = v7;
  }

  *(a3 + v5) = 0;
  return a3;
}

uint64_t errorStd(uint64_t a1, const char *a2, char *a3, ...)
{
  va_start(va, a3);
  v4 = MEMORY[0x277D85DF8];
  if (a2 && *a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: ", a2);
  }

  vfprintf(*v4, a3, va);
  fwrite(".\n", 2uLL, 1uLL, *v4);
  return 0;
}

int strcasecmp(const char *a1, const char *a2)
{
  while (1)
  {
    v4 = *a2;
    v5 = *a2;
    if (!*a1)
    {
      goto LABEL_10;
    }

    if (!*a2)
    {
      return 1;
    }

    v6 = __tolower(*a1);
    if (v6 != __tolower(v4))
    {
      break;
    }

    ++a1;
    ++a2;
  }

  v7 = *a2;
  v5 = v7;
  if (!*a1)
  {
LABEL_10:
    if (v5)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    return 1;
  }

  v8 = __tolower(*a1);
  if (v8 < __tolower(v7))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

char *__cdecl strdup(const char *__s1)
{
  v2 = strlen(__s1);
  result = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (result)
  {

    return strcpy(result, __s1);
  }

  return result;
}

uint64_t atoiOK(char *a1, _DWORD *a2)
{
  v3 = *a1;
  *a2 = 0;
  if (v3 == 45)
  {
    v4 = a1 + 1;
  }

  else
  {
    v4 = a1;
  }

  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      return 0;
    }

    if (!isspace(*v4))
    {
      break;
    }

    ++v4;
  }

  v6 = 0;
  for (i = v5; ; i = v11)
  {
    v8 = i;
    v9 = i - 48;
    if (v9 >= 0xA)
    {
      break;
    }

    if (v6 > 214748364)
    {
      return 0;
    }

    v10 = 10 * v6;
    *a2 = 10 * v6;
    if (10 * v6 > -2147483601 - v8)
    {
      return 0;
    }

    v6 = v10 + v9;
    *a2 = v10 + v9;
    v11 = *++v4;
  }

  v13 = 1;
  while (i)
  {
    result = isspace(i);
    if (!result)
    {
      return result;
    }

    i = v4[v13++];
  }

  if (v3 == 45)
  {
    *a2 = -v6;
  }

  return 1;
}