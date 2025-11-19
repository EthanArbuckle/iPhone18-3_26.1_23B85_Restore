void add_name_to_table(uint64_t a1, void *__src, size_t __n, unsigned int a4, int a5)
{
  v6 = __n;
  v9 = *(a1 + 72);
  v10 = __n;
  if (a5)
  {
    v11 = a5;
    v12 = __n + 2;
    do
    {
      v13 = memcmp(__src, v9 + 2, v10);
      if (v13)
      {
        if (v13 < 0)
        {
          goto LABEL_9;
        }
      }

      else if (v9[v12])
      {
LABEL_9:
        _pcre2_memmove8(&v9[*(a1 + 178)], v9, v11 * *(a1 + 178));
        break;
      }

      v9 += *(a1 + 178);
      --v11;
    }

    while (v11);
  }

  *v9 = bswap32(a4) >> 16;
  v14 = v9 + 2;
  memcpy(v14, __src, v10);
  v15 = *(a1 + 178) - v6 - 2;

  bzero(&v14[v10], v15);
}

unsigned __int8 *find_recurse(unsigned __int8 *result, int a2)
{
  while (1)
  {
    while (1)
    {
      v2 = *result;
      if (v2 <= 0x5D)
      {
        break;
      }

      if (*result <= 0x74u)
      {
        if (v2 - 94 < 3)
        {
          goto LABEL_11;
        }

        if (v2 == 97)
        {
          goto LABEL_15;
        }

        if (v2 == 112)
        {
          v6 = *(result + 1);
          goto LABEL_20;
        }

LABEL_22:
        result += _pcre2_OP_lengths_8[*result];
        if (a2 && v2 - 29 <= 0x37)
        {
          v7 = *(result - 1);
          if (v7 >= 0xC0)
          {
            result += _pcre2_utf8_table4[v7 & 0x3F];
          }
        }
      }

      else
      {
        v3 = v2 - 117;
        if (v3 > 0x2C)
        {
          goto LABEL_22;
        }

        if (((1 << (v2 - 117)) & 0x155000000000) != 0)
        {
          v4 = result[1];
          goto LABEL_17;
        }

        if (v3 != 2)
        {
          if (v2 == 117)
          {
            return result;
          }

          goto LABEL_22;
        }

        v6 = *(result + 5);
LABEL_20:
        result += __rev16(v6);
      }
    }

    if (v2 - 85 >= 6)
    {
      break;
    }

LABEL_11:
    v5 = result[1];
LABEL_16:
    v4 = 2 * ((v5 - 15) < 2);
LABEL_17:
    result += v4 + _pcre2_OP_lengths_8[*result];
  }

  if (v2 - 91 < 3)
  {
LABEL_15:
    v5 = result[3];
    goto LABEL_16;
  }

  if (*result)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t is_anchored(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  for (i = *a1; ; i = 0x78u)
  {
    significant_code = first_significant_code(&v9[_pcre2_OP_lengths_8[i]], 0);
    result = 0;
    v13 = *significant_code;
    if (v13 <= 0x81)
    {
      break;
    }

    v14 = v13 + 122;
    if (v13 - 134 <= 9)
    {
      if (((1 << v14) & 0x63) == 0)
      {
        if (((1 << v14) & 0x18C) != 0)
        {
          v15 = __rev16(*(significant_code + 3));
          if (v15 >= 0x20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 1 << v15;
          }

          v17 = v16 | a2;
          v18 = significant_code;
          goto LABEL_32;
        }

        if (significant_code[__rev16(*(significant_code + 1))] != 120)
        {
          return 0;
        }
      }

      v18 = significant_code;
      v17 = a2;
LABEL_32:
      v21 = a3;
      v20 = a4;
      goto LABEL_33;
    }

    if (v13 == 130)
    {
      goto LABEL_29;
    }

    if (v13 != 132)
    {
      return result;
    }

    v20 = (a4 + 1);
    v18 = significant_code;
    v17 = a2;
    v21 = a3;
LABEL_33:
    v22 = a5;
LABEL_34:
    result = is_anchored(v18, v17, v21, v20, v22);
    if (!result)
    {
      return result;
    }

LABEL_35:
    v9 += __rev16(*(v9 + 1));
    if (*v9 != 120)
    {
      return 1;
    }
  }

  if (*significant_code <= 0x54u)
  {
    if (v13 - 1 >= 2 && v13 != 27)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (v13 - 85 >= 2 && v13 != 94)
  {
    if (v13 != 126)
    {
      return result;
    }

LABEL_29:
    v18 = significant_code;
    v17 = a2;
    v21 = a3;
    v20 = a4;
    v22 = 1;
    goto LABEL_34;
  }

  if (significant_code[1] == 13)
  {
    result = 0;
    if (a4 > 0 || (*(a3 + 252) & a2) != 0)
    {
      return result;
    }

    if (!(*(a3 + 288) | a5) && (*(a3 + 205) & 0x80) == 0)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t find_firstassertedcu(unsigned __int8 *a1, int *a2, int a3)
{
  v5 = a1;
  v6 = 0;
  v7 = -1;
  *a2 = -1;
  for (i = *a1; ; i = 120)
  {
    v9 = (i - 136) <= 5 && ((1 << (i + 120)) & 0x23) != 0 ? 2 : 2 * (i == 142);
    significant_code = first_significant_code(&v5[v9 + 3], 1);
    v11 = *significant_code;
    if (v11 > 0x35)
    {
      break;
    }

    if (*significant_code > 0x28u)
    {
      if (v11 - 48 >= 2)
      {
        if (v11 == 41)
        {
          significant_code += 2;
          if (!a3)
          {
            return 0;
          }
        }

        else
        {
          if (v11 != 43)
          {
            return 0;
          }

LABEL_27:
          if (!a3)
          {
            return 0;
          }
        }

        v16 = significant_code[1];
        if (v7 < 0)
        {
          v7 = 0;
LABEL_43:
          v6 = v16;
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v11 - 35 < 2 || v11 == 29)
      {
        goto LABEL_27;
      }

      if (v11 != 30)
      {
        return 0;
      }
    }

LABEL_37:
    if (!a3 || significant_code[1] < 0)
    {
      return 0;
    }

    v16 = significant_code[1];
    if (v7 < 0)
    {
      v7 = 1;
      goto LABEL_43;
    }

LABEL_40:
    if (v6 != v16)
    {
      return 0;
    }

LABEL_44:
    v5 += __rev16(*(v5 + 1));
    if (*v5 != 120)
    {
      *a2 = v7;
      return v6;
    }
  }

  if (v11 - 126 > 0x10 || ((1 << (v11 - 126)) & 0x18FD1) == 0)
  {
    if (v11 == 54)
    {
      significant_code += 2;
    }

    else if (v11 != 56)
    {
      return 0;
    }

    goto LABEL_37;
  }

  firstassertedcu = find_firstassertedcu();
  if (v7 < 0)
  {
    v6 = firstassertedcu;
    v7 = 0;
    goto LABEL_44;
  }

  if (v6 == firstassertedcu && v7 == 0)
  {
    goto LABEL_44;
  }

  return 0;
}

uint64_t is_startline(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  for (i = *a1; ; i = 0x78u)
  {
    significant_code = first_significant_code(&v9[_pcre2_OP_lengths_8[i]], 0);
    v12 = *significant_code;
    if (v12 != 138)
    {
      goto LABEL_16;
    }

    v14 = significant_code + 3;
    v13 = significant_code[3];
    if (v13 == 119)
    {
      v15 = __rev16(*(significant_code + 4));
      goto LABEL_7;
    }

    if (v13 == 118)
    {
      v15 = 6;
LABEL_7:
      v14 += v15;
      v13 = *v14;
    }

    v16 = v13 - 144;
    v17 = v16 > 0x12;
    v18 = (1 << v16) & 0x4003F;
    if (!v17 && v18 != 0)
    {
      return 0;
    }

    result = is_startline(v14, a2, a3, a4, 1);
    if (!result)
    {
      return result;
    }

    do
    {
      v14 += __rev16(*(v14 + 1));
    }

    while (*v14 == 120);
    significant_code = first_significant_code(v14 + 3, 0);
    v12 = *significant_code;
LABEL_16:
    if (v12 <= 129)
    {
      break;
    }

    v21 = v12 + 124;
    if ((v12 - 132) <= 0xA)
    {
      if (((1 << v21) & 0x18C) != 0)
      {
        v24 = a2;
LABEL_35:
        v25 = a3;
        v26 = a4;
LABEL_36:
        v27 = a5;
LABEL_37:
        result = is_startline(significant_code, v24, v25, v26, v27);
        if (!result)
        {
          return result;
        }

        goto LABEL_38;
      }

      if (((1 << v21) & 0x630) != 0)
      {
        v22 = __rev16(*(significant_code + 3));
        if (v22 >= 0x20)
        {
          v23 = 1;
        }

        else
        {
          v23 = 1 << v22;
        }

        v24 = v23 | a2;
        goto LABEL_35;
      }

      if (v12 == 132)
      {
        v26 = (a4 + 1);
        v24 = a2;
        v25 = a3;
        goto LABEL_36;
      }
    }

    if (v12 == 130)
    {
LABEL_27:
      v24 = a2;
      v25 = a3;
      v26 = a4;
      v27 = 1;
      goto LABEL_37;
    }

LABEL_43:
    if ((v12 - 29) < 0xFFFFFFFE)
    {
      return 0;
    }

LABEL_38:
    v9 += __rev16(*(v9 + 1));
    if (*v9 != 120)
    {
      return 1;
    }
  }

  if ((v12 - 85) >= 2 && v12 != 94)
  {
    if (v12 == 126)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  if (significant_code[1] == 12)
  {
    result = 0;
    if (a4 > 0 || (*(a3 + 252) & a2) != 0)
    {
      return result;
    }

    if (!(*(a3 + 288) | a5) && (*(a3 + 205) & 0x80) == 0)
    {
      goto LABEL_38;
    }
  }

  return 0;
}

_DWORD *manage_callouts(int a1, void *a2, int a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2)
  {
    v5[2] = a1 - *(a5 + 56) - v5[1];
  }

  if (a3)
  {
    if (v5)
    {
      v6 = v5 == a4 - 4;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && v5[3] == 255)
    {
      v7 = a4;
      a4 = v5;
    }

    else
    {
      v7 = a4 + 4;
      *a4 = -2147090432;
      *(a4 + 1) = 0xFF00000000;
    }

    v8 = a4;
    a4[1] = a1 - *(a5 + 56);
    a4 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return a4;
}

uint64_t get_ucp(unint64_t *a1, _DWORD *a2, _WORD *a3, _WORD *a4, _DWORD *a5, uint64_t a6)
{
  *&v27[31] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a1;
  v9 = *(a6 + 64);
  if (*a1 >= v9)
  {
    goto LABEL_14;
  }

  v13 = *v8++;
  v12 = v13;
  *a2 = 0;
  if (v13 == 123)
  {
    if (v8 < v9)
    {
      if (*v8 == 94)
      {
        *a2 = 1;
        v8 = v7 + 2;
      }

      if (v8 < v9)
      {
        v14 = 0;
        v15 = v8 + 1;
        v16 = &v26;
        do
        {
          v8 = v15;
          v17 = *(v15 - 1);
          if (!v17)
          {
            break;
          }

          if (v17 == 125)
          {
            goto LABEL_17;
          }

          *v16++ = v17;
          if (v14 > 0x1D)
          {
            break;
          }

          v15 = v8 + 1;
          ++v14;
        }

        while (v8 < v9);
      }
    }

    goto LABEL_14;
  }

  if ((*(*(a6 + 32) + v12) & 2) == 0)
  {
LABEL_14:
    v18 = 0;
    *a5 = 146;
    *a1 = v8;
    goto LABEL_15;
  }

  v26 = v12;
  v16 = v27;
LABEL_17:
  *v16 = 0;
  *a1 = v8;
  v21 = 201;
  v22 = 0;
  while (1)
  {
    v23 = (v21 + v22) >> 1;
    v24 = (&_pcre2_utt_8 + 6 * v23);
    v25 = _pcre2_strcmp_8(&v26, &_pcre2_utt_names_8[*v24]);
    if (!v25)
    {
      break;
    }

    if (v25 <= 0)
    {
      v21 = (v21 + v22) >> 1;
    }

    else
    {
      v22 = v23 + 1;
    }

    if (v22 >= v21)
    {
      v18 = 0;
      *a5 = 147;
      goto LABEL_15;
    }
  }

  *a3 = v24[1];
  *a4 = v24[2];
  v18 = 1;
LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t read_name(unsigned __int8 **a1, unint64_t a2, int a3, unsigned __int8 a4, void *a5, void *a6, _DWORD *a7, int *a8, uint64_t a9)
{
  v9 = *a1;
  v11 = *a1 + 1;
  v10 = **a1;
  if (v11 >= a2)
  {
    v14 = 0;
    if (v10 == 42)
    {
      v15 = 160;
    }

    else
    {
      v15 = 162;
    }

    goto LABEL_36;
  }

  *a6 = v11;
  *a5 = &v11[-*(a9 + 56)];
  if (!a3 || v10 == 42)
  {
    if (v10 != 42 && *v11 - 48 <= 9)
    {
      goto LABEL_35;
    }

    v16 = 1;
    while ((*(*(a9 + 32) + v9[v16]) & 0x10) != 0)
    {
      if (a2 - v9 == ++v16)
      {
        v16 = a2 - v9;
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  v12 = *v11;
  if (v12 >= 0xC0)
  {
    v13 = v9[2] & 0x3F;
    if ((v12 & 0x20) == 0)
    {
      v12 = v9[2] & 0x3F | ((v12 & 0x1F) << 6);
      goto LABEL_34;
    }

    if ((v12 & 0x10) != 0)
    {
      if ((v12 & 8) != 0)
      {
        v19 = v9[3] & 0x3F;
        v20 = v9[4] & 0x3F;
        v21 = v9[5] & 0x3F;
        if ((v12 & 4) == 0)
        {
          v12 = ((v12 & 3) << 24) | (v13 << 18) | (v19 << 12) | (v20 << 6) | v21;
          goto LABEL_34;
        }

        v17 = ((v12 & 1) << 30) | (v13 << 24) | (v19 << 18) | (v20 << 12) | (v21 << 6);
        v18 = v9[6];
      }

      else
      {
        v17 = ((v12 & 7) << 18) | (v13 << 12) | ((v9[3] & 0x3F) << 6);
        v18 = v9[4];
      }
    }

    else
    {
      v17 = ((v12 & 0xF) << 12) | (v13 << 6);
      v18 = v9[3];
    }

    v12 = v17 & 0xFFFFFFC0 | v18 & 0x3F;
  }

LABEL_34:
  v22 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v12 & 0x7F | (_pcre2_ucd_stage1_8[v12 >> 7] << 7)]]);
  if (v22 == 13)
  {
LABEL_35:
    v14 = 0;
    v15 = 144;
    goto LABEL_36;
  }

  v16 = 1;
  while (2)
  {
    if (v22 == 13 || v12 == 95 || _pcre2_ucp_gentype_8[v22] == 1)
    {
      v24 = &v9[v16 + 2];
      do
      {
        ++v16;
        if ((v24 - 1) >= a2)
        {
          goto LABEL_16;
        }

        v12 = *(v24++ - 1);
      }

      while ((v12 & 0xC0) == 0x80);
      if (v12 >= 0xC0)
      {
        v25 = *(v24 - 1) & 0x3F;
        if ((v12 & 0x20) != 0)
        {
          if ((v12 & 0x10) != 0)
          {
            if ((v12 & 8) != 0)
            {
              v28 = *v24 & 0x3F;
              v29 = v24[1] & 0x3F;
              v30 = v24[2] & 0x3F;
              if ((v12 & 4) == 0)
              {
                v12 = ((v12 & 3) << 24) | (v25 << 18) | (v28 << 12) | (v29 << 6) | v30;
                goto LABEL_56;
              }

              v26 = ((v12 & 1) << 30) | (v25 << 24) | (v28 << 18) | (v29 << 12) | (v30 << 6);
              v27 = v24[3];
            }

            else
            {
              v26 = ((v12 & 7) << 18) | (v25 << 12) | ((*v24 & 0x3F) << 6);
              v27 = v24[1];
            }
          }

          else
          {
            v26 = ((v12 & 0xF) << 12) | (v25 << 6);
            v27 = *v24;
          }

          v12 = v26 & 0xFFFFFFC0 | v27 & 0x3F;
          goto LABEL_56;
        }

        v12 = *(v24 - 1) & 0x3F | ((v12 & 0x1F) << 6);
      }

LABEL_56:
      v22 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v12 & 0x7F | (_pcre2_ucd_stage1_8[v12 >> 7] << 7)]]);
      continue;
    }

    break;
  }

LABEL_16:
  v11 = &v9[v16];
  if (v16 >= 34)
  {
    v14 = 0;
    v15 = 148;
LABEL_36:
    *a8 = v15;
    goto LABEL_37;
  }

  *a7 = v16 - 1;
  if (v10 != 42)
  {
    if (v16 == 1)
    {
      v14 = 0;
      v15 = 162;
      goto LABEL_36;
    }

    if (v11 >= a2 || *v11 != a4)
    {
      v14 = 0;
      v15 = 142;
      goto LABEL_36;
    }

    ++v11;
  }

  v14 = 1;
LABEL_37:
  *a1 = v11;
  return v14;
}

uint64_t check_posix_syntax(unsigned __int8 *a1, uint64_t a2, unsigned __int8 **a3)
{
  v4 = a1 + 1;
  v3 = *a1;
  if (a2 - (a1 + 1) < 2)
  {
    return 0;
  }

  while (1)
  {
    v5 = a1[1];
    if (v5 == 91)
    {
      break;
    }

    if (v5 != 92)
    {
      if (v5 == 93)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((a1[2] & 0xFE) != 0x5C)
    {
      goto LABEL_9;
    }

    v4 = a1 + 2;
LABEL_11:
    a1 = v4++;
    if (a2 - v4 <= 1)
    {
      return 0;
    }
  }

  if (a1[2] == v3)
  {
    return 0;
  }

LABEL_9:
  if (v5 != v3 || a1[2] != 93)
  {
    goto LABEL_11;
  }

  *a3 = v4;
  return 1;
}

uint64_t check_posix_name(unsigned __int8 *a1, unsigned int a2)
{
  v4 = 0;
  v5 = a2;
  v6 = "alpha";
  while (1)
  {
    v7 = posix_name_lengths[v4];
    if (v7 == a2 && !_pcre2_strncmp_8(a1, v6, v5))
    {
      break;
    }

    v6 += v7 + 1;
    if (++v4 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t set_lookbehind_lengths(unsigned int **a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *a1 + 2;
  v12 = *v11 | ((*a1)[1] << 32);
  while (1)
  {
    *a1 = v11 + 1;
    branchlength = get_branchlength(a1, a2, a3, a4, a5);
    if (branchlength < 0)
    {
      break;
    }

    if (branchlength > *(a5 + 276))
    {
      *(a5 + 276) = branchlength;
    }

    *v10 |= branchlength;
    v11 = *a1;
    v10 = *a1;
    if (**a1 != -2147418112)
    {
      return 1;
    }
  }

  if (!*a2)
  {
    *a2 = 125;
  }

  result = 0;
  if (*(a5 + 168) == -1)
  {
    *(a5 + 168) = v12;
  }

  return result;
}

uint64_t get_branchlength(unsigned int **a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = *a1;
  v60 = v7;
  v8 = (*a3)++;
  if (v8 > 2000)
  {
    v9 = 135;
    goto LABEL_86;
  }

  v13 = 0;
  v14 = 0;
  v58 = 0;
  v59 = 0;
  v15 = a5 + 88;
  while (2)
  {
    v57 = 0;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      v17 = 1;
      goto LABEL_6;
    }

    v19 = 0;
    v18 = 0;
    v17 = 1;
    switch((v16 + 2147418112) >> 16)
    {
      case 0u:
      case 0x18u:
        goto LABEL_92;
      case 1u:
      case 0x19u:
      case 0x21u:
        goto LABEL_50;
      case 2u:
        if ((*(a5 + 205) & 2) != 0 || (*(a5 + 210) & 0x20) != 0)
        {
          goto LABEL_95;
        }

        v31 = *v7;
        if (*v7 > 9u)
        {
          goto LABEL_29;
        }

        v32 = *(v15 + 8 * v31);
        goto LABEL_30;
      case 3u:
        if ((*(a5 + 205) & 2) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_95;
      case 4u:
        goto LABEL_69;
      case 5u:
        v18 = 0;
        v21 = v7 + 3;
        goto LABEL_12;
      case 6u:
        v18 = 0;
        v21 = v7 + 5;
        goto LABEL_12;
      case 7u:
        v19 = *v7;
        goto LABEL_50;
      case 8u:
      case 0x15u:
      case 0x2Bu:
      case 0x2Du:
      case 0x2Fu:
      case 0x31u:
        goto LABEL_7;
      case 9u:
      case 0xDu:
        v60 = parsed_skip(v7, 1);
        if (v60)
        {
          goto LABEL_6;
        }

        goto LABEL_93;
      case 0xBu:
      case 0x16u:
        goto LABEL_6;
      case 0xEu:
        v19 = 0;
LABEL_50:
        v20 = v7 + 1;
        goto LABEL_51;
      case 0xFu:
        v41 = parsed_skip(v7 + 1, 2);
        v18 = 0;
        v60 = v41;
        goto LABEL_7;
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        v19 = 0;
        v20 = v7 + 4;
LABEL_51:
        v60 = v20;
        grouplength = get_grouplength(&v60, 1, a2, a3, v19, a4, a5);
        if ((grouplength & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        return 0xFFFFFFFFLL;
      case 0x17u:
        v51 = *v7;
        if (v51 == 17 || v51 == 22)
        {
          return 0xFFFFFFFFLL;
        }

        if ((v51 - 6) > 0x10)
        {
          goto LABEL_18;
        }

        if (v51 == 14 && (*(a5 + 204) & 0x80000) != 0)
        {
          v9 = 136;
          goto LABEL_86;
        }

        if ((v51 - 15) <= 1)
        {
LABEL_69:
          v60 = v7 + 1;
        }

        goto LABEL_6;
      case 0x1Au:
        v18 = 0;
        v21 = v7 + 1;
        goto LABEL_12;
      case 0x1Fu:
        LODWORD(v31) = *v7;
LABEL_29:
        v34 = v7[2];
        v33 = v7 + 2;
        v32 = v34 | (*(v33 - 1) << 32);
        v60 = v33;
        goto LABEL_30;
      case 0x20u:
LABEL_54:
        v55 = v15;
        v56 = a4;
        v43 = v7[3];
        v42 = v7 + 3;
        v44 = *(a5 + 192);
        v45 = *(v42 - 2);
        v32 = v43 | (*(v42 - 1) << 32);
        v60 = v42;
        v46 = *(a5 + 176);
        if (!v46)
        {
          goto LABEL_89;
        }

        v47 = v6;
        v48 = 0;
        v54 = v16 & 0xFFFF0000;
        v49 = *(a5 + 56);
        v50 = (v44 + 14);
        while (2)
        {
          if (v45 != *(v50 - 1))
          {
            goto LABEL_59;
          }

          if (_pcre2_strncmp_8((v49 + v32), *(v50 - 7), v45))
          {
            v46 = *(a5 + 176);
LABEL_59:
            ++v48;
            v50 += 8;
            if (v48 >= v46)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        LODWORD(v31) = *(v50 - 3);
        if (!v31)
        {
LABEL_89:
          *a2 = 115;
          *(a5 + 168) = v32;
          return 0xFFFFFFFFLL;
        }

        if (v54 == -2145320960)
        {
          v6 = v47;
          v15 = v55;
          a4 = v56;
        }

        else
        {
          v6 = v47;
          v15 = v55;
          a4 = v56;
          if (*v50 || (*(a5 + 210) & 0x20) != 0)
          {
            goto LABEL_95;
          }
        }

LABEL_30:
        if (v31 > *(a5 + 212))
        {
          *(a5 + 168) = v32;
          v9 = 115;
          goto LABEL_86;
        }

        if (!v31)
        {
          goto LABEL_95;
        }

        v35 = *(a5 + 224);
        v36 = *v35;
        if (*v35 != 0x80000000)
        {
          do
          {
            if ((v36 & 0xFFFF0000) == 0x80050000)
            {
              ++v35;
            }

            else if (v36 == (v31 | 0x80080000))
            {
              break;
            }

            v37 = v35[1];
            ++v35;
            v36 = v37;
          }

          while (v37 != 0x80000000);
        }

        v57 = v35;
        v38 = parsed_skip(v35 + 1, 2);
        if (!v38)
        {
LABEL_93:
          v9 = 190;
          goto LABEL_86;
        }

        if (v60 > v35 && v60 < v38)
        {
          goto LABEL_95;
        }

        if (!a4)
        {
LABEL_44:
          v58 = a4;
          v59 = v35;
          v57 = v35 + 1;
          grouplength = get_grouplength(&v57, 0, a2, a3, v31, &v58, a5);
          if (grouplength < 0)
          {
            if (!*a2)
            {
              goto LABEL_95;
            }

            return 0xFFFFFFFFLL;
          }

LABEL_52:
          v17 = grouplength;
LABEL_6:
          v18 = v17;
          if ((v14 ^ 0x7FFFFFFF) < v17)
          {
            goto LABEL_85;
          }

LABEL_7:
          v14 = (v18 + v14);
          if (v14 >= 0x10000)
          {
LABEL_85:
            v9 = 187;
            goto LABEL_86;
          }

          v7 = ++v60;
          v13 = v18;
          continue;
        }

        v39 = a4;
        while (v39[1] != v35)
        {
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_44;
          }
        }

LABEL_95:
        v9 = 125;
LABEL_86:
        *a2 = v9;
        return 0xFFFFFFFFLL;
      case 0x22u:
      case 0x23u:
      case 0x26u:
        v26 = check_lookbehinds(v7 + 1, &v60, a4, a5, 0);
        *a2 = v26;
        if (v26)
        {
          return 0xFFFFFFFFLL;
        }

        HIDWORD(v28) = v60[1] + 2144075776;
        LODWORD(v28) = HIDWORD(v28);
        v27 = v28 >> 16;
        v29 = v27 >= 9;
        v30 = v27 - 9;
        if (v29)
        {
          if (v30 >= 3)
          {
LABEL_18:
            v18 = 0;
          }

          else
          {
            v18 = 0;
            v21 = v60 + 3;
LABEL_12:
            v60 = v21;
          }
        }

        else
        {
          v18 = 0;
          ++v60;
        }

        goto LABEL_7;
      case 0x24u:
      case 0x25u:
      case 0x27u:
        if (!set_lookbehind_lengths(&v60, a2, a3, a4, a5))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_18;
      case 0x28u:
      case 0x2Cu:
      case 0x2Eu:
      case 0x30u:
      case 0x32u:
        v18 = 0;
        v21 = &v7[v7[1] + 1];
        goto LABEL_12;
      case 0x29u:
      case 0x2Au:
        v7 = parsed_skip(v7, 0);
        if (!v7)
        {
          goto LABEL_93;
        }

LABEL_92:
        *v6 = v7;
        return v14;
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
        v23 = v7[2];
        v22 = v7 + 2;
        v24 = *(v22 - 1);
        if (v24 != v23)
        {
          goto LABEL_95;
        }

        v25 = v24 - 1;
        if (v24 == 1)
        {
          v17 = 0;
        }

        else if (v24)
        {
          if (v13 && 0x7FFFFFFF / v13 < v25)
          {
            goto LABEL_85;
          }

          v17 = v25 * v13;
        }

        else
        {
          v17 = 0;
          LODWORD(v14) = v14 - v13;
        }

        v60 = v22;
        goto LABEL_6;
      default:
        goto LABEL_95;
    }
  }
}

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
      case 0x26:
      case 0x27:
      case 0x28:
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
        if (v5 <= 0x3F)
        {
          a1 += meta_extra_lengths[v5];
LABEL_7:
          ++a1;
          continue;
        }

        return 0;
      case 0x29:
      case 0x2D:
      case 0x2F:
      case 0x31:
      case 0x33:
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

uint64_t add_list_to_class(uint64_t result, _BYTE **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
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

uint64_t add_not_list_to_class(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, _DWORD *a5)
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

uint64_t add_to_class_internal@<X0>(uint64_t a1@<X0>, _BYTE **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, _DWORD *a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  if (a6 >= 0xFF)
  {
    v11 = 255;
  }

  else
  {
    v11 = a6;
  }

  if ((a3 & 8) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_52;
  }

  if ((a3 & 0xA0000) == 0)
  {
    if (v11 >= a5)
    {
      v32 = a5;
      v33 = v11 + 1;
      do
      {
        v34 = *(*(a4 + 16) + v32);
        *(a1 + (v34 >> 3)) |= 1 << (v34 & 7);
        ++v32;
      }

      while (v33 != v32);
      v12 = v33 - a5;
      goto LABEL_52;
    }

    goto LABEL_5;
  }

  v12 = 0;
  a3 = a3 & 0xFFFFFFF7;
  v13 = a5;
LABEL_8:
  v41 = v13 - 1;
  v45 = v13;
LABEL_9:
  v42 = v7 + 1;
  while (v8 <= v7)
  {
    v14 = v8;
    while (1)
    {
      a7 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v14 - (a7 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v14 / 128] << 7)]];
      if (*(a7 + 3))
      {
        v8 = v14 + 1;
        v15 = &_pcre2_ucd_caseless_sets_8[*(a7 + 3)];
        v16 = *v15;
        if (*v15 == -1)
        {
          v17 = 0;
        }

        else
        {
          v43 = v7;
          v44 = v11;
          v17 = 0;
          do
          {
            if (v16 == v14)
            {
              v16 = v15[1];
              v18 = 1;
            }

            else
            {
              v19 = -1;
              do
              {
                v18 = v19 + 2;
                v20 = v15[v18];
                ++v19;
              }

              while (v16 + v19 + 1 == v20);
              v21 = v15[v19];
              v22 = a3;
              v23 = add_to_class_internal(a1, a2);
              a3 = v22;
              v17 += v23;
              v16 = v20;
            }

            v15 += v18;
          }

          while (v16 != -1);
          v7 = v43;
          v11 = v44;
        }

        goto LABEL_39;
      }

      LODWORD(a7) = a7[1];
      if (a7)
      {
        break;
      }

      if (++v14 > v7)
      {
        goto LABEL_47;
      }
    }

    v24 = v14 + 1;
    v25 = v14 + a7;
    do
    {
      v26 = v25;
      v8 = v24;
      if (v24 > v7)
      {
        break;
      }

      v27 = v24 + 127;
      if ((v8 & 0x80000000) == 0)
      {
        v27 = v8;
      }

      v28 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v8 - (v27 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v27 >> 7] << 7)]];
      if (*(v28 + 3))
      {
        break;
      }

      ++v25;
      v29 = v28[1];
      v24 = v8 + 1;
    }

    while (v25 == v29 + v8);
    if ((v14 + a7) < *(a4 + 264) || v26 > *(a4 + 268))
    {
      if (v14 + a7 < v13 && v26 >= v41)
      {
        v13 = v14 + a7;
        goto LABEL_8;
      }

      if (v26 <= v7 || v14 + a7 > v42)
      {
        v30 = a3;
        v31 = add_to_class_internal(a1, a2);
        a3 = v30;
        v17 = v31;
LABEL_39:
        v12 = (v17 + v12);
        v13 = v45;
        continue;
      }

      if (v26 >= 0xFF)
      {
        LODWORD(a7) = 255;
      }

      else
      {
        LODWORD(a7) = v26;
      }

      if (v26 > v11)
      {
        v11 = a7;
      }

      v7 = v26;
      goto LABEL_9;
    }
  }

LABEL_47:
  v8 = v13;
LABEL_52:
  if (v7 >= 0xFF)
  {
    v35 = 255;
  }

  else
  {
    v35 = v7;
  }

  if ((a3 & 0x80000) != 0)
  {
    v35 = v7;
  }

  if (v8 <= *(a4 + 264) || v35 >= *(a4 + 268))
  {
    if (v8 <= v11)
    {
      v36 = v8;
      do
      {
        *(a1 + (v36 >> 3)) |= 1 << (v36 & 7);
        v12 = (v12 + 1);
        ++v36;
      }

      while (v36 <= v11);
    }

    v37 = v8 <= 0x100 ? 256 : v8;
    if (v35 >= v37)
    {
      v38 = *a2;
      if ((a3 & 0x80000) != 0)
      {
        if (v37 < v7)
        {
          *v38 = 2;
          v39 = &v38[_pcre2_ord2utf_8(v37, (v38 + 1)) + 1];
LABEL_71:
          v38 = (v39 + _pcre2_ord2utf_8(v7, v39));
          goto LABEL_72;
        }

        if (v37 == v7)
        {
          *v38 = 1;
          v39 = (v38 + 1);
          goto LABEL_71;
        }
      }

LABEL_72:
      *a2 = v38;
    }
  }

  return v12;
}

unsigned __int8 *first_significant_code(unsigned __int8 *result, int a2)
{
  while (2)
  {
    switch(*result)
    {
      case 0x76u:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
        goto LABEL_10;
      case 0x77u:
        result += __rev16(*(result + 5));
        continue;
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x82u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x9Au:
      case 0x9Cu:
      case 0x9Eu:
      case 0xA0u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
        return result;
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x83u:
        if (!a2)
        {
          return result;
        }

        do
        {
          result += __rev16(*(result + 1));
          v2 = *result;
        }

        while (v2 == 120);
        result += _pcre2_OP_lengths_8[v2];
        continue;
      case 0x8Au:
      case 0x8Fu:
        if (result[3] != 148)
        {
          return result;
        }

        v4 = __rev16(*(result + 1));
        if (result[v4] != 121)
        {
          return result;
        }

        result += v4 + 3;
        continue;
      case 0x99u:
      case 0x9Bu:
      case 0x9Du:
      case 0x9Fu:
      case 0xA1u:
        result += result[1] + _pcre2_OP_lengths_8[*result];
        continue;
      case 0xA6u:
        result += __rev16(*(result + 1)) + 4;
        continue;
      default:
        if (*result - 4 < 2 && a2 != 0)
        {
LABEL_10:
          result += _pcre2_OP_lengths_8[*result];
          continue;
        }

        return result;
    }
  }
}

uint64_t pcre2_pattern_info_8(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3 && a2 < 0x1B)
  {
    return dword_1C3791B24[a2];
  }

  if (!a1)
  {
    return 4294967245;
  }

  if (*(a1 + 80) != 1346589253)
  {
    return 4294967265;
  }

  v5 = *(a1 + 96);
  if ((v5 & 1) == 0)
  {
    return 4294967264;
  }

  switch(a2)
  {
    case 0u:
      v6 = *(a1 + 88);
      goto LABEL_51;
    case 1u:
      v6 = *(a1 + 84);
      goto LABEL_51;
    case 2u:
      v6 = *(a1 + 130);
      goto LABEL_51;
    case 3u:
      v6 = *(a1 + 120);
      goto LABEL_51;
    case 4u:
      v6 = *(a1 + 128);
      goto LABEL_51;
    case 5u:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      v6 = *(a1 + 112);
      goto LABEL_51;
    case 6u:
      if ((v5 & 0x10) != 0)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v5 >> 8) & 2;
      }

      goto LABEL_51;
    case 7u:
      if ((v5 & 0x40) != 0)
      {
        v8 = a1 + 40;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_46;
    case 8u:
      v6 = (v5 >> 11) & 1;
      goto LABEL_51;
    case 9u:
      v6 = (v5 >> 10) & 1;
      goto LABEL_51;
    case 0xAu:
      size_8 = *(a1 + 32);
      if (size_8)
      {
        size_8 = _pcre2_jit_get_size_8(size_8);
      }

      *a3 = size_8;
      goto LABEL_52;
    case 0xBu:
      if ((v5 & 0x80) != 0)
      {
        v6 = *(a1 + 116);
      }

      else
      {
LABEL_31:
        v6 = 0;
      }

      goto LABEL_51;
    case 0xCu:
      v6 = (v5 >> 7) & 1;
      goto LABEL_51;
    case 0xDu:
      v6 = (v5 >> 13) & 1;
      goto LABEL_51;
    case 0xEu:
      v7 = *(a1 + 104);
      goto LABEL_33;
    case 0xFu:
      v6 = *(a1 + 124);
      goto LABEL_51;
    case 0x10u:
      v6 = *(a1 + 126);
      goto LABEL_51;
    case 0x11u:
      v6 = *(a1 + 134);
      goto LABEL_51;
    case 0x12u:
      v6 = *(a1 + 132);
      goto LABEL_51;
    case 0x13u:
      v8 = a1 + 136;
      goto LABEL_46;
    case 0x14u:
      v6 = *(a1 + 122);
      goto LABEL_51;
    case 0x15u:
      v7 = *(a1 + 108);
      goto LABEL_33;
    case 0x16u:
      v8 = *(a1 + 72);
      goto LABEL_46;
    case 0x17u:
      v6 = (v5 >> 22) & 1;
      goto LABEL_51;
    case 0x18u:
      v8 = 16 * *(a1 + 128) + 128;
LABEL_46:
      *a3 = v8;
      goto LABEL_52;
    case 0x19u:
      v7 = *(a1 + 100);
LABEL_33:
      *a3 = v7;
      if (v7 != -1)
      {
        goto LABEL_52;
      }

      result = 4294967241;
      break;
    case 0x1Au:
      v6 = *(a1 + 92);
LABEL_51:
      *a3 = v6;
LABEL_52:
      result = 0;
      break;
    default:
      result = 4294967262;
      break;
  }

  return result;
}

uint64_t _pcre2_is_newline_8(unsigned __int8 *a1, int a2, uint64_t a3, int *a4, int a5)
{
  v5 = *a1;
  if (a5 && v5 >= 0xC0)
  {
    v6 = a1[1] & 0x3F;
    if ((v5 & 0x20) == 0)
    {
      v5 = a1[1] & 0x3F | ((v5 & 0x1F) << 6);
      goto LABEL_13;
    }

    if ((v5 & 0x10) != 0)
    {
      if ((v5 & 8) != 0)
      {
        v9 = a1[2] & 0x3F;
        v10 = a1[3] & 0x3F;
        v11 = a1[4] & 0x3F;
        if ((v5 & 4) == 0)
        {
          v5 = ((v5 & 3) << 24) | (v6 << 18) | (v9 << 12) | (v10 << 6) | v11;
          goto LABEL_13;
        }

        v7 = ((v5 & 1) << 30) | (v6 << 24) | (v9 << 18) | (v10 << 12) | (v11 << 6);
        v8 = a1[5];
      }

      else
      {
        v7 = ((v5 & 7) << 18) | (v6 << 12) | ((a1[2] & 0x3F) << 6);
        v8 = a1[3];
      }
    }

    else
    {
      v7 = ((v5 & 0xF) << 12) | (v6 << 6);
      v8 = a1[2];
    }

    v5 = v7 & 0xFFFFFFC0 | v8 & 0x3F;
  }

LABEL_13:
  if (a2 != 2)
  {
    v12 = 0;
    if (v5 > 132)
    {
      if ((v5 - 8232) >= 2)
      {
        if (v5 != 133)
        {
          return v12;
        }

        if (a5)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 3;
      }

LABEL_31:
      *a4 = v13;
      return 1;
    }

    if ((v5 - 10) >= 3)
    {
      if (v5 != 13)
      {
        return v12;
      }

      goto LABEL_23;
    }

LABEL_19:
    v13 = 1;
    goto LABEL_31;
  }

  if (v5 == 10)
  {
    goto LABEL_19;
  }

  if (v5 == 13)
  {
LABEL_23:
    v13 = 1;
    if (a3 - 1 > a1)
    {
      if (a1[1] == 10)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t _pcre2_was_newline_8(_BYTE *a1, int a2, unint64_t a3, int *a4, int a5)
{
  if (!a5)
  {
    v8 = *--a1;
    v5 = v8;
    goto LABEL_15;
  }

  do
  {
    v6 = *--a1;
    v5 = v6;
  }

  while ((v6 & 0xC0) == 0x80);
  if (v5 >= 0xC0)
  {
    v7 = a1[1] & 0x3F;
    if ((v5 & 0x20) == 0)
    {
      v5 = a1[1] & 0x3F | ((v5 & 0x1F) << 6);
      goto LABEL_15;
    }

    if ((v5 & 0x10) != 0)
    {
      if ((v5 & 8) != 0)
      {
        v11 = a1[2] & 0x3F;
        v12 = a1[3] & 0x3F;
        v13 = a1[4] & 0x3F;
        if ((v5 & 4) == 0)
        {
          v5 = ((v5 & 3) << 24) | (v7 << 18) | (v11 << 12) | (v12 << 6) | v13;
          goto LABEL_15;
        }

        v9 = ((v5 & 1) << 30) | (v7 << 24) | (v11 << 18) | (v12 << 12) | (v13 << 6);
        v10 = a1[5];
      }

      else
      {
        v9 = ((v5 & 7) << 18) | (v7 << 12) | ((a1[2] & 0x3F) << 6);
        v10 = a1[3];
      }
    }

    else
    {
      v9 = ((v5 & 0xF) << 12) | (v7 << 6);
      v10 = a1[2];
    }

    v5 = v9 & 0xFFFFFFC0 | v10 & 0x3F;
  }

LABEL_15:
  if (a2 != 2)
  {
    v14 = 0;
    if (v5 > 132)
    {
      if ((v5 - 8232) >= 2)
      {
        if (v5 != 133)
        {
          return v14;
        }

        if (a5)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 3;
      }

LABEL_33:
      *a4 = v15;
      return 1;
    }

    if ((v5 - 11) >= 3)
    {
      if (v5 != 10)
      {
        return v14;
      }

      goto LABEL_25;
    }

LABEL_21:
    v15 = 1;
    goto LABEL_33;
  }

  if (v5 == 13)
  {
    goto LABEL_21;
  }

  if (v5 == 10)
  {
LABEL_25:
    v15 = 1;
    if (a1 > a3)
    {
      if (*(a1 - 1) == 13)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    goto LABEL_33;
  }

  return 0;
}

void *(**pcre2_general_context_create_8(void *(*a1)(size_t a1), void (__cdecl *a2)(void *), void *(*a3)(size_t a1)))(size_t a1)
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
    v4 = unk_1F42CE510;
    *(v2 + 2) = xmmword_1F42CE500;
    *(v2 + 3) = v4;
    v2[8] = qword_1F42CE520;
    result = *algn_1F42CE4F0;
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

uint64_t brkhlp_ScanFilesForEnginesAndAddOns(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ssftmap_Clear(*(a1 + 40));
  }

  result = brkhlp_FindAllEnginesAndAddOns(a1, *(a2 + 16));
  if (*(a2 + 32) && (result & 0x80000000) == 0 && *(a2 + 24))
  {
    v6 = 0;
    do
    {
      result = brkhlp_FindAllEnginesAndAddOns(a1, *(*(a2 + 32) + 8 * v6));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  return result;
}

uint64_t brkhlp_FindAllEnginesAndAddOns(uint64_t a1, char *a2)
{
  v47 = 0;
  v4 = *(a1 + 16);
  v53 = 0;
  v54 = 0;
  v51 = 0;
  __s = 0;
  v50 = 0;
  v49 = 1;
  FirstFile = brkhlp_FindFirstFile(v4, a2, "*.hdr", &__s, &v54);
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v46 = 0;
  do
  {
    if (!v54)
    {
      FirstFile = brkhlp_FindFirstFile(v4, a2, "*.dat", &__s, &v53);
      if ((FirstFile & 0x80000000) != 0)
      {
        return FirstFile;
      }

      if (!v53)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v21 = __s;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szFullPathName=%s", v18, v19, v20, __s);
        v22 = strrchr(v21, 47);
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21 - 1;
        }

        v24 = strlen(v21) + v21 - v23;
        v25 = heap_Alloc(*(v4 + 8), (v24 - 4));
        if (!v25)
        {
          return 2169528330;
        }

        v26 = v25;
        strncpy(v25, v23 + 1, (v24 - 5))[v24 - 5] = 0;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szSurrogateBrokerString=%s", v27, v28, v29, v26);
        v30 = __s;
        v31 = hdrpars_CreateSurrogateTagMap(*(v4 + 8), v26, __s, &v51);
        if ((v31 & 0x80000000) != 0)
        {
          NextFile = v31;
        }

        else
        {
          NextFile = brkhlp_AddItemToClass(v30, v51, a1);
          if ((NextFile & 0x80000000) == 0)
          {
            log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem AddedNewSurrogateBrokerString=%s", v32, v33, v34, v26);
          }
        }

        heap_Free(*(v4 + 8), v26);
        heap_Free(*(v4 + 8), v30);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_FindNextFile(v53, a2, &__s, *(v4 + 8), &v49);
        v9 = &v53;
        if ((NextFile & 0x80000000) != 0 || !v49)
        {
          goto LABEL_42;
        }

        if (!v53)
        {
          goto LABEL_43;
        }
      }

      v39 = &v53;
      goto LABEL_91;
    }

    v6 = __s;
    v7 = strlen(__s);
    if (v7 < 5 || strncmp(&__s[v7 - 4], ".hdr", 4uLL))
    {
      goto LABEL_6;
    }

    NextFile = hdrpars_ReadHeader(*a1, *(a1 + 8), v6, 0, &v51, &v50);
    if ((NextFile & 0x80000000) != 0)
    {
      log_OutPublic(*(v4 + 32), "BROKER", 276, "%s%s", v10, v11, v12, v13, "file");
      if ((NextFile & 0x1FFF) == 0xA)
      {
        goto LABEL_89;
      }

LABEL_6:
      heap_Free(*(v4 + 8), v6);
      goto LABEL_7;
    }

    if (!v50)
    {
      v17 = brkhlp_ExpandComponentPath(a1, v51);
      if ((v17 & 0x80000000) == 0)
      {
        NextFile = brkhlp_AddItemToClass(v6, v51, a1);
        goto LABEL_25;
      }

      NextFile = v17;
LABEL_89:
      heap_Free(*(v4 + 8), v6);
LABEL_90:
      v39 = &v54;
LABEL_91:
      v44 = *v39;
      goto LABEL_92;
    }

    v48 = 0;
    if (vector_GetElemAt(v50, 0, &v48))
    {
      v14 = 1;
      while (1)
      {
        if ((NextFile & 0x80000000) != 0)
        {
          goto LABEL_18;
        }

        v15 = brkhlp_ExpandComponentPath(a1, *v48);
        if ((v15 & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_AddItemToClass(v6, *v48, a1);
LABEL_19:
        if (!vector_GetElemAt(v50, v14++, &v48))
        {
          goto LABEL_20;
        }
      }

      NextFile = v15;
LABEL_18:
      ssftmap_ObjClose(*v48);
      goto LABEL_19;
    }

LABEL_20:
    vector_ObjClose(v50);
    v50 = 0;
LABEL_25:
    heap_Free(*(v4 + 8), v6);
    if ((NextFile & 0x80000000) != 0)
    {
      goto LABEL_90;
    }

LABEL_7:
    NextFile = brkhlp_FindNextFile(v54, a2, &__s, *(v4 + 8), &v49);
    v9 = &v54;
  }

  while ((NextFile & 0x80000000) == 0 && v49);
LABEL_42:
  osspi_FindClose(*v9);
  if ((NextFile & 0x80000000) != 0)
  {
    return NextFile;
  }

LABEL_43:
  v46 = 0;
  v47 = 0;
  if (!a2)
  {
    goto LABEL_73;
  }

  v53 = 0;
  v54 = 0;
  FirstFile = brkhlp_ConcatenatePath(&v54, a2, "*", 0, *(v4 + 8));
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v35 = v54;
  LODWORD(NextFile) = osspi_FindOpen(*(v4 + 64), *(v4 + 8), v54, 16, &v53, &v47);
  if ((NextFile & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  while (2)
  {
    if ((NextFile & 0x80000000) != 0)
    {
      v38 = v47;
      if (!v47)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (*v53 == 46 && (!*(v53 + 1) || *(v53 + 1) == 46 && !*(v53 + 2)))
    {
      heap_Free(*(v4 + 8), v53);
      v53 = 0;
      LODWORD(NextFile) = osspi_FindNext(v47, &v53);
      if ((NextFile & 0x1FFF) == 0x14)
      {
        NextFile = 0;
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v36 = brkhlp_ConcatenatePath(&v46, a2, v53, 0, *(v4 + 8));
  LODWORD(NextFile) = 0;
  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  v37 = v36;
  v38 = v47;
  LODWORD(NextFile) = v37;
  if (v47)
  {
LABEL_60:
    osspi_FindClose(v38);
  }

LABEL_61:
  v47 = 0;
LABEL_62:
  if (v53)
  {
    heap_Free(*(v4 + 8), v53);
  }

LABEL_64:
  if ((NextFile & 0x1FFF) == 0x14)
  {
    NextFile = 0;
  }

  else
  {
    NextFile = NextFile;
  }

LABEL_67:
  if (v35)
  {
    heap_Free(*(v4 + 8), v35);
  }

  if (!v46 && v47)
  {
    osspi_FindClose(v47);
    v47 = 0;
  }

  if ((NextFile & 0x80000000) == 0)
  {
LABEL_73:
    if (v47)
    {
      while (1)
      {
        v40 = v46;
        NextFile = brkhlp_FindAllEnginesAndAddOns(a1, v46);
        heap_Free(*(v4 + 8), v40);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        v41 = v47;
        v42 = *(v4 + 8);
        v54 = 0;
        v46 = 0;
        Next = osspi_FindNext(v47, &v54);
        if ((Next & 0x80000000) != 0)
        {
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
          }

          else
          {
            NextFile = Next;
          }

          break;
        }

        while ((Next & 0x80000000) == 0 && *v54 == 46 && (!v54[1] || v54[1] == 46 && !v54[2]))
        {
          heap_Free(v42, v54);
          v54 = 0;
          Next = osspi_FindNext(v41, &v54);
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
            goto LABEL_86;
          }
        }

        NextFile = brkhlp_ConcatenatePath(&v46, a2, v54, 0, v42);
        heap_Free(v42, v54);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = 0;
        if (!v47)
        {
          return NextFile;
        }
      }

LABEL_86:
      v44 = v47;
LABEL_92:
      osspi_FindClose(v44);
    }

    else
    {
      return 0;
    }
  }

  return NextFile;
}

uint64_t brkhlp_FindFirstFile(uint64_t a1, char *a2, const char *a3, const char **a4, uint64_t *a5)
{
  v5 = 0;
  *a5 = 0;
  if (a2 && a3)
  {
    v14 = 0;
    v15 = 0;
    v10 = brkhlp_ConcatenatePath(&v15, a2, a3, 0, *(a1 + 8));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else
    {
      v11 = v15;
      Open = osspi_FindOpen(*(a1 + 64), *(a1 + 8), v15, 0, &v14, a5);
      if ((Open & 0x80000000) != 0)
      {
        if ((Open & 0x1FFF) == 0x14)
        {
          v5 = 0;
        }

        else
        {
          v5 = Open;
        }
      }

      else
      {
        v5 = brkhlp_ConcatenatePath(a4, a2, v14, 0, *(a1 + 8));
        if ((v5 & 0x80000000) != 0)
        {
          if (*a5)
          {
            osspi_FindClose(*a5);
          }

          *a5 = 0;
        }

        heap_Free(*(a1 + 8), v14);
      }

      heap_Free(*(a1 + 8), v11);
    }
  }

  return v5;
}

uint64_t brkhlp_ExpandComponentPath(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v3 = *(a1 + 16);
  v4 = "COMPONENT";
  v5 = brkhlp_SearchTag(a2, "COMPONENT", &v18);
  if (v5 < 0 && (v4 = "COMMONCOMPONENT", v6 = brkhlp_SearchTag(a2, "COMMONCOMPONENT", &v18), (v6 & 0x80000000) != 0) || (v6 = brkhlp_SearchTag(a2, "HDRFILE", &v17), (v6 & 0x80000000) != 0) || (v6 = brkhlp_ConcatenatePath(&v13, v17, v18, 1, *(v3 + 8)), (v6 & 0x80000000) != 0))
  {
    v9 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v7 = v13;
    v14 = v13;
    v8 = ssftmap_Insert(a2, "FULLPATHCOMPONENT", &v14);
    if ((v8 & 0x80000000) == 0 || (v9 = v8, (v8 & 0x1FFF) == 2))
    {
      v9 = ssftmap_Remove(a2, v4);
    }

    heap_Free(*(v3 + 8), v7);
    if (v5 < 0 && (v9 & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = 0;
      v14 = "1";
      v10 = ssftmap_Insert(a2, "COMMON", &v14);
      if ((v10 & 0x1FFF) == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v10 < 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  if (v9 == -2125438956)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t brkhlp_FindNextFile(void *a1, char *a2, const char **a3, void *a4, _DWORD *a5)
{
  v12 = 0;
  *a3 = 0;
  *a5 = 0;
  Next = osspi_FindNext(a1, &v12);
  if ((Next & 0x80000000) != 0)
  {
    if ((Next & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return Next;
    }
  }

  else
  {
    v10 = brkhlp_ConcatenatePath(a3, a2, v12, 0, a4);
    heap_Free(a4, v12);
    if ((v10 & 0x80000000) == 0)
    {
      v10 = 0;
      *a5 = 1;
    }
  }

  return v10;
}

uint64_t brkhlp_ConcatenatePath(const char **a1, char *__s, const char *a3, int a4, uint64_t a5)
{
  v5 = 2169528320;
  if (__s && a3)
  {
    v11 = strlen(__s);
    v12 = strlen(a3);
    v13 = heap_Alloc(a5, v11 + v12 + 2);
    *a1 = v13;
    if (v13)
    {
      strcpy(v13, __s);
      if (a4)
      {
        v14 = v11++;
        while (v14)
        {
          v15 = (*a1)[--v14];
          --v11;
          if (v15 == 47)
          {
            goto LABEL_11;
          }
        }

        v11 = 0;
LABEL_11:
        (*a1)[v11] = 0;
      }

      if (v12 && v11 && __s[v11 - 1] != 47)
      {
        *&(*a1)[strlen(*a1)] = 47;
      }

      strcat(*a1, a3);
      v16 = strchr(*a1 + 1, 46);
      if (v16)
      {
        v17 = v16;
        while (1)
        {
          v18 = v17 - 1;
          if (*(v17 - 1) != 47)
          {
            goto LABEL_31;
          }

          v19 = v17 + 1;
          v20 = v17[1];
          if (v20 == 46)
          {
            break;
          }

          if (v20 != 47)
          {
            goto LABEL_31;
          }

          v21 = strlen(v17 + 2);
          memmove(v17, v17 + 2, v21 + 1);
          v19 = v17;
LABEL_32:
          v17 = strchr(v19, 46);
          if (!v17)
          {
            return 0;
          }
        }

        if (v17[2] == 47)
        {
          v22 = *a1;
          if (v18 > *a1)
          {
            v23 = 0;
            v24 = v17 - 1;
            while (1)
            {
              v26 = *--v24;
              v25 = v26;
              if (v26 == 47)
              {
                break;
              }

              if (v25 != 46)
              {
                v23 = 1;
              }

              v18 = v24;
              if (v24 <= v22)
              {
                if (!v23)
                {
                  goto LABEL_32;
                }

                goto LABEL_35;
              }
            }

            v22 = v18;
            if (!v23)
            {
              goto LABEL_32;
            }

LABEL_35:
            v27 = strlen(v17 + 3);
            memmove(v22, v17 + 3, v27 + 1);
            v19 = v22;
          }

          goto LABEL_32;
        }

LABEL_31:
        v19 = v17 + 1;
        goto LABEL_32;
      }

      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_AddSystemInfo(uint64_t a1, char *a2)
{
  result = 2169528326;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v5 = brkhlp_ScanBufferForEnginesAndAddOns(*(a1 + 16), a1, a2);
        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v5 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t brkhlp_ScanBufferForEnginesAndAddOns(uint64_t a1, uint64_t a2, char *__s1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = 2169528326;
  v21 = 0;
  v22 = 0;
  strcpy(v23, "BINBROKER");
  if (!a2)
  {
    goto LABEL_33;
  }

  i = __s1;
  if (!__s1)
  {
    goto LABEL_33;
  }

  if (strncmp(__s1, "<?xml", 5uLL))
  {
    v7 = strpbrk(i, "\n\r");
    if (v7)
    {
      for (i = v7; ; ++i)
      {
        v8 = *i;
        if (v8 != 13 && v8 != 10)
        {
          break;
        }
      }
    }
  }

  v3 = hdrpars_ReadHeader(*a2, *(a2 + 8), 0, i, &v22, &v21);
  if ((v3 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "BROKER", 276, 0, v10, v11, v12, v13, v20);
    goto LABEL_33;
  }

  if (!v21)
  {
    v3 = brkhlp_AddItemToClass(v23, v22, a2);
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v20 = 0;
  if (vector_GetElemAt(v21, 0, &v20))
  {
    v14 = 1;
    do
    {
      if ((v3 & 0x80000000) != 0)
      {
        ssftmap_ObjClose(*v20);
      }

      else
      {
        v3 = brkhlp_AddItemToClass(v23, *v20, a2);
      }
    }

    while (vector_GetElemAt(v21, v14++, &v20));
  }

  vector_ObjClose(v21);
  v21 = 0;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_24:
    v3 = critsec_Enter(*(a2 + 56));
    if ((v3 & 0x80000000) == 0)
    {
      if (!ssftmap_GetSize(*(a2 + 40)))
      {
        LODWORD(v3) = -2125438710;
      }

      v16 = critsec_Leave(*(a2 + 56));
      if (v3 > -1 && v16 < 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v3;
      }
    }
  }

LABEL_33:
  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t engbrk_GetSystemInfo(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 2169528326;
  v15 = 0;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    if ((ssftstring_ObjOpen(*(*(a1 + 16) + 8), &v15) & 0x80000000) == 0)
    {
      v7 = critsec_Enter(*(a1 + 56));
      if ((v7 & 0x80000000) != 0)
      {
        v3 = v7;
LABEL_22:
        ssftstring_ObjClose(v15);
        return v3;
      }

      v8 = v15;
      Size = ssftmap_GetSize(*(a1 + 40));
      ssftstring_Reserve(v8, 500 * Size);
      v10 = v15;
      v11 = *(a1 + 40);
      v16 = 0;
      v17 = 0;
      if (v11)
      {
        v18 = 0;
        v12 = ssftmap_IteratorOpen(v11, 0, 1, &v16);
        v3 = v12;
        if ((v12 & 0x80000000) == 0)
        {
          if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) == 0)
          {
            while (1)
            {
              appended = ssftstring_AppendCStr(v10, "<?xml version=1.0?>\n<NUANCE>\n<VERSION>NUAN_1.0</VERSION>\n<HEADER>\n");
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              appended = StoreTagInfo(v10, *v18);
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              v3 = ssftstring_AppendCStr(v10, "</HEADER>\n</NUANCE>\n");
              if ((v3 & 0x80000000) != 0)
              {
                goto LABEL_20;
              }

              if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) != 0)
              {
                goto LABEL_13;
              }
            }

            v3 = appended;
LABEL_20:
            ssftmap_IteratorClose(v16);
            goto LABEL_21;
          }

LABEL_13:
          ssftmap_IteratorClose(v16);
          goto LABEL_18;
        }

        if ((v12 & 0x1FFF) != 0x14)
        {
LABEL_21:
          critsec_Leave(*(a1 + 56));
          goto LABEL_22;
        }
      }

      v3 = 0;
LABEL_18:
      *a3 = ssftstring_Size(v15) + 1;
      *a2 = ssftstring_CStrDetach(v15);
      goto LABEL_21;
    }

    return 2169528330;
  }

  return v3;
}

uint64_t engbrk_FreeSystemInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    heap_Free(*(*(a1 + 16) + 8), a2);
  }

  return 0;
}

uint64_t StoreTagInfo(uint64_t a1, uint64_t a2)
{
  __s = 0;
  v11 = 0;
  v9 = 0;
  if (!a2)
  {
    LODWORD(v3) = 0;
LABEL_29:
    if ((v3 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  v3 = ssftmap_IteratorOpen(a2, 0, 1, &v11);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  if ((ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    appended = ssftstring_AppendCStr(a1, "<");
    if ((appended & 0x80000000) != 0 || (appended = ssftstring_AppendCStr(a1, __s), (appended & 0x80000000) != 0))
    {
LABEL_33:
      v3 = appended;
      goto LABEL_34;
    }

    v5 = *(v9 + 8);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (v5)
    {
      break;
    }

LABEL_18:
    appended = ssftstring_AppendCStr(a1, ">");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, *v9);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    if (ssftmap_GetSize(*(v9 + 16)))
    {
      appended = ssftstring_AppendCStr(a1, "\n");
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      appended = StoreTagInfo(a1, *(v9 + 16));
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    appended = ssftstring_AppendCStr(a1, "</");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, __s);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v3 = ssftstring_AppendCStr(a1, ">\n");
    if ((v3 & 0x80000000) != 0 || (ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v6 = ssftmap_IteratorOpen(v5, 0, 1, &v14);
  if ((v6 & 0x80000000) != 0)
  {
    v3 = v6;
    if ((v6 & 0x1FFF) != 0x14)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  do
  {
    if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v14);
      goto LABEL_18;
    }

    v7 = ssftstring_AppendCStr(a1, " ");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v13);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "=");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v12);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "");
  }

  while ((v7 & 0x80000000) == 0);
  v3 = v7;
  ssftmap_IteratorClose(v14);
LABEL_34:
  ssftmap_IteratorClose(v11);
  return v3;
}

uint64_t brkhlp_SearchTag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  ReadOnly = ssftmap_FindReadOnly(a1, a2, &v6);
  if ((ReadOnly & 0x80000000) == 0 && v6)
  {
    *a3 = *v6;
  }

  if (ReadOnly < 0)
  {
    return 2169528340;
  }

  else
  {
    return 0;
  }
}

uint64_t brkhlp_ElemCompareKeysBrokerString(char *a1, char *a2)
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
    return LH_stricmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t brkhlp_AddItemToClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  ReadOnly = ssftmap_FindReadOnly(a2, "BROKERSTRING", &v12);
  if (ReadOnly < 0 || !v12)
  {
    if (ReadOnly < 0)
    {
      hdrpars_FreeHeader(a2);
      return 2169528340;
    }

    v10 = 0;
  }

  else
  {
    v10 = *v12;
  }

  return brkhlp_AddNewAddOn(v10, a1, a2, a3, 0, v7, v8, v9);
}

uint64_t brkhlp_AddNewAddOn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 2169528327;
  }

  v9 = a3;
  v11 = *(a4 + 16);
  v22[0] = a3;
  v22[1] = a1;
  v22[2] = a5;
  log_OutText(*(v11 + 32), "BROKER", 4, 0, "brkhlp_AddNewAddOn: detect= %s", a6, a7, a8, a1);
  v12 = critsec_Enter(*(a4 + 56));
  if ((v12 & 0x80000000) != 0)
  {
    v20 = v12;
  }

  else
  {
    v17 = ssftmap_Insert(*(a4 + 40), a1, v22);
    if (v17 < 0)
    {
      log_OutPublic(*(v11 + 32), "BROKER", 289, "%s%s", v13, v14, v15, v16, "file");
    }

    v18 = critsec_Leave(*(a4 + 56));
    if (v18 >= 0 || v17 <= -1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    v9 = v22[0];
    if (!v22[0])
    {
      goto LABEL_16;
    }
  }

  hdrpars_FreeHeader(v9);
LABEL_16:
  if ((v20 & 0x1FFF) == 2)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

uint64_t engbrk_ClassOpen(_WORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t **a5)
{
  v5 = 2169528321;
  *v39 = 0;
  if ((*a3 & 0xFFFE) == 2)
  {
    inited = InitRsrcFunction(a1, a2, v39);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(*v39 + 32), "BROKER", 4, 0, "brk_ClassOpen: Begin", v11, v12, v13, v35);
      v14 = heap_Calloc(*(*v39 + 8), 1, 72);
      if (v14)
      {
        v15 = v14;
        *v14 = a1;
        v14[1] = a2;
        v16 = *v39;
        v14[2] = *v39;
        v17 = *(v16 + 8);
        v18 = heap_Calloc(v17, 1, 48);
        if (!v18)
        {
LABEL_22:
          v15[6] = 0;
          v5 = 2169528330;
LABEL_32:
          engbrk_ClassClose(v15);
LABEL_33:
          log_OutText(*(*v39 + 32), "BROKER", 4, 0, "brk_ClassOpen: End %x", v31, v32, v33, v5);
          return v5;
        }

        v19 = v18;
        *v18 = *a3;
        *(v18 + 8) = 0;
        v20 = *(a3 + 2);
        if (v20)
        {
          v21 = brkhlp_CloneString(v17, v20);
          *(v19 + 16) = v21;
          if (!v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v18 + 16) = 0;
        }

        *(v19 + 24) = 0;
        if (a3[12])
        {
          v22 = heap_Calloc(v17, a3[12], 8);
          *(v19 + 32) = v22;
          if (!v22)
          {
LABEL_21:
            brkhlp_FreeProductInfo(v17, v19);
            goto LABEL_22;
          }

          if (a3[12])
          {
            v23 = 0;
            do
            {
              *(*(v19 + 32) + 8 * v23) = brkhlp_CloneString(v17, *(*(a3 + 4) + 8 * v23));
              if (!*(*(v19 + 32) + 8 * v23))
              {
                goto LABEL_21;
              }

              ++*(v19 + 24);
            }

            while (++v23 < a3[12]);
          }
        }

        else
        {
          *(v19 + 32) = 0;
        }

        v24 = *(a3 + 5);
        if (v24)
        {
          v25 = brkhlp_CloneString(v17, v24);
          *(v19 + 40) = v25;
          if (!v25)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v19 + 40) = 0;
        }

        v15[6] = v19;
        v26 = critsec_ObjOpen(*(*v39 + 16), *(*v39 + 8), v15 + 3);
        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_31;
        }

        v27 = *(*v39 + 8);
        v36 = BRK_ADDON_IELEM;
        v37 = *&off_1F42CE598;
        v38 = off_1F42CE5A8;
        v26 = ssftmap_ObjOpen(v27, 0, &v36, v15 + 5);
        if ((v26 & 0x80000000) != 0 || (v28 = *(*v39 + 8), v36 = BRK_INTF_IELEM, v37 = *off_1F42CE5C0, v38 = off_1F42CE5D0, v26 = ssftmap_ObjOpen(v28, 0, &v36, v15 + 4), (v26 & 0x80000000) != 0) || (v26 = critsec_ObjOpen(*(*v39 + 16), *(*v39 + 8), v15 + 7), (v26 & 0x80000000) != 0))
        {
LABEL_31:
          v5 = v26;
          goto LABEL_32;
        }

        v29 = *a3;
        if (v29 == 3)
        {
          v30 = brkhlp_ScanBufferForEnginesAndAddOns(*v39, v15, *(a3 + 5));
        }

        else
        {
          if (v29 != 2)
          {
            goto LABEL_32;
          }

          v30 = brkhlp_ScanFilesForEnginesAndAddOns(v15, a3, 1);
        }

        v5 = v30;
        if ((v30 & 0x80000000) == 0)
        {
          *a5 = v15;
          v5 = brkhlp_InitializeONNX(*v39, v15 + 8);
          if ((v5 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_32;
      }

      return 2169528330;
    }
  }

  return v5;
}

uint64_t brkhlp_InitializeONNX(uint64_t a1, void *a2)
{
  v2 = 2169528327;
  v9 = 0;
  *a2 = 0;
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      if ((osspi_DynModOpen(v4, *(a1 + 8), "libcs_onnxruntime.so.1.13.1", 0, &v9) & 0x80000000) != 0)
      {
        return 0;
      }

      else
      {
        v6 = v9;
        *a2 = v9;
        v7 = osspi_DynModObjLoad(v6, "OrtGetApiBase", a1 + 72);
        if (v7 >= 0)
        {
          return v7;
        }

        else
        {
          return 2169528333;
        }
      }
    }
  }

  return v2;
}

uint64_t engbrk_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a1[8];
  if (v3)
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      osspi_DynModObjUnload(a1[8], v4);
    }

    osspi_DynModClose(v3);
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = ssftmap_ObjClose(v5);
    a1[4] = 0;
    v7 = v6 & (v6 >> 31);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    v9 = ssftmap_ObjClose(v8);
    a1[5] = 0;
    if (v9 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }
  }

  v11 = a1[3];
  if (v11)
  {
    v12 = critsec_ObjClose(v11);
    a1[3] = 0;
    if (v12 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v12;
    }
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = critsec_ObjClose(v14);
    a1[7] = 0;
    if (v15 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v15;
    }
  }

  v17 = a1[6];
  if (v17)
  {
    brkhlp_FreeProductInfo(*(v2 + 8), v17);
    a1[6] = 0;
  }

  heap_Free(*(v2 + 8), a1);
  return v7;
}

void *brkhlp_FreeProductInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      heap_Free(result, v4);
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 24))
      {
        v6 = 0;
        do
        {
          heap_Free(v3, *(*(a2 + 32) + 8 * v6++));
        }

        while (v6 < *(a2 + 24));
        v5 = *(a2 + 32);
      }

      heap_Free(v3, v5);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      heap_Free(v3, v7);
    }

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t engbrk_ClassUpdateEx(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  log_OutText(*(*(a1 + 16) + 32), "BROKER", 4, 0, "brk_ClassUpdate: Begin", a6, a7, a8, v16);
  v14 = brkhlp_ScanFilesForEnginesAndAddOns(a1, *(a1 + 48), a2);
  if ((v14 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "BROKER", v14, "brk_ClassUpdate: Scan failed", v10, v11, v12, v13, v17);
  }

  log_OutText(*(*(a1 + 16) + 32), "BROKER", 4, 0, "brk_ClassUpdate: End %x", v11, v12, v13, v14);
  return v14;
}

uint64_t engbrk_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  v25 = 0;
  *a3 = 0;
  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = *(v11 + 32);
    if (a1)
    {
      log_OutText(v12, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=%s: Begin", a6, a7, a8, a1);
    }

    else
    {
      log_OutText(v12, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=NULL: Begin", a6, a7, a8, v23);
    }

    v17 = heap_Calloc(*(v11 + 8), 1, 32);
    v18 = *(v11 + 32);
    if (v17)
    {
      *v17 = a2;
      *(v17 + 8) = v18;
      *(v17 + 24) = 0;
      if ((paramc_ParamGetStr(*(v11 + 40), "broker_mmap_clc_data", &v25) & 0x80000000) == 0 && (!LH_stricmp(v25, "yes") || !LH_stricmp(v25, "true")))
      {
        *(v17 + 24) = 1;
      }

      *a3 = v17;
      log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_ObjOpen : End", v19, v20, v21, v24);
      return 0;
    }

    else
    {
      log_OutPublic(v18, "BROKER", 200, 0, v13, v14, v15, v16, v24);
      return 2169528330;
    }
  }

  return v8;
}

uint64_t engbrk_ObjClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *(*a1 + 16);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ObjClose : Begin", a6, a7, a8, v18);
  v10 = 0;
  if (*(*(*a1 + 16) + 24) == a1)
  {
    v11 = critsec_Enter(*(*a1 + 24));
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    LODWORD(v10) = ssftmap_Clear(*(*a1 + 32));
    v12 = critsec_Leave(*(*a1 + 24));
    if (v10 > -1 && v12 < 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v10;
    }
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ObjClose : End", v14, v15, v16, v19);
  return v10;
}

uint64_t engbrk_SetLog(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  if (!a2)
  {
    a2 = *(*(*a1 + 16) + 32);
  }

  v2 = 0;
  a1[1] = a2;
  return v2;
}

uint64_t engbrk_ObjGetClass(uint64_t *a1, void *a2)
{
  if (a1 && a2)
  {
    result = 0;
    v4 = *a1;
  }

  else
  {
    result = 2169528327;
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t engbrk_InterfaceQueryEx(uint64_t *a1, char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v8 = -2125438956;
  v9 = 2169528327;
  v64 = 0;
  if (a1 && a2 && a6)
  {
    v16 = 0uLL;
    v62 = 0u;
    v63 = 0u;
    v17 = *(*a1 + 16);
    if (a5)
    {
      NullHandle = safeh_GetNullHandle();
      v16 = 0uLL;
      *a5 = NullHandle;
      a5[1] = v19;
    }

    *a6 = 0;
    v62 = v16;
    v63 = v16;
    log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : Begin", a6, a7, a8, a2);
    v9 = critsec_Enter(*(*a1 + 24));
    if ((v9 & 0x80000000) == 0)
    {
      if ((ssftmap_FindReadOnly(*(*a1 + 32), a2, &v64) & 0x80000000) == 0)
      {
        v24 = v64;
        v25 = v64[1];
        if (v25)
        {
LABEL_9:
          *a6 = v25;
          if (a5)
          {
            *a5 = *(v24 + 1);
          }

          v26 = 1;
          goto LABEL_22;
        }

        v8 = -2125438963;
        if (!a4)
        {
          log_OutPublic(a1[1], "BROKER", 259, "%s%s%s%x", v20, v21, v22, v23, "BrokerString");
          v8 = -2125438963;
        }

        goto LABEL_21;
      }

      ReadOnly = ssftmap_Insert(*(*a1 + 32), a2, &v62);
      if (ReadOnly < 0 || (ReadOnly = ssftmap_FindReadOnly(*(*a1 + 32), a2, &v64), ReadOnly < 0))
      {
        v8 = ReadOnly;
        log_OutPublic(a1[1], "BROKER", 200, "%s%s", v28, v29, v30, v31, "module");
        goto LABEL_21;
      }

      v32 = brkhlp_SearchAddOn(a1, a2, &v68);
      if (v32 < 0)
      {
        if ((v32 & 0x1FFF) == 0xA)
        {
          v8 = -2125438966;
          goto LABEL_21;
        }
      }

      else
      {
        v33 = v68;
        v34 = *v68;
        v69 = 0;
        v35 = ssftmap_FindReadOnly(v34, "FULLPATHCOMPONENT", &v69);
        if ((v35 & 0x80000000) == 0 && v69)
        {
          v67 = *v69;
          v40 = a4 == 0;
          goto LABEL_33;
        }

        v40 = a4 == 0;
        if (a4 || (v35 & 0x80000000) == 0)
        {
          if ((v35 & 0x80000000) == 0)
          {
LABEL_33:
            v46 = *v33;
            v69 = 0;
            v47 = ssftmap_FindReadOnly(v46, "GETINTERFACE", &v69);
            if (v47 < 0 || !v69)
            {
              if (v47 < 0)
              {
                if (v40)
                {
                  log_OutPublic(a1[1], "BROKER", 262, "%s%s%s%x", v48, v21, v22, v23, "BrokerString");
                }

                goto LABEL_21;
              }

              v49 = 0;
            }

            else
            {
              v49 = *v69;
            }

            v8 = 0;
            v66 = v49;
LABEL_42:
            v52 = v65;
            if ((v8 & 0x80000000) == 0 && !v65)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModOpen %s, %d", v21, v22, v23, v67);
              v53 = osspi_DynModOpen(*(v17 + 64), *(v17 + 8), v67, 0, v64);
              v8 = v53;
              if (!a4 && v53 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 263, "%s%s%s%x", v54, v21, v22, v23, "BrokerString");
                goto LABEL_21;
              }

              if (v53 < 0)
              {
                goto LABEL_21;
              }

              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModObjLoad %s", v21, v22, v23, v66);
              v55 = osspi_DynModObjLoad(*v64, v66, &v65);
              v8 = v55;
              if (!a4 && v55 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 264, "%s%s%s%x", v56, v21, v22, v23, "BrokerString");
                goto LABEL_21;
              }

              v52 = v65;
            }

            if (v8 < 0 || !v52 || (v57 = v52(a3, v64 + 1), v8 = v57, a4) || (v57 & 0x80000000) == 0)
            {
              if ((v8 & 0x80000000) == 0)
              {
                v24 = v64;
                v25 = v64[1];
                v59 = *(v25 + 16);
                if (v59)
                {
                  v60 = v59(**a1, *(*a1 + 8), v64 + 2);
                  v8 = v60;
                  if (!a4 && v60 < 0)
                  {
                    log_OutPublic(a1[1], "BROKER", 266, "%s%s%s%x", v61, v21, v22, v23, "module");
                    goto LABEL_21;
                  }

                  if (v60 < 0)
                  {
                    goto LABEL_21;
                  }

                  v24 = v64;
                  v25 = v64[1];
                }

                LODWORD(v9) = v8;
                goto LABEL_9;
              }
            }

            else
            {
              log_OutPublic(a1[1], "BROKER", 265, "%s%s%s%x", v58, v21, v22, v23, "module");
            }

LABEL_21:
            log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : BrokerString=%s: Module Not Found (%x)", v21, v22, v23, a2);
            v26 = 0;
            LODWORD(v9) = v8;
LABEL_22:
            v41 = critsec_Leave(*(*a1 + 24));
            if ((v26 & (v41 < 0)) != 0)
            {
              v9 = v41;
            }

            else
            {
              v9 = v9;
            }

            log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : End", v42, v43, v44, a2);
            return v9;
          }
        }

        else
        {
          log_OutPublic(a1[1], "BROKER", 260, "%s%s%s%x", v36, v37, v38, v39, "BrokerString");
        }
      }

      BuiltinInterface = brkhlp_GetBuiltinInterface(a2, &v65, &v67, &v66);
      v8 = BuiltinInterface;
      if (!a4 && BuiltinInterface < 0)
      {
        log_OutPublic(a1[1], "BROKER", 261, "%s%s%s%x", v51, v21, v22, v23, "BrokerString");
        goto LABEL_21;
      }

      goto LABEL_42;
    }
  }

  return v9;
}

uint64_t brkhlp_SearchAddOn(uint64_t a1, char *a2, void *a3)
{
  *a3 = 0;
  result = 2169528333;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(*a1 + 56));
      if ((result & 0x80000000) == 0)
      {
        v7 = brkhlp_InternalSearchAddOn(a1, a2, a3);
        LODWORD(result) = critsec_Leave(*(*a1 + 56));
        if (v7 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v7;
        }
      }
    }
  }

  return result;
}

uint64_t engbrk_InterfaceRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : Begin", a6, a7, a8, v13);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : End", v10, v11, v12, v14);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_TagQueryEx(void *a1, char *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  v8 = 2169528327;
  if (!a1 || !a5 || !a3 || !a2 || !*a1)
  {
    return v8;
  }

  *a5 = 0;
  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery BrokerString=%s TagName=%s : Begin", a6, a7, a8, a2);
  v14 = brkhlp_SearchAddOn(a1, a2, &v23);
  if (v14 < 0)
  {
    if ((v14 & 0x1FFF) == 0xA)
    {
      v8 = 2169528330;
      goto LABEL_16;
    }

    v8 = 2169528333;
LABEL_13:
    v20 = a1[1];
    if (a4)
    {
      log_OutText(v20, "BROKER", 3, 0, "brk_TagQuery : BrokerString=%s TagName=%s  Failure (%x)", v16, v17, v18, a2);
    }

    else
    {
      log_OutPublic(v20, "BROKER", 267, "%s%s%s%s%s%x", v15, v16, v17, v18, "Broker String");
    }

    goto LABEL_16;
  }

  v19 = brkhlp_SearchTag(*v23, a3, a5);
  if ((v19 & 0x80000000) != 0)
  {
    v8 = v19;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_16:
  if (*a5)
  {
    v21 = *a5;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery TagContents = %p %s: End", v16, v17, v18, *a5);
  return v8;
}

uint64_t engbrk_TagRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease TagContents address = %p : Begin", a6, a7, a8, a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease : End", v10, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_ComponentTableIteratorOpen(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (a1 && a3 && a2 && *a1)
  {
    v12 = *(*a1 + 16);
    log_OutText(*(v12 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen Query=%s: Begin", a6, a7, a8, a2);
    v13 = heap_Calloc(*(v12 + 8), 1, 72);
    *a3 = v13;
    if (v13)
    {
      *v13 = v12;
      *(*a3 + 8) = a1;
      String = brkhlp_CreateString((*a3 + 16), a2, *(v12 + 8));
      if ((String & 0x80000000) == 0)
      {
        v8 = critsec_Enter(*(*a1 + 56));
        v22 = *a3;
        if ((v8 & 0x80000000) == 0)
        {
          v23 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 0, (v22 + 3));
          LODWORD(v8) = (v23 & 0x80001FFF) == 0x80000014 ? 0 : v23;
          v24 = critsec_Leave(*(*a1 + 56));
          v25 = v8 > -1 && v24 < 0;
          v8 = v25 ? v24 : v8;
          v22 = *a3;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

      v8 = String;
    }

    else
    {
      v8 = 2169528330;
    }

    v22 = *a3;
LABEL_22:
    if (v22)
    {
      engbrk_ComponentTableIteratorClose(v22, v14, v15, v16, v17, v18, v19, v20);
      v22 = 0;
      *a3 = 0;
    }

LABEL_24:
    log_OutText(*(v12 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen iterator address = %p: End", v18, v19, v20, v22);
  }

  return v8;
}

uint64_t brkhlp_CreateString(char **a1, char *__s, uint64_t a3)
{
  v3 = 2169528320;
  if (!a1)
  {
    return 2169528327;
  }

  *a1 = 0;
  if (__s)
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(a3, (v7 + 1));
    *a1 = v8;
    if (v8)
    {
      strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ComponentTableIteratorClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose iterator=%p: Begin", a6, a7, a8, a1);
  v10 = a1[2];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
    a1[2] = 0;
  }

  v11 = a1[3];
  if (v11)
  {
    ssftmap_IteratorClose(v11);
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose: End", v12, v13, v14, v16);
  return 0;
}

uint64_t engbrk_ComponentTableIteratorNext(uint64_t a1, const char **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  v38 = 0;
  if (!a1)
  {
    return 2169528327;
  }

  v8 = a2;
  v10 = *a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  log_OutText(*(v10 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext iterator=%p: Begin", a6, a7, a8, a1);
  LODWORD(v11) = brkhlp_SizeOfNextBlock(*(a1 + 16));
  v12 = ssftmap_IteratorNext(*(a1 + 24), &v38, &v37);
  if ((v12 & 0x80000000) != 0)
  {
LABEL_19:
    v16 = v12;
  }

  else
  {
    v11 = v11;
    v16 = 2169528330;
    v36 = v10;
    v34 = v11;
    while (1)
    {
      if ((LH_strnicmp(*(a1 + 16), v38, v11) & 0x80000000) != 0)
      {
        v16 = 2169528343;
        goto LABEL_33;
      }

      v17 = *(v10 + 8);
      v18 = v38;
      v19 = *(a1 + 16);
      v20 = strlen(v19);
      v21 = heap_Alloc(v17, (v20 + 1));
      if (!v21)
      {
        goto LABEL_33;
      }

      v22 = v21;
      v23 = v8;
      if (!*v19)
      {
        break;
      }

      v24 = v19;
      v25 = v18;
      while (1)
      {
        Block = brkhlp_SizeOfNextBlock(v24);
        strncpy(v22, v24, Block);
        v22[Block] = 0;
        v27 = strstr(v25, v22);
        if (!v27)
        {
          break;
        }

        v25 = &v27[Block];
        if (Block)
        {
          if (v22[Block - 1] != 47 && v25 - v18 != strlen(v18))
          {
            break;
          }
        }

        v24 += (Block + 1);
        if (v24 - v19 >= strlen(v19))
        {
          goto LABEL_21;
        }
      }

      heap_Free(v17, v22);
      v12 = ssftmap_IteratorNext(*(a1 + 24), &v38, &v37);
      v8 = v23;
      v10 = v36;
      v16 = 2169528330;
      v11 = v34;
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    heap_Free(v17, v22);
    v8 = v23;
    if (v23)
    {
      *v23 = v38;
    }

    if (a3)
    {
      v28 = v37;
      *(a1 + 32) = v38;
      *(a1 + 56) = 0u;
      *(a1 + 40) = 0u;
      v29 = brkhlp_SearchTag(*v28, "NAME", (a1 + 40));
      if ((v29 & 0x80000000) == 0 || (v16 = v29, v29 == -2125438956))
      {
        v30 = brkhlp_SearchTag(*v37, "LANGUAGE", (a1 + 56));
        if ((v30 & 0x80000000) == 0 || (v16 = v30, v30 == -2125438956))
        {
          v31 = brkhlp_SearchTag(*v37, "VERSION", (a1 + 48));
          if ((v31 & 0x80000000) == 0 || (v16 = v31, v31 == -2125438956))
          {
            v16 = 0;
            *a3 = a1 + 32;
          }
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v10 = v36;
  }

LABEL_33:
  v32 = "";
  if (v8 && *v8)
  {
    v32 = *v8;
  }

  log_OutText(*(v10 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext szBrkString=%s: End", v13, v14, v15, v32);
  return v16;
}

size_t brkhlp_SizeOfNextBlock(char *a1)
{
  v2 = strchr(a1, 42);
  if (v2)
  {
    return v2 - a1;
  }

  else
  {
    return strlen(a1);
  }
}

uint64_t engbrk_DataReplace(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v8 = 2169528327;
  if (a1 && a2 && a3)
  {
    v11 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace BrokerString=%s : Begin", a6, a7, a8, a2);
    v12 = brkhlp_SearchAddOn(a1, a2, &v31);
    if ((v12 & 0x80000000) != 0)
    {
      v24 = v12;
      log_OutPublic(a1[1], "BROKER", 293, "%s%s", v13, v14, v15, v16, "brokerString");
      if ((v24 & 0x1FFF) == 0xA)
      {
        v8 = 2169528330;
LABEL_16:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace : End", v25, v26, v27, v30);
        return v8;
      }
    }

    else
    {
      v17 = *v31;
      v32 = 0;
      ReadOnly = ssftmap_FindReadOnly(v17, "FULLPATHCOMPONENT", &v32);
      if ((ReadOnly & 0x80000000) == 0 && v32)
      {
        v23 = *v32;
        goto LABEL_12;
      }

      if ((ReadOnly & 0x80000000) == 0)
      {
        v23 = 0;
LABEL_12:
        v8 = osspi_DataReplace(*(v11 + 64), *(v11 + 8), v23);
        if ((v8 & 0x80000000) != 0)
        {
          log_OutPublic(a1[1], "BROKER", 295, "%s%s%s%x", v28, v25, v26, v27, "brokerString");
        }

        goto LABEL_16;
      }

      log_OutPublic(a1[1], "BROKER", 294, "%s%s", v19, v20, v21, v22, "brokerString");
      v24 = 2169528340;
    }

    v8 = v24;
    goto LABEL_16;
  }

  return v8;
}

uint64_t engbrk_DataOpenEx(uint64_t *a1, uint64_t a2, char a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 2169528330;
  v107 = 0;
  v108[0] = 0;
  result = 2169528327;
  if (a1)
  {
    v11 = a2;
    if (a2)
    {
      if (a4)
      {
        v14 = *(*a1 + 16);
        *a4 = 0;
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : BrokerString=%s : Begin", a6, a7, a8, a2);
        v15 = heap_Calloc(*(v14 + 8), 1, 48);
        if (!v15)
        {
          hlp_ReleaseUriFetcherInterface(v14, 0);
LABEL_123:
          log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : End %x", v27, v28, v29, v9);
          return v9;
        }

        v16 = v15;
        v17 = IsThisUrlOrRealPath(v11, 0);
        v18 = strchr(v11, 58);
        v19 = v18;
        if (v18)
        {
          v20 = v18 == v11;
        }

        else
        {
          v20 = 1;
        }

        v21 = !v20 && v17 == 0;
        v22 = v21;
        v100 = v17;
        if (v21)
        {
          v23 = critsec_Enter(*(*a1 + 24));
          if ((v23 & 0x80000000) != 0)
          {
            v35 = v23;
            hlp_ReleaseUriFetcherInterface(v14, v16);
            v102 = 0;
            v19 = 0;
            v9 = v35;
            goto LABEL_118;
          }

          v24 = v19 - v11;
          v25 = heap_Alloc(*(v14 + 8), (v19 - v11 + 1));
          if (!v25)
          {
            hlp_ReleaseUriFetcherInterface(v14, v16);
            v102 = 0;
            v19 = 0;
LABEL_110:
            v93 = critsec_Leave(*(*a1 + 24));
            if (v9 > -1 && v93 < 0)
            {
              v9 = v93;
            }

            else
            {
              v9 = v9;
            }

LABEL_116:
            if ((v9 & 0x80000000) == 0)
            {
              *a4 = v16;
LABEL_119:
              if (v102)
              {
                heap_Free(*(v14 + 8), v102);
              }

              if (v19)
              {
                heap_Free(*(v14 + 8), v19);
              }

              goto LABEL_123;
            }

LABEL_118:
            heap_Free(*(v14 + 8), v16);
            goto LABEL_119;
          }

          v26 = strncpy(v25, v11, v24);
          v26[v24] = 0;
          v102 = v26;
          v11 = v26;
          v17 = v100;
        }

        else
        {
          v102 = 0;
        }

        if (v17)
        {
          v19 = 0;
        }

        v30 = brkhlp_SearchAddOn(a1, v11, v108);
        v34 = v30;
        if ((v30 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on broker string %s", v31, v32, v33, v11);
          goto LABEL_24;
        }

        if ((v30 & 0x1FFF) == 0xA)
        {
          goto LABEL_28;
        }

        v99 = v19;
        v38 = strlen(v11);
        v19 = heap_Alloc(*(v14 + 8), (v38 + 4));
        if (!v19)
        {
          goto LABEL_109;
        }

        if (engbrk_CreateSurrogateBrokerString(v11, v19))
        {
          v34 = brkhlp_SearchAddOn(a1, v19, v108);
          if ((v34 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v39, v40, v41, v19);
          }

          if ((v34 & 0x1FFF) == 0xA)
          {
            goto LABEL_28;
          }

          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        v42 = strcpy(v19, v11);
        v43 = strstr(v42, "mpthreeml");
        if (!v43)
        {
          goto LABEL_53;
        }

        strcpy(v43, "mpthreevadml");
        v44 = brkhlp_SearchAddOn(a1, v19, v108);
        v34 = v44;
        if ((v44 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v45, v46, v47, v19);
LABEL_43:
          heap_Free(*(v14 + 8), v19);
          v19 = v99;
          goto LABEL_24;
        }

        if ((v44 & 0x1FFF) == 0xA)
        {
          goto LABEL_28;
        }

        if (engbrk_CreateSurrogateBrokerString(v19, v19))
        {
          v34 = brkhlp_SearchAddOn(a1, v19, v108);
          if ((v34 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v48, v49, v50, v19);
          }

          if ((v34 & 0x1FFF) == 0xA)
          {
            goto LABEL_28;
          }

          heap_Free(*(v14 + 8), v19);
          v19 = v99;
          if ((v34 & 0x80000000) == 0)
          {
LABEL_24:
            if (*(v108[0] + 16))
            {
              if (v19)
              {
                v9 = brkhlp_SearchClcArchive(a1[1], v108[0], v19 + 1, a3, v16, a1);
LABEL_28:
                v19 = 0;
                goto LABEL_109;
              }

              v9 = v34;
LABEL_109:
              hlp_ReleaseUriFetcherInterface(v14, v16);
              if (!v22)
              {
                goto LABEL_116;
              }

              goto LABEL_110;
            }

            v36 = *v108[0];
            *&v104[0] = 0;
            if ((ssftmap_FindReadOnly(v36, "FULLPATHCOMPONENT", v104) & 0x80000000) == 0)
            {
              if (*&v104[0])
              {
                v37 = **&v104[0];
                if (**&v104[0])
                {
                  v98 = v19;
                  v19 = 0;
                  goto LABEL_62;
                }
              }
            }

LABEL_56:
            v98 = v19;
            if (v100)
            {
              v19 = 0;
              v37 = v11;
              goto LABEL_63;
            }

            v52 = strlen(v11);
            v53 = heap_Alloc(*(v14 + 8), (v52 + 1));
            if (!v53)
            {
              goto LABEL_28;
            }

            v37 = v53;
            v54 = 0;
            v55 = 1;
            do
            {
              v37[v54] = __tolower(v11[v54]);
              v54 = v55;
            }

            while (strlen(v11) >= v55++);
            v19 = v37;
LABEL_62:
            if (!v100)
            {
LABEL_66:
              v101 = v16 + 3;
              v9 = osspi_DataOpenEx(*(v14 + 64), *(v14 + 8), v16[3], v16[4], v16[5], v37, v16);
              if ((v9 & 0x80000000) != 0)
              {
                if (a3)
                {
                  log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen failed: %s, %x", v58, v59, v60, v37);
                }

                else
                {
                  v74 = strcmp(v37, v11);
                  v75 = a1[1];
                  if (v74)
                  {
                    log_OutPublic(v75, "BROKER", 275, "%s%s%s%s%s%x", v70, v71, v72, v73, "BrokerString");
                  }

                  else
                  {
                    log_OutPublic(v75, "BROKER", 275, "%s%s%s%x", v70, v71, v72, v73, "BrokerString");
                  }
                }
              }

              else
              {
                v95 = *v16;
                log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen %s, %p", v58, v59, v60, v37);
                if (v98)
                {
                  v97 = a3;
                  v61 = strstr(v11, "clc");
                  v62 = strstr(v11, "clmnn");
                  *v96 = v108[0];
                  v63 = clcarchive_ObjOpen(**a1, *(*a1 + 8), v11, (v108[0] + 16));
                  v9 = v63;
                  if ((v63 & 0x80000000) == 0)
                  {
                    v64 = v22;
                    v65 = (v62 | v61) != 0;
                    if (v62 | v61 && *(a1 + 6))
                    {
                      v66 = 0;
                      v67 = (v63 & 0x1FFF) == 1;
                      v68 = v97;
                      v69 = *v96;
                    }

                    else
                    {
                      v69 = *v96;
                      v76 = osspi_ClcDataOpen(*v16, *(*v96 + 16));
                      v9 = v76;
                      v66 = v76 >> 31;
                      v67 = (v76 & 0x1FFF) == 1;
                      v68 = v97;
                      if ((v76 & 0x1FFF) != 1 && (v76 & 0x80000000) != 0)
                      {
                        v67 = 0;
                        *(*v96 + 16) = 0;
                      }
                    }

                    if (*(a1 + 6))
                    {
                      v77 = v65;
                    }

                    else
                    {
                      v77 = 0;
                    }

                    v22 = v64;
                    if ((v67 & v66 & 1) != 0 || v77)
                    {
                      v105 = 0;
                      v106 = 0;
                      memset(v104, 0, sizeof(v104));
                      clcarchive_GetMemoryStreamInterface(v104);
                      v103 = 0;
                      v81 = engbrk_DataMapEx(a1, v16, 0, &v106, &v105, v78, v79, v80);
                      if ((v81 & 0x80000000) != 0)
                      {
                        v9 = v81;
                      }

                      else
                      {
                        LODWORD(v9) = clcarchive_Parse(*(v69 + 16), v104, &v105, &v103, 1);
                        v87 = engbrk_DataUnmap(a1, v16, v105, v82, v83, v84, v85, v86);
                        if (v9 > -1 && v87 < 0)
                        {
                          LODWORD(v9) = v87;
                        }

                        v89 = osspi_DataClose(*v16);
                        *v16 = 0;
                        if (v9 > -1 && v89 < 0)
                        {
                          v9 = v89;
                        }

                        else
                        {
                          v9 = v9;
                        }

                        if (v16[3] && v16[4])
                        {
                          objc_ReleaseObject(*(v14 + 48), "URIFETCHER");
                          *v101 = 0;
                          v16[4] = 0;
                        }
                      }
                    }

                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = brkhlp_SearchClcArchive(a1[1], v69, v98 + 1, v68, v16, a1);
                      v91 = v108[0];
                      v92 = *(v108[0] + 16);
                      if (v92)
                      {
                        if (v9)
                        {
                          clcarchive_ObjClose(v92);
                          *(v91 + 16) = 0;
                          osspi_DataClose(*v16);
                          *v16 = 0;
                          if (v16[3])
                          {
                            if (v16[4])
                            {
                              objc_ReleaseObject(*(v14 + 48), "URIFETCHER");
                              *v101 = 0;
                              v16[4] = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_109;
            }

LABEL_63:
            if (UriGetUrlPrefixLength(v37, 0) && (objc_GetObject(*(v14 + 48), "URIFETCHER", &v107) & 0x80000000) == 0)
            {
              v57 = v107;
              v16[3] = *(v107 + 8);
              *(v16 + 2) = *(v57 + 16);
            }

            goto LABEL_66;
          }
        }

        else
        {
LABEL_53:
          heap_Free(*(v14 + 8), v19);
          v19 = v99;
        }

        if (v19)
        {
          v51 = brkhlp_RegisterAddon(v11, 0, 0, v108, *a1);
          if ((v51 & 0x80000000) != 0)
          {
            v19 = 0;
            v9 = v51;
            goto LABEL_109;
          }
        }

        goto LABEL_56;
      }
    }
  }

  return result;
}

uint64_t engbrk_CreateSurrogateBrokerString(char *__s, uint64_t a2)
{
  if (*__s)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = __s[v4];
      v8 = (v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (v8 && v7 != 45)
      {
        if (v7 == 95 || v7 == 47)
        {
          if (v7 == 95)
          {
            v5 = v5;
          }

          else
          {
            v5 = 1;
          }

          LOBYTE(v7) = 95;
        }

        else
        {
          v5 = 1;
          LOBYTE(v7) = 45;
        }
      }

      *(a2 + v4) = v7;
      v4 = v6;
    }

    while (strlen(__s) > v6++);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return v5;
}

uint64_t brkhlp_SearchClcArchive(uint64_t a1, uint64_t a2, char *__s, char a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 16);
  memset(v24, 0, sizeof(v24));
  if (strlen(__s) <= 0x7F)
  {
    engbrk_CreateSurrogateBrokerString(__s, v24);
  }

  if (*(v12 + 16))
  {
    v17 = 0;
    v18 = 0;
    while (LH_stricmp(v24, *(*(v12 + 8) + v17)))
    {
      ++v18;
      v17 += 40;
      if (v18 >= *(v12 + 16))
      {
        goto LABEL_7;
      }
    }

    *(a5 + 16) = v18;
    *(a5 + 8) = v12;
    v20 = critsec_Enter(*(*a6 + 24));
    if ((v20 & 0x80000000) == 0)
    {
      ++*(v12 + 120);
      v20 = critsec_Leave(*(*a6 + 24));
    }

    v19 = v20;
  }

  else
  {
LABEL_7:
    v19 = 2169528333;
    if (a4)
    {
      log_OutText(a1, "BROKER", 3, 0, "brk_DataOpen : SearchClcArchive failed: %s:%s", v14, v15, v16, *(a2 + 8));
    }

    else
    {
      v23 = *(a2 + 8);
      log_OutPublic(a1, "BROKER", 257, "%s%s%s%s", v13, v14, v15, v16, "archive");
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t brkhlp_RegisterAddon(char *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = 0;
  *v21 = 0;
  v5 = 2169528326;
  if (a1)
  {
    if (a5)
    {
      v7 = *(a5 + 16);
      if (v7)
      {
        v12 = brkhlp_SearchAddOn(*(v7 + 24), a1, a4);
        if ((v12 & 0x80000000) == 0 && a3 && !*(*a4 + 16))
        {
          *(*a4 + 16) = a3;
          return v12;
        }

        if ((v12 & 0x1FFF) != 0xA)
        {
          v13 = *(*(a5 + 16) + 8);
          v18[0] = BRK_HDRPARS_TAG_MAP_IELEM;
          v18[1] = *off_1F42CE718;
          v19 = off_1F42CE728;
          v12 = ssftmap_ObjOpen(v13, 1, v18, v21);
          if ((v12 & 0x80000000) == 0)
          {
            v12 = brkhlp_allocateAndStoreTagInMap(*(*(a5 + 16) + 8), *v21, a1, "BROKER", &v20);
            if ((v12 & 0x80000000) == 0)
            {
              if (!a2 || (v12 = brkhlp_allocateAndStoreTagInMap(*(*(a5 + 16) + 8), *v21, a2, "FULLPATHCOMPONENT", v18), (v12 & 0x80000000) == 0))
              {
                v12 = brkhlp_AddNewAddOn(*v20, *v20, *v21, a5, a3, v14, v15, v16);
                if ((v12 & 0x80000000) == 0)
                {
                  return brkhlp_SearchAddOn(*(*(a5 + 16) + 24), a1, a4);
                }
              }
            }
          }

          return v12;
        }

        return 2169528330;
      }
    }
  }

  return v5;
}

uint64_t engbrk_DataMapEx(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (a2 && a1 && a4 && a5)
  {
    *a5 = 0;
    v29 = *a4;
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataMap : hData=%p Map Offset=%d Size=%d Data=%p : Begin", a6, a7, a8, a2);
    v18 = *(a2 + 8);
    if (v18)
    {
      v19 = *(v18 + 8);
      v20 = *(a2 + 16);
      v21 = *(v19 + 40 * v20 + 16);
      v8 = 2169528324;
      if (v21 >= a3)
      {
        if (*a4)
        {
          v22 = *(v19 + 40 * v20 + 16);
          v21 = *a4;
        }

        else
        {
          *a4 = v21;
          v20 = *(a2 + 16);
          v22 = *(v19 + 40 * v20 + 16);
        }

        if (v21 + a3 > v22)
        {
          *a4 = v22 - a3;
          v20 = *(a2 + 16);
        }

        v23 = *(v19 + 40 * v20 + 8);
        if (v23)
        {
          v8 = 0;
          *a5 = v23 + a3;
          goto LABEL_27;
        }

        v24 = critsec_Enter(*(*a1 + 56));
        if ((v24 & 0x80000000) != 0)
        {
          v8 = v24;
        }

        else
        {
          LODWORD(v8) = clcarchive_GetData(*(a2 + 8), *(a2 + 16), a3, *a4, a5);
          v25 = critsec_Leave(*(*a1 + 56));
          if (v8 > -1 && v25 < 0)
          {
            v8 = v25;
          }

          else
          {
            v8 = v8;
          }

          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
      v8 = osspi_DataMap(*a2, a3, a4, a5);
      if ((v8 & 0x80000000) == 0)
      {
LABEL_27:
        v28 = *a5;
        v30 = *a4;
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataMap : End (%x, %p, %u)", v15, v16, v17, v8);
        return v8;
      }
    }

    v31 = *a4;
    log_OutPublic(a1[1], "BROKER", 287, "%s%p%s%u%s%u%s%x", v14, v15, v16, v17, "hData");
    goto LABEL_27;
  }

  return v8;
}

uint64_t engbrk_DataUnmap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (a1 && a2 && a3)
  {
    v12 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataUnmap : hData=%p pData=%p : Begin", a6, a7, a8, a2);
    v8 = critsec_Enter(*(*a1 + 24));
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 8);
    if (v17)
    {
      if (!*(*(v17 + 8) + 40 * *(a2 + 16) + 8))
      {
        heap_Free(*(v12 + 8), a3);
      }
    }

    else
    {
      LODWORD(v8) = osspi_DataUnmap(*a2, a3);
    }

    v18 = critsec_Leave(*(*a1 + 24));
    v19 = v8 > -1 && v18 < 0;
    v8 = v19 ? v18 : v8;
    if ((v8 & 0x80000000) != 0)
    {
LABEL_16:
      log_OutPublic(a1[1], "BROKER", 296, "%s%p%s%x", v13, v14, v15, v16, "hData");
    }

    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataUnmap : End %x", v14, v15, v16, v8);
  }

  return v8;
}

uint64_t hlp_ReleaseUriFetcherInterface(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 32))
      {
        result = objc_ReleaseObject(*(result + 48), "URIFETCHER");
        *v2 = 0;
        v2[1] = 0;
      }
    }
  }

  return result;
}

uint64_t engbrk_DataClose(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (!a1 || !a2)
  {
    return v8;
  }

  v11 = *(*a1 + 16);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : hData=%p : Begin", a6, a7, a8, a2);
  if (!a2[1])
  {
    if (*a2)
    {
      v8 = osspi_DataClose(*a2);
      *a2 = 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  v16 = critsec_Enter(*(*a1 + 24));
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v20 = a2[1];
  v21 = *(v20 + 120);
  if (v21)
  {
    v22 = v21 - 1;
    *(v20 + 120) = v22;
    if (!v22)
    {
LABEL_12:
      v34 = 0;
      if ((brkhlp_SearchAddOn(a1, *(v20 + 128), &v34) & 0x80001FFF) == 0x8000000A)
      {
LABEL_13:
        critsec_Leave(*(*a1 + 24));
        return 2169528330;
      }

      v23 = v34;
      if (v34)
      {
        goto LABEL_16;
      }

      v31 = strlen(*(a2[1] + 128));
      v32 = heap_Alloc(*(v11 + 8), (v31 + 1));
      if (!v32)
      {
        goto LABEL_13;
      }

      v33 = v32;
      engbrk_CreateSurrogateBrokerString(*(a2[1] + 128), v32);
      if (!strcmp(*(a2[1] + 128), v33))
      {
        heap_Free(*(v11 + 8), v33);
      }

      else
      {
        brkhlp_SearchAddOn(a1, v33, &v34);
        v23 = v34;
        heap_Free(*(v11 + 8), v33);
        if (v23)
        {
LABEL_16:
          *(v23 + 16) = 0;
        }
      }

      v24 = a2[1];
      if (*(v24 + 112))
      {
        osspi_DataClose(*(v24 + 112));
        v25 = a2[3];
        v24 = a2[1];
        *(v24 + 112) = 0;
        if (v25)
        {
          if (a2[4])
          {
            objc_ReleaseObject(*(v11 + 48), "URIFETCHER");
            a2[3] = 0;
            a2[4] = 0;
            v24 = a2[1];
          }
        }
      }

      clcarchive_ObjClose(v24);
      a2[1] = 0;
    }
  }

  else
  {
    log_OutText(a1[1], "BROKER", 1, 0, "brk_DataClose : RefCount is 0 before substruction. hData=%p", v17, v18, v19, a2);
    v20 = a2[1];
    if (!*(v20 + 120))
    {
      goto LABEL_12;
    }
  }

  v26 = critsec_Leave(*(*a1 + 24));
  v8 = v26 & (v26 >> 31);
LABEL_23:
  if (a2[3] && a2[4])
  {
    objc_ReleaseObject(*(v11 + 48), "URIFETCHER");
    a2[3] = 0;
    a2[4] = 0;
  }

  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(a1[1], "BROKER", 280, "%s%p%s%x", v12, v13, v14, v15, "hData");
  }

  heap_Free(*(v11 + 8), a2);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : End %x", v27, v28, v29, v8);
  return v8;
}

uint64_t engbrk_DataMap(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v10 = engbrk_DataMapEx(a1, a2, a3, &v12, a5, a6, a7, a8);
  if ((v10 & 0x80000000) == 0 && a4 > v12)
  {
    bzero((*a5 + v12), a4 - v12);
  }

  return v10;
}

uint64_t engbrk_DataFreeze(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  if (a1 && a2)
  {
    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataFreeze : hData=%p : Begin", a6, a7, a8, a2);
    v8 = 0;
    if (!*(a2 + 8))
    {
      v14 = osspi_DataFreeze(*a2);
      v8 = v14;
      if ((v14 & 0x80000000) != 0 && (v14 & 0x1FFF) != 1)
      {
        log_OutPublic(*(a1 + 8), "BROKER", 297, "%s%p%s%x", v15, v11, v12, v13, "hData");
      }
    }

    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataFreeze : End %x", v11, v12, v13, v8);
  }

  return v8;
}

uint64_t engbrk_TagIteratorOpen(uint64_t a1, char *a2, char *a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = 2169528327;
  v39 = 0;
  v40 = 0;
  if (a1 && a2 && a3 && *a2 && a5 && *a3)
  {
    v14 = *(*a1 + 16);
    *a5 = 0;
    log_OutText(*(v14 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen BrokerString=%s Query=%s QueryMode=%d: Begin", a6, a7, a8, a2);
    v15 = brkhlp_SearchAddOn(a1, a2, &v40);
    if (v40)
    {
      v23 = v15 < 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23 && (v15 & 0x1FFF) == 13)
    {
      v25 = 2169528333;
    }

    else
    {
      v25 = v15;
    }

    if ((v25 & 0x80000000) != 0 || !v40)
    {
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v38 = v14;
      v26 = 0;
    }

    else
    {
      v38 = v14;
      v26 = *v40;
    }

    for (i = a3; ; i = v29 + 1)
    {
      v28 = strchr(i, 47);
      v29 = v28;
      if (!v28 && *i == 42 && !i[1])
      {
        break;
      }

      if (v39)
      {
        v26 = *(v39 + 16);
      }

      if (!v26)
      {
        goto LABEL_40;
      }

      if (!v28)
      {
        if ((ssftmap_FindReadOnly(v26, i, &v39) & 0x80000000) != 0)
        {
LABEL_40:
          v25 = 2169528333;
          v14 = v38;
          goto LABEL_41;
        }

        break;
      }

      if ((v28 - i) > 0x7FuLL)
      {
        v31 = v26;
        v30 = i;
      }

      else
      {
        __strncpy_chk();
        v41[v29 - i] = 0;
        v30 = v41;
        v31 = v26;
      }

      if ((ssftmap_FindReadOnly(v31, v30, &v39) & 0x80000000) != 0)
      {
        goto LABEL_40;
      }
    }

    v14 = v38;
    v32 = heap_Calloc(*(v38 + 8), 1, 24);
    *a5 = v32;
    if (!v32)
    {
      v25 = 2169528330;
LABEL_43:
      v35 = *(v14 + 32);
      if (a4)
      {
        log_OutText(v35, "BROKER", 3, 0, "brk_TagIteratorOpen : BrokerString=%s Query=%s  Failure (%x)", v20, v21, v22, a2);
      }

      else
      {
        log_OutPublic(v35, "BROKER", 282, "%s%s%s%s%s%x", v19, v20, v21, v22, "Broker String");
      }

      goto LABEL_46;
    }

    if (*i == 42 && !i[1])
    {
      if (v39)
      {
        v26 = *(v39 + 16);
      }

      String = ssftmap_IteratorOpen(v26, 0, 1, v32 + 16);
LABEL_53:
      v25 = String;
      **a5 = v38;
      if ((String & 0x80000000) == 0)
      {
LABEL_46:
        log_OutText(*(v14 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen iterator address = %p: End", v20, v21, v22, *a5);
        v8 = v25;
        goto LABEL_47;
      }

      goto LABEL_41;
    }

    v33 = ssftmap_IteratorOpen(v26, i, 1, v32 + 16);
    if ((v33 & 0x80000000) == 0)
    {
      String = brkhlp_CreateString((*a5 + 8), i, *(v38 + 8));
      goto LABEL_53;
    }

    v25 = v33;
LABEL_41:
    if (*a5)
    {
      engbrk_TagIteratorClose(*a5, v16, v17, v18, v19, v20, v21, v22);
      *a5 = 0;
    }

    goto LABEL_43;
  }

LABEL_47:
  v36 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t engbrk_TagIteratorClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2169528327;
  }

  v9 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorClose iterator=%p: Begin", a6, a7, a8, a1);
  v10 = a1[1];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
  }

  v11 = a1[2];
  if (v11)
  {
    ssftmap_IteratorClose(v11);
  }

  heap_Free(*(v9 + 8), a1);
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brk_TagIteratorClose: End", v12, v13, v14, v16);
  return 0;
}

uint64_t engbrk_DataGetSize(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a2 && a3 && a1 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v18 = *a3;
    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataGetSize : hData=%p Get Size Valid=%d Size=%u : Begin", a6, a7, a8, a2);
    v16 = *(a2 + 8);
    if (v16)
    {
      *a4 = *(*(v16 + 8) + 40 * *(a2 + 16) + 16);
      *a3 = 1;
    }

    else
    {
      v17 = *a3;
    }

    v19 = *a4;
    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataGetSize : End (%x, %d, %u)", v13, v14, v15, 0);
    return 0;
  }

  return result;
}

uint64_t engbrk_TagIteratorNext(uint64_t a1, const char **a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = 0;
  v8 = 2169528327;
  if (!a1 || !a2 || !a3)
  {
    return v8;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext iterator=%p: Begin", a6, a7, a8, a1);
  v16 = ssftmap_IteratorNext(*(a1 + 16), a2, &v24);
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v17 = *(a1 + 8);
  if (!v17 || !strcmp(v17, *a2))
  {
    v18 = v24;
    if (v24[2])
    {
      v19 = 0;
    }

    else
    {
      v19 = *v24;
    }

    *a3 = v19;
    if (a4)
    {
      *a4 = v18[1];
    }

LABEL_13:
    v8 = v16;
    goto LABEL_14;
  }

  v8 = 2169528343;
LABEL_14:
  v20 = *a2;
  if (!*a2)
  {
    v20 = "";
  }

  if (*a3)
  {
    v21 = *a3;
  }

  if (a4)
  {
    v22 = *a4;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext Name=%s, Value=%s, Attrs=%p: End", v13, v14, v15, v20);
  return v8;
}

uint64_t engbrk_ComponentPathQuery(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2169528327;
  v14 = 0;
  if (!a1)
  {
    return v8;
  }

  if (!a3)
  {
    return v8;
  }

  if (!a2)
  {
    return v8;
  }

  if (!*a1)
  {
    return v8;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_ComponentPathQuery BrokerString=%s : Begin", a6, a7, a8, a2);
  v8 = 2169528333;
  if ((brkhlp_SearchAddOn(a1, a2, &v14) & 0x80000000) != 0 || !v14)
  {
    return v8;
  }

  v12 = *v14;

  return brkhlp_SearchTag(v12, "FULLPATHCOMPONENT", a3);
}

uint64_t engbrk_ComponentPathRelease(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease address = %p : Begin", a6, a7, a8, a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease : End", v10, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_RegisterCupAddon(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = 0;
  *a2 = 0;
  *a3 = 0;
  result = 2169528326;
  if (a1)
  {
    if (a4)
    {
      result = objc_GetAddRefCountedObject(*(*(a4 + 16) + 48), a1, ObjcLoadCupAddon, ObjcUnloadCupAddon, 0, &v9);
      if ((result & 0x80000000) == 0)
      {
        if (v9)
        {
          v8 = *(v9 + 32);
          if (v8)
          {
            *a2 = *(*v8 + 16);
            *a3 = v8[3];
          }
        }
      }
    }
  }

  return result;
}

uint64_t ObjcLoadCupAddon(_WORD *a1, int a2, char *a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  NullHandle = safeh_GetNullHandle();
  v10 = v9;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = 2169528330;
  v13 = heap_Calloc(*(v24 + 8), 1, 32);
  if (v13)
  {
    v14 = v13;
    v15 = strhelper_Strdup(*(v24 + 8), a3);
    *(v14 + 8) = v15;
    if (v15)
    {
      v16 = heap_Calloc(*(v24 + 8), 1, 8);
      *(v14 + 24) = v16;
      if (v16)
      {
        v17 = UriToBrokerString(*(v24 + 8), a3);
        *(v14 + 16) = v17;
        if (v17)
        {
          if ((objc_GetObject(*(v24 + 48), "URIFETCHER", &v23) & 0x80000000) != 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = v23[1];
            NullHandle = v23[2];
            v10 = v23[3];
          }

          v19 = clcarchive_ObjOpen(a1, a2, *(v14 + 16), &v22);
          if ((v19 & 0x80000000) == 0)
          {
            ++*(v22 + 120);
            v19 = osspi_DataOpenEx(*(v24 + 64), *(v24 + 8), v18, NullHandle, v10, a3, &v21);
            if ((v19 & 0x80000000) == 0)
            {
              v19 = osspi_ClcDataOpen(v21, v22);
              if ((v19 & 0x80000000) == 0)
              {
                **(v14 + 24) = v21;
                v19 = brkhlp_RegisterAddon(*(v14 + 16), a3, v22, v14, **(v24 + 24));
              }
            }
          }

          v12 = v19;
          if (v18 && NullHandle)
          {
            objc_ReleaseObject(*(v24 + 48), "URIFETCHER");
          }

          if ((v12 & 0x80000000) == 0)
          {
            *(a4 + 32) = v14;
            return v12;
          }
        }

        else
        {
          v12 = 2169528338;
        }
      }
    }

    FreeAllCupAddonResources(v24, v14);
  }

  return v12;
}

uint64_t ObjcUnloadCupAddon(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  inited = InitRsrcFunction(a1, a2, &v7);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      FreeAllCupAddonResources(v7, v5);
    }
  }

  return inited;
}

uint64_t engbrk_UnregisterCupAddon(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    objc_ReleaseObject(*(*(a2 + 16) + 48), a1);
  }

  return 0;
}

uint64_t engbrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 8;
  }

  result = 0;
  *a2 = &IBroker;
  return result;
}

char *brkhlp_CloneString(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = heap_Calloc(a1, 1, (v4 + 1));
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

uint64_t brkhlp_ElemCopyAddOn(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = heap_Alloc(a2, 24);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  result = 0;
  v8 = *a1;
  *(v6 + 16) = *(a1 + 2);
  *v6 = v8;
  *a1 = 0;
  *(a1 + 2) = 0;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeAddOn(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      hdrpars_FreeHeader(v4);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_ElemCopyLoadedIntf(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v7;
  *a1 = 0;
  NullHandle = safeh_GetNullHandle();
  result = 0;
  *(a1 + 16) = NullHandle;
  *(a1 + 24) = v10;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeLoadedIntf(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (result[2])
    {
      v4 = *(result[1] + 24);
      if (v4)
      {
        v5 = result[3];
        v4();
      }
    }

    if (*v3)
    {
      osspi_DynModClose(*v3);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_InternalSearchAddOn(uint64_t a1, char *a2, void *a3)
{
  v5 = 2169528333;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 1, &v12);
  v7 = v6;
  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 & 0x1FFF) == 0x14)
    {
      return 2169528333;
    }

    else
    {
      return v6;
    }
  }

  while ((ssftmap_IteratorNext(v12, &v11, &v10) & 0x80000000) == 0)
  {
    v8 = LH_stricmp(a2, v11);
    if (!v8)
    {
      *a3 = v10;
      break;
    }

    if (v8 > 0)
    {
      break;
    }
  }

  ssftmap_IteratorClose(v12);
  if (*a3)
  {
    return v7;
  }

  return v5;
}

uint64_t brkhlp_allocateAndStoreTagInMap(void *a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v10 = strlen(__s);
  v11 = heap_Calloc(a1, 1, v10 + 25);
  if (!v11)
  {
    return 2169528330;
  }

  v12 = v11;
  v13 = (v11 + 24);
  *v12 = v13;
  strcpy(v13, __s);
  result = ssftmap_Insert(a2, a4, v12);
  if ((result & 0x80000000) == 0)
  {
    *a5 = v12;
  }

  return result;
}

void *brkhlp_ElemFreeTag(void *result, void *a2)
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

void *FreeAllCupAddonResources(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[3];
  if (v5)
  {
    v6 = *v5;
    v7 = a2[2];
    v8 = **(a1 + 24);
    v19 = 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        if ((critsec_Enter(*(v8 + 24)) & 0x80000000) == 0)
        {
          if ((brkhlp_InternalSearchAddOn(*(*(v8 + 16) + 24), v7, &v19) & 0x80000000) == 0)
          {
            v11 = v19;
            v12 = *(v19 + 16);
            if (v12)
            {
              if (v6)
              {
                osspi_ClcDataClose(v6, v12);
                v12 = *(v11 + 16);
              }

              --*(v12 + 120);
              clcarchive_ObjClose(v12);
            }
          }

          if ((ssftmap_Remove(*(v8 + 40), v7) & 0x80000000) == 0)
          {
            log_OutText(*(v10 + 32), "BROKER", 4, 0, "brkhlp_RemoveAddOn: %s", v13, v14, v15, v7);
          }

          critsec_Leave(*(v8 + 24));
        }
      }
    }

    if (v6)
    {
      osspi_DataClose(v6);
    }

    heap_Free(v4, a2[3]);
    v4 = *(a1 + 8);
  }

  v16 = a2[1];
  if (v16)
  {
    heap_Free(v4, v16);
    v4 = *(a1 + 8);
  }

  v17 = a2[2];
  if (v17)
  {
    heap_Free(v4, v17);
    v4 = *(a1 + 8);
  }

  return heap_Free(v4, a2);
}

uint64_t brkhlp_GetBuiltinInterface(char *__s1, void *a2, void *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = "fe/fe_prmfx";
  v9 = &off_1F42CE750;
  while (strcmp(__s1, v8))
  {
    v10 = *v9;
    v9 += 4;
    v8 = v10;
    if (!v10)
    {
      return 2169528333;
    }
  }

  v12 = *(v9 - 3);
  result = 0;
  if (v12)
  {
    *a2 = v12;
  }

  else
  {
    *a3 = *(v9 - 2);
    *a4 = *(v9 - 1);
  }

  return result;
}

uint64_t log_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = 2226135048;
  v21 = 0;
  if (a4)
  {
    if ((InitRsrcFunction(a1, a2, &v21) & 0x80000000) == 0)
    {
      *a4 = 0;
      v8 = heap_Calloc(*(v21 + 8), 1, 224);
      if (v8)
      {
        v9 = v8;
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 192) = 0u;
        *(v8 + 208) = 0u;
        *(v8 + 160) = 0u;
        *(v8 + 176) = 0u;
        *(v8 + 128) = 0u;
        *(v8 + 144) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 80) = 0u;
        *(v8 + 32) = 0u;
        *(v8 + 48) = 0u;
        *v8 = a1;
        *(v8 + 8) = a2;
        *(v8 + 16) = v21;
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v24 = 0;
        bzero(v27, 0x400uLL);
        v22 = 0;
        if ((InitRsrcFunction(*v9, *(v9 + 8), &v26) & 0x80000000) != 0 || !*(v26 + 40))
        {
LABEL_49:
          log_ClassClose(v9);
        }

        else
        {
          if (brk_TagIteratorOpen(*(*(v9 + 16) + 24), "logging", "*", 1, &v22))
          {
            v10 = 1;
          }

          else
          {
            v10 = v22 == 0;
          }

          if (!v10)
          {
            while ((brk_TagIteratorNext(v22, &v24, &v23) & 0x80000000) == 0)
            {
              v12 = v23;
              v11 = v24;
              if (v24)
              {
                v13 = v23 == 0;
              }

              else
              {
                v13 = 1;
              }

              if (v13 || !strcmp(v24, "BROKERSTRING"))
              {
                continue;
              }

              v27[0] = 0;
              if (!strcmp(v11, "LOG.DIAGNOSTIC"))
              {
                v24 = "logfile.enabled";
                goto LABEL_36;
              }

              if (!strcmp(v11, "LOG.DIAGNOSTIC.LEVEL"))
              {
                v14 = "logfile.filter.level";
              }

              else if (!strcmp(v11, "LOG.DIAGNOSTIC.DIR"))
              {
                v14 = "logfile.filename.1";
              }

              else
              {
                if (!strcmp(v11, "LOG.DIAGNOSTIC.FILEMAXSIZEMB"))
                {
                  v24 = "logfile.max_size";
                  __strcpy_chk();
                  __strcat_chk();
LABEL_32:
                  v23 = v27;
                  goto LABEL_36;
                }

                if (!strcmp(v11, "LOG.DIAGNOSTIC.FILEMIMETYPE"))
                {
                  v14 = "logfile.filemimetype";
                }

                else
                {
                  if (!strcmp(v11, "LOG.DIAGNOSTIC.MODULES"))
                  {
                    v24 = "logfile.filter.modules";
                    LH_MapModuleNamesToIds(v12, v27, 0x400u);
                    goto LABEL_32;
                  }

                  if (!strcmp(v11, "LOG.TSO"))
                  {
                    v14 = "logtso.enabled";
                  }

                  else if (!strcmp(v11, "LOG.TSO.LEVEL"))
                  {
                    v14 = "logtso.filter.level";
                  }

                  else
                  {
                    if (strcmp(v11, "LOG.TSO.FILENAME"))
                    {
                      goto LABEL_36;
                    }

                    v14 = "logtso.filename";
                  }
                }
              }

              v24 = v14;
LABEL_36:
              Str = paramc_ParamGetStr(*(v26 + 40), v24, &v25);
              v16 = *(v26 + 40);
              if (Str < 0)
              {
                if ((paramc_ParamSetStr(v16, v24, v23) & 0x80000000) != 0)
                {
                  brk_TagIteratorClose(v22);
                  v4 = 2226135040;
                  goto LABEL_49;
                }
              }

              else
              {
                paramc_ParamRelease(v16);
              }
            }

            brk_TagIteratorClose(v22);
          }

          v17 = 0;
          v18 = &LOG_SUBSCRIBER_ID;
          do
          {
            if (v17 != 40)
            {
              brk_InterfaceQueryEx(*(*(v9 + 16) + 24), *v18, 1, 1, v9 + v17 + 48, v9 + v17 + 40);
            }

            v17 += 40;
            ++v18;
          }

          while (v17 != 200);
          v4 = 0;
          *a4 = v9;
        }
      }

      else
      {
        v4 = 2226135050;
      }
    }
  }

  else
  {
    v4 = 2226135046;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t log_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = 40; i != 240; i += 40)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      v4 = brk_InterfaceRelease(*(*(a1 + 16) + 24), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      *(a1 + i) = 0;
    }
  }

  v8 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) != 0)
  {
    return 2226135048;
  }

  v6 = inited;
  heap_Free(*(v8 + 8), a1);
  return v6;
}

uint64_t log_ObjOpen(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = 2226135046;
    if (a2)
    {
      *a2 = 0;
      v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 128);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v5[6] = 0u;
        v5[7] = 0u;
        v5[4] = 0u;
        v5[5] = 0u;
        v5[2] = 0u;
        v5[3] = 0u;
        *v5 = 0u;
        v5[1] = 0u;
        *v5 = *(*(a1 + 16) + 8);
        v8 = (a1 + 56);
        do
        {
          v9 = *(v8 - 2);
          *(v6 + v7 + 24) = v9;
          if (v9)
          {
            v10 = (*(v9 + 32))(*(v8 - 1), *v8, v6 + v7 + 16);
            if ((v10 & 0x80000000) != 0)
            {
              v3 = v10;
              log_ObjClose(v6);
              return v3;
            }
          }

          v8 += 5;
          v7 += 16;
        }

        while (v7 != 80);
        v11 = 0;
        *(v6 + 96) = 1;
        do
        {
          v12 = *(v6 + v11 + 24);
          if (v12)
          {
            v13 = *(v12 + 80);
            if (v13)
            {
              v14 = v13(*(v6 + v11 + 16));
              if (v14 > *(v6 + 96))
              {
                *(v6 + 96) = v14;
              }
            }
          }

          v11 += 16;
        }

        while (v11 != 80);
        v3 = 0;
        *a2 = v6;
      }

      else
      {
        return 2226135050;
      }
    }
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  return v3;
}

uint64_t log_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = v1[v2 + 3];
      if (v3)
      {
        v4 = v3[5];
        if (v4)
        {
          if (v1[v2 + 2])
          {
            result = v4();
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v2 += 2;
      if (v2 == 10)
      {
        heap_Free(*v1, v1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberAdd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 112))
    {
      return 2226135040;
    }

    else
    {
      *(result + 104) = a2;
      *(result + 112) = a3;
      if (a3 && (v4 = *(a3 + 80)) != 0 && (v5 = v4(a2), v5 > *(v3 + 96)))
      {
        v6 = v5;
        result = 0;
        *(v3 + 96) = v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LH_ERROR_to_VERROR(int a1)
{
  v1 = 11;
  for (i = &dword_1C37AAA70; *(i - 1) != a1; i += 2)
  {
    if (!--v1)
    {
      return 2703237376;
    }
  }

  v4 = *i;
  if (v4)
  {
    return v4 | 0xA1202000;
  }

  else
  {
    return 0;
  }
}

uint64_t compstats_ObjOpen(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v27 = 0;
  result = 2285903879;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = InitRsrcFunction(a1, a2, &v27);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = heap_Calloc(*(v27 + 8), 1, 320);
  if (!v9)
  {
LABEL_13:
    log_OutPublic(*(v27 + 32), "CompStats", 2688, 0, v10, v11, v12, v13, v26);
    return 2285903882;
  }

  v14 = v9;
  *(v9 + 284) = a3;
  v15 = 2 * a3;
  v16 = heap_Calloc(*(v27 + 8), v15, 56);
  v14[36] = v16;
  if (!v16)
  {
    heap_Free(*(v27 + 8), v14);
    goto LABEL_13;
  }

  *v14 = a1;
  v14[1] = a2;
  v14[2] = v27;
  v14[38] = v16 + 56 * a3;
  if (v15)
  {
    v17 = 0;
    __asm { FMOV            V1.2D, #1.0 }

    do
    {
      v23 = v14[36];
      if (v23)
      {
        v24 = v23 + v17;
        *(v24 + 48) = 0;
        *(v24 + 16) = 0uLL;
        *(v24 + 32) = 0uLL;
        *v24 = 0uLL;
        *(v24 + 40) = _Q1;
        *(v24 + 32) = 0;
      }

      v17 += 56;
    }

    while (56 * v15 != v17);
  }

  *a4 = v14;
  *(a4 + 8) = 61435;
  v25 = *(a4 + 8);
  return compstats_Reset(v14);
}

uint64_t compstats_ClockInit(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  result = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t compstats_Reset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  *(a1 + 24) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  v1 = *(a1 + 284);
  if (v1)
  {
    v2 = 0;
    for (i = 0; i < v1; ++i)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        v5 = v4 + v2;
        *(v5 + 32) = 0;
        *v5 = 0uLL;
        *(v5 + 16) = 0uLL;
        v1 = *(a1 + 284);
      }

      v2 += 56;
    }
  }

  return 0;
}

uint64_t compstats_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 61435, 320);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(*(a1 + 16) + 8);
    heap_Free(v4, *(a1 + 288));
    heap_Free(v4, a1);
  }

  return v3;
}

uint64_t compstats_Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    v9 = a3;
    if (*(a1 + 284) <= a3)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2689, 0, a5, a6, a7, a8, v21);
    }

    else if (*(a1 + 24) < 0x40u)
    {
      v11 = compstats_ClockXStart(*(a1 + 288) + 56 * a3, *(a1 + 16) + 384, a3, a4, a5, a6, a7, a8);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      else
      {
        v18 = *(a1 + 24);
        if (v18 && (v19 = *(a1 + 4 * (v18 - 1) + 28)) != 0)
        {
          v8 = compstats_ClockXStop(*(a1 + 288) + 56 * v19, *(a1 + 16) + 384, v12, v13, v14, v15, v16, v17);
          v18 = *(a1 + 24);
        }

        else
        {
          v8 = 0;
        }

        *(a1 + 4 * v18 + 28) = v9;
        *(a1 + 24) = v18 + 1;
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2690, 0, a5, a6, a7, a8, v21);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t compstats_ClockXStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0, a5, a6, a7, a8, v12[0]);
      return 2285903889;
    }

    else
    {
      v10 = *a2;
      if (*a2)
      {
        memset(v12, 0, 12);
        (*v10)(*(a2 + 8), v12);
        v8 = 0;
        *(a1 + 12) = v12[0];
        *(a1 + 4) = *(v12 + 4);
      }

      else
      {
        return 0;
      }
    }
  }

  return v8;
}

uint64_t compstats_ClockXStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      v16 = 0;
      v17 = 0;
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      compstats_ClockXStart(v14, a2, a3, a4, a5, a6, a7, a8);
      v10 = vsub_s32(*(v14 + 4), *(a1 + 4));
      v11 = *(a1 + 16);
      v12 = HIDWORD(v14[0]) - *(a1 + 12);
      *(a1 + 28) = vadd_s32(*(a1 + 28), v10);
      *(a1 + 36) += v12;
      if (*(a1 + 20) + v11 < vadd_s32(vdup_lane_s32(v10, 1), v10).u32[0])
      {
        *(a1 + 16) = v10;
      }

      if (*(a1 + 24) < v12)
      {
        *(a1 + 24) = v12;
      }

      v8 = 0;
      *(a1 + 8) = 0;
      *a1 = (*a1 + 1);
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0, a5, a6, a7, a8, v14[0]);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t compstats_Stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (!a1)
  {
    return v8;
  }

  if (*(a1 + 284) <= a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2691, 0, a5, a6, a7, a8, v22);
    return v8;
  }

  v10 = *(a1 + 24);
  if (!v10 || *(a1 + 28 + 4 * (v10 - 1)) != a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2692, 0, a5, a6, a7, a8, v22);
    return 2285903889;
  }

  v8 = compstats_ClockXStop(*(a1 + 288) + 56 * a3, *(a1 + 16) + 384, a3, a4, a5, a6, a7, a8);
  v17 = *(a1 + 24);
  *(a1 + 24) = v17 - 1;
  if (v17 == 1)
  {
    return v8;
  }

  v18 = *(a1 + 28 + 4 * (v17 - 2));
  if (!v18)
  {
    return v8;
  }

  v19 = *(a1 + 288) + 56 * v18;
  v20 = *(a1 + 16) + 384;

  return compstats_ClockXStart(v19, v20, v11, v12, v13, v14, v15, v16);
}

uint64_t compstats_Notify(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2285903879;
  }

  if (a3 != 8)
  {
    return 0;
  }

  if (!*(a1 + 296))
  {
    *(a1 + 296) = 1;
    memcpy(*(a1 + 304), *(a1 + 288), 56 * *(a1 + 284));
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = 4 * v10;
      do
      {
        v12 = *(a1 + 304) + 56 * *(a1 + 24 + v11);
        if (*(v12 + 12))
        {
          compstats_ClockXStop(v12, *(a1 + 16) + 384, v4, v5, v6, v7, v8, v9);
        }

        v11 -= 4;
      }

      while (v11);
    }

    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "audiooutputbufsamples", (a1 + 312));
  }

  return 0;
}

uint64_t compstats_ClockReset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  result = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t compstats_Log(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v15 = 0;
  result = 2285903879;
  if (a1 && a3)
  {
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "pipeline", &v15) & 0x80000000) != 0)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = v15;
    }

    if (*(a1 + 296))
    {
      compstats_LogReport(*(a1 + 284), *(a1 + 304), a3, a4, " Latency", v14, *(a1 + 312), a5, 0, 0);
      v14 = v15;
    }

    compstats_LogReport(*(a1 + 284), *(a1 + 288), a3, a4, 0, v14, *(a1 + 312), a5, a6, a7);
    return 0;
  }

  return result;
}

uint64_t compstats_LogReport(unsigned int a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = "";
  }

  log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report Start====================", a6, a7, a8, v16);
  if (a6 && *a6)
  {
    log_OutText(a3, "CompStats", 2, 0, "Pipeline %s", v17, v18, v19, a6);
  }

  if (a7)
  {
    log_OutText(a3, "CompStats", 2, 0, "Audio output buffer samples %u", v17, v18, v19, a7);
  }

  v20 = a9;
  v21 = a10;
  log_OutText(a3, "CompStats", 2, 0, "<CPU msec> / <real-time msec>, <%% CPU> / <%% real-time> (timer starts), <max CPU> / <max real-time>", v17, v18, v19, v63);
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v22, v23, v24, v64);
  v28 = *(a2 + 32) + *(a2 + 28);
  v29 = *(a2 + 36);
  if (a1 <= 1)
  {
    v44 = v28 == 0;
    if (v28)
    {
      v37 = v28;
    }

    else
    {
      v37 = 0.0001;
    }

    if (v29)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0001;
    }
  }

  else
  {
    v78 = v16;
    v30 = 0;
    v31 = 0;
    v32 = a1 - 1;
    v79 = a2;
    v33 = (a2 + 92);
    v34 = v32;
    v35 = *(a2 + 36);
    v36 = v28;
    do
    {
      v36 -= *(v33 - 2) + *(v33 - 1);
      v35 -= *v33;
      if (v31 <= *(v33 - 4) + *(v33 - 5))
      {
        v31 = *(v33 - 4) + *(v33 - 5);
      }

      if (v30 <= *(v33 - 3))
      {
        v30 = *(v33 - 3);
      }

      v33 += 14;
      --v34;
    }

    while (v34);
    v77 = v28 == 0;
    if (v28)
    {
      v37 = v28;
    }

    else
    {
      v37 = 0.0001;
    }

    if (v29)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0001;
    }

    v39 = (a8 + 8);
    v40 = (v79 + 104);
    do
    {
      if (a8)
      {
        v41 = *v39;
        if (!*v39)
        {
          v41 = "";
        }
      }

      else
      {
        v41 = "";
      }

      v42 = (*(v40 - 4) + *(v40 - 5));
      v43 = *(v40 - 3);
      v74 = *(v40 - 12);
      v75 = (*(v40 - 7) + *(v40 - 8)) / *(v40 - 1);
      v76 = *(v40 - 6) / *v40;
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u), %7.1f / %7.1f", v25, v26, v27, v41);
      ++v39;
      v40 += 7;
      --v32;
    }

    while (v32);
    v29 = v35;
    v28 = v36;
    v16 = v78;
    a2 = v79;
    v21 = a10;
    v20 = a9;
    v44 = v77;
  }

  v68 = v28 / *(a2 + 40);
  v71 = v29 / *(a2 + 48);
  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u)", v25, v26, v27, "Other");
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v45, v46, v47, v65);
  v48 = v37;
  v49 = *(a2 + 40);
  v50 = *(a2 + 48);
  v51 = v38;
  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f  %6s    %6s   %4s   %7.1f / %7.1f", v52, v53, v54, "TOTAL");
  if (v21 | v20)
  {
    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v55, v56, v57, v66);
    if (v20)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", v58, v59, v60, "Input text length (bytes)");
    }

    if (v21)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", v58, v59, v60, "Output duration (msec)");
      if (!v44)
      {
        v69 = v21 / (v48 / *(a2 + 40));
        v72 = v21 / (v51 / *(a2 + 48));
        log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", v58, v59, v60, "Real-time rate");
      }
    }

    if (v20)
    {
      v61 = v20;
      v70 = v48 / *(a2 + 40) / v61;
      v73 = v51 / *(a2 + 48) / v61;
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", v58, v59, v60, "Msec per byte of input");
    }

    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------", v58, v59, v60, v67);
  }

  return log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report End====================", v55, v56, v57, v16);
}

