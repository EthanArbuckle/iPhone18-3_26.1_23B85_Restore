uint64_t DoJPJSpell(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 0;
  }

  v16 = 0;
  for (i = 0; i < a5; v16 = i)
  {
    memset(v29, 0, sizeof(v29));
    v21 = jpj_sysdct_CharLookup(a1, a2, a3, (a4 + i), v29, 0x16u, a11);
    if ((v21 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v29[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v18, v19, v20, v16);
    }

    else
    {
      v22 = cstdlib_strlen(&v29[4] + 12) + 3;
      v23 = heap_Alloc(*(a1 + 8), v22);
      if (!v23)
      {
        return 2350915594;
      }

      v24 = v23;
      cstdlib_memset(v23, 0, v22);
      if (i)
      {
        cstdlib_strcpy(v24, &v29[4] + 12);
      }

      else
      {
        cstdlib_strcpy(v24, " ");
        cstdlib_strcat(v24, &v29[4] + 12);
      }

      cstdlib_strcat(v24, " ");
      v25 = cstdlib_strlen(v24);
      v21 = bed_Insert(a6, v24, v25);
      if ((v21 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v24);
        return v21;
      }

      heap_Free(*(a1 + 8), v24);
    }

    v26 = cstdlib_strlen(v29 + 4);
    if (v26)
    {
      i += v26;
    }

    else
    {
      i = a5;
    }
  }

  return v21;
}

uint64_t DoJPJLatin(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, char **a5)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v7 = jpj_sysdct_CharLookup(a1, a2, a3, a4, v12, 0x16u, 0);
  if (!v7)
  {
    v8 = *(a1 + 8);
    v9 = cstdlib_strlen(&v12[4] + 12);
    v10 = heap_Alloc(v8, (v9 + 3));
    *a5 = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, &v12[4] + 12);
    }
  }

  return v7;
}

size_t getDictSolutionJPJ(unsigned int a1, uint64_t a2, int a3, const char **a4, _WORD *a5, const char *a6, int a7, _WORD *a8, void *a9)
{
  v10 = a4;
  v12 = a9;
  v38 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v36, 0, sizeof(v36));
  if (!a1)
  {
    LOWORD(v16) = 0;
    v27 = 0;
    v26 = __dst;
    goto LABEL_40;
  }

  v29 = a8;
  v31 = 0;
  v16 = 0;
  v32 = 0;
  v33 = a7 != 0;
  v34 = a1;
  do
  {
    memset(__src, 0, sizeof(__src));
    v17 = cstdlib_strlen(*(a2 + 8 * v16));
    *a5 = v17;
    v18 = *(a2 + 8 * v16);
    v19 = 0;
    if (v17)
    {
      v20 = a7 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = *(a2 + 8 * v16);
        if (!*(__src + v24))
        {
          *(__src + v24) = &v25[v19];
        }

        if (a7 == 1 && !v19 && *v25 != a3)
        {
          break;
        }

        if (v25[v19] == a3)
        {
          ++v24;
          v25[v19] = 0;
        }

        ++v19;
        if (v23)
        {
          goto LABEL_30;
        }

        if (v24 + 1 == a7)
        {
          v18 = (*(a2 + 8 * v16) + v19);
LABEL_30:
          v23 = 1;
          goto LABEL_31;
        }

        v23 = 0;
LABEL_31:
        v21 = a7 != v24;
        if (*a5 <= v19 || a7 == v24)
        {
          goto LABEL_9;
        }
      }

      v19 = 1;
      goto LABEL_30;
    }

    v21 = v33;
LABEL_9:
    if (v21)
    {
      *a5 = 0;
    }

    if (cstdlib_strlen(v18))
    {
      if (v18)
      {
        do
        {
          v22 = cstdlib_strchr(v18, 44);
          if (!cstdlib_strlen(v18))
          {
            break;
          }

          if (v22)
          {
            *v22 = 0;
          }

          if (!cstdlib_strcmp(v18, a6))
          {
            v26 = v36;
            cstdlib_memcpy(v36, __src, 0x20uLL);
            v27 = v19;
            v12 = a9;
            v10 = a4;
            a8 = v29;
            goto LABEL_40;
          }

          v18 = v22 + 1;
        }

        while (v22);
      }
    }

    else
    {
      cstdlib_memcpy(__dst, __src, 0x20uLL);
      v31 = v16;
      v32 = v19;
    }

    ++v16;
  }

  while (v16 < v34);
  v26 = __dst;
  v12 = a9;
  v10 = a4;
  a8 = v29;
  LOWORD(v16) = v31;
  v27 = v32;
LABEL_40:
  *a8 = v16;
  *v10 = (*(a2 + 8 * v16) + v27);
  cstdlib_memcpy(v12, v26, 0x20uLL);
  result = cstdlib_strlen(*v10);
  *a5 = result;
  return result;
}

uint64_t lookup_JPARSER(uint64_t a1, uint64_t a2, const char **a3, unsigned __int8 *a4, const char *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  if (*(a1 + 28))
  {
    v16 = 0;
    if (((*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v15, &v16, a4, *(a1 + 24)) & 0x80000000) == 0 && v16)
    {
      v17 = 0u;
      v18 = 0u;
      getDictSolutionJPJ(v16, v15, *a4, a3, &v14, a5, 1, &v13, &v17);
      return v14;
    }

    if (*(a1 + 28) == 1)
    {
      v16 = 0;
      v12 = (*(*a1 + 96))(*(a1 + 8), *(a1 + 16), "char", a2, &v15, &v16, a4);
      result = -1;
      if ((v12 & 0x80000000) == 0 && v16)
      {
        v17 = 0u;
        v18 = 0u;
        getDictSolutionJPJ(v16, v15, *a4, a3, &v14, a5, 4, &v13, &v17);
        return v14;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v16 = -1;
    v11 = (*(*a1 + 152))(*(a1 + 8), *(a1 + 16), "word", a2, &v15, &v16, a4, *(a1 + 24));
    result = -1;
    if ((v11 & 0x80000000) == 0 && v16 == 1)
    {
      LOWORD(result) = cstdlib_strlen(*v15);
      *a3 = *v15;
      return result;
    }
  }

  return result;
}

uint64_t FillFields(uint64_t result, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    for (i = (result + 8); ; ++i)
    {
      v8 = (a4 - v6);
      if (a4 <= v6)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        v10 = *(a3 + v6 + v9);
        if (v10 == a5)
        {
          break;
        }

        *(*(result + 8 * v5) + v9++) = v10;
        if (v8 == v9)
        {
          goto LABEL_11;
        }
      }

      *(*(result + 8 * v5) + v9) = 0;
      v6 += v9 + 1;
      if (++v5 == a2)
      {
        return result;
      }
    }

    v8 = 0;
LABEL_11:
    *(*(result + 8 * v5) + v8) = 0;
    for (j = 1; j != 5; ++j)
    {
      if (v5 + j >= a2)
      {
        break;
      }

      v12 = *i++;
      *v12 = 0;
    }
  }

  return result;
}

uint64_t virtual_fseek(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 1:
      a3 += *a2;
      goto LABEL_6;
    case 2:
      a3 = *(a1 + 8) + ~a3;
LABEL_6:
      result = 0;
      *a2 = a3;
      return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t virtual_getc(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0 || v2 >= a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*a1 + v2);
  *a2 = v2 + 1;
  return result;
}

uint64_t xcode_Utf16leToWin932(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v6 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v10 = a2;
      v12 = 0;
      v13 = a3;
      while (*a5 > v12)
      {
        v14 = *v10++;
        v12 += XLIT_chUnicodeWideToSJIS(v14, (a4 + v12), a1, a6);
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v12) = 0;
LABEL_10:
      v6 = 0;
      *a5 = v12;
    }
  }

  return v6;
}

uint64_t mas_list_extract_min(uint64_t a1, uint64_t a2)
{
  while (a2)
  {
    v2 = a2;
    v3 = a1;
    a2 = *(a2 + 8);
    a1 = v2;
    if (!a2)
    {
      result = *(v3 + 8);
      *(v3 + 8) = *(v2 + 16);
      return result;
    }
  }

  return 0;
}

void *mas_list_insert(void *result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      if (result[5] <= a2[5])
      {
        a2[1] = mas_list_insert();
      }

      else
      {
        a2[2] = mas_list_insert();
      }

      return a2;
    }

    else
    {
      result[1] = 0;
      result[2] = 0;
    }
  }

  return result;
}

void *mas_list_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = heap_Alloc(a7, 48);
  if (result)
  {
    *result = a1;
    result[1] = a2;
    result[2] = a3;
    result[3] = a4;
    result[4] = a6;
    result[5] = a5;
  }

  return result;
}

uint64_t lattice_word_create(uint64_t a1)
{
  result = heap_Alloc(a1, 584);
  if (result)
  {
    *(result + 544) = 0;
    *(result + 536) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 552) = 0;
    *(result + 568) = 0;
    *(result + 560) = 0;
  }

  return result;
}

uint64_t lattice_word_print_all(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v36 = *MEMORY[0x277D85DE8];
  appended = ssftstring_Reserve(a3, 64);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v16 = ssftstring_Clear(a3);
  if ((v16 & 0x80000000) == 0 && a5 >= -1)
  {
    v17 = 0;
    v18 = 560;
    if (a6 == 1)
    {
      v18 = 552;
    }

    v32 = a4;
    v33 = v18;
    v31 = (a5 + 2);
    while (1)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[FDP] x=%d", v13, v14, v15, v17);
      v19 = *(a4 + 8 * v17);
      if (v19)
      {
        break;
      }

LABEL_25:
      ++v17;
      a4 = v32;
      if (v17 == v31)
      {
        return v16;
      }
    }

    v20 = 0;
    while (1)
    {
      v21 = *(v19 + v33);
      __sprintf_chk(__dst, 0, 0x40uLL, "[FDP] (%3d,%3d,%3d)", v17, *(v19 + 580), v20);
      appended = ssftstring_AssignCStr(a3, __dst);
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      v22 = *v19;
      if (*v19)
      {
        for (i = *v22; i; i = *(i + 16))
        {
          appended = ssftstring_AppendCStr(a3, *i);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = ssftstring_AppendCStr(a3, ":");
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = log_mbs_fput_sjis(a3, *(i + 8));
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          appended = ssftstring_AppendCStr(a3, " ");
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }
        }
      }

      else
      {
        if (*(v19 + 568) == 1)
        {
          v24 = "<_START>";
        }

        else
        {
          v24 = "<_END>";
        }

        appended = ssftstring_AppendCStr(a3, v24);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }
      }

      cstdlib_strcpy(__dst, "cost_h = ");
      LH_itoa(*(v19 + 8), __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
      cstdlib_strcat(__dst, ", word_cost = ");
      LH_itoa(*(v19 + 16), __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
      appended = ssftstring_AppendCStr(a3, __dst);
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      v25 = *(a1 + 32);
      v26 = ssftstring_CStr(a3);
      log_OutText(v25, a2, 5, 0, "%s", v27, v28, v29, v26);
      v16 = ssftstring_Clear(a3);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      ++v20;
      v19 = v21;
      if (!v21)
      {
        goto LABEL_25;
      }
    }
  }

  return v16;
}

