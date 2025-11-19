uint64_t log_VOutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || log_GetLogLevel(a1) < a3)
  {
    return 0;
  }

  v10 = 0;
  v13 = a3 > 4 && *(a1 + 100) != 0;
  if (a5 && !v13)
  {
    if (a2)
    {
      v10 = 0;
      v14 = a1 + 24;
      v15 = 5;
      do
      {
        if (*v14 && *(*v14 + 48))
        {
          v16 = (*(*v14 + 48))(*(v14 - 8), a2, a3, a4, a5);
          if (v16 >= 0)
          {
            v10 = v10;
          }

          else
          {
            v10 = v16;
          }
        }

        v14 += 16;
        --v15;
      }

      while (v15);
      v17 = *(a1 + 112);
      if (v17 && *(v17 + 48))
      {
        v18 = (*(*(a1 + 112) + 48))(*(a1 + 104), a2, a3, a4, a5);
        if (v18 >= 0)
        {
          return v10;
        }

        else
        {
          return v18;
        }
      }
    }

    else
    {
      return 2226135046;
    }
  }

  return v10;
}

uint64_t log_OutBinary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  if (!a1 || log_GetLogLevel(a1) < a3 || a3 >= 5 && *(a1 + 100))
  {
    return 0;
  }

  v13 = 2226135046;
  if (a2 && a7)
  {
    if (a9)
    {
      ssftstring_Clear(a9);
    }

    v13 = 0;
    v15 = a1 + 24;
    v16 = 5;
    do
    {
      if (*v15)
      {
        v17 = *(*v15 + 56);
        if (v17)
        {
          v18 = *(v15 - 8);
          if (a9)
          {
            if (ssftstring_Size(a9))
            {
              v19 = 0;
            }

            else
            {
              v19 = a9;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = v17(v18, a2, a3, a4, a5, a6, a7, a8, v19);
          if (v20 >= 0)
          {
            v13 = v13;
          }

          else
          {
            v13 = v20;
          }
        }
      }

      v15 += 16;
      --v16;
    }

    while (v16);
    v21 = *(a1 + 112);
    if (v21)
    {
      v22 = *(v21 + 56);
      if (v22)
      {
        v23 = *(a1 + 104);
        if (a9)
        {
          if (ssftstring_Size(a9))
          {
            v24 = 0;
          }

          else
          {
            v24 = a9;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v22(v23, a2, a3, a4, a5, a6, a7, a8, v24);
        if (v25 >= 0)
        {
          return v13;
        }

        else
        {
          return v25;
        }
      }
    }
  }

  return v13;
}

uint64_t log_OutPublic(uint64_t result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (result)
  {
    if (a2)
    {
      return log_VOutPublic(result, a2, a3, a4, &a9);
    }

    else
    {
      return 2226135046;
    }
  }

  return result;
}

uint64_t log_VOutPublic(uint64_t **a1, uint64_t a2, uint64_t a3, char *__s, unsigned int *a5)
{
  v19 = a5;
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 2226135046;
  }

  v17 = 0u;
  v18 = 0u;
  if (__s)
  {
    v8 = log_ParseKeyValuePairs_Restricted(*a1, __s, v19, &v17);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
  }

  for (i = 0; i != 10; i += 2)
  {
    v10 = a1[i + 3];
    if (v10)
    {
      v11 = v10[8];
      if (v11)
      {
        v12 = v11(a1[i + 2], a2, a3, HIDWORD(v17), v18, *(&v18 + 1));
        if (v12 >= 0)
        {
          v8 = v8;
        }

        else
        {
          v8 = v12;
        }
      }
    }
  }

  v13 = a1[14];
  if (v13)
  {
    v14 = v13[8];
    if (v14)
    {
      v15 = v14(a1[13], a2, a3, HIDWORD(v17), v18, *(&v18 + 1));
      if (v15 >= 0)
      {
        v8 = v8;
      }

      else
      {
        v8 = v15;
      }
    }
  }

  log_FreeKeyValuePairs(*a1, &v17);
  return v8;
}

uint64_t log_ParseKeyValuePairs_Restricted(uint64_t *a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = 2226135047;
  if (strlen(__s) > 0x7F)
  {
    goto LABEL_118;
  }

  if (strlen(__s) - 128 < 0xFFFFFF7F)
  {
    v7 = 2226135049;
    goto LABEL_118;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = __s[v8];
    if (v10 != 37)
    {
      break;
    }

    v11 = v8 + 1;
    if (__s[v8 + 1] == 108 && __s[v8 + 2] == 115)
    {
      v76[v9] = 37;
      v76[v9 + 1] = 83;
      v9 += 2;
      v8 += 3;
    }

    else
    {
LABEL_11:
      v76[v9++] = v10;
      v8 = v11;
    }
  }

  if (__s[v8])
  {
    v11 = v8 + 1;
    goto LABEL_11;
  }

  v76[v9] = 0;
  if (!a4)
  {
    goto LABEL_118;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = v76[v12];
    if (v14 == 32)
    {
      v17 = 1;
      goto LABEL_20;
    }

    if (v14 == 37)
    {
      ++v13;
      v15 = v76[v12 + 1];
      v16 = v15 - 83;
      if ((v15 - 83) <= 0x25)
      {
        if (((1 << v16) & 0x25200B0001) != 0)
        {
          v17 = 2;
LABEL_20:
          v12 += v17;
          continue;
        }

        if (((1 << v16) & 0x2200000) != 0)
        {
          v18 = v76[v12 + 2] - 100;
          if (v18 > 0x11 || ((1 << v18) & 0x28001) == 0)
          {
            goto LABEL_118;
          }

          v17 = 3;
          goto LABEL_20;
        }
      }

      if (v15 != 46 || v76[v12 + 2] != 42 || (v76[v12 + 3] | 0x20) != 0x73)
      {
        goto LABEL_118;
      }

      v17 = 4;
      goto LABEL_20;
    }

    break;
  }

  if (v76[v12])
  {
    goto LABEL_118;
  }

  if (v13)
  {
    v19 = 2226135047;
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 8) = 0;
  v20 = heap_Alloc(a1, 4096);
  *a4 = v20;
  if (!v20)
  {
LABEL_97:
    v7 = 2226135050;
    goto LABEL_118;
  }

  v21 = v13 & 0xFFFFFFFE;
  *(a4 + 8) = 4096;
  *v20 = 0;
  *(a4 + 12) = 0;
  if ((v13 & 0xFFFFFFFE) >= 2)
  {
    v22 = heap_Calloc(a1, v21 >> 1, 8);
    *(a4 + 16) = v22;
    if (!v22 || (v23 = heap_Calloc(a1, v21 >> 1, 8), (*(a4 + 24) = v23) == 0))
    {
      v7 = 2226135050;
      goto LABEL_118;
    }
  }

  else if (!v21)
  {
    goto LABEL_115;
  }

  v24 = 0;
  v25 = 0;
  while (2)
  {
    v26 = v76[v25];
    if (v26 == 32)
    {
      v27 = v25;
      goto LABEL_88;
    }

    if (v26 == 37)
    {
      v27 = v25 + 1;
      v28 = v76[v25 + 1];
      if (v28 == 46)
      {
        if (v76[v25 + 2] == 42)
        {
          v29 = a3;
          a3 += 2;
          v30 = *v29;
          v27 = v25 + 3;
          v28 = v76[v25 + 3];
          goto LABEL_47;
        }

        v30 = -1;
      }

      else
      {
        v30 = -1;
LABEL_47:
        if (v28 == 108)
        {
          v31 = v27 + 1;
        }

        else
        {
          v31 = v27;
        }

        if (v28 == 104)
        {
          ++v27;
        }

        else
        {
          v27 = v31;
        }
      }

      v32 = v76[v27];
      if (v32 > 0x6F)
      {
        if (v76[v27] > 0x74u)
        {
          if (v32 == 117)
          {
            v51 = a3;
            a3 += 2;
            v44 = *v51;
            v45 = 10;
          }

          else
          {
            if (v32 != 120)
            {
              goto LABEL_118;
            }

            v43 = a3;
            a3 += 2;
            v44 = *v43;
            v45 = 16;
          }

          LH_utoa(v44, __sa, v45);
          goto LABEL_81;
        }

        if (v32 == 112)
        {
          v49 = a3;
          a3 += 2;
          v74 = *v49;
          __sprintf_chk(__sa, 0, 0x20uLL, "%p");
          goto LABEL_81;
        }

        if (v32 != 115)
        {
          goto LABEL_118;
        }

        v34 = a3;
        a3 += 2;
        v35 = *v34;
        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = "";
        }

        if (v30 == -1)
        {
          v30 = strlen(v36);
        }

        v37 = aux_ResizeKeyValueVect(a1, a4, v30 + 2);
        if ((v37 & 0x80000000) != 0)
        {
LABEL_117:
          v7 = v37;
          goto LABEL_118;
        }

        v38 = *a4 + strlen(*a4);
        strncat(*a4, v36, v30);
        v39 = *a4;
        v40 = strlen(*a4);
      }

      else
      {
        if (v76[v27] <= 0x63u)
        {
          if (v32 != 83)
          {
            if (v32 != 99)
            {
              goto LABEL_118;
            }

            v33 = a3;
            a3 += 2;
            *__sa = *v33;
            goto LABEL_81;
          }

          v46 = a3;
          a3 += 2;
          v47 = *v46;
          if (v30 == -1)
          {
            v48 = wcslen(*v46);
          }

          else
          {
            v48 = v30;
          }

          v54 = heap_Calloc(a1, v48 + 1, 2);
          if (!v54)
          {
            goto LABEL_97;
          }

          v55 = v54;
          if (v48)
          {
            v56 = v54;
            v57 = v48;
            do
            {
              v58 = *v47++;
              *v56++ = v58;
              --v57;
            }

            while (v57);
          }

          *(v54 + 2 * v48) = 0;
          v59 = utf8_16BitNbrOfUtf8Chars(v54);
          v60 = aux_ResizeKeyValueVect(a1, a4, v59 + 2);
          if ((v60 & 0x80000000) != 0)
          {
            v73 = v60;
            heap_Free(a1, v55);
            v7 = v73;
            goto LABEL_118;
          }

          v38 = *a4 + strlen(*a4);
          utf8_16bitToUtf8(v55, v38);
          *(*a4 + strlen(*a4)) = 32;
          heap_Free(a1, v55);
LABEL_84:
          v53 = v24 >> 1;
          if (v24)
          {
            *(*(a4 + 24) + 8 * v53) = v38;
            ++*(a4 + 12);
          }

          else
          {
            *(*(a4 + 16) + 8 * v53) = v38;
          }

          v19 = 0;
          ++v24;
LABEL_88:
          v25 = v27 + 1;
          if (v24 >= v21)
          {
            goto LABEL_100;
          }

          continue;
        }

        if (v32 == 100)
        {
          v50 = a3;
          a3 += 2;
          LH_itoa(*v50, __sa, 0xAu);
        }

        else
        {
          if (v32 != 102)
          {
            goto LABEL_118;
          }

          v41 = a3;
          a3 += 2;
          v42 = *v41;
          __sprintf_chk(__sa, 0, 0x20uLL, "%f");
        }

LABEL_81:
        v52 = strlen(__sa);
        v37 = aux_ResizeKeyValueVect(a1, a4, v52 + 2);
        if ((v37 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        v38 = *a4 + strlen(*a4);
        strcat(*a4, __sa);
        v39 = *a4;
        v40 = strlen(*a4);
      }

      *&v39[v40] = 32;
      goto LABEL_84;
    }

    break;
  }

  if (v76[v25])
  {
    goto LABEL_118;
  }

LABEL_100:
  if (*(a4 + 12))
  {
    v61 = 0;
    do
    {
      if (v61)
      {
        v62 = *(*(a4 + 16) + 8 * v61);
        if (v62)
        {
          v63 = (v62 - 1);
          if (v63 > *a4 && *v63 == 32)
          {
            *v63 = 0;
          }
        }
      }

      v64 = *(*(a4 + 24) + 8 * v61);
      if (v64)
      {
        v65 = (v64 - 1);
        if (v65 > *a4 && *v65 == 32)
        {
          *v65 = 0;
        }
      }

      ++v61;
      v66 = *(a4 + 12);
    }

    while (v61 < v66);
    v67 = *(a4 + 24);
    v68 = v66 - 1;
    v69 = *(v67 + 8 * v68);
    if (v69)
    {
      v70 = v69 + strlen(*(v67 + 8 * v68));
      if (*(v70 - 1) == 32)
      {
        *(v70 - 1) = 0;
      }
    }
  }

LABEL_115:
  v7 = v19;
  if ((v19 & 0x80000000) != 0)
  {
LABEL_118:
    log_FreeKeyValuePairs(a1, a4);
  }

  v71 = *MEMORY[0x1E69E9840];
  return v7;
}

void *log_FreeKeyValuePairs(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = heap_Free(result, v4);
    *a2 = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    result = heap_Free(v3, v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    result = heap_Free(v3, v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t **log_OutEvent(uint64_t **result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (result)
  {
    return log_VOutEvent(result, a2, a3, &a9);
  }

  return result;
}

uint64_t log_VOutEvent(uint64_t **a1, uint64_t a2, char *__s, unsigned int *a4)
{
  v22 = a4;
  if (!a1)
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  if (__s)
  {
    v6 = log_ParseKeyValuePairs_Restricted(*a1, __s, v22, &v20);
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }

    v7 = a1[15];
    if (v7)
    {
      if (*v7)
      {
        v8 = *a1;
        v9 = heap_Realloc(*a1, v21, 8 * (HIDWORD(v20) + 1));
        if (v9)
        {
          *&v21 = v9;
          v10 = heap_Realloc(v8, *(&v21 + 1), 8 * (HIDWORD(v20) + 1));
          if (v10)
          {
            *(&v21 + 1) = v10;
            v11 = HIDWORD(v20);
            *(v21 + 8 * HIDWORD(v20)) = "SECURE";
            *(*(&v21 + 1) + 8 * v11) = v7;
            HIDWORD(v20) = v11 + 1;
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  for (i = 0; i != 10; i += 2)
  {
    v13 = a1[i + 3];
    if (v13)
    {
      v14 = v13[9];
      if (v14)
      {
        v15 = v14(a1[i + 2], a2, HIDWORD(v20), v21, *(&v21 + 1));
        if (v15 >= 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = v15;
        }
      }
    }
  }

  v16 = a1[14];
  if (v16)
  {
    v17 = v16[9];
    if (v17)
    {
      v18 = v17(a1[13], a2, HIDWORD(v20), v21, *(&v21 + 1));
      if (v18 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v18;
      }
    }
  }

  log_FreeKeyValuePairs(*a1, &v20);
  return v6;
}

uint64_t log_SetSessionID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 24;
  v6 = 5;
  do
  {
    if (*v5)
    {
      v7 = *(*v5 + 88);
      if (v7)
      {
        v8 = v7(*(v5 - 8), a2);
        if (v8 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }
      }
    }

    v5 += 16;
    --v6;
  }

  while (v6);
  v9 = *(a1 + 112);
  if (v9)
  {
    v10 = *(v9 + 88);
    if (v10)
    {
      v11 = v10(*(a1 + 104), a2);
      if (v11 >= 0)
      {
        return v4;
      }

      else
      {
        return v11;
      }
    }
  }

  return v4;
}

uint64_t log_OutTraceTuningData(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!a1 || !log_HasTraceTuningDataSubscriber(a1))
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  if (!a3 || (a3 = log_ParseKeyValuePairs_Restricted(*a1, a3, &a9, &v20), (a3 & 0x80000000) == 0))
  {
    for (i = 0; i != 10; i += 2)
    {
      v13 = a1[i + 3];
      if (v13)
      {
        v14 = v13[12];
        if (v14)
        {
          v15 = v14(a1[i + 2], a2, HIDWORD(v20), v21, *(&v21 + 1));
          if (v15 >= 0)
          {
            a3 = a3;
          }

          else
          {
            a3 = v15;
          }
        }
      }
    }

    v16 = a1[14];
    if (v16)
    {
      v17 = v16[12];
      if (v17)
      {
        v18 = v17(a1[13], a2, HIDWORD(v20), v21, *(&v21 + 1));
        if (v18 >= 0)
        {
          a3 = a3;
        }

        else
        {
          a3 = v18;
        }
      }
    }

    log_FreeKeyValuePairs(*a1, &v20);
  }

  return a3;
}

BOOL log_HasTraceTuningDataSubscriber(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 16);
    v3 = 5;
    do
    {
      if (TraceTuningDataEnabled(v2))
      {
        return 1;
      }

      v2 += 2;
      --v3;
    }

    while (v3);

    return TraceTuningDataEnabled((v1 + 104));
  }

  return result;
}

uint64_t log_OutTraceTuningDataBinary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || !log_HasTraceTuningDataSubscriber(a1))
  {
    return 0;
  }

  if (!a5)
  {
    return 2226135046;
  }

  v12 = 0;
  v13 = a1 + 24;
  v14 = 5;
  do
  {
    if (*v13)
    {
      v15 = *(*v13 + 104);
      if (v15)
      {
        v16 = v15(*(v13 - 8), a2, a3, a4, a5, a6);
        if (v16 >= 0)
        {
          v12 = v12;
        }

        else
        {
          v12 = v16;
        }
      }
    }

    v13 += 16;
    --v14;
  }

  while (v14);
  v17 = *(a1 + 112);
  if (v17)
  {
    if ((a2 - 402) <= 0xFFFFFFFD)
    {
      v18 = *(v17 + 104);
      if (v18)
      {
        v19 = v18(*(a1 + 104), a2, a3, a4, a5, a6);
        if (v19 >= 0)
        {
          return v12;
        }

        else
        {
          return v19;
        }
      }
    }
  }

  return v12;
}

BOOL TraceTuningDataEnabled(void *a1)
{
  v1 = a1[1];
  if (!v1 || !v1[13] && !v1[12])
  {
    return 0;
  }

  v3 = v1[14];
  if (v3)
  {
    if (v3(*a1, 231) != 1)
    {
      return 0;
    }

    v1 = a1[1];
  }

  v4 = v1[10];
  return !v4 || v4(*a1) > 3;
}

uint64_t log_RefreshParameters(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 56);
  v3 = 5;
  do
  {
    v4 = *(v2 - 2);
    if (v4)
    {
      v5 = *(v4 + 120);
      if (v5)
      {
        v6 = v5(*(v2 - 1), *v2);
        if (v6 >= 0)
        {
          v1 = v1;
        }

        else
        {
          v1 = v6;
        }
      }
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  return v1;
}

uint64_t log_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2226135041;
  }

  result = 0;
  *a2 = &ILog;
  return result;
}

uint64_t aux_ResizeKeyValueVect(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a2;
  v7 = strlen(*a2) + a3;
  v8 = *(a2 + 8);
  if (v7 < v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = a3;
  LODWORD(v11) = *(a2 + 8);
  while (1)
  {
    v12 = heap_Realloc(a1, v9, (v11 + 4096));
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v11 = (*(a2 + 8) + 4096);
    *(a2 + 8) = v11;
    v9 = v12;
    if (strlen(*a2) + v10 < v11)
    {
      v14 = 0;
      if (v7 >= v8 && v6)
      {
        strcpy(v13, *a2);
        v15 = 0;
        v16 = *(a2 + 12);
        if ((v16 + 1) > 1)
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = 1;
        }

        v18 = 8 * v17;
        do
        {
          v19 = *(a2 + 16);
          v20 = *(v19 + v15);
          if (v20 >= v6)
          {
            *(v19 + v15) = &v13[(v20 - v6)];
          }

          v21 = *(a2 + 24);
          v22 = *(v21 + v15);
          if (v22 >= v6)
          {
            *(v21 + v15) = &v13[(v22 - v6)];
          }

          v15 += 8;
        }

        while (v18 != v15);
        heap_Free(a1, *a2);
        v14 = 0;
        *a2 = v13;
      }

      return v14;
    }
  }

  v14 = 2226135050;
  if (v9)
  {
    heap_Free(a1, v9);
  }

  return v14;
}

uint64_t cupreader_open(_WORD *a1, int a2, uint64_t *a3, uint64_t **a4)
{
  v46 = 0;
  inited = InitRsrcFunction(a1, a2, &v46);
  if ((inited & 0x80000000) != 0)
  {
    v9 = inited;
    v11 = 0;
  }

  else
  {
    v9 = 2166366218;
    if (a3)
    {
      v10 = heap_Calloc(*(v46 + 8), 1, 80);
      v11 = v10;
      if (v10)
      {
        *v10 = a3;
        v12 = *a3;
        v13 = *(a3[1] + 16);
        v14 = heap_Calloc(*(v12 + 8), (v13 + 1), 1);
        v11[5] = v14;
        if (!v14)
        {
          goto LABEL_24;
        }

        memcpy(v14, *(*(*v11 + 8) + 8), v13);
        v47 = 0;
        Data = clcarchive_GetData(*v11, 1u, 0, *(*(*v11 + 8) + 56), &v47);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v16 = v47;
        *(v11 + 8) = (v47[2] << 16) | (v47[3] << 24) | (v47[1] << 8) | *v47;
        heap_Free(*(**v11 + 8), v16);
        v47 = 0;
        Data = clcarchive_GetData(*v11, 2u, 0, *(*(*v11 + 8) + 96), &v47);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v17 = v47;
        *(v11 + 6) = *v47;
        heap_Free(*(**v11 + 8), v17);
        Data = clcarchive_GetData(*v11, 3u, 0, *(*(*v11 + 8) + 136), &v47);
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v18 = v47;
        *(v11 + 7) = *v47;
        heap_Free(*(**v11 + 8), v18);
        v19 = *(v11 + 6);
        if (v19)
        {
          v20 = heap_Calloc(*(**v11 + 8), v19, 32);
          v11[1] = v20;
          if (!v20)
          {
            goto LABEL_24;
          }

          if (*(v11 + 6))
          {
            v21 = 0;
            v22 = 0;
            v23 = 4;
            while (1)
            {
              v44 = v22;
              v24 = v23;
              v25 = v23 + 1;
              v42 = v11[1];
              v26 = v42 + v21;
              v27 = *(*v11 + 8);
              v28 = *(v27 + 40 * v25 + 16);
              Data = clcarchive_GetData(*v11, v24, 0, *(v27 + 40 * v24 + 16), (v42 + v21));
              if ((Data & 0x80000000) != 0)
              {
                break;
              }

              Data = clcarchive_GetData(*v11, v25, 0, v28, (v26 + 8));
              if ((Data & 0x80000000) != 0)
              {
                break;
              }

              v29 = *v26;
              if (!*v26)
              {
                goto LABEL_24;
              }

              v30 = *(v26 + 8);
              if (!v30)
              {
                goto LABEL_24;
              }

              v41 = v24;
              if (!strcmp(v30, "application/x-vocalizer-resources") || !strcmp(v30, "application/x-vocalizer-resources-package"))
              {
                v9 = 2166366226;
                goto LABEL_24;
              }

              v31 = cupreader_readData(v11, v29, (v42 + v21 + 16), (v42 + v21 + 24));
              v32 = v31;
              if ((v31 & 0x80000000) != 0)
              {
                v9 = v31;
                goto LABEL_24;
              }

              v22 = v44 + 1;
              v21 += 32;
              v23 = v25 + 1;
              if (v44 + 1 >= *(v11 + 6))
              {
                v33 = v41 + 2;
                goto LABEL_30;
              }
            }

LABEL_23:
            v9 = Data;
            goto LABEL_24;
          }

          v32 = 0;
          v33 = 4;
LABEL_30:
          v35 = *(v11 + 7);
          if (!v35)
          {
LABEL_37:
            *a4 = v11;
            return v32;
          }

          v36 = heap_Calloc(*(**v11 + 8), v35, 8);
          v11[2] = v36;
          if (v36)
          {
            if (*(v11 + 7))
            {
              v37 = 0;
              v43 = *(v11 + 6) + v33;
              while (1)
              {
                v38 = (*(*v11 + 8) + 40 * (v43 + v37));
                if (!*v38)
                {
                  break;
                }

                v45 = v11[2];
                v39 = strlen(*v38);
                v40 = heap_Calloc(*(**v11 + 8), v39 + 1, 1);
                *(v45 + 8 * v37) = v40;
                if (!v40)
                {
                  goto LABEL_24;
                }

                memcpy(v40, *v38, v39);
                if (++v37 >= *(v11 + 7))
                {
                  goto LABEL_37;
                }
              }

              v9 = 2166366224;
              goto LABEL_24;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v9 = 2166366223;
        }

LABEL_24:
        if (*v11)
        {
          *v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
      v9 = 2166366214;
    }
  }

  cupreader_close(a1, a2, v11);
  return v9;
}

uint64_t cupreader_close(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  v5 = inited;
  if (a3 && (inited & 0x80000000) == 0)
  {
    v6 = *(a3 + 8);
    if (v6)
    {
      if (*(a3 + 24))
      {
        v7 = 0;
        v8 = 0;
        do
        {
          if (*(v6 + v7))
          {
            heap_Free(*(v14 + 8), *(v6 + v7));
            v6 = *(a3 + 8);
            *(v6 + v7) = 0;
          }

          if (*(v6 + v7 + 8))
          {
            heap_Free(*(v14 + 8), *(v6 + v7 + 8));
            v6 = *(a3 + 8);
            *(v6 + v7 + 8) = 0;
          }

          ++v8;
          v7 += 32;
        }

        while (v8 < *(a3 + 24));
      }

      heap_Free(*(v14 + 8), v6);
      *(a3 + 8) = 0;
    }

    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = *(a3 + 28);
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          if (*(v9 + 8 * i))
          {
            heap_Free(*(v14 + 8), *(v9 + 8 * i));
            v9 = *(a3 + 16);
            *(v9 + 8 * i) = 0;
            v10 = *(a3 + 28);
          }
        }
      }

      heap_Free(*(v14 + 8), v9);
      *(a3 + 16) = 0;
    }

    v12 = *(a3 + 40);
    if (v12)
    {
      heap_Free(*(v14 + 8), v12);
      *(a3 + 40) = 0;
    }

    heap_Free(*(v14 + 8), a3);
  }

  return v5;
}

uint64_t cupreader_readData(uint64_t *a1, char *__s1, uint64_t *a3, unsigned int *a4)
{
  result = 2166366214;
  if (a3 && a1 && __s1 && a4)
  {
    v9 = *a1;
    v10 = *(*a1 + 16);
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    v16 = 0;
    v12 = *(v9 + 8);
    for (i = (v12 + 16); !v12 || strcmp(__s1, *(i - 2)); i += 10)
    {
      if (v10 == ++v11)
      {
        return 0;
      }
    }

    v14 = *(i - 1);
    if (v14)
    {
      result = 0;
LABEL_15:
      *a3 = v14;
      v15 = *i;
LABEL_20:
      *a4 = v15;
      return result;
    }

    result = clcarchive_GetData(v9, v11, 0, *i, &v16);
    if ((result & 0x80000000) == 0)
    {
      v14 = v16;
      *(i - 1) = v16;
      goto LABEL_15;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    v15 = 0;
    goto LABEL_20;
  }

  return result;
}

uint64_t cupreader_PrependCupName(char *a1, const char *a2, unint64_t a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v7 + v6;
  v9 = v7 + v6 + 1;
  if (v9 > a3)
  {
    return 2166366226;
  }

  if (v8 >= v7 + 1)
  {
    v11 = v6 - 1;
    do
    {
      a1[v8--] = a1[v11--];
    }

    while (v8 >= v7 + 1);
  }

  a1[v7] = 58;
  strncpy(a1, a2, v7);
  result = 0;
  a1[v9] = 0;
  return result;
}

uint64_t clcarchive_ObjOpen(_WORD *a1, int a2, const char *a3, uint64_t *a4)
{
  v15 = 0;
  v4 = 2349867018;
  if (!a4)
  {
    return 2349867015;
  }

  inited = InitRsrcFunction(a1, a2, &v15);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a4 = 0;
  v8 = heap_Calloc(*(v15 + 8), 1, 144);
  if (v8)
  {
    v9 = v8;
    v10 = strlen(a3);
    v11 = heap_Alloc(*(v15 + 8), (v10 + 1));
    *(v9 + 128) = v11;
    if (v11)
    {
      strcpy(v11, a3);
      *(v9 + 64) = heap_Alloc;
      *(v9 + 72) = heap_Calloc;
      *(v9 + 80) = heap_Realloc;
      *(v9 + 88) = heap_Free;
      v12 = OOCAllocator_Con(v9 + 24, (v9 + 64), *(v15 + 8));
      v13 = LH_ERROR_to_VERROR(v12);
      if ((v13 & 0x80000000) != 0)
      {
        heap_Free(*(v15 + 8), *(v9 + 128));
        heap_Free(*(v15 + 8), v9);
        return 2349867012;
      }

      else
      {
        *v9 = v15;
        *(v9 + 120) = 0;
        v4 = v13;
        *a4 = v9;
      }
    }

    else
    {
      heap_Free(*(v15 + 8), v9);
    }
  }

  return v4;
}

uint64_t clcarchive_GetData(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t *a5)
{
  v10 = heap_Calloc(*(*a1 + 8), a4 + 3, 1);
  if (v10)
  {
    v11 = (***(a1 + 104))(*(a1 + 104) - *(**(a1 + 104) + 56), (*(*(a1 + 8) + 40 * a2 + 20) + a3));
    if ((LH_ERROR_to_VERROR(v11) & 0x80000000) != 0 || (v12 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v10, a4), result = LH_ERROR_to_VERROR(v12), (result & 0x80000000) != 0))
    {
      heap_Free(*(*a1 + 8), v10);
      v10 = 0;
      result = 2349867012;
    }
  }

  else
  {
    result = 2349867018;
  }

  *a5 = v10;
  return result;
}

uint64_t clcarchive_Parse(uint64_t a1, _OWORD *a2, uint64_t a3, _DWORD *a4, int a5)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v41 = 0;
  v5 = 2349867012;
  v43 = 0;
  v44[0] = 0;
  if (a1)
  {
    v7 = 2349867015;
    if (a2 && a3)
    {
      if (a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = a3;
      }

      v40 = 0;
      *(a1 + 112) = v9;
      v10 = PNEW_BinBlockStreamReader_Con(a1 + 24, a1 + 24, a2, a3, a4, (a1 + 96));
      if ((LH_ERROR_to_VERROR(v10) & 0x80000000) != 0)
      {
        goto LABEL_66;
      }

      v11 = (*(*(*(a1 + 96) + 32) + 120))(*(a1 + 96) + 32 - *(*(*(a1 + 96) + 32) + 224), 535211295, 0, a1 + 104, &v40);
      v12 = LH_ERROR_to_VERROR(v11);
      v13 = v40;
      *(a1 + 136) = v40;
      if (v12 < 0 || !BinBlockStreamReader_IsVersionAccepted(v13, 1703936) && !BinBlockStreamReader_IsVersionAccepted(v40, 1638400) && !BinBlockStreamReader_IsVersionAccepted(v40, 1572864) && !BinBlockStreamReader_IsVersionAccepted(v40, 1507328) && !BinBlockStreamReader_IsVersionAccepted(v40, 1441792) && !BinBlockStreamReader_IsVersionAccepted(v40, 1376256) && !BinBlockStreamReader_IsVersionAccepted(v40, 1310720) && !BinBlockStreamReader_IsVersionAccepted(v40, 1245184) && !BinBlockStreamReader_IsVersionAccepted(v40, 1179648) && !BinBlockStreamReader_IsVersionAccepted(v40, 1114112) && !BinBlockStreamReader_IsVersionAccepted(v40, 0x100000) && !BinBlockStreamReader_IsVersionAccepted(v40, 983040) && !BinBlockStreamReader_IsVersionAccepted(v40, 917504) && !BinBlockStreamReader_IsVersionAccepted(v40, 851968) && !BinBlockStreamReader_IsVersionAccepted(v40, 786432) && !BinBlockStreamReader_IsVersionAccepted(v40, 720896) && !BinBlockStreamReader_IsVersionAccepted(v40, 655360) && !BinBlockStreamReader_IsVersionAccepted(v40, 589824) && !BinBlockStreamReader_IsVersionAccepted(v40, 0x80000) && !BinBlockStreamReader_IsVersionAccepted(v40, 459008) && (!BinBlockStreamReader_IsVersionAccepted(v40, 393216) || strstr(*(a1 + 128), "/cfg4")))
      {
        goto LABEL_66;
      }

      v14 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &v43, 7);
      if ((LH_ERROR_to_VERROR(v14) & 0x80000000) != 0 || v43 != 1380013646 || BYTE4(v43) > 7u || BYTE4(v43) == 7 && (BYTE5(v43) > 4u || BYTE5(v43) == 4 && BYTE6(v43)))
      {
        goto LABEL_66;
      }

      v15 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), a1 + 16, 4);
      v16 = LH_ERROR_to_VERROR(v15);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_66;
      }

      v7 = v16;
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = heap_Calloc(*(*a1 + 8), v17, 40);
        *(a1 + 8) = v18;
        if (!v18)
        {
          goto LABEL_65;
        }

        if (*(a1 + 16))
        {
          v19 = 0;
          v20 = 11;
LABEL_41:
          v21 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &v42, 2);
          if ((LH_ERROR_to_VERROR(v21) & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          v22 = heap_Calloc(*(*a1 + 8), v42 + 1, 1);
          *(*(a1 + 8) + 40 * v19) = v22;
          if (v22)
          {
            v23 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v22, v42);
            if ((LH_ERROR_to_VERROR(v23) & 0x80000000) != 0)
            {
              goto LABEL_66;
            }

            v24 = v42;
            v25 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), *(a1 + 8) + 40 * v19 + 16, 4);
            if ((LH_ERROR_to_VERROR(v25) & 0x80000000) != 0)
            {
              goto LABEL_66;
            }

            v26 = v20 + v24 + 6;
            v27 = *(a1 + 8);
            if (!a5 && v19)
            {
              v28 = v27 + 40 * v19;
              *(v28 + 20) = v26;
              v29 = (***(a1 + 104))(*(a1 + 104) - *(**(a1 + 104) + 56), (*(v28 + 16) + v26));
              goto LABEL_50;
            }

            v30 = heap_Calloc(*(*a1 + 8), 1, *(v27 + 40 * v19 + 16));
            v31 = *(a1 + 8);
            *(v31 + 40 * v19 + 8) = v30;
            if (v30)
            {
              v32 = v31 + 40 * v19;
              *(v32 + 20) = v26;
              v29 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v30, *(v32 + 16));
LABEL_50:
              if ((LH_ERROR_to_VERROR(v29) & 0x80000000) == 0)
              {
                v20 += v24 + *(*(a1 + 8) + 40 * v19 + 16) + 15;
                while (1)
                {
                  v33 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), &v41, 1);
                  if ((LH_ERROR_to_VERROR(v33) & 0x80000000) != 0)
                  {
                    break;
                  }

                  v34 = (*(**(a1 + 104) + 8))(*(a1 + 104) - *(**(a1 + 104) + 56), v44, 8);
                  v35 = LH_ERROR_to_VERROR(v34);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (!v41 && !v44[0])
                  {
                    v7 = v35;
                    if (++v19 < *(a1 + 16))
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_67;
                  }

                  v36 = *(*(a1 + 8) + 40 * v19 + 16);
                  v20 += 9;
                  if (LODWORD(v44[0]) > v36 || LODWORD(v44[0]) + HIDWORD(v44[0]) * v41 > v36)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_66;
            }
          }

