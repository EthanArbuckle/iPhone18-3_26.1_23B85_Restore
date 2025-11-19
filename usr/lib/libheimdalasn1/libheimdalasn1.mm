uint64_t __gen2_der_heim_oid_cmp(uint64_t *a1, uint64_t a2)
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

uint64_t __gen2_der_heim_octet_string_cmp(uint64_t a1, uint64_t a2)
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

uint64_t __gen2_der_printable_string_cmp(uint64_t a1, uint64_t a2)
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

uint64_t __gen2_der_ia5_string_cmp(uint64_t a1, uint64_t a2)
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

unint64_t __gen2_der_heim_bit_string_cmp(unint64_t result, void *a2)
{
  v2 = *result;
  if (*result != *a2)
  {
    return v2 - *a2;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v2 >> 3;
  if (v2 >> 3 > (v2 + 7) >> 3)
  {
LABEL_15:
    __break(0x5519u);
    return result;
  }

  v4 = a2[1];
  v5 = *(result + 8);
  result = memcmp(v5, v4, v2 >> 3);
  if (!result)
  {
    if ((v2 & 7) != 0)
    {
      v6 = &v5[v3];
      if (&v5[v3] < &v5[(v2 + 7) >> 3] && v6 >= v5)
      {
        return (*v6 >> (8 - (v2 & 7))) - (v4[v3] >> (8 - (v2 & 7)));
      }

      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

uint64_t __gen2_der_heim_integer_cmp(uint64_t a1, uint64_t a2)
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

uint64_t __gen2_der_heim_bmp_string_cmp(uint64_t *a1, uint64_t a2)
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

uint64_t __gen2_der_heim_universal_string_cmp(uint64_t *a1, uint64_t a2)
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

uint64_t __gen2_heim_len_unsigned(unsigned int a1)
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

uint64_t __gen2_heim_len_unsigned64(unint64_t a1)
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

uint64_t __gen2_heim_len_int(unsigned int a1)
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

uint64_t _heim_len_int64(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
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

uint64_t __gen2_der_length_len(unint64_t a1)
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

uint64_t __gen2_der_length_tag(unsigned int a1)
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

uint64_t __gen2_der_length_unsigned(unsigned int *a1)
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

uint64_t __gen2_der_length_unsigned64(unint64_t *a1)
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

uint64_t __gen2_der_length_heim_integer(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v2 = *(a1 + 4);
  if (v1 == 1 && v2 != 0)
  {
    v5 = *a1[1];
    if (v5 == 1)
    {
      return 1;
    }

    return v1 + (v5 >> 7);
  }

  v4 = a1[1];
  if (v2)
  {
    v5 = *v4;
    return v1 + (v5 >> 7);
  }

  return v1 + (*v4 >> 7);
}

uint64_t __gen2_der_length_oid(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 3)
  {
    return 1;
  }

  v2 = a1[1];
  v3 = 2;
  result = 1;
  do
  {
    v5 = *(v2 + 4 * v3);
    do
    {
      ++result;
      v6 = v5 > 0x7F;
      v5 >>= 7;
    }

    while (v6);
    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t __gen2_der_length_generalized_time(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  __gen2_heim_time2generalizedtime(*a1, &v3, 1);
  v1 = v3;
  free(v4);
  return v1;
}

uint64_t __gen2_der_length_utctime(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  __gen2_heim_time2generalizedtime(*a1, &v3, 0);
  v1 = v3;
  free(v4);
  return v1;
}

uint64_t __gen2_der_copy_general_string(const char **a1, char **a2)
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

uint64_t __gen2_der_copy_utf8string(const char **a1, char **a2)
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

uint64_t __gen2_der_copy_printable_string(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1 + 1;
  result = malloc_type_malloc(v4, 0xEB02FF90uLL);
  if (!result)
  {
    return 12;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v6 = *a1 + 1;
  if (v6 > v4)
  {
    goto LABEL_10;
  }

  v7 = result;
  *a2 = v6;
  a2[1] = result;
  v8 = *a1;
  if (*a1 > v6 || (result = memcpy(result, a1[1], *a1), v7 > v7 + v8) || (v9 = a2[1], v10 = (v9 + *a1), v10 >= v9 + *a2) || (v11 = (*a1 & 0x8000000000000000) != 0, v10 < v9))
  {
LABEL_10:
    __break(0x5519u);
  }

  else
  {
    result = 0;
    *v10 = 0;
  }

  return result;
}

unint64_t __gen2_der_copy_bmp_string(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  result = malloc_type_malloc(2 * *a1, 0x1000040BDFB0063uLL);
  v6 = result + 2 * v4;
  if (!result)
  {
    v6 = 0;
  }

  v7 = *a1;
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    return 12;
  }

  v9 = result;
  if (result <= v6 && v7 <= (v6 - result) >> 1)
  {
    *a2 = v7;
    a2[1] = result;
    if (v7 <= *a1)
    {
      result = memcpy(result, *(a1 + 8), 2 * v7);
      if (v9 <= v9 + 2 * v7)
      {
        return 0;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_copy_universal_string(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  result = malloc_type_malloc(4 * *a1, 0x100004052888210uLL);
  if (result)
  {
    v6 = result + 4 * v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a1;
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    return 12;
  }

  v9 = result;
  if (result <= v6 && v7 <= (v6 - result) >> 2)
  {
    *a2 = v7;
    a2[1] = result;
    v10 = 4 * v7;
    if (4 * v7 <= 4 * *a1)
    {
      result = memcpy(result, *(a1 + 8), 4 * v7);
      if (v9 <= v9 + v10)
      {
        return 0;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_copy_visible_string(const char **a1, char **a2)
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

unint64_t __gen2_der_copy_octet_string(uint64_t a1, size_t *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    result = malloc_type_malloc(*a1, 0x7066BD9DuLL);
    v6 = *a1;
    if (*a1)
    {
      v7 = result == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return 12;
    }

    else
    {
      v8 = result;
      v9 = result + v4;
      if (!result)
      {
        v9 = 0;
      }

      v10 = v9 >= result;
      v11 = v9 - result;
      v12 = !v10 || v6 > v11;
      if (v12 || (*a2 = v6, a2[1] = result, v6 > *a1) || (result = memcpy(result, *(a1 + 8), v6), v8 > v8 + v6))
      {
        __break(0x5519u);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t __gen2_der_copy_heim_integer(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  result = malloc_type_malloc(*a1, 0x7FD335ACuLL);
  v6 = *a1;
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    return 12;
  }

  v8 = result;
  v9 = result + v4;
  if (!result)
  {
    v9 = 0;
  }

  v10 = v9 >= result;
  v11 = v9 - result;
  v12 = !v10 || v6 > v11;
  if (v12 || (*a2 = v6, *(a2 + 8) = result, v6 > *a1) || (result = memcpy(result, *(a1 + 8), v6), v8 > v8 + v6))
  {
    __break(0x5519u);
  }

  else
  {
    result = 0;
    *(a2 + 16) = *(a1 + 16);
  }

  return result;
}

unint64_t __gen2_der_copy_oid(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  result = malloc_type_malloc(4 * *a1, 0x100004052888210uLL);
  if (result)
  {
    v6 = result + 4 * v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a1;
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    return 12;
  }

  v9 = result;
  if (result <= v6 && v7 <= (v6 - result) >> 2)
  {
    *a2 = v7;
    a2[1] = result;
    v10 = 4 * v7;
    if (4 * v7 <= 4 * *a1)
    {
      result = memcpy(result, *(a1 + 8), 4 * v7);
      if (v9 <= v9 + v10)
      {
        return 0;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_copy_bit_string(uint64_t a1, void *a2)
{
  v4 = *a1 + 7;
  v5 = v4 >> 3;
  result = malloc_type_malloc(v4 >> 3, 0x56AC025BuLL);
  v7 = result + (v4 >> 3);
  if (!result)
  {
    v7 = 0;
  }

  if (v4 >= 8 && result == 0)
  {
    return 12;
  }

  v9 = result;
  if (result <= v7)
  {
    v10 = (*a1 + 7) >> 3;
    if (v10 <= v7 - result)
    {
      *a2 = *a1;
      a2[1] = result;
      if (v5 <= v10 && v5 <= (*a1 + 7) >> 3)
      {
        result = memcpy(result, *(a1 + 8), v4 >> 3);
        if (v9 <= v9 + v5)
        {
          return 0;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t __gen2_decode_heim_any(uint64_t result, unint64_t a2, size_t *a3, void *a4)
{
  *a3 = 0;
  a3[1] = 0;
  if (a3 + 2 >= a3)
  {
    v7 = result;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    tag = __gen2_der_get_tag(result, a2, &v14 + 1, &v14, &v13, &v15);
    if (tag)
    {
      return tag;
    }

    v9 = 1859794436;
    if (a2 < v15)
    {
      return v9;
    }

    tag = __gen2_der_get_length(&v7[v15], a2 - v15, &v16, &v17);
    if (tag)
    {
      return tag;
    }

    if (v16 == 3705724653)
    {
      if (a2 < v15 + v17)
      {
        return v9;
      }

      v16 = a2 - (v15 + v17);
      v10 = a2;
    }

    else
    {
      v10 = v17 + v16 + v15;
      if (v10 > a2)
      {
        return v9;
      }
    }

    result = malloc_type_malloc(v10, 0x7D04A0B5uLL);
    if (!result)
    {
      return 12;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = v17 + v16 + v15;
      if (v11 <= v10)
      {
        v12 = result;
        *a3 = v11;
        a3[1] = result;
        if (v11 <= a2)
        {
          result = memcpy(result, v7, v11);
          if (v12 <= v12 + v11)
          {
            v9 = 0;
            if (a4)
            {
              *a4 = v17 + v16 + v15;
            }

            return v9;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_parse_hex_heim_integer(char *__s, uint64_t a2)
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
    goto LABEL_15;
  }

  v5 = (v4 >> 1) + 1;
  v6 = malloc_type_malloc(v5, 0x664CF504uLL);
  if (!v6)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return 12;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  result = rk_hex_decode(v3, v6, v5);
  v8 = *(a2 + 8);
  if (result < 0)
  {
    free(*(a2 + 8));
LABEL_15:
    *a2 = 0;
    *(a2 + 8) = 0;
    return 22;
  }

  v9 = result;
  v10 = v8 + *a2;
  if (result)
  {
    v11 = (v8 + result);
    v12 = *(a2 + 8);
    while (v12 < v10 && v12 >= v8)
    {
      if (*v12)
      {
        v11 = v12;
        goto LABEL_18;
      }

      ++v12;
      if (!--v9)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = *(a2 + 8);
LABEL_18:
    if (v9 <= *a2 && v11 <= v10 && v8 <= v11 && v9 <= v10 - v11)
    {
      result = memmove(*(a2 + 8), v11, v9);
      if (v8 <= v8 + v9 && v9 <= *a2)
      {
        result = 0;
        *a2 = v9;
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_print_hex_heim_integer(uint64_t a1, char **a2)
{
  v6 = 0;
  if ((rk_hex_encode(*(a1 + 8), *a1, a2) & 0x8000000000000000) != 0)
  {
    return 12;
  }

  if (*(a1 + 16))
  {
    v4 = asprintf(&v6, "-%s", *a2);
    free(*a2);
    if ((v4 & 0x80000000) == 0)
    {
      result = 0;
      *a2 = v6;
      return result;
    }

    return 12;
  }

  return 0;
}

uint64_t __gen2_der_print_heim_oid(unint64_t *a1, char a2, char **a3)
{
  v18 = *MEMORY[0x29EDCA608];
  __source[0] = a2;
  __source[1] = 0;
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1[1] + 4 * v6);
      v8 = v5 + 2;
      do
      {
        v9 = v7 + 9;
        v7 /= 10;
        ++v8;
      }

      while (v9 > 0x12);
      v5 = v8 - 1;
      ++v6;
    }

    while (v6 != *a1);
    v10 = malloc_type_malloc(v8, 0xF63579EAuLL);
    if (v10)
    {
      if (v5 > 0x7FFFFFFFFFFFFFFELL)
      {
LABEL_21:
        __break(0x5519u);
      }

      v11 = v10;
      *v10 = 0;
      if (*a1)
      {
        for (i = 0; i < v13; ++i)
        {
          snprintf(__str, 0x19uLL, "%d", *(a1[1] + 4 * i));
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (strlcat(v11, __str, v8) >= v8)
          {
            goto LABEL_18;
          }

          v13 = *a1;
          if (i < *a1 - 1)
          {
            if (strlcat(v11, __source, v8) >= v8)
            {
LABEL_18:
              free(v11);
              goto LABEL_19;
            }

            v13 = *a1;
          }
        }
      }

      result = 0;
      *a3 = v11;
    }

    else
    {
LABEL_19:
      result = 12;
    }
  }

  else
  {
    result = 22;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t __gen2_der_parse_heim_oid(const char *a1, const char *a2, uint64_t a3)
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
    v19 = 0;
    while (1)
    {
      v8 = *a3;
      v9 = *a3 + 1;
      v10 = malloc_type_realloc(*(a3 + 8), 4 * v9, 0xBD717034uLL);
      if (!v10)
      {
        v18 = 12;
        goto LABEL_24;
      }

      v11 = v10;
      result = strtol(v7, &v19, 10);
      if (*v19)
      {
        v13 = 0;
      }

      else
      {
        v13 = result >> 31 == 0;
      }

      if (!v13)
      {
        v18 = 22;
LABEL_24:
        __gen2_der_free_oid(a3);
        goto LABEL_25;
      }

      v14 = &v11[4 * *a3];
      v15 = (v14 + 4);
      v16 = v14 < v11 || v15 > &v11[4 * v9];
      if (v16 || v14 >= v15)
      {
        break;
      }

      *v14 = result;
      if (4 * v9 < 0 || v8 >= (v9 & 0x3FFFFFFFFFFFFFFFuLL))
      {
        break;
      }

      *a3 = v9;
      *(a3 + 8) = v11;
      v7 = strtok_r(0, v4, &__lasts);
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    __break(0x5519u);
  }

  else
  {
LABEL_22:
    v18 = 0;
LABEL_25:
    free(v5);
    return v18;
  }

  return result;
}

unint64_t __gen2_der_put_unsigned(unint64_t result, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = result - v4 + a2;
  if (result - v4 <= v6)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = 1859794436;
      if (a2)
      {
        v9 = result;
        do
        {
          if (v9 >= v6)
          {
            goto LABEL_26;
          }

          if (v9 < v5)
          {
            goto LABEL_26;
          }

          v10 = v7;
          *v9 = v7;
          if (a2 < 0)
          {
            goto LABEL_26;
          }

          --v9;
          if (!--a2)
          {
            break;
          }

          v7 >>= 8;
        }

        while (v10 > 0xFF);
        if (v10 > 0xFF)
        {
          return v8;
        }

        if ((v10 & 0x80) == 0)
        {
LABEL_18:
          v11 = result - v9;
          goto LABEL_23;
        }

        if (!a2)
        {
          return v8;
        }

        if (v9 < v6 && v9 >= v5)
        {
          *v9-- = 0;
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      return v8;
    }

    if (!a2)
    {
      return 1859794436;
    }

    if (v4 >= 0 && v6 > result)
    {
      *result = 0;
      v11 = 1;
LABEL_23:
      v8 = 0;
      *a4 = v11;
      return v8;
    }
  }

LABEL_26:
  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_put_unsigned64(unint64_t result, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = result - v4 + a2;
  if (result - v4 <= v6)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = 1859794436;
      if (a2)
      {
        v9 = result;
        do
        {
          if (v9 >= v6)
          {
            goto LABEL_26;
          }

          if (v9 < v5)
          {
            goto LABEL_26;
          }

          v10 = v7;
          *v9 = v7;
          if (a2 < 0)
          {
            goto LABEL_26;
          }

          --v9;
          if (!--a2)
          {
            break;
          }

          v7 >>= 8;
        }

        while (v10 > 0xFF);
        if (v10 > 0xFF)
        {
          return v8;
        }

        if ((v10 & 0x80000000) == 0)
        {
LABEL_18:
          v11 = result - v9;
          goto LABEL_23;
        }

        if (!a2)
        {
          return v8;
        }

        if (v9 < v6 && v9 >= v5)
        {
          *v9-- = 0;
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      return v8;
    }

    if (!a2)
    {
      return 1859794436;
    }

    if (v4 >= 0 && v6 > result)
    {
      *result = 0;
      v11 = 1;
LABEL_23:
      v8 = 0;
      *a4 = v11;
      return v8;
    }
  }

LABEL_26:
  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_put_integer(uint64_t result, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 > v5 + a2)
  {
    goto LABEL_28;
  }

  v7 = *a3;
  if ((*a3 & 0x80000000) != 0)
  {
    v10 = ~v7;
    v8 = result;
    do
    {
      if (!a2)
      {
        return 1859794436;
      }

      if (v8 >= v6 || v8 < v5)
      {
        goto LABEL_28;
      }

      v11 = v10;
      *v8-- = ~v10;
      --a2;
      v10 >>= 8;
    }

    while (v11 > 0xFF);
    if ((v11 & 0x80) == 0)
    {
LABEL_25:
      v12 = 0;
      *a4 = result - v8;
      return v12;
    }

    if (!a2)
    {
      return 1859794436;
    }

    if (v8 < v6 && v8 >= v5)
    {
      *v8-- = -1;
      goto LABEL_25;
    }

LABEL_28:
    __break(0x5519u);
    return result;
  }

  v8 = result;
  while (a2)
  {
    if (v8 >= v6 || v8 < v5)
    {
      goto LABEL_28;
    }

    v9 = v7;
    *v8-- = v7;
    --a2;
    v7 >>= 8;
    if (v9 <= 0xFF)
    {
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      if (!a2)
      {
        return 1859794436;
      }

      if (v8 < v6 && v8 >= v5)
      {
        *v8-- = 0;
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  return 1859794436;
}

uint64_t __gen2_der_put_integer64(uint64_t result, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 > v5 + a2)
  {
    goto LABEL_28;
  }

  v7 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    v11 = ~v7;
    v8 = result;
    do
    {
      if (!a2)
      {
        return 1859794436;
      }

      if (v8 >= v6 || v8 < v5)
      {
        goto LABEL_28;
      }

      v12 = v11;
      *v8-- = ~v11;
      --a2;
      v10 = v11 > 0xFF;
      v11 >>= 8;
    }

    while (v10);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_25:
      v13 = 0;
      *a4 = result - v8;
      return v13;
    }

    if (!a2)
    {
      return 1859794436;
    }

    if (v8 < v6 && v8 >= v5)
    {
      *v8-- = -1;
      goto LABEL_25;
    }

LABEL_28:
    __break(0x5519u);
    return result;
  }

  v8 = result;
  while (a2)
  {
    if (v8 >= v6 || v8 < v5)
    {
      goto LABEL_28;
    }

    v9 = v7;
    *v8-- = v7;
    --a2;
    v10 = v7 > 0xFF;
    v7 >>= 8;
    if (!v10)
    {
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      if (!a2)
      {
        return 1859794436;
      }

      if (v8 < v6 && v8 >= v5)
      {
        *v8-- = 0;
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  return 1859794436;
}

_BYTE *__gen2_der_put_length(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = &result[-v4];
  v6 = &result[a2 - v4];
  if (&result[-v4] <= v6)
  {
    v7 = 1859794436;
    if (!a2)
    {
      return v7;
    }

    if (a3 >= 0x80)
    {
      v9 = 0;
      while (a2 - 1 != v9)
      {
        if (result >= v6)
        {
          goto LABEL_24;
        }

        if (result < v5)
        {
          goto LABEL_24;
        }

        *result = a3;
        if (a2 + 1 == v9)
        {
          goto LABEL_24;
        }

        --result;
        ++v9;
        v10 = a3 > 0xFF;
        a3 >>= 8;
        if (!v10)
        {
          if (result >= v6 || result < v5)
          {
            goto LABEL_24;
          }

          *result = v9 | 0x80;
          if (a4)
          {
            v8 = v9 + 1;
            goto LABEL_21;
          }

          return 0;
        }
      }

      return v7;
    }

    if ((-v4 < 0 || v4 == 0) && v6 > result)
    {
      *result = a3;
      v8 = 1;
LABEL_21:
      v7 = 0;
      *a4 = v8;
      return v7;
    }
  }

LABEL_24:
  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_put_BOOLean(char *a1, uint64_t a2, _DWORD *a3, void *a4)
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

size_t __gen2_der_put_general_string(size_t result, size_t a2, const char **a3, size_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = result - v4 + a2;
  if (result - v4 > v6)
  {
    goto LABEL_18;
  }

  v9 = result;
  v10 = *a3;
  result = strlen(*a3);
  if (result > a2)
  {
    return 1859794436;
  }

  v11 = result;
  v12 = (v9 - result + 1);
  v13 = v10 > &v10[result] || v12 > v6;
  v14 = !v13 && v12 >= v5;
  v15 = !v14 || result > v6 - v12;
  if (v15 || (result = memcpy(v12, v10, result), v12 > &v12[v11]))
  {
LABEL_18:
    __break(0x5519u);
  }

  else
  {
    result = 0;
    *a4 = v11;
  }

  return result;
}

uint64_t __gen2_der_put_octet_string(uint64_t result, unint64_t a2, uint64_t a3, size_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 <= v5 + a2)
  {
    v8 = *a3;
    if (*a3 > a2)
    {
      return 1859794436;
    }

    if (!v8)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v10 = result - v8 + 1;
    v12 = v6 >= v10;
    v11 = v6 - v10;
    v12 = v12 && v10 >= v5;
    if (v12 && v8 <= v11)
    {
      result = memcpy((result - v8 + 1), *(a3 + 8), *a3);
      if (v10 <= v10 + v8)
      {
        v14 = *a3;
LABEL_17:
        result = 0;
        *a4 = v14;
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_put_bmp_string(uint64_t result, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 > v5 + a2)
  {
LABEL_33:
    __break(0x5519u);
    return result;
  }

  v7 = *a3;
  if (*a3 > a2 >> 1)
  {
    return 1859794436;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = result - 2 * v7;
    while (1)
    {
      v11 = (v10 + v8 + 1);
      if (v11 >= v6 || v11 < v5)
      {
        goto LABEL_33;
      }

      *v11 = *(a3[1] + v8 + 1);
      v13 = a3[1];
      v14 = (v13 + v8);
      v15 = v13 + v8 + 2;
      v16 = v13 + v8 < v13 || v15 > v13 + 2 * *a3;
      v17 = v16 || v14 > v15;
      v18 = (v10 + v8 + 2);
      v19 = v17 || v18 >= v6;
      if (v19 || v18 < v5)
      {
        goto LABEL_33;
      }

      *v18 = *v14;
      ++v9;
      v8 += 2;
      if (v9 >= *a3)
      {
        v21 = 2 * *a3;
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
LABEL_30:
  result = 0;
  if (a4)
  {
    *a4 = v21;
  }

  return result;
}

uint64_t __gen2_der_put_universal_string(uint64_t result, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 > v5 + a2)
  {
LABEL_43:
    __break(0x5519u);
    return result;
  }

  v7 = *a3;
  if (*a3 > a2 >> 2)
  {
    return 1859794436;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = result - 4 * v7;
    while (1)
    {
      v11 = (v10 + v8 + 1);
      if (v11 >= v6 || v11 < v5)
      {
        goto LABEL_43;
      }

      *v11 = *(a3[1] + v8 + 3);
      v13 = a3[1];
      v14 = v13 + v8;
      v15 = v13 + v8 + 4;
      v16 = v13 + v8 < v13 || v15 > v13 + 4 * *a3;
      v17 = v16 || v14 > v15;
      v18 = (v10 + v8 + 2);
      v19 = v17 || v18 >= v6;
      if (v19 || v18 < v5)
      {
        goto LABEL_43;
      }

      *v18 = *(v14 + 2);
      v21 = a3[1];
      v22 = (v21 + v8);
      if (v21 + v8 < v21)
      {
        goto LABEL_43;
      }

      if ((v22 + 1) > v21 + 4 * *a3)
      {
        goto LABEL_43;
      }

      if (v22 > v22 + 1)
      {
        goto LABEL_43;
      }

      v23 = (v10 + v8 + 3);
      if (v23 >= v6)
      {
        goto LABEL_43;
      }

      if (v23 < v5)
      {
        goto LABEL_43;
      }

      *v23 = BYTE1(*v22);
      v24 = a3[1];
      v25 = (v24 + v8);
      if (v24 + v8 < v24)
      {
        goto LABEL_43;
      }

      if ((v25 + 1) > v24 + 4 * *a3)
      {
        goto LABEL_43;
      }

      if (v25 > v25 + 1)
      {
        goto LABEL_43;
      }

      v26 = (v10 + v8 + 4);
      if (v26 >= v6 || v26 < v5)
      {
        goto LABEL_43;
      }

      *v26 = *v25;
      ++v9;
      v8 += 4;
      if (v9 >= *a3)
      {
        v27 = 4 * *a3;
        goto LABEL_40;
      }
    }
  }

  v27 = 0;
LABEL_40:
  result = 0;
  if (a4)
  {
    *a4 = v27;
  }

  return result;
}

char *__gen2_der_put_heim_integer(char *result, size_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = &result[-v4];
  v6 = &result[a2 - v4];
  if (&result[-v4] > v6)
  {
    goto LABEL_54;
  }

  v10 = -v4;
  v11 = 1859794436;
  v12 = *a3;
  if (!*a3)
  {
    if (a2)
    {
      if (v10 > 0 || v6 <= result)
      {
        goto LABEL_54;
      }

      *result = 0;
      if (a4)
      {
        v15 = 1;
LABEL_46:
        v11 = 0;
        *a4 = v15;
        return v11;
      }

      return 0;
    }

    return v11;
  }

  if (v12 > a2)
  {
    return v11;
  }

  v13 = *(a3 + 8);
  if (!*(a3 + 16))
  {
    v22 = &result[-v12];
    v23 = &result[-v12 + 1];
    if (v6 < v23 || v23 < v5 || v12 > v6 - v23)
    {
      goto LABEL_54;
    }

    result = memcpy(&result[-v12 + 1], v13, *a3);
    if (v23 > &v23[v12] || v23 >= v6)
    {
      goto LABEL_54;
    }

    if (*v23 < 0)
    {
      if (v12 == a2)
      {
        return v11;
      }

      if (v22 >= v6 || v22 < v5)
      {
        goto LABEL_54;
      }

      *v22 = 0;
LABEL_51:
      v14 = 1;
      if (!a4)
      {
        return 0;
      }

LABEL_45:
      v15 = *a3 + v14;
      goto LABEL_46;
    }

LABEL_44:
    v14 = 0;
    if (a4)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v12 == 1 && *v13 == 1)
  {
    if (v10 <= 0 && v6 > result)
    {
      v14 = 0;
      *result = -1;
      if (!a4)
      {
        return 0;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v16 = v13 - 1;
    v17 = 1;
    v18 = *a3;
    while (1)
    {
      v19 = &v16[v18];
      v20 = &v16[v18] < &v13[v12] && v19 >= v13;
      if (!v20 || result >= v6 || result < v5)
      {
        break;
      }

      v21 = *v19;
      LOBYTE(v19) = ~v21;
      *result = ~v21;
      if (v17)
      {
        LODWORD(v19) = -v21;
        *result = -v21;
        v17 = v21 == 0;
      }

      --v18;
      --result;
      if (v18 + 1 <= 1)
      {
        if ((v19 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        if (v12 == a2)
        {
          return v11;
        }

        if (result < v6 && result >= v5)
        {
          *result = -1;
          goto LABEL_51;
        }

        break;
      }
    }
  }

LABEL_54:
  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_put_generalized_time(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v7 = __gen2_heim_time2generalizedtime(*a3, &v11, 1);
  if (v7)
  {
    return v7;
  }

  v10 = 0;
  v8 = __gen2_der_put_octet_string(a1, a2, &v11, &v10);
  free(v12);
  if (!v8)
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  return v8;
}

uint64_t __gen2_heim_time2generalizedtime(uint64_t a1, uint64_t *a2, int a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (a3)
  {
    v4 = 15;
  }

  else
  {
    v4 = 13;
  }

  *a2 = 0;
  a2[1] = 0;
  if (!__gen2_der_gmtime(a1, v6))
  {
    return 1859794432;
  }

  result = malloc_type_malloc(v4 + 1, 0x5F93CEBAuLL);
  if (!result)
  {
    return 12;
  }

  *a2 = v4;
  a2[1] = result;
  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_put_utctime(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v7 = __gen2_heim_time2generalizedtime(*a3, &v11, 0);
  if (v7)
  {
    return v7;
  }

  v10 = 0;
  v8 = __gen2_der_put_octet_string(a1, a2, &v11, &v10);
  free(v12);
  if (!v8)
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v10;
    }
  }

  return v8;
}

uint64_t __gen2_der_put_oid(uint64_t result, unint64_t a2, void *a3, void *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = v5 + a2;
  if (v5 > v5 + a2)
  {
    goto LABEL_48;
  }

  v7 = *a3 - 1;
  v8 = result;
  while (v7 >= 2)
  {
    v9 = a3[1];
    v10 = (v9 + 4 * v7);
    v11 = (v10 + 1);
    v13 = v10 < v9 || v11 > v9 + 4 * *a3 || v10 >= v11;
    if (v13)
    {
      goto LABEL_48;
    }

    if (!a2)
    {
      return 1859794436;
    }

    if (v8 >= v6)
    {
      goto LABEL_48;
    }

    if (v8 < v5)
    {
      goto LABEL_48;
    }

    v14 = *v10;
    *v8 = v14 & 0x7F;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    --v8;
    --a2;
    while (v14 >= 0x80)
    {
      if (!a2)
      {
        return 1859794436;
      }

      if (v8 < v6 && v8 >= v5)
      {
        v14 >>= 7;
        *v8-- = v14 | 0x80;
        if ((a2 + 1) >= 1)
        {
          v13 = a2 - 1 >= a2;
          --a2;
          if (!v13)
          {
            continue;
          }
        }
      }

      goto LABEL_48;
    }

    --v7;
  }

  if (!a2)
  {
    return 1859794436;
  }

  v15 = a3[1];
  v16 = &v15[*a3];
  v17 = v15 + 1;
  v18 = (v15 + 1) > v16 || v15 >= v17;
  v19 = v15 + 2;
  if (!v18 && v19 <= v16 && v17 <= v19 && v8 < v6 && v8 >= v5)
  {
    v24 = 0;
    *v8 = v15[1] + 40 * *v15;
    *a4 = result - v8 + 1;
    return v24;
  }

LABEL_48:
  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_put_tag(unint64_t result, uint64_t a2, char a3, char a4, unsigned int a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = a2 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = result - v6;
  v8 = result - v6 + a2;
  if (result - v6 > v8)
  {
    goto LABEL_21;
  }

  if (a5 >= 0x1F)
  {
    v10 = 0;
    v9 = 1;
    while (v9 - a2 != 1)
    {
      if (result >= v8 || result < v7)
      {
        goto LABEL_21;
      }

      *result-- = a5 & 0x7F | v10;
      ++v9;
      v10 = 0x80;
      v11 = a5 > 0x7F;
      a5 >>= 7;
      if (!v11)
      {
        if (v9 - a2 == 1)
        {
          return 1859794436;
        }

        if (result < v8 && result >= v7)
        {
          *result = (32 * a4) | (a3 << 6) | 0x1F;
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    return 1859794436;
  }

  if (!a2)
  {
    return 1859794436;
  }

  if (v6 < 0 || v8 <= result)
  {
LABEL_21:
    __break(0x5519u);
    return result;
  }

  *result = (32 * a4) | (a3 << 6) | a5;
  v9 = 1;
LABEL_20:
  result = 0;
  *a6 = v9;
  return result;
}

_BYTE *__gen2_der_put_length_and_tag(_BYTE *result, unint64_t a2, unint64_t a3, char a4, char a5, unsigned int a6, void *a7)
{
  v7 = a2 - 1;
  if (!a2)
  {
    v7 = 0;
  }

  if (&result[-v7] > &result[a2 - v7])
  {
    goto LABEL_9;
  }

  v13 = result;
  v15 = 0;
  result = __gen2_der_put_length(result, a2, a3, &v15);
  if (result)
  {
    return result;
  }

  v14 = v15;
  if (a2 < v15)
  {
LABEL_9:
    __break(0x5519u);
    return result;
  }

  result = __gen2_der_put_tag(&v13[-v15], a2 - v15, a4, a5, a6, &v15);
  if (!result)
  {
    *a7 = v15 + v14;
  }

  return result;
}

uint64_t __gen2_der_put_bit_string(uint64_t result, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2 - 1;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = result - v4;
  v6 = result - v4 + a2;
  if (result - v4 > v6)
  {
    goto LABEL_29;
  }

  v8 = *a3 + 7;
  v9 = v8 >> 3;
  if (v8 >> 3 >= a2)
  {
    return 1859794436;
  }

  if (v6 < v6 - v9 || v6 - v9 < v5)
  {
    goto LABEL_29;
  }

  result = memcpy((v6 - v9), *(a3 + 8), v8 >> 3);
  if (v6 - v9 > v6)
  {
    goto LABEL_29;
  }

  if (!*a3 || (v13 = *a3 & 7) == 0)
  {
    v16 = (v6 + ~v9);
    if (v16 >= v6 || v16 < v5)
    {
      goto LABEL_29;
    }

    *v16 = 0;
LABEL_28:
    result = 0;
    *a4 = v9 + 1;
    return result;
  }

  v14 = (v6 + ~v9);
  if (v14 < v6 && v14 >= v5)
  {
    *v14 = 8 - v13;
    goto LABEL_28;
  }

LABEL_29:
  __break(0x5519u);
  return result;
}

uint64_t __gen2_heim_der_set_sort(size_t *a1, size_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  LODWORD(result) = memcmp(v2, v4, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return (v3 - v5);
  }
}

char *__gen2_der_get_class_name(unsigned int a1)
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

uint64_t __gen2_der_get_class_num(char *a1)
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

char *__gen2_der_get_type_name(unsigned int a1)
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

uint64_t __gen2_der_get_type_num(char *a1)
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

char *__gen2_der_get_tag_name(unsigned int a1)
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

uint64_t __gen2_der_get_tag_num(char *a1)
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

uint64_t __gen2_der_timegm(uint64_t result)
{
  v1 = *(result + 20);
  if (v1 > 2000)
  {
    return 0;
  }

  if (v1 < 0)
  {
    return -1;
  }

  v2 = *(result + 16);
  if (v2 > 0xB)
  {
    return -1;
  }

  v3 = *(result + 12);
  if (v3 < 1)
  {
    return -1;
  }

  v4 = v1 + 1900;
  v5 = *(result + 20) & 3;
  if ((v1 & 3) != 0)
  {
    v6 = 0;
  }

  else
  {
    HIDWORD(v7) = -1030792151 * (v1 + 1900);
    LODWORD(v7) = HIDWORD(v7);
    if ((v7 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v8) = -1030792151 * (v1 + 1900);
      LODWORD(v8) = HIDWORD(v8);
      v6 = (v8 >> 4) < 0xA3D70B;
    }

    else
    {
      v6 = 1;
    }
  }

  v9 = &ndays + 48 * v6;
  v10 = &v9[4 * v2];
  v11 = (v10 + 4);
  v12 = v10 < v9 || v11 > (v9 + 48);
  if (!v12 && v10 <= v11)
  {
    if (v3 > *v10)
    {
      return -1;
    }

    v14 = *(result + 8);
    if (v14 > 0x17)
    {
      return -1;
    }

    v15 = *(result + 4);
    if (v15 > 0x3B)
    {
      return -1;
    }

    v16 = *result;
    if (v16 > 0x3C)
    {
      return -1;
    }

    if (v1 < 0x47)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 70;
      v19 = -1970;
      v20 = 1970;
      do
      {
        if ((v18 & 3) == 0 && (!(v19 + 100 * (v20 / 0x64)) ? (v21 = v19 + 400 * (v20 / 0x190) == 0) : (v21 = 1), v21))
        {
          v22 = 366;
        }

        else
        {
          v22 = 365;
        }

        v17 += v22;
        ++v18;
        --v19;
        ++v20;
      }

      while (v1 != v18);
    }

    if (!v2)
    {
      return v16 + 60 * (v15 + 60 * (v14 + 24 * (v3 + v17)) - 1440);
    }

    HIDWORD(v23) = -1030792151 * v4;
    LODWORD(v23) = -1030792151 * v4;
    result = 42949672;
    v12 = (v23 >> 2) > 0x28F5C28;
    HIDWORD(v23) = -1030792151 * v4;
    LODWORD(v23) = -1030792151 * v4;
    v24 = v23 >> 4;
    v27 = (v12 || v24 < 0xA3D70B) && v5 == 0;
    v28 = &ndays + 48 * v27;
    for (i = v28; i >= v28 && i + 4 <= v28 + 48 && i <= i + 4; i += 4)
    {
      v30 = *i;
      v17 += v30;
      if (!--v2)
      {
        return v16 + 60 * (v15 + 60 * (v14 + 24 * (v3 + v17)) - 1440);
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_gmtime(uint64_t a1, unint64_t a2)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  LODWORD(v2) = a2 + 56;
  if (a2 + 56 < a2)
  {
    goto LABEL_34;
  }

  v2 = a1 / 86400;
  v3 = a1 % 86400;
  v4 = v3 % 60;
  v5 = v3 / 3600;
  v6 = v3 % 3600 + ((-30583 * (v3 % 3600)) >> 16);
  *a2 = v4;
  *(a2 + 4) = (v6 >> 5) + ((v6 & 0x8000) >> 15);
  *(a2 + 8) = v5;
  if (a1 <= 0xEAF63A97FLL)
  {
    v7 = 0;
    *(a2 + 20) = 70;
    v8 = -1970;
    for (i = 1970; ; ++i)
    {
      if (((v7 + 70) & 3) == 0 && (!(v8 + 100 * (i / 0x64)) ? (v10 = v8 + 400 * (i / 0x190) == 0) : (v10 = 1), v10))
      {
        v11 = 366;
      }

      else
      {
        v11 = 365;
      }

      v12 = __OFSUB__(v2, v11);
      v13 = v2 - v11;
      if (v13 < 0 != v12)
      {
        break;
      }

      *(a2 + 20) = v7 + 71;
      --v8;
      ++v7;
      v2 = v13;
    }

    v10 = v8 + 100 * (i / 0x64) == 0;
    v14 = v8 + 400 * (i / 0x190);
    v17 = (!v10 || v14 == 0) && ((v7 + 70) & 3) == 0;
    v18 = &ndays + 48 * v17;
    *(a2 + 16) = 0;
    v19 = v18 + 4 > v18 + 48 || v18 >= v18 + 4;
    if (!v19)
    {
      v20 = &ndays + 48 * v17 + 4;
      v21 = 1;
      while (1)
      {
        v22 = *(v20 - 1);
        v12 = __OFSUB__(v2, v22);
        v23 = v2 - v22;
        if (v23 < 0 != v12)
        {
          goto LABEL_35;
        }

        *(a2 + 16) = v21;
        if (v20 >= v18 && v20 + 4 <= v18 + 48)
        {
          ++v21;
          v2 = v23;
          v19 = v20 >= v20 + 4;
          v20 += 4;
          if (!v19)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_34:
    __break(0x5519u);
LABEL_35:
    *(a2 + 12) = v2 + 1;
    return a2;
  }

  return 0;
}

uint64_t __gen2_der_get_unsigned(_BYTE *a1, unint64_t a2, int *a3, unint64_t *a4)
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

uint64_t __gen2_der_get_unsigned64(_BYTE *a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (a2 == 9)
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

  if (a2 > 8)
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

uint64_t __gen2_der_get_integer(_BYTE *a1, unint64_t a2, int *a3, unint64_t *a4)
{
  v4 = 1859794437;
  if (a2 == 5)
  {
    v5 = *a1;
    if (*a1 && v5 != 255)
    {
      return v4;
    }
  }

  else
  {
    if (a2 > 4)
    {
      return v4;
    }

    if (!a2)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = *a1;
  }

  v6 = a1 + 1;
  if (a1 + 1 >= a1 && v6 <= &a1[a2])
  {
    v5 = v5;
    v7 = a2 - 1;
    while (v7)
    {
      if (v6 + 1 <= &a1[a2])
      {
        v5 = *v6 | (v5 << 8);
        --v7;
        v8 = v6 >= v6 + 1;
        ++v6;
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_17;
  }

LABEL_15:
  __break(0x5519u);
LABEL_16:
  v5 = 0;
LABEL_17:
  *a3 = v5;
  v4 = 0;
  if (a4)
  {
    *a4 = a2;
  }

  return v4;
}

uint64_t __gen2_der_get_integer64(char *a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (a2 > 8)
  {
    return 1859794437;
  }

  if (a2)
  {
    v5 = &a1[a2];
    v8 = *a1;
    v6 = (a1 + 1);
    v7 = v8;
    v9 = a2 - 1;
    while (v9)
    {
      if ((v6 + 1) <= v5)
      {
        v7 = *v6 | (v7 << 8);
        --v9;
        v10 = v6 >= v6 + 1;
        ++v6;
        if (!v10)
        {
          continue;
        }
      }

      __break(0x5519u);
      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  *a3 = v7;
  result = 0;
  if (a4)
  {
    *a4 = a2;
  }

  return result;
}

uint64_t __gen2_der_get_length(char *a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t __gen2_der_get_BOOLean(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, void *a4)
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

unint64_t __gen2_der_get_general_string(char *a1, size_t __n, unint64_t *a3, void *a4)
{
  result = memchr(a1, 0, __n);
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result - a1;
  if (result - a1 < __n)
  {
    while (1)
    {
      v10 = &a1[v9];
      if (&a1[v9] < a1 || &a1[__n] <= v10)
      {
        break;
      }

      if (*v10)
      {
        goto LABEL_11;
      }

      if (++v9 >= __n)
      {
        goto LABEL_12;
      }
    }

LABEL_20:
    __break(0x5519u);
    return result;
  }

LABEL_11:
  if (v9 != __n)
  {
    *a3 = 0;
    return 1859794443;
  }

  else
  {
LABEL_12:
    result = malloc_type_malloc(__n + 1, 0xE95EA30FuLL);
    if (!result)
    {
      *a3 = 0;
      return 12;
    }

    if (((__n + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v12 = result;
    result = memcpy(result, a1, __n);
    if (v12 > v12 + __n)
    {
      goto LABEL_20;
    }

    *(v12 + __n) = 0;
    *a3 = v12;
    result = 0;
    if (a4)
    {
      *a4 = __n;
    }
  }

  return result;
}

uint64_t __gen2_der_get_printable_string(const void *a1, size_t a2, size_t *a3, size_t *a4)
{
  if (a2 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    return 1859794439;
  }

  else
  {
    v8 = a2 + 1;
    result = malloc_type_malloc(a2 + 1, 0xD7F23B5CuLL);
    if (result)
    {
      if ((v8 & 0x8000000000000000) != 0 || (v10 = result, *a3 = v8, a3[1] = result, result = memcpy(result, a1, a2), v10 > v10 + a2) || (v11 = a3[1], v12 = (v11 + a2), v11 + a2 >= v11 + *a3) || v12 < v11)
      {
        __break(0x5519u);
      }

      else
      {
        *v12 = 0;
        result = 0;
        if (a4)
        {
          *a4 = a2;
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

  return result;
}

unint64_t __gen2_der_get_bmp_string(unint64_t a1, size_t size, size_t *a3, void *a4)
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

  if (size < 0xFFFFFFFF)
  {
    result = malloc_type_malloc(size, 0x1000040BDFB0063uLL);
    if (result)
    {
      v9 = 0;
      v10 = size >> 1;
      *a3 = size >> 1;
      a3[1] = result;
      v11 = a1 + size;
      do
      {
        v12 = (a1 + v9);
        v13 = a1 + v9 < v11 && v12 >= a1;
        v14 = v12 + 1;
        v16 = v13 && v14 < v11 && v14 >= a1;
        v17 = (result + v9);
        v18 = result + v9 + 2;
        if (!v16 || v17 < result || v18 > result + size || v17 > v18)
        {
          __break(0x5519u);
          return result;
        }

        v22 = *v14 | (*v12 << 8);
        *v17 = v22;
        if (v22)
        {
          v23 = 1;
        }

        else
        {
          v23 = v10 == 1;
        }

        if (!v23)
        {
          free(result);
          *a3 = 0;
          a3[1] = 0;
          return 1859794443;
        }

        v9 += 2;
        --v10;
      }

      while (v10);
      result = 0;
      if (a4)
      {
        *a4 = size;
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

unint64_t __gen2_der_get_universal_string(unint64_t a1, size_t size, size_t *a3, void *a4)
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

  if (size < 0xFFFFFFFD)
  {
    result = malloc_type_malloc(size, 0x100004052888210uLL);
    if (result)
    {
      v9 = 0;
      v10 = size >> 2;
      *a3 = size >> 2;
      a3[1] = result;
      v11 = a1 + size;
      do
      {
        v12 = (a1 + v9);
        v13 = a1 + v9 < v11 && v12 >= a1;
        v14 = v12 + 1;
        v16 = v13 && v14 < v11 && v14 >= a1;
        v17 = v12 + 2;
        v19 = v16 && v17 < v11 && v17 >= a1;
        v20 = v12 + 3;
        v22 = v19 && v20 < v11 && v20 >= a1;
        v23 = (result + v9);
        v24 = result + v9 + 4;
        if (!v22 || v23 < result || v24 > result + size || v23 > v24)
        {
          __break(0x5519u);
          return result;
        }

        v28 = *v20 | (*v17 << 8) | (*v14 << 16) | (*v12 << 24);
        *v23 = v28;
        if (v28)
        {
          v29 = 1;
        }

        else
        {
          v29 = v10 == 1;
        }

        if (!v29)
        {
          free(result);
          *a3 = 0;
          a3[1] = 0;
          return 1859794443;
        }

        v9 += 4;
        --v10;
      }

      while (v10);
      result = 0;
      if (a4)
      {
        *a4 = size;
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

uint64_t __gen2_der_get_octet_string(const void *a1, size_t size, void *a3, void *a4)
{
  if (!size)
  {
    goto LABEL_6;
  }

  v8 = malloc_type_malloc(size, 0xDA1D5487uLL);
  if (!v8)
  {
    return 12;
  }

  if ((size & 0x8000000000000000) != 0 || (v9 = v8, *a3 = size, a3[1] = v8, memcpy(v8, a1, size), v9 > &v9[size]))
  {
    __break(0x5519u);
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
  }

  result = 0;
  if (a4)
  {
    *a4 = size;
  }

  return result;
}

uint64_t __gen2_der_get_octet_string_ber(_BYTE *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v7 = 1859794438;
  v25 = 0;
  v26 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  while (1)
  {
    if (!v5)
    {
      if (v24)
      {
        return 1859794447;
      }

      goto LABEL_38;
    }

    tag = __gen2_der_get_tag(a1, v5, &v28, &v28 + 1, &v27, &v26);
    if (tag)
    {
      goto LABEL_30;
    }

    if (v28)
    {
      goto LABEL_34;
    }

    v9 = HIDWORD(v28);
    if (!(HIDWORD(v28) | v27))
    {
      break;
    }

    if (v27 != 4)
    {
      goto LABEL_34;
    }

    v10 = &a1[v5];
    v11 = &a1[v26];
    if (&a1[v26] > &a1[v5] || a1 > v11)
    {
      goto LABEL_29;
    }

    v12 = v5 - v26;
    tag = __gen2_der_get_length(&a1[v26], v12, &v25, &v26);
    if (tag)
    {
      goto LABEL_30;
    }

    a1 = &v11[v26];
    if (v10 < &v11[v26] || v11 > a1 || (v5 = v12 - v26, v5 > v10 - &v11[v26]))
    {
LABEL_29:
      __break(0x5519u);
LABEL_30:
      v7 = tag;
LABEL_34:
      free(*(a3 + 8));
      *a3 = 0;
      *(a3 + 8) = 0;
      return v7;
    }

    v13 = v25;
    if (v25 == 3705724653)
    {
      return 1859794452;
    }

    v14 = v5 - v25;
    if (v5 < v25)
    {
      return 1859794437;
    }

    if (v9)
    {
      ++v24;
      goto LABEL_26;
    }

    v15 = *a3 + v25;
    if (v15)
    {
      tag = malloc_type_realloc(*(a3 + 8), *a3 + v25, 0x7112409uLL);
      if (!tag)
      {
        v7 = 12;
        goto LABEL_34;
      }

      v16 = tag;
      v17 = tag + *a3;
      if (v17 > tag + v15)
      {
        goto LABEL_29;
      }

      v18 = -*a3 < 0;
      if (tag > v17)
      {
        goto LABEL_29;
      }

      if (v13 > v15 - *a3)
      {
        goto LABEL_29;
      }

      tag = memcpy((tag + *a3), a1, v13);
      if (v17 > v17 + v13)
      {
        goto LABEL_29;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v19 = *a3 + v13;
      if (v19 > v15)
      {
        goto LABEL_29;
      }

      *a3 = v19;
      *(a3 + 8) = v16;
LABEL_26:
      v20 = v10 - &a1[v13];
      if (v10 < &a1[v13])
      {
        goto LABEL_29;
      }

      if (a1 > &a1[v13])
      {
        goto LABEL_29;
      }

      v5 = v14;
      a1 += v13;
      if (v14 > v20)
      {
        goto LABEL_29;
      }
    }
  }

  if (v24)
  {
    goto LABEL_34;
  }

LABEL_38:
  v7 = 0;
  if (a4)
  {
    *a4 = a2 - v5;
  }

  return v7;
}

uint64_t __gen2_der_get_tag(_BYTE *a1, uint64_t a2, int *a3, int *a4, _DWORD *a5, uint64_t *a6)
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
        v11 = &a1[v10];
        v12 = a1[v10];
        v13 = v12 & 0x7F | (v9 << 7);
        if (v13 < v9)
        {
          return 1859794436;
        }

        *a5 = v13;
        if (v11 + 1 > &a1[a2] || v11 > v11 + 1)
        {
          __break(0x5519u);
          return result;
        }

        ++v10;
        v9 = v12 & 0x7F | (v9 << 7);
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v10 = 1;
LABEL_11:
      result = 0;
      if (a6)
      {
        *a6 = v10;
      }
    }
  }

  return result;
}

unint64_t __gen2_der_get_heim_integer(unsigned __int8 *a1, size_t size, uint64_t a3, size_t *a4)
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

LABEL_35:
    v6 = 0;
LABEL_36:
    *a4 = v6;
    return result;
  }

  v6 = size;
  v8 = *a1;
  if ((v8 & 0x80000000) == 0)
  {
    v10 = size != 1 && v8 == 0;
    v11 = size - v10;
    v12 = malloc_type_malloc(size - v10, 0x6351FC73uLL);
    if (v12)
    {
      v13 = v12;
      *a3 = v11;
      *(a3 + 8) = v12;
      result = memcpy(v12, &a1[v10], v6 - v10);
      if (v13 <= &v13[v11])
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_34:
    *a3 = 0;
    *(a3 + 8) = 0;
    result = 12;
    if (!a4)
    {
      return result;
    }

    goto LABEL_35;
  }

  *(a3 + 16) = 1;
  v15 = size;
  v16 = a1;
  if (*a1 != 255)
  {
LABEL_21:
    result = malloc_type_malloc(v15, 0x4B3DBA89uLL);
    if (result)
    {
      *a3 = v15;
      *(a3 + 8) = result;
      v19 = &v16[v15 - 1];
      if (v19 <= &v16[v15] && v16 <= v19)
      {
        v20 = (result + v15 - 1);
        if (v20 < result)
        {
LABEL_11:
          result = 0;
          if (!a4)
          {
            return result;
          }

          goto LABEL_36;
        }

        v21 = 1;
        while (v19 < &a1[v6] && v19 >= a1 && v20 < result + v15 && v20 >= result)
        {
          v22 = *v19;
          *v20 = ~v22;
          if (v21)
          {
            *v20 = -v22;
            v21 = v22 == 0;
          }

          --v19;
          if (--v20 < *(a3 + 8))
          {
            goto LABEL_11;
          }
        }
      }

LABEL_39:
      __break(0x5519u);
      return result;
    }

    goto LABEL_34;
  }

  v15 = size - 1;
  if (size != 1)
  {
    v16 = (a1 + 1);
    goto LABEL_21;
  }

  v17 = malloc_type_malloc(1uLL, 0xE23FD6AFuLL);
  if (!v17)
  {
    return 12;
  }

  v18 = v17;
  result = 0;
  *v18 = 1;
  *a3 = 1;
  *(a3 + 8) = v18;
  if (a4)
  {
    goto LABEL_36;
  }

  return result;
}

uint64_t __gen2_der_get_time(const void *a1, size_t a2, uint64_t *a3, size_t *a4)
{
  v4 = 1859794432;
  if (!a2)
  {
    return 1859794439;
  }

  v9 = a2 + 1;
  result = malloc_type_malloc(a2 + 1, 0x55B59938uLL);
  if (!result)
  {
    return 12;
  }

  if (((v9 | a2) & 0x8000000000000000) == 0)
  {
    v11 = result;
    result = memcpy(result, a1, a2);
    v12 = &v11[a2];
    if (v11 <= &v11[a2] && v12 < &v11[v9] && v12 >= v11)
    {
      *v12 = 0;
      if (v12 + 1 >= v12 && v12 + 1 <= &v11[v9])
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        if (sscanf(v11, "%04d%02d%02d%02d%02d%02dZ", &v15 + 4, &v15, &v14 | 0xC, &v14 + 8, &v14 + 4, &v14) == 6)
        {
          v13 = DWORD1(v15);
        }

        else
        {
          if (sscanf(v11, "%02d%02d%02d%02d%02d%02dZ", &v15 + 4, &v15, &v14 | 0xC, &v14 + 8, &v14 + 4, &v14) != 6)
          {
LABEL_17:
            free(v11);
            if (a4)
            {
              *a4 = a2;
            }

            return v4;
          }

          if (SDWORD1(v15) > 49)
          {
            v13 = DWORD1(v15) + 1900;
          }

          else
          {
            v13 = DWORD1(v15) + 2000;
          }
        }

        LODWORD(v15) = v15 - 1;
        DWORD1(v15) = v13 - 1900;
        v4 = 0;
        *a3 = __gen2_der_timegm(&v14);
        goto LABEL_17;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t __gen2_der_get_oid(_BYTE *a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v4 = 1859794437;
  if (!a2)
  {
    return v4;
  }

  if (a2 == -1)
  {
    return 1859794439;
  }

  if (a2 > 0x3FFFFFFE)
  {
    return 34;
  }

  v9 = a2 + 1;
  result = malloc_type_malloc(4 * (a2 + 1), 0x100004052888210uLL);
  if (!result)
  {
    return 12;
  }

  *a3 = v9;
  a3[1] = result;
  v11 = result + 4 * v9;
  v12 = (result + 4);
  if (result + 4 <= v11 && result <= v12)
  {
    *result = *a1 / 0x28u;
    if (result + 8 <= v11 && v12 <= result + 8)
    {
      v14 = a1 + 1;
      *v12 = *a1 % 0x28u;
      if (a1 + 1 >= a1 && v14 <= &a1[a2])
      {
        v15 = 2;
        v16 = a2 - 1;
        if (a2 != 1)
        {
          while (2)
          {
            v17 = 0;
            v18 = &v14[v16];
            v19 = &v14[v16 - 1];
            v20 = v16 - 1;
            v21 = v14;
            while (1)
            {
              v14 = v21 + 1;
              if ((v21 + 1) > v18 || v21 > v14)
              {
                goto LABEL_39;
              }

              v16 = v20;
              v23 = *v21 & 0x7F | (v17 << 7);
              if (v23 < v17)
              {
                goto LABEL_37;
              }

              if (!v20)
              {
                break;
              }

              v24 = *v21;
              --v20;
              v17 = *v21++ & 0x7F | (v17 << 7);
              if ((v24 & 0x80000000) == 0)
              {
                v19 = v14 - 1;
                goto LABEL_26;
              }
            }

            v14 = v18;
LABEL_26:
            v25 = (result + 4 * v15);
            if (v25 < result || (v25 + 1) > v11 || v25 > v25 + 1)
            {
              goto LABEL_39;
            }

            *v25 = v23;
            ++v15;
            if (v16)
            {
              continue;
            }

            break;
          }

          if (v15 >= 3)
          {
            if (v19 >= v18)
            {
              goto LABEL_39;
            }

            if (*v19 < 0)
            {
LABEL_37:
              __gen2_der_free_oid(a3);
              return v4;
            }
          }
        }

        if (v15 <= v9)
        {
          *a3 = v15;
          v4 = 0;
          if (a4)
          {
            *a4 = a2;
          }

          return v4;
        }
      }
    }
  }

LABEL_39:
  __break(0x5519u);
  return result;
}

uint64_t __gen2_der_match_tag(_BYTE *a1, uint64_t a2, int a3, int a4, unsigned int a5, void *a6)
{
  v9 = 0;
  LODWORD(result) = __gen2_der_match_tag2(a1, a2, a3, &v9, a5, a6);
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

uint64_t __gen2_der_match_tag2(_BYTE *a1, uint64_t a2, int a3, int *a4, unsigned int a5, void *a6)
{
  v10 = 0;
  v11 = 0;
  result = __gen2_der_get_tag(a1, a2, &v10 + 1, a4, &v10, &v11);
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

char *__gen2_der_match_tag_and_length(char *a1, uint64_t a2, int a3, int *a4, unsigned int a5, void *a6, void *a7)
{
  v14 = 0;
  result = __gen2_der_match_tag2(a1, a2, a3, a4, a5, &v14);
  if (!result)
  {
    v12 = v14;
    result = &a1[v14];
    if (&a1[v14] <= &a1[a2] && result >= a1)
    {
      result = __gen2_der_get_length(result, a2 - v14, a6, &v14);
      if (!result)
      {
        result = 0;
        if (a7)
        {
          *a7 = v14 + v12;
        }
      }
    }

    else
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t __gen2_heim_fix_dce(unint64_t a1, unint64_t *a2)
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

uint64_t __gen2_der_get_bit_string(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  result = 1859794437;
  if (a2)
  {
    if (a2 <= 0x2000000000000000)
    {
      result = 1859794440;
      if (*a1 <= 7u)
      {
        v9 = a2 - 1;
        if (a2 != 1 || !*a1)
        {
          if (a2 != 1)
          {
            v10 = malloc_type_malloc(a2 - 1, 0x7FF2D3E8uLL);
            if (!v10)
            {
              return 12;
            }

            v11 = v10;
            *a3 = 8 * v9;
            a3[1] = v10;
            memcpy(v10, a1 + 1, a2 - 1);
            if (v11 <= &v11[v9])
            {
              v12 = *a3 - *a1;
              if ((v12 + 7) >> 3 <= (*a3 + 7) >> 3)
              {
                goto LABEL_12;
              }
            }

            __break(0x5519u);
          }

          v12 = 0;
          a3[1] = 0;
LABEL_12:
          *a3 = v12;
          result = 0;
          if (a4)
          {
            *a4 = a2;
          }
        }
      }
    }
  }

  return result;
}

void __gen2_der_free_printable_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_octet_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_ia5_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_bmp_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_universal_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_heim_integer(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_oid(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void __gen2_der_free_bit_string(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

void asn1_abort(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(crashreporter_info, 0x64uLL, __format, va);
  for (i = 0; i != 100; ++i)
  {
    if (!crashreporter_info[i])
    {
      __crashreporter_info__ = crashreporter_info;
      abort();
    }
  }

  __break(0x5519u);
}

_BYTE *__gen2_asn1_bmember_put_bit(_BYTE *result, _DWORD *a2, char a3, uint64_t a4, _DWORD *a5)
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

uint64_t __gen2_asn1_decode(unint64_t a1, unsigned int a2, char *a3, size_t a4, size_t *a5, size_t *a6)
{
  v6 = *(a1 + 8);
  v7 = a1 + 16 * (v6 + 1);
  v109 = *(a1 + 4);
  v8 = (a5 + v109) >= a5 && v7 >= a1;
  v111 = v6 + 1;
  if (!v8 || v6 + 1 > (16 * (v6 + 1)) >> 4)
  {
    goto LABEL_251;
  }

  v10 = a1 + 16;
  v110 = a1 + 16 * (v6 + 1);
  if (a1 + 16 > v7 || v10 < a1 || v6 > (16 * v111 - 16) >> 4)
  {
    goto LABEL_251;
  }

  v11 = a3;
  v12 = a4;
  v13 = &a3[a4];
  v104 = *a1;
  if ((*a1 & 1) == 0)
  {
    v13 = 0;
  }

  v103 = v13;
  if (*a1)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  __src = v14;
  if (v6)
  {
    v106 = a5 + 2;
    v102 = a2 & 1;
    do
    {
      v112 = v6;
      LODWORD(v6) = v110;
      if (v10 + 16 > v110)
      {
        goto LABEL_251;
      }

      LODWORD(v6) = *v10;
      v15 = *v10 >> 28;
      v16 = v15 ^ 8;
      if ((v15 ^ 8) > 11)
      {
        if ((v16 - 13) < 2)
        {
          LODWORD(v6) = a5;
          if (v106 < a5)
          {
            goto LABEL_251;
          }

          v39 = *(v10 + 4);
          v118[0] = 0;
          if (v12)
          {
            v40 = 0;
            v41 = (a5 + v39);
            v42 = *(*(v10 + 8) + 4);
            while (1)
            {
              LODWORD(v6) = a2;
              if ((a2 & 4) != 0)
              {
                v117 = 0;
                v116 = 0;
                v115 = 0;
                if (!__gen2_der_match_tag_and_length(v11, v12, 0, &v117, 0, &v116, &v115))
                {
                  break;
                }
              }

              if (__CFADD__(v42, v40))
              {
                return 1859794436;
              }

              if (v39)
              {
                goto LABEL_251;
              }

              v43 = malloc_type_realloc(v41[1], v42 + v40, 0x7D91239CuLL);
              if (!v43)
              {
                return 12;
              }

              v44 = v43;
              LODWORD(v6) = v42 + v40;
              v45 = &v43[v42 + v40];
              v46 = &v43[v40];
              if (&v43[v40] > v45 || v43 > v46)
              {
                goto LABEL_251;
              }

              bzero(&v43[v40], v42);
              v6 = &v44[v42 + v40];
              if (v46 > v6)
              {
                goto LABEL_251;
              }

              if (v44 >= v45)
              {
                goto LABEL_251;
              }

              v41[1] = v44;
              LODWORD(v6) = *v41 + 1;
              *v41 = v6;
              if (v46 >= v45)
              {
                goto LABEL_251;
              }

              result = __gen2_asn1_decode(*(v10 + 8), a2 & 0xFFFFFFFA, v11, v12, v46, v118);
              if (result)
              {
                return result;
              }

              v6 = &v11[v118[0]];
              if (&v11[v118[0]] > &v11[v12] || v11 > v6)
              {
                goto LABEL_251;
              }

              v40 += v42;
              v11 += v118[0];
              v12 -= v118[0];
              if (!v12)
              {
                v11 = v6;
                break;
              }
            }
          }

          v109 = 16;
        }

        else
        {
          if (v16 == 12)
          {
            v118[0] = 0;
            v76 = (v6 & 0xFFF) + v102;
            if (v76 >= 0x15)
            {
              asn1_abort("type larger then asn1_template_prim: %d", v76);
            }

            v6 = asn1_template_prim[6 * v76 + 1];
            v77 = a5 + *(v10 + 4);
            if (v77 && (v77 >= a5 + v109 || v77 < a5))
            {
              goto LABEL_251;
            }

            result = (v6)(v11, v12);
            if (result)
            {
              return result;
            }

            goto LABEL_184;
          }

          if (v16 != 15)
          {
            goto LABEL_252;
          }

          v18 = *(v10 + 8);
          v19 = *(v18 + 8);
          v20 = v18 + 16 * v19;
          if (v18 > v20)
          {
            goto LABEL_251;
          }

          v21 = *(v18 + 4);
          LODWORD(v6) = v109;
          if (v109 < v21)
          {
            goto LABEL_251;
          }

          bzero(a5, *(v18 + 4));
          LODWORD(v6) = a5 + v21;
          if ((a5 + v21) < a5)
          {
            goto LABEL_251;
          }

          if (!v12)
          {
            return 1859794437;
          }

          ++v11;
          if (v19)
          {
            v22 = v12 - 1;
            if (v12 != 1)
            {
              v6 = 0;
              if (a5)
              {
                v23 = v109 == 0;
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              v25 = v18;
              do
              {
                v26 = v25 + 16;
                if (v25 + 16 > v20 || v18 > v26)
                {
                  goto LABEL_251;
                }

                v28 = *(v25 + 20);
                v29 = v22 == 0;
                if (v28 >> 3 > v6 >> 3 && v22 != 0)
                {
                  v31 = &v11[v22];
                  v32 = v22;
                  while (1)
                  {
                    v33 = v11++;
                    if (v11 > v31 || v33 > v11)
                    {
                      goto LABEL_251;
                    }

                    v22 = v32 - 1;
                    v6 += 8;
                    v29 = v32 == 1;
                    if (v28 >> 3 > v6 >> 3)
                    {
                      if (--v32)
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }

                if (v29)
                {
                  goto LABEL_69;
                }

                if (v11)
                {
                  v35 = v22 < 1;
                }

                else
                {
                  v35 = 0;
                }

                v36 = v35;
                if ((v36 | v24))
                {
                  goto LABEL_251;
                }

                if ((*v11 >> (~v28 & 7)))
                {
                  *a5 |= 1 << v28;
                }

                v25 = v26;
                --v19;
              }

              while (v19);
              if ((v22 & 0x8000000000000000) == 0)
              {
                goto LABEL_69;
              }

LABEL_251:
              __break(0x5519u);
LABEL_252:
              asn1_abort("unknown opcode: %d", v6 & 0xF0000000);
            }
          }

LABEL_69:
          v12 = 0;
        }
      }

      else
      {
        if ((v16 - 9) < 2)
        {
          v118[0] = 0;
          v37 = *(v10 + 8);
          if (v15 == 1)
          {
            v38 = *(v37 + 4);
          }

          else
          {
            v38 = *(v37 + 40);
          }

          v48 = a5;
          v49 = a5 + v109;
          v50 = (a5 + *(v10 + 4));
          v51 = v50;
          v52 = (a5 + v109);
          if ((v6 & 0x1000000) != 0)
          {
            v53 = malloc_type_calloc(1uLL, v38, 0x19FAF5BCuLL);
            if (!v53)
            {
              return 12;
            }

            v6 = (v50 + 1);
            if (v38 < 1 || v50 < a5 || v6 > v49 || v50 > v6)
            {
              goto LABEL_251;
            }

            v51 = v53;
            v52 = (v53 + v38);
            *v50 = v53;
            LODWORD(v6) = *v10;
            v48 = v53;
          }

          v57 = *(v10 + 8);
          LODWORD(v6) = v6 >> 28;
          if (v6 == 1)
          {
            if (v51 && (v51 >= v52 || v51 < v48))
            {
              goto LABEL_251;
            }

            result = __gen2_asn1_decode(v57, a2, v11, v12, v51, v118);
            if (result)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v6 = *(v57 + 8);
            if (v51 && (v51 >= v52 || v51 < v48))
            {
              goto LABEL_251;
            }

            result = (v6)(v11, v12, v51, v118);
            if (result)
            {
LABEL_112:
              if ((*(v10 + 3) & 1) == 0)
              {
                return result;
              }

              LODWORD(v6) = a5;
              if (v50 < a5)
              {
                goto LABEL_251;
              }

              v6 = (v50 + 1);
              if ((v50 + 1) > v49 || v50 > v6)
              {
                goto LABEL_251;
              }

              free(*v50);
              *v50 = 0;
              goto LABEL_189;
            }
          }

          v78 = v118[0];
          v79 = &v11[v12];
          goto LABEL_185;
        }

        if (v16)
        {
          if (v16 != 11)
          {
            goto LABEL_252;
          }

          v117 = 0;
          v118[0] = 0;
          v116 = 0;
          v115 = 0;
          result = __gen2_der_match_tag_and_length(v11, v12, (v6 >> 22) & 3, &v117, v6 & 0x1FFFFF, &v116, &v115);
          if (result)
          {
            if ((*v10 & 0x1000000) == 0)
            {
              return result;
            }

            goto LABEL_189;
          }

          v80 = &v11[v12];
          v81 = &v11[v115];
          if (&v11[v115] > &v11[v12] || v11 > v81)
          {
            goto LABEL_251;
          }

          LODWORD(v6) = *v10;
          v82 = a2;
          if ((a2 & 2) != 0)
          {
            v82 = a2;
            if (v117 != ((v6 >> 21) & 1))
            {
              v83 = *(v10 + 8);
              v84 = (v83 + 16);
              if (v83 >= v83 + 16 || v83 + 32 > &v84[4 * *(v83 + 8)])
              {
                goto LABEL_251;
              }

              v82 = ((*v84 & 0xF0000FFF) == 1073741831) | a2;
            }
          }

          v85 = v12 - v115;
          v86 = v116;
          if (v116 == 3705724653)
          {
            v87 = v109;
            if ((a2 & 2) == 0)
            {
              return 1859794449;
            }

            v88 = v85 - 2;
            if (v85 < 2)
            {
              return 1859794437;
            }

            v82 = v82 | 4;
            v116 = v85 - 2;
          }

          else
          {
            v88 = v116;
            v87 = v109;
            if (v116 > v85)
            {
              return 1859794437;
            }
          }

          v92 = a5 + v87;
          v93 = *(v10 + 4);
          v94 = (a5 + v93);
          if (a5 + v93 > a5 + v87 || v94 < a5)
          {
            goto LABEL_251;
          }

          if ((v6 & 0x1000000) != 0)
          {
            v95 = *(*(v10 + 8) + 4);
            v96 = malloc_type_calloc(1uLL, v95, 0x4F1C719uLL);
            if (!v96)
            {
              return 12;
            }

            if (!v95)
            {
              goto LABEL_251;
            }

            v6 = (v94 + 1);
            if ((v94 + 1) > v92 || v94 > v6)
            {
              goto LABEL_251;
            }

            *v94 = v96;
            v88 = v116;
            v94 = v96;
          }

          else
          {
            LODWORD(v6) = v109;
            v95 = v109 - v93;
          }

          if (v88 > v85 || !v95 && v94)
          {
            goto LABEL_251;
          }

          result = __gen2_asn1_decode(*(v10 + 8), v82, v81, v88, v94, v118);
          if (result)
          {
            return result;
          }

          LODWORD(v6) = v118[0];
          if (v86 == 3705724653)
          {
            v116 = v118[0];
          }

          else if (v118[0] != v116)
          {
            return 1859794442;
          }

          v11 = &v81[v118[0]];
          if (v80 < &v81[v118[0]])
          {
            goto LABEL_251;
          }

          if (v81 > v11)
          {
            goto LABEL_251;
          }

          v12 = v85 - v118[0];
          if (v85 - v118[0] > v80 - &v81[v118[0]])
          {
            goto LABEL_251;
          }

          if (v86 == 3705724653)
          {
            result = __gen2_der_match_tag_and_length(v11, v12, 0, &v117, 0, &v116, &v115);
            if (result)
            {
              return result;
            }

            if (v117)
            {
              return 1859794438;
            }

            if (v116)
            {
              return 1859794450;
            }

            v6 = &v11[v115];
            if (v80 < &v11[v115])
            {
              goto LABEL_251;
            }

            if (v11 > v6)
            {
              goto LABEL_251;
            }

            v12 -= v115;
            if (v12 > v80 - &v11[v115])
            {
              goto LABEL_251;
            }

            goto LABEL_188;
          }
        }

        else
        {
          v58 = *(v10 + 8);
          v6 = *(v58 + 1);
          v59 = &v58[4 * v6];
          if (v58 > v59)
          {
            goto LABEL_251;
          }

          v60 = a5 + v109;
          v61 = (a5 + v58[1]);
          v118[0] = 0;
          v62 = (v61 + 4);
          v63 = v61 < a5 || v62 > v60;
          if (v63 || v61 > v62)
          {
            goto LABEL_251;
          }

          v65 = v61;
          *v61 = 1;
          v66 = 1;
          if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            while (1)
            {
              v67 = &v58[4 * v66];
              v6 = (v67 + 4);
              if (v67 < v58 || v67 > v59 || v67 > v6)
              {
                goto LABEL_251;
              }

              v70 = a5 + v67[1];
              if (v70)
              {
                LODWORD(v6) = a5;
                if (v70 >= v60 || v70 < a5)
                {
                  goto LABEL_251;
                }
              }

              v72 = __gen2_asn1_decode(*(v67 + 1), 0, v11, v12, v70, v118);
              if ((v72 - 1859794433) > 5 || ((1 << (v72 - 1)) & 0x23) == 0)
              {
                break;
              }

              v74 = a5 + v67[1];
              if (v74)
              {
                LODWORD(v6) = a5;
                if (v74 >= v60 || v74 < a5)
                {
                  goto LABEL_251;
                }
              }

              __gen2_asn1_free_top(*(v67 + 1), v74);
              v66 = (v66 + 1);
              v6 = *(v58 + 1);
              if (v6 + 1 <= v66)
              {
                goto LABEL_177;
              }
            }

            v89 = v72;
            if (v72)
            {
              v6 = v67[1];
              v101 = a5 + v6;
              if ((a5 + v6))
              {
                if (v101 >= v60)
                {
                  goto LABEL_251;
                }

                LODWORD(v6) = a5;
                if (v101 < a5)
                {
                  goto LABEL_251;
                }
              }

              __gen2_asn1_free_top(*(v67 + 1), v101);
              return v89;
            }

            *v65 = v66;
            LODWORD(v6) = v118[0];
            if (&v11[v118[0]] > &v11[v12] || v11 > &v11[v118[0]])
            {
              goto LABEL_251;
            }

            v12 -= v118[0];
            v6 = *(v58 + 1);
            v11 += v118[0];
          }

LABEL_177:
          if (v6 + 1 <= v66)
          {
            if (!*v58)
            {
              return 1859794438;
            }

            *v65 = -1;
            v90 = (a5 + *v58);
            if (v90)
            {
              LODWORD(v6) = a5;
              if (v90 < a5)
              {
                goto LABEL_251;
              }

              v6 = (v90 + 2);
              if ((v90 + 2) > v60 || v90 > v6)
              {
                goto LABEL_251;
              }
            }

            octet_string = __gen2_der_get_octet_string(v11, v12, v90, v118);
            if (octet_string)
            {
              return octet_string;
            }

LABEL_184:
            v79 = &v11[v12];
            v78 = v118[0];
LABEL_185:
            v6 = &v11[v78];
            if (&v11[v78] > v79 || v11 > v6)
            {
              goto LABEL_251;
            }

            v12 -= v78;
LABEL_188:
            v11 = v6;
          }
        }
      }

LABEL_189:
      LODWORD(v6) = v10 + 16;
      if (v10 > v10 + 16)
      {
        goto LABEL_251;
      }

      v6 = 16 * v112 - 16;
      if (v111 - 2 > v6 >> 4)
      {
        goto LABEL_251;
      }

      v10 += 16;
      v111 = v112;
      v6 = v112 - 1;
    }

    while (v112 != 1);
  }

  if ((v104 & 2) != 0)
  {
    v97 = 0;
  }

  else
  {
    v97 = v12;
  }

  v98 = a4 - v97;
  if (a6)
  {
    *a6 = v98;
  }

  if (!__src)
  {
    return 0;
  }

  v99 = malloc_type_malloc(v98, 0x630F4C8DuLL);
  if (!v99)
  {
    return 12;
  }

  if ((v98 & 0x8000000000000000) != 0)
  {
    goto LABEL_251;
  }

  LODWORD(v6) = a5 + v109;
  if (a5 + 2 > (a5 + v109))
  {
    goto LABEL_251;
  }

  v100 = v99;
  *a5 = v98;
  a5[1] = v99;
  v6 = v103 - __src;
  if (v103 < __src)
  {
    goto LABEL_251;
  }

  if (v98 > v6)
  {
    goto LABEL_251;
  }

  memcpy(v99, __src, v98);
  LODWORD(v6) = v100 + v98;
  if (v100 > &v100[v98])
  {
    goto LABEL_251;
  }

  v6 = *a5;
  if (v98 > *a5)
  {
    goto LABEL_251;
  }

  result = 0;
  *a5 = v98;
  return result;
}

uint64_t __gen2_asn1_encode(unint64_t a1, _BYTE *a2, unint64_t a3, int *a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = v5 + 1;
  v7 = a1 + 16 * (v5 + 1);
  v8 = a3 - 1;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = *(a1 + 4);
  v110 = &a2[-v8];
  v111 = &a2[a3 - v8];
  v11 = (a4 + v9) >= a4 && &a2[-v8] <= &a2[a3 - v8] && v7 >= a1;
  if (!v11 || v6 > (16 * v6) >> 4)
  {
    goto LABEL_246;
  }

  v105 = a1 + 16 * (v5 + 1);
  LODWORD(v6) = a1 + 16;
  if (a1 + 16 > v7)
  {
    goto LABEL_246;
  }

  v13 = a3;
  v14 = a1;
  if (!v5)
  {
    goto LABEL_229;
  }

  v15 = a2;
  v16 = *(a1 + 8);
  v17 = 0;
  v18 = a1 + 16 * v5;
  LODWORD(v6) = a4 + 16;
  v100 = a4 + 4;
  v13 = a3;
LABEL_16:
  v107 = v16;
  if (v18 < v14)
  {
    goto LABEL_246;
  }

  LODWORD(v6) = v18 + 16;
  if (v18 + 16 > v105)
  {
    goto LABEL_246;
  }

  v19 = *v18;
  v20 = *v18 >> 28;
  LODWORD(v6) = v20 ^ 8;
  if ((v20 ^ 8) > 11)
  {
    if (v6 > 13)
    {
      if (v6 == 14)
      {
        LODWORD(v6) = v100;
        if (v100 < a4)
        {
          goto LABEL_246;
        }

        v6 = *(v18 + 4);
        if (v6)
        {
          goto LABEL_246;
        }

        v41 = (a4 + v6);
        v42 = *(a4 + v6);
        if (!v42)
        {
          goto LABEL_227;
        }

        if (v42 >> 28)
        {
          return 34;
        }

        v101 = *(*(v18 + 8) + 4);
        v103 = *(v41 + 1);
        v43 = malloc_type_calloc(v42, 0x10uLL, 0x108004057E67DB5uLL);
        if (!v43)
        {
          return 12;
        }

        v44 = v43;
        v109 = &v43[16 * v42];
        v98 = v42;
        if (!*v41)
        {
          v46 = 0;
          LODWORD(v6) = 0;
          goto LABEL_205;
        }

        v45 = 0;
        v46 = 0;
        v47 = v103;
        v102 = v103 + v42 * v101;
        v48 = v43;
        while (1)
        {
          v112 = 0;
          if (v47)
          {
            LODWORD(v6) = v102;
            if (v47 >= v102)
            {
              goto LABEL_246;
            }

            LODWORD(v6) = v103;
            if (v47 < v103)
            {
              goto LABEL_246;
            }
          }

          v49 = __gen2_asn1_length(*(v18 + 8), v47);
          if (v49)
          {
            v50 = v49;
            v51 = malloc_type_malloc(v49, 0x339B4E0AuLL);
            v52 = &v51[v50];
            if (!v51)
            {
              v52 = 0;
            }

            v11 = v52 >= v51;
            v53 = v52 - v51;
            v54 = !v11 || v50 > v53;
            v6 = (v48 + 2);
            if (v54 || v48 < v44 || v6 > v109 || v48 > v6)
            {
              goto LABEL_246;
            }

            *v48 = v50;
            v48[1] = v51;
            if (!v51)
            {
              break;
            }
          }

          if (v48 < v44)
          {
            goto LABEL_246;
          }

          v6 = (v48 + 2);
          if ((v48 + 2) > v109)
          {
            goto LABEL_246;
          }

          if (v48 > v6)
          {
            goto LABEL_246;
          }

          v6 = v48[1];
          if (v47)
          {
            if (v47 >= v102 || v47 < v103)
            {
              goto LABEL_246;
            }
          }

          v58 = __gen2_asn1_encode(*(v18 + 8), v6 + *v48 - 1);
          if (v58)
          {
            v17 = v58;
            goto LABEL_236;
          }

          if ((v47 + v101) < v47)
          {
            v17 = 1859794436;
            goto LABEL_236;
          }

          v59 = *v48;
          v48 += 2;
          v46 += v59;
          ++v45;
          v47 = (v47 + v101);
          if (v45 >= *v41)
          {
            LODWORD(v6) = v46 > v13;
            if (v46 <= v13)
            {
              v17 = 0;
            }

            else
            {
              v17 = 1859794436;
            }

LABEL_205:
            if (v17)
            {
              goto LABEL_236;
            }

            if (v6)
            {
              goto LABEL_246;
            }

            v87 = *v41;
            LODWORD(v6) = v98;
            if (v87 > v98)
            {
              goto LABEL_246;
            }

            v13 -= v46;
            qsort(v44, v87, 0x10uLL, __gen2_heim_der_set_sort);
            v88 = 16 * (*v41 - 1);
            do
            {
              v89 = &v44[v88];
              v6 = &v44[v88 + 16];
              if (&v44[v88] < v44 || v6 > v109 || v89 > v6)
              {
                goto LABEL_246;
              }

              v92 = *v89;
              v15 -= *v89;
              v93 = v15 + 1;
              v6 = v111 - (v15 + 1);
              v94 = v111 >= (v15 + 1) && v93 >= v110;
              if (!v94 || v92 > v6)
              {
                goto LABEL_246;
              }

              memcpy(v15 + 1, v89[1], *v89);
              LODWORD(v6) = v93 + v92;
              if (v93 > &v93[v92])
              {
                goto LABEL_246;
              }

              free(v89[1]);
              v88 -= 16;
            }

            while (v88 != -16);
            free(v44);
LABEL_226:
            v17 = 0;
LABEL_227:
            v9 = 16;
LABEL_228:
            v14 = a1;
            v18 -= 16;
            v16 = v107 - 1;
            if (v107 == 1)
            {
LABEL_229:
              result = 0;
              if (a5)
              {
                *a5 = a3 - v13;
              }

              return result;
            }

            goto LABEL_16;
          }
        }

        v17 = 12;
LABEL_236:
        LODWORD(v6) = *v41;
        if (!*v41)
        {
LABEL_242:
          free(v44);
          return v17;
        }

        v96 = 0;
        v97 = v44;
        while (v97 >= v44)
        {
          v6 = (v97 + 2);
          if ((v97 + 2) > v109 || v97 > v6)
          {
            break;
          }

          free(v97[1]);
          ++v96;
          v6 = *v41;
          v97 += 2;
          if (v96 >= v6)
          {
            goto LABEL_242;
          }
        }

        goto LABEL_246;
      }

      if (v6 != 15)
      {
        goto LABEL_248;
      }

      v33 = *(v18 + 8);
      v34 = *(v33 + 8);
      v35 = v33 + 16 * v34;
      if (v33 > v35)
      {
        goto LABEL_246;
      }

      LODWORD(v6) = *v33;
      if (*v33)
      {
        v36 = 31;
      }

      else
      {
        if (v33 > v35)
        {
          goto LABEL_246;
        }

        v36 = *(v35 + 4);
      }

      LOBYTE(v73) = 0;
      if (!v34 || !v13)
      {
        v74 = 0;
LABEL_177:
        result = 1859794436;
        if (v6 & 1 | v74)
        {
          if (!v13)
          {
            return result;
          }

          if (v15 >= v111 || v15 < v110)
          {
            goto LABEL_246;
          }

          *v15-- = v73;
          --v13;
        }

        if (!v13)
        {
          return result;
        }

        v85 = v15 < v111 && v15 >= v110;
        if ((v6 & 1) != 0 || !v74)
        {
          if (!v85)
          {
            goto LABEL_246;
          }

          LODWORD(v6) = 0;
        }

        else
        {
          if (!v85)
          {
            goto LABEL_246;
          }

          LODWORD(v6) = v74 - 1;
        }

        *v15-- = v6;
        --v13;
        goto LABEL_228;
      }

      v74 = 0;
      v73 = 0;
      if (a4)
      {
        v75 = v9 <= 0;
      }

      else
      {
        v75 = 0;
      }

      v76 = !v75;
      v77 = v33 + 16 * v34;
      while (v77 <= v35 && v33 <= v77)
      {
        for (i = *(v77 + 4); v36 >> 3 > i >> 3; i = *(v77 + 4))
        {
          if (v73)
          {
            v79 = 1;
          }

          else
          {
            v79 = (v6 & 1 | v74) != 0;
          }

          if (v79)
          {
            if (!v13)
            {
              return 1859794436;
            }

            if (v15 >= v111 || v15 < v110)
            {
              goto LABEL_246;
            }

            *v15-- = v73;
            --v13;
          }

          v73 = 0;
          v36 -= 8;
        }

        if (!v76)
        {
          break;
        }

        v80 = *a4 >> i;
        v81 = i & 7;
        v82 = v73 | (1 << (v81 ^ 7));
        v83 = 8 - v81;
        if (v74)
        {
          v83 = v74;
        }

        if (v80)
        {
          v73 = v82;
          v74 = v83;
        }

        if (--v34)
        {
          v77 -= 16;
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_177;
      }
    }

    else
    {
      if (v6 == 12)
      {
        LODWORD(v6) = *v18 & 0xFFF;
        v112 = 0;
        if (v6 < 0x15)
        {
          v6 = asn1_template_prim[6 * (v19 & 0xFFF)];
          v40 = a4 + *(v18 + 4);
          if (v40 && (v40 >= a4 + v9 || v40 < a4))
          {
            goto LABEL_246;
          }

          result = (v6)(v15, v13);
          if (result)
          {
            return result;
          }

          goto LABEL_142;
        }

LABEL_247:
        asn1_abort("type larger then asn1_template_prim: %d", v6);
      }

      LODWORD(v6) = v100;
      if (v100 >= a4)
      {
        v24 = *(v18 + 4);
        v6 = *(*(v18 + 8) + 4);
        v112 = 0;
        if (!v24)
        {
          v25 = a4 + v24;
          v26 = *(a4 + v24);
          if (!v26)
          {
            goto LABEL_227;
          }

          v27 = 0;
          v28 = *(v25 + 1);
          v29 = v28 + v26 * v6;
          v30 = v28 + v6 * (v26 - 1);
          v31 = -v6;
          while (!v30 || v30 < v29 && v30 >= v28)
          {
            result = __gen2_asn1_encode(*(v18 + 8), v15);
            if (result)
            {
              return result;
            }

            LODWORD(v6) = v112;
            v11 = v13 >= v112;
            v13 -= v112;
            if (!v11)
            {
              break;
            }

            v15 -= v112;
            v30 += v31;
            ++v27;
            LODWORD(v6) = *v25;
            if (v27 >= *v25)
            {
              goto LABEL_226;
            }
          }
        }
      }
    }

LABEL_246:
    __break(0x5519u);
    goto LABEL_247;
  }

  if ((v6 - 9) < 2)
  {
    v112 = 0;
    v37 = a4 + v9;
    v6 = a4 + *(v18 + 4);
    v38 = *(v18 + 8);
    if ((v19 & 0x1000000) != 0)
    {
      if (v6 < a4 || v6 + 8 > v37 || v6 > v6 + 8)
      {
        goto LABEL_246;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_228;
      }

      v37 = v6 + *(v38 + 4);
      v39 = v6;
    }

    else
    {
      v39 = a4;
    }

    if (v20 == 1)
    {
      if (v6 && (v6 >= v37 || v6 < v39))
      {
        goto LABEL_246;
      }

      result = __gen2_asn1_encode(v38, v15);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (v6 && (v6 >= v37 || v6 < v39))
      {
        goto LABEL_246;
      }

      result = (*v38)(v15, v13, v6, &v112);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_142;
  }

  if (!v6)
  {
    v60 = *(v18 + 8);
    v61 = *(v60 + 1);
    v62 = &v60[4 * v61];
    if (v60 > v62)
    {
      goto LABEL_246;
    }

    v6 = a4 + v9;
    v63 = (a4 + v60[1]);
    v112 = 0;
    v64 = v63 + 1;
    v65 = v63 < a4 || v64 > v6;
    if (v65 || v63 > v64)
    {
      goto LABEL_246;
    }

    v67 = *v63;
    if (v67)
    {
      v68 = v67 <= v61;
    }

    else
    {
      v68 = 0;
    }

    if (!v68)
    {
      asn1_abort("invalid choice: %d", v67);
    }

    if (v67 == -1)
    {
      v86 = a4 + *v60;
      if (v86 && (v86 < a4 || v86 + 16 > v6 || v86 > v86 + 16))
      {
        goto LABEL_246;
      }

      v17 = __gen2_der_put_octet_string(v15, v13, v86, &v112) + v17;
    }

    else
    {
      v69 = &v60[4 * v67];
      if (v69 > v62 || v60 > v69)
      {
        goto LABEL_246;
      }

      v71 = a4 + v69[1];
      if (v71)
      {
        v11 = v71 >= v6;
        LODWORD(v6) = a4;
        if (v11 || v71 < a4)
        {
          goto LABEL_246;
        }
      }

      result = __gen2_asn1_encode(*(v69 + 1), v15);
      if (result)
      {
        return result;
      }

      v17 = 0;
    }

    v6 = v112;
    v11 = v13 >= v112;
    v13 -= v112;
    if (!v11)
    {
      goto LABEL_246;
    }

LABEL_200:
    v15 -= v6;
    goto LABEL_228;
  }

  if (v6 != 11)
  {
LABEL_248:
    asn1_abort("unknown opcode: %d", v19 & 0xF0000000);
  }

  v6 = a4 + v9;
  v112 = 0;
  v21 = *(v18 + 4);
  v22 = (a4 + v21);
  if (a4 + v21 > a4 + v9 || v22 < a4)
  {
    goto LABEL_246;
  }

  if ((v19 & 0x1000000) == 0)
  {
    v6 = v9 - v21;
    v23 = *(v18 + 8);
    goto LABEL_138;
  }

  if ((v22 + 2) > v6 || v22 > v22 + 2)
  {
    goto LABEL_246;
  }

  v22 = *v22;
  if (!v22)
  {
    goto LABEL_228;
  }

  v23 = *(v18 + 8);
  v6 = *(v23 + 4);
  if (v22 > (v22 + v6))
  {
    goto LABEL_246;
  }

LABEL_138:
  if (!v6 && v22)
  {
    goto LABEL_246;
  }

  result = __gen2_asn1_encode(v23, v15);
  if (!result)
  {
    result = __gen2_der_put_length_and_tag(v15, v13, 0, (*v18 >> 22) & 3, (*v18 & 0x200000) != 0, *v18 & 0x1FFFFF, &v112);
    if (!result)
    {
LABEL_142:
      v6 = v112;
      v11 = v13 >= v112;
      v13 -= v112;
      if (!v11)
      {
        goto LABEL_246;
      }

      v17 = 0;
      goto LABEL_200;
    }
  }

  return result;
}

uint64_t __gen2_asn1_length(unint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = v2 + 1;
  v4 = a1 + 16 * (v2 + 1);
  v5 = *(a1 + 4);
  v7 = (a2 + v5) < a2 || v4 < a1 || v3 > (16 * (v2 + 1)) >> 4;
  if (v7 || (v47 = a1 + 16 * (v2 + 1), LODWORD(v3) = a1 + 16, a1 + 16 > v4))
  {
LABEL_109:
    __break(0x5519u);
LABEL_110:
    asn1_abort("type larger then asn1_template_prim: %d", v3);
  }

  if (v2)
  {
    v9 = 0;
    v46 = a2 + 4;
    v3 = a1;
    for (i = a1 + 16 * v2; ; i -= 16)
    {
      if (i < v3)
      {
        goto LABEL_109;
      }

      LODWORD(v3) = i + 16;
      if (i + 16 > v47)
      {
        goto LABEL_109;
      }

      LODWORD(v3) = *i;
      v11 = (*i >> 28) ^ 8;
      if (v11 > 11)
      {
        if ((v11 - 13) < 2)
        {
          LODWORD(v3) = v46;
          if (v46 < a2)
          {
            goto LABEL_109;
          }

          v3 = *(i + 4);
          if (v3)
          {
            goto LABEL_109;
          }

          v22 = a2 + v3;
          LODWORD(v3) = *(a2 + v3);
          if (v3)
          {
            v23 = 0;
            v24 = *(*(i + 8) + 4);
            v25 = *(v22 + 1);
            v26 = v25 + v24 * v3;
            v27 = v25;
            while (!v27 || v27 < v26 && v27 >= v25)
            {
              v9 += __gen2_asn1_length(*(i + 8), v27);
              v27 += v24;
              ++v23;
              LODWORD(v3) = *v22;
              if (v23 >= *v22)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_109;
          }

LABEL_45:
          v5 = 16;
        }

        else
        {
          if (v11 == 12)
          {
            LODWORD(v3) = *i & 0xFFF;
            if (v3 >= 0x15)
            {
              goto LABEL_110;
            }

            v3 = asn1_template_prim[6 * v3 + 2];
            v41 = a2 + *(i + 4);
            if (v41 && (v41 >= a2 + v5 || v41 < a2))
            {
              goto LABEL_109;
            }

            v40 = (v3)();
            goto LABEL_103;
          }

          if (v11 != 15)
          {
LABEL_111:
            asn1_abort("unknown opcode: %d", v3 & 0xF0000000);
          }

          v3 = *(i + 8);
          v15 = *(v3 + 8);
          v16 = v3 + 16 * v15;
          if (v3 > v16)
          {
            goto LABEL_109;
          }

          if (*v3)
          {
            v9 += 5;
          }

          else
          {
            ++v9;
            if (v15)
            {
              if (a2 && v5 < 1)
              {
                goto LABEL_109;
              }

              v17 = v3 + 16 * v15;
              while (1)
              {
                if (v17 > v16 || v3 > v17)
                {
                  goto LABEL_109;
                }

                v18 = *(v17 + 4);
                if ((*a2 >> v18))
                {
                  break;
                }

                v17 -= 16;
                if (!--v15)
                {
                  goto LABEL_104;
                }
              }

              v9 += (v18 >> 3) + 1;
            }
          }
        }
      }

      else if ((v11 - 9) < 2)
      {
        v19 = a2 + v5;
        v20 = (a2 + *(i + 4));
        v21 = *(i + 8);
        if ((v3 & 0x1000000) == 0)
        {
          v3 = a2;
          goto LABEL_51;
        }

        if (v20 < a2)
        {
          goto LABEL_109;
        }

        v3 = (v20 + 2);
        if ((v20 + 2) > v19 || v20 > v3)
        {
          goto LABEL_109;
        }

        v20 = *v20;
        if (v20)
        {
          v19 = v20 + *(v21 + 4);
          v3 = v20;
LABEL_51:
          if (*i >> 28 == 1)
          {
            if (v20 && (v20 >= v19 || v20 < v3))
            {
              goto LABEL_109;
            }

            goto LABEL_80;
          }

          if (v20 && (v20 >= v19 || v20 < v3))
          {
            goto LABEL_109;
          }

          v40 = (*(v21 + 16))(v20);
LABEL_103:
          v9 += v40;
        }
      }

      else
      {
        if (!v11)
        {
          v28 = *(i + 8);
          v29 = *(v28 + 1);
          v30 = &v28[4 * v29];
          if (v28 > v30)
          {
            goto LABEL_109;
          }

          v3 = a2 + v5;
          v31 = (a2 + v28[1]);
          v32 = v31 + 1;
          v33 = v31 < a2 || v32 > v3;
          if (v33 || v31 > v32)
          {
            goto LABEL_109;
          }

          v35 = *v31;
          if (v35)
          {
            v36 = v35 <= v29;
          }

          else
          {
            v36 = 0;
          }

          if (!v36)
          {
            asn1_abort("invalid choice: %d", v35);
          }

          if (v35 == -1)
          {
            v44 = a2 + *v28;
            if (v44 && (v44 < a2 || v44 + 16 > v3 || v44 > v44 + 16))
            {
              goto LABEL_109;
            }

            v40 = __gen2_der_length_octet_string(v44);
          }

          else
          {
            v37 = &v28[4 * v35];
            if (v37 > v30 || v28 > v37)
            {
              goto LABEL_109;
            }

            v21 = *(v37 + 1);
            v20 = (a2 + v37[1]);
            if (v20)
            {
              if (v20 >= v3 || v20 < a2)
              {
                goto LABEL_109;
              }
            }

LABEL_80:
            v40 = __gen2_asn1_length(v21, v20);
          }

          goto LABEL_103;
        }

        if (v11 != 11)
        {
          goto LABEL_111;
        }

        v12 = *(i + 4);
        v13 = (a2 + v12);
        if (a2 + v12 > a2 + v5 || v13 < a2)
        {
          goto LABEL_109;
        }

        if ((v3 & 0x1000000) == 0)
        {
          v3 = v5 - v12;
          v14 = *(i + 8);
LABEL_94:
          if (!v3 && v13)
          {
            goto LABEL_109;
          }

          v42 = __gen2_asn1_length(v14, v13);
          v43 = __gen2_der_length_tag(*i & 0x1FFFFF);
          v9 += v42 + v43 + __gen2_der_length_len(v42);
          goto LABEL_104;
        }

        v3 = (v13 + 2);
        if (v13 + 2 > (a2 + v5) || v13 > v3)
        {
          goto LABEL_109;
        }

        v13 = *v13;
        if (v13)
        {
          v14 = *(i + 8);
          v3 = *(v14 + 4);
          if (v13 > (v13 + v3))
          {
            goto LABEL_109;
          }

          goto LABEL_94;
        }
      }

LABEL_104:
      v3 = a1;
      if (!--v2)
      {
        return v9;
      }
    }
  }

  return 0;
}

void __gen2_asn1_free(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 + 1;
  v4 = a1 + 16 * (v2 + 1);
  v5 = *(a1 + 4);
  v6 = a2 + v5;
  v7 = a2 + v5 >= a2 && v4 >= a1;
  if (!v7 || v3 > (16 * (v2 + 1)) >> 4)
  {
    goto LABEL_109;
  }

  v10 = a1 + 16;
  v39 = a1 + 16 * (v2 + 1);
  if (a1 + 16 > v4)
  {
    goto LABEL_109;
  }

  if (*a1)
  {
    if (a2 && (a2 + 16 < a2 || a2 + 16 > v6))
    {
      goto LABEL_109;
    }

    __gen2_der_free_octet_string(a2);
  }

  if (v10 < a1 || (v6 = 16 * v3 - 16, v2 > v6 >> 4))
  {
LABEL_109:
    __break(0x5519u);
LABEL_110:
    asn1_abort("type larger then asn1_template_prim: %d", v6);
  }

  if (v2)
  {
    v38 = a2 + 16;
    do
    {
      LODWORD(v6) = v39;
      if (v10 + 16 > v39)
      {
        goto LABEL_109;
      }

      LODWORD(v6) = *v10;
      v11 = (*v10 >> 28) ^ 8;
      if (v11 > 11)
      {
        if ((v11 - 13) < 2)
        {
          LODWORD(v6) = a2;
          if (v38 < a2)
          {
            goto LABEL_109;
          }

          v6 = *(v10 + 4);
          v16 = (a2 + v6);
          if (a2 + v6 < a2)
          {
            goto LABEL_109;
          }

          if ((v16 + 1) > v38 || v16 > v16 + 1)
          {
            goto LABEL_109;
          }

          if (*v16)
          {
            if (v6)
            {
              goto LABEL_109;
            }

            v18 = 0;
            v6 = *(v10 + 8);
            v19 = *(v6 + 4);
            v20 = *(v16 + 1);
            v21 = v20 + *v16 * v19;
            v22 = v20;
            do
            {
              if (v22 && (v22 >= v21 || v22 < v20))
              {
                goto LABEL_109;
              }

              __gen2_asn1_free(*(v10 + 8), v22);
              v22 += v19;
              ++v18;
              LODWORD(v6) = *v16;
            }

            while (v18 < *v16);
            free(*(v16 + 1));
            *(v16 + 1) = 0;
            *v16 = 0;
          }

          v5 = 16;
        }

        else if (v11 == 12)
        {
          LODWORD(v6) = *v10 & 0xFFF;
          if (v6 >= 0x15)
          {
            goto LABEL_110;
          }

          v6 = asn1_template_prim[6 * v6 + 4];
          v36 = a2 + *(v10 + 4);
          if (v36 && (v36 >= a2 + v5 || v36 < a2))
          {
            goto LABEL_109;
          }

          (v6)();
        }

        else if (v11 != 15)
        {
LABEL_111:
          asn1_abort("unknown opcode: %d", v6 & 0xF0000000);
        }
      }

      else if ((v11 - 9) < 2)
      {
        v15 = a2 + v5;
        v13 = (a2 + *(v10 + 4));
        v14 = *(v10 + 8);
        if ((v6 & 0x1000000) == 0)
        {
          v6 = a2;
          goto LABEL_54;
        }

        *(v10 + 4);
        if (v13 < a2)
        {
          goto LABEL_109;
        }

        v6 = (v13 + 1);
        if ((v13 + 1) > v15 || v13 > v6)
        {
          goto LABEL_109;
        }

        v13 = *v13;
        if (v13)
        {
          v15 = v13 + *(v14 + 4);
          v6 = v13;
LABEL_54:
          if (*v10 >> 28 == 1)
          {
            if (v13)
            {
              if (v13 >= v15)
              {
                goto LABEL_109;
              }

LABEL_95:
              if (v13 < v6)
              {
                goto LABEL_109;
              }
            }

LABEL_96:
            __gen2_asn1_free(v14, v13);
          }

          else
          {
            if (v13 && (v13 >= v15 || v13 < v6))
            {
              goto LABEL_109;
            }

            (*(v14 + 32))(v13);
          }

          LODWORD(v6) = *(v10 + 3);
          if (v6)
          {
            free(v13);
          }
        }
      }

      else if (v11)
      {
        if (v11 != 11)
        {
          goto LABEL_111;
        }

        v12 = a2 + v5;
        v13 = (a2 + *(v10 + 4));
        v14 = *(v10 + 8);
        if ((v6 & 0x1000000) == 0)
        {
          v6 = a2;
          if (!v13)
          {
            goto LABEL_96;
          }

LABEL_94:
          if (v13 >= v12)
          {
            goto LABEL_109;
          }

          goto LABEL_95;
        }

        if (v13 < a2)
        {
          goto LABEL_109;
        }

        v6 = (v13 + 1);
        if ((v13 + 1) > v12 || v13 > v6)
        {
          goto LABEL_109;
        }

        v6 = *v13;
        if (*v13)
        {
          v12 = v6 + *(v14 + 4);
          v13 = *v13;
          goto LABEL_94;
        }
      }

      else
      {
        v24 = *(v10 + 8);
        v25 = *(v24 + 1);
        v26 = &v24[4 * v25];
        if (v24 > v26)
        {
          goto LABEL_109;
        }

        v6 = a2 + v5;
        v27 = (a2 + v24[1]);
        v28 = v27 + 1;
        v29 = v27 < a2 || v28 > v6;
        if (v29 || v27 > v28)
        {
          goto LABEL_109;
        }

        v31 = *v27;
        if (v31)
        {
          if (v31 > v25)
          {
            asn1_abort("invalid choice: %d", v31);
          }

          if (v31 == -1)
          {
            v37 = a2 + *v24;
            if (v37 && (v37 < a2 || v37 + 16 > v6 || v37 > v37 + 16))
            {
              goto LABEL_109;
            }

            __gen2_der_free_octet_string(v37);
          }

          else
          {
            v32 = &v24[4 * v31];
            if (v32 > v26 || v24 > v32)
            {
              goto LABEL_109;
            }

            v34 = a2 + v32[1];
            if (v34)
            {
              v7 = v34 >= v6;
              LODWORD(v6) = a2;
              if (v7 || v34 < a2)
              {
                goto LABEL_109;
              }
            }

            __gen2_asn1_free(*(v32 + 1), v34);
          }
        }
      }

      if (v10 > v10 + 16)
      {
        goto LABEL_109;
      }

      v6 = 16 * v2 - 16;
      if (v3 - 2 > v6 >> 4)
      {
        goto LABEL_109;
      }

      v10 += 16;
      v3 = v2--;
    }

    while (v2);
  }
}

uint64_t __gen2_asn1_copy(unint64_t a1, char *a2, size_t *a3)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = a1 + 16 * (v3 + 1);
  v6 = *(a1 + 4);
  v7 = &a2[v6];
  v8 = a3 + v6;
  if ((a3 + v6) < a3 || v7 < a2 || v5 < a1 || v4 > (16 * (v3 + 1)) >> 4)
  {
    goto LABEL_184;
  }

  v13 = a1 + 16;
  if (a1 + 16 > v5 || v13 < a1 || v3 > (16 * v4 - 16) >> 4)
  {
    goto LABEL_184;
  }

  v15 = a2;
  if (*a1)
  {
    if (a2 && (a2 + 16 < a2 || (a2 + 16) > v7) || a3 && (a3 + 2 < a3 || (a3 + 2) > v8))
    {
      goto LABEL_184;
    }

    v15 = a2;
    v16 = __gen2_der_copy_octet_string(a2, a3);
    if (v16)
    {
      return v16;
    }
  }

  if (!v3)
  {
    return 0;
  }

  v19 = v15 + 16 < v15 || a3 + 2 < a3;
  v85 = v19;
  v86 = a1 + 16 * v3;
  while (1)
  {
    LODWORD(v8) = v86;
    if (v13 > v86)
    {
      goto LABEL_184;
    }

    LODWORD(v8) = *v13;
    v20 = *v13 >> 28;
    v21 = v20 ^ 8;
    if ((v20 ^ 8) > 11)
    {
      if ((v21 - 13) < 2)
      {
        LODWORD(v8) = v85;
        if (v85)
        {
          goto LABEL_184;
        }

        v8 = *(v13 + 4);
        if (v8)
        {
          goto LABEL_184;
        }

        v32 = &a2[v8];
        v33 = (a3 + v8);
        v34 = *&a2[v8];
        if (v34)
        {
          v35 = *(*(v13 + 8) + 4);
          v36 = malloc_type_calloc(v34, v35, 0xAD3B8364uLL);
          if (!v36)
          {
            return 12;
          }

          if (!v35)
          {
            goto LABEL_184;
          }

          *(v33 + 1) = v36;
          v37 = *v32;
          *v33 = v37;
          if (v37)
          {
            v38 = 0;
            for (i = 0; i < v37; ++i)
            {
              v40 = *(v32 + 1);
              v41 = v40 + v38;
              if (v40 + v38)
              {
                v8 = v40 + v37 * v35;
                if (v41 >= v8 || v41 < v40)
                {
                  goto LABEL_184;
                }
              }

              v8 = *(v33 + 1);
              v43 = v8 + v38;
              if (v8 + v38)
              {
                if (v43 < v8 || v43 >= v8 + *v33 * v35)
                {
                  goto LABEL_184;
                }
              }

              v16 = __gen2_asn1_copy(*(v13 + 8), v41, v43);
              if (v16)
              {
                return v16;
              }

              v37 = *v32;
              v38 += v35;
            }
          }
        }

        else
        {
          *(v33 + 1) = 0;
          *v33 = 0;
        }

        v6 = 16;
      }

      else if (v21 == 12)
      {
        v75 = *v13 & 0xFFF;
        if (v75 >= 0x15)
        {
          asn1_abort("type larger then asn1_template_prim: %d", v75);
        }

        v76 = *(v13 + 4);
        v8 = asn1_template_prim[6 * v75 + 3];
        v77 = &a2[v76];
        if (&a2[v76] && (v77 >= &a2[v6] || v77 < a2))
        {
          goto LABEL_184;
        }

        v78 = a3 + v76;
        if ((a3 + v76))
        {
          if (v78 >= a3 + v6 || v78 < a3)
          {
            goto LABEL_184;
          }
        }

        v16 = (v8)();
        if (v16)
        {
          return v16;
        }
      }

      else
      {
        if (v21 != 15)
        {
          goto LABEL_185;
        }

        v8 = *(v13 + 8);
        if (v8 > v8 + 16 * *(v8 + 8))
        {
          goto LABEL_184;
        }

        v28 = *(v8 + 4);
        if (v6 < v28)
        {
          goto LABEL_184;
        }

        memcpy(a3, a2, *(v8 + 4));
        LODWORD(v8) = a3 + v28;
        if ((a3 + v28) < a3)
        {
          goto LABEL_184;
        }
      }

      goto LABEL_170;
    }

    if ((v21 - 9) >= 2)
    {
      if (v21)
      {
        if (v21 != 11)
        {
          goto LABEL_185;
        }

        v22 = *(v13 + 4);
        v23 = (a3 + v22);
        if ((a3 + v22) < a3)
        {
          goto LABEL_184;
        }

        v24 = &a2[v22];
        if (&a2[v22] > &a2[v6])
        {
          goto LABEL_184;
        }

        if (v24 < a2)
        {
          goto LABEL_184;
        }

        v25 = a3 + v6;
        if (v23 > (a3 + v6))
        {
          goto LABEL_184;
        }

        if ((v8 & 0x1000000) != 0)
        {
          v8 = v24 + 8;
          if (v24 + 8 > &a2[v6] || v24 > v8)
          {
            goto LABEL_184;
          }

          if (!*v24)
          {
            goto LABEL_170;
          }

          v27 = *(*(v13 + 8) + 4);
          v79 = malloc_type_calloc(1uLL, v27, 0x40840579uLL);
          if (!v79)
          {
            return 12;
          }

          if (!v27)
          {
            goto LABEL_184;
          }

          v8 = (v23 + 1);
          if ((v23 + 1) > v25)
          {
            goto LABEL_184;
          }

          if (v23 > v8)
          {
            goto LABEL_184;
          }

          *v23 = v79;
          v24 = *v24;
          LODWORD(v8) = v24 + v27;
          if (v24 > v24 + v27)
          {
            goto LABEL_184;
          }

          v26 = v23;
          v23 = v79;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = v6 - v22;
        }

        LODWORD(v8) = (v23 | v24) != 0;
        if (!v27 && v23 | v24)
        {
          goto LABEL_184;
        }

        v80 = __gen2_asn1_copy(*(v13 + 8), v24, v23);
        if (v80)
        {
          v17 = v80;
          if (v26)
          {
            v8 = (v26 + 1);
            if ((v26 + 1) <= v25)
            {
              goto LABEL_182;
            }

            goto LABEL_184;
          }

          return v17;
        }
      }

      else
      {
        v55 = *(v13 + 8);
        v8 = *(v55 + 1);
        v56 = &v55[4 * v8];
        if (v55 > v56)
        {
          goto LABEL_184;
        }

        v57 = v55[1];
        v58 = &a2[v6];
        v59 = &a2[v57];
        v60 = &a2[v57 + 4];
        v61 = &a2[v57] < a2 || v60 > v58;
        if (v61 || v59 > v60)
        {
          goto LABEL_184;
        }

        v63 = *v59;
        if (*v59)
        {
          v64 = v63 <= v8;
        }

        else
        {
          v64 = 0;
        }

        if (!v64)
        {
          return 1859794451;
        }

        v65 = (a3 + v57);
        if (v65 < a3)
        {
          goto LABEL_184;
        }

        v8 = a3 + v6;
        if (v65 + 1 > (a3 + v6) || v65 > v65 + 1)
        {
          goto LABEL_184;
        }

        *v65 = v63;
        v66 = *v59;
        if (v66 == -1)
        {
          v81 = *v55;
          v82 = &a2[v81];
          if (&a2[v81] && (v82 < a2 || v82 + 16 > v58 || v82 > v82 + 16))
          {
            goto LABEL_184;
          }

          v83 = (a3 + v81);
          if ((a3 + v81))
          {
            if (v83 < a3 || (v83 + 2) > v8 || v83 > v83 + 2)
            {
              goto LABEL_184;
            }
          }

          v74 = __gen2_der_copy_octet_string(v82, v83);
        }

        else
        {
          v67 = &v55[4 * v66];
          if (v67 > v56 || v55 > v67)
          {
            goto LABEL_184;
          }

          v69 = v67[1];
          v70 = &a2[v69];
          if (&a2[v69])
          {
            if (v70 >= v58 || v70 < a2)
            {
              goto LABEL_184;
            }
          }

          v72 = a3 + v69;
          if ((a3 + v69))
          {
            if (v72 >= v8 || v72 < a3)
            {
              goto LABEL_184;
            }
          }

          v74 = __gen2_asn1_copy(*(v67 + 1), v70, v72);
        }

        v17 = v74;
        if (v74)
        {
          return v17;
        }
      }

      goto LABEL_170;
    }

    v29 = *(v13 + 8);
    v30 = a2;
    v31 = v20 == 1 ? *(v29 + 4) : *(v29 + 40);
    v45 = *(v13 + 4);
    v46 = &a2[v6];
    v47 = &a2[v45];
    v48 = a3 + v6;
    v26 = (a3 + v45);
    if ((v8 & 0x1000000) != 0)
    {
      if (v47 < a2)
      {
        goto LABEL_184;
      }

      v8 = (v47 + 8);
      if ((v47 + 8) > v46 || v47 > v8)
      {
        goto LABEL_184;
      }

      v47 = *v47;
      if (!v47)
      {
        goto LABEL_170;
      }

      v52 = malloc_type_calloc(1uLL, v31, 0x47C55739uLL);
      if (!v52)
      {
        return 12;
      }

      if (v31 < 1)
      {
        goto LABEL_184;
      }

      if (v26 < a3)
      {
        goto LABEL_184;
      }

      v8 = (v26 + 1);
      if ((v26 + 1) > v48 || v26 > v8)
      {
        goto LABEL_184;
      }

      v49 = v52;
      v46 = &v47[v31];
      v50 = &v52[v31];
      *v26 = v52;
      LODWORD(v8) = *v13;
      v51 = v52;
      v30 = v47;
    }

    else
    {
      v49 = a3 + v45;
      v50 = a3 + v6;
      v51 = a3;
    }

    v53 = *(v13 + 8);
    LODWORD(v8) = v8 >> 28;
    if (v8 == 1)
    {
      if (v47 && (v47 >= v46 || v47 < v30) || v49 && (v49 >= v50 || v49 < v51))
      {
        goto LABEL_184;
      }

      v54 = __gen2_asn1_copy(v53, v47, v49);
    }

    else
    {
      v8 = *(v53 + 24);
      if (v47 && (v47 >= v46 || v47 < v30) || v49 && (v49 >= v50 || v49 < v51))
      {
        goto LABEL_184;
      }

      v54 = (v8)(v47, v49);
    }

    v17 = v54;
    if (v54)
    {
      break;
    }

LABEL_170:
    LODWORD(v8) = v13 + 16;
    if (v13 >= v13 + 16 || v4 - 2 > (16 * v3 - 16) >> 4)
    {
      goto LABEL_184;
    }

    v13 += 16;
    v4 = v3--;
    if (!v3)
    {
      return 0;
    }
  }

  LODWORD(v8) = *(v13 + 3);
  if (v8)
  {
    if (v26 < a3)
    {
      goto LABEL_184;
    }

    v8 = (v26 + 1);
    if ((v26 + 1) > v48)
    {
      goto LABEL_184;
    }

LABEL_182:
    if (v26 <= v8)
    {
      free(*v26);
      *v26 = 0;
      return v17;
    }

LABEL_184:
    __break(0x5519u);
LABEL_185:
    asn1_abort("unknown opcode: %d", v8 & 0xF0000000);
  }

  return v17;
}

void __gen2_asn1_decode_top(unint64_t a1, unsigned int a2, char *a3, size_t a4, char *a5, size_t *a6)
{
  v7 = *(a1 + 4);
  v8 = &a5[v7];
  if (&a5[v7] < a5 || (bzero(a5, v7), v8 < a5))
  {
    __break(0x5519u);
  }

  else if (__gen2_asn1_decode(a1, a2, a3, a4, a5, a6))
  {
    __gen2_asn1_free_top(a1, a5);
  }
}

void __gen2_asn1_free_top(unint64_t a1, char *a2)
{
  __gen2_asn1_free(a1, a2);
  v4 = *(a1 + 4);
  if (&a2[v4] < a2)
  {
    __break(0x5519u);
  }

  else
  {
    bzero(a2, v4);
  }
}

void __gen2_asn1_copy_top(unint64_t a1, char *a2, char *a3)
{
  v4 = *(a1 + 4);
  v5 = &a3[v4];
  if (&a3[v4] < a3 || (bzero(a3, v4), v5 < a3))
  {
    __break(0x5519u);
  }

  else if (__gen2_asn1_copy(a1, a2, a3))
  {
    __gen2_asn1_free_top(a1, a3);
  }
}

char *rk_hex_encode(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a2;
  v6 = (2 * a2) | 1;
  result = malloc_type_malloc(v6, 0xB155EA8uLL);
  if (!result)
  {
    v10 = -1;
    goto LABEL_29;
  }

  v8 = &result[v6];
  if (!v4)
  {
    v10 = 0;
LABEL_20:
    v16 = &result[v10];
    if (&result[v10] >= v8 || v16 < result)
    {
      goto LABEL_30;
    }

    *v16 = 0;
    if (v16 + 1 < v16 || (v16 + 1) > v8)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a3 = result;
    return v10;
  }

  v9 = &a1[v4];
  v10 = 2 * v4;
  v11 = result + 1;
  while (a1 < v9)
  {
    v12 = &hexchar[*a1 >> 4];
    if (v12 >= byte_298ABB038 || v12 < hexchar)
    {
      break;
    }

    v14 = v11 - 1;
    if ((v11 - 1) >= v8)
    {
      break;
    }

    if (v14 < result)
    {
      break;
    }

    *v14 = *v12;
    v15 = &hexchar[*a1 & 0xF];
    if (v15 >= byte_298ABB038 || v15 < hexchar || v11 >= v8 || v11 < result)
    {
      break;
    }

    *v11 = *v15;
    v11 += 2;
    ++a1;
    if (!--v4)
    {
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(0x5519u);
  return result;
}

size_t rk_hex_decode(const char *a1, _BYTE *a2, size_t a3)
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
    result = pos(*v5);
    *a2 = result;
    if (!*v5)
    {
LABEL_21:
      __break(0x5519u);
      return result;
    }

    ++v5;
    v10 = a2 + 1;
  }

  else
  {
    v10 = a2;
  }

  result = strlen(v5);
  if (v9 >= 2)
  {
    v12 = &a2[a3];
    v11 = v9 >> 1;
    v13 = &v5[result + 1];
    v14 = v5 + 1;
    v15 = v11;
    while ((v14 - 1) < v13 && v14 - 1 >= v5)
    {
      result = pos(*(v14 - 1));
      if (v14 >= v13)
      {
        break;
      }

      if (v14 < v5)
      {
        break;
      }

      v17 = result;
      result = pos(*v14);
      if (v10 >= v12 || v10 < a2)
      {
        break;
      }

      *v10++ = result | (16 * v17);
      v14 += 2;
      if (!--v15)
      {
        return v11 + v7;
      }
    }

    goto LABEL_21;
  }

  v11 = 0;
  return v11 + v7;
}

uint64_t pos(unsigned __int8 a1)
{
  v1 = __toupper(a1);
  result = 0;
  v3 = &hexchar;
  while (*v3)
  {
    if (v1 == *v3)
    {
      return result;
    }

    ++v3;
    result = (result + 1);
    if (v3 >= byte_298ABB038)
    {
      __break(0x5519u);
      return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}