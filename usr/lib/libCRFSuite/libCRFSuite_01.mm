uint64_t params_get(unsigned int **a1, char *a2, char **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  param = find_param(*a1, a2);
  if (param)
  {
    v5 = *(param + 2);
    if (v5 == 3)
    {
      v9 = param[3];
    }

    else
    {
      if (v5 == 2)
      {
        v8 = param[2];
        snprintf(__str, 0x3FFuLL, "%f");
      }

      else
      {
        if (v5 != 1)
        {
          result = 0;
          goto LABEL_12;
        }

        v6 = *(param + 3);
        snprintf(__str, 0x3FFuLL, "%d");
      }

      v9 = __str;
    }

    v10 = mystrdup(v9);
    result = 0;
    *a3 = v10;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_12:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t params_set_int(unsigned int **a1, char *a2, int a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v5 + 3) = a3;
  return result;
}

uint64_t params_set_float(unsigned int **a1, char *a2, double a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v5 + 2) = a3;
  return result;
}

uint64_t params_set_string(unsigned int **a1, char *a2, const char *a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  free(param[3]);
  v6 = mystrdup(a3);
  result = 0;
  v5[3] = v6;
  return result;
}

uint64_t params_get_int(unsigned int **a1, char *a2, _DWORD *a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(v5 + 3);
  return result;
}

uint64_t params_get_float(unsigned int **a1, char *a2, void *a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = v5[2];
  return result;
}

uint64_t params_get_string(unsigned int **a1, char *a2, void *a3)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = param;
  if (*(param + 2) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = v5[3];
  return result;
}

uint64_t params_help(unsigned int **a1, char *a2, char **a3, char **a4)
{
  param = find_param(*a1, a2);
  if (!param)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = param;
  if (a3)
  {
    v8 = *(param + 2) - 1;
    if (v8 > 2)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = off_29EE6D4D8[v8];
    }

    *a3 = mystrdup(v9);
  }

  if (!a4)
  {
    return 0;
  }

  v11 = mystrdup(v7[4]);
  result = 0;
  *a4 = v11;
  return result;
}

uint64_t params_add_int(int **a1, const char *a2, int a3, const char *a4)
{
  v7 = *a1;
  v8 = malloc_type_realloc(*(*a1 + 1), 40 * **a1 + 40, 0x10100400F471BF6uLL);
  *(v7 + 8) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (*v7)++;
  v10 = &v8[40 * v9];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *v10 = mystrdup(a2);
  *(v10 + 2) = 1;
  *(v10 + 3) = a3;
  v11 = mystrdup(a4);
  result = 0;
  *(v10 + 4) = v11;
  return result;
}

char *mystrdup(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (result)
  {

    return strcpy(result, a1);
  }

  return result;
}

uint64_t params_add_float(int **a1, const char *a2, const char *a3, double a4)
{
  v7 = *a1;
  v8 = malloc_type_realloc(*(*a1 + 1), 40 * **a1 + 40, 0x10100400F471BF6uLL);
  *(v7 + 8) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (*v7)++;
  v10 = &v8[40 * v9];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *v10 = mystrdup(a2);
  *(v10 + 2) = 2;
  *(v10 + 2) = a4;
  v11 = mystrdup(a3);
  result = 0;
  *(v10 + 4) = v11;
  return result;
}

uint64_t params_add_string(int **a1, const char *a2, const char *a3, const char *a4)
{
  v7 = *a1;
  v8 = malloc_type_realloc(*(*a1 + 1), 40 * **a1 + 40, 0x10100400F471BF6uLL);
  *(v7 + 8) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (*v7)++;
  v10 = &v8[40 * v9];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *v10 = mystrdup(a2);
  *(v10 + 2) = 3;
  *(v10 + 3) = mystrdup(a3);
  v11 = mystrdup(a4);
  result = 0;
  *(v10 + 4) = v11;
  return result;
}

const char **find_param(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); strcmp(*i, __s2); i += 5)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

void *quark_new()
{
  v0 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v2 = rumavl_new(0x10, keycmp, 0, 0);
    v1[1] = v2;
    if (v2)
    {
      *rumavl_delcb(v2) = delcb;
      *rumavl_owcb(v1[1]) = owcb;
    }

    v1[2] = 0;
  }

  return v1;
}

void quark_delete(uint64_t a1)
{
  if (a1)
  {
    rumavl_destroy(*(a1 + 8));
    free(*(a1 + 16));

    free(a1);
  }
}

uint64_t quark_get(int *a1, const char *a2)
{
  v14 = a2;
  v15 = 0;
  v4 = rumavl_find(*(a1 + 1), &v14);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v6 = strlen(a2);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    v8 = v7;
    if (v7)
    {
      strcpy(v7, a2);
    }

    v5 = &v15;
    v9 = *a1;
    v10 = a1[1];
    if (v10 <= *a1)
    {
      v12 = 2 * v10 + 2;
      a1[1] = v12;
      v11 = malloc_type_realloc(*(a1 + 2), 8 * v12, 0x10040436913F5uLL);
      *(a1 + 2) = v11;
      v9 = *a1;
    }

    else
    {
      v11 = *(a1 + 2);
    }

    v11[v9] = v8;
    v14 = v8;
    LODWORD(v15) = v9;
    rumavl_insert(*(a1 + 1), &v14);
    ++*a1;
  }

  return *v5;
}

uint64_t quark_to_id(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = 0;
  v2 = rumavl_find(*(a1 + 8), v4);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t quark_to_string(uint64_t a1, int a2)
{
  if (*a1 <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 16) + 8 * a2);
  }
}

void *rumavl_new(void *result, int (__cdecl *a2)(const void *__s1, const void *__s2, size_t __n), uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if (a3)
    {
      result = a3(0, 56, a4);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = malloc_type_malloc(0x38uLL, 0x10A00407E045CB8uLL);
      if (!result)
      {
        return result;
      }
    }

    result[3] = 0;
    result[4] = 0;
    *result = 0;
    result[1] = v7;
    result[5] = a3;
    result[6] = a4;
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = my_cmp;
    }

    result[2] = v8;
  }

  return result;
}

void rumavl_destroy(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    while (!*(v2 + 16))
    {
      v2 = *v2;
    }

    do
    {
      v4 = *(v2 + 17);
      if (v4 == 2)
      {
        i = 0;
      }

      else if (v4 == 1)
      {
        i = v2[1];
      }

      else
      {
          ;
        }
      }

      v5 = a1[4];
      if (v5)
      {
        (v5)(a1, v2, v2[3], a1[6]);
      }

      node_destroy(a1, v2);
      v2 = i;
    }

    while (i);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];

    (v6)(a1, 0, v7);
  }

  else
  {

    free(a1);
  }
}

uint64_t seq_next(uint64_t a1, int a2)
{
  v2 = (a2 + 1);
  v3 = *(a1 + (v2 >> 1) + 16);
  if (v3 == 2)
  {
    return 0;
  }

  v4 = v2 >> 1;
  if (v3 == 1)
  {
    return *(a1 + 8 * v4);
  }

  v6 = v4 ^ 1;
    ;
  }

  return result;
}

void node_destroy(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5(v4, 0, *(a1 + 48));
  }

  else
  {
    free(v4);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);

    v6(a2, 0, v7);
  }

  else
  {

    free(a2);
  }
}

uint64_t rumavl_set(uint64_t a1, const void *a2)
{
  if (!*a1)
  {
    v14 = node_new(a1, a2);
    *a1 = v14;
    if (!v14)
    {
      return 4294967294;
    }

    v15 = v14;
    result = 0;
    *v15 = v15;
    v17 = *a1;
    *(v17 + 8) = v17;
    *(v17 + 16) = 2;
    *(*a1 + 17) = 2;
    return result;
  }

  v4 = (*(a1 + 16))(a2, *(*a1 + 24), *(a1 + 8), *(a1 + 48));
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 != 0;
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >= 0;
    v8 = a1;
    while (1)
    {
      v9 = *(a1 + 40);
      v10 = v9 ? v9(0, 24, *(a1 + 48)) : malloc_type_realloc(0, 0x18uLL, 0x4FDDC69DuLL);
      v11 = v10;
      if (!v10)
      {
        break;
      }

      *v10 = v6;
      v10[1] = v8;
      *(v10 + 4) = v5;
      v12 = v7;
      if (*(*v8 + v12 + 16) > 0)
      {
        v21 = node_new(a1, a2);
        if (v21)
        {
          v22 = *(*v8 + v12);
          *&v21[8 * v12] = v22;
          v23 = *(*v8 + v12 + 16);
          v21[v12 + 16] = v23;
          v24 = !v7;
          if (v23 == 2)
          {
            *(v22 + 8 * v24) = v21;
          }

          *&v21[8 * v24] = *v8;
          v21[v24 + 16] = 1;
          *(*v8 + v12) = v21;
          *(*v8 + v12 + 16) = 0;
          stack_update(a1, v11, 1);
          return 0;
        }

        v19 = a1;
        v20 = v11;
LABEL_30:
        stack_destroy(v19, v20);
        return 4294967294;
      }

      v8 = (*v8 + 8 * v12);
      v13 = (*(a1 + 16))(a2, *(*v8 + 3), *(a1 + 8), *(a1 + 48));
      v7 = v13 >= 0;
      if (v13 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v13 != 0;
      }

      v6 = v11;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    v19 = a1;
    v20 = v6;
    goto LABEL_30;
  }

  v11 = 0;
  v8 = a1;
LABEL_20:
  stack_destroy(a1, v11);
  v18 = *(a1 + 24);
  if (!v18 || (result = v18(a1, *v8, *(*v8 + 3), a2, *(a1 + 48)), !result))
  {
    memcpy(*(*v8 + 3), a2, *(a1 + 8));
    return 0;
  }

  return result;
}

char *node_new(size_t *a1, const void *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v5 = v4(0, 32, a1[6]);
  }

  else
  {
    v5 = malloc_type_realloc(0, 0x20uLL, 0x4FDDC69DuLL);
  }

  v6 = v5;
  if (v5)
  {
    v7 = mem_mgr(a1, 0, a1[1]);
    *(v6 + 3) = v7;
    if (v7)
    {
      memcpy(v7, a2, a1[1]);
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 15) = 0;
      return v6;
    }

    v9 = a1[5];
    if (v9)
    {
      v9(v6, 0, a1[6]);
    }

    else
    {
      free(v6);
    }
  }

  return 0;
}

void stack_destroy(uint64_t a1, void **a2)
{
  if (a2)
  {
    do
    {
      v3 = *a2;
      v4 = *(a1 + 40);
      if (v4)
      {
        v4(a2, 0, *(a1 + 48));
      }

      else
      {
        free(a2);
      }

      a2 = v3;
    }

    while (v3);
  }
}

void stack_update(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  if (a2)
  {
    LOBYTE(v5) = a3;
    if (a3)
    {
      while (1)
      {
        v6 = *(v3 + 1);
        v7 = *(*v6 + 18);
        v8 = *(v3 + 4);
        v9 = (*(*v6 + 18) + v5 * v8);
        *(*v6 + 18) += v5 * v8;
        if ((v5 & 0x80) != 0)
        {
          break;
        }

        if (v8 != -1 || (v9 & 0x80000000) == 0)
        {
          v10 = v9 - (v7 & ~(v7 >> 31));
          if (v8 != 1 || v9 < 1)
          {
            v5 = 0;
          }

          else
          {
            v5 = v10;
          }

LABEL_23:
          while (v9 > 1)
          {
            v5 += balance(v6, -1);
            v6 = *(v3 + 1);
            v9 = *(*v6 + 18);
          }

          goto LABEL_24;
        }

        v5 = (v7 & (v7 >> 31)) - v9;
LABEL_24:
        if (v9 <= -2)
        {
          do
          {
            v5 += balance(v6, 1);
            v6 = *(v3 + 1);
          }

          while (*(*v6 + 18) < -1);
        }

        v13 = *v3;
        v14 = *(a1 + 40);
        if (v14)
        {
          v14(v3, 0, *(a1 + 48));
          if (!v13)
          {
            goto LABEL_33;
          }
        }

        else
        {
          free(v3);
          if (!v13)
          {
            goto LABEL_33;
          }
        }

        v3 = v13;
        if (!v5)
        {
          goto LABEL_33;
        }
      }

      if (v8 == -1 && v7 < 0)
      {
        v5 = v7 - (v9 & (v9 >> 31));
      }

      else if (v8 != 1 || v7 < 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = (v9 & ~(v9 >> 31)) - v7;
      }

      goto LABEL_23;
    }
  }

  v13 = a2;
LABEL_33:
  if (v13)
  {
    do
    {
      v15 = *v13;
      v16 = *(a1 + 40);
      if (v16)
      {
        v16(v13, 0, *(a1 + 48));
      }

      else
      {
        free(v13);
      }

      v13 = v15;
    }

    while (v15);
  }
}

uint64_t rumavl_insert(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = insert_cb;
  result = rumavl_set(a1, a2);
  *(a1 + 24) = v3;
  return result;
}