LABEL_65:
          v5 = 2349867018;
LABEL_66:
          clcarchive_ObjClose(a1);
          v7 = v5;
        }
      }
    }
  }

  else
  {
    v7 = 2349867016;
  }

LABEL_67:
  v38 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t clcarchive_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2349867016;
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    (*(*v2 + 40))(v2 - *(*v2 + 56));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(a1 + 16))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(a1 + 8);
        v9 = *(v8 + v6);
        if (v9)
        {
          heap_Free(*(*a1 + 8), v9);
          v8 = *(a1 + 8);
        }

        v10 = *(v8 + v6 + 8);
        if (v10)
        {
          heap_Free(*(*a1 + 8), v10);
          v8 = *(a1 + 8);
        }

        v11 = *(v8 + v6 + 24);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
        }

        ++v7;
        v6 += 40;
      }

      while (v7 < *(a1 + 16));
      v5 = *(a1 + 8);
    }

    heap_Free(*(*a1 + 8), v5);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

double clcarchive_GetMemoryStreamInterface@<D0>(_OWORD *a1@<X8>)
{
  result = *&clcMemoryStreamInterface;
  v2 = *&off_1F42D0A38;
  *a1 = clcMemoryStreamInterface;
  a1[1] = v2;
  return result;
}

size_t ClcDataRead(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 12);
  if (a3 * a2 >= (*(a4 + 8) - v6))
  {
    v7 = (*(a4 + 8) - v6);
  }

  else
  {
    v7 = a3 * a2;
  }

  memcpy(a1, (*a4 + v6), v7);
  *(a4 + 12) += v7;
  return v7 / a2;
}

uint64_t ClcDataSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v5 = *(a1 + 12) + a2;
    if (v5 >= 0 && v5 < *(a1 + 8))
    {
      result = 0;
      *(a1 + 12) = v5;
      return result;
    }
  }

  else if (!a3 && *(a1 + 8) > a2)
  {
    result = 0;
    *(a1 + 12) = a2;
    return result;
  }

  return 1;
}

size_t auxil_strlcat(const char *a1, const char *a2, uint64_t a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v7;
  if (a3 && v6 < a3 - 1)
  {
    if (v7 >= a3 - v6)
    {
      v9 = a3 - v6 - 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = &a1[v6];
    memcpy(v10, a2, v9);
    v10[v9] = 0;
  }

  return v8 + v6;
}

size_t auxil_strlcpy(void *a1, char *__s, size_t a3)
{
  v6 = strlen(__s);
  v7 = v6;
  if (a3)
  {
    if (v6 >= a3)
    {
      v8 = a3 - 1;
    }

    else
    {
      v8 = v6;
    }

    memcpy(a1, __s, v8);
    *(a1 + v8) = 0;
  }

  return v7;
}

uint64_t brokeraux_ComposeBrokerString(uint64_t a1, const char *a2, int a3, int a4, char *a5, const char *a6, char *a7, char *a8, unint64_t a9)
{
  v9 = a8;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  auxil_strlcpy(a8, "", a9);
  if ((paramc_ParamGetStr(*(a1 + 40), "datapackagename", &v26) & 0x80000000) != 0)
  {
    v26 = 0;
  }

  else if (v26 && *v26)
  {
    auxil_strlcat(v9, v26, a9);
    auxil_strlcat(v9, ":", a9);
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "fedatapackaging", &v27) & 0x80000000) != 0)
  {
    v27 = 0;
  }

  v30 = 0;
  v31 = a6;
  __s1 = 0;
  switch(a3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      paramc_ParamGetStr(*(a1 + 40), "fecfg", &__s1);
      if (__s1 && !strcmp(__s1, "mpthreeml"))
      {
        goto LABEL_18;
      }

      v18 = a6;
      if (!a6)
      {
        paramc_ParamGetStr(*(a1 + 40), "voice", &v31);
        v18 = v31;
      }

      if (hlp_IsUniVoice(v18, a5))
      {
LABEL_18:
        v19 = "feextcfgdataprefix";
        goto LABEL_20;
      }

LABEL_19:
      v19 = "fedataprefix";
LABEL_20:
      paramc_ParamGetStr(*(a1 + 40), v19, &v30);
      v17 = v30;
      if (v30)
      {
        goto LABEL_21;
      }

      break;
    case 2:
      auxil_strlcat(v9, a6, a9);
      v17 = "/";
LABEL_21:
      auxil_strlcat(v9, v17, a9);
      break;
  }

LABEL_22:
  v20 = v27;
  if (!v27 || !*v27)
  {
LABEL_31:
    v22 = auxil_strlcat(v9, a2, a9);
    if (v22 >= a9)
    {
      return 9;
    }

    for (i = v22; i; --i)
    {
      *v9 = ssft_tolower(*v9);
      ++v9;
    }

    return 0;
  }

  if (strcmp(v27, "clc"))
  {
    goto LABEL_25;
  }

  auxil_strlcat(v9, "clc/", a9);
  auxil_strlcat(v9, a5, a9);
  if (a6)
  {
    IsUniVoice = hlp_IsUniVoice(a6, a5);
    if (a3 != 2 && !IsUniVoice)
    {
      auxil_strlcat(v9, "/", a9);
      auxil_strlcat(v9, a6, a9);
    }
  }

  auxil_strlcat(v9, "/", a9);
  result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v28);
  if ((result & 0x80000000) == 0)
  {
    auxil_strlcat(v9, v28, a9);
    if (!a7)
    {
LABEL_26:
      if (v26 && *v26)
      {
        v21 = "/";
      }

      else
      {
        v21 = ":";
      }

      auxil_strlcat(v9, v21, a9);
      goto LABEL_31;
    }

    auxil_strlcat(v9, "/", a9);
    v20 = "bet2";
    if (!strstr(a7, "bet2"))
    {
      v20 = "bet3";
      if (!strstr(a7, "bet3"))
      {
        if (strstr(a7, "bet4"))
        {
          v20 = "bet4";
        }

        else
        {
          v20 = "bet1";
        }
      }
    }

LABEL_25:
    auxil_strlcat(v9, v20, a9);
    goto LABEL_26;
  }

  return result;
}

BOOL hlp_IsUniVoice(uint64_t a1, char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = __tolower(v5);
        if (v8 != __tolower(*(a1 + v6)))
        {
          break;
        }

        v6 = ++v7;
        v5 = a2[v7];
        if (!v5)
        {
          return strcmp((a1 + v6), "uni") == 0;
        }
      }

      if (a2[v6])
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
    }

    return strcmp((a1 + v6), "uni") == 0;
  }

  return result;
}

