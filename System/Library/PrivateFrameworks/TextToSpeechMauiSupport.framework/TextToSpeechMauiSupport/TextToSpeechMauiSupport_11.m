uint64_t luaX_lookahead(uint64_t a1)
{
  result = llex(a1, (a1 + 40));
  *(a1 + 32) = result;
  return result;
}

uint64_t save(uint64_t a1, char a2)
{
  v3 = *(a1 + 72);
  v5 = v3[1];
  v4 = v3[2];
  v6 = v5 + 1;
  if (v5 + 1 <= v4)
  {
    result = *v3;
  }

  else
  {
    if (v4 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      luaG_addinfo(*(a1 + 56), "lexical element too long", *(a1 + 96), *(a1 + 4));
      luaD_throw(*(a1 + 56), 3);
      v4 = v3[2];
    }

    v8 = 2 * v4;
    result = luaM_realloc_(*(a1 + 56), *v3, v4, 2 * v4);
    *v3 = result;
    v3[2] = v8;
    v5 = v3[1];
    v6 = v5 + 1;
  }

  v3[1] = v6;
  *(result + v5) = a2;
  return result;
}

uint64_t inclinenumber(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    result = *v5;
  }

  else
  {
    result = luaZ_fill(v3);
  }

  *a1 = result;
  if ((result == 13 || result == 10) && result != v2)
  {
    v9 = *(a1 + 8);
    if ((*v9)--)
    {
      v11 = v9[1];
      v9[1] = v11 + 1;
      result = *v11;
    }

    else
    {
      result = luaZ_fill(v9);
    }

    *a1 = result;
  }

  v12 = a1[1] + 1;
  a1[1] = v12;
  if (v12 == 0x7FFFFFFF)
  {
    luaG_addinfo(*(a1 + 7), "chunk has too many lines", *(a1 + 12), 0x7FFFFFFF);
    v13 = *(a1 + 7);

    return luaD_throw(v13, 3);
  }

  return result;
}

uint64_t skip_sep(uint64_t a1)
{
  v2 = *a1;
  save(a1, *a1);
  v3 = *(a1 + 64);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  if (v6 == 61)
  {
    v7 = 0;
    do
    {
      save(a1, 61);
      v8 = *(a1 + 64);
      if ((*v8)--)
      {
        v10 = v8[1];
        v8[1] = v10 + 1;
        v6 = *v10;
      }

      else
      {
        v6 = luaZ_fill(v8);
      }

      *a1 = v6;
      ++v7;
    }

    while (v6 == 61);
  }

  else
  {
    v7 = 0;
  }

  if (v6 == v2)
  {
    return v7;
  }

  else
  {
    return ~v7;
  }
}

uint64_t read_long_string(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *(a1 + 4);
  save(a1, *a1);
  v7 = *(a1 + 64);
  if ((*v7)--)
  {
    v9 = v7[1];
    v7[1] = v9 + 1;
    v10 = *v9;
  }

  else
  {
    v10 = luaZ_fill(v7);
  }

  *a1 = v10;
  if (v10 == 13 || v10 == 10)
  {
    inclinenumber(a1);
  }

  if (a2)
  {
    v12 = "string";
  }

  else
  {
    v12 = "comment";
  }

  do
  {
    while (1)
    {
      v13 = *a1;
      if (*a1 > 12)
      {
        break;
      }

      if (v13 == -1)
      {
        v18 = luaO_pushfstring(*(a1 + 56), "unfinished long %s (starting at line %d)", v12, v6);
        lexerror(a1, v18, 289);
      }

      else if (v13 == 10)
      {
LABEL_21:
        save(a1, 10);
        inclinenumber(a1);
        if (!a2)
        {
          *(*(a1 + 72) + 8) = 0;
        }
      }

      else
      {
LABEL_23:
        if (a2)
        {
          save(a1, v13);
        }

        v14 = *(a1 + 64);
        if ((*v14)--)
        {
          v16 = v14[1];
          v14[1] = v16 + 1;
          v17 = *v16;
        }

        else
        {
          v17 = luaZ_fill(v14);
        }

        *a1 = v17;
      }
    }

    if (v13 == 13)
    {
      goto LABEL_21;
    }

    if (v13 != 93)
    {
      goto LABEL_23;
    }
  }

  while (skip_sep(a1) != a3);
  save(a1, *a1);
  v19 = *(a1 + 64);
  if ((*v19)--)
  {
    v21 = v19[1];
    v19[1] = v21 + 1;
    result = *v21;
  }

  else
  {
    result = luaZ_fill(v19);
  }

  *a1 = result;
  if (a2)
  {
    result = luaX_newstring(a1, (**(a1 + 72) + (a3 + 2)), *(*(a1 + 72) + 8) - (2 * (a3 + 2)));
    *a2 = result;
  }

  return result;
}

uint64_t check_next1(uint64_t a1, int a2)
{
  if (*a1 != a2)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  return 1;
}

uint64_t read_numeral(int *a1, void *a2)
{
  v29 = 0;
  v30 = 0;
  v4 = *a1;
  save(a1, *a1);
  v5 = *(a1 + 8);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  v9 = "Ee";
  if (v4 == 48 && check_next2(a1, "xX"))
  {
    v9 = "Pp";
  }

  while (1)
  {
    if (check_next2(a1, v9))
    {
      check_next2(a1, "-+");
    }

    v10 = *a1;
    if ((luai_ctype_[v10 + 1] & 0x10) == 0)
    {
      break;
    }

    v11 = a1;
LABEL_13:
    save(v11, v10);
    v12 = *(a1 + 8);
    if ((*v12)--)
    {
      v14 = v12[1];
      v12[1] = v14 + 1;
      v15 = *v14;
    }

    else
    {
      v15 = luaZ_fill(v12);
    }

    *a1 = v15;
  }

  v11 = a1;
  if (v10 == 46)
  {
    goto LABEL_13;
  }

  save(a1, 0);
  v16 = *(a1 + 112);
  if (v16 != 46)
  {
    v17 = *(a1 + 9);
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17 - 1;
      do
      {
        if (*(v19 + v18) == 46)
        {
          *(v19 + v18) = v16;
        }

        --v18;
      }

      while (v18);
    }
  }

  if (!luaO_str2num(**(a1 + 9), &v29))
  {
    v20 = *(a1 + 112);
    *(a1 + 112) = 46;
    v21 = *(a1 + 9);
    if (v20 != 46)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *v21 - 1;
        do
        {
          if (*(v23 + v22) == v20)
          {
            *(v23 + v22) = 46;
          }

          --v22;
        }

        while (v22);
        v21 = *(a1 + 9);
      }
    }

    if (!luaO_str2num(*v21, &v29))
    {
      v24 = *(a1 + 112);
      if (v24 != 46)
      {
        v25 = *(a1 + 9);
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25 - 1;
          do
          {
            if (*(v27 + v26) == v24)
            {
              *(v27 + v26) = 46;
            }

            --v26;
          }

          while (v26);
        }
      }

      lexerror(a1, "malformed number", 290);
    }
  }

  if (v30 == 19)
  {
    result = 291;
  }

  else
  {
    result = 290;
  }

  *a2 = v29;
  return result;
}

_DWORD *esccheck(_DWORD *result, int a2, const char *a3)
{
  if (!a2)
  {
    v5 = result;
    if (*result != -1)
    {
      save(result, *result);
      v6 = *(v5 + 64);
      if ((*v6)--)
      {
        v8 = v6[1];
        v6[1] = v8 + 1;
        v9 = *v8;
      }

      else
      {
        v9 = luaZ_fill(v6);
      }

      *v5 = v9;
    }

    return lexerror(v5, a3, 293);
  }

  return result;
}

uint64_t gethexa(uint64_t a1)
{
  save(a1, *a1);
  v2 = *(a1 + 64);
  if ((*v2)--)
  {
    v4 = v2[1];
    v2[1] = v4 + 1;
    v5 = *v4;
  }

  else
  {
    v5 = luaZ_fill(v2);
  }

  *a1 = v5;
  esccheck(a1, luai_ctype_[v5 + 1] & 0x10, "hexadecimal digit expected");
  v6 = *a1;

  return luaO_hexavalue(v6);
}

uint64_t check_next2(uint64_t a1, char *a2)
{
  v4 = *a1;
  if (*a1 != *a2 && v4 != a2[1])
  {
    return 0;
  }

  save(a1, v4);
  v5 = *(a1 + 64);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  return 1;
}

uint64_t luaM_growaux_(void *a1, uint64_t a2, int *a3, uint64_t a4, int a5, const char *a6)
{
  v10 = *a3;
  if (*a3 >= a5 / 2)
  {
    v11 = a5;
    if (v10 >= a5)
    {
      luaG_runerror(a1, "too many %s (limit is %d)", a6, a5);
      v10 = *a3;
    }
  }

  else if (2 * v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2 * v10;
  }

  result = luaM_realloc_(a1, a2, v10 * a4, v11 * a4);
  *a3 = v11;
  return result;
}

uint64_t luaM_realloc_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  v9 = (*v8)(*(v8 + 8));
  v10 = v9;
  if (a4 && !v9)
  {
    luaD_throw(a1, 4);
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 24) += a4 - v11;
  return v10;
}

uint64_t luaO_int2fb(uint64_t result)
{
  if (result >= 8)
  {
    if (result < 0x80)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v2 = result + 15;
        LODWORD(result) = (result + 15) >> 4;
        v1 += 4;
      }

      while (v2 > 0x7FF);
    }

    if (result < 0x10)
    {
      v3 = result;
    }

    else
    {
      do
      {
        v3 = (result + 1) >> 1;
        ++v1;
        v4 = result > 0x1E;
        LODWORD(result) = v3;
      }

      while (v4);
    }

    return (8 * v1 + 8) | (v3 - 8);
  }

  return result;
}

uint64_t luaO_fb2int(uint64_t result)
{
  if (result >> 3)
  {
    return (result & 7 | 8) << ((result >> 3) - 1);
  }

  else
  {
    return result;
  }
}

uint64_t luaO_ceillog2(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) < 0x100)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a1 - 1;
    do
    {
      v2 += 8;
      v1 = v3 >> 8;
      v4 = HIWORD(v3);
      v3 >>= 8;
    }

    while (v4);
  }

  return v2 + luaO_ceillog2_log_2[v1];
}

uint64_t luaO_arith(uint64_t result, int a2, double *a3, double *a4, uint64_t a5)
{
  v9 = result;
  if ((a2 - 7) >= 5)
  {
    if (a2 == 5)
    {
      v17 = 0;
      v18 = 0.0;
      if (*(a3 + 2) == 3)
      {
        v18 = *a3;
      }

      else
      {
        result = luaV_tonumber_(a3, &v18);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v13 = a4;
      }

      else
      {
        v13 = &v17;
        result = luaV_tonumber_(a4, &v17);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      *a5 = v18 / *v13;
      v11 = 3;
      goto LABEL_16;
    }

    if (a2 != 13)
    {
      v17 = 0;
      v18 = 0.0;
      v10 = *(a3 + 2);
      if (v10 == 3)
      {
        v18 = *a3;
      }

      else
      {
        if (v10 == 19 && *(a4 + 2) == 19)
        {
          result = intarith(result, a2, *a3, *a4);
          v11 = 19;
          goto LABEL_43;
        }

        if (!luaV_tonumber_(a3, &v18))
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v14 = a4;
      }

      else
      {
        v14 = &v17;
        if (!luaV_tonumber_(a4, &v17))
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      v15 = *v14;
      v16 = 0.0;
      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v16 = v18 - v15;
          }
        }

        else
        {
          v16 = v18 + v15;
        }
      }

      else
      {
        switch(a2)
        {
          case 2:
            v16 = v18 * v15;
            break;
          case 5:
            v16 = v18 / v15;
            break;
          case 12:
            v16 = -v18;
            break;
        }
      }

      result = *&v16;
      v11 = 3;
LABEL_43:
      *a5 = result;
      goto LABEL_16;
    }
  }

  v17 = 0;
  v18 = 0.0;
  if (*(a3 + 2) == 19)
  {
    v18 = *a3;
  }

  else if (!luaV_tointeger(a3, &v18))
  {
    return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
  }

  if (*(a4 + 2) == 19)
  {
    v12 = *a4;
    v17 = *a4;
LABEL_15:
    result = intarith(v9, a2, *&v18, v12);
    *a5 = result;
    v11 = 19;
LABEL_16:
    *(a5 + 8) = v11;
    return result;
  }

  if (luaV_tointeger(a4, &v17))
  {
    v12 = v17;
    goto LABEL_15;
  }

  return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
}

unint64_t intarith(void *a1, int a2, unint64_t a3, uint64_t a4)
{
  if (a2 > 7)
  {
    if (a2 > 10)
    {
      if (a2 == 11)
      {
        return luaV_shiftl(a3, -a4);
      }

      else
      {
        if (a2 == 13)
        {
          v7 = ~a3;
        }

        else
        {
          v7 = 0;
        }

        if (a2 == 12)
        {
          return -a3;
        }

        else
        {
          return v7;
        }
      }
    }

    else if (a2 == 8)
    {
      return a4 | a3;
    }

    else if (a2 == 9)
    {
      return a4 ^ a3;
    }

    else
    {
      return luaV_shiftl(a3, a4);
    }
  }

  else if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return luaV_mod(a1, a3, a4);
      case 6:
        return luaV_div(a1, a3, a4);
      case 7:
        return a4 & a3;
      default:
        return 0;
    }
  }

  else
  {
    v4 = a3 - a4;
    v5 = a4 * a3;
    if (a2 != 2)
    {
      v5 = 0;
    }

    if (a2 != 1)
    {
      v4 = v5;
    }

    if (a2)
    {
      return v4;
    }

    else
    {
      return a4 + a3;
    }
  }
}

uint64_t luaO_hexavalue(int a1)
{
  if ((luai_ctype_[a1 + 1] & 2) != 0)
  {
    return (a1 - 48);
  }

  else
  {
    return (a1 | 0x20u) - 87;
  }
}

uint64_t luaO_str2num(char *__s1, uint64_t a2)
{
  v4 = __s1;
  do
  {
    v6 = *v4++;
    v5 = v6;
  }

  while ((luai_ctype_[v6 + 1] & 8) != 0);
  if (v5 == 43)
  {
    v7 = 1;
  }

  else
  {
    if (v5 != 45)
    {
      --v4;
      v7 = 1;
      goto LABEL_9;
    }

    v7 = 0;
  }

  v5 = *v4;
LABEL_9:
  if (v5 == 48 && (v4[1] | 0x20) == 0x78)
  {
    v9 = v4[2];
    v4 += 2;
    v8 = v9;
    if ((luai_ctype_[v9 + 1] & 0x10) != 0)
    {
      v10 = 0;
      do
      {
        v11 = 16 * v10;
        if ((luai_ctype_[v8 + 1] & 2) != 0)
        {
          v12 = v8 - 48;
        }

        else
        {
          v12 = (v8 | 0x20) - 87;
        }

        v10 = v11 + v12;
        v13 = *++v4;
        v8 = v13;
      }

      while ((luai_ctype_[v13 + 1] & 0x10) != 0);
      goto LABEL_22;
    }
  }

  else if ((luai_ctype_[v5 + 1] & 2) != 0)
  {
    v10 = 0;
    do
    {
      v10 = 10 * v10 + v5 - 48;
      v15 = *++v4;
      LOBYTE(v5) = v15;
    }

    while ((luai_ctype_[v15 + 1] & 2) != 0);
LABEL_22:
    v14 = 1;
    goto LABEL_23;
  }

  v10 = 0;
  v14 = 0;
LABEL_23:
  v16 = v4 - 1;
  do
  {
    v18 = *++v16;
    v17 = v18;
  }

  while ((luai_ctype_[v18 + 1] & 8) != 0);
  v19 = v14 ^ 1;
  if (v17)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    if (v7)
    {
      v20 = v10;
    }

    else
    {
      v20 = -v10;
    }

    v21 = v20;
    v22 = 19;
    goto LABEL_32;
  }

  if (!cstdlib_strpbrk(__s1, "nN"))
  {
    v27 = 0;
    cstdlib_strtod(__s1, &v27);
    v16 = v27;
    if (v27 != __s1)
    {
      v24 = *v27;
      if ((luai_ctype_[v24 + 1] & 8) != 0)
      {
        v25 = (v27 + 1);
        do
        {
          v27 = v25;
          v26 = *v25++;
          LODWORD(v24) = v26;
        }

        while ((luai_ctype_[v26 + 1] & 8) != 0);
        v16 = (v25 - 1);
      }

      if (!v24)
      {
        v22 = 3;
LABEL_32:
        *a2 = v21;
        *(a2 + 8) = v22;
        return v16 - __s1 + 1;
      }
    }
  }

  return 0;
}

uint64_t luaO_utf8esc(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = (a1 + 7);
    LODWORD(v5) = 63;
    v6 = 0x700000000;
    LODWORD(v2) = 1;
    do
    {
      *v4-- = a2 & 0x3F | 0x80;
      a2 >>= 6;
      v5 = v5 >> 1;
      v6 -= 0x100000000;
      v2 = (v2 + 1);
    }

    while (a2 > v5);
    LOBYTE(a2) = a2 | (2 * ~v5);
    v3 = v6 >> 32;
  }

  else
  {
    v2 = 1;
    v3 = 7;
  }

  *(a1 + v3) = a2;
  return v2;
}

uint64_t luaO_tostring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 19)
  {
    v10 = luaI_snprintf(a1, __s, 50, "%d", a5, a6, a7, a8, *a2);
  }

  else
  {
    v10 = luaI_snprintf(a1, __s, 50, "%.14g", a5, a6, a7, a8, *a2);
    if (!__s[cstdlib_strcspn(__s, "-0123456789")])
    {
      *&__s[v10] = 12334;
      v10 += 2;
    }
  }

  result = luaS_newlstr(a1, __s, v10);
  *a2 = result;
  *(a2 + 8) = *(result + 8) | 0x40;
  return result;
}

uint64_t luaO_pushvfstring(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = __s;
  v46[4] = *MEMORY[0x277D85DE8];
  v5 = cstdlib_strchr(__s, 37);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + 16);
      if (*(a1 + 48) - v8 <= 32)
      {
        luaD_growstack(a1, 2);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = v8 + 16;
      v9 = luaS_newlstr(a1, v3, v6 - v3);
      *v8 = v9;
      *(v8 + 8) = *(v9 + 8) | 0x40;
      v16 = v6[1];
      if (v16 > 0x63)
      {
        break;
      }

      if (v6[1] <= 0x54u)
      {
        if (v16 == 37)
        {
          v27 = *(a1 + 16);
          *(a1 + 16) = v27 + 16;
          v28 = a1;
          v29 = "%";
LABEL_33:
          v26 = 1;
          goto LABEL_34;
        }

        if (v16 != 73)
        {
          goto LABEL_31;
        }

        v17 = *(a1 + 16);
        *(a1 + 16) = v17 + 16;
        v18 = a3++;
        v19 = *v18;
LABEL_26:
        *v17 = v19;
        *(v17 + 8) = 19;
        goto LABEL_27;
      }

      if (v16 == 85)
      {
        v31 = a3++;
        v26 = luaO_utf8esc(__s1, *v31);
        v29 = v46 - v26;
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        goto LABEL_30;
      }

      if (v16 != 99)
      {
        goto LABEL_31;
      }

      v22 = a3++;
      __s1[0] = *v22;
      if ((luai_ctype_[__s1[0] + 1] & 4) != 0)
      {
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
        v28 = a1;
        goto LABEL_33;
      }

      luaO_pushfstring(a1, "<\\%d>", __s1[0]);
LABEL_35:
      v7 += 2;
      v3 = v6 + 2;
      v6 = cstdlib_strchr(v6 + 2, 37);
      if (!v6)
      {
        goto LABEL_38;
      }
    }

    if (v6[1] > 0x6Fu)
    {
      if (v16 == 112)
      {
        v32 = a3++;
        v26 = luaI_snprintf(a1, __s1, 40, "%p", v12, v13, v14, v15, *v32);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
LABEL_30:
        v28 = a1;
LABEL_34:
        v33 = luaS_newlstr(v28, v29, v26);
        *v27 = v33;
        *(v27 + 8) = *(v33 + 8) | 0x40;
        goto LABEL_35;
      }

      if (v16 == 115)
      {
        v23 = a3++;
        v24 = *v23;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = "(null)";
        }

        v26 = cstdlib_strlen(v25);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v28 = a1;
        v29 = v25;
        goto LABEL_34;
      }

LABEL_31:
      luaG_runerror(a1, "invalid option '%%%c' to 'lua_pushfstring'", v16);
      goto LABEL_35;
    }

    if (v16 == 100)
    {
      v17 = *(a1 + 16);
      *(a1 + 16) = v17 + 16;
      v30 = a3++;
      v19 = *v30;
      goto LABEL_26;
    }

    if (v16 != 102)
    {
      goto LABEL_31;
    }

    v20 = *(a1 + 16);
    *(a1 + 16) = v20 + 16;
    v21 = a3++;
    *v20 = *v21;
    *(v20 + 8) = 3;
LABEL_27:
    luaO_tostring(a1, *(a1 + 16) - 16, v10, v11, v12, v13, v14, v15);
    goto LABEL_35;
  }

  v7 = 0;
LABEL_38:
  if ((*(a1 + 48) - *(a1 + 16)) <= 16)
  {
    luaD_growstack(a1, 1);
  }

  v34 = cstdlib_strlen(v3);
  v35 = *(a1 + 16);
  *(a1 + 16) = v35 + 16;
  v36 = luaS_newlstr(a1, v3, v34);
  *v35 = v36;
  *(v35 + 8) = *(v36 + 8) | 0x40;
  if (v7)
  {
    luaV_concat(a1, v7 | 1, v37, v38, v39, v40, v41, v42);
  }

  return *(*(a1 + 16) - 16) + 24;
}

void *luaO_chunkid(char *a1, char *__s, size_t a3)
{
  v6 = cstdlib_strlen(__s);
  v7 = v6;
  v8 = *__s;
  if (v8 != 64)
  {
    if (v8 != 61)
    {
      v13 = cstdlib_strchr(__s, 10);
      cstdlib_memcpy(a1, "[string ", 9uLL);
      v14 = a1 + 9;
      if (v7 >= a3 - 15 || v13)
      {
        v15 = v13 - __s;
        if (!v13)
        {
          v15 = v7;
        }

        if (v15 >= a3 - 15)
        {
          v16 = a3 - 15;
        }

        else
        {
          v16 = v15;
        }

        cstdlib_memcpy(v14, __s, v16);
        cstdlib_memcpy(&v14[v16], "...", 3uLL);
        v11 = &v14[v16 + 3];
      }

      else
      {
        cstdlib_memcpy(v14, __s, v7);
        v11 = &v14[v7];
      }

      v12 = "]";
      v10 = 3;
      goto LABEL_18;
    }

    if (v6 > a3)
    {
      result = cstdlib_memcpy(a1, __s + 1, a3 - 1);
      a1[a3 - 1] = 0;
      return result;
    }

    goto LABEL_7;
  }

  if (v6 <= a3)
  {
LABEL_7:
    v12 = __s + 1;
    v11 = a1;
    v10 = v7;
    goto LABEL_18;
  }

  cstdlib_memcpy(a1, "...", 3uLL);
  v10 = a3 - 3;
  v11 = a1 + 3;
  v12 = &__s[v7 - a3 + 4];
LABEL_18:

  return cstdlib_memcpy(v11, v12, v10);
}