void *lattice_word_free_all(void *result, int a2, void *a3)
{
  if (a2 >= -1)
  {
    v4 = result;
    v5 = 0;
    v6 = (a2 + 2);
    do
    {
      v7 = v4[v5];
      if (v7)
      {
        do
        {
          v8 = *(v7 + 552);
          result = heap_Free(a3, v7);
          v7 = v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t add_to_lattice(_DWORD *a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v10 = a2;
  if (!a2)
  {
    v18 = heap_Alloc(a10, 584);
    v10 = v18;
    if (!v18)
    {
      return v10;
    }

    *(v18 + 544) = 0;
    *(v18 + 536) = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 552) = 0;
    *(v18 + 568) = 0;
    *(v18 + 560) = 0;
    *v18 = a3;
    if (a3)
    {
      v19 = *a3;
      if (!*a3)
      {
        return 0;
      }

      while (cstdlib_strcmp(*v19, "WCOST"))
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          return 0;
        }
      }

      v31 = mbs_len_bytes(*(v19 + 8)) + 1;
      v32 = heap_Alloc(a10, v31);
      if (!v32)
      {
        heap_Free(a10, v10);
        return 0;
      }

      v33 = v32;
      cstdlib_memset(v32, 0, v31);
      if (mbs2sjis(*(v19 + 8), 0, *(*(v19 + 8) + 8), v33, v31) == -1)
      {
        return 0;
      }

      *(v10 + 16) = cstdlib_atoi(v33);
      heap_Free(a10, v33);
    }

    else
    {
      *(v18 + 572) = 1;
    }

    *(v10 + 576) = a4;
    *(v10 + 580) = a5;
    v25 = (a6 + 8 * (a4 + 1));
    v26 = *v25;
    if (*v25)
    {
      do
      {
        v27 = v26;
        v26 = *(v26 + 552);
      }

      while (v26);
      v25 = (v27 + 552);
    }

    *v25 = v10;
    v28 = (a7 + 8 * (a4 + 1 + a5));
    v29 = *v28;
    if (*v28)
    {
      do
      {
        v30 = v29;
        v29 = *(v29 + 560);
      }

      while (v29);
      v28 = (v30 + 560);
    }

    *v28 = v10;
  }

  v12 = *(v10 + 544);
  if (v12 > 31)
  {
    return 0;
  }

  if (a1)
  {
    *(v10 + 8 * v12 + 280) = a1;
    if (a1[142] == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = *(*a1 + 8);
    }

    if (*(v10 + 572) == 1)
    {
      v21 = -1;
    }

    else
    {
      v21 = *(*v10 + 8);
    }

    v22 = connection_table(v20, v21, a9);
    v23 = *(v10 + 544);
    *(v10 + 8 * v23 + 24) = v22;
    *(v10 + 544) = v23 + 1;
  }

  return v10;
}

uint64_t forward_dp(int a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7)
{
  if (a1 >= -1)
  {
    v13 = (a1 + 2);
    v14 = a4;
    v15 = a5;
    do
    {
      *v14++ = 0;
      *v15++ = 0;
      --v13;
    }

    while (v13);
  }

  result = heap_Alloc(a7, 584);
  if (result)
  {
    *(result + 544) = 0;
    *(result + 536) = 0;
    *result = 0;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 568) = 0u;
    *(result + 568) = 1;
    *a4 = result;
    *a5 = result;
    if (a1 <= 0)
    {
      v19 = a1;
LABEL_22:
      v27 = &a5[v19];
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        while (1)
        {
          result = add_to_lattice(v28, v29, 0, a1, 0, a4, a5, v17, a6, a7);
          if (!result)
          {
            break;
          }

          v29 = result;
          v28 = *(v28 + 560);
          if (!v28)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        result = add_to_lattice(0, 0, 0, a1, 0, a4, a5, v17, a6, a7);
        if (result)
        {
LABEL_28:
          if ((a1 & 0x80000000) == 0)
          {
            v30 = 0;
            do
            {
              for (i = a4[++v30]; i; i = *(i + 552))
              {
                v32 = *(i + 544);
                if (v32)
                {
                  v33 = *(i + 280);
                  v34 = *(i + 24) + *(v33 + 8) + *(v33 + 16);
                  *(i + 8) = v34;
                  *(i + 536) = v33;
                  if (v32 >= 1)
                  {
                    v35 = (i + 280);
                    do
                    {
                      v36 = *v35;
                      v37 = *(v35 - 32) + *(*v35 + 8) + *(*v35 + 16);
                      if (v37 < v34)
                      {
                        *(i + 8) = v37;
                        *(i + 536) = v36;
                        v34 = v37;
                      }

                      ++v35;
                      --v32;
                    }

                    while (v32);
                  }
                }

                else
                {
                  *(i + 8) = 1000000;
                  *(i + 536) = 0;
                }
              }
            }

            while (v30 != a1 + 1);
          }

          return v27[1];
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = a1;
      v20 = a1;
      while (v18 >= v19)
      {
LABEL_19:
        ++v18;
        --v20;
        if (v18 == v19)
        {
          goto LABEL_22;
        }
      }

      v21 = 0;
      v38 = v19;
      v39 = a3;
      while (1)
      {
        address = box_hash_get_address(v18, v21);
        leading_word = box_hash_get_leading_word(a3, v18, v21, address);
        if (leading_word)
        {
          break;
        }

LABEL_18:
        ++v21;
        v19 = v38;
        a3 = v39;
        if (v21 == v20)
        {
          goto LABEL_19;
        }
      }

      v24 = leading_word;
      while (1)
      {
        v25 = a5[v18];
        if (v25)
        {
          break;
        }

        result = add_to_lattice(0, 0, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          return result;
        }

LABEL_17:
        v24 = v24[3];
        if (!v24)
        {
          goto LABEL_18;
        }
      }

      v26 = 0;
      while (1)
      {
        result = add_to_lattice(v25, v26, v24, v18, v21, a4, a5, v17, a6, a7);
        if (!result)
        {
          break;
        }

        v26 = result;
        v25 = *(v25 + 560);
        if (!v25)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

void *mas_list_free_recursive(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    mas_list_free_recursive(result[1]);
    mas_list_free_recursive(*(v3 + 16));

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t add_lattice_word_to_cyk_table(void *a1, uint64_t a2, int *a3, void *a4)
{
  leading_tree = cyk_hash_get_leading_tree(a1, a3[144], a3[145]);
  if (leading_tree)
  {
    while (*(leading_tree + 32) || *(leading_tree + 48) != **a3)
    {
      leading_tree = *(leading_tree + 88);
      if (!leading_tree)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = heap_Alloc(a4, 96);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = **a3;
    *result = *(*a3 + 8);
    *(result + 32) = 0;
    *(result + 88) = 0;
    *(result + 48) = v10;
    *(result + 24) = *(*a3 + 16);
    *(result + 40) = 0;
    v11 = a3[144];
    v12 = a3[145];
    *(result + 72) = v11;
    *(result + 76) = v12;
    *(result + 8) = -1;
    v13 = cyk_hash_get_leading_tree(a1, v11, v12);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *(v13 + 88);
      }

      while (v13);
      *(v14 + 88) = v9;
    }

    else if ((cyk_hash_add_leading_tree(a1, v9, a3[144], a3[145], a4) & 0x1FFF) == 0xA)
    {
      heap_Free(a4, v9);
      return 0;
    }
  }

  return 1;
}

uint64_t add_word_to_cyk_table(void *a1, uint64_t a2, int **a3, void *a4)
{
  if ((*a3)[142] != 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v5 = v5[3];
    if (!v5 || (*v5)[143] == 1)
    {
      break;
    }

    result = add_lattice_word_to_cyk_table(a1, a2, *v5, a4);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t add_unknown_to_cyk_table(uint64_t a1, int a2, int a3, char *__s1, const char *a5, uint64_t a6, void *a7, int a8, uint64_t a9, void *a10)
{
  number_of_symbol = get_number_of_symbol(a6, __s1);
  result = 0;
  v18 = a3 - a2;
  if (a3 >= a2 && number_of_symbol != -1)
  {
    result = heap_Alloc(a10, (2 * (v18 + 1)) | 1u);
    if (result)
    {
      v19 = result;
      if (mbs2sjis(a1, a2, v18 + 1, result, (2 * (v18 + 1)) | 1u) == -1)
      {
        heap_Free(a10, v19);
        return 0;
      }

      v20 = unknown_info_create(v19, __s1, a5, "0", a10);
      heap_Free(a10, v19);
      if (!v20)
      {
        return 0;
      }

      if (*(a9 + 68))
      {
        v21 = a2 + 1;
      }

      else
      {
        v21 = a2;
      }

      result = heap_Alloc(a10, 96);
      if (result)
      {
        v22 = result;
        *result = number_of_symbol;
        *(result + 32) = 0;
        *(result + 88) = 0;
        *(result + 24) = 0;
        *(result + 40) = 0;
        *(result + 48) = v20;
        *(result + 72) = v21;
        *(result + 76) = v18;
        *(result + 80) = 0;
        *(result + 8) = -1;
        leading_tree = cyk_hash_get_leading_tree(a7, v21, v18);
        if (leading_tree)
        {
          do
          {
            v24 = leading_tree;
            leading_tree = *(leading_tree + 88);
          }

          while (leading_tree);
          *(v24 + 88) = v22;
          return 1;
        }

        return (cyk_hash_add_leading_tree(a7, v22, v21, v18, a10) & 0x1FFF) != 0xA;
      }
    }
  }

  return result;
}

void *backward_as(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v16 = heap_Alloc(a10, 48);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v18 = *(a1 + 8);
  v19 = heap_Alloc(a10, 48);
  if (!v19)
  {
    v17[1] = 0;
    goto LABEL_26;
  }

  v50 = a6;
  v51 = a7;
  v21 = 0;
  v22 = a1;
  v23 = 0;
  v24 = 0;
  v48 = v22;
  v49 = 0;
  *v19 = v22;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = 0;
  v19[5] = v18;
  v17[1] = v19;
  v53 = a4;
  v54 = a8;
  v52 = a2;
  while (1)
  {
    ++v21;
    if ((*(a4 + 1320) & 0x80000000) == 0)
    {
      break;
    }

LABEL_7:
    v26 = v17;
    while (v19)
    {
      v27 = v19;
      v28 = v26;
      v19 = v19[1];
      v26 = v27;
      if (!v19)
      {
        v29 = v28[1];
        v28[1] = v27[2];
        goto LABEL_12;
      }
    }

    v29 = 0;
LABEL_12:
    v30 = *v29;
    if (*(*v29 + 568) == 1)
    {
      add_word_to_cyk_table(a8, v20, v29, a10);
      if (++v23 >= a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v24;
      v57 = v21;
      if (v30[136] >= 1)
      {
        v31 = 0;
        do
        {
          v32 = *(v29 + 32);
          v33 = &v30[2 * v31];
          v34 = *(v33 + 35);
          v35 = *(v33 + 3);
          v37 = *(v34 + 8);
          v36 = *(v34 + 16);
          v38 = heap_Alloc(a10, 48);
          if (!v38)
          {
            return 0;
          }

          v39 = v36 + v32 + v35;
          *v38 = v34;
          v38[1] = 0;
          v38[2] = 0;
          v38[3] = v29;
          v38[4] = v39;
          v38[5] = v39 + v37;
          v17[1] = mas_list_insert(v38, v17[1]);
          ++v31;
          v30 = *v29;
        }

        while (v31 < *(*v29 + 544));
      }

      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      if (v56)
      {
        *(v56 + 8) = v29;
      }

      else
      {
        v49 = v29;
      }

      v24 = v29;
      a4 = v53;
      a8 = v54;
      a2 = v52;
      v21 = v57;
    }

    v19 = v17[1];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  if (times_limit_over() != 1)
  {
    v19 = v17[1];
    goto LABEL_7;
  }

  if (v23)
  {
LABEL_30:
    mas_list_free_recursive(v17, a10);
    mas_list_free_recursive(v49, a10);
    return a8;
  }

  v41 = 0;
  v42 = *(v48 + 536);
  for (i = v42; ; v42 = *(i + 536))
  {
    v44 = *(i + 576);
    v45 = v41;
    while (!v42)
    {
      v46 = v44 - 1;
      v41 = v45;
      if (v44 >= 1)
      {
        v46 = v44;
        while (1)
        {
          v41 = *(a5 + 8 * --v46);
          if (v41)
          {
            break;
          }

          if (v46 <= 0)
          {
            v41 = 0;
            v46 = -1;
            break;
          }
        }
      }

      if (*(a4 + 68))
      {
        v47 = v44 - 2;
      }

      else
      {
        v47 = v44 - 1;
      }

      if (!add_unknown_to_cyk_table(v50, v46 - (*(a4 + 68) != 0), v47, (a4 + 136), (a4 + 200), v51, a8, v25, a4, a10))
      {
        goto LABEL_49;
      }

      v42 = 0;
      v45 = 0;
      i = v41;
      if (v41)
      {
        goto LABEL_46;
      }
    }

    v41 = v45;
    i = v42;
LABEL_46:
    if (*(i + 568) == 1)
    {
      goto LABEL_30;
    }

    if (!add_lattice_word_to_cyk_table(a8, v20, i, a10))
    {
      break;
    }
  }

LABEL_49:
  cyk_hash_free(a8, a10);
LABEL_26:
  mas_list_free_recursive(v17, a10);
  return 0;
}

uint64_t iso_parse_fdp_bas(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t *a6, uint64_t a7, unsigned __int16 a8, uint64_t a9, uint64_t a10, int a11)
{
  v19 = heap_Alloc(*(a1 + 24), 96800);
  if (!v19)
  {
    v26 = 0;
    goto LABEL_7;
  }

  v24 = v19;
  v25 = *(a3 + 8);
  if (*(a2 + 68))
  {
    ++v25;
  }

  if (v25 < 2049)
  {
    v57 = v25;
    v60 = 0;
    v63[1] = 4000;
    v62 = 0;
    v63[0] = v19 + 32800;
    cstdlib_memset((v19 + 32800), 0, 0x7D00uLL);
    v29 = *(a1 + 176);
    v30 = *(a1 + 208);
    v58[12] = *(a1 + 192);
    v58[13] = v30;
    v31 = *(a1 + 112);
    v32 = *(a1 + 144);
    v33 = *(a1 + 160);
    v58[8] = *(a1 + 128);
    v58[9] = v32;
    v58[10] = v33;
    v58[11] = v29;
    v34 = *(a1 + 48);
    v35 = *(a1 + 80);
    v36 = *(a1 + 96);
    v58[4] = *(a1 + 64);
    v58[5] = v35;
    v37 = *(a1 + 40);
    v59 = *(a1 + 224);
    v58[6] = v36;
    v58[7] = v31;
    v38 = *(a1 + 16);
    v58[0] = *a1;
    v58[1] = v38;
    v58[2] = *(a1 + 32);
    v58[3] = v34;
    v27 = look_up_dictionary(a1, a3, a2, 0x14u, SF_symbol_file, v63, v37, v58, a7, a8, a9, a10, a11, &v60);
    if ((v27 & 0x80000000) != 0)
    {
      return v27;
    }

    if (v60 != 1)
    {
      log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52001, 0, v40, v41, v42, v43, v55);
      box_hash_free(v63, *(a1 + 24));
      v26 = parser_result_create(2, 0, *(a1 + 24));
      goto LABEL_24;
    }

    v47 = forward_dp(v57, v39, v63, v24 + 2050, v24, a4, *(a1 + 24));
    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[FDP] Dumping LATTICE (RESULT OF FORWARD DP)", v44, v45, v46, v55);
      v27 = lattice_word_print_all(*(a1 + 32), *(a1 + 216), *(a1 + 224), (v24 + 2050), v57, 1);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    if (!v47 || (v61 = v24 + 8100, LODWORD(v62) = 4000, cstdlib_memset(v24 + 8100, 0, 0x7D00uLL), !backward_as(v47, *(a2 + 8), v57, a2, v24, a3, SF_symbol_file, &v61, v55, *(a1 + 24))))
    {
      box_hash_free(v63, *(a1 + 24));
      v26 = parser_result_create(2, 0, *(a1 + 24));
      lattice_word_free_all(v24 + 2050, v57, *(a1 + 24));
      goto LABEL_24;
    }

    if (a5 == 1)
    {
      log_OutText(*(*(a1 + 32) + 32), *(a1 + 216), 5, 0, "[A*] RESULT OF BACKWARD A Star", v48, v49, v50, v56);
      v27 = log_intermediate_tree(*(a1 + 32), *(a1 + 216), *(a1 + 224), a2, &v61, v57, a1);
      if ((v27 & 0x80000000) != 0)
      {
LABEL_25:
        v26 = 0;
        goto LABEL_8;
      }
    }

    lattice_word_free_all(v24 + 2050, v57, *(a1 + 24));
    if (*(a2 + 48) == 1)
    {
      v51 = *(a1 + 24);
      v52 = 1;
    }

    else
    {
      v54 = *(a2 + 24);
      switch(v54)
      {
        case 3:
          v53 = parse_cyk_as_step(a2, &v61, v57, *(a1 + 56), a1 + 64, a1 + 104, a1 + 144, *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 2:
          v53 = parse_cyk_as(a2, &v61, v57, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
        case 1:
          v53 = parse_cyk(a2, &v61, v57, *(a1 + 48), *(a1 + 40), a1, *(a1 + 24));
          goto LABEL_21;
      }

      v51 = *(a1 + 24);
      v52 = 2;
    }

    v53 = parser_result_create(v52, 0, v51);
LABEL_21:
    v26 = v53;
    cyk_hash_free(&v61, *(a1 + 24));
    box_hash_free(v63, *(a1 + 24));
LABEL_24:
    heap_Free(*(a1 + 24), v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*(a1 + 32) + 32), *(a1 + 216), 52000, "%s%d", v20, v21, v22, v23, "maxlength");
  v26 = parser_result_create(2, 0, *(a1 + 24));
  heap_Free(*(a1 + 24), v24);
LABEL_7:
  v27 = 0;
LABEL_8:
  *a6 = v26;
  return v27;
}

uint64_t tree_append(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return a2;
  }

  v2 = result;
  do
  {
    v3 = v2;
    v2 = *(v2 + 16);
  }

  while (v2);
  *(v3 + 16) = a2;
  return result;
}

uint64_t *info_copy_sjis(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = heap_Calloc(a2, 1, 24);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v10 = v4;
        if (v9)
        {
          v7 = v4;
        }

        v11 = cstdlib_strlen(*v3);
        v12 = heap_Alloc(a2, (v11 + 1));
        *v4 = v12;
        if (!v12)
        {
          break;
        }

        cstdlib_strcpy(v12, *v3);
        v13 = mbs_len_bytes(*(v3 + 8)) + 1;
        v14 = heap_Alloc(a2, v13);
        if (!v14 || mbs2sjis(*(v3 + 8), 0, *(*(v3 + 8) + 8), v14, v13) == -1)
        {
          goto LABEL_23;
        }

        v10[1] = v14;
        if ((v9 & 1) == 0)
        {
          v6[2] = v10;
        }

        v3 = *(v3 + 16);
        if (!v3)
        {
          v10[2] = 0;
          return v7;
        }

        v8 = 1;
        v4 = heap_Calloc(a2, 1, 24);
        v9 = 0;
        v5 = v4 == 0;
        v6 = v10;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      v14 = 0;
LABEL_23:
      v4 = v10;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
LABEL_15:
      v14 = 0;
      if (v8)
      {
LABEL_16:
        WordInfo_free(v7, a2);
      }
    }

    if (!v5)
    {
      heap_Free(a2, *v4);
      heap_Free(a2, v4);
    }

    heap_Free(a2, v14);
  }

  return 0;
}

uint64_t *WordInfo_free(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    heap_Free(a2, *(v3 + 8));
    WordInfo_free(*(v3 + 16), a2);

    return heap_Free(a2, v3);
  }

  return result;
}

void *tree_duplicate(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = heap_Alloc(a4, 64);
  if (v8)
  {
    v9 = v8;
    if (get_name_of_symbol(SF_symbol_file, a3, *a1, v8))
    {
      v10 = *(a1 + 32);
      switch(v10)
      {
        case 0:
          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            break;
          }

          v17 = info_copy_sjis(*(a1 + 48), a4);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = *(a1 + 24);
          if (v19 && *(a2 + 12) == 1)
          {
            v20 = attribute_copy_all(v19, a4);
            if (!v20)
            {
              WordInfo_free(v18, a4);
              break;
            }
          }

          else
          {
            v20 = 0;
          }

          v12 = jp_tree_create(*a1, v9, 0, v20, 0, v18, a4);
          if (!v12)
          {
            WordInfo_free(v18, a4);
          }

          goto LABEL_42;
        case 1:
          v12 = tree_duplicate(*(a1 + 48), a2, a3, a4);
          if (!v12 || *v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v15 = *(a1 + 24);
          if (v15 && *(a2 + 12) == 1)
          {
            v16 = attribute_copy_all(v15, a4);
            if (!v16)
            {
              break;
            }
          }

          else
          {
            v16 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v16, v12, 0, a4);
          if (v23)
          {
            goto LABEL_36;
          }

          jpe_FreeTree(v12, a4);
          break;
        case 2:
          v11 = tree_duplicate(*(a1 + 40), a2, a3, a4);
          if (v11)
          {
            v12 = v11;
            v13 = v11;
            do
            {
              v14 = v13;
              v13 = *(v13 + 16);
            }

            while (v13);
            *(v14 + 16) = tree_duplicate(*(a1 + 48), a2, a3, a4);
          }

          else
          {
            v12 = tree_duplicate(*(a1 + 48), a2, a3, a4);
            if (!v12)
            {
LABEL_42:
              heap_Free(a4, v9);
              return v12;
            }
          }

          if (*v9 == 95 && *(a2 + 28) == 1)
          {
            goto LABEL_42;
          }

          v21 = *(a1 + 24);
          if (v21 && *(a2 + 12) == 1)
          {
            v22 = attribute_copy_all(v21, a4);
            if (!v22)
            {
              break;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = jp_tree_create(*a1, v9, 0, v22, v12, 0, a4);
LABEL_36:
          v12 = v23;
          goto LABEL_42;
      }
    }

    v12 = 0;
    goto LABEL_42;
  }

  return 0;
}

void *jp_tree_create(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = heap_Calloc(a7, 1, 48);
  v15 = v14;
  if (v14)
  {
    *v14 = a1;
    v16 = cstdlib_strlen(a2);
    v17 = heap_Alloc(a7, (v16 + 1));
    v15[1] = v17;
    if (v17)
    {
      cstdlib_strcpy(v17, a2);
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = a5;
      v15[5] = a6;
    }

    else
    {
      heap_Free(a7, v15);
      return 0;
    }
  }

  return v15;
}

uint64_t jpe_FreeTree(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      if (v4)
      {
        jpe_FreeTree(v4, a2);
      }

      else
      {
        v5 = v3[5];
        if (v5)
        {
          WordInfo_free(v5, a2);
        }
      }

      v6 = v3[2];
      jpe_FreeTreeOne(v3, a2);
      v3 = v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t jpe_FreeTreeOne(uint64_t a1, void *a2)
{
  if (a1)
  {
    heap_Free(a2, *(a1 + 8));
    attribute_free_all(*(a1 + 24), a2);
    heap_Free(a2, a1);
  }

  return 1;
}

void *WordInfo_duplicate(uint64_t a1, size_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = heap_Calloc(a3, 1, 24);
  if (!v6)
  {
    return v6;
  }

  v7 = cstdlib_strlen(*a1);
  v8 = heap_Alloc(a3, (v7 + 1));
  *v6 = v8;
  if (!v8)
  {
    return 0;
  }

  cstdlib_strcpy(v8, *a1);
  if (a2 == -1)
  {
    if (cstdlib_strcmp(*a1, "WORD"))
    {
      a2 = 0xFFFFFFFFLL;
    }

    else
    {
      a2 = cstdlib_strlen(*(a1 + 8));
    }
  }

  if (cstdlib_strcmp(*a1, "MARKER"))
  {
    v9 = cstdlib_strlen(*(a1 + 8));
    v10 = heap_Alloc(a3, (v9 + 1));
    v6[1] = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, *(a1 + 8));
      goto LABEL_15;
    }

    return 0;
  }

  v11 = heap_Alloc(a3, a2);
  v6[1] = v11;
  if (!v11)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v12 = 0;
    do
    {
      *(v6[1] + v12) = *(*(a1 + 8) + v12);
      ++v12;
    }

    while (a2 != v12);
  }

LABEL_15:
  v13 = *(a1 + 16);
  if (!v13)
  {
    v6[2] = 0;
    return v6;
  }

  v14 = WordInfo_duplicate(v13, a2, a3);
  v6[2] = v14;
  if (!v14)
  {
    return 0;
  }

  return v6;
}

uint64_t jp_tree_duplicate_one(uint64_t a1, void *a2)
{
  v4 = heap_Calloc(a2, 1, 48);
  if (v4)
  {
    v5 = cstdlib_strlen(*(a1 + 8));
    v6 = heap_Alloc(a2, (v5 + 1));
    *(v4 + 8) = v6;
    if (v6)
    {
      v7 = *(a1 + 8);
      *v4 = *a1;
      cstdlib_strcpy(v6, v7);
      *(v4 + 16) = *(a1 + 16);
      *(v4 + 32) = *(a1 + 32);
    }

    else
    {
      heap_Free(a2, v4);
      return 0;
    }
  }

  return v4;
}

uint64_t *free_information(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    heap_Free(a2, *result);
    mbs_free(*(v3 + 8), a2);
    heap_Free(a2, *(v3 + 8));
    free_information(*(v3 + 16), a2);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t info_copy(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = heap_Calloc(a2, 1, 32);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (v6)
      {
        v4 = v7;
      }

      v9 = cstdlib_strlen(*v3);
      v10 = heap_Alloc(a2, (v9 + 1));
      *v8 = v10;
      if (!v10)
      {
        break;
      }

      cstdlib_strcpy(v10, *v3);
      v11 = heap_Alloc(a2, 16);
      v8[1] = v11;
      if (!v11 || (mbs_copy(v11, *(v3 + 8), 0, *(*(v3 + 8) + 8), a2) & 0x80000000) != 0)
      {
        break;
      }

      if ((v6 & 1) == 0)
      {
        v5[2] = v8;
      }

      v6 = 0;
      v3 = *(v3 + 16);
      v5 = v8;
      if (!v3)
      {
        v8[2] = 0;
        return v4;
      }
    }
  }

  return 0;
}

uint64_t create_info(int a1, const char *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = heap_Calloc(a3, 1, 32);
  if (v6)
  {
    v7 = heap_Calloc(a3, 1, 16);
    *(v6 + 8) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = cstdlib_strlen(a2);
      if ((mbs_create(v8, v9, a2, a3) & 0x80000000) == 0)
      {
        cstdlib_strcpy(__dst, off_279DB5AB0[a1]);
        v10 = cstdlib_strlen(__dst);
        v11 = heap_Alloc(a3, (v10 + 1));
        *v6 = v11;
        if (v11)
        {
          cstdlib_strcpy(v11, __dst);
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          return v6;
        }

        mbs_free(*(v6 + 8), a3);
      }

      heap_Free(a3, *(v6 + 8));
    }

    heap_Free(a3, v6);
    return 0;
  }

  return v6;
}

void *word_data_free_all(uint64_t **a1, void *a2)
{
  v4 = *a1;
  v5 = (*a1)[3];
  if (v5)
  {
    do
    {
      v6 = v5[3];
      free_information(v5, a2);
      v5 = v6;
    }

    while (v6);
  }

  free_information(v4, a2);
  attribute_free_all(a1[2], a2);

  return heap_Free(a2, a1);
}

uint64_t BSCompareUniToTts(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t XLIT_chUnicodeWideToSJIS(unsigned int a1, char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  if (a1 - 65534 < 2 || a1 == 65279)
  {
    return 0;
  }

  if (a1 <= 0x7E)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 - 1025 <= 0x50)
  {
    *a2 = -124;
    if (a1 == 1025)
    {
      v8 = 70;
    }

    else
    {
      if (a1 <= 0x415)
      {
        v13 = 48;
      }

      else
      {
        v13 = 49;
      }

      v14 = v13 + a1;
      if (a1 > 0x42F)
      {
        v14 += 15;
      }

      v15 = a1 > 0x435;
      if (a1 > 0x43D)
      {
        ++v15;
      }

      v8 = v15 + v14;
    }

    a2[1] = v8;
    return 2;
  }

  if (a1 - 913 <= 0x38)
  {
    if (a1 > 0x3A1)
    {
      v9 = -32755;
    }

    else
    {
      v9 = -32754;
    }

    v10 = v9 + a1;
    if (a1 > 0x3A9)
    {
      ++v10;
    }

    v11 = v10 - (a1 > 0x3C1);
    goto LABEL_21;
  }

  if ((a1 + 159) <= 0x3Eu)
  {
    *a2 = a1 + 64;
    return 1;
  }

  if ((a1 + 255) > 0x5Du)
  {
    if (a1 - 12353 <= 0x52)
    {
      a2[1] = a1 + 94;
      v18 = -126;
LABEL_46:
      *a2 = v18;
      return 2;
    }

    if (a1 - 12449 <= 0x55)
    {
      if (a1 >> 5 <= 0x186)
      {
        v19 = -97;
      }

      else
      {
        v19 = -96;
      }

      a2[1] = v19 + a1;
      v18 = -125;
      goto LABEL_46;
    }

    if ((a1 - 19968) <= 0x51A5u)
    {
      v20 = jpj_UniToCTts(a1);
      if (v20 != 0x1FFF)
      {
        LOWORD(v12) = __rev16(jpj_CTtsToTts(v20));
        goto LABEL_22;
      }

      v21 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
      if (v21)
      {
        v11 = BSUniToTts[((v21 - BSUniToTts) >> 1) + 147];
LABEL_21:
        v12 = bswap32(v11) >> 16;
LABEL_22:
        *a2 = v12;
        return 2;
      }

      return 0;
    }

    if (a1 > 65503)
    {
      if (a1 > 65505)
      {
        if (a1 == 65506)
        {
          v12 = 33226;
        }

        else
        {
          if (a1 != 65509)
          {
LABEL_101:
            v24 = ssft_bsearch(&v27, BSUniToTts, 0x93uLL, 2, BSCompareUniToTts);
            if (v24)
            {
              v11 = BSUniToTts[((v24 - BSUniToTts) >> 1) + 147];
              goto LABEL_21;
            }

            if (a4 && *(a4 + 2))
            {
              if (v27 == *(a4 + 2))
              {
                v25 = 1;
LABEL_144:
                v11 = *(a4 + 2 * v25 - 2);
                goto LABEL_21;
              }

              v26 = 1;
              while (1)
              {
                v26 += 2;
                v25 = v26;
                if (!*(a4 + 2 * v26))
                {
                  break;
                }

                if (v27 == *(a4 + 2 * v26))
                {
                  goto LABEL_144;
                }
              }
            }

            return 0;
          }

          v12 = 33167;
        }
      }

      else if (a1 == 65504)
      {
        v12 = 33169;
      }

      else
      {
        v12 = 33170;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x2500u:
          v12 = 33951;
          break;
        case 0x2501u:
          v12 = 33962;
          break;
        case 0x2502u:
          v12 = 33952;
          break;
        case 0x2503u:
          v12 = 33963;
          break;
        case 0x2504u:
        case 0x2505u:
        case 0x2506u:
        case 0x2507u:
        case 0x2508u:
        case 0x2509u:
        case 0x250Au:
        case 0x250Bu:
        case 0x250Du:
        case 0x250Eu:
        case 0x2511u:
        case 0x2512u:
        case 0x2515u:
        case 0x2516u:
        case 0x2519u:
        case 0x251Au:
        case 0x251Eu:
        case 0x251Fu:
        case 0x2521u:
        case 0x2522u:
        case 0x2526u:
        case 0x2527u:
        case 0x2529u:
        case 0x252Au:
        case 0x252Du:
        case 0x252Eu:
        case 0x2531u:
        case 0x2532u:
        case 0x2535u:
        case 0x2536u:
        case 0x2539u:
        case 0x253Au:
        case 0x253Du:
        case 0x253Eu:
        case 0x2540u:
        case 0x2541u:
        case 0x2543u:
        case 0x2544u:
        case 0x2545u:
        case 0x2546u:
        case 0x2547u:
        case 0x2548u:
        case 0x2549u:
        case 0x254Au:
          goto LABEL_101;
        case 0x250Cu:
          v12 = 33953;
          break;
        case 0x250Fu:
          v12 = 33964;
          break;
        case 0x2510u:
          v12 = 33954;
          break;
        case 0x2513u:
          v12 = 33965;
          break;
        case 0x2514u:
          v12 = 33956;
          break;
        case 0x2517u:
          v12 = 33967;
          break;
        case 0x2518u:
          v12 = 33955;
          break;
        case 0x251Bu:
          v12 = 33966;
          break;
        case 0x251Cu:
          v12 = 33957;
          break;
        case 0x251Du:
          v12 = 33978;
          break;
        case 0x2520u:
          v12 = 33973;
          break;
        case 0x2523u:
          v12 = 33968;
          break;
        case 0x2524u:
          v12 = 33959;
          break;
        case 0x2525u:
          v12 = 33980;
          break;
        case 0x2528u:
          v12 = 33975;
          break;
        case 0x252Bu:
          v12 = 33970;
          break;
        case 0x252Cu:
          v12 = 33958;
          break;
        case 0x252Fu:
          v12 = 33974;
          break;
        case 0x2530u:
          v12 = 33979;
          break;
        case 0x2533u:
          v12 = 33969;
          break;
        case 0x2534u:
          v12 = 33960;
          break;
        case 0x2537u:
          v12 = 33976;
          break;
        case 0x2538u:
          v12 = 33981;
          break;
        case 0x253Bu:
          v12 = 33971;
          break;
        case 0x253Cu:
          v12 = 33961;
          break;
        case 0x253Fu:
          v12 = 33977;
          break;
        case 0x2542u:
          v12 = 33982;
          break;
        case 0x254Bu:
          v12 = 33972;
          break;
        default:
          if (a1 != 8741)
          {
            goto LABEL_101;
          }

          v12 = 33121;
          break;
      }
    }

    LOWORD(v12) = __rev16(v12);
    goto LABEL_22;
  }

  if (a1 > 0x5Au)
  {
    if (a1 > 0x5Cu)
    {
      if (a1 == 93)
      {
        v16 = -127;
        v17 = 112;
        goto LABEL_92;
      }

      if (a1 == 94)
      {
        v16 = -127;
        v17 = 96;
        goto LABEL_92;
      }
    }

    else
    {
      if (a1 == 91)
      {
        v16 = -127;
        v17 = 111;
        goto LABEL_92;
      }

      if (a1 == 92)
      {
        v16 = -127;
        v17 = 98;
LABEL_92:
        a2[1] = v17;
        *a2 = v16;
        return 2;
      }
    }

LABEL_88:
    if (a1 <= 0xFF3A)
    {
      v23 = 63;
    }

    else
    {
      v23 = 64;
    }

    v17 = v23 + a1;
    v16 = -126;
    goto LABEL_92;
  }

  v5 = 0;
  v16 = -127;
  v17 = 73;
  switch(a1)
  {
    case 1:
      goto LABEL_92;
    case 2:
    case 7:
      return v5;
    case 3:
      v17 = -108;
      goto LABEL_92;
    case 4:
      v17 = -112;
      goto LABEL_92;
    case 5:
      v17 = -109;
      goto LABEL_92;
    case 6:
      v17 = -107;
      goto LABEL_92;
    case 8:
      v17 = 105;
      goto LABEL_92;
    case 9:
      v17 = 106;
      goto LABEL_92;
    case 10:
      v17 = -106;
      goto LABEL_92;
    case 11:
      v17 = 123;
      goto LABEL_92;
    case 12:
      v17 = 67;
      goto LABEL_92;
    case 13:
      v17 = 124;
      goto LABEL_92;
    case 14:
      v17 = 68;
      goto LABEL_92;
    case 15:
      v17 = 94;
      goto LABEL_92;
    case 26:
      v17 = 70;
      goto LABEL_92;
    case 27:
      v17 = 71;
      goto LABEL_92;
    case 28:
      v17 = -125;
      goto LABEL_92;
    case 29:
      v17 = -127;
      goto LABEL_92;
    case 30:
      v17 = -124;
      goto LABEL_92;
    case 31:
      v17 = 72;
      goto LABEL_92;
    case 32:
      v17 = -105;
      goto LABEL_92;
    case 59:
      v17 = 109;
      goto LABEL_92;
    case 60:
      v17 = 95;
      goto LABEL_92;
    case 61:
      v17 = 110;
      goto LABEL_92;
    case 62:
      v17 = 79;
      goto LABEL_92;
    case 63:
      v17 = 81;
      goto LABEL_92;
    case 64:
      v17 = 77;
      goto LABEL_92;
    default:
      goto LABEL_88;
  }

  return v5;
}

uint64_t jpj_UniToCTts(__int16 a1)
{
  if ((a1 - 19968) > 0x51A5u)
  {
    return 0x1FFFLL;
  }

  v1 = (&CUni2CTts + 2 * CUni2CTtsindex[(a1 - 19968) >> 6]);
  LOWORD(v2) = a1 & 0x3F;
  if ((a1 & 0x3F) == 0)
  {
    return *v1 >> 3;
  }

  do
  {
    v3 = *v1 & 7;
    if ((*v1 & 7) != 0)
    {
      ++v1;
    }

    else
    {
      v3 = v1[1];
      v1 += 2;
    }

    v2 = (v2 - v3);
  }

  while (v2 > 0);
  if (v2)
  {
    return 0x1FFFLL;
  }

  else
  {
    return *v1 >> 3;
  }
}

uint64_t jpj_CTtsToTts(unsigned int a1)
{
  if (a1)
  {
    v1 = a1 + 43;
    if (a1 <= 0xB95)
    {
      v1 = a1;
    }

    v2 = v1 + 1409;
    v3 = v2 / 0xBCu;
    LOBYTE(v2) = v2 % 0xBCu;
    v4 = v2 + 64;
    v5 = (v2 + 64);
    v6 = v2 + 65;
    if (v5 <= 0x7E)
    {
      v6 = v4;
    }

    v7 = v3 - 127;
    v8 = (v3 - 127);
    v9 = v3 - 63;
    if (v8 <= 0x9F)
    {
      v9 = v7;
    }

    return (v6 | (v9 << 8));
  }

  else
  {
    return -32425;
  }
}

uint64_t XLIT_chSJISToUnicodeWide(char *a1, _WORD *a2)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v4 = 1;
LABEL_3:
    *a2 = v3;
    return v4;
  }

  if (v3 >= 0xA0 && ((v3 & 0xF0) != 0xE0 ? (v7 = v3 - 250 > 2) : (v7 = 0), v7))
  {
    v8 = v3 << 8;
    v4 = 1;
  }

  else
  {
    v8 = a1[1] | (v3 << 8);
    v4 = 2;
  }

  v5 = 0;
  if (v8 != 33663)
  {
    v9 = v8 + 32448;
    if ((v8 + 32448) <= 0x6964u)
    {
      if ((v8 + 32448) < 0xBDu)
      {
        if (v8 < 0x817F)
        {
LABEL_62:
          LOWORD(v3) = jpj_BSTtsToUni[v9];
          goto LABEL_3;
        }

        if (v8 != 33151 && v8 <= 0x81AC)
        {
          v10 = 32447;
LABEL_61:
          v9 = v8 + v10;
          goto LABEL_62;
        }

        if ((v8 & 0x81F8) == 0x81B8)
        {
          v10 = 32436;
          goto LABEL_61;
        }

        if ((v8 + 32312) <= 6u)
        {
          v10 = 32428;
          goto LABEL_61;
        }

        if ((v8 + 32294) <= 0xEu)
        {
          v10 = 32417;
          goto LABEL_61;
        }

        if ((v8 & 0x81F8) == 0x81F0)
        {
          v10 = 32410;
          goto LABEL_61;
        }

        if (v8 == 33276)
        {
          v9 = 146;
          goto LABEL_62;
        }

        return 0;
      }

      if ((v8 + 32177) <= 0x4Bu)
      {
        if (v8 - 89 <= 0x27 && ((1 << (v8 - 89)) & 0xFE0000007FLL) != 0)
        {
          return 0;
        }

        *a2 = v8 + 31937;
        if (v8 < 0x827A)
        {
          return v4;
        }

        v11 = 31936;
        goto LABEL_49;
      }

      if ((v8 + 31841) <= 0x37u)
      {
        if (v8 - 183 >= 8)
        {
          if (v8 >> 4 <= 0x83A)
          {
            v12 = 32754;
          }

          else
          {
            v12 = 32755;
          }

          v13 = v12 + v8;
          *a2 = v13;
          if (v8 < 0x83BF)
          {
            return v4;
          }

          *a2 = v13 - 1;
          if (v8 >> 4 <= 0x83C)
          {
            LOWORD(v3) = v13 - 1;
          }

          else
          {
            LOWORD(v3) = v13;
          }

          goto LABEL_3;
        }

        return 0;
      }

      if ((v8 + 31680) > 0x51u)
      {
        if ((v8 + 32424) <= 0x746u)
        {
          if ((v8 + 32097) >= 0x53u)
          {
            if ((v8 + 31936) >= 0x57u)
            {
              return 0;
            }

            *a2 = v8 - 21151;
            if (v8 < 0x837F)
            {
              return v4;
            }

            v11 = -21152;
          }

          else
          {
            v11 = -21086;
          }

LABEL_49:
          LOWORD(v3) = v8 + v11;
          goto LABEL_3;
        }

        v5 = 0;
        if ((v8 + 26509) >= 0x2Cu && (v8 + 24576) >= 0x4000u)
        {
          if (v8 < 0x40u)
          {
            return 0;
          }

          v5 = 0;
          if (v8 != 127 && v8 <= 0xFCu)
          {
            v14 = jpj_TtsToCTts(v8);
            if (v14 >> 2 <= 0x634)
            {
              LOWORD(v3) = jpj_CTts2Uni[v14];
              goto LABEL_3;
            }

            return 0;
          }
        }
      }

      else
      {
        v5 = 0;
        if (v8 != 127 && v8 - 97 >= 0xF)
        {
          if (v8 == 33862)
          {
            LOWORD(v3) = 1025;
            goto LABEL_3;
          }

          if (v8 == 33910)
          {
            LOWORD(v3) = 1105;
            goto LABEL_3;
          }

          if (v8 > 0x8445)
          {
            v15 = 32719;
          }

          else
          {
            v15 = 32720;
          }

          *a2 = v15 + v8;
          if (v8 >> 5 < 0x423)
          {
            return v4;
          }

          *a2 = v8 + 32704;
          if (v8 < 0x8476)
          {
            return v4;
          }

          *a2 = v8 + 32703;
          if (v8 < 0x847E)
          {
            return v4;
          }

          v11 = 32702;
          goto LABEL_49;
        }
      }
    }
  }

  return v5;
}

uint64_t jpj_TtsToCTts(unsigned int a1)
{
  if (a1 == 33111)
  {
    return 0;
  }

  else
  {
    v2 = a1 >> 8;
    if (a1 >> 13 > 4)
    {
      LOBYTE(v2) = BYTE1(a1) - 64;
    }

    if (a1 <= 0x7Eu)
    {
      v3 = a1;
    }

    else
    {
      v3 = a1 - 1;
    }

    v4 = 188 * (v2 + 127) + (v3 - 64);
    v5 = v4 - 1409;
    v6 = (v4 - 1409);
    v1 = v4 - 1452;
    if (v6 <= 0xB95)
    {
      return v5;
    }
  }

  return v1;
}

const char *marker_getMarkerArgStr(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "__not_defined__";
  }

  else
  {
    return off_279DB5AD8[a1];
  }
}

uint64_t marker_string2tag(char *__s1, _DWORD *a2, _DWORD *a3)
{
  v6 = 0;
  v7 = "MARKER_PHONEME";
  do
  {
    if (!cstdlib_strcmp(__s1, v7))
    {
      v7 = &markerTable[56 * v6];
      goto LABEL_16;
    }

    v8 = cstdlib_strcmp(__s1, v7 + 7);
    if (v8)
    {
      ++v6;
    }

    v7 = &markerTable[56 * v6];
    if (*v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = v8;
  if (v8)
  {
    result = 20;
  }

  else
  {
    result = 0;
  }

  if (v10)
  {
    v12 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

LABEL_16:
  result = 0;
  *a2 = *(v7 + 12);
  v12 = *(v7 + 13);
LABEL_17:
  *a3 = v12;
  return result;
}

uint64_t marker_tag2string(int a1, const char **a2, _DWORD *a3)
{
  v3 = 0;
  v4 = "MARKER_PHONEME";
  do
  {
    v5 = *(v4 + 12);
    if (v5 != a1)
    {
      ++v3;
    }

    v4 = &markerTable[56 * v3];
    if (*v4)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  if (v5 == a1)
  {
    result = 0;
    v8 = v4 + 7;
    v7 = *(v4 + 13);
  }

  else
  {
    v7 = 0;
    v8 = "";
    result = 20;
  }

  *a2 = v8;
  *a3 = v7;
  return result;
}

BOOL marker_hasNonConstCharPtrArg(int a1)
{
  v1 = &dword_26ED197EC;
  v2 = 57;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1 == 3;
}

BOOL marker_hasConstCharPtrArg(int a1)
{
  v1 = &dword_26ED197EC;
  v2 = 57;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1 == 4;
}

BOOL marker_hasCharPtrArg(int a1)
{
  v1 = &dword_26ED197EC;
  v2 = 57;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return (*v1 - 3) < 2;
}

uint64_t marker_getArgType(int a1)
{
  v1 = &dword_26ED197EC;
  v2 = 57;
  while (*(v1 - 1) != a1)
  {
    v1 += 14;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

const char *marker_getString(int a1)
{
  result = "MARKER_PHONEME";
  v3 = 57;
  while (*(result + 12) != a1)
  {
    result += 56;
    if (!--v3)
    {
      return "MARKER_UNDEF";
    }
  }

  return result;
}

uint64_t marker_serialize_tostring(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v16 = "UNKNOWN";
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (a4)
  {
    v8 = *(a3 + 20);
  }

  else
  {
    cstdlib_memset(v14, 0, 0x40uLL);
    *(&v14[1] + 4) = *v5;
    DWORD1(v14[2]) = *(v5 + 4);
    *(&v14[2] + 1) = *(v5 + 3);
    v8 = DWORD1(v14[1]);
    v5 = v14;
  }

  marker_tag2string(v8, &v16, &v15);
  LH_utoa(*(v5 + 6), v17, 0xAu);
  a1(a2, v17);
  a1(a2, " ");
  LH_utoa(*(v5 + 7), v17, 0xAu);
  a1(a2, v17);
  if (a4)
  {
    a1(a2, " ");
    v9 = *v5 ? "INT" : "EXT";
    a1(a2, v9);
    a1(a2, " ");
    LH_utoa(*(v5 + 14), v17, 0xAu);
    a1(a2, v17);
    if (*(v5 + 14))
    {
      v10 = *(v5 + 6);
      a1(a2, " [");
      if (v10)
      {
        v11 = cstdlib_strlen(v10);
        LH_utoa(v11, v17, 0xAu);
        a1(a2, v17);
        a1(a2, " ");
        a1(a2, v10);
      }

      a1(a2, "]");
    }
  }

  a1(a2, " ");
  a1(a2, v16);
  if ((v15 - 3) <= 1)
  {
    v12 = *(v5 + 5);
    a1(a2, " (");
    if (!v12)
    {
      v12 = "";
    }

    goto LABEL_18;
  }

  if ((v15 - 1) <= 1)
  {
    v12 = v17;
    LH_utoa(*(v5 + 10), v17, 0xAu);
    a1(a2, " (");
LABEL_18:
    a1(a2, v12);
    a1(a2, ")");
  }

  a1(a2, " ");
  LH_utoa(*(v5 + 8), v17, 0xAu);
  a1(a2, v17);
  a1(a2, " ");
  LH_utoa(*(v5 + 9), v17, 0xAu);
  return (a1)(a2, v17);
}

uint64_t marker_deserialize_fromstring(uint64_t a1, char *a2, char *__b, int a4)
{
  v5 = __b;
  __src = 0;
  if (a4)
  {
    cstdlib_memset(__b, 0, 0x40uLL);
    v8 = v26;
  }

  else
  {
    v8 = __b;
    v5 = 0;
  }

  __s2 = 0;
  v29 = 0;
  memset(v26, 0, sizeof(v26));
  cstdlib_memset(v8, 0, 0x20uLL);
  local_strtok_r(a2, " \t\r\n", &__src, &__s2);
  *(v8 + 1) = cstdlib_atoi(__s2);
  local_strtok_r(0, " \t\r\n", &__src, &__s2);
  *(v8 + 2) = cstdlib_atoi(__s2);
  if (a4)
  {
    local_strtok_r(0, " \t\r\n", &__src, &__s2);
    *v5 = cstdlib_strcmp("INT", __s2) == 0;
    local_strtok_r(0, " \t\r\n", &__src, &__s2);
    v9 = cstdlib_atol(__s2);
    *(v5 + 14) = v9;
    if (v9)
    {
      local_strtok_r(0, " \t\r\n", &__src, &__s2);
      v10 = cstdlib_atol(__s2 + 1);
      v11 = heap_Calloc(*(a1 + 8), v10 + 1, 1);
      *(v5 + 6) = v11;
      if (!v11)
      {
        return 10;
      }

      v12 = __src;
      cstdlib_strncpy(v11, __src, v10);
      local_strtok_r(&v12[v10], " \t\r\n", &__src, &__s2);
    }
  }

  local_strtok_r(0, " \t\r\n", &__src, &__s2);
  v13 = marker_string2tag(__s2, &v29 + 1, &v29);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = v29;
  *v8 = HIDWORD(v29);
  if ((v14 - 1) <= 1)
  {
    local_strtok_r(0, ")", &__src, &__s2);
    v15 = __s2;
    if (__s2)
    {
      v16 = *__s2;
      if (*__s2)
      {
        do
        {
          if (!cstdlib_strchr("(", v16))
          {
            break;
          }

          v17 = *++v15;
          v16 = v17;
        }

        while (v17);
        __s2 = v15;
      }
    }

    *(v8 + 6) = cstdlib_atol(v15);
    goto LABEL_23;
  }

  if ((v14 - 3) <= 1)
  {
    v19 = cstdlib_strstr(__src, "(");
    if (!v19)
    {
      return 20;
    }

    v20 = v19;
    v21 = cstdlib_strstr(v19 + 1, ")");
    if (!v21)
    {
      return 20;
    }

    do
    {
      v22 = v21;
      v21 = cstdlib_strstr(v21 + 1, ")");
    }

    while (v21);
    v23 = heap_Calloc(*(a1 + 8), (v22 - v20), 1);
    *(v8 + 3) = v23;
    if (v23)
    {
      cstdlib_strncpy(v23, v20 + 1, v22 - v20 - 1);
      local_strtok_r(v22, " \t\r\n", &__src, &__s2);
      goto LABEL_23;
    }

    return 10;
  }

LABEL_23:
  local_strtok_r(0, " \t\r\n", &__src, &__s2);
  *(v8 + 3) = cstdlib_atoi(__s2);
  v18 = local_strtok_r(0, " \t\r\n", &__src, &__s2);
  v24 = cstdlib_atoi(__s2);
  *(v8 + 4) = v24;
  if (a4)
  {
    *(v5 + 20) = *v8;
    *(v5 + 9) = v24;
    *(v5 + 5) = *(v8 + 3);
  }

  return v18;
}

uint64_t local_strtok_r(char *__s, char *__charset, const char **a3, char **a4)
{
  v7 = __s;
  *a4 = 0;
  if (!__s)
  {
    v7 = *a3;
  }

  v8 = &v7[cstdlib_strspn(v7, __charset)];
  if (!*v8)
  {
    return 20;
  }

  *a4 = v8;
  v9 = cstdlib_strpbrk(v8, __charset);
  if (v9)
  {
    *v9 = 0;
    v10 = v9 + 1;
  }

  else
  {
    v10 = cstdlib_strchr(*a4, 0);
  }

  v11 = 0;
  *a3 = v10;
  return v11;
}

char *appendString(uint64_t a1, char *__s, unsigned int *a3, const char *a4)
{
  v4 = __s;
  if (__s)
  {
    v8 = cstdlib_strlen(__s);
    v9 = cstdlib_strlen(a4);
    v10 = *a3;
    if (v9 + v8 >= v10)
    {
      v11 = (v10 + 128);
      *a3 = v11;
      v12 = cstdlib_strlen(v4);
      if (cstdlib_strlen(a4) + v12 >= v11)
      {
        v14 = cstdlib_strlen(v4);
        v13 = v14 + 2 * cstdlib_strlen(a4);
        *a3 = v13;
      }

      else
      {
        v13 = *a3;
      }

      v15 = heap_Calloc(*(a1 + 8), v13, 1);
      if (v15)
      {
        v16 = v15;
        cstdlib_strcat(v15, v4);
        cstdlib_strcat(v16, a4);
        heap_Free(*(a1 + 8), v4);
        return v16;
      }
    }

    else
    {
      cstdlib_strcat(v4, a4);
    }
  }

  return v4;
}

uint64_t marker_copy(_OWORD *a1, uint64_t a2, _OWORD *a3)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  return marker_copyParts(a1, a2, a3);
}

uint64_t marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a3)
  {
    if (!marker_hasNonConstCharPtrArg(*a1))
    {
      return 1;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = cstdlib_strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (result)
    {
      v9 = result;
      if (v8)
      {
        cstdlib_strcpy(result, *(a1 + 24));
      }

      else
      {
        *result = 0;
      }

      *(a3 + 24) = v9;
      return 1;
    }
  }

  return result;
}

int *marker_freeParts(int *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*result);
    if (result)
    {
      v4 = *(v3 + 3);
      if (v4)
      {
        result = heap_Free(a2, v4);
        *(v3 + 3) = 0;
      }
    }
  }

  return result;
}

uint64_t compare_3(int *a1, int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *a2;
  if (*a1 == 0x4000)
  {
    if (v7 != 0x4000)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = a1[4];
    v9 = a2[4];
    if (v8 | v9)
    {
      return (v9 - v8);
    }

    v7 = 0x4000;
  }

  else
  {
    if (v7 == 0x4000)
    {
      return 1;
    }

    if (v6 == 7 && v7 == 7)
    {
      if (a1[1] == a2[1])
      {
        v10 = a1[2];
        v11 = a2[2];
        if (v10 > v11)
        {
          return 1;
        }

        if (v11 > v10)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v7 = 7;
    }
  }

  v12 = 255;
  v13 = 5;
  v14 = 255;
  v15 = &word_26ED1A46C;
  do
  {
    v16 = *(v15 - 1);
    if (v16 == v6)
    {
      v14 = *v15;
    }

    if (v16 == v7)
    {
      v12 = *v15;
    }

    v15 += 4;
    --v13;
  }

  while (v13);
  if (v12 != 255 && v14 != 255)
  {
    v4 = (v14 - v12);
    if (v14 != v12)
    {
      return v4;
    }
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 < v18)
  {
    return 0xFFFFFFFFLL;
  }

  if (v17 > v18)
  {
    return 1;
  }

  v19 = a1[2];
  v20 = a2[2];
  if (v19 <= v20)
  {
    return v20 > v19;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t marker_logOutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v15 = 0;
  if ((marker_tag2string(*a5, &v16, &v15) & 0x80000000) != 0 || !v16)
  {
    v13 = "%s MARKER_%d : posCur %d, lenCur %d";
  }

  else if ((v15 - 3) <= 1 && *(a5 + 24))
  {
    v13 = "%s MARKER_%s [%s] : posCur %u, lenCur %u";
  }

  else if (v15 == 1)
  {
    v13 = "%s MARKER_%s [%u] : posCur %u, lenCur %u";
  }

  else if (v15 == 2)
  {
    v13 = "%s MARKER_%s [%c] : posCur %u, lenCur %u";
  }

  else
  {
    v13 = "%s MARKER_%s [] : posCur %u, lenCur %u";
  }

  return log_OutText(a1, a2, a3, 0, v13, v10, v11, v12, a4);
}

char *marker_createTSOInfoString(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 256;
  v8 = heap_Calloc(*(a1 + 8), 256, 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  __sprintf_chk(__dst, 0, 0x80uLL, "%s, %lu markers:\n", a2, a4 >> 5);
  appended = appendString(a1, v9, &v22, __dst);
  if (a4 >= 0x20)
  {
    v11 = 0;
    v12 = (a3 + 24);
    do
    {
      __src = "UNKNOWN";
      v20 = 0;
      if (v11)
      {
        v13 = *(v12 - 3);
        if (*(v12 - 11) > v13)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "ERROR: TSODataDump - Markers are out of order: posCur %lu -> %lu [OUT OF ORDER!]\n", *(v12 - 11), v13);
          appended = appendString(a1, appended, &v22, __dst);
        }
      }

      __sprintf_chk(__dst, 0, 0x80uLL, "{%lu %lu:", *(v12 - 5), *(v12 - 4));
      v14 = appendString(a1, appended, &v22, __dst);
      marker_tag2string(*(v12 - 6), &__src, &v20);
      if ((v20 - 3) > 1)
      {
        if (v20 == 1)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "%s=%lu");
        }

        else if (v20 == 2)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "%s=%c %lu");
        }

        else
        {
          cstdlib_strcpy(__dst, __src);
        }

        v16 = __dst;
        v17 = a1;
        v15 = v14;
      }

      else
      {
        __sprintf_chk(__dst, 0, 0x80uLL, "%s=", __src);
        v15 = appendString(a1, v14, &v22, __dst);
        v16 = *v12;
        v17 = a1;
        if (!*v12)
        {
          v16 = "<NULL>";
        }
      }

      v18 = appendString(v17, v15, &v22, v16);
      __sprintf_chk(__dst, 0, 0x80uLL, " dst %lu %lu}\n", *(v12 - 3), *(v12 - 2));
      appended = appendString(a1, v18, &v22, __dst);
      ++v11;
      v12 += 4;
    }

    while (a4 >> 5 != v11);
  }

  return appended;
}

uint64_t ppint_marker_copyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (!a1 || !a3)
  {
    return result;
  }

  if (marker_hasNonConstCharPtrArg(*(a1 + 20)))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = cstdlib_strlen(v7);
    }

    else
    {
      v8 = 0;
    }

    result = heap_Alloc(a2, (v8 + 1));
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (v8)
    {
      cstdlib_strcpy(result, *(a1 + 40));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 40) = v9;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = cstdlib_strlen(v10);
    result = heap_Alloc(a2, (v11 + 1));
    if (!result)
    {
      return result;
    }

    v12 = result;
    if (v11)
    {
      cstdlib_strcpy(result, *(a1 + 48));
    }

    else
    {
      *result = 0;
    }

    *(a3 + 48) = v12;
  }

  return 1;
}

