uint64_t match_ref(unint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5)
{
  if (*(a3 + 120) <= a1 || (v7 = *(a3 + 128 + 8 * a1), v7 == -1))
  {
    if ((*(a4 + 233) & 2) != 0)
    {
      v18 = 0;
LABEL_57:
      result = 0;
      *a5 = v18;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *(a3 + 80);
  v9 = *(a4 + 152);
  v10 = (v9 + v7);
  v11 = *(a3 + 128 + 8 * a1 + 8);
  v12 = v11 - v7;
  if (a2)
  {
    if ((*(a4 + 234) & 8) != 0)
    {
      if (v7 < v11)
      {
        v21 = *(a4 + 160);
        v13 = *(a3 + 80);
        while (v13 < v21)
        {
          v22 = *v13;
          if (v22 < 0xC0)
          {
            ++v13;
          }

          else if ((v22 & 0x20) != 0)
          {
            v29 = v13[1] & 0x3F;
            if ((v22 & 0x10) != 0)
            {
              if ((v22 & 8) != 0)
              {
                v31 = v13[2] & 0x3F;
                v32 = v13[3] & 0x3F;
                v33 = v13[4] & 0x3F;
                if ((v22 & 4) != 0)
                {
                  v22 = ((v22 & 1) << 30) | (v29 << 24) | (v31 << 18) | (v32 << 12) | (v33 << 6) | v13[5] & 0x3F;
                  v13 += 6;
                }

                else
                {
                  v22 = ((v22 & 3) << 24) | (v29 << 18) | (v31 << 12) | (v32 << 6) | v33;
                  v13 += 5;
                }
              }

              else
              {
                v22 = ((v22 & 7) << 18) | (v29 << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
                v13 += 4;
              }
            }

            else
            {
              v22 = ((v22 & 0xF) << 12) | (v29 << 6) | v13[2] & 0x3F;
              v13 += 3;
            }
          }

          else
          {
            v23 = v13[1];
            v13 += 2;
            v22 = v23 & 0x3F | ((v22 & 0x1F) << 6);
          }

          v24 = *v10;
          if (v24 < 0xC0)
          {
            ++v10;
          }

          else if ((v24 & 0x20) != 0)
          {
            v30 = v10[1] & 0x3F;
            if ((v24 & 0x10) != 0)
            {
              if ((v24 & 8) != 0)
              {
                v34 = v10[2] & 0x3F;
                v35 = v10[3] & 0x3F;
                v36 = v10[4] & 0x3F;
                if ((v24 & 4) != 0)
                {
                  v24 = ((v24 & 1) << 30) | (v30 << 24) | (v34 << 18) | (v35 << 12) | (v36 << 6) | v10[5] & 0x3F;
                  v10 += 6;
                }

                else
                {
                  v24 = ((v24 & 3) << 24) | (v30 << 18) | (v34 << 12) | (v35 << 6) | v36;
                  v10 += 5;
                }
              }

              else
              {
                v24 = ((v24 & 7) << 18) | (v30 << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
                v10 += 4;
              }
            }

            else
            {
              v24 = ((v24 & 0xF) << 12) | (v30 << 6) | v10[2] & 0x3F;
              v10 += 3;
            }
          }

          else
          {
            v25 = v10[1];
            v10 += 2;
            v24 = v25 & 0x3F | ((v24 & 0x1F) << 6);
          }

          if (v22 != v24)
          {
            v26 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v24 & 0x7F | (_pcre2_ucd_stage1_8[v24 >> 7] << 7)]];
            if (v22 != v26[1] + v24)
            {
              v27 = (&_pcre2_ucd_caseless_sets_8 + 4 * *(v26 + 3));
              do
              {
                v28 = *v27;
                if (v22 < *v27)
                {
                  return 0xFFFFFFFFLL;
                }

                ++v27;
              }

              while (v22 != v28);
            }
          }

          if (v10 >= v9 + v11)
          {
            goto LABEL_56;
          }
        }

        return 1;
      }
    }

    else if (v12)
    {
      v13 = (v8 + v12);
      v14 = v7 - v11;
      v15 = *(a3 + 80);
      while (v15 < *(a4 + 160))
      {
        if (*(*(a4 + 88) + *v10) != *(*(a4 + 88) + *v15))
        {
          return 0xFFFFFFFFLL;
        }

        ++v10;
        ++v15;
        v16 = __CFADD__(v14++, 1);
        if (v16)
        {
          goto LABEL_56;
        }
      }

      return 1;
    }

    goto LABEL_55;
  }

  if (*(a4 + 128))
  {
    if (v12)
    {
      v13 = (v8 + v12);
      v19 = v7 - v11;
      v20 = *(a3 + 80);
      while (v20 < *(a4 + 160))
      {
        if (*v10 != *v20)
        {
          return 0xFFFFFFFFLL;
        }

        ++v20;
        ++v10;
        v16 = __CFADD__(v19++, 1);
        if (v16)
        {
          goto LABEL_56;
        }
      }

      return 1;
    }

LABEL_55:
    v13 = *(a3 + 80);
LABEL_56:
    v18 = &v13[-v8];
    goto LABEL_57;
  }

  if (*(a4 + 160) - v8 >= v12)
  {
    if (!cstdlib_memcmp(v10, *(a3 + 80), v11 - v7))
    {
      v13 = (v8 + v12);
      goto LABEL_56;
    }

    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t do_callout_0(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (**a1 == 118)
  {
    v5 = 6;
  }

  else
  {
    v5 = __rev16(*(v4 + 5));
  }

  *a3 = v5;
  v6 = a2[34];
  if (!v6)
  {
    return 0;
  }

  v7 = a2[32];
  v8 = *(a1 + 108);
  *(v7 + 8) = (*(a1 + 120) >> 1) + 1;
  *(v7 + 12) = v8;
  v9 = a2[25];
  *(v7 + 16) = a1 + 112;
  *(v7 + 24) = v9;
  *(v7 + 56) = *(a1 + 80) - a2[19];
  *(v7 + 64) = __rev16(*(v4 + 1));
  *(v7 + 72) = __rev16(*(v4 + 3));
  if (*v4 == 118)
  {
    v10 = 0;
    v11 = 0;
    *(v7 + 4) = v4[5];
    *(v7 + 80) = 0;
  }

  else
  {
    *(v7 + 4) = 0;
    *(v7 + 80) = __rev16(*(v4 + 7));
    v10 = v4 + 10;
    v11 = *a3 - 11;
  }

  *(v7 + 88) = v11;
  *(v7 + 96) = v10;
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  result = v6(v7, a2[33]);
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  *(v7 + 104) = 0;
  return result;
}

void *pcre2_match_data_create_8(unsigned int a1, __int128 *a2)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  result = _pcre2_memctl_malloc_8(8 * (2 * v2) + 80, a2);
  if (result)
  {
    *(result + 37) = v2;
  }

  return result;
}

void *pcre2_match_data_create_from_pattern_8(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    a2 = a1;
  }

  v2 = *(a1 + 128) + 1;
  result = _pcre2_memctl_malloc_8(16 * v2 + 80, a2);
  if (result)
  {
    *(result + 37) = v2;
  }

  return result;
}

uint64_t pcre2_match_data_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result + 8))(result, *(result + 16));
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

uint64_t _pcre2_ord2utf_8(unsigned int a1, uint64_t a2)
{
  v2 = 0;
  while (_pcre2_utf8_table1[v2] < a1)
  {
    if (++v2 == 6)
    {
      LODWORD(v2) = 6;
      break;
    }
  }

  v3 = (a2 + v2);
  if (v2 >= 1)
  {
    v4 = v2 + 1;
    do
    {
      *v3-- = a1 & 0x3F | 0x80;
      a1 >>= 6;
      --v4;
    }

    while (v4 > 1);
  }

  *v3 = _pcre2_utf8_table2[4 * v2] | a1;
  return (v2 + 1);
}

uint64_t pcre2_pattern_info_8(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3 && a2 < 0x1B)
  {
    return dword_26ED1CE50[a2];
  }

  if (!a1)
  {
    return 4294967245;
  }

  if (*(a1 + 80) != 1346589253)
  {
    return 4294967265;
  }

  v4 = *(a1 + 96);
  if ((v4 & 1) == 0)
  {
    return 4294967264;
  }

  switch(a2)
  {
    case 0u:
      v5 = *(a1 + 88);
      goto LABEL_49;
    case 1u:
      v5 = *(a1 + 84);
      goto LABEL_49;
    case 2u:
      v5 = *(a1 + 130);
      goto LABEL_49;
    case 3u:
      v5 = *(a1 + 120);
      goto LABEL_49;
    case 4u:
      v5 = *(a1 + 128);
      goto LABEL_49;
    case 5u:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      v5 = *(a1 + 112);
      goto LABEL_49;
    case 6u:
      if ((v4 & 0x10) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = (v4 >> 8) & 2;
      }

      goto LABEL_49;
    case 7u:
      if ((v4 & 0x40) != 0)
      {
        v7 = a1 + 40;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_44;
    case 8u:
      v5 = (v4 >> 11) & 1;
      goto LABEL_49;
    case 9u:
      v5 = (v4 >> 10) & 1;
      goto LABEL_49;
    case 0xAu:
      *a3 = 0;
      goto LABEL_50;
    case 0xBu:
      if ((v4 & 0x80) != 0)
      {
        v5 = *(a1 + 116);
      }

      else
      {
LABEL_31:
        v5 = 0;
      }

      goto LABEL_49;
    case 0xCu:
      v5 = (v4 >> 7) & 1;
      goto LABEL_49;
    case 0xDu:
      v5 = (v4 >> 13) & 1;
      goto LABEL_49;
    case 0xEu:
      v6 = *(a1 + 104);
      goto LABEL_33;
    case 0xFu:
      v5 = *(a1 + 124);
      goto LABEL_49;
    case 0x10u:
      v5 = *(a1 + 126);
      goto LABEL_49;
    case 0x11u:
      v5 = *(a1 + 134);
      goto LABEL_49;
    case 0x12u:
      v5 = *(a1 + 132);
      goto LABEL_49;
    case 0x13u:
      v7 = a1 + 136;
      goto LABEL_44;
    case 0x14u:
      v5 = *(a1 + 122);
      goto LABEL_49;
    case 0x15u:
      v6 = *(a1 + 108);
      goto LABEL_33;
    case 0x16u:
      v7 = *(a1 + 72);
      goto LABEL_44;
    case 0x17u:
      v5 = (v4 >> 22) & 1;
      goto LABEL_49;
    case 0x18u:
      v7 = 16 * *(a1 + 128) + 128;
LABEL_44:
      *a3 = v7;
      goto LABEL_50;
    case 0x19u:
      v6 = *(a1 + 100);
LABEL_33:
      *a3 = v6;
      if (v6 != -1)
      {
        goto LABEL_50;
      }

      result = 4294967241;
      break;
    case 0x1Au:
      v5 = *(a1 + 92);
LABEL_49:
      *a3 = v5;
LABEL_50:
      result = 0;
      break;
    default:
      result = 4294967262;
      break;
  }

  return result;
}

uint64_t pcre2_callout_enumerate_8(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 4294967245;
  }

  if (*(a1 + 80) == 1346589253)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      return 4294967264;
    }

    v20 = v3;
    v21 = v4;
    v8 = *(a1 + 88);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v9 = (a1 + *(a1 + 132) * *(a1 + 134) + 136);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          result = *v9;
          if ((result - 29) >= 0x38)
          {
            break;
          }

          v9 += _pcre2_OP_lengths_8[*v9];
          if ((v8 & 0x80000) != 0)
          {
            v10 = *(v9 - 1);
            if (v10 >= 0xC0)
            {
              v9 += _pcre2_utf8_table4[v10 & 0x3F];
            }
          }
        }

        if (*v9 > 0x6Fu)
        {
          break;
        }

        if ((result - 85) >= 0xD)
        {
          if (!*v9)
          {
            return result;
          }

LABEL_28:
          v9 += _pcre2_OP_lengths_8[*v9];
        }

        else
        {
          v11 = &v9[_pcre2_OP_lengths_8[*v9]];
          v9 = &v11[2 * (*(v11 - 1) - 15 < 2)];
        }
      }

      v12 = (result - 118);
      if (v12 > 0x28)
      {
        goto LABEL_22;
      }

      if (((1 << (result - 118)) & 0x15500000000) != 0)
      {
        v9 += v9[1] + _pcre2_OP_lengths_8[*v9];
      }

      else if (result == 118)
      {
        v15 = __rev16(*(v9 + 3));
        *(&v16 + 1) = __rev16(*(v9 + 1));
        *&v17 = v15;
        DWORD2(v17) = v9[5];
        v19 = 0;
        v18 = 0uLL;
        result = a2(&v16, a3);
        if (result)
        {
          return result;
        }

        v9 += _pcre2_OP_lengths_8[*v9];
      }

      else
      {
        if (v12 == 1)
        {
          v13 = __rev16(*(v9 + 3));
          *(&v16 + 1) = __rev16(*(v9 + 1));
          *&v17 = v13;
          DWORD2(v17) = 0;
          LODWORD(v13) = __rev16(*(v9 + 5));
          *&v18 = __rev16(*(v9 + 7));
          *(&v18 + 1) = (v13 - 11);
          v19 = v9 + 10;
          result = a2(&v16, a3);
          if (result)
          {
            return result;
          }

          v14 = *(v9 + 5);
          goto LABEL_24;
        }

LABEL_22:
        if (result != 112)
        {
          goto LABEL_28;
        }

        v14 = *(v9 + 1);
LABEL_24:
        v9 += __rev16(v14);
      }
    }
  }

  return 4294967265;
}

uint64_t pcre2_serialize_encode_8(size_t **a1, uint64_t a2, void *a3, uint64_t *a4, __int128 *a5)
{
  if (a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = &_pcre2_default_compile_context_8;
  }

  result = 4294967245;
  if (a1 && a3 && a4)
  {
    if (a2 < 1)
    {
      return 4294967267;
    }

    else
    {
      v11 = 0;
      v12 = a2;
      v13 = 1104;
      v14 = a2;
      v15 = a1;
      do
      {
        v16 = *v15;
        if (!*v15)
        {
          return 4294967245;
        }

        if (*(v16 + 20) != 1346589253)
        {
          return 4294967265;
        }

        if (v11)
        {
          if (v11 != v16[3])
          {
            return 4294967266;
          }
        }

        else
        {
          v11 = v16[3];
        }

        v13 += v16[9];
        ++v15;
        --v14;
      }

      while (v14);
      v17 = (*v6)(v13 + 24, *(v6 + 2));
      if (v17)
      {
        v18 = v17;
        cstdlib_memcpy(v17, v6, 0x18uLL);
        *(v18 + 3) = 0x20000A50523253;
        v19 = v18 + 24;
        v19[2] = 526337;
        v19[3] = a2;
        cstdlib_memcpy(v19 + 4, v11, 0x440uLL);
        v20 = v19 + 276;
        do
        {
          v21 = *a1++;
          cstdlib_memcpy(v20, v21, v21[9]);
          cstdlib_memset(v20, 0, 0x18uLL);
          cstdlib_memset(v20 + 6, 0, 8uLL);
          cstdlib_memset(v20 + 8, 0, 8uLL);
          v20 = (v20 + v21[9]);
          --v12;
        }

        while (v12);
        *a3 = v19;
        *a4 = v13;
        return a2;
      }

      else
      {
        return 4294967248;
      }
    }
  }

  return result;
}

uint64_t pcre2_serialize_decode_8(uint64_t a1, int a2, _DWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = &_pcre2_default_compile_context_8;
  }

  v5 = 4294967245;
  if (a1 && a3)
  {
    if (a2 < 1)
    {
      return 4294967267;
    }

    else
    {
      v7 = a3[3];
      if (v7 < 1)
      {
        return 4294967234;
      }

      if (*a3 == 1347564115)
      {
        if (a3[1] == 2097162 && a3[2] == 526337)
        {
          if (v7 >= a2)
          {
            v5 = a2;
          }

          else
          {
            v5 = v7;
          }

          v10 = (*v4)(1096, *(v4 + 2));
          if (!v10)
          {
            return 4294967248;
          }

          v11 = v10;
          cstdlib_memcpy(v10, a3 + 4, 0x440uLL);
          v12 = 0;
          v11[136] = v5;
          v13 = a3 + 276;
          while (1)
          {
            __dst = 0;
            cstdlib_memcpy(&__dst, v13 + 18, 8uLL);
            if (__dst < 0x89)
            {
              break;
            }

            v14 = _pcre2_memctl_malloc_8(__dst, a4);
            if (!v14)
            {
              (*(v4 + 1))(v11, *(v4 + 2));
              if (v12)
              {
                for (i = 0; i != v12; ++i)
                {
                  (*(v4 + 1))(*(a1 + 8 * i), *(v4 + 2));
                  *(a1 + 8 * i) = 0;
                }
              }

              return 4294967248;
            }

            v15 = v14;
            cstdlib_memcpy(v14 + 3, v13 + 6, __dst - 24);
            if (*(v15 + 20) != 1346589253 || *(v15 + 66) > 0x23u || *(v15 + 67) >= 0x2711u)
            {
              (*(v4 + 1))(v15, *(v4 + 2));
              return 4294967234;
            }

            v15[3] = v11;
            v15[4] = 0;
            *(v15 + 24) |= 0x40000u;
            *(a1 + 8 * v12) = v15;
            v13 = (v13 + __dst);
            if (v5 == ++v12)
            {
              return v5;
            }
          }

          return 4294967234;
        }

        return 4294967264;
      }

      else
      {
        return 4294967265;
      }
    }
  }

  return v5;
}

uint64_t pcre2_serialize_get_number_of_codes_8(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967245;
  }

  if (*a1 != 1347564115)
  {
    return 4294967265;
  }

  if (a1[1] == 2097162 && a1[2] == 526337)
  {
    return a1[3];
  }

  return 4294967264;
}

uint64_t pcre2_serialize_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result - 16))(result - 24, *(result - 8));
  }

  return result;
}

uint64_t _pcre2_strcmp_8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  do
  {
    v2 = *a1;
    v3 = *a2;
    if (!(v2 | v3))
    {
      return 0;
    }

    ++a1;
    ++a2;
  }

  while (v2 == v3);
  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _pcre2_strcmp_c8_8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  do
  {
    v2 = *a1;
    v3 = *a2;
    if (!(v2 | v3))
    {
      return 0;
    }

    ++a1;
    ++a2;
  }

  while (v2 == v3);
  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _pcre2_strncmp_8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1;
    v4 = *a2;
    if (v3 != v4)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 > v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _pcre2_strncmp_c8_8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1;
    v4 = *a2;
    if (v3 != v4)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 > v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _pcre2_strlen_8(_BYTE *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = a1 + 1;
  do
  {
    result = v1 + 1;
  }

  while (v2[v1++]);
  return result;
}

_BYTE *_pcre2_strcpy_c8_8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = a1;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = a1;
    do
    {
      *v3++ = v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return (v3 - a1);
}

uint64_t _pcre2_study_8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = (*(a1 + 88) >> 19) & 1;
  v3 = a1 + *(a1 + 134) * *(a1 + 132);
  v4 = *(a1 + 96);
  if ((v4 & 0x210) == 0)
  {
    started = set_start_bits(a1, (v3 + 136), (*(a1 + 88) >> 19) & 1);
    if (started == 1)
    {
      v4 = *(a1 + 96) | 0x40;
      *(a1 + 96) = v4;
    }

    else
    {
      if (started == 3)
      {
        return 1;
      }

      v4 = *(a1 + 96);
    }
  }

  if ((v4 & 0x2000) == 0 && *(a1 + 130) <= 0x80u)
  {
    v10[0] = 0;
    minlength = find_minlength(a1, (v3 + 136), (v3 + 136), v2, 0, &v9, v10);
    if (minlength != -1)
    {
      if (minlength == -2)
      {
        return 2;
      }

      if (minlength == -3)
      {
        return 3;
      }

      if (minlength >= 0xFFFF)
      {
        v8 = -1;
      }

      else
      {
        v8 = minlength;
      }

      *(a1 + 126) = v8;
    }
  }

  return 0;
}

