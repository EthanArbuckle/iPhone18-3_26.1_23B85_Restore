unsigned int *parsed_skip(unsigned int *a1, int a2)
{
  v2 = 0;
  while (2)
  {
    v3 = *a1;
    v4 = 0;
    switch(WORD1(v3) ^ 0x8000)
    {
      case 0:
        return v4;
      case 1:
        v4 = a1;
        if (v2 | a2)
        {
          goto LABEL_5;
        }

        return v4;
      case 2:
      case 8:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x1A:
      case 0x22:
      case 0x23:
      case 0x24:
      case 0x25:
        ++v2;
        goto LABEL_5;
      case 3:
        a1 += 2 * ((*a1 & 0xFFFE) > 9);
        goto LABEL_5;
      case 0xD:
        v4 = a1;
        if (a2 == 1)
        {
          return v4;
        }

        goto LABEL_5;
      case 0x18:
        v6 = a1 + 1;
        if (*a1 - 15 > 1)
        {
          v6 = a1;
        }

        if (*a1 - 27 >= 2)
        {
          a1 = v6;
        }

        else
        {
          a1 += 3;
        }

        goto LABEL_5;
      case 0x19:
        if (!v2)
        {
          return a1;
        }

        --v2;
LABEL_5:
        v5 = (v3 >> 16) & 0x7FFF;
        if (v5 <= 0x3C)
        {
          a1 += meta_extra_lengths[v5];
LABEL_7:
          ++a1;
          continue;
        }

        return 0;
      case 0x26:
      case 0x2A:
      case 0x2C:
      case 0x2E:
      case 0x30:
        a1 += a1[1];
        goto LABEL_5;
      default:
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
    }
  }
}

uint64_t get_grouplength(unsigned int **a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a5 < 1 || (*(a7 + 210) & 0x20) != 0)
  {
    goto LABEL_5;
  }

  LODWORD(v13) = *(*(a7 + 240) + 4 * a5);
  if ((v13 & 0x40000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_5:
    branchlength = get_branchlength(a1, a3, a4, a6, a7);
    if ((branchlength & 0x80000000) == 0)
    {
      v15 = -1;
      do
      {
        v13 = branchlength;
        if (v15 != -1 && v15 != branchlength)
        {
          break;
        }

        if (**a1 == -2145845248)
        {
          if (a5 >= 1)
          {
            *(*(a7 + 240) + 4 * a5) |= branchlength | 0x80000000;
          }

          return v13;
        }

        ++*a1;
        branchlength = get_branchlength(a1, a3, a4, a6, a7);
        v15 = v13;
      }

      while ((branchlength & 0x80000000) == 0);
    }

    if (a5 >= 1)
    {
      *(*(a7 + 240) + 4 * a5) |= 0x40000000u;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a1 = parsed_skip(*a1, 2);
  }

  return v13;
}

uint64_t add_list_to_class(uint64_t result, _BYTE **a2, int a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  if (v5 != -1)
  {
    v9 = result;
    do
    {
      v10 = -1;
      do
      {
        v11 = v10 + 2;
        ++v10;
      }

      while (v5 + v10 + 1 == a5[v11]);
      v12 = &a5[v11];
      *(a4 + 264) = v5;
      v13 = a5[v10];
      *(a4 + 268) = v13;
      result = add_to_class_internal(v9, a2, a3, a4, *a5, v13, v5);
      v5 = *v12;
      a5 = v12;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t add_not_list_to_class(uint64_t a1, _BYTE **a2, int a3, uint64_t a4, _DWORD *a5)
{
  v10 = *a5;
  if (!v10 || (*(a4 + 264) = 0, *(a4 + 268) = v10 - 1, result = add_to_class_internal(a1, a2, a3, a4, 0, v10 - 1, v10), LODWORD(v10) = *a5, *a5 != -1))
  {
    if ((a3 & 0x80000) != 0)
    {
      v12 = 1114111;
    }

    else
    {
      v12 = -1;
    }

    for (i = a5 + 1; ; ++i)
    {
      v14 = *i;
      v15 = v10 + 1;
      if (*i != v10 + 1)
      {
        v16 = v14 == -1 ? v12 : v14 - 1;
        *(a4 + 264) = v15;
        *(a4 + 268) = v16;
        result = add_to_class_internal(a1, a2, a3, a4, v15, v16, (v14 - 1));
        v14 = *i;
        if (*i == -1)
        {
          break;
        }
      }

      LODWORD(v10) = v14;
    }
  }

  return result;
}

uint64_t find_dupname_details(unsigned __int8 *a1, unsigned int a2, unsigned int *a3, int *a4, _DWORD *a5, uint64_t a6)
{
  if (!*(a6 + 176))
  {
    goto LABEL_18;
  }

  v11 = 0;
  v12 = a2 + 2;
  v13 = *(a6 + 72);
  v14 = a2;
  while (_pcre2_strncmp_8(a1, v13 + 2, v14) || v13[v12])
  {
    v13 += *(a6 + 178);
    ++v11;
    v15 = *(a6 + 176);
    if (v11 >= v15)
    {
      goto LABEL_8;
    }
  }

  v15 = *(a6 + 176);
LABEL_8:
  if (v11 < v15)
  {
    *a3 = v11;
    v16 = v11 + 1;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = __rev16(*v13);
      v20 = 1 << v19;
      if (v19 >= 0x20)
      {
        v20 = 1;
      }

      v21 = *(a6 + 248);
      *(a6 + 252) |= v20;
      if (v19 > v21)
      {
        *(a6 + 248) = v19;
      }

      if (v16 >= *(a6 + 176))
      {
        break;
      }

      v13 += *(a6 + 178);
      if (_pcre2_strncmp_8(a1, v13 + 2, v14))
      {
        break;
      }

      ++v16;
      v17 = v18 + 1;
    }

    while (!v13[v14 + 2]);
    *a4 = v18;
    return 1;
  }

  else
  {
LABEL_18:
    result = 0;
    *a5 = 153;
    *(a6 + 168) = &a1[-*(a6 + 56)];
  }

  return result;
}

uint64_t add_to_class_internal@<X0>(uint64_t a1@<X0>, _BYTE **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, _DWORD *a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  LODWORD(v10) = a3;
  if (a6 >= 0xFF)
  {
    v12 = 255;
  }

  else
  {
    v12 = a6;
  }

  if ((a3 & 8) == 0)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_52;
  }

  if ((a3 & 0x80000) == 0)
  {
    if (v12 >= a5)
    {
      v14 = a5;
      v15 = v12 + 1;
      do
      {
        v16 = *(*(a4 + 16) + v14);
        *(a1 + (v16 >> 3)) |= 1 << (v16 & 7);
        ++v14;
      }

      while (v15 != v14);
      v13 = v15 - a5;
      goto LABEL_52;
    }

    goto LABEL_5;
  }

  v13 = 0;
  v10 = a3 & 0xFFFFFFF7;
  v17 = a5;
LABEL_12:
  v37 = v17 - 1;
  v40 = v17;
LABEL_13:
  v38 = v7 + 1;
  v41 = v7;
  while (v8 <= v7)
  {
    v18 = v8;
    while (1)
    {
      a7 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v18 - (a7 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v18 / 128] << 7)]];
      if (*(a7 + 3))
      {
        v8 = v18 + 1;
        v19 = (&_pcre2_ucd_caseless_sets_8 + 4 * *(a7 + 3));
        v20 = *v19;
        if (*v19 == -1)
        {
          v21 = 0;
        }

        else
        {
          v39 = v12;
          v21 = 0;
          do
          {
            if (v20 == v18)
            {
              v20 = v19[1];
              v22 = 1;
            }

            else
            {
              v23 = -1;
              do
              {
                v22 = (v23 + 2);
                v24 = v19[v22];
                ++v23;
              }

              while (v20 + v23 + 1 == v24);
              v21 += add_to_class_internal(a1, a2, v10, a4);
              v20 = v24;
            }

            v19 += v22;
          }

          while (v20 != -1);
          v12 = v39;
        }

        goto LABEL_43;
      }

      LODWORD(a7) = a7[1];
      if (a7)
      {
        break;
      }

      if (++v18 > v7)
      {
        goto LABEL_51;
      }
    }

    v25 = v18 + 1;
    v26 = v18 + a7;
    do
    {
      v27 = v26;
      v8 = v25;
      if (v25 > v7)
      {
        break;
      }

      v28 = v25 + 127;
      if ((v8 & 0x80000000) == 0)
      {
        v28 = v8;
      }

      v29 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v8 - (v28 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v28 >> 7] << 7)]];
      if (*(v29 + 3))
      {
        break;
      }

      ++v26;
      v30 = v29[1];
      v25 = v8 + 1;
    }

    while (v26 == v30 + v8);
    if ((v18 + a7) < *(a4 + 264) || v27 > *(a4 + 268))
    {
      if (v18 + a7 < v17 && v27 >= v37)
      {
        v17 = v18 + a7;
        goto LABEL_12;
      }

      if (v27 <= v7 || v18 + a7 > v38)
      {
        v21 = add_to_class_internal(a1, a2, v10, a4);
LABEL_43:
        v13 = (v21 + v13);
        v17 = v40;
        v7 = v41;
        continue;
      }

      if (v27 >= 0xFF)
      {
        LODWORD(a7) = 255;
      }

      else
      {
        LODWORD(a7) = v27;
      }

      if (v27 > v12)
      {
        v12 = a7;
      }

      v7 = v27;
      goto LABEL_13;
    }
  }

LABEL_51:
  v8 = v17;
LABEL_52:
  if (v7 >= 0xFF)
  {
    v31 = 255;
  }

  else
  {
    v31 = v7;
  }

  if ((v10 & 0x80000) != 0)
  {
    v31 = v7;
  }

  if (v8 <= *(a4 + 264) || v31 >= *(a4 + 268))
  {
    if (v8 <= v12)
    {
      v32 = v8;
      do
      {
        *(a1 + (v32 >> 3)) |= 1 << (v32 & 7);
        v13 = (v13 + 1);
        ++v32;
      }

      while (v32 <= v12);
    }

    v33 = v8 <= 0x100 ? 256 : v8;
    if (v31 >= v33)
    {
      v34 = *a2;
      if ((v10 & 0x80000) != 0)
      {
        if (v33 < v7)
        {
          *v34 = 2;
          v35 = &v34[_pcre2_ord2utf_8(v33, (v34 + 1)) + 1];
LABEL_71:
          v34 = (v35 + _pcre2_ord2utf_8(v7, v35));
          goto LABEL_72;
        }

        if (v33 == v7)
        {
          *v34 = 1;
          v35 = (v34 + 1);
          goto LABEL_71;
        }
      }

LABEL_72:
      *a2 = v34;
    }
  }

  return v13;
}

unsigned __int8 *first_significant_code(unsigned __int8 *result, int a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v2 = *result;
        if (v2 > 0x8B)
        {
          break;
        }

        if (*result > 0x7Eu)
        {
          if (v2 - 127 >= 3)
          {
            if (v2 != 135)
            {
              return result;
            }

            goto LABEL_18;
          }

          if (!a2)
          {
            return result;
          }

          do
          {
            result += __rev16(*(result + 1));
            v3 = *result;
          }

          while (v3 == 120);
          result += _pcre2_OP_lengths_8[v3];
        }

        else if (v2 - 4 < 2)
        {
          if (!a2)
          {
            return result;
          }

LABEL_16:
          result += _pcre2_OP_lengths_8[*result];
        }

        else
        {
          if (v2 == 118)
          {
            goto LABEL_16;
          }

          if (v2 != 119)
          {
            return result;
          }

          result += __rev16(*(result + 5));
        }
      }

      if (v2 - 141 < 6)
      {
        goto LABEL_16;
      }

      if (v2 == 140)
      {
        break;
      }

      if (v2 != 163)
      {
        return result;
      }

      result += __rev16(*(result + 1)) + 4;
    }

LABEL_18:
    if (result[3] != 145)
    {
      return result;
    }

    v4 = __rev16(*(result + 1));
    if (result[v4] != 121)
    {
      return result;
    }

    result += v4 + 3;
  }
}

uint64_t pcre2_config_8(int a1, _BYTE *a2)
{
  result = 4294967262;
  if (a2)
  {
    switch(a1)
    {
      case 0:
      case 9:
      case 14:
        result = 0;
        v6 = 1;
        goto LABEL_19;
      case 1:
      case 8:
      case 13:
        result = 0;
        *a2 = 0;
        return result;
      case 3:
      case 5:
        result = 0;
        v6 = 2;
        goto LABEL_19;
      case 4:
      case 7:
        result = 0;
        v6 = 10000000;
        goto LABEL_19;
      case 6:
        result = 0;
        v6 = 250;
        goto LABEL_19;
      case 10:
        v7 = _pcre2_unicode_version_8;
        goto LABEL_17;
      case 11:
        v7 = "10.32 2018-09-10";
LABEL_17:
        v8 = _pcre2_strcpy_c8_8(a2, v7);
        return v8 + 1;
      case 12:
        result = 0;
        v6 = 20000000;
LABEL_19:
        *a2 = v6;
        return result;
      default:
        return result;
    }
  }

  if (!(!v3 & v2))
  {
    if (((1 << a1) & 0x73FB) != 0)
    {
      return 4;
    }

    if (a1 == 10)
    {
      v9 = _pcre2_unicode_version_8;
    }

    else
    {
      if (a1 != 11)
      {
        return result;
      }

      v9 = "10.32 2018-09-10";
    }

    v8 = cstdlib_strlen(v9);
    return v8 + 1;
  }

  return result;
}

void *_pcre2_memctl_malloc_8(size_t a1, __int128 *a2)
{
  if (a2)
  {
    result = (*a2)(a1, *(a2 + 2));
    if (result)
    {
      v4 = *a2;
      result[2] = *(a2 + 2);
      *result = v4;
    }
  }

  else
  {
    result = malloc(a1);
    if (result)
    {
      *result = default_malloc;
      result[1] = default_free;
      result[2] = 0;
    }
  }

  return result;
}

void *(__cdecl **pcre2_general_context_create_8(void *(__cdecl *a1)(size_t __size), void (__cdecl *a2)(void *), void *(__cdecl *a3)(size_t __size)))(size_t __size)
{
  if (a1)
  {
    v5 = a1;
    result = (a1)(24, a3);
  }

  else
  {
    v5 = default_malloc;
    result = (default_malloc)(24, a3);
  }

  if (result)
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = default_free;
    }

    *result = v5;
    result[1] = v7;
    result[2] = a3;
  }

  return result;
}

__n128 pcre2_compile_context_create_8(uint64_t a1)
{
  v2 = _pcre2_memctl_malloc_8(0x48uLL, a1);
  if (v2)
  {
    v4 = unk_287EEF190;
    *(v2 + 2) = xmmword_287EEF180;
    *(v2 + 3) = v4;
    v2[8] = qword_287EEF1A0;
    result = *algn_287EEF170;
    *v2 = _pcre2_default_compile_context_8;
    *(v2 + 1) = result;
    if (a1)
    {
      result = *a1;
      v2[2] = *(a1 + 16);
      *v2 = result;
    }
  }

  return result;
}

__n128 pcre2_match_context_create_8(uint64_t a1)
{
  v2 = _pcre2_memctl_malloc_8(0x40uLL, a1);
  if (v2)
  {
    v4 = unk_287EEF1B8;
    *v2 = _pcre2_default_match_context_8;
    v2[1] = v4;
    result.n128_u64[0] = xmmword_287EEF1C8;
    v5 = *&dword_287EEF1D8;
    v2[2] = xmmword_287EEF1C8;
    v2[3] = v5;
    if (a1)
    {
      result = *a1;
      *(v2 + 2) = *(a1 + 16);
      *v2 = result;
    }
  }

  return result;
}

__n128 pcre2_convert_context_create_8(uint64_t a1)
{
  v2 = _pcre2_memctl_malloc_8(0x20uLL, a1);
  if (v2)
  {
    result.n128_u64[0] = _pcre2_default_convert_context_8;
    v4 = *algn_287EEF1F8;
    *v2 = _pcre2_default_convert_context_8;
    v2[1] = v4;
    if (a1)
    {
      result = *a1;
      *(v2 + 2) = *(a1 + 16);
      *v2 = result;
    }
  }

  return result;
}

void *pcre2_general_context_copy_8(void *a1)
{
  v2 = (*a1)(24, a1[2]);
  v3 = v2;
  if (v2)
  {
    cstdlib_memcpy(v2, a1, 0x18uLL);
  }

  return v3;
}

void *pcre2_compile_context_copy_8(void *a1)
{
  v2 = (*a1)(72, a1[2]);
  v3 = v2;
  if (v2)
  {
    cstdlib_memcpy(v2, a1, 0x48uLL);
  }

  return v3;
}

void *pcre2_match_context_copy_8(void *a1)
{
  v2 = (*a1)(64, a1[2]);
  v3 = v2;
  if (v2)
  {
    cstdlib_memcpy(v2, a1, 0x40uLL);
  }

  return v3;
}

void *pcre2_convert_context_copy_8(void *a1)
{
  v2 = (*a1)(32, a1[2]);
  v3 = v2;
  if (v2)
  {
    cstdlib_memcpy(v2, a1, 0x20uLL);
  }

  return v3;
}

uint64_t pcre2_general_context_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
  }

  return result;
}

uint64_t pcre2_compile_context_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
  }

  return result;
}

uint64_t pcre2_match_context_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
  }

  return result;
}

uint64_t pcre2_convert_context_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
  }

  return result;
}

uint64_t pcre2_set_bsr_8(uint64_t a1, int a2)
{
  if ((a2 - 1) > 1)
  {
    return 4294967267;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

uint64_t pcre2_set_newline_8(uint64_t a1, int a2)
{
  if ((a2 - 1) > 5)
  {
    return 4294967267;
  }

  result = 0;
  *(a1 + 58) = a2;
  return result;
}

uint64_t pcre2_set_compile_recursion_guard_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return 0;
}

uint64_t pcre2_set_callout_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return 0;
}

uint64_t pcre2_set_glob_separator_8(uint64_t a1, int a2)
{
  result = 4294967267;
  if ((a2 - 46) <= 0x2E && ((1 << (a2 - 46)) & 0x400000000003) != 0)
  {
    result = 0;
    *(a1 + 24) = a2;
  }

  return result;
}

uint64_t pcre2_set_glob_escape_8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFF)
  {
    return 4294967267;
  }

  if (a2 && !cstdlib_ispunct(a2))
  {
    return 4294967267;
  }

  result = 0;
  *(a1 + 28) = a2;
  return result;
}

