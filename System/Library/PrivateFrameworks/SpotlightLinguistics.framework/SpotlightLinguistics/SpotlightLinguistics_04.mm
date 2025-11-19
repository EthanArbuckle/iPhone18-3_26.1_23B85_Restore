uint64_t hybridSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 24);
  v7 = *(a2 + 4);
  if (v7 == 2)
  {
    if (*(v6 + 3416) < CFAbsoluteTimeGetCurrent() - *a3)
    {
      do
      {
        *(v6 + 3400) = 1;
        v6 = *(v6 + 8608);
      }

      while (v6);
    }

    return 0;
  }

  v12 = *a2;
  if (v7 != 1 || v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    if ((*(v6 + 3424) & 0x40) == 0)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v15 = *(a2 + 16);
    if (path_bundle_index_predicate != -1)
    {
      hybridSearch_cold_1();
    }

    v14 = fcntl(path_bundle_index_sDummyFD, 52, v15) >= 0;
    v12 = *a2;
  }

  if (v12 < 1)
  {
LABEL_18:
    v16 = 1;
    goto LABEL_26;
  }

LABEL_17:
  if ((*(v6 + 3424) & 0x20) == 0)
  {
    goto LABEL_18;
  }

  if ((*(a5 + *(v6 + 1104) + 8) & 0x40) != 0)
  {
    goto LABEL_22;
  }

  v17 = *(a2 + 32);
  if (!v17)
  {
LABEL_24:
    v16 = 1;
    goto LABEL_25;
  }

  if (*v17 != 46)
  {
    LODWORD(v17) = 0;
    goto LABEL_24;
  }

LABEL_22:
  v16 = 0;
  LODWORD(v17) = *(a2 + 4) == 1;
LABEL_25:
  v14 |= v17;
LABEL_26:
  v18 = *(a2 + 4);
  v19 = *(v6 + 3424);
  if (v18 == 1)
  {
    if ((v19 & 4) == 0)
    {
      return (2 * v14);
    }
  }

  else if (!v18 && (v19 & 8) == 0)
  {
    return (2 * v14);
  }

  if (!fsi_compare_attr(v19, (v6 + 4176), a5, *(v6 + 3472), *(v6 + 3480)) || (v16 & 1) == 0)
  {
    return (2 * v14);
  }

  if ((*(v6 + 1028) & 0x80) == 0)
  {
    fsi_copy_attr(v6 + 6392, a5, *(v6 + 3440));
    a5 = *(v6 + 3440);
  }

  v20 = (*(a3 + 8))(v6, a2, *(a3 + 16), a4, a5);
  if (v14)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20;
  }

  if (v20 == 1)
  {
    return 1;
  }

  else
  {
    return v21;
  }
}

uint64_t fsi_walk_once_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t (*a6)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))
{
  walk = fsi_create_walk();
  if (!walk)
  {
    return 4294967294;
  }

  v9 = walk;
  v10 = fsi_iterate_f(walk, a5, a6);
  fsi_close(v9);
  return v10;
}

uint64_t fsi_search_once(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, __int128 *a9)
{
  search = fsi_create_search(0.0, a1, a2, a3, a4, a5, a6, a7, a8);
  if (!search)
  {
    return 4294967294;
  }

  v10 = search;
  do
  {
    v11 = fsi_iterate_f(v10, a9, callBlock);
  }

  while (v11 && *__error() == 35);
  fsi_close(v10);
  return v11;
}

uint64_t fsi_search_once_f(uint64_t a1, __int128 *a2, unint64_t a3, int a4, void *a5, unsigned int *a6, unsigned int *a7, char a8, uint64_t a9, uint64_t a10)
{
  *&v11 = MEMORY[0x277D85DD0];
  *(&v11 + 1) = 0x40000000;
  v12 = __fsi_search_once_f_block_invoke;
  v13 = &__block_descriptor_tmp_11;
  v14 = a10;
  v15 = a9;
  return fsi_search_once(a1, a2, a3, a4, a5, a6, a7, a8, &v11);
}

BOOL fsi_compare_attr(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2 >= 1)
  {
    v7 = 0;
    v8 = (a5 + 4);
    v9 = (a4 + 4);
    v10 = a2 + 394;
    v11 = a2 + 74;
    v12 = a2 + 34;
    v37 = a2 + 74;
    v13 = a2 + 54;
    while (1)
    {
      v14 = *&v10[2 * v7];
      v15 = *&v11[2 * v7];
      if (!v15)
      {
        goto LABEL_33;
      }

      if (!*(v12 + v7))
      {
        v18 = 1;
        goto LABEL_35;
      }

      v16 = (a3 + v15);
      v17 = *(v13 + v7);
      v18 = 1;
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v32 = *v16;
          v33 = *v9;
          v34 = a1;
          if ((a1 & 2) != 0)
          {
            v18 = strcasestr(&v16[v32], &v9[v33]) != 0;
            v5 = *a2;
          }

          else
          {
            v18 = strcasecmp(&v16[v32], &v9[v33]) == 0;
          }

          a1 = v34;
          v11 = v37;
        }

        else if (v17 == 4 && v14 >= 4)
        {
          if ((*v8 & *v16) == *v9)
          {
            v23 = v14 >> 2;
            v24 = 1;
            do
            {
              v25 = v24;
              if (v23 == v24)
              {
                break;
              }

              v26 = v8[v24] & *&v16[4 * v24];
              v27 = *&v9[4 * v24++];
            }

            while (v26 == v27);
            v18 = v25 >= v23;
          }

          else
          {
LABEL_40:
            v18 = 0;
          }
        }

        goto LABEL_34;
      }

      if (v17 != 1)
      {
        break;
      }

      if (v14 >= 4)
      {
        v28 = v14 >> 2;
        v29 = v8;
        v30 = v9;
        while (1)
        {
          v31 = *v16;
          if (*v16 > *v30 && v31 < *v29)
          {
            break;
          }

          if (v31 < *v30 || v31 > *v29)
          {
            goto LABEL_40;
          }

          v16 += 4;
          v30 += 4;
          ++v29;
          v18 = 1;
          if (!--v28)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        v18 = 1;
      }

LABEL_34:
      v9 += v14;
      v8 = (v8 + v14);
LABEL_35:
      if (++v7 >= v5 || !v18)
      {
        goto LABEL_44;
      }
    }

    if (v17 != 2 || v14 < 8)
    {
      goto LABEL_34;
    }

    v19 = v14 >> 3;
    v20 = v8;
    v21 = v9;
    while (1)
    {
      v22 = *v16;
      if (*v16 > *v21 && v22 < *v20)
      {
        goto LABEL_33;
      }

      if (v22 < *v21 || v22 > *v20)
      {
        goto LABEL_40;
      }

      v16 += 8;
      v21 += 8;
      ++v20;
      v18 = 1;
      if (!--v19)
      {
        goto LABEL_34;
      }
    }
  }

  v18 = 1;
LABEL_44:
  if (a1 >= 0)
  {
    return v18;
  }

  else
  {
    return !v18;
  }
}

char *fsi_copy_attr(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = &a3[*(a1 + 40)];
  v17 = a3 + 4;
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = accessMaskToVType(*(a2 + v8));
    }

    else
    {
      v7 = -1;
    }
  }

  if (*(a1 + 4) < 1)
  {
    goto LABEL_16;
  }

  v9 = 0;
  do
  {
    storeField(*(a1 + 8 * v9 + 1576), *(a1 + v9 + 56), *(a1 + 8 * v9 + 296), a2, &v17, &v16);
    ++v9;
    v10 = *(a1 + 4);
  }

  while (v9 < v10);
  if (v7 == 2 && v10 >= 1)
  {
    if (*(a1 + 8) >= 1)
    {
      v11 = a1 + 8 * v10;
      v12 = (a1 + v10 + 56);
      do
      {
        v13 = *v12++;
        storeField(*(v11 + 1576), v13, *(v11 + 296), a2, &v17, &v16);
        v11 += 8;
        LODWORD(v10) = v10 + 1;
      }

      while (*(a1 + 8) + *(a1 + 4) > v10);
    }
  }

  else
  {
LABEL_16:
    if (v7 == 1 && *(a1 + 16) >= 1)
    {
      v14 = *(a1 + 12);
      do
      {
        storeField(*(a1 + 8 * v14 + 1576), *(a1 + v14 + 56), *(a1 + 8 * v14 + 296), a2, &v17, &v16);
        ++v14;
      }

      while (v14 < *(a1 + 16) + *(a1 + 12));
    }
  }

  result = (v16 - a3);
  *a3 = v16 - a3;
  return result;
}

uint64_t accessMaskToVType(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_26B7FF598[v1 >> 12];
  }
}

void storeField(size_t __n, int a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  if (a3)
  {
    if (a2)
    {
      v9 = a4 + a3;
      v10 = *a6 - *a5;
      v11 = *(a4 + a3 + 4);
      memcpy(*a6, (a4 + a3 + *(a4 + a3)), v11);
      v12 = *a5;
      *v12 = v10;
      v12[1] = v11;
      *a6 = *a6 + ((*(v9 + 4) + 3) & 0xFFFFFFFC);
    }

    else
    {
      memcpy(*a5, (a4 + a3), __n);
    }
  }

  else
  {
    bzero(*a5, __n);
  }

  *a5 = *a5 + __n;
}

uint64_t fsi_attr_mapping_descriptor(_DWORD *a1, _DWORD *a2, char *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  bzero(a3, 0x8A8uLL);
  v6 = (a3 + 56);
  v7 = a3 + 136;
  v8 = a3 + 216;
  v9 = (a3 + 296);
  v10 = a3 + 936;
  v11 = a3 + 1576;
  v28[1] = 0;
  v28[2] = 0;
  v28[0] = 0x800000005;
  *(a3 + 3) = fsi_attr_offset(v5, v28);
  v27[1] = 0;
  v27[2] = 0;
  v27[0] = 0x2000000000005;
  v12 = fsi_attr_offset(v5, v27);
  result = 0;
  v14 = 0;
  v15 = 4;
  *(a3 + 4) = v12;
  v16 = attrTable_table;
  *(a3 + 40) = vdupq_n_s64(4uLL);
  v17 = &attrTable_commonattr;
  v18 = 4;
  do
  {
    v19 = v17 != &attrTable_dirattr;
    if (v17 == &attrTable_dirattr)
    {
      v20 = a3 + 4;
      v14 = v18;
    }

    else
    {
      if (v17 != &attrTable_fileattr)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v20 = a3 + 12;
      v18 = v14;
    }

    *v20 = result;
LABEL_11:
    ++v4;
    ++v5;
    v21 = *(v17 + 2);
    if (v21)
    {
      v22 = v17 + 3;
      do
      {
        v23 = *v5 & v21;
        if ((*v4 & v21) != 0)
        {
          v24 = *(v22 - 1) != *v22;
          if (v23)
          {
            v25 = v18;
          }

          else
          {
            v25 = 0;
          }

          *v9++ = v25;
          *v10++ = *(a3 + 5);
          *v11++ = *(v22 - 1);
          *v6++ = v24;
          *v7++ = *(v22 + 3);
          *v8++ = *(v22 + 2);
          *(a3 + 5) += *(v22 - 1);
          if (v17 == &attrTable_dirattr)
          {
            ++*(a3 + 2);
          }

          result = (result + 1);
          if (v19)
          {
            ++*(a3 + 4);
          }
        }

        if (v23)
        {
          v18 += *(v22 - 1);
        }

        v21 = *(v22 + 6);
        v22 += 5;
      }

      while (v21);
      v15 = *(a3 + 6);
    }

    if (v18 > v15)
    {
      v15 = v18;
    }

    *(a3 + 6) = v15;
    v26 = v16[1];
    ++v16;
    v17 = v26;
  }

  while (v26);
  *a3 = result;
  return result;
}

uint64_t fsi_attr_offset(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a2;
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 6;
      do
      {
        if ((*a1 & v7) != 0)
        {
          if (v7 == *a2)
          {
            return v5;
          }

          v5 += *(v8 - 4);
        }

        v9 = *v8;
        v8 += 10;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v3[1];
    ++v3;
    v4 = v10;
    v2 = v6;
  }

  while (v10);
  return 0;
}

char *fsi_attr_reference_data(char *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (a2 + 8 > v3)
  {
    return 0;
  }

  v5 = *&a1[a2 + 4];
  result = &a1[a2 + *&a1[a2]];
  if (&result[v5] > &a1[v3])
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

unint64_t fsi_attr_size(_DWORD *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = attrTable_table;
  v4 = &attrTable_commonattr;
  v5 = 4;
  do
  {
    ++a1;
    if (v4 == &attrTable_dirattr)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    if (v4 == &attrTable_fileattr)
    {
      v1 = v5;
      v5 = v2;
    }

    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 3;
      do
      {
        if ((*a1 & v7) != 0)
        {
          v5 += *v8;
        }

        v7 = *(v8 + 6);
        v8 += 5;
      }

      while (v7);
    }

    v9 = v3[1];
    ++v3;
    v4 = v9;
    v2 = v6;
  }

  while (v9);
  if (v5 <= v1)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

_WORD *fsi_attrlist_union(_WORD *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = (a2 + 4);
    v4 = result + 2;
    do
    {
      v5 = *v3++;
      *v4++ |= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t fsi_attr_set_scalar(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (*(result + a3 + 56))
  {
    fsi_attr_set_scalar_cold_1();
  }

  if (!*(result + a3 + 216))
  {
    fsi_attr_set_scalar_cold_3();
  }

  v4 = result + 8 * a3;
  v5 = *(v4 + 296);
  v6 = *(v4 + 1576);
  if (v6 == 8)
  {
    *(a2 + v5) = a4;
  }

  else
  {
    if (v6 != 4)
    {
      fsi_attr_set_scalar_cold_2();
    }

    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v7 = a4;
    }

    *(a2 + v5) = v7;
  }

  return result;
}

void *fsi_attr_set_fixed_data(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  if (*(a1 + a3 + 56))
  {
    fsi_attr_set_fixed_data_cold_1();
  }

  if (!*(a1 + a3 + 216))
  {
    fsi_attr_set_fixed_data_cold_2();
  }

  v4 = a1 + 8 * a3;
  v5 = *(v4 + 1576);
  v6 = (a2 + *(v4 + 296));

  return memcpy(v6, __src, v5);
}

void *fsi_attr_set_variable_data(uint64_t a1, uint64_t a2, int a3, void *__src, size_t __n, void **a6)
{
  if (!*(a1 + a3 + 56))
  {
    fsi_attr_set_variable_data_cold_2();
  }

  v7 = a3;
  if (!*(a1 + a3 + 216))
  {
    fsi_attr_set_variable_data_cold_1();
  }

  v11 = *a6;
  if (!*a6)
  {
    v11 = (a2 + *(a1 + 48));
    *a6 = v11;
  }

  result = memcpy(v11, __src, __n);
  v13 = (a2 + *(a1 + 8 * v7 + 296));
  v14 = *a6;
  *v13 = *a6 - v13;
  v13[1] = __n;
  *a6 = &v14[(__n + 3) & 0xFFFFFFFFFFFFFFFCLL];
  return result;
}

void *fsi_attr_set_string(uint64_t a1, uint64_t a2, int a3, char *__s, void **a5)
{
  v10 = strlen(__s) + 1;

  return fsi_attr_set_variable_data(a1, a2, a3, __s, v10, a5);
}

_DWORD *fsi_attr_build(_DWORD *result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = result;
  v22 = 0;
  v23 = &a9;
  if (*a2 <= 0)
  {
LABEL_22:
    v20 = v10 + *(a2 + 6);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    v12 = *(a2 + v11 + 216);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v14 = v23++;
        v15 = *v14;
        v16 = strlen(*v14);
        result = fsi_attr_set_variable_data(a2, v10, v11, v15, v16 + 1, &v22);
        goto LABEL_17;
      }

      if (v12 == 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 == 1)
      {
        if (*&a2[2 * v11 + 394] == 4)
        {
          v17 = v23++;
          LODWORD(v21) = *v17;
          goto LABEL_14;
        }

LABEL_15:
        v19 = v23++;
        v18 = *v19;
        goto LABEL_16;
      }

      if (v12 == 2)
      {
        if (*&a2[2 * v11 + 394] == 8)
        {
          v13 = v23++;
          v21 = *v13;
LABEL_14:
          v18 = &v21;
LABEL_16:
          result = fsi_attr_set_fixed_data(a2, v10, v11, v18);
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (!*(a2 + v11 + 216))
      {
        fsi_attr_build_cold_1();
      }
    }

LABEL_17:
    ++v11;
  }

  while (v11 < *a2);
  LODWORD(v20) = v22;
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_23:
  *v10 = v20 - v10;
  return result;
}

uint64_t fsi_attr_finalize(uint64_t result, _DWORD *a2, char **a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &fsi_attr_finalize_localContext;
  }

  v4 = *v3;
  if (!*v3)
  {
    v4 = a2 + *(result + 48);
    *v3 = v4;
  }

  *a2 = v4 - a2;
  return result;
}

uint64_t fsi_attr_stat(uint64_t result, uint64_t a2, _OWORD *a3)
{
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v5 = (result + 296);
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v8 = *(result + 32);
    if (v8)
    {
      result = accessMaskToVType(*(a2 + v8));
      v7 = result;
    }

    else
    {
      v7 = -1;
    }
  }

  v9 = 0;
  v10 = &unk_26B7FF468;
  do
  {
    v11 = *v5;
    v12 = v5[160];
    if (*v5)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = *(v10 - 1);
      if (v12 == *v10)
      {
        result = memcpy(a3 + v14, (a2 + v11), v12);
      }

      else
      {
        if (((0x504000uLL >> v9) & 1) == 0)
        {
          fsi_attr_stat_cold_1();
        }

        v15 = *(a2 + v11);
        if (v9 == 20)
        {
          *(a3 + v14) = v15 + 2;
          goto LABEL_19;
        }

        *(a3 + v14) = v15;
      }
    }

    if (v9 == 18 && v7 == -1)
    {
      return result;
    }

LABEL_19:
    if (v7 == 2 && v9 == 20)
    {
      break;
    }

    v10 += 2;
    ++v5;
    v13 = v9 == 28;
    v9 += 2;
  }

  while (!v13);
  return result;
}

