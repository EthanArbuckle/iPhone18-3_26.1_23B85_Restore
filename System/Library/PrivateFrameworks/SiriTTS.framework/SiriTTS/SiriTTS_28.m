unsigned __int8 *_pcre2_find_bracket_8(unsigned __int8 *result, int a2, int a3)
{
  while (1)
  {
    while (1)
    {
      v3 = *result;
      if (v3 <= 0x60)
      {
        break;
      }

      if (*result <= 0x7Cu)
      {
        switch(v3)
        {
          case 'a':
LABEL_20:
            v5 = result[3];
            goto LABEL_21;
          case 'p':
            v7 = *(result + 1);
            break;
          case 'w':
            v7 = *(result + 5);
            break;
          default:
            goto LABEL_26;
        }

        result += __rev16(v7);
      }

      else
      {
        v4 = v3 - 125;
        if (v3 - 125 > 0x24)
        {
          goto LABEL_26;
        }

        if (((1 << v4) & 0x1550000000) != 0)
        {
          v6 = result[1];
          goto LABEL_22;
        }

        if (((1 << v4) & 0x31800) != 0)
        {
          if (a3 == bswap32(*(result + 3)) >> 16)
          {
            return result;
          }

          result += _pcre2_OP_lengths_8[*result];
        }

        else if (v3 == 125)
        {
          if (a3 < 0)
          {
            return result;
          }

          result += 3;
        }

        else
        {
LABEL_26:
          result += _pcre2_OP_lengths_8[*result];
          if (a2 && v3 - 29 <= 0x37)
          {
            v8 = *(result - 1);
            if (v8 >= 0xC0)
            {
              result += _pcre2_utf8_table4[v8 & 0x3F];
            }
          }
        }
      }
    }

    if (*result <= 0x5Au)
    {
      break;
    }

    if (v3 - 91 < 3)
    {
      goto LABEL_20;
    }

    if (v3 - 94 >= 3)
    {
      goto LABEL_26;
    }

LABEL_14:
    v5 = result[1];
LABEL_21:
    v6 = 2 * ((v5 - 15) < 2);
LABEL_22:
    result += v6 + _pcre2_OP_lengths_8[*result];
  }

  if (v3 - 85 < 6)
  {
    goto LABEL_14;
  }

  if (*result)
  {
    goto LABEL_26;
  }

  return 0;
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
        v21 = _pcre2_check_escape_8(&v24, a3, &v23, &v23 + 1, *(a1 + 88), *(a1 + 92), 0, 0);
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

uint64_t _pcre2_script_run_8(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1 >= a2)
  {
LABEL_151:
    result = 1;
    goto LABEL_152;
  }

  v4 = a1 + 1;
  v3 = *a1;
  if (a3 && v3 >= 0xC0)
  {
    if ((v3 & 0x20) != 0)
    {
      v5 = *v4 & 0x3F;
      if ((v3 & 0x10) != 0)
      {
        if ((v3 & 8) != 0)
        {
          v6 = a1[2] & 0x3F;
          v7 = a1[3] & 0x3F;
          v8 = a1[4] & 0x3F;
          if ((v3 & 4) != 0)
          {
            v3 = ((v3 & 1) << 30) | (v5 << 24) | (v6 << 18) | (v7 << 12) | (v8 << 6) | a1[5] & 0x3F;
            v4 = a1 + 6;
          }

          else
          {
            v3 = ((v3 & 3) << 24) | (v5 << 18) | (v6 << 12) | (v7 << 6) | v8;
            v4 = a1 + 5;
          }
        }

        else
        {
          v3 = ((v3 & 7) << 18) | (v5 << 12) | ((a1[2] & 0x3F) << 6) | a1[3] & 0x3F;
          v4 = a1 + 4;
        }
      }

      else
      {
        v3 = ((v3 & 0xF) << 12) | (v5 << 6) | a1[2] & 0x3F;
        v4 = a1 + 3;
      }
    }

    else
    {
      v4 = a1 + 2;
      v3 = a1[1] & 0x3F | ((v3 & 0x1F) << 6);
    }
  }

  result = 1;
  if (v4 >= a2)
  {
    goto LABEL_152;
  }

  v10 = 0;
  v11 = 0;
  v12 = 4294867297;
LABEL_15:
  v13 = v4;
  v14 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v3 & 0x7F | (_pcre2_ucd_stage1_8[v3 >> 7] << 7)]];
  result = *(v14 + 4);
  if (result == 10)
  {
    v16 = v12;
    goto LABEL_30;
  }

  if (result == 28)
  {
    v16 = v12;
    goto LABEL_42;
  }

  if (!*(v14 + 4))
  {
    goto LABEL_152;
  }

  v15 = result;
  if (result >= 1)
  {
    v16 = result;
    if (v12 <= -99997)
    {
      if ((v12 + 99999) < 2)
      {
        if (result > 0x17u)
        {
          if (result != 24)
          {
            v17 = result == 27 || result == 30;
            if (!v17)
            {
              goto LABEL_114;
            }

LABEL_145:
            v16 = 4294867299;
            goto LABEL_30;
          }

          goto LABEL_110;
        }

        if (result != 4)
        {
          if (result == 23)
          {
            goto LABEL_148;
          }

LABEL_114:
          if (v12 != -99998)
          {
            goto LABEL_30;
          }

          goto LABEL_153;
        }

        goto LABEL_149;
      }

      if (v12 == -99997)
      {
        v32 = result > 0x1E || ((1 << result) & 0x48800000) == 0;
        v16 = 4294867299;
        if (!v32)
        {
          goto LABEL_30;
        }

        goto LABEL_153;
      }

      goto LABEL_107;
    }

    if (v12 == -99996)
    {
      if (v16 == 23 || result == 4)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (v12 == -99995)
      {
        if ((result - 25) != 65534 && (result - 25) != 0xFFFF)
        {
          goto LABEL_153;
        }

        goto LABEL_110;
      }

      v23 = v10;
      if (v12 != -99994)
      {
LABEL_107:
        v17 = v12 == v16;
        v16 = v12;
        if (v17)
        {
          goto LABEL_30;
        }

        goto LABEL_153;
      }

      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25)
        {
          v26 = v24 == v16;
        }

        else
        {
          v26 = 1;
        }
      }

      while (!v26);
      if (v24)
      {
        if (v15 > 0x17u)
        {
          if (v15 != 24)
          {
            if (v15 != 27 && v15 != 30)
            {
              goto LABEL_30;
            }

            goto LABEL_145;
          }

LABEL_110:
          v16 = 4294867301;
          goto LABEL_30;
        }

        if (v15 != 4)
        {
          if (v15 == 23)
          {
            goto LABEL_148;
          }

          goto LABEL_30;
        }

LABEL_149:
        v16 = 4294867300;
        goto LABEL_30;
      }
    }

