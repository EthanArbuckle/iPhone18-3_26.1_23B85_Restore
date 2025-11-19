uint64_t FixEdgeAndSubEdges(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      if (*(v1 + 57))
      {
        break;
      }

      *(v1 + 57) = 1;
      if (*(v1 + 58))
      {
        break;
      }

      result = FixEdgeAndSubEdges(*(v1 + 64));
      v1 = *(v1 + 72);
    }

    while (v1);
  }

  return result;
}

void AppendTree(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a2)
  {
    if (!*(a2 + 58))
    {
      v18 = 0;
      v17 = 0;
      if ((mosyntkbsgram_GetRuleVisAndCost((a2 + 80), &v18, &v17) & 0x80000000) != 0)
      {
        return;
      }

      if (mosyntkbsgram_IsNilIter((a2 + 80)) || !v18)
      {
        AppendNode(a1, a2, a3, a4);
        if (v15 < 0)
        {
          return;
        }

        v16 = *a4;
        *(v16 + 60) = 0;
        v16[8] = 0;
        v19 = 0;
        if ((AppendTree(a1, *(a2 + 64), v16 + 1, &v19) & 0x80000000) != 0)
        {
          return;
        }

        v11 = *(a2 + 72);
        v13 = v16 + 1;
        v14 = &v19;
        v12 = a1;
      }

      else
      {
        if ((AppendTree(a1, *(a2 + 64), a3, a4) & 0x80000000) != 0)
        {
          return;
        }

        v11 = *(a2 + 72);
        v12 = a1;
        v13 = a3;
        v14 = a4;
      }

      AppendTree(v12, v11, v13, v14);
      return;
    }

    AppendNode(a1, a2, a3, a4);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      *(v9 + 60) = 1;
      mosyntdata_CopyTermInfo(a1, *(a2 + 64), v9 + 8);
      if ((v10 & 0x80000000) == 0)
      {
        v9[1] = 0;
      }
    }
  }
}

void AppendNode(uint64_t a1, __n128 *a2, void *a3, void **a4)
{
  mosyntdata_AddNode(a1, a3, a4, 1, a2[1].n128_i16[6], a2 + 2);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a4;
    v8 = a2[1].n128_i16[4];
    v7[12] = a2[6].n128_u32[0];
    v7[13] = v8;
    v7[14] = a2[1].n128_i16[5];
  }
}

uint64_t com_mosynt_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  __c_1 = -1;
  __c = 0;
  v11 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v11, &__c_1, &__c);
  if ((v7 & 0x80000000) == 0 && __c_1)
  {
    v8 = *v11;
    v9 = strchr(*v11, __c);
    if (v9)
    {
      *v9 = 0;
      v8 = *v11;
    }

    *a6 = v8;
  }

  return v7;
}

uint64_t com_mosynt_GetBacktransPOS(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, _WORD *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  strcpy(__sa, "backtrans_");
  if (strlen(__s) < 0x81)
  {
    __strcat_chk();
  }

  else
  {
    __strncat_chk();
  }

  v10 = strchr(__sa, 40);
  if (v10)
  {
    *v10 = 0;
  }

  v13 = 0;
  result = com_mosynt_GetCfgParamVal(a1, a2, a3, __sa, __s, &v13);
  if ((result & 0x80000000) == 0)
  {
    *a5 = *v13;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t com_mosynt_GetBacktrans2POS(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, unsigned int a5, char *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = strlen(__s);
  *a6 = 0;
  if (v10)
  {
    v11 = 0;
    CfgParamVal = 0;
    v23 = 0;
    v13 = v10;
    do
    {
      v14 = __s[v11];
      if (v14 != 92)
      {
        strcpy(__sa, "backtrans2_");
        v15 = strlen(__sa);
        __sa[v15] = v14;
        __sa[(v15 + 1)] = 0;
        CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, __sa, a6, &v23);
        if ((CfgParamVal & 0x80000000) != 0)
        {
          break;
        }

        v16 = v23;
        v17 = strlen(v23);
        if (v17)
        {
          v18 = strlen(a6);
          if (v23 != a6 && v17 + v18 + 1 < a5)
          {
            if (v18)
            {
              *&a6[strlen(a6)] = 92;
            }

            strcat(a6, v16);
          }
        }
      }

      ++v11;
    }

    while (v11 < v13);
  }

  else
  {
    CfgParamVal = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return CfgParamVal;
}

uint64_t com_mosynt_UseMosynt(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, "mosynt_usemosynt", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    v7 = !strcmp(__s1, "YES") || strcmp(v6, "yes") == 0;
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t mosyntbase_WInt3Ln(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4, unsigned __int8 *a5, int a6)
{
  v12 = a2;
  v11 = a3;
  v10 = a5;
  v9 = a6;
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v12, v11);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WInt(a1, a4, 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WString(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  return mosyntpal_WriteString(a1, v6, v5);
}

uint64_t mosyntbase_WInt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = mosyntpal_IntToString(a2, a3, v6, 100);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v6, 100);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntbase_WStringLn(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  result = mosyntpal_WriteString(a1, v6, v5);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_WriteLn(a1);
  }

  return result;
}

uint64_t mosyntbase_WString3Ln(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7)
{
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = a7;
  m2__fix__carray__len(&v14, &v13);
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v14, v13);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v12, v11);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WriteDevelMessage(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7, unsigned __int8 *a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v13 = a10;
  v14 = a11;
  v15 = a12;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  m2__fix__carray__len(&v24, &v23);
  m2__fix__carray__len(&v22, &v21);
  m2__fix__carray__len(&v20, &v19);
  m2__fix__carray__len(&v18, &a9);
  *(&v17 + 1) = __PAIR64__(v15, v14);
  *&v17 = __PAIR64__(v13, a9);
  result = mosyntbase_WriteMessage(a1, v24, v23, v22, v21, v20, v19, v18, v17);
  if ((result & 0x80000000) == 0)
  {
    return kaldi::nnet1::Component::IsUpdatable(result);
  }

  return result;
}

uint64_t mosyntbase_WriteMessage(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7, unsigned __int8 *a8, __int128 a9)
{
  v10 = *(&a9 + 4);
  v11 = HIDWORD(a9);
  v22 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  memset(v21, 0, 512);
  m2__fix__carray__len(&v20, &v19);
  m2__fix__carray__len(&v18, &v17);
  m2__fix__carray__len(&v16, &v15);
  m2__fix__carray__len(&v14, &a9);
  result = mosyntbase_ComposeMessage(v20, v19, v18, v17, v16, v15, v14, a9, v10, HIDWORD(v10), v11, v21, 1000);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v21, 1000);
    if ((result & 0x80000000) == 0)
    {
      result = kaldi::nnet1::Component::IsUpdatable(result);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntbase_ComposeMessage(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6, unsigned __int8 *a7, int a8, unsigned int a9, unsigned int a10, unsigned int a11, _BYTE *a12, int a13)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  m2__fix__carray__len(&v35, &v34);
  m2__fix__carray__len(&v33, &v32);
  m2__fix__carray__len(&v31, &v30);
  m2__fix__carray__len(&v29, &v28);
  v27 = 0;
  *a12 = 0;
  v13 = v34;
  if (v34 >= 1)
  {
    v14 = 0;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = v13 - 1;
      v18 = &v35[v14];
      result = v35[v14];
      if (result == 37)
      {
        if (v14 < v17)
        {
          v20 = v18[1];
          if (v20 == 100 || v20 == 105)
          {
            switch(v15)
            {
              case 3:
                v24 = a11;
                goto LABEL_25;
              case 2:
                v24 = a10;
                goto LABEL_25;
              case 1:
                v24 = a9;
LABEL_25:
                result = mosyntpal_IntToString(v24, 0, v38, 20);
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_36;
                }

                break;
              default:
                mosyntbase_CCopy("%d", 0, v38, 20, &v26);
                break;
            }

            mosyntbase_App(a12, a13, &v27, v38, 20, &v26);
            ++v15;
LABEL_33:
            v23 = 2;
            goto LABEL_34;
          }

          if (v20 == 115)
          {
            switch(v16)
            {
              case 3:
                v21 = v29;
                v22 = v28;
                break;
              case 2:
                v21 = v31;
                v22 = v30;
                break;
              case 1:
                v21 = v33;
                v22 = v32;
                break;
              default:
                v37 = "%s";
                v36 = 0;
                m2__fix__carray__len(&v37, &v36);
                v21 = v37;
                v22 = v36;
                break;
            }

            mosyntbase_App(a12, a13, &v27, v21, v22, &v26);
            ++v16;
            goto LABEL_33;
          }
        }
      }

      else if (result == 92)
      {
        if (v14 < v17 && v18[1] == 110)
        {
          LOWORD(v38[0]) = mosyntpal_EOL();
          mosyntbase_App(a12, a13, &v27, v38, 20, &v26);
          goto LABEL_33;
        }
      }

      else if (!v35[v14])
      {
        goto LABEL_36;
      }

      LOWORD(v38[0]) = result;
      mosyntbase_App(a12, a13, &v27, v38, 20, &v26);
      v23 = 1;
LABEL_34:
      v14 += v23;
      v13 = v34;
    }

    while (v14 < v34);
  }

  result = 0;
LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosyntbase_Length(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mosyntbase_Copy(uint64_t a1, int a2, uint64_t a3, int a4, BOOL *a5)
{
  if (a2 < 1)
  {
    v6 = 0;
LABEL_11:
    *(a3 + v6) = 0;
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = a2;
    while (*(a1 + v5) && v5 < a4 - 1)
    {
      *(a3 + v5) = *(a1 + v5);
      if (a2 == ++v5)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v5) = 0;
    v8 = *(a1 + v5) == 0;
  }

  *a5 = v8;
  return 0;
}

uint64_t mosyntbase_CCopy(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int a4, BOOL *a5)
{
  v15 = a1;
  v14 = a2;
  m2__fix__carray__len(&v15, &v14);
  v8 = v14;
  if (v14 < 1)
  {
    v8 = 0;
LABEL_11:
    *(a3 + v8) = 0;
    v12 = 1;
  }

  else
  {
    v9 = 0;
    v10 = v15;
    while (v10[v9] && v9 < a4 - 1)
    {
      *(a3 + v9) = v10[v9];
      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v9) = 0;
    v12 = v10[v9] == 0;
  }

  *a5 = v12;
  return 0;
}

uint64_t mosyntbase_AppendTo(uint64_t a1, int a2, _BYTE *a3, int a4, BOOL *a5)
{
  v5 = (a2 - 1);
  if (a2 <= 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    while (*(a1 + v6))
    {
      if (v5 == ++v6)
      {
        LODWORD(v6) = a2 - 1;
        break;
      }
    }
  }

  if (a4 < 1)
  {
LABEL_14:
    *(a1 + v6) = 0;
    v9 = 1;
  }

  else
  {
    v6 = v6;
    v7 = a4;
    while (*a3 && v5 > v6)
    {
      *(a1 + v6++) = *a3++;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    *(a1 + v6) = 0;
    v9 = *a3 == 0;
  }

  *a5 = v9;
  return 0;
}

uint64_t mosyntbase_App(uint64_t a1, int a2, int *a3, uint64_t a4, int a5, BOOL *a6)
{
  v6 = a2 - 1;
  v7 = *a3;
  v8 = a5 > 0;
  v9 = 0;
  if (*a3 < a2 - 1 && a5 >= 1)
  {
    while (*(a4 + v9))
    {
      *(a1 + v7) = *(a4 + v9);
      v7 = *a3 + 1;
      *a3 = v7;
      v8 = ++v9 < a5;
      if (v7 >= v6 || v9 >= a5)
      {
        goto LABEL_13;
      }
    }

    v8 = 1;
LABEL_13:
    v9 = v9;
  }

  if (v7 < a2)
  {
    v6 = v7;
  }

  *(a1 + v6) = 0;
  v12 = !v8 || *(a4 + v9) == 0;
  *a6 = v12;
  return 0;
}

uint64_t mosyntbase_CApp(uint64_t a1, int a2, int *a3, unsigned __int8 *a4, int a5, BOOL *a6)
{
  v12 = a4;
  v11 = a5;
  m2__fix__carray__len(&v12, &v11);
  mosyntbase_App(a1, a2, a3, v12, v11, a6);
  return 0;
}

uint64_t mosyntbase_GetSepPartStr(uint64_t a1, int a2, int *a3, unsigned __int8 a4, _BYTE *a5, int a6, char *a7)
{
  v7 = *a3;
  if ((*a3 & 0x80000000) == 0)
  {
    if (v7 >= a2)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(a1 + v7);
        if (v10 == a4 || v10 == 0)
        {
          break;
        }

        if (v8 >= a6)
        {
          v9 = 0;
        }

        else
        {
          a5[v8++] = v10;
          v7 = *a3;
        }

        *a3 = ++v7;
      }

      while (v7 < a2);
    }

    if (v8 < a6)
    {
      a5[v8] = 0;
      v7 = *a3;
    }

    if (v7 >= a2)
    {
      goto LABEL_23;
    }

    if (*(a1 + v7) == a4)
    {
      v12 = v7 + 1;
    }

    else
    {
      if (*(a1 + v7))
      {
LABEL_23:
        *a7 = v9;
        return 0;
      }

      v12 = -1;
    }

    *a3 = v12;
    goto LABEL_23;
  }

  *a7 = 0;
  *a5 = 0;
  return 0;
}

BOOL mosyntbase_Equal(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while (v4 < a4 && *(a1 + v4) && *(a1 + v4) == *(a3 + v4))
    {
      if (a2 == ++v4)
      {
        LODWORD(v4) = a2;
        return v4 >= a4 || *(a3 + v4) == 0;
      }
    }

    if (*(a1 + v4))
    {
      return 0;
    }
  }

  return v4 >= a4 || *(a3 + v4) == 0;
}

BOOL mosyntbase_CEqual(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  m2__fix__carray__len(&v8, &v7);
  m2__fix__carray__len(&v6, &v5);
  return mosyntbase_Equal(v8, v7, v6, v5);
}

uint64_t mosyntbase_UpperCase(_BYTE *a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if ((v3 - 97) <= 0x19)
      {
        *a1 = v3 - 32;
      }

      ++a1;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t mosyntbase_FindSubstring(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v6 = a5 & ~(a5 >> 31);
  if (a5 >= 1)
  {
    if (a4 < 1)
    {
      goto LABEL_27;
    }

    v7 = 0;
    while (*(a3 + v7))
    {
      if (a4 == ++v7)
      {
        LODWORD(v7) = a4;
        break;
      }
    }

    if (v6 >= v7)
    {
      goto LABEL_27;
    }
  }

  if (v6 >= a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + v6);
      if (*(a3 + v6))
      {
        v10 = v8 < a2;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        break;
      }

      v12 = v11 == v9;
      v13 = v11 == v9 ? 0 : v8;
      if (v12)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }

      v6 = v6 - v13 + 1;
    }

    while (v6 < a4);
  }

  if (v8 < a2 && *(a1 + v8))
  {
LABEL_27:
    v14 = -1;
  }

  else
  {
    v14 = v6 - v8;
  }

  *a6 = v14;
  return 0;
}

uint64_t mosyntbase_RemoveSubstring(int a1, int a2, uint64_t a3, int a4, _BYTE *a5)
{
  *a5 = 1;
  if (a4 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while (*(a3 + v5))
    {
      if (a4 == ++v5)
      {
        LODWORD(v5) = a4;
        break;
      }
    }
  }

  if (v5 > a1)
  {
    v6 = a2 + a1;
    if (v6 <= v5)
    {
      if (v6 < v5)
      {
        v7 = (a3 + a1);
        v8 = (a3 + v6);
        v9 = v5 - a2;
        do
        {
          v10 = *v8++;
          *v7++ = v10;
          ++a1;
        }

        while (v9 != a1);
      }
    }

    else
    {
      *a5 = 0;
    }

    if (a1 < a4)
    {
      a5 = (a3 + a1);
    }

    else
    {
      a5 = (a3 + a4 - 1);
    }
  }

  *a5 = 0;
  return 0;
}

uint64_t mosyntaccphr_TreatSyntTree(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v299 = *MEMORY[0x1E69E9840];
  v283 = 0;
  SentTermCommList = mosyntpal_ALLOCATE(a1, &v283, 0x60u);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    goto LABEL_576;
  }

  v17 = v283;
  *v283 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 28) = a6;
  *(v17 + 32) = 0;
  *(v17 + 40) = a7;
  *(v283 + 48) = (mosyntkbaccphr_Nil)();
  *(v283 + 52) = (mosyntkbaccphr_Nil)();
  v18 = (mosyntkbaccphr_Nil)();
  v19 = v283;
  v20 = v283;
  *(v283 + 56) = v18;
  v21 = (v20 + 56);
  if (!a8)
  {
    goto LABEL_555;
  }

  v22 = *(v19 + 16);
  if (v22 != fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitMatcher())
  {
    v24 = (v19 + 48);
    v23 = *(v19 + 48);
    if (v23 == (mosyntkbaccphr_Nil)())
    {
      DomainById = FindDomainById(v19, *(v19 + 28), (v19 + 48));
      v26 = *(v19 + 48);
      if (v26 == mosyntkbaccphr_Nil(DomainById))
      {
        v27 = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
        *(v19 + 48) = v27;
      }

      else
      {
        v27 = *v24;
      }

      *(v19 + 52) = v27;
      *(v19 + 56) = v27;
    }

    *&v292 = 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v19 + 40), *(a8 + 52), &v292);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    v28 = v292;
    v29 = *(v19 + 16);
    inited = fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitMatcher();
    if (v29 == inited)
    {
      v43 = mosyntkbaccphr_Nil(inited);
      *(v19 + 48) = v43;
      v44 = mosyntkbaccphr_Nil(v43);
      *(v19 + 52) = v44;
      *(v19 + 56) = mosyntkbaccphr_Nil(v44);
      goto LABEL_65;
    }

    if (!v28)
    {
      goto LABEL_65;
    }

    BestScenarioPathSuffix = 0;
    while (1)
    {
      while (*(v28 + 2) != 5)
      {
LABEL_61:
        v28 = *v28;
        if (!v28)
        {
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          goto LABEL_65;
        }
      }

      if (*(v28 + 3))
      {
        v32 = *v24;
      }

      else
      {
        inited = mosyntkbaccphr_Nil(inited);
        v32 = inited;
        *v24 = inited;
      }

      inited = mosyntkbaccphr_Nil(inited);
      if (v32 == inited)
      {
        v33 = FindDomainById(v19, *(v19 + 28), (v19 + 48));
        v34 = *(v19 + 48);
        if (v34 == mosyntkbaccphr_Nil(v33))
        {
          inited = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
          *(v19 + 48) = inited;
        }

        else
        {
          inited = *v24;
        }

        BestScenarioPathSuffix = 0;
        *(v19 + 52) = inited;
        *v21 = inited;
      }

      v35 = *(v28 + 3);
      if (v35 != 2)
      {
        break;
      }

      v39 = *v19;
      if (!*(v28 + 36))
      {
        if (v39 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            goto LABEL_576;
          }

          inited = mosyntbase_WriteMessage(a1, "Resetting sentence domain\\n", 0, "", 0, "", 0, "", 0);
          goto LABEL_54;
        }

LABEL_55:
        v42 = *(v19 + 52);
LABEL_60:
        *v21 = v42;
        goto LABEL_61;
      }

      if (v39 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting sentence domain to '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }
      }

      DomainByName = FindDomainByName(v19, v28 + 36, v21);
      v41 = *(v19 + 56);
      inited = mosyntkbaccphr_Nil(DomainByName);
      if (v41 == inited)
      {
        if (*v19 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            goto LABEL_576;
          }

          inited = mosyntbase_WriteMessage(a1, "Didn't find sentence domain '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
LABEL_54:
          BestScenarioPathSuffix = inited;
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          goto LABEL_55;
        }

LABEL_45:
        BestScenarioPathSuffix = 0;
        goto LABEL_55;
      }

      BestScenarioPathSuffix = 0;
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_65;
      }
    }

    if (v35 != 1)
    {
      if (!v35 && *v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        inited = mosyntbase_WriteMessage(a1, "Resetting default domain\\n", 0, "", 0, "", 0, "", 0);
        BestScenarioPathSuffix = inited;
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_577;
        }
      }

      goto LABEL_61;
    }

    v36 = *v19;
    if (*(v28 + 36))
    {
      if (v36 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting paragraph domain to '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }
      }

      v37 = FindDomainByName(v19, v28 + 36, (v19 + 52));
      v38 = *(v19 + 52);
      inited = mosyntkbaccphr_Nil(v37);
      if (v38 != inited)
      {
        goto LABEL_45;
      }

      if (*v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        inited = mosyntbase_WriteMessage(a1, "Didn't find paragraph domain '%s'\\n", 0, v28 + 36, 100, "", 0, "", 0);
        goto LABEL_49;
      }

      BestScenarioPathSuffix = 0;
    }

    else if (v36 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      inited = mosyntbase_WriteMessage(a1, "Resetting paragraph domain\\n", 0, "", 0, "", 0, "", 0);
LABEL_49:
      BestScenarioPathSuffix = inited;
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_577;
      }
    }

    v42 = *v24;
    *(v19 + 52) = *v24;
    goto LABEL_60;
  }