uint64_t pushStackEntry(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 9696) < 512)
  {
    bzero(v9, 0x440uLL);
    v5 = SStackPushData(*(a1 + 9680), 0x440uLL, v9);
    *(v5 + 6) = a2;
    strcpy(v5 + 64, (a1 + 8616));
    *(v5 + 1) = v5;
    v6 = *(a1 + 9696);
    *(*(a1 + 9688) + 8 * v6) = v5;
    *(a1 + 9696) = v6 + 1;
    if (*(a1 + 1080))
    {
      v7 = *(a1 + 3352);
      *(a1 + 9736) = v7;
      *(v5 + 7) = v7;
    }

    result = 0;
  }

  else
  {
    *__error() = 22;
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *addIntoChildList(uint64_t a1, unsigned int *a2, size_t a3, const void *a4, int a5)
{
  v9 = *(a1 + 9696);
  if (v9)
  {
    v10 = *(*(a1 + 9688) + 8 * v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  result = SStackPushData(*(a1 + 9680), *a2, a2);
  v12 = result;
  if (*(a1 + 9712) && !*(a1 + 1080))
  {
    result = SStackPushData(*(a1 + 9680), a3, a4);
  }

  v10[1] = result;
  if (a5)
  {
    v13 = v10[3];
    v14 = *(a1 + 9656);
    if (v13 >= v14)
    {
      v15 = 2 * v14;
      if (!v14)
      {
        v15 = 8;
      }

      *(a1 + 9656) = v15;
      result = malloc_type_realloc(*(a1 + 9648), 8 * v15, 0x80040B8603338uLL);
      *(a1 + 9648) = result;
      v13 = v10[3];
    }

    else
    {
      result = *(a1 + 9648);
    }

    result[v13] = v12;
    v10[3] = v13 + 1;
  }

  else if (!*v10)
  {
    *v10 = v12;
  }

  return result;
}

uint64_t __path_bundle_index_block_invoke()
{
  result = open("/System/Library", 4);
  path_bundle_index_sDummyFD = result;
  return result;
}

uint64_t updateStackEntry(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 1080);
  if (v6)
  {
    v7 = *a3;
    if (v6 + 8 > v7 || (v8 = &a3[v6], v9 = *(v8 + 1), v10 = &v8[*v8], &v10[v9] > &a3[v7]))
    {
      a2 = 2;
      v11 = -1;
LABEL_5:
      *(a1 + 3376) = a1 + *(a1 + 3352) - v11 + 8616;
      *(a1 + 3368) = v11;
      goto LABEL_6;
    }

    v11 = v9 - 1;
    v13 = *(a1 + 9736);
    if (v13 == 1)
    {
      if (*(a1 + 8616) == 47)
      {
        strlcpy((a1 + 8617), v10, 0x3FFuLL);
        goto LABEL_12;
      }
    }

    else if (!v13)
    {
      __strlcpy_chk();
LABEL_12:
      --v9;
LABEL_15:
      *(a1 + 3352) = *(a1 + 9736) + v9;
      goto LABEL_5;
    }

    if ((v13 + v9) > 0x3FF)
    {
      a2 = 63;
      goto LABEL_5;
    }

    *(a1 + 8616 + v13) = 47;
    strlcpy((a1 + 8616 + *(a1 + 9736) + 1), v10, 1023 - *(a1 + 9736));
    goto LABEL_15;
  }

LABEL_6:
  *(a1 + 3384) = a2;
  *(a1 + 3392) = a3;
  *(a1 + 3344) = *(a1 + 9696) - 1;
  return a2;
}

_DWORD *finishChildList(_DWORD *result)
{
  if (*(result + 1208))
  {
    v1 = result;
    result = *(result + 1209);
    if (!result || (result = (*(result + 2))(result, v1), result))
    {
      v2 = v1[2424];
      if (v2)
      {
        v3 = *(*(v1 + 1211) + 8 * v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = v3[5];
      v5 = v3[3];
      if (v4)
      {
        if (v4 < v5)
        {
          if (!*v3)
          {
            finishChildList_cold_2();
          }

          if (*v3 != *(v3[4] + 8 * v4 - 8))
          {
            finishChildList_cold_1();
          }
        }
      }

      else if (v5)
      {
        v6 = *(v1 + 1206);
        __compar[0] = MEMORY[0x277D85DD0];
        __compar[1] = 0x40000000;
        __compar[2] = __finishChildList_block_invoke;
        __compar[3] = &__block_descriptor_tmp_28_0;
        __compar[4] = v1;
        qsort_b(v6, v5, 8uLL, __compar);
        result = SStackPushData(*(v1 + 1210), 8 * v3[3], *(v1 + 1206));
        v3[4] = result;
        if (*v3)
        {
          finishChildList_cold_3();
        }

        if (v3[5])
        {
          finishChildList_cold_4();
        }

        v3[5] = 1;
        *v3 = *result;
      }

      else if (*v3)
      {
        finishChildList_cold_5();
      }

      v3[1] = v3[4];
    }
  }

  return result;
}

uint64_t cleanupAfterNoPush(uint64_t result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    if (!*(result + 9708))
    {
      v3 = a2;
      v4 = *(result + 9696);
      if (v4)
      {
        v5 = *(*(result + 9688) + 8 * v4 - 8);
        if (v5)
        {
          MEMORY[0x26D6817B0](*(v5 + 48));
        }
      }

      if ((v3 & 0x80000000) == 0)
      {
        atomic_fetch_add_explicit(&gFDCount, 0xFFFFFFFF, memory_order_relaxed);
        if (v3 <= 0x7FF)
        {
          v6 = *(v2 + 9752);
          *(v2 + 9752) = v6 - 1;
          v7 = *(v2 + 9756 + 4 * (v3 & 0x7FF));
          if (v7 < 0 || v6 <= 0)
          {
            cleanupAfterNoPush_cold_1();
          }

          if (v7)
          {
            *(v2 + 9756 + 4 * (v3 & 0x7FF)) = -v7;
          }
        }
      }

      return close(v3);
    }
  }

  return result;
}

uint64_t __finishChildList_block_invoke(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(*(a1 + 32) + 9664) + 16))();
}

BOOL CFStringsAreEqual(const __CFString *a1, const __CFString *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      Length = CFStringGetLength(a1);
      if (Length == CFStringGetLength(a2))
      {
        if (CFStringHasPrefix(a1, a2))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

const __CFLocale *CFLocaleCopyNormalizedLocaleIdentifier(const __CFLocale *result, int a2)
{
  if (result)
  {
    v3 = result;
    Value = CFLocaleGetValue(result, *MEMORY[0x277CBEED0]);
    v5 = CFLocaleGetValue(v3, *MEMORY[0x277CBEED8]);
    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = CFLocaleGetValue(v3, *MEMORY[0x277CBEE98]);
    }

    return copyNormalizedLocaleIdentifier(Value, v5, v6);
  }

  return result;
}

CFStringRef copyNormalizedLocaleIdentifier(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v4 == 1 && a3 != 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%@-%@", a1, a2, a3);
  }

  if (v4)
  {
    v6 = *MEMORY[0x277CBECE8];
    v8 = a2;
    return CFStringCreateWithFormat(v6, 0, @"%@-%@", a1, v8);
  }

  if (a1 && a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    v8 = a3;
    return CFStringCreateWithFormat(v6, 0, @"%@-%@", a1, v8);
  }

  return CFRetain(a1);
}

const __CFLocale *CFLocaleCopyNormalizedLocaleIdentifierForRegion(const __CFLocale *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Value = CFLocaleGetValue(result, *MEMORY[0x277CBEED0]);
    v5 = CFLocaleGetValue(v3, *MEMORY[0x277CBEED8]);

    return copyNormalizedLocaleIdentifier(Value, v5, a2);
  }

  return result;
}

CFErrorRef *_createDictionaryWithContentsOfURL(CFURLRef fileURL, int a2, CFErrorRef *a3)
{
  if (!fileURL)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], fileURL);
  if (v7)
  {
    v8 = v7;
    if (CFReadStreamOpen(v7))
    {
      if (a2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      a3 = CFPropertyListCreateWithStream(v6, v8, 0, v9, 0, a3);
      CFReadStreamClose(v8);
      goto LABEL_13;
    }

LABEL_12:
    a3 = 0;
LABEL_13:
    CFRelease(v8);
    return a3;
  }

  if (a3)
  {
    v10 = CFURLCopyPath(fileURL);
    if (v10)
    {
      v8 = v10;
      v11 = CFStringCreateWithFormat(v6, 0, @"%@: %@", @"File at URL is not readable", v10);
      if (v11)
      {
        v12 = v11;
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v12);
        CFRelease(Mutable);
        *a3 = CFErrorCreate(v6, @"com.apple.SpotlightLinguistics.ErrorDomain", 0, Mutable);
        CFRelease(v12);
      }

      goto LABEL_12;
    }

    return 0;
  }

  return a3;
}