uint64_t luaY_parser(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, int a6)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v12 = luaF_newLclosure(a1, 1u);
  v13 = *(a1 + 16);
  *v13 = v12;
  *(v13 + 8) = 70;
  v14 = *(a1 + 16) + 16;
  *(a1 + 16) = v14;
  if (*(a1 + 48) - v14 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  *&v33 = luaH_new(a1);
  v15 = *(a1 + 16);
  *v15 = v33;
  *(v15 + 8) = 69;
  v16 = *(a1 + 16) + 16;
  *(a1 + 16) = v16;
  if (*(a1 + 48) - v16 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  v18 = v17;
  *(v12 + 24) = v17;
  *&v24 = v17;
  v19 = luaS_new(a1, a5);
  *(v18 + 104) = v19;
  *(&v32 + 1) = a3;
  *(&v33 + 1) = a4;
  a4[10] = 0;
  a4[6] = 0;
  a4[2] = 0;
  luaX_setinput(a1, &v28, a2, v19, a6);
  v40 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v20 = *(&v33 + 1);
  *(&v24 + 1) = v31;
  *&v25 = &v28;
  *&v31 = &v24;
  v26 = xmmword_26ECCEB30;
  BYTE12(v27) = 0;
  v21 = *(*(&v33 + 1) + 8);
  LODWORD(v27) = 0;
  *(&v27 + 4) = v21;
  *(v18 + 104) = v34;
  v22 = *(v20 + 40);
  *(v18 + 11) = 513;
  LODWORD(v20) = *(v20 + 24);
  v38 = v22;
  v39 = v20;
  v37 = 0;
  *(&v25 + 1) = &v37;
  v36[2] = -1;
  LODWORD(v36[0]) = 8;
  newupvalue(&v24, *(&v34 + 1), v36);
  luaX_next(&v28);
  statlist(&v28);
  if (v29 != 289)
  {
    error_expected(&v28, 289);
  }

  close_func(&v28);
  *(a1 + 16) -= 16;
  return v12;
}

uint64_t newupvalue(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = (*a1 + 16);
  v8 = *v7;
  checklimit(a1, *(a1 + 59) + 1, 255, "upvalues");
  v9 = *v7;
  if (*v7 <= *(a1 + 59))
  {
    *(v6 + 88) = luaM_growaux_(*(*(a1 + 16) + 56), *(v6 + 88), v7, 16, 255, "upvalues");
    v9 = *(v6 + 16);
  }

  v10 = *(v6 + 88);
  if (v8 < v9)
  {
    v11 = 0;
    v12 = v9 - v8;
    v13 = (v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = (v10 + 16 * v8 + 16);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_26ECC7980)));
      if (v16.i8[0])
      {
        *(v15 - 2) = 0;
      }

      if (v16.i8[4])
      {
        *v15 = 0;
      }

      v11 += 2;
      v15 += 4;
    }

    while (v13 != v11);
  }

  result = *(a1 + 59);
  v18 = v10 + 16 * result;
  *(v18 + 8) = *a3 == 8;
  *(v18 + 9) = a3[2];
  *v18 = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(*(*(a1 + 16) + 56), v6, a2);
    result = *(a1 + 59);
  }

  *(a1 + 59) = result + 1;
  return result;
}

void statlist(__n128 *a1)
{
  while (1)
  {
    v2 = a1[1].n128_u32[0] - 260;
    if (v2 <= 0x1D)
    {
      if (((1 << v2) & 0x20020007) != 0)
      {
        return;
      }

      if (a1[1].n128_u32[0] == 274)
      {
        break;
      }
    }

    statement(a1);
  }

  statement(a1);
}

uint64_t close_func(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *v3;
  luaK_ret(v3, 0, 0);
  leaveblock(v3);
  *(v4 + 56) = luaM_realloc_(v2, *(v4 + 56), 4 * *(v4 + 24), 4 * *(v3 + 32));
  v5 = *(v3 + 32);
  *(v4 + 24) = v5;
  *(v4 + 72) = luaM_realloc_(v2, *(v4 + 72), 4 * *(v4 + 28), 4 * v5);
  *(v4 + 28) = *(v3 + 32);
  *(v4 + 48) = luaM_realloc_(v2, *(v4 + 48), 16 * *(v4 + 20), 16 * *(v3 + 44));
  v6 = *(v3 + 48);
  *(v4 + 20) = *(v3 + 44);
  *(v4 + 64) = luaM_realloc_(v2, *(v4 + 64), 8 * *(v4 + 32), 8 * v6);
  *(v4 + 32) = *(v3 + 48);
  *(v4 + 80) = luaM_realloc_(v2, *(v4 + 80), 16 * *(v4 + 36), 16 * *(v3 + 56));
  *(v4 + 36) = *(v3 + 56);
  result = luaM_realloc_(v2, *(v4 + 88), 16 * *(v4 + 16), 16 * *(v3 + 59));
  *(v4 + 88) = result;
  *(v4 + 16) = *(v3 + 59);
  *(a1 + 48) = *(v3 + 8);
  if (*(*(v2 + 24) + 24) >= 1)
  {

    return luaC_step(v2);
  }

  return result;
}

void *checklimit(void *result, int a2, int a3, const char *a4)
{
  if (a2 > a3)
  {
    v7 = result;
    v8 = *(result[2] + 56);
    if (*(*result + 40))
    {
      v9 = luaO_pushfstring(v8, "function at line %d", *(*result + 40));
    }

    else
    {
      v9 = "main function";
    }

    v10 = luaO_pushfstring(v8, "too many %s (limit is %d) in %s", a4, a3, v9);
    v11 = v7[2];

    return luaX_syntaxerror(v11, v10);
  }

  return result;
}

void statement(__n128 *a1)
{
  v2 = a1->n128_i32[1];
  v3 = a1[3].n128_u64[1];
  v4 = *(v3 + 198) + 1;
  *(v3 + 198) = v4;
  checklimit(a1[3].n128_u64[0], v4, 200, "C levels");
  v5 = a1[1].n128_i32[0];
  if (v5 <= 266)
  {
    if (v5 <= 263)
    {
      if (v5 != 59)
      {
        if (v5 != 258)
        {
          if (v5 == 259)
          {
            luaX_next(a1);
            block(a1);
            check_match(a1, 262, 259, v2);
            goto LABEL_102;
          }

          goto LABEL_69;
        }

LABEL_16:
        v11 = luaK_jump(a1[3].n128_i64[0]);
        gotostat(a1, v11);
        goto LABEL_102;
      }

LABEL_59:
      luaX_next(a1);
      goto LABEL_102;
    }

    if (v5 != 264)
    {
      if (v5 == 265)
      {
        v70 = 0uLL;
        *&v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        luaX_next(a1);
        singlevar(a1, &v70);
        while (1)
        {
          v43 = a1[1].n128_u32[0];
          if (v43 != 46)
          {
            break;
          }

          fieldsel(a1, &v70);
        }

        if (v43 == 58)
        {
          fieldsel(a1, &v70);
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        body(a1, &v72, v49, v2);
        luaK_storevar(a1[3].n128_i64[0], &v70, &v72);
        luaK_fixline(a1[3].n128_u64[0], v2);
        goto LABEL_102;
      }

      goto LABEL_16;
    }

    v6 = a1[3].n128_i64[0];
    v74 = 0x10000;
    LOBYTE(v74) = *(v6 + 58);
    v34 = *(v6 + 24);
    v73 = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
    v72 = v34;
    *(v6 + 24) = &v72;
    luaX_next(a1);
    v35 = str_checkname(a1);
    v36 = a1[1].n128_u32[0];
    if (v36 == 44 || v36 == 268)
    {
      v54 = a1[3].n128_i64[0];
      v70 = 0uLL;
      *&v71 = 0;
      v55 = *(v54 + 60);
      v56 = luaX_newstring(a1, "(for generator)", 0xFuLL);
      new_localvar(a1, v56);
      v57 = luaX_newstring(a1, "(for state)", 0xBuLL);
      new_localvar(a1, v57);
      v58 = luaX_newstring(a1, "(for control)", 0xDuLL);
      new_localvar(a1, v58);
      new_localvar(a1, v35);
      v59 = a1[1].n128_u32[0];
      v60 = 1;
      while (v59 == 44)
      {
        luaX_next(a1);
        v61 = str_checkname(a1);
        new_localvar(a1, v61);
        v59 = a1[1].n128_u32[0];
        ++v60;
      }

      checknext(a1, 268);
      v62 = a1->n128_i32[1];
      v63 = explist(a1, &v70);
      adjust_assign(a1, 3, v63, &v70);
      luaK_checkstack(v54, 3);
      forbody(a1, v55, v62, v60, 0);
    }

    else if (v36 == 61)
    {
      fornum(a1, v35, v2);
    }

    else
    {
      luaX_syntaxerror(a1, "'=' or 'in' expected");
    }

    check_match(a1, 262, 264, v2);
LABEL_101:
    leaveblock(v6);
    goto LABEL_102;
  }

  if (v5 <= 273)
  {
    if (v5 != 267)
    {
      if (v5 == 269)
      {
        luaX_next(a1);
        if (a1[1].n128_u32[0] == 265)
        {
          luaX_next(a1);
          v70 = 0uLL;
          *&v71 = 0;
          v41 = a1[3].n128_u64[0];
          v42 = str_checkname(a1);
          new_localvar(a1, v42);
          adjustlocalvars(a1, 1u);
          body(a1, &v70, 0, a1->n128_i32[1]);
          *(*(*v41 + 80) + 16 * *(**(*(v41 + 16) + 88) + 2 * (*(v41 + 52) + DWORD2(v70))) + 8) = *(v41 + 32);
        }

        else
        {
          v70 = 0uLL;
          *&v71 = 0;
          v64 = str_checkname(a1);
          new_localvar(a1, v64);
          v65 = a1[1].n128_u32[0];
          v66 = 1;
          while (v65 == 44)
          {
            luaX_next(a1);
            v67 = str_checkname(a1);
            new_localvar(a1, v67);
            ++v66;
            v65 = a1[1].n128_u32[0];
          }

          if (v65 == 61)
          {
            luaX_next(a1);
            v68 = explist(a1, &v70);
          }

          else
          {
            v68 = 0;
            LODWORD(v70) = 0;
          }

          adjust_assign(a1, v66, v68, &v70);
          adjustlocalvars(a1, v66);
        }

        goto LABEL_102;
      }

      if (v5 != 273)
      {
        goto LABEL_69;
      }

      v6 = a1[3].n128_i64[0];
      v7 = luaK_getlabel(v6);
      *&v71 = 0x10000;
      v74 = 0;
      LOBYTE(v71) = *(v6 + 58);
      v8 = *(v6 + 24);
      *(&v70 + 1) = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
      *&v70 = v8;
      LOBYTE(v74) = v71;
      v73 = *(&v70 + 1);
      v72 = &v70;
      *(v6 + 24) = &v72;
      *&v9 = luaX_next(a1).n128_u64[0];
      statlist(a1, v9);
      check_match(a1, 277, 273, v2);
      v10 = cond(a1);
      if (BYTE1(v74))
      {
        luaK_patchclose(v6, v10, v74);
      }

      leaveblock(v6);
      luaK_patchlist(v6, v10, v7);
      goto LABEL_101;
    }

    v23 = a1[3].n128_i64[0];
    v69 = -1;
    do
    {
      v70 = 0uLL;
      *&v71 = 0;
      v24 = a1[3].n128_i64[0];
      v72 = 0;
      v73 = 0;
      v74 = 0;
      luaX_next(a1);
      subexpr(a1, &v72, 0);
      checknext(a1, 275);
      if ((a1[1].n128_u32[0] | 8) == 0x10A)
      {
        luaK_goiffalse(a1[3].n128_i64[0], &v72);
        LOBYTE(v71) = *(v24 + 58);
        *(&v71 + 1) = 0;
        v25 = *(v24 + 24);
        *(&v70 + 1) = __PAIR64__(*(*(*(v24 + 16) + 88) + 24), *(*(*(v24 + 16) + 88) + 40));
        *&v70 = v25;
        *(v24 + 24) = &v70;
        gotostat(a1, v74);
        while (1)
        {
          v26 = a1[1].n128_i32[0];
          if (v26 > 287)
          {
            if (v26 != 288)
            {
              if (v26 != 289)
              {
LABEL_43:
                v29 = luaK_jump(v24);
                goto LABEL_44;
              }

LABEL_40:
              leaveblock(v24);
              goto LABEL_47;
            }
          }

          else if (v26 != 59)
          {
            if ((v26 - 260) >= 3)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }

          statement(a1);
        }
      }

      luaK_goiftrue(a1[3].n128_i64[0], &v72);
      LOBYTE(v71) = *(v24 + 58);
      *(&v71 + 1) = 0;
      v28 = *(v24 + 24);
      *(&v70 + 1) = __PAIR64__(*(*(*(v24 + 16) + 88) + 24), *(*(*(v24 + 16) + 88) + 40));
      *&v70 = v28;
      *(v24 + 24) = &v70;
      v29 = HIDWORD(v74);
LABEL_44:
      statlist(a1, v27);
      leaveblock(v24);
      if ((a1[1].n128_u32[0] & 0xFFFFFFFE) == 0x104)
      {
        v30 = luaK_jump(v24);
        luaK_concat(v24, &v69, v30);
      }

      luaK_patchtohere(v24, v29);
LABEL_47:
      v31 = a1[1].n128_u32[0];
    }

    while (v31 == 261);
    if (v31 == 260)
    {
      luaX_next(a1);
      block(a1);
    }

    check_match(a1, 262, 267, v2);
    v32 = v69;
    v33 = v23;
LABEL_66:
    luaK_patchtohere(v33, v32);
    goto LABEL_102;
  }

  if (v5 == 274)
  {
    luaX_next(a1);
    v37 = 0;
    v38 = a1[3].n128_u64[0];
    v70 = 0uLL;
    *&v71 = 0;
    v39 = a1[1].n128_u32[0];
    if (v39 - 260 <= 0x1D && ((1 << (v39 - 4)) & 0x20020007) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = 0;
      if (v39 != 59)
      {
        v40 = explist(a1, &v70);
        if ((v70 - 13) > 1)
        {
          if (v40 == 1)
          {
            v37 = luaK_exp2anyreg(v38, &v70);
          }

          else
          {
            luaK_exp2nextreg(v38, &v70);
            v37 = v38[58];
          }
        }

        else
        {
          luaK_setreturns(v38, &v70, -1);
          if (v70 == 13 && v40 == 1)
          {
            *(*(*v38 + 56) + 4 * SDWORD2(v70)) = *(*(*v38 + 56) + 4 * SDWORD2(v70)) & 0xFFFFFFC0 | 0x25;
          }

          v37 = v38[58];
          v40 = -1;
        }
      }
    }

    luaK_ret(v38, v37, v40);
    if (a1[1].n128_u32[0] != 59)
    {
      goto LABEL_102;
    }

    goto LABEL_59;
  }

  if (v5 == 278)
  {
    v44 = a1[3].n128_i64[0];
    *&v71 = 0x10000;
    luaX_next(a1);
    v45 = luaK_getlabel(v44);
    v46 = cond(a1);
    LOBYTE(v71) = *(v44 + 58);
    v47 = *(v44 + 24);
    *(&v70 + 1) = __PAIR64__(*(*(*(v44 + 16) + 88) + 24), *(*(*(v44 + 16) + 88) + 40));
    *&v70 = v47;
    *(v44 + 24) = &v70;
    checknext(a1, 259);
    block(a1);
    v48 = luaK_jump(v44);
    luaK_patchlist(v44, v48, v45);
    check_match(a1, 262, 278, v2);
    leaveblock(v44);
    v33 = v44;
    v32 = v46;
    goto LABEL_66;
  }

  if (v5 != 288)
  {
LABEL_69:
    v50 = a1[3].n128_u64[0];
    v70 = 0u;
    v71 = 0u;
    suffixedexp(a1, &v70 + 2);
    v51 = a1[1].n128_u32[0];
    if (v51 == 61 || v51 == 44)
    {
      *&v70 = 0;
      assignment(a1, &v70, 1);
    }

    else
    {
      if (DWORD2(v70) != 13)
      {
        luaX_syntaxerror(a1, "syntax error");
      }

      *(*(*v50 + 56) + 4 * v71) = *(*(*v50 + 56) + 4 * v71) & 0xFF803FFF | 0x4000;
    }

    goto LABEL_102;
  }

  luaX_next(a1);
  v12 = str_checkname(a1);
  v13 = a1[3].n128_u64[0];
  v14 = a1[5].n128_u64[1];
  v15 = *(*(v13 + 24) + 8);
  v16 = *(v14 + 40);
  if (v15 < v16)
  {
    v17 = 24 * v15;
    do
    {
      v18 = *(v14 + 32);
      if (*(v18 + v17) == v12)
      {
        v19 = luaO_pushfstring(*(*(v13 + 16) + 56), "label '%s' already defined on line %d", (v12 + 24), *(v18 + v17 + 12));
        v20 = *(v13 + 16);
        *(v20 + 16) = 0;
        luaX_syntaxerror(v20, v19);
        v16 = *(v14 + 40);
      }

      ++v15;
      v17 += 24;
    }

    while (v15 < v16);
  }

  checknext(a1, 288);
  v21 = newlabelentry(a1, v14 + 32, v12, v2, *(v13 + 32));
  while (1)
  {
    v22 = a1[1].n128_i32[0];
    if (v22 <= 287)
    {
      break;
    }

    if (v22 != 288)
    {
      if (v22 != 289)
      {
        goto LABEL_90;
      }

LABEL_73:
      v52 = *(v14 + 32);
      v53 = v21;
      *(v52 + 24 * v21 + 16) = *(*(v13 + 24) + 16);
      goto LABEL_74;
    }

LABEL_30:
    statement(a1);
  }

  if (v22 == 59)
  {
    goto LABEL_30;
  }

  if ((v22 - 260) < 3)
  {
    goto LABEL_73;
  }

LABEL_90:
  v52 = *(v14 + 32);
  v53 = v21;
LABEL_74:
  findgotos(a1, (v52 + 24 * v53));
LABEL_102:
  *(a1[3].n128_u64[0] + 60) = *(a1[3].n128_u64[0] + 58);
  --*(a1[3].n128_u64[1] + 198);
}

uint64_t block(uint64_t a1)
{
  v1 = *(a1 + 48);
  v9 = 0;
  LOBYTE(v9) = *(v1 + 58);
  v2 = *(v1 + 24);
  v3 = *(*(v1 + 16) + 88);
  v4 = *(v3 + 40);
  LODWORD(v3) = *(v3 + 24);
  v7 = v4;
  v8 = v3;
  v6 = v2;
  *(v1 + 24) = &v6;
  statlist();
  return leaveblock(v1);
}

void check_match(__n128 *a1, int a2, int a3, int a4)
{
  if (a1[1].n128_u32[0] == a2)
  {

    luaX_next(a1);
  }

  else if (a1->n128_u32[1] == a4)
  {

    error_expected(a1, a2);
  }

  else
  {
    v7 = a1[3].n128_i64[1];
    v8 = luaX_token2str(a1, a2);
    v9 = luaX_token2str(a1, a3);
    v10 = luaO_pushfstring(v7, "%s expected (to close %s at line %d)", v8, v9, a4);

    luaX_syntaxerror(a1, v10);
  }
}

unint64_t str_checkname(__n128 *a1)
{
  if (a1[1].n128_u32[0] != 292)
  {
    error_expected(a1, 292);
  }

  v2 = a1[1].n128_u64[1];
  luaX_next(a1);
  return v2;
}

uint64_t gotostat(__n128 *a1, int a2)
{
  v4 = a1->n128_i32[1];
  v5 = a1[1].n128_u32[0];
  luaX_next(a1);
  if (v5 == 266)
  {
    v6 = str_checkname(a1);
  }

  else
  {
    v6 = luaS_new(a1[3].n128_i64[1], "break");
  }

  v7 = newlabelentry(a1, a1[5].n128_u64[1] + 16, v6, v4, a2);

  return findlabel(a1, v7);
}

double checknext(__n128 *a1, int a2)
{
  if (a1[1].n128_u32[0] != a2)
  {
    error_expected(a1, a2);
  }

  *&result = luaX_next(a1).n128_u64[0];
  return result;
}

uint64_t leaveblock(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (*v3 && *(v3 + 17))
  {
    v4 = luaK_jump(result);
    luaK_patchclose(v1, v4, *(v3 + 16));
    result = luaK_patchtohere(v1, v4);
  }

  if (*(v3 + 18))
  {
    v5 = luaS_new(*(v2 + 56), "break");
    v6 = newlabelentry(v2, *(v2 + 88) + 32, v5, 0, *(*(v2 + 48) + 32));
    result = findgotos(v2, (*(*(v2 + 88) + 32) + 24 * v6));
  }

  v7 = *v3;
  *(v1 + 24) = *v3;
  v8 = *(v3 + 16);
  v9 = *(v1 + 58);
  v10 = *(*(v1 + 16) + 88);
  *(v10 + 8) += v8 - v9;
  if (v8 < v9)
  {
    v11 = *(v1 + 32);
    v12 = *(*v1 + 80);
    v13 = *v10 + 2 * *(v1 + 52) - 2;
    do
    {
      v14 = *(v13 + 2 * v9--);
      *(v12 + 16 * v14 + 12) = v11;
    }

    while (v9 > v8);
    *(v1 + 58) = v9;
  }

  *(v1 + 60) = v9;
  v15 = *(v2 + 88);
  v16 = *(v3 + 3);
  *(v15 + 40) = *(v3 + 2);
  if (v7)
  {
    while (v16 < *(v10 + 24))
    {
      v17 = *(v10 + 16) + 24 * v16;
      v18 = *(v3 + 16);
      if (*(v17 + 16) > v18)
      {
        if (*(v3 + 17))
        {
          luaK_patchclose(v1, *(v17 + 8), v18);
          LOBYTE(v18) = *(v3 + 16);
        }

        *(v17 + 16) = v18;
      }

      result = findlabel(*(v1 + 16), v16);
      if (!result)
      {
        ++v16;
      }
    }
  }

  else if (v16 < *(v15 + 24))
  {
    v19 = (*(v15 + 16) + 24 * v16);
    v20 = *v19;
    v21 = "no visible label '%s' for <goto> at line %d";
    if (*(*v19 + 8) == 4 && *(v20 + 10))
    {
      v21 = "<%s> at line %d not inside a loop";
    }

    v22 = luaO_pushfstring(*(v2 + 56), v21, v20 + 24, v19[3]);
    *(v2 + 16) = 0;

    return luaX_syntaxerror(v2, v22);
  }

  return result;
}

uint64_t subexpr(__n128 *a1, uint64_t a2, int a3)
{
  v8 = a1 + 3;
  v6 = a1[3].n128_u64[0];
  v7 = v8->n128_i64[1];
  v9 = *(v7 + 198) + 1;
  *(v7 + 198) = v9;
  checklimit(v6, v9, 200, "C levels");
  v10 = a1[1].n128_i32[0];
  if (v10 <= 269)
  {
    if (v10 > 125)
    {
      if (v10 != 126)
      {
        if (v10 != 263)
        {
          if (v10 == 265)
          {
            luaX_next(a1);
            body(a1, a2, 0, a1->n128_i32[1]);
            goto LABEL_37;
          }

          goto LABEL_72;
        }

        *(a2 + 16) = -1;
        v11 = 3;
        goto LABEL_35;
      }

      v15 = 1;
    }

    else
    {
      switch(v10)
      {
        case '#':
          v15 = 3;
          break;
        case '-':
          v15 = 0;
          break;
        case '{':
          constructor(a1, a2);
          goto LABEL_37;
        default:
          goto LABEL_72;
      }
    }

LABEL_33:
    v16 = a1->n128_i32[1];
    luaX_next(a1);
    subexpr(a1, a2, 12);
    luaK_prefix(a1[3].n128_i64[0], v15, a2, v16);
    goto LABEL_37;
  }

  if (v10 <= 280)
  {
    if (v10 == 270)
    {
      *(a2 + 16) = -1;
      v11 = 1;
      goto LABEL_35;
    }

    if (v10 != 271)
    {
      if (v10 != 276)
      {
        goto LABEL_72;
      }

      *(a2 + 16) = -1;
      v11 = 2;
LABEL_35:
      *a2 = v11;
      *(a2 + 8) = 0;
      goto LABEL_36;
    }

    v15 = 2;
    goto LABEL_33;
  }

  if (v10 > 290)
  {
    if (v10 == 291)
    {
      *(a2 + 16) = -1;
      *a2 = 6;
      *(a2 + 8) = 0;
      *(a2 + 8) = a1[1].n128_u64[1];
      goto LABEL_36;
    }

    if (v10 != 293)
    {
      goto LABEL_72;
    }

    v12 = luaK_stringK(a1[3].n128_i64[0], a1[1].n128_i64[1]);
    *(a2 + 16) = -1;
    v13 = 4;
LABEL_26:
    *a2 = v13;
    *(a2 + 8) = v12;
    goto LABEL_36;
  }

  if (v10 == 281)
  {
    v14 = a1[3].n128_i64[0];
    if (!*(*v14 + 11))
    {
      luaX_syntaxerror(a1, "cannot use '...' outside a vararg function");
    }

    v12 = luaK_codeABC(v14, 45, 0, 1, 0);
    *(a2 + 16) = -1;
    v13 = 14;
    goto LABEL_26;
  }

  if (v10 == 290)
  {
    *(a2 + 16) = -1;
    *a2 = 5;
    *(a2 + 8) = 0;
    *(a2 + 8) = a1[1].n128_u64[1];
LABEL_36:
    luaX_next(a1);
    goto LABEL_37;
  }

LABEL_72:
  suffixedexp(a1, a2);
LABEL_37:
  v17 = a1[1].n128_i32[0];
  v18 = 21;
  if (v17 <= 125)
  {
    if (v17 > 46)
    {
      if (v17 <= 61)
      {
        if (v17 == 47)
        {
          v18 = 5;
        }

        else
        {
          if (v17 != 60)
          {
            goto LABEL_88;
          }

          v18 = 14;
        }
      }

      else
      {
        switch(v17)
        {
          case '>':
            v18 = 17;
            break;
          case '^':
            v18 = 4;
            break;
          case '|':
            v18 = 8;
            break;
          default:
            goto LABEL_88;
        }
      }
    }

    else if (v17 <= 41)
    {
      if (v17 == 37)
      {
        v18 = 3;
      }

      else
      {
        if (v17 != 38)
        {
          goto LABEL_88;
        }

        v18 = 7;
      }
    }

    else
    {
      switch(v17)
      {
        case '*':
          v18 = 2;
          break;
        case '+':
          v18 = 0;
          break;
        case '-':
          v18 = 1;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v17 <= 281)
  {
    if (v17 <= 271)
    {
      if (v17 == 126)
      {
        v18 = 9;
      }

      else
      {
        if (v17 != 257)
        {
          goto LABEL_88;
        }

        v18 = 19;
      }
    }

    else
    {
      switch(v17)
      {
        case 272:
          v18 = 20;
          break;
        case 279:
          v18 = 6;
          break;
        case 280:
          v18 = 12;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v17 > 284)
  {
    switch(v17)
    {
      case 285:
        v18 = 16;
        break;
      case 286:
        v18 = 10;
        break;
      case 287:
        v18 = 11;
        break;
      default:
        goto LABEL_88;
    }
  }

  else if (v17 == 282)
  {
    v18 = 13;
  }

  else if (v17 == 283)
  {
    v18 = 18;
  }

  else
  {
    v18 = 15;
  }

  do
  {
    v19 = &priority[2 * v18];
    if (*v19 <= a3)
    {
      break;
    }

    memset(v23, 0, sizeof(v23));
    v20 = a1->n128_i32[1];
    luaX_next(a1);
    luaK_infix(a1[3].n128_i64[0], v18, a2);
    v21 = subexpr(a1, v23, v19[1]);
    luaK_posfix(a1[3].n128_i64[0], v18, a2, v23, v20);
    v18 = v21;
  }

  while (v21 != 21);
LABEL_88:
  --*(a1[3].n128_u64[1] + 198);
  return v18;
}

uint64_t constructor(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_u64[0];
  v5 = a1->n128_i32[1];
  v6 = luaK_codeABC(v4, 11, 0, 0, 0);
  v14 = 0u;
  v17 = 0u;
  v16 = a2;
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v6;
  v15 = -1;
  DWORD2(v14) = 0;
  luaK_exp2nextreg(a1[3].n128_i64[0], a2);
  checknext(a1, 123);
  while (1)
  {
    v7 = a1[1].n128_u32[0];
    if (v7 == 125)
    {
      break;
    }

    if (v14)
    {
      luaK_exp2nextreg(v4, &v14);
      LODWORD(v14) = 0;
      if (DWORD2(v17) == 50)
      {
        luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), 50);
        DWORD2(v17) = 0;
      }

      v7 = a1[1].n128_u32[0];
    }

    if (v7 == 91 || v7 == 292 && luaX_lookahead(a1) == 61)
    {
      recfield(a1, &v14);
    }

    else
    {
      listfield(a1, &v14);
    }

    v8 = a1[1].n128_u32[0];
    if (v8 != 59 && v8 != 44)
    {
      break;
    }

    luaX_next(a1);
  }

  check_match(a1, 125, 123, v5);
  v9 = DWORD2(v17);
  if (DWORD2(v17))
  {
    if ((v14 - 13) >= 2)
    {
      if (v14)
      {
        luaK_exp2nextreg(v4, &v14);
        v9 = DWORD2(v17);
      }

      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), v9);
    }

    else
    {
      luaK_setreturns(v4, &v14, -1);
      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), -1);
      --DWORD1(v17);
    }
  }

  v10 = *(*v4 + 56);
  v11 = *(v10 + 4 * v6);
  v12 = v11 & 0x7FFFFF | (luaO_int2fb(DWORD1(v17)) << 23);
  *(v10 + 4 * v6) = v12;
  result = luaO_int2fb(v17);
  *(v10 + 4 * v6) = v12 & 0xFF803FFF | ((result & 0x1FF) << 14);
  return result;
}