uint64_t set_start_bits(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  v7 = *a2;
  v8 = (a1 + 40);
  v9 = 1;
LABEL_5:
  v10 = v7 - 133;
  v11 = v10 > 6;
  v12 = (1 << v10) & 0x63;
  if (v11 || v12 == 0)
  {
    v14 = v4 + 3;
  }

  else
  {
    v14 = v4 + 5;
  }

  while (2)
  {
    v15 = *v14;
    result = 3;
    v17 = 0;
    v18 = 2;
    switch(*v14)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x12u:
      case 0x14u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Cu:
      case 0x1Fu:
      case 0x20u:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x7Du:
      case 0x87u:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
        return 0;
      case 4u:
      case 5u:
      case 0x57u:
      case 0x58u:
      case 0x5Fu:
        ++v14;
        continue;
      case 6u:
        v55 = (*(a1 + 24) + 576);
        v56 = v8;
        v57 = v6;
        do
        {
          v58 = *v55++;
          *v56++ |= ~v58;
          --v57;
        }

        while (v57);
        goto LABEL_114;
      case 7u:
        v53 = a1;
        v54 = 64;
        goto LABEL_136;
      case 8u:
        v49 = (*(a1 + 24) + 512);
        v50 = v8;
        v51 = v6;
        do
        {
          v52 = *v49++;
          *v50++ |= ~v52;
          --v51;
        }

        while (v51);
        goto LABEL_114;
      case 9u:
        v53 = a1;
        v54 = 0;
        goto LABEL_136;
      case 0xAu:
        v59 = (*(a1 + 24) + 672);
        v60 = v8;
        v61 = v6;
        do
        {
          v62 = *v59++;
          *v60++ |= ~v62;
          --v61;
        }

        while (v61);
LABEL_114:
        if (a3)
        {
          *(a1 + 64) = -1;
        }

        goto LABEL_137;
      case 0xBu:
        v53 = a1;
        v54 = 160;
LABEL_136:
        set_type_bits(v53, v54, v6);
        goto LABEL_137;
      case 0x10u:
        if (v14[1] == 9)
        {
          v63 = v14[2];
          v64 = _pcre2_ucd_caseless_sets_8[v63];
          if (v64 != -1)
          {
            v65 = &_pcre2_ucd_caseless_sets_8[v63 + 1];
            while (!a3)
            {
              if (v64 < 0x100)
              {
                goto LABEL_123;
              }

              *(a1 + 71) |= 0x80u;
LABEL_124:
              v66 = *v65++;
              v64 = v66;
              if (v66 == -1)
              {
                goto LABEL_137;
              }
            }

            _pcre2_ord2utf_8(v64, v70);
            v64 = v70[0];
LABEL_123:
            v8[v64 >> 3] |= 1 << (v64 & 7);
            goto LABEL_124;
          }

LABEL_137:
          v18 = v9;
LABEL_138:
          v4 += __rev16(*(v4 + 1));
          v7 = 120;
          v9 = v18;
          result = v18;
          if (*v4 != 120)
          {
            return result;
          }

          goto LABEL_5;
        }

        return 0;
      case 0x11u:
      case 0x15u:
        *(a1 + 41) |= 0x3Cu;
        if (a3)
        {
          *(a1 + 64) |= 4u;
          v48 = *(a1 + 68) | 4;
          goto LABEL_134;
        }

        *(a1 + 56) |= 0x20u;
        goto LABEL_137;
      case 0x13u:
        *(a1 + 41) |= 2u;
        *(a1 + 44) |= 1u;
        if (a3)
        {
          *(a1 + 64) |= 4u;
          v48 = *(a1 + 68) | 0xE;
LABEL_134:
          *(a1 + 68) = v48;
        }

        else
        {
          *(a1 + 60) |= 1u;
        }

        goto LABEL_137;
      case 0x1Bu:
        ++v14;
        continue;
      case 0x1Du:
      case 0x23u:
      case 0x24u:
      case 0x2Bu:
        goto LABEL_127;
      case 0x1Eu:
      case 0x30u:
      case 0x31u:
      case 0x38u:
        goto LABEL_130;
      case 0x21u:
      case 0x22u:
      case 0x25u:
      case 0x26u:
      case 0x2Au:
      case 0x2Cu:
        v19 = v14 + 1;
        goto LABEL_43;
      case 0x27u:
      case 0x28u:
      case 0x2Du:
        v19 = v14 + 3;
LABEL_43:
        v25 = a1;
        v26 = 0;
        goto LABEL_44;
      case 0x29u:
        v14 += 2;
LABEL_127:
        v67 = v14 + 1;
        v68 = a1;
        v69 = 0;
        goto LABEL_131;
      case 0x2Eu:
      case 0x2Fu:
      case 0x32u:
      case 0x33u:
      case 0x37u:
      case 0x39u:
        v19 = v14 + 1;
        goto LABEL_41;
      case 0x34u:
      case 0x35u:
      case 0x3Au:
        v19 = v14 + 3;
LABEL_41:
        v25 = a1;
        v26 = 1;
LABEL_44:
        v14 = set_table_bit(v25, v19, v26, a3);
        continue;
      case 0x36u:
        v14 += 2;
LABEL_130:
        v67 = v14 + 1;
        v68 = a1;
        v69 = 1;
LABEL_131:
        set_table_bit(v68, v67, v69, a3);
        goto LABEL_137;
      case 0x55u:
      case 0x56u:
      case 0x59u:
      case 0x5Au:
      case 0x5Eu:
      case 0x60u:
        goto LABEL_27;
      case 0x5Bu:
      case 0x5Cu:
      case 0x61u:
        v14 += 2;
LABEL_27:
        result = 0;
        v20 = v14[1];
        if (v20 <= 9)
        {
          if (v14[1] > 7u)
          {
            if (v20 != 8)
            {
              if (v20 != 9)
              {
                return result;
              }

              v23 = a1;
              v24 = 0;
              goto LABEL_51;
            }

            v38 = (*(a1 + 24) + 512);
            v39 = v8;
            v40 = v6;
            do
            {
              v41 = *v38++;
              *v39++ |= ~v41;
              --v40;
            }

            while (v40);
          }

          else
          {
            if (v20 != 6)
            {
              if (v20 != 7)
              {
                return result;
              }

              v23 = a1;
              v24 = 64;
LABEL_51:
              set_type_bits(v23, v24, v6);
              goto LABEL_102;
            }

            v34 = (*(a1 + 24) + 576);
            v35 = v8;
            v36 = v6;
            do
            {
              v37 = *v34++;
              *v35++ |= ~v37;
              --v36;
            }

            while (v36);
          }

          goto LABEL_93;
        }

        if (v14[1] <= 0x10u)
        {
          if (v20 != 10)
          {
            if (v20 != 11)
            {
              return result;
            }

            v23 = a1;
            v24 = 160;
            goto LABEL_51;
          }

          v42 = (*(a1 + 24) + 672);
          v43 = v8;
          v44 = v6;
          do
          {
            v45 = *v42++;
            *v43++ |= ~v45;
            --v44;
          }

          while (v44);
LABEL_93:
          if (a3)
          {
            *(a1 + 64) = -1;
          }

          goto LABEL_102;
        }

        if (v20 == 17 || v20 == 21)
        {
          *(a1 + 41) |= 0x3Cu;
          if (a3)
          {
            *(a1 + 64) |= 4u;
            v22 = *(a1 + 68) | 4;
LABEL_55:
            *(a1 + 68) = v22;
            goto LABEL_102;
          }

          *(a1 + 56) |= 0x20u;
        }

        else
        {
          if (v20 != 19)
          {
            return result;
          }

          *(a1 + 41) |= 2u;
          *(a1 + 44) |= 1u;
          if (a3)
          {
            *(a1 + 64) |= 4u;
            v22 = *(a1 + 68) | 0xE;
            goto LABEL_55;
          }

          *(a1 + 60) |= 1u;
        }

LABEL_102:
        v14 += 2;
        continue;
      case 0x5Du:
        goto LABEL_25;
      case 0x6Eu:
        goto LABEL_70;
      case 0x6Fu:
        goto LABEL_65;
      case 0x70u:
        result = 0;
        if ((v14[3] & 4) != 0 || (v14[3] & 3) == 1)
        {
          return result;
        }

        if ((v14[3] & 2) != 0)
        {
          v17 = v14 + 4;
        }

        else
        {
          v17 = 0;
        }

LABEL_65:
        if (a3)
        {
          *(a1 + 64) |= 0xF0u;
          cstdlib_memset((a1 + 65), 255, 7uLL);
          v15 = *v14;
        }

        if (v15 == 112)
        {
          v28 = &v14[__rev16(*(v14 + 1))];
          if (!v17)
          {
            goto LABEL_80;
          }
        }

        else
        {
LABEL_70:
          v17 = v14 + 1;
          v28 = v14 + 33;
        }

        v29 = 0;
        if (a3)
        {
          do
          {
            v8[v29] |= v17[v29];
            ++v29;
          }

          while (v29 != 16);
          v30 = 128;
          do
          {
            if ((v17[v30 >> 3] >> (v30 & 7)))
            {
              *(a1 + 64) |= 1 << (v30 >> 6);
              v30 |= 0x3Fu;
            }
          }

          while (v30++ < 0xFF);
        }

        else
        {
          do
          {
            v8[v29] |= v17[v29];
            ++v29;
          }

          while (v29 != 32);
        }

LABEL_80:
        v32 = *v28 - 98;
        if (v32 > 0xB)
        {
          goto LABEL_137;
        }

        v33 = 1 << v32;
        if ((v33 & 0x533) != 0)
        {
          v14 = v28 + 1;
        }

        else
        {
          if ((v33 & 0x8C0) == 0)
          {
            goto LABEL_137;
          }

          v46 = __rev16(*(v28 + 1));
          v47 = 5;
          if (v46)
          {
            v47 = 0;
          }

          v14 = &v28[v47];
          if (v46)
          {
            goto LABEL_137;
          }
        }

        continue;
      case 0x76u:
        v14 += 6;
        continue;
      case 0x77u:
        v14 += __rev16(*(v14 + 5));
        continue;
      case 0x78u:
        goto LABEL_138;
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
        return 2;
      case 0x7Eu:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
        result = set_start_bits(a1, v14, a3);
        switch(result)
        {
          case 0:
            return result;
          case 1:
            goto LABEL_137;
          case 3:
            return result;
        }

        do
        {
          v14 += __rev16(*(v14 + 1));
        }

        while (*v14 == 120);
LABEL_25:
        v14 += 3;
        continue;
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
        do
        {
          v14 += __rev16(*(v14 + 1));
        }

        while (*v14 == 120);
        goto LABEL_25;
      case 0x93u:
      case 0x94u:
      case 0x95u:
        result = set_start_bits(a1, ++v14, a3);
        if (!result || result == 3)
        {
          return result;
        }

        do
        {
          v14 += __rev16(*(v14 + 1));
        }

        while (*v14 == 120);
        goto LABEL_25;
      case 0xA3u:
        v27 = v14 + 1;
        do
        {
          v27 += __rev16(*(v27 + 1));
        }

        while (*v27 == 120);
        v14 = v27 + 3;
        continue;
      default:
        return result;
    }
  }
}

uint64_t find_minlength(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  v7 = *a2;
  if ((v7 - 136) >= 5)
  {
    v75 = *(a1 + 96);
    v9 = (*a6)++;
    if (v9 > 1000)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = 0;
    v66 = 0;
    v26 = (v7 - 133) >= 2;
    v12 = 3;
    if (!v26)
    {
      v12 = 5;
    }

    v13 = &a2[v12];
    v65 = a1 + 136;
    v69 = a7 + 1;
    v73 = -1;
    v74 = 0;
    v67 = -1;
    v68 = 0;
    v70 = -1;
    v71 = 0;
    v77 = a3;
    v78 = a7;
    v76 = a1;
    while (2)
    {
      v14 = *v13;
      v8 = 0xFFFFFFFFLL;
      switch(*v13)
      {
        case 0u:
        case 0x78u:
        case 0x79u:
        case 0x7Au:
        case 0x7Bu:
        case 0x7Cu:
          if (v73 < 0 || !v74 && v11 < v73)
          {
            v73 = v11;
          }

          if (v14 == 120)
          {
            v74 = 0;
            v11 = 0;
            goto LABEL_33;
          }

          return v73;
        case 1u:
        case 2u:
        case 4u:
        case 5u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x76u:
        case 0x7Du:
        case 0x8Du:
        case 0x8Eu:
        case 0x8Fu:
        case 0x90u:
        case 0x91u:
        case 0x92u:
          goto LABEL_12;
        case 3u:
        case 0x97u:
        case 0x99u:
        case 0x9Bu:
        case 0x9Du:
        case 0x9Fu:
        case 0xA2u:
          v17 = _pcre2_OP_lengths_8[v14];
          goto LABEL_99;
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
          goto LABEL_107;
        case 0xEu:
          if (!a4)
          {
            goto LABEL_107;
          }

          return v8;
        case 0xFu:
        case 0x10u:
          v13 += 2;
LABEL_107:
          ++v11;
          v15 = v13 + 1;
          goto LABEL_108;
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x20u:
        case 0x23u:
        case 0x24u:
        case 0x2Bu:
        case 0x30u:
        case 0x31u:
        case 0x38u:
        case 0x3Du:
        case 0x3Eu:
        case 0x45u:
        case 0x4Au:
        case 0x4Bu:
        case 0x52u:
          ++v11;
          v15 = v13 + 2;
          if (!a4)
          {
            goto LABEL_108;
          }

          v16 = v13[1];
          goto LABEL_15;
        case 0x21u:
        case 0x22u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x2Au:
        case 0x2Cu:
        case 0x2Du:
        case 0x2Eu:
        case 0x2Fu:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x37u:
        case 0x39u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Cu:
        case 0x3Fu:
        case 0x40u:
        case 0x41u:
        case 0x42u:
        case 0x44u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Cu:
        case 0x4Du:
        case 0x4Eu:
        case 0x4Fu:
        case 0x51u:
        case 0x53u:
        case 0x54u:
          v15 = &v13[_pcre2_OP_lengths_8[v14]];
          if (!a4)
          {
            goto LABEL_108;
          }

          v16 = *(v15 - 1);
          goto LABEL_15;
        case 0x29u:
        case 0x36u:
        case 0x43u:
        case 0x50u:
          v11 += bswap32(*(v13 + 1)) >> 16;
          v15 = v13 + 4;
          if (!a4)
          {
            goto LABEL_108;
          }

          v16 = v13[3];
LABEL_15:
          if (v16 >= 0xC0)
          {
            v15 += _pcre2_utf8_table4[v16 & 0x3F];
          }

          goto LABEL_108;
        case 0x55u:
        case 0x56u:
        case 0x59u:
        case 0x5Au:
        case 0x5Eu:
        case 0x60u:
          v18 = v13[1];
          goto LABEL_38;
        case 0x57u:
        case 0x58u:
        case 0x5Fu:
          ++v11;
          v26 = v13[1] - 15 >= 2;
          v17 = 2;
          v27 = 4;
          goto LABEL_97;
        case 0x5Bu:
        case 0x5Cu:
        case 0x61u:
          v18 = v13[3];
LABEL_38:
          v20 = &v13[2 * ((v18 - 15) < 2)];
          v19 = _pcre2_OP_lengths_8[v14];
          goto LABEL_39;
        case 0x5Du:
          v11 += bswap32(*(v13 + 1)) >> 16;
          v26 = v13[3] - 15 >= 2;
          v17 = 4;
          v27 = 6;
LABEL_97:
          if (!v26)
          {
            v17 = v27;
          }

          goto LABEL_99;
        case 0x6Eu:
        case 0x6Fu:
        case 0x70u:
          if (v14 == 112)
          {
            v25 = __rev16(*(v13 + 1));
          }

          else
          {
            v25 = 33;
          }

          v15 = &v13[v25];
          v49 = *v15 - 98;
          if (v49 > 0xB)
          {
            ++v11;
          }

          else
          {
            v50 = 1 << v49;
            if ((v50 & 0x533) != 0)
            {
              goto LABEL_88;
            }

            if ((v50 & 0x20C) != 0)
            {
              ++v11;
LABEL_88:
              ++v15;
              goto LABEL_108;
            }

            v11 += bswap32(*(v15 + 1)) >> 16;
            v15 += 5;
          }

          goto LABEL_108;
        case 0x71u:
        case 0x72u:
          if ((v75 & 0x200000) != 0)
          {
            return v8;
          }

          v43 = v13[1];
          v44 = v13[2];
          v45 = v44 | (v43 << 8);
          if (v45 <= *a7)
          {
            LODWORD(v31) = a7[v45];
            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_123;
            }
          }

          if ((*(a1 + 89) & 2) != 0)
          {
            LODWORD(v31) = 0;
          }

          else
          {
            bracket_8 = _pcre2_find_bracket_8(a3, a4, v13[2] | (v13[1] << 8));
            if (!bracket_8)
            {
              return 4294967294;
            }

            v47 = bracket_8;
            v48 = bracket_8;
            do
            {
              v48 += __rev16(*(v48 + 1));
            }

            while (*v48 == 120);
            a3 = v77;
            a7 = v78;
            a1 = v76;
            if (v13 > v47 && v13 < v48)
            {
              goto LABEL_79;
            }

            if (a5)
            {
              v56 = a5;
              while (v56[1] != v47)
              {
                v56 = *v56;
                if (!v56)
                {
                  goto LABEL_119;
                }
              }

LABEL_79:
              LODWORD(v31) = 0;
              v74 = 1;
              goto LABEL_120;
            }

LABEL_119:
            minlength = find_minlength(v76);
            a3 = v77;
            a7 = v78;
            v31 = minlength;
            a1 = v76;
            v8 = v31;
            if ((v31 & 0x80000000) != 0)
            {
              return v8;
            }
          }

LABEL_120:
          a7[v45] = v31;
          v58 = *a7;
          if (v58 + 1 < v45)
          {
            memset(&v69[v58], 255, 4 * ((v43 << 8) + v44 - v58 - 2) + 4);
            a1 = v76;
            a3 = v77;
            a7 = v78;
          }

          *a7 = v45;
LABEL_123:
          v55 = 3;
LABEL_124:
          v15 = &v13[v55];
          v59 = 1;
          v60 = *v15 - 98;
          if (v60 <= 0xB)
          {
            if (((1 << v60) & 0x533) != 0)
            {
              v59 = 0;
              ++v15;
            }

            else if (((1 << v60) & 0x20C) != 0)
            {
              ++v15;
              v59 = 1;
            }

            else
            {
              v59 = __rev16(*(v15 + 1));
              v15 += 5;
            }
          }

          if (v31 >= 1 && 0x7FFFFFFF / v31 < v59)
          {
            return 0xFFFFLL;
          }

          v8 = 0xFFFFLL;
          v61 = v59 * v31;
          if (0xFFFF - v11 < v61)
          {
            return v8;
          }

          v11 += v61;
LABEL_108:
          v13 = v15;
          if (v11 > 65534)
          {
            return 0xFFFFLL;
          }

          continue;
        case 0x73u:
        case 0x74u:
          if ((v75 & 0x200000) != 0)
          {
            return v8;
          }

          if ((*(a1 + 89) & 2) != 0)
          {
            LODWORD(v31) = 0;
            goto LABEL_114;
          }

          v28 = __rev16(*(v13 + 3));
          if (!v28)
          {
            LODWORD(v31) = 0x7FFFFFFF;
            goto LABEL_114;
          }

          v29 = (v65 + *(a1 + 132) * __rev16(*(v13 + 1)));
          v30 = *a7;
          LODWORD(v31) = 0x7FFFFFFF;
          break;
        case 0x75u:
          v52 = &a3[__rev16(*(v13 + 1))];
          v53 = __rev16(*(v52 + 3));
          v54 = v52;
          if (v53 == v67)
          {
            v11 += v66;
            goto LABEL_140;
          }

          do
          {
            v54 += __rev16(*(v54 + 1));
          }

          while (*v54 == 120);
          if (v13 > v52 && v13 < v54)
          {
            goto LABEL_105;
          }

          if (a5)
          {
            v62 = a5;
            while (v62[1] != v52)
            {
              v62 = *v62;
              if (!v62)
              {
                goto LABEL_138;
              }
            }

LABEL_105:
            v74 = 1;
          }

          else
          {
LABEL_138:
            v63 = (find_minlength)();
            if ((v63 & 0x80000000) != 0)
            {
              return v63;
            }

            v66 = v63;
            v67 = v53;
            v11 += v63;
            a3 = v77;
            a7 = v78;
            a1 = v76;
          }

LABEL_140:
          v17 = (v68 + 3);
          v68 = 0;
LABEL_99:
          v15 = &v13[v17];
          goto LABEL_108;
        case 0x77u:
          v17 = __rev16(*(v13 + 5));
          goto LABEL_99;
        case 0x7Eu:
        case 0x7Fu:
        case 0x80u:
        case 0x81u:
          do
          {
            v13 += __rev16(*(v13 + 1));
            LODWORD(v14) = *v13;
          }

          while (v14 == 120);
LABEL_12:
          v17 = _pcre2_OP_lengths_8[v14];
          goto LABEL_99;
        case 0x82u:
        case 0x84u:
        case 0x88u:
        case 0x89u:
          goto LABEL_92;
        case 0x83u:
          v15 = v13 + 3;
          if (v13[3] != 117 || v13[6] != 121)
          {
            goto LABEL_92;
          }

          v68 = 3;
          goto LABEL_108;
        case 0x85u:
        case 0x86u:
        case 0x8Au:
        case 0x8Bu:
          v21 = __rev16(*(v13 + 3));
          if ((v75 & 0x200000) != 0 || v21 != v70)
          {
            v22 = find_minlength(v76);
            a3 = v77;
            a7 = v78;
            v23 = v22;
            a1 = v76;
            v70 = v21;
            v71 = v23;
            v8 = v23;
            if ((v23 & 0x80000000) != 0)
            {
              return v8;
            }
          }

          do
          {
            v13 += __rev16(*(v13 + 1));
          }

          while (*v13 == 120);
          v11 += v71;
LABEL_33:
          v15 = v13 + 3;
          goto LABEL_108;
        case 0x87u:
        case 0x8Cu:
          v24 = &v13[__rev16(*(v13 + 1))];
          if (*v24 != 120)
          {
            goto LABEL_36;
          }

LABEL_92:
          v51 = (find_minlength)();
          v8 = v51;
          if ((v51 & 0x80000000) != 0)
          {
            return v8;
          }

          do
          {
            v13 += __rev16(*(v13 + 1));
          }

          while (*v13 == 120);
          v11 += v51;
          v15 = v13 + 3;
          a3 = v77;
          a7 = v78;
          a1 = v76;
          goto LABEL_108;
        case 0x93u:
        case 0x94u:
        case 0x95u:
        case 0xA3u:
          v24 = &v13[_pcre2_OP_lengths_8[v14]];
          do
          {
            v24 += __rev16(*(v24 + 1));
          }

          while (*v24 == 120);
LABEL_36:
          v15 = v24 + 3;
          goto LABEL_108;
        case 0x96u:
        case 0x98u:
        case 0x9Au:
        case 0x9Cu:
        case 0x9Eu:
          v19 = _pcre2_OP_lengths_8[v14];
          v20 = &v13[v13[1]];
LABEL_39:
          v15 = &v20[v19];
          goto LABEL_108;
        case 0xA0u:
        case 0xA1u:
          return v8;
        default:
          return 4294967293;
      }

      break;
    }

    while (1)
    {
      v32 = *v29;
      v33 = v29[1];
      v34 = v33 | (v32 << 8);
      if (v34 > v30)
      {
        break;
      }

      LODWORD(v8) = a7[v34];
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      v34 = v30;
LABEL_64:
      if (v8 < v31)
      {
        LODWORD(v31) = v8;
      }

      if (v8)
      {
        v29 += *(a1 + 132);
        v30 = v34;
        if (v28-- > 1)
        {
          continue;
        }
      }

LABEL_114:
      v55 = 5;
      goto LABEL_124;
    }

    v35 = _pcre2_find_bracket_8(a3, a4, v29[1] | (*v29 << 8));
    if (!v35)
    {
      return 4294967294;
    }

    v36 = v35;
    v37 = v32 << 8;
    v38 = v35;
    do
    {
      v38 += __rev16(*(v38 + 1));
    }

    while (*v38 == 120);
    a3 = v77;
    a7 = v78;
    a1 = v76;
    if (v13 <= v36 || v13 >= v38)
    {
      if (!a5)
      {
LABEL_60:
        v40 = find_minlength(v76);
        a3 = v77;
        a7 = v78;
        v8 = v40;
        a1 = v76;
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        goto LABEL_61;
      }

      v39 = a5;
      while (v39[1] != v36)
      {
        v39 = *v39;
        if (!v39)
        {
          goto LABEL_60;
        }
      }
    }

    LODWORD(v8) = 0;
    v74 = 1;
LABEL_61:
    a7[v34] = v8;
    v41 = *a7;
    if (v41 + 1 < v34)
    {
      memset(&v69[v41], 255, 4 * (v37 + v33 - v41 - 2) + 4);
      a1 = v76;
      a3 = v77;
      a7 = v78;
    }

    *a7 = v34;
    goto LABEL_64;
  }

  return 0;
}

unsigned __int8 *set_table_bit(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v5 = a2 + 1;
  v4 = *a2;
  v6 = a1 + 40;
  *(a1 + 40 + (v4 >> 3)) |= 1 << (v4 & 7);
  if (a4 && v4 >= 0xC0)
  {
    if ((v4 & 0x20) != 0)
    {
      if ((v4 & 0x10) != 0)
      {
        if ((v4 & 8) != 0)
        {
          v7 = a2[1] & 0x3F;
          v8 = a2[2] & 0x3F;
          v9 = a2[3] & 0x3F;
          v10 = a2[4] & 0x3F;
          if ((v4 & 4) != 0)
          {
            LODWORD(v4) = ((v4 & 1) << 30) | (v7 << 24) | (v8 << 18) | (v9 << 12) | (v10 << 6) | a2[5] & 0x3F;
            v5 = a2 + 6;
          }

          else
          {
            LODWORD(v4) = ((v4 & 3) << 24) | (v7 << 18) | (v8 << 12) | (v9 << 6) | v10;
            v5 = a2 + 5;
          }
        }

        else
        {
          LODWORD(v4) = ((v4 & 7) << 18) | ((a2[1] & 0x3F) << 12) | ((a2[2] & 0x3F) << 6) | a2[3] & 0x3F;
          v5 = a2 + 4;
        }
      }

      else
      {
        LODWORD(v4) = ((v4 & 0xF) << 12) | ((a2[1] & 0x3F) << 6) | a2[2] & 0x3F;
        v5 = a2 + 3;
      }
    }

    else
    {
      v5 = a2 + 2;
      LODWORD(v4) = a2[1] & 0x3F | ((v4 & 0x1F) << 6);
    }
  }

  if (a3)
  {
    if (a4)
    {
      _pcre2_ord2utf_8(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v4 & 0x7F | (_pcre2_ucd_stage1_8[v4 >> 7] << 7)] + 1] + v4, v13);
      v11 = v13[0];
    }

    else
    {
      v11 = *(*(a1 + 24) + v4 + 256);
    }

    *(v6 + (v11 >> 3)) |= 1 << (v11 & 7);
  }

  return v5;
}

uint64_t set_type_bits(uint64_t result, int a2, unsigned int a3)
{
  v3 = result;
  if (!a3)
  {
    goto LABEL_5;
  }

  v4 = (result + 40);
  v5 = a3;
  v6 = (*(result + 24) + (a2 + 512));
  do
  {
    v7 = *v6++;
    *v4++ |= v7;
    --v5;
  }

  while (v5);
  if (a3 != 32)
  {
LABEL_5:
    v8 = result + 40;
    for (i = 128; i != 256; ++i)
    {
      if ((*(*(v3 + 24) + (i >> 3) + 512) >> (i & 7)))
      {
        result = _pcre2_ord2utf_8(i, v10);
        *(v8 + (v10[0] >> 3)) |= 1 << (v10[0] & 7);
      }
    }
  }

  return result;
}