uint64_t rumavl_delete(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    return 4294967293;
  }

  v4 = (*(a1 + 16))(a2, *(*a1 + 24), *(a1 + 8), *(a1 + 48));
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 != 0;
  }

  if (v5)
  {
    v6 = 0;
    v7 = a1;
    while (1)
    {
      v8 = *(a1 + 40);
      v9 = v8 ? v8(0, 24, *(a1 + 48)) : malloc_type_realloc(0, 0x18uLL, 0x4FDDC69DuLL);
      v10 = v9;
      if (!v9)
      {
        goto LABEL_67;
      }

      *v9 = v6;
      v9[1] = v7;
      *(v9 + 4) = v5;
      v11 = (v5 + 1);
      if (*(*v7 + (v11 >> 1) + 16) >= 1)
      {
        stack_destroy(a1, v9);
        return 4294967293;
      }

      v7 = &(*v7)[v11 >> 1];
      v12 = (*(a1 + 16))(a2, (*v7)[3], *(a1 + 8), *(a1 + 48));
      if (v12 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v12 != 0;
      }

      v6 = v10;
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  v10 = 0;
  v7 = a1;
LABEL_18:
  v13 = *(a1 + 32);
  if (!v13 || (v14 = v13(a1, *v7, (*v7)[3], *(a1 + 48)), !v14))
  {
    v16 = *v7;
    v17 = (*v7 + 2);
    v18 = *(*v7 + 17);
    if (*v17 >= 1)
    {
      if (v18 < 1)
      {
        *v7 = *(v16 + 1);
        do
        {
          v25 = v7;
          v7 = *v7;
        }

        while (!*(v7 + 16));
        *v7 = *v16;
        *(*v25 + 16) = v16[16];
        v26 = *v25;
        if (v26[16] == 2)
        {
          *(*v26 + 8) = v26;
        }
      }

      else if (v10)
      {
        v19 = *(v10 + 4) + 1 + ((*(v10 + 4) + 1) >> 31);
        v20 = (*(v10 + 4) + 1) / 2;
        *(*v10[1] + 8 * v20) = *&v16[8 * v20];
        *(*v10[1] + v20 + 16) = v17[v20];
        v21 = *v10[1];
        if (*(v21 + v20 + 16) == 2)
        {
          *(*(v21 + 8 * (v19 >> 1)) + 8 * ((v19 >> 1) ^ 1)) = v21;
        }
      }

      else
      {
        *a1 = 0;
      }

LABEL_38:
      node_destroy(a1, v16);
LABEL_39:
      stack_update(a1, v10, -1);
      return 0;
    }

    if (v18 >= 1)
    {
      *v7 = *v16;
      do
      {
        v22 = v7;
        v23 = *(*v7 + 17);
        v7 = (*v7 + 1);
      }

      while (!v23);
      *v7 = *(v16 + 1);
      *(*v22 + 17) = v16[17];
      v24 = *v22;
      if (v24[17] == 2)
      {
        **(v24 + 1) = v24;
      }

      goto LABEL_38;
    }

    v27 = v16[18];
    v28 = v27 > 0;
    v29 = v27 < 1;
    if (v27 < 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v27 < 1)
    {
      v31 = -1;
    }

    else
    {
      v31 = 1;
    }

    v32 = *(a1 + 40);
    if (v32)
    {
      v33 = v32(0, 24, *(a1 + 48));
    }

    else
    {
      v33 = malloc_type_realloc(0, 0x18uLL, 0x4FDDC69DuLL);
    }

    v6 = v33;
    if (v33)
    {
      *v33 = v10;
      v33[1] = v7;
      *(v33 + 4) = v31;
      v34 = &(*v7)[v28];
      v35 = *v34;
      v36 = *v34 + 16;
      if (*(v36 + v29))
      {
        *(v35 + 8 * v29) = (*v7)[v29];
        *(v36 + v29) = *(*v7 + v29 + 16);
        v37 = *v7;
        *(v35 + 18) = *(*v7 + 18);
LABEL_71:
        node_destroy(a1, v37);
        *v7 = v35;
        *(seq_next(v35, v30) + 8 * v28) = v35;
        v10 = v6;
        goto LABEL_39;
      }

      v38 = *(a1 + 40);
      if (v38)
      {
        v39 = v38(0, 24, *(a1 + 48));
      }

      else
      {
        v39 = malloc_type_realloc(0, 0x18uLL, 0x4FDDC69DuLL);
      }

      v40 = v39;
      if (!v39)
      {
LABEL_67:
        stack_destroy(a1, v6);
        return 4294967294;
      }

      *v39 = v6;
      v39[1] = v34;
      *(v39 + 4) = v30;
      v41 = (v35 + 8 * v29);
      v42 = *v41;
      v43 = (*v41 + 16);
      if (v43[v29])
      {
        v6 = v39;
        v44 = v35;
LABEL_64:
        v35 = v42;
        if (v43[v28])
        {
          *(v44 + v29 + 16) = 1;
        }

        else
        {
          *v41 = *(v42 + 8 * v28);
        }

        *v42 = **v7;
        *v43 = *(*v7 + 16);
        *(v42 + 8) = (*v7)[1];
        *(v42 + 17) = *(*v7 + 17);
        *(v42 + 18) = *(*v7 + 18);
        v40[1] = v42 + 8 * v28;
        v37 = *v7;
        goto LABEL_71;
      }

      v10 = v39;
      while (1)
      {
        v44 = v42;
        v45 = *(a1 + 40);
        v46 = v45 ? v45(0, 24, *(a1 + 48)) : malloc_type_realloc(0, 0x18uLL, 0x4FDDC69DuLL);
        v6 = v46;
        if (!v46)
        {
          break;
        }

        *v46 = v10;
        v46[1] = v41;
        *(v46 + 4) = v30;
        v41 = (v44 + 8 * v29);
        v42 = *v41;
        v43 = (*v41 + 16);
        v10 = v46;
        if (v43[v29])
        {
          goto LABEL_64;
        }
      }
    }

    v6 = v10;
    goto LABEL_67;
  }

  v15 = v14;
  stack_destroy(a1, v10);
  return v15;
}

uint64_t rumavl_find(uint64_t *a1, uint64_t a2)
{
  v3 = 0;
  rumavl_node_find(a1, a2, &v3);
  return v3;
}

uint64_t rumavl_node_find(uint64_t *a1, uint64_t a2, void *a3)
{
  if (!a2 || (v5 = *a1) == 0)
  {
LABEL_8:
    v10 = 0;
    v5 = 0;
    if (!a3)
    {
      return v5;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v7 = (a1[2])(a2, *(v5 + 24), a1[1], a1[6]);
    v8 = v7 != 0;
    if (v7 < 0)
    {
      v8 = -1;
    }

    if (!v8)
    {
      break;
    }

    v9 = (v8 + 1);
    if (*(v5 + (v9 >> 1) + 16) > 0)
    {
      goto LABEL_8;
    }

    v5 = *(v5 + 8 * (v9 >> 1));
  }

  if (a3)
  {
    v10 = *(v5 + 24);
LABEL_12:
    *a3 = v10;
  }

  return v5;
}

uint64_t rumavl_node_next(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  if (!a3)
  {
    goto LABEL_13;
  }

  if (a3 < 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (!a2)
  {
    result = *a1;
    if (result)
    {
        ;
      }

      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    result = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = seq_next(a2, v6);
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (!a4)
  {
    return result;
  }

  v8 = *(result + 24);
LABEL_14:
  *a4 = v8;
  return result;
}

uint64_t rumavl_foreach(uint64_t *a1, int a2, uint64_t (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v8 = rumavl_node_next(a1, 0, a2, &v11);
  if (!v8)
  {
    return 4294967293;
  }

  v9 = v8;
  do
  {
    result = a3(a1, v11, a4);
    if (result)
    {
      break;
    }

    result = rumavl_node_next(a1, v9, a2, &v11);
    v9 = result;
  }

  while (result);
  return result;
}

const char *rumavl_strerror(unsigned int a1)
{
  if (a1 != 0 && a1 < 0xFFFFFFFA)
  {
    return "UNKNOWN ERROR";
  }

  else
  {
    return off_29EE6D4F0[a1 + 6];
  }
}

void *mem_mgr(uint64_t a1, void *ptr, size_t size)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 48);

    return v4(ptr, size, v5);
  }

  else if (size)
  {

    return malloc_type_realloc(ptr, size, 0x4FDDC69DuLL);
  }

  else
  {
    free(ptr);
    return 0;
  }
}

uint64_t balance(uint64_t *a1, int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = a2 * a2 == 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5 && (v6 = (a2 + 1) >> 1, *(v4 + (v6 ^ 1) + 16) <= 0))
    {
      v9 = (v4 + 8 * (v6 ^ 1));
      if (*(*v9 + 18) == a2 && !*(*v9 + v6 + 16))
      {
        v10 = rotate(v9, -a2);
      }

      else
      {
        v10 = 0;
      }

      return (rotate(a1, a2) + v10);
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

uint64_t rotate(uint64_t *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1 && a2 * a2 == 1)
    {
      v4 = (a2 + 1) >> 1;
      v5 = v4 ^ 1;
      if (*(v2 + 16 + (v4 ^ 1)) <= 0)
      {
        v8 = *(v2 + 18);
        if (a2 == -1)
        {
          if (v8 < 1)
          {
            goto LABEL_18;
          }

          if (*(*(v2 + 8) + 18) < 1)
          {
LABEL_23:
            v6 = 0;
LABEL_24:
            v10 = *(v2 + 8 * v5);
            *a1 = v10;
            if (*(v10 + v4 + 16) < 1)
            {
              v11 = 0;
              *(v2 + 8 * v5) = *(v10 + 8 * v4);
            }

            else
            {
              v11 = 1;
            }

            *(v2 + 16 + v5) = v11;
            *(*a1 + 8 * v4) = v2;
            *(*a1 + v4 + 16) = 0;
            v12 = *(v2 + 18);
            v13 = *a1;
            v14 = *(*a1 + 18);
            v15 = v12 >> 7;
            if (v12 >= 1)
            {
              v15 = 1;
            }

            v16 = v14 >> 7;
            if (v14 >= 1)
            {
              LOBYTE(v16) = 1;
            }

            if (v15 + a2)
            {
              if (-a2 == v16)
              {
                v19 = a2 - v14 + v12;
              }

              else
              {
                v19 = v12 + a2;
              }

              *(v2 + 18) = v19;
              v18 = v19 + a2 + *(v13 + 18);
              goto LABEL_41;
            }

            if (v16 == v15)
            {
              v17 = a2 - v14 + v12;
              *(v2 + 18) = v17;
              if (v17 * a2 >= 1)
              {
                v18 = v14 + a2 + v17;
LABEL_41:
                *(v13 + 18) = v18;
                return v6;
              }
            }

            else
            {
              *(v2 + 18) = v12 + a2;
            }

            v18 = *(v13 + 18) + a2;
            goto LABEL_41;
          }
        }

        else if (a2 == 1)
        {
          if ((v8 & 0x80) == 0)
          {
LABEL_13:
            v9 = v8 == 255;
            goto LABEL_19;
          }

          if ((*(*v2 + 18) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          if (v8 == 255)
          {
            goto LABEL_13;
          }

LABEL_17:
          v6 = -1;
          goto LABEL_24;
        }

        if (v8 > 1)
        {
          goto LABEL_17;
        }

LABEL_18:
        v9 = v8 == 1;
LABEL_19:
        v6 = !v9;
        goto LABEL_24;
      }
    }
  }

  return 0;
}

uint64_t exchange_options(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0)
  {
    (*(a1 + 96))(a1, "variance", a2);
    (*(a1 + 96))(a1, "gamma", a2 + 8);
    (*(a1 + 88))(a1, "max_iterations", a2 + 16);
    v6 = *(a1 + 96);

    return v6(a1, "epsilon", a2 + 24);
  }

  else
  {
    params_add_float(a1, "variance", "The initial variance of every feature weight.", 1.0);
    params_add_float(a1, "gamma", "Tradeoff parameter.", 1.0);
    params_add_int(a1, "max_iterations", 100, "The maximum number of iterations.");

    return params_add_float(a1, "epsilon", "The stopping criterion (the mean loss).", 0.0);
  }
}

uint64_t crfsuite_train_arow(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, void *a5, void *a6)
{
  v170 = *(a2 + 16);
  v10 = *(a1 + 44);
  v9 = *(a1 + 48);
  v175 = 0u;
  v176[0] = 0u;
  v11 = clock();
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v12 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  *&v173 = v12;
  v13 = 0;
  *&v174 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
  size = v10;
  DWORD2(v174) = v10;
  if (!v174)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_55:
    free(v13);
    v155 = 2147483649;
    v13 = v16;
    v16 = v15;
    v15 = v14;
    v14 = 0;
    goto LABEL_56;
  }

  v163 = v11;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!v12)
  {
    goto LABEL_55;
  }

  (*(a4 + 96))(a4, "variance", &v175);
  (*(a4 + 96))(a4, "gamma", &v175 + 8);
  (*(a4 + 88))(a4, "max_iterations", v176);
  (*(a4 + 96))(a4, "epsilon", v176 + 8);
  v14 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v15 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v16 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v17 = malloc_type_calloc(4uLL, v9, 0x100004052888210uLL);
  v13 = v17;
  if (!v14 || !v15 || !v16 || !v17)
  {
    goto LABEL_55;
  }

  v24 = a5;
  if (size >= 1)
  {
    v25 = v175;
    v26 = (size + 1) & 0xFFFFFFFE;
    v27 = vdupq_n_s64(size - 1);
    v28 = xmmword_297732570;
    v29 = v15 + 1;
    v30 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v27, v28));
      if (v31.i8[0])
      {
        *(v29 - 1) = v25;
      }

      if (v31.i8[4])
      {
        *v29 = v25;
      }

      v28 = vaddq_s64(v28, v30);
      v29 += 2;
      v26 -= 2;
    }

    while (v26);
  }

  logging(a5, "Adaptive Regularization of Weights (AROW)\n", v18, v19, v20, v21, v22, v23, v157);
  logging(a5, "variance: %f\n", v32, v33, v34, v35, v36, v37, v175);
  logging(a5, "gamma: %f\n", v38, v39, v40, v41, v42, v43, *(&v175 + 1));
  logging(a5, "max_iterations: %d\n", v44, v45, v46, v47, v48, v49, LODWORD(v176[0]));
  logging(a5, "epsilon: %f\n", v50, v51, v52, v53, v54, v55, *(&v176[0] + 1));
  logging(a5, "\n", v56, v57, v58, v59, v60, v61, v158);
  v62 = 0;
  while (v62 < SLODWORD(v176[0]))
  {
    v169 = v62;
    v168 = clock();
    dataset_shuffle(a2);
    v69 = 0.0;
    v70 = 0.0;
    if (v170 >= 1)
    {
      for (i = 0; i != v170; ++i)
      {
        v171 = 0.0;
        v72 = dataset_get(a2, i);
        (*(a1 + 88))(a1, v14, 1.0);
        (*(a1 + 96))(a1, v72);
        (*(a1 + 112))(a1, v13, &v171);
        v73 = *v72;
        if (v73 >= 1)
        {
          v74 = 0;
          v75 = 0;
          v76 = 4 * v73;
          do
          {
            if (*(*(v72 + 2) + v74) != *&v13[v74])
            {
              ++v75;
            }

            v74 += 4;
          }

          while (v76 != v74);
          if (v75)
          {
            (*(a1 + 104))(a1);
            v77 = v171;
            v78 = DWORD2(v172);
            if (SDWORD2(v172) >= 1)
            {
              v79 = v172;
              v80 = v174;
              do
              {
                v81 = *v79++;
                *(v80 + 8 * v81) = 0;
                --v78;
              }

              while (v78);
            }

            v82 = v77 - 0.0 + v75;
            DWORD2(v172) = 0;
            *(&v173 + 1) = 0x3FF0000000000000;
            (*(a1 + 80))(a1, v72, *(v72 + 2), delta_collect, &v172);
            *(&v173 + 1) = 0xBFF0000000000000;
            (*(a1 + 80))(a1, v72, v13, delta_collect, &v172);
            v83 = DWORD2(v172);
            if (SDWORD2(v172) < 1)
            {
              DWORD2(v172) = 0;
            }

            else
            {
              v84 = 0;
              v85 = 0;
              do
              {
                v86 = v173;
                v87 = *(v172 + 4 * v84);
                if (!*(v173 + v87))
                {
                  *(v172 + 4 * v85++) = v87;
                  *(v86 + v87) = 1;
                  v83 = DWORD2(v172);
                }

                ++v84;
              }

              while (v84 < v83);
              DWORD2(v172) = v85;
              if (v85 >= 1)
              {
                v88 = 0;
                do
                {
                  *(v173 + *(v172 + 4 * v88++)) = 0;
                  v89 = SDWORD2(v172);
                }

                while (v88 < SDWORD2(v172));
                if (SDWORD2(v172) >= 1)
                {
                  v90 = v172;
                  v91 = v174;
                  v92 = SDWORD2(v172);
                  do
                  {
                    v93 = *v90++;
                    v16[v93] = *(v91 + 8 * v93) * *(v91 + 8 * v93);
                    --v92;
                  }

                  while (v92);
                  v94 = *(&v175 + 1);
                  v95 = v172;
                  v96 = v89;
                  do
                  {
                    v97 = *v95++;
                    v94 = v94 + v16[v97] * *&v15[v97];
                    --v96;
                  }

                  while (v96);
                  v98 = v172;
                  v99 = v174;
                  v100 = v82 / v94;
                  do
                  {
                    v101 = *v98++;
                    *&v14[v101] = *&v14[v101] + v100 * *&v15[v101] * *(v99 + 8 * v101);
                    *&v15[v101] = 1.0 / (1.0 / *&v15[v101] + v16[v101] / *(&v175 + 1));
                    --v89;
                  }

                  while (v89);
                }
              }
            }

            v70 = v70 + v82;
          }
        }
      }
    }

    v62 = v169 + 1;
    v24 = a5;
    logging(a5, "***** Iteration #%d *****\n", v63, v64, v65, v66, v67, v68, (v169 + 1));
    logging(a5, "Loss: %f\n", v102, v103, v104, v105, v106, v107, *&v70);
    if (size >= 1)
    {
      v69 = 0.0;
      v114 = v14;
      v115 = size;
      do
      {
        v116 = *v114++;
        v69 = v69 + v116 * v116;
        --v115;
      }

      while (v115);
    }

    logging(a5, "Feature norm: %f\n", v108, v109, v110, v111, v112, v113, COERCE__INT64(sqrt(v69)));
    v117 = clock();
    logging(a5, "Seconds required for this iteration: %.3f\n", v118, v119, v120, v121, v122, v123, COERCE__INT64((v117 - v168) / 1000000.0));
    if (a3)
    {
      holdout_evaluation(a1, a3, v14, a5);
    }

    logging(a5, "\n", v124, v125, v126, v127, v128, v129, v159);
    if (v70 / v170 <= *(v176 + 1))
    {
      logging(a5, "Terminated with the stopping criterion\n", v130, v131, v132, v133, v134, v135, v160);
      logging(a5, "\n", v136, v137, v138, v139, v140, v141, v161);
      break;
    }
  }

  v142 = clock();
  logging(v24, "Total seconds required for training: %.3f\n", v143, v144, v145, v146, v147, v148, COERCE__INT64((v142 - v163) / 1000000.0));
  logging(v24, "\n", v149, v150, v151, v152, v153, v154, v162);
  v155 = 0;
LABEL_56:
  free(v13);
  free(v16);
  free(v15);
  *a6 = v14;
  delta_finish(&v172);
  return v155;
}

double delta_collect(uint64_t a1, int a2, double a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *a1;
  if (v7 <= v6)
  {
    v9 = 2 * v7 + 2;
    *(a1 + 12) = v9;
    v8 = malloc_type_realloc(v8, 4 * v9, 0x100004052888210uLL);
    *a1 = v8;
    v6 = *(a1 + 8);
  }

  *(a1 + 8) = v6 + 1;
  *(v8 + v6) = a2;
  v10 = *(a1 + 32);
  result = *(v10 + 8 * a2) + *(a1 + 24) * a3;
  *(v10 + 8 * a2) = result;
  return result;
}

double delta_finish(void **a1)
{
  free(*a1);
  free(a1[2]);
  free(a1[4]);
  result = 0.0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return result;
}