uint64_t body(__n128 *a1, uint64_t a2, int a3, int a4)
{
  v37 = 0;
  memset(&v36[3], 0, 32);
  v35 = 0;
  v9 = a1[3].n128_u64[0];
  v8 = a1[3].n128_i64[1];
  v10 = *v9;
  v11 = *(*v9 + 32);
  if (v9[12] >= v11)
  {
    *(v10 + 64) = luaM_growaux_(a1[3].n128_u64[1], *(v10 + 64), (*v9 + 32), 8, 0x3FFFF, "functions");
    v12 = *(v10 + 32);
    if (v11 < v12)
    {
      do
      {
        *(*(v10 + 64) + 8 * v11++) = 0;
      }

      while (v12 != v11);
    }
  }

  luaF_newproto(v8);
  v14 = v13;
  v15 = *(v10 + 64);
  v16 = v9[12];
  v9[12] = v16 + 1;
  *(v15 + 8 * v16) = v13;
  if ((*(v10 + 9) & 4) != 0 && (*(v13 + 9) & 3) != 0)
  {
    luaC_barrier_(v8, v10, v13);
  }

  *(v14 + 40) = a4;
  v17 = a1[3].n128_u64[0];
  v36[0] = v14;
  v36[1] = v17;
  a1[3].n128_u64[0] = v36;
  *&v36[4] = xmmword_26ECCEB30;
  LODWORD(v37) = 0;
  BYTE4(v37) = 0;
  v18 = a1[5].n128_u64[1];
  v19 = a1[6].n128_u64[0];
  v20 = v18[2];
  LODWORD(v36[6]) = 0;
  HIDWORD(v36[6]) = v20;
  *(v14 + 104) = v19;
  *(v14 + 12) = 2;
  BYTE2(v35) = 0;
  LOWORD(v35) = 0;
  LODWORD(v19) = v18[10];
  LODWORD(v18) = v18[6];
  v33 = v19;
  v34 = v18;
  v32 = 0;
  v36[2] = a1;
  v36[3] = &v32;
  checknext(a1, 40);
  if (a3)
  {
    v21 = luaX_newstring(a1, "self", 4uLL);
    new_localvar(a1, v21);
    adjustlocalvars(a1, 1u);
  }

  v22 = 0;
  v23 = a1[3].n128_u64[0];
  v24 = *v23;
  *(*v23 + 11) = 0;
  v25 = a1[1].n128_u32[0];
  if (v25 != 41)
  {
    v22 = 0;
    while (1)
    {
      if (v25 == 292)
      {
        v31 = str_checkname(a1);
        new_localvar(a1, v31);
        ++v22;
      }

      else
      {
        if (v25 == 281)
        {
          luaX_next(a1);
          *(v24 + 11) = 1;
          break;
        }

        luaX_syntaxerror(a1, "<name> or '...' expected");
      }

      if (*(v24 + 11) || a1[1].n128_u32[0] != 44)
      {
        break;
      }

      luaX_next(a1);
      v25 = a1[1].n128_u32[0];
    }
  }

  adjustlocalvars(a1, v22);
  v26 = v23[58];
  *(v24 + 10) = v26;
  luaK_reserveregs(v23, v26);
  v27 = checknext(a1, 41);
  statlist(a1, v27);
  *(v36[0] + 44) = a1->n128_u32[1];
  check_match(a1, 262, 265, a4);
  v28 = *(a1[3].n128_u64[0] + 8);
  v29 = luaK_codeABx(v28, 44, 0, *(v28 + 48) - 1);
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v29;
  luaK_exp2nextreg(v28, a2);
  return close_func(a1);
}

uint64_t suffixedexp(__n128 *a1, int *a2)
{
  v4 = a1[3].n128_i64[0];
  v5 = a1->n128_i32[1];
  v6 = a1[1].n128_u32[0];
  if (v6 == 292)
  {
    result = singlevar(a1, a2);
  }

  else if (v6 == 40)
  {
    luaX_next(a1);
    subexpr(a1, a2, 0);
    check_match(a1, 41, 40, v5);
    result = luaK_dischargevars(a1[3].n128_i64[0], a2);
  }

  else
  {
    result = luaX_syntaxerror(a1, "unexpected symbol");
  }

  while (1)
  {
    while (1)
    {
      v8 = a1[1].n128_i32[0];
      if (v8 > 90)
      {
        break;
      }

      switch(v8)
      {
        case '(':
          goto LABEL_14;
        case '.':
          result = fieldsel(a1, a2);
          break;
        case ':':
          v11 = 0;
          v12 = 0;
          v13 = 0;
          luaX_next(a1);
          v9 = str_checkname(a1);
          v10 = luaK_stringK(a1[3].n128_i64[0], v9);
          v13 = -1;
          LODWORD(v11) = 4;
          LODWORD(v12) = v10;
          luaK_self(v4, a2, &v11);
LABEL_15:
          result = funcargs(a1, a2, v5);
          break;
        default:
          return result;
      }
    }

    if (v8 != 91)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    luaK_exp2anyregup(v4, a2);
    yindex(a1, &v11);
    result = luaK_indexed(v4, a2, &v11);
  }

  if (v8 == 123 || v8 == 293)
  {
LABEL_14:
    luaK_exp2nextreg(v4, a2);
    goto LABEL_15;
  }

  return result;
}

int32x2_t listfield(uint64_t a1, uint64_t a2)
{
  subexpr(a1, a2, 0);
  checklimit(*(a1 + 48), *(a2 + 36), 0x7FFFFFFF, "items in a constructor");
  result = vadd_s32(*(a2 + 36), 0x100000001);
  *(a2 + 36) = result;
  return result;
}

uint64_t recfield(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_i64[0];
  v5 = *(v4 + 60);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  if (a1[1].n128_u32[0] == 292)
  {
    checklimit(v4, *(a2 + 32), 0x7FFFFFFF, "items in a constructor");
    v6 = str_checkname(a1);
    v7 = luaK_stringK(a1[3].n128_i64[0], v6);
    v15 = -1;
    LODWORD(v13) = 4;
    LODWORD(v14) = v7;
  }

  else
  {
    yindex(a1, &v13);
  }

  ++*(a2 + 32);
  checknext(a1, 61);
  v8 = luaK_exp2RK(v4, &v13);
  subexpr(a1, v12, 0);
  v9 = *(*(a2 + 24) + 8);
  v10 = luaK_exp2RK(v4, v12);
  result = luaK_codeABC(v4, 10, v9, v8, v10);
  *(v4 + 60) = v5;
  return result;
}

double yindex(__n128 *a1, int *a2)
{
  luaX_next(a1);
  subexpr(a1, a2, 0);
  luaK_exp2val(a1[3].n128_i64[0], a2);

  return checknext(a1, 93);
}

uint64_t adjustlocalvars(uint64_t result, unsigned int a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 58) + a2;
  *(v2 + 58) = v3;
  if (a2)
  {
    v4 = *(v2 + 32);
    v5 = **(*(v2 + 16) + 88);
    v6 = *(v2 + 52);
    v7 = *(*v2 + 80);
    v8 = v6 + v3 - a2;
    v9 = a2 - 1;
    do
    {
      *(v7 + 16 * *(v5 + 2 * v8++) + 8) = v4;
    }

    while (v9--);
  }

  return result;
}

uint64_t new_localvar(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[11];
  v6 = *v4;
  v7 = *(*v4 + 36);
  if (v7 <= v4[28])
  {
    v8 = luaM_growaux_(a1[7], *(v6 + 80), (*v4 + 36), 16, 0x7FFF, "local variables");
    *(v6 + 80) = v8;
    v9 = *(v6 + 36);
    if (v7 < v9)
    {
      v10 = 0;
      v11 = v9 - v7;
      v12 = (v9 - v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v8 + 16 * v7 + 16);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_26ECC7980)));
        if (v15.i8[0])
        {
          *(v14 - 2) = 0;
        }

        if (v15.i8[4])
        {
          *v14 = 0;
        }

        v10 += 2;
        v14 += 4;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v8 = *(v6 + 80);
  }

  v16 = v4[28];
  *(v8 + 16 * v16) = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(a1[7], v6, a2);
    v16 = v4[28];
  }

  v4[28] = v16 + 1;
  result = checklimit(v4, *(v5 + 8) - *(v4 + 13) + 1, 200, "local variables");
  v18 = *(v5 + 8);
  v19 = *v5;
  if (v18 + 2 > *(v5 + 12))
  {
    result = luaM_growaux_(a1[7], v19, (v5 + 12), 2, 0x7FFFFFFF, "local variables");
    v19 = result;
    *v5 = result;
    v18 = *(v5 + 8);
  }

  *(v5 + 8) = v18 + 1;
  *(v19 + 2 * v18) = v16;
  return result;
}

uint64_t fieldsel(__n128 *a1, int *a2)
{
  v4 = a1[3].n128_i64[0];
  v8 = 0;
  v9 = 0;
  luaK_exp2anyregup(v4, a2);
  luaX_next(a1);
  v5 = str_checkname(a1);
  v6 = luaK_stringK(a1[3].n128_i64[0], v5);
  v10 = -1;
  LODWORD(v8) = 4;
  LODWORD(v9) = v6;
  return luaK_indexed(v4, a2, &v8);
}

int *funcargs(__n128 *a1, uint64_t a2, int a3)
{
  v6 = a1[3].n128_u64[0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = a1[1].n128_u32[0];
  switch(v7)
  {
    case 0x125u:
      v8 = luaK_stringK(v6, a1[1].n128_i64[1]);
      v15 = -1;
      LODWORD(v13) = 4;
      LODWORD(v14) = v8;
      luaX_next(a1);
      v9 = *(a2 + 8);
LABEL_14:
      luaK_exp2nextreg(v6, &v13);
      goto LABEL_15;
    case 0x7Bu:
      constructor(a1, &v13);
      break;
    case 0x28u:
      luaX_next(a1);
      if (a1[1].n128_u32[0] == 41)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        explist(a1, &v13);
        luaK_setreturns(v6, &v13, -1);
      }

      check_match(a1, 41, 40, a3);
      break;
    default:
      luaX_syntaxerror(a1, "function arguments expected");
      v9 = *(a2 + 8);
      goto LABEL_15;
  }

  v9 = *(a2 + 8);
  if ((v13 - 13) >= 2)
  {
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    v10 = v6[60] - v9;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  v11 = luaK_codeABC(v6, 36, v9, v10, 2);
  *(a2 + 16) = -1;
  *a2 = 13;
  *(a2 + 8) = v11;
  result = luaK_fixline(v6, a3);
  v6[60] = v9 + 1;
  return result;
}

uint64_t singlevar(__n128 *a1, uint64_t a2)
{
  v4 = str_checkname(a1);
  v5 = a1[3].n128_i64[0];
  result = singlevaraux(v5, v4, a2, 1);
  if (!result)
  {
    v8 = 0;
    v9 = 0;
    singlevaraux(v5, a1[6].n128_i64[1], a2, 1);
    v7 = luaK_stringK(a1[3].n128_i64[0], v4);
    v10 = -1;
    LODWORD(v8) = 4;
    LODWORD(v9) = v7;
    return luaK_indexed(v5, a2, &v8);
  }

  return result;
}

uint64_t singlevaraux(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 58);
  do
  {
    v8 = __OFSUB__(v7--, 1);
    if (v7 < 0 != v8)
    {
      v12 = *(a1 + 59);
      if (*(a1 + 59))
      {
        v13 = 0;
        v14 = *(*a1 + 88);
        while (*v14 != a2)
        {
          ++v13;
          v14 += 2;
          if (v12 == v13)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        if (!singlevaraux(*(a1 + 8), a2, a3, 0))
        {
          return 0;
        }

        LODWORD(v13) = newupvalue(a1, a2, a3);
      }

      *(a3 + 16) = -1;
      v9 = 9;
      *a3 = 9;
      *(a3 + 8) = v13;
      return v9;
    }
  }

  while (*(*(*a1 + 80) + 16 * *(**(*(a1 + 16) + 88) + 2 * (v7 + *(a1 + 52)))) != a2);
  *(a3 + 16) = -1;
  v9 = 8;
  *a3 = 8;
  *(a3 + 8) = v7;
  if (!a4)
  {
    v10 = v7 + 1;
    v11 = a1 + 24;
    do
    {
      v11 = *v11;
    }

    while (v10 <= *(v11 + 16));
    *(v11 + 17) = 1;
    return 8;
  }

  return v9;
}

uint64_t explist(__n128 *a1, int *a2)
{
  subexpr(a1, a2, 0);
  v4 = a1[1].n128_u32[0];
  v5 = 1;
  while (v4 == 44)
  {
    luaX_next(a1);
    luaK_exp2nextreg(a1[3].n128_i64[0], a2);
    subexpr(a1, a2, 0);
    v5 = (v5 + 1);
    v4 = a1[1].n128_u32[0];
  }

  return v5;
}

uint64_t newlabelentry(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = *(a2 + 8);
  v11 = (a2 + 12);
  v12 = *(a2 + 12);
  v13 = *a2;
  if (v10 >= v12)
  {
    v13 = luaM_growaux_(*(a1 + 56), v13, v11, 24, 0x7FFF, "labels/gotos");
    *a2 = v13;
  }

  v14 = v13 + 24 * v10;
  *v14 = a3;
  *(v14 + 16) = *(*(a1 + 48) + 58);
  *(v14 + 8) = a5;
  *(v14 + 12) = a4;
  *(a2 + 8) = v10 + 1;
  return v10;
}

uint64_t *findgotos(uint64_t *result, void *a2)
{
  v2 = result[11];
  v3 = *(*(result[6] + 24) + 12);
  v4 = *(v2 + 24);
  if (v3 < v4)
  {
    v6 = result;
    do
    {
      if (*(*(v2 + 16) + 24 * v3) == *a2)
      {
        result = closegoto(v6, v3, a2);
        v4 = *(v2 + 24);
      }

      else
      {
        ++v3;
      }
    }

    while (v3 < v4);
  }

  return result;
}

uint64_t *closegoto(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v7 = *(v6 + 16) + 24 * a2;
  v8 = *(v7 + 16);
  if (v8 < *(a3 + 16))
  {
    v10 = luaO_pushfstring(*(a1 + 56), "<goto %s> at line %d jumps into the scope of local '%s'", (*v7 + 24), *(v7 + 12), (*(*(*v5 + 80) + 16 * *(**(*(v5 + 16) + 88) + 2 * (*(v5 + 52) + v8))) + 24));
    *(a1 + 16) = 0;
    luaX_syntaxerror(a1, v10);
  }

  result = luaK_patchlist(v5, *(v7 + 8), *(a3 + 8));
  LODWORD(v12) = *(v6 + 24) - 1;
  if (v12 > a2)
  {
    v13 = a2;
    v14 = 24 * a2;
    do
    {
      v15 = *(v6 + 16) + v14;
      ++v13;
      *v15 = *(v15 + 24);
      *(v15 + 16) = *(v15 + 40);
      v12 = *(v6 + 24) - 1;
      v14 += 24;
    }

    while (v13 < v12);
  }

  *(v6 + 24) = v12;
  return result;
}

uint64_t findlabel(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 88);
  v5 = *(*(v3 + 24) + 8);
  v6 = *(v4 + 40);
  if (v5 >= v6)
  {
    return 0;
  }

  v8 = *(v4 + 16) + 24 * a2;
  v9 = *(v4 + 32) + 24 * v5;
  v10 = v6 - v5;
  while (*v9 != *v8)
  {
    v9 += 24;
    if (!--v10)
    {
      return 0;
    }
  }

  v12 = *(v9 + 16);
  if (*(v8 + 16) > v12)
  {
    luaK_patchclose(v3, *(v8 + 8), v12);
  }

  closegoto(a1, a2, v9);
  return 1;
}

uint64_t cond(__n128 *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  subexpr(a1, v3, 0);
  if (LODWORD(v3[0]) == 1)
  {
    LODWORD(v3[0]) = 3;
  }

  luaK_goiftrue(a1[3].n128_i64[0], v3);
  return HIDWORD(v4);
}

uint64_t error_expected(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  v4 = luaX_token2str(a1, a2);
  v5 = luaO_pushfstring(v3, "%s expected", v4);

  return luaX_syntaxerror(a1, v5);
}

int *fornum(__n128 *a1, uint64_t a2, int a3)
{
  v6 = a1[3].n128_i64[0];
  v7 = *(v6 + 60);
  v8 = luaX_newstring(a1, "(for index)", 0xBuLL);
  new_localvar(a1, v8);
  v9 = luaX_newstring(a1, "(for limit)", 0xBuLL);
  new_localvar(a1, v9);
  v10 = luaX_newstring(a1, "(for step)", 0xAuLL);
  new_localvar(a1, v10);
  new_localvar(a1, a2);
  checknext(a1, 61);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  checknext(a1, 44);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  if (a1[1].n128_u32[0] == 44)
  {
    luaX_next(a1);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    subexpr(a1, &v14, 0);
    luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  }

  else
  {
    v11 = *(v6 + 60);
    v12 = luaK_intK(v6, 1);
    luaK_codek(v6, v11, v12);
    luaK_reserveregs(v6, 1);
  }

  return forbody(a1, v7, a3, 1u, 1);
}

int *forbody(__n128 *a1, int a2, int a3, unsigned int a4, int a5)
{
  v10 = a1[3].n128_i64[0];
  adjustlocalvars(a1, 3u);
  checknext(a1, 259);
  if (a5)
  {
    v11 = luaK_codeABx(v10, 40, a2, 131070);
  }

  else
  {
    v11 = luaK_jump(v10);
  }

  v12 = v11;
  v24 = 0;
  LOBYTE(v24) = *(v10 + 58);
  v13 = *(v10 + 24);
  v14 = *(*(v10 + 16) + 88);
  v15 = *(v14 + 40);
  LODWORD(v14) = *(v14 + 24);
  v22 = v15;
  v23 = v14;
  v21 = v13;
  *(v10 + 24) = &v21;
  adjustlocalvars(a1, a4);
  luaK_reserveregs(v10, a4);
  block(a1);
  leaveblock(v10);
  luaK_patchtohere(v10, v12);
  v16 = v10;
  if (a5)
  {
    v17 = 39;
    v18 = a2;
  }

  else
  {
    luaK_codeABC(v10, 41, a2, 0, a4);
    luaK_fixline(v10, a3);
    v18 = a2 + 2;
    v16 = v10;
    v17 = 42;
  }

  v19 = luaK_codeABx(v16, v17, v18, 131070);
  luaK_patchlist(v10, v19, v12 + 1);
  return luaK_fixline(v10, a3);
}