uint64_t compstats_ClockStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0, a5, a6, a7, a8, v10);
      return 2285903889;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t compstats_ClockStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      return 0;
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0, a5, a6, a7, a8, v10);
      return 2285903889;
    }
  }

  return v8;
}

uint64_t critsec_cb_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2168463367;
  if (a3)
  {
    v11 = heap_Calloc(a1, 1, 32);
    *a5 = v11;
    if (v11)
    {
      v5 = 0;
      *v11 = a1;
      *(*a5 + 8) = a2;
      *(*a5 + 16) = a3;
      *(*a5 + 24) = a4;
    }

    else
    {
      return 2168463370;
    }
  }

  return v5;
}

uint64_t critsec_cb_ClassClose(uint64_t *a1)
{
  result = 2168463367;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t critsec_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2168463367;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 24), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2168463370;
    }
  }

  return v3;
}

uint64_t critsec_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(*(a1 + 16));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(a1 + 8), a1);
  return v3;
}

uint64_t critsec_Enter(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 16);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t critsec_Leave(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 24);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t brk_ClassOpen(_WORD *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  result = InitRsrcFunction(a1, a2, &v14);
  if ((result & 0x80000000) == 0)
  {
    v13 = v14;
    memcpy((v14 + 80), a3, 0x130uLL);
    return (*(v13 + 96))(a1, a2, a4, a5, a6);
  }

  return result;
}