void ME_Efficient_Model_Trainer::~ME_Efficient_Model_Trainer(ME_Efficient_Model_Trainer *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    nlp::BurstTrieRelease(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  v8 = (this + 312);
  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 288);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = *(this + 33);
  if (v4)
  {
    *(this + 34) = v4;
    operator delete(v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    *(this + 31) = v5;
    operator delete(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    *(this + 27) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(this + 168);
  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  v8 = (this + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 72);
  v8 = (this + 40);
  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void ME_Efficient_Model_Trainer::StringBag::~StringBag(ME_Efficient_Model_Trainer::StringBag *this)
{
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 8);
}

double ME_Efficient_Model_Trainer::FunctionGradient(ME_Efficient_Model_Trainer *this, uint64_t **a2, double **a3)
{
  v3 = ((*(this + 27) - *(this + 26)) >> 2);
  v4 = *a2;
  v5 = a2[1];
  if (v3 != v5 - *a2)
  {
    ME_Efficient_Model_Trainer::FunctionGradient();
  }

  if (v5 != v4)
  {
    v9 = *(this + 18);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    do
    {
      v10 = *v4++;
      *v9++ = v10;
      --v3;
    }

    while (v3);
  }

  ME_Efficient_Model_Trainer::update_model_expectation(this);
  v12 = *(this + 4);
  v14 = *a2;
  v13 = a2[1];
  if (v12 == 0.0)
  {
    v15 = v13 - v14;
    if (v15)
    {
      v16 = v15 >> 3;
      v17 = *(this + 30);
      v18 = *(this + 33);
      v19 = *a3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      do
      {
        v20 = *v17++;
        v21 = v20;
        v22 = *v18++;
        *v19++ = -(v21 - v22);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v23 = v13 - v14;
    if (v23)
    {
      v24 = v23 >> 3;
      v25 = *(this + 30);
      v26 = *(this + 33);
      v27 = *(this + 18);
      v28 = v12 * -2.0;
      v29 = *a3;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      do
      {
        v30 = *v25++;
        v31 = v30;
        v32 = *v26++;
        v33 = v31 - v32;
        v34 = *v27++;
        *v29++ = -(v33 + v28 * v34);
        --v24;
      }

      while (v24);
    }
  }

  return -v11;
}

void ME_Efficient_Model_Trainer::update_model_expectation(ME_Efficient_Model_Trainer *this)
{
  std::vector<double>::resize(this + 33, ((*(this + 27) - *(this + 26)) >> 2));
  v2 = *(this + 27) - *(this + 26);
  v3 = v2 >> 2;
  if ((v2 >> 2) >= 1)
  {
    bzero(*(this + 33), (2 * v2) & 0x3FFFFFFF8);
  }

  v4 = *(this + 5);
  if (v4 == *(this + 6))
  {
    v26 = 0.0;
    v7 = *(this + 5);
    v6 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    v7 = *(this + 5);
    do
    {
      std::vector<double>::vector[abi:ne200100](v35, *(this + 58));
      v8 = ME_Efficient_Model_Trainer::conditional_probability(this, v7, v35);
      v9 = *v7;
      v10 = v35[0];
      v11 = log(v35[0][v9]);
      if (v8 == v9)
      {
        ++v5;
      }

      v13 = v7[1];
      v12 = v7[2];
      if (v13 != v12)
      {
        v14 = *(this + 36);
        do
        {
          v15 = v14 + 24 * *v13;
          v16 = *v15;
          if (*v15 != *(v15 + 8))
          {
            do
            {
              v17 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v16);
              v10 = v35[0];
              v18 = *v16++;
              *(*(this + 33) + 8 * v18) = v35[0][v17] + *(*(this + 33) + 8 * v18);
              v14 = *(this + 36);
            }

            while (v16 != *(v14 + 24 * *v13 + 8));
            v12 = v7[2];
          }

          ++v13;
        }

        while (v13 != v12);
      }

      v20 = v7[4];
      v19 = v7[5];
      if (v20 != v19)
      {
        v21 = *(this + 36);
        do
        {
          v22 = v21 + 24 * *v20;
          v23 = *v22;
          if (*v22 != *(v22 + 8))
          {
            do
            {
              v24 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v23);
              v10 = v35[0];
              v25 = *v23++;
              *(*(this + 33) + 8 * v25) = *(*(this + 33) + 8 * v25) + v35[0][v24] * v20[1];
              v21 = *(this + 36);
            }

            while (v23 != *(v21 + 24 * *v20 + 8));
            v19 = v7[5];
          }

          v20 += 2;
        }

        while (v20 != v19);
      }

      if (v10)
      {
        v35[1] = v10;
        operator delete(v10);
      }

      v6 = v6 + v11;
      v7 += 10;
    }

    while (v7 != *(this + 6));
    v4 = *(this + 5);
    v3 = (*(this + 27) - *(this + 26)) >> 2;
    v26 = v5;
  }

  v27 = (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 4));
  v28 = v3;
  if (v3 >= 1)
  {
    v29 = *(this + 33);
    v30 = v3;
    do
    {
      *v29 = *v29 / v27;
      ++v29;
      --v30;
    }

    while (v30);
  }

  *(this + 42) = 1.0 - v26 / v27;
  v31 = v6 / v27;
  v32 = *(this + 4);
  if (v32 > 0.0 && v3 >= 1)
  {
    v33 = *(this + 18);
    do
    {
      v34 = *v33++;
      v31 = v31 + -(v34 * v34) * v32;
      --v28;
    }

    while (v28);
  }
}

void sub_29770FA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Efficient_Model_Trainer::perform_GIS(char **this, uint64_t a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "C = ", 4);
  v5 = MEMORY[0x29C272E00](v4, a2);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v36, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v7 = MEMORY[0x29EDC93C0];
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "performing AGIS", 15);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v36, MEMORY[0x29EDC93D0]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v10 = 0;
  v36.__locale_ = 0;
  locale = 0;
  v11 = (this + 18);
  v12 = 1;
  v38 = 0;
  v13 = "iter = %2d  C = %d  f = %10.7f  train_err = %7.5f";
  v14 = MEMORY[0x29EDCA610];
  v15 = -999999.0;
  do
  {
    ME_Efficient_Model_Trainer::update_model_expectation(this);
    v17 = v16;
    fprintf(*v14, v13, v10, v12, *&v16, this[42]);
    if (this[40] != this[39])
    {
      v18 = ME_Efficient_Model_Trainer::heldout_likelihood(this);
      fprintf(*v14, "  heldout_logl(err) = %f (%6.4f)", v18, *(this + 43));
    }

    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v19 = std::locale::use_facet(&v39, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v39);
    std::ostream::put();
    std::ostream::flush();
    if (v17 >= v15)
    {
      HIDWORD(v21) = -858993459 * v10 + 429496728;
      LODWORD(v21) = HIDWORD(v21);
      v20 = v21 >> 1;
      v23 = v12 > 1 && v20 < 0x19999999;
      if (&v36 != v11)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v36, this[18], this[19], (this[19] - this[18]) >> 3);
      }

      v24 = v14;
      v25 = v13;
      v12 = (v12 - v23);
      v26 = this[27] - this[26];
      if ((v26 >> 2) >= 1)
      {
        v27 = this[30];
        v28 = this[33];
        v29 = (v26 >> 2) & 0x7FFFFFFF;
        v30 = this[18];
        do
        {
          v31 = *v27++;
          v32 = v31;
          v33 = *v28++;
          *v30 = *v30 + log(v32 / v33) / v12;
          ++v30;
          --v29;
        }

        while (v29);
      }

      v10 = (v10 + 1);
      v15 = v17;
      v13 = v25;
      v14 = v24;
      v11 = (this + 18);
    }

    else
    {
      if (&v36 != v11)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v11, v36.__locale_, locale, (locale - v36.__locale_) >> 3);
      }

      v12 = (v12 + 1);
    }
  }

  while (v10 < 200);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v34 = std::locale::use_facet(&v39, MEMORY[0x29EDC93D0]);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(&v39);
  std::ostream::put();
  std::ostream::flush();
  if (v36.__locale_)
  {
    locale = v36.__locale_;
    operator delete(v36.__locale_);
  }

  return 0;
}

void sub_29770FE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::locale a18)
{
  std::locale::~locale(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double ME_Efficient_Model_Trainer::heldout_likelihood(ME_Efficient_Model_Trainer *this)
{
  v2 = *(this + 39);
  if (v2 == *(this + 40))
  {
    v9 = 0.0;
    v4 = 0.0;
    v5 = *(this + 39);
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    v5 = *(this + 39);
    do
    {
      std::vector<double>::vector[abi:ne200100](v12, *(this + 58));
      v6 = ME_Efficient_Model_Trainer::classify(this, v5, v12);
      v7 = *v5;
      v5 += 10;
      v8 = v12[0];
      v4 = v4 + log(*(v12[0] + 8 * v7));
      if (v6 == v7)
      {
        ++v3;
      }

      v12[1] = v8;
      operator delete(v8);
    }

    while (v5 != *(this + 40));
    v2 = *(this + 39);
    v9 = v3;
  }

  v10 = (0xCCCCCCCCCCCCCCCDLL * ((v5 - v2) >> 4));
  *(this + 43) = 1.0 - v9 / v10;
  return v4 / v10;
}

void sub_29770FFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Efficient_Model_Trainer::perform_QUASI_NEWTON(ME_Efficient_Model_Trainer *this)
{
  v2 = *(this + 27) - *(this + 26);
  std::vector<double>::vector[abi:ne200100](v18, (v2 >> 2));
  v3 = (v2 >> 2) & 0x7FFFFFFF;
  if ((v2 >> 2) >= 1)
  {
    v4 = *(this + 18);
    v5 = v18[0];
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v4++;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  if (*(this + 3) <= 0.0)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "performing LBFGS", 16);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    ME_Efficient_Model_Trainer::perform_LBFGS(this, v18, __p);
  }

  else
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "performing OWLQN", 16);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    ME_Efficient_Model_Trainer::perform_OWLQN(this, v18, __p, *(this + 3));
  }

  v12 = __p[0];
  if ((v2 >> 2) < 1)
  {
    if (!__p[0])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *(this + 18);
    v14 = __p[0];
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v3;
    }

    while (v3);
  }

  operator delete(v12);
LABEL_13:
  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return 0;
}

void sub_2977101E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Efficient_Model_Trainer::conditional_probability(uint64_t a1, void *a2, double **a3)
{
  std::vector<double>::vector[abi:ne200100](&v43, *(a1 + 232));
  v7 = a2[1];
  v6 = a2[2];
  if (v7 != v6)
  {
    v8 = *(a1 + 288);
    do
    {
      v9 = (v8 + 24 * *v7);
      v10 = *v9;
      if (*v9 != v9[1])
      {
        do
        {
          v11 = *v10;
          v12 = *(*(a1 + 144) + 8 * v11);
          v13 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((a1 + 168), v11);
          v43[v13] = v12 + v43[v13];
          ++v10;
          v8 = *(a1 + 288);
        }

        while (v10 != *(v8 + 24 * *v7 + 8));
        v6 = a2[2];
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v15 = a2[4];
  v14 = a2[5];
  if (v15 != v14)
  {
    v16 = *(a1 + 288);
    do
    {
      v17 = (v16 + 24 * *v15);
      v18 = *v17;
      if (*v17 != v17[1])
      {
        do
        {
          v19 = *v18;
          v20 = *(*(a1 + 144) + 8 * v19);
          v21 = v15[1];
          v22 = ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((a1 + 168), v19);
          v43[v22] = v43[v22] + v20 * v21;
          ++v18;
          v16 = *(a1 + 288);
        }

        while (v18 != *(v16 + 24 * *v15 + 8));
        v14 = a2[5];
      }

      v15 += 2;
    }

    while (v15 != v14);
  }

  v23 = v43;
  v24 = v43 + 1;
  v25 = v43 == v44 || v24 == v44;
  v26 = v43;
  if (!v25)
  {
    v27 = *v43;
    v26 = v43;
    v28 = v43 + 1;
    do
    {
      v29 = *v28++;
      v30 = v29;
      if (v27 < v29)
      {
        v27 = v30;
        v26 = v24;
      }

      v24 = v28;
    }

    while (v28 != v44);
  }

  v31 = *(a1 + 232);
  if (v31 < 1)
  {
    v39 = 0;
    if (!v43)
    {
      return v39;
    }

    goto LABEL_32;
  }

  v32 = 0.0;
  v33 = fmax(*v26 + -700.0, 0.0);
  v34 = *a3;
  v35 = v31;
  v36 = v43;
  do
  {
    v37 = exp(*v36 - v33);
    if (v37 == 0.0)
    {
      __assert_rtn("conditional_probability", "efficient_maxent.cpp", 140, "prod != 0");
    }

    *v34++ = v37;
    v32 = v32 + v37;
    ++v36;
    --v35;
  }

  while (v35);
  v38 = 0;
  LODWORD(v39) = 0;
  v40 = *a3;
  do
  {
    v41 = v40[v38] / v32;
    v40[v38] = v41;
    if (v41 <= v40[v39])
    {
      v39 = v39;
    }

    else
    {
      v39 = v38;
    }

    ++v38;
  }

  while (v31 != v38);
  if ((v39 & 0x80000000) != 0)
  {
    __assert_rtn("conditional_probability", "efficient_maxent.cpp", 148, "max_label >= 0");
  }

  if (v23)
  {
LABEL_32:
    v44 = v23;
    operator delete(v23);
  }

  return v39;
}

void sub_2977104AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ME_Efficient_Model_Trainer::classify(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 232) != ((*(a3 + 8) - *a3) >> 3))
  {
    ME_Efficient_Model_Trainer::classify();
  }

  ME_Efficient_Model_Trainer::conditional_probability(a1, a2, a3);
  v4 = *(a3 + 8) - *a3;
  if ((v4 >> 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(result) = 0;
  v7 = (v4 >> 3) & 0x7FFFFFFF;
  v8 = 0.0;
  do
  {
    v9 = *(*a3 + 8 * v5);
    if (v9 <= v8)
    {
      result = result;
    }

    else
    {
      result = v5;
    }

    if (v9 > v8)
    {
      v8 = *(*a3 + 8 * v5);
    }

    ++v5;
  }

  while (v7 != v5);
  return result;
}

uint64_t ME_Efficient_Model_Trainer::make_feature_bag(ME_Efficient_Model_Trainer *this, int a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  if (a2 <= 0)
  {
    i = *(this + 6);
  }

  else
  {
    v5 = *(this + 5);
    for (i = *(this + 6); v5 != i; i = *(this + 6))
    {
      for (j = *(v5 + 8); j != *(v5 + 16); ++j)
      {
        ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v18, *v5, *j);
        v19 = v18;
        v22 = &v19;
        v7 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v19);
        ++*(v7 + 5);
      }

      for (k = *(v5 + 32); k != *(v5 + 40); k += 4)
      {
        ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v18, *v5, *k);
        v19 = v18;
        v22 = &v19;
        v9 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v19);
        ++*(v9 + 5);
      }

      v5 += 80;
    }
  }

  v10 = *(this + 5);
  if (v10 == i)
  {
    v11 = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    do
    {
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 8);
      v15 = (v13 - v14) >> 2;
      if (v11 <= v15)
      {
        v11 = v15;
      }

      else
      {
        v11 = v11;
      }

      if (v13 != v14)
      {
        do
        {
          ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v19, *v10, *v14);
          if (a2 < 1 || (v18 = v19, v22 = &v18, *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v18) + 5) > a2))
          {
            ME_Efficient_Model_Trainer::ME_FeatureBag::Put((this + 168), &v19);
          }

          ++v14;
        }

        while (v14 != *(v10 + 16));
      }

      for (m = *(v10 + 32); m != *(v10 + 40); m += 4)
      {
        ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v19, *v10, *m);
        if (a2 >= 1)
        {
          v18 = v19;
          v22 = &v18;
          if (*(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v20, &v18) + 5) <= a2)
          {
            continue;
          }
        }

        ME_Efficient_Model_Trainer::ME_FeatureBag::Put((this + 168), &v19);
      }

      v10 += 80;
    }

    while (v10 != *(this + 6));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(v20);
  ME_Efficient_Model_Trainer::init_feature2mef(this);
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(v20);
  return v11;
}

void sub_2977107DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ME_Efficient_Model_Trainer::ME_FeatureBag::Put(ME_Efficient_Model_Trainer::ME_FeatureBag *this, const ME_Efficient_Model_Trainer::ME_Feature *a2)
{
  LODWORD(v18) = *a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(this, &v18);
  if (v4)
  {
    return *(v4 + 5);
  }

  v6 = *(this + 5);
  v7 = *(this + 6);
  v8 = *(this + 7);
  v9 = v7 - v6;
  v5 = (v7 - v6) >> 2;
  if (v7 >= v8)
  {
    v11 = v5 + 1;
    if ((v5 + 1) >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v6;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 40, v14);
    }

    *(4 * v5) = *a2;
    v10 = 4 * v5 + 4;
    memcpy(0, v6, v9);
    v15 = *(this + 5);
    *(this + 5) = 0;
    *(this + 6) = v10;
    *(this + 7) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = *a2;
    v10 = (v7 + 4);
  }

  *(this + 6) = v10;
  v17 = *a2;
  v18 = &v17;
  *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this, &v17) + 5) = v5;
  return v5;
}

uint64_t ME_Efficient_Model_Trainer::init_feature2mef(ME_Efficient_Model_Trainer *this)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 36);
  result = nlp::BurstTrieGetCount(*(this + 17));
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      __src = 0;
      v18 = 0;
      v19 = 0;
      if (*(this + 58) >= 1)
      {
        v4 = 0;
        do
        {
          ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v16, v4, i);
          v20 = v16;
          v5 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(this + 21, &v20);
          if (v5)
          {
            v6 = *(v5 + 5);
            if ((v6 & 0x80000000) == 0)
            {
              v7 = v18;
              if (v18 >= v19)
              {
                v9 = __src;
                v10 = v18 - __src;
                v11 = (v18 - __src) >> 2;
                v12 = v11 + 1;
                if ((v11 + 1) >> 62)
                {
                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                v13 = v19 - __src;
                if ((v19 - __src) >> 1 > v12)
                {
                  v12 = v13 >> 1;
                }

                if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v14 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v14 = v12;
                }

                if (v14)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v14);
                }

                *(4 * v11) = v6;
                v8 = 4 * v11 + 4;
                memcpy(0, v9, v10);
                v15 = __src;
                __src = 0;
                v18 = v8;
                v19 = 0;
                if (v15)
                {
                  operator delete(v15);
                }
              }

              else
              {
                *v18 = v6;
                v8 = (v7 + 4);
              }

              v18 = v8;
            }
          }

          ++v4;
        }

        while (v4 < *(this + 58));
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](this + 288, &__src);
      if (__src)
      {
        v18 = __src;
        operator delete(__src);
      }

      result = nlp::BurstTrieGetCount(*(this + 17));
    }
  }

  return result;
}