void adjust_assign(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *(a1 + 48);
  v5 = a2 - a3;
  if ((*a4 - 13) >= 2)
  {
    if (*a4)
    {
      luaK_exp2nextreg(*(a1 + 48), a4);
    }

    if (v5 >= 1)
    {
      v7 = *(v4 + 60);
      luaK_reserveregs(v4, v5);

      luaK_nil(v4, v7, v5);
    }
  }

  else
  {
    if (v5 < 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = a2 - a3;
    }

    luaK_setreturns(*(a1 + 48), a4, v6 + 1);
    if (v5 >= 1)
    {

      luaK_reserveregs(v4, v6);
    }
  }
}

void assignment(__n128 *a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v6 = (a2 + 1);
  if ((*(a2 + 2) - 8) >= 3)
  {
    luaX_syntaxerror(a1, "syntax error");
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1[1].n128_u32[0] == 44)
  {
    luaX_next(a1);
    v18 = 0;
    v19 = 0;
    v16 = v4;
    v17 = 0;
    suffixedexp(a1, &v17);
    v7 = v17;
    if (v17 != 10)
    {
      v8 = 0;
      v9 = a1[3].n128_i64[0];
      v10 = *(v9 + 60);
      do
      {
        while (*(v4 + 2) == 10)
        {
          if (v7 == *(v4 + 19) && v18 == *(v4 + 18))
          {
            *(v4 + 19) = 8;
            *(v4 + 18) = v10;
            v8 = 1;
          }

          if (v7 != 8 || v18 != *(v4 + 8))
          {
            break;
          }

          *(v4 + 8) = v10;
          v4 = *v4;
          v8 = 1;
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        v4 = *v4;
      }

      while (v4);
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (v7 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = 5;
      }

      luaK_codeABC(v9, v11, v10, v18, 0);
      luaK_reserveregs(v9, 1);
    }

LABEL_20:
    checklimit(a1[3].n128_u64[0], *(a1[3].n128_u64[1] + 198) + a3, 200, "C levels");
    assignment(a1, &v16, (a3 + 1));
  }

  else
  {
    checknext(a1, 61);
    v14 = explist(a1, &v20);
    if (a3 == v14)
    {
      luaK_setoneret(a1[3].n128_i64[0], &v20);
      v12 = a1[3].n128_i64[0];
      goto LABEL_24;
    }

    v15 = v14;
    adjust_assign(a1, a3, v14, &v20);
    if (a3 < v15)
    {
      *(a1[3].n128_u64[0] + 60) += a3 - v15;
    }
  }

  v12 = a1[3].n128_i64[0];
  v13 = *(v12 + 60) - 1;
  v22 = -1;
  LODWORD(v20) = 7;
  LODWORD(v21) = v13;
LABEL_24:
  luaK_storevar(v12, v6, &v20);
}

uint64_t luaE_setdebt(uint64_t result, uint64_t a2)
{
  *(result + 16) += *(result + 24) - a2;
  *(result + 24) = a2;
  return result;
}

uint64_t luaE_extendCI(uint64_t a1)
{
  result = luaM_realloc_(a1, 0, 0, 72);
  v3 = *(a1 + 32);
  *(v3 + 24) = result;
  *(result + 16) = v3;
  *(result + 24) = 0;
  return result;
}

uint64_t luaE_freeCI(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = *(v2 + 24);
      result = luaM_realloc_(v3, v2, 72, 0);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t luaE_shrinkCI(uint64_t result)
{
  v1 = *(result + 32);
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 24);
      if (!v5)
      {
        break;
      }

      result = luaM_realloc_(v4, v2, 72, 0);
      *v3 = v5;
      v3 = (v5 + 24);
      v2 = *(v5 + 24);
      *(v5 + 16) = v1;
      v1 = v5;
    }

    while (v2);
  }

  return result;
}

uint64_t lua_newthread(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 24) >= 1)
  {
    luaC_step(a1);
  }

  v3 = luaM_realloc_(a1, 0, 8, 216);
  *(v3 + 17) = *(v2 + 84) & 3;
  *(v3 + 16) = 8;
  *(v3 + 8) = *(v2 + 88);
  v4 = v3 + 8;
  *(v2 + 88) = v3 + 8;
  v5 = *(a1 + 16);
  *v5 = v3 + 8;
  *(v5 + 8) = 72;
  *(a1 + 16) += 16;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 88) = v3 + 8;
  *(v3 + 96) = 0;
  *(v3 + 176) = 0;
  *(v3 + 208) = 256;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 204) = 1;
  *(v3 + 18) = 0;
  *(v3 + 208) = *(a1 + 200);
  LODWORD(v5) = *(a1 + 188);
  *(v3 + 176) = *(a1 + 168);
  *(v3 + 196) = v5;
  *(v3 + 200) = v5;
  cstdlib_memcpy(v3, (*(v2 + 224) - 8), 8uLL);
  stack_init(v4, a1);
  return v4;
}

uint64_t stack_init(uint64_t a1, uint64_t a2)
{
  result = luaM_realloc_(a2, 0, 0, 640);
  *(a1 + 56) = result;
  *(a1 + 184) = 40;
  for (i = 8; i != 648; i += 16)
  {
    *(result + i) = 0;
  }

  *(a1 + 96) = result;
  v5 = a1 + 96;
  *(v5 - 48) = result + 560;
  *(v5 + 66) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 - 80) = result + 16;
  *(result + 8) = 0;
  *(v5 + 8) = result + 336;
  *(v5 - 64) = v5;
  return result;
}

uint64_t luaE_freethread(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 8;
  luaF_close(a2, *(a2 + 56));
  freestack(a2);

  return luaM_realloc_(a1, v4, 216, 0);
}

uint64_t freestack(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    *(result + 32) = result + 96;
    luaE_freeCI(result);
    v2 = *(v1 + 56);
    v3 = 16 * *(v1 + 184);

    return luaM_realloc_(v1, v2, v3, 0);
  }

  return result;
}

uint64_t lua_newstate(uint64_t (*a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a1(a2, 0, 8, 1744);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = 0;
    v5 = v4 + 8;
    *(v4 + 16) = 8;
    *(v4 + 300) = 1;
    *(v4 + 17) = 1;
    *(v4 + 216) = a1;
    *(v4 + 32) = v4 + 216;
    *(v4 + 40) = 0;
    *(v4 + 192) = 0;
    *(v4 + 88) = v4 + 8;
    *(v4 + 96) = 0;
    *(v4 + 176) = 0u;
    *(v4 + 208) = 256;
    *(v4 + 196) = 0;
    *(v4 + 64) = 0u;
    *(v4 + 204) = 1;
    *(v4 + 224) = a2;
    *(v4 + 440) = v4 + 8;
    v8 = 1;
    __src = (v4 + 8);
    cstdlib_memcpy(__dst, &__src, 8uLL);
    __src = &v8;
    cstdlib_memcpy(&v10, &__src, 8uLL);
    __src = &luaO_nilobject_;
    cstdlib_memcpy(&v11, &__src, 8uLL);
    __src = lua_newstate;
    cstdlib_memcpy(v12, &__src, 8uLL);
    *(v5 + 288) = luaS_hash(__dst, 0x20uLL, v8);
    *(v5 + 295) = 0;
    *(v5 + 280) = 0;
    *(v5 + 400) = 0;
    *(v5 + 424) = 0;
    *(v5 + 440) = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0u;
    *(v5 + 293) = 7;
    *(v5 + 296) = 0u;
    *(v5 + 312) = 0u;
    *(v5 + 328) = 0u;
    *(v5 + 344) = 0u;
    *(v5 + 360) = 0u;
    *(v5 + 376) = 0u;
    *(v5 + 224) = xmmword_26ECCEB70;
    *(v5 + 408) = 0xC800000000;
    *(v5 + 416) = 200;
    *(v5 + 712) = 0;
    *(v5 + 696) = 0u;
    *(v5 + 680) = 0u;
    *(v5 + 664) = 0u;
    *(v5 + 648) = 0u;
    if (luaD_rawrunprotected(v5, f_luaopen, 0))
    {
      close_state(v5);
      return 0;
    }
  }

  return v5;
}

void *f_luaopen(uint64_t a1)
{
  v2 = *(a1 + 24);
  stack_init(a1, a1);
  v5.n128_u64[1] = 72;
  v3 = luaH_new(a1);
  *(v2 + 64) = v3;
  *(v2 + 72) = 69;
  luaH_resize(a1, v3, 2u, 0);
  v5.n128_u64[0] = a1;
  luaH_setint(a1, v3, 1, &v5);
  v5.n128_u64[0] = luaH_new(a1);
  v5.n128_u32[2] = 69;
  luaH_setint(a1, v3, 2, &v5);
  luaS_init(a1);
  luaT_init(a1);
  luaX_init(a1);
  *(v2 + 87) = 1;
  result = lua_version(0);
  *(v2 + 232) = result;
  return result;
}

uint64_t close_state(uint64_t a1)
{
  v2 = *(a1 + 24);
  luaF_close(a1, *(a1 + 56));
  luaC_freeallobjects(a1);
  luaM_realloc_(a1, *(*(a1 + 24) + 48), 8 * *(*(a1 + 24) + 60), 0);
  *(v2 + 176) = luaM_realloc_(a1, *(v2 + 176), *(v2 + 192), 0);
  *(v2 + 192) = 0;
  freestack(a1);
  v4 = *v2;
  v3 = *(v2 + 8);

  return v4(v3, a1 - 8, 1744, 0);
}

BOOL luaS_eqlngstr(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 == *(a2 + 16) && cstdlib_memcmp((a1 + 24), (a2 + 24), v2) == 0;
}

uint64_t luaS_hash(uint64_t a1, unint64_t a2, int a3)
{
  result = a2 ^ a3;
  if (a2)
  {
    v5 = a2 >> 5;
    v6 = ~(a2 >> 5);
    v7 = a1 - 1;
    do
    {
      result = (32 * result + (result >> 2) + *(v7 + a2)) ^ result;
      a2 += v6;
    }

    while (a2 > v5);
  }

  return result;
}

uint64_t luaS_resize(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 24);
  v5 = *(v4 + 60);
  v6 = v5;
  if (v5 < a2)
  {
    result = luaM_realloc_(result, *(v4 + 48), 8 * v5, 8 * a2);
    *(v4 + 48) = result;
    v6 = *(v4 + 60);
    if (v6 < a2)
    {
      v7 = v6;
      do
      {
        *(*(v4 + 48) + 8 * v7++) = 0;
      }

      while (a2 != v7);
    }
  }

  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v9 = *(v4 + 48);
      v10 = *(v9 + 8 * i);
      *(v9 + 8 * i) = 0;
      if (v10)
      {
        do
        {
          v11 = *(v10 + 12) & (a2 - 1);
          v12 = *(v10 + 16);
          *(v10 + 16) = *(*(v4 + 48) + 8 * v11);
          *(*(v4 + 48) + 8 * v11) = v10;
          v10 = v12;
        }

        while (v12);
        v6 = *(v4 + 60);
      }
    }
  }

  if (v6 > a2)
  {
    result = luaM_realloc_(v3, *(v4 + 48), 8 * v6, 8 * a2);
    *(v4 + 48) = result;
  }

  *(v4 + 60) = a2;
  return result;
}

uint64_t luaS_clearcache(uint64_t result)
{
  v1 = 0;
  v2 = result + 512;
  do
  {
    if ((*(*(v2 + v1) + 9) & 3) != 0)
    {
      *(v2 + v1) = *(result + 240);
    }

    v1 += 8;
  }

  while (v1 != 1016);
  return result;
}

int64x2_t luaS_init(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 128;
  luaS_resize(a1, 128);
  v4 = luaS_newlstr(a1, "not enough memory", 0x11uLL);
  *(v2 + 240) = v4;
  luaC_fix(a1, v4);
  v5 = *(v2 + 240);
  result = xmmword_26ECC7980;
  v7 = (v2 + 520);
  v8 = vdupq_n_s64(0x7FuLL);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v8, result)).u8[0])
    {
      *(v7 - 1) = v5;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7FuLL), *&result)).i32[1])
    {
      *v7 = v5;
    }

    result = vaddq_s64(result, v9);
    v7 += 2;
    v3 -= 2;
  }

  while (v3);
  return result;
}

uint64_t luaS_newlstr(uint64_t a1, char *__s1, size_t __n)
{
  if (__n > 0x28)
  {
    if (__n - 0x7FFFFFFFFFFFFFE7 < 0x8000000000000018)
    {
      luaM_toobig(a1);
    }

    v13 = *(*(a1 + 24) + 80);
    v11 = luaC_newobj(a1, 20, __n + 25);
    *(v11 + 12) = v13;
    *(v11 + 10) = 0;
    cstdlib_memcpy((v11 + 24), __s1, __n);
    *(v11 + 24 + __n) = 0;
    *(v11 + 16) = __n;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(v6 + 80) ^ __n;
    if (__n)
    {
      v8 = __n;
      do
      {
        v7 ^= 32 * v7 + (v7 >> 2) + __s1[v8 - 1];
        v8 += ~(__n >> 5);
      }

      while (v8 > __n >> 5);
    }

    v9 = *(v6 + 60);
    v10 = (*(v6 + 48) + 8 * ((v9 - 1) & v7));
    v11 = *v10;
    if (*v10)
    {
      while (*(v11 + 11) != __n || cstdlib_memcmp(__s1, (v11 + 24), __n))
      {
        v11 = *(v11 + 16);
        if (!v11)
        {
          v9 = *(v6 + 60);
          goto LABEL_10;
        }
      }

      v15 = *(v11 + 9) ^ 3;
      if (((*(v6 + 84) ^ 3) & v15) == 0)
      {
        *(v11 + 9) = v15;
      }
    }

    else
    {
LABEL_10:
      if (v9 <= 0x3FFFFFFF && *(v6 + 56) >= v9)
      {
        luaS_resize(a1, 2 * v9);
        v10 = (*(v6 + 48) + 8 * ((*(v6 + 60) - 1) & v7));
      }

      v11 = luaC_newobj(a1, 4, __n + 25);
      *(v11 + 12) = v7;
      *(v11 + 10) = 0;
      cstdlib_memcpy((v11 + 24), __s1, __n);
      *(v11 + 24 + __n) = 0;
      *(v11 + 11) = __n;
      *(v11 + 16) = *v10;
      *v10 = v11;
      ++*(v6 + 56);
    }
  }

  return v11;
}

uint64_t luaS_remove(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = (*(v2 + 48) + 8 * ((*(v2 + 60) - 1) & *(a2 + 12)));
  do
  {
    v4 = v3;
    v5 = *v3;
    v3 = (*v3 + 16);
  }

  while (v5 != a2);
  *v4 = *v3;
  --*(v2 + 56);
  return result;
}

uint64_t luaS_new(uint64_t a1, char *__s1)
{
  v4 = __s1 % 0x7F;
  v5 = *(a1 + 24) + 512;
  if (!cstdlib_strcmp(__s1, (*(v5 + 8 * (__s1 % 0x7F)) + 24)))
  {
    return *(v5 + 8 * v4);
  }

  v6 = cstdlib_strlen(__s1);
  result = luaS_newlstr(a1, __s1, v6);
  *(v5 + 8 * v4) = result;
  return result;
}

uint64_t luaS_newudata(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFD8)
  {
    luaM_toobig(a1);
  }

  result = luaC_newobj(a1, 7, a2 + 40);
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 10) = 0;
  return result;
}

uint64_t luaopen_string(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 17);
  luaL_setfuncs(a1, &strlib, 0, v9, v10, v11, v12, v13);
  lua_createtable(a1, 0, 1);
  lua_pushstring(a1, "");
  lua_pushvalue(a1, -2);
  lua_setmetatable(a1, -2);
  lua_settop(a1, 0xFFFFFFFE);
  lua_pushvalue(a1, -2);
  lua_setfield(a1, -2, "__index");
  lua_settop(a1, 0xFFFFFFFE);
  return 1;
}

uint64_t str_byte(void *a1)
{
  v23 = 0;
  v2 = luaL_checklstring(a1, 1, &v23);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v23 >= -v3)
  {
    v4 = v3 + v23 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  if (v23 >= -v6)
  {
    v13 = v6 + v23 + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v6 >= 0)
  {
    v13 = v6;
  }

  if (v5 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v5;
  }

  if (v13 >= v23)
  {
    v15 = v23;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 - v14;
  if (v15 < v14)
  {
    return 0;
  }

  if (v16 >= 0x7FFFFFFF)
  {
    return luaL_error(a1, "string slice too long", v7, v8, v9, v10, v11, v12, v22);
  }

  v17 = (v16 + 1);
  luaL_checkstack(a1, v16 + 1, "string slice too long", v8, v9, v10, v11, v12, v22);
  if ((v16 & 0x80000000) == 0)
  {
    v18 = (v2 + v14 - 1);
    v19 = (v15 - v14 + 1);
    do
    {
      v20 = *v18++;
      lua_pushinteger(a1, v20);
      --v19;
    }

    while (v19);
  }

  return v17;
}

uint64_t str_char(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  v3 = v2;
  memset(v16, 0, 512);
  v9 = luaL_buffinitsize(a1, v16, v2, v4, v5, v6, v7, v8);
  if (v2 >= 1)
  {
    v10 = v9;
    v11 = (v2 + 1) - 1;
    v12 = 1;
    do
    {
      v13 = luaL_checkinteger(a1, v12);
      v14 = v13;
      if (v13 >= 0x100)
      {
        luaL_argerror(a1, v12);
      }

      *v10++ = v14;
      v12 = (v12 + 1);
      --v11;
    }

    while (v11);
  }

  luaL_pushresultsize(v16, v3);
  return 1;
}

uint64_t str_dump(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 512);
  v2 = lua_toBOOLean(a1, 2);
  luaL_checktype(a1, 1, 6);
  lua_settop(a1, 1u);
  luaL_buffinit(a1, v10);
  if (lua_dump(a1, writer, v10, v2))
  {
    return luaL_error(a1, "unable to dump given function", v3, v4, v5, v6, v7, v8, *&v10[0]);
  }

  luaL_pushresult(v10);
  return 1;
}