uint64_t brk_ClassClose(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))();
  }

  return result;
}

uint64_t brk_ClassUpdate(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 352))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjOpen(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a2 + 16) + 120))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*a1 + 16) + 128))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjGetClass(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 136))();
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 2169528327;
}

uint64_t brk_InterfaceQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2 && a6)
  {
    return (*(*(*a1 + 16) + 272))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_InterfaceRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 280))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a5 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 160))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 168))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 240))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorNext(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 248))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 256))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataOpenEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a4)
  {
    return (*(*(*a1 + 16) + 304))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataClose(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 312))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a5)
  {
    return (*(*(*a1 + 16) + 320))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a4 && a5)
  {
    return (*(*(*a1 + 16) + 328))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataUnmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*(*a1 + 16) + 336))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapDeRefCnt(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, a5);
    }
  }

  return result;
}

uint64_t getObjcForThisApi(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  __s1 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
  {
    v3 = a2;
  }

  return *(v3 + 48);
}

uint64_t brk_DataMapRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      v19[0] = a1;
      v19[1] = a2;
      v19[2] = a3;
      v19[3] = a4;
      v20 = a6;
      v21 = a7;
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, brkDataMap_ObjcLoad, brkDataMap_ObjcClose, v19, &v22);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v22 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t brkDataMap_ObjcLoad(_WORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  inited = InitRsrcFunction(a1, a2, &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2169528327;
  v10 = v18;
  v11 = heap_Calloc(*(v18 + 8), 1, 272);
  *(a4 + 32) = v11;
  if (!v11)
  {
    return 2169528330;
  }

  if (a3)
  {
    v12 = *(v10 + 24);
    if (v12)
    {
      inited = (*(*(*v12 + 16) + 304))(*(v10 + 24), a3, 1, v11 + 256);
      if ((inited & 0x80000000) == 0)
      {
        v13 = *(v10 + 24);
        v14 = *(a4 + 32);
        if (v13)
        {
          v15 = *(v14 + 256);
          if (v15)
          {
            v9 = (*(*(*v13 + 16) + 320))(*(v10 + 24), v15, *(a5 + 32), *(a5 + 36), v14 + 264);
            v16 = *(a4 + 32);
          }
        }

        __strcpy_chk();
        return v9;
      }

      return inited;
    }
  }

  return v9;
}

uint64_t brkDataMap_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v13 = 0;
  inited = InitRsrcFunction(a1, a2, &v13);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v5 = 2169528327;
  v6 = *(a3 + 32);
  v7 = *(v13 + 24);
  if (v7)
  {
    v8 = *(v6 + 256) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && *(v6 + 264) != 0)
  {
    inited = (*(*(*v7 + 16) + 336))();
    if ((inited & 0x80000000) == 0)
    {
      v10 = *(v13 + 24);
      if (v10)
      {
        v11 = *(v6 + 256) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v5 = (*(*(*v10 + 16) + 312))();
        if ((v5 & 0x80000000) == 0)
        {
          heap_Free(*(v13 + 8), v6);
        }
      }

      return v5;
    }

    return inited;
  }

  return v5;
}