void sub_297710AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void ME_Efficient_Model_Trainer::add_training_sample(ME_Efficient_Model_Trainer *this, const void **a2)
{
  v41 = 0;
  *v40 = 0u;
  v39 = 0u;
  *__p = 0u;
  *__src = 0u;
  v36 = ME_Efficient_Model_Trainer::StringBag::Put(this + 8, a2);
  if (v36 >= 256)
  {
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: too many types of labels.", 32);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v34);
    exit(1);
  }

  for (i = a2[3]; i != a2[4]; i += 24)
  {
    v35 = 0;
    v5 = i;
    if (i[23] < 0)
    {
      v5 = *i;
    }

    v6 = strlen(v5);
    v7 = v6;
    if (!nlp::BurstTrieContains(*(this + 17), v5, v6, &v35, 0))
    {
      v35 = nlp::BurstTrieGetCount(*(this + 17)) + 1;
      nlp::BurstTrieAdd(*(this + 17), v5, v7, v35);
    }

    v8 = __src[1];
    if (__src[1] >= __p[0])
    {
      v10 = __src[0];
      v11 = __src[1] - __src[0];
      v12 = (__src[1] - __src[0]) >> 2;
      v13 = v12 + 1;
      if ((v12 + 1) >> 62)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v14 = __p[0] - __src[0];
      if ((__p[0] - __src[0]) >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v15);
      }

      *(4 * v12) = v35;
      v9 = (4 * v12 + 4);
      memcpy(0, v10, v11);
      v16 = __src[0];
      __src[0] = 0;
      __src[1] = v9;
      __p[0] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *__src[1] = v35;
      v9 = v8 + 4;
    }

    __src[1] = v9;
  }

  for (j = a2[6]; j != a2[7]; j += 32)
  {
    v35 = -1;
    v18 = j;
    if (j[23] < 0)
    {
      v18 = *j;
    }

    v19 = strlen(v18);
    v20 = v19;
    if (!nlp::BurstTrieContains(*(this + 17), v18, v19, &v35, 0))
    {
      v35 = nlp::BurstTrieGetCount(*(this + 17)) + 1;
      nlp::BurstTrieAdd(*(this + 17), v18, v20, v35);
    }

    v21 = *(j + 3);
    v22 = v39;
    if (v39 >= *(&v39 + 1))
    {
      v24 = __p[1];
      v25 = v39 - __p[1];
      v26 = (v39 - __p[1]) >> 4;
      v27 = v26 + 1;
      if ((v26 + 1) >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v28 = *(&v39 + 1) - __p[1];
      if ((*(&v39 + 1) - __p[1]) >> 3 > v27)
      {
        v27 = v28 >> 3;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(&__p[1], v29);
      }

      v30 = (v39 - __p[1]) >> 4;
      v31 = 16 * v26;
      *v31 = v35;
      *(v31 + 8) = v21;
      v23 = 16 * v26 + 16;
      v32 = (v31 - 16 * v30);
      memcpy(v32, v24, v25);
      v33 = __p[1];
      __p[1] = v32;
      v39 = v23;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v39 = v35;
      *(v22 + 8) = v21;
      v23 = v22 + 16;
    }

    *&v39 = v23;
  }

  std::vector<ME_Efficient_Model_Trainer::Sample>::push_back[abi:ne200100](this + 40, &v36);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (__p[1])
  {
    *&v39 = __p[1];
    operator delete(__p[1]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_297710F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ME_Efficient_Model_Trainer::Sample::~Sample(va);
  _Unwind_Resume(a1);
}

uint64_t ME_Efficient_Model_Trainer::StringBag::Put(void *a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(a1 + 1, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((a1[7] - a1[6]) >> 3);
  std::vector<std::string>::push_back[abi:ne200100]((a1 + 6), a2);
  *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1, a2) + 10) = v5;
  return v5;
}

uint64_t std::vector<ME_Efficient_Model_Trainer::Sample>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ME_Efficient_Model_Trainer::Sample>::__emplace_back_slow_path<ME_Efficient_Model_Trainer::Sample const&>(a1, a2);
  }

  else
  {
    std::vector<ME_Efficient_Model_Trainer::Sample>::__construct_one_at_end[abi:ne200100]<ME_Efficient_Model_Trainer::Sample const&>(a1, a2);
    result = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

void ME_Efficient_Model_Trainer::Sample::~Sample(ME_Efficient_Model_Trainer::Sample *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t ME_Efficient_Model_Trainer::train(ME_Efficient_Model_Trainer *this)
{
  if (*(this + 3) <= 0.0 || *(this + 4) <= 0.0)
  {
    v4 = *(this + 5);
    v5 = *(this + 6);
    if (v5 == v4)
    {
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: no training data.", 24);
      std::ios_base::getloc((v56 + *(*v56 - 24)));
      v57 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
      (v57->__vftable[2].~facet_0)(v57, 10);
    }

    else
    {
      v6 = *(this + 88);
      if (v6 >= (-858993459 * ((v5 - v4) >> 4)))
      {
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: too much heldout data. no training data is available.", 60);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v59->__vftable[2].~facet_0)(v59, 10);
      }

      else
      {
        v7 = 0;
        do
        {
          v9 = *v4;
          v4 += 80;
          v8 = v9;
          if (v7 <= v9)
          {
            v7 = v8;
          }
        }

        while (v4 != v5);
        *(this + 58) = v7 + 1;
        if (v7 + 1 != -1431655765 * ((*(this + 15) - *(this + 14)) >> 3))
        {
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "warning: _num_class != _label_bag.Size()", 40);
          std::ios_base::getloc((v10 + *(*v10 - 24)));
          v11 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
          (v11->__vftable[2].~facet_0)(v11, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
          v6 = *(this + 88);
        }

        if (v6 >= 1)
        {
          v12 = 0;
          do
          {
            std::vector<ME_Efficient_Model_Trainer::Sample>::push_back[abi:ne200100](this + 312, *(this + 6) - 80);
            std::vector<ME_Efficient_Model_Trainer::Sample>::__base_destruct_at_end[abi:ne200100](this + 40, (*(this + 6) - 80));
            ++v12;
          }

          while (v12 < *(this + 88));
        }

        v13 = *(this + 5);
        v14 = *(this + 6);
        v15 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v14[-v13] >> 4));
        if (v14 == v13)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,false>(v13, v14, &v69, v16, 1);
        if (*(this + 3) > 0.0)
        {
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "L1 regularizer = ", 17);
          v18 = MEMORY[0x29C272DF0](v17, *(this + 3));
          std::ios_base::getloc((v18 + *(*v18 - 24)));
          v19 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
          (v19->__vftable[2].~facet_0)(v19, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
        }

        v20 = *(this + 4);
        if (v20 > 0.0)
        {
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "L2 regularizer = ", 17);
          v22 = MEMORY[0x29C272DF0](v21, *(this + 4));
          std::ios_base::getloc((v22 + *(*v22 - 24)));
          v23 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
          (v23->__vftable[2].~facet_0)(v23, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
          v20 = *(this + 4);
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 5)) >> 4);
        *(this + 3) = *(this + 3) / v24;
        *(this + 4) = v20 / v24;
        v25 = MEMORY[0x29EDC93C0];
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "preparing for estimation...", 27);
        ME_Efficient_Model_Trainer::make_feature_bag(this, 0);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "done", 4);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v69);
        std::ostream::put();
        std::ostream::flush();
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "number of samples = ", 20);
        v29 = MEMORY[0x29C272E10](v28, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 5)) >> 4));
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v69);
        std::ostream::put();
        std::ostream::flush();
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "number of features = ", 21);
        v32 = MEMORY[0x29C272E00](v31, (*(this + 27) - *(this + 26)) >> 2);
        std::ios_base::getloc((v32 + *(*v32 - 24)));
        v33 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v33->__vftable[2].~facet_0)(v33, 10);
        std::locale::~locale(&v69);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "calculating empirical expectation...", 36);
        std::vector<double>::resize(this + 30, ((*(this + 27) - *(this + 26)) >> 2));
        v34 = *(this + 27) - *(this + 26);
        v35 = v34 >> 2;
        if ((v34 >> 2) >= 1)
        {
          bzero(*(this + 30), (2 * v34) & 0x3FFFFFFF8);
        }

        v36 = *(this + 5);
        v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v36) >> 4);
        if (v37 >= 1)
        {
          v38 = 0;
          do
          {
            v39 = v36 + 80 * v38;
            v41 = *(v39 + 8);
            v40 = *(v39 + 16);
            if (v41 != v40)
            {
              v42 = *(this + 36);
              do
              {
                v43 = v42 + 24 * *v41;
                v44 = *v43;
                if (*v43 != *(v43 + 8))
                {
                  do
                  {
                    if (*v39 == ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v44))
                    {
                      *(*(this + 30) + 8 * *v44) = *(*(this + 30) + 8 * *v44) + 1.0;
                    }

                    ++v44;
                    v42 = *(this + 36);
                  }

                  while (v44 != *(v42 + 24 * *v41 + 8));
                  v40 = *(v39 + 16);
                }

                ++v41;
              }

              while (v41 != v40);
            }

            v46 = *(v39 + 32);
            v45 = *(v39 + 40);
            if (v46 != v45)
            {
              v47 = *(this + 36);
              do
              {
                v48 = v47 + 24 * *v46;
                v49 = *v48;
                if (*v48 != *(v48 + 8))
                {
                  do
                  {
                    if (*v39 == ME_Efficient_Model_Trainer::ME_FeatureBag::Feature((this + 168), *v49))
                    {
                      *(*(this + 30) + 8 * *v49) = v46[1] + *(*(this + 30) + 8 * *v49);
                    }

                    ++v49;
                    v47 = *(this + 36);
                  }

                  while (v49 != *(v47 + 24 * *v46 + 8));
                  v45 = *(v39 + 40);
                }

                v46 += 2;
              }

              while (v46 != v45);
            }

            ++v38;
            v36 = *(this + 5);
            v37 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v36) >> 4);
          }

          while (v38 < v37);
          v35 = (*(this + 27) - *(this + 26)) >> 2;
        }

        if (v35 >= 1)
        {
          v50 = v37;
          v51 = *(this + 30);
          v52 = v35;
          do
          {
            *v51 = *v51 / v50;
            ++v51;
            --v52;
          }

          while (v52);
        }

        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "done", 4);
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v54 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v54->__vftable[2].~facet_0)(v54, 10);
        std::locale::~locale(&v69);
        std::ostream::put();
        std::ostream::flush();
        std::vector<double>::resize(this + 18, ((*(this + 27) - *(this + 26)) >> 2));
        v55 = *(this + 27) - *(this + 26);
        if ((v55 >> 2) >= 1)
        {
          bzero(*(this + 18), (2 * v55) & 0x3FFFFFFF8);
        }

        if (*this == 2)
        {
          ME_Efficient_Model_Trainer::perform_SGD(this);
        }

        else
        {
          ME_Efficient_Model_Trainer::perform_QUASI_NEWTON(this);
        }

        v60 = *(this + 27) - *(this + 26);
        if ((v60 >> 2) < 1)
        {
          v61 = 0;
        }

        else
        {
          LODWORD(v61) = 0;
          v62 = *(this + 18);
          v63 = (v60 >> 2) & 0x7FFFFFFF;
          do
          {
            v64 = *v62++;
            if (v64 == 0.0)
            {
              v61 = v61;
            }

            else
            {
              v61 = (v61 + 1);
            }

            --v63;
          }

          while (v63);
        }

        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "number of active features = ", 28);
        v66 = MEMORY[0x29C272E00](v65, v61);
        std::ios_base::getloc((v66 + *(*v66 - 24)));
        v67 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
        (v67->__vftable[2].~facet_0)(v67, 10);
      }
    }
  }

  else
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: L1 and L2 regularizers cannot be used simultaneously.", 60);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v69, MEMORY[0x29EDC93D0]);
    (v3->__vftable[2].~facet_0)(v3, 10);
  }

  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

void ME_Efficient_Model_Trainer::get_labels(void *a1, uint64_t a2)
{
  if ((-1431655765 * ((a1[15] - a1[14]) >> 3)) >= 1)
  {
    v4 = 0;
    do
    {
      ME_Efficient_Model_Trainer::StringBag::Str((a1 + 8), v4, &__p);
      v6 = *(a2 + 8);
      v5 = *(a2 + 16);
      if (v6 >= v5)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
        v9 = v8 + 1;
        if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
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

        v21.__end_cap_.__value_ = a2;
        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v11);
        }

        v12 = 24 * v8;
        v13 = *&__p.__r_.__value_.__l.__data_;
        *(v12 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v12 = v13;
        memset(&__p, 0, sizeof(__p));
        v14 = 24 * v8 + 24;
        v15 = *(a2 + 8) - *a2;
        v16 = 24 * v8 - v15;
        memcpy((v12 - v15), *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v14;
        v18 = *(a2 + 16);
        *(a2 + 16) = 0;
        v21.__end_ = v17;
        v21.__end_cap_.__value_ = v18;
        v21.__first_ = v17;
        v21.__begin_ = v17;
        std::__split_buffer<std::string>::~__split_buffer(&v21);
        v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a2 + 8) = v14;
        if (v19 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v7 = *&__p.__r_.__value_.__l.__data_;
        *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v6 = v7;
        *(a2 + 8) = v6 + 24;
      }

      ++v4;
    }

    while (v4 < (-1431655765 * ((a1[15] - a1[14]) >> 3)));
  }
}

void sub_297711CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ME_Efficient_Model_Trainer::StringBag::Str(ME_Efficient_Model_Trainer::StringBag *this@<X0>, signed int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 < 0 || (v4 = *(this + 6), (-1431655765 * ((*(this + 7) - v4) >> 3)) <= a2))
  {
    ME_Efficient_Model_Trainer::StringBag::Str();
  }

  v5 = (v4 + 24 * a2);
  if (*(v5 + 23) < 0)
  {
    v7 = *v5;
    v8 = *(v5 + 1);

    std::string::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    v6 = *v5;
    a3->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a3->__r_.__value_.__l.__data_ = v6;
  }
}

uint64_t ME_Efficient_Model_Trainer::get_feature_id(ME_Efficient_Model_Trainer *this, unsigned int a2, unsigned int a3)
{
  ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(&v6, a2, a3);
  v7 = v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(this + 21, &v7);
  if (v4)
  {
    return *(v4 + 5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void ME_Efficient_Model_Trainer::clear(ME_Efficient_Model_Trainer *this)
{
  v1 = this;
  *(this + 19) = *(this + 18);
  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(this + 21);
  *(v1 + 27) = *(v1 + 26);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(v1 + 72);
  std::vector<std::string>::clear[abi:ne200100](v1 + 14);
  std::vector<std::vector<int>>::clear[abi:ne200100](v1 + 36);
  v2 = *(v1 + 5);
  v1 = (v1 + 40);
  *(v1 + 26) = *(v1 + 25);
  *(v1 + 29) = *(v1 + 28);
  std::vector<ME_Efficient_Model_Trainer::Sample>::__base_destruct_at_end[abi:ne200100](v1, v2);
  std::vector<ME_Efficient_Model_Trainer::Sample>::__base_destruct_at_end[abi:ne200100](v1 + 272, *(v1 + 34));
  v3 = *(v1 + 12);

  nlp::BurstTrieRelease(v3);
}

void prune(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 384);
  v5 = *(a1 + 392);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  ME_Efficient_Model_Trainer::get_labels(a1, &v27);
  Completion = nlp::TrieCompletionGetCompletion(a2);
  Payload = nlp::TrieCompletionGetPayload(a2);
  if (v28 != v27)
  {
    v8 = Payload;
    LODWORD(v9) = 0;
    do
    {
      feature_id = ME_Efficient_Model_Trainer::get_feature_id(a1, v9, v8);
      v11 = feature_id;
      if ((feature_id & 0x80000000) == 0)
      {
        v12 = *(*(a1 + 144) + 8 * feature_id);
        v13 = fabs(v12);
        if (v12 != 0.0 && v13 >= v5)
        {
          std::to_string(&v23, v9);
          v15 = std::string::append(&v23, "_");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v24.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v24, Completion);
          v18 = *&v17->__r_.__value_.__l.__data_;
          v26 = v17->__r_.__value_.__r.__words[2];
          *__p = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v23.__r_.__value_.__l.__data_);
          }

          if (v26 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          if (v26 >= 0)
          {
            v20 = HIBYTE(v26);
          }

          else
          {
            v20 = LODWORD(__p[1]);
          }

          v21 = v12;
          v31 = 0;
          nlp::BurstTrieAddWithScore(v4, v19, v20, v11, 0, v30, v21);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v30);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v9 = (v9 + 1);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3) > v9);
  }

  __p[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v22 = *MEMORY[0x29EDCA608];
}

void sub_297712058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  a23 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

BOOL ME_Efficient_Model_Trainer::save_to_file(ME_Efficient_Model_Trainer *a1, uint64_t a2, double a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = open(v6, 1538, 384);
  if ((v7 & 0x80000000) != 0)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: cannot open ", 19);
    v10 = *(a2 + 23);
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
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "!", 1);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v16, MEMORY[0x29EDC93D0]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v16);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  else
  {

    return ME_Efficient_Model_Trainer::save_to_file_descriptor(a1, v7, a3);
  }
}

BOOL ME_Efficient_Model_Trainer::save_to_file_descriptor(ME_Efficient_Model_Trainer *this, uint64_t __fd, double a3)
{
  v31[4] = *MEMORY[0x29EDCA608];
  if ((__fd & 0x80000000) != 0)
  {
    v16 = 0;
  }

  else
  {
    v29 = 0;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    __buf = 0x200C0FFEELL;
    v6 = pwrite(__fd, &__buf, 0x3CuLL, 0);
    LODWORD(v26) = v6;
    DWORD1(v26) = -1431655765 * ((*(this + 15) - *(this + 14)) >> 3);
    if (DWORD1(v26))
    {
      v7 = 0;
      do
      {
        ME_Efficient_Model_Trainer::StringBag::Str((this + 64), v7, __p);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p[0].__r_.__value_.__l.__size_;
        }

        v10 = pwrite(__fd, v8, size, v6) + v6;
        v11 = pwrite(__fd, "\n", 1uLL, v10);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v6 = v11 + v10;
        ++v7;
      }

      while (v7 < DWORD1(v26));
    }

    nlp::BurstTrieCreateMutableWithOptions(64, 1);
    v13 = v12;
    ME_Efficient_Model_Trainer::ME_Efficient_Model_Trainer(__p, this);
    v23 = v13;
    v24 = a3;
    v14 = *(this + 17);
    v31[0] = &unk_2A1E51D20;
    v31[1] = prune;
    v31[3] = v31;
    nlp::BurstTrieSearch(v14, "", 0, __p, v31, -1);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v31);
    v21 = 0;
    v15 = nlp::BurstTrieWriteToFileDescriptor(v13, __fd, &v21);
    v16 = v15 != 0;
    if (v15)
    {
      LODWORD(v27) = v21;
      DWORD1(v27) = lseek(__fd, 0, 2);
      pwrite(__fd, &__buf, 0x3CuLL, 0);
      close(__fd);
      nlp::BurstTrieRelease(v13);
    }

    else
    {
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: could not write out features!", 36);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v30, MEMORY[0x29EDC93D0]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v30);
      std::ostream::put();
      std::ostream::flush();
      nlp::BurstTrieRelease(v13);
      close(__fd);
    }

    ME_Efficient_Model_Trainer::~ME_Efficient_Model_Trainer(__p);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_297712540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::locale::~locale((v16 - 144));
  ME_Efficient_Model_Trainer::~ME_Efficient_Model_Trainer(&__p);
  _Unwind_Resume(a1);
}

void ME_Efficient_Model::~ME_Efficient_Model(ME_Efficient_Model *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    nlp::BurstTrieRelease(v2);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 4);
    v3 = *(this + 5);
    if (v4 && v3)
    {
      munmap(v3, v4);
    }

    else
    {
      free(v3);
    }
  }

  v5 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t ME_Efficient_Model::num_classes(ME_Efficient_Model *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *(v1 + 12);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *ME_Efficient_Model::get_class_label(ME_Efficient_Model *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = this;
    v4 = *this;
    v6 = *(v5 + 1) - v4;
    if (v6)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) <= a2)
      {
        return 0;
      }

      else
      {
        result = (v4 + 24 * a2);
        if (result[23] < 0)
        {
          return *result;
        }
      }
    }
  }

  return result;
}

uint64_t ME_Efficient_Model::get_class_id(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v7 = *a1;
  }

  else
  {
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

    v7 = *a1;
    while (1)
    {
      v8 = *(v7 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 8);
      }

      if (v8 == v5)
      {
        v10 = v9 >= 0 ? v7 : *v7;
        if (!memcmp(v10, v6, v5))
        {
          break;
        }
      }

      v7 += 24;
      if (v7 == v3)
      {
        v7 = v3;
        return -1431655765 * ((v7 - v2) >> 3);
      }
    }
  }

  return -1431655765 * ((v7 - v2) >> 3);
}