uint64_t pcre2_pattern_convert_8(unsigned __int8 *a1, int64_t a2, unsigned int a3, char **a4, uint64_t *a5, __int128 *a6, int8x8_t a7)
{
  v279[1] = *MEMORY[0x277D85DE8];
  result = 4294967245;
  if (a1)
  {
    v9 = a5;
    if (a5)
    {
      if (a3 > 0x7F || (v10 = a3 & 0x1C, a7.i32[0] = v10, v11 = vcnt_s8(a7), v11.i16[0] = vaddlv_u8(v11), v11.i32[0] != 1))
      {
        *a5 = 0;
        return 4294967262;
      }

      v14 = a2;
      v274 = a3;
      if (a2 == -1)
      {
        v15 = _pcre2_strlen_8(a1);
        LOBYTE(a3) = v274;
        v14 = v15;
      }

      v16 = &_pcre2_default_convert_context_8;
      if (a6)
      {
        v16 = a6;
      }

      v272 = v16;
      if ((a3 & 3) == 1)
      {
        v275[0] = 0;
        result = _pcre2_valid_utf_8(a1, v14, v275);
        if (result)
        {
          *v9 = v275[0];
          return result;
        }

        LOBYTE(a3) = v274;
      }

      if (a4 && (v17 = *a4) != 0)
      {
        v18 = *v9;
      }

      else
      {
        v17 = v275;
        v18 = 100;
      }

      v267 = &a1[v14];
      v19 = "(*NUL)";
      v20 = 1;
      v268 = v14;
      v263 = v10;
      while (1)
      {
        v269 = v20;
        if (a4)
        {
          v21 = *a4 != 0;
        }

        else
        {
          v21 = 0;
        }

        v273 = v17;
        if (v10 == 4 || v10 == 8)
        {
          v25 = 0;
          v26 = &v17[v18 - 1];
          *v9 = v14;
          v27 = 40;
          do
          {
            if (&v17[v25] >= v26)
            {
              return 4294967248;
            }

            v17[v25] = v27;
            v27 = v19[++v25];
          }

          while (v25 != 6);
          __src = a1;
          v28 = v17 + 6;
          if (!v14)
          {
            v31 = 0;
            v33 = v17;
            goto LABEL_182;
          }

          v256 = a4;
          v257 = v9;
          v29 = 0;
          v270 = 0;
          v30 = 0;
          v259 = 0;
          v31 = 0;
          v32 = v14;
          v33 = v17;
          v34 = __src;
          while (2)
          {
            v35 = v28;
            v36 = v33;
            if (v21)
            {
              v33 = v28;
            }

            else
            {
              v33 = v17;
            }

            v37 = *v34;
            if ((a3 & 1) != 0 && v37 >= 0xC0)
            {
              v38 = v34[1] & 0x3F;
              if ((v37 & 0x20) != 0)
              {
                if ((v37 & 0x10) != 0)
                {
                  if ((v37 & 8) != 0)
                  {
                    v62 = v34[2] & 0x3F;
                    v63 = v34[3] & 0x3F;
                    v64 = v34[4] & 0x3F;
                    if ((v37 & 4) != 0)
                    {
                      v37 = ((v37 & 1) << 30) | (v38 << 24) | (v62 << 18) | (v63 << 12) | (v64 << 6) | v34[5] & 0x3F;
                      v39 = 6;
                    }

                    else
                    {
                      v37 = ((v37 & 3) << 24) | (v38 << 18) | (v62 << 12) | (v63 << 6) | v64;
                      v39 = 5;
                    }
                  }

                  else
                  {
                    v37 = ((v37 & 7) << 18) | (v38 << 12) | ((v34[2] & 0x3F) << 6) | v34[3] & 0x3F;
                    v39 = 4;
                  }
                }

                else
                {
                  v37 = ((v37 & 0xF) << 12) | (v38 << 6) | v34[2] & 0x3F;
                  v39 = 3;
                }
              }

              else
              {
                v37 = v34[1] & 0x3F | ((v37 & 0x1F) << 6);
                v39 = 2;
              }
            }

            else
            {
              v39 = 1;
            }

            v40 = &v34[v39];
            v32 -= v39;
            if (v30 >= 3)
            {
              if (v37 == 93)
              {
                if (v33 >= v26)
                {
                  return 4294967248;
                }

                v29 = 0;
                if (v21)
                {
                  v41 = v28;
                }

                else
                {
                  v41 = v17;
                }

                v28 = v41 + 1;
                *v33 = 93;
                v30 = 2;
                goto LABEL_166;
              }

              switch(v30)
              {
                case 3:
                  goto LABEL_154;
                case 4:
                  v60 = v37 == 58;
                  v61 = 4;
                  break;
                case 5:
                  if (v37 <= 0x7F)
                  {
                    v264 = v33;
                    v43 = &v34[v39];
                    v44 = v32;
                    v45 = v36;
                    v46 = v21;
                    if (cstdlib_islower(v37))
                    {
                      v30 = 5;
                      v17 = v273;
                      v21 = v46;
                      v36 = v45;
                      v32 = v44;
                      v40 = &v34[v39];
                      v33 = v264;
                      goto LABEL_158;
                    }

                    LOBYTE(a3) = v274;
                    v17 = v273;
                    v21 = v46;
                    v36 = v45;
                    v32 = v44;
                    v40 = &v34[v39];
                    v33 = v264;
                    if (v37 == 58 && v32 && *v43 == 93)
                    {
                      if (v264 >= v26)
                      {
                        return 4294967248;
                      }

                      v75 = v46 ? v35 : v273;
                      v76 = v75 + 1;
                      *v264 = 58;
                      if ((v75 + 1) >= v26)
                      {
                        return 4294967248;
                      }

                      v29 = 0;
                      if (v46)
                      {
                        v77 = v35;
                      }

                      else
                      {
                        v77 = v273;
                      }

                      v28 = v77 + 2;
                      *v76 = 93;
                      --v32;
                      v40 = v43 + 1;
LABEL_141:
                      v30 = 3;
                      goto LABEL_166;
                    }
                  }

LABEL_154:
                  v60 = v37 == 91;
                  v61 = 3;
                  break;
                default:
                  goto LABEL_158;
              }

              if (v60)
              {
                v30 = v61 + 1;
              }

              else
              {
                v30 = v61;
              }

LABEL_158:
              v78 = v40;
              v79 = v32;
              v80 = v36;
              v81 = v33;
              if (v37 == 92)
              {
                if (v33 >= v26)
                {
                  return 4294967248;
                }

                if (v21)
                {
                  v82 = v35;
                }

                else
                {
                  v82 = v17;
                }

                v81 = v82 + 1;
                *v33 = 92;
              }

              v28 = &v81[v39];
              if (&v81[v39] > v26)
              {
                return 4294967248;
              }

              v83 = v34;
              v84 = v39;
              v85 = v21;
              v86 = v33;
              v87 = v30;
              cstdlib_memcpy(v81, v83, v84);
              v30 = v87;
              v33 = v86;
              v21 = v85;
              v17 = v273;
              LOBYTE(a3) = v274;
              v29 = 0;
              v36 = v80;
              v32 = v79;
              v40 = v78;
LABEL_166:
              v31 += v35 - v36;
              v34 = v40;
              if (!v32)
              {
                a4 = v256;
                v9 = v257;
                v10 = v263;
                if (v30 > 2)
                {
                  return 106;
                }

LABEL_182:
                result = 0;
                *v9 = &v28[v31 - v33];
                *v28 = 0;
                a1 = __src;
                v14 = v268;
                v19 = "(*NUL)";
                goto LABEL_532;
              }

              continue;
            }

            break;
          }

          if (v29)
          {
            v42 = 0;
          }

          else
          {
            v42 = v37;
          }

          if (v42 <= 62)
          {
            if (v42 <= 41)
            {
              if (v42 != 36)
              {
                if (v42 == 40)
                {
                  ++v259;
                  goto LABEL_118;
                }

                if (v42 != 41)
                {
                  goto LABEL_94;
                }

                if ((a3 & 8) != 0 && v259)
                {
                  --v259;
                  goto LABEL_135;
                }

LABEL_119:
                v265 = v36;
                goto LABEL_120;
              }

LABEL_134:
              v30 = 2;
              goto LABEL_135;
            }

            if (v42 != 42)
            {
              if (v42 == 43)
              {
                goto LABEL_118;
              }

              if (v42 != 46)
              {
                goto LABEL_94;
              }

              goto LABEL_134;
            }

            if (v270 != 42)
            {
              if ((a3 & 8) != 0)
              {
                goto LABEL_135;
              }

              if (v30 != 2 || v270 == 40)
              {
                goto LABEL_119;
              }

              goto LABEL_134;
            }

            v29 = 0;
            v270 = 42;
          }

          else
          {
            if (v42 > 93)
            {
              if ((v42 - 123) >= 3)
              {
                if (v42 == 94)
                {
                  if ((a3 & 8) != 0)
                  {
LABEL_135:
                    if (v21)
                    {
                      v74 = v28;
                    }

                    else
                    {
                      v74 = v17;
                    }

                    v28 = v74 + 1;
                    if ((v74 + 1) > v26)
                    {
                      return 4294967248;
                    }

                    v29 = 0;
                    *v33 = v37;
                    v270 = v37;
                    goto LABEL_166;
                  }

                  if (!v30 || v270 == 40)
                  {
                    v30 = 1;
                    goto LABEL_135;
                  }
                }

LABEL_94:
                v265 = v36;
                if (v37 > 0x7F)
                {
                  v59 = v33;
LABEL_125:
                  v28 = &v59[v39];
                  if (&v59[v39] > v26)
                  {
                    return 4294967248;
                  }

                  v70 = v34;
                  v71 = &v34[v39];
                  v72 = v21;
                  v73 = v33;
                  cstdlib_memcpy(v59, v70, v39);
                  v33 = v73;
                  v21 = v72;
                  v40 = v71;
                  v17 = v273;
                  LOBYTE(a3) = v274;
                  v29 = 0;
                  v270 = 255;
                  v30 = 2;
                  v36 = v265;
                  goto LABEL_166;
                }

                v55 = v21;
                v56 = v33;
                v57 = cstdlib_strchr("\\?*+|.^${}[]()", v37);
                v33 = v56;
                v21 = v55;
                v17 = v273;
                v58 = v57;
                v59 = v56;
                if (!v58)
                {
                  goto LABEL_125;
                }

LABEL_120:
                if (v33 >= v26)
                {
                  return 4294967248;
                }

                if (v21)
                {
                  v69 = v35;
                }

                else
                {
                  v69 = v17;
                }

                v59 = v69 + 1;
                *v33 = 92;
                goto LABEL_125;
              }

LABEL_118:
              if ((a3 & 8) == 0)
              {
                goto LABEL_119;
              }

              goto LABEL_134;
            }

            if (v42 == 63)
            {
              goto LABEL_118;
            }

            if (v42 == 91)
            {
              if (v33 >= v26)
              {
                return 4294967248;
              }

              if (v21)
              {
                v65 = v28;
              }

              else
              {
                v65 = v17;
              }

              *v33 = 91;
              if (!v32)
              {
                return 106;
              }

              v28 = v65 + 1;
              v66 = *v40;
              if (v66 == 94)
              {
                if (v28 >= v26)
                {
                  return 4294967248;
                }

                *v28 = 94;
                if (!--v32)
                {
                  return 106;
                }

                if (v21)
                {
                  v67 = v35;
                }

                else
                {
                  v67 = v17;
                }

                v28 = v67 + 2;
                v68 = *++v40;
                v66 = v68;
              }

              if (v66 == 93)
              {
                if (v28 >= v26)
                {
                  return 4294967248;
                }

                v29 = 0;
                --v32;
                ++v40;
                *v28++ = 93;
              }

              else
              {
                v29 = 0;
              }

              goto LABEL_141;
            }

            if (v42 != 92)
            {
              goto LABEL_94;
            }

            if (!v32)
            {
              return 101;
            }

            if ((a3 & 8) == 0)
            {
              v47 = *v40;
              if (v47 <= 0x7E)
              {
                v48 = v30;
                v28 = v33;
                v49 = v36;
                v50 = v21;
                if (cstdlib_strchr("(){}123456789", v47))
                {
                  v51 = cstdlib_isdigit(*v40);
                  v33 = v28;
                  v52 = v28;
                  LOBYTE(a3) = v274;
                  v17 = v273;
                  v21 = v50;
                  if (v51)
                  {
                    if (v28 >= v26)
                    {
                      return 4294967248;
                    }

                    if (v50)
                    {
                      v53 = v35;
                    }

                    else
                    {
                      v53 = v273;
                    }

                    v52 = v53 + 1;
                    *v28 = 92;
                  }

                  v28 = v52 + 1;
                  if ((v52 + 1) > v26)
                  {
                    return 4294967248;
                  }

                  v36 = v49;
                  v30 = v48;
                  v29 = 0;
                  v54 = *v40++;
                  v270 = v54;
                  *v52 = v54;
                  --v32;
                }

                else
                {
                  v29 = 1;
                  v33 = v28;
                  LOBYTE(a3) = v274;
                  v17 = v273;
                  v21 = v50;
                  v36 = v49;
                  v30 = v48;
                }

                goto LABEL_166;
              }
            }

            v29 = 1;
          }

          v28 = v33;
          goto LABEL_166;
        }

        if (v10 != 16)
        {
          *v9 = 0;
          return 4294967252;
        }

        v22 = *(v272 + 24);
        v23 = *(v272 + 28);
        if ((a3 & 1) != 0 && ((v22 | v23) & 0x80) != 0)
        {
          v24 = 0;
          result = 4294967232;
          v10 = v263;
          goto LABEL_531;
        }

        v266 = v21;
        v279[0] = 0;
        v88 = v17;
        v89 = cstdlib_strchr("\\?*+|.^${}[]()", v22);
        v276 = v88;
        v277 = &v88[v18];
        v278 = 0;
        LODWORD(v279[0]) = 695418664;
        v90 = -4;
        v91 = v267;
        v92 = v279;
        v93 = v88;
        do
        {
          if (v93 < &v88[v18])
          {
            v94 = *v92++;
            *v93++ = v94;
          }

          v144 = __CFADD__(v90++, 1);
        }

        while (!v144);
        __srca = v89;
        v271 = v89 != 0;
        v276 = v93;
        v278 = 4;
        v95 = v274;
        if (v14 < 1 || *a1 != 42)
        {
          break;
        }

        if (v274 > 0x1F)
        {
          if ((v274 & 0x20) == 0)
          {
            break;
          }
        }

        else if (v14 == 1 || a1[1] != 42)
        {
          break;
        }

LABEL_190:
        v100 = v19;
        v260 = 0;
        v101 = 0;
        v103 = v22 == 9 || v22 == 32;
        v258 = v103;
        v104 = a1;
        do
        {
          v105 = v104 + 1;
          v106 = *v104;
          if (v106 == 91)
          {
            if (v105 >= v91)
            {
              goto LABEL_519;
            }

            v109 = *v105;
            if (v109 == 94 || v109 == 33)
            {
              v105 = v104 + 2;
              v14 = v268;
              if ((v104 + 2) >= v91)
              {
                result = 106;
                goto LABEL_522;
              }

              LOWORD(v279[0]) = 24155;
              if ((v95 & 0x20) != 0)
              {
                v119 = 3;
              }

              else
              {
                if (__srca)
                {
                  BYTE2(v279[0]) = 92;
                  v110 = 3;
                }

                else
                {
                  v110 = 2;
                }

                *(v279 + v110) = v22;
                v119 = v110 + 1;
              }

              v120 = v276;
              v121 = v277;
              v122 = v279;
              v123 = v119;
              v124 = v278;
              do
              {
                if (v120 < v121)
                {
                  v125 = *v122++;
                  *v120++ = v125;
                }

                --v123;
              }

              while (v123);
              v118 = 0;
              v276 = v120;
              v278 = v124 + v119;
            }

            else
            {
              ++v278;
              v117 = v276;
              if (v276 < v277)
              {
                ++v276;
                *v117 = 91;
              }

              v118 = 1;
            }

            if (*v105 == 93)
            {
              LOWORD(v279[0]) = 23900;
              v126 = v276;
              v127 = v277;
              v128 = -2;
              v129 = v279;
              v130 = v278;
              do
              {
                if (v126 < v127)
                {
                  v131 = *v129++;
                  *v126++ = v131;
                }

                v144 = __CFADD__(v128++, 1);
              }

              while (!v144);
              v276 = v126;
              v278 = v130 + 2;
              ++v105;
              v132 = 93;
              v133 = 1;
            }

            else
            {
              v133 = 0;
              v132 = 0;
            }

            if (v105 >= v91)
            {
LABEL_519:
              result = 106;
              goto LABEL_521;
            }

            v134 = 0;
LABEL_258:
            v135 = v105;
            v104 = v105 + 1;
            v136 = *v105;
            if ((v95 & 1) != 0 && v136 >= 0xC0)
            {
              if ((v136 & 0x20) != 0)
              {
                v137 = *v104 & 0x3F;
                if ((v136 & 0x10) != 0)
                {
                  if ((v136 & 8) != 0)
                  {
                    v138 = v105[2] & 0x3F;
                    v139 = v105[3] & 0x3F;
                    v140 = v105[4] & 0x3F;
                    if ((v136 & 4) != 0)
                    {
                      v136 = ((v136 & 1) << 30) | (v137 << 24) | (v138 << 18) | (v139 << 12) | (v140 << 6) | v105[5] & 0x3F;
                      v104 = v105 + 6;
                    }

                    else
                    {
                      v136 = ((v136 & 3) << 24) | (v137 << 18) | (v138 << 12) | (v139 << 6) | v140;
                      v104 = v105 + 5;
                    }
                  }

                  else
                  {
                    v136 = ((v136 & 7) << 18) | (v137 << 12) | ((v105[2] & 0x3F) << 6) | v105[3] & 0x3F;
                    v104 = v105 + 4;
                  }
                }

                else
                {
                  v136 = ((v136 & 0xF) << 12) | (v137 << 6) | v105[2] & 0x3F;
                  v104 = v105 + 3;
                }
              }

              else
              {
                v104 = v105 + 2;
                v136 = v105[1] & 0x3F | ((v136 & 0x1F) << 6);
              }
            }

            if (v136 == 93)
            {
              ++v278;
              v179 = v276;
              if (v276 < v277)
              {
                ++v276;
                *v179 = 93;
              }

              if (((v118 ^ 1 | ((v95 & 0x20) >> 5)) & 1) == 0 && v134)
              {
                LODWORD(v279[0]) = 557596456;
                v180 = v276;
                v181 = v277;
                v182 = -4;
                v183 = v279;
                v184 = v278;
                do
                {
                  if (v180 < v181)
                  {
                    v185 = *v183++;
                    *v180++ = v185;
                  }

                  v144 = __CFADD__(v182++, 1);
                }

                while (!v144);
                v276 = v180;
                v186 = v277;
                if (__srca)
                {
                  v187 = v184 + 5;
                  v278 = v187;
                  if (v180 < v277)
                  {
                    v276 = v180 + 1;
                    *v180 = 92;
                    v186 = v277;
                    v187 = v278;
                    v180 = v276;
                  }
                }

                else
                {
                  v187 = v184 + 4;
                }

                v229 = v187 + 1;
                v278 = v229;
                if (v180 < v186)
                {
                  v276 = v180 + 1;
                  *v180 = v22;
                  v186 = v277;
                  v229 = v278;
                  v180 = v276;
                }

                v278 = v229 + 1;
                if (v180 < v186)
                {
                  v276 = v180 + 1;
                  *v180 = 41;
                }
              }

              continue;
            }

            if (v104 >= v91)
            {
              result = 106;
              v105 = v104;
              goto LABEL_521;
            }

            if (v136 == 91)
            {
              if (*v104 == 58)
              {
                v141 = v104 + 1;
                while (v141 < v91)
                {
                  v143 = *v141++;
                  v142 = v143;
                  if ((v143 - 123) <= 0xFFFFFFE5)
                  {
                    v144 = v142 != 58 || v141 >= v91;
                    if (!v144 && *v141 == 93)
                    {
                      v145 = 1;
                      v146 = 97;
                      v147 = "alnum:alpha:ascii:blank:cntrl:digit:graph:lower:print:punct:space:upper:word:xdigit:";
                      while (1)
                      {
                        v105 = v104 + 3;
                        v148 = v104[1];
                        if (v148 == v146)
                        {
                          break;
                        }

LABEL_285:
                        if (v146 != 58)
                        {
                          do
                          {
                            v150 = *++v147;
                          }

                          while (v150 != 58);
                        }

                        v151 = *++v147;
                        v146 = v151;
                        ++v145;
                        v136 = 91;
                        if (!v151)
                        {
                          goto LABEL_300;
                        }
                      }

                      while (v148 != 58)
                      {
                        v149 = *++v147;
                        v146 = v149;
                        v148 = *(v105++ - 1);
                        if (v148 != v149)
                        {
                          goto LABEL_285;
                        }
                      }

                      v155 = v104 - 1;
                      do
                      {
                        v157 = *v155++;
                        v156 = v157;
                        ++v278;
                        v158 = v276;
                        if (v276 < v277)
                        {
                          ++v276;
                          *v158 = v156;
                        }
                      }

                      while (v155 < v105);
                      if (v118)
                      {
                        v159 = v258;
                        switch(v145)
                        {
                          case 1:
                            v160 = v118;
                            v159 = cstdlib_isalnum(v22);
                            goto LABEL_385;
                          case 2:
                            v160 = v118;
                            v159 = cstdlib_isalpha(v22);
                            goto LABEL_385;
                          case 3:
                            v133 = 0;
                            v132 = 0;
                            v134 = 1;
                            goto LABEL_388;
                          case 4:
                            goto LABEL_386;
                          case 5:
                            v160 = v118;
                            v159 = cstdlib_iscntrl(v22);
                            goto LABEL_385;
                          case 6:
                            v160 = v118;
                            v159 = cstdlib_isdigit(v22);
                            goto LABEL_385;
                          case 7:
                            v160 = v118;
                            v159 = cstdlib_isgraph(v22);
                            goto LABEL_385;
                          case 8:
                            v160 = v118;
                            v159 = cstdlib_islower(v22);
                            goto LABEL_385;
                          case 9:
                            v160 = v118;
                            v159 = cstdlib_isprint(v22);
                            goto LABEL_385;
                          case 10:
                            v160 = v118;
                            v159 = cstdlib_ispunct(v22);
                            goto LABEL_385;
                          case 11:
                            v160 = v118;
                            v159 = cstdlib_isspace(v22);
                            goto LABEL_385;
                          case 12:
                            v160 = v118;
                            v159 = cstdlib_isupper(v22);
                            goto LABEL_385;
                          case 13:
                            v176 = v118;
                            v177 = cstdlib_isalnum(v22);
                            v118 = v176;
                            v95 = v274;
                            v159 = v22 == 95 || v177 != 0;
                            goto LABEL_386;
                          default:
                            v160 = v118;
                            v159 = cstdlib_isxdigit(v22);
LABEL_385:
                            v118 = v160;
                            v95 = v274;
LABEL_386:
                            v133 = 0;
                            v132 = 0;
                            if (v159)
                            {
                              v134 = 1;
                            }

LABEL_388:
                            v91 = v267;
                            break;
                        }
                      }

                      else
                      {
                        v133 = 0;
                        v132 = 0;
                      }

                      goto LABEL_338;
                    }

                    break;
                  }
                }

                v136 = 91;
LABEL_300:
                v105 = v104;
LABEL_331:
                ++v278;
                v164 = v276;
                if (v276 < v277)
                {
                  ++v276;
                  *v164 = 92;
                }

                do
                {
LABEL_333:
                  v166 = *v135++;
                  v165 = v166;
                  ++v278;
                  v167 = v276;
                  if (v276 < v277)
                  {
                    ++v276;
                    *v167 = v165;
                  }
                }

                while (v135 < v105);
                if (v136 == v22)
                {
                  v134 = 1;
                }

LABEL_338:
                if (v105 >= v91)
                {
                  goto LABEL_519;
                }

                goto LABEL_258;
              }

LABEL_292:
              v133 = 1;
              if (v23 && v136 == v23)
              {
                v105 = v104 + 1;
                v136 = *v104;
                if ((v95 & 1) != 0 && v136 >= 0xC0)
                {
                  if ((v136 & 0x20) != 0)
                  {
                    v153 = *v105 & 0x3F;
                    if ((v136 & 0x10) != 0)
                    {
                      if ((v136 & 8) != 0)
                      {
                        v161 = v104[2] & 0x3F;
                        v162 = v104[3] & 0x3F;
                        v163 = v104[4] & 0x3F;
                        if ((v136 & 4) != 0)
                        {
                          v136 = ((v136 & 1) << 30) | (v153 << 24) | (v161 << 18) | (v162 << 12) | (v163 << 6) | v104[5] & 0x3F;
                          v105 = v104 + 6;
                        }

                        else
                        {
                          v136 = ((v136 & 3) << 24) | (v153 << 18) | (v161 << 12) | (v162 << 6) | v163;
                          v105 = v104 + 5;
                        }
                      }

                      else
                      {
                        v136 = ((v136 & 7) << 18) | (v153 << 12) | ((v104[2] & 0x3F) << 6) | v104[3] & 0x3F;
                        v105 = v104 + 4;
                      }
                    }

                    else
                    {
                      v136 = ((v136 & 0xF) << 12) | (v153 << 6) | v104[2] & 0x3F;
                      v105 = v104 + 3;
                    }
                  }

                  else
                  {
                    v105 = v104 + 2;
                    v136 = v104[1] & 0x3F | ((v136 & 0x1F) << 6);
                  }
                }

                if (v105 >= v91)
                {
                  goto LABEL_519;
                }

                v133 = 1;
                v135 = v104;
              }

              else
              {
                v105 = v104;
              }

              v132 = v136;
            }

            else
            {
              if (v136 != 45 || !v133 || *v104 == 93)
              {
                goto LABEL_292;
              }

              ++v278;
              v152 = v276;
              if (v276 < v277)
              {
                ++v276;
                *v152 = 45;
              }

              v135 = v104 + 1;
              v136 = *v104;
              if ((v95 & 1) != 0 && v136 >= 0xC0)
              {
                if ((v136 & 0x20) != 0)
                {
                  v154 = *v135 & 0x3F;
                  if ((v136 & 0x10) != 0)
                  {
                    if ((v136 & 8) != 0)
                    {
                      v168 = v104[2] & 0x3F;
                      v169 = v104[3] & 0x3F;
                      v170 = v104[4] & 0x3F;
                      if ((v136 & 4) != 0)
                      {
                        v136 = ((v136 & 1) << 30) | (v154 << 24) | (v168 << 18) | (v169 << 12) | (v170 << 6) | v104[5] & 0x3F;
                        v135 = v104 + 6;
                      }

                      else
                      {
                        v136 = ((v136 & 3) << 24) | (v154 << 18) | (v168 << 12) | (v169 << 6) | v170;
                        v135 = v104 + 5;
                      }
                    }

                    else
                    {
                      v136 = ((v136 & 7) << 18) | (v154 << 12) | ((v104[2] & 0x3F) << 6) | v104[3] & 0x3F;
                      v135 = v104 + 4;
                    }
                  }

                  else
                  {
                    v136 = ((v136 & 0xF) << 12) | (v154 << 6) | v104[2] & 0x3F;
                    v135 = v104 + 3;
                  }
                }

                else
                {
                  v135 = v104 + 2;
                  v136 = v104[1] & 0x3F | ((v136 & 0x1F) << 6);
                }
              }

              if (v135 >= v91)
              {
                result = 106;
LABEL_541:
                v105 = v135;
                goto LABEL_521;
              }

              if (v23 && v136 == v23)
              {
                v105 = v135 + 1;
                v136 = *v135;
                if ((v95 & 1) != 0 && v136 >= 0xC0)
                {
                  if ((v136 & 0x20) != 0)
                  {
                    v172 = *v105 & 0x3F;
                    if ((v136 & 0x10) != 0)
                    {
                      if ((v136 & 8) != 0)
                      {
                        v173 = v135[2] & 0x3F;
                        v174 = v135[3] & 0x3F;
                        v175 = v135[4] & 0x3F;
                        if ((v136 & 4) != 0)
                        {
                          v136 = ((v136 & 1) << 30) | (v172 << 24) | (v173 << 18) | (v174 << 12) | (v175 << 6) | v135[5] & 0x3F;
                          v105 = v135 + 6;
                        }

                        else
                        {
                          v136 = ((v136 & 3) << 24) | (v172 << 18) | (v173 << 12) | (v174 << 6) | v175;
                          v105 = v135 + 5;
                        }
                      }

                      else
                      {
                        v136 = ((v136 & 7) << 18) | (v172 << 12) | ((v135[2] & 0x3F) << 6) | v135[3] & 0x3F;
                        v105 = v135 + 4;
                      }
                    }

                    else
                    {
                      v136 = ((v136 & 0xF) << 12) | (v172 << 6) | v135[2] & 0x3F;
                      v105 = v135 + 3;
                    }
                  }

                  else
                  {
                    v105 = v135 + 2;
                    v136 = v135[1] & 0x3F | ((v136 & 0x1F) << 6);
                  }
                }
              }

              else
              {
                if (v136 == 91)
                {
                  if (*v135 == 58)
                  {
                    result = 4294967232;
                    goto LABEL_541;
                  }

                  v136 = 91;
                }

                v105 = v135;
                v135 = v104;
              }

              if (v132 > v136)
              {
                goto LABEL_539;
              }

              v133 = 0;
              if (v136 > v22 && v132 < v22)
              {
                v134 = 1;
              }

              v132 = 0;
            }

            if (v136 - 45 <= 0x30 && ((1 << (v136 - 45)) & 0x1C00000000001) != 0)
            {
              goto LABEL_331;
            }

            goto LABEL_333;
          }

          if (v106 == 63)
          {
            if ((v95 & 0x20) != 0)
            {
              ++v278;
              v113 = v276;
              if (v276 < v277)
              {
                ++v276;
                *v113 = 46;
              }
            }

            else
            {
              convert_glob_print_wildcard(&v276, v22, v271);
              v91 = v267;
              v95 = v274;
            }

            goto LABEL_468;
          }

          if (v106 != 42)
          {
            if (!v23 || v106 != v23)
            {
              ++v104;
LABEL_230:
              if ((v106 & 0x80) == 0)
              {
                v114 = cstdlib_strchr("\\?*+|.^${}[]()", v106);
                v95 = v274;
                if (v114)
                {
                  ++v278;
                  v115 = v276;
                  if (v276 < v277)
                  {
                    ++v276;
                    *v115 = 92;
                  }
                }
              }

              ++v278;
              v116 = v276;
              if (v276 < v277)
              {
                ++v276;
                *v116 = v106;
              }

              v91 = v267;
              continue;
            }

            if (v105 < v91)
            {
              v106 = v104[1];
              v104 += 2;
              goto LABEL_230;
            }

LABEL_539:
            result = 4294967232;
LABEL_521:
            v14 = v268;
LABEL_522:
            v10 = v263;
LABEL_523:
            v24 = v105 - a1;
            v19 = v100;
            goto LABEL_531;
          }

          if (v101)
          {
            ++v278;
            v107 = v276;
            if (v276 < v277)
            {
              ++v276;
              *v107 = 41;
            }
          }

          v14 = v268;
          if (v95 > 0x3F || v105 >= v91 || *v105 != 42)
          {
            if (v105 < v91 && *v105 == 42)
            {
              v111 = v104 + 2;
              while (v111 < v91)
              {
                v112 = *v111++;
                if (v112 != 42)
                {
                  v105 = v111 - 1;
                  goto LABEL_402;
                }
              }

              v105 = v91;
            }

LABEL_402:
            if ((v95 & 0x20) != 0)
            {
              if (v105 >= v91)
              {
                v104 = v105;
                v10 = v263;
                v19 = v100;
LABEL_525:
                v249 = v273;
                goto LABEL_526;
              }

              if (v104 != a1)
              {
                goto LABEL_407;
              }

              v101 = 0;
            }

            else
            {
              if (v104 == a1)
              {
                v101 = 0;
                goto LABEL_456;
              }

LABEL_407:
              LOBYTE(v279[0]) = 40;
              if (v260)
              {
                *(v279 + 1) = 15935;
                v188 = v276;
                v189 = v277;
                v190 = -3;
                v191 = v279;
                v192 = v278;
                do
                {
                  if (v188 < v189)
                  {
                    v193 = *v191++;
                    *v188++ = v193;
                  }

                  v144 = __CFADD__(v190++, 1);
                }

                while (!v144);
                v276 = v188;
                v278 = v192 + 3;
                v101 = 1;
              }

              else
              {
                *(v279 + 1) = 1297040170;
                *(v279 + 5) = 18765;
                HIBYTE(v279[0]) = 84;
                v194 = v276;
                v195 = v277;
                v196 = -8;
                v197 = v279;
                v198 = v278;
                do
                {
                  if (v194 < v195)
                  {
                    v199 = *v197++;
                    *v194++ = v199;
                  }

                  v144 = __CFADD__(v196++, 1);
                }

                while (!v144);
                v276 = v194;
                v278 = v198 + 9;
                v101 = 0;
                if (v194 < v277)
                {
                  v276 = v194 + 1;
                  *v194 = 41;
                }
              }

              if ((v95 & 0x20) != 0)
              {
                ++v278;
                v221 = v276;
                if (v276 < v277)
                {
                  ++v276;
                  *v221 = 46;
                }
              }

              else
              {
LABEL_456:
                convert_glob_print_wildcard(&v276, v22, v271);
                v95 = v274;
                v91 = v267;
              }

              LOBYTE(v279[0]) = 42;
              if (v105 >= v91)
              {
                v222 = 43;
              }

              else
              {
                v222 = 63;
              }

              BYTE1(v279[0]) = v222;
              v223 = v276;
              v224 = v277;
              v225 = -2;
              v226 = v278;
              v227 = v279;
              do
              {
                if (v223 < v224)
                {
                  v228 = *v227++;
                  *v223++ = v228;
                }

                v144 = __CFADD__(v225++, 1);
              }

              while (!v144);
              v276 = v223;
              v278 = v226 + 2;
            }

LABEL_468:
            v104 = v105;
            continue;
          }

          v108 = v104 == a1 || *(v104 - 1) == v22;
          v19 = v100;
          v200 = v104 + 2;
          do
          {
            if (v200 >= v91)
            {
              v104 = v200;
              v10 = v263;
              goto LABEL_525;
            }

            v202 = *v200++;
            v201 = v202;
          }

          while (v202 == 42);
          if (v23)
          {
            v203 = v201 == v23;
          }

          else
          {
            v203 = 0;
          }

          v204 = v203;
          v205 = v108 & v204;
          v206 = v200 - 1;
          if (v205 == 1)
          {
            v201 = v23;
            if (v200 < v91)
            {
              v201 = *v200;
              if (v201 == v22)
              {
                v206 = v200;
              }

              else
              {
                v201 = v23;
              }
            }
          }

          if (v104 != a1)
          {
            v279[0] = 0x54494D4D4F432A28;
            v207 = v276;
            v208 = v277;
            v209 = -8;
            v210 = v279;
            v211 = v278;
            do
            {
              if (v207 < v208)
              {
                v212 = *v210++;
                *v207++ = v212;
              }

              v144 = __CFADD__(v209++, 1);
            }

            while (!v144);
            v276 = v207;
            v278 = v211 + 9;
            if (v207 < v277)
            {
              v276 = v207 + 1;
              *v207 = 41;
            }

            if (v108)
            {
              v213 = v276;
              v214 = v277;
              v215 = v278;
              if (*v206 == v22)
              {
                qmemcpy(v279, "(?:.*?", 6);
                v216 = -6;
                v217 = v279;
                do
                {
                  if (v213 < v214)
                  {
                    v218 = *v217++;
                    *v213++ = v218;
                  }

                  v144 = __CFADD__(v216++, 1);
                }

                while (!v144);
                v276 = v213;
                v219 = v277;
                if (__srca)
                {
                  v220 = v215 + 7;
                  v278 = v220;
                  if (v213 < v277)
                  {
                    v276 = v213 + 1;
                    *v213 = 92;
                    v219 = v277;
                    v220 = v278;
                    v213 = v276;
                  }
                }

                else
                {
                  v220 = v215 + 6;
                }

                v242 = v220 + 1;
                v278 = v242;
                if (v213 < v219)
                {
                  v276 = v213 + 1;
                  *v213 = v22;
                  v213 = v276;
                  v219 = v277;
                  v242 = v278;
                }

                qmemcpy(v279, ")??", 3);
                v243 = -3;
                v244 = v279;
                do
                {
                  if (v213 < v219)
                  {
                    v245 = *v244++;
                    *v213++ = v245;
                  }

                  v144 = __CFADD__(v243++, 1);
                }

                while (!v144);
                v101 = 0;
                v276 = v213;
                v278 = v242 + 3;
                goto LABEL_509;
              }
            }

            else
            {
              v213 = v276;
              v214 = v277;
              v215 = v278;
            }

            qmemcpy(v279, ".*?", 3);
            v238 = -3;
            v239 = v279;
            do
            {
              if (v213 < v214)
              {
                v240 = *v239++;
                *v213++ = v240;
              }

              v144 = __CFADD__(v238++, 1);
            }

            while (!v144);
            v101 = 0;
            v276 = v213;
            v278 = v215 + 3;
LABEL_493:
            v260 = 1;
            v104 = v206;
            continue;
          }

          if (v201 != v22)
          {
            v101 = 0;
            goto LABEL_493;
          }

          qmemcpy(v279, "(?:\\A|", 6);
          v230 = v276;
          v231 = v277;
          v232 = -6;
          v233 = v279;
          v234 = v278;
          do
          {
            if (v230 < v231)
            {
              v235 = *v233++;
              *v230++ = v235;
            }

            v144 = __CFADD__(v232++, 1);
          }

          while (!v144);
          v276 = v230;
          v236 = v277;
          if (__srca)
          {
            v237 = v234 + 7;
            v278 = v237;
            if (v230 < v277)
            {
              v276 = v230 + 1;
              *v230 = 92;
              v236 = v277;
              v237 = v278;
              v230 = v276;
            }
          }

          else
          {
            v237 = v234 + 6;
          }

          v241 = v237 + 1;
          v278 = v241;
          if (v230 < v236)
          {
            v276 = v230 + 1;
            *v230 = v22;
            v236 = v277;
            v241 = v278;
            v230 = v276;
          }

          v278 = v241 + 1;
          if (v230 < v236)
          {
            v276 = v230 + 1;
            *v230 = 41;
          }

          v101 = 0;
LABEL_509:
          v104 = v206 + 1;
          v260 = 1;
        }

        while (v104 < v91);
        v93 = v276;
        v254 = v278;
        v255 = v101 == 0;
        v14 = v268;
        v19 = v100;
LABEL_511:
        LOWORD(v279[0]) = 31324;
        v246 = -2;
        v247 = v277;
        v248 = v279;
        v10 = v263;
        v249 = v273;
        do
        {
          if (v93 < v247)
          {
            v250 = *v248++;
            *v93++ = v250;
          }

          v144 = __CFADD__(v246++, 1);
        }

        while (!v144);
        v276 = v93;
        v278 = v254 + 2;
        if (!v255)
        {
          v278 = v254 + 3;
          if (v93 < v277)
          {
            v276 = v93 + 1;
            *v93 = 41;
          }
        }

LABEL_526:
        v251 = ++v278;
        v252 = v276;
        if (v276 < v277)
        {
          ++v276;
          *v252 = 0;
          v251 = v278;
        }

        if (v266 && v251 != v276 - v249)
        {
          v100 = v19;
          result = 4294967248;
          v105 = v104;
          goto LABEL_523;
        }

        result = 0;
        v24 = v251 - 1;
LABEL_531:
        *v9 = v24;
LABEL_532:
        if (!a4 || result)
        {
          return result;
        }

        if (*a4)
        {
          return 0;
        }

        v253 = _pcre2_memctl_malloc_8(8 * *v9 + 32, v272);
        if (!v253)
        {
          return 4294967248;
        }

        v20 = 0;
        v17 = (v253 + 3);
        *a4 = (v253 + 3);
        v18 = *v9 + 1;
        result = 4294967252;
        LOBYTE(a3) = v274;
        if ((v269 & 1) == 0)
        {
          return result;
        }
      }

      LOWORD(v279[0]) = 16732;
      v96 = -2;
      v97 = v277;
      v98 = v279;
      do
      {
        if (v93 < v97)
        {
          v99 = *v98++;
          *v93++ = v99;
        }

        v144 = __CFADD__(v96++, 1);
      }

      while (!v144);
      v276 = v93;
      v278 = 6;
      if (v14 < 1)
      {
        v255 = 1;
        v254 = 6;
        v104 = a1;
        goto LABEL_511;
      }

      goto LABEL_190;
    }
  }

  return result;
}