uint64_t str_format(void *a1)
{
  v121 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  v84 = 0;
  v3 = luaL_checklstring(a1, 1, &v84);
  v4 = v84;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  luaL_buffinit(a1, &v88);
  if (v4 < 1)
  {
    goto LABEL_84;
  }

  v11 = &v3[v4];
  v12 = 1;
  while (1)
  {
    v13 = *v3;
    if (v13 != 37)
    {
      v17 = v89;
      if (v89 >= *(&v88 + 1))
      {
        luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
        LOBYTE(v13) = *v3;
        v17 = v89;
      }

      ++v3;
      *&v89 = v17 + 1;
      *(v88 + v17) = v13;
      goto LABEL_39;
    }

    v14 = (v3 + 1);
    if (v3[1] == 37)
    {
      v15 = v89;
      if (v89 >= *(&v88 + 1))
      {
        luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
        v16 = *v14;
        v15 = v89;
      }

      else
      {
        v16 = 37;
      }

      v3 += 2;
      *&v89 = v15 + 1;
      *(v88 + v15) = v16;
LABEL_39:
      v25 = v12;
      goto LABEL_47;
    }

    v24 = luaL_prepbuffsize(&v88, 0x1ACuLL, v5, v6, v7, v8, v9, v10);
    v25 = (v12 + 1);
    if (v12 >= v2)
    {
      luaL_argerror(a1, (v12 + 1));
    }

    v26 = *v14;
    v27 = v3 + 1;
    if (*v14)
    {
      v27 = v14;
      do
      {
        if (!cstdlib_strchr("-+ #0", v26))
        {
          break;
        }

        v28 = *++v27;
        v26 = v28;
      }

      while (v28);
    }

    if ((v27 - v14) >= 6)
    {
      luaL_error(a1, "invalid format (repeated flags)", v18, v19, v20, v21, v22, v23, v81);
    }

    if (cstdlib_isdigit(*v27))
    {
      ++v27;
    }

    if (cstdlib_isdigit(*v27))
    {
      ++v27;
    }

    v29 = *v27;
    if (v29 == 46)
    {
      v30 = v27 + 1;
      v31 = cstdlib_isdigit(v27[1]);
      v32 = 1;
      if (v31)
      {
        v32 = 2;
        v30 = v27 + 2;
      }

      if (cstdlib_isdigit(v27[v32]))
      {
        v27 = v30 + 1;
      }

      else
      {
        v27 = v30;
      }

      LOBYTE(v29) = *v27;
    }

    if (cstdlib_isdigit(v29))
    {
      luaL_error(a1, "invalid format (width or precision too long)", v33, v34, v35, v36, v37, v38, v81);
    }

    __s = 37;
    cstdlib_memcpy(v87, v14, v27 - v14 + 1);
    v87[v27 - v14 + 1] = 0;
    v46 = *v27;
    v3 = v27 + 1;
    v45 = v46;
    if (v46 <= 104)
    {
      break;
    }

    if ((v45 - 105) > 0xF)
    {
      return luaL_error(a1, "invalid option '%%%c' to 'format'", v39, v40, v41, v42, v43, v44, v45);
    }

    if (((1 << (v45 - 105)) & 0x9041) != 0)
    {
      goto LABEL_42;
    }

    if (v45 != 113)
    {
      if (v45 == 115)
      {
        *v120 = 0;
        v58 = luaL_tolstring(a1, v25, v120);
        if (cstdlib_strchr(&__s, 46) || *v120 < 0x64uLL)
        {
          v57 = luaI_snprintf(a1, v24, 428, &__s, v59, v60, v61, v62, v58);
          lua_settop(a1, 0xFFFFFFFE);
        }

        else
        {
          luaL_addvalue(&v88);
          v57 = 0;
        }

        goto LABEL_46;
      }

      return luaL_error(a1, "invalid option '%%%c' to 'format'", v39, v40, v41, v42, v43, v44, v45);
    }

    v85 = 0;
    v63 = luaL_checklstring(a1, v25, &v85);
    v64 = v89;
    if (v89 >= *(&v88 + 1))
    {
      luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
      v64 = v89;
    }

    *&v89 = v64 + 1;
    *(v88 + v64) = 34;
    while (v85--)
    {
      v66 = *v63;
      if (v66 > 0x21)
      {
        if (v66 == 92 || v66 == 34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (!*v63)
        {
          goto LABEL_74;
        }

        if (v66 == 10)
        {
LABEL_67:
          v67 = v89;
          if (v89 >= *(&v88 + 1))
          {
            luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
            v67 = v89;
          }

          *&v89 = v67 + 1;
          *(v88 + v67) = 92;
          goto LABEL_70;
        }
      }

      if (cstdlib_iscntrl(v66))
      {
LABEL_74:
        if (cstdlib_isdigit(v63[1]))
        {
          v74 = "\\%03d";
        }

        else
        {
          v74 = "\\%d";
        }

        luaI_snprintf(a1, v120, 10, v74, v70, v71, v72, v73, *v63);
        luaL_addstring(&v88, v120);
        goto LABEL_78;
      }

LABEL_70:
      v68 = v89;
      if (v89 >= *(&v88 + 1))
      {
        luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
        v68 = v89;
      }

      v69 = *v63;
      *&v89 = v68 + 1;
      *(v88 + v68) = v69;
LABEL_78:
      ++v63;
    }

    v75 = v89;
    if (v89 >= *(&v88 + 1))
    {
      luaL_prepbuffsize(&v88, 1uLL, v5, v6, v7, v8, v9, v10);
      v75 = v89;
    }

    v57 = 0;
    *&v89 = v75 + 1;
    *(v88 + v75) = 34;
LABEL_46:
    *&v89 = v89 + v57;
LABEL_47:
    v12 = v25;
    if (v3 >= v11)
    {
LABEL_84:
      luaL_pushresult(&v88);
      return 1;
    }
  }

  if (v45 > 98)
  {
    if ((v45 - 101) >= 3)
    {
      if (v45 == 99)
      {
        v83 = luaL_checkinteger(a1, v25);
        v52 = luaI_snprintf(a1, v24, 428, &__s, v76, v77, v78, v79, v83);
        goto LABEL_45;
      }

      if (v45 != 100)
      {
        return luaL_error(a1, "invalid option '%%%c' to 'format'", v39, v40, v41, v42, v43, v44, v45);
      }

      goto LABEL_42;
    }

LABEL_44:
    addlenmod(&__s);
    v82 = luaL_checknumber(a1, v25);
    v52 = luaI_snprintf(a1, v24, 428, &__s, v53, v54, v55, v56, v82);
    goto LABEL_45;
  }

  if (v45 == 69 || v45 == 71)
  {
    goto LABEL_44;
  }

  if (v45 == 88)
  {
LABEL_42:
    v47 = luaL_checkinteger(a1, v25);
    addlenmod(&__s);
    v52 = luaI_snprintf(a1, v24, 428, &__s, v48, v49, v50, v51, v47);
LABEL_45:
    v57 = v52;
    goto LABEL_46;
  }

  return luaL_error(a1, "invalid option '%%%c' to 'format'", v39, v40, v41, v42, v43, v44, v45);
}

uint64_t gmatch(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  luaL_checklstring(a1, 2, 0);
  lua_settop(a1, 2u);
  lua_pushinteger(a1, 0);
  lua_pushcclosure(a1, gmatch_aux, 3);
  return 1;
}

uint64_t str_gsub(void *a1)
{
  v114 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v79 = 0;
  v2 = luaL_checklstring(a1, 1, &v80);
  v3 = luaL_checklstring(a1, 2, &v79);
  v4 = lua_type(a1, 3);
  v5 = luaL_optinteger(a1, 4, v80 + 1);
  v6 = *v3;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  if ((v4 - 3) >= 4)
  {
    luaL_argerror(a1, 3);
  }

  luaL_buffinit(a1, &v82);
  v12 = v79;
  if (v6 == 94)
  {
    ++v3;
    v12 = --v79;
  }

  v13 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v46[0] = 200;
  v46[1] = v2;
  v47 = &v2[v80];
  v48 = &v3[v12];
  v49 = a1;
  v44 = a1;
  v45 = v5;
  while (v13 < v5)
  {
    DWORD2(v49) = 0;
    v14 = match(v46, v2, v3, v7, v8, v9, v10, v11);
    if (v14)
    {
      v16 = v14;
      v17 = v49;
      if (v4 == 5)
      {
        push_onecapture(v46, 0, v2, v14, v8, v9, v10, v11);
        lua_gettable(v17, 3);
LABEL_12:
        if (lua_toBOOLean(v17, -1))
        {
          if (!lua_isstring(v17, -1))
          {
            v24 = lua_type(v17, -1);
            v25 = lua_typename(v17, v24);
            luaL_error(v17, "invalid replacement value (a %s)", v26, v27, v28, v29, v30, v31, v25);
          }
        }

        else
        {
          lua_settop(v17, 0xFFFFFFFE);
          lua_pushlstring(v17, v2, v16 - v2);
        }

        luaL_addvalue(&v82);
      }

      else
      {
        if (v4 == 6)
        {
          lua_pushvalue(v49, 3);
          v23 = push_captures(v46, v2, v16, v18, v19, v20, v21, v22);
          lua_callk(v17, v23, 1, 0, 0);
          goto LABEL_12;
        }

        v81 = 0;
        v32 = lua_tolstring(v49, 3, &v81);
        if (v81)
        {
          v33 = v32;
          for (i = 0; i < v81; ++i)
          {
            v35 = *(v33 + i);
            if (v35 == 37)
            {
              ++i;
              v36 = cstdlib_isdigit(*(v33 + i));
              v37 = *(v33 + i);
              if (v36)
              {
                if (v37 == 48)
                {
                  luaL_addlstring(&v82, v2, v16 - v2, v7, v8, v9, v10, v11);
                }

                else
                {
                  push_onecapture(v46, v37 - 49, v2, v16, v8, v9, v10, v11);
                  luaL_tolstring(v17, 0xFFFFFFFFLL, 0);
                  lua_rotate(v17, -2, -1);
                  lua_settop(v17, 0xFFFFFFFE);
                  luaL_addvalue(&v82);
                }
              }

              else
              {
                if (v37 != 37)
                {
                  luaL_error(v17, "invalid use of '%c' in replacement string", v15, v7, v8, v9, v10, v11, 37);
                }

                v39 = v83;
                if (v83 >= *(&v82 + 1))
                {
                  luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
                  v39 = v83;
                }

                v40 = *(v33 + i);
                *&v83 = v39 + 1;
                *(v82 + v39) = v40;
              }
            }

            else
            {
              v38 = v83;
              if (v83 >= *(&v82 + 1))
              {
                luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
                LOBYTE(v35) = *(v33 + i);
                v38 = v83;
              }

              *&v83 = v38 + 1;
              *(v82 + v38) = v35;
            }
          }
        }

        v5 = v45;
      }

      ++v13;
      if (v16 > v2)
      {
        goto LABEL_39;
      }
    }

    if (v2 >= v47)
    {
      break;
    }

    v41 = v83;
    if (v83 >= *(&v82 + 1))
    {
      luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
      v41 = v83;
    }

    v42 = *v2;
    *&v83 = v41 + 1;
    *(v82 + v41) = v42;
    v16 = v2 + 1;
LABEL_39:
    v2 = v16;
    if (v6 == 94)
    {
      goto LABEL_42;
    }
  }

  v16 = v2;
LABEL_42:
  luaL_addlstring(&v82, v16, v47 - v16, v7, v8, v9, v10, v11);
  luaL_pushresult(&v82);
  lua_pushinteger(v44, v13);
  return 2;
}

uint64_t str_len(void *a1)
{
  v3 = 0;
  luaL_checklstring(a1, 1, &v3);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t str_lower(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  memset(v14, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v13);
  v8 = luaL_buffinitsize(a1, v14, v13, v3, v4, v5, v6, v7);
  if (v13)
  {
    v9 = v8;
    for (i = 0; i < v13; ++i)
    {
      v9[i] = cstdlib_tolower(*(v2 + i));
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  luaL_pushresultsize(v14, v11);
  return 1;
}

uint64_t str_rep(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = luaL_checklstring(a1, 1, &__n);
  v3 = luaL_checkinteger(a1, 2);
  v4 = luaL_optlstring(a1, 3, "", &v16);
  if (v3 <= 0)
  {
    lua_pushstring(a1, "");
  }

  else
  {
    if (__CFADD__(v16, __n) || v16 + __n > 0x7FFFFFFFuLL / v3)
    {
      return luaL_error(a1, "resulting string too large", v5, v6, v7, v8, v9, v10, v16);
    }

    v12 = v4;
    v13 = __n * v3 + v16 * (v3 - 1);
    memset(v18, 0, 512);
    v14 = luaL_buffinitsize(a1, v18, v13, v6, v7, v8, v9, v10);
    if (v3 != 1)
    {
      v15 = v3 + 1;
      do
      {
        cstdlib_memcpy(v14, v2, __n);
        v14 += __n;
        if (v16)
        {
          cstdlib_memcpy(v14, v12, v16);
          v14 += v16;
        }

        --v15;
      }

      while (v15 > 2);
    }

    cstdlib_memcpy(v14, v2, __n);
    luaL_pushresultsize(v18, v13);
  }

  return 1;
}

uint64_t str_reverse(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  memset(v14, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v13);
  v8 = luaL_buffinitsize(a1, v14, v13, v3, v4, v5, v6, v7);
  v9 = v13;
  if (v13)
  {
    v10 = 0;
    v11 = v2 - 1;
    do
    {
      v8[v10++] = *(v11 + v9);
      v9 = v13;
      --v11;
    }

    while (v10 < v13);
  }

  luaL_pushresultsize(v14, v9);
  return 1;
}

uint64_t str_sub(void *a1)
{
  v14 = 0;
  v2 = luaL_checklstring(a1, 1, &v14);
  v3 = luaL_checkinteger(a1, 2);
  if (v14 >= -v3)
  {
    v4 = v3 + v14 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, -1);
  v7 = v14;
  if (v14 >= -v6)
  {
    v8 = v6 + v14 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v5 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5;
  }

  if (v9 < v14)
  {
    v7 = v9;
  }

  v11 = v7 < v10;
  v12 = v7 - v10;
  if (v11)
  {
    lua_pushstring(a1, "");
  }

  else
  {
    lua_pushlstring(a1, (v2 + v10 - 1), v12 + 1);
  }

  return 1;
}

uint64_t str_upper(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  memset(v14, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v13);
  v8 = luaL_buffinitsize(a1, v14, v13, v3, v4, v5, v6, v7);
  if (v13)
  {
    v9 = v8;
    for (i = 0; i < v13; ++i)
    {
      v9[i] = cstdlib_toupper(*(v2 + i));
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  luaL_pushresultsize(v14, v11);
  return 1;
}

uint64_t str_pack(void *a1)
{
  v106 = *MEMORY[0x277D85DE8];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v69 = luaL_checklstring(a1, 1, 0);
  v70 = a1;
  v71 = 0x100000001;
  lua_pushnil(a1);
  luaL_buffinit(a1, &v74);
  if (*v69)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v68 = 0;
      v10 = getdetails(&v70, v5, &v69, &v68 + 1, &v68, v2, v3, v4);
      v11 = v68;
      v12 = HIDWORD(v68);
      if (v68 >= 1)
      {
        v13 = v68 + 1;
        do
        {
          v14 = v75;
          if (v75 >= *(&v74 + 1))
          {
            luaL_prepbuffsize(&v74, 1uLL, v7, v8, v9, v2, v3, v4);
            v14 = v75;
          }

          *&v75 = v14 + 1;
          *(v74 + v14) = 0;
          --v13;
        }

        while (v13 > 1);
      }

      v5 += v12 + v11;
      v15 = (v6 + 1);
      if (v10 > 4)
      {
        if ((v10 - 7) >= 2)
        {
          if (v10 == 5)
          {
            *&v72[0] = 0;
            v23 = luaL_checklstring(a1, (v6 + 1), v72);
            v24 = cstdlib_strlen(v23);
            if (v24 != *&v72[0])
            {
              luaL_argerror(a1, (v6 + 1));
              v24 = *&v72[0];
            }

            luaL_addlstring(&v74, v23, v24, v25, v26, v27, v28, v29);
            v33 = v75;
            if (v75 >= *(&v74 + 1))
            {
              luaL_prepbuffsize(&v74, 1uLL, v30, v31, v32, v2, v3, v4);
              v33 = v75;
            }

            *&v75 = v33 + 1;
            *(v74 + v33) = 0;
            v5 += *&v72[0] + 1;
            goto LABEL_55;
          }

          v49 = v75;
          if (v75 >= *(&v74 + 1))
          {
            luaL_prepbuffsize(&v74, 1uLL, v7, v8, v9, v2, v3, v4);
            v49 = v75;
          }

          *&v75 = v49 + 1;
          *(v74 + v49) = 0;
        }

        v15 = v6;
      }

      else if (v10 <= 1)
      {
        v34 = (v6 + 1);
        if (v10)
        {
          v60 = luaL_checkinteger(a1, v34);
          v61 = v60;
          if (v12 <= 7 && v60 >> (8 * v12))
          {
            luaL_argerror(a1, (v6 + 1));
          }

          v42 = v71;
          v44 = v61;
          v45 = v12;
          v43 = 0;
        }

        else
        {
          v35 = luaL_checkinteger(a1, v34);
          v39 = v35;
          if (v12 <= 7)
          {
            v40 = 1 << (8 * v12 - 1);
            if (v35 < -v40 || v35 >= v40)
            {
              luaL_argerror(a1, (v6 + 1));
            }
          }

          v42 = v71;
          v43 = v39 >> 63;
          v44 = v39;
          v45 = v12;
        }

        packint(&v74, v44, v42, v45, v43, v36, v37, v38);
      }

      else
      {
        v16 = v12;
        if (v10 == 2)
        {
          v73 = 0;
          memset(v72, 0, sizeof(v72));
          v46 = luaL_prepbuffsize(&v74, v12, v7, v8, v9, v2, v3, v4);
          v47 = luaL_checknumber(a1, v15);
          if (v12 == 4)
          {
            v48 = v47;
            *v72 = v48;
          }

          else
          {
            *v72 = v47;
          }

          if (v71 == 1)
          {
            if (v12)
            {
              v62 = v72;
              do
              {
                v63 = *v62++;
                *v46++ = v63;
                LODWORD(v12) = v12 - 1;
              }

              while (v12);
            }
          }

          else if (v12)
          {
            v64 = &v46[v12 - 1];
            v65 = v72;
            do
            {
              v66 = *v65++;
              *v64-- = v66;
              LODWORD(v12) = v12 - 1;
            }

            while (v12);
          }

          *&v75 = v75 + v16;
        }

        else if (v10 == 3)
        {
          *&v72[0] = 0;
          v22 = luaL_checklstring(a1, v15, v72);
          if (*&v72[0] != v12)
          {
            luaL_argerror(a1, v15);
          }

          luaL_addlstring(&v74, v22, v12, v17, v18, v19, v20, v21);
        }

        else
        {
          *&v72[0] = 0;
          v53 = luaL_checklstring(a1, v15, v72);
          v54 = *&v72[0];
          if (v12 <= 7 && *&v72[0] >> (8 * v12))
          {
            luaL_argerror(a1, v15);
            v54 = *&v72[0];
          }

          packint(&v74, v54, v71, v12, 0, v50, v51, v52);
          luaL_addlstring(&v74, v53, *&v72[0], v55, v56, v57, v58, v59);
          v5 += *&v72[0];
        }
      }

LABEL_55:
      v6 = v15;
    }

    while (*v69);
  }

  luaL_pushresult(&v74);
  return 1;
}

uint64_t str_packsize(void *a1)
{
  v10 = luaL_checklstring(a1, 1, 0);
  v11[0] = a1;
  v11[1] = 0x100000001;
  if (*v10)
  {
    v5 = 0;
    do
    {
      v9 = 0;
      v6 = getdetails(v11, v5, &v10, &v9 + 1, &v9, v2, v3, v4);
      v7 = SHIDWORD(v9) + v9;
      if (v5 > 0x7FFFFFFF - v7)
      {
        luaL_argerror(a1, 1);
      }

      if ((v6 & 0xE) == 4)
      {
        luaL_argerror(a1, 1);
      }

      v5 += v7;
    }

    while (*v10);
  }

  else
  {
    v5 = 0;
  }

  lua_pushinteger(a1, v5);
  return 1;
}

uint64_t str_unpack(void *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = luaL_checklstring(a1, 1, 0);
  v40 = 0;
  v41 = v2;
  v3 = luaL_checklstring(a1, 2, &v40);
  v4 = luaL_optinteger(a1, 3, 1);
  if (v40 >= -v4)
  {
    v8 = v4 + v40 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v4 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9 - 1;
  if (v9 - 1 > v40)
  {
    luaL_argerror(a1, 3);
  }

  v42 = a1;
  v43 = 0x100000001;
  if (!*v2)
  {
    v36 = 1;
    goto LABEL_42;
  }

  v11 = 0;
  v38 = &v43 + 7;
  do
  {
    v39 = 0;
    v17 = getdetails(&v42, v10, &v41, &v39 + 1, &v39, v5, v6, v7);
    v18 = HIDWORD(v39);
    v19 = SHIDWORD(v39);
    v20 = v10 + v39;
    if (__CFADD__(v10, v39 + SHIDWORD(v39)) || v20 + SHIDWORD(v39) > v40)
    {
      luaL_argerror(a1, 2);
    }

    luaL_checkstack(a1, 2, "too many results", v12, v13, v14, v15, v16, v38);
    if (v17 > 3)
    {
      if ((v17 - 6) < 3)
      {
        goto LABEL_39;
      }

      if (v17 != 4)
      {
        v31 = cstdlib_strlen((v3 + v20));
        lua_pushlstring(a1, (v3 + v20), v31);
        v20 += v31 + 1;
        goto LABEL_38;
      }

      v22 = v3 + v20;
      v23 = unpackint(a1, v3 + v20, v43, v18, 0, v5, v6, v7);
      v20 += v23;
      if (v20 + v19 > v40)
      {
        luaL_argerror(a1, 2);
      }

      v24 = (v22 + v19);
      v25 = a1;
      v26 = v23;
      goto LABEL_29;
    }

    if (v17 >= 2)
    {
      if (v17 != 2)
      {
        v24 = (v3 + v20);
        v25 = a1;
        v26 = v19;
LABEL_29:
        lua_pushlstring(v25, v24, v26);
        goto LABEL_38;
      }

      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v27 = (v3 + v20);
      if (v43 == 1)
      {
        if (!v18)
        {
          goto LABEL_36;
        }

        v28 = v44;
        v29 = v18;
        do
        {
          v30 = *v27++;
          *v28++ = v30;
          --v29;
        }

        while (v29);
      }

      else
      {
        if (!v18)
        {
          goto LABEL_36;
        }

        v32 = &v38[v19];
        v33 = v18;
        do
        {
          v34 = *v27++;
          *v32-- = v34;
          --v33;
        }

        while (v33);
      }

      if (v18 == 4)
      {
        v35 = *v44;
LABEL_37:
        lua_pushnumber(a1, v35);
        goto LABEL_38;
      }

LABEL_36:
      v35 = *v44;
      goto LABEL_37;
    }

    v21 = unpackint(a1, v3 + v20, v43, v18, v17 == 0, v5, v6, v7);
    lua_pushinteger(a1, v21);
LABEL_38:
    ++v11;
LABEL_39:
    v10 = v20 + v19;
  }

  while (*v41);
  v9 = v10 + 1;
  v36 = (v11 + 1);
LABEL_42:
  lua_pushinteger(a1, v9);
  return v36;
}

uint64_t str_find_aux(void *a1, int a2)
{
  v68 = 0;
  v69 = 0;
  v4 = luaL_checklstring(a1, 1, &v69);
  v5 = luaL_checklstring(a1, 2, &v68);
  v6 = luaL_optinteger(a1, 3, 1);
  v12 = v6;
  if (v6 < 0)
  {
    if (v69 < -v6)
    {
      goto LABEL_8;
    }

    v12 = v69 + v6 + 1;
  }

  if (v12 < 1)
  {
LABEL_8:
    v12 = 1;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if (v12 > (v69 + 1))
  {
    goto LABEL_27;
  }

  if (a2)
  {
LABEL_9:
    if (!lua_toBOOLean(a1, 4))
    {
      v13 = 0;
      v14 = v68;
      while (!cstdlib_strpbrk(&v5[v13], "^$*+?.([%-"))
      {
        v13 += cstdlib_strlen(&v5[v13]) + 1;
        if (v13 > v14)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_20;
    }

LABEL_13:
    v15 = (v4 + v12 - 1);
    if (!v68)
    {
LABEL_32:
      v35 = &v15[-v4];
      lua_pushinteger(a1, (v35 + 1));
      lua_pushinteger(a1, &v35[v68]);
      return 2;
    }

    v16 = v69 - v12 + 1;
    if (v68 <= v16)
    {
      v17 = v68 - 1;
      v18 = v16 - (v68 - 1);
      if (v16 != v68 - 1)
      {
        do
        {
          v19 = cstdlib_memchr(v15, *v5, v18);
          if (!v19)
          {
            break;
          }

          v20 = v19;
          v21 = v19 + 1;
          if (!cstdlib_memcmp(v19 + 1, v5 + 1, v17))
          {
            v15 = v20;
            goto LABEL_32;
          }

          v22 = &v15[v18];
          v15 = v21;
          v18 = v22 - v21;
        }

        while (v22 != v21);
      }
    }

LABEL_27:
    lua_pushnil(a1);
    return 1;
  }

LABEL_20:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = (v4 + v12 - 1);
  v24 = *v5;
  v25 = v68;
  if (v24 == 94)
  {
    ++v5;
    v25 = --v68;
  }

  LODWORD(v36) = 200;
  *(&v36 + 1) = v4;
  *&v37 = v4 + v69;
  *(&v37 + 1) = &v5[v25];
  *&v38 = a1;
  while (1)
  {
    DWORD2(v38) = 0;
    v26 = match(&v36, v23, v5, v7, v8, v9, v10, v11);
    if (v26)
    {
      break;
    }

    if (v24 != 94)
    {
      ++v12;
      if (v23++ < v37)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v29 = v26;
  if (!a2)
  {
    return push_captures(&v36, v23, v26, v7, v8, v9, v10, v11);
  }

  lua_pushinteger(a1, v12);
  lua_pushinteger(a1, v29 - v4);
  return push_captures(&v36, 0, 0, v30, v31, v32, v33, v34) + 2;
}

uint64_t match(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex", a3, a4, a5, a6, a7, a8, v47);
  }

  v12 = a1 + 48;
LABEL_4:
  v13 = v8;
  while (1)
  {
    v14 = *(a1 + 24);
    if (v13 == v14)
    {
      result = a2;
      goto LABEL_87;
    }

    v15 = *v13;
    if (v15 <= 0x24)
    {
      if (v15 == 36 && v13 + 1 == v14)
      {
        if (a2 == *(a1 + 16))
        {
          result = a2;
        }

        else
        {
          result = 0;
        }

        goto LABEL_87;
      }

      goto LABEL_20;
    }

    if (v15 != 37)
    {
      break;
    }

    v16 = v13[1];
    if (v16 == 102)
    {
      v22 = v13[2];
      v21 = v13 + 2;
      if (v22 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern", a3, a4, a5, a6, a7, a8, v47);
      }

      v23 = classend(a1, v21, a3, a4, a5, a6, a7, a8);
      if (a2 == *(a1 + 8))
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a2 - 1);
      }

      if (matchbracketclass(v24, v21, (v23 - 1)))
      {
        goto LABEL_72;
      }

      v25 = matchbracketclass(*a2, v21, (v23 - 1));
      v13 = v23;
      if (!v25)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v16 - 48 < 0xA)
      {
        v26 = v16 - 49;
        if (v16 < 0x31 || v26 >= *(a1 + 40) || *(v12 + 16 * v26 + 8) == -1)
        {
          v26 = luaL_error(*(a1 + 32), "invalid capture index %%%d", a3, a4, a5, a6, a7, a8, v16 - 48);
        }

        v27 = v12 + 16 * v26;
        v28 = *(v27 + 8);
        if (*(a1 + 16) - a2 >= v28 && !cstdlib_memcmp(*v27, a2, *(v27 + 8)) && a2 != 0)
        {
          a2 += v28;
          v8 = v13 + 2;
          goto LABEL_4;
        }

        goto LABEL_72;
      }

      if (v16 == 98)
      {
        if (v14 - 1 <= v13 + 2)
        {
          luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')", a3, a4, a5, a6, a7, a8, v47);
        }

        v30 = *a2;
        if (v30 == v13[2])
        {
          v31 = *(a1 + 16);
          v32 = a2 + 1;
          if ((a2 + 1) < v31)
          {
            v33 = 1;
            while (1)
            {
              v34 = *v32;
              if (v34 == v13[3])
              {
                if (!--v33)
                {
                  a2 = v32 + 1;
                  v8 = v13 + 4;
                  goto LABEL_4;
                }
              }

              else if (v34 == v30)
              {
                ++v33;
              }

              result = 0;
              if (++v32 == v31)
              {
                goto LABEL_87;
              }
            }
          }
        }

        goto LABEL_72;
      }

LABEL_20:
      v8 = classend(a1, v13, a3, a4, a5, a6, a7, a8);
      v18 = singlematch(a1, a2, v13, v8);
      v19 = *v8;
      if (v18)
      {
        if (v19 != 63)
        {
          if (v19 != 42)
          {
            if (v19 != 43)
            {
              if (v19 != 45)
              {
                ++a2;
                goto LABEL_4;
              }

              while (1)
              {
                result = match(a1, a2, v8 + 1);
                if (result)
                {
                  goto LABEL_87;
                }

                if (!singlematch(a1, a2, v13, v8))
                {
                  goto LABEL_72;
                }

                ++a2;
              }
            }

            ++a2;
          }

          v35 = -1;
          do
          {
            v36 = singlematch(a1, a2++, v13, v8);
            ++v35;
          }

          while (v36);
          v37 = a2 - 1;
          while ((v35 & 0x8000000000000000) == 0)
          {
            result = match(a1, v37, v8 + 1);
            --v35;
            --v37;
            if (result)
            {
              goto LABEL_87;
            }
          }

LABEL_72:
          result = 0;
          goto LABEL_87;
        }

        v13 = v8 + 1;
        result = match(a1, a2 + 1, v8 + 1);
        if (result)
        {
          goto LABEL_87;
        }
      }

      else
      {
        result = 0;
        if (v19 > 0x3F || ((1 << v19) & 0x8000240000000000) == 0)
        {
          goto LABEL_87;
        }

        v13 = v8 + 1;
      }
    }
  }

  if (v15 != 41)
  {
    if (v15 == 40)
    {
      v38 = (v13 + 1);
      if (v13[1] == 41)
      {
        v38 = (v13 + 2);
        v39 = a1;
        v40 = a2;
        v41 = 4294967294;
      }

      else
      {
        v39 = a1;
        v40 = a2;
        v41 = 0xFFFFFFFFLL;
      }

      result = start_capture(v39, v40, v38, v41, a5, a6, a7, a8);
      goto LABEL_87;
    }

    goto LABEL_20;
  }

  v42 = *(a1 + 40);
  v43 = 16 * v42 + 40;
  while (1)
  {
    v44 = __OFSUB__(v42, 1);
    LODWORD(v42) = v42 - 1;
    if (v42 < 0 != v44)
    {
      break;
    }

    v45 = *(a1 + v43);
    v43 -= 16;
    if (v45 == -1)
    {
      goto LABEL_83;
    }
  }

  LODWORD(v42) = luaL_error(*(a1 + 32), "invalid pattern capture", a3, a4, a5, a6, a7, a8, v47);
LABEL_83:
  v46 = (v12 + 16 * v42);
  v46[1] = &a2[-*v46];
  result = match(a1, a2, v13 + 1);
  if (!result)
  {
    v46[1] = -1;
  }

LABEL_87:
  ++*a1;
  return result;
}

uint64_t push_captures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  luaL_checkstack(*(a1 + 32), v13, "too many captures", a4, a5, a6, a7, a8, v20);
  if (v13 >= 1)
  {
    v18 = 0;
    do
    {
      push_onecapture(a1, v18++, a2, a3, v14, v15, v16, v17);
    }

    while (v13 != v18);
  }

  return v13;
}

uint64_t start_capture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a1 + 40);
  if (v12 >= 32)
  {
    luaL_error(*(a1 + 32), "too many captures", a3, a4, a5, a6, a7, a8, v15);
  }

  v13 = a1 + 16 * v12;
  *(v13 + 48) = a2;
  *(v13 + 56) = v8;
  *(a1 + 40) = v12 + 1;
  result = match(a1, a2, a3);
  if (!result)
  {
    --*(a1 + 40);
  }

  return result;
}

unsigned __int8 *classend(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a2 + 1;
  v11 = *a2;
  if (v11 == 91)
  {
    if (a2[1] == 94)
    {
      v12 = a2 + 2;
    }

    else
    {
      v12 = a2 + 1;
    }

    do
    {
      if (v12 == *(a1 + 24))
      {
        luaL_error(*(a1 + 32), "malformed pattern (missing ']')", a3, a4, a5, a6, a7, a8, v14);
      }

      v13 = v12 + 1;
      if (*v12 == 37 && v13 < *(a1 + 24))
      {
        v13 = v12 + 2;
      }

      v12 = v13;
    }

    while (*v13 != 93);
    return v13 + 1;
  }

  else if (v11 == 37)
  {
    if (result == *(a1 + 24))
    {
      luaL_error(*(a1 + 32), "malformed pattern (ends with '%%')", a3, a4, a5, a6, a7, a8, v14);
    }

    return a2 + 2;
  }

  return result;
}

BOOL matchbracketclass(int a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = v4 == 94;
  v6 = v4 != 94;
  if (v4 != 94)
  {
    v3 = a2;
  }

  for (i = v3 + 1; (v3 + 1) < a3; i = v3 + 1)
  {
    v11 = v3 + 2;
    v10 = v3[2];
    v12 = v3[1];
    if (v12 == 37)
    {
      matched = match_class(a1, v10);
      v3 = v11;
      if (matched)
      {
        return v6;
      }
    }

    else
    {
      v3 += 3;
      if (v10 != 45 || v3 >= a3)
      {
        v3 = i;
        if (v12 == a1)
        {
          return v6;
        }
      }

      else if (v12 <= a1 && *v3 >= a1)
      {
        return v6;
      }
    }
  }

  return v5;
}

uint64_t singlematch(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a3;
  switch(v5)
  {
    case '[':
      return matchbracketclass(v4, a3, a4 - 1);
    case '.':
      return 1;
    case '%':
      return match_class(v4, a3[1]);
  }

  return v5 == v4;
}

BOOL match_class(int a1, int a2)
{
  v4 = cstdlib_tolower(a2);
  if (v4 <= 111)
  {
    if (v4 <= 99)
    {
      if (v4 == 97)
      {
        v5 = cstdlib_isalpha(a1);
        goto LABEL_26;
      }

      if (v4 == 99)
      {
        v5 = cstdlib_iscntrl(a1);
        goto LABEL_26;
      }
    }

    else
    {
      switch(v4)
      {
        case 'd':
          v5 = cstdlib_isdigit(a1);
          goto LABEL_26;
        case 'g':
          v5 = cstdlib_isgraph(a1);
          goto LABEL_26;
        case 'l':
          v5 = cstdlib_islower(a1);
          goto LABEL_26;
      }
    }

    return a2 == a1;
  }

  if (v4 > 118)
  {
    switch(v4)
    {
      case 'w':
        v5 = cstdlib_isalnum(a1);
        goto LABEL_26;
      case 'x':
        v5 = cstdlib_isxdigit(a1);
        goto LABEL_26;
      case 'z':
        v6 = a1 == 0;
        goto LABEL_27;
    }

    return a2 == a1;
  }

  if (v4 == 112)
  {
    v5 = cstdlib_ispunct(a1);
    goto LABEL_26;
  }

  if (v4 == 115)
  {
    v5 = cstdlib_isspace(a1);
    goto LABEL_26;
  }

  if (v4 != 117)
  {
    return a2 == a1;
  }

  v5 = cstdlib_isupper(a1);
LABEL_26:
  v6 = v5;
LABEL_27:
  if (cstdlib_islower(a2))
  {
    return v6;
  }

  else
  {
    return !v6;
  }
}

uint64_t push_onecapture(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) <= a2)
  {
    v11 = *(a1 + 32);
    if (a2)
    {
      return luaL_error(v11, "invalid capture index %%%d", a3, a4, a5, a6, a7, a8, (a2 + 1));
    }

    v12 = a3;
    v13 = a4 - a3;
    goto LABEL_9;
  }

  v9 = a1 + 16 * a2;
  v10 = *(v9 + 56);
  if (v10 != -2)
  {
    if (v10 == -1)
    {
      luaL_error(*(a1 + 32), "unfinished capture", a3, a4, a5, a6, a7, a8, v17);
    }

    v11 = *(a1 + 32);
    v12 = *(v9 + 48);
    v13 = v10;
LABEL_9:

    return lua_pushlstring(v11, v12, v13);
  }

  v15 = *(a1 + 32);
  v16 = *(v9 + 48) - *(a1 + 8) + 1;

  return lua_pushinteger(v15, v16);
}