LABEL_153:
    result = 0;
    goto LABEL_152;
  }

  v21 = &_pcre2_ucd_script_sets_8 - result;
  if (v12 > -99997)
  {
    switch(v12)
    {
      case 0xFFFE7964:
        while (1)
        {
          result = *v21;
          if (!*v21)
          {
            break;
          }

          if (result == 4)
          {
            goto LABEL_149;
          }

          ++v21;
        }

        break;
      case 0xFFFE7966:
        v36 = *v10;
        if (!*v10)
        {
          goto LABEL_153;
        }

        result = 0;
        v37 = &_pcre2_ucd_script_sets_8 - v15 + 1;
        v38 = *(&_pcre2_ucd_script_sets_8 - v15);
        v39 = v10;
        do
        {
          v40 = v37;
          v41 = v38;
          if (v38)
          {
            while (v36 != v41)
            {
              v42 = *v40++;
              v41 = v42;
              if (!v42)
              {
                goto LABEL_137;
              }
            }

            v45[result] = v36;
            result = (result + 1);
          }

LABEL_137:
          v43 = *++v39;
          v36 = v43;
        }

        while (v43);
        if (result == 1)
        {
          v16 = v45[0];
          goto LABEL_30;
        }

        if (result)
        {
          v10 = v45;
          v45[result] = 0;
          v16 = 4294867302;
          goto LABEL_30;
        }

        break;
      case 0xFFFE7965:
        while (1)
        {
          result = *v21;
          if (!*v21)
          {
            break;
          }

          if (result == 24)
          {
            goto LABEL_110;
          }

          ++v21;
        }

        break;
      default:
        goto LABEL_81;
    }
  }

  else
  {
    switch(v12)
    {
      case 0xFFFE7961:
        v16 = 4294867302;
        v10 = &_pcre2_ucd_script_sets_8 - result;
        goto LABEL_30;
      case 0xFFFE7962:
        result = 0;
        while (1)
        {
          v34 = *v21;
          if (v34 > 0x1A)
          {
            v35 = result | 2;
            if (v34 == 30)
            {
              LODWORD(result) = result | 4;
            }

            if (v34 == 27)
            {
              result = v35;
            }

            else
            {
              result = result;
            }
          }

          else if (v34 == 4)
          {
            result = result | 1;
          }

          else if (v34 == 24)
          {
            result = result | 8;
          }

          else if (!*v21)
          {
            switch(result)
            {
              case 1:
                goto LABEL_149;
              case 6:
                goto LABEL_145;
              case 0:
                goto LABEL_152;
            }

LABEL_148:
            v16 = 4294867298;
LABEL_30:
            if (*(v14 + 1) != 13)
            {
              goto LABEL_42;
            }

            if (v3 <= 0x39)
            {
              v18 = 1;
              if (v11)
              {
                goto LABEL_38;
              }

LABEL_41:
              v11 = v18;
              goto LABEL_42;
            }

            v18 = 65;
            v19 = 1;
            do
            {
              if (v3 <= _pcre2_ucd_digit_sets_8[(v18 + v19) >> 1])
              {
                v18 = (v18 + v19) >> 1;
              }

              else
              {
                v19 = (v18 + v19) >> 1;
              }
            }

            while (v18 > (v19 + 1));
            if (!v11)
            {
              goto LABEL_41;
            }

LABEL_38:
            if (v18 != v11)
            {
              goto LABEL_153;
            }

LABEL_42:
            if (v13 >= a2)
            {
              goto LABEL_151;
            }

            v4 = v13 + 1;
            v3 = *v13;
            v12 = v16;
            if (a3)
            {
              v12 = v16;
              if (v3 >= 0xC0)
              {
                if ((v3 & 0x20) != 0)
                {
                  v20 = *v4 & 0x3F;
                  if ((v3 & 0x10) != 0)
                  {
                    if ((v3 & 8) != 0)
                    {
                      v29 = v13[2] & 0x3F;
                      v30 = v13[3] & 0x3F;
                      v31 = v13[4] & 0x3F;
                      if ((v3 & 4) != 0)
                      {
                        v3 = ((v3 & 1) << 30) | (v20 << 24) | (v29 << 18) | (v30 << 12) | (v31 << 6) | v13[5] & 0x3F;
                        v4 = v13 + 6;
                      }

                      else
                      {
                        v3 = ((v3 & 3) << 24) | (v20 << 18) | (v29 << 12) | (v30 << 6) | v31;
                        v4 = v13 + 5;
                      }

                      v12 = v16;
                    }

                    else
                    {
                      v3 = ((v3 & 7) << 18) | (v20 << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
                      v4 = v13 + 4;
                      v12 = v16;
                    }
                  }

                  else
                  {
                    v3 = ((v3 & 0xF) << 12) | (v20 << 6) | v13[2] & 0x3F;
                    v4 = v13 + 3;
                    v12 = v16;
                  }
                }

                else
                {
                  v4 = v13 + 2;
                  v12 = v16;
                  v3 = v13[1] & 0x3F | ((v3 & 0x1F) << 6);
                }
              }
            }

            goto LABEL_15;
          }

          ++v21;
        }

      case 0xFFFE7963:
        while (1)
        {
          result = *v21;
          if (!*v21)
          {
            goto LABEL_152;
          }

          if (result == 27 || result == 30)
          {
            goto LABEL_145;
          }

          ++v21;
        }
    }

    do
    {
LABEL_81:
      v27 = *v21++;
      result = v27;
      if (v27)
      {
        v28 = v12 == result;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
    v16 = v12;
    if (result)
    {
      goto LABEL_30;
    }
  }

LABEL_152:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t match_ref(unint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5)
{
  if (*(a3 + 120) <= a1 || (v7 = *(a3 + 128 + 8 * a1), v7 == -1))
  {
    if ((*(a4 + 241) & 2) != 0)
    {
      v34 = 0;
LABEL_59:
      result = 0;
      *a5 = v34;
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
    v13 = *(a4 + 240);
    if ((v13 & 0xA0000) != 0)
    {
      if (v7 < v11)
      {
        v14 = v9 + v11;
        v15 = *(a4 + 168);
        v16 = *(a3 + 80);
        while (v16 < v15)
        {
          v17 = *v16;
          if ((v13 & 0x80000) != 0)
          {
            if (v17 < 0xC0)
            {
              ++v16;
            }

            else if ((v17 & 0x20) != 0)
            {
              v25 = v16[1] & 0x3F;
              if ((v17 & 0x10) != 0)
              {
                if ((v17 & 8) != 0)
                {
                  v27 = v16[2] & 0x3F;
                  v28 = v16[3] & 0x3F;
                  v29 = v16[4] & 0x3F;
                  if ((v17 & 4) != 0)
                  {
                    v17 = ((v17 & 1) << 30) | (v25 << 24) | (v27 << 18) | (v28 << 12) | (v29 << 6) | v16[5] & 0x3F;
                    v16 += 6;
                  }

                  else
                  {
                    v17 = ((v17 & 3) << 24) | (v25 << 18) | (v27 << 12) | (v28 << 6) | v29;
                    v16 += 5;
                  }
                }

                else
                {
                  v17 = ((v17 & 7) << 18) | (v25 << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
                  v16 += 4;
                }
              }

              else
              {
                v17 = ((v17 & 0xF) << 12) | (v25 << 6) | v16[2] & 0x3F;
                v16 += 3;
              }
            }

            else
            {
              v20 = v16[1];
              v16 += 2;
              v17 = v20 & 0x3F | ((v17 & 0x1F) << 6);
            }

            v18 = *v10;
            if (v18 < 0xC0)
            {
              ++v10;
            }

            else if ((v18 & 0x20) != 0)
            {
              v26 = v10[1] & 0x3F;
              if ((v18 & 0x10) != 0)
              {
                if ((v18 & 8) != 0)
                {
                  v30 = v10[2] & 0x3F;
                  v31 = v10[3] & 0x3F;
                  v32 = v10[4] & 0x3F;
                  if ((v18 & 4) != 0)
                  {
                    v18 = ((v18 & 1) << 30) | (v26 << 24) | (v30 << 18) | (v31 << 12) | (v32 << 6) | v10[5] & 0x3F;
                    v10 += 6;
                  }

                  else
                  {
                    v18 = ((v18 & 3) << 24) | (v26 << 18) | (v30 << 12) | (v31 << 6) | v32;
                    v10 += 5;
                  }
                }

                else
                {
                  v18 = ((v18 & 7) << 18) | (v26 << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
                  v10 += 4;
                }
              }

              else
              {
                v18 = ((v18 & 0xF) << 12) | (v26 << 6) | v10[2] & 0x3F;
                v10 += 3;
              }
            }

            else
            {
              v21 = v10[1];
              v10 += 2;
              v18 = v21 & 0x3F | ((v18 & 0x1F) << 6);
            }
          }

          else
          {
            v19 = *v10++;
            v18 = v19;
            ++v16;
          }

          if (v17 != v18)
          {
            v22 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v18 & 0x7F | (_pcre2_ucd_stage1_8[v18 >> 7] << 7)]];
            if (v17 != v22[1] + v18)
            {
              v23 = (&_pcre2_ucd_caseless_sets_8 + 4 * *(v22 + 3));
              do
              {
                v24 = *v23;
                if (v17 < *v23)
                {
                  return 0xFFFFFFFFLL;
                }

                ++v23;
              }

              while (v17 != v24);
            }
          }

          if (v10 >= v14)
          {
            goto LABEL_58;
          }
        }

        return 1;
      }
    }

    else if (v12)
    {
      v16 = (v8 + v12);
      v38 = v7 - v11;
      v39 = *(a3 + 80);
      while (v39 < *(a4 + 168))
      {
        if (*(*(a4 + 88) + *v10) != *(*(a4 + 88) + *v39))
        {
          return 0xFFFFFFFFLL;
        }

        ++v10;
        ++v39;
        v37 = __CFADD__(v38++, 1);
        if (v37)
        {
          goto LABEL_58;
        }
      }

      return 1;
    }

    goto LABEL_57;
  }

  if (*(a4 + 128))
  {
    if (v12)
    {
      v16 = (v8 + v12);
      v35 = v7 - v11;
      v36 = *(a3 + 80);
      while (v36 < *(a4 + 168))
      {
        if (*v10 != *v36)
        {
          return 0xFFFFFFFFLL;
        }

        ++v36;
        ++v10;
        v37 = __CFADD__(v35++, 1);
        if (v37)
        {
          goto LABEL_58;
        }
      }

      return 1;
    }

LABEL_57:
    v16 = *(a3 + 80);
LABEL_58:
    v34 = &v16[-v8];
    goto LABEL_59;
  }

  if (*(a4 + 168) - v8 >= v12)
  {
    if (!memcmp(v10, *(a3 + 80), v11 - v7))
    {
      v16 = (v8 + v12);
      goto LABEL_58;
    }

    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t do_callout(uint64_t a1, void *a2, uint64_t *a3)
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
  v6 = a2[35];
  if (!v6)
  {
    return 0;
  }

  v7 = a2[33];
  v8 = *(a1 + 108);
  *(v7 + 8) = (*(a1 + 120) >> 1) + 1;
  *(v7 + 12) = v8;
  v9 = a2[26];
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
  result = v6(v7, a2[34]);
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  *(v7 + 104) = 0;
  return result;
}

uint64_t _pcre2_study_8(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v2 = *(a1 + 88);
  v3 = a1 + *(a1 + 134) * *(a1 + 132);
  v4 = *(a1 + 96);
  if ((v4 & 0x210) != 0)
  {
    goto LABEL_2;
  }

  v31[0] = 0;
  started = set_start_bits(a1, (v3 + 136), (v2 >> 19) & 1, (v2 >> 17) & 1, v31);
  if (started == 1)
  {
    v8 = 0;
    v9 = (a1 + 40);
    v10 = 0xFFFFFFFFLL;
    v11 = -8;
    v12 = -1;
    while (1)
    {
      v13 = v10;
      v11 += 8;
      v14 = *v9;
      if (*v9)
      {
        if ((v14 & (v14 - 1)) != 0)
        {
          goto LABEL_54;
        }

        v15 = v8 | 6;
        v16 = v8 | 7;
        if (v14 != 128)
        {
          v16 = v11;
        }

        if (v14 != 64)
        {
          v15 = v16;
        }

        v17 = v8 | 4;
        v18 = v8 | 5;
        if (v14 != 32)
        {
          v18 = v11;
        }

        if (v14 != 16)
        {
          v17 = v18;
        }

        if (*v9 <= 0x3Fu)
        {
          v15 = v17;
        }

        v19 = v8 | 1;
        v20 = v8 | 2;
        v21 = v8 | 3;
        if (v14 != 8)
        {
          v21 = v11;
        }

        if (v14 != 4)
        {
          v20 = v21;
        }

        if (v14 != 2)
        {
          v19 = v20;
        }

        v10 = *v9 <= 0xFu ? v19 : v15;
        if ((v2 & 0x80000) != 0 && v10 > 0x7F)
        {
LABEL_54:
          v25 = *(a1 + 96);
LABEL_55:
          v26 = 64;
          goto LABEL_56;
        }

        if ((v12 & 0x80000000) == 0)
        {
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          v22 = *(*(a1 + 24) + v10 + 256);
          if ((v2 & 0xA0000) != 0)
          {
            v23 = v10 - 128;
            if (v10 < 0x80)
            {
              v23 = v10;
            }

            v24 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[128 * _pcre2_ucd_stage1_8[v10 > 0x7F] + v23]];
            if (*(v24 + 3))
            {
              goto LABEL_54;
            }

            if (v10 >= 0x80)
            {
              v22 = v24[1] + v10;
            }
          }

          if (v22 != v12)
          {
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        v12 = v10;
      }

      v10 = v13;
LABEL_47:
      ++v9;
      v8 += 8;
      if (v11 >= 0xF8)
      {
        v25 = *(a1 + 96);
        if (v12 < 0)
        {
          goto LABEL_55;
        }

        if ((v25 & 0x80) != 0)
        {
          v29 = *(a1 + 116);
          if (v29 == v12 || (v10 & 0x80000000) == 0 && v29 == v10)
          {
            goto LABEL_55;
          }
        }

        *(a1 + 112) = v12;
        if (v10 < 0)
        {
          v26 = 16;
        }

        else
        {
          v26 = 48;
        }

LABEL_56:
        v4 = v25 | v26;
        *(a1 + 96) = v4;
LABEL_2:
        if ((v4 & 0x802000) == 0 && *(a1 + 130) <= 0x80u)
        {
          v31[0] = 0;
          minlength = find_minlength(a1, (v3 + 136), (v3 + 136), (v2 >> 19) & 1, 0, &v30, v31);
          if (minlength != -1)
          {
            if (minlength == -2)
            {
              result = 2;
              goto LABEL_63;
            }

            if (minlength == -3)
            {
              result = 3;
              goto LABEL_63;
            }

            if (minlength >= 0xFFFF)
            {
              v27 = -1;
            }

            else
            {
              v27 = minlength;
            }

            *(a1 + 126) = v27;
          }
        }

        result = 0;
        goto LABEL_63;
      }
    }
  }

  if (started != 3)
  {
    v4 = *(a1 + 96);
    goto LABEL_2;
  }

  result = 1;
LABEL_63:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t set_start_bits(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 32;
  }

  v6 = (*a5)++;
  if (v6 > 999)
  {
    return 4;
  }

  v11 = a2;
  v13 = *a2;
  v14 = (a1 + 40);
  v15 = 1;
LABEL_7:
  v16 = v13 - 136;
  v17 = v16 > 6;
  v18 = (1 << v16) & 0x63;
  if (v17 || v18 == 0)
  {
    v20 = v11 + 3;
  }

  else
  {
    v20 = v11 + 5;
  }

  while (2)
  {
    v21 = *v20;
    result = 3;
    v22 = 0;
    v23 = 2;
    switch(*v20)
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
      case 0x8Au:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
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
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
        return 0;
      case 4u:
      case 5u:
      case 0x57u:
      case 0x58u:
      case 0x5Fu:
        ++v20;
        continue;
      case 6u:
        v71 = (*(a1 + 24) + 576);
        v72 = v14;
        v73 = v5;
        do
        {
          v74 = *v71++;
          *v72++ |= ~v74;
          --v73;
        }

        while (v73);
        goto LABEL_149;
      case 7u:
        v69 = a1;
        v70 = 64;
        goto LABEL_146;
      case 8u:
        v75 = (*(a1 + 24) + 512);
        v76 = v14;
        v77 = v5;
        do
        {
          v78 = *v75++;
          *v76++ |= ~v78;
          --v77;
        }

        while (v77);
        goto LABEL_149;
      case 9u:
        v69 = a1;
        v70 = 0;
        goto LABEL_146;
      case 0xAu:
        v83 = (*(a1 + 24) + 672);
        v84 = v14;
        v85 = v5;
        do
        {
          v86 = *v83++;
          *v84++ |= ~v86;
          --v85;
        }

        while (v85);
LABEL_149:
        if (a3)
        {
          *(a1 + 64) = -1;
        }

        goto LABEL_154;
      case 0xBu:
        v69 = a1;
        v70 = 160;
LABEL_146:
        set_type_bits(v69, v70, v5);
        goto LABEL_154;
      case 0x10u:
        if (v20[1] == 9)
        {
          v79 = v20[2];
          v80 = _pcre2_ucd_caseless_sets_8[v79];
          if (v80 == -1)
          {
LABEL_154:
            v23 = v15;
            goto LABEL_155;
          }

          v81 = &_pcre2_ucd_caseless_sets_8[v79 + 1];
          while (!a3)
          {
            if (v80 < 0x100)
            {
              goto LABEL_142;
            }

            *(a1 + 71) |= 0x80u;
LABEL_143:
            v82 = *v81++;
            v80 = v82;
            if (v82 == -1)
            {
              goto LABEL_154;
            }
          }

          _pcre2_ord2utf_8(v80, v87);
          v80 = v87[0];
LABEL_142:
          v14[v80 >> 3] |= 1 << (v80 & 7);
          goto LABEL_143;
        }

        return 0;
      case 0x11u:
      case 0x15u:
        *(a1 + 41) |= 0x3Cu;
        if (a3)
        {
          *(a1 + 64) |= 4u;
          v65 = *(a1 + 68) | 4;
          goto LABEL_128;
        }

        *(a1 + 56) |= 0x20u;
        goto LABEL_154;
      case 0x13u:
        *(a1 + 41) |= 2u;
        *(a1 + 44) |= 1u;
        if (a3)
        {
          *(a1 + 64) |= 4u;
          v65 = *(a1 + 68) | 0xE;
LABEL_128:
          *(a1 + 68) = v65;
        }

        else
        {
          *(a1 + 60) |= 1u;
        }

        goto LABEL_154;
      case 0x1Bu:
        ++v20;
        continue;
      case 0x1Du:
      case 0x23u:
      case 0x24u:
      case 0x2Bu:
        goto LABEL_152;
      case 0x1Eu:
      case 0x30u:
      case 0x31u:
      case 0x38u:
        goto LABEL_123;
      case 0x21u:
      case 0x22u:
      case 0x25u:
      case 0x26u:
      case 0x2Au:
      case 0x2Cu:
        v24 = v20 + 1;
        goto LABEL_41;
      case 0x27u:
      case 0x28u:
      case 0x2Du:
        v24 = v20 + 3;
LABEL_41:
        v30 = a1;
        v31 = 0;
        goto LABEL_44;
      case 0x29u:
        v20 += 2;
LABEL_152:
        v66 = v20 + 1;
        v67 = a1;
        v68 = 0;
        goto LABEL_153;
      case 0x2Eu:
      case 0x2Fu:
      case 0x32u:
      case 0x33u:
      case 0x37u:
      case 0x39u:
        v24 = v20 + 1;
        goto LABEL_43;
      case 0x34u:
      case 0x35u:
      case 0x3Au:
        v24 = v20 + 3;
LABEL_43:
        v30 = a1;
        v31 = 1;
LABEL_44:
        v20 = set_table_bit(v30, v24, v31, a3, a4);
        continue;
      case 0x36u:
        v20 += 2;
LABEL_123:
        v66 = v20 + 1;
        v67 = a1;
        v68 = 1;
LABEL_153:
        set_table_bit(v67, v66, v68, a3, a4);
        goto LABEL_154;
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
        v20 += 2;
LABEL_27:
        result = 0;
        v25 = v20[1];
        if (v25 <= 9)
        {
          if (v20[1] > 7u)
          {
            if (v25 != 8)
            {
              if (v25 != 9)
              {
                return result;
              }

              v28 = a1;
              v29 = 0;
              goto LABEL_51;
            }

            v50 = (*(a1 + 24) + 512);
            v51 = v14;
            v52 = v5;
            do
            {
              v53 = *v50++;
              *v51++ |= ~v53;
              --v52;
            }

            while (v52);
          }

          else
          {
            if (v25 != 6)
            {
              if (v25 != 7)
              {
                return result;
              }

              v28 = a1;
              v29 = 64;
LABEL_51:
              set_type_bits(v28, v29, v5);
              goto LABEL_117;
            }

            v46 = (*(a1 + 24) + 576);
            v47 = v14;
            v48 = v5;
            do
            {
              v49 = *v46++;
              *v47++ |= ~v49;
              --v48;
            }

            while (v48);
          }

          goto LABEL_94;
        }

        if (v20[1] <= 0x10u)
        {
          if (v25 != 10)
          {
            if (v25 != 11)
            {
              return result;
            }

            v28 = a1;
            v29 = 160;
            goto LABEL_51;
          }

          v54 = (*(a1 + 24) + 672);
          v55 = v14;
          v56 = v5;
          do
          {
            v57 = *v54++;
            *v55++ |= ~v57;
            --v56;
          }

          while (v56);
LABEL_94:
          if (a3)
          {
            *(a1 + 64) = -1;
          }

          goto LABEL_117;
        }

        if (v25 == 17 || v25 == 21)
        {
          *(a1 + 41) |= 0x3Cu;
          if (a3)
          {
            *(a1 + 64) |= 4u;
            v27 = *(a1 + 68) | 4;
LABEL_55:
            *(a1 + 68) = v27;
            goto LABEL_117;
          }

          *(a1 + 56) |= 0x20u;
        }

        else
        {
          if (v25 != 19)
          {
            return result;
          }

          *(a1 + 41) |= 2u;
          *(a1 + 44) |= 1u;
          if (a3)
          {
            *(a1 + 64) |= 4u;
            v27 = *(a1 + 68) | 0xE;
            goto LABEL_55;
          }

          *(a1 + 60) |= 1u;
        }

LABEL_117:
        v20 += 2;
        continue;
      case 0x5Du:
        goto LABEL_25;
      case 0x6Eu:
        goto LABEL_82;
      case 0x6Fu:
        goto LABEL_78;
      case 0x70u:
        result = 0;
        v33 = v20[3];
        if ((v33 & 4) != 0 || (v33 & 3) == 1)
        {
          return result;
        }

        if ((v20[3] & 2) != 0)
        {
          v22 = v20 + 4;
        }

        else
        {
          v22 = 0;
        }

        if (!a3 || (v20[3] & 1) != 0)
        {
LABEL_78:
          if (a3)
          {
            *(a1 + 64) |= 0xF0u;
            *(a1 + 65) = -1;
            *(a1 + 68) = -1;
            v21 = *v20;
          }

          if (v21 != 112)
          {
LABEL_82:
            v22 = v20 + 1;
            v45 = v20 + 33;
            goto LABEL_99;
          }

          v35 = __rev16(*(v20 + 1));
        }

        else
        {
          v34 = &v20[16 * (v33 & 2) + 4];
          v35 = __rev16(*(v20 + 1));
          while (1)
          {
            while (1)
            {
              v36 = v34 + 1;
              v37 = *v34;
              if (v37 != 1)
              {
                break;
              }

              v43 = *v36;
              do
              {
                v44 = *++v36;
              }

              while ((v44 & 0xC0) == 0x80);
              v14[v43 >> 3] |= 1 << (v43 & 7);
              v34 = v36;
            }

            if (v37 != 2)
            {
              break;
            }

            v39 = *++v34;
            v38 = v39;
            do
            {
              v41 = *++v34;
              v40 = v41;
            }

            while ((v41 & 0xC0) == 0x80);
            do
            {
              v42 = *++v34;
            }

            while ((v42 & 0xC0) == 0x80);
            if (v38 <= v40)
            {
              do
              {
                v14[v38 >> 3] |= 1 << (v38 & 7);
                ++v38;
              }

              while (v40 >= v38);
            }
          }

          if (*v34)
          {
            return 3;
          }
        }

        v45 = &v20[v35];
        if (!v22)
        {
          goto LABEL_108;
        }

LABEL_99:
        v58 = 0;
        if (a3)
        {
          do
          {
            v14[v58] |= v22[v58];
            ++v58;
          }

          while (v58 != 16);
          v59 = 128;
          do
          {
            if ((v22[v59 >> 3] >> (v59 & 7)))
            {
              *(a1 + 64) |= 1 << (v59 >> 6);
              v59 |= 0x3Fu;
            }
          }

          while (v59++ < 0xFF);
        }

        else
        {
          do
          {
            v14[v58] |= v22[v58];
            ++v58;
          }

          while (v58 != 32);
        }

LABEL_108:
        v61 = *v45 - 98;
        if (v61 > 0xB)
        {
          goto LABEL_154;
        }

        v62 = 1 << v61;
        if ((v62 & 0x533) != 0)
        {
          v20 = v45 + 1;
        }

        else
        {
          if ((v62 & 0x8C0) == 0)
          {
            goto LABEL_154;
          }

          v63 = __rev16(*(v45 + 1));
          v64 = 5;
          if (v63)
          {
            v64 = 0;
          }

          v20 = &v45[v64];
          if (v63)
          {
            goto LABEL_154;
          }
        }

        continue;
      case 0x76u:
        v20 += 6;
        continue;
      case 0x77u:
        v20 += __rev16(*(v20 + 5));
        continue;
      case 0x78u:
        goto LABEL_155;
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
        return 2;
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
        result = set_start_bits(a1, v20, a3, a4, a5);
        if (result == 2)
        {
          do
          {
            v20 += __rev16(*(v20 + 1));
          }

          while (*v20 == 120);
LABEL_25:
          v20 += 3;
          continue;
        }

        v23 = v15;
        if (result != 1)
        {
          return result;
        }

LABEL_155:
        v11 += __rev16(*(v11 + 1));
        v13 = 120;
        v15 = v23;
        result = v23;
        if (*v11 != 120)
        {
          return result;
        }

        goto LABEL_7;
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x83u:
        do
        {
          v20 += __rev16(*(v20 + 1));
        }

        while (*v20 == 120);
        goto LABEL_25;
      case 0x96u:
      case 0x97u:
      case 0x98u:
        result = set_start_bits(a1, ++v20, a3, a4, a5);
        if (result <= 4 && ((1 << result) & 0x19) != 0)
        {
          return result;
        }

        do
        {
          v20 += __rev16(*(v20 + 1));
        }

        while (*v20 == 120);
        goto LABEL_25;
      case 0xA6u:
        v32 = v20 + 1;
        do
        {
          v32 += __rev16(*(v32 + 1));
        }

        while (*v32 == 120);
        v20 = v32 + 3;
        continue;
      default:
        return result;
    }
  }
}

uint64_t find_minlength(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  v7 = *a2;
  if ((v7 - 139) >= 5)
  {
    v84 = *(a1 + 96);
    v9 = a2[1];
    v10 = a2[2];
    v11 = (*a6)++;
    if (v11 > 1000)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = a7;
    v14 = 0;
    v83 = 0;
    v77 = 0;
    v15 = 0;
    v26 = (v7 & 0xFE) == 136;
    v16 = 3;
    if (v26)
    {
      v16 = 5;
    }

    v17 = &a2[v16];
    v18 = &a2[v10 | (v9 << 8)];
    v76 = a1 + 136;
    v79 = a7 + 1;
    v85 = 0;
    v86 = -1;
    v82 = -1;
    v78 = -1;
    v90 = a4;
    v89 = a1;
    while (1)
    {
      if (v14 <= 65534)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0xFFFFLL;
      }

      if (v14 <= 65534)
      {
        v20 = v17;
      }

      else
      {
        v20 = v18;
      }

      v21 = *v20;
      v22 = v15;
      v8 = 0xFFFFFFFFLL;
      switch(*v20)
      {
        case 0u:
        case 0x78u:
        case 0x79u:
        case 0x7Au:
        case 0x7Bu:
        case 0x7Cu:
          v8 = v86;
          if (v86 < 0 || !v85 && v19 < v86)
          {
            v8 = v19;
          }

          v26 = v21 != 120 || v8 == 0;
          if (!v26)
          {
            v85 = 0;
            v86 = v8;
            v14 = 0;
            v18 = &v20[__rev16(*(v20 + 1))];
            goto LABEL_45;
          }

          return v8;
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
        case 0x90u:
        case 0x91u:
        case 0x92u:
        case 0x93u:
        case 0x94u:
        case 0x95u:
          goto LABEL_20;
        case 3u:
        case 0x9Au:
        case 0x9Cu:
        case 0x9Eu:
        case 0xA0u:
        case 0xA2u:
        case 0xA5u:
          v24 = _pcre2_OP_lengths_8[v21];
          goto LABEL_26;
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
          goto LABEL_109;
        case 0xEu:
          if (!a4)
          {
            goto LABEL_109;
          }

          return v8;
        case 0xFu:
        case 0x10u:
          v20 += 2;
LABEL_109:
          v14 = v19 + 1;
          v17 = v20 + 1;
          continue;
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
          v14 = v19 + 1;
          v17 = v20 + 2;
          if (!a4)
          {
            continue;
          }

          v25 = v20[1];
          goto LABEL_23;
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
          v17 = &v20[_pcre2_OP_lengths_8[v21]];
          v14 = v19;
          if (!a4)
          {
            continue;
          }

          v23 = *(v17 - 1);
          v14 = v19;
          if (v23 < 0xC0)
          {
            continue;
          }

          v17 += _pcre2_utf8_table4[v23 & 0x3F];
          goto LABEL_55;
        case 0x29u:
        case 0x36u:
        case 0x43u:
        case 0x50u:
          v14 = v19 + (bswap32(*(v20 + 1)) >> 16);
          v17 = v20 + 4;
          if (!a4)
          {
            continue;
          }

          v25 = v20[3];
LABEL_23:
          if (v25 >= 0xC0)
          {
            v17 += _pcre2_utf8_table4[v25 & 0x3F];
          }

          continue;
        case 0x55u:
        case 0x56u:
        case 0x59u:
        case 0x5Au:
        case 0x5Eu:
        case 0x60u:
          v27 = v20[1];
          goto LABEL_53;
        case 0x57u:
        case 0x58u:
        case 0x5Fu:
          v14 = v19 + 1;
          v35 = v20[1] - 15 >= 2;
          v36 = 2;
          v37 = 4;
          goto LABEL_112;
        case 0x5Bu:
        case 0x5Cu:
        case 0x61u:
          v27 = v20[3];
LABEL_53:
          v29 = &v20[2 * ((v27 - 15) < 2)];
          v28 = _pcre2_OP_lengths_8[v21];
          goto LABEL_54;
        case 0x5Du:
          v14 = v19 + (bswap32(*(v20 + 1)) >> 16);
          v35 = v20[3] - 15 >= 2;
          v36 = 4;
          v37 = 6;
LABEL_112:
          if (!v35)
          {
            v36 = v37;
          }

          v17 = &v20[v36];
          v15 = v22;
          continue;
        case 0x6Eu:
        case 0x6Fu:
        case 0x70u:
          if (v21 == 112)
          {
            v34 = __rev16(*(v20 + 1));
          }

          else
          {
            v34 = 33;
          }

          v17 = &v20[v34];
          v62 = *v17 - 98;
          if (v62 > 0xB)
          {
            v14 = v19 + 1;
          }

          else
          {
            v63 = 1 << v62;
            if ((v63 & 0x533) == 0)
            {
              if ((v63 & 0x20C) == 0)
              {
                v14 = v19 + (bswap32(*(v17 + 1)) >> 16);
                v17 += 5;
                continue;
              }

              LODWORD(v19) = v19 + 1;
            }

            ++v17;
LABEL_55:
            v14 = v19;
          }

          continue;
        case 0x71u:
        case 0x72u:
          v55 = v20[1];
          v56 = v20[2];
          v57 = v56 | (v55 << 8);
          if (v57 <= *v13)
          {
            LODWORD(v41) = v13[v57];
            if ((v41 & 0x80000000) == 0)
            {
              goto LABEL_143;
            }
          }

          if ((*(a1 + 89) & 2) != 0)
          {
            LODWORD(v41) = 0;
            goto LABEL_140;
          }

          bracket_8 = _pcre2_find_bracket_8(a3, a4, v20[2] | (v20[1] << 8));
          if (!bracket_8)
          {
            return 4294967294;
          }

          v59 = bracket_8;
          v60 = bracket_8;
          do
          {
            v60 += __rev16(*(v60 + 1));
          }

          while (*v60 == 120);
          a4 = v90;
          if ((v84 & 0x200000) != 0)
          {
            v61 = _pcre2_find_bracket_8(v60, v90, v57);
            a4 = v90;
            if (v61)
            {
              LODWORD(v41) = 0;
LABEL_126:
              a1 = v89;
              goto LABEL_140;
            }
          }

          if (v20 > v59 && v20 < v60)
          {
            LODWORD(v41) = 0;
            v85 = 1;
            goto LABEL_126;
          }

          a1 = v89;
          if (a5)
          {
            v70 = a5;
            while (v70[1] != v59)
            {
              v70 = *v70;
              if (!v70)
              {
                goto LABEL_139;
              }
            }

            LODWORD(v41) = 0;
            v85 = 1;
          }

          else
          {
LABEL_139:
            minlength = find_minlength(v89);
            a4 = v90;
            v41 = minlength;
            a1 = v89;
            v8 = v41;
            if ((v41 & 0x80000000) != 0)
            {
              return v8;
            }
          }

LABEL_140:
          v13[v57] = v41;
          v72 = *v13;
          if (v72 + 1 < v57)
          {
            memset(&v79[v72], 255, 4 * ((v55 << 8) + v56 - v72 - 2) + 4);
            a1 = v89;
            a4 = v90;
          }

          *v13 = v57;
LABEL_143:
          v53 = 3;
LABEL_144:
          v17 = &v20[v53];
          v73 = 1;
          v74 = *v17 - 98;
          if (v74 <= 0xB)
          {
            if (((1 << v74) & 0x533) != 0)
            {
              v73 = 0;
              ++v17;
            }

            else if (((1 << v74) & 0x20C) != 0)
            {
              ++v17;
              v73 = 1;
            }

            else
            {
              v73 = __rev16(*(v17 + 1));
              v17 += 5;
            }
          }

          if (v41 < 1 || (v14 = 0xFFFF, v15 = v22, 0x7FFFFFFF / v41 >= v73))
          {
            v75 = v73 * v41;
            if (0xFFFF - v19 >= v75)
            {
              v14 = v75 + v19;
            }

            else
            {
              v14 = 0xFFFF;
            }

            v15 = v22;
          }

          break;
        case 0x73u:
        case 0x74u:
          if ((v84 & 0x200000) != 0 || (*(a1 + 89) & 2) != 0)
          {
            LODWORD(v41) = 0;
            goto LABEL_102;
          }

          v38 = __rev16(*(v20 + 3));
          if (!v38)
          {
            LODWORD(v41) = 0x7FFFFFFF;
            goto LABEL_102;
          }

          v39 = (v76 + *(a1 + 132) * __rev16(*(v20 + 1)));
          v40 = *v13;
          LODWORD(v41) = 0x7FFFFFFF;
          while (2)
          {
            v42 = v13;
            v43 = *v39;
            v44 = v39[1] | (v43 << 8);
            if (v44 <= v40)
            {
              LODWORD(v8) = v42[v44];
              if ((v8 & 0x80000000) == 0)
              {
                v44 = v40;
                v13 = v42;
                goto LABEL_78;
              }
            }

            v80 = v39[1];
            v81 = v38;
            v45 = _pcre2_find_bracket_8(a3, a4, v44);
            if (!v45)
            {
              return 4294967294;
            }

            v46 = v45;
            v47 = v43 << 8;
            v48 = v45;
            do
            {
              v48 += __rev16(*(v48 + 1));
            }

            while (*v48 == 120);
            v13 = v42;
            a4 = v90;
            a1 = v89;
            if (v20 > v46 && v20 < v48)
            {
              goto LABEL_69;
            }

            if (a5)
            {
              v49 = a5;
              while (v49[1] != v46)
              {
                v49 = *v49;
                if (!v49)
                {
                  goto LABEL_74;
                }
              }

LABEL_69:
              LODWORD(v8) = 0;
              v85 = 1;
            }

            else
            {
LABEL_74:
              v50 = v47;
              v51 = find_minlength(v89);
              v47 = v50;
              a4 = v90;
              v8 = v51;
              a1 = v89;
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }
            }

            v13[v44] = v8;
            v52 = *v13;
            if (v52 + 1 < v44)
            {
              memset(&v79[v52], 255, 4 * (v47 + v80 - v52 - 2) + 4);
              a1 = v89;
              a4 = v90;
            }

            *v13 = v44;
            v38 = v81;
LABEL_78:
            if (v8 < v41)
            {
              LODWORD(v41) = v8;
            }

            if (v8)
            {
              v39 += *(a1 + 132);
              v53 = 5;
              v40 = v44;
              if (v38-- <= 1)
              {
                goto LABEL_144;
              }

              continue;
            }

            break;
          }

LABEL_102:
          v53 = 5;
          goto LABEL_144;
        case 0x75u:
          v65 = &a3[__rev16(*(v20 + 1))];
          v66 = __rev16(*(v65 + 3));
          v67 = v65;
          if (v66 == v78)
          {
            LODWORD(v19) = v77 + v19;
            goto LABEL_133;
          }

          do
          {
            v67 += __rev16(*(v67 + 1));
          }

          while (*v67 == 120);
          if (v20 > v65 && v20 < v67)
          {
            goto LABEL_120;
          }

          if (a5)
          {
            v68 = a5;
            while (v68[1] != v65)
            {
              v68 = *v68;
              if (!v68)
              {
                goto LABEL_131;
              }
            }

LABEL_120:
            v85 = 1;
          }

          else
          {
LABEL_131:
            v69 = find_minlength(a1);
            if ((v69 & 0x80000000) != 0)
            {
              return v69;
            }

            v77 = v69;
            v78 = v66;
            LODWORD(v19) = v69 + v19;
            a4 = v90;
            a1 = v89;
          }

LABEL_133:
          v15 = 0;
          v17 = &v20[v22 + 3];
          v14 = v19;
          continue;
        case 0x77u:
          v24 = __rev16(*(v20 + 5));
          goto LABEL_26;
        case 0x7Eu:
        case 0x7Fu:
        case 0x80u:
        case 0x81u:
        case 0x82u:
        case 0x83u:
          do
          {
            v20 += __rev16(*(v20 + 1));
            LODWORD(v21) = *v20;
          }

          while (v21 == 120);
LABEL_20:
          v24 = _pcre2_OP_lengths_8[v21];
LABEL_26:
          v17 = &v20[v24];
          goto LABEL_55;
        case 0x84u:
        case 0x85u:
        case 0x87u:
        case 0x8Bu:
        case 0x8Cu:
          goto LABEL_105;
        case 0x86u:
          v17 = v20 + 3;
          if (v20[3] == 117)
          {
            v15 = 3;
            v14 = v19;
            if (v20[6] == 121)
            {
              continue;
            }
          }

          goto LABEL_105;
        case 0x88u:
        case 0x89u:
        case 0x8Du:
        case 0x8Eu:
          v30 = __rev16(*(v20 + 3));
          if ((v84 & 0x200000) != 0 || v30 != v82)
          {
            v31 = find_minlength(v89);
            a4 = v90;
            v32 = v31;
            a1 = v89;
            v82 = v30;
            v83 = v32;
            v8 = v32;
            if ((v32 & 0x80000000) != 0)
            {
              return v8;
            }
          }

          do
          {
            v20 += __rev16(*(v20 + 1));
          }

          while (*v20 == 120);
          v14 = v83 + v19;
LABEL_45:
          v17 = v20 + 3;
          v15 = v22;
          continue;
        case 0x8Au:
        case 0x8Fu:
          v33 = &v20[__rev16(*(v20 + 1))];
          if (*v33 != 120)
          {
            goto LABEL_48;
          }

LABEL_105:
          v64 = find_minlength(a1);
          v8 = v64;
          if ((v64 & 0x80000000) != 0)
          {
            return v8;
          }

          do
          {
            v20 += __rev16(*(v20 + 1));
          }

          while (*v20 == 120);
          v14 = v64 + v19;
          v17 = v20 + 3;
          v15 = v22;
          a4 = v90;
          a1 = v89;
          continue;
        case 0x96u:
        case 0x97u:
        case 0x98u:
        case 0xA6u:
          v33 = &v20[_pcre2_OP_lengths_8[v21]];
          do
          {
            v33 += __rev16(*(v33 + 1));
          }

          while (*v33 == 120);
LABEL_48:
          v17 = v33 + 3;
          goto LABEL_55;
        case 0x99u:
        case 0x9Bu:
        case 0x9Du:
        case 0x9Fu:
        case 0xA1u:
          v28 = _pcre2_OP_lengths_8[v21];
          v29 = &v20[v20[1]];
LABEL_54:
          v17 = &v29[v28];
          goto LABEL_55;
        case 0xA3u:
        case 0xA4u:
          return v8;
        default:
          return 4294967293;
      }
    }
  }

  return 0;
}

unsigned __int8 *set_table_bit(uint64_t a1, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v6 = a2 + 1;
  v5 = *a2;
  v7 = a1 + 40;
  *(a1 + 40 + (v5 >> 3)) |= 1 << (v5 & 7);
  if (a4 && v5 >= 0xC0)
  {
    if ((v5 & 0x20) != 0)
    {
      if ((v5 & 0x10) != 0)
      {
        if ((v5 & 8) != 0)
        {
          v8 = a2[1] & 0x3F;
          v9 = a2[2] & 0x3F;
          v10 = a2[3] & 0x3F;
          v11 = a2[4] & 0x3F;
          if ((v5 & 4) != 0)
          {
            LODWORD(v5) = ((v5 & 1) << 30) | (v8 << 24) | (v9 << 18) | (v10 << 12) | (v11 << 6) | a2[5] & 0x3F;
            v6 = a2 + 6;
          }

          else
          {
            LODWORD(v5) = ((v5 & 3) << 24) | (v8 << 18) | (v9 << 12) | (v10 << 6) | v11;
            v6 = a2 + 5;
          }
        }

        else
        {
          LODWORD(v5) = ((v5 & 7) << 18) | ((a2[1] & 0x3F) << 12) | ((a2[2] & 0x3F) << 6) | a2[3] & 0x3F;
          v6 = a2 + 4;
        }
      }

      else
      {
        LODWORD(v5) = ((v5 & 0xF) << 12) | ((a2[1] & 0x3F) << 6) | a2[2] & 0x3F;
        v6 = a2 + 3;
      }
    }

    else
    {
      v6 = a2 + 2;
      LODWORD(v5) = a2[1] & 0x3F | ((v5 & 0x1F) << 6);
    }
  }

  if (a3)
  {
    if (!(a5 | a4))
    {
      v13 = *(*(a1 + 24) + v5 + 256);
      goto LABEL_17;
    }

    v12 = (_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v5 & 0x7F | (_pcre2_ucd_stage1_8[v5 >> 7] << 7)] + 1] + v5);
    if (a4)
    {
      _pcre2_ord2utf_8(v12, v15);
      v13 = v15[0];
LABEL_17:
      *(v7 + (v13 >> 3)) |= 1 << (v13 & 7);
      return v6;
    }

    if (v12 <= 0xFF)
    {
      *(v7 + (v12 >> 3)) |= 1 << (v12 & 7);
    }
  }

  return v6;
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

uint64_t pcre2_serialize_encode_8(size_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
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
        v19 = *v6;
        *(v17 + 16) = *(v6 + 2);
        *v17 = v19;
        *(v17 + 24) = 0x24000A50523253;
        v20 = v17 + 24;
        *(v17 + 32) = 526337;
        *(v17 + 36) = a2;
        memcpy((v17 + 40), v11, 0x440uLL);
        v21 = (v18 + 1128);
        do
        {
          v22 = *a1++;
          memcpy(v21, v22, v22[9]);
          *v21 = 0;
          v21[1] = 0;
          v21[3] = 0;
          v21[4] = 0;
          v21[2] = 0;
          v21 = (v21 + v22[9]);
          --v12;
        }

        while (v12);
        *a3 = v20;
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

uint64_t pcre2_serialize_encode_mm_8(size_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
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
      v13 = 1112;
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
        v19 = *v6;
        *(v17 + 16) = *(v6 + 2);
        *v17 = v19;
        *(v17 + 24) = 0x24000A50523253;
        v20 = v17 + 24;
        *(v17 + 32) = 526337;
        *(v17 + 36) = a2;
        memcpy((v17 + 40), v11, 0x440uLL);
        *(v18 + 1128) = a2;
        v21 = (v18 + 1136);
        do
        {
          v22 = *a1++;
          memcpy(v21, v22, v22[9]);
          *v21 = 0;
          v21[1] = 0;
          v21[3] = 0;
          v21[4] = 0;
          v21[2] = 0;
          *(v21 + 24) |= 0x40000u;
          v21 = (v21 + v22[9]);
          --v12;
        }

        while (v12);
        *a3 = v20;
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
        if (a3[1] == 2359306)
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
          memcpy(v10, a3 + 4, 0x440uLL);
          v12 = 0;
          v11[136] = v5;
          v13 = a3 + 276;
          while (1)
          {
            v14 = *(v13 + 9);
            if (v14 < 0x89)
            {
              break;
            }

            v15 = _pcre2_memctl_malloc_8(*(v13 + 9), a4);
            if (!v15)
            {
              (*(v4 + 1))(v11, *(v4 + 2));
              if (!v12)
              {
                return 4294967248;
              }

              for (i = 0; i != v12; ++i)
              {
                (*(v4 + 1))(*(a1 + 8 * i), *(v4 + 2));
                *(a1 + 8 * i) = 0;
                v5 = 4294967248;
              }

              return v5;
            }

            v16 = v15;
            memcpy(v15 + 5, v13 + 10, v14 - 40);
            if (*(v16 + 20) != 1346589253 || *(v16 + 66) > 0x23u || *(v16 + 67) >= 0x2711u)
            {
              (*(v4 + 1))(v16, *(v4 + 2));
              return 4294967234;
            }

            v16[3] = v11;
            v16[4] = 0;
            *(v16 + 24) |= 0x40000u;
            *(a1 + 8 * v12) = v16;
            v13 = (v13 + v14);
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

uint64_t pcre2_serialize_decode_mm_8(void *a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 4294967245;
  }

  if (a2 < 1)
  {
    return 4294967267;
  }

  v3 = a3[3];
  if (v3 < 1)
  {
    return 4294967234;
  }

  if (*a3 != 1347564115)
  {
    return 4294967265;
  }

  if (a3[1] != 2359306)
  {
    return 4294967264;
  }

  if (v3 >= a2)
  {
    result = a2;
  }

  else
  {
    result = v3;
  }

  mapped_global_table = (a3 + 4);
  v6 = a3 + 278;
  v7 = result;
  do
  {
    *a1++ = v6;
    v6 = (v6 + *(v6 + 9));
    --v7;
  }

  while (v7);
  return result;
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

  if (a1[1] == 2359306)
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

  v7 = BYTE2(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[a1 - (v6 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v6 >> 7] << 7)]]);
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

    v11 = BYTE2(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v8 & 0x7F | (_pcre2_ucd_stage1_8[v8 >> 7] << 7)]]);
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
    if (BYTE2(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v15 & 0x7F | (_pcre2_ucd_stage1_8[v15 >> 7] << 7)]]) != 11)
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

void *pcre2_code_copy_8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*a1)(*(a1 + 72), *(a1 + 16));
  v3 = v2;
  if (v2)
  {
    memcpy(v2, a1, *(a1 + 72));
    v3[4] = 0;
    if ((*(a1 + 98) & 4) != 0)
    {
      ++*(*(a1 + 24) + 1088);
    }
  }

  return v3;
}

uint64_t pcre2_code_free_8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      _pcre2_jit_free_8(v2, v1);
    }

    if ((*(v1 + 98) & 4) != 0)
    {
      v3 = *(v1 + 24);
      v4 = *(v3 + 1088);
      if (v4)
      {
        v5 = v4 - 1;
        *(v3 + 1088) = v5;
        if (!v5)
        {
          v6 = *(v1 + 16);
          (*(v1 + 8))();
        }
      }
    }

    v8 = *(v1 + 8);
    v7 = *(v1 + 16);

    return v8(v1, v7);
  }

  return result;
}