uint64_t ME_Efficient_Model::load_from_file(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (!stat(v6, &v24))
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v17 = open(v16, 0);
    if (v17 < 0)
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: cannot open ", 19);
      v22 = *(a2 + 23);
      if (v22 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (v22 >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        v10 = *(a2 + 8);
      }

      goto LABEL_11;
    }

    v18 = v17;
    st_size = v24.st_size;
    if (a3)
    {
      *(a1 + 32) = v24.st_size;
      v20 = mmap(0, st_size, 1, 1, v17, 0);
      *(a1 + 40) = v20;
      if (!v20)
      {
LABEL_23:
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
LABEL_34:
        close(v18);
        return 0;
      }

      if (!ME_Efficient_Model::load_with_bytes(a1, v20))
      {
        v21 = *(a1 + 40);
        if (v21)
        {
          munmap(v21, st_size);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v24.st_size, 0x100004077774924uLL);
      *(a1 + 40) = v23;
      if (st_size != read(v18, v23, st_size) || !ME_Efficient_Model::load_with_bytes(a1, *(a1 + 40)))
      {
        free(*(a1 + 40));
        *(a1 + 40) = 0;
        goto LABEL_34;
      }
    }

    v14 = 1;
    *(a1 + 48) = 1;
    close(v18);
    return v14;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C0], "error: cannot open ", 19);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

LABEL_11:
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "!", 1);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v25, MEMORY[0x29EDC93D0]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

BOOL ME_Efficient_Model::load_with_bytes(ME_Efficient_Model *this, const char *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  *(this + 5) = a2;
  if (a2 && *a2 == 12648430 && *(a2 + 1) == 2)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    *(this + 4) = *(a2 + 7);
    do
    {
      if (v5 >= *(a2 + 3))
      {
        break;
      }

      v6 = &a2[*(a2 + 2)];
      v7 = v6[v4];
      v4 = v4 + 1;
      if (v7 == 10)
      {
        v8 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          __s[v9++] = v7;
          v7 = v6[v4++];
        }

        while (v7 != 10);
        v8 = v9;
      }

      __s[v8] = 0;
      v10 = strlen(__s);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v18 = v10;
      if (v10)
      {
        memcpy(&__dst, __s, v10);
      }

      *(&__dst + v11) = 0;
      std::vector<std::string>::push_back[abi:ne200100](this, &__dst);
      __s[0] = 0;
      v12 = *(a2 + 3);
      if (v18 < 0)
      {
        operator delete(__dst);
      }

      ++v5;
    }

    while (v5 < v12);
    v13 = nlp::BurstTrieCreateWithBytes((*(this + 5) + *(a2 + 6)), a2);
    *(this + 3) = v13;
    result = *(this + 1) != *this && v13 != 0;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297712BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ME_Efficient_Model::conditional_probability(uint64_t a1, double **a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (*a2 + 1);
  v7 = *a2 == v4 || v6 == v4;
  v8 = *a2;
  if (!v7)
  {
    v9 = *v5;
    v8 = *a2;
    v10 = *a2 + 1;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v9 < v11)
      {
        v9 = v12;
        v8 = v6;
      }

      v6 = v10;
    }

    while (v10 != v4);
  }

  v13 = 0;
  v14 = 0.0;
  v15 = fmax(*v8 + -700.0, 0.0);
  v16 = *(a1 + 40);
  v17 = *a3;
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (i = *(v16 + 12); v13 < i; i = -1)
  {
    v19 = exp(v5[v13] - v15);
    if (v19 == 0.0)
    {
      ME_Efficient_Model::conditional_probability();
    }

    *(v17 + 8 * v13) = v19;
    v14 = v14 + v19;
    ++v13;
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  v20 = 0;
  result = 0;
  v22 = *a3;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_17:
  for (j = *(v16 + 12); v20 < j; j = -1)
  {
    v24 = *(v22 + 8 * v20) / v14;
    *(v22 + 8 * v20) = v24;
    if (v24 <= *(v22 + 8 * result))
    {
      result = result;
    }

    else
    {
      result = v20;
    }

    ++v20;
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_18:
    ;
  }

  if ((result & 0x80000000) != 0)
  {
    ME_Efficient_Model::conditional_probability();
  }

  return result;
}

uint64_t ME_Efficient_Model::classify(uint64_t a1, double **a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 12);
  }

  else
  {
    v5 = -1;
  }

  if (v5 != ((a3[1] - *a3) >> 3))
  {
    ME_Efficient_Model::classify();
  }

  ME_Efficient_Model::conditional_probability(a1, a2, a3);
  v6 = a3[1] - *a3;
  if ((v6 >> 3) < 1)
  {
    return 0;
  }

  v7 = 0;
  LODWORD(result) = 0;
  v9 = (v6 >> 3) & 0x7FFFFFFF;
  v10 = 0.0;
  do
  {
    v11 = *(*a3 + 8 * v7);
    if (v11 <= v10)
    {
      result = result;
    }

    else
    {
      result = v7;
    }

    if (v11 > v10)
    {
      v10 = *(*a3 + 8 * v7);
    }

    ++v7;
  }

  while (v9 != v7);
  return result;
}

void ME_Efficient_Model::classify(ME_Efficient_Model *this@<X0>, ME_Sample *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*(this + 3))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(v8 + 12);
  }

  else
  {
    v9 = -1;
  }

  __p[0] = 0;
  std::vector<double>::vector[abi:ne200100](v44, v9);
  for (i = *(a2 + 3); i != *(a2 + 4); i += 24)
  {
    for (j = 0; ; ++j)
    {
      v12 = *(this + 5);
      v13 = v12 ? *(v12 + 12) : -1;
      if (j >= v13)
      {
        break;
      }

      std::to_string(&v40, j);
      v14 = std::string::append(&v40, "_");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = *(i + 23);
      if (v16 >= 0)
      {
        v17 = i;
      }

      else
      {
        v17 = *i;
      }

      if (v16 >= 0)
      {
        v18 = *(i + 23);
      }

      else
      {
        v18 = *(i + 8);
      }

      v19 = std::string::append(&v41, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v43 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 0;
      LODWORD(v40.__r_.__value_.__l.__data_) = 0;
      if (v43 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if (v43 >= 0)
      {
        v22 = HIBYTE(v43);
      }

      else
      {
        v22 = LODWORD(__p[1]);
      }

      if (nlp::BurstTrieContains(*(this + 3), v21, v22, &v41, &v40))
      {
        *(v44[0] + j) = *(v44[0] + j) + *&v40.__r_.__value_.__l.__data_;
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v23 = *(a2 + 6);
  if (v23 != *(a2 + 7))
  {
    do
    {
      for (k = 0; ; ++k)
      {
        v25 = *(this + 5);
        v26 = v25 ? *(v25 + 12) : -1;
        if (k >= v26)
        {
          break;
        }

        std::to_string(&v40, k);
        v27 = std::string::append(&v40, "_");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v29 = *(v23 + 23);
        if (v29 >= 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = *v23;
        }

        if (v29 >= 0)
        {
          v31 = *(v23 + 23);
        }

        else
        {
          v31 = *(v23 + 8);
        }

        v32 = std::string::append(&v41, v30, v31);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v43 = v32->__r_.__value_.__r.__words[2];
        *__p = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 0;
        LODWORD(v40.__r_.__value_.__l.__data_) = 0;
        if (v43 >= 0)
        {
          v34 = __p;
        }

        else
        {
          v34 = __p[0];
        }

        if (v43 >= 0)
        {
          v35 = HIBYTE(v43);
        }

        else
        {
          v35 = LODWORD(__p[1]);
        }

        if (nlp::BurstTrieContains(*(this + 3), v34, v35, &v41, &v40))
        {
          *(v44[0] + k) = *(v23 + 24) + *&v40.__r_.__value_.__l.__data_ + *(v44[0] + k);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v23 += 32;
    }

    while (v23 != *(a2 + 7));
    if (v25)
    {
      goto LABEL_63;
    }

LABEL_65:
    v36 = -1;
    goto LABEL_66;
  }

  v25 = *(this + 5);
  if (!v25)
  {
    goto LABEL_65;
  }

LABEL_63:
  v36 = *(v25 + 12);
LABEL_66:
  std::vector<double>::vector[abi:ne200100](a4, v36);
  v37 = ME_Efficient_Model::classify(this, v44, a4);
  if (a3)
  {
    *a3 = v37;
  }

  v38 = 0;
  if ((v37 & 0x80000000) == 0)
  {
    v39 = *(this + 1) - *this;
    if (v39)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v39 >> 3) <= v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = *this + 24 * v37;
        if (*(v38 + 23) < 0)
        {
          v38 = *v38;
        }
      }
    }
  }

  MEMORY[0x29C272D90](a2, v38);
  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}

void sub_2977131A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ME_Efficient_Model_Trainer::ME_FeatureBag::~ME_FeatureBag(ME_Efficient_Model_Trainer::ME_FeatureBag *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *ME_Efficient_Model_Trainer::ME_Feature::ME_Feature(_DWORD *this, unsigned int a2, unsigned int a3)
{
  *this = a2 + (a3 << 8);
  if (a2 >= 0x100)
  {
    ME_Efficient_Model_Trainer::ME_Feature::ME_Feature();
  }

  if (HIBYTE(a3))
  {
    ME_Efficient_Model_Trainer::ME_Feature::ME_Feature();
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::find<unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_297713C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_297713D18(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void ME_Efficient_Model_Trainer::ME_Efficient_Model_Trainer(ME_Efficient_Model_Trainer *this, const ME_Efficient_Model_Trainer *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<ME_Efficient_Model_Trainer::Sample>::__init_with_size[abi:ne200100]<ME_Efficient_Model_Trainer::Sample*,ME_Efficient_Model_Trainer::Sample*>(this + 40, *(a2 + 5), *(a2 + 6), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 6) - *(a2 + 5)) >> 4));
  *(this + 16) = *(a2 + 16);
  std::unordered_map<std::string,int>::unordered_map(this + 72, a2 + 72);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 112, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  std::unordered_map<unsigned int,int>::unordered_map(this + 168, a2 + 168);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<ME_Efficient_Model_Trainer::ME_Feature>::__init_with_size[abi:ne200100]<ME_Efficient_Model_Trainer::ME_Feature*,ME_Efficient_Model_Trainer::ME_Feature*>(this + 208, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  v4 = *(a2 + 58);
  *(this + 30) = 0;
  *(this + 58) = v4;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 3);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 3);
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(this + 288, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<ME_Efficient_Model_Trainer::Sample>::__init_with_size[abi:ne200100]<ME_Efficient_Model_Trainer::Sample*,ME_Efficient_Model_Trainer::Sample*>(this + 312, *(a2 + 39), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 39)) >> 4));
  *(this + 21) = *(a2 + 21);
  *(this + 44) = *(a2 + 44);
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 360, *(a2 + 45), *(a2 + 46), (*(a2 + 46) - *(a2 + 45)) >> 3);
  *(this + 17) = nlp::BurstTrieRetain(*(a2 + 17));
}

void sub_297714310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v3[45];
  if (v6)
  {
    v3[46] = v6;
    operator delete(v6);
  }

  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = v3[33];
  if (v7)
  {
    v3[34] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v3[31] = v8;
    operator delete(v8);
  }

  ME_Efficient_Model_Trainer::ME_FeatureBag::~ME_FeatureBag((v3 + 21));
  v9 = v3[18];
  if (v9)
  {
    v3[19] = v9;
    operator delete(v9);
  }

  ME_Efficient_Model_Trainer::StringBag::~StringBag(v2);
  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ME_Efficient_Model_Trainer::Sample>::__init_with_size[abi:ne200100]<ME_Efficient_Model_Trainer::Sample*,ME_Efficient_Model_Trainer::Sample*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ME_Efficient_Model_Trainer::Sample>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_297714458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ME_Efficient_Model_Trainer::Sample>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*,ME_Efficient_Model_Trainer::Sample*,ME_Efficient_Model_Trainer::Sample*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 8, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 2);
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v4 + 32, *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 4);
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4 + 56, *(v6 + 56), *(v6 + 64), (*(v6 + 64) - *(v6 + 56)) >> 3);
      v6 += 80;
      v4 = v11 + 80;
      v11 += 80;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2977146B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_297714724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 10;
      std::allocator_traits<std::allocator<ME_Efficient_Model_Trainer::Sample>>::destroy[abi:ne200100]<ME_Efficient_Model_Trainer::Sample,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator_traits<std::allocator<ME_Efficient_Model_Trainer::Sample>>::destroy[abi:ne200100]<ME_Efficient_Model_Trainer::Sample,0>(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;
    operator delete(v4);
  }

  v5 = a2[1];
  if (v5)
  {
    a2[2] = v5;

    operator delete(v5);
  }
}

void std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ME_Efficient_Model_Trainer::Sample>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::pair<std::string const,int> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_297714BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_297714C88(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_297714D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_map<unsigned int,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,int> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,int> const&>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<ME_Efficient_Model_Trainer::ME_Feature>::__init_with_size[abi:ne200100]<ME_Efficient_Model_Trainer::ME_Feature*,ME_Efficient_Model_Trainer::ME_Feature*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2977152B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29771533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_297715D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::vector<ME_Efficient_Model_Trainer::Sample>::__construct_one_at_end[abi:ne200100]<ME_Efficient_Model_Trainer::Sample const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v4 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_297715EAC(_Unwind_Exception *exception_object)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 40) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v4 + 16) = v7;
    operator delete(v7);
  }

  *(v1 + 8) = v4;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ME_Efficient_Model_Trainer::Sample>::__emplace_back_slow_path<ME_Efficient_Model_Trainer::Sample const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v7 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v7 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *&v17 = v17 + 80;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ME_Efficient_Model_Trainer::Sample>::~__split_buffer(&v15);
  return v14;
}

void sub_297716068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v8 = *v5;
  if (*v5)
  {
    *(v6 + 40) = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    *(v6 + 16) = v9;
    operator delete(v9);
  }

  std::__split_buffer<ME_Efficient_Model_Trainer::Sample>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v7 += 10;
      a4 += 80;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ME_Efficient_Model_Trainer::Sample>>::destroy[abi:ne200100]<ME_Efficient_Model_Trainer::Sample,0>(a1, v5);
      v5 += 10;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ME_Efficient_Model_Trainer::Sample>,ME_Efficient_Model_Trainer::Sample*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<ME_Efficient_Model_Trainer::Sample>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ME_Efficient_Model_Trainer::Sample>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ME_Efficient_Model_Trainer::Sample>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<ME_Efficient_Model_Trainer::Sample>>::destroy[abi:ne200100]<ME_Efficient_Model_Trainer::Sample,0>(v5, (v4 - 80));
  }
}

void std::vector<ME_Efficient_Model_Trainer::Sample>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ME_Efficient_Model_Trainer::Sample>>::destroy[abi:ne200100]<ME_Efficient_Model_Trainer::Sample,0>(a1, i))
  {
    i -= 10;
  }

  *(a1 + 8) = a2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 4);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      if (ME_Efficient_Model_Trainer::Sample::operator<((a2 - 80), v9))
      {
        v22 = v9;
        p_end = (a2 - 80);
        goto LABEL_33;
      }

      return;
    }

