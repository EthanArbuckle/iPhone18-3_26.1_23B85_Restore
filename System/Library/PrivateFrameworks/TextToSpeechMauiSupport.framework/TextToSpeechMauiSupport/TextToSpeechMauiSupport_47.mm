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
    cstdlib_memcpy(v2, a1, *(a1 + 72));
    v3[4] = 0;
    if ((*(a1 + 98) & 4) != 0)
    {
      ++*(*(a1 + 24) + 1088);
    }
  }

  return v3;
}

void *pcre2_code_copy_with_tables_8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*a1)(*(a1 + 72), *(a1 + 16));
  v3 = v2;
  if (v2)
  {
    cstdlib_memcpy(v2, a1, *(a1 + 72));
    v3[4] = 0;
    v4 = (*a1)(1096, *(a1 + 16));
    if (v4)
    {
      v5 = v4;
      cstdlib_memcpy(v4, *(a1 + 24), 0x440uLL);
      v5[136] = 1;
      v3[3] = v5;
      *(v3 + 24) |= 0x40000u;
      return v3;
    }

    (*(a1 + 8))(v3, *(a1 + 16));
    return 0;
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
          (*(v1 + 8))();
        }
      }
    }

    v7 = *(v1 + 8);
    v6 = *(v1 + 16);

    return v7(v1, v6);
  }

  return result;
}