uint64_t brk_DataFreeze(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 344))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorOpen(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (!a1 || !a2 || !a3 || !*a2 || !a5 || !*a3)
  {
    return 2169528327;
  }

  v5 = *(*a1 + 16);
  *a5 = 0;
  return (*(v5 + 200))();
}

uint64_t brk_TagIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 208))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 216))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_RegisterCupAddon(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && (v4 = *a1) != 0 && (v5 = *(v4 + 16)) != 0)
  {
    return (*(v5 + 368))(a2, a3, a4, v4);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_UnregisterCupAddon(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0 && (v3 = *(v2 + 16)) != 0)
  {
    return (*(v3 + 376))(a2, v2);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t filespi_fopen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    if (**(a1 + 16))
    {
      v11 = heap_Calloc(a2, 1, 24);
      *a5 = v11;
      if (v11)
      {
        *v11 = a1;
        *(*a5 + 8) = a2;
        v5 = (**(a1 + 16))(*(a1 + 24), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v5;
}

uint64_t filespi_fclose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*a1 + 16) + 8))(*(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a1);
  }

  return v2;
}

uint64_t filespi_fread(uint64_t a1, int a2, int a3, void *a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 16);
    if (v6)
    {
      v7 = a4[2];
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_GetFileSize(void *a1)
{
  if (a1 && (v1 = *(*(*a1 + 16) + 32)) != 0)
  {
    return v1(a1[2]);
  }

  else
  {
    return 2153783296;
  }
}

uint64_t filespi_fwrite(uint64_t a1, int a2, int a3, void *a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 48);
    if (v6)
    {
      v7 = a4[2];
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_fflush(void *a1)
{
  result = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 56);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t heap_cb_Open(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2159026183;
  if (a1)
  {
    v7 = (*(a1 + 8))(a2, 1, 16);
    *a3 = v7;
    if (v7)
    {
      v3 = 0;
      *v7 = a1;
      *(*a3 + 8) = a2;
    }

    else
    {
      return 2159026186;
    }
  }

  return v3;
}

uint64_t heap_cb_Close(void *a1)
{
  if (!a1)
  {
    return 2159026183;
  }

  (*(*a1 + 24))(a1[1], a1);
  return 0;
}

uint64_t heap_Alloc(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (**a1)(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Calloc(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 8))(a1[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Realloc(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    return (*(v3 + 16))(a1[1]);
  }

  else
  {
    return (*v3)(a1[1], a3);
  }
}

void *heap_Free(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return (*(*result + 24))(result[1]);
    }
  }

  return result;
}

uint64_t heap_SetLog(void *a1)
{
  result = 2159026177;
  if (!a1)
  {
    return 2159026183;
  }

  v3 = *(*a1 + 32);
  if (v3)
  {
    return v3(a1[1]);
  }

  return result;
}

uint64_t thread_cb_ClassOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 2153783303;
  if (a3 && a4)
  {
    v13 = heap_Alloc(a1, 40);
    *a6 = v13;
    if (v13)
    {
      v6 = 0;
      *v13 = a1;
      *(*a6 + 8) = a2;
      *(*a6 + 16) = a3;
      *(*a6 + 24) = a4;
      *(*a6 + 32) = a5;
    }

    else
    {
      return 2153783306;
    }
  }

  return v6;
}

uint64_t thread_cb_ClassClose(uint64_t *a1)
{
  result = 2153783303;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t thread_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2153783303;
  if (a1 && a2 && a3)
  {
    v7 = heap_Alloc(a2, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 32), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v3;
}

uint64_t thread_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(*(a1 + 16));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(a1 + 8), a1);
  return v3;
}