uint64_t pcre2_converted_pattern_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result - 16))(result - 24, *(result - 8));
  }

  return result;
}

uint64_t convert_glob_print_separator(uint64_t result, char a2, int a3)
{
  v3 = *result;
  if (a3)
  {
    v4 = *(result + 8);
    ++*(result + 16);
    if (v3 < v4)
    {
      *result = v3 + 1;
      *v3 = 92;
      v3 = *result;
    }
  }

  v5 = *(result + 8);
  ++*(result + 16);
  if (v3 < v5)
  {
    *result = v3 + 1;
    *v3 = a2;
  }

  return result;
}

uint64_t convert_glob_print_wildcard(uint64_t a1, char a2, int a3)
{
  *(a1 + 24) = 24155;
  v4 = (a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = -2;
  do
  {
    if (v5 < v6)
    {
      v9 = *v4++;
      *v5++ = v9;
    }
  }

  while (!__CFADD__(v8++, 1));
  *a1 = v5;
  *(a1 + 16) = v7 + 2;
  result = convert_glob_print_separator(a1, a2, a3);
  v12 = *(a1 + 8);
  ++*(a1 + 16);
  v13 = *a1;
  if (*a1 < v12)
  {
    *a1 = v13 + 1;
    *v13 = 93;
  }

  return result;
}

uint64_t pcre2_dfa_match_8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int64x2_t *a6, __int128 *a7, _DWORD *a8, unint64_t a9)
{
  v105[3840] = *MEMORY[0x277D85DE8];
  v105[0] = 0;
  v105[1] = 0x1DFC00001E00;
  if (a3 == -1)
  {
    a3 = _pcre2_strlen_8(a2);
  }

  if ((a5 & 0x1FFFFF00) != 0)
  {
    return 4294967262;
  }

  v16 = 4294967245;
  if (!a6 || !a1 || !a2 || !a8)
  {
    return v16;
  }

  if (a9 < 0x14)
  {
    return 4294967253;
  }

  if (a3 < a4)
  {
    return 4294967263;
  }

  if ((a5 & 0x30) != 0 && ((*(a1 + 88) | a5) & 0x20000000) != 0)
  {
    return 4294967262;
  }

  if (*(a1 + 80) != 1346589253)
  {
    return 4294967265;
  }

  v84 = *(a1 + 96);
  if ((v84 & 7) != 1)
  {
    return 4294967264;
  }

  if ((a5 & 0x40) != 0)
  {
    if (*a8 > 1u)
    {
      return 4294967258;
    }

    v22 = a8[1];
    if (v22 < 1 || v22 > ((a9 - 2) / 3))
    {
      return 4294967258;
    }
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v18 = &a2[a3];
  v20 = (a5 & 0x80000040) != 0 || *(a1 + 88) < 0;
  v85 = v20;
  v86 = *(a1 + 88);
  v97 = 0;
  *(&v95 + 1) = &v98;
  LODWORD(v98) = 2;
  *&v100 = a2;
  *(&v100 + 1) = a3;
  DWORD2(v104) = 0;
  *(&v98 + 1) = 1;
  *(&v99 + 1) = 0;
  if (a7)
  {
    v21 = *(a7 + 5);
    v82 = &a2[a3];
    if (v21 != -1)
    {
      if ((v86 & 0x800000) == 0)
      {
        return 4294967240;
      }

      v82 = &a2[v21];
    }

    v96 = vextq_s8(*(a7 + 24), *(a7 + 24), 8uLL);
    v87 = *a7;
    *&v88 = *(a7 + 2);
    v24 = *(a7 + 13);
    v23 = *(a7 + 14);
    *&v93 = __PAIR64__(v23, v24);
    v25 = (a7 + 3);
  }

  else
  {
    v96.i64[1] = 0;
    v87 = *a1;
    *&v88 = *(a1 + 16);
    v24 = qword_287EEF1DC;
    v23 = HIDWORD(qword_287EEF1DC);
    *&v93 = qword_287EEF1DC;
    v25 = &dword_287EEF1D8;
    v82 = &a2[a3];
  }

  v26 = *v25;
  *&v92 = v26;
  if (v24 > *(a1 + 104))
  {
    LODWORD(v93) = *(a1 + 104);
  }

  if (v23 > *(a1 + 108))
  {
    DWORD1(v93) = *(a1 + 108);
  }

  if (v26 > *(a1 + 100))
  {
    *&v92 = *(a1 + 100);
  }

  v27 = *(a1 + 24);
  *(&v88 + 1) = a1 + *(a1 + 132) * *(a1 + 134) + 136;
  *&v89 = a2;
  *&v91 = v27;
  *(&v91 + 1) = a4;
  *(&v89 + 1) = &a2[a3];
  DWORD2(v93) = 0;
  HIDWORD(v93) = (v84 >> 14) & 0xC | a5;
  *(&v92 + 1) = 0;
  LOWORD(v95) = *(a1 + 120);
  *&v94 = v86;
  v28 = *(a1 + 122);
  v16 = 4294967252;
  if (v28 > 3)
  {
    switch(v28)
    {
      case 4u:
        v30 = 1;
        break;
      case 5u:
        v30 = 2;
        break;
      case 6u:
        DWORD2(v94) = 1;
        BYTE12(v94) = 0;
        goto LABEL_59;
      default:
        return v16;
    }

    DWORD1(v94) = v30;
  }

  else
  {
    switch(v28)
    {
      case 1u:
        DWORD2(v94) = 1;
        v29 = 13;
        break;
      case 2u:
        DWORD2(v94) = 1;
        v29 = 10;
        break;
      case 3u:
        DWORD2(v94) = 2;
        WORD6(v94) = 2573;
        goto LABEL_59;
      default:
        return v16;
    }

    BYTE12(v94) = v29;
  }

LABEL_59:
  v31 = &a2[a4];
  v83 = v86 & 0x80000;
  LOWORD(v32) = v84;
  if ((a5 & 0x40000000) == 0)
  {
    LOWORD(v32) = v84;
    if (v83)
    {
      v33 = &a2[a4];
      if (a4)
      {
        if (a3 > a4 && (*v31 & 0xC0) == 0x80)
        {
          return 4294967260;
        }

        v34 = *(a1 + 124);
        v33 = &a2[a4];
        if (*(a1 + 124))
        {
          v33 = &a2[a4];
          if (a4 >= 1)
          {
            v35 = &a2[a4];
LABEL_68:
            v36 = v35 - 1;
            while (1)
            {
              v33 = v36;
              if (v36 <= a2)
              {
                break;
              }

              --v36;
              if ((*v33 & 0xC0) != 0x80)
              {
                v35 = v33;
                if (--v34)
                {
                  goto LABEL_68;
                }

                break;
              }
            }
          }
        }
      }

      v80 = v33 - a2;
      valid = _pcre2_valid_utf_8(v33, a3 - (v33 - a2), a6[4].i64);
      a6[4].i32[3] = valid;
      if (valid)
      {
        v16 = valid;
        a6[4].i64[0] += v80;
        return v16;
      }

      v32 = *(a1 + 96);
    }
  }

  v74 = v32;
  if ((v32 & 0x10) != 0)
  {
    __c = *(a1 + 112);
    v79 = 0;
    if ((v32 & 0x20) != 0)
    {
      v71 = *(v91 + *(a1 + 112) + 256);
    }

    else
    {
      v71 = *(a1 + 112);
    }

    v38 = v32;
  }

  else
  {
    __c = 0;
    v71 = 0;
    v38 = v32;
    v39 = (v84 >> 9) & 1;
    if ((v32 & 0x40) == 0)
    {
      v39 = 1;
    }

    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = a1 + 40;
    }

    v79 = v40;
  }

  v41 = (v31 - 1);
  v76 = v38 & 0x10;
  v77 = (v86 >> 19) & 1;
  if ((v38 & 0x80) != 0)
  {
    v42 = *(a1 + 116);
    v75 = *(a1 + 116);
    if ((v38 & 0x100) != 0)
    {
      LODWORD(v42) = *(v91 + v42 + 256);
    }

    v78 = v42;
  }

  else
  {
    v75 = 0;
    v78 = 0;
  }

  v81 = a5 & 0x40;
  a6[1].i64[1] = a1;
  a6[2].i64[0] = a2;
  a6[2].i64[1] = 0;
  a6[4].i16[4] = 1;
  v44 = (v38 & 0x10) != 0 || v79 != 0;
  v72 = v44;
  v69 = v76 >> 4;
  while (1)
  {
    if (*(a1 + 88) & 0x10000 | v81)
    {
      goto LABEL_209;
    }

    if ((v86 & 0x100) == 0)
    {
      v45 = v18;
      goto LABEL_102;
    }

    if (v83)
    {
      v45 = v31;
      if (v31 >= v18)
      {
        goto LABEL_102;
      }

LABEL_122:
      if (DWORD1(v94))
      {
        if (v45 < *(&v89 + 1) && _pcre2_is_newline_8(v45, SDWORD1(v94), *(&v89 + 1), &v94 + 2, v77))
        {
          goto LABEL_102;
        }
      }

      else if (v45 <= *(&v89 + 1) - DWORD2(v94) && *v45 == BYTE12(v94) && (DWORD2(v94) == 1 || v45[1] == BYTE13(v94)))
      {
        goto LABEL_102;
      }

      ++v45;
      while (v45 < v18)
      {
        v50 = *v45++;
        if ((v50 & 0xC0) != 0x80)
        {
          --v45;
          goto LABEL_122;
        }
      }
    }

    else
    {
      v45 = v31;
      if (v31 < v18)
      {
        do
        {
          if (DWORD1(v94))
          {
            if (v45 < *(&v89 + 1) && _pcre2_is_newline_8(v45, SDWORD1(v94), *(&v89 + 1), &v94 + 2, v77))
            {
              break;
            }
          }

          else if (v45 <= *(&v89 + 1) - DWORD2(v94) && *v45 == BYTE12(v94) && (DWORD2(v94) == 1 || v45[1] == BYTE13(v94)))
          {
            break;
          }

          ++v45;
        }

        while (v45 < v18);
      }
    }

LABEL_102:
    if (v85)
    {
      if (v72)
      {
        if (v31 >= v45)
        {
          goto LABEL_255;
        }

        v46 = *v31;
        v48 = v46 != __c && v46 != v71 || v76 == 0;
        v49 = !v48;
        if (v48 && v79)
        {
          v49 = (*(v79 + (*v31 >> 3)) >> (v46 & 7)) & 1;
        }

        if (!v49)
        {
          goto LABEL_255;
        }
      }

      goto LABEL_208;
    }

    if (!v76)
    {
      if ((v84 & 0x200) == 0)
      {
        if (v79)
        {
          v58 = v31;
          do
          {
            v31 = v58;
            if (v58 >= v45)
            {
              break;
            }

            ++v58;
          }

          while (((*(v79 + (*v31 >> 3)) >> (*v31 & 7)) & 1) == 0);
          if ((BYTE12(v93) & 0x30) == 0 && v31 >= *(&v89 + 1))
          {
            goto LABEL_255;
          }
        }

        goto LABEL_208;
      }

      if (v31 <= v89 + a4)
      {
        goto LABEL_208;
      }

      if (!v83)
      {
        while (v31 < v45)
        {
          if (DWORD1(v94))
          {
            if (v31 > v89 && _pcre2_was_newline_8(v31, SDWORD1(v94), v89, &v94 + 2, v77))
            {
              goto LABEL_201;
            }
          }

          else if (v31 >= v89 + DWORD2(v94) && *(v31 - DWORD2(v94)) == BYTE12(v94) && (DWORD2(v94) == 1 || *(v31 - DWORD2(v94) + 1) == BYTE13(v94)))
          {
            goto LABEL_201;
          }

          ++v31;
        }

        goto LABEL_201;
      }

      if (v31 < v45)
      {
LABEL_154:
        if (DWORD1(v94))
        {
          if (v31 > v89 && _pcre2_was_newline_8(v31, SDWORD1(v94), v89, &v94 + 2, v77))
          {
            goto LABEL_201;
          }
        }

        else if (v31 >= v89 + DWORD2(v94) && *(v31 - DWORD2(v94)) == BYTE12(v94) && (DWORD2(v94) == 1 || *(v31 - DWORD2(v94) + 1) == BYTE13(v94)))
        {
          goto LABEL_201;
        }

        ++v31;
        while (v31 < v45)
        {
          v53 = *v31++;
          if ((v53 & 0xC0) != 0x80)
          {
            --v31;
            goto LABEL_154;
          }
        }
      }

LABEL_201:
      if (*(v31 - 1) == 13)
      {
        v60 = (DWORD1(v94) - 1) > 1 || v31 >= v45;
        if (!v60 && *v31 == 10)
        {
          ++v31;
        }
      }

      goto LABEL_208;
    }

    v70 = v41;
    v51 = cstdlib_memchr(v31, __c, &v45[-v31]);
    v52 = v51;
    if (__c == v71)
    {
      if (v51)
      {
        v31 = v51;
      }

      else
      {
        v31 = v45;
      }
    }

    else
    {
      v54 = cstdlib_memchr(v31, v71, &v45[-v31]);
      if (v52 < v54 || v54 == 0)
      {
        v56 = v52;
      }

      else
      {
        v56 = v54;
      }

      if (v54)
      {
        v57 = v54;
      }

      else
      {
        v57 = v45;
      }

      if (v52)
      {
        v31 = v56;
      }

      else
      {
        v31 = v57;
      }
    }

    v41 = v70;
    if ((BYTE12(v93) & 0x30) == 0 && v31 >= *(&v89 + 1))
    {
      goto LABEL_255;
    }

LABEL_208:
    v18 = *(&v89 + 1);
    if ((BYTE12(v93) & 0x30) == 0)
    {
      if ((*(&v89 + 1) - v31) < *(a1 + 126))
      {
        goto LABEL_255;
      }

      if (v74 < 0 && *(&v89 + 1) - v31 <= 0x7CF)
      {
        v66 = (v31 + v69);
        if (v31 + v69 > v41)
        {
          if (v78 == v75)
          {
            do
            {
              v41 = v66;
              if (v66 >= *(&v89 + 1))
              {
                break;
              }

              ++v66;
            }

            while (*v41 != v78);
          }

          else
          {
            do
            {
              v41 = v66;
              if (v66 >= *(&v89 + 1))
              {
                break;
              }

              ++v66;
              v67 = *v41;
            }

            while (v67 != v75 && v67 != v78);
          }

          if (v41 >= *(&v89 + 1))
          {
            goto LABEL_255;
          }
        }
      }
    }

LABEL_209:
    if (v31 > v82)
    {
      goto LABEL_255;
    }

    v90.i64[0] = v31;
    v90.i64[1] = v31;
    v97 = 0;
    v61 = internal_dfa_match(&v87, *(&v88 + 1), v31, a4, a6[5].i64, 2 * a6[4].u16[5], a8, a9, 0, v105);
    if (v61 != -1 || v85)
    {
      break;
    }

    if ((v86 & 0x100) != 0)
    {
      if (DWORD1(v94))
      {
        if (v31 < *(&v89 + 1) && _pcre2_is_newline_8(v31, SDWORD1(v94), *(&v89 + 1), &v94 + 2, v77))
        {
          goto LABEL_255;
        }
      }

      else if (v31 <= *(&v89 + 1) - DWORD2(v94) && *v31 == BYTE12(v94) && (DWORD2(v94) == 1 || *(v31 + 1) == BYTE13(v94)))
      {
        goto LABEL_255;
      }
    }

    v62 = (v31 + 1);
    if (v83 && v62 < v18)
    {
      v63 = &v18[~v31];
      while ((*v62 & 0xC0) == 0x80)
      {
        ++v62;
        if (!--v63)
        {
          v31 = v18;
          goto LABEL_227;
        }
      }
    }

    v31 = v62;
LABEL_227:
    if (v31 > v18)
    {
LABEL_255:
      v16 = 0xFFFFFFFFLL;
      goto LABEL_261;
    }

    v64 = *(v31 - 1) != 13 || v31 >= v18;
    if (!v64 && *v31 == 10 && (*(a1 + 97) & 8) == 0 && ((DWORD1(v94) - 1) < 2 || DWORD2(v94) == 2))
    {
      ++v31;
    }
  }

  v16 = v61;
  if (v61 == -2 && a6[4].i16[5])
  {
    a6[5].i64[0] = v31 - a2;
    a6[5].i64[1] = v18 - a2;
  }

  a6[3] = vsubq_s64(v90, vdupq_n_s64(a2));
  a6[4].i64[0] = v31 - a2;
  a6[4].i32[3] = v61;
LABEL_261:
  while (v105[0])
  {
    v105[0] = *v105[0];
    (*(&v87 + 1))();
  }

  return v16;
}