BOOL writeContentsOfDictionaryToURL(const void *a1, const __CFURL *a2, CFPropertyListFormat a3, CFErrorRef *a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v8 = CFWriteStreamCreateWithFile(*MEMORY[0x277CBECE8], a2);
    if (v8)
    {
      v9 = v8;
      if (CFWriteStreamOpen(v8))
      {
        v4 = CFPropertyListWrite(a1, v9, a3, 0, a4) != 0;
        CFWriteStreamClose(v9);
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void SIResourcePool::~SIResourcePool(SIResourcePool *this)
{
  v2 = *(this + 11);
  std::mutex::lock(v2);
  v3 = *(this + 4);
  v4 = *(this + 5);
  while (v3 != v4)
  {
    if (*v3)
    {
      std::function<void ()(void *)>::operator()(this + 56, *v3);
    }

    v3 += 3;
  }

  std::mutex::unlock(v2);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 56);
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t SIResourcePool::acquireResourceLocked@<X0>(std::unique_lock<std::mutex> *__lk@<X1>, uint64_t a2@<X0>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    if (*(a2 + 112))
    {
      while (1)
      {
        if (*(a2 + 120))
        {
          v7 = *(a2 + 32);
          v8 = *(a2 + 40) - v7;
          if (v8)
          {
            break;
          }
        }

LABEL_9:
        std::condition_variable::wait(*(a2 + 96), __lk);
        if (!*(a2 + 112))
        {
          goto LABEL_58;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      while (1)
      {
        v12 = v7 + 24 * v9;
        if (*v12)
        {
          if (*(v12 + 8) != 1)
          {
            goto LABEL_52;
          }
        }

        v9 = ++v10;
        if (v11 <= v10)
        {
          goto LABEL_9;
        }
      }
    }

    goto LABEL_58;
  }

  if ((*(a2 + 104) & 1) == 0)
  {
    v13 = *(a2 + 96);
    v14 = *(a2 + 24);
    v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * v14;
    while (1)
    {
      if (!*(a2 + 112))
      {
        goto LABEL_49;
      }

      if (*(a2 + 120))
      {
        v16 = *(a2 + 32);
        v17 = *(a2 + 40) - v16;
        if (v17)
        {
          v18 = 0;
          v10 = 0;
          v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
          do
          {
            v20 = v16 + 24 * v18;
            if (*v20)
            {
              if (*(v20 + 8) != 1)
              {
                goto LABEL_50;
              }
            }

            v18 = ++v10;
          }

          while (v19 > v10);
        }
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v15.__d_.__rep_)
      {
        goto LABEL_35;
      }

      v21.__d_.__rep_ = v15.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v21.__d_.__rep_ < 1)
      {
        goto LABEL_34;
      }

      std::chrono::steady_clock::now();
      v22.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v22.__d_.__rep_)
      {
        v23 = 0;
LABEL_32:
        v24.__d_.__rep_ = v23 + v21.__d_.__rep_;
        goto LABEL_33;
      }

      if (v22.__d_.__rep_ < 1)
      {
        if (v22.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v23 = 0x8000000000000000;
          goto LABEL_32;
        }
      }

      else if (v22.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_30;
      }

      v23 = 1000 * v22.__d_.__rep_;
LABEL_30:
      if (v23 <= (v21.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_32;
      }

      v24.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_33:
      std::condition_variable::__do_timed_wait(v13, __lk, v24);
      std::chrono::steady_clock::now();
LABEL_34:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v15.__d_.__rep_)
      {
LABEL_35:
        if (!*(a2 + 112))
        {
LABEL_49:
          v10 = -1;
          goto LABEL_50;
        }

        if (!*(a2 + 120) || (v25 = *(a2 + 32), v26 = *(a2 + 40), v26 == v25))
        {
LABEL_47:
          v32 = *(a2 + 104);
          *(a2 + 104) = 1;
          if ((v32 & 1) == 0)
          {
            std::condition_variable::notify_all(*(a2 + 96));
          }

          goto LABEL_58;
        }

        v27 = 0;
        v10 = 0;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
        while (1)
        {
          v29 = v25 + 24 * v27;
          if (*v29)
          {
            if (*(v29 + 8) != 1)
            {
              break;
            }
          }

          v27 = ++v10;
          if (v28 <= v10)
          {
            if (v26 == v25)
            {
              goto LABEL_47;
            }

            v30 = 0;
            v10 = 0;
            while (1)
            {
              v31 = v25 + 24 * v30;
              if (*v31)
              {
                if (*(v31 + 8) != 1)
                {
                  goto LABEL_50;
                }
              }

              v30 = ++v10;
              if (v28 <= v10)
              {
                goto LABEL_47;
              }
            }
          }
        }

LABEL_50:
        v33 = *(a2 + 104);
        *(a2 + 104) = 0;
        if (v33)
        {
          std::condition_variable::notify_all(*(a2 + 96));
        }

LABEL_52:
        if (v10 != -1)
        {
          v34 = *(a2 + 120);
          *(*(a2 + 32) + 24 * v10 + 8) = 1;
          *(a2 + 120) = v34 - 1;
          if (logger(void)::token != -1)
          {
            SIResourcePool::acquireResourceLocked();
          }

          if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
          {
            SIResourcePool::acquireResourceLocked(a2, (a2 + 120));
          }

          operator new();
        }

LABEL_58:
        if (logger(void)::token != -1)
        {
          SIResourcePool::acquireResourceLocked();
        }

        v35 = logger(void)::log;
        if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
        {
          SIResourcePool::acquireResourceLocked(a2, v35, v36, v37, v38, v39, v40, v41);
        }

        break;
      }
    }
  }

  result = 0;
  *a4 = 0;
  return result;
}

void SIResourcePool::releaseResource(SIResourcePool *this, unsigned int a2)
{
  v4 = *(this + 11);
  std::mutex::lock(v4);
  v5 = *(this + 15);
  *(*(this + 4) + 24 * a2 + 8) = 0;
  *(this + 15) = v5 + 1;
  if (logger(void)::token != -1)
  {
    SIResourcePool::acquireResourceLocked();
  }

  if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    SIResourcePool::releaseResource(this, this + 15);
  }

  *(this + 104) = 0;
  std::mutex::unlock(v4);
  std::condition_variable::notify_all(*(this + 12));
}

int64x2_t SIResourcePool::addResourceLocked(int64x2_t *this, void *a2)
{
  for (i = this[2].i64[0]; i != this[2].i64[1]; i += 3)
  {
    if (*i)
    {
      v3 = 0;
    }

    else
    {
      v3 = i[2] == 0;
    }

    if (v3)
    {
      *i = a2;
      result = vaddq_s64(this[7], vdupq_n_s64(1uLL));
      this[7] = result;
      this[6].i8[8] = 0;
      return result;
    }
  }

  return result;
}

void SIResourcePool::addResourceForTicket(SIResourcePool *this, void *a2, uint64_t a3)
{
  v6 = *(this + 11);
  std::mutex::lock(v6);
  for (i = *(this + 4); i != *(this + 5); i += 24)
  {
    if (*(i + 16) == a3)
    {
      *i = a2;
      *(i + 8) = 0;
      *(i + 16) = 0;
      ++*(this + 15);
      break;
    }
  }

  *(this + 104) = 0;
  std::mutex::unlock(v6);
  v8 = *(this + 12);

  std::condition_variable::notify_all(v8);
}

void SIResourcePool::surrenderTicket(SIResourcePool *this, uint64_t a2)
{
  v4 = *(this + 11);
  std::mutex::lock(v4);
  for (i = *(this + 4); i != *(this + 5); i += 24)
  {
    if (*(i + 16) == a2)
    {
      *(i + 8) = 0;
      *(i + 16) = 0;
      --*(this + 14);
      break;
    }
  }

  std::mutex::unlock(v4);
  v6 = *(this + 12);

  std::condition_variable::notify_all(v6);
}

uint64_t SIResourcePool::reserveResourceLocked(SIResourcePool *this)
{
  for (i = *(this + 4); ; i += 24)
  {
    if (i == *(this + 5))
    {
      return 0;
    }

    if (!*i && !*(i + 16))
    {
      break;
    }
  }

  *(i + 8) = 1;
  v2 = *this + 1;
  *this = v2;
  *(i + 16) = v2;
  ++*(this + 14);
  return v2;
}

uint64_t SIResourcePool::compactLocked(int64x2_t *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = this[2].i64[0];
  v3 = this[2].i64[1];
  if (v2 == v3)
  {
    goto LABEL_12;
  }

  v4 = 0;
  do
  {
    if (*v2 && (*(v2 + 8) & 1) == 0)
    {
      std::function<void ()(void *)>::operator()(&this[3].i64[1], *v2);
      *v2 = 0;
      v5.i64[0] = -1;
      v5.i64[1] = -1;
      this[7] = vaddq_s64(this[7], v5);
      ++v4;
    }

    v2 += 24;
  }

  while (v2 != v3);
  if (!v4)
  {
LABEL_12:
    if (logger(void)::token != -1)
    {
      SIResourcePool::acquireResourceLocked();
    }

    v9 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = this->i32[2];
      v11 = this[7].i64[0];
      v14 = 67109632;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&dword_26B7AA000, v9, OS_LOG_TYPE_DEFAULT, "pool %d compaction failed, %lu active, %lu freed", &v14, 0x1Cu);
    }

    v4 = 0;
  }

  else
  {
    if (logger(void)::token != -1)
    {
      SIResourcePool::acquireResourceLocked();
    }

    v6 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = this->i32[2];
      v8 = this[7].i64[0];
      v14 = 67109632;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_26B7AA000, v6, OS_LOG_TYPE_DEFAULT, "pool %d compacted, %lu active, %lu freed", &v14, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

int64x2_t *SIResourcePool::shrinkLocked(int64x2_t *this)
{
  v1 = this[2].i64[0];
  v2 = this[2].i64[1];
  if (v1 != v2)
  {
    v3 = this;
    v4 = this[7].i64[0];
    do
    {
      if (v4 == 1)
      {
        break;
      }

      if (*v1)
      {
        if ((*(v1 + 8) & 1) == 0)
        {
          this = std::function<void ()(void *)>::operator()(&v3[3].i64[1], *v1);
          *v1 = 0;
          v5.i64[0] = -1;
          v5.i64[1] = -1;
          v6 = vaddq_s64(v3[7], v5);
          v3[7] = v6;
          v4 = v6.i64[0];
        }
      }

      v1 += 24;
    }

    while (v1 != v2);
  }

  return this;
}

void SIResourcePools::PoolDesc::~PoolDesc(SIResourcePool **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    SIResourcePool::~SIResourcePool(v2);
    MEMORY[0x26D681020]();
  }
}

uint64_t *SIResourcePools::getOrCreateLocked(SIResourcePools *this, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v2 = std::__hash_table<std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SIResourcePools::PoolDesc>>>::find<int>(this + 21, &v6);
  if (!v2)
  {
    v5 = 0;
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2 + 3;
}

void sub_26B7E4428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SIResourcePools::PoolDesc::~PoolDesc(va);
  _Unwind_Resume(a1);
}

uint64_t SIResourcePools::SIResourcePools(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1018212795;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 136, a5);
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 1065353216;
  return a1;
}

void sub_26B7E44F4(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t SIResourcePools::decayUsageCountLocked(uint64_t this)
{
  for (i = *(this + 184); i; i = *i)
  {
    i[9] = i[9] * 0.5;
  }

  return this;
}

BOOL SIResourcePools::populateLocked(SIResourcePools *a1, unsigned int a2, unint64_t a3, int a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  Locked = SIResourcePools::getOrCreateLocked(a1, a2);
  if (Locked[1])
  {
    goto LABEL_9;
  }

  v10 = Locked;
  v11 = *Locked;
  v12 = *(a1 + 1);
  if (v12 >= a3)
  {
    v12 = a3;
  }

  v13 = v12 - *(v11 + 14);
  if (v13 < 1)
  {
LABEL_9:
    result = 1;
    goto LABEL_10;
  }

  v14 = *(a1 + 23);
  if (v14)
  {
    v15 = 0;
    do
    {
      v15 += *(v14[3] + 112);
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *a1 - v15;
  if (v18 < v13)
  {
    v19 = 0;
    do
    {
      if (v19)
      {
        break;
      }

      v20 = *(a1 + 23);
      if (v20)
      {
        v21 = *(a1 + 23);
        do
        {
          v21[9] = v21[9] * 0.5;
          v21 = *v21;
        }

        while (v21);
        v22 = 0;
        v23 = 3.4028e38;
        do
        {
          v24 = v20[3];
          if (*(v20 + 32) == 1)
          {
            v25 = 3.4028e38;
            if (*(v24 + 120))
            {
              v25 = 0.0;
            }
          }

          else
          {
            v25 = 3.4028e38;
            if (v10 != v20 + 3)
            {
              v26 = *(v24 + 112);
              if (v26)
              {
                if (*(v24 + 120))
                {
                  v25 = *(v20 + 9) / v26;
                }

                else
                {
                  v25 = 3.4028e38;
                }
              }
            }
          }

          if (v25 < v23)
          {
            v22 = (v20 + 3);
            v23 = v25;
          }

          v20 = *v20;
        }

        while (v20);
        if (v22)
        {
          v18 += SIResourcePool::compactLocked(*v22);
        }
      }

      v19 = 1;
    }

    while (v18 < v13);
  }

  if (v13 >= v18)
  {
    v27 = v18;
  }

  else
  {
    v27 = v13;
  }

  if (!v18)
  {
    result = 0;
    goto LABEL_10;
  }

  if (!a4)
  {
    v32 = malloc_type_malloc(8 * v27, 0x100004000313F17uLL);
    v51 = v32;
    if (v18 < 1)
    {
      v33 = 0;
    }

    else
    {
      if (v27 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v27;
      }

      v34 = v32;
      v35 = v33;
      do
      {
        *v34++ = SIResourcePool::reserveResourceLocked(v11);
        --v35;
      }

      while (v35);
    }

    if (SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::once != -1)
    {
      SIResourcePools::populateLocked();
    }

    memset(buf, 0, 32);
    std::__function::__value_func<void * ()(void)>::__value_func[abi:ne200100](buf, a5);
    v50 = v18;
    v49 = v13;
    if (v18 > 0)
    {
      v36 = 0;
      v37 = MEMORY[0x277D85DD0];
      if (v27 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v27;
      }

      do
      {
        v39 = SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::queue;
        block[0] = v37;
        block[1] = 1174405120;
        block[2] = ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke_2;
        block[3] = &__block_descriptor_tmp_2_1;
        block[4] = v10;
        std::__function::__value_func<void * ()(void)>::__value_func[abi:ne200100](v58, buf);
        v58[4] = v11;
        v58[5] = v51;
        v58[6] = v36;
        v59 = a2;
        dispatch_async(v39, block);
        std::__function::__value_func<void * ()(void)>::~__value_func[abi:ne200100](v58);
        ++v36;
      }

      while (v38 != v36);
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 0x40000000;
    v53[2] = ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke_3;
    v53[3] = &__block_descriptor_tmp_4_1;
    v53[4] = v51;
    dispatch_barrier_async(SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::queue, v53);
    std::__function::__value_func<void * ()(void)>::~__value_func[abi:ne200100](buf);
    v13 = v49;
    v28 = v33;
    goto LABEL_66;
  }

  if (v18 < 1)
  {
    v50 = v18;
    v28 = 0;
LABEL_66:
    if (logger(void)::token != -1)
    {
      SIResourcePools::populateLocked();
    }

    v40 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110144;
      *&buf[4] = a2;
      *&buf[8] = 2048;
      *&buf[10] = v28;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = v50;
      v55 = 2048;
      v56 = v13;
      _os_log_debug_impl(&dword_26B7AA000, v40, OS_LOG_TYPE_DEBUG, "prepopulated pool %d with %llu resources, totalCount=%lu, allowedDelta=%lld, desiredDelta=%lld", buf, 0x30u);
    }

    result = v50 > 0 || v28 != 0;
    goto LABEL_10;
  }

  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28;
  while (1)
  {
    v30 = *(a5 + 24);
    if (!v30)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v31 = (*(*v30 + 48))(v30);
    if (!v31)
    {
      break;
    }

    SIResourcePool::addResourceLocked(v11, v31);
    if (!--v29)
    {
      v50 = v18;
      goto LABEL_66;
    }
  }

  if (logger(void)::token != -1)
  {
    SIResourcePool::acquireResourceLocked();
  }

  v42 = logger(void)::log;
  if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    SIResourcePools::populateLocked(a2, v42, v43, v44, v45, v46, v47, v48);
  }

  result = 1;
  *(v10 + 8) = 1;
LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke()
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(MEMORY[0x277D85CD8]);
  SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::queue = dispatch_queue_create("language queue", initially_inactive);
  dispatch_queue_set_width();
  v1 = SIResourcePools::populateLocked(int,unsigned long,BOOL,std::function<void * ()(void)> const&)::queue;

  dispatch_activate(v1);
}

void ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke_2(void *a1)
{
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v2 = a1[8];
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v3 = (*(*v2 + 48))(v2);
    v4 = a1[9];
    v5 = a1[10];
    v6 = a1[11];
    if (v3)
    {
      SIResourcePool::addResourceForTicket(v4, v3, *(v5 + 8 * v6));
      v7 = 0;
    }

    else
    {
      SIResourcePool::surrenderTicket(v4, *(v5 + 8 * v6));
      if (logger(void)::token != -1)
      {
        SIResourcePool::acquireResourceLocked();
      }

      v8 = logger(void)::log;
      if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_DEBUG))
      {
        ___ZN15SIResourcePools14populateLockedEimbRKNSt3__18functionIFPvvEEE_block_invoke_2_cold_2(a1, v8, v9, v10, v11, v12, v13, v14);
      }

      v7 = 1;
    }

    *(a1[4] + 8) = v7;
  }
}

void SIResourcePools::populate(uint64_t a1, unsigned int a2, unint64_t a3, int a4, uint64_t a5)
{
  std::mutex::lock((a1 + 24));
  SIResourcePools::populateLocked(a1, a2, a3, a4, a5);
  std::mutex::unlock((a1 + 24));

  std::condition_variable::notify_all((a1 + 88));
}

void SIResourcePools::acquireResource(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, SIResourceLock **a5@<X8>)
{
  __lk.__m_ = (a1 + 24);
  *&__lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  Locked = SIResourcePools::getOrCreateLocked(a1, a2);
  v11 = Locked;
  if (Locked[1])
  {
    goto LABEL_38;
  }

  v12 = *Locked;
  if (a4)
  {
    v13 = *(v12 + 112);
    for (i = (*(v12 + 40) - *(v12 + 32)) >> 3; v13 != 0xAAAAAAAAAAAAAAABLL * i && !*(v12 + 120) && !SIResourcePools::populateLocked(a1, a2, v13 + 1, 1, a3); i = (*(v12 + 40) - *(v12 + 32)) >> 3)
    {
      if (*(v11 + 8) == 1)
      {
        goto LABEL_38;
      }

      std::condition_variable::wait((a1 + 88), &__lk);
      v13 = *(v12 + 112);
    }

LABEL_37:
    if (*(v11 + 8) == 1)
    {
      goto LABEL_38;
    }

    v26 = 0;
    SIResourcePool::acquireResourceLocked(&__lk, v12, a4, &v26);
    v24 = v26;
    if (v26)
    {
      *(v11 + 3) = *(v11 + 3) + 1.0;
      if (!__lk.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
        return;
      }

      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      std::condition_variable::notify_all((a1 + 88));
      v24 = v26;
      v26 = 0;
    }

    *a5 = v24;
    std::unique_ptr<SIResourceLock>::~unique_ptr[abi:ne200100](&v26);
    goto LABEL_39;
  }

  if (*(v12 + 104) == 1)
  {
    goto LABEL_38;
  }

  v15 = *(a1 + 16);
  v16.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * v15;
  do
  {
    v17 = *(v12 + 112);
    if (v17 == 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 40) - *(v12 + 32)) >> 3))
    {
      goto LABEL_34;
    }

    v18 = *(v12 + 104);
    if (v18)
    {
      goto LABEL_35;
    }

    if (*(v12 + 120) || SIResourcePools::populateLocked(a1, a2, v17 + 1, 0, a3))
    {
      goto LABEL_34;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v16.__d_.__rep_)
    {
      break;
    }

    v19.__d_.__rep_ = v16.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v19.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v20.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v20.__d_.__rep_)
      {
        v21 = 0;
        goto LABEL_27;
      }

      if (v20.__d_.__rep_ < 1)
      {
        if (v20.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v21 = 0x8000000000000000;
          goto LABEL_27;
        }
      }

      else if (v20.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_25;
      }

      v21 = 1000 * v20.__d_.__rep_;