uint64_t pcre2_substitute_8(uint64_t a1, char *a2, unint64_t a3, size_t a4, int a5, void *a6, __int128 *a7, unsigned __int8 *a8, unint64_t a9, char *__dst, size_t *a11)
{
  v159 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 88);
  v12 = *a11;
  *a11 = -1;
  if ((a5 & 0x30) != 0)
  {
    return 4294967262;
  }

  v16 = a6;
  v19 = a1;
  v20 = a6;
  if (!a6)
  {
    v21 = a7 ? a7 : a1;
    v20 = pcre2_match_data_create_from_pattern_8(a1, v21);
    if (!v20)
    {
      return 4294967248;
    }
  }

  v140 = a8;
  v141 = a7;
  v22 = a9;
  ovector_pointer_8 = pcre2_get_ovector_pointer_8(v20);
  ovector_count_8 = pcre2_get_ovector_count_8(v20);
  if (a3 == -1)
  {
    a3 = _pcre2_strlen_8(a2);
  }

  v23 = v11 & 0x80000;
  if (a9 == -1)
  {
    v22 = _pcre2_strlen_8(v140);
  }

  v155 = 0;
  if ((a5 & 0x40000000) == 0)
  {
    if (v23)
    {
      valid = _pcre2_valid_utf_8(v140, v22, v20 + 7);
      if (valid)
      {
        v20[6] = 0;
        v13 = valid;
        goto LABEL_317;
      }
    }
  }

  if (a3 < a4)
  {
    v20[6] = 0;
    v13 = 4294967263;
    goto LABEL_317;
  }

  __src = a2;
  v129 = v12;
  v25 = v12 - a4;
  if (v12 >= a4)
  {
    v128 = a11;
    v130 = v16;
    cstdlib_memcpy(__dst, __src, a4);
    v26 = a5;
    v27 = 0;
    v150 = 0;
    v145 = (a5 & 0x1000) == 0;
    v143 = a4;
  }

  else
  {
    if ((a5 & 0x1000) == 0)
    {
      goto LABEL_313;
    }

    v128 = a11;
    v130 = v16;
    v145 = 0;
    v143 = 0;
    v25 = v12;
    v150 = a4 - v12;
    v26 = a5;
    v27 = 1;
  }

  v28 = 0;
  v147 = 0;
  v29 = 0;
  v30 = 0;
  v31 = &v140[v22];
  v32 = v26 & 0xFFFFE0CF;
  if ((v26 & 0x800) != 0)
  {
    v33 = -55;
  }

  else
  {
    v33 = -49;
  }

  v127 = v33;
  if ((v26 & 0x400) != 0)
  {
    v34 = 9;
  }

  else
  {
    v34 = 16;
  }

  v126 = v34;
  v134 = v32 | (v23 << 11);
  v135 = 0;
  v142 = -1;
  v136 = -1;
  v137 = v20;
  v139 = -1;
  v132 = v19;
  while (1)
  {
    memset(v158, 0, sizeof(v158));
    matched = pcre2_match_8(v19, __src, a3, a4, v32 | v29, v20, v141);
    if ((matched & 0x80000000) == 0)
    {
      break;
    }

    if (matched != -1)
    {
      v38 = matched;
LABEL_315:
      v13 = v38;
      goto LABEL_316;
    }

    if (!v29 || a4 >= a3)
    {
LABEL_302:
      v110 = a3 - a4;
      if (v27 || (v111 = v110 - v25, v110 <= v25))
      {
        if (v27)
        {
          v111 = v150 + v110;
          v112 = v129;
          v16 = v130;
          goto LABEL_311;
        }

        cstdlib_memcpy(&__dst[v143], &__src[a4], a3 - a4);
        v156[0] = 0;
        v16 = v130;
        v113 = v128;
        if (v110 != v25)
        {
          cstdlib_memcpy(&__dst[v143 + v110], v156, 1uLL);
          *v128 = v143 + v110;
          v13 = v135;
          goto LABEL_317;
        }

        if (!v145)
        {
          v114 = 1;
          v112 = v129;
          goto LABEL_312;
        }
      }

      else
      {
        v112 = v129;
        if (v145)
        {
          v13 = 4294967248;
          v16 = v130;
          goto LABEL_317;
        }

        v16 = v130;
LABEL_311:
        v113 = v128;
        v156[0] = 0;
        v114 = v111 + 1;
LABEL_312:
        *v113 = v114 + v112;
      }

LABEL_313:
      v13 = 4294967248;
      goto LABEL_317;
    }

    v40 = a4 + 1;
    if (__src[a4] == 13 && *(v19 + 122) - 3 <= 0xFFFFFFFD && v40 < a3 && __src[v40] == 10)
    {
      v40 = a4 + 2;
    }

    else if ((*(v19 + 90) & 8) != 0 && v40 < a3)
    {
      while ((__src[v40] & 0xC0) == 0x80)
      {
        if (a3 == ++v40)
        {
          v40 = a3;
          break;
        }
      }
    }

    v41 = v40 - a4;
    if (v27 || v25 >= v41)
    {
      if (v27)
      {
        v144 = 0;
        v150 += v41;
      }

      else
      {
        cstdlib_memcpy(&__dst[v143], &__src[a4], v40 - a4);
        v144 = 0;
        v143 += v41;
        v19 = v132;
        v25 -= v41;
      }
    }

    else
    {
      if (v145)
      {
        goto LABEL_306;
      }

      v144 = 0;
      v150 = v41 - v25;
      v27 = 1;
    }

    a4 = v142;
LABEL_298:
    v142 = a4;
    a4 = v40;
    v20 = v137;
    v32 = v134;
    v29 = v144;
    if ((a5 & 0x100) == 0)
    {
      goto LABEL_302;
    }
  }

  v37 = *ovector_pointer_8;
  v36 = ovector_pointer_8[1];
  v38 = 4294967236;
  if (v36 < *ovector_pointer_8)
  {
    goto LABEL_315;
  }

  v39 = v37 - a4;
  if (v37 < a4)
  {
    goto LABEL_315;
  }

  if (v139 == v37 && v136 == v36)
  {
    v38 = 4294967231;
    if (v139 != v136)
    {
      goto LABEL_315;
    }

    v144 = -2147483640;
    v139 = v136;
    v40 = a4;
    if (v142 == a4)
    {
      goto LABEL_315;
    }

    goto LABEL_298;
  }

  if (v135 == 0x7FFFFFFF)
  {
    v38 = 4294967235;
    goto LABEL_315;
  }

  v42 = ovector_count_8;
  if (matched)
  {
    v42 = matched;
  }

  text_end = v42;
  if (!v27 && v25 < v39)
  {
    if (!v145)
    {
      v150 = v39 - v25;
      v27 = 1;
      goto LABEL_68;
    }

LABEL_306:
    v13 = 4294967248;
LABEL_316:
    v16 = v130;
    v20 = v137;
    goto LABEL_317;
  }

  if (v27)
  {
    v150 += v39;
  }

  else
  {
    cstdlib_memcpy(&__dst[v143], &__src[a4], v37 - a4);
    v143 += v39;
    v25 -= v39;
  }

LABEL_68:
  v43 = 0;
  ++v135;
  v44 = v140;
  v155 = v140;
  while (2)
  {
    v154 = 0;
    if (v44 >= v31)
    {
      if (!v43)
      {
        v40 = ovector_pointer_8[1];
        if (*ovector_pointer_8 <= a4)
        {
          v109 = -2147483640;
        }

        else
        {
          v109 = 0;
        }

        v139 = *ovector_pointer_8;
        if (*ovector_pointer_8 != v40)
        {
          v109 = 0;
        }

        v144 = v109;
        v136 = ovector_pointer_8[1];
        goto LABEL_298;
      }

      v31 = *(&v158[v43 / 2 - 1] + 1);
      v43 -= 2;
      v47 = *&v158[v43 / 2];
LABEL_79:
      v155 = v47;
      goto LABEL_238;
    }

    v45 = *v44;
    if (v30)
    {
      v46 = v45 != 92 || v44 >= v31 - 1;
      if (!v46 && v44[1] == 69)
      {
        v30 = 0;
        v47 = v44 + 2;
        goto LABEL_79;
      }

LABEL_101:
      v48 = v44;
LABEL_102:
      v155 = v48 + 1;
      LODWORD(v59) = *v48;
      v154 = v59;
      if (v23 && v59 >= 0xC0)
      {
        if ((v59 & 0x20) == 0)
        {
          v155 = v48 + 2;
          v154 = v48[1] & 0x3F | ((v59 & 0x1F) << 6);
          if (!v28)
          {
            goto LABEL_106;
          }

LABEL_137:
          if (v23)
          {
            v60 = v154;
            v68 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v154 - (v59 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v154 / 128] << 7)]];
            v69 = *(v68 + 1);
            if (_pcre2_ucp_gentype_8[v69] != 1)
            {
              goto LABEL_144;
            }

            if (v28 <= 0)
            {
              v70 = 5;
            }

            else
            {
              v70 = 9;
            }

            v28 = v147;
            if (v70 != v69)
            {
              v60 = v68[1] + v154;
              v154 = v60;
LABEL_144:
              v28 = v147;
            }

LABEL_145:
            v71 = _pcre2_ord2utf_8(v60, v156);
            if (v27)
            {
LABEL_155:
              if (v27)
              {
                v150 += v71;
              }

              else
              {
                cstdlib_memcpy(&__dst[v143], v156, v71);
                v143 += v71;
                v19 = v132;
                v25 -= v71;
              }

              goto LABEL_238;
            }

LABEL_152:
            if (v25 >= v71)
            {
              goto LABEL_155;
            }

            if (v145)
            {
              goto LABEL_306;
            }

            v150 = v71 - v25;
            v27 = 1;
LABEL_238:
            v44 = v155;
            continue;
          }

          v72 = *(v19 + 24);
          v73 = 128;
          if (v28 > 0)
          {
            v73 = 96;
          }

          LOBYTE(v60) = v154;
          v28 = v147;
          if (((*(v72 + v73 + (v154 >> 3) + 512) >> (v154 & 7)) & 1) == 0)
          {
            LOBYTE(v60) = *(v72 + v154 + 256);
            v154 = v60;
            v28 = v147;
          }

LABEL_151:
          v156[0] = v60;
          v71 = 1;
          if (v27)
          {
            goto LABEL_155;
          }

          goto LABEL_152;
        }

        v61 = v48[1] & 0x3F;
        if ((v59 & 0x10) == 0)
        {
          v154 = ((v59 & 0xF) << 12) | (v61 << 6) | v48[2] & 0x3F;
          v59 = v48 + 3;
          goto LABEL_135;
        }

        if ((v59 & 8) == 0)
        {
          v154 = ((v59 & 7) << 18) | (v61 << 12) | ((v48[2] & 0x3F) << 6) | v48[3] & 0x3F;
          v59 = v48 + 4;
          goto LABEL_135;
        }

        v62 = v48[2] & 0x3F;
        v63 = v48[3] & 0x3F;
        v64 = v48[4] & 0x3F;
        if ((v59 & 4) == 0)
        {
          v154 = ((v59 & 3) << 24) | (v61 << 18) | (v62 << 12) | (v63 << 6) | v64;
          v155 = v48 + 5;
          if (v28)
          {
            goto LABEL_137;
          }

          goto LABEL_106;
        }

        v154 = ((v59 & 1) << 30) | (v61 << 24) | (v62 << 18) | (v63 << 12) | (v64 << 6) | v48[5] & 0x3F;
        v59 = v48 + 6;
LABEL_135:
        v155 = v59;
      }

      if (v28)
      {
        goto LABEL_137;
      }

LABEL_106:
      v60 = v154;
      if (v23)
      {
        goto LABEL_145;
      }

      goto LABEL_151;
    }

    break;
  }

  if (v45 != 36)
  {
    if ((a5 & 0x200) == 0 || v45 != 92)
    {
      goto LABEL_101;
    }

    v157[0] = 0;
    if (v44 < v31 - 1)
    {
      v56 = v44[1];
      if (v56 > 0x6B)
      {
        if (v56 == 108)
        {
          v147 = 0;
          v30 = 0;
          v155 = v44 + 2;
          v57 = 9;
          v28 = -1;
          goto LABEL_237;
        }

        if (v56 == 117)
        {
          v147 = 0;
          v30 = 0;
          v155 = v44 + 2;
          v57 = 9;
          v28 = 1;
          goto LABEL_237;
        }
      }

      else
      {
        if (v56 == 76)
        {
          v30 = 0;
          v155 = v44 + 2;
          v57 = 9;
          v28 = -1;
          v58 = -1;
          goto LABEL_161;
        }

        if (v56 == 85)
        {
          v30 = 0;
          v155 = v44 + 2;
          v57 = 9;
          v28 = 1;
          v58 = 1;
LABEL_161:
          v147 = v58;
          goto LABEL_237;
        }
      }
    }

    v155 = v44 + 1;
    v65 = _pcre2_check_escape_8(&v155, v31, &v154, v157, *(v19 + 88), 0, 0);
    text_end = v65;
    if (v157[0])
    {
      v30 = 0;
      v57 = 28;
    }

    else
    {
      switch(v65)
      {
        case 0u:
          text_end = 0;
          if (v28)
          {
            goto LABEL_137;
          }

          goto LABEL_106;
        case 0x1Au:
          v66 = 9;
          break;
        case 0x19u:
          v28 = 0;
          break;
        default:
          v66 = 28;
          break;
      }

      v67 = v147;
      if (v65 == 25)
      {
        v67 = 0;
      }

      v147 = v67;
      v30 = v65 != 25 && v65 == 26;
      if (v65 == 25)
      {
        v57 = 9;
      }

      else
      {
        v57 = v66;
      }
    }

    goto LABEL_237;
  }

  v153 = 0;
  v48 = v44 + 1;
  v155 = v44 + 1;
  if ((v44 + 1) >= v31)
  {
    goto LABEL_235;
  }

  v49 = *v48;
  if (v49 == 36)
  {
    goto LABEL_102;
  }

  v50 = *v48;
  if (v49 == 123)
  {
    v48 = v44 + 2;
    v155 = v44 + 2;
    if ((v44 + 2) < v31)
    {
      v50 = *v48;
      goto LABEL_86;
    }

LABEL_235:
    v57 = 11;
    goto LABEL_236;
  }

LABEL_86:
  if (v50 == 42)
  {
    v155 = ++v48;
    if (v48 >= v31)
    {
      goto LABEL_235;
    }

    v55 = *v48;
    goto LABEL_164;
  }

  v51 = v50 - 48;
  if (v50 - 48 > 9)
  {
    v55 = v50;
LABEL_164:
    v74 = *(v19 + 24) + 832;
    if ((*(v74 + v55) & 0x10) == 0)
    {
      goto LABEL_235;
    }

    v75 = v48 + 1;
    v76 = v157 + 1;
    v77 = 32;
    do
    {
      *(v76 - 1) = v55;
      if (!v77)
      {
        goto LABEL_235;
      }

      v78 = v76;
      v52 = v75;
      v155 = v75;
      if (v75 >= v31)
      {
        break;
      }

      ++v75;
      v55 = *v52;
      --v77;
      ++v76;
    }

    while ((*(v74 + *v52) & 0x10) != 0);
    *v78 = 0;
    v51 = -1;
    goto LABEL_173;
  }

  v52 = v48 + 1;
  v155 = v48 + 1;
  if ((v48 + 1) >= v31)
  {
    v55 = v50;
  }

  else
  {
    v53 = ~v48 + v31;
    v54 = v48 + 2;
    while (1)
    {
      v55 = *v52;
      if (v55 - 58 < 0xFFFFFFF6)
      {
        goto LABEL_173;
      }

      v51 = v55 + 10 * v51 - 48;
      if (v51 > *(v19 + 128))
      {
        break;
      }

      v155 = ++v52;
      ++v54;
      if (!--v53)
      {
        goto LABEL_173;
      }
    }

    if ((a5 & 0x800) == 0)
    {
      v57 = 16;
      v90 = -49;
      goto LABEL_204;
    }

    do
    {
      v52 = v54;
      v155 = v54;
      if (v54 >= v31)
      {
        break;
      }

      ++v54;
    }

    while (*v52 - 48 < 0xA);
  }

LABEL_173:
  if (v49 == 123)
  {
    if ((a5 & 0x200) != 0 && v50 != 42 && v55 == 58 && v52 < v31 - 2)
    {
      v155 = v52 + 1;
      v79 = v52[1];
      if (v79 != 45 && v79 != 43)
      {
        v57 = 16;
        v90 = -59;
        goto LABEL_204;
      }

      v123 = v52 + 2;
      v155 = v52 + 2;
      v120 = v79;
      text_end = find_text_end(v19, &v155, v31, v79 == 45);
      if (text_end)
      {
        goto LABEL_286;
      }

      v80 = v155;
      v81 = v120;
      if (v120 == 43)
      {
        if (*v155 == 58)
        {
          v118 = v155 + 1;
          v121 = v155++;
          text_end = find_text_end(v19, &v155, v31, 1);
          if (!text_end)
          {
            text_end = 0;
            v81 = 43;
            v52 = v155;
            v82 = v155;
            v80 = v121;
            v83 = v123;
            v84 = v118;
            goto LABEL_194;
          }

LABEL_286:
          v57 = 16;
          goto LABEL_236;
        }

        text_end = 0;
        v84 = 0;
        v82 = 0;
        v81 = 43;
      }

      else
      {
        text_end = 0;
        v84 = 0;
        v82 = 0;
      }

      v52 = v155;
      v83 = v123;
    }

    else
    {
      if (v52 >= v31 || *v52 != 125)
      {
        v57 = 16;
        v90 = -58;
LABEL_204:
        text_end = v90;
        goto LABEL_236;
      }

      v81 = 0;
      v83 = 0;
      v80 = 0;
      v84 = 0;
      v82 = 0;
    }

LABEL_194:
    v155 = v52 + 1;
  }

  else
  {
    v81 = 0;
    v83 = 0;
    v80 = 0;
    v84 = 0;
    v82 = 0;
  }

  if (v50 == 42)
  {
    if (_pcre2_strcmp_c8_8(v157, "MARK"))
    {
      goto LABEL_235;
    }

    mark_8 = pcre2_get_mark_8(v137);
    if (mark_8)
    {
      v88 = -1;
        ;
      }

      if (v27 || v25 >= v88)
      {
        if (v27)
        {
          v150 += v88;
        }

        else
        {
          cstdlib_memcpy(&__dst[v143], mark_8, v88);
          v143 += v88;
          v25 -= v88;
        }
      }

      else
      {
        if (v145)
        {
LABEL_202:
          v27 = 0;
          v57 = 3;
          goto LABEL_236;
        }

        v150 = v88 - v25;
        v27 = 1;
      }
    }

    goto LABEL_284;
  }

  v85 = v81;
  v122 = v80;
  v124 = v83;
  v117 = v82;
  v119 = v84;
  if ((v51 & 0x80000000) == 0)
  {
    goto LABEL_230;
  }

  v151 = 0;
  v152 = 0;
  v86 = pcre2_substring_nametable_scan_8(v19, v157, &v152, &v151);
  if ((a5 & 0x800) != 0 && v86 == -49)
  {
    v51 = *(v19 + 128) + 1;
    goto LABEL_230;
  }

  if ((v86 & 0x80000000) != 0)
  {
LABEL_285:
    text_end = v86;
    goto LABEL_286;
  }

  if (v152 <= v151)
  {
    v91 = v152;
    do
    {
      v92 = __rev16(*v91);
      if (v92 < ovector_count_8)
      {
        if (v51 < 0)
        {
          v51 = v92;
        }

        if (ovector_pointer_8[2 * v92] != -1)
        {
          v51 = v92;
          goto LABEL_230;
        }
      }

      v91 = (v91 + v86);
    }

    while (v91 <= v151);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_230;
    }
  }

  v51 = __rev16(*v152);
LABEL_230:
  v86 = pcre2_substring_length_bynumber_8(v137, v51, &v153);
  if ((v86 & 0x80000000) != 0)
  {
    if (v86 == -49)
    {
      v86 = v127;
    }

    if (v86 == -55)
    {
      if (!v85)
      {
        text_end = -55;
        v57 = v126;
        goto LABEL_236;
      }

      goto LABEL_231;
    }

    goto LABEL_285;
  }

LABEL_231:
  text_end = v86;
  if (!v85 || v85 == 45 && (v117 = v122, v119 = v124, !v86))
  {
    v93 = ovector_pointer_8[2 * v51];
    v94 = ovector_pointer_8[(2 * (v51 & 0x3FFFFFFF)) | 1u];
    if (v93 < v94)
    {
      v125 = &__src[v94];
      v95 = &__src[v93];
      do
      {
        v96 = *v95;
        v154 = v96;
        if (v23 && v96 >= 0xC0)
        {
          if ((v96 & 0x20) != 0)
          {
            v104 = v95[1] & 0x3F;
            if ((v96 & 0x10) != 0)
            {
              if ((v96 & 8) != 0)
              {
                v105 = v95[2] & 0x3F;
                v106 = v95[3] & 0x3F;
                v107 = v95[4] & 0x3F;
                if ((v96 & 4) != 0)
                {
                  v96 = ((v96 & 1) << 30) | (v104 << 24) | (v105 << 18) | (v106 << 12) | (v107 << 6) | v95[5] & 0x3F;
                  v154 = v96;
                  v95 += 6;
                }

                else
                {
                  v95 += 5;
                  v96 = ((v96 & 3) << 24) | (v104 << 18) | (v105 << 12) | (v106 << 6) | v107;
                  v154 = v96;
                }
              }

              else
              {
                v96 = ((v96 & 7) << 18) | (v104 << 12) | ((v95[2] & 0x3F) << 6) | v95[3] & 0x3F;
                v154 = v96;
                v95 += 4;
              }
            }

            else
            {
              v96 = ((v96 & 0xF) << 12) | (v104 << 6) | v95[2] & 0x3F;
              v154 = v96;
              v95 += 3;
            }
          }

          else
          {
            v97 = v95[1];
            v95 += 2;
            v154 = v97 & 0x3F | ((v96 & 0x1F) << 6);
            v96 = v154;
          }
        }

        else
        {
          ++v95;
        }

        if (v28)
        {
          if (v23)
          {
            v98 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v96 & 0x7F | (_pcre2_ucd_stage1_8[v96 >> 7] << 7)]];
            v99 = *(v98 + 1);
            if (_pcre2_ucp_gentype_8[v99] == 1)
            {
              v100 = v28 <= 0 ? 5 : 9;
              if (v100 != v99)
              {
                v96 += v98[1];
                v154 = v96;
              }
            }

            v28 = v147;
LABEL_261:
            v101 = _pcre2_ord2utf_8(v96, v156);
            goto LABEL_268;
          }

          v102 = *(v19 + 24);
          v103 = 128;
          if (v28 > 0)
          {
            v103 = 96;
          }

          if (((*(v102 + v103 + (v96 >> 3) + 512) >> (v96 & 7)) & 1) == 0)
          {
            LOBYTE(v96) = *(v102 + v96 + 256);
            v154 = v96;
          }

          v28 = v147;
        }

        else if (v23)
        {
          goto LABEL_261;
        }

        v156[0] = v96;
        v101 = 1;
LABEL_268:
        if (v27 || v25 >= v101)
        {
          if (v27)
          {
            v150 += v101;
          }

          else
          {
            cstdlib_memcpy(&__dst[v143], v156, v101);
            v143 += v101;
            v19 = v132;
            v25 -= v101;
          }
        }

        else
        {
          if (v145)
          {
            goto LABEL_202;
          }

          v150 = v101 - v25;
          v27 = 1;
        }
      }

      while (v95 < v125);
    }

LABEL_284:
    v30 = 0;
    goto LABEL_238;
  }

  if (v43 > 0x13)
  {
    goto LABEL_235;
  }

  *&v158[v43 / 2] = v155;
  *(&v158[v43 / 2] + 1) = v31;
  v43 += 2;
  v108 = v124;
  if (v86)
  {
    v108 = v119;
    v31 = v117;
  }

  else
  {
    v31 = v122;
  }

  v155 = v108;
  v57 = 9;
LABEL_236:
  v30 = 0;
LABEL_237:
  if (v57 == 9)
  {
    goto LABEL_238;
  }

  v20 = v137;
  if (v57 > 10)
  {
    v16 = v130;
    v13 = text_end;
    if (v57 == 11)
    {
      v13 = 4294967261;
    }

    else
    {
      v115 = v140;
      if (v57 == 16)
      {
LABEL_331:
        *v128 = v155 - v115;
        goto LABEL_317;
      }

      v13 = 4294967239;
    }

    v115 = v140;
    goto LABEL_331;
  }

  v16 = v130;
  v13 = 4294967248;
LABEL_317:
  if (v16)
  {
    *(v20 + 19) = v13;
  }

  else
  {
    pcre2_match_data_free_8(v20);
  }

  return v13;
}