uint64_t thread_Start(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 16);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t thread_Join(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 24);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t semaphore_ObjectOpen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    v11 = heap_Alloc(a2, 24);
    *a5 = v11;
    if (v11)
    {
      *v11 = a1;
      *(*a5 + 8) = a2;
      v12 = **(a1 + 24);
      if (v12)
      {
        v5 = v12(*(a1 + 32), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v5;
}

uint64_t semaphore_ObjectClose(uint64_t a1)
{
  v1 = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 8);
    if (v3)
    {
      v1 = v3(*(a1 + 16));
      if ((v1 & 0x80000000) == 0)
      {
        heap_Free(*(a1 + 8), a1);
      }
    }

    else
    {
      return 2153783304;
    }
  }

  return v1;
}

uint64_t semaphore_Acquire(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 16);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

uint64_t semaphore_Release(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 24);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

double MD5Init(uint64_t a1)
{
  result = -3.59869635e230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0;
  *a1 = xmmword_1C37AAB60;
  return result;
}

void *MD5Update(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = (*(a1 + 16) >> 3) & 0x3F;
  *(a1 + 16) += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    memcpy((a1 + 24 + v6), __src, 64 - v6);
    MD5Transform(a1, (a1 + 24));
    for (i = v6 ^ 0x7F; i < a3; i = v9 + 127)
    {
      v9 = v7;
      MD5Transform(a1, &__src[v7]);
      v7 += 64;
    }

    v6 = 0;
  }

  else
  {
    v7 = 0;
  }

  return memcpy((a1 + v6 + 24), &__src[v7], a3 - v7);
}