LABEL_25:
      if (v21 > (v19.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v22.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:
        std::condition_variable::__do_timed_wait((a1 + 88), &__lk, v22);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_27:
      v22.__d_.__rep_ = v21 + v19.__d_.__rep_;
      goto LABEL_28;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v16.__d_.__rep_);
  v23 = *(v12 + 112);
  if (v23 == 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 40) - *(v12 + 32)) >> 3))
  {
    goto LABEL_34;
  }

  v18 = *(v12 + 104);
  if (v18)
  {
LABEL_35:
    *(v12 + 104) = 0;
    if (v18)
    {
      std::condition_variable::notify_all(*(v12 + 96));
    }

    goto LABEL_37;
  }

  if (*(v12 + 120) || SIResourcePools::populateLocked(a1, a2, v23 + 1, 0, a3))
  {
LABEL_34:
    v18 = *(v12 + 104);
    goto LABEL_35;
  }

  v25 = *(v12 + 104);
  *(v12 + 104) = 1;
  if ((v25 & 1) == 0)
  {
    std::condition_variable::notify_all(*(v12 + 96));
  }

LABEL_38:
  *a5 = 0;
LABEL_39:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_26B7E4F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void SIResourcePools::shrinkAll(SIResourcePools *this)
{
  std::mutex::lock((this + 24));
  for (i = (this + 184); ; SIResourcePool::shrinkLocked(i[3]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::mutex::unlock((this + 24));
}

void SIResourcePools::getPoolStatsForTesting(SIResourcePools *this@<X0>, uint64_t a2@<X8>)
{
  v30 = 0;
  v3 = 0uLL;
  v29 = 0u;
  v4 = *(this + 23);
  if (v4)
  {
    do
    {
      memset(&v28, 0, sizeof(v28));
      std::to_string(&v27, *(v4 + 4));
      v5 = std::string::append(&v27, ":");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      std::to_string(&v26, *(v4[3] + 112));
      v7 = std::string::insert(&v26, 0, "active=");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v27;
      }

      else
      {
        v9 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      std::string::append(&v28, v9, size);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      std::to_string(&v26, *(v4[3] + 120));
      v11 = std::string::insert(&v26, 0, ",unused=");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v27;
      }

      else
      {
        v13 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v27.__r_.__value_.__l.__size_;
      }

      std::string::append(&v28, v13, v14);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v15 = *(&v29 + 1);
      if (*(&v29 + 1) >= v30)
      {
        v17 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v29, &v28);
      }

      else
      {
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v29 + 1), v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
        }

        else
        {
          v16 = *&v28.__r_.__value_.__l.__data_;
          *(*(&v29 + 1) + 16) = *(&v28.__r_.__value_.__l + 2);
          *v15 = v16;
        }

        v17 = (v15 + 24);
      }

      *(&v29 + 1) = v17;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v4 = *v4;
    }

    while (v4);
    v3 = v29;
  }

  v18 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v3 + 1) - v3) >> 3));
  if (*(&v3 + 1) == v3)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v3, *(&v3 + 1), &v27, v19, 1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v21 = *(&v29 + 1);
  for (i = v29; i != v21; i += 24)
  {
    v22 = *(a2 + 23);
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(a2 + 8);
    }

    if (v22)
    {
      std::string::append(a2, " ");
    }

    v23 = *(i + 23);
    if (v23 >= 0)
    {
      v24 = i;
    }

    else
    {
      v24 = *i;
    }

    if (v23 >= 0)
    {
      v25 = *(i + 23);
    }

    else
    {
      v25 = *(i + 8);
    }

    std::string::append(a2, v24, v25);
  }

  v28.__r_.__value_.__r.__words[0] = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_26B7E52C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31)
{
  __p = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_26B7E5358()
{
  if (*(v0 + 23) < 0)
  {
    v1 = *v0;
    JUMPOUT(0x26B7E533CLL);
  }

  JUMPOUT(0x26B7E5340);
}

os_log_t ___ZL6loggerv_block_invoke_1()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "SpotlightResourcePool");
  logger(void)::log = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SIResourcePools::PoolDesc>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SIResourcePool::SIResourcePool(uint64_t a1, int a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  std::vector<SIResourcePool::ResourceDesc>::vector[abi:ne200100]((a1 + 32), a3);
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 56, a5);
  *(a1 + 88) = a6;
  *(a1 + 96) = a7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void sub_26B7E5550(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<SIResourcePool::ResourceDesc>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SIResourcePool::ResourceDesc>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B7E55EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SIResourcePool::ResourceDesc>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SIResourcePool::ResourceDesc>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SIResourcePool::ResourceDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SIResourcePools::PoolDesc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SIResourcePools::PoolDesc>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<SIResourcePools::PoolDesc&&>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_26B7E591C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,SIResourcePools::PoolDesc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,SIResourcePools::PoolDesc>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,SIResourcePools::PoolDesc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,SIResourcePools::PoolDesc>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      SIResourcePools::PoolDesc::~PoolDesc(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void * ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v10[3 * v15], v10);
      v18 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v29, (a1 + 24));
      v31 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v41 + 24), (a1 + 48));
      v43 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v16, v29);
      v52 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10, &v10[3 * v15]);
    v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 - 24), a1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54, a3);
    v10 = (v54 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10 + 3, v10);
  v58 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1);
  v11 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1);
        v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1);
  v23 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_26B7E7524(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 8);
  v5 = *(result + 112);
  v6 = *a2;
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

BOOL isFsType(int a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x878uLL);
  result = !fstatfs(a1, &v6) && !strcmp(v6.f_fstypename, a2);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SISetLogging(uint64_t result, int a2)
{
  if (result <= 0x15)
  {
    gSILogLevels[result] = a2;
  }

  return result;
}

uint64_t isDebugVerboseMode()
{
  if (isDebugVerboseMode_onceToken != -1)
  {
    isDebugVerboseMode_cold_1();
  }

  return isDebugVerboseMode_debugEnabled;
}

uint64_t __isDebugVerboseMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  isDebugVerboseMode_debugEnabled = result;
  return result;
}

uint64_t _SILogForLogForCategory(int a1)
{
  if (_SILogForLogForCategory_onceToken != -1)
  {
    dispatch_once(&_SILogForLogForCategory_onceToken, &__block_literal_global_120_0);
  }

  return gSILogArray[a1];
}

CFPropertyListRef _createDictionaryWithContentsOfURL(CFURLRef fileURL, int a2, __CFError **a3)
{
  v6 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], fileURL);
  if (!v6)
  {
    if (a3)
    {
      v11 = @"File at URL is not readable";
      goto LABEL_15;
    }

    return 0;
  }

  v7 = v6;
  if (!CFReadStreamOpen(v6))
  {
    CFRelease(v7);
    goto LABEL_13;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = CFPropertyListCreateWithStream(0, v7, 0, v8, 0, 0);
  CFReadStreamClose(v7);
  CFRelease(v7);
  if (!v9)
  {
LABEL_13:
    if (a3)
    {
      v11 = @"File at URL is not a valid property list";
      goto LABEL_15;
    }

    return 0;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFDictionaryGetTypeID())
  {
    if (a3)
    {
      v11 = @"Property list at URL is not a dictionary";
LABEL_15:
      v9 = 0;
      *a3 = _createErrorWithMessageAndURL(v11, fileURL);
      return v9;
    }

    return 0;
  }

  return v9;
}

CFErrorRef _createErrorWithMessageAndURL(const __CFString *a1, CFURLRef anURL)
{
  if (anURL)
  {
    v3 = CFURLCopyPath(anURL);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@: %@", a1, v3);
  if (!v5)
  {
    v8 = 0;
    if (!v3)
    {
      return v8;
    }

    goto LABEL_6;
  }

  v6 = v5;
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v6);
  v8 = CFErrorCreate(v4, @"com.apple.SpotlightIndex.ErrorDomain", 0, Mutable);
  CFRelease(v6);
  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

  return v8;
}

void SI::encode(const std::string::value_type **a1)
{
  memset(__p, 0, 24);
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  std::string::reserve(__p, v2);
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v3 >> 63;
    do
    {
      if (v6)
      {
        v7 = *a1;
      }

      else
      {
        v7 = a1;
      }

      v8 = v7[v5];
      if (v8 <= 0x26)
      {
        v9 = "&quot;";
        if (v8 != 34)
        {
          if (v8 != 38)
          {
LABEL_26:
            std::string::append(__p, &v7[v5], 1uLL);
            goto LABEL_22;
          }

          v9 = "&amp;";
        }
      }

      else
      {
        switch(v8)
        {
          case '\'':
            v9 = "&apos;";
            break;
          case '<':
            v9 = "&lt;";
            break;
          case '>':
            v9 = "&gt;";
            break;
          default:
            goto LABEL_26;
        }
      }

      std::string::append(__p, v9);
LABEL_22:
      ++v5;
      v10 = *(a1 + 23);
      v6 = v10 >> 63;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = a1[1];
      }
    }

    while (v5 != v10);
  }

  v11 = a1[2];
  v12 = *a1;
  *a1 = __p[0];
  *&__p[0].__r_.__value_.__l.__data_ = v12;
  __p[0].__r_.__value_.__r.__words[2] = v11;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

void sub_26B7E7E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SI::split(std::string *__str, char *a2, uint64_t a3)
{
  v6 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = v6;
  size = __str->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = __str;
  }

  else
  {
    v9 = __str->__r_.__value_.__r.__words[0];
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = __str->__r_.__value_.__l.__size_;
  }

  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (!v12)
  {
    v14 = 0;
LABEL_16:
    v13 = 0;
    v33 = a3;
    while (1)
    {
      std::string::basic_string(&v36, __str, v13, v14 - v13, &v37);
      std::vector<std::string>::push_back[abi:ne200100](a3, &v36);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v15 = a2[23];
      v16 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v7 = v16;
      size = __str->__r_.__value_.__l.__size_;
      if ((v16 & 0x80u) == 0)
      {
        v17 = __str;
      }

      else
      {
        v17 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v16 & 0x80u) != 0)
      {
        v16 = __str->__r_.__value_.__l.__size_;
      }

      v18 = v15 >= 0 ? a2[23] : *(a2 + 1);
      v13 = v18 + v14;
      v19 = v15 >= 0 ? a2 : *a2;
      v20 = v16 - v13;
      if (v16 < v13)
      {
        goto LABEL_50;
      }

      v14 += v18;
      if (v18)
      {
        if (v20 >= v18)
        {
          v34 = __str->__r_.__value_.__l.__size_;
          v21 = v17 + v16;
          v22 = v17 + v13;
          v23 = *v19;
          while (1)
          {
            v24 = v20 - v18;
            if (v24 == -1 || (v25 = memchr(v22, v23, v24 + 1)) == 0)
            {
LABEL_43:
              a3 = v33;
              size = v34;
              goto LABEL_50;
            }

            v26 = v25;
            if (!memcmp(v25, v19, v18))
            {
              break;
            }

            v22 = v26 + 1;
            v20 = v21 - (v26 + 1);
            if (v20 < v18)
            {
              goto LABEL_43;
            }
          }

          size = v34;
          if (v26 != v21)
          {
            v14 = v26 - v17;
            a3 = v33;
            goto LABEL_41;
          }

          a3 = v33;
        }

        goto LABEL_50;
      }

LABEL_41:
      if (v14 == -1)
      {
        goto LABEL_50;
      }
    }
  }

  if (v6 < v12)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v35 = __str->__r_.__value_.__l.__size_;
  v27 = v9 + v6;
  v28 = *v11;
  v29 = v9;
  while (1)
  {
    v30 = v6 - v12;
    if (v30 == -1 || (v31 = memchr(v29, v28, v30 + 1)) == 0)
    {
LABEL_49:
      v13 = 0;
      size = v35;
      goto LABEL_50;
    }

    v32 = v31;
    if (!memcmp(v31, v11, v12))
    {
      break;
    }

    v29 = (v32 + 1);
    v6 = v27 - (v32 + 1);
    if (v6 < v12)
    {
      goto LABEL_49;
    }
  }

  v13 = 0;
  size = v35;
  if (v32 != v27)
  {
    v14 = v32 - v9;
    if (v14 != -1)
    {
      goto LABEL_16;
    }
  }

LABEL_50:
  if (v7 < 0)
  {
    if (v13 >= size)
    {
      return;
    }
  }

  else
  {
    if (v13 >= v7)
    {
      return;
    }

    size = v7;
  }

  std::string::basic_string(&v36, __str, v13, size - v13, &v37);
  std::vector<std::string>::push_back[abi:ne200100](a3, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_26B7E8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

_BYTE *SI::getUTF8StringFromCFString@<X0>(const __CFString *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

CFStringRef SI::createCFStringFromString(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return &stru_287C3FA80;
    }

    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v1 = *a1;
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  return &stru_287C3FA80;
}

void registerForCloning(int a1, int a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  if (registerForCloning_once != -1)
  {
    registerForCloning_cold_1();
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (a2)
  {
    Mutable = registeredCloneFds;
    if (!registeredCloneFds)
    {
      Mutable = CFSetCreateMutable(v5, 0, 0);
      registeredCloneFds = Mutable;
    }

    CFSetAddValue(Mutable, v6);
  }

  if (registerForCloning_allow_TM_NoCOW == 1 && a3 != 0)
  {
    v9 = registeredTimeMachineFds;
    if (!registeredTimeMachineFds)
    {
      v9 = CFSetCreateMutable(v5, 0, 0);
      registeredTimeMachineFds = v9;
    }

    CFSetAddValue(v9, v6);
    bzero(v12, 0x400uLL);
    fcntl(valuePtr, 50, v12);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v6);
  v10 = *MEMORY[0x277D85DE8];
}

void unregisterForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds && CFSetContainsValue(registeredCloneFds, v1))
  {
    CFSetRemoveValue(registeredCloneFds, v1);
  }

  if (registeredTimeMachineFds && CFSetContainsValue(registeredTimeMachineFds, v1))
  {
    CFSetRemoveValue(registeredTimeMachineFds, v1);
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
}

BOOL isRegisteredForCloning(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v2 = CFSetContainsValue(registeredCloneFds, v1) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
  return v2;
}

uint64_t _copyFile(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, off_t a6)
{
  v65 = *MEMORY[0x277D85DE8];
  memset(&v60, 0, sizeof(v60));
  v58 = 0;
  v59 = 0;
  if (*a5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(10);
    v8 = 2 * (dword_2804230F8 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_26B7AA000, v7, v8, "canceled", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    LODWORD(v13) = -1;
    goto LABEL_39;
  }

  v15 = a5;
  v11 = fd_create(a1, a2, 0);
  v18 = fd_open(v11, &v59);
  v13 = v18;
  if (!v11 || v18 == -1)
  {
    v6 = *__error();
    v37 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_8();
    }

    goto LABEL_33;
  }

  if (fstat(v18, &v60) == -1)
  {
    v6 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_7();
    }

LABEL_33:
    v9 = 0;
    v10 = 0;
    v12 = 0xFFFFFFFFLL;
LABEL_39:
    v41 = 0;
    *__error() = v6;
    goto LABEL_40;
  }

  v10 = fd_create(a3, a4, 536872450);
  v19 = fd_open(v10, &v58);
  v12 = v19;
  if (!v10 || v19 == -1)
  {
    v6 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_6();
    }

    goto LABEL_38;
  }

  ci_preallocate(v19, v60.st_size);
  if (_fd_ftruncate_guarded(v12, &v58, v60.st_size) == -1)
  {
    v6 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_5();
    }