uint64_t _pcre2_check_escape_8(unsigned __int8 **a1, unint64_t a2, int *a3, int *a4, unsigned int a5, char a6, int a7, uint64_t a8)
{
  v9 = *a1;
  if (*a1 >= a2)
  {
    result = 0;
    v16 = 101;
    goto LABEL_7;
  }

  v14 = v9 + 1;
  v13 = *v9;
  v67 = v9 + 1;
  if ((a5 & 0x80000) != 0 && v13 >= 0xC0)
  {
    if ((v13 & 0x20) != 0)
    {
      v17 = *v14 & 0x3F;
      if ((v13 & 0x10) != 0)
      {
        if ((v13 & 8) != 0)
        {
          v18 = v9[2] & 0x3F;
          v19 = v9[3] & 0x3F;
          v20 = v9[4] & 0x3F;
          if ((v13 & 4) != 0)
          {
            v13 = ((v13 & 1) << 30) | (v17 << 24) | (v18 << 18) | (v19 << 12) | (v20 << 6) | v9[5] & 0x3F;
            v14 = v9 + 6;
          }

          else
          {
            v13 = ((v13 & 3) << 24) | (v17 << 18) | (v18 << 12) | (v19 << 6) | v20;
            v14 = v9 + 5;
          }
        }

        else
        {
          v13 = ((v13 & 7) << 18) | (v17 << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v14 = v9 + 4;
        }
      }

      else
      {
        v13 = ((v13 & 0xF) << 12) | (v17 << 6) | v9[2] & 0x3F;
        v14 = v9 + 3;
      }

      v67 = v14;
    }

    else
    {
      v14 = v9 + 2;
      v67 = v9 + 2;
      v13 = v9[1] & 0x3F | ((v13 & 0x1F) << 6);
    }
  }

  *a4 = 0;
  if ((v13 - 123) < 0xFFFFFFB5)
  {
    goto LABEL_17;
  }

  v21 = escapes[v13 - 48];
  if (escapes[v13 - 48])
  {
    if (v21 >= 1)
    {
      if (v13 == 114)
      {
        result = 0;
        if ((a6 & 0x10) != 0)
        {
          v13 = 10;
        }

        else
        {
          v13 = 13;
        }
      }

      else
      {
        result = 0;
        v13 = escapes[v13 - 48];
      }

      goto LABEL_18;
    }

    result = -v21;
    if (a8)
    {
      if (v13 > 87)
      {
        if (v13 != 112 && v13 != 88)
        {
          goto LABEL_18;
        }

LABEL_62:
        *(a8 + 208) |= 0x100000u;
        goto LABEL_18;
      }

      if (v13 != 78)
      {
        if (v13 != 80)
        {
          goto LABEL_18;
        }

        goto LABEL_62;
      }
    }

    else if (v13 != 78)
    {
      goto LABEL_18;
    }

    if (v14 >= a2 || *v14 != 123)
    {
LABEL_120:
      result = 12;
      v13 = 78;
      goto LABEL_18;
    }

    v66 = v14 + 1;
    if ((a2 - (v14 + 1)) < 2 || v14[1] != 85 || (v27 = v14[2], v14 += 2, v27 != 43))
    {
      if (read_repeat_counts(&v66, a2, 0, 0, a4) || *a4)
      {
        goto LABEL_120;
      }

      v28 = 137;
      goto LABEL_119;
    }

    if ((a5 & 0x80000) == 0)
    {
      v28 = 193;
LABEL_119:
      *a4 = v28;
      goto LABEL_120;
    }

    goto LABEL_140;
  }

  v65 = 0;
  v22 = (a6 & 0x20 | a5 & 2) != 0;
  if (!a8)
  {
    if ((v13 - 99) <= 0x15 && ((1 << (v13 - 99)) & 0x201001) != 0)
    {
      v22 = 0;
      goto LABEL_31;
    }

    result = 0;
    v16 = 103;
LABEL_7:
    *a4 = v16;
    return result;
  }

LABEL_31:
  if (v13 > 69)
  {
    if (v13 <= 102)
    {
      if (v13 <= 84)
      {
        if (v13 != 70 && v13 != 76)
        {
          goto LABEL_115;
        }

        goto LABEL_83;
      }

      if (v13 != 85)
      {
        if (v13 != 99)
        {
          goto LABEL_115;
        }

        if (v14 >= a2)
        {
          result = 0;
          *a4 = 102;
          v13 = 99;
          goto LABEL_18;
        }

        v13 = *v14;
        if ((v13 - 97) < 0x1A)
        {
          v13 -= 32;
        }

        if ((v13 - 127) <= 0xFFFFFFA0)
        {
          result = 0;
          v33 = 168;
          goto LABEL_94;
        }

        result = 0;
        v13 ^= 0x40u;
        v26 = v14 + 1;
        goto LABEL_144;
      }

      result = 0;
      if (!v22)
      {
        *a4 = 137;
      }

      v13 = 85;
    }

    else
    {
      if (v13 > 110)
      {
        if (v13 == 111)
        {
          if (v14 < a2 && (v41 = *v14, ++v14, v67 = v14, v41 == 123))
          {
            if (v14 < a2 && *v14 != 125)
            {
              v13 = 0;
              if ((a5 & 0x80000) != 0)
              {
                v51 = 1114111;
              }

              else
              {
                v51 = 255;
              }

              do
              {
                v52 = *v14;
                if ((v52 & 0xF8) != 0x30)
                {
                  goto LABEL_169;
                }

                if (v13 || v52 != 48)
                {
                  v13 = v52 + 8 * v13 - 48;
                  if (v13 > v51)
                  {
                    v64 = v14 + 1;
                    v67 = v64;
                    if (v64 >= a2)
                    {
                      goto LABEL_232;
                    }

                    do
                    {
                      if ((*v64 & 0xF8) != 0x30)
                      {
                        goto LABEL_232;
                      }

                      ++v64;
                    }

                    while (v64 < a2);
LABEL_231:
                    v64 = a2;
LABEL_232:
                    result = 0;
                    v67 = v64;
                    v33 = 134;
                    goto LABEL_94;
                  }
                }

                else
                {
                  v13 = 0;
                }

                ++v14;
              }

              while (v14 != a2);
              v14 = a2;
LABEL_169:
              if (v14 >= a2)
              {
                v53 = v14;
              }

              else
              {
                v53 = v14 + 1;
                v67 = v14 + 1;
                if (*v14 == 125)
                {
                  result = 0;
                  if (a5 & 0x80000) == 0 || (a6)
                  {
                    goto LABEL_18;
                  }

LABEL_196:
                  if ((v13 & 0xFFFFF800) != 0xD800)
                  {
                    goto LABEL_18;
                  }

                  result = 0;
                  v67 = v14;
                  v33 = 173;
                  goto LABEL_94;
                }
              }

              result = 0;
              v67 = v53 - 1;
              v33 = 164;
              goto LABEL_94;
            }

            result = 0;
            v42 = 178;
          }

          else
          {
            result = 0;
            v67 = v14 - 1;
            v42 = 155;
          }

          *a4 = v42;
          v13 = 111;
          goto LABEL_18;
        }

        if (v13 != 117)
        {
          if (v13 != 120)
          {
            goto LABEL_115;
          }

          if (!v22)
          {
            if (v14 >= a2)
            {
              goto LABEL_158;
            }

            v44 = *v14;
            if (v44 == 123)
            {
LABEL_140:
              v67 = ++v14;
              if (v14 < a2 && *v14 != 125)
              {
                v13 = 0;
                do
                {
                  v54 = *v14;
                  v55 = xdigitab[v54];
                  if (v55 == 255)
                  {
                    goto LABEL_192;
                  }

                  if (v13 || v54 != 48)
                  {
                    v56 = 16 * v13;
                    v57 = (16 * v13) > 0x10FFFF;
                    v13 = v55 | (16 * v13);
                    v58 = *&v57 & (a5 >> 19);
                    v60 = (a5 & 0x80000) == 0 && v56 > 0xFF;
                    if ((v58 & 1) != 0 || v60)
                    {
                      v64 = v14 + 1;
                      v67 = v64;
                      if (v64 < a2)
                      {
                        while (xdigitab[*v64] != 255)
                        {
                          if (++v64 >= a2)
                          {
                            goto LABEL_231;
                          }
                        }
                      }

                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    v13 = 0;
                  }

                  ++v14;
                }

                while (v14 != a2);
                v14 = a2;
LABEL_192:
                if (v14 >= a2)
                {
                  v61 = v14;
                }

                else
                {
                  v61 = v14 + 1;
                  v67 = v14 + 1;
                  if (*v14 == 125)
                  {
                    result = 0;
                    if ((a6 & 1) != 0 || (a5 & 0x80000) == 0)
                    {
                      goto LABEL_18;
                    }

                    goto LABEL_196;
                  }
                }

                result = 0;
                v67 = v61 - 1;
                v33 = 167;
                goto LABEL_94;
              }

              result = 0;
              v33 = 178;
LABEL_94:
              *a4 = v33;
              goto LABEL_18;
            }

            v13 = xdigitab[v44];
            if (v13 == 255)
            {
LABEL_158:
              v13 = 0;
            }

            else
            {
              v67 = v14 + 1;
              if ((v14 + 1) < a2)
              {
                v50 = xdigitab[v14[1]];
                if (v50 != 255)
                {
                  result = 0;
                  v67 = v14 + 2;
                  v13 = v50 | (16 * v13);
                  goto LABEL_18;
                }
              }
            }

            goto LABEL_17;
          }

          if ((a2 - v14) < 2 || (v24 = xdigitab[*v14], v24 == 255) || (v25 = xdigitab[v14[1]], v25 == 255))
          {
            result = 0;
            v13 = 120;
            goto LABEL_18;
          }

          result = 0;
          v13 = v25 | (16 * v24);
          v26 = v14 + 2;
LABEL_144:
          v67 = v26;
          goto LABEL_18;
        }

        if (v22)
        {
          if (v14 < a2)
          {
            if ((a6 & 0x20) != 0 && *v14 == 123)
            {
              v37 = v14 + 1;
              if ((v14 + 1) < a2)
              {
                v38 = 0;
                v39 = ~v14 + a2;
                while (1)
                {
                  v40 = xdigitab[*v37];
                  if (v40 == 255)
                  {
                    break;
                  }

                  if (v38 >> 28)
                  {
                    *a4 = 177;
                    v67 = v37;
                    v14 = v37;
                    break;
                  }

                  result = 0;
                  v38 = v40 | (16 * v38);
                  ++v37;
                  v13 = 117;
                  if (!--v39)
                  {
                    goto LABEL_18;
                  }
                }

                if (v37 - 1 != v14 && *v37 == 125)
                {
                  v49 = v37 + 1;
LABEL_202:
                  v67 = v49;
                  if ((a5 & 0x80000) != 0)
                  {
                    if (v38 < 0x110000)
                    {
                      result = 0;
                      if ((a6 & 1) != 0 || (v38 & 0x1FF800) != 0xD800)
                      {
                        goto LABEL_234;
                      }

                      result = 0;
                      v62 = 173;
                      goto LABEL_222;
                    }
                  }

                  else if (v38 < 0x100)
                  {
                    result = 0;
                    goto LABEL_234;
                  }

                  result = 0;
                  v62 = 177;
LABEL_222:
                  *a4 = v62;
LABEL_234:
                  v13 = v38;
                  goto LABEL_18;
                }
              }
            }

            else if ((a2 - v14) >= 4)
            {
              v45 = xdigitab[*v14];
              if (v45 != 255)
              {
                v46 = xdigitab[v14[1]];
                if (v46 != 255)
                {
                  v47 = xdigitab[v14[2]];
                  if (v47 != 255)
                  {
                    v48 = xdigitab[v14[3]];
                    if (v48 != 255)
                    {
                      v38 = v48 | (16 * ((16 * v46) | (v45 << 8) | v47));
                      v49 = v14 + 4;
                      goto LABEL_202;
                    }
                  }
                }
              }
            }
          }

          result = 0;
        }

        else
        {
          result = 0;
          *a4 = 137;
        }

        v13 = 117;
        goto LABEL_18;
      }

      if (v13 != 103)
      {
        if (v13 != 108)
        {
          goto LABEL_115;
        }

LABEL_83:
        result = 0;
        v33 = 137;
        goto LABEL_94;
      }

      if (a7)
      {
        goto LABEL_114;
      }

      if (v14 >= a2)
      {
        goto LABEL_215;
      }

      v43 = *v14;
      result = 27;
      v13 = 103;
      if (v43 != 39 && v43 != 60)
      {
        if (v43 == 123)
        {
          v66 = v14 + 1;
          if (!read_number(&v66, a2, *(a8 + 212), 0xFFFFu, 161, &v65, a4))
          {
            if (*a4)
            {
              result = 0;
            }

            else
            {
              result = 28;
            }

            goto LABEL_217;
          }

          if (v66 < a2 && *v66 == 125)
          {
            v67 = v66 + 1;
LABEL_175:
            if (v65 > 0)
            {
              result = -v65;
              goto LABEL_217;
            }

            result = 0;
            v63 = 115;
LABEL_216:
            *a4 = v63;
            goto LABEL_217;
          }
        }

        else
        {
          if (read_number(&v67, a2, *(a8 + 212), 0xFFFFu, 161, &v65, a4))
          {
            goto LABEL_175;
          }

          if (*a4)
          {
LABEL_114:
            result = 0;
LABEL_217:
            v13 = 103;
            goto LABEL_18;
          }
        }

LABEL_215:
        result = 0;
        v63 = 157;
        goto LABEL_216;
      }
    }

LABEL_18:
    *a1 = v67;
    *a3 = v13;
    return result;
  }

  if ((v13 - 49) < 9)
  {
    if (a7)
    {
      goto LABEL_34;
    }

    v29 = v14 - 1;
    v67 = v14 - 1;
    *a4 = 0;
    if ((v14 - 1) >= a2)
    {
      goto LABEL_17;
    }

    v30 = *v29;
    if (v30 - 48 > 9)
    {
      goto LABEL_17;
    }

    v31 = 0;
    while (v29 < a2)
    {
      v32 = *v29;
      if ((v32 - 48) > 9)
      {
        break;
      }

      ++v29;
      v31 = v32 + 10 * v31 - 48;
      if (v31 >= 0xCCCCCCC)
      {
        result = 0;
        *a4 = 161;
        v67 = v29;
        goto LABEL_18;
      }
    }

    v67 = v29;
    if (v31 >= 0xA)
    {
      if (v30 <= 0x37 && v31 > *(a8 + 212))
      {
        v67 = v14;
LABEL_34:
        if (v13 <= 0x37)
        {
          goto LABEL_86;
        }

LABEL_17:
        result = 0;
        goto LABEL_18;
      }

      if (v31 >= 0x10000)
      {
        result = 0;
        v33 = 161;
        goto LABEL_94;
      }
    }

    result = -v31;
    goto LABEL_18;
  }

  if (v13 == 48)
  {
LABEL_86:
    v34 = v14 + 2;
    v35 = 2;
    v13 -= 48;
    while (v14 < a2)
    {
      v36 = *v14;
      if ((v36 & 0xF8) != 0x30)
      {
        break;
      }

      ++v14;
      v13 = v36 + 8 * v13 - 48;
      if (!--v35)
      {
        v14 = v34;
        break;
      }
    }

    result = 0;
    v67 = v14;
    if ((a5 & 0x80000) == 0 && v13 >= 0x100)
    {
      result = 0;
      v33 = 151;
      goto LABEL_94;
    }

    goto LABEL_18;
  }

LABEL_115:
  result = 0;
  *a4 = 103;
  *a1 = v14 - 1;
  return result;
}

uint64_t read_repeat_counts(unsigned __int8 **a1, unint64_t a2, unsigned int *a3, unsigned int *a4, int *a5)
{
  v5 = *a1;
  *a5 = 0;
  if (v5 < a2 && *v5 - 48 <= 9)
  {
    v6 = 0;
    v7 = v5 + 1;
    while (1)
    {
      v8 = v7 - 1;
      if ((v7 - 1) >= a2)
      {
        return 0;
      }

      v9 = *v8;
      if ((v9 - 48) > 9)
      {
        break;
      }

      v6 = v9 + 10 * v6 - 48;
      ++v7;
      if (v6 >= 0x10000)
      {
        v10 = 0;
        *a5 = 105;
        --v7;
LABEL_24:
        *a1 = v7;
        return v10;
      }
    }

    v11 = v6;
    if (v9 == 125)
    {
LABEL_19:
      v7 = v8 + 1;
      if (a3)
      {
        *a3 = v6;
      }

      if (a4)
      {
        *a4 = v11;
      }

      v10 = 1;
      goto LABEL_24;
    }

    if (v9 == 44 && v7 < a2)
    {
      v14 = *v7;
      if (v14 == 125)
      {
        v11 = 0x10000;
LABEL_18:
        v8 = v7;
        goto LABEL_19;
      }

      if ((v14 - 48) <= 9)
      {
        v11 = 0;
        while (v7 < a2)
        {
          v15 = *v7;
          if ((v15 - 48) > 9)
          {
            goto LABEL_32;
          }

          ++v7;
          v11 = v15 + 10 * v11 - 48;
          if (v11 >= 0x10000)
          {
            v10 = 0;
            v16 = 105;
LABEL_36:
            *a5 = v16;
            goto LABEL_24;
          }
        }

        v7 = a2;
LABEL_32:
        if (v7 < a2 && *v7 == 125)
        {
          if (v11 >= v6)
          {
            goto LABEL_18;
          }

          v10 = 0;
          v16 = 104;
          goto LABEL_36;
        }
      }
    }
  }

  return 0;
}

uint64_t read_number(unsigned __int8 **a1, unint64_t a2, int a3, unsigned int a4, int a5, int *a6, int *a7)
{
  v7 = 0;
  v8 = *a1;
  *a7 = 0;
  if (a3 < 0 || v8 >= a2)
  {
    v14 = 0;
  }

  else
  {
    v9 = *v8;
    v10 = a4 - a3;
    if (v9 != 43)
    {
      v10 = a4;
    }

    v11 = v9 == 43;
    if (v9 == 43)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = v9 == 45;
    if (v9 == 45)
    {
      v7 = 1;
    }

    else
    {
      a4 = v10;
      v7 = v9 == 43;
    }

    v14 = !v13 && v11;
    if (v13)
    {
      ++v8;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v8 < a2 && *v8 - 48 <= 9)
  {
    v15 = 0;
    while (v8 < a2)
    {
      v16 = *v8;
      if ((v16 - 48) > 9)
      {
        break;
      }

      ++v8;
      v15 = v16 + 10 * v15 - 48;
      if (v15 > a4)
      {
        v17 = 0;
        *a7 = a5;
        goto LABEL_38;
      }
    }

    v18 = !v7;
    if (a3 < 0)
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_37;
    }

    if (v15)
    {
      if (v14)
      {
        v15 += a3;
LABEL_37:
        v17 = 1;
        goto LABEL_38;
      }

      if (v15 <= a3)
      {
        v15 = a3 - v15 + 1;
        goto LABEL_37;
      }

      v17 = 0;
      v19 = 115;
    }

    else
    {
      v17 = 0;
      v19 = 126;
    }

    *a7 = v19;
LABEL_38:
    *a6 = v15;
    *a1 = v8;
    return v17;
  }

  return 0;
}

uint64_t pcre2_compile_8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v7 = 0;
  v137[128] = *MEMORY[0x1E69E9840];
  v117 = 1;
  v118 = 0;
  v133[0] = 0;
  v119 = 0;
  v115 = 0;
  v116 = 0;
  if (!v4)
  {
    goto LABEL_15;
  }

  v8 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v9 = v4;
  v10 = v1;
  *v4 = 100;
  *v5 = 0;
  if (!v1)
  {
    v7 = 0;
    v14 = 116;
    goto LABEL_14;
  }

  v11 = v3;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &_pcre2_default_compile_context_8;
  }

  if ((v3 & 0x18000000) != 0 || *(v12 + 16) >= 0x40u)
  {
    v7 = 0;
    v14 = 117;
    goto LABEL_14;
  }

  v13 = v2;
  if ((v3 & 0x2000000) != 0 && v12[4] & 0x33 | v3 & 0x176FEF3)
  {
    v7 = 0;
    v14 = 192;
LABEL_14:
    *v9 = v14;
    goto LABEL_15;
  }

  if (v2 == -1)
  {
    v13 = _pcre2_strlen_8(v1);
  }

  if (v13 > *(v12 + 6))
  {
    v7 = 0;
    v14 = 188;
    goto LABEL_14;
  }

  v131 = 0u;
  v132 = 0u;
  v17 = (v11 >> 7) & 0x80000 | v11;
  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v126 = 0u;
  memset(v127, 0, sizeof(v127));
  v124 = 0u;
  memset(v125, 0, sizeof(v125));
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  if (*(v12 + 5))
  {
    v18 = *(v12 + 5);
  }

  else
  {
    v18 = &_pcre2_default_tables_8;
  }

  *&v121 = v18 + 256;
  *(&v121 + 1) = v18 + 512;
  v98 = v18;
  *&v120 = v12;
  *(&v120 + 1) = v18;
  *&v129 = v137;
  *(&v132 + 4) = 0;
  v125[11] = 0;
  HIDWORD(v127[2]) = 0;
  v126 = 0uLL;
  v124 = &v10[v13];
  v127[0] = &v135;
  *(&v127[1] + 4) = (v11 >> 7) & 0x80000 | v11;
  LODWORD(v127[1]) = 20;
  *&v128 = v136;
  *&v123 = v134;
  *(&v123 + 1) = v10;
  *&v122 = v18 + 832;
  *(&v122 + 1) = v134;
  v125[0] = 6000;
  LODWORD(v127[3]) = 0;
  *(&v129 + 1) = 0;
  *(&v131 + 4) = 0;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *&v125[1] = v19;
  *&v125[3] = v19;
  *&v125[5] = v19;
  *&v125[7] = v19;
  *&v125[9] = v19;
  if ((v11 & 0x2000000) != 0 || (v20 = v13 - 2, v13 < 2))
  {
    v24 = 0;
    LODWORD(v40) = 0;
    v23 = 0;
    v22 = 0;
    v101 = -1;
    v102 = -1;
    v103 = -1;
LABEL_68:
    v41 = &v10[v40];
    v42 = HIDWORD(v127[1]);
    if ((v127[1] & 0x8000000000000) != 0)
    {
      if ((v11 & 0x1000) != 0)
      {
        v7 = 0;
        LODWORD(recurse) = 174;
        goto LABEL_86;
      }

      v43 = HIDWORD(v127[1]);
      if ((v11 & 0x40000000) == 0)
      {
        v105 = v24;
        v108 = v22;
        v111 = v23;
        LODWORD(recurse) = _pcre2_valid_utf_8(v10, v13, v8);
        v114 = recurse;
        if (recurse)
        {
          v7 = 0;
          goto LABEL_111;
        }

        v43 = HIDWORD(v127[1]);
        v42 = HIDWORD(v127[1]);
        v22 = v108;
        v23 = v111;
        v24 = v105;
      }
    }

    else
    {
      v43 = HIDWORD(v127[1]);
    }

    if ((~v43 & 0x20800) == 0)
    {
      v7 = 0;
      LODWORD(recurse) = 175;
      goto LABEL_86;
    }

    if (!v22)
    {
      LOWORD(v22) = *(v12 + 28);
    }

    if (!v23)
    {
      v23 = *(v12 + 29);
    }

    LODWORD(v130) = 0;
    if (v23 <= 3)
    {
      switch(v23)
      {
        case 1:
          v100 = v42;
          v97 = v17;
          DWORD1(v130) = 1;
          v45 = 13;
          break;
        case 2:
          v100 = v42;
          v97 = v17;
          DWORD1(v130) = 1;
          v45 = 10;
          break;
        case 3:
          v100 = v42;
          v97 = v17;
          DWORD1(v130) = 2;
          LOWORD(v131) = 2573;
LABEL_98:
          v106 = v24;
          v109 = v22;
          v112 = v23;
          v47 = v13 - v40;
          if ((v12[4] & 0xC) != 0)
          {
            v47 += 4;
          }

          if ((v11 & 4) != 0)
          {
            v48 = 5 * v47 + 5;
          }

          else
          {
            v48 = v47;
          }

          v94 = v43;
          if (v48 <= 0x3FF)
          {
            v49 = v128;
            v50 = v43;
          }

          else
          {
            v49 = (*v12)(4 * v48 + 4, *(v12 + 2));
            if (!v49)
            {
              v7 = 0;
              *v9 = 121;
              goto LABEL_112;
            }

            *&v128 = v49;
            v50 = HIDWORD(v127[1]);
          }

          *(&v128 + 1) = v49 + 4 * v48 + 4;
          LODWORD(recurse) = parse_regex(&v10[v40], v50, v133, &v120);
          v114 = recurse;
          if (recurse)
          {
            goto LABEL_108;
          }

          v51 = HIDWORD(v127[2]);
          if (HIDWORD(v127[2]) <= 0xFF)
          {
            v52 = v129;
          }

          else
          {
            v52 = (*v12)(4 * (HIDWORD(v127[2]) + 1), *(v12 + 2));
            *&v129 = v52;
            if (!v52)
            {
              v7 = 0;
              LODWORD(recurse) = 121;
              v114 = 121;
              v125[11] = 0;
              goto LABEL_109;
            }

            v51 = HIDWORD(v127[2]);
          }

          bzero(v52, 4 * (v51 + 1));
          if (v133[0])
          {
            LODWORD(recurse) = check_lookbehinds(v128, 0, 0, &v120);
            v114 = recurse;
            if (recurse)
            {
              goto LABEL_108;
            }
          }

          v125[11] = v13;
          v118 = v128;
          v119 = v134;
          v134[0] = -122;
          compile_regex(HIDWORD(v127[1]), &v119, &v118, &v114, 0, &v115 + 1, &v116 + 1, &v115, &v116, 0, &v120, &v117);
          LODWORD(recurse) = v114;
          if (v114)
          {
LABEL_108:
            v7 = 0;
LABEL_109:
            v41 = &v10[v125[11]];
            goto LABEL_110;
          }

          if (v117 > 0x10000)
          {
            v7 = 0;
            LODWORD(recurse) = 120;
LABEL_147:
            v114 = recurse;
            goto LABEL_109;
          }

          v53 = v117 + WORD1(v126) * v126 + 136;
          v54 = (*v12)(v53, *(v12 + 2));
          v7 = v54;
          if (!v54)
          {
            LODWORD(recurse) = 121;
            goto LABEL_147;
          }

          *(v54 + 128) = 0;
          v55 = *(v12 + 2);
          *v54 = *v12;
          *(v54 + 16) = v55;
          *(v54 + 24) = v98;
          *(v54 + 32) = 0;
          *(v54 + 40) = 0u;
          *(v54 + 56) = 0u;
          *(v54 + 72) = v53;
          *(v54 + 80) = 1346589253;
          *(v54 + 84) = v97;
          v96 = v12;
          v56 = *(v12 + 16);
          v57 = HIDWORD(v127[1]);
          LODWORD(v55) = v127[2];
          *(v7 + 88) = HIDWORD(v127[1]);
          *(v7 + 92) = v56;
          *(v7 + 96) = v106 | v55 | 1;
          *(v7 + 100) = v102;
          *(v7 + 104) = v101;
          *(v7 + 108) = v103;
          *(v7 + 112) = 0;
          *(v7 + 120) = v109;
          *(v7 + 122) = v112;
          *(v7 + 124) = 0;
          v58 = WORD1(v126);
          *(v7 + 132) = WORD1(v126);
          v59 = v126;
          *(v7 + 134) = v126;
          DWORD1(v126) = 0;
          LODWORD(v127[3]) = 0;
          *(&v124 + 1) = v7 + 136;
          v113 = (v7 + 136 + v59 * v58);
          *&v123 = v113;
          *(&v131 + 1) = 0;
          LODWORD(v132) = 0;
          *(&v126 + 1) = 0;
          if (v59)
          {
            v60 = 0;
            v61 = v127[0];
            do
            {
              add_name_to_table(&v120, *v61, *(v61 + 12), *(v61 + 8), v60++);
              v61 += 16;
            }

            while (v60 < v126);
            v57 = *(v7 + 88);
          }

          v118 = v128;
          v119 = v113;
          *v113 = -122;
          if ((compile_regex(v57, &v119, &v118, &v114, 0, &v115 + 1, &v116 + 1, &v115, &v116, 0, &v120, 0) & 0x80000000) != 0)
          {
            *(v7 + 96) |= 0x2000u;
          }

          v63 = WORD4(v129);
          *(v7 + 128) = WORD2(v127[2]);
          *(v7 + 130) = v63;
          *(v7 + 124) = WORD2(v131);
          if (HIDWORD(v131))
          {
            LODWORD(v115) = 0;
            LODWORD(v116) = -1;
            *(v7 + 96) |= 0x800000u;
          }

          v64 = v119;
          *v119 = 0;
          v119 = v64 + 1;
          v65 = v64 + 1 - v113;
          v66 = v65 > v117;
          v67 = v65 - v117;
          if (v66)
          {
            LODWORD(recurse) = 123;
LABEL_145:
            v114 = recurse;
LABEL_173:
            v12 = v96;
            goto LABEL_109;
          }

          *(v7 + 72) += v67;
          LODWORD(recurse) = v114;
          if (!v114)
          {
            if (DWORD1(v132))
            {
              v68 = (v100 >> 19) & 1;
              recurse = find_recurse(v113, v68);
              if (recurse)
              {
                v69 = recurse;
                v70 = 0;
                v71 = 8;
                while (1)
                {
                  v72 = __rev16(*(v69 + 1));
                  if (v72)
                  {
                    v73 = v113;
                    if (!v70)
                    {
                      goto LABEL_162;
                    }

                    v74 = v70;
                    v73 = v113;
                    v75 = v71;
                    while (1)
                    {
                      v76 = &v133[4 * v75 + 1];
                      v77 = v76[2];
                      if (v72 == v77)
                      {
                        break;
                      }

                      if (v72 > v77)
                      {
                        v73 = *v76;
                      }

                      v75 = (v75 + 1) & 7;
                      if (!--v74)
                      {
                        goto LABEL_162;
                      }
                    }

                    v78 = *v76;
                    if (!*v76)
                    {
LABEL_162:
                      bracket_8 = _pcre2_find_bracket_8(v73, v68, v72);
                      if (!bracket_8)
                      {
                        LODWORD(recurse) = 153;
                        v114 = 153;
                        break;
                      }

                      LODWORD(v78) = bracket_8;
                      if (v71 >= 1)
                      {
                        --v71;
                      }

                      else
                      {
                        v71 = 7;
                      }

                      v80 = &v133[4 * v71 + 1];
                      v80[2] = v72;
                      *v80 = bracket_8;
                      if (v70 < 8)
                      {
                        ++v70;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v78) = v113;
                  }

                  *(v69 + 1) = bswap32(v78 - v113) >> 16;
                  v69 = find_recurse(v69 + 3, v68);
                  if (!v69)
                  {
                    LODWORD(recurse) = v114;
                    break;
                  }
                }
              }
            }
          }

          if (recurse)
          {
            goto LABEL_173;
          }

          v81 = *(v7 + 88);
          if ((v81 & 0x4000) == 0)
          {
            if (_pcre2_auto_possessify_8(v113, &v120))
            {
              LODWORD(recurse) = 180;
              goto LABEL_145;
            }

            v81 = *(v7 + 88);
          }

          if ((v81 & 0x80000000) == 0 && is_anchored(v113, 0, &v120, 0, 0))
          {
            v81 |= 0x80000000;
            *(v7 + 88) = v81;
          }

          if ((v81 & 0x10000) != 0)
          {
LABEL_223:
            v12 = v96;
            goto LABEL_112;
          }

          v82 = v100 & 0x80000;
          v83 = v94 & 0x20000;
          v84 = BYTE4(v116);
          if (v116 < 0)
          {
            firstassertedcu = find_firstassertedcu(v113, &v116 + 1, 0);
            HIDWORD(v115) = firstassertedcu;
            v84 = BYTE4(v116);
            if (v116 < 0)
            {
              if ((*(v7 + 88) & 0x80000000) != 0 || !is_startline(v113, 0, &v120, 0, 0))
              {
                v88 = 0;
                LOBYTE(v87) = 1;
                goto LABEL_201;
              }

              v88 = 0;
              v89 = *(v7 + 96) | 0x200;
              LOBYTE(v87) = 1;
              goto LABEL_199;
            }
          }

          else
          {
            firstassertedcu = HIDWORD(v115);
          }

          *(v7 + 112) = firstassertedcu;
          v86 = *(v7 + 96);
          *(v7 + 96) = v86 | 0x10;
          if ((v84 & 1) == 0)
          {
LABEL_190:
            LOBYTE(v87) = 0;
            v88 = 1;
LABEL_201:
            LOBYTE(v62) = v116;
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_216;
            }

            v90 = *(v7 + 88);
            if ((v90 & 0x80000) == 0)
            {
              LOBYTE(v87) = 1;
            }

            if ((v87 & 1) != 0 || (firstassertedcu & 0x80) == 0 || (v115 & 0x80) == 0)
            {
              ++v88;
            }

            if ((v116 & 2) == 0 && v90 < 0)
            {
              goto LABEL_216;
            }

            v91 = v115;
            *(v7 + 116) = v115;
            v92 = *(v7 + 96);
            *(v7 + 96) = v92 | 0x80;
            if ((v62 & 1) == 0)
            {
              goto LABEL_216;
            }

            if (v91 >= 0x80 && (v83 | v82 || v91 > 0xFE))
            {
              if (v82 || !v83 || !_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[(v91 - (v62 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v91 / 128] << 7))] + 1])
              {
                goto LABEL_216;
              }
            }

            else if (v91 == *(v121 + v91))
            {
LABEL_216:
              if (_pcre2_study_8(v7))
              {
                LODWORD(recurse) = 131;
                goto LABEL_145;
              }

              if (((v88 == 0) & (*(v7 + 96) >> 6)) != 0)
              {
                v93 = 1;
              }

              else
              {
                v93 = v88;
              }

              if (v93 > *(v7 + 126))
              {
                *(v7 + 126) = v93;
              }

              goto LABEL_223;
            }

            *(v7 + 96) = v92 | 0x180;
            goto LABEL_216;
          }

          if (firstassertedcu >= 0x80 && (v83 | v82 || firstassertedcu > 0xFE))
          {
            LOBYTE(v87) = 0;
            v88 = 1;
            if (v82)
            {
              goto LABEL_201;
            }

            if (!v83)
            {
              goto LABEL_201;
            }

            v87 = _pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[firstassertedcu + (_pcre2_ucd_stage1_8[firstassertedcu / 128] << 7)] + 1];
            if (!v87)
            {
              goto LABEL_201;
            }

            LOBYTE(v87) = 0;
            v89 = v86 | 0x30;
          }

          else
          {
            if (firstassertedcu == *(v121 + firstassertedcu))
            {
              goto LABEL_190;
            }

            LOBYTE(v87) = 0;
            v89 = v86 | 0x30;
            v88 = 1;
          }

LABEL_199:
          *(v7 + 96) = v89;
          goto LABEL_201;
        default:
          goto LABEL_93;
      }

      LOBYTE(v131) = v45;
      goto LABEL_98;
    }

    switch(v23)
    {
      case 4:
        v100 = v42;
        v97 = v17;
        v46 = 1;
        break;
      case 5:
        v100 = v42;
        v97 = v17;
        v46 = 2;
        break;
      case 6:
        v100 = v42;
        v97 = v17;
        DWORD1(v130) = 1;
        LOBYTE(v131) = 0;
        goto LABEL_98;
      default:
LABEL_93:
        v7 = 0;
        LODWORD(recurse) = 156;
        goto LABEL_86;
    }

    LODWORD(v130) = v46;
    goto LABEL_98;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v10 + 2;
  v102 = -1;
  v103 = -1;
  v99 = 0;
  v101 = -1;
  v26 = &dword_1E81A1414;
  v95 = v12;
  while (1)
  {
    if (v10[v21] != 40)
    {
      LODWORD(v40) = v99;
      goto LABEL_68;
    }

    if (v10[v99 + 1] != 42)
    {
      LODWORD(v40) = v99;
      goto LABEL_68;
    }

    v104 = v24;
    v107 = v22;
    v110 = v23;
    v27 = v20 - v99;
    v28 = 21;
    v29 = &v25[v99];
    while (1)
    {
      v30 = *(v26 - 2);
      if (v27 >= v30 && !_pcre2_strncmp_8(v29, *(v26 - 3), *(v26 - 2)))
      {
        break;
      }

      v26 += 4;
      if (!--v28)
      {
        LODWORD(v40) = v99;
        v12 = v95;
        v17 = (v11 >> 7) & 0x80000 | v11;
        v22 = v107;
        v23 = v110;
        v24 = v104;
        goto LABEL_68;
      }
    }

    v40 = v99 + v30 + 2;
    v31 = *(v26 - 1);
    if (v31 > 2)
    {
      break;
    }

    v12 = v95;
    v22 = v107;
    v23 = v110;
    v24 = v104;
    if (*(v26 - 1))
    {
      v17 = (v11 >> 7) & 0x80000 | v11;
      v25 = v10 + 2;
      if (v31 == 1)
      {
        v24 = *v26 | v104;
      }

      else if (v31 == 2)
      {
        v23 = *v26;
        v24 = v104 | 0x8000;
      }

      goto LABEL_63;
    }

    HIDWORD(v127[1]) |= *v26;
    v17 = (v11 >> 7) & 0x80000 | v11;
    v25 = v10 + 2;
    v20 = v13 - 2;
LABEL_64:
    v26 = &dword_1E81A1414;
LABEL_65:
    v21 = v40;
    v99 = v40;
    if (v13 - v40 <= 1)
    {
      goto LABEL_68;
    }
  }

  v12 = v95;
  v22 = v107;
  v23 = v110;
  v24 = v104;
  if (v31 - 4 >= 3)
  {
    v25 = v10 + 2;
    if (v31 == 3)
    {
      v22 = *v26;
      v24 = v104 | 0x4000;
    }

    v17 = (v11 >> 7) & 0x80000 | v11;
LABEL_63:
    v20 = v13 - 2;
    goto LABEL_64;
  }

  v32 = v10[v40];
  if (v32 - 48 <= 9)
  {
    v33 = 0;
    LODWORD(v40) = v99 + v30 + 3;
    v17 = (v11 >> 7) & 0x80000 | v11;
    v25 = v10 + 2;
    v20 = v13 - 2;
    v26 = &dword_1E81A1414;
    do
    {
      if (v32 > 0x39 || v33 > 0x19999998)
      {
        goto LABEL_129;
      }

      v33 = v32 + 10 * v33 - 48;
      v32 = v10[v40];
      LODWORD(v40) = v40 + 1;
    }

    while (v32 > 0x2F);
    if (v32 != 41)
    {
LABEL_129:
      v7 = 0;
      LODWORD(recurse) = 160;
      v114 = 160;
      v41 = &v10[v40];
      goto LABEL_110;
    }

    v35 = v102;
    v34 = v103;
    if (v31 == 4)
    {
      v36 = v33;
    }

    else
    {
      v36 = v102;
    }

    if (v31 == 4)
    {
      v37 = v103;
    }

    else
    {
      v37 = v33;
    }

    v38 = v31 == 5;
    if (v31 != 5)
    {
      v35 = v36;
    }

    v39 = v101;
    if (v38)
    {
      v39 = v33;
    }

    v101 = v39;
    v102 = v35;
    if (!v38)
    {
      v34 = v37;
    }

    v103 = v34;
    goto LABEL_65;
  }

  v7 = 0;
  v41 = &v10[v40];
  LODWORD(recurse) = 160;