char *addlenmod(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  v3 = cstdlib_strlen("");
  v4 = &a1[v2];
  LOBYTE(v2) = *(v4 - 1);
  result = cstdlib_strcpy(v4 - 1, "");
  v6 = &v4[v3];
  *(v6 - 1) = v2;
  *v6 = 0;
  return result;
}

uint64_t gmatch_aux(void *a1)
{
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
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
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0;
  v22 = 0;
  v2 = lua_tolstring(a1, -1001001, &v22);
  v3 = lua_tolstring(a1, -1001002, &v21);
  LODWORD(v23) = 200;
  v4 = v22;
  *(&v23 + 1) = v2;
  *&v24 = v2 + v22;
  *(&v24 + 1) = v3 + v21;
  *&v25 = a1;
  v5 = lua_tointegerx(a1, -1001003, 0);
  if (v5 > v4)
  {
    return 0;
  }

  v11 = (v2 + v5);
  while (1)
  {
    DWORD2(v25) = 0;
    v12 = match(&v23, v11, v3, v6, v7, v8, v9, v10);
    if (v12)
    {
      break;
    }

    if (++v11 > v24)
    {
      return 0;
    }
  }

  v14 = v12;
  if (v11 == v12)
  {
    v15 = v12 - v2 + 1;
  }

  else
  {
    v15 = v12 - v2;
  }

  lua_pushinteger(a1, v15);
  lua_copy(a1, -1, -1001003);
  lua_settop(a1, 0xFFFFFFFE);
  return push_captures(&v23, v11, v14, v16, v17, v18, v19, v20);
}

uint64_t getdetails(void **a1, int a2, void *a3, int *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = getoption(a1, a3, a4, a4, a5, a6, a7, a8);
  v19 = *a4;
  v24 = v19;
  if (v18 == 7)
  {
    if (!**a3 || (v20 = getoption(a1, a3, &v24, v13, v14, v15, v16, v17), v19 = v24, v20 == 3) || !v24)
    {
      luaL_argerror(*a1, 1);
    }
  }

  v21 = 0;
  if (v18 != 3 && v19 >= 2)
  {
    if (v19 >= *(a1 + 3))
    {
      v22 = *(a1 + 3);
    }

    else
    {
      v22 = v19;
    }

    if ((v22 & (v22 - 1)) != 0)
    {
      luaL_argerror(*a1, 1);
    }

    v21 = (v22 - ((v22 - 1) & a2)) & (v22 - 1);
  }

  *a5 = v21;
  return v18;
}

char *packint(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = a4;
  result = luaL_prepbuffsize(a1, a4, a3, a4, a5, a6, a7, a8);
  v15 = v9 - 1;
  if (v10)
  {
    v15 = 0;
  }

  result[v15] = a2;
  v16 = v9 - 2;
  if (v9 >= 2)
  {
    v17 = 1;
    do
    {
      a2 >>= 8;
      if (v10)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      result[v18] = a2;
      ++v17;
      --v16;
    }

    while (v16 != -1);
    if (v9 >= 9 && v8)
    {
      v19 = vdupq_n_s32(v9 - 9);
      v20 = v9 - 24;
      v21 = 23;
      do
      {
        v22 = vdupq_n_s32(v21 - 23);
        v23 = vmovn_s32(vcgeq_u32(v19, vorrq_s8(v22, xmmword_26ECCEBC0)));
        if (vuzp1_s8(v23, *v19.i8).u8[0])
        {
          v24 = v21 - 15;
          if (!v10)
          {
            v24 = v20 + 15;
          }

          result[v24] = -1;
        }

        if (vuzp1_s8(v23, *&v19).i8[1])
        {
          v25 = v21 - 14;
          if (!v10)
          {
            v25 = v20 + 14;
          }

          result[v25] = -1;
        }

        if (vuzp1_s8(v23, *&v19).i8[2])
        {
          v26 = v21 - 13;
          if (!v10)
          {
            v26 = v20 + 13;
          }

          result[v26] = -1;
        }

        if (vuzp1_s8(v23, *&v19).i8[3])
        {
          v27 = v21 - 12;
          if (!v10)
          {
            v27 = v20 + 12;
          }

          result[v27] = -1;
        }

        v28 = vmovn_s32(vcgeq_u32(v19, vorrq_s8(v22, xmmword_26ECCEBB0)));
        if (vuzp1_s8(*&v19, v28).i32[1])
        {
          v29 = v21 - 11;
          if (!v10)
          {
            v29 = v20 + 11;
          }

          result[v29] = -1;
        }

        if (vuzp1_s8(*&v19, v28).i8[5])
        {
          v30 = v21 - 10;
          if (!v10)
          {
            v30 = v20 + 10;
          }

          result[v30] = -1;
        }

        if (vuzp1_s8(*&v19, v28).i8[6])
        {
          v31 = v21 - 9;
          if (!v10)
          {
            v31 = v20 + 9;
          }

          result[v31] = -1;
        }

        if (vuzp1_s8(*&v19, v28).i8[7])
        {
          v32 = v21 - 8;
          if (!v10)
          {
            v32 = v20 + 8;
          }

          result[v32] = -1;
        }

        v33 = vmovn_s32(vcgeq_u32(v19, vorrq_s8(v22, xmmword_26ECCEBA0)));
        if (vuzp1_s8(v33, *v19.i8).u8[0])
        {
          v34 = v21 - 7;
          if (!v10)
          {
            v34 = v20 + 7;
          }

          result[v34] = -1;
        }

        if (vuzp1_s8(v33, *&v19).i8[1])
        {
          v35 = v21 - 6;
          if (!v10)
          {
            v35 = v20 + 6;
          }

          result[v35] = -1;
        }

        if (vuzp1_s8(v33, *&v19).i8[2])
        {
          v36 = v21 - 5;
          if (!v10)
          {
            v36 = v20 + 5;
          }

          result[v36] = -1;
        }

        if (vuzp1_s8(v33, *&v19).i8[3])
        {
          v37 = v21 - 4;
          if (!v10)
          {
            v37 = v20 + 4;
          }

          result[v37] = -1;
        }

        v38 = vmovn_s32(vcgeq_u32(v19, vorrq_s8(v22, xmmword_26ECCEB90)));
        if (vuzp1_s8(*&v19, v38).i32[1])
        {
          v39 = v21 - 3;
          if (!v10)
          {
            v39 = v20 + 3;
          }

          result[v39] = -1;
        }

        if (vuzp1_s8(*&v19, v38).i8[5])
        {
          v40 = v21 - 2;
          if (!v10)
          {
            v40 = v20 + 2;
          }

          result[v40] = -1;
        }

        if (vuzp1_s8(*&v19, v38).i8[6])
        {
          v41 = v21 - 1;
          if (!v10)
          {
            v41 = v20 + 1;
          }

          result[v41] = -1;
        }

        if (vuzp1_s8(*&v19, v38).i8[7])
        {
          if (v10)
          {
            v42 = v21;
          }

          else
          {
            v42 = v20;
          }

          result[v42] = -1;
        }

        v20 -= 16;
        v21 += 16;
      }

      while (v21 - ((v9 + 7) & 0xFFFFFFF0) != 23);
    }
  }

  *(a1 + 16) += v13;
  return result;
}

uint64_t getoption(void **a1, void *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = (*a2 + 1);
  *a2 = v10;
  v11 = *v9;
  *a3 = 0;
  if (v11 <= 97)
  {
    if (v11 <= 71)
    {
      if (v11 > 60)
      {
        if (v11 == 61)
        {
LABEL_42:
          *(a1 + 2) = 1;
          return 8;
        }

        if (v11 != 62)
        {
          if (v11 == 66)
          {
            result = 1;
            *a3 = 1;
            return result;
          }

          goto LABEL_58;
        }

        *(a1 + 2) = 0;
      }

      else if (v11 != 32)
      {
        if (v11 == 33)
        {
          *(a1 + 3) = getnumlimit(a1, a2, 8, a4, a5, a6, a7, a8);
          return 8;
        }

        if (v11 != 60)
        {
          goto LABEL_58;
        }

        goto LABEL_42;
      }

      return 8;
    }

    if (v11 > 75)
    {
      if (v11 != 76 && v11 != 84)
      {
        if (v11 == 88)
        {
          return 7;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v11 == 72)
      {
        v15 = 2;
        goto LABEL_53;
      }

      if (v11 == 73)
      {
        *a3 = getnumlimit(a1, a2, 4, a4, a5, a6, a7, a8);
        return 1;
      }

      if (v11 != 74)
      {
        goto LABEL_58;
      }
    }

    v15 = 8;
LABEL_53:
    *a3 = v15;
    return 1;
  }

  if (v11 > 105)
  {
    if (v11 > 114)
    {
      switch(v11)
      {
        case 's':
          *a3 = getnumlimit(a1, a2, 8, a4, a5, a6, a7, a8);
          return 4;
        case 'x':
          *a3 = 1;
          return 6;
        case 'z':
          return 5;
      }

      goto LABEL_58;
    }

    if (v11 == 106 || v11 == 108)
    {
      result = 0;
      v14 = 8;
      goto LABEL_51;
    }

    if (v11 == 110)
    {
LABEL_23:
      v12 = 8;
LABEL_56:
      *a3 = v12;
      return 2;
    }

LABEL_58:
    luaL_error(*a1, "invalid format option '%c'", a3, a4, a5, a6, a7, a8, v11);
    return 8;
  }

  if (v11 > 101)
  {
    switch(v11)
    {
      case 'f':
        v12 = 4;
        goto LABEL_56;
      case 'h':
        result = 0;
        v14 = 2;
        goto LABEL_51;
      case 'i':
        v14 = getnumlimit(a1, a2, 4, a4, a5, a6, a7, a8);
        result = 0;
LABEL_51:
        *a3 = v14;
        return result;
    }

    goto LABEL_58;
  }

  if (v11 == 98)
  {
    result = 0;
    v14 = 1;
    goto LABEL_51;
  }

  if (v11 != 99)
  {
    if (v11 != 100)
    {
      goto LABEL_58;
    }

    goto LABEL_23;
  }

  if ((*v10 - 58) >= 0xFFFFFFF6)
  {
    v16 = 0;
    v17 = (v9 + 2);
    do
    {
      *a2 = v17;
      v16 = *(v17 - 1) + 10 * v16 - 48;
      v18 = *v17++ - 48;
    }

    while (v18 <= 9 && v16 < 214748364);
    *a3 = v16;
    if (v16 != -1)
    {
      return 3;
    }
  }

  else
  {
    *a3 = -1;
  }

  luaL_error(*a1, "missing size for format option 'c'", a3, a4, a5, a6, a7, a8, v20);
  return 3;
}

uint64_t getnumlimit(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if ((**a2 - 58) >= 0xFFFFFFF6)
  {
    LODWORD(v8) = 0;
    v9 = (*a2 + 1);
    do
    {
      *a2 = v9;
      v8 = (*(v9 - 1) + 10 * v8 - 48);
      v10 = *v9++ - 48;
    }

    while (v10 <= 9 && v8 < 214748364);
  }

  if ((v8 - 17) <= 0xFFFFFFEF)
  {
    luaL_error(*a1, "integral size (%d) out of limits [1,%d]", a3, a4, a5, a6, a7, a8, v8);
  }

  return v8;
}

uint64_t unpackint(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = a4;
  }

  if (a4 < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = a3;
    v13 = 0;
    v14 = v9 + 1;
    v15 = a4 - v9;
    do
    {
      v16 = v13;
      v17 = v14 - 2;
      if (!a3)
      {
        v17 = v15;
      }

      v13 = *(a2 + v17) | (v13 << 8);
      --v14;
      ++v15;
    }

    while (v14 > 1);
    if (a4 > 7)
    {
      if (a4 != 8)
      {
        if ((v16 << 8) > -1 || a5 == 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 255;
        }

        v20 = ~v9 + a4;
        do
        {
          if (v10)
          {
            v21 = v9;
          }

          else
          {
            v21 = v20;
          }

          if (v19 != *(a2 + v21))
          {
            luaL_error(a1, "%d-byte integer does not fit into Lua Integer", a3, a4, a5, a6, a7, a8, a4);
          }

          ++v9;
          --v20;
        }

        while (v9 < a4);
      }

      return v13;
    }
  }

  if (a5)
  {
    return (v13 ^ (1 << (8 * a4 - 1))) - (1 << (8 * a4 - 1));
  }

  return v13;
}

uint64_t luaH_next(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  if (v6 == 19)
  {
    v7 = *a3;
    if ((*a3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v8 = *(a2 + 12);
      if (v8 >= v7)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v6)
  {
    LODWORD(v7) = 0;
    v8 = *(a2 + 12);
    goto LABEL_15;
  }

  v9 = mainposition(a2, a3);
  for (i = v9 + 4; !luaV_equalobj(0, v9 + 4, a3); i = v9 + 4)
  {
    if (v9[6] == 10 && (a3[1] & 0x40) != 0 && *i == *a3)
    {
      break;
    }

    v11 = v9[7];
    if (v11)
    {
      v9 += 8 * v11;
    }

    else
    {
      luaG_runerror(a1, "invalid key to 'next'");
    }
  }

  v8 = *(a2 + 12);
  LODWORD(v7) = v8 + ((v9 - *(a2 + 24)) >> 5) + 1;
LABEL_15:
  v12 = v8 - v7;
  if (v8 <= v7)
  {
LABEL_20:
    v16 = v7 - v8;
    v17 = 1 << *(a2 + 11);
    if (v16 >= v17)
    {
      return 0;
    }

    while (1)
    {
      v18 = *(a2 + 24) + 32 * v16;
      if (*(v18 + 8))
      {
        break;
      }

      if (v17 == ++v16)
      {
        return 0;
      }
    }

    *a3 = *(v18 + 16);
    v20 = *(a2 + 24);
    v14 = 32 * v16;
  }

  else
  {
    v13 = v7;
    v14 = 16 * v7;
    v15 = v13 + 1;
    while (!*(*(a2 + 16) + 8 + v14))
    {
      v14 += 16;
      ++v15;
      if (!--v12)
      {
        LODWORD(v7) = v8;
        goto LABEL_20;
      }
    }

    *a3 = v15;
    *(a3 + 2) = 19;
    v20 = *(a2 + 16);
  }

  *(a3 + 1) = *(v20 + v14);
  return 1;
}

_OWORD *luaH_resize(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = *(a2 + 12);
  v9 = *(a2 + 11);
  v10 = *(a2 + 24);
  v11 = a3;
  if (v8 < a3)
  {
    v12 = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * a3);
    *(a2 + 16) = v12;
    v13 = *(a2 + 12);
    if (v13 < a3)
    {
      v14 = 0;
      v15 = (v11 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v16 = vdupq_n_s64(v11 - v13 - 1);
      v17 = (v12 + 16 * v13 + 40);
      do
      {
        v18 = vdupq_n_s64(v14);
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_26ECC7980)));
        if (vuzp1_s16(v19, *v16.i8).u8[0])
        {
          *(v17 - 8) = 0;
        }

        if (vuzp1_s16(v19, *&v16).i8[2])
        {
          *(v17 - 4) = 0;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_26ECCE810)))).i32[1])
        {
          *v17 = 0;
          v17[4] = 0;
        }

        v14 += 4;
        v17 += 16;
      }

      while (v15 != v14);
    }

    *(a2 + 12) = a3;
  }

  result = setnodevector(a1, a2, a4);
  if (v8 > a3)
  {
    *(a2 + 12) = a3;
    v21 = v8 - a3;
    v22 = v11 + 1;
    v23 = 16 * a3;
    do
    {
      v24 = (*(a2 + 16) + v23);
      if (v24->n128_u32[2])
      {
        luaH_setint(a1, a2, v22, v24);
      }

      ++v22;
      v23 += 16;
      --v21;
    }

    while (v21);
    result = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * v11);
    *(a2 + 16) = result;
  }

  v25 = 1 << v9;
  if (v9 != 31)
  {
    v26 = v25 + 1;
    v27 = &v10[32 * (v25 - 1) + 16];
    do
    {
      if (*(v27 - 2))
      {
        result = luaH_set(a1, a2, v27);
        *result = *(v27 - 1);
      }

      --v26;
      v27 -= 4;
    }

    while (v26 > 1);
  }

  if (v10 != &dummynode_)
  {

    return luaM_realloc_(a1, v10, 32 * v25, 0);
  }

  return result;
}