LABEL_38:
    v9 = 0;
    goto LABEL_39;
  }

  fcntl(v13, 48, 1);
  fcntl(v13, 76, 1);
  fcntl(v12, 48, 1);
  fcntl(v12, 76, 1);
  v56 = a6;
  __buf = malloc_type_malloc(0x100000uLL, 0x8C758051uLL);
  v20 = 0;
  if (v60.st_size > a6)
  {
    v55 = v10;
    v54 = v13;
    v53 = v15;
    while (!*v15)
    {
      v21 = prot_pread(v13, __buf, 0x100000uLL, a6);
      if (v21 == -1)
      {
        v45 = *__error();
        v50 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_3();
        }

        goto LABEL_65;
      }

      if (*v15)
      {
        v45 = *__error();
        v51 = _SILogForLogForCategory(10);
        v52 = 2 * (dword_2804230F8 < 4);
        if (os_log_type_enabled(v51, v52))
        {
          *buf = 0;
          _os_log_impl(&dword_26B7AA000, v51, v52, "canceled", buf, 2u);
        }

LABEL_65:
        LODWORD(v13) = v54;
        goto LABEL_50;
      }

      v22 = v21;
      v23 = __buf;
      v24 = prot_pwrite_guarded(v12, &v58, __buf, v21, a6);
      if (v24 == -1)
      {
LABEL_47:
        v45 = *__error();
        v46 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_2();
        }

        LODWORD(v13) = v54;
        v15 = v53;
        goto LABEL_50;
      }

      v32 = v24;
      v33 = 1;
      while (1)
      {
        v34 = v22 - v32;
        if (v22 < v32)
        {
          _copyFile_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        v20 += v32;
        if (v22 <= v32)
        {
          break;
        }

        if ((v32 != 0) | v33 & 1)
        {
          v33 &= v32 != 0;
        }

        else
        {
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v62 = "_copyFile";
            v63 = 1024;
            v64 = 194;
            _os_log_error_impl(&dword_26B7AA000, v36, OS_LOG_TYPE_ERROR, "%s:%d: write failed", buf, 0x12u);
          }

          v33 = 0;
          *__error() = v35;
        }

        a6 += v32;
        v23 += v32;
        v24 = prot_pwrite_guarded(v12, &v58, v23, v34, a6);
        v32 = v24;
        v22 = v34;
        if (v24 == -1)
        {
          goto LABEL_47;
        }
      }

      a6 += v22;
      v13 = v54;
      v10 = v55;
      v15 = v53;
      if (a6 >= v60.st_size)
      {
        goto LABEL_51;
      }
    }

    v45 = *__error();
    v48 = _SILogForLogForCategory(10);
    v49 = 2 * (dword_2804230F8 < 4);
    if (os_log_type_enabled(v48, v49))
    {
      *buf = 0;
      _os_log_impl(&dword_26B7AA000, v48, v49, "canceled", buf, 2u);
    }

LABEL_50:
    *__error() = v45;
    v10 = v55;
  }

LABEL_51:
  if (v20 + v56 == v60.st_size)
  {
    v41 = 1;
  }

  else
  {
    if (!*v15)
    {
      v6 = *__error();
      v47 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        _copyFile_cold_4(&v60.st_size);
      }

      v9 = __buf;
      goto LABEL_39;
    }

    v41 = 0;
  }

  v9 = __buf;
LABEL_40:
  v42 = *__error();
  free(v9);
  prot_fsync(v12, 0);
  if ((v13 & 0x80000000) == 0)
  {
    fd_close(v11, v13, v59);
  }

  fd_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    fd_close(v10, v12, v58);
  }

  fd_release(v10);
  if (v42)
  {
    *__error() = v42;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t copyFileFallback(int a1, const char *a2, int a3, const char *a4, _DWORD *a5, char a6, int a7)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a1 != a3 || !isRegisteredForCloning(a1) || !a7)
  {
LABEL_33:
    result = _copyFile(a1, a2, a3, a4, a5, 0);
    goto LABEL_34;
  }

  bzero(v46, 0x400uLL);
  bzero(v45, 0x400uLL);
  v14 = faccurate_realpath(a1, v46);
  if (!v14)
  {
    v28 = *__error();
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_3();
    }

    goto LABEL_28;
  }

  v15 = v14;
  v16 = strlen(v14);
  snprintf(&v15[v16], 1024 - v16, "/%s", a2);
  v17 = faccurate_realpath(a1, v45);
  if (!v17)
  {
    v28 = *__error();
    v29 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_2();
    }

LABEL_28:
    *__error() = v29;
    v33 = __error();
    result = 0;
    *v33 = v28;
    goto LABEL_34;
  }

  v18 = v17;
  v39 = a6;
  v19 = strlen(v17);
  v38 = a4;
  snprintf(v18 + v19, 1024 - v19, "/%s", a4);
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = v15;
    v43 = 2080;
    v44 = v18;
    _os_log_impl(&dword_26B7AA000, v21, OS_LOG_TYPE_DEFAULT, "copy file %s to %s", buf, 0x16u);
  }

  *__error() = v20;
  while (1)
  {
    v22 = open(v18, 0);
    to = 0;
    asprintf(&to, "%s.tmp", v18);
    unlink(to);
    v23 = copyfile(v15, to, 0, 0x20C0000u);
    v25 = *__error();
    if (v25 != 45)
    {
      goto LABEL_12;
    }

    v26 = open(v15, 0);
    if (v26 != -1)
    {
      close(v26);
      v25 = 45;
LABEL_12:
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      rename(to, v18, v24);
      v23 = v27;
      v25 = *__error();
      goto LABEL_14;
    }

    v25 = *__error();
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    free(to);
    if (v22 != -1)
    {
      close(v22);
    }

    if (v23 != -1)
    {
      break;
    }

    if ((prot_error_check() & 1) == 0)
    {
      *__error() = v25;
      *__error() = v25;
      if ((prot_error_check() & 1) == 0)
      {
        *__error() = v25;
        goto LABEL_29;
      }
    }
  }

  *__error() = v25;
  if (!v23)
  {
    result = 1;
    goto LABEL_34;
  }

LABEL_29:
  v34 = *__error();
  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    copyFileFallback_cold_1();
  }

  *__error() = v35;
  *__error() = v34;
  if (v39)
  {
    a4 = v38;
    goto LABEL_33;
  }

  result = 0;
LABEL_34:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t copyFileIfTargetWritable(int a1, const char *a2, int a3, char *a4, _DWORD *a5)
{
  memset(&v11, 0, sizeof(v11));
  if (fstatat(a3, a4, &v11, 0) || v11.st_mode != 256)
  {
    return copyFileFallback(a1, a2, a3, a4, a5, 1, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.spotlight.SpotlightLinguistics", "SIDefaultLog");
  _nlpDefaultLog::log = result;
  return result;
}

uint64_t _nlpSignpostLog()
{
  if (_nlpSignpostLog::token != -1)
  {
    _nlpSignpostLog_cold_1();
  }

  return _nlpSignpostLog::log;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.spotlight.SpotlightLinguistics", "SISignposts");
  _nlpSignpostLog::log = result;
  return result;
}

atomic_uint *SIStringCacheCreateWithOptions(const void *a1, const __CFDictionary *a2)
{
  v4 = malloc_type_malloc(0x38uLL, 0x10600406D1038DAuLL);
  if (v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      valuePtr = 65;
      v7 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"containerSize", v7);
      v16 = 1;
      v8 = CFNumberCreate(v5, kCFNumberSInt32Type, &v16);
      CFDictionarySetValue(Mutable, @"trieOptions", v8);
      CFRelease(v7);
      CFRelease(v8);
    }

    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 1) = v9;
    *(v4 + 2) = 0;
    MutableWithDictionary = SIGeneralTrieCreateMutableWithDictionary(Mutable);
    *(v4 + 5) = 500;
    *(v4 + 3) = MutableWithDictionary;
    *(v4 + 4) = 0;
    *(v4 + 6) = 0x4000000000000000;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (a2)
    {
      Value = CFDictionaryGetValue(a2, kSIStringCacheOptionMaxCacheSize);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberCFIndexType, v4 + 10);
      }

      v12 = CFDictionaryGetValue(a2, kSIStringCacheOptionCacheGrowthFactor);
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberDoubleType, v4 + 12);
      }
    }

    if (*(v4 + 1))
    {
      v13 = CFStringCreateWithFormat(v5, 0, @"%@/strings.dat", *(v4 + 1));
      if (v13)
      {
        v14 = v13;
        *(v4 + 2) = CFURLCreateWithString(v5, v13, 0);
        CFRelease(v14);
      }
    }

    atomic_fetch_add(v4, 1u);
  }

  return v4;
}

atomic_uint *SIStringCacheRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

void SIStringCacheAdd(double *a1, CFStringRef theString)
{
  if (a1 && theString && CFStringGetLength(theString))
  {
    v4 = *(a1 + 3);
    if (v4 && CFStringGetLength(theString))
    {
      SIGeneralTrieAddStringKeyWithScore(v4, theString, 1, 0, 0, 1.0);
    }

    v5 = *(a1 + 5);
    v6 = a1[6];

    commit(a1, v5, v6);
  }
}

void commit(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      SIGeneralTrieSearch(v7, "", 0, -1, v3, mergeKeyCallback);
    }

    if (a2 && a2 * a3 < SIGeneralTrieGetCount(*(a1 + 24)))
    {
      if (!*(a1 + 8) || !*(a1 + 16))
      {
        v12 = SITrieCursorQueueCreate();
        v13 = SITrieCompletionQueueCreate();
        SIGeneralTrieRankedSearch(*(a1 + 24), "", 0, a2, v12, v13);
        if (CFBinaryHeapGetCount(v13))
        {
          OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(1, 65, 0, 0, 0);
          MutableWithDictionary = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
          if (OptionsDictionary)
          {
            CFRelease(OptionsDictionary);
          }

          if (CFBinaryHeapGetCount(v13) >= 1)
          {
            do
            {
              Minimum = CFBinaryHeapGetMinimum(v13);
              Completion = SITrieCompletionGetCompletion(Minimum);
              Length = SITrieCompletionGetLength(Minimum);
              Payload = SITrieCompletionGetPayload(Minimum);
              v20.n128_f64[0] = SITrieCompletionGetScore(Minimum);
              SIGeneralTrieAddKeyWithScore(MutableWithDictionary, Completion, Length, Payload, 0, 0, v20);
              CFBinaryHeapRemoveMinimumValue(v13);
            }

            while (CFBinaryHeapGetCount(v13) > 0);
          }

          SIGeneralTrieRelease(*(a1 + 24));
          *(a1 + 24) = MutableWithDictionary;
        }

        CFRelease(v12);
        v11 = v13;
        goto LABEL_21;
      }

      v8 = *(a1 + 32);
      if (v8)
      {
        SIGeneralTrieRelease(v8);
        *(a1 + 32) = 0;
      }

      v9 = *(a1 + 24);
      if (v9)
      {
        SIGeneralTrieWriteToFileURL(v9, *(a1 + 16));
        SIGeneralTrieRelease(*(a1 + 24));
        v10 = SIGeneralTrieCreateOptionsDictionary(1, 65, 0, 0, 0);
        *(a1 + 24) = SIGeneralTrieCreateMutableWithDictionary(v10);
        *(a1 + 32) = SIGeneralTrieCreateFromFileURL(*(a1 + 16));
        if (v10)
        {
          v11 = v10;
LABEL_21:

          CFRelease(v11);
        }
      }
    }
  }
}

void SIStringCachePrune(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    commit(a1, a2, 1.0);
  }
}

void SIStringCacheEnumerateStrings(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __SIStringCacheEnumerateStrings_block_invoke;
    v7[3] = &unk_279D03EA0;
    v7[4] = a2;
    enumerateStrings(v4, v7);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __SIStringCacheEnumerateStrings_block_invoke_2;
    v6[3] = &unk_279D03EC8;
    v6[4] = a2;
    enumerateStrings(v5, v6);
  }
}

void enumerateStrings(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1 && SIGeneralTrieGetCount(a1))
  {
    if (a2)
    {
      SIGeneralTrieSearchString(a1, &stru_287C3FA80, -1, &v4, keyCacheCallback);
    }
  }
}

void __SIStringCacheEnumerateStrings_block_invoke(uint64_t a1, const UInt8 *a2, CFIndex numBytes)
{
  v4 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], a2, numBytes, 0x8000100u, 0);
  (*(*(a1 + 32) + 16))();

  CFRelease(v4);
}

void __SIStringCacheEnumerateStrings_block_invoke_2(uint64_t a1, const UInt8 *a2, CFIndex numBytes)
{
  v4 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], a2, numBytes, 0x8000100u, 0);
  (*(*(a1 + 32) + 16))();

  CFRelease(v4);
}

uint64_t SIStringCacheContains(uint64_t result, CFStringRef theString)
{
  if (result)
  {
    v3 = result;
    result = 0;
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    v6 = *(v3 + 24) != 0;
    if (theString)
    {
      if (v6)
      {
        result = CFStringGetLength(theString);
        if (result)
        {
          if (v5)
          {
            v7 = SIGeneralTrieContainsStringKey(v5, theString, 0, 0);
            result = v7 != 0;
            if (v7 || !v4)
            {
              return result;
            }
          }

          else if (!v4)
          {
            return 0;
          }

          return SIGeneralTrieContainsStringKey(v4, theString, 0, 0) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t SIStringCacheGetCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return SIGeneralTrieGetCount(v1);
  }

  else
  {
    return 0;
  }
}

void SIStringCacheRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      SIStringCacheRelease_cold_1();
    }

    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      SIGeneralTrieRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      SIGeneralTrieRelease(v5);
    }

    free(a1);
  }
}

uint64_t mergeKeyCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Completion = SITrieCompletionGetCompletion(a2);
    Length = SITrieCompletionGetLength(a2);
    Payload = SITrieCompletionGetPayload(a2);
    v7.n128_f64[0] = SITrieCompletionGetScore(a2);

    return SIGeneralTrieAddKeyWithScore(v3, Completion, Length, Payload, 0, 0, v7);
  }

  return result;
}

uint64_t *keyCacheCallback(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *result;
    Completion = SITrieCompletionGetCompletion(a2);
    Length = SITrieCompletionGetLength(a2);
    Payload = SITrieCompletionGetPayload(a2);
    v9 = *(v5 + 16);

    return v9(v5, Completion, Length, Payload, a3);
  }

  return result;
}

void my_vm_tag_stats(__n128 a1)
{
  v1 = 0;
  v14 = *MEMORY[0x277D85DE8];
  v2 = gSILogLevels[0];
  a1.n128_u64[0] = 67109376;
  do
  {
    v3 = tag_sizes[v1];
    if (v3)
    {
      v4 = v2 < 5;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v9 = a1;
      v5 = *__error();
      v6 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v9.n128_u32[0];
        v11 = v1 | 0xF0;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_26B7AA000, v6, OS_LOG_TYPE_DEFAULT, "tag: %d, usage: %d", buf, 0xEu);
      }

      *__error() = v5;
      v2 = gSILogLevels[0];
      a1 = v9;
    }

    ++v1;
  }

  while (v1 != 16);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t my_vm_tag_usage(int a1)
{
  if ((a1 - 240) > 0x10)
  {
    return 0;
  }

  else
  {
    return tag_sizes[a1 - 240];
  }
}

unint64_t my_vm_tag_size_add(unsigned int a1, unint64_t a2)
{
  if (a1 - 240 > 0x10)
  {
    return 0;
  }

  else
  {
    return atomic_fetch_add_explicit(&tag_sizes[a1 - 240], a2, memory_order_relaxed) + a2;
  }
}

unint64_t my_vm_tag_flags_size_add(unsigned int a1, unint64_t a2)
{
  if (HIBYTE(a1) - 240 > 0x10u)
  {
    return 0;
  }

  else
  {
    return atomic_fetch_add_explicit(&tag_sizes[HIBYTE(a1) - 240], a2, memory_order_relaxed) + a2;
  }
}