uint64_t internal_dfa_match(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, void *a5, unsigned int a6, _DWORD *a7, int a8, unsigned int a9, uint64_t a10)
{
  v364 = 0;
  v365 = 0;
  v366 = 0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = *(a1 + 112);
  v17 = *(a1 + 104);
  *(a1 + 104) = v17 + 1;
  if (v17 >= *(a1 + 96))
  {
    return 4294967249;
  }

  v19 = a1;
  v20 = a9;
  if (*(a1 + 100) < a9)
  {
    return 4294967243;
  }

  v22 = a3;
  v23 = a2;
  v24 = v16 & 0x80000;
  v25 = (a8 - 2) / 6;
  v347 = *(a1 + 64);
  v353 = a7 + 2;
  v26 = &a7[3 * v25 + 2];
  LODWORD(v27) = *a2;
  v351 = v13;
  v349 = v15;
  v348 = v16 & 0x80000;
  v350 = v25;
  if (v27 <= -127)
  {
    v28 = 0;
    v29 = a2;
    do
    {
      v30 = __rev16(*(v29 + 2));
      if (v30 > v28)
      {
        v28 = v30;
      }

      v29 += __rev16(*(v29 + 1));
    }

    while (*v29 == 120);
    if (v24)
    {
      v27 = 0;
      if (v28)
      {
        v31 = v13 >= a3;
      }

      else
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = a3;
        do
        {
          v33 = v32 - 1;
          do
          {
            v22 = v33;
            if (v33 <= v13)
            {
              ++v27;
              goto LABEL_33;
            }

            --v33;
          }

          while ((*v22 & 0xC0) == 0x80);
          ++v27;
          v32 = v22;
        }

        while (v27 < v28);
      }
    }

    else
    {
      v27 = a3 - v13;
      if (a3 - v13 >= v28)
      {
        v27 = v28;
      }

      v22 = &a3[-v27];
    }

LABEL_33:
    if (v22 < *(a1 + 48))
    {
      *(a1 + 48) = v22;
    }

    v36 = 0;
    v10 = &a7[3 * v25 + 2];
    while (1)
    {
      v37 = v23[3];
      if (v37 != 125)
      {
        break;
      }

      v38 = __rev16(*(v23 + 2));
      if (v38 <= v27)
      {
        goto LABEL_40;
      }

LABEL_45:
      v23 += __rev16(*(v23 + 1));
      if (*v23 != 120)
      {
        goto LABEL_53;
      }
    }

    LODWORD(v38) = 0;
LABEL_40:
    if (v36 >= v25)
    {
      return 4294967253;
    }

    v36 = (v36 + 1);
    if (v37 == 125)
    {
      v39 = -3;
    }

    else
    {
      v39 = 0;
    }

    *v10 = v15 - 3 - v23 + v39;
    *(v10 + 4) = 0;
    *(v10 + 8) = v27 - v38;
    v10 += 12;
    goto LABEL_45;
  }

  if (!a9 && (*(a1 + 108) & 0x40) != 0)
  {
    do
    {
      v23 += __rev16(*(v23 + 1));
    }

    while (*v23 == 120);
    v36 = a7[1];
    if (!*a7)
    {
      cstdlib_memcpy(&a7[3 * v25 + 2], v353, 12 * v36);
      v25 = v350;
      v24 = v16 & 0x80000;
      v15 = v349;
      v13 = v351;
      v19 = a1;
    }
  }

  else
  {
    v34 = *a2;
    if ((v34 - 133) <= 5 && ((1 << (v34 + 123)) & 0x23) != 0)
    {
      v35 = 5;
    }

    else if (v34 == 139)
    {
      v35 = 5;
    }

    else
    {
      v35 = 3;
    }

    LODWORD(v36) = 0;
    LODWORD(v27) = v25 & ~(v25 >> 31);
    v40 = &a7[3 * v25 + 2];
    do
    {
      if (v27 == v36)
      {
        return 4294967253;
      }

      v36 = (v36 + 1);
      *v40 = v35 - v15 + v23;
      v40[1] = 0;
      v40 += 3;
      v23 += __rev16(*(v23 + 1));
      v35 = 3;
    }

    while (*v23 == 120);
  }

LABEL_53:
  v41 = 0;
  v341 = (v16 >> 19) & 1;
  v354 = a9 + 1;
  v321 = a6 & 0xFFFFFFFE;
  v330 = v347 + 832;
  v332 = v347 + 256;
  *a7 = 0;
  v322 = &v13[a4];
  v320 = (v22 - v13);
  v324 = v25 - 1;
  v325 = -1;
  v42 = v22;
  v346 = v14;
  v338 = a7;
  v323 = a6;
  v326 = v22;
LABEL_54:
  v43 = v26;
  if (v42 > *(v19 + 56))
  {
    *(v19 + 56) = v42;
  }

  *a7 ^= 1u;
  a7[1] = v36;
  if (v42 >= v14)
  {
    v45 = 0;
    v44 = -1;
  }

  else
  {
    v44 = *v42;
    v45 = 1;
    if (v24 && v44 >= 0xC0)
    {
      LODWORD(v27) = v42[1] & 0x3F;
      if ((v44 & 0x20) != 0)
      {
        if ((v44 & 0x10) != 0)
        {
          if ((v44 & 8) != 0)
          {
            v309 = v42[2] & 0x3F;
            v310 = v42[3] & 0x3F;
            LODWORD(v10) = v42[4] & 0x3F;
            if ((v44 & 4) != 0)
            {
              v44 = ((v44 & 1) << 30) | (v27 << 24) | (v309 << 18) | (v310 << 12) | (v10 << 6) | v42[5] & 0x3F;
              v45 = 6;
            }

            else
            {
              v44 = ((v44 & 3) << 24) | (v27 << 18) | (v309 << 12) | (v310 << 6) | v10;
              v45 = 5;
            }
          }

          else
          {
            v44 = ((v44 & 7) << 18) | (v27 << 12) | ((v42[2] & 0x3F) << 6) | v42[3] & 0x3F;
            v45 = 4;
          }
        }

        else
        {
          v44 = ((v44 & 0xF) << 12) | (v27 << 6) | v42[2] & 0x3F;
          v45 = 3;
        }
      }

      else
      {
        v45 = 2;
        v44 = v42[1] & 0x3F | ((v44 & 0x1F) << 6);
      }
    }
  }

  if (v36 < 1)
  {
    v311 = 0;
    v312 = 1;
    goto LABEL_1414;
  }

  v355 = v42;
  v333 = 0;
  v339 = 0;
  v46 = 0;
  v362 = 0;
  v360 = 0;
  v47 = &v43[3 * v36];
  v331 = v43 + 3;
  v343 = v44;
  v335 = v44 >> 3;
  v334 = v44 & 7;
  v344 = v44 - (v27 & 0xFFFFFF80);
  v345 = v44 / 128;
  v48 = (v44 - 160) >> 5 < 0x6BB || v44 >> 13 > 6;
  v49 = v48;
  v336 = v44 == 95;
  v337 = v49;
  v359 = (v43 + 1);
  v361 = v353;
  v352 = v43;
  v357 = v44;
  v50 = v45;
  while (2)
  {
    v51 = &v43[3 * v46];
    v52 = *v51;
    if ((*v51 & 0x80000000) != 0)
    {
      v57 = v51[2];
      v58 = __OFSUB__(v57, 1);
      v59 = v57 - 1;
      if (v59 < 0 == v58)
      {
        LODWORD(v45) = v362;
        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        *v361 = v52;
        v361[1] = v51[1];
        v361[2] = v59;
        v361 += 3;
        v60 = v41 == 0;
LABEL_88:
        LODWORD(v27) = v360;
        if (!v60)
        {
          LODWORD(v27) = 1;
        }

        v360 = v27;
        goto LABEL_1326;
      }

      v52 = -v52;
      *v51 = v52;
    }

    if (v46 >= 1)
    {
      v27 = v46;
      v45 = v359;
      do
      {
        if (*(v45 - 4) == v52 && *v45 == v51[1])
        {
          goto LABEL_1326;
        }

        v45 += 12;
        --v27;
      }

      while (v27);
    }

    v53 = (v15 + v52);
    v54 = *v53;
    if (!v50)
    {
      if (poptable[v54])
      {
        v41 = 1;
      }

      else
      {
        v41 = v41;
      }
    }

    v27 = coptable[v54];
    if (coptable[v54])
    {
      v45 = &v53[v27];
      v55 = v53[v27];
      LODWORD(v27) = 1;
      if (v24 && v55 >= 0xC0)
      {
        v56 = *(v45 + 1) & 0x3F;
        if ((v55 & 0x20) != 0)
        {
          if ((v55 & 0x10) != 0)
          {
            if ((v55 & 8) != 0)
            {
              v61 = *(v45 + 2) & 0x3F;
              LODWORD(v10) = *(v45 + 3) & 0x3F;
              v62 = *(v45 + 4) & 0x3F;
              if ((v55 & 4) != 0)
              {
                v55 = ((v55 & 1) << 30) | (v56 << 24) | (v61 << 18) | (v10 << 12) | (v62 << 6) | *(v45 + 5) & 0x3F;
                LODWORD(v27) = 6;
              }

              else
              {
                v55 = ((v55 & 3) << 24) | (v56 << 18) | (v61 << 12) | (v10 << 6) | v62;
                LODWORD(v27) = 5;
              }

              v44 = v357;
            }

            else
            {
              v55 = ((v55 & 7) << 18) | (v56 << 12) | ((*(v45 + 2) & 0x3F) << 6) | *(v45 + 3) & 0x3F;
              LODWORD(v27) = 4;
            }
          }

          else
          {
            v55 = ((v55 & 0xF) << 12) | (v56 << 6) | *(v45 + 2) & 0x3F;
            LODWORD(v27) = 3;
          }
        }

        else
        {
          LODWORD(v27) = 2;
          v55 = *(v45 + 1) & 0x3F | ((v55 & 0x1F) << 6);
        }
      }

      if (v54 >= 0x55)
      {
        if (v55 <= 17)
        {
          if (v55 - 15 >= 2)
          {
            if (v55 == 17)
            {
              LODWORD(v54) = v54 + 340;
            }

            else if (v55 == 14)
            {
              return 4294967254;
            }
          }

          else
          {
            LODWORD(v54) = v54 + 300;
          }
        }

        else if (v55 - 18 < 2)
        {
          LODWORD(v54) = v54 + 360;
        }

        else if (v55 - 20 >= 2)
        {
          if (v55 == 22)
          {
            LODWORD(v54) = v54 + 320;
          }
        }

        else
        {
          LODWORD(v54) = v54 + 380;
        }
      }
    }

    else
    {
      v55 = -1;
    }

    result = 0;
    LOBYTE(v45) = 1;
    v63 = -2;
    v64 = 4;
    switch(v54)
    {
      case 1:
        if (v355 != v13)
        {
          goto LABEL_1326;
        }

        goto LABEL_998;
      case 2:
        LODWORD(v45) = v322;
        if (v355 != v322)
        {
          goto LABEL_1326;
        }

        goto LABEL_998;
      case 4:
      case 5:
        if (v355 <= v13)
        {
          goto LABEL_819;
        }

        v149 = v355 - 1;
        if ((v355 - 1) < *(v19 + 48))
        {
          *(v19 + 48) = v149;
        }

        if (!v24)
        {
          v151 = *v149;
          goto LABEL_816;
        }

        v150 = (v355 + 2);
        do
        {
          v151 = *(v150 - 3);
          --v150;
        }

        while ((v151 & 0xC0) == 0x80);
        if (v151 < 0xC0)
        {
          goto LABEL_816;
        }

        v152 = *(v150 - 1) & 0x3F;
        if ((v151 & 0x20) == 0)
        {
          v151 = *(v150 - 1) & 0x3F | ((v151 & 0x1F) << 6);
          goto LABEL_816;
        }

        if ((v151 & 0x10) == 0)
        {
          v302 = ((v151 & 0xF) << 12) | (v152 << 6);
          v303 = *v150;
LABEL_1347:
          v151 = v302 & 0xFFFFFFC0 | v303 & 0x3F;
          goto LABEL_816;
        }

        if ((v151 & 8) == 0)
        {
          v302 = ((v151 & 7) << 18) | (v152 << 12) | ((*v150 & 0x3F) << 6);
          v303 = v150[1];
          goto LABEL_1347;
        }

        v306 = v50;
        LODWORD(v10) = *v150 & 0x3F;
        v307 = v150[1] & 0x3F;
        v308 = v150[2] & 0x3F;
        if ((v151 & 4) != 0)
        {
          v151 = ((v151 & 1) << 30) | (v152 << 24) | (v10 << 18) | (v307 << 12) | (v308 << 6) | v150[3] & 0x3F;
        }

        else
        {
          v151 = ((v151 & 3) << 24) | (v152 << 18) | (v10 << 12) | (v307 << 6) | v308;
        }

        v44 = v357;
        v50 = v306;
LABEL_816:
        if ((*(v19 + 114) & 2) != 0)
        {
          LODWORD(v27) = v151 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v151 & 0x7F | (_pcre2_ucd_stage1_8[v151 >> 7] << 7)]])] & 0xFFFFFFFD) == 1;
        }

        else if (v151 > 0xFF)
        {
LABEL_819:
          LODWORD(v27) = 0;
        }

        else
        {
          LODWORD(v27) = (*(v330 + v151) >> 4) & 1;
        }

        if (v50 < 1)
        {
          LODWORD(v45) = 0;
        }

        else
        {
          if (v355 >= *(v19 + 56))
          {
            v226 = v355 + 1;
            if (v24)
            {
              v227 = *(v19 + 40);
              if (v226 < v227)
              {
                v10 = ~v355 + v227;
                while ((*v226 & 0xC0) == 0x80)
                {
                  ++v226;
                  if (!--v10)
                  {
                    v226 = *(v19 + 40);
                    break;
                  }
                }

                v44 = v357;
              }
            }

            *(v19 + 56) = v226;
          }

          if ((*(v19 + 114) & 2) != 0)
          {
            LODWORD(v45) = v44 == 95 || (_pcre2_ucp_gentype_8[BYTE1(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344]])] & 0xFFFFFFFD) == 1;
          }

          else if (v44 > 0xFF)
          {
            LODWORD(v45) = 0;
          }

          else
          {
            LODWORD(v45) = (*(v330 + v343) >> 4) & 1;
          }
        }

        if ((v54 != 4) == (v27 == v45))
        {
          goto LABEL_1326;
        }

        goto LABEL_998;
      case 6:
      case 8:
      case 10:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        if (v44 > 0xFF)
        {
          goto LABEL_670;
        }

        goto LABEL_299;
      case 7:
      case 9:
      case 11:
        if (v44 > 0xFF || v50 < 1)
        {
          goto LABEL_1326;
        }