char *setnodevector(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = luaO_ceillog2(a3);
    if (v5 >= 31)
    {
      luaG_runerror(a1, "table overflow");
    }

    v6 = (1 << v5);
    result = luaM_realloc_(a1, 0, 0, 32 * v6);
    *(a2 + 24) = result;
    if (v5 != 31)
    {
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = 32 * v9;
      do
      {
        v11 = *(a2 + 24) + v8;
        *(v11 + 24) = 0;
        *(v11 + 8) = 0;
        v8 += 32;
      }

      while (v10 != v8);
      result = *(a2 + 24);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    result = &dummynode_;
    *(a2 + 24) = &dummynode_;
  }

  *(a2 + 11) = v5;
  *(a2 + 32) = &result[32 * v6];
  return result;
}

__n128 luaH_setint(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v8 = luaH_getint(a2, a3);
  if (v8 == &luaO_nilobject_)
  {
    v10[0] = a3;
    v10[1] = 19;
    v8 = luaH_newkey(a1, a2, v10);
  }

  result = *a4;
  *v8 = *a4;
  return result;
}

uint64_t *luaH_set(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = luaH_get(a2, a3);
  if (result == &luaO_nilobject_)
  {

    return luaH_newkey(a1, a2, a3);
  }

  return result;
}

_OWORD *luaH_resizearray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 24) == &dummynode_)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << *(a2 + 11);
  }

  return luaH_resize(a1, a2, a3, v3);
}

uint64_t luaH_new(uint64_t a1)
{
  result = luaC_newobj(a1, 5, 56);
  *(result + 10) = 255;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 24) = &dummynode_;
  *(result + 32) = &dummynode_;
  *(result + 40) = 0;
  return result;
}

uint64_t luaH_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != &dummynode_)
  {
    luaM_realloc_(a1, v4, 32 * (1 << *(a2 + 11)), 0);
  }

  luaM_realloc_(a1, *(a2 + 16), 16 * *(a2 + 12), 0);

  return luaM_realloc_(a1, a2, 56, 0);
}

uint64_t *luaH_newkey(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v6 = *(a3 + 2);
  if (v6 == 3)
  {
    *&v52[0] = 0;
    if (luaV_tointeger(a3, v52))
    {
      v50 = *&v52[0];
      LODWORD(v51) = 19;
      v3 = &v50;
    }
  }

  else if (!v6)
  {
    luaG_runerror(a1, "table index is nil", v50, v51);
  }

  v7 = mainposition(a2, v3);
  v8 = v7;
  if (v7 == &dummynode_ || *(v7 + 8))
  {
    v9 = 0;
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    while (1)
    {
      v12 = v11 + v9;
      if (v11 + v9 <= v10)
      {
        break;
      }

      *(a2 + 32) = v12 - 32;
      v9 -= 32;
      if (!*(v12 - 8))
      {
        v13 = mainposition(a2, (v7 + 16));
        v14 = (v11 + v9);
        if (v13 == v8)
        {
          v34 = *(v8 + 28);
          if (v34)
          {
            *(v11 + v9 + 28) = (v8 - v11 + 32 * v34 - v9) >> 5;
          }

          *(v8 + 28) = (v11 + v9 - v8) >> 5;
          v8 = v11 + v9;
        }

        else
        {
          do
          {
            v15 = v13;
            v13 += 32 * *(v13 + 28);
          }

          while (v13 != v8);
          *(v15 + 28) = (v11 - v15 + v9) >> 5;
          v16 = *(v8 + 16);
          *v14 = *v8;
          v14[1] = v16;
          if (*(v8 + 28))
          {
            *(v11 + v9 + 28) += (v8 - v11 - v9) >> 5;
            *(v8 + 28) = 0;
          }

          *(v8 + 8) = 0;
        }

        goto LABEL_57;
      }
    }

    v17 = 0;
    v18 = 0;
    memset(v52, 0, sizeof(v52));
    v19 = 1;
    v20 = 1;
    v21 = *(a2 + 12);
    do
    {
      v22 = v20;
      if (v20 > v21)
      {
        v22 = v21;
        if (v19 > v21)
        {
          break;
        }
      }

      if (v19 <= v22)
      {
        v23 = 0;
        v24 = v19 - 1;
        do
        {
          if (*(*(a2 + 16) + 16 * v24 + 8))
          {
            ++v23;
          }

          ++v24;
        }

        while (v22 != v24);
        v19 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      *(v52 + v17) += v23;
      v18 += v23;
      ++v17;
      v20 *= 2;
    }

    while (v17 != 32);
    v25 = 0;
    v26 = 0;
    v27 = 32 * ~(-1 << *(a2 + 11));
    do
    {
      v28 = *(a2 + 24);
      if (*(v28 + v27 + 8))
      {
        if (*(v28 + v27 + 24) == 19 && (v29 = *(v28 + v27 + 16), (v29 - 2147483649) >= 0xFFFFFFFF80000000))
        {
          v31 = luaO_ceillog2(v29);
          ++*(v52 + v31);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }

        v26 += v30;
        ++v25;
      }

      v27 -= 32;
    }

    while (v27 != -32);
    v32 = v26 + v18;
    if (*(v3 + 2) == 19 && (*v3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v35 = luaO_ceillog2(*v3);
      ++*(v52 + v35);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v36 = v32 + v33;
    if (v32 + v33)
    {
      v37 = 0;
      LODWORD(v38) = 0;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = v52;
      do
      {
        v44 = *v42++;
        v43 = v44;
        v40 += v44;
        v45 = v40 > v37;
        if (v40 <= v37)
        {
          v46 = v39;
        }

        else
        {
          v46 = v40;
        }

        if (v45)
        {
          v47 = v41;
        }

        else
        {
          v47 = v38;
        }

        if (v43)
        {
          v39 = v46;
          v38 = v47;
        }

        else
        {
          v38 = v38;
        }

        v37 = v41 & 0x7FFFFFFF;
        v41 *= 2;
      }

      while (v36 > v37);
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    luaH_resize(a1, a2, v38, v18 + v25 - v39 + 1);
    return luaH_set(a1, a2, v3);
  }

  else
  {
LABEL_57:
    *(v8 + 16) = *v3;
    v48 = *(v3 + 2);
    *(v8 + 24) = v48;
    if ((v48 & 0x40) != 0 && (*(a2 + 9) & 4) != 0 && (*(*v3 + 9) & 3) != 0)
    {
      luaC_barrierback_(a1, a2);
    }
  }

  return v8;
}

uint64_t mainposition(uint64_t a1, _DWORD *a2)
{
  v4 = a2[2] & 0x3F;
  if (v4 > 0x12)
  {
    if (v4 == 22)
    {
      goto LABEL_9;
    }

    if (v4 == 20)
    {
      v7 = *a2;
      if (!*(*a2 + 10))
      {
        *(v7 + 12) = luaS_hash(v7 + 24, *(v7 + 16), *(v7 + 12));
        *(v7 + 10) = 1;
        v7 = *a2;
      }

      v5 = *(v7 + 12);
      goto LABEL_13;
    }

    if (v4 != 19)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = *a2;
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    goto LABEL_8;
  }

  if (v4 == 4)
  {
    v5 = *(*a2 + 12);
LABEL_13:
    v6 = v5 & ~(-1 << *(a1 + 11));
    return *(a1 + 24) + 32 * v6;
  }

LABEL_9:
  v6 = *a2 % (~(-1 << *(a1 + 11)) | 1u);
  return *(a1 + 24) + 32 * v6;
}

uint64_t *luaH_getint(uint64_t a1, uint64_t a2)
{
  if (a2 - 1 < *(a1 + 12))
  {
    return (*(a1 + 16) + 16 * (a2 - 1));
  }

  result = (*(a1 + 24) + 32 * (a2 & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 19 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_getstr(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 24) + 32 * (*(a2 + 12) & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 68 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_get(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1] & 0x3F;
  if (v4 <= 3)
  {
    if (!v4)
    {
      return &luaO_nilobject_;
    }

    if (v4 == 3)
    {
      v10 = 0;
      if (luaV_tointeger(a2, &v10))
      {
        return luaH_getint(a1, v10);
      }
    }

LABEL_13:
    v5 = mainposition(a1, a2);
    while (!luaV_equalobj(0, v5 + 4, a2))
    {
      v7 = v5[7];
      v5 += 8 * v7;
      if (!v7)
      {
        return &luaO_nilobject_;
      }
    }

    return v5;
  }

  if (v4 != 19)
  {
    if (v4 == 4)
    {
      v5 = (*(a1 + 24) + 32 * (*(*a2 + 12) & ~(-1 << *(a1 + 11))));
      while (v5[6] != 68 || *(v5 + 2) != *a2)
      {
        v6 = v5[7];
        v5 += 8 * v6;
        if (!v6)
        {
          return &luaO_nilobject_;
        }
      }

      return v5;
    }

    goto LABEL_13;
  }

  v9 = *a2;

  return luaH_getint(a1, v9);
}

uint64_t luaH_getn(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 && (v3 = *(a1 + 16), !*(v3 + 16 * (v2 - 1) + 8)))
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      LODWORD(v7) = 0;
      do
      {
        v10 = (v7 + v2) >> 1;
        if (*(v3 + 16 * (v10 - 1) + 8))
        {
          v7 = v10;
        }

        else
        {
          LODWORD(v2) = (v7 + v2) >> 1;
          v7 = v7;
        }
      }

      while ((v2 - v7) > 1);
    }
  }

  else if (*(a1 + 24) == &dummynode_)
  {
    return *(a1 + 12);
  }

  else
  {
    v4 = (v2 + 1);
    if (*(luaH_getint(a1, v4) + 2))
    {
      while (!(v4 >> 30))
      {
        v5 = 2 * v4;
        v6 = luaH_getint(a1, (2 * v4));
        v7 = v4;
        v4 = (2 * v4);
        if (!*(v6 + 2))
        {
          goto LABEL_12;
        }
      }

      LODWORD(v7) = -1;
      do
      {
        v9 = luaH_getint(a1, (v7 + 2));
        v7 = (v7 + 1);
      }

      while (*(v9 + 2));
    }

    else
    {
      v5 = v2 + 1;
      v7 = v2;
LABEL_12:
      if (v5 - v7 >= 2)
      {
        do
        {
          v8 = (v5 + v7) >> 1;
          if (*(luaH_getint(a1, v8) + 2))
          {
            v7 = v8;
          }

          else
          {
            v5 = (v5 + v7) >> 1;
            v7 = v7;
          }
        }

        while (v5 - v7 > 1);
      }
    }
  }

  return v7;
}

uint64_t luaopen_table(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 7);
  luaL_setfuncs(a1, &tab_funcs, 0, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t tconcat(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = 0;
  memset(v14, 0, 512);
  v12 = 0;
  v2 = luaL_optlstring(a1, 2, "", &v12);
  checktab(a1, v13);
  v3 = luaL_optinteger(a1, 3, 1);
  if (lua_type(a1, 4) <= 0)
  {
    v4 = luaL_len(a1, 1);
  }

  else
  {
    v4 = luaL_checkinteger(a1, 4);
  }

  v5 = v4;
  luaL_buffinit(a1, v14);
  if (v3 < v5)
  {
    do
    {
      addfield(a1, v14, v13, v3);
      luaL_addlstring(v14, v2, v12, v6, v7, v8, v9, v10);
      ++v3;
    }

    while (v5 != v3);
    goto LABEL_8;
  }

  if (v3 == v5)
  {
LABEL_8:
    addfield(a1, v14, v13, v5);
  }

  luaL_pushresult(v14);
  return 1;
}

uint64_t tinsert(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = 0;
  v25 = 0;
  checktab(a1, &v24);
  v10 = luaL_len(a1, 1);
  v11 = lua_gettop(a1);
  if (v11 == 2)
  {
    v19 = v10 + 1;
LABEL_12:
    v25(a1, 1, v19);
    return 0;
  }

  if (v11 == 3)
  {
    v18 = luaL_checkinteger(a1, 2);
    v19 = v18;
    if (v18 < 1 || v18 > v10 + 1)
    {
      luaL_argerror(a1, 2);
    }

    if (v10 >= v19)
    {
      v20 = v24;
      v21 = v25;
      do
      {
        v20(a1, 1, v10);
        v21(a1, 1, v10 + 1);
      }

      while (v10-- > v19);
    }

    goto LABEL_12;
  }

  return luaL_error(a1, "wrong number of arguments to 'insert'", v12, v13, v14, v15, v16, v17, a9);
}

uint64_t pack(void *a1)
{
  v2 = lua_gettop(a1);
  lua_createtable(a1, v2, 1);
  lua_rotate(a1, 1, 1);
  if (v2 >= 1)
  {
    v3 = v2;
    do
    {
      lua_rawseti(a1, 1, v3);
    }

    while (v3-- > 1);
  }

  lua_pushinteger(a1, v2);
  lua_setfield(a1, 1, "n");
  return 1;
}

uint64_t unpack(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[0] = 0;
  v24[1] = 0;
  checktab(a1, v24);
  v10 = luaL_optinteger(a1, 2, 1);
  if (lua_type(a1, 3) <= 0)
  {
    v11 = luaL_len(a1, 1);
  }

  else
  {
    v11 = luaL_checkinteger(a1, 3);
  }

  v18 = v11;
  v19 = v11 - v10;
  if (v11 < v10)
  {
    return 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = (v19 + 1);
    if (lua_checkstack(a1, v19 + 1))
    {
      v21 = v24[0];
      v22 = v18 + 1;
      do
      {
        v21(a1, 1, v10++);
      }

      while (v22 != v10);
      return v20;
    }
  }

  return luaL_error(a1, "too many results to unpack", v12, v13, v14, v15, v16, v17, a9);
}

uint64_t tremove(void *a1)
{
  v8 = 0;
  v9 = 0;
  checktab(a1, &v8);
  v2 = luaL_len(a1, 1);
  v3 = luaL_optinteger(a1, 2, v2);
  v4 = v3;
  if (v3 != v2 && (v3 < 1 || v3 > v2 + 1))
  {
    luaL_argerror(a1, 1);
  }

  v5 = v8;
  v8(a1, 1, v4);
  v6 = v9;
  if (v4 < v2)
  {
    do
    {
      v5(a1, 1, v4 + 1);
      v6(a1, 1, v4++);
    }

    while (v2 != v4);
    v4 = v2;
  }

  lua_pushnil(a1);
  v6(a1, 1, v4);
  return 1;
}

uint64_t tmove(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  v3 = luaL_checkinteger(a1, 3);
  v4 = luaL_checkinteger(a1, 4);
  if (lua_type(a1, 5) < 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  v6 = v3 - v2;
  if (v3 >= v2)
  {
    v7 = luaL_getmetafield(a1, 1, "__index");
    v8 = lua_geti;
    if (!v7)
    {
      luaL_checktype(a1, 1, 5);
      v8 = lua_rawgeti;
    }

    v9 = v8;
    v10 = luaL_getmetafield(a1, v5, "__newindex");
    v11 = lua_seti;
    if (!v10)
    {
      luaL_checktype(a1, v5, 5);
      v11 = lua_rawseti;
    }

    v12 = v11;
    if (v2 <= 0 && v3 >= v2 + 0x7FFFFFFFFFFFFFFFLL)
    {
      luaL_argerror(a1, 3);
    }

    if (v4 > (v6 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      luaL_argerror(a1, 4);
    }

    if (v4 <= v2)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        v16 = v3 + 1;
        do
        {
          v9(a1, 1, v2);
          v12(a1, v5, v4);
          ++v2;
          ++v4;
        }

        while (v16 != v2);
      }
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v13 = ~v3 + v2;
      v14 = v3 + v4 - v2;
      do
      {
        v9(a1, 1, v3);
        v12(a1, v5, v14--);
        --v3;
      }

      while (!__CFADD__(v13++, 1));
    }
  }

  lua_pushvalue(a1, v5);
  return 1;
}

uint64_t sort(void *a1)
{
  v9[0] = 0;
  v9[1] = 0;
  checktab(a1, v9);
  v2 = luaL_len(a1, 1);
  luaL_checkstack(a1, 50, "", v3, v4, v5, v6, v7, v9[0]);
  if (lua_type(a1, 2) >= 1)
  {
    luaL_checktype(a1, 2, 6);
  }

  lua_settop(a1, 2u);
  auxsort(a1, v9, 1, v2);
  return 0;
}

uint64_t checktab(void *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  result = lua_getmetatable(a1, 1);
  if (result)
  {
    lua_pushstring(a1, "__index");
    if (lua_rawget(a1, -2))
    {
      *a2 = lua_geti;
    }

    lua_pushstring(a1, "__newindex");
    if (lua_rawget(a1, -3))
    {
      a2[1] = lua_seti;
    }

    result = lua_settop(a1, 0xFFFFFFFC);
  }

  if (!*a2 || !a2[1])
  {
    result = luaL_checktype(a1, 1, 5);
    if (!*a2)
    {
      *a2 = lua_rawgeti;
    }

    if (!a2[1])
    {
      a2[1] = lua_rawseti;
    }
  }

  return result;
}

uint64_t addfield(void *a1, uint64_t a2, void (**a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  (*a3)(a1, 1, a4);
  if (!lua_isstring(a1, -1))
  {
    v6 = lua_type(a1, -1);
    v7 = lua_typename(a1, v6);
    luaL_error(a1, "invalid value (%s) at index %d in table for 'concat'", v8, v9, v10, v11, v12, v13, v7);
  }

  return luaL_addvalue(a2);
}

uint64_t auxsort(uint64_t result, void (**a2)(void *, uint64_t, uint64_t), int a3, int a4)
{
  if (a3 < a4)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    do
    {
      v8 = v5;
      (*a2)(v7, 1, v5);
      v9 = v4;
      (*a2)(v7, 1, v4);
      if (sort_comp(v7, -1, -2))
      {
        a2[1](v7, 1, v5);
        result = (a2[1])(v7, 1, v4);
      }

      else
      {
        result = lua_settop(v7, 0xFFFFFFFD);
      }

      if (v4 - v5 == 1)
      {
        break;
      }

      v10 = (v4 + v5 + ((v4 + v5) >> 31)) >> 1;
      (*a2)(v7, 1, v10);
      (*a2)(v7, 1, v5);
      if (sort_comp(v7, -2, -1))
      {
        a2[1](v7, 1, v10);
        result = (a2[1])(v7, 1, v5);
      }

      else
      {
        lua_settop(v7, 0xFFFFFFFE);
        (*a2)(v7, 1, v9);
        if (sort_comp(v7, -1, -2))
        {
          a2[1](v7, 1, v10);
          result = (a2[1])(v7, 1, v9);
        }

        else
        {
          result = lua_settop(v7, 0xFFFFFFFD);
        }
      }

      if (v9 - v5 == 2)
      {
        break;
      }

      (*a2)(v7, 1, v10);
      v11 = lua_pushvalue(v7, -1);
      v12 = v9 - 1;
      v13 = v9 - 1;
      (*a2)(v7, 1, v13, v11);
      v34 = v13;
      v35 = v5;
      do
      {
        a2[1](v7, 1, v10);
        a2[1](v7, 1, v13);
        v10 = v5 + 1;
        (*a2)(v7, 1, v10);
        if (sort_comp(v7, -1, -2))
        {
          v10 = v5 + 1;
          do
          {
            if (v10 >= v9)
            {
              luaL_error(v7, "invalid order function for sorting", v14, v15, v16, v17, v18, v19, v33);
            }

            lua_settop(v7, 0xFFFFFFFE);
            (*a2)(v7, 1, ++v10);
            ++v5;
          }

          while (sort_comp(v7, -1, -2));
          v36 = v5++;
        }

        else
        {
          v36 = v5++;
        }

        v20 = v12 - 1;
        v13 = v12 - 1;
        (*a2)(v7, 1, v13);
        if (sort_comp(v7, -3, -1))
        {
          do
          {
            if (v13 <= v8)
            {
              luaL_error(v7, "invalid order function for sorting", v21, v22, v23, v24, v25, v26, v33);
            }

            lua_settop(v7, 0xFFFFFFFE);
            (*a2)(v7, 1, --v13);
            --v12;
          }

          while (sort_comp(v7, -3, -1));
          v20 = v12 - 1;
        }

        v27 = v12 <= v5;
        v12 = v20;
      }

      while (!v27);
      lua_settop(v7, 0xFFFFFFFC);
      (*a2)(v7, 1, v34);
      (*a2)(v7, 1, v10);
      a2[1](v7, 1, v34);
      a2[1](v7, 1, v10);
      v28 = v5 - v35;
      v29 = v9 - v5;
      v30 = (v5 - v35) >= v9 - v5 ? v35 : v36 + 2;
      v4 = v28 >= v29 ? v36 : v9;
      v31 = v28 >= v29 ? v9 : v36;
      v32 = v28 >= v29 ? v36 + 2 : v35;
      result = auxsort(v7, a2, v32, v31);
      v5 = v30;
    }

    while (v30 < v4);
  }

  return result;
}

uint64_t sort_comp(void *a1, int a2, int a3)
{
  if (lua_type(a1, 2))
  {
    lua_pushvalue(a1, 2);
    lua_pushvalue(a1, a2 - 1);
    lua_pushvalue(a1, a3 - 2);
    lua_callk(a1, 2, 1, 0, 0);
    v6 = lua_toBOOLean(a1, -1);
    lua_settop(a1, 0xFFFFFFFE);
    return v6;
  }

  else
  {

    return lua_compare(a1, a2, a3, 1);
  }
}

uint64_t luaT_init(uint64_t a1)
{
  v2 = luaT_init_luaT_eventname;
  for (i = 31; i != 55; ++i)
  {
    v4 = *v2++;
    *(*(a1 + 24) + 8 * i) = luaS_new(a1, v4);
    result = luaC_fix(a1, *(*(a1 + 24) + 8 * i));
  }

  return result;
}

uint64_t *luaT_gettm(uint64_t a1, char a2, uint64_t a3)
{
  result = luaH_getstr(a1, a3);
  if (!*(result + 2))
  {
    result = 0;
    *(a1 + 10) |= 1 << a2;
  }

  return result;
}

uint64_t *luaT_gettmbyobj(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if ((a2[2] & 0xF) == 7)
  {
    v3 = (*a2 + 16);
  }

  else if ((a2[2] & 0xF) == 5)
  {
    v3 = (*a2 + 40);
  }

  else
  {
    v3 = (*(a1 + 24) + 8 * (a2[2] & 0xF) + 440);
  }

  v4 = *v3;
  if (v4)
  {
    return luaH_getstr(v4, *(*(a1 + 24) + 8 * a3 + 248));
  }

  else
  {
    return &luaO_nilobject_;
  }
}

__n128 luaT_callTM(void *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v9 = a1[7];
  v10 = a1[2];
  a1[2] = v10 + 1;
  *v10 = *a2;
  v11 = a1[2];
  a1[2] = v11 + 1;
  *v11 = *a3;
  v12 = a1[2];
  a1[2] = v12 + 1;
  *v12 = *a4;
  if (!a6)
  {
    v13 = a1[2];
    a1[2] = v13 + 1;
    *v13 = *a5;
  }

  luaD_call(a1, (a1[2] - 16 * (4 - a6)), a6, *(a1[4] + 66) & 2);
  if (a6)
  {
    v15 = a1[7];
    v16 = (a1[2] - 16);
    a1[2] = v16;
    result = *v16;
    *(a5 + v15 - v9) = *v16;
  }

  return result;
}

uint64_t luaT_callbinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  v10 = luaT_gettmbyobj(a1, a2, a5);
  if (!*(v10 + 2))
  {
    v10 = luaT_gettmbyobj(a1, a3, a5);
    if (!*(v10 + 2))
    {
      return 0;
    }
  }

  v11 = 1;
  luaT_callTM(a1, v10, a2, a3, a4, 1);
  return v11;
}

uint64_t luaT_trybinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  result = luaT_callbinTM(a1, a2, a3, a4, a5);
  if (!result)
  {
    if (a5 - 13 >= 5 && a5 != 19)
    {
      if (a5 != 22)
      {
        return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
      }

      luaG_concaterror(a1, a2, a3);
    }

    v10 = 0;
    if (a2[2] == 3)
    {
      v10 = *a2;
    }

    else if (!luaV_tonumber_(a2, &v10))
    {
      goto LABEL_13;
    }

    if (a3[2] == 3)
    {
      v10 = *a3;
LABEL_12:
      luaG_tointerror(a1, a2, a3);
      return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
    }

    if (luaV_tonumber_(a3, &v10))
    {
      goto LABEL_12;
    }

LABEL_13:
    luaG_opinterror(a1, a2, a3, "perform bitwise operation on");
    return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
  }

  return result;
}

uint64_t luaT_callorderTM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!luaT_callbinTM(a1, a2, a3, *(a1 + 16), a4))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  result = v5[2];
  if (result)
  {
    return result != 1 || *v5 != 0;
  }

  return result;
}

uint64_t luaU_undump(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v13 = 0;
  v5 = *a4;
  if (v5 == 27)
  {
    v6 = "binary string";
  }

  else
  {
    v6 = a4;
    if (v5 == 64 || v5 == 61)
    {
      v6 = a4 + 1;
    }
  }

  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = v6;
  checkliteral(v12, "Lua", "not a");
  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14) != 83)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "version mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14))
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "format mismatch in");
    luaD_throw(a1, 3);
  }

  checkliteral(v12, "\x19\x93\r\n\x1A\n", "corrupted");
  fchecksize(v12, 4, "int");
  fchecksize(v12, 8, "size_t");
  fchecksize(v12, 4, "Instruction");
  fchecksize(v12, 8, "lua_Integer");
  fchecksize(v12, 8, "lua_Number");
  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (*&v14 != 22136)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "endianness mismatch in");
    luaD_throw(a1, 3);
  }

  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (v14 != 370.5)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "float format mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  v7 = luaF_newLclosure(a1, LOBYTE(v14));
  v8 = *(a1 + 16);
  *v8 = v7;
  *(v8 + 8) = 70;
  v9 = *(a1 + 16) + 16;
  *(a1 + 16) = v9;
  if (*(a1 + 48) - v9 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  *(v7 + 24) = v10;
  LoadFunction(v12, v10, 0);
  return v7;
}