int8x16_t MD5Transform(_DWORD *a1, const char *a2)
{
  v95 = vld4q_s8(a2);
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = vmovl_u8(*v95.val[0].i8);
  v6 = vmovl_u16(*v5.i8);
  v7 = vmovl_high_u8(v95.val[0]);
  v8 = vmovl_high_u8(v95.val[1]);
  v9 = vmovl_u8(*v95.val[1].i8);
  v10 = vorrq_s8(vshll_high_n_u16(v8, 8uLL), vmovl_high_u16(v7));
  v11 = vorrq_s8(vshll_n_u16(*v8.i8, 8uLL), vmovl_u16(*v7.i8));
  v12 = vorrq_s8(vshll_high_n_u16(v9, 8uLL), vmovl_high_u16(v5));
  v13 = vorrq_s8(vshll_n_u16(*v9.i8, 8uLL), v6);
  _Q3 = vmovl_u8(*v95.val[2].i8);
  _Q4 = vmovl_high_u8(v95.val[2]);
  __asm { SHLL2           V5.4S, V4.8H, #0x10 }

  v21 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V3.8H, #0x10 }

  v23 = vorrq_s8(v13, vshll_n_s16(*_Q3.i8, 0x10uLL));
  v24 = vorrq_s8(v11, v21);
  v25 = vmovl_high_u8(v95.val[3]);
  v26 = vmovl_u8(*v95.val[3].i8);
  v27 = vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v26.i8), 0x18uLL));
  HIDWORD(v28) = *a1 + (v3 & ~v2 | v4 & v2) + v27.i32[0] - 680876936;
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 25) + v2;
  HIDWORD(v28) = v3 + v27.i32[1] - 389564586 + (v29 & v2 | v4 & ~v29);
  LODWORD(v28) = HIDWORD(v28);
  v30 = (v28 >> 20) + v29;
  HIDWORD(v28) = v4 + v27.i32[2] + 606105819 + (v30 & v29 | v2 & ~v30);
  LODWORD(v28) = HIDWORD(v28);
  v31 = vorrq_s8(vorrq_s8(v12, _Q4), vshlq_n_s32(vmovl_high_u16(v26), 0x18uLL));
  v32 = (v28 >> 15) + v30;
  HIDWORD(v28) = v2 + v27.i32[3] - 1044525330 + (v32 & v30 | v29 & ~v32);
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v31.i32[0] + v29 - 176418897 + (v33 & v32 | v30 & ~v33);
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v31.i32[1] + v30 + 1200080426 + (v34 & v33 | v32 & ~v34);
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v31.i32[2] + v32 - 1473231341 + (v35 & v34 | v33 & ~v35);
  LODWORD(v28) = HIDWORD(v28);
  v36 = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v37 = (v28 >> 15) + v35;
  HIDWORD(v28) = v31.i32[3] + v33 - 45705983 + (v37 & v35 | v34 & ~v37);
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 10) + v37;
  HIDWORD(v28) = v36.i32[0] + v34 + 1770035416 + (v38 & v37 | v35 & ~v38);
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 25) + v38;
  HIDWORD(v28) = v36.i32[1] + v35 - 1958414417 + (v39 & v38 | v37 & ~v39);
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 20) + v39;
  HIDWORD(v28) = v36.i32[2] + v37 - 42063 + (v40 & v39 | v38 & ~v40);
  LODWORD(v28) = HIDWORD(v28);
  result = vorrq_s8(vorrq_s8(v10, _Q5), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  v42 = (v28 >> 15) + v40;
  HIDWORD(v28) = v36.i32[3] + v38 - 1990404162 + (v42 & v40 | v39 & ~v42);
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 10) + v42;
  HIDWORD(v28) = result.i32[0] + v39 + 1804603682 + (v43 & v42 | v40 & ~v43);
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 25) + v43;
  HIDWORD(v28) = result.i32[1] + v40 - 40341101 + (v44 & v43 | v42 & ~v44);
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 20) + v44;
  HIDWORD(v28) = result.i32[2] + v42 - 1502002290 + (v45 & v44 | v43 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 15) + v45;
  HIDWORD(v28) = result.i32[3] + v43 + 1236535329 + (v46 & v45 | v44 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 10) + v46;
  HIDWORD(v28) = v27.i32[1] + v44 - 165796510 + (v47 & v45 | v46 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 27) + v47;
  HIDWORD(v28) = v31.i32[2] + v45 - 1069501632 + (v48 & v46 | v47 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 23) + v48;
  HIDWORD(v28) = v36.i32[3] + v46 + 643717713 + (v49 & v47 | v48 & ~v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 18) + v49;
  HIDWORD(v28) = v27.i32[0] + v47 - 373897302 + (v50 & v48 | v49 & ~v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 12) + v50;
  HIDWORD(v28) = v31.i32[1] + v48 - 701558691 + (v51 & v49 | v50 & ~v49);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 27) + v51;
  HIDWORD(v28) = v36.i32[2] + v49 + 38016083 + (v52 & v50 | v51 & ~v50);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 23) + v52;
  HIDWORD(v28) = result.i32[3] + v50 - 660478335 + (v53 & v51 | v52 & ~v51);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 18) + v53;
  HIDWORD(v28) = v31.i32[0] + v51 - 405537848 + (v54 & v52 | v53 & ~v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 12) + v54;
  HIDWORD(v28) = v36.i32[1] + v52 + 568446438 + (v55 & v53 | v54 & ~v53);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v55;
  HIDWORD(v28) = result.i32[2] + v53 - 1019803690 + (v56 & v54 | v55 & ~v54);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v27.i32[3] + v54 - 187363961 + (v57 & v55 | v56 & ~v55);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v36.i32[0] + v55 + 1163531501 + (v58 & v56 | v57 & ~v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = (v28 >> 12) + v58;
  HIDWORD(v28) = result.i32[1] + v56 - 1444681467 + (v59 & v57 | v58 & ~v57);
  LODWORD(v28) = HIDWORD(v28);
  v60 = (v28 >> 27) + v59;
  HIDWORD(v28) = v27.i32[2] + v57 - 51403784 + (v60 & v58 | v59 & ~v58);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 23) + v60;
  HIDWORD(v28) = v31.i32[3] + v58 + 1735328473 + (v61 & v59 | v60 & ~v59);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 18) + v61;
  HIDWORD(v28) = result.i32[0] + v59 - 1926607734 + (v62 & v60 | v61 & ~v60);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 12) + v62;
  HIDWORD(v28) = v31.i32[1] + v60 - 378558 + (v63 ^ v62 ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 28) + v63;
  HIDWORD(v28) = v36.i32[0] + v61 - 2022574463 + (v63 ^ v62 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 21) + v64;
  HIDWORD(v28) = v36.i32[3] + v62 + 1839030562 + (v64 ^ v63 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 16) + v65;
  HIDWORD(v28) = result.i32[2] + v63 - 35309556 + (v65 ^ v64 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 9) + v66;
  HIDWORD(v28) = v27.i32[1] + v64 - 1530992060 + (v66 ^ v65 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 28) + v67;
  HIDWORD(v28) = v31.i32[0] + v65 + 1272893353 + (v67 ^ v66 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 21) + v68;
  HIDWORD(v28) = v31.i32[3] + v66 - 155497632 + (v68 ^ v67 ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 16) + v69;
  HIDWORD(v28) = v36.i32[2] + v67 - 1094730640 + (v69 ^ v68 ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 9) + v70;
  HIDWORD(v28) = result.i32[1] + v68 + 681279174 + (v70 ^ v69 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 28) + v71;
  HIDWORD(v28) = v27.i32[0] + v69 - 358537222 + (v71 ^ v70 ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 21) + v72;
  HIDWORD(v28) = v27.i32[3] + v70 - 722521979 + (v72 ^ v71 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 16) + v73;
  HIDWORD(v28) = v31.i32[2] + v71 + 76029189 + (v73 ^ v72 ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 9) + v74;
  HIDWORD(v28) = v36.i32[1] + v72 - 640364487 + (v74 ^ v73 ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 28) + v75;
  HIDWORD(v28) = result.i32[0] + v73 - 421815835 + (v75 ^ v74 ^ v76);
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 21) + v76;
  HIDWORD(v28) = result.i32[3] + v74 + 530742520 + (v76 ^ v75 ^ v77);
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 16) + v77;
  HIDWORD(v28) = v27.i32[2] + v75 - 995338651 + (v77 ^ v76 ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 9) + v78;
  HIDWORD(v28) = v27.i32[0] + v76 - 198630844 + ((v79 | ~v77) ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 26) + v79;
  HIDWORD(v28) = v31.i32[3] + v77 + 1126891415 + ((v80 | ~v78) ^ v79);
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 22) + v80;
  HIDWORD(v28) = result.i32[2] + v78 - 1416354905 + ((v81 | ~v79) ^ v80);
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 17) + v81;
  HIDWORD(v28) = v31.i32[1] + v79 - 57434055 + ((v82 | ~v80) ^ v81);
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 11) + v82;
  HIDWORD(v28) = result.i32[0] + v80 + 1700485571 + ((v83 | ~v81) ^ v82);
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 26) + v83;
  HIDWORD(v28) = v27.i32[3] + v81 - 1894986606 + ((v84 | ~v82) ^ v83);
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 22) + v84;
  HIDWORD(v28) = v36.i32[2] + v82 - 1051523 + ((v85 | ~v83) ^ v84);
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v85;
  HIDWORD(v28) = v27.i32[1] + v83 - 2054922799 + ((v86 | ~v84) ^ v85);
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v36.i32[0] + v84 + 1873313359 + ((v87 | ~v85) ^ v86);
  LODWORD(v28) = HIDWORD(v28);
  v88 = (v28 >> 26) + v87;
  HIDWORD(v28) = result.i32[3] + v85 - 30611744 + ((v88 | ~v86) ^ v87);
  LODWORD(v28) = HIDWORD(v28);
  v89 = (v28 >> 22) + v88;
  HIDWORD(v28) = v31.i32[2] + v86 - 1560198380 + ((v89 | ~v87) ^ v88);
  LODWORD(v28) = HIDWORD(v28);
  v90 = (v28 >> 17) + v89;
  HIDWORD(v28) = result.i32[1] + v87 + 1309151649 + ((v90 | ~v88) ^ v89);
  LODWORD(v28) = HIDWORD(v28);
  v91 = (v28 >> 11) + v90;
  HIDWORD(v28) = v31.i32[0] + v88 - 145523070 + ((v91 | ~v89) ^ v90);
  LODWORD(v28) = HIDWORD(v28);
  v92 = (v28 >> 26) + v91;
  HIDWORD(v28) = v36.i32[3] + v89 - 1120210379 + ((v92 | ~v90) ^ v91);
  LODWORD(v28) = HIDWORD(v28);
  v93 = (v28 >> 22) + v92;
  HIDWORD(v28) = v27.i32[2] + v90 + 718787259 + ((v93 | ~v91) ^ v92);
  LODWORD(v28) = HIDWORD(v28);
  v94 = (v28 >> 17) + v93;
  HIDWORD(v28) = v36.i32[1] + v91 - 343485551 + ((v94 | ~v92) ^ v93);
  LODWORD(v28) = HIDWORD(v28);
  *a1 += v92;
  a1[1] = v94 + v2 + (v28 >> 11);
  a1[2] = v94 + v4;
  a1[3] = v93 + v3;
  return result;
}