LABEL_299:
        if ((toptable1[v54] & *(v330 + v343)) == toptable2[v54])
        {
          goto LABEL_1326;
        }

        goto LABEL_670;
      case 12:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        v192 = *(v19 + 116);
        v193 = *(v19 + 40);
        if (!v192)
        {
          v27 = *(v19 + 120);
          v194 = v355;
          v195 = v362;
          if (v355 <= v193 - v27 && *v355 == *(v19 + 124) && (v27 == 1 || v355[1] == *(v19 + 125)))
          {
            goto LABEL_1228;
          }

          goto LABEL_1062;
        }

        v194 = v355;
        v195 = v362;
        if (v355 >= v193)
        {
          goto LABEL_1062;
        }

        v88 = v50;
        v196 = v41;
        v197 = v19;
        if (!_pcre2_is_newline_8(v355, v192, v193, (v19 + 120), v341))
        {
          v193 = *(v197 + 40);
          v19 = v197;
          v13 = v351;
          v15 = v349;
          v24 = v348;
          v25 = v350;
          v194 = v355;
          v41 = v196;
          v44 = v357;
          v50 = v88;
LABEL_1062:
          if ((v194 + 1) >= v193 && (*(v19 + 108) & 0x20) != 0 && !*(v19 + 116) && *(v19 + 120) == 2 && v44 == *(v19 + 124))
          {
            v333 = 1;
            v41 = 1;
            goto LABEL_1228;
          }

          v43 = v352;
          if (v195 >= v25)
          {
            return 4294967253;
          }

          v362 = v195 + 1;
          goto LABEL_672;
        }

        goto LABEL_1127;
      case 13:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        goto LABEL_670;
      case 15:
      case 16:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        v27 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344]];
        LODWORD(v45) = v53[1];
        if (v45 > 5)
        {
          LODWORD(v10) = v362;
          if (v53[1] > 8u)
          {
            if (v45 == 9)
            {
              v27 = &_pcre2_ucd_caseless_sets_8[v53[2]];
              while (1)
              {
                LODWORD(v45) = *v27;
                if (v44 < *v27)
                {
                  goto LABEL_1284;
                }

                v27 += 4;
                if (v44 == v45)
                {
                  goto LABEL_1315;
                }
              }
            }

            if (v45 == 10)
            {
              LODWORD(v45) = v44 - 36;
              LODWORD(v27) = v337;
              if ((v44 - 36) > 0x3C || (LODWORD(v27) = v337, ((1 << v45) & 0x1000000010000001) == 0))
              {
LABEL_1292:
                if ((v54 != 16) == v27)
                {
                  goto LABEL_1326;
                }

                goto LABEL_1316;
              }

              goto LABEL_1315;
            }
          }

          else
          {
            if ((v45 - 6) < 2)
            {
              LODWORD(v45) = v44 - 0x2000;
              if (v44 < 0x2000)
              {
                if (v44 > 132)
                {
                  if (v44 > 5759)
                  {
                    if (v44 == 5760 || v44 == 6158)
                    {
                      goto LABEL_1315;
                    }
                  }

                  else if (v44 == 133 || v44 == 160)
                  {
                    goto LABEL_1315;
                  }
                }

                else if (v44 <= 0x20 && ((1 << v343) & 0x100003E00) != 0)
                {
                  goto LABEL_1315;
                }
              }

              else
              {
                if (v45 < 0xB)
                {
                  goto LABEL_1315;
                }

                LODWORD(v45) = v44 - 8232;
                if ((v44 - 8232) <= 0x37 && ((1 << v45) & 0x80000000000083) != 0)
                {
                  goto LABEL_1315;
                }

                if (v44 == 12288)
                {
                  goto LABEL_1315;
                }
              }

              v258 = _pcre2_ucp_gentype_8[*(v27 + 1)] == 6;
LABEL_1289:
              LODWORD(v27) = v258;
              goto LABEL_1292;
            }

            if (v45 == 8)
            {
              LODWORD(v45) = _pcre2_ucp_gentype_8[*(v27 + 1)] | 2;
              LODWORD(v27) = v336;
              if (v45 != 3)
              {
                goto LABEL_1292;
              }

              goto LABEL_1315;
            }
          }
        }

        else
        {
          LODWORD(v10) = v362;
          if (v53[1] <= 2u)
          {
            if (!v53[1])
            {
              goto LABEL_1315;
            }

            if (v45 != 1)
            {
              v148 = _pcre2_ucp_gentype_8[*(v27 + 1)];
LABEL_1288:
              v258 = v148 == v53[2];
              goto LABEL_1289;
            }

            v304 = *(v27 + 1);
            v48 = v304 > 9;
            LODWORD(v27) = (1 << v304) & 0x320;
            if (!v48 && v27 != 0)
            {
LABEL_1315:
              if (v54 != 16)
              {
                goto LABEL_1326;
              }

              goto LABEL_1316;
            }

LABEL_1284:
            if (v54 == 16)
            {
              goto LABEL_1326;
            }

LABEL_1316:
            if (v10 >= v25)
            {
              return 4294967253;
            }

            v362 = v10 + 1;
            LODWORD(v27) = v52 + 3;
            goto LABEL_1323;
          }

          switch(v45)
          {
            case 3:
              v148 = *(v27 + 1);
              goto LABEL_1288;
            case 4:
              v148 = *v27;
              goto LABEL_1288;
            case 5:
              v258 = (_pcre2_ucp_gentype_8[*(v27 + 1)] & 0xFFFFFFFD) == 1;
              goto LABEL_1289;
          }
        }

        LODWORD(v27) = v54 != 16;
        goto LABEL_1292;
      case 17:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        if (v44 <= 12)
        {
          v206 = v362;
          if ((v44 - 11) < 2)
          {
            goto LABEL_1027;
          }

          if (v44 != 10)
          {
            goto LABEL_1326;
          }

          goto LABEL_1273;
        }

        v206 = v362;
        if ((v44 - 8232) < 2)
        {
          goto LABEL_1027;
        }

        if (v44 != 13)
        {
          if (v44 != 133)
          {
            goto LABEL_1326;
          }

LABEL_1027:
          if (*(v19 + 128) == 2)
          {
            goto LABEL_1326;
          }

          goto LABEL_1273;
        }

        v27 = (v355 + 1);
        LODWORD(v45) = v346;
        if ((v355 + 1) < v346)
        {
          if (*v27 == 10)
          {
            if (v362 >= v25)
            {
              return 4294967253;
            }

            ++v362;
            v45 = v361;
            *v361 = ~v52;
            *(v361 + 1) = 0x100000000;
LABEL_1325:
            v361 = (v45 + 12);
            goto LABEL_1326;
          }

LABEL_1273:
          if (v206 >= v25)
          {
            return 4294967253;
          }

          v362 = v206 + 1;
LABEL_672:
          LODWORD(v27) = v52 + 1;
LABEL_1323:
          v45 = v361;
LABEL_1324:
          *v45 = v27;
          *(v45 + 4) = 0;
          goto LABEL_1325;
        }

        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        *v361 = v52 + 1;
        v361[1] = 0;
        v361 += 3;
        v60 = (*(v19 + 108) & 0x20) == 0;
        goto LABEL_88;
      case 18:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = v44 - 0x2000;
        if (v44 < 0x2000)
        {
          LODWORD(v45) = v362;
          if (v44 <= 159)
          {
            if (v44 == 9 || v44 == 32)
            {
              goto LABEL_1326;
            }
          }

          else if (v44 == 160 || v44 == 5760 || v44 == 6158)
          {
            goto LABEL_1326;
          }
        }

        else
        {
          LODWORD(v45) = v362;
          if (v44 > 8238)
          {
            if (v44 == 8239 || v44 == 8287 || v44 == 12288)
            {
              goto LABEL_1326;
            }
          }

          else if (v27 < 0xB)
          {
            goto LABEL_1326;
          }
        }

        goto LABEL_635;
      case 19:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = v44 - 0x2000;
        if (v44 < 0x2000)
        {
          LODWORD(v45) = v362;
          if (v44 <= 159)
          {
            if (v44 != 9 && v44 != 32)
            {
              goto LABEL_1326;
            }
          }

          else if (v44 != 160 && v44 != 5760 && v44 != 6158)
          {
            goto LABEL_1326;
          }
        }

        else
        {
          LODWORD(v45) = v362;
          if (v44 > 8238)
          {
            if (v44 != 8239 && v44 != 8287 && v44 != 12288)
            {
              goto LABEL_1326;
            }
          }

          else if (v27 >= 0xB)
          {
            goto LABEL_1326;
          }
        }

LABEL_635:
        if (v45 >= v25)
        {
          return 4294967253;
        }

        v362 = v45 + 1;
        goto LABEL_672;
      case 20:
        if (v50 < 1 || (v44 - 10) < 4 || (v44 - 8232) < 2 || v44 == 133)
        {
          goto LABEL_1326;
        }

        goto LABEL_670;
      case 21:
        if (v50 < 1 || (v44 - 10) >= 4 && (v44 - 8232) >= 2 && v44 != 133)
        {
          goto LABEL_1326;
        }

LABEL_670:
        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        goto LABEL_672;
      case 22:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        v188 = v41;
        LODWORD(v363) = 0;
        v189 = v50;
        v190 = v19;
        if (_pcre2_extuni_8(v44, &v355[v50], *(v19 + 32), v346, v341, &v363) >= v346)
        {
          v191 = v360;
          if ((*(v190 + 108) & 0x20) != 0)
          {
            v191 = 1;
          }

          v360 = v191;
        }

        v19 = v190;
        v25 = v350;
        LODWORD(v27) = v362;
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v44 = v357;
        if (v362 >= v350)
        {
          return 4294967253;
        }

        v41 = v188;
        v50 = v189;
        ++v362;
        v45 = v361;
        *v361 = ~v52;
        v361[1] = 0;
        v361[2] = v363;
        goto LABEL_1325;
      case 23:
        if (v50)
        {
          v198 = *(v19 + 116);
          v199 = *(v19 + 40);
          v200 = v355;
          if (!v198)
          {
            v27 = *(v19 + 120);
            if (v355 > v199 - v27)
            {
              goto LABEL_1228;
            }

            v43 = v352;
            if (*v355 != *(v19 + 124) || v27 != 1 && v355[1] != *(v19 + 125))
            {
              goto LABEL_1326;
            }

            goto LABEL_642;
          }

          if (v355 < v199)
          {
            v88 = v50;
            v196 = v41;
            v197 = v19;
            if (_pcre2_is_newline_8(v355, v198, v199, (v19 + 120), v341))
            {
              v27 = *(v197 + 120);
              v19 = v197;
              v13 = v351;
              v43 = v352;
              v15 = v349;
              v24 = v348;
              v25 = v350;
              v200 = v355;
              v41 = v196;
              v44 = v357;
              v50 = v88;
LABEL_642:
              LODWORD(v45) = v346;
              if (v200 != (v346 - v27))
              {
                goto LABEL_1326;
              }

              goto LABEL_998;
            }

LABEL_1127:
            v19 = v197;
            v13 = v351;
            v43 = v352;
            v15 = v349;
            v24 = v348;
            v25 = v350;
            v41 = v196;
LABEL_441:
            v44 = v357;
            v50 = v88;
            goto LABEL_1326;
          }

LABEL_1228:
          v43 = v352;
          goto LABEL_1326;
        }

        if ((*(v19 + 108) & 0x20) == 0)
        {
LABEL_998:
          if (v36 >= v25)
          {
            return 4294967253;
          }

          v36 = (v36 + 1);
          LODWORD(v27) = v52 + 1;
          goto LABEL_1000;
        }

        goto LABEL_941;
      case 24:
        LODWORD(v27) = v346;
        if (v355 < v346)
        {
          goto LABEL_1326;
        }

        if ((*(v19 + 108) & 0x20) == 0)
        {
          goto LABEL_998;
        }

        goto LABEL_942;
      case 25:
        LODWORD(v27) = *(v19 + 108);
        if ((v27 & 2) != 0)
        {
          goto LABEL_1326;
        }

        if (!v50 && (v27 & 0x20) != 0)
        {
          goto LABEL_941;
        }

        v182 = v355;
        if (!v50)
        {
          goto LABEL_1378;
        }

        if ((*(v19 + 112) & 0x10) != 0)
        {
          goto LABEL_1384;
        }

        v201 = *(v19 + 116);
        v202 = *(v19 + 40);
        if (v201)
        {
          if (v355 >= v202)
          {
            goto LABEL_1384;
          }

          v203 = v41;
          v204 = v50;
          is_newline_8 = _pcre2_is_newline_8(v355, v201, v202, (v19 + 120), v341);
          v50 = v204;
          v44 = v357;
          v41 = v203;
          v25 = v350;
          v24 = v348;
          v15 = v349;
          v13 = v351;
          v19 = a1;
          if (!is_newline_8)
          {
            goto LABEL_1384;
          }

          v27 = *(a1 + 120);
        }

        else
        {
          v27 = *(v19 + 120);
          if (v355 > v202 - v27 || *v355 != *(v19 + 124) || v27 != 1 && v355[1] != *(v19 + 125))
          {
            goto LABEL_1384;
          }
        }

        LODWORD(v45) = v346;
        if (v355 == (v346 - v27))
        {
          goto LABEL_1378;
        }

        goto LABEL_1384;
      case 26:
        LODWORD(v27) = *(v19 + 108);
        if ((v27 & 2) == 0)
        {
          if (v50 || (v27 & 0x20) == 0)
          {
            v182 = v355;
            if (!v50)
            {
LABEL_1378:
              if (v36 >= v25)
              {
                return 4294967253;
              }

              v36 = (v36 + 1);
              *v47 = v52 + 1;
              v47 += 12;
              goto LABEL_1228;
            }

            if ((*(v19 + 112) & 0x10) == 0)
            {
              v183 = *(v19 + 116);
              v184 = *(v19 + 40);
              if (v183)
              {
                if (v355 < v184)
                {
                  v185 = v41;
                  v186 = v50;
                  v187 = _pcre2_is_newline_8(v355, v183, v184, (v19 + 120), v341);
                  v50 = v186;
                  v44 = v357;
                  v41 = v185;
                  v25 = v350;
                  v24 = v348;
                  v15 = v349;
                  v13 = v351;
                  v19 = a1;
                  if (v187)
                  {
                    goto LABEL_1378;
                  }
                }
              }

              else
              {
                v27 = *(v19 + 120);
                if (v355 <= v184 - v27 && *v355 == *(v19 + 124) && (v27 == 1 || v355[1] == *(v19 + 125)))
                {
                  goto LABEL_1378;
                }
              }
            }

LABEL_1384:
            if ((v182 + 1) >= *(v19 + 40))
            {
              LODWORD(v27) = *(v19 + 108);
              v43 = v352;
              if ((v27 & 0x30) == 0 || *(v19 + 116) || *(v19 + 120) != 2 || v44 != *(v19 + 124))
              {
                goto LABEL_1326;
              }

              if ((v27 & 0x20) != 0)
              {
                if (v362 >= v350)
                {
                  return 4294967253;
                }

                ++v362;
                *v361 = ~v52;
                *(v361 + 1) = 0x100000000;
                v361 += 3;
                v360 = 1;
              }

              else
              {
                v333 = 1;
                v41 = 1;
              }

              v19 = a1;
              v13 = v351;
              v43 = v352;
              v15 = v349;
              v24 = v348;
              v25 = v350;
              goto LABEL_485;
            }

            goto LABEL_1228;
          }

LABEL_941:
          v50 = 0;
LABEL_942:
          v41 = 1;
          goto LABEL_1326;
        }

        v224 = *(v19 + 116);
        v225 = *(v19 + 40);
        if (v224)
        {
          if (v355 >= v225)
          {
            goto LABEL_1228;
          }

          v179 = v41;
          v180 = v50;
          v181 = _pcre2_is_newline_8(v355, v224, v225, (v19 + 120), v341);
          goto LABEL_813;
        }

        v27 = *(v19 + 120);
        LODWORD(v10) = v355;
        if (v355 > v225 - v27)
        {
          goto LABEL_1228;
        }

        v43 = v352;
        if (*v355 != *(v19 + 124))
        {
          goto LABEL_1326;
        }

        if (v27 == 1)
        {
          goto LABEL_998;
        }

        LODWORD(v27) = v355[1];
        goto LABEL_1139;
      case 27:
        if (v355 != v13 || (*(v19 + 108) & 1) != 0)
        {
          goto LABEL_1326;
        }

        goto LABEL_998;
      case 28:
        if (v355 == v13 && (*(v19 + 108) & 1) == 0)
        {
          goto LABEL_998;
        }

        LODWORD(v27) = v346;
        if (v355 == v346 && (*(v19 + 114) & 0x20) == 0)
        {
          goto LABEL_1326;
        }

        v177 = *(v19 + 116);
        v178 = *(v19 + 32);
        if (v177)
        {
          if (v355 <= v178)
          {
            goto LABEL_1228;
          }

          v179 = v41;
          v180 = v50;
          v181 = _pcre2_was_newline_8(v355, v177, v178, (v19 + 120), v341);
LABEL_813:
          v50 = v180;
          v44 = v357;
          v41 = v179;
          v25 = v350;
          v24 = v348;
          v15 = v349;
          v13 = v351;
          v43 = v352;
          v19 = a1;
          if (!v181)
          {
            goto LABEL_1326;
          }

          goto LABEL_998;
        }

        v27 = *(v19 + 120);
        if (v355 < v178 + v27)
        {
          goto LABEL_1228;
        }

        v43 = v352;
        if (v355[-v27] != *(v19 + 124))
        {
          goto LABEL_1326;
        }

        if (v27 == 1)
        {
          goto LABEL_998;
        }

        LODWORD(v27) = v355[-v27 + 1];
LABEL_1139:
        if (v27 != *(v19 + 125))
        {
          goto LABEL_1326;
        }

        goto LABEL_998;
      case 29:
        if (v50 < 1 || v44 != v55)
        {
          goto LABEL_1326;
        }

        goto LABEL_605;
      case 30:
        if (!v50)
        {
          goto LABEL_1326;
        }

        if (v24)
        {
          LODWORD(v10) = v362;
          if (v44 != v55)
          {
            LODWORD(v45) = v44 > 0x7F ? _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344] + 1] + v44 : *(v332 + v343);
            if (v55 != v45)
            {
              goto LABEL_1326;
            }
          }

          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
LABEL_1322:
          LODWORD(v27) = v52 + v27 + 1;
        }

        else
        {
          if (*(v347 + v343) != *(v347 + v55))
          {
            goto LABEL_1326;
          }

          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          LODWORD(v27) = v52 + 2;
        }

        goto LABEL_1323;
      case 31:
        if (v50 < 1 || v44 == v55)
        {
          goto LABEL_1326;
        }

LABEL_605:
        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        goto LABEL_1322;
      case 32:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v45) = v24 && v55 >= 0x80 ? _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v55 + (_pcre2_ucd_stage1_8[v55 / 128] << 7)] + 1] + v55 : *(v332 + v55);
        if (v44 == v55 || v44 == v45)
        {
          goto LABEL_1326;
        }

        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        goto LABEL_1322;
      case 33:
      case 34:
      case 42:
      case 59:
      case 60:
      case 68:
        goto LABEL_116;
      case 35:
      case 36:
      case 43:
      case 61:
      case 62:
      case 69:
        goto LABEL_134;
      case 37:
      case 38:
      case 44:
      case 63:
      case 64:
      case 70:
        goto LABEL_129;
      case 39:
      case 40:
      case 45:
      case 65:
      case 66:
      case 71:
        goto LABEL_124;
      case 41:
      case 67:
        if (v50 <= 0)
        {
          goto LABEL_1326;
        }

        LODWORD(v45) = v51[1];
        v153 = -1;
        goto LABEL_769;
      case 46:
      case 47:
      case 55:
      case 72:
      case 73:
      case 81:
        LOBYTE(v45) = 0;
        LODWORD(v54) = v54 - 13;
LABEL_116:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v65 = (v36 + 1);
        *v47 = v52 + v27 + 1;
        *(v47 + 4) = 0;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_503;
        }

        if (v45)
        {
          v66 = -1;
        }

        else if (v24 && v55 >= 0x80)
        {
          v44 = v357;
          v66 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[(v55 - (v10 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v55 / 128] << 7))] + 1] + v55;
        }

        else
        {
          v66 = *(v332 + v55);
        }

        v163 = v44 == v55 || v44 == v66;
        LODWORD(v45) = v163;
        if (v54 > 0x3A == v45)
        {
          goto LABEL_503;
        }

        if (v54 == 68 || v54 == 42)
        {
          v65 = v36;
          v27 = v47;
        }

        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        v45 = v361;
        *v361 = v52;
        goto LABEL_502;
      case 48:
      case 49:
      case 56:
      case 74:
      case 75:
      case 82:
        LOBYTE(v45) = 0;
        LODWORD(v54) = v54 - 13;
LABEL_134:
        v69 = v51[1];
        if (v69 < 1)
        {
          goto LABEL_137;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + v27 + 1;
        v47 += 12;
LABEL_137:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        if (v45)
        {
          v70 = -1;
        }

        else
        {
          v70 = v24 && v55 >= 0x80 ? _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[(v55 - (v45 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v55 / 128] << 7))] + 1] + v55 : *(v332 + v55);
        }

        v160 = v44 == v55 || v44 == v70;
        LODWORD(v27) = v160;
        if (v54 > 0x3A == v27)
        {
          goto LABEL_1326;
        }

        if (v69 >= 1 && (v54 == 69 || v54 == 43))
        {
          v36 = (v36 - 1);
          v47 -= 12;
        }

        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        LODWORD(v27) = v69 + 1;
        goto LABEL_456;
      case 50:
      case 51:
      case 57:
      case 76:
      case 77:
      case 83:
        LOBYTE(v45) = 0;
        LODWORD(v54) = v54 - 13;
LABEL_129:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v65 = (v36 + 1);
        LODWORD(v10) = v52 + v27 + 1;
        *v47 = v10;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_503;
        }

        if (v45)
        {
          v68 = -1;
        }

        else if (v24 && v55 >= 0x80)
        {
          v104 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v55 - (v44 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v55 / 128] << 7)]];
          v44 = v357;
          v68 = v104[1] + v55;
        }

        else
        {
          v68 = *(v332 + v55);
        }

        LODWORD(v45) = v44 == v55 || v44 == v68;
        if (v54 > 0x3A == v45)
        {
          goto LABEL_484;
        }

        if (v54 == 70 || v54 == 44)
        {
          v65 = v36;
          v27 = v47;
        }

        v44 = v357;
        v45 = v361;
        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        goto LABEL_488;
      case 52:
      case 53:
      case 58:
      case 78:
      case 79:
      case 84:
        LOBYTE(v45) = 0;
        LODWORD(v54) = v54 - 13;
LABEL_124:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v65 = (v36 + 1);
        LODWORD(v10) = v52 + v27 + 3;
        *v47 = v10;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_503;
        }

        if (v45)
        {
          v67 = -1;
        }

        else if (v24 && v55 >= 0x80)
        {
          v44 = v357;
          v67 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[(v55 - (v45 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v55 / 128] << 7))] + 1] + v55;
        }

        else
        {
          v67 = *(v332 + v55);
        }

        LODWORD(v45) = v44 == v55 || v44 == v67;
        if (v54 > 0x3A == v45)
        {
LABEL_484:
          v36 = v65;
          v47 = v27;
          goto LABEL_485;
        }

        if (v54 == 71 || v54 == 45)
        {
          v65 = v36;
          v27 = v47;
        }

        LODWORD(v45) = v51[1] + 1;
        if (v45 >= (bswap32(*(v53 + 1)) >> 16))
        {
          v44 = v357;
          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          v45 = v361;
LABEL_488:
          *v45 = v10;
LABEL_502:
          *(v45 + 4) = 0;
          v361 = (v45 + 12);
        }

        else
        {
          LODWORD(v10) = v362;
          v44 = v357;
          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          *v361 = v52;
          v361[1] = v45;
          v361 += 3;
        }

        goto LABEL_503;
      case 54:
      case 80:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v54) = v54 - 13;
        LODWORD(v45) = v51[1];
        if (v24 && v55 >= 0x80)
        {
          LODWORD(v10) = v55 + 127;
          if ((v55 & 0x80000000) == 0)
          {
            LODWORD(v10) = v55;
          }

          v44 = v357;
          v153 = _pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[(v55 - (v10 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v10 >> 7] << 7))] + 1] + v55;
        }

        else
        {
          v153 = *(v332 + v55);
        }

