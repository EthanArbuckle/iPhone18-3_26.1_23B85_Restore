uint64_t _scan_dangerous_url(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x56)
  {
    if (v1 <= 0x46)
    {
      if (v1 != 68)
      {
        if (v1 != 70)
        {
          return 0;
        }

LABEL_9:
        if ((a1[1] & 0xDF) != 0x49)
        {
          return 0;
        }

        if ((a1[2] & 0xDF) != 0x4C)
        {
          return 0;
        }

        v2 = a1 + 3;
        if ((a1[3] & 0xDF) != 0x45)
        {
          return 0;
        }

LABEL_12:
        if (v2[1] == 58)
        {
          v3 = v2 + 2;
          return (v3 - a1);
        }

        return 0;
      }

      goto LABEL_23;
    }

    if (v1 != 74)
    {
      if (v1 != 86)
      {
        return 0;
      }

LABEL_39:
      if ((a1[1] & 0xDF) != 0x42)
      {
        return 0;
      }

      v4 = 1;
      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (v1 > 0x66)
  {
    if (v1 > 0x6A)
    {
      if (v1 != 118)
      {
        return 0;
      }

      goto LABEL_39;
    }

    if (v1 != 106)
    {
      return 0;
    }

LABEL_19:
    if ((a1[1] & 0xDF) != 0x41 || (a1[2] & 0xDF) != 0x56 || (a1[3] & 0xDF) != 0x41)
    {
      return 0;
    }

    v4 = 3;
LABEL_41:
    v6 = &a1[v4];
    if ((v6[1] & 0xDF) != 0x53)
    {
      return 0;
    }

    if ((v6[2] & 0xDF) != 0x43)
    {
      return 0;
    }

    if ((v6[3] & 0xDF) != 0x52)
    {
      return 0;
    }

    if ((v6[4] & 0xDF) != 0x49)
    {
      return 0;
    }

    if ((v6[5] & 0xDF) != 0x50)
    {
      return 0;
    }

    v7 = v6[6];
    v2 = v6 + 6;
    if ((v7 & 0xFFFFFFDF) != 0x54)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v1 != 100)
  {
    if (v1 != 102)
    {
      return 0;
    }

    goto LABEL_9;
  }

LABEL_23:
  if ((a1[1] & 0xDF) != 0x41 || (a1[2] & 0xDF) != 0x54 || (a1[3] & 0xDF) != 0x41 || a1[4] != 58)
  {
    return 0;
  }

  v3 = a1 + 5;
  if ((a1[5] & 0xDF) != 0x49 || (a1[6] & 0xDF) != 0x4D || (a1[7] & 0xDF) != 0x41 || (a1[8] & 0xDF) != 0x47 || (a1[9] & 0xDF) != 0x45 || a1[10] != 47)
  {
    return (v3 - a1);
  }

  v5 = a1[11];
  if (v5 > 0x57)
  {
    if (v5 <= 0x6A)
    {
      if (v5 != 103)
      {
        if (v5 != 106)
        {
          return (v3 - a1);
        }

        goto LABEL_51;
      }

      goto LABEL_63;
    }

    if (v5 > 0x70)
    {
      if (v5 != 119)
      {
        return (v3 - a1);
      }

      goto LABEL_67;
    }

    if (v5 != 112)
    {
      return (v3 - a1);
    }

LABEL_59:
    if ((a1[12] & 0xDF) != 0x4E)
    {
      return (v3 - a1);
    }

    v9 = 12;
    goto LABEL_61;
  }

  if (v5 > 0x4A)
  {
    if (v5 != 80)
    {
      if (v5 != 87)
      {
        return (v3 - a1);
      }

LABEL_67:
      if ((a1[12] & 0xDF) == 0x45 && (a1[13] & 0xDF) == 0x42 && (a1[14] & 0xDF) == 0x50)
      {
        return 0;
      }

      return (v3 - a1);
    }

    goto LABEL_59;
  }

  if (v5 != 71)
  {
    if (v5 != 74)
    {
      return (v3 - a1);
    }

LABEL_51:
    if ((a1[12] & 0xDF) != 0x50 || (a1[13] & 0xDF) != 0x45)
    {
      return (v3 - a1);
    }

    v9 = 13;
LABEL_61:
    if ((a1[v9 + 1] & 0xDF) != 0x47)
    {
      return (v3 - a1);
    }

    return 0;
  }

LABEL_63:
  if ((a1[12] & 0xDF) == 0x49 && (a1[13] & 0xDF) == 0x46)
  {
    return 0;
  }

  return (v3 - a1);
}

unint64_t _scan_footnote_definition(unint64_t result)
{
  if (*result != 91)
  {
    return 0;
  }

  if (*(result + 1) != 94)
  {
    return 0;
  }

  v1 = (result + 2);
  v2 = *(result + 2);
  if (v2 == 93)
  {
    return 0;
  }

  while (1)
  {
    if ((_scan_footnote_definition_yybm[v2] & 0x40) != 0)
    {
      goto LABEL_24;
    }

    if (v2 > 0xEC)
    {
      if (v2 > 0xF0)
      {
        if (v2 >= 0xF4)
        {
          if (v2 != 244)
          {
            return 0;
          }

          v6 = *++v1;
          if (v6 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v5 = *++v1;
          if (v5 >= -64)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v2 == 237)
        {
          v10 = *++v1;
          if (v10 >= -96)
          {
            return 0;
          }

          goto LABEL_23;
        }

        if (v2 == 240)
        {
          v4 = *++v1;
          if ((v4 - 144) >= 0x30)
          {
            return 0;
          }
        }
      }

      goto LABEL_22;
    }

    if (v2 <= 0xC1)
    {
      break;
    }

    if (v2 < 0xE0)
    {
      goto LABEL_23;
    }

    if (v2 == 224)
    {
      v3 = *++v1;
      if ((v3 & 0xE0) != 0xA0)
      {
        return 0;
      }

      goto LABEL_23;
    }

LABEL_22:
    v7 = *++v1;
    if (v7 >= -64)
    {
      return 0;
    }

LABEL_23:
    v8 = *++v1;
    if (v8 >= -64)
    {
      return 0;
    }

LABEL_24:
    v9 = *++v1;
    v2 = v9;
  }

  if (v2 - 33 >= 0x3D || v1[1] != 58)
  {
    return 0;
  }

  LODWORD(result) = v1 - result + 1;
  v11 = v1 + 2;
  do
  {
    v12 = *v11++;
    result = (result + 1);
  }

  while (_scan_footnote_definition_yybm[v12] < 0);
  return result;
}

void *cmark_footnote_create(uint64_t *a1, uint64_t a2)
{
  result = normalize_map_label(*a1, a2 + 144);
  if (result)
  {
    if (a1[2])
    {
      cmark_footnote_create_cold_1();
    }

    v5 = result;
    result = (**a1)(1, 48);
    result[4] = a2;
    v6 = a1[3];
    result[2] = v6;
    *result = a1[1];
    result[1] = v5;
    a1[1] = result;
    a1[3] = v6 + 1;
  }

  return result;
}

uint64_t footnote_free(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *result;
    (*(*result + 16))(*(a2 + 8));
    v4 = *(a2 + 32);
    if (v4)
    {
      cmark_node_free(v4);
    }

    v5 = *(v3 + 16);

    return v5(a2);
  }

  return result;
}

void *cmark_unlink_footnotes_map(void *result)
{
  v1 = result[1];
  while (v1)
  {
    result = v1[4];
    v1 = *v1;
    if (result)
    {
      result = cmark_node_unlink(result);
    }
  }

  return result;
}

_BYTE *normalize_map_label(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = &cmark_strbuf__initbuf;
  v5[2] = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  cmark_utf8proc_case_fold(v5, *a2, v2);
  cmark_strbuf_trim(v5);
  cmark_strbuf_normalize_whitespace(v5);
  result = cmark_strbuf_detach(v5);
  if (!result)
  {
    normalize_map_label_cold_1();
  }

  if (!*result)
  {
    (*(a1 + 16))();
    return 0;
  }

  return result;
}

_BYTE *cmark_map_lookup(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a1 && (*(a2 + 8) - 1001) >= 0xFFFFFC18)
  {
    if (a1[3])
    {
      result = normalize_map_label(*a1, a2);
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = a1[2];
      v6 = a1[3];
      if (!v5)
      {
        v7 = a1[1];
        v8 = (**a1)(a1[3], 8);
        v5 = v8;
        if (v7)
        {
          v9 = v8;
          do
          {
            *v9 = v7;
            v9 += 8;
            v7 = *v7;
          }

          while (v7);
        }

        qsort(v8, v6, 8uLL, refcmp);
        if (v6 < 2)
        {
          v6 = 1;
        }

        else
        {
          v10 = 0;
          v11 = v6 - 1;
          v12 = v5 + 8;
          do
          {
            v13 = *v12;
            if (strcmp(*(*v12 + 8), *(*&v5[8 * v10] + 8)))
            {
              ++v10;
              *&v5[8 * v10] = v13;
            }

            v12 += 8;
            --v11;
          }

          while (v11);
          v6 = v10 + 1;
        }

        a1[2] = v5;
        a1[3] = v6;
      }

      v14 = bsearch(v4, v5, v6, 8uLL, refsearch);
      (*(*a1 + 16))(v4);
      if (v14)
      {
        result = *v14;
        v15 = *(*v14 + 24);
        v16 = a1[4];
        if (v15 <= a1[5] - v16)
        {
          a1[4] = v16 + v15;
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t refcmp(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = strcmp(*(*a1 + 8), *(*a2 + 8));
  if (!result)
  {
    return (*(v2 + 16) - *(v3 + 16));
  }

  return result;
}

uint64_t cmark_strbuf_set(uint64_t result, void *__src, size_t __len)
{
  v3 = result;
  if (__src && (v4 = __len, __len > 0))
  {
    result = *(result + 8);
    if (result == __src)
    {
      v6 = __len;
    }

    else
    {
      if (*(v3 + 16) <= __len)
      {
        cmark_strbuf_grow(v3, __len);
        result = *(v3 + 8);
      }

      v6 = v4;
      memmove(result, __src, v4);
      result = *(v3 + 8);
    }

    *(v3 + 20) = v4;
    v7 = (result + v6);
  }

  else
  {
    *(result + 20) = 0;
    if (*(result + 16) < 1)
    {
      return result;
    }

    v7 = *(result + 8);
  }

  *v7 = 0;
  return result;
}

uint64_t cmark_strbuf_sets(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  return cmark_strbuf_set(a1, __s, v4);
}

uint64_t cmark_strbuf_putc(uint64_t a1, char a2)
{
  result = cmark_strbuf_grow(a1, *(a1 + 20) + 1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 20);
  *(a1 + 20) = v6 + 1;
  *(v5 + v6) = a2;
  *(*(a1 + 8) + *(a1 + 20)) = 0;
  return result;
}

_DWORD *cmark_strbuf_puts(_DWORD *a1, char *__s)
{
  v4 = strlen(__s);

  return cmark_strbuf_put(a1, __s, v4);
}

_BYTE *cmark_strbuf_copy_cstr(_BYTE *__dst, int a2, uint64_t a3)
{
  if (!a3)
  {
    cmark_strbuf_copy_cstr_cold_1();
  }

  v3 = __dst;
  if (__dst)
  {
    if (a2 >= 1)
    {
      *__dst = 0;
      v4 = *(a3 + 20);
      if (v4)
      {
        if (*(a3 + 16) >= 1)
        {
          if (v4 >= a2)
          {
            v5 = a2 - 1;
          }

          else
          {
            v5 = *(a3 + 20);
          }

          __dst = memmove(__dst, *(a3 + 8), v5);
          v3[v5] = 0;
        }
      }
    }
  }

  return __dst;
}

__n128 cmark_strbuf_swap(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v4 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t cmark_strbuf_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a2 + 20);
  v5 = v3 <= v4;
  if (v3 >= v4)
  {
    v3 = *(a2 + 20);
  }

  v6 = v3;
  v7 = !v5;
  if (v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  LODWORD(result) = memcmp(*(a1 + 8), *(a2 + 8), v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t cmark_strbuf_strchr(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 20);
  if (v3 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  v5 = memchr((v4 + (a3 & ~(a3 >> 31))), a2, v3 - (a3 & ~(a3 >> 31)));
  if (v5)
  {
    return (v5 - v4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t cmark_strbuf_strrchr(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = v4 <= a3 ? (v4 - 1) : a3;
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 8);
  while (*(v6 + result) != a2)
  {
    v7 = result <= 0;
    result = (result - 1);
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t cmark_strbuf_truncate(uint64_t result, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 < *(result + 20))
  {
    *(result + 20) = v2;
    *(*(result + 8) + v2) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_rtrim(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = result;
    if (v1 >= 1)
    {
      do
      {
        result = cmark_isspace(*(*(v2 + 8) + v1 - 1));
        v1 = *(v2 + 20);
        if (!result)
        {
          break;
        }

        v3 = __OFSUB__(v1--, 1);
        *(v2 + 20) = v1;
      }

      while (!((v1 < 0) ^ v3 | (v1 == 0)));
    }

    *(*(v2 + 8) + v1) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_trim(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = result;
    if (v1 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      do
      {
        if (!cmark_isspace(*(*(v2 + 8) + v3)))
        {
          break;
        }

        ++v3;
      }

      while (v3 < *(v2 + 20));
    }

    cmark_strbuf_drop(v2, v3);

    return cmark_strbuf_rtrim(v2);
  }

  return result;
}

uint64_t cmark_strbuf_normalize_whitespace(uint64_t result)
{
  v1 = result;
  LODWORD(v2) = *(result + 20);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      result = cmark_isspace(*(*(v1 + 8) + v3));
      if (!result)
      {
        break;
      }

      if (!v5)
      {
        v6 = *(v1 + 8);
        v7 = 32;
LABEL_7:
        *(v6 + v4++) = v7;
      }

      ++v3;
      v2 = *(v1 + 20);
      v5 = result != 0;
      if (v3 >= v2)
      {
        goto LABEL_11;
      }
    }

    v6 = *(v1 + 8);
    v7 = *(v6 + v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_11:
  v8 = v4 & ~(v4 >> 31);
  if (v8 < v2)
  {
    *(v1 + 20) = v8;
    *(*(v1 + 8) + v8) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_unescape(uint64_t result)
{
  v1 = result;
  v2 = *(result + 20);
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(v1 + 8);
      v6 = *(v5 + i);
      if (v6 == 92)
      {
        result = cmark_ispunct(*(v5 + i + 1));
        if (result)
        {
          ++i;
        }

        v5 = *(v1 + 8);
        LOBYTE(v6) = *(v5 + i);
      }

      v7 = v3 + 1;
      *(v5 + v3) = v6;
      v2 = *(v1 + 20);
      ++v3;
    }
  }

  if (v7 < v2)
  {
    *(v1 + 20) = v7;
    *(*(v1 + 8) + v7) = 0;
  }

  return result;
}

uint64_t cmark_reference_create(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  result = normalize_map_label(*a1, a2);
  if (result)
  {
    if (a1[2])
    {
      cmark_reference_create_cold_1();
    }

    v8 = result;
    v9 = (**a1)(1, 88);
    *(v9 + 8) = v8;
    *(v9 + 32) = 0;
    *(v9 + 40) = cmark_clean_url(*a1, a3);
    *(v9 + 48) = v10;
    result = cmark_clean_title(*a1, a4);
    *(v9 + 56) = result;
    *(v9 + 64) = v11;
    *(v9 + 72) = &unk_2985BB8EE;
    *(v9 + 80) = 0;
    v12 = a1[3];
    *v9 = a1[1];
    v13 = *(v9 + 48) + v11;
    *(v9 + 16) = v12;
    *(v9 + 24) = v13;
    a1[1] = v9;
    a1[3] = v12 + 1;
  }

  return result;
}

_BYTE *cmark_reference_create_attributes(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = normalize_map_label(*a1, a2);
  if (result)
  {
    if (a1[2])
    {
      cmark_reference_create_attributes_cold_1();
    }

    v6 = result;
    v7 = (**a1)(1, 88);
    *(v7 + 8) = v6;
    *(v7 + 32) = 1;
    *(v7 + 40) = &unk_2985BB8EE;
    *(v7 + 48) = 0;
    *(v7 + 56) = &unk_2985BB8EE;
    *(v7 + 64) = 0;
    result = cmark_clean_attributes(*a1, a3);
    *(v7 + 72) = result;
    *(v7 + 80) = v8;
    v9 = a1[3];
    *(v7 + 16) = v9;
    *v7 = a1[1];
    a1[1] = v7;
    a1[3] = v9 + 1;
  }

  return result;
}

uint64_t reference_free(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *result;
    (*(*result + 16))(*(a2 + 8));
    if (*(a2 + 52))
    {
      (*(v3 + 16))(*(a2 + 40));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    if (*(a2 + 68))
    {
      (*(v3 + 16))(*(a2 + 56));
    }

    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    if (*(a2 + 84))
    {
      (*(v3 + 16))(*(a2 + 72));
    }

    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v4 = *(v3 + 16);

    return v4(a2);
  }

  return result;
}

uint64_t cmark_parse_file()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v9 = *MEMORY[0x29EDCA608];
  v2 = cmark_parser_new_with_mem(v1, &CMARK_DEFAULT_MEM_ALLOCATOR);
  do
  {
    v3 = fread(__ptr, 1uLL, 0x1000uLL, v0);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    S_parser_feed(v2, __ptr, v3, v3 < 0x1000);
  }

  while (v4 > 0xFFF);
  v5 = cmark_parser_finish(v2);
  cmark_parser_free(v2);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t cmark_parse_document(_BYTE *a1, unint64_t a2, int a3)
{
  v5 = cmark_parser_new_with_mem(a3, &CMARK_DEFAULT_MEM_ALLOCATOR);
  S_parser_feed(v5, a1, a2, 1);
  v6 = cmark_parser_finish(v5);
  cmark_parser_free(v5);
  return v6;
}

uint64_t cmark_parser_feed_reentrant(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v7 = 0;
  __s = 0;
  v9 = 0;
  cmark_strbuf_init(*a1, &v7, 0);
  cmark_strbuf_puts(&v7, *(a1 + 104));
  cmark_strbuf_clear(a1 + 96);
  S_parser_feed(a1, a2, a3, 1);
  cmark_strbuf_sets(a1 + 96, __s);
  return cmark_strbuf_free(&v7);
}

uint64_t cmark_parser_advance_offset(uint64_t a1, char *__s, int a3, int a4)
{
  if (__s)
  {
    v8 = strlen(__s);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = __s;
  v10[1] = v8;
  return S_advance_offset(a1, v10, a3, a4 != 0);
}

uint64_t S_advance_offset(uint64_t result, uint64_t *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = *a2;
    v5 = *(result + 36);
    do
    {
      if (*(v4 + v5) == 9)
      {
        v7 = *(result + 40);
        if (v7 <= 0)
        {
          v8 = -(-v7 & 3);
        }

        else
        {
          v8 = *(result + 40) & 3;
        }

        v9 = 4 - v8;
        if (a4)
        {
          v10 = v9 > a3;
          *(result + 61) = v9 > a3;
          if (v9 >= a3)
          {
            v9 = a3;
          }

          v11 = v9 + v7;
          if (!v10)
          {
            ++v5;
          }

          *(result + 36) = v5;
          *(result + 40) = v11;
          a3 -= v9;
          continue;
        }

        *(result + 61) = 0;
        v6 = v9 + v7;
        ++v5;
      }

      else
      {
        if (!*(v4 + v5))
        {
          return result;
        }

        *(result + 61) = 0;
        ++v5;
        v6 = *(result + 40) + 1;
      }

      *(result + 36) = v5;
      *(result + 40) = v6;
      --a3;
    }

    while (a3 > 0);
  }

  return result;
}

uint64_t chop_trailing_hashtags(uint64_t result)
{
  if (*(result + 12))
  {
    chop_trailing_hashtags_cold_1();
  }

  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    while (1)
    {
      result = cmark_isspace(*(*v1 + v2 - 1));
      v3 = *(v1 + 8);
      v4 = __OFSUB__(v3, 1);
      v2 = v3 - 1;
      if (!result)
      {
        break;
      }

      *(v1 + 8) = v2;
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return result;
      }
    }

    if (v2 < 0 == v4)
    {
      for (i = 0; ; ++i)
      {
        v6 = *(*v1 + v2);
        if (v6 != 35)
        {
          break;
        }

        if (v2-- <= 0)
        {
          return result;
        }
      }

      if (i)
      {
        if (v6 == 32 || v6 == 9)
        {
          *(v1 + 8) = v2;
          if (*(v1 + 12))
          {
            chop_trailing_hashtags_cold_1();
          }

          if (v2)
          {
            do
            {
              result = cmark_isspace(*(*v1 + v2 - 1));
              if (!result)
              {
                break;
              }

              v9 = *(v1 + 8);
              v4 = __OFSUB__(v9, 1);
              v2 = v9 - 1;
              *(v1 + 8) = v2;
            }

            while (!((v2 < 0) ^ v4 | (v2 == 0)));
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_node_new_with_mem_and_ext(unsigned __int16 a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = (*a2)(1, 184);
  cmark_strbuf_init(a2, v6, 0);
  *(v6 + 100) = a1;
  *(v6 + 112) = a3;
  if (a1 == 32771)
  {
    *(v6 + 144) = 1;
    *(v6 + 156) = 0;
    *(v6 + 165) = 0;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (a1 == 32777)
  {
    *(v6 + 144) = 1;
  }

  if (a3)
  {
LABEL_7:
    v7 = *(a3 + 160);
    if (v7)
    {
      v7(a3, a2, v6);
    }
  }

  return v6;
}

BOOL cmark_node_set_type(uint64_t a1, int a2)
{
  v2 = *(a1 + 100);
  if (v2 != a2)
  {
    v3 = a2;
    *(a1 + 100) = a2;
    result = S_can_contain(*(a1 + 40), a1);
    *(a1 + 100) = v2;
    if (!result)
    {
      return result;
    }

    free_node_as(a1);
    *(a1 + 100) = v3;
  }

  return 1;
}

BOOL S_can_contain(void *a1, uint64_t a2)
{
  if (!a1 || !a2 || *a1 != *a2)
  {
    return 0;
  }

  if (enable_safety_checks == 1)
  {
    v3 = a1;
    while (v3 != a2)
    {
      v3 = v3[5];
      if (!v3)
      {
        return cmark_node_can_contain_type(a1, *(a2 + 100));
      }
    }

    return 0;
  }

  return cmark_node_can_contain_type(a1, *(a2 + 100));
}

const char *cmark_node_get_type_string(uint64_t a1)
{
  if (!a1)
  {
    return "NONE";
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      return v3();
    }
  }

  v5 = *(a1 + 100);
  if (v5 > 0xC000)
  {
    if (*(a1 + 100) <= 0xC005u)
    {
      if (*(a1 + 100) <= 0xC002u)
      {
        if (v5 == 49153)
        {
          return "text";
        }

        if (v5 == 49154)
        {
          return "softbreak";
        }

        return "<unknown>";
      }

      if (v5 == 49155)
      {
        return "linebreak";
      }

      else if (v5 == 49156)
      {
        return "code";
      }

      else
      {
        return "html_inline";
      }
    }

    else
    {
      if (*(a1 + 100) > 0xC008u)
      {
        switch(v5)
        {
          case 0xC009u:
            return "link";
          case 0xC00Au:
            return "image";
          case 0xC00Cu:
            return "attribute";
        }

        return "<unknown>";
      }

      if (v5 == 49158)
      {
        return "custom_inline";
      }

      else if (v5 == 49159)
      {
        return "emph";
      }

      else
      {
        return "strong";
      }
    }
  }

  else
  {
    if (*(a1 + 100) > 0x8004u)
    {
      if (*(a1 + 100) <= 0x8007u)
      {
        if (v5 == 32773)
        {
          return "code_block";
        }

        if (v5 == 32774)
        {
          return "html_block";
        }

        return "custom_block";
      }

      switch(v5)
      {
        case 0x8008u:
          return "paragraph";
        case 0x8009u:
          return "heading";
        case 0x800Au:
          return "thematic_break";
      }

      return "<unknown>";
    }

    if (*(a1 + 100) <= 0x8001u)
    {
      if (!*(a1 + 100))
      {
        return "none";
      }

      if (v5 == 32769)
      {
        return "document";
      }

      return "<unknown>";
    }

    if (v5 == 32770)
    {
      return "block_quote";
    }

    else if (v5 == 32771)
    {
      return "list";
    }

    else
    {
      return "item";
    }
  }
}

uint64_t cmark_node_next(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t cmark_node_previous(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t cmark_node_parent(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t cmark_node_first_child(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t cmark_node_last_child(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t cmark_node_nth_child(uint64_t result, int a2)
{
  if (result)
  {
    result = *(result + 48);
    if (result && a2 >= 1)
    {
      v3 = 1;
      do
      {
        result = *(result + 24);
        if (result)
        {
          v4 = v3 < a2;
        }

        else
        {
          v4 = 0;
        }

        ++v3;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t cmark_node_parent_footnote_def(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t cmark_node_get_user_data(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t cmark_node_set_user_data(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_set_user_data_free_func(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 72) = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_set_literal(uint64_t result, char *__s)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 100);
    if ((v4 - 49153) <= 0xA && ((1 << (v4 - 1)) & 0x419) != 0)
    {
      goto LABEL_6;
    }

    if (v4 != 32773)
    {
      if (v4 != 32774)
      {
        return 0;
      }

LABEL_6:
      v6 = *result;
      if (*(result + 156))
      {
        v7 = *(result + 144);
        if (__s)
        {
LABEL_8:
          v8 = strlen(__s);
          *(v3 + 152) = v8;
          v9 = (*v6)(v8 + 1, 1);
          *(v3 + 144) = v9;
          *(v3 + 156) = 1;
          v10 = *(v3 + 152);
          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
        if (__s)
        {
          goto LABEL_8;
        }
      }

      *(result + 144) = 0;
      *(result + 152) = 0;
      if (!v7)
      {
        return 1;
      }

      goto LABEL_10;
    }

    v6 = *result;
    if (*(result + 172))
    {
      v7 = *(result + 160);
      if (__s)
      {
LABEL_21:
        v11 = strlen(__s);
        *(v3 + 168) = v11;
        v9 = (*v6)(v11 + 1, 1);
        *(v3 + 160) = v9;
        *(v3 + 172) = 1;
        v10 = *(v3 + 168);
LABEL_9:
        memcpy(v9, __s, v10 + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
        goto LABEL_21;
      }
    }

    *(result + 160) = 0;
    *(result + 168) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t cmark_node_get_heading_level(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32777)
    {
      return *(result + 144);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_heading_level(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 7) >= 0xFFFFFFFA)
  {
    if (*(a1 + 100) == 32777)
    {
      *(a1 + 144) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_type(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 144);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_type(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 3) >= 0xFFFFFFFE)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 144) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_marker(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771 && *(result + 144) == 1 && (*(result + 164) - 42) <= 3u)
    {
      return dword_2985BB610[(*(result + 164) - 42)];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_marker(uint64_t a1, int a2)
{
  v2 = 0;
  if (a1 && (a2 - 4) >= 0xFFFFFFFD)
  {
    if (*(a1 + 100) == 32771 && *(a1 + 144) == 1)
    {
      *(a1 + 164) = 0x2A2B2Du >> ((8 * a2 - 8) & 0xF8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t cmark_node_get_list_delim(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 160);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_delim(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 3) >= 0xFFFFFFFE)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 160) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_start(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 156);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_start(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 156) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_tight(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 165);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_tight(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      *(result + 165) = a2 == 1;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_item_index(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32772)
    {
      return *(result + 156);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_item_index(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 100) == 32772)
    {
      *(a1 + 156) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *cmark_node_get_fence_info(uint64_t a1)
{
  if (!a1 || *(a1 + 100) != 32773)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v4 = (**a1)(*(a1 + 152) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 144), v5);
    LODWORD(v5) = *(a1 + 152);
  }

  v2[v5] = 0;
  *(a1 + 144) = v2;
  *(a1 + 156) = 1;
  return v2;
}

uint64_t cmark_node_set_fence_info(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if (*(result + 100) == 32773)
    {
      v4 = *result;
      if (*(result + 156))
      {
        v5 = *(result + 144);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 152) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 144) = v7;
          *(v2 + 156) = 1;
          memcpy(v7, __s, *(v2 + 152) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 144) = 0;
      *(result + 152) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

uint64_t cmark_node_get_fenced(uint64_t result, _DWORD *a2, _DWORD *a3, _BYTE *a4)
{
  if (result)
  {
    if (*(result + 100) == 32773)
    {
      *a2 = *(result + 176);
      *a3 = *(result + 177);
      *a4 = *(result + 178);
      return *(result + 179);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_fenced(uint64_t a1, char a2, char a3, char a4, char a5)
{
  if (!a1 || *(a1 + 100) != 32773)
  {
    return 0;
  }

  *(a1 + 179) = a2;
  *(a1 + 176) = a3;
  *(a1 + 177) = a4;
  v5 = 1;
  *(a1 + 178) = a5;
  return v5;
}

_BYTE *cmark_node_get_url(uint64_t a1)
{
  if (!a1 || (*(a1 + 100) + 16375) > 1u)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v4 = (**a1)(*(a1 + 152) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 144), v5);
    LODWORD(v5) = *(a1 + 152);
  }

  v2[v5] = 0;
  *(a1 + 144) = v2;
  *(a1 + 156) = 1;
  return v2;
}

uint64_t cmark_node_set_url(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 100) + 16375) <= 1u)
    {
      v4 = *result;
      if (*(result + 156))
      {
        v5 = *(result + 144);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 152) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 144) = v7;
          *(v2 + 156) = 1;
          memcpy(v7, __s, *(v2 + 152) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 144) = 0;
      *(result + 152) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

_BYTE *cmark_node_get_title(uint64_t a1)
{
  if (!a1 || (*(a1 + 100) + 16375) > 1u)
  {
    return 0;
  }

  if (*(a1 + 172))
  {
    return *(a1 + 160);
  }

  v4 = (**a1)(*(a1 + 168) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 168);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 160), v5);
    LODWORD(v5) = *(a1 + 168);
  }

  v2[v5] = 0;
  *(a1 + 160) = v2;
  *(a1 + 172) = 1;
  return v2;
}

uint64_t cmark_node_set_title(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 100) + 16375) <= 1u)
    {
      v4 = *result;
      if (*(result + 172))
      {
        v5 = *(result + 160);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 168) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 160) = v7;
          *(v2 + 172) = 1;
          memcpy(v7, __s, *(v2 + 168) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 160) = 0;
      *(result + 168) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

_BYTE *cmark_node_get_attributes(uint64_t a1)
{
  if (!a1 || *(a1 + 100) != 49164)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v4 = (**a1)(*(a1 + 152) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 144), v5);
    LODWORD(v5) = *(a1 + 152);
  }

  v2[v5] = 0;
  *(a1 + 144) = v2;
  *(a1 + 156) = 1;
  return v2;
}

uint64_t cmark_node_set_attributes(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if (*(result + 100) == 49164)
    {
      v4 = *result;
      if (*(result + 156))
      {
        v5 = *(result + 144);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 152) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 144) = v7;
          *(v2 + 156) = 1;
          memcpy(v7, __s, *(v2 + 152) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 144) = 0;
      *(result + 152) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

_BYTE *cmark_node_get_on_enter(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 100);
  if (v2 != 49158 && v2 != 32775)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v5 = (**a1)(*(a1 + 152) + 1, 1);
  v4 = v5;
  v6 = *(a1 + 152);
  if (v6 >= 1)
  {
    memcpy(v5, *(a1 + 144), v6);
    LODWORD(v6) = *(a1 + 152);
  }

  v4[v6] = 0;
  *(a1 + 144) = v4;
  *(a1 + 156) = 1;
  return v4;
}

uint64_t cmark_node_set_on_enter(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 100);
    if (v3 != 49158 && v3 != 32775)
    {
      return 0;
    }

    v6 = *result;
    if (*(result + 156))
    {
      v7 = *(result + 144);
      if (__s)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
LABEL_9:
        v8 = strlen(__s);
        *(v2 + 152) = v8;
        v9 = (*v6)(v8 + 1, 1);
        *(v2 + 144) = v9;
        *(v2 + 156) = 1;
        memcpy(v9, __s, *(v2 + 152) + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    *(result + 144) = 0;
    *(result + 152) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

_BYTE *cmark_node_get_on_exit(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 100);
  if (v2 != 49158 && v2 != 32775)
  {
    return 0;
  }

  if (*(a1 + 172))
  {
    return *(a1 + 160);
  }

  v5 = (**a1)(*(a1 + 168) + 1, 1);
  v4 = v5;
  v6 = *(a1 + 168);
  if (v6 >= 1)
  {
    memcpy(v5, *(a1 + 160), v6);
    LODWORD(v6) = *(a1 + 168);
  }

  v4[v6] = 0;
  *(a1 + 160) = v4;
  *(a1 + 172) = 1;
  return v4;
}

uint64_t cmark_node_set_on_exit(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 100);
    if (v3 != 49158 && v3 != 32775)
    {
      return 0;
    }

    v6 = *result;
    if (*(result + 172))
    {
      v7 = *(result + 160);
      if (__s)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
LABEL_9:
        v8 = strlen(__s);
        *(v2 + 168) = v8;
        v9 = (*v6)(v8 + 1, 1);
        *(v2 + 160) = v9;
        *(v2 + 172) = 1;
        memcpy(v9, __s, *(v2 + 168) + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    *(result + 160) = 0;
    *(result + 168) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t cmark_node_get_syntax_extension(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t cmark_node_set_syntax_extension(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 112) = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_get_start_line(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t cmark_node_get_start_column(uint64_t result)
{
  if (result)
  {
    return *(result + 84);
  }

  return result;
}

uint64_t cmark_node_get_end_line(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t cmark_node_get_end_column(uint64_t result)
{
  if (result)
  {
    return *(result + 92);
  }

  return result;
}

void *cmark_node_unlink(void *a1)
{
  result = S_node_unlink(a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

uint64_t cmark_node_insert_before(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = S_can_contain(result, a2);
        if (result)
        {
          S_node_unlink(a2);
          v5 = *(a1 + 32);
          if (v5)
          {
            *(v5 + 24) = a2;
          }

          a2[3] = a1;
          a2[4] = v5;
          *(a1 + 32) = a2;
          v6 = *(a1 + 40);
          a2[5] = v6;
          result = 1;
          if (!v5)
          {
            if (v6)
            {
              *(v6 + 48) = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_node_insert_after(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = S_can_contain(result, a2);
        if (result)
        {
          S_node_unlink(a2);
          v5 = *(a1 + 24);
          if (v5)
          {
            *(v5 + 32) = a2;
          }

          a2[3] = v5;
          a2[4] = a1;
          *(a1 + 24) = a2;
          v6 = *(a1 + 40);
          a2[5] = v6;
          result = 1;
          if (!v5)
          {
            if (v6)
            {
              *(v6 + 56) = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_node_replace(void *a1, void *a2)
{
  result = cmark_node_insert_before(a1, a2);
  if (result)
  {
    S_node_unlink(a1);
    a1[3] = 0;
    a1[4] = 0;
    result = 1;
    a1[5] = 0;
  }

  return result;
}

BOOL cmark_node_prepend_child(void *a1, void *a2)
{
  result = S_can_contain(a1, a2);
  if (result)
  {
    S_node_unlink(a2);
    v5 = a1[6];
    a2[3] = v5;
    a2[4] = 0;
    a2[5] = a1;
    a1[6] = a2;
    if (v5)
    {
      v6 = (v5 + 32);
    }

    else
    {
      v6 = a1 + 7;
    }

    *v6 = a2;
    return 1;
  }

  return result;
}

BOOL cmark_node_append_child(void *a1, void *a2)
{
  result = S_can_contain(a1, a2);
  if (result)
  {
    S_node_unlink(a2);
    v5 = a1[7];
    a2[3] = 0;
    a2[4] = v5;
    a2[5] = a1;
    a1[7] = a2;
    if (v5)
    {
      v6 = (v5 + 24);
    }

    else
    {
      v6 = a1 + 6;
    }

    *v6 = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_check(void *a1, FILE *a2)
{
  if (a1)
  {
    v4 = 0;
    for (i = a1; ; i = *v7)
    {
      v7 = i + 6;
      v6 = i[6];
      if (v6)
      {
        if (*(v6 + 32))
        {
          S_print_error(a2, v6, "prev");
          v6 = *v7;
          *(*v7 + 32) = 0;
          v4 = (v4 + 1);
        }

        if (*(v6 + 40) != i)
        {
          S_print_error(a2, v6, "parent");
LABEL_18:
          *(*v7 + 40) = i;
          v4 = (v4 + 1);
          continue;
        }
      }

      else
      {
        if (i == a1)
        {
          return v4;
        }

        while (1)
        {
          v8 = i[3];
          if (v8)
          {
            break;
          }

          v9 = i[5];
          if (*(v9 + 56) != i)
          {
            S_print_error(a2, v9, "last_child");
            v9 = i[5];
            *(v9 + 56) = i;
            v4 = (v4 + 1);
          }

          i = v9;
          if (v9 == a1)
          {
            return v4;
          }
        }

        if (*(v8 + 32) != i)
        {
          S_print_error(a2, v8, "prev");
          v8 = i[3];
          *(v8 + 32) = i;
          v4 = (v4 + 1);
        }

        v7 = i + 3;
        if (*(v8 + 40) != i[5])
        {
          S_print_error(a2, v8, "parent");
          i = i[5];
          goto LABEL_18;
        }
      }
    }
  }

  return 0;
}

FILE *S_print_error(FILE *result, uint64_t a2, const char *a3)
{
  if (result)
  {
    v5 = result;
    type_string = cmark_node_get_type_string(a2);
    return fprintf(v5, "Invalid '%s' in node type %s at %d:%d\n", a3, type_string, *(a2 + 80), *(a2 + 84));
  }

  return result;
}

uint64_t cmark_clean_url(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = &cmark_strbuf__initbuf;
  v9[2] = 0;
  if (*(a2 + 12))
  {
    cmark_clean_url_cold_1();
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  v3 = *a2;
  do
  {
    if (!cmark_isspace(*v3))
    {
      break;
    }

    v3 = (*a2 + 1);
    *a2 = v3;
    v4 = *(a2 + 8) - 1;
    *(a2 + 8) = v4;
  }

  while (v4);
  if (*(a2 + 12))
  {
    chop_trailing_hashtags_cold_1();
  }

  v5 = *(a2 + 8);
  if (v5 >= 1)
  {
    do
    {
      v6 = cmark_isspace(*(*a2 + v5 - 1));
      v5 = *(a2 + 8);
      if (!v6)
      {
        break;
      }

      v7 = __OFSUB__(v5--, 1);
      *(a2 + 8) = v5;
    }

    while (!((v5 < 0) ^ v7 | (v5 == 0)));
  }

  if (!v5)
  {
    return 0;
  }

  houdini_unescape_html_f(v9, *a2, v5);
  cmark_strbuf_unescape(v9);
  return cmark_strbuf_detach(v9);
}

uint64_t cmark_clean_title(uint64_t a1, unsigned __int8 **a2)
{
  v7[0] = a1;
  v7[1] = &cmark_strbuf__initbuf;
  v7[2] = 0;
  v2 = *(a2 + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *v3;
  v5 = v3[v2 - 1];
  if (v4 == 39 && v5 == 39 || v4 == 40 && v5 == 41 || v4 == 34 && v5 == 34)
  {
    LODWORD(v2) = v2 - 2;
    ++v3;
  }

  houdini_unescape_html_f(v7, v3, v2);
  cmark_strbuf_unescape(v7);
  return cmark_strbuf_detach(v7);
}

uint64_t *remove_delimiter(uint64_t *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = a2[1];
    v4 = v3;
    if (!v3)
    {
      v4 = result + 7;
      if (result[7] != a2)
      {
        remove_delimiter_cold_1();
      }
    }

    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      *(v5 + 8) = v3;
    }

    v6 = *(*result + 16);

    return v6(a2);
  }

  return result;
}

uint64_t cmark_parse_reference_inline(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  memset(&v31[224], 0, 136);
  memset(v31, 0, 357);
  v26 = 0;
  v27 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v23 = 0;
  v24 = 0;
  v28 = a1;
  v29 = *a2;
  v30 = xmmword_2985BB620;
  *v31 = 0;
  v31[357] = 1;
  v4 = link_label(&v28, &v26, 0);
  result = 0;
  if (v4 && v27)
  {
    if (SDWORD2(v30) >= SDWORD2(v29))
    {
      return 0;
    }

    if (*(v29 + SDWORD2(v30)) != 58)
    {
      if (!*(v29 + SDWORD2(v30)))
      {
        cmark_parse_inlines_cold_1();
      }

      return 0;
    }

    ++DWORD2(v30);
    spnl(&v28);
    v6 = manual_scan_link_url(&v29, SDWORD2(v30), v25);
    if (v6 < 0)
    {
      return 0;
    }

    DWORD2(v30) += v6;
    v7 = DWORD2(v30);
    spnl(&v28);
    if (DWORD2(v30) == v7 || (v8 = _scan_at(_scan_link_title, &v29, SDWORD2(v30))) == 0)
    {
      DWORD2(v30) = v7;
      v23 = &unk_2985BB8EE;
      v24 = 0;
      v9 = 1;
      v10 = v7;
    }

    else
    {
      v9 = 0;
      v23 = (v29 + SDWORD2(v30));
      v24 = v8;
      v10 = DWORD2(v30) + v8;
      DWORD2(v30) += v8;
    }

    if (v10 < SDWORD2(v29))
    {
      v11 = (v29 + v10);
      while (1)
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 != 32 && v12 != 9)
        {
          break;
        }

        DWORD2(v30) = ++v10;
        if (DWORD2(v29) == v10)
        {
          goto LABEL_61;
        }
      }

      if (!v12)
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (v10 < SDWORD2(v29))
    {
      if (*(v29 + v10) == 13)
      {
        DWORD2(v30) = ++v10;
        v15 = 1;
LABEL_27:
        if (v10 < SDWORD2(v29))
        {
          if (*(v29 + v10) == 10)
          {
            goto LABEL_60;
          }

          if (!*(v29 + v10))
          {
            cmark_parse_inlines_cold_1();
          }
        }

        if (v10 >= SDWORD2(v29))
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          goto LABEL_61;
        }

        if ((v9 & 1) == 0)
        {
          DWORD2(v30) = v7;
          if (v7 < SDWORD2(v29))
          {
            v17 = (v29 + v7);
            while (1)
            {
              v19 = *v17++;
              v18 = v19;
              if (v19 != 32 && v18 != 9)
              {
                break;
              }

              DWORD2(v30) = ++v7;
              if (DWORD2(v29) == v7)
              {
                goto LABEL_61;
              }
            }

            if (!v18)
            {
              cmark_parse_inlines_cold_1();
            }
          }

          if (v7 < SDWORD2(v29))
          {
            if (*(v29 + v7) == 13)
            {
              DWORD2(v30) = ++v7;
              v21 = 1;
              goto LABEL_50;
            }

            if (!*(v29 + v7))
            {
              cmark_parse_inlines_cold_1();
            }
          }

          v21 = 0;
LABEL_50:
          if (v7 >= SDWORD2(v29))
          {
            goto LABEL_53;
          }

          if (*(v29 + v7) != 10)
          {
            if (!*(v29 + v7))
            {
              cmark_parse_inlines_cold_1();
            }

LABEL_53:
            if (v7 >= SDWORD2(v29))
            {
              v22 = 1;
            }

            else
            {
              v22 = v21;
            }

            if ((v22 & 1) == 0)
            {
              return 0;
            }

LABEL_61:
            cmark_reference_create(a3, &v26, v25, &v23);
            return DWORD2(v30);
          }

          v10 = v7;
LABEL_60:
          DWORD2(v30) = v10 + 1;
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(v29 + v10))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    v15 = 0;
    goto LABEL_27;
  }

  return result;
}

uint64_t link_label(uint64_t a1, int *a2, int a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v6;
  if (a3)
  {
    if (v6 >= v7)
    {
      return 0;
    }

    if (*(*(a1 + 8) + v6) != 94)
    {
      if (!*(*(a1 + 8) + v6))
      {
        cmark_parse_inlines_cold_1();
      }

      return 0;
    }

    v8 = v6 + 1;
    *(a1 + 32) = v6 + 1;
  }

  if (v8 >= v7)
  {
    return 0;
  }

  if (*(*(a1 + 8) + v8) != 91)
  {
    if (!*(*(a1 + 8) + v8))
    {
      cmark_parse_inlines_cold_1();
    }

    return 0;
  }

  v10 = 0;
  *(a1 + 32) = v8 + 1;
  while (1)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 16);
    if (v11 >= v12)
    {
LABEL_30:
      result = 0;
      goto LABEL_43;
    }

    v13 = v11;
    v14 = *(a1 + 8);
    v15 = *(v14 + v11);
    v16 = 1;
    if (v15 <= 0x5B)
    {
      if (v15 == 91)
      {
        goto LABEL_30;
      }

      if (!*(v14 + v11))
      {
        cmark_parse_inlines_cold_1();
      }

      goto LABEL_26;
    }

    if (v15 != 92)
    {
      break;
    }

    *(a1 + 32) = v11 + 1;
    if (v11 + 1 >= v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v14 + v11 + 1);
      if (!*(v14 + v13 + 1))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (!cmark_ispunct(v17))
    {
      ++v10;
      goto LABEL_27;
    }

    v11 = *(a1 + 32);
    v16 = 2;
LABEL_26:
    *(a1 + 32) = v11 + 1;
    v10 += v16;
LABEL_27:
    if (v10 > 1000)
    {
      goto LABEL_30;
    }
  }

  if (v15 != 93)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v6 + v18;
  v21 = (v11 - v19);
  v20 = v11 == v19;
  v22 = (v14 + v19);
  *a2 = v22;
  *(a2 + 1) = v21;
  if (!v20)
  {
    do
    {
      if (!cmark_isspace(*v22))
      {
        break;
      }

      v22 = (*a2 + 1);
      *a2 = v22;
      v23 = a2[2] - 1;
      a2[2] = v23;
    }

    while (v23);
    if (a2[3])
    {
      chop_trailing_hashtags_cold_1();
    }

    v24 = a2[2];
    if (v24 >= 1)
    {
      do
      {
        if (!cmark_isspace(*(*a2 + v24 - 1)))
        {
          break;
        }

        v25 = a2[2];
        v26 = __OFSUB__(v25, 1);
        v24 = v25 - 1;
        a2[2] = v24;
      }

      while (!((v24 < 0) ^ v26 | (v24 == 0)));
    }
  }

  v6 = *(a1 + 32) + 1;
  result = 1;
LABEL_43:
  *(a1 + 32) = v6;
  return result;
}

uint64_t spnl(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 32);
  if (v2 < v1)
  {
    v3 = (*(result + 8) + v2);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 != 32 && v4 != 9)
      {
        break;
      }

      *(result + 32) = ++v2;
      if (v1 == v2)
      {
        return result;
      }
    }

    if (!v4)
    {
      cmark_parse_inlines_cold_1();
    }
  }

  if (v2 >= v1)
  {
    goto LABEL_14;
  }

  if (*(*(result + 8) + v2) != 13)
  {
    if (!*(*(result + 8) + v2))
    {
      cmark_parse_inlines_cold_1();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_16;
  }

  *(result + 32) = ++v2;
  v7 = 1;
LABEL_16:
  if (v2 >= v1)
  {
    goto LABEL_19;
  }

  if (*(*(result + 8) + v2) != 10)
  {
    if (!*(*(result + 8) + v2))
    {
      cmark_parse_inlines_cold_1();
    }

LABEL_19:
    if (((v2 < v1) & ~v7) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  *(result + 32) = ++v2;
LABEL_22:
  v8 = __OFSUB__(v1, v2);
  v9 = v1 - v2;
  if (!((v9 < 0) ^ v8 | (v9 == 0)))
  {
    v10 = v2 + 1;
    v11 = (*(result + 8) + v2);
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 != 32 && v12 != 9)
      {
        break;
      }

      *(result + 32) = v10++;
      if (!--v9)
      {
        return result;
      }
    }

    if (!v12)
    {
      cmark_parse_inlines_cold_1();
    }
  }

  return result;
}

uint64_t manual_scan_link_url(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  if (v6 <= a2)
  {
    goto LABEL_30;
  }

  v8 = (*a1 + a2);
  if (*v8 != 60)
  {
    v12 = 0;
    v7 = a2;
    while (1)
    {
      v13 = *(*a1 + v7);
      if (v13 != 92)
      {
        goto LABEL_20;
      }

      v14 = v7 + 1;
      if (v14 >= v6)
      {
        break;
      }

      if (!cmark_ispunct(*(*a1 + v14)))
      {
        v13 = *(*a1 + v7);
LABEL_20:
        if (v13 == 41)
        {
          if (!v12)
          {
            goto LABEL_30;
          }

          --v12;
          goto LABEL_28;
        }

        if (v13 == 40)
        {
          if (++v12 > 0x20)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          ++v7;
          goto LABEL_29;
        }

LABEL_24:
        if (cmark_isspace(v13))
        {
          if (v7 == a2)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_30:
          if (v7 < *(a1 + 8))
          {
            v15 = (*a1 + a2);
            v16 = v7 - a2;
            result = (v7 - a2);
            goto LABEL_37;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_28;
      }

      v7 += 2;
LABEL_29:
      v6 = *(a1 + 8);
      if (v7 >= v6)
      {
        goto LABEL_30;
      }
    }

    LOBYTE(v13) = 92;
    goto LABEL_24;
  }

  for (i = a2 + 1; i < v6; i += v11)
  {
    v10 = *(*a1 + i);
    if (v10 <= 0x5B)
    {
      if (v10 == 10 || v10 == 60)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10 == 62)
      {
        ++i;
        break;
      }
    }

    else if (v10 == 92)
    {
      v11 = 2;
      continue;
    }

    v11 = 1;
  }

  if (i >= v6)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v8 + 1;
  result = (i - a2);
  v16 = result - 2;
LABEL_37:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 12) = 0;
  return result;
}

uint64_t cmark_parse_reference_attributes_inline(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  memset(&v22[224], 0, 136);
  memset(v22, 0, 357);
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v19 = a1;
  v20 = *a2;
  v21 = xmmword_2985BB620;
  *v22 = 0;
  v22[357] = 1;
  v4 = 0;
  if (link_label(&v19, &v17, 1) && v18)
  {
    if (SDWORD2(v21) >= SDWORD2(v20))
    {
      return 0;
    }

    if (*(v20 + SDWORD2(v21)) != 58)
    {
      if (!*(v20 + SDWORD2(v21)))
      {
        cmark_parse_inlines_cold_1();
      }

      return 0;
    }

    ++DWORD2(v21);
    spnl(&v19);
    if (SDWORD2(v20) <= SDWORD2(v21))
    {
      return 0;
    }

    v5 = 0;
    v6 = v20;
    v7 = SDWORD2(v21) << 32;
    v4 = SDWORD2(v21);
    while (1)
    {
      v8 = *(v20 + v4);
      if (v8 == 10 || v8 == 13)
      {
        break;
      }

      if (!*(v20 + v4))
      {
        cmark_parse_inlines_cold_1();
      }

      ++v4;
      v7 += 0x100000000;
      --v5;
      if (DWORD2(v20) == v4)
      {
        v6 = v20;
        v15 = v20 + SDWORD2(v21);
        v16 = (DWORD2(v20) - DWORD2(v21));
        goto LABEL_26;
      }
    }

    if (!v5)
    {
      return 0;
    }

    v15 = v20 + SDWORD2(v21);
    v16 = -v5;
    v4 = v7 >> 32;
    while (1)
    {
      v10 = *(v20 + v4);
      if (v10 != 32 && v10 != 9)
      {
        break;
      }

      if (DWORD2(v20) == ++v4)
      {
        v4 = DWORD2(v20);
        goto LABEL_26;
      }
    }

    if (!*(v20 + v4))
    {
      cmark_parse_inlines_cold_1();
    }

LABEL_26:
    if (v4 < SDWORD2(v20))
    {
      if (*(v6 + v4) == 13)
      {
        v4 = (v4 + 1);
        v12 = 1;
LABEL_31:
        if (v4 < SDWORD2(v20))
        {
          v13 = *(v6 + v4);
          if (v13 == 10)
          {
            v4 = (v4 + 1);
            goto LABEL_38;
          }

          if (!v13)
          {
            cmark_parse_inlines_cold_1();
          }
        }

        if (((v4 < SDWORD2(v20)) & ~v12) != 0)
        {
          return 0;
        }

LABEL_38:
        cmark_reference_create_attributes(a3, &v17, &v15);
        return v4;
      }

      if (!*(v6 + v4))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    v12 = 0;
    goto LABEL_31;
  }

  return v4;
}

uint64_t cmark_inline_parser_peek_char(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= *(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  result = *(v2 + v1);
  if (!*(v2 + v1))
  {
    cmark_parse_inlines_cold_1();
  }

  return result;
}

_BYTE *cmark_inline_parser_take_while (uint64_t a1, unsigned int (*a2)(void))
{
  v3 = *(a1 + 32);
  if (v3 >= *(a1 + 16))
  {
    v5 = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = *(a1 + 32);
    do
    {
      if (!*(*(a1 + 8) + v6))
      {
        cmark_parse_inlines_cold_1();
      }

      if (!a2())
      {
        break;
      }

      v6 = *(a1 + 32) + 1;
      *(a1 + 32) = v6;
      LODWORD(v5) = v5 + 1;
    }

    while (v6 < *(a1 + 16));
    v5 = v5;
  }

  v7 = v3;
  v8 = *(a1 + 8);
  v9 = strlen((v8 + v7));
  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  result = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
  if (result)
  {
    result[v10] = 0;

    return memcpy(result, (v8 + v7), v10);
  }

  return result;
}

uint64_t cmark_inline_parser_push_delimiter(uint64_t a1, char a2, int a3, int a4, uint64_t a5)
{
  v8 = a3 != 0;
  v9 = a4 != 0;
  result = (**a1)(1, 48);
  *(result + 32) = a2;
  *(result + 36) = v8;
  *(result + 40) = v9;
  *(result + 16) = a5;
  *(result + 24) = *(a1 + 32);
  *(result + 28) = *(a5 + 152);
  v11 = *(a1 + 56);
  *result = v11;
  *(result + 8) = 0;
  if (v11)
  {
    *(v11 + 8) = result;
  }

  *(a1 + 56) = result;
  return result;
}

uint64_t cmark_inline_parser_scan_delimiters(uint64_t a1, int a2, int a3, _BOOL4 *a4, _BOOL4 *a5, _DWORD *a6, _DWORD *a7)
{
  v32 = 0;
  v14 = *(a1 + 32);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v16 = *(a1 + 8);
  do
  {
    v17 = v14 - 1;
    ++v15;
    if (v14 < 2)
    {
      break;
    }

    v18 = *(v16 + v14-- - 1) & 0xC0;
  }

  while (v18 == 128);
  if (cmark_utf8proc_iterate((v16 + v17), v15, &v32) == -1)
  {
LABEL_6:
    LODWORD(v32) = 10;
  }

  v19 = 0;
  v20 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = v21 << 32;
  for (i = v21; ; ++i)
  {
    if (i >= v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(*(a1 + 8) + i);
      if (!*(*(a1 + 8) + i))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (v24 != a3 || v19 >= a2)
    {
      break;
    }

    v25 = v21 + 1 + v19;
    v19 = (v19 + 1);
    *(a1 + 32) = v25;
    v22 += 0x100000000;
  }

  if (cmark_utf8proc_iterate((*(a1 + 8) + (v22 >> 32)), v20 - v21 - v19, &v32 + 1) == -1)
  {
    HIDWORD(v32) = 10;
  }

  *a6 = cmark_utf8proc_is_punctuation(v32);
  *a7 = cmark_utf8proc_is_punctuation(SHIDWORD(v32));
  is_space = cmark_utf8proc_is_space(v32);
  v27 = cmark_utf8proc_is_space(HIDWORD(v32));
  if (v19)
  {
    v28 = v27;
    if (cmark_utf8proc_is_space(HIDWORD(v32)))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (*a7 && !is_space)
      {
        v29 = *a6 != 0;
      }
    }

    *a4 = v29;
    if (cmark_utf8proc_is_space(v32))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
      if (*a6 && !v28)
      {
        v30 = *a7 != 0;
      }
    }
  }

  else
  {
    v30 = 0;
    *a4 = 0;
  }

  *a5 = v30;
  return v19;
}

uint64_t cmark_node_unput(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = *(result + 56);
    if (v2)
    {
      do
      {
        if (*(v2 + 100) != 49153)
        {
          break;
        }

        v3 = *(v2 + 152);
        v5 = v3 - a2;
        v4 = v3 < a2;
        a2 -= v3;
        v6 = v4 ? 0 : v5;
        *(v2 + 152) = v6;
        v2 = *(v2 + 32);
        v7 = !v4 || a2 < 1;
      }

      while (!v7 && v2 != 0);
    }
  }

  return result;
}

uint64_t make_literal(uint64_t a1, __int16 a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = (**a1)(1, 184);
  cmark_strbuf_init(*a1, v12, 0);
  *(v12 + 100) = a2;
  *(v12 + 144) = a5;
  *(v12 + 152) = a6;
  v13 = *(a1 + 28);
  v14 = *(a1 + 36);
  v15 = *(a1 + 40) + 1;
  *(v12 + 80) = v13;
  *(v12 + 84) = v15 + a3 + v14;
  *(v12 + 88) = v13;
  *(v12 + 92) = v15 + a4 + v14;
  return v12;
}

uint64_t adjust_subj_node_newlines(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if ((a5 & 2) != 0 && a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(result + 32);
    v8 = (*(result + 8) + v7 - (a4 + a3));
    do
    {
      v9 = *v8++;
      if (v9 == 10)
      {
        ++v6;
        v5 = 0;
      }

      else
      {
        ++v5;
      }

      --a3;
    }

    while (a3);
    if (v6)
    {
      *(result + 28) += v6;
      *(a2 + 88) += v6;
      *(a2 + 92) = v5;
      *(result + 40) = a4 - v7 + v5;
    }
  }

  return result;
}

uint64_t make_autolink(uint64_t a1, int a2, int a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v12 = *a1;
  v13 = (**a1)(1, 184);
  cmark_strbuf_init(v12, v13, 0);
  *(v13 + 100) = -16375;
  v31 = *a1;
  v32 = &cmark_strbuf__initbuf;
  v33 = 0;
  if (HIDWORD(a5))
  {
    cmark_clean_url_cold_1();
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  while (cmark_isspace(*a4))
  {
    ++a4;
    LODWORD(a5) = a5 - 1;
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (a5 >= 1)
  {
    v14 = a5 - 1;
    while (cmark_isspace(a4[v14]))
    {
      --v14;
      v15 = __OFSUB__(a5, 1);
      LODWORD(a5) = a5 - 1;
      if (((a5 & 0x80000000) != 0) ^ v15 | (a5 == 0))
      {
        LODWORD(a5) = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_16:
    v18 = 0;
    v17 = 0;
    goto LABEL_17;
  }

LABEL_13:
  if (a6)
  {
    cmark_strbuf_puts(&v31, "mailto:");
  }

  houdini_unescape_html_f(&v31, a4, a5);
  v16 = HIDWORD(v33);
  v17 = cmark_strbuf_detach(&v31);
  v18 = v16 | 0x100000000;
LABEL_17:
  *(v13 + 144) = v17;
  *(v13 + 152) = v18;
  *(v13 + 160) = &unk_2985BB8EE;
  *(v13 + 168) = 0;
  v19 = *(a1 + 28);
  *(v13 + 88) = v19;
  *(v13 + 80) = v19;
  v20 = a2 + 1;
  v22 = *(a1 + 36);
  v21 = *(a1 + 40);
  *(v13 + 84) = v22 + v21 + v20;
  *(v13 + 92) = a3 + v21 + v22 + 1;
  v31 = *a1;
  v32 = &cmark_strbuf__initbuf;
  v33 = 0;
  if (houdini_unescape_html(&v31, a4, a5))
  {
    v23 = HIDWORD(v33);
    a4 = cmark_strbuf_detach(&v31);
    v24 = v23 | 0x100000000;
  }

  else
  {
    v24 = a5;
  }

  v25 = (**a1)(1, 184);
  cmark_strbuf_init(*a1, v25, 0);
  *(v25 + 152) = v24;
  v26 = *(a1 + 40) + *(a1 + 36) + 1;
  *(v25 + 100) = -16383;
  *(v25 + 144) = a4;
  v27 = *(a1 + 28);
  *(v25 + 80) = v27;
  *(v25 + 84) = v26 + v20;
  *(v25 + 88) = v27;
  *(v25 + 92) = a3 + v26 - 1;
  v28 = *(v13 + 56);
  *(v25 + 24) = 0;
  *(v25 + 32) = v28;
  *(v25 + 40) = v13;
  *(v13 + 56) = v25;
  if (v28)
  {
    v29 = (v28 + 24);
  }

  else
  {
    v29 = (v13 + 48);
  }

  *v29 = v25;
  return v13;
}

_BYTE *chunk_clone(uint64_t (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = (*a1)(v3 + 1, 1);
  v5 = v4;
  if (v3)
  {
    memcpy(v4, *a2, v3);
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v5[v6] = 0;
  return v5;
}

uint64_t cmark_render_xml_with_mem(uint64_t a1, char a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  v36[0] = a3;
  v36[1] = &cmark_strbuf__initbuf;
  v36[2] = 0;
  v4 = cmark_iter_new(a1);
  cmark_strbuf_puts(v36, "<?xml version=1.0 encoding=UTF-8?>\n");
  cmark_strbuf_puts(v36, "<!DOCTYPE document SYSTEM CommonMark.dtd>\n");
  v5 = cmark_iter_next(v4);
  if (v5 != 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      node = cmark_iter_get_node(v4);
      v9 = node;
      if (v6 == 2)
      {
        break;
      }

      if (*(node + 48))
      {
        v23 = v7 - 3;
        if (v7 >= 3)
        {
          if (v23 >= 0x27)
          {
            v23 = 39;
          }

          v24 = v23 + 1;
          do
          {
            cmark_strbuf_putc(v36, 32);
            --v24;
          }

          while (v24);
        }

        v7 -= 2;
        cmark_strbuf_puts(v36, "</");
        type_string = cmark_node_get_type_string(v9);
LABEL_61:
        cmark_strbuf_puts(v36, type_string);
LABEL_62:
        cmark_strbuf_puts(v36, ">\n");
      }

      v6 = cmark_iter_next(v4);
      if (v6 == 1)
      {
        goto LABEL_64;
      }
    }

    v10 = v7 - 1;
    if (v7 >= 1)
    {
      if (v10 >= 0x27)
      {
        v10 = 39;
      }

      v11 = v10 + 1;
      do
      {
        cmark_strbuf_putc(v36, 32);
        --v11;
      }

      while (v11);
    }

    cmark_strbuf_putc(v36, 60);
    v12 = cmark_node_get_type_string(v9);
    cmark_strbuf_puts(v36, v12);
    if ((a2 & 2) != 0)
    {
      v13 = *(v9 + 80);
      if (v13)
      {
        snprintf(__str, 0x64uLL, " sourcepos=%d:%d-%d:%d", v13, *(v9 + 84), *(v9 + 88), *(v9 + 92));
        cmark_strbuf_puts(v36, __str);
      }
    }

    v14 = *(v9 + 112);
    if (v14)
    {
      v15 = *(v14 + 120);
      if (v15)
      {
        v16 = v15();
        if (v16)
        {
          cmark_strbuf_puts(v36, v16);
        }
      }
    }

    v17 = 0;
    v18 = *(v9 + 100);
    if (v18 <= 0x8006)
    {
      if (*(v9 + 100) <= 0x8004u)
      {
        if (v18 == 32769)
        {
          v30 = " xmlns=http://commonmark.org/xml/1.0";
LABEL_55:
          cmark_strbuf_puts(v36, v30);
          goto LABEL_56;
        }

        if (v18 != 32771)
        {
          goto LABEL_57;
        }

        list_type = cmark_node_get_list_type(v9);
        if (list_type == 1)
        {
          v22 = " type=bullet";
        }

        else
        {
          if (list_type != 2)
          {
            goto LABEL_53;
          }

          cmark_strbuf_puts(v36, " type=ordered");
          list_start = cmark_node_get_list_start(v9);
          snprintf(__str, 0x64uLL, " start=%d", list_start);
          cmark_strbuf_puts(v36, __str);
          list_delim = cmark_node_get_list_delim(v9);
          if (list_delim == 2)
          {
            v22 = " delim=paren";
            goto LABEL_52;
          }

          if (list_delim != 1)
          {
LABEL_53:
            cmark_node_get_list_tight(v9);
            snprintf(__str, 0x64uLL, " tight=%s");
LABEL_54:
            v30 = __str;
            goto LABEL_55;
          }

          v22 = " delim=period";
        }

LABEL_52:
        cmark_strbuf_puts(v36, v22);
        goto LABEL_53;
      }

      if (v18 == 32773)
      {
        if (*(v9 + 152) >= 1)
        {
          cmark_strbuf_puts(v36, " info=");
          houdini_escape_html0(v36, *(v9 + 144), *(v9 + 152), 0);
          cmark_strbuf_putc(v36, 34);
        }

        cmark_strbuf_puts(v36, " xml:space=preserve>");
        v28 = *(v9 + 160);
        v29 = *(v9 + 168);
        goto LABEL_43;
      }

      if (v18 != 32774)
      {
        goto LABEL_57;
      }

LABEL_38:
      cmark_strbuf_puts(v36, " xml:space=preserve>");
      v28 = *(v9 + 144);
      v29 = *(v9 + 152);
LABEL_43:
      houdini_escape_html0(v36, v28, v29, 0);
      cmark_strbuf_puts(v36, "</");
      v31 = cmark_node_get_type_string(v9);
      cmark_strbuf_puts(v36, v31);
      v17 = 1;
      goto LABEL_57;
    }

    v26 = v18 - 1;
    if (v18 - 49153 > 9)
    {
      goto LABEL_45;
    }

    if (((1 << v26) & 0x19) != 0)
    {
      goto LABEL_38;
    }

    if (((1 << v26) & 0x300) != 0)
    {
      cmark_strbuf_puts(v36, " destination=");
      houdini_escape_html0(v36, *(v9 + 144), *(v9 + 152), 0);
      cmark_strbuf_putc(v36, 34);
      v27 = " title=";
LABEL_49:
      cmark_strbuf_puts(v36, v27);
      houdini_escape_html0(v36, *(v9 + 160), *(v9 + 168), 0);
      cmark_strbuf_putc(v36, 34);
LABEL_56:
      v17 = 0;
LABEL_57:
      if (*(v9 + 48))
      {
        v7 += 2;
      }

      else if ((v17 & 1) == 0)
      {
        type_string = " /";
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    if (v18 != 49158)
    {
LABEL_45:
      if (v18 != 32775)
      {
        if (v18 != 32777)
        {
          goto LABEL_57;
        }

        v32 = *(v9 + 144);
        snprintf(__str, 0x64uLL, " level=%d");
        goto LABEL_54;
      }
    }

    cmark_strbuf_puts(v36, " on_enter=");
    houdini_escape_html0(v36, *(v9 + 144), *(v9 + 152), 0);
    cmark_strbuf_putc(v36, 34);
    v27 = " on_exit=";
    goto LABEL_49;
  }

LABEL_64:
  v33 = cmark_strbuf_detach(v36);
  cmark_iter_free(v4);
  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

uint64_t houdini_escape_href(_DWORD *a1, uint64_t a2, int a3)
{
  LOBYTE(var3) = 37;
  if (a3 >= 1)
  {
    houdini_escape_href_cold_1(&var3, a3, a2, a1);
  }

  return 1;
}

uint64_t houdini_unescape_ent(_DWORD *a1, char *__s1, int a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v5 = a1;
  if (*__s1 != 35)
  {
    if (a3 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = a3;
    }

    v14 = 2;
    while (1)
    {
      v15 = __s1[v14];
      if (v15 == 32)
      {
        break;
      }

      if (v15 == 59)
      {
        v18 = 0;
        v19 = 2124;
        v20 = 1062;
        while (1)
        {
          v21 = &(&cmark_entities)[2 * v20];
          v22 = *v21;
          v23 = strncmp(__s1, *v21, v14);
          v24 = v23;
          if (!v23 && !v22[v14])
          {
            break;
          }

          if (v20 <= v18 || v23 > 0)
          {
            result = 0;
            v25 = v19 - v20;
            if (v19 <= v20 || v24 < 1)
            {
              return result;
            }

            v18 = v20 + 1;
            if ((v25 + 1) >= 3)
            {
              v20 += v25 / 2;
            }

            else
            {
              v20 += v25 / 2 + 1;
            }
          }

          else
          {
            v19 = v20 - 1;
            v20 = (__PAIR64__(v20 - (v20 - v18) / 2, v20 - v18 + 1) - 3) >> 32;
          }
        }

        cmark_strbuf_puts(v5, v21 + 8);
        return (v14 + 1);
      }

      if (v13 == ++v14)
      {
        return 0;
      }
    }

    return 0;
  }

  v6 = __s1[1];
  if ((v6 - 48) > 9)
  {
    if ((v6 | 0x20) != 0x78)
    {
      return 0;
    }

    v7 = 0;
    v16 = 2;
    while (1)
    {
      v17 = __s1[v16];
      if (!memchr("0123456789ABCDEFabcdef", v17, 0x17uLL))
      {
        break;
      }

      if ((16 * v7 + (v17 | 0x20u) % 0x27 - 9) >= 1114112)
      {
        v7 = 1114112;
      }

      else
      {
        v7 = 16 * v7 + (v17 | 0x20u) % 0x27 - 9;
      }

      if (a3 == ++v16)
      {
        LODWORD(v8) = a3;
        goto LABEL_42;
      }
    }

    LODWORD(v8) = v16;
LABEL_42:
    v11 = v8 - 2;
    v5 = a1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = __s1[v8];
      if ((v9 - 48) > 9)
      {
        break;
      }

      v10 = v9 + 10 * v7 - 48;
      if (v10 >= 1114112)
      {
        v7 = 1114112;
      }

      else
      {
        v7 = v10;
      }

      if (a3 == ++v8)
      {
        LODWORD(v8) = a3;
        break;
      }
    }

    v11 = v8 - 1;
  }

  result = 0;
  if (v8 >= a3 || (v11 - 1) > 7)
  {
    return result;
  }

  if (__s1[v8] != 59)
  {
    return 0;
  }

  if (!v7 || v7 >= 1114112 || (v7 & 0xFFFFF800) == 0xD800)
  {
    v7 = 65533;
  }

  cmark_utf8proc_encode_char(v7, v5);
  return (v8 + 1);
}

uint64_t houdini_unescape_html(_DWORD *a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = a3;
  while (1)
  {
    v8 = v6;
    if (a3 <= v6 + 1)
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = a3;
    }

    v6 = v6;
    while (1)
    {
      v10 = *(a2 + v6);
      if (v10 == 38)
      {
        break;
      }

      if (++v6 >= v7)
      {
        goto LABEL_11;
      }
    }

    v9 = v6;
LABEL_11:
    if (v9 <= v8)
    {
      goto LABEL_14;
    }

    if (!v8)
    {
      break;
    }

LABEL_13:
    cmark_strbuf_put(a1, (a2 + v8), v9 - v8);
LABEL_14:
    if (v10 == 38)
    {
      v11 = v9 + 1;
      v12 = houdini_unescape_ent(a1, (a2 + v11), a3 - v11);
      if (!v12)
      {
        cmark_strbuf_putc(a1, 38);
      }

      LODWORD(v6) = v12 + v11;
      if (v12 + v11 < a3)
      {
        continue;
      }
    }

    return 1;
  }

  if (v10 == 38)
  {
    cmark_strbuf_grow(a1, a3);
    goto LABEL_13;
  }

  return 0;
}

_DWORD *houdini_unescape_html_f(_DWORD *a1, const void *a2, int a3)
{
  result = houdini_unescape_html(a1, a2, a3);
  if (!result)
  {

    return cmark_strbuf_put(a1, a2, a3);
  }

  return result;
}

uint64_t cmark_render_plaintext(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(v5, a1, a2, a3, outc_1, S_render_node_2);
}

uint64_t cmark_render_plaintext_with_mem(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(a4, a1, a2, a3, outc_1, S_render_node_2);
}

uint64_t S_render_node_2(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 28);
  v8 = (a4 & 4) == 0;
  if (v7 < 1)
  {
    v8 = 0;
  }

  v9 = (a4 & 0x10) == 0 && v8;
  if (a3 == 2)
  {
    v10 = *(a2 + 40);
    if (v10 && *(v10 + 100) == 32772)
    {
      v11 = *(*(v10 + 40) + 165);
LABEL_16:
      *(a1 + 43) = v11;
    }
  }

  else if (*(a2 + 100) == 32771)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      if (*(v12 + 100) == 32772)
      {
        LOBYTE(v12) = *(*(v12 + 40) + 165);
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    v11 = v12 & 1;
    goto LABEL_16;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    v14 = *(v13 + 104);
    if (v14)
    {
      v14();
      goto LABEL_80;
    }
  }

  v15 = *(a2 + 100);
  if (v15 > 0xC001)
  {
    if (*(a2 + 100) > 0xC004u)
    {
      if (v15 - 49157 < 6)
      {
        goto LABEL_80;
      }

      if (v15 == 49163)
      {
        if (a3 == 2)
        {
          (*(a1 + 72))(a1, a2, "[^", 0, 0);
          v29 = *(a1 + 72);
          v30 = cmark_chunk_to_cstr(*a1, (a2 + 144));
          v29(a1, a2, v30, 0, 0);
          (*(a1 + 72))(a1, a2, "]", 0, 0);
        }
      }

      else
      {
        if (v15 != 49164)
        {
          goto LABEL_92;
        }

        v18 = *(a1 + 72);
        if (*(a2 + 156))
        {
          v19 = *(a2 + 144);
        }

        else
        {
          v39 = (**a1)(*(a2 + 152) + 1, 1);
          v19 = v39;
          v40 = *(a2 + 152);
          if (v40 >= 1)
          {
            memcpy(v39, *(a2 + 144), v40);
            LODWORD(v40) = *(a2 + 152);
          }

          v19[v40] = 0;
          *(a2 + 144) = v19;
          *(a2 + 156) = 1;
        }

        v18(a1, a2, v19, 0, 0);
      }

      goto LABEL_80;
    }

    if (v15 == 49154)
    {
      if (a4 & 4) == 0 && (v7 | a4 & 0x10 || (*(a1 + 42)))
      {
        (*(a1 + 72))(a1, a2, " ", v9, 0);
        goto LABEL_80;
      }

      goto LABEL_76;
    }

    if (v15 == 49155)
    {
      goto LABEL_76;
    }

    if (v15 != 49156)
    {
      goto LABEL_92;
    }

    v20 = *(a1 + 72);
    literal = cmark_node_get_literal(a2);
    v22 = a1;
    v23 = a2;
    v24 = v9;
    v25 = 0;
LABEL_44:
    v20(v22, v23, literal, v24, v25);
    goto LABEL_80;
  }

  if (*(a2 + 100) > 0x8007u)
  {
    if (*(a2 + 100) <= 0x8009u)
    {
      if (v15 == 32776)
      {
        if (a3 == 2)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (a3 == 2)
        {
          *(a1 + 41) = 257;
          goto LABEL_80;
        }

        *(a1 + 42) = 0;
      }
    }

    else if (v15 != 32778)
    {
      if (v15 == 32779)
      {
        if (a3 == 2)
        {
          ++*(a1 + 80);
          (*(a1 + 72))(a1, a2, "[^", 0, 0);
          snprintf(__str, 0x20uLL, "%d", *(a1 + 80));
          (*(a1 + 72))(a1, a2, __str, 0, 0);
          (*(a1 + 72))(a1, a2, "]: ", 0, 0);
          cmark_strbuf_puts(*(a1 + 16), "    ");
        }

        else
        {
          cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - 4);
        }

        goto LABEL_80;
      }

      if (v15 != 49153)
      {
        goto LABEL_92;
      }

      v20 = *(a1 + 72);
      literal = cmark_node_get_literal(a2);
      v22 = a1;
      v23 = a2;
      v24 = v9;
      v25 = 1;
      goto LABEL_44;
    }

LABEL_79:
    (*(a1 + 64))(a1);
    goto LABEL_80;
  }

  if (*(a2 + 100) > 0x8003u)
  {
    if (v15 - 32774 < 2)
    {
      goto LABEL_80;
    }

    if (v15 != 32772)
    {
      if (v15 == 32773)
      {
        if (*(a2 + 32) || (v38 = *(a2 + 40)) == 0 || *(v38 + 100) != 32772)
        {
          (*(a1 + 64))(a1);
        }

        v16 = *(a1 + 72);
        v17 = cmark_node_get_literal(a2);
        v16(a1, a2, v17, 0, 0);
        goto LABEL_79;
      }

LABEL_92:
      S_render_node_cold_1_2();
    }

    if (cmark_node_get_list_type(*(a2 + 40)) == 1)
    {
      v28 = 4;
    }

    else
    {
      item_index = cmark_node_get_item_index(a2);
      list_delim = cmark_node_get_list_delim(*(a2 + 40));
      v33 = ".";
      if (list_delim == 2)
      {
        v33 = ")";
      }

      v34 = " ";
      if (item_index < 10)
      {
        v34 = "  ";
      }

      snprintf(__str, 0x14uLL, "%d%s%s", item_index, v33, v34);
      v28 = strlen(__str);
    }

    if (a3 == 2)
    {
      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        v35 = "  - ";
      }

      else
      {
        v35 = __str;
      }

      (*(a1 + 72))(a1, a2, v35, 0, 0);
      *(a1 + 41) = 1;
      while (v28)
      {
        --v28;
        cmark_strbuf_putc(*(a1 + 16), 32);
      }

      goto LABEL_80;
    }

    cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - v28);
LABEL_76:
    (*(a1 + 56))(a1);
    goto LABEL_80;
  }

  if (v15 - 32769 < 2)
  {
    goto LABEL_80;
  }

  if (v15 != 32771)
  {
    goto LABEL_92;
  }

  if (a3 != 2)
  {
    v26 = *(a2 + 24);
    if (v26)
    {
      v27 = *(v26 + 100);
      if (v27 == 32773 || v27 == 32771)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_80:
  v36 = *MEMORY[0x29EDCA608];
  return 1;
}

_BYTE *cmark_chunk_to_cstr(uint64_t (**a1)(uint64_t, uint64_t), int *a2)
{
  if (a2[3])
  {
    return *a2;
  }

  v4 = (*a1)(a2[2] + 1, 1);
  v3 = v4;
  v5 = a2[2];
  if (v5 >= 1)
  {
    memcpy(v4, *a2, v5);
    LODWORD(v5) = a2[2];
  }

  v3[v5] = 0;
  *a2 = v3;
  a2[3] = 1;
  return v3;
}

BOOL matches_0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (cmark_node_get_type(a5) != CMARK_NODE_TABLE)
  {
    return 0;
  }

  cmark_arena_push();
  v8 = a3 + cmark_parser_get_first_nonspace(a2);
  first_nonspace = cmark_parser_get_first_nonspace(a2);
  v10 = row_from_string(a2, v8, a4 - first_nonspace);
  if (v10)
  {
    v11 = v10;
    v12 = *v10 != 0;
    v13 = *a2;
    free_row_cells(v13, v10);
    (*(v13 + 16))(v11);
  }

  else
  {
    v12 = 0;
  }

  cmark_arena_pop();
  return v12;
}

uint64_t try_opening_table_block(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  type = cmark_node_get_type(a4);
  if (!a2 && type == 32776)
  {
    if ((CMARK_NODE__TABLE_VISITED & *(a4 + 102)) == 0)
    {
      first_nonspace = cmark_parser_get_first_nonspace(a3);
      if (_ext_scan_at(_scan_table_start, a5, a6, first_nonspace))
      {
        v17 = &a5[cmark_parser_get_first_nonspace(a3)];
        v18 = cmark_parser_get_first_nonspace(a3);
        v19 = row_from_string(a3, v17, a6 - v18);
        if (v19)
        {
          v20 = v19;
          cmark_arena_push();
          string_content = cmark_node_get_string_content(a4);
          v22 = strlen(string_content);
          v23 = row_from_string(a3, string_content, v22);
          if (v23)
          {
            v24 = v23;
            if (*v23 == *v20)
            {
              if (!cmark_arena_pop())
              {
LABEL_18:
                v29 = 0x2A1898000uLL;
                if (cmark_node_set_type(a4, CMARK_NODE_TABLE))
                {
                  v30 = *(v24 + 1);
                  if (v30)
                  {
                    try_inserting_table_header_paragraph(a3, a4, string_content, v30);
                  }

                  cmark_node_set_syntax_extension(a4, a1);
                  v31 = (**a3)(1, 24);
                  *(a4 + 144) = v31;
                  if (CMARK_NODE_TABLE == *(a4 + 100))
                  {
                    *v31 = *v24;
                  }

                  v32 = (**a3)(*v20, 1);
                  v33 = *v20;
                  if (*v20)
                  {
                    v34 = 0;
                    v35 = 0;
                    do
                    {
                      v36 = *(*(v20 + 1) + v34);
                      v37 = *(v36 + 8);
                      v38 = *v37;
                      v39 = v37[*(v36 + 20) - 1];
                      if (v38 == 58 || v39 == 58)
                      {
                        if (v39 == 58 && v38 == 58)
                        {
                          v41 = 99;
                        }

                        else
                        {
                          v41 = 108;
                        }

                        if (v38 != 58)
                        {
                          v41 = 114;
                        }

                        *(v32 + v35) = v41;
                        v33 = *v20;
                      }

                      ++v35;
                      v34 += 32;
                    }

                    while (v35 < v33);
                  }

                  if (CMARK_NODE_TABLE == *(a4 + 100))
                  {
                    *(*(a4 + 144) + 8) = v32;
                  }

                  v42 = cmark_parser_add_child(a3, a4, CMARK_NODE_TABLE_ROW, *(a4 + 84));
                  cmark_node_set_syntax_extension(v42, a1);
                  v43 = *(a4 + 84);
                  v44 = strlen(string_content);
                  v45 = *(a4 + 80);
                  *(v42 + 88) = v45;
                  *(v42 + 92) = v43 + v44 - 2;
                  *(v42 + 80) = v45;
                  v46 = (**a3)(1, 1);
                  v98 = v42;
                  *(v42 + 144) = v46;
                  *v46 = 1;
                  if (*v24)
                  {
                    v47 = a1;
                    v48 = 0;
                    v49 = 0;
                    v50 = CMARK_NODE_TABLE_CELL;
                    do
                    {
                      v51 = *(v24 + 1) + v48;
                      v52 = cmark_parser_add_child(a3, v98, v50, (*(v51 + 8) + *(a4 + 84)));
                      v53 = *(v51 + 12);
                      *(v52 + 96) = *(v51 + 16);
                      v54 = *(a4 + 80);
                      v55 = v53 + *(a4 + 84);
                      *(v52 + 80) = v54;
                      *(v52 + 88) = v54;
                      *(v52 + 92) = v55;
                      *(v52 + 144) = *(v51 + 24);
                      *(v51 + 24) = 0;
                      cmark_node_set_string_content(v52, *(*v51 + 8));
                      cmark_node_set_syntax_extension(v52, v47);
                      v50 = CMARK_NODE_TABLE_CELL;
                      if (CMARK_NODE_TABLE_CELL == *(v52 + 100))
                      {
                        v56 = *(v52 + 144);
                        if (v56)
                        {
                          *(v56 + 8) = v49;
                        }
                      }

                      ++v49;
                      v48 += 32;
                    }

                    while (v49 < *v24);
                    v29 = 0x2A1898000;
                  }

                  else
                  {
                    LODWORD(v49) = 0;
                  }

                  if (*(v29 + 2664) == *(a4 + 100))
                  {
                    ++*(*(a4 + 144) + 16);
                    *(*(a4 + 144) + 20) += v49;
                  }

                  v89 = a5;
                  v90 = strlen(a5);
                  offset = cmark_parser_get_offset(a3);
                  cmark_parser_advance_offset(a3, v89, ~offset + v90, 0);
                }

                v92 = *a3;
                free_row_cells(*a3, v24);
                (*(v92 + 16))(v24);
                v93 = *a3;
                free_row_cells(v93, v20);
                (*(v93 + 16))(v20);
                return a4;
              }

              v25 = &a5[cmark_parser_get_first_nonspace(a3)];
              v26 = cmark_parser_get_first_nonspace(a3);
              v20 = row_from_string(a3, v25, a6 - v26);
              v27 = strlen(string_content);
              v28 = row_from_string(a3, string_content, v27);
              v24 = v28;
              if (v20 && v28)
              {
                if (*v28 == *v20)
                {
                  goto LABEL_18;
                }
              }

              else if (!v20)
              {
                goto LABEL_101;
              }

              v87 = *a3;
              free_row_cells(*a3, v20);
              (*(v87 + 16))(v20);
LABEL_101:
              if (v24)
              {
                v88 = *a3;
                free_row_cells(v88, v24);
                (*(v88 + 16))(v24);
              }

              return a4;
            }

            v72 = *a3;
            free_row_cells(*a3, v20);
            (*(v72 + 16))(v20);
          }

          else
          {
            v24 = v20;
          }

          v73 = *a3;
          free_row_cells(v73, v24);
          (*(v73 + 16))(v24);
          cmark_arena_pop();
          *(a4 + 102) |= CMARK_NODE__TABLE_VISITED;
        }
      }
    }

    return a4;
  }

  v13 = 0;
  if (!a2)
  {
    v14 = 0x2A1898000uLL;
    if (type == CMARK_NODE_TABLE)
    {
      if (!cmark_parser_is_blank(a3) && (!a4 || CMARK_NODE_TABLE != *(a4 + 100) || *(*(a4 + 144) + 16) * **(a4 + 144) - *(*(a4 + 144) + 20) <= 0x80000))
      {
        v13 = cmark_parser_add_child(a3, a4, CMARK_NODE_TABLE_ROW, *(a4 + 84));
        cmark_node_set_syntax_extension(v13, a1);
        *(v13 + 92) = *(a4 + 92);
        *(v13 + 144) = (**a3)(1, 1);
        v57 = &a5[cmark_parser_get_first_nonspace(a3)];
        v58 = cmark_parser_get_first_nonspace(a3);
        v59 = row_from_string(a3, v57, a6 - v58);
        if (v59)
        {
          v60 = v59;
          if (CMARK_NODE_TABLE == *(a4 + 100))
          {
            v61 = **(a4 + 144);
          }

          else
          {
            v61 = -1;
          }

          LODWORD(v62) = *v59;
          if ((*(a3 + 122) & 0x10) != 0 && *v59 && v61 >= 1)
          {
            v94 = a1;
            v63 = v61;
            v64 = 0;
            v96 = v63;
            v65 = v63;
            do
            {
              v66 = (*(v60 + 1) + 32 * v64);
              if (!*(v66[3] + 4))
              {
                v68 = *(v13 + 32);
                while (v68)
                {
                  v69 = cmark_node_nth_child(v68, v64);
                  if (v69)
                  {
                    if (CMARK_NODE_TABLE_CELL != *(v69 + 100))
                    {
                      goto LABEL_74;
                    }

                    v70 = *(v69 + 144);
                    if (!v70)
                    {
                      goto LABEL_74;
                    }

                    v71 = *(v70 + 4);
                    if (v71)
                    {
                      *(v70 + 4) = v71 + 1;
LABEL_74:
                      cmark_strbuf_truncate(*v66, 0);
                      break;
                    }

                    v68 = *(v68 + 32);
                  }
                }
              }

              ++v64;
              v62 = *v60;
            }

            while (v64 < v62 && v64 < v65);
            a1 = v94;
            v61 = v96;
            v14 = 0x2A1898000;
          }

          if (v62)
          {
            v74 = v61 < 1;
          }

          else
          {
            v74 = 1;
          }

          if (v74)
          {
            LODWORD(v76) = 0;
            if (!a4)
            {
LABEL_92:
              if (v76 < v61)
              {
                do
                {
                  v83 = cmark_parser_add_child(a3, v13, CMARK_NODE_TABLE_CELL, 0);
                  cmark_node_set_syntax_extension(v83, a1);
                  if (v83)
                  {
                    if (CMARK_NODE_TABLE_CELL == *(v83 + 100))
                    {
                      v84 = *(v83 + 144);
                      if (v84)
                      {
                        *(v84 + 8) = v76;
                      }
                    }
                  }

                  LODWORD(v76) = v76 + 1;
                }

                while (v61 != v76);
              }

              v85 = *a3;
              free_row_cells(*a3, v60);
              (*(v85 + 16))(v60);
              v86 = cmark_parser_get_offset(a3);
              cmark_parser_advance_offset(a3, a5, ~v86 + a6, 0);
              return v13;
            }
          }

          else
          {
            v97 = v61;
            v99 = a6;
            v95 = a5;
            v75 = 0;
            v76 = 0;
            v77 = v61;
            v78 = CMARK_NODE_TABLE_CELL;
            do
            {
              v79 = *(v60 + 1) + v75;
              v80 = cmark_parser_add_child(a3, v13, v78, (*(v79 + 8) + *(a4 + 84)));
              v81 = *(v79 + 16);
              *(v80 + 92) = *(v79 + 12) + *(a4 + 84);
              *(v80 + 96) = v81;
              *(v80 + 144) = *(v79 + 24);
              *(v79 + 24) = 0;
              cmark_node_set_string_content(v80, *(*v79 + 8));
              cmark_node_set_syntax_extension(v80, a1);
              v78 = CMARK_NODE_TABLE_CELL;
              if (CMARK_NODE_TABLE_CELL == *(v80 + 100))
              {
                v82 = *(v80 + 144);
                if (v82)
                {
                  *(v82 + 8) = v76;
                }
              }

              if (++v76 >= *v60)
              {
                break;
              }

              v75 += 32;
            }

            while (v76 < v77);
            a5 = v95;
            v61 = v97;
            a6 = v99;
            v14 = 0x2A1898000uLL;
          }

          if (*(v14 + 2664) == *(a4 + 100))
          {
            ++*(*(a4 + 144) + 16);
            *(*(a4 + 144) + 20) += v76;
          }

          goto LABEL_92;
        }

        cmark_node_free(v13);
      }

      return 0;
    }
  }

  return v13;
}

const char *get_type_string_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 100);
  if (CMARK_NODE_TABLE == v2)
  {
    return "table";
  }

  if (CMARK_NODE_TABLE_ROW == v2)
  {
    if (**(a2 + 144))
    {
      return "table_header";
    }

    else
    {
      return "table_row";
    }
  }

  else if (CMARK_NODE_TABLE_CELL == v2)
  {
    return "table_cell";
  }

  else
  {
    return "<unknown>";
  }
}

BOOL can_contain_1(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    return CMARK_NODE_TABLE_ROW == a3;
  }

  else if (CMARK_NODE_TABLE_ROW == v3)
  {
    return CMARK_NODE_TABLE_CELL == a3;
  }

  else
  {
    if (CMARK_NODE_TABLE_CELL != v3)
    {
      return 0;
    }

    if (a3 - 49153) < 0xC && ((0xBC9u >> (a3 - 1)))
    {
      return 1;
    }

    return a3 == 49157 || CMARK_NODE_STRIKETHROUGH == a3 || a3 == 49163;
  }
}

void commonmark_render_1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v6)
  {
    v7 = *(a2 + 64);
LABEL_3:

    v7(a2);
    return;
  }

  if (CMARK_NODE_TABLE_ROW == v6)
  {
    if (a4 != 2)
    {
      return;
    }

    (*(a2 + 56))(a2);
    v9 = "|";
    goto LABEL_18;
  }

  if (CMARK_NODE_TABLE_CELL != v6)
  {
    commonmark_render_cold_1();
  }

  v10 = *(a3 + 144);
  if (v10)
  {
    v11 = *v10;
    if (a4 == 2)
    {
      if (!v11)
      {
        return;
      }

      v13 = v10[1];
      (*(a2 + 72))(a2, a3, " ", 0, 0);
      if (v13)
      {
        return;
      }

      v14 = *(a2 + 72);
      if ((a5 & 0x200000) != 0)
      {
        v9 = "";
      }

      else
      {
        v9 = "^";
      }

      goto LABEL_19;
    }

    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a4 != 2)
  {
LABEL_23:
    (*(a2 + 72))(a2, a3, " ", 0, 0);
LABEL_24:
    (*(a2 + 72))(a2, a3, "|", 0, 0);
    v15 = *(a3 + 40);
    if (**(v15 + 144) != 1 || *(a3 + 24))
    {
      return;
    }

    v16 = *(v15 + 40);
    if (v16 && CMARK_NODE_TABLE == *(v16 + 100))
    {
      v17 = *(*(v16 + 144) + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = **(v16 + 144);
    (*(a2 + 56))(a2);
    (*(a2 + 72))(a2, a3, "|", 0, 0);
    if (!v18)
    {
LABEL_43:
      v7 = *(a2 + 56);
      goto LABEL_3;
    }

    while (1)
    {
      v20 = *v17++;
      v19 = v20;
      if (v20 > 107)
      {
        if (v19 == 114)
        {
          v21 = " --: |";
          goto LABEL_41;
        }

        if (v19 == 108)
        {
          v21 = " :-- |";
          goto LABEL_41;
        }
      }

      else
      {
        if (!v19)
        {
          v21 = " --- |";
          goto LABEL_41;
        }

        if (v19 == 99)
        {
          v21 = " :-: |";
LABEL_41:
          (*(a2 + 72))(a2, a3, v21, 0, 0);
        }
      }

      if (!--v18)
      {
        goto LABEL_43;
      }
    }
  }

  v9 = " ";
LABEL_18:
  v14 = *(a2 + 72);
LABEL_19:

  v14(a2, a3, v9, 0, 0);
}

void latex_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v6)
  {
    if (a4 == 2)
    {
      v7 = *(*(a3 + 144) + 8);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\begin{table}", 0, 0);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\begin{tabular}{", 0, 0);
      v8 = *(a3 + 144);
      v9 = *v8;
      if (*v8)
      {
        do
        {
          v11 = *v7++;
          v10 = v11;
          v12 = "l";
          if (v11 > 107)
          {
            if (v10 == 108)
            {
              goto LABEL_11;
            }

            if (v10 == 114)
            {
              v12 = "r";
              goto LABEL_11;
            }
          }

          else
          {
            if (!v10)
            {
              goto LABEL_11;
            }

            if (v10 == 99)
            {
              v12 = "c";
LABEL_11:
              (*(a2 + 72))(a2, a3, v12, 0, 0);
            }
          }

          --v9;
        }

        while (v9);
      }

      (*(a2 + 72))(a2, a3, "}", 0, 0);
    }

    else
    {
      (*(a2 + 72))(a2, a3, "\\end{tabular}", 0, 0);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\end{table}", 0, 0);
    }

LABEL_18:
    v13 = *(a2 + 56);

    v13(a2);
    return;
  }

  if (CMARK_NODE_TABLE_ROW == v6)
  {
    if (a4 == 2)
    {
      return;
    }

    goto LABEL_18;
  }

  if (CMARK_NODE_TABLE_CELL != v6)
  {
    latex_render_cold_1();
  }

  if (a4 != 2)
  {
    v14 = *(a2 + 72);
    if (*(a3 + 24))
    {
      v15 = " & ";
    }

    else
    {
      v15 = " \\\";
    }

    v14(a2, a3, v15, 0, 0);
  }
}

char *xml_attr_0(uint64_t a1, uint64_t a2)
{
  if (CMARK_NODE_TABLE_CELL != *(a2 + 100))
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (v2 && CMARK_NODE_TABLE_ROW == *(v2 + 100) && **(v2 + 144))
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(*(*(*(v2 + 40) + 144) + 8) + *(v3 + 8));
      if (v4 == 114)
      {
        return " align=right";
      }

      if (v4 != 108)
      {
        if (v4 == 99)
        {
          return " align=center";
        }

        return 0;
      }

      return " align=left";
    }

    return 0;
  }

  v6 = *(a2 + 144);
  if (!v6)
  {
    return 0;
  }

  v7 = *v6;
  if (!*v6)
  {
    return " colspan_filler";
  }

  v8 = v6[1];
  if (!v8)
  {
    return " rowspan_filler";
  }

  v9 = v8 == 1 || v7 == 1;
  v10 = " colspan";
  if (!v9)
  {
    v10 = " colspan rowspan";
  }

  result = v7 == 1 ? " rowspan" : v10;
  if (v7 == 1 && v8 == 1)
  {
    return 0;
  }

  return result;
}

void man_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 100);
  if (CMARK_NODE_TABLE != v6)
  {
    if (CMARK_NODE_TABLE_ROW != v6)
    {
      if (CMARK_NODE_TABLE_CELL != v6)
      {
        man_render_cold_1();
      }

      if (a4 != 2 && *(a3 + 24))
      {
        v14 = *(a2 + 72);

        v14(a2, a3, "@", 0, 0);
      }

      return;
    }

    if (a4 == 2)
    {
      return;
    }

LABEL_19:
    v13 = *(a2 + 56);

    v13(a2);
    return;
  }

  if (a4 != 2)
  {
    (*(a2 + 72))(a2, a3, ".TE", 0, 0);
    goto LABEL_19;
  }

  v7 = *(*(a3 + 144) + 8);
  (*(a2 + 56))(a2);
  (*(a2 + 72))(a2, a3, ".TS", 0, 0);
  (*(a2 + 56))(a2);
  (*(a2 + 72))(a2, a3, "tab(@);", 0, 0);
  (*(a2 + 56))(a2);
  v8 = *(a3 + 144);
  v9 = *v8;
  if (*v8)
  {
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (v11 <= 107)
      {
        if (v10 && v10 != 99)
        {
          goto LABEL_13;
        }

        v12 = "c";
        goto LABEL_12;
      }

      if (v10 == 108)
      {
        break;
      }

      if (v10 == 114)
      {
        v12 = "r";
LABEL_12:
        (*(a2 + 72))(a2, a3, v12, 0, 0);
      }

LABEL_13:
      if (!--v9)
      {
        (*(a2 + 72))(a2, a3, ".", 0, 0);
        goto LABEL_19;
      }
    }

    v12 = "l";
    goto LABEL_12;
  }
}

void html_render_1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = *(a3 + 100);
  if (CMARK_NODE_TABLE != v9)
  {
    if (CMARK_NODE_TABLE_ROW == v9)
    {
      v16 = *(v8 + 20);
      if (a4 != 2)
      {
        if (v16 && *(*(v8 + 8) + v16 - 1) != 10)
        {
          cmark_strbuf_putc(*a2, 10);
        }

        cmark_strbuf_puts(v8, "</tr>");
        if (**(a3 + 144) != 1)
        {
          goto LABEL_71;
        }

        v26 = *(v8 + 20);
        if (v26 && *(*(v8 + 8) + v26 - 1) != 10)
        {
          cmark_strbuf_putc(v8, 10);
        }

        cmark_strbuf_puts(v8, "</thead>");
        v15 = *(a2 + 32) & 0xFD;
        goto LABEL_9;
      }

      if (v16 && *(*(v8 + 8) + v16 - 1) != 10)
      {
        cmark_strbuf_putc(*a2, 10);
      }

      if (**(a3 + 144) == 1)
      {
        *(a2 + 32) |= 2u;
        cmark_strbuf_puts(v8, "<thead>");
        v17 = *(v8 + 20);
        if (v17 && *(*(v8 + 8) + v17 - 1) != 10)
        {
          cmark_strbuf_putc(v8, 10);
        }
      }

      else if ((*(a2 + 32) & 1) == 0)
      {
        cmark_strbuf_puts(v8, "<tbody>");
        v32 = *(v8 + 20);
        if (v32 && *(*(v8 + 8) + v32 - 1) != 10)
        {
          cmark_strbuf_putc(v8, 10);
        }

        *(a2 + 32) |= 1u;
      }

      v33 = "<tr";
      goto LABEL_67;
    }

    if (CMARK_NODE_TABLE_CELL != v9)
    {
      html_render_cold_1();
    }

    v23 = *(a3 + 144);
    if (v23)
    {
      v25 = *v23;
      v24 = v23[1];
      if (!*v23)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v25 = 1;
      v24 = 1;
    }

    if (!v24)
    {
LABEL_71:
      v38 = *MEMORY[0x29EDCA608];
      return;
    }

    if (a4 != 2)
    {
      v39 = *MEMORY[0x29EDCA608];
      if ((*(a2 + 32) & 2) != 0)
      {
        v40 = "</th>";
      }

      else
      {
        v40 = "</td>";
      }

      cmark_strbuf_puts(v8, v40);
      return;
    }

    v27 = *(v8 + 20);
    if (v27 && *(*(v8 + 8) + v27 - 1) != 10)
    {
      cmark_strbuf_putc(*a2, 10);
    }

    if ((*(a2 + 32) & 2) != 0)
    {
      v28 = "<th";
    }

    else
    {
      v28 = "<td";
    }

    cmark_strbuf_puts(v8, v28);
    if (CMARK_NODE_TABLE_CELL == *(a3 + 100))
    {
      v29 = *(a3 + 144);
      if (v29)
      {
        v30 = *(*(*(*(*(a3 + 40) + 40) + 144) + 8) + *(v29 + 8));
        switch(v30)
        {
          case 'r':
            v31 = "right";
            goto LABEL_80;
          case 'l':
            v31 = "left";
            goto LABEL_80;
          case 'c':
            v31 = "center";
LABEL_80:
            html_table_add_align(v8, v31, a5);
            break;
        }
      }
    }

    if (v25 >= 2)
    {
      snprintf(__str, 0x20uLL, "%d", v25);
      cmark_strbuf_puts(v8, " colspan=");
      cmark_strbuf_puts(v8, __str);
      cmark_strbuf_puts(v8, "");
    }

    if (v24 < 2)
    {
      goto LABEL_68;
    }

    snprintf(__str, 0x20uLL, "%d", v24);
    cmark_strbuf_puts(v8, " rowspan=");
    cmark_strbuf_puts(v8, __str);
    v33 = "";
LABEL_67:
    cmark_strbuf_puts(v8, v33);
LABEL_68:
    if ((a5 & 2) != 0)
    {
      start_line = cmark_node_get_start_line(a3);
      start_column = cmark_node_get_start_column(a3);
      end_line = cmark_node_get_end_line(a3);
      end_column = cmark_node_get_end_column(a3);
      snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, end_line, end_column);
      cmark_strbuf_puts(v8, __str);
    }

    cmark_strbuf_putc(v8, 62);
    goto LABEL_71;
  }

  if (a4 == 2)
  {
    v10 = *(v8 + 20);
    if (v10 && *(*(v8 + 8) + v10 - 1) != 10)
    {
      cmark_strbuf_putc(*a2, 10);
    }

    cmark_strbuf_puts(v8, "<table");
    if ((a5 & 2) != 0)
    {
      v11 = cmark_node_get_start_line(a3);
      v12 = cmark_node_get_start_column(a3);
      v13 = cmark_node_get_end_line(a3);
      v14 = cmark_node_get_end_column(a3);
      snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v11, v12, v13, v14);
      cmark_strbuf_puts(v8, __str);
    }

    cmark_strbuf_putc(v8, 62);
    v15 = *(a2 + 32) & 0xFE;
LABEL_9:
    *(a2 + 32) = v15;
    goto LABEL_71;
  }

  if (*(a2 + 32))
  {
    v18 = *(v8 + 20);
    if (v18 && *(*(v8 + 8) + v18 - 1) != 10)
    {
      cmark_strbuf_putc(*a2, 10);
    }

    cmark_strbuf_puts(v8, "</tbody>");
    v19 = *(v8 + 20);
    if (v19 && *(*(v8 + 8) + v19 - 1) != 10)
    {
      cmark_strbuf_putc(v8, 10);
    }
  }

  *(a2 + 32) &= ~1u;
  v20 = *(v8 + 20);
  if (v20 && *(*(v8 + 8) + v20 - 1) != 10)
  {
    cmark_strbuf_putc(v8, 10);
  }

  cmark_strbuf_puts(v8, "</table>");
  v21 = *(v8 + 20);
  if (!v21 || *(*(v8 + 8) + v21 - 1) == 10)
  {
    goto LABEL_71;
  }

  v22 = *MEMORY[0x29EDCA608];

  cmark_strbuf_putc(v8, 10);
}

void opaque_alloc(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    v4 = 24;
  }

  else if (CMARK_NODE_TABLE_ROW == v3)
  {
    v4 = 1;
  }

  else
  {
    if (CMARK_NODE_TABLE_CELL != v3)
    {
      return;
    }

    v4 = 12;
  }

  *(a3 + 144) = (*a2)(1, v4);
}

void opaque_free(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    v4 = *(a3 + 144);
    v5 = (a2 + 16);
    (*(a2 + 16))(*(v4 + 8));
  }

  else
  {
    if (CMARK_NODE_TABLE_ROW != v3 && CMARK_NODE_TABLE_CELL != v3)
    {
      return;
    }

    v4 = *(a3 + 144);
    v5 = (a2 + 16);
  }

  v6 = *v5;

  v6(v4);
}

uint64_t cmark_gfm_extensions_get_table_columns(uint64_t a1)
{
  if (CMARK_NODE_TABLE == *(a1 + 100))
  {
    return **(a1 + 144);
  }

  else
  {
    return 0;
  }
}

uint64_t cmark_gfm_extensions_get_table_alignments(uint64_t a1)
{
  if (CMARK_NODE_TABLE == *(a1 + 100))
  {
    return *(*(a1 + 144) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t cmark_gfm_extensions_set_table_columns(uint64_t result, __int16 a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE == *(result + 100))
    {
      **(result + 144) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_table_alignments(uint64_t a1, unsigned int a2, const void *a3)
{
  v5 = a2;
  v6 = (**a1)(1, a2);
  memcpy(v6, a3, v5);
  if (CMARK_NODE_TABLE != *(a1 + 100))
  {
    return 0;
  }

  *(*(a1 + 144) + 8) = v6;
  return 1;
}

uint64_t cmark_gfm_extensions_get_table_row_is_header(uint64_t result)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_ROW == *(result + 100))
    {
      return **(result + 144);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_table_row_is_header(uint64_t result, int a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_ROW == *(result + 100))
    {
      **(result + 144) = a2 != 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_get_table_cell_colspan(uint64_t a1)
{
  if (!a1 || CMARK_NODE_TABLE_CELL != *(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 144);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 1;
  }
}

uint64_t cmark_gfm_extensions_get_table_cell_rowspan(uint64_t a1)
{
  if (!a1 || CMARK_NODE_TABLE_CELL != *(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 144);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 1;
  }
}

uint64_t cmark_gfm_extensions_set_table_cell_colspan(uint64_t result, int a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_CELL == *(result + 100) && (v2 = *(result + 144)) != 0)
    {
      *v2 = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_table_cell_rowspan(uint64_t result, int a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_CELL == *(result + 100) && (v2 = *(result + 144)) != 0)
    {
      *(v2 + 4) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *row_from_string(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = (**a1)(1, 16);
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = _ext_scan_at(_scan_table_cell_end, a2, a3, 0);
  if (v7 >= a3)
  {
LABEL_42:
    v31 = 0;
    goto LABEL_45;
  }

  v34 = v5;
  while (1)
  {
    v8 = _ext_scan_at(_scan_table_cell, a2, a3, v7);
    v9 = v8 + v7;
    v10 = _ext_scan_at(_scan_table_cell_end, a2, a3, v8 + v7);
    if (!(v8 | v10))
    {
LABEL_38:
      v30 = _ext_scan_at(_scan_table_row_end, a2, a3, v7);
      v7 += v30;
      if (!v30 || v7 == a3)
      {
        goto LABEL_42;
      }

      *(v6 + 1) = v7;
      free_row_cells(*v5, v6);
      v7 += _ext_scan_at(_scan_table_cell_end, a2, a3, v7);
      goto LABEL_41;
    }

    v11 = v10;
    v12 = unescape_pipes(*v5, (a2 + v7), v8);
    cmark_strbuf_trim(v12);
    v13 = *v6;
    v14 = v13 + 1;
    if (((v13 + 1) & v13) != 0)
    {
      v15 = *(v6 + 1);
    }

    else
    {
      if (v13 == 0xFFFF)
      {
        break;
      }

      v15 = (*(*v34 + 8))(*(v6 + 1), 32 * (2 * v14 - 1));
      *(v6 + 1) = v15;
    }

    *v6 = v14;
    if (!v15)
    {
      break;
    }

    v16 = v15 + 32 * v13;
    *v16 = v12;
    v17 = v9 - 1;
    if (v8 <= 0)
    {
      v17 = v7;
    }

    *(v16 + 8) = v7;
    *(v16 + 12) = v17;
    v18 = *(v6 + 1);
    *(v16 + 16) = 0;
    if (v7 > v18)
    {
      v19 = (a2 - 1 + v7);
      v20 = v7 - 1;
      v21 = -v18;
      v22 = 1;
      do
      {
        v23 = *v19--;
        if (v23 == 124)
        {
          break;
        }

        *(v16 + 8) = v20;
        *(v16 + 16) = v22;
        --v20;
        ++v22;
      }

      while (v21 + v20 != -1);
    }

    v5 = v34;
    v24 = (**v34)(1, 12);
    *(v16 + 24) = v24;
    if ((*(v34 + 122) & 0x10) == 0)
    {
      *v24 = 0x100000001;
      goto LABEL_36;
    }

    if (!*v6)
    {
      goto LABEL_29;
    }

    if (cmark_strbuf_len(*v16))
    {
      v24 = *(v16 + 24);
LABEL_29:
      *v24 = 1;
      goto LABEL_30;
    }

    v24 = *(v16 + 24);
    if (*(v16 + 8) != *(v16 + 12))
    {
      goto LABEL_29;
    }

    *v24 = 0;
    v25 = *v6;
    if (*v6)
    {
      v26 = 0;
      v27 = *(v6 + 1);
      do
      {
        if (**(v27 + 24))
        {
          v26 = v27;
        }

        v27 += 32;
        --v25;
      }

      while (v25);
      if (v26)
      {
        ++**(v26 + 24);
      }
    }

LABEL_30:
    *(v24 + 4) = 1;
    v28 = *(*v16 + 8);
    v29 = *v28;
    if ((*(v34 + 122) & 0x20) != 0)
    {
      if (v29 != 34)
      {
        goto LABEL_36;
      }
    }

    else if (v29 != 94)
    {
      goto LABEL_36;
    }

    if (!v28[1])
    {
      *(v24 + 4) = 0;
    }

LABEL_36:
    if (*v6 == -1)
    {
      goto LABEL_44;
    }

    v7 = v9 + v11;
    if (!v11)
    {
      goto LABEL_38;
    }

LABEL_41:
    if (v7 >= a3)
    {
      goto LABEL_42;
    }
  }

  cmark_strbuf_free(v12);
  v5 = v34;
  (*(*v34 + 16))(v12);
LABEL_44:
  v31 = 1;
LABEL_45:
  if (v7 != a3 || ((*v6 != 0) & ~v31) == 0)
  {
    v32 = *v5;
    free_row_cells(v32, v6);
    (*(v32 + 16))(v6);
    return 0;
  }

  return v6;
}

uint64_t *unescape_pipes(uint64_t (**a1)(uint64_t, uint64_t), const void *a2, int a3)
{
  v6 = (*a1)(1, 24);
  cmark_strbuf_init(a1, v6, a3 + 1);
  cmark_strbuf_put(v6, a2, a3);
  cmark_strbuf_putc(v6, 0);
  if (a3 < 1)
  {
    v11 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[1];
      v10 = *(v9 + v8);
      if (v10 == 92)
      {
        if (*(v9 + v8 + 1) == 124)
        {
          ++v8;
        }

        LOBYTE(v10) = *(v9 + v8);
      }

      v11 = v7 + 1;
      *(v9 + v7) = v10;
      ++v8;
      ++v7;
    }

    while (v8 < a3);
  }

  cmark_strbuf_truncate(v6, v11);
  return v6;
}

uint64_t free_row_cells(uint64_t a1, unsigned __int16 *a2)
{
  for (i = *a2; *a2; i = *a2)
  {
    v5 = *(a2 + 1);
    v6 = i - 1;
    *a2 = v6;
    v7 = (v5 + 32 * v6);
    cmark_strbuf_free(*v7);
    (*(a1 + 16))(*v7);
    if (v7[3])
    {
      (*(a1 + 16))();
    }
  }

  result = (*(a1 + 16))(*(a2 + 1));
  *(a2 + 1) = 0;
  return result;
}

uint64_t try_inserting_table_header_paragraph(uint64_t (***a1)(uint64_t, uint64_t), uint64_t a2, const void *a3, int a4)
{
  v8 = cmark_node_new_with_mem(0x8008u, *a1);
  v9 = unescape_pipes(*a1, a3, a4);
  cmark_strbuf_trim(v9);
  cmark_node_set_string_content(v8, v9[1]);
  cmark_strbuf_free(v9);
  ((*a1)[2])(v9);
  result = cmark_node_insert_before(a2, v8);
  if (!result)
  {
    v11 = (*a1)[2];

    return (v11)(v8);
  }

  return result;
}

_DWORD *html_table_add_align(_DWORD *a1, char *a2, __int16 a3)
{
  if (a3 < 0)
  {
    v5 = " style=text-align: ";
  }

  else
  {
    v5 = " align=";
  }

  cmark_strbuf_puts(a1, v5);
  cmark_strbuf_puts(a1, a2);

  return cmark_strbuf_puts(a1, "");
}

void cmark_arena_push()
{
  v0 = A;
  if (A)
  {
    *(A + 16) = 1;
    A = alloc_arena_chunk(0x2800uLL, v0);
  }
}

void *alloc_arena_chunk(size_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00400E795F94uLL);
  if (!v4 || (v5 = v4, *v4 = a1, v6 = malloc_type_calloc(1uLL, a1, 0x798AF5B3uLL), (v5[3] = v6) == 0))
  {
    abort();
  }

  v5[4] = a2;
  return v5;
}

uint64_t cmark_arena_pop()
{
  v0 = A;
  if (!A)
  {
    return 0;
  }

  while (!*(v0 + 16))
  {
    free(*(v0 + 24));
    v1 = *(v0 + 32);
    free(v0);
    A = v1;
    v0 = v1;
    if (!v1)
    {
      return 1;
    }
  }

  *(v0 + 16) = 0;
  return 1;
}

void cmark_arena_reset()
{
  v0 = A;
  if (A)
  {
    do
    {
      free(*(v0 + 24));
      v1 = *(v0 + 32);
      free(v0);
      A = v1;
      v0 = v1;
    }

    while (v1);
  }
}

void *arena_calloc(uint64_t a1, uint64_t a2)
{
  v4 = A;
  if (!A)
  {
    v4 = alloc_arena_chunk(0x400000uLL, 0);
    A = v4;
  }

  v5 = (a2 * a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v4;
  if (v5 <= *v4)
  {
    if (v5 > v6 - v4[1])
    {
      v4 = alloc_arena_chunk(v6 + (v6 >> 1), v4);
      A = v4;
    }
  }

  else
  {
    v4 = alloc_arena_chunk(v5, v4[4]);
    *(A + 32) = v4;
  }

  v7 = v4[1];
  v8 = (v4[3] + v7);
  v4[1] = v7 + v5;
  *v8 = v5 - 8;
  return v8 + 1;
}

void *arena_realloc(void *a1, uint64_t a2)
{
  if (!A)
  {
    A = alloc_arena_chunk(0x400000uLL, 0);
  }

  result = arena_calloc(1, a2);
  if (a1)
  {
    v5 = *(a1 - 1);

    return memcpy(result, a1, v5);
  }

  return result;
}

void filter(void)
{
  v2 = v1;
  v3 = v0;
  v4 = blacklist;
  v5 = "title";
  do
  {
    if (v2 >= 3 && *v3 == 60)
    {
      v6 = 0;
      v7 = v3[1] == 47 ? 2 : 1;
      while (v5[v6])
      {
        v8 = v5[v6];
        v9 = __tolower(v3[v7 + v6]) != v8 || ~v7 + v2 == v6;
        ++v6;
        if (v9)
        {
          goto LABEL_20;
        }
      }

      if (v2 - v7 != v6)
      {
        if (cmark_isspace(v3[v7 + v6]))
        {
          return;
        }

        v10 = v3[v7 + v6];
        if (v10 == 47)
        {
          if (v7 + v6 + 2 > v2)
          {
            goto LABEL_20;
          }

          v10 = v3[v7 + 1 + v6];
        }

        if (v10 == 62)
        {
          return;
        }
      }
    }

LABEL_20:
    v11 = v4[1];
    ++v4;
    v5 = v11;
  }

  while (v11);
}

uint64_t houdini_escape_html0(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = v8;
      while (1)
      {
        v11 = *(a2 + v10);
        v12 = HTML_ESCAPE_TABLE[v11];
        if (HTML_ESCAPE_TABLE[v11])
        {
          break;
        }

        if (++v10 >= v9)
        {
          v13 = 0;
          goto LABEL_8;
        }
      }

      v13 = HTML_ESCAPE_TABLE[v11];
LABEL_8:
      if (v8 < v10)
      {
        cmark_strbuf_put(a1, (a2 + v8), v10 - v8);
      }

      if (!v12)
      {
        return 1;
      }

      v14 = *(a2 + v10);
      if (v14 == 47)
      {
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else if (a4 || v14 != 39)
      {
LABEL_17:
        cmark_strbuf_puts(a1, *(&HTML_ESCAPES + v13));
        goto LABEL_18;
      }

      cmark_strbuf_putc(a1, v14);
LABEL_18:
      v8 = v10 + 1;
    }

    while (v10 + 1 < a3);
  }

  return 1;
}

_DWORD *houdini_escape_href_cold_1(_DWORD *result, int a2, uint64_t a3, _DWORD *a4)
{
  v7 = result;
  LODWORD(v8) = 0;
  v9 = a2;
  do
  {
    v10 = v8;
    v11 = a2 <= v8 + 1 ? v8 + 1 : a2;
    v8 = v8;
    while (1)
    {
      v12 = *(a3 + v8);
      v13 = HREF_SAFE[v12];
      if (!HREF_SAFE[v12])
      {
        break;
      }

      if (++v8 >= v9)
      {
        goto LABEL_10;
      }
    }

    v11 = v8;
LABEL_10:
    if (v11 > v10)
    {
      result = cmark_strbuf_put(a4, (a3 + v10), v11 - v10);
    }

    if (v13)
    {
      break;
    }

    v14 = *(a3 + v11);
    if (v14 == 38)
    {
      v15 = a4;
      v16 = "&amp;";
    }

    else
    {
      if (v14 != 39)
      {
        v7[1] = houdini_escape_href_hex_chars[v14 >> 4];
        v7[2] = houdini_escape_href_hex_chars[v14 & 0xF];
        result = cmark_strbuf_put(a4, v7, 3);
        goto LABEL_19;
      }

      v15 = a4;
      v16 = "&#x27;";
    }

    result = cmark_strbuf_puts(v15, v16);
LABEL_19:
    LODWORD(v8) = v11 + 1;
  }

  while (v11 + 1 < a2);
  return result;
}