double MD5Final(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v13 = *MEMORY[0x1E69E9840];
  do
  {
    *&v12[v4] = *(a2 + v4 + 16);
    v4 += 4;
  }

  while (v4 != 8);
  v5 = (*(a2 + 16) >> 3) & 0x3F;
  v6 = 120;
  if (v5 < 0x38)
  {
    v6 = 56;
  }

  MD5Update(a2, PADDING, v6 - v5);
  MD5Update(a2, v12, 8uLL);
  v7 = 0;
  v8 = (a1 + 3);
  do
  {
    v9 = a2 + 4 * v7;
    *(v8 - 3) = *v9;
    *(v8 - 1) = *(v9 + 2);
    *v8 = *(v9 + 3);
    v8 += 4;
    ++v7;
  }

  while (v7 != 4);
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cache_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 2153783303;
  if (a5 && !*a5)
  {
    v11 = heap_Calloc(a1, 1, 32);
    if (v11)
    {
      v5 = 0;
      v11[2] = a3;
      v11[3] = a4;
      *v11 = a1;
      v11[1] = a2;
    }

    else
    {
      v5 = 2153783306;
    }

    *a5 = v11;
  }

  return v5;
}

uint64_t cache_ClassClose(void **a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t cache_ObjOpen(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a5 && !*a5)
  {
    v11 = *a1;
    v12 = heap_Calloc(*a1, 1, 72);
    v13 = v12;
    if (v12)
    {
      *v12 = a1;
      *(v12 + 8) = v11;
      *(v12 + 24) = *(a1 + 16);
      v14 = critsec_ObjOpen(*(a1 + 8), v11, (v12 + 16));
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        if (!a2 || !a3 || !a4)
        {
          goto LABEL_28;
        }

        v16 = heap_Calloc(v11, 56, 1);
        *(v13 + 64) = v16;
        if (v16)
        {
          v17 = v16;
          v16[10] = a2;
          v16[11] = a3;
          if (a4 >= a3)
          {
            v18 = a3;
          }

          else
          {
            v18 = a4;
          }

          v16[12] = v18;
          if (a2 <= 1)
          {
            a2 = 2;
            v16[10] = 2;
          }

          v19 = heap_Alloc(v11, a2 * a3);
          *(v17 + 4) = v19;
          if (v19)
          {
            v20 = heap_Alloc(v11, 40 * v17[10]);
            *(v17 + 3) = v20;
            if (v20)
            {
              v21 = v20 + 40;
              *v20 = 0;
              *(v20 + 8) = v20 + 40;
              *(v20 + 16) = -1;
              v22 = *(v17 + 4);
              *(v20 + 24) = v22;
              *(v20 + 32) = 0;
              v23 = v17[11];
              v24 = (v17[10] - 1);
              if (v24 < 2)
              {
                v29 = v20;
              }

              else
              {
                v25 = v24 - 1;
                v26 = v17[11];
                do
                {
                  v27 = v21;
                  v28 = v21 - 40;
                  v21 += 40;
                  *v27 = v28;
                  *(v27 + 8) = v21;
                  *(v27 + 16) = -1;
                  *(v27 + 24) = v22 + v26;
                  *(v27 + 32) = 0;
                  v26 += v23;
                  --v25;
                }

                while (v25);
                v29 = v21 - 40;
              }

              v15 = 0;
              *v21 = v29;
              *(v21 + 8) = 0;
              *(v21 + 16) = -1;
              *(v21 + 24) = v22 + (v23 * v24);
              *(v21 + 32) = 0;
              *(v17 + 1) = v20;
              *(v17 + 2) = v20 + 40 * v24;
              goto LABEL_28;
            }

            heap_Free(v11, *(v17 + 4));
          }
        }
      }

      v30 = *(v13 + 16);
      if (v30)
      {
        critsec_ObjClose(v30);
      }

      v31 = *(v13 + 64);
      if (v31)
      {
        heap_Free(v11, v31);
      }

      heap_Free(v11, v13);
      v13 = 0;
    }

    v15 = 2153783306;
LABEL_28:
    *a5 = v13;
    return v15;
  }

  return v5;
}