LABEL_86:
  v114 = recurse;
LABEL_110:
  *v8 = v41 - v10;
LABEL_111:
  *v9 = recurse;
  pcre2_code_free_8(v7);
  v7 = 0;
LABEL_112:
  if (v128 != v136)
  {
    (*(v12 + 1))(v128, *(v12 + 2));
  }

  if (LODWORD(v127[1]) >= 0x15)
  {
    (*(v12 + 1))(v127[0], *(v12 + 2));
  }

  if (v129 != v137)
  {
    (*(v12 + 1))(v129, *(v12 + 2));
  }

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t parse_regex(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a1;
  v355[0] = a1;
  v353 = 0;
  v351 = 0;
  v352 = 0;
  v7 = *(a4 + 224);
  v6 = *(a4 + 232);
  v8 = *(*a4 + 64);
  v342 = (a2 >> 2) & 1;
  v343 = a2 & 0x80000;
  v350 = 0;
  v9 = *(a4 + 64);
  v10 = -2146893824;
  if ((v8 & 8) == 0)
  {
    if ((v8 & 4) == 0)
    {
      goto LABEL_5;
    }

    v10 = -2145910779;
  }

  *v7 = v10;
  v7[1] = -2145779712;
  v7 += 2;
LABEL_5:
  v354 = 0;
  if ((a2 & 0x2000000) != 0)
  {
    if (v9 <= a1)
    {
      goto LABEL_828;
    }

    v294 = a2 & 4;
    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_837;
      }

      v295 = v5 + 1;
      v355[0] = v5 + 1;
      v296 = *v5;
      v354 = v296;
      if (!v343 || v296 < 0xC0)
      {
        goto LABEL_815;
      }

      if ((v296 & 0x20) == 0)
      {
        break;
      }

      v297 = *v295 & 0x3F;
      if ((v296 & 0x10) != 0)
      {
        if ((v296 & 8) != 0)
        {
          v298 = v5[2] & 0x3F;
          v299 = v5[3] & 0x3F;
          v300 = v5[4] & 0x3F;
          if ((v296 & 4) != 0)
          {
            v296 = ((v296 & 1) << 30) | (v297 << 24) | (v298 << 18) | (v299 << 12) | (v300 << 6) | v5[5] & 0x3F;
            v354 = v296;
            v295 = v5 + 6;
          }

          else
          {
            v295 = v5 + 5;
            v296 = ((v296 & 3) << 24) | (v297 << 18) | (v298 << 12) | (v299 << 6) | v300;
            v354 = v296;
          }
        }

        else
        {
          v296 = ((v296 & 7) << 18) | (v297 << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
          v354 = v296;
          v295 = v5 + 4;
        }
      }

      else
      {
        v296 = ((v296 & 0xF) << 12) | (v297 << 6) | v5[2] & 0x3F;
        v354 = v296;
        v295 = v5 + 3;
      }

      v355[0] = v295;
      if (v294)
      {
LABEL_825:
        v7 = manage_callouts(v5, &v352, v342, v7, v4);
        v296 = v354;
        v5 = v355[0];
        goto LABEL_826;
      }

LABEL_816:
      v5 = v295;
LABEL_826:
      *v7++ = v296;
      if (v5 >= v9)
      {
        LOWORD(v16) = 0;
        goto LABEL_829;
      }
    }

    v295 = v5 + 2;
    v355[0] = v5 + 2;
    v354 = v5[1] & 0x3F | ((v296 & 0x1F) << 6);
    v296 = v354;
LABEL_815:
    if (v294)
    {
      goto LABEL_825;
    }

    goto LABEL_816;
  }

  if (v9 <= a1)
  {
LABEL_828:
    LOWORD(v16) = 0;
    goto LABEL_829;
  }

  v336 = v8;
  v337 = 0;
  v333 = 0;
  v334 = 0;
  *&v330[8] = 0;
  v335 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v339 = 0;
  v15 = 0;
  v16 = 0;
  *v330 = (a2 >> 19) & 1;
  v327 = *(a4 + 40) + 12 * (*(a4 + 80) / 0xCuLL);
  v17 = (a2 >> 17) & 0x80 | a2;
  v331 = v9 - 1;
  v332 = (a4 + 260);
  v328 = a4 + 88;
  while (2)
  {
    v348 = 0;
    v349 = 0;
    v346 = 0;
    v347 = 0;
    if (v7 >= v6)
    {
      v308 = 163;
      goto LABEL_847;
    }

    v18 = *v4;
    if (*(*v4 + 60) < v16)
    {
      v308 = 119;
      goto LABEL_847;
    }

    v19 = v5 + 1;
    v355[0] = v5 + 1;
    v20 = *v5;
    v354 = v20;
    if (!v343 || v20 < 0xC0)
    {
      goto LABEL_14;
    }

    if ((v20 & 0x20) == 0)
    {
      v19 = v5 + 2;
      v355[0] = v5 + 2;
      v354 = v5[1] & 0x3F | ((v20 & 0x1F) << 6);
      v20 = v354;
LABEL_14:
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

    v22 = *v19 & 0x3F;
    if ((v20 & 0x10) != 0)
    {
      if ((v20 & 8) != 0)
      {
        v26 = v5[2] & 0x3F;
        v27 = v5[3] & 0x3F;
        v28 = v5[4] & 0x3F;
        if ((v20 & 4) != 0)
        {
          v20 = ((v20 & 1) << 30) | (v22 << 24) | (v26 << 18) | (v27 << 12) | (v28 << 6) | v5[5] & 0x3F;
          v354 = v20;
          v19 = v5 + 6;
        }

        else
        {
          v19 = v5 + 5;
          v20 = ((v20 & 3) << 24) | (v22 << 18) | (v26 << 12) | (v27 << 6) | v28;
          v354 = v20;
        }
      }

      else
      {
        v20 = ((v20 & 7) << 18) | (v22 << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
        v354 = v20;
        v19 = v5 + 4;
      }
    }

    else
    {
      v20 = ((v20 & 0xF) << 12) | (v22 << 6) | v5[2] & 0x3F;
      v354 = v20;
      v19 = v5 + 3;
    }

    v355[0] = v19;
    if (v14)
    {
LABEL_15:
      if (v20 != 92 || v19 >= v9 || *v19 != 69)
      {
        if (v339 < 1)
        {
          if (v13)
          {
            *v7 = v20;
          }

          else
          {
            if (v15 <= 0)
            {
              v23 = v16;
              v24 = v17;
              v25 = manage_callouts(v5, &v352, v342, v7, v4);
              v17 = v24;
              v16 = v23;
              v7 = v25;
              v20 = v354;
            }

            v15 = (v15 - 1);
            *v7 = v20;
            v11 = 1;
          }

          v12 = 0;
          ++v7;
          v14 = 1;
          goto LABEL_30;
        }

        v306 = v19 - 1;
        goto LABEL_846;
      }

      v14 = 0;
      goto LABEL_19;
    }

LABEL_38:
    if (!v13)
    {
LABEL_51:
      if (v20 != 92)
      {
        goto LABEL_57;
      }

      if (v19 >= v9 || (v29 = *v19, v29 != 81) && v29 != 69)
      {
        v20 = 92;
        goto LABEL_57;
      }

      v14 = v29 == 81;
LABEL_19:
      v21 = v19 + 1;
      goto LABEL_20;
    }

    if ((~v17 & 0x400080) != 0)
    {
      goto LABEL_47;
    }

    if (v20 < 0x100)
    {
      if (v20 == 35)
      {
        goto LABEL_57;
      }

      if (v20 != 133 && (*(*(v4 + 32) + v20) & 1) == 0)
      {
LABEL_47:
        if (v20 == 41)
        {
          if (v335 - v19 > -257)
          {
            *v334 = ((v7 - v334) >> 2) - 1;
            v14 = 0;
            v13 = 0;
            if (v337)
            {
              *v7++ = v337;
            }

            v337 = 0;
            goto LABEL_30;
          }

          v355[0] = v19 - 1;
          v308 = 176;
          goto LABEL_847;
        }

        if (v20 == 92)
        {
          if ((v17 & 0x400000) != 0)
          {
            v58 = v12;
            v59 = v11;
            v60 = v16;
            v61 = v17;
            v62 = _pcre2_check_escape_8(v355, v9, &v354, &v351 + 1, v17, *(v18 + 64), 0, v4);
            if (HIDWORD(v351))
            {
              goto LABEL_848;
            }

            v16 = v60;
            if (v62 == 26)
            {
              v14 = 1;
              v13 = 1;
              v17 = v61;
              v4 = a4;
              v11 = v59;
              v12 = v58;
              goto LABEL_30;
            }

            v17 = v61;
            v4 = a4;
            v11 = v59;
            v12 = v58;
            if (v62 == 25)
            {
              v14 = 0;
              v13 = 1;
              goto LABEL_30;
            }

            if (v62)
            {
              v308 = 140;
              goto LABEL_847;
            }

            v20 = v354;
          }

          else
          {
            v20 = 92;
          }
        }

        v14 = 0;
        *v7++ = v20;
        v13 = 1;
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    if ((v20 | 1) != 0x200F && (v20 | 1) != 0x2029)
    {
      goto LABEL_47;
    }

LABEL_57:
    if ((v17 & 0x80) == 0)
    {
      if (v20 <= 62)
      {
        if (v20 - 42 < 2)
        {
          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_75:
      if (v20 == 63)
      {
        goto LABEL_81;
      }

      if (v20 == 123)
      {
        v347 = v19;
        v321 = v6;
        v31 = v16;
        v32 = v17;
        v33 = v11;
        v34 = v12;
        v35 = read_repeat_counts(&v347, v9, 0, 0, &v351 + 1);
        LODWORD(v12) = v34;
        LODWORD(v11) = v33;
        v17 = v32;
        v16 = v31;
        v6 = v321;
        v4 = a4;
        if (v35)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_78;
    }

    if (v20 <= 0xFF)
    {
      v14 = 0;
      if (v20 == 133 || (*(*(v4 + 32) + v20) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    if ((v20 | 1) == 0x200F || (v20 | 1) == 0x2029)
    {
      goto LABEL_30;
    }

    if (v20 > 41)
    {
      if (v20 - 42 < 2)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    if (v20 == 35)
    {
      if (v19 >= v9)
      {
LABEL_221:
        v14 = 0;
        goto LABEL_30;
      }

      v312 = v9;
      while (1)
      {
        v88 = *(v4 + 256);
        v89 = *(v4 + 64);
        if (v88)
        {
          if (v19 < v89)
          {
            v90 = v12;
            v91 = v15;
            v92 = v11;
            v93 = v17;
            v94 = v16;
            is_newline_8 = _pcre2_is_newline_8(v19, v88, v89, v332, *v330);
            v19 = v355[0];
            if (is_newline_8)
            {
              v96 = *v332;
              v16 = v94;
              v17 = v93;
              v11 = v92;
              v15 = v91;
              v9 = v312;
              v12 = v90;
              goto LABEL_574;
            }

            v16 = v94;
            v17 = v93;
            v11 = v92;
            v15 = v91;
            v9 = v312;
            v12 = v90;
          }
        }

        else
        {
          v96 = *v332;
          if (v19 <= v89 - v96 && *v19 == *(v4 + 272))
          {
            if (v96 == 1)
            {
              v96 = 1;
LABEL_574:
              v14 = 0;
              v21 = &v19[v96];
LABEL_20:
              v355[0] = v21;
              goto LABEL_30;
            }

            if (v19[1] == *(v4 + 273))
            {
              goto LABEL_574;
            }
          }
        }

        v97 = v19 + 1;
        v355[0] = v19 + 1;
        if (v343 && v97 < v9)
        {
          v98 = v331 - v19;
          do
          {
            if ((*v97 & 0xC0) != 0x80)
            {
              break;
            }

            v355[0] = ++v97;
            --v98;
          }

          while (v98);
        }

        v19 = v97;
        if (v97 >= v9)
        {
          goto LABEL_221;
        }
      }
    }

LABEL_60:
    if (v20 == 40 && v9 - v19 >= 2 && *v19 == 63 && v19[1] == 35)
    {
      v21 = v19 + 1;
      while (1)
      {
        v355[0] = v21;
        if (v21 >= v9)
        {
          break;
        }

        v30 = *v21++;
        if (v30 == 41)
        {
          v14 = 0;
          goto LABEL_20;
        }
      }

      v308 = 118;
      goto LABEL_847;
    }

LABEL_78:
    if (v15 <= 0)
    {
      v36 = v5;
      v37 = v7;
      v38 = v16;
      v39 = v17;
      v40 = v11;
      v41 = v12;
      v42 = manage_callouts(v36, &v352, v342, v37, v4);
      LODWORD(v12) = v41;
      LODWORD(v11) = v40;
      v17 = v39;
      v16 = v38;
      v7 = v42;
    }

    v15 = (v15 - 1);
LABEL_81:
    if (v339 < 1)
    {
      goto LABEL_88;
    }

    if (v354 != 40 || v9 - v355[0] < 3)
    {
LABEL_845:
      v306 = v355[0] - 1;
LABEL_846:
      v355[0] = v306;
      v308 = 128;
      goto LABEL_847;
    }

    v43 = *v355[0];
    if (v43 != 63)
    {
      if (v43 != 42)
      {
        goto LABEL_845;
      }

      v44 = (*(*(v4 + 32) + v355[0][1]) >> 2) & 1;
      goto LABEL_87;
    }

    v56 = v355[0][1];
    if (v56 > 0x3C)
    {
      if (v56 == 61)
      {
        goto LABEL_88;
      }

      if (v56 != 67)
      {
        goto LABEL_845;
      }

      v44 = v339 == 2;
      goto LABEL_87;
    }

    if (v56 != 33)
    {
      if (v56 != 60)
      {
        goto LABEL_845;
      }

      v57 = v355[0][2];
      v44 = v57 == 33;
      if (v57 != 61)
      {
LABEL_87:
        if (!v44)
        {
          goto LABEL_845;
        }
      }
    }

LABEL_88:
    v45 = v354;
    if (v12)
    {
      if (v354 <= 62)
      {
        if (v354 > 41)
        {
          if (v354 != 42)
          {
            if (v354 == 43)
            {
              goto LABEL_194;
            }

LABEL_202:
            if (v354 == 46)
            {
              v339 = 0;
              v14 = 0;
              v12 = 0;
              v45 = -2145976320;
LABEL_239:
              *v7++ = v45;
              goto LABEL_240;
            }

LABEL_238:
            v339 = 0;
            v14 = 0;
            v12 = 0;
            goto LABEL_239;
          }

          goto LABEL_225;
        }

        goto LABEL_99;
      }

      if (v354 <= 93)
      {
        if (v354 == 63)
        {
LABEL_194:
          v339 = 0;
          v14 = 0;
          v11 = 0;
          if (v354 == 63)
          {
            v85 = 0x20000;
          }

          else
          {
            v85 = 0x10000;
          }

          v86 = v85 + v12;
          v87 = 0x3FFFFFFFFFFFFFFFLL;
          if (v12 == -2143485952)
          {
            v87 = 0x3FFFFFFFFFFFFFFDLL;
          }

          v7[v87] = v86;
          v12 = 0;
          goto LABEL_30;
        }

        v50 = v336;
        if (v354 != 91)
        {
LABEL_115:
          if (v354 != 92)
          {
            goto LABEL_238;
          }

          v51 = v13;
          v313 = v15;
          v316 = v17;
          v322 = v16;
          v52 = v355[0];
          v347 = v355[0];
          v53 = _pcre2_check_escape_8(v355, v9, &v354, &v351 + 1, v17, *(*v4 + 64), 0, v4);
          if (!HIDWORD(v351))
          {
            v54 = v53;
            v17 = v316;
            v16 = v322;
            goto LABEL_456;
          }

          while (1)
          {
            v16 = v322;
            if ((v50 & 2) == 0)
            {
              goto LABEL_848;
            }

            v13 = v51;
            v355[0] = v52;
            if (v52 >= v9)
            {
              v54 = 0;
              v354 = 92;
              v50 = v336;
              v17 = v316;
              v4 = a4;
            }

            else
            {
              v54 = 0;
              v355[0] = v52 + 1;
              v55 = *v52;
              v354 = v55;
              v17 = v316;
              v4 = a4;
              if (v343)
              {
                v50 = v336;
                if (v55 >= 0xC0)
                {
                  if ((v55 & 0x20) != 0)
                  {
                    v170 = v52[1] & 0x3F;
                    if ((v55 & 0x10) == 0)
                    {
                      v54 = 0;
                      v354 = ((v55 & 0xF) << 12) | (v170 << 6) | v52[2] & 0x3F;
                      v171 = v52 + 3;
LABEL_455:
                      v355[0] = v171;
                      goto LABEL_456;
                    }

                    if ((v55 & 8) == 0)
                    {
                      v54 = 0;
                      v354 = ((v55 & 7) << 18) | (v170 << 12) | ((v52[2] & 0x3F) << 6) | v52[3] & 0x3F;
                      v171 = v52 + 4;
                      goto LABEL_455;
                    }

                    v188 = v52[2] & 0x3F;
                    v189 = v52[3] & 0x3F;
                    v190 = v52[4] & 0x3F;
                    v54 = 0;
                    if ((v55 & 4) != 0)
                    {
                      v354 = ((v55 & 1) << 30) | (v170 << 24) | (v188 << 18) | (v189 << 12) | (v190 << 6) | v52[5] & 0x3F;
                      v171 = v52 + 6;
                      goto LABEL_455;
                    }

                    v354 = ((v55 & 3) << 24) | (v170 << 18) | (v188 << 12) | (v189 << 6) | v190;
                    v355[0] = v52 + 5;
                  }

                  else
                  {
                    v54 = 0;
                    v355[0] = v52 + 2;
                    v354 = v52[1] & 0x3F | ((v55 & 0x1F) << 6);
                  }
                }
              }

              else
              {
                v50 = v336;
              }
            }

LABEL_456:
            if (!v54)
            {
              v339 = 0;
              v14 = 0;
              v12 = 0;
              v168 = v354;
              goto LABEL_463;
            }

            if (v54 < 0)
            {
              v192 = &v355[0][~*(v4 + 56)];
              v193 = -v54;
              *v7 = -v54 | 0x80030000;
              v115 = v7 + 1;
              v15 = v313;
              if (v54 >= 0xFFFFFFF7)
              {
                v339 = 0;
                v14 = 0;
                v12 = 0;
                if (*(v328 + 8 * v193) == -1)
                {
                  *(v328 + 8 * v193) = v192;
                }

                v11 = 1;
                goto LABEL_508;
              }

              v339 = 0;
              v14 = 0;
              v12 = 0;
              *(v7 + 1) = __ROR8__(v192, 32);
LABEL_472:
              v7 += 3;
LABEL_240:
              v11 = 1;
              goto LABEL_30;
            }

            if (v54 <= 14)
            {
              if ((v54 - 6) < 6)
              {
                v15 = v313;
                if ((v17 & 0x20000) != 0)
                {
                  v198 = -2145910768;
                  if (v54 != 7 && v54 != 9)
                  {
                    if (v54 == 11)
                    {
                      v198 = -2145910768;
                    }

                    else
                    {
                      v198 = -2145910769;
                    }
                  }

                  *v7 = v198;
                  if (((1 << v54) & 0xC0) != 0)
                  {
                    v339 = 0;
                    v14 = 0;
                    v12 = 0;
                    v199 = 196621;
                  }

                  else
                  {
                    v339 = 0;
                    v14 = 0;
                    v12 = 0;
                    if (((1 << v54) & 0x300) != 0)
                    {
                      v199 = 393216;
                    }

                    else
                    {
                      v199 = 0x80000;
                    }
                  }

                  v7[1] = v199;
                  v7 += 2;
                  goto LABEL_240;
                }

                v339 = 0;
                v14 = 0;
                v12 = 0;
                v45 = v54 - 2145910784;
                goto LABEL_239;
              }

              if (v54 == 12)
              {
                goto LABEL_461;
              }

              if (v54 != 14)
              {
LABEL_524:
                v339 = 0;
                v14 = 0;
                v12 = 0;
                v11 = 0;
                *v7++ = v54 - 2145910784;
                goto LABEL_464;
              }

              if ((v17 & 0x100000) == 0)
              {
                v339 = 0;
                v14 = 0;
                v12 = 0;
                v168 = -2145910770;
                goto LABEL_463;
              }

              v203 = 183;
LABEL_695:
              HIDWORD(v351) = v203;
            }

            else
            {
              if (v54 > 0x1C)
              {
                goto LABEL_524;
              }

              v191 = 1 << v54;
              if (((1 << v54) & 0x7E0000) != 0)
              {
LABEL_461:
                v339 = 0;
                v14 = 0;
                v12 = 0;
                v168 = v54 - 2145910784;
                goto LABEL_463;
              }

              if ((v191 & 0x18000) != 0)
              {
                LODWORD(v344) = 0;
                v345 = 0;
                if (get_ucp(v355, &v344, &v345 + 1, &v345, &v351 + 1, v4))
                {
                  v339 = 0;
                  v14 = 0;
                  v12 = 0;
                  if (v54 == 15)
                  {
                    v200 = 16;
                  }

                  else
                  {
                    v200 = 15;
                  }

                  if (v344)
                  {
                    v201 = v200;
                  }

                  else
                  {
                    v201 = v54;
                  }

                  v202 = v345 | (HIWORD(v345) << 16);
                  *v7 = v201 - 2145910784;
                  v7[1] = v202;
                  v7 += 2;
                  goto LABEL_517;
                }
              }

              else
              {
                if ((v191 & 0x18000000) == 0)
                {
                  goto LABEL_524;
                }

                if (v355[0] >= v9 || (v194 = *v355[0], v194 != 39) && v194 != 60 && v194 != 123)
                {
                  if (v54 == 27)
                  {
                    v203 = 157;
                  }

                  else
                  {
                    v203 = 169;
                  }

                  goto LABEL_695;
                }

                if (v194 == 39)
                {
                  v195 = 39;
                }

                else
                {
                  v195 = 125;
                }

                if (v194 == 60)
                {
                  v196 = 62;
                }

                else
                {
                  v196 = v195;
                }

                v197 = v194 == 39 || v194 == 60;
                if (v54 != 27 || !v197)
                {
                  goto LABEL_900;
                }

                v344 = v355[0] + 1;
                if (read_number(&v344, v9, *(v4 + 212), 0xFFFFu, 161, &v351, &v351 + 1))
                {
                  v108 = v344;
                  if (v344 < v9 && v196 == *v344)
                  {
                    v107 = v351;
                    v17 = v316;
                    v16 = v322;
                    v15 = v313;
                    v13 = v51;
LABEL_235:
                    v339 = 0;
                    v14 = 0;
                    v12 = 0;
                    *v7 = v107 | 0x80200000;
                    v109 = &v108[-*(v4 + 56)];
                    v346 = v109;
                    v355[0] = v108 + 1;
                    v7[1] = HIDWORD(v109);
                    v7[2] = v109;
                    goto LABEL_472;
                  }

                  v203 = 157;
                  goto LABEL_695;
                }

                if (!HIDWORD(v351))
                {
LABEL_900:
                  if (read_name(v355, v9, *v330, v196, &v346, &v350, &v353, &v351 + 1, v4))
                  {
                    v339 = 0;
                    v14 = 0;
                    v12 = 0;
                    if (v196 == 125 || v54 == 28)
                    {
                      v269 = -2147221504;
                    }

                    else
                    {
                      v269 = -2145320960;
                    }

                    *v7 = v269;
                    v7[1] = v353;
                    *(v7 + 1) = __ROR8__(v346, 32);
                    v7 += 4;
LABEL_517:
                    v11 = 1;
                    v17 = v316;
                    v16 = v322;
                    v15 = v313;
                    v13 = v51;
                    goto LABEL_30;
                  }
                }
              }
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_179;
    }

    if (v354 > 62)
    {
      if (v354 <= 93)
      {
        v50 = v336;
        if (v354 == 63)
        {
          v12 = 2151284736;
          goto LABEL_250;
        }

        if (v354 != 91)
        {
          goto LABEL_115;
        }

LABEL_137:
        v63 = v355[0];
        if (v9 - v355[0] >= 6)
        {
          v64 = v15;
          v65 = v17;
          v66 = v16;
          if (!_pcre2_strncmp_8(v355[0], "[:<:]]", 6) || !_pcre2_strncmp_8(v355[0], "[:>:]]", 6))
          {
            v165 = -2145910768;
            *v7 = -2145910779;
            v166 = v7 + 2;
            v167 = v355[0];
            if (v355[0][2] == 60)
            {
              v7[1] = -2145189888;
            }

            else
            {
              v7[1] = -2145058816;
              *a3 = 1;
              v166 = v7 + 4;
              *(v7 + 1) = 0;
            }

            v16 = v66;
            v17 = v65;
            v15 = v64;
            if ((v65 & 0x20000) != 0)
            {
              v169 = v166 + 2;
              v166[1] = 0x80000;
            }

            else
            {
              v169 = v166 + 1;
              v165 = -2145910773;
            }

            v339 = 0;
            v14 = 0;
            v12 = 0;
            *v166 = v165;
            *v169 = -2145845248;
            v7 = v169 + 1;
            v355[0] = v167 + 6;
            goto LABEL_240;
          }

          v63 = v355[0];
          v16 = v66;
          v17 = v65;
          v15 = v64;
        }

        if (v63 < v9)
        {
          v67 = *v63;
          if (v67 <= 0x3D && ((1 << v67) & 0x2400400000000000) != 0)
          {
            v68 = v15;
            v69 = v17;
            v70 = v16;
            v71 = check_posix_syntax(v63, v9, &v347);
            v63 = v355[0];
            if (v71)
            {
              --v355[0];
              if (*v63 == 58)
              {
                v308 = 112;
              }

              else
              {
                v308 = 113;
              }

              goto LABEL_847;
            }

            v16 = v70;
            v17 = v69;
            v15 = v68;
          }
        }

        if (v63 < v9)
        {
          v72 = 0;
          while (1)
          {
            v355[0] = v63 + 1;
            v73 = *v63;
            if (v343 && v73 >= 0xC0)
            {
              if ((v73 & 0x20) != 0)
              {
                v75 = v63[1] & 0x3F;
                if ((v73 & 0x10) != 0)
                {
                  if ((v73 & 8) != 0)
                  {
                    v76 = v63[2] & 0x3F;
                    v77 = v63[3] & 0x3F;
                    v78 = v63[4] & 0x3F;
                    if ((v73 & 4) != 0)
                    {
                      v73 = ((v73 & 1) << 30) | (v75 << 24) | (v76 << 18) | (v77 << 12) | (v78 << 6) | v63[5] & 0x3F;
                      v63 += 6;
                    }

                    else
                    {
                      v73 = ((v73 & 3) << 24) | (v75 << 18) | (v76 << 12) | (v77 << 6) | v78;
                      v63 += 5;
                    }
                  }

                  else
                  {
                    v73 = ((v73 & 7) << 18) | (v75 << 12) | ((v63[2] & 0x3F) << 6) | v63[3] & 0x3F;
                    v63 += 4;
                  }
                }

                else
                {
                  v73 = ((v73 & 0xF) << 12) | (v75 << 6) | v63[2] & 0x3F;
                  v63 += 3;
                }

                v355[0] = v63;
              }

              else
              {
                v355[0] = v63 + 2;
                v74 = v63[1] & 0x3F | ((v73 & 0x1F) << 6);
                v63 += 2;
                v73 = v74;
              }
            }

            else
            {
              ++v63;
            }

            if (v73 == 92)
            {
              v354 = 92;
              if (v63 < v9 && *v63 == 69)
              {
                v355[0] = ++v63;
                v73 = 92;
              }

              else
              {
                if (v9 - v63 < 3)
                {
                  goto LABEL_265;
                }

                v80 = v15;
                v81 = v17;
                v82 = v16;
                if (_pcre2_strncmp_8(v63, "Q\\E", 3))
                {
                  v73 = v354;
                  v16 = v82;
                  v17 = v81;
                  v15 = v80;
                  goto LABEL_263;
                }

                v63 = v355[0] + 3;
                v355[0] += 3;
                v73 = 92;
                v16 = v82;
                v17 = v81;
                v15 = v80;
              }
            }

            else if ((v17 & 0x1000000) == 0 || (v73 != 32 ? (v79 = v73 == 9) : (v79 = 1), !v79))
            {
              v354 = v73;
              if (v72 || v73 != 94)
              {
                goto LABEL_263;
              }

              v72 = 1;
            }

            if (v63 >= v9)
            {
              goto LABEL_262;
            }
          }
        }

        v72 = 0;
        v73 = 91;
LABEL_262:
        v354 = v73;
LABEL_263:
        if (v73 == 93 && (*(v4 + 204) & 1) != 0)
        {
          v339 = 0;
          v14 = 0;
          v12 = 0;
          if (v72)
          {
            v45 = -2146697216;
          }

          else
          {
            v45 = -2146762752;
          }

          goto LABEL_239;
        }

LABEL_265:
        v313 = v15;
        v317 = v17;
        v117 = 0;
        v118 = 0;
        if (v72)
        {
          v119 = -2146566144;
        }

        else
        {
          v119 = -2146828288;
        }

        *v7++ = v119;
        while (1)
        {
          if (v117)
          {
            if (v354 != 92 || v355[0] >= v9 || *v355[0] != 69)
            {
              goto LABEL_309;
            }

            v117 = 0;
            ++v355[0];
          }

          else
          {
            if ((v17 & 0x1000000) != 0 && (v354 == 9 || v354 == 32))
            {
              goto LABEL_333;
            }

            if (v354 == 91)
            {
              if (v9 - v355[0] < 3 || ((v120 = *v355[0], v229 = v120 > 0x3D, v121 = (1 << v120) & 0x2400400000000000, !v229) ? (v122 = v121 == 0) : (v122 = 1), v122))
              {
LABEL_309:
                v134 = 0;
                v135 = 3;
                goto LABEL_310;
              }

              v123 = v16;
              if (!check_posix_syntax(v355[0], v9, &v347))
              {
                v134 = 0;
                v135 = 3;
                v16 = v123;
                v17 = v317;
                goto LABEL_310;
              }

              if (v118 == 1)
              {
                goto LABEL_861;
              }

              v124 = v355[0];
              if (*v355[0] != 58)
              {
                v307 = 113;
                goto LABEL_856;
              }

              v125 = ++v355[0];
              v126 = v124[1];
              if (v126 == 94)
              {
                v125 = v124 + 2;
                v355[0] = v124 + 2;
              }

              v127 = v347;
              v128 = check_posix_name(v125, v347 - v125);
              if (v128 < 0)
              {
                v304 = 130;
                goto LABEL_838;
              }

              v355[0] = v127 + 2;
              if (v127 + 2 < v331 && v127[2] == 45 && v127[3] != 93)
              {
LABEL_861:
                v304 = 150;
LABEL_838:
                HIDWORD(v351) = v304;
                goto LABEL_849;
              }

              v16 = v123;
              v17 = v317;
              if ((v317 & 0x20000) == 0)
              {
                goto LABEL_293;
              }

              if ((0xBFFFAFFuLL >> (2 * v128)))
              {
                v117 = 0;
                v118 = 0;
                v141 = posix_substitutes[(2 * (v128 & 0x3FFFFFFF)) | 1];
                v142 = posix_substitutes[2 * v128];
                if (v126 == 94)
                {
                  v143 = -2145910769;
                }

                else
                {
                  v143 = -2145910768;
                }

                *v7 = v143;
                v7[1] = v141 | (v142 << 16);
              }

              else
              {
                if (((0xAAA2280uLL >> ((2 * v128) | 1u)) & 1) == 0)
                {
                  v117 = 0;
                  v118 = 0;
                  if (v126 == 94)
                  {
                    v139 = -2145910766;
                  }

                  else
                  {
                    v139 = -2145910765;
                  }

                  *v7++ = v139;
                  goto LABEL_341;
                }

LABEL_293:
                v117 = 0;
                v118 = 0;
                if (v126 == 94)
                {
                  v129 = -2145583104;
                }

                else
                {
                  v129 = -2145648640;
                }

                *v7 = v129;
                v7[1] = v128;
              }

              v7 += 2;
              goto LABEL_341;
            }

            if (v354 == 45 && v118 >= 2)
            {
              v117 = 0;
              if (v118 == 3)
              {
                v138 = -2145452032;
              }

              else
              {
                v138 = -2145517568;
              }

              *v7++ = v138;
              v118 = 1;
              goto LABEL_341;
            }

            if (v354 != 92)
            {
              goto LABEL_309;
            }

            v323 = v16;
            v131 = v355[0];
            v347 = v355[0];
            v132 = _pcre2_check_escape_8(v355, v9, &v354, &v351 + 1, v17, *(*v4 + 64), 1, v4);
            if (HIDWORD(v351))
            {
              if ((v336 & 2) == 0)
              {
                goto LABEL_848;
              }

              v355[0] = v131;
              v17 = v317;
              v16 = v323;
              if (v131 >= v9)
              {
                v354 = 92;
                v134 = 1;
                v135 = 2;
              }

              else
              {
                v355[0] = v131 + 1;
                v133 = *v131;
                v354 = v133;
                v134 = 1;
                v135 = 2;
                if (v343)
                {
                  v4 = a4;
                  if (v133 < 0xC0)
                  {
                    goto LABEL_310;
                  }

                  if ((v133 & 0x20) == 0)
                  {
                    v355[0] = v131 + 2;
                    v354 = v131[1] & 0x3F | ((v133 & 0x1F) << 6);
                    v134 = 1;
                    goto LABEL_310;
                  }

                  v151 = v131[1] & 0x3F;
                  if ((v133 & 0x10) == 0)
                  {
                    v354 = ((v133 & 0xF) << 12) | (v151 << 6) | v131[2] & 0x3F;
                    v152 = v131 + 3;
                    goto LABEL_397;
                  }

                  if ((v133 & 8) == 0)
                  {
                    v354 = ((v133 & 7) << 18) | (v151 << 12) | ((v131[2] & 0x3F) << 6) | v131[3] & 0x3F;
                    v152 = v131 + 4;
                    goto LABEL_397;
                  }

                  v155 = v131[2] & 0x3F;
                  v156 = v131[3] & 0x3F;
                  v157 = v131[4] & 0x3F;
                  if ((v133 & 4) != 0)
                  {
                    v354 = ((v133 & 1) << 30) | (v151 << 24) | (v155 << 18) | (v156 << 12) | (v157 << 6) | v131[5] & 0x3F;
                    v152 = v131 + 6;
LABEL_397:
                    v355[0] = v152;
                  }

                  else
                  {
                    v354 = ((v133 & 3) << 24) | (v151 << 18) | (v155 << 12) | (v156 << 6) | v157;
                    v355[0] = v131 + 5;
                  }

LABEL_398:
                  v134 = 1;
                  v135 = 2;
LABEL_310:
                  v136 = v354;
                  if (v118 == 1)
                  {
                    v137 = *(v7 - 2);
                    if (v354 == v137)
                    {
                      v118 = 0;
                      --v7;
                    }

                    else
                    {
                      if (v137 > v354)
                      {
                        v307 = 108;
LABEL_856:
                        HIDWORD(v351) = v307;
LABEL_857:
                        --v355[0];
                        goto LABEL_849;
                      }

                      if (v134 && *(v7 - 1) == -2145452032)
                      {
                        *(v7 - 1) = -2145517568;
                        v136 = v354;
                      }

                      v118 = 0;
                      *v7++ = v136;
                    }
                  }

                  else
                  {
                    *v7++ = v354;
                    v118 = v135;
                  }

                  goto LABEL_341;
                }
              }

              v4 = a4;
              goto LABEL_310;
            }

            v140 = v132;
            if (v132 <= 16)
            {
              v17 = v317;
              if (!v132)
              {
                v134 = 1;
                v135 = 2;
                v16 = v323;
                goto LABEL_310;
              }

              v16 = v323;
              if (v132 == 5)
              {
                v354 = 8;
                goto LABEL_398;
              }

              if (v132 == 4)
              {
                goto LABEL_892;
              }

LABEL_371:
              if (v118 == 1)
              {
                goto LABEL_877;
              }

              if (v132 > 14)
              {
                if ((v132 - 18) >= 4)
                {
                  if ((v132 - 15) >= 2)
                  {
                    goto LABEL_892;
                  }

                  LODWORD(v344) = 0;
                  v345 = 0;
                  if (!get_ucp(v355, &v344, &v345 + 1, &v345, &v351 + 1, a4))
                  {
                    goto LABEL_848;
                  }

                  if (v140 == 15)
                  {
                    v158 = 16;
                  }

                  else
                  {
                    v158 = 15;
                  }

                  if (v344)
                  {
                    v159 = v158;
                  }

                  else
                  {
                    v159 = v140;
                  }

                  v160 = v345 | (HIWORD(v345) << 16);
                  *v7 = v159 - 2145910784;
                  v7[1] = v160;
                  v7 += 2;
                  v17 = v317;
                  v16 = v323;
                  v4 = a4;
                  goto LABEL_402;
                }
              }

              else
              {
                if ((v132 - 6) >= 6)
                {
                  if (v132 == 12)
                  {
                    v308 = 171;
                    goto LABEL_847;
                  }

LABEL_892:
                  HIDWORD(v351) = 107;
                  v311 = v355[0] - 1;
LABEL_893:
                  v355[0] = v311;
                  goto LABEL_848;
                }

                if ((v17 & 0x20000) != 0)
                {
                  v153 = -2145910768;
                  if (v132 != 7 && v132 != 9)
                  {
                    if (v132 == 11)
                    {
                      v153 = -2145910768;
                    }

                    else
                    {
                      v153 = -2145910769;
                    }
                  }

                  *v7 = v153;
                  if (((1 << v132) & 0xC0) != 0)
                  {
                    v154 = 196621;
                  }

                  else if (((1 << v132) & 0x300) != 0)
                  {
                    v154 = 393216;
                  }

                  else
                  {
                    v154 = 0x80000;
                  }

                  v7[1] = v154;
                  v7 += 2;
                  v17 = v317;
                  v16 = v323;
                  goto LABEL_402;
                }
              }

              *v7++ = v132 - 2145910784;
LABEL_402:
              if (v355[0] < v331 && *v355[0] == 45 && v355[0][1] != 93)
              {
LABEL_877:
                v308 = 150;
                goto LABEL_847;
              }

              v117 = 0;
              v118 = 0;
              goto LABEL_341;
            }

            v17 = v317;
            if (v132 <= 25)
            {
              v16 = v323;
              if (v132 != 25)
              {
                if (v132 == 17 || v132 == 22)
                {
                  goto LABEL_892;
                }

                goto LABEL_371;
              }

LABEL_333:
              v117 = 0;
              goto LABEL_341;
            }

            v16 = v323;
            if (v132 != 26)
            {
              goto LABEL_371;
            }

            v117 = 1;
          }

LABEL_341:
          v144 = v355[0];
          if (v355[0] >= v9)
          {
            v308 = 106;
            goto LABEL_847;
          }

          ++v355[0];
          v145 = *v144;
          v354 = v145;
          if (v343 && v145 >= 0xC0)
          {
            if ((v145 & 0x20) != 0)
            {
              v146 = v144[1] & 0x3F;
              if ((v145 & 0x10) != 0)
              {
                if ((v145 & 8) != 0)
                {
                  v148 = v144[2] & 0x3F;
                  v149 = v144[3] & 0x3F;
                  v150 = v144[4] & 0x3F;
                  if ((v145 & 4) != 0)
                  {
                    v145 = ((v145 & 1) << 30) | (v146 << 24) | (v148 << 18) | (v149 << 12) | (v150 << 6) | v144[5] & 0x3F;
                    v354 = v145;
                    v147 = v144 + 6;
                  }

                  else
                  {
                    v147 = v144 + 5;
                    v145 = ((v145 & 3) << 24) | (v146 << 18) | (v148 << 12) | (v149 << 6) | v150;
                    v354 = v145;
                  }
                }

                else
                {
                  v145 = ((v145 & 7) << 18) | (v146 << 12) | ((v144[2] & 0x3F) << 6) | v144[3] & 0x3F;
                  v354 = v145;
                  v147 = v144 + 4;
                }
              }

              else
              {
                v145 = ((v145 & 0xF) << 12) | (v146 << 6) | v144[2] & 0x3F;
                v354 = v145;
                v147 = v144 + 3;
              }

              v355[0] = v147;
            }

            else
            {
              v355[0] = v144 + 2;
              v354 = v144[1] & 0x3F | ((v145 & 0x1F) << 6);
              v145 = v354;
            }
          }

          if (!v117 && v145 == 93)
          {
            if (v118 == 1)
            {
              *(v7 - 1) = 45;
            }

            v339 = 0;
            v14 = 0;
            v12 = 0;
            v168 = -2146631680;
LABEL_463:
            *v7++ = v168;
            v11 = 1;
LABEL_464:
            v15 = v313;
            goto LABEL_30;
          }
        }
      }

LABEL_179:
      switch(v354)
      {
        case '^':
          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          v84 = -2146893824;
          break;
        case '{':
          v110 = v11;
          v111 = v15;
          v112 = v17;
          v113 = v16;
          if (!read_repeat_counts(v355, v9, &v349 + 1, &v349, &v351 + 1))
          {
            v14 = HIDWORD(v351);
            if (!HIDWORD(v351))
            {
              v16 = v113;
              v339 = 0;
              v12 = 0;
              *v7++ = 123;
              v11 = 1;
              v17 = v112;
              v15 = v111;
              goto LABEL_260;
            }

            goto LABEL_848;
          }

          v12 = 2151481344;
          v16 = v113;
          v17 = v112;
          v15 = v111;
          LODWORD(v11) = v110;
          goto LABEL_250;
        case '|':
          if (v333 && *v333 == v16 && (v333[3] & 1) != 0)
          {
            v83 = *(v4 + 212);
            if (v83 > v333[2])
            {
              v333[2] = v83;
            }

            *(v4 + 212) = v333[1];
          }

          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          v84 = -2147418112;
          break;
        default:
          goto LABEL_238;
      }

LABEL_224:
      *v7++ = v84;
      goto LABEL_30;
    }

    if (v354 > 41)
    {
      if (v354 != 42)
      {
        if (v354 != 43)
        {
          goto LABEL_202;
        }

        v12 = 2151088128;
LABEL_250:
        if (v11)
        {
          v114 = v7 - 1;
          if (*(v7 - 1) == -2144731136)
          {
            while (v114 >= *&v330[4])
            {
              v114[1] = *v114;
              --v114;
            }

            **&v330[4] = -2145779712;
            v7[1] = -2145845248;
            v7 += 2;
          }

          *v7 = v12;
          v115 = v7 + 1;
          if (v354 == 123)
          {
            v339 = 0;
            v14 = 0;
            v11 = 0;
            v116 = v349;
            v7[1] = HIDWORD(v349);
            v7[2] = v116;
            v7 += 3;
            goto LABEL_30;
          }

          v339 = 0;
          v14 = 0;
          v11 = 0;
          goto LABEL_508;
        }

        v307 = 109;
        goto LABEL_856;
      }

LABEL_225:
      v12 = 2150891520;
      goto LABEL_250;
    }

LABEL_99:
    if (v354 == 36)
    {
      v339 = 0;
      v14 = 0;
      v12 = 0;
      v11 = 0;
      v84 = -2146041856;
      goto LABEL_224;
    }

    if (v354 != 40)
    {
      if (v354 == 41)
      {
        v46 = v333;
        if (v333 && *v333 == v16)
        {
          v47 = *(v333 + 2);
          v48 = v333[3];
          if (v48)
          {
            v49 = v333[2];
            v46 = v333;
            if (*(v4 + 212) < v49)
            {
              *(v4 + 212) = v49;
            }
          }

          v11 = (v48 & 2) == 0;
          if ((v48 & 4) != 0)
          {
            *v7++ = -2145845248;
          }

          v17 = v47 | v17 & 0xFEFBDB17;
          if (v46 == *(v4 + 40))
          {
            v46 = 0;
          }

          else
          {
            v46 -= 6;
          }
        }

        else
        {
          v11 = 1;
        }

        if (v16)
        {
          v333 = v46;
          v339 = 0;
          v14 = 0;
          v12 = 0;
          v16 = (v16 - 1);
          *v7++ = -2145845248;
          goto LABEL_30;
        }

        v307 = 122;
        goto LABEL_856;
      }

      goto LABEL_238;
    }

    v99 = v355[0];
    if (v355[0] >= v9)
    {
      goto LABEL_836;
    }

    v100 = *v355[0];
    if (v100 == 42)
    {
      if (v9 - v355[0] < 2)
      {
        goto LABEL_408;
      }

      v161 = v355[0][1];
      v354 = v161;
      if (v161 == 41)
      {
        goto LABEL_408;
      }

      v314 = v15;
      v318 = v17;
      v324 = v16;
      v172 = *(*(v4 + 32) + v161);
      v173 = read_name(v355, v9, *v330, 0, &v346, &v350, &v353, &v351 + 1, v4);
      if ((v172 & 4) == 0)
      {
        v13 = v13;
        if (!v173)
        {
          goto LABEL_848;
        }

        if (v355[0] >= v9 || (v174 = *v355[0], v174 != 41) && v174 != 58)
        {
LABEL_860:
          v308 = 160;
          goto LABEL_847;
        }

        v175 = 0;
        v176 = v353;
        v340 = v350;
        v177 = &dword_1C37918CC;
        v178 = &verbnames;
        v4 = a4;
        while (1)
        {
          v179 = *(v177 - 1);
          if (v176 == v179)
          {
            v180 = _pcre2_strncmp_8(v340, v178, v176);
            v17 = v318;
            v16 = v324;
            if (!v180)
            {
              break;
            }
          }

          v177 += 3;
          v178 += (v179 + 1);
          if (++v175 == 9)
          {
            goto LABEL_860;
          }
        }

        LODWORD(v351) = v175;
        v224 = v355[0];
        v225 = v355[0] + 1;
        v226 = *v355[0] != 58 || v225 >= v9;
        if (!v226 && *v225 == 41)
        {
          ++v355[0];
          ++v224;
        }

        if (v175 <= 1 && *v224 != 58)
        {
          v308 = 166;
          goto LABEL_847;
        }

        v11 = v175 == 2;
        v227 = v224 + 1;
        v355[0] = v224 + 1;
        if (*v224 == 58)
        {
          v228 = v177[1];
          v229 = v228 < 0;
          if (v228 >= 0)
          {
            v230 = *v177 + ((*v177 != -2144796672) << 16);
          }

          else
          {
            v230 = -2144796672;
          }

          v231 = v337;
          if (v229)
          {
            v231 = *v177;
          }

          v337 = v231;
          v334 = (v7 + 1);
          v335 = v227;
          *v7 = v230;
          v115 = v7 + 2;
          v13 = 1;
        }

        else
        {
          *v7 = *v177;
          v115 = v7 + 1;
        }

        *&v330[4] = v7;
        v15 = v314;
        goto LABEL_422;
      }

      if (!v173)
      {
        goto LABEL_848;
      }

      if (v355[0] >= v9 || *v355[0] != 58)
      {
LABEL_859:
        v308 = 195;
        goto LABEL_847;
      }

      v181 = 0;
      v182 = v353;
      v183 = v350;
      v184 = &dword_1C3791818;
      v185 = &alasnames;
      while (1)
      {
        v186 = *(v184 - 1);
        if (v182 == v186)
        {
          v187 = _pcre2_strncmp_8(v183, v185, v182);
          LODWORD(v16) = v324;
          if (!v187)
          {
            break;
          }
        }

        v185 += (v186 + 1);
        ++v181;
        v184 += 2;
        if (v181 == 17)
        {
          goto LABEL_859;
        }
      }

      LODWORD(v351) = v181;
      v232 = *v184;
      if (v339 >= 1 && (((0xB000uLL >> v181) | (0x1430CuLL >> v181)) & 1) != 0)
      {
        v310 = vdupq_n_s64(v181);
        if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v310, xmmword_1C3791510), vceqq_s64(v310, xmmword_1C3791500)), xmmword_1C3791520)))
        {
          v308 = 198;
        }

        else
        {
          v308 = 128;
        }

        goto LABEL_847;
      }

      if (v232 > -2145058817)
      {
        if (v232 <= -2144927745)
        {
          if (v232 != -2145058816 && v232 != -2144993280)
          {
            goto LABEL_897;
          }

          goto LABEL_723;
        }

        if (v232 != -2144927744)
        {
          if (v232 != -2144862208)
          {
            if (v232 != -1879113728)
            {
              goto LABEL_897;
            }

LABEL_672:
            *v7 = -2145255424;
            v115 = v7 + 1;
            v16 = (v16 + 1);
            ++v355[0];
            if (v181 == 16 || v181 == 14)
            {
              v7[1] = -2147352576;
              if (v333)
              {
                v333 += 6;
                if (v333 >= v327)
                {
                  goto LABEL_873;
                }
              }

              else
              {
                v333 = *(a4 + 40);
              }

              v11 = 0;
              v115 = v7 + 2;
              *v333 = v16;
              v333[3] = 4;
              v17 = v318;
              *(v333 + 2) = v318 & 0x10424E8;
            }

            else
            {
              v11 = 0;
              v17 = v318;
            }

            v13 = v13;
            v15 = v314;
            v4 = a4;
LABEL_422:
            v339 = 0;
            v14 = 0;
            v12 = 0;
LABEL_508:
            v7 = v115;
            goto LABEL_30;
          }

LABEL_723:
          *v7 = v232;
          v101 = v355[0] - 1;
          v15 = v314;
          v17 = v318;
          v13 = v13;
          v4 = a4;
LABEL_724:
          *a3 = 1;
          v271 = &v101[-*(v4 + 56) - 2];
          v346 = v271;
          v7[1] = HIDWORD(v271);
          v7[2] = v271;
          v7 += 3;
          v272 = v101 + 2;
LABEL_746:
          v355[0] = v272;
          v16 = (v16 + 1);
          if (v339 < 1)
          {
            goto LABEL_408;
          }

          if (v333)
          {
            v278 = v333 + 6;
            if ((v333 + 6) >= v327)
            {
              goto LABEL_873;
            }
          }

          else
          {
            v278 = *(v4 + 40);
          }

          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          *v278 = v16;
          v278[3] = 2;
          v333 = v278;
          *(v278 + 2) = v17 & 0x10424E8;
          goto LABEL_30;
        }

        v101 = v355[0];
        v15 = v314;
        v17 = v318;
        v13 = v13;
        v4 = a4;
LABEL_744:
        v270 = -2144927744;
LABEL_745:
        *v7++ = v270;
        v272 = v101 + 1;
        goto LABEL_746;
      }

      if (v232 > -2145189889)
      {
        if (v232 == -2145189888)
        {
          v101 = v355[0];
          v17 = v318;
          LODWORD(v16) = v324;
          v13 = v13;
          v15 = v314;
          v4 = a4;
LABEL_742:
          v270 = -2145189888;
          goto LABEL_745;
        }

        LODWORD(v16) = v324;
        if (v232 == -2145124352)
        {
          v101 = v355[0];
          v15 = v314;
          v17 = v318;
          v13 = v13;
          v4 = a4;
LABEL_720:
          v270 = -2145124352;
          goto LABEL_745;
        }
      }

      else
      {
        if (v232 == -2147352576)
        {
          v101 = v355[0];
          v17 = v318;
          LODWORD(v16) = v324;
          v13 = v13;
          v15 = v314;
          v4 = a4;
LABEL_740:
          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          *v7++ = -2147352576;
          v16 = (v16 + 1);
          v21 = v101 + 1;
          goto LABEL_20;
        }

        LODWORD(v16) = v324;
        if (v232 == -2145255424)
        {
          goto LABEL_672;
        }
      }

LABEL_897:
      v308 = 189;
      goto LABEL_847;
    }

    if (v100 != 63)
    {
      v16 = (v16 + 1);
      if ((v17 & 0x2000) != 0)
      {
        v11 = 0;
        v164 = -2145779712;
      }

      else
      {
        v162 = *(v4 + 212);
        if (v162 >= 0xFFFF)
        {
LABEL_867:
          v308 = 197;
          goto LABEL_847;
        }

        v11 = 0;
        v163 = v162 + 1;
        *(v4 + 212) = v163;
        v164 = v163 - 2146959360;
      }

      *v7 = v164;
      v115 = v7 + 1;
      goto LABEL_422;
    }

    v101 = ++v355[0];
    if (v99 + 1 >= v9)
    {
      goto LABEL_836;
    }

    v102 = *v101;
    v103 = -1;
    switch(*v101)
    {
      case '!':
        goto LABEL_720;
      case '&':
        goto LABEL_534;
      case '\'':
        goto LABEL_543;
      case '(':
        v355[0] = v99 + 2;
        if (v99 + 2 >= v9)
        {
          goto LABEL_836;
        }

        v16 = (v16 + 1);
        v222 = v99[2];
        if (v222 == 63 || v222 == 42)
        {
          v14 = 0;
          v12 = 0;
          v11 = 0;
          *v7++ = -2146500608;
          v355[0] = v99 + 1;
          v339 = 2;
          goto LABEL_30;
        }

        v315 = v15;
        v320 = v17;
        v326 = v16;
        if (read_number(v355, v9, *(v4 + 212), 0xFFFFu, 161, &v351, &v351 + 1))
        {
          if (v351 > 0)
          {
            *v7 = -2146304000;
            v258 = v355[0];
            v259 = &v355[0][-*(a4 + 56) - 2];
            v346 = v259;
            v7[1] = HIDWORD(v259);
            v7[2] = v259;
            v7[3] = v351;
            goto LABEL_784;
          }

          v308 = 115;
          goto LABEL_847;
        }

        if (HIDWORD(v351))
        {
          goto LABEL_848;
        }

        v273 = v355[0];
        if (v9 - v355[0] < 10 || (v274 = _pcre2_strncmp_8(v355[0], "VERSION", 7), v273 = v355[0], v274) || v355[0][7] == 41)
        {
          v275 = *v273;
          if (v275 == 82 && v9 - v273 >= 2)
          {
            if (v273[1] == 38)
            {
              v355[0] = v273 + 1;
              if (!read_name(v355, v9, *v330, 0x29u, &v346, &v350, &v353, &v351 + 1, a4))
              {
                goto LABEL_848;
              }

              v276 = -2146238464;
              goto LABEL_782;
            }

LABEL_760:
            v355[0] = v273 - 1;
            if (!read_name(v355, v9, *v330, 0x29u, &v346, &v350, &v353, &v351 + 1, a4))
            {
              goto LABEL_848;
            }

            v280 = v353;
            v281 = v350;
            if (v353 == 6)
            {
              if (!_pcre2_strncmp_8(v350, "DEFINE", 6))
              {
                *v7 = -2146435072;
                v258 = --v355[0];
                *(v7 + 1) = __ROR8__(v346, 32);
                v7 += 3;
                goto LABEL_785;
              }
            }

            else if (v353 < 2)
            {
              LODWORD(v282) = 1;
LABEL_775:
              LODWORD(v351) = v282;
              if (*v281 != 82 || v282 < v280)
              {
                v287 = -458752;
              }

              else
              {
                v287 = -262144;
              }

              v276 = v287 - 2145910784;
LABEL_782:
              *v7 = v276;
              v258 = --v355[0];
              goto LABEL_783;
            }

            v282 = 1;
            while (v281[v282] - 48 <= 9)
            {
              if (v280 == ++v282)
              {
                LODWORD(v282) = v280;
                goto LABEL_775;
              }
            }

            goto LABEL_775;
          }

          if (v275 == 60)
          {
            v279 = 62;
          }

          else
          {
            if (v275 != 39)
            {
              goto LABEL_760;
            }

            v279 = 39;
          }

          if (!read_name(v355, v9, *v330, v279, &v346, &v350, &v353, &v351 + 1, a4))
          {
            goto LABEL_848;
          }

          *v7 = -2146369536;
          v258 = v355[0];
LABEL_783:
          v7[1] = v353;
          *(v7 + 1) = __ROR8__(v346, 32);
          goto LABEL_784;
        }

        v355[0] += 7;
        v283 = v273[7];
        if (v283 == 62)
        {
          v283 = v273[8];
          v355[0] = v273 + 8;
          v284 = 1;
          v285 = 8;
        }

        else
        {
          v284 = 0;
          v285 = 7;
        }

        if (v283 != 61)
        {
          goto LABEL_896;
        }

        v288 = &v273[v285 + 1];
        v355[0] = v288;
        if (*v288 - 58 < 0xFFFFFFF6)
        {
          goto LABEL_896;
        }

        HIDWORD(v351) = 0;
        if (v288 >= v9)
        {
          goto LABEL_848;
        }

        v289 = 0;
        v290 = &v273[v285 + 2];
        while (1)
        {
          v258 = v290 - 1;
          if (v290 - 1 >= v9)
          {
            v355[0] = v290 - 1;
LABEL_896:
            v308 = 179;
            goto LABEL_847;
          }

          v291 = *v258;
          if ((v291 - 48) > 9)
          {
            break;
          }

          v289 = v291 + 10 * v289 - 48;
          ++v290;
          if (v289 >= 0x3E9)
          {
            HIDWORD(v351) = 179;
            v311 = v290 - 1;
            goto LABEL_893;
          }
        }

        v355[0] = v290 - 1;
        if (*(v290 - 1) != 46)
        {
          v293 = 0;
          goto LABEL_807;
        }

        v355[0] = v290;
        if (v290 >= v9)
        {
          goto LABEL_896;
        }

        if (*v290 - 48 > 9)
        {
          goto LABEL_896;
        }

        v258 = v290 + 1;
        v355[0] = v290 + 1;
        if (v290 + 1 >= v9)
        {
          goto LABEL_896;
        }

        v292 = 10 * *v290;
        if (*v258 - 48 > 9)
        {
          v293 = v292 - 480;
        }

        else
        {
          v258 = v290 + 2;
          v355[0] = v290 + 2;
          v293 = v292 + v290[1] - 528;
        }

        if (v258 >= v9 || *v258 != 41)
        {
          goto LABEL_896;
        }

LABEL_807:
        *v7 = -2146107392;
        v7[1] = v284;
        v7[2] = v289;
        v7[3] = v293;
LABEL_784:
        v7 += 4;
LABEL_785:
        if (v258 >= v9 || *v258 != 41)
        {
          v308 = 124;
          goto LABEL_847;
        }

        v339 = 0;
        v14 = 0;
        v12 = 0;
        v11 = 0;
        v355[0] = v258 + 1;
        v17 = v320;
        v16 = v326;
LABEL_537:
        v15 = v315;
LABEL_260:
        v4 = a4;
LABEL_30:
        v5 = v355[0];
        if (v355[0] < v9)
        {
          continue;
        }

        LOBYTE(v8) = v336;
        if (v13)
        {
          v304 = 160;
          goto LABEL_838;
        }

LABEL_829:
        v301 = v16;
        v302 = manage_callouts(v5, &v352, v342, v7, v4);
        if ((v8 & 8) != 0)
        {
          v303 = -2146041856;
LABEL_833:
          *v302 = -2145845248;
          v302[1] = v303;
          v302 += 2;
        }

        else if ((v8 & 4) != 0)
        {
          v303 = -2145910779;
          goto LABEL_833;
        }

        if (v302 >= v6)
        {
LABEL_837:
          v304 = 163;
          goto LABEL_838;
        }

        *v302 = 0x80000000;
        if (v301)
        {
          goto LABEL_836;
        }

        return 0;
      case '*':
        goto LABEL_744;
      case '+':
        if (v9 - v101 >= 2 && v99[2] - 48 < 0xA)
        {
          goto LABEL_565;
        }

        v308 = 129;
        goto LABEL_847;
      case '-':
        if (v9 - v101 < 2 || v99[2] - 48 >= 0xA)
        {
          goto LABEL_527;
        }

LABEL_565:
        v103 = *(v4 + 212);
        goto LABEL_231;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
LABEL_231:
        v104 = v15;
        v105 = v17;
        v106 = v16;
        if (!read_number(v355, v9, v103, 0xFFFFu, 161, &v351, &v351 + 1))
        {
          goto LABEL_848;
        }

        v107 = v351;
        if ((v351 & 0x80000000) == 0)
        {
          v16 = v106;
          v108 = v355[0];
          v4 = a4;
          if (v355[0] >= v9)
          {
            goto LABEL_836;
          }

          v17 = v105;
          v15 = v104;
          if (*v355[0] != 41)
          {
            goto LABEL_836;
          }

          goto LABEL_235;
        }

        HIDWORD(v351) = 115;
        v4 = a4;
        goto LABEL_857;
      case '<':
        if (v9 - v101 < 2)
        {
          goto LABEL_542;
        }

        v238 = v99[2];
        v102 = 62;
        if (v238 > 0x3D || ((1 << v238) & 0x2000040200000000) == 0)
        {
          goto LABEL_543;
        }

        if (v238 == 33)
        {
          v239 = -2144993280;
        }

        else
        {
          v239 = -2144862208;
        }

        if (v238 == 61)
        {
          v240 = -2145058816;
        }

        else
        {
          v240 = v239;
        }

        *v7 = v240;
        goto LABEL_724;
      case '=':
        goto LABEL_742;
      case '>':
        goto LABEL_740;
      case 'C':
        v101 = v99 + 2;
        v355[0] = v99 + 2;
        if (v99 + 2 >= v9)
        {
          goto LABEL_836;
        }

        if (v352 && (v17 & 4) != 0 && v352 == v7 - 4)
        {
          if (*(v7 - 1) == 255)
          {
            v223 = v352;
          }

          else
          {
            v223 = v7;
          }
        }

        else
        {
          v223 = v7;
        }

        v352 = v223;
        v241 = *v101;
        if (v241 == 41 || (v241 - 48) < 0xA)
        {
          v243 = v13;
          v246 = 0;
          *v223 = -2147090432;
          while (v101 < v9 && *v101 - 48 <= 9)
          {
            v355[0] = v101 + 1;
            v247 = *v101 + 10 * v246;
            v246 = v247 - 48;
            ++v101;
            if (v247 > 303)
            {
              v308 = 138;
              goto LABEL_847;
            }
          }

          v7 = v223 + 4;
          v223[3] = v246;
LABEL_736:
          if (v101 < v9 && *v101 == 41)
          {
            v14 = 0;
            v12 = 0;
            v11 = 0;
            v355[0] = v101 + 1;
            v4 = a4;
            *(v223 + 1) = (v101 + 1 - *(a4 + 56));
            v15 = 1;
            --v339;
            v13 = v243;
            goto LABEL_30;
          }

          v308 = 139;
          goto LABEL_847;
        }

        v242 = 96;
        v243 = v13;
        v244 = 0;
        while (v242 != v241)
        {
          v245 = &_pcre2_callout_start_delims_8[v244++];
          v242 = v245[1];
          if (!v242)
          {
            goto LABEL_870;
          }
        }

        LODWORD(v351) = v244;
        v265 = _pcre2_callout_end_delims_8[v244];
        if (!v265)
        {
LABEL_870:
          v308 = 182;
          goto LABEL_847;
        }

        *v223 = -2147024896;
        v266 = v99 + 3;
        v355[0] = v99 + 3;
        v267 = v99 + 2;
        while (v266 < v9)
        {
          if (v265 == *v266)
          {
            v266 = v267 + 2;
            v355[0] = v267 + 2;
            if (v267 + 2 >= v9 || v265 != *v266)
            {
              if (!((v266 - v101) >> 32))
              {
                v223[3] = v266 - v101;
                v277 = &v101[-*(a4 + 56)];
                v346 = v277;
                v7 = v223 + 6;
                v223[4] = HIDWORD(v277);
                v223[5] = v277;
                v101 = v267 + 2;
                goto LABEL_736;
              }

              v308 = 172;
LABEL_847:
              HIDWORD(v351) = v308;
LABEL_848:
              v4 = a4;
LABEL_849:
              *(v4 + 168) = &v355[0][-*(v4 + 56)];
              return HIDWORD(v351);
            }
          }

          v267 = v266++;
          v355[0] = v266;
        }

        v309 = 181;
        goto LABEL_880;
      case 'P':
        v355[0] = v99 + 2;
        if (v99 + 2 >= v9)
        {
          goto LABEL_836;
        }

        v205 = v99[2];
        if (v205 != 60)
        {
          if (v205 == 61)
          {
            v315 = v15;
            v206 = v17;
            v260 = v16;
            if (!read_name(v355, v9, *v330, 0x29u, &v346, &v350, &v353, &v351 + 1, v4))
            {
              goto LABEL_848;
            }

            v16 = v260;
            v339 = 0;
            v14 = 0;
            v12 = 0;
            v208 = -2147221504;
          }

          else
          {
            if (v205 != 62)
            {
              v308 = 141;
              goto LABEL_847;
            }

LABEL_534:
            v315 = v15;
            v206 = v17;
            v207 = v16;
            if (!read_name(v355, v9, *v330, 0x29u, &v346, &v350, &v353, &v351 + 1, v4))
            {
              goto LABEL_848;
            }

            v16 = v207;
            v339 = 0;
            v14 = 0;
            v12 = 0;
            v208 = -2145320960;
          }

          *v7 = v208;
          v7[1] = v353;
          *(v7 + 1) = __ROR8__(v346, 32);
          v7 += 4;
          v11 = 1;
          v17 = v206;
          goto LABEL_537;
        }

LABEL_542:
        v102 = 62;
LABEL_543:
        v313 = v15;
        v319 = v17;
        v325 = v16;
        v209 = v13;
        v210 = read_name(v355, v9, *v330, v102, &v346, &v350, &v353, &v351 + 1, v4);
        v211 = v325;
        if (!v210)
        {
          goto LABEL_848;
        }

        v4 = a4;
        v212 = *(a4 + 212);
        if (v212 >= 0xFFFF)
        {
          goto LABEL_867;
        }

        v213 = v212 + 1;
        *(a4 + 212) = v213;
        *v7++ = v213 - 2146959360;
        v214 = *(a4 + 176);
        v17 = v319;
        if (v214 >> 4 >= 0x271)
        {
          v308 = 149;
          goto LABEL_847;
        }

        v215 = v353;
        if (v353 + 3 > *(a4 + 178))
        {
          *(a4 + 178) = v353 + 3;
        }

        if (!v214)
        {
          v221 = 0;
          v217 = 0;
          v216 = 0;
LABEL_599:
          v16 = (v211 + 1);
          LODWORD(v351) = v217;
          if (v217 >= v221)
          {
            v236 = *(a4 + 200);
            if (v236 <= v221)
            {
              v261 = v16;
              v262 = (**a4)(32 * v236, *(*a4 + 16));
              if (!v262)
              {
                v308 = 121;
                goto LABEL_847;
              }

              v263 = v262;
              memcpy(v262, *(a4 + 192), 16 * *(a4 + 200));
              if (*(a4 + 200) >= 0x15u)
              {
                (*(*a4 + 8))(*(a4 + 192), *(*a4 + 16));
              }

              v237 = v263;
              *(a4 + 192) = v263;
              *(a4 + 200) = 2 * v236;
              v221 = *(a4 + 176);
              v16 = v261;
              v17 = v319;
            }

            else
            {
              v237 = *(a4 + 192);
            }

            v339 = 0;
            v14 = 0;
            v12 = 0;
            v11 = 0;
            v264 = v237 + 16 * v221;
            *v264 = v350;
            *(v264 + 12) = v215;
            *(v264 + 8) = *(a4 + 212);
            *(v264 + 14) = v216;
            *(a4 + 176) = v221 + 1;
          }

          else
          {
            v339 = 0;
            v14 = 0;
            v12 = 0;
            v11 = 0;
          }

          goto LABEL_464;
        }

        v216 = 0;
        v217 = 0;
        v341 = v350;
        v218 = *(a4 + 192) + 8;
        while (v215 == *(v218 + 4))
        {
          v219 = _pcre2_strncmp_8(v341, *(v218 - 8), v215);
          v13 = v209;
          v17 = v319;
          v211 = v325;
          v220 = *(a4 + 212);
          if (v219)
          {
            goto LABEL_556;
          }

          if (*v218 == v220)
          {
            v221 = *(a4 + 176);
            goto LABEL_599;
          }

          if ((v319 & 0x40) == 0)
          {
            v308 = 143;
            goto LABEL_847;
          }

          v216 = 1;
          *(v218 + 6) = 1;
          *(a4 + 296) = 1;
LABEL_557:
          ++v217;
          v221 = *(a4 + 176);
          v218 += 16;
          if (v217 >= v221)
          {
            goto LABEL_599;
          }
        }

        v220 = *(a4 + 212);
LABEL_556:
        if (*v218 == v220)
        {
          v308 = 165;
          goto LABEL_847;
        }

        goto LABEL_557;
      case 'R':
        LODWORD(v351) = 0;
        v108 = v99 + 2;
        v355[0] = v99 + 2;
        if (v99 + 2 >= v9 || *v108 != 41)
        {
          v308 = 158;
          goto LABEL_847;
        }

        v107 = 0;
        goto LABEL_235;
      default:
LABEL_527:
        if (v333)
        {
          v204 = v333 + 6;
          if ((v333 + 6) >= v327)
          {
LABEL_873:
            v308 = 184;
            goto LABEL_847;
          }
        }

        else
        {
          v204 = *(v4 + 40);
        }

        *v204 = v16 + 1;
        v204[3] = 0;
        *(v204 + 2) = v17 & 0x10424E8;
        v333 = v204;
        if (*v101 == 124)
        {
          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          v233 = *(v4 + 212);
          v204[1] = v233;
          v204[2] = v233;
          v204[3] = 1;
          *(v4 + 208) |= 0x200000u;
          *v7++ = -2145779712;
          v355[0] = v99 + 2;
          v16 = (v16 + 1);
          goto LABEL_30;
        }

        *(v204 + 1) = 0;
        v348 = 0;
        if (*v101 == 94)
        {
          v234 = 0;
          v235 = v17 & 0xFEFFDB57;
          v101 = v99 + 2;
          v355[0] = v99 + 2;
        }

        else
        {
          v234 = 1;
          v235 = v17;
        }

        if (v101 >= v9)
        {
          goto LABEL_836;
        }

        v248 = &v348 + 1;
        break;
    }

    break;
  }

  while (1)
  {
    v249 = *v101;
    v250 = 1;
    if (v249 == 41 || v249 == 58)
    {
      goto LABEL_663;
    }

    v251 = v101 + 1;
    v355[0] = v101 + 1;
    v252 = *v101;
    if (v252 <= 0x6C)
    {
      break;
    }

    if (*v101 <= 0x72u)
    {
      if (v252 == 109)
      {
        v253 = *v248 | 0x400;
      }

      else
      {
        if (v252 != 110)
        {
          goto LABEL_878;
        }

        v253 = *v248 | 0x2000;
      }

      goto LABEL_659;
    }

    if (v252 == 115)
    {
      v253 = *v248 | 0x20;
      goto LABEL_659;
    }

    if (v252 != 120)
    {
LABEL_878:
      v309 = 111;
LABEL_880:
      HIDWORD(v351) = v309;
      v355[0] = v101;
      goto LABEL_848;
    }

    v254 = *v248;
    *v248 |= 0x80u;
    if (v251 >= v9 || *v251 != 120)
    {
      goto LABEL_660;
    }

    *v248 = v254 | 0x1000080;
    v101 += 2;
    v355[0] = v101;
LABEL_661:
    if (v101 >= v9)
    {
      v250 = 0;
LABEL_663:
      v255 = v348;
      if ((HIDWORD(v348) & 0x1000080) == 0x80 || (v348 & 0x80) != 0)
      {
        v255 = v348 | 0x1000000;
        LODWORD(v348) = v348 | 0x1000000;
        if ((v250 & 1) == 0)
        {
          goto LABEL_836;
        }

LABEL_678:
        v257 = (HIDWORD(v348) | v235) & ~v255;
        v355[0] = v101 + 1;
        if (*v101 == 41)
        {
          if (v333 > *(v4 + 40) && *(v333 - 6) == v16)
          {
            v333 -= 6;
          }

          else
          {
            *v333 = v16;
          }
        }

        else
        {
          *v7++ = -2145779712;
          v16 = (v16 + 1);
        }

        if (v257 != v17)
        {
          v339 = 0;
          v14 = 0;
          v12 = 0;
          v11 = 0;
          *v7 = -2145714176;
          v7[1] = v257;
          v7 += 2;
          v17 = v257;
          goto LABEL_30;
        }

LABEL_408:
        v339 = 0;
        v14 = 0;
        v12 = 0;
        v11 = 0;
        goto LABEL_30;
      }

      if (v250)
      {
        goto LABEL_678;
      }

LABEL_836:
      v304 = 114;
      goto LABEL_838;
    }
  }

  if (*v101 > 0x54u)
  {
    if (v252 == 85)
    {
      v253 = *v248 | 0x40000;
    }

    else
    {
      if (v252 != 105)
      {
        goto LABEL_878;
      }

      v253 = *v248 | 8;
    }

LABEL_659:
    *v248 = v253;
  }

  else if (v252 == 45)
  {
    if (!v234)
    {
      v309 = 194;
      goto LABEL_880;
    }

    v234 = 0;
    v248 = &v348;
  }

  else
  {
    if (v252 != 74)
    {
      goto LABEL_878;
    }

    *v248 |= 0x40u;
    *(v4 + 208) |= 0x400u;
  }

LABEL_660:
  v101 = v251;
  goto LABEL_661;
}

uint64_t check_lookbehinds(unsigned int *a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  *(a4 + 168) = -1;
  v4 = *a1;
  if (*a1 == 0x80000000)
  {
    return 0;
  }

  v8 = 0;
  while ((v4 & 0x80000000) == 0)
  {
LABEL_19:
    v10 = a1[1];
    ++a1;
    v4 = v10;
    v14 = a1;
    if (v10 == 0x80000000)
    {
      return 0;
    }
  }

  switch((v4 + 2147418112) >> 16)
  {
    case 0u:
    case 2u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0x15u:
    case 0x16u:
    case 0x1Du:
    case 0x1Eu:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Du:
    case 0x2Fu:
    case 0x31u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_19;
    case 1u:
    case 7u:
    case 0xEu:
    case 0x19u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x26u:
      goto LABEL_6;
    case 3u:
    case 5u:
    case 0x20u:
      a1 += 3;
      goto LABEL_19;
    case 4u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      ++a1;
      goto LABEL_19;
    case 6u:
      a1 += 5;
      goto LABEL_19;
    case 0xFu:
      a1 += 2;
      goto LABEL_6;
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      a1 += 3;
LABEL_6:
      ++v8;
      goto LABEL_19;
    case 0x17u:
      v9 = v4 + 2145910769 < 2;
      goto LABEL_8;
    case 0x18u:
      if (v8 > 0)
      {
        --v8;
        goto LABEL_19;
      }

      if (a2)
      {
        v11 = 0;
        *a2 = a1;
        return v11;
      }

      return 0;
    case 0x1Fu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
      a1 += 2;
      goto LABEL_19;
    case 0x24u:
    case 0x25u:
    case 0x27u:
      if (!set_lookbehind_lengths(&v14, &v13 + 1, &v13, a3, a4))
      {
        return HIDWORD(v13);
      }

      a1 = v14;
      goto LABEL_19;
    case 0x28u:
    case 0x2Cu:
    case 0x2Eu:
    case 0x30u:
    case 0x32u:
      v9 = a1[1] + 1;
LABEL_8:
      a1 += v9;
      goto LABEL_19;
    default:
      return 170;
  }
}

uint64_t compile_regex(unsigned int a1, unsigned __int8 **a2, unsigned int **a3, int *a4, unsigned int a5, _DWORD *a6, int *a7, _DWORD *a8, int *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v15 = a11;
  v427 = *MEMORY[0x1E69E9840];
  v377 = *a2;
  v16 = *a3;
  v17 = *(*a11 + 24);
  if (v17 && v17(*(a11 + 180), *(*a11 + 32)))
  {
    result = 0;
    v19 = 133;
LABEL_4:
    *a4 = v19;
    goto LABEL_834;
  }

  v20 = a12;
  v414 = 0;
  v415 = 0;
  v412 = a10;
  v413 = v377;
  v21 = *v377;
  if ((v21 - 128) < 2)
  {
    goto LABEL_8;
  }

  if (v21 == 136)
  {
    v22 = 0;
    v375 = 0;
    v23 = __rev16(*(v377 + 3));
    LOWORD(v415) = v23;
    v414 = *(a11 + 184);
    WORD1(v415) = *(a11 + 182);
    *(a11 + 184) = &v414;
    v358 = v23 != 0;
  }

  else
  {
    if (v21 == 131)
    {
LABEL_8:
      v358 = 0;
      v22 = *(v16 - 2);
      v16 += 2;
      v375 = 1;
      goto LABEL_11;
    }

    v22 = 0;
    v375 = 0;
    v358 = 0;
  }

LABEL_11:
  v361 = 0;
  *(v377 + 1) = 0;
  v24 = &v377[a5 + 3];
  v25 = &v421;
  if (!a12)
  {
    v25 = 0;
  }

  v381 = v25;
  v362 = -2;
  LODWORD(result) = 1;
  v365 = -2;
  v363 = a5;
  v364 = v377;
  v26 = a5 + 6;
  v359 = a7;
  v360 = a8;
  while (2)
  {
    v27 = v375;
    if (!v22)
    {
      v27 = 0;
    }

    v366 = result;
    if (v27 == 1)
    {
      *v24 = 125;
      v24[1] = BYTE1(v22);
      v24[2] = v22;
      v24 += 3;
      v26 += 3;
    }

    v410 = 0;
    v395 = 0;
    v28 = 0;
    v391 = 0;
    v392 = 0;
    v385 = 0;
    v383 = 0;
    v421 = 0;
    v422 = v16;
    v419 = 0;
    v420 = 0;
    v29 = *(v15 + 24);
    v369 = a1;
    v370 = (a1 >> 18) & 1;
    v376 = (a1 & 0x40000) == 0;
    v378 = 0;
    v379 = (a1 >> 3) & 1;
    v374 = a1 & 0xA0000;
    v380 = v29;
    v367 = v29 + 64;
    v368 = v29 + 160;
    v30 = -1;
    v390 = -2;
    v31 = v24;
    v384 = v24;
    v387 = 4294967294;
    v393 = -2;
    v396 = -2;
    v394 = a1;
LABEL_19:
    v417 = 0;
    v418 = 0;
    LODWORD(v32) = *v16;
    v33 = *v16 & 0xFFFF0000;
    if (v20)
    {
      v34 = *(v15 + 40) + *(v15 + 80);
      if (v24 > v34 - 100)
      {
        if (v24 >= v34)
        {
          v351 = 152;
        }

        else
        {
          v351 = 186;
        }

        goto LABEL_832;
      }

      if (v24 >= v31)
      {
        v31 = v24;
      }

      if (v32 < 0x80340000 || v33 > 0x803F0000)
      {
        v24 = v384;
        if (2147483627 - v26 < v31 - v384)
        {
          goto LABEL_828;
        }

        v26 += v31 - v384;
        v31 = v384;
        if (v26 > 0x10000)
        {
          goto LABEL_828;
        }
      }

      else
      {
        v24 = v31;
      }
    }

    v402 = v31;
    v404 = v26;
    __dst = v24;
    v397 = *v16 & 0xFFFF0000;
    v37 = v32 < 0x80340000 || v33 > 0x803F0000;
    if (v395)
    {
      v38 = 1;
    }

    else
    {
      v38 = v28 == 0;
    }

    if (v38)
    {
      v39 = v30;
    }

    else
    {
      v39 = 1;
    }

    v40 = !v37;
    v41 = v410;
    if (!v40)
    {
      v41 = v24;
    }

    v410 = v41;
    if (!v40)
    {
      v30 = v39;
    }

    v403 = v30;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = *v16;
    v47 = 0x10000;
    v48 = 138;
    v49 = 1;
    v50 = 1;
    switch(WORD1(v32) ^ 0x8000)
    {
      case 0:
      case 1:
      case 0x19:
        if (v30 < 0)
        {
          result = 0xFFFFFFFFLL;
        }

        else
        {
          result = v366;
        }

        v20 = a12;
        v26 = v404;
        if (a12)
        {
          v22 = *v16;
          v340 = v377;
          v341 = v365;
          v342 = __dst;
          if ((*v16 & 0xFFFF0000) == 0x80010000)
          {
            v24 = &(*a2)[v363 + 3];
            v26 = v404 + 3;
            v15 = a11;
LABEL_827:
            v22 = v22;
            ++v16;
            a1 = v369;
            continue;
          }

          v15 = a11;
        }

        else
        {
          v343 = v364;
          v340 = v377;
          v344 = v365;
          v342 = __dst;
          if (*v364 == 120)
          {
            v345 = v362;
            v15 = a11;
            if (v362 != v396 || v361 != v392)
            {
              v346 = HIDWORD(v361);
              if (v362 >= 0 && v365 < 0)
              {
                v346 = v361;
              }

              HIDWORD(v361) = v346;
              if (v362 >= 0 && v365 < 0)
              {
                v344 = v362;
              }

              v345 = -1;
            }

            v362 = v345;
            v347 = (v345 & v393) < 0 && v396 >= 0;
            if (v347)
            {
              v348 = v396;
            }

            else
            {
              v348 = v393;
            }

            if (((v348 ^ v344) & 0xFFFFFFFD) != 0)
            {
              v341 = -1;
            }

            else
            {
              v38 = !v347;
              v349 = HIDWORD(v392);
              if (!v38)
              {
                v349 = v392;
              }

              v350 = v348 | v344;
              if (HIDWORD(v361) == v349)
              {
                v341 = v350;
              }

              else
              {
                v341 = -1;
              }
            }
          }

          else
          {
            v361 = v392;
            v362 = v396;
            v341 = v393;
            v15 = a11;
          }

          if (*(v16 + 1) << 16 == -2147418112)
          {
            v365 = v341;
            *__dst = 120;
            __dst[1] = (__dst - v364) >> 8;
            __dst[2] = __dst - v364;
            v413 = __dst;
            v24 = (__dst + 3);
            LOWORD(v22) = *v16;
            v364 = __dst;
            goto LABEL_827;
          }

          v353 = __dst - v364;
          do
          {
            v354 = __rev16(*(v343 + 1));
            *(v343 + 1) = bswap32(v353) >> 16;
            v343 -= v354;
            v353 = v354;
          }

          while (v354);
        }

        *v342 = 121;
        v342[1] = (v342 - v340) >> 8;
        v342[2] = v342 - v340;
        if (v358)
        {
          *(v15 + 184) = **(v15 + 184);
        }

        *a2 = v342 + 3;
        *a3 = v16;
        *a6 = v361;
        *v359 = v362;
        *v360 = HIDWORD(v361);
        *a9 = v341;
        if (!a12)
        {
          goto LABEL_834;
        }

        if (2147483627 - *a12 >= v404)
        {
          *a12 += v404;
          goto LABEL_834;
        }

        result = 0;
        v19 = 120;
        goto LABEL_4;
      case 2:
        v42 = 0;
        v44 = 0;
        LOBYTE(v50) = 0;
        v48 = 132;
        goto LABEL_219;
      case 3:
        if (v46 > 9)
        {
          v217 = v16[2];
          v216 = v16 + 2;
          v124 = v217 | (*(v216 - 1) << 32);
          v422 = v216;
        }

        else
        {
          v124 = *(a11 + 88 + 8 * v46);
        }

        v15 = a11;
        v210 = __dst;
        v211 = v396;
        if (v46 > *(a11 + 212))
        {
          goto LABEL_839;
        }

        v391 = v124;
        v20 = a12;
        goto LABEL_433;
      case 4:
      case 0x21:
        v93 = v16[3];
        v92 = v16 + 3;
        v15 = a11;
        v94 = *(a11 + 192);
        v95 = *(v92 - 2);
        v391 = v93 | (*(v92 - 1) << 32);
        v422 = v92;
        v20 = a12;
        if (!*(a11 + 176))
        {
          goto LABEL_837;
        }

        v96 = 0;
        LODWORD(v46) = 0;
        v97 = 0;
        v98 = *(a11 + 56);
        v99 = (v94 + 14);
        do
        {
          if (v95 == *(v99 - 1) && !_pcre2_strncmp_8((v98 + v391), *(v99 - 7), v95))
          {
            LODWORD(v46) = *(v99 - 3);
            if (v397 == -2145320960)
            {
              goto LABEL_197;
            }

            v96 = *v99;
            v100 = 1 << v46;
            if (v46 >= 0x20)
            {
              v100 = 1;
            }

            v101 = *(a11 + 248);
            *(a11 + 252) |= v100;
            if (v46 > v101)
            {
              *(a11 + 248) = v46;
            }
          }

          v99 += 8;
          ++v97;
        }

        while (v97 < *(a11 + 176));
        if (v46)
        {
          if (!v96)
          {
            v210 = __dst;
            v211 = v396;
LABEL_433:
            v218 = v390;
            if (v211 == -2)
            {
              v218 = -1;
            }

            v390 = v218;
            if (v211 == -2)
            {
              v211 = -1;
            }

            v396 = v211;
            if ((v394 & 8) != 0)
            {
              v219 = 114;
            }

            else
            {
              v219 = 113;
            }

            *v210 = v219;
            v210[1] = BYTE1(v46);
            v210[2] = v46;
            v220 = 1 << v46;
            if (v46 >= 0x20)
            {
              v220 = 1;
            }

            v221 = *(v15 + 248);
            v24 = (v210 + 3);
            *(v15 + 252) |= v220;
            v30 = v403;
            v31 = v402;
            v28 = 0;
            if (v46 > v221)
            {
              *(v15 + 248) = v46;
            }

            v26 = v404;
            goto LABEL_799;
          }

          LODWORD(v423[0]) = 0;
          v416 = 0;
          if (a12 || find_dupname_details((v98 + v391), v95, &v416, v423, a4, a11))
          {
            v28 = 0;
            v102 = v396;
            if (v396 == -2)
            {
              v102 = -1;
            }

            v396 = v102;
            if ((v394 & 8) != 0)
            {
              v103 = 116;
            }

            else
            {
              v103 = 115;
            }

            *__dst = v103;
            __dst[1] = BYTE1(v416);
            __dst[2] = v416;
            __dst[3] = BYTE1(v423[0]);
            __dst[4] = v423[0];
            v24 = (__dst + 5);
LABEL_136:
            v26 = v404;
            goto LABEL_798;
          }
        }

        else
        {
LABEL_837:
          *a4 = 115;
          *(a11 + 168) = v391;
        }

        goto LABEL_833;
      case 5:
        LODWORD(v32) = v16[1];
        v422 = v16 + 1;
        v91 = __dst;
        goto LABEL_233;
      case 6:
        v28 = 0;
        *__dst = 118;
        __dst[1] = BYTE1(v422[1]);
        __dst[2] = v422[1];
        __dst[3] = BYTE1(v422[2]);
        __dst[4] = v422[2];
        __dst[5] = v422[3];
        v422 += 3;
        v24 = (__dst + 6);
        goto LABEL_606;
      case 7:
        v133 = v16[3];
        v20 = a12;
        if (a12)
        {
          v28 = 0;
          v26 = v404 + v133 + 9;
          v422 = v16 + 5;
          v15 = a11;
LABEL_217:
          v31 = v402;
          v24 = __dst;
        }

        else
        {
          *__dst = 119;
          __dst[1] = BYTE1(v422[1]);
          __dst[2] = v422[1];
          __dst[3] = BYTE1(v422[2]);
          __dst[4] = v422[2];
          v246 = v422[5];
          v247 = v246 | (v422[4] << 32);
          v422 += 5;
          v15 = a11;
          v391 = v247;
          v248 = (*(a11 + 56) + v247);
          v249 = *v248;
          v250 = __dst + 10;
          __dst[9] = v249;
          if (v249 == 123)
          {
            v249 = 125;
          }

          v251 = v246 + 1;
          __dst[7] = HIBYTE(v251);
          __dst[8] = v251;
          v252 = v133 - 1;
          v26 = v404;
          if (v133 - 1 < 2)
          {
            v31 = v402;
          }

          else
          {
            v253 = v248 + 1;
            v31 = v402;
            do
            {
              v254 = *v253;
              if (v254 == v249 && v253[1] == v249)
              {
                *v250 = v249;
                v253 += 2;
                v252 = v133 - 2;
              }

              else
              {
                ++v253;
                *v250 = v254;
              }

              v133 = v252;
              ++v250;
              --v252;
            }

            while (v252 > 1);
          }

          v28 = 0;
          *v250 = 0;
          v24 = v250 + 1;
          __dst[5] = (v24 - __dst) >> 8;
          __dst[6] = v24 - __dst;
        }

        goto LABEL_799;
      case 8:
        v44 = 0;
        LOBYTE(v50) = 0;
        *(__dst + 3) = bswap32(v32) >> 16;
        *(a11 + 216) = v46;
        v48 = 136;
        v42 = 2;
        goto LABEL_219;
      case 9:
        if ((v394 & 0x400) != 0)
        {
          v28 = 0;
          v87 = v396;
          v215 = v390;
          if (v396 == -2)
          {
            v215 = -1;
          }

          v390 = v215;
          if (v396 == -2)
          {
            v87 = -1;
          }

          v396 = v87;
          LOBYTE(v87) = 28;
        }

        else
        {
          v28 = 0;
          LOBYTE(v87) = 27;
        }

        goto LABEL_429;
      case 0xA:
      case 0xE:
        v88 = v33 == -2146566144;
        v89 = v16 + 1;
        v32 = v16[1];
        v90 = v379;
        v91 = __dst;
        if ((v32 & 0x80000000) != 0)
        {
          goto LABEL_278;
        }

        LODWORD(v41) = v16[2];
        if (v41 == -2146631680)
        {
          v422 = v16 + 2;
          if (v33 == -2146828288)
          {
LABEL_233:
            LOBYTE(v139) = 1;
            if (v374)
            {
              v26 = v404;
              if ((v394 & 8) != 0)
              {
                v140 = HIBYTE(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[(v32 - (v41 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v32 / 128] << 7))]]);
                v15 = a11;
                v20 = a12;
                if (v140)
                {
                  *v91 = 2320;
                  v91[2] = v140;
                  v24 = (v91 + 3);
                  v141 = v396;
                  v142 = v390;
                  if (v396 == -2)
                  {
                    v142 = -1;
                  }

                  v390 = v142;
                  if (v396 == -2)
                  {
                    v141 = -1;
                  }

                  v396 = v141;
                  v28 = 1;
                  goto LABEL_798;
                }
              }

              else
              {
                v15 = a11;
                v20 = a12;
              }
            }

            else
            {
              v15 = a11;
              v20 = a12;
              v26 = v404;
            }

LABEL_470:
            if ((a1 & 0x80000) != 0)
            {
              v232 = _pcre2_ord2utf_8(v32, __src);
            }

            else
            {
              __src[0] = v32;
              v232 = 1;
            }

            if ((v394 & 8) != 0)
            {
              v233 = 30;
            }

            else
            {
              v233 = 29;
            }

            *v91 = v233;
            v234 = v91 + 1;
            memcpy(v234, __src, v232);
            v235 = __src[0];
            if (__src[0] == 13 || __src[0] == 10)
            {
              *(v15 + 208) |= 0x800u;
            }

            v24 = &v234[v232];
            v237 = v232 == 1 || v379 == 0;
            if (v396 == -2)
            {
              if (v237)
              {
                if (v232 == 1)
                {
                  v241 = -1;
                  v244 = v393;
                  v240 = v393;
                  v239 = v379;
                  v242 = v379;
                  v243 = HIDWORD(v392);
                  v238 = HIDWORD(v392);
                  LODWORD(v392) = v235;
                }

                else
                {
                  v238 = *(v24 - 1);
                  v240 = *(v15 + 280);
                  v241 = -1;
                  v239 = v379;
                  v242 = v379;
                  LODWORD(v392) = v235;
                  v243 = HIDWORD(v392);
                  v244 = v393;
                }

                v30 = v403;
              }

              else
              {
                v241 = -1;
                v240 = -1;
                v242 = -1;
                v243 = HIDWORD(v392);
                v238 = HIDWORD(v392);
                v244 = v393;
                v30 = v403;
                v239 = v379;
              }

              v31 = v402;
            }

            else
            {
              v30 = v403;
              v31 = v402;
              if (v237)
              {
                v238 = *(v24 - 1);
                v239 = v379;
                v240 = *(v15 + 280) | v379;
                v241 = v396;
                v242 = v396;
                HIDWORD(v387) = v392;
                v243 = HIDWORD(v392);
                v244 = v393;
              }

              else
              {
                v244 = v393;
                v240 = v393;
                v241 = v396;
                v242 = v396;
                HIDWORD(v387) = v392;
                v243 = HIDWORD(v392);
                v238 = HIDWORD(v392);
                v239 = v379;
              }
            }

            v308 = v394;
            if ((v139 & 1) == 0)
            {
              v239 = 0;
            }

            v379 = v239;
            if ((v139 & 1) == 0)
            {
              v308 = v394 & 0xFFFFFFF7;
            }

            v394 = v308;
            v28 = 1;
            v390 = v241;
            v385 = v243;
            LODWORD(v387) = v244;
            v393 = v240;
            v396 = v242;
LABEL_685:
            HIDWORD(v392) = v238;
            goto LABEL_799;
          }

          v279 = v396;
          if (v396 == -2)
          {
            v279 = -1;
          }

          v390 = v279;
          v15 = a11;
          v31 = v402;
          v163 = HIDWORD(v392);
          if (v374)
          {
            if ((v394 & 8) != 0)
            {
              v280 = HIBYTE(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v32 & 0x7F | (*(_pcre2_ucd_stage1_8 + ((v32 >> 6) & 0x3FFFFFE)) << 7)]]);
              if (v280)
              {
                *__dst = 2319;
                __dst[2] = v280;
                v24 = (__dst + 3);
                v28 = 1;
                v385 = HIDWORD(v392);
                v387 = __PAIR64__(v392, v393);
                v396 = v390;
LABEL_423:
                v20 = a12;
                v26 = v404;
LABEL_169:
                v30 = v403;
                goto LABEL_799;
              }
            }
          }

          if ((v394 & 8) != 0)
          {
            v287 = 32;
          }

          else
          {
            v287 = 31;
          }

          *__dst = v287;
          v288 = __dst + 1;
          v26 = v404;
          if ((a1 & 0x80000) != 0 && v32 >= 0x80)
          {
            v289 = _pcre2_ord2utf_8(v32, v288);
          }

          else
          {
            *v288 = v32;
            v289 = 1;
          }

          v20 = a12;
          v30 = v403;
          v24 = &v288[v289];
LABEL_628:
          v28 = 1;
          v385 = v163;
          v387 = __PAIR64__(v392, v393);
          v396 = v390;
          goto LABEL_799;
        }

        if (v33 == -2146828288 && (v41 & 0x80000000) == 0 && v16[3] == -2146631680)
        {
          v158 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v16[1] & 0x7F | (*(_pcre2_ucd_stage1_8 + ((v16[1] >> 6) & 0x3FFFFFE)) << 7)]];
          if (!*(v158 + 3))
          {
            v321 = v374 && v32 >= 0x80 ? v158[1] + v32 : *(*(a11 + 16) + v32);
            if (v32 != v321 && v41 == v321)
            {
              v422 = v16 + 3;
              v324 = v394 & 8;
              if ((v394 & 8) == 0)
              {
                v90 = 1;
              }

              v379 = v90;
              v394 |= 8u;
              v139 = v324 >> 3;
              v15 = a11;
              v20 = a12;
              v26 = v404;
              goto LABEL_470;
            }
          }
        }

LABEL_278:
        v159 = __dst + 4;
        v419 = __dst + 4;
        v425 = 0u;
        v426 = 0u;
        v160 = *v89;
        if (*v89 == -2146631680)
        {
          v161 = 0;
          v422 = v16 + 1;
          v162 = v396;
          if (v396 == -2)
          {
            v162 = -1;
          }

          v390 = v162;
          v20 = a12;
          v26 = v404;
          v163 = HIDWORD(v392);
          goto LABEL_620;
        }

        v386 = v33 == -2146566144;
        v164 = 0;
        v388 = 0;
        v161 = 0;
        v165 = 0;
        v166 = __dst + 4;
        v20 = a12;
        v26 = v404;
        v167 = v380;
        do
        {
          switch(v160)
          {
            case 0x80050000:
              v174 = v16[2];
              v16 += 2;
              v160 = v174;
              break;
            case 0x801D0000:
            case 0x801C0000:
              v161 = v160 == -2145583104;
              v169 = v16[2];
              v16 += 2;
              v168 = v169;
              if (((v169 < 3) & (v394 >> 3)) != 0)
              {
                v168 = 0;
              }

              if ((v394 & 0x20000) != 0)
              {
                if ((v168 - 8) <= 2)
                {
                  if (v160 == -2145583104)
                  {
                    v170 = 4;
                  }

                  else
                  {
                    v170 = 3;
                  }

                  v419 = v166 + 1;
                  *v166 = v170;
                  if (v168 == 9)
                  {
                    v171 = 12;
                  }

                  else
                  {
                    v171 = 13;
                  }

                  if (v168 == 8)
                  {
                    v171 = 11;
                  }

                  v172 = v419++;
                  *v172 = v171;
                  v173 = v419++;
                  *v173 = 0;
                  goto LABEL_299;
                }

                v181 = (a1 & 0x80000) != 0 && v160 == -2145583104;
                HIDWORD(v388) |= v181;
              }

              v182 = 3 * v168;
              v183 = (v167 + posix_class_maps[v182]);
              v184 = v183[1];
              v423[0] = *v183;
              v423[1] = v184;
              v185 = v182 + 1;
              v186 = v182 + 2;
              if ((0x2DB6DB6FB6BuLL >> v185))
              {
                v187 = v167 + posix_class_maps[v185];
                if ((0x2DB6DB6FB6BuLL >> v186))
                {
                  for (i = 0; i != 2; ++i)
                  {
                    v423[i] = vorrq_s8(v423[i], *(v187 + i * 16));
                  }
                }

                else
                {
                  for (j = 0; j != 2; ++j)
                  {
                    v423[j] = vbicq_s8(v423[j], *(v187 + j * 16));
                  }
                }
              }

              v190 = posix_class_maps[v186];
              if ((0x12492490494uLL >> v186))
              {
                v190 = -v190;
              }

              if (v190 == 1)
              {
                v191 = -61;
                v192 = v423 + 1;
LABEL_336:
                *v192 &= v191;
              }

              else if (v190 == 2)
              {
                v191 = 127;
                v192 = v423 + 11;
                goto LABEL_336;
              }

              if (v160 == -2145583104)
              {
                for (k = 0; k != 2; ++k)
                {
                  *(&v425 + k * 16) = vornq_s8(*(&v425 + k * 16), v423[k]);
                }
              }

              else
              {
                for (m = 0; m != 2; ++m)
                {
                  *(&v425 + m * 16) = vorrq_s8(*(&v425 + m * 16), v423[m]);
                }
              }

              v164 = 1;
              goto LABEL_344;
            case 0xDu:
            case 0xAu:
              *(a11 + 208) |= 0x800u;
              break;
            default:
              if ((v160 & 0x80000000) != 0)
              {
                if ((v160 & 0xFFFF0000) != 0x80180000)
                {
LABEL_838:
                  v351 = 189;
                  goto LABEL_832;
                }

                if (v160 <= 0xEu)
                {
                  if (v160 > 8u)
                  {
                    switch(v160)
                    {
                      case 9u:
                        for (n = 0; n != 32; ++n)
                        {
                          v425.i8[n] |= *(v167 + n);
                        }

                        break;
                      case 0xAu:
                        for (ii = 0; ii != 32; ++ii)
                        {
                          v425.i8[ii] |= ~*(v368 + ii);
                          v161 = 1;
                        }

                        break;
                      case 0xBu:
                        for (jj = 0; jj != 32; ++jj)
                        {
                          v425.i8[jj] |= *(v368 + jj);
                        }

                        break;
                    }
                  }

                  else
                  {
                    switch(v160)
                    {
                      case 6u:
                        for (kk = 0; kk != 32; ++kk)
                        {
                          v425.i8[kk] |= ~*(v367 + kk);
                          v161 = 1;
                        }

                        break;
                      case 7u:
                        for (mm = 0; mm != 32; ++mm)
                        {
                          v425.i8[mm] |= *(v367 + mm);
                        }

                        break;
                      case 8u:
                        for (nn = 0; nn != 32; ++nn)
                        {
                          v425.i8[nn] |= ~*(v167 + nn);
                          v161 = 1;
                        }

                        break;
                    }
                  }

LABEL_391:
                  v16 = v89;
                  ++v164;
                  goto LABEL_344;
                }

                if (v160 > 0x12u)
                {
                  switch(v160)
                  {
                    case 0x13u:
                      v203 = &_pcre2_hspace_list_8;
                      break;
                    case 0x14u:
                      v204 = &_pcre2_vspace_list_8;
                      goto LABEL_393;
                    case 0x15u:
                      v203 = &_pcre2_vspace_list_8;
                      break;
                    default:
                      goto LABEL_391;
                  }

                  ++v164;
                  add_list_to_class(&v425, &v419, v394 & 0xFFFFFFF7, a11, v203);
                }

                else
                {
                  if (v160 - 15 < 2)
                  {
                    v197 = v16[2];
                    v16 += 2;
                    v196 = v197;
                    v198 = HIWORD(v197);
                    if (v160 == 16)
                    {
                      v199 = 3;
                    }

                    else
                    {
                      v199 = 4;
                    }

                    v419 = v166 + 1;
                    *v166 = v199;
                    v200 = v419++;
                    *v200 = v198;
                    v201 = v419++;
                    *v201 = v196;
LABEL_299:
                    LODWORD(v388) = 1;
                    goto LABEL_344;
                  }

                  if (v160 != 18)
                  {
                    goto LABEL_391;
                  }

                  v204 = &_pcre2_hspace_list_8;
LABEL_393:
                  ++v164;
                  add_not_list_to_class(&v425, &v419, v394 & 0xFFFFFFF7, a11, v204);
                }

                v167 = v380;
                v16 = v89;
                goto LABEL_344;
              }

              v16 = v89;
              break;
          }

          v176 = (v16[1] | 0x10000);
          if (v176 == -2145452032)
          {
            v176 = v16 + 2;
            v177 = v16[2];
            if (v177 == -2147155968)
            {
              v178 = v16[3];
              v16 += 3;
              v177 = v178;
            }

            else
            {
              v16 += 2;
            }

            if (v177 == 13 || v177 == 10)
            {
              v176 = (*(a11 + 208) | 0x800u);
              *(a11 + 208) = v176;
            }

            v179 = a11;
            *(a11 + 264) = v160;
            *(a11 + 268) = v177;
            v180 = v394;
          }

          else
          {
            v179 = a11;
            *(a11 + 264) = v160;
            *(a11 + 268) = v160;
            v180 = v394;
            v177 = v160;
          }

          v164 += add_to_class_internal(&v425, &v419, v180, v179, v160, v177, v176);
          v167 = v380;
LABEL_344:
          v166 = v419;
          if (v419 > v159)
          {
            v165 = 1;
          }

          if (a12 && v419 > v159)
          {
            v26 += v419 - v159;
            v419 = __dst + 4;
            v165 = 1;
            v166 = __dst + 4;
          }

          v89 = v16 + 1;
          v160 = v16[1];
        }

        while (v160 != -2146631680);
        v422 = v16 + 1;
        v209 = v396;
        if (v396 == -2)
        {
          v209 = -1;
        }

        v390 = v209;
        if (!v165)
        {
          v163 = HIDWORD(v392);
LABEL_619:
          v91 = __dst;
          v88 = v386;
LABEL_620:
          if (v161 == v88)
          {
            v285 = 110;
          }

          else
          {
            v285 = 111;
          }

          *v91 = v285;
          v15 = a11;
          v31 = v402;
          v30 = v403;
          if (!v20)
          {
            if (v397 == -2146566144)
            {
              v425 = vmvnq_s8(v425);
              v426 = vmvnq_s8(v426);
            }

            v286 = v426;
            *(v91 + 1) = v425;
            *(v91 + 17) = v286;
          }

          v24 = (v91 + 33);
          goto LABEL_628;
        }

        v163 = HIDWORD(v392);
        if ((v394 & 0x20000) == 0 && !v388 && v161)
        {
          goto LABEL_619;
        }

        if (HIDWORD(v388))
        {
          v419 = v166 + 1;
          *v166 = 2;
          v15 = a11;
          if ((a1 & 0x80000) == 0)
          {
            v166 = v419;
            goto LABEL_734;
          }

LABEL_727:
          v319 = _pcre2_ord2utf_8(0x100u, v419);
          v419 += v319;
          v320 = _pcre2_ord2utf_8(0x10FFFFu, v419);
          v166 = &v419[v320];
        }

        else
        {
          if ((v394 & 0x20000) == 0 && (a1 & 0x80000) != 0 && v161 && v397 != -2146566144)
          {
            v419 = v166 + 1;
            *v166 = 2;
            v15 = a11;
            goto LABEL_727;
          }

          v15 = a11;
        }

LABEL_734:
        v419 = v166 + 1;
        *v166 = 0;
        *__dst = 112;
        if (v397 == -2146566144)
        {
          v322 = 5;
        }

        else
        {
          v322 = 4;
        }

        if (!v388)
        {
          v322 = v397 == -2146566144;
        }

        __dst[3] = v322;
        if (v164 < 1)
        {
          v24 = v419;
        }

        else
        {
          __dst[3] = v322 | 2;
          _pcre2_memmove8(__dst + 36, v159, v419 - v159);
          if (v397 == -2146566144 && !v388)
          {
            v425 = vmvnq_s8(v425);
            v426 = vmvnq_s8(v426);
          }

          v323 = v426;
          *v159 = v425;
          *(__dst + 20) = v323;
          v24 = (v419 + 32);
        }

        *(v410 + 1) = bswap32(v24 - v410) >> 16;
        v28 = 1;
        v385 = HIDWORD(v392);
        v387 = __PAIR64__(v392, v393);
        v396 = v390;
LABEL_798:
        v30 = v403;
        v31 = v402;
LABEL_799:
        v16 = ++v422;
        goto LABEL_19;
      case 0xB:
      case 0xC:
        if (v33 == -2146697216)
        {
          v104 = 13;
        }

        else
        {
          v104 = -94;
        }

        *__dst = v104;
        v24 = (__dst + 1);
        v105 = v396;
        if (v396 == -2)
        {
          v105 = -1;
        }

        v28 = 1;
        v390 = v105;
        v396 = v105;
        HIDWORD(v387) = v392;
        goto LABEL_135;
      case 0xF:
        goto LABEL_530;
      case 0x10:
        v49 = 0;
        v43 = 0;
        v44 = 0;
        v128 = v16[2];
        v127 = v16 + 2;
        v391 = v128 | (*(v127 - 1) << 32);
        v422 = v127;
        __dst[3] = -89;
        goto LABEL_529;
      case 0x11:
      case 0x13:
      case 0x14:
        v51 = *(a11 + 192);
        v54 = v16[3];
        v52 = v16 + 3;
        v53 = v54;
        v56 = *(v52 - 2);
        v55 = *(v52 - 1);
        v57 = v54 | (v55 << 32);
        v422 = v52;
        v58 = *(a11 + 56);
        v59 = *(a11 + 176);
        if (!v59)
        {
          v60 = 0;
          v62 = a12;
          goto LABEL_256;
        }

        v60 = 0;
        v61 = v51 + 8;
        v62 = a12;
        while (2)
        {
          if (v56 != *(v61 + 4))
          {
            goto LABEL_52;
          }

          if (_pcre2_strncmp_8((v58 + v57), *(v61 - 8), v56))
          {
            v59 = *(a11 + 176);
LABEL_52:
            ++v60;
            v61 += 16;
            if (v60 >= v59)
            {
              goto LABEL_256;
            }

            continue;
          }

          break;
        }

        if (!*(v61 + 6))
        {
          v391 = v57;
          if (v397 == -2146238464)
          {
            v283 = -110;
          }

          else
          {
            v283 = -112;
          }

          __dst[3] = v283;
          __dst[4] = BYTE1(*v61);
          __dst[5] = *v61;
          if (*v61 > *(a11 + 248))
          {
            *(a11 + 248) = *v61;
          }

          goto LABEL_272;
        }

        v59 = *(a11 + 176);
LABEL_256:
        if (v60 < v59)
        {
          if (v397 == -2146238464)
          {
            v154 = -110;
          }

          else
          {
            v154 = -112;
          }

          __dst[3] = v154;
          LODWORD(v423[0]) = 0;
          v416 = 0;
          if (v62 || find_dupname_details((v58 + v57), v56, &v416, v423, a4, a11))
          {
            v391 = v57;
            ++__dst[3];
            *(__dst + 2) = bswap32(v416) >> 16;
            *(__dst + 3) = bswap32(LOWORD(v423[0])) >> 16;
            v42 = 5;
            goto LABEL_273;
          }

          goto LABEL_833;
        }

        if (v397 != -2146172928)
        {
          goto LABEL_842;
        }

        if (v56 < 2)
        {
          goto LABEL_270;
        }

        v155 = 0;
        v156 = (v55 << 32) + v53 + 1;
        v157 = v56 - 1;
        do
        {
          v155 = 10 * v155 + *(v58 + v156) - 48;
          if (v155 >= 0x10000)
          {
            *a4 = 161;
            v57 = v156;
LABEL_836:
            *(a11 + 168) = v57;
            goto LABEL_833;
          }

          ++v156;
          --v157;
        }

        while (v157);
        if (v155 > *(a11 + 212))
        {
LABEL_842:
          *a4 = 115;
          goto LABEL_836;
        }

        if (!v155)
        {
LABEL_270:
          LOWORD(v155) = -1;
        }

        v391 = v57;
        __dst[3] = -110;
        __dst[4] = BYTE1(v155);
        __dst[5] = v155;
LABEL_272:
        v42 = 3;
LABEL_273:
        v43 = 0;
        v44 = 0;
        v48 = 138;
        v49 = 1;
        LOBYTE(v50) = 1;
LABEL_530:
        v15 = a11;
        ++*(a11 + 180);
        *__dst = v48;
        v421 = 0;
        ++v422;
        v420 = __dst;
        v261 = *(a11 + 280);
        v262 = compile_regex(v394, &v420, &v422, a4, v42, &v418, &v417, &v418 + 4, &v417 + 4, &v412, a11, v381);
        if (!v262)
        {
          goto LABEL_833;
        }

        --*(a11 + 180);
        v383 = v262;
        if (v262 > 0)
        {
          v28 = v49 & v43;
        }

        else
        {
          v28 = 0;
        }

        if (v44)
        {
          --*(a11 + 182);
          v20 = a12;
          v26 = v404;
          v263 = __dst;
          goto LABEL_545;
        }

        v264 = v50 ^ 1;
        if (a12)
        {
          v264 = 1;
        }

        v26 = v404;
        v263 = __dst;
        if (v264)
        {
          v20 = a12;
LABEL_545:
          v30 = v403;
          v31 = v402;
          if (!v20)
          {
LABEL_553:
            v24 = v420;
            if (v48 >= 0x84)
            {
              v267 = v417;
              if (v396 != -2 || v417 == -2)
              {
                v378 = 0;
                v268 = HIDWORD(v417);
                if ((v417 & 0x80000000) == 0 && v417 < 0)
                {
                  v378 = 0;
                  HIDWORD(v418) = v418;
                  v268 = v417 | v261;
                  HIDWORD(v417) = v417 | v261;
                }

                v271 = v396;
                v267 = v396;
                v269 = v392;
                v270 = v392;
              }

              else
              {
                v268 = HIDWORD(v417);
                v378 = v417 >= 0;
                if (v417 < 0)
                {
                  v267 = -1;
                }

                v269 = v392;
                if (v417 < 0)
                {
                  v270 = v392;
                }

                else
                {
                  v270 = v418;
                }

                v271 = -1;
              }

              v277 = v268 < 0;
              LODWORD(v387) = v393;
              v278 = HIDWORD(v418);
              if (v268 < 0)
              {
                v268 = v393;
              }

              v385 = HIDWORD(v392);
              if (v277)
              {
                v278 = HIDWORD(v392);
              }

              v390 = v271;
              v393 = v268;
              v396 = v267;
              HIDWORD(v387) = v269;
              v392 = __PAIR64__(v278, v270);
              goto LABEL_799;
            }

            v378 = 0;
            v272 = v48 == 126 || v48 == 130;
            v273 = HIDWORD(v417);
            v275 = v272 && v417 >= 0;
            v276 = (v275 & (v417 >= 0)) == 0;
            LODWORD(v387) = v393;
            if ((v275 & (v417 >= 0)) == 0)
            {
              v273 = v393;
            }

            v238 = HIDWORD(v392);
            v385 = HIDWORD(v392);
            if (!v276)
            {
              v238 = HIDWORD(v418);
            }

            v390 = v396;
            v393 = v273;
            HIDWORD(v387) = v392;
            goto LABEL_685;
          }

          goto LABEL_546;
        }

        v265 = 1;
        v266 = __dst;
        v30 = v403;
        v31 = v402;
        do
        {
          v266 += __rev16(*(v266 + 1));
          --v265;
        }

        while (*v266 != 121);
        v20 = a12;
        if (__dst[3] != 167)
        {
          if (-v265 >= 2)
          {
            *(a11 + 168) = v391;
            v351 = 127;
            goto LABEL_832;
          }

          if (v265)
          {
            v28 = v262 > 0;
          }

          else
          {
            v417 = -1;
          }

          v48 = 138;
          if (!a12)
          {
            goto LABEL_553;
          }

LABEL_546:
          if (2147483627 - v26 >= v421 - 6)
          {
            v26 += v421 - 6;
            *(v263 + 1) = 7930624;
            v263[5] = 3;
            v24 = (v263 + 6);
            goto LABEL_799;
          }

          goto LABEL_828;
        }

        if (!v265)
        {
          __dst[3] = -108;
          v24 = v420;
          goto LABEL_799;
        }

        *(a11 + 168) = v391;
        v351 = 154;
LABEL_832:
        *a4 = v351;
LABEL_833:
        result = 0;
LABEL_834:
        v352 = *MEMORY[0x1E69E9840];
        return result;
      case 0x12:
        v131 = v16[3];
        v130 = v16 + 3;
        v129 = v131;
        v132 = *(v130 - 1) | (*(v130 - 2) << 32);
        v422 = v130;
        if (v131 <= *(a11 + 212))
        {
          if (v129 > *(a11 + 248))
          {
            *(a11 + 248) = v129;
          }

          v43 = 0;
          v44 = 0;
          v391 = v132 - 2;
          __dst[3] = -112;
          __dst[4] = BYTE1(v129);
          __dst[5] = v129;
          v42 = 3;
          goto LABEL_530;
        }

        *a4 = 115;
        *(a11 + 168) = v132;
        goto LABEL_833;
      case 0x15:
        v134 = v16[2];
        if (v16[1])
        {
          v135 = __dst;
          if (v134 < 0xA)
          {
            v136 = -107;
            goto LABEL_528;
          }

          if (v134 == 10)
          {
            if (v16[3] >= 0x25)
            {
              v136 = -108;
            }

            else
            {
              v136 = -107;
            }

            goto LABEL_528;
          }
        }

        else
        {
          v135 = __dst;
          if (v134 == 10)
          {
            if (v16[3] == 36)
            {
              v136 = -107;
            }

            else
            {
              v136 = -108;
            }

LABEL_528:
            v43 = 0;
            v44 = 0;
            v135[3] = v136;
            v422 += 3;
LABEL_529:
            v42 = 1;
            goto LABEL_530;
          }
        }

        v136 = -108;
        goto LABEL_528;
      case 0x16:
        v28 = 0;
        if ((v394 & 0x400) != 0)
        {
          LOBYTE(v87) = 26;
        }

        else
        {
          LOBYTE(v87) = 25;
        }

        goto LABEL_429;
      case 0x17:
        if (v396 == -2)
        {
          v137 = -1;
        }

        else
        {
          v137 = v396;
        }

        if ((v394 & 0x20) != 0)
        {
          v138 = 13;
        }

        else
        {
          v138 = 12;
        }

        *__dst = v138;
        v24 = (__dst + 1);
        v28 = 1;
        LODWORD(v387) = v393;
        v390 = v137;
        v396 = v137;
        goto LABEL_605;
      case 0x18:
        v28 = (v46 - 6) < 0x11;
        if ((v28 & (v396 == -2)) != 0)
        {
          v118 = -1;
        }

        else
        {
          v118 = v396;
        }

        v390 = v118;
        if ((v46 - 15) > 1)
        {
          v15 = a11;
          if (v46 == 14)
          {
            *(a11 + 208) |= 0x400000u;
          }

          v31 = v402;
          if (((v32 & 0xFFFE) == 4 || v46 == 1) && !*(a11 + 276))
          {
            *(a11 + 276) = 1;
          }

          if (v46 == 14 && (a1 & 0x80000) == 0)
          {
            v214 = 13;
          }

          else
          {
            v214 = v32;
          }

          *__dst = v214;
          v24 = (__dst + 1);
          v385 = HIDWORD(v392);
          v387 = __PAIR64__(v392, v393);
          v396 = v390;
          goto LABEL_423;
        }

        v120 = v16[1];
        v119 = v120;
        v422 = v16 + 1;
        v121 = HIWORD(v120);
        if (v46 != 16 || v121)
        {
          if (v46 == 16)
          {
            v282 = 16;
          }

          else
          {
            v282 = 15;
          }

          *__dst = v282;
          __dst[1] = v121;
          __dst[2] = v119;
          v24 = (__dst + 3);
        }

        else
        {
          *__dst = 13;
          v24 = (__dst + 1);
        }

        LODWORD(v387) = v393;
        v396 = v390;
LABEL_605:
        v385 = HIDWORD(v392);
        HIDWORD(v387) = v392;
LABEL_606:
        v15 = a11;
LABEL_607:
        v20 = a12;
        goto LABEL_608;
      case 0x1A:
        v42 = 0;
        v44 = 0;
        LOBYTE(v50) = 0;
        v48 = 134;
        goto LABEL_219;
      case 0x1B:
        v28 = 0;
        v126 = v16[1];
        v422 = v16 + 1;
        v369 = v126;
        v370 = (v126 >> 18) & 1;
        v376 = (v126 & 0x40000) == 0;
        v379 = (v126 >> 3) & 1;
        v394 = v126;
        v15 = a11;
        v20 = a12;
        v26 = v404;
        goto LABEL_217;
      case 0x20:
        v123 = v16[2];
        v122 = v16 + 2;
        v124 = v123 | (*(v122 - 1) << 32);
        v422 = v122;
        v15 = a11;
        if (v46 <= *(a11 + 212))
        {
          v391 = v124;
          v20 = a12;
LABEL_197:
          v378 = 0;
          v28 = 0;
          *__dst = 117;
          __dst[1] = BYTE1(v46);
          __dst[2] = v46;
          v24 = (__dst + 3);
          *(v15 + 292) = 1;
          v125 = v396;
          if (v396 == -2)
          {
            v125 = -1;
          }

          v390 = v125;
          v396 = v125;
          HIDWORD(v387) = v392;
LABEL_608:
          v26 = v404;
          goto LABEL_798;
        }

LABEL_839:
        *(v15 + 168) = v124;
        v351 = 115;
        goto LABEL_832;
      case 0x22:
        v42 = 0;
        v44 = 0;
        LOBYTE(v50) = 0;
        v48 = 133;
LABEL_219:
        v43 = 1;
        goto LABEL_530;
      case 0x23:
        v49 = 0;
        v42 = 0;
        LOBYTE(v50) = 0;
        ++*(a11 + 182);
        v48 = 126;
        goto LABEL_253;
      case 0x24:
        if (v16[1] != -2145845248 || v16[2] + 2143354879 > 0xFFF4FFFE)
        {
          v49 = 0;
          v42 = 0;
          LOBYTE(v50) = 0;
          ++*(a11 + 182);
          v48 = 127;
LABEL_253:
          v43 = 1;
          v44 = 1;
          goto LABEL_530;
        }

        v28 = 0;
        *__dst = -94;
        v24 = (__dst + 1);
        ++v422;
LABEL_135:
        v15 = a11;
        v20 = a12;
        goto LABEL_136;
      case 0x25:
        v49 = 0;
        v42 = 0;
        LOBYTE(v50) = 0;
        ++*(a11 + 182);
        v48 = 128;
        goto LABEL_253;
      case 0x26:
        v49 = 0;
        v42 = 0;
        LOBYTE(v50) = 0;
        ++*(a11 + 182);
        v48 = 129;
        goto LABEL_253;
      case 0x27:
        v49 = 0;
        v42 = 0;
        LOBYTE(v50) = 0;
        ++*(a11 + 182);
        v48 = 130;
        goto LABEL_253;
      case 0x28:
        v49 = 0;
        v42 = 0;
        LOBYTE(v50) = 0;
        ++*(a11 + 182);
        v48 = 131;
        goto LABEL_253;
      case 0x29:
      case 0x2D:
        goto LABEL_157;
      case 0x2A:
        v15 = a11;
        *(a11 + 284) = 1;
        v115 = *(a11 + 184);
        if (v115)
        {
          v20 = a12;
          v26 = v404;
          v116 = __dst;
          v31 = v402;
          v117 = v396;
          do
          {
            if (*(v115 + 5) < *(a11 + 182))
            {
              break;
            }

            if (a12)
            {
              v26 += 3;
            }

            else
            {
              *v116 = -91;
              v116[1] = *(v115 + 9);
              v116[2] = *(v115 + 8);
              v116 += 3;
            }

            v115 = *v115;
          }

          while (v115);
        }

        else
        {
          v20 = a12;
          v26 = v404;
          v116 = __dst;
          v31 = v402;
          v117 = v396;
        }

        v28 = 0;
        if (*(a11 + 182))
        {
          v245 = -92;
        }

        else
        {
          v245 = -93;
        }

        *v116 = v245;
        v24 = (v116 + 1);
        if (v117 == -2)
        {
          v117 = -1;
        }

        v396 = v117;
        v395 = 1;
        goto LABEL_169;
      case 0x2B:
      case 0x2C:
        goto LABEL_103;
      case 0x2E:
      case 0x30:
        *(a11 + 288) = 1;
LABEL_103:
        v28 = 0;
        v87 = verbops[(v32 + 2144796672) >> 16];
LABEL_429:
        *__dst = v87;
        v24 = (__dst + 1);
        goto LABEL_606;
      case 0x2F:
      case 0x31:
        *(a11 + 288) = 1;
        goto LABEL_157;
      case 0x32:
        v28 = 0;
        v15 = a11;
        *(a11 + 208) |= 0x1000u;
        *__dst = -98;
        v24 = (__dst + 1);
        goto LABEL_607;
      case 0x33:
        *(a11 + 208) |= 0x1000u;
LABEL_157:
        v107 = __dst + 1;
        *__dst = verbops[(v32 + 2144796672) >> 16];
        v108 = (__dst + 2);
        v110 = v422[1];
        v109 = v110;
        ++v422;
        v420 = __dst + 1;
        if (v110 < 1)
        {
          v111 = 0;
          v15 = a11;
          v20 = a12;
          v26 = v404;
        }

        else
        {
          v111 = 0;
          v20 = a12;
          v26 = v404;
          do
          {
            v112 = v422[1];
            ++v422;
            if ((a1 & 0x80000) != 0)
            {
              v113 = _pcre2_ord2utf_8(v112, __src);
            }

            else
            {
              __src[0] = v112;
              v113 = 1;
            }

            v114 = v113;
            if (a12)
            {
              v26 += v113;
            }

            else
            {
              memcpy(v108, __src, v113);
              v108 += v114;
              v111 += v114;
            }

            --v109;
          }

          while (v109);
          v107 = v420;
          v15 = a11;
        }

        v31 = v402;
        v28 = 0;
        *v107 = v111;
        *v108 = 0;
        v24 = v108 + 1;
        goto LABEL_169;
      case 0x34:
      case 0x35:
      case 0x36:
        goto LABEL_57;
      case 0x37:
      case 0x38:
      case 0x39:
        v45 = 1;
        goto LABEL_57;
      case 0x3A:
      case 0x3B:
      case 0x3C:
        v45 = 0;
        v47 = 1;
        goto LABEL_57;
      case 0x3D:
      case 0x3E:
      case 0x3F:
        v64 = v16[2];
        v63 = v16 + 2;
        v47 = v64;
        v45 = *(v63 - 1);
        v422 = v63;
LABEL_57:
        if (v28)
        {
          v65 = v45 == 0;
        }

        else
        {
          v65 = 1;
        }

        v28 = !v65;
        v66 = v47 != v45;
        v67 = v393;
        if (!v45)
        {
          v67 = v387;
        }

        v68 = v396;
        if (!v45)
        {
          v68 = v390;
        }

        v69 = HIDWORD(v392);
        if (!v45)
        {
          v69 = v385;
        }

        v70 = v392;
        if (!v45)
        {
          v70 = HIDWORD(v387);
        }

        v71 = (v32 + 2144010240) >> 16;
        if (v71 > 0xA)
        {
          goto LABEL_137;
        }

        if (((1 << v71) & 0x249) != 0)
        {
          v72 = 0;
          v73 = 0;
        }

        else if (((1 << v71) & 0x492) != 0)
        {
          v50 = 0;
          v72 = 1;
          v73 = v376;
        }

        else
        {
LABEL_137:
          v50 = 0;
          v72 = 1;
          v73 = v370;
        }

        v74 = v410;
        v420 = v410;
        v75 = *v410;
        v76 = v75 - 117;
        v26 = v404;
        v392 = __PAIR64__(v69, v70);
        v393 = v67;
        v396 = v68;
        if (v76 > 0x2D)
        {
          goto LABEL_141;
        }

        if (((1 << (v75 - 117)) & 0x2BFE00) != 0)
        {
          if (v47 == 1 && v45 == 1)
          {
            v78 = v50;
          }

          else
          {
            v78 = 1;
          }

          if (v78)
          {
            v79 = __dst - v410;
            if (v75 != 138)
            {
LABEL_89:
              v80 = v47 != 0x10000 || v75 >= 0x84;
              if (v80)
              {
                v81 = v47;
              }

              else
              {
                v81 = v45 + 1;
              }

              v82 = v45 - 1;
              v411 = v79;
              if (v45 == 1)
              {
                v24 = __dst;
LABEL_520:
                v86 = 0;
                if (v81 == 0x10000)
                {
                  v85 = v74;
LABEL_641:
                  v290 = v26;
                  v106 = v24;
                  goto LABEL_642;
                }

                v260 = v81 - v45;
                v85 = v74;
                v74 = 0;
LABEL_639:
                if (v260 == 0x10000)
                {
                  v86 = v74;
                  goto LABEL_641;
                }

                v20 = a12;
                if (a12 && v260)
                {
                  v295 = (v421 + 7) * v260;
                  v296 = v295 - 6;
                  v297 = v295 <= 0x7FFFFFFF && 2147483627 - v26 >= v296;
                  v15 = a11;
                  if (!v297)
                  {
                    goto LABEL_828;
                  }

                  v26 += v296;
                }

                else
                {
                  v298 = v260 - 1;
                  v15 = a11;
                  if ((v260 - 1) >= 0)
                  {
                    v401 = v72;
                    __dsta = v28;
                    v406 = v26;
                    v299 = v73 - 106;
                    *v24 = v73 - 106;
                    v300 = v24 + 1;
                    if (v260 != 1)
                    {
                      v357 = v66;
                      v301 = v24 + 2;
                      do
                      {
                        v302 = v301 - v86;
                        if (!v86)
                        {
                          v302 = 0;
                        }

                        v300[1] = HIBYTE(v302);
                        v86 = v300 + 1;
                        *v300 = -122;
                        v300[2] = v302;
                        memcpy(v300 + 3, v85, v411);
                        v300 += v411 + 4;
                        *(v300 - 1) = v299;
                        v301 += v411 + 4;
                        --v298;
                      }

                      while (v298);
                      v86 = &v300[-v411 - 3];
                      v15 = a11;
                      v66 = v357;
                    }

                    memcpy(v300, v85, v411);
                    v24 = &v300[v411];
                    v26 = v406;
                    v28 = __dsta;
                    v72 = v401;
                  }
                }

                if (v86)
                {
                  v303 = v24 + 1;
                  do
                  {
                    v304 = v303 - v86;
                    v305 = &v24[-(v303 - v86)];
                    v306 = *(v305 + 1);
                    *v24 = 121;
                    v307 = __rev16(v306);
                    v24[1] = (v303 - v86) >> 8;
                    v86 -= v307;
                    v24[2] = v304;
                    v24 += 3;
                    v305[1] = HIBYTE(v304);
                    v305[2] = v304;
                    v303 += 3;
                  }

                  while (v307);
                }

                v106 = v24;
LABEL_673:
                v74 = v85;
                goto LABEL_774;
              }

              v24 = __dst;
              if (!v45)
              {
                v83 = v73;
                v398 = v72;
                v355 = v66;
                v84 = v28;
                if (v81 < 2 || v81 == 0x10000)
                {
                  v85 = v74 + 1;
                  _pcre2_memmove8(v74 + 1, v74, v79);
                  v24 = (__dst + 1);
                  if (!v81)
                  {
                    *v74 = -90;
                    v15 = a11;
                    v20 = a12;
                    v28 = v84;
                    v66 = v355;
                    goto LABEL_797;
                  }

                  v86 = 0;
                  v73 = v83;
                  *v74 = v83 - 106;
                }

                else
                {
                  v85 = v74 + 4;
                  _pcre2_memmove8(v74 + 4, v74, v79);
                  v24 = (__dst + 4);
                  v73 = v83;
                  *v74 = v83 - 106;
                  v86 = v74 + 2;
                  *(v74 + 1) = 134;
                  v74[3] = 0;
                  v74 = 0;
                }

                v72 = v398;
                if (v81 == 0x10000)
                {
                  v86 = v74;
                  v290 = v26;
                  v106 = v24;
                  v28 = v84;
                  v66 = v355;
LABEL_642:
                  v291 = v106 - 3;
                  v292 = &v106[-__rev16(*(v106 - 1)) - 3];
                  v293 = *v292;
                  v294 = v50 ^ 1;
                  if (v293 != 132)
                  {
                    v294 = 1;
                  }

                  if ((v294 & 1) == 0)
                  {
                    v293 = 134;
                    *v292 = -122;
                    goto LABEL_648;
                  }

                  if ((v293 & 0xFE) != 0x84)
                  {
LABEL_648:
                    if (!a12)
                    {
                      if (v383 < 0)
                      {
                        LOBYTE(v293) = v293 + 5;
                        goto LABEL_708;
                      }

                      if (v293 == 138)
                      {
                        if (v292[__rev16(*(v292 + 1))] == 120)
                        {
                          LOBYTE(v293) = -118;
                          goto LABEL_709;
                        }

                        LOBYTE(v293) = -113;
LABEL_708:
                        *v292 = v293;
                      }
                    }

LABEL_709:
                    if (v50)
                    {
                      if (v293 == 143 || v293 == 138)
                      {
                        v316 = v28;
                        _pcre2_memmove8(v292 + 3, v292, v106 - v292);
                        v28 = v316;
                        if (*v292 == 138)
                        {
                          v317 = -121;
                        }

                        else
                        {
                          v317 = -116;
                        }

                        *v292 = v317;
                        v106[3] = 124;
                        v318 = v106 - v292 + 3;
                        v106[4] = HIBYTE(v318);
                        v106[5] = v318;
                        v24 = v106 + 6;
                        v292[1] = HIBYTE(v318);
                        v292[2] = v318;
                      }

                      else
                      {
                        *v292 = v293 + 1;
                        *v291 = 124;
                        v24 = v106;
                      }

                      v20 = a12;
                      v26 = v290;
                      if (v86)
                      {
                        *v86 = -104;
                      }

                      v80 = v45 >= 2;
                      v15 = a11;
                      if (!v80)
                      {
                        goto LABEL_797;
                      }

LABEL_775:
                      v329 = v26;
                      v330 = v420;
                      v331 = *v420;
                      if (v331 <= 0x5C)
                      {
                        if (v331 - 29 > 0x33 || ((1 << (v331 - 29)) & 0x800400200100FLL) == 0)
                        {
                          goto LABEL_791;
                        }

                        v330 = &v420[_pcre2_OP_lengths_8[*v420]];
                        v420 = v330;
                        if ((a1 & 0x80000) == 0)
                        {
                          goto LABEL_791;
                        }

                        v333 = *(v330 - 1);
                        if (v333 < 0xC0)
                        {
                          goto LABEL_791;
                        }

                        v334 = _pcre2_utf8_table4[v333 & 0x3F];
                        goto LABEL_789;
                      }

                      if (v331 - 110 < 2)
                      {
                        v330 = v420 + 33;
                      }

                      else
                      {
                        if (v331 == 112)
                        {
                          v334 = __rev16(*(v420 + 1));
LABEL_789:
                          v330 += v334;
                          goto LABEL_790;
                        }

                        if (v331 != 93)
                        {
LABEL_791:
                          v335 = v24 - v330;
                          if (v24 - v330 >= 1)
                          {
                            v336 = *v330;
                            if (v336 <= 0x75 && (v337 = opcode_possessify[v336]) != 0)
                            {
                              *v330 = v337;
                            }

                            else
                            {
                              v338 = v66;
                              v339 = v28;
                              _pcre2_memmove8(v330 + 3, v330, v335 & 0x7FFFFFFF);
                              v28 = v339;
                              v66 = v338;
                              *v330 = -124;
                              v24[3] = 121;
                              v24[4] = (v335 + 3) >> 8;
                              v24[5] = v335 + 3;
                              v24 += 6;
                              *(v420 + 1) = bswap32(v335 + 3) >> 16;
                            }
                          }

                          v26 = v329;
                          goto LABEL_797;
                        }

                        v330 = &v420[2 * (v420[3] - 15 < 2) + 4];
                      }

LABEL_790:
                      v420 = v330;
                      goto LABEL_791;
                    }

                    *v291 = v73 + 122;
                    v24 = v106;
                    v15 = a11;
                    v20 = a12;
                    v26 = v290;
LABEL_797:
                    *(v15 + 280) |= 2 * v66;
                    v410 = v85;
                    goto LABEL_798;
                  }

                  *v291 = v73 + 122;
                  v15 = a11;
                  v20 = a12;
                  v26 = v290;
                  goto LABEL_673;
                }

                v260 = v81 - 1;
                v28 = v84;
                v66 = v355;
                goto LABEL_639;
              }

              if (!a12)
              {
                v405 = v73;
                v400 = v72;
                v356 = v66;
                v255 = v28;
                v256 = v393;
                v257 = !v378 || v393 >= 0;
                if (v378 && v393 < 0)
                {
                  v256 = v396;
                }

                v393 = v256;
                v258 = HIDWORD(v392);
                if (!v257)
                {
                  v258 = v392;
                }

                HIDWORD(v392) = v258;
                v259 = v79;
                do
                {
                  memcpy(v24, v74, v259);
                  v24 += v259;
                  LODWORD(v82) = v82 - 1;
                }

                while (v82);
                v28 = v255;
                v66 = v356;
                v72 = v400;
                v73 = v405;
                goto LABEL_520;
              }

              v153 = v421 * v82;
              if (v421 * v82 <= 0x7FFFFFFF && 2147483627 - v26 >= v153)
              {
                v26 += v153;
                goto LABEL_520;
              }

LABEL_828:
              v351 = 120;
              goto LABEL_832;
            }

            if (v410[3] != 148 || v410[__rev16(*(v410 + 1))] == 120)
            {
              v75 = 138;
              goto LABEL_89;
            }
          }

          v85 = v410;
          v15 = a11;
          v20 = a12;
LABEL_150:
          v24 = __dst;
          goto LABEL_797;
        }

        if (v75 == 117)
        {
          if (v47 == 1 && v45 == 1)
          {
            v228 = v50;
          }

          else
          {
            v228 = 1;
          }

          v24 = __dst;
          if (v228 != 1)
          {
            v85 = v410;
            v15 = a11;
            v20 = a12;
            goto LABEL_797;
          }

          if (v45)
          {
            if (v45 == 1 && v47 == 0x10000)
            {
              v229 = v73;
              v230 = v72;
              v231 = v28;
              v45 = 1;
            }

            else
            {
              v314 = v45 - (v47 == v45);
              if (a12)
              {
                if (v314 > 715827882)
                {
                  goto LABEL_828;
                }

                v315 = 3 * v314;
                if (2147483627 - v404 < v315)
                {
                  goto LABEL_828;
                }

                v26 = v404 + v315;
              }

              else if (v314 >= 1)
              {
                do
                {
                  v325 = *v74;
                  v24[2] = v74[2];
                  *v24 = v325;
                  v74 = v24;
                  v24 += 3;
                  --v314;
                }

                while (v314);
                v74 = v24 - 3;
              }

              v326 = v47 - v45;
              if (v47 == v45)
              {
                v106 = v24;
                v15 = a11;
                v20 = a12;
                goto LABEL_774;
              }

              v229 = v73;
              v230 = v72;
              v231 = v28;
              __dst = v24;
              v45 = 0;
              if (v47 == 0x10000)
              {
                v47 = 0x10000;
              }

              else
              {
                v47 = v326;
              }
            }
          }

          else
          {
            v229 = v73;
            v230 = v72;
            v231 = v28;
          }

          _pcre2_memmove8(v74 + 3, v74, 3);
          v75 = 134;
          *v74 = 134;
          v74[2] = 6;
          *(v74 + 3) = 121;
          v74[8] = 6;
          __dst += 6;
          v79 = __dst - v74;
          v383 = -1;
          v421 = 9;
          v28 = v231;
          v72 = v230;
          v73 = v229;
          goto LABEL_89;
        }

        if (v76 == 45)
        {
          v85 = v410;
          v15 = a11;
          v20 = a12;
          goto LABEL_150;
        }

LABEL_141:
        if (v75 - 110 < 7)
        {
          if (!v47)
          {
            v24 = v410;
            v85 = v410;
            v15 = a11;
            v20 = a12;
            goto LABEL_797;
          }

          v20 = a12;
          if (v47 == 1 && v45 == 1)
          {
            goto LABEL_145;
          }

          if (v45 || v47 != 0x10000)
          {
            v106 = (__dst + 1);
            if (v45 == 1 && v47 == 0x10000)
            {
              v212 = v73 + 100;
            }

            else
            {
              if (v47 != 1 || v45)
              {
                *__dst = v73 + 104;
                __dst[1] = BYTE1(v45);
                __dst[2] = v45;
                if (v47 == 0x10000)
                {
                  v309 = 0;
                }

                else
                {
                  v309 = v47;
                }

                __dst[3] = HIBYTE(v309);
                __dst[4] = v309;
                v106 = (__dst + 5);
                goto LABEL_690;
              }

              v212 = v73 + 102;
            }

            *__dst = v212;
          }

          else
          {
            *__dst = v73 + 98;
            v106 = (__dst + 1);
          }

LABEL_690:
          v15 = a11;
          goto LABEL_774;
        }

        if (v75 - 29 > 3)
        {
          v20 = a12;
          if (v75 >= 0x17)
          {
            v351 = 110;
            goto LABEL_832;
          }

          if (v47 == 1 && v45 == 1)
          {
LABEL_145:
            v85 = v410;
            v15 = a11;
            goto LABEL_150;
          }

          v399 = v72;
          v150 = 0;
          if (v75 - 15 > 1)
          {
            v151 = -1;
            v152 = -1;
          }

          else
          {
            v152 = v410[1];
            v151 = v410[2];
          }

          LOBYTE(v143) = 52;
          if (!v47)
          {
LABEL_246:
            v24 = v410;
            v85 = v410;
            v15 = a11;
            v20 = a12;
            v26 = v404;
            goto LABEL_797;
          }
        }

        else
        {
          v20 = a12;
          if (v47 == 1 && v45 == 1)
          {
            v85 = v410;
            v15 = a11;
            goto LABEL_150;
          }

          v143 = chartypeoffset[v75 - 29];
          v144 = *(__dst - 1);
          v399 = v72;
          if ((a1 & 0x80000) != 0 && (v144 & 0xC0) == 0x80)
          {
            v145 = v73;
            v146 = v28;
            v147 = 0;
            v148 = __dst;
            do
            {
              v149 = *--v148;
              ++v147;
            }

            while ((v149 & 0xC0) == 0x80);
            v150 = v147;
            __memcpy_chk();
            v151 = -1;
            v152 = -1;
            v28 = v146;
            v66 = v47 != v45;
            v73 = v145;
            if (!v47)
            {
              goto LABEL_246;
            }
          }

          else
          {
            __src[0] = *(__dst - 1);
            v151 = -1;
            v152 = -1;
            v150 = 1;
            if (v45 >= 2 && v75 <= 0x1E)
            {
              v393 = *(a11 + 280) | v379;
              v150 = 1;
              HIDWORD(v392) = v144;
            }

            if (!v47)
            {
              goto LABEL_246;
            }
          }
        }

        v222 = v143 + v73;
        if (!v45)
        {
          v224 = v66;
          v226 = v410 + 1;
          if (v47 == 1)
          {
            v312 = v222 + 37;
            v74 = v410;
            *v410 = v312;
            v15 = a11;
          }

          else
          {
            v15 = a11;
            if (v47 == 0x10000)
            {
              v281 = v222 + 33;
              v74 = v410;
              *v410 = v281;
            }

            else
            {
              v313 = v222 + 39;
              v74 = v410;
              *v410 = v313;
              v410[1] = BYTE1(v47);
              v410[2] = v47;
              v226 = v410 + 3;
            }
          }

          goto LABEL_769;
        }

        if (v45 == 1)
        {
          v223 = v47 - 1;
          if (v47 == 1)
          {
            v85 = v410;
            v15 = a11;
            v20 = a12;
            v26 = v404;
            goto LABEL_150;
          }

          v224 = v66;
          v15 = a11;
          if (v47 == 0x10000)
          {
            v225 = v222 + 35;
            v74 = v410;
            *v410 = v225;
            v226 = v410 + 1;
LABEL_769:
            if (v150)
            {
              v328 = v28;
              memcpy(v226, __src, v150);
              v28 = v328;
              v106 = &v226[v150];
            }

            else
            {
              *v226 = v75;
              v106 = v226 + 1;
              if ((v152 & 0x80000000) == 0)
              {
                v226[1] = v152;
                v106 = v226 + 3;
                v226[2] = v151;
              }
            }

            v20 = a12;
            v26 = v404;
            v66 = v224;
            v72 = v399;
LABEL_774:
            v85 = v74;
            v24 = v106;
            if ((v72 & 1) == 0)
            {
              goto LABEL_775;
            }

            goto LABEL_797;
          }

          *__dst = v222 + 39;
          __dst[1] = HIBYTE(v223);
          __dst[2] = v223;
          v226 = (__dst + 3);
        }

        else
        {
          v224 = v66;
          *v410 = v143 + 41;
          v410[1] = BYTE1(v45);
          v410[2] = v45;
          v226 = v410 + 3;
          v284 = v47 - v45;
          if (v47 == v45)
          {
            v15 = a11;
          }

          else
          {
            v15 = a11;
            if (v150)
            {
              __dstb = v28;
              v310 = v151;
              memcpy(v410 + 3, __src, v150);
              v151 = v310;
              v28 = __dstb;
              v311 = &v226[v150];
            }

            else
            {
              v410[3] = v75;
              if (v152 < 0)
              {
                v311 = v410 + 4;
              }

              else
              {
                v410[4] = v152;
                v311 = v410 + 6;
                v410[5] = v151;
              }
            }

            if (v47 == 0x10000)
            {
              v327 = v222 + 33;
            }

            else
            {
              if (v284 != 1)
              {
                *v311 = v222 + 39;
                v311[1] = BYTE1(v284);
                v311[2] = v284;
                v226 = v311 + 3;
                goto LABEL_768;
              }

              v327 = v222 + 37;
            }

            *v311 = v327;
            v226 = v311 + 1;
          }
        }

LABEL_768:
        v74 = v410;
        goto LABEL_769;
      default:
        v91 = __dst;
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_233;
        }

        goto LABEL_838;
    }
  }
}