LABEL_769:
        v222 = v44 == v55 || v44 == v153;
        if (v54 > 0x3A == v222)
        {
          goto LABEL_1326;
        }

        LODWORD(v45) = v45 + 1;
        if (v45 >= (bswap32(*(v53 + 1)) >> 16))
        {
          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          LODWORD(v27) = v52 + v27 + 3;
          goto LABEL_1323;
        }

        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
        v27 = v361;
        *v361 = v52;
        v361[1] = v45;
        goto LABEL_1236;
      case 85:
      case 86:
      case 94:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v119 = (v36 + 1);
        *v47 = v52 + 2;
        v120 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_320;
        }

        if (v55 != 12)
        {
          v121 = v362;
          if (v44 < 0x100)
          {
LABEL_1219:
            if ((toptable1[v55] & *(v330 + v343)) != toptable2[v55])
            {
LABEL_1220:
              v43 = v352;
              if (v121 >= v25)
              {
                return 4294967253;
              }

              v362 = v121 + 1;
              v292 = v54 == 94;
LABEL_1231:
              if (v292)
              {
                v36 = v36;
              }

              else
              {
                v47 = v120;
                v36 = v119;
              }

LABEL_1234:
              v27 = v361;
              *v361 = v52;
LABEL_1235:
              *(v27 + 4) = 0;
              goto LABEL_1236;
            }

LABEL_1227:
            v36 = v119;
            v47 = v120;
            goto LABEL_1228;
          }

LABEL_726:
          if (v55 > 0xB || ((1 << v55) & 0xA80) == 0)
          {
            goto LABEL_1220;
          }

          goto LABEL_1227;
        }

        v121 = v362;
        if ((v355 + 1) < *(v19 + 40) || (*(v19 + 108) & 0x20) == 0 || *(v19 + 116) || *(v19 + 120) != 2 || v44 != *(v19 + 124))
        {
          if (v44 <= 0xFF)
          {
            v122 = *(v19 + 116);
            v123 = *(v19 + 40);
            if (v122)
            {
              LODWORD(v27) = v355;
              if (v355 < v123)
              {
                v124 = v41;
                v316 = v50;
                v125 = _pcre2_is_newline_8(v355, v122, v123, (v19 + 120), v341);
                v50 = v316;
                v44 = v357;
                v41 = v124;
                v121 = v362;
                v25 = v350;
                v24 = v348;
                v15 = v349;
                v13 = v351;
                v19 = a1;
                if (v125)
                {
                  goto LABEL_1227;
                }
              }
            }

            else
            {
              v45 = *(v19 + 120);
              if (v355 <= v123 - v45 && *v355 == *(v19 + 124) && (v45 == 1 || v355[1] == *(v19 + 125)))
              {
                goto LABEL_1227;
              }
            }

            goto LABEL_1219;
          }

          goto LABEL_726;
        }

        goto LABEL_319;
      case 87:
      case 88:
      case 95:
        v112 = v51[1];
        if (v112 < 1)
        {
          goto LABEL_266;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 2;
        v47 += 12;
LABEL_266:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        if (v55 != 12)
        {
          v113 = v362;
          if (v44 < 0x100)
          {
            goto LABEL_1175;
          }

          goto LABEL_698;
        }

        v113 = v362;
        if ((v355 + 1) < *(v19 + 40) || (*(v19 + 108) & 0x20) == 0 || *(v19 + 116) || *(v19 + 120) != 2 || v44 != *(v19 + 124))
        {
          if (v44 <= 0xFF)
          {
            v114 = *(v19 + 116);
            v115 = *(v19 + 40);
            if (v114)
            {
              LODWORD(v27) = v355;
              if (v355 < v115)
              {
                v116 = v41;
                v117 = v50;
                v118 = _pcre2_is_newline_8(v355, v114, v115, (v19 + 120), v341);
                v50 = v117;
                v113 = v362;
                v44 = v357;
                v41 = v116;
                v25 = v350;
                v24 = v348;
                v15 = v349;
                v13 = v351;
                v19 = a1;
                if (v118)
                {
                  goto LABEL_1228;
                }
              }
            }

            else
            {
              v45 = *(v19 + 120);
              if (v355 <= v115 - v45 && *v355 == *(v19 + 124) && (v45 == 1 || v355[1] == *(v19 + 125)))
              {
                goto LABEL_1228;
              }
            }

LABEL_1175:
            if ((toptable1[v55] & *(v330 + v343)) == toptable2[v55])
            {
              goto LABEL_1228;
            }

            goto LABEL_1176;
          }

LABEL_698:
          if (v55 <= 0xB && ((1 << v55) & 0xA80) != 0)
          {
            goto LABEL_1228;
          }

LABEL_1176:
          v43 = v352;
          if (v113 >= v25)
          {
            return 4294967253;
          }

          v362 = v113 + 1;
          v288 = -12;
          if (v54 != 95 || v112 <= 0)
          {
            v288 = 0;
          }

          v47 += v288;
          v36 = v36 - (v54 == 95 && v112 > 0);
          LODWORD(v27) = v112 + 1;
          goto LABEL_456;
        }

        goto LABEL_691;
      case 89:
      case 90:
      case 96:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v119 = (v36 + 1);
        v52 += 2;
        *v47 = v52;
        v120 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_320;
        }

        if (v55 == 12)
        {
          v133 = v362;
          if ((v355 + 1) >= *(v19 + 40) && (*(v19 + 108) & 0x20) != 0 && !*(v19 + 116) && *(v19 + 120) == 2 && v44 == *(v19 + 124))
          {
LABEL_319:
            v333 = 1;
            v41 = 1;
LABEL_320:
            v36 = v119;
            v47 = v120;
            goto LABEL_1326;
          }

          if (v44 > 0xFF)
          {
            goto LABEL_736;
          }

          v233 = *(v19 + 116);
          v234 = *(v19 + 40);
          if (v233)
          {
            LODWORD(v27) = v355;
            if (v355 < v234)
            {
              v235 = v41;
              v318 = v50;
              v236 = _pcre2_is_newline_8(v355, v233, v234, (v19 + 120), v341);
              v50 = v318;
              v44 = v357;
              v41 = v235;
              v133 = v362;
              v25 = v350;
              v24 = v348;
              v15 = v349;
              v13 = v351;
              v19 = a1;
              if (v236)
              {
                goto LABEL_1227;
              }
            }
          }

          else
          {
            v45 = *(v19 + 120);
            if (v355 <= v234 - v45 && *v355 == *(v19 + 124) && (v45 == 1 || v355[1] == *(v19 + 125)))
            {
              goto LABEL_1227;
            }
          }
        }

        else
        {
          v133 = v362;
          if (v44 >= 0x100)
          {
LABEL_736:
            if (v55 <= 0xB && ((1 << v55) & 0xA80) != 0)
            {
              goto LABEL_1227;
            }

            goto LABEL_1229;
          }
        }

        if ((toptable1[v55] & *(v330 + v343)) == toptable2[v55])
        {
          goto LABEL_1227;
        }

LABEL_1229:
        v43 = v352;
        if (v133 >= v25)
        {
          return 4294967253;
        }

        v362 = v133 + 1;
        v292 = v54 == 96;
        goto LABEL_1231;
      case 91:
      case 92:
      case 97:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v109 = (v36 + 1);
        *v47 = v52 + 4;
        v110 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_262;
        }

        v111 = v51[1];
        if (v55 == 12)
        {
          if ((v355 + 1) >= *(v19 + 40) && (*(v19 + 108) & 0x20) != 0 && !*(v19 + 116) && *(v19 + 120) == 2 && v44 == *(v19 + 124))
          {
            v333 = 1;
            v41 = 1;
LABEL_262:
            v36 = (v36 + 1);
            v47 += 12;
            goto LABEL_1326;
          }

          if (v44 > 0xFF)
          {
LABEL_732:
            if (v55 > 0xB || ((1 << v55) & 0xA80) == 0)
            {
LABEL_1205:
              if (v54 == 97)
              {
                v36 = v36;
              }

              else
              {
                v36 = v109;
              }

              if (v54 != 97)
              {
                v47 = v110;
              }

              LODWORD(v27) = v111 + 1;
              v43 = v352;
              if ((v111 + 1) >= (bswap32(*(v53 + 1)) >> 16))
              {
                if (v362 >= v25)
                {
                  return 4294967253;
                }

                ++v362;
                v27 = v361;
                *v361 = v52 + 4;
                goto LABEL_1235;
              }

              if (v362 >= v25)
              {
                return 4294967253;
              }

              ++v362;
LABEL_456:
              v45 = v361;
              *v361 = v52;
              v361[1] = v27;
              goto LABEL_1325;
            }

LABEL_1204:
            v36 = v109;
            v47 = v110;
            goto LABEL_1228;
          }

          v230 = *(v19 + 116);
          v231 = *(v19 + 40);
          if (v230)
          {
            LODWORD(v27) = v355;
            if (v355 < v231)
            {
              v329 = v41;
              v317 = v50;
              v232 = _pcre2_is_newline_8(v355, v230, v231, (v19 + 120), v341);
              v109 = (v36 + 1);
              v110 = v47 + 12;
              v50 = v317;
              v44 = v357;
              v41 = v329;
              v25 = v350;
              v24 = v348;
              v15 = v349;
              v13 = v351;
              v19 = a1;
              if (v232)
              {
                goto LABEL_1204;
              }
            }
          }

          else
          {
            v45 = *(v19 + 120);
            if (v355 <= v231 - v45 && *v355 == *(v19 + 124) && (v45 == 1 || v355[1] == *(v19 + 125)))
            {
              goto LABEL_1204;
            }
          }
        }

        else if (v44 >= 0x100)
        {
          goto LABEL_732;
        }

        if ((toptable1[v55] & *(v330 + v343)) != toptable2[v55])
        {
          goto LABEL_1205;
        }

        goto LABEL_1204;
      case 93:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        v215 = v51[1];
        if (v55 == 12)
        {
          v27 = (v355 + 1);
          v99 = v362;
          if ((v355 + 1) >= *(v19 + 40) && (*(v19 + 108) & 0x20) != 0 && !*(v19 + 116) && *(v19 + 120) == 2 && v44 == *(v19 + 124))
          {
LABEL_691:
            v333 = 1;
            goto LABEL_942;
          }

          if (v44 > 0xFF)
          {
            goto LABEL_1011;
          }

          v296 = *(v19 + 116);
          v297 = *(v19 + 40);
          if (v296)
          {
            if (v355 < v297)
            {
              v298 = v41;
              v299 = v50;
              v300 = _pcre2_is_newline_8(v355, v296, v297, (v19 + 120), v341);
              v50 = v299;
              v99 = v362;
              v44 = v357;
              v41 = v298;
              v25 = v350;
              v24 = v348;
              v15 = v349;
              v13 = v351;
              v19 = a1;
              if (v300)
              {
                goto LABEL_1228;
              }
            }
          }

          else
          {
            v45 = *(v19 + 120);
            if (v355 <= v297 - v45 && *v355 == *(v19 + 124) && (v45 == 1 || *v27 == *(v19 + 125)))
            {
              goto LABEL_1228;
            }
          }
        }

        else
        {
          v99 = v362;
          if (v44 >= 0x100)
          {
LABEL_1011:
            if (v55 <= 0xB && ((1 << v55) & 0xA80) != 0)
            {
              goto LABEL_1228;
            }

            goto LABEL_1353;
          }
        }

        if ((toptable1[v55] & *(v330 + v343)) == toptable2[v55])
        {
          goto LABEL_1228;
        }

LABEL_1353:
        LODWORD(v27) = v215 + 1;
        v43 = v352;
        if ((v215 + 1) >= (bswap32(*(v53 + 1)) >> 16))
        {
          if (v99 >= v25)
          {
            return 4294967253;
          }

          v362 = v99 + 1;
          LODWORD(v27) = v52 + 4;
          goto LABEL_1323;
        }

LABEL_1149:
        if (v99 >= v25)
        {
          return 4294967253;
        }

        v362 = v99 + 1;
        goto LABEL_456;
      case 110:
      case 111:
      case 112:
        if (v54 == 112)
        {
          v126 = &v53[__rev16(*(v53 + 1))];
          if (v50 >= 1)
          {
            v127 = v41;
            v128 = v50;
            v129 = _pcre2_xclass_8(v44, v53 + 3);
            v50 = v128;
            v44 = v357;
            v41 = v127;
            v13 = v351;
            v43 = v352;
            v25 = v350;
            v24 = v348;
            v15 = v349;
            v19 = a1;
            goto LABEL_839;
          }

          goto LABEL_554;
        }

        v126 = v53 + 33;
        if (v50 < 1)
        {
LABEL_554:
          v129 = 0;
          goto LABEL_839;
        }

        if (v44 < 0x100)
        {
          v129 = (v53[v335 + 1] >> v334) & 1;
        }

        else
        {
          v129 = v54 == 111;
        }

LABEL_839:
        LODWORD(v27) = v126 - v15;
        LODWORD(v45) = *v126;
        if (v45 <= 0x67)
        {
          if ((v45 - 98) >= 2)
          {
            if ((v45 - 100) >= 2)
            {
              if ((v45 - 102) >= 2)
              {
                goto LABEL_1080;
              }

              goto LABEL_872;
            }

LABEL_863:
            LODWORD(v45) = v51[1];
            if (v45 < 1)
            {
              if (!v129)
              {
                goto LABEL_1326;
              }
            }

            else
            {
              if (v36 >= v25)
              {
                return 4294967253;
              }

              v65 = (v36 + 1);
              *v47 = v27 + 1;
              *(v47 + 4) = 0;
              v27 = v47 + 12;
              if (!v129)
              {
LABEL_503:
                v36 = v65;
LABEL_1052:
                v47 = v27;
                goto LABEL_1326;
              }

              LODWORD(v10) = *v126;
              if (v10 == 107)
              {
                v36 = v36;
              }

              else
              {
                v36 = v65;
              }

              if (v10 != 107)
              {
                v47 += 12;
              }
            }

            if (v362 >= v25)
            {
              return 4294967253;
            }

            ++v362;
            LODWORD(v27) = v45 + 1;
            goto LABEL_456;
          }

LABEL_847:
          if (v36 >= v25)
          {
            return 4294967253;
          }

          v45 = (v36 + 1);
          *v47 = v27 + 1;
          *(v47 + 4) = 0;
          v27 = v47 + 12;
          if (v129)
          {
            if (v362 >= v25)
            {
              return 4294967253;
            }

            ++v362;
            if (*v126 == 106)
            {
              v36 = v36;
            }

            else
            {
              v47 += 12;
              v36 = v45;
            }

            goto LABEL_1234;
          }

          goto LABEL_1051;
        }

        if (*v126 > 0x6Au)
        {
          if (v45 == 107)
          {
            goto LABEL_863;
          }

          if (v45 == 108)
          {
LABEL_872:
            if (v36 >= v25)
            {
              return 4294967253;
            }

            v45 = (v36 + 1);
            v228 = v27 + 1;
            *v47 = (v27 + 1);
            v27 = v47 + 12;
            if (v129)
            {
              LODWORD(v10) = v362;
              if (v362 >= v25)
              {
                return 4294967253;
              }

              ++v362;
              if (*v126 == 108)
              {
                v36 = v36;
              }

              else
              {
                v47 += 12;
                v36 = v45;
              }

              v27 = v361;
              *v361 = v228;
              goto LABEL_1235;
            }

            goto LABEL_1051;
          }

          if (v45 != 109)
          {
            goto LABEL_1080;
          }
        }

        else if ((v45 - 104) >= 2)
        {
          if (v45 == 106)
          {
            goto LABEL_847;
          }

LABEL_1080:
          if (!v129)
          {
            goto LABEL_1326;
          }

          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          goto LABEL_1323;
        }

        LODWORD(v45) = v51[1];
        if (v45 >= (bswap32(*(v126 + 1)) >> 16))
        {
          if (v36 >= v25)
          {
            return 4294967253;
          }

          v36 = (v36 + 1);
          *v47 = (v27 + 5);
          v47 += 12;
        }

        if (!v129)
        {
          goto LABEL_1326;
        }

        if (*v126 == 109)
        {
          LODWORD(v10) = v362;
          if (v45 >= (bswap32(*(v126 + 1)) >> 16))
          {
            v36 = (v36 - 1);
            v47 -= 12;
          }
        }

        else
        {
          LODWORD(v10) = v362;
        }

        v280 = __rev16(*(v126 + 3));
        LODWORD(v45) = v45 + 1;
        if (v45 >= v280 && v280)
        {
          if (v10 >= v25)
          {
            return 4294967253;
          }

          LODWORD(v45) = 0;
          v52 = v27 + 5;
        }

        else if (v10 >= v25)
        {
          return 4294967253;
        }

        v27 = v361;
        *v361 = v52;
        v361[1] = v45;
        v362 = v10 + 1;
LABEL_1236:
        v361 = (v27 + 12);
        goto LABEL_1326;
      case 117:
        v174 = a10;
        v363 = a10;
        v175 = v15 + __rev16(*(v53 + 1));
        if (v175 == *(v19 + 24))
        {
          v176 = 0;
        }

        else
        {
          v176 = __rev16(*(v175 + 3));
        }

        v239 = *(a10 + 12);
        if (v239 > 0xBB7)
        {
          goto LABEL_920;
        }

        v240 = v50;
        v241 = v41;
        result = more_workspace(&v363, 2000, v19);
        if (result)
        {
          return result;
        }

        v174 = v363;
        v239 = *(v363 + 12);
        v19 = a1;
        v13 = v351;
        v41 = v241;
        v50 = v240;
LABEL_920:
        v242 = *(v174 + 8);
        *(v174 + 12) = v239 - 3000;
        v243 = *(v19 + 160);
        if (!v243)
        {
          goto LABEL_925;
        }

        v244 = *(v19 + 160);
        do
        {
          if (v176 == *(v244 + 4) && v355 == v244[1])
          {
            return 4294967244;
          }

          v244 = *v244;
        }

        while (v244);
LABEL_925:
        v245 = v50;
        v246 = v41;
        v247 = v174 + 4 * v242 - 4 * v239;
        LODWORD(v366) = v176;
        v364 = v243;
        v365 = v355;
        *(v19 + 160) = &v364;
        a10 = v174;
        result = internal_dfa_match(v19, v175, v355, v355 - v13, v247, 1000, v247 + 8000, 1000, v354, v174);
        v19 = a1;
        v27 = v364;
        *(v363 + 12) += 3000;
        *(a1 + 160) = v27;
        if (!result)
        {
          return 4294967257;
        }

        v15 = v349;
        if (result >= 1)
        {
          v27 = (2 * result);
          LODWORD(v45) = -3 - v52;
          v13 = v351;
          v43 = v352;
          v24 = v348;
          v248 = v362;
          v249 = v361;
          do
          {
            v250 = (v247 + 8 * ((v27 - 2) & 0xFFFFFFFE));
            v252 = *v250;
            v251 = v250[1];
            v253 = v251 - *v250;
            if (v348 && v251 > v252)
            {
              v254 = &v351[v251];
              v255 = &v351[v252];
              do
              {
                v256 = *v255++;
                v253 -= (v256 & 0xC0) == 128;
              }

              while (v255 < v254);
            }

            if (v253)
            {
              v25 = v350;
              if (v248 >= v350)
              {
                return 4294967253;
              }

              v41 = v246;
              v50 = v245;
              ++v248;
              *v249 = v45;
              v249[1] = 0;
              v249[2] = v253 - 1;
              v249 += 3;
            }

            else
            {
              v25 = v350;
              if (v36 >= v350)
              {
                return 4294967253;
              }

              v41 = v246;
              v50 = v245;
              v36 = (v36 + 1);
              *v47 = v52 + 3;
              *(v47 + 4) = 0;
              v47 += 12;
            }

            v48 = v27 <= 3;
            v27 -= 2;
          }

          while (!v48);
LABEL_1019:
          v361 = v249;
          v362 = v248;
LABEL_485:
          v44 = v357;
          goto LABEL_1326;
        }

        v13 = v351;
        v43 = v352;
        v24 = v348;
        v25 = v350;
        v41 = v246;
        v50 = v245;
        v248 = v362;
        v249 = v361;
        if (result == -1)
        {
          goto LABEL_1019;
        }

        return result;
      case 118:
      case 119:
        v108 = v50;
        v147 = v41;
        v363 = 0;
        result = do_callout(v53, a5, v326, v355, v19, 0, &v363);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!result)
        {
          v25 = v350;
          v19 = a1;
          v13 = v351;
          v43 = v352;
          v15 = v349;
          v24 = v348;
          v44 = v357;
          if (v36 >= v350)
          {
            return 4294967253;
          }

          v41 = v147;
          v50 = v108;
          v36 = (v36 + 1);
          LODWORD(v27) = v52 + v363;
          goto LABEL_1000;
        }

        v19 = a1;
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v25 = v350;
        v41 = v147;
LABEL_395:
        v44 = v357;
        v50 = v108;
LABEL_1326:
        if (++v46 < v36)
        {
          continue;
        }

        v14 = v346;
        if (v362 <= 0)
        {
          v312 = v333 == 0;
          a7 = v338;
          v20 = a9;
          v42 = v355;
          v311 = v339;
LABEL_1414:
          result = v325;
          if (!v20)
          {
            if (v41)
            {
              if (v311 != a7[1])
              {
                v313 = *(v19 + 108);
                if (((v313 & 0x20) != 0 || (v313 & 0x10) != 0 && (v325 & 0x80000000) != 0) && (!v312 || v42 >= v14 && v42 > *(v19 + 48)))
                {
                  return 4294967294;
                }
              }
            }
          }

          if ((v325 & 0x80000000) == 0)
          {
            if (((v42 < v14) & ((*(v19 + 112) | *(v19 + 108)) >> 29)) != 0)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v325;
            }
          }

          return result;
        }

        v41 = v360;
        v36 = v362;
        v26 = v353;
        v353 = v43;
        v42 = &v355[v50];
        a7 = v338;
        v20 = a9;
        goto LABEL_54;
      case 120:
        do
        {
          v53 += __rev16(*(v53 + 1));
        }

        while (*v53 == 120);
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        LODWORD(v27) = v53 - v15;
        goto LABEL_1000;
      case 121:
      case 122:
      case 123:
      case 124:
        if (v53 != v23)
        {
          if (v36 < v25)
          {
            LODWORD(v27) = v36 + 1;
            *v47 = v52 + 3;
            if (v54 == 121)
            {
              v47 += 12;
              v36 = (v36 + 1);
              goto LABEL_1326;
            }

            if (v27 < v25)
            {
              v36 = (v36 + 2);
              LODWORD(v27) = v52 - (bswap32(*(v53 + 1)) >> 16);
LABEL_548:
              *(v47 + 12) = v27;
              *(v47 + 16) = 0;
              v47 += 24;
              goto LABEL_1326;
            }
          }

          return 4294967253;
        }

        LODWORD(v45) = v326;
        v165 = v325;
        if (v355 <= v326)
        {
          LODWORD(v27) = *(v19 + 108);
          if ((v27 & 4) != 0 || (v27 & 8) != 0 && v326 <= &v13[*(v19 + 72)])
          {
            goto LABEL_1326;
          }
        }

        if ((v325 & 0x80000000) != 0)
        {
          if (v323 > 1)
          {
            v165 = 1;
            goto LABEL_1168;
          }

          v165 = 0;
        }

        else if (v325)
        {
          LODWORD(v27) = 2 * (v325 + 1);
          LODWORD(v45) = v321;
          if (v27 <= v321)
          {
            v165 = v325 + 1;
          }

          else
          {
            v165 = 0;
          }

          if (v27 >= v321)
          {
            LODWORD(v27) = v321;
          }

LABEL_1165:
          if (v27 >= 3)
          {
            v286 = v41;
            v287 = v50;
            cstdlib_memmove(a5 + 2, a5, 8 * (v27 - 2));
            v50 = v287;
            v44 = v357;
            v41 = v286;
            v13 = v351;
            v43 = v352;
            v25 = v350;
            v24 = v348;
            v15 = v349;
            v19 = a1;
          }

          if (v323 < 2)
          {
LABEL_1169:
            v325 = v165;
            result = v165;
            if ((*(v19 + 108) & 0x80) == 0)
            {
              goto LABEL_1326;
            }

            return result;
          }

LABEL_1168:
          *a5 = v320;
          a5[1] = v355 - v13;
          goto LABEL_1169;
        }

        LODWORD(v27) = v321;
        goto LABEL_1165;
      case 126:
      case 127:
      case 128:
      case 129:
        v80 = *(v53 + 1);
        v81 = a10;
        v363 = a10;
        v82 = *(a10 + 12);
        if (v82 > 0x3EB)
        {
          goto LABEL_162;
        }

        v83 = v50;
        v84 = v41;
        result = more_workspace(&v363, 4, v19);
        if (result)
        {
          return result;
        }

        v81 = v363;
        v82 = *(v363 + 12);
        v19 = a1;
        v13 = v351;
        v41 = v84;
        v50 = v83;
LABEL_162:
        v85 = &v53[__rev16(v80)];
        v86 = *(v81 + 8);
        *(v81 + 12) = v82 - 1004;
        v87 = *v85;
        v88 = v50;
        v89 = v41;
        while (v87 == 120)
        {
          v85 += __rev16(*(v85 + 1));
          v87 = *v85;
        }

        v101 = v81 + 4 * v86 - 4 * v82;
        a10 = v81;
        result = internal_dfa_match(v19, v53, v355, v355 - v13, v101, 2, v101 + 16, 1000, v354, v81);
        *(v363 + 12) += 1004;
        if (result < -1)
        {
          return result;
        }

        LODWORD(v27) = result != -1;
        LODWORD(v45) = v54 != 126 && v54 != 128;
        if (v45 == v27)
        {
          v19 = a1;
          v13 = v351;
          v43 = v352;
          v15 = v349;
          v24 = v348;
          v25 = v350;
          v41 = v89;
          goto LABEL_441;
        }

        v25 = v350;
        v19 = a1;
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v44 = v357;
        if (v36 >= v350)
        {
          return 4294967253;
        }

        v41 = v89;
        v50 = v88;
        v36 = (v36 + 1);
        v103 = v85 - v349;
        goto LABEL_957;
      case 130:
        v207 = v50;
        v208 = v41;
        v209 = a10;
        v363 = a10;
        v210 = *(a10 + 12);
        if (v210 > 0x3EB)
        {
          goto LABEL_679;
        }

        result = more_workspace(&v363, 4, v19);
        if (result)
        {
          return result;
        }

        v209 = v363;
        v210 = *(v363 + 12);
        v19 = a1;
        v13 = v351;