LABEL_65:
  v45 = v283;
  *(v283 + 60) = *(v283 + 56);
  v46 = mosyntkbaccphr_AccPhrType(*(v45 + 16));
  v47 = v283;
  if (!v46)
  {
    v287 = 0;
    v54 = mosyntkbsymtab_WildConsId(*(v283 + 8));
    SentTermCommList = GenAccTree(a1, v47, a8, &v287);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    v55 = v287;
    LODWORD(v292) = 0;
    SentTermCommList = Accentuation1(a1, v47, v287, &v292);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    *&v290[0] = 0;
    v286 = 0;
    *&v292 = 0;
    SentTermCommList = GetInitPhrasing1(a1, v47, v55, 3, 0, &v286, &v292);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    v56 = v292 ? *(v292 + 24) : 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v47 + 40), v56, v290);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    v57 = FinalBoundaryIndex(a1, *&v290[0]);
    SentTermCommList = AppendInitBound(a1, v47, &v286, &v292, v57, 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    *(v292 + 16) = v56;
    if (*v47 <= 0)
    {
      v59 = v286;
    }

    else
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "initial phrasing: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      v58 = v286;
      SentTermCommList = WriteBoundList(a1, v47, v286, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v59 = v58;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }
    }

    v82 = *(v47 + 24);
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0;
    v282 = v59;
    if (v59)
    {
      v83 = 0;
      BestScenarioPathSuffix = 0;
      v84 = v59;
      do
      {
        v85 = *(v84 + 4);
        if (v85 < 100)
        {
          *(&v292 + v85) = 1;
        }

        else
        {
          SentTermCommList = mosyntbase_WString(a1, "*** maximum nr of phrase boundary index levels exceeded", 0);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            goto LABEL_576;
          }

          BestScenarioPathSuffix = mosyntbase_WLn(a1);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          LOWORD(v85) = *(v84 + 4);
          v59 = v282;
        }

        if (v83 <= v85)
        {
          v83 = v85;
        }

        v84 = *v84;
      }

      while (v84);
    }

    else
    {
      BestScenarioPathSuffix = 0;
      v83 = 0;
    }

    v155 = v83;
    for (i = 1; i != 3; ++i)
    {
      if (v155 >= 2)
      {
        v157 = v155;
        do
        {
          if (v157 > 0x63 || *(&v292 + v157))
          {
            if (v59)
            {
              v158 = 0;
              v159 = 0;
              v160 = 0;
              v161 = v59;
              while (1)
              {
                v162 = v161[4];
                if ((v162 & 0x80000000) == 0)
                {
                  break;
                }

LABEL_386:
                v161 = *v161;
                if (!v161)
                {
                  goto LABEL_387;
                }
              }

              if (!v159 || (v159[4] & 0x80000000) == 0)
              {
                v160 = v159;
              }

              if (v158)
              {
                v163 = v158[4];
                if (v157 == v163 && v160)
                {
                  if (i == 1)
                  {
                    v164 = v160[5];
                    if (v164 || v163 < v160[4])
                    {
                      if (v163 <= v162 || v158[5])
                      {
                        goto LABEL_384;
                      }
                    }

                    else
                    {
                      v164 = 0;
                    }

LABEL_383:
                    v158[4] = -1;
                    v160[5] = v158[5] + v164;
                    v160[6] += v158[6];
                    goto LABEL_384;
                  }

                  if (v82 > 1 || v163 >= 3)
                  {
                    v165 = v160[6];
                    if (v165 >= 5)
                    {
                      v166 = v82 - 1;
                    }

                    else
                    {
                      v166 = v82;
                    }

                    if (v165 < 3)
                    {
                      v166 = v82 + 1;
                    }

                    v167 = v158[6];
                    v168 = v167 >= 5 ? v82 - 1 : v82;
                    v169 = v167 >= 3 ? v168 : v82 + 1;
                    if (v163 >= v160[4])
                    {
                      if (v163 >= v162 && v166 >= v160[5])
                      {
                        v164 = v160[5];
                        goto LABEL_383;
                      }

                      if (v163 > v162 && v169 >= v158[5])
                      {
                        v164 = v160[5];
                        goto LABEL_383;
                      }
                    }
                  }
                }

LABEL_384:
                v159 = v158;
              }

              else
              {
                v159 = 0;
              }

              v158 = v161;
              goto LABEL_386;
            }

LABEL_387:
            if (*v47 >= 1)
            {
              SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              v170 = (i == 1 ? "after clitic melting" : "after rhythmic melting");
              SentTermCommList = mosyntbase_WString(a1, v170, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              SentTermCommList = mosyntbase_WString(a1, ", index ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              SentTermCommList = mosyntbase_WInt(a1, v157, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              SentTermCommList = mosyntbase_WString(a1, ": ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              SentTermCommList = WriteBoundList(a1, v47, v282, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                goto LABEL_576;
              }

              BestScenarioPathSuffix = mosyntbase_WLn(a1);
              v59 = v282;
              if ((BestScenarioPathSuffix & 0x80000000) != 0)
              {
                goto LABEL_577;
              }
            }
          }

          v204 = v157-- <= 2;
        }

        while (!v204);
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      goto LABEL_577;
    }

    if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v54, 8u, 1))
    {
LABEL_404:
      if (*v47 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        SentTermCommList = mosyntbase_WStringLn(a1, "before setting phrase types: ", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        SentTermCommList = WriteBoundList(a1, v47, v282, 1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }

        SentTermCommList = mosyntbase_WLn(a1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }
      }

      goto LABEL_437;
    }

    if (v282)
    {
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = v282;
      while (1)
      {
        if (*(v174 + 4) > 1u)
        {
          v175 = v172;
          goto LABEL_422;
        }

        v171 = 0;
        v175 = 0;
        if (!v173 || !v172)
        {
          goto LABEL_420;
        }

        v173 = v174;
        if (v172 != v174)
        {
          break;
        }

LABEL_422:
        v176 = *(v174 + 15);
        if (v176 <= 0)
        {
          v174 = *v174;
        }

        else
        {
          v174 = *v174;
          if (v171 == 0 || v171 >= v176)
          {
            v175 = v174;
            v171 = v176;
          }
        }

        v172 = v175;
        if (!v174)
        {
          goto LABEL_428;
        }
      }

      do
      {
        if ((*(v172 + 8) & 0x80000000) == 0)
        {
          *(v172 + 8) = -1;
        }

        v172 = *v172;
      }

      while (v172 != v174);
      v175 = 0;
      v171 = 0;
LABEL_420:
      v173 = v174;
      goto LABEL_422;
    }

LABEL_428:
    if (*v47 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "after postcyclic deletion: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = WriteBoundList(a1, v47, v282, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      goto LABEL_404;
    }

LABEL_437:
    if (v282)
    {
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      LODWORD(v285) = 0;
      *&v292 = 0;
      *&v290[0] = 0;
      v182 = v282;
      v183 = 1;
      do
      {
        mosyntdata_GetSentTermCommList(a1, *(v47 + 40), *(v182 + 4), &v292);
        mosyntdata_GetPunctFromCommandList(a1, v292, &v285, v290);
        if (v285 == 11)
        {
          v184 = 1;
        }

        else
        {
          v184 = v178;
        }

        if (v285 == 10)
        {
          v179 = 1;
        }

        else
        {
          v178 = v184;
        }

        if (*(v182 + 14) >= 1)
        {
          if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v182 + 14), 6u, 2))
          {
            v183 = 0;
            v181 = 1;
          }

          else if (v183 || !mosyntkbsymtab_PropTabAvailable(*(v47 + 8)))
          {
            v183 = 0;
          }

          else
          {
            v183 = 0;
            if (mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v182 + 14), 6u, 3))
            {
              v180 = 1;
            }
          }
        }

        v182 = *v182;
      }

      while (v182);
      if (v178)
      {
        v185 = 9;
      }

      else
      {
        v185 = 2;
      }

      if (v179)
      {
        if (v180)
        {
          v185 = 8;
        }

        else
        {
          v185 = 4;
        }

        if (!v181)
        {
          if (v180)
          {
            v265 = v282;
            do
            {
              if (*(v265 + 14) >= 1 && mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), *(v265 + 14), 6u, 3))
              {
                *(v265 + 4) = 2;
              }

              v265 = *v265;
            }

            while (v265);
            v209 = 1;
          }

          else
          {
            v209 = 0;
            v185 = 4;
          }

LABEL_531:
          if (v282)
          {
            v210 = 0;
            v211 = 1;
            v212 = v282;
            do
            {
              if (v212[1] < 0)
              {
                v213 = *v212;
              }

              else
              {
                v213 = *v212;
                if (v210)
                {
                  if (!v213)
                  {
                    *(v210 + 8) = v185;
                    break;
                  }

                  if (v209)
                  {
                    if (v211)
                    {
                      v211 = 0;
                      *(v210 + 8) = 6;
                    }

                    else
                    {
                      *(v210 + 8) = 7;
                    }
                  }

                  else
                  {
                    *(v210 + 8) = 1;
                  }
                }

                v210 = v212;
              }

              v212 = v213;
            }

            while (v213);
          }

          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = mosyntbase_WStringLn(a1, "after setting phrase types: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = WriteBoundList(a1, v47, v282, 1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }
          }

          v223 = mosyntkbsymtab_WildConsId(*(v47 + 8));
          if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v223, 9u, 1))
          {
            if (!v282)
            {
              goto LABEL_653;
            }

            v224 = v282;
            do
            {
              if (*(v224 + 15))
              {
                ++*(v224 + 15);
              }

              v224 = *v224;
            }

            while (v224);
          }

          if (v282)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            BestScenarioPathSuffix = 0;
            v228 = v282;
            do
            {
              if ((v228[1] & 0x80000000) == 0)
              {
                if (v226)
                {
                  *(v226 + 15) = 1;
                }

                *&v292 = 0;
                SentTermCommList = mosyntpal_ALLOCATE(a1, &v292, 0x12Au);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                if (v227)
                {
                  for (j = 0; j != 99; ++j)
                  {
                    *(v292 + j) = 0;
                  }

                  for (k = v227; k != v228; k = *k)
                  {
                    v231 = *(k + 30);
                    if (v231 <= 98)
                    {
                      *(v292 + v231) = 1;
                    }
                  }

                  v232 = 0;
                  v233 = 1;
                  v234 = v292;
                  do
                  {
                    if (*(v234 + v232))
                    {
                      *(v234 + 2 * v232 + 100) = v233++;
                    }

                    ++v232;
                  }

                  while (v232 != 99);
                  while (v227 != v228)
                  {
                    v235 = *(v227 + 30);
                    if (v235 <= 98)
                    {
                      v236 = v292;
                      if (*v47 >= 2 && *(v292 + 2 * v235 + 100) != v235)
                      {
                        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        SentTermCommList = mosyntbase_WString(a1, "accent normalization: ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v227 + 30), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        SentTermCommList = mosyntbase_WString(a1, " changed to ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v292 + 2 * *(v227 + 30) + 100), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        SentTermCommList = mosyntbase_WLn(a1);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          goto LABEL_576;
                        }

                        v236 = v292;
                        LOWORD(v235) = *(v227 + 30);
                      }

                      *(v227 + 30) = *(v236 + 2 * v235 + 100);
                      if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)))
                      {
                        v237 = mosyntkbsymtab_IntPropValue(a1, *(v47 + 8), *(v227 + 28), 2u);
                      }

                      else
                      {
                        v237 = 1;
                      }

                      v238 = *(v227 + 30);
                      if (v238 >= 2 && v237 > v238)
                      {
                        *(v227 + 30) = v237;
                      }
                    }

                    v227 = *v227;
                  }
                }

                BestScenarioPathSuffix = mosyntpal_DEALLOCATE(a1, &v292);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  goto LABEL_577;
                }

                v226 = 0;
                v225 = 0;
                v227 = v228;
              }

              if (mosyntkbsymtab_PropTabAvailable(*(v47 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v47 + 8), v223, 7u, 1))
              {
                v239 = *(v228 + 15);
                if (v225)
                {
                  v240 = v225 <= v239;
                }

                else
                {
                  v240 = 0;
                }

                v241 = !v240;
                v242 = v241 == 0;
                if (v241)
                {
                  v243 = v228;
                }

                else
                {
                  v243 = v226;
                }

                if (v242)
                {
                  v244 = v225;
                }

                else
                {
                  v244 = *(v228 + 15);
                }
              }

              else
              {
                v239 = *(v228 + 15);
                v245 = v225 != 0;
                v246 = v225 < v239;
                v247 = !v245 || !v246;
                if (v245 && v246)
                {
                  v243 = v226;
                }

                else
                {
                  v243 = v228;
                }

                if (v247)
                {
                  v244 = *(v228 + 15);
                }

                else
                {
                  v244 = v225;
                }
              }

              if (v239 >= 1)
              {
                v226 = v243;
                v225 = v244;
              }

              v228 = *v228;
            }

            while (v228);
            goto LABEL_654;
          }

LABEL_653:
          BestScenarioPathSuffix = 0;
LABEL_654:
          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = mosyntbase_WString(a1, "accent normalization and accent limitation: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = WriteBoundList(a1, v47, v282, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            BestScenarioPathSuffix = mosyntbase_WLn(a1);
          }

          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          if (v282)
          {
            v248 = 0;
            v249 = v282;
            do
            {
              v250 = *(v249 + 4);
              if ((v250 & 0x80000000) == 0)
              {
                if (v248)
                {
                  v251 = *(v249 + 8);
                  v204 = v251 > 8;
                  v252 = (1 << v251) & 0x1D0;
                  v253 = v204 || v252 == 0;
                  if (!v253 && v248 != v249)
                  {
                    v255 = v248;
                    do
                    {
                      if (*(v255 + 30) == 2)
                      {
                        *(v255 + 30) = 3;
                      }

                      v255 = *v255;
                    }

                    while (v255 != v249);
                  }
                }

                if (v250 < 2u)
                {
                  v248 = v249;
                }
              }

              v249 = *v249;
            }

            while (v249);
          }

          if (*v47 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = mosyntbase_WString(a1, "reduction of pitch accents: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = WriteBoundList(a1, v47, v282, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              goto LABEL_576;
            }
          }

          if (v282)
          {
            v256 = *(v47 + 40);
            if (v256)
            {
              v257 = v282;
              while (1)
              {
                v258 = v257;
                v259 = *(v256 + 16 * *(v257 + 4) + 8);
                if (v259)
                {
                  v260 = *(v258 + 4);
                  if (v260 >= 2)
                  {
                    v260 = 2;
                  }

                  *(v259 + 8) = v260;
                  *(v259 + 12) = *(v258 + 8);
                }

                v257 = *v258;
                if (!*v258)
                {
                  break;
                }

                v261 = *(v256 + 16 * *(v258 + 5));
                if (v261)
                {
                  v262 = *(v258 + 15);
                  if (v262 >= 3)
                  {
                    v263 = 3;
                  }

                  else
                  {
                    v263 = v262;
                  }

                  if (v262 <= 98)
                  {
                    v264 = v263;
                  }

                  else
                  {
                    v264 = 0;
                  }

                  *(v261 + 16) = v264;
                }
              }
            }
          }

          if (v282)
          {
            v266 = v282;
            do
            {
              *&v292 = v266;
              v266 = *v266;
              v267 = mosyntpal_DEALLOCATE(a1, &v292);
              BestScenarioPathSuffix = v267;
            }

            while ((v267 & 0x80000000) == 0 && v266);
            if ((v267 & 0x80000000) != 0)
            {
              goto LABEL_577;
            }
          }

          goto LABEL_555;
        }

        v185 = 5;
      }
    }

    else
    {
      v185 = 2;
    }

    v209 = 0;
    goto LABEL_531;
  }

  v286 = 0;
  *(v283 + 80) = 0;
  *(v47 + 88) = 0;
  *(v47 + 72) = 0;
  NewAPVertex(a1, v47, *(a8 + 52), &v286);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    goto LABEL_576;
  }

  *&v292 = 0;
  TreeToChart(a1, v47, a8, v286, 0, &v292);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    goto LABEL_576;
  }

  v48 = &v286;
  if (v292)
  {
    v48 = (v292 + 24);
  }

  v49 = *v48;
  if (v286 == *v48)
  {
LABEL_555:
    v215 = v283;
    v216 = *(v283 + 32);
    *&v292 = v216;
    if (!v216)
    {
LABEL_575:
      *(v215 + 32) = 0;
      SentTermCommList = mosyntpal_DEALLOCATE(a1, &v283);
      goto LABEL_576;
    }

    while (1)
    {
      v217 = *v216;
      v218 = *(v216 + 2);
      if (v218 > 4)
      {
        if (v218 <= 6)
        {
          if (v218 == 5)
          {
            v219 = v216 + 2;
            v220 = a1;
          }

          else
          {
LABEL_568:
            v219 = v216 + 2;
            v220 = a1;
          }

LABEL_572:
          SentTermCommList = mosyntpal_DEALLOCATE(v220, v219);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            goto LABEL_576;
          }

          goto LABEL_573;
        }

        if (v218 == 7)
        {
          v219 = v216 + 2;
          v220 = a1;
          goto LABEL_572;
        }

        if (v218 == 8)
        {
          goto LABEL_568;
        }
      }

      else
      {
        if (v218 > 2)
        {
          if (v218 == 3)
          {
            v219 = v216 + 2;
            v220 = a1;
          }

          else
          {
LABEL_565:
            v219 = v216 + 2;
            v220 = a1;
          }

          goto LABEL_572;
        }

        if (v218 == 1)
        {
          goto LABEL_565;
        }

        if (v218 == 2)
        {
          v219 = v216 + 2;
          v220 = a1;
          goto LABEL_572;
        }
      }

LABEL_573:
      SentTermCommList = mosyntpal_DEALLOCATE(a1, &v292);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      *&v292 = v217;
      v216 = v217;
      if (!v217)
      {
        goto LABEL_575;
      }
    }
  }

  SentTermCommList = SetFunctionWords(a1, v47, v286, *v48);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    goto LABEL_576;
  }

  v284 = 0;
  v50 = v286;
  if (*v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Sentence PoS and phonetic string:\\n", 0, "", 0, "", 0, "", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = WriteCoverage(a1, v47, v50, v49);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = mosyntbase_WLn(a1);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }
  }

  v285 = 0;
  if (v50 == v49)
  {
    v281 = (v47 + 16);
  }

  else
  {
    do
    {
      SentTermCommList = MatchEdge(a1, v47, v50[4], &v285, &v284);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      for (m = v50[6]; m; m = *m)
      {
        SentTermCommList = MatchEdge(a1, v47, m, &v285, &v284);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          goto LABEL_576;
        }
      }

      v50 = v50[2];
    }

    while (v50 != v49);
    v52 = v285;
    v53 = *(v47 + 16);
    v281 = (v47 + 16);
    if (v285)
    {
      BestScenarioPathSuffix = 0;
      do
      {
        if (IsMatchingRule(a1, v47, *(v52 + 2), v52[3], v52[2]))
        {
          BestScenarioPathSuffix = AddEdgeRule(a1, v47, *(v52 + 2), v52[3]);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          if (mosyntkbaccphr_GetRule(0, v53, *(v52 + 2)) >= 1)
          {
            BestScenarioPathSuffix = AddRuleScenarios(a1, v47, *(v52 + 2), (v52[2] + 40), &v284);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              goto LABEL_577;
            }
          }
        }

        v52 = *v52;
      }

      while (v52);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        goto LABEL_577;
      }
    }
  }

  v60 = v284;
  v61 = v286;
  if (v284)
  {
    v62 = 0;
    v298 = 0;
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    while (1)
    {
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), *(v60 + 8), &v292, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        goto LABEL_577;
      }

      if (v61 == v49)
      {
        goto LABEL_137;
      }

      v63 = v61;
      do
      {
        v64 = *(v60 + 8);
        v65 = 1;
        v66 = v63;
        while (1)
        {
          v67 = *(v66 + 6);
          if (!v67)
          {
            break;
          }

          while (1)
          {
            v68 = v67;
            v69 = v67[5];
            if (v69)
            {
              break;
            }

LABEL_118:
            v71 = 1;
LABEL_120:
            v67 = *v68;
            if (!*v68)
            {
              goto LABEL_121;
            }
          }

          while (1)
          {
            v70 = *(v69 + 2);
            if (v70 >= v64)
            {
              break;
            }

            v69 = *v69;
            if (!v69)
            {
              goto LABEL_118;
            }
          }

          v71 = v70 != v64;
          if (v70 != v64)
          {
            goto LABEL_120;
          }

LABEL_121:
          if (v71)
          {
            break;
          }

          v74 = v68[3];
LABEL_130:
          v65 = 0;
          v62 = v63;
          v66 = v74;
          if (v74 == v49)
          {
            v76 = AddSegment(a1, v47, v64, v63, v74);
            BestScenarioPathSuffix = v76;
            v62 = v63;
            if ((v76 & 0x80000000) != 0)
            {
              goto LABEL_577;
            }

            goto LABEL_137;
          }
        }

        v72 = *(v66 + 4);
        v73 = *(v72 + 40);
        if (v73)
        {
          v74 = *(v72 + 24);
          while (1)
          {
            v75 = *(v73 + 2);
            if (v75 >= v64)
            {
              break;
            }

            v73 = *v73;
            if (!v73)
            {
              goto LABEL_132;
            }
          }

          if (v75 == v64)
          {
            goto LABEL_130;
          }
        }

LABEL_132:
        if ((v65 & 1) == 0)
        {
          BestScenarioPathSuffix = AddSegment(a1, v47, v64, v62, v66);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }
        }

        v63 = *(v66 + 2);
      }

      while (v63 != v49);