size_t LoadFunction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  String = LoadString(a1);
  if (String)
  {
    v7 = String;
  }

  else
  {
    v7 = a3;
  }

  *(a2 + 104) = v7;
  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  *(a2 + 40) = v57;
  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  *(a2 + 44) = v57;
  LOBYTE(v57) = 0;
  LoadBlock(a1, &v57, 1uLL);
  *(a2 + 10) = v57;
  LOBYTE(v57) = 0;
  LoadBlock(a1, &v57, 1uLL);
  *(a2 + 11) = v57;
  LOBYTE(v57) = 0;
  LoadBlock(a1, &v57, 1uLL);
  *(a2 + 12) = v57;
  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v8 = v57;
  v9 = 4 * v57;
  v10 = luaM_realloc_(*a1, 0, 0, v9);
  *(a2 + 56) = v10;
  *(a2 + 24) = v8;
  LoadBlock(a1, v10, v9);
  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v11 = v57;
  v12 = 16 * v57;
  v13 = luaM_realloc_(*a1, 0, 0, v12);
  *(a2 + 48) = v13;
  *(a2 + 20) = v11;
  if (v11 >= 1)
  {
    v14 = (v11 + 3) & 0xFFFFFFFC;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = xmmword_26ECCE810;
    v17 = xmmword_26ECC7980;
    v18 = (v13 + 40);
    v19 = vdupq_n_s64(4uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v15, v17));
      if (vuzp1_s16(v20, *v15.i8).u8[0])
      {
        *(v18 - 8) = 0;
      }

      if (vuzp1_s16(v20, *&v15).i8[2])
      {
        *(v18 - 4) = 0;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16))).i32[1])
      {
        *v18 = 0;
        v18[4] = 0;
      }

      v16 = vaddq_s64(v16, v19);
      v17 = vaddq_s64(v17, v19);
      v18 += 16;
      v14 -= 4;
    }

    while (v14);
    for (i = 0; v12 != i; i += 16)
    {
      v22 = *(a2 + 48);
      LOBYTE(v57) = 0;
      LoadBlock(a1, &v57, 1uLL);
      v23 = v57;
      if (v57 > 3u)
      {
        switch(v57)
        {
          case 4u:
            goto LABEL_22;
          case 0x13u:
            v57 = 0;
            LoadBlock(a1, &v57, 8uLL);
            *(v22 + i) = v57;
            v23 = 19;
            goto LABEL_25;
          case 0x14u:
LABEL_22:
            v24 = LoadString(a1);
            *(v22 + i) = v24;
            v23 = *(v24 + 8) | 0x40;
            goto LABEL_25;
        }
      }

      else
      {
        if (!v57)
        {
          goto LABEL_25;
        }

        if (v57 == 1)
        {
          LOBYTE(v57) = 0;
          v23 = 1;
          LoadBlock(a1, &v57, 1uLL);
          *(v22 + i) = v57;
          goto LABEL_25;
        }

        if (v57 == 3)
        {
          v57 = 0;
          LoadBlock(a1, &v57, 8uLL);
          *(v22 + i) = v57;
          v23 = 3;
LABEL_25:
          *(v22 + i + 8) = v23;
        }
      }
    }
  }

  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v25 = v57;
  v26 = 16 * v57;
  v27 = luaM_realloc_(*a1, 0, 0, v26);
  *(a2 + 88) = v27;
  *(a2 + 16) = v25;
  if (v25 >= 1)
  {
    v28 = vdupq_n_s64(v25 - 1);
    v29 = (v25 + 1) & 0xFFFFFFFE;
    v30 = xmmword_26ECC7980;
    v31 = (v27 + 16);
    v32 = vdupq_n_s64(2uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v28, v30));
      if (v33.i8[0])
      {
        *(v31 - 2) = 0;
      }

      if (v33.i8[4])
      {
        *v31 = 0;
      }

      v30 = vaddq_s64(v30, v32);
      v31 += 4;
      v29 -= 2;
    }

    while (v29);
    v34 = 0;
    do
    {
      LOBYTE(v57) = 0;
      LoadBlock(a1, &v57, 1uLL);
      *(*(a2 + 88) + v34 + 8) = v57;
      LOBYTE(v57) = 0;
      LoadBlock(a1, &v57, 1uLL);
      *(*(a2 + 88) + v34 + 9) = v57;
      v34 += 16;
    }

    while (v26 != v34);
  }

  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v35 = v57;
  v36 = 8 * v57;
  *(a2 + 64) = luaM_realloc_(*a1, 0, 0, v36);
  *(a2 + 32) = v35;
  if (v35 >= 1)
  {
    v37 = 0;
    do
    {
      *(*(a2 + 64) + v37) = 0;
      v37 += 8;
    }

    while (v36 != v37);
    v38 = 0;
    do
    {
      v39 = luaF_newproto(*a1);
      *(*(a2 + 64) + v38) = v40;
      LoadFunction(a1, *(*(a2 + 64) + v38), *(a2 + 104), v39);
      v38 += 8;
    }

    while (v36 != v38);
  }

  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v41 = v57;
  v42 = 4 * v57;
  v43 = luaM_realloc_(*a1, 0, 0, v42);
  *(a2 + 72) = v43;
  *(a2 + 28) = v41;
  LoadBlock(a1, v43, v42);
  LODWORD(v57) = 0;
  LoadBlock(a1, &v57, 4uLL);
  v44 = v57;
  v45 = 16 * v57;
  v46 = luaM_realloc_(*a1, 0, 0, v45);
  *(a2 + 80) = v46;
  *(a2 + 36) = v44;
  if (v44 >= 1)
  {
    v47 = vdupq_n_s64(v44 - 1);
    v48 = (v44 + 1) & 0xFFFFFFFE;
    v49 = xmmword_26ECC7980;
    v50 = (v46 + 16);
    v51 = vdupq_n_s64(2uLL);
    do
    {
      v52 = vmovn_s64(vcgeq_u64(v47, v49));
      if (v52.i8[0])
      {
        *(v50 - 2) = 0;
      }

      if (v52.i8[4])
      {
        *v50 = 0;
      }

      v49 = vaddq_s64(v49, v51);
      v50 += 4;
      v48 -= 2;
    }

    while (v48);
    v53 = 0;
    do
    {
      *(*(a2 + 80) + v53) = LoadString(a1);
      LODWORD(v57) = 0;
      LoadBlock(a1, &v57, 4uLL);
      *(*(a2 + 80) + v53 + 8) = v57;
      LODWORD(v57) = 0;
      LoadBlock(a1, &v57, 4uLL);
      *(*(a2 + 80) + v53 + 12) = v57;
      v53 += 16;
    }

    while (v45 != v53);
  }

  LODWORD(v57) = 0;
  result = LoadBlock(a1, &v57, 4uLL);
  if (v57 >= 1)
  {
    v55 = 0;
    v56 = 16 * v57;
    do
    {
      result = LoadString(a1);
      *(*(a2 + 88) + v55) = result;
      v55 += 16;
    }

    while (v56 != v55);
  }

  return result;
}

uint64_t checkliteral(uint64_t a1, char *__s, const char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(__s);
  LoadBlock(a1, __s2, v6);
  result = cstdlib_memcmp(__s, __s2, v6);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), a3);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t fchecksize(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = 0;
  result = LoadBlock(a1, &v8, 1uLL);
  if (v8 != a2)
  {
    v7 = luaO_pushfstring(*a1, "%s size mismatch in", a3);
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), v7);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t LoadBlock(uint64_t a1, char *a2, size_t a3)
{
  result = luaZ_read(*(a1 + 8), a2, a3);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), "truncated");
    v5 = *a1;

    return luaD_throw(v5, 3);
  }

  return result;
}

uint64_t LoadString(uint64_t *a1)
{
  v8 = 0;
  LoadBlock(a1, &v8, 1uLL);
  v2 = v8;
  __n = v8;
  if (v8 == 255)
  {
    LoadBlock(a1, &__n, 8uLL);
    v2 = __n;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    v3 = *a1;
    v4 = a1[2];
    __n = v2 - 1;
    v5 = luaZ_openspace(v3, v4, v2 - 1);
    LoadBlock(a1, v5, __n);
    return luaS_newlstr(*a1, v5, __n);
  }

  return 0;
}

uint64_t luaopen_utf8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 6);
  luaL_setfuncs(a1, &funcs, 0, v9, v10, v11, v12, v13);
  lua_pushlstring(a1, "[", 0xEuLL);
  lua_setfield(a1, -2, "charpattern");
  return 1;
}

uint64_t byteoffset(void *a1)
{
  v22 = 0;
  v2 = luaL_checklstring(a1, 1, &v22);
  v3 = luaL_checkinteger(a1, 2);
  if (v3 < 0)
  {
    v4 = v22 + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = luaL_optinteger(a1, 3, v4);
  v12 = v5;
  if (v5 < 0)
  {
    v12 = 0;
    if (v22 < -v5)
    {
LABEL_9:
      luaL_argerror(a1, 3);
      goto LABEL_10;
    }

    v12 = v5 + v22 + 1;
  }

  v13 = v12 - 1;
  if (v12 < 1)
  {
    goto LABEL_9;
  }

  --v12;
  if (v13 > v22)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3)
  {
    if (v12 >= 1)
    {
      while ((*(v2 + v12) & 0xC0) == 0x80)
      {
        if (v12-- <= 1)
        {
          v12 = 0;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  if ((*(v2 + v12) & 0xC0) == 0x80)
  {
    luaL_error(a1, "initial position is a continuation byte", v6, v7, v8, v9, v10, v11, v21);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v14 = v3 - 1;
    if (v3 == 1 || v12 >= v22)
    {
      v16 = v3 - 1;
    }

    else
    {
      do
      {
        do
        {
          v15 = *(v2 + 1 + v12++);
        }

        while ((v15 & 0xC0) == 0x80);
        v16 = v14 - 1;
        if (v14 < 2)
        {
          break;
        }

        --v14;
      }

      while (v12 < v22);
    }

    goto LABEL_33;
  }

  if (v12 >= 1)
  {
    while (2)
    {
      v18 = v12;
      do
      {
        v12 = v18 - 1;
        if (v18 <= 1)
        {
          v12 = 0;
          if (v3 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        v19 = *(v2 - 1 + v18--) & 0xC0;
      }

      while (v19 == 128);
      v16 = v3 + 1;
      if (v3 <= -2)
      {
        ++v3;
        if (v12 + 1 > 1)
        {
          continue;
        }
      }

      break;
    }

LABEL_33:
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_36:
    lua_pushinteger(a1, v12 + 1);
    return 1;
  }

LABEL_34:
  lua_pushnil(a1);
  return 1;
}

uint64_t codepoint(void *a1)
{
  v24 = 0;
  v2 = luaL_checklstring(a1, 1, &v24);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v24 >= -v3)
  {
    v4 = v3 + v24 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  v13 = v24;
  if (v24 >= -v6)
  {
    v14 = v6 + v24 + 1;
  }

  else
  {
    v14 = 0;
  }

  if (v6 < 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v6;
  }

  if (v5 <= 0)
  {
    luaL_argerror(a1, 2);
    v13 = v24;
  }

  if (v15 > v13)
  {
    luaL_argerror(a1, 3);
  }

  v16 = v15 - v5;
  if (v15 < v5)
  {
    return 0;
  }

  if (v16 >= 0x7FFFFFFF)
  {
    v18 = "string slice too long";
    return luaL_error(a1, v18, v7, v8, v9, v10, v11, v12, v23);
  }

  luaL_checkstack(a1, v16 + 1, "string slice too long", v8, v9, v10, v11, v12, v23);
  v19 = v2 + v15;
  v20 = (v2 + v5 - 1);
  if (v20 < v19)
  {
    LODWORD(v17) = 0;
    while (1)
    {
      HIDWORD(v23) = 0;
      v21 = utf8_decode(v20, &v23 + 1);
      if (!v21)
      {
        break;
      }

      v20 = v21;
      lua_pushinteger(a1, SHIDWORD(v23));
      v17 = (v17 + 1);
      if (v20 >= v19)
      {
        return v17;
      }
    }

    v18 = "invalid UTF-8 code";
    return luaL_error(a1, v18, v7, v8, v9, v10, v11, v12, v23);
  }

  return 0;
}

uint64_t utfchar(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  if (v2 == 1)
  {
    pushutfchar(a1, 1);
  }

  else
  {
    v3 = v2;
    memset(v6, 0, 512);
    luaL_buffinit(a1, v6);
    if (v3 >= 1)
    {
      v4 = 1;
      do
      {
        pushutfchar(a1, v4);
        luaL_addvalue(v6);
        v4 = (v4 + 1);
        --v3;
      }

      while (v3);
    }

    luaL_pushresult(v6);
  }

  return 1;
}

uint64_t utflen(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v15 >= -v3)
  {
    v4 = v3 + v15 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, -1);
  v7 = v15;
  if (v15 >= -v6)
  {
    v8 = v6 + v15 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = (v5 - 1);
  if (v5 < 1 || (--v5, v10 > v15))
  {
    luaL_argerror(a1, 2);
    v7 = v15;
    v10 = v5;
  }

  if (v9 > v7)
  {
    luaL_argerror(a1, 3);
  }

  if (v10 >= v9)
  {
    v11 = 0;
LABEL_24:
    v13 = 1;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = utf8_decode(&v10[v2], 0);
      if (!v12)
      {
        break;
      }

      v10 = &v12[-v2];
      ++v11;
      if (&v12[-v2] >= v9)
      {
        goto LABEL_24;
      }
    }

    lua_pushnil(a1);
    v11 = (v10 + 1);
    v13 = 2;
  }

  lua_pushinteger(a1, v11);
  return v13;
}

uint64_t iter_codes(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  lua_pushcclosure(a1, iter_aux, 0);
  lua_pushvalue(a1, 1);
  lua_pushinteger(a1, 0);
  return 3;
}

unsigned __int8 *utf8_decode(char *a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while ((v2 & 0x40) != 0)
    {
      ++v5;
      v7 = *++a1;
      LOBYTE(v2) = 2 * v2;
      v4 += 5;
      v6 = v7 & 0x3F | (v6 << 6);
      if ((v7 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v3 = 0;
    if (v5 <= 3)
    {
      v2 = ((v2 & 0x3F) << v4) | v6;
      if (HIWORD(v2) <= 0x10u)
      {
        if (v2 > utf8_decode_limits[v5])
        {
          goto LABEL_2;
        }

        return 0;
      }
    }
  }

  else
  {
LABEL_2:
    if (a2)
    {
      *a2 = v2;
    }

    return (a1 + 1);
  }

  return v3;
}

uint64_t pushutfchar(void *a1, uint64_t a2)
{
  v10 = luaL_checkinteger(a1, a2);
  if (v10 >= 0x110000)
  {
    luaL_argerror(a1, a2);
  }

  return lua_pushfstring(a1, "%U", v4, v5, v6, v7, v8, v9, v10);
}

uint64_t iter_aux(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = lua_tointegerx(a1, 2, 0);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    v4 = 0;
  }

  else if (v3 <= v15)
  {
    do
    {
      v5 = *(v2 + v3++) & 0xC0;
    }

    while (v5 == 128);
    v4 = v3 - 1;
  }

  if (v4 >= v15)
  {
    return 0;
  }

  HIDWORD(v14) = 0;
  v6 = utf8_decode((v2 + v4), &v14 + 1);
  if (!v6 || (*v6 & 0xC0) == 0x80)
  {
    return luaL_error(a1, "invalid UTF-8 code", v7, v8, v9, v10, v11, v12, v14);
  }

  lua_pushinteger(a1, v4 + 1);
  lua_pushinteger(a1, SHIDWORD(v14));
  return 2;
}

uint64_t luaV_tonumber_(_DWORD *a1, double *a2)
{
  if (a1[2] == 19)
  {
    v4 = *a1;
LABEL_3:
    *a2 = v4;
    return 1;
  }

  if ((a1[2] & 0xF) == 4)
  {
    v9 = 0.0;
    v10 = 0;
    v6 = luaO_str2num((*a1 + 24), &v9);
    v7 = *a1;
    v8 = *(*a1 + 8) == 4 ? *(v7 + 11) : *(v7 + 16);
    if (v6 == v8 + 1)
    {
      v4 = *&v9;
      if (v10 != 19)
      {
        v4 = v9;
      }

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t luaV_tointeger(_DWORD *a1, void *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  while (a1[2] != 19)
  {
    if ((a1[2] & 0xF) == 4)
    {
      v4 = luaO_str2num((*a1 + 24), v8);
      v5 = *a1;
      v6 = *(*a1 + 8) == 4 ? *(v5 + 11) : *(v5 + 16);
      a1 = v8;
      if (v4 == v6 + 1)
      {
        continue;
      }
    }

    return 0;
  }

  *a2 = *a1;
  return 1;
}

uint64_t *luaV_gettable(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      result = luaH_get(*v6, a3);
      v12 = result;
      if (*(result + 2) || (result = *(v10 + 40)) == 0 || (*(result + 10) & 1) != 0 || (result = luaT_gettm(result, 0, *(*(a1 + 24) + 248)), (v13 = result) == 0))
      {
        *a4 = *v12;
        return result;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 0);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      return luaG_runerror(a1, "gettable chain too long; possible loop");
    }
  }

  return luaT_callTM(a1, v13, v6, a3, a4, 1);
}

uint64_t *luaV_settable(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      result = luaH_get(*v6, a3);
      v12 = result;
      if (*(result + 2))
      {
        goto LABEL_17;
      }

      result = *(v10 + 40);
      if (!result || (*(result + 10) & 2) != 0 || (result = luaT_gettm(result, 1, *(*(a1 + 24) + 256)), (v13 = result) == 0))
      {
        if (v12 == &luaO_nilobject_)
        {
          result = luaH_newkey(a1, v10, a3);
          v12 = result;
        }

LABEL_17:
        *v12 = *a4;
        *(v10 + 10) = 0;
        if ((a4[8] & 0x40) != 0 && (*(v10 + 9) & 4) != 0 && (*(*a4 + 9) & 3) != 0)
        {

          return luaC_barrierback_(a1, v10);
        }

        return result;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 1u);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      return luaG_runerror(a1, "settable chain too long; possible loop");
    }
  }

  return luaT_callTM(a1, v13, v6, a3, a4, 0);
}

uint64_t luaV_lessthan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((v6 & 0xF) == 4)
  {
    if ((*(a3 + 8) & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) >> 31;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = *(a3 + 8), (v7 & 0xF) != 3))
  {
LABEL_10:
    v10 = luaT_callorderTM(a1, a2, a3, 20);
    if ((v10 & 0x80000000) != 0)
    {
      luaG_ordererror(a1, a2, a3);
    }

    return v10;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
    }

    else
    {
      v13 = *a3;
      if ((v8 + 0x20000000000000) < 0x40000000000001)
      {
        return v13 > v8;
      }

      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      if (v13 <= -9.22337204e18)
      {
        return 0;
      }

      v9 = v13;
    }

    return v8 < v9;
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 < *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 >= -9.22337204e18 && v14 <= v12;
        }
      }

      else
      {
        v15 = v12 >= v14;
      }

      return !v15;
    }
  }
}

uint64_t l_strcmp(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 8) == 4)
  {
    v3 = *(a1 + 11);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = (a2 + 24);
  if (*(a2 + 8) == 4)
  {
    v5 = *(a2 + 11);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  while (1)
  {
    result = cstdlib_strcmp(v2, v4);
    if (result)
    {
      break;
    }

    v6 = cstdlib_strlen(v2);
    if (v6 == v5)
    {
      return v5 != v3;
    }

    if (v6 == v3)
    {
      return 0xFFFFFFFFLL;
    }

    v2 += v6 + 1;
    v3 -= v6 + 1;
    v4 += v6 + 1;
    v5 -= v6 + 1;
  }

  return result;
}

uint64_t luaV_lessequal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((v6 & 0xF) == 4)
  {
    if ((*(a3 + 8) & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) < 1;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = *(a3 + 8), (v7 & 0xF) != 3))
  {
LABEL_10:
    result = luaT_callorderTM(a1, a2, a3, 21);
    if ((result & 0x80000000) != 0)
    {
      *(*(a1 + 32) + 66) |= 0x80u;
      v11 = luaT_callorderTM(a1, a3, a2, 20);
      *(*(a1 + 32) + 66) ^= 0x80u;
      if (v11 < 0)
      {
        luaG_ordererror(a1, a2, a3);
      }

      return v11 == 0;
    }

    return result;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
      return v8 <= v9;
    }

    v13 = *a3;
    if ((v8 + 0x20000000000000) >= 0x40000000000001)
    {
      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      else
      {
        if (v13 >= -9.22337204e18)
        {
          v9 = v13;
          return v8 <= v9;
        }

        return 0;
      }
    }

    else
    {
      return v13 >= v8;
    }
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 <= *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 > -9.22337204e18 && v14 < v12;
        }
      }

      else
      {
        v15 = v12 > v14;
      }

      return !v15;
    }
  }
}