uint64_t _pcre2_check_escape_8(unsigned __int8 **a1, unint64_t a2, int *a3, int *a4, unsigned int a5, int a6, _DWORD *a7)
{
  v8 = *a1;
  if (*a1 >= a2)
  {
    result = 0;
    v15 = 101;
    goto LABEL_7;
  }

  v13 = v8 + 1;
  v12 = *v8;
  v60 = v8 + 1;
  if ((a5 & 0x80000) != 0 && v12 >= 0xC0)
  {
    if ((v12 & 0x20) != 0)
    {
      v16 = *v13 & 0x3F;
      if ((v12 & 0x10) != 0)
      {
        if ((v12 & 8) != 0)
        {
          v17 = v8[2] & 0x3F;
          v18 = v8[3] & 0x3F;
          v19 = v8[4] & 0x3F;
          if ((v12 & 4) != 0)
          {
            v12 = ((v12 & 1) << 30) | (v16 << 24) | (v17 << 18) | (v18 << 12) | (v19 << 6) | v8[5] & 0x3F;
            v13 = v8 + 6;
          }

          else
          {
            v12 = ((v12 & 3) << 24) | (v16 << 18) | (v17 << 12) | (v18 << 6) | v19;
            v13 = v8 + 5;
          }
        }

        else
        {
          v12 = ((v12 & 7) << 18) | (v16 << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
          v13 = v8 + 4;
        }
      }

      else
      {
        v12 = ((v12 & 0xF) << 12) | (v16 << 6) | v8[2] & 0x3F;
        v13 = v8 + 3;
      }

      v60 = v13;
    }

    else
    {
      v13 = v8 + 2;
      v60 = v8 + 2;
      v12 = v8[1] & 0x3F | ((v12 & 0x1F) << 6);
    }
  }

  *a4 = 0;
  if ((v12 - 123) < 0xFFFFFFB5)
  {
    goto LABEL_17;
  }

  v20 = escapes[v12 - 48];
  if (escapes[v12 - 48])
  {
    if (v20 > 0)
    {
      result = 0;
      v12 = escapes[v12 - 48];
      goto LABEL_21;
    }

    result = -v20;
    if (a7)
    {
      if (v12 > 87)
      {
        if (v12 != 112 && v12 != 88)
        {
          goto LABEL_21;
        }

LABEL_53:
        a7[52] |= 0x100000u;
        goto LABEL_21;
      }

      if (v12 != 78)
      {
        if (v12 != 80)
        {
          goto LABEL_21;
        }

        goto LABEL_53;
      }
    }

    else if (v12 != 78)
    {
      goto LABEL_21;
    }

    if (v13 >= a2 || *v13 != 123)
    {
LABEL_112:
      result = 12;
      v12 = 78;
      goto LABEL_21;
    }

    v59 = v13 + 1;
    if ((a2 - (v13 + 1)) < 2 || v13[1] != 85 || (v21 = v13[2], v13 += 2, v21 != 43))
    {
      if (read_repeat_counts(&v59, a2, 0, 0, a4) || *a4)
      {
        goto LABEL_112;
      }

      v22 = 137;
      goto LABEL_111;
    }

    if ((a5 & 0x80000) == 0)
    {
      v22 = 193;
LABEL_111:
      *a4 = v22;
      goto LABEL_112;
    }

    goto LABEL_70;
  }

  v58 = 0;
  if (!a7)
  {
    if (v12 > 116)
    {
      if (v12 == 120)
      {
LABEL_67:
        if ((a5 & 2) == 0)
        {
          if (v13 < a2)
          {
            v25 = *v13;
            if (v25 == 123)
            {
LABEL_70:
              v60 = ++v13;
              if (v13 >= a2 || *v13 == 125)
              {
                result = 0;
                v26 = 178;
              }

              else
              {
                v12 = 0;
                while (1)
                {
                  v48 = *v13;
                  v49 = xdigitab[v48];
                  if (v49 == 255)
                  {
                    break;
                  }

                  if (v12 || v48 != 48)
                  {
                    v50 = 16 * v12;
                    v51 = (16 * v12) > 0x10FFFF;
                    v12 = v49 | (16 * v12);
                    v52 = *&v51 & (a5 >> 19);
                    v54 = (a5 & 0x80000) == 0 && v50 > 0xFF;
                    if ((v52 & 1) != 0 || v54)
                    {
                      v56 = v13 + 1;
                      v60 = v56;
                      if (v56 < a2)
                      {
                        while (xdigitab[*v56] != 255)
                        {
                          if (++v56 >= a2)
                          {
                            goto LABEL_205;
                          }
                        }
                      }

                      goto LABEL_206;
                    }
                  }

                  else
                  {
                    v12 = 0;
                  }

                  if (++v13 == a2)
                  {
                    v13 = a2;
                    break;
                  }
                }

                if (v13 >= a2)
                {
                  v55 = v13;
                }

                else
                {
                  v55 = v13 + 1;
                  v60 = v13 + 1;
                  if (*v13 == 125)
                  {
                    goto LABEL_185;
                  }
                }

                result = 0;
                v60 = v55 - 1;
                v26 = 167;
              }

              goto LABEL_106;
            }

            v12 = xdigitab[v25];
            if (v12 != 255)
            {
              v60 = v13 + 1;
              if ((v13 + 1) < a2)
              {
                v43 = xdigitab[v13[1]];
                if (v43 != 255)
                {
                  result = 0;
                  v60 = v13 + 2;
                  v12 = v43 | (16 * v12);
                  goto LABEL_21;
                }
              }

              goto LABEL_17;
            }
          }

          v12 = 0;
          goto LABEL_17;
        }

        if ((a2 - v13) < 2 || (v31 = xdigitab[*v13], v31 == 255) || (v32 = xdigitab[v13[1]], v32 == 255))
        {
          result = 0;
          v12 = 120;
          goto LABEL_21;
        }

        result = 0;
        v12 = v32 | (16 * v31);
        v33 = v13 + 2;
        goto LABEL_122;
      }

      if (v12 == 117 && (a5 & 2) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v12 == 99)
      {
        goto LABEL_84;
      }

      if (v12 == 111)
      {
        goto LABEL_62;
      }
    }

    result = 0;
    v15 = 103;
LABEL_7:
    *a4 = v15;
    return result;
  }

  if (v12 > 69)
  {
    if (v12 > 102)
    {
      if (v12 > 110)
      {
        if (v12 != 111)
        {
          if (v12 != 117)
          {
            if (v12 != 120)
            {
              goto LABEL_120;
            }

            goto LABEL_67;
          }

          if ((a5 & 2) != 0)
          {
            if ((a2 - v13) >= 4)
            {
              v37 = xdigitab[*v13];
              if (v37 != 255)
              {
                v38 = xdigitab[v13[1]];
                if (v38 != 255)
                {
                  v39 = xdigitab[v13[2]];
                  if (v39 != 255)
                  {
                    v40 = xdigitab[v13[3]];
                    if (v40 != 255)
                    {
                      v41 = (16 * v38) | (v37 << 8);
                      v42 = v41 | v39;
                      v12 = v40 | (16 * (v41 | v39));
                      v60 = v13 + 4;
                      if ((a5 & 0x80000) != 0)
                      {
                        result = 0;
                        if (v41 > 0xDFF || v42 < 0xD80)
                        {
                          goto LABEL_21;
                        }

                        if (*(*a7 + 64))
                        {
                          goto LABEL_17;
                        }

                        result = 0;
LABEL_190:
                        v26 = 173;
                      }

                      else
                      {
                        if (v42 < 0x10)
                        {
                          goto LABEL_17;
                        }

                        result = 0;
                        v26 = 177;
                      }

                      goto LABEL_106;
                    }
                  }
                }
              }
            }

            result = 0;
LABEL_138:
            v12 = 117;
            goto LABEL_21;
          }

LABEL_117:
          result = 0;
          *a4 = 137;
          goto LABEL_138;
        }

LABEL_62:
        if (v13 < a2 && (v23 = *v13, ++v13, v60 = v13, v23 == 123))
        {
          if (v13 < a2 && *v13 != 125)
          {
            v12 = 0;
            if ((a5 & 0x80000) != 0)
            {
              v45 = 1114111;
            }

            else
            {
              v45 = 255;
            }

            do
            {
              v46 = *v13;
              if ((v46 & 0xF8) != 0x30)
              {
                goto LABEL_165;
              }

              if (v12 || v46 != 48)
              {
                v12 = v46 + 8 * v12 - 48;
                if (v12 > v45)
                {
                  v56 = v13 + 1;
                  v60 = v56;
                  if (v56 < a2)
                  {
                    while ((*v56 & 0xF8) == 0x30)
                    {
                      if (++v56 >= a2)
                      {
LABEL_205:
                        v56 = a2;
                        break;
                      }
                    }
                  }

LABEL_206:
                  result = 0;
                  v60 = v56;
                  v26 = 134;
                  goto LABEL_106;
                }
              }

              else
              {
                v12 = 0;
              }

              ++v13;
            }

            while (v13 != a2);
            v13 = a2;
LABEL_165:
            if (v13 >= a2)
            {
              v47 = v13;
LABEL_192:
              result = 0;
              v60 = v47 - 1;
              v26 = 164;
              goto LABEL_106;
            }

            v47 = v13 + 1;
            v60 = v13 + 1;
            if (*v13 != 125)
            {
              goto LABEL_192;
            }

LABEL_185:
            result = 0;
            if ((a5 & 0x80000) == 0 || (v12 & 0xFFFFF800) != 0xD800)
            {
              goto LABEL_21;
            }

            if (!a7 || (*(*a7 + 64) & 1) == 0)
            {
              result = 0;
              v60 = v13;
              goto LABEL_190;
            }

            goto LABEL_17;
          }

          result = 0;
          v24 = 178;
        }

        else
        {
          result = 0;
          v60 = v13 - 1;
          v24 = 155;
        }

        *a4 = v24;
        v12 = 111;
        goto LABEL_21;
      }

      if (v12 != 103)
      {
        if (v12 != 108)
        {
          goto LABEL_120;
        }

LABEL_91:
        result = 0;
        v26 = 137;
        goto LABEL_106;
      }

      if (a6)
      {
        goto LABEL_119;
      }

      if (v13 < a2)
      {
        v44 = *v13;
        result = 27;
        v12 = 103;
        if (v44 == 39 || v44 == 60)
        {
          goto LABEL_21;
        }

        if (v44 == 123)
        {
          v59 = v13 + 1;
          if (!read_number(&v59, a2, a7[53], 0xFFFFu, 161, &v58, a4))
          {
            if (*a4)
            {
              result = 0;
            }

            else
            {
              result = 28;
            }

            goto LABEL_215;
          }

          if (v59 < a2 && *v59 == 125)
          {
            v60 = v59 + 1;
LABEL_196:
            if (v58 > 0)
            {
              result = -v58;
              goto LABEL_215;
            }

            result = 0;
            v57 = 115;
LABEL_214:
            *a4 = v57;
            goto LABEL_215;
          }
        }

        else
        {
          if (read_number(&v60, a2, a7[53], 0xFFFFu, 161, &v58, a4))
          {
            goto LABEL_196;
          }

          if (*a4)
          {
LABEL_119:
            result = 0;
LABEL_215:
            v12 = 103;
            goto LABEL_21;
          }
        }
      }

      result = 0;
      v57 = 157;
      goto LABEL_214;
    }

    if (v12 <= 84)
    {
      if (v12 != 70 && v12 != 76)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    if (v12 == 85)
    {
      result = 0;
      if ((a5 & 2) == 0)
      {
        *a4 = 137;
      }

      v12 = 85;
      goto LABEL_21;
    }

    if (v12 != 99)
    {
      goto LABEL_120;
    }

LABEL_84:
    if (v13 >= a2)
    {
      result = 0;
      *a4 = 102;
      v12 = 99;
      goto LABEL_21;
    }

    v12 = *v13;
    if ((v12 - 97) < 0x1A)
    {
      v12 -= 32;
    }

    if ((v12 - 127) <= 0xFFFFFFA0)
    {
      result = 0;
      v26 = 168;
      goto LABEL_106;
    }

    result = 0;
    v12 ^= 0x40u;
    v33 = v13 + 1;
LABEL_122:
    v60 = v33;
    goto LABEL_21;
  }

  if ((v12 - 49) < 9)
  {
    if (a6)
    {
      goto LABEL_26;
    }

    v27 = v13 - 1;
    v60 = v13 - 1;
    *a4 = 0;
    if ((v13 - 1) >= a2)
    {
      goto LABEL_17;
    }

    v28 = *v27;
    if (v28 - 48 > 9)
    {
      goto LABEL_17;
    }

    v29 = 0;
    while (v27 < a2)
    {
      v30 = *v27;
      if ((v30 - 48) > 9)
      {
        break;
      }

      ++v27;
      v29 = v30 + 10 * v29 - 48;
      if (v29 >= 0xCCCCCCC)
      {
        result = 0;
        *a4 = 161;
        v60 = v27;
        goto LABEL_21;
      }
    }

    v60 = v27;
    if (v29 < 0xA)
    {
      goto LABEL_154;
    }

    if (v28 <= 0x37 && v29 > a7[53])
    {
      v60 = v13;
LABEL_26:
      if (v12 <= 0x37)
      {
LABEL_98:
        v34 = v13 + 2;
        v35 = 2;
        v12 -= 48;
        while (v13 < a2)
        {
          v36 = *v13;
          if ((v36 & 0xF8) != 0x30)
          {
            break;
          }

          ++v13;
          v12 = v36 + 8 * v12 - 48;
          if (!--v35)
          {
            v13 = v34;
            break;
          }
        }

        result = 0;
        v60 = v13;
        if ((a5 & 0x80000) != 0 || v12 < 0x100)
        {
          goto LABEL_21;
        }

        result = 0;
        v26 = 151;
        goto LABEL_106;
      }

LABEL_17:
      result = 0;
LABEL_21:
      *a1 = v60;
      *a3 = v12;
      return result;
    }

    if (v29 < 0x10000)
    {
LABEL_154:
      result = -v29;
      goto LABEL_21;
    }

    result = 0;
    v26 = 161;
LABEL_106:
    *a4 = v26;
    goto LABEL_21;
  }

  if (v12 == 48)
  {
    goto LABEL_98;
  }

LABEL_120:
  result = 0;
  *a4 = 103;
  *a1 = v13 - 1;
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

uint64_t pcre2_compile_8(unsigned __int8 *a1, unint64_t a2, int a3, int *a4, void *a5, __int128 *a6)
{
  v6 = 0;
  v134[128] = *MEMORY[0x277D85DE8];
  v113 = 1;
  v114 = 0;
  v130[0] = 0;
  v115 = 0;
  v111 = 0;
  v112 = 0;
  if (!a4 || !a5)
  {
    return v6;
  }

  *a4 = 100;
  *a5 = 0;
  if (!a1)
  {
    v6 = 0;
    v13 = 116;
    goto LABEL_14;
  }

  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = &_pcre2_default_compile_context_8;
  }

  if ((a3 & 0x1C000000) != 0 || *(v11 + 16) >= 0x10u)
  {
    v6 = 0;
    v13 = 117;
    goto LABEL_14;
  }

  v12 = a2;
  if ((a3 & 0x2000000) != 0 && v11[4] & 3 | a3 & 0x176FEF3)
  {
    v6 = 0;
    v13 = 192;
LABEL_14:
    *a4 = v13;
    return v6;
  }

  if (a2 == -1)
  {
    v12 = _pcre2_strlen_8(a1);
  }

  if (v12 > *(v11 + 6))
  {
    v6 = 0;
    v13 = 188;
    goto LABEL_14;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  if (*(v11 + 5))
  {
    v15 = *(v11 + 5);
  }

  else
  {
    v15 = &_pcre2_default_tables_8;
  }

  *&v117 = v15 + 256;
  *(&v117 + 1) = v15 + 512;
  *&v116 = v11;
  *(&v116 + 1) = v15;
  *&v126 = v134;
  *(&v129 + 4) = 0;
  v121[11] = 0;
  *&v124 = 0;
  v122 = 0uLL;
  v120 = &a1[v12];
  *&v123 = &v132;
  HIDWORD(v123) = a3;
  DWORD2(v123) = 20;
  *&v125 = v133;
  *&v119 = v131;
  *(&v119 + 1) = a1;
  *&v118 = v15 + 832;
  *(&v118 + 1) = v131;
  v121[0] = 6000;
  DWORD2(v124) = 0;
  *(&v126 + 1) = 0;
  *(&v128 + 4) = 0;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  *&v121[1] = v16;
  *&v121[3] = v16;
  *&v121[5] = v16;
  *&v121[7] = v16;
  *&v121[9] = v16;
  if ((a3 & 0x2000000) != 0 || (v17 = v12 - 2, v12 < 2))
  {
    v21 = 0;
    LODWORD(v37) = 0;
    v20 = 0;
    v19 = 0;
    v97 = -1;
    v98 = -1;
    v99 = -1;
LABEL_68:
    v38 = &a1[v37];
    v39 = HIDWORD(v123);
    if ((HIDWORD(v123) & 0x80000) != 0)
    {
      if ((a3 & 0x1000) != 0)
      {
        v6 = 0;
        LODWORD(recurse) = 174;
        goto LABEL_86;
      }

      v40 = HIDWORD(v123);
      if ((a3 & 0x40000000) == 0)
      {
        v101 = v21;
        v104 = v19;
        v107 = v20;
        LODWORD(recurse) = _pcre2_valid_utf_8(a1, v12, a5);
        v110 = recurse;
        if (recurse)
        {
          v6 = 0;
          goto LABEL_111;
        }

        v40 = HIDWORD(v123);
        v39 = HIDWORD(v123);
        v19 = v104;
        v20 = v107;
        v21 = v101;
      }
    }

    else
    {
      v40 = HIDWORD(v123);
    }

    if ((~v40 & 0x20800) == 0)
    {
      v6 = 0;
      LODWORD(recurse) = 175;
      goto LABEL_86;
    }

    if (!v19)
    {
      LOWORD(v19) = *(v11 + 28);
    }

    if (!v20)
    {
      v20 = *(v11 + 29);
    }

    LODWORD(v127) = 0;
    if (v20 <= 3)
    {
      switch(v20)
      {
        case 1:
          v96 = v39;
          v94 = v15;
          DWORD1(v127) = 1;
          v42 = 13;
          break;
        case 2:
          v96 = v39;
          v94 = v15;
          DWORD1(v127) = 1;
          v42 = 10;
          break;
        case 3:
          v96 = v39;
          v94 = v15;
          DWORD1(v127) = 2;
          LOWORD(v128) = 2573;
LABEL_98:
          v102 = v21;
          v105 = v19;
          v108 = v20;
          v44 = v12 - v37;
          if ((v11[4] & 0xC) != 0)
          {
            v44 += 4;
          }

          if ((a3 & 4) != 0)
          {
            v45 = 5 * v44 + 5;
          }

          else
          {
            v45 = v44;
          }

          if (v45 <= 0x3FF)
          {
            v46 = v125;
          }

          else
          {
            v46 = (*v11)(4 * v45 + 4, *(v11 + 2));
            if (!v46)
            {
              v6 = 0;
              *a4 = 121;
              goto LABEL_112;
            }

            *&v125 = v46;
            v40 = HIDWORD(v123);
          }

          *(&v125 + 1) = v46 + 4 * v45 + 4;
          LODWORD(recurse) = parse_regex(&a1[v37], v40, v130, &v116);
          v110 = recurse;
          if (recurse)
          {
            goto LABEL_108;
          }

          v47 = DWORD1(v124);
          if (DWORD1(v124) <= 0xFF)
          {
            v48 = v126;
          }

          else
          {
            v48 = (*v11)(4 * (DWORD1(v124) + 1), *(v11 + 2));
            *&v126 = v48;
            if (!v48)
            {
              v6 = 0;
              LODWORD(recurse) = 121;
              v110 = 121;
              v121[11] = 0;
              goto LABEL_109;
            }

            v47 = DWORD1(v124);
          }

          if ((cstdlib_memset(v48, 0, 4 * (v47 + 1)), v130[0]) && (LODWORD(recurse) = check_lookbehinds(&v116), (v110 = recurse) != 0) || (v121[11] = v12, v114 = v125, v115 = v131, v131[0] = -125, compile_regex(HIDWORD(v123), &v115, &v114, &v110, 0, &v111 + 1, &v112 + 1, &v111, &v112, 0, &v116, &v113), (LODWORD(recurse) = v110) != 0))
          {
LABEL_108:
            v6 = 0;
LABEL_109:
            v38 = &a1[v121[11]];
            goto LABEL_110;
          }

          if (v113 > 0x10000)
          {
            v6 = 0;
            LODWORD(recurse) = 120;
LABEL_147:
            v110 = recurse;
            goto LABEL_109;
          }

          v49 = v113 + WORD1(v122) * v122 + 136;
          v50 = (*v11)(v49, *(v11 + 2));
          v6 = v50;
          if (!v50)
          {
            LODWORD(recurse) = 121;
            goto LABEL_147;
          }

          v51 = v50 + 136;
          cstdlib_memset((v50 + 128), 0, 8uLL);
          v52 = *(v11 + 2);
          *v6 = *v11;
          *(v6 + 16) = v52;
          *(v6 + 24) = v94;
          *(v6 + 32) = 0;
          cstdlib_memset((v6 + 40), 0, 0x20uLL);
          *(v6 + 72) = v49;
          *(v6 + 80) = 1346589253;
          *(v6 + 84) = a3;
          v92 = v11;
          v53 = *(v11 + 16);
          v54 = HIDWORD(v123);
          v55 = v124;
          *(v6 + 88) = HIDWORD(v123);
          *(v6 + 92) = v53;
          *(v6 + 96) = v102 | v55 | 1;
          *(v6 + 100) = v98;
          *(v6 + 104) = v97;
          *(v6 + 108) = v99;
          *(v6 + 112) = 0;
          *(v6 + 120) = v105;
          *(v6 + 122) = v108;
          *(v6 + 124) = 0;
          v56 = WORD1(v122);
          *(v6 + 132) = WORD1(v122);
          v57 = v122;
          *(v6 + 134) = v122;
          v58 = (v51 + v57 * v56);
          DWORD1(v122) = 0;
          DWORD2(v124) = 0;
          *(&v120 + 1) = v6 + 136;
          *&v119 = v58;
          *(&v128 + 1) = 0;
          LODWORD(v129) = 0;
          *(&v122 + 1) = 0;
          if (v57)
          {
            v59 = 0;
            v60 = v123;
            do
            {
              add_name_to_table(&v116, *v60, *(v60 + 12), *(v60 + 8), v59++);
              v60 += 16;
            }

            while (v59 < v122);
            v54 = *(v6 + 88);
          }

          v114 = v125;
          v115 = v58;
          *v58 = -125;
          if ((compile_regex(v54, &v115, &v114, &v110, 0, &v111 + 1, &v112 + 1, &v111, &v112, 0, &v116, 0) & 0x80000000) != 0)
          {
            *(v6 + 96) |= 0x2000u;
          }

          v61 = WORD4(v126);
          *(v6 + 128) = WORD2(v124);
          *(v6 + 130) = v61;
          *(v6 + 124) = WORD2(v128);
          if (HIDWORD(v128))
          {
            LODWORD(v111) = 0;
            LODWORD(v112) = -1;
          }

          v62 = v115;
          *v115 = 0;
          v115 = v62 + 1;
          v63 = v62 + 1 - v58;
          v64 = v63 > v113;
          v65 = v63 - v113;
          if (v64)
          {
            LODWORD(recurse) = 123;
LABEL_145:
            v110 = recurse;
LABEL_173:
            v11 = v92;
            goto LABEL_109;
          }

          v109 = (v96 >> 19) & 1;
          *(v6 + 72) += v65;
          LODWORD(recurse) = v110;
          if (!v110)
          {
            if (DWORD1(v129))
            {
              recurse = find_recurse(v58, v109);
              if (recurse)
              {
                v66 = recurse;
                v67 = 0;
                v68 = 8;
                while (1)
                {
                  v69 = __rev16(*(v66 + 1));
                  if (v69)
                  {
                    v70 = v58;
                    if (!v67)
                    {
                      goto LABEL_162;
                    }

                    v71 = v67;
                    v70 = v58;
                    v72 = v68;
                    while (1)
                    {
                      v73 = &v130[4 * v72 + 1];
                      v74 = v73[2];
                      if (v69 == v74)
                      {
                        break;
                      }

                      if (v69 > v74)
                      {
                        v70 = *v73;
                      }

                      v72 = (v72 + 1) & 7;
                      if (!--v71)
                      {
                        goto LABEL_162;
                      }
                    }

                    v75 = *v73;
                    if (!*v73)
                    {
LABEL_162:
                      bracket_8 = _pcre2_find_bracket_8(v70, v109, v69);
                      if (!bracket_8)
                      {
                        LODWORD(recurse) = 153;
                        v110 = 153;
                        break;
                      }

                      LODWORD(v75) = bracket_8;
                      if (v68 >= 1)
                      {
                        --v68;
                      }

                      else
                      {
                        v68 = 7;
                      }

                      v77 = &v130[4 * v68 + 1];
                      v77[2] = v69;
                      *v77 = bracket_8;
                      if (v67 < 8)
                      {
                        ++v67;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v75) = v58;
                  }

                  *(v66 + 1) = bswap32(v75 - v58) >> 16;
                  v66 = find_recurse(v66 + 3, v109);
                  if (!v66)
                  {
                    LODWORD(recurse) = v110;
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

          v78 = *(v6 + 88);
          if ((v78 & 0x4000) == 0)
          {
            if (_pcre2_auto_possessify_8(v58, v109, &v116))
            {
              LODWORD(recurse) = 180;
              goto LABEL_145;
            }

            v78 = *(v6 + 88);
          }

          if ((v78 & 0x80000000) == 0 && is_anchored(v58, 0, &v116, 0, 0))
          {
            v78 |= 0x80000000;
            *(v6 + 88) = v78;
          }

          if ((v78 & 0x10000) != 0)
          {
LABEL_216:
            v11 = v92;
            goto LABEL_112;
          }

          v79 = v96 & 0x80000;
          v80 = BYTE4(v112);
          if (v112 < 0)
          {
            firstassertedcu = find_firstassertedcu(v58, &v112 + 1, 0);
            HIDWORD(v111) = firstassertedcu;
            v80 = BYTE4(v112);
            if (v112 < 0)
            {
              if ((*(v6 + 88) & 0x80000000) != 0 || !is_startline(v58, 0, &v116, 0, 0))
              {
                goto LABEL_200;
              }

              v85 = *(v6 + 96) | 0x200;
              goto LABEL_199;
            }
          }

          else
          {
            firstassertedcu = HIDWORD(v111);
          }

          *(v6 + 112) = firstassertedcu;
          v82 = *(v6 + 96);
          *(v6 + 96) = v82 | 0x10;
          if ((v80 & 1) == 0 || (!v79 ? (v83 = firstassertedcu >= 0xFF) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), firstassertedcu >= 0x80 && !v84 || firstassertedcu == *(v117 + firstassertedcu)))
          {
LABEL_200:
            v86 = v112;
            if ((v112 & 0x80000000) == 0 && ((v112 & 2) != 0 || (*(v6 + 88) & 0x80000000) == 0))
            {
              v87 = v111;
              *(v6 + 116) = v111;
              v88 = *(v6 + 96);
              *(v6 + 96) = v88 | 0x80;
              if (v86)
              {
                v89 = v79 || v87 >= 0xFF;
                v90 = !v89;
                if ((v87 < 0x80 || v90) && v87 != *(v117 + v87))
                {
                  *(v6 + 96) = v88 | 0x180;
                }
              }
            }

            if (_pcre2_study_8(v6))
            {
              LODWORD(recurse) = 131;
              goto LABEL_145;
            }

            goto LABEL_216;
          }

          v85 = v82 | 0x30;
LABEL_199:
          *(v6 + 96) = v85;
          goto LABEL_200;
        default:
          goto LABEL_93;
      }

      LOBYTE(v128) = v42;
      goto LABEL_98;
    }

    switch(v20)
    {
      case 4:
        v96 = v39;
        v94 = v15;
        v43 = 1;
        break;
      case 5:
        v96 = v39;
        v94 = v15;
        v43 = 2;
        break;
      case 6:
        v96 = v39;
        v94 = v15;
        DWORD1(v127) = 1;
        LOBYTE(v128) = 0;
        goto LABEL_98;
      default:
LABEL_93:
        v6 = 0;
        LODWORD(recurse) = 156;
        goto LABEL_86;
    }

    LODWORD(v127) = v43;
    goto LABEL_98;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = a1 + 2;
  v98 = -1;
  v99 = -1;
  v95 = 0;
  v97 = -1;
  v23 = &dword_279DB5B9C;
  v91 = v11;
  v93 = v15;
  while (1)
  {
    if (a1[v18] != 40)
    {
      LODWORD(v37) = v95;
      goto LABEL_68;
    }

    if (a1[v95 + 1] != 42)
    {
      LODWORD(v37) = v95;
      goto LABEL_68;
    }

    v100 = v21;
    v103 = v19;
    v106 = v20;
    v24 = v17 - v95;
    v25 = 21;
    v26 = &v22[v95];
    while (1)
    {
      v27 = *(v23 - 2);
      if (v24 >= v27 && !_pcre2_strncmp_c8_8(v26, *(v23 - 3), *(v23 - 2)))
      {
        break;
      }

      v23 += 4;
      if (!--v25)
      {
        LODWORD(v37) = v95;
        v11 = v91;
        v15 = v93;
        v19 = v103;
        v20 = v106;
        v21 = v100;
        goto LABEL_68;
      }
    }

    v37 = v95 + v27 + 2;
    v28 = *(v23 - 1);
    if (v28 > 2)
    {
      break;
    }

    v11 = v91;
    v19 = v103;
    v20 = v106;
    v21 = v100;
    if (*(v23 - 1))
    {
      v15 = v93;
      v22 = a1 + 2;
      if (v28 == 1)
      {
        v21 = *v23 | v100;
      }

      else if (v28 == 2)
      {
        v20 = *v23;
        v21 = v100 | 0x8000;
      }

      goto LABEL_63;
    }

    HIDWORD(v123) |= *v23;
    v15 = v93;
    v22 = a1 + 2;
    v17 = v12 - 2;
LABEL_64:
    v23 = &dword_279DB5B9C;
LABEL_65:
    v18 = v37;
    v95 = v37;
    if (v12 - v37 <= 1)
    {
      goto LABEL_68;
    }
  }

  v11 = v91;
  v19 = v103;
  v20 = v106;
  v21 = v100;
  if (v28 - 4 >= 3)
  {
    v22 = a1 + 2;
    if (v28 == 3)
    {
      v19 = *v23;
      v21 = v100 | 0x4000;
    }

    v15 = v93;
LABEL_63:
    v17 = v12 - 2;
    goto LABEL_64;
  }

  v29 = a1[v37];
  if (v29 - 48 <= 9)
  {
    v30 = 0;
    LODWORD(v37) = v95 + v27 + 3;
    v15 = v93;
    v22 = a1 + 2;
    v17 = v12 - 2;
    v23 = &dword_279DB5B9C;
    do
    {
      if (v29 > 0x39 || v30 > 0x19999998)
      {
        goto LABEL_129;
      }

      v30 = v29 + 10 * v30 - 48;
      v29 = a1[v37];
      LODWORD(v37) = v37 + 1;
    }

    while (v29 > 0x2F);
    if (v29 != 41)
    {
LABEL_129:
      v6 = 0;
      LODWORD(recurse) = 160;
      v110 = 160;
      v38 = &a1[v37];
      goto LABEL_110;
    }

    v32 = v98;
    v31 = v99;
    if (v28 == 4)
    {
      v33 = v30;
    }

    else
    {
      v33 = v98;
    }

    if (v28 == 4)
    {
      v34 = v99;
    }

    else
    {
      v34 = v30;
    }

    v35 = v28 == 5;
    if (v28 != 5)
    {
      v32 = v33;
    }

    v36 = v97;
    if (v35)
    {
      v36 = v30;
    }

    v97 = v36;
    v98 = v32;
    if (!v35)
    {
      v31 = v34;
    }

    v99 = v31;
    goto LABEL_65;
  }

  v6 = 0;
  v38 = &a1[v37];
  LODWORD(recurse) = 160;
LABEL_86:
  v110 = recurse;
LABEL_110:
  *a5 = v38 - a1;
LABEL_111:
  *a4 = recurse;
  pcre2_code_free_8(v6);
  v6 = 0;
LABEL_112:
  if (v125 != v133)
  {
    (*(v11 + 1))(v125, *(v11 + 2));
  }

  if (DWORD2(v123) >= 0x15)
  {
    (*(v11 + 1))(v123, *(v11 + 2));
  }

  if (v126 != v134)
  {
    (*(v11 + 1))(v126, *(v11 + 2));
  }

  return v6;
}

uint64_t parse_regex(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, int *a4)
{
  v4 = a4;
  v5 = a1;
  v342[0] = a1;
  v340 = 0;
  v338 = 0;
  v339 = 0;
  v7 = *(a4 + 28);
  v6 = *(a4 + 29);
  v330 = a2 & 0x80000;
  v8 = (a2 >> 2) & 1;
  v337 = 0;
  v9 = *(a4 + 8);
  v10 = *(*a4 + 64);
  v11 = -2146893824;
  if ((v10 & 8) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_5;
    }

    v11 = -2145910779;
  }

  *v7 = v11;
  v7[1] = -2145779712;
  v7 += 2;
LABEL_5:
  v341 = 0;
  if ((a2 & 0x2000000) != 0)
  {
    if (v9 <= a1)
    {
      goto LABEL_772;
    }

    v288 = a2 & 4;
    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_781;
      }

      v289 = v5 + 1;
      v342[0] = v5 + 1;
      v290 = *v5;
      v341 = v290;
      if (!v330 || v290 < 0xC0)
      {
        goto LABEL_760;
      }

      if ((v290 & 0x20) == 0)
      {
        break;
      }

      v291 = *v289 & 0x3F;
      if ((v290 & 0x10) != 0)
      {
        if ((v290 & 8) != 0)
        {
          v292 = v5[2] & 0x3F;
          v293 = v5[3] & 0x3F;
          v294 = v5[4] & 0x3F;
          if ((v290 & 4) != 0)
          {
            v290 = ((v290 & 1) << 30) | (v291 << 24) | (v292 << 18) | (v293 << 12) | (v294 << 6) | v5[5] & 0x3F;
            v341 = v290;
            v289 = v5 + 6;
          }

          else
          {
            v289 = v5 + 5;
            v290 = ((v290 & 3) << 24) | (v291 << 18) | (v292 << 12) | (v293 << 6) | v294;
            v341 = v290;
          }
        }

        else
        {
          v290 = ((v290 & 7) << 18) | (v291 << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
          v341 = v290;
          v289 = v5 + 4;
        }
      }

      else
      {
        v290 = ((v290 & 0xF) << 12) | (v291 << 6) | v5[2] & 0x3F;
        v341 = v290;
        v289 = v5 + 3;
      }

      v342[0] = v289;
      if (v288)
      {
LABEL_770:
        v7 = manage_callouts(v5, &v339, v8, v7, v4);
        v290 = v341;
        v5 = v342[0];
        goto LABEL_771;
      }

LABEL_761:
      v5 = v289;
LABEL_771:
      *v7++ = v290;
      if (v5 >= v9)
      {
        goto LABEL_772;
      }
    }

    v289 = v5 + 2;
    v342[0] = v5 + 2;
    v341 = v5[1] & 0x3F | ((v290 & 0x1F) << 6);
    v290 = v341;
LABEL_760:
    if (v288)
    {
      goto LABEL_770;
    }

    goto LABEL_761;
  }

  if (v9 <= a1)
  {
LABEL_772:
    LOWORD(v14) = 0;
    goto LABEL_773;
  }

  v326 = 0;
  v327 = (a2 >> 2) & 1;
  v323 = 0;
  v324 = 0;
  v325 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v329 = 0;
  v320 = (a2 >> 19) & 1;
  v317 = *(v4 + 5) + 12 * (*(v4 + 10) / 0xCuLL);
  v18 = (a2 >> 17) & 0x80 | a2;
  v321 = v9 - 1;
  v322 = v4 + 65;
  v318 = v4 + 22;
  v328 = v4;
  while (2)
  {
    v335 = 0;
    v336 = 0;
    v333 = 0;
    v334 = 0;
    if (v7 >= v6)
    {
      v303 = 163;
      goto LABEL_791;
    }

    if (*(*v4 + 60) < v14)
    {
      v303 = 119;
      goto LABEL_791;
    }

    v19 = v5 + 1;
    v342[0] = v5 + 1;
    v20 = *v5;
    v341 = v20;
    if (!v330 || v20 < 0xC0)
    {
      goto LABEL_14;
    }

    if ((v20 & 0x20) == 0)
    {
      v19 = v5 + 2;
      v342[0] = v5 + 2;
      v341 = v5[1] & 0x3F | ((v20 & 0x1F) << 6);
      v20 = v341;
LABEL_14:
      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

    v23 = *v19 & 0x3F;
    if ((v20 & 0x10) != 0)
    {
      if ((v20 & 8) != 0)
      {
        v30 = v5[2] & 0x3F;
        v31 = v5[3] & 0x3F;
        v32 = v5[4] & 0x3F;
        if ((v20 & 4) != 0)
        {
          v20 = ((v20 & 1) << 30) | (v23 << 24) | (v30 << 18) | (v31 << 12) | (v32 << 6) | v5[5] & 0x3F;
          v341 = v20;
          v19 = v5 + 6;
        }

        else
        {
          v19 = v5 + 5;
          v20 = ((v20 & 3) << 24) | (v23 << 18) | (v30 << 12) | (v31 << 6) | v32;
          v341 = v20;
        }
      }

      else
      {
        v20 = ((v20 & 7) << 18) | (v23 << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
        v341 = v20;
        v19 = v5 + 4;
      }
    }

    else
    {
      v20 = ((v20 & 0xF) << 12) | (v23 << 6) | v5[2] & 0x3F;
      v341 = v20;
      v19 = v5 + 3;
    }

    v342[0] = v19;
    if (v16)
    {
LABEL_15:
      if (v20 != 92 || v19 >= v9 || *v19 != 69)
      {
        if (v17 < 1)
        {
          if (v15)
          {
            v22 = v329;
          }

          else
          {
            v22 = v329 - 1;
            if (v329 <= 0)
            {
              v24 = v5;
              v25 = v14;
              v26 = v18;
              v27 = v17;
              v28 = v15;
              v29 = manage_callouts(v24, &v339, v327, v7, v4);
              v15 = v28;
              v17 = v27;
              v4 = v328;
              v18 = v26;
              v14 = v25;
              v7 = v29;
              v20 = v341;
            }
          }

          v12 = 0;
          *v7++ = v20;
          v16 = 1;
          v329 = v22;
          goto LABEL_29;
        }

        v301 = v19 - 1;
LABEL_790:
        v342[0] = v301;
        v303 = 128;
        goto LABEL_791;
      }

      v16 = 0;
      goto LABEL_19;
    }

LABEL_38:
    if (!v15)
    {
LABEL_51:
      if (v20 != 92)
      {
        goto LABEL_57;
      }

      if (v19 >= v9 || (v33 = *v19, v33 != 81) && v33 != 69)
      {
        v20 = 92;
        goto LABEL_57;
      }

      v16 = v33 == 81;
LABEL_19:
      v21 = v19 + 1;
      goto LABEL_20;
    }

    if ((~v18 & 0x400080) != 0)
    {
      goto LABEL_47;
    }

    if (v20 < 0x100)
    {
      if (v20 == 35)
      {
        goto LABEL_57;
      }

      if (v20 != 133 && (*(*(v4 + 4) + v20) & 1) == 0)
      {
LABEL_47:
        if (v20 == 41)
        {
          if (v325 - v19 <= -257)
          {
            v342[0] = v19 - 1;
            v303 = 176;
            goto LABEL_791;
          }

          *v324 = ((v7 - v324) >> 2) - 1;
          v16 = 0;
          v15 = 0;
          if (v326)
          {
            v13 = 0;
            *v7++ = v326;
            v326 = 0;
          }

          else
          {
            v326 = 0;
            v13 = 0;
          }

          goto LABEL_30;
        }

        if (v20 != 92)
        {
          goto LABEL_130;
        }

        if ((v18 & 0x400000) == 0)
        {
          v20 = 92;
LABEL_130:
          v16 = 0;
          *v7++ = v20;
          v15 = 1;
          goto LABEL_29;
        }

        v59 = v13;
        v60 = v12;
        v61 = v14;
        v62 = v18;
        v63 = _pcre2_check_escape_8(v342, v9, &v341, &v338 + 1, v18, 0, v4);
        if (HIDWORD(v338))
        {
          goto LABEL_792;
        }

        v14 = v61;
        if (v63 == 26)
        {
          v16 = 1;
          v15 = 1;
          v18 = v62;
          v4 = v328;
          v12 = v60;
        }

        else
        {
          v18 = v62;
          v4 = v328;
          v12 = v60;
          if (v63 != 25)
          {
            if (v63)
            {
              v303 = 140;
              goto LABEL_791;
            }

            v20 = v341;
            goto LABEL_130;
          }

          v16 = 0;
          v15 = 1;
        }

        v13 = v59;
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    if ((v20 | 1) != 0x200F && (v20 | 1) != 0x2029)
    {
      goto LABEL_47;
    }

LABEL_57:
    if ((v18 & 0x80) == 0)
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
        v334 = v19;
        v35 = v17;
        v17 = v18;
        v36 = v14;
        v37 = v15;
        v38 = v12;
        v39 = read_repeat_counts(&v334, v9, 0, 0, &v338 + 1);
        LODWORD(v12) = v38;
        v15 = v37;
        v18 = v17;
        LODWORD(v17) = v35;
        v4 = v328;
        v14 = v36;
        if (v39)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_78;
    }

    if (v20 <= 0xFF)
    {
      v16 = 0;
      if (v20 == 133 || (*(*(v4 + 4) + v20) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v16 = 0;
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
LABEL_175:
        v16 = 0;
        goto LABEL_30;
      }

      v316 = v6;
      while (1)
      {
        v72 = v4[64];
        v73 = *(v4 + 8);
        if (v72)
        {
          if (v19 < v73)
          {
            v74 = v13;
            v75 = v12;
            v76 = v17;
            v77 = v15;
            v78 = v18;
            v79 = v14;
            is_newline_8 = _pcre2_is_newline_8(v19, v72, v73, v322, v320);
            v19 = v342[0];
            if (is_newline_8)
            {
              v81 = *v322;
              v14 = v79;
              v18 = v78;
              v15 = v77;
              v17 = v76;
              v12 = v75;
              v6 = v316;
              v13 = v74;
              goto LABEL_584;
            }

            v14 = v79;
            v18 = v78;
            v15 = v77;
            v17 = v76;
            v12 = v75;
            v6 = v316;
            v13 = v74;
          }
        }

        else
        {
          v81 = *v322;
          if (v19 <= v73 - v81 && *v19 == *(v4 + 272))
          {
            if (v81 == 1)
            {
              v81 = 1;
LABEL_584:
              v16 = 0;
              v21 = &v19[v81];
LABEL_20:
              v342[0] = v21;
              goto LABEL_30;
            }

            if (v19[1] == *(v4 + 273))
            {
              goto LABEL_584;
            }
          }
        }

        v82 = v19 + 1;
        v342[0] = v19 + 1;
        if (v330 && v82 < v9)
        {
          v83 = v321 - v19;
          do
          {
            if ((*v82 & 0xC0) != 0x80)
            {
              break;
            }

            v342[0] = ++v82;
            --v83;
          }

          while (v83);
        }

        v19 = v82;
        if (v82 >= v9)
        {
          goto LABEL_175;
        }
      }
    }

LABEL_60:
    if (v20 == 40 && v9 - v19 >= 2 && *v19 == 63 && v19[1] == 35)
    {
      v21 = v19 + 1;
      while (1)
      {
        v342[0] = v21;
        if (v21 >= v9)
        {
          break;
        }

        v34 = *v21++;
        if (v34 == 41)
        {
          v16 = 0;
          goto LABEL_20;
        }
      }

      v303 = 118;
      goto LABEL_791;
    }

LABEL_78:
    if (v329 <= 0)
    {
      v40 = v5;
      v41 = v14;
      v42 = v7;
      v43 = v9;
      v44 = v6;
      v45 = v17;
      v17 = v18;
      v46 = v15;
      v47 = v13;
      v48 = v12;
      v49 = manage_callouts(v40, &v339, v327, v42, v328);
      LODWORD(v12) = v48;
      LODWORD(v13) = v47;
      v15 = v46;
      v18 = v17;
      LODWORD(v17) = v45;
      v6 = v44;
      v9 = v43;
      v4 = v328;
      v14 = v41;
      v7 = v49;
    }

    --v329;
LABEL_81:
    if (v17 < 1)
    {
      goto LABEL_97;
    }

    if (v341 != 40 || v9 - v342[0] < 3 || *v342[0] != 63)
    {
LABEL_789:
      v301 = v342[0] - 1;
      goto LABEL_790;
    }

    v50 = v342[0][1];
    if (v50 > 0x3C)
    {
      if (v50 != 61 && (v50 != 67 || v17 != 2))
      {
        goto LABEL_789;
      }
    }

    else if (v50 != 33)
    {
      if (v50 != 60)
      {
        goto LABEL_789;
      }

      v51 = v342[0][2];
      if (v51 != 33 && v51 != 61)
      {
        goto LABEL_789;
      }
    }

LABEL_97:
    if (v12)
    {
      if (v341 <= 62)
      {
        if (v341 > 41)
        {
          if (v341 != 42)
          {
            if (v341 == 43)
            {
              goto LABEL_118;
            }

            goto LABEL_155;
          }

          goto LABEL_178;
        }

        goto LABEL_105;
      }

      if (v341 <= 93)
      {
        if (v341 == 63)
        {
LABEL_118:
          v17 = 0;
          v16 = 0;
          v13 = 0;
          if (v341 == 63)
          {
            v56 = 0x20000;
          }

          else
          {
            v56 = 0x10000;
          }

          v57 = v56 + v12;
          v58 = 0x3FFFFFFFFFFFFFFFLL;
          if (v12 == -2143682560)
          {
            v58 = 0x3FFFFFFFFFFFFFFDLL;
          }

          v7[v58] = v57;
          goto LABEL_124;
        }

LABEL_133:
        if (v341 != 91)
        {
          if (v341 != 92)
          {
            goto LABEL_233;
          }

          v64 = v15;
          v306 = v14;
          v65 = v342[0];
          v334 = v342[0];
          v311 = v18;
          v66 = _pcre2_check_escape_8(v342, v9, &v341, &v338 + 1, v18, 0, v4);
          if (!HIDWORD(v338))
          {
            v67 = v66;
            v14 = v306;
            v18 = v311;
            v15 = v64;
            goto LABEL_457;
          }

          while (1)
          {
            v14 = v306;
            if ((*(*v4 + 64) & 2) == 0)
            {
              goto LABEL_792;
            }

            v15 = v64;
            v342[0] = v65;
            if (v65 >= v9)
            {
              v67 = 0;
              v341 = 92;
              v18 = v311;
              v4 = v328;
            }

            else
            {
              v67 = 0;
              v342[0] = v65 + 1;
              v68 = *v65;
              v341 = v68;
              v18 = v311;
              v4 = v328;
              if (!v330 || v68 < 0xC0)
              {
                goto LABEL_457;
              }

              if ((v68 & 0x20) != 0)
              {
                v175 = v65[1] & 0x3F;
                if ((v68 & 0x10) == 0)
                {
                  v67 = 0;
                  v341 = ((v68 & 0xF) << 12) | (v175 << 6) | v65[2] & 0x3F;
                  v176 = v65 + 3;
LABEL_456:
                  v342[0] = v176;
                  goto LABEL_457;
                }

                if ((v68 & 8) == 0)
                {
                  v67 = 0;
                  v341 = ((v68 & 7) << 18) | (v175 << 12) | ((v65[2] & 0x3F) << 6) | v65[3] & 0x3F;
                  v176 = v65 + 4;
                  goto LABEL_456;
                }

                v185 = v65[2] & 0x3F;
                v186 = v65[3] & 0x3F;
                v187 = v65[4] & 0x3F;
                v67 = 0;
                if ((v68 & 4) != 0)
                {
                  v341 = ((v68 & 1) << 30) | (v175 << 24) | (v185 << 18) | (v186 << 12) | (v187 << 6) | v65[5] & 0x3F;
                  v176 = v65 + 6;
                  goto LABEL_456;
                }

                v341 = ((v68 & 3) << 24) | (v175 << 18) | (v185 << 12) | (v186 << 6) | v187;
                v342[0] = v65 + 5;
              }

              else
              {
                v67 = 0;
                v342[0] = v65 + 2;
                v341 = v65[1] & 0x3F | ((v68 & 0x1F) << 6);
              }
            }

LABEL_457:
            if (!v67)
            {
              v17 = 0;
              v16 = 0;
              v12 = 0;
              v195 = v341;
              goto LABEL_464;
            }

            if (v67 < 0)
            {
              v196 = &v342[0][~*(v4 + 7)];
              v197 = -v67;
              *v7 = -v67 | 0x80030000;
              v118 = v7 + 1;
              if (v67 >= 0xFFFFFFF7)
              {
                v17 = 0;
                v16 = 0;
                v12 = 0;
                if (v318[v197] == -1)
                {
                  v318[v197] = v196;
                }

                v13 = 1;
LABEL_249:
                v7 = v118;
                goto LABEL_30;
              }

              v17 = 0;
              v16 = 0;
              v12 = 0;
              *(v7 + 1) = __ROR8__(v196, 32);
LABEL_472:
              v7 += 3;
LABEL_29:
              v13 = 1;
              goto LABEL_30;
            }

            if (v67 <= 14)
            {
              if ((v67 - 6) < 6)
              {
                if ((v18 & 0x20000) != 0)
                {
                  v202 = -2145910768;
                  if (v67 != 7 && v67 != 9)
                  {
                    if (v67 == 11)
                    {
                      v202 = -2145910768;
                    }

                    else
                    {
                      v202 = -2145910769;
                    }
                  }

                  *v7 = v202;
                  if (((1 << v67) & 0xC0) != 0)
                  {
                    v17 = 0;
                    v16 = 0;
                    v12 = 0;
                    v203 = 196621;
                  }

                  else
                  {
                    v17 = 0;
                    v16 = 0;
                    v12 = 0;
                    if (((1 << v67) & 0x300) != 0)
                    {
                      v203 = 393216;
                    }

                    else
                    {
                      v203 = 0x80000;
                    }
                  }

                  v7[1] = v203;
                  v7 += 2;
                  goto LABEL_29;
                }

                v17 = 0;
                v16 = 0;
                v12 = 0;
                v71 = v67 - 2145910784;
                goto LABEL_157;
              }

              if (v67 == 12)
              {
                goto LABEL_462;
              }

              if (v67 != 14)
              {
LABEL_523:
                v17 = 0;
                v16 = 0;
                v13 = 0;
                v12 = 0;
                *v7++ = v67 - 2145910784;
                goto LABEL_30;
              }

              if ((v18 & 0x100000) == 0)
              {
                v17 = 0;
                v16 = 0;
                v12 = 0;
                v195 = -2145910770;
                goto LABEL_464;
              }

              v207 = 183;
LABEL_671:
              HIDWORD(v338) = v207;
            }

            else
            {
              if (v67 > 0x1C)
              {
                goto LABEL_523;
              }

              v194 = 1 << v67;
              if (((1 << v67) & 0x7E0000) != 0)
              {
LABEL_462:
                v17 = 0;
                v16 = 0;
                v12 = 0;
                v195 = v67 - 2145910784;
LABEL_464:
                *v7++ = v195;
                v13 = 1;
                goto LABEL_30;
              }

              if ((v194 & 0x18000) != 0)
              {
                LODWORD(v331) = 0;
                v332 = 0;
                if (get_ucp(v342, &v331, &v332 + 1, &v332, &v338 + 1, v4))
                {
                  v17 = 0;
                  v16 = 0;
                  v12 = 0;
                  if (v67 == 15)
                  {
                    v204 = 16;
                  }

                  else
                  {
                    v204 = 15;
                  }

                  if (v331)
                  {
                    v205 = v204;
                  }

                  else
                  {
                    v205 = v67;
                  }

                  v206 = v332 | (HIWORD(v332) << 16);
                  *v7 = v205 - 2145910784;
                  v7[1] = v206;
                  v7 += 2;
                  goto LABEL_516;
                }
              }

              else
              {
                if ((v194 & 0x18000000) == 0)
                {
                  goto LABEL_523;
                }

                if (v342[0] >= v9 || (v198 = *v342[0], v198 != 39) && v198 != 60 && v198 != 123)
                {
                  if (v67 == 27)
                  {
                    v207 = 157;
                  }

                  else
                  {
                    v207 = 169;
                  }

                  goto LABEL_671;
                }

                if (v198 == 39)
                {
                  v199 = 39;
                }

                else
                {
                  v199 = 125;
                }

                if (v198 == 60)
                {
                  v200 = 62;
                }

                else
                {
                  v200 = v199;
                }

                v201 = v198 == 39 || v198 == 60;
                if (v67 != 27 || !v201)
                {
                  goto LABEL_834;
                }

                v331 = v342[0] + 1;
                if (read_number(&v331, v9, v4[53], 0xFFFFu, 161, &v338, &v338 + 1))
                {
                  v93 = v331;
                  if (v331 < v9 && v200 == *v331)
                  {
                    v92 = v338;
                    v14 = v306;
                    v18 = v311;
                    v15 = v64;
LABEL_188:
                    v17 = 0;
                    v16 = 0;
                    v12 = 0;
                    *v7 = v92 | 0x80200000;
                    v333 = &v93[-*(v4 + 7)];
                    v94 = v333;
                    v342[0] = v93 + 1;
                    v7[1] = HIDWORD(v333);
                    v7[2] = v94;
                    goto LABEL_472;
                  }

                  v207 = 157;
                  goto LABEL_671;
                }

                if (!HIDWORD(v338))
                {
LABEL_834:
                  if (read_name(v342, v9, v200, &v333, &v337, &v340, &v338 + 1, v4))
                  {
                    v17 = 0;
                    v16 = 0;
                    v12 = 0;
                    if (v200 == 125 || v67 == 28)
                    {
                      v267 = -2147221504;
                    }

                    else
                    {
                      v267 = -2145320960;
                    }

                    *v7 = v267;
                    v7[1] = v340;
                    *(v7 + 1) = __ROR8__(v333, 32);
                    v7 += 4;
LABEL_516:
                    v13 = 1;
                    v14 = v306;
                    v18 = v311;
                    v15 = v64;
                    goto LABEL_30;
                  }
                }
              }
            }
          }
        }

        v95 = v342[0];
        if (v9 - v342[0] >= 6)
        {
          v96 = v15;
          v97 = v18;
          v98 = v14;
          if (!_pcre2_strncmp_c8_8(v342[0], "[:<:]]", 6) || !_pcre2_strncmp_c8_8(v342[0], "[:>:]]", 6))
          {
            v171 = -2145910768;
            *v7 = -2145910779;
            v172 = (v7 + 2);
            v173 = v342[0];
            if (v342[0][2] == 60)
            {
              v7[1] = -2145255424;
            }

            else
            {
              v7[1] = -2145124352;
              *a3 = 1;
              v172 = (v7 + 4);
              *(v7 + 1) = 0;
            }

            v14 = v98;
            v18 = v97;
            v15 = v96;
            if ((v97 & 0x20000) != 0)
            {
              v174 = v172 + 2;
              v172[1] = 0x80000;
            }

            else
            {
              v174 = v172 + 1;
              v171 = -2145910773;
            }

            v17 = 0;
            v16 = 0;
            v12 = 0;
            *v172 = v171;
            *v174 = -2145845248;
            v7 = v174 + 1;
            v342[0] = v173 + 6;
            goto LABEL_29;
          }

          v95 = v342[0];
          v14 = v98;
          v18 = v97;
          v15 = v96;
        }

        if (v95 < v9)
        {
          v99 = *v95;
          if (v99 <= 0x3D && ((1 << v99) & 0x2400400000000000) != 0)
          {
            v100 = v15;
            v101 = v18;
            v102 = v14;
            v103 = check_posix_syntax(v95, v9, &v334);
            v95 = v342[0];
            if (v103)
            {
              --v342[0];
              if (*v95 == 58)
              {
                v303 = 112;
              }

              else
              {
                v303 = 113;
              }

              goto LABEL_791;
            }

            v14 = v102;
            v18 = v101;
            v15 = v100;
          }
        }

        if (v95 < v9)
        {
          v104 = 0;
          while (1)
          {
            v342[0] = v95 + 1;
            v105 = *v95;
            if (v330 && v105 >= 0xC0)
            {
              if ((v105 & 0x20) != 0)
              {
                v107 = v95[1] & 0x3F;
                if ((v105 & 0x10) != 0)
                {
                  if ((v105 & 8) != 0)
                  {
                    v108 = v95[2] & 0x3F;
                    v109 = v95[3] & 0x3F;
                    v110 = v95[4] & 0x3F;
                    if ((v105 & 4) != 0)
                    {
                      v105 = ((v105 & 1) << 30) | (v107 << 24) | (v108 << 18) | (v109 << 12) | (v110 << 6) | v95[5] & 0x3F;
                      v95 += 6;
                    }

                    else
                    {
                      v105 = ((v105 & 3) << 24) | (v107 << 18) | (v108 << 12) | (v109 << 6) | v110;
                      v95 += 5;
                    }
                  }

                  else
                  {
                    v105 = ((v105 & 7) << 18) | (v107 << 12) | ((v95[2] & 0x3F) << 6) | v95[3] & 0x3F;
                    v95 += 4;
                  }
                }

                else
                {
                  v105 = ((v105 & 0xF) << 12) | (v107 << 6) | v95[2] & 0x3F;
                  v95 += 3;
                }

                v342[0] = v95;
              }

              else
              {
                v342[0] = v95 + 2;
                v106 = v95[1] & 0x3F | ((v105 & 0x1F) << 6);
                v95 += 2;
                v105 = v106;
              }
            }

            else
            {
              ++v95;
            }

            if (v105 == 92)
            {
              v341 = 92;
              if (v95 < v9 && *v95 == 69)
              {
                v342[0] = ++v95;
                v105 = 92;
              }

              else
              {
                if (v9 - v95 < 3)
                {
                  goto LABEL_258;
                }

                v112 = v15;
                v113 = v18;
                v114 = v14;
                if (_pcre2_strncmp_c8_8(v95, "Q\\E", 3))
                {
                  v105 = v341;
                  v14 = v114;
                  v18 = v113;
                  v15 = v112;
                  goto LABEL_256;
                }

                v95 = v342[0] + 3;
                v342[0] += 3;
                v105 = 92;
                v14 = v114;
                v18 = v113;
                v15 = v112;
              }
            }

            else if ((v18 & 0x1000000) == 0 || (v105 != 32 ? (v111 = v105 == 9) : (v111 = 1), !v111))
            {
              v341 = v105;
              if (v104 || v105 != 94)
              {
                goto LABEL_256;
              }

              v104 = 1;
            }

            if (v95 >= v9)
            {
              goto LABEL_255;
            }
          }
        }

        v104 = 0;
        v105 = 91;
LABEL_255:
        v341 = v105;
LABEL_256:
        if (v105 == 93 && (v4[51] & 1) != 0)
        {
          v17 = 0;
          v16 = 0;
          v12 = 0;
          if (v104)
          {
            v71 = -2146697216;
          }

          else
          {
            v71 = -2146762752;
          }

          goto LABEL_157;
        }

LABEL_258:
        v120 = 0;
        v121 = 0;
        if (v104)
        {
          v122 = -2146566144;
        }

        else
        {
          v122 = -2146828288;
        }

        *v7 = v122;
        v123 = (v7 + 1);
LABEL_262:
        if (v120)
        {
          if (v341 == 92 && v342[0] < v9 && *v342[0] == 69)
          {
            v120 = 0;
            ++v342[0];
            goto LABEL_318;
          }

          goto LABEL_303;
        }

        if ((v18 & 0x1000000) != 0 && (v341 == 9 || v341 == 32))
        {
          v120 = 0;
          goto LABEL_318;
        }

        if (v341 == 91)
        {
          if (v9 - v342[0] >= 3)
          {
            v124 = *v342[0];
            v280 = v124 > 0x3D;
            v125 = (1 << v124) & 0x2400400000000000;
            if (!v280 && v125 != 0)
            {
              v127 = v15;
              v128 = v18;
              v129 = v14;
              if (!check_posix_syntax(v342[0], v9, &v334))
              {
                v142 = 0;
                v143 = 3;
                v14 = v129;
                v18 = v128;
                v15 = v127;
                goto LABEL_304;
              }

              if (v121 == 1)
              {
                goto LABEL_804;
              }

              v130 = v342[0];
              if (*v342[0] == 58)
              {
                v131 = ++v342[0];
                v132 = v130[1];
                if (v132 == 94)
                {
                  v131 = v130 + 2;
                  v342[0] = v130 + 2;
                }

                v133 = v334;
                v134 = check_posix_name(v131, v334 - v131);
                if (v134 < 0)
                {
                  v299 = 130;
                }

                else
                {
                  v342[0] = v133 + 2;
                  v14 = v129;
                  v18 = v128;
                  v15 = v127;
                  if (v133 + 2 >= v321 || v133[2] != 45 || v133[3] == 93)
                  {
                    if ((v128 & 0x20000) != 0)
                    {
                      if ((0xBFFFAFFuLL >> (2 * v134)))
                      {
                        v120 = 0;
                        v121 = 0;
                        v155 = posix_substitutes[(2 * (v134 & 0x3FFFFFFF)) | 1];
                        v156 = posix_substitutes[2 * v134];
                        if (v132 == 94)
                        {
                          v157 = -2145910769;
                        }

                        else
                        {
                          v157 = -2145910768;
                        }

                        *v123 = v157;
                        v123[1] = v155 | (v156 << 16);
                        v123 += 2;
                        goto LABEL_318;
                      }

                      if (((0xAAA2280uLL >> ((2 * v134) | 1u)) & 1) == 0)
                      {
                        v120 = 0;
                        v121 = 0;
                        if (v132 == 94)
                        {
                          v154 = -2145910766;
                        }

                        else
                        {
                          v154 = -2145910765;
                        }

                        *v123++ = v154;
                        goto LABEL_318;
                      }
                    }

                    v120 = 0;
                    v121 = 0;
                    if (v132 == 94)
                    {
                      v135 = -2145583104;
                    }

                    else
                    {
                      v135 = -2145648640;
                    }

                    *v123 = v135;
                    v123[1] = v134;
                    v123 += 2;
                    goto LABEL_318;
                  }

LABEL_804:
                  v299 = 150;
                }

LABEL_782:
                HIDWORD(v338) = v299;
                goto LABEL_793;
              }

              v302 = 113;
LABEL_801:
              HIDWORD(v338) = v302;
LABEL_802:
              --v342[0];
              goto LABEL_793;
            }
          }

LABEL_303:
          v142 = 0;
          v143 = 3;
          goto LABEL_304;
        }

        if (v341 == 45 && v121 >= 2)
        {
          v120 = 0;
          if (v121 == 3)
          {
            v146 = -2145452032;
          }

          else
          {
            v146 = -2145517568;
          }

          *v123++ = v146;
          v121 = 1;
          goto LABEL_318;
        }

        if (v341 != 92)
        {
          goto LABEL_303;
        }

        v137 = v15;
        v307 = v14;
        v138 = v342[0];
        v334 = v342[0];
        v312 = v18;
        v139 = _pcre2_check_escape_8(v342, v9, &v341, &v338 + 1, v18, 1, v4);
        if (HIDWORD(v338))
        {
          v14 = v307;
          v15 = v137;
          goto LABEL_297;
        }

        v140 = v139;
        v14 = v307;
        v18 = v312;
        v15 = v137;
        while (1)
        {
          v142 = 1;
          if (v140 > 24)
          {
            if (v140 == 25)
            {
              v120 = 0;
              goto LABEL_318;
            }

            if (v140 == 26)
            {
              v120 = 1;
              goto LABEL_318;
            }
          }

          else
          {
            if (!v140)
            {
              goto LABEL_362;
            }

            if (v140 == 5)
            {
              v341 = 8;
              v142 = 1;
LABEL_362:
              v143 = 2;
LABEL_304:
              v144 = v341;
              if (v121 != 1)
              {
                *v123++ = v341;
                v121 = v143;
                goto LABEL_318;
              }

              v145 = *(v123 - 2);
              if (v341 == v145)
              {
                v121 = 0;
                --v123;
                goto LABEL_318;
              }

              if (v145 > v341)
              {
                v302 = 108;
                goto LABEL_801;
              }

              if (v142 && *(v123 - 1) == -2145452032)
              {
                *(v123 - 1) = -2145517568;
                v144 = v341;
              }

              v121 = 0;
              *v123++ = v144;
LABEL_318:
              v147 = v342[0];
              if (v342[0] >= v9)
              {
                v303 = 106;
                goto LABEL_791;
              }

              ++v342[0];
              v148 = *v147;
              v341 = v148;
              if (v330 && v148 >= 0xC0)
              {
                v4 = v328;
                if ((v148 & 0x20) != 0)
                {
                  v149 = v147[1] & 0x3F;
                  if ((v148 & 0x10) != 0)
                  {
                    if ((v148 & 8) != 0)
                    {
                      v151 = v147[2] & 0x3F;
                      v152 = v147[3] & 0x3F;
                      v153 = v147[4] & 0x3F;
                      if ((v148 & 4) != 0)
                      {
                        v148 = ((v148 & 1) << 30) | (v149 << 24) | (v151 << 18) | (v152 << 12) | (v153 << 6) | v147[5] & 0x3F;
                        v341 = v148;
                        v150 = v147 + 6;
                      }

                      else
                      {
                        v150 = v147 + 5;
                        v148 = ((v148 & 3) << 24) | (v149 << 18) | (v151 << 12) | (v152 << 6) | v153;
                        v341 = v148;
                      }
                    }

                    else
                    {
                      v148 = ((v148 & 7) << 18) | (v149 << 12) | ((v147[2] & 0x3F) << 6) | v147[3] & 0x3F;
                      v341 = v148;
                      v150 = v147 + 4;
                    }
                  }

                  else
                  {
                    v148 = ((v148 & 0xF) << 12) | (v149 << 6) | v147[2] & 0x3F;
                    v341 = v148;
                    v150 = v147 + 3;
                  }

                  v342[0] = v150;
                  if (!v120)
                  {
                    goto LABEL_334;
                  }
                }

                else
                {
                  v342[0] = v147 + 2;
                  v341 = v147[1] & 0x3F | ((v148 & 0x1F) << 6);
                  v148 = v341;
                  if (v120)
                  {
                    goto LABEL_262;
                  }

LABEL_334:
                  if (v148 == 93)
                  {
                    if (v121 == 1)
                    {
                      *(v123 - 1) = 45;
                    }

                    v17 = 0;
                    v16 = 0;
                    v12 = 0;
                    *v123 = -2146631680;
                    v7 = (v123 + 1);
                    v13 = 1;
                    goto LABEL_30;
                  }
                }
              }

              else
              {
                v4 = v328;
                if (!v120)
                {
                  goto LABEL_334;
                }
              }

              goto LABEL_262;
            }
          }

          if (v121 == 1)
          {
            break;
          }

          if (v140 > 14)
          {
            if ((v140 - 18) < 4)
            {
              v164 = v140 - 2145910784;
LABEL_376:
              *v123++ = v164;
              goto LABEL_400;
            }

            if ((v140 - 15) < 2)
            {
              LODWORD(v331) = 0;
              v332 = 0;
              if (!get_ucp(v342, &v331, &v332 + 1, &v332, &v338 + 1, v4))
              {
                goto LABEL_792;
              }

              if (v140 == 15)
              {
                v167 = 16;
              }

              else
              {
                v167 = 15;
              }

              if (v331)
              {
                v168 = v167;
              }

              else
              {
                v168 = v140;
              }

              v169 = v332 | (HIWORD(v332) << 16);
              *v123 = v168 - 2145910784;
              v123[1] = v169;
LABEL_399:
              v123 += 2;
              v14 = v307;
              v18 = v312;
              v15 = v137;
LABEL_400:
              if (v342[0] >= v321 || *v342[0] != 45 || v342[0][1] == 93)
              {
                v120 = 0;
                v121 = 0;
                goto LABEL_318;
              }

              v303 = 150;
LABEL_791:
              HIDWORD(v338) = v303;
              goto LABEL_792;
            }
          }

          else
          {
            if ((v140 - 6) < 6)
            {
              if ((v18 & 0x20000) != 0)
              {
                v165 = -2145910768;
                if (v140 != 7 && v140 != 9)
                {
                  if (v140 == 11)
                  {
                    v165 = -2145910768;
                  }

                  else
                  {
                    v165 = -2145910769;
                  }
                }

                *v123 = v165;
                if (((1 << v140) & 0xC0) != 0)
                {
                  v166 = 196621;
                }

                else if (((1 << v140) & 0x300) != 0)
                {
                  v166 = 393216;
                }

                else
                {
                  v166 = 0x80000;
                }

                v123[1] = v166;
                goto LABEL_399;
              }

              v164 = v140 - 2145910784;
              goto LABEL_376;
            }

            if (v140 == 12)
            {
              v121 = 0;
              v163 = 171;
              goto LABEL_368;
            }
          }

          v121 = 0;
          HIDWORD(v338) = 107;
          --v342[0];
LABEL_297:
          if ((*(*v4 + 64) & 2) == 0)
          {
            goto LABEL_792;
          }

          v342[0] = v138;
          if (v138 >= v9)
          {
            v140 = 0;
            v341 = 92;
            v18 = v312;
            goto LABEL_338;
          }

          v140 = 0;
          v342[0] = v138 + 1;
          v141 = *v138;
          v341 = v141;
          v18 = v312;
          if (v330 && v141 >= 0xC0)
          {
            v4 = v328;
            if ((v141 & 0x20) != 0)
            {
              v158 = v138[1] & 0x3F;
              if ((v141 & 0x10) == 0)
              {
                v140 = 0;
                v341 = ((v141 & 0xF) << 12) | (v158 << 6) | v138[2] & 0x3F;
                v159 = v138 + 3;
                goto LABEL_357;
              }

              if ((v141 & 8) == 0)
              {
                v140 = 0;
                v341 = ((v141 & 7) << 18) | (v158 << 12) | ((v138[2] & 0x3F) << 6) | v138[3] & 0x3F;
                v159 = v138 + 4;
                goto LABEL_357;
              }

              v160 = v138[2] & 0x3F;
              v161 = v138[3] & 0x3F;
              v162 = v138[4] & 0x3F;
              v140 = 0;
              if ((v141 & 4) != 0)
              {
                v341 = ((v141 & 1) << 30) | (v158 << 24) | (v160 << 18) | (v161 << 12) | (v162 << 6) | v138[5] & 0x3F;
                v159 = v138 + 6;
LABEL_357:
                v342[0] = v159;
              }

              else
              {
                v341 = ((v141 & 3) << 24) | (v158 << 18) | (v160 << 12) | (v161 << 6) | v162;
                v342[0] = v138 + 5;
              }
            }

            else
            {
              v140 = 0;
              v342[0] = v138 + 2;
              v341 = v138[1] & 0x3F | ((v141 & 0x1F) << 6);
            }
          }

          else
          {
LABEL_338:
            v4 = v328;
          }
        }

        v163 = 150;
LABEL_368:
        HIDWORD(v338) = v163;
        goto LABEL_297;
      }

      goto LABEL_142;
    }

    if (v341 > 62)
    {
      if (v341 <= 93)
      {
        if (v341 == 63)
        {
          v12 = 2151088128;
          goto LABEL_245;
        }

        goto LABEL_133;
      }

LABEL_142:
      if (v341 == 94)
      {
        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        v70 = -2146893824;
        goto LABEL_240;
      }

      if (v341 != 123)
      {
        if (v341 == 124)
        {
          if (v323 && *v323 == v14 && (v323[3] & 1) != 0)
          {
            v69 = v4[53];
            if (v69 > v323[2])
            {
              v323[2] = v69;
            }

            v4[53] = v323[1];
          }

          v17 = 0;
          v16 = 0;
          v13 = 0;
          v12 = 0;
          v70 = -2147418112;
          goto LABEL_240;
        }

        goto LABEL_233;
      }

      v115 = v15;
      v116 = v18;
      v117 = v14;
      if (read_repeat_counts(v342, v9, &v336 + 1, &v336, &v338 + 1))
      {
        v12 = 2151284736;
        v14 = v117;
        v18 = v116;
        v15 = v115;
        goto LABEL_245;
      }

      v16 = HIDWORD(v338);
      if (HIDWORD(v338))
      {
        goto LABEL_792;
      }

      v14 = v117;
      v15 = v115;
      v17 = 0;
      v12 = 0;
      *v7++ = 123;
LABEL_252:
      v13 = 1;
      v18 = v116;
      goto LABEL_253;
    }

    if (v341 > 41)
    {
      if (v341 != 42)
      {
        if (v341 != 43)
        {
LABEL_155:
          if (v341 != 46)
          {
            goto LABEL_233;
          }

          v17 = 0;
          v16 = 0;
          v12 = 0;
          v71 = -2145976320;
LABEL_157:
          *v7++ = v71;
          goto LABEL_29;
        }

        v12 = 2150891520;
LABEL_245:
        if (v13)
        {
          *v7 = v12;
          v118 = v7 + 1;
          if (v341 == 123)
          {
            v17 = 0;
            v16 = 0;
            v13 = 0;
            v119 = v336;
            v7[1] = HIDWORD(v336);
            v7[2] = v119;
            v7 += 3;
            goto LABEL_30;
          }

          v17 = 0;
          v16 = 0;
          v13 = 0;
          goto LABEL_249;
        }

        v302 = 109;
        goto LABEL_801;
      }

LABEL_178:
      v12 = 2150694912;
      goto LABEL_245;
    }

LABEL_105:
    if (v341 == 36)
    {
      v17 = 0;
      v16 = 0;
      v13 = 0;
      v12 = 0;
      v70 = -2146041856;
      goto LABEL_240;
    }

    if (v341 != 40)
    {
      if (v341 == 41)
      {
        v52 = v323;
        if (v323 && *v323 == v14)
        {
          v53 = *(v323 + 2);
          v54 = v323[3];
          if (v54)
          {
            v55 = v323[2];
            v52 = v323;
            if (v4[53] < v55)
            {
              v4[53] = v55;
            }
          }

          v18 = v53 | v18 & 0xFEFBDB17;
          v13 = (v54 & 2) == 0;
          if (v52 == *(v4 + 5))
          {
            v52 = 0;
          }

          else
          {
            v52 -= 6;
          }
        }

        else
        {
          v13 = 1;
        }

        if (!v14)
        {
          v302 = 122;
          goto LABEL_801;
        }

        v323 = v52;
        v17 = 0;
        v16 = 0;
        v12 = 0;
        v14 = (v14 - 1);
        v70 = -2145845248;
        goto LABEL_240;
      }

LABEL_233:
      v17 = 0;
      v16 = 0;
      v12 = 0;
      *v7++ = v341;
      goto LABEL_29;
    }

    v84 = v342[0];
    if (v342[0] >= v9)
    {
      goto LABEL_780;
    }

    v85 = *v342[0];
    if (v85 == 42)
    {
      if (v9 - v342[0] < 2 || v342[0][1] == 41)
      {
        goto LABEL_407;
      }

      v313 = v18;
      v305 = v15;
      v308 = v14;
      if (!read_name(v342, v9, 0, &v333, &v337, &v340, &v338 + 1, v4))
      {
        goto LABEL_792;
      }

      if (v342[0] >= v9 || (v177 = *v342[0], v177 != 41) && v177 != 58)
      {
LABEL_798:
        v303 = 160;
        goto LABEL_791;
      }

      v178 = 0;
      v179 = v340;
      v180 = v337;
      v181 = &dword_26ED1B058;
      v182 = &verbnames;
      v4 = v328;
      while (1)
      {
        v183 = *(v181 - 1);
        if (v179 == v183)
        {
          v184 = _pcre2_strncmp_c8_8(v180, v182, v179);
          v15 = v305;
          v14 = v308;
          if (!v184)
          {
            break;
          }
        }

        v182 += (v183 + 1);
        ++v178;
        v181 += 3;
        if (v178 == 9)
        {
          goto LABEL_798;
        }
      }

      LODWORD(v338) = v178;
      v188 = v342[0];
      v189 = v342[0] + 1;
      if (*v342[0] != 58 || v189 >= v9)
      {
        v18 = v313;
      }

      else
      {
        v18 = v313;
        if (*v189 == 41)
        {
          ++v342[0];
          ++v188;
        }
      }

      if (v178 <= 1 && *v188 != 58)
      {
        v303 = 166;
        goto LABEL_791;
      }

      v191 = v188 + 1;
      v342[0] = v188 + 1;
      if (*v188 == 58)
      {
        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        v192 = *v181 + ((*v181 != -2144993280) << 16);
        if (v181[1] < 0)
        {
          v192 = -2144993280;
        }

        v193 = v326;
        if (v181[1] < 0)
        {
          v193 = *v181;
        }

        v326 = v193;
        v324 = (v7 + 1);
        v325 = v191;
        *v7 = v192;
        v7 += 2;
        v15 = 1;
        goto LABEL_30;
      }

      v17 = 0;
      v16 = 0;
      v13 = 0;
      v12 = 0;
      v70 = *v181;
LABEL_240:
      *v7++ = v70;
      goto LABEL_30;
    }

    if (v85 != 63)
    {
      v14 = (v14 + 1);
      v17 = 0;
      v16 = 0;
      v13 = 0;
      v12 = 0;
      if ((v18 & 0x2000) != 0)
      {
        *v7++ = -2145779712;
        goto LABEL_30;
      }

      v170 = v4[53] + 1;
      v4[53] = v170;
      v70 = v170 | 0x80080000;
      goto LABEL_240;
    }

    v86 = ++v342[0];
    if (v84 + 1 >= v9)
    {
LABEL_780:
      v299 = 114;
      goto LABEL_782;
    }

    v87 = *v86;
    v88 = -1;
    switch(*v86)
    {
      case '!':
        v209 = -2145189888;
        goto LABEL_549;
      case '&':
        goto LABEL_565;
      case '\'':
        goto LABEL_568;
      case '(':
        v342[0] = v84 + 2;
        if (v84 + 2 >= v9)
        {
          goto LABEL_780;
        }

        v14 = (v14 + 1);
        if (v84[2] == 63)
        {
          v16 = 0;
          v13 = 0;
          v12 = 0;
          *v7++ = -2146500608;
          v342[0] = v84 + 1;
          v17 = 2;
          goto LABEL_30;
        }

        v243 = v15;
        v315 = v18;
        v310 = v14;
        if (read_number(v342, v9, v4[53], 0xFFFFu, 161, &v338, &v338 + 1))
        {
          v244 = v329;
          if (v338 > 0)
          {
            v245 = v9;
            *v7 = -2146304000;
            v246 = v342[0];
            v247 = &v342[0][-*(v328 + 56) - 2];
            v333 = v247;
            v7[1] = HIDWORD(v247);
            v7[2] = v247;
            v7[3] = v338;
            goto LABEL_730;
          }

          v303 = 115;
          goto LABEL_791;
        }

        if (HIDWORD(v338))
        {
          goto LABEL_792;
        }

        v244 = v329;
        v268 = v342[0];
        v245 = v9;
        if (v9 - v342[0] >= 10)
        {
          v269 = _pcre2_strncmp_c8_8(v342[0], "VERSION", 7);
          v268 = v342[0];
          if (!v269 && v342[0][7] != 41)
          {
            v342[0] += 7;
            v277 = v268[7];
            if (v277 == 62)
            {
              v277 = v268[8];
              v342[0] = v268 + 8;
              v278 = 1;
              v279 = 8;
            }

            else
            {
              v278 = 0;
              v279 = 7;
            }

            if (v277 != 61)
            {
              goto LABEL_830;
            }

            v282 = &v268[v279 + 1];
            v342[0] = v282;
            if (*v282 - 58 < 0xFFFFFFF6)
            {
              goto LABEL_830;
            }

            HIDWORD(v338) = 0;
            if (v282 >= v9)
            {
              goto LABEL_792;
            }

            v283 = 0;
            v284 = &v268[v279 + 2];
            while (1)
            {
              v246 = v284 - 1;
              if (v284 - 1 >= v9)
              {
                v342[0] = v284 - 1;
                goto LABEL_830;
              }

              v285 = *v246;
              if ((v285 - 48) > 9)
              {
                break;
              }

              v283 = v285 + 10 * v283 - 48;
              ++v284;
              if (v283 >= 0x3E9)
              {
                HIDWORD(v338) = 179;
                v342[0] = v284 - 1;
                goto LABEL_792;
              }
            }

            v342[0] = v284 - 1;
            if (*(v284 - 1) != 46)
            {
              v287 = 0;
              goto LABEL_752;
            }

            if ((v342[0] = v284, v284 < v9) && *v284 - 48 <= 9 && ((v246 = v284 + 1, v342[0] = v284 + 1, v286 = 10 * *v284, v284[1] - 48 > 9) ? (v287 = v286 - 480) : (v246 = v284 + 2, v342[0] = v284 + 2, v287 = v286 + v284[1] - 528), v246 < v9 && *v246 == 41))
            {
LABEL_752:
              *v7 = -2146107392;
              v7[1] = v278;
              v7[2] = v283;
              v7[3] = v287;
LABEL_730:
              v7 += 4;
LABEL_731:
              if (v246 < v245 && *v246 == 41)
              {
                v9 = v245;
                v17 = 0;
                v16 = 0;
                v13 = 0;
                v12 = 0;
                v342[0] = v246 + 1;
                v14 = v310;
                v18 = v315;
                v15 = v243;
                v329 = v244;
                goto LABEL_253;
              }

              v303 = 124;
            }

            else
            {
LABEL_830:
              v303 = 179;
            }

            goto LABEL_791;
          }
        }

        v270 = *v268;
        if (v270 == 82 && v9 - v268 >= 2)
        {
          if (v268[1] == 38)
          {
            v342[0] = v268 + 1;
            if (!read_name(v342, v9, 0x29u, &v333, &v337, &v340, &v338 + 1, v328))
            {
              goto LABEL_792;
            }

            v271 = -2146238464;
            goto LABEL_728;
          }

LABEL_706:
          v342[0] = v268 - 1;
          if (!read_name(v342, v9, 0x29u, &v333, &v337, &v340, &v338 + 1, v328))
          {
            goto LABEL_792;
          }

          v274 = v340;
          v275 = v337;
          if (v340 == 6)
          {
            if (!_pcre2_strncmp_c8_8(v337, "DEFINE", 6))
            {
              *v7 = -2146435072;
              v246 = --v342[0];
              *(v7 + 1) = __ROR8__(v333, 32);
              v7 += 3;
              goto LABEL_731;
            }
          }

          else if (v340 < 2)
          {
            LODWORD(v276) = 1;
LABEL_721:
            LODWORD(v338) = v276;
            v280 = *v275 != 82 || v276 < v274;
            if (v280)
            {
              v281 = -458752;
            }

            else
            {
              v281 = -262144;
            }

            v271 = v281 - 2145910784;
LABEL_728:
            *v7 = v271;
            v246 = --v342[0];
LABEL_729:
            v7[1] = v340;
            *(v7 + 1) = __ROR8__(v333, 32);
            goto LABEL_730;
          }

          v276 = 1;
          while (v275[v276] - 48 <= 9)
          {
            if (v274 == ++v276)
            {
              LODWORD(v276) = v274;
              goto LABEL_721;
            }
          }

          goto LABEL_721;
        }

        if (v270 == 60)
        {
          v273 = 62;
        }

        else
        {
          if (v270 != 39)
          {
            goto LABEL_706;
          }

          v273 = 39;
        }

        if (!read_name(v342, v9, v273, &v333, &v337, &v340, &v338 + 1, v328))
        {
          goto LABEL_792;
        }

        *v7 = -2146369536;
        v246 = v342[0];
        goto LABEL_729;
      case '+':
        if (v9 - v86 >= 2 && v84[2] - 48 < 0xA)
        {
          goto LABEL_544;
        }

        v303 = 129;
        goto LABEL_791;
      case '-':
        if (v9 - v86 < 2 || v84[2] - 48 >= 0xA)
        {
          goto LABEL_545;
        }

LABEL_544:
        v88 = v4[53];
LABEL_184:
        v89 = v18;
        v90 = v15;
        v91 = v14;
        if (!read_number(v342, v9, v88, 0xFFFFu, 161, &v338, &v338 + 1))
        {
          goto LABEL_792;
        }

        v92 = v338;
        if ((v338 & 0x80000000) == 0)
        {
          v93 = v342[0];
          v18 = v89;
          v4 = v328;
          if (v342[0] >= v9)
          {
            goto LABEL_780;
          }

          v15 = v90;
          v14 = v91;
          if (*v342[0] != 41)
          {
            goto LABEL_780;
          }

          goto LABEL_188;
        }

        HIDWORD(v338) = 115;
        v4 = v328;
        goto LABEL_802;
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
        goto LABEL_184;
      case '<':
        if (v9 - v86 < 2)
        {
          goto LABEL_567;
        }

        v213 = v84[2];
        if (v213 != 61 && v213 != 33)
        {
          goto LABEL_567;
        }

        if (v213 == 61)
        {
          v214 = -2145124352;
        }

        else
        {
          v214 = -2145058816;
        }

        *v7 = v214;
        *a3 = 1;
        v215 = &v86[-*(v4 + 7) - 2];
        v333 = v215;
        v7[1] = HIDWORD(v215);
        v7[2] = v215;
        v7 += 3;
        v211 = v84 + 3;
LABEL_550:
        v342[0] = v211;
        v14 = (v14 + 1);
        if (v17 < 1)
        {
          goto LABEL_407;
        }

        if (v323)
        {
          v212 = v323 + 6;
          if ((v323 + 6) >= v317)
          {
            goto LABEL_815;
          }
        }

        else
        {
          v212 = *(v4 + 5);
        }

        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        *v212 = v14;
        v212[3] = 2;
        v323 = v212;
        *(v212 + 2) = v18 & 0x10424E8;
        goto LABEL_30;
      case '=':
        v209 = -2145255424;
LABEL_549:
        *v7++ = v209;
        v211 = v84 + 2;
        goto LABEL_550;
      case '>':
        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        *v7++ = -2147352576;
        v14 = (v14 + 1);
        v21 = v84 + 2;
        goto LABEL_20;
      case 'C':
        v86 = v84 + 2;
        v342[0] = v84 + 2;
        if (v84 + 2 >= v9)
        {
          goto LABEL_780;
        }

        if (v339 && (v18 & 4) != 0 && v339 == v7 - 4)
        {
          if (*(v7 - 1) == 255)
          {
            v208 = v339;
          }

          else
          {
            v208 = v7;
          }
        }

        else
        {
          v208 = v7;
        }

        v339 = v208;
        v237 = *v86;
        if (v237 == 41 || (v237 - 48) < 0xA)
        {
          v241 = 0;
          *v208 = -2147090432;
          while (v86 < v9 && *v86 - 48 <= 9)
          {
            v342[0] = v86 + 1;
            v242 = *v86 + 10 * v241;
            v241 = v242 - 48;
            ++v86;
            if (v242 > 303)
            {
              v303 = 138;
              goto LABEL_791;
            }
          }

          v7 = v208 + 4;
          v208[3] = v241;
LABEL_699:
          if (v86 < v9 && *v86 == 41)
          {
            v16 = 0;
            v13 = 0;
            v12 = 0;
            v342[0] = v86 + 1;
            v4 = v328;
            v208[1] = v86 + 1 - *(v328 + 56);
            v208[2] = 0;
            v329 = 1;
            v17 = (v17 - 1);
            goto LABEL_30;
          }

          v303 = 139;
        }

        else
        {
          v238 = 96;
          v239 = 0;
          while (v238 != v237)
          {
            v240 = &_pcre2_callout_start_delims_8[v239++];
            v238 = v240[1];
            if (!v238)
            {
              goto LABEL_812;
            }
          }

          LODWORD(v338) = v239;
          v263 = _pcre2_callout_end_delims_8[v239];
          if (!v263)
          {
LABEL_812:
            v303 = 182;
            goto LABEL_791;
          }

          *v208 = -2147024896;
          v264 = v84 + 3;
          v342[0] = v84 + 3;
          v265 = v84 + 2;
          while (1)
          {
            if (v264 >= v9)
            {
              v304 = 181;
              goto LABEL_821;
            }

            if (v263 == *v264)
            {
              v264 = v265 + 2;
              v342[0] = v265 + 2;
              if (v265 + 2 >= v9 || v263 != *v264)
              {
                break;
              }
            }

            v265 = v264++;
            v342[0] = v264;
          }

          if (!((v264 - v86) >> 32))
          {
            v208[3] = v264 - v86;
            v272 = &v86[-*(v328 + 56)];
            v333 = v272;
            v7 = v208 + 6;
            v208[4] = HIDWORD(v272);
            v208[5] = v272;
            v86 = v265 + 2;
            goto LABEL_699;
          }

          v303 = 172;
        }

        goto LABEL_791;
      case 'P':
        v342[0] = v84 + 2;
        if (v84 + 2 >= v9)
        {
          goto LABEL_780;
        }

        v216 = v84[2];
        if (v216 != 60)
        {
          if (v216 != 61)
          {
            if (v216 == 62)
            {
LABEL_565:
              v217 = v18;
              v218 = v14;
              v219 = v15;
              if (!read_name(v342, v9, 0x29u, &v333, &v337, &v340, &v338 + 1, v4))
              {
                goto LABEL_792;
              }

              v15 = v219;
              v14 = v218;
              v17 = 0;
              v16 = 0;
              v12 = 0;
              *v7 = -2145320960;
              v7[1] = v340;
              *(v7 + 1) = __ROR8__(v333, 32);
              v7 += 4;
              v13 = 1;
              v18 = v217;
LABEL_253:
              v4 = v328;
              goto LABEL_30;
            }

            v303 = 141;
            goto LABEL_791;
          }

          v116 = v18;
          v261 = v14;
          v262 = v15;
          if (!read_name(v342, v9, 0x29u, &v333, &v337, &v340, &v338 + 1, v4))
          {
            goto LABEL_792;
          }

          v15 = v262;
          v14 = v261;
          v17 = 0;
          v16 = 0;
          v12 = 0;
          *v7 = -2147221504;
          v7[1] = v340;
          *(v7 + 1) = __ROR8__(v333, 32);
          v7 += 4;
          goto LABEL_252;
        }

LABEL_567:
        v87 = 62;
LABEL_568:
        v314 = v18;
        v220 = v14;
        v221 = v15;
        if (!read_name(v342, v9, v87, &v333, &v337, &v340, &v338 + 1, v4))
        {
          goto LABEL_792;
        }

        v4 = v328;
        v222 = *(v328 + 212) + 1;
        *(v328 + 212) = v222;
        *v7++ = v222 | 0x80080000;
        v223 = *(v328 + 176);
        if (v223 >> 4 >= 0x271)
        {
          v303 = 149;
          goto LABEL_791;
        }

        v15 = v221;
        v224 = v220;
        v225 = v340;
        v18 = v314;
        if (v340 + 3 > *(v328 + 178))
        {
          *(v328 + 178) = v340 + 3;
        }

        if (!v223)
        {
          v231 = 0;
          v227 = 0;
          v226 = 0;
          goto LABEL_588;
        }

        v226 = 0;
        v227 = 0;
        v309 = v337;
        v228 = *(v328 + 192) + 8;
        while (2)
        {
          if (v225 != *(v228 + 4))
          {
            v230 = *(v328 + 212);
LABEL_580:
            if (*v228 == v230)
            {
              v303 = 165;
              goto LABEL_791;
            }

LABEL_581:
            ++v227;
            v231 = *(v328 + 176);
            v228 += 16;
            if (v227 >= v231)
            {
              goto LABEL_588;
            }

            continue;
          }

          break;
        }

        v229 = _pcre2_strncmp_8(v309, *(v228 - 8), v225);
        v15 = v221;
        v18 = v314;
        v224 = v220;
        v230 = *(v328 + 212);
        if (v229)
        {
          goto LABEL_580;
        }

        if (*v228 != v230)
        {
          if ((v314 & 0x40) == 0)
          {
            v303 = 143;
            goto LABEL_791;
          }

          v226 = 1;
          *(v228 + 6) = 1;
          *(v328 + 296) = 1;
          goto LABEL_581;
        }

        v231 = *(v328 + 176);
LABEL_588:
        v14 = (v224 + 1);
        LODWORD(v338) = v227;
        if (v227 < v231)
        {
          v17 = 0;
          v16 = 0;
          v13 = 0;
          v12 = 0;
          goto LABEL_30;
        }

        v232 = *(v328 + 200);
        if (v232 > v231)
        {
          v233 = *(v328 + 192);
          goto LABEL_663;
        }

        v258 = v14;
        v259 = (**v328)(32 * v232, *(*v328 + 16));
        if (!v259)
        {
          v303 = 121;
          goto LABEL_791;
        }

        v233 = v259;
        cstdlib_memcpy(v259, *(v328 + 192), 16 * *(v328 + 200));
        if (*(v328 + 200) >= 0x15u)
        {
          (*(*v328 + 8))(*(v328 + 192), *(*v328 + 16));
        }

        *(v328 + 192) = v233;
        *(v328 + 200) = 2 * v232;
        v231 = *(v328 + 176);
        v14 = v258;
        v18 = v314;
        v15 = v221;
LABEL_663:
        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        v260 = v233 + 16 * v231;
        *v260 = v337;
        *(v260 + 12) = v225;
        *(v260 + 8) = *(v328 + 212);
        *(v260 + 14) = v226;
        *(v328 + 176) = v231 + 1;
LABEL_30:
        v5 = v342[0];
        if (v342[0] < v9)
        {
          continue;
        }

        v8 = v327;
        if (v15)
        {
          v299 = 160;
          goto LABEL_782;
        }

LABEL_773:
        v295 = v14;
        v296 = manage_callouts(v5, &v339, v8, v7, v4);
        v297 = *(*v4 + 64);
        if ((v297 & 8) != 0)
        {
          v298 = -2146041856;
LABEL_777:
          *v296 = -2145845248;
          v296[1] = v298;
          v296 += 2;
        }

        else if ((v297 & 4) != 0)
        {
          v298 = -2145910779;
          goto LABEL_777;
        }

        if (v296 >= v6)
        {
LABEL_781:
          v299 = 163;
          goto LABEL_782;
        }

        *v296 = 0x80000000;
        if (v295)
        {
          goto LABEL_780;
        }

        return 0;
      case 'R':
        LODWORD(v338) = 0;
        v93 = v84 + 2;
        v342[0] = v84 + 2;
        if (v84 + 2 < v9 && *v93 == 41)
        {
          v92 = 0;
          goto LABEL_188;
        }

        v303 = 158;
        goto LABEL_791;
      default:
LABEL_545:
        if (v323)
        {
          v210 = v323 + 6;
          if ((v323 + 6) >= v317)
          {
LABEL_815:
            v303 = 184;
            goto LABEL_791;
          }
        }

        else
        {
          v210 = *(v4 + 5);
        }

        *v210 = v14 + 1;
        v210[3] = 0;
        *(v210 + 2) = v18 & 0x10424E8;
        v323 = v210;
        if (*v86 == 124)
        {
          v17 = 0;
          v16 = 0;
          v13 = 0;
          v12 = 0;
          v234 = *(v4 + 106);
          v210[1] = v234;
          v210[2] = v234;
          v210[3] = 1;
          v4[52] |= 0x200000u;
          *v7++ = -2145779712;
          v342[0] = v84 + 2;
          v14 = (v14 + 1);
          goto LABEL_30;
        }

        *(v210 + 1) = 0;
        v335 = 0;
        if (*v86 == 94)
        {
          v235 = 0;
          v236 = v18 & 0xFEFFDB57;
          v86 = v84 + 2;
          v342[0] = v84 + 2;
        }

        else
        {
          v235 = 1;
          v236 = v18;
        }

        if (v86 >= v9)
        {
          goto LABEL_780;
        }

        v248 = &v335 + 1;
        break;
    }

    break;
  }

  while (1)
  {
    v249 = *v86;
    v250 = 1;
    if (v249 == 41 || v249 == 58)
    {
      goto LABEL_648;
    }

    v251 = v86 + 1;
    v342[0] = v86 + 1;
    v252 = *v86;
    if (v252 <= 0x6C)
    {
      break;
    }

    if (*v86 <= 0x72u)
    {
      if (v252 == 109)
      {
        v253 = *v248 | 0x400;
      }

      else
      {
        if (v252 != 110)
        {
          goto LABEL_819;
        }

        v253 = *v248 | 0x2000;
      }

      goto LABEL_644;
    }

    if (v252 == 115)
    {
      v253 = *v248 | 0x20;
      goto LABEL_644;
    }

    if (v252 != 120)
    {
LABEL_819:
      v304 = 111;
      goto LABEL_821;
    }

    v254 = *v248;
    *v248 |= 0x80u;
    if (v251 >= v9 || *v251 != 120)
    {
      goto LABEL_645;
    }

    *v248 = v254 | 0x1000080;
    v86 += 2;
    v342[0] = v86;
LABEL_646:
    if (v86 >= v9)
    {
      v250 = 0;
LABEL_648:
      v255 = v335;
      if ((HIDWORD(v335) & 0x1000080) == 0x80 || (v335 & 0x80) != 0)
      {
        v255 = v335 | 0x1000000;
        LODWORD(v335) = v335 | 0x1000000;
      }

      if ((v250 & 1) == 0)
      {
        goto LABEL_780;
      }

      v257 = (HIDWORD(v335) | v236) & ~v255;
      v342[0] = v86 + 1;
      if (*v86 == 41)
      {
        if (v323 > *(v4 + 5) && *(v323 - 6) == v14)
        {
          v323 -= 6;
        }

        else
        {
          *v323 = v14;
        }
      }

      else
      {
        *v7++ = -2145779712;
        v14 = (v14 + 1);
      }

      if (v257 != v18)
      {
        v17 = 0;
        v16 = 0;
        v13 = 0;
        v12 = 0;
        *v7 = -2145714176;
        v7[1] = v257;
        v7 += 2;
        v18 = v257;
        goto LABEL_30;
      }

LABEL_407:
      v17 = 0;
      v16 = 0;
      v13 = 0;
LABEL_124:
      v12 = 0;
      goto LABEL_30;
    }
  }

  if (*v86 > 0x54u)
  {
    if (v252 == 85)
    {
      v253 = *v248 | 0x40000;
    }

    else
    {
      if (v252 != 105)
      {
        goto LABEL_819;
      }

      v253 = *v248 | 8;
    }

LABEL_644:
    *v248 = v253;
  }

  else if (v252 == 45)
  {
    if (!v235)
    {
      v304 = 194;
LABEL_821:
      HIDWORD(v338) = v304;
      v342[0] = v86;
LABEL_792:
      v4 = v328;
LABEL_793:
      *(v4 + 21) = &v342[0][-*(v4 + 7)];
      return HIDWORD(v338);
    }

    v235 = 0;
    v248 = &v335;
  }

  else
  {
    if (v252 != 74)
    {
      goto LABEL_819;
    }

    *v248 |= 0x40u;
    v4[52] |= 0x400u;
  }

LABEL_645:
  v86 = v251;
  goto LABEL_646;
}

uint64_t check_lookbehinds(uint64_t a1)
{
  *(a1 + 168) = -1;
  v1 = *(a1 + 224);
  v7 = 0;
  v8 = v1;
  v2 = *v1;
  if (*v1 != 0x80000000)
  {
    do
    {
      if ((v2 & 0x80000000) != 0)
      {
        switch((v2 + 2147418112) >> 16)
        {
          case 0u:
          case 1u:
          case 2u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0x15u:
          case 0x16u:
          case 0x18u:
          case 0x19u:
          case 0x1Du:
          case 0x1Eu:
          case 0x21u:
          case 0x22u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x2Au:
          case 0x2Cu:
          case 0x2Eu:
          case 0x30u:
          case 0x31u:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
            break;
          case 3u:
          case 5u:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x20u:
            v1 += 3;
            break;
          case 4u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
            ++v1;
            break;
          case 6u:
            v1 += 5;
            break;
          case 0x17u:
            v4 = v2 + 2145910769 < 2;
            goto LABEL_6;
          case 0x1Fu:
          case 0x39u:
          case 0x3Au:
          case 0x3Bu:
            v1 += 2;
            break;
          case 0x23u:
          case 0x24u:
            if (!set_lookbehind_lengths(&v8, &v7 + 1, &v7, 0, a1))
            {
              return HIDWORD(v7);
            }

            v1 = v8;
            break;
          case 0x25u:
          case 0x29u:
          case 0x2Bu:
          case 0x2Du:
          case 0x2Fu:
            v4 = v1[1] + 1;
LABEL_6:
            v1 += v4;
            break;
          default:
            return 170;
        }
      }

      v5 = v1[1];
      ++v1;
      v2 = v5;
      v8 = v1;
    }

    while (v5 != 0x80000000);
  }

  return 0;
}

uint64_t compile_regex(unsigned int a1, char **a2, unsigned int **a3, int *a4, unsigned int a5, _DWORD *a6, int *a7, _DWORD *a8, int *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v16 = a11;
  v425 = *MEMORY[0x277D85DE8];
  v375 = *a2;
  v17 = *a3;
  v18 = *(*a11 + 24);
  if (v18 && v18(*(a11 + 180), *(*a11 + 32)))
  {
    v19 = 0;
    v20 = 133;
    goto LABEL_4;
  }

  v21 = a12;
  v411 = 0;
  v412 = 0;
  v409 = a10;
  v410 = v375;
  v22 = a5 + 6;
  v23 = *v375;
  v384 = a1;
  if (v23 > -127)
  {
    v24 = 0;
    if (v23 == -123)
    {
      v25 = __rev16(*(v375 + 3));
      LODWORD(v412) = v25;
      v411 = *(a11 + 184);
      WORD2(v412) = *(a11 + 182);
      *(a11 + 184) = &v411;
      v357 = v25 != 0;
    }

    else
    {
      v357 = 0;
    }
  }

  else
  {
    v357 = 0;
    v24 = *(v17 - 2);
    v17 += 2;
  }

  v360 = 0;
  *(v375 + 1) = 0;
  v26 = &v375[a5 + 3];
  v377 = a11 + 184;
  v27 = &v418;
  if (!a12)
  {
    v27 = 0;
  }

  v379 = v27;
  v365 = v23;
  v366 = 1;
  v361 = -2;
  v362 = -2;
  v363 = a5;
  v364 = v375;
  v358 = a7;
  v359 = a8;
  while (2)
  {
    if (v23 <= -127 && v24)
    {
      *v26 = 125;
      v26[1] = BYTE1(v24);
      v26[2] = v24;
      v26 += 3;
      v22 += 3;
    }

    v393 = 0;
    v403 = 0;
    v376 = 0;
    v28 = 0;
    v385 = 0;
    v380 = 0;
    v381 = 0;
    v391 = 0;
    v418 = 0;
    v419 = v17;
    v416 = 0;
    v417 = 0;
    v29 = *(v16 + 24);
    v369 = (v384 >> 18) & 1;
    v373 = (v384 & 0x40000) == 0;
    v374 = (v384 >> 3) & 1;
    v378 = v29;
    v367 = v29 + 64;
    v368 = v29 + 160;
    v30 = -1;
    v389 = -2;
    v394 = v384;
    v31 = v26;
    v387 = v26;
    v396 = v26;
    v382 = -2;
    v392 = -2;
    v395 = -2;
LABEL_17:
    v414 = 0;
    v415 = 0;
    LODWORD(v32) = *v17;
    v33 = *v17 & 0xFFFF0000;
    if (v21)
    {
      v34 = *(v16 + 40) + *(v16 + 80);
      if (v31 > v34 - 100)
      {
        if (v31 >= v34)
        {
          v341 = 152;
        }

        else
        {
          v341 = 186;
        }

        goto LABEL_787;
      }

      if (v31 < v396)
      {
        v31 = v396;
      }

      if (v32 < 0x80310000 || v33 > 0x803C0000)
      {
        if (2147483627 - v22 < v31 - v387)
        {
          goto LABEL_783;
        }

        v22 += v31 - v387;
        v31 = v387;
        v396 = v387;
        if (v22 > 0x10000)
        {
          goto LABEL_783;
        }
      }

      else
      {
        v396 = v31;
      }
    }

    v404 = v22;
    v407 = v31;
    v397 = *v17 & 0xFFFF0000;
    v37 = v32 < 0x80310000 || v33 > 0x803C0000;
    if (v28)
    {
      v38 = 1;
    }

    else
    {
      v38 = v30;
    }

    v39 = !v37;
    v40 = v403;
    if (!v39)
    {
      v40 = v31;
    }

    v403 = v40;
    if (!v39)
    {
      v30 = v38;
    }

    v402 = v30;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = *v17;
    v46 = 0x10000;
    v47 = 135;
    v48 = 1;
    v49 = 1;
    switch(WORD1(v32) ^ 0x8000)
    {
      case 0:
      case 1:
      case 0x19:
        if (v402 < 0)
        {
          v19 = 0xFFFFFFFFLL;
        }

        else
        {
          v19 = v366;
        }

        v21 = a12;
        v22 = v404;
        v366 = v19;
        if (a12)
        {
          v24 = *v17;
          v332 = v375;
          v23 = v365;
          if ((*v17 & 0xFFFF0000) == 0x80010000)
          {
            v26 = &(*a2)[v363 + 3];
            v22 = v404 + 3;
            v16 = a11;
LABEL_782:
            v24 = v24;
            ++v17;
            v384 = v394;
            continue;
          }
        }

        else
        {
          v333 = v364;
          v332 = v375;
          v23 = v365;
          if (*v364 == 120)
          {
            v334 = v361;
            v16 = a11;
            if (v361 == v395 && v360 == v391)
            {
              v335 = v362;
            }

            else
            {
              v335 = v362;
              v336 = HIDWORD(v360);
              if (v361 >= 0 && v362 < 0)
              {
                v336 = v360;
              }

              HIDWORD(v360) = v336;
              if (v361 >= 0 && v362 < 0)
              {
                v335 = v361;
              }

              v334 = -1;
            }

            v361 = v334;
            v337 = (v334 & v392) < 0 && v395 >= 0;
            if (v337)
            {
              v338 = v395;
            }

            else
            {
              v338 = v392;
            }

            if (((v338 ^ v335) & 0xFFFFFFFD) != 0)
            {
              v339 = -1;
            }

            else
            {
              v39 = !v337;
              v340 = HIDWORD(v391);
              if (!v39)
              {
                v340 = v391;
              }

              v339 = v338 | v335;
              if (HIDWORD(v360) != v340)
              {
                v339 = -1;
              }
            }

            v362 = v339;
          }

          else
          {
            v360 = v391;
            v361 = v395;
            v362 = v392;
            v16 = a11;
          }

          if (*(v17 + 1) << 16 == -2147418112)
          {
            *v407 = 120;
            v407[1] = (v407 - v364) >> 8;
            v407[2] = v407 - v364;
            v410 = v407;
            v26 = v407 + 3;
            LOWORD(v24) = *v17;
            v364 = v407;
            goto LABEL_782;
          }

          v343 = v407 - v364;
          do
          {
            v344 = __rev16(*(v333 + 1));
            *(v333 + 1) = bswap32(v343) >> 16;
            v333 -= v344;
            v343 = v344;
          }

          while (v344);
        }

        *v407 = 121;
        v407[1] = (v407 - v332) >> 8;
        v407[2] = v407 - v332;
        v345 = v407 + 3;
        if (v357)
        {
          v346 = *v377;
          if (*(*v377 + 10))
          {
            cstdlib_memmove(v332 + 3, v332, v345 - v332);
            *v332 = -126;
            v347 = v407 + 6 - v332;
            v332[1] = HIBYTE(v347);
            v332[2] = v347;
            v407[6] = 121;
            v407[7] = HIBYTE(v347);
            v407[8] = v347;
            v345 = v407 + 9;
            v22 = v404 + 6;
            v346 = *v377;
          }

          *v377 = *v346;
        }

        *a2 = v345;
        *a3 = v17;
        *a6 = v360;
        *v358 = v361;
        *v359 = HIDWORD(v360);
        *a9 = v362;
        if (!a12)
        {
          return v19;
        }

        if (2147483627 - *a12 >= v22)
        {
          *a12 += v22;
          return v19;
        }

        v19 = 0;
        v20 = 120;
LABEL_4:
        *a4 = v20;
        return v19;
      case 2:
        v41 = 0;
        v43 = 0;
        v49 = 0;
        v47 = 130;
        goto LABEL_181;
      case 3:
        if (v45 > 9)
        {
          v212 = v17[2];
          v211 = v17 + 2;
          v116 = v212 | (*(v211 - 1) << 32);
          v419 = v211;
        }

        else
        {
          v116 = *(a11 + 88 + 8 * v45);
        }

        v16 = a11;
        v203 = v389;
        v202 = v407;
        if (v45 > *(a11 + 212))
        {
          goto LABEL_794;
        }

        v393 = v116;
        v21 = a12;
        v201 = v395;
        goto LABEL_416;
      case 4:
      case 0x21:
        v82 = v17[3];
        v81 = v17 + 3;
        v16 = a11;
        v83 = *(a11 + 192);
        v84 = *(v81 - 2);
        v393 = v82 | (*(v81 - 1) << 32);
        v419 = v81;
        v21 = a12;
        if (!*(a11 + 176))
        {
          goto LABEL_792;
        }

        v85 = 0;
        LODWORD(v45) = 0;
        v86 = 0;
        v87 = *(a11 + 56);
        do
        {
          if (v84 == *(v83 + 12) && !_pcre2_strncmp_8((v87 + v393), *v83, v84))
          {
            LODWORD(v45) = *(v83 + 8);
            if (v397 == -2145320960)
            {
              goto LABEL_156;
            }

            v85 = *(v83 + 14);
            v88 = 1 << v45;
            if (v45 >= 0x20)
            {
              v88 = 1;
            }

            v89 = *(a11 + 248);
            *(a11 + 252) |= v88;
            if (v45 > v89)
            {
              *(a11 + 248) = v45;
            }

            v90 = a11 + 184;
            while (1)
            {
              v90 = *v90;
              if (!v90)
              {
                break;
              }

              if (v45 == *(v90 + 8))
              {
                *(v90 + 10) = 1;
                break;
              }
            }
          }

          ++v86;
          v83 += 16;
        }

        while (v86 < *(a11 + 176));
        if (!v45)
        {
LABEL_792:
          *a4 = 115;
          *(a11 + 168) = v393;
          return 0;
        }

        if (v85)
        {
          v420[0] = 0;
          v413 = 0;
          v91 = v395;
          if (!a12)
          {
            dupname_details = find_dupname_details((v87 + v393), v84, &v413, v420, a4, a11);
            v91 = v395;
            if (!dupname_details)
            {
              return 0;
            }
          }

          v28 = 0;
          if (v91 == -2)
          {
            v91 = -1;
          }

          v395 = v91;
          if ((v394 & 8) != 0)
          {
            v93 = 116;
          }

          else
          {
            v93 = 115;
          }

          *v407 = v93;
          v407[1] = BYTE1(v413);
          v407[2] = v413;
          v407[3] = BYTE1(v420[0]);
          v407[4] = v420[0];
          v31 = v407 + 5;
LABEL_119:
          v22 = v404;
        }

        else
        {
          v201 = v395;
          v202 = v407;
          v203 = v389;
LABEL_416:
          if (v201 == -2)
          {
            v203 = -1;
            v201 = -1;
          }

          v395 = v201;
          if ((v394 & 8) != 0)
          {
            v213 = 114;
          }

          else
          {
            v213 = 113;
          }

          *v202 = v213;
          v202[1] = BYTE1(v45);
          v202[2] = v45;
          v214 = 1 << v45;
          if (v45 >= 0x20)
          {
            v214 = 1;
          }

          v215 = *(v16 + 248);
          *(v16 + 252) |= v214;
          v22 = v404;
          if (v45 > v215)
          {
            *(v16 + 248) = v45;
          }

          v31 = v202 + 3;
          v216 = a11 + 184;
          v389 = v203;
          while (1)
          {
            v216 = *v216;
            if (!v216)
            {
              break;
            }

            if (v45 == *(v216 + 8))
            {
              v28 = 0;
              *(v216 + 10) = 1;
              goto LABEL_219;
            }
          }

          v28 = 0;
        }

        goto LABEL_219;
      case 5:
        LODWORD(v32) = v17[1];
        v419 = v17 + 1;
        goto LABEL_221;
      case 6:
        v28 = 0;
        *v407 = 118;
        v407[1] = BYTE1(v419[1]);
        v407[2] = v419[1];
        v407[3] = BYTE1(v419[2]);
        v407[4] = v419[2];
        v407[5] = v419[3];
        v419 += 3;
        v31 = v407 + 6;
        goto LABEL_127;
      case 7:
        v127 = v17[3];
        v21 = a12;
        if (a12)
        {
          v28 = 0;
          v22 = v404 + v127 + 9;
          v419 = v17 + 5;
LABEL_178:
          v16 = a11;
          v30 = v402;
          v31 = v407;
        }

        else
        {
          *v407 = 119;
          v407[1] = BYTE1(v419[1]);
          v407[2] = v419[1];
          v407[3] = BYTE1(v419[2]);
          v407[4] = v419[2];
          v222 = v419[5];
          v223 = v222 | (v419[4] << 32);
          v419 += 5;
          v16 = a11;
          v393 = v223;
          v224 = (*(a11 + 56) + v223);
          v225 = *v224;
          v226 = v407 + 10;
          v407[9] = v225;
          if (v225 == 123)
          {
            v225 = 125;
          }

          v227 = v222 + 1;
          v407[7] = HIBYTE(v227);
          v407[8] = v227;
          v228 = v127 - 1;
          v22 = v404;
          if (v127 - 1 < 2)
          {
            v30 = v402;
          }

          else
          {
            v229 = v224 + 1;
            v30 = v402;
            do
            {
              v230 = *v229;
              if (v230 == v225 && v229[1] == v225)
              {
                *v226 = v225;
                v229 += 2;
                v228 = v127 - 2;
              }

              else
              {
                ++v229;
                *v226 = v230;
              }

              v127 = v228;
              ++v226;
              --v228;
            }

            while (v228 > 1);
          }

          v28 = 0;
          *v226 = 0;
          v31 = v226 + 1;
          v407[5] = (v31 - v407) >> 8;
          v407[6] = v31 - v407;
        }

        goto LABEL_753;
      case 8:
        v43 = 0;
        v49 = 0;
        *(v407 + 3) = bswap32(v32) >> 16;
        *(a11 + 216) = v45;
        v47 = 133;
        v41 = 2;
        goto LABEL_181;
      case 9:
        if ((v394 & 0x400) != 0)
        {
          v28 = 0;
          v96 = v395;
          v217 = v389;
          if (v395 == -2)
          {
            v217 = -1;
          }

          v389 = v217;
          if (v395 == -2)
          {
            v96 = -1;
          }

          v395 = v96;
          LOBYTE(v96) = 28;
        }

        else
        {
          v28 = 0;
          LOBYTE(v96) = 27;
        }

        goto LABEL_126;
      case 0xA:
      case 0xE:
        v94 = *v17 & 0xFFFF0000;
        v95 = v17 + 1;
        v32 = v17[1];
        if ((v32 & 0x80000000) != 0 || v17[2] != -2146631680)
        {
          v383 = v33 == -2146566144;
          v97 = (v407 + 4);
          v416 = v407 + 4;
          cstdlib_memset(&__b, 0, 0x20uLL);
          v98 = *v95;
          if (*v95 == -2146631680)
          {
            v99 = 0;
            v419 = v17 + 1;
            if (v395 == -2)
            {
              v100 = -1;
            }

            else
            {
              v100 = v395;
            }

            v21 = a12;
            v22 = v404;
            v16 = a11;
            v30 = v402;
            goto LABEL_507;
          }

          v148 = 0;
          v390 = 0;
          v99 = 0;
          v386 = 0;
          v149 = 0;
          v21 = a12;
          while (2)
          {
            if (v98 == -2147155968)
            {
              v158 = v17[2];
              v17 += 2;
              v98 = v158;
LABEL_256:
              if (v98 == 13 || v98 == 10)
              {
                *(a11 + 208) |= 0x800u;
              }

              v160 = (v17[1] | 0x10000);
              if (v160 == -2145452032)
              {
                v160 = v17 + 2;
                v161 = v17[2];
                if (v161 == -2147155968)
                {
                  v162 = v17[3];
                  v17 += 3;
                  v161 = v162;
                }

                else
                {
                  v17 += 2;
                }

                if (v161 == 13 || v161 == 10)
                {
                  v160 = (*(a11 + 208) | 0x800u);
                  *(a11 + 208) = v160;
                }

                v163 = a11;
                *(a11 + 264) = v98;
                *(a11 + 268) = v161;
                v164 = v394;
                v165 = v98;
              }

              else
              {
                v163 = a11;
                *(a11 + 264) = v98;
                *(a11 + 268) = v98;
                v164 = v394;
                v165 = v98;
                v161 = v98;
              }

              v148 += add_to_class_internal(&__b, &v416, v164, v163, v165, v161, v160);
              goto LABEL_298;
            }

            if (v98 == -2145583104 || v98 == -2145648640)
            {
              v99 = v98 == -2145583104;
              v151 = v17[2];
              v17 += 2;
              v150 = v151;
              if (((v151 < 3) & (v394 >> 3)) != 0)
              {
                v150 = 0;
              }

              if ((v394 & 0x20000) != 0)
              {
                if ((v150 - 8) <= 2)
                {
                  if (v98 == -2145583104)
                  {
                    v152 = 4;
                  }

                  else
                  {
                    v152 = 3;
                  }

                  v153 = v416++;
                  *v153 = v152;
                  if (v150 == 9)
                  {
                    v154 = 12;
                  }

                  else
                  {
                    v154 = 13;
                  }

                  if (v150 == 8)
                  {
                    v155 = 11;
                  }

                  else
                  {
                    v155 = v154;
                  }

                  v156 = v416++;
                  *v156 = v155;
                  v157 = v416++;
                  *v157 = 0;
                  goto LABEL_252;
                }

                v166 = (v384 & 0x80000) != 0 && v98 == -2145583104;
                v390 |= v166;
              }

              v167 = 3 * v150;
              cstdlib_memcpy(v420, (v378 + posix_class_maps[3 * v150]), 0x20uLL);
              v168 = v167 + 1;
              v169 = v167 + 2;
              if ((0x2DB6DB6FB6BuLL >> v168))
              {
                v170 = v378 + posix_class_maps[v168];
                if ((0x2DB6DB6FB6BuLL >> v169))
                {
                  for (i = 0; i != 32; ++i)
                  {
                    *(v420 + i) |= *(v170 + i);
                  }
                }

                else
                {
                  for (j = 0; j != 32; ++j)
                  {
                    *(v420 + j) &= ~*(v170 + j);
                  }
                }
              }

              if ((0x12492490494uLL >> v169))
              {
                v173 = -posix_class_maps[v169];
              }

              else
              {
                v173 = posix_class_maps[v169];
              }

              if (v173 == 1)
              {
                v174 = -61;
                v175 = v420 + 1;
LABEL_290:
                *v175 &= v174;
              }

              else if (v173 == 2)
              {
                v174 = 127;
                v175 = v421;
                goto LABEL_290;
              }

              if (v98 == -2145583104)
              {
                for (k = 0; k != 8; k += 4)
                {
                  *(&__b + k * 4) = vornq_s8(*(&__b + k * 4), *&v420[k]);
                }
              }

              else
              {
                for (m = 0; m != 8; m += 4)
                {
                  *(&__b + m * 4) = vorrq_s8(*(&__b + m * 4), *&v420[m]);
                }
              }

              v148 = 1;
LABEL_298:
              if (v416 > v97)
              {
                v149 = 1;
              }

              if (a12 && v416 > v97)
              {
                v404 += &v416[-v97];
                v416 = v407 + 4;
                v149 = 1;
              }

              v95 = v17 + 1;
              v98 = v17[1];
              if (v98 == -2146631680)
              {
                __src = v407 + 4;
                v419 = v17 + 1;
                if (v395 == -2)
                {
                  v100 = -1;
                }

                else
                {
                  v100 = v395;
                }

                if (v149)
                {
                  v16 = a11;
                  v30 = v402;
                  if ((v394 & 0x20000) == 0 && !v386 && v99)
                  {
                    v22 = v404;
                    goto LABEL_506;
                  }

                  v22 = v404;
                  if (v390)
                  {
                    v245 = v416++;
                    *v245 = 2;
                    v246 = v407;
                    if ((v384 & 0x80000) == 0)
                    {
                      v247 = v416;
                      goto LABEL_614;
                    }

LABEL_609:
                    v270 = _pcre2_ord2utf_8(0x100u, v416);
                    v416 += v270;
                    v271 = _pcre2_ord2utf_8(0x10FFFFu, v416);
                    v247 = &v416[v271];
                  }

                  else
                  {
                    v247 = v416;
                    if ((v394 & 0x20000) == 0 && (v384 & 0x80000) != 0 && v99 && v397 != -2146566144)
                    {
                      ++v416;
                      *v247 = 2;
                      v246 = v407;
                      goto LABEL_609;
                    }

                    v246 = v407;
                  }

LABEL_614:
                  v416 = v247 + 1;
                  *v247 = 0;
                  *v246 = 112;
                  if (v397 == -2146566144)
                  {
                    v272 = 5;
                  }

                  else
                  {
                    v272 = 4;
                  }

                  if (!v386)
                  {
                    v272 = v397 == -2146566144;
                  }

                  v246[3] = v272;
                  if (v148 < 1)
                  {
                    v31 = v416;
                  }

                  else
                  {
                    v246[3] = v272 | 2;
                    cstdlib_memmove(v246 + 36, __src, v416 - __src);
                    if (v397 == -2146566144 && !v386)
                    {
                      __b = vmvnq_s8(__b);
                      v424 = vmvnq_s8(v424);
                    }

                    cstdlib_memcpy(__src, &__b, 0x20uLL);
                    v31 = v416 + 32;
                  }

                  *(v403 + 1) = bswap32(v31 - v403) >> 16;
LABEL_515:
                  v28 = 1;
                  v382 = v392;
                  v389 = v100;
                  v395 = v100;
LABEL_516:
                  v385 = v391;
LABEL_517:
                  v381 = HIDWORD(v391);
                  goto LABEL_753;
                }

                v22 = v404;
                v16 = a11;
                v30 = v402;
LABEL_506:
                v94 = v397;
LABEL_507:
                if (v99 == v383)
                {
                  v241 = 110;
                }

                else
                {
                  v241 = 111;
                }

                *v407 = v241;
                if (!v21)
                {
                  if (v94 == -2146566144)
                  {
                    __b = vmvnq_s8(__b);
                    v424 = vmvnq_s8(v424);
                  }

                  cstdlib_memcpy(v407 + 1, &__b, 0x20uLL);
                }

                v31 = v407 + 33;
                goto LABEL_515;
              }

              continue;
            }

            break;
          }

          if ((v98 & 0x80000000) == 0)
          {
            v17 = v95;
            goto LABEL_256;
          }

          if ((v98 & 0xFFFF0000) != 0x80180000)
          {
LABEL_793:
            v341 = 189;
            goto LABEL_787;
          }

          if (v98 <= 0xEu)
          {
            if (v98 > 8u)
            {
              switch(v98)
              {
                case 9u:
                  for (n = 0; n != 32; ++n)
                  {
                    __b.i8[n] |= *(v378 + n);
                  }

                  break;
                case 0xAu:
                  for (ii = 0; ii != 32; ++ii)
                  {
                    __b.i8[ii] |= ~*(v368 + ii);
                    v99 = 1;
                  }

                  break;
                case 0xBu:
                  for (jj = 0; jj != 32; ++jj)
                  {
                    __b.i8[jj] |= *(v368 + jj);
                  }

                  break;
              }
            }

            else
            {
              switch(v98)
              {
                case 6u:
                  for (kk = 0; kk != 32; ++kk)
                  {
                    __b.i8[kk] |= ~*(v367 + kk);
                    v99 = 1;
                  }

                  break;
                case 7u:
                  for (mm = 0; mm != 32; ++mm)
                  {
                    __b.i8[mm] |= *(v367 + mm);
                  }

                  break;
                case 8u:
                  for (nn = 0; nn != 32; ++nn)
                  {
                    __b.i8[nn] |= ~*(v378 + nn);
                    v99 = 1;
                  }

                  break;
              }
            }

            goto LABEL_348;
          }

          if (v98 <= 0x12u)
          {
            if (v98 - 15 < 2)
            {
              v180 = v17[2];
              v17 += 2;
              v179 = v180;
              v181 = HIWORD(v180);
              if (v98 == 16)
              {
                v182 = 3;
              }

              else
              {
                v182 = 4;
              }

              v183 = v416++;
              *v183 = v182;
              v184 = v416++;
              *v184 = v181;
              v185 = v416++;
              *v185 = v179;
LABEL_252:
              v386 = 1;
              goto LABEL_298;
            }

            if (v98 == 18)
            {
              v190 = &_pcre2_hspace_list_8;
              v191 = v394 & 0xFFFFFFF7;
              v187 = a11;
              goto LABEL_347;
            }

            goto LABEL_348;
          }

          if (v98 == 19)
          {
            v188 = &_pcre2_hspace_list_8;
            v189 = v394 & 0xFFFFFFF7;
            v187 = a11;
          }

          else
          {
            v187 = a11;
            if (v98 == 20)
            {
              v190 = &_pcre2_vspace_list_8;
              v191 = v394 & 0xFFFFFFF7;
LABEL_347:
              add_not_list_to_class(&__b, &v416, v191, v187, v190);
LABEL_348:
              v17 = v95;
              ++v148;
              goto LABEL_298;
            }

            if (v98 != 21)
            {
              goto LABEL_348;
            }

            v188 = &_pcre2_vspace_list_8;
            v189 = v394 & 0xFFFFFFF7;
          }

          add_list_to_class(&__b, &v416, v189, v187, v188);
          goto LABEL_348;
        }

        v419 = v17 + 2;
        if (v33 != -2146828288)
        {
          if (v395 == -2)
          {
            v233 = -1;
          }

          else
          {
            v233 = v395;
          }

          v16 = a11;
          v389 = v233;
          if ((v384 & 0x80000) == 0 || (v394 & 8) == 0 || (v234 = HIBYTE(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[v32 & 0x7F | (*(_pcre2_ucd_stage1_8 + ((v32 >> 6) & 0x3FFFFFE)) << 7)]])) == 0)
          {
            if ((v394 & 8) != 0)
            {
              v242 = 32;
            }

            else
            {
              v242 = 31;
            }

            *v407 = v242;
            v243 = v407 + 1;
            v22 = v404;
            if ((v384 & 0x80000) != 0 && v32 >= 0x80)
            {
              v244 = _pcre2_ord2utf_8(v32, v243);
            }

            else
            {
              *v243 = v32;
              v244 = 1;
            }

            v21 = a12;
            v30 = v402;
            v31 = &v243[v244];
            v28 = 1;
            v382 = v392;
            v395 = v233;
            goto LABEL_516;
          }

          *v407 = 2319;
          v407[2] = v234;
          v31 = v407 + 3;
          v28 = 1;
          v395 = v233;
          v381 = HIDWORD(v391);
          v385 = v391;
          v382 = v392;
          v21 = a12;
          goto LABEL_119;
        }

LABEL_221:
        if ((v384 & 0x80000) != 0 && (v394 & 8) != 0)
        {
          v143 = HIBYTE(_pcre2_ucd_records_8[2 * _pcre2_ucd_stage2_8[(v32 - (v40 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v32 / 128] << 7))]]);
          v22 = v404;
          v144 = v407;
          v16 = a11;
          if (v143)
          {
            *v407 = 2320;
            v407[2] = v143;
            v31 = v407 + 3;
            v145 = v395;
            v146 = v389;
            if (v395 == -2)
            {
              v146 = -1;
            }

            v389 = v146;
            if (v395 == -2)
            {
              v145 = -1;
            }

            v395 = v145;
            v28 = 1;
LABEL_448:
            v21 = a12;
LABEL_219:
            v30 = v402;
            goto LABEL_753;
          }

LABEL_230:
          v147 = _pcre2_ord2utf_8(v32, __dst);
          goto LABEL_386;
        }

        v22 = v404;
        v144 = v407;
        v16 = a11;
        if ((v384 & 0x80000) != 0)
        {
          goto LABEL_230;
        }

        __dst[0] = v32;
        v147 = 1;
LABEL_386:
        v21 = a12;
        v30 = v402;
        if ((v394 & 8) != 0)
        {
          v204 = 30;
        }

        else
        {
          v204 = 29;
        }

        *v144 = v204;
        v205 = v144 + 1;
        cstdlib_memcpy(v205, __dst, v147);
        v206 = __dst[0];
        if (__dst[0] == 13 || __dst[0] == 10)
        {
          *(v16 + 208) |= 0x800u;
        }

        v31 = &v205[v147];
        v208 = v147 == 1 || v374 == 0;
        if (v395 == -2)
        {
          if (!v208)
          {
            v389 = -1;
            v28 = 1;
            v374 = 1;
            v382 = v392;
            v392 = -1;
            v395 = -1;
            goto LABEL_517;
          }

          v389 = -1;
          v28 = 1;
          if (v147 == 1)
          {
            v395 = v374;
            v381 = HIDWORD(v391);
            v382 = v392;
          }

          else
          {
            v381 = HIDWORD(v391);
            v382 = v392;
            v392 = *(v16 + 280);
            v395 = v374;
            HIDWORD(v391) = *(v31 - 1);
          }

          LODWORD(v391) = v206;
        }

        else
        {
          if (!v208)
          {
            v28 = 1;
            v374 = 1;
            v389 = v395;
            v382 = v392;
            goto LABEL_516;
          }

          v28 = 1;
          v381 = HIDWORD(v391);
          v382 = v392;
          v389 = v395;
          v392 = *(v16 + 280) | v374;
          v385 = v391;
          HIDWORD(v391) = *(v31 - 1);
        }

LABEL_753:
        v17 = ++v419;
        goto LABEL_17;
      case 0xB:
      case 0xC:
        if (v33 == -2146697216)
        {
          v79 = 13;
        }

        else
        {
          v79 = -97;
        }

        *v407 = v79;
        v31 = v407 + 1;
        v80 = v395;
        if (v395 == -2)
        {
          v80 = -1;
        }

        v28 = 1;
        v389 = v80;
        v395 = v80;
        v385 = v391;
        goto LABEL_93;
      case 0xF:
        goto LABEL_530;
      case 0x10:
        v48 = 0;
        v42 = 0;
        v43 = 0;
        v119 = v17[2];
        v118 = v17 + 2;
        v393 = v119 | (*(v118 - 1) << 32);
        v419 = v118;
        v407[3] = -92;
        goto LABEL_529;
      case 0x11:
      case 0x13:
      case 0x14:
        v50 = *(a11 + 192);
        v53 = v17[3];
        v52 = v17 + 3;
        v51 = v53;
        v55 = *(v52 - 2);
        v54 = *(v52 - 1);
        v56 = v53 | (v54 << 32);
        v419 = v52;
        v57 = *(a11 + 56);
        v58 = *(a11 + 176);
        if (!v58)
        {
          v59 = 0;
          v61 = a12;
          goto LABEL_355;
        }

        v59 = 0;
        v60 = v50 + 8;
        v61 = a12;
        while (2)
        {
          if (v55 != *(v60 + 4))
          {
            goto LABEL_47;
          }

          if (_pcre2_strncmp_8((v57 + v56), *(v60 - 8), v55))
          {
            v58 = *(a11 + 176);
LABEL_47:
            ++v59;
            v60 += 16;
            if (v59 >= v58)
            {
              goto LABEL_355;
            }

            continue;
          }

          break;
        }

        if (!*(v60 + 6))
        {
          v393 = v56;
          if (v397 == -2146238464)
          {
            v240 = -113;
          }

          else
          {
            v240 = -115;
          }

          v407[3] = v240;
          v407[4] = BYTE1(*v60);
          v407[5] = *v60;
          if (*v60 > *(a11 + 248))
          {
            *(a11 + 248) = *v60;
          }

          goto LABEL_371;
        }

        v58 = *(a11 + 176);
LABEL_355:
        if (v59 < v58)
        {
          if (v397 == -2146238464)
          {
            v196 = -113;
          }

          else
          {
            v196 = -115;
          }

          v407[3] = v196;
          v420[0] = 0;
          v413 = 0;
          if (v61 || find_dupname_details((v57 + v56), v55, &v413, v420, a4, a11))
          {
            v393 = v56;
            ++v407[3];
            *(v407 + 2) = bswap32(v413) >> 16;
            *(v407 + 3) = bswap32(LOWORD(v420[0])) >> 16;
            v41 = 5;
            goto LABEL_372;
          }

          return 0;
        }

        if (v397 != -2146172928)
        {
          goto LABEL_795;
        }

        if (v55 < 2)
        {
          goto LABEL_369;
        }

        v197 = 0;
        v198 = (v54 << 32) + v51 + 1;
        v199 = v55 - 1;
        do
        {
          v197 = 10 * v197 + *(v57 + v198) - 48;
          if (v197 >= 0x10000)
          {
            *a4 = 161;
            v56 = v198;
LABEL_791:
            *(a11 + 168) = v56;
            return 0;
          }

          ++v198;
          --v199;
        }

        while (v199);
        if (v197 > *(a11 + 212))
        {
LABEL_795:
          *a4 = 115;
          goto LABEL_791;
        }

        if (!v197)
        {
LABEL_369:
          LOWORD(v197) = -1;
        }

        v393 = v56;
        v407[3] = -113;
        v407[4] = BYTE1(v197);
        v407[5] = v197;
LABEL_371:
        v41 = 3;
LABEL_372:
        v42 = 0;
        v43 = 0;
        v47 = 135;
        v48 = 1;
        v49 = 1;
LABEL_530:
        v16 = a11;
        ++*(a11 + 180);
        *v407 = v47;
        v418 = 0;
        ++v419;
        v417 = v407;
        v248 = *(a11 + 280);
        v249 = compile_regex(v394, &v417, &v419, a4, v41, &v415, &v414, &v415 + 4, &v414 + 4, &v409, a11, v379);
        if (!v249)
        {
          return 0;
        }

        --*(a11 + 180);
        if (v249 > 0)
        {
          v28 = v48 & v42;
        }

        else
        {
          v28 = 0;
        }

        v380 = v249;
        if (v43)
        {
          --*(a11 + 182);
          v21 = a12;
          goto LABEL_544;
        }

        v21 = a12;
        v250 = v49 ^ 1;
        if (a12)
        {
          v250 = 1;
        }

        if (v250)
        {
LABEL_544:
          v22 = v404;
          v30 = v402;
          if (!v21)
          {
            goto LABEL_552;
          }

LABEL_545:
          if (2147483627 - v22 >= v418 - 6)
          {
            v22 += v418 - 6;
            *(v407 + 1) = 7930624;
            v407[5] = 3;
            v31 = v407 + 6;
            goto LABEL_753;
          }

          goto LABEL_783;
        }

        v251 = 1;
        v252 = v407;
        v30 = v402;
        do
        {
          v252 += __rev16(*(v252 + 1));
          --v251;
        }

        while (*v252 != 121);
        v22 = v404;
        if (v407[3] != 164)
        {
          if (-v251 >= 2)
          {
            *(a11 + 168) = v393;
            v341 = 127;
            goto LABEL_787;
          }

          if (v251)
          {
            v28 = v249 > 0;
          }

          else
          {
            v414 = -1;
          }

          v47 = 135;
          if (!a12)
          {
LABEL_552:
            if (v47 < 0x82)
            {
              v376 = 0;
              v258 = v392;
              v382 = v392;
              if ((HIDWORD(v414) | v414) >= 0 && v47 == 126)
              {
                v258 = HIDWORD(v414);
              }

              v259 = HIDWORD(v391);
              v381 = HIDWORD(v391);
              if ((HIDWORD(v414) | v414) >= 0 && v47 == 126)
              {
                v259 = HIDWORD(v415);
              }

              v389 = v395;
              v392 = v258;
              v385 = v391;
              HIDWORD(v391) = v259;
            }

            else
            {
              v253 = v414;
              if (v395 != -2 || v414 == -2)
              {
                v376 = 0;
                v254 = HIDWORD(v414);
                if ((v414 & 0x80000000) == 0 && v414 < 0)
                {
                  v376 = 0;
                  HIDWORD(v415) = v415;
                  v254 = v414 | v248;
                  HIDWORD(v414) = v414 | v248;
                }

                v257 = v395;
                v253 = v395;
                v255 = v391;
                v256 = v391;
              }

              else
              {
                v254 = HIDWORD(v414);
                v376 = v414 >= 0;
                if (v414 < 0)
                {
                  v253 = -1;
                }

                v255 = v391;
                if (v414 < 0)
                {
                  v256 = v391;
                }

                else
                {
                  v256 = v415;
                }

                v257 = -1;
              }

              v260 = v254 < 0;
              v382 = v392;
              v261 = HIDWORD(v415);
              if (v254 < 0)
              {
                v254 = v392;
              }

              v381 = HIDWORD(v391);
              if (v260)
              {
                v261 = HIDWORD(v391);
              }

              v389 = v257;
              v392 = v254;
              v395 = v253;
              v385 = v255;
              v391 = __PAIR64__(v261, v256);
            }

            v31 = v417;
            goto LABEL_753;
          }

          goto LABEL_545;
        }

        if (!v251)
        {
          v407[3] = -111;
          v31 = v417;
          goto LABEL_753;
        }

        *(a11 + 168) = v393;
        v341 = 154;
LABEL_787:
        *a4 = v341;
        return 0;
      case 0x12:
        v123 = v17[3];
        v122 = v17 + 3;
        v121 = v123;
        v124 = *(v122 - 1) | (*(v122 - 2) << 32);
        v419 = v122;
        if (v123 <= *(a11 + 212))
        {
          if (v121 > *(a11 + 248))
          {
            *(a11 + 248) = v121;
          }

          v42 = 0;
          v43 = 0;
          v393 = v124 - 2;
          v407[3] = -115;
          v407[4] = BYTE1(v121);
          v407[5] = v121;
          v41 = 3;
          goto LABEL_530;
        }

        *a4 = 115;
        *(a11 + 168) = v124;
        return 0;
      case 0x15:
        v125 = v17[2];
        if (v17[1])
        {
          if (v125 >= 0xA)
          {
            v232 = v407;
            if (v125 == 10)
            {
              if (v17[3] >= 0x21)
              {
                v126 = -111;
              }

              else
              {
                v126 = -110;
              }
            }

            else
            {
              v126 = -111;
            }

LABEL_528:
            v42 = 0;
            v43 = 0;
            v232[3] = v126;
            v419 += 3;
LABEL_529:
            v41 = 1;
            goto LABEL_530;
          }

          v126 = -110;
        }

        else if (v125 == 10)
        {
          if (v17[3] == 32)
          {
            v126 = -110;
          }

          else
          {
            v126 = -111;
          }
        }

        else
        {
          v126 = -111;
        }

        v232 = v407;
        goto LABEL_528;
      case 0x16:
        v28 = 0;
        if ((v394 & 0x400) != 0)
        {
          LOBYTE(v96) = 26;
        }

        else
        {
          LOBYTE(v96) = 25;
        }

        goto LABEL_126;
      case 0x17:
        if (v395 == -2)
        {
          v128 = -1;
        }

        else
        {
          v128 = v395;
        }

        if ((v394 & 0x20) != 0)
        {
          v129 = 13;
        }

        else
        {
          v129 = 12;
        }

        *v407 = v129;
        v31 = v407 + 1;
        v28 = 1;
        v382 = v392;
        v389 = v128;
        v395 = v128;
        goto LABEL_205;
      case 0x18:
        v28 = (v45 - 6) < 0x11;
        if ((v28 & (v395 == -2)) != 0)
        {
          v130 = -1;
        }

        else
        {
          v130 = v395;
        }

        v389 = v130;
        if ((v45 - 15) > 1)
        {
          v16 = a11;
          if (v45 == 14)
          {
            *(a11 + 208) |= 0x400000u;
          }

          v22 = v404;
          if (((v32 & 0xFFFE) == 4 || v45 == 1) && !*(a11 + 276))
          {
            *(a11 + 276) = 1;
          }

          if (v45 == 14 && (v384 & 0x80000) == 0)
          {
            v219 = 13;
          }

          else
          {
            v219 = v32;
          }

          *v407 = v219;
          v31 = v407 + 1;
          v395 = v130;
          v381 = HIDWORD(v391);
          v385 = v391;
          v382 = v392;
          goto LABEL_448;
        }

        v132 = v17[1];
        v131 = v132;
        v419 = v17 + 1;
        v133 = HIWORD(v132);
        if (v45 == 16)
        {
          v134 = 16;
        }

        else
        {
          v134 = 15;
        }

        *v407 = v134;
        v407[1] = v133;
        v407[2] = v131;
        v31 = v407 + 3;
        v382 = v392;
        v395 = v130;
LABEL_205:
        v381 = HIDWORD(v391);
        v385 = v391;
LABEL_127:
        v21 = a12;
        v22 = v404;
        v16 = a11;
        goto LABEL_219;
      case 0x1A:
        v41 = 0;
        v43 = 0;
        v49 = 0;
        v47 = 131;
LABEL_181:
        v42 = 1;
        goto LABEL_530;
      case 0x1B:
        v28 = 0;
        v120 = v17[1];
        v419 = v17 + 1;
        v369 = (v120 >> 18) & 1;
        v394 = v120;
        v373 = (v120 & 0x40000) == 0;
        v374 = (v120 >> 3) & 1;
        v21 = a12;
        v22 = v404;
        goto LABEL_178;
      case 0x20:
        v115 = v17[2];
        v114 = v17 + 2;
        v116 = v115 | (*(v114 - 1) << 32);
        v419 = v114;
        v16 = a11;
        if (v45 > *(a11 + 212))
        {
LABEL_794:
          *(v16 + 168) = v116;
          v341 = 115;
          goto LABEL_787;
        }

        v393 = v116;
        v21 = a12;
LABEL_156:
        v376 = 0;
        v28 = 0;
        *v407 = 117;
        v407[1] = BYTE1(v45);
        v407[2] = v45;
        v31 = v407 + 3;
        *(v16 + 292) = 1;
        v117 = v395;
        if (v395 == -2)
        {
          v117 = -1;
        }

        v395 = v117;
LABEL_160:
        v22 = v404;
        goto LABEL_219;
      case 0x22:
        v48 = 0;
        v41 = 0;
        v49 = 0;
        ++*(a11 + 182);
        v47 = 126;
        goto LABEL_232;
      case 0x23:
        if (v17[1] != -2145845248 || v17[2] + 2143551487 > 0xFFF4FFFE)
        {
          v48 = 0;
          v41 = 0;
          v49 = 0;
          ++*(a11 + 182);
          v47 = 127;
LABEL_232:
          v42 = 1;
          v43 = 1;
          goto LABEL_530;
        }

        v28 = 0;
        *v407 = -97;
        v31 = v407 + 1;
        ++v419;
LABEL_93:
        v21 = a12;
        v22 = v404;
        v16 = a11;
        goto LABEL_219;
      case 0x24:
        v48 = 0;
        v41 = 0;
        v49 = 0;
        ++*(a11 + 182);
        v47 = 128;
        goto LABEL_232;
      case 0x25:
        v48 = 0;
        v41 = 0;
        v49 = 0;
        ++*(a11 + 182);
        v47 = 129;
        goto LABEL_232;
      case 0x26:
      case 0x2A:
        goto LABEL_207;
      case 0x27:
        v16 = a11;
        *(a11 + 284) = 1;
        v112 = *(a11 + 184);
        if (v112)
        {
          v21 = a12;
          v22 = v404;
          v113 = v407;
          do
          {
            if (*(v112 + 6) < *(a11 + 182))
            {
              break;
            }

            if (a12)
            {
              v22 += 3;
            }

            else
            {
              *v113 = -94;
              v113[1] = *(v112 + 9);
              v113[2] = *(v112 + 8);
              v113 += 3;
            }

            v112 = *v112;
          }

          while (v112);
        }

        else
        {
          v21 = a12;
          v22 = v404;
          v113 = v407;
        }

        v28 = 0;
        if (*(a11 + 182))
        {
          v220 = -95;
        }

        else
        {
          v220 = -96;
        }

        *v113 = v220;
        v31 = v113 + 1;
        v221 = v395;
        if (v395 == -2)
        {
          v221 = -1;
        }

        v395 = v221;
        goto LABEL_219;
      case 0x28:
      case 0x29:
        goto LABEL_125;
      case 0x2B:
      case 0x2D:
        *(a11 + 288) = 1;
LABEL_125:
        v28 = 0;
        v96 = verbops[(v32 + 2144993280) >> 16];
LABEL_126:
        *v407 = v96;
        v31 = v407 + 1;
        goto LABEL_127;
      case 0x2C:
      case 0x2E:
        *(a11 + 288) = 1;
        goto LABEL_207;
      case 0x2F:
        v28 = 0;
        v16 = a11;
        *(a11 + 208) |= 0x1000u;
        *v407 = -101;
        v31 = v407 + 1;
        v21 = a12;
        goto LABEL_160;
      case 0x30:
        *(a11 + 208) |= 0x1000u;
LABEL_207:
        v135 = v407 + 1;
        *v407 = verbops[(v32 + 2144993280) >> 16];
        v136 = v407 + 2;
        v138 = v419[1];
        v137 = v138;
        ++v419;
        v417 = (v407 + 1);
        if (v138 < 1)
        {
          v139 = 0;
          v21 = a12;
          v22 = v404;
        }

        else
        {
          v139 = 0;
          v21 = a12;
          v22 = v404;
          do
          {
            v140 = v419[1];
            ++v419;
            if ((v384 & 0x80000) != 0)
            {
              v141 = _pcre2_ord2utf_8(v140, __dst);
            }

            else
            {
              __dst[0] = v140;
              v141 = 1;
            }

            v142 = v141;
            if (a12)
            {
              v22 += v141;
            }

            else
            {
              cstdlib_memcpy(v136, __dst, v141);
              v136 += v142;
              v139 += v142;
            }

            --v137;
          }

          while (v137);
          v135 = v417;
        }

        v16 = a11;
        v28 = 0;
        *v135 = v139;
        *v136 = 0;
        v31 = v136 + 1;
        goto LABEL_219;
      case 0x31:
      case 0x32:
      case 0x33:
        goto LABEL_52;
      case 0x34:
      case 0x35:
      case 0x36:
        v44 = 1;
        goto LABEL_52;
      case 0x37:
      case 0x38:
      case 0x39:
        v44 = 0;
        v46 = 1;
        goto LABEL_52;
      case 0x3A:
      case 0x3B:
      case 0x3C:
        v63 = v17[2];
        v62 = v17 + 2;
        v46 = v63;
        v44 = *(v62 - 1);
        v419 = v62;
LABEL_52:
        if (v28)
        {
          v64 = v44 == 0;
        }

        else
        {
          v64 = 1;
        }

        v28 = !v64;
        v65 = v46 != v44;
        if (v46 == 1 && v44 == 1)
        {
          v21 = a12;
          v22 = v404;
          v16 = a11;
LABEL_61:
          v30 = v402;
LABEL_62:
          v31 = v407;
LABEL_752:
          *(v16 + 280) |= 2 * v65;
          goto LABEL_753;
        }

        v66 = v392;
        if (!v44)
        {
          v66 = v382;
        }

        v392 = v66;
        v67 = v395;
        if (!v44)
        {
          v67 = v389;
        }

        v395 = v67;
        v68 = HIDWORD(v391);
        if (!v44)
        {
          v68 = v381;
        }

        HIDWORD(v391) = v68;
        v69 = v391;
        if (!v44)
        {
          v69 = v385;
        }

        v70 = (v32 + 2144206848) >> 16;
        v71 = v403;
        LODWORD(v391) = v69;
        if (v70 > 0xA)
        {
          goto LABEL_352;
        }

        v72 = 1;
        if (((1 << v70) & 0x249) != 0)
        {
          v73 = 0;
          v74 = 0;
        }

        else if (((1 << v70) & 0x492) != 0)
        {
          v72 = 0;
          v73 = 1;
          v74 = v373;
        }

        else
        {
LABEL_352:
          v72 = 0;
          v73 = 1;
          v74 = v369;
        }

        v417 = v403;
        v75 = *v403;
        v76 = v75 - 117;
        v21 = a12;
        v22 = v404;
        if (v76 > 0x2A)
        {
          goto LABEL_77;
        }

        if (((1 << (v75 - 117)) & 0x57E00) != 0)
        {
          v78 = v407 - v403;
          if (v75 == 135)
          {
            if (v403[3] != 145 || v403[__rev16(*(v403 + 1))] == 120)
            {
              goto LABEL_636;
            }

LABEL_351:
            v16 = a11;
            goto LABEL_61;
          }

          if (v75 <= 0x81)
          {
            if (!v44)
            {
              v46 = v46 != 0;
              goto LABEL_638;
            }

            goto LABEL_351;
          }

LABEL_636:
          v277 = v44 - 1;
          if (v44 == 1)
          {
            v405 = v78;
LABEL_655:
            v281 = 0;
            if (v46 == 0x10000)
            {
              v77 = v407;
LABEL_664:
              v291 = v77 - 3;
              v292 = &v77[-__rev16(*(v77 - 1)) - 3];
              v293 = *v292;
              v294 = v72 ^ 1;
              if (v293 != 130)
              {
                v294 = 1;
              }

              if ((v294 & 1) == 0)
              {
                v293 = 131;
                *v292 = -125;
                goto LABEL_672;
              }

              if (v293 != 130)
              {
LABEL_672:
                if (!a12)
                {
                  if (v380 < 0)
                  {
                    LOBYTE(v293) = v293 + 5;
                    goto LABEL_701;
                  }

                  if (v293 == 135)
                  {
                    if (v292[__rev16(*(v292 + 1))] == 120)
                    {
                      LOBYTE(v293) = -121;
                      goto LABEL_702;
                    }

                    LOBYTE(v293) = -116;
LABEL_701:
                    *v292 = v293;
                  }
                }

LABEL_702:
                if (v72)
                {
                  if (v293 == 140 || v293 == 135)
                  {
                    v314 = v77 - v292;
                    v315 = v28;
                    v316 = v65;
                    cstdlib_memmove(v292 + 3, v292, v77 - v292);
                    v65 = v316;
                    v28 = v315;
                    if (*v292 == 135)
                    {
                      v317 = -124;
                    }

                    else
                    {
                      v317 = -119;
                    }

                    *v292 = v317;
                    v77[3] = 124;
                    v77[4] = (v314 + 3) >> 8;
                    v77[5] = v314 + 3;
                    v77 += 6;
                    v292[1] = (v314 + 3) >> 8;
                    v292[2] = v314 + 3;
                  }

                  else
                  {
                    *v292 = v293 + 1;
                    *v291 = 124;
                  }

                  v30 = v402;
                  if (v281)
                  {
                    *v281 = -107;
                  }

                  v297 = v44 >= 2;
                  v16 = a11;
                  if (!v297)
                  {
                    goto LABEL_586;
                  }

LABEL_730:
                  v322 = v417;
                  v323 = *v417;
                  v403 = v71;
                  if (v323 > 0x5C)
                  {
                    if (v323 - 110 < 2)
                    {
                      v322 = v417 + 33;
LABEL_745:
                      v417 = v322;
                      goto LABEL_746;
                    }

                    if (v323 != 112)
                    {
                      if (v323 != 93)
                      {
                        goto LABEL_746;
                      }

                      v322 = &v417[2 * (v417[3] - 15 < 2) + 4];
                      goto LABEL_745;
                    }

                    v326 = __rev16(*(v417 + 1));
                  }

                  else
                  {
                    v324 = v323 - 29 > 0x33 || ((1 << (v323 - 29)) & 0x800400200100FLL) == 0;
                    if (v324 || (v322 = &v417[_pcre2_OP_lengths_8[*v417]], v417 = v322, (v384 & 0x80000) == 0) || (v325 = *(v322 - 1), v325 < 0xC0))
                    {
LABEL_746:
                      v327 = v77 - v322;
                      if (v77 - v322 >= 1)
                      {
                        v328 = *v322;
                        if (v328 > 0x75 || (v329 = opcode_possessify[v328]) == 0)
                        {
                          v330 = v28;
                          v331 = v65;
                          cstdlib_memmove(v322 + 3, v322, v327 & 0x7FFFFFFF);
                          v65 = v331;
                          v28 = v330;
                          *v322 = -126;
                          v77[3] = 121;
                          v77[4] = (v327 + 3) >> 8;
                          v77[5] = v327 + 3;
                          v31 = v77 + 6;
                          *(v417 + 1) = bswap32(v327 + 3) >> 16;
                          goto LABEL_752;
                        }

                        *v322 = v329;
                      }

                      goto LABEL_750;
                    }

                    v326 = _pcre2_utf8_table4[v325 & 0x3F];
                  }

                  v322 += v326;
                  goto LABEL_745;
                }

                v403 = v71;
                *v291 = v74 + 122;
                v31 = v77;
                v16 = a11;
LABEL_710:
                v30 = v402;
                goto LABEL_752;
              }

              *v291 = v74 + 122;
              goto LABEL_670;
            }

            v289 = v46 - v44;
            v290 = v71;
            v71 = 0;
LABEL_662:
            v77 = v407;
            if (v289 == 0x10000)
            {
              v281 = v71;
              v71 = v290;
              goto LABEL_664;
            }

            if (a12 && v289)
            {
              v295 = (v418 + 7) * v289;
              v296 = v295 - 6;
              v297 = v295 <= 0x7FFFFFFF && 2147483627 - v22 >= v296;
              v16 = a11;
              v30 = v402;
              if (!v297)
              {
                goto LABEL_783;
              }

              v22 += v296;
            }

            else
            {
              v298 = v289 - 1;
              v30 = v402;
              if ((v289 - 1) < 0)
              {
                v16 = a11;
              }

              else
              {
                v349 = v73;
                __srcc = v65;
                v401 = v28;
                v299 = v74 - 109;
                v300 = v405;
                *v407 = v74 - 109;
                v301 = v407 + 1;
                if (v289 != 1)
                {
                  v406 = v22;
                  v302 = v300 + 4;
                  v303 = v290;
                  v304 = v407 + 2;
                  v305 = v300 + 4;
                  do
                  {
                    v306 = v304 - v281;
                    if (!v281)
                    {
                      v306 = 0;
                    }

                    v301[1] = HIBYTE(v306);
                    v281 = v301 + 1;
                    *v301 = -125;
                    v301[2] = v306;
                    v307 = v300;
                    cstdlib_memcpy(v301 + 3, v303, v300);
                    v300 = v307;
                    v301 += v302;
                    *(v301 - 1) = v299;
                    v304 += v305;
                    --v298;
                  }

                  while (v298);
                  v281 = &v301[-v307 - 3];
                  v22 = v406;
                  v30 = v402;
                  v290 = v303;
                }

                v308 = v300;
                cstdlib_memcpy(v301, v290, v300);
                v77 = &v301[v308];
                v16 = a11;
                v28 = v401;
                v65 = __srcc;
                v73 = v349;
              }
            }

            if (v281)
            {
              v309 = v77 + 1;
              do
              {
                v310 = v309 - v281;
                v311 = &v77[-(v309 - v281)];
                v312 = *(v311 + 1);
                *v77 = 121;
                v313 = __rev16(v312);
                v77[1] = (v309 - v281) >> 8;
                v281 -= v313;
                v77[2] = v310;
                v77 += 3;
                v311[1] = HIBYTE(v310);
                v311[2] = v310;
                v309 += 3;
              }

              while (v313);
            }

            v71 = v290;
            if (v73)
            {
              goto LABEL_586;
            }

            goto LABEL_730;
          }

          if (!v44)
          {
LABEL_638:
            v399 = v28;
            __srca = v65;
            v278 = v74;
            v279 = v73;
            v16 = a11;
            v405 = v78;
            if (v46 < 2 || v46 == 0x10000)
            {
              v280 = v71 + 1;
              cstdlib_memmove(v71 + 1, v71, v78);
              ++v407;
              if (!v46)
              {
                *v71 = -93;
                v403 = v71 + 1;
                v30 = v402;
                v31 = v407;
                v28 = v399;
                v65 = __srca;
                goto LABEL_752;
              }

              v281 = 0;
              v74 = v278;
              *v71 = v278 - 109;
            }

            else
            {
              v280 = v71 + 4;
              cstdlib_memmove(v71 + 4, v71, v78);
              v407 += 4;
              v74 = v278;
              *v71 = v278 - 109;
              v281 = v71 + 2;
              *(v71 + 1) = 131;
              v71[3] = 0;
              v71 = 0;
            }

            v44 = 0;
            v73 = v279;
            if (v46 == 0x10000)
            {
              v281 = v71;
              v71 = v280;
              v77 = v407;
              v28 = v399;
              v65 = __srca;
              goto LABEL_664;
            }

            v289 = v46 - 1;
            v28 = v399;
            v65 = __srca;
            v290 = v280;
            goto LABEL_662;
          }

          v405 = v78;
          if (!a12)
          {
            v352 = v74;
            __srcb = v65;
            v283 = v73;
            v400 = v28;
            v284 = v392;
            v285 = !v376 || v392 >= 0;
            if (v376 && v392 < 0)
            {
              v284 = v395;
            }

            v392 = v284;
            v286 = HIDWORD(v391);
            if (!v285)
            {
              v286 = v391;
            }

            HIDWORD(v391) = v286;
            v287 = v78;
            v288 = v407;
            do
            {
              cstdlib_memcpy(v288, v71, v287);
              v288 += v287;
              LODWORD(v277) = v277 - 1;
            }

            while (v277);
            v407 = v288;
            v28 = v400;
            v74 = v352;
            v65 = __srcb;
            v73 = v283;
            goto LABEL_655;
          }

          v282 = v418 * v277;
          if (v418 * v277 <= 0x7FFFFFFF && 2147483627 - v22 >= v282)
          {
            v22 += v282;
            goto LABEL_655;
          }

LABEL_783:
          v341 = 120;
          goto LABEL_787;
        }

        if (v75 == 117)
        {
          if (v44)
          {
            if (v46 == 0x10000 && v44 == 1)
            {
              v235 = v74;
              v236 = v73;
              v237 = v46 != v44;
              v238 = v28;
              v46 = 0x10000;
            }

            else
            {
              v268 = v44 - (v46 == v44);
              if (a12)
              {
                if (v268 > 715827882)
                {
                  goto LABEL_783;
                }

                v269 = 3 * v268;
                if (2147483627 - v404 < v269)
                {
                  goto LABEL_783;
                }

                v22 = v404 + v269;
              }

              else
              {
                v348 = v73;
                v351 = v74;
                v273 = v28;
                v274 = v407;
                if (v268 >= 1)
                {
                  do
                  {
                    v275 = v274;
                    cstdlib_memcpy(v274, v71, 3uLL);
                    v274 = v275 + 3;
                    v71 = v275;
                    --v268;
                  }

                  while (v268);
                  v407 = v275 + 3;
                  v71 = v275;
                }

                v28 = v273;
                v65 = v46 != v44;
                v73 = v348;
                v74 = v351;
              }

              v276 = v46 - v44;
              if (v46 == v44)
              {
                v77 = v407;
LABEL_670:
                v16 = a11;
                v30 = v402;
                if ((v73 & 1) == 0)
                {
                  goto LABEL_730;
                }

                goto LABEL_586;
              }

              v235 = v74;
              v236 = v73;
              v237 = v65;
              v238 = v28;
              v44 = 0;
              if (v46 == 0x10000)
              {
                v46 = 0x10000;
              }

              else
              {
                v46 = v276;
              }
            }
          }

          else
          {
            v235 = v74;
            v236 = v73;
            v237 = v46 != v44;
            v238 = v28;
          }

          cstdlib_memmove(v71 + 3, v71, 3uLL);
          *v71 = 131;
          v71[2] = 6;
          *(v71 + 3) = 121;
          v71[8] = 6;
          v407 += 6;
          v78 = v407 - v71;
          v380 = -1;
          v418 = 9;
          v28 = v238;
          v65 = v237;
          v73 = v236;
          v74 = v235;
          goto LABEL_636;
        }

        if (v76 == 42)
        {
          goto LABEL_351;
        }

LABEL_77:
        if (v75 - 110 < 7)
        {
          if (!v46)
          {
            v31 = v403;
            v16 = a11;
            goto LABEL_710;
          }

          v30 = v402;
          if (v46 == 0x10000 && !v44)
          {
            *v407 = v74 + 98;
            v77 = v407 + 1;
            goto LABEL_585;
          }

          v77 = v407 + 1;
          if (v46 == 0x10000 && v44 == 1)
          {
            v200 = v74 + 100;
          }

          else
          {
            if (v46 != 1 || v44)
            {
              *v407 = v74 + 104;
              v407[1] = BYTE1(v44);
              v407[2] = v44;
              if (v46 == 0x10000)
              {
                v262 = 0;
              }

              else
              {
                v262 = v46;
              }

              v407[3] = HIBYTE(v262);
              v407[4] = v262;
              v77 = v407 + 5;
LABEL_585:
              v16 = a11;
              if ((v73 & 1) == 0)
              {
                goto LABEL_730;
              }

              goto LABEL_586;
            }

            v200 = v74 + 102;
          }

          *v407 = v200;
          goto LABEL_585;
        }

        if (v75 - 29 > 3)
        {
          if (v75 >= 0x17)
          {
            v341 = 110;
            goto LABEL_787;
          }

          v109 = 0;
          if (v75 - 15 > 1)
          {
            v110 = -1;
            v111 = -1;
          }

          else
          {
            v111 = v403[1];
            v110 = v403[2];
          }

          LOBYTE(v101) = 52;
          v30 = v402;
          if (!v46)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v101 = chartypeoffset[v75 - 29];
          v102 = *(v407 - 1);
          if ((v384 & 0x80000) != 0 && (v102 & 0xC0) == 0x80)
          {
            v103 = v74;
            v104 = v73;
            v105 = v28;
            v106 = 0;
            v107 = v407;
            v30 = v402;
            do
            {
              v108 = *--v107;
              ++v106;
            }

            while ((v108 & 0xC0) == 0x80);
            v109 = v106;
            cstdlib_memcpy(__dst, v107, v106);
            v110 = -1;
            v111 = -1;
            v28 = v105;
            v65 = v46 != v44;
            v73 = v104;
            v74 = v103;
            if (!v46)
            {
LABEL_139:
              v31 = v403;
              v22 = v404;
              v21 = a12;
              v16 = a11;
              goto LABEL_752;
            }
          }

          else
          {
            __dst[0] = *(v407 - 1);
            v110 = -1;
            v111 = -1;
            v109 = 1;
            v30 = v402;
            if (v75 <= 0x1E && v44 >= 2)
            {
              v392 = *(a11 + 280) | v374;
              v109 = 1;
              HIDWORD(v391) = v102;
            }

            if (!v46)
            {
              goto LABEL_139;
            }
          }
        }

        v209 = v101 + v74;
        if (!v44)
        {
          if (v46 == 0x10000)
          {
            v210 = v209 + 33;
            goto LABEL_473;
          }

          v22 = v404;
          v16 = a11;
          if (v46 == 1)
          {
            v231 = (v403 + 1);
            *v403 = v209 + 37;
          }

          else
          {
            *v403 = v209 + 39;
            v403[1] = BYTE1(v46);
            v403[2] = v46;
            v231 = (v403 + 3);
          }

LABEL_725:
          v21 = a12;
          if (v109)
          {
            v319 = v28;
            v320 = v65;
            v321 = v73;
            cstdlib_memcpy(v231, __dst, v109);
            v73 = v321;
            v65 = v320;
            v28 = v319;
            v77 = &v231[v109];
          }

          else
          {
            *v231 = v75;
            v77 = v231 + 1;
            if ((v111 & 0x80000000) == 0)
            {
              v231[1] = v111;
              v77 = v231 + 3;
              v231[2] = v110;
            }
          }

          v71 = v403;
          if ((v73 & 1) == 0)
          {
            goto LABEL_730;
          }

LABEL_586:
          v403 = v71;
LABEL_750:
          v31 = v77;
          goto LABEL_752;
        }

        if (v44 == 1)
        {
          if (v46 == 0x10000)
          {
            v210 = v209 + 35;
LABEL_473:
            *v403 = v210;
            v231 = (v403 + 1);
LABEL_498:
            v22 = v404;
            v16 = a11;
            goto LABEL_725;
          }

          v263 = v46 - 1;
          v22 = v404;
          v16 = a11;
          if (v46 == 1)
          {
            v21 = a12;
            goto LABEL_62;
          }

          *v407 = v209 + 39;
          v407[1] = HIBYTE(v263);
          v407[2] = v263;
          v231 = v407 + 3;
          goto LABEL_725;
        }

        *v403 = v101 + 41;
        v403[1] = BYTE1(v44);
        v403[2] = v44;
        v231 = (v403 + 3);
        v239 = v46 - v44;
        if (v46 == v44)
        {
          goto LABEL_498;
        }

        v16 = a11;
        if (v109)
        {
          v398 = v28;
          v264 = v65;
          v265 = v73;
          v408 = v110;
          v266 = v111;
          v350 = v239;
          cstdlib_memcpy(v231, __dst, v109);
          v239 = v350;
          v111 = v266;
          v110 = v408;
          v73 = v265;
          v65 = v264;
          v28 = v398;
          v267 = &v231[v109];
        }

        else
        {
          v403[3] = v75;
          if (v111 < 0)
          {
            v267 = (v403 + 4);
          }

          else
          {
            v403[4] = v111;
            v267 = (v403 + 6);
            v403[5] = v110;
          }
        }

        if (v46 == 0x10000)
        {
          v318 = v209 + 33;
        }

        else
        {
          if (v239 != 1)
          {
            *v267 = v209 + 39;
            v267[1] = BYTE1(v239);
            v267[2] = v239;
            v231 = v267 + 3;
            goto LABEL_724;
          }

          v318 = v209 + 37;
        }

        *v267 = v318;
        v231 = v267 + 1;
LABEL_724:
        v22 = v404;
        goto LABEL_725;
      default:
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_793;
    }
  }
}

void *add_name_to_table(uint64_t a1, void *__src, size_t __n, unsigned int a4, int a5)
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
      v13 = cstdlib_memcmp(__src, v9 + 1, v10);
      if (v13)
      {
        if (v13 < 0)
        {
          goto LABEL_9;
        }
      }

      else if (*(v9 + v12))
      {
LABEL_9:
        cstdlib_memmove(v9 + *(a1 + 178), v9, v11 * *(a1 + 178));
        break;
      }

      v9 = (v9 + *(a1 + 178));
      --v11;
    }

    while (v11);
  }

  *v9 = bswap32(a4) >> 16;
  v14 = (v9 + 1);
  cstdlib_memcpy(v14, __src, v10);
  v15 = *(a1 + 178) - v6 - 2;

  return cstdlib_memset(&v14[v10], 0, v15);
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
        if (v3 > 0x29)
        {
          goto LABEL_22;
        }

        if (((1 << (v2 - 117)) & 0x2AA00000000) != 0)
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
    if (v13 > 0x7D)
    {
      v14 = v13 + 125;
      if (v13 - 131 > 9)
      {
        if (v13 == 126)
        {
          v18 = significant_code;
          v17 = a2;
          v21 = a3;
          v20 = a4;
          v22 = 1;
LABEL_31:
          result = is_anchored(v18, v17, v21, v20, v22);
          if (!result)
          {
            return result;
          }

          goto LABEL_32;
        }

        if (v13 != 130)
        {
          return result;
        }

        v20 = (a4 + 1);
        v18 = significant_code;
        v17 = a2;
        v21 = a3;
LABEL_30:
        v22 = a5;
        goto LABEL_31;
      }

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
          goto LABEL_29;
        }

        if (significant_code[__rev16(*(significant_code + 1))] != 120)
        {
          return 0;
        }
      }

      v18 = significant_code;
      v17 = a2;
LABEL_29:
      v21 = a3;
      v20 = a4;
      goto LABEL_30;
    }

    if (*significant_code <= 0x54u)
    {
      if (v13 - 1 >= 2 && v13 != 27)
      {
        return result;
      }

      goto LABEL_32;
    }

    if (v13 - 85 >= 2 && v13 != 94)
    {
      return result;
    }

    if (significant_code[1] != 13)
    {
      return 0;
    }

    result = 0;
    if (a4 > 0 || (*(a3 + 252) & a2) != 0)
    {
      return result;
    }

    if (*(a3 + 288) | a5 || (*(a3 + 205) & 0x80) != 0)
    {
      return 0;
    }

LABEL_32:
    v9 += __rev16(*(v9 + 1));
    if (*v9 != 120)
    {
      return 1;
    }
  }
}

uint64_t find_firstassertedcu(unsigned __int8 *a1, int *a2, int a3)
{
  v5 = a1;
  v6 = 0;
  v7 = -1;
  *a2 = -1;
  for (i = *a1; ; i = 120)
  {
    v9 = (i - 133) <= 5 && ((1 << (i + 123)) & 0x23) != 0 ? 2 : 2 * (i == 139);
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
LABEL_42:
          v6 = v16;
          goto LABEL_43;
        }

        goto LABEL_39;
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
    if (!a3)
    {
      return 0;
    }

    v16 = significant_code[1];
    if (v7 < 0)
    {
      v7 = 1;
      goto LABEL_42;
    }

LABEL_39:
    if (v6 != v16)
    {
      return 0;
    }

LABEL_43:
    v5 += __rev16(*(v5 + 1));
    if (*v5 != 120)
    {
      *a2 = v7;
      return v6;
    }
  }

  if (v11 - 126 > 0xD || ((1 << (v11 - 126)) & 0x31F1) == 0)
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
    goto LABEL_43;
  }

  if (v6 == firstassertedcu && v7 == 0)
  {
    goto LABEL_43;
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
    if (v12 != 135)
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

    v16 = v13 - 141;
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

    v21 = v12 + 126;
    if ((v12 - 130) <= 9)
    {
      if (((1 << v21) & 0xC6) != 0)
      {
        v24 = a2;
LABEL_29:
        v25 = a3;
        v26 = a4;
LABEL_30:
        v27 = a5;
LABEL_31:
        result = is_startline(significant_code, v24, v25, v26, v27);
        if (!result)
        {
          return result;
        }

        goto LABEL_42;
      }

      if (((1 << v21) & 0x318) != 0)
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
        goto LABEL_29;
      }

      if (v12 == 130)
      {
        v26 = (a4 + 1);
        v24 = a2;
        v25 = a3;
        goto LABEL_30;
      }
    }

LABEL_41:
    if ((v12 - 29) < 0xFFFFFFFE)
    {
      return 0;
    }

LABEL_42:
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
      v24 = a2;
      v25 = a3;
      v26 = a4;
      v27 = 1;
      goto LABEL_31;
    }

    goto LABEL_41;
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
      goto LABEL_42;
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
  *&v26[31] = *MEMORY[0x277D85DE8];
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
        v16 = &v25;
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
    return v18;
  }

  v25 = v12;
  v16 = v26;