LABEL_679:
        v211 = (v209 + 4 * *(v209 + 8) - 4 * v210);
        *(v209 + 12) = v210 - 1004;
        a10 = v209;
        result = internal_dfa_match(v19, v53, v355, v355 - v13, v211, 2, v211 + 2, 1000, v354, v209);
        *(v363 + 12) += 1004;
        v212 = v362;
        if ((result & 0x80000000) != 0)
        {
          v19 = a1;
          v13 = v351;
          v43 = v352;
          v15 = v349;
          v24 = v348;
          v25 = v350;
          v41 = v208;
          v44 = v357;
          v50 = v207;
          if (result != -1)
          {
            return result;
          }
        }

        else
        {
          v213 = *v211;
          v10 = v211[1];
          v15 = v349;
          v43 = v352;
          do
          {
            v53 += __rev16(*(v53 + 1));
            v214 = *v53;
          }

          while (v214 == 120);
          LODWORD(v45) = v53 - v349;
          v19 = a1;
          v13 = v351;
          v24 = v348;
          v25 = v350;
          if ((v214 & 0xFE) == 0x7A)
          {
            LODWORD(v27) = v45 - (bswap32(*(v53 + 1)) >> 16);
          }

          else
          {
            LODWORD(v27) = -1;
          }

          v262 = v45 + 3;
          v263 = v10 - v213;
          if (v10 == v213)
          {
            if (v36 >= v350)
            {
              return 4294967253;
            }

            v36 = (v36 + 1);
            *v47 = v262;
            *(v47 + 4) = 0;
            v47 += 12;
            v41 = v208;
            v44 = v357;
            v50 = v207;
          }

          else if (v46 + 1 < v36 || v362)
          {
            if (v348)
            {
              v41 = v208;
              if (v10 > v213)
              {
                v282 = &v351[v10];
                v283 = &v351[v213];
                do
                {
                  v284 = *v283++;
                  LODWORD(v263) = v263 - ((v284 & 0xC0) == 128);
                }

                while (v283 < v282);
              }
            }

            else
            {
              v41 = v208;
            }

            if (v362 >= v350)
            {
              return 4294967253;
            }

            LODWORD(v10) = v362 + 1;
            *v361 = -3 - v45;
            v361[1] = 0;
            LODWORD(v45) = v263 - 1;
            v361[2] = v263 - 1;
            v50 = v207;
            if ((v27 & 0x80000000) != 0)
            {
              v361 += 3;
              v212 = v362 + 1;
              v44 = v357;
            }

            else
            {
              v44 = v357;
              if (v10 >= v350)
              {
                return 4294967253;
              }

              v212 = v362 + 2;
              *(v361 + 3) = -v27;
              v361[5] = v45;
              v361 += 6;
            }
          }

          else
          {
            v44 = v357;
            if (a8 < 8)
            {
              return 4294967253;
            }

            v41 = v208;
            v355 += v263;
            *v361 = v262;
            v361[1] = 0;
            v361 += 3;
            v50 = 0;
            if ((v27 & 0x80000000) != 0)
            {
              v212 = 1;
            }

            else
            {
              *v352 = v27;
              v352[1] = 0;
              v46 = -1;
              v212 = 1;
              v36 = 1;
              v47 = v331;
            }
          }
        }

        v362 = v212;
        goto LABEL_1326;
      case 131:
      case 136:
        if (v36 <= v25)
        {
          LODWORD(v27) = v25;
        }

        else
        {
          LODWORD(v27) = v36;
        }

        while (v27 != v36)
        {
          v36 = (v36 + 1);
          *v47 = v53 - v15 + 3;
          *(v47 + 4) = 0;
          v47 += 12;
          v53 += __rev16(*(v53 + 1));
          if (*v53 != 120)
          {
            goto LABEL_1326;
          }
        }

        return 4294967253;
      case 132:
      case 134:
      case 137:
      case 139:
      case 149:
        v314 = v50;
        v327 = v41;
        v72 = v355;
        v71 = a10;
        v363 = a10;
        v73 = *(a10 + 12);
        if (v73 > 0x3EB)
        {
          goto LABEL_143;
        }

        result = more_workspace(&v363, 4, v19);
        if (result)
        {
          return result;
        }

        v71 = v363;
        v73 = *(v363 + 12);
        v19 = a1;
        v13 = v351;
LABEL_143:
        v74 = (v71 + 4 * *(v71 + 8) - 4 * v73);
        *(v71 + 12) = v73 - 1004;
        if (v54 == 149)
        {
          ++v53;
        }

        v75 = (v355 - v13);
        a10 = v71;
        result = internal_dfa_match(v19, v53, v355, v355 - v13, v74, 2, v74 + 2, 1000, v354, v71);
        v76 = 0;
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        do
        {
          v27 = v74[1] - *v74;
          if (!v27)
          {
            v19 = a1;
            v13 = v351;
            v43 = v352;
            v15 = v349;
            v24 = v348;
            v25 = v350;
            v41 = v327;
            v44 = v357;
            v50 = v314;
            v77 = v361;
            goto LABEL_516;
          }

          v72 += v27;
          ++v76;
          result = internal_dfa_match(a1, v53, v72, v75, v74, 2, v74 + 2, 1000, v354, a10);
        }

        while ((result & 0x80000000) == 0);
LABEL_148:
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v25 = v350;
        v41 = v327;
        v44 = v357;
        v50 = v314;
        v77 = v361;
        v19 = a1;
        if (result != -1)
        {
          return result;
        }

LABEL_516:
        *(v363 + 12) += 1004;
        if (v54 != 149 && !v76)
        {
          goto LABEL_1326;
        }

        v10 = v355;
        do
        {
          v53 += __rev16(*(v53 + 1));
        }

        while (*v53 == 120);
        v164 = v53 - v15;
        if (v46 + 1 < v36 || v362)
        {
          v166 = v72 - v355;
          if (v348 && v355 < v72)
          {
            v167 = v72 - v355;
            v168 = v362;
            do
            {
              v169 = *v10++;
              v167 -= (v169 & 0xC0) == 128;
              --v166;
            }

            while (v166);
          }

          else
          {
            v167 = v72 - v355;
            v168 = v362;
          }

          if (v168 >= v25)
          {
            return 4294967253;
          }

          v362 = v168 + 1;
          *v77 = -3 - v164;
          v77[1] = 0;
          LODWORD(v45) = v167 - 1;
          v27 = 8;
          v44 = v357;
        }

        else
        {
          if (a8 < 8)
          {
            return 4294967253;
          }

          LODWORD(v45) = 0;
          v50 = 0;
          *v77 = v164 + 3;
          v362 = 1;
          v27 = 4;
          v355 = v72;
        }

        *(v77 + v27) = v45;
        v361 = v77 + 3;
        goto LABEL_1326;
      case 133:
      case 138:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        *v47 = v52 + 5;
        *(v47 + 4) = 0;
        v27 = &v53[__rev16(*(v53 + 1))];
        while (2)
        {
          v36 = (v36 + 1);
          v47 += 12;
          if (*v27 != 120)
          {
            goto LABEL_1326;
          }

          if (v25 != v36)
          {
            *v47 = v27 - v15 + 3;
            *(v47 + 4) = 0;
            v27 += __rev16(*(v27 + 1));
            continue;
          }

          return 4294967253;
        }

      case 135:
      case 140:
        v156 = *(v53 + 1);
        v157 = v53[3];
        if ((v157 & 0xFE) != 0x76)
        {
          goto LABEL_946;
        }

        v158 = v50;
        v159 = v41;
        v363 = 0;
        result = do_callout(v53, a5, v326, v355, v19, 3, &v363);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v25 = v350;
        v41 = v159;
        v44 = v357;
        v50 = v158;
        if (result)
        {
          v19 = a1;
          goto LABEL_1326;
        }

        v53 += v363;
        v157 = v53[3];
        v19 = a1;
LABEL_946:
        v257 = __rev16(v156);
        if (v157 > 144)
        {
          v319 = v257;
          switch(v157)
          {
            case 159:
              goto LABEL_955;
            case 146:
              if (v36 >= v25)
              {
                return 4294967253;
              }

              v36 = (v36 + 1);
              LODWORD(v27) = v52 + 6;
LABEL_1000:
              *v47 = v27;
              *(v47 + 4) = 0;
              v47 += 12;
              goto LABEL_1326;
            case 145:
LABEL_955:
              if (v36 >= v25)
              {
                return 4294967253;
              }

              v36 = (v36 + 1);
              v103 = v52 + v257;
LABEL_957:
              LODWORD(v27) = v103 + 3;
              goto LABEL_1000;
          }
        }

        else
        {
          if (v157 == 143)
          {
            if (bswap32(*(v53 + 2)) >> 16 != 0xFFFF)
            {
              return 4294967256;
            }

            if (*(v19 + 160))
            {
              if (v36 >= v25)
              {
                return 4294967253;
              }

              LODWORD(v27) = v52 + 6;
LABEL_1258:
              *v47 = v27;
              *(v47 + 4) = 0;
              v47 += 12;
              v36 = (v36 + 1);
              goto LABEL_1326;
            }

            if (v36 >= v25)
            {
              return 4294967253;
            }

            v293 = v52 + v257;
LABEL_1257:
            LODWORD(v27) = v293 + 3;
            goto LABEL_1258;
          }

          result = 4294967256;
          if ((v157 - 141) < 2)
          {
            return result;
          }

          v319 = v257;
          if (v157 == 144)
          {
            return result;
          }
        }

        v265 = *(v53 + 2);
        v266 = a10;
        v363 = a10;
        v267 = *(a10 + 12);
        if (v267 <= 0x3EB)
        {
          v268 = v50;
          v269 = v41;
          result = more_workspace(&v363, 4, v19);
          if (result)
          {
            return result;
          }

          v266 = v363;
          v267 = *(v363 + 12);
          v19 = a1;
          v41 = v269;
          v50 = v268;
        }

        v270 = v53 + 3;
        v271 = &v53[__rev16(v265) + 3];
        v272 = *(v266 + 8);
        *(v266 + 12) = v267 - 1004;
        v273 = v50;
        v274 = v41;
        if (*v271 == 120)
        {
          v275 = v351;
          do
          {
            v271 += __rev16(*(v271 + 1));
          }

          while (*v271 == 120);
        }

        else
        {
          v275 = v351;
        }

        v294 = v266 + 4 * v272 - 4 * v267;
        a10 = v266;
        result = internal_dfa_match(v19, v270, v355, v355 - v275, v294, 2, v294 + 16, 1000, v354, v266);
        *(v363 + 12) += 1004;
        if (result >= -1)
        {
          LODWORD(v45) = v157 != 126 && v157 != 128;
          v15 = v349;
          v24 = v348;
          v25 = v350;
          v43 = v352;
          v41 = v274;
          v44 = v357;
          v50 = v273;
          if (v45 == (result != -1))
          {
            v19 = a1;
            v13 = v351;
            if (v36 >= v350)
            {
              return 4294967253;
            }

            v293 = v52 + v319;
          }

          else
          {
            v19 = a1;
            v13 = v351;
            if (v36 >= v350)
            {
              return 4294967253;
            }

            v293 = v271 - v349;
          }

          goto LABEL_1257;
        }

        return result;
      case 147:
      case 148:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        *v47 = v52 + 1;
        *(v47 + 4) = 0;
        v154 = &v53[__rev16(*(v53 + 1))];
        v155 = v154[1];
        v27 = (v154 + 1);
        LODWORD(v45) = v155;
        while (v45 == 120)
        {
          v27 += __rev16(*(v27 + 1));
          LODWORD(v45) = *v27;
        }

        if (v36 >= v324)
        {
          return 4294967253;
        }

        v36 = (v36 + 2);
        LODWORD(v27) = v27 - v15 + 3;
        goto LABEL_548;
      case 159:
        ++v339;
        goto LABEL_1326;
      case 163:
        v171 = &v53[__rev16(*(v53 + 1))];
        v173 = v171[1];
        v172 = v171 + 1;
        LODWORD(v45) = v173;
        while (v45 == 120)
        {
          v172 += __rev16(*(v172 + 1));
          LODWORD(v45) = *v172;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        v103 = v172 - v15;
        goto LABEL_957;
      case 165:
      case 166:
        return result;
      case 385:
      case 386:
      case 394:
        v64 = 0;
        goto LABEL_356;
      case 387:
      case 388:
      case 395:
        LODWORD(v27) = v51[1];
        if (v27 < 1)
        {
          goto LABEL_304;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 4;
        v47 += 12;
LABEL_304:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        v45 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344]];
        v130 = v53[2];
        if (v130 <= 5)
        {
          if (v53[2] > 2u)
          {
            v131 = v362;
            switch(v130)
            {
              case 3u:
                v238 = *(v45 + 1);
                break;
              case 4u:
                v238 = *v45;
                break;
              case 5u:
                v132 = (_pcre2_ucp_gentype_8[*(v45 + 1)] & 0xFFFFFFFD) == 1;
                goto LABEL_1194;
              default:
LABEL_1265:
                if (v55 != 16)
                {
                  goto LABEL_1326;
                }

                goto LABEL_1266;
            }

            goto LABEL_1193;
          }

          v131 = v362;
          if (v130 != 1)
          {
            if (v130 != 2)
            {
              goto LABEL_1265;
            }

            v238 = _pcre2_ucp_gentype_8[*(v45 + 1)];
LABEL_1193:
            v132 = v238 == v53[3];
            goto LABEL_1194;
          }

          v289 = *(v45 + 1);
          v48 = v289 > 9;
          LODWORD(v45) = (1 << v289) & 0x320;
          if (!v48 && v45 != 0)
          {
            goto LABEL_1265;
          }

LABEL_1185:
          if (v55 == 16)
          {
            goto LABEL_1326;
          }

LABEL_1266:
          if (v131 >= v25)
          {
            return 4294967253;
          }

          v362 = v131 + 1;
          v301 = -12;
          if (v54 != 395 || v27 <= 0)
          {
            v301 = 0;
          }

          v47 += v301;
          v36 = v36 - (v54 == 395 && v27 > 0);
          LODWORD(v27) = v27 + 1;
          goto LABEL_456;
        }

        if (v53[2] > 8u)
        {
          v131 = v362;
          if (v130 == 9)
          {
            v45 = &_pcre2_ucd_caseless_sets_8[v53[3]];
            while (1)
            {
              v291 = *v45;
              if (v44 < *v45)
              {
                goto LABEL_1185;
              }

              v45 += 4;
              if (v44 == v291)
              {
                goto LABEL_1265;
              }
            }
          }

          if (v130 != 10)
          {
            goto LABEL_1265;
          }

          LODWORD(v45) = v337;
          if ((v44 - 36) <= 0x3C)
          {
            LODWORD(v45) = v337;
            if (((1 << (v44 - 36)) & 0x1000000010000001) != 0)
            {
              goto LABEL_1265;
            }
          }
        }

        else
        {
          v131 = v362;
          if (v130 - 6 < 2)
          {
            if (v44 < 0x2000)
            {
              if (v44 > 132)
              {
                if (v44 > 5759)
                {
                  if (v44 == 5760 || v44 == 6158)
                  {
                    goto LABEL_1265;
                  }
                }

                else if (v44 == 133 || v44 == 160)
                {
                  goto LABEL_1265;
                }
              }

              else if (v44 <= 0x20 && ((1 << v343) & 0x100003E00) != 0)
              {
                goto LABEL_1265;
              }
            }

            else if ((v44 - 0x2000) < 0xB || (v44 - 8232) <= 0x37 && ((1 << (v44 - 40)) & 0x80000000000083) != 0 || v44 == 12288)
            {
              goto LABEL_1265;
            }

            v132 = _pcre2_ucp_gentype_8[*(v45 + 1)] == 6;
LABEL_1194:
            LODWORD(v45) = v132;
            goto LABEL_1197;
          }

          if (v130 != 8)
          {
            goto LABEL_1265;
          }

          v281 = _pcre2_ucp_gentype_8[*(v45 + 1)] | 2;
          LODWORD(v45) = v336;
          if (v281 == 3)
          {
            goto LABEL_1265;
          }
        }

LABEL_1197:
        if ((v55 != 16) == v45)
        {
          goto LABEL_1326;
        }

        goto LABEL_1266;
      case 389:
      case 390:
      case 396:
LABEL_356:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v45 = (v36 + 1);
        *v47 = v52 + 4;
        *(v47 + 4) = 0;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_1051;
        }

        v10 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344]];
        v141 = v53[2];
        if (v141 <= 5)
        {
          if (v53[2] > 2u)
          {
            v142 = v362;
            v143 = v50;
            switch(v141)
            {
              case 3u:
                v219 = *(v10 + 1);
                break;
              case 4u:
                v219 = *v10;
                break;
              case 5u:
                v144 = (_pcre2_ucp_gentype_8[*(v10 + 1)] & 0xFFFFFFFD) == 1;
                goto LABEL_980;
              default:
LABEL_1044:
                if (v55 != 16)
                {
                  goto LABEL_984;
                }

LABEL_1045:
                v44 = v357;
                v50 = v143;
                if (v54 == 396 || v54 == 394)
                {
                  v45 = v36;
                  v27 = v47;
                }

                if (v142 >= v25)
                {
                  return 4294967253;
                }

                v362 = v142 + 1;
                v138 = v64 + v52;
                v10 = v361;
LABEL_1050:
                *v10 = v138;
                *(v10 + 4) = 0;
                v361 = (v10 + 12);
                goto LABEL_1051;
            }

            goto LABEL_979;
          }

          v143 = v50;
          v142 = v362;
          if (v141 != 1)
          {
            if (v141 != 2)
            {
              goto LABEL_1044;
            }

            v219 = _pcre2_ucp_gentype_8[*(v10 + 1)];
LABEL_979:
            v144 = v219 == v53[3];
            goto LABEL_980;
          }

          v259 = *(v10 + 1);
          v48 = v259 > 9;
          LODWORD(v10) = (1 << v259) & 0x320;
          if (!v48 && v10 != 0)
          {
            goto LABEL_1044;
          }

LABEL_971:
          if (v55 == 16)
          {
LABEL_984:
            v36 = (v36 + 1);
            v47 += 12;
            v44 = v357;
            v50 = v143;
            goto LABEL_1326;
          }

          goto LABEL_1045;
        }

        v143 = v50;
        if (v53[2] > 8u)
        {
          v142 = v362;
          if (v141 == 9)
          {
            v10 = &_pcre2_ucd_caseless_sets_8[v53[3]];
            while (1)
            {
              v261 = *v10;
              if (v357 < *v10)
              {
                goto LABEL_971;
              }

              v10 += 4;
              if (v357 == v261)
              {
                goto LABEL_1044;
              }
            }
          }

          if (v141 != 10)
          {
            goto LABEL_1044;
          }

          LODWORD(v10) = v337;
          if ((v357 - 36) <= 0x3C)
          {
            LODWORD(v10) = v337;
            if (((1 << (v357 - 36)) & 0x1000000010000001) != 0)
            {
              goto LABEL_1044;
            }
          }
        }

        else
        {
          v142 = v362;
          if (v141 - 6 < 2)
          {
            if (v357 < 0x2000)
            {
              if (v357 > 132)
              {
                if (v357 > 5759)
                {
                  if (v357 == 5760 || v357 == 6158)
                  {
                    goto LABEL_1044;
                  }
                }

                else if (v357 == 133 || v357 == 160)
                {
                  goto LABEL_1044;
                }
              }

              else if (v357 <= 0x20 && ((1 << v343) & 0x100003E00) != 0)
              {
                goto LABEL_1044;
              }
            }

            else if ((v357 - 0x2000) < 0xB || (v357 - 8232) <= 0x37 && ((1 << (v357 - 40)) & 0x80000000000083) != 0 || v357 == 12288)
            {
              goto LABEL_1044;
            }

            v144 = _pcre2_ucp_gentype_8[*(v10 + 1)] == 6;
LABEL_980:
            LODWORD(v10) = v144;
            goto LABEL_983;
          }

          if (v141 != 8)
          {
            goto LABEL_1044;
          }

          v237 = _pcre2_ucp_gentype_8[*(v10 + 1)] | 2;
          LODWORD(v10) = v336;
          if (v237 == 3)
          {
            goto LABEL_1044;
          }
        }

LABEL_983:
        if ((v55 != 16) == v10)
        {
          goto LABEL_984;
        }

        goto LABEL_1045;
      case 391:
      case 392:
      case 393:
      case 397:
        if (v54 == 393)
        {
          goto LABEL_207;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 6;
        v47 += 12;
LABEL_207:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = v51[1];
        v45 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v345] + v344]];
        v98 = v53[4];
        if (v98 <= 5)
        {
          if (v53[4] > 2u)
          {
            v99 = v362;
            switch(v98)
            {
              case 3u:
                v223 = *(v45 + 1);
                break;
              case 4u:
                v223 = *v45;
                break;
              case 5u:
                v100 = (_pcre2_ucp_gentype_8[*(v45 + 1)] & 0xFFFFFFFD) == 1;
                goto LABEL_1109;
              default:
LABEL_1145:
                if (v55 != 16)
                {
                  goto LABEL_1326;
                }

                goto LABEL_1146;
            }

            goto LABEL_1108;
          }

          v99 = v362;
          if (v98 != 1)
          {
            if (v98 != 2)
            {
              goto LABEL_1145;
            }

            v223 = _pcre2_ucp_gentype_8[*(v45 + 1)];
LABEL_1108:
            v100 = v223 == v53[5];
            goto LABEL_1109;
          }

          v277 = *(v45 + 1);
          v48 = v277 > 9;
          LODWORD(v45) = (1 << v277) & 0x320;
          if (!v48 && v45 != 0)
          {
            goto LABEL_1145;
          }

LABEL_1100:
          if (v55 == 16)
          {
            goto LABEL_1326;
          }

          goto LABEL_1146;
        }

        if (v53[4] > 8u)
        {
          v99 = v362;
          if (v98 == 9)
          {
            v45 = &_pcre2_ucd_caseless_sets_8[v53[5]];
            while (1)
            {
              v279 = *v45;
              if (v44 < *v45)
              {
                goto LABEL_1100;
              }

              v45 += 4;
              if (v44 == v279)
              {
                goto LABEL_1145;
              }
            }
          }

          if (v98 != 10)
          {
            goto LABEL_1145;
          }

          LODWORD(v45) = v337;
          if ((v44 - 36) <= 0x3C)
          {
            LODWORD(v45) = v337;
            if (((1 << (v44 - 36)) & 0x1000000010000001) != 0)
            {
              goto LABEL_1145;
            }
          }
        }

        else
        {
          v99 = v362;
          if (v98 - 6 < 2)
          {
            if (v44 < 0x2000)
            {
              if (v44 > 132)
              {
                if (v44 > 5759)
                {
                  if (v44 == 5760 || v44 == 6158)
                  {
                    goto LABEL_1145;
                  }
                }

                else if (v44 == 133 || v44 == 160)
                {
                  goto LABEL_1145;
                }
              }

              else if (v44 <= 0x20 && ((1 << v343) & 0x100003E00) != 0)
              {
                goto LABEL_1145;
              }
            }

            else if ((v44 - 0x2000) < 0xB || (v44 - 8232) <= 0x37 && ((1 << (v44 - 40)) & 0x80000000000083) != 0 || v44 == 12288)
            {
              goto LABEL_1145;
            }

            v100 = _pcre2_ucp_gentype_8[*(v45 + 1)] == 6;
LABEL_1109:
            LODWORD(v45) = v100;
            goto LABEL_1112;
          }

          if (v98 != 8)
          {
            goto LABEL_1145;
          }

          v264 = _pcre2_ucp_gentype_8[*(v45 + 1)] | 2;
          LODWORD(v45) = v336;
          if (v264 == 3)
          {
            goto LABEL_1145;
          }
        }

LABEL_1112:
        if ((v55 != 16) == v45)
        {
          goto LABEL_1326;
        }