uint64_t find_text_end(uint64_t a1, unsigned __int8 **a2, unint64_t a3, int a4)
{
  v5 = *a2;
  v24 = v5;
  if (v5 < a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = a3 - 1;
    while (1)
    {
      v12 = *v5;
      if (v9)
      {
        break;
      }

      if (v12 != 125)
      {
        if (!a4 && v12 == 58 && v10 == 0)
        {
LABEL_42:
          result = 0;
          goto LABEL_41;
        }

        if (v12 != 92)
        {
          if (v12 == 36 && v5 < v11)
          {
            v9 = 0;
            if (v5[1] == 123)
            {
              ++v5;
              ++v10;
            }
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_39;
        }

        v23 = 0;
        if (v5 < v11)
        {
          v17 = v5[1] - 76;
          v18 = v17 > 0x29;
          v19 = (1 << v17) & 0x20100000201;
          if (!v18 && v19 != 0)
          {
            v9 = 0;
            ++v5;
            goto LABEL_39;
          }
        }

        v24 = v5 + 1;
        v21 = _pcre2_check_escape_8(&v24, a3, &v23, &v23 + 1, *(a1 + 88), 0, 0);
        v5 = v24 - 1;
        result = HIDWORD(v23);
        if (HIDWORD(v23))
        {
          goto LABEL_41;
        }

        v9 = 0;
        if (!v21 || v21 == 25)
        {
          goto LABEL_39;
        }

        if (v21 != 26)
        {
          result = 4294967239;
          goto LABEL_41;
        }

        goto LABEL_9;
      }

      if (!v10)
      {
        goto LABEL_42;
      }

      v9 = 0;
      --v10;
LABEL_39:
      v24 = ++v5;
      if (v5 >= a3)
      {
        goto LABEL_40;
      }
    }

    if (v12 == 92 && v5 < v11)
    {
      v14 = v5[1];
      v15 = v14 == 69;
      v9 = v14 != 69;
      if (v15)
      {
        ++v5;
      }

      goto LABEL_39;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_39;
  }

LABEL_40:
  result = 4294967238;
LABEL_41:
  *a2 = v5;
  return result;
}

uint64_t pcre2_substring_copy_byname_8(uint64_t a1, unsigned __int8 *a2, void *a3, size_t *a4)
{
  if (*(a1 + 72) == 1)
  {
    return 4294967255;
  }

  v14[5] = v4;
  v14[6] = v5;
  v13 = 0;
  v14[0] = 0;
  result = pcre2_substring_nametable_scan_8(*(a1 + 24), a2, v14, &v13);
  if ((result & 0x80000000) == 0)
  {
    v10 = v14[0];
    if (v14[0] > v13)
    {
      return 4294967242;
    }

    v11 = result;
    result = 4294967242;
    do
    {
      v12 = __rev16(*v10);
      if (v12 < *(a1 + 74))
      {
        if (*(a1 + 80 + 16 * v12) != -1)
        {
          return pcre2_substring_copy_bynumber_8(a1, v12, a3, a4);
        }

        result = 4294967241;
      }

      v10 = (v10 + v11);
    }

    while (v10 <= v13);
  }

  return result;
}

uint64_t pcre2_substring_nametable_scan_8(uint64_t a1, unsigned __int8 *a2, void *a3, unsigned __int8 **a4)
{
  v6 = 0;
  LOWORD(v7) = *(a1 + 134);
  v8 = *(a1 + 132);
  v26 = a1 + 136;
  v25 = *(a1 + 132);
  while (1)
  {
    if (v7 <= v6)
    {
      return 4294967247;
    }

    v9 = (v6 + v7) >> 1;
    v10 = v9 * v8 + 136;
    v11 = (a1 + v10);
    v12 = _pcre2_strcmp_8(a2, (a1 + v10 + 2));
    if (!v12)
    {
      break;
    }

    if (v12 > 0)
    {
      v6 = v9 + 1;
    }

    else
    {
      v7 = (v6 + v7) >> 1;
    }
  }

  v13 = 0;
  v14 = v26 + (*(a1 + 134) - 1) * v25;
  v15 = a1 + v10;
  do
  {
    v16 = v15;
    v17 = v13;
    if (v10 < 137)
    {
      break;
    }

    v10 -= v8;
    v15 -= v8;
    v18 = _pcre2_strcmp_8(a2, (v16 - v8 + 2));
    v13 = v17 + v8;
  }

  while (!v18);
  v19 = v11;
  do
  {
    v20 = v19;
    v21 = v17;
    if (v19 >= v14)
    {
      break;
    }

    v19 += v8;
    v17 += v8;
  }

  while (!_pcre2_strcmp_8(a2, &v20[v8 + 2]));
  if (a3)
  {
    *a3 = v16;
    *a4 = v20;
    return v8;
  }

  else if (v21)
  {
    return 4294967246;
  }

  else
  {
    return __rev16(*v11);
  }
}

uint64_t pcre2_substring_copy_bynumber_8(uint64_t a1, unsigned int a2, void *a3, size_t *a4)
{
  __n = 0;
  result = pcre2_substring_length_bynumber_8(a1, a2, &__n);
  if ((result & 0x80000000) == 0)
  {
    if (__n + 1 <= *a4)
    {
      cstdlib_memcpy(a3, (*(a1 + 32) + *(a1 + 16 * a2 + 80)), __n);
      result = 0;
      v9 = __n;
      *(a3 + __n) = 0;
      *a4 = v9;
    }

    else
    {
      return 4294967248;
    }
  }

  return result;
}

uint64_t pcre2_substring_length_bynumber_8(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  result = *(a1 + 76);
  if (result == -2)
  {
    if (a2)
    {
      return 4294967294;
    }

    LODWORD(result) = 0;
  }

  else if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 74) > a2)
    {
      if (result - 1 < a2)
      {
        return 4294967241;
      }

      goto LABEL_15;
    }

    return 4294967242;
  }

  if (*(*(a1 + 24) + 128) < a2)
  {
    return 4294967247;
  }

  if (*(a1 + 74) <= a2)
  {
    return 4294967242;
  }

  if (*(a1 + 16 * a2 + 80) == -1)
  {
    return 4294967241;
  }

LABEL_15:
  result = 0;
  if (a3)
  {
    v5 = a1 + 80;
    v6 = *(v5 + 8 * ((2 * (a2 & 0x3FFFFFFF)) | 1));
    v7 = *(v5 + 16 * a2);
    v8 = v6 >= v7;
    v9 = v6 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    *a3 = v9;
  }

  return result;
}

uint64_t pcre2_substring_get_byname_8(uint64_t a1, unsigned __int8 *a2, void *a3, size_t *a4)
{
  if (*(a1 + 72) == 1)
  {
    return 4294967255;
  }

  v14[5] = v4;
  v14[6] = v5;
  v13 = 0;
  v14[0] = 0;
  result = pcre2_substring_nametable_scan_8(*(a1 + 24), a2, v14, &v13);
  if ((result & 0x80000000) == 0)
  {
    v10 = v14[0];
    if (v14[0] > v13)
    {
      return 4294967242;
    }

    v11 = result;
    result = 4294967242;
    do
    {
      v12 = __rev16(*v10);
      if (v12 < *(a1 + 74))
      {
        if (*(a1 + 80 + 16 * v12) != -1)
        {
          return pcre2_substring_get_bynumber_8(a1, v12, a3, a4);
        }

        result = 4294967241;
      }

      v10 = (v10 + v11);
    }

    while (v10 <= v13);
  }

  return result;
}

uint64_t pcre2_substring_get_bynumber_8(uint64_t a1, unsigned int a2, void *a3, size_t *a4)
{
  __n = 0;
  result = pcre2_substring_length_bynumber_8(a1, a2, &__n);
  if ((result & 0x80000000) == 0)
  {
    v9 = _pcre2_memctl_malloc_8(8 * __n + 32, a1);
    if (v9)
    {
      v10 = v9 + 3;
      cstdlib_memcpy(v9 + 3, (*(a1 + 32) + *(a1 + 16 * a2 + 80)), __n);
      result = 0;
      *(v10 + __n) = 0;
      *a3 = v10;
      *a4 = __n;
    }

    else
    {
      return 4294967248;
    }
  }

  return result;
}

uint64_t pcre2_substring_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result - 16))(result - 24, *(result - 8));
  }

  return result;
}

uint64_t pcre2_substring_length_byname_8(uint64_t a1, unsigned __int8 *a2, unint64_t *a3)
{
  if (*(a1 + 72) == 1)
  {
    return 4294967255;
  }

  v12[3] = v3;
  v12[4] = v4;
  v11 = 0;
  v12[0] = 0;
  result = pcre2_substring_nametable_scan_8(*(a1 + 24), a2, v12, &v11);
  if ((result & 0x80000000) == 0)
  {
    v8 = v12[0];
    if (v12[0] > v11)
    {
      return 4294967242;
    }

    v9 = result;
    result = 4294967242;
    do
    {
      v10 = __rev16(*v8);
      if (v10 < *(a1 + 74))
      {
        if (*(a1 + 80 + 16 * v10) != -1)
        {
          return pcre2_substring_length_bynumber_8(a1, v10, a3);
        }

        result = 4294967241;
      }

      v8 = (v8 + v9);
    }

    while (v8 <= v11);
  }

  return result;
}

uint64_t pcre2_substring_list_get_8(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 76);
  if ((result & 0x80000000) == 0)
  {
    if (result)
    {
      v7 = a1 + 80;
      v8 = a3 == 0;
      v9 = 8 * result;
      v10 = 8 * result + 32;
      if (!a3)
      {
        v10 = 32;
      }
    }

    else
    {
      v7 = a1 + 80;
      v8 = a3 == 0;
      v9 = 8 * *(a1 + 74);
      v10 = v9 + 32;
      if (!a3)
      {
        v10 = 32;
      }

      if (!*(a1 + 74))
      {
        v12 = 0;
        v16 = 1;
        v17 = 1;
        goto LABEL_15;
      }

      LODWORD(result) = *(a1 + 74);
    }

    v11 = 0;
    v12 = (2 * result);
    v13 = (a1 + 88);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13 - v14;
      if (*v13 < v14)
      {
        v15 = 0;
      }

      v10 += v15 + 9;
      v11 += 2;
      v13 += 2;
    }

    while (v11 < v12);
    v16 = 0;
    v17 = (result + 1);
LABEL_15:
    v18 = _pcre2_memctl_malloc_8(v10, a1);
    if (!v18)
    {
      return 4294967248;
    }

    v19 = v18 + 3;
    *a2 = v18 + 3;
    v20 = &v18[v17 + 3];
    if (v8)
    {
      v21 = 0;
      if (v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *a3 = v20;
      v21 = &v18[v17 + 3];
      v20 += v9;
      if (v16)
      {
LABEL_30:
        result = 0;
        *v19 = 0;
        return result;
      }
    }

    v22 = 0;
    v23 = (v7 + 8);
    do
    {
      v24 = *(v23 - 1);
      if (*v23 >= v24)
      {
        v25 = *v23 - v24;
      }

      else
      {
        v25 = 0;
      }

      if (*v23 > v24)
      {
        cstdlib_memcpy(v20, (*(a1 + 32) + v24), v25);
      }

      *v19++ = v20;
      if (v21)
      {
        *v21++ = v25;
      }

      v23 += 2;
      v26 = &v20[v25];
      *v26 = 0;
      v20 = v26 + 1;
      v22 += 2;
    }

    while (v22 < v12);
    goto LABEL_30;
  }

  return result;
}

uint64_t pcre2_substring_list_free_8(uint64_t result)
{
  if (result)
  {
    return (*(result - 16))(result - 24, *(result - 8));
  }

  return result;
}

uint64_t _pcre2_valid_utf_8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    v4 = a2 - 1;
    if ((*v3 & 0x80000000) == 0)
    {
      --a2;
      v5 = v3;
      goto LABEL_5;
    }

    v6 = *v3;
    if (v6 <= 0xBF)
    {
      *a3 = v3 - a1;
      return 4294967274;
    }

    if (v6 >= 0xFE)
    {
      *a3 = v3 - a1;
      return 4294967273;
    }

    v7 = _pcre2_utf8_table4[*v3 & 0x3F];
    a2 = v4 - v7;
    if (v4 < v7)
    {
      *a3 = v3 - a1;
      v8 = ~v4 + v7;
      if (v8 < 5)
      {
        return (-3 - v8);
      }
    }

    v5 = (v3 + 1);
    v9 = v3[1];
    if ((v9 & 0xC0) != 0x80)
    {
      *a3 = v5 + ~a1;
      return 4294967288;
    }

    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        if ((v6 & 0x3E) == 0)
        {
          *a3 = v5 + ~a1;
          return 4294967279;
        }

        goto LABEL_5;
      }

      if (v7 != 2)
      {
        goto LABEL_34;
      }

      v5 = (v3 + 2);
      if ((v3[2] & 0xC0) != 0x80)
      {
        v14 = v5 - a1;
LABEL_57:
        v15 = v14 - 2;
LABEL_59:
        *a3 = v15;
        return 4294967287;
      }

      if (v6 == 224 && (v9 & 0x20) == 0)
      {
        *a3 = v3 - a1;
        return 4294967278;
      }

      if (v6 == 237 && v9 >= 0xA0)
      {
        *a3 = v3 - a1;
        return 4294967280;
      }

      goto LABEL_5;
    }

    if (v7 != 3)
    {
      break;
    }

    if ((v3[2] & 0xC0) != 0x80)
    {
      v15 = v3 - a1;
      goto LABEL_59;
    }

    v5 = (v3 + 3);
    if ((v3[3] & 0xC0) != 0x80)
    {
      v16 = v5 - a1;
LABEL_64:
      *a3 = v16 - 3;
      return 4294967286;
    }

    if (v6 == 240 && (v9 & 0x30) == 0)
    {
      *a3 = v3 - a1;
      return 4294967277;
    }

    if (v6 > 0xF4 || v6 == 244 && v9 >= 0x90)
    {
      *a3 = v3 - a1;
      return 4294967281;
    }

LABEL_5:
    v3 = (v5 + 1);
    if (!a2)
    {
      return 0;
    }
  }

  if (v7 == 4)
  {
    v10 = v3 + 2;
    if ((v3[2] & 0xC0) == 0x80)
    {
      v11 = v3 + 3;
      if ((v3[3] & 0xC0) == 0x80)
      {
        v13 = v3[4];
        v12 = v3 + 4;
        if ((v13 & 0xC0) == 0x80)
        {
          if (v6 != 248 || (v9 & 0x38) != 0)
          {
            *a3 = (v12 - a1 - 4);
            return 4294967283;
          }

          else
          {
            *a3 = v12 - a1 - 4;
            return 4294967276;
          }
        }

        v18 = v12 - a1;
LABEL_67:
        *a3 = v18 - 4;
        return 4294967285;
      }

LABEL_63:
      v16 = v11 - a1;
      goto LABEL_64;
    }

LABEL_55:
    v14 = v10 - a1;
    goto LABEL_57;
  }

  if (v7 != 5)
  {
LABEL_34:
    if (v7 >= 4)
    {
      goto LABEL_35;
    }

    goto LABEL_5;
  }

  v10 = v3 + 2;
  if ((v3[2] & 0xC0) != 0x80)
  {
    goto LABEL_55;
  }

  v11 = v3 + 3;
  if ((v3[3] & 0xC0) != 0x80)
  {
    goto LABEL_63;
  }

  if ((v3[4] & 0xC0) != 0x80)
  {
    v18 = v3 + 4 - a1;
    goto LABEL_67;
  }

  LODWORD(v5) = v3 + 5;
  if ((v3[5] & 0xC0) == 0x80)
  {
    if (v6 != 252 || (v9 & 0x3C) != 0)
    {
LABEL_35:
      *a3 = (v5 - a1 - v7);
      return 4294967282;
    }

    *a3 = v3 - a1;
    return 4294967275;
  }

  else
  {
    *a3 = v3 - a1;
    return 4294967284;
  }
}

BOOL _pcre2_xclass_8(int a1, _BYTE *a2)
{
  if (a1 > 0xFF)
  {
LABEL_8:
    if ((*a2 & 2) != 0)
    {
      v3 = a2 + 33;
    }

    else
    {
      v3 = a2 + 1;
    }

    v4 = a1 + 127;
    if (a1 >= 0)
    {
      v4 = a1;
    }

    v5 = v4 >> 7;
    v6 = a1 - (v4 & 0xFFFFFF80);
    v7 = a1 - 8298;
    v8 = a1 - 8232;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = *v3;
          if (v9 != 1)
          {
            break;
          }

          v16 = v3 + 2;
          v17 = v3[1];
          if (v17 >= 0xC0)
          {
            if ((v17 & 0x20) != 0)
            {
              v21 = *v16 & 0x3F;
              if ((v17 & 0x10) != 0)
              {
                if ((v17 & 8) != 0)
                {
                  v37 = v3[3] & 0x3F;
                  v38 = v3[4] & 0x3F;
                  v39 = v3[5] & 0x3F;
                  if ((v17 & 4) != 0)
                  {
                    v17 = ((v17 & 1) << 30) | (v21 << 24) | (v37 << 18) | (v38 << 12) | (v39 << 6) | v3[6] & 0x3F;
                    v16 = v3 + 7;
                  }

                  else
                  {
                    v17 = ((v17 & 3) << 24) | (v21 << 18) | (v37 << 12) | (v38 << 6) | v39;
                    v16 = v3 + 6;
                  }
                }

                else
                {
                  v17 = ((v17 & 7) << 18) | (v21 << 12) | ((v3[3] & 0x3F) << 6) | v3[4] & 0x3F;
                  v16 = v3 + 5;
                }
              }

              else
              {
                v17 = ((v17 & 0xF) << 12) | (v21 << 6) | v3[3] & 0x3F;
                v16 = v3 + 4;
              }
            }

            else
            {
              v16 = v3 + 3;
              v17 = v3[2] & 0x3F | ((v17 & 0x1F) << 6);
            }
          }

          v3 = v16;
          if (v17 == a1)
          {
            return !(*a2 & 1);
          }
        }

        if (v9 != 2)
        {
          break;
        }

        v14 = v3 + 2;
        v15 = v3[1];
        if (v15 >= 0xC0)
        {
          if ((v15 & 0x20) != 0)
          {
            v20 = *v14 & 0x3F;
            if ((v15 & 0x10) != 0)
            {
              if ((v15 & 8) != 0)
              {
                v34 = v3[3] & 0x3F;
                v35 = v3[4] & 0x3F;
                v36 = v3[5] & 0x3F;
                if ((v15 & 4) != 0)
                {
                  v15 = ((v15 & 1) << 30) | (v20 << 24) | (v34 << 18) | (v35 << 12) | (v36 << 6) | v3[6] & 0x3F;
                  v14 = v3 + 7;
                }

                else
                {
                  v15 = ((v15 & 3) << 24) | (v20 << 18) | (v34 << 12) | (v35 << 6) | v36;
                  v14 = v3 + 6;
                }
              }

              else
              {
                v15 = ((v15 & 7) << 18) | (v20 << 12) | ((v3[3] & 0x3F) << 6) | v3[4] & 0x3F;
                v14 = v3 + 5;
              }
            }

            else
            {
              v15 = ((v15 & 0xF) << 12) | (v20 << 6) | v3[3] & 0x3F;
              v14 = v3 + 4;
            }
          }

          else
          {
            v14 = v3 + 3;
            v15 = v3[2] & 0x3F | ((v15 & 0x1F) << 6);
          }
        }

        v3 = v14 + 1;
        v40 = *v14;
        if (v40 >= 0xC0)
        {
          if ((v40 & 0x20) != 0)
          {
            v41 = *v3 & 0x3F;
            if ((v40 & 0x10) != 0)
            {
              if ((v40 & 8) != 0)
              {
                v42 = v14[2] & 0x3F;
                v43 = v14[3] & 0x3F;
                v44 = v14[4] & 0x3F;
                if ((v40 & 4) != 0)
                {
                  v40 = ((v40 & 1) << 30) | (v41 << 24) | (v42 << 18) | (v43 << 12) | (v44 << 6) | v14[5] & 0x3F;
                  v3 = v14 + 6;
                }

                else
                {
                  v40 = ((v40 & 3) << 24) | (v41 << 18) | (v42 << 12) | (v43 << 6) | v44;
                  v3 = v14 + 5;
                }
              }

              else
              {
                v40 = ((v40 & 7) << 18) | (v41 << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
                v3 = v14 + 4;
              }
            }

            else
            {
              v40 = ((v40 & 0xF) << 12) | (v41 << 6) | v14[2] & 0x3F;
              v3 = v14 + 3;
            }
          }

          else
          {
            v3 = v14 + 2;
            v40 = v14[1] & 0x3F | ((v40 & 0x1F) << 6);
          }
        }

        if (v15 <= a1 && v40 >= a1)
        {
          return !(*a2 & 1);
        }
      }

      if (!*v3)
      {
        return *a2 & 1;
      }

      v2 = 0;
      v10 = &_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v6 + (_pcre2_ucd_stage1_8[v5] << 7)]];
      v11 = v9 == 3;
      v12 = v3[1];
      if (v12 <= 5)
      {
        if (v3[1] > 2u)
        {
          if (v12 == 3)
          {
            v18 = v9 == 3;
            v28 = v3[2];
            v29 = v10[1];
LABEL_83:
            v19 = v28 == v29;
            goto LABEL_84;
          }

          if (v12 == 4)
          {
            v18 = v9 == 3;
            v28 = v3[2];
            v29 = *v10;
            goto LABEL_83;
          }

          if (v12 != 5)
          {
            return v2;
          }

          v18 = v9 == 3;
          v19 = (_pcre2_ucp_gentype_8[v10[1]] & 0xFFFFFFFD) == 1;
        }

        else
        {
          if (!v3[1])
          {
            goto LABEL_96;
          }

          if (v12 == 1)
          {
            v31 = v10[1];
            if (v31 != 5 && v31 != 9)
            {
              v13 = v31 == 8;
              goto LABEL_103;
            }

LABEL_102:
            v13 = 1;
LABEL_103:
            if (v13 == v11)
            {
              return !(*a2 & 1);
            }

            goto LABEL_104;
          }

          v18 = v9 == 3;
          v19 = _pcre2_ucp_gentype_8[v10[1]] == v3[2];
        }
      }

      else
      {
        if (v3[1] > 0xAu)
        {
          switch(v12)
          {
            case 0xBu:
              v27 = _pcre2_ucp_gentype_8[v10[1]];
              if (v27 != 6)
              {
                if (v27)
                {
                  goto LABEL_102;
                }

                if (v10[1] == 1)
                {
                  v13 = 0;
                  if (a1 != 1564 && a1 != 6158)
                  {
                    v13 = v7 < 0xFFFFFFFC;
                  }

                  goto LABEL_103;
                }
              }

              break;
            case 0xCu:
              v30 = v10[1];
              if ((v30 - 27) >= 2)
              {
                if (_pcre2_ucp_gentype_8[v10[1]])
                {
                  goto LABEL_102;
                }

                v13 = a1 != 1564 && v30 == 1 && v7 < 0xFFFFFFFC;
                goto LABEL_103;
              }

              break;
            case 0xDu:
              v22 = v9 == 3;
              v23 = _pcre2_ucp_gentype_8[v10[1]];
              v26 = (a1 > 0x7F || v23 != 5) && v23 != 4;
LABEL_99:
              if (v26 != v22)
              {
                return !(*a2 & 1);
              }

              goto LABEL_104;
            default:
              return v2;
          }

          v13 = 0;
          goto LABEL_103;
        }

        if (v12 - 6 >= 2)
        {
          if (v12 != 8)
          {
            if (v12 != 10)
            {
              return v2;
            }

            if (a1 > 0x9F)
            {
              v22 = v9 == 3;
              v26 = (a1 & 0xFFFFF800) == 55296;
              goto LABEL_99;
            }

            v13 = 1;
            if (a1 != 36 && a1 != 64)
            {
              v13 = a1 == 96;
            }

            goto LABEL_103;
          }

          if ((_pcre2_ucp_gentype_8[v10[1]] | 2) != 3)
          {
            v13 = a1 == 95;
            goto LABEL_103;
          }

          goto LABEL_102;
        }

        if (a1 < 0x2000)
        {
          if (a1 > 132)
          {
            if (a1 > 5759)
            {
              if (a1 == 5760 || a1 == 6158)
              {
                goto LABEL_96;
              }
            }

            else if (a1 == 133 || a1 == 160)
            {
              goto LABEL_96;
            }
          }

          else if (a1 <= 0x20 && ((1 << a1) & 0x100003E00) != 0)
          {
            goto LABEL_96;
          }
        }

        else if ((a1 - 0x2000) < 0xB || v8 <= 0x37 && ((1 << v8) & 0x80000000000083) != 0 || a1 == 12288)
        {
LABEL_96:
          if (v9 == 3)
          {
            return !(*a2 & 1);
          }

          goto LABEL_104;
        }

        v18 = v9 == 3;
        v19 = _pcre2_ucp_gentype_8[v10[1]] == 6;
      }