LABEL_17:
  *v16 = 0;
  *a1 = v8;
  v20 = 192;
  v21 = 0;
  while (1)
  {
    v22 = (v20 + v21) >> 1;
    v23 = (&_pcre2_utt_8 + 6 * v22);
    v24 = _pcre2_strcmp_c8_8(&v25, &_pcre2_utt_names_8[*v23]);
    if (!v24)
    {
      break;
    }

    if (v24 <= 0)
    {
      v20 = (v20 + v21) >> 1;
    }

    else
    {
      v21 = v22 + 1;
    }

    if (v21 >= v20)
    {
      v18 = 0;
      *a5 = 147;
      return v18;
    }
  }

  *a3 = v23[1];
  *a4 = v23[2];
  return 1;
}

uint64_t read_name(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 a3, void *a4, void *a5, _DWORD *a6, int *a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *a1 + 1;
  v10 = **a1;
  if (v10 == 42)
  {
    v11 = 2;
  }

  else
  {
    v11 = 16;
  }

  if (v9 >= a2)
  {
    v12 = 0;
    if (v10 == 42)
    {
      v13 = 160;
    }

    else
    {
      v13 = 162;
    }

    goto LABEL_10;
  }

  *a5 = v9;
  *a4 = &v9[-*(a8 + 56)];
  if (*v9 - 48 >= 0xA)
  {
    v15 = 0;
    v12 = (~v8 + a2);
    v16 = (v8 + 34);
    v17 = v9;
    while (1)
    {
      if (v17 >= a2)
      {
        v9 = a2;
        goto LABEL_19;
      }

      if ((v11 & *(*(a8 + 32) + *v17)) == 0)
      {
        break;
      }

      ++v17;
      v15 = (v15 + 1);
      if (v15 == 33)
      {
        v12 = 0;
        *a7 = 148;
        v9 = v16;
        goto LABEL_11;
      }
    }

    v9 = v17;
    v12 = v15;
LABEL_19:
    if (v10 != 42)
    {
      if (!v12)
      {
        v13 = 162;
        goto LABEL_10;
      }

      if (v17 >= a2 || *v9 != a3)
      {
        v12 = 0;
        v13 = 142;
        goto LABEL_10;
      }

      ++v9;
    }

    *a6 = v12;
    v12 = 1;
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 144;
LABEL_10:
  *a7 = v13;
LABEL_11:
  *a1 = v9;
  return v12;
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
    if (v7 == a2 && !_pcre2_strncmp_c8_8(a1, v6, v5))
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
  v57 = v7;
  v8 = (*a3)++;
  if (v8 > 2000)
  {
    v9 = 135;
    goto LABEL_89;
  }

  v13 = 0;
  v14 = 0;
  v15 = a5 + 88;
  v55 = 0;
  v56 = 0;
  while (2)
  {
    v54 = 0;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_5:
      v17 = 1;
      goto LABEL_6;
    }

    v18 = 0;
    v17 = 0;
    switch((v16 + 2147418112) >> 16)
    {
      case 0u:
      case 0x18u:
        goto LABEL_84;
      case 1u:
      case 0x19u:
        goto LABEL_68;
      case 2u:
        if ((*(a5 + 205) & 2) != 0 || (*(a5 + 210) & 0x20) != 0)
        {
          goto LABEL_88;
        }

        v28 = *v7;
        if (*v7 > 9u)
        {
          goto LABEL_49;
        }

        v35 = *(v15 + 8 * v28);
        goto LABEL_50;
      case 3u:
        if ((*(a5 + 205) & 2) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_88;
      case 4u:
        goto LABEL_35;
      case 5u:
        goto LABEL_75;
      case 6u:
        v17 = 0;
        v20 = v7 + 5;
        goto LABEL_76;
      case 7u:
        v18 = *v7;
        goto LABEL_68;
      case 8u:
      case 0x15u:
      case 0x28u:
      case 0x2Au:
      case 0x2Cu:
      case 0x2Eu:
        goto LABEL_6;
      case 9u:
      case 0xDu:
        v17 = 1;
        v57 = parsed_skip(v7, 1);
        if (v57)
        {
          goto LABEL_6;
        }

        goto LABEL_86;
      case 0xBu:
      case 0x16u:
        goto LABEL_5;
      case 0xEu:
        v18 = 0;
LABEL_68:
        v19 = v7 + 1;
        goto LABEL_69;
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        v18 = 0;
        v19 = v7 + 4;
LABEL_69:
        v57 = v19;
        grouplength = get_grouplength(&v57, 1, a2, a3, v18, a4, a5);
        if (grouplength < 0)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = grouplength;
        goto LABEL_6;
      case 0x17u:
        v29 = *v7;
        if (v29 == 17 || v29 == 22)
        {
          return 0xFFFFFFFFLL;
        }

        if ((v29 - 6) > 0x10)
        {
          goto LABEL_24;
        }

        if (v29 == 14 && (*(a5 + 204) & 0x80000) != 0)
        {
          v9 = 136;
          goto LABEL_89;
        }

        if ((v29 - 15) <= 1)
        {
LABEL_35:
          v57 = v7 + 1;
        }

        goto LABEL_5;
      case 0x1Au:
        v17 = 0;
        v20 = v7 + 1;
        goto LABEL_76;
      case 0x1Fu:
        LODWORD(v28) = *v7;
LABEL_49:
        v42 = v7[2];
        v41 = v7 + 2;
        v35 = v42 | (*(v41 - 1) << 32);
        v57 = v41;
        goto LABEL_50;
      case 0x20u:
LABEL_38:
        v52 = v15;
        v53 = a4;
        v32 = v7[3];
        v31 = v7 + 3;
        v33 = *(a5 + 192);
        v34 = *(v31 - 2);
        v35 = v32 | (*(v31 - 1) << 32);
        v57 = v31;
        v36 = *(a5 + 176);
        if (!v36)
        {
          goto LABEL_81;
        }

        v37 = v6;
        v38 = 0;
        v51 = v16 & 0xFFFF0000;
        v39 = *(a5 + 56);
        v40 = (v33 + 14);
        while (2)
        {
          if (v34 != *(v40 - 1))
          {
            goto LABEL_43;
          }

          if (_pcre2_strncmp_8((v39 + v35), *(v40 - 7), v34))
          {
            v36 = *(a5 + 176);
LABEL_43:
            ++v38;
            v40 += 8;
            if (v38 >= v36)
            {
              goto LABEL_81;
            }

            continue;
          }

          break;
        }

        LODWORD(v28) = *(v40 - 3);
        if (!v28)
        {
LABEL_81:
          *a2 = 115;
          *(a5 + 168) = v35;
          return 0xFFFFFFFFLL;
        }

        if (v51 == -2145320960)
        {
          v6 = v37;
          v15 = v52;
          a4 = v53;
        }

        else
        {
          v6 = v37;
          v15 = v52;
          a4 = v53;
          if (*v40 || (*(a5 + 210) & 0x20) != 0)
          {
            goto LABEL_88;
          }
        }

LABEL_50:
        if (v28 > *(a5 + 212))
        {
          *(a5 + 168) = v35;
          v9 = 115;
          goto LABEL_89;
        }

        if (!v28)
        {
          goto LABEL_88;
        }

        v43 = *(a5 + 224);
        v44 = *v43;
        if (*v43 != 0x80000000)
        {
          do
          {
            if ((v44 & 0xFFFF0000) == 0x80050000)
            {
              ++v43;
            }

            else if (v44 == (v28 | 0x80080000))
            {
              break;
            }

            v45 = v43[1];
            ++v43;
            v44 = v45;
          }

          while (v45 != 0x80000000);
        }

        v54 = v43;
        v46 = parsed_skip(v43 + 1, 2);
        if (!v46)
        {
LABEL_86:
          v9 = 190;
          goto LABEL_89;
        }

        if (v57 > v43 && v57 < v46)
        {
          goto LABEL_88;
        }

        if (!a4)
        {
LABEL_64:
          v55 = a4;
          v56 = v43;
          v54 = v43 + 1;
          v48 = get_grouplength(&v54, 0, a2, a3, v28, &v55, a5);
          if (v48 < 0)
          {
            if (!*a2)
            {
              goto LABEL_88;
            }

            return 0xFFFFFFFFLL;
          }

          v17 = v48;
LABEL_6:
          v14 = (v14 + v17);
          if (v14 >= 0x10000)
          {
            v9 = 187;
            goto LABEL_89;
          }

          v7 = ++v57;
          v13 = v17;
          continue;
        }

        v47 = a4;
        while (v47[1] != v43)
        {
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_64;
          }
        }

LABEL_88:
        v9 = 125;
LABEL_89:
        *a2 = v9;
        return 0xFFFFFFFFLL;
      case 0x21u:
      case 0x22u:
        v7 = parsed_skip(v7 + 1, 2);
        v57 = v7;
        if (!v7)
        {
          goto LABEL_86;
        }

        v20 = v7 + 1;
        HIDWORD(v25) = v7[1] + 2144272384;
        LODWORD(v25) = HIDWORD(v25);
        v24 = v25 >> 16;
        v26 = v24 >= 9;
        v27 = v24 - 9;
        if (v26)
        {
          if (v27 >= 3)
          {
LABEL_24:
            v17 = 0;
            goto LABEL_6;
          }

LABEL_75:
          v17 = 0;
          v20 = v7 + 3;
        }

        else
        {
          v17 = 0;
        }

LABEL_76:
        v57 = v20;
        goto LABEL_6;
      case 0x23u:
      case 0x24u:
        if (!set_lookbehind_lengths(&v57, a2, a3, a4, a5))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_24;
      case 0x25u:
      case 0x29u:
      case 0x2Bu:
      case 0x2Du:
      case 0x2Fu:
        v17 = 0;
        v20 = &v7[v7[1] + 1];
        goto LABEL_76;
      case 0x26u:
      case 0x27u:
        v7 = parsed_skip(v7, 0);
        if (!v7)
        {
          goto LABEL_86;
        }

LABEL_84:
        *v6 = v7;
        if (v14 > *(a5 + 276))
        {
          *(a5 + 276) = v14;
        }

        return v14;
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
        v22 = v7[2];
        v21 = v7 + 2;
        v23 = *(v21 - 1);
        if (v23 != v22)
        {
          goto LABEL_88;
        }

        if (v23)
        {
          v17 = (v23 - 1) * v13;
        }

        else
        {
          v17 = 0;
        }

        if (v23)
        {
          v13 = 0;
        }

        LODWORD(v14) = v14 - v13;
        v57 = v21;
        goto LABEL_6;
      default:
        goto LABEL_88;
    }
  }
}