LABEL_1146:
        v285 = -12;
        if (v54 != 397)
        {
          v285 = 0;
        }

        v36 = v36 - (v54 == 397);
        v47 += v285;
        LODWORD(v27) = v27 + 1;
        if (v27 >= (bswap32(*(v53 + 1)) >> 16))
        {
          if (v99 >= v25)
          {
            return 4294967253;
          }

          v362 = v99 + 1;
          LODWORD(v27) = v52 + 6;
          goto LABEL_1323;
        }

        goto LABEL_1149;
      case 405:
      case 406:
      case 414:
        v63 = 0;
        goto LABEL_246;
      case 407:
      case 408:
      case 415:
        v139 = v51[1];
        if (v139 < 1)
        {
          v140 = v41;
        }

        else
        {
          if (v36 >= v25)
          {
            return 4294967253;
          }

          v140 = v41;
          v36 = (v36 + 1);
          *v47 = v52 + 2;
          v47 += 12;
        }

        if (v50 < 1)
        {
          v13 = v351;
          v43 = v352;
          v15 = v349;
          v24 = v348;
          v41 = v140;
          goto LABEL_1326;
        }

        LODWORD(v363) = 0;
        v170 = v50;
        _pcre2_extuni_8(v44, &v355[v50], *(v19 + 32), v346, v341, &v363);
        v25 = v350;
        if (v362 < v350)
        {
          ++v362;
          LODWORD(v27) = v54 == 415 && v139 > 0;
          v45 = -12;
          if (v54 != 415 || v139 <= 0)
          {
            v45 = 0;
          }

          v47 += v45;
          v36 = (v36 - v27);
          *v361 = -v52;
          v361[1] = v139 + 1;
          v361[2] = v363;
          v361 += 3;
          v19 = a1;
          v13 = v351;
          v43 = v352;
          v15 = v349;
          v24 = v348;
          v41 = v140;
          v44 = v357;
          v50 = v170;
          goto LABEL_1326;
        }

        return 4294967253;
      case 409:
      case 410:
      case 416:
LABEL_246:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v105 = (v36 + 1);
        *v47 = v52 + 2;
        v106 = v47 + 12;
        if (v50 < 1)
        {
          v36 = (v36 + 1);
          v47 += 12;
          goto LABEL_1326;
        }

        v107 = v41;
        LODWORD(v363) = 0;
        if (v54 == 416 || v54 == 414)
        {
          v105 = v36;
          v106 = v47;
        }

        v108 = v50;
        _pcre2_extuni_8(v44, &v355[v50], *(v19 + 32), v346, v341, &v363);
        v25 = v350;
        LODWORD(v27) = v362;
        if (v362 >= v350)
        {
          return 4294967253;
        }

        ++v362;
        *v361 = v63 - v52;
        v361[1] = 0;
        v361[2] = v363;
        v361 += 3;
        v36 = v105;
        v47 = v106;
        v19 = a1;
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v41 = v107;
        goto LABEL_395;
      case 411:
      case 412:
      case 413:
      case 417:
        v328 = v41;
        if (v54 == 413)
        {
          goto LABEL_185;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 4;
        v47 += 12;
LABEL_185:
        if (v50 < 1)
        {
          v13 = v351;
          v15 = v349;
          v24 = v348;
          v41 = v41;
          goto LABEL_1326;
        }

        v92 = v51[1];
        LODWORD(v363) = 0;
        v93 = -12;
        if (v54 != 417)
        {
          v93 = 0;
        }

        v315 = v93;
        v94 = v50;
        v95 = v19;
        if (_pcre2_extuni_8(v44, &v355[v50], *(v19 + 32), v346, v341, &v363) >= v346)
        {
          v96 = v360;
          if ((*(v95 + 108) & 0x20) != 0)
          {
            v96 = 1;
          }

          v360 = v96;
        }

        v19 = v95;
        v25 = v350;
        v13 = v351;
        v43 = v352;
        v15 = v349;
        v24 = v348;
        v41 = v328;
        v44 = v357;
        if (v362 >= v350)
        {
          return 4294967253;
        }

        v50 = v94;
        v36 = v36 - (v54 == 417);
        v47 += v315;
        v97 = bswap32(*(v53 + 1));
        if ((v92 + 1) < HIWORD(v97))
        {
          LODWORD(v27) = v92 + 1;
        }

        else
        {
          LODWORD(v27) = 0;
        }

        if ((v92 + 1) >= HIWORD(v97))
        {
          LODWORD(v45) = -4;
        }

        else
        {
          LODWORD(v45) = 0;
        }

        v10 = v361;
        *v361 = v45 - v52;
        v361[1] = v27;
        v361[2] = v363;
        ++v362;
        goto LABEL_1093;
      case 425:
      case 426:
      case 434:
        v63 = 0;
        goto LABEL_365;
      case 427:
      case 428:
      case 435:
        LODWORD(v27) = v51[1];
        if (v27 < 1)
        {
          goto LABEL_375;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 2;
        v47 += 12;
LABEL_375:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        if (v44 <= 12)
        {
          LODWORD(v10) = v362;
          if ((v44 - 11) < 2)
          {
            goto LABEL_740;
          }

          if (v44 != 10)
          {
            goto LABEL_1326;
          }
        }

        else
        {
          LODWORD(v10) = v362;
          if ((v44 - 8232) < 2)
          {
            goto LABEL_740;
          }

          if (v44 != 13)
          {
            if (v44 != 133)
            {
              goto LABEL_1326;
            }

LABEL_740:
            if (*(v19 + 128) == 2)
            {
              goto LABEL_1326;
            }

            goto LABEL_1087;
          }

          if ((v355 + 1) < v346)
          {
            LODWORD(v45) = v355[1] == 10;
            goto LABEL_1088;
          }
        }

LABEL_1087:
        LODWORD(v45) = 0;
LABEL_1088:
        if (v10 >= v25)
        {
          return 4294967253;
        }

        v362 = v10 + 1;
        v276 = -12;
        if (v54 != 435 || v27 <= 0)
        {
          v276 = 0;
        }

        v47 += v276;
        v36 = v36 - (v54 == 435 && v27 > 0);
        LODWORD(v27) = v27 + 1;
        goto LABEL_1092;
      case 429:
      case 430:
      case 436:
LABEL_365:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v45 = (v36 + 1);
        *v47 = v52 + 2;
        *(v47 + 4) = 0;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_1051;
        }

        if (v44 > 12)
        {
          if ((v44 - 8232) >= 2)
          {
            if (v44 == 13)
            {
              LODWORD(v10) = v362;
              v220 = (v355 + 1) < v346 && v355[1] == 10;
              goto LABEL_758;
            }

            if (v44 != 133)
            {
              goto LABEL_1051;
            }
          }

          goto LABEL_513;
        }

        if ((v44 - 11) < 2)
        {
LABEL_513:
          if (*(v19 + 128) == 2)
          {
            goto LABEL_1051;
          }

          goto LABEL_757;
        }

        if (v44 == 10)
        {
LABEL_757:
          v220 = 0;
          LODWORD(v10) = v362;
LABEL_758:
          if (v54 == 436 || v54 == 434)
          {
            v45 = v36;
            v27 = v47;
          }

          if (v10 >= v25)
          {
            return 4294967253;
          }

          v362 = v10 + 1;
          *v361 = v63 - v52;
          v361[2] = v220;
          v361 += 3;
          goto LABEL_1051;
        }

        goto LABEL_1051;
      case 431:
      case 432:
      case 433:
      case 437:
        if (v54 == 433)
        {
          goto LABEL_217;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 4;
        v47 += 12;
LABEL_217:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = v51[1];
        if (v44 <= 12)
        {
          if ((v44 - 11) >= 2)
          {
            if (v44 != 10)
            {
              goto LABEL_1326;
            }
          }

          else
          {
LABEL_563:
            if (*(v19 + 128) == 2)
            {
              goto LABEL_1326;
            }
          }

          LODWORD(v45) = 0;
          v229 = v362;
          goto LABEL_881;
        }

        if ((v44 - 8232) < 2)
        {
          goto LABEL_563;
        }

        if (v44 != 13)
        {
          if (v44 != 133)
          {
            goto LABEL_1326;
          }

          goto LABEL_563;
        }

        v229 = v362;
        LODWORD(v45) = (v355 + 1) < v346 && v355[1] == 10;
LABEL_881:
        v10 = -12;
        if (v54 != 437)
        {
          v10 = 0;
        }

        v36 = v36 - (v54 == 437);
        v47 += v10;
        LODWORD(v27) = v27 + 1;
        if (v27 >= (bswap32(*(v53 + 1)) >> 16))
        {
          if (v229 < v25)
          {
            v362 = v229 + 1;
            v218 = v361;
            *v361 = -4 - v52;
            v361[2] = v45;
            goto LABEL_721;
          }

          return 4294967253;
        }

        if (v229 >= v25)
        {
          return 4294967253;
        }

        v362 = v229 + 1;
LABEL_1092:
        v10 = v361;
        *v361 = -v52;
        v361[1] = v27;
        v361[2] = v45;
LABEL_1093:
        v361 = (v10 + 12);
        goto LABEL_1326;
      case 445:
      case 446:
      case 454:
        v63 = 0;
        goto LABEL_334;
      case 447:
      case 448:
      case 455:
        LODWORD(v27) = v51[1];
        if (v27 < 1)
        {
          goto LABEL_384;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 2;
        v47 += 12;
LABEL_384:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v45) = 1;
        if (v44 < 0x2000)
        {
          if (v44 <= 159)
          {
            LODWORD(v10) = v362;
            if (v44 != 9 && v44 != 32)
            {
              goto LABEL_1126;
            }
          }

          else
          {
            LODWORD(v10) = v362;
            if (v44 != 160 && v44 != 5760 && v44 != 6158)
            {
              goto LABEL_1126;
            }
          }
        }

        else
        {
          LODWORD(v10) = v362;
          if (v44 <= 8238)
          {
            if ((v44 - 0x2000) < 0xB)
            {
              goto LABEL_388;
            }

            goto LABEL_1126;
          }

          if (v44 != 8239 && v44 != 8287 && v44 != 12288)
          {
LABEL_1126:
            LODWORD(v45) = 0;
          }
        }

LABEL_388:
        if (v45 != (v55 == 19))
        {
          goto LABEL_1326;
        }

        if (v10 >= v25)
        {
          return 4294967253;
        }

        v145 = v27 > 0;
        v362 = v10 + 1;
        v146 = v54 == 455;
LABEL_714:
        v216 = v146;
        LODWORD(v45) = v216 & v145;
        v217 = -12;
        if (!v45)
        {
          v217 = 0;
        }

        v47 += v217;
        v36 = (v36 - v45);
        LODWORD(v27) = v27 + 1;
        goto LABEL_720;
      case 449:
      case 450:
      case 456:
LABEL_334:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v45 = (v36 + 1);
        *v47 = v52 + 2;
        *(v47 + 4) = 0;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_1051;
        }

        v136 = 1;
        LODWORD(v10) = v44 - 0x2000;
        if (v44 < 0x2000)
        {
          if (v44 <= 159)
          {
            v137 = v362;
            if (v44 != 9 && v44 != 32)
            {
              goto LABEL_903;
            }
          }

          else
          {
            v137 = v362;
            if (v44 != 160 && v44 != 5760 && v44 != 6158)
            {
              goto LABEL_903;
            }
          }
        }

        else
        {
          v44 = v357;
          if (v357 <= 8238)
          {
            v137 = v362;
            if (v10 < 0xB)
            {
              goto LABEL_339;
            }

            goto LABEL_903;
          }

          v137 = v362;
          if (v357 != 8239 && v357 != 8287 && v357 != 12288)
          {
LABEL_903:
            v136 = 0;
          }
        }

LABEL_339:
        if (v136 == (v55 == 19))
        {
          if (v54 == 456 || v54 == 454)
          {
            v45 = v36;
            v27 = v47;
          }

          if (v137 >= v25)
          {
            return 4294967253;
          }

          v362 = v137 + 1;
LABEL_345:
          v10 = v361;
          v361[2] = 0;
          v138 = v63 - v52;
          goto LABEL_1050;
        }

LABEL_1051:
        v36 = v45;
        goto LABEL_1052;
      case 451:
      case 452:
      case 453:
      case 457:
        if (v54 == 453)
        {
          goto LABEL_153;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 4;
        v47 += 12;
LABEL_153:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = 1;
        LODWORD(v45) = v44 - 0x2000;
        if (v44 < 0x2000)
        {
          if (v44 <= 159)
          {
            if (v44 != 9 && v44 != 32)
            {
              goto LABEL_1025;
            }
          }

          else if (v44 != 160 && v44 != 5760 && v44 != 6158)
          {
            goto LABEL_1025;
          }
        }

        else
        {
          if (v44 <= 8238)
          {
            if (v45 < 0xB)
            {
              goto LABEL_157;
            }

            goto LABEL_1025;
          }

          if (v44 != 8239 && v44 != 8287 && v44 != 12288)
          {
LABEL_1025:
            LODWORD(v27) = 0;
          }
        }

LABEL_157:
        if (v27 != (v55 == 19))
        {
          goto LABEL_1326;
        }

        v78 = v51[1];
        v79 = v54 == 457;
LABEL_174:
        v90 = v79;
        v91 = -12;
        if (!v79)
        {
          v91 = 0;
        }

        v36 = (v36 - v90);
        v47 += v91;
        LODWORD(v27) = v78 + 1;
        if (v27 >= (bswap32(*(v53 + 1)) >> 16))
        {
          if (v362 >= v25)
          {
            return 4294967253;
          }

          ++v362;
          v45 = v361;
          v361[2] = 0;
          LODWORD(v27) = -4 - v52;
          goto LABEL_1324;
        }

        LODWORD(v45) = v362;
        if (v362 >= v25)
        {
          return 4294967253;
        }

        ++v362;
LABEL_720:
        v218 = v361;
        *v361 = -v52;
        v361[1] = v27;
        v361[2] = 0;
LABEL_721:
        v361 = v218 + 3;
        goto LABEL_1326;
      case 465:
      case 466:
      case 474:
        v63 = 0;
        goto LABEL_322;
      case 467:
      case 468:
      case 475:
        LODWORD(v27) = v51[1];
        if (v27 < 1)
        {
          goto LABEL_349;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 2;
        v47 += 12;
LABEL_349:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v45) = 1;
        if ((v44 - 10) >= 4)
        {
          LODWORD(v10) = v362;
          if ((v44 - 8232) >= 2)
          {
            LODWORD(v45) = v44 == 133;
          }
        }

        else
        {
          LODWORD(v10) = v362;
        }

        if (v45 != (v55 == 21))
        {
          goto LABEL_1326;
        }

        if (v10 >= v25)
        {
          return 4294967253;
        }

        v145 = v27 > 0;
        v362 = v10 + 1;
        v146 = v54 == 475;
        goto LABEL_714;
      case 469:
      case 470:
      case 476:
LABEL_322:
        if (v36 >= v25)
        {
          return 4294967253;
        }

        v45 = (v36 + 1);
        *v47 = v52 + 2;
        *(v47 + 4) = 0;
        v27 = v47 + 12;
        if (v50 < 1)
        {
          goto LABEL_1051;
        }

        v134 = 1;
        if ((v44 - 10) >= 4 && (v44 - 8232) >= 2)
        {
          v135 = v362;
          v134 = v44 == 133;
        }

        else
        {
          v135 = v362;
        }

        if (v134 != (v55 == 21))
        {
          goto LABEL_1051;
        }

        if (v54 == 476 || v54 == 474)
        {
          v45 = v36;
          v27 = v47;
        }

        if (v135 >= v25)
        {
          return 4294967253;
        }

        v362 = v135 + 1;
        goto LABEL_345;
      case 471:
      case 472:
      case 473:
      case 477:
        if (v54 == 473)
        {
          goto LABEL_168;
        }

        if (v36 >= v25)
        {
          return 4294967253;
        }

        v36 = (v36 + 1);
        *v47 = v52 + 4;
        v47 += 12;
LABEL_168:
        if (v50 < 1)
        {
          goto LABEL_1326;
        }

        LODWORD(v27) = 1;
        if ((v44 - 10) >= 4 && (v44 - 8232) >= 2)
        {
          LODWORD(v27) = v44 == 133;
        }

        if (v27 != (v55 == 21))
        {
          goto LABEL_1326;
        }

        v78 = v51[1];
        v79 = v54 == 477;
        goto LABEL_174;
      default:
        return 4294967254;
    }
  }
}

uint64_t more_workspace(uint64_t *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    LODWORD(v6) = *(v5 + 8);
  }

  else
  {
    v9 = 2 * *(v4 + 2);
    v10 = (*(a3 + 80) << 8) - *(a3 + 88);
    if (v9 >= v10)
    {
      v6 = v10;
    }

    else
    {
      v6 = v9;
    }

    if (a2 + 1004 > v6)
    {
      return 4294967233;
    }

    v5 = (*a3)(4 * v6, *(a3 + 16));
    if (!v5)
    {
      return 4294967248;
    }

    *(a3 + 88) += v6;
    *v5 = 0;
    *(v5 + 8) = v6;
    *v4 = v5;
  }

  v7 = 0;
  *(v5 + 12) = v6 - 4;
  *a1 = v5;
  return v7;
}

uint64_t do_callout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a1 + a6;
  if (*(a1 + a6) == 118)
  {
    v8 = 6;
  }

  else
  {
    v8 = __rev16(*(v7 + 5));
  }

  v9 = a5[17];
  *a7 = v8;
  v10 = a5[19];
  if (!v10)
  {
    return 0;
  }

  *(v9 + 16) = a2;
  v11 = a5[4];
  *(v9 + 48) = a3 - v11;
  *(v9 + 56) = a4 - v11;
  *(v9 + 64) = __rev16(*(v7 + 1));
  *(v9 + 72) = __rev16(*(v7 + 3));
  if (*v7 == 118)
  {
    v12 = 0;
    v13 = 0;
    *(v9 + 4) = *(v7 + 5);
    *(v9 + 80) = 0;
  }

  else
  {
    *(v9 + 4) = 0;
    *(v9 + 80) = __rev16(*(v7 + 7));
    v12 = v7 + 10;
    v13 = *a7 - 11;
  }

  *(v9 + 88) = v13;
  *(v9 + 96) = v12;
  return v10();
}

uint64_t pcre2_get_error_message_8(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294967248;
  }

  v3 = a1 - 100;
  if (a1 < 100)
  {
    if ((a1 & 0x80000000) == 0)
    {
      v4 = &byte_26ED1CDA0;
      v3 = 1;
      goto LABEL_8;
    }

    v3 = -a1;
    v4 = "no error";
  }

  else
  {
    v4 = "no error";
  }

  if (v3 < 1)
  {
    LOBYTE(v6) = *v4;
    if (!*v4)
    {
      result = 0;
LABEL_22:
      *(a2 + result) = 0;
      return result;
    }

LABEL_15:
    v9 = 0;
    v10 = a3 - 1;
    v11 = v4 + 1;
    while (v10 != v9)
    {
      *(a2 + v9) = v6;
      result = v9 + 1;
      v6 = v11[v9++];
      if (!v6)
      {
        goto LABEL_22;
      }
    }

    *(a2 + v10) = 0;
    return 4294967248;
  }

  while (1)
  {
LABEL_8:
      ;
    }

    LOBYTE(v6) = *v4;
    if (!*v4)
    {
      return 4294967267;
    }

    if (v3-- < 2)
    {
      goto LABEL_15;
    }
  }
}

unsigned __int8 *_pcre2_extuni_8(int a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6)
{
  if (a2 >= a4)
  {
    return a2;
  }

  if (a1 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 + 127;
  }

  v7 = BYTE2(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[a1 - (v6 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v6 >> 7] << 7)]]);
  while (1)
  {
    v8 = *a2;
    if (a5 && v8 >= 0xC0)
    {
      v9 = a2[1] & 0x3F;
      if ((v8 & 0x20) != 0)
      {
        if ((v8 & 0x10) != 0)
        {
          if ((v8 & 8) != 0)
          {
            v26 = a2[2] & 0x3F;
            v27 = a2[3] & 0x3F;
            v28 = a2[4] & 0x3F;
            if ((v8 & 4) != 0)
            {
              v8 = ((v8 & 1) << 30) | (v9 << 24) | (v26 << 18) | (v27 << 12) | (v28 << 6) | a2[5] & 0x3F;
              v10 = 6;
            }

            else
            {
              v8 = ((v8 & 3) << 24) | (v9 << 18) | (v26 << 12) | (v27 << 6) | v28;
              v10 = 5;
            }
          }

          else
          {
            v8 = ((v8 & 7) << 18) | (v9 << 12) | ((a2[2] & 0x3F) << 6) | a2[3] & 0x3F;
            v10 = 4;
          }
        }

        else
        {
          v8 = ((v8 & 0xF) << 12) | (v9 << 6) | a2[2] & 0x3F;
          v10 = 3;
        }
      }

      else
      {
        v8 = a2[1] & 0x3F | ((v8 & 0x1F) << 6);
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v11 = BYTE2(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v8 & 0x7F | (_pcre2_ucd_stage1_8[v8 >> 7] << 7)]]);
    if (((_pcre2_ucp_gbtable_8[v7] >> v11) & 1) == 0)
    {
      return a2;
    }

    if (v7 == 11 && v11 == 11)
    {
      if (a5)
      {
        v12 = a2;
        do
        {
          v13 = *--v12;
        }

        while ((v13 & 0xC0) == 0x80);
      }

      else
      {
        v12 = a2 - 1;
      }

      if (v12 > a3)
      {
        break;
      }
    }

LABEL_40:
    if ((v11 == 13 || v11 == 3) && v7 == 14)
    {
      v7 = 14;
    }

    else
    {
      v7 = v11;
    }

    if (a6)
    {
      ++*a6;
    }

    a2 += v10;
    if (a2 >= a4)
    {
      return a2;
    }
  }

  v14 = 0;
  do
  {
    if (a5)
    {
      do
      {
        v16 = *--v12;
        v15 = v16;
      }

      while ((v16 & 0xC0) == 0x80);
      if (v15 >= 0xC0)
      {
        v17 = v12[1] & 0x3F;
        if ((v15 & 0x20) != 0)
        {
          if ((v15 & 0x10) != 0)
          {
            if ((v15 & 8) != 0)
            {
              v21 = v12[2] & 0x3F;
              v22 = v12[3] & 0x3F;
              v23 = v12[4] & 0x3F;
              if ((v15 & 4) == 0)
              {
                v15 = ((v15 & 3) << 24) | (v17 << 18) | (v21 << 12) | (v22 << 6) | v23;
                goto LABEL_37;
              }

              v19 = ((v15 & 1) << 30) | (v17 << 24) | (v21 << 18) | (v22 << 12) | (v23 << 6);
              v20 = v12[5];
            }

            else
            {
              v19 = ((v15 & 7) << 18) | (v17 << 12) | ((v12[2] & 0x3F) << 6);
              v20 = v12[3];
            }
          }

          else
          {
            v19 = ((v15 & 0xF) << 12) | (v17 << 6);
            v20 = v12[2];
          }

          v15 = v19 & 0xFFFFFFC0 | v20 & 0x3F;
          goto LABEL_37;
        }

        v15 = v12[1] & 0x3F | ((v15 & 0x1F) << 6);
      }
    }

    else
    {
      v18 = *--v12;
      v15 = v18;
    }

LABEL_37:
    if (BYTE2(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v15 & 0x7F | (_pcre2_ucd_stage1_8[v15 >> 7] << 7)]]) != 11)
    {
      break;
    }

    ++v14;
  }

  while (v12 > a3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_40;
  }

  return a2;
}