LABEL_84:
      v33 = !v19;
      if (v18 != v33)
      {
        return !(*a2 & 1);
      }

LABEL_104:
      v3 += 3;
    }
  }

  if ((*a2 & 4) != 0)
  {
    if (*a2 & 2) != 0 && ((a2[(a1 >> 3) + 1] >> (a1 & 7)))
    {
      return !(*a2 & 1);
    }

    goto LABEL_8;
  }

  v2 = *a2 & 1;
  if ((*a2 & 2) != 0)
  {
    return (a2[(a1 >> 3) + 1] >> (a1 & 7)) & 1;
  }

  return v2;
}

uint64_t luattt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2711625729;
  }

  result = 0;
  *a2 = &ILuattt;
  return result;
}

uint64_t luattt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2711625735;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v21 = 0;
    v22 = 0;
    if ((InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v22 + 8), 1, 144);
      if (!v10)
      {
        return 2711625738;
      }

      v11 = v10;
      v10[2] = 0;
      v12 = v10 + 2;
      *v10 = a3;
      v10[1] = a4;
      v10[8] = 0;
      v13 = v10 + 8;
      Object = objc_GetObject(*(v22 + 48), "SYNTHSTREAM", &v21);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      v11[9] = *(v21 + 8);
      v15 = *(v22 + 8);
      v19 = xmmword_26ED34750;
      v20 = 0;
      if (vector_ObjOpen(v15, &v19, 1, v13))
      {
        Allocator = ooc_utils_createAllocator((v11 + 3), *v11, v11[1]);
        Object = LH_ERROR_to_VERROR(Allocator);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_10;
        }

        v17 = cstdlib_strlen("TTT_script_set = {}\n\n-- Load a resource\n-- argument: the resource name\n-- return: the identifier\nfunction TTT_resource_load(name)\n    local id = 0\n    for _, info in ipairs(TTT_script_set) do\n        if id < info.id then\n            id = info.id\n        end\n    end\n    id = id + 1\n    local info = {}\n    info.id = id\n    info.func = _G[name]\n    table.insert(TTT_script_set, 1, info)\n    return tostring(id)\nend\n\n-- Unload a resource\n-- argument: the identifier\n-- return: the identifier or an empty string if not present\nfunction TTT_resource_unload(id_str)\n    local id = tonumber(id_str)\n    for pos, info in ipairs(TTT_script_set) do\n        if info.id == id then\n            table.remove(TTT_script_set, pos)\n            return id_str\n        end\n    end\n    return \nend\n\n-- Call the rewrite process of all resources\n-- argument: input text\n-- return: output text\nfunction TTT_rewrite_process(text)\n    if Aligner ~= nil then\n        Aligner.extendedreferences = (yes == Parameters.get(extendedreferences))\n    end\n    local buffer = text\n    for _, info in ipairs(TTT_script_set) do\n        buffer = info.func(buffer)\n    end\n    return buffer\nend\n");
        v5 = 2711626240;
        if ((luavmldoutil_initialize_lua_vm_from_buffer(*v11, v11[1], (v11 + 3), "TTT_rewrite_process", "LUATTT", v12, "TTT_script_set = {}\n\n-- Load a resource\n-- argument: the resource name\n-- return: the identifier\nfunction TTT_resource_load(name)\n    local id = 0\n    for _, info in ipairs(TTT_script_set) do\n        if id < info.id then\n            id = info.id\n        end\n    end\n    id = id + 1\n    local info = {}\n    info.id = id\n    info.func = _G[name]\n    table.insert(TTT_script_set, 1, info)\n    return tostring(id)\nend\n\n-- Unload a resource\n-- argument: the identifier\n-- return: the identifier or an empty string if not present\nfunction TTT_resource_unload(id_str)\n    local id = tonumber(id_str)\n    for pos, info in ipairs(TTT_script_set) do\n        if info.id == id then\n            table.remove(TTT_script_set, pos)\n            return id_str\n        end\n    end\n    return \nend\n\n-- Call the rewrite process of all resources\n-- argument: input text\n-- return: output text\nfunction TTT_rewrite_process(text)\n    if Aligner ~= nil then\n        Aligner.extendedreferences = (yes == Parameters.get(extendedreferences))\n    end\n    local buffer = text\n    for _, info in ipairs(TTT_script_set) do\n        buffer = info.func(buffer)\n    end\n    return buffer\nend\n", v17) & 0x80000000) != 0 || !*v12)
        {
          goto LABEL_11;
        }

        Object = paramc_ParamSetInt(*(v22 + 40), "enableluattt", 1u);
        if ((Object & 0x80000000) != 0)
        {
LABEL_10:
          v5 = Object;
LABEL_11:
          luattt_pObjClose(v11);
          return v5;
        }
      }

      else
      {
        v11 = 0;
      }

      v5 = 0;
      *a5 = v11;
      *(a5 + 2) = 1077;
    }
  }

  return v5;
}

uint64_t luattt_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = luattt_UnloadAllScripts(a1);
    if ((result & 0x80000000) == 0)
    {
      luattt_ProcessEnd(a1, a2);

      return luattt_pObjClose(a1);
    }
  }

  return result;
}

uint64_t luattt_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {

    return luattt_UnloadAllScripts(a1);
  }

  return result;
}

uint64_t luattt_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *a3 = &luattt_ResourceTypes_SZ_LUATTT_CONTENT_TYPES;
  }

  return result;
}

uint64_t luattt_ResourceLoad(uint64_t a1, int a2, char *a3, const char *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v7 = 2711625735;
  v31 = 0;
  if (a3 && a7)
  {
    v9 = a6;
    v10 = a5;
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

    v15 = safeh_HandleCheck(a1, a2, 1077, 144);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v29 = 0;
    v30 = 0;
    *a7 = 0;
    *(a7 + 8) = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v34) & 0x80000000) == 0)
    {
      v35 = 0;
      if (a4 && *a4 && vector_GetElemAt(*(a1 + 64), 0, &v35))
      {
        v16 = 1;
        do
        {
          v17 = *(v35 + 8);
          if (v17)
          {
            if (!cstdlib_strcmp(v17, a4))
            {
              return 2711625752;
            }
          }
        }

        while (vector_GetElemAt(*(a1 + 64), v16++, &v35));
      }

      v19 = !v14;
      if (!v10)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = luattt_DataOpen(v34, a4, &v33, a3, &v32, &v31);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v10 = v32;
        v9 = v31;
      }

      else
      {
        v32 = v10;
        v31 = v9;
      }

      ScriptFromBuffer = LuaVMLDO_LoadScriptFromBuffer(*(a1 + 16), v10, v9);
      v20 = LH_ERROR_to_VERROR(ScriptFromBuffer);
      if ((v20 & 0x80000000) == 0)
      {
        v22 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_load", "TTT_script", 4u, &v29);
        v23 = LH_ERROR_to_VERROR(v22);
        v27 = v23;
        if ((v23 & 0x80000000) != 0)
        {
          v7 = v23;
        }

        else
        {
          v30 = a4;
          log_OutText(*(v34 + 32), "LUATTT", 5, 0, "Loaded resource %s", v24, v25, v26, &v29);
          if (vector_Add(*(a1 + 64), &v29) == 1)
          {
            v7 = v27;
          }

          else
          {
            v7 = 2711625738;
          }

          *a7 = v30;
          *(a7 + 8) = 1108;
        }

        goto LABEL_34;
      }

LABEL_32:
      v7 = v20;
LABEL_34:
      if (v32)
      {
        brk_DataUnmap(*(v34 + 24), v33, v32);
        v32 = 0;
      }

      if (v33)
      {
        brk_DataClose(*(v34 + 24), v33);
      }
    }
  }

  return v7;
}

uint64_t luattt_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v15 = 0;
  v16 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2711626765;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v16) & 0x80000000) != 0)
  {
    return 2711625735;
  }

  v7 = safeh_HandleCheck(a3, a4, 1108, 16);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (vector_GetElemAt(*(a1 + 64), 0, &v15))
  {
    v9 = 0;
    while (*(v15 + 1) != a3)
    {
      if (!vector_GetElemAt(*(a1 + 64), ++v9, &v15))
      {
        return v8;
      }
    }

    v11 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v15, 4u, v15);
    v8 = LH_ERROR_to_VERROR(v11);
    if ((v8 & 0x80000000) == 0)
    {
      log_OutText(*(v16 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v12, v13, v14, v15);
      vector_Remove(*(a1 + 64), v9);
    }
  }

  return v8;
}

uint64_t luattt_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v15 = 0;
  v14 = 0;
  Int = 2711625735;
  if ((safeh_HandleCheck(a1, a2, 1077, 144) & 0x80000000) != 0)
  {
    return 2711625736;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v15) & 0x80000000) == 0)
  {
    v9 = 0;
    a1[14] = a3;
    a1[15] = a4;
    do
    {
      v10 = (*(a1[9] + 8))(a3, a4, 538, luattt_ProcessStart_szInput[v9], 0, 0, a1 + 16);
      if ((v10 & 0x80000000) == 0)
      {
        break;
      }
    }

    while (v9++ != 6);
    if (v10 < 0)
    {
      a1[16] = 0;
    }

    Int = paramc_ParamGetInt(*(v15 + 40), "enableluattt", &v14);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (v14 == 1)
    {
      v12 = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 0, a1 + 10);
      if ((v12 & 0x80000000) != 0)
      {
        Int = v12;
LABEL_17:
        luattt_ProcessEnd(a1, a2);
        return Int;
      }

      Int = (*(a1[9] + 8))(a3, a4, 538, "text/plain;charset=utf-8", 0, 1, a1 + 12);
      if ((Int & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[10] = 0;
      a1[12] = 0;
    }
  }

  return Int;
}

uint64_t luattt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v7 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v7 & 0x80000000) == 0)
  {
    __s = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v22) & 0x80000000) != 0)
    {
      return 2711625735;
    }

    Int = paramc_ParamGetInt(*(v22 + 40), "enableluattt", &v17);
    if (Int < 0)
    {
      goto LABEL_19;
    }

    if (!*(a1 + 80))
    {
      v9 = 0;
LABEL_27:
      v10 = 1;
LABEL_28:
      *a5 = v10;
      return v9;
    }

    v9 = 0;
    v10 = 1;
    if (!*(a1 + 96) || !v17)
    {
      goto LABEL_28;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 72) + 144))(*(a1 + 80), *(a1 + 88), &v18 + 4, &v18);
    if ((v7 & 0x80000000) == 0)
    {
      v10 = v18;
      if (!v18)
      {
        v9 = 0;
        goto LABEL_28;
      }

      v7 = (*(*(a1 + 72) + 88))(*(a1 + 80), *(a1 + 88), &v21, &v18 + 4);
      if ((v7 & 0x80000000) == 0)
      {
        __s = v21;
        v11 = HIDWORD(v18);
        if (vector_GetSize(*(a1 + 64)))
        {
          v12 = LuaVMLDO_RunFunctionReturningPointerToString(*(a1 + 16), "TTT_rewrite_process", v21, &__s);
          Int = LH_ERROR_to_VERROR(v12);
          if (Int < 0)
          {
            goto LABEL_19;
          }

          v11 = cstdlib_strlen(__s);
        }

        if (!v11 || (Int = (*(*(a1 + 72) + 112))(*(a1 + 96), *(a1 + 104), &v19, v11), (Int & 0x80000000) == 0) && (cstdlib_memcpy(v19, __s, v11), Int = (*(*(a1 + 72) + 120))(*(a1 + 96), *(a1 + 104), v11), (Int & 0x80000000) == 0))
        {
          LODWORD(v9) = (*(*(a1 + 72) + 96))(*(a1 + 80), *(a1 + 88), HIDWORD(v18));
          if ((v9 & 0x80000000) != 0 || !vector_GetSize(*(a1 + 64)))
          {
LABEL_20:
            v14 = (*(*(a1 + 72) + 72))(*(a1 + 96), *(a1 + 104));
            if (v14 >= 0)
            {
              v9 = v9;
            }

            else
            {
              v9 = v14;
            }

            *(a1 + 96) = safeh_GetNullHandle();
            *(a1 + 104) = v15;
            goto LABEL_27;
          }

          v13 = LuaVMLDO_ReleasePointerToString(*(a1 + 16));
          Int = LH_ERROR_to_VERROR(v13);
        }

LABEL_19:
        LODWORD(v9) = Int;
        goto LABEL_20;
      }
    }
  }

  return v7;
}

uint64_t luattt_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1077, 144);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[16], a1[17], NullHandle, v5))
    {
      v6 = (*(a1[9] + 72))(a1[16], a1[17]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[16] = safeh_GetNullHandle();
    a1[17] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[10], a1[11], v8, v9))
    {
      v10 = (*(a1[9] + 72))(a1[10], a1[11]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[10] = safeh_GetNullHandle();
    a1[11] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[12], a1[13], v12, v13))
    {
      v14 = (*(a1[9] + 72))(a1[12], a1[13]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[12] = safeh_GetNullHandle();
    a1[13] = v15;
  }

  return v3;
}

uint64_t luattt_pObjClose(uint64_t a1)
{
  v1 = 2711625735;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 72))
    {
      objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    }

    if (*(a1 + 16))
    {
      luavmldoutil_destroy_lua_vm(a1 + 24, (a1 + 16));
    }

    OOCAllocator_Des();
    v3 = *(a1 + 64);
    if (v3)
    {
      vector_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t luattt_UnloadAllScripts(uint64_t a1)
{
  i = 2711625735;
  v12 = 0;
  v13 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
    if ((inited & 0x80000000) == 0)
    {
      v4 = inited;
      Size = vector_GetSize(*(a1 + 64));
      if (Size)
      {
        v6 = Size - 1;
        for (i = v4; vector_GetElemAt(*(a1 + 64), v6, &v12); --v6)
        {
          v7 = LuaVMLDO_RunFunctionReturningString(*(a1 + 16), "TTT_resource_unload", v12, 4u, v12);
          i = LH_ERROR_to_VERROR(v7);
          if ((i & 0x80000000) != 0)
          {
            break;
          }

          log_OutText(*(v13 + 32), "LUATTT", 5, 0, "Unloaded resource %s", v8, v9, v10, v12);
          vector_Remove(*(a1 + 64), v6);
          if (!v6)
          {
            break;
          }
        }
      }

      else
      {
        return v4;
      }
    }
  }

  return i;
}

uint64_t luattt_DataOpen(uint64_t a1, const char *a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  bzero(v17, 0x400uLL);
  v12 = brk_DataOpenEx(*(a1 + 24), a2, 1, a3);
  if (cstdlib_strstr(a4, ";loader=broker") && (v12 & 0x80000000) != 0)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &v16);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v14 = brokeraux_ComposeBrokerString(a1, a2, 0, 1, v16, 0, 0, v17, 0x400uLL);
    if (v14 < 0)
    {
      return v14 | 0xA1A02000;
    }

    v12 = brk_DataOpenEx(*(a1 + 24), v17, 0, a3);
  }

  if ((v12 & 0x80000000) == 0)
  {
    return brk_DataMapEx(*(a1 + 24), *a3, 0, a6, a5);
  }

  return v12;
}

uint64_t lua_nn_diacritizer_create(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2712674311;
  if (!a4 || *a4)
  {
    return v4;
  }

  v10 = heap_Alloc(*(a3 + 8), 72);
  *a4 = v10;
  if (!v10)
  {
    return 2712674314;
  }

  Allocator = ooc_utils_createAllocator(v10 + 24, a1, a2);
  v12 = LH_ERROR_to_VERROR(Allocator);
  if ((v12 & 0x80000000) == 0)
  {
    v16 = *a4;
    *v16 = a1;
    v16[1] = a2;
    *(*a4 + 16) = a3;
    *(*a4 + 64) = 0;
    v17 = *a4;
    v29 = 0;
    log_OutText(*(*(v17 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Entering lua_nn_diacritizer_loc_AddListener for '%s'", v13, v14, v15, "nn_diacritizer_mode");
    Str = paramc_ParamGetStr(*(*(v17 + 16) + 40), "nn_diacritizer_mode", &v29);
    if ((Str & 0x80000000) == 0)
    {
LABEL_7:
      v22 = *(*(v17 + 16) + 40);
      v28[0] = v17;
      v28[1] = lua_nn_diacritizer_loc_ParamCheckChange;
      v28[2] = lua_nn_diacritizer_loc_ParamLearnChange;
      v4 = paramc_ListenerAdd(v22, "nn_diacritizer_mode", v28);
      goto LABEL_13;
    }

    v4 = Str;
    if ((Str & 0x1FFF) == 0x14)
    {
      log_OutText(*(*(v17 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Parameter '%s' not found: registering it with default value '%s'", v19, v20, v21, "nn_diacritizer_mode");
      v23 = paramc_ParamSetStr(*(*(v17 + 16) + 40), "nn_diacritizer_mode", "optim_latency");
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v4 = v23;
      log_OutText(*(*(v17 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Failed to register parameter '%s'", v24, v25, v26, "nn_diacritizer_mode");
    }

LABEL_13:
    log_OutText(*(*(v17 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Leaving lua_nn_diacritizer_loc_AddListener", v19, v20, v21, v27);
    if ((v4 & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_14;
  }

  v4 = v12;
LABEL_14:
  if (*a4)
  {
    heap_Free(*(a3 + 8), *a4);
    *a4 = 0;
  }

  return v4;
}

uint64_t lua_nn_diacritizer_initialize(uint64_t a1)
{
  v13 = 0;
  luavmldoutil_destroy_lua_vm(a1 + 24, (a1 + 64));
  v2 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", &v13, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = luavmldoutil_initialize_lua_vm(*a1, *(a1 + 8), a1 + 24, "runDiacritizer", "FE_LUA_NN_DIACRITIZER", (a1 + 64), 0);
    if ((v3 & 0x80000000) != 0)
    {
      v11 = v3;
      log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 5, 0, "LUA NN DIACRITIZER Lua function [%s] is not available.", v8, v9, v10, "runDiacritizer");
      return v11;
    }

    return lua_nn_diacritizer_loc_RunInitConfigLuaFunction(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  return v2;
}

uint64_t lua_nn_diacritizer_loc_RunInitConfigLuaFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x277D85DE8];
  log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Entering lua_nn_diacritizer_loc_RunInitConfigLuaFunction", a6, a7, a8, 0);
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "nn_diacritizer_mode", &v16) & 0x80000000) != 0)
  {
    v9 = "optim_latency";
    v16 = "optim_latency";
  }

  else
  {
    v9 = v16;
  }

  v10 = LuaVMLDO_RunFunctionReturningString(*(a1 + 64), "configDiacritizer", v9, 0xAu, v17);
  v11 = LH_ERROR_to_VERROR(v10);
  log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Leaving lua_nn_diacritizer_loc_RunInitConfigLuaFunction", v12, v13, v14, v16);
  return v11;
}

uint64_t lua_nn_diacritizer_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Entering lua_nn_diacritizer_loc_RemoveListeners", a6, a7, a8, v14);
    v9 = *(*(a1 + 16) + 40);
    *&v16 = a1;
    *(&v16 + 1) = lua_nn_diacritizer_loc_ParamCheckChange;
    v17 = lua_nn_diacritizer_loc_ParamLearnChange;
    paramc_ListenerRemove(v9, "nn_diacritizer_mode", &v16);
    log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Leaving lua_nn_diacritizer_loc_RemoveListeners", v10, v11, v12, v15);
    luavmldoutil_destroy_lua_vm(a1 + 24, (a1 + 64));
    OOCAllocator_Des();
    heap_Free(*(*(a1 + 16) + 8), a1);
  }

  return 0;
}

uint64_t lua_nn_diacritizer_process(uint64_t a1, uint64_t *a2, int *a3, unsigned int a4)
{
  __s = 0;
  v6 = LuaVMLDO_RunFunctionWithStringAndMarkerArguments(*(a1 + 64), "runDiacritizer", *a2, &__s, a3, a4);
  result = LH_ERROR_to_VERROR(v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = cstdlib_strlen(*a2);
    v9 = cstdlib_strlen(__s);
    v10 = *a2;
    if (v8 < v9)
    {
      v11 = *(*(a1 + 16) + 8);
      v12 = cstdlib_strlen(__s);
      v13 = heap_Realloc(v11, v10, v12 + 1);
      if (!v13)
      {
        return 2712674314;
      }

      v10 = v13;
      *a2 = v13;
    }

    cstdlib_strcpy(v10, __s);
    v14 = LuaVMLDO_ReleasePointerToString(*(a1 + 64));
    return LH_ERROR_to_VERROR(v14);
  }

  return result;
}

uint64_t lua_nn_diacritizer_loc_ParamLearnChange(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Entering lua_nn_diacritizer_loc_ParamLearnChange", a6, a7, a8, v22);
  inited = 0;
  if (!cstdlib_strcmp(a2, "nn_diacritizer_mode"))
  {
    log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Parameter '%s' changed, new value: '%s'", v10, v11, v12, a2);
    inited = lua_nn_diacritizer_loc_RunInitConfigLuaFunction(a1, v14, v15, v16, v17, v18, v19, v20);
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_LUA_NN_DIACRITIZER", 4, 0, "Leaving lua_nn_diacritizer_loc_ParamLearnChange", v10, v11, v12, v23);
  return inited;
}

uint64_t araparser_loc_getStandardizeRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v22 = 0;
  v21 = -1;
  v5 = (*(*(*(a1 + 40) + 24) + 96))(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), "fecfg", a2, &v22, &v21, &__c);
  if ((v5 & 0x80000000) == 0 && v21)
  {
    v6 = *v22;
    v7 = cstdlib_strchr(*v22, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      for (i = 0; ; ++i)
      {
        v9 = cstdlib_strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = *(*(a1 + 16) + 8);
        v12 = cstdlib_strlen(v6);
        v13 = heap_Calloc(v11, 1, (v12 + 1));
        if (!v13)
        {
          break;
        }

        v18 = v13;
        cstdlib_strcpy(v13, v6);
        if (i == 1)
        {
          *(a3 + 8) = v18;
        }

        else if (i)
        {
          heap_Free(*(*(a1 + 16) + 8), v18);
        }

        else
        {
          *a3 = v18;
          *(a3 + 16) = cstdlib_strlen(v18);
        }

        v6 = v10 + 1;
        if (!v10)
        {
          return v5;
        }
      }

      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v14, v15, v16, v17, v20);
      return 2356158474;
    }
  }

  return v5;
}

uint64_t fe_ara_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v5 = 2356158471;
  v32 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v35 + 48), "SYNTHSTREAM", &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v35 + 48), "FE_DEPES", &v32);
  v11 = *(v35 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v28 = "SYNTHSTREAM";
LABEL_15:
    objc_ReleaseObject(v11, v28);
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v33);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(*(v35 + 48), "SYNTHSTREAM");
    v11 = *(v35 + 48);
    v28 = "FE_DEPES";
    goto LABEL_15;
  }

  v13 = heap_Calloc(*(v35 + 8), 960, 1);
  if (!v13)
  {
    log_OutPublic(*(v35 + 32), "FE_ARAPARSER", 54000, 0, v14, v15, v16, v17, v30[0]);
    objc_ReleaseObject(*(v35 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v35 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(v35 + 48), "FE_DEPES");
    return 2356158474;
  }

  v18 = v13;
  *(v13 + 32) = 0;
  inited = posparser_Open(v35, (v13 + 40));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v18 + 56) = 0;
  *(v18 + 48) = 0;
  v19 = *(v35 + 8);
  v20 = *(v18 + 40);
  v30[0] = xmmword_287EEF280;
  v30[1] = *off_287EEF290;
  v31 = off_287EEF2A0;
  v21 = ssftmap_ObjOpen(v19, 0, v30, (v20 + 256));
  if ((v21 & 0x80000000) != 0 || (*(v18 + 60) = 0, v21 = lua_nn_diacritizer_create(a3, a4, v35, (v18 + 64)), (v21 & 0x80000000) != 0))
  {
    v5 = v21;
LABEL_19:
    fe_ara_parser_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v22 = v35;
  *v18 = a3;
  *(v18 + 8) = a4;
  v23 = *(v34 + 8);
  *(v18 + 16) = v22;
  *(v18 + 24) = v23;
  v24 = v32;
  v25 = v33;
  v26 = *(v18 + 40);
  *(v26 + 24) = *(v33 + 8);
  *(v26 + 8) = *(v25 + 16);
  v27 = *(v18 + 40);
  *(v27 + 56) = *(v24 + 8);
  *(v27 + 40) = *(v24 + 16);
  *a5 = v18;
  *(a5 + 8) = 85954;
  v5 = fe_ara_parser_ObjReopen(v18, *(a5 + 8));
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  return v5;
}

uint64_t fe_ara_parser_ObjReopen(uint64_t a1, int a2)
{
  __src = 0;
  v3 = safeh_HandleCheck(a1, a2, 85954, 960);
  result = 2356158472;
  if ((v3 & 0x80000000) == 0)
  {
    if (a1)
    {
      if (*(a1 + 60) == 1 || *(a1 + 32) != 1 || (result = ssftmap_Clear(*(*(a1 + 40) + 256)), (result & 0x80000000) == 0) && ((v5 = *(a1 + 40), *(v5 + 232) != 1) || (result = freePosparserIGTrees(*(a1 + 16), (v5 + 216), (v5 + 224)), (result & 0x80000000) == 0)))
      {
        v8 = 0;
        *(a1 + 60) = 0;
        result = (*(*(*(a1 + 40) + 24) + 256))(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), "nn_diacritizer_enable", "no", &v8);
        if ((result & 0x80000000) == 0)
        {
          if (!v8 || LH_stricmp(v8, "yes") && LH_stricmp(v8, "true") && LH_stricmp(v8, "1"))
          {
            if (*(a1 + 60) != 1)
            {
              result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__src);
              if ((result & 0x80000000) == 0)
              {
                cstdlib_strcpy((*(a1 + 40) + 240), __src);
                cstdlib_strcpy((*(a1 + 40) + 243), "pos");
                v6 = *(a1 + 40);
                *(v6 + 232) = 0;
                v6 += 232;
                result = getPosparserIGTreesAndDict(*(a1 + 16), *a1, *(a1 + 8), *(v6 - 224), *(v6 - 216), *(v6 - 208), v6, (v6 - 16), (v6 - 8), (v6 + 4), (v6 + 8), (a1 + 32));
                if ((result & 0x80000000) == 0 && *(a1 + 32) == 1)
                {
                  return posparser_getPosMap(*(a1 + 40));
                }
              }

              return result;
            }
          }

          else
          {
            *(a1 + 60) = 1;
          }

          return lua_nn_diacritizer_initialize(*(a1 + 64));
        }
      }
    }
  }

  return result;
}