void *ppint_marker_freeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = marker_hasNonConstCharPtrArg(*(result + 5));
    if (result)
    {
      v4 = v3[5];
      if (v4)
      {
        result = heap_Free(a2, v4);
        v3[5] = 0;
      }
    }

    v5 = v3[6];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[6] = 0;
    }
  }

  return result;
}

char *ppint_marker_createTSOInfoString(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 256;
  v8 = heap_Calloc(*(a1 + 8), 256, 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  __sprintf_chk(__dst, 0, 0x80uLL, "%s, %lu markers:\n", a2, a4 >> 6);
  appended = appendString(a1, v9, &v23, __dst);
  if (a4 >= 0x40)
  {
    v11 = 0;
    v12 = (a3 + 56);
    do
    {
      __src = "UNKNOWN";
      v21 = 0;
      if (v11)
      {
        v13 = *(v12 - 6);
        if (*(v12 - 22) > v13)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "ERROR: TSODataDump - Markers are out of order: posCur %lu -> %lu  [OUT OF ORDER!]\n", *(v12 - 22), v13);
          appended = appendString(a1, appended, &v23, __dst);
        }
      }

      __sprintf_chk(__dst, 0, 0x80uLL, "{%lu %lu:", *(v12 - 8), *(v12 - 7));
      v14 = appendString(a1, appended, &v23, __dst);
      marker_tag2string(*(v12 - 9), &__src, &v21);
      if ((v21 - 3) > 1)
      {
        if (v21 == 1)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "%s=%lu");
        }

        else if (v21 == 2)
        {
          __sprintf_chk(__dst, 0, 0x80uLL, "%s=%c %lu");
        }

        else
        {
          cstdlib_strcpy(__dst, __src);
        }

        v16 = __dst;
        v17 = a1;
        v15 = v14;
      }

      else
      {
        __sprintf_chk(__dst, 0, 0x80uLL, "%s=", __src);
        v15 = appendString(a1, v14, &v23, __dst);
        v16 = *(v12 - 2);
        v17 = a1;
      }

      v18 = appendString(v17, v15, &v23, v16);
      if (*v12 && *(v12 - 1))
      {
        cstdlib_strcpy(__dst, " EXT=");
        v19 = appendString(a1, v18, &v23, __dst);
        v18 = appendString(a1, v19, &v23, *(v12 - 1));
      }

      __sprintf_chk(__dst, 0, 0x80uLL, " dst %lu %lu}\n", *(v12 - 6), *(v12 - 5));
      appended = appendString(a1, v18, &v23, __dst);
      ++v11;
      v12 += 16;
    }

    while (a4 >> 6 != v11);
  }

  return appended;
}