uint64_t cache_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(a1[2]);
  v2 = a1[1];
  v3 = a1[8];
  if (v3)
  {
    v4 = *v3;
    heap_Free(a1[1], *(v3 + 32));
    heap_Free(v2, *(v3 + 24));
    if (v4)
    {
      do
      {
        heap_Free(v2, v4[1]);
        v5 = *v4;
        heap_Free(v2, v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 48) = 0;
    v6 = a1[8];
  }

  else
  {
    v6 = 0;
  }

  heap_Free(v2, v6);
  a1[8] = 0;
  critsec_Leave(a1[2]);
  v8 = critsec_ObjClose(a1[2]);
  heap_Free(v2, a1);
  return v8;
}

uint64_t cache_ObjSetLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 2153783303;
  }

  if (a3)
  {
    v6 = log_GetLogLevel(a3) > 0x63;
    *(a1 + 56) = v6;
    *(a1 + 60) = v6;
  }

  result = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t cache_datastream_Open(int8x16_t *a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t *a5)
{
  v5 = 2153783306;
  v6 = 2153783303;
  if (a1 && a5)
  {
    v12 = a1[3].i64[0];
    v13 = *(v12 + 24);
    v14 = *(v12 + 64);
    v15 = heap_Calloc(*(v12 + 8), 1, 56);
    v16 = v15;
    if (!v15)
    {
LABEL_26:
      *a5 = v16;
      return v5;
    }

    v17 = a1[3];
    *v15 = vextq_s8(v17, v17, 8uLL);
    v18 = *(v17.i64[0] + 8);
    *(v15 + 24) = 0u;
    *(v15 + 16) = v18;
    *(v15 + 40) = 0u;
    critsec_Enter(*(v17.i64[0] + 16));
    if (!v14)
    {
      v6 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
      goto LABEL_23;
    }

    if (!a3 || !a4)
    {
      goto LABEL_23;
    }

    if (*a4 == 114 && !strchr(a3, 46))
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 1;
      if (*(FileInfoDesc + 20))
      {
LABEL_11:
        v6 = 0;
        v20 = *(FileInfoDesc + 24);
        v21 = *(FileInfoDesc + 32);
        *(v16 + 24) = v20;
        *(v16 + 40) = v21;
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, "rb", v16 + 24);
    }

    else
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 0;
      if (*(FileInfoDesc + 20))
      {
        goto LABEL_11;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
    }

    v6 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      v23 = *(v16 + 40);
    }

    else
    {
      v23 = (*(v13 + 32))(*(v16 + 24));
      *(v16 + 40) = v23;
    }

    v24 = *(v16 + 24);
    FileInfoDesc = *(v16 + 48);
    *(FileInfoDesc + 24) = v24;
    *(FileInfoDesc + 32) = v23;
    if (v24)
    {
LABEL_22:
      ++*(FileInfoDesc + 20);
    }

LABEL_23:
    critsec_Leave(*(*(v16 + 8) + 16));
    if (!*(v16 + 24))
    {
      heap_Free(*(v16 + 16), v16);
      v16 = 0;
    }

    v5 = v6;
    goto LABEL_26;
  }

  return v6;
}

uint64_t GetFileInfoDesc(uint64_t *a1, void *a2, char *__s2)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    while (strcmp(*(v6 + 8), __s2))
    {
      ++v7;
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_7:
    v8 = heap_Alloc(a2, 48);
    v6 = v8;
    if (v8)
    {
      *v8 = *a1;
      v9 = strlen(__s2);
      v10 = heap_Alloc(a2, (v9 + 1));
      *(v6 + 8) = v10;
      if (v10)
      {
        strcpy(v10, __s2);
        *(v6 + 16) = v7;
        *(v6 + 28) = 0;
        *(v6 + 20) = 0;
        *(v6 + 36) = 0;
        *a1 = v6;
      }

      else
      {
        heap_Free(a2, v6);
        return 0;
      }
    }
  }

  return v6;
}

uint64_t cache_datastream_Close(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  if (*(v2 + 64) && (v4 = *(a1 + 48), v5 = *(v4 + 20) - 1, (*(v4 + 20) = v5) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(v3 + 8))(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  critsec_Leave(*(*(a1 + 8) + 16));
  heap_Free(*(a1 + 16), a1);
  return v6;
}

uint64_t cache_datastream_Read(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    critsec_Enter(*(a4[1] + 16));
    v8 = a4[1];
    v9 = *(v8 + 24);
    v10 = *(v8 + 64);
    if (v10)
    {
      v11 = a3 * a2;
      if (*(v10 + 48) < v11 || (v12 = a4[6], *(v12 + 40) != 1))
      {
        if (((*(v9 + 24))(a4[3], *(a4 + 8), 0, 1) & 0x80000000) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = (*(v9 + 16))(a1, 1, v11, a4[3]);
        }

        v21 = a4[4] + v11;
LABEL_19:
        a4[4] = v21;
        goto LABEL_20;
      }

      v13 = *(v10 + 16);
      if (*(v13 + 4) != -1)
      {
        v14 = 0;
        v15 = *(v12 + 16);
        v16 = v11;
        while (1)
        {
          if (*(v13 + 4) == v15)
          {
            v17 = a4[4];
            v18 = v13[4];
            v19 = v17 >= v18;
            v20 = v17 - v18;
            if (v19 && v20 + v11 <= *(v10 + 44))
            {
              break;
            }
          }

          v13 = *v13;
          --v14;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        memcpy(a1, (v13[3] + v20), v11);
        if (v14)
        {
          v23 = *v13;
          if (*v13)
          {
            v24 = v13[1];
            v23[1] = v24;
            *v24 = v23;
            v25 = *(v10 + 16);
          }

          else
          {
            v25 = *(v10 + 16);
            v26 = *(*(v10 + 8) + 8);
            *(v10 + 8) = v26;
            *v26 = 0;
          }

          *(v25 + 8) = v13;
          *v13 = v25;
          v13[1] = 0;
          *(v10 + 16) = v13;
        }

        v21 = a4[4] + v11;
        goto LABEL_19;
      }

LABEL_12:
      v16 = AddCacheData(a4, v11, a1);
    }

    else
    {
      v16 = (*(v9 + 16))(a1, a2, a3, a4[3]);
    }

LABEL_20:
    critsec_Leave(*(a4[1] + 16));
    return v16;
  }

  return 0;
}

uint64_t cache_datastream_Seek(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2153783303;
  if (a1)
  {
    critsec_Enter(*(a1[1] + 16));
    v9 = a1[1];
    v10 = *(v9 + 24);
    if (!*(v9 + 64))
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
LABEL_17:
      v4 = v11;
      goto LABEL_18;
    }

    if (*(a1[6] + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
    }

    switch(a3)
    {
      case 2:
        v12 = a1[5];
        break;
      case 1:
        if (a4 == 1)
        {
          v12 = a1[4] + a2;
        }

        else
        {
          if (a4 != -1)
          {
            goto LABEL_18;
          }

          v12 = a1[4] - a2;
        }

        break;
      case 0:
        a1[4] = a2;
        goto LABEL_17;
      default:
LABEL_18:
        critsec_Leave(*(a1[1] + 16));
        return v4;
    }

    a1[4] = v12;
    goto LABEL_17;
  }

  return v4;
}