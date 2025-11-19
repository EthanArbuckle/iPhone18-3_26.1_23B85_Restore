uint64_t der_heim_oid_cmp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(a1[1], *(a2 + 8), 4 * v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_heim_octet_string_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_printable_string_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_ia5_string_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_heim_bit_string_cmp(unint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return v2 - *a2;
  }

  v3 = a1[1];
  v4 = a2[1];
  result = memcmp(v3, v4, v2 >> 3);
  if (!result)
  {
    if ((v2 & 7) != 0)
    {
      return (v3[v2 >> 3] >> (8 - (v2 & 7))) - (v4[v2 >> 3] >> (8 - (v2 & 7)));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t der_heim_integer_cmp(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16) - *(a1 + 16));
  if (!v2)
  {
    v3 = *a1;
    if (*a1 == *a2)
    {
      return memcmp(*(a1 + 8), *(a2 + 8), v3);
    }

    return v3 - *a2;
  }

  return v2;
}

uint64_t der_heim_bmp_string_cmp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(a1[1], *(a2 + 8), 2 * v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_heim_universal_string_cmp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == *a2)
  {
    return memcmp(a1[1], *(a2 + 8), 4 * v2);
  }

  else
  {
    return v2 - *a2;
  }
}

uint64_t der_copy_general_string(const char **a1, char **a2)
{
  v3 = strdup(*a1);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t der_copy_utf8string(const char **a1, char **a2)
{
  v3 = strdup(*a1);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t der_copy_printable_string(uint64_t a1, size_t *a2)
{
  v4 = *a1;
  *a2 = *a1;
  v5 = malloc_type_malloc(v4 + 1, 0x37CC4817uLL);
  a2[1] = v5;
  if (!v5)
  {
    return 12;
  }

  memcpy(v5, *(a1 + 8), *a2);
  result = 0;
  *(a2[1] + *a2) = 0;
  return result;
}

uint64_t der_copy_bmp_string(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a2 = *a1;
  v5 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  a2[1] = v5;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  memcpy(v5, a1[1], 2 * *a2);
  return 0;
}

uint64_t der_copy_universal_string(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a2 = *a1;
  v5 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  a2[1] = v5;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  memcpy(v5, a1[1], 4 * *a2);
  return 0;
}

uint64_t der_copy_visible_string(const char **a1, char **a2)
{
  v3 = strdup(*a1);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t der_copy_octet_string(uint64_t a1, size_t *a2)
{
  v4 = *a1;
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x4E0CA080uLL);
  a2[1] = v5;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  memcpy(v5, *(a1 + 8), *a2);
  return 0;
}

uint64_t der_copy_heim_integer(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x6E26821DuLL);
  *(a2 + 8) = v5;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  memcpy(v5, *(a1 + 8), *a2);
  result = 0;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t der_copy_oid(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a2 = *a1;
  v5 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  a2[1] = v5;
  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 12;
  }

  memcpy(v5, a1[1], 4 * *a2);
  return 0;
}

uint64_t der_copy_bit_string(uint64_t a1, void *a2)
{
  v4 = *a1 + 7;
  *a2 = *a1;
  v5 = malloc_type_malloc(v4 >> 3, 0xB2F36C78uLL);
  a2[1] = v5;
  if (v4 >= 8 && v5 == 0)
  {
    return 12;
  }

  memcpy(v5, *(a1 + 8), v4 >> 3);
  return 0;
}

uint64_t der_parse_hex_heim_integer(char *__s, uint64_t a2)
{
  v3 = __s;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*__s == 45)
  {
    v3 = __s + 1;
    *(a2 + 16) = 1;
  }

  v4 = strlen(v3);
  if (v4 <= 0)
  {
    goto LABEL_14;
  }

  v5 = (v4 >> 1) + 1;
  *a2 = v5;
  v6 = malloc_type_malloc(v5, 0xDDB0DA5uLL);
  *(a2 + 8) = v6;
  if (!v6)
  {
    *a2 = 0;
    return 12;
  }

  v7 = rk_hex_decode(v3, v6, *a2);
  v8 = *(a2 + 8);
  if (v7 < 0)
  {
    free(v8);
LABEL_14:
    *a2 = 0;
    *(a2 + 8) = 0;
    return 22;
  }

  v9 = *(a2 + 8);
  if (v7)
  {
    while (!*v9)
    {
      ++v9;
      if (v7-- <= 1)
      {
        v7 = 0;
        break;
      }
    }
  }

  *a2 = v7;
  memmove(v8, v9, v7);
  return 0;
}

uint64_t der_print_hex_heim_integer(uint64_t a1, char **a2)
{
  if (rk_hex_encode(*(a1 + 8), *a1, a2) < 0)
  {
    return 12;
  }

  if (*(a1 + 16))
  {
    v6 = *a2;
    v7 = 0;
    v4 = asprintf(&v7, "-%s", v6);
    free(*a2);
    if ((v4 & 0x80000000) == 0)
    {
      result = 0;
      *a2 = v7;
      return result;
    }

    return 12;
  }

  return 0;
}