LABEL_137:
      v60 = *v60;
      if (!v60)
      {
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          goto LABEL_577;
        }

        v61 = v286;
        break;
      }
    }
  }

  v287 = 0;
  v289 = 0;
  v288 = 0;
  v291 = 0;
  memset(v290, 0, sizeof(v290));
  BestScenarioPathSuffix = GetBestScenarioPathSuffix(a1, v47, 0, v61, v49, &v289 + 1, &v289, &v288, &v287);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    goto LABEL_577;
  }

  v77 = v287;
  if (*v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] Optimal Scenario Combination:\\n", 0, "", 0, "", 0, "", 0);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      goto LABEL_577;
    }
  }

  for (; v77; v77 = *v77)
  {
    if (*v47 >= 1 && v61 != *(v77[1] + 8))
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = WriteCoverage(a1, v47, v61, *(v77[1] + 8));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        goto LABEL_577;
      }
    }

    v78 = v77[1];
    v79 = *(v78 + 8);
    while (v61 != v79)
    {
      *(v61 + 20) = 0;
      v61 = v61[2];
    }

    if (*v47 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] Scenario '", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      v80 = *(v77[1] + 24);
      v298 = 0;
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      SentTermCommList = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), v80, &v292, 100);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, &v292, 100);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "' covers: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = WriteCoverage(a1, v47, *(v77[1] + 8), *(v77[1] + 16));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        goto LABEL_577;
      }

      goto LABEL_162;
    }

    while (v61 != *(v78 + 16))
    {
      v81 = *(v78 + 24);
      *(v61 + 20) = v81;
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v47 + 8), v81, v290, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        goto LABEL_577;
      }

      v61 = v61[2];
LABEL_162:
      v78 = v77[1];
    }
  }

  v272 = v49;
  if (v61 != v49 && *v47 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    SentTermCommList = WriteCoverage(a1, v47, v61, v49);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      goto LABEL_576;
    }

    BestScenarioPathSuffix = mosyntbase_WLn(a1);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      goto LABEL_577;
    }
  }

  while (v61 != v49)
  {
    *(v61 + 20) = 0;
    v61 = v61[2];
  }

  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    goto LABEL_577;
  }

  v86 = v286;
  if (v286 != v49)
  {
    BestScenarioPathSuffix = 0;
    v279 = *v281;
    v87 = v286;
    v268 = v286;
    while (1)
    {
      v88 = v87[6];
      v270 = v88 == 0;
      v277 = v87;
      if (v88)
      {
        break;
      }

      v88 = v87[4];
      if (v88)
      {
        break;
      }

      v154 = v272;
LABEL_338:
      v87 = v277[2];
      v86 = v268;
      if (v87 == v154)
      {
        goto LABEL_435;
      }
    }

    while (1)
    {
      v89 = *(v88 + 32);
      v90 = v279;
      if (v89)
      {
        break;
      }

LABEL_329:
      v88 = *v88;
      if (v88)
      {
        v153 = 0;
      }

      else
      {
        v153 = !v270;
      }

      if (v153)
      {
        v88 = v277[4];
        v270 = 1;
      }

      v154 = v272;
      if (!v88)
      {
        goto LABEL_338;
      }
    }

    while (1)
    {
      v275 = v89;
      v91 = v89[2];
      if (v91)
      {
        break;
      }

LABEL_328:
      v89 = *v275;
      if (!*v275)
      {
        goto LABEL_329;
      }
    }

    while (1)
    {
      if (mosyntkbaccphr_GetRule(0, v90, *(v91 + 2)) < 1)
      {
        goto LABEL_203;
      }

      Rule = mosyntkbaccphr_GetRule(0, v90, *(v91 + 2));
      v93 = *(v277 + 20);
      v94 = *v281;
      for (n = mosyntkbaccphr_AccPhrScenarios(*v281); ; n = mosyntkbaccphr_GetScenario(3, v94, v96))
      {
        v96 = n;
        Scenario = mosyntkbaccphr_Nil(n);
        if (v96 == Scenario)
        {
          break;
        }

        Scenario = mosyntkbaccphr_GetScenario(1, v94, v96);
        if (Scenario == v93)
        {
          break;
        }
      }

      if (v96 == mosyntkbaccphr_Nil(Scenario) || (RuleSet = mosyntkbaccphr_GetScenario(2, v94, v96), RuleSet == mosyntkbaccphr_Nil(RuleSet)))
      {
        v90 = v279;
        goto LABEL_203;
      }

      do
      {
        if (mosyntkbaccphr_GetRuleSetIsSubset(v94, RuleSet))
        {
          v99 = 0;
        }

        else
        {
          v99 = mosyntkbaccphr_GetRuleSet(1, v94, RuleSet) == Rule;
        }

        RuleSet = mosyntkbaccphr_GetRuleSet(4, v94, RuleSet);
      }

      while (RuleSet != mosyntkbaccphr_Nil(RuleSet) && !v99);
      v90 = v279;
      if (v99)
      {
        break;
      }

LABEL_203:
      v91 = *v91;
      if (!v91)
      {
        goto LABEL_328;
      }
    }

    if (*v47 >= 1)
    {
      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr]\\n[AccPhr] <<<< Applying rule:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntkbaccphr_WriteRuleHeadline(a1, *(v47 + 8), v279, *(v91 + 2));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Node Covers:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = WriteCoverage(a1, v47, *(v88 + 16), *(v88 + 24));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v90 = v279;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        goto LABEL_576;
      }
    }

    v100 = mosyntkbaccphr_GetRule(12, v90, *(v91 + 2));
    *&v292 = 0;
    v288 = 0;
    LODWORD(v289) = 0;
    *&v290[0] = 0;
    v287 = 0;
    v101 = *v281;
    if (mosyntkbaccphr_Nil(v100) == v100)
    {
      goto LABEL_221;
    }

    v273 = 0;
    BestScenarioPathSuffix = 0;
    v110 = v101;
    while (1)
    {
      mosyntkbaccphr_GetInstrType(v101, v100);
      if (mosyntkbaccphr_GetInstrType(v101, v100) <= 6)
      {
        *&v292 = v88;
        Instr = mosyntkbaccphr_GetInstr(0, v101, v100);
        if (!mosyntkbaccphr_GetNode(3, v101, Instr))
        {
          goto LABEL_252;
        }

        v112 = mosyntkbaccphr_GetInstr(0, v101, v100);
        if (mosyntkbaccphr_GetNodeMatchOp(v101, v112))
        {
          v113 = mosyntkbaccphr_GetInstr(0, v101, v100);
          v114 = *v275;
          HIDWORD(v289) = v113;
          if (v114)
          {
            do
            {
              v115 = IsMatchingNode(a1, v47, &v289 + 1, v114);
              if (v115)
              {
                break;
              }

              v114 = *v114;
            }

            while (v114);
            v101 = v110;
            if (v115)
            {
LABEL_252:
              if (*v47 >= 1)
              {
                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Instruction ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                BestScenarioPathSuffix = mosyntkbaccphr_WriteInstruction(a1, *(v47 + 8), v110, v100);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  goto LABEL_577;
                }
              }

              v123 = v110;
              InstrType = mosyntkbaccphr_GetInstrType(v110, v100);
              if ((InstrType - 3) >= 3)
              {
                if (InstrType == 2)
                {
                  if (mosyntkbaccphr_GetInstrRight(v110, v100))
                  {
                    v131 = (*(v292 + 24) + 24);
                  }

                  else
                  {
                    v131 = &v292;
                  }

                  v132 = 0;
                  v133 = *(*v131 + 16);
                  v273 = *(v133 + 32);
                  *(v133 + 84) = 1;
                }

                else if (InstrType)
                {
                  v132 = 1;
                }

                else
                {
                  InstrRight = mosyntkbaccphr_GetInstrRight(v110, v100);
                  v127 = 24;
                  v128 = 16;
                  if (InstrRight)
                  {
                    v128 = 24;
                  }

                  else
                  {
                    v127 = 32;
                  }

                  v129 = *(v292 + v128);
                  v273 = *(v129 + v127);
                  if (mosyntkbaccphr_GetInstr(2, v110, v100))
                  {
                    if (mosyntkbaccphr_GetInstr(2, v110, v100) == 1)
                    {
                      v130 = 5;
                    }

                    else
                    {
                      v130 = mosyntkbaccphr_GetInstr(2, v110, v100);
                    }

                    LODWORD(v289) = v130;
                    if (*(v129 + 68) < 2u)
                    {
                      goto LABEL_303;
                    }

                    *(v129 + 68) = 1;
                    if (v130 <= *(v129 + 72))
                    {
                      goto LABEL_303;
                    }

                    v132 = 0;
                    *(v129 + 72) = v130;
                  }

                  else
                  {
                    if ((*(v129 + 68) & 0x80000000) == 0)
                    {
                      goto LABEL_303;
                    }

                    v132 = 0;
                    *(v129 + 68) = 2;
                  }
                }
              }

              else
              {
                if (mosyntkbaccphr_GetInstrTargetRange(v110, v100) && mosyntkbaccphr_GetInstrTargetRange(v110, v100) == 1)
                {
                  if (mosyntkbaccphr_GetInstrRight(v110, v100))
                  {
                    v125 = *(*(v292 + 24) + 24);
                  }

                  else
                  {
                    v125 = *(*(v292 + 16) + 32);
                  }

                  *&v292 = v125;
                  v123 = v110;
                }

                v273 = v292;
                v134 = *(v292 + 16);
                v135 = mosyntkbaccphr_GetInstrType(v123, v100);
                if (v135 == 4)
                {
                  v136 = 2;
                }

                else
                {
                  v136 = 1;
                }

                if (v135 == 5)
                {
                  v137 = 3;
                }

                else
                {
                  v137 = v136;
                }

                v138 = mosyntkbaccphr_GetInstr(2, v123, v100);
                SentTermCommList = mosyntdata_EncodeSymbolicValue(a1, v138, 0, &v289);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                v139 = mosyntkbaccphr_GetInstr(2, v110, v100);
                BestScenarioPathSuffix = mosyntdata_EncodeSymbolicValue(a1, v139, 1, &v288);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  goto LABEL_577;
                }

                do
                {
                  v140 = mosyntdata_SentTermBoundData(a1, *(v47 + 40), *(*(v134 + 32) + 84));
                  if (v140)
                  {
                    v141 = v140;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v287);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      goto LABEL_576;
                    }

                    v142 = v287;
                    v143 = v289;
                    *(v287 + 8) = v137;
                    *(v142 + 12) = v143;
                    *&v290[0] = mosyntdata_LastPhonEle(a1, *v141);
                    BestScenarioPathSuffix = mosyntdata_AppendPhonList(a1, v141, v290, v287, v287);
                    if ((BestScenarioPathSuffix & 0x80000000) != 0)
                    {
                      goto LABEL_577;
                    }
                  }

                  v134 = *(v134 + 16);
                  v144 = mosyntdata_SentTermBoundData(a1, *(v47 + 40), *(v134 + 64));
                  if (v144)
                  {
                    v145 = v144;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v287);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      goto LABEL_576;
                    }

                    v146 = v287;
                    v147 = v288;
                    *(v287 + 8) = v137;
                    *(v146 + 12) = v147;
                    *&v290[0] = mosyntdata_LastPhonEle(a1, *v145);
                    v148 = v287;
                    if (v287 && (*v287 = *v145, *v145 = v148, !*&v290[0]))
                    {
                      BestScenarioPathSuffix = 0;
                      *&v290[0] = v148;
                    }

                    else
                    {
                      BestScenarioPathSuffix = 0;
                    }
                  }
                }

                while (v134 != *(v292 + 24));
LABEL_303:
                v132 = 0;
              }

              if (*v47 >= 1)
              {
                SentTermCommList = mosyntbase_WString(a1, " : ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  goto LABEL_576;
                }

                if (v132)
                {
                  v149 = mosyntbase_WStringLn(a1, " not implemented yet!", 0);
                }

                else
                {
                  SentTermCommList = WriteCoverage(a1, v47, *(v273 + 16), *(v273 + 24));
                  if ((SentTermCommList & 0x80000000) != 0)
                  {
                    goto LABEL_576;
                  }

                  v149 = mosyntbase_WLn(a1);
                }

                BestScenarioPathSuffix = v149;
                if ((v149 & 0x80000000) != 0)
                {
                  goto LABEL_577;
                }
              }

              goto LABEL_311;
            }
          }

          else
          {
            v101 = v110;
          }
        }

        v116 = mosyntkbaccphr_GetInstr(0, v101, v100);
        if ((mosyntkbaccphr_GetNodeMatchOp(v101, v116) & 2) != 0 && *(v88 + 72))
        {
          v117 = mosyntkbaccphr_GetInstrRight(v110, v100);
          if (v117)
          {
            v118 = *(v88 + 72);
            do
            {
              v119 = v118;
              v118 = v118[7];
            }

            while (v118);
            v120 = mosyntkbaccphr_GetInstr(0, v110, v100);
            v121 = IsRightMatchingTarget(a1, v47, v120, v119, &v292);
          }

          else
          {
            v122 = mosyntkbaccphr_GetInstr(v117, v110, v100);
            v121 = IsLeftMatchingTarget(a1, v47, v122, *(v88 + 72), &v292);
          }

          if (v121)
          {
            goto LABEL_252;
          }
        }
      }

LABEL_311:
      v101 = v110;
      v100 = mosyntkbaccphr_GetInstr(6, v110, v100);
      if (v100 == mosyntkbaccphr_Nil(v100))
      {
        v90 = v279;
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          goto LABEL_577;
        }

LABEL_221:
        v102 = mosyntkbaccphr_GetRule(13, v90, *(v91 + 2));
        v103 = *v281;
        Children = mosyntkbaccphr_Nil(v102);
        LODWORD(v105) = v102;
        if (v102 != Children)
        {
          v105 = v102;
          do
          {
            v106 = *(v88 + 16);
            Children = mosyntkbaccphr_GetChildren(1, v103, v102);
            LODWORD(v292) = Children;
            if (v106 == *(v88 + 24))
            {
              break;
            }

            v107 = Children;
            do
            {
              Children = mosyntkbaccphr_Nil(Children);
              if (v107 == Children)
              {
                break;
              }

              v108 = *(*(v106 + 32) + 32);
              do
              {
                v109 = v108;
                v108 = *v108;
              }

              while (v108);
              Children = IsMatchingNode(a1, v47, &v292, v109);
              if (!Children)
              {
                break;
              }

              v106 = *(v106 + 16);
              Children = mosyntkbaccphr_GetNode(8, v103, v107);
              v107 = Children;
              LODWORD(v292) = Children;
            }

            while (v106 != *(v88 + 24));
            if (v106 == *(v88 + 24))
            {
              break;
            }

            v105 = mosyntkbaccphr_GetChildren(2, v103, v105);
            Children = mosyntkbaccphr_Nil(v105);
          }

          while (v105 != Children);
        }

        if (v105 == mosyntkbaccphr_Nil(Children))
        {
          BestScenarioPathSuffix = 0;
LABEL_325:
          v90 = v279;
          if (*v47 >= 1)
          {
            BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] End rule.>>>>>\\n", 0, "", 0, "", 0, "", 0);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              goto LABEL_577;
            }
          }

          goto LABEL_203;
        }

        if (*v47 < 1)
        {
          BestScenarioPathSuffix = 0;
LABEL_322:
          v150 = *(v88 + 16);
          v151 = mosyntkbaccphr_GetChildren(1, v103, v102);
          if (v150 != *(v88 + 24))
          {
            Node = v151;
            do
            {
              *(v150 + 84) = mosyntkbaccphr_GetNode(2, v103, Node);
              v150 = *(v150 + 16);
              Node = mosyntkbaccphr_GetNode(8, v103, Node);
            }

            while (v150 != *(v88 + 24));
          }

          goto LABEL_325;
        }

        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) == 0)
        {
          SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
          if ((SentTermCommList & 0x80000000) == 0)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) == 0)
            {
              SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Template ", 0);
              if ((SentTermCommList & 0x80000000) == 0)
              {
                BestScenarioPathSuffix = mosyntkbaccphr_WritePromTemplate(a1, *(v47 + 8), v103, v105);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  goto LABEL_577;
                }

                goto LABEL_322;
              }
            }
          }
        }

LABEL_576:
        BestScenarioPathSuffix = SentTermCommList;
        goto LABEL_577;
      }
    }
  }

  BestScenarioPathSuffix = 0;