uint64_t fe_ara_parser_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 85954, 960);
  if ((result & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (a1)
  {
    v11 = *(a1 + 40);
    if (!v11 || (v12 = *(v11 + 256)) == 0 || (ssftmap_ObjClose(v12) & 0x80000000) == 0)
    {
      if (*(a1 + 32) != 1 || (v13 = *(a1 + 40), *(v13 + 232) != 1) || (freePosparserIGTrees(*(a1 + 16), (v13 + 216), (v13 + 224)) & 0x80000000) == 0)
      {
        lua_nn_diacritizer_destroy(*(a1 + 64), v4, v5, v6, v7, v8, v9, v10);
      }
    }

    objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    posparser_Close(*(a1 + 40));
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_ara_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  *&__c[1] = -1;
  v7 = safeh_HandleCheck(a1, a2, 85954, 960);
  if ((v7 & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (!*(a1 + 32) && !*(a1 + 60))
  {
    return v7;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  synstrmaux_InitStreamOpener(a1 + 72, *(*(a1 + 16) + 32), "FE_ARAPARSER");
  synstrmaux_RegisterInStream((a1 + 72), "text/plain;charset=utf-8", 0, a1 + 896);
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 912);
  synstrmaux_RegisterOutStream((a1 + 72), "text/plain;charset=utf-8", a1 + 928);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", a1 + 944);
  StandardizeRule = synstrmaux_OpenStreams((a1 + 72), *(a1 + 24), a3, a4);
  if ((StandardizeRule & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 60) || !*(a1 + 32))
  {
    return StandardizeRule;
  }

  v9 = posparser_ProcessStart(*(a1 + 40));
  if ((v9 & 0x80000000) != 0)
  {
    StandardizeRule = v9;
    goto LABEL_16;
  }

  *&__c[1] = -1;
  StandardizeRule = (*(*(*(a1 + 40) + 24) + 96))(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), "fecfg", "araparsernumstandardize", &__c[3], &__c[1], __c);
  if ((StandardizeRule & 0x80000000) != 0)
  {
LABEL_16:
    synstrmaux_CloseStreams((a1 + 72), *(a1 + 24));
    return StandardizeRule;
  }

  if (*&__c[1])
  {
    v10 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
    }

    v11 = cstdlib_atoi(**&__c[3]);
    v12 = v11;
    *(a1 + 56) = v11;
  }

  else
  {
    v12 = *(a1 + 56);
  }

  if (v12)
  {
    v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, (24 * v12) | 1);
    *(a1 + 48) = v14;
    if (v14)
    {
      if (!*(a1 + 56))
      {
        return StandardizeRule;
      }

      v19 = 0;
      v20 = 0;
      while (1)
      {
        cstdlib_memset(__b, 0, 0x20uLL);
        cstdlib_strcpy(__b, "araparserstandardize");
        v21 = LH_itoa(v20, v23, 0xAu);
        cstdlib_strcat(v26, v21);
        StandardizeRule = araparser_loc_getStandardizeRule(a1, __b, *(a1 + 48) + v19);
        if ((StandardizeRule & 0x80000000) != 0)
        {
          break;
        }

        ++v20;
        v19 += 24;
        if (v20 >= *(a1 + 56))
        {
          return StandardizeRule;
        }
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v15, v16, v17, v18, v22);
      StandardizeRule = 2356158474;
    }

    goto LABEL_16;
  }

  return StandardizeRule;
}

uint64_t fe_ara_parser_process_legacy(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t *a5, unsigned __int16 *a6)
{
  v189 = 0;
  v188 = 0;
  v187 = 0;
  if (!*(a1 + 32))
  {
    return 0;
  }

  v184 = cstdlib_strlen(*a4);
  log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sentence %s", v10, v11, v12, *a4);
  v185 = a5;
  v186 = a4;
  v193[0] = *a4;
  v192 = 0;
  v191 = *a5;
  v190 = 0;
  v13 = cstdlib_strlen(v193[0]);
  if (!v13)
  {
    goto LABEL_169;
  }

  v14 = 0;
  v15 = v13;
  LODWORD(v16) = v13;
  do
  {
    if (*a6 < 2u)
    {
      goto LABEL_25;
    }

    v17 = v191;
    v18 = 64;
    v19 = 1;
    do
    {
      v20 = v17 + 32 * v19;
      if (*v20 == 21 && (v21 = *(v20 + 24)) != 0 && (v22 = LH_stricmp(v21, "spell"), v17 = v191, !v22) && ((v25 = v191[3], v26 = v191[8 * v19 + 3] - v25, v26 == v14) || v26 == (v14 + 1)))
      {
        v27 = v18;
        v28 = v19;
        do
        {
          if (++v28 >= *a6)
          {
            v31 = v16;
            goto LABEL_23;
          }

          v29 = *(v191 + v27);
          v27 += 32;
        }

        while (v29 != 21);
        v30 = &v191[8 * v28];
        v31 = v16;
        if (*v30 == 21)
        {
          v31 = v30[3] - v25;
        }

LABEL_23:
        v23 = v14 == v31;
        v14 = v31;
      }

      else
      {
        v23 = 1;
      }

      if (*(v17 + 32 * v19 + 12) - *(v17 + 12) > v14)
      {
        break;
      }

      ++v19;
      v24 = !v23;
      v18 += 32;
      if (v19 >= *a6)
      {
        v24 = 1;
      }
    }

    while ((v24 & 1) == 0);
    if (v23)
    {
LABEL_25:
      v32 = v14;
      v33 = &v193[0][v14];
      if (*v33 == 32)
      {
        v34 = v14;
        v35 = v14 + 1;
        if (v35 >= v15)
        {
          goto LABEL_44;
        }

        if (v193[0][v35] != 32)
        {
          goto LABEL_44;
        }

        v36 = *a6;
        if (v36 < 2)
        {
          goto LABEL_44;
        }

        v37 = v191[3];
        v38 = v191 + 11;
        v39 = 2;
        do
        {
          if (*(v38 - 3) == 21)
          {
            v40 = *v38 - v37;
            v42 = v40 != v14 && v40 != (v14 + 1);
          }

          else
          {
            v40 = *v38 - v37;
            v42 = 1;
          }

          if (v40 > v14)
          {
            break;
          }

          v60 = v39 >= v36;
          v43 = !v42;
          ++v39;
          v38 += 8;
          if (v60)
          {
            v43 = 1;
          }
        }

        while ((v43 & 1) == 0);
        if (v42)
        {
LABEL_44:
          v44 = v14;
          if (v14 >= v16)
          {
            goto LABEL_84;
          }

          while (v193[0][v32] == 32)
          {
            if (v16 == ++v32)
            {
              v44 = v16;
              goto LABEL_82;
            }
          }

          v44 = v32;
LABEL_82:
          v34 = v44;
          if (!v14 || v35 != v44)
          {
LABEL_84:
            if ((posparserGrowStr(*(a1 + 40), v193, (v16 + 1), &v192, 0) & 0x80000000) != 0)
            {
              goto LABEL_147;
            }

            cstdlib_memmove(&v193[0][v35], &v193[0][v44], (v15 - v34));
            v67 = v34 - v35;
            v193[0][(v15 - (v34 - v35))] = 0;
            LODWORD(v16) = cstdlib_strlen(v193[0]);
            v68 = *a6;
            v69 = v191;
            if (v68 >= 2)
            {
              v70 = v191[3];
              v71 = v68 - 1;
              v72 = v191 + 11;
              while (1)
              {
                v73 = (*v72 - v70);
                v74 = v73 <= v35 || v73 >= v34;
                v75 = v70 + v35;
                if (!v74)
                {
                  goto LABEL_94;
                }

                if (v73 >= v34)
                {
                  break;
                }

LABEL_95:
                v72 += 8;
                if (!--v71)
                {
                  goto LABEL_96;
                }
              }

              v75 = *v72 - v67;
LABEL_94:
              *v72 = v75;
              goto LABEL_95;
            }

LABEL_96:
            *(v69 + 16) -= v67;
          }

LABEL_106:
          ++v14;
          goto LABEL_107;
        }
      }

      if (!isPunc_0(*(a1 + 40), v33))
      {
        goto LABEL_106;
      }

      v45 = *a6;
      v46 = v14;
      if (v45 < 2)
      {
        v61 = inSMSMode(v14, v191, v45);
        if (!v14)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v47 = v191 + 8;
        v48 = 2;
        for (i = 1; i != v45; ++i)
        {
          v50 = &v191[8 * i];
          if (*v50 == 34)
          {
            v51 = v50[3];
            v52 = v191[3];
            if (v51 - v52 <= v14)
            {
              v53 = v47;
              v54 = v48;
              v55 = v47;
              do
              {
                v57 = *v55;
                v55 += 8;
                v56 = v57;
                if (v57 == 21 || v56 == 3)
                {
                  if (v53[3] - v52 > v14 || v45 == v54)
                  {
LABEL_80:
                    inSMSMode(v14, v191, v45);
                    goto LABEL_106;
                  }
                }

                else if (v45 == v54)
                {
                  goto LABEL_80;
                }

                v60 = v56 == 21 || v54++ >= v45;
                v53 = v55;
              }

              while (!v60);
            }
          }

          ++v48;
          v47 += 8;
        }

        v61 = inSMSMode(v14, v191, v45);
        if (!v14)
        {
          v46 = 0;
          goto LABEL_99;
        }
      }

      v62 = v14 - 1;
      v63 = v193[0][v62];
      if (v63 != 32)
      {
        if (v61)
        {
          if (v61 != 1)
          {
            goto LABEL_99;
          }

          if (isSMSPunc(*(a1 + 40), &v193[0][v62]))
          {
            v61 = 1;
            goto LABEL_99;
          }

          LOBYTE(v63) = v193[0][v62];
        }

        if (!isDigit(v63))
        {
          v78 = v14 + 1;
          if (v78 == v15)
          {
            if (v14 < 2u)
            {
              goto LABEL_99;
            }

            v79 = v193[0];
          }

          else
          {
            if (v78 >= v15)
            {
              goto LABEL_99;
            }

            if (v14 < 2u)
            {
              goto LABEL_99;
            }

            v79 = v193[0];
            if (v193[0][v78] != 32)
            {
              goto LABEL_99;
            }
          }

          v86 = &v79[v14 - 2];
          v87 = cstdlib_strlen("§");
          if (cstdlib_strncmp(v86, "§", v87))
          {
            if ((posparserGrowStr(*(a1 + 40), v193, (v15 + 1), &v192, 0) & 0x80000000) != 0 || (posparserInsertWordMarker(*(a1 + 40), &v191, a6, v14, 1, v193[0], &v190) & 0x80000000) != 0)
            {
LABEL_147:
              v97 = v184;
              goto LABEL_170;
            }

            cstdlib_memmove(&v193[0][v78], &v193[0][v14], (v15 - v14));
            v193[0][v15 + 1] = 0;
            v80 = cstdlib_strlen(v193[0]);
            v193[0][v14] = 32;
            v88 = *a6;
            v89 = v191;
            if (v88 >= 2)
            {
              v90 = v88 - 1;
              v91 = v191 + 11;
              v92 = v190 - 1;
              do
              {
                if (v92 && v14 <= (*v91 - *(v89 + 12)))
                {
                  ++*v91;
                }

                v91 += 8;
                --v92;
                --v90;
              }

              while (v90);
            }

            ++*(v89 + 16);
            --v14;
LABEL_138:
            LODWORD(v16) = v80;
            goto LABEL_107;
          }
        }
      }

LABEL_99:
      v76 = v46 + 1;
      if (v15 <= v76)
      {
        goto LABEL_106;
      }

      if (v61 == 1)
      {
        if (isSMSPunc(*(a1 + 40), &v193[0][v76]))
        {
          goto LABEL_106;
        }
      }

      else if (v61)
      {
        goto LABEL_106;
      }

      v77 = v193[0][v76];
      if (v77 == 32 || isDigit(v77) || v14 && v193[0][v14 - 1] != 32)
      {
        goto LABEL_106;
      }

      if ((posparserGrowStr(*(a1 + 40), v193, (v15 + 1), &v192, 0) & 0x80000000) != 0 || (posparserInsertWordMarker(*(a1 + 40), &v191, a6, (v46 + 1), 1, v193[0], &v190) & 0x80000000) != 0)
      {
        goto LABEL_147;
      }

      cstdlib_memmove(&v193[0][v14 + 2], &v193[0][v76], (v15 - v76));
      v193[0][v15 + 1] = 0;
      v80 = cstdlib_strlen(v193[0]);
      v193[0][v76] = 32;
      v81 = *a6;
      v82 = v191;
      if (v81 >= 2)
      {
        v83 = v81 - 1;
        v84 = v191 + 11;
        v85 = v190 - 1;
        do
        {
          if (v85 && v46 < (*v84 - *(v82 + 12)))
          {
            ++*v84;
          }

          v84 += 8;
          --v85;
          --v83;
        }

        while (v83);
      }

      ++*(v82 + 16);
      if (v14)
      {
        v14 = v14 - 1;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_138;
    }

LABEL_107:
    v15 = v16;
  }

  while (v16 > v14);
  if (v16)
  {
    v94 = v16 - 1;
    if (v193[0][v94] == 32)
    {
      goto LABEL_265;
    }

    if (v16 >= 3u)
    {
      v95 = &v193[0][v16 - 3];
      v96 = cstdlib_strlen("§");
      if (!cstdlib_strncmp(v95, "§", v96))
      {
        if (isPunc_0(*(a1 + 40), &v193[0][v94]))
        {
          goto LABEL_265;
        }
      }
    }

    v97 = v184;
    if ((posparserGrowStr(*(a1 + 40), v193, (v16 + 1), &v192, 0) & 0x80000000) != 0)
    {
      goto LABEL_170;
    }

    v193[0][v16] = 32;
    v193[0][v16 + 1] = 0;
    LOWORD(v16) = cstdlib_strlen(v193[0]);
    if (v16)
    {
LABEL_265:
      if (v16 != 1)
      {
        v98 = &v193[0][(v16 - 1)];
        if (*v98 == 32)
        {
          v99 = *(v98 - 1);
          if (v99 == 32)
          {
            v16 = (v16 - 1);
            do
            {
              *v98 = 0;
              v100 = v16 - 1;
              if (v16 == 1 || v193[0][v16 - 1] != 32)
              {
                goto LABEL_158;
              }

              v98 = &v193[0][v100];
              v101 = v193[0][v16-- - 2];
            }

            while (v101 == 32);
            LOWORD(v16) = v100 + 1;
          }

          if (v99 == 32)
          {
LABEL_158:
            v102 = *a6;
            if (v102 >= 2)
            {
              v103 = v191[3];
              v104 = v102 - 1;
              v105 = v191 + 11;
              while (1)
              {
                v106 = (*v105 - v103);
                v107 = v106 <= v16 || v106 >= v14;
                v108 = v103 + v16;
                if (!v107)
                {
                  goto LABEL_167;
                }

                if (v106 >= v14)
                {
                  break;
                }

LABEL_168:
                v105 += 8;
                if (!--v104)
                {
                  goto LABEL_169;
                }
              }

              v108 = v16 - v14 + *v105;
LABEL_167:
              *v105 = v108;
              goto LABEL_168;
            }
          }
        }
      }
    }
  }

LABEL_169:
  v97 = cstdlib_strlen(v193[0]);
LABEL_170:
  *v185 = v191;
  v109 = v193[0];
  *v186 = v193[0];
  log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sanitized Sentence %s", v64, v65, v66, v109);
  if (!*(a1 + 56))
  {
    v115 = 0;
    goto LABEL_180;
  }

  v110 = heap_Calloc(*(*(a1 + 16) + 8), 1, v97 + 1);
  v115 = v110;
  if (!v110)
  {
    goto LABEL_238;
  }

  cstdlib_strcpy(v110, *v186);
  if (*(a1 + 56))
  {
    v119 = 0;
    do
    {
      v120 = cstdlib_strstr(v115, *(*(a1 + 48) + 24 * v119));
      if (v120)
      {
        v121 = v120;
        do
        {
          cstdlib_memcpy(v121, *(*(a1 + 48) + 24 * v119 + 8), *(*(a1 + 48) + 24 * v119 + 16));
          v121 = cstdlib_strstr(v121, *(*(a1 + 48) + 24 * v119));
        }

        while (v121);
      }

      ++v119;
    }

    while (v119 < *(a1 + 56));
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Got Standardized Sentence     %s", v116, v117, v118, v115);
LABEL_180:
  v122 = posparser_ExtractWords(*(a1 + 40), *v185, *a6, *v186, v97, &v189, &v188);
  if ((v122 & 0x80000000) != 0)
  {
    goto LABEL_257;
  }

  if (*(a1 + 56))
  {
    v123 = v188;
    if (v188)
    {
      v124 = *v186;
      v125 = (v189 + 92);
      do
      {
        if (!*(v125 - 1) && !*v125 && cstdlib_strncmp(&v124[*(v125 - 42)], &v115[*(v125 - 42)], *(v125 - 41) - *(v125 - 42)))
        {
          cstdlib_memcpy(&v124[*(v125 - 42)], &v115[*(v125 - 42)], *(v125 - 41) - *(v125 - 42));
        }

        v125 += 26;
        --v123;
      }

      while (v123);
    }

    if (v115)
    {
      heap_Free(*(*(a1 + 16) + 8), v115);
      v115 = 0;
    }
  }

  v126 = *(a1 + 40);
  if (*(v126 + 184))
  {
    v122 = posparser_applyEmbeddedRules(v126, v189, v188, *v186, v97);
    if ((v122 & 0x80000000) == 0)
    {
      v126 = *(a1 + 40);
      goto LABEL_194;
    }

    goto LABEL_257;
  }

LABEL_194:
  if (*(v126 + 192) == 1)
  {
    *(v126 + 210) = 50;
    v127 = heap_Calloc(*(*(a1 + 16) + 8), 1, 306);
    v128 = *(a1 + 40);
    *(v128 + 200) = v127;
    if (v127)
    {
      *(v128 + 208) = 0;
      cstdlib_memset(v127, 0, 6 * *(v128 + 210));
      goto LABEL_197;
    }

LABEL_238:
    v93 = 2356158474;
    log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v111, v112, v113, v114, v176);
  }

  else
  {
LABEL_197:
    v129 = *v185;
    v180 = *a6;
    v181 = v189;
    v130 = v188;
    v131 = *v186;
    LOWORD(v193[0]) = 0;
    v132 = cstdlib_strlen(v131);
    if (v132)
    {
      v133 = 0;
      v134 = 0;
      v135 = v132;
      if (v130 <= 1)
      {
        v136 = 1;
      }

      else
      {
        v136 = v130;
      }

      v179 = v136;
      v178 = (v129 + 44);
      v137 = v132;
      do
      {
        if (!v130)
        {
          goto LABEL_211;
        }

        v138 = (v181 + 92);
        v139 = v130;
        while (*(v138 - 42) > v134 || *(v138 - 41) <= v134)
        {
          v138 += 26;
          if (!--v139)
          {
            goto LABEL_211;
          }
        }

        if (*(v138 - 1) || *(v138 - 20) || *v138)
        {
LABEL_211:
          v134 += Utf8_LengthInBytes(&v131[v134], 1);
        }

        else
        {
          v177 = v129;
          v140 = isMAPPINGXBI2A(*(a1 + 40), &v131[v134]);
          v141 = *(a1 + 40);
          if (v140 == 1)
          {
            if (*(v141 + 192) == 1)
            {
              v122 = storeDiacritic(a1, v134, &v131[v134], (v141 + 200), (v141 + 208), (v141 + 210), v193);
              if ((v122 & 0x80000000) != 0)
              {
                goto LABEL_257;
              }
            }

            v131[v134++] = 65;
          }

          else
          {
            if (isDiacritic(v141, &v131[v134]))
            {
              v142 = *(a1 + 40);
              if (*(v142 + 192) == 1)
              {
                v122 = storeDiacritic(a1, v134, &v131[v134], (v142 + 200), (v142 + 208), (v142 + 210), v193);
                if ((v122 & 0x80000000) != 0)
                {
                  goto LABEL_257;
                }
              }

              v143 = LOWORD(v193[0]);
              v144 = v133 + LOWORD(v193[0]);
              if (v144 < v135)
              {
                cstdlib_memmove(&v131[v134], &v131[v144], (v135 - v133));
              }

              v131[v135 - v143] = 0;
              v137 = cstdlib_strlen(v131);
              if (v180 >= 2)
              {
                v145 = v178;
                v146 = *(v177 + 12);
                v147 = v180 - 1;
                do
                {
                  if (v133 < (*v145 - v146))
                  {
                    *v145 -= v143;
                  }

                  v145 += 8;
                  --v147;
                }

                while (v147);
              }

              v148 = 0;
              *(v177 + 16) -= v143;
              v149 = (v181 + 10);
              v150 = v179;
              while (2)
              {
                v151 = *(v149 - 1);
                if (v151 > v134)
                {
                  *(v149 - 1) = v151 - v143;
                  LOWORD(v151) = *v149;
                  v152 = v149;
                  goto LABEL_233;
                }

                v151 = *v149;
                if (v151 > v134)
                {
                  v152 = (v181 + 104 * v148 + 10);
LABEL_233:
                  *v152 = v151 - v143;
                }

                ++v148;
                v149 += 52;
                if (!--v150)
                {
                  goto LABEL_237;
                }

                continue;
              }
            }

            v134 += Utf8_LengthInBytes(&v131[v134], 1);
LABEL_237:
            v129 = v177;
          }
        }

        v133 = v134;
        v135 = v137;
      }

      while (v134 < v137);
    }

    v156 = cstdlib_strlen(v131);
    v157 = v186;
    *v186 = v131;
    v158 = *(a1 + 40);
    if (*(v158 + 192) == 1)
    {
      v159 = *(v158 + 208);
      if (v159)
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Identified %d Diacritics", v153, v154, v155, v159);
        v160 = *(a1 + 40);
        if (*(v160 + 208))
        {
          v161 = 0;
          v162 = 0;
          do
          {
            log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "(%d,%s)", v153, v154, v155, *(*(v160 + 200) + v161));
            ++v162;
            v160 = *(a1 + 40);
            v161 += 6;
          }

          while (v162 < *(v160 + 208));
        }
      }
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Normalized Sentence %s", v153, v154, v155, *v186);
    v163 = v189;
    v164 = v188;
    if (v188)
    {
      v165 = v188;
      if (v188 != 1)
      {
        v166 = 0;
        v167 = *v186;
        v168 = (v189 + 10);
        v169 = 1;
        do
        {
          v170 = *(v168 - 1);
          if (*v168 - v170 != 1 || !isPunc_0(*(a1 + 40), &v167[v170]))
          {
            ++v166;
          }

          if (v169 >= v164)
          {
            break;
          }

          v168 += 52;
          ++v169;
        }

        while (v166 < 2);
        v165 = v166 == 1;
        v163 = v189;
        v164 = v188;
        v157 = v186;
      }
    }

    else
    {
      v165 = 0;
    }

    v122 = posparser_Process(*(a1 + 40), a2, a3, v163, v164, v165, 0, v157, v185, a6);
    if ((v122 & 0x80000000) == 0)
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Final Sentence %s", v171, v172, v173, *v157);
      v122 = (*(*(*(a1 + 40) + 56) + 112))(*(*(a1 + 40) + 40), *(*(a1 + 40) + 48), &v187, 0);
      if ((v122 & 0x80000000) == 0)
      {
        v187 += v156 - v184;
        v122 = (*(*(*(a1 + 40) + 56) + 104))(*(*(a1 + 40) + 40), *(*(a1 + 40) + 48));
      }
    }

LABEL_257:
    v93 = v122;
  }

  posparser_FreeWords(*(a1 + 40), v189, v188);
  v189 = 0;
  if (v115)
  {
    heap_Free(*(*(a1 + 16) + 8), v115);
  }

  v174 = *(*(a1 + 40) + 200);
  if (v174)
  {
    heap_Free(*(*(a1 + 16) + 8), v174);
    *(*(a1 + 40) + 200) = 0;
  }

  return v93;
}