LABEL_10:
    if (v12 <= 1919)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,ME_Efficient_Model_Trainer::Sample *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 80 * (v13 >> 1));
    if (v12 < 0x2801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v15, v9, (a2 - 80));
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v9, v15, (a2 - 80));
      v16 = 5 * v14;
      v17 = (v9 + 80 * v14 - 80);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>((v9 + 80), v17, (a2 - 160));
      v18 = (v9 + 16 * v16 + 80);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>((a1 + 160), v18, (a2 - 240));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v17, v15, v18);
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a1, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((ME_Efficient_Model_Trainer::Sample::operator<(a1 - 80, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ME_Efficient_Model_Trainer::Sample *,std::__less<void,void> &>(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ME_Efficient_Model_Trainer::Sample *,std::__less<void,void> &>(a1, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(a1, v19);
    v9 = &v19[10];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(&v19[10], a2))
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,false>(a1, v19, a3, -v11, a5 & 1);
      v9 = &v19[10];
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v9, (v9 + 80), (a2 - 80));
    return;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v9, (v9 + 80), (v9 + 160), v9 + 10, (a2 - 80));
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(v9, (v9 + 80), &v9[6].__end_cap_);
  if (ME_Efficient_Model_Trainer::Sample::operator<((a2 - 80), &v9[6].__end_cap_))
  {
    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>((v9 + 160), (a2 - 80));
    if (ME_Efficient_Model_Trainer::Sample::operator<(&v9[6].__end_cap_, &v9[3].__end_))
    {
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>((v9 + 80), &v9[6].__end_cap_);
      if (ME_Efficient_Model_Trainer::Sample::operator<(&v9[3].__end_, v9))
      {
        p_end = &v9[3].__end_;
        v22 = v9;
LABEL_33:

        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v22, p_end);
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(std::vector<int> *a1, std::vector<int> *a2, uint64_t a3)
{
  v6 = ME_Efficient_Model_Trainer::Sample::operator<(a2, a1);
  result = ME_Efficient_Model_Trainer::Sample::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = a1;
LABEL_9:
      v9 = a3;
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a1, a2);
    if (ME_Efficient_Model_Trainer::Sample::operator<(a3, a2))
    {
      v8 = a2;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a2, a3);
    if (ME_Efficient_Model_Trainer::Sample::operator<(a2, a1))
    {
      v8 = a1;
      v9 = a2;
LABEL_10:
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v8, v9);
    }
  }

  return 1;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(std::vector<int> *a1, std::vector<int> *a2, std::vector<int> *a3, std::vector<int> *a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(a1, a2, a3);
  if (ME_Efficient_Model_Trainer::Sample::operator<(a4, a3))
  {
    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a3, a4);
    if (ME_Efficient_Model_Trainer::Sample::operator<(a3, a2))
    {
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a2, a3);
      if (ME_Efficient_Model_Trainer::Sample::operator<(a2, a1))
      {
        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a1, a2);
      }
    }
  }

  if (ME_Efficient_Model_Trainer::Sample::operator<(a5, a4))
  {
    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a4, a5);
    if (ME_Efficient_Model_Trainer::Sample::operator<(a4, a3))
    {
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a3, a4);
      if (ME_Efficient_Model_Trainer::Sample::operator<(a3, a2))
      {
        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a2, a3);
        if (ME_Efficient_Model_Trainer::Sample::operator<(a2, a1))
        {

          *&result = std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    __p[14] = v2;
    __p[15] = v3;
    v6 = a1 + 80;
    if ((a1 + 80) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (ME_Efficient_Model_Trainer::Sample::operator<(v6, v8))
        {
          v18[0] = *v9;
          *&v18[2] = *(v8 + 88);
          *&v18[6] = *(v8 + 104);
          *(v8 + 88) = 0;
          *(v8 + 96) = 0;
          *__p = *(v8 + 112);
          __p[2] = *(v8 + 128);
          *(v8 + 104) = 0;
          *(v8 + 112) = 0;
          *(v8 + 120) = 0;
          *(v8 + 128) = 0;
          *&__p[3] = *(v8 + 136);
          __p[5] = *(v8 + 152);
          *(v8 + 136) = 0;
          *(v8 + 144) = 0;
          v10 = v7;
          *(v8 + 152) = 0;
          while (1)
          {
            v11 = a1 + v10;
            *(a1 + v10 + 80) = *(a1 + v10);
            std::vector<double>::__move_assign(a1 + v10 + 88, (a1 + v10 + 8));
            std::vector<double>::__move_assign(v11 + 112, (v11 + 32));
            std::vector<double>::__move_assign(v11 + 136, (v11 + 56));
            if (!v10)
            {
              break;
            }

            v10 -= 80;
            if ((ME_Efficient_Model_Trainer::Sample::operator<(v18, v10 + a1) & 1) == 0)
            {
              v12 = a1 + v10 + 80;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          *v12 = v18[0];
          v15 = *(v11 + 8);
          v14 = (v11 + 8);
          v13 = v15;
          if (v15)
          {
            *(v12 + 16) = v13;
            operator delete(v13);
            *v14 = 0;
            v14[1] = 0;
            v14[2] = 0;
          }

          *v14 = *&v18[2];
          *(v12 + 16) = *&v18[4];
          memset(&v18[2], 0, 24);
          v16 = v14[3];
          if (v16)
          {
            *(v12 + 40) = v16;
            operator delete(v16);
            v14[3] = 0;
            v14[4] = 0;
            v14[5] = 0;
          }

          v14[3] = __p[0];
          *(v12 + 40) = *&__p[1];
          memset(__p, 0, 24);
          v17 = v14[6];
          if (v17)
          {
            *(v12 + 64) = v17;
            operator delete(v17);
            v14[6] = 0;
            v14[7] = 0;
            v14[8] = 0;
            v17 = __p[0];
          }

          v14[6] = __p[3];
          *(v12 + 64) = *&__p[4];
          memset(&__p[3], 0, 24);
          if (v17)
          {
            __p[1] = v17;
            operator delete(v17);
          }

          if (*&v18[2])
          {
            *&v18[4] = *&v18[2];
            operator delete(*&v18[2]);
          }
        }

        v6 = (v9 + 20);
        v7 += 80;
        v8 = v9;
      }

      while (v9 + 20 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, unsigned __int32 *a2)
{
  if (a1 != a2)
  {
    v21 = v2;
    v22 = v3;
    v5 = a1;
    v6 = a1 + 80;
    if ((a1 + 80) != a2)
    {
      v7 = (a1 + 152);
      do
      {
        v8 = v6;
        if (ME_Efficient_Model_Trainer::Sample::operator<(v6, v5))
        {
          v14 = *v8;
          *v15 = *(v5 + 88);
          v16 = *(v5 + 104);
          *(v5 + 88) = 0;
          *(v5 + 96) = 0;
          *__p = *(v5 + 112);
          v18 = *(v5 + 128);
          *(v5 + 104) = 0;
          *(v5 + 112) = 0;
          *(v5 + 120) = 0;
          *(v5 + 128) = 0;
          v19 = *(v5 + 136);
          v20 = *(v5 + 152);
          *(v5 + 136) = 0;
          *(v5 + 144) = 0;
          v9 = v7;
          *(v5 + 152) = 0;
          do
          {
            v9[-5].n128_u32[2] = v9[-10].n128_u32[2];
            std::vector<double>::__move_assign(&v9[-4], v9 - 9);
            std::vector<double>::__move_assign(&v9[-3].n128_i64[1], (v9 - 120));
            std::vector<double>::__move_assign(&v9[-1], v9 - 6);
            v10 = ME_Efficient_Model_Trainer::Sample::operator<(&v14, &v9[-15].n128_i64[1]);
            v9 -= 5;
          }

          while ((v10 & 1) != 0);
          v11 = v9[-4].n128_u64[0];
          v9[-5].n128_u32[2] = v14;
          if (v11)
          {
            v9[-4].n128_u64[1] = v11;
            operator delete(v11);
            v9[-4].n128_u64[0] = 0;
            v9[-4].n128_u64[1] = 0;
            v9[-3].n128_u64[0] = 0;
          }

          v9[-4] = *v15;
          v9[-3].n128_u64[0] = v16;
          v15[1] = 0;
          v16 = 0;
          v15[0] = 0;
          v12 = v9[-3].n128_u64[1];
          if (v12)
          {
            v9[-2].n128_u64[0] = v12;
            operator delete(v12);
            v9[-3].n128_u64[1] = 0;
            v9[-2].n128_u64[0] = 0;
            v9[-2].n128_u64[1] = 0;
          }

          *(v9 - 40) = *__p;
          v9[-2].n128_u64[1] = v18;
          __p[1] = 0;
          v18 = 0;
          __p[0] = 0;
          v13 = v9[-1].n128_u64[0];
          if (v13)
          {
            v9[-1].n128_u64[1] = v13;
            operator delete(v13);
            v9[-1].n128_u64[0] = 0;
            v9[-1].n128_u64[1] = 0;
            v9->n128_u64[0] = 0;
            v13 = __p[0];
          }

          v9[-1] = v19;
          v9->n128_u64[0] = v20;
          v20 = 0;
          v19 = 0uLL;
          if (v13)
          {
            __p[1] = v13;
            operator delete(v13);
          }

          if (v15[0])
          {
            v15[1] = v15[0];
            operator delete(v15[0]);
          }
        }

        v6 = (v8 + 20);
        v7 += 5;
        v5 = v8;
      }

      while (v8 + 20 != a2);
    }
  }
}

std::vector<int> *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ME_Efficient_Model_Trainer::Sample *,std::__less<void,void> &>(std::__compressed_pair<int *> *a1, unint64_t a2)
{
  v2 = a2;
  value = a1->__value_;
  v4 = &a1[1];
  *v15 = *&a1[1].__value_;
  v16 = a1[3].__value_;
  a1[1].__value_ = 0;
  a1[2].__value_ = 0;
  a1[3].__value_ = 0;
  v5 = &a1[4];
  *__p = *&a1[4].__value_;
  v18 = a1[6].__value_;
  a1[4].__value_ = 0;
  a1[5].__value_ = 0;
  a1[6].__value_ = 0;
  v6 = &a1[7];
  v19 = *&a1[7].__value_;
  v20 = a1[9].__value_;
  a1[8].__value_ = 0;
  a1[9].__value_ = 0;
  a1[7].__value_ = 0;
  if (ME_Efficient_Model_Trainer::Sample::operator<(&value, a2 - 80))
  {
    v7 = a1;
    do
    {
      v7 = (v7 + 80);
    }

    while ((ME_Efficient_Model_Trainer::Sample::operator<(&value, v7) & 1) == 0);
  }

  else
  {
    p_end = &a1[10];
    do
    {
      v7 = p_end;
      if (p_end >= v2)
      {
        break;
      }

      v9 = ME_Efficient_Model_Trainer::Sample::operator<(&value, p_end);
      p_end = &v7[3].__end_;
    }

    while (!v9);
  }

  if (v7 < v2)
  {
    do
    {
      v2 -= 80;
    }

    while ((ME_Efficient_Model_Trainer::Sample::operator<(&value, v2) & 1) != 0);
  }

  while (v7 < v2)
  {
    std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v7, v2);
    do
    {
      v7 = (v7 + 80);
    }

    while (!ME_Efficient_Model_Trainer::Sample::operator<(&value, v7));
    do
    {
      v2 -= 80;
    }

    while ((ME_Efficient_Model_Trainer::Sample::operator<(&value, v2) & 1) != 0);
  }

  if (&v7[-4].__end_cap_ != a1)
  {
    LODWORD(a1->__value_) = v7[-4].__end_cap_.__value_;
    std::vector<double>::__move_assign(v4, &v7[-3]);
    std::vector<double>::__move_assign(v5, &v7[-2]);
    std::vector<double>::__move_assign(v6, &v7[-1]);
  }

  begin = v7[-3].__begin_;
  LODWORD(v7[-4].__end_cap_.__value_) = value;
  if (begin)
  {
    v7[-3].__end_ = begin;
    operator delete(begin);
    v7[-3].__begin_ = 0;
    v7[-3].__end_ = 0;
    v7[-3].__end_cap_.__value_ = 0;
  }

  *&v7[-3].__begin_ = *v15;
  v7[-3].__end_cap_.__value_ = v16;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v11 = v7[-2].__begin_;
  if (v11)
  {
    v7[-2].__end_ = v11;
    operator delete(v11);
    v7[-2].__begin_ = 0;
    v7[-2].__end_ = 0;
    v7[-2].__end_cap_.__value_ = 0;
  }

  *&v7[-2].__begin_ = *__p;
  v7[-2].__end_cap_.__value_ = v18;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v12 = v7[-1].__begin_;
  if (v12)
  {
    v7[-1].__end_ = v12;
    operator delete(v12);
    v7[-1].__begin_ = 0;
    v7[-1].__end_ = 0;
    v7[-1].__end_cap_.__value_ = 0;
    v12 = __p[0];
  }

  *&v7[-1].__begin_ = v19;
  v7[-1].__end_cap_.__value_ = v20;
  v19 = 0uLL;
  v20 = 0;
  if (v12)
  {
    __p[1] = v12;
    operator delete(v12);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  return v7;
}

std::__compressed_pair<int *> *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ME_Efficient_Model_Trainer::Sample *,std::__less<void,void> &>(std::__compressed_pair<int *> *a1, unint64_t a2)
{
  v4 = 0;
  value = a1->__value_;
  v5 = &a1[1];
  *v16 = *&a1[1].__value_;
  v17 = a1[3].__value_;
  a1[1].__value_ = 0;
  a1[2].__value_ = 0;
  a1[3].__value_ = 0;
  v6 = &a1[4];
  *__p = *&a1[4].__value_;
  v19 = a1[6].__value_;
  a1[4].__value_ = 0;
  a1[5].__value_ = 0;
  a1[6].__value_ = 0;
  v21 = a1[9].__value_;
  v7 = &a1[7];
  v20 = *&a1[7].__value_;
  a1[8].__value_ = 0;
  a1[9].__value_ = 0;
  a1[7].__value_ = 0;
  do
  {
    v4 += 10;
  }

  while ((ME_Efficient_Model_Trainer::Sample::operator<(&a1[v4], &value) & 1) != 0);
  v8 = &a1[v4];
  if (v4 == 10)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 80;
    }

    while ((ME_Efficient_Model_Trainer::Sample::operator<(a2, &value) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 80;
    }

    while (!ME_Efficient_Model_Trainer::Sample::operator<(a2, &value));
  }

  v9 = &a1[v4];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v9, v10);
      do
      {
        v9 = (v9 + 80);
      }

      while ((ME_Efficient_Model_Trainer::Sample::operator<(v9, &value) & 1) != 0);
      do
      {
        v10 -= 80;
      }

      while (!ME_Efficient_Model_Trainer::Sample::operator<(v10, &value));
    }

    while (v9 < v10);
  }

  if (&v9[-4].__end_cap_ != a1)
  {
    LODWORD(a1->__value_) = v9[-4].__end_cap_.__value_;
    std::vector<double>::__move_assign(v5, &v9[-3]);
    std::vector<double>::__move_assign(v6, &v9[-2]);
    std::vector<double>::__move_assign(v7, &v9[-1]);
  }

  begin = v9[-3].__begin_;
  LODWORD(v9[-4].__end_cap_.__value_) = value;
  if (begin)
  {
    v9[-3].__end_ = begin;
    operator delete(begin);
    v9[-3].__begin_ = 0;
    v9[-3].__end_ = 0;
    v9[-3].__end_cap_.__value_ = 0;
  }

  *&v9[-3].__begin_ = *v16;
  v9[-3].__end_cap_.__value_ = v17;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v12 = v9[-2].__begin_;
  if (v12)
  {
    v9[-2].__end_ = v12;
    operator delete(v12);
    v9[-2].__begin_ = 0;
    v9[-2].__end_ = 0;
    v9[-2].__end_cap_.__value_ = 0;
  }

  *&v9[-2].__begin_ = *__p;
  v9[-2].__end_cap_.__value_ = v19;
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v13 = v9[-1].__begin_;
  if (v13)
  {
    v9[-1].__end_ = v13;
    operator delete(v13);
    v9[-1].__begin_ = 0;
    v9[-1].__end_ = 0;
    v9[-1].__end_cap_.__value_ = 0;
    v13 = __p[0];
  }

  *&v9[-1].__begin_ = v20;
  v9[-1].__end_cap_.__value_ = v21;
  v20 = 0uLL;
  v21 = 0;
  if (v13)
  {
    __p[1] = v13;
    operator delete(v13);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return &v9[-4].__end_cap_;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(a1, (a1 + 80), a2 - 80);
        return 1;
      case 4:
        v20 = a2 - 80;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(a1, (a1 + 80), a1 + 160);
        if (!ME_Efficient_Model_Trainer::Sample::operator<(v20, a1 + 160))
        {
          return 1;
        }

        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>((a1 + 160), v20);
        if (!ME_Efficient_Model_Trainer::Sample::operator<(a1 + 160, a1 + 80))
        {
          return 1;
        }

        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>((a1 + 80), a1 + 160);
        if (!ME_Efficient_Model_Trainer::Sample::operator<(a1 + 80, a1))
        {
          return 1;
        }

        v7 = a1 + 80;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(a1, (a1 + 80), (a1 + 160), (a1 + 240), a2 - 80);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 80;
      if (ME_Efficient_Model_Trainer::Sample::operator<(a2 - 80, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 160;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,0>(a1, (a1 + 80), a1 + 160);
  v9 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (ME_Efficient_Model_Trainer::Sample::operator<(v9, v8))
    {
      v22[0] = *v9;
      *&v22[2] = *(v9 + 8);
      *&v22[6] = *(v9 + 24);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *__p = *(v9 + 32);
      __p[2] = *(v9 + 48);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *&__p[3] = *(v9 + 56);
      __p[5] = *(v9 + 72);
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      v12 = v10;
      *(v9 + 56) = 0;
      while (1)
      {
        v13 = a1 + v12;
        *(a1 + v12 + 240) = *(a1 + v12 + 160);
        std::vector<double>::__move_assign(a1 + v12 + 248, (a1 + v12 + 168));
        std::vector<double>::__move_assign(v13 + 272, (v13 + 192));
        std::vector<double>::__move_assign(v13 + 296, (v13 + 216));
        if (v12 == -160)
        {
          break;
        }

        v12 -= 80;
        if ((ME_Efficient_Model_Trainer::Sample::operator<(v22, v13 + 80) & 1) == 0)
        {
          v14 = a1 + v12 + 240;
          goto LABEL_20;
        }
      }

      v14 = a1;
LABEL_20:
      *v14 = v22[0];
      v17 = *(v13 + 168);
      v16 = (v13 + 168);
      v15 = v17;
      if (v17)
      {
        *(v14 + 16) = v15;
        operator delete(v15);
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
      }

      *v16 = *&v22[2];
      *(v14 + 16) = *&v22[4];
      memset(&v22[2], 0, 24);
      v18 = v16[3];
      if (v18)
      {
        *(v14 + 40) = v18;
        operator delete(v18);
        v16[3] = 0;
        v16[4] = 0;
        v16[5] = 0;
      }

      v16[3] = __p[0];
      *(v14 + 40) = *&__p[1];
      memset(__p, 0, 24);
      v19 = v16[6];
      if (v19)
      {
        *(v14 + 64) = v19;
        operator delete(v19);
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = 0;
        v19 = __p[0];
      }

      v16[6] = __p[3];
      *(v14 + 64) = *&__p[4];
      memset(&__p[3], 0, 24);
      if (v19)
      {
        __p[1] = v19;
        operator delete(v19);
      }

      if (*&v22[2])
      {
        *&v22[4] = *&v22[2];
        operator delete(*&v22[2]);
      }

      if (++v11 == 8)
      {
        return v9 + 80 == a2;
      }
    }

    v8 = v9;
    v10 += 80;
    v9 += 80;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t ME_Efficient_Model_Trainer::Sample::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 2;
    v6 = *(a2 + 8);
    v7 = 1;
    while ((*(a2 + 16) - v6) >> 2 > v4)
    {
      v8 = *(v2 + 4 * v4);
      v9 = *(v6 + 4 * v4);
      if (v8 < v9)
      {
        return 1;
      }

      v4 = v7++;
      if (v8 > v9 || v5 <= v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

__n128 std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(std::vector<int> *this, uint64_t a2)
{
  begin = this->__begin_;
  v4 = *&this->__end_;
  v5 = this[1].__begin_;
  this->__end_ = 0;
  p_end = &this[1].__end_;
  v14 = v4;
  v15 = *&this[1].__end_;
  this[1].__end_ = 0;
  this->__end_cap_.__value_ = 0;
  this[1].__begin_ = 0;
  v7 = this[2].__begin_;
  this[1].__end_cap_.__value_ = 0;
  this[2].__begin_ = 0;
  v8 = &this[2].__end_;
  v16 = *&this[2].__end_;
  v9 = this[3].__begin_;
  this[2].__end_ = 0;
  this[2].__end_cap_.__value_ = 0;
  this[3].__begin_ = 0;
  LODWORD(this->__begin_) = *a2;
  std::vector<double>::__move_assign(&this->__end_, (a2 + 8));
  std::vector<double>::__move_assign(p_end, (a2 + 32));
  std::vector<double>::__move_assign(v8, (a2 + 56));
  *a2 = begin;
  v10 = *(a2 + 8);
  if (v10)
  {
    *(a2 + 16) = v10;
    operator delete(v10);
  }

  *(a2 + 8) = v14;
  *(a2 + 24) = v5;
  v11 = *(a2 + 32);
  if (v11)
  {
    *(a2 + 40) = v11;
    operator delete(v11);
  }

  *(a2 + 32) = v15;
  *(a2 + 48) = v7;
  v12 = *(a2 + 56);
  if (v12)
  {
    *(a2 + 64) = v12;
    operator delete(v12);
  }

  result = v16;
  *(a2 + 56) = v16;
  *(a2 + 72) = v9;
  return result;
}

std::vector<int> *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, uint64_t a2, std::vector<int> *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 81)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 80 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(a1, a4, v9, v12);
        v12 -= 80;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (ME_Efficient_Model_Trainer::Sample::operator<(v13, a1))
        {
          std::swap[abi:ne200100]<ME_Efficient_Model_Trainer::Sample>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 80);
      }

      while (v13 != a3);
    }

    if (v8 >= 81)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ME_Efficient_Model_Trainer::Sample *>(a1, v6, a4, v14);
        v6 -= 80;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v28 = v4;
    v29 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 4)))
    {
      v11 = (0x999999999999999ALL * ((a4 - a1) >> 4)) | 1;
      v12 = a1 + 80 * v11;
      v13 = 0x999999999999999ALL * ((a4 - a1) >> 4) + 2;
      if (v13 < a3 && ME_Efficient_Model_Trainer::Sample::operator<(a1 + 80 * v11, v12 + 80))
      {
        v12 += 80;
        v11 = v13;
      }

      if ((ME_Efficient_Model_Trainer::Sample::operator<(v12, v7) & 1) == 0)
      {
        v21 = *v7;
        *v22 = *(v7 + 8);
        v23 = *(v7 + 24);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *__p = *(v7 + 32);
        v25 = *(v7 + 48);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        v26 = *(v7 + 56);
        v27 = *(v7 + 72);
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 56) = 0;
        do
        {
          v14 = v12;
          v15 = (v12 + 56);
          *v7 = *v12;
          std::vector<double>::__move_assign(v7 + 8, (v12 + 8));
          std::vector<double>::__move_assign(v7 + 32, (v12 + 32));
          std::vector<double>::__move_assign(v7 + 56, (v12 + 56));
          if (v9 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = a1 + 80 * v16;
          v17 = 2 * v11 + 2;
          if (v17 < a3 && ME_Efficient_Model_Trainer::Sample::operator<(a1 + 80 * v16, v12 + 80))
          {
            v12 += 80;
            v16 = v17;
          }

          v7 = v14;
          v11 = v16;
        }

        while (!ME_Efficient_Model_Trainer::Sample::operator<(v12, &v21));
        *v14 = v21;
        v18 = *(v14 + 8);
        if (v18)
        {
          *(v14 + 16) = v18;
          operator delete(v18);
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          *(v14 + 24) = 0;
        }

        *(v14 + 8) = *v22;
        *(v14 + 24) = v23;
        v22[0] = 0;
        v22[1] = 0;
        v23 = 0;
        v19 = *(v14 + 32);
        if (v19)
        {
          *(v14 + 40) = v19;
          operator delete(v19);
          *(v14 + 32) = 0;
          *(v14 + 40) = 0;
          *(v14 + 48) = 0;
        }

        *(v14 + 32) = *__p;
        *(v14 + 48) = v25;
        __p[0] = 0;
        __p[1] = 0;
        v25 = 0;
        v20 = *(v14 + 56);
        if (v20)
        {
          *(v14 + 64) = v20;
          operator delete(v20);
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          v20 = __p[0];
        }

        *(v14 + 56) = v26;
        *(v14 + 72) = v27;
        v26 = 0uLL;
        v27 = 0;
        if (v20)
        {
          __p[1] = v20;
          operator delete(v20);
        }

        if (v22[0])
        {
          v22[1] = v22[0];
          operator delete(v22[0]);
        }
      }
    }
  }
}