uint64_t ttteg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2288001025;
  }

  result = 0;
  *a2 = &ITtteg;
  return result;
}

uint64_t ttteg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2288001031;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    __s1 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    if ((InitRsrcFunction(a3, a4, &v25) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v25 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[15] = safeh_GetNullHandle();
        *(v11 + 128) = v12;
        Object = objc_GetObject(*(v25 + 48), "SYNTHSTREAM", &v23);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_36;
        }

        *(v11 + 40) = *(v23 + 8);
        Object = sub_ObjOpen(a3, a4, (v11 + 16));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(v25 + 8);
        *v21 = xmmword_26ED1A498;
        *&v21[16] = 0;
        if (!vector_ObjOpen(v14, v21, 1, (v11 + 24)))
        {
          v11 = 0;
LABEL_35:
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 269;
          return v5;
        }

        if ((paramc_ParamGetStr(*(v25 + 40), "rulesetsfrommarkup", &__s1) & 0x80000000) != 0)
        {
          *(v11 + 32) = 0;
          Object = paramc_ParamSetStr(*(v25 + 40), "rulesetsfrommarkup", "0");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (__s1)
          {
            v15 = *__s1;
            if (*__s1)
            {
              if (LH_stricmp(__s1, "true"))
              {
                v15 = cstdlib_strcmp(__s1, "1") == 0;
              }

              else
              {
                v15 = 1;
              }
            }
          }

          else
          {
            v15 = 0;
          }

          *(v11 + 32) = v15;
        }

        v16 = *(v25 + 40);
        *v21 = v11;
        *&v21[8] = xmmword_287EEF138;
        Object = paramc_ListenerAdd(v16, "rulesetsfrommarkup", v21);
        if ((Object & 0x80000000) != 0)
        {
LABEL_36:
          v5 = Object;
          ttteg_pObjClose(v11);
          return v5;
        }

        *(v11 + 112) = 0;
        if ((paramc_ParamGetStr(*(v25 + 40), "clcpppipelinemode", &v22) & 0x80000000) == 0 && v22 && *v22)
        {
          *(v11 + 112) = 1;
        }

        else if (!*(v11 + 112))
        {
          *v21 = 0;
          Object = nuance_pcre_ObjOpen(a3, a4, v11 + 120);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_36;
          }

          if (paramc_ParamGetUInt(*(v25 + 40), "retttmaxpcreframeblocks", v21) < 0)
          {
            v17 = 10;
          }

          else
          {
            v17 = *v21;
          }

          UInt = paramc_ParamGetUInt(*(v25 + 40), "retttnumframesinblock", v21);
          v19 = *v21;
          if (UInt < 0)
          {
            v19 = 10;
          }

          nuance_pcre_Init(*(v11 + 120), *(v11 + 128), v17, v19);
          goto LABEL_34;
        }

        Object = esc_seq_init(a3, a4, (v11 + 120));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        Object = paramc_ParamSetInt(*(v25 + 40), "enablerett", 1u);
        if ((Object & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      return 2288001034;
    }
  }

  return v5;
}

uint64_t ttteg_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      if ((InitRsrcFunction(*a1, a1[1], &v8) & 0x80000000) == 0)
      {
        Size = vector_GetSize(a1[3]);
        if (Size)
        {
          v6 = Size - 1;
          do
          {
            if (!vector_GetElemAt(a1[3], v6, &v7))
            {
              break;
            }

            ruleset_UnloadRules(v7);
            ruleset_ObjClose(v7);
            vector_Remove(a1[3], v6--);
          }

          while (v6 != -1);
        }
      }
    }

    ttteg_ProcessEnd(a1, a2);
    return ttteg_pObjClose(a1);
  }

  return result;
}

uint64_t ttteg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 269, 136);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = ttteg_ResourceTypes_SZ_RETTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t ttteg_ResourceLoad(_WORD **a1, int a2, char *a3, const char *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v36[128] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v7 = 2288001031;
  v33 = 0;
  v32 = 0;
  if (!a3 || !a7)
  {
    return v7;
  }

  if (a4)
  {
    v14 = a6 != 0;
    if (!a5 && a6)
    {
      return v7;
    }
  }

  else
  {
    if (!a5 || !a6)
    {
      return v7;
    }

    v14 = 1;
  }

  Str = safeh_HandleCheck(a1, a2, 269, 136);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  *a7 = 0;
  *(a7 + 8) = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v35) & 0x80000000) != 0)
  {
    return v7;
  }

  if (a4)
  {
    if (*a4)
    {
      v36[0] = 0;
      if (vector_GetElemAt(a1[3], 0, v36))
      {
        v16 = 0;
        while (!*(v36[0] + 44))
        {
          if (*(v36[0] + 24))
          {
            Name = ruleset_GetName(v36[0]);
            if (!cstdlib_strcmp(Name, a4))
            {
              return 2288001048;
            }

            if (*(v36[0] + 32))
            {
              AbsName = ruleset_GetAbsName(v36[0]);
LABEL_18:
              if (!cstdlib_strcmp(AbsName, a4))
              {
                return 2288001048;
              }
            }
          }

          if (!vector_GetElemAt(a1[3], ++v16, v36))
          {
            goto LABEL_25;
          }
        }

        AbsName = ruleset_GetName(v36[0]);
        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v19 = !v14;
  if (!a5)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v33 = a5;
    v32 = a6;
LABEL_36:
    v22 = ruleset_ObjOpen(*a1, a1[1], a1[15], a1[16], a1[2], v25);
    if ((v22 & 0x80000000) == 0)
    {
      Rules = ruleset_LoadRules(v25, a4, 0, a3, v33, v32);
      if ((Rules & 0x80000000) == 0)
      {
        if (vector_Add(a1[3], v25) == 1)
        {
          *a7 = v26;
          *(a7 + 8) = 300;
          goto LABEL_45;
        }

        Rules = 2288001034;
      }

      ruleset_ObjClose(v25);
      goto LABEL_45;
    }

LABEL_41:
    Rules = v22;
    goto LABEL_45;
  }

  v24 = 0;
  bzero(v36, 0x400uLL);
  Rules = brk_DataOpenEx(*(v35 + 24), a4, 1, &v34);
  if (cstdlib_strstr(a3, ";loader=broker") && (Rules & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(v35 + 40), "langcode", &v24);
    if ((Str & 0x80000000) == 0)
    {
      v21 = brokeraux_ComposeBrokerString(v35, a4, 0, 1, v24, 0, 0, v36, 0x400uLL);
      if (v21 < 0)
      {
        Rules = v21 | 0x88602000;
        goto LABEL_45;
      }

      Rules = brk_DataOpenEx(*(v35 + 24), v36, 0, &v34);
      goto LABEL_34;
    }

    return Str;
  }

LABEL_34:
  if ((Rules & 0x80000000) == 0)
  {
    v22 = brk_DataMapEx(*(v35 + 24), v34, 0, &v32, &v33);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_45:
  if (v33)
  {
    brk_DataUnmap(*(v35 + 24), v34, v33);
    v33 = 0;
  }

  if (v34)
  {
    brk_DataClose(*(v35 + 24), v34);
  }

  return Rules;
}

uint64_t ttteg_ResourceUnload(uint64_t a1, int a2, _WORD *a3, int a4)
{
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = safeh_HandleCheck(a3, a4, 300, 8);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2288002061;
  if (!vector_GetElemAt(*(a1 + 24), 0, &v11))
  {
    return v8;
  }

  v9 = 0;
  while (v11[10] != a3)
  {
    if (!vector_GetElemAt(*(a1 + 24), ++v9, &v11))
    {
      return v8;
    }
  }

  v7 = ruleset_UnloadRules(v11);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = ruleset_ObjClose(v11);
  if ((v8 & 0x80000000) == 0)
  {
    vector_Remove(*(a1 + 24), v9);
  }

  return v8;
}

uint64_t ttteg_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v15 = 0;
  v14 = 0;
  Int = 2288001031;
  if ((safeh_HandleCheck(a1, a2, 269, 136) & 0x80000000) != 0)
  {
    return 2288001032;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v15) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[10] = a3;
    a1[11] = a4;
    do
    {
      v10 = (*(a1[5] + 8))(a3, a4, 134, ttteg_ProcessStart_szInput[v9], 0, 0, a1 + 12);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[12] = 0;
    }

    Int = paramc_ParamGetInt(*(v15 + 40), "enablerett", &v14);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (v14 == 1)
    {
      v12 = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 0, a1 + 6);
      if ((v12 & 0x80000000) != 0)
      {
        Int = v12;
LABEL_17:
        ttteg_ProcessEnd(a1, a2);
        return Int;
      }

      Int = (*(a1[5] + 8))(a3, a4, 134, "text/plain;charset=utf-8", 0, 1, a1 + 8);
      if ((Int & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[6] = 0;
      a1[8] = 0;
    }
  }

  return Int;
}

uint64_t ttteg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v51 = 0;
  __src = 0;
  v50 = 0;
  __s = 0;
  v48 = 0;
  v45 = 0;
  __n = 0;
  v44 = 0;
  v7 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v51) & 0x80000000) == 0)
  {
    Int = paramc_ParamGetInt(*(v51 + 40), "enablerett", &v44);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (!*(a1 + 48))
    {
      Str = 0;
LABEL_56:
      v15 = 1;
      goto LABEL_57;
    }

    Str = 0;
    v15 = 1;
    if (!*(a1 + 64) || !v44)
    {
      goto LABEL_57;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 40) + 144))(*(a1 + 48), *(a1 + 56), &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v15 = *(a1 + 112) | __n;
      if (!v15)
      {
        Str = 0;
LABEL_57:
        *a5 = v15;
        return Str;
      }

      v7 = (*(*(a1 + 40) + 88))(*(a1 + 48), *(a1 + 56), &__src, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        if (log_HasTraceTuningDataSubscriber(*(v51 + 32)))
        {
          log_OutTraceTuningData(*(v51 + 32), 4, "%s%s", v16, v17, v18, v19, v20, "BEG");
          log_OutTraceTuningDataBinary(*(v51 + 32), 5, "", "text/plain;charset=utf-8", __src, HIDWORD(__n));
        }

        v21 = heap_Alloc(*(v51 + 8), (HIDWORD(__n) + 1));
        __s = v21;
        if (!v21)
        {
          return 2288001034;
        }

        if (__src)
        {
          cstdlib_memcpy(v21, __src, HIDWORD(__n));
          v21 = __s;
        }

        v21[HIDWORD(__n)] = 0;
        Int = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), HIDWORD(__n));
        if ((Int & 0x80000000) == 0)
        {
          __src = 0;
          Str = paramc_ParamGetStr(*(v51 + 40), "langcode", &v50);
          if ((Str & 0x80000000) == 0)
          {
            log_OutTraceTuningData(*(v51 + 32), 7, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
            Size = vector_GetSize(*(a1 + 24));
            v23 = 0;
            if (Size)
            {
              v24 = Size - 1;
              while (1)
              {
                v45 = 0;
                if (vector_GetElemAt(*(a1 + 24), v24, &v45))
                {
                  if (*(v45 + 11))
                  {
                    if (ruleset_GetEnabledForLng(v45, v50) == 1)
                    {
                      v25 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v45, v25, &__s);
                      v23 = v25;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }
                }

                if (--v24 == -1)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
LABEL_27:
              if (*(a1 + 96))
              {
                v9 = cstdlib_strlen(__s);
                if (v9)
                {
                  (*(*(a1 + 40) + 176))(*(a1 + 96), *(a1 + 104), __s);
                }
              }

              log_OutTraceTuningData(*(v51 + 32), 7, "%s%s %s%u %s%s", v9, v10, v11, v12, v13, "END");
              log_OutTraceTuningData(*(v51 + 32), 7, "%s%s %s%s %s%s", v26, v27, v28, v29, v30, "BEG");
              v45 = 0;
              v31 = vector_GetSize(*(a1 + 24));
              if (v31)
              {
                v37 = v31 - 1;
                do
                {
                  v45 = 0;
                  if (vector_GetElemAt(*(a1 + 24), v37, &v45))
                  {
                    if (!*(v45 + 11) && ruleset_GetEnabledForLng(v45, v50) == 1)
                    {
                      v38 = __s;
                      __s = v23;
                      Str = ruleset_Rewrite(v45, v38, &__s);
                      v23 = v38;
                      if ((Str & 0x80000000) != 0)
                      {
                        break;
                      }
                    }
                  }

                  --v37;
                }

                while (v37 != -1);
              }

              log_OutTraceTuningData(*(v51 + 32), 7, "%s%s %s%u %s%s", v32, v33, v34, v35, v36, "END");
              if ((Str & 0x80000000) == 0)
              {
                if (__s)
                {
                  v39 = cstdlib_strlen(__s);
                  if (v39)
                  {
                    v40 = (*(*(a1 + 40) + 112))(*(a1 + 64), *(a1 + 72), &v48, v39);
                    if ((v40 & 0x80000000) == 0)
                    {
                      cstdlib_memcpy(v48, __s, v39);
                      log_OutTraceTuningDataBinary(*(v51 + 32), 6, "", "text/plain;charset=utf-8", v48, v39);
                      v40 = (*(*(a1 + 40) + 120))(*(a1 + 64), *(a1 + 72), v39);
                    }

                    Str = v40;
                  }
                }
              }

              v25 = v23;
            }

            goto LABEL_47;
          }

LABEL_46:
          v25 = 0;
LABEL_47:
          log_OutTraceTuningData(*(v51 + 32), 4, "%s%s %s%u", v9, v10, v11, v12, v13, "END");
          if (v25)
          {
            heap_Free(*(v51 + 8), v25);
          }

          if (__s)
          {
            heap_Free(*(v51 + 8), __s);
          }

          if (!*(a1 + 112))
          {
            v41 = (*(*(a1 + 40) + 72))(*(a1 + 64), *(a1 + 72));
            if (v41 >= 0)
            {
              Str = Str;
            }

            else
            {
              Str = v41;
            }

            *(a1 + 64) = safeh_GetNullHandle();
            *(a1 + 72) = v42;
          }

          goto LABEL_56;
        }

LABEL_45:
        Str = Int;
        goto LABEL_46;
      }
    }

    return v7;
  }

  return 2288001031;
}

uint64_t ttteg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 269, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v5))
    {
      v6 = (*(a1[5] + 72))(a1[12], a1[13]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[6], a1[7], v8, v9))
    {
      v10 = (*(a1[5] + 72))(a1[6], a1[7]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[6] = safeh_GetNullHandle();
    a1[7] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[8], a1[9], v12, v13))
    {
      v14 = (*(a1[5] + 72))(a1[8], a1[9]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[8] = safeh_GetNullHandle();
    a1[9] = v15;
  }

  return v3;
}

uint64_t ttteg_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!cstdlib_strcmp(__s1, "rulesetsfrommarkup"))
  {
    if (a3)
    {
      v5 = *a3;
      if (*a3)
      {
        if (LH_stricmp(a3, "true"))
        {
          v5 = cstdlib_strcmp(a3, "1") == 0;
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 32) = v5;
  }

  return 0;
}

uint64_t ttteg_pObjClose(uint64_t a1)
{
  v1 = 2288001031;
  v9 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v9) & 0x80000000) == 0)
  {
    v3 = *(v9 + 40);
    v7 = a1;
    v8 = xmmword_287EEF138;
    paramc_ListenerRemove(v3, "rulesetsfrommarkup", &v7);
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v9 + 48), "SYNTHSTREAM");
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      sub_ObjClose(v4);
    }

    if (*(a1 + 112))
    {
      esc_seq_deinit(*a1, *(a1 + 8), *(a1 + 120), *(a1 + 128));
    }

    else
    {
      nuance_pcre_DeInit(*(a1 + 120), *(a1 + 128));
      nuance_pcre_ObjClose(*(a1 + 120), *(a1 + 128));
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      vector_ObjClose(v5);
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t ruleset_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v28 = 0;
  v27 = 0;
  v6 = 2288001031;
  if (a5 && a6 && (InitRsrcFunction(a1, a2, &v28) & 0x80000000) == 0)
  {
    cstdlib_memset(a6, 0, 0xA8uLL);
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a5;
    *(a6 + 10) = 1;
    v13 = v28[1];
    v25 = xmmword_287EEF148;
    v26 = off_287EEF158;
    if (vector_ObjOpen(v13, &v25, 8, a6 + 10))
    {
      LODWORD(v25) = PCRE_Adapter_Create(1, (a6 + 13), a1, a2);
      if ((v25 & 0x80000000) == 0)
      {
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(a3, a4, NullHandle, v19))
        {
          *(a6 + 11) = *(a6 + 13);
        }

        else
        {
          a6[11] = a3;
          a6[12] = a4;
        }

        paramc_ParamGetUInt(v28[5], "retttmaxpcreframeblocks", &v27);
        paramc_ParamGetUInt(v28[5], "retttnumframesinblock", &v27);
        LODWORD(v25) = PCRE_ObjOpen(a6[13], a6[14], 0);
        if ((v25 & 0x80000000) == 0)
        {
          v20 = a6 + 16;
          v21 = "^\\s*#.*$";
          v22 = 3;
          while (1)
          {
            *(v20 - 1) = PCRE_CompilePattern(a6[13], a6[14], v21, 0, 0, 0, &v25);
            *v20 = v23;
            v6 = v25;
            if ((v25 & 0x80000000) != 0)
            {
              break;
            }

            v21 += 128;
            v20 += 2;
            if (!--v22)
            {
              return v6;
            }
          }
        }
      }

      vector_ObjClose(a6[10]);
      a6[10] = 0;
      PCRE_ObjClose(a6[13], a6[14]);
      return v25;
    }

    else
    {
      log_OutPublic(v28[4], "RETTT", 11002, 0, v14, v15, v16, v17, v25);
      return 2288001034;
    }
  }

  return v6;
}

uint64_t *rule_CopyParts(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (!*result)
    {
      return 0;
    }

    result = 0;
    if (a3 && v3[2])
    {
      if ((PCRE_CopyPattern(v4, v3[1], a3, &v9) & 0x80000000) == 0)
      {
        v7 = cstdlib_strlen(v3[2]);
        v8 = heap_Alloc(a2, (v7 + 1));
        a3[2] = v8;
        if (v8)
        {
          cstdlib_strcpy(v8, v3[2]);
          return 1;
        }

        PCRE_FreePattern(*a3, a3[1]);
      }

      return 0;
    }
  }

  return result;
}

void *rule_FreeParts(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = PCRE_FreePattern(result, v3[1]);
      *v3 = 0;
    }

    v4 = v3[2];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[2] = 0;
    }
  }

  return result;
}

uint64_t ruleset_ObjClose(_WORD **a1)
{
  v1 = 2288001031;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, a1[1], &v6) & 0x80000000) == 0)
  {
    if (a1[3])
    {
      ruleset_UnloadRules(a1);
    }

    v3 = a1[10];
    if (v3)
    {
      vector_ObjClose(v3);
      a1[10] = 0;
    }

    for (i = 0; i != 6; i += 2)
    {
      PCRE_FreePattern(a1[i + 15], a1[i + 16]);
    }

    PCRE_ObjClose(a1[13], a1[14]);
    cstdlib_memset(a1, 0, 0xA8uLL);
    return 0;
  }

  return v1;
}

uint64_t ruleset_UnloadRules(uint64_t a1)
{
  v1 = 2288001031;
  v28 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v28) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(v28 + 32), 3, "%s%s %s%s", v3, v4, v5, v6, v7, "BEG");
    v29 = 0;
    if (!*(a1 + 24) || (InitRsrcFunction(*a1, *(a1 + 8), &v29) & 0x80000000) != 0)
    {
LABEL_21:
      log_OutTraceTuningData(*(v28 + 32), 3, "%s%s %s%u", v8, v9, v10, v11, v12, "END");
      return 0;
    }

    Size = vector_GetSize(*(a1 + 80));
    if (Size)
    {
      v19 = Size - 1;
      while (vector_Remove(*(a1 + 80), v19))
      {
        if (!v19--)
        {
          goto LABEL_9;
        }
      }

      log_OutPublic(*(v29 + 32), "RETTT", 11024, 0, v14, v15, v16, v17, v27);
      goto LABEL_21;
    }

LABEL_9:
    v21 = *(a1 + 32);
    if (v21)
    {
      heap_Free(*(v28 + 8), v21);
      *(a1 + 32) = 0;
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      heap_Free(*(v28 + 8), v22);
      *(a1 + 56) = 0;
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      heap_Free(*(v28 + 8), v23);
      *(a1 + 64) = 0;
    }

    v24 = *(a1 + 72);
    if (v24)
    {
      heap_Free(*(v28 + 8), v24);
      *(a1 + 72) = 0;
    }

    log_OutTraceTuningData(*(v28 + 32), 3, "%s%s %s%u", v13, v14, v15, v16, v17, "END");
    v25 = *(a1 + 24);
    if (!v25)
    {
      return 0;
    }

    heap_Free(*(v28 + 8), v25);
    v1 = 0;
    *(a1 + 24) = 0;
  }

  return v1;
}

uint64_t ruleset_GetName(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t ruleset_GetAbsName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t ruleset_SetEnabled(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t ruleset_GetEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t ruleset_GetEnabledForLng(uint64_t result, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    if (!*(result + 40))
    {
      return 0;
    }

    result = 0;
    if (a2 && *(v2 + 56))
    {
      cstdlib_strcpy(v9, a2);
      if (!LH_stricmp("*", *(v2 + 56)))
      {
        return 1;
      }

      if (cstdlib_strlen(*(v2 + 56)))
      {
        v3 = 0;
        v4 = 1;
        do
        {
          *(*(v2 + 56) + v3) = cstdlib_tolower(*(*(v2 + 56) + v3));
          v3 = v4;
          v5 = cstdlib_strlen(*(v2 + 56)) > v4++;
        }

        while (v5);
      }

      if (cstdlib_strlen(v9))
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v9[v6] = cstdlib_tolower(v9[v6]);
          v6 = v7;
          v5 = cstdlib_strlen(v9) > v7++;
        }

        while (v5);
      }

      if (cstdlib_strstr(*(v2 + 56), v9))
      {
        return 1;
      }

      v8 = *(v2 + 56);
      if (v9[0] == *v8 && v9[1] == v8[1])
      {
        return v8[2] == 42;
      }

      return 0;
    }
  }

  return result;
}