LABEL_435:
  *(v86 + 34) = 0;
  *&v292 = 0;
  if (v272)
  {
    mosyntdata_GetSentTermCommList(a1, *(v47 + 40), v272[16], &v292);
    v177 = v292;
  }

  else
  {
    v177 = 0;
  }

  *(v272 + 34) = FinalBoundaryIndex(a1, v177);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    goto LABEL_577;
  }

  v269 = v286;
  if (!v286)
  {
    BestScenarioPathSuffix = 0;
    goto LABEL_546;
  }

  v186 = 0;
  v187 = 0;
  v188 = 0;
  BestScenarioPathSuffix = 0;
  LODWORD(v287) = 0;
  *&v292 = 0;
  *&v290[0] = 0;
  v189 = v286;
  do
  {
    v274 = v189;
    if (*(v189 + 34) < 0)
    {
      goto LABEL_506;
    }

    if (v187 && !v186)
    {
      if (v187 != v189)
      {
        v186 = 0;
        v190 = -1;
        v271 = v187;
        do
        {
          v278 = v190;
          v280 = v186;
          v276 = v187;
          v191 = *(v187[4] + 32);
          do
          {
            v192 = v191;
            v191 = *v191;
          }

          while (v191);
          v193 = *v281;
          v194 = mosyntkbaccphr_AccPhrHierarchy(*v281);
          BYTE4(v289) = 0;
          v195 = mosyntkbaccphr_Nil(v194);
          if (v194 == v195)
          {
            v196 = 0;
          }

          else
          {
            v196 = 0;
            do
            {
              v197 = v192[1];
              v198 = *(v197 + 16);
              ConsList = mosyntkbaccphr_GetConsList(0, v193, v194);
              v200 = mosyntkbaccphr_GetConsList(1, v193, v194);
              v201 = mosyntkbaccphr_CheckMatchingConsFeat3(a1, v193, v198, (v197 + 24), ConsList, v200, &v289 + 4);
              if (!BYTE4(v289))
              {
                ++v196;
                v201 = mosyntkbaccphr_GetConsList(2, v193, v194);
                v194 = v201;
              }

              v195 = mosyntkbaccphr_Nil(v201);
            }

            while (v194 != v195 && !BYTE4(v289));
          }

          if (v194 == mosyntkbaccphr_Nil(v195))
          {
            v202 = -1;
          }

          else
          {
            v202 = v196;
          }

          v190 = v278;
          if (v278 >= v202)
          {
            v203 = v202;
          }

          else
          {
            v203 = v278;
          }

          v204 = v278 <= v202 || v202 <= -1;
          v189 = v274;
          v186 = v280;
          if (!v204)
          {
            v186 = v274;
          }

          if (v202 >= 0)
          {
            v190 = v203;
          }

          v187 = v276[2];
        }

        while (v187 != v274);
        v187 = v271;
        if (v186)
        {
          goto LABEL_505;
        }
      }

      v186 = v187;
      if (mosyntkbaccphr_AccPhrDefaultEmph(*v281) != 1)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v281) != 2)
        {
          v205 = *v187;
          v189 = v274;
          v186 = v187;
          if (v205 != (*v274 + v205) / 2)
          {
            v186 = v187;
            do
            {
              v186 = *(v186 + 16);
            }

            while (*v186 != (*v274 + v205) / 2);
          }

          goto LABEL_505;
        }

        v189 = v274;
        v186 = v274[1];
      }
    }

    if (!v186)
    {
      v188 = v187;
      v187 = v189;
      goto LABEL_506;
    }

LABEL_505:
    *(v186 + 84) = 1;
    v188 = v187;
    v187 = v189;
    v186 = 0;
LABEL_506:
    if (*(v189 + 21) == 1)
    {
      if (v186)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v281) == 1)
        {
          v206 = 3;
        }

        else
        {
          *(v186 + 84) = -1;
          BestScenarioPathSuffix = SetFunctionWords(a1, v47, v186, *(v186 + 16));
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            goto LABEL_577;
          }

          if (*(v186 + 84) == -1)
          {
            *(v186 + 84) = 3;
          }

          v206 = 1;
          v189 = v274;
          v186 = v274;
        }

        *(v189 + 21) = v206;
      }

      else
      {
        v186 = v189;
      }
    }

    v189 = v189[2];
  }

  while (v189);
  if (!v187)
  {
    goto LABEL_546;
  }

  *(v187 + 19) = 0;
  if (!v188 || *(v188 + 19))
  {
    goto LABEL_546;
  }

  SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v47 + 40), *(v187 + 16), v290);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    goto LABEL_576;
  }

  BestScenarioPathSuffix = mosyntdata_GetPunctFromCommandList(a1, *&v290[0], &v287, &v292);
  if ((BestScenarioPathSuffix & 0x80000000) == 0)
  {
    v207 = v287 == 11 ? 9 : 2;
    v208 = v287 == 10 ? 4 : v207;
    *(v188 + 19) = v208;
LABEL_546:
    for (ii = v269; ii != v272; ii = ii[2])
    {
      if (*(ii + 21) == -1)
      {
        *(ii + 21) = 3;
      }

      if ((*(ii + 34) & 0x80000000) == 0 && !*(ii + 19))
      {
        *(ii + 19) = 1;
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) == 0)
    {
      ChartToSentTermData(v47, v286);
      goto LABEL_555;
    }
  }

LABEL_577:
  v221 = *MEMORY[0x1E69E9840];
  return BestScenarioPathSuffix;
}

uint64_t FindDomainById(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    v7 = i;
    *a3 = i;
    result = mosyntkbaccphr_Nil();
    if (v7 == result)
    {
      break;
    }

    result = mosyntkbaccphr_GetScenario(1, v5, *a3);
    if (result == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t FindDomainByName(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    *a3 = i;
    ScenarioNamePtr = mosyntkbaccphr_GetScenarioNamePtr(v5, i);
    v8 = *a3;
    result = mosyntkbaccphr_Nil();
    if (v8 == result)
    {
      break;
    }

    result = mosyntbase_CEqual(ScenarioNamePtr, 50, a2, 100);
    if (result)
    {
      break;
    }
  }

  return result;
}

uint64_t GenAccTree(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  v16 = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = AddAccNode(a1, a2, a4, &v16);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v9 = v16;
    *(v16 + 16) = *(v5 + 52);
    *(v9 + 24) = 0;
    *(v9 + 26) = *(v5 + 8);
    if (*(v5 + 60))
    {
      v14 = 0;
      v15 = 0;
      v10 = AddAccNode(a1, a2, &v15, &v14);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      *(v9 + 8) = v15;
      v11 = v14;
      *(v14 + 16) = *(v5 + 52);
      v12 = 1;
      *(v11 + 24) = 1;
      if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
      {
        if (mosyntkbsymtab_IntPropValue(a1, *(a2 + 8), *(v5 + 8), 2u) >= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 99;
        }
      }

      *(v11 + 26) = v12;
    }

    else
    {
      v10 = GenAccTree(a1, a2, v5[1], v9 + 8);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }

    v5 = *v5;
    if (!v5)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t AddAccNode(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v14 = 0;
  result = mosyntpal_ALLOCATE(a1, &v14, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v14;
    v15 = 0;
    result = mosyntpal_ALLOCATE(a1, &v15, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v15 = *(a2 + 32);
      v10 = v14;
      v11 = v15;
      *(a2 + 32) = v15;
      *(v11 + 2) = 1;
      v11[2] = v9;
      *v10 = 0;
      v12 = *a4;
      v13 = v14;
      if (!*a4)
      {
        v12 = a3;
      }

      *v12 = v14;
      *a4 = v13;
      *(v13 + 8) = 0;
    }
  }

  return result;
}

uint64_t Accentuation1(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = mosyntkbsymtab_WildConsId(*(a2 + 8));
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*(a3 + 24))
  {
    if (*(a3 + 26) == 1)
    {
      FirstAccPatVal = 0;
      *a4 = 1;
      return FirstAccPatVal;
    }

    return 0;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = v8;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v19 = 0;
  do
  {
    FirstAccPatVal = Accentuation1(a1, a2, v10, &v19);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v12 = v19 + *a4;
    *a4 = v12;
    v10 = *v10;
  }

  while (v10);
  if (v12 < 2)
  {
    return FirstAccPatVal;
  }

  if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
  {
    v20 = 0;
    goto LABEL_30;
  }

  FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), *(a3 + 26), 3, v21, &v20);
  if ((FirstAccPatVal & 0x80000000) != 0)
  {
    return FirstAccPatVal;
  }

  v13 = v20;
  if (!v20)
  {
LABEL_30:
    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
    {
      FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), v11, 3, v21, &v20);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }

      v17 = v20;
      if (v20)
      {
        while (1)
        {
          *(a2 + 64) = 0;
          if (*a2 >= 2)
          {
            v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WString(a1, "applying default pattern", 0);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WLn(a1);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v17 = v20;
          }

          matched = SingleTreeMatchFound(a1, a2, a3, v17);
          v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
          if ((FirstAccPatVal & 0x80000000) != 0)
          {
            return FirstAccPatVal;
          }

          v17 = v20;
          if (!v20 || matched)
          {
            if (v20)
            {
              FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
              if ((FirstAccPatVal & 0x80000000) != 0)
              {
                return FirstAccPatVal;
              }
            }

            if (!matched)
            {
              break;
            }

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_47:
    *a4 = 1;
    if (*a2 >= 1)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "after accentuation of ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, ": ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = WriteAccList(a1, a2, a3);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      FirstAccPatVal = mosyntbase_WLn(a1);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }
    }

    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(a3 + 26), 4u, 1))
    {
      return FirstAccPatVal;
    }

    return RhythmicAccShift(a1, a2, a3);
  }

  while (1)
  {
    *(a2 + 64) = 0;
    if (*a2 >= 2)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "applying pattern for constituent ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v13 = v20;
    }

    v15 = SingleTreeMatchFound(a1, a2, a3, v13);
    v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v13 = v20;
    if (!v20 || v15)
    {
      if (v20)
      {
        FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
        if ((FirstAccPatVal & 0x80000000) != 0)
        {
          return FirstAccPatVal;
        }
      }

      if (!v15)
      {
        goto LABEL_30;
      }

LABEL_45:
      ReduceAccents(a2, a3);
      FirstAccPatVal = 0;
      goto LABEL_47;
    }
  }
}

uint64_t SingleTreeMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = mosyntkbsymtab_WildConsId(*(a2 + 8));
  if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), v8, 9u, 1))
  {
    v9 = *a3;
    *a3 = 0;
    result = MatchFound(a1, a2, a3, a4);
    *a3 = v9;
  }

  else
  {

    return MatchFound(a1, a2, a3, a4);
  }

  return result;
}

uint64_t ReduceAccents(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 24))
  {
    if (*(result + 64) != a2)
    {
      ++*(a2 + 26);
    }
  }

  else
  {
    for (i = *(a2 + 8); i; i = *i)
    {
      result = ReduceAccents(v2, i);
    }
  }

  return result;
}

uint64_t WriteAccList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (*(a3 + 24))
  {
    result = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(a3 + 16), &v8);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntdata_WriteCommandList(a1, v8);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, "[", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WInt(a1, *(a3 + 26), 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, "]", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 16), &v9);
              if ((result & 0x80000000) == 0)
              {
                return mosyntdata_WritePhonList(a1, *(a2 + 8), v9);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = mosyntbase_WString(a1, "( ", 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = (a3 + 8);
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        result = WriteAccList(a1, a2, v7);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      return mosyntbase_WString(a1, ")", 0);
    }
  }

  return result;
}