__n128 std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v25 = v8;
    v11 = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v26 = v11;
    v27 = *(a1 + 56);
    v12 = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v13 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(a1, a3, a4);
    v14 = v13;
    if (v13 == (a2 - 80))
    {
      *v13 = v7;
      v21 = v13 + 2;
      v20 = *(v13 + 1);
      if (v20)
      {
        *(v14 + 2) = v20;
        operator delete(v20);
        *v21 = 0;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
      }

      v22 = *(v14 + 4);
      *(v14 + 2) = v25;
      *(v14 + 3) = v10;
      if (v22)
      {
        *(v14 + 5) = v22;
        operator delete(v22);
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        *(v14 + 6) = 0;
      }

      v23 = *(v14 + 7);
      *(v14 + 4) = v9;
      *(v14 + 10) = v26;
      if (v23)
      {
        *(v14 + 8) = v23;
        operator delete(v23);
        *(v14 + 7) = 0;
        *(v14 + 8) = 0;
        *(v14 + 9) = 0;
      }

      result = v27;
      *(v14 + 14) = v27;
      *(v14 + 9) = v12;
    }

    else
    {
      v24 = v12;
      *v13 = *(a2 - 80);
      v15 = v13 + 20;
      std::vector<double>::__move_assign((v13 + 2), (a2 - 72));
      std::vector<double>::__move_assign((v14 + 8), (a2 - 48));
      std::vector<double>::__move_assign((v14 + 14), (a2 - 24));
      *(a2 - 80) = v7;
      v16 = *(a2 - 72);
      if (v16)
      {
        *(a2 - 64) = v16;
        operator delete(v16);
        *(a2 - 72) = 0;
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
      }

      *(a2 - 72) = v25;
      *(a2 - 56) = v10;
      v17 = *(a2 - 48);
      if (v17)
      {
        *(a2 - 40) = v17;
        operator delete(v17);
        *(a2 - 48) = 0;
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
      }

      *(a2 - 48) = v9;
      *(a2 - 40) = v26;
      v18 = *(a2 - 24);
      if (v18)
      {
        *(a2 - 16) = v18;
        operator delete(v18);
        *(a2 - 24) = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = v27;
      *(a2 - 8) = v24;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(a1, (v14 + 20), a3, 0xCCCCCCCCCCCCCCCDLL * ((v15 - a1) >> 4));
    }
  }

  return result;
}

void sub_297717B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ME_Efficient_Model_Trainer::Sample::~Sample(va);
  _Unwind_Resume(a1);
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[20 * v5];
    v8 = v7 + 20;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = v7 + 40;
      if (ME_Efficient_Model_Trainer::Sample::operator<((v7 + 20), (v7 + 40)))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    *a1 = *v8;
    std::vector<double>::__move_assign((a1 + 2), (v8 + 2));
    std::vector<double>::__move_assign((a1 + 8), v8 + 2);
    std::vector<double>::__move_assign((a1 + 14), (v8 + 14));
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ME_Efficient_Model_Trainer::Sample *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 80 * v8;
    v10 = (a2 - 80);
    if (ME_Efficient_Model_Trainer::Sample::operator<(v9, a2 - 80))
    {
      v16 = *(a2 - 80);
      *v17 = *(a2 - 72);
      v18 = *(a2 - 56);
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      *__p = *(a2 - 48);
      v20 = *(a2 - 32);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      *(a2 - 32) = 0;
      v21 = *(a2 - 24);
      v22 = *(a2 - 8);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      *(a2 - 24) = 0;
      do
      {
        v11 = v9;
        v12 = (v9 + 56);
        *v10 = *v9;
        std::vector<double>::__move_assign((v10 + 2), (v9 + 8));
        std::vector<double>::__move_assign((v10 + 8), (v9 + 32));
        std::vector<double>::__move_assign((v10 + 14), (v9 + 56));
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 80 * v8;
        v10 = v11;
      }

      while ((ME_Efficient_Model_Trainer::Sample::operator<(v9, &v16) & 1) != 0);
      *v11 = v16;
      v13 = *(v11 + 8);
      if (v13)
      {
        *(v11 + 16) = v13;
        operator delete(v13);
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
      }

      *(v11 + 8) = *v17;
      *(v11 + 24) = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      v14 = *(v11 + 32);
      if (v14)
      {
        *(v11 + 40) = v14;
        operator delete(v14);
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
      }

      *(v11 + 32) = *__p;
      *(v11 + 48) = v20;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      v15 = *(v11 + 56);
      if (v15)
      {
        *(v11 + 64) = v15;
        operator delete(v15);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v15 = __p[0];
      }

      *(v11 + 56) = v21;
      *(v11 + 72) = v22;
      v22 = 0;
      v21 = 0uLL;
      if (v15)
      {
        __p[1] = v15;
        operator delete(v15);
      }

      if (v17[0])
      {
        v17[1] = v17[0];
        operator delete(v17[0]);
      }
    }
  }
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E51D20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t maxent_model_create()
{
  if (malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL))
  {
    operator new();
  }

  return 0;
}

void maxent_mutable_model_release(ME_Efficient_Model_Trainer **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      ME_Efficient_Model_Trainer::~ME_Efficient_Model_Trainer(v2);
      MEMORY[0x29C272EB0]();
    }

    free(a1);
  }
}

BOOL maxent_save_to_file_with_threshold(ME_Efficient_Model_Trainer **a1, char *a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = ME_Efficient_Model_Trainer::save_to_file(v4, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2977181CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t *maxent_set_heldout(uint64_t *result, int a2, int a3)
{
  if (result)
  {
    v3 = *result;
    *(v3 + 352) = a2;
    *(v3 + 356) = a3;
  }

  return result;
}

double maxent_use_default_SGD(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    *v1 = 0x1E00000002;
    result = 1.0;
    *(v1 + 8) = xmmword_297732740;
  }

  return result;
}

uint64_t *maxent_use_SGD(uint64_t *result, int a2, double a3, double a4)
{
  if (result)
  {
    v4 = *result;
    *v4 = 2;
    *(v4 + 4) = a2;
    *(v4 + 8) = a3;
    *(v4 + 16) = a4;
  }

  return result;
}

uint64_t maxent_use_l1_regularizer(uint64_t result, double a2)
{
  if (result)
  {
    *(*result + 24) = a2;
  }

  return result;
}

uint64_t maxent_use_l2_regularizer(uint64_t result, double a2)
{
  if (result)
  {
    *(*result + 32) = a2;
  }

  return result;
}

void maxent_add_training_sample(ME_Efficient_Model_Trainer **a1, const void ***a2)
{
  if (a1)
  {
    if (a2)
    {
      ME_Efficient_Model_Trainer::add_training_sample(*a1, *a2);
    }
  }
}

ME_Efficient_Model_Trainer **maxent_train(ME_Efficient_Model_Trainer **result)
{
  if (result)
  {
    return ME_Efficient_Model_Trainer::train(*result);
  }

  return result;
}

uint64_t maxent_load_from_file()
{
  if (malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL))
  {
    operator new();
  }

  return 0;
}

void sub_2977183F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t maxent_load_with_bytes()
{
  if (malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL))
  {
    operator new();
  }

  return 0;
}

uint64_t maxent_num_classes(ME_Efficient_Model **a1)
{
  if (a1)
  {
    return ME_Efficient_Model::num_classes(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t maxent_classify(ME_Efficient_Model **a1, ME_Sample **a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  v13 = -1;
  if (a1 && a2)
  {
    ME_Efficient_Model::classify(*a1, *a2, &v13, &__p);
    v6 = __p;
    if (a3)
    {
      v10 = 0;
      v7 = v12;
      if (__p != v12)
      {
        v8 = (__p + 8);
        do
        {
          (*(a3 + 16))(a3, &v10, *(v8 - 1));
          if (v10)
          {
            break;
          }
        }

        while (v8++ != v7);
        v6 = __p;
      }
    }

    if (v6)
    {
      v12 = v6;
      operator delete(v6);
    }

    return v13;
  }

  return result;
}

void sub_29771856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *maxent_get_class_label(ME_Efficient_Model **a1, unsigned int a2)
{
  if (a1)
  {
    return ME_Efficient_Model::get_class_label(*a1, a2);
  }

  else
  {
    return "";
  }
}

uint64_t maxent_get_class_id(uint64_t **a1, char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  class_id = ME_Efficient_Model::get_class_id(v2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return class_id;
}

void sub_297718600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t maxent_model_retain(uint64_t result)
{
  if (result)
  {
    ++*(result + 8);
  }

  return result;
}

void maxent_model_release(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[2] - 1;
    a1[2] = v2;
    if (!v2)
    {
      v3 = *a1;
      if (*a1)
      {
        ME_Efficient_Model::~ME_Efficient_Model(v3);
        MEMORY[0x29C272EB0]();
      }

      free(a1);
    }
  }
}

uint64_t maxent_sample_create()
{
  if (malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL))
  {
    operator new();
  }

  return 0;
}

uint64_t maxent_sample_description(char **a1, void *a2, int a3)
{
  memset(&__src, 0, sizeof(__src));
  v6 = *a1;
  if ((*a1)[23] >= 0)
  {
    v7 = (*a1)[23];
  }

  else
  {
    v7 = *(*a1 + 1);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v7 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (v6[23] >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = *v6;
    }

    memmove(p_p, v9, v7);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v7) = 9;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&__src, v10, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *(*a1 + 3);
  for (i = *(*a1 + 4); v12 != i; v12 = (v12 + 24))
  {
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
    }

    else
    {
      v14 = *v12;
      __p.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&__p.__r_.__value_.__l.__data_ = v14;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v23, v15 + 1);
    if ((v24 & 0x80u) == 0)
    {
      v16 = v23;
    }

    else
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v16, v17, v15);
    }

    *(v16 + v15) = 32;
    if ((v24 & 0x80u) == 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v19 = v24;
    }

    else
    {
      v19 = v23[1];
    }

    std::string::append(&__src, v18, v19);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v20 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = __src.__r_.__value_.__r.__words[0];
    memcpy(a2, __src.__r_.__value_.__l.__data_, a3);
    v20 = LODWORD(__src.__r_.__value_.__r.__words[1]);
    operator delete(v21);
  }

  else
  {
    memcpy(a2, &__src, a3);
  }

  return v20;
}