uint64_t my_vm_reallocate(void **a1, size_t a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = *a1;
  result = my_vm_allocate(a1, a3, (a4 << 24) | 1);
  if (a2 && v9)
  {
    if (result)
    {
      *a1 = v9;
      return result;
    }

    if (a2 <= 4 * *MEMORY[0x277D85FA0])
    {
      memcpy(*a1, v9, a2);
      if (a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      vm_copy(*MEMORY[0x277D85F48], v9, a2, *a1);
      if (a5)
      {
LABEL_7:
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = __my_vm_reallocate_block_invoke;
        v11[3] = &__block_descriptor_tmp_17;
        v11[4] = v9;
        v11[5] = a2;
        v12 = a4;
        (*(a5 + 16))(a5, v11);
        return 0;
      }
    }

    if (a4 - 240 <= 0x10)
    {
      atomic_fetch_add_explicit(&tag_sizes[a4 - 240], -a2, memory_order_relaxed);
    }

    munmap(v9, a2);
    return 0;
  }

  return result;
}

uint64_t my_vm_allocate(void **a1, size_t a2, unsigned int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((a3 & 0xFFFFFF) == 1)
  {
    v6 = mmap(0, a2, 3, 4098, a3 & 0xFF000000, 0);
    *a1 = v6;
    if (v6 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        my_vm_allocate_cold_1(a2, a3 & 0xFF000000, a3);
      }

      v7 = 3;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = *a1;
  v9 = a3 & 0xFF000000;
  v10 = mmap(*a1, a2, 3, 4114, a3 & 0xFF000000, 0);
  *a1 = v10;
  if (v10 != -1)
  {
LABEL_7:
    v7 = 0;
    if (HIBYTE(a3) - 240 <= 0x10u)
    {
      atomic_fetch_add_explicit(&tag_sizes[HIBYTE(a3) - 240], a2, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  v7 = 3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    v16 = 136317442;
    v17 = "slab_allocator.h";
    v18 = 1024;
    v19 = 92;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = a2;
    v24 = 1024;
    v25 = 3;
    v26 = 1024;
    v27 = 4114;
    v28 = 1024;
    v29 = v9;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = v13;
    v34 = 2080;
    v35 = v15;
    _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%u: mmap failed for addr %p, len 0x%08lx, prot 0x%04x, flags 0x%04x, fd 0x%04x, flags %u, errno %d(%s)", &v16, 0x4Eu);
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __my_vm_reallocate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if ((v4 - 240) <= 0x10)
  {
    atomic_fetch_add_explicit(&tag_sizes[v4 - 240], -v3, memory_order_relaxed);
  }

  return munmap(v2, v3);
}

void **slab_cleanup(void **result)
{
  if ((result - 243) > 4)
  {
    if (result == 250)
    {
      v5 = OSAtomicDequeue(&stru_280423730, 0);
      if (v5)
      {
        v6 = v5;
        v7 = MEMORY[0x277D85FA0];
        do
        {
          munmap(v6[1], *v7);
          OSAtomicEnqueue(&slab_cache, v6, 0);
          v6 = OSAtomicDequeue(&stru_280423730, 0);
        }

        while (v6);
      }

      result = OSAtomicDequeue(&stru_280423740, 0);
      if (result)
      {
        v8 = result;
        do
        {
          atomic_fetch_add(qword_280423750, 0xFFFFFFFFFFFFFFFFLL);
          munmap(v8[1], 0x100000uLL);
          OSAtomicEnqueue(&slab_cache, v8, 0);
          result = OSAtomicDequeue(&stru_280423740, 0);
          v8 = result;
        }

        while (result);
      }
    }
  }

  else
  {
    v1 = OSAtomicDequeue(&stru_2804236F0, 0);
    if (v1)
    {
      v2 = v1;
      v3 = MEMORY[0x277D85FA0];
      do
      {
        munmap(v2[1], *v3);
        OSAtomicEnqueue(&slab_cache, v2, 0);
        v2 = OSAtomicDequeue(&stru_2804236F0, 0);
      }

      while (v2);
    }

    result = OSAtomicDequeue(&stru_280423700, 0);
    if (result)
    {
      v4 = result;
      do
      {
        atomic_fetch_add(qword_280423710, 0xFFFFFFFFFFFFFFFFLL);
        munmap(v4[1], 0x100000uLL);
        OSAtomicEnqueue(&slab_cache, v4, 0);
        result = OSAtomicDequeue(&stru_280423700, 0);
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

char *slab_create(unsigned int a1)
{
  v6 = 0;
  v1 = MEMORY[0x277D85FA0];
  v2 = *MEMORY[0x277D85FA0];
  v3 = 0;
  if (!slab_vm_allocate(&v6, *MEMORY[0x277D85FA0], a1))
  {
    v3 = v6;
    v4 = v6 + 24;
    *v6 = 0;
    *(v3 + 1) = v4;
    *(v3 + 2) = &v3[v2];
    madvise(v4, *v1, 3);
  }

  return v3;
}

uint64_t slab_vm_allocate(void **a1, unint64_t a2, unsigned int a3)
{
  if (a3 != 250)
  {
    if (a3 - 243 > 4)
    {
      goto LABEL_18;
    }

    if (*MEMORY[0x277D85FA0] == a2)
    {
      v7 = OSAtomicDequeue(&stru_2804236F0, 0);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 != 0x100000)
      {
        goto LABEL_18;
      }

      v10 = OSAtomicDequeue(&stru_280423700, 0);
      if (!v10)
      {
        goto LABEL_18;
      }

      v7 = v10;
      atomic_fetch_add(qword_280423710, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = v7[1];
    *a1 = v11;
    bzero(v11, v11[1] - v11);
    OSAtomicEnqueue(&slab_cache, v7, 0);
    v9 = &tag_sizes[a3 - 240];
    goto LABEL_17;
  }

  if (*MEMORY[0x277D85FA0] == a2)
  {
    v6 = OSAtomicDequeue(&stru_280423730, 0);
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 0x100000)
  {
    v8 = OSAtomicDequeue(&stru_280423740, 0);
    if (v8)
    {
      v6 = v8;
      atomic_fetch_add(qword_280423750, 0xFFFFFFFFFFFFFFFFLL);
LABEL_12:
      *a1 = v6[1];
      OSAtomicEnqueue(&slab_cache, v6, 0);
      v9 = &unk_2804236B0;
LABEL_17:
      atomic_fetch_add_explicit(v9, a2, memory_order_relaxed);
      return 0;
    }
  }

LABEL_18:

  return my_vm_allocate(a1, a2, (a3 << 24) | 1);
}

void *slab_usage(void *result, uint64_t *a2, uint64_t *a3)
{
  if (result)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v4 = v4 - result + result[1];
      v3 = v3 - result + result[2];
      result = *result;
    }

    while (result);
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  v3 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v4;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v3;
  }

  return result;
}

void *slab_destroy(void *result, unsigned int a2)
{
  if (result)
  {
    do
    {
      v3 = *result;
      slab_vm_deallocate(result, result[2] - result, a2);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void slab_vm_deallocate(void *a1, size_t a2, unsigned int a3)
{
  if (a3 == 250)
  {
    if (a2 != 0x100000)
    {
      v9 = MEMORY[0x277D85FA0];
      if (*MEMORY[0x277D85FA0] == a2)
      {
        v10 = node_alloc();
        v10[1] = a1;
        madvise(a1, *v9, 5);
        atomic_fetch_add_explicit(qword_2804236B0, -a2, memory_order_relaxed);
        v8 = &stru_280423730;
        v7 = v10;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    madvise(a1, 0x100000uLL, 5);
    atomic_fetch_add_explicit(qword_2804236B0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_280423750;
    if (atomic_fetch_add(qword_280423750, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_280423740;
LABEL_16:

      OSAtomicEnqueue(v8, v7, 0);
      return;
    }
  }

  else
  {
    if (a3 - 243 > 4)
    {
      if (a3 - 240 >= 0x11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a2 != 0x100000)
    {
      if (*MEMORY[0x277D85FA0] == a2)
      {
        v7 = node_alloc();
        v7[1] = a1;
        atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
        v8 = &stru_2804236F0;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    atomic_fetch_add_explicit(&tag_sizes[a3 - 240], 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_280423710;
    if (atomic_fetch_add(qword_280423710, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_280423700;
      goto LABEL_16;
    }
  }

  atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
LABEL_19:
  atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
LABEL_20:

  munmap(a1, a2);
}

void *slab_evict(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      madvise(result, result[2] - result, 4);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void *slab_reset(void *result, unsigned int a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    result = *v2;
    *v2 = 0;
    *(*v3 + 8) = *v3 + 24;
    if (result)
    {
      do
      {
        v5 = *result;
        slab_vm_deallocate(result, result[2] - result, a2);
        result = v5;
      }

      while (v5);
    }
  }

  return result;
}

void *slab_new(void **a1, unint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v28 = *a1;
  if (a2 < 0xFFFE9)
  {
    v18 = slab_vm_allocate(&v28, 0x100000uLL, a3);
    if (v18)
    {
      slab_new_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = v28;
    *v28 = *a1;
    *a1 = v26;
    result = v26 + 3;
    v26[1] = v26 + a2 + 24;
    v26[2] = v26 + 0x20000;
  }

  else
  {
    v27 = 0;
    v5 = a2 + 24;
    v6 = slab_vm_allocate(&v27, a2 + 24, a3);
    if (v6)
    {
      slab_new_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = v27;
    v15 = v27 + v5;
    v27[1] = v27 + v5;
    v14[2] = v15;
    *v14 = *v4;
    *v4 = v14;
    return v14 + 3;
  }

  return result;
}

void *slab_new_slab(void **a1, unint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v29 = *a1;
  if (a2 < 0xFFFE9)
  {
    v17 = slab_vm_allocate(&v29, 0x100000uLL, a3);
    if (v17)
    {
      slab_new_slab_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v25 = *a1;
    v14 = v29;
    v29[2] = v29 + 0x20000;
    v26 = v14 + a2 + 24;
    atomic_store(v26, v14 + 1);
    *v14 = v25;
    v14[1] = v26 + a2;
    __dmb(0xBu);
    *a1 = v29;
  }

  else
  {
    v28 = 0;
    v5 = a2 + 24;
    v6 = slab_vm_allocate(&v28, a2 + 24, a3);
    if (v6)
    {
      slab_new_slab_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = v28;
    v15 = &v28[v5];
    atomic_store(&v28[v5], v4 + 1);
    v14[2] = v15;
    *v14 = *v4;
    *v4 = v14;
  }

  return v14 + 3;
}

void *node_alloc()
{
  v0 = OSAtomicDequeue(&slab_cache, 0);
  if (!v0)
  {
    os_unfair_lock_lock(&node_alloc_node_lock);
    v0 = OSAtomicDequeue(&slab_cache, 0);
    if (!v0)
    {
      v1 = *MEMORY[0x277D85FA0];
      v2 = malloc_type_malloc(*MEMORY[0x277D85FA0], 0x970D17D9uLL);
      v0 = v2;
      if (v1 >= 0x20)
      {
        v3 = (v1 >> 4) - 1;
        v4 = v2 + 16;
        do
        {
          OSAtomicEnqueue(&slab_cache, v4, 0);
          v4 += 16;
          --v3;
        }

        while (v3);
      }
    }

    os_unfair_lock_unlock(&node_alloc_node_lock);
  }

  return v0;
}

uint64_t SIUINT32SetGetTypeID()
{
  result = __kSIUINT32SetTypeID;
  if (!__kSIUINT32SetTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kSIUINT32SetTypeID = result;
  }

  return result;
}

uint64_t SIUINT32SetCreate(uint64_t a1)
{
  if (!__kSIUINT32SetTypeID)
  {
    __kSIUINT32SetTypeID = _CFRuntimeRegisterClass();
  }

  return MEMORY[0x282110370](a1);
}

uint64_t SIValueSet<unsigned int>::SIValueSetContains(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  v2 = *(a1 + 4);
  if (v2 && (*a1 ^ a2) >> (-4 * v2))
  {
    return 0;
  }

  else
  {
    return SIValueSet<unsigned int>::_SIValueSetInnerContains(a1 + 32, a2, v2);
  }
}

uint64_t SIValueSet<unsigned int>::SIValueSetInsert(unsigned int *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    if ((*a1 ^ a2) >> (-4 * v4))
    {
      v6 = a1 + 8;
      do
      {
        v7 = a1[1];
        v8 = v7 - 1;
        a1[1] = v7 - 1;
        if (v7 <= 0)
        {
          SIValueSet<unsigned int>::SIValueSetInsert();
        }

        v9 = 32 - 4 * v7;
        if (v8)
        {
          v10 = -1 << (-4 * v8);
        }

        else
        {
          v10 = 0;
        }

        v11 = (v5 >> (v9 & 0xFC)) & 0xF;
        *a1 = v5 & v10;
        v12 = SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_alloc_level(a1 + 1);
        v13 = *(a1 + 5);
        v15 = *v6;
        v14 = *(a1 + 3);
        *(v12 + 32) = *(a1 + 4);
        *(v12 + 48) = v13;
        *v12 = v15;
        *(v12 + 16) = v14;
        v16 = *(a1 + 9);
        v18 = *(a1 + 6);
        v17 = *(a1 + 7);
        *(v12 + 96) = *(a1 + 8);
        *(v12 + 112) = v16;
        *(v12 + 64) = v18;
        *(v12 + 80) = v17;
        *v6 = 0u;
        *(a1 + 3) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 6) = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 9) = 0u;
        *(v6 + v11) = v12 | 1;
        v5 = *a1;
      }

      while (*a1 != (v10 & a2));
      v4 = a1[1];
    }

    if ((4 * v4 - 29) <= 0xFFFFFFDE)
    {
      SIValueSet<unsigned int>::SIValueSetInsert();
    }
  }

  else if (*(a1 + 160) == 1)
  {
    v4 = 4;
    *a1 = a2 & 0xFFFF0000;
    a1[1] = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 160) = 0;

  return SIValueSet<unsigned int>::_SIValueSetInnerInsert((a1 + 8), a2, v4, (a1 + 2));
}

uint64_t SIUINT64SetCreate(uint64_t a1)
{
  if (!__kSIUINT64SetTypeID)
  {
    __kSIUINT64SetTypeID = _CFRuntimeRegisterClass();
  }

  return MEMORY[0x282110370](a1);
}

uint64_t SIUINT64SetGetTypeID()
{
  result = __kSIUINT64SetTypeID;
  if (!__kSIUINT64SetTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kSIUINT64SetTypeID = result;
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetContains(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && (*a1 ^ a2) >> (-4 * v2))
  {
    return 0;
  }

  else
  {
    return SIValueSet<unsigned long long>::_SIValueSetInnerContains(a1 + 40, a2, v2);
  }
}

uint64_t SIValueSet<unsigned long long>::SIValueSetInsert(unint64_t *a1, unint64_t a2)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *a1;
    if ((*a1 ^ a2) >> (-4 * v4))
    {
      v6 = a1 + 5;
      do
      {
        v7 = *(a1 + 2);
        v8 = v7 - 1;
        *(a1 + 2) = v7 - 1;
        if (v7 <= 0)
        {
          SIValueSet<unsigned int>::SIValueSetInsert();
        }

        v9 = 64 - 4 * v7;
        if (v8)
        {
          v10 = -1 << (-4 * v8);
        }

        else
        {
          v10 = 0;
        }

        v11 = (v5 >> v9) & 0xF;
        *a1 = v5 & v10;
        v12 = SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_alloc_level(a1 + 2);
        v13 = *(a1 + 11);
        v15 = *v6;
        v14 = *(a1 + 7);
        *(v12 + 32) = *(a1 + 9);
        *(v12 + 48) = v13;
        *v12 = v15;
        *(v12 + 16) = v14;
        v16 = *(a1 + 19);
        v18 = *(a1 + 13);
        v17 = *(a1 + 15);
        *(v12 + 96) = *(a1 + 17);
        *(v12 + 112) = v16;
        *(v12 + 64) = v18;
        *(v12 + 80) = v17;
        *v6 = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 9) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 13) = 0u;
        *(a1 + 15) = 0u;
        *(a1 + 17) = 0u;
        *(a1 + 19) = 0u;
        *(v6 + v11) = v12 | 1;
        v5 = *a1;
      }

      while (*a1 != (v10 & a2));
      v4 = *(a1 + 2);
    }

    if ((4 * v4 - 61) <= 0xFFFFFFBE)
    {
      SIValueSet<unsigned int>::SIValueSetInsert();
    }
  }

  else if (*(a1 + 168) == 1)
  {
    v4 = 12;
    *(a1 + 2) = 12;
    *a1 = a2 & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 168) = 0;

  return SIValueSet<unsigned long long>::_SIValueSetInnerInsert((a1 + 5), a2, v4, (a1 + 2));
}

uint64_t SIValueSet<unsigned long long>::SIValueSetRemove(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && *a1 != ((-1 << (-4 * v2)) & a2))
  {
    return 0;
  }

  else
  {
    return SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 40, a2, v2, a1 + 16);
  }
}

double __SIUINT32SetInit(const void *a1)
{
  v2 = CFGetAllocator(a1);
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = v2;
  v3 = MEMORY[0x26D680300]();
  bzero(v3, 0x1F88uLL);
  *(a1 + 3) = v3;
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 176) = 1;
  return result;
}

uint64_t SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::~malloc_chain_s(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(v2, *(a1 + 16), *(a1 + 8));
    CFAllocatorDeallocate(*(a1 + 16), *a1);
    *a1 = 0;
  }

  return a1;
}

void SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(void **a1, const __CFAllocator *a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, a2, 63);
    CFAllocatorDeallocate(a2, *a1);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = (a1 + 1);
    do
    {
      SIValueSet<unsigned int>::_SIValueSetInnerDealloc(v7, a2);
      v7 += 128;
      --a3;
    }

    while (a3);
  }
}

void SIValueSet<unsigned int>::_SIValueSetInnerDealloc(uint64_t a1, const __CFAllocator *a2)
{
  for (i = 0; i != 128; i += 8)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*(a1 + i));
        CFAllocatorDeallocate(a2, v5);
      }

      *(a1 + i) = 0;
    }
  }
}

uint64_t SIValueSet<unsigned int>::~SIValueSet(uint64_t a1)
{
  SIValueSet<unsigned int>::_SIValueSetInnerDealloc(a1 + 32, *(a1 + 24));
  SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::~malloc_chain_s(a1 + 8);
  return a1;
}

double __SIUINT64SetInit(char *a1)
{
  v2 = CFGetAllocator(a1);
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = v2;
  v3 = MEMORY[0x26D680300]();
  bzero(v3, 0x1F88uLL);
  *(a1 + 4) = v3;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  a1[184] = 1;
  return result;
}

uint64_t SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::~malloc_chain_s(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v2, *(a1 + 16), *(a1 + 8));
    CFAllocatorDeallocate(*(a1 + 16), *a1);
    *a1 = 0;
  }

  return a1;
}

void SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(void **a1, const __CFAllocator *a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, a2, 63);
    CFAllocatorDeallocate(a2, *a1);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = (a1 + 1);
    do
    {
      SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(v7, a2);
      v7 += 128;
      --a3;
    }

    while (a3);
  }
}

void SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(uint64_t a1, const __CFAllocator *a2)
{
  for (i = 0; i != 128; i += 8)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*(a1 + i));
        CFAllocatorDeallocate(a2, v5);
      }

      *(a1 + i) = 0;
    }
  }
}