uint64_t ruleset_LoadRules(uint64_t a1, const char *a2, const char *a3, const char *a4, uint64_t a5, unsigned int a6)
{
  *&v94[1023] = *MEMORY[0x277D85DE8];
  v90 = a5;
  v89 = a6;
  v6 = 2288001031;
  v87 = 0;
  v88 = 0;
  if (a1 && a5 && a6)
  {
    if (*(a1 + 24))
    {
      return 2288001041;
    }

    v11 = a2;
    *(a1 + 32) = 0;
    if (!a2 || !*a2)
    {
      v11 = "in-memory RETT";
    }

    if ((InitRsrcFunction(*a1, *(a1 + 8), &v88) & 0x80000000) == 0)
    {
      v12 = *(v88 + 8);
      v13 = cstdlib_strlen(v11);
      v14 = heap_Alloc(v12, (v13 + 1));
      *(a1 + 24) = v14;
      if (v14)
      {
        cstdlib_strcpy(v14, v11);
        if ((paramc_ParamGetStr(*(v88 + 40), "__NUAN_alternative_esc_seq__", &v87) & 0x80000000) == 0 && v87 && !cstdlib_strcmp("__NUAN_alternative_esc_seq__", *(a1 + 24)))
        {
          *(a1 + 44) = 1;
        }

        if (!a3)
        {
          goto LABEL_19;
        }

        v24 = *(v88 + 8);
        v25 = cstdlib_strlen(a3);
        v26 = heap_Alloc(v24, (v25 + 1));
        *(a1 + 32) = v26;
        if (v26)
        {
          cstdlib_strcpy(v26, a3);
LABEL_19:
          log_OutTraceTuningData(*(v88 + 32), 1, "%s%s %s%s %s%s", v19, v20, v21, v22, v23, "BEG");
          if (!cstdlib_strcmp(a4, "application/x-vocalizer-rettt+bin") || !cstdlib_strcmp(a4, "application/x-vocalizer-rettt+bin;loader=broker"))
          {
            v6 = 2288001025;
            goto LABEL_29;
          }

          v86 = 0;
          *v91 = 0;
          if ((InitRsrcFunction(*a1, *(a1 + 8), v91) & 0x80000000) != 0)
          {
            goto LABEL_29;
          }

          if ((ruleset_ReadDataLine(a1, *v91, &v90, &v89, &v86, &__s, v34, v35) & 0x80000000) != 0)
          {
LABEL_25:
            v41 = 11020;
            goto LABEL_26;
          }

          while (1)
          {
            v36 = ruleset_IsSectionHeader(&__s, "header");
            v39 = ruleset_ReadDataLine(a1, *v91, &v90, &v89, &v86, &__s, v37, v38);
            v40 = v39;
            if (v36)
            {
              break;
            }

            if ((v39 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }
          }

          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          if (ruleset_IsSectionHeader(&__s, 0))
          {
LABEL_34:
            v45 = cstdlib_strlen(&__s);
            if (*(v90 - 2) == 13)
            {
              v46 = 2;
            }

            else
            {
              v46 = 1;
            }

            v47 = -2;
            if (*(v90 - 2) != 13)
            {
              v47 = -1;
            }

            v90 = v90 + v47 - v45;
            v89 += v45 + v46;
            --v86;
            goto LABEL_40;
          }

          while (1)
          {
            v48 = *v91;
            p_s = &__s;
            log_OutText(*(*v91 + 32), "RETTT", 4, 0, "ruleset_ScanHeaderLine: '%s'", v42, v43, v44, &__s);
            for (i = v94; ; ++i)
            {
              v55 = *p_s;
              if (v55 != 9 && v55 != 32)
              {
                break;
              }

              ++p_s;
            }

            v56 = p_s;
            if (!*p_s)
            {
              break;
            }

            while (1)
            {
              if (!v55)
              {
                goto LABEL_61;
              }

              if (v55 == 32)
              {
                break;
              }

              if (v55 == 61)
              {
                *v56 = 0;
                v59 = v56 + 1;
                goto LABEL_66;
              }

              v58 = *++v56;
              LOBYTE(v55) = v58;
              ++i;
            }

            *v56 = 0;
            while (1)
            {
              v60 = *i;
              if (v60 != 9 && v60 != 32)
              {
                break;
              }

              ++i;
            }

            if (!*i)
            {
LABEL_61:
              v57 = *(v48 + 32);
              goto LABEL_70;
            }

            v61 = cstdlib_strlen("=");
            if (cstdlib_strncmp(i, "=", v61))
            {
              log_OutPublic(*(v48 + 32), "RETTT", 11011, "%s%s", v50, v51, v52, v53, "separator");
              goto LABEL_71;
            }

            v59 = i + 1;
LABEL_66:
            while (1)
            {
              v62 = *v59;
              if (v62 != 9 && v62 != 32)
              {
                break;
              }

              ++v59;
            }

            if (!*v59)
            {
              v57 = *(v48 + 32);
              goto LABEL_70;
            }

            for (j = cstdlib_strlen(v59); ; v59[j] = 0)
            {
              v67 = v59[--j];
              if (v67 != 32 && v67 != 9)
              {
                break;
              }
            }

            log_OutText(*(v48 + 32), "RETTT", 5, 0, "ruleset_ScanHeaderLine:  key = '%s'; val = '%s'", v63, v64, v65, p_s);
            if (!LH_stricmp(p_s, "language"))
            {
              v92 = 0;
              v70 = cstdlib_strlen(v59);
              if ((PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 152), *(a1 + 160), v59, v70, 0, 0, 0, &v92) & 0x80000000) == 0)
              {
                if (*(a1 + 56))
                {
                  log_OutPublic(*(*v91 + 32), "RETTT", 11021, 0, v71, v72, v73, v74, v85);
LABEL_98:
                  v40 = 2288001031;
LABEL_40:
                  if (*(a1 + 56))
                  {
                    v6 = v40;
                    if ((v40 & 0x80000000) == 0)
                    {
                      v6 = ruleset_ReadRules(a1, &v90, &v89, &v86);
                      if ((v6 & 0x80000000) == 0)
                      {
                        log_OutTraceTuningData(*(v88 + 32), 1, "%s%s %s%s %s%s %s%s %s%u", v31, v32, v33, v34, v35, "END");
                        return 0;
                      }
                    }

LABEL_29:
                    log_OutTraceTuningData(*(v88 + 32), 1, "%s%s %s%u", v31, v32, v33, v34, v35, "END");
                    ruleset_UnloadRules(a1);
                    return v6;
                  }

                  v41 = 11022;
LABEL_26:
                  log_OutPublic(*(*v91 + 32), "RETTT", v41, 0, v32, v33, v34, v35, v85);
                  goto LABEL_29;
                }

                v75 = *(*v91 + 8);
                v76 = cstdlib_strlen(v59);
                v77 = heap_Alloc(v75, (v76 + 1));
                *(a1 + 56) = v77;
                if (!v77)
                {
                  goto LABEL_96;
                }

                cstdlib_strcpy(v77, v59);
              }
            }

            if (!LH_stricmp(p_s, "type"))
            {
              if (*(a1 + 64))
              {
                goto LABEL_98;
              }

              v78 = cstdlib_strlen(v59);
              v79 = heap_Calloc(*(*v91 + 8), v78 + 1, 1);
              *(a1 + 64) = v79;
              if (!v79)
              {
                goto LABEL_96;
              }

              v80 = v78;
              if (v78)
              {
                v81 = 0;
                do
                {
                  *(*(a1 + 64) + v81) = ssft_tolower(v59[v81]);
                  ++v81;
                }

                while (v80 != v81);
              }
            }

            if (!LH_stricmp(p_s, "type_out"))
            {
              if (*(a1 + 72))
              {
                goto LABEL_98;
              }

              v82 = cstdlib_strlen(v59);
              v83 = heap_Calloc(*(*v91 + 8), (v82 + 1), 1);
              *(a1 + 72) = v83;
              if (!v83)
              {
LABEL_96:
                v40 = 2288001034;
                goto LABEL_40;
              }

              cstdlib_strcpy(v83, v59);
            }

LABEL_71:
            v40 = ruleset_ReadDataLine(a1, *v91, &v90, &v89, &v86, &__s, v34, v35);
            if ((v40 & 0x80000000) != 0)
            {
              goto LABEL_40;
            }

            if (ruleset_IsSectionHeader(&__s, 0))
            {
              goto LABEL_34;
            }
          }

          v57 = *(v48 + 32);
LABEL_70:
          log_OutPublic(v57, "RETTT", 11026, "%s%s", v50, v51, v52, v53, "message");
          goto LABEL_71;
        }

        log_OutPublic(*(v88 + 32), "RETTT", 11002, 0, v27, v28, v29, v30, v84);
        ruleset_UnloadRules(a1);
      }

      else
      {
        log_OutPublic(*(v88 + 32), "RETTT", 11002, 0, v15, v16, v17, v18, v84);
      }

      return 2288001034;
    }
  }

  return v6;
}