void sub_297718960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void maxent_sample_set_label(std::string **a1, char *a2)
{
  if (a1)
  {
    v2 = *a1;
    std::string::basic_string[abi:ne200100]<0>(&__str, a2);
    std::string::operator=(v2, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_297718A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *maxent_sample_get_label(const char **a1)
{
  if (!a1)
  {
    return "";
  }

  result = *a1;
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void maxent_sample_add_feature(uint64_t *a1, char *a2)
{
  if (a1)
  {
    v2 = *a1;
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    std::vector<std::string>::push_back[abi:ne200100](v2 + 24, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_297718A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void maxent_sample_add_feature_with_value(void **a1, char *a2, double a3)
{
  if (a1)
  {
    v4 = *a1;
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    ME_Sample::add_feature(v4, __p, a3);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_297718B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ME_Sample::add_feature(void *a1, uint64_t a2, double a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v23 = a3;
  v5 = a1[7];
  v6 = a1[8];
  if (v5 >= v6)
  {
    v8 = a1[6];
    v9 = (v5 - v8) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v8;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v24[4] = a1 + 6;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,double>>>((a1 + 6), v12);
    }

    v13 = 32 * v9;
    v14 = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v13 = v14;
    memset(&__p, 0, sizeof(__p));
    *(v13 + 24) = v23;
    v15 = 32 * v9 + 32;
    v16 = a1[6];
    v17 = a1[7] - v16;
    v18 = 32 * v9 - v17;
    memcpy((v13 - v17), v16, v17);
    v19 = a1[6];
    a1[6] = v18;
    a1[7] = v15;
    v20 = a1[8];
    a1[8] = 0;
    v24[2] = v19;
    v24[3] = v20;
    v24[0] = v19;
    v24[1] = v19;
    std::__split_buffer<std::pair<std::string,double>>::~__split_buffer(v24);
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    a1[7] = v15;
    if (v21 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *&__p.__r_.__value_.__l.__data_;
    *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v5 = v7;
    *(v5 + 24) = v23;
    a1[7] = v5 + 32;
  }
}

void sub_297718C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void maxent_sample_clear(void ****a1)
{
  if (a1)
  {
    ME_Sample::clear(*a1);
  }
}

void ME_Sample::clear(void ***this)
{
  MEMORY[0x29C272D90](this, "");
  std::vector<std::string>::clear[abi:ne200100](this + 3);

  std::vector<std::pair<std::string,double>>::clear[abi:ne200100](this + 6);
}

void maxent_sample_release(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = (v2 + 48);
      std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = (v2 + 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      MEMORY[0x29C272EB0](v2, 0x1032C40C22FA858);
    }

    free(a1);
  }
}

ME_Efficient_Model_Trainer **maxent_copy_trained_model_data(ME_Efficient_Model_Trainer **a1, _DWORD *a2, double a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = tmpfile();
    v7 = *v3;
    v8 = fileno(v6);
    if (ME_Efficient_Model_Trainer::save_to_file_descriptor(v7, v8, a3))
    {
      fseek(v6, 0, 2);
      v9 = MEMORY[0x29C2730D0](v6);
      fseek(v6, 0, 0);
      v3 = malloc_type_malloc(v9, 0x86574F19uLL);
      fread(v3, v9, 1uLL, v6);
      if (a2)
      {
        *a2 = v9;
      }
    }

    else
    {
      v3 = 0;
    }

    fclose(v6);
  }

  return v3;
}

uint64_t maxent_copy_loaded_model_data(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = *(*a1 + 32);
    v3 = *(*a1 + 40);
    if (v3)
    {
      v4 = v2 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v6 = malloc_type_malloc(*(*a1 + 32), 0x6EE5C47FuLL);
      memcpy(v6, v3, v2);
      if (a2)
      {
        *a2 = v2;
      }
    }
  }

  return 0;
}

void ME_Efficient_Model_Trainer::ME_Efficient_Model_Trainer(ME_Efficient_Model_Trainer *this)
{
  *(this + 5) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 26) = 1065353216;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  *(this + 50) = 1065353216;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0u;
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  nlp::BurstTrieCreateMutable(this);
  *(this + 17) = v2;
}

void sub_297718F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v2[45];
  if (v6)
  {
    v2[46] = v6;
    operator delete(v6);
  }

  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = v2[33];
  if (v7)
  {
    v2[34] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[31] = v8;
    operator delete(v8);
  }

  ME_Efficient_Model_Trainer::ME_FeatureBag::~ME_FeatureBag((v2 + 21));
  v9 = *v3;
  if (*v3)
  {
    v2[19] = v9;
    operator delete(v9);
  }

  ME_Efficient_Model_Trainer::StringBag::~StringBag((v2 + 8));
  std::vector<ME_Efficient_Model_Trainer::Sample>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ME_Efficient_Model_Trainer::Sample>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,double>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,double>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,double>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::pair<std::string,double>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,double>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t crfsuite_train_averaged_perceptron_init(int **a1)
{
  params_add_int(a1, "max_iterations", 100, "The maximum number of iterations.");

  return params_add_float(a1, "epsilon", "The stopping criterion (the ratio of incorrect label predictions).", 0.0);
}

uint64_t crfsuite_train_averaged_perceptron(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, void *a5, double **a6)
{
  v8 = a2;
  v10 = *(a2 + 16);
  v12 = *(a1 + 44);
  v11 = *(a1 + 48);
  v135 = 0;
  v136[0] = 0.0;
  v122 = clock();
  v133 = 0;
  v134 = 0.0;
  (*(a4 + 88))(a4, "max_iterations", &v135);
  (*(a4 + 96))(a4, "epsilon", v136);
  v13 = malloc_type_calloc(8uLL, v12, 0x100004000313F17uLL);
  v124 = malloc_type_calloc(8uLL, v12, 0x100004000313F17uLL);
  v127 = v12;
  __dst = malloc_type_calloc(8uLL, v12, 0x100004000313F17uLL);
  v14 = malloc_type_calloc(4uLL, v11, 0x100004052888210uLL);
  v21 = v14;
  if (v13 && v124 && __dst && v14)
  {
    v22 = a5;
    logging(a5, "Averaged perceptron\n", v15, v16, v17, v18, v19, v20, v116);
    logging(a5, "max_iterations: %d\n", v23, v24, v25, v26, v27, v28, v135);
    logging(a5, "epsilon: %f\n", v29, v30, v31, v32, v33, v34, *&v136[0]);
    logging(a5, "\n", v35, v36, v37, v38, v39, v40, v117);
    LODWORD(v129) = 0;
    v132[0] = v13;
    v132[1] = v124;
    v41 = 1;
    v130 = v8;
    while (v129 < v135)
    {
      v126 = clock();
      dataset_shuffle(v8);
      if (v10 < 1)
      {
        v43 = 0.0;
      }

      else
      {
        v42 = 0;
        v43 = 0.0;
        do
        {
          v131 = 0;
          v44 = dataset_get(v8, v42);
          (*(a1 + 88))(a1, v13, 1.0);
          (*(a1 + 96))(a1, v44);
          (*(a1 + 112))(a1, v21, &v131);
          v45 = *v44;
          if (v45 >= 1)
          {
            v46 = 0;
            v47 = 0;
            v48 = 4 * v45;
            do
            {
              if (*(*(v44 + 2) + v46) != *&v21[v46])
              {
                ++v47;
              }

              v46 += 4;
            }

            while (v48 != v46);
            if (v47)
            {
              v133 = 0x3FF0000000000000;
              v134 = v41;
              (*(a1 + 80))(a1, v44);
              v133 = 0xBFF0000000000000;
              v134 = -v41;
              v8 = v130;
              (*(a1 + 80))(a1, v44, v21, update_weights, v132);
              v43 = v43 + v47 / *v44;
            }
          }

          ++v41;
          ++v42;
        }

        while (v42 != v10);
      }

      v49 = __dst;
      memcpy(__dst, v13, 8 * v127);
      if (v127 >= 1)
      {
        v56 = v124;
        v57 = v127;
        do
        {
          v58 = *v56++;
          *v49 = *v49 + -1.0 / v41 * v58;
          ++v49;
          --v57;
        }

        while (v57);
      }

      v129 = (v129 + 1);
      v22 = a5;
      logging(a5, "***** Iteration #%d *****\n", v50, v51, v52, v53, v54, v55, v129);
      logging(a5, "Loss: %f\n", v59, v60, v61, v62, v63, v64, *&v43);
      v71 = 0.0;
      if (v127 >= 1)
      {
        v72 = __dst;
        v73 = v127;
        do
        {
          v74 = *v72++;
          v71 = v71 + v74 * v74;
          --v73;
        }

        while (v73);
      }

      logging(a5, "Feature norm: %f\n", v65, v66, v67, v68, v69, v70, COERCE__INT64(sqrt(v71)));
      v75 = clock();
      logging(a5, "Seconds required for this iteration: %.3f\n", v76, v77, v78, v79, v80, v81, COERCE__INT64((v75 - v126) / 1000000.0));
      if (a3)
      {
        holdout_evaluation(a1, a3, __dst, a5);
      }

      logging(a5, "\n", v82, v83, v84, v85, v86, v87, v118);
      if (v43 / v10 < v136[0])
      {
        logging(a5, "Terminated with the stopping criterion\n", v88, v89, v90, v91, v92, v93, v119);
        logging(a5, "\n", v94, v95, v96, v97, v98, v99, v120);
        break;
      }
    }

    v100 = clock();
    logging(v22, "Total seconds required for training: %.3f\n", v101, v102, v103, v104, v105, v106, COERCE__INT64((v100 - v122) / 1000000.0));
    logging(v22, "\n", v107, v108, v109, v110, v111, v112, v121);
    v113 = 0;
    v114 = __dst;
  }

  else
  {
    free(v14);
    v113 = 2147483649;
    v21 = __dst;
    v114 = 0;
  }

  free(v21);
  free(v124);
  free(v13);
  *a6 = v114;
  return v113;
}

double update_weights(uint64_t a1, int a2, double a3)
{
  v3 = *(a1 + 8);
  *(*a1 + 8 * a2) = *(*a1 + 8 * a2) + *(a1 + 16) * a3;
  result = *(v3 + 8 * a2) + *(a1 + 24) * a3;
  *(v3 + 8 * a2) = result;
  return result;
}

uint64_t exchange_options_0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0)
  {
    (*(a1 + 96))(a1, "c2", a2);
    (*(a1 + 88))(a1, "max_iterations", a2 + 24);
    (*(a1 + 88))(a1, "period", a2 + 28);
    (*(a1 + 96))(a1, "delta", a2 + 32);
    (*(a1 + 96))(a1, "calibration.eta", a2 + 40);
    (*(a1 + 96))(a1, "calibration.rate", a2 + 48);
    (*(a1 + 88))(a1, "calibration.samples", a2 + 56);
    (*(a1 + 88))(a1, "calibration.candidates", a2 + 60);
    (*(a1 + 88))(a1, "calibration.max_trials", a2 + 64);
  }

  else if (a3)
  {
    (*(a1 + 72))(a1, "c2", *a2);
    (*(a1 + 64))(a1, "max_iterations", *(a2 + 24));
    (*(a1 + 64))(a1, "period", *(a2 + 28));
    (*(a1 + 72))(a1, "delta", *(a2 + 32));
    (*(a1 + 72))(a1, "calibration.eta", *(a2 + 40));
    (*(a1 + 72))(a1, "calibration.rate", *(a2 + 48));
    (*(a1 + 64))(a1, "calibration.samples", *(a2 + 56));
    (*(a1 + 64))(a1, "calibration.candidates", *(a2 + 60));
    (*(a1 + 64))(a1, "calibration.max_trials", *(a2 + 64));
  }

  else
  {
    params_add_float(a1, "c2", "Coefficient for L2 regularization.", 1.0);
    params_add_int(a1, "max_iterations", 1000, "The maximum number of iterations (epochs) for SGD optimization.");
    params_add_int(a1, "period", 10, "The duration of iterations to test the stopping criterion.");
    params_add_float(a1, "delta", "The threshold for the stopping criterion; an optimization process stops when\nthe improvement of the log likelihood over the last ${period} iterations is no\ngreater than this threshold.", 0.000001);
    params_add_float(a1, "calibration.eta", "The initial value of learning rate (eta) used for calibration.", 0.1);
    params_add_float(a1, "calibration.rate", "The rate of increase/decrease of learning rate for calibration.", 2.0);
    params_add_int(a1, "calibration.samples", 1000, "The number of instances used for calibration.");
    params_add_int(a1, "calibration.candidates", 10, "The number of candidates of learning rate.");
    params_add_int(a1, "calibration.max_trials", 20, "The maximum number of trials of learning rates for calibration.");
  }

  return 0;
}

uint64_t crfsuite_train_l2sgd(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, void *a5, void *a6)
{
  v179 = 0;
  v11 = *(a2 + 16);
  v12 = *(a1 + 44);
  v178 = 0;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  exchange_options_0(a4, &v174, -1);
  v13 = malloc_type_calloc(8uLL, v12, 0x100004000313F17uLL);
  if (!v13)
  {
    return 2147483649;
  }

  v20 = v13;
  v172 = a3;
  v173 = a6;
  v171 = v11;
  *(&v174 + 1) = (*&v174 + *&v174) / v11;
  logging(a5, "Stochastic Gradient Descent (SGD)\n", v14, v15, v16, v17, v18, v19, v164);
  logging(a5, "c2: %f\n", v21, v22, v23, v24, v25, v26, v174);
  logging(a5, "max_iterations: %d\n", v27, v28, v29, v30, v31, v32, DWORD2(v175));
  logging(a5, "period: %d\n", v33, v34, v35, v36, v37, v38, HIDWORD(v175));
  logging(a5, "delta: %f\n", v39, v40, v41, v42, v43, v44, v176);
  logging(a5, "\n", v45, v46, v47, v48, v49, v50, v165);
  v170 = clock();
  v51 = HIDWORD(v177);
  v169 = clock();
  v181[0] = 0.0;
  v58 = *(a2 + 16);
  if (v58 >= SDWORD2(v177))
  {
    v59 = DWORD2(v177);
  }

  else
  {
    v59 = v58;
  }

  v60 = *(a1 + 44);
  v62 = *(&v176 + 1);
  v61 = *&v177;
  v63 = *(&v174 + 1);
  logging(a5, "Calibrating the learning rate (eta)\n", v52, v53, v54, v55, v56, v57, v166);
  logging(a5, "calibration.eta: %f\n", v64, v65, v66, v67, v68, v69, *&v62);
  logging(a5, "calibration.rate: %f\n", v70, v71, v72, v73, v74, v75, v61);
  logging(a5, "calibration.samples: %d\n", v76, v77, v78, v79, v80, v81, v59);
  logging(a5, "calibration.candidates: %d\n", v82, v83, v84, v85, v86, v87, v51);
  logging(a5, "calibration.max_trials: %d\n", v88, v89, v90, v91, v92, v93, v178);
  dataset_shuffle(a2);
  if (v60 >= 1)
  {
    bzero(v20, 8 * v60);
  }

  v94 = v20;
  (*(a1 + 88))(a1, v20, 1.0);
  v101 = 0.0;
  v102 = 0.0;
  if (v59 >= 1)
  {
    v103 = 0;
    do
    {
      v180 = 0.0;
      v104 = dataset_get(a2, v103);
      (*(a1 + 96))(a1, v104);
      (*(a1 + 104))(a1, *(v104 + 16), &v180);
      v105 = v102 - v180;
      (*(a1 + 120))(a1, &v180);
      v102 = v105 + v180;
      ++v103;
    }

    while (v59 != v103);
  }

  v106 = v94;
  if (v60 >= 1)
  {
    v101 = 0.0;
    v107 = v94;
    do
    {
      v108 = *v107++;
      v101 = v101 + v108 * v108;
      --v60;
    }

    while (v60);
  }

  v109 = v102 + v63 * 0.5 * v101 * v58;
  logging(a5, "Initial loss: %f\n", v95, v96, v97, v98, v99, v100, *&v109);
  v116 = 0;
  v117 = 1.79769313e308;
  *&v118 = v62;
  v119 = 1;
  v120 = v62 / *&v61;
  do
  {
    if (v51 <= 0 && v116)
    {
      break;
    }

    logging(a5, "Trial #%d (eta = %f): ", v110, v111, v112, v113, v114, v115, v119);
    l2sgd(a1, a2, 0, v106, a5, v59, 1, 1, 1.0 / (v63 * v62), v63, 0.0, 1, v181);
    v128 = v181[0] < v109 && (*&v181[0] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if (v128)
    {
      logging(a5, "%f\n", v121, v122, v123, v124, v125, v126, *&v181[0]);
      LODWORD(v51) = v51 - 1;
    }

    else
    {
      logging(a5, "%f (worse)\n", v121, v122, v123, v124, v125, v126, *&v181[0]);
    }

    if ((*&v181[0] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v181[0] < v117)
    {
      *&v118 = v62;
      v117 = v181[0];
    }

    if (v116)
    {
      v116 = 1;
      v62 = v62 / *&v61;
    }

    else if (v51 > 0 && v128)
    {
      v116 = 0;
      v62 = *&v61 * v62;
    }

    else
    {
      v116 = 1;
      LODWORD(v51) = HIDWORD(v177);
      v62 = v120;
    }

    v106 = v94;
    v119 = (v119 + 1);
  }

  while (v178 > v119);
  logging(a5, "Best learning rate (eta): %f\n", v110, v111, v112, v113, v114, v115, v118);
  v130 = clock();
  logging(a5, "Seconds required: %.3f\n", v131, v132, v133, v134, v135, v136, COERCE__INT64((v130 - v169) / 1000000.0));
  logging(a5, "\n", v137, v138, v139, v140, v141, v142, v167);
  *&v175 = 1.0 / (v63 * *&v118);
  v143 = l2sgd(a1, a2, v172, v106, a5, v171, DWORD2(v175), 0, *&v175, *(&v174 + 1), *&v176, SHIDWORD(v175), &v179);
  logging(a5, "Loss: %f\n", v144, v145, v146, v147, v148, v149, v179);
  v150 = clock();
  logging(a5, "Total seconds required for training: %.3f\n", v151, v152, v153, v154, v155, v156, COERCE__INT64((v150 - v170) / 1000000.0));
  logging(a5, "\n", v157, v158, v159, v160, v161, v162, v168);
  *v173 = v106;
  return v143;
}

uint64_t l2sgd(uint64_t a1, void *a2, _DWORD *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, int a12, double *a13)
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v96 = 0;
  v21 = 0;
  v22 = a13;
  v101[0] = 0.0;
  v23 = *(a1 + 44);
  v93 = v23;
  if (!a8)
  {
    v24 = *(a1 + 44);
    v25 = malloc_type_malloc(8 * a12, 0x100004000313F17uLL);
    v26 = malloc_type_calloc(v24, 8uLL, 0x100004000313F17uLL);
    v21 = v26;
    v96 = v25;
    if (v25)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      v28 = 0.0;
      v29 = 2147483649;
      goto LABEL_50;
    }

    v23 = v93;
  }

  v30 = v23;
  if (v23 >= 1)
  {
    bzero(a4, 8 * v23);
  }

  __src = v21;
  if (v14 < 1)
  {
    v87 = 1;
    v28 = 0.0;
    v97 = 1.79769313e308;
    v34 = a5;
LABEL_40:
    LODWORD(v31) = v87;
    if (!v13)
    {
LABEL_41:
      if (v31 >= v14)
      {
        v88 = "SGD terminated with the maximum number of iterations\n";
      }

      else
      {
        v88 = "SGD terminated with the stopping criteria\n";
      }

      logging(v34, v88, a3, a4, a5, a6, a7, a8, v90);
    }

    v21 = __src;
    if (__src)
    {
      memcpy(a4, __src, 8 * v93);
      v29 = 0;
      v28 = v97;
    }

    else
    {
      v29 = 0;
    }

    v22 = a13;
  }

  else
  {
    v92 = v14 + 1;
    v31 = 1;
    v32 = 0.0;
    v97 = 1.79769313e308;
    v33 = 0.0;
    v34 = a5;
    while (1)
    {
      v100 = clock();
      v35 = v13;
      if (!v13)
      {
        logging(v34, "***** Epoch #%d *****\n", a3, a4, a5, a6, a7, a8, v31);
        dataset_shuffle(a2);
      }

      v36 = v14;
      if (v15 < 1)
      {
        v39 = 1.0;
        v38 = 0.0;
        v41 = v101[0];
      }

      else
      {
        v37 = 0;
        v38 = 0.0;
        v39 = 1.0;
        do
        {
          v40 = dataset_get(a2, v37);
          v32 = 1.0 / ((v33 + a9) * a10);
          v39 = v39 * (1.0 - v32 * a10);
          (*(a1 + 88))(a1, a4, v39);
          (*(a1 + 96))(a1, v40);
          (*(a1 + 128))(a1, v101, a4, v32 / v39);
          v41 = v101[0];
          v38 = v38 + v101[0];
          v33 = v33 + 1.0;
          ++v37;
        }

        while (v15 != v37);
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        break;
      }

      v34 = a5;
      if (v30 < 1)
      {
        v44 = 0.0;
        v14 = v36;
        v13 = v35;
      }

      else
      {
        v42 = a4;
        v43 = v30;
        v14 = v36;
        do
        {
          *v42 = v39 * *v42;
          ++v42;
          --v43;
        }

        while (v43);
        v44 = 0.0;
        v45 = a4;
        v46 = v30;
        v13 = v35;
        do
        {
          v47 = *v45++;
          v44 = v44 + v47 * v47;
          --v46;
        }

        while (v46);
      }

      v28 = v38 + a10 * 0.5 * v44 * v15;
      if (!v13)
      {
        if (v28 < v97)
        {
          memcpy(__src, a4, 8 * v30);
          v97 = v38 + a10 * 0.5 * v44 * v15;
        }

        v48 = (v31 - 1) % a12;
        if (v31 <= a12)
        {
          v96[v48] = v28;
          logging(a5, "Loss: %f\n", a3, a4, a5, a6, a7, a8, *&v28);
          v49 = a11;
        }

        else
        {
          v49 = (v96[v48] - v28) / v28;
          v96[v48] = v28;
          logging(a5, "Loss: %f\n", a3, a4, a5, a6, a7, a8, *&v28);
          logging(a5, "Improvement ratio: %f\n", v50, v51, v52, v53, v54, v55, *&v49);
        }

        logging(a5, "Feature L2-norm: %f\n", v56, v57, v58, v59, v60, v61, COERCE__INT64(sqrt(v44)));
        logging(a5, "Learning rate (eta): %f\n", v62, v63, v64, v65, v66, v67, *&v32);
        logging(a5, "Total number of feature updates: %.0f\n", v68, v69, v70, v71, v72, v73, *&v33);
        v74 = clock();
        logging(a5, "Seconds required for this iteration: %.3f\n", v75, v76, v77, v78, v79, v80, COERCE__INT64((v74 - v100) / 1000000.0));
        if (a3)
        {
          holdout_evaluation(a1, a3, a4, a5);
        }

        logging(a5, "\n", v81, v82, v83, v84, v85, v86, v91);
        if (v49 < a11)
        {
          goto LABEL_41;
        }
      }

      v27 = v31 == v14;
      v31 = (v31 + 1);
      if (v27)
      {
        v87 = v92;
        goto LABEL_40;
      }
    }

    logging(a5, "ERROR: overflow loss\n", a3, a4, a5, a6, a7, a8, v90);
    v29 = 2147483653;
    v28 = v101[0];
    v22 = a13;
    v21 = __src;
  }

LABEL_50:
  free(v21);
  free(v96);
  if (v22)
  {
    *v22 = v28;
  }

  return v29;
}