uint64_t fe_ara_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v55 = 0;
  memset(__n, 0, sizeof(__n));
  v9 = 2356158474;
  v51 = 0;
  v49 = 0;
  v10 = safeh_HandleCheck(a1, a2, 85954, 960);
  if ((v10 & 0x80000000) != 0)
  {
    return 2356158472;
  }

  *a5 = 1;
  if (!*(a1 + 32) && !*(a1 + 60))
  {
    return v10;
  }

  __src = 0;
  v10 = (*(*(a1 + 24) + 88))(*(a1 + 896), *(a1 + 904), &v55, &v49);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(*(a1 + 24) + 144))(*(a1 + 912), *(a1 + 920), &v51 + 4, &v51);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (v49)
  {
    v10 = (*(*(a1 + 24) + 88))(*(a1 + 912), *(a1 + 920), &__src, __n);
    if ((v10 & 0x80000000) == 0)
    {
      v12 = __n[0];
      v13 = __n[0] >> 5;
      v53 = __n[0] >> 5;
      v14 = heap_Alloc(*(*(a1 + 16) + 8), __n[0]);
      v50 = v14;
      if (v14)
      {
        v19 = v14;
        cstdlib_memcpy(v14, __src, __n[0]);
        log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing Sentence %s", v20, v21, v22, v55);
        if ((v12 >> 5))
        {
          v23 = 0;
          v24 = v19 + 3;
          v25 = (v12 >> 5);
          while (1)
          {
            v26 = *v24;
            v24 += 8;
            if (v26 != v19[3])
            {
              break;
            }

            if (v25 == ++v23)
            {
              v27 = v13;
              goto LABEL_31;
            }
          }

          v27 = v23;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

LABEL_31:
        v30 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v25);
        if (!v30)
        {
          v34 = *(*(a1 + 16) + 32);
          v35 = 30000;
LABEL_43:
          log_OutPublic(v34, "FE_ARAPARSER", v35, 0, v15, v16, v17, v18, v48);
LABEL_44:
          if (v50)
          {
            heap_Free(*(*(a1 + 16) + 8), v50);
            v50 = 0;
          }

          if (*&__n[1])
          {
            heap_Free(*(*(a1 + 16) + 8), *&__n[1]);
          }

          return v9;
        }

        v31 = v30;
        v32 = v27;
        v33 = &v19[8 * v27];
        if (v32 == v13)
        {
          marker_sort(v33, v25 - v32);
        }

        else
        {
          v36 = 0;
          v37 = (v13 - v32);
          v38 = (v33 + 4);
          do
          {
            *(v30 + 4 * v36) = *v38;
            *v38 = v36;
            v38 += 8;
            ++v36;
          }

          while (v37 != v36);
          marker_sort(v33, v25 - v32);
          v39 = (v33 + 4);
          do
          {
            *v39 = *(v31 + 4 * *v39);
            v39 += 8;
            --v37;
          }

          while (v37);
        }

        heap_Free(*(*(a1 + 16) + 8), v31);
        v40 = heap_Calloc(*(*(a1 + 16) + 8), 1, v49 + 1);
        *&__n[1] = v40;
        if (v40)
        {
          v41 = v40;
          cstdlib_strcpy(v40, v55);
          log_OutText(*(*(a1 + 16) + 32), "FE_ARAPARSER", 5, 0, "Processing This Sentence %s", v42, v43, v44, v41);
          if (*(a1 + 32))
          {
            v45 = fe_ara_parser_process_legacy(a1, a3, a4, &__n[1], &v50, &v53);
          }

          else
          {
            v45 = lua_nn_diacritizer_process(*(a1 + 64), &__n[1], v19, (v12 >> 5));
          }

          v9 = v45;
          if ((v45 & 0x80000000) == 0)
          {
            v46 = cstdlib_strlen(*&__n[1]);
            v47 = (*(*(a1 + 24) + 104))(*(a1 + 928), *(a1 + 936), *&__n[1], (v46 + 1));
            if ((v47 & 0x80000000) == 0)
            {
              v47 = (*(*(a1 + 24) + 104))(*(a1 + 944), *(a1 + 952), v50, 32 * v53);
              if ((v47 & 0x80000000) == 0)
              {
                v47 = (*(*(a1 + 24) + 96))(*(a1 + 896), *(a1 + 904), v49);
                if ((v47 & 0x80000000) == 0)
                {
                  v47 = (*(*(a1 + 24) + 96))(*(a1 + 912), *(a1 + 920), v12);
                }
              }
            }

            v9 = v47;
          }

          goto LABEL_44;
        }
      }

      v34 = *(*(a1 + 16) + 32);
      v35 = 54000;
      goto LABEL_43;
    }

    return v10;
  }

  v28 = v51;
  if (v51)
  {
    if (HIDWORD(v51))
    {
      v10 = (*(*(a1 + 24) + 88))(*(a1 + 912), *(a1 + 920), &__src, __n);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v10 = (*(*(a1 + 24) + 104))(*(a1 + 944), *(a1 + 952), __src, __n[0]);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v11 = (*(*(a1 + 24) + 96))(*(a1 + 912), *(a1 + 920), __n[0]);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      v28 = v51;
    }

    if (!v28)
    {
      return v11;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 24));
  }

  v50 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "clcpppipelinemode", &v50) & 0x80000000) != 0 || !v50 || !*v50)
  {
    *a5 = 0;
  }

  return v11;
}

uint64_t fe_ara_parser_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 85954, 960) & 0x80000000) != 0)
  {
    return 2356158472;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 56))
    {
      v3 = 0;
      v4 = 0;
      v5 = *(a1 + 48);
      do
      {
        heap_Free(*(*(a1 + 16) + 8), *(v5 + v3));
        v6 = (*(a1 + 48) + v3);
        *v6 = 0;
        heap_Free(*(*(a1 + 16) + 8), v6[1]);
        v5 = *(a1 + 48);
        *(v5 + v3 + 8) = 0;
        ++v4;
        v3 += 24;
      }

      while (v4 < *(a1 + 56));
    }

    else
    {
      v5 = *(a1 + 48);
      if (!v5)
      {
LABEL_10:
        *(a1 + 56) = 0;
        posparser_ProcessEnd(*(a1 + 40));
        goto LABEL_11;
      }
    }

    heap_Free(*(*(a1 + 16) + 8), v5);
    *(a1 + 48) = 0;
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(a1 + 24);

  return synstrmaux_CloseStreams((a1 + 72), v8);
}

uint64_t fe_ara_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2356158465;
  }

  result = 0;
  *a2 = &IAraParser;
  return result;
}

uint64_t storeDiacritic(uint64_t a1, __int16 a2, unsigned __int8 *a3, uint64_t *a4, _WORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  v14 = *a4;
  v15 = Utf8_LengthInBytes(a3, 1);
  *a7 = v15;
  v16 = *a5;
  v17 = *a6;
  if (v16 < v17)
  {
    v18 = v15;
LABEL_5:
    cstdlib_strncpy((v14 + 6 * v16 + 2), a3, v18);
    result = 0;
    *(v14 + 6 * *a5 + *a7 + 2) = 0;
    *(v14 + 6 * (*a5)++) = a2;
    *a4 = v14;
    return result;
  }

  *a6 = v17 + 50;
  v19 = heap_Realloc(*(*(a1 + 16) + 8), v14, 6 * (v17 + 50) + 6);
  if (v19)
  {
    v14 = v19;
    v16 = *a5;
    v18 = *a7;
    goto LABEL_5;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_ARAPARSER", 54000, 0, v20, v21, v22, v23, v25);
  return 2356158474;
}

uint64_t embed_dict_getName(char *a1, char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  if (cstdlib_strstr(a1, "clm") == a1)
  {
    v5 = cstdlib_strstr(a1, "_");
    if (!v5)
    {
      return 2693799943;
    }

    v4 = v5;
    cstdlib_strncat(v7, a1, v5 - a1);
    cstdlib_strcat(v7, "_embed_dict");
  }

  else
  {
    cstdlib_strcat(v7, a1);
    v4 = "_embed_dict";
  }

  cstdlib_strcat(v7, v4);
  cstdlib_strcpy(a2, v7);
  return 0;
}

uint64_t embed_vect_getBrokerString(uint64_t a1, char *a2, char *a3, _BYTE *a4, size_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  __s2 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__s1 = 0u;
  v15 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v12);
    if ((result & 0x80000000) == 0)
    {
      if (cstdlib_strstr(a2, "clm") == a2)
      {
        result = cstdlib_strstr(a2, "_");
        if (!result)
        {
          return result;
        }

        v11 = result;
        cstdlib_strcpy(a3, "clmnn:");
        cstdlib_strncat(a3, a2, v11 - a2);
        cstdlib_strcat(a3, "_embed_vect");
        cstdlib_strcat(a3, v11);
        return 0;
      }

      if (cstdlib_strcmp(a2, "lid"))
      {
        cstdlib_strcat(__s1, a2);
        cstdlib_strcat(__s1, "_embed_vect");
        cstdlib_strcat(__s1, "_");
        cstdlib_strcat(__s1, __s2);
        cstdlib_strcat(__s1, "_");
        cstdlib_strcat(__s1, v12);
        result = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a3, a5);
      }

      else
      {
        cstdlib_strcat(__s1, "ml2emb");
        result = brokeraux_ComposeBrokerString(a1, __s1, 1, 0, __s2, 0, 0, a3, a5);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        cstdlib_strcpy(__s1, "ml2emb");
        cstdlib_strcat(__s1, __s2);
        result = brokeraux_ComposeBrokerString(a1, __s1, 1, 0, __s2, 0, 0, a4, a5);
      }

      if ((result & 0x80000000) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t nn_word_lkp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2693799937;
  }

  result = 0;
  *a2 = &INnWordLkp;
  return result;
}

uint64_t nn_word_lkp_ObjOpen(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  v6 = 2693799943;
  if (a6)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    inited = InitRsrcFunction(a4, a5, &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v28 + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjOpen", v14, v15, v16, v26);
      v17 = heap_Calloc(*(v28 + 8), 1, 128);
      if (v17)
      {
        *a6 = v17;
        *(a6 + 8) = 62639;
        *v17 = a1;
        v17[1] = a2;
        v17[2] = a4;
        v17[3] = a5;
        v17[4] = v28;
        v17[15] = a3;
        v6 = nn_word_lkp_ObjOpenHelper(v17, a6);
        if ((v6 & 0x80000000) == 0)
        {
          log_OutText(*(v28 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjOpen", v22, v23, v24, v27);
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "NN_WORD_LKP", 41000, 0, v18, v19, v20, v21, v27);
        return 2693799946;
      }
    }
  }

  return v6;
}

uint64_t nn_word_lkp_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  if (a1)
  {
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lookup_ObjClose", v4, v5, v6, v12);
    nn_word_lkp_ObjCloseHelper(a1);
    v10 = a1[4];
    v11 = *(v10 + 48);
    if (v11)
    {
      objc_ReleaseObject(v11, "FE_DCTLKP");
      v10 = a1[4];
    }

    log_OutText(*(v10 + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lookup_ObjClose", v7, v8, v9, v13);
    heap_Free(*(a1[4] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t nn_word_lkp_ObjReopen(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v13 = a1;
  v14 = a2;
  v7 = 2693799944;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0 && v3)
  {
    log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Entering nn_word_lkp_ObjReOpen", v4, v5, v6, v13);
    v8 = nn_word_lkp_ObjCloseHelper(v3);
    if ((v8 & 0x80000000) != 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = nn_word_lkp_ObjOpenHelper(v3, &v13);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v3[4] + 32), "NN_WORD_LKP", 4, 0, "Leaving nn_word_lkp_ObjReOpen", v9, v10, v11, v13);
        return v7;
      }

      v3 = v13;
      v2 = v14;
    }

    nn_word_lkp_ObjClose(v3, v2);
  }

  return v7;
}

uint64_t nn_word_lkp_getVectorLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 68);
  return result;
}

uint64_t nn_word_lkp_getVectorExtLength(uint64_t a1, int a2, _DWORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62639, 128);
  if ((result & 0x80000000) != 0)
  {
    return 2693799944;
  }

  *a3 = *(a1 + 72);
  return result;
}

uint64_t nn_word_lkp_word2fvector(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  v7 = 2693799944;
  v32 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *__s = 0u;
  v36 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      if (cstdlib_strstr(__s, "lid") || cstdlib_strstr(__s, "clm") == __s)
      {
        v33 = 1;
      }

      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v34, &v33, &v32);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        return v20;
      }
    }

    else
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = cstdlib_strlen(__s);
      v14 = heap_Alloc(v12, v13 + 2);
      if (!v14)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v15, v16, v17, v18, v31);
        return 2693799946;
      }

      v19 = v14;
      cstdlib_strcpy(v14, __s);
      cstdlib_strcat(v19, "_");
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v19, a3, &v34, &v33, &v32, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v19);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (!v33)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      return 2693799956;
    }

    v24 = cstdlib_atoi(*v34);
    v28 = *(a1 + 64);
    if (v28 <= 6)
    {
      if (((1 << v28) & 0x12) != 0)
      {
        return nn_word_lkp_get_vector_u16linear(a1, v24, a3, 0, a4, v25, v26, v27);
      }

      if (((1 << v28) & 0x24) != 0)
      {
        return nn_word_lkp_get_vector_u8kmeans(a1, v24, a3, 0, a4, v25, v26, v27);
      }

      if (((1 << v28) & 0x48) != 0)
      {
        return nn_word_lkp_get_vector_binary(a1, v24, a3, 0, a4, v25, v26, v27);
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v25, v26, v27, *(a1 + 64));
    return 2693799952;
  }

  return v7;
}

uint64_t nn_word_lkp_word2extfvector(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  v7 = 2693799944;
  v32 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *__s = 0u;
  v36 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v34, &v33, &v32);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        return v20;
      }
    }

    else
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = cstdlib_strlen(__s);
      v14 = heap_Alloc(v12, v13 + 2);
      if (!v14)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v15, v16, v17, v18, v31);
        return 2693799946;
      }

      v19 = v14;
      cstdlib_strcpy(v14, __s);
      cstdlib_strcat(v19, "_");
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v19, a3, &v34, &v33, &v32, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v19);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v33)
    {
      v24 = cstdlib_atoi(*v34);
      v28 = *(a1 + 64);
      if (v28 == 6)
      {
        return nn_word_lkp_get_vector_binary(a1, v24, a3, 1, a4, v25, v26, v27);
      }

      if (v28 == 5)
      {
        return nn_word_lkp_get_vector_u8kmeans(a1, v24, a3, 1, a4, v25, v26, v27);
      }

      if (v28 != 4)
      {
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v25, v26, v27, *(a1 + 64));
        return 2693799952;
      }

      return nn_word_lkp_get_vector_u16linear(a1, v24, a3, 1, a4, v25, v26, v27);
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      return 2693799956;
    }
  }

  return v7;
}

uint64_t nn_word_lkp_word2id(uint64_t a1, int a2, uint64_t a3, float *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v27 = 0;
  v7 = 2693799944;
  v26 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *__s = 0u;
  v30 = 0u;
  if ((safeh_HandleCheck(a1, a2, 62639, 128) & 0x80000000) == 0)
  {
    Name = embed_dict_getName(*(a1 + 120), __s);
    if (Name < 0)
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to generate the embedding dict name. Returns %u", v9, v10, v11, Name & 0x1FFF);
      return v7;
    }

    if (*(a1 + 84) < 2u)
    {
      if (cstdlib_strstr(__s, "lid") || cstdlib_strstr(__s, "clm") == __s)
      {
        v27 = 1;
      }

      v20 = (*(*(a1 + 40) + 96))(*(a1 + 48), *(a1 + 56), __s, a3, &v28, &v27, &v26);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_6:
        log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to lookup word %s returns %u", v21, v22, v23, a3);
        return v20;
      }
    }

    else
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = cstdlib_strlen(__s);
      v14 = heap_Alloc(v12, v13 + 2);
      if (!v14)
      {
        log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v15, v16, v17, v18, v25);
        return 2693799946;
      }

      v19 = v14;
      cstdlib_strcpy(v14, __s);
      cstdlib_strcat(v19, "_");
      v20 = (*(*(a1 + 40) + 152))(*(a1 + 48), *(a1 + 56), v19, a3, &v28, &v27, &v26, *(a1 + 84));
      heap_Free(*(*(a1 + 32) + 8), v19);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_6;
      }
    }

    if (v27)
    {
      v7 = 0;
      *a4 = cstdlib_atoi(*v28);
    }

    else
    {
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 4, 0, "No index found for word %s", v21, v22, v23, a3);
      return 2693799956;
    }
  }

  return v7;
}

uint64_t nn_word_lkp_ObjOpenHelper(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v51 = 0;
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  BrokerString = embed_vect_getBrokerString(*(a1 + 32), *(a1 + 120), v57, v56, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    v9 = BrokerString;
    v10 = *(*(a1 + 32) + 32);
    v11 = v9 & 0x1FFF;
    v12 = "Failed to generate the embedding vector brokerstring. Returns %u";
LABEL_37:
    log_OutText(v10, "NN_WORD_LKP", 0, 0, v12, v5, v6, v7, v11);
    goto LABEL_38;
  }

  if ((ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 2, v56, "CRPH", 5, &v51) & 0x80000000) != 0)
  {
    v13 = ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 0, v57, "CRPH", 5, &v51);
    v17 = *(a1 + 32);
    if ((v13 & 0x80000000) != 0)
    {
      v9 = v13;
      log_OutText(*(v17 + 32), "NN_WORD_LKP", 0, 0, "Failed to open the word vector riff file (%s). Returns %u", v14, v15, v16, v57);
      goto LABEL_38;
    }

    v8 = *(v17 + 24);
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
  }

  v18 = brk_DataOpen(v8);
  if ((v18 & 0x80000000) != 0)
  {
    v9 = v18;
    goto LABEL_38;
  }

  v19 = v51;
  v55 = 0;
  v53 = 0;
  *__s1 = 0;
  __src = 0;
  v20 = ssftriff_reader_OpenChunk(v51, __s1, &v53, &__src);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  if (!cstdlib_strcmp(__s1, "HEAD"))
  {
    v11 = v53;
    if (v53 <= 0xF)
    {
      v9 = 2693799953;
      v10 = *(*(a1 + 32) + 32);
      v12 = "Found riff chunk of size %u. Expected at least %u";
      goto LABEL_37;
    }

    v21 = __src;
    v22 = *__src;
    *(a1 + 64) = v22;
    *(a1 + 68) = v21[1];
    if ((v22 - 4) > 2)
    {
      v23 = 0;
      v24 = 2;
    }

    else
    {
      v23 = v21[2];
      v24 = 3;
    }

    *(a1 + 72) = v23;
    *(a1 + 84) = v21[v24];
    if (v22 > 3)
    {
      if ((v22 - 5) < 2)
      {
        v25 = v21[4];
        goto LABEL_23;
      }

      if (v22 == 4)
      {
        v26 = *(v21 + 4);
        goto LABEL_28;
      }
    }

    else
    {
      if ((v22 - 2) < 2)
      {
        v25 = v21[3];
LABEL_23:
        *(a1 + 88) = v25;
        *(a1 + 76) = 0;
        *(a1 + 80) = 0;
LABEL_29:
        v27 = ssftriff_reader_CloseChunk(v19);
        if ((v27 & 0x80000000) != 0)
        {
LABEL_55:
          v9 = v27;
          v10 = *(*(a1 + 32) + 32);
          v11 = v9 & 0x1FFF;
          v12 = "Failed to close riff chunk. Returns %u";
          goto LABEL_37;
        }

        v28 = v51;
        v55 = 0;
        v53 = 0;
        *__s1 = 0;
        __src = 0;
        v20 = ssftriff_reader_OpenChunk(v51, __s1, &v53, &__src);
        if ((v20 & 0x80000000) == 0)
        {
          if (cstdlib_strcmp(__s1, "VECT"))
          {
            goto LABEL_10;
          }

          v29 = *(a1 + 64);
          if (v29 <= 6 && ((1 << v29) & 0x6C) != 0)
          {
            v30 = (4 * *(a1 + 88));
            v31 = heap_Calloc(*(*(a1 + 32) + 8), 1, v30);
            *(a1 + 104) = v31;
            if (!v31)
            {
              log_OutPublic(*(*(a1 + 32) + 32), "NN_WORD_LKP", 41000, 0, v32, v33, v34, v35, v50);
              v9 = 2693799946;
              goto LABEL_38;
            }

            cstdlib_memcpy(v31, __src, v30);
            *(a1 + 112) = ssftriff_reader_GetPosition(v28) + v30;
            v36 = v53 - v30;
          }

          else
          {
            *(a1 + 112) = ssftriff_reader_GetPosition(v28);
            v36 = v53;
          }

          *(a1 + 116) = v36;
          v27 = ssftriff_reader_CloseChunk(v28);
          if ((v27 & 0x80000000) == 0)
          {
            v48 = ssftriff_reader_ObjClose(v51, v44, v45, v46, v47, v5, v6, v7);
            v51 = 0;
            if ((v48 & 0x80000000) != 0)
            {
              v9 = v48;
              v10 = *(*(a1 + 32) + 32);
              v11 = v9 & 0x1FFF;
              v12 = "Failed to close the riff file; ssftriff_reader_ObjClose returns %u";
            }

            else
            {
              Interface = fe_dctlkp_GetInterface(1u, (a1 + 40));
              if ((Interface & 0x80000000) != 0)
              {
                v9 = Interface;
                v10 = *(*(a1 + 32) + 32);
                v11 = v9 & 0x1FFF;
                v12 = "fe_dctlkp_GetInterface returns %u";
              }

              else
              {
                v9 = (*(*(a1 + 40) + 32))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a1 + 48);
                if ((v9 & 0x80000000) == 0)
                {
                  goto LABEL_38;
                }

                v10 = *(*(a1 + 32) + 32);
                v11 = v9 & 0x1FFF;
                v12 = "pfObjOpen returns %u";
              }
            }

            goto LABEL_37;
          }

          goto LABEL_55;
        }

LABEL_36:
        v9 = v20;
        v10 = *(*(a1 + 32) + 32);
        v11 = v9 & 0x1FFF;
        v12 = "Failed to open riff chunk. Returns %u";
        goto LABEL_37;
      }

      if (v22 == 1)
      {
        v26 = *(v21 + 3);
LABEL_28:
        *(a1 + 76) = vcvt_f32_s32(v26);
        *(a1 + 88) = 0;
        goto LABEL_29;
      }
    }

    log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid or unsupported vector data format %u", v5, v6, v7, v22);
    v9 = 2693799952;
    goto LABEL_38;
  }