uint64_t RhythmicAccShift(uint64_t a1, int *a2, uint64_t a3)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(v10, 0, 24);
  AccShift(a3, v10, &v9);
  if (!v9 || *a2 < 1)
  {
    result = 0;
LABEL_11:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = mosyntknowl_WriteTraceHeader(a1, 4u);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = mosyntbase_WString(a1, "accentuation after rhythmic shift: ", 0);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = WriteAccList(a1, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  result = mosyntbase_WLn(a1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E69E9840];

  return mosyntbase_WLn(a1);
}

uint64_t MatchFound(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    mosyntbase_WString(a1, "trying to match ", 0);
    if (a3)
    {
      if (*(a3 + 24))
      {
        mosyntbase_WInt(a1, *(a3 + 13), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 13));
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WString(a1, "/", 0);
    if (a4)
    {
      v8 = *(a4 + 8);
      if (v8 < 1)
      {
        mosyntbase_WInt(a1, *(a4 + 9), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v8);
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WLn(a1);
  }

  result = a3 == 0;
  if (!a4)
  {
    return result;
  }

  if (!a3)
  {
    if (!*a4)
    {
      v15 = *(a4 + 8);
      if (mosyntkbsymtab_Star2ConsId(*(a2 + 8)) != v15)
      {
        v16 = *(a4 + 8);
        return mosyntkbsymtab_StarConsId(*(a2 + 8)) == v16;
      }

      return 1;
    }

    return 0;
  }

  if (!*(a4 + 8))
  {
    if (*(a3 + 24))
    {
      v17 = *(a3 + 13);
      if (v17 == *(a4 + 9))
      {
        if (v17 == 1)
        {
          if (*a2 >= 2)
          {
            mosyntknowl_WriteTraceHeader(a1, 4u);
            mosyntbase_WString(a1, "=== node marked", 0);
            mosyntbase_WLn(a1);
          }

          *(a2 + 64) = a3;
        }

        return 1;
      }
    }

    return 0;
  }

  v10 = *(a4 + 8);
  if (mosyntkbsymtab_Star2ConsId(*(a2 + 8)) == v10)
  {
    if (!MatchFound(a1, a2, *a3, a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v11 = *a4;
      v12 = a1;
      v13 = a2;
      v14 = a3;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v18 = *(a4 + 8);
  if (mosyntkbsymtab_StarConsId(*(a2 + 8)) == v18)
  {
    if (!MatchFound(a1, a2, a3, *a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v14 = *a3;
      v12 = a1;
      v13 = a2;
      v11 = a4;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v19 = *(a4 + 8);
  if (mosyntkbsymtab_Wild2ConsId(*(a2 + 8)) == v19)
  {
    result = DownMatchFound(a1, a2, a3, a4[1]);
    if (!result)
    {
      return result;
    }

LABEL_38:
    v14 = *a3;
    v11 = *a4;
    v12 = a1;
    v13 = a2;
    return MatchFound(v12, v13, v14, v11) != 0;
  }

  v20 = *(a4 + 8);
  if (mosyntkbsymtab_WildConsId(*(a2 + 8)) != v20 && (*(a3 + 24) || *(a3 + 13) != *(a4 + 8)))
  {
    return 0;
  }

  result = MatchFound(a1, a2, a3[1], a4[1]);
  if (result)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t DownMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  *a3 = 0;
  if (MatchFound())
  {
    result = 1;
  }

  else
  {
    v10 = a3[1];
    if (v10)
    {
      do
      {
        result = DownMatchFound(a1, a2, v10, a4);
        v10 = *v10;
        if (v10)
        {
          v11 = result == 0;
        }

        else
        {
          v11 = 0;
        }
      }

      while (v11);
    }

    else
    {
      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t AccShift(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  for (i = *(result + 8); i; i = *i)
  {
    if (*(i + 24))
    {
      if (*(i + 13) - 1 > 0x61)
      {
        continue;
      }

      v7 = a2[1];
      v6 = a2[2];
      *a2 = v7;
      a2[1] = v6;
      a2[2] = i;
      if (!v7 || v6 == 0)
      {
        continue;
      }

      v9 = *(i + 13);
      if (v9 == 1 && *(v6 + 26) == 2 && (*(v7 + 26) & 0xFFFE) == 2)
      {
        *(v6 + 26) = 3;
        v10 = *a2;
      }

      else
      {
        if (*(v7 + 26) != 1 || (v9 & 0xFFFE) != 2 || *(v6 + 26) != 2)
        {
          continue;
        }

        *(v6 + 26) = 3;
        v10 = a2[2];
      }

      *(v10 + 26) = 2;
      *a3 = 1;
    }

    else
    {
      result = AccShift(i, a2, a3);
    }
  }

  return result;
}

uint64_t GetInitPhrasing1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  if (!v7[24])
  {
    do
    {
      InitPhrasing1 = GetInitPhrasing1(a1, a2, v7, (a4 + 1), a5, a6, a7);
      if ((InitPhrasing1 & 0x80000000) != 0 || !*v7)
      {
        break;
      }

      if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) || !mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5u, 0))
      {
        v16 = mosyntkbsymtab_PropTabAvailable(*(a2 + 8));
        a5 = a4;
        if (!v16)
        {
          continue;
        }

        HasIntPropValue = mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5u, *(a3 + 26));
        a5 = a4;
        if (!HasIntPropValue)
        {
          continue;
        }
      }

      a5 = 2;
      v7 = *v7;
    }

    while (v7);
    return InitPhrasing1;
  }

  return AppendInitBound(a1, a2, a6, a7, a5, a3);
}

uint64_t AppendInitBound(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int16 a5, uint64_t a6)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  PunctFromCommandList = mosyntpal_ALLOCATE(a1, &v24, 0x28u);
  if ((PunctFromCommandList & 0x80000000) == 0)
  {
    *v24 = 0;
    v13 = v24;
    if (*a3)
    {
      a3 = *a4;
    }

    *a3 = v24;
    *a4 = v13;
    *(v13 + 8) = a5;
    if (a6)
    {
      v14 = *(a6 + 8);
      *(v13 + 10) = *(v14 + 26) - 1 < 0x62;
      v15 = *(v14 + 16);
      *(v13 + 16) = v15;
      SentTermWordPhonList = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), v15, &v23);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      v19 = 0;
      CountSyllsAndAccs(a2, v23, (v24 + 12), &v19);
      v17 = v24;
      *(v24 + 20) = *(v14 + 16);
      *(v17 + 28) = *(a6 + 26);
      *(v17 + 30) = *(v14 + 26);
      *(v17 + 32) = 0;
      SentTermWordPhonList = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(v17 + 16), &v20);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      else
      {
        PunctFromCommandList = mosyntdata_GetPunctFromCommandList(a1, v20, &v22, &v21);
        if ((PunctFromCommandList & 0x80000000) == 0 && *(v24 + 8) >= 2 && mosyntknowl_IsIntraSentPunct(a1, v22))
        {
          *(v24 + 8) = 1;
        }
      }
    }

    else
    {
      *(v13 + 10) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
    }
  }

  return PunctFromCommandList;
}

uint64_t FinalBoundaryIndex(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 2;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (!*(a2 + 2))
    {
      v2 = a2;
      v3 = a2;
    }

    a2 = *a2;
  }

  while (a2);
  if (v3)
  {
    v4 = *(v3 + 3);
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  else
  {
    v4 = 0;
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  return 2;
}

uint64_t WriteBoundList(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a3)
  {
    v6 = a3;
    do
    {
      if (v6[1] < 0)
      {
        v9 = a1;
        v10 = " $";
      }

      else
      {
        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WString(a1, " #{", 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WInt(a1, *(v6 + 4), 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WString(a1, "}", 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        if (a4)
        {
          result = mosyntbase_WString(a1, " (", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_29;
          }

          result = mosyntkbaccphr_PhraseTypeToString(*(v6 + 8), &v13, 10);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_29;
          }

          result = mosyntbase_WString(a1, &v13, 10);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_29;
          }

          result = mosyntbase_WString(a1, ")", 0);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_29;
          }
        }

        result = mosyntbase_WString(a1, " <", 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WInt(a1, *(v6 + 5), 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WString(a1, ",", 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        result = mosyntbase_WInt(a1, *(v6 + 6), 0);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        v9 = a1;
        v10 = ">";
      }

      result = mosyntbase_WString(v9, v10, 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      if (!*v6)
      {
        break;
      }

      result = mosyntbase_WString(a1, " [", 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      result = mosyntbase_WInt(a1, *(v6 + 15), 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      result = mosyntbase_WString(a1, "]", 0);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(v6 + 5), &v12);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v12);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v6 = *v6;
    }

    while (v6);
  }

  result = mosyntbase_WLn(a1);
LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CountSyllsAndAccs(uint64_t result, uint64_t **a2, _WORD *a3, _WORD *a4)
{
  *a3 = 1;
  *a4 = 0;
  if (a2)
  {
    v6 = a2;
    v7 = result;
    v8 = 0;
    while (1)
    {
      v9 = *(v6 + 12);
      result = mosyntkbsymtab_SyllSepId(*(v7 + 8));
      if (result != v9)
      {
        break;
      }

      ++*a3;
      if (v8 <= 0)
      {
LABEL_10:
        v6 = *v6;
        if (!v6)
        {
          if (v8 >= 1)
          {
            ++*a4;
          }

          return result;
        }
      }

      else
      {
        v8 = 0;
        ++*a4;
        v6 = *v6;
        if (!v6)
        {
          return result;
        }
      }
    }

    v10 = *(v6 + 12);
    result = mosyntkbsymtab_PrimAccId(*(v7 + 8));
    if (result == v10 || (v11 = *(v6 + 12), result = mosyntkbsymtab_SecAccId(*(v7 + 8)), result == v11))
    {
      ++v8;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t SetFunctionWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  while (1)
  {
    v9 = *(*(v5 + 32) + 32);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
    v11 = *(a2 + 16);
    v12 = mosyntkbaccphr_AccPhrFunctionWords(v11);
    v17 = 0;
    if (v12 != mosyntkbaccphr_Nil() && v17 == 0)
    {
      break;
    }

LABEL_9:
    if (v12 != mosyntkbaccphr_Nil())
    {
      *(v5 + 84) = 0;
    }

    v5 = *(v5 + 16);
    if (v5 == a4)
    {
      return v8;
    }
  }

  while (1)
  {
    ConsList = mosyntkbaccphr_GetConsList(0, v11, v12);
    v15 = mosyntkbaccphr_GetConsList(1, v11, v12);
    v8 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, v11, ConsList, v15, *(v10[1] + 16), (v10[1] + 24), &v17);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    if (!v17)
    {
      v12 = mosyntkbaccphr_GetConsList(2, v11, v12);
    }

    if (v12 == mosyntkbaccphr_Nil() || v17)
    {
      goto LABEL_9;
    }
  }
}

uint64_t ChartToSentTermData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v7 = (v2 + 16 * *(v4 + 84));
        v5 = *v7;
        v6 = v7[1];
        if (v6)
        {
          v8 = *(a2 + 68);
          if (v8 >= 2)
          {
            v8 = 2;
          }

          v9 = *(a2 + 76);
          *(v6 + 8) = v8;
          *(v6 + 12) = v9;
        }

        if (v5)
        {
          v10 = *(a2 + 84);
          if (v10 >= 3)
          {
            v11 = 3;
          }

          else
          {
            v11 = *(a2 + 84);
          }

          if (v10 <= 98)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          *(v5 + 16) = v12;
        }
      }

      a2 = *(a2 + 16);
    }

    while (a2);
  }

  return result;
}

double NewAPVertex(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  ++*(a2 + 72);
  if ((mosyntpal_ALLOCATE(a1, a4, 0x58u) & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    if ((mosyntpal_ALLOCATE(a1, &v12, 0x18u) & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 2;
      v10[2] = v9;
      v11 = *a4;
      *v11 = *(a2 + 72);
      result = 0.0;
      *(v11 + 8) = 0u;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0;
      *(v11 + 64) = a3;
      *(v11 + 68) = -1;
      *(v11 + 84) = -1;
      *(v11 + 72) = 0;
    }
  }

  return result;
}

void TreeToChart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v7 = a4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *a6 = 0;
  v11 = *(a3 + 52);
  *(a4 + 64) = v11;
  if (*(a3 + 60))
  {
    if ((mosyntdata_GetSentTermCommList(a1, *(a2 + 40), v11, &v31) & 0x80000000) == 0 && (mosyntdata_GetPunctFromCommandList(a1, v31, &v33, &v32) & 0x80000000) == 0)
    {
      if (mosyntknowl_IsIntraSentPunct(a1, v33))
      {
        *(v7 + 68) = 1;
      }

      if ((mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 52), &v30) & 0x80000000) == 0 && (NewAPEdge(a1, a2, a3, a6) & 0x80000000) == 0)
      {
        v12 = *a6;
        *(v12 + 92) = 0;
        *(v12 + 16) = v7;
        NewAPVertex(a1, a2, *(a3 + 56), (*a6 + 24));
        if ((v13 & 0x80000000) == 0)
        {
          CountSyllsAndAccs(a2, v30, (*a6 + 82), (*a6 + 80));
          *(v7 + 16) = *(*a6 + 24);
          *(*(*a6 + 24) + 8) = v7;
          v14 = *a6;
          *(v7 + 32) = *a6;
          *(*(v14 + 24) + 24) = v14;
          **a6 = 0;
          *(*a6 + 8) = 0;
        }
      }
    }
  }

  else
  {
    v15 = *(a3 + 8);
    if (v15)
    {
      v27 = a3;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while ((TreeToChart(a1, a2, v15, v7, (a5 + 1), &v34) & 0x80000000) == 0)
      {
        v22 = v34;
        if (v34)
        {
          *(v34 + 64) = v21;
          if (!v20)
          {
            v20 = v22;
          }

          if (v21)
          {
            *(v21 + 56) = v22;
          }

          ++v19;
          v7 = *(v22 + 24);
          v18 += *(v22 + 82);
          v17 += *(v22 + 80);
          v21 = v22;
        }

        v15 = *v15;
        if (!v15)
        {
          if (v7 == a4)
          {
            goto LABEL_27;
          }

          if (v19 < 2)
          {
            *a6 = v21;
            AddAPNode(a1, a2, v27, (v21 + 32));
          }

          else if ((NewAPEdge(a1, a2, v27, a6) & 0x80000000) == 0)
          {
            v23 = *a6;
            *(v23 + 92) = 1;
            *(v23 + 16) = a4;
            *(*a6 + 24) = v7;
            **a6 = *(a4 + 48);
            v24 = *a6;
            *(a4 + 48) = *a6;
            *(v24 + 8) = *(v7 + 40);
            v25 = *a6;
            *(v7 + 40) = *a6;
            *(v25 + 82) = v18;
            *(v25 + 80) = v17;
            *(v25 + 72) = v20;
            if (v20)
            {
              v26 = *a6;
              do
              {
                *(v20 + 48) = v26;
                v20 = *(v20 + 56);
              }

              while (v20);
            }
          }

          return;
        }
      }
    }

    else
    {
LABEL_27:
      *a6 = 0;
    }
  }
}

uint64_t NewAPEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = mosyntpal_ALLOCATE(a1, a4, 0x60u);
  if ((result & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    result = mosyntpal_ALLOCATE(a1, &v12, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 3;
      v10[2] = v9;
      v11 = *a4;
      *(v11 + 72) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 84) = *(a3 + 52);
      return AddAPNode(a1, a2, a3, (v11 + 32));
    }
  }

  return result;
}

uint64_t AddAPNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = 0;
  result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v13;
    v14 = 0;
    result = mosyntpal_ALLOCATE(a1, &v14, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v14 = *(a2 + 32);
      v10 = v13;
      v11 = v14;
      *(a2 + 32) = v14;
      *(v11 + 2) = 5;
      v11[2] = v9;
      v10[1] = a3;
      *v10 = *a4;
      v12 = v13;
      v13[2] = 0;
      *a4 = v12;
    }
  }

  return result;
}

uint64_t WriteCoverage(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = a3;
  v13 = 0;
  if (a3 != a4)
  {
    while (2)
    {
      HIDWORD(v11) = 0;
      LODWORD(v11) = 0;
      *(&v11 + 4) = *v4;
      result = mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v9 = (*(v4 + 4) + 32);
      do
      {
        v9 = *v9;
        if (!v9)
        {
          result = mosyntbase_WriteMessage(a1, "#### ERROR: didn't find terminal\\n", 0, "", 0, "", 0, "", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_13;
        }

        v10 = v9[1];
      }

      while (!*(v10 + 60));
      result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(v10 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "[ ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(*(v4 + 4) + 84), &v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, " ] ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_13:
      v4 = *(v4 + 2);
      if (v4 != a4)
      {
        continue;
      }

      break;
    }
  }

  HIDWORD(v12) = 0;
  LODWORD(v12) = 0;
  *(&v12 + 4) = *v4;
  return mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v12);
}

uint64_t MatchEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 32);
  if (v5)
  {
    v10 = *(a2 + 16);
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    v23 = 0;
LABEL_3:
    result = mosyntkbaccphr_LookupAccPhrRule(a1, *(a2 + 16), *(v5[1] + 16), (v5[1] + 24), &v23, v25);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      if (!v23)
      {
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }

      Rule = mosyntkbaccphr_GetRule(15, v10, DWORD2(v26));
      v13 = DWORD2(v26);
      if (Rule < 1)
      {
        if (IsMatchingRule(a1, a2, DWORD2(v26), v5, a3))
        {
          result = AddEdgeRule(a1, a2, SDWORD2(v26), v5);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_28;
          }

          if (mosyntkbaccphr_GetRule(0, v10, DWORD2(v26)) >= 1)
          {
            result = AddRuleScenarios(a1, a2, DWORD2(v26), (a3 + 40), a5);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_28;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        result = mosyntpal_ALLOCATE(a1, &v24, 0x20u);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        result = NoteAPRuleListAlloc(a1, a2, v24);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        v14 = v24;
        *(v24 + 8) = v13;
        v14[2] = a3;
        v14[3] = v5;
        v15 = *a4;
        if (*a4)
        {
          v16 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
          if (v16 < mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
          {
            while (1)
            {
              v17 = v15;
              v15 = *v15;
              if (!v15)
              {
                break;
              }

              v18 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
              if (v18 >= mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
              {
                v19 = *v17;
                goto LABEL_22;
              }
            }

            v19 = 0;
LABEL_22:
            *v24 = v19;
            *v17 = v24;
            goto LABEL_23;
          }

          v20 = *a4;
          v14 = v24;
        }

        else
        {
          v20 = 0;
        }

        *v14 = v20;
        *a4 = v24;
      }

LABEL_23:
      result = mosyntkbaccphr_GetNextAccPhrEntry(a1, v10, &v23, v25);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  result = 0;
LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IsMatchingRule(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33[0] = 0;
  *(v33 + 5) = 0;
  v10 = *(a2 + 16);
  v11 = **(a5 + 24) - **(a5 + 16);
  if (mosyntkbaccphr_GetRule(8, v10, a3) <= v11 && v11 <= mosyntkbaccphr_GetRule(9, v10, a3) && (v12 = mosyntkbaccphr_GetRule(6, v10, a3), v13 = *(a5 + 82), v12 <= v13) && mosyntkbaccphr_GetRule(7, v10, a3) >= v13 && (v14 = mosyntkbaccphr_GetRule(10, v10, a3), v15 = *(a5 + 80), v14 <= v15) && mosyntkbaccphr_GetRule(11, v10, a3) >= v15)
  {
    if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 0))
    {
      if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 1))
      {
        v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 2);
        if (v16)
        {
          Rule = mosyntkbaccphr_GetRule(5, v10, a3);
          if (Rule == mosyntkbaccphr_Nil())
          {
            v17 = 0;
          }

          else
          {
            v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 3);
            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = 5;
            }
          }
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v16 = 0;
        v17 = 3;
      }
    }

    else
    {
      v16 = 0;
      v17 = 2;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    m2__cp__str("[AccPhr]           ", &v32, 21);
    mosyntbase_WString(a1, "[AccPhr] Node ", 0);
    v18 = *(a2 + 8);
    v19 = mosyntkbaccphr_GetRule(1, v10, a3);
    mosyntkbaccphr_WriteAccPhrNode(a1, v18, v10, v19);
    mosyntbase_WStringLn(a1, " covers:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    WriteCoverage(a1, a2, *(a5 + 16), *(a5 + 24));
    mosyntbase_WLn(a1);
    mosyntbase_WStringLn(a1, "[AccPhr] Matching rule:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    mosyntkbaccphr_WriteRuleHeadline(a1, *(a2 + 8), v10, a3);
    mosyntbase_WLn(a1);
    if (v16)
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule matched successfully.\\n", 0, &v32, 21, "", 0, "", 0);
      goto LABEL_19;
    }

    if (v17 == 5)
    {
      v24 = *(a2 + 8);
      v25 = mosyntkbaccphr_GetRule(5, v10, a3);
      mosyntkbaccphr_WriteChildrenList(a1, v24, v10, &v32, 21, v25);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v32, 21, "", 0, "", 0);
      v23 = "children";
    }

    else if (v17 == 1)
    {
      v20 = mosyntkbaccphr_GetRule(8, v10, a3);
      *(&v29 + 1) = mosyntkbaccphr_GetRule(9, v10, a3);
      LODWORD(v29) = 0;
      DWORD1(v29) = v20;
      mosyntbase_WriteMessage(a1, "%s<wordrange(%i,%i)>\\n", 0, &v32, 21, "", 0, "", v29);
      v21 = mosyntkbaccphr_GetRule(6, v10, a3);
      *(&v30 + 1) = mosyntkbaccphr_GetRule(7, v10, a3);
      LODWORD(v30) = 0;
      DWORD1(v30) = v21;
      mosyntbase_WriteMessage(a1, "%s<syllrange(%i,%i)>\\n", 0, &v32, 21, "", 0, "", v30);
      v22 = mosyntkbaccphr_GetRule(10, v10, a3);
      *(&v31 + 1) = mosyntkbaccphr_GetRule(11, v10, a3);
      LODWORD(v31) = 0;
      DWORD1(v31) = v22;
      mosyntbase_WriteMessage(a1, "%s<accrange(%i,%i)>\\n", 0, &v32, 21, "", 0, "", v31);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v32, 21, "", 0, "", 0);
      v23 = "constraints";
    }

    else
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v32, 21, "", 0, "", 0);
      if ((v17 - 2) > 2)
      {
LABEL_18:
        mosyntbase_WStringLn(a1, " definition.", 0);
        goto LABEL_19;
      }

      v23 = off_1E81A3DB0[v17 - 2];
    }

    mosyntbase_WString(a1, v23, 0);
    goto LABEL_18;
  }

LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t AddEdgeRule(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = 0;
  result = mosyntpal_ALLOCATE(a1, &v10, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    result = NoteAPRuleListAlloc(a1, a2, v10);
    if ((result & 0x80000000) == 0)
    {
      v9 = v10;
      *(v10 + 8) = a3;
      v9[2] = 0;
      v9[3] = a4;
      *v9 = *(a4 + 16);
      *(a4 + 16) = v10;
    }
  }

  return result;
}

uint64_t AddRuleScenarios(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a2 + 16);
  Scenario = mosyntkbaccphr_GetScenario(2, v9, *(a2 + 60));
  if (Scenario != mosyntkbaccphr_Nil())
  {
    v11 = 0;
    while (1)
    {
      if (mosyntkbaccphr_GetRuleSetIsSubset(v9, Scenario))
      {
        for (i = mosyntkbaccphr_AccPhrScenarios(*(a2 + 16)); ; i = mosyntkbaccphr_GetScenario(3, v9, v13))
        {
          v13 = i;
          if (i == mosyntkbaccphr_Nil())
          {
            break;
          }

          v14 = mosyntkbaccphr_GetScenario(1, v9, v13);
          if (v14 == mosyntkbaccphr_GetRuleSet(2, v9, Scenario))
          {
            break;
          }
        }

        if (v13 != mosyntkbaccphr_Nil())
        {
          v15 = mosyntkbaccphr_GetScenario(2, v9, v13);
          if (v15 != mosyntkbaccphr_Nil())
          {
            do
            {
              if (mosyntkbaccphr_GetRuleSetIsSubset(v9, v15))
              {
                v16 = 1;
              }

              else
              {
                RuleSet = mosyntkbaccphr_GetRuleSet(1, v9, v15);
                v16 = RuleSet != mosyntkbaccphr_GetRule(0, v9, a3);
              }

              v15 = mosyntkbaccphr_GetRuleSet(4, v9, v15);
            }

            while (v15 != mosyntkbaccphr_Nil() && v16);
            if (!v16)
            {
              v18 = mosyntkbaccphr_GetScenario(1, v9, v13);
              inserted = InsertScenario(a1, a2, v18, a4, &v23);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              v20 = mosyntkbaccphr_GetScenario(1, v9, v13);
              v11 = InsertScenario(a1, a2, v20, a5, &v23);
              if ((v11 & 0x80000000) != 0)
              {
                return v11;
              }
            }
          }
        }
      }

      Scenario = mosyntkbaccphr_GetRuleSet(4, v9, Scenario);
      if (Scenario == mosyntkbaccphr_Nil())
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t NoteAPRuleListAlloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = mosyntpal_ALLOCATE(a1, &v7, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    *v7 = *(a2 + 32);
    v6 = v7;
    *(a2 + 32) = v7;
    *(v6 + 2) = 4;
    v6[2] = a3;
  }

  return result;
}

uint64_t IsMatchingNodeContext(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5, int a6)
{
  v11 = *(a2 + 16);
  if (a6 <= 1)
  {
    if (a6)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_7;
  }

  if (a6 == 2)
  {
    v12 = 4;
LABEL_7:
    Rule = mosyntkbaccphr_GetRule(v12, *(a2 + 16), a3);
    v33 = Rule;
    if (mosyntkbaccphr_GetNode(3, v11, Rule))
    {
      NodeMatchOp = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
      if (a6)
      {
        goto LABEL_14;
      }

      if ((NodeMatchOp & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = a5[4];
      v34 = Rule;
      if (v15 == a4)
      {
        goto LABEL_14;
      }

      do
      {
        v16 = IsMatchingNode(a1, a2, &v34, v15);
        LODWORD(v17) = v16;
        if (v16)
        {
          break;
        }

        v15 = *v15;
      }

      while (v15 != a4);
      if (!v16)
      {
LABEL_14:
        if ((mosyntkbaccphr_GetNodeMatchOp(v11, Rule) & 2) != 0)
        {
          v31 = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
          LODWORD(v17) = IsMatchingNodeNeighbours(a1, a2, &v33, a5, a6, (v31 >> 2) & 1);
          LODWORD(Rule) = v33;
        }

        else
        {
          LODWORD(v17) = 0;
        }
      }
    }

    else
    {
      LODWORD(v17) = 1;
    }

    if (mosyntkbaccphr_GetNodeNegated(v11, Rule))
    {
      return v17 == 0;
    }

    else
    {
      return v17;
    }
  }

  v18 = mosyntkbaccphr_GetRule(5, *(a2 + 16), a3);
  while (1)
  {
    if (v18 == mosyntkbaccphr_Nil())
    {
      return 0;
    }

    Children = mosyntkbaccphr_GetChildren(1, v11, v18);
    if (!mosyntkbaccphr_GetChildrenOp(v11, v18))
    {
      break;
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) != 0 && (Node = mosyntkbaccphr_GetNode(8, v11, Children), Node == mosyntkbaccphr_Nil()) && (v21 = *a4, v34 = Children, v21))
    {
      do
      {
        v17 = IsMatchingNode(a1, a2, &v34, v21);
        if (v17)
        {
          break;
        }

        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      v17 = 0;
    }

    while (Children != mosyntkbaccphr_Nil())
    {
      v22 = mosyntkbaccphr_GetNodeMatchOp(v11, Children);
      Children = mosyntkbaccphr_GetNode(8, v11, Children);
      if ((v22 & 2) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v17)
    {
      goto LABEL_58;
    }

    if (a5[9])
    {
      v27 = mosyntkbaccphr_GetChildren(1, v11, v18);
      v28 = a5[2];
      v29 = a5[9];
      v30 = mosyntkbaccphr_GetChildrenOp(v11, v18) == 2;
      v17 = IsMatchingChildren(a1, a2, v27, v28, a5, v29, v30);
    }

    else
    {
      v17 = 0;
    }

LABEL_50:
    v18 = mosyntkbaccphr_GetChildren(2, v11, v18);
    if (v17)
    {
      return v17;
    }
  }

  if (Children != mosyntkbaccphr_Nil())
  {
    while (1)
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) == 0)
      {
        goto LABEL_62;
      }

      v23 = *a4;
      v34 = Children;
      if (!v23)
      {
        goto LABEL_62;
      }

      do
      {
        v24 = IsMatchingNode(a1, a2, &v34, v23);
        LODWORD(v17) = v24;
        if (v24)
        {
          break;
        }

        v23 = *v23;
      }

      while (v23);
      if (!v24)
      {
LABEL_62:
        LODWORD(v17) = (mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 2) != 0 && (v25 = a5[9]) != 0 && IsMatchingChildFuzzy(a1, a2, Children, v25);
      }

      v17 = mosyntkbaccphr_GetNodeNegated(v11, Children) ? v17 == 0 : v17;
      v26 = mosyntkbaccphr_GetNode(8, v11, Children);
      if (!v17)
      {
        goto LABEL_50;
      }

      Children = v26;
      if (v26 == mosyntkbaccphr_Nil())
      {
        goto LABEL_58;
      }
    }
  }

  v17 = 1;
LABEL_58:
  mosyntkbaccphr_GetChildren(2, v11, v18);
  return v17;
}

BOOL IsMatchingChildFuzzy(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = a4[4];
  v12 = a3;
  if (v9)
  {
    do
    {
      v10 = IsMatchingNode(a1, a2, &v12, v9);
      if (v10)
      {
        break;
      }

      v9 = *v9;
    }

    while (v9);
    if (v10)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v8, a3) & 4) != 0 && a4[9] && IsMatchingChildFuzzy(a1, a2, a3))
  {
    return 1;
  }

  if (a4[7])
  {
    return IsMatchingChildFuzzy(a1, a2, a3) != 0;
  }

  return 0;
}