uint64_t SIValueSet<unsigned long long>::~SIValueSet(uint64_t a1)
{
  SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(a1 + 40, *(a1 + 32));
  SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::~malloc_chain_s(a1 + 16);
  return a1;
}

uint64_t SIValueSet<unsigned int>::_SIValueSetInnerContains(uint64_t a1, unsigned int a2, int a3)
{
  result = *(a1 + 8 * ((a2 >> (28 - 4 * a3)) & 0xF));
  if (result)
  {
    v4 = a3 + 2;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (32 - 4 * v4++)) & 0xF));
    }

    while ((result & 1) != 0);
  }

  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_alloc_level(void *a1)
{
  v2 = a1[1];
  if (v2 == 63 || (v3 = *a1) == 0)
  {
    v3 = MEMORY[0x26D680300](a1[2], 8072, 0xA00408091C53FLL, 0);
    *v3 = *a1;
    bzero(v3 + 1, 0x1F80uLL);
    v2 = 0;
    *a1 = v3;
  }

  a1[1] = v2 + 1;
  return &v3[16 * v2 + 1];
}

uint64_t SIValueSet<unsigned int>::_SIValueSetInnerInsert(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = 28 - 4 * a3;
  v8 = 28 - 4 * a3;
  v9 = (a2 >> v8) & 0xF;
  v10 = *(a1 + 8 * v9);
  if (v10)
  {
    do
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v7 = 24 - 4 * v5;
      v8 = 24 - 4 * v5;
      v9 = (a2 >> v8) & 0xF;
      v10 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v9);
      ++v5;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v11 = a1;
  }

  if (v7 < 13)
  {
    if (!v10)
    {
      v10 = MEMORY[0x26D680300](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      *v10 = &unk_287C3F610;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 0u;
      *(v10 + 120) = 0u;
      *(v10 + 136) = 0u;
      *(v10 + 152) = 0u;
      *(v10 + 168) = 0u;
      *(v10 + 184) = 0u;
      *(v10 + 200) = 0u;
      *(v10 + 216) = 0u;
      *(v10 + 232) = 0u;
      *(v10 + 248) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 264) = 0u;
      *(v10 + 280) = 0u;
      *(v10 + 296) = 0u;
      *(v10 + 312) = 0u;
      *(v10 + 328) = 0u;
      *(v10 + 344) = 0u;
      *(v10 + 360) = 0u;
      *(v10 + 376) = 0u;
      *(v10 + 392) = 0u;
      *(v10 + 408) = 0u;
      *(v10 + 424) = 0u;
      *(v10 + 440) = 0u;
      *(v10 + 456) = 0u;
      *(v10 + 472) = 0u;
      *(v10 + 488) = 0u;
      *(v10 + 504) = 0u;
      *(v11 + 8 * v9) = v10;
    }

    v13 = 1 << (a2 & ~(-1 << v8));
    v14 = *(v10 + 8 + 8 * ((a2 & ~(-1 << v8)) >> 6));
    if ((v14 & v13) != 0)
    {
      return 0;
    }

    else
    {
      *(v10 + 8 + 8 * (((a2 & ~(-1 << v8)) << 16) >> 22)) = v14 | v13;
      return 1;
    }
  }

  else
  {
    if (v10)
    {
      v12 = *v10;
    }

    else
    {
      if (v7 < 0x20u)
      {
        v16 = *(a4 + 16);
        if (v7 < 0x10u)
        {
          v10 = MEMORY[0x26D680300](v16, 136, 0x1081040C0A9C235, 0);
          v12 = &unk_287C3F570;
          *v10 = &unk_287C3F570;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
        }

        else
        {
          v10 = MEMORY[0x26D680300](v16, 264, 0x10810409D866994, 0);
          v12 = &unk_287C3F4D0;
          *v10 = &unk_287C3F4D0;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
          *(v10 + 136) = 0u;
          *(v10 + 152) = 0u;
          *(v10 + 168) = 0u;
          *(v10 + 184) = 0u;
          *(v10 + 200) = 0u;
          *(v10 + 216) = 0u;
          *(v10 + 232) = 0u;
          *(v10 + 248) = 0u;
        }
      }

      else
      {
        v10 = MEMORY[0x26D680300](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v12 = &unk_287C3F430;
        *v10 = &unk_287C3F430;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 88) = 0u;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 216) = 0u;
        *(v10 + 232) = 0u;
        *(v10 + 248) = 0u;
        *(v10 + 8) = 0u;
        *(v10 + 264) = 0u;
        *(v10 + 280) = 0u;
        *(v10 + 296) = 0u;
        *(v10 + 312) = 0u;
        *(v10 + 328) = 0u;
        *(v10 + 344) = 0u;
        *(v10 + 360) = 0u;
        *(v10 + 376) = 0u;
        *(v10 + 392) = 0u;
        *(v10 + 408) = 0u;
        *(v10 + 424) = 0u;
        *(v10 + 440) = 0u;
        *(v10 + 456) = 0u;
        *(v10 + 472) = 0u;
        *(v10 + 488) = 0u;
        *(v10 + 504) = 0u;
      }

      *(v11 + 8 * v9) = v10;
    }

    v15 = (*v12)(v10, a2, ~(-1 << v8));
    if ((*(*v10 + 56))(v10) >= 0x3E)
    {
      *(v11 + 8 * v9) = SIValueSet<unsigned int>::_SIValueSetBurstRLE(v10, v5, a4);
    }
  }

  return v15;
}

uint64_t SIValueSet<unsigned int>::_SIValueSetBurstRLE(void *a1, int a2, uint64_t a3)
{
  v6 = SIValueSet<unsigned int>::CombLevel_s::malloc_chain_s::chain_alloc_level(a3);
  v7 = v6;
  v8 = 0;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v11[0] = v6;
  v11[1] = (a2 + 1);
  v11[2] = a3;
  do
  {
    if (*(v6 + v8))
    {
      SIValueSet<unsigned int>::_SIValueSetBurstRLE();
    }

    v8 += 8;
  }

  while (v8 != 128);
  v9 = 32 - 4 * (a2 + 1);
  if (v9 <= 31)
  {
    if (v9 < 16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned short>::Apply(a1, 128, 0, SIValueSet<unsigned int>::applyFun, v11);
    }

    else
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::Apply(a1, 128, 0, SIValueSet<unsigned int>::applyFun, v11);
    }
  }

  else
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::Apply(a1, 128, 0, SIValueSet<unsigned int>::applyFun, v11);
  }

  (*(*a1 + 72))(a1);
  CFAllocatorDeallocate(*(a3 + 16), a1);
  return v7 | 1;
}

BOOL SIValueSet<unsigned int>::BitmapHolder::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) >> 6));
  if ((v4 & v3) == 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 | v3;
  }

  return (v4 & v3) == 0;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddKey(uint64_t a1, int a2, int a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::ContainsKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 & a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[2 * (v5 >> 1)];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *(v8 - 1);
        v8 -= 2;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        goto LABEL_16;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  while (1)
  {
LABEL_16:
    if (v4 >= v6)
    {
      return 0;
    }

    v12 = *v4;
    if (v3 == *v4)
    {
      break;
    }

    v4 += 2;
    if (v3 < v12)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::CloseKey(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  result = a3 & a2;
  v6 = (a1 + 16);
  v7 = a1 + 16 + 8 * v3;
  if (v3 < 3)
  {
    goto LABEL_19;
  }

  v8 = v7;
  do
  {
    v9 = &v6[2 * (v3 >> 1)];
    v10 = *v9;
    if ((*v9 & 0x8000000000000000) != 0)
    {
      v11 = *(v9 - 1);
      v9 -= 2;
      v10 = v11;
    }

    if (v9 <= v6)
    {
      break;
    }

    if (v10 == result)
    {
      v6 = v9;
      break;
    }

    if (v10 > result)
    {
      v8 = v9;
    }

    else
    {
      v6 = v9;
    }

    v3 = (v8 - v6) >> 3;
  }

  while (v8 > v6 && v3 > 2);
LABEL_19:
  while (v6 < v7)
  {
    v13 = *v6;
    if (result == v13)
    {
      return result;
    }

    v6 += 2;
    if (result < v13)
    {
      return v13;
    }
  }

  result = *(v7 - 8);
  if ((result & 0x8000000000000000) != 0)
  {
    return (*(v7 - 16) + result);
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a3 & a2;
  v5 = (a1 + 16);
  v6 = *(a1 + 8);
  v7 = a1 + 16 + 8 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 16 + 8 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 3;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (*v5 != v4)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v5[v16 + 1];
      if ((v15 & 0x8000000000000000) != 0)
      {
        v19 = v5[v16 - 1];
        v20 = v19 + (v15 & 0x7FFFFFFFFFFFFFFFLL);
        if (v19 < v4 && v20 >= v4)
        {
          v24 = &v5[v16];
          v25 = &v5[v16 + 1];
          if ((v15 & 0x7FFFFFFFFFFFFFFFLL) == 1)
          {
            if (v25 < v7)
            {
              v23 = a1 + 8 * v6 - v5 - v16 * 8 + 8;
              v14 = &v5[v16 + 1];
LABEL_39:
              memmove(v24, v14, v23);
              v6 = *(a1 + 8);
            }

LABEL_40:
            *(a1 + 8) = v6 - 1;
          }

          else if (v20 == v4)
          {
            *v24 = (v15 - 1) | 0x8000000000000000;
          }

          else if (v19 + 1 == v4)
          {
            *v24 = v4 + 1;
            v26 = v20 + ~v4;
            if (v26)
            {
              v27 = *(a1 + 8);
              if (v27 >= 0x3F)
              {
                SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v28 = &v5[v16 - 1] - a1;
              v29 = v28 >> 3;
              if (v27 != v28 >> 3)
              {
                memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v27 - (v28 >> 3)));
                v29 = *(a1 + 8);
              }

              *(a1 + 8) = v29 + 1;
              *v25 = v26 | 0x8000000000000000;
            }
          }

          else
          {
            v5[v16] = ((v4 - 1) - v19) | 0x8000000000000000;
            v30 = *(a1 + 8);
            if (v30 >= 0x3F)
            {
              SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
            }

            v31 = v5 - a1;
            v32 = &v5[v16 - 1] - a1;
            v33 = v32 >> 3;
            if (v30 != v32 >> 3)
            {
              memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v30 - (v32 >> 3)));
              v33 = *(a1 + 8);
            }

            *(a1 + 8) = v33 + 1;
            *v25 = (v4 + 1);
            v34 = v20 + ~v4;
            if (v34)
            {
              v35 = *(a1 + 8);
              if (v35 >= 0x3F)
              {
                SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v36 = &v5[v16];
              v37 = &v31[v16 * 8] >> 3;
              if (v35 != v37)
              {
                memmove(&v5[v16 + 3], v36 + 2, 8 * (v35 - (&v31[v16 * 8] >> 3)));
                v37 = *(a1 + 8);
              }

              *(a1 + 8) = v37 + 1;
              v36[2] = v34 | 0x8000000000000000;
            }
          }

          return 1;
        }

        if (v17 >= v7)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15 > v4 || v17 >= v7)
        {
          return result;
        }
      }

      v15 = *v17;
      ++v16;
      if (*v17 == v4)
      {
        v5 = (v5 + v16 * 8);
        v14 = v5 + 1;
        break;
      }
    }
  }

  if (v14 >= v7)
  {
    goto LABEL_40;
  }

  v22 = *v14;
  if ((*v14 & 0x8000000000000000) == 0)
  {
    v23 = v7 - v14;
    v24 = v5;
    goto LABEL_39;
  }

  *v5 = v4 + 1;
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 1)
  {
    v23 = v7 - (v5 + 2);
    v24 = v14;
    v14 = v5 + 2;
    goto LABEL_39;
  }

  *v14 = (v22 - 1) | 0x8000000000000000;
  return 1;
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 16);
  v14 = v9 + 16 + 8 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  LODWORD(v15) = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    LODWORD(v15) = v15 + 1;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 8);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 8 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 16, v4);
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F4A0;
  *(a3 + 8) = a1 + 16;
  *(a3 + 16) = a1 + 16 + 8 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>(uint64_t a1, unsigned int **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  v41 = a1 + 16;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 520;
  v15 = v4;
  v16 = 1;
  v44 = a1 + 520;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = v4;
    while (1)
    {
      v20 = v18;
      while (v19 >= v6 || v3 < *v19)
      {
        if (v20)
        {
          v21 = 1;
          if (v20 + v17 < v3 || v3 + 1 < v17)
          {
            goto LABEL_39;
          }

          v22 = v20 + v17 - 1;
          v23 = v17 > v3;
          v24 = v17 > v3;
          if (v17 >= v3)
          {
            v17 = v3;
          }

          if (v23)
          {
            v20 = v22;
          }

          if (v3 < v20 + v17)
          {
            v25 = v24;
          }

          else
          {
            v20 = v3 + 1 - v17;
            v25 = 1;
          }
        }

        else
        {
          v20 = 1;
          v17 = v3;
          v25 = 1;
        }

        v26 = *a2 + 1;
        v27 = **a2;
        *a2 = v26;
        if (v3 != v27)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v25;
        if (v26 >= a2[1])
        {
          v21 = 0;
          ++v13;
          goto LABEL_39;
        }

        v3 = *v26;
        ++v16;
        ++v13;
      }

      v21 = 1;
LABEL_39:
      if (v19 >= v6)
      {
        break;
      }

      v28 = *v19;
      if ((v19 + 1) >= v6)
      {
        v30 = 1;
        v18 = 1;
        if (!v20)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = v19[1];
        if (v29 < 0)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        if (v29 < 0)
        {
          v18 = (v29 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v18 = 1;
        }

        if (!v20)
        {
LABEL_58:
          v17 = *v19;
          goto LABEL_59;
        }
      }

      if (v20 + v17 < v28)
      {
        break;
      }

      v31 = v18 + v28;
      if (v18 + v28 < v17)
      {
        break;
      }

      v32 = v20 + v17 - v18;
      v33 = v17 > v28;
      if (v17 >= v28)
      {
        v17 = *v19;
      }

      if (v33)
      {
        v20 = v32;
      }

      if (v31 > v20 + v17)
      {
        v18 = v31 - v17;
      }

      else
      {
        v18 = v20;
      }

LABEL_59:
      v19 += v30;
      if (v3 <= v18 + v17)
      {
        v34 = v21;
      }

      else
      {
        v34 = 0;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v18 = v20;
LABEL_65:
    v35 = v18 - 1;
    if (v18 == 1)
    {
      if (v15 >= v19)
      {
        if (v6 + 16 > v14)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v6 - v19));
        if (v6 != v19)
        {
          v36 = v15;
          memmove((v14 - (v6 - v19)), v19, v6 - v19);
          v14 = v44;
          v15 = v36;
        }

        v6 = v14;
      }

      else
      {
        v4 = v19;
      }

      *v15++ = v17;
LABEL_81:
      if (v15 + v6 - v4 + 16 <= v14)
      {
        v37 = v21;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v19)
    {
      if (v6 + 16 > v14)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v6 - v19));
      if (v6 != v19)
      {
        v43 = v15;
        memmove((v14 - (v6 - v19)), v19, v6 - v19);
        v15 = v43;
        v14 = v44;
      }

      v6 = v14;
    }

    else
    {
      v4 = v19;
    }

    *v15 = v17;
    v15[1] = v35 | 0x8000000000000000;
    v15 += 2;
    goto LABEL_81;
  }

  v4 = v19;