LABEL_10:
  v9 = 2693799953;
  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Found riff chunk (%s). Expected %s", v5, v6, v7, __s1);
LABEL_38:
  if (v51)
  {
    v37 = ssftriff_reader_CloseChunk(v51);
    if ((v37 & 0x80000000) != 0)
    {
      v41 = v37;
      log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; ssftriff_reader_CloseChunk returns %u", v38, v39, v40, v37 & 0x1FFF);
      if (v9 >= 0)
      {
        v9 = v41;
      }

      else
      {
        v9 = v9;
      }

      goto LABEL_45;
    }
  }

  if ((v9 & 0x80000000) != 0)
  {
LABEL_45:
    nn_word_lkp_ObjClose(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = safeh_GetNullHandle();
    *(a2 + 8) = v42;
  }

  return v9;
}

uint64_t nn_word_lkp_ObjCloseHelper(void *a1)
{
  v2 = a1[5];
  if (v2 && (v3 = (*(v2 + 40))(a1[6], a1[7]), (v3 & 0x80000000) != 0))
  {
    v7 = v3;
    log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close dct. pIDct->pfObjClose returns %u", v4, v5, v6, v3 & 0x1FFF);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    heap_Free(*(a1[4] + 8), v8);
    a1[13] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    v10 = brk_DataClose(*(a1[4] + 24), v9);
    if ((v10 & 0x80000000) != 0)
    {
      v14 = v10;
      log_OutText(*(a1[4] + 32), "NN_WORD_LKP", 0, 0, "Failed to close the riff file; brk_DataClose returns %u", v11, v12, v13, v10 & 0x1FFF);
      if (v7)
      {
        return v7;
      }

      else
      {
        return v14;
      }
    }
  }

  return v7;
}

uint64_t nn_word_lkp_get_vector_u16linear(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = *(a1 + 116) - v10;
  v28 = 0;
  if (v10 * a2 <= v11)
  {
    if (a4)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v10 * a2, (2 * v14), &v28);
    if ((v15 & 0x80000000) != 0)
    {
      v12 = v15;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v20 = v28;
      if (v14)
      {
        v21 = 0;
        v22 = *(a1 + 68);
        do
        {
          LOWORD(v19) = *(v20 + 2 * v21);
          v19 = LODWORD(v19);
          if (v21 < v22)
          {
            v19 = *(a1 + 76) + (((*(a1 + 80) - *(a1 + 76)) * v19) * 0.000030518);
          }

          *(a5 + 4 * v21++) = v19;
        }

        while (v14 != v21);
      }

      v23 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v20);
      if ((v23 & 0x80000000) == 0)
      {
        return 0;
      }

      v12 = v23;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v24, "NN_WORD_LKP", 0, 0, v26, v16, v17, v18, v25);
    return v12;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t nn_word_lkp_get_vector_binary(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = (v10 + 7) >> 3;
  v12 = *(a1 + 116) - v11;
  v35 = 0;
  if (v11 * a2 <= v12)
  {
    if (a4)
    {
      v15 = v11;
    }

    else
    {
      v15 = (v9 + 7) >> 3;
    }

    if (a4)
    {
      v16 = v10;
    }

    else
    {
      v16 = v9;
    }

    v17 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v11 * a2, v15, &v35);
    if ((v17 & 0x80000000) != 0)
    {
      v13 = v17;
      v31 = *(*(a1 + 32) + 32);
      v32 = v13 & 0x1FFF;
      v33 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v21 = v35;
      if (v15)
      {
        v22 = 0;
        v23 = (*(a1 + 68) + 7) >> 3;
        v24 = (a5 + 16);
        while (1)
        {
          v25 = *(v21 + v22);
          if (v16 >= 8)
          {
            v26 = 8;
          }

          else
          {
            v26 = v16;
          }

          v27 = v25 >> 7;
          if (v22 >= v23)
          {
            if (v26 <= 3)
            {
              switch(v26)
              {
                case 1:
                  goto LABEL_51;
                case 2:
                  goto LABEL_50;
                case 3:
                  goto LABEL_49;
              }

LABEL_44:
              v24[3] = (v25 & 1);
LABEL_45:
              v24[2] = ((v25 >> 1) & 1);
            }

            else
            {
              if (v26 <= 5)
              {
                if (v26 != 4)
                {
LABEL_47:
                  *v24 = ((v25 >> 3) & 1);
                }

                *(v24 - 1) = ((v25 >> 4) & 1);
LABEL_49:
                *(v24 - 2) = ((v25 >> 5) & 1);
LABEL_50:
                *(v24 - 3) = ((v25 >> 6) & 1);
LABEL_51:
                v29 = v27;
                goto LABEL_52;
              }

              if (v26 != 6)
              {
                if (v26 != 7)
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }
            }

            v24[1] = ((v25 >> 2) & 1);
            goto LABEL_47;
          }

          v28 = *(a1 + 104);
          if (v26 > 3)
          {
            break;
          }

          if (v26 != 1)
          {
            if (v26 != 2)
            {
              if (v26 != 3)
              {
LABEL_34:
                v24[3] = *(v28 + 4 * (v25 & 1));
                goto LABEL_35;
              }

LABEL_39:
              *(v24 - 2) = *(v28 + 4 * ((v25 >> 5) & 1));
            }

            *(v24 - 3) = *(v28 + 4 * ((v25 >> 6) & 1));
          }

          v29 = *(v28 + 4 * v27);
LABEL_52:
          *(v24 - 4) = v29;
          ++v22;
          v24 += 8;
          v16 -= 8;
          if (v15 == v22)
          {
            goto LABEL_53;
          }
        }

        if (v26 > 5)
        {
          if (v26 != 6)
          {
            if (v26 != 7)
            {
              goto LABEL_34;
            }

LABEL_35:
            v24[2] = *(v28 + 4 * ((v25 >> 1) & 1));
          }

          v24[1] = *(v28 + 4 * ((v25 >> 2) & 1));
        }

        else if (v26 == 4)
        {
LABEL_38:
          *(v24 - 1) = *(v28 + 4 * ((v25 >> 4) & 1));
          goto LABEL_39;
        }

        *v24 = *(v28 + 4 * ((v25 >> 3) & 1));
        goto LABEL_38;
      }

LABEL_53:
      v30 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v21);
      if ((v30 & 0x80000000) == 0)
      {
        return 0;
      }

      v13 = v30;
      v31 = *(*(a1 + 32) + 32);
      v32 = v13 & 0x1FFF;
      v33 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v31, "NN_WORD_LKP", 0, 0, v33, v18, v19, v20, v32);
    return v13;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t nn_word_lkp_get_vector_u8kmeans(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 68);
  v10 = *(a1 + 72) + v9;
  v11 = *(a1 + 116) - v10;
  v28 = 0;
  if (v10 * a2 <= v11)
  {
    if (a4)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = brk_DataMap(*(*(a1 + 32) + 24), *(a1 + 96), *(a1 + 112) + v10 * a2, v14, &v28);
    if ((v15 & 0x80000000) != 0)
    {
      v12 = v15;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to map data, brk_DataMap returns %u.";
    }

    else
    {
      v20 = v28;
      if (v14)
      {
        v21 = 0;
        v22 = *(a1 + 68);
        do
        {
          if (v21 >= v22)
          {
            LOBYTE(v19) = *(v20 + v21);
            v19 = LODWORD(v19);
          }

          else
          {
            v19 = *(*(a1 + 104) + 4 * *(v20 + v21));
          }

          *(a5 + 4 * v21++) = v19;
        }

        while (v14 != v21);
      }

      v23 = brk_DataUnmap(*(*(a1 + 32) + 24), *(a1 + 96), v20);
      if ((v23 & 0x80000000) == 0)
      {
        return 0;
      }

      v12 = v23;
      v24 = *(*(a1 + 32) + 32);
      v25 = v12 & 0x1FFF;
      v26 = "Failed to unmap data, brk_DataUnMap returns %u.";
    }

    log_OutText(v24, "NN_WORD_LKP", 0, 0, v26, v16, v17, v18, v25);
    return v12;
  }

  log_OutText(*(*(a1 + 32) + 32), "NN_WORD_LKP", 0, 0, "Got invalid index for word %s, (%u > %u)", a6, a7, a8, a3);
  return 2693799952;
}

uint64_t tnplus_sentences_alloc(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = 3222282247;
  if (a3)
  {
    if (a2)
    {
      v5 = heap_Calloc(*(a1 + 8), a2, 16);
      *a3 = v5;
      if (v5)
      {
        return 0;
      }

      else
      {
        return 3222282250;
      }
    }

    else
    {
      v3 = 0;
      *a3 = 0;
    }
  }

  return v3;
}

void *tnplus_sentences_free(void *result, _DWORD *a2, uint64_t *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = *a2;
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = (*a3 + 16 * i);
        v9 = *(v8 + 1);
        if (v9)
        {
          if (*v8)
          {
            v10 = 0;
            v11 = 0;
            do
            {
              tnplus_word_freeParts((*(v8 + 1) + v10), v5[1]);
              ++v11;
              v10 += 160;
            }

            while (v11 < *v8);
            v9 = *(v8 + 1);
          }

          heap_Free(v5[1], v9);
          *(v8 + 1) = 0;
          *v8 = 0;
          v6 = *a2;
        }
      }
    }

    result = heap_Free(v5[1], *a3);
    *a3 = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t tnplus_words_alloc(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = 3222282247;
  if (a3)
  {
    if (a2)
    {
      v5 = heap_Calloc(*(a1 + 8), a2, 160);
      *a3 = v5;
      if (v5)
      {
        return 0;
      }

      else
      {
        return 3222282250;
      }
    }

    else
    {
      v3 = 0;
      *a3 = 0;
    }
  }

  return v3;
}

uint64_t tnplus_word_copyParts(char **a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  result = hlp_DuplicateString(a2, *a1, a3);
  if (result)
  {
    result = hlp_DuplicateString(a2, a1[1], a3 + 1);
    if (result)
    {
      result = hlp_DuplicateString(a2, a1[2], a3 + 2);
      if (result)
      {
        result = hlp_DuplicateString(a2, a1[3], a3 + 3);
        if (result)
        {
          result = hlp_DuplicateString(a2, a1[4], a3 + 4);
          if (result)
          {
            result = hlp_DuplicateString(a2, a1[6], a3 + 6);
            if (result)
            {
              result = hlp_DuplicateString(a2, a1[7], a3 + 7);
              if (result)
              {
                result = hlp_DuplicateString(a2, a1[9], a3 + 9);
                if (result)
                {
                  result = hlp_DuplicateString(a2, a1[10], a3 + 10);
                  if (result)
                  {
                    result = hlp_DuplicateString(a2, a1[11], a3 + 11);
                    if (result)
                    {
                      result = hlp_DuplicateString(a2, a1[12], a3 + 12);
                      if (result)
                      {
                        result = hlp_DuplicateString(a2, a1[13], a3 + 13);
                        if (result)
                        {
                          result = hlp_DuplicateString(a2, a1[15], a3 + 15);
                          if (result)
                          {
                            result = hlp_DuplicateString(a2, a1[19], a3 + 19);
                            if (result)
                            {
                              return 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_DuplicateString(void *a1, char *__s, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (__s)
  {
    v6 = cstdlib_strlen(__s);
    result = heap_Calloc(a1, v6 + 1, 1);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    cstdlib_strcpy(result, __s);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t *tnplus_word_freeParts(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      result = heap_Free(a2, *result);
      *v3 = 0;
    }

    v4 = v3[1];
    if (v4)
    {
      result = heap_Free(a2, v4);
      v3[1] = 0;
    }

    v5 = v3[2];
    if (v5)
    {
      result = heap_Free(a2, v5);
      v3[2] = 0;
    }

    v6 = v3[3];
    if (v6)
    {
      result = heap_Free(a2, v6);
      v3[3] = 0;
    }

    v7 = v3[4];
    if (v7)
    {
      result = heap_Free(a2, v7);
      v3[4] = 0;
    }

    v8 = v3[6];
    if (v8)
    {
      result = heap_Free(a2, v8);
      v3[6] = 0;
    }

    v9 = v3[7];
    if (v9)
    {
      result = heap_Free(a2, v9);
      v3[7] = 0;
    }

    v10 = v3[9];
    if (v10)
    {
      result = heap_Free(a2, v10);
      v3[9] = 0;
    }

    v11 = v3[10];
    if (v11)
    {
      result = heap_Free(a2, v11);
      v3[10] = 0;
    }

    v12 = v3[11];
    if (v12)
    {
      result = heap_Free(a2, v12);
      v3[11] = 0;
    }

    v13 = v3[12];
    if (v13)
    {
      result = heap_Free(a2, v13);
      v3[12] = 0;
    }

    v14 = v3[13];
    if (v14)
    {
      result = heap_Free(a2, v14);
      v3[13] = 0;
    }

    v15 = v3[15];
    if (v15)
    {
      result = heap_Free(a2, v15);
      v3[15] = 0;
    }

    v16 = v3[19];
    if (v16)
    {
      result = heap_Free(a2, v16);
      v3[19] = 0;
    }
  }

  return result;
}

char *tnplus_words_createTSOInfoString(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = a4 / 0xA0;
  v64 = 200 * (a4 / 0xA0);
  result = heap_Calloc(*(a1 + 8), v64, 1);
  if (result)
  {
    v10 = result;
    snprintf(__str, 0x80uLL, "%s, %lu geene words:", a2, v8);
    appended = hlp_AppendString(a1, v10, &v64, __str);
    if (a4 >= 0xA0)
    {
      v12 = 0;
      do
      {
        v13 = hlp_AppendString(a1, appended, &v64, "\n------------------------");
        v14 = hlp_AppendString(a1, v13, &v64, "\northo=");
        v15 = a3 + v12;
        v16 = hlp_AppendString(a1, v14, &v64, *(a3 + v12));
        v17 = hlp_AppendString(a1, v16, &v64, "\nphon=");
        v18 = hlp_AppendString(a1, v17, &v64, *(a3 + v12 + 8));
        v19 = hlp_AppendString(a1, v18, &v64, "\npunc.beg=");
        v20 = hlp_AppendString(a1, v19, &v64, *(a3 + v12 + 16));
        v21 = hlp_AppendString(a1, v20, &v64, "\npunc.end=");
        v22 = hlp_AppendString(a1, v21, &v64, *(a3 + v12 + 24));
        v23 = hlp_AppendString(a1, v22, &v64, "\nmetadata.token=");
        v24 = hlp_AppendString(a1, v23, &v64, *(a3 + v12 + 32));
        v25 = hlp_AppendString(a1, v24, &v64, "\nmetadata.spell=");
        if (*(a3 + v12 + 40))
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        cstdlib_strcpy(__dst, v26);
        v27 = hlp_AppendString(a1, v25, &v64, __dst);
        v28 = hlp_AppendString(a1, v27, &v64, "\nmetadata.stylename=");
        v29 = hlp_AppendString(a1, v28, &v64, *(v15 + 48));
        v30 = hlp_AppendString(a1, v29, &v64, "\nmetadata.styleintensity=");
        v31 = hlp_AppendString(a1, v30, &v64, *(v15 + 56));
        v32 = hlp_AppendString(a1, v31, &v64, "\nmetadata.compund=");
        if (*(v15 + 64))
        {
          v33 = "true";
        }

        else
        {
          v33 = "false";
        }

        cstdlib_strcpy(__dst, v33);
        v34 = hlp_AppendString(a1, v32, &v64, __dst);
        v35 = hlp_AppendString(a1, v34, &v64, "\nmetadata.oriorthjoined=");
        if (*(v15 + 68))
        {
          v36 = "true";
        }

        else
        {
          v36 = "false";
        }

        cstdlib_strcpy(__dst, v36);
        v37 = hlp_AppendString(a1, v35, &v64, __dst);
        v38 = hlp_AppendString(a1, v37, &v64, "\nmetadata.phrasetype=");
        v39 = hlp_AppendString(a1, v38, &v64, *(v15 + 72));
        v40 = hlp_AppendString(a1, v39, &v64, "\nmetadata.language=");
        v41 = hlp_AppendString(a1, v40, &v64, *(v15 + 80));
        v42 = hlp_AppendString(a1, v41, &v64, "\nmetadata.audiosrc=");
        v43 = hlp_AppendString(a1, v42, &v64, *(v15 + 88));
        v44 = hlp_AppendString(a1, v43, &v64, "\nmetadata.origortho=");
        v45 = hlp_AppendString(a1, v44, &v64, *(v15 + 96));
        v46 = hlp_AppendString(a1, v45, &v64, "\nmetadata.break=");
        v47 = hlp_AppendString(a1, v46, &v64, *(v15 + 104));
        v48 = hlp_AppendString(a1, v47, &v64, "\nmetadata.userphon=");
        if (*(v15 + 112))
        {
          v49 = "true";
        }

        else
        {
          v49 = "false";
        }

        cstdlib_strcpy(__dst, v49);
        v50 = hlp_AppendString(a1, v48, &v64, __dst);
        v51 = hlp_AppendString(a1, v50, &v64, "\nmetadata.tone=");
        v52 = hlp_AppendString(a1, v51, &v64, *(v15 + 120));
        v53 = hlp_AppendString(a1, v52, &v64, "\nmetadata.sildur=");
        snprintf(__dst, 0x64uLL, "%d", *(v15 + 128));
        v54 = hlp_AppendString(a1, v53, &v64, __dst);
        v55 = hlp_AppendString(a1, v54, &v64, "\nmetadata.volume=");
        snprintf(__dst, 0x64uLL, "%d", *(v15 + 132));
        v56 = hlp_AppendString(a1, v55, &v64, __dst);
        v57 = hlp_AppendString(a1, v56, &v64, "\nmetadata.pitch=");
        snprintf(__dst, 0x64uLL, "%d", *(v15 + 136));
        v58 = hlp_AppendString(a1, v57, &v64, __dst);
        v59 = hlp_AppendString(a1, v58, &v64, "\nmetadata.rate=");
        snprintf(__dst, 0x64uLL, "%d", *(v15 + 140));
        v60 = hlp_AppendString(a1, v59, &v64, __dst);
        v61 = hlp_AppendString(a1, v60, &v64, "\nmetadata.timbre=");
        snprintf(__dst, 0x64uLL, "%d", *(v15 + 144));
        v62 = hlp_AppendString(a1, v61, &v64, __dst);
        v63 = hlp_AppendString(a1, v62, &v64, "\nmetadata.loo=");
        appended = hlp_AppendString(a1, v63, &v64, *(v15 + 152));
        v12 += 160;
      }

      while (160 * v8 != v12);
    }

    return hlp_AppendString(a1, appended, &v64, "\n");
  }

  return result;
}

char *hlp_AppendString(uint64_t a1, char *__s, uint64_t *a3, const char *a4)
{
  v6 = __s;
  v8 = cstdlib_strlen(__s);
  if (v8 + cstdlib_strlen(a4) + 1 >= *a3)
  {
    v9 = *a3;
    v10 = v9 + cstdlib_strlen(a4) + 128;
    v11 = heap_Calloc(*(a1 + 8), v10, 1);
    if (v11)
    {
      v12 = v11;
      cstdlib_strcat(v11, v6);
      cstdlib_strcat(v12, a4);
      heap_Free(*(a1 + 8), v6);
      *a3 = v10;
      return v12;
    }
  }

  else
  {
    cstdlib_strcat(v6, a4);
  }

  return v6;
}

uint64_t p_xcoder_ObjOpen(uint64_t a1)
{
  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v10);
  if ((inited & 0x80000000) == 0)
  {
    v3 = heap_Alloc(*(v10 + 8), 4);
    *(a1 + 280) = v3;
    if (v3)
    {
      cstdlib_memset(v3, 0, 4uLL);
    }

    else
    {
      log_OutPublic(*(v10 + 32), "XCODER", 15000, 0, v4, v5, v6, v7, v9);
      return 2282758154;
    }
  }

  return inited;
}

uint64_t p_xcoder_ObjClose(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), *(a1 + 280));
    *(a1 + 280) = 0;
  }

  return inited;
}

uint64_t p_xcoder_OpenXCoder(uint64_t a1)
{
  v14 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a1 + 16) || *(a1 + 144))
  {
    **(a1 + 280) = 0;
    if (LH_stricmp((a1 + 16), "UTF-16"))
    {
      v11 = 2282758145;
      log_OutPublic(*(v14 + 32), "XCODER", 15004, "%s%s%s%s", v7, v8, v9, v10, "charsetIn");
    }

    else
    {
      v11 = 0;
      **(a1 + 280) = 2;
    }
  }

  else
  {
    log_OutPublic(*(v14 + 32), "XCODER", 15002, 0, v3, v4, v5, v6, v13);
    v11 = 2282758151;
  }

  *(a1 + 272) = v11;
  return v11;
}

uint64_t p_xcoder_Convert(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, unsigned int a6, unsigned int *a7, _DWORD *a8)
{
  v28 = 0;
  *a4 = 0;
  *a7 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v21 = 2282758158;
  if (**(a1 + 280) == 2)
  {
    if (a3)
    {
      v21 = 2282758405;
      goto LABEL_10;
    }

    v21 = utf8_Utf16ToUtf8(a2, a3 >> 1, a4, a5, a6, a7, a8);
    v22 = v21 & 0x1FFF;
    if ((v21 & 0x1FFF) != 0 && v22 != 7)
    {
      if (v22 == 9)
      {
        v23 = *(v28 + 32);
        v24 = 15015;
        v25 = 0;
LABEL_11:
        log_OutPublic(v23, "XCODER", v24, v25, v17, v18, v19, v20, v27);
        return v21;
      }

LABEL_10:
      v23 = *(v28 + 32);
      v27 = "input";
      v25 = "%s%s%s%s%s%x";
      v24 = 15016;
      goto LABEL_11;
    }
  }

  return v21;
}

uint64_t xcoder_mrksync_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoderMrkSync;
  return result;
}

uint64_t xcoder_mrksync_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2282758151;
  v23 = 0;
  v24 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v24) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v24 + 8), 1, 72);
        if (v12)
        {
          v17 = v12;
          *v12 = a3;
          v12[1] = a4;
          Object = objc_GetObject(*(v24 + 48), "SYNTHSTREAM", &v23);
          if ((Object & 0x80000000) != 0)
          {
            log_OutPublic(*(v24 + 32), "XCODER", 15024, 0, v18, v19, v20, v21, v23);
            heap_Free(*(v24 + 8), v17);
          }

          else
          {
            *(v17 + 16) = *(v23 + 8);
            *a5 = v17;
            *(a5 + 8) = 854;
          }
        }

        else
        {
          log_OutPublic(*(v24 + 32), "XCODER", 15000, 0, v13, v14, v15, v16, v23);
          return 2282758154;
        }
      }
    }
  }

  return Object;
}

uint64_t xcoder_mrksync_ObjClose(void *a1, int a2)
{
  v5 = 0;
  v6 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v6, &v5);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = objc_ReleaseObject(*(v6 + 48), "SYNTHSTREAM");
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v6 + 8), v5);
  }

  return v3;
}

uint64_t xcoder_mrksync_ProcessStart(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v17, &v16);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = v16;
  if (((*(*(v16 + 16) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 0, v16 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v7 + 40);
  if ((v8 & 0x80000000) != 0)
  {
    v13 = v8;
    v14 = 15026;
    goto LABEL_9;
  }

  v13 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v7 + 56);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 15027;
LABEL_9:
    log_OutPublic(*(v17 + 32), "XCODER", v14, "%s%s", v9, v10, v11, v12, "contentType");
  }

  return v13;
}