uint64_t ruleset_ReadRules(uint64_t a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  v8 = 2288001031;
  v100 = 0;
  __b = 0;
  v95 = 0;
  v96 = 0;
  *v93 = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  if (!a2 || !a3 || (InitRsrcFunction(*a1, *(a1 + 8), v93) & 0x80000000) != 0)
  {
    return v8;
  }

  if ((ruleset_ReadDataLine(a1, *v93, a2, a3, a4, &__s, v9, v10) & 0x80000000) == 0)
  {
      ;
    }
  }

  v13 = ruleset_ReadDataLine(a1, *v93, a2, a3, a4, &__s, v11, v12);
  if ((v13 & 0x80000000) != 0)
  {
    if ((v13 & 0x1FFF) == 0x17)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  LODWORD(v19) = 0;
  v91 = a3;
  do
  {
    v92 = v19;
LABEL_10:
    log_OutTraceTuningData(*(*v93 + 32), 2, "%s%s %s%s %s%d", v14, v15, v16, v17, v18, "BEG");
    v20 = *v93;
    v96 = 0;
    cstdlib_memset(&v98, 0, 0x14uLL);
    log_OutText(*(v20 + 32), "RETTT", 5, 0, "ruleset_ScanRuleLine: '%s'", v21, v22, v23, &__s);
    for (i = v102; ; ++i)
    {
      v29 = *(i - 1);
      if (v29 != 9 && v29 != 32)
      {
        break;
      }
    }

    if (!*(i - 1))
    {
      log_OutPublic(*(v20 + 32), "RETTT", 11026, "%s%s", v24, v25, v26, v27, "message");
LABEL_21:
      i = 0;
      goto LABEL_56;
    }

    if (v29 == 92 || (v29 - 48) <= 9)
    {
      log_OutPublic(*(v20 + 32), "RETTT", 11015, 0, v24, v25, v26, v27, v89);
      goto LABEL_21;
    }

    v31 = *i;
    v32 = *i == 0;
    v33 = i;
    if (*i && v31 != v29)
    {
      v33 = i;
      do
      {
        if (v31 == 92 && v33[1])
        {
          ++v33;
        }

        v34 = *++v33;
        v31 = v34;
        v32 = v34 == 0;
        if (v34)
        {
          v35 = v31 == v29;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v32)
    {
      goto LABEL_34;
    }

    v37 = v33 + 1;
    *v33 = 0;
    for (j = v33 + 4; ; ++j)
    {
      v39 = *v37;
      if (v39 > 0x6C)
      {
        switch(v39)
        {
          case 'm':
            HIDWORD(v98) = 1;
            goto LABEL_52;
          case 's':
            LODWORD(v99) = 1;
            goto LABEL_52;
          case 'x':
            HIDWORD(v99) = 1;
            goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (*v37 <= 0x1Fu)
      {
        if (v39 == 9)
        {
          goto LABEL_52;
        }

        if (!*v37)
        {
          break;
        }

        goto LABEL_51;
      }

      if (v39 == 32)
      {
        goto LABEL_52;
      }

      if (v39 == 105)
      {
        LODWORD(v98) = 1;
        goto LABEL_52;
      }

      if (v39 == 45)
      {
        break;
      }

LABEL_51:
      log_OutPublic(*(v20 + 32), "RETTT", 11016, "%s%c", v24, v25, v26, v27, "option");
LABEL_52:
      ++v37;
    }

    if (!v39)
    {
      v36 = *(v20 + 32);
      goto LABEL_55;
    }

    v69 = cstdlib_strlen("-->");
    if (cstdlib_strncmp(j - 3, "-->", v69))
    {
      log_OutPublic(*(v20 + 32), "RETTT", 11011, "%s%s", v24, v25, v26, v27, "separator");
      v40 = 1;
      v41 = -2006966265;
      a3 = v91;
      goto LABEL_57;
    }

    a3 = v91;
    while (1)
    {
      v70 = *j;
      if (v70 != 9 && v70 != 32)
      {
        break;
      }

      ++j;
    }

    if (!*j)
    {
      v36 = *(v20 + 32);
LABEL_55:
      log_OutPublic(v36, "RETTT", 11026, "%s%s", v24, v25, v26, v27, "message");
LABEL_56:
      v40 = 1;
      v41 = -2006966265;
      goto LABEL_57;
    }

    if (v70 == 34)
    {
      v71 = j + 1;
    }

    else
    {
      v71 = j;
    }

    if (v70 == 34)
    {
      v72 = 34;
    }

    else
    {
      v72 = 32;
    }

    v96 = v71;
    v73 = *v71;
    v74 = *v71 == 0;
    if (*v71)
    {
      v75 = v72 == v73;
    }

    else
    {
      v75 = 1;
    }

    if (!v75)
    {
      do
      {
        if (v73 == 92 && v71[1])
        {
          ++v71;
        }

        v77 = *++v71;
        v76 = v77;
        LOBYTE(v73) = v77;
        v74 = v77 == 0;
        if (v77)
        {
          v78 = v72 == v76;
        }

        else
        {
          v78 = 1;
        }
      }

      while (!v78);
    }

    if (v70 != 34 && v74)
    {
      v79 = *(v20 + 32);
      goto LABEL_106;
    }

    if (v74)
    {
LABEL_34:
      v36 = *(v20 + 32);
      goto LABEL_55;
    }

    *v71 = 0;
    v80 = v71 + 1;
    while (2)
    {
      v81 = *v80;
      if (v81 <= 0x1F)
      {
        if (v81 != 9)
        {
          if (!*v80)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }

        goto LABEL_100;
      }

      if (v81 == 32)
      {
LABEL_100:
        ++v80;
        continue;
      }

      break;
    }

    if (v81 == 35)
    {
      goto LABEL_105;
    }

LABEL_104:
    log_OutPublic(*(v20 + 32), "RETTT", 11018, "%s%s", v24, v25, v26, v27, "trailingString");
LABEL_105:
    v79 = *(v20 + 32);
LABEL_106:
    log_OutText(v79, "RETTT", 5, 0, "ruleset_ScanRuleLine:  re = '%s'; tgt = '%s'", v25, v26, v27, i);
    v40 = 0;
    v41 = 0;
LABEL_57:
    PCRE_Adapter2PCREOptions(*(a1 + 104), *(a1 + 112), &v98);
    v47 = *v93;
    if (v40)
    {
      log_OutTraceTuningData(*(*v93 + 32), 2, "%s%s %s%s %s%u", v42, v43, v44, v45, v46, "END");
      goto LABEL_109;
    }

    v49 = *(a1 + 104);
    v48 = *(a1 + 112);
    v97 = 0;
    v100 = 1;
    __b = PCRE_CompilePatternWithOptions(v49, v48, i, &v98, v103, 256, &v97 + 4, &v97);
    v95 = v50;
    PCRE_Adapter2PCREOptions(v49, v48, &v98);
    if (__b)
    {
      v41 = v97;
      if ((v97 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      v55 = vector_Add(*(a1 + 80), &__b);
      v60 = *(*v93 + 32);
      if (!v55)
      {
        log_OutPublic(*(*v93 + 32), "RETTT", 11023, 0, v56, v57, v58, v59, v90);
        PCRE_FreePattern(__b, v95);
        v68 = -2006966266;
        goto LABEL_118;
      }

      vector_GetSize(*(a1 + 80));
      log_OutTraceTuningData(v60, 2, "%s%s %s%s %s%d %s%s %s%d %s%u", v61, v62, v63, v64, v65, "END");
      if (__b)
      {
        PCRE_FreePattern(__b, v95);
      }

      v68 = ruleset_ReadDataLine(a1, *v93, a2, a3, a4, &__s, v66, v67);
      if ((v68 & 0x80000000) != 0)
      {
LABEL_118:
        v19 = v92;
        break;
      }

      goto LABEL_10;
    }

    log_OutPublic(*(v47 + 32), "RETTT", 11006, "%s%s%s%s%s%d", v51, v52, v53, v54, "regularExpression");
    log_OutTraceTuningData(*(v47 + 32), 2, "%s%s %s%s %s%d %s%s %s%d %s%s %s%u", v82, v83, v84, v85, v86, "END");
    v41 = -2006966272;
LABEL_109:
    if (v92)
    {
      v19 = v92;
    }

    else
    {
      v19 = v41;
    }

    v68 = ruleset_ReadDataLine(a1, *v93, a2, a3, a4, &__s, v53, v54);
  }

  while ((v68 & 0x80000000) == 0);
  if ((v68 & 0x1FFF) == 0x17)
  {
    v87 = 0;
  }

  else
  {
    v87 = v68;
  }

  v8 = v19;
  if (!v19)
  {
    return v87;
  }

  return v8;
}

uint64_t ruleset_Rewrite(_WORD **a1, const char *a2, const char **a3)
{
  v59 = 0;
  v57 = 0;
  v3 = 2288001031;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, a1[1], &v59);
  if ((inited & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1[3])
  {
    return 2288001041;
  }

  v8 = inited;
  v9 = *(v59 + 8);
  v10 = cstdlib_strlen(a2);
  v11 = heap_Alloc(v9, (v10 + 1));
  __s = v11;
  if (!v11)
  {
    log_OutPublic(*(v59 + 32), "RETTT", 11002, 0, v12, v13, v14, v15, v56);
    return 2288001034;
  }

  cstdlib_strcpy(v11, a2);
  v16 = a1[8];
  if (v16 && ((v17 = __s, v60 = 0, v18 = cstdlib_strlen(__s), !esc_seq_tn_strncmp(*a1, a1[1], a1[11], a1[12], __s, v18, &v60)) || cstdlib_strcmp(v16, "normal")))
  {
    do
    {
      v19 = cstdlib_strlen(v17);
      v61 = esc_seq_tn_seq(*a1, a1[1], a1[11], a1[12], v17, v19);
      v20 = v61 == 0;
      if (!v61)
      {
        break;
      }

      IsMatchingEscTn = ruleset_IsMatchingEscTn(a1, v16, &v61);
      v17 = ++v61;
    }

    while (!IsMatchingEscTn);
  }

  else
  {
    v20 = 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(v59 + 32)))
  {
    v27 = *(v59 + 32);
    if (a1[8])
    {
      log_OutTraceTuningData(v27, 8, "%s%s %s%s %s%s %s%s", v22, v23, v24, v25, v26, "BEG");
    }

    else
    {
      log_OutTraceTuningData(v27, 8, "%s%s %s%s %s%s", v22, v23, v24, v25, v26, "BEG");
    }
  }

  if (v20)
  {
    goto LABEL_37;
  }

  Size = vector_GetSize(a1[10]);
  if (!a1[8])
  {
    v34 = vector_GetSize(a1[10]);
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v33 = 0;
      while (1)
      {
        v37 = v33;
        v33 = __s;
        __s = v37;
        ElemAt = vector_GetElemAt(a1[10], v36, &v57);
        v44 = *(v59 + 32);
        if (!ElemAt)
        {
          break;
        }

        log_OutTraceTuningData(v44, 9, "%s%s %s%d %s%s", v38, v39, v40, v41, v42, "BEG");
        v8 = sub_GsubCompiledRe(a1[2], *v57, *(v57 + 8), *(v57 + 16), v33, &__s);
        log_OutTraceTuningData(*(v59 + 32), 9, "%s%s %s%u %s%s", v45, v46, v47, v48, v49, "END");
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (v35 == ++v36)
        {
          goto LABEL_38;
        }
      }

      log_OutPublic(v44, "RETTT", 11025, 0, v39, v40, v41, v42, v56);
      v3 = 2288001030;
      if (!v33)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v29 = Size;
  if (Size)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = __s;
      __s = v31;
      if (v31)
      {
        heap_Free(*(v59 + 8), v31);
        __s = 0;
      }

      ruleset_RewriteTnRegions(a1, v30++, 0, v32, &__s);
      v31 = v32;
    }

    while (v29 != v30);
    if (v32)
    {
      heap_Free(*(v59 + 8), v32);
    }
  }

  v33 = __s;
  __s = 0;
  ruleset_RewriteTnRegions(a1, 0, 1, v33, &__s);
  if (v33)
  {
    heap_Free(*(v59 + 8), v33);
LABEL_37:
    v33 = 0;
  }

LABEL_38:
  if (__s)
  {
    v51 = *a3;
    v52 = *(v59 + 8);
    v53 = cstdlib_strlen(__s) + 1;
    if (v51)
    {
      v54 = heap_Realloc(v52, v51, v53);
      if (v54)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v54 = heap_Alloc(v52, v53);
      if (v54)
      {
LABEL_41:
        *a3 = v54;
        cstdlib_strcpy(v54, __s);
        if (cstdlib_strcmp(a2, *a3))
        {
          log_OutEvent(*(v59 + 32), 29, "%s%s", v50, v23, v24, v25, v26, "RULSET_NAME");
        }

LABEL_43:
        v3 = v8;
        if (!v33)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  log_OutPublic(*(v59 + 32), "RETTT", 11002, 0, v23, v24, v25, v26, v56);
  v3 = 2288001034;
  if (v33)
  {
LABEL_47:
    heap_Free(*(v59 + 8), v33);
  }

LABEL_48:
  if (__s)
  {
    heap_Free(*(v59 + 8), __s);
  }

  log_OutTraceTuningData(*(v59 + 32), 8, "%s%s %s%u %s%s", v50, v23, v24, v25, v26, "END");
  return v3;
}

uint64_t ruleset_RewriteTnRegions(uint64_t result, unsigned int a2, int a3, const char *a4, const char **a5)
{
  v96 = 0;
  v94 = 0;
  __s = 0;
  if (a4)
  {
    if (a5)
    {
      if (!*a5)
      {
        v9 = result;
        result = InitRsrcFunction(*result, *(result + 8), &v96);
        if ((result & 0x80000000) == 0)
        {
          if (v9[3])
          {
            if (a3 || vector_GetElemAt(v9[10], a2, &v94))
            {
              if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
              {
                v19 = *(v96 + 32);
                if (a3)
                {
                  log_OutTraceTuningData(v19, 16, "%s%s %s%s", v14, v15, v16, v17, v18, "BEG");
                }

                else
                {
                  log_OutTraceTuningData(v19, 9, "%s%s %s%d %s%s", v14, v15, v16, v17, v18, "BEG");
                }
              }

              v20 = *(v96 + 8);
              v21 = cstdlib_strlen(a4);
              v22 = heap_Alloc(v20, (v21 + 1));
              *a5 = v22;
              if (v22)
              {
                *v22 = 0;
                v23 = cstdlib_strlen(a4);
                if (v23 >= 1)
                {
                  v24 = 0;
                  v25 = &a4[v23];
                  if (a3)
                  {
                    v26 = 18;
                  }

                  else
                  {
                    v26 = 11;
                  }

                  v91 = v26;
                  v27 = a4;
                  v92 = &a4[v23];
                  do
                  {
                    v28 = cstdlib_strlen(v27 + 1);
                    v29 = esc_seq_tn_seq(*v9, v9[1], v9[11], v9[12], v27 + 1, v28);
                    if (v29)
                    {
                      v30 = v29;
                    }

                    else
                    {
                      v30 = v25;
                    }

                    v31 = v30 - v27;
                    v32 = heap_Alloc(*(v96 + 8), (v30 - v27 + 1));
                    if (!v32)
                    {
                      break;
                    }

                    v33 = v32;
                    cstdlib_memcpy(v32, v27, v31);
                    v33[v31] = 0;
                    v34 = v9[8];
                    v98 = v33;
                    v97 = 0;
                    v35 = cstdlib_strlen(v33);
                    v93 = v24;
                    if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v33, v35, &v97))
                    {
                      IsMatchingEscTn = cstdlib_strcmp(v34, "normal") == 0;
                    }

                    else
                    {
                      IsMatchingEscTn = ruleset_IsMatchingEscTn(v9, v34, &v98);
                      if (a3 && IsMatchingEscTn)
                      {
                        v37 = v98;
                        IsMatchingEscTn = 1;
                        goto LABEL_36;
                      }
                    }

                    v37 = v33;
                    if (!a3 && IsMatchingEscTn)
                    {
                      v38 = ruleset_stristr(v33, v9[8]);
                      if (v38)
                      {
                        v39 = cstdlib_strstr(v38, "\");
                        v40 = v39 + 1 - v33;
                        if (!v39)
                        {
                          v40 = 0;
                        }

                        v93 = v40;
                        v41 = 0;
                        if (v39)
                        {
                          v37 = v39 + 1;
                        }

                        else
                        {
                          v37 = v33;
                        }
                      }

                      else
                      {
                        v41 = 0;
                        v37 = v33;
                      }

                      goto LABEL_49;
                    }

LABEL_36:
                    v41 = 1;
                    if (a3)
                    {
                      if (IsMatchingEscTn)
                      {
                        v42 = v9[9];
                        if (v42)
                        {
                          if (cstdlib_strlen(v42))
                          {
                            LOWORD(v98) = 0;
                            v43 = cstdlib_strlen(v33);
                            if (esc_seq_tn_strncmp(*v9, v9[1], v9[11], v9[12], v33, v43, &v98))
                            {
                              v44 = *(v96 + 8);
                              v45 = cstdlib_strlen(v37);
                              v46 = heap_Realloc(v44, v37, (v45 + 13));
                              if (!v46)
                              {
                                goto LABEL_76;
                              }

                              v37 = v46;
                              v47 = cstdlib_strlen(v46);
                              cstdlib_memmove(v37 + 12, v37, v47 + 1);
                              cstdlib_memcpy(v37, "\x1B\\tn", 4uLL);
                              v48 = v37 + 4;
                              v49 = "=normal\";
                              v50 = 8;
LABEL_47:
                              cstdlib_memcpy(v48, v49, v50);
                            }

                            else
                            {
                              v51 = cstdlib_strlen(v9[9]);
                              v52 = *(v96 + 8);
                              v53 = cstdlib_strlen(v33);
                              v54 = heap_Realloc(v52, v33, (v51 + v53 + 1));
                              if (!v54)
                              {
                                goto LABEL_76;
                              }

                              v37 = v54;
                              __dst = ruleset_stristr(v54, v9[8]);
                              v55 = cstdlib_strstr(__dst, "\");
                              if (v55)
                              {
                                v56 = v55;
                                v57 = cstdlib_strlen(v55);
                                cstdlib_memmove(&__dst[v51], v56, v57 + 1);
                                v49 = v9[9];
                                v48 = __dst;
                                v50 = v51;
                                goto LABEL_47;
                              }
                            }

                            v41 = 1;
                            v33 = v37;
                          }
                        }
                      }
                    }

LABEL_49:
                    if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                    {
                      v63 = *(v96 + 32);
                      if (a3)
                      {
                        log_OutTraceTuningData(v63, 18, "%s%s %s%d %s%d", v58, v59, v60, v61, v62, "FOCUS");
                      }

                      else
                      {
                        log_OutTraceTuningData(v63, 10, "%s%s %s%s %s%d %s%d", v58, v59, v60, v61, v62, "BEG");
                      }
                    }

                    if (v41)
                    {
                      v64 = *(v96 + 8);
                      v65 = cstdlib_strlen(v37);
                      v66 = heap_Alloc(v64, (v65 + 1));
                      __s = v66;
                      if (!v66)
                      {
                        goto LABEL_76;
                      }

                      cstdlib_strcpy(v66, v37);
                      v67 = 0;
                    }

                    else
                    {
                      if ((sub_GsubCompiledRe(v9[2], *v94, *(v94 + 8), *(v94 + 16), v37, &__s) & 0x80000000) != 0 || (v68 = *(v96 + 8), v69 = cstdlib_strlen(__s), (v70 = heap_Alloc(v68, v93 + v69 + 1)) == 0))
                      {
LABEL_76:
                        heap_Free(*(v96 + 8), v33);
                        break;
                      }

                      v67 = v70;
                      cstdlib_strncpy(v70, v27, v93);
                      v67[v93] = 0;
                      cstdlib_strcat(v67, __s);
                    }

                    heap_Free(*(v96 + 8), v33);
                    v71 = *(v96 + 8);
                    v72 = *a5;
                    v73 = cstdlib_strlen(*a5);
                    if (v67)
                    {
                      v74 = cstdlib_strlen(v67);
                      v75 = heap_Realloc(v71, v72, (v73 + v74 + 1));
                      *a5 = v75;
                      if (!v75)
                      {
                        break;
                      }

                      v76 = v67;
                    }

                    else
                    {
                      v77 = cstdlib_strlen(__s);
                      v75 = heap_Realloc(v71, v72, (v73 + v77 + 1));
                      *a5 = v75;
                      if (!v75)
                      {
                        break;
                      }

                      v76 = __s;
                    }

                    cstdlib_strcat(v75, v76);
                    if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                    {
                      log_OutTraceTuningData(*(v96 + 32), v91, "%s%s", v78, v79, v80, v81, v82, "APPEND");
                    }

                    if (__s)
                    {
                      heap_Free(*(v96 + 8), __s);
                      __s = 0;
                    }

                    if (v67)
                    {
                      heap_Free(*(v96 + 8), v67);
                    }

                    if (!a3)
                    {
                      log_OutTraceTuningData(*(v96 + 32), 10, "%s%s %s%s", v78, v79, v80, v81, v82, "END");
                    }

                    v27 = v30;
                    v25 = v92;
                    v24 = v93;
                  }

                  while (v30 < v92);
                }
              }

              result = log_HasTraceTuningDataSubscriber(*(v96 + 32));
              if (result)
              {
                if (a3)
                {
                  v88 = 16;
                }

                else
                {
                  v88 = 9;
                }

                return log_OutTraceTuningData(*(v96 + 32), v88, "%s%s %s%u %s%s", v83, v84, v85, v86, v87, "END");
              }
            }

            else
            {
              return log_OutPublic(*(v96 + 32), "RETTT", 11025, 0, v10, v11, v12, v13, v89);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ruleset_ReadDataLine(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, _DWORD *a5, char *__s, uint64_t a7, uint64_t a8)
{
  ++*a5;
  for (result = ruleset_ReadLine(a2, a3, a4, __s, a5, __s, a7, a8); (result & 0x80000000) == 0; result = ruleset_ReadLine(a2, a3, a4, __s, v16, v17, v18, v19))
  {
    v23 = 0;
    v15 = cstdlib_strlen(__s);
    v20 = PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), __s, v15, 0, 0, 0, &v23);
    result = v23;
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    if (v20 < 0)
    {
      v21 = cstdlib_strlen(__s);
      v22 = PCRE_Exec(*(a1 + 104), *(a1 + 112), *(a1 + 136), *(a1 + 144), __s, v21, 0, 0, 0, &v23);
      result = v23;
      if ((v23 & 0x80000000) != 0)
      {
        return result;
      }

      if (v22 < 0)
      {
        return 0;
      }
    }

    ++*a5;
  }

  return result;
}

char *ruleset_IsSectionHeader(unsigned __int8 *a1, const char *a2)
{
  v3 = *a1;
  if (v3 == 239)
  {
    if (a1[1] != 187)
    {
      LOBYTE(v3) = -17;
      goto LABEL_9;
    }

    v4 = 3;
    if (a1[2] != 191)
    {
      v4 = 0;
    }

    a1 += v4;
    v3 = *a1;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_9:
  v5 = (a1 + 1);
  while (cstdlib_strchr("\t ", v3))
  {
    v6 = *v5++;
    LOBYTE(v3) = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v5 - 1) != 91)
  {
    return 0;
  }

  do
  {
    v7 = v5;
    v8 = *v5;
    if (!*v5)
    {
      break;
    }

    ++v5;
  }

  while (cstdlib_strchr("\t ", v8));
  if (a2)
  {
    v9 = cstdlib_strlen(a2);
    if (cstdlib_strncmp(a2, v7, v9))
    {
      return 0;
    }

    v7 += cstdlib_strlen(a2);
  }

  else
  {
    v14 = *v7;
    if (!*v7)
    {
      return 0;
    }

    while (1)
    {
      result = cstdlib_strchr("\t ]", v14);
      if (result)
      {
        break;
      }

      v15 = *++v7;
      v14 = v15;
      if (!v15)
      {
        return result;
      }
    }
  }

  v10 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v11 = (v7 + 1);
  while (cstdlib_strchr("\t ", v10))
  {
    result = 0;
    v13 = *v11++;
    v10 = v13;
    if (!v13)
    {
      return result;
    }
  }

  return (*(v11 - 1) == 93);
}

uint64_t ruleset_ReadLine(uint64_t a1, uint64_t *a2, unsigned int *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v12 = *a3;
  v13 = *a2;
  if (*a3 >= 0x3FF)
  {
    v14 = 1023;
  }

  else
  {
    v14 = v12;
  }

  v15 = v12 - v14;
  while (v14 != v11)
  {
    v16 = *(v13 + v11);
    v17 = v11 + 1;
    __s[v11++] = v16;
    if (v16 == 10)
    {
      LODWORD(v14) = v17;
      v15 = v12 - v17;
      v18 = v13 + v17;
      goto LABEL_9;
    }
  }

  LODWORD(v14) = v14;
  v18 = v13 + v11;
LABEL_9:
  __s[v14] = 0;
  *a3 = v15;
  *a2 = v18;
  if (__s && v14)
  {
    v19 = cstdlib_strlen(__s);
    if (!v19)
    {
      return 0;
    }

    v24 = v19 - 1;
    if (*a3 && __s[v24] != 10)
    {
      v25 = 2288001024;
      log_OutPublic(*(a1 + 32), "RETTT", 11008, "%s%u%s%s", v20, v21, v22, v23, "maximumCharacters");
      return v25;
    }

    if (__s[v24] == 10)
    {
      __s[v24] = 0;
    }

    if (v19 != 1 && __s[v19 - 2] == 13)
    {
      v25 = 0;
      __s[v19 - 2] = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (v15)
  {
    log_OutPublic(*(a1 + 32), "RETTT", 11010, 0, a5, a6, a7, a8, v27);
    return 2288001028;
  }

  else
  {
    return 2288001047;
  }

  return v25;
}

uint64_t ruleset_IsMatchingEscTn(uint64_t a1, const char *a2, char **a3)
{
  v6 = *a3;
  v13 = 0;
  v7 = cstdlib_strlen(v6);
  if (esc_seq_tn_strncmp(*a1, *(a1 + 8), *(a1 + 88), *(a1 + 96), v6, v7, &v13))
  {
    return 0;
  }

  v8 = &v6[v13];
  if (*v8 != 61)
  {
    return 0;
  }

  v9 = (v8 + 1);
  v10 = cstdlib_strlen(a2);
  if (LH_strnicmp(v9, a2, v10))
  {
    return 0;
  }

  v11 = cstdlib_strlen(a2);
  if (*(v9 + v11) != 92)
  {
    return 0;
  }

  *a3 = (v9 + v11 + 1);
  return 1;
}

char *ruleset_stristr(char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    if (*a1 && *__s && (v5 = cstdlib_strlen(__s), v6 = cstdlib_tolower(*__s), (v7 = *a1) != 0))
    {
      v8 = v6;
      while (cstdlib_tolower(v7) != v8 || LH_strnicmp(a1, __s, v5))
      {
        v9 = *++a1;
        v7 = v9;
        if (!v9)
        {
          return 0;
        }
      }

      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2147491847;
  v19 = 0;
  v18 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v19) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(v19[1], 32);
    if (!v7)
    {
      log_OutPublic(v19[4], "RETTT", 11002, 0, v8, v9, v10, v11, v17);
      return 2147491850;
    }

    v12 = v7;
    cstdlib_memset(v7, 0, 0x20uLL);
    *v12 = a1;
    *(v12 + 8) = a2;
    v13 = PCRE_Adapter_Create(1, v12 + 16, a1, a2);
    v14 = v19;
    if ((v13 & 0x80000000) != 0)
    {
      v3 = v13;
    }

    else
    {
      paramc_ParamGetUInt(v19[5], "retttmaxpcreframeblocks", &v18);
      paramc_ParamGetUInt(v19[5], "retttnumframesinblock", &v18);
      v15 = PCRE_ObjOpen(*(v12 + 16), *(v12 + 24), 0);
      if ((v15 & 0x80000000) == 0)
      {
        v3 = 0;
        *a3 = v12;
        return v3;
      }

      v3 = v15;
      v14 = v19;
    }

    heap_Free(v14[1], v12);
  }

  return v3;
}

uint64_t sub_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = PCRE_ObjClose(*(a1 + 16), *(a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      heap_Free(*(v5 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_ObjOpenPCRE1(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2147491847;
  v22 = 0;
  v21 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v22) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(v22[1], 32);
    if (!v7)
    {
      log_OutPublic(v22[4], "RETTT", 11002, 0, v8, v9, v10, v11, v20);
      return 2147491850;
    }

    v12 = v7;
    cstdlib_memset(v7, 0, 0x20uLL);
    *v12 = a1;
    v12[1] = a2;
    v13 = nuance_pcre_ObjOpen(a1, a2, (v12 + 2));
    v14 = v22;
    if ((v13 & 0x80000000) != 0)
    {
      v3 = v13;
    }

    else
    {
      if (paramc_ParamGetUInt(v22[5], "retttmaxpcreframeblocks", &v21) < 0)
      {
        v15 = 10;
      }

      else
      {
        v15 = v21;
      }

      UInt = paramc_ParamGetUInt(v22[5], "retttnumframesinblock", &v21);
      v17 = v21;
      if (UInt < 0)
      {
        v17 = 10;
      }

      v18 = nuance_pcre_Init(v12[2], v12[3], v15, v17);
      if ((v18 & 0x80000000) == 0)
      {
        v3 = 0;
        *a3 = v12;
        return v3;
      }

      v3 = v18;
      nuance_pcre_ObjClose(v12[2], v12[3]);
      v14 = v22;
    }

    heap_Free(v14[1], v12);
  }

  return v3;
}

uint64_t sub_ObjClosePCRE1(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = nuance_pcre_DeInit(*(a1 + 16), *(a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    v3 = nuance_pcre_ObjClose(*(a1 + 16), *(a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      heap_Free(*(v5 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_SubStringRe(uint64_t a1, uint64_t a2, char *a3, const char *a4, const char **a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = 2147491847;
  v21 = 0;
  if (a1)
  {
    if (a2)
    {
      v20 = 0;
      inited = InitRsrcFunction(*a1, *(a1 + 8), &v21);
      if ((inited & 0x80000000) == 0)
      {
        v11 = PCRE_CompilePattern(*(a1 + 16), *(a1 + 24), a2, v23, 256, &v20, &inited);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        else
        {
          v17 = v11;
          if (v11)
          {
            v18 = v12;
            inited = sub_Substitute(a1, v11, v12, a3, a4, 0, a5);
            PCRE_FreePattern(v17, v18);
            return inited;
          }

          else
          {
            log_OutPublic(*(v21 + 32), "RETTT", 11005, "%s%s%s%s%s%d", v13, v14, v15, v16, "regularExpression");
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_Substitute(uint64_t a1, uint64_t a2, int a3, char *a4, const char *a5, int a6, const char **a7)
{
  v100 = *MEMORY[0x277D85DE8];
  v7 = 2147491847;
  v96 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a7)
        {
          v93 = 0;
          v94 = 0;
          __len = 0;
          inited = InitRsrcFunction(*a1, *(a1 + 8), &v96);
          if ((inited & 0x80000000) == 0)
          {
            v17 = cstdlib_strlen(a5);
            if ((v17 & 0x80000000) != 0)
            {
              log_OutPublic(*(v96 + 32), "RETTT", 11004, "%s%u", v13, v14, v15, v16, "bufferBytes");
              return 2147491849;
            }

            else
            {
              v18 = *(v96 + 8);
              v19 = *(v96 + 32);
              v92[0] = v18;
              v92[1] = v19;
              v94 = v17;
              v89 = v17;
              if (*a7)
              {
                v87 = a4;
                v88 = a2;
                v86 = a6;
                LODWORD(__len) = cstdlib_strlen(*a7);
                v93 = *a7;
                v85 = a7;
                *a7 = 0;
                goto LABEL_12;
              }

              LODWORD(__len) = 128;
              v25 = heap_Alloc(v18, 128);
              v93 = v25;
              if (v25)
              {
                v87 = a4;
                v88 = a2;
                v86 = a6;
                v85 = a7;
                cstdlib_memset(v25, 0, __len);
LABEL_12:
                log_OutTraceTuningData(*(v96 + 32), 12, "%s%s", v20, v21, v22, v23, v24, "BEG");
                HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v96 + 32));
                v36 = v89;
                if (!v89 && HasTraceTuningDataSubscriber)
                {
                  log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%d", v31, v32, v33, v34, v35, "BEG");
                  log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%s", v37, v38, v39, v40, v41, "RES");
                }

                v42 = 0;
                v43 = -1;
                v44 = -1;
                while (v42 < v36)
                {
                  log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%d", v31, v32, v33, v34, v35, "BEG");
                  v45 = PCRE_Exec(*(a1 + 16), *(a1 + 24), v88, a3, a5, v36, v42, &v98, 0x1Eu, &inited);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  v51 = v45;
                  if ((v45 & 0x80000000) != 0)
                  {
                    inited = PCRE_ErrorToLhError(*(a1 + 16), *(a1 + 24), v45);
                    v76 = *(v96 + 32);
                    v77 = "RES";
LABEL_45:
                    log_OutTraceTuningData(v76, 13, "%s%s %s%s %s%u", v71, v72, v73, v74, v75, v77);
                    break;
                  }

                  if (v98 == v44 && v99 == v43)
                  {
                    log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%s", v46, v47, v48, v49, v50, "RES");
                    log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%d", v52, v53, v54, v55, v56, "BEG");
                    v57 = a5[v42];
                    if ((~v57 & 0xC0) != 0)
                    {
                      v58 = 0;
                    }

                    else
                    {
                      v58 = pcre_sub_utf8_table4[v57 & 0x3F];
                    }

                    v59 = PCRE_Exec(*(a1 + 16), *(a1 + 24), v88, a3, a5, v89, (v58 + v42 + 1), &v98, 0x1Eu, &inited);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_58;
                    }

                    v51 = v59;
                    if ((v59 & 0x80000000) != 0)
                    {
                      inited = PCRE_ErrorToLhError(*(a1 + 16), *(a1 + 24), v59);
                      v76 = *(v96 + 32);
                      v77 = "END";
                      goto LABEL_45;
                    }
                  }

                  if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                  {
                    if (v51)
                    {
                      v65 = 0;
                      do
                      {
                        log_OutTraceTuningData(*(v96 + 32), 14, "%s%d %s%d %s%d", v60, v61, v62, v63, v64, "$");
                        v65 += 2;
                      }

                      while ((v65 | 1u) < 2 * v51);
                    }

                    else
                    {
                      log_OutTraceTuningData(*(v96 + 32), 13, "%s%d %s%s", v60, v61, v62, v63, v64, "IDXBEG");
                    }

                    log_OutTraceTuningData(*(v96 + 32), 13, "%s%s %s%s %s%d %s%d", v60, v61, v62, v63, v64, "END");
                  }

                  inited = sub_Append(v92, &a5[v42], (v98 - v42), v60, v61, v62, v63, v64);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                  {
                    log_OutTraceTuningData(*(v96 + 32), 15, "%s%.*s", v66, v67, v68, v69, v70, "APPEND");
                  }

                  inited = sub_AppendSubstitute(v92, v87, a5, &v98, v51, v68, v69, v70);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                  {
                    log_OutTraceTuningData(*(v96 + 32), 15, "%s%.*s", v31, v32, v33, v34, v35, "APPEND");
                  }

                  v36 = v89;
                  v44 = v98;
                  v43 = v99;
                  v42 = v99;
                  if (!v86)
                  {
                    goto LABEL_47;
                  }
                }

                v43 = v42;
LABEL_47:
                v78 = inited;
                if (inited >> 20 == 2213)
                {
                  if ((inited & 0x1FFF) == 0xA)
                  {
                    v79 = *(v96 + 32);
                    v80 = 11002;
                    v81 = 0;
                  }

                  else
                  {
                    if ((inited & 0x1FFF) == 0x14)
                    {
                      inited = 0;
LABEL_55:
                      inited = sub_Append(v92, &a5[v43], v89 - v43 + 1, v31, v32, v33, v34, v35);
                      if ((inited & 0x80000000) != 0)
                      {
LABEL_58:
                        *v85 = v93;
                        log_OutTraceTuningData(*(v96 + 32), 12, "%s%s %s%u %s%s", v46, v47, v48, v49, v50, "END");
                        return inited;
                      }

LABEL_56:
                      if (log_HasTraceTuningDataSubscriber(*(v96 + 32)))
                      {
                        log_OutTraceTuningData(*(v96 + 32), 15, "%s%.*s", v46, v47, v48, v49, v50, "APPEND");
                      }

                      goto LABEL_58;
                    }

                    v79 = *(v96 + 32);
                    v84 = "lhError";
                    v81 = "%s%x";
                    v80 = 11027;
                  }

                  log_OutPublic(v79, "RETTT", v80, v81, v32, v33, v34, v35, v84);
                  v78 = inited;
                }

                if ((v78 & 0x80000000) != 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_55;
              }

              log_OutPublic(*(v96 + 32), "RETTT", 11002, 0, v26, v27, v28, v29, v83);
              return 2147491850;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_GsubStringRe(uint64_t a1, uint64_t a2, char *a3, const char *a4, const char **a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = 2147491847;
  v21 = 0;
  if (a1)
  {
    if (a2)
    {
      v20 = 0;
      inited = InitRsrcFunction(*a1, *(a1 + 8), &v21);
      if ((inited & 0x80000000) == 0)
      {
        v11 = PCRE_CompilePattern(*(a1 + 16), *(a1 + 24), a2, v23, 256, &v20, &inited);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        else
        {
          v17 = v11;
          if (v11)
          {
            v18 = v12;
            inited = sub_Substitute(a1, v11, v12, a3, a4, 1, a5);
            PCRE_FreePattern(v17, v18);
            return inited;
          }

          else
          {
            log_OutPublic(*(v21 + 32), "RETTT", 11005, "%s%s%s%s%s%d", v13, v14, v15, v16, "regularExpression");
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_GsubCompiledRePCRE1(uint64_t a1, uint64_t a2, char *a3, const char *a4, const char **a5)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = 2147491847;
  v94 = 0;
  if (!a1)
  {
    return v5;
  }

  if (!a2)
  {
    return v5;
  }

  if (!a4)
  {
    return v5;
  }

  if (!a5)
  {
    return v5;
  }

  v91 = 0;
  v92 = 0;
  __len = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v94) & 0x80000000) != 0)
  {
    return v5;
  }

  v15 = cstdlib_strlen(a4);
  if ((v15 & 0x80000000) != 0)
  {
    log_OutPublic(*(v94 + 32), "RETTT", 11004, "%s%u", v11, v12, v13, v14, "bufferBytes");
    return 2147491849;
  }

  v16 = *(v94 + 8);
  v17 = *(v94 + 32);
  v90[0] = v16;
  v90[1] = v17;
  v92 = v15;
  if (*a5)
  {
    LODWORD(__len) = cstdlib_strlen(*a5);
    v91 = *a5;
    *a5 = 0;
  }

  else
  {
    LODWORD(__len) = 128;
    v23 = heap_Alloc(v16, 128);
    v91 = v23;
    if (!v23)
    {
      log_OutPublic(*(v94 + 32), "RETTT", 11002, 0, v24, v25, v26, v27, v86);
      return 2147491850;
    }

    cstdlib_memset(v23, 0, __len);
  }

  log_OutTraceTuningData(*(v94 + 32), 12, "%s%s", v18, v19, v20, v21, v22, "BEG");
  HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v94 + 32));
  v89 = a4;
  if (!v15 && HasTraceTuningDataSubscriber)
  {
    log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%d", v29, v30, v31, v32, v33, "BEG");
    log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%s", v34, v35, v36, v37, v38, "RES");
LABEL_41:
    v39 = 0;
    goto LABEL_42;
  }

  if (!v15)
  {
    goto LABEL_41;
  }

  v88 = v15;
  v39 = 0;
  v40 = -1;
  v41 = -1;
  while (1)
  {
    log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%d", v29, v30, v31, v32, v33, "BEG");
    v42 = nuance_pcre_exec(*(a1 + 16), *(a1 + 24), a2, 0, v89, v15, v39, 0, &v95, 30);
    v48 = v42;
    if ((v42 & 0x80000000) != 0)
    {
      v5 = nuance_pcre_ErrorToLhError(v42);
      v82 = *(v94 + 32);
      v83 = "RES";
      goto LABEL_52;
    }

    if (v95 != v40)
    {
      v50 = v89;
      goto LABEL_26;
    }

    v49 = v96 == v41;
    v50 = v89;
    if (v49)
    {
      log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%s", v43, v44, v45, v46, v47, "RES");
      log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%d", v51, v52, v53, v54, v55, "BEG");
      v56 = v89[v39];
      v57 = (~v56 & 0xC0) != 0 ? 0 : pcre_sub_utf8_table4[v56 & 0x3F];
      v58 = nuance_pcre_exec(*(a1 + 16), *(a1 + 24), a2, 0, v89, v88, v57 + v39 + 1, 0, &v95, 30);
      v48 = v58;
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }
    }

LABEL_26:
    if (log_HasTraceTuningDataSubscriber(*(v94 + 32)))
    {
      if (v48)
      {
        v64 = 0;
        do
        {
          log_OutTraceTuningData(*(v94 + 32), 14, "%s%d %s%d %s%d", v59, v60, v61, v62, v63, "$");
          v64 += 2;
        }

        while ((v64 | 1u) < 2 * v48);
      }

      else
      {
        log_OutTraceTuningData(*(v94 + 32), 13, "%s%d %s%s", v59, v60, v61, v62, v63, "IDXBEG");
      }

      log_OutTraceTuningData(*(v94 + 32), 13, "%s%s %s%s %s%d %s%d", v59, v60, v61, v62, v63, "END");
      v50 = v89;
    }

    appended = sub_Append(v90, (v50 + v39), v95 - v39, v59, v60, v61, v62, v63);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (log_HasTraceTuningDataSubscriber(*(v94 + 32)))
    {
      log_OutTraceTuningData(*(v94 + 32), 15, "%s%.*s", v71, v72, v73, v74, v75, "APPEND");
    }

    appended = sub_AppendSubstitute(v90, a3, v50, &v95, v48, v73, v74, v75);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (log_HasTraceTuningDataSubscriber(*(v94 + 32)))
    {
      log_OutTraceTuningData(*(v94 + 32), 15, "%s%.*s", v29, v30, v31, v32, v33, "APPEND");
    }

    v15 = v88;
    v40 = v95;
    v39 = v96;
    v41 = v96;
    if (v96 >= v88)
    {
      goto LABEL_42;
    }
  }

  v5 = nuance_pcre_ErrorToLhError(v58);
  v82 = *(v94 + 32);
  v83 = "END";
LABEL_52:
  log_OutTraceTuningData(v82, 13, "%s%s %s%s %s%u", v77, v78, v79, v80, v81, v83);
  v15 = v88;
  if (v5 >> 20 == 2213)
  {
    if ((v5 & 0x1FFF) != 0x14)
    {
      if ((v5 & 0x1FFF) == 0xA)
      {
        v84 = 11002;
        v85 = 0;
      }

      else
      {
        v87 = "lhError";
        v85 = "%s%x";
        v84 = 11027;
      }

      log_OutPublic(*(v94 + 32), "RETTT", v84, v85, v30, v31, v32, v33, v87);
LABEL_44:
      if (log_HasTraceTuningDataSubscriber(*(v94 + 32)))
      {
        log_OutTraceTuningData(*(v94 + 32), 15, "%s%.*s", v66, v67, v68, v69, v70, "APPEND");
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  appended = sub_Append(v90, &v89[v39], v15 - v39 + 1, v29, v30, v31, v32, v33);
  if ((appended & 0x80000000) == 0)
  {
    v5 = 0;
    goto LABEL_44;
  }

LABEL_46:
  v5 = appended;
LABEL_47:
  *a5 = v91;
  log_OutTraceTuningData(*(v94 + 32), 12, "%s%s %s%u %s%s", v66, v67, v68, v69, v70, "END");
  return v5;
}

uint64_t sub_Append(uint64_t a1, void *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && __src)
  {
    v10 = __n;
    if (__n)
    {
      v11 = *(a1 + 28);
      v12 = v11 + __n;
      if (v11 <= (__n ^ 0x7FFFFFFF) && (v12 < 0xF4240 || v12 <= 2 * *(a1 + 24)))
      {
        if (*(a1 + 32) >= v12)
        {
          v22 = *(a1 + 16);
LABEL_21:
          cstdlib_memcpy((v22 + v11), __src, v10);
          v13 = 0;
          *(a1 + 28) += v10;
          return v13;
        }

        if (v12 <= 0x7FFFFF7F)
        {
          v14 = (v12 & 0x7FFFFF80) + 128;
        }

        else
        {
          v14 = 0x7FFFFFFFLL;
        }

        v15 = *(a1 + 16);
        v16 = *a1;
        if (v15)
        {
          v17 = heap_Realloc(v16, v15, v14);
          if (v17)
          {
            v22 = v17;
            cstdlib_memset((v17 + *(a1 + 32) + 1), 0, (v14 + ~*(a1 + 32)));
LABEL_20:
            *(a1 + 16) = v22;
            *(a1 + 32) = v14;
            v11 = *(a1 + 28);
            goto LABEL_21;
          }
        }

        else
        {
          v22 = heap_Calloc(v16, v14, 1);
          if (v22)
          {
            goto LABEL_20;
          }
        }

        log_OutPublic(*(a1 + 8), "RETTT", 11002, 0, v18, v19, v20, v21, v24);
        return 2147491850;
      }

      log_OutPublic(*(a1 + 8), "RETTT", 11001, "%s%u", a5, a6, a7, a8, "bufferLimitBytes");
      return 2147491849;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11000, 0, a5, a6, a7, a8, v24);
    }
  }

  return v13;
}

uint64_t sub_AppendSubstitute(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && __s && a4)
  {
    v11 = a5;
    v18 = cstdlib_strlen(__s);
    if (v18)
    {
      v19 = 0;
      while (1)
      {
        v20 = &__s[v19];
        v21 = *v20;
        if (v21 == 36)
        {
          break;
        }

        if (v21 == 92)
        {
          __src = 0;
          v22 = v20[1];
          if (v22 <= 0x61)
          {
            if (v22 - 48 < 8)
            {
              v23 = (v20 + 2);
              v24 = v20 + 4;
              v25 = 1;
              LOBYTE(v22) = v22 - 48;
              while (1)
              {
                v26 = *v23;
                if ((*v23 & 0xF8) != 0x30)
                {
                  goto LABEL_15;
                }

                ++v23;
                LOBYTE(v22) = v26 + 8 * v22 - 48;
                if (v25++ >= 2)
                {
                  goto LABEL_14;
                }
              }
            }

            if (v22 == 97)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 7;
              goto LABEL_15;
            }

            goto LABEL_69;
          }

          if (v20[1] > 0x71u)
          {
            if (v20[1] > 0x75u)
            {
              if (v22 == 118)
              {
                LODWORD(v23) = v20 + 2;
                LOBYTE(v22) = 11;
                goto LABEL_15;
              }

              if (v22 == 120)
              {
                v22 = 0;
                v23 = (v20 + 2);
                v24 = v20 + 4;
                v36 = 1;
                do
                {
                  v37 = v36;
                  v38 = *v23;
                  if (v38 - 48 >= 0xA)
                  {
                    if (v38 - 65 > 0x25 || ((1 << (v38 - 65)) & 0x3F0000003FLL) == 0)
                    {
                      goto LABEL_15;
                    }

                    v40 = 16 * v22 + v38;
                    v41 = v40 - 87;
                    v22 = v40 - 55;
                    if (v38 > 0x60)
                    {
                      v22 = v41;
                    }
                  }

                  else
                  {
                    v22 = (v38 - 48) | (16 * v22);
                  }

                  v36 = 0;
                  ++v23;
                }

                while ((v37 & 1) != 0);
LABEL_14:
                LODWORD(v23) = v24;
                goto LABEL_15;
              }

              goto LABEL_69;
            }

            if (v22 == 114)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 13;
              goto LABEL_15;
            }

            if (v22 != 116)
            {
LABEL_69:
              LODWORD(v23) = v20 + 2;
              goto LABEL_15;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 9;
          }

          else if (v20[1] > 0x65u)
          {
            if (v22 == 102)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 12;
              goto LABEL_15;
            }

            if (v22 != 110)
            {
              goto LABEL_69;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 10;
          }

          else
          {
            if (v22 == 98)
            {
              LODWORD(v23) = v20 + 2;
              LOBYTE(v22) = 8;
              goto LABEL_15;
            }

            if (v22 != 101)
            {
              goto LABEL_69;
            }

            LODWORD(v23) = v20 + 2;
            LOBYTE(v22) = 27;
          }

LABEL_15:
          LOBYTE(__src) = v22;
          v28 = sub_Append(a1, &__src, 1uLL, v13, v14, v15, v16, v17);
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }

          LODWORD(v23) = v23 - __s;
          goto LABEL_41;
        }

        v28 = sub_Append(a1, v20, 1uLL, v13, v14, v15, v16, v17);
        if ((v28 & 0x80000000) != 0)
        {
          return v28;
        }

        LODWORD(v23) = v19 + 1;
LABEL_41:
        v19 = v23;
        if (v23 >= v18)
        {
          return 0;
        }
      }

      v23 = v19 + 1;
      v29 = __s[v23];
      v30 = v29 - 58;
      if ((v29 - 58) <= 0xF5u)
      {
        if (v29 != 123)
        {
          v35 = a1;
          v34 = 1;
LABEL_40:
          v28 = sub_Append(v35, v20, v34, v13, v14, v15, v16, v17);
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }

          goto LABEL_41;
        }

        LODWORD(v23) = v19 + 2;
        v29 = __s[v19 + 2];
      }

      if ((v29 - 48) > 9)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        do
        {
          v31 = 10 * v31 + (v29 - 48);
          LODWORD(v23) = v23 + 1;
          v29 = __s[v23];
        }

        while ((v29 - 48) < 0xA);
      }

      if (v30 <= 0xF5u)
      {
        if (v29 != 125)
        {
          goto LABEL_41;
        }

        LODWORD(v23) = v23 + 1;
      }

      if (v31 >= v11)
      {
        goto LABEL_41;
      }

      v32 = *(a4 + 8 * v31);
      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v33 = *(a4 + 8 * v31 + 4);
      if (v33 < 0)
      {
        goto LABEL_41;
      }

      v34 = (v33 - v32);
      v20 = (a3 + v32);
      v35 = a1;
      goto LABEL_40;
    }

    return 0;
  }

  else
  {
    v42 = 2147491847;
    if (a1)
    {
      log_OutPublic(*(a1 + 8), "RETTT", 11003, 0, a5, a6, a7, a8, v44);
    }
  }

  return v42;
}

uint64_t PCRE_V10_Adapter_Init(void *a1)
{
  a1[2] = PCRE_V10_ObjOpen;
  a1[3] = PCRE_V10_ObjClose;
  a1[4] = PCRE_V10_ErrorToLhError;
  a1[5] = PCRE_V10_CompilePattern;
  a1[9] = PCRE_V10_Exec;
  a1[7] = PCRE_V10_SerializeAndEncode;
  a1[6] = PCRE_V10_SerializeAndDecode;
  a1[8] = PCRE_V10_SerializeFree;
  a1[10] = &PCRE_V10_OPTIONS_MAP;
  return 0;
}

uint64_t PCRE_V10_ObjOpen(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 2320506890;
  v6 = heap_Alloc(*(a3 + 8), 32);
  if (v6)
  {
    v7 = v6;
    v8 = pcre2_general_context_create_8(loc_PCRE_V10_private_malloc, loc_PCRE_V10_private_free, *(a3 + 8));
    if (v8)
    {
      v9 = v8;
      pcre2_compile_context_create_8(v8);
      v11 = v10;
      pcre2_match_context_create_8(v9);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v5 = 0;
        *v7 = a3;
        v7[1] = v9;
        v7[2] = v11;
        v7[3] = v12;
        *a1 = v7;
      }
    }
  }

  return v5;
}

uint64_t PCRE_V10_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2320506886;
  }

  v2 = a1[3];
  if (v2)
  {
    pcre2_match_context_free_8(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    pcre2_compile_context_free_8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    pcre2_general_context_free_8(v4);
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t PCRE_V10_ErrorToLhError(int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    return 0;
  }

  result = 2320506887;
  if (a1 <= -38)
  {
    if (a1 > -49)
    {
      switch(a1)
      {
        case -48:
          return 2320506890;
        case -47:
          return 2320514656;
        case -44:
          return 2320514660;
      }

      return 2320514663;
    }

    if (a1 == -55)
    {
      return 2320514663;
    }

    if (a1 == -51)
    {
      return 2320507149;
    }

    if (a1 != -49)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 > -32)
  {
    if (a1 <= -3)
    {
      if (a1 == -31)
      {
        return 2320514662;
      }

      if (a1 == -29)
      {
        return result;
      }

      return 2320514663;
    }

    if (a1 == -2)
    {
      return 2320514658;
    }

    if (a1 != -1)
    {
      return 2320514663;
    }

    return 2320506900;
  }

  if (a1 == -37)
  {
    return 2320514657;
  }

  if (a1 != -34)
  {
    return 2320514663;
  }

  return result;
}

uint64_t PCRE_V10_CompilePattern(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, int a5, _DWORD *a6)
{
  v12 = 0;
  v11 = 0;
  v9 = pcre2_compile_8(a2, 0xFFFFFFFFFFFFFFFFLL, a3, &v11, &v12, *(a1 + 16));
  if (!v9)
  {
    pcre2_get_error_message_8(v11, a4, a5);
  }

  if (a6)
  {
    *a6 = v12;
  }

  return v9;
}

uint64_t PCRE_V10_Exec(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, unsigned int a6, int32x2_t *a7, int a8, int *a9)
{
  v17 = pcre2_match_data_create_from_pattern_8(a2, *(a1 + 8));
  if (v17)
  {
    matched = pcre2_match_8(a2, a3, a4, a5, a6, v17, *(a1 + 24));
    v19 = matched;
    if ((matched & 0x80000000) == 0)
    {
      if (a8 / 3 >= matched)
      {
        v20 = matched;
      }

      else
      {
        v20 = (a8 / 3);
      }

      ovector_pointer_8 = pcre2_get_ovector_pointer_8(v17);
      if (v20 >= 1)
      {
        do
        {
          v22 = *ovector_pointer_8++;
          *a7++ = vmovn_s64(v22);
          --v20;
        }

        while (v20);
      }
    }

    v23 = 0;
  }

  else
  {
    v23 = -1974460406;
    *a9 = -1974460406;
    v19 = 0xFFFFFFFFLL;
  }

  pcre2_match_data_free_8(v17);
  *a9 = v23;
  return v19;
}

uint64_t PCRE_V10_SerializeAndEncode(uint64_t a1, size_t *a2, _DWORD *a3, void *a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v11[0] = a2;
  v6 = pcre2_serialize_encode_8(v11, 1, &v10, &v9, *(a1 + 8));
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v10;
    *a3 = v9;
    *a4 = v7;
  }

  return PCRE_V10_ErrorToLhError(v6);
}

uint64_t PCRE_V10_SerializeAndDecode(uint64_t a1, _DWORD *a2, void *a3)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v4 = pcre2_serialize_decode_8(v6, 1, a2, *(a1 + 8));
  result = PCRE_V10_ErrorToLhError(v4);
  *a3 = v6[0];
  return result;
}

uint64_t PCRE_V10_Adapter_Pattern_Init(void *a1)
{
  a1[2] = PCRE_V10_FreePattern;
  a1[3] = PCRE_V10_GetPatternSize;
  a1[4] = PCRE_V10_CopyPattern;
  return 0;
}

uint64_t PCRE_V10_GetPatternSize(uint64_t a1, uint64_t *a2)
{
  v2 = pcre2_pattern_info_8(a1, 0x16u, a2);

  return PCRE_V10_ErrorToLhError(v2);
}

uint64_t PCRE_Adapter_Create(int a1, uint64_t a2, _WORD *a3, int a4)
{
  v11 = 0;
  inited = InitRsrcFunction(a3, a4, &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = 2320506890;
  v8 = heap_Alloc(*(v11 + 8), 88);
  if (v8)
  {
    v9 = v8;
    if (a1 == 1)
    {
      v7 = PCRE_V10_Adapter_Init(v8);
    }

    else
    {
      v7 = 2320506898;
    }

    *v9 = v11;
    v9[1] = 0;
    *a2 = v9;
    *(a2 + 8) = 56664;
  }

  return v7;
}

uint64_t PCRE_ObjOpen(uint64_t *a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((result & 0x80000000) == 0)
  {
    v6 = a1[2];
    v7 = *a1;

    return v6(a1 + 1, a3, v7);
  }

  return result;
}

uint64_t PCRE_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((result & 0x80000000) == 0)
  {
    v4 = (*(a1 + 24))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
    return v4;
  }

  return result;
}

uint64_t PCRE_ErrorToLhError(uint64_t a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 32);

    return v6(a3);
  }

  return result;
}

void *PCRE_CompilePattern(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  return PCRE_CompilePatternWithOptions(a1, a2, a3, v8, a4, a5, a6, a7);
}

void *PCRE_CompilePatternWithOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v15 = safeh_HandleCheck(a1, a2, 56664, 88);
  if (v15 < 0)
  {
    v20 = 0;
  }

  else
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      v18 = *(a4 + v16);
      if (v18)
      {
        v18 = *(*(a1 + 80) + v16);
      }

      v17 = v18 | v17;
      v16 += 4;
    }

    while (v16 != 20);
    v19 = heap_Alloc(*(*a1 + 8), 40);
    v20 = v19;
    if (v19)
    {
      PCRE_V10_Adapter_Pattern_Init(v19);
      v21 = (*(a1 + 40))(*(a1 + 8), a3, v17, a5, a6, a7);
      v22 = *a1;
      if (v21)
      {
        *v20 = v22;
        v20[1] = v21;
      }

      else
      {
        heap_Free(*(v22 + 8), v20);
        v20 = 0;
        v15 = -1974460409;
      }
    }

    else
    {
      v15 = -1974460406;
    }
  }

  *a8 = v15;
  return v20;
}

uint64_t PCRE_SerializeAndEncode(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  result = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((result & 0x80000000) == 0)
  {
    result = safeh_HandleCheck(a3, a4, 56665, 0);
    if ((result & 0x80000000) == 0)
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 8);
      v14 = *(a3 + 8);

      return v12(v13, v14, a5, a6);
    }
  }

  return result;
}

uint64_t PCRE_SerializeAndDecode(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2320506890;
  v13 = 0;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    v7 = (*(a1 + 48))(*(a1 + 8), a3, &v13);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    v11 = v13;
    if (v13)
    {
      *v10 = *a1;
      v10[1] = v11;
      *a4 = v10;
      a4[1] = 56665;
      return v7;
    }
  }

  return v8;
}

uint64_t PCRE_SerializeFree(uint64_t a1, int a2, uint64_t a3)
{
  v5 = safeh_HandleCheck(a1, a2, 56664, 88);
  if ((v5 & 0x80000000) == 0)
  {
    (*(a1 + 64))(a3);
  }

  return v5;
}

uint64_t PCRE_FreePattern(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v3 & 0x80000000) == 0)
  {
    (*(a1 + 16))(*(a1 + 8));
    heap_Free(*(*a1 + 8), a1);
  }

  return v3;
}

uint64_t PCRE_CopyPattern(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v8 = 2320506890;
  v9 = heap_Alloc(*(*a1 + 8), 40);
  if (v9)
  {
    v10 = v9;
    PCRE_V10_Adapter_Pattern_Init(v9);
    v11 = *(a1 + 8);
    *v10 = *a1;
    v12 = (*(a1 + 32))(v11);
    v10[1] = v12;
    if (v12)
    {
      *a3 = v10;
      *(a3 + 8) = 56665;
LABEL_5:
      v8 = v7;
    }
  }

  *a4 = v8;
  return v8;
}

uint64_t PCRE_GetPatternSize(uint64_t a1, int a2, uint64_t a3)
{
  result = safeh_HandleCheck(a1, a2, 56665, 0);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 8);

    return v6(v7, a3);
  }

  return result;
}

uint64_t PCRE_Exec(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, _DWORD *a10)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  return PCRE_ExecWithOptions(a1, a2, a3, a4, a5, a6, a7, v11, a8, a9, a10);
}

uint64_t PCRE_ExecWithOptions(void *a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, _DWORD *a11)
{
  v18 = safeh_HandleCheck(a1, a2, 56664, 88);
  if (v18 < 0 || (v18 = safeh_HandleCheck(a3, a4, 56665, 0), v18 < 0))
  {
    *a11 = v18;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(a8 + v19);
      if (v21)
      {
        v21 = *(a1[10] + v19);
      }

      v20 = v21 | v20;
      v19 += 4;
    }

    while (v19 != 20);
    v22 = a1[9];
    v23 = a1[1];
    v24 = *(a3 + 8);

    return v22(v23, v24, a5, a6, a7, v20, a9, a10, a11);
  }
}

uint64_t PCRE_Adapter2PCREOptions(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 56664, 88) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(result) = 0;
  do
  {
    v7 = *(a3 + v5);
    if (v7)
    {
      v7 = *(*(a1 + 80) + v5);
    }

    result = v7 | result;
    v5 += 4;
  }

  while (v5 != 20);
  return result;
}

uint64_t _pcre2_auto_possessify_8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 1000;
  v3 = *a1;
  if (v3 <= 0xA4)
  {
    v7 = a1;
    do
    {
      if ((v3 - 33) > 0x40u)
      {
        if (v3 - 110 >= 2)
        {
          if (v3 != 112)
          {
            goto LABEL_33;
          }

          v9 = __rev16(*(v7 + 1));
        }

        else
        {
          v9 = 33;
        }

        v10 = v7[v9];
        if ((v10 - 98) <= 7u)
        {
          chr_property_list = get_chr_property_list(v7, a2, *(a3 + 16), &v23);
          v24 = (v10 & 1) == 0;
          if (compare_opcodes(chr_property_list, a2, a3, &v23, chr_property_list, &v22))
          {
            v7[v9] = 0x6D6D6C6C6B6B6A6AuLL >> (8 * (v10 - 98));
          }
        }
      }

      else
      {
        if (v3 <= 0x54u)
        {
          if (v3 <= 0x47u)
          {
            if (v3 <= 0x3Au)
            {
              if (v3 >= 0x2Eu)
              {
                v8 = -13;
              }

              else
              {
                v8 = 0;
              }
            }

            else
            {
              v8 = -26;
            }
          }

          else
          {
            v8 = -39;
          }
        }

        else
        {
          v8 = -52;
        }

        v12 = v8 + v3;
        v13 = (v8 + v3);
        if (v13 > 0x28)
        {
          v14 = 0;
        }

        else
        {
          v14 = get_chr_property_list(v7, a2, *(a3 + 16), &v23);
        }

        v15 = v13 <= 0x25 && ((1 << v12) & 0x2A00000000) != 0 || v12 == 39;
        v24 = v15;
        if (v14 && compare_opcodes(v14, a2, a3, &v23, v14, &v22) && (v12 - 33) <= 7u)
        {
          *v7 += 0x506060707080809uLL >> (8 * ((v12 - 33) & 0x1Fu));
        }
      }

      LOBYTE(v3) = *v7;
LABEL_33:
      result = v3;
      if (v3 <= 0x5Du)
      {
        if (v3 - 85 < 6)
        {
          goto LABEL_45;
        }

        if (v3 - 91 < 3)
        {
LABEL_47:
          v19 = v7[3];
LABEL_48:
          v17 = 2 * ((v19 - 15) < 2);
LABEL_49:
          v20 = _pcre2_OP_lengths_8;
          goto LABEL_50;
        }

        if (!v3)
        {
          return result;
        }
      }

      else
      {
        v16 = v3 - 112;
        if (v16 <= 0x2E)
        {
          if (((1 << (v3 - 112)) & 0x554000000000) != 0)
          {
            v17 = v7[1];
            goto LABEL_49;
          }

          if (v3 == 112)
          {
            v18 = *(v7 + 1);
            goto LABEL_58;
          }

          if (v16 == 7)
          {
            v18 = *(v7 + 5);
LABEL_58:
            v17 = __rev16(v18);
            goto LABEL_49;
          }
        }

        if (v3 - 94 < 3)
        {
LABEL_45:
          v19 = v7[1];
          goto LABEL_48;
        }

        if (v3 == 97)
        {
          goto LABEL_47;
        }
      }

      v17 = _pcre2_OP_lengths_8[v3];
      v21 = &v7[v17];
      if (!a2)
      {
        goto LABEL_51;
      }

      if ((v3 - 29) > 0x37u)
      {
        goto LABEL_51;
      }

      v3 = *(v21 - 1);
      if (v3 < 0xC0)
      {
        goto LABEL_51;
      }

      LOBYTE(v3) = v3 & 0x3F;
      v20 = _pcre2_utf8_table4;
LABEL_50:
      v21 = &v7[v17 + v20[v3]];
LABEL_51:
      v3 = *v21;
      v7 = v21;
    }

    while (v3 < 0xA5);
  }

  return 0xFFFFFFFFLL;
}

unsigned __int8 *get_chr_property_list(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 1;
  v5 = *a1;
  *a4 = *a1;
  if ((v5 - 33) <= 0x40)
  {
    if (v5 >= 0x2E)
    {
      v6 = 46;
    }

    else
    {
      v6 = 33;
    }

    if (v5 <= 0x3A)
    {
      v7 = v6;
    }

    else
    {
      v7 = 59;
    }

    if (v5 <= 0x47)
    {
      v8 = v7;
    }

    else
    {
      v8 = 72;
    }

    if (v5 <= 0x54)
    {
      v9 = v8;
    }

    else
    {
      v9 = 85;
    }

    v10 = (v5 - v9 + 33);
    if (v10 <= 0x2D && ((1 << (v5 - v9 + 33)) & 0x238000000000) != 0)
    {
      v4 = a1 + 3;
    }

    v13 = (v10 > 0x29 || ((1 << (v5 - v9 + 33)) & 0x21800000000) == 0) && v10 != 43;
    *(a4 + 4) = v13;
    if (v9 <= 58)
    {
      if (v9 == 33)
      {
        v14 = 29;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    if (v9 != 85)
    {
      if (v9 != 72)
      {
        v14 = 31;
LABEL_54:
        *a4 = v14;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v15 = *v4++;
    v5 = v15;
    *a4 = v15;
  }

  if (v5 > 28)
  {
    if (v5 <= 31)
    {
      if (v5 != 30)
      {
LABEL_55:
        result = v4 + 1;
        v21 = *v4;
        if (a2 && v21 >= 0xC0)
        {
          if ((v21 & 0x20) != 0)
          {
            v22 = *result & 0x3F;
            if ((v21 & 0x10) != 0)
            {
              if ((v21 & 8) != 0)
              {
                v29 = v4[2] & 0x3F;
                v30 = v4[3] & 0x3F;
                v31 = v4[4] & 0x3F;
                if ((v21 & 4) != 0)
                {
                  v21 = ((v21 & 1) << 30) | (v22 << 24) | (v29 << 18) | (v30 << 12) | (v31 << 6) | v4[5] & 0x3F;
                  result = v4 + 6;
                }

                else
                {
                  v21 = ((v21 & 3) << 24) | (v22 << 18) | (v29 << 12) | (v30 << 6) | v31;
                  result = v4 + 5;
                }
              }

              else
              {
                v21 = ((v21 & 7) << 18) | (v22 << 12) | ((v4[2] & 0x3F) << 6) | v4[3] & 0x3F;
                result = v4 + 4;
              }
            }

            else
            {
              v21 = ((v21 & 0xF) << 12) | (v22 << 6) | v4[2] & 0x3F;
              result = v4 + 3;
            }
          }

          else
          {
            result = v4 + 2;
            v21 = v4[1] & 0x3F | ((v21 & 0x1F) << 6);
          }
        }

        *(a4 + 8) = v21;
        *(a4 + 12) = -1;
        return result;
      }

LABEL_43:
      v17 = 29;
LABEL_45:
      *a4 = v17;
      result = v4 + 1;
      v18 = *v4;
      if (a2 && v18 >= 0xC0)
      {
        if ((v18 & 0x20) != 0)
        {
          v23 = *result & 0x3F;
          if ((v18 & 0x10) != 0)
          {
            if ((v18 & 8) != 0)
            {
              v32 = v4[2] & 0x3F;
              v33 = v4[3] & 0x3F;
              v34 = v4[4] & 0x3F;
              if ((v18 & 4) != 0)
              {
                v18 = ((v18 & 1) << 30) | (v23 << 24) | (v32 << 18) | (v33 << 12) | (v34 << 6) | v4[5] & 0x3F;
                result = v4 + 6;
              }

              else
              {
                v18 = ((v18 & 3) << 24) | (v23 << 18) | (v32 << 12) | (v33 << 6) | v34;
                result = v4 + 5;
              }
            }

            else
            {
              v18 = ((v18 & 7) << 18) | (v23 << 12) | ((v4[2] & 0x3F) << 6) | v4[3] & 0x3F;
              result = v4 + 4;
            }
          }

          else
          {
            v18 = ((v18 & 0xF) << 12) | (v23 << 6) | v4[2] & 0x3F;
            result = v4 + 3;
          }
        }

        else
        {
          result = v4 + 2;
          v18 = v4[1] & 0x3F | ((v18 & 0x1F) << 6);
        }
      }

      *(a4 + 8) = v18;
      if (a2)
      {
        v35 = 1;
      }

      else
      {
        v35 = v18 > 0xFF;
      }

      v36 = v35;
      if (v18 >= 0x80 && (v36 & 1) != 0)
      {
        v37 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v18 & 0x7F | (_pcre2_ucd_stage1_8[v18 >> 7] << 7)] + 1] + v18;
      }

      else
      {
        v37 = *(a3 + v18);
      }

      *(a4 + 12) = v37;
      if (v18 == v37)
      {
        v38 = -1;
LABEL_101:
        *(a4 + 12) = v38;
      }

      else
      {
        *(a4 + 16) = -1;
      }

      return result;
    }

    if ((v5 - 110) < 2)
    {
      result = v4 + 32;
LABEL_50:
      v19 = *result - 98;
      if (v19 <= 0xB)
      {
        v20 = 1 << v19;
        if ((v20 & 0x533) != 0)
        {
          *(a4 + 4) = 1;
        }

        else if ((v20 & 0x20C) == 0)
        {
          *(a4 + 4) = __rev16(*(result + 1)) == 0;
          result += 5;
          goto LABEL_80;
        }

        ++result;
      }

LABEL_80:
      *(a4 + 8) = result - v4;
      return result;
    }

    if (v5 == 32)
    {
LABEL_44:
      v17 = 31;
      goto LABEL_45;
    }

    if (v5 == 112)
    {
      result = &v4[__rev16(*v4) - 1];
      goto LABEL_50;
    }

    return 0;
  }

  if ((v5 - 17) < 0xA || (v5 - 6) < 8)
  {
    return v4;
  }

  if ((v5 - 15) >= 2)
  {
    return 0;
  }

  v24 = *v4;
  if (v24 == 9)
  {
    v25 = 0;
    v26 = &_pcre2_ucd_caseless_sets_8 + 4 * v4[1];
    result = v4 + 2;
    do
    {
      if ((v25 + 8) >= 0x20)
      {
        *(a4 + 8) = v4[2];
        v38 = v4[3];
        goto LABEL_101;
      }

      v27 = *&v26[v25];
      *(a4 + v25 + 8) = v27;
      v25 += 4;
    }

    while (v27 != -1);
    if (v5 == 16)
    {
      v28 = 29;
    }

    else
    {
      v28 = 31;
    }

    *a4 = v28;
  }

  else
  {
    *(a4 + 8) = v24;
    *(a4 + 12) = v4[1];
    return v4 + 2;
  }

  return result;
}

uint64_t compare_opcodes(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, _DWORD *a6)
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = (*a6)--;
  if (v6 >= 2)
  {
    v14 = 0;
    v15 = &v99;
    v95 = a4 + 3;
    v96 = a4 + 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v16 = *a1;
          if (v16 != 118)
          {
            break;
          }

          a1 += 6;
        }

        if (v16 != 119)
        {
          break;
        }

        a1 += __rev16(*(a1 + 5));
      }

      while (v16 == 120)
      {
        a1 += __rev16(*(a1 + 1));
        v16 = *a1;
      }

      if ((v16 - 121) > 0x1B)
      {
        goto LABEL_14;
      }

      v17 = 1 << (v16 - 121);
      if ((v17 & 0x1600) != 0)
      {
        v23 = &a1[__rev16(*(a1 + 1))];
        a1 += _pcre2_OP_lengths_8[v16];
        v14 = 1;
        if (*v23 == 120)
        {
          do
          {
            result = compare_opcodes(a1, a2, a3, a4, a5, a6);
            if (!result)
            {
              return result;
            }

            a1 = v23 + 3;
            v23 += __rev16(*(v23 + 1));
          }

          while (*v23 == 120);
          v14 = 1;
        }
      }

      else if ((v17 & 9) != 0)
      {
        if (!a4[1])
        {
          return 0;
        }

        v24 = a1[-__rev16(*(a1 + 1))] - 126;
        if (v24 <= 0xD)
        {
          v25 = 1 << v24;
          if ((v25 & 0x3180) != 0)
          {
            if (*(a3 + 292))
            {
              return 0;
            }
          }

          else if ((v25 & 0x1F) != 0)
          {
            return v14 ^ 1;
          }
        }

        a1 += _pcre2_OP_lengths_8[v16];
      }

      else if ((v17 & 0xC000000) != 0)
      {
        v86 = a1 + 1;
        v87 = a1[1] - 130;
        if (v87 > 3 || v87 == 2)
        {
          return 0;
        }

        v89 = v14;
        do
        {
          v86 += __rev16(*(v86 + 1));
        }

        while (*v86 == 120);
        result = compare_opcodes(v86 + 3, a2, a3, a4, a5, a6);
        if (!result)
        {
          return result;
        }

        a1 += _pcre2_OP_lengths_8[v16];
        v14 = v89;
      }

      else
      {
LABEL_14:
        if (!v16)
        {
          return a4[1] != 0;
        }

        v93 = v14;
        result = get_chr_property_list(a1, a2, *(a3 + 16), &v97);
        if (!result)
        {
          return result;
        }

        a1 = result;
        v19 = *a4;
        v94 = v15;
        if (*a4 == 29)
        {
          v20 = &v97;
          v21 = v15;
          v22 = &v100;
          v15 = v96;
LABEL_27:
          v26 = *v15;
          if (v20 == &v97)
          {
            v27 = result;
          }

          else
          {
            v27 = a5;
          }

          v28 = v27 + 2;
          while (2)
          {
            result = 0;
            v29 = *v20;
            if (*v20 > 109)
            {
              switch(v29)
              {
                case 'n':
                  if (v26 > 0xFF)
                  {
                    goto LABEL_162;
                  }

                  break;
                case 'o':
                  if (v26 > 0xFF)
                  {
                    return 0;
                  }

                  break;
                case 'p':
                  v91 = v27;
                  v92 = v20;
                  v30 = v22;
                  v90 = v28;
                  v31 = _pcre2_xclass_8(v26, (v28 - *v21));
                  v28 = v90;
                  v27 = v91;
                  v20 = v92;
                  v22 = v30;
                  if (v31)
                  {
                    return 0;
                  }

                  goto LABEL_162;
                default:
                  return result;
              }

              if ((*(v27 - *v21 + (v26 >> 3)) >> (v26 & 7)))
              {
                return 0;
              }

LABEL_162:
              v53 = v15[1];
              ++v15;
              v26 = v53;
              if (v53 == -1)
              {
                goto LABEL_225;
              }

              continue;
            }

            break;
          }

          switch(v29)
          {
            case 6:
              if (v26 > 0xFF || (*(*(a3 + 32) + v26) & 4) == 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 7:
              if (v26 <= 0xFF && (*(*(a3 + 32) + v26) & 4) != 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 8:
              if (v26 > 0xFF || (*(*(a3 + 32) + v26) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 9:
              if (v26 <= 0xFF && (*(*(a3 + 32) + v26) & 1) != 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 10:
              if (v26 > 0xFF || (*(*(a3 + 32) + v26) & 0x10) == 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 11:
              if (v26 <= 0xFE && (*(*(a3 + 32) + v26) & 0x10) != 0)
              {
                return 0;
              }

              goto LABEL_162;
            case 15:
            case 16:
              result = 0;
              v32 = v29 == 15;
              v33 = *v21;
              v18 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v26 - (v18 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v26 / 128] << 7)]];
              if (*v21 <= 5)
              {
                v34 = *v22;
                if (v33 <= 2)
                {
                  if (v33 == 1)
                  {
                    v50 = v18[1];
                    if (v50 != 5 && v50 != 9)
                    {
                      v47 = v50 == 8;
                      goto LABEL_157;
                    }

LABEL_137:
                    v52 = 1;
                    goto LABEL_160;
                  }

                  if (v33 != 2)
                  {
                    return result;
                  }

                  v45 = v29 == 15;
                  v46 = _pcre2_ucp_gentype_8[v18[1]] == v34;
                }

                else
                {
                  switch(v33)
                  {
                    case 3:
                      v45 = v29 == 15;
                      v48 = v18[1];
                      break;
                    case 4:
                      v45 = v29 == 15;
                      v48 = *v18;
                      break;
                    case 5:
                      v35 = v29 == 15;
                      v36 = (_pcre2_ucp_gentype_8[v18[1]] & 0xFFFFFFFD) == 1;
                      goto LABEL_48;
                    default:
                      return result;
                  }

                  v46 = v34 == v48;
                }

                v49 = !v46;
                v32 = v45 ^ v49;
LABEL_161:
                if (!v32)
                {
                  return 0;
                }

                goto LABEL_162;
              }

              if ((v33 - 6) >= 2)
              {
                if (v33 == 8)
                {
                  if ((_pcre2_ucp_gentype_8[v18[1]] | 2) == 3)
                  {
                    goto LABEL_137;
                  }

                  v47 = v26 == 95;
LABEL_157:
                  v52 = v47;
LABEL_160:
                  v32 = v52 == v32;
                  goto LABEL_161;
                }

                if (v33 != 9)
                {
                  return result;
                }

                v18 = &_pcre2_ucd_caseless_sets_8 + 4 * v18[3];
                while (1)
                {
                  v44 = *v18;
                  if (*v18 > v26)
                  {
                    break;
                  }

                  v18 += 4;
                  if (v44 == v26)
                  {
                    goto LABEL_161;
                  }
                }

                v32 = v29 != 15;
                goto LABEL_161;
              }

              if (v26 < 0x2000)
              {
                if (v26 > 132)
                {
                  if (v26 > 5759)
                  {
                    if (v26 == 5760 || v26 == 6158)
                    {
                      goto LABEL_161;
                    }
                  }

                  else if (v26 == 133 || v26 == 160)
                  {
                    goto LABEL_161;
                  }
                }

                else if (v26 <= 0x20 && ((1 << v26) & 0x100003E00) != 0)
                {
                  goto LABEL_161;
                }
              }

              else if ((v26 - 0x2000) < 0xB || (v26 - 8232) <= 0x37 && ((1 << (v26 - 40)) & 0x80000000000083) != 0 || v26 == 12288)
              {
                goto LABEL_161;
              }

              v35 = v29 == 15;
              v36 = _pcre2_ucp_gentype_8[v18[1]] == 6;
LABEL_48:
              v37 = !v36;
              v32 = v35 ^ v37;
              goto LABEL_161;
            case 17:
            case 21:
            case 23:
            case 25:
              result = 0;
              if ((v26 - 10) >= 4 && (v26 - 8232) >= 2 && v26 != 133)
              {
                goto LABEL_162;
              }

              return result;
            case 18:
              result = 0;
              if (v26 < 0x2000)
              {
                if (v26 <= 159)
                {
                  if (v26 != 9 && v26 != 32)
                  {
                    return result;
                  }
                }

                else if (v26 != 160 && v26 != 5760 && v26 != 6158)
                {
                  return result;
                }
              }

              else if (v26 > 8238)
              {
                if (v26 != 8239 && v26 != 8287 && v26 != 12288)
                {
                  return result;
                }
              }

              else if ((v26 - 0x2000) >= 0xB)
              {
                return result;
              }

              goto LABEL_162;
            case 19:
              result = 0;
              if (v26 < 0x2000)
              {
                if (v26 <= 159)
                {
                  if (v26 == 9 || v26 == 32)
                  {
                    return result;
                  }
                }

                else if (v26 == 160 || v26 == 5760 || v26 == 6158)
                {
                  return result;
                }
              }

              else if (v26 > 8238)
              {
                if (v26 == 8239 || v26 == 8287 || v26 == 12288)
                {
                  return result;
                }
              }

              else if ((v26 - 0x2000) < 0xB)
              {
                return result;
              }

              goto LABEL_162;
            case 20:
              if ((v26 - 10) >= 4 && (v26 - 8232) >= 2 && v26 != 133)
              {
                return 0;
              }

              goto LABEL_162;
            case 24:
              goto LABEL_162;
            case 29:
              v38 = *v21;
              v39 = v21 + 1;
              while (v26 != v38)
              {
                v40 = *v39++;
                v38 = v40;
                if (v40 == -1)
                {
                  goto LABEL_162;
                }
              }

              return 0;
            case 31:
              v41 = *v21;
              v42 = v21 + 1;
              while (v26 != v41)
              {
                v43 = *v42++;
                v41 = v43;
                if (v43 == -1)
                {
                  return 0;
                }
              }

              if (v26 == -1)
              {
                return 0;
              }

              goto LABEL_162;
            default:
              return result;
          }
        }

        v22 = v95;
        v21 = v96;
        v20 = a4;
        if (v97 == 29)
        {
          goto LABEL_27;
        }

        if (v19 == 110 || v97 == 110 || !a2 && (v19 == 111 || v97 == 111))
        {
          result = 0;
          if (a2)
          {
            v59 = 0;
          }

          else
          {
            v59 = v19 == 111;
          }

          v60 = v59 || v19 == 110;
          v61 = &v97;
          if (v60)
          {
            v62 = a4;
          }

          else
          {
            v62 = &v97;
          }

          if (v60)
          {
            v63 = a5;
          }

          else
          {
            v63 = a1;
          }

          if (v60)
          {
            v19 = v97;
            v64 = v15;
          }

          else
          {
            v64 = v96;
          }

          if (!v60)
          {
            v61 = a4;
          }

          v65 = &v63[-v62[2]];
          if (v19 > 10)
          {
            if ((v19 - 110) < 2)
            {
              if (v61 == &v97)
              {
                v71 = a1;
              }

              else
              {
                v71 = a5;
              }

              v70 = &v71[-*v64];
              goto LABEL_251;
            }

            if (v19 == 11)
            {
              goto LABEL_230;
            }

            if (v19 != 112)
            {
              return result;
            }

            if (v61 == &v97)
            {
              v66 = a1;
            }

            else
            {
              v66 = a5;
            }

            v67 = &v66[-*v64];
            v68 = v67[2];
            if ((v68 & 4) != 0)
            {
              return 0;
            }

            if ((v67[2] & 2) != 0)
            {
              v70 = (v67 + 3);
              goto LABEL_251;
            }

            v14 = v93;
            if (!v98)
            {
              return (v68 & 1) == 0;
            }
          }

          else
          {
            if (v19 <= 7)
            {
              if (v19 == 6)
              {
                LODWORD(result) = 1;
              }

              else if (v19 != 7)
              {
                return result;
              }

              v70 = *(a3 + 24) + 64;
            }

            else
            {
              if (v19 == 8)
              {
                LODWORD(result) = 1;
              }

              else if (v19 != 9)
              {
                LODWORD(result) = 1;
LABEL_230:
                v70 = *(a3 + 24) + 160;
                goto LABEL_239;
              }

              v70 = *(a3 + 24);
            }

LABEL_239:
            if (result)
            {
              v72 = 0;
              v14 = v93;
              while ((v65[v72] & ~*(v70 + v72)) == 0)
              {
                if (++v72 == 32)
                {
                  goto LABEL_254;
                }
              }

              return 0;
            }

LABEL_251:
            v14 = v93;
            for (i = 0; i != 32; ++i)
            {
              if ((*(v70 + i) & v65[i]) != 0)
              {
                return 0;
              }
            }

LABEL_254:
            if (!v98)
            {
              return 1;
            }
          }
        }

        else
        {
          if ((v19 - 15) > 1)
          {
            result = 0;
            v69 = v19 - 6;
            if (v69 > 0x10 || (v97 - 6) > 0x14)
            {
              return result;
            }

            if (!autoposstab[21 * v69 + v97 - 6])
            {
              return 0;
            }
          }

          else
          {
            if (v97 == 24)
            {
              goto LABEL_225;
            }

            if ((v97 - 15) > 1)
            {
              return 0;
            }

            result = 0;
            v54 = propposstab[11 * *v96 + v99];
            if (v54 > 8)
            {
              if (v54 > 0x11)
              {
                return result;
              }

              v55 = 1 << v54;
              if (((1 << v54) & 0xE00) != 0)
              {
                if (v19 != 16)
                {
                  return 0;
                }

                v79 = &posspropstab + 4 * v54 - 36;
                v80 = *v95;
                if (*v95 == *v79 || v80 == v79[1])
                {
                  goto LABEL_277;
                }

                v58 = v80 == v79[2];
LABEL_292:
                v81 = !v58 || v97 != 16;
              }

              else
              {
                if ((v55 & 0x7000) != 0)
                {
                  if (v97 != 16)
                  {
                    return 0;
                  }

                  v76 = &posspropstab + 4 * v54 - 48;
                  if (!catposstab[30 * *v76 + v100] || !catposstab[30 * v76[1] + v100])
                  {
                    goto LABEL_271;
                  }

                  v75 = v100 == v76[3];
LABEL_265:
                  v78 = !v75 || v19 != 16;
                  goto LABEL_272;
                }

                if ((v55 & 0x38000) == 0)
                {
                  return result;
                }

                if (v19 != 16)
                {
                  return 0;
                }

                v56 = &posspropstab + 4 * v54 - 60;
                v57 = *v95;
                if (catposstab[30 * *v56 + v57] && catposstab[30 * v56[1] + v57])
                {
                  v58 = v57 == v56[3];
                  goto LABEL_292;
                }

LABEL_277:
                v81 = 0;
              }

              if (v81 != (v97 == 16))
              {
                return 0;
              }

              goto LABEL_225;
            }

            if (propposstab[11 * *v96 + v99] > 3u)
            {
              if (v54 - 6 < 3)
              {
                if (v97 != 16)
                {
                  return 0;
                }

                v74 = &posspropstab + 4 * v54 - 24;
                if (v100 != *v74 && v100 != v74[1])
                {
                  v75 = v100 == v74[2];
                  goto LABEL_265;
                }

LABEL_271:
                v78 = 0;
LABEL_272:
                if (v78 != (v19 == 16))
                {
                  return 0;
                }

                goto LABEL_225;
              }

              if (v54 == 4)
              {
                if (v97 != 16)
                {
                  return 0;
                }

                v82 = v19 == 16;
                v83 = *v95;
                v84 = v100;
              }

              else
              {
                if (v54 != 5)
                {
                  return result;
                }

                if (v19 != 16)
                {
                  return 0;
                }

                v82 = v97 == 16;
                v83 = v100;
                v84 = *v95;
              }

              if (catposstab[30 * v83 + v84] != v82)
              {
                return 0;
              }
            }

            else
            {
              switch(v54)
              {
                case 1u:
                  result = 0;
                  if (v19 != 16 || v97 != 16)
                  {
                    return result;
                  }

                  break;
                case 2u:
                  if ((v19 == v97) == (*v95 == v100))
                  {
                    return 0;
                  }

                  break;
                case 3u:
                  if (v19 == v97)
                  {
                    return 0;
                  }

                  break;
                default:
                  return result;
              }
            }
          }

LABEL_225:
          v15 = v94;
          v14 = v93;
          if (!v98)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}