LABEL_88:
  if (v21)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v38 = v6 - v4;
  if (v6 > v4)
  {
    v39 = v15;
    memmove(v15, v4, v6 - v4);
    v15 = (v39 + v38);
  }

  *(a1 + 8) = (v15 - v41) >> 3;
  return v12;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContextWithPfx,SIValueSet<unsigned int>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 20) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v6 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = *(a1 + 8);
  v9 = a1 + 16 + 8 * v8;
  if (v8 >= 3)
  {
    v12 = a1 + 16 + 8 * v8;
    v10 = (a1 + 16);
    do
    {
      v13 = &v10[v8 >> 1];
      v14 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        v15 = *--v13;
        v14 = v15;
      }

      if (v13 <= v10)
      {
        break;
      }

      if (v14 == v6)
      {
        v10 = v13;
        break;
      }

      if (v14 > v6)
      {
        v12 = v13;
      }

      else
      {
        v10 = v13;
      }

      v8 = (v12 - v10) >> 3;
    }

    while (v12 > v10 && v8 > 2);
  }

  else
  {
    v10 = (a1 + 16);
  }

  v46 = a1 + 16;
  v47 = a1;
  v17 = 0;
  v50 = 0;
  v18 = a1 + 520;
  v19 = v10;
  v20 = 1;
  v48 = v18;
  while (2)
  {
    v49 = v19;
    v21 = 0;
    v22 = 0;
    v23 = v10;
    while (1)
    {
      v24 = v22;
      while (v23 >= v9 || v7 < *v23)
      {
        if (v24)
        {
          v25 = 1;
          if (v24 + v21 < v7 || v7 + 1 < v21)
          {
            goto LABEL_50;
          }

          v26 = v24 + v21 - 1;
          v27 = v21 > v7;
          v28 = v21 > v7;
          if (v21 >= v7)
          {
            v21 = v7;
          }

          if (!v27)
          {
            v26 = v24;
          }

          if (v7 >= v26 + v21)
          {
            v24 = v7 + 1 - v21;
          }

          else
          {
            v24 = v26;
          }

          v29 = v7 >= v26 + v21 || v28;
        }

        else
        {
          v24 = 1;
          v21 = v7;
          v29 = 1;
        }

        if (v7 != SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v29)
        {
          ++v50;
        }

        else if (a3)
        {
          SIValueSet<unsigned int>::SIValueSetInsert(*(a3 + 8), *a3 | v7);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v17;
          goto LABEL_50;
        }

        ++v17;
        if ((*(a2 + 20) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_50;
        }

        v7 = SIValueSet<unsigned int>::FlatContextWithPfx::peek(a2);
        ++v20;
      }

      v25 = 1;
LABEL_50:
      if (v23 >= v9)
      {
        break;
      }

      v30 = *v23;
      if ((v23 + 1) >= v9)
      {
        v34 = 1;
        v22 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v31 = v23[1];
        v32 = v31 & 0x7FFFFFFFFFFFFFFFLL;
        v33 = v31 >= 0;
        v22 = 1;
        v34 = 2;
        if (v33)
        {
          v34 = 1;
        }

        else
        {
          v22 = v32 + 1;
        }

        if (!v24)
        {
LABEL_66:
          v21 = *v23;
          goto LABEL_67;
        }
      }

      if (v24 + v21 < v30)
      {
        break;
      }

      v35 = v22 + v30;
      if (v22 + v30 < v21)
      {
        break;
      }

      v22 = v24 + v21 - v22;
      v36 = v21 > v30;
      if (v21 >= v30)
      {
        v21 = *v23;
      }

      if (!v36)
      {
        v22 = v24;
      }

      if (v35 > v22 + v21)
      {
        v22 = v35 - v21;
      }

LABEL_67:
      v23 += v34;
      if (v7 <= v22 + v21)
      {
        v37 = v25;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v22 = v24;
LABEL_73:
    v38 = v22 - 1;
    if (v22 == 1)
    {
      v39 = v48;
      v40 = v49;
      if (v49 >= v23)
      {
        if (v9 + 16 > v48)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v10 = (v48 - (v9 - v23));
        if (v9 != v23)
        {
          memmove((v48 - (v9 - v23)), v23, v9 - v23);
          v10 = (v48 - (v9 - v23));
          v39 = v48;
          v40 = v49;
        }

        v9 = v39;
      }

      else
      {
        v10 = v23;
      }

      *v40 = v21;
      v19 = v40 + 1;
LABEL_89:
      if (v19 + v9 - v10 + 16 <= v39)
      {
        v43 = v25;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v39 = v48;
  v19 = v49;
  if (v22)
  {
    if (v49 + 1 >= v23)
    {
      if (v9 + 16 > v48)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v10 = (v48 - (v9 - v23));
      v41 = v9 - v23;
      if (v9 != v23)
      {
        v42 = (v48 - (v9 - v23));
        memmove(v42, v23, v41);
        v10 = v42;
        v39 = v48;
        v19 = v49;
      }

      v9 = v39;
    }

    else
    {
      v10 = v23;
    }

    *v19 = v21;
    v19[1] = v38 | 0x8000000000000000;
    v19 += 2;
    goto LABEL_89;
  }

  v10 = v23;
LABEL_96:
  if (v25)
  {
    if (v17 >= v20)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v17 != v20)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v44 = v9 - v10;
  if (v9 > v10)
  {
    v45 = v19;
    memmove(v19, v10, v9 - v10);
    v19 = (v45 + v44);
  }

  *(v47 + 8) = (v19 - v46) >> 3;
  return v50;
}

uint64_t SIValueSet<unsigned int>::FlatContextWithPfx::peek(int **a1)
{
  v1 = **a1;
  v2 = *(a1 + 5);
  if ((v2 & v1) != *(a1 + 4))
  {
    SIValueSet<unsigned int>::FlatContextWithPfx::peek();
  }

  return v1 & ~v2;
}

uint64_t SIValueSet<unsigned int>::FlatContextWithPfx::nextKey(int **a1)
{
  v1 = *(*a1)++;
  v2 = *(a1 + 5);
  if ((v2 & v1) != *(a1 + 4))
  {
    SIValueSet<unsigned int>::FlatContextWithPfx::nextKey();
  }

  return v1 & ~v2;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::KeyHolderContext::nextKey(uint64_t **a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = (v1 - 1);
    v3 = a1[2] + 1;
    a1[2] = v3;
    a1[3] = v2;
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1 + 1;
    v3 = **a1;
    *a1 = v6;
    a1[2] = v3;
    if (v6 < v5)
    {
      v7 = *v6;
      if (v7 < 0)
      {
        *a1 = v4 + 2;
        a1[3] = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }
  }

  return v3;
}

BOOL SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddKey(uint64_t a1, int a2, int a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::ContainsKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 12 + 4 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 2;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (*v4 != v3)
  {
    v13 = v4 + 1;
    do
    {
      if ((v12 & 0x80000000) != 0)
      {
        v15 = *(v13 - 2);
        v16 = v15 + (v12 & 0x7FFFFFFF);
        if (v3 >= v15 && v3 <= v16)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 > v3 || v13 >= v6)
        {
          return result;
        }
      }

      v18 = *v13++;
      v12 = v18;
    }

    while (v18 != v3);
  }

  return 1;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::CloseKey(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = a1 + 12;
  v6 = a1 + 12 + 4 * v3;
  v7 = (a1 + 12);
  if (v3 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v3;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v4)
      {
        v7 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
  }

  if (v7 >= v6)
  {
LABEL_30:
    result = *(v5 + 4 * (v3 - 1));
    if ((result & 0x80000000) != 0)
    {
      return *(v5 + 4 * (v3 - 2)) + (result & 0x7FFFFFFF);
    }
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v16 = *v15++;
      result = v16;
      if (v16 == v4)
      {
        return a2 & a3 & 0x7FFFFFFF;
      }

      if ((result & 0x80000000) != 0)
      {
        v17 = *(v7 - 1);
        if (v4 >= v17 && v4 <= (v17 + (result & 0x7FFFFFFF)))
        {
          return a2 & a3 & 0x7FFFFFFF;
        }
      }

      else if (result > v4)
      {
        return result;
      }

      v7 = v15;
      if (v15 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = (a1 + 12);
  v6 = *(a1 + 8);
  v7 = a1 + 12 + 4 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 2;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (*v5 == v4)
  {
LABEL_31:
    if (v14 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *v14;
    if ((*v14 & 0x80000000) != 0)
    {
      *v5 = v4 + 1;
      if ((v22 & 0x7FFFFFFF) != 1)
      {
        *v14 = (v22 - 1) | 0x80000000;
        return 1;
      }

      v23 = v7 - (v5 + 2);
      v24 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v23 = v7 - v14;
      v24 = v5;
    }

    memmove(v24, v14, v23);
    v25 = *(a1 + 8) - 1;
    goto LABEL_42;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x80000000) == 0)
    {
      result = 0;
      if (v15 > v4 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_29;
    }

    v19 = v5[v16 - 1];
    v20 = v19 + (v15 & 0x7FFFFFFF);
    if (v4 > v19 && v4 <= v20)
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_29:
    v15 = *v17;
    ++v16;
    if (*v17 == v4)
    {
      v5 = (v5 + v16 * 4);
      v14 = v5 + 1;
      goto LABEL_31;
    }
  }

  v26 = &v5[v16];
  v27 = &v5[v16 + 1];
  if ((v15 & 0x7FFFFFFF) == 1)
  {
    if (v27 < v7)
    {
      memmove(v26, &v5[v16 + 1], a1 + 4 * v6 - v5 - v16 * 4 + 8);
      v6 = *(a1 + 8);
    }

LABEL_41:
    v25 = v6 - 1;
LABEL_42:
    *(a1 + 8) = v25;
  }

  else if (v4 == v20)
  {
    *v26 = (v15 - 1) | 0x80000000;
  }

  else if (v4 == v19 + 1)
  {
    *v26 = v4 + 1;
    v28 = v20 + ~v4;
    if (v28)
    {
      v29 = *(a1 + 8);
      if (v29 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v30 = &v5[v16 - 2] - a1;
      if (v29 != v30 >> 2)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v29 - (v30 >> 2)));
        LODWORD(v29) = *(a1 + 8);
      }

      *(a1 + 8) = v29 + 1;
      *v27 = v28 | 0x80000000;
    }
  }

  else
  {
    v5[v16] = (v4 + ~v19) | 0x80000000;
    v31 = *(a1 + 8);
    if (v31 >= 0x3F)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
    }

    v32 = &v5[v16 - 2] - a1;
    if (v31 != v32 >> 2)
    {
      memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v31 - (v32 >> 2)));
      LODWORD(v31) = *(a1 + 8);
    }

    *(a1 + 8) = v31 + 1;
    *v27 = v4 + 1;
    v33 = v20 + ~v4;
    if (v33)
    {
      v34 = *(a1 + 8);
      if (v34 >= 0x3F)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v35 = &v5[v16];
      v36 = &v5[v16 - 1] - a1;
      if (v34 != v36 >> 2)
      {
        memmove(&v5[v16 + 3], v35 + 2, 4 * (v34 - (v36 >> 2)));
        LODWORD(v34) = *(a1 + 8);
      }

      *(a1 + 8) = v34 + 1;
      v35[2] = v33 | 0x80000000;
    }
  }

  return 1;
}

void SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::Apply(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 12);
  v14 = v9 + 12 + 4 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[4 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFF;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 4);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 4 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 12, v4);
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::valueIterator(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_287C3F540;
  *(a3 + 8) = a1 + 12;
  *(a3 + 16) = a1 + 12 + 4 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned int>::InertContext>(uint64_t a1, unsigned int **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = 4 * v5 + 12;
  v49 = a1 + 12;
  if (v5 >= 3)
  {
    v7 = (a1 + v6);
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = v7 - v4;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 264;
  v15 = v4;
  v16 = 1;
  v51 = a1 + 264;
  v52 = a1;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = a1 + v6;
    v20 = v4;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || v3 < *v20)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_41;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_41;
          }

          v25 = v21 + v17 - 1;
          v26 = v25 + v3;
          v27 = v17 > v3;
          if (v17 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v17 = v3;
            v21 = v25;
            v28 = 1;
          }

          if (v27)
          {
            v22 = v26;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          v17 = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 1;
        v32 = **a2;
        *a2 = v31;
        if (v32 != v3)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_41;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_41:
      if (v20 >= v19)
      {
        break;
      }

      v33 = *v20;
      if ((v20 + 1) >= v19)
      {
        v37 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 & 0x7FFFFFFF;
        v36 = v34 >= 0;
        if (v34 < 0)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        if (v36)
        {
          v18 = 1;
        }

        else
        {
          v18 = v35 + 1;
        }

        if (!v21)
        {
LABEL_61:
          v17 = *v20;
          goto LABEL_62;
        }
      }

      v38 = v21 + v17;
      if (v38 < v33)
      {
        break;
      }

      v39 = v18 + v33;
      if (v18 + v33 < v17)
      {
        break;
      }

      v40 = v21 - v18 + v17;
      v41 = v17 > v33;
      if (v17 >= v33)
      {
        v17 = *v20;
      }

      if (v41)
      {
        v21 = v40;
        v42 = v40 + v33;
      }

      else
      {
        v42 = v38;
      }

      if (v39 > v42)
      {
        v18 = v21 + v39 - v42;
      }

      else
      {
        v18 = v21;
      }

LABEL_62:
      v20 += v37;
      if (v18 + v17 >= v3)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v18 = v21;
LABEL_68:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v6 >= 257)
        {
          SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v44 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v51;
          a1 = v52;
          v15 = v44;
        }

        v6 = 264;
      }

      else
      {
        v4 = v20;
      }

      *v15++ = v17;
LABEL_84:
      v19 = a1 + v6;
      if (v15 + a1 + v6 - v4 + 8 <= v14)
      {
        v45 = v23;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v6 >= 257)
      {
        SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v50 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v50;
        v14 = v51;
        a1 = v52;
      }

      v6 = 264;
    }

    else
    {
      v4 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x80000000;
    v15 += 2;
    goto LABEL_84;
  }

  v4 = v20;
LABEL_91:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned int>::FlatContext,SIValueSet<unsigned int>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v19 - v4;
  if (v19 > v4)
  {
    v47 = v15;
    memmove(v15, v4, v19 - v4);
    a1 = v52;
    v15 = (v47 + v46);
  }

  *(a1 + 8) = (v15 - v49) >> 2;
  return v12;
}