uint64_t IsMatchingChildren(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  while (2)
  {
    if (*(a6 + 16) == a4)
    {
      v14 = *(a6 + 92) == 0;
      v13 = a6;
    }

    else
    {
      v13 = *(a4 + 48);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v13 = *(a4 + 32);
        v14 = 1;
      }
    }

    v15 = *(a2 + 16);
    do
    {
      while (1)
      {
        v16 = v13[4];
        v28 = a3;
        if (!v16)
        {
          goto LABEL_22;
        }

        do
        {
          v17 = IsMatchingNode(a1, a2, &v28, v16);
          if (v17)
          {
            break;
          }

          v16 = *v16;
        }

        while (v16);
        if (!v17)
        {
          goto LABEL_20;
        }

        Node = mosyntkbaccphr_GetNode(8, v15, a3);
        if (Node != mosyntkbaccphr_Nil())
        {
          if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) != 0 && *v13[3] < **(a6 + 24))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, a3);
            v20 = v13[3];
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            v25 = a6;
LABEL_19:
            v16 = IsMatchingChildren(v22, v23, v19, v20, v24, v25, v21);
            goto LABEL_22;
          }

          if (*(a6 + 56))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, a3);
            v25 = *(a6 + 56);
            v20 = *(v25 + 16);
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            goto LABEL_19;
          }

LABEL_20:
          v16 = 0;
          goto LABEL_22;
        }

        v16 = !a7 || (v13[3] == *(a5 + 24));
LABEL_22:
        if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) == 0)
        {
          goto LABEL_28;
        }

        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_28;
        }
      }

      if (v14)
      {
        break;
      }

      v13 = *(a4 + 32);
      v14 = 1;
    }

    while (!v16);
LABEL_28:
    if (!(v16 | a7))
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v15, a3) & 4) != 0 && *a4 + 1 < **(a6 + 24))
      {
        a7 = 0;
        a4 = *(a4 + 16);
        continue;
      }

      a6 = *(a6 + 56);
      if (a6)
      {
        a7 = 0;
        a4 = *(a6 + 16);
        continue;
      }

      return 0;
    }

    return v16;
  }
}

uint64_t IsMatchingNodeNeighbours(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4, int a5, int a6)
{
  while (1)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v38 = 0;
    v37 = 0;
    v12 = *(a2 + 16);
    if (mosyntkbaccphr_GetNode(3, v12, *a3) == 3)
    {
      break;
    }

    if (v7 == 2)
    {
      v19 = v8[3];
      v20 = *(v19 + 48);
      if (v20)
      {
        do
        {
          v21 = v20[4];
          LODWORD(v39) = *v9;
          if (v21)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v21);
              if (result)
              {
                break;
              }

              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v20 = *v20;
        }

        while (v20);
        v19 = v8[3];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v28 = *(v19 + 32);
      if (!v28)
      {
        return result;
      }

      v29 = v28[4];
      LODWORD(v39) = *v9;
      if (v29)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v29);
          if (result)
          {
            break;
          }

          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v28;
      a5 = 2;
    }

    else if (v7 == 1)
    {
      v15 = v8[2];
      v16 = *(v15 + 40);
      if (v16)
      {
        do
        {
          v17 = *(v16 + 32);
          LODWORD(v39) = *v9;
          if (v17)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v17);
              if (result)
              {
                break;
              }

              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v16 = *(v16 + 8);
        }

        while (v16);
        v15 = v8[2];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v26 = *(v15 + 24);
      if (!v26)
      {
        return result;
      }

      v27 = v26[4];
      LODWORD(v39) = *v9;
      if (v27)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v27);
          if (result)
          {
            break;
          }

          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v26;
      a5 = 1;
    }

    else
    {
      v22 = v8[6];
      if (!v22)
      {
        return 0;
      }

      v23 = *(v22 + 32);
      LODWORD(v39) = *v9;
      if (v23)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v23);
          if (result)
          {
            break;
          }

          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a4 = v8[6];
      a1 = v11;
      a2 = v10;
      a3 = v9;
      a5 = 0;
    }

    a6 = 1;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 1)
      {
        v13 = v8[2];
        v39 = 0;
        if (v13)
        {
          mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v13 + 64), &v39);
          result = v39 != 0;
          if (!v6)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v6)
          {
            return result;
          }
        }

        if ((result & 1) == 0)
        {
          v32 = v8[2];
          do
          {
            v32 = *(v32 + 8);
            if (!v32)
            {
              break;
            }

            v39 = 0;
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
          }

          while (!v39);
          return v32 != 0;
        }

        return result;
      }

      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 2)
      {
        v24 = *(v8[2] + 8);
        return v6 || v24 == 0;
      }
    }

    return 0;
  }

  if (mosyntkbaccphr_GetNode(7, v12, *v9) != 1)
  {
    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 3)
    {
      v24 = *(v8[3] + 16);
      return v6 || v24 == 0;
    }

    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 4)
    {
      v30 = v8[3];
      v39 = 0;
      if (v30)
      {
        mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v30 + 64), &v39);
        v31 = v39;
      }

      else
      {
        v31 = 0;
      }

      mosyntdata_GetPunctFromCommandList(v11, v31, &v38, &v37);
      result = v38 == 10;
      if (!v6 || v38 == 10)
      {
        return result;
      }

      v33 = *(v8[3] + 16);
      if (v33)
      {
        do
        {
          v34 = v8[3];
          v39 = 0;
          if (v34)
          {
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v34 + 64), &v39);
            v35 = v39;
          }

          else
          {
            v35 = 0;
          }

          mosyntdata_GetPunctFromCommandList(v11, v35, &v38, &v37);
          v33 = *(v33 + 16);
        }

        while (v38 != 10 && v33 != 0);
        return v38 == 10;
      }
    }

    return 0;
  }

  v18 = v8[3];
  v39 = 0;
  if (v18)
  {
    mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v18 + 64), &v39);
    result = v39 != 0;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  if ((result & 1) == 0)
  {
    v32 = v8[3];
    do
    {
      v32 = *(v32 + 16);
      if (!v32)
      {
        break;
      }

      v39 = 0;
      mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
    }

    while (!v39);
    return v32 != 0;
  }

  return result;
}

uint64_t IsMatchingNode(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v17 = 0;
  Node = mosyntkbaccphr_GetNode(3, v7, *a3);
  result = 0;
  if (Node <= 1)
  {
    if (!Node)
    {
      return 1;
    }

    if (Node != 1)
    {
      return result;
    }

    v10 = (a4 + 16);
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v11 = mosyntkbaccphr_GetNode(4, v7, *a3);
      Rule = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      v13 = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      if (Rule >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v11 == v14)
      {
        return 1;
      }
    }

    return 0;
  }

  if (Node != 2)
  {
    if (Node != 3)
    {
      return result;
    }

    mosyntbase_WriteDevelMessage(a1, "IsMatchingNode -- Property, not handeled here\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
    return 0;
  }

  v15 = mosyntkbaccphr_GetNode(5, v7, *a3);
  v16 = mosyntkbaccphr_GetNode(6, v7, *a3);
  mosyntkbaccphr_CheckMatchingConsFeat2(a1, v7, v15, v16, *(*(a4 + 8) + 16), (*(a4 + 8) + 24), &v17);
  return v17;
}

uint64_t InsertScenario(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v6 = 0;
  *a5 = 1;
  v7 = a4;
  while (1)
  {
    v8 = v6;
    v11 = v6;
    v6 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v6 + 2);
    v7 = *v7;
    if (v9 >= a3)
    {
      if (v8)
      {
        if (v9 <= a3)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      if (v9 <= a3)
      {
LABEL_13:
        result = 0;
        *a5 = 0;
        return result;
      }

      goto LABEL_11;
    }
  }

  if (v8)
  {
LABEL_8:
    result = NewScenarioList(a1, a2, a3, v8);
    if ((result & 0x80000000) == 0)
    {
      **v8 = v6;
    }

    return result;
  }

LABEL_11:
  result = NewScenarioList(a1, a2, a3, &v11);
  if ((result & 0x80000000) == 0)
  {
    *v11 = *a4;
    *a4 = v11;
  }

  return result;
}