uint64_t xmlaux_calculateExtraEscapeBytes(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = 0;
    result = 0;
    do
    {
      if (!*(a1 + v4))
      {
        break;
      }

      v5 = &qword_1C37AB610;
      v6 = 7;
      v7 = 6;
      do
      {
        v8 = v7 - 1;
        if (*(a1 + v4) != *(v5 - 16))
        {
          v8 = 0;
        }

        result += v8;
        v9 = *v5;
        v5 += 3;
        v7 = v9;
        --v6;
      }

      while (v6);
      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

char *xmlaux_escape(char *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  if (a2 && a3)
  {
    v4 = 0;
    for (i = 0; i != a3; ++i)
    {
      if (!*(a2 + i))
      {
        break;
      }

      v3[v4] = *(a2 + i);
      v8 = "&quot;";
      v9 = 7;
      v10 = 6;
      do
      {
        if (*(a2 + i) == *(v8 + 16))
        {
          result = strcpy(&v3[v4], v8);
          v4 = v4 + v10 - 1;
        }

        v10 = *(v8 + 4);
        v8 += 24;
        --v9;
      }

      while (v9);
      ++v4;
    }
  }

  v3[v4] = 0;
  return result;
}

uint64_t synstrmaux_InitStreamOpener(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 808) = a2;
  *(result + 816) = a3;
  return result;
}

_WORD *synstrmaux_RegisterStream(_WORD *result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *result;
  if (v6 <= 0x13)
  {
    v7 = &result[20 * *result];
    *(v7 + 1) = a2;
    *(v7 + 4) = a3;
    *(v7 + 3) = a4;
    *(v7 + 8) = a5;
    *(v7 + 5) = a6;
    *a6 = 0;
    *(a6 + 8) = 0;
  }

  *result = v6 + 1;
  return result;
}

_WORD *synstrmaux_RegisterInStream(_WORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *result;
  if (v4 <= 0x13)
  {
    v5 = &result[20 * *result];
    *(v5 + 1) = a2;
    *(v5 + 4) = 0;
    *(v5 + 3) = 0;
    *(v5 + 8) = a3;
    *(v5 + 5) = a4;
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  *result = v4 + 1;
  return result;
}

_WORD *synstrmaux_RegisterOutStream(_WORD *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (v3 <= 0x13)
  {
    v4 = &result[20 * *result];
    *(v4 + 1) = a2;
    *(v4 + 4) = 1;
    *(v4 + 3) = 0;
    *(v4 + 8) = 0;
    *(v4 + 5) = a3;
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *result = v3 + 1;
  return result;
}

uint64_t synstrmaux_OpenStreams(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 <= 0x14u)
  {
    v4 = 0;
  }

  else
  {
    v4 = 9;
  }

  if (!*a1)
  {
    return v4;
  }

  v9 = 0;
  v10 = (a2 + 184);
  v11 = (a2 + 152);
  for (i = a1 + 12; ; i += 20)
  {
    if (*(i - 2))
    {
      v13 = *(i - 2);
      v14 = strcmp("application/x-realspeak-markers-pp;version=4.0", v13);
      v15 = v11;
      if (!v14 || (v16 = strcmp("application/x-tnplus-words;version=1.0", v13), v15 = v10, !v16))
      {
        *i = (*v15)();
      }
    }

    v4 = (*(a2 + 64))(a3, a4, *(*(a1 + 102) + 64), *(i - 2), *i, *(i - 2), *(i + 2));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v21 = *(a1 + 101);
    v22 = *(a1 + 102);
    v23 = *(i - 2);
    v24 = *(i - 2) == 0;
    if (!*(i + 2))
    {
      break;
    }

    v25 = "output";
    if (!*(i - 2))
    {
      v25 = "input";
    }

    v28 = *(i - 2);
    log_OutText(v21, v22, 3, 0, "Cannot open %s stream of type %s", v18, v19, v20, v25);
    v4 = 0;
LABEL_15:
    if (++v9 >= *a1)
    {
      return v4;
    }
  }

  if (*(i - 2))
  {
    v26 = 65001;
  }

  else
  {
    v26 = 65000;
  }

  v29 = *(i - 2);
  log_OutPublic(v21, v22, v26, "%s%s", v17, v18, v19, v20, "contentType");
  return v4;
}

uint64_t synstrmaux_CloseStreams(_WORD *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (a1 + 20);
  do
  {
    if (**v7)
    {
      v6 = CloseStream(a1, a2, v7 - 4, v6);
      v2 = *a1;
    }

    ++v5;
    v7 += 5;
  }

  while (v5 < v2);
  return v6;
}

uint64_t CloseStream(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v10 = (*(a2 + 72))(*a3[4], *(a3[4] + 8));
  v11 = a3[4];
  *v11 = 0;
  *(v11 + 8) = 0;
  if ((v10 & 0x80000000) != 0)
  {
    v12 = "output";
    if (!*(a3 + 2))
    {
      v12 = "input";
    }

    v14 = *a3;
    log_OutText(*(a1 + 808), *(a1 + 816), 3, 0, "Cannot close %s stream of type %s", v7, v8, v9, v12);
  }

  if (a4 >= 0)
  {
    return v10;
  }

  else
  {
    return a4;
  }
}

uint64_t synstrmaux_CloseOutStreamsOnly(_WORD *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (a1 + 20);
  do
  {
    if (**v7 && *(v7 - 6))
    {
      v6 = CloseStream(a1, a2, v7 - 4, v6);
      v2 = *a1;
    }

    ++v5;
    v7 += 5;
  }

  while (v5 < v2);
  return v6;
}

size_t synstrmaux_BuildAudioContentType(const char *a1, unsigned int a2, char *a3, size_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  LH_utoa(a2, __s, 0xAu);
  v7 = strlen(a1);
  v8 = strlen(__s);
  strncpy(a3, a1, a4);
  if (a4 > v7)
  {
    strncpy(&a3[v7], __s, a4 - v7);
LABEL_4:
    a3[a4 - 1] = 0;
    goto LABEL_5;
  }

  if (a4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return v8 + v7;
}

uint64_t esc_seq_deinit(_WORD *a1, int a2, void *a3, int a4)
{
  esc_seq_remove_params(a1, a2);
  nuance_pcre_DeInit(a3, a4);

  return nuance_pcre_ObjClose(a3, a4);
}

uint64_t esc_seq_remove_params(_WORD *a1, int a2)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    if ((paramc_ParamGet(*(v5 + 40), "fullescseqdata", &v3, &v4) & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      paramc_ParamRemove(*(v5 + 40), "fullescseqdata");
    }

    if ((paramc_ParamGet(*(v5 + 40), "fullesctnseqdata", &v3, &v4) & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      paramc_ParamRemove(*(v5 + 40), "fullesctnseqdata");
    }

    result = paramc_ParamGet(*(v5 + 40), "fullescvoiceseqdata", &v3, &v4);
    if ((result & 0x80000000) == 0)
    {
      if (*v3)
      {
        heap_Free(*(v5 + 8), *v3);
      }

      return paramc_ParamRemove(*(v5 + 40), "fullescvoiceseqdata");
    }
  }

  return result;
}

uint64_t esc_seq_init(_WORD *a1, int a2, uint64_t *a3)
{
  v37 = 0;
  v36 = 0;
  inited = InitRsrcFunction(a1, a2, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  UInt = paramc_ParamGetUInt(*(v37 + 40), "ppmaxpcreframeblocks", &v36);
  v8 = v36;
  v9 = paramc_ParamGetUInt(*(v37 + 40), "ppnumframesinblock", &v36);
  v10 = v36;
  inited = nuance_pcre_ObjOpen(a1, a2, a3);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (v9 < 0)
  {
    v11 = 50;
  }

  else
  {
    v11 = v10;
  }

  if (UInt < 0)
  {
    v12 = 30;
  }

  else
  {
    v12 = v8;
  }

  v13 = nuance_pcre_Init(*a3, a3[1], v12, v11);
  if ((v13 & 0x80000000) != 0)
  {
    v18 = v13;
    nuance_pcre_ObjClose(*a3, a3[1]);
    *a3 = safeh_GetNullHandle();
    a3[1] = v20;
    return v18;
  }

  esc_seq_remove_params(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  __s = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  inited = InitRsrcFunction(a1, a2, &v44);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  paramc_ParamGetStr(*(v44 + 40), "__NUAN_alternative_esc_seq__", &__s);
  v16 = off_1E81A1810;
  v17 = 6;
  while (strcmp(*(v16 - 1), "esc"))
  {
    v16 += 2;
    if (!--v17)
    {
      return 0;
    }
  }

  if (__s && *__s)
  {
    v21 = strlen(__s);
  }

  else
  {
    v21 = 0;
  }

  v18 = 3489669120;
  v22 = *v16;
  v23 = strlen(*v16);
  v24 = heap_Calloc(*(v44 + 8), 1, v21 + v23 + 2);
  if (!v24)
  {
    return 3489669130;
  }

  v25 = v24;
  v26 = strlen(v22);
  v27 = heap_Calloc(*(v44 + 8), 1, v21 + v26 + 6);
  if (v27)
  {
    v28 = v27;
    strcpy(v25, v22);
    if (v21)
    {
      v25[strlen(v22) - 1] = 0;
      *&v25[strlen(v25)] = 124;
      v29 = strcat(v25, __s);
      *&v25[strlen(v29)] = 41;
    }

    v30 = strlen(v25);
    v31 = heap_Calloc(*(v44 + 8), 1, v30 + 107);
    v32 = v31;
    if (v31)
    {
      v33 = strcpy(v31, v25);
      strcpy(&v32[strlen(v33)], "(?:[\\t\\r\\n ])*[\\\\]([vV][oO][iI][cC][eE])(?:[\\t\\r\\n ])*[=](?:[\\t\\r\\n ])*(([\\w-():,{}])*)(?:[\\t\\r\\n ])*[\\\\]");
      v34 = strcpy(v28, v25);
      strcpy(&v28[strlen(v34)], "\\\\tn");
      v40 = nuance_pcre_compile(v14, v15, v25, 2048, &v42, &v41, 0);
      if (v40)
      {
        heap_Free(*(v44 + 8), v25);
        v35 = nuance_pcre_compile(v14, v15, v28, 2048, &v42, &v41, 0);
        v39 = v35;
        heap_Free(*(v44 + 8), v28);
        if (v35)
        {
          v38 = nuance_pcre_compile(v14, v15, v32, 2048, &v42, &v41, 0);
          if (v38)
          {
            heap_Free(*(v44 + 8), v32);
            paramc_ParamSetPermanent(*(v44 + 40), "fullescseqdata", &v40, 8uLL);
            paramc_ParamSetPermanent(*(v44 + 40), "fullesctnseqdata", &v39, 8uLL);
            paramc_ParamSetPermanent(*(v44 + 40), "fullescvoiceseqdata", &v38, 8uLL);
            return 0;
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v18 = 3489669130;
    }

    heap_Free(*(v44 + 8), v25);
    heap_Free(*(v44 + 8), v28);
    if (v32)
    {
LABEL_35:
      heap_Free(*(v44 + 8), v32);
    }
  }

  else
  {
    heap_Free(*(v44 + 8), v25);
    return 3489669130;
  }

  return v18;
}

uint64_t esc_seq_exePattern(_WORD *a1, int a2, void *a3, int a4, uint64_t a5, char *a6, int a7, int a8, _WORD *a9, unsigned int a10, _DWORD *a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v35 = 0;
  v34 = 0;
  *a11 = 0;
  if ((InitRsrcFunction(a1, a2, &v36) & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v17 = paramc_ParamGet(*(v36 + 40), a5, &v34, &v35);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v19 = *v34;
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v37[0] = v20;
  v37[1] = v20;
  v37[2] = v20;
  v37[3] = v20;
  v37[4] = v20;
  v37[5] = v20;
  v37[6] = v20;
  v37[7] = v20;
  v37[8] = v20;
  v37[9] = v20;
  v37[10] = v20;
  v37[11] = v20;
  v37[12] = v20;
  v37[13] = v20;
  v37[14] = v20;
  v37[15] = v20;
  v37[16] = v20;
  v37[17] = v20;
  v37[18] = v20;
  v37[19] = v20;
  v37[20] = v20;
  v37[21] = v20;
  v37[22] = v20;
  v37[23] = v20;
  v37[24] = v20;
  v21 = nuance_pcre_exec(a3, a4, v19, 0, a6, a7, a8, a10, v37, 100);
  if ((v21 & 0x80000000) == 0)
  {
    if (v21)
    {
      *a11 = 1;
      v22 = WORD2(v37[0]);
      *a9 = v37[0];
      a9[1] = v22;
    }

    goto LABEL_11;
  }

  v23 = nuance_pcre_ErrorToLhError(v21);
  v18 = v23;
  if (v23 >> 20 != 2213)
  {
    goto LABEL_11;
  }

  if ((v23 & 0x1FFF) == 0x14)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if ((v23 & 0x1FFF) == 0xA)
  {
    v28 = *(v36 + 32);
    v29 = 11002;
    v30 = 0;
  }

  else
  {
    v28 = *(v36 + 32);
    v33 = "lhError";
    v30 = "%s%x";
    v29 = 11027;
  }

  log_OutPublic(v28, &modAux, v29, v30, v24, v25, v26, v27, v33);
LABEL_11:
  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t esc_seq_tn_strncmp(_WORD *a1, int a2, void *a3, int a4, char *a5, int a6, _WORD *a7)
{
  v11 = 0;
  v10 = 0;
  if ((esc_seq_exePattern(a1, a2, a3, a4, "fullesctnseqdata", a5, a6, 0, &v10, 0x2000u, &v11) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 != 1 || v10 != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a7 = HIWORD(v10);
  return result;
}

char *esc_seq_tn_seq(_WORD *a1, int a2, void *a3, int a4, char *a5, int a6)
{
  v11 = 0;
  v10 = 0;
  v7 = esc_seq_exePattern(a1, a2, a3, a4, "fullesctnseqdata", a5, a6, 0, &v10, 0x2000u, &v11);
  if (v11 != 1 || v7 <= -1)
  {
    return 0;
  }

  else
  {
    return &a5[v10];
  }
}

char *esc_seq_strstr(_WORD *a1, int a2, void *a3, int a4, char *__s, _WORD *a6)
{
  v16 = 0;
  v12 = strlen(__s);
  v13 = esc_seq_exePattern(a1, a2, a3, a4, "fullescseqdata", __s, v12, 0, &v16, 0x2000u, &v16 + 1);
  result = 0;
  if ((v13 & 0x80000000) == 0 && HIDWORD(v16) == 1)
  {
    v15 = v16;
    *a6 = WORD1(v16) - v16;
    return &__s[v15];
  }

  return result;
}

uint64_t hdrpars_ReadHeader(_WORD *a1, int a2, _BYTE *a3, const char *a4, void *a5, uint64_t *a6)
{
  v51 = 0;
  v10 = 2183159812;
  if (a3 && *a3)
  {
    v11 = 2183159815;
    if (!a5 || !a6)
    {
      return v11;
    }
  }

  else
  {
    v11 = 2183159815;
    if (!a4 || !a6 || !a5 || !*a4)
    {
      return v11;
    }
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  inited = InitRsrcFunction(a1, a2, &v51);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a5 = 0;
  *a6 = 0;
  v49 = 0u;
  *__s1 = 0u;
  if (!a3 || !*a3)
  {
    v20 = *(v51 + 8);
    *&v49 = v20;
    v21 = strlen(a4);
    if (!v21)
    {
      v11 = 2183159812;
      goto LABEL_94;
    }

    v22 = heap_Alloc(v20, (v21 + 1));
    *(&v49 + 1) = v22;
    if (!v22)
    {
      v11 = 2183159818;
      goto LABEL_94;
    }

    v11 = 0;
    __s1[0] = strcpy(v22, a4);
    goto LABEL_21;
  }

  v13 = v51;
  *&v53 = 0;
  *&v49 = *(v51 + 8);
  v14 = filespi_fopen(*(v51 + 64), v49, a3, "rb", &v53);
  if ((v14 & 0x80000000) != 0)
  {
    v10 = 2183159811;
LABEL_93:
    v11 = v10;
    goto LABEL_94;
  }

  v11 = v14;
  FileSize = filespi_GetFileSize(v53);
  if (!FileSize)
  {
LABEL_92:
    filespi_fclose(v53);
    goto LABEL_93;
  }

  v16 = FileSize;
  v17 = heap_Alloc(*(v13 + 8), (FileSize + 1));
  *(&v49 + 1) = v17;
  if (!v17)
  {
    v10 = 2183159818;
    goto LABEL_92;
  }

  v18 = v17;
  v19 = filespi_fread(v17, 1, v16, v53);
  if (!v19)
  {
    filespi_fclose(v53);
    heap_Free(*(v13 + 8), v18);
    goto LABEL_93;
  }

  v18[v19] = 0;
  filespi_fclose(v53);
  __s1[0] = v18;
LABEL_21:
  v23 = 0;
  while (1)
  {
    v24 = __s1[0];
    if (v23)
    {
      if (!*__s1[0])
      {
        break;
      }
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    if (strncmp(__s1[0], "<?xml", 5uLL))
    {
      goto LABEL_51;
    }

    v25 = v24[5];
    v26 = v25 > 0x20;
    v27 = (1 << v25) & 0x100002600;
    if (v26 || v27 == 0)
    {
      goto LABEL_51;
    }

    for (i = v24 + 21; ; ++i)
    {
      v30 = *(i - 15);
      v26 = v30 > 0x20;
      v31 = (1 << v30) & 0x100002600;
      if (v26 || v31 == 0)
      {
        break;
      }
    }

    __s1[0] = i - 15;
    if (!strncmp(i - 15, "version=1.0?>", 0xFuLL) || !strncmp(i - 15, "version='1.0'?>", 0xFuLL))
    {
      __s1[0] = i;
      goto LABEL_51;
    }

    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    v33 = hdrpars_ParseAttributes(&v49, &v53);
    v34 = __s1[0];
    if (v33)
    {
      goto LABEL_38;
    }

    v11 = 2183159812;
    if (*__s1[0] != 63)
    {
      goto LABEL_47;
    }

    v35 = *(&v53 + 1);
    if (__s1[0][1] == 62 && *(&v53 + 1) != 0)
    {
      if ((ssftmap_FindReadOnly(*(&v53 + 1), "version", &v52) & 0x80000000) == 0 && !strcmp(v52, "1.0"))
      {
LABEL_38:
        __s1[0] = v34 + 2;
        v11 = v33;
      }

LABEL_47:
      v35 = *(&v53 + 1);
    }

    if (v35)
    {
      ssftmap_ObjClose(v35);
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_59;
    }

LABEL_51:
    LODWORD(__s1[1]) = 0;
    v11 = hdrpars_ParseElement(&v49, &v46);
    if (!v11)
    {
      v11 = 2183159812;
      if (v48)
      {
        if (ssftmap_GetSize(v48) && !v47 && !v46)
        {
          for (j = __s1[0]; ; ++j)
          {
            v38 = *j;
            v26 = v38 > 0x20;
            v39 = (1 << v38) & 0x100002600;
            if (v26 || v39 == 0)
            {
              break;
            }
          }

          v11 = 0;
          __s1[0] = j;
        }
      }
    }

    if (v47)
    {
      ssftmap_ObjClose(v47);
      v47 = 0;
    }

    if (a3 && !v11)
    {
      if (!*a3)
      {
        goto LABEL_63;
      }

      v54 = 0;
      v53 = a3;
      v11 = ssftmap_Insert(v48, "HDRFILE", &v53);
    }

    if (v11)
    {
LABEL_59:
      if (v48)
      {
        ssftmap_ObjClose(v48);
        v48 = 0;
      }

      if ((v11 & 0x80000000) != 0)
      {
        break;
      }
    }

    else
    {
LABEL_63:
      if (v23 == 1)
      {
        v41 = *(v51 + 8);
        v53 = *"\b";
        v54 = 0;
        v11 = 2183159818;
        if (!vector_ObjOpen(v41, &v53, 8, a6) || !vector_Add(*a6, a5))
        {
          goto LABEL_59;
        }

        *a5 = 0;
      }

      else if (!v23)
      {
        *a5 = v48;
        goto LABEL_80;
      }

      if (!vector_Add(*a6, &v48))
      {
        v11 = 2183159818;
        goto LABEL_59;
      }

LABEL_80:
      v11 = 0;
      ++v23;
    }
  }

  if (*(&v49 + 1))
  {
    heap_Free(*(v51 + 8), *(&v49 + 1));
  }

  if ((v11 & 0x80000000) != 0)
  {
LABEL_94:
    v42 = *a6;
    if (*a6)
    {
      *&v53 = 0;
      if (vector_GetElemAt(v42, 0, &v53))
      {
        v43 = 1;
        do
        {
          ssftmap_ObjClose(*v53);
        }

        while (vector_GetElemAt(*a6, v43++, &v53));
      }

      vector_ObjClose(*a6);
      *a6 = 0;
    }

    if (*a5)
    {
      ssftmap_ObjClose(*a5);
      *a5 = 0;
    }
  }

  return v11;
}

uint64_t hdrpars_ParseElement(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v53 = 0;
  v54 = 0;
  __s1 = 0;
  for (i = (*(a1 + 16) + 1); ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

  v9 = *i;
  v8 = i - 1;
  if (v9 == 33)
  {
    hdrpars_SkipComments(a1);
    v8 = *(a1 + 16);
    v6 = *v8;
  }

  if (v6 != 60)
  {
    goto LABEL_47;
  }

  v10 = (v8 + 1);
  for (j = v8 + 1; ; ++j)
  {
    *(a1 + 16) = j;
    v12 = *j;
    if ((v12 - 48) < 0xA || (v12 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      continue;
    }

    if (*j <= 0x2Cu)
    {
      v15 = (v12 - 9) < 2 || v12 == 13;
      if (!v15 && v12 != 32)
      {
        goto LABEL_47;
      }

      *j = 0;
      ++*(a1 + 16);
      v16 = hdrpars_ParseAttributes(a1, &__s1);
      if (v16)
      {
        goto LABEL_48;
      }

      v17 = *(a1 + 16);
      v18 = *v17;
      if (v18 != 47)
      {
        if (v18 == 62)
        {
          v19 = 0;
          goto LABEL_32;
        }

        goto LABEL_47;
      }

      if (v17[1] != 62)
      {
        goto LABEL_47;
      }

LABEL_36:
      v20 = v17 + 2;
      v19 = 1;
      goto LABEL_37;
    }

    v14 = (v12 - 45);
    if (v14 > 0x32)
    {
      goto LABEL_47;
    }

    if (((1 << v14) & 0x4000000002003) == 0)
    {
      break;
    }
  }

  if (v14 == 2)
  {
    if (j[1] != 62)
    {
      goto LABEL_47;
    }

    *j = 0;
    v17 = *(a1 + 16);
    goto LABEL_36;
  }

  if (v14 != 17)
  {
    goto LABEL_47;
  }

  v19 = 0;
  *j = 0;
  v17 = *(a1 + 16);
LABEL_32:
  v20 = v17 + 1;
LABEL_37:
  *(a1 + 16) = v20;
  v21 = *(a1 + 24);
  switch(v21)
  {
    case 2:
      if (strcmp(v10, "HEADER"))
      {
        goto LABEL_47;
      }

      v16 = 0;
      v22 = 3;
LABEL_56:
      *(a1 + 24) = v22;
      break;
    case 1:
      if (!strcmp(v10, "VERSION"))
      {
        v16 = 0;
      }

      else
      {
        v16 = 2183159812;
      }

      break;
    case 0:
      if (!strcmp(v10, "SCANSOFT") || !strcmp(v10, "NUANCE"))
      {
        v16 = 0;
        v22 = 1;
        goto LABEL_56;
      }

LABEL_47:
      v16 = 2183159812;
LABEL_48:
      *(a1 + 24) = v4;
      goto LABEL_49;
    default:
      v16 = 0;
      break;
  }

  if (v16)
  {
    v24 = 1;
  }

  else
  {
    v24 = v19;
  }

  if ((v24 & 1) == 0)
  {
    for (k = v20 + 1; ; ++k)
    {
      v26 = *(k - 1);
      v27 = v26 > 0x20;
      v28 = (1 << v26) & 0x100002600;
      if (v27 || v28 == 0)
      {
        break;
      }

      *(a1 + 16) = k;
    }

    v31 = *k;
    v30 = (k - 1);
    if (v31 == 33)
    {
      hdrpars_SkipComments(a1);
      v30 = *(a1 + 16);
    }

    v16 = 0;
    v19 = 0;
    __s1 = v30;
  }

  if ((v19 & 1) == 0 && !v16)
  {
    v32 = 0;
    while (1)
    {
      v33 = *(a1 + 16);
      if (!*v33)
      {
        goto LABEL_80;
      }

      if (*v33 == 60)
      {
        break;
      }

      if (v54)
      {
        goto LABEL_80;
      }

      v16 = 0;
      v34 = v33 + 1;
      *(a1 + 16) = v33 + 1;
      v32 = v33;
LABEL_81:
      for (m = v34 + 1; ; ++m)
      {
        v36 = *(m - 1);
        v27 = v36 > 0x20;
        v37 = (1 << v36) & 0x100002600;
        if (v27 || v37 == 0)
        {
          break;
        }

        *(a1 + 16) = m;
      }

      if (*m == 33)
      {
        hdrpars_SkipComments(a1);
      }

      if (v16)
      {
        goto LABEL_48;
      }
    }

    if (v33[1] == 47)
    {
      if (__s1)
      {
        if (v32)
        {
          v33 = v32 + 1;
        }

        *v33 = 0;
      }

      v39 = strlen(v10);
      v40 = (*(a1 + 16) + 2);
      *(a1 + 16) = v40;
      v41 = v39;
      if (!strncmp(v40, v10, v39))
      {
        for (n = &v40[v41]; ; ++n)
        {
          *(a1 + 16) = n;
          v43 = *n;
          if (v43 > 0x3E)
          {
            break;
          }

          if (((1 << v43) & 0x100002600) == 0)
          {
            if (v43 != 62)
            {
              break;
            }

            *(a1 + 16) = n + 1;
            if (__s1)
            {
              v16 = hdrpars_Unescape(__s1);
              goto LABEL_109;
            }

            goto LABEL_95;
          }
        }
      }

      *(a1 + 24) = v4;
LABEL_122:
      v16 = 2183159812;
      goto LABEL_49;
    }

    if (!__s1 || v33 == __s1)
    {
      __s1 = 0;
      v16 = hdrpars_ParseElement(a1, &__s1);
      v34 = *(a1 + 16);
      goto LABEL_81;
    }

LABEL_80:
    v34 = *(a1 + 16);
    v16 = 2183159812;
    goto LABEL_81;
  }

  if (v16 || !__s1)
  {
LABEL_109:
    *(a1 + 24) = v4;
    if (v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
    **(a1 + 16) = 0;
LABEL_95:
    *(a1 + 24) = v4;
  }

  if (v4 == 2)
  {
LABEL_113:
    if (v53)
    {
      goto LABEL_122;
    }

    v16 = 2183159812;
    if (!v54)
    {
      goto LABEL_49;
    }

    v16 = 0;
    *(a2 + 16) = v54;
    goto LABEL_126;
  }

  if (v4 != 1)
  {
    if (!v4)
    {
      goto LABEL_113;
    }

    v47 = *(a2 + 16);
    v46 = (a2 + 16);
    v45 = v47;
    if (!v47)
    {
      v48 = *a1;
      v50[0] = HDRPARS_TAG_MAP_IELEM;
      v50[1] = *&off_1F42D0A80;
      v51 = off_1F42D0A90;
      v49 = ssftmap_ObjOpen(v48, 1, v50, v46);
      if (v49)
      {
        v16 = v49;
        goto LABEL_49;
      }

      v45 = *v46;
    }

    v16 = ssftmap_Insert(v45, v10, &__s1);
    if (v16)
    {
      goto LABEL_49;
    }

    __s1 = 0;
    v53 = 0;
LABEL_126:
    v54 = 0;
    goto LABEL_49;
  }

  if (v53)
  {
    goto LABEL_122;
  }

  if (v54)
  {
    goto LABEL_122;
  }

  v44 = __s1;
  if (!__s1)
  {
    goto LABEL_122;
  }

  if (!strcmp(__s1, "SSFT_1.0") || (v16 = 2183159812, !strcmp(v44, "NUAN_1.0")))
  {
    v16 = 0;
    *(a1 + 24) = 2;
  }

LABEL_49:
  if (v53)
  {
    ssftmap_ObjClose(v53);
    v53 = 0;
  }

  if (v54)
  {
    ssftmap_ObjClose(v54);
  }

  return v16;
}

uint64_t hdrpars_FreeHeader(uint64_t a1)
{
  if (a1)
  {
    ssftmap_ObjClose(a1);
  }

  return 0;
}

uint64_t hdrpars_CreateSurrogateTagMap(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = HDRPARS_TAG_MAP_IELEM;
  v12 = *&off_1F42D0A80;
  v13 = off_1F42D0A90;
  v7 = ssftmap_ObjOpen(a1, 1, &v11, a4);
  *&v12 = 0;
  v11 = a2;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = v7;
    *&v11 = a3;
LABEL_7:
    ssftmap_ObjClose(*a4);
    return v9;
  }

  v8 = ssftmap_Insert(*a4, "BROKERSTRING", &v11);
  *&v11 = a3;
  if ((v8 & 0x80000000) != 0)
  {
    v9 = v8;
    goto LABEL_7;
  }

  v9 = ssftmap_Insert(*a4, "FULLPATHCOMPONENT", &v11);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v9;
}

uint64_t hdrpars_ParseAttributes(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16) + 1; ; ++i)
  {
    v5 = *(i - 1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

LABEL_7:
  v9 = *(a1 + 16);
  v10 = *v9;
  if (v10 <= 0x3F && ((1 << v10) & 0xC000800000000000) != 0)
  {
    return 0;
  }

  if ((v10 & 0xFFFFFFDF) - 65 >= 0x1A && v10 != 95 && v10 != 58)
  {
    return 2183159812;
  }

  for (j = v9 + 1; ; ++j)
  {
    *(a1 + 16) = j;
    v13 = *j;
    if (v13 - 48 < 0xA || (v13 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      continue;
    }

    if (v13 <= 0x3A)
    {
      if (((1 << v13) & 0x400600000000000) != 0)
      {
        continue;
      }

      if (((1 << v13) & 0x100002600) != 0)
      {
        break;
      }
    }

    if (v13 != 95)
    {
      goto LABEL_32;
    }
  }

  *j = 0;
  j = *(a1 + 16);
  do
  {
    *(a1 + 16) = ++j;
    v13 = *j;
  }

  while (v13 <= 0x20 && ((1 << v13) & 0x100002600) != 0);
LABEL_32:
  if (v13 == 61)
  {
    *j = 0;
    for (k = (*(a1 + 16) + 1); ; ++k)
    {
      *(a1 + 16) = k;
      v17 = *k;
      if (v17 > 0x27)
      {
        break;
      }

      if (((1 << v17) & 0x100002600) == 0)
      {
        if (((1 << v17) & 0x8400000000) == 0)
        {
          return 2183159812;
        }

        v18 = (k + 1);
        v19 = k + 1;
        do
        {
          *(a1 + 16) = v19;
          v21 = *v19++;
          v20 = v21;
        }

        while (v21 != 60 && v20 != v17);
        if (v20 != v17)
        {
          return 2183159812;
        }

        *(v19 - 1) = 0;
        ++*(a1 + 16);
        result = hdrpars_Unescape(v18);
        if (a2 && !result)
        {
          v23 = *(a2 + 8);
          if (!v23)
          {
            v24 = *a1;
            v30[0] = HDRPARS_ATTR_MAP_IELEM;
            v30[1] = *&off_1F42D0A58;
            v31 = off_1F42D0A68;
            result = ssftmap_ObjOpen(v24, 0, v30, (a2 + 8));
            if (result)
            {
              return result;
            }

            v23 = *(a2 + 8);
          }

          result = ssftmap_Insert(v23, v9, v18);
        }

        if (!result)
        {
          for (m = *(a1 + 16); ; *(a1 + 16) = m)
          {
            v26 = *m++;
            v6 = v26 > 0x20;
            v27 = (1 << v26) & 0x100002600;
            if (v6 || v27 == 0)
            {
              break;
            }
          }

          goto LABEL_7;
        }

        return result;
      }
    }
  }

  return 2183159812;
}

char *hdrpars_Unescape(char *a1)
{
  result = strchr(a1, 38);
  if (result)
  {
    v2 = result;
    for (i = result; ; ++i)
    {
      v4 = *v2;
      if (v4 == 38)
      {
        if (!strncmp(v2, "&amp;", 5uLL))
        {
          LOBYTE(v4) = 38;
          v5 = 5;
          goto LABEL_18;
        }

        if (!strncmp(v2, "&lt;", 4uLL))
        {
          LOBYTE(v4) = 60;
LABEL_15:
          v5 = 4;
          goto LABEL_18;
        }

        if (!strncmp(v2, "&gt;", 4uLL))
        {
          LOBYTE(v4) = 62;
          goto LABEL_15;
        }

        if (!strncmp(v2, "&apos;", 6uLL))
        {
          LOBYTE(v4) = 39;
        }

        else
        {
          if (strncmp(v2, "&quot;", 6uLL))
          {
            return 2183159812;
          }

          LOBYTE(v4) = 34;
        }

        v5 = 6;
      }

      else
      {
        if (!*v2)
        {
          result = 0;
          *i = 0;
          return result;
        }

        v5 = 1;
      }

LABEL_18:
      *i = v4;
      v2 += v5;
    }
  }

  return result;
}

char *hdrpars_SkipComments(uint64_t a1)
{
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v3 = *i;
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    v6 = v4 || v5 == 0;
    if (v6)
    {
      break;
    }

    ++i;
  }

  do
  {
    result = strncmp(i, "<!--", 4uLL);
    if (result)
    {
      break;
    }

    result = strstr(i, "-->");
    if (!result || *(result - 1) == 45)
    {
      break;
    }

    for (j = result + 3; ; ++j)
    {
      *(a1 + 16) = j;
      v9 = *j;
      v4 = v9 > 0x20;
      v10 = (1 << v9) & 0x100002600;
      if (v4 || v10 == 0)
      {
        break;
      }
    }

    v6 = j == i;
    i = j;
  }

  while (!v6);
  return result;
}

uint64_t hdrpars_ElemCopyTag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = strlen(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = heap_Alloc(a2, v7 + 25);
  if (!v8)
  {
    return 2183159818;
  }

  v9 = v8;
  v10 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 16) = v10;
  v11 = (v8 + 24);
  *v9 = v11;
  if (v7)
  {
    strcpy(v11, *a1);
  }

  else
  {
    *v11 = 0;
  }

  result = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a3 = v9;
  return result;
}

void *hdrpars_ElemFreeTag(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      ssftmap_ObjClose(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      ssftmap_ObjClose(v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

void *dict_free_nodes(void **a1)
{
  result = free_nodes(a1, *a1, a1);
  *(a1 + 12) = 0;
  *a1 = a1;
  a1[1] = a1;
  return result;
}

void *free_nodes(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v5 = result;
    free_nodes(result, *a2);
    free_nodes(v5, a2[1]);
    v6 = a2[4];
    if (v6)
    {
      (*(v5[8] + 8))(v6, v5[7]);
    }

    v7 = a2[5];
    if (v7)
    {
      (*(v5[8] + 32))(v7, v5[7]);
    }

    v8 = v5[7];

    return heap_Free(v8, a2);
  }

  return result;
}

uint64_t dict_init(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 56) = a4;
  *(result + 64) = a3;
  *(result + 48) = 0;
  *(result + 52) = a2;
  *result = result;
  *(result + 8) = result;
  *(result + 16) = result;
  *(result + 24) = 1;
  *(result + 72) = 0;
  return result;
}

void *dict_lookup(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a1)
  {
    return 0;
  }

  while (1)
  {
    v5 = (*(*(a1 + 64) + 16))(a2, v2[4]);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (v2 == a1)
    {
      return 0;
    }
  }

  if (v5)
  {
    ++v2;
    goto LABEL_5;
  }

  if (*(a1 + 72))
  {
    while (*v2 != a1)
    {
      v7 = v2;
      v2 = *v2;
      while ((*(*(a1 + 64) + 16))(a2, v2[4]))
      {
        v2 = v2[1];
        if (v2 == a1)
        {
          return v7;
        }
      }
    }
  }

  return v2;
}

void *dict_lower_bound(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = (*(*(a1 + 64) + 16))(a2, v2[4]);
    if (v6 < 1)
    {
      if (v6 < 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = v2;
        if (!*(a1 + 72))
        {
          return v5;
        }
      }
    }

    else
    {
      ++v2;
    }

    v2 = *v2;
  }

  while (v2 != a1);
  return v5;
}

uint64_t dict_insert(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1 == a1)
  {
    v10 = 0;
    v7 = a1;
  }

  else
  {
    do
    {
      v7 = v6;
      v8 = (*(a1[8] + 16))(a3, v6[4]);
      if (*(a1 + 72))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (v9)
      {
        return 2298486786;
      }

      v6 = v7[v8 >= 0];
    }

    while (v6 != a1);
    v10 = v8 >= 0;
  }

  result = (*a1[8])(a3, a1[7], a2 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7[v10] = a2;
  a2[1] = a1;
  a2[2] = v7;
  *a2 = a1;
  ++*(a1 + 12);
  *(a2 + 6) = 0;
  v12 = v7 + 3;
  if (*(v7 + 6))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v13 = v7[2];
    v14 = *v13;
    if (v7 == *v13)
    {
      break;
    }

    v16 = *(v14 + 6);
    v15 = v14 + 3;
    if (v16)
    {
      v20 = *v7;
      if (a2 == *v7)
      {
        v22 = *(v20 + 8);
        *v7 = v22;
        *(v22 + 16) = v7;
        v23 = v7[2];
        *(v20 + 16) = v23;
        *(v23 + 8 * (*(v23 + 8) == v7)) = v20;
        *(v20 + 8) = v7;
        v7[2] = v20;
      }

      else
      {
        a2 = v7;
      }

      *(a2 + 6) = 1;
      *(v13 + 6) = 0;
      v24 = v13[1];
      v25 = *v24;
      v13[1] = *v24;
      *(v25 + 16) = v13;
      v26 = v13[2];
      v24[2] = v26;
      v26[*v26 != v13] = v24;
      *v24 = v13;
      v13[2] = v24;
      goto LABEL_26;
    }

    v17 = v15;
LABEL_15:
    *v12 = 1;
    *v17 = 1;
    *(v13 + 6) = 0;
    v7 = v13[2];
    v12 = v7 + 3;
    a2 = v13;
    if (*(v7 + 6))
    {
      goto LABEL_26;
    }
  }

  v18 = v13[1];
  v19 = *(v18 + 6);
  v17 = v18 + 3;
  if (!v19)
  {
    goto LABEL_15;
  }

  v21 = v7[1];
  if (a2 == v21)
  {
    v27 = *v21;
    v7[1] = *v21;
    *(v27 + 16) = v7;
    v28 = v7[2];
    v21[2] = v28;
    v28[*v28 != v7] = v21;
    *v21 = v7;
    v7[2] = v21;
    v14 = *v13;
  }

  else
  {
    a2 = v7;
  }

  *(a2 + 6) = 1;
  *(v13 + 6) = 0;
  v29 = v14[1];
  *v13 = v29;
  v29[2] = v13;
  v30 = v13[2];
  v14[2] = v30;
  v30[v30[1] == v13] = v14;
  v14[1] = v13;
  v13[2] = v14;
LABEL_26:
  *(*a1 + 24) = 1;
  return result;
}

uint64_t dict_delete(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v4 = *a2;
  if (*a2 == a1)
  {
    v8 = *(a2 + 8);
    goto LABEL_9;
  }

  if (v3 == a1)
  {
    v8 = *a2;
LABEL_9:
    v8[2] = v2;
    if (*v2 == a2)
    {
      *v2 = v8;
    }

    else
    {
      v2[1] = v8;
    }

    goto LABEL_16;
  }

  v5 = *(a2 + 8);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a1);
  v7 = *(v6 + 6);
  v8 = v6[1];
  v9 = v6[2];
  v8[2] = v9;
  if (*v9 == v6)
  {
    *v9 = v8;
    v4 = *a2;
  }

  else
  {
    v9[1] = v8;
    v3 = *(a2 + 8);
  }

  v6[1] = v3;
  v6[2] = v2;
  *v6 = v4;
  v4[2] = v6;
  *(v3 + 16) = v6;
  *(v6 + 6) = *(a2 + 24);
  *(a2 + 24) = v7;
  if (*v2 == a2)
  {
    *v2 = v6;
  }

  else
  {
    v2[1] = v6;
  }

LABEL_16:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  --*(a1 + 12);
  if (*(a2 + 24) != 1)
  {
    return a2;
  }

  *(*a1 + 24) = 0;
  if (*(v8 + 6) != 1)
  {
    v10 = v8;
LABEL_31:
    v22 = v10 + 3;
    goto LABEL_39;
  }

  while (1)
  {
    v10 = v8[2];
    v11 = *v10;
    if (v8 != *v10)
    {
      if (!*(v11 + 6))
      {
        *(v11 + 6) = 1;
        *(v10 + 6) = 0;
        v12 = v11[1];
        *v10 = v12;
        v12[2] = v10;
        v13 = v10[2];
        v11[2] = v13;
        v13[v13[1] == v10] = v11;
        v11[1] = v10;
        v10[2] = v11;
        v11 = *v10;
      }

      v15 = *v11;
      v14 = v11[1];
      v16 = *(*v11 + 24);
      if (*(v14 + 6) != 1)
      {
        if (v16 == 1)
        {
          *(v14 + 6) = 1;
          v23 = *v14;
          v11[1] = *v14;
          v23[2] = v11;
          v24 = v11[2];
          v14[2] = v24;
          v24[*v24 != v11] = v14;
          *(v11 + 6) = 0;
          *v14 = v11;
          v11[2] = v14;
          v11 = *v10;
          v15 = **v10;
          v14 = (*v10)[1];
        }

LABEL_34:
        v22 = v8 + 3;
        *(v11 + 6) = *(v10 + 6);
        *(v15 + 24) = 1;
        *(v10 + 6) = 1;
        *v10 = v14;
        v14[2] = v10;
        v25 = v10[2];
        v11[2] = v25;
        v25[v25[1] == v10] = v11;
        v11[1] = v10;
        goto LABEL_38;
      }

      if (v16 != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v11 = v10[1];
    if (!*(v11 + 6))
    {
      *(v11 + 6) = 1;
      *(v10 + 6) = 0;
      v17 = *v11;
      v10[1] = *v11;
      *(v17 + 16) = v10;
      v18 = v10[2];
      v11[2] = v18;
      v18[*v18 != v10] = v11;
      *v11 = v10;
      v10[2] = v11;
      v11 = v10[1];
    }

    v19 = *v11;
    v20 = v11[1];
    v21 = *(v20 + 24);
    if (*(*v11 + 24) != 1)
    {
      break;
    }

    if (v21 != 1)
    {
      goto LABEL_37;
    }

LABEL_28:
    *(v11 + 6) = 0;
    v8 = v10;
    if (*(v10 + 6) != 1)
    {
      goto LABEL_31;
    }
  }

  if (v21 == 1)
  {
    *(v19 + 24) = 1;
    v26 = *(v19 + 8);
    *v11 = v26;
    *(v26 + 16) = v11;
    v27 = v11[2];
    *(v19 + 16) = v27;
    *(v27 + 8 * (*(v27 + 8) == v11)) = v19;
    *(v11 + 6) = 0;
    *(v19 + 8) = v11;
    v11[2] = v19;
    v11 = v10[1];
    v19 = *v11;
    v20 = v11[1];
  }

LABEL_37:
  v22 = v8 + 3;
  *(v11 + 6) = *(v10 + 6);
  *(v20 + 24) = 1;
  *(v10 + 6) = 1;
  v10[1] = v19;
  *(v19 + 16) = v10;
  v28 = v10[2];
  v11[2] = v28;
  v28[*v28 != v10] = v11;
  *v11 = v10;
LABEL_38:
  v10[2] = v11;
LABEL_39:
  *v22 = 1;
  *(*a1 + 24) = 1;
  return a2;
}

void *dict_next(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a1)
  {
    while (1)
    {
      v3 = *(a2 + 16);
      if (v3 == a1)
      {
        break;
      }

      v4 = a2 == v3[1];
      a2 = *(a2 + 16);
      if (!v4)
      {
        return v3;
      }
    }

    return 0;
  }

  else
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2 != a1);
  }

  return v3;
}

uint64_t dict_alloc_insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = heap_Alloc(a1[7], 48);
  v13 = 0;
  if (!v6)
  {
    return 2298486794;
  }

  v7 = v6;
  if (a3)
  {
    v8 = (*(a1[8] + 24))(a3, a1[7], &v13);
    if ((v8 & 0x80000000) != 0)
    {
      v11 = v8;
      goto LABEL_13;
    }

    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 32) = 0;
  *(v7 + 40) = v9;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 0;
  v11 = dict_insert(a1, v7, a2);
  result = 0;
  if ((v11 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = *(v7 + 32);
  if (v12)
  {
    (*(a1[8] + 8))(v12, a1[7]);
  }

  if (*(v7 + 40))
  {
    (*(a1[8] + 32))(v13, a1[7]);
  }

LABEL_13:
  heap_Free(a1[7], v7);
  return v11;
}

void *dict_delete_free(uint64_t *a1, uint64_t a2)
{
  dict_delete(a1, a2);
  v4 = *(a2 + 32);
  if (v4)
  {
    (*(a1[8] + 8))(v4, a1[7]);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    (*(a1[8] + 32))(v5, a1[7]);
  }

  v6 = a1[7];

  return heap_Free(v6, a2);
}

void **dict_first(void **a1)
{
  v1 = *a1;
  if (*a1 == a1)
  {
    v2 = *a1;
  }

  else
  {
    do
    {
      v2 = v1;
      v1 = *v1;
    }

    while (v1 != a1);
  }

  if (v2 == a1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t ssftmap_ObjOpen(void *a1, int a2, __int128 *a3, uint64_t *a4)
{
  v4 = 2298486791;
  if (*a3 && *(a3 + 1) && *(a3 + 3) && *(a3 + 4) && a4 && *(a3 + 2))
  {
    v9 = heap_Calloc(a1, 1, 128);
    *a4 = v9;
    if (v9)
    {
      v10 = *a3;
      v11 = a3[1];
      *(v9 + 32) = *(a3 + 4);
      *v9 = v10;
      *(v9 + 16) = v11;
      *(*a4 + 40) = a1;
      dict_init(*a4 + 48, -1, *a4, a1);
      if (a2 == 1)
      {
        dict_allow_dupes(*a4 + 48);
      }

      return 0;
    }

    else
    {
      return 2298486794;
    }
  }

  return v4;
}

uint64_t ssftmap_ObjClone(__int128 *a1, uint64_t *a2)
{
  v2 = 2298486791;
  if (a1 && a2)
  {
    v5 = heap_Calloc(*(a1 + 5), 1, 128);
    *a2 = v5;
    if (v5)
    {
      v6 = *a1;
      v7 = a1[1];
      *(v5 + 32) = *(a1 + 4);
      *v5 = v6;
      *(v5 + 16) = v7;
      *(*a2 + 40) = *(a1 + 5);
      dict_init(*a2 + 48, -1, *a2, *(*a2 + 40));
      if (*(a1 + 120))
      {
        dict_allow_dupes(*a2 + 48);
      }

      v8 = dict_first(a1 + 6);
      if (v8)
      {
        v9 = v8;
        do
        {
          v2 = dict_alloc_insert((*a2 + 48), *(v9 + 32), *(v9 + 40));
          v10 = dict_next(a1 + 6, v9);
          if ((v2 & 0x80000000) != 0)
          {
            break;
          }

          v9 = v10;
        }

        while (v10);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2298486794;
    }
  }

  return v2;
}

uint64_t ssftmap_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  dict_free_nodes((a1 + 48));
  heap_Free(*(a1 + 40), a1);
  return 0;
}

uint64_t ssftmap_Insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return dict_alloc_insert((a1 + 48), a2, a3);
  }

  else
  {
    return 2298486791;
  }
}

uint64_t ssftmap_FindReadOnly(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v5 = dict_lookup(a1 + 48, a2);
    if (v5)
    {
      v3 = 0;
      *a3 = v5[5];
    }

    else
    {
      return 2298486804;
    }
  }

  return v3;
}

uint64_t ssftmap_Remove(uint64_t a1, uint64_t a2)
{
  v2 = 2298486791;
  if (a1 && a2)
  {
    v4 = dict_lookup(a1 + 48, a2);
    if (v4)
    {
      dict_delete_free((a1 + 48), v4);
      return 0;
    }

    else
    {
      return 2298486804;
    }
  }

  return v2;
}

uint64_t ssftmap_GetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t ssftmap_Clear(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  dict_free_nodes((a1 + 48));
  return 0;
}

uint64_t ssftmap_IteratorOpen(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 2298486791;
  if (a1 && a4)
  {
    v7 = (a1 + 48);
    if (a2)
    {
      if (a3)
      {
        v8 = dict_lookup(v7, a2);
      }

      else
      {
        v8 = dict_lower_bound(v7, a2);
      }

      v9 = v8;
      if (!v8)
      {
        return 2298486804;
      }
    }

    else
    {
      v9 = dict_first(v7);
    }

    v10 = heap_Calloc(*(a1 + 40), 1, 24);
    *a4 = v10;
    if (v10)
    {
      v4 = 0;
      *v10 = a1;
      *(*a4 + 8) = 0;
      *(*a4 + 16) = v9;
    }

    else
    {
      return 2298486794;
    }
  }

  return v4;
}

uint64_t ssftmap_IteratorClose(uint64_t a1)
{
  if (!a1)
  {
    return 2298486791;
  }

  heap_Free(*(*a1 + 40), a1);
  return 0;
}

uint64_t ssftmap_IteratorNext(uint64_t *a1, void *a2, void *a3)
{
  result = 2298486791;
  if (a1 && a2 && a3)
  {
    v5 = a1[2];
    if (v5)
    {
      a1[1] = v5;
      *a2 = *(v5 + 32);
      *a3 = *(a1[1] + 40);
      v6 = dict_next((*a1 + 48), a1[1]);
      result = 0;
      a1[2] = v6;
    }

    else
    {
      *a2 = 0;
      *a3 = 0;
      return 2298486807;
    }
  }

  return result;
}

uint64_t ssftmap_IteratorRemove(void *a1)
{
  result = 2298486784;
  if (!a1)
  {
    return 2298486791;
  }

  v3 = a1[1];
  if (v3)
  {
    dict_delete_free((*a1 + 48), v3);
    result = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t ssftmap_ElemCopyString(const char *a1, uint64_t a2, char **a3)
{
  v3 = 2298486791;
  if (a1 && a2 && a3)
  {
    v7 = strlen(a1);
    v8 = heap_Alloc(a2, (v7 + 1));
    if (v8)
    {
      v3 = 0;
      *a3 = strcpy(v8, a1);
    }

    else
    {
      return 2298486794;
    }
  }

  return v3;
}

void *ssftmap_ElemFreeString(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t ssftmap_ElemCompareKeysString(const char *a1, const char *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return strcmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t objc_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v17 = 0;
  result = InitRsrcFunction(a2, a3, &v17);
  if ((result & 0x80000000) == 0)
  {
    v8 = 2338332682;
    if (a4)
    {
      v9 = heap_Calloc(*(v17 + 8), 1, 40);
      *a4 = v9;
      if (v9)
      {
        *v9 = a2;
        v9[1] = a3;
        v10 = v17;
        *(*a4 + 16) = v17;
        v11 = critsec_ObjOpen(*(v10 + 16), *(v10 + 8), (*a4 + 24));
        v12 = *(v17 + 8);
        v13 = *a4;
        if ((v11 & 0x80000000) != 0)
        {
          heap_Free(v12, v13);
          v8 = v11;
        }

        else
        {
          v15[0] = xmmword_1F42D0A98;
          v15[1] = *&off_1F42D0AA8;
          v16 = off_1F42D0AB8;
          v14 = ssftmap_ObjOpen(v12, 0, v15, (v13 + 32));
          result = 0;
          if ((v14 & 0x80000000) == 0)
          {
            return result;
          }

          critsec_ObjClose(*(*a4 + 24));
          heap_Free(*(v17 + 8), *a4);
        }

        *a4 = 0;
        return v8;
      }

      else
      {
        return 2338332682;
      }
    }

    else
    {
      return 2338332679;
    }
  }

  return result;
}

uint64_t objc_CopyValue(__int128 *a1, uint64_t a2, void *a3)
{
  v3 = 2338332679;
  if (a1 && a3)
  {
    *a3 = 0;
    v6 = heap_Alloc(a2, 64);
    if (v6)
    {
      v3 = 0;
      v7 = *a1;
      v8 = a1[1];
      v9 = a1[3];
      v6[2] = a1[2];
      v6[3] = v9;
      *v6 = v7;
      v6[1] = v8;
      *a3 = v6;
    }

    else
    {
      return 2338332682;
    }
  }

  return v3;
}

void *objc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t objc_ObjClose(uint64_t a1)
{
  v13 = 0;
  v14 = 0;
  v1 = 2338332679;
  v12 = 0;
  if (a1)
  {
    v3 = critsec_Enter(*(a1 + 24));
    v4 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        if ((ssftmap_IteratorOpen(v5, 0, 1, &v14) & 0x80000000) == 0)
        {
          while (!ssftmap_IteratorNext(v14, &v13, &v12))
          {
            if (*(v12 + 56))
            {
              ssftmap_IteratorClose(v14);
              critsec_Leave(*(a1 + 24));
              return 2338332689;
            }
          }

          ssftmap_IteratorClose(v14);
        }

        v6 = *(a1 + 32);
        if (v6)
        {
          ssftmap_ObjClose(v6);
          *(a1 + 32) = 0;
        }
      }

      v7 = critsec_Leave(*(a1 + 24));
      if (v7 >= 0)
      {
        v1 = v4;
      }

      else
      {
        v1 = v7;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = critsec_ObjClose(v8);
        if (v9 >= 0 || v1 <= -1)
        {
          v1 = v1;
        }

        else
        {
          v1 = v9;
        }
      }

      heap_Free(*(*(a1 + 16) + 8), a1);
    }
  }

  return v1;
}

uint64_t objc_GetObject(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = critsec_Enter(*(a1 + 24));
        if ((result & 0x80000000) == 0)
        {
          ReadOnly = ssftmap_FindReadOnly(*(a1 + 32), a2, &v11);
          v8 = ReadOnly;
          if (ReadOnly < 0)
          {
            v8 = ReadOnly & 0x1FFF | 0x8B602000;
          }

          else
          {
            v9 = v11;
            *a3 = v11;
            ++*(v9 + 56);
          }

          LODWORD(result) = critsec_Leave(*(a1 + 24));
          if (v8 > -1 && result < 0)
          {
            return result;
          }

          else
          {
            return v8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t objc_RegisterObject(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = critsec_Enter(*(a1 + 24));
        if ((result & 0x80000000) == 0)
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          ReadOnly = ssftmap_FindReadOnly(*(a1 + 32), a2, &v18);
          if (ReadOnly < 0)
          {
            v17 = 0uLL;
            v12 = a3[1];
            v14 = *a3;
            v15 = v12;
            v16 = *(a3 + 4);
            v8 = ssftmap_Insert(*(a1 + 32), a2, &v14);
          }

          else
          {
            v8 = ReadOnly;
            v9 = v18;
            v10 = *(a3 + 4);
            v11 = a3[1];
            *v18 = *a3;
            v9[1] = v11;
            *(v9 + 4) = v10;
          }

          LODWORD(result) = critsec_Leave(*(a1 + 24));
          if (v8 > -1 && result < 0)
          {
            return result;
          }

          else
          {
            return v8;
          }
        }
      }
    }
  }

  return result;
}

uint64_t objc_ReleaseObject(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  result = 2338332679;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        ReadOnly = ssftmap_FindReadOnly(*(a1 + 32), a2, &v15);
        v6 = ReadOnly;
        if (ReadOnly < 0)
        {
          v6 = ReadOnly & 0x1FFF | 0x8B602000;
        }

        else if (*(v15 + 28))
        {
          if (*(v15 + 28) == 1 && *(v15 + 6))
          {
            v7 = *v15;
            v8 = v15[1];
            v9 = v15[3];
            v13 = v15[2];
            v14 = v9;
            v11 = v7;
            v12 = v8;
            v6 = ssftmap_Remove(*(a1 + 32), a2);
            (v14)(*a1, *(a1 + 8), &v11);
          }

          else
          {
            --*(v15 + 28);
          }
        }

        else
        {
          v6 = -1956634607;
        }

        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v6 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return result;
}

uint64_t objc_UnregisterObject(uint64_t a1, uint64_t a2)
{
  v2 = 2338332679;
  v12 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = critsec_Enter(*(a1 + 24));
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    ReadOnly = ssftmap_FindReadOnly(v7, a2, &v12);
    if ((ReadOnly & 0x80000000) == 0)
    {
      if (*(v12 + 56))
      {
        v6 = -1956634607;
        goto LABEL_11;
      }

      ReadOnly = ssftmap_Remove(*(a1 + 32), a2);
    }

    v6 = ReadOnly;
  }

LABEL_11:
  v9 = critsec_Leave(*(a1 + 24));
  if (v6 > -1 && v9 < 0)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t objc_GetAddRefCountedObject(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, uint64_t, __int128 *, uint64_t), void (*a4)(void, void, __int128 *), uint64_t a5, void *a6)
{
  v22 = 0;
  result = 2338332679;
  if (a6)
  {
    if (a1)
    {
      if (a2)
      {
        if (a3)
        {
          if (a4)
          {
            result = critsec_Enter(*(a1 + 24));
            if ((result & 0x80000000) == 0)
            {
              v20 = 0u;
              v21 = 0u;
              v18 = 0u;
              v19 = 0u;
              ReadOnly = ssftmap_FindReadOnly(*(a1 + 32), a2, &v22);
              if ((ReadOnly & 0x80000000) == 0)
              {
LABEL_8:
                v14 = v22;
                *a6 = v22;
                ++*(v14 + 56);
                v15 = 1;
                goto LABEL_16;
              }

              v20 = 0u;
              v21 = 0u;
              v18 = 0u;
              v19 = 0u;
              v16 = a3(*a1, *(a1 + 8), a2, &v18, a5);
              if ((v16 & 0x80000000) != 0)
              {
                ReadOnly = v16;
              }

              else
              {
                *(&v20 + 1) = a3;
                *&v21 = a4;
                v17 = ssftmap_Insert(*(a1 + 32), a2, &v18);
                if ((v17 & 0x80000000) != 0)
                {
                  ReadOnly = v17;
                  a4(*a1, *(a1 + 8), &v18);
                }

                else
                {
                  ReadOnly = ssftmap_FindReadOnly(*(a1 + 32), a2, &v22);
                  if ((ReadOnly & 0x80000000) == 0)
                  {
                    goto LABEL_8;
                  }
                }
              }

              v15 = 0;
LABEL_16:
              LODWORD(result) = critsec_Leave(*(a1 + 24));
              if ((v15 & (result < 0)) != 0)
              {
                return result;
              }

              else
              {
                return ReadOnly;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t paramc_ObjOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2339381258;
  if (!a4)
  {
    return 2339381255;
  }

  v7 = heap_Calloc(*(a2 + 8), 1, 40);
  *a4 = v7;
  if (!v7)
  {
    return 2339381258;
  }

  v8 = *(a2 + 8);
  *v7 = v8;
  v9 = critsec_ObjOpen(*(a2 + 16), v8, (*a4 + 8));
  if ((v9 & 0x80000000) != 0)
  {
    v4 = v9;
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *a4;
    v24 = paramc_IParam;
    v25 = *&off_1F42D0AD0;
    v26 = off_1F42D0AE0;
    v12 = ssftmap_ObjOpen(v10, 0, &v24, (v11 + 16));
    v13 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v4 = v12;
    }

    else
    {
      v14 = *(a2 + 8);
      v15 = *a4;
      v24 = paramc_IListener;
      *&v25 = 0;
      if (vector_ObjOpen(v14, &v24, 1, (v15 + 24)))
      {
        v16 = *(a2 + 8);
        v17 = *a4;
        v24 = paramc_IRestorePoints;
        *&v25 = off_1F42D0AF8[0];
        if (vector_ObjOpen(v16, &v24, 2, (v17 + 32)))
        {
          return v13;
        }
      }
    }
  }

  v18 = *a4;
  if (*a4)
  {
    v19 = v18[4];
    if (v19)
    {
      vector_ObjClose(v19);
      v18 = *a4;
    }

    v20 = v18[3];
    if (v20)
    {
      vector_ObjClose(v20);
      v18 = *a4;
    }

    v21 = v18[2];
    if (v21)
    {
      ssftmap_ObjClose(v21);
      v18 = *a4;
    }

    v22 = v18[1];
    if (v22)
    {
      critsec_ObjClose(v22);
      v18 = *a4;
    }

    heap_Free(*(a2 + 8), v18);
    *a4 = 0;
  }

  return v4;
}

uint64_t paramc_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2339381255;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    vector_ObjClose(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    vector_ObjClose(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    ssftmap_ObjClose(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    critsec_ObjClose(v5);
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t paramc_ListenerAdd(uint64_t a1, _BYTE *a2, void *a3)
{
  v3 = -1955586038;
  v16 = 0;
  v4 = 2339381255;
  if (!a1)
  {
    return v4;
  }

  if (!a3[2])
  {
    return v4;
  }

  v4 = critsec_Enter(*(a1 + 8));
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (a2 && *a2)
  {
    ReadOnly = ssftmap_FindReadOnly(*(a1 + 16), a2, &v16);
    LODWORD(v4) = ReadOnly;
    if (ReadOnly < 0)
    {
      v3 = (ReadOnly & 0x1FFF) - 1955586048;
      goto LABEL_14;
    }

    v9 = *(v16 + 16);
    if (!v9)
    {
      v10 = *a1;
      v14 = paramc_IListener;
      v15 = 0;
      if (!vector_ObjOpen(v10, &v14, 1, (v16 + 16)))
      {
        goto LABEL_14;
      }

      v9 = *(v16 + 16);
    }
  }

  else
  {
    v9 = *(a1 + 24);
  }

  if (vector_Add(v9, a3))
  {
    v3 = v4;
  }

  else
  {
    v3 = -1955586038;
  }

LABEL_14:
  v11 = critsec_Leave(*(a1 + 8));
  if (v3 > -1 && v11 < 0)
  {
    return v11;
  }

  else
  {
    return v3;
  }
}

uint64_t paramc_ListenerRemove(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v13 = 0;
  if (!a1)
  {
    return 2339381255;
  }

  result = critsec_Enter(*(a1 + 8));
  if ((result & 0x80000000) == 0)
  {
    if (a2 && *a2)
    {
      ReadOnly = ssftmap_FindReadOnly(*(a1 + 16), a2, &v13);
      if (ReadOnly < 0)
      {
        v9 = ReadOnly & 0x1FFF | 0x8B702000;
        goto LABEL_10;
      }

      v8 = *(v13 + 16);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    v11 = *a3;
    v12 = *(a3 + 2);
    v9 = param_ListenerRemove(v8, &v11);
LABEL_10:
    LODWORD(result) = critsec_Leave(*(a1 + 8));
    if (v9 > -1 && result < 0)
    {
      return result;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t param_ListenerRemove(uint64_t a1, void *a2)
{
  v2 = 2339381268;
  v7 = 0;
  if (a1 && vector_GetElemAt(a1, 0, &v7))
  {
    v5 = 0;
    while (*a2 != *v7 || a2[1] != v7[1] || a2[2] != v7[2])
    {
      if (!vector_GetElemAt(a1, ++v5, &v7))
      {
        return v2;
      }
    }

    if (vector_Remove(a1, v5))
    {
      return 0;
    }

    else
    {
      return 2339381504;
    }
  }

  return v2;
}

uint64_t paramc_ParamSetInternal(uint64_t a1, uint64_t a2, void *a3, size_t a4, int a5)
{
  *v25 = 0;
  v5 = 2339381255;
  if (!a1)
  {
    return v5;
  }

  if (!a2)
  {
    return v5;
  }

  if (!a3)
  {
    return v5;
  }

  v5 = critsec_Enter(*(a1 + 8));
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if ((ssftmap_FindReadOnly(*(a1 + 16), a2, v25) & 0x80000000) == 0)
  {
    v11 = *v25;
    if (*v25)
    {
      v12 = *(*v25 + 8);
      if (v12)
      {
        v13 = **v25;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    if (v12 == a4 && !memcmp(v13, a3, a4))
    {
      goto LABEL_37;
    }

    v14 = param_ConsultListeners(a1, a2, v11, a3);
    if ((v14 & 0x80000000) == 0)
    {
      v19 = a5 ? a3 : v13;
      v20 = a5 ? a4 : v12;
      v14 = param_TrackForRestore(a1, a2, v19, v20, a5);
      if ((v14 & 0x80000000) == 0)
      {
        v14 = param_SetValue(*v25, a3, a4, *a1);
        if ((v14 & 0x80000000) == 0)
        {
          v14 = param_NotifyListeners(a1, a2, *v25, a3);
          if ((v14 & 0x80000000) == 0)
          {
            LODWORD(v5) = 0;
            goto LABEL_37;
          }
        }
      }
    }

LABEL_36:
    LODWORD(v5) = v14;
    goto LABEL_37;
  }

  v24[2] = 0;
  v24[0] = a3;
  v24[1] = a4;
  v14 = param_ConsultListeners(a1, a2, v24, a3);
  if (v14 < 0)
  {
    goto LABEL_36;
  }

  v15 = a5 ? a3 : 0;
  v16 = a5 ? a4 : 0;
  v14 = param_TrackForRestore(a1, a2, v15, v16, a5);
  if (v14 < 0)
  {
    goto LABEL_36;
  }

  v17 = ssftmap_Insert(*(a1 + 16), a2, v24);
  if (v17 < 0)
  {
    LODWORD(v5) = v17 & 0x1FFF | 0x8B702000;
  }

  else
  {
    v18 = param_NotifyListeners(a1, a2, v24, a3);
    if (v18 < 0)
    {
      LODWORD(v5) = v18 & 0x1FFF | 0x8B702000;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

LABEL_37:
  v21 = critsec_Leave(*(a1 + 8));
  if (v5 > -1 && v21 < 0)
  {
    return v21;
  }

  else
  {
    return v5;
  }
}

uint64_t paramc_ParamRipple(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  *v14 = 0;
  result = 2339381255;
  if (a1 && a2 && a3)
  {
    if ((ssftmap_FindReadOnly(*(a1 + 16), a2, v14) & 0x80000000) != 0)
    {
      v13[2] = 0;
      v13[0] = a3;
      v13[1] = a4;
      result = param_TrackForRestore(a1, a2, 0, 0, 0);
      if ((result & 0x80000000) == 0)
      {
        v11 = ssftmap_Insert(*(a1 + 16), a2, v13);
        if (v11 < 0)
        {
          return v11 & 0x1FFF | 0x8B702000;
        }

        else
        {
          v12 = param_NotifyListeners(a1, a2, v13, a3);
          if (v12 < 0)
          {
            return v12 & 0x1FFF | 0x8B702000;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      if (*v14)
      {
        v9 = *(*v14 + 8);
        if (v9)
        {
          v10 = **v14;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v9 == a4 && !memcmp(v10, a3, a4))
      {
        return 0;
      }

      result = param_TrackForRestore(a1, a2, v10, v9, 0);
      if ((result & 0x80000000) == 0)
      {
        result = param_SetValue(*v14, a3, a4, *a1);
        if ((result & 0x80000000) == 0)
        {
          result = param_NotifyListeners(a1, a2, *v14, a3);
          if ((result & 0x80000000) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t param_TrackForRestore(uint64_t a1, uint64_t a2, void *a3, size_t a4, int a5)
{
  v18 = 0;
  v19 = 0;
  v17[2] = 0;
  v17[0] = a3;
  v17[1] = a4;
  if (vector_GetElemAt(*(a1 + 32), 0, &v19))
  {
    v10 = 1;
    while (1)
    {
      v11 = ssftmap_Insert(*(v19 + 8), a2, v17);
      if ((v11 & 0x1FFF) == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if ((v11 & 0x1FFF) == 2 && a5 != 0)
      {
        ReadOnly = ssftmap_FindReadOnly(*(v19 + 8), a2, &v18);
        if (ReadOnly < 0)
        {
          return ReadOnly & 0x1FFF | 0x8B702000;
        }

        v12 = param_SetValue(v18, a3, a4, **v19);
      }

      if ((v12 & 0x80000000) == 0)
      {
        if (vector_GetElemAt(*(a1 + 32), v10++, &v19))
        {
          continue;
        }
      }

      return v12;
    }
  }

  return 0;
}

uint64_t param_SetValue(uint64_t a1, void *__src, size_t __n, uint64_t *a4)
{
  v4 = 2339381258;
  if (!a1)
  {
    return 2339381255;
  }

  v5 = __n;
  if (__n)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = *a1;
      v10 = __n;
      if (v8 >= __n)
      {
LABEL_13:
        memcpy(v9, __src, v10);
        v4 = 0;
        *(a1 + 8) = v5;
        return v4;
      }

      v11 = heap_Realloc(a4, v9, __n);
      if (v11)
      {
        v9 = v11;
        *a1 = v11;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = __n;
      v9 = heap_Alloc(a4, __n);
      *a1 = v9;
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (*a1 && *(a1 + 8))
    {
      heap_Free(a4, *a1);
    }

    v4 = 0;
    *(a1 + 8) = 0;
    *a1 = __src;
  }

  return v4;
}

uint64_t param_NotifyListeners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = a3 + 16;
  v7 = a1 + 24;
  v8 = 1;
  while (1)
  {
    v9 = (v8 == 1 ? v6 : v7);
    v10 = *v9;
    if (*v9)
    {
      Size = vector_GetSize(*v9);
      if (Size)
      {
        break;
      }
    }

LABEL_12:
    if (++v8 == 3)
    {
      return 0;
    }
  }

  v12 = Size;
  v13 = 0;
  while (vector_GetElemAt(v10, v13, &v15))
  {
    result = (*(v15 + 16))(*v15, a2, a4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v12 == ++v13)
    {
      goto LABEL_12;
    }
  }

  return 2339381504;
}

uint64_t paramc_ParamGet(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0;
  result = 2339381255;
  if (a1 && a2 && a3)
  {
    *a3 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    result = critsec_Enter(*(a1 + 8));
    if ((result & 0x80000000) == 0)
    {
      ReadOnly = ssftmap_FindReadOnly(*(a1 + 16), a2, &v13);
      v10 = ReadOnly;
      if (ReadOnly < 0)
      {
        v10 = ReadOnly & 0x1FFF | 0x8B702000;
      }

      else if (v13)
      {
        v11 = *(v13 + 8);
        if (v11)
        {
          *a3 = *v13;
          if (!a4)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        *a3 = 0;
        if (a4)
        {
LABEL_14:
          *a4 = v11;
        }
      }

LABEL_15:
      LODWORD(result) = critsec_Leave(*(a1 + 8));
      if (v10 > -1 && result < 0)
      {
        return result;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t paramc_ParamRelease(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 2339381255;
  }
}

uint64_t paramc_ParamSetInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  LH_itoa(a3, __s, 0xAu);
  v5 = strlen(__s);
  result = paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t paramc_ParamGetInt(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = paramc_ParamGet(a1, a2, &v8, &v7);
  v5 = 0;
  if ((v4 & 0x80000000) == 0 && v7 >= 2)
  {
    v5 = atoi(v8);
  }

  *a3 = v5;
  return v4;
}

uint64_t paramc_ParamSetUInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  LH_utoa(a3, __s, 0xAu);
  v5 = strlen(__s);
  result = paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t paramc_ParamSetUIntPermanent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  LH_utoa(a3, __s, 0xAu);
  v5 = strlen(__s);
  result = paramc_ParamSetInternal(a1, a2, __s, (v5 + 1), 1);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t paramc_ParamGetUInt(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = paramc_ParamGet(a1, a2, &v8, &v7);
  v5 = 0;
  if ((v4 & 0x80000000) == 0 && v7 >= 2)
  {
    v5 = LH_atou(v8);
  }

  *a3 = v5;
  return v4;
}

uint64_t paramc_ParamSetStr(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5) + 1;

  return paramc_ParamSetInternal(a1, a2, v5, v6, 0);
}

uint64_t paramc_ParamSetStrPermanent(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5) + 1;

  return paramc_ParamSetInternal(a1, a2, v5, v6, 1);
}

uint64_t paramc_ParamRemove(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  result = 2339381255;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = critsec_Enter(*(a1 + 8));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  ReadOnly = ssftmap_FindReadOnly(*(a1 + 16), a2, &v14);
  if (ReadOnly < 0)
  {
    v8 = ReadOnly & 0x1FFF | 0x8B702000;
    goto LABEL_19;
  }

  v6 = v14;
  v7 = *(v14 + 16);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (vector_GetSize(v7))
  {
    v8 = -1955586031;
    goto LABEL_19;
  }

  v6 = v14;
  if (!v14)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
LABEL_10:
    v9 = *(v6 + 8);
    if (v9)
    {
      v10 = *v6;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = param_TrackForRestore(a1, a2, v10, v9, 0);
  if (v11 < 0)
  {
    v8 = v11;
  }

  else
  {
    v12 = ssftmap_Remove(*(a1 + 16), a2);
    if (v12 >= 0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12 & 0x1FFF | 0x8B702000;
    }
  }

LABEL_19:
  LODWORD(result) = critsec_Leave(*(a1 + 8));
  if (v8 > -1 && result < 0)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t paramc_ParamSetRestorePoint(uint64_t a1, void *a2)
{
  v2 = 2339381255;
  if (a1 && a2)
  {
    v5 = critsec_Enter(*(a1 + 8));
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      v12[0] = a1;
      v12[1] = 0;
      if (vector_Add(*(a1 + 32), v12))
      {
        v7 = *(a1 + 32);
        Size = vector_GetSize(v7);
        if (vector_GetElemAt(v7, Size - 1, a2))
        {
          LODWORD(v2) = v6;
        }

        else
        {
          LODWORD(v2) = -1955585792;
        }
      }

      else
      {
        LODWORD(v2) = -1955586038;
      }

      v9 = critsec_Leave(*(a1 + 8));
      if (v9 >= 0 || v2 <= -1)
      {
        return v2;
      }

      else
      {
        return v9;
      }
    }
  }

  return v2;
}

uint64_t paramc_ParamRestore(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v2 = 2339381255;
  v11 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = ssftmap_IteratorOpen(a2[1], 0, 1, &v13);
      if ((v2 & 0x80000000) == 0)
      {
        if (ssftmap_IteratorNext(v13, &v12, &v11))
        {
LABEL_5:
          ssftmap_IteratorClose(v13);
          return v2;
        }

        while (1)
        {
          v5 = v12;
          v6 = *(v11 + 8);
          v7 = *a2;
          if (v6)
          {
            v8 = *v11;
          }

          else
          {
            v9 = paramc_ParamRemove(v7, v12);
            if ((v9 & 0x1FFF) != 0x11)
            {
              if ((v9 & 0x1FFF) == 0x14)
              {
                v9 = 0;
              }

              goto LABEL_13;
            }

            v7 = *a2;
            v5 = v12;
            v8 = "";
            v6 = 1;
          }

          v9 = paramc_ParamSetInternal(v7, v5, v8, v6, 0);
LABEL_13:
          if (v2 > -1 && v9 < 0)
          {
            v2 = v9;
          }

          else
          {
            v2 = v2;
          }

          if (ssftmap_IteratorNext(v13, &v12, &v11))
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t paramc_ParamCloseRestorePoint(uint64_t a1, char *a2)
{
  v2 = 2339381255;
  if (a1 && a2)
  {
    v5 = critsec_Enter(*(a1 + 8));
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      if (vector_RemoveAddress(*(a1 + 32), a2))
      {
        LODWORD(v2) = v6;
      }

      else
      {
        LODWORD(v2) = -1955586041;
      }

      v7 = critsec_Leave(*(a1 + 8));
      if (v2 > -1 && v7 < 0)
      {
        return v7;
      }

      else
      {
        return v2;
      }
    }
  }

  return v2;
}

uint64_t param_Copy(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    *a3 = 0;
    v7 = heap_Calloc(a2, 1, 24);
    if (v7)
    {
      v8 = v7;
      v9 = param_SetValue(v7, *a1, *(a1 + 8), a2);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
        param_Free(v8, a2);
      }

      else
      {
        v3 = 0;
        *a3 = v8;
      }
    }

    else
    {
      return 2339381258;
    }
  }

  return v3;
}

void *param_Free(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[2];
    if (v4)
    {
      vector_ObjClose(v4);
      *(v3 + 16) = 0;
    }

    if (*v3)
    {
      heap_Free(a2, *v3);
      *v3 = 0;
    }

    *(v3 + 8) = 0;

    return heap_Free(a2, v3);
  }

  return result;
}

BOOL param_RestorePointCopyParts(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  *a3 = v4;
  if (v3)
  {
    v5 = ssftmap_ObjClone(v3, a3 + 1);
  }

  else
  {
    v7[0] = paramc_IParam;
    v7[1] = *&off_1F42D0AD0;
    v8 = off_1F42D0AE0;
    v5 = ssftmap_ObjOpen(a2, 0, v7, a3 + 1);
  }

  return v5 >= 0;
}

uint64_t param_RestorePointFreeParts(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = ssftmap_ObjClose(result);
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t param_ConsultListeners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 1;
  v20 = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 16;
  v8 = a1 + 24;
  v9 = 1;
  while (1)
  {
    v10 = (v9 == 1 ? v7 : v8);
    v11 = *v10;
    if (*v10)
    {
      Size = vector_GetSize(*v10);
      if (Size)
      {
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }
      }
    }

LABEL_21:
    if (++v9 == 3)
    {
      return v6;
    }
  }

  v13 = Size;
  v14 = 1;
  while (vector_GetElemAt(v11, v14 - 1, &v20))
  {
    v15 = v20[1];
    if (v15)
    {
      v16 = v15(*v20, a2, a4, &v21);
      if (v21)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 < 0;
      }

      if (v17)
      {
        v6 = v16;
      }

      else
      {
        v6 = 2339381263;
      }
    }

    if ((v6 & 0x80000000) == 0 && v14++ < v13)
    {
      continue;
    }

    goto LABEL_21;
  }

  return 2339381504;
}

uint64_t ssftriff_reader_ObjOpenEx(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6, char *a7, int a8, uint64_t *a9)
{
  v14 = a3;
  v113 = *MEMORY[0x1E69E9840];
  v108 = 0;
  v105 = 0;
  v103 = 16;
  *__s2 = 0;
  result = 2317361159;
  v102 = 0;
  __str[0] = 0;
  if (a3 <= 1)
  {
    v19 = 0;
    if (!a3)
    {
      v20 = 1;
      v18 = 0;
      if (!a4)
      {
        goto LABEL_47;
      }

      goto LABEL_16;
    }

    if (a3 != 1)
    {
      goto LABEL_47;
    }

LABEL_13:
    v20 = 0;
    v18 = 0;
    v14 = 1;
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (a3 == 4)
  {
    v19 = 0;
    v20 = 0;
    v18 = 1;
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (a3 == 3)
  {
    v19 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    goto LABEL_47;
  }

  v18 = 0;
  v14 = 0;
  v19 = 1;
  v20 = 1;
  if (!a4)
  {
    goto LABEL_47;
  }

LABEL_16:
  if (a7 && *a4 && (!v20 || *a7) && (!v18 || a5 && a6))
  {
    if (a9)
    {
      v107 = 0;
      v106 = 0;
      memset(v101, 0, sizeof(v101));
      *v100 = 0;
      *a9 = 0;
      result = InitRsrcFunction(a1, a2, &v108);
      if ((result & 0x80000000) == 0)
      {
        v24 = a8;
        v25 = BYTE1(a8);
        v26 = BYTE2(a8);
        v96 = v25;
        v97 = v24;
        log_OutText(*(v108 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjOpen : Begin (%d, %s, %s, [%u.%u.%u])", v21, v22, v23, v14);
        memset(v101 + 8, 0, 40);
        *&v101[0] = v108;
        if (v14 == 4)
        {
          *&v101[2] = a5;
          DWORD2(v101[2]) = 0;
          HIDWORD(v101[2]) = a6;
        }

        else if (v14 == 1)
        {
          v27 = osspi_DataOpen(*(v108 + 64), *(v108 + 8), a4, &v101[1] + 1);
          if ((v27 & 0x80000000) != 0)
          {
            ChunkData = v27;
            v33 = *(v108 + 32);
            if (v19)
            {
              log_OutText(v33, "RIFFREADER", 4, 0, "osspi_DataOpen failed for %s, %x", v29, v30, v31, a4);
            }

            else
            {
              log_OutPublic(v33, "RIFFREADER", 27002, "%s%s%s%x", v28, v29, v30, v31, "file");
            }

            goto LABEL_45;
          }
        }

        else
        {
          result = brk_DataOpenEx(*(v108 + 24), a4, v19, &v101[1]);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_47;
          }
        }

        v34 = heap_Calloc(*(v108 + 8), 1, 112);
        if (!v34)
        {
          log_OutPublic(*(v108 + 32), "RIFFREADER", 27000, 0, v35, v36, v37, v38, v92);
          ssftriff_reader_loc_DataClose(v101, v60, v61, v62, v63, v64, v65, v66);
          result = 2317361162;
          goto LABEL_47;
        }

        v39 = v34;
        *v34 = a1;
        *(v34 + 8) = a2;
        v40 = v108;
        *(v34 + 16) = v108;
        *(v34 + 24) = v14;
        v41 = v101[1];
        *(v34 + 56) = v101[0];
        *(v34 + 72) = v41;
        *(v34 + 88) = v101[2];
        v42 = *(v40 + 8);
        v43 = strlen(a4);
        v44 = heap_Alloc(v42, (v43 + 1));
        *(v39 + 40) = v44;
        if (v44 && (strcpy(v44, a4), v49 = *(v108 + 8), v110 = SSFTRIFF_CHUNK_STACK_ELEM_IT, v111 = 0, vector_ObjOpen(v49, &v110, 4, (v39 + 48))))
        {
          v50 = ssftriff_reader_OpenChunk(v39, &v106, &v102, 0, v45, v46, v47, v48);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_97;
          }

          ChunkData = ssftriff_reader_GetChunkData(v39, 4, v100, v53, v54, v55, v56, v57);
          if ((ChunkData & 0x80000000) == 0)
          {
            if (v106 ^ 0x46464952 | v107)
            {
              if (v106 ^ 0x34464952 | v107)
              {
                if (v106 ^ 0x38464952 | v107)
                {
                  if (!*(v39 + 32))
                  {
                    goto LABEL_57;
                  }

LABEL_53:
                  ssftriff_reader_ReadFourCC(v39, *v100, v102, 0, __s2, v58);
                  if (v69 < 0)
                  {
LABEL_57:
                    v94 = *(v39 + 40);
                    log_OutPublic(*(v108 + 32), "RIFFREADER", 27004, "%s%s", v54, v55, v56, v57, "file");
                    goto LABEL_58;
                  }

                  if (*a7)
                  {
                    if (strcmp(a7, __s2))
                    {
                      v93 = *(v39 + 40);
                      log_OutPublic(*(v108 + 32), "RIFFREADER", 27005, "%s%s", v70, v55, v56, v57, "file");
LABEL_58:
                      ChunkData = 2317361156;
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    strcpy(a7, __s2);
                  }

                  *(v39 + 104) += 4;
                  v71 = v20 ^ 1;
                  if (v97)
                  {
                    v71 = 0;
                  }

                  if (v71)
                  {
LABEL_96:
                    *a9 = v39;
                    goto LABEL_44;
                  }

                  v72 = ssftriff_reader_OpenChunk(v39, &v106, &v102, v100, v70, v55, v56, v57);
                  v78 = v72;
                  if ((v72 & 0x80000000) == 0 && !(v106 ^ 0x5453494C | v107) && v102 >= 5)
                  {
                    ssftriff_reader_ReadFourCC(v39, *v100, v102, 0, __s2, v77);
                    if ((Chunk & 0x80000000) == 0)
                    {
                      if (*__s2 ^ 0x4F464E49 | v105 || (v80 = *(v39 + 104) + 4, *(v39 + 104) = v80, v80 < 0))
                      {
                        v78 = 0;
                        goto LABEL_85;
                      }

                      Chunk = ssftriff_reader_FindChunk(v39, "VERS", 3, &v102, v100);
                      if ((Chunk & 0x80000000) == 0)
                      {
                        Chunk = ssftriff_reader_ReadStringZ(v39, *v100, v102, 0, __str, &v103);
                        if ((Chunk & 0x80000000) == 0)
                        {
                          __endptr = 0;
                          v99 = __str;
                          v85 = strtol(__str, &__endptr, 10);
                          if (v85 < 1 || !__endptr || *__endptr != 46 || (v86 = strtol(__endptr + 1, &v99, 10), (v86 & 0x80000000) != 0) || !v99 || *v99 != 46 || (v87 = strtol(v99 + 1, &__endptr, 10), (v87 & 0x80000000) != 0) || !__endptr || *__endptr && *__endptr != 46)
                          {
                            log_OutPublic(*(v108 + 32), "RIFFREADER", 27008, "%s%s", v81, v82, v83, v84, "version");
                            goto LABEL_58;
                          }

                          if (v97 < v85 || v97 == v85 && (v96 < v86 || v96 == v86 && v26 < v87))
                          {
                            LH_itoa(v97, v109, 0xAu);
                            __strcpy_chk();
                            __strcat_chk();
                            LH_itoa(v96, v109, 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            LH_itoa(v26, v109, 0xAu);
                            __strcat_chk();
                            log_OutPublic(*(v108 + 32), "RIFFREADER", 27009, "%s%s%s%s", v88, v89, v90, v91, "productVersion");
                            goto LABEL_58;
                          }

                          v50 = ssftriff_reader_CloseChunk(v39);
                          if ((v50 & 0x80000000) == 0)
                          {
                            v50 = ssftriff_reader_CloseChunk(v39);
                            if ((v50 & 0x80000000) == 0)
                            {
                              ChunkData = 0;
                              goto LABEL_96;
                            }
                          }

LABEL_97:
                          ChunkData = v50;
                          goto LABEL_43;
                        }
                      }
                    }

                    v78 = Chunk;
                  }

LABEL_85:
                  v95 = *(v39 + 40);
                  log_OutPublic(*(v108 + 32), "RIFFREADER", 27006, "%s%s", v73, v74, v75, v76, "file");
                  if ((v78 & 0x1FFF) == 0xA)
                  {
                    ChunkData = 2317361162;
                  }

                  else
                  {
                    ChunkData = 2317361156;
                  }

                  goto LABEL_43;
                }

                v68 = 8;
              }

              else
              {
                v68 = 4;
              }
            }

            else
            {
              v68 = 2;
            }

            *(v39 + 32) = v68;
            goto LABEL_53;
          }
        }

        else
        {
          log_OutPublic(*(v108 + 32), "RIFFREADER", 27000, 0, v45, v46, v47, v48, v92);
          ChunkData = 2317361162;
        }

LABEL_43:
        ssftriff_reader_ObjClose(v39, v51, v52, v53, v54, v55, v56, v57);
        v59 = *a9;
LABEL_44:
        log_OutText(*(v108 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjOpen : End (%x, %p)", v55, v56, v57, ChunkData);
LABEL_45:
        result = ChunkData;
      }
    }
  }

LABEL_47:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ssftriff_reader_loc_DataClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    result = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    return result;
  }

  if (*(a1 + 32))
  {
    result = ssftriff_loc_DataUnmap(*a1, a1, a3, a4, a5, a6, a7, a8);
    *(a1 + 32) = 0;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  v10 = *(a1 + 16);
  if (!v10 || (result = brk_DataClose(*(*a1 + 24), v10), *(a1 + 16) = 0, (result & 0x80000000) == 0))
  {
    if (*(a1 + 24))
    {
      result = osspi_DataClose(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  return result;
}

uint64_t ssftriff_reader_OpenChunk(uint64_t a1, _BYTE *a2, unsigned int *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 2317361156;
  v45 = 0;
  result = 2317361159;
  if (a2 && a1 && a3)
  {
    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_OpenChunk : Begin (%p)", a6, a7, a8, a1);
    if (vector_StackTop(*(a1 + 48), &v45))
    {
      v19 = *(a1 + 104);
      if (v19 + 8 > *(v45 + 12))
      {
        log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 3, 0, "Chunk open failed: no more chunks", v15, v16, v17, v39);
        v9 = 2317361172;
        goto LABEL_39;
      }

      v24 = *(a1 + 88);
      if (v24 && v19 >= *(a1 + 96) && v19 + 8 <= *(a1 + 100))
      {
        goto LABEL_17;
      }

      v23 = ssftriff_loc_DataMap(a1, *(a1 + 104), 8, a1 + 56, v14, v15, v16, v17);
      if ((v23 & 0x80000000) == 0)
      {
        v24 = *(a1 + 88);
        v19 = *(a1 + 104);
        goto LABEL_17;
      }
    }

    else
    {
      v23 = ssftriff_loc_DataMap(a1, 0, 8, a1 + 56, v14, v15, v16, v17);
      *(a1 + 104) = 0;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = *(a1 + 88);
        v25 = *v24;
        if (v25 == 251 || v25 == 224)
        {
          v19 = 0;
          *(a1 + 28) = 1;
        }

        else
        {
          v19 = 0;
        }

LABEL_17:
        ssftriff_reader_ReadFourCC(a1, v24, *(a1 + 100), v19 - *(a1 + 96), a2, v18);
        if ((v23 & 0x80000000) == 0)
        {
          v27 = 0;
          *a3 = *(*(a1 + 88) + (*(a1 + 104) - *(a1 + 96) + 4));
          *(a1 + 104) += 8;
          do
          {
            v28 = a2[v27];
            if ((v28 & 0xFFFFFFDF) - 65 >= 0x1A)
            {
              v29 = v28 != 32 && (v28 - 48) >= 0xA;
              if (v29)
              {
                v34 = *(*(a1 + 16) + 32);
                v35 = *(a1 + 40);
                if (v45)
                {
                  v42 = (*(a1 + 104) - 8);
                  log_OutPublic(v34, "RIFFREADER", 27011, "%s%s%s%s%s%u", v26, v20, v21, v22, "file");
                }

                else
                {
                  log_OutPublic(v34, "RIFFREADER", 27004, "%s%s", v26, v20, v21, v22, "file");
                }

                goto LABEL_39;
              }
            }

            v29 = v27++ >= 3;
          }

          while (!v29);
          if (v45)
          {
            v30 = *(v45 + 12);
            if (*a3 > v30 || *(a1 + 104) + *a3 > v30)
            {
              v40 = *(a1 + 40);
              log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27012, "%s%s%s%s", v26, v20, v21, v22, "file");
              goto LABEL_39;
            }
          }

          if (!a4)
          {
LABEL_35:
            v33 = 0;
            goto LABEL_45;
          }

          v31 = *(a1 + 104);
          if (*(a1 + 88))
          {
            v32 = *a3;
            if (v31 >= *(a1 + 96) && (v32 + v31) <= *(a1 + 100))
            {
              goto LABEL_35;
            }
          }

          else
          {
            v32 = *a3;
          }

          v33 = ssftriff_loc_DataMap(a1, v31, v32, a1 + 56, v26, v20, v21, v22);
          if ((v33 & 0x80000000) != 0)
          {
            v36 = 0;
            *a2 = 0;
            *a3 = 0;
            goto LABEL_51;
          }

LABEL_45:
          v43 = 0;
          v44 = 0;
          __strcpy_chk();
          v37 = *a3 + *(a1 + 104);
          LODWORD(v44) = *(a1 + 104);
          HIDWORD(v44) = v37;
          if (vector_Add(*(a1 + 48), &v43))
          {
            if (a4)
            {
              v36 = *(a1 + 88) + (*(a1 + 104) - *(a1 + 96));
LABEL_51:
              v9 = v33;
              goto LABEL_40;
            }

            v9 = v33;
          }

          else
          {
            log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v38, v20, v21, v22, v39);
            v36 = 0;
            *a2 = 0;
            *a3 = 0;
            v9 = 2317361162;
            if (a4)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_41;
        }
      }
    }

    v9 = v23;
LABEL_39:
    v36 = 0;
    *a2 = 0;
    *a3 = 0;
    if (a4)
    {
LABEL_40:
      *a4 = v36;
    }

LABEL_41:
    v41 = *a3;
    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_OpenChunk : End (%x, %s, %u, %p)", v20, v21, v22, v9);
    return v9;
  }

  return result;
}

uint64_t ssftriff_reader_GetChunkData(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2317361159;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 88))
    {
      log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_GetChunkData : Begin (%p, %u, %p)", a6, a7, a8, a1);
      v16 = *(a1 + 88);
      v17 = *(a1 + 104);
      if (v16 && (v18 = *(a1 + 96), v17 >= v18) && (v17 + a2) <= *(a1 + 100))
      {
        v8 = 0;
      }

      else
      {
        v8 = ssftriff_loc_DataMap(a1, v17, a2, a1 + 56, v12, v13, v14, v15);
        if ((v8 & 0x80000000) != 0)
        {
          v19 = 0;
LABEL_14:
          *a3 = v19;
          log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_GetChunkData : End (%x, %p)", v13, v14, v15, v8);
          return v8;
        }

        v16 = *(a1 + 88);
        LODWORD(v17) = *(a1 + 104);
        v18 = *(a1 + 96);
      }

      v19 = v16 + v17 - v18;
      goto LABEL_14;
    }

    return 2317361169;
  }

  return v8;
}

uint8x8_t ssftriff_reader_ReadFourCC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint8x8_t result)
{
  if (a1 && a2 && a4 + 4 <= a3 && a5)
  {
    *a5 = *(a2 + a4);
    *(a5 + 4) = 0;
    if (*(a1 + 28) == 1)
    {
      result.i32[0] = *a5;
      v6 = veor_s8(*&vmovl_u8(result), 0xA900A900A900A9);
      result = vuzp1_s8(v6, v6);
      *a5 = result.i32[0];
    }
  }

  return result;
}

uint64_t ssftriff_reader_FindChunk(uint64_t a1, const char *a2, int a3, unsigned int *a4, uint64_t *a5)
{
  v37 = 0;
  v34 = 0;
  ChunkData = 2317361159;
  if (!a1)
  {
    return ChunkData;
  }

  if (!a4)
  {
    return ChunkData;
  }

  Size = vector_GetSize(*(a1 + 48));
  if (!Size)
  {
    return ChunkData;
  }

  v15 = Size;
  v36 = 0;
  *__s1 = 0;
  log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_FindChunk : Begin (%p, %s, %d)", v12, v13, v14, a1);
  if (!vector_ObjClone(*(a1 + 48), &v34))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v16, v17, v18, v19, v33);
    return 2317361162;
  }

  v20 = *(a1 + 104);
  v21 = 27014;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    if (vector_StackTop(*(a1 + 48), &v37))
    {
      *(a1 + 104) = *(v37 + 8);
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!a3)
  {
    *(a1 + 104) = 12;
    if (v15 != 1)
    {
      do
      {
        vector_StackPop(*(a1 + 48));
        --v15;
      }

      while (v15 > 1);
    }

LABEL_22:
    while (1)
    {
      ChunkData = ssftriff_reader_OpenChunk(a1, __s1, a4, 0, v16, v17, v18, v19);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

      if (!strcmp(__s1, a2))
      {
        if (a5)
        {
          ChunkData = ssftriff_reader_GetChunkData(a1, *a4, a5, v22, v23, v24, v25, v26);
          if ((ChunkData & 0x80000000) != 0)
          {
            v31 = 1;
            goto LABEL_33;
          }
        }

        vector_ObjClose(v34);
        v28 = *(*(a1 + 16) + 32);
        v29 = *a4;
        if (a5)
        {
          v30 = *a5;
        }

        goto LABEL_41;
      }

      v27 = ssftriff_reader_CloseChunk(a1);
      if (v27 < 0)
      {
        LODWORD(ChunkData) = v27;
        goto LABEL_32;
      }
    }
  }

  if (a3 == 1)
  {
    if (v15 == 1)
    {
      goto LABEL_22;
    }

    if (vector_GetElemAt(*(a1 + 48), 1u, &v37))
    {
      *(a1 + 104) = *(v37 + 12);
      do
      {
        vector_StackPop(*(a1 + 48));
        --v15;
      }

      while (v15 > 1);
      goto LABEL_22;
    }

LABEL_30:
    LODWORD(ChunkData) = -1977606136;
    v21 = 27013;
  }

LABEL_31:
  log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", v21, "%s%s", v16, v17, v18, v19, "chunk");
LABEL_32:
  v31 = a5 != 0;
LABEL_33:
  if ((ChunkData & 0x1FFF) == 0xA)
  {
    ChunkData = ChunkData;
  }

  else
  {
    ChunkData = 2317361172;
  }

  if (v34)
  {
    vector_ObjClose(*(a1 + 48));
    *(a1 + 48) = v34;
    *(a1 + 104) = v20;
  }

  *a4 = 0;
  if (v31)
  {
    *a5 = 0;
  }

  v28 = *(*(a1 + 16) + 32);
LABEL_41:
  log_OutText(v28, "RIFFREADER", 4, 0, "ssftriff_reader_FindChunk : End (%x, %u, %p)", v17, v18, v19, ChunkData);
  return ChunkData;
}

uint64_t ssftriff_reader_ReadStringZ(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *__dst, unsigned int *a6)
{
  result = 2317361159;
  if (a1)
  {
    if (a2)
    {
      if (a4 <= a3)
      {
        if (a6)
        {
          v9 = __dst;
          v10 = *a6;
          if (__dst || !v10)
          {
            v11 = (a2 + a4);
            if (*(a1 + 28) == 1)
            {
              v12 = 0;
              while (v11[v12] != 169)
              {
                ++v12;
                if (a4 + v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            else
            {
              v12 = 0;
              while (v11[v12])
              {
                ++v12;
                if (a4 + v12 > a3)
                {
                  return 2317361156;
                }
              }
            }

            if (v12 + 1 <= v10)
            {
              v13 = v12;
              memcpy(__dst, v11, v12);
              v9[v12] = 0;
              if (*(a1 + 28) == 1 && v12 != 0)
              {
                do
                {
                  *v9++ ^= 0xA9u;
                  --v13;
                }

                while (v13);
              }

              result = 0;
            }

            else
            {
              result = 2317361161;
              if (v10)
              {
                *__dst = 0;
              }
            }

            *a6 = v12 + 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ssftriff_reader_CloseChunk(uint64_t a1)
{
  v1 = 2317361152;
  v18 = 0;
  if (!a1)
  {
    return 2317361159;
  }

  v7 = vector_StackTop(*(a1 + 48), &v18);
  v8 = *(*(a1 + 16) + 32);
  if (v7)
  {
    log_OutText(v8, "RIFFREADER", 4, 0, "ssftriff_reader_CloseChunk : Begin (%p, %s)", v4, v5, v6, a1);
    v9 = *(v18 + 12);
    *(a1 + 104) = v9;
    v10 = *(a1 + 32);
    if (v9 % v10)
    {
      *(a1 + 104) = v9 - v9 % v10 + v10;
    }

    if (vector_StackPop(*(a1 + 48)))
    {
      v1 = 0;
    }

    else
    {
      v17 = *(a1 + 40);
      log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27016, "%s%s", v11, v12, v13, v14, "file");
      v1 = 2317361160;
    }

    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_CloseChunk : End (%x)", v12, v13, v14, v1);
  }

  else
  {
    v16 = *(a1 + 40);
    log_OutPublic(v8, "RIFFREADER", 27015, "%s%s", v3, v4, v5, v6, "file");
  }

  return v1;
}

uint64_t ssftriff_reader_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2317361159;
  }

  v9 = a1[2];
  log_OutText(*(v9 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjClose : Begin (%p)", a6, a7, a8, a1);
  v20 = ssftriff_reader_loc_DataClose((a1 + 7), v10, v11, v12, v13, v14, v15, v16);
  v21 = a1[5];
  if (v21)
  {
    heap_Free(*(a1[2] + 8), v21);
  }

  v22 = a1[6];
  if (v22)
  {
    vector_ObjClose(v22);
  }

  if ((v20 & 0x80000000) == 0)
  {
    heap_Free(*(a1[2] + 8), a1);
  }

  log_OutText(*(v9 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ObjClose : End (%x)", v17, v18, v19, v20);
  return v20;
}

uint64_t ssftriff_loc_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a3 <= 0x20)
  {
    v12 = 32;
  }

  else
  {
    v12 = a3;
  }

  v29 = v12;
  if (*(a4 + 8))
  {
    LODWORD(v13) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
  }

  else if (*(a4 + 32))
  {
    v13 = ssftriff_loc_DataUnmap(*(a1 + 16), a4, a3, a4, a5, a6, a7, a8);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 3, 0, "Map offset %u, %u bytes", a6, a7, a8, a2);
  v21 = *(a1 + 24);
  switch(v21)
  {
    case 4:
      if (v9 + a2 <= *(a4 + 44))
      {
        v13 = v13;
      }

      else
      {
        v13 = 2317361156;
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    case 1:
      v26 = *(a4 + 24);
      if (!v26)
      {
        v24 = osspi_DataOpen(*(*(a1 + 16) + 64), *(*(a1 + 16) + 8), *(a1 + 40), (a4 + 24));
        if ((v24 & 0x80000000) != 0)
        {
LABEL_30:
          v13 = v24;
          goto LABEL_31;
        }

        v26 = *(a4 + 24);
      }

      v25 = osspi_DataMap(v26, a2, &v29, (a4 + 32));
LABEL_20:
      v13 = v25;
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

LABEL_26:
      if (v29 < v9)
      {
        ssftriff_loc_DataUnmap(*(a1 + 16), a4, v14, v15, v16, v17, v18, v19);
        v13 = 2317361156;
      }

      goto LABEL_31;
    case 0:
      v22 = *(a4 + 16);
      if (v22)
      {
LABEL_12:
        v25 = brk_DataMapEx(*(*(a1 + 16) + 24), v22, a2, &v29, a4 + 32);
        goto LABEL_20;
      }

      v23 = *(a1 + 40);
      v24 = brk_DataOpen(*(*(a1 + 16) + 24));
      if ((v24 & 0x80000000) == 0)
      {
        v22 = *(a4 + 16);
        goto LABEL_12;
      }

      goto LABEL_30;
  }

  v13 = 2317361153;
LABEL_31:
  if (*(a4 + 16) || *(a4 + 24))
  {
    if ((v13 & 0x80000000) != 0)
    {
      *&v20 = 0;
      *(a4 + 32) = v20;
    }

    else
    {
      v27 = v29 + a2;
      *(a4 + 40) = a2;
      *(a4 + 44) = v27;
    }
  }

  return v13;
}

uint64_t ssftriff_reader_DetachChunkData(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v8 = 2317361159;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 88))
    {
      log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_DetachChunkData : Begin (%p)", a6, a7, a8, a1);
      v12 = heap_Calloc(*(*(a1 + 16) + 8), 1, 48);
      *a2 = v12;
      if (v12)
      {
        if (vector_StackTop(*(a1 + 48), &v29))
        {
          if (!*(a1 + 64) && *(a1 + 88) && *(a1 + 96) == *(a1 + 104) && *(a1 + 100) == *(v29 + 12))
          {
            v8 = 0;
            goto LABEL_9;
          }

          v8 = ssftriff_loc_DataMap(a1, *(a1 + 104), (*(v29 + 12) - *(a1 + 104)), a1 + 56, v17, v18, v19, v20);
          if ((v8 & 0x80000000) == 0)
          {
LABEL_9:
            v21 = *(a1 + 24);
            if (v21 == 1)
            {
              osspi_DataFreeze(*(a1 + 80));
            }

            else if (!v21)
            {
              brk_DataFreeze(*(*(a1 + 16) + 24), *(a1 + 72));
            }

            v22 = *a2;
            v23 = *(a1 + 56);
            v24 = *(a1 + 88);
            v22[1] = *(a1 + 72);
            v22[2] = v24;
            *v22 = v23;
            if (*(a1 + 24) != 4)
            {
              *(a1 + 64) = 1;
            }

            *a3 = *(*a2 + 32);
            v25 = *a2;
LABEL_26:
            log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_DetachChunkData : End (%x, %p)", v18, v19, v20, v8);
            return v8;
          }
        }

        else
        {
          v28 = *(a1 + 40);
          log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27013, "%s%s", v17, v18, v19, v20, "file");
          v8 = 2317361152;
        }
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "RIFFREADER", 27000, 0, v13, v14, v15, v16, v27);
        v8 = 2317361162;
      }

      if (*a2)
      {
        heap_Free(*(*(a1 + 16) + 8), *a2);
        *a2 = 0;
      }

      goto LABEL_26;
    }

    return 2317361169;
  }

  return v8;
}

uint64_t ssftriff_reader_ReleaseChunkData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2317361159;
  if (a1 && a1[4])
  {
    v10 = *a1;
    log_OutText(*(*a1 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ReleaseChunkData : Begin (%p)", a6, a7, a8, a1);
    v8 = ssftriff_reader_loc_DataClose(a1, v11, v12, v13, v14, v15, v16, v17);
    heap_Free(*(*a1 + 8), a1);
    log_OutText(*(v10 + 32), "RIFFREADER", 4, 0, "ssftriff_reader_ReleaseChunkData : End (%x)", v18, v19, v20, v8);
  }

  return v8;
}

uint64_t ssftriff_reader_ReadStringW(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *__dst, unsigned int *a6)
{
  result = 2317361159;
  if (a1)
  {
    if (a2)
    {
      if (a4 + 2 <= a3)
      {
        if (a6)
        {
          v9 = __dst;
          v10 = *a6;
          if (__dst || !v10)
          {
            v11 = (a2 + a4);
            v12 = *v11;
            if (a4 + 2 + v12 <= a3)
            {
              if (v10 <= v12)
              {
                result = 2317361161;
                if (v10)
                {
                  *__dst = 0;
                }
              }

              else
              {
                memcpy(__dst, v11 + 1, *v11);
                result = 0;
                v9[v12] = 0;
                if (*(a1 + 28) == 1 && v12)
                {
                  v13 = v12;
                  do
                  {
                    *v9++ ^= 0xA9u;
                    --v13;
                  }

                  while (v13);
                  result = 0;
                }
              }
            }

            else
            {
              result = 2317361156;
            }

            *a6 = v12 + 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ssftriff_reader_Seek(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 2317361159;
  v16 = 0;
  if (a1)
  {
    if (vector_StackTop(*(a1 + 48), &v16))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2317361169;
    }

    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_Seek : Begin (%p, %d, %d, %s)", v7, v8, v9, a1);
    if (a3 == 1)
    {
      v14 = *(a1 + 104) + a2;
      if (v14 < *(v16 + 8) || v14 > *(v16 + 12))
      {
        goto LABEL_15;
      }

      *(a1 + 104) = v14;
    }

    else
    {
      if (a3 || (a2 & 0x80000000) != 0 || *(v16 + 8) > a2 || *(v16 + 12) < a2)
      {
        goto LABEL_15;
      }

      *(a1 + 104) = a2;
    }

    v3 = v10;
LABEL_15:
    log_OutText(*(*(a1 + 16) + 32), "RIFFREADER", 4, 0, "ssftriff_reader_Seek : End (%x)", v11, v12, v13, v3);
  }

  return v3;
}

uint64_t ssftriff_reader_GetPosition(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t ssftriff_loc_DataUnmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  log_OutText(*(a1 + 32), "RIFFREADER", 3, 0, "Unmap %p (%u - %u)", a6, a7, a8, *(a2 + 32));
  if (*(v10 - 6))
  {
    result = 0;
  }

  else
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      result = brk_DataUnmap(*(a1 + 24), v12, *v10);
    }

    else
    {
      result = *(a2 + 24);
      if (result)
      {
        result = osspi_DataUnmap(result, *v10);
      }
    }
  }

  if (*(a2 + 16) || *(a2 + 24))
  {
    *v10 = 0;
    v10[1] = 0;
  }

  return result;
}

uint64_t stringmap_reader_ObjOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t *a5)
{
  v63 = 0;
  v6 = 2317361156;
  v60 = 0;
  v59 = 0;
  result = 2317361159;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        v62 = 0;
        v61 = 0;
        *a5 = 0;
        result = InitRsrcFunction(a1, a2, &v63);
        if ((result & 0x80000000) == 0)
        {
          log_OutText(*(v63 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjOpen : Begin (%s, %p)", v12, v13, v14, a3);
          v15 = heap_Calloc(*(v63 + 8), 1, 88);
          if (!v15)
          {
            log_OutPublic(*(v63 + 32), "STRINGMAPREADER", 28000, 0, v16, v17, v18, v19, v58);
            return 2317361162;
          }

          v20 = v15;
          *v15 = a1;
          v15[1] = a2;
          v21 = v63;
          v15[2] = v63;
          v22 = *(v21 + 8);
          v23 = strlen(a3);
          v24 = heap_Alloc(v22, (v23 + 1));
          v20[3] = v24;
          if (v24)
          {
            strcpy(v24, a3);
            v33 = ssftriff_reader_OpenChunk(a4, &v61, &v60, &v59, v29, v30, v31, v32);
            if ((v33 & 0x80000000) == 0)
            {
              if (v61 ^ 0x434D5453 | v62)
              {
                v41 = 28001;
LABEL_15:
                v42 = *(v63 + 32);
                v43 = v20[3];
LABEL_16:
                log_OutPublic(v42, "STRINGMAPREADER", v41, "%s%s%s%s", v37, v38, v39, v40, "file");
                ssftriff_reader_CloseChunk(a4);
                goto LABEL_17;
              }

              if (v60 <= 9)
              {
                v41 = 28002;
                goto LABEL_15;
              }

              v48 = v59;
              *(v20 + 16) = *v59;
              v59 = v48 + 1;
              *(v20 + 18) = v48[1];
              v59 = v48 + 2;
              *(v20 + 19) = v48[2];
              v59 = v48 + 3;
              *(v20 + 20) = v48[3];
              v49 = v48[4];
              v59 = v48 + 4;
              *(v20 + 32) = v49;
              ssftriff_reader_CloseChunk(a4);
              v54 = ssftriff_reader_OpenChunk(a4, &v61, &v60, &v59, v50, v51, v52, v53);
              if ((v54 & 0x80000000) == 0)
              {
                if (v61 ^ 0x464D5453 | v62)
                {
                  v41 = 28001;
LABEL_25:
                  v42 = *(v63 + 32);
                  v55 = v20[3];
                  goto LABEL_16;
                }

                if (v60 < (*(v20 + 19) + *(v20 + 18)) * *(v20 + 20))
                {
                  v41 = 28002;
                  goto LABEL_25;
                }

                if ((ssftriff_reader_DetachChunkData(a4, v20 + 7, &v59, v36, v37, v38, v39, v40) & 0x80000000) == 0)
                {
                  v20[6] = v59;
                }

                ssftriff_reader_CloseChunk(a4);
                if (!*(v20 + 32))
                {
                  goto LABEL_39;
                }

                v54 = ssftriff_reader_OpenChunk(a4, &v61, &v60, &v59, v56, v44, v45, v46);
                if ((v54 & 0x80000000) == 0)
                {
                  if (v61 ^ 0x524D5453 | v62)
                  {
                    v41 = 28001;
LABEL_35:
                    v42 = *(v63 + 32);
                    v57 = v20[3];
                    goto LABEL_16;
                  }

                  if (v60 < (*(v20 + 19) + *(v20 + 18)) * *(v20 + 32))
                  {
                    v41 = 28002;
                    goto LABEL_35;
                  }

                  if ((ssftriff_reader_DetachChunkData(a4, v20 + 10, &v59, v36, v37, v38, v39, v40) & 0x80000000) == 0)
                  {
                    v20[9] = v59;
                  }

                  ssftriff_reader_CloseChunk(a4);
LABEL_39:
                  *a5 = v20;
                  v6 = v54;
                  goto LABEL_18;
                }
              }

              v6 = v54;
              goto LABEL_17;
            }

            v6 = v33;
          }

          else
          {
            log_OutPublic(*(v63 + 32), "STRINGMAPREADER", 28000, 0, v25, v26, v27, v28, v58);
            v6 = 2317361162;
          }

LABEL_17:
          stringmap_reader_ObjClose(v20, v34, v35, v36, v37, v38, v39, v40);
          v47 = *a5;
LABEL_18:
          log_OutText(*(v63 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjOpen : End (%x, %p)", v44, v45, v46, v6);
          return v6;
        }
      }
    }
  }

  return result;
}

uint64_t stringmap_reader_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2317361159;
  }

  v9 = a1[2];
  log_OutText(*(v9 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjClose : Begin (%p)", a6, a7, a8, a1);
  v17 = a1[7];
  if (v17)
  {
    v18 = ssftriff_reader_ReleaseChunkData(v17, v10, v11, v12, v13, v14, v15, v16);
    v19 = v18 & (v18 >> 31);
  }

  else
  {
    v19 = 0;
  }

  v20 = a1[10];
  if (v20)
  {
    v21 = ssftriff_reader_ReleaseChunkData(v20, v10, v11, v12, v13, v14, v15, v16);
    if (v21 >= 0 || v19 <= -1)
    {
      v19 = v19;
    }

    else
    {
      v19 = v21;
    }
  }

  v23 = a1[3];
  if (v23)
  {
    heap_Free(*(a1[2] + 8), v23);
  }

  if ((v19 & 0x80000000) == 0)
  {
    heap_Free(*(v9 + 8), a1);
  }

  log_OutText(*(v9 + 32), "STRINGMAPREADER", 4, 0, "stringmap_reader_ObjClose : End (%x)", v14, v15, v16, v19);
  return v19;
}

uint64_t stringmap_reader_Map(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      v3 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_Map(0, *(a1 + 40), v5, *(a1 + 36), *(a1 + 38), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_loc_Map(int a1, int a2, uint64_t a3, unsigned int a4, __int16 a5, char *__s2, uint64_t *a7)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v12 = 0;
  v13 = a2 - 1;
  v14 = (a5 + a4);
  while (1)
  {
    v15 = (v13 + v12) / 2;
    v16 = v15 * v14;
    v17 = v15 * v14;
    if (a1)
    {
      v18 = LH_wcscmp((a3 + 2 * v16), __s2);
      if (v18 < 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v18 = strcmp((a3 + v16), __s2);
      if (v18 < 0)
      {
LABEL_8:
        v12 = v15 + 1;
        goto LABEL_9;
      }
    }

    if (!v18)
    {
      break;
    }

    v13 = v15 - 1;
LABEL_9:
    if (v12 > v13)
    {
      goto LABEL_14;
    }
  }

  v19 = a3 + 2 * v17 + 2 * a4;
  if (!a1)
  {
    v19 = a3 + v17 + a4;
  }

  *a7 = v19;
LABEL_14:
  if (*a7)
  {
    return 0;
  }

  else
  {
    return 2317361172;
  }
}

uint64_t stringmap_reader_ReverseMap(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      v3 = 2317361153;
      if (!*(a1 + 32))
      {
        return stringmap_loc_Map(0, *(a1 + 64), v5, *(a1 + 38), *(a1 + 36), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_reader_WReverseMap(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2317361159;
  if (a1 && __s2 && a3)
  {
    *a3 = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      v3 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_Map(1, *(a1 + 64), v5, *(a1 + 38), *(a1 + 36), __s2, a3);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v3;
}

uint64_t stringmap_loc_MapToken(int a1, int a2, uint64_t a3, unsigned int a4, __int16 a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t *a8)
{
  v37 = 0;
  v13 = a2 - 1;
  v34 = a2 - 1;
  v14 = a5 + a4;
  if (a2)
  {
    v15 = 0;
    while (1)
    {
      v16 = (v13 + v15) / 2;
      v17 = stringmap_loc_ElemCompare(a1, a3, v14, v16, a6, &v37);
      if (v17)
      {
        break;
      }

      if (v37 < 0)
      {
        v15 = v16 + 1;
      }

      if (v37 >= 1)
      {
        v13 = v16 - 1;
      }

      if (v15 > v13)
      {
        goto LABEL_11;
      }
    }

    v23 = v17;
    v15 = (v13 + v15) / 2;
LABEL_21:
    v33 = a7;
    if (v15 < 1)
    {
      v26 = v15;
    }

    else
    {
      v25 = v15 + 1;
      v26 = v15;
      do
      {
        if (!stringmap_loc_ElemsCompare(a1, a3, v14, v26, v25 - 2, &v37))
        {
          break;
        }

        v27 = stringmap_loc_ElemCompare(a1, a3, v14, v25 - 2, a6, &v37);
        if (v27 > v23)
        {
          v26 = v25 - 2;
          v23 = v27;
        }

        --v25;
      }

      while (v25 > 1);
    }

    if (v15 < v34)
    {
      v28 = v15 + 1;
      do
      {
        if (!stringmap_loc_ElemsCompare(a1, a3, v14, v26, v28, &v37))
        {
          break;
        }

        v29 = stringmap_loc_ElemCompare(a1, a3, v14, v28, a6, &v37);
        if (v29 > v23)
        {
          v26 = v28;
          v23 = v29;
        }

        ++v28;
      }

      while (a2 != v28);
    }

    result = 0;
    v30 = v26 * v14;
    v31 = a3 + v30 + a4;
    v32 = a3 + 2 * v30 + 2 * a4;
    if (!a1)
    {
      v32 = v31;
    }

    *a8 = v32;
    *v33 = v23;
  }

  else
  {
    v15 = 0;
LABEL_11:
    v18 = (v15 - 1) * v14;
    while (1)
    {
      v19 = __OFSUB__(v15, 1);
      if (--v15 < 0 != v19)
      {
        return 2317361172;
      }

      if (a1)
      {
        v20 = *(a3 + 2 * v18);
        v21 = *a6;
      }

      else
      {
        v20 = *(a3 + v18);
        v21 = *a6;
      }

      if (v20 != v21)
      {
        return 2317361172;
      }

      v22 = stringmap_loc_ElemCompare(a1, a3, v14, v15, a6, &v37);
      v18 -= v14;
      if (v22)
      {
        v23 = v22;
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t stringmap_reader_WMapToken(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v4 = 2317361159;
  if (a1 && a2 && a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v6 = *(a1 + 48);
    if (v6)
    {
      v4 = 2317361153;
      if (*(a1 + 32) == 1)
      {
        return stringmap_loc_MapToken(1, *(a1 + 40), v6, *(a1 + 36), *(a1 + 38), a2, a3, a4);
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return v4;
}

uint64_t stringmap_reader_MapGetRawData(uint64_t a1, _DWORD *a2, void *a3)
{
  result = 2317361159;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      result = 2317361153;
      if (!*(a1 + 32))
      {
        result = 0;
        *a2 = (*(a1 + 38) + *(a1 + 36)) * *(a1 + 40);
        *a3 = v5;
      }
    }

    else
    {
      return 2317361153;
    }
  }

  return result;
}

uint64_t stringmap_loc_ElemCompare(int a1, uint64_t a2, int a3, int a4, unsigned __int16 *a5, int *a6)
{
  v6 = a3 * a4;
  if (a1)
  {
    return stringmap_loc_WCompare((a2 + 2 * v6), a5, a6);
  }

  else
  {
    return stringmap_loc_Compare((a2 + v6), a5, a6);
  }
}

uint64_t stringmap_loc_ElemsCompare(int a1, uint64_t a2, int a3, int a4, int a5, int *a6)
{
  v6 = a3 * a4;
  v7 = a3 * a5;
  if (a1)
  {
    return stringmap_loc_WCompare((a2 + 2 * v6), (a2 + 2 * v7), a6);
  }

  else
  {
    return stringmap_loc_Compare((a2 + v6), (a2 + v7), a6);
  }
}

uint64_t stringmap_loc_WCompare(_WORD *a1, unsigned __int16 *a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = a2 + 1;
    v7 = a1;
    do
    {
      v9 = v7[1];
      ++v7;
      v3 = v9;
      v11 = *v8++;
      v10 = v11;
      if (v3)
      {
        v12 = v3 == v10;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v12);
    v6 = v3 - v10;
  }

  else
  {
    v6 = v3 - v4;
    LODWORD(v7) = a1;
  }

  *a3 = v6;
  v13 = (v7 - a1) >> 1;
  if (v3)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t stringmap_loc_Compare(unsigned __int8 *a1, unsigned __int8 *a2, int *a3)
{
  v3 = a1;
  v4 = *a1 - *a2;
  *a3 = v4;
  if (!v4)
  {
    v5 = a2 + 1;
    v3 = a1;
    do
    {
      if (!*v3)
      {
        break;
      }

      v7 = *++v3;
      v6 = v7;
      v8 = *v5++;
      v9 = v6 - v8;
      *a3 = v9;
    }

    while (!v9);
  }

  v10 = *v3;
  v11 = v3 - a1;
  if (v10)
  {
    return 0;
  }

  return v11;
}

uint64_t InitRsrcFunction(_WORD *a1, int a2, void *a3)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v7))
  {
    v8 = 0;
    goto LABEL_3;
  }

  v8 = 2170560520;
  result = safeh_HandleCheck(a1, a2, 7777, 408);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      v8 = 2170560520;
    }

    else
    {
      v8 = result;
    }

    goto LABEL_3;
  }

  *a3 = a1;
  if (!a1 || *a1 != 7777)
  {
LABEL_3:
    *a3 = &g_NullResource;
    return v8;
  }

  return result;
}

uint64_t rsrc_Open(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2170560518;
  if (a5)
  {
    v11 = heap_Calloc(a1, 408, 1);
    if (v11)
    {
      v5 = 0;
      *a5 = v11;
      *(a5 + 8) = 7777;
      *v11 = 7777;
      *(v11 + 8) = a1;
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      *(v11 + 32) = a4;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      return 2170560522;
    }
  }

  return v5;
}

uint64_t rsrc_Close(_WORD *a1, int a2)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    v3 = v6;
    if (v6)
    {
      v4 = *(v6 + 8);
      *(v6 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 144) = 0u;
      *(v3 + 160) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 208) = 0u;
      *(v3 + 224) = 0u;
      *(v3 + 240) = 0u;
      *(v3 + 256) = 0u;
      *(v3 + 272) = 0u;
      *(v3 + 288) = 0u;
      *(v3 + 304) = 0u;
      *(v3 + 320) = 0u;
      *(v3 + 336) = 0u;
      *(v3 + 352) = 0u;
      *(v3 + 368) = 0u;
      *(v3 + 384) = 0u;
      *(v3 + 400) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      heap_Free(v4, v3);
    }
  }

  return inited;
}

uint64_t Utf8_DepesLengthInBytesUtf8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2;
  do
  {
    v6 = *a1++;
    v5 = v6;
    if (v6 <= 0xAFuLL)
    {
      v7 = UNICODE_TO_DEPES[v5];
      if (v7 < 0x800)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (v7 < 0x80)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      result = (v9 + result);
    }

    --v4;
  }

  while (v4);
  return result;
}

uint64_t utf8_DepesToUtf8(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, unsigned int *a6, _DWORD *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  if (!a2 || !a5)
  {
LABEL_22:
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = 0;
  v7 = 0;
  while (1)
  {
    if (a7)
    {
      *a7 = v10;
      a7[1] = v7;
      a7 += 2;
    }

    v11 = *(a1 + v10);
    if (v11 > 0xAF)
    {
      goto LABEL_19;
    }

    v12 = UNICODE_TO_DEPES[v11];
    v13 = v12 < 0x800 ? 2 : 3;
    v14 = v12 < 0x80 ? 1 : v13;
    if (v14 + v7 > a5)
    {
      break;
    }

    if (v14 != 1)
    {
      if (v14 != 2)
      {
        *(a4 + v7 + 2) = v12 & 0x3F | 0x80;
        v12 >>= 6;
      }

      *(a4 + v7 + 1) = v12 & 0x3F | 0x80;
      v12 >>= 6;
    }

    *(a4 + v7) = UTF8_FIRST_BYTE_MARK[v14] | v12;
    v7 += v14;
LABEL_19:
    if (++v10 >= a2 || v7 >= a5)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_22;
    }
  }

  LODWORD(v10) = v10 + 1;
  *(a4 + v7) = 0;
  v8 = 1;
  v9 = -1950343159;
  if (a3)
  {
LABEL_23:
    *a3 = v10;
  }

LABEL_24:
  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  if (v15)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8ToDepes(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int *a6, unsigned int *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a2 && a5)
  {
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + v10);
      v12 = UTF8_TRAILING_BYTES[*(a1 + v10)];
      v8 = v10 + v12 <= a2;
      if (v10 + v12 > a2)
      {
        v9 = 197140487;
        goto LABEL_40;
      }

      if ((UTF8_BYTE_INDICATOR_TEST[v12] & v11) != UTF8_BYTE_INDICATOR[v12])
      {
        break;
      }

      if (a7)
      {
        *a7 = v10;
        a7[1] = v7;
        a7 += 2;
        v11 = *(a1 + v10);
      }

      v13 = v10 + 1;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v16 = *(a1 + v13);
          if (v11 == 224 && v16 < 0xA0 || (v16 & 0xC0) != 0x80 || (v17 = *(a1 + v10 + 2), (v17 & 0xC0) != 0x80))
          {
LABEL_37:
            v9 = -1950342907;
            ++v10;
            goto LABEL_40;
          }

          v10 += 3;
          v11 = (v16 << 6) + (v11 << 12) + v17;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_37;
          }

          v15 = *(a1 + v13);
          if (v11 == 244)
          {
            if (v15 > 0x8F)
            {
              goto LABEL_37;
            }
          }

          else if (v11 == 240 && v15 < 0x90)
          {
            goto LABEL_37;
          }

          if ((v15 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v18 = *(a1 + v10 + 2);
          if ((v18 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v19 = *(a1 + v10 + 3);
          if ((v19 & 0xC0) != 0x80)
          {
            goto LABEL_37;
          }

          v10 += 4;
          v11 = v19 + (((v15 << 6) + (v11 << 12) + v18) << 6);
        }
      }

      else if (v12)
      {
        v14 = *(a1 + v13);
        if ((v14 & 0xC0) != 0x80)
        {
          goto LABEL_37;
        }

        v10 += 2;
        v11 = v14 + (v11 << 6);
      }

      else
      {
        ++v10;
      }

      v20 = 0;
      v21 = v11 - UTF8_OFFSETS[v12];
      while (v21 != UNICODE_TO_DEPES[v20])
      {
        if (++v20 == 176)
        {
          goto LABEL_34;
        }
      }

      *(a4 + v7++) = v20;
LABEL_34:
      v8 = 0;
      v9 = 0;
      if (v10 >= a2 || v7 >= a5)
      {
        goto LABEL_41;
      }
    }

    v9 = -1950342907;
LABEL_40:
    *(a4 + v7) = 0;
  }

LABEL_41:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2 || v8)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8ToUtf16(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  v7 = 0;
  LODWORD(v8) = 0;
  if (!a2)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v9 = 0;
  v10 = 0;
  if (!a5)
  {
    goto LABEL_44;
  }

  v8 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + v10);
    v12 = UTF8_TRAILING_BYTES[*(a1 + v10)];
    v7 = v10 + v12 <= a2;
    if (v10 + v12 > a2)
    {
      v9 = 197140487;
      goto LABEL_43;
    }

    if ((UTF8_BYTE_INDICATOR_TEST[v12] & v11) != UTF8_BYTE_INDICATOR[v12])
    {
      v9 = -1950342907;
      goto LABEL_43;
    }

    if (a7)
    {
      *a7 = v10;
      a7[1] = v10;
      a7 += 2;
      v11 = *(a1 + v10);
    }

    v13 = v10 + 1;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v16 = *(a1 + v13);
        if (v11 == 224 && v16 < 0xA0 || (v16 & 0xC0) != 0x80 || (v17 = *(a1 + v10 + 2), (v17 & 0xC0) != 0x80))
        {
LABEL_40:
          v9 = -1950342907;
          ++v10;
          goto LABEL_43;
        }

        v10 += 3;
        v11 = (v16 << 6) + (v11 << 12) + v17;
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_40;
        }

        v15 = *(a1 + v13);
        if (v11 == 244)
        {
          if (v15 > 0x8F)
          {
            goto LABEL_40;
          }
        }

        else if (v11 == 240 && v15 < 0x90)
        {
          goto LABEL_40;
        }

        if ((v15 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v18 = *(a1 + v10 + 2);
        if ((v18 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v19 = *(a1 + v10 + 3);
        if ((v19 & 0xC0) != 0x80)
        {
          goto LABEL_40;
        }

        v10 += 4;
        v11 = v19 + (((v15 << 6) + (v11 << 12) + v18) << 6);
      }
    }

    else if (v12)
    {
      v14 = *(a1 + v13);
      if ((v14 & 0xC0) != 0x80)
      {
        goto LABEL_40;
      }

      v10 += 2;
      v11 = v14 + (v11 << 6);
    }

    else
    {
      ++v10;
    }

    v20 = v11 - UTF8_OFFSETS[v12];
    if (!HIWORD(v20))
    {
      if ((v20 & 0xF800) == 0xD800)
      {
        goto LABEL_36;
      }

      v21 = v8;
      v22 = 1;
      goto LABEL_35;
    }

    if (HIWORD(v20) > 0x10u)
    {
      goto LABEL_36;
    }

    v21 = v8 + 1;
    if (v8 + 1 >= a5)
    {
      break;
    }

    *(a4 + 2 * v8) = ((v20 + 67043328) >> 10) - 10240;
    LOWORD(v20) = v20 & 0x3FF | 0xDC00;
    v22 = 2;
LABEL_35:
    *(a4 + 2 * v21) = v20;
    v8 += v22;
LABEL_36:
    v7 = 0;
    v9 = 0;
    if (v10 >= a2 || v8 >= a5)
    {
      goto LABEL_44;
    }
  }

  v9 = -1950343159;
LABEL_43:
  *(a4 + 2 * v8) = 0;
LABEL_44:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v8;
  }

  if (v10 == a2 || v7)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf16ToUtf8(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, unsigned int *a6, _DWORD *a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!a2 || !a5)
  {
LABEL_34:
    if (!a3)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v11 = 0;
  v10 = 0;
  while (1)
  {
    v12 = *(a1 + 2 * v10);
    v13 = v12 & 0xFC00;
    if (v13 == 55296)
    {
      v14 = *(a1 + 2 * (v10 + 1));
      if ((v14 & 0xFC00) != 0xDC00)
      {
        v9 = -1950342907;
        goto LABEL_33;
      }

      v12 = v14 + (v12 << 10) - 56613888;
      v10 += 2;
    }

    if (v12 < 0x10000)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    if (v12 < 0x800)
    {
      v15 = 2;
    }

    if (v12 >= 0x80)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    v7 = v16 + v11;
    if (v16 + v11 > a5)
    {
      v9 = -1950343159;
LABEL_33:
      *(a4 + v11) = 0;
      v8 = 1;
      v7 = v11;
      goto LABEL_34;
    }

    if (a7)
    {
      v17 = v16;
      do
      {
        *a7++ = 2 * v10;
        --v17;
      }

      while (v17);
    }

    if (v13 != 55296)
    {
      v12 = *(a1 + 2 * v10++);
    }

    if (v16 > 2)
    {
      if (v16 != 3)
      {
        *(a4 + v11 + 3) = v12 & 0x3F | 0x80;
        v12 >>= 6;
      }

      *(a4 + v11 + 2) = v12 & 0x3F | 0x80;
      v12 >>= 6;
LABEL_27:
      *(a4 + v11 + 1) = v12 & 0x3F | 0x80;
      v12 >>= 6;
      goto LABEL_28;
    }

    if (v16 != 1)
    {
      goto LABEL_27;
    }

LABEL_28:
    v8 = 0;
    *(a4 + v11) = UTF8_FIRST_BYTE_MARK[v16] | v12;
    if (v10 >= a2)
    {
      break;
    }

    v11 += v16;
    v9 = 0;
    if (v7 >= a5)
    {
      goto LABEL_34;
    }
  }

  v9 = 0;
  if (a3)
  {
LABEL_35:
    *a3 = 2 * v10;
  }

LABEL_36:
  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8;
  }

  if (v18)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_16bitToUtf8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = LH_wcslen(a1);
  utf8_Utf16ToUtf8(a1, v4 + 1, 0, a2, 0xFFFFFFFF, &v6, 0);
  return v6;
}

uint64_t Utf8_Utf8NbrOfSymbols(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  v3 = *v1;
  if (!*v1)
  {
    return 1;
  }

  v4 = &v1[v2];
  v5 = 2;
  do
  {
    result = v5;
    v1 += UTF8_TRAILING_BYTES[v3] + 1;
    if (v1 >= v4)
    {
      break;
    }

    v3 = *v1;
    v5 = (v5 + 1);
  }

  while (*v1);
  return result;
}

uint64_t Utf8_LengthInBytes(unsigned __int8 *a1, int a2)
{
  LODWORD(v2) = a1;
  if (a2 >= 1)
  {
    v2 = a1;
    do
    {
      v2 += UTF8_BYTES[*v2];
      --a2;
    }

    while (a2);
  }

  return (v2 - a1);
}

uint64_t Utf8_LengthInUtf8chars(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = UTF8_BYTES[*a1];
    a1 += v4;
    v2 += v4;
    v3 = (v3 + 1);
  }

  while (v2 < a2);
  return v3;
}

uint64_t utf8_16BitNbrOfUtf8Chars(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 1;
  }

  v2 = (result + 2);
  LODWORD(result) = 1;
  do
  {
    if (v1 < 0x800)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (v1 < 0x80)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    result = (v4 + result);
    v5 = *v2++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t utf8_CheckValid(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2)
    {
      for (i = 0; i < a2; i += v6)
      {
        v3 = *result;
        if (!*result)
        {
          return 1;
        }

        if ((UTF8_BYTE_INDICATOR_TEST[UTF8_TRAILING_BYTES[*result]] & *result) != UTF8_BYTE_INDICATOR[UTF8_TRAILING_BYTES[*result]] || i + UTF8_TRAILING_BYTES[*result] > a2)
        {
          return 0;
        }

        if (v3 > 0xC1)
        {
          if (v3 > 0xDF)
          {
            if (v3 == 224)
            {
              if ((*(result + 1) & 0xE0) != 0xA0)
              {
                return 0;
              }

              goto LABEL_24;
            }

            if ((v3 < 0xED || (v3 & 0xFE) == 0xEE) && *(result + 1) <= -65 && *(result + 2) < -64)
            {
              goto LABEL_25;
            }

            if (v3 == 240)
            {
              if (*(result + 1) - 144 > 0x2F)
              {
                return 0;
              }
            }

            else
            {
              if (v3 == 237)
              {
                if (*(result + 1) > -97)
                {
                  return 0;
                }

LABEL_24:
                if (*(result + 2) >= -64)
                {
                  return 0;
                }

LABEL_25:
                v5 = 3;
                v6 = 3;
                goto LABEL_36;
              }

              if (v3 - 241 > 2)
              {
                if (v3 != 244 || *(result + 1) > -113)
                {
                  return 0;
                }
              }

              else if (*(result + 1) > -65)
              {
                return 0;
              }
            }

            if (*(result + 2) > -65 || *(result + 3) >= -64)
            {
              return 0;
            }

            v5 = 4;
            v6 = 4;
          }

          else
          {
            if (*(result + 1) >= -64)
            {
              return 0;
            }

            v5 = 2;
            v6 = 2;
          }
        }

        else
        {
          v5 = 1;
          v6 = 1;
        }

LABEL_36:
        result += v5;
      }
    }

    return 1;
  }

  return result;
}