uint64_t der_print_heim_oid(unint64_t *a1, uint64_t a2, char **a3)
{
  if (!*a1)
  {
    return 22;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v7 = rk_strpoolprintf(v7, "%d", *(a1[1] + 4 * v6));
    if (!v7)
    {
LABEL_11:
      *a3 = 0;
      return 12;
    }

    v8 = *a1;
    if (v6 < *a1 - 1)
    {
      v7 = rk_strpoolprintf(v7, "%c", a2);
      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = *a1;
    }

    ++v6;
  }

  while (v6 < v8);
  v9 = rk_strpoolcollect(v7);
  *a3 = v9;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t der_parse_heim_oid(const char *a1, const char *a2, uint64_t a3)
{
  __lasts = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = ".";
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = strdup(a1);
  v6 = strtok_r(v5, v4, &__lasts);
  if (v6)
  {
    v7 = v6;
    v15 = 0;
    while (1)
    {
      v8 = malloc_type_realloc(*(a3 + 8), 4 * *a3 + 4, 0x100004052888210uLL);
      if (!v8)
      {
        break;
      }

      *(a3 + 8) = v8;
      v9 = strtol(v7, &v15, 10);
      if (*v15)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 >> 31 == 0;
      }

      if (!v10)
      {
        v13 = 22;
        goto LABEL_15;
      }

      v12 = *a3;
      v11 = *(a3 + 8);
      ++*a3;
      *(v11 + 4 * v12) = v9;
      v7 = strtok_r(0, v4, &__lasts);
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v13 = 12;
LABEL_15:
    der_free_oid(a3);
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  free(v5);
  return v13;
}

void der_free_printable_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_octet_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_ia5_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_bmp_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_universal_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_heim_integer(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_oid(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void der_free_bit_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t der_get_unsigned(_BYTE *a1, unint64_t a2, int *a3, unint64_t *a4)
{
  if (a2 == 5)
  {
    if (!*a1)
    {
LABEL_7:
      v5 = 0;
      v6 = a2;
      do
      {
        v7 = *a1++;
        v5 = v7 | (v5 << 8);
        --v6;
      }

      while (v6);
      goto LABEL_11;
    }

    return 1859794437;
  }

  if (a2 > 4)
  {
    return 1859794437;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v5 = 0;
LABEL_11:
  *a3 = v5;
  result = 0;
  if (a4)
  {
    *a4 = a2;
  }

  return result;
}

uint64_t der_get_integer(char *a1, unint64_t a2, int *a3, unint64_t *a4)
{
  if (a2 > 4)
  {
    return 1859794437;
  }

  if (a2)
  {
    v5 = *a1;
    v6 = a2 - 1;
    if (a2 != 1)
    {
      v7 = (a1 + 1);
      do
      {
        v8 = *v7++;
        v5 = v8 | (v5 << 8);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  result = 0;
  if (a4)
  {
    *a4 = a2;
  }

  return result;
}

uint64_t der_get_length(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = 1859794437;
  if (a2)
  {
    v6 = *a1;
    v5 = a1 + 1;
    v7 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      *a3 = v7;
      if (!a4)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 == 128)
    {
      *a3 = 3705724653;
      if (a4)
      {
LABEL_7:
        v8 = 1;
LABEL_8:
        v4 = 0;
        *a4 = v8;
        return v4;
      }

      return 0;
    }

    v9 = v7 & 0x7F;
    if (a2 - 1 < v9)
    {
      return v4;
    }

    if (v9 == 5)
    {
      if (*v5)
      {
        return v4;
      }
    }

    else
    {
      if (v9 > 4)
      {
        return v4;
      }

      if (!v9)
      {
        v10 = 0;
        goto LABEL_19;
      }
    }

    LODWORD(v10) = 0;
    v11 = v9;
    do
    {
      v12 = *v5++;
      v10 = v12 | (v10 << 8);
      --v11;
    }

    while (v11);
LABEL_19:
    *a3 = v10;
    if (a4)
    {
      v8 = v9 + 1;
      goto LABEL_8;
    }

    return 0;
  }

  return v4;
}

uint64_t der_get_BOOLean(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  if (!a2)
  {
    return 1859794437;
  }

  result = 0;
  *a3 = *a1 != 0;
  *a4 = 1;
  return result;
}

uint64_t der_get_general_string(void *a1, size_t __n, void *a3, void *a4)
{
  v8 = memchr(a1, 0, __n);
  if (v8)
  {
    v9 = v8 - a1;
    if (v8 - a1 >= __n || *v8)
    {
LABEL_7:
      if (v9 != __n)
      {
        *a3 = 0;
        return 1859794443;
      }
    }

    else
    {
      v10 = v8 + 1;
      while (++v9 < __n)
      {
        if (*v10++)
        {
          goto LABEL_7;
        }
      }
    }
  }

  if (__n == -1)
  {
    result = 1859794439;
    *a3 = 0;
  }

  else
  {
    v12 = malloc_type_malloc(__n + 1, 0x92E2EF8FuLL);
    *a3 = v12;
    if (v12)
    {
      v13 = v12;
      memcpy(v12, a1, __n);
      v13[__n] = 0;
      result = 0;
      if (a4)
      {
        *a4 = __n;
      }
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t der_get_printable_string(const void *a1, size_t a2, size_t *a3, size_t *a4)
{
  if (a2 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    return 1859794439;
  }

  else
  {
    *a3 = a2;
    v8 = malloc_type_malloc(a2 + 1, 0xCD5D4D82uLL);
    a3[1] = v8;
    if (v8)
    {
      memcpy(v8, a1, a2);
      *(a3[1] + a2) = 0;
      result = 0;
      if (a4)
      {
        *a4 = a2;
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      return 12;
    }
  }

  return result;
}

uint64_t der_get_bmp_string(uint64_t a1, size_t size, size_t *a3, void *a4)
{
  if (!size)
  {
    result = 0;
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (size)
  {
    result = 1859794440;
    goto LABEL_7;
  }

  *a3 = size >> 1;
  if (size >= 0xFFFFFFFF)
  {
    *a3 = 0;
    a3[1] = 0;
    return 34;
  }

  v9 = malloc_type_malloc(size, 0x1000040BDFB0063uLL);
  a3[1] = v9;
  v10 = *a3;
  if (!v9)
  {
    if (v10)
    {
      *a3 = 0;
      a3[1] = 0;
      return 12;
    }

    goto LABEL_18;
  }

  if (!v10)
  {
LABEL_18:
    result = 0;
    if (a4)
    {
      *a4 = size;
    }

    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = __rev16(*(a1 + v11));
    *&v9[v11] = v12;
    if (v10 != 1 && !v12)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_18;
    }
  }

  free(v9);
  *a3 = 0;
  a3[1] = 0;
  return 1859794443;
}

uint64_t der_get_universal_string(uint64_t a1, size_t size, size_t *a3, void *a4)
{
  if (!size)
  {
    result = 0;
    goto LABEL_5;
  }

  if ((size & 3) != 0)
  {
    result = 1859794440;
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  *a3 = size >> 2;
  if (size < 0xFFFFFFFD)
  {
    v9 = malloc_type_malloc(size, 0x100004052888210uLL);
    a3[1] = v9;
    if (v9)
    {
      v10 = *a3;
      if (*a3)
      {
        v11 = 0;
        while (1)
        {
          v12 = bswap32(*(a1 + v11));
          *&v9[v11] = v12;
          if (v10 != 1 && !v12)
          {
            break;
          }

          v11 += 4;
          if (!--v10)
          {
            goto LABEL_15;
          }
        }

        free(v9);
        *a3 = 0;
        a3[1] = 0;
        return 1859794443;
      }

      else
      {
LABEL_15:
        result = 0;
        if (a4)
        {
          *a4 = size;
        }
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      return 12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    return 34;
  }

  return result;
}

uint64_t der_get_octet_string(const void *a1, size_t size, void *a3, void *a4)
{
  *a3 = size;
  if (size)
  {
    v8 = malloc_type_malloc(size, 0x7A893474uLL);
    a3[1] = v8;
    if (!v8)
    {
      return 12;
    }

    memcpy(v8, a1, size);
  }

  else
  {
    a3[1] = 0;
  }

  result = 0;
  if (a4)
  {
    *a4 = size;
  }

  return result;
}

uint64_t der_get_octet_string_ber(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  v22 = 0;
  v21 = 0;
  v8 = 1859794438;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v9 = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  while (1)
  {
    if (!v9)
    {
      if (v18)
      {
        return 1859794447;
      }

      goto LABEL_24;
    }

    tag = der_get_tag(a1, v9, &v22, &v22 + 1, &v21, &v20);
    if (tag)
    {
      goto LABEL_16;
    }

    if (v22)
    {
      goto LABEL_20;
    }

    v11 = HIDWORD(v22);
    if (!(HIDWORD(v22) | v21))
    {
      break;
    }

    if (v21 != 4)
    {
      goto LABEL_20;
    }

    v12 = &a1[v20];
    v13 = v9 - v20;
    tag = der_get_length(v12, v13, &v19, &v20);
    if (tag)
    {
LABEL_16:
      v8 = tag;
LABEL_20:
      free(*(a3 + 8));
      *a3 = 0;
      *(a3 + 8) = 0;
      return v8;
    }

    v14 = v19;
    if (v19 == 3705724653)
    {
      return 1859794452;
    }

    v9 = v13 - v20;
    if (v9 < v19)
    {
      return 1859794437;
    }

    a1 = &v12[v20];
    if (v11)
    {
      ++v18;
      goto LABEL_15;
    }

    if (v7 | v19)
    {
      v15 = malloc_type_realloc(*(a3 + 8), v7 + v19, 0xDDCB3D6DuLL);
      if (!v15)
      {
        v8 = 12;
        goto LABEL_20;
      }

      *(a3 + 8) = v15;
      memcpy(&v15[*a3], a1, v14);
      v7 = *a3 + v14;
      *a3 = v7;
LABEL_15:
      a1 += v14;
      v9 -= v14;
    }
  }

  if (v18)
  {
    goto LABEL_20;
  }

LABEL_24:
  v8 = 0;
  if (a4)
  {
    *a4 = a2 - v9;
  }

  return v8;
}

uint64_t der_get_tag(_BYTE *a1, uint64_t a2, int *a3, int *a4, _DWORD *a5, uint64_t *a6)
{
  result = 1859794437;
  if (a2)
  {
    *a3 = *a1 >> 6;
    *a4 = (*a1 >> 5) & 1;
    v8 = *a1 & 0x1F;
    *a5 = v8;
    if (v8 == 31)
    {
      v9 = 0;
      *a5 = 0;
      v10 = 1;
      while (a2 != v10)
      {
        v11 = a1[v10];
        v12 = v11 & 0x7F | (v9 << 7);
        if (v12 < v9)
        {
          return 1859794436;
        }

        *a5 = v12;
        ++v10;
        v9 = v11 & 0x7F | (v9 << 7);
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v10 = 1;
LABEL_9:
      result = 0;
      if (a6)
      {
        *a6 = v10;
      }
    }
  }

  return result;
}

uint64_t der_get_heim_integer(char *a1, size_t size, uint64_t a3, size_t *a4)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (!size)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_24;
  }

  v6 = size;
  v7 = a1;
  if ((*a1 & 0x80000000) == 0)
  {
    *a3 = size;
    v8 = size - 1;
    if (size == 1 || *v7)
    {
      v8 = size;
    }

    else
    {
      ++v7;
      *a3 = v8;
    }

    v11 = malloc_type_malloc(v8, 0x4FC6F11AuLL);
    *(a3 + 8) = v11;
    if (v11)
    {
      memcpy(v11, v7, *a3);
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  *(a3 + 16) = 1;
  *a3 = size;
  v10 = size - 1;
  if (size == 1 || *v7 != 255)
  {
    v10 = size;
  }

  else
  {
    ++v7;
    *a3 = v10;
  }

  v12 = malloc_type_malloc(v10, 0x8794AE4BuLL);
  *(a3 + 8) = v12;
  if (!v12)
  {
LABEL_23:
    *a3 = 0;
    result = 12;
    if (!a4)
    {
      return result;
    }

LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  v13 = *a3 - 1;
  if (v13 >= 0)
  {
    v14 = &v12[v13];
    v15 = &v7[v13];
    v16 = 1;
    do
    {
      v17 = *v15;
      *v14 = ~v17;
      if (v16)
      {
        *v14 = -v17;
        v16 = v17 == 0;
      }

      --v15;
      --v14;
    }

    while (v14 >= *(a3 + 8));
  }

LABEL_21:
  result = 0;
  if (a4)
  {
LABEL_25:
    *a4 = v6;
  }

  return result;
}

uint64_t der_get_time(const void *a1, size_t a2, uint64_t *a3, size_t *a4)
{
  v5 = 1859794432;
  if (a2 + 1 < 2)
  {
    return 1859794439;
  }

  v9 = malloc_type_malloc(a2 + 1, 0x2195324EuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  memcpy(v9, a1, a2);
  v10[a2] = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (sscanf(v10, "%04d%02d%02d%02d%02d%02dZ", &v14 + 4, &v14, &v13 | 0xC, &v13 + 8, &v13 + 4, &v13) == 6)
  {
    v11 = DWORD1(v14);
  }

  else
  {
    if (sscanf(v10, "%02d%02d%02d%02d%02d%02dZ", &v14 + 4, &v14, &v13 | 0xC, &v13 + 8, &v13 + 4, &v13) != 6)
    {
      goto LABEL_11;
    }

    v11 = DWORD1(v14) + 2000;
    if (SDWORD1(v14) > 49)
    {
      v11 = DWORD1(v14) + 1900;
    }
  }

  LODWORD(v14) = v14 - 1;
  DWORD1(v14) = v11 - 1900;
  v5 = 0;
  *a3 = _der_timegm(&v13);
LABEL_11:
  free(v10);
  if (a4)
  {
    *a4 = a2;
  }

  return v5;
}

uint64_t der_get_oid(_BYTE *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = 1859794437;
  if (a2)
  {
    v6 = a2 + 1;
    if (a2 == -1)
    {
      return 1859794439;
    }

    else if (v6 >> 30)
    {
      return 34;
    }

    else
    {
      v10 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
      a3[1] = v10;
      if (v10)
      {
        *v10 = *a1 / 0x28u;
        v10[1] = *a1 % 0x28u;
        v11 = a2 - 1;
        if (a2 == 1)
        {
          v13 = 2;
        }

        else
        {
          v12 = a1 + 1;
          v13 = 2;
          while (2)
          {
            v14 = 0;
            do
            {
              v15 = v14;
              v16 = *v12;
              v14 = *v12 & 0x7F | (v14 << 7);
              if (v14 < v15)
              {
                goto LABEL_16;
              }

              v17 = v11;
              ++v12;
              --v11;
            }

            while (v11 && v16 < 0);
            v10[v13++] = v14;
            if (v17 != 1)
            {
              continue;
            }

            break;
          }

          if (v13 >= 3 && *(v12 - 1) < 0)
          {
LABEL_16:
            der_free_oid(a3);
            return v4;
          }
        }

        *a3 = v13;
        v4 = 0;
        if (a4)
        {
          *a4 = a2;
        }
      }

      else
      {
        return 12;
      }
    }
  }

  return v4;
}

uint64_t der_match_tag(_BYTE *a1, uint64_t a2, int a3, int a4, unsigned int a5, void *a6)
{
  v9 = 0;
  LODWORD(result) = der_match_tag2(a1, a2, a3, &v9, a5, a6);
  if (v9 == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1859794438;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t der_match_tag2(_BYTE *a1, uint64_t a2, int a3, int *a4, unsigned int a5, void *a6)
{
  v10 = 0;
  v11 = 0;
  result = der_get_tag(a1, a2, &v10 + 1, a4, &v10, &v11);
  if (!result)
  {
    result = 1859794433;
    if (HIDWORD(v10) == a3)
    {
      if (v10 >= a5)
      {
        if (v10 <= a5)
        {
          result = 0;
          if (a6)
          {
            *a6 = v11;
          }
        }
      }

      else
      {
        return 1859794434;
      }
    }

    else
    {
      return 1859794438;
    }
  }

  return result;
}

uint64_t der_match_tag_and_length(_BYTE *a1, uint64_t a2, int a3, int *a4, unsigned int a5, void *a6, void *a7)
{
  v13 = 0;
  result = der_match_tag2(a1, a2, a3, a4, a5, &v13);
  if (!result)
  {
    v12 = v13;
    result = der_get_length(&a1[v13], a2 - v13, a6, &v13);
    if (!result)
    {
      result = 0;
      if (a7)
      {
        *a7 = v13 + v12;
      }
    }
  }

  return result;
}

uint64_t _heim_fix_dce(unint64_t a1, unint64_t *a2)
{
  if (a1 == 3705724653)
  {
    return 1;
  }

  if (*a2 < a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = a1;
  return result;
}

uint64_t der_get_bit_string(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  result = 1859794437;
  if (a2)
  {
    if (*a1 > 7u)
    {
      return 1859794440;
    }

    v9 = a2 - 1;
    if (a2 == 1 && *a1)
    {
      return 1859794440;
    }

    else if (a2 <= 0x2000000000000000)
    {
      if (a2 == 1)
      {
        v11 = 0;
        a3[1] = 0;
      }

      else
      {
        *a3 = 8 * v9;
        v10 = malloc_type_malloc(a2 - 1, 0xA3899896uLL);
        a3[1] = v10;
        if (!v10)
        {
          return 12;
        }

        memcpy(v10, a1 + 1, v9);
        v11 = *a3 - *a1;
      }

      *a3 = v11;
      result = 0;
      if (a4)
      {
        *a4 = a2;
      }
    }
  }

  return result;
}

uint64_t _heim_len_unsigned(unsigned int a1)
{
  v1 = 1;
  do
  {
    v2 = a1;
    a1 >>= 8;
    ++v1;
  }

  while (v2 > 0xFF);
  if (v2 <= 0x7F)
  {
    return v1 - 1;
  }

  else
  {
    return v1;
  }
}

uint64_t _heim_len_int(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    v4 = ~a1;
    v5 = 1;
    do
    {
      v6 = v4;
      v4 >>= 8;
      ++v5;
    }

    while (v6 > 0xFF);
    if ((v6 ^ 0x80) >= 0x80)
    {
      return v5 - 1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1;
    do
    {
      v2 = a1;
      a1 >>= 8;
      ++v1;
    }

    while (v2 > 0xFF);
    if (v2 <= 0x7F)
    {
      return v1 - 1;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t der_length_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

uint64_t der_length_tag(unsigned int a1)
{
  if (a1 < 0x1F)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0x7F;
    v2 >>= 7;
  }

  while (v3);
  return result;
}

uint64_t der_length_unsigned(unsigned int *a1)
{
  v1 = *a1;
  v2 = 1;
  do
  {
    v3 = v1;
    v1 >>= 8;
    ++v2;
  }

  while (v3 > 0xFF);
  if (v3 <= 0x7F)
  {
    return v2 - 1;
  }

  else
  {
    return v2;
  }
}

unint64_t der_length_heim_integer(uint64_t a1)
{
  if (*a1)
  {
    return *a1 + (**(a1 + 8) >> 7);
  }

  else
  {
    return 1;
  }
}

uint64_t der_length_oid(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 3)
  {
    return 1;
  }

  v2 = a1[1];
  result = 1;
  v4 = 2;
  do
  {
    v5 = *(v2 + 4 * v4);
    do
    {
      ++result;
      v6 = v5 > 0x7F;
      v5 >>= 7;
    }

    while (v6);
    ++v4;
  }

  while (v4 != v1);
  return result;
}

uint64_t der_length_generalized_time(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  _heim_time2generalizedtime(*a1, &v3, 1);
  v1 = v3;
  free(v4);
  return v1;
}

uint64_t der_length_utctime(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  _heim_time2generalizedtime(*a1, &v3, 0);
  v1 = v3;
  free(v4);
  return v1;
}

uint64_t der_put_unsigned(_BYTE *a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = 1859794436;
  v5 = *a3;
  if (*a3)
  {
    if (a2)
    {
      v6 = a1;
      do
      {
        v7 = v5;
        *v6-- = v5;
        if (!--a2)
        {
          break;
        }

        v5 >>= 8;
      }

      while (v7 > 0xFF);
      if (v7 <= 0xFF)
      {
        if ((v7 & 0x80) == 0)
        {
LABEL_10:
          v8 = a1 - v6;
LABEL_13:
          v4 = 0;
          *a4 = v8;
          return v4;
        }

        if (a2)
        {
          *v6-- = 0;
          goto LABEL_10;
        }
      }
    }
  }

  else if (a2)
  {
    *a1 = 0;
    v8 = 1;
    goto LABEL_13;
  }

  return v4;
}

uint64_t der_put_integer(_BYTE *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = *a3;
  if ((*a3 & 0x80000000) != 0)
  {
    v7 = ~v4;
    v5 = a1;
    while (a2)
    {
      v8 = v7;
      *v5-- = ~v7;
      --a2;
      v7 >>= 8;
      if (v8 <= 0xFF)
      {
        if ((v8 & 0x80) != 0)
        {
          if (!a2)
          {
            return 1859794436;
          }

          *v5-- = -1;
        }

LABEL_14:
        v9 = 0;
        *a4 = a1 - v5;
        return v9;
      }
    }
  }

  else
  {
    v5 = a1;
    while (a2)
    {
      v6 = v4;
      *v5-- = v4;
      --a2;
      v4 >>= 8;
      if (v6 <= 0xFF)
      {
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_14;
        }

        if (a2)
        {
          *v5-- = 0;
          goto LABEL_14;
        }

        return 1859794436;
      }
    }
  }

  return 1859794436;
}

uint64_t der_put_length(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  result = 1859794436;
  if (a2)
  {
    if (a3 >= 0x80)
    {
      v7 = 0;
      while (1 - a2 != v7)
      {
        a1[v7--] = a3;
        v8 = a3 > 0xFF;
        a3 >>= 8;
        if (!v8)
        {
          a1[v7] = -v7 | 0x80;
          if (a4)
          {
            v6 = 1 - v7;
            goto LABEL_9;
          }

          return 0;
        }
      }
    }

    else
    {
      *a1 = a3;
      v6 = 1;
LABEL_9:
      result = 0;
      *a4 = v6;
    }
  }

  return result;
}

uint64_t der_put_BOOLean(char *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  if (!a2)
  {
    return 1859794436;
  }

  result = 0;
  if (*a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *a4 = 1;
  return result;
}

uint64_t der_put_general_string(uint64_t a1, size_t a2, const char **a3, size_t *a4)
{
  v7 = *a3;
  v8 = strlen(*a3);
  if (v8 > a2)
  {
    return 1859794436;
  }

  v10 = v8;
  memcpy((a1 - v8 + 1), v7, v8);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t der_put_printable_string(uint64_t a1, size_t a2, uint64_t a3, void *a4)
{
  v5 = *a3;
  if (v5 > a2)
  {
    return 1859794436;
  }

  memcpy((a1 - v5 + 1), *(a3 + 8), v5);
  result = 0;
  *a4 = *a3;
  return result;
}

uint64_t der_put_octet_string(uint64_t a1, size_t a2, uint64_t a3, void *a4)
{
  v5 = *a3;
  if (v5 > a2)
  {
    return 1859794436;
  }

  memcpy((a1 - v5 + 1), *(a3 + 8), v5);
  result = 0;
  *a4 = *a3;
  return result;
}

uint64_t der_put_ia5_string(uint64_t a1, size_t a2, uint64_t a3, void *a4)
{
  v5 = *a3;
  if (v5 > a2)
  {
    return 1859794436;
  }

  memcpy((a1 - v5 + 1), *(a3 + 8), v5);
  result = 0;
  *a4 = *a3;
  return result;
}

uint64_t der_put_bmp_string(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  if (*a3 > a2 >> 1)
  {
    return 1859794436;
  }

  v6 = 0;
  if (v4)
  {
    v7 = a1 - 2 * v4;
    do
    {
      *(v7 + 1) = *(a3[1] + 2 * v6 + 1);
      *(v7 + 2) = *(a3[1] + 2 * v6);
      v7 += 2;
      ++v6;
    }

    while (v6 < *a3);
    v6 = 2 * *a3;
  }

  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t der_put_universal_string(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 > a2 >> 2)
  {
    return 1859794436;
  }

  v6 = 0;
  if (v4)
  {
    v7 = 0;
    v8 = a1 - 4 * v4;
    do
    {
      v9 = (v8 + v6);
      v9[1] = *(a3[1] + v6 + 3);
      v9[2] = *(a3[1] + v6 + 2);
      v9[3] = BYTE1(*(a3[1] + v6));
      v9[4] = *(a3[1] + v6);
      ++v7;
      v6 += 4;
    }

    while (v7 < *a3);
    v6 = 4 * *a3;
  }

  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t der_put_heim_integer(_BYTE *a1, size_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 1859794436;
  v7 = *a3;
  if (!*a3)
  {
    if (!a2)
    {
      return v6;
    }

    *a1 = 0;
    if (a4)
    {
      v13 = 1;
LABEL_18:
      v6 = 0;
      *a4 = v13;
      return v6;
    }

    return 0;
  }

  if (v7 > a2)
  {
    return v6;
  }

  v9 = *(a3 + 8);
  if (!*(a3 + 16))
  {
    v14 = &a1[-v7];
    memcpy(&a1[-v7 + 1], v9, *a3);
    if (v14[1] < 0)
    {
      if (v7 == a2)
      {
        return v6;
      }

      *v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if ((v7 - 1) >= 0)
  {
    v10 = 1;
    v11 = *a3;
    do
    {
      v12 = v9[v11 - 1];
      *a1 = ~v12;
      if (v10)
      {
        *a1 = -v12;
        v10 = v12 == 0;
      }

      --a1;
      --v11;
    }

    while (v11 > 0);
  }

  if (a1[1] < 0)
  {
LABEL_16:
    v15 = 0;
    if (a4)
    {
LABEL_17:
      v13 = *a3 + v15;
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 != a2)
  {
    *a1 = -1;
LABEL_21:
    v15 = 1;
    if (!a4)
    {
      return 0;
    }

    goto LABEL_17;
  }

  return v6;
}

uint64_t der_put_generalized_time(uint64_t a1, size_t a2, uint64_t *a3, size_t *a4)
{
  __n = 0;
  __src = 0;
  result = _heim_time2generalizedtime(*a3, &__n, 1);
  if (!result)
  {
    v8 = __n;
    if (__n <= a2)
    {
      v9 = a1 - __n;
      v10 = __src;
      memcpy((v9 + 1), __src, __n);
      free(v10);
      result = 0;
      if (a4)
      {
        *a4 = v8;
      }
    }

    else
    {
      free(__src);
      return 1859794436;
    }
  }

  return result;
}

uint64_t _heim_time2generalizedtime(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3)
  {
    v6 = 15;
  }

  else
  {
    v6 = 13;
  }

  v7 = malloc_type_malloc(v6 + 1, 0x375B893BuLL);
  a2[1] = v7;
  if (!v7)
  {
    return 12;
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  *a2 = v6;
  v8 = _der_gmtime(a1, &v11);
  v9 = a2[1];
  if (v8)
  {
    if (a3)
    {
      snprintf(v9, v6 + 1, "%04d%02d%02d%02d%02d%02dZ", (DWORD1(v12) + 1900));
    }

    else
    {
      snprintf(v9, v6 + 1, "%02d%02d%02d%02d%02d%02dZ", (SDWORD1(v12) % 100));
    }

    return 0;
  }

  else
  {
    free(v9);
    *a2 = 0;
    a2[1] = 0;
    return 1859794432;
  }
}

uint64_t der_put_utctime(uint64_t a1, size_t a2, uint64_t *a3, size_t *a4)
{
  __n = 0;
  __src = 0;
  result = _heim_time2generalizedtime(*a3, &__n, 0);
  if (!result)
  {
    v8 = __n;
    if (__n <= a2)
    {
      v9 = a1 - __n;
      v10 = __src;
      memcpy((v9 + 1), __src, __n);
      free(v10);
      result = 0;
      if (a4)
      {
        *a4 = v8;
      }
    }

    else
    {
      free(__src);
      return 1859794436;
    }
  }

  return result;
}

uint64_t der_put_oid(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *a3 - 1;
  v5 = a1;
  while (v4 >= 2)
  {
    if (!a2)
    {
      return 1859794436;
    }

    v6 = *(a3[1] + 4 * v4);
    *v5-- = v6 & 0x7F;
    --a2;
    if (v6 >= 0x80)
    {
      while (a2)
      {
        *v5-- = (v6 >> 7) | 0x80;
        --a2;
        v7 = v6 >= 0x4000;
        v6 >>= 7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      return 1859794436;
    }

LABEL_7:
    --v4;
  }

  if (a2)
  {
    v8 = 0;
    *v5 = *(a3[1] + 4) + 40 * *a3[1];
    *a4 = a1 - v5 + 1;
    return v8;
  }

  return 1859794436;
}

uint64_t der_put_tag(_BYTE *a1, uint64_t a2, char a3, char a4, unsigned int a5, uint64_t *a6)
{
  result = 1859794436;
  if (a5 >= 0x1F)
  {
    v9 = 0;
    v8 = 1;
    while (a2)
    {
      *a1-- = v9 | a5 & 0x7F;
      --a2;
      ++v8;
      v9 = 0x80;
      v10 = a5 > 0x7F;
      a5 >>= 7;
      if (!v10)
      {
        if (!a2)
        {
          return result;
        }

        *a1 = (32 * a4) | (a3 << 6) | 0x1F;
        goto LABEL_9;
      }
    }
  }

  else if (a2)
  {
    *a1 = (32 * a4) | (a3 << 6) | a5;
    v8 = 1;
LABEL_9:
    result = 0;
    *a6 = v8;
  }

  return result;
}

uint64_t der_put_length_and_tag(_BYTE *a1, uint64_t a2, unint64_t a3, char a4, char a5, unsigned int a6, void *a7)
{
  v7 = 1859794436;
  if (a2)
  {
    if (a3 >= 0x80)
    {
      v10 = 0;
      while (1 - a2 != v10)
      {
        a1[v10--] = a3;
        v11 = a3 > 0xFF;
        a3 >>= 8;
        if (!v11)
        {
          a1[v10] = -v10 | 0x80;
          v9 = 1 - v10;
          goto LABEL_8;
        }
      }
    }

    else
    {
      *a1 = a3;
      v9 = 1;
LABEL_8:
      v13 = v9;
      v7 = der_put_tag(&a1[-v9], a2 - v9, a4, a5, a6, &v13);
      if (!v7)
      {
        *a7 = v13 + v9;
      }
    }
  }

  return v7;
}

uint64_t der_put_bit_string(uint64_t a1, size_t a2, uint64_t a3, size_t *a4)
{
  v5 = (*a3 + 7) >> 3;
  if (v5 >= a2)
  {
    return 1859794436;
  }

  v7 = v5 + 1;
  v8 = a1 + ~v5;
  memcpy((v8 + 2), *(a3 + 8), v5);
  v9 = *a3;
  if (*a3)
  {
    v9 = *a3 & 7;
    if (v9)
    {
      LOBYTE(v9) = 8 - v9;
    }
  }

  result = 0;
  *(v8 + 1) = v9;
  *a4 = v7;
  return result;
}

uint64_t _heim_der_set_sort(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if (*a1 >= *a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a1;
  }

  LODWORD(result) = memcmp(*(a1 + 8), *(a2 + 8), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return (v3 - v4);
  }
}

char *der_get_class_name(unsigned int a1)
{
  if (a1 <= 3)
  {
    return class_names[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t der_get_class_num(char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = class_names[v2];
    if (v3)
    {
      if (!strcasecmp(v3, a1))
      {
        break;
      }
    }

    if (++v2 == 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

char *der_get_type_name(unsigned int a1)
{
  if (a1 <= 1)
  {
    return type_names[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t der_get_type_num(char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = type_names[v2];
    if (v3)
    {
      if (!strcasecmp(v3, a1))
      {
        break;
      }
    }

    if (++v2 == 2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

char *der_get_tag_name(unsigned int a1)
{
  if (a1 <= 0x1E)
  {
    return tag_names[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t der_get_tag_num(char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = tag_names[v2];
    if (v3)
    {
      if (!strcasecmp(v3, a1))
      {
        break;
      }
    }

    if (++v2 == 31)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t decode_heim_any(_BYTE *a1, unint64_t a2, size_t *a3, void *a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  *a3 = 0;
  a3[1] = 0;
  tag = der_get_tag(a1, a2, &v15 + 1, &v15, &v14, &v16);
  if (tag)
  {
    return tag;
  }

  v9 = 1859794436;
  if (a2 < v16)
  {
    return v9;
  }

  tag = der_get_length(&a1[v16], a2 - v16, &v17, &v18);
  if (tag)
  {
    return tag;
  }

  if (v17 == 3705724653)
  {
    if (a2 < v16 + v18)
    {
      return v9;
    }

    v17 = a2 - (v16 + v18);
    v11 = a2;
  }

  else
  {
    v11 = v18 + v17 + v16;
    if (v11 > a2)
    {
      return v9;
    }
  }

  v12 = malloc_type_malloc(v11, 0x68FDACEDuLL);
  a3[1] = v12;
  if (!v12)
  {
    return 12;
  }

  v13 = v18 + v17 + v16;
  *a3 = v13;
  memcpy(v12, a1, v13);
  v9 = 0;
  if (a4)
  {
    *a4 = v18 + v17 + v16;
  }

  return v9;
}

uint64_t _der_timegm(unsigned int *a1)
{
  v1 = a1[5];
  if (v1 > 2000)
  {
    return 0;
  }

  if (v1 < 0)
  {
    return -1;
  }

  v3 = a1[4];
  if (v3 > 0xB)
  {
    return -1;
  }

  v4 = a1[3];
  if (v4 < 1)
  {
    return -1;
  }

  v5 = v1 + 1900;
  v6 = a1[5] & 3;
  if ((v1 & 3) != 0)
  {
    v7 = 0;
  }

  else
  {
    HIDWORD(v8) = -1030792151 * (v1 + 1900);
    LODWORD(v8) = HIDWORD(v8);
    if ((v8 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v9) = -1030792151 * (v1 + 1900);
      LODWORD(v9) = HIDWORD(v9);
      v7 = (v9 >> 4) < 0xA3D70B;
    }

    else
    {
      v7 = 1;
    }
  }

  if (v4 > ndays[12 * v7 + v3])
  {
    return -1;
  }

  v10 = a1[2];
  if (v10 > 0x17)
  {
    return -1;
  }

  v11 = a1[1];
  if (v11 > 0x3B)
  {
    return -1;
  }

  v12 = *a1;
  if (v12 > 0x3C)
  {
    return -1;
  }

  if (v1 < 0x47)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 70;
    v15 = -1970;
    v16 = 1970;
    do
    {
      if ((v14 & 3) == 0 && (!(v15 + 100 * (v16 / 0x64)) ? (v17 = v15 + 400 * (v16 / 0x190) == 0) : (v17 = 1), v17))
      {
        v18 = 366;
      }

      else
      {
        v18 = 365;
      }

      v13 += v18;
      ++v14;
      --v15;
      ++v16;
    }

    while (v1 != v14);
  }

  if (v3)
  {
    HIDWORD(v19) = -1030792151 * v5;
    LODWORD(v19) = -1030792151 * v5;
    v20 = (v19 >> 2) > 0x28F5C28;
    HIDWORD(v19) = -1030792151 * v5;
    LODWORD(v19) = -1030792151 * v5;
    v21 = v19 >> 4;
    v24 = (v20 || v21 < 0xA3D70B) && v6 == 0;
    v25 = &ndays[12 * v24];
    do
    {
      v26 = *v25++;
      v13 += v26;
      --v3;
    }

    while (v3);
  }

  return v12 + 60 * (v11 + 60 * (v10 + 24 * (v4 + v13)) - 1440);
}

uint64_t _der_gmtime(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = a1 / 86400;
  v5 = a1 % 86400;
  v6 = v5 % 60;
  v7 = v5 / 3600;
  v8 = v5 % 3600 + ((-30583 * (v5 % 3600)) >> 16);
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *a2 = v6;
  *(a2 + 4) = (v8 >> 5) + ((v8 & 0x8000) >> 15);
  *(a2 + 8) = v7;
  if (a1 <= 0xEAF63A97FLL)
  {
    v9 = 0;
    *(a2 + 20) = 70;
    v10 = -1970;
    for (i = 1970; ; ++i)
    {
      if (((v9 + 70) & 3) == 0 && (!(v10 + 100 * (i / 0x64)) ? (v12 = v10 + 400 * (i / 0x190) == 0) : (v12 = 1), v12))
      {
        v13 = 366;
      }

      else
      {
        v13 = 365;
      }

      v14 = __OFSUB__(v4, v13);
      v15 = v4 - v13;
      if (v15 < 0 != v14)
      {
        break;
      }

      *(a2 + 20) = v9 + 71;
      --v10;
      ++v9;
      v4 = v15;
    }

    v12 = v10 + 100 * (i / 0x64) == 0;
    v16 = v10 + 400 * (i / 0x190);
    v19 = (!v12 || v16 == 0) && ((v9 + 70) & 3) == 0;
    v20 = ndays[12 * v19];
    if (v4 >= v20)
    {
      v21 = 0;
      v22 = &ndays[12 * v19 + 1];
      do
      {
        v4 -= v20;
        v20 = v22[v21++];
      }

      while (v4 >= v20);
    }

    else
    {
      LODWORD(v21) = 0;
    }

    *(a2 + 12) = v4 + 1;
    *(a2 + 16) = v21;
    return a2;
  }

  return result;
}

uint64_t encode_hex(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = a2;
  v8 = malloc_type_malloc((2 * a2) | 1, 0x7F214C42uLL);
  if (!v8)
  {
LABEL_8:
    v9 = -1;
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = 2 * v6;
    v10 = v8 + 1;
    do
    {
      *(v10 - 1) = *(a3 + (*a1 >> 4));
      v11 = *a1++;
      *v10 = *(a3 + (v11 & 0xF));
      v10 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = 0;
  }

  v8[v9] = 0;
LABEL_11:
  *a4 = v8;
  return v9;
}

uint64_t rk_hex_decode(const char *a1, _BYTE *a2, size_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = v6 & 1;
  if (v7 + (v6 >> 1) > a3)
  {
    return -1;
  }

  v9 = v6;
  if (v6)
  {
    v10 = *v5++;
    *a2++ = pos(v10);
  }

  if (v9 >= 2)
  {
    v11 = v9 >> 1;
    v12 = v5 + 1;
    v13 = v11;
    do
    {
      v14 = pos(*(v12 - 1));
      *a2++ = pos(*v12) | (16 * v14);
      v12 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
  }

  return v11 + v7;
}

uint64_t pos(unsigned __int8 a1)
{
  v1 = __toupper(a1);
  result = 0;
  LOBYTE(v3) = 48;
  while (v1 != v3)
  {
    v3 = hexchar_upper[++result];
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void rk_strpoolfree(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void **rk_strpoolprintf(void **a1, char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  if (!a1)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
    v3 = v4;
    if (!v4)
    {
      return v3;
    }

    *v4 = 0;
    v4[1] = 0;
  }

  __src[0] = 0;
  va_copy(&__src[1], va);
  v5 = vasprintf(__src, a2, va);
  if (__src[0] && (v6 = v5, (v7 = malloc_type_realloc(*v3, v3[1] + v5 + 1, 0x52B4E89uLL)) != 0))
  {
    *v3 = v7;
    memcpy(v3[1] + v7, __src[0], v6 + 1);
    v3[1] = v3[1] + v6;
    free(__src[0]);
  }

  else
  {
    rk_strpoolfree(v3);
    return 0;
  }

  return v3;
}

char *rk_strpoolcollect(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    free(a1);
    return v2;
  }

  else
  {

    return strdup(&unk_298AB310D);
  }
}

void asn1_abort(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(crashreporter_info, 0x64uLL, __format, va);
  __crashreporter_info__ = crashreporter_info;
  abort();
}

_BYTE *_asn1_bmember_put_bit(_BYTE *result, _DWORD *a2, char a3, uint64_t a4, _DWORD *a5)
{
  if ((*a2 >> a3))
  {
    *result |= 1 << (a3 & 7 ^ 7);
    if (!*a5)
    {
      *a5 = 8 - (a3 & 7);
    }
  }

  return result;
}

uint64_t _asn1_decode(int *a1, unsigned int a2, unsigned __int8 *a3, size_t a4, size_t *a5, size_t *a6)
{
  v7 = a4;
  v8 = *(a1 + 1);
  v70 = *a1;
  if (*a1)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  if (!v8)
  {
LABEL_96:
    if ((v70 & 2) != 0)
    {
      v61 = 0;
    }

    else
    {
      v61 = v10;
    }

    v62 = v7 - v61;
    if (a6)
    {
      *a6 = v62;
    }

    if (v9)
    {
      v63 = malloc_type_malloc(v62, 0x22E76DC2uLL);
      a5[1] = v63;
      if (!v63)
      {
        return 12;
      }

      *a5 = v62;
      memcpy(v63, v9, v62);
    }

    return 0;
  }

  v11 = a3;
  v12 = a1;
  v67 = a2 & 1;
  v10 = a4;
  v68 = v9;
  while (1)
  {
    v13 = v12;
    v15 = v12[4];
    v12 += 4;
    v14 = v15;
    v16 = v15 >> 28;
    v17 = (v15 >> 28) ^ 8;
    if (v17 > 11)
    {
      break;
    }

    if ((v17 - 9) < 2)
    {
      v76 = 0;
      v23 = *(v13 + 3);
      if (v16 == 1)
      {
        v24 = *(v23 + 4);
      }

      else
      {
        v24 = *(v23 + 40);
      }

      v31 = (a5 + v13[5]);
      v32 = v31;
      if ((v14 & 0x1000000) != 0)
      {
        v33 = malloc_type_calloc(1uLL, v24, 0x132A62EFuLL);
        *v31 = v33;
        if (!v33)
        {
          return 12;
        }

        v32 = v33;
        v14 = *v12;
      }

      v34 = *(v13 + 3);
      if (v14 >> 28 == 1)
      {
        result = _asn1_decode(v34, a2, v11, v10, v32, &v76);
        if (result)
        {
          goto LABEL_53;
        }
      }

      else
      {
        result = (*(v34 + 8))(v11, v10, v32, &v76);
        if (result)
        {
LABEL_53:
          if ((*(v12 + 3) & 1) == 0)
          {
            return result;
          }

          free(*v31);
          *v31 = 0;
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (!v17)
    {
      v35 = *(v13 + 3);
      v36 = v35[1];
      v76 = 0;
      *(a5 + v36) = 0;
      v37 = *(v35 + 1);
      if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v66 = v36;
        v38 = 1;
        while (1)
        {
          v39 = &v35[4 * v38];
          v40 = _asn1_decode(*(v39 + 1), 0, v11, v10, a5 + v39[1], &v76);
          if ((v40 - 1859794433) > 5 || ((1 << (v40 - 1)) & 0x23) == 0)
          {
            break;
          }

          v42 = *(v39 + 1);
          v43 = v39[1];
          _asn1_free(v42, a5 + v43);
          bzero(a5 + v43, *(v42 + 4));
          v38 = (v38 + 1);
          v37 = *(v35 + 1);
          if (v37 + 1 <= v38)
          {
            v9 = v68;
            v7 = a4;
            v36 = v66;
            goto LABEL_60;
          }
        }

        v57 = v40;
        if (v40)
        {
          v64 = *(v39 + 1);
          v65 = v39[1];
          _asn1_free(v64, a5 + v65);
          bzero(a5 + v65, *(v64 + 4));
        }

        else
        {
          v36 = v66;
          *(a5 + v66) = v38;
          v11 += v76;
          v10 -= v76;
          v37 = *(v35 + 1);
          v9 = v68;
          v7 = a4;
LABEL_60:
          if (v37 + 1 > v38)
          {
            goto LABEL_57;
          }

          if (*v35)
          {
            *(a5 + v36) = -1;
            octet_string = der_get_octet_string(v11, v10, (a5 + *v35), &v76);
            if (!octet_string)
            {
              v11 += v76;
              v10 -= v76;
              v7 = a4;
              goto LABEL_57;
            }

            return octet_string;
          }

          else
          {
            return 1859794438;
          }
        }

        return v57;
      }

      v38 = 1;
      goto LABEL_60;
    }

    if (v17 != 11)
    {
      goto LABEL_117;
    }

    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    result = der_match_tag_and_length(v11, v10, (v14 >> 22) & 3, &v75, v14 & 0x1FFFFF, &v74, &v73);
    if (result)
    {
      if ((*v12 & 0x1000000) == 0)
      {
        return result;
      }

      goto LABEL_57;
    }

    v51 = *v12;
    v52 = a2;
    if ((a2 & 2) != 0)
    {
      v52 = a2;
      if (v75 != ((v51 >> 21) & 1))
      {
        v52 = ((*(*(v13 + 3) + 16) & 0xF0000FFF) == 1073741829) | a2;
      }
    }

    v54 = v73;
    v53 = v74;
    v55 = v10 - v73;
    if (v74 == 3705724653)
    {
      if ((a2 & 2) == 0)
      {
        return 1859794449;
      }

      v56 = v55 - 2;
      if (v55 < 2)
      {
        return 1859794437;
      }

      v52 = v52 | 4;
      v74 = v55 - 2;
    }

    else
    {
      v56 = v74;
      if (v74 > v55)
      {
        return 1859794437;
      }
    }

    v58 = (a5 + v13[5]);
    if ((v51 & 0x1000000) != 0)
    {
      v59 = malloc_type_calloc(1uLL, *(*(v13 + 3) + 4), 0x614D7A86uLL);
      *v58 = v59;
      if (!v59)
      {
        return 12;
      }

      v56 = v74;
      v58 = v59;
    }

    v60 = &v11[v54];
    result = _asn1_decode(*(v13 + 3), v52, v60, v56, v58, &v76);
    if (result)
    {
      return result;
    }

    if (v53 == 3705724653)
    {
      v74 = v76;
      v10 = v55 - v76;
      v11 = &v60[v76];
      result = der_match_tag_and_length(v11, v55 - v76, 0, &v75, 0, &v74, &v73);
      v9 = v68;
      v7 = a4;
      if (result)
      {
        return result;
      }

      if (v75)
      {
        return 1859794438;
      }

      if (v74)
      {
        return 1859794450;
      }

      v45 = v73;
      goto LABEL_56;
    }

    v9 = v68;
    v7 = a4;
    if (v76 != v74)
    {
      return 1859794442;
    }

    v10 = v55 - v76;
    v11 = &v60[v76];
LABEL_57:
    if (!--v8)
    {
      goto LABEL_96;
    }
  }

  if ((v17 - 13) < 2)
  {
    v25 = v13[5];
    v76 = 0;
    if (v10)
    {
      v26 = 0;
      v27 = (a5 + v25);
      v28 = *(*(v13 + 3) + 4);
      do
      {
        if ((a2 & 4) != 0)
        {
          v75 = 0;
          v73 = 0;
          v74 = 0;
          if (!der_match_tag_and_length(v11, v10, 0, &v75, 0, &v74, &v73))
          {
            break;
          }
        }

        if (__CFADD__(v28, v26))
        {
          return 1859794436;
        }

        v29 = malloc_type_realloc(v27[1], v28 + v26, 0xC8E266A4uLL);
        if (!v29)
        {
          return 12;
        }

        v30 = v29;
        bzero(&v29[v26], v28);
        v27[1] = v30;
        ++*v27;
        result = _asn1_decode(*(v13 + 3), a2 & 0xFFFFFFFA, v11, v10, &v30[v26], &v76);
        if (result)
        {
          return result;
        }

        v26 += v28;
        v11 += v76;
        v10 -= v76;
      }

      while (v10);
      v9 = v68;
      v7 = a4;
    }

    goto LABEL_57;
  }

  if (v17 == 12)
  {
    v76 = 0;
    v44 = (v14 & 0xFFF) + v67;
    if (v44 >= 0x13)
    {
      asn1_abort("type larger then asn1_template_prim: %u", v44);
    }

    result = (asn1_template_prim[6 * v44 + 1])(v11, v10, a5 + v13[5], &v76);
    if (result)
    {
      return result;
    }

LABEL_55:
    v45 = v76;
LABEL_56:
    v11 += v45;
    v10 -= v45;
    goto LABEL_57;
  }

  if (v17 != 15)
  {
LABEL_117:
    asn1_abort("unknown opcode: %u", v14 & 0xF0000000);
  }

  v19 = *(v13 + 3);
  v20 = *(v19 + 8);
  bzero(a5, *(v19 + 4));
  if (v10)
  {
    ++v11;
    v21 = v10 - 1;
    if (v20)
    {
      v22 = v10 == 1;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v10 = 0;
    }

    else
    {
      v47 = 0;
      v48 = v19 + 16;
      do
      {
        v49 = *(v48 + 4);
        if (v49 >> 3 <= v47 >> 3)
        {
          goto LABEL_69;
        }

        do
        {
          v50 = v21;
          ++v11;
          --v21;
          v47 += 8;
        }

        while (v49 >> 3 > v47 >> 3 && v50 != 1);
        if (v50 == 1)
        {
          v21 = 0;
        }

        else
        {
LABEL_69:
          if ((*v11 >> (~v49 & 7)))
          {
            *a5 |= 1 << v49;
          }

          --v20;
          v48 += 16;
        }

        v10 = 0;
      }

      while (v20 && v21);
    }

    goto LABEL_57;
  }

  return 1859794437;
}

void _asn1_free_top(uint64_t a1, void *a2)
{
  _asn1_free(a1, a2);
  v4 = *(a1 + 4);

  bzero(a2, v4);
}

uint64_t _asn1_encode(uint64_t a1, _BYTE *a2, size_t a3, _DWORD *a4, void *a5)
{
  v5 = a3;
  v6 = *(a1 + 8);
  v7 = a3;
  if (!v6)
  {
LABEL_98:
    result = 0;
    if (a5)
    {
      *a5 = v5 - v7;
    }

    return result;
  }

  v10 = 0;
  v11 = (a1 + 16 * v6);
  v7 = a3;
  while (1)
  {
    v12 = *v11;
    v13 = *v11 >> 28;
    v14 = v13 ^ 8;
    if ((v13 ^ 8) > 11)
    {
      break;
    }

    if ((v14 - 9) < 2)
    {
      v74 = 0;
      v28 = (a4 + v11[1]);
      if ((v12 & 0x1000000) != 0)
      {
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_97;
        }
      }

      v29 = *(v11 + 1);
      if (v13 == 1)
      {
        result = _asn1_encode(v29, a2);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = (*v29)(a2, v7, v28, &v74);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_52;
    }

    if (!v14)
    {
      v45 = *(v11 + 1);
      v46 = v45[1];
      v74 = 0;
      v47 = *(a4 + v46);
      if (!v47 || v47 > v45[2])
      {
        asn1_abort("invalid choice: %d", v47);
      }

      if (v47 == -1)
      {
        v10 = der_put_octet_string(a2, v7, a4 + *v45, &v74) + v10;
      }

      else
      {
        v48 = &v45[4 * v47];
        v49 = a4 + v48[1];
        result = _asn1_encode(*(v48 + 1), a2);
        if (result)
        {
          return result;
        }

        v10 = 0;
      }

      v7 -= v74;
      a2 -= v74;
      goto LABEL_97;
    }

    if (v14 != 11)
    {
      goto LABEL_112;
    }

    v74 = 0;
    if ((v12 & 0x1000000) == 0 || *(a4 + v11[1]))
    {
      result = _asn1_encode(*(v11 + 1), a2);
      if (result)
      {
        return result;
      }

      result = der_put_length_and_tag(a2, v7, 0, (*v11 >> 22) & 3, (*v11 & 0x200000) != 0, *v11 & 0x1FFFFF, &v74);
      if (result)
      {
        return result;
      }

LABEL_52:
      v10 = 0;
      a2 -= v74;
      v7 -= v74;
    }

LABEL_97:
    v11 -= 4;
    if (!--v6)
    {
      goto LABEL_98;
    }
  }

  if (v14 <= 13)
  {
    if (v14 != 12)
    {
      if (v14 != 13)
      {
        goto LABEL_112;
      }

      v16 = v5;
      v17 = a4 + v11[1];
      v18 = *(*(v11 + 1) + 4);
      v74 = 0;
      if (*v17)
      {
        v19 = a4;
        v20 = 0;
        v21 = *(v17 + 1) + v18 * (*v17 - 1);
        v22 = -v18;
        do
        {
          result = _asn1_encode(*(v11 + 1), a2);
          if (result)
          {
            return result;
          }

          a2 -= v74;
          v7 -= v74;
          v21 += v22;
          ++v20;
        }

        while (v20 < *v17);
        v10 = 0;
        a4 = v19;
      }

LABEL_96:
      v5 = v16;
      goto LABEL_97;
    }

    v74 = 0;
    if ((v12 & 0xFFF) >= 0x14)
    {
      asn1_abort("type larger then asn1_template_prim: %u", v12 & 0xFFF);
    }

    result = (asn1_template_prim[6 * (v12 & 0xFFF)])(a2, v7, a4 + v11[1], &v74);
    if (result)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (v14 != 14)
  {
    if (v14 != 15)
    {
LABEL_112:
      asn1_abort("unknown opcode: %u", v12 & 0xF0000000);
    }

    v23 = *(v11 + 1);
    v24 = *(v23 + 1);
    v25 = *v23;
    v26 = &v23[4 * v24];
    if (*v23)
    {
      v27 = 31;
    }

    else
    {
      v27 = v26[1];
    }

    if (v24)
    {
      v50 = v7 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      LOBYTE(v55) = 0;
      v54 = 0;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      do
      {
        v56 = v26[1];
        if (v27 >> 3 > v56 >> 3)
        {
          while (1)
          {
            if (v55)
            {
              v57 = 1;
            }

            else
            {
              v57 = (v25 & 1 | v54) != 0;
            }

            if (v57)
            {
              if (!v7)
              {
                return 1859794436;
              }

              *a2-- = v55;
              --v7;
              LODWORD(v56) = v26[1];
            }

            v55 = 0;
            v58 = 0;
            v27 -= 8;
            if (v56 >> 3 >= v27 >> 3)
            {
              goto LABEL_78;
            }
          }
        }

        v58 = v55;
LABEL_78:
        v59 = *a4 >> v56;
        v60 = v56 & 7;
        v61 = v58 | (1 << (v60 ^ 7));
        v62 = 8 - v60;
        if (v54)
        {
          v62 = v54;
        }

        v63 = (v59 & 1) == 0;
        if (v59)
        {
          v55 = v61;
        }

        else
        {
          v55 = v58;
        }

        if (!v63)
        {
          v54 = v62;
        }

        if (!--v24)
        {
          break;
        }

        v26 -= 4;
      }

      while (v7);
    }

    result = 1859794436;
    if (v25 & 1 | v54)
    {
      if (!v7)
      {
        return result;
      }

      *a2-- = v55;
      --v7;
    }

    if (!v7)
    {
      return result;
    }

    v51 = v54 == 0;
    v52 = v54 - 1;
    if ((v25 | v51))
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    *a2-- = v53;
    --v7;
    goto LABEL_97;
  }

  v30 = v5;
  v31 = (a4 + v11[1]);
  v32 = *v31;
  if (!v32)
  {
    v5 = v30;
    goto LABEL_97;
  }

  if (v32 >> 28)
  {
    return 34;
  }

  v33 = v10;
  v71 = v30;
  v73 = *(*(v11 + 1) + 4);
  v34 = *(v31 + 1);
  v35 = malloc_type_calloc(v32, 0x10uLL, 0x108004057E67DB5uLL);
  if (!v35)
  {
    return 12;
  }

  v36 = v35;
  v70 = a4;
  if (!*v31)
  {
    v37 = 0;
    v43 = v33;
    goto LABEL_92;
  }

  v37 = 0;
  v38 = 0;
  v39 = v35;
  do
  {
    v74 = 0;
    v40 = _asn1_length(*(v11 + 1), v34);
    *v39 = v40;
    if (v40)
    {
      v41 = malloc_type_malloc(v40, 0x7EEAD971uLL);
      v39[1] = v41;
      if (!v41)
      {
        v43 = 12;
        goto LABEL_103;
      }

      v42 = *v39;
    }

    else
    {
      v42 = 0;
      v41 = v39[1];
    }

    v43 = _asn1_encode(*(v11 + 1), &v41[v42 - 1]);
    if (v43)
    {
      goto LABEL_103;
    }

    v34 = (v34 + v73);
    v44 = *v39;
    v39 += 2;
    v37 += v44;
    ++v38;
  }

  while (v38 < *v31);
  if (v37 <= v7)
  {
    v43 = 0;
  }

  else
  {
    v43 = 1859794436;
  }

LABEL_92:
  v16 = v71;
  if (!v43)
  {
    qsort(v36, *v31, 0x10uLL, _heim_der_set_sort);
    v64 = 2 * (*v31 - 1);
    do
    {
      v65 = v36[v64];
      a2 -= v65;
      memcpy(a2 + 1, v36[v64 + 1], v65);
      free(v36[v64 + 1]);
      v64 -= 2;
    }

    while (v64 != -2);
    v7 -= v37;
    free(v36);
    v10 = 0;
    a4 = v70;
    goto LABEL_96;
  }

LABEL_103:
  v66 = v43;
  if (*v31)
  {
    v67 = 0;
    v68 = v36 + 1;
    do
    {
      v69 = *v68;
      v68 += 2;
      free(v69);
      ++v67;
    }

    while (v67 < *v31);
  }

  free(v36);
  return v66;
}

uint64_t _asn1_length(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 0;
    for (i = (a1 + 16 * v2); ; i -= 4)
    {
      v6 = *i;
      v7 = (*i >> 28) ^ 8;
      if (v7 > 11)
      {
        if ((v7 - 13) < 2)
        {
          v19 = a2 + i[1];
          if (*v19)
          {
            v20 = 0;
            v21 = *(*(i + 1) + 4);
            v22 = *(v19 + 1);
            do
            {
              v4 += _asn1_length(*(i + 1), v22);
              v22 += v21;
              ++v20;
            }

            while (v20 < *v19);
          }

          goto LABEL_35;
        }

        if (v7 != 12)
        {
          if (v7 != 15)
          {
LABEL_44:
            asn1_abort("unknown opcode: %u", v6 & 0xF0000000);
          }

          v11 = *(i + 1);
          if (*v11)
          {
            v4 += 5;
          }

          else
          {
            v12 = *(v11 + 8);
            ++v4;
            if (v12)
            {
              v13 = (v11 + 16 * v12 + 4);
              while (1)
              {
                v15 = *v13;
                v13 -= 4;
                v14 = v15;
                if ((*a2 >> v15))
                {
                  break;
                }

                if (!--v12)
                {
                  goto LABEL_35;
                }
              }

              v4 += (v14 >> 3) + 1;
            }
          }

          goto LABEL_35;
        }

        v26 = *i & 0xFFF;
        if (v26 >= 0x14)
        {
          asn1_abort("type larger then asn1_template_prim: %u", v26);
        }

        v18 = (asn1_template_prim[6 * v26 + 2])(a2 + i[1]);
        goto LABEL_34;
      }

      if ((v7 - 9) >= 2)
      {
        break;
      }

      v16 = (a2 + i[1]);
      if ((v6 & 0x1000000) != 0)
      {
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_35;
        }
      }

      v17 = *(i + 1);
      if (v6 >> 28 == 1)
      {
        goto LABEL_31;
      }

      v18 = (*(v17 + 16))(v16);
LABEL_34:
      v4 += v18;
LABEL_35:
      if (!--v2)
      {
        return v4;
      }
    }

    if (v7)
    {
      if (v7 != 11)
      {
        goto LABEL_44;
      }

      v8 = (a2 + i[1]);
      if ((v6 & 0x1000000) == 0 || (v8 = *v8) != 0)
      {
        v9 = _asn1_length(*(i + 1), v8);
        v10 = der_length_tag(*i & 0x1FFFFF);
        v4 += v9 + v10 + der_length_len(v9);
      }

      goto LABEL_35;
    }

    v23 = *(i + 1);
    v24 = *(a2 + v23[1]);
    if (!v24 || v24 > v23[2])
    {
      asn1_abort("invalid choice: %d", *(a2 + v23[1]));
    }

    if (v24 == -1)
    {
      v18 = der_length_octet_string(a2 + *v23);
      goto LABEL_34;
    }

    v25 = &v23[4 * v24];
    v17 = *(v25 + 1);
    v16 = (a2 + v25[1]);
LABEL_31:
    v18 = _asn1_length(v17, v16);
    goto LABEL_34;
  }

  return 0;
}

void _asn1_free(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 8);
  if (*a1)
  {
    der_free_octet_string(a2);
  }

  for (; v4; --v4)
  {
    v5 = v3;
    v7 = *(v3 + 16);
    v3 += 16;
    v6 = v7;
    v8 = v7 >> 28;
    v9 = (v7 >> 28) ^ 8;
    if (v9 > 11)
    {
      if ((v9 - 13) < 2)
      {
        v12 = a2 + *(v5 + 20);
        v13 = *(v12 + 8);
        if (*v12)
        {
          v14 = 0;
          v15 = *(*(v5 + 24) + 4);
          do
          {
            _asn1_free(*(v5 + 24), v13);
            v13 += v15;
            ++v14;
          }

          while (v14 < *v12);
          v13 = *(v12 + 8);
        }

        free(v13);
        *(v12 + 8) = 0;
        *v12 = 0;
      }

      else if (v9 == 12)
      {
        v18 = v6 & 0xFFF;
        if (v18 >= 0x14)
        {
          asn1_abort("type larger then asn1_template_prim: %u", v18);
        }

        (asn1_template_prim[6 * v18 + 4])(a2 + *(v5 + 20));
      }

      else if (v9 != 15)
      {
LABEL_39:
        asn1_abort("unknown opcode: %u", v6 & 0xF0000000);
      }

      continue;
    }

    if ((v9 - 9) < 2)
    {
      v10 = (a2 + *(v5 + 20));
      if ((v6 & 0x1000000) != 0)
      {
        v10 = *v10;
        if (!v10)
        {
          continue;
        }
      }

      v11 = *(v5 + 24);
      if (v8 == 1)
      {
        _asn1_free(v11, v10);
      }

      else
      {
        (*(v11 + 32))(v10);
      }

      if ((*(v3 + 3) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      if (!v9)
      {
        v16 = *(v5 + 24);
        v17 = *(a2 + v16[1]);
        if (v17)
        {
          if (v17 > v16[2])
          {
            asn1_abort("invalid choice: %d", *(a2 + v16[1]));
          }

          if (v17 == -1)
          {
            der_free_octet_string(a2 + *v16);
          }

          else
          {
            _asn1_free(*&v16[4 * v17 + 2], a2 + v16[4 * v17 + 1]);
          }
        }

        continue;
      }

      if (v9 != 11)
      {
        goto LABEL_39;
      }

      v10 = (a2 + *(v5 + 20));
      if ((v6 & 0x1000000) != 0)
      {
        v10 = *v10;
        if (!v10)
        {
          continue;
        }
      }

      _asn1_free(*(v5 + 24), v10);
      if ((*(v5 + 19) & 1) == 0)
      {
        continue;
      }
    }

    free(v10);
  }
}

uint64_t _asn1_copy(unsigned int *a1, char *a2, size_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 1);
  if (*a1)
  {
    v7 = der_copy_octet_string(a2, a3);
    if (v7)
    {
      return v7;
    }
  }

  if (!v6)
  {
    return 0;
  }

  __dst = a3;
  while (1)
  {
    v9 = v5;
    v11 = v5[4];
    v5 += 4;
    v10 = v11;
    v12 = v11 >> 28;
    v13 = (v11 >> 28) ^ 8;
    if (v13 <= 11)
    {
      if ((v13 - 9) < 2)
      {
        v18 = *(v9 + 3);
        if (v12 == 1)
        {
          v19 = *(v18 + 4);
        }

        else
        {
          v19 = *(v18 + 40);
        }

        v28 = v9[5];
        v29 = &a2[v28];
        v17 = (__dst + v28);
        if ((v10 & 0x1000000) != 0)
        {
          v29 = *v29;
          if (!v29)
          {
            goto LABEL_49;
          }

          v31 = malloc_type_calloc(1uLL, v19, 0x62D8731CuLL);
          *v17 = v31;
          if (!v31)
          {
            return 12;
          }

          v30 = v31;
          v10 = *v5;
        }

        else
        {
          v30 = __dst + v28;
        }

        v32 = *(v9 + 3);
        if (v10 >> 28 == 1)
        {
          v33 = _asn1_copy(v32, v29, v30);
        }

        else
        {
          v33 = (*(v32 + 24))(v29, v30);
        }

        v8 = v33;
        if (v33)
        {
          if ((*(v5 + 3) & 1) == 0)
          {
            return v8;
          }

LABEL_56:
          free(*v17);
          *v17 = 0;
          return v8;
        }
      }

      else if (v13)
      {
        if (v13 != 11)
        {
          goto LABEL_58;
        }

        v14 = v9[5];
        v15 = &a2[v14];
        v16 = (__dst + v14);
        if ((v10 & 0x1000000) != 0)
        {
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_49;
          }

          v40 = malloc_type_calloc(1uLL, *(*(v9 + 3) + 4), 0x55750FC9uLL);
          *v16 = v40;
          if (!v40)
          {
            return 12;
          }

          v17 = v16;
          v16 = v40;
        }

        else
        {
          v17 = 0;
        }

        v41 = _asn1_copy(*(v9 + 3), v15, v16);
        if (v41)
        {
          v8 = v41;
          if (!v17)
          {
            return v8;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v8 = 1859794451;
        v34 = *(v9 + 3);
        v35 = v34[1];
        v36 = *&a2[v35];
        if (!v36 || v36 > v34[2])
        {
          return v8;
        }

        *(__dst + v35) = v36;
        v37 = *&a2[v35];
        v38 = v37 == -1 ? der_copy_octet_string(&a2[*v34], (__dst + *v34)) : _asn1_copy(*&v34[4 * v37 + 2], &a2[v34[4 * v37 + 1]], __dst + v34[4 * v37 + 1]);
        v8 = v38;
        if (v38)
        {
          return v8;
        }
      }

      goto LABEL_49;
    }

    if ((v13 - 13) >= 2)
    {
      if (v13 == 12)
      {
        v39 = v10 & 0xFFF;
        if (v39 >= 0x14)
        {
          asn1_abort("type larger then asn1_template_prim: %u", v39);
        }

        v7 = (asn1_template_prim[6 * v39 + 3])(&a2[v9[5]], __dst + v9[5]);
        if (v7)
        {
          return v7;
        }
      }

      else
      {
        if (v13 != 15)
        {
LABEL_58:
          asn1_abort("unknown opcode: %u", v10 & 0xF0000000);
        }

        memcpy(__dst, a2, *(*(v9 + 3) + 4));
      }

      goto LABEL_49;
    }

    v20 = v9[5];
    v21 = &a2[v20];
    v22 = __dst + v20;
    v23 = *(*(v9 + 3) + 4);
    v24 = malloc_type_calloc(*&a2[v20], v23, 0x9AF72550uLL);
    *(v22 + 1) = v24;
    if (!v24)
    {
      return 12;
    }

    v25 = *v21;
    *v22 = *v21;
    if (v25)
    {
      break;
    }

LABEL_49:
    if (!--v6)
    {
      return 0;
    }
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v7 = _asn1_copy(*(v9 + 3), *(v21 + 1) + v26, *(v22 + 1) + v26);
    if (v7)
    {
      return v7;
    }

    ++v27;
    v26 += v23;
    if (v27 >= *v21)
    {
      goto LABEL_49;
    }
  }
}

uint64_t _asn1_decode_top(uint64_t a1, unsigned int a2, unsigned __int8 *a3, size_t a4, void *a5, size_t *a6)
{
  bzero(a5, *(a1 + 4));
  v12 = _asn1_decode(a1, a2, a3, a4, a5, a6);
  if (v12)
  {
    _asn1_free(a1, a5);
    bzero(a5, *(a1 + 4));
  }

  return v12;
}

uint64_t _asn1_copy_top(unsigned int *a1, char *a2, void *a3)
{
  bzero(a3, a1[1]);
  v6 = _asn1_copy(a1, a2, a3);
  if (v6)
  {
    _asn1_free(a1, a3);
    bzero(a3, a1[1]);
  }

  return v6;
}