uint64_t NewScenarioList(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a2 + 80);
  if (v7)
  {
    result = 0;
    *a4 = v7;
    *(a2 + 80) = **(a2 + 80);
LABEL_3:
    v9 = *a4;
    *(v9 + 8) = a3;
    *v9 = 0;
    return result;
  }

  result = mosyntpal_ALLOCATE(a1, a4, 0x10u);
  if ((result & 0x80000000) == 0)
  {
    v11 = *a4;
    v13 = 0;
    result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v13 = *(a2 + 32);
      v12 = v13;
      *(a2 + 32) = v13;
      *(v12 + 2) = 6;
      v12[2] = v11;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t AddSegment(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  v10 = mosyntpal_ALLOCATE(a1, &v22, 0x28u);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v22;
  v23 = 0;
  v12 = mosyntpal_ALLOCATE(a1, &v23, 0x18u);
  if ((v12 & 0x80000000) == 0)
  {
    *v23 = *(a2 + 32);
    v13 = v22;
    v14 = v23;
    *(a2 + 32) = v23;
    *(v14 + 2) = 7;
    v14[2] = v11;
    *(v13 + 8) = a4;
    *(v13 + 16) = a5;
    v15 = *a5 - *a4;
    *(v13 + 24) = a3;
    *(v13 + 28) = v15;
    v16 = *(a2 + 16);
    for (i = mosyntkbaccphr_GetScenario(2, v16, *(a2 + 60)); ; i = mosyntkbaccphr_GetRuleSet(4, v16, v18))
    {
      v18 = i;
      if (i == mosyntkbaccphr_Nil() || mosyntkbaccphr_GetRuleSet(2, v16, v18) == a3)
      {
        break;
      }
    }

    if (v18 == mosyntkbaccphr_Nil())
    {
      RuleSet = 10000;
    }

    else
    {
      RuleSet = mosyntkbaccphr_GetRuleSet(3, v16, v18);
    }

    v20 = v22;
    *(v22 + 32) = RuleSet;
    *v20 = *(a4 + 56);
    *(a4 + 56) = v22;
  }

  return v12;
}

uint64_t GetBestScenarioPathSuffix(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4, uint64_t a5, int *a6, _DWORD *a7, _DWORD *a8, uint64_t *a9)
{
  v9 = a8;
  v17 = *(a4 + 16);
  if (v17 == a5)
  {
    result = 0;
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
  }

  else
  {
    result = GetBestScenarioPathSuffix(a1, a2, a3, v17, a5, a6, a7, a8, a9);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v19 = *(a4 + 56);
  if (!v19)
  {
    return result;
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = v9;
  while (1)
  {
    if (v19[2] == a5)
    {
      v40 = 0;
      HIDWORD(v39) = 0;
      v37 = 0;
      if (!a3)
      {
        goto LABEL_30;
      }

      v22 = *(v19 + 6);
      v23 = a3;
      while (1)
      {
        v24 = *(v23 + 2);
        if (v24 >= v22)
        {
          break;
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_30;
        }
      }

      if (v24 == v22)
      {
        LODWORD(v39) = 0;
      }

      else
      {
LABEL_30:
        LODWORD(v39) = 1;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      break;
    }

    v38 = 0;
LABEL_21:
    result = InsertScenario(a1, a2, *(v19 + 6), &v38, &v39);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = GetBestScenarioPathSuffix(a1, a2, v38, v19[2], a5, &v40 + 4, &v40, &v39 + 4, &v37);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v25 = v38;
    if (v38)
    {
      v9 = v36;
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
      result = 0;
      *v26 = a2[10];
      a2[10] = v38;
      v38 = 0;
    }

    else
    {
      result = 0;
      v9 = v36;
    }

LABEL_31:
    v27 = *(v19 + 7) + HIDWORD(v40);
    if (v27 <= *a6)
    {
      if (v27 != *a6)
      {
        goto LABEL_50;
      }

      v28 = v40;
      v32 = *(v19 + 8) + v40;
      if (v32 >= *a7 && (v32 != *a7 || v39 + HIDWORD(v39) >= *v9))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v28 = v40;
    }

    *a6 = v27;
    *a7 = *(v19 + 8) + v28;
    *v9 = v39 + HIDWORD(v39);
    v29 = *a9;
    if (*a9)
    {
      v30 = *v29;
      if (*v29)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
        *v31 = a2[11];
        a2[11] = *v29;
        *v29 = 0;
        v29 = *a9;
      }

      result = 0;
      *(v29 + 8) = v19;
    }

    else
    {
      v33 = a2[11];
      if (v33)
      {
        result = 0;
        *a9 = v33;
        a2[11] = *a2[11];
      }

      else
      {
        result = mosyntpal_ALLOCATE(a1, a9, 0x10u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v34 = *a9;
        v41 = 0;
        result = mosyntpal_ALLOCATE(a1, &v41, 0x18u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *v41 = a2[4];
        v35 = v41;
        a2[4] = v41;
        *(v35 + 2) = 8;
        v35[2] = v34;
        v9 = v36;
      }

      *(*a9 + 8) = v19;
      **a9 = 0;
    }

    **a9 = v37;
LABEL_50:
    v19 = *v19;
    if (!v19)
    {
      return result;
    }
  }

  result = NewScenarioList(a1, a2, *(a3 + 2), &v38);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v20 = *a3;
  if (!*a3)
  {
    goto LABEL_21;
  }

  v21 = &v38;
  while (1)
  {
    v21 = *v21;
    result = NewScenarioList(a1, a2, *(v20 + 2), v21);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }
}

uint64_t IsRightMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  while (1)
  {
    v10 = *(a2 + 16);
    *a5 = a4;
    v11 = a4[4];
    v15 = a3;
    if (v11)
    {
      do
      {
        result = IsMatchingNode(a1, a2, &v15, v11);
        if (result)
        {
          break;
        }

        v11 = *v11;
      }

      while (v11);
      if (result)
      {
        break;
      }
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
    {
      v13 = a4[9];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *(v13 + 56);
        }

        while (v13);
        result = IsRightMatchingTarget(a1, a2, a3, v14, a5);
        if (result)
        {
          break;
        }
      }
    }

    a4 = a4[8];
    if (!a4)
    {
      return 0;
    }
  }

  return result;
}

BOOL IsLeftMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a2 + 16);
  *a5 = a4;
  v11 = a4[4];
  v16 = a3;
  if (v11)
  {
    do
    {
      v12 = IsMatchingNode(a1, a2, &v16, v11);
      if (v12)
      {
        break;
      }

      v11 = *v11;
    }

    while (v11);
    if (v12)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
  {
    v13 = a4[9];
    if (v13)
    {
      if (IsLeftMatchingTarget(a1, a2, a3, v13, a5))
      {
        return 1;
      }
    }
  }

  v15 = a4[7];
  return v15 && IsLeftMatchingTarget(a1, a2, a3, v15, a5) != 0;
}

uint64_t mosyntsentpho_TreatSentPho(uint64_t a1, int a2, uint64_t a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t **a8)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = mosyntpal_ALLOCATE(a1, &v18, 0x10u);
  if ((result & 0x80000000) == 0)
  {
    v17 = v18;
    *v18 = a2;
    *(v17 + 1) = a3;
    result = ApplyFSTSeq(a1, v17, 5, a4, a7, &v20);
    if ((result & 0x80000000) == 0)
    {
      result = ApplyFSTSeq(a1, v18, 6, a5, v20, &v19);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntdata_DisposePhonEleList(a1, &v20);
        if ((result & 0x80000000) == 0)
        {
          result = ApplyFSTSeq(a1, v18, 7, a6, v19, a8);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntdata_DisposePhonEleList(a1, &v19);
            if ((result & 0x80000000) == 0)
            {
              if (v18)
              {
                return mosyntpal_DEALLOCATE(a1, &v18);
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ApplyFSTSeq(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t **a6)
{
  v15 = a5;
  *a6 = a5;
  result = mosyntdata_CopyPhonList(a1, a6);
  if ((result & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    result = mosynttrans_InitTransDesc(a1, *a2, *(a2 + 8), &v13);
    if ((result & 0x80000000) == 0)
    {
      if (*a4 < 1)
      {
        return mosynttrans_FinishTransDesc(a1, &v13);
      }

      else
      {
        v12 = 0;
        while (1)
        {
          v15 = *a6;
          result = mosynttrans_TransducePhonList(a1, v13, a3, *&a4[2 * v12 + 2], v12, v15, 0, 0, a6, &v14);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = mosyntdata_DisposePhonEleList(a1, &v15);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (++v12 >= *a4)
          {
            return mosynttrans_FinishTransDesc(a1, &v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbwgram_GetFirstEpsTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  v8 = 0;
  result = wgram_GetFirstEpsTrans(a1, a2, a3, a4, &v8, a6);
  *a5 = v8;
  return result;
}

uint64_t mosyntkbwgram_GetNextEpsTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  v8 = 0;
  result = wgram_GetNextEpsTrans(a1, a2, a3, a4, &v8, a6);
  *a5 = v8;
  return result;
}

uint64_t kbsymtab_LoadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5, int a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v60 = 0;
  inited = InitRsrcFunction(a1, a2, &v60);
  v13 = inited;
  if (!a5)
  {
    goto LABEL_33;
  }

  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v13 = 2371887114;
  v14 = heap_Calloc(*(v60 + 8), 1, 16624);
  *a5 = v14;
  if (!v14)
  {
    goto LABEL_33;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 3, (v14 + 8584));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 4, (*a5 + 8592));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 5, (*a5 + 8600));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  Lex = kblex_loadLex(a1, a2, a3, a4, 6, (*a5 + 8608));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v13 = kblex_loadLex(a1, a2, a3, a4, 7, (*a5 + 8616));
  if ((v13 & 0x80000000) != 0)
  {
LABEL_32:
    freeTabsAsLex(*a5, a1, a2, a3, a4);
    heap_Free(*(v60 + 8), *a5);
    *a5 = 0;
    goto LABEL_33;
  }

  if (!*a5)
  {
    goto LABEL_33;
  }

  *(*a5 + 120) = heap_Calloc(*(v60 + 8), 1, 1000);
  *(*a5 + 128) = LhpuCreate(*(v60 + 8));
  v16 = *a5;
  if (!*(*a5 + 120) || !v16[16])
  {
    v13 = 2371887114;
  }

  *v16 = v60;
  *(*a5 + 8) = 1;
  for (i = 1078; i != 2078; ++i)
  {
    *(*a5 + 8 * i) = 0;
  }

  v18 = *a5;
  *(*a5 + 8536) = 0;
  if (a6)
  {
    for (j = 0; j != 100; ++j)
    {
      LOWORD(__s) = j;
      *(v18 + 4 * j + 136) = kbsymtab_KnownGraphId(v18, &__s);
    }

    v20 = 0;
    v21 = (v18 + 536);
    do
    {
      kbsymtab_GraphSymString(v18, v20, &__s, 0x64uLL);
      if (strlen(&__s) > 7)
      {
        *v21 = 0;
      }

      else
      {
        strcpy(v21, &__s);
      }

      ++v20;
      v21 += 8;
    }

    while (v20 != 1000);
    *(v18 + 8536) = 1;
    v18 = *a5;
  }

  *(v18 + 12) = kbsymtab_KnownGraphId(v18, "#");
  v22 = dictSingleLookupInt(v18, 0, "{*}");
  *(v18 + 16) = v22 & ~(v22 >> 31);
  v23 = dictSingleLookupInt(v18, 0, "&");
  *(v18 + 20) = v23 & ~(v23 >> 31);
  v24 = dictSingleLookupInt(v18, 0, "#");
  *(v18 + 24) = v24 & ~(v24 >> 31);
  v25 = dictSingleLookupInt(v18, 0, "{#ACC0}");
  *(v18 + 28) = v25 & ~(v25 >> 31);
  v26 = dictSingleLookupInt(v18, 0, "{#ACC1}");
  *(v18 + 32) = v26 & ~(v26 >> 31);
  v27 = dictSingleLookupInt(v18, 0, "{#ACC2}");
  *(v18 + 36) = v27 & ~(v27 >> 31);
  v28 = dictSingleLookupInt(v18, 0, "{#ACC3}");
  *(v18 + 40) = v28 & ~(v28 >> 31);
  v29 = dictSingleLookupInt(v18, 0, "{#ACC4}");
  *(v18 + 44) = v29 & ~(v29 >> 31);
  v30 = dictSingleLookupInt(v18, 0, ".");
  *(v18 + 48) = v30 & ~(v30 >> 31);
  v31 = dictSingleLookupInt(v18, 0, "'");
  *(v18 + 52) = v31 & ~(v31 >> 31);
  v32 = dictSingleLookupInt(v18, 0, "'2");
  *(v18 + 56) = v32 & ~(v32 >> 31);
  v33 = dictSingleLookupInt(v18, 0, "_");
  *(v18 + 60) = v33 & ~(v33 >> 31);
  v34 = dictSingleLookupInt(v18, 0, "_");
  *(v18 + 64) = v34 & ~(v34 >> 31);
  v35 = dictSingleLookupInt(v18, 0, "*");
  *(v18 + 68) = v35 & ~(v35 >> 31);
  v36 = dictSingleLookupInt(v18, 0, "{#PB-S}");
  *(v18 + 72) = v36 & ~(v36 >> 31);
  v37 = dictSingleLookupInt(v18, 0, "+");
  *(v18 + 76) = v37 & ~(v37 >> 31);
  v38 = dictSingleLookupInt(v18, 0, "{#PB-W}");
  *(v18 + 80) = v38 & ~(v38 >> 31);
  v39 = dictSingleLookupInt(v18, 0, "{#BEG}");
  *(v18 + 84) = v39 & ~(v39 >> 31);
  v40 = dictSingleLookupInt(v18, 0, "{#END}");
  *(v18 + 88) = v40 & ~(v40 >> 31);
  v41 = dictSingleLookupInt(v18, 0, ".");
  *(v18 + 92) = v41 & ~(v41 >> 31);
  v42 = dictSingleLookupInt(v18, 0, "{#WB}");
  *(v18 + 96) = v42 & ~(v42 >> 31);
  v43 = dictSingleLookupInt(v18, 0, "");
  *(v18 + 100) = v43 & ~(v43 >> 31);
  v44 = dictSingleLookupInt(v18, 1, "*");
  *(v18 + 104) = v44 & ~(v44 >> 31);
  v45 = dictSingleLookupInt(v18, 1, "**");
  *(v18 + 108) = v45 & ~(v45 >> 31);
  v46 = dictSingleLookupInt(v18, 1, "%");
  *(v18 + 112) = v46 & ~(v46 >> 31);
  v47 = dictSingleLookupInt(v18, 1, "%%");
  *(v18 + 116) = v47 & ~(v47 >> 31);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v48 = *(v60 + 8);
  v49 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v62 = ssftmap_ElemCompareKeysString;
  v63 = ssftmap_ElemCopyString;
  v64 = ssftmap_ElemFreeString;
  Lex = ssftmap_ObjOpen(v48, 0, &__s, (v49 + 8544));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v50 = *(v60 + 8);
  v51 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v62 = ssftmap_ElemCompareKeysString;
  v63 = ssftmap_ElemCopyString;
  v64 = ssftmap_ElemFreeString;
  Lex = ssftmap_ObjOpen(v50, 0, &__s, (v51 + 8552));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v52 = *(v60 + 8);
  v53 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v62 = ssftmap_ElemCompareKeysString;
  v63 = ssftmap_ElemCopyString;
  v64 = ssftmap_ElemFreeString;
  Lex = ssftmap_ObjOpen(v52, 0, &__s, (v53 + 8560));
  if ((Lex & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v54 = *(v60 + 8);
  v55 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v62 = ssftmap_ElemCompareKeysString;
  v63 = ssftmap_ElemCopyString;
  v64 = ssftmap_ElemFreeString;
  Lex = ssftmap_ObjOpen(v54, 0, &__s, (v55 + 8568));
  if ((Lex & 0x80000000) != 0)
  {
LABEL_31:
    v13 = Lex;
    goto LABEL_32;
  }

  v56 = *(v60 + 8);
  v57 = *a5;
  *&__s = ssftmap_ElemCopyString;
  *(&__s + 1) = ssftmap_ElemFreeString;
  v62 = ssftmap_ElemCompareKeysString;
  v63 = ssftmap_ElemCopyString;
  v64 = ssftmap_ElemFreeString;
  v13 = ssftmap_ObjOpen(v56, 0, &__s, (v57 + 8576));
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v58 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t freeTabsAsLex(uint64_t result, _WORD *a2, int a3, _WORD *a4, int a5)
{
  v9 = result;
  v10 = *(result + 8584);
  if (v10)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v10);
  }

  v11 = v9[1074];
  if (v11)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v11);
  }

  v12 = v9[1075];
  if (v12)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v12);
  }

  v13 = v9[1076];
  if (v13)
  {
    result = kblex_FinishLex(a2, a3, a4, a5, v13);
  }

  v14 = v9[1077];
  if (v14)
  {

    return kblex_FinishLex(a2, a3, a4, a5, v14);
  }

  return result;
}

uint64_t kbsymtab_UnloadData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t *a5)
{
  v6 = 2371887111;
  if (a5)
  {
    v11 = *a5;
    if (*a5)
    {
      v12 = *(*v11 + 8);
      freeTabsAsLex(v11, a1, a2, a3, a4);
      v13 = *a5;
      if (*(*a5 + 128))
      {
        LhpuRemove(v12, (*a5 + 128));
        v13 = *a5;
      }

      v14 = *(v13 + 120);
      if (v14)
      {
        heap_Free(v12, v14);
        v13 = *a5;
      }

      ssftmap_ObjClose(*(v13 + 8544));
      ssftmap_ObjClose(*(*a5 + 8552));
      ssftmap_ObjClose(*(*a5 + 8560));
      ssftmap_ObjClose(*(*a5 + 8568));
      ssftmap_ObjClose(*(*a5 + 8576));
      for (i = 1078; i != 2078; ++i)
      {
        v16 = *(*a5 + 8 * i);
        if (v16)
        {
          heap_Free(v12, v16);
        }
      }

      heap_Free(v12, *a5);
      return 0;
    }
  }

  return v6;
}

uint64_t kbsymtab_KnownGraphId(uint64_t a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (*(a1 + 8536))
    {
      v2 = *a2;
      if (v2 <= 0x63 && !a2[1])
      {
        return *(a1 + 4 * v2 + 136);
      }
    }
  }

  v3 = dictSingleLookupInt(a1, 3, a2);
  return v3 & ~(v3 >> 31);
}

char *kbsymtab_GraphSymString(uint64_t a1, signed int a2, char *__dst, unint64_t a4)
{
  *__dst = 0;
  if (!a1 || a4 < 8 || a2 > 999 || !*(a1 + 8536) || (result = strcpy(__dst, (a1 + 8 * a2 + 536)), !*__dst))
  {

    return dictLookupSymStr(a1, 3, a2, __dst, a4);
  }

  return result;
}

uint64_t dictLookupSymStr(void *a1, int a2, unsigned int a3, char *a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 58;
  result = LH_itoa(a3, v15, 0xAu);
  if (a4)
  {
    if (a5)
    {
      v13 = 0;
      *a4 = 0;
      v12 = -1;
      result = dictLookup(a1, a2, &v14, &v13, &v12);
      if (v12)
      {
        v10 = a5 - 1;
        result = strncpy(a4, *v13, v10);
        a4[v10] = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t kbsymtab_AccId(uint64_t a1, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 4)
  {
    v2 = 4;
  }

  return *(a1 + 4 * v2 + 28);
}

uint64_t kbsymtab_IntPropValue(void *a1, unsigned int a2, unsigned int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  buildSymFeatPropKey(a1, a2, 0, a3, v6);
  result = dictSingleLookupInt(a1, 4, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

char *buildSymFeatPropKey(void *a1, unsigned int a2, __int16 *a3, unsigned int a4, _BYTE *a5)
{
  *a5 = 58;
  v8 = a5 + 1;
  LH_itoa(a2, a5 + 1, 0xAu);
  v9 = strlen(v8);
  v10 = &v8[v9];
  v11 = 100 - v9;
  if (a3)
  {
    *v10 = 40;
    v12 = v10 + 1;
    if (*a3 >= 1)
    {
      v13 = 0;
      v14 = 99 - v9;
      do
      {
        if (v13 && v14 >= 3)
        {
          *v12++ = 44;
          --v14;
        }

        v15 = a3[v13 + 1];
        if (v15 < 0)
        {
          dictLookupSymStr(a1, 2, -v15, v12, v14 - 2);
          v16 = strlen(v12);
          v12 += v16;
          v14 -= v16;
        }

        ++v13;
      }

      while (v13 < *a3);
    }

    *v12 = 41;
    v17 = strlen(v10);
    v10 += v17;
    v11 -= v17;
  }

  *v10 = 58;
  if (a4 > 9)
  {
    v18 = "";
  }

  else
  {
    v18 = off_1E81A3DC8[a4];
  }

  return strncpy(v10 + 1, v18, v11 - 1);
}

uint64_t dictSingleLookupInt(void *a1, int a2, uint64_t a3)
{
  v6 = 0;
  v5 = -1;
  dictLookup(a1, a2, a3, &v6, &v5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *v6;

  return atoi(v3);
}

BOOL kbsymtab_HasIntPropValue(void *a1, unsigned int a2, unsigned int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  buildSymFeatPropKey(a1, a2, 0, a3, v16);
  v15 = 0;
  v14 = 0;
  dictLookup(a1, 4, v16, &v15, &v14);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = 1;
    do
    {
      v9 = *v7++;
      v10 = atoi(v9);
    }

    while (v10 != a4 && v8++ < v6);
    result = v10 == a4;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void **kbsymtab_GetFirstAccPatVal(void **result, int a2, int a3, uint64_t a4, void *a5)
{
  if (result)
  {
    if (a4)
    {
      *a4 = result;
      *(a4 + 8) = a2;
      *(a4 + 24) = a3;
      *(a4 + 28) = -1;
      return kbsymtab_GetNextAccPatVal(a4, a5);
    }
  }

  return result;
}

void **kbsymtab_GetNextAccPatVal(void **result, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v10 = 0;
      *a2 = 0;
      buildSymFeatPropKey(*result, *(v3 + 2), 0, *(v3 + 6), v11);
      v4 = *v3;
      v8 = 0;
      result = dictLookup(v4, 4, v11, &v10, &v8);
      v5 = *(v3 + 7) + 1;
      if (v5 < v8)
      {
        v9 = (*v3)[15];
        v6 = v9;
        *(v3 + 7) = v5;
        strncpy(v6, *(v10 + 8 * v5), 0x3E8uLL);
        result = stringToPatternTree(*v3, &v9, a2);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t stringToPatternTree(void *a1, char **a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  result = heap_Calloc(*(*a1 + 8), 1, 24);
  *a3 = result;
  if (!result)
  {
    goto LABEL_39;
  }

  *result = 0;
  *(*a3 + 8) = 0;
  *(*a3 + 16) = 0;
  v7 = *a2;
  v8 = **a2;
  if (v8 == 37)
  {
    *a2 = v7 + 1;
    if (v7[1] == 37)
    {
      *a2 = v7 + 2;
      v9 = 9509;
      goto LABEL_8;
    }

    v15 = 37;
LABEL_15:
    v31 = v15;
    goto LABEL_32;
  }

  if (v8 == 42)
  {
    *a2 = v7 + 1;
    if (v7[1] == 42)
    {
      *a2 = v7 + 2;
      v9 = 10794;
LABEL_8:
      v31 = v9;
      v32 = 0;
LABEL_32:
      result = dictSingleLookupInt(a1, 1, &v31);
      *(*a3 + 16) = result & ~(result >> 31);
      goto LABEL_33;
    }

    v15 = 42;
    goto LABEL_15;
  }

  v10 = **a2;
  v11 = v8 - 48;
  if (v11 > 9)
  {
    v16 = MEMORY[0x1E69E9830];
    if (v8 < 0)
    {
      v17 = __maskrune(v8, 0x100uLL);
    }

    else
    {
      v17 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x100;
    }

    v18 = &v31;
    if (v17)
    {
      v19 = *a2 + 1;
      LOBYTE(v31) = v10;
      *a2 = v19;
      v18 = (&v31 + 1);
      for (i = 1; ; ++i)
      {
        v21 = *v19;
        v22 = (v21 & 0x80000000) != 0 ? __maskrune(*v19, 0x500uLL) : *(v16 + 4 * v21 + 60) & 0x500;
        v23 = v22 || v21 == 95;
        if (!v23 || i > 0x62)
        {
          break;
        }

        v19 = *a2 + 1;
        *v18 = **a2;
        v18 = (v18 + 1);
        *a2 = v19;
      }
    }

    *v18 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  v13 = v7 + 1;
  do
  {
    v12 = v11 + 10 * v12;
    *a2 = v13;
    v14 = *v13++;
    LOWORD(v11) = v14 - 48;
  }

  while ((v14 - 48) < 0xA);
  *(*a3 + 18) = v12;
LABEL_33:
  v24 = *a2;
  if (**a2 == 40)
  {
    v30 = 0;
    *a2 = v24 + 1;
    result = stringToPatternTree(a1, a2, &v30);
    v25 = v30;
    *(*a3 + 8) = v30;
    while (1)
    {
      v26 = *a2;
      v27 = **a2;
      if (v27 != 44)
      {
        break;
      }

      *a2 = v26 + 1;
      result = stringToPatternTree(a1, a2, &v30);
      v28 = v30;
      *v25 = v30;
      v25 = v28;
    }

    if (v27 == 41)
    {
      *a2 = v26 + 1;
    }
  }

LABEL_39:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void *kbsymtab_DisposeAccPat(void *result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (*a2)
      {
        v4 = result;
        do
        {
          v5 = *v3;
          kbsymtab_DisposeAccPat(v4, v3 + 1);
          result = heap_Free(*(*v4 + 8), v3);
          v3 = v5;
        }

        while (v5);
        *a2 = 0;
      }
    }
  }

  return result;
}

void kbsymtab_GetFeatMatchedFirstIntPropVal(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int *a6)
{
  if (a6)
  {
    *a6 = -1;
  }

  if (a5)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    *(a5 + 28) = -1;
    kbsymtab_GetFeatMatchedNextIntPropVal(a1, a5, a6);
  }
}

void kbsymtab_GetFeatMatchedNextIntPropVal(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = -1;
  }

  if (a2)
  {
    v12 = 0;
    buildSymFeatPropKey(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), v13);
    v5 = *a2;
    v11 = 0;
    v6 = dictLookup(v5, 4, v13, &v12, &v11);
    v7 = *(a2 + 28) + 1;
    if (v7 >= v11)
    {
      if (*(a2 + 16))
      {
        v8 = *(a2 + 8);
        v9 = *(a2 + 24);
        if (a3)
        {
          *a3 = -1;
        }

        *(a2 + 8) = v8;
        *(a2 + 16) = 0;
        *(a2 + 24) = v9;
        *(a2 + 28) = -1;
        kbsymtab_GetFeatMatchedNextIntPropVal(v6, a2, a3);
      }
    }

    else
    {
      *(a2 + 28) = v7;
      if (a3)
      {
        *a3 = atoi(*(v12 + 8 * v7));
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void *kbsymtab_GetLhPlusPhone(void *result, uint64_t a2, int a3, int *a4, char *a5, int a6, _BYTE *a7)
{
  if (a7)
  {
    *a7 = 0;
    if (a5)
    {
      v9 = result;
      if (!result)
      {
        goto LABEL_20;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

      if (!a4)
      {
        goto LABEL_20;
      }

      v11 = *a4;
      if (v11 >= a3)
      {
        goto LABEL_20;
      }

      v17 = 0;
      v13 = (a2 + v11);
      result = getComplexPhoneLen(result, (a2 + v11));
      v14 = result;
      if (!result)
      {
        result = LhplGetSymbol(v13, v9[16], &v17 + 1, &v17);
        if (result)
        {
          v14 = a6;
        }

        else
        {
          v15 = v17;
          v14 = v17 - HIBYTE(v17) + 1;
          if (v17 > HIBYTE(v17))
          {
            while (v13[v15] != 123)
            {
              LOBYTE(v17) = --v15;
              if (HIBYTE(v17) >= v15)
              {
                v15 = HIBYTE(v17);
                break;
              }
            }
          }

          v16 = &v13[v15];
          if (*v16 == 123)
          {
            result = getComplexPhoneLen(v9, v16);
            if (result)
            {
              v14 = v17 - HIBYTE(v17);
            }
          }
        }
      }

      if (v14 < a6)
      {
        result = strncpy(a5, v13, v14);
        a5[v14] = 0;
        *a4 += v14;
        *a7 = 1;
        return result;
      }

      if (!*a7)
      {
LABEL_20:
        *a5 = 0;
      }
    }
  }

  return result;
}

uint64_t getComplexPhoneLen(void *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 != 123)
  {
    goto LABEL_11;
  }

  v8[0] = 123;
  for (i = 1; i != 13; ++i)
  {
    v3 = a2[i];
    if (!a2[i])
    {
      break;
    }

    if (v3 == 123)
    {
      break;
    }

    if (v3 == 125)
    {
      break;
    }

    v8[i] = v3;
  }

  v4 = i;
  if (a2[i] == 125)
  {
    *&v8[i] = 125;
    if (dictSingleLookupInt(a1, 0, v8) >= 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t dictLookup(void *a1, int a2, uint64_t a3, void *a4, __int16 *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = &a1[a2];
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v10 = v9[1068];
  v11 = v9[1073];
  *__src = 0;
  result = ssftmap_FindReadOnly(v10, a3, __src);
  if ((result & 0x1FFF) != 7 && (result & 0x1FFF) != 20)
  {
    v23 = *__src;
    if (**__src == 126)
    {
      v24 = *(*__src + 1);
      if (!*(*__src + 1))
      {
        goto LABEL_32;
      }
    }

    v25 = a1[1078];
    if (v25)
    {
LABEL_31:
      result = strncpy(v25, v23, 0x64uLL);
      *(result + 100) = 0;
      a1[1078] = result;
      v24 = 1;
      *a4 = a1 + 1078;
LABEL_32:
      *a5 = v24;
      goto LABEL_35;
    }

    v25 = heap_Alloc(*(*a1 + 8), 101);
    if (v25)
    {
      v23 = *__src;
      goto LABEL_31;
    }
  }

  v14 = *a5;
  *a5 = 0;
  kblexXX_StartLookup(v11, v30);
  v15 = 0;
  v28 = 1;
  while (*(a3 + v15))
  {
    result = kblexXX_LookupChar(*(a3 + v15++), v30, &v28);
    if (!v28)
    {
      goto LABEL_23;
    }
  }

  kblexXX_GetFirstEntry(v30, &v27, v29);
  if (v27)
  {
    v16 = a1 + 1078;
    do
    {
      if (*a5)
      {
        v17 = v14 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        break;
      }

      kblexXX_GetEntryPhon(0, v29, __src, 100);
      v18 = *a5;
      if (v18 <= 0x3E7)
      {
        v19 = v16[v18];
        if (v19 || (v19 = heap_Alloc(*(*a1 + 8), 101)) != 0)
        {
          v20 = strncpy(v19, __src, 0x64uLL);
          v20[100] = 0;
          v21 = *a5;
          v16[v21] = v20;
          *a5 = v21 + 1;
        }
      }

      kblexXX_GetNextEntry(&v27, v29);
    }

    while (v27);
  }

  result = kaldi::nnet1::Component::IsUpdatable(v29);
LABEL_23:
  *a4 = a1 + 1078;
  if (!*a5)
  {
    v22 = "~";
    goto LABEL_34;
  }

  if (*a5 == 1)
  {
    v22 = a1[1078];
LABEL_34:
    result = ssftmap_Insert(v10, a3, v22);
  }

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mosynt_PadWithChar(uint64_t a1, int a2, int __c, unsigned int a4)
{
  v5 = 0;
  do
  {
    LODWORD(v6) = v5;
  }

  while (*(a1 + v5++));
  v6 = v6;
  if (a4 >= a2 - 1)
  {
    v8 = (a2 - 1);
  }

  else
  {
    v8 = a4;
  }

  if (v5 - 1 < v8)
  {
    memset((a1 + v6), __c, v8 - v5 + 1);
    v6 = v8;
  }

  *(a1 + v6) = 0;
  return 0;
}

uint64_t mosynt_RemoveAllSubstrOcc(char *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = 0;
    v4 = 0;
    do
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = 0;
        v7 = v4;
        while (a1[v7] == v5)
        {
          v5 = a2[++v6];
          ++v7;
          if (!a2[v6])
          {
            goto LABEL_10;
          }
        }

        a1[v3] = v2;
        LODWORD(v3) = v3 + 1;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

LABEL_10:
      v4 += v6;
      v2 = a1[v4];
    }

    while (v2);
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  a1[v3] = 0;
  return 0;
}

uint64_t mosynt_SubstAllSubstrOcc(char *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, int a5)
{
  if (*a2)
  {
    v5 = *a1;
    if (*a1)
    {
      LODWORD(v6) = 0;
      v7 = 0;
      v8 = a5 - 1;
      do
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = 0;
          v11 = v7;
          while (a1[v11] == v9)
          {
            v9 = a2[++v10];
            ++v11;
            if (!a2[v10])
            {
              goto LABEL_10;
            }
          }

          if (v6 < v8)
          {
            a4[v6] = v5;
            LODWORD(v6) = v6 + 1;
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
LABEL_10:
          LOBYTE(v12) = *a3;
          if (*a3)
          {
            v13 = 1;
            do
            {
              if (v6 < v8)
              {
                a4[v6] = v12;
                LODWORD(v6) = v6 + 1;
              }

              v12 = a3[v13++];
            }

            while (v12);
          }
        }

        v7 += v10;
        v5 = a1[v7];
      }

      while (v5);
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    a4 += v6;
  }

  *a4 = 0;
  return 0;
}

uint64_t mosynt_GetTermSubstr(uint64_t a1, _DWORD *a2, unsigned __int8 a3, _DWORD *a4, _BYTE *a5, int a6)
{
  if (*(a1 + *a2))
  {
    *a4 = 1;
    v6 = *a2;
    v7 = *(a1 + v6);
    if (v7 == a3 || v7 == 0)
    {
      v9 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (v10 < a6 - 1)
        {
          a5[v10++] = v7;
          LODWORD(v6) = *a2;
        }

        LODWORD(v6) = v6 + 1;
        *a2 = v6;
        v7 = *(a1 + v6);
      }

      while (v7 != a3 && v7 != 0);
      v9 = v10;
    }

    a5[v9] = 0;
    v12 = *a2;
    if (*(a1 + v12))
    {
      *a2 = v12 + 1;
    }
  }

  else
  {
    *a4 = 0;
    *a5 = 0;
  }

  return 0;
}

uint64_t mosynt_RemoveInitSubstr(const char *a1, char *__s)
{
  v4 = strlen(__s);
  if (!strncmp(a1, __s, v4))
  {
    v5 = strlen(__s);
    v6 = a1[v5];
    if (v6)
    {
      LOWORD(v7) = 0;
      do
      {
        a1[v7] = v6;
        ++v5;
        LOWORD(v7) = v7 + 1;
        v6 = a1[v5];
      }

      while (v6);
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }

    a1[v7] = 0;
  }

  return 0;
}

uint64_t mosynt_App(uint64_t a1, int a2, unsigned int *a3, _BYTE *a4, _DWORD *a5)
{
  *a5 = 1;
  LOBYTE(v5) = *a4;
  v6 = *a3;
  if (*a4)
  {
    v7 = 1;
    while (v6 < a2 - 1)
    {
      *(a1 + v6) = v5;
      v6 = *a3 + 1;
      *a3 = v6;
      v5 = a4[v7++];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    *a5 = 0;
    v6 = *a3;
  }

LABEL_7:
  *(a1 + v6) = 0;
  return 0;
}

uint64_t mosynt_NormalizeSpaceFields(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v14 = 0;
  v5 = *a1;
  if (*a1)
  {
    v13 = 0;
    v7 = a3 - 1;
    while (1)
    {
      result = mosynt_GetSpace(0, a1, &v14 + 1, &v13);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v13;
      LODWORD(v10) = v14;
      if (v13)
      {
        do
        {
          v11 = v10;
          if (v10 < v7)
          {
            v10 = (v10 + 1);
            *(a2 + v11) = 32;
            v11 = v10;
          }

          *(a2 + v11) = 0;
          --v9;
        }

        while (v9);
      }

      LODWORD(v14) = v10;
      v12 = HIDWORD(v14);
      result = mosynt_GetField(a1, &v14 + 1, &v13);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = mosynt_TransferStretchedStringSection(a1, &v12, v13, a2, a3, &v14, v13, 32);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!a1[HIDWORD(v14)])
      {
        v5 = v14;
        goto LABEL_13;
      }
    }
  }

  else
  {
    result = 0;
LABEL_13:
    if (v5 >= a3)
    {
      v5 = a3 - 1;
    }

    *(a2 + v5) = 0;
  }

  return result;
}

uint64_t mosynt_GetSpace(int a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  *a4 = 0;
  result = utf8_getUTF8Char(a2, *a3, __s);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  while (1)
  {
LABEL_2:
    v9 = __s[0] - 32;
    v10 = v9 > 0x3F;
    v11 = (1 << v9) & 0x8000000000002001;
    if (!v10 && v11 != 0)
    {
      goto LABEL_6;
    }

    if (a1 && (__s[0] == 47 || __s[0] == 35))
    {
      v14 = *a3;
      if (*a3 && *(a2 + v14 - 1) != 32 || (*(a2 + v14 + 1) | 0x20) != 0x20)
      {
        return result;
      }

LABEL_6:
      ++*a4;
      v13 = *a3 + strlen(__s);
      *a3 = v13;
      result = utf8_getUTF8Char(a2, v13, __s);
      goto LABEL_7;
    }

    if (*__s == 8689634)
    {
      break;
    }

    if (*__s == 12228322 || *__s == 9799394)
    {
      goto LABEL_6;
    }

    if (*__s != 11704034)
    {
      return result;
    }

    while (1)
    {
      v15 = *__s;
      ++*a4;
      v16 = *a3 + strlen(__s);
      *a3 = v16;
      result = utf8_getUTF8Char(a2, v16, __s);
      if (v15 == 12359394)
      {
        break;
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!__s[0])
      {
        goto LABEL_2;
      }
    }

LABEL_7:
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v17 = 0;
  while (1)
  {
    ++*a4;
    v18 = *a3 + strlen(__s);
    *a3 = v18;
    result = utf8_getUTF8Char(a2, v18, __s);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v10 = v17++ > 1;
    if (v10)
    {
      goto LABEL_2;
    }
  }
}

uint64_t mosynt_GetField(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  *a3 = 0;
  for (result = utf8_getUTF8Char(a1, *a2, __s); (result & 0x80000000) == 0; result = utf8_getUTF8Char(a1, v7, __s))
  {
    if (!__s[0])
    {
      break;
    }

    if (__s[0] == 32)
    {
      break;
    }

    if (__s[0] == 95)
    {
      break;
    }

    if (*__s == 8689634)
    {
      break;
    }

    if (*__s == 12228322)
    {
      break;
    }

    if (*__s == 9799394)
    {
      break;
    }

    if (*__s == 11704034)
    {
      break;
    }

    ++*a3;
    v7 = *a2 + strlen(__s);
    *a2 = v7;
  }

  return result;
}

uint64_t mosynt_TransferStretchedStringSection(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, int a5, unsigned int *a6, unsigned int a7, int a8)
{
  __s[0] = 0;
  if (a3)
  {
    v25 = a8;
    v26 = a5;
    v13 = 0;
    v14 = 0;
    v15 = a5 - 1;
    while (1)
    {
      UTF8Char = utf8_getUTF8Char(a1, *a2, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      *a2 += strlen(__s);
      if (v13 < a7)
      {
        LOBYTE(v17) = __s[0];
        v18 = *a6;
        if (__s[0])
        {
          v19 = 1;
          do
          {
            if (v18 >= v15)
            {
              break;
            }

            *(a4 + v18) = v17;
            v18 = *a6 + 1;
            *a6 = v18;
            v17 = __s[v19++];
          }

          while (v17);
        }

        UTF8Char = 0;
        *(a4 + v18) = 0;
      }

      v13 = ++v14;
      if (v14 >= a3)
      {
        LOBYTE(a8) = v25;
        a5 = v26;
        if (v25)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v14 = 0;
    UTF8Char = 0;
    if (a8)
    {
LABEL_14:
      __s[0] = a8;
      __s[1] = 0;
    }

    else
    {
      strcpy(__s, " ");
    }

LABEL_16:
    if (a7 > v14)
    {
      v20 = __s[0];
      do
      {
        v21 = *a6;
        if (v20)
        {
          v22 = 1;
          LOBYTE(v23) = v20;
          do
          {
            if (v21 >= a5 - 1)
            {
              break;
            }

            *(a4 + v21) = v23;
            v21 = *a6 + 1;
            *a6 = v21;
            v23 = __s[v22++];
          }

          while (v23);
        }

        *(a4 + v21) = 0;
        ++v14;
      }

      while (a7 > v14);
      UTF8Char = 0;
    }

    *(a4 + *a6) = 0;
  }

  return UTF8Char;
}

uint64_t mosynt_ReplaceNonSpaceFields(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  while (*(a1 + HIDWORD(v25)) || *(a2 + v25))
  {
    v22 = HIDWORD(v25);
    result = mosynt_GetSpace(1, a1, &v25 + 1, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = mosynt_GetSpace(1, a2, &v25, &v23);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_TransferStretchedStringSection(a1, &v22, v24, a3, a4, &v24 + 1, v24, 32);
        if ((result & 0x80000000) == 0)
        {
          v22 = HIDWORD(v25);
          result = mosynt_GetField(a1, &v25 + 1, &v24);
          if ((result & 0x80000000) == 0)
          {
            v13 = v25;
            v21 = v25;
            result = mosynt_GetField(a2, &v25, &v23);
            if ((result & 0x80000000) == 0)
            {
              if (a6 && *(a2 + v13) == 123)
              {
                v14 = v24;
                v15 = &v22;
                v16 = a1;
                v17 = a3;
                v18 = a4;
                v19 = v24;
              }

              else
              {
                v14 = v23;
                v19 = v23 <= v24 ? v24 : v23;
                v15 = &v21;
                v16 = a2;
                v17 = a3;
                v18 = a4;
              }

              result = mosynt_TransferStretchedStringSection(v16, v15, v14, v17, v18, &v24 + 1, v19, a5);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }
      }
    }

    return result;
  }

  v20 = HIDWORD(v24);
  if (HIDWORD(v24) >= a4)
  {
    v20 = a4 - 1;
  }

  *(a3 + v20) = 0;
  return result;
}

uint64_t mosynt_AlignFieldsWithRef(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  result = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  while (*(a1 + HIDWORD(v15)) || *(a2 + v14))
  {
    result = mosynt_GetSpace(1, a1, &v15 + 1, &v15);
    if ((result & 0x80000000) == 0)
    {
      v12 = v14;
      result = mosynt_GetSpace(1, a2, &v14, &v14 + 1);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_TransferStretchedStringSection(a2, &v12, HIDWORD(v14), a3, a4, &v13, v15, 32);
        if ((result & 0x80000000) == 0)
        {
          result = mosynt_GetField(a1, &v15 + 1, &v15);
          if ((result & 0x80000000) == 0)
          {
            v12 = v14;
            result = mosynt_GetField(a2, &v14, &v14 + 1);
            if ((result & 0x80000000) == 0)
            {
              result = mosynt_TransferStretchedStringSection(a2, &v12, HIDWORD(v14), a3, a4, &v13, v15, a5);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }
      }
    }

    return result;
  }

  v11 = v13;
  if (v13 >= a4)
  {
    v11 = a4 - 1;
  }

  *(a3 + v11) = 0;
  return result;
}

uint64_t mosynt_TraceString(uint64_t a1, char *__s, unsigned int a3)
{
  if (a1)
  {
    v5 = *(a1 + 1024);
    if (v5)
    {
      v5 = *(a1 + 1028);
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a3)
  {
    return 0;
  }

  v7 = strlen(__s);

  return mosyntbase_WString(a1, __s, v7);
}

uint64_t mosynt_TraceInt(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    v3 = *(a1 + 1024);
    if (v3)
    {
      v3 = *(a1 + 1028);
    }

    else
    {
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v3 >= a3)
  {
    return mosyntbase_WInt(a1, a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mosynt_NumPOSListToPOSList(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v17 = 0;
  if (*a3)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      while (1)
      {
        v12 = a3[v10];
        if (!a3[v10] || v12 == 92)
        {
          break;
        }

        v11 = v12 + 10 * v11 - 48;
        ++v10;
      }

      result = mosyntkbsymtab_AppDecomprConsToString(a1, a2, v11, a4, a5, &v17);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v14 = v10;
      v15 = v17;
      if (v17 < a5)
      {
        v16 = a3[v10];
        *(a4 + v17) = v16;
        v17 = v15 + 1;
        if (v16)
        {
          v14 = v10 + 1;
        }

        else
        {
          v14 = v10;
        }

        v10 = v14;
      }

      v11 = 0;
      if (!a3[v14])
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    result = 0;
LABEL_15:
    *(a4 + (a5 - 1)) = 0;
  }

  return result;
}

uint64_t mosynt_ResetMosyntWS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = 0;
    *(a2 + 5000) = 0;
    *(a2 + 15000) = 0;
    *(a2 + 20000) = 0;
    *(a2 + 25000) = 0u;
  }

  return 0;
}

uint64_t mosynt_StartWordAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 0;
  }

  *a8 = a2;
  *(a8 + 8) = 1;
  *(a8 + 16) = a3;
  *(a8 + 96) = 1;
  *(a8 + 104) = a4;
  *(a8 + 184) = a5;
  *(a8 + 192) = a6;
  result = fst_getFSTSeq(a7, 0, (a8 + 200), (a8 + 208));
  if ((result & 0x80000000) == 0)
  {
    result = fst_getFSTSeq(a7, 1, (a8 + 216), (a8 + 224));
    if ((result & 0x80000000) == 0)
    {
      *(a8 + 1248) = 0;
      *(a8 + 232) = 0;
      *(a8 + 240) = 0;
      *(a8 + 248) = 0;
    }
  }

  return result;
}

uint64_t mosynt_WordAnalysis(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v15 = v14;
  v16 = v1;
  v58 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    goto LABEL_7;
  }

  if (!*(v1 + 1024))
  {
    *(v1 + 1028) = 0;
    *(v1 + 1024) = 1;
    *(v1 + 1032) = 20;
LABEL_7:
    v17 = 0;
    *v3 = 0;
    goto LABEL_8;
  }

  v17 = *(v1 + 1028);
  *v3 = 0;
  if (!v17)
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  result = mosyntbase_WriteMessage(v1, "\n\n[WANA] analyzing word '%s'\n", 0, v2, 0, "", 0, "", 0);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  v19 = 0;
LABEL_9:
  v50 = 0;
  result = utf8_getUTF8Char(v13, 0, __s);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  if (__s[0])
  {
    v38 = v17;
    v40 = v10;
    v42 = v12;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = strlen(__s);
      result = utf8_ToLower(__s, 0, v44);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_34;
      }

      v23 = strlen(v44);
      if (v23 && v20 + v23 + 1 <= 0x1388)
      {
        v24 = v23;
        v25 = v44;
        v26 = v20;
        do
        {
          v27 = *v25++;
          v20 = v26 + 1;
          v57[v26++] = v27;
          --v24;
        }

        while (v24);
      }

      v21 += v22;
      utf8_getUTF8Char(v13, v21, __s);
      if (!__s[0])
      {
        v57[v20] = 0;
        v12 = v42;
        v10 = v40;
        v17 = v38;
        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }
  }

  v57[0] = 0;
  if ((v19 & 1) == 0)
  {
LABEL_21:
    result = mosyntbase_WriteMessage(v16, "[WANA] after lowercase conversion '%s'\n", 0, v57, 0, "", 0, "", 0);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_22:
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *__s = 0u;
  result = hlp_CastFSTSeq(*(v15 + 200), *(v15 + 208), __s);
  if ((result & 0x80000000) == 0)
  {
    v43 = *(v15 + 8);
    v28 = v17;
    v29 = *(v15 + 96);
    v30 = *(v15 + 192);
    v39 = *v15;
    v41 = *(v15 + 184);
    v31 = strlen(v57);
    v46 = v53;
    v47 = v54;
    v48 = v55;
    v49 = v56;
    *v44 = *__s;
    v45 = v52;
    result = mosyntwordana_ParseWord(v16, v28, v39, v43, (v15 + 16), v29, (v15 + 104), v41, v44, v30, 0, v57, v31, v12, v10, v8, &v50, (v15 + 232));
    v32 = v50;
    *v6 = v50;
    if ((result & 0x80000000) == 0)
    {
      *v5 = 0;
      v33 = *(v15 + 232);
      if (v32)
      {
        *v5 = -1;
        v34 = *(v33 + 32);
        if (!v34)
        {
LABEL_32:
          *(v15 + 240) = *(v33 + 32);
          goto LABEL_34;
        }

        v35 = -1;
        do
        {
          v36 = *(v34 + 3);
          if (v35 < 0 || v36 < v35)
          {
            *v5 = v36;
            v35 = v36;
          }

          v34 = *v34;
        }

        while (v34);
      }

      if (!v33)
      {
        *(v15 + 240) = 0;
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

LABEL_34:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_CastFSTSeq(uint64_t a1, int a2, int *a3)
{
  if (a2 < 1)
  {
    result = 0;
LABEL_7:
    *a3 = a2;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    while (1)
    {
      result = fst_getFST(a1, v6, &v8);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      *&a3[2 * v6++ + 2] = v8;
      if (a2 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t mosynt_GetReading(uint64_t a1, void **a2, int a3, _DWORD *a4, unsigned __int8 *a5, int a6, char *a7, int a8, _DWORD *a9)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  if (a1)
  {
    if (*(a1 + 1024))
    {
      v15 = *(a1 + 1028);
    }

    else
    {
      v15 = 0;
      *(a1 + 1028) = 0;
      *(a1 + 1024) = 1;
      *(a1 + 1032) = 20;
    }
  }

  else
  {
    v15 = 0;
  }

  *a4 = 0;
  *a5 = 0;
  *a7 = 0;
  *a9 = 0;
  v16 = a2[30];
  if (!v16)
  {
    result = 0;
    goto LABEL_14;
  }

  *a4 = 1;
  v36 = 0;
  v17 = a6 - 1;
  result = mosyntkbsymtab_AppDecomprConsToString(a1, *a2, *(v16 + 8), a5, a6 - 1, &v36);
  if ((result & 0x80000000) == 0)
  {
    a5[v17] = 0;
    result = hlp_CastFSTSeq(a2[27], *(a2 + 56), v34);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntwordpho_ReadingToPhonString(a1, v15, *a2, v16, a7, a8);
      if ((result & 0x80000000) == 0)
      {
        if (!strcmp(a2 + 248, a7))
        {
          v20 = (a2 + 156);
          v19 = a7;
        }

        else
        {
          __strcpy_chk();
          result = mosyntwordpho_TreatSingleReadingString(a1, v15, *a2, v34, v16, a7, a8);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_14;
          }

          a7[a8 - 1] = 0;
          v19 = (a2 + 156);
          v20 = a7;
        }

        strcpy(v19, v20);
        result = mosyntwordpho_TraceReading(a1, v15, *a2, v16, a7, a8);
        if ((result & 0x80000000) == 0)
        {
          *a9 = *(v16 + 12);
          if (a3)
          {
            *__s = 8689634;
            v22 = strlen(__s);
            v23 = strlen(a7);
            v24 = v23 + 2 * v22;
            LODWORD(v25) = ~(2 * v22) + a8;
            if (v24 <= a8 - 1)
            {
              v25 = v23;
            }

            else
            {
              v25 = v25;
            }

            if (v25)
            {
              v26 = v22 + v25 + 0xFFFFFFFF;
              v27 = v25;
              do
              {
                a7[v26--] = a7[--v27];
              }

              while (v27);
            }

            if (v22)
            {
              v28 = v22;
              if (v24 >= a8 - 1)
              {
                v24 = a8 - 1;
              }

              v29 = v24 - v22;
              v30 = __s;
              v31 = a7;
              do
              {
                v32 = *v30++;
                *v31++ = v32;
                a7[v29++] = v32;
                --v28;
              }

              while (v28);
            }

            result = 0;
            a7[(v25 + 2 * v22)] = 0;
          }

          if (!v15 || (HIDWORD(v33) = 0, LODWORD(v33) = 0, *(&v33 + 4) = *(v16 + 12), result = mosyntbase_WriteMessage(a1, "\n[WANA] reading: %s cost %d  %s\n\n", 0, a5, 0, a7, 0, "", v33), (result & 0x80000000) == 0) && (result = mosyntdata_WriteReadingStruct(a1, *a2, 1, v16, 4), (result & 0x80000000) == 0))
          {
            a2[30] = *a2[30];
          }
        }
      }
    }
  }

LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}