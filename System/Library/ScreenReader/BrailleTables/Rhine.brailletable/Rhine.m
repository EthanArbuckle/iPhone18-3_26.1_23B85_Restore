BOOL in(_BOOL8 __c, int a2)
{
  if (__c)
  {
    v2 = __c;
    switch(a2)
    {
      case 0:
        goto LABEL_54;
      case 1:
        goto LABEL_4;
      case 2:
        if (memchr("0123456789", __c, 0xBuLL))
        {
          goto LABEL_90;
        }

LABEL_4:
        v3 = "IVXLCDM";
        goto LABEL_75;
      case 3:
        v11 = __c - 97;
        goto LABEL_55;
      case 4:
        goto LABEL_52;
      case 5:
        if ((__c - 45) < 2u)
        {
          goto LABEL_90;
        }

LABEL_52:
        v3 = ",;:/?+=(*)";
        goto LABEL_71;
      case 6:
        goto LABEL_36;
      case 7:
        if ((__c + 64) >= 0x1Fu)
        {
          goto LABEL_59;
        }

        goto LABEL_90;
      case 8:
        v3 = "bcdfghjklmnpqrstvwxz";
        goto LABEL_50;
      case 9:
        goto LABEL_33;
      case 10:
        v9 = ((__c & 0xDF) - 65);
        goto LABEL_60;
      case 11:
        __c = 1;
        if (v2 == 45 || (v2 - 48) < 0xAu)
        {
          return __c;
        }

LABEL_33:
        __c = 1;
        if ((vmaxv_u16(vceq_s16(vdup_n_s16(v2), 0x9C009A008C008ALL)) & 1) != 0 || v2 > 0xBF || (v2 - 65) < 0x1Au)
        {
          return __c;
        }

LABEL_36:
        v10 = v2 <= 0xDE && v2 - 97 >= 0x1A;
        return !v10;
      case 12:
        v3 = "MNmn";
        goto LABEL_87;
      case 13:
        v3 = ".!'><$CQXY\x7F";
        goto LABEL_27;
      case 14:
        v3 = ":+);=cqxy?(";
        v7 = v2;
        v8 = 12;
        goto LABEL_93;
      case 15:
LABEL_59:
        v9 = __c - 65;
LABEL_60:
        v10 = v9 >= 0x1A;
        return !v10;
      case 16:
        v3 = "'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB";
LABEL_27:
        v7 = v2;
        v8 = 13;
        goto LABEL_93;
      case 17:
        v3 = "[]\x82\x91\x92";
        goto LABEL_73;
      case 18:
        v3 = "\x84\x93\x94";
        goto LABEL_92;
      case 19:
        v3 = ".'\x82\x91\x92";
        goto LABEL_77;
      case 20:
        v3 = ".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB";
LABEL_50:
        v7 = v2;
        v8 = 21;
        goto LABEL_93;
      case 21:
        if (memchr(".:\x1E \xA0\xB0", __c, 7uLL))
        {
          goto LABEL_90;
        }

LABEL_54:
        v11 = v2 - 48;
LABEL_55:
        v10 = v11 >= 0xA;
        return !v10;
      case 22:
        v3 = ",;:!?";
        goto LABEL_73;
      case 23:
        v3 = "()!?";
        goto LABEL_87;
      case 24:
        v3 = ".-'";
        goto LABEL_92;
      case 25:
        if (memchr("*/:", __c, 4uLL))
        {
          goto LABEL_90;
        }

        goto LABEL_91;
      case 26:
LABEL_91:
        v3 = "+-=";
        goto LABEL_92;
      case 27:
        v3 = "\xB9\xB2\xB3\xBC\xBD\xBE";
        goto LABEL_77;
      case 28:
        v3 = "_#$%&\x80\x83\x86\x87\x89\x99\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAC\xAE\xAF\xB0\xB1\xB2\xB3\xB5\xB6\xB9\xBA\xBC\xBD\xBE\xC5.:/h";
        v7 = v2;
        v8 = 36;
        goto LABEL_93;
      case 29:
        v3 = ".:/h";
LABEL_87:
        v7 = v2;
        v8 = 5;
        goto LABEL_93;
      case 30:
        v12 = __c == 176;
        if (__c == 137)
        {
          v12 = 1;
        }

        return __c == 37 || v12;
      case 31:
        v3 = "\x80$\xA5\xA2\xA3\xA4";
        goto LABEL_77;
      case 32:
        v3 = "({[<\x91";
        goto LABEL_73;
      case 33:
        v3 = ")}]>\x9B";
LABEL_73:
        v7 = v2;
        v8 = 6;
        goto LABEL_93;
      case 34:
        return (__c & 0xE0) == 64;
      case 35:
        return __c > 95;
      case 36:
        __c = 1;
        if (v2 != 9 && v2 != 32)
        {
          return v2 == 160;
        }

        return __c;
      case 37:
        v5 = __c != 30 && __c != 27;
        if (__c <= 0x20)
        {
          return v5;
        }

        else
        {
          return __c == 160;
        }

      case 38:
        v3 = ",;:";
LABEL_92:
        v7 = v2;
        v8 = 4;
        goto LABEL_93;
      case 39:
        v3 = "!'><$\x7F";
LABEL_75:
        v7 = v2;
        v8 = 8;
        goto LABEL_93;
      case 40:
        v3 = "#!'><$\x7F";
        v7 = v2;
        v8 = 9;
        goto LABEL_93;
      case 41:
        if (__c & 0xF8) == 0x28 || (__c - 33) < 0x1F && ((0x7C00003Fu >> (__c - 33)))
        {
LABEL_90:
          __c = 1;
        }

        else
        {
LABEL_77:
          v7 = v2;
          v8 = 7;
LABEL_93:
          __c = memchr(v3, v7, v8) != 0;
        }

        break;
      case 42:
        return (__c - 96) < 0x1B || (__c & 0xFE) == 56;
      case 43:
        __c = 1;
        if (v2 == 9 || v2 == 32 || v2 == 125)
        {
          return __c;
        }

        return v2 == 160;
      case 44:
        v3 = "#0-1|4$k'\x7F";
        goto LABEL_71;
      case 45:
        v3 = "#123456789";
LABEL_71:
        v7 = v2;
        v8 = 11;
        goto LABEL_93;
      default:
        return 0;
    }
  }

  return __c;
}

uint64_t char_count(unsigned __int8 *a1, unsigned __int8 a2)
{
  result = 0;
  v4 = *a1;
  if (v4 >= 0x21 && v4 != 160)
  {
    LODWORD(result) = 0;
    v5 = a1 + 1;
    do
    {
      if (v4 == a2)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      v6 = *v5++;
      v4 = v6;
    }

    while (v6 >= 0x21 && v4 != 160);
  }

  return result;
}

unsigned __int8 *find_in(unsigned __int8 *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = a1;
  while (!in(v2, a2))
  {
    v5 = *++v4;
    v2 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t get_binary_dots(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  result = 0;
  if (a2)
  {
    while (*(a2 + result) != v2)
    {
      if (++result == 256)
      {
        return 0;
      }
    }
  }

  else
  {
    while (brl_set_ansi[result] != v2)
    {
      if (++result == 256)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_binary_char(unsigned __int8 a1, uint64_t a2)
{
  v2 = &brl_set_ansi[a1];
  if (a2)
  {
    v2 = (a2 + *v2);
  }

  return *v2;
}

uint64_t lower_digit(unsigned __int8 a1)
{
  if (a1 - 58 >= 0xFFFFFFF6)
  {
    v1 = &asc_26AD6[a1 - 48];
  }

  else
  {
    v1 = *(*(&stru_20.cmd + pLangGlb) + 8 * a1);
  }

  return *v1;
}

uint64_t antoine_digit(unsigned __int8 a1)
{
  if (a1 - 58 >= 0xFFFFFFF6)
  {
    v1 = &a123456789[a1 - 48];
  }

  else
  {
    v1 = *(*(&stru_20.cmd + pLangGlb) + 8 * a1);
  }

  return *v1;
}

uint64_t equals_nocase(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    do
    {
      v2 = *a1++;
    }

    while (v2 == 173 || v2 == 30);
    v4 = *a2;
    if (((v4 ^ v2) & 0xFFFFFFDF) != 0)
    {
      break;
    }

    if (!*(a1 - 1) && v4 != 0)
    {
      break;
    }

    if (!*++a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t equals(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    do
    {
      v2 = *a1++;
    }

    while (v2 == 173 || v2 == 30);
    if (v2 != *a2)
    {
      break;
    }

    if (!*++a2)
    {
      return 1;
    }
  }

  return 0;
}

unsigned __int8 **has_whitespace(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v3 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
    v4 = 1;
    do
    {
      result = result[6];
      if (!result)
      {
        return result;
      }

      v5 = **result;
      if ((result[3] & 0x20E4) != 0)
      {
        if (v5 == 45)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (**result <= 0x2Cu)
        {
          if (v5 != 9 && v5 != 32)
          {
            continue;
          }

          goto LABEL_21;
        }

        if (v5 == 45)
        {
          if (nLangIDGlb != 9)
          {
            goto LABEL_26;
          }

LABEL_12:
          if ((nSubLangIDGlb & 0xFFFFFFFD) == 1)
          {
            continue;
          }

LABEL_21:
          if (v3)
          {
            if (v4 > 1)
            {
              return (&dword_0 + 1);
            }
          }

          else
          {
LABEL_26:
            if (nLangIDGlb != 12 && nLangIDGlb != 9 || v4 > 2)
            {
              return (&dword_0 + 1);
            }
          }

          ++v4;
          continue;
        }

        if (v5 == 160)
        {
          goto LABEL_21;
        }
      }
    }

    while (result != a2);
  }

  return 0;
}

BOOL zweiformig_enabled(int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(&dword_8 + pLangGlb);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *pLangGlb + 4;
    v5 = v3 + 1;
    while (*(v4 - 1) != &dword_0 + 2 || **(v4 - 3) != a1)
    {
      v4 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v12 = *v4;
    return (v12 & (a3 | 0x80000000)) == 0;
  }

LABEL_6:
  v6 = *(&dword_18 + pLangGlb);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = (*(&dword_10 + pLangGlb) + 56);
    v8 = v6 + 1;
    while (*(v7 - 4) != &dword_0 + 2 || **(v7 - 6) != a1)
    {
      v7 += 8;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    v12 = *v7;
    return (v12 & (a3 | 0x80000000)) == 0;
  }

LABEL_11:
  v9 = (a3 & 0x100) == 0;
  if (a1 != 97)
  {
    v9 = 0;
  }

  if (a1 == 104)
  {
    v10 = (a3 & 0x80) == 0;
  }

  else
  {
    v10 = v9;
  }

  if (a1 == 117)
  {
    v10 = (a3 & 0x100) == 0;
  }

  return a2 == 2 && v10;
}

BOOL equals_zweiformig(const char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  v5 = v4;
  if (v4 == 2)
  {
    goto LABEL_12;
  }

  if (v4 != 3)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  if (!a1[2])
  {
    return 0;
  }

  v7 = v6 - 223;
  v8 = v6 - 91;
  if (v7 <= 0xFFFFFFE0 && v8 < 0xFFFFFFE6)
  {
    return 0;
  }

  if (nLangIDGlb != 9)
  {
LABEL_12:
    v10 = *a1;
  }

  else
  {
    v10 = *a1;
    if ((v10 | 4) == 0x45)
    {
      return 0;
    }
  }

  if (!v10 || (v10 + 33) <= 0xE0u && (v10 - 91) < 0xE6u)
  {
    return 0;
  }

  v12 = nLangIDGlb;
  v13 = *(a1 + 1);
  if (v10 == 220 && nLangIDGlb == 7 && v13 == 72)
  {
    return 1;
  }

  v14 = *(&stru_20.vmsize + pLangGlb);
  v15 = *v14;
  if (!*v14)
  {
    return 0;
  }

  v16 = v13;
  v17 = (v10 | 0x20) | (v13 << 8) | 0x2000;
  v18 = v14 + 1;
  while (v15 != v17 || !zweiformig_enabled(v17, v5, a2))
  {
    result = 0;
    v19 = *v18++;
    v15 = v19;
    if (!v19)
    {
      return result;
    }
  }

  if (v12 != 7)
  {
    return 1;
  }

  return memchr("CQX", v16, 4uLL) == 0;
}

uint64_t equals_mehrformig(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 - 3) <= 1)
  {
    v3 = 0;
    v4 = *a1;
    while (1)
    {
      v5 = v4[v3];
      if (!v4[v3])
      {
        break;
      }

      v6 = v5 - 223;
      v7 = v5 - 91;
      if (v6 <= 0xFFFFFFE0 && v7 < 0xFFFFFFE6)
      {
        break;
      }

      if (v1 == ++v3)
      {
        v9 = *(&dword_18 + pLangGlb);
        if (v9 < 0)
        {
          return 0;
        }

        v10 = *(&dword_10 + pLangGlb) + 56;
        v11 = v9 + 1;
        while (v1 != *(v10 - 32) || (*(v10 + 1) & 0x80) != 0 || !equals_nocase(*a1, *(v10 - 48)))
        {
          v10 += 64;
          if (!--v11)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

BOOL is_url(unsigned __int8 *a1)
{
  if (nLangIDGlb == 10)
  {
    return 0;
  }

  v2 = a1;
  if (equals_nocase(a1, "www"))
  {
    v3 = 1;
    v4 = -1;
  }

  else
  {
    v3 = equals_nocase(v2, "ftp");
    v4 = -v3;
  }

  v5 = *v2;
  if ((v5 == 160 || v5 <= 0x20) && (v5 & 0xFE) != 30)
  {
    if (!v3)
    {
      return 0;
    }

    return v4 > 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if (v5 <= 45)
    {
      if ((v5 - 34) < 2 || (v5 - 40) < 2 || v5 == 44)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v10 = (v5 - 47);
      if (v10 <= 0x2E)
      {
        if (((1 << (v5 - 47)) & 0x70000000B001) != 0)
        {
          goto LABEL_30;
        }

        if (v10 == 11)
        {
          v16 = 0;
          v17 = v2;
          while (1)
          {
            do
            {
              v19 = *++v17;
              v18 = v19;
            }

            while (v19 == 173 || v18 == 30);
            if (v18 != asc_26AED[v16])
            {
              goto LABEL_34;
            }

            if (++v16 == 2)
            {
              if (v8)
              {
                goto LABEL_34;
              }

              result = 0;
              if (v4 <= 0 && v9 <= 0)
              {
                v8 = 0;
                ++v3;
                ++v4;
                goto LABEL_34;
              }

              return result;
            }
          }
        }

        if (v10 == 17)
        {
          v4 = 0;
          if (v9 >= 1)
          {
            v8 = 1;
          }

          ++v9;
          goto LABEL_34;
        }
      }

      v11 = v5 - 123;
      if ((v5 - 123) <= 0x32)
      {
        if (((1 << v11) & 0x4000018000000) != 0)
        {
          goto LABEL_34;
        }

        if (((1 << v11) & 5) != 0)
        {
LABEL_30:
          v12 = v2[1];
          if (v12 >= 0x21 && v12 != 160 && !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v12, 0x15uLL))
          {
            v8 = 1;
          }

          goto LABEL_34;
        }
      }

      if (v5 == 46)
      {
        if (v2[1] >= 0x21u && v2[2] > 0x20u)
        {
          ++v4;
        }

        goto LABEL_34;
      }
    }

    if (v5 < -64)
    {
      return 0;
    }

LABEL_34:
    v13 = *++v2;
    v5 = v13;
  }

  while (v13 != 160 && v5 > 0x20 || (v5 & 0xFE) == 30);
  v22 = v9 > 0 && v8 == 0;
  if (v3 <= 0 && !v22)
  {
    return 0;
  }

  return v4 > 0;
}

uint64_t no_exception(int a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  result = v4 == 9;
  if (v4 == 9)
  {
    ++a2;
  }

  else if (v4 < 3)
  {
    return 1;
  }

  v6 = a1 == 0;
  v7 = -1;
  if (!v6)
  {
    v7 = 1;
  }

  do
  {
    if (nLangIDGlb == 9 && *a2 == 8)
    {
      if (nSubLangIDGlb != 1)
      {
        return v4 != 9;
      }

      ++a2;
    }

    v8 = *a3;
    v9 = a3;
    while (1)
    {
      if (v8 == 30 || v8 == 173)
      {
        goto LABEL_26;
      }

      v10 = *a2;
      if (v10 != 91)
      {
        if (v10 != v8 && v10 != *(pExcMapGlb + v8))
        {
          break;
        }

        goto LABEL_25;
      }

      v11 = a2 + 1;
      v12 = 1;
      do
      {
        a2 = v11;
        v10 = *v11;
        if (v10 == 93)
        {
          break;
        }

        if (v10 == v8 || v10 == *(pExcMapGlb + v8))
        {
          v12 = 0;
        }

        ++v11;
      }

      while (a2[1] > 2u);
      if (v12)
      {
        break;
      }

LABEL_25:
      ++a2;
LABEL_26:
      v9 += v7;
      v8 = *v9;
      if (!*v9)
      {
        v10 = *a2;
        if (v10 >= 3)
        {
          do
          {
LABEL_34:
            v13 = *++a2;
          }

          while (v13 > 2);
          goto LABEL_35;
        }

LABEL_28:
        if (v10 != 2)
        {
          return result;
        }

        goto LABEL_35;
      }
    }

    if (v10 >= 3)
    {
      goto LABEL_34;
    }

    if (!v8)
    {
      goto LABEL_28;
    }

    if (v10)
    {
      return result;
    }

LABEL_35:
    ;
  }

  while (*++a2);
  return v4 != 9;
}

uint64_t init_index(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = -a2;
    v3 = (a2 + result - 1);
    v4 = 1;
    do
    {
      seg_index[*v3] = v4;
      seg_start[*v3] = v3;
      --v3;
      ++v4;
    }

    while (!__CFADD__(v2++, 1));
  }

  return result;
}

unsigned __int8 *reset_index(unsigned __int8 *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  do
  {
    seg_index[v2] = 0;
    v4 = *result++;
    v2 = v4;
  }

  while (v4);
  return result;
}

uint64_t is_any_number(unsigned __int8 *a1)
{
  if (*a1 == 30)
  {
    v1 = a1 + 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = *v1;
  if ((v2 | 0x80) == 0xA0)
  {
    v3 = 1;
    if (v1[1] == 30)
    {
      v3 = 2;
    }

    v2 = v1[v3];
    if (v1[1] == 30)
    {
      v1 += 2;
    }

    else
    {
      ++v1;
    }
  }

  if (!in(v2, 2))
  {
    goto LABEL_21;
  }

  do
  {
    v4 = v1;
    v5 = v1[1];
    v6 = v5 == 30;
    if (v5 == 30)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (v6)
    {
      v1 += 2;
    }

    else
    {
      ++v1;
    }

    v8 = v4[v7];
  }

  while (in(v8, 2));
  if (*v4 && (!memchr("IVXLCDM", *v4, 8uLL) || !in(v8, 9)))
  {
    if (v8 == 30)
    {
      v10 = v1 + 1;
    }

    else
    {
      v10 = v1;
    }

    v9 = *v10;
    if ((v9 | 0x80) == 0xA0)
    {
      v11 = 1;
      if (v10[1] == 30)
      {
        v11 = 2;
      }

      v9 = v10[v11];
    }

    if (v9 <= 1)
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
LABEL_21:
    LOBYTE(v9) = 0;
  }

  return v9;
}

BOOL is_decimal_number(unsigned __int8 *a1)
{
  v1 = a1 + 1;
  if (*a1 != 30)
  {
    v1 = a1;
  }

  v2 = *v1;
  if ((v2 | 0x80) == 0xA0)
  {
    v3 = 1;
    if (v1[1] == 30)
    {
      v3 = 2;
    }

    v2 = v1[v3];
    if (v1[1] == 30)
    {
      v1 += 2;
    }

    else
    {
      ++v1;
    }
  }

  if ((v2 - 58) < 0xFFFFFFF6)
  {
LABEL_18:
    if ((v2 | 2) == 0x2E)
    {
      return v1[1] - 48 < 0xA;
    }
  }

  else
  {
    while (1)
    {
      v4 = v1[1];
      v5 = v4 == 30;
      v6 = v4 == 30 ? 2 : 1;
      v2 = v1[v6];
      if (v5)
      {
        v1 += 2;
      }

      else
      {
        ++v1;
      }

      if (!v2)
      {
        break;
      }

      if ((v2 - 58) <= 0xFFFFFFF5)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

BOOL is_number(unsigned __int8 *a1)
{
  v1 = a1 + 1;
  if (*a1 != 30)
  {
    v1 = a1;
  }

  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_8;
  }

  if ((v2 - 58) > 0xFFFFFFF5)
  {
    return 1;
  }

  if (v2 != 43 && v2 != 45)
  {
LABEL_8:
    if (v2 != stru_B8.segname[pLangGlb] && v2 != stru_B8.segname[pLangGlb + 2])
    {
      return 0;
    }
  }

  v3 = v1[1];
  if (!v1[1])
  {
    goto LABEL_14;
  }

  if ((v3 - 58) > 0xFFFFFFF5)
  {
    return 1;
  }

  if (v3 == 30)
  {
    result = 1;
    if (v1[2] - 58 > 0xFFFFFFF5)
    {
      return result;
    }
  }

  else
  {
LABEL_14:
    result = 0;
  }

  v5 = stru_B8.segname[pLangGlb];
  if (v3 == v5 || v3 == stru_B8.segname[pLangGlb + 2])
  {
    v6 = v1[2];
    if (v1[2])
    {
      if ((v6 - 58) > 0xFFFFFFF5)
      {
        return 1;
      }

      if (v6 == 30)
      {
        v7 = v1[3];
        if (v1[3])
        {
          v8 = v7 - 58;
          v9 = (v7 - 58) > 0xFFFFFFF5;
          if (v8 >= 0xFFFFFFF6 || !result)
          {
            return v9;
          }

          v11 = 30;
LABEL_28:
          if (v11 == v5 || v11 == stru_B8.segname[pLangGlb + 2])
          {
            v12 = v1[3];
            if (v1[3])
            {
              if ((v12 - 58) <= 0xFFFFFFF5)
              {
                if (v12 == 30)
                {
                  return v1[4] - 48 < 0xA;
                }

                return 0;
              }

              return 1;
            }
          }

          return 0;
        }
      }
    }
  }

  if (result)
  {
    v11 = v1[2];
    goto LABEL_28;
  }

  return result;
}

void *is_roman_number(unsigned __int8 *a1)
{
  if (*a1 == 30)
  {
    v1 = a1 + 1;
  }

  else
  {
    v1 = a1;
  }

  if (!*v1)
  {
    return 0;
  }

  result = memchr("IVXLCDM", *v1, 8uLL);
  if (!result)
  {
    return result;
  }

  v4 = v1 + 1;
  v3 = v1[1];
  if (!v1[1])
  {
    return &dword_0 + 1;
  }

  if (v3 == 30)
  {
    v3 = v1[2];
    v4 = v1 + 2;
  }

  if (!v3)
  {
    return 0;
  }

  result = memchr("IVXLCDM", v3, 8uLL);
  if (!result)
  {
    return result;
  }

  v5 = v4[1];
  if (v4[1])
  {
    if (v5 == 30)
    {
      v5 = v4[2];
    }

    if (v5)
    {
      return (memchr("IVXLCDM", v5, 8uLL) != 0);
    }

    return 0;
  }

  return &dword_0 + 1;
}

unint64_t is_figure(int a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = &a2[-a3];
  if (&a2[-a3] < 0)
  {
LABEL_7:
    v7 = *a2;
  }

  else
  {
    v6 = -1;
    if (a1)
    {
      v6 = 1;
    }

    while (*a2)
    {
      if (*a2 - 58 >= 0xFFFFFFF6)
      {
        a2 += v6;
        ++v4;
        v5 += v6;
        if (v5 >= 0)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v7 = 0;
  }

  if (v7 == stru_B8.segname[pLangGlb + 2])
  {
    v8 = a2[1];
    if (v8 != 45 && v8 > 0x20)
    {
      return 0;
    }
  }

  if (!a1 && v7 == stru_B8.segname[pLangGlb])
  {
    v9 = a2[1];
    if (v9 != 45 && v9 > 0x20)
    {
      return 0;
    }
  }

  if ((v7 | 2) == 0x2F)
  {
    if (a1 || v4 > 2 || a2[1] - 58 < 0xFFFFFFF6 || a2[2] - 58 < 0xFFFFFFF6)
    {
      if (a4)
      {
        return v4;
      }
    }

    else if (!a2[3] || a4 || a2[3] - 58 < 0xFFFFFFF6)
    {
      return v4;
    }
  }

  if (in(v7, 25))
  {
    return 0;
  }

  return v4;
}

char *create_buffer(int a1, unsigned __int8 *a2, uint64_t a3)
{
  result = byte_9D788;
  if (&a2[-a3] < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v10 = a1 == 0;
    v6 = -1;
    if (!v10)
    {
      v6 = 1;
    }

    v7 = &a2[v6 - a3];
    do
    {
      v8 = v7;
      v9 = *a2;
      v10 = v9 > 0x20 || v9 == 30;
      if (!v10)
      {
        break;
      }

      if (v9 != 30 && v9 != 173)
      {
        if (v9 > 0x60)
        {
          LOBYTE(v9) = v9 & 0xDF;
        }

        byte_9D788[v5++] = v9;
      }

      if (v5 > 0xE)
      {
        break;
      }

      a2 += v6;
      v7 = &v8[v6];
    }

    while ((v8 & 0x8000000000000000) == 0);
  }

  byte_9D788[v5] = 0;
  return result;
}

unint64_t is_generic_abbrev(unsigned __int8 *a1)
{
  if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *a1;
    if ((!in(*a1, 9) || a1[1] != 46) && ((v4 | 0x80) != 0xA0 || !in(a1[1], 9) || a1[2] != 46))
    {
      break;
    }

    if ((v4 | 0x80) == 0xA0)
    {
      v5 = a1 + 1;
    }

    else
    {
      v5 = a1;
    }

    if ((v4 | 0x80) == 0xA0)
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = v3;
    }

    v3 = v6 + 2;
    a1 = v5 + 2;
  }

  if (v3 <= 3)
  {
    return 0;
  }

  else
  {
    return v3 - 1;
  }
}

int64_t is_common_abbrev(unsigned __int8 *a1)
{
  if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
  {
    return 0;
  }

  v3 = *(*&stru_20.segname[pLangGlb + 16] + 8 * hash_map[*a1]);
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = a1[1];
  while (1)
  {
    if (v4 == 36)
    {
      ++v3;
    }

    v6 = *v3;
    if (((v5 ^ v6) & 0xFFFFFFDF) == 0)
    {
      v9 = 1;
      v8 = a1[1];
      v10 = a1 + 1;
      while (1)
      {
        v7 = v10 + 1;
        if (v6 == 46)
        {
          if ((*v7 | 0x80) == 0xA0)
          {
            v7 = v10 + 2;
          }

          else
          {
            v7 = v10 + 1;
          }

          v11 = 0;
        }

        else
        {
          v11 = v9 + 1;
          if (v9 >= 1)
          {
            if (v8)
            {
              result = 0;
              if ((v8 - 223) > 0xFFFFFFE0 || (v8 - 91) > 0xFFFFFFE5)
              {
                return result;
              }
            }
          }
        }

        v13 = *++v3;
        v6 = v13;
        v8 = *v7;
        v9 = v11;
        v10 = v7;
        if (((v8 ^ v13) & 0xFFFFFFDF) != 0)
        {
          goto LABEL_22;
        }
      }
    }

    v7 = a1 + 1;
    v8 = a1[1];
LABEL_22:
    if (!v6)
    {
      break;
    }

      ;
    }

LABEL_28:
    v16 = *++v3;
    v4 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  if (v8 != 46)
  {
    goto LABEL_28;
  }

  v15 = v7[1];
  if (v15 >= 0x41 && v15 != 160)
  {
    goto LABEL_28;
  }

  if (nLangIDGlb != 7 || (v15 <= 0x2F && ((1 << v15) & 0xA00100000000) != 0 || v15 == 160) && in(v7[2], 9) && in(v7[3], 9))
  {
    return v7 - a1;
  }

  create_buffer(1, a1, 0);
  if (!no_exception(1, "\tIE\x01AU\x01\xC4\x55\x01EU\x01CH\x01SCH\x01ST\x01", byte_9D788))
  {
    return v7 - a1;
  }

  return 0;
}

BOOL is_separator(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 != 30 && v3 != 173)
  {
    if (in(*a1, 9))
    {
      return 0;
    }

    else
    {
      return !v3 || v3 != 46 && !memchr(",;:!?", v3, 6uLL) || !in(a1[1], 11);
    }
  }

  return result;
}

uint64_t is_measurement(unsigned __int8 *a1, int a2, int a3)
{
  v5 = a1;
  if (!a3)
  {
    LOBYTE(v6) = *a1;
    if (!*a1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (equals_nocase(a1, "<pt56>") && in(v5[6], 9))
  {
    v5 += 6;
  }

  v6 = *v5;
  if (!memchr("bcdfghjklmnpqrstvwxz", v6 | 0x20u, 0x15uLL) || !memchr("bcdfghjklmnpqrstvwxz", v5[1] | 0x20u, 0x15uLL))
  {
    if (!v6)
    {
      return 0;
    }

LABEL_10:
    if (memchr("bcdfghjklmnpqrstvwxz", v6, 0x15uLL) && v5[1] && memchr("bcdfghjklmnpqrstvwxz", v5[1], 0x15uLL))
    {
      goto LABEL_13;
    }

    if (!a3)
    {
      goto LABEL_27;
    }

    if ((v6 + 64) < 0x1Fu)
    {
LABEL_32:
      create_buffer(1, v5, 0);
      if (!no_exception(1, "\tAR\x01gy\x01HA\x01OZ\x01PA\x01UG\x01UL\x01YD\x01ZE\x01", byte_9D788) || !is_separator(v5 + 2))
      {
        create_buffer(1, v5, 0);
        if (!no_exception(1, "\tATM\x01IHT\x01IND\x01LER\x01RAD\x01KAT\x01MIN\x01MOL\x01SE[CK\x01YRD\x01", byte_9D788))
        {
          return 0;
        }

        v7 = v5 + 3;
        return is_separator(v7);
      }

      return 1;
    }

    if ((v6 - 91) <= 0xE5u)
    {
LABEL_27:
      if (v6 <= 0xDEu && (v6 - 123) < 0xE6u)
      {
        return 0;
      }
    }

    if (v6 <= 0x77u && (v6 - 97) >= 3u && v6 != 111 && v6 != 117)
    {
      v11 = is_generic_abbrev(v5);
      if (a2)
      {
        if (!v11)
        {
          v12 = v5[1];
          if (v12 != 46 && (v12 != 39 || v5[2] == 46) && is_separator(v5 + 1))
          {
            return 1;
          }
        }
      }
    }

    goto LABEL_32;
  }

LABEL_13:
  if (is_common_abbrev(v5))
  {
    return 0;
  }

  if (is_url(v5))
  {
    return 0;
  }

  create_buffer(1, v5, 0);
  if (no_exception(1, byte_48496, byte_9D788))
  {
    return 0;
  }

  v7 = v5 + 1;
  v8 = -1;
  while (1)
  {
    v9 = *v7;
    if ((!a3 || !memchr("bcdfghjklmnpqrstvwxz", v9 | 0x20u, 0x15uLL)) && (!v9 || !memchr("bcdfghjklmnpqrstvwxz", v9, 0x15uLL)))
    {
      break;
    }

    result = 0;
    --v8;
    ++v7;
    if (v8 == -5)
    {
      return result;
    }
  }

  if (-v8 != 1 && v8 != 0)
  {
    return is_separator(v7);
  }

  v13 = v7[1];
  if (v13 == 39)
  {
    if (v7[2] != 46)
    {
      return 0;
    }

    return is_separator(v7);
  }

  if (v13 != 46)
  {
    return is_separator(v7);
  }

  return 0;
}

uint64_t timespec_follows(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  for (i = a1; ; ++i)
  {
    v3 = memchr(".:\x1E \xA0\xB0", v1, 7uLL);
    if ((v1 - 58) <= 0xFFFFFFF5 && !v3)
    {
      break;
    }

    v4 = i[1];
    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (v1 == 45 && i[1] - 1 <= 0x1F && i[2] - 58 > 0xFFFFFFF5)
  {
    return 1;
  }

  v6 = *(&stru_20.fileoff + pLangGlb);
  create_buffer(1, i, 0);

  return no_exception(1, v6, byte_9D788);
}

void *append_list_element(void *result, const char *a2, uint64_t a3)
{
  if (!bMemoryOverflow)
  {
    v5 = result;
    result = malloc_type_malloc(0x38uLL, 0x1030040B94BF364uLL);
    if (result)
    {
      v6 = result;
      *result = a2;
      result[2] = 0;
      result = strlen(a2);
      v6[1] = result;
      v6[3] = a3;
      v6[4] = 0;
      v7 = v5[6];
      v6[5] = v5;
      v6[6] = v7;
      if (v7)
      {
        *(v7 + 40) = v6;
      }

      v5[6] = v6;
    }

    else
    {
      bMemoryOverflow = 1;
    }
  }

  return result;
}

void *terminate_upper(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 6);
  if (v2)
  {
    while (1)
    {
      v3 = **v2;
      if ((v3 == 9 || v3 == 160 || v3 == 32) && (v4 = *(v2 + 6)) != 0)
      {
        if ((v4[24] & 0xC0) != 0)
        {
          v5 = *(v2 + 6);
        }

        else
        {
          v5 = v1;
        }

        v1 = *(v5 + 6);
        if (!v1)
        {
          return append_list_element(v5, *&stru_68.segname[pLangGlb], 2);
        }
      }

      else
      {
        v5 = v1;
        v1 = v2;
      }

      if ((v1[24] & 0xDC) != 0 || **v1 == 47)
      {
        v2 = *(v1 + 6);
        v5 = v1;
        if (v2)
        {
          continue;
        }
      }

      return append_list_element(v5, *&stru_68.segname[pLangGlb], 2);
    }
  }

  v5 = *(a1 + 48);
  return append_list_element(v5, *&stru_68.segname[pLangGlb], 2);
}

const char **uppersign_follows(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return v3;
  }

  v5 = pLangGlb;
  v6 = nLangIDGlb;
  while (1)
  {
    v7 = v3[3];
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    if (**v3 != **(&stru_20.filesize + v5))
    {
      break;
    }

    v8 = v3[6];
    if (!v8 || *(v8 + 1) != 1 || (v8[35] & 8) == 0)
    {
      break;
    }

    v3 = *(v8 + 6);
    if (!v3)
    {
      return 0;
    }

    v7 = v3[3];
LABEL_13:
    if ((v7 & 0x10DC) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v3 = v3[6];
    if (!v3)
    {
      return 0;
    }
  }

  v7 = 2;
LABEL_14:
  v9 = *v3;
  v10 = **v3;
  if (v10 == 9 || v10 == 32 || v10 == 160)
  {
    goto LABEL_24;
  }

  v11 = (v10 - 45) <= 1 && v6 == 9;
  if (v11 || !strcmp(*v3, *&stru_68.segname[v5 + 8]) || !strcmp(v9, *(&stru_68.size + v5)) || v10 == 47)
  {
    goto LABEL_24;
  }

  if (v7 != 2 || !v3[6] || strcmp(v9, a2))
  {
    return 0;
  }

  return v3;
}

uint64_t lowerchar_follows(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  if (a2)
  {
    if (*(result + 48))
    {
      goto LABEL_4;
    }

    return 1;
  }

  v13 = *(result + 40);
  if (v13)
  {
    v14 = *(v13 + 24);
    if (v14 == 64 || v14 == 128 || v14 <= 2 && (v16 = *(v13 + 40)) != 0 && ((v17 = *(v16 + 24), v17 == 128) || v17 == 64))
    {
      if (*(result + 8) < 3)
      {
        return 1;
      }

      v15 = *result;
      if (!strcmp(*result, "CHF") || !strcmp(v15, "EUR") || !strcmp(v15, "SFR"))
      {
        return 1;
      }
    }
  }

  v18 = v3[6];
  if (!v18 || *(v18 + 3) == 64)
  {
    return 1;
  }

  v19 = **v18;
  if (**v18 && memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", **v18, 0x15uLL))
  {
    result = 1;
    v20 = v19 - 39;
    if ((v19 - 39) > 0x38)
    {
      return result;
    }

    if (((1 << v20) & 0x100000000000041) == 0)
    {
      if (((1 << v20) & 0x100020) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }

    v21 = *(v18 + 6);
    if (!v21 || *(v21 + 3) != 1024 || lowerchar_follows())
    {
      return 1;
    }
  }

  do
  {
LABEL_4:
    v3 = v3[6];
    if (!v3)
    {
      return v2 == 0;
    }
  }

  while (v3[3] == &dword_0 + 2);
  while (1)
  {
    v4 = v3[3];
    if (!v4)
    {
      goto LABEL_39;
    }

    if (v4 == &stru_3D8.fileoff)
    {
      break;
    }

    if (v4 == &stru_20)
    {
      v5 = *v3;
      v6 = **v3;
      if (v6 == 48)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    if ((v4 & 0xB00) != 0 || (v4 & 1) != 0 && ((v8 = **v3, v8 != 10) ? (v9 = v8 == 13) : (v9 = 1), v9))
    {
LABEL_56:
      v2 = 0;
      return v2 == 0;
    }

    if ((v4 & 0xC0) == 0)
    {
      v5 = *v3;
      v6 = **v3;
LABEL_25:
      v10 = in(v6, 11);
      v11 = v6 == 45 || !v10;
      if (!v11 && v3[1][v5 - 1] != 46)
      {
        goto LABEL_56;
      }

      if (v4 == &stru_20)
      {
        v12 = v3[1];
        if (v12 == 1)
        {
          if (in(v6, 41))
          {
            goto LABEL_56;
          }
        }

        else if (v12 >= 2 && v6 == 39)
        {
          goto LABEL_56;
        }
      }

      else if (v2 && v4 == (&dword_0 + 2))
      {
        return v2 == 0;
      }
    }

LABEL_39:
    v3 = v3[6];
    if (!v3)
    {
      return v2 == 0;
    }
  }

  if (!v2)
  {
    v7 = v3[1];
    if (v7 <= 2 && (v7 != 2 || !is_roman_number(*v3)))
    {
      goto LABEL_39;
    }

    if (**v3[5] == 47)
    {
      goto LABEL_39;
    }
  }

  v3[3] = (&stru_3D8 + 40);
  v2 = 1;
  return v2 == 0;
}

uint64_t upperchar_follows(uint64_t a1, int a2)
{
  for (i = (a1 + 3); ; ++i)
  {
    v4 = *(i - 2);
    if (v4 != 173 && v4 != 30)
    {
      break;
    }
  }

  if (in(*(i - 2), 9))
  {
    for (j = 1; ; j = v8)
    {
      if (!v4)
      {
        goto LABEL_17;
      }

      if (v4 == 45)
      {
        return j;
      }

      if ((v4 + 33) <= 0xE0u && (v4 - 91) < 0xE6u)
      {
        break;
      }

      v8 = 1;
      if (!a2 || j)
      {
        return v8;
      }

LABEL_32:
      v4 = *(i - 1);
      v11 = in(*(i - 1), 11) || v4 == 30;
      if (!v11 && v4 != 173)
      {
        return v8;
      }

      ++i;
    }

    if (v4 == 30 || v4 == 173)
    {
      v8 = j;
      goto LABEL_32;
    }

LABEL_17:
    v8 = 0;
    if (a2 && j)
    {
      v9 = *(i - 1);
      if (*(i - 1))
      {
        v8 = 1;
        if ((v9 + 33) > 0xE0u || (v9 - 91) > 0xE5u)
        {
          return v8;
        }
      }

      if (!in(*(i - 1), 11))
      {
        return 1;
      }

      if (v9 == 173 || v9 == 30)
      {
        v10 = *i;
        if (*i)
        {
          v8 = 1;
          if ((v10 + 33) > 0xE0u || (v10 - 91) > 0xE5u)
          {
            return v8;
          }
        }

        if (!in(v10, 11))
        {
          return 1;
        }
      }

      v8 = 0;
    }

    goto LABEL_32;
  }

  return 1;
}

size_t brl_add_exception(size_t result, int a2)
{
  if (result && *result)
  {
    if (a2)
    {
      v3 = &bwd_exceptions;
      v4 = 100;
      while (*v3)
      {
        v3 += 160;
        if (!--v4)
        {
          return result;
        }
      }
    }

    else
    {
      v3 = &exceptions;
      v5 = 100;
      while (*v3)
      {
        v3 += 160;
        if (!--v5)
        {
          return result;
        }
      }
    }

    *(v3 + 19) = 122880;
    v6 = *result;
    if (*result)
    {
      v7 = 0;
      do
      {
        if (v6 > 124)
        {
          if (v6 == 160 || v6 == 125)
          {
LABEL_22:
            *(v3 + 17) = v7;
            if ((v7 - 65) < 0xFFFFFFFFFFFFFFC1)
            {
              return result;
            }

            v9 = result + v7 + 2;
            result = __strncpy_chk();
            v3[*(v3 + 17)] = 0;
            v10 = *v3;
            if (a2)
            {
              if (*v3)
              {
                v11 = (v3 + 1);
                do
                {
                  if (v10 - 223 > 0xFFFFFFE0 || v10 - 91 >= 0xFFFFFFE6)
                  {
                    *(v11 - 1) = v10 | 0x20;
                  }

                  v13 = *v11++;
                  v10 = v13;
                }

                while (v13);
              }
            }

            else if (*v3)
            {
              v14 = (v3 + 1);
              do
              {
                if (v10 > 0xDE || v10 - 123 >= 0xFFFFFFE6)
                {
                  *(v14 - 1) = v10 & 0xDF;
                }

                v15 = *v14++;
                v10 = v15;
              }

              while (v15);
            }

            while (1)
            {
              v16 = *(v9 - 1);
              if (v16 <= 0x1F)
              {
                if (v16 != 9)
                {
                  if (!*(v9 - 1))
                  {
LABEL_48:
                    result = strlen((v9 - 1));
                    v17 = result;
                    *(v3 + 18) = result;
                    i = &byte_26721;
                    goto LABEL_49;
                  }

LABEL_64:
                  v17 = 0;
                  while (1)
                  {
                    if (v16 > 124)
                    {
                      if (v16 == 160 || v16 == 125)
                      {
LABEL_73:
                        *(v3 + 18) = v17;
                        for (i = (v9 + v17); ; ++i)
                        {
                          v24 = *i;
                          if (v24 != 9 && v24 != 160 && v24 != 32)
                          {
                            break;
                          }
                        }

LABEL_49:
                        if (v17 - 65 <= 0xFFFFFFFFFFFFFFBFLL)
                        {
                          *v3 = 0;
                          return result;
                        }

                        v19 = v3 + 65;
                        result = __strncpy_chk();
                        v3[*(v3 + 18) + 65] = 0;
                        if (!a2)
                        {
                          v20 = *v19;
                          if (*v19)
                          {
                            v21 = (v3 + 66);
                            do
                            {
                              if ((v20 - 223) > 0xFFFFFFE0 || (v20 - 91) >= 0xFFFFFFE6)
                              {
                                *(v21 - 1) = v20 | 0x20;
                              }

                              v23 = *v21++;
                              v20 = v23;
                            }

                            while (v23);
                          }
                        }

                        if (!*i || *i == 125)
                        {
                          return result;
                        }

                        *(v3 + 19) = 0;
                        while (2)
                        {
                          v25 = *i;
                          if (!*i || v25 == 125)
                          {
                            return result;
                          }

                          v26 = v25;
                          result = __tolower(v25);
                          if (result > 108)
                          {
                            if (result > 114)
                            {
                              if (result != 115 && result != 119)
                              {
                                goto LABEL_100;
                              }

                              v27 = 0x2000;
                              goto LABEL_97;
                            }

                            if (result != 109)
                            {
                              if (result != 114)
                              {
                                goto LABEL_100;
                              }

                              goto LABEL_89;
                            }
                          }

                          else
                          {
                            if (result <= 104)
                            {
                              v27 = 0x4000;
                              if (result != 98)
                              {
                                if (result != 101)
                                {
                                  goto LABEL_100;
                                }

LABEL_89:
                                v27 = 0x10000;
                              }

LABEL_97:
                              v28 = *(v3 + 19) | v27;
LABEL_98:
                              *(v3 + 19) = v28;
                              goto LABEL_99;
                            }

                            if (result != 105)
                            {
                              v27 = 0x4000;
                              if (result == 108)
                              {
                                goto LABEL_97;
                              }

LABEL_100:
                              if (v26 < 0)
                              {
                                result = __maskrune(v26, 0x100uLL);
                              }

                              else
                              {
                                result = _DefaultRuneLocale.__runetype[v26] & 0x100;
                              }

                              if (result)
                              {
                                v28 = 122880;
                                goto LABEL_98;
                              }

LABEL_99:
                              ++i;
                              continue;
                            }
                          }

                          break;
                        }

                        v27 = 0x8000;
                        goto LABEL_97;
                      }
                    }

                    else if (v16 == 9 || v16 == 32)
                    {
                      goto LABEL_73;
                    }

                    v16 = *(v9 + v17++);
                    if (!v16)
                    {
                      goto LABEL_48;
                    }
                  }
                }
              }

              else if (v16 != 160 && v16 != 32)
              {
                goto LABEL_64;
              }

              ++v9;
            }
          }
        }

        else if (v6 == 9 || v6 == 32)
        {
          goto LABEL_22;
        }

        v8 = result + v7++;
        v6 = *(v8 + 1);
      }

      while (v6);
    }
  }

  return result;
}

void brl_clear_exceptions()
{
  v0 = &exceptions;
  v1 = 100;
  do
  {
    *v0 = 0;
    v0[65] = 0;
    *(v0 + 17) = 0;
    *(v0 + 18) = 0;
    v0 += 160;
    --v1;
  }

  while (v1);
  v2 = &bwd_exceptions;
  v3 = 100;
  do
  {
    *v2 = 0;
    v2[65] = 0;
    *(v2 + 17) = 0;
    *(v2 + 18) = 0;
    v2 += 160;
    --v3;
  }

  while (v3);
}

uint64_t brl_get_table(__int16 a1)
{
  if ((a1 - 3) > 0xCu)
  {
    return 0;
  }

  else
  {
    return *(&off_90D98 + (a1 - 3));
  }
}

uint64_t brl_set_language(int a1, uint64_t a2)
{
  v2 = a1 & 0x3FF;
  nLangIDGlb = v2;
  v3 = a1 >> 10;
  nSubLangIDGlb = a1 >> 10;
  switch(v2)
  {
    case 12:
      v4 = &BWD_LANG_FR;
      v5 = &LANG_FR;
      break;
    case 10:
      v4 = &BWD_LANG_ES;
      v5 = &LANG_ES;
      break;
    case 9:
      if (v3 == 1)
      {
        v4 = &BWD_LANG_ENU;
        v5 = &LANG_ENU;
      }

      else if (v3 == 3)
      {
        v4 = &BWD_LANG_UEB;
        v5 = &LANG_UEB;
      }

      else
      {
        v4 = &BWD_LANG_EN;
        v5 = &LANG_EN;
      }

      break;
    default:
      v4 = &BWD_LANG_DE;
      v5 = &LANG_DE;
      break;
  }

  pLangGlb = v5;
  pBwdLangGlb = v4;
  nEncodingGlb = a2;
  bUpShiftGlb = a2 & 0x10000;
  pCharmapGlb = brl_get_table(a2);
  return 0;
}

uint64_t brl_get_binary_dots(unsigned __int8 a1)
{
  v1 = a1;
  if (pCharmapGlb)
  {
    v2 = 0;
    while (*(pCharmapGlb + v2) != a1)
    {
      if (++v2 == 256)
      {
        v1 = 0;
        goto LABEL_7;
      }
    }

    v1 = v2;
  }

LABEL_7:
  result = 0;
  while (brl_set_ansi[result] != v1)
  {
    if (++result == 256)
    {
      return 0;
    }
  }

  return result;
}

uint64_t brl_convert_to_utf(_BYTE *a1, _BYTE *a2, int a3)
{
  if (!a1 || !a2 && a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0xFFFFFFFFLL;
  if (a1 != a2 && (a3 & 0x80000000) == 0)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = 0;
      do
      {
        if (v5 > 0x1F)
        {
          if (v6 >= a3 - 2)
          {
            if (a3 > 0)
            {
              return 4294967294;
            }

            v6 += 2;
          }

          else
          {
            if (pCharmapGlb)
            {
              v7 = 0;
              while (*(pCharmapGlb + v7) != v5)
              {
                if (++v7 == 256)
                {
                  v5 = 0;
                  goto LABEL_24;
                }
              }

              v5 = v7;
            }

LABEL_24:
            v8 = 0;
            while (brl_set_ansi[v8] != v5)
            {
              if (++v8 == 256)
              {
                LODWORD(v8) = 0;
                break;
              }
            }

            v9 = v6;
            v10 = &a2[v6];
            *v10 = -30;
            v9 += 2;
            v10[1] = (v8 >> 6) | 0xA0;
            a2[v9] = v8 & 0x3F | 0x80;
            v6 = v9;
          }
        }

        else if (v6 >= a3)
        {
          if (a3 > 0)
          {
            return 4294967294;
          }
        }

        else
        {
          a2[v6] = v5;
        }

        v11 = *++a1;
        v5 = v11;
        v12 = v6 + 1;
        if (!v11)
        {
          break;
        }
      }

      while (v6++ < 2147483643);
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= a3)
    {
      if (a3 > 0)
      {
        return 4294967294;
      }
    }

    else
    {
      a2[v12] = 0;
    }

    return (v12 + 1);
  }

  return v3;
}

uint64_t brl_convert_from_utf(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  if (!a1 || !a2 && a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0xFFFFFFFFLL;
  if (a1 != a2 && (a3 & 0x80000000) == 0)
  {
    v5 = *a1;
    if (!*a1)
    {
      LODWORD(v6) = 0;
LABEL_43:
      if (v6 >= a3)
      {
        if (a3 > 0)
        {
          return 4294967294;
        }
      }

      else
      {
        a2[v6] = 0;
      }

      return (v6 + 1);
    }

    v6 = 0;
    while (1)
    {
      v7 = v6;
      if (v6 >= a3)
      {
        if (a3 > 0)
        {
          return 4294967294;
        }

        goto LABEL_36;
      }

      if (v5 - 196 < 0x1C)
      {
        break;
      }

      if (v5 - 192 >= 4)
      {
        if (v5 == 226)
        {
          v11 = a1[1];
          if ((v11 & 0xFC) == 0xA0 && (v12 = a1[2], (v12 & 0xC0) == 0x80))
          {
            v13 = &brl_set_ansi[v12 & 0x3F | ((v11 & 3) << 6)];
            if (pCharmapGlb)
            {
              v13 = (pCharmapGlb + *v13);
            }

            a2[v7] = *v13;
            a1 += 2;
          }

          else
          {
            a2[v7] = 32;
            a1 += 2;
          }

          goto LABEL_36;
        }

        if ((v5 & 0xF0) == 0xE0)
        {
          if (a1[1] > -65)
          {
            goto LABEL_35;
          }

          v8 = a1 + 2;
          v9 = a1[2];
        }

        else
        {
          if ((v5 & 0xF8) != 0xF0 || a1[1] > -65 || a1[2] > -65)
          {
LABEL_35:
            a2[v7] = v5;
            goto LABEL_36;
          }

          v8 = a1 + 3;
          v9 = a1[3];
        }

        goto LABEL_13;
      }

      v8 = a1 + 1;
      v10 = a1[1];
      if (v10 > -65)
      {
        goto LABEL_35;
      }

      a2[v7] = v10 & 0x3F | (v5 << 6);
LABEL_15:
      a1 = v8;
LABEL_36:
      v14 = *++a1;
      v5 = v14;
      v6 = v7 + 1;
      if (v14)
      {
        v15 = v7 >= 0x7FFFFFFD;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_43;
      }
    }

    v8 = a1 + 1;
    v9 = a1[1];
LABEL_13:
    if (v9 > -65)
    {
      goto LABEL_35;
    }

    a2[v7] = 32;
    goto LABEL_15;
  }

  return v3;
}

uint64_t brl_process_command(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = a1 + 1;
  while (v2 <= 124)
  {
    if (v2 == 9 || v2 == 32)
    {
      goto LABEL_13;
    }

LABEL_10:
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      v3 = &byte_26721;
      goto LABEL_16;
    }
  }

  if (v2 != 160 && v2 != 125)
  {
    goto LABEL_10;
  }

LABEL_13:
  while (1)
  {
    v5 = *v3;
    if (v5 != 9 && v5 != 160 && v5 != 32)
    {
      break;
    }

    ++v3;
  }

LABEL_16:
  if (equals_nocase(a1, "ETC"))
  {
    v6 = &exceptions;
    v7 = 100;
    do
    {
      *v6 = 0;
      v6[65] = 0;
      *(v6 + 17) = 0;
      *(v6 + 18) = 0;
      v6 += 160;
      --v7;
    }

    while (v7);
    v8 = &bwd_exceptions;
    v9 = 100;
    do
    {
      *v8 = 0;
      v8[65] = 0;
      *(v8 + 17) = 0;
      *(v8 + 18) = 0;
      v8 += 160;
      --v9;
    }

    while (v9);
    return 1;
  }

  if (equals_nocase(a1, "ETA"))
  {
    brl_add_exception(v3, 0);
    return 1;
  }

  if (equals_nocase(a1, "ETB"))
  {
    v10 = 1;
    brl_add_exception(v3, 1);
    return v10;
  }

  if (equals_nocase(a1, "FLN"))
  {
    if (equals_nocase(v3, "ch"))
    {
      v12 = nEncodingGlb;
      nLangIDGlb = 7;
      nSubLangIDGlb = 2;
      pLangGlb = &LANG_DE;
      v13 = off_95000;
      v14 = &BWD_LANG_DE;
LABEL_38:
      v13[61] = v14;
      bUpShiftGlb = *&v12 & 0x10000;
      pCharmapGlb = brl_get_table(v12);
      return 1;
    }

    if (equals_nocase(v3, "ueb"))
    {
      v12 = nEncodingGlb;
      nLangIDGlb = 9;
      nSubLangIDGlb = 3;
      pLangGlb = &LANG_UEB;
      v13 = off_95000;
      v14 = &BWD_LANG_UEB;
      goto LABEL_38;
    }

    if (equals_nocase(v3, "enu"))
    {
      v24 = nEncodingGlb;
      nLangIDGlb = 9;
      v10 = 1;
      nSubLangIDGlb = 1;
      pLangGlb = &LANG_ENU;
      v25 = off_95000;
      v26 = &BWD_LANG_ENU;
      goto LABEL_52;
    }

    if (equals_nocase(v3, "en"))
    {
      v12 = nEncodingGlb;
      nLangIDGlb = 9;
      nSubLangIDGlb = 2;
      pLangGlb = &LANG_EN;
      v13 = off_95000;
      v14 = &BWD_LANG_EN;
      goto LABEL_38;
    }

    if (equals_nocase(v3, "fr"))
    {
      v24 = nEncodingGlb;
      nLangIDGlb = 12;
      v10 = 1;
      nSubLangIDGlb = 1;
      pLangGlb = &LANG_FR;
      v25 = off_95000;
      v26 = &BWD_LANG_FR;
LABEL_52:
      v25[61] = v26;
      bUpShiftGlb = *&v24 & 0x10000;
      table = brl_get_table(v24);
    }

    else
    {
      v41 = equals_nocase(v3, "es");
      v42 = nEncodingGlb & 0x10000;
      table = brl_get_table(nEncodingGlb);
      if (v41)
      {
        nLangIDGlb = 10;
        v10 = 1;
        nSubLangIDGlb = 1;
        pLangGlb = &LANG_ES;
        v43 = &BWD_LANG_ES;
      }

      else
      {
        nLangIDGlb = 7;
        v10 = 1;
        nSubLangIDGlb = 1;
        pLangGlb = &LANG_DE;
        v43 = &BWD_LANG_DE;
      }

      pBwdLangGlb = v43;
      bUpShiftGlb = v42;
    }

    pCharmapGlb = table;
    return v10;
  }

  if (equals_nocase(a1, "TBL"))
  {
    if (equals_nocase(v3, "ANSI"))
    {
      v15 = nLangIDGlb | (nSubLangIDGlb << 10);
      goto LABEL_35;
    }

    if (equals_nocase(v3, "IBM437"))
    {
      v15 = nLangIDGlb | (nSubLangIDGlb << 10);
      v16 = 3;
    }

    else if (equals_nocase(v3, "IBM850"))
    {
      v15 = nLangIDGlb | (nSubLangIDGlb << 10);
      v16 = 4;
    }

    else if (equals_nocase(v3, "US437"))
    {
      v15 = nLangIDGlb | (nSubLangIDGlb << 10);
      v16 = 7;
    }

    else
    {
      v40 = equals_nocase(v3, "TBFR2007");
      v15 = nLangIDGlb | (nSubLangIDGlb << 10);
      if (v40)
      {
        v16 = 14;
      }

      else
      {
LABEL_35:
        v16 = 0;
      }
    }

    brl_set_language(v15, v16);
    return 1;
  }

  if (!equals_nocase(a1, "FGR"))
  {
    v28 = &qword_90CC8;
    v29 = 9;
    while (!equals_nocase(a1, *(v28 - 1)))
    {
      v10 = 0;
      v28 += 3;
      if (!--v29)
      {
        return v10;
      }
    }

    v34 = equals_nocase(v3, "ON");
    v35 = *v28;
    if (v34 == (*(v28 + 2) == 0))
    {
      v23 = lFlags & ~v35;
    }

    else
    {
      v23 = lFlags | v35;
    }

    goto LABEL_76;
  }

  v17 = 0;
  v18 = lFlags;
  v19 = lFlags & 0xFFFFFFFFFFFF0000;
  lFlags &= 0xFFFFFFFFFFFF0000;
  b8DotBraille = 0;
  v20 = v3;
  while (1)
  {
    do
    {
      v21 = *v20++;
    }

    while (v21 == 173 || v21 == 30);
    if (v21 != a15[v17])
    {
      break;
    }

    if (++v17 == 3)
    {
      v23 = v19 | 0x7FFE;
      goto LABEL_76;
    }
  }

  for (i = v3; ; ++i)
  {
    v31 = *i;
    if (v31 != 30 && v31 != 173)
    {
      break;
    }
  }

  if (v31 == 49)
  {
    goto LABEL_74;
  }

  for (j = v3; ; ++j)
  {
    v33 = *j;
    if (v33 != 30 && v33 != 173)
    {
      break;
    }
  }

  if (v33 == 48)
  {
LABEL_74:
    v23 = v18 | 0xFFFF;
LABEL_76:
    lFlags = v23;
    return 1;
  }

  v36 = *v3 - 56;
  v37 = v36 > 0x2B;
  v10 = 1;
  v38 = (1 << v36) & 0x80000000801;
  if (v37 || v38 == 0)
  {
    return 1;
  }

  b8DotBraille = 1;
  return v10;
}

uint64_t is_nemeth_enabled()
{
  if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
  {
    return 0;
  }

  else
  {
    return byte_9D798 & 1 | ((lFlags & 0x40000000) == 0);
  }
}

uint64_t is_antoine_enabled()
{
  if (nLangIDGlb == 12)
  {
    return byte_9D798 & 1 | ((lFlags & 0x40000000) == 0);
  }

  else
  {
    return 0;
  }
}

void enter_numeric_mode()
{
  v0 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
  if (v0 && (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
  {
    byte_9D79C = 1;
  }
}

void terminate_numeric_mode()
{
  if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
  {
    byte_9D79C = 0;
    dword_9D7A0 = 0;
  }
}

uint64_t upper_digit(unsigned __int8 a1)
{
  if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
  {
    if (nLangIDGlb != 12 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0 || a1 - 58 < 0xFFFFFFF6)
    {
      goto LABEL_14;
    }

    v2 = "#123456789";
LABEL_17:
    v3 = &v2[a1 - 48];
    return *v3;
  }

  if (((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0) && a1 - 58 >= 0xFFFFFFF6)
  {
    v2 = "),;:/?+=(*";
    goto LABEL_17;
  }

LABEL_14:
  v3 = *(*(&stru_20.cmd + pLangGlb) + 8 * a1);
  return *v3;
}

uint64_t get_separator(int a1)
{
  if (a1 && (nLangIDGlb == 9 ? (v1 = nSubLangIDGlb == 3) : (v1 = 0), v1))
  {
    return 33;
  }

  else
  {
    if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
    {
      return stru_B8.segname[pLangGlb + 2];
    }

    v2 = 39;
    if ((byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
    {
      return stru_B8.segname[pLangGlb + 2];
    }
  }

  return v2;
}

uint64_t std_char(uint64_t result)
{
  if (qword_9D7A8 <= 0)
  {
    v1 = qword_9D7B0;
    v2 = qword_9D7B8;
  }

  else
  {
    v1 = qword_9D7B0;
    v2 = qword_9D7B8;
    if (!--qword_9D7A8)
    {
      if (qword_9D7B0 == qword_9D7B8)
      {
        return result;
      }

      *qword_9D7B0 = 30;
      qword_9D7B0 = ++v1;
    }
  }

  if (v1 != v2)
  {
    *v1 = result;
    qword_9D7B0 = (v1 + 1);
  }

  return result;
}

uint64_t std_string(_BYTE *a1)
{
  v2 = a1 + 1;
  v1 = *a1;
  do
  {
    result = std_char(v1);
    v4 = *v2++;
    v1 = v4;
  }

  while (v4);
  return result;
}

void increment_cursor()
{
  if (qword_9D7A8 >= 2)
  {
    ++qword_9D7A8;
  }
}

uint64_t inc_char(uint64_t result)
{
  if (qword_9D7A8 >= 2)
  {
    ++qword_9D7A8;
  }

  return std_char(result);
}

uint64_t inc_string(_BYTE *a1)
{
  v2 = a1 + 1;
  v1 = *a1;
  do
  {
    if (qword_9D7A8 >= 2)
    {
      ++qword_9D7A8;
    }

    result = std_char(v1);
    v4 = *v2++;
    v1 = v4;
  }

  while (v4);
  return result;
}

uint64_t map_char(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = &NSObject__properties;
    if (result != 150 || (lFlags & 0x20000000) == 0)
    {
      v3 = *(&stru_20.maxprot + pLangGlb);
      v4 = off_95000;
      if (*v3 != result)
      {
        if (result < 0xC0u || nLangIDGlb == 12 || (lFlags & 0x40000) == 0 || (byte_9D798 & 1) != 0)
        {
          v3 = *(*(&stru_20.cmd + pLangGlb) + 8 * result);
        }

        else
        {
          v3 = *(*&stru_20.segname[pLangGlb + 8] + 8 * (result & 0x3F));
          if (nLangIDGlb == 9 && nSubLangIDGlb == 2 && *v3 == 34)
          {
            ++v3;
          }
        }
      }

      v7 = *v3;
      v6 = v3 + 1;
      v5 = v7;
      while (v1 != 151 || v5 != 45 || (v2[348].entrysize & 0x20000000) == 0)
      {
        if (**(&stru_20.maxprot + pLangGlb) != v5 || (v8 = qword_9D7B0, v9 = qword_9D7B0 - qword_9D7C0, qword_9D7B0 == qword_9D7C0))
        {
          if (*v6 && qword_9D7A8 >= 2)
          {
            ++qword_9D7A8;
          }

          goto LABEL_37;
        }

        v11 = (qword_9D7B0 - 1);
        v10 = *(qword_9D7B0 - 1);
        if (v10 != v5)
        {
          if (*v6 && qword_9D7A8 >= 2)
          {
            ++qword_9D7A8;
          }

          v12 = *(v4 + 120);
          if ((v12 == 12 || v12 == 9) && v10 == **(&stru_20.filesize + pLangGlb))
          {
            v13 = strlen(*&stru_68.segname[pLangGlb - 8]);
            v14 = *&stru_68.sectname[pLangGlb];
            v15 = strlen(v14);
            if (v9 >= v13 && (v17 = (qword_9D7B0 - v13), !strncmp((qword_9D7B0 - v13), *&stru_68.segname[pLangGlb - 8], v13)))
            {
              v11 = v17;
            }

            else if (v9 >= v15 && !strncmp((v8 - v15), v14, v15))
            {
              v11 = (v8 - v15);
            }

            v4 = off_95000;
            *v11 = v5;
            v5 = **(&stru_20.filesize + pLangGlb);
            v2 = &NSObject__properties;
          }

          goto LABEL_37;
        }

LABEL_38:
        v16 = *v6++;
        v5 = v16;
        if (!v16)
        {
          return result;
        }
      }

      v5 = -106;
LABEL_37:
      result = std_char(v5);
      goto LABEL_38;
    }

    return std_char(4294967190);
  }

  return result;
}

uint64_t map_string(_BYTE *a1)
{
  v2 = a1 + 1;
  v1 = *a1;
  do
  {
    result = map_char(v1);
    v4 = *v2++;
    v1 = v4;
  }

  while (v4);
  return result;
}

uint64_t add_char(uint64_t result)
{
  v1 = qword_9D7B0;
  *qword_9D7B0 = result;
  qword_9D7B0 = v1 + 1;
  return result;
}

unsigned __int8 *add_string(_BYTE *a1)
{
  v1 = qword_9D7B0;
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  do
  {
    *v1++ = v3;
    v5 = *result++;
    v3 = v5;
  }

  while (v5);
  qword_9D7B0 = v1;
  return result;
}

uint64_t number_precedes(int a1)
{
  v2 = qword_9D7C8;
  if ((qword_9D7C8 & 0xC0) != 0)
  {
    if (a1)
    {
      return 1;
    }

    v3 = qword_9D7D0;
    goto LABEL_4;
  }

  if (qword_9D7C8 < 3)
  {
    if ((qword_9D7D8 & 0xC0) == 0)
    {
      v6 = qword_9D7E0;
      if (qword_9D7D8 != 4)
      {
        goto LABEL_11;
      }

      if (**qword_9D7E0 != 46)
      {
        goto LABEL_12;
      }

      v12 = *(qword_9D7E0 + 40);
      if (!v12 || *(v12 + 24) != 64)
      {
        goto LABEL_12;
      }

      return 1;
    }

    if (a1)
    {
      return 1;
    }

    v3 = *qword_9D7E0;
LABEL_4:
    v4 = *v3;
    if (v4 == upper_digit(0x30u))
    {
      goto LABEL_10;
    }

    return 1;
  }

LABEL_10:
  v6 = qword_9D7E0;
LABEL_11:
  if (v6)
  {
LABEL_12:
    LODWORD(result) = v2 == 0x2000;
    do
    {
      v7 = *(v6 + 3);
      if (v7 > 127)
      {
        if (v7 == 128)
        {
          goto LABEL_32;
        }

        if (v7 == 1024 || v7 == 512)
        {
LABEL_21:
          if (result)
          {
            v8 = **v6 == 181;
          }

          else
          {
            v8 = 0;
          }

          if (!v8 && result != 0)
          {
            return 0;
          }

LABEL_29:
          LODWORD(result) = 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 == 4 || v7 == 32)
        {
          goto LABEL_21;
        }

        if (v7 == 64)
        {
LABEL_32:
          if (result == 1)
          {
            if (a1)
            {
              return 1;
            }

            v10 = **v6;
            v11 = upper_digit(0x30u);
            result = 1;
            if (v10 != v11)
            {
              return result;
            }
          }

          else
          {
            LODWORD(result) = 0;
          }

          goto LABEL_30;
        }
      }

      if ((v7 & 0x1E000) != 0 && !result)
      {
        goto LABEL_29;
      }

      if (v7 > 2)
      {
        return 0;
      }

LABEL_30:
      v6 = *(v6 + 5);
    }

    while (v6);
  }

  return 0;
}

BOOL number_follows(int a1)
{
  v2 = 1;
  if (*(qword_9D7E8 + 1) == 30)
  {
    v2 = 2;
    v3 = (qword_9D7E8 + 2);
  }

  else
  {
    v3 = (qword_9D7E8 + 1);
  }

  if ((*(qword_9D7E8 + v2) | 0x80) == 0xA0)
  {
    v4 = *++v3;
    if (v4 == 30)
    {
      ++v3;
    }
  }

  if (is_number(v3))
  {
    if (a1 || *v3 != 48)
    {
      return 1;
    }

    v5 = 48;
  }

  else
  {
    v5 = *v3;
  }

  if (in(v5, 9))
  {
    v6 = v3[1];
    if (v3[1])
    {
      if (memchr("\xB9\xB2\xB3\xBC\xBD\xBE", v3[1], 7uLL) || v6 == 30 && v3[2] && memchr("\xB9\xB2\xB3\xBC\xBD\xBE", v3[2], 7uLL))
      {
        return 1;
      }
    }
  }

  if (v5 != 35)
  {
    return 0;
  }

  v8 = v3[1];
  result = 1;
  if (v8 != 46 && v8 != 44)
  {
    if (v8 == 30)
    {
      v9 = v3[2];
      if (v9 != 46)
      {
        return v9 == 44;
      }

      return result;
    }

    return 0;
  }

  return result;
}

unsigned __int8 **escape_number(unsigned __int8 **result, char a2)
{
  if ((qword_9D7D8 & 0xC0) == 0)
  {
    return result;
  }

  v2 = result;
  v3 = **result;
  v4 = v3 - 33;
  if ((v3 - 33) > 0x29)
  {
    goto LABEL_21;
  }

  if (((1 << v4) & 0x3FF00000000) != 0)
  {
LABEL_18:
    if (qword_9D7A8 >= 2)
    {
      ++qword_9D7A8;
    }

    a2 = **(&stru_20.maxprot + pLangGlb);
LABEL_24:

    return map_char(a2);
  }

  if (((1 << v4) & 0x46004201) != 0)
  {
    if ((byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
    {
      return result;
    }

    if (dword_9D7A0)
    {
      return result;
    }

    if (qword_9D7D8 != 128)
    {
      v6 = *result[5];
      result = strchr(v6, 44);
      if (result)
      {
        return result;
      }

      result = strchr(v6, 46);
      if (result)
      {
        return result;
      }
    }

    if (v3 == 33 && v2[3] != &dword_8)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (((1 << v4) & 0x10000980) == 0)
  {
LABEL_21:
    if ((v3 - 97) >= 0xA)
    {
      return result;
    }

    if (qword_9D7A8 >= 2)
    {
      ++qword_9D7A8;
    }

    goto LABEL_24;
  }

  if (((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0) && !dword_9D7A0)
  {
    v5 = *result[5] + *(result[5] + 1);
    if (*(v5 - 1))
    {
      result = memchr(",;:/?+=(*)", *(v5 - 1), 0xBuLL);
      if (result)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t add_num(uint64_t result)
{
  v1 = result;
  LOBYTE(result) = *qword_9D7E8;
  for (i = qword_9D7B0 + 1; ; ++i)
  {
    if (result != 30 && result != 173)
    {
      if (v1)
      {
        LOBYTE(result) = upper_digit(result);
      }

      else
      {
        if ((result - 58) >= 0xF6u)
        {
          v3 = &asc_26AD6[result - 48];
        }

        else
        {
          v3 = *(*(&stru_20.cmd + pLangGlb) + 8 * result);
        }

        LOBYTE(result) = *v3;
      }
    }

    *(i - 1) = result;
    v4 = qword_9D7E8;
    result = *++qword_9D7E8;
    if (*qword_9D7E8)
    {
      v5 = (result - 58) >= 0xF6u || result == 30;
      if (v5 || result == 173)
      {
        continue;
      }
    }

    break;
  }

  qword_9D7B0 = i;
  qword_9D7E8 = v4 + 2;
  return result;
}

uint64_t add_time(int a1)
{
  if (nLangIDGlb != 9)
  {
    result = add_num(0);
    if (!a1)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = add_num(1);
  v3 = qword_9D7B0;
  *qword_9D7B0 = 44;
  qword_9D7B0 = v3 + 1;
  if (a1)
  {
LABEL_5:
    result = upper_digit(0x30u);
    v4 = qword_9D7B0;
    *qword_9D7B0 = result;
    qword_9D7B0 = v4 + 1;
  }

  return result;
}

uint64_t is_newline(unsigned __int8 *a1)
{
  v1 = &a1[-qword_9D7F0];
  if (&a1[-qword_9D7F0] >= 1)
  {
    v4 = *a1;
    v2 = a1 - 1;
    v3 = v4;
    while (v3 >= 0x20u)
    {
      v3 = *v2;
      v5 = *v2;
      if (v5 > 0x20 && v5 != 45 && v5 != 124 && v5 != 160)
      {
        return 0;
      }

      --v2;
      if (v1-- <= 1)
      {
        return 1;
      }
    }
  }

  return 1;
}

BOOL is_date(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v1 - 48;
    for (i = a1 + 2; ; ++i)
    {
      v1 = *(i - 1);
      if (v1 != 173 && v1 != 30)
      {
        break;
      }
    }

    v2 = v3 + 10 * v2;
    a1 = i - 1;
  }

  while ((v1 - 58) >= 0xFFFFFFF6);
  if ((v2 - 32) < 0xFFFFFFE1)
  {
    return 0;
  }

  v6 = *i;
  if ((v6 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = v6 - 48;
    do
    {
      v10 = *++i;
      v6 = v10;
    }

    while (v10 == 173 || v6 == 30);
    v8 = v9 + 10 * v8;
  }

  while ((v6 - 58) >= 0xFFFFFFF6);
  return (v8 - 1) < 0xC;
}

uint64_t is_lower_num(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = -a1;
  v3 = a1;
  for (i = a1; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 != 30 && v5 != 173)
    {
      if (!v5)
      {
        return 0;
      }

      if ((v5 - 58) < 0xFFFFFFF6)
      {
        break;
      }
    }

    --v2;
  }

  if (v5 == 46 && (nLangIDGlb == 10 || v3[2] && memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v3[2], 0xDuLL)) || !memchr(".:/h", v5, 5uLL))
  {
    return 0;
  }

  for (j = 2; ; ++j)
  {
    v8 = v3[j];
    v9 = v8 == 173 || v8 == 30;
    if (!v9 && (v5 == 47 || v8 != v5))
    {
      if (!v3[j])
      {
        goto LABEL_24;
      }

      if ((v8 - 58) <= 0xFFFFFFF5)
      {
        break;
      }
    }
  }

  if ((v8 | 2) == 0x2F)
  {
    return 0;
  }

LABEL_24:
  v10 = qword_9D7F0;
  if (qword_9D7F0 < v1)
  {
    v11 = *(v1 - 1);
    if (v11 != v5)
    {
      v12 = 0;
      v13 = v5 != 47 && v11 == 45;
      v14 = !v13;
      if (v11 == 47 || !v14)
      {
        return v12;
      }
    }
  }

  if (v5 == 46)
  {
    v15 = v3[2];
    if (!v3[2])
    {
      if (is_newline(v1))
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v15 - 58 <= 0xFFFFFFF5)
    {
      if ((v15 < 0x21 || v15 == 160) && is_newline(v1))
      {
        goto LABEL_45;
      }

      if (memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v15, 0x15uLL))
      {
        v16 = v3[3];
        v17 = 1;
        if (v16 < 0x21 || v16 == 160)
        {
          goto LABEL_60;
        }
      }

LABEL_46:
      if (&v1[-v10] < 2 || (v18 = *(v1 - 1), v18 >= 0x21) && v18 != 160)
      {
LABEL_53:
        if ((v15 | 0x80) == 0xA0)
        {
          v19 = v3[3];
          if (!v3[3] || (v17 = 1, v19 != 45) && v19 <= 0xDE && v19 - 97 >= 0x1A)
          {
            create_buffer(1, v3 + 3, qword_9D7F0);
            v17 = no_exception(1, "\tJAN\x01FEB\x01M[A\xC4\x5DR\x01APR\x01MA[IY\x01JU[NL\x01AUG\x01SEP\x01O[CK]T\x01NOV\x01DE[CZ\x01SE[CK\x01MI\x01ST[DU\x01TAG\x01MO[NR\x01JAH\x01D[IO\x01FR\x01S[AO\x01ABE\x01NAC\x01TEIL\x01AUFL\x01ZEHN\x01HUNDERT\x01TAUSEND\x01MILLI\x01", byte_9D788) != 0;
          }

          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if ((*(v1 - 2) - 44) >= 0x10u || ((0xC005u >> (*(v1 - 2) - 44)) & 1) == 0)
      {
        create_buffer(0, v1 - 2, v10);
        v17 = 1;
        if (no_exception(1, "\t[MNRS]ED", byte_9D788))
        {
          goto LABEL_60;
        }

        v15 = v3[2];
        goto LABEL_53;
      }

LABEL_45:
      v17 = 1;
      goto LABEL_60;
    }
  }

LABEL_59:
  v17 = 0;
LABEL_60:
  v20 = 0;
  v21 = *i;
  if (i - v1 <= 2 && v21 == 46)
  {
    v20 = is_date(v1);
  }

  v56 = v20;
  v22 = 0;
  v23 = 1;
  v24 = 1;
  while (1)
  {
    v25 = v23;
    for (k = &(v1++)[v2]; ; ++k)
    {
      v27 = *v1;
      if ((v27 - 30) >= 2 && v27 != 173)
      {
        break;
      }

      ++v1;
    }

    v28 = v27 - 46;
    if ((v27 - 46) > 0x3A)
    {
      break;
    }

    if (((1 << v28) & 0xFFC) != 0)
    {
      if (!v23)
      {
        ++v24;
        v22 = 1;
      }

      ++v23;
    }

    else
    {
      if (((1 << v28) & 0x400000000001003) == 0)
      {
        break;
      }

      if (v23 == 0 && !v17)
      {
        return 0;
      }

      if (v21 == 47)
      {
        if (v27 == 104)
        {
          goto LABEL_95;
        }

        v29 = v1[1];
        if (!v1[1] || (v29 - 58) <= 0xFFFFFFF5 && (v29 != 173 && v29 != 30 || v1[2] - 58 < 0xFFFFFFF6))
        {
          return 0;
        }

        if (v27 != 47)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v29 = v1[1];
      }

      if (!v29)
      {
        goto LABEL_92;
      }

      v23 = 0;
      if ((v29 - 58) <= 0xFFFFFFF5)
      {
        if (v29 != 173 && v29 != 30)
        {
          goto LABEL_92;
        }

        v23 = 0;
        if (v1[2] - 58 < 0xFFFFFFF6)
        {
          goto LABEL_92;
        }
      }
    }
  }

  if ((v23 | v22) == 0 && !v17)
  {
    return 0;
  }

LABEL_92:
  if (v21 > 57)
  {
    if (v21 == 104 || v21 == 58)
    {
      v12 = 0;
      if (v27 != 32 || nLangIDGlb != 10 || v24 > 2)
      {
        return v12;
      }

      if (qword_9D7E8 > qword_9D7F0)
      {
        v12 = 0;
        if (v21 == 104 || *(qword_9D7E8 - 1) == v21)
        {
          return v12;
        }

        goto LABEL_156;
      }

      if (v21 == 104)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v21 == 46)
    {
      v34 = qword_9D7E8;
      if (&i[-qword_9D7E8] <= 2 && v22 && v24 == 2 && (timespec_follows(v1) || (v34 = qword_9D7E8, v36 = qword_9D7F0, qword_9D7E8 - qword_9D7F0 >= 3) && *(qword_9D7E8 - 1) == 32 && ((v37 = *(qword_9D7E8 - 2), (v37 & 0xFE) == 0x2C) || in(v37, 21)) && in(*(v34 - 3), 21) || v34 > v36 && *(v34 - 1) == 91 && *v1 == 93))
      {
        if (v25 == 1)
        {
          v35 = timespec_follows(v1);
        }

        else
        {
          v35 = 0;
        }

        add_time(v35);
      }

      else if (v17 || (v38 = stru_B8.segname[pLangGlb], v38 == 46) || v38 != *v1 && (&i[-v34] > 3 || v25 != 3))
      {
        v12 = 0;
        v39 = v24 <= 2 && nLangIDGlb == 9;
        if (v39 || v24 <= 1 && !v17)
        {
          return v12;
        }

        v22 = 0;
        v41 = k <= 8 && v25 == 4 && v24 == 3;
        v42 = v56;
        if (!v41)
        {
          v42 = 0;
        }

        v56 = v42;
        goto LABEL_156;
      }

      return 0;
    }

    if (v21 == 47)
    {
LABEL_95:
      if (v24)
      {
        if (nLangIDGlb != 10)
        {
          v22 = 0;
        }

        goto LABEL_156;
      }

      if (*qword_9D7E8 != 48 && v3[2] != 48 && (v27 < 0x21 || in(v27, 25) || v1[1] - 58 <= 0xFFFFFFF5))
      {
        if ((lFlags & 0x8000000) == 0)
        {
          if (qword_9D7F8)
          {
            v30 = qword_9D7E0;
            if (*(qword_9D7E0 + 24) == 2)
            {
              v31 = *(qword_9D7E0 + 8);
              if (v31 == 1 || v31 == 2 && byte_9D800)
              {
                v32 = *(qword_9D7E0 + 40);
                if (v32)
                {
                  if (*(v32 + 24) == 64)
                  {
                    v33 = *v32;
                    if (!strchr(*v32, 44) && !strchr(v33, 46))
                    {
                      if (byte_9D800 == 1)
                      {
                        **v30 = 31;
                      }

                      else
                      {
                        *(v30 + 24) = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_156;
      }

      return 0;
    }
  }

LABEL_156:
  v43 = qword_9D7B0;
  *qword_9D7B0 = 35;
  qword_9D7B0 = v43 + 1;
  if (nLangIDGlb == 10)
  {
    v44 = v22 == 0;
  }

  else
  {
    v44 = v22;
  }

  v46 = nLangIDGlb == 9 || v44 != 0;
  add_num(v46);
  if (v24 > 1)
  {
    while (1)
    {
      if (nLangIDGlb == 9)
      {
        if (*i != 46 && (v24 & 1) == 0)
        {
          v48 = v44 != 0;
LABEL_177:
          v50 = !v48;
          v44 = !v48;
          goto LABEL_178;
        }
      }

      else
      {
        v48 = v44 != 0;
        if (!v56 || !v44 || nLangIDGlb != 7)
        {
          goto LABEL_177;
        }
      }

      v49 = qword_9D7B0;
      *qword_9D7B0 = 35;
      qword_9D7B0 = v49 + 1;
      v50 = 1;
LABEL_178:
      add_num(v50);
      v51 = *qword_9D7E8;
      if (*qword_9D7E8)
      {
        if ((v51 - 58) > 0xFFFFFFF5 || (v51 != 173 ? (v52 = v51 == 30) : (v52 = 1), v52))
        {
          v53 = *i;
          if (*(qword_9D7E8 - 1) == v53)
          {
            if ((v53 != 47) | v24 & 1)
            {
              continue;
            }
          }
        }
      }

      v54 = qword_9D7E8 - 1;
      goto LABEL_189;
    }
  }

  v54 = qword_9D7E8;
LABEL_189:
  qword_9D7E8 = v54 - 1;
  return 1;
}

unsigned __int8 *matching_brace_pos(unsigned __int8 *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *a1;
  v4 = v3;
  v5 = v3;
  v6 = v3;
  v7 = v3;
  v8 = v3;
  v9 = v3;
  v10 = v3;
  v11 = v3;
  while (1)
  {
    if (v11 <= 90)
    {
      if (v11 > 40)
      {
        v12 = v1 - (v4 == 40);
        if (v5 == 60)
        {
          v19 = v1 + 1;
        }

        else
        {
          v19 = v1;
        }

        if (v11 == 62)
        {
          v7 = v6;
          v8 = v6;
          v9 = v6;
          v10 = v6;
          v1 -= v6 == 60;
        }

        if (v11 == 60)
        {
          v6 = v5;
          v7 = v5;
          v8 = v5;
          v9 = v5;
          v10 = v5;
          v1 = v19;
        }

        v17 = v11 == 41;
        if (v11 == 41)
        {
          v5 = v4;
          v6 = v4;
          v7 = v4;
          v8 = v4;
          v9 = v4;
          v10 = v4;
        }

        goto LABEL_41;
      }

      if (v11 == 40)
      {
        if (v4 == 40)
        {
          ++v1;
        }

        v5 = v4;
        v6 = v4;
        v7 = v4;
        v8 = v4;
        v9 = v4;
        v10 = v4;
      }

      else
      {
        v21 = 0;
        if ((v11 - 18) < 2 || v11 == 16)
        {
          return v21;
        }
      }
    }

    else
    {
      if (v11 > 92)
      {
        v12 = v1 - (v10 == 91);
        if (v7 == 123)
        {
          v13 = v1 + 1;
        }

        else
        {
          v13 = v1;
        }

        if (v11 == 125)
        {
          v14 = v8;
        }

        else
        {
          v14 = v9;
        }

        if (v11 == 125)
        {
          v15 = v8;
        }

        else
        {
          v15 = v10;
        }

        if (v11 == 125)
        {
          v1 -= v8 == 123;
        }

        if (v11 == 123)
        {
          v16 = v7;
        }

        else
        {
          v16 = v8;
        }

        if (v11 == 123)
        {
          v14 = v7;
          v15 = v7;
          v1 = v13;
        }

        v17 = v11 == 93;
        if (v11 != 93)
        {
          v8 = v16;
          v9 = v14;
          v10 = v15;
        }

LABEL_41:
        if (v17)
        {
          v1 = v12;
        }

        goto LABEL_43;
      }

      if (v11 == 91)
      {
        if (v9 == 91)
        {
          ++v1;
        }

        v10 = v9;
      }

      else if (v3 == 123)
      {
        v18 = a1[1];
        if (v18 == 125 || v18 == 123)
        {
          v4 = 123;
          v5 = 123;
          v6 = 123;
          v7 = 123;
          v8 = 123;
          v9 = 123;
          v10 = 123;
          ++a1;
        }

        else
        {
          v4 = 123;
          v5 = 123;
          v6 = 123;
          v7 = 123;
          v8 = 123;
          v9 = 123;
          v10 = 123;
        }
      }

      else
      {
        v4 = v3;
        v5 = v3;
        v6 = v3;
        v7 = v3;
        v8 = v3;
        v9 = v3;
        v10 = v3;
      }
    }

LABEL_43:
    if (v2 >= 2 && !v1)
    {
      return a1;
    }

    ++v2;
    v20 = *++a1;
    v11 = v20;
    if (!v20)
    {
      return 0;
    }
  }
}

uint64_t add_basis_char(uint64_t result, int a2)
{
  v2 = qword_9D7A8 == 1;
  if (qword_9D7A8 >= 1)
  {
    --qword_9D7A8;
    if (v2)
    {
      v3 = qword_9D7B0;
      *qword_9D7B0 = 30;
      qword_9D7B0 = v3 + 1;
    }
  }

  if ((result & 0x7F) == 0x20)
  {
    if (a2)
    {
      v4 = qword_9D7B0;
      v5 = 32;
LABEL_8:
      *v4 = v5;
      qword_9D7B0 = (v4 + 1);
      return result;
    }

    if (byte_9D800 == 1)
    {
      v4 = qword_9D7B0;
      if (*(qword_9D7B0 - 1) != 31)
      {
        v5 = 31;
        goto LABEL_8;
      }
    }
  }

  else if (result && ((result & 0xDF) - 91) >= 0xE6u)
  {
    v6 = qword_9D7B0;
    *qword_9D7B0 = result | 0x20;
    qword_9D7B0 = v6 + 1;
  }

  else
  {
    return map_char(result);
  }

  return result;
}

void *insert_list_element(void *result, const char *a2, uint64_t a3)
{
  if (!bMemoryOverflow)
  {
    v5 = result;
    result = malloc_type_malloc(0x38uLL, 0x1030040B94BF364uLL);
    if (result)
    {
      v6 = result;
      *result = a2;
      result[2] = 0;
      result = strlen(a2);
      v6[1] = result;
      v6[3] = a3;
      v6[4] = 0;
      v7 = v5[5];
      v6[5] = v7;
      v6[6] = v5;
      if (v7)
      {
        *(v7 + 48) = v6;
      }

      if (qword_9D7F8 == v5)
      {
        qword_9D7F8 = v6;
      }

      v5[5] = v6;
    }

    else
    {
      bMemoryOverflow = 1;
    }
  }

  return result;
}

void add_list_element()
{
  if (bMemoryOverflow)
  {
    return;
  }

  v0 = qword_9D7F8;
  v1 = malloc_type_malloc(0x38uLL, 0x1030040B94BF364uLL);
  if (!v0)
  {
    qword_9D7F8 = v1;
    if (v1)
    {
      v1[5] = 0;
      goto LABEL_7;
    }

LABEL_18:
    bMemoryOverflow = 1;
    return;
  }

  v2 = qword_9D7E0;
  *(qword_9D7E0 + 48) = v1;
  if (!v1)
  {
    goto LABEL_18;
  }

  v1[5] = v2;
  v1 = *(v2 + 48);
LABEL_7:
  qword_9D7E0 = v1;
  v1[6] = 0;
  v1[2] = 0;
  v3 = nLangIDGlb;
  v4 = nSubLangIDGlb == 2 && nLangIDGlb == 7;
  v5 = lFlags;
  v6 = lFlags & 0xFFFFFFFF67FFFFFFLL | 0x80000000;
  if (!v4)
  {
    v6 = lFlags & 0xFFFFFFFF77FFFFFFLL ^ 0x90000000;
  }

  v1[4] = v6;
  if ((byte_9D79C & 1) != 0 || byte_9D804)
  {
    if (v3 == 7 && (byte_9D798 & 1) == 0)
    {
      v7 = v6 | 0x7FFE;
LABEL_29:
      v1[4] = v7;
      return;
    }

LABEL_22:
    v7 = v6 | 0xFFFF;
    goto LABEL_29;
  }

  if (byte_9D808 == 1)
  {
    if (v3 != 7)
    {
      if (v3 != 12)
      {
        return;
      }

      goto LABEL_22;
    }

    v8 = 12664;
LABEL_28:
    v7 = v6 | v8;
    goto LABEL_29;
  }

  if (v3 == 7 && v5 != 12664 && (byte_9D810 & 1) == 0)
  {
    v8 = 10752;
    goto LABEL_28;
  }
}

uint64_t set_list_element(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = qword_9D7E0;
  if (qword_9D7E0)
  {
    *qword_9D7E0 = result;
    *(v3 + 8) = a2;
    *(v3 + 24) = a3;
  }

  return result;
}

void open_math_passage()
{
  if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
  {
    if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
    {
      goto LABEL_15;
    }

    if (nLangIDGlb == 7)
    {
      v2 = qword_9D7B0;
      *qword_9D7B0 = 11297;
      v3 = v2 + 2;
LABEL_19:
      qword_9D7B0 = v3;
    }
  }

  else if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
  {
    if (nSubLangIDGlb == 3)
    {
      v4 = qword_9D7B0;
      v5 = 13183;
      goto LABEL_18;
    }
  }

  else if (nSubLangIDGlb == 3)
  {
LABEL_15:
    v4 = qword_9D7B0;
    v5 = 8995;
LABEL_18:
    *v4 = v5;
    *(v4 + 2) = 32;
    v3 = v4 + 3;
    goto LABEL_19;
  }

  byte_9D804 = 1;
  byte_9D798 = 1;
}

uint64_t close_math_passage(uint64_t result)
{
  v1 = nLangIDGlb != 9 || nSubLangIDGlb == 2;
  if (v1 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
  {
    v2 = &byte_26721;
    if (nLangIDGlb == 7)
    {
      v2 = "'.";
    }

    if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
    {
      v4 = "#.";
    }

    else
    {
      v4 = v2;
    }

    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (nSubLangIDGlb == 3)
    {
      v4 = " \x7F5";
    }

    else
    {
      v4 = &byte_26721;
    }

    if (result)
    {
LABEL_16:
      v7 = *v4;
      v6 = (v4 + 1);
      v5 = v7;
      do
      {
        result = std_char(v5);
        v8 = *v6++;
        v5 = v8;
      }

      while (v8);
      goto LABEL_26;
    }
  }

  v9 = qword_9D7B0;
  v12 = *v4;
  v11 = (v4 + 1);
  v10 = v12;
  do
  {
    *v9++ = v10;
    v13 = *v11++;
    v10 = v13;
  }

  while (v13);
  qword_9D7B0 = v9;
LABEL_26:
  byte_9D798 = 0;
  return result;
}

uint64_t is_decimal_braille(unint64_t a1)
{
  while (a1 > qword_9D7D0)
  {
    v1 = *--a1;
    if (v1 == stru_B8.segname[pLangGlb + 1])
    {
      return 1;
    }
  }

  return 0;
}

BOOL is_upper_dash()
{
  if (dword_9D818 != 2)
  {
    return 0;
  }

  if (*qword_9D7D0 != 151)
  {
    return 0;
  }

  v0 = *(qword_9D7D0 + 1);
  if (!*(qword_9D7D0 + 1))
  {
    return 0;
  }

  if ((v0 - 192) >= 0x1F)
  {
    return (v0 - 65) < 0x1A;
  }

  return 1;
}

void add_seg(uint64_t a1)
{
  v1 = a1;
  v2 = &unk_9D000;
  if ((a1 & 0x1C) == 0 && qword_9D7C8 == a1)
  {
    return;
  }

  v3 = &unk_9D000;
  v4 = qword_9D7B0;
  v5 = &unk_9D000;
  v6 = &unk_9D000;
  v7 = &unk_9D000;
  v8 = qword_9D7B0 - qword_9D7D0;
  if (qword_9D7B0 == qword_9D7D0)
  {
    v13 = qword_9D7E0;
    goto LABEL_357;
  }

  *qword_9D7B0 = 0;
  qword_9D7B0 = (v4 + 1);
  add_list_element();
  v9 = qword_9D7C8;
  if (qword_9D7C8 == 2048)
  {
    if ((lFlags & 0x4000000) != 0)
    {
      v10 = v8;
      goto LABEL_354;
    }

    v10 = v8;
    if (dword_9D830)
    {
      goto LABEL_354;
    }

    v14 = 0;
    v9 = 2048;
    v15 = qword_9D7E8;
    while (1)
    {
      do
      {
        v16 = *v15++;
      }

      while (v16 == 173 || v16 == 30);
      if (v16 != asc_2671B[v14])
      {
        break;
      }

      if (++v14 == 2)
      {
        goto LABEL_354;
      }
    }

    v21 = *qword_9D7E8;
    v9 = 2048;
    if (v21 >= 0x21 && v21 != 160)
    {
      v22 = qword_9D7B0;
      *(qword_9D7B0 - 1) = 11815;
      v10 = v8 + 2;
      *(v22 + 1) = 0;
      qword_9D7B0 = v22 + 2;
      v9 = 2048;
    }

LABEL_354:
    v13 = qword_9D7E0;
    if (!qword_9D7E0)
    {
      goto LABEL_356;
    }

LABEL_355:
    *v13 = v5[250];
    v13[1] = v10;
    v13[3] = v9;
    goto LABEL_356;
  }

  if (qword_9D7C8 == 4096)
  {
    v13 = qword_9D7E0;
    qword_9D828 = qword_9D7E0;
    v9 = 4096;
    v10 = v8;
    if (!qword_9D7E0)
    {
      goto LABEL_356;
    }

    goto LABEL_355;
  }

  v10 = v8;
  if (qword_9D7C8 != 0x2000)
  {
    goto LABEL_354;
  }

  if (nLangIDGlb == 9 && nSubLangIDGlb == 2)
  {
    if (byte_9D810 != 1 || (lFlags & 0x40000) == 0)
    {
      if (v8 != dword_9D818)
      {
        goto LABEL_51;
      }

      v11 = qword_9D7D8 == 64 || v1 == 64;
      if (!v11)
      {
        goto LABEL_51;
      }

      goto LABEL_17;
    }

    v23 = qword_9D7E0;
    if (qword_9D7E0)
    {
      *qword_9D7E0 = *(&stru_20.maxprot + pLangGlb);
      *(v23 + 8) = 1;
      *(v23 + 24) = 2;
    }

    add_list_element();
    goto LABEL_49;
  }

  if (nLangIDGlb == 12 && dword_9D818 == 1)
  {
    v18 = *qword_9D820;
    if (*qword_9D820)
    {
      if (((v18 - 223) > 0xFFFFFFE0 || (v18 - 91) >= 0xFFFFFFE6) && *(qword_9D820 - 1) == 32)
      {
        v19 = *(qword_9D820 - 2);
        if (!in(*(qword_9D820 - 2), 9))
        {
          v10 = v8;
          if (!v19)
          {
            goto LABEL_51;
          }

          v20 = memchr(",;:", v19, 4uLL);
          v10 = v8;
          if (!v20)
          {
            goto LABEL_51;
          }

LABEL_17:
          v12 = qword_9D7E0;
          if (!qword_9D7E0)
          {
            goto LABEL_51;
          }

LABEL_50:
          *(v12 + 32) |= 0xFFFFuLL;
          goto LABEL_51;
        }

LABEL_49:
        v12 = qword_9D7E0;
        v10 = v8;
        if (!qword_9D7E0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (nLangIDGlb != 10)
  {
    if ((lFlags & 0x80000) != 0)
    {
      if (nLangIDGlb != 7)
      {
        v31 = 0;
        goto LABEL_79;
      }
    }

    else if (nLangIDGlb != 7 || (byte_9D798 & 1) == 0)
    {
      goto LABEL_91;
    }

    if (*qword_9D7D0 == **(&stru_20.filesize + pLangGlb))
    {
      goto LABEL_91;
    }

    v31 = 1;
LABEL_79:
    v32 = *qword_9D820;
    if (!*qword_9D820 || (v32 - 223) <= 0xFFFFFFE0 && (v32 - 91) < 0xFFFFFFE6 || (v10 < 2 || dword_9D818 != 1 || dword_9D7A0) && ((lFlags & 0x100000) == 0 || (v31 & byte_9D798 & 1) != 0))
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

  v24 = *qword_9D820;
  if (!*qword_9D820)
  {
    goto LABEL_91;
  }

  v25 = v24 - 192;
  v26 = v24 - 65;
  v27 = v25 >= 0x1F && v26 >= 0x1A;
  v28 = !v27;
  if (v28 == 1 && dword_9D818 == 1)
  {
    if ((lFlags & 0x80000) == 0)
    {
      goto LABEL_91;
    }

LABEL_87:
    v33 = qword_9D7E0;
    if (qword_9D7E0)
    {
      *qword_9D7E0 = *(&stru_20.filesize + pLangGlb);
      *(v33 + 8) = 1;
      *(v33 + 24) = 2;
    }

    goto LABEL_89;
  }

  if (dword_9D818 <= 1)
  {
    v28 = 0;
  }

  if (v28 == 1 && (lFlags & 0x100000) == 0)
  {
    v30 = qword_9D7E0;
    if (qword_9D7E0)
    {
      *qword_9D7E0 = *&stru_68.sectname[pLangGlb];
      *(v30 + 8) = 2;
      *(v30 + 24) = 2;
    }

LABEL_89:
    add_list_element();
    v10 = v8;
    if (qword_9D7E0)
    {
      *(qword_9D7E0 + 32) = *(*(qword_9D7E0 + 40) + 32);
    }
  }

LABEL_91:
  v199 = v1;
  if (v10 < 2 || !exceptions[0] || dword_9D818 > 1 || !qword_9D7E0 || (~*(qword_9D7E0 + 32) & 0x7FFELL) == 0)
  {
LABEL_135:
    v61 = nLangIDGlb;
    if (nLangIDGlb != 7)
    {
      goto LABEL_143;
    }

    if ((v62 = lFlags, v63 = byte_9D798, (lFlags & 0x100000) != 0) && !byte_9D798 || (v64 = v10, v65 = nLangIDGlb, v66 = is_upper_dash(), v61 = v65, v10 = v64, v66))
    {
      if (((v63 | (v62 >> 19)) & 1) == 0)
      {
        goto LABEL_143;
      }

      v67 = v10;
      v68 = v61;
      v69 = is_upper_dash();
      v61 = v68;
      v10 = v67;
      if (!v69)
      {
        goto LABEL_143;
      }
    }

    v70 = dword_9D818;
    if (dword_9D818 <= 1 && v10 != dword_9D818)
    {
LABEL_143:
      v13 = qword_9D7E0;
      v2 = &unk_9D000;
      v5 = &unk_9D000;
      if (qword_9D7E0)
      {
        v71 = *(&dword_8 + pLangGlb);
        if ((v71 & 0x80000000) != 0)
        {
          goto LABEL_231;
        }

        v72 = 0;
        v191 = pLangGlb;
        v73 = *pLangGlb;
        v74 = qword_9D7D0;
        v189 = qword_9D7D8 & 0xD0;
        v201 = qword_9D7D8;
        v193 = qword_9D7D8 & 0xC0;
        v75 = qword_9D7E8;
        v76 = "US";
        while (1)
        {
          if (v73[2] == v10)
          {
            v77 = *v73;
            v78 = **v73;
            if (*v74 == v78)
            {
              v79 = v73[4];
              if ((v13[4] & v79 & 0x9000FFFF) == 0)
              {
                v80 = v74;
                v81 = *v73;
                do
                {
                  do
                  {
                    v82 = *v80++;
                  }

                  while (v82 == 173 || v82 == 30);
                  if (v82 != v78)
                  {
                    goto LABEL_149;
                  }

                  v84 = *++v81;
                  LOBYTE(v78) = v84;
                }

                while (v84);
                if (v61 == 12)
                {
                  v85 = *v73[1];
                  if (v85 != 46)
                  {
                    goto LABEL_162;
                  }
                }

                v85 = *v73[1];
                if (v73[3] > 1)
                {
                  goto LABEL_162;
                }

                if (!*v73[1])
                {
                  goto LABEL_173;
                }

                v86 = v75;
                v195 = v61;
                v87 = v10;
                if (!memchr(".-'", v85, 4uLL))
                {
                  v10 = v87;
                  v61 = v195;
                  v75 = v86;
                  v76 = "US";
LABEL_162:
                  if (v85 == 40)
                  {
                    if (*v75 == 39)
                    {
                      goto LABEL_149;
                    }

                    v85 = 40;
                  }

                  else if (v199 == 8 && v85 == 35)
                  {
                    goto LABEL_149;
                  }

LABEL_173:
                  if ((v79 & 0x8001) != 1 || *v75 != 46)
                  {
                    if ((v79 & 0x800000) == 0 || v201 <= 2 && ((v105 = v13[5]) == 0 || **v105 == *v191[10] || (v106 = *(v105 + 5)) == 0 || *(v106 + 3) != 0x400000) && ((v107 = *v75, v107 < 0x21) || v107 == 160))
                    {
                      v90 = 0;
                      while (1)
                      {
                        do
                        {
                          v91 = *v77++;
                        }

                        while (v91 == 173 || v91 == 30);
                        if (v91 != v76[v90])
                        {
                          break;
                        }

                        if (++v90 == 2)
                        {
                          if (*(v75 - 3) == 36 || *v75 == 36)
                          {
                            goto LABEL_149;
                          }

                          break;
                        }
                      }

                      if ((v79 & 0x400000) == 0)
                      {
                        goto LABEL_428;
                      }

                      v108 = *v75;
                      if (!*v75)
                      {
                        goto LABEL_429;
                      }

                      v109 = v10;
                      v110 = v61;
                      v111 = v75;
                      v196 = *v75;
                      v112 = memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v196, 0x15uLL);
                      v108 = v196;
                      v76 = "US";
                      v75 = v111;
                      v61 = v110;
                      v10 = v109;
                      if (!v112)
                      {
LABEL_429:
                        v113 = v13[5];
                        if (!v113)
                        {
                          goto LABEL_430;
                        }

                        if (*(v113 + 3) < 3uLL)
                        {
                          goto LABEL_430;
                        }

                        v114 = *v113;
                        if (!*v114)
                        {
                          goto LABEL_430;
                        }

                        v115 = v10;
                        v116 = v61;
                        v117 = v75;
                        v197 = v108;
                        v118 = memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *v114, 0x15uLL);
                        v108 = v197;
                        v76 = "US";
                        v75 = v117;
                        v61 = v116;
                        v10 = v115;
                        if (!v118)
                        {
LABEL_430:
                          if (!v108 || v108 != 9 && v108 != 160 && v108 != 32)
                          {
                            goto LABEL_428;
                          }

                          v119 = v75[1];
                          if (!v75[1])
                          {
                            goto LABEL_431;
                          }

                          v198 = v10;
                          v120 = v61;
                          v121 = v75;
                          v122 = memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v75[1], 0x15uLL);
                          v76 = "US";
                          v75 = v121;
                          v61 = v120;
                          v10 = v198;
                          if (!v122)
                          {
LABEL_431:
                            v123 = v119;
                            v124 = v10;
                            v125 = v61;
                            v126 = v75;
                            v127 = in(v123, 25);
                            v76 = "US";
                            v75 = v126;
                            v61 = v125;
                            v10 = v124;
                            if (!v127)
                            {
                              v128 = is_url(v126 + 1);
                              v76 = "US";
                              v75 = v126;
                              v61 = v125;
                              v10 = v124;
                              if (!v128)
                              {
LABEL_428:
                                if (!v193)
                                {
                                  goto LABEL_189;
                                }

                                v93 = v85;
                                v94 = v10;
                                v95 = v61;
                                v96 = v75;
                                v97 = v76;
                                v98 = in(v93, 5);
                                v76 = v97;
                                v75 = v96;
                                v61 = v95;
                                v10 = v94;
                                if (!v98)
                                {
LABEL_189:
                                  if (v61 == 9 && (v79 & 0x40) != 0)
                                  {
                                    v99 = *v75;
                                    if (v99 == 34)
                                    {
                                      v132 = v10;
                                      v133 = v61;
                                      v134 = v75;
                                      v135 = v76;
                                      v136 = in(v75[1], 9);
                                      v76 = v135;
                                      v75 = v134;
                                      v61 = v133;
                                      v10 = v132;
                                      if (v136)
                                      {
                                        goto LABEL_149;
                                      }
                                    }

                                    else if (v99 == 39)
                                    {
                                      v100 = v10;
                                      v101 = v61;
                                      v102 = v75;
                                      v103 = v76;
                                      v104 = memchr("MNmn", v75[1], 5uLL);
                                      v76 = v103;
                                      v75 = v102;
                                      v61 = v101;
                                      v10 = v100;
                                      if (v104)
                                      {
                                        goto LABEL_149;
                                      }
                                    }

                                    if (v201 == 32 && **v13[5] == 46)
                                    {
                                      goto LABEL_149;
                                    }
                                  }

                                  if (qword_9D7A8 < 1)
                                  {
                                    v137 = &unk_9D000;
                                  }

                                  else
                                  {
                                    v137 = &unk_9D000;
                                    if (qword_9D7A8 <= v10)
                                    {
                                      qword_9D7A8 = 0;
                                      *v13 = "\x1E";
                                      v13[1] = (&dword_0 + 1);
                                      v13[3] = (&dword_0 + 1);
                                      v138 = v10;
                                      add_list_element();
                                      v10 = v138;
                                      v193 = qword_9D7D8 & 0xC0;
                                    }
                                  }

                                  if (v193 && *v73[1] - 107 >= 0xFFFFFFF6 && v73[2] >= 2)
                                  {
                                    v174 = v10;
                                    v175 = v137[252];
                                    if (v175)
                                    {
                                      *v175 = "-";
                                      v175[1] = 1;
                                      v175[3] = 4;
                                    }

                                    add_list_element();
                                    v10 = v174;
                                  }

                                  v176 = v73[3];
                                  v13 = v137[252];
                                  if (v13)
                                  {
                                    *v13 = v73[1];
                                    v13[1] = v176;
                                    v13[3] = &stru_20;
                                  }

                                  v177 = v73[4];
                                  if ((v177 & 0x400000) == 0)
                                  {
                                    if ((v177 & 0x200000) != 0)
                                    {
                                      v178 = v13[5];
                                      if (!v178 || (v179 = **v178, v179 != 45) && v179 != 151)
                                      {
                                        v180 = qword_9D7E8;
                                        if (*qword_9D7E8 != 45)
                                        {
                                          v181 = 0;
                                          while (1)
                                          {
                                            do
                                            {
                                              v182 = *v180++;
                                            }

                                            while (v182 == 173 || v182 == 30);
                                            if (v182 != asc_1ED79[v181])
                                            {
                                              break;
                                            }

                                            if (++v181 == 3)
                                            {
                                              goto LABEL_418;
                                            }
                                          }

                                          v13[3] = 0x200000;
                                          if (v178)
                                          {
                                            if (*(v178 + 3) == 2)
                                            {
                                              v186 = *(v178 + 5);
                                              if (v186)
                                              {
                                                if (*(v186 + 3) == 0x200000)
                                                {
                                                  *(v178 + 3) = 0;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    goto LABEL_418;
                                  }

                                  v184 = v10;
                                  v13[3] = 0x400000;
                                  v185 = *qword_9D7E8;
                                  if ((v185 == 9 || v185 == 160 || v185 == 32) && in(*(qword_9D7E8 + 1), 11))
                                  {
                                    v1 = 0;
                                    v3 = &unk_9D000;
                                  }

                                  else
                                  {
                                    if (v176 == &dword_0 + 1)
                                    {
                                      v3 = &unk_9D000;
                                      v1 = v199;
                                      v2 = &unk_9D000;
                                      v5 = &unk_9D000;
                                      v10 = v184;
                                      goto LABEL_231;
                                    }

LABEL_418:
                                    v3 = &unk_9D000;
                                    v1 = v199;
                                  }

                                  v2 = &unk_9D000;
                                  v6 = &unk_9D000;
                                  if (nLangIDGlb == 7 && (v13[4] & 0x40) != 0 && **v13 == **(&stru_20.maxprot + pLangGlb))
                                  {
                                    ++*v13;
                                  }

                                  if (v73[2] == &dword_0 + 1)
                                  {
                                    v13[4] = (v13[4] | 0x8000000);
                                  }

                                  v4 = qword_9D7D0;
                                  v3[246] = qword_9D7D0;
                                  v7 = &unk_9D000;
                                  goto LABEL_357;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_149;
                }

                if (*v86)
                {
                  __c = *v86;
                  v88 = memchr(".-'", __c, 4uLL);
                  v10 = v87;
                  v61 = v195;
                  v75 = v86;
                  v76 = "US";
                  if (v88)
                  {
                    goto LABEL_149;
                  }

                  v89 = in(__c, 25);
                  v76 = "US";
                  v75 = v86;
                  v61 = v195;
                  v10 = v87;
                  if ((__c - 58) > 0xF5u)
                  {
                    goto LABEL_149;
                  }
                }

                else
                {
                  v89 = in(0, 25);
                  v10 = v87;
                  v61 = v195;
                  v75 = v86;
                  v76 = "US";
                }

                if (!v89)
                {
                  v129 = v13[5];
                  if (!v129 || (v130 = *v129, !*v130) || (v131 = memchr(".-'", *v130, 4uLL), v76 = "US", v75 = v86, v61 = v195, v10 = v87, !v131))
                  {
                    if (!v189)
                    {
                      goto LABEL_162;
                    }
                  }
                }
              }
            }
          }

LABEL_149:
          v73 += 5;
          v11 = v72++ == v71;
          if (v11)
          {
            v3 = &unk_9D000;
            v1 = v199;
            v2 = &unk_9D000;
            v5 = &unk_9D000;
LABEL_231:
            if (v10 >= 2)
            {
              v139 = *v5[250];
              v7 = &unk_9D000;
              v6 = &unk_9D000;
              if (*v5[250])
              {
                v140 = 1163264;
                v141 = v139 - 192;
                v27 = __CFADD__(v139 - 91, 26);
                v9 = 114688;
                if (v27)
                {
                  v9 = 1163264;
                }

                v142 = v141 >= 0x1F;
LABEL_237:
                if (!v142)
                {
                  v9 = v140;
                }
              }

              else
              {
                v9 = 114688;
              }

              goto LABEL_354;
            }

            v13[4] = (v13[4] | 0x8000000);
            v143 = v5[250];
            v144 = *v143;
            if ((v144 - 91) >= 0xFFFFFFE6)
            {
              LOBYTE(v144) = v144 | 0x20;
              *v143 = v144;
            }

            switch(nLangIDGlb)
            {
              case 12:
                v145 = v10;
                v161 = qword_9D7E8;
                v162 = *qword_9D7E8;
                if (memchr(".!?", *qword_9D7E8, 4uLL) && *(v161 + 1) <= 0x20u && *(v161 - 2) < 0x21u)
                {
                  goto LABEL_290;
                }

                v163 = *(v161 - 2);
                if (*(v161 - 2))
                {
                  if (memchr("({[<\x91", *(v161 - 2), 6uLL) || memchr(")}]>\x9B", v163, 6uLL) || in(v163, 25) && (v163 != 45 || v162 == 45) || memchr(".'\x82\x91\x92", v163, 7uLL))
                  {
                    goto LABEL_350;
                  }
                }

                else if (in(0, 25))
                {
                  goto LABEL_350;
                }

                if (v162)
                {
                  if (!memchr("({[<\x91", v162, 6uLL) && !memchr(")}]>\x9B", v162, 6uLL) && (!in(v162, 25) || v162 == 45 && v163 != 45) && !memchr(".'\x82\x91\x92", v162, 7uLL))
                  {
                    goto LABEL_247;
                  }
                }

                else if (!in(0, 25))
                {
                  goto LABEL_247;
                }

LABEL_350:
                v9 = 32;
                if ((v144 & 0x80u) != 0)
                {
                  v9 = 4;
                }

                break;
              case 9:
                v145 = v10;
                v153 = qword_9D7E8;
                v154 = *(qword_9D7E8 - 2);
                if (*(qword_9D7E8 - 2))
                {
                  v155 = memchr("({[<\x91", *(qword_9D7E8 - 2), 6uLL);
                  v156 = nSubLangIDGlb;
                  v157 = nSubLangIDGlb != 2;
                  if (v155)
                  {
                    v158 = nSubLangIDGlb == 2;
                  }

                  else
                  {
                    v158 = 1;
                  }

                  if (!v158)
                  {
                    v171 = *v153;
                    if (v171 != 9 && v171 != 160 && v171 != 32)
                    {
                      goto LABEL_350;
                    }
                  }

                  if (memchr(")}]>\x9B", v154, 6uLL))
                  {
                    if (v156 != 2)
                    {
                      v159 = *v153;
                      if (v159 != 9 && v159 != 160 && v159 != 32)
                      {
                        goto LABEL_350;
                      }
                    }
                  }

                  v160 = in(v154, 25);
                  if (v154 != 45 && v160)
                  {
                    goto LABEL_350;
                  }

                  if (memchr("_#$%&\x80\x83\x86\x87\x89\x99\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAC\xAE\xAF\xB0\xB1\xB2\xB3\xB5\xB6\xB9\xBA\xBC\xBD\xBE\xC5.:/h", v154, 0x24uLL) || memchr(".'\x82\x91\x92", v154, 7uLL))
                  {
                    goto LABEL_350;
                  }
                }

                else
                {
                  v157 = nSubLangIDGlb != 2;
                  if (in(0, 25))
                  {
                    goto LABEL_350;
                  }
                }

                v168 = *v153;
                if (*v153)
                {
                  if (memchr("({[<\x91", *v153, 6uLL) != 0 && v157 && (!v154 || v154 != 9 && v154 != 160 && v154 != 32))
                  {
                    goto LABEL_350;
                  }

                  if (memchr(")}]>\x9B", v168, 6uLL) != 0 && v157 && (!v154 || v154 != 9 && v154 != 160 && v154 != 32))
                  {
                    goto LABEL_350;
                  }

                  v169 = in(v168, 25);
                  if (v168 != 45 && v169)
                  {
                    goto LABEL_350;
                  }

                  if (memchr("_#$%&\x80\x83\x86\x87\x89\x99\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAC\xAE\xAF\xB0\xB1\xB2\xB3\xB5\xB6\xB9\xBA\xBC\xBD\xBE\xC5.:/h", v168, 0x24uLL))
                  {
                    goto LABEL_350;
                  }

                  if (v168 == 34)
                  {
                    goto LABEL_350;
                  }

                  if (v168 == 46)
                  {
                    v170 = v153[1];
                    if (v170 >= 0x21 && v170 != 45)
                    {
                      goto LABEL_350;
                    }
                  }
                }

                else if (in(0, 25))
                {
                  goto LABEL_350;
                }

                if ((v13[4] & 0x40) != 0)
                {
                  goto LABEL_350;
                }

                v9 = 4;
                break;
              case 7:
                v145 = v10;
                if (*qword_9D7E8 != 39)
                {
LABEL_247:
                  if ((v13[4] & 0x40) != 0)
                  {
                    goto LABEL_350;
                  }

LABEL_290:
                  v9 = 4;
                  v3 = &unk_9D000;
                  v7 = &unk_9D000;
                  v6 = &unk_9D000;
LABEL_353:
                  v10 = v145;
                  goto LABEL_354;
                }

                goto LABEL_350;
              default:
                v9 = 4;
                v3 = &unk_9D000;
                v7 = &unk_9D000;
                v6 = &unk_9D000;
                goto LABEL_354;
            }

            v3 = &unk_9D000;
            v7 = &unk_9D000;
            v6 = &unk_9D000;
            v5 = &unk_9D000;
            goto LABEL_353;
          }
        }
      }

      v7 = &unk_9D000;
LABEL_356:
      v4 = v3[246];
      v5[250] = v4;
      goto LABEL_357;
    }

    v5 = &unk_9D000;
    v146 = qword_9D7D0;
    v2 = &unk_9D000;
    if (v10 >= 1)
    {
      v147 = 0;
      v148 = v10 - 1;
      while (1)
      {
        --v147;
        v149 = *(qword_9D7E8 + v147);
        if (v149 != 173 && v149 != 30)
        {
          v146[v148] = v149;
          v152 = v148-- <= 0;
          if (v152)
          {
            break;
          }
        }
      }
    }

    v151 = *v146;
    if (v151 == 45)
    {
      v151 = 151;
      *v146 = -105;
    }

    v152 = v146[v10 - 1] != 45 || v10 < 3;
    if (!v152)
    {
      dword_9D818 = v70 + 1;
      v70 = v70 + 1;
    }

    v7 = &unk_9D000;
    if (v10 == v70)
    {
      if (v151)
      {
        v142 = v151 - 123 >= 0xFFFFFFE6 || v151 >= 0xDF;
        v9 = 512;
        v140 = 1024;
        goto LABEL_237;
      }

      v9 = 1024;
    }

    else
    {
      v9 = 512;
    }

    goto LABEL_354;
  }

  v34 = 0;
  v35 = qword_9D7D0;
  v36 = qword_9D7A8;
  v200 = qword_9D7B0;
  v37 = 1;
  v38 = qword_9D7D0;
  v39 = v10;
  v188 = qword_9D7D0;
  while (1)
  {
    v40 = &exceptions[160 * v34];
    v41 = *(v40 + 19);
    if ((v41 & 0x1C000) != 0)
    {
      v42 = *(v40 + 17);
    }

    else
    {
      if (v38 != v35)
      {
        goto LABEL_131;
      }

      v42 = v10;
      if (*(v40 + 17) != v10)
      {
        goto LABEL_131;
      }
    }

    if (v42 > v39)
    {
      goto LABEL_131;
    }

    v43 = *v40;
    v44 = &exceptions[160 * v34 + 1];
    v45 = v42;
    v46 = v38;
    do
    {
      if (*v46 != v43)
      {
        goto LABEL_131;
      }

      ++v46;
      v47 = *v44++;
      v43 = v47;
      ++v45;
    }

    while (v47);
    if (v42 == v10)
    {
      break;
    }

    if ((v41 & 0x4000) != 0 && v38 == v35)
    {
LABEL_116:
      v48 = &v38[-v35];
      if (v36 <= &v38[-v35])
      {
        v192 = v36;
      }

      else
      {
        if (v36 <= &v48[v42])
        {
          v49 = (v48 + 1);
        }

        else
        {
          v49 = v36 - v42 + *(v40 + 18);
        }

        v192 = v49;
        v6[245] = v49;
      }

      v50 = *(v40 + 18);
      v51 = v200;
      v52 = v50;
      v194 = v10;
      v190 = v10;
      v53 = v50 - v42;
      if (v50 > v42)
      {
        v190 = v53 + v10;
        v51 = v200 + v53;
        qword_9D7B0 = v200 + v53;
        v54 = strlen(v46);
        memmove(&v38[v50], v46, v54 + 1);
        v52 = *(v40 + 18);
      }

      memcpy(v38, v40 + 65, v52);
      v55 = *(v40 + 18);
      v39 -= *(v40 + 17);
      v38 += v55;
      if (v46 <= v38)
      {
        v37 = 0;
        v200 = v51;
        v10 = v190;
        v3 = &unk_9D000;
      }

      else
      {
        if (v42 <= v50)
        {
          v56 = v50;
        }

        else
        {
          v56 = v42;
        }

        v57 = v55 + v56;
        v58 = v194 + v57 - v45;
        v3 = &unk_9D000;
        v200 = v200 + v57 - v45;
        qword_9D7B0 = v200;
        v59 = strlen(v46);
        memmove(v38, v46, v59 + 1);
        v10 = v58;
        v37 = 0;
      }

      v6 = &unk_9D000;
      v35 = v188;
      v36 = v192;
      goto LABEL_131;
    }

    if (*v46)
    {
      if ((v41 & 0x8000) != 0 && v38 > v35)
      {
        goto LABEL_116;
      }
    }

    else if ((v41 & 0x10000) != 0)
    {
      goto LABEL_116;
    }

LABEL_131:
    if (++v34 == 100)
    {
      v34 = 0;
      v11 = v37 == 0;
      v60 = v37 != 0;
      if (!v11)
      {
        ++v38;
      }

      v39 -= v60;
      v37 = 1;
      if (v39 <= 1)
      {
        goto LABEL_135;
      }
    }
  }

  if ((v41 & 0x2000) == 0)
  {
    goto LABEL_131;
  }

  v164 = v6[245];
  v13 = qword_9D7E0;
  if (v164 >= 1 && v164 <= v10)
  {
    v6[245] = 0;
    v2 = &unk_9D000;
    v7 = &unk_9D000;
    v166 = &unk_9D000;
    if (v13)
    {
      *v13 = "\x1E";
      v13[1] = (&dword_0 + 1);
      v13[3] = (&dword_0 + 1);
    }

    add_list_element();
    v13 = qword_9D7E0;
  }

  else
  {
    v2 = &unk_9D000;
    v7 = &unk_9D000;
    v166 = &unk_9D000;
  }

  if (v13)
  {
    v167 = *(v40 + 18);
    *v13 = (v40 + 65);
    v13[1] = v167;
    v13[3] = &stru_20;
  }

  v4 = v166[250];
  v3[246] = v4;
LABEL_357:
  v172 = v6[245];
  if (v172 >= 1 && v13 != 0)
  {
    v13[2] = v172;
    v6[245] = 0;
  }

  v7[251] = v2[249];
  v2[249] = v1;
  if (v1 > 255)
  {
    if (v1 == 256)
    {
      if (nLangIDGlb == 7)
      {
        *v4 = **(&stru_20.maxprot + pLangGlb);
        v3[246] = v4 + 1;
      }

      return;
    }

    if (v1 != 0x2000)
    {
      return;
    }

LABEL_368:
    if (is_url(qword_9D7E8))
    {
      if ((lFlags & 0x200000) == 0)
      {
        v2[249] = 2048;
        *v4 = 9255;
        v3[246] = v4 + 2;
LABEL_381:
        dword_9D818 = 0;
        byte_9D810 = 0;
        qword_9D820 = qword_9D7E8;
        return;
      }

      if (nLangIDGlb == 12)
      {
        byte_9D79C = 1;
      }
    }

    if (v1 == 64)
    {
      goto LABEL_376;
    }

    goto LABEL_381;
  }

  if (v1 == 64)
  {
    goto LABEL_368;
  }

  if (v1 != 128)
  {
    return;
  }

LABEL_376:
  if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
  {
    byte_9D79C = 1;
  }
}

void add_whitespace()
{
  for (i = qword_9D7B0 + 1; ; ++i)
  {
    v1 = (qword_9D7E8 + 1);
    v2 = *(qword_9D7E8 + 1);
    if (v2 != 9 && v2 != 160 && v2 != 32)
    {
      break;
    }

    ++qword_9D7E8;
    *(i - 1) = *v1;
    qword_9D7B0 = i;
  }

  if (byte_9D800 == 1)
  {
    *(i - 1) = 31;
    qword_9D7B0 = i;
  }

  byte_9D79C = 0;
}

void skip_whitespace(int a1)
{
  v1 = qword_9D7E8;
  if (*qword_9D7E8)
  {
    v2 = *(qword_9D7E8 + 1);
    if (v2 == 30)
    {
      ++qword_9D7E8;
      qword_9D7A8 = qword_9D7B0 - qword_9D7D0 + 1;
      v2 = *(v1 + 2);
      ++v1;
    }

    if (v2 == 32)
    {
      if (!a1 && (lFlags & 0x8000000) != 0)
      {
        return;
      }
    }

    else if (!a1 || v2 != 160)
    {
      return;
    }

    v3 = *(v1 + 2);
    if (v3 != 9 && v3 != 32 && v3 != 160)
    {
      qword_9D7E8 = v1 + 1;
      if (byte_9D800 == 1)
      {
        add_seg(2);
        v4 = qword_9D7B0;
        *qword_9D7B0 = 31;
        qword_9D7B0 = v4 + 1;
      }
    }
  }
}

void remove_whitespace(int a1)
{
  if (qword_9D7C8 == 2 && (a1 || (lFlags & 0x8000000) == 0))
  {
    if (qword_9D7B0 - qword_9D7D0 == 1 || (qword_9D7B0 - qword_9D7D0 == 2 ? (v1 = byte_9D800 == 0) : (v1 = 1), !v1))
    {
      if (*qword_9D7D0 == 32)
      {
        qword_9D7C8 = 0;
        if (byte_9D800 == 1)
        {
          add_seg(2);
          v2 = qword_9D7B0;
          *qword_9D7B0 = 31;
          qword_9D7B0 = v2 + 1;
        }
      }
    }
  }
}

uint64_t no_abbrev()
{
  v0 = nSubLangIDGlb == 3 && nLangIDGlb == 9;
  result = 1;
  if (!v0)
  {
    v2 = qword_9D7C8;
    if (qword_9D7C8 != 0x2000)
    {
      v3 = qword_9D7E8;
      if (nLangIDGlb == 7)
      {
        v4 = 0;
        v5 = qword_9D7E8;
        while (1)
        {
          do
          {
            v6 = *v5++;
          }

          while (v6 == 173 || v6 == 30);
          if (v6 != aSo_4[v4])
          {
            break;
          }

          if (++v4 == 3)
          {
            if (*(qword_9D7E8 + 3) < 0x41u)
            {
              v8 = 1;
              v9 = 2;
              goto LABEL_34;
            }

            break;
          }
        }

        v10 = 0;
        v11 = qword_9D7E8;
        while (1)
        {
          do
          {
            v12 = *v11++;
          }

          while (v12 == 173 || v12 == 30);
          if (v12 != aGen_0[v10])
          {
            break;
          }

          if (++v10 == 4)
          {
            v14 = *(qword_9D7E8 + 4);
            if (*(qword_9D7E8 + 4))
            {
              v8 = 1;
              v9 = 3;
              if ((v14 - 223) > 0xFFFFFFE0)
              {
                goto LABEL_34;
              }

              if ((v14 - 91) > 0xFFFFFFE5)
              {
                goto LABEL_34;
              }

              if ((v14 | 0x80) == 0xA0)
              {
                v15 = *(qword_9D7E8 + 5);
                if (*(qword_9D7E8 + 5))
                {
                  v9 = 3;
                  if ((v15 - 223) > 0xFFFFFFE0 || (v15 - 91) > 0xFFFFFFE5)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }

            break;
          }
        }
      }

      v16 = is_generic_abbrev(qword_9D7E8);
      if (v16)
      {
        v9 = v16;
        v8 = 1;
      }

      else
      {
        v17 = is_common_abbrev(v3);
        if (!v17)
        {
          return 1;
        }

        v9 = v17;
        v8 = v17 < 3;
        v3 = qword_9D7E8;
      }

LABEL_34:
      if (is_url(v3))
      {
        return 1;
      }

      if (v2 == 2)
      {
        qword_9D7C8 = 1;
      }

      if (v8)
      {
        v18 = 32;
      }

      else
      {
        v18 = 0x2000;
      }

      add_seg(v18);
      do
      {
        v19 = qword_9D7E8;
        if (v8 || !in(*qword_9D7E8, 9))
        {
          qword_9D7E8 = (v19 + 1);
          add_basis_char(*v19, 0);
        }

        else
        {
          qword_9D7E8 = (v19 + 1);
          v20 = qword_9D7B0;
          *qword_9D7B0 = *v19 & 0xDF;
          qword_9D7B0 = v20 + 1;
        }

        --v9;
      }

      while (v9);
      add_basis_char(*qword_9D7E8, 0);
      if (*qword_9D7E8 && *(qword_9D7E8 + 1) == 32 && *(qword_9D7E8 + 2) - 58 >= 0xFFFFFFF6)
      {
        skip_whitespace(0);
      }

      result = 0;
      dword_9D7A0 = 0;
    }
  }

  return result;
}

uint64_t no_locution()
{
  result = 1;
  if (nLangIDGlb == 12 && qword_9D7C8 != 0x2000 && (lFlags & 0x4000) == 0 && (byte_9D79C & 1) == 0 && (byte_9D804 & 1) == 0)
  {
    v1 = *(&dword_8 + pLangGlb);
    if (v1 < 0)
    {
      return 1;
    }

    else
    {
      v2 = qword_9D7E8;
      v3 = *pLangGlb + 2;
      v4 = v1 + 1;
      while ((*(v3 + 17) & 0x40) == 0 || !equals_nocase(v2, *(v3 - 2)) || (*v3)[v2] > 0x40u)
      {
        v3 += 5;
        if (!--v4)
        {
          return 1;
        }
      }

      add_seg(0x2000);
      v5 = *(v3 - 2);
      v6 = qword_9D7B0;
      v9 = *v5;
      v7 = v5 + 1;
      v8 = v9;
      do
      {
        *v6++ = v8;
        v10 = *v7++;
        v8 = v10;
      }

      while (v10);
      result = 0;
      qword_9D7B0 = v6;
      qword_9D7E8 = &(*v3)[qword_9D7E8 - 1];
    }
  }

  return result;
}

BOOL is_mathematics()
{
  if (qword_9D7C8 == 0x2000)
  {
    return 0;
  }

  if (byte_9D798)
  {
    return 1;
  }

  return strchr((qword_9D7E8 + 1), 61) != 0;
}

uint64_t is_supersub()
{
  v0 = (qword_9D7E8 + 1);
  v1 = *(qword_9D7E8 + 1);
  if (*(qword_9D7E8 + 1))
  {
    if ((v1 - 58) < 0xF6u && !in(*(qword_9D7E8 + 1), 25))
    {
      v2 = memchr("({[<\x91", v1, 6uLL);
      if (v1 != 30 && v2 == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    result = in(0, 25);
    if (!result)
    {
      return result;
    }
  }

  return equals_nocase(v0, "<PT") ^ 1;
}

void process_dash(int a1, int a2)
{
  if (nLangIDGlb == 10 || nLangIDGlb == 12)
  {
    if (nLangIDGlb == 10 && qword_9D7C8 != 2)
    {
      v6 = qword_9D7B0;
      *qword_9D7B0 = 32;
      qword_9D7B0 = v6 + 1;
    }
  }

  else if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
  {
    if (*qword_9D7D0 == 160)
    {
      *qword_9D7D0 = 32;
    }

    remove_whitespace(1);
  }

  if (*qword_9D7E8 && (*(qword_9D7E8 + 1) - 150 < 2 || *(qword_9D7E8 + 1) == 45))
  {
    ++qword_9D7E8;
  }

  if (a1 == 151 || (nLangIDGlb == 9 ? (v8 = nSubLangIDGlb == 2) : (v8 = 1), v8 || (v9 = 16, (byte_9D798 & 1) == 0) && (lFlags & 0x40000000) != 0))
  {
    v9 = 4;
  }

  add_seg(v9);
  if (nLangIDGlb == 7)
  {
    v10 = -105;
  }

  else
  {
    v10 = a1;
  }

  v11 = qword_9D7B0;
  *qword_9D7B0 = v10;
  qword_9D7B0 = v11 + 1;
  if (a2)
  {
    add_seg(4);
    v12 = qword_9D7B0;
    *qword_9D7B0 = a1;
    qword_9D7B0 = v12 + 1;
  }

  v13 = nLangIDGlb;
  v15 = nLangIDGlb == 7 || nLangIDGlb == 10;
  if (a1 == 151 && v15)
  {
    v16 = *(qword_9D7E8 + 1);
    if (v16 >= 0x21 && v16 != 160 && !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *(qword_9D7E8 + 1), 0x15uLL) && !memchr("({[<\x91", v16, 6uLL) && !memchr(")}]>\x9B", v16, 6uLL) && !memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v16, 0xDuLL))
    {
      add_seg(2);
      v17 = qword_9D7B0;
      *qword_9D7B0 = 32;
      qword_9D7B0 = v17 + 1;
      return;
    }
  }

  if (v13 == 12)
  {
    goto LABEL_53;
  }

  if (v13 != 7)
  {
    if (a1 == 151 && v13 == 10)
    {
      return;
    }

    goto LABEL_57;
  }

  if (*(qword_9D7E8 + 1) != 32 || *(qword_9D7E8 + 2) - 48 >= 0xA)
  {
LABEL_53:
    if (a1 == 151)
    {
      return;
    }

LABEL_57:
    if (v13 == 9 && nSubLangIDGlb == 3)
    {
      return;
    }
  }

  skip_whitespace(1);
}

void process_quotes(char a1, int a2, char a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if ((qword_9D7C8 & 0xC0) != 0 && *(qword_9D7E8 + 1) - 58 >= 0xFFFFFFF6)
  {
    goto LABEL_47;
  }

  if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
  {
    v7 = *qword_9D7E8;
    if (a2 == 39)
    {
      v8 = 39;
    }

    else
    {
      v8 = 34;
    }

    if (v7 == 34)
    {
      v5 = 30;
    }

    else
    {
      v5 = a1;
    }

    if (v7 == 34)
    {
      v4 = v8;
    }

    else
    {
      v4 = a2;
    }

    if (v7 == 34)
    {
      v3 = 31;
    }

    else
    {
      v3 = a3;
    }
  }

  add_seg(4);
  v9 = qword_9D7E8;
  v10 = *qword_9D7E8;
  v11 = qword_9D7D8;
  v12 = qword_9D7D8 & 0xFFFFFFFFFFFFFFFDLL;
  if (v10 != 34 || v12 == 0)
  {
    if (!v12)
    {
      goto LABEL_43;
    }

    v14 = *(qword_9D7E8 + 1);
LABEL_31:
    if (!in(v14, 9))
    {
      v17 = (v9 + 1);
      if (!is_number((v9 + 1)))
      {
        v18 = 0;
        while (1)
        {
          do
          {
            v19 = *v17++;
          }

          while (v19 == 173 || v19 == 30);
          if (v19 != asc_26C6A[v18])
          {
            break;
          }

          if (++v18 == 2)
          {
            goto LABEL_43;
          }
        }

        if (v10 == v14 && v11 != 4)
        {
LABEL_43:
          if (!v11)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }

        if (v14 && memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v14, 0xDuLL))
        {
          v23 = (v9 + 2);
          if (in(*(v9 + 2), 9) || is_number((v9 + 2)))
          {
            goto LABEL_43;
          }

          v24 = 0;
          while (1)
          {
            do
            {
              v25 = *v23++;
            }

            while (v25 == 173 || v25 == 30);
            if (v25 != asc_26C6A[v24])
            {
              break;
            }

            if (++v24 == 2)
            {
              goto LABEL_43;
            }
          }
        }

        if (!v11)
        {
          v22 = qword_9D7B0;
LABEL_68:
          *v22 = v3;
          goto LABEL_48;
        }

        if (!*(v9 - 1) || !memchr("({[<\x91", *(v9 - 1), 6uLL))
        {
          v22 = qword_9D7B0;
          v27 = *(qword_9D7B0 - 1);
          if (v27 != 145 && v27 != 171)
          {
            goto LABEL_68;
          }
        }
      }
    }

LABEL_44:
    v21 = *(v9 - 1);
    if (!in(v21, 9) && (v21 - 58) < 0xF6u)
    {
      goto LABEL_46;
    }

LABEL_47:
    v22 = qword_9D7B0;
    *qword_9D7B0 = v4;
    goto LABEL_48;
  }

  v14 = *(qword_9D7E8 + 1);
  if (v14 != 59 && v14 != 44 || *(qword_9D7E8 + 2) != 34)
  {
    goto LABEL_31;
  }

  v15 = qword_9D7B0;
  *qword_9D7B0 = v3;
  qword_9D7B0 = v15 + 1;
  ++qword_9D7E8;
  add_seg(4);
  v16 = qword_9D7B0;
  *qword_9D7B0 = *qword_9D7E8;
  qword_9D7B0 = v16 + 1;
  ++qword_9D7E8;
  add_seg(4);
LABEL_46:
  v22 = qword_9D7B0;
  *qword_9D7B0 = v5;
LABEL_48:
  qword_9D7B0 = (v22 + 1);
}

void process_supersub()
{
  v0 = 0;
  v1 = *(qword_9D7B0 - 1);
  v6 = v1 == 51;
  v2 = v1 != 51;
  v3 = 16;
  if (!v6)
  {
    v3 = 128;
  }

  qword_9D7C8 = v3;
  while (1)
  {
    if (is_supersub())
    {
      v4 = qword_9D7E8;
      goto LABEL_8;
    }

    if (v0 < 1)
    {
      break;
    }

    v4 = qword_9D7E8;
    if (!*(qword_9D7E8 + 1))
    {
      break;
    }

LABEL_8:
    v5 = (v4 + 1);
    qword_9D7E8 = v4 + 1;
    if (*(v4 + 1) == 30)
    {
      qword_9D7A8 = qword_9D7B0 - qword_9D7D0 + 1;
      v5 = (v4 + 2);
      qword_9D7E8 = v4 + 2;
    }

    if (!v2 || nLangIDGlb != 7)
    {
      v8 = *v5;
      if (!*v5)
      {
LABEL_30:
        if (in(0, 25))
        {
          goto LABEL_61;
        }

LABEL_31:
        v10 = 32;
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    v6 = qword_9D7D8 >= 3 && (qword_9D7D8 & 0x1E024) == 0;
    if (!v6 && (lFlags & 1) == 0)
    {
      v7 = qword_9D7B0;
      if (qword_9D7B0 - qword_9D7D0 == 1 && !is_mathematics())
      {
        *v7 = *(v7 - 1);
        qword_9D7B0 = (v7 + 1);
        *(v7 - 1) = stru_B8.segname[pLangGlb + 3];
        v5 = qword_9D7E8;
      }
    }

    v8 = *v5;
    if (v8 == 45)
    {
      if (is_decimal_number(v5 + 1))
      {
        add_seg(32);
      }

      v21 = qword_9D7B0;
      *qword_9D7B0 = -106;
      qword_9D7B0 = v21 + 1;
      v2 = 1;
    }

    else
    {
      if (!*v5)
      {
        goto LABEL_30;
      }

LABEL_21:
      if ((v8 - 58) < 0xF6u)
      {
        if (in(v8, 25) || memchr("\xB9\xB2\xB3\xBC\xBD\xBE", v8, 7uLL))
        {
LABEL_61:
          add_seg(16);
          v19 = *qword_9D7E8;
          v20 = qword_9D7B0;
          v2 = 0;
          if (v19 == 45)
          {
            LOBYTE(v19) = -106;
          }

          *qword_9D7B0 = v19;
          qword_9D7B0 = v20 + 1;
        }

        else
        {
          if (v8 <= 122)
          {
            if (v8 == 60 || v8 == 62)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }

          if (v8 == 123)
          {
            v2 = 0;
            ++v0;
          }

          else if (v8 == 125)
          {
            v2 = 0;
            --v0;
          }

          else
          {
LABEL_75:
            if (memchr("({[<\x91", v8, 6uLL))
            {
              add_seg(16);
              v2 = 0;
              v22 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              qword_9D7B0 = v22 + 1;
              ++v0;
            }

            else if (memchr(")}]>\x9B", v8, 6uLL))
            {
              add_seg(16);
              v2 = 0;
              v23 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              qword_9D7B0 = v23 + 1;
              --v0;
            }

            else
            {
              if (v8 != 9 && v8 != 160 && v8 != 32)
              {
                goto LABEL_31;
              }

              v10 = 0;
LABEL_32:
              add_seg(v10);
              v2 = 0;
              v11 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              qword_9D7B0 = v11 + 1;
            }
          }
        }
      }

      else
      {
        if (qword_9D7C8 != 128)
        {
          add_seg(64);
        }

        v9 = nLangIDGlb;
        if (nLangIDGlb == 7 || (nLangIDGlb == 9 ? (v14 = nSubLangIDGlb == 2) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), nLangIDGlb == 10 || v15))
        {
          if (!v2 && qword_9D7B0 != qword_9D7D0)
          {
            if (nLangIDGlb == 7)
            {
              goto LABEL_39;
            }

            goto LABEL_49;
          }

          if (!is_lower_num(qword_9D7E8))
          {
            v9 = nLangIDGlb;
            if (nLangIDGlb == 7)
            {
              if (!v2)
              {
                goto LABEL_39;
              }

              if (is_decimal_number(qword_9D7E8))
              {
                if (qword_9D7C8 != 64)
                {
                  add_seg(0);
                  v12 = qword_9D7B0;
                  *qword_9D7B0 = 32;
                  qword_9D7B0 = v12 + 1;
                }

LABEL_39:
                add_seg(64);
                v13 = upper_digit(*qword_9D7E8);
                v2 = 0;
                goto LABEL_58;
              }

              goto LABEL_54;
            }

            goto LABEL_48;
          }

          v2 = 0;
          qword_9D7C8 = 128;
        }

        else
        {
LABEL_48:
          if (v9 == 12)
          {
            goto LABEL_53;
          }

LABEL_49:
          if (v9 == 9 && nSubLangIDGlb == 3 && (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
          {
LABEL_53:
            v13 = upper_digit(*qword_9D7E8);
            goto LABEL_58;
          }

LABEL_54:
          v16 = *qword_9D7E8;
          if ((v16 - 58) >= 0xFFFFFFF6)
          {
            v17 = &asc_26AD6[v16 - 48];
          }

          else
          {
            v17 = *(*(&stru_20.cmd + pLangGlb) + 8 * v16);
          }

          v13 = *v17;
LABEL_58:
          v18 = qword_9D7B0;
          *qword_9D7B0 = v13;
          qword_9D7B0 = v18 + 1;
        }
      }
    }
  }

  v24 = nLangIDGlb != 9 || nSubLangIDGlb == 2;
  if (!v24 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
  {
    add_seg(16);
    v25 = qword_9D7B0;
    *qword_9D7B0 = 33;
    qword_9D7B0 = v25 + 1;
  }
}

uint64_t wh_forward_translate(char *__src, char *__dst, size_t size, _DWORD *a4)
{
  v5 = size;
  if (a4)
  {
    *a4 = 0;
  }

  if (__dst)
  {
    *__dst = 0;
  }

  if (!__src)
  {
    return 87;
  }

  v8 = &unk_9D000;
  qword_9D7E8 = __src;
  v9 = *__src;
  v10 = __src;
  if (v9 == 123)
  {
    v11 = matching_brace_pos(__src);
    if (v11 <= __src)
    {
      v9 = 123;
      v10 = __src;
    }

    else
    {
      v12 = v11;
      v10 = __src;
      while (1)
      {
        if (*v12 != 125)
        {
LABEL_13:
          v9 = 123;
          goto LABEL_16;
        }

        if (!brl_process_command(v10 + 1))
        {
          v10 = qword_9D7E8;
          v9 = *qword_9D7E8;
          goto LABEL_16;
        }

        v10 = (v12 + 1);
        qword_9D7E8 = (v12 + 1);
        v9 = v12[1];
        if (v9 != 123)
        {
          break;
        }

        v12 = matching_brace_pos(v12 + 1);
        if (v12 <= v10)
        {
          goto LABEL_13;
        }
      }

      if (!v12[1])
      {
        return 0;
      }
    }
  }

LABEL_16:
  if (v9)
  {
    result = 87;
  }

  else
  {
    result = 0;
  }

  if (!__dst)
  {
    return result;
  }

  if (!v9)
  {
    return result;
  }

  result = 87;
  if (__src == __dst)
  {
    return result;
  }

  v14 = (v5 - 1);
  if (v5 < 1)
  {
    return result;
  }

  v15 = 0;
  v16 = 0;
  qword_9D7F0 = v10;
  v17 = 32;
  v18 = 1;
  v19 = a4;
  do
  {
    if (v17 == 32 && v9 >= 0x21u)
    {
      v17 = v9;
      if ((v9 - 58) >= 0xF6u)
      {
        v17 = 0;
        goto LABEL_32;
      }
    }

    else if (v17 < 0x21u)
    {
      goto LABEL_32;
    }

    if (v9 == v17)
    {
      ++v16;
    }

    else
    {
      v17 = 0;
    }

LABEL_32:
    qword_9D7E8 = &v10[v18];
    v9 = v10[v18++];
    ++v19;
    v15 += 2;
  }

  while (v9);
  if (v15 > v5)
  {
    return 111;
  }

  v20 = v16 > 3 && v17 > 0x20u;
  if (v20 || b8DotBraille)
  {
    strcpy(__dst, v10);
    if (!a4)
    {
      return 0;
    }

    if (v18 - 1 >= 1)
    {
      v26 = 0;
      v27 = vdupq_n_s64(v18 - 2);
      v28 = a4 + 2;
      v29 = xmmword_277A0;
      v30 = xmmword_277B0;
      v31 = vdupq_n_s64(4uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v27, v30));
        if (vuzp1_s16(v32, *v27.i8).u8[0])
        {
          *(v28 - 2) = v26;
        }

        if (vuzp1_s16(v32, *&v27).i8[2])
        {
          *(v28 - 1) = v26 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v29))).i32[1])
        {
          *v28 = v26 + 2;
          v28[1] = v26 + 3;
        }

        v26 += 4;
        v29 = vaddq_s64(v29, v31);
        v30 = vaddq_s64(v30, v31);
        v28 += 4;
      }

      while (((v18 + 2) & 0xFFFFFFFFFFFFFFFCLL) != v26);
    }

    result = 0;
    *v19 = v18 - 2;
    return result;
  }

  qword_9D7C0 = __dst;
  qword_9D7B8 = &__dst[v14];
  __dst[v14] = 0;
  pExcMapGlb = &brl_set_classmap;
  v21 = malloc_type_malloc(v5, 0x100004077774924uLL);
  qword_9D838 = v21;
  if (!v21)
  {
    return 8;
  }

  *v21 = 0;
  v21[v14] = 0;
  v22 = &unk_9D000;
  qword_9D7D0 = (v21 + 1);
  qword_9D7B0 = (v21 + 1);
  qword_9D828 = 0;
  qword_9D7E0 = 0;
  qword_9D7F8 = 0;
  byte_9D798 = 0;
  dword_9D830 = 0;
  byte_9D840 = 0;
  dword_9D7A0 = 0;
  v23 = &unk_9D000;
  byte_9D808 = 0;
  byte_9D804 = 0;
  byte_9D79C = 0;
  bMemoryOverflow = 0;
  byte_9D800 = a4 != 0;
  if (!*(&dword_18 + pLangGlb))
  {
    lFlags |= 0xFFFFuLL;
  }

  if (nLangIDGlb == 16 || nLangIDGlb == 10)
  {
    v24 = 0;
    v25 = lFlags & 0xFFFFFFFFFBFFFFFFLL;
    lFlags &= ~0x4000000uLL;
  }

  else
  {
    v25 = lFlags;
    v24 = (lFlags >> 15) & 0x800;
  }

  v1044 = a4;
  qword_9D7C8 = v24;
  qword_9D7D8 = 0;
  v33 = &unk_9D000;
  qword_9D7A8 = 0;
  if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && (v25 & 0x40000000) == 0)
  {
    lFlags = v25 & 0xFFFFFFFFB7FFFFFFLL;
  }

  v34 = qword_9D7F0;
  qword_9D7E8 = qword_9D7F0;
  v35 = *qword_9D7F0;
  if (*qword_9D7F0)
  {
    while (2)
    {
      v36 = qword_9D7C8;
      if (qword_9D7C8 == 2048)
      {
        v37 = lFlags;
        if ((lFlags & 0x4000000) != 0)
        {
          goto LABEL_120;
        }

        if (dword_9D830)
        {
          v38 = 0;
          v39 = v34;
          while (1)
          {
            do
            {
              v40 = *v39++;
            }

            while (v40 == 173 || v40 == 30);
            if (v40 != asc_2671B[v38])
            {
              break;
            }

            if (++v38 == 2)
            {
              goto LABEL_76;
            }
          }

          v48 = v35;
          if (v35 == 30)
          {
LABEL_158:
            qword_9D7A8 = qword_9D7B0 - v22[250] + 1;
            goto LABEL_1844;
          }

LABEL_129:
          if (v48 != 173 || (v37 & 0x20000000) != 0)
          {
            v50 = qword_9D7B0;
            *qword_9D7B0 = v35;
            qword_9D7B0 = v50 + 1;
            v51 = *v8[253];
            if (v51 == 9 || v51 == 160 || v51 == 32)
            {
LABEL_134:
              add_whitespace();
            }
          }

          goto LABEL_1844;
        }

LABEL_76:
        if (v35 >= 0x21u && v35 != 160)
        {
          if (!memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v35, 0x15uLL) && !memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v35, 0xDuLL) && !memchr("({[<\x91", v35, 6uLL) && !memchr(")}]>\x9B", v35, 6uLL) || (v42 = v34[1], v42 >= 0x21) && v42 != 160 && !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v34[1], 0x15uLL) && !memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v42, 0xDuLL))
          {
LABEL_120:
            v48 = v35;
            if (v35 == 30)
            {
              goto LABEL_1844;
            }

            goto LABEL_129;
          }
        }
      }

      switch(v35)
      {
        case 0x1Bu:
          if (!*++v34)
          {
            goto LABEL_1844;
          }

          v8[253] = v34;
          v196 = *v34;
          if (v196 == 51)
          {
            goto LABEL_951;
          }

          if (v196 != 52)
          {
            goto LABEL_1844;
          }

LABEL_557:
          v197 = v34 + 1;
          if (v34[1] - 1 > 0x1E)
          {
            goto LABEL_1982;
          }

          v8[253] = v197;
          v198 = *v197;
          while (2)
          {
            v34 = v197;
            if (!v198)
            {
              goto LABEL_1993;
            }

LABEL_1982:
            v197 = v34 + 1;
            if (v34[1] == 127)
            {
              v8[253] = v197;
              v653 = 1;
              if (v34[2] - 1 < 0x1F)
              {
                v653 = 2;
                v197 = v34 + 2;
              }

              v8[253] = v197;
              v198 = v34[v653];
              continue;
            }

            break;
          }

          while (v34[1] == 27)
          {
            v197 = v34 + 2;
            if (v34[2] != 52)
            {
              break;
            }

            v8[253] = v197;
            v654 = 2;
            if (v34[3] - 1 < 0x1F)
            {
              v654 = 3;
              v197 = v34 + 3;
            }

            v8[253] = v197;
            v655 = v34[v654];
            v34 = v197;
            if (!v655)
            {
              goto LABEL_1993;
            }
          }

          v197 = v34;
LABEL_1993:
          v656 = v197[1];
          v62 = &unk_9D000;
          if (v656 == 9 || v656 == 160 || v656 == 32)
          {
            add_seg(2);
            v657 = qword_9D7B0;
            v658 = v8[253];
            do
            {
              do
              {
                ++v657;
                v8[253] = v658 + 1;
                *(v657 - 1) = v658[1];
                v658 = v8[253];
                v659 = v658[1];
              }

              while (v659 == 9);
            }

            while (v659 == 160 || v659 == 32);
            qword_9D7B0 = v657;
          }

          add_seg(4096);
          v660 = qword_9D7D8;
          if (nLangIDGlb == 7 && qword_9D7D8 == 0x2000)
          {
            v661 = qword_9D7B0;
            *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
            qword_9D7B0 = v661 + 1;
          }

          v662 = v8[253];
          if (*v662)
          {
            v663 = v662 + 1;
            do
            {
              if (*v663 != 127)
              {
                break;
              }

              v8[253] = v663;
            }

            while (*v663++);
            v662 = v663 - 1;
          }

          v665 = 0;
          v666 = v662;
          while (1)
          {
            do
            {
              v668 = *++v666;
              v667 = v668;
            }

            while (v668 == 173 || v667 == 30);
            if (v667 != asc_2671B[v665])
            {
              break;
            }

            if (++v665 == 2)
            {
              qword_9D7C8 = 0;
LABEL_2017:
              v670 = 0;
              v671 = v662 + 3;
              v662 += 2;
              v8[253] = v662;
              while (1)
              {
                do
                {
                  v672 = *v671++;
                }

                while (v672 == 173 || v672 == 30);
                if (v672 != asc_2671B[v670])
                {
                  goto LABEL_2025;
                }

                if (++v670 == 2)
                {
                  goto LABEL_2017;
                }
              }
            }
          }

LABEL_2025:
          if (nLangIDGlb != 12 || v660 == 0x2000)
          {
            v674 = **&stru_68.segname[pLangGlb + 8];
          }

          else
          {
            v674 = 58;
          }

          v675 = qword_9D7B0;
          v676 = qword_9D7B0;
          *qword_9D7B0 = v674;
          qword_9D7B0 = v676 + 1;
          if (nLangIDGlb == 9 && nSubLangIDGlb == 2 && v660 == 0x2000)
          {
            v677 = 44;
          }

          else
          {
            v677 = **&stru_68.segname[pLangGlb + 8];
          }

          *(v675 + 1) = v677;
          v79 = (v675 + 2);
          goto LABEL_581;
        case 0x1Eu:
          goto LABEL_158;
        case 0x1Fu:
        case 0xADu:
          goto LABEL_1844;
        case 0x20u:
          v188 = v36 == 64 && (lFlags & 0x10000) == 0;
          if (!v188 || (*(v34 - 1) | 2) == 0x2E || v34[1] - 58 < 0xFFFFFFF6)
          {
            goto LABEL_538;
          }

          v361 = qword_9D7F0;
          v1041 = *v22[250];
          v1039 = upper_digit(0x30u);
          v362 = v1041 == v1039;
          v363 = is_figure(0, v34 - 1, v361, v362);
          v364 = is_figure(1, v34 + 1, v361, v362);
          if (v364 >= v363)
          {
            if (v364 < 2)
            {
              goto LABEL_538;
            }
          }

          else if (v364 < 2 || v364 - v363 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_538;
          }

          if (v364 < 5 || v1041 == v1039 && is_figure(1, v34 + 1, v361, 0) >= 4)
          {
            separator = get_separator(1);
            v476 = qword_9D7B0;
            v477 = qword_9D7B0;
            *qword_9D7B0 = separator;
            qword_9D7B0 = v477 + 1;
            if (byte_9D800 != 1)
            {
              goto LABEL_1844;
            }

            *(v476 + 1) = 31;
            v337 = v476 + 2;
            v335 = &unk_9D000;
LABEL_943:
            v335[246] = v337;
            goto LABEL_1844;
          }

LABEL_538:
          if (byte_9D79C == 1)
          {
LABEL_539:
            add_seg(2);
            v189 = qword_9D7B0;
            v190 = 32;
            goto LABEL_686;
          }

          if (nLangIDGlb == 7)
          {
            if ((v36 & 0xC0) != 0)
            {
              goto LABEL_823;
            }

            if (byte_9D798 != 1)
            {
              goto LABEL_1736;
            }

            if ((v36 & 0x2000) == 0 || dword_9D818)
            {
              v8 = &unk_9D000;
              goto LABEL_1736;
            }

            v8 = &unk_9D000;
            if (qword_9D7B0 - v22[250] <= 4)
            {
LABEL_823:
              if (is_measurement(v34 + 1, 1, 1) || (v34 = v8[253], v299 = v34[1], v299 - 137 <= 0x3C) && ((1 << (v299 + 119)) & 0x1000108000000001) != 0)
              {
LABEL_824:
                add_seg(2);
                if (byte_9D798 != 1)
                {
                  if ((lFlags & 0x8000000) == 0 || (v479 = v8[253][1], v479 == 37) || v479 == 137 || v479 == 176)
                  {
                    if (byte_9D800 != 1)
                    {
                      goto LABEL_1844;
                    }

                    v49 = &unk_9D000;
                    v58 = qword_9D7B0;
                    v59 = 31;
                  }

                  else
                  {
LABEL_127:
                    v49 = &unk_9D000;
LABEL_140:
                    v58 = v49[246];
                    v59 = 32;
                  }

                  goto LABEL_141;
                }

LABEL_708:
                v49 = &unk_9D000;
                v58 = qword_9D7B0;
                if (byte_9D800 == 1)
                {
                  *qword_9D7B0 = 31;
                  ++v58;
                }

                goto LABEL_710;
              }

              if (v34[1])
              {
                v8 = &unk_9D000;
                if (v299 == 37 || memchr("\x80$\xA5\xA2\xA3\xA4", v34[1], 7uLL))
                {
                  goto LABEL_824;
                }

                if (v299 > 0xDE || v299 - 123 >= 0xFFFFFFE6)
                {
                  v480 = v34[2];
                  if (v34[2])
                  {
                    if ((v480 - 223) > 0xFFFFFFE0 || (v480 - 91) >= 0xFFFFFFE6)
                    {
                      goto LABEL_824;
                    }
                  }
                }
              }

              else
              {
                v8 = &unk_9D000;
              }
            }
          }

LABEL_1736:
          v582 = qword_9D7C8;
          if (qword_9D7C8 == 32)
          {
            if (*(v34 - 1) != 46)
            {
              goto LABEL_539;
            }
          }

          else
          {
            if (qword_9D7C8 != 0x2000)
            {
              goto LABEL_1750;
            }

            if (number_precedes(1))
            {
              goto LABEL_539;
            }
          }

          v583 = v34[1];
          if (!v34[1])
          {
            goto LABEL_1750;
          }

          if (memchr(",;:!?", v34[1], 6uLL))
          {
            if (v583 == 63)
            {
              goto LABEL_1750;
            }
          }

          else if (v583 != 46)
          {
            goto LABEL_1750;
          }

          if ((byte_9D798 & 1) != 0 || v34[2] > 0x20u)
          {
LABEL_1750:
            if ((v582 & 0xC0) == 0)
            {
              goto LABEL_539;
            }

            v584 = v34[1];
            if (v584 > 0x88)
            {
              if (v584 != 176 && v584 != 137)
              {
                goto LABEL_1759;
              }
            }

            else
            {
              if (!v34[1])
              {
                goto LABEL_539;
              }

              if (v584 != 37)
              {
                goto LABEL_1759;
              }
            }

            if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
            {
LABEL_1761:
              if (byte_9D800 == 1)
              {
                add_seg(2);
                v585 = qword_9D7B0;
                *qword_9D7B0 = 31;
                qword_9D7B0 = v585 + 1;
              }

              if (byte_9D798 != 1)
              {
                goto LABEL_1844;
              }

              if (nLangIDGlb != 7)
              {
                goto LABEL_1844;
              }

              v586 = v8[253][1];
              if (v586 != 37 && v586 != 176 && v586 != 137)
              {
                goto LABEL_1844;
              }

LABEL_447:
              add_seg(2);
              v49 = &unk_9D000;
              v58 = qword_9D7B0;
LABEL_710:
              v59 = 127;
              goto LABEL_141;
            }

LABEL_1759:
            if ((lFlags & 0x8000000) != 0 || v584 != 42 && (!memchr("+-=", v34[1], 4uLL) || is_number(v34 + 1) || !is_number(v34 + 2) && (v584 == 45 && !strchr(v34 + 2, 61) || v34[2] != 32 || !is_number(v34 + 3))))
            {
              goto LABEL_539;
            }

            goto LABEL_1761;
          }

          if (byte_9D800 == 1)
          {
            add_seg(32);
            v510 = qword_9D7B0;
            v511 = 31;
          }

          else
          {
            add_seg(0);
            v510 = qword_9D7B0;
            v511 = 32;
          }

          goto LABEL_1646;
        case 0x21u:
        case 0x28u:
        case 0x29u:
        case 0x3Bu:
        case 0x3Fu:
        case 0xA9u:
        case 0xAEu:
          if (v35 == 63 || v35 == 40)
          {
            if (byte_9D798 != 1)
            {
              goto LABEL_339;
            }

            if (v35 == 40)
            {
LABEL_332:
              if (nLangIDGlb == 7 && (qword_9D7C8 & 0xC0) != 0)
              {
                v118 = v8[253];
                if (*v118 == 40 && v118[1] - 58 >= 0xFFFFFFF6)
                {
                  v120 = qword_9D7B0;
                  v358 = qword_9D7B0;
                  while (v358 > v22[250])
                  {
                    v359 = *--v358;
                    if (v359 == stru_B8.segname[pLangGlb + 1])
                    {
                      v119 = 50;
                      goto LABEL_337;
                    }
                  }
                }
              }

              add_seg(16);
              v119 = *v8[253];
              v120 = qword_9D7B0;
LABEL_337:
              *v120 = v119;
              qword_9D7B0 = (v120 + 1);
              if (*v8[253] != 41)
              {
                goto LABEL_166;
              }

              goto LABEL_1844;
            }
          }

          else
          {
            if (v35 == 33)
            {
              if (v34[1] == 44 && (v36 < 3 || (v75 = *(v34 - 1)) != 0 && (memchr("({[<\x91", *(v34 - 1), 6uLL) || memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v75, 0xDuLL))))
              {
                add_seg(32);
                open_math_passage();
                goto LABEL_197;
              }

LABEL_339:
              v122 = nLangIDGlb == 9 && nSubLangIDGlb != 3;
              if (nLangIDGlb != 12 && !v122)
              {
LABEL_347:
                if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
                {
                  if (v35 != 63 || v36 >= 3 && (!*(v34 - 1) || !memchr("({[<\x91", *(v34 - 1), 6uLL)))
                  {
                    goto LABEL_1103;
                  }

                  goto LABEL_1108;
                }

                if (nLangIDGlb != 7)
                {
                  goto LABEL_1103;
                }

                if (v35 == 63 && v36 == 0x2000)
                {
                  if (dword_9D818 > 1)
                  {
LABEL_419:
                    ++dword_9D818;
                    v49 = &unk_9D000;
                    v58 = qword_9D7B0;
                    v59 = 63;
                    goto LABEL_141;
                  }

                  v329 = *(v34 - 1);
                  if (!*(v34 - 1))
                  {
                    goto LABEL_1096;
                  }

                  if ((v329 - 223) > 0xFFFFFFE0 || (v329 - 91) >= 0xFFFFFFE6)
                  {
                    v387 = v34[1];
                    if (v34[1])
                    {
                      if ((v387 - 223) > 0xFFFFFFE0 || (v387 - 91) >= 0xFFFFFFE6)
                      {
                        goto LABEL_419;
                      }
                    }
                  }
                }

                else
                {
                  if (v35 != 63)
                  {
                    goto LABEL_1096;
                  }

                  if (v36 < 3)
                  {
LABEL_1091:
                    v388 = v34[1];
                    if (v388 == 63 || v388 == 32)
                    {
                      add_seg(16);
                      if (qword_9D7C8 <= 2 && v8[253][1] == 63)
                      {
                        v49 = &unk_9D000;
                        v58 = qword_9D7B0;
                        v59 = 33;
                      }

                      else
                      {
                        v49 = &unk_9D000;
                        v58 = qword_9D7B0;
                        v59 = 126;
                      }

                      goto LABEL_141;
                    }

                    goto LABEL_1096;
                  }

                  v329 = *(v34 - 1);
                }

                if (v329 == 63)
                {
                  goto LABEL_1091;
                }

LABEL_1096:
                if (byte_9D798)
                {
                  goto LABEL_1108;
                }

                if ((v36 & 0xC) != 0 && (v35 == 63 || v35 == 33) && v34[1] >= 0x21u)
                {
                  if (v36 != 16 && (lFlags & 0x40) != 0)
                  {
                    goto LABEL_1103;
                  }

                  goto LABEL_1108;
                }

                if (v36 == 16)
                {
LABEL_1108:
                  add_seg(32);
                  v62 = &unk_9D000;
                  v391 = qword_9D7B0;
                  *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
                  qword_9D7B0 = v391 + 1;
                  v92 = 8;
LABEL_1109:
                  add_seg(v92);
                  v142 = v8[253];
LABEL_1110:
                  LOBYTE(v142) = *v142;
LABEL_1111:
                  v392 = v62[246];
                  *v392 = v142;
                  v62[246] = v392 + 1;
                  goto LABEL_1844;
                }

LABEL_1103:
                add_seg(8);
                v389 = *v8[253];
                v390 = qword_9D7B0 + 1;
                if (nLangIDGlb == 10 && v389 == 33)
                {
                  LOBYTE(v389) = -95;
                }

                *qword_9D7B0 = v389;
                qword_9D7B0 = v390;
                goto LABEL_1844;
              }

              if (v35 == 40)
              {
                if (v36 != 0x2000 || !dword_9D7A0)
                {
                  goto LABEL_1103;
                }
              }

              else if (v35 != 41 || v36 != 0x2000 || !dword_9D7A0)
              {
                goto LABEL_347;
              }

              v242 = v34[1];
              if (v34[1])
              {
                if (v242 - 223 > 0xFFFFFFE0 || v242 - 91 >= 0xFFFFFFE6)
                {
                  v249 = *(&stru_20.cmd + pLangGlb);
                  v250 = v35;
                  goto LABEL_933;
                }

                if (v242 > 0xDE || v242 - 123 >= 0xFFFFFFE6)
                {
                  v243 = *&stru_68.segname[pLangGlb];
                  v244 = qword_9D7B0;
                  v247 = *v243;
                  v245 = v243 + 1;
                  v246 = v247;
                  do
                  {
                    *v244++ = v246;
                    v248 = *v245++;
                    v246 = v248;
                  }

                  while (v248);
                  qword_9D7B0 = v244;
                  dword_9D7A0 = 0;
                }
              }

              add_seg(32);
              v249 = *(&stru_20.cmd + pLangGlb);
              v250 = *v8[253];
LABEL_933:
              v330 = **(v249 + 8 * v250);
              v331 = qword_9D7B0;
              *qword_9D7B0 = v330;
              qword_9D7B0 = v331 + 1;
              goto LABEL_1844;
            }

            if (v35 != 41 || (byte_9D798 & 1) == 0)
            {
              goto LABEL_339;
            }
          }

          remove_whitespace(0);
          goto LABEL_332;
        case 0x22u:
        case 0xABu:
        case 0xBBu:
          v99 = -85;
          v100 = 34;
          v101 = -69;
          goto LABEL_865;
        case 0x23u:
          if (nLangIDGlb != 7)
          {
            if (nLangIDGlb == 9 && number_follows(1) && nSubLangIDGlb != 3)
            {
              if (nSubLangIDGlb != 1)
              {
                add_seg(32);
                v49 = &unk_9D000;
                v58 = qword_9D7B0;
                v59 = 34;
                goto LABEL_141;
              }

              v62 = &unk_9D000;
              if ((lFlags & 0x80000) != 0)
              {
                add_seg(2);
                v199 = qword_9D7B0;
                *qword_9D7B0 = **(&stru_20.filesize + pLangGlb);
                qword_9D7B0 = v199 + 1;
              }

              add_seg(32);
              v200 = qword_9D7B0;
              *qword_9D7B0 = 28526;
              *(v200 + 2) = 47;
              v79 = (v200 + 3);
              goto LABEL_581;
            }

            goto LABEL_1396;
          }

          if (is_mathematics() || (v317 = v34[1], in(v34[1], 25)) || v317 == 32 && in(v34[2], 25) || (v473 = &v34[-qword_9D7F0], v34 > qword_9D7F0) && in(*(v34 - 1), 25) || v473 >= 2 && *(v34 - 1) == 32 && in(*(v34 - 2), 25))
          {
            remove_whitespace(0);
          }

          else if ((v317 | 2) != 0x2E && (lFlags & 2) == 0)
          {
LABEL_1396:
            v318 = 4;
            goto LABEL_1397;
          }

          v318 = 32;
LABEL_1397:
          add_seg(v318);
          v49 = &unk_9D000;
          v58 = qword_9D7B0;
          v59 = 35;
          goto LABEL_141;
        case 0x24u:
          if (v34[1] == 36 && v34[2] >= 0x21u && (lFlags & 0x5000000) == 0)
          {
            add_seg(2048);
            v436 = qword_9D7B0;
            *qword_9D7B0 = 36;
            qword_9D7B0 = v436 + 1;
            ++v8[253];
            dword_9D830 = 1;
            goto LABEL_1844;
          }

          v202 = (v36 & 0xC0) != 0 && byte_9D798 != 0 && nLangIDGlb == 7;
          v62 = &unk_9D000;
          if (v202)
          {
            add_seg(2);
            v203 = qword_9D7B0;
            *qword_9D7B0 = 127;
            qword_9D7B0 = v203 + 1;
          }

          add_seg(4);
          v73 = qword_9D7B0;
          v74 = 36;
          goto LABEL_580;
        case 0x25u:
        case 0x89u:
          if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
          {
            if (nLangIDGlb == 12)
            {
              if ((lFlags & 0x40000000) != 0)
              {
                v107 = byte_9D798;
              }

              else
              {
                v107 = 1;
              }

              v108 = &unk_9D000;
              if (v107 == 1)
              {
                add_seg(32);
                v109 = 0;
                v110 = qword_9D7B0;
                v111 = 39;
                do
                {
                  *v110++ = v111;
                  v111 = asc_26C9C[++v109];
                }

                while (v109 != 4);
                qword_9D7B0 = v110;
                if (*v8[253] != 137)
                {
LABEL_698:
                  v255 = v8[253];
                  if (v255[1] == 32 && in(v255[2], 25))
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_1844;
                }

                v112 = 35;
LABEL_697:
                *v110 = v112;
                v108[246] = v110 + 1;
                goto LABEL_698;
              }
            }

            else
            {
              if ((v36 & 0xC0) != 0 && nLangIDGlb == 7)
              {
                v253 = byte_9D798;
              }

              else
              {
                v253 = 0;
              }

              v108 = &unk_9D000;
              if (v253 == 1)
              {
                add_seg(2);
                v254 = qword_9D7B0;
                *qword_9D7B0 = 127;
                qword_9D7B0 = v254 + 1;
              }
            }
          }

          else
          {
            v108 = &unk_9D000;
            if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
            {
              v148 = 16;
LABEL_696:
              add_seg(v148);
              v112 = *v8[253];
              v110 = v108[246];
              goto LABEL_697;
            }
          }

          v148 = 4;
          goto LABEL_696;
        case 0x27u:
          v204 = v34[1];
          if (v204 == 46 && byte_9D804 != 0)
          {
            if (nSubLangIDGlb == 3 && nLangIDGlb == 9 || nLangIDGlb == 7)
            {
              v286 = 32;
            }

            else
            {
              v286 = 0;
            }

            add_seg(v286);
            if (byte_9D798 == 1)
            {
              close_math_passage(0);
LABEL_1160:
              ++v8[253];
              byte_9D804 = 0;
              goto LABEL_1844;
            }

            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              v345 = qword_9D7B0;
              v346 = 11836;
            }

            else
            {
              if (nLangIDGlb != 7)
              {
                goto LABEL_1160;
              }

              v345 = qword_9D7B0;
              v346 = 11815;
            }

            *v345 = v346;
            qword_9D7B0 = (v345 + 1);
            goto LABEL_1160;
          }

          if (v204 == 46 && dword_9D830)
          {
            add_seg(32 * (nLangIDGlb == 7));
            v206 = *&stru_B8.segname[pLangGlb - 8];
            v207 = qword_9D7B0;
            v210 = *v206;
            v208 = v206 + 1;
            v209 = v210;
            do
            {
              *v207++ = v209;
              v211 = *v208++;
              v209 = v211;
            }

            while (v211);
            qword_9D7B0 = v207;
            ++v8[253];
            dword_9D830 = 0;
            goto LABEL_1844;
          }

          if (v204 == 46 && qword_9D828)
          {
LABEL_951:
            add_seg(0);
            qword_9D7C8 = 32;
            v340 = v8[253];
            v342 = v340[1];
            v341 = v340 + 1;
            if ((v342 - 1) <= 0x1E)
            {
              v8[253] = v341;
            }

            v343 = qword_9D828;
            if (qword_9D828 && (qword_9D828 == qword_9D7E0 || !has_whitespace(*(qword_9D828 + 48), qword_9D7E0)))
            {
              v403 = *v343 + v343[1];
              if (*(v403 - 1) == 44 || (*(v403 - 1) = 0, nLangIDGlb != 12))
              {
                v344 = 0;
              }

              else
              {
                v344 = 0;
                **v343 = **&stru_68.segname[pLangGlb + 8];
              }
            }

            else
            {
              v344 = 1;
            }

            v424 = v8[253];
            v425 = v424[1];
            if (*v424 == 51)
            {
              if (v425 == 45 && (nLangIDGlb != 9 || nSubLangIDGlb != 2))
              {
                goto LABEL_1232;
              }

              if (in(v424[1], 11))
              {
                goto LABEL_1228;
              }
            }

            if (v425 == 46 && in(v424[2], 11))
            {
LABEL_1228:
              v426 = *(&stru_68.size + pLangGlb);
              v427 = qword_9D7B0;
              v430 = *v426;
              v428 = v426 + 1;
              v429 = v430;
              do
              {
                *v427++ = v429;
                v431 = *v428++;
                v429 = v431;
              }

              while (v431);
              qword_9D7B0 = v427;
              if (nLangIDGlb == 12)
              {
                byte_9D79C = 1;
              }

LABEL_1541:
              v515 = v8[253];
              if (*v515 == 39)
              {
                v8[253] = ++v515;
              }

              if (v515[1] == 39)
              {
                v516 = v515 + 2;
                do
                {
                  if (*v516 != 46)
                  {
                    break;
                  }

                  v8[253] = v516;
                  v517 = v516[1];
                  v516 += 2;
                }

                while (v517 == 39);
              }

              qword_9D828 = 0;
              goto LABEL_1844;
            }

LABEL_1232:
            if (v344)
            {
              if (nLangIDGlb == 12 || nLangIDGlb == 9 && nSubLangIDGlb == 1)
              {
                v432 = qword_9D7E0;
                v433 = *(qword_9D7E0 + 40);
                if (v433 && *v433 == *(&stru_20.filesize + pLangGlb))
                {
                  v434 = *&stru_68.segname[pLangGlb + 8];
                  v432 = *(qword_9D7E0 + 40);
                }

                else
                {
                  v434 = *&stru_68.segname[pLangGlb + 8];
                }

                insert_list_element(v432, v434, 4096);
              }

              else
              {
                v493 = *(&stru_68.size + pLangGlb);
                v494 = qword_9D7B0;
                v497 = *v493;
                v495 = v493 + 1;
                v496 = v497;
                do
                {
                  *v494++ = v496;
                  v498 = *v495++;
                  v496 = v498;
                }

                while (v498);
                qword_9D7B0 = v494;
                v8 = &unk_9D000;
              }
            }

            goto LABEL_1541;
          }

          if ((v36 & 0x20E0) == 0 && is_number(v34 + 1))
          {
            add_seg(64);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = 39;
            goto LABEL_141;
          }

          if (v36 != 64 || qword_9D7D8 >= 3 && (qword_9D7D8 & 0x24) == 0 && !byte_9D798)
          {
            goto LABEL_1445;
          }

          if (v204 < 0x21 || v204 == 160)
          {
            goto LABEL_1897;
          }

          if (v204 == 39)
          {
            v407 = v34[2];
            if (v407 == 46 || v407 < 0x21 || v407 == 39 && v34[3] == 46)
            {
              goto LABEL_1897;
            }
          }

          else if (v204 - 58 >= 0xFFFFFFF6 && strstr(v34 + 2, "''"))
          {
LABEL_1897:
            if (nLangIDGlb == 9 && nSubLangIDGlb == 1)
            {
              add_seg(32);
              if (*(qword_9D7E8 + 1) == 39 && (byte_9D798 != 1 || *(qword_9D7E8 + 2) != 46))
              {
                v638 = 0;
                ++qword_9D7E8;
                v639 = qword_9D7B0;
                v640 = 60;
                do
                {
                  *v639++ = v640;
                  v640 = aSec_0[++v638];
                }

                while (v638 != 4);
                qword_9D7B0 = v639;
                goto LABEL_1925;
              }

              v631 = qword_9D7B0;
              *qword_9D7B0 = 27964;
              *(v631 + 2) = 42;
              v632 = v631 + 3;
            }

            else
            {
              if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
              {
                add_seg(32);
                if (*(qword_9D7E8 + 1) == 39 && (byte_9D798 != 1 || *(qword_9D7E8 + 2) != 46))
                {
                  v8 = &unk_9D000;
                  ++qword_9D7E8;
                  v650 = qword_9D7B0;
                  *qword_9D7B0 = 15655;
                  qword_9D7B0 = v650 + 2;
                  goto LABEL_1926;
                }

                v633 = qword_9D7B0;
                v634 = 46;
              }

              else
              {
                if (nLangIDGlb == 7 && byte_9D798)
                {
                  add_seg(2);
                  v635 = qword_9D7B0;
                  *qword_9D7B0 = 127;
                  qword_9D7B0 = v635 + 1;
                }

                add_seg(32);
                if (nLangIDGlb == 9 || nLangIDGlb == 7)
                {
                  v636 = qword_9D7B0;
                  *qword_9D7B0 = 34;
                  qword_9D7B0 = v636 + 1;
                }

                if (*(qword_9D7E8 + 1) == 39 && (byte_9D798 != 1 || *(qword_9D7E8 + 2) != 46))
                {
                  ++qword_9D7E8;
                  v637 = qword_9D7B0;
                  *qword_9D7B0 = 42;
                  qword_9D7B0 = v637 + 1;
                }

                v633 = qword_9D7B0;
                v634 = 42;
              }

              *v633 = v634;
              v632 = (v633 + 1);
            }

            qword_9D7B0 = v632;
LABEL_1925:
            v8 = &unk_9D000;
LABEL_1926:
            v23 = &unk_9D000;
            goto LABEL_1844;
          }

LABEL_1445:
          v486 = nLangIDGlb;
          v487 = nSubLangIDGlb;
          v489 = nLangIDGlb == 9 && nSubLangIDGlb != 3;
          if (v36 == 0x2000 && v489)
          {
            v490 = qword_9D7B0;
            if (qword_9D7B0 - v22[250] == 1 && equals_nocase(v34 - 1, "O'CLOCK"))
            {
              *v490 = 39;
              qword_9D7B0 = (v490 + 1);
LABEL_1861:
              v8 = &unk_9D000;
              goto LABEL_1863;
            }

            v491 = 0;
          }

          else
          {
            v491 = nLangIDGlb == 12;
            if (v36 == 0x2000 && nLangIDGlb == 12)
            {
              v492 = qword_9D7B0;
              if (qword_9D7B0 - qword_9D7D0 == 1 && (equals_nocase(v34 + 1, "EN") || equals_nocase(v34 + 1, "OR") || equals_nocase(v34 + 1, "TR")))
              {
                *v492 = 46;
                qword_9D7B0 = (v492 + 1);
                goto LABEL_1861;
              }

              v491 = 1;
            }

            else if (v36 == 64)
            {
              if (!v204)
              {
LABEL_1860:
                add_seg(32);
                v624 = qword_9D7B0;
                *qword_9D7B0 = **(&stru_108.offset + *(&stru_20.cmd + pLangGlb));
                qword_9D7B0 = v624 + 1;
                goto LABEL_1861;
              }

              if (v204 - 58 > 0xFFFFFFF5)
              {
                v518 = get_separator(0);
                v519 = qword_9D7B0;
                *qword_9D7B0 = v518;
                qword_9D7B0 = v519 + 1;
                goto LABEL_1861;
              }
            }
          }

          if (v204 == 46)
          {
            if (v34[2] >= 0x20u && (lFlags & 0x800000) == 0 && (v36 < 3 || v36 == 0x2000))
            {
              if (v487 == 3 && v486 == 9 || v486 == 7)
              {
                v592 = 32;
              }

              else
              {
                v592 = 0;
              }

              add_seg(v592);
              v593 = nLangIDGlb == 9;
              v594 = nSubLangIDGlb == 3;
              v595 = qword_9D7B0;
              v596 = !v593 || !v594;
              if (v593 && v594)
              {
                v597 = 60;
              }

              else
              {
                v597 = 39;
              }

              if (v596)
              {
                v598 = 46;
              }

              else
              {
                v598 = 60;
              }

              *qword_9D7B0 = v597;
              *(v595 + 1) = v598;
              qword_9D7B0 = v595 + 2;
              v8 = &unk_9D000;
              ++qword_9D7E8;
              byte_9D79C = 1;
              goto LABEL_1863;
            }
          }

          else if (v204 == 36 && (lFlags & 0x1000000) == 0 && (v36 < 3 || v36 == 0x2000))
          {
            add_seg(2048);
            v599 = qword_9D7B0;
            *qword_9D7B0 = 9255;
            qword_9D7B0 = v599 + 2;
            v8 = &unk_9D000;
            ++qword_9D7E8;
LABEL_1863:
            v23 = &unk_9D000;
            v22 = &unk_9D000;
            goto LABEL_1844;
          }

          v600 = dword_9D7A0;
          if (!v204 || v36 != 0x2000 || !v489 && !v491 || !dword_9D7A0)
          {
            goto LABEL_1848;
          }

          if (v204 > 0xDE || v204 - 123 >= 0xFFFFFFE6)
          {
            if (!in(v34[2], 11))
            {
              goto LABEL_1862;
            }
          }

          else if (v204 - 192 < 0x1F)
          {
            goto LABEL_1862;
          }

          if (v204 - 91 < 0xFFFFFFE6)
          {
LABEL_1848:
            v617 = v486 == 9 || v491;
            if (v36 == 0x2000 && v617 && v600)
            {
              if (v486 != 9 || v487 != 3)
              {
                v618 = *&stru_68.segname[pLangGlb];
                v619 = qword_9D7B0;
                v622 = *v618;
                v620 = v618 + 1;
                v621 = v622;
                do
                {
                  *v619++ = v621;
                  v623 = *v620++;
                  v621 = v623;
                }

                while (v623);
                qword_9D7B0 = v619;
              }

              dword_9D7A0 = 0;
            }

            goto LABEL_1860;
          }

LABEL_1862:
          v625 = qword_9D7B0;
          *qword_9D7B0 = **(&stru_108.offset + *(&stru_20.cmd + pLangGlb));
          v8 = &unk_9D000;
          *(v625 + 1) = *++qword_9D7E8 & 0xDF;
          qword_9D7B0 = v625 + 2;
          goto LABEL_1863;
        case 0x2Au:
          if (v36 == 256)
          {
            goto LABEL_1039;
          }

          if (!v36 && is_number(v34 + 1))
          {
            add_seg(16);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = 42;
            goto LABEL_141;
          }

          v312 = v34[1];
          if (v312 == 30)
          {
            if (v34[2] != 42)
            {
              goto LABEL_1039;
            }

            if (is_number(v34 + 3))
            {
              goto LABEL_1037;
            }

            v313 = v34[3];
            if (!v34[3])
            {
              goto LABEL_1039;
            }
          }

          else
          {
            if (v312 != 42)
            {
              goto LABEL_1039;
            }

            if (is_number(v34 + 2))
            {
              goto LABEL_1037;
            }

            v313 = v34[2];
            if (!v34[2])
            {
LABEL_1039:
              if (number_follows(1) || (v376 = v34[1], v376 == 35) || v376 == 32 && v34[2] == 35 || is_mathematics() && v34 > qword_9D7F0 && *(v34 - 1) == 32)
              {
                if (number_precedes(1) || v34 > qword_9D7F0 && *(v34 - 1) == 35 || &v34[-qword_9D7F0] >= 2 && *(v34 - 1) == 32 && *(v34 - 2) == 35 || (v377 = is_mathematics(), v36) && v377)
                {
                  remove_whitespace(0);
                  add_seg(16);
                  v67 = qword_9D7B0;
                  v68 = 42;
                  goto LABEL_165;
                }
              }

              add_seg(256);
              v378 = qword_9D7B0;
              if (nLangIDGlb == 9 && nSubLangIDGlb != 3)
              {
                if (qword_9D7D8 == 0x2000)
                {
                  *qword_9D7B0 = 32;
                  ++v378;
                }

                *v378++ = 42;
              }

              *v378 = 42;
              qword_9D7B0 = (v378 + 1);
              if (nLangIDGlb == 7)
              {
                v379 = lFlags;
                if ((lFlags & 6) == 0)
                {
                  v380 = v8[253];
                  if (equals_nocase(v380 + 1, "in"))
                  {
                    if ((v379 & 0x400) != 0 || !equals_nocase(v380 + 1, "interess"))
                    {
                      v378[1] = 105;
                      qword_9D7B0 = (v378 + 2);
LABEL_197:
                      ++v8[253];
                    }
                  }
                }
              }

              goto LABEL_1844;
            }
          }

          if (!memchr("({[<\x91", v313, 6uLL))
          {
            goto LABEL_1039;
          }

LABEL_1037:
          add_seg(128);
          if (nLangIDGlb == 12)
          {
            v375 = qword_9D7B0;
            *qword_9D7B0 = 34;
            qword_9D7B0 = v375 + 1;
            byte_9D79C = 1;
            goto LABEL_1481;
          }

          if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
          {
            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              v437 = lFlags;
              goto LABEL_1403;
            }

            if (nLangIDGlb != 7)
            {
LABEL_1478:
              v501 = qword_9D7B0;
              v502 = 48;
              goto LABEL_1479;
            }

            v501 = qword_9D7B0;
            v502 = 124;
          }

          else
          {
            if ((byte_9D798 & 1) == 0)
            {
              v437 = lFlags;
              if ((lFlags & 0x40000000) != 0)
              {
                if (nSubLangIDGlb != 3)
                {
                  goto LABEL_1478;
                }

LABEL_1403:
                v474 = qword_9D7B0;
                if ((v437 & 4) == 0)
                {
                  *qword_9D7B0 = 60;
                  v474 = (v474 + 1);
                }

                *v474 = 9002;
                qword_9D7B0 = (v474 + 1);
                goto LABEL_1480;
              }
            }

            v501 = qword_9D7B0;
            v502 = 62;
          }

LABEL_1479:
          *v501 = v502;
          qword_9D7B0 = (v501 + 1);
LABEL_1480:
          v8 = &unk_9D000;
LABEL_1481:
          v503 = v8[253];
          v8[253] = v503 + 1;
          if (v503[1] == 30)
          {
            qword_9D7A8 = 1;
            v8[253] = v503 + 2;
          }

          goto LABEL_1885;
        case 0x2Bu:
        case 0x3Du:
        case 0xB1u:
        case 0xD7u:
        case 0xF7u:
          if ((number_precedes(1) || &v34[-qword_9D7F0] >= 2 && *(v34 - 1) == 32 && *(v34 - 2) == 35) && !is_number(v34) || is_mathematics() && (v35 != 61 || v34[1] != 61 || v34[2] != 61))
          {
            remove_whitespace(0);
          }

          if (nLangIDGlb != 7 || *v8[253] != 61 || (lFlags & 0x20000) != 0 || (byte_9D798 & 1) != 0 || number_follows(1) || number_precedes(1))
          {
            add_seg(16);
            v117 = qword_9D7B0;
            *qword_9D7B0 = *v8[253];
            qword_9D7B0 = v117 + 1;
            goto LABEL_325;
          }

          add_seg(32);
          v438 = v8[253];
          if (v438[1] == 61 && v438[2] == 61)
          {
            v439 = qword_9D7B0;
            *qword_9D7B0 = 61;
            v440 = (v439 + 1);
          }

          else
          {
            v454 = qword_9D7B0;
            *qword_9D7B0 = 15650;
            v440 = (v454 + 2);
          }

          qword_9D7B0 = v440;
          v455 = v8[253];
          if (!*v455)
          {
            goto LABEL_325;
          }

          v456 = v22[250];
          do
          {
LABEL_1323:
            v458 = *++v455;
            v457 = v458;
            if (v458 != 61 && v457 != 30)
            {
              break;
            }

            v8[253] = v455;
            v460 = *v455;
            if (v460 == 30)
            {
              qword_9D7A8 = v440 - v456 + 1;
              goto LABEL_1323;
            }

            *v440++ = v460;
            qword_9D7B0 = v440;
            v455 = v8[253];
          }

          while (*v455);
LABEL_325:
          if (!v36)
          {
            goto LABEL_1844;
          }

          if (!number_follows(1))
          {
            goto LABEL_327;
          }

          goto LABEL_166;
        case 0x2Cu:
          if ((v36 & 0xC0) == 0 && is_number(v34))
          {
            add_seg(64);
          }

          v166 = nLangIDGlb;
          if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
          {
            v168 = qword_9D7C8;
            v169 = &unk_9D000;
          }

          else
          {
            v168 = qword_9D7C8;
            v169 = &unk_9D000;
            if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
            {
              if ((qword_9D7C8 & 0xC0) == 0)
              {
                if (qword_9D7C8 != 16)
                {
                  if (qword_9D7C8 != 4)
                  {
                    goto LABEL_713;
                  }

                  if (*(v8[253] - 1) != 45 || !qword_9D7F8 || *(qword_9D7E0 + 24) != 64)
                  {
LABEL_1251:
                    add_seg(8);
LABEL_1252:
                    v338 = v169[246];
                    v339 = 44;
                    goto LABEL_1253;
                  }
                }

                add_seg(32);
              }

              v338 = qword_9D7B0;
              v339 = 39;
LABEL_1253:
              *v338 = v339;
              v264 = v338 + 1;
              goto LABEL_1254;
            }
          }

LABEL_713:
          if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && v168 == 64)
          {
            goto LABEL_1252;
          }

          if ((v168 & 0xC0) == 0)
          {
            goto LABEL_722;
          }

          v258 = v8[253];
          v259 = v258[1];
          if (!v258[1])
          {
            goto LABEL_722;
          }

          if ((v259 - 58) > 0xFFFFFFF5)
          {
            v451 = v169[246];
            if (nLangIDGlb == 9)
            {
              *v451 = get_separator(0);
              v452 = v451 + 1;
LABEL_1529:
              v169[246] = v452;
              goto LABEL_1844;
            }
          }

          else
          {
            if (nLangIDGlb != 7 || v259 != 40 || v258[2] - 58 < 0xFFFFFFF6)
            {
LABEL_722:
              if (v168 == 64)
              {
                v260 = v8[253];
                if ((v260[1] != 32 || (v261 = is_any_number(v260 + 2)) == 0 || (v261 + 33) <= 0xE0u && (v261 - 91) <= 0xE5u) && number_follows(1))
                {
                  if (v166 == 9)
                  {
                    v262 = get_separator(0);
                    v263 = v169[246];
                    *v263 = v262;
                    v264 = v263 + 1;
                    goto LABEL_1254;
                  }

                  v478 = v169[246];
                  *v478 = stru_B8.segname[pLangGlb + 1];
                  v169[246] = v478 + 1;
                  goto LABEL_1844;
                }
              }

              goto LABEL_1251;
            }

            v451 = v169[246];
          }

          *v451 = stru_B8.segname[pLangGlb + 1];
          v452 = v451 + 1;
          goto LABEL_1529;
        case 0x2Du:
          v192 = v34[1];
          if (v192 == 46)
          {
            v193 = v34[2];
            if (v193 >= 0x21 && v193 != 160 && !in(v34[2], 5) && (lFlags & 0x800000) == 0 && (lFlags & 0x7FFE) != 0x7FFE)
            {
              if ((v193 - 58) < 0xF6u || nLangIDGlb != 9)
              {
                add_seg(32);
                v499 = qword_9D7B0;
                if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
                {
                  *qword_9D7B0 = 15420;
                  *(v499 + 2) = 60;
                  v500 = v499 + 3;
                }

                else
                {
                  v500 = qword_9D7B0 + 2;
                  *qword_9D7B0 = 11821;
                }

                qword_9D7B0 = v500;
                v8 = &unk_9D000;
                ++qword_9D7E8;
                byte_9D804 = 1;
                goto LABEL_1844;
              }

              v194 = 4;
              goto LABEL_1645;
            }
          }

          else if ((v36 & 0x20C0) == 0 && v192 == 44 && v34[2] - 58 >= 0xFFFFFFF6)
          {
            v320 = 64;
            goto LABEL_1144;
          }

          if (v36 == 0x2000)
          {
            if (v192 < 0x21 || v192 == 160 || (v283 = memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v192, 0x15uLL), v192 != 45) && v283)
            {
              if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
              {
                byte_9D79C = 0;
              }

LABEL_1145:
              v49 = &unk_9D000;
              v58 = qword_9D7B0;
              v59 = 45;
              goto LABEL_141;
            }
          }

          else if (v36 <= 8 && is_number(v34))
          {
            add_seg(16);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = -106;
            goto LABEL_141;
          }

          if (number_follows(1) || v192 == 35 || v192 == 32 && v34[2] == 35 || (v385 = is_mathematics(), v386 = qword_9D7F0, v385) && v34 > qword_9D7F0 && (*(v34 - 1) | 0x80) == 0xA0)
          {
            if (number_precedes(1) || (v386 = qword_9D7F0, v34 > qword_9D7F0) && *(v34 - 1) == 35 || &v34[-qword_9D7F0] >= 2 && (*(v34 - 1) | 0x80) == 0xA0 && *(v34 - 2) == 35 || (v393 = is_mathematics(), v36) && v393)
            {
              if (is_mathematics() || v192 == 35 || v192 == 32 && v34[2] == 35 || v34 > qword_9D7F0 && *(v34 - 1) == 35 || &v34[-qword_9D7F0] >= 2 && *(v34 - 1) == 32 && *(v34 - 2) == 35)
              {
LABEL_883:
                remove_whitespace(0);
                add_seg(16);
                v67 = qword_9D7B0;
                v68 = -106;
                goto LABEL_165;
              }

              if ((v192 | 0x80) != 0xA0)
              {
                if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
                {
                  if (nLangIDGlb == 12)
                  {
                    v509 = 16;
                    if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
                    {
                      goto LABEL_1511;
                    }

                    goto LABEL_1510;
                  }
                }

                else
                {
                  v509 = 16;
                  if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
                  {
                    goto LABEL_1511;
                  }
                }

                if (nLangIDGlb == 9 && nSubLangIDGlb == 1)
                {
                  goto LABEL_1512;
                }

                goto LABEL_1510;
              }

LABEL_1174:
              v410 = 45;
LABEL_1175:
              process_dash(v410, 0);
              goto LABEL_1647;
            }
          }

          if (v192 != 45)
          {
            goto LABEL_1489;
          }

          v394 = v34[2];
          if (v394 == 45)
          {
            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              byte_9D79C = 0;
              dword_9D7A0 = 0;
            }

            add_seg(32);
            v395 = qword_9D7B0;
            *qword_9D7B0 = 45;
            v396 = (v395 + 1);
            qword_9D7B0 = v396;
            v8 = &unk_9D000;
            v397 = qword_9D7E8;
            if (*qword_9D7E8)
            {
              v398 = v22[250];
              while (1)
              {
                v400 = *++v397;
                v399 = v400;
                if (v400 != 45 && v399 != 30)
                {
                  break;
                }

                qword_9D7E8 = v397;
                v402 = *v397;
                if (v402 == 30)
                {
                  qword_9D7A8 = v396 - v398 + 1;
                }

                else
                {
                  *v396++ = v402;
                  qword_9D7B0 = v396;
                  v397 = qword_9D7E8;
                  if (!*qword_9D7E8)
                  {
                    goto LABEL_1844;
                  }
                }
              }
            }

            goto LABEL_1844;
          }

          if ((v36 & 0xC8) != 0)
          {
            goto LABEL_1494;
          }

          if ((v394 < 0x21 || v394 == 160 || in(v394, 9)) && (*(qword_9D7B0 - 1) | 2) != 0x2E)
          {
            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              byte_9D79C = 0;
              dword_9D7A0 = 0;
LABEL_1979:
              v410 = 150;
              goto LABEL_1175;
            }

LABEL_1980:
            v410 = 151;
            goto LABEL_1175;
          }

LABEL_1489:
          if (v36 != 2)
          {
LABEL_1494:
            v505 = nLangIDGlb;
            if (v36 == 0x2000 && nLangIDGlb == 9)
            {
              v506 = v22[250];
              if (qword_9D7B0 - v506 == 2 && (&v34[-v386] < 3 || *(v34 - 3) <= 0x20u))
              {
                for (i = 0; i != 2; ++i)
                {
                  do
                  {
                    v629 = *v506++;
                  }

                  while (v629 == 173 || v629 == 30);
                  if (v629 != aTo[i])
                  {
                    goto LABEL_1499;
                  }
                }

                v8 = &unk_9D000;
                if (equals_nocase(v34 + 1, "DAY") || equals_nocase(v34 + 1, "NIGHT") || equals_nocase(v34 + 1, "MORROW"))
                {
                  goto LABEL_1844;
                }
              }

LABEL_1499:
              v505 = 9;
            }
          }

          else
          {
            v504 = in(v192, 9);
            v505 = nLangIDGlb;
            if (v504)
            {
              if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
              {
                byte_9D79C = 0;
              }

              else if (nLangIDGlb == 7)
              {
                add_seg(0x2000);
                v626 = qword_9D7B0;
                if ((lFlags & 8) == 0)
                {
                  v627 = -105;
LABEL_1869:
                  *v626 = v627;
                  qword_9D7B0 = (v626 + 1);
                  dword_9D7A0 = 0;
                  goto LABEL_1647;
                }

LABEL_1868:
                v627 = 45;
                goto LABEL_1869;
              }

              add_seg(4);
              v626 = qword_9D7B0;
              goto LABEL_1868;
            }
          }

          v507 = v505 == 9 && nSubLangIDGlb == 3;
          v508 = v507;
          if (v507)
          {
            byte_9D79C = 0;
            dword_9D7A0 = 0;
          }

          if (v36 > 2)
          {
            goto LABEL_1510;
          }

          if (v36 == 1)
          {
            if (*(v34 - 1) != 46)
            {
              if (!is_number(v34))
              {
                goto LABEL_1976;
              }

LABEL_1644:
              v194 = 16;
LABEL_1645:
              add_seg(v194);
              v510 = qword_9D7B0;
              v511 = -106;
              goto LABEL_1646;
            }

LABEL_1510:
            v509 = 4;
LABEL_1511:
            add_seg(v509);
LABEL_1512:
            v510 = qword_9D7B0;
            v511 = 45;
LABEL_1646:
            *v510 = v511;
            qword_9D7B0 = (v510 + 1);
            goto LABEL_1647;
          }

          if (is_number(v34))
          {
            goto LABEL_1644;
          }

          if (v36 != 2)
          {
            goto LABEL_1976;
          }

          if ((v192 | 0x80) != 0xA0)
          {
            goto LABEL_1976;
          }

          if (!in(v34[2], 9))
          {
            goto LABEL_1976;
          }

          v641 = v34[3];
          if (v641 >= 0x21)
          {
            v642 = memchr(")}]>\x9B", v34[3], 6uLL);
            if (v641 != 46 && !v642)
            {
              if (!in(v641, 9))
              {
                goto LABEL_1976;
              }

              v643 = v34[4];
              if (v643 >= 0x21)
              {
                v652 = memchr(")}]>\x9B", v34[4], 6uLL);
                if (v643 != 46 && !v652)
                {
                  goto LABEL_1976;
                }
              }
            }
          }

          v644 = &v34[-v386];
          if (v644 < 2 || ((v645 = *(v34 - 2), !in(*(v34 - 2), 9)) || v644 != 2 && (v646 = *(v34 - 3), v646 >= 0x21) && (!in(v646, 9) || v644 != 3 && *(v34 - 4) >= 0x21u)) && (!v645 || (v647 = memchr(")}]>\x9B", v645, 6uLL), v645 != 46) && !v647 || v644 != 2 && (v648 = *(v34 - 3), v648 >= 0x21) && (!in(v648, 9) || v644 != 3 && (v649 = *(v34 - 4), v649 >= 0x21) && (!in(v649, 9) || v644 != 4 && *(v34 - 5) > 0x20u))))
          {
LABEL_1976:
            if (qword_9D7D8 <= 1)
            {
              add_seg(4);
              v510 = qword_9D7B0;
              v511 = -105;
              goto LABEL_1646;
            }

            if (v508)
            {
              goto LABEL_1979;
            }

            goto LABEL_1980;
          }

          goto LABEL_1174;
        case 0x2Eu:
          if (v36 - 1 > 1)
          {
            v214 = 0;
          }

          else
          {
            v212 = v34[1];
            v214 = v212 < 0x21 || v212 == 160;
          }

          if ((v36 & 0x20C0) == 0 && is_number(v34))
          {
            add_seg(64);
            v36 = qword_9D7C8;
            v34 = v8[253];
          }

          v287 = v34[1];
          if (v36 == 64 && (v287 - 48) <= 9u)
          {
            if (nLangIDGlb == 9)
            {
              v49 = &unk_9D000;
              if (nSubLangIDGlb == 2)
              {
                v58 = qword_9D7B0;
              }

              else
              {
                v58 = qword_9D7B0;
                if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
                {
                  v59 = 36;
                  goto LABEL_141;
                }
              }

              v59 = stru_B8.segname[pLangGlb + 1];
              goto LABEL_141;
            }

            if (nLangIDGlb == 12)
            {
              v288 = qword_9D7B0;
              if ((lFlags & 0x40000) != 0)
              {
                *qword_9D7B0 = 47;
                v289 = (v288 + 1);
LABEL_1025:
                qword_9D7B0 = v289;
                goto LABEL_1844;
              }
            }

            else
            {
              v288 = qword_9D7B0;
            }

            *v288 = get_separator(0);
            v289 = (v288 + 1);
            goto LABEL_1025;
          }

          if ((v287 | 2) == 0x2E)
          {
            if (nLangIDGlb != 7)
            {
              goto LABEL_1649;
            }

            if (v214)
            {
              goto LABEL_1356;
            }

            if ((v36 & 0xC) == 0 || v287 == 46)
            {
              goto LABEL_1649;
            }

LABEL_1355:
            if (!in(v34[1], 5))
            {
              goto LABEL_1650;
            }

LABEL_1356:
            if ((lFlags & 0x40) == 0)
            {
              add_seg(4);
              v464 = qword_9D7B0;
              *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
              qword_9D7B0 = v464 + 1;
              v34 = v8[253];
              v287 = v34[1];
            }

LABEL_1649:
            if (v287 == 46)
            {
              goto LABEL_1652;
            }

LABEL_1650:
            if (qword_9D7C8 == 32 && *(v34 - 1) == 46)
            {
LABEL_1652:
              if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && ((lFlags >> 30) & 1 & ~byte_9D798) == 0 && qword_9D7C8 == 64)
              {
                v556 = 9;
                v557 = &unk_9D000;
              }

              else
              {
                add_seg(32);
                v556 = nLangIDGlb;
                v557 = &unk_9D000;
                if (nLangIDGlb == 12)
                {
                  if ((lFlags & 0x40000) == 0)
                  {
LABEL_1687:
                    v567 = 46;
LABEL_1689:
                    v568 = v557[246];
                    *v568 = v567;
                    v569 = v568 + 1;
                    v570 = v8[253];
                    if (!*v570)
                    {
LABEL_1704:
                      v557[246] = v569;
                      goto LABEL_1844;
                    }

                    v571 = byte_9D798 ^ 1;
                    v572 = qword_9D7C8;
                    while (1)
                    {
                      v574 = v570[1];
                      v573 = v570 + 1;
                      if (v574 != 46)
                      {
                        goto LABEL_1704;
                      }

                      v8[253] = v573;
                      if (nLangIDGlb == 12)
                      {
                        if ((lFlags & 0x40000) == 0)
                        {
                          goto LABEL_1702;
                        }
                      }

                      else
                      {
                        v576 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
                        if (!v576 || (v571 & ((lFlags & 0x40000000) != 0)) == 0 && v572 == 64)
                        {
LABEL_1702:
                          v575 = 46;
                          goto LABEL_1703;
                        }
                      }

                      v575 = **&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
LABEL_1703:
                      *v569++ = v575;
                      v570 = v8[253];
                      if (!*v570)
                      {
                        goto LABEL_1704;
                      }
                    }
                  }

LABEL_1688:
                  v567 = **&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
                  goto LABEL_1689;
                }
              }

              v567 = 46;
              if (v556 != 9 || nSubLangIDGlb != 3)
              {
                goto LABEL_1689;
              }

              if (((lFlags >> 30) & 1 & ~byte_9D798) == 0 && qword_9D7C8 == 64)
              {
                goto LABEL_1687;
              }

              goto LABEL_1688;
            }

            v560 = nLangIDGlb == 9 && nSubLangIDGlb != 3 || nLangIDGlb == 12;
            if (qword_9D7C8 == 0x2000 && v560 && dword_9D7A0)
            {
              if (!v287)
              {
LABEL_1680:
                add_seg(32);
                if (nLangIDGlb != 12 || (lFlags & 0x40000) != 0)
                {
                  v170 = *&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
LABEL_481:
                  v105 = *v170;
LABEL_482:
                  v171 = qword_9D7B0;
                  *qword_9D7B0 = v105;
                  qword_9D7B0 = v171 + 1;
                  goto LABEL_1844;
                }

                v49 = &unk_9D000;
                v58 = qword_9D7B0;
                v59 = 46;
LABEL_141:
                *v58 = v59;
                v60 = v58 + 1;
LABEL_142:
                v49[246] = v60;
                goto LABEL_1844;
              }

              if ((v287 + 33) <= 0xE0u && (v287 - 91) < 0xE6u)
              {
                v8 = &unk_9D000;
                if (v287 > 0xDE || (v287 - 123) >= 0xE6u)
                {
                  v561 = *&stru_68.segname[pLangGlb];
                  v562 = qword_9D7B0;
                  v565 = *v561;
                  v563 = v561 + 1;
                  v564 = v565;
                  do
                  {
                    *v562++ = v564;
                    v566 = *v563++;
                    v564 = v566;
                  }

                  while (v566);
                  qword_9D7B0 = v562;
                  dword_9D7A0 = 0;
                  v8 = &unk_9D000;
                }

                goto LABEL_1680;
              }

              if (nLangIDGlb == 12)
              {
                v578 = qword_9D7B0;
                if ((lFlags & 0x40000) == 0)
                {
                  v579 = 46;
LABEL_1725:
                  *v578 = v579;
                  qword_9D7B0 = (v578 + 1);
                  v8 = &unk_9D000;
                  goto LABEL_1844;
                }
              }

              else
              {
                v578 = qword_9D7B0;
              }

              v579 = **&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
              goto LABEL_1725;
            }

            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              v577 = 8;
              if (qword_9D7C8 == 64 && !byte_9D798)
              {
                v8 = &unk_9D000;
                v62 = &unk_9D000;
                if ((lFlags & 0x40000000) != 0)
                {
                  v142 = *&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
                  goto LABEL_1110;
                }

                goto LABEL_1722;
              }

LABEL_1721:
              v8 = &unk_9D000;
              v62 = &unk_9D000;
LABEL_1722:
              add_seg(v577);
              v73 = v62[246];
              v74 = 46;
              goto LABEL_580;
            }

            if (nLangIDGlb == 12)
            {
              if ((lFlags & 0x40000) == 0)
              {
                v577 = 32;
                goto LABEL_1721;
              }
            }

            else if (nLangIDGlb == 9)
            {
              v577 = 8;
              goto LABEL_1721;
            }

            v577 = 4;
            goto LABEL_1721;
          }

          if (v36 == 64)
          {
            if ((v287 | 0x80) != 0xA0)
            {
              goto LABEL_1282;
            }
          }

          else if (v36 == 2 && (v287 - 58) > 0xF5u)
          {
LABEL_1282:
            if (!v214)
            {
              goto LABEL_1346;
            }

            goto LABEL_1288;
          }

          if (!v214)
          {
            if (v287 == 46 || (v36 & 0xC) == 0)
            {
              v8 = &unk_9D000;
              goto LABEL_1649;
            }

            v8 = &unk_9D000;
            if (nLangIDGlb != 7)
            {
              goto LABEL_1649;
            }

            goto LABEL_1355;
          }

          if ((!number_follows(1) || !number_precedes(1)) && !is_mathematics())
          {
            if (nLangIDGlb != 7)
            {
              goto LABEL_1649;
            }

            goto LABEL_1356;
          }

LABEL_1288:
          if (number_follows(1) && number_precedes(1) || is_mathematics())
          {
            remove_whitespace(0);
            add_seg(16);
            v67 = qword_9D7B0;
            v68 = 46;
LABEL_165:
            *v67 = v68;
            qword_9D7B0 = (v67 + 1);
            goto LABEL_166;
          }

LABEL_1346:
          if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
          {
            if (v36 == 64 && !byte_9D798 && (lFlags & 0x40000000) != 0)
            {
              v463 = qword_9D7B0;
              *qword_9D7B0 = **&stru_158.segname[*(&stru_20.cmd + pLangGlb) + 8];
              qword_9D7B0 = v463 + 1;
LABEL_1647:
              v8 = &unk_9D000;
              goto LABEL_1844;
            }
          }

          else if (nLangIDGlb != 9)
          {
            v481 = 4;
            goto LABEL_1635;
          }

          v481 = 8;
LABEL_1635:
          add_seg(v481);
          v510 = qword_9D7B0;
          v511 = 46;
          goto LABEL_1646;
        case 0x2Fu:
          if (v36 == 2 && ((v218 = v34[1], v219 = 1, v218 < 0x21) || v218 == 160) || (v219 = 0, v220 = 0, is_mathematics()))
          {
            remove_whitespace(0);
            v36 = qword_9D7C8;
            v220 = v219;
          }

          if (!v36)
          {
            v314 = v8[253][1];
            if (v314 != 9 && v314 != 160 && v314 != 32)
            {
              goto LABEL_887;
            }
          }

          v221 = byte_9D798;
          if (byte_9D798)
          {
            goto LABEL_610;
          }

          if (is_any_number(v8[253] + 1) == 47)
          {
            goto LABEL_887;
          }

          if (v36 == 64 && qword_9D7F8)
          {
            if (*(qword_9D7E0 + 24) == 4 && **qword_9D7E0 == 47)
            {
LABEL_887:
              add_seg(4);
              v315 = qword_9D7B0;
              *qword_9D7B0 = 47;
              qword_9D7B0 = v315 + 1;
              skip_whitespace(0);
              if (v220)
              {
                goto LABEL_166;
              }

              goto LABEL_327;
            }
          }

          else
          {
LABEL_610:
            if (!v36 && is_number(v8[253] + 1))
            {
              goto LABEL_990;
            }
          }

          if (!is_mathematics() || nLangIDGlb == 9 && nSubLangIDGlb != 2 || v36 == 64 && is_number(v8[253] + 1))
          {
            v222 = v23;
            v223 = number_follows(0);
            if (v223 && number_precedes(0))
            {
              if ((v220 & 1) != 0 || (v443 = lFlags, (lFlags & 0x8000000) != 0) || !qword_9D7F8 || (v444 = qword_9D7E0, *(qword_9D7E0 + 24) != 2) || (v445 = *(qword_9D7E0 + 8), v445 != 1) && (v445 != 2 || !byte_9D800) || (v446 = *(qword_9D7E0 + 40)) == 0 || *(v446 + 24) != 64 || (v447 = *v446, strchr(*v446, 44)) || strchr(v447, 46) || (v448 = *(v446 + 40)) != 0 && memchr("|/\xF7teress", **v448, 4uLL))
              {
LABEL_619:
                if (((nLangIDGlb == 9) & ~v220) == 1 && nSubLangIDGlb == 2)
                {
                  v224 = v8[253];
                  v225 = v224[1];
                  if (v225 < 0x21 || v225 == 160)
                  {
LABEL_1239:
                    remove_whitespace(1);
                    if (((v220 & 1) != 0 || qword_9D7D8 == 1 && qword_9D7F8 && **qword_9D7E0 == 11) && (nLangIDGlb == 7 || nLangIDGlb == 9 && nSubLangIDGlb == 3) && !strchr(v8[253] + 1, 61))
                    {
                      v435 = 4;
                    }

                    else
                    {
                      v435 = 16;
                    }

                    add_seg(v435);
                    if (v220)
                    {
                      v467 = nLangIDGlb == 9 && nSubLangIDGlb != 2;
                      if ((nLangIDGlb == 12 || v467) && !strchr(v8[253] + 1, 61))
                      {
                        v408 = 1;
                        v409 = 124;
                      }

                      else
                      {
                        v408 = 1;
                        v409 = 47;
                      }

                      goto LABEL_1377;
                    }

                    v469 = 1;
                    v470 = 47;
                    goto LABEL_1968;
                  }

                  v226 = 0;
                  v227 = 2;
                  do
                  {
                    if (v225 == 47)
                    {
                      ++v226;
                    }

                    v225 = v224[v227];
                    if (v225 < 0x21)
                    {
                      break;
                    }

                    ++v227;
                  }

                  while (v225 != 160);
                  if (v226 == 1 && qword_9D7B0 - v22[250] <= 2)
                  {
                    while (1)
                    {
                      v228 = *v224;
                      if (v228 == 47)
                      {
                        add_seg(0);
                      }

                      else
                      {
                        if (!*v224 || (v228 - 58) < 0xFFFFFFF6)
                        {
                          v8[253] = v224 - 1;
                          goto LABEL_1465;
                        }

                        add_seg(64);
                        v229 = upper_digit(*v8[253]);
                        v230 = qword_9D7B0;
                        *qword_9D7B0 = v229;
                        qword_9D7B0 = v230 + 1;
                      }

                      v224 = v8[253] + 1;
                      v8[253] = v224;
                    }
                  }
                }

                if (nSubLangIDGlb == 2)
                {
                  v411 = 0;
                }

                else
                {
                  v411 = (nLangIDGlb == 9) & ~v220;
                }

                if (v411 == 1)
                {
                  v412 = v8[253];
                  v413 = v412[1];
                  if (v413 >= 0x21 && v413 != 160)
                  {
                    v414 = 0;
                    v415 = 2;
                    do
                    {
                      if (v413 == 47)
                      {
                        ++v414;
                      }

                      v413 = v412[v415];
                      if (v413 < 0x21)
                      {
                        break;
                      }

                      ++v415;
                    }

                    while (v413 != 160);
                    if (v414 == 1 && qword_9D7B0 - v22[250] <= 2)
                    {
                      v416 = qword_9D7B0 + 1;
                      v8 = &unk_9D000;
                      while (1)
                      {
                        v417 = *v412;
                        if (v417 == 47)
                        {
                          v418 = 45;
                        }

                        else
                        {
                          if (!*v412 || (v417 - 58) < 0xF6u)
                          {
                            qword_9D7E8 = (v412 - 1);
                            v23 = v222;
                            if ((v220 & 1) == 0)
                            {
                              goto LABEL_327;
                            }

LABEL_166:
                            v69 = 0;
LABEL_167:
                            skip_whitespace(v69);
                            goto LABEL_1844;
                          }

                          v418 = upper_digit(v417);
                        }

                        *(v416 - 1) = v418;
                        qword_9D7B0 = v416;
                        v412 = ++qword_9D7E8;
                        ++v416;
                      }
                    }
                  }

                  if ((lFlags & 0x20000) != 0)
                  {
                    v465 = qword_9D7B0;
                  }

                  else
                  {
                    v465 = qword_9D7B0;
                    if ((lFlags & 0x200) == 0 && nSubLangIDGlb != 3)
                    {
                      *qword_9D7B0 = stru_B8.segname[pLangGlb + 3];
                      ++v465;
                    }
                  }

                  *v465 = 124;
                  qword_9D7B0 = (v465 + 1);
                  v8 = &unk_9D000;
LABEL_1465:
                  v23 = v222;
                  if (v220)
                  {
                    goto LABEL_166;
                  }

LABEL_327:
                  if (is_mathematics())
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_1844;
                }

                goto LABEL_1239;
              }

              if (nLangIDGlb != 9 || nSubLangIDGlb == 2 || ((v443 >> 30) & 1 & ~v221) != 0)
              {
                if (byte_9D800 != 1)
                {
                  v444[3] = 0;
                  goto LABEL_1973;
                }

                v449 = *v444;
                v450 = 31;
              }

              else
              {
                v444[3] = &stru_20;
                v449 = *v444;
                v450 = 52;
              }

              *v449 = v450;
              (*v444)[1] = 0;
LABEL_1973:
              v8 = &unk_9D000;
              goto LABEL_619;
            }

            v352 = nLangIDGlb;
            v354 = nLangIDGlb == 9 && nSubLangIDGlb == 1;
            if (nLangIDGlb != 12 && !v354)
            {
              v355 = v221 ^ 1;
              if (nLangIDGlb != 7)
              {
                v355 = 1;
              }

              if ((v355 & 1) == 0)
              {
                add_seg(16);
                v356 = qword_9D7B0;
                *qword_9D7B0 = 47;
                qword_9D7B0 = v356 + 1;
                skip_whitespace(0);
                goto LABEL_1465;
              }

LABEL_1317:
              v453 = 4;
              goto LABEL_1781;
            }

            if (v223 && number_precedes(0))
            {
              if (v220)
              {
                add_seg(16);
                v408 = 0;
                v409 = 124;
                v8 = &unk_9D000;
LABEL_1377:
                v468 = qword_9D7B0;
                *qword_9D7B0 = v409;
                qword_9D7B0 = v468 + 1;
                skip_whitespace(v408);
                v23 = v222;
                goto LABEL_166;
              }

              if ((lFlags & 0x8000000) == 0)
              {
                if (qword_9D7F8)
                {
                  v482 = qword_9D7E0;
                  if (*(qword_9D7E0 + 24) == 2)
                  {
                    v483 = *(qword_9D7E0 + 8);
                    if (v483 == 1 || v483 == 2 && byte_9D800)
                    {
                      v484 = *(qword_9D7E0 + 40);
                      if (v484)
                      {
                        if (*(v484 + 24) == 64)
                        {
                          v485 = *(v484 + 40);
                          if (!v485 || !memchr("|/\xF7teress", **v485, 4uLL))
                          {
                            if (byte_9D800 == 1)
                            {
                              **v482 = 31;
                              *(*v482 + 1) = 0;
                            }

                            else
                            {
                              v482[3] = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              add_seg(16);
              v469 = 0;
              v470 = 124;
              v8 = &unk_9D000;
LABEL_1968:
              v651 = qword_9D7B0;
              *qword_9D7B0 = v470;
              qword_9D7B0 = v651 + 1;
              skip_whitespace(v469);
              v23 = v222;
              goto LABEL_327;
            }

            if (v352 != 12)
            {
              goto LABEL_1317;
            }

            if ((lFlags & 0x40000) != 0)
            {
              if (!(((lFlags & 6) != 0) | (byte_9D79C | byte_9D804) & 1))
              {
                if (v36 == 0x2000 && (v513 = v22[250], *v513) && (*v513 & 0xDFu) - 91 >= 0xFFFFFFE6 && qword_9D7B0 - v513 == 1)
                {
                  add_list_element();
                  v514 = qword_9D7E0;
                  if (qword_9D7E0)
                  {
                    *qword_9D7E0 = *(&stru_20.maxprot + pLangGlb);
                    *(v514 + 8) = 1;
                    *(v514 + 24) = 32;
                  }

                  byte_9D79C = 1;
                }

                else
                {
                  add_seg(32);
                  v587 = qword_9D7B0;
                  *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
                  qword_9D7B0 = v587 + 1;
                }
              }

              v453 = 4;
              goto LABEL_1780;
            }

            if (!(((lFlags & 0xE) != 0) | (byte_9D79C | byte_9D804) & 1))
            {
              if (v36 != 0x2000 || (v580 = v22[250], !*v580) || (*v580 & 0xDFu) - 91 < 0xFFFFFFE6 || qword_9D7B0 - v580 != 1)
              {
                v453 = 32;
                add_seg(32);
                v588 = qword_9D7B0;
                *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
                qword_9D7B0 = v588 + 1;
                goto LABEL_1780;
              }

              add_list_element();
              v581 = qword_9D7E0;
              if (qword_9D7E0)
              {
                *qword_9D7E0 = *(&stru_20.maxprot + pLangGlb);
                *(v581 + 8) = 1;
                *(v581 + 24) = 32;
              }

              byte_9D79C = 1;
            }

            v453 = 32;
LABEL_1780:
            v8 = &unk_9D000;
LABEL_1781:
            v23 = v222;
            add_seg(v453);
            v589 = qword_9D7B0;
            *qword_9D7B0 = 47;
            qword_9D7B0 = v589 + 1;
            if (v220)
            {
              goto LABEL_166;
            }

            goto LABEL_327;
          }

LABEL_990:
          add_seg(16);
          v357 = qword_9D7B0;
          *qword_9D7B0 = *v8[253];
          qword_9D7B0 = v357 + 1;
          if (v220)
          {
            goto LABEL_166;
          }

          goto LABEL_327;
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x39u:
          add_seg(64);
          if (qword_9D7C8 == 2048)
          {
            v63 = *v8[253];
            v64 = &unk_9D000;
            v65 = off_95000;
            goto LABEL_918;
          }

          v65 = off_95000;
          if ((byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
          {
            v63 = upper_digit(*v8[253]);
            v64 = &unk_9D000;
            goto LABEL_918;
          }

          v88 = nLangIDGlb;
          v64 = &unk_9D000;
          if (nLangIDGlb != 7)
          {
            v115 = nLangIDGlb == 9 && nSubLangIDGlb == 2;
            v116 = v115;
            if (nLangIDGlb != 10 && !v116)
            {
              goto LABEL_906;
            }
          }

          if (qword_9D7B0 != v22[250] || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
          {
            goto LABEL_906;
          }

          if (!is_lower_num(v8[253]))
          {
            v88 = nLangIDGlb;
LABEL_906:
            if (v88 == 9 && nSubLangIDGlb == 1)
            {
              v321 = *v8[253];
              if ((v321 - 58) < 0xFFFFFFF6)
              {
                v322 = *(*(&stru_20.cmd + pLangGlb) + 8 * v321);
                goto LABEL_917;
              }

              v324 = &asc_26AD6[v321];
LABEL_916:
              v322 = v324 - 48;
              goto LABEL_917;
            }

            v323 = *v8[253];
            if (v88 == 12)
            {
              if ((v323 - 58) >= 0xF6u)
              {
                v324 = &a123456789[v323];
                goto LABEL_916;
              }

              v322 = *(*(&stru_20.cmd + pLangGlb) + 8 * v323);
LABEL_917:
              v63 = *v322;
            }

            else
            {
              v63 = upper_digit(v323);
            }

LABEL_918:
            v325 = v64[246];
            *v325 = v63;
            v64[246] = v325 + 1;
            goto LABEL_919;
          }

          qword_9D7C8 = 128;
          v89 = v8[253];
          if (*v89 == 46)
          {
            v90 = v89[1];
            if (!v89[1] || !memchr(",;:!?", v89[1], 6uLL) && (v90 != 32 || v89[2] != 45 || v89[3] != 32))
            {
              add_seg(0);
              v63 = 32;
              goto LABEL_918;
            }
          }

LABEL_919:
          if (*(v65 + 120) == 9 && nSubLangIDGlb != 3 && (lFlags & 0x80) == 0)
          {
            v326 = v8[253];
            if (equals_nocase(v326 + 1, "ST") && !in(v326[3], 11))
            {
              v327 = qword_9D7B0;
              v328 = 124;
            }

            else
            {
              if (!equals_nocase(v326 + 1, "TH") || in(v326[3], 11))
              {
                goto LABEL_1844;
              }

              v327 = qword_9D7B0;
              v328 = 52;
            }

            *v327 = v328;
            qword_9D7B0 = (v327 + 1);
            v8[253] += 2;
            add_seg(0);
          }

LABEL_1844:
          v34 = v8[253] + 1;
          v8[253] = v34;
          v35 = *v34;
          if (!*v34)
          {
            break;
          }

          continue;
        case 0x3Au:
          if (v36 == 2)
          {
            v231 = v34[1];
            if (v231 < 0x21 || v231 == 160)
            {
              v232 = 1;
              if (number_follows(1) && number_precedes(1))
              {
LABEL_804:
                remove_whitespace(0);
                v293 = 1;
                v294 = off_95000;
LABEL_1198:
                if (*(v294 + 120) == 9 && nSubLangIDGlb == 1)
                {
                  add_seg(32);
                  v420 = qword_9D7B0;
                  *qword_9D7B0 = 11297;
                  qword_9D7B0 = v420 + 2;
                  if (v293)
                  {
                    goto LABEL_166;
                  }
                }

                else
                {
                  add_seg(16);
                  v421 = qword_9D7B0;
                  *qword_9D7B0 = 58;
                  qword_9D7B0 = v421 + 1;
                  if (v293)
                  {
                    goto LABEL_166;
                  }
                }

                goto LABEL_1844;
              }

              goto LABEL_800;
            }
          }

          else if ((v36 & 0xC0) != 0 && is_number(v34 + 1))
          {
            goto LABEL_934;
          }

          v232 = 0;
LABEL_800:
          if (!is_mathematics() || v34 <= qword_9D7F0 || *(v34 - 1) != 32)
          {
            add_seg(8);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = 58;
            goto LABEL_141;
          }

          if (v232)
          {
            goto LABEL_804;
          }

LABEL_934:
          if (timespec_follows(v34 + 1))
          {
            v332 = 32;
            if (nLangIDGlb == 9 && nSubLangIDGlb == 1)
            {
              if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
              {
                goto LABEL_941;
              }

              v332 = 4;
            }

            add_seg(v332);
LABEL_941:
            v333 = qword_9D7B0;
            *qword_9D7B0 = 58;
            qword_9D7B0 = v333 + 1;
            if (v8[253][2] - 58 > 0xFFFFFFF5)
            {
              goto LABEL_1844;
            }

            add_seg(64);
            v334 = upper_digit(0x30u);
            v335 = &unk_9D000;
            v336 = qword_9D7B0;
            *qword_9D7B0 = v334;
            v337 = v336 + 1;
            goto LABEL_943;
          }

          v419 = is_mathematics();
          v294 = off_95000;
          if (v419)
          {
            v293 = 0;
            goto LABEL_1198;
          }

          if (nLangIDGlb != 9 || nSubLangIDGlb == 2)
          {
            if (nLangIDGlb != 12 || !(byte_9D798 & 1 | ((lFlags & 0x40000000) == 0)))
            {
              goto LABEL_1525;
            }
          }

          else if (((lFlags >> 30) & 1 & ~byte_9D798) != 0)
          {
LABEL_1525:
            add_seg(8);
LABEL_1526:
            v510 = qword_9D7B0;
            v511 = 58;
            goto LABEL_1646;
          }

          if (v36 != 2)
          {
            v512 = *(qword_9D7E8 + 1);
            if (v512 >= 0x21 && v512 != 160)
            {
              goto LABEL_1526;
            }
          }

          goto LABEL_1525;
        case 0x3Cu:
          v162 = v34[1];
          v163 = byte_9D798;
          if (v162 != 61)
          {
            if (v162 == 62)
            {
              if ((byte_9D798 & 1) != 0 || number_precedes(1))
              {
                remove_whitespace(0);
              }

              if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && (byte_9D798 & 1) == 0)
              {
                v404 = 4;
                add_seg(4);
                v164 = qword_9D7B0;
                *qword_9D7B0 = -117;
                v165 = -101;
              }

              else
              {
                add_seg(16);
                v164 = qword_9D7B0;
                if (nLangIDGlb == 7)
                {
                  *qword_9D7B0 = 33;
                  v165 = 61;
                }

                else
                {
                  *qword_9D7B0 = 60;
                  v165 = 62;
                }

                v404 = 32;
              }

              qword_9D7B0 = v164 + 1;
              add_seg(v404);
              v441 = qword_9D7B0;
              *qword_9D7B0 = v165;
              qword_9D7B0 = v441 + 1;
              goto LABEL_1276;
            }

            if (byte_9D798)
            {
              v316 = nLangIDGlb;
            }

            else
            {
              v360 = number_precedes(0);
              v316 = nLangIDGlb;
              if (!v360)
              {
                goto LABEL_1567;
              }
            }

            if (v316 == 7)
            {
              if (equals_nocase(v34 + 1, "PT56>") && in(v34[6], 9))
              {
                if (v36 == 2)
                {
                  v520 = *(qword_9D7B0 - 1);
                  if ((v520 > 0x20 || ((1 << v520) & 0x180000200) == 0) && v520 != 160)
                  {
                    goto LABEL_1566;
                  }

                  if (qword_9D7D8 != 16)
                  {
                    remove_whitespace(1);
                    if (byte_9D798 == 1)
                    {
                      add_seg(2);
                      v521 = qword_9D7B0;
                      *qword_9D7B0 = 127;
                      qword_9D7B0 = v521 + 1;
                    }
                  }
                }

                else if (v36 != 16 && (v36 != 0x2000 || (*(qword_9D7B0 - 1) & 0xDFu) - 65 >= 0x1A))
                {
LABEL_1566:
                  v316 = 7;
                  v8 = &unk_9D000;
                  goto LABEL_1567;
                }

                add_seg(32);
                v8 = &unk_9D000;
                v522 = qword_9D7B0;
                *qword_9D7B0 = *qword_9D7E8;
                qword_9D7B0 = v522 + 1;
                v523 = qword_9D7E8;
                qword_9D7E8 += 5;
                v23 = &unk_9D000;
                if (byte_9D798 == 1)
                {
                  v526 = *(v523 + 6);
                  v524 = (v523 + 6);
                  v525 = v526;
                  if (v526)
                  {
                    do
                    {
                      if (v525 <= 0xDE && v525 - 123 <= 0xFFFFFFE5 && v525 != 173 && v525 != 30)
                      {
                        break;
                      }

                      qword_9D7E8 = v524;
                      add_basis_char(*v524, 0);
                      v524 = (qword_9D7E8 + 1);
                      v525 = *(qword_9D7E8 + 1);
                    }

                    while (*(qword_9D7E8 + 1));
                  }
                }

                goto LABEL_1844;
              }

              v316 = 7;
            }

LABEL_1567:
            if (equals_nocase(v34 + 1, "PT"))
            {
              v528 = v34[3];
              v527 = (v34 + 3);
              if ((v528 - 58) >= 0xFFFFFFF6)
              {
                if (strchr(v527, 62))
                {
                  add_seg(1);
                  v529 = 0;
                  for (j = v8[253] + 3; ; ++j)
                  {
                    v8[253] = j;
                    v531 = *j;
                    if (!*j || v531 == 62)
                    {
                      break;
                    }

                    v532 = v531 - 49;
                    if ((v532 & 0xF8) != 0)
                    {
                      v533 = 0;
                    }

                    else
                    {
                      v533 = (1 << v532);
                    }

                    v529 |= v533;
                  }

                  v536 = &brl_set_ansi[v529];
                  if (pCharmapGlb)
                  {
                    v536 = (pCharmapGlb + *v536);
                  }

                  if (*v536 <= 0x1Fu)
                  {
                    v537 = qword_9D7B0;
                    *qword_9D7B0 = 32;
                    qword_9D7B0 = v537 + 1;
                    v8 = &unk_9D000;
                    v23 = &unk_9D000;
                    goto LABEL_1844;
                  }

                  v538 = brl_set_ansi[v529];
                  v539 = qword_9D7B0;
                  v540 = qword_9D7B0;
                  *qword_9D7B0 = v538;
                  qword_9D7B0 = v540 + 1;
                  if (nLangIDGlb == 12 && v529 == 8)
                  {
                    v8 = &unk_9D000;
                    v23 = &unk_9D000;
                    if (!is_supersub())
                    {
                      goto LABEL_1844;
                    }

                    byte_9D79C = 1;
                  }

                  else if ((nLangIDGlb - 9) <= 1 && v529 == 44)
                  {
                    v8 = &unk_9D000;
                    v23 = &unk_9D000;
                    if (!is_supersub())
                    {
                      goto LABEL_1844;
                    }
                  }

                  else
                  {
                    v8 = &unk_9D000;
                    v23 = &unk_9D000;
                    if (nLangIDGlb != 7 || v529 > 0x29 || ((1 << v529) & 0x20200001000) == 0)
                    {
                      goto LABEL_1844;
                    }

                    if (!is_supersub())
                    {
                      if ((qword_9D7D8 < 3 || (qword_9D7D8 & 0x1E024) != 0) && (lFlags & 1) == 0 && in(*(qword_9D7E8 + 1), 9) && !is_mathematics())
                      {
                        v539[1] = v538;
                        qword_9D7B0 = (v539 + 2);
                        *v539 = stru_B8.segname[pLangGlb + 3];
                      }

                      goto LABEL_1844;
                    }
                  }

LABEL_1885:
                  process_supersub();
                  goto LABEL_1844;
                }
              }
            }

            if (v163)
            {
              v534 = &unk_9D000;
              v535 = off_95000;
              if (v316 != 7)
              {
                goto LABEL_1616;
              }
            }

            else
            {
              v534 = &unk_9D000;
              v535 = off_95000;
              if (!number_precedes(0) || v316 != 7)
              {
LABEL_1611:
                if (!v162 || v162 != 32 && v162 != 160 && !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", v162, 0x15uLL))
                {
                  add_seg(4);
                  v553 = v534[246];
                  *v553 = -117;
                  v534[246] = v553 + 1;
                  goto LABEL_1926;
                }

                if (!number_precedes(1))
                {
                  v550 = 0;
                  goto LABEL_1622;
                }

LABEL_1616:
                remove_whitespace(0);
                v550 = byte_9D798;
                v316 = *(v535 + 120);
                if (byte_9D798 == 1 && v316 == 7)
                {
                  if (v8[253][1] == 61)
                  {
                    add_seg(32);
                    v551 = v534[246];
                    *v551 = 14624;
                    ++v8[253];
                    *(v551 + 2) = 61;
                    v552 = (v551 + 3);
                    goto LABEL_1628;
                  }

                  goto LABEL_1626;
                }

LABEL_1622:
                if ((v550 & 1) == 0 && v316 == 9 && nSubLangIDGlb == 3)
                {
                  add_seg(4);
                  v554 = v534[246];
                  v555 = -117;
LABEL_1627:
                  *v554 = v555;
                  v552 = v554 + 1;
LABEL_1628:
                  v534[246] = v552;
                  v23 = &unk_9D000;
                  if (byte_9D798)
                  {
                    goto LABEL_166;
                  }

LABEL_1278:
                  if (number_follows(1))
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_1844;
                }

LABEL_1626:
                add_seg(16);
                v554 = v534[246];
                v555 = 60;
                goto LABEL_1627;
              }
            }

            if (in(v162, 9))
            {
              if (v36 != 2)
              {
                if (v36 != 16 && (v36 != 0x2000 || (*(v534[246] - 1) & 0xDFu) - 65 >= 0x1A))
                {
                  goto LABEL_1610;
                }

LABEL_1602:
                add_seg(32);
                v543 = v534[246];
                *v543 = *v8[253];
                v534[246] = v543 + 1;
                v23 = &unk_9D000;
                if (byte_9D798 == 1)
                {
                  v544 = v8[253];
                  v547 = v544[1];
                  v545 = (v544 + 1);
                  v546 = v547;
                  if (v547)
                  {
                    do
                    {
                      if (v546 <= 0xDE && v546 - 123 <= 0xFFFFFFE5 && v546 != 173 && v546 != 30)
                      {
                        break;
                      }

                      v8[253] = v545;
                      add_basis_char(*v545, 0);
                      v548 = v8[253];
                      v549 = v548[1];
                      v545 = (v548 + 1);
                      v546 = v549;
                    }

                    while (v549);
                  }
                }

                goto LABEL_1844;
              }

              v541 = *(v534[246] - 1);
              if (v541 <= 0x20 && ((1 << v541) & 0x180000200) != 0 || v541 == 160)
              {
                if (qword_9D7D8 != 16)
                {
                  remove_whitespace(1);
                  if (byte_9D798 == 1)
                  {
                    add_seg(2);
                    v542 = v534[246];
                    *v542 = 127;
                    v534[246] = v542 + 1;
                  }
                }

                goto LABEL_1602;
              }
            }

LABEL_1610:
            if (v163)
            {
              goto LABEL_1616;
            }

            goto LABEL_1611;
          }

          if ((byte_9D798 & 1) != 0 || number_precedes(1))
          {
            remove_whitespace(0);
          }

          if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && (byte_9D798 & 1) == 0)
          {
            add_seg(4);
            v186 = qword_9D7B0;
            v406 = -117;
            goto LABEL_1274;
          }

          add_seg(16);
          v186 = qword_9D7B0;
          if (nLangIDGlb == 7)
          {
            v187 = 57;
          }

          else
          {
            v187 = 60;
          }

          goto LABEL_1141;
        case 0x3Eu:
          if (v34[1] == 61)
          {
            if ((byte_9D798 & 1) != 0 || number_precedes(1))
            {
              remove_whitespace(0);
            }

            if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && (byte_9D798 & 1) == 0)
            {
              add_seg(4);
              v186 = qword_9D7B0;
              v406 = -101;
LABEL_1274:
              *v186 = v406;
              v405 = 16;
            }

            else
            {
              add_seg(16);
              v186 = qword_9D7B0;
              if (nLangIDGlb == 7)
              {
                v187 = 111;
              }

              else
              {
                v187 = 62;
              }

LABEL_1141:
              *v186 = v187;
              v405 = 32;
            }

            qword_9D7B0 = (v186 + 1);
            add_seg(v405);
            v442 = qword_9D7B0;
            *qword_9D7B0 = 61;
            qword_9D7B0 = v442 + 1;
LABEL_1276:
            ++v8[253];
LABEL_1277:
            if (byte_9D798)
            {
              goto LABEL_166;
            }

            goto LABEL_1278;
          }

          v278 = byte_9D798 ^ 1;
          if (v36 == 2)
          {
            v278 = 0;
          }

          if (v278)
          {
            add_seg(4);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = -101;
            goto LABEL_141;
          }

          if ((byte_9D798 & 1) != 0 || number_precedes(1))
          {
            remove_whitespace(0);
            v279 = byte_9D798;
            v280 = nLangIDGlb;
            if (byte_9D798 == 1 && nLangIDGlb == 7)
            {
              if (v8[253][1] == 61)
              {
                add_seg(32);
                v281 = qword_9D7B0;
                *qword_9D7B0 = 28448;
                ++v8[253];
                *(v281 + 2) = 61;
                v282 = v281 + 3;
LABEL_1386:
                qword_9D7B0 = v282;
                goto LABEL_1277;
              }

              goto LABEL_1384;
            }
          }

          else
          {
            v279 = 0;
            v280 = nLangIDGlb;
          }

          if ((v279 & 1) == 0 && v280 == 9 && nSubLangIDGlb == 3)
          {
            add_seg(4);
            v471 = qword_9D7B0;
            v472 = -101;
LABEL_1385:
            *v471 = v472;
            v282 = (v471 + 1);
            goto LABEL_1386;
          }

LABEL_1384:
          add_seg(16);
          v471 = qword_9D7B0;
          v472 = 62;
          goto LABEL_1385;
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
        case 0x55u:
        case 0x56u:
        case 0x57u:
        case 0x58u:
        case 0x59u:
        case 0x5Au:
        case 0x8Au:
        case 0x8Cu:
        case 0xC0u:
        case 0xC1u:
        case 0xC2u:
        case 0xC3u:
        case 0xC4u:
        case 0xC5u:
        case 0xC6u:
        case 0xC7u:
        case 0xC8u:
        case 0xC9u:
        case 0xCAu:
        case 0xCBu:
        case 0xCCu:
        case 0xCDu:
        case 0xCEu:
        case 0xCFu:
        case 0xD0u:
        case 0xD1u:
        case 0xD2u:
        case 0xD3u:
        case 0xD4u:
        case 0xD5u:
        case 0xD6u:
        case 0xD8u:
        case 0xD9u:
        case 0xDAu:
        case 0xDBu:
        case 0xDCu:
        case 0xDDu:
        case 0xDEu:
          if (v35 != 72 || v36 != 64 || v34[1] - 58 < 0xFFFFFFF6)
          {
            if (!no_abbrev() || !no_locution())
            {
              goto LABEL_1844;
            }

            if (qword_9D7C8 != 0x2000 && (qword_9D7C8 != 4 || *(v8[253] - 1) != 45))
            {
              dword_9D7A0 = 0;
            }

            if (byte_9D798 == 1 && nLangIDGlb == 7 && (qword_9D7C8 & 0xC0) != 0)
            {
              v43 = *v8[253];
              if (v43 == 197 || v43 == 181)
              {
                add_seg(2);
                v44 = qword_9D7B0;
                *qword_9D7B0 = 127;
                qword_9D7B0 = v44 + 1;
              }
            }

            add_seg(0x2000);
            v45 = v8[253];
            if (*v45 >= 0x5Bu)
            {
              byte_9D810 = 1;
            }

            if (qword_9D7C8 == 2048)
            {
              goto LABEL_1828;
            }

            if (nLangIDGlb != 12 && nLangIDGlb != 9)
            {
              v102 = qword_9D7B0 - v22[250];
              if (v102)
              {
                v103 = dword_9D818;
                if (dword_9D818 > 1)
                {
                  goto LABEL_279;
                }

                if (v102 >= 4 && (lFlags & 0x100000) == 0 && lFlags != 0xFFFFLL && !upperchar_follows(v45, 1))
                {
                  add_seg(2);
                  v366 = qword_9D7B0;
                  *qword_9D7B0 = 33;
                  qword_9D7B0 = v366 + 1;
                  v367 = dword_9D818;
                  v368 = qword_9D7E0;
                  v369 = memchr("CQX", **qword_9D7E0, 4uLL);
                  if (v367)
                  {
                    if (v369 && (~lFlags & 0x7FFE) != 0)
                    {
                      insert_list_element(v368, *(&stru_20.filesize + pLangGlb), 2);
                    }
                  }

                  else
                  {
                    if (v369 && (~lFlags & 0x7FFE) != 0)
                    {
                      insert_list_element(v368, *(&stru_20.maxprot + pLangGlb), 2);
                      v368 = qword_9D7E0;
                    }

                    insert_list_element(v368, *(&stru_20.maxprot + pLangGlb), 2);
                    v8 = &unk_9D000;
                  }

                  add_seg(0x2000);
                  v461 = qword_9D7B0;
                  *qword_9D7B0 = 36;
                  qword_9D7B0 = v461 + 1;
                  v104 = 1;
                  goto LABEL_1827;
                }

                if (v103)
                {
LABEL_279:
                  v104 = v103 + 1;
                }

                else
                {
                  v104 = 2;
                }
              }

              else if (v45[1] == 45 && v45[2] < 0x21u)
              {
                v104 = dword_9D818 + 2;
              }

              else
              {
                v104 = dword_9D818 + 1;
              }

LABEL_1827:
              dword_9D818 = v104;
LABEL_1828:
              v607 = qword_9D7B0;
              *qword_9D7B0 = *v8[253];
              v608 = (v607 + 1);
              qword_9D7B0 = v608;
              if (!dword_9D7A0)
              {
                goto LABEL_1844;
              }

              v609 = v8[253];
              if (v609[1] != 45)
              {
                goto LABEL_1844;
              }

              v610 = v609[2];
              if (v610 && (v610 <= 0xDE ? (v611 = v610 - 123 > 0xFFFFFFE5) : (v611 = 1), v611))
              {
                if (nLangIDGlb == 9 && (nSubLangIDGlb - 4) <= 0xFFFFFFFD)
                {
                  v612 = *&stru_68.segname[pLangGlb];
                  v615 = *v612;
                  v613 = v612 + 1;
                  v614 = v615;
                  do
                  {
                    *v608++ = v614;
                    v616 = *v613++;
                    v614 = v616;
                  }

                  while (v616);
                  qword_9D7B0 = v608;
                }
              }

              else if (nLangIDGlb != 9 || nSubLangIDGlb != 2)
              {
                goto LABEL_1844;
              }

              goto LABEL_1843;
            }

            if ((lFlags & 0x100000) != 0 || dword_9D7A0)
            {
              goto LABEL_1826;
            }

            v46 = v45[1];
            if (v45[1])
            {
              if ((v46 - 223) > 0xFFFFFFE0 || (v46 - 91) > 0xFFFFFFE5)
              {
LABEL_1075:
                v383 = *&stru_68.sectname[pLangGlb];
                dword_9D7A0 = 1;
                v384 = qword_9D7B0;
                if (qword_9D7B0 == v22[250])
                {
LABEL_1824:
                  add_list_element();
                  v605 = qword_9D7E0;
                  if (qword_9D7E0)
                  {
                    v606 = strlen(v383);
                    *qword_9D7E0 = v383;
                    *(v605 + 8) = v606;
                    *(v605 + 24) = 2;
                  }

                  goto LABEL_1826;
                }

                goto LABEL_1820;
              }

              if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
              {
                if (v46 != 46)
                {
                  if (v46 == 39)
                  {
                    v47 = v45[2];
                    if (v45[2])
                    {
                      if ((v47 - 223) > 0xFFFFFFE0 || (v47 - 91) >= 0xFFFFFFE6)
                      {
                        goto LABEL_1075;
                      }
                    }
                  }

                  goto LABEL_1819;
                }

                v381 = v45[2];
                if (v45[2] && (v381 - 223 > 0xFFFFFFE0 || v381 - 91 >= 0xFFFFFFE6) && v45[3] == 46)
                {
                  v382 = v45[4];
                  if (v45[4])
                  {
                    v8 = &unk_9D000;
                    if (v382 <= 0xDE && v382 - 123 <= 0xFFFFFFE5 && v381 < 0xDF)
                    {
                      goto LABEL_1075;
                    }
                  }

                  else
                  {
                    v8 = &unk_9D000;
                    if (v381 < 0xDF)
                    {
                      goto LABEL_1075;
                    }
                  }
                }
              }
            }

LABEL_1819:
            v383 = *(&stru_20.filesize + pLangGlb);
            v384 = qword_9D7B0;
            if (qword_9D7B0 != v22[250])
            {
LABEL_1820:
              v603 = *v383;
              v602 = (v383 + 1);
              v601 = v603;
              do
              {
                *v384++ = v601;
                v604 = *v602++;
                v601 = v604;
              }

              while (v604);
              qword_9D7B0 = v384;
              goto LABEL_1826;
            }

            if (upperchar_follows(v45, 0))
            {
              goto LABEL_1824;
            }

LABEL_1826:
            v104 = dword_9D818 + 1;
            goto LABEL_1827;
          }

          if (nLangIDGlb == 9 && nSubLangIDGlb != 2)
          {
            goto LABEL_154;
          }

          v62 = &unk_9D000;
          if (nLangIDGlb != 12)
          {
            goto LABEL_187;
          }

LABEL_185:
          if (byte_9D798)
          {
            goto LABEL_198;
          }

LABEL_186:
          if ((lFlags & 0x40000000) != 0)
          {
            goto LABEL_187;
          }

LABEL_198:
          v73 = v62[246];
          v74 = 104;
          goto LABEL_580;
        case 0x5Bu:
          if ((lFlags & 0x2000000) != 0 && v34[1] - 58 <= 0xFFFFFFF5)
          {
            v191 = matching_brace_pos(v34);
            if (v191 > v34 && *v191 == 93)
            {
              add_seg(0);
              v23[2056] = 1;
              goto LABEL_1844;
            }
          }

          if (byte_9D798)
          {
            v238 = 16;
          }

          else
          {
            v238 = 4;
          }

          add_seg(v238);
          v62 = &unk_9D000;
          v239 = qword_9D7B0;
          *qword_9D7B0 = *v8[253];
          qword_9D7B0 = v239 + 1;
          v240 = v8[253];
          v241 = v240[1];
          if (v241 > 0x77)
          {
            if (v241 != 160 && v241 != 120)
            {
              goto LABEL_166;
            }
          }

          else if (v241 != 9 && v241 != 32)
          {
            goto LABEL_166;
          }

          if (v240[2] != 93)
          {
            goto LABEL_166;
          }

          add_seg(1);
          v301 = v8[253] + 1;
          v8[253] = v301;
          v302 = *v301;
          v303 = qword_9D7B0;
          *qword_9D7B0 = v302;
          qword_9D7B0 = v303 + 1;
          if (byte_9D798)
          {
            v304 = 16;
          }

          else
          {
            v304 = 4;
          }

          add_seg(v304);
          v305 = v8[253] + 1;
          v8[253] = v305;
          LOBYTE(v142) = *v305;
          goto LABEL_1111;
        case 0x5Du:
          if (v23[2056] == 1)
          {
            add_seg(0);
            v23[2056] = 0;
            goto LABEL_1844;
          }

          remove_whitespace(0);
          if (byte_9D798)
          {
            v295 = 16;
          }

          else
          {
            v295 = 4;
          }

          add_seg(v295);
          v49 = &unk_9D000;
          v58 = qword_9D7B0;
          v59 = 93;
          goto LABEL_141;
        case 0x5Fu:
          v180 = nLangIDGlb == 9 && nSubLangIDGlb != 3 || nLangIDGlb == 12;
          if (v36 != 0x2000 || !v180 || dword_9D7A0 == 0)
          {
            add_seg(4);
            v183 = qword_9D7B0;
            if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
            {
              for (k = v8[253][1]; k == 95; k = v185[2])
              {
                *v183++ = 95;
                v185 = v8[253];
                v8[253] = v185 + 1;
              }
            }

            *v183 = 95;
            v277 = (v183 + 1);
LABEL_968:
            qword_9D7B0 = v277;
            goto LABEL_1844;
          }

          v265 = v34[1];
          v62 = &unk_9D000;
          if (!v34[1])
          {
            goto LABEL_738;
          }

          if (v265 - 223 <= 0xFFFFFFE0 && v265 - 91 < 0xFFFFFFE6)
          {
            if (v265 > 0xDE || v265 - 123 >= 0xFFFFFFE6)
            {
              v266 = *&stru_68.segname[pLangGlb];
              v267 = qword_9D7B0;
              v270 = *v266;
              v268 = v266 + 1;
              v269 = v270;
              do
              {
                *v267++ = v269;
                v271 = *v268++;
                v269 = v271;
              }

              while (v271);
              qword_9D7B0 = v267;
              dword_9D7A0 = 0;
            }

LABEL_738:
            add_seg(32);
            v272 = *&stru_2E8.segname[*(&stru_20.cmd + pLangGlb)];
            v79 = qword_9D7B0;
            v275 = *v272;
            v273 = v272 + 1;
            v274 = v275;
            do
            {
              *v79++ = v274;
              v276 = *v273++;
              v274 = v276;
            }

            while (v276);
            goto LABEL_581;
          }

          v370 = *&stru_2E8.segname[*(&stru_20.cmd + pLangGlb)];
          v79 = qword_9D7B0;
          v373 = *v370;
          v371 = v370 + 1;
          v372 = v373;
          do
          {
            *v79++ = v372;
            v374 = *v371++;
            v372 = v374;
          }

          while (v374);
          goto LABEL_581;
        case 0x61u:
        case 0x62u:
        case 0x63u:
        case 0x64u:
        case 0x65u:
        case 0x66u:
        case 0x67u:
        case 0x68u:
        case 0x69u:
        case 0x6Au:
        case 0x6Bu:
        case 0x6Cu:
        case 0x6Du:
        case 0x6Eu:
        case 0x6Fu:
        case 0x70u:
        case 0x71u:
        case 0x72u:
        case 0x73u:
        case 0x74u:
        case 0x75u:
        case 0x76u:
        case 0x77u:
        case 0x78u:
        case 0x79u:
        case 0x7Au:
        case 0x9Au:
        case 0x9Cu:
        case 0xE0u:
        case 0xE1u:
        case 0xE2u:
        case 0xE3u:
        case 0xE4u:
        case 0xE5u:
        case 0xE6u:
        case 0xE7u:
        case 0xE8u:
        case 0xE9u:
        case 0xEAu:
        case 0xEBu:
        case 0xECu:
        case 0xEDu:
        case 0xEEu:
        case 0xEFu:
        case 0xF0u:
        case 0xF1u:
        case 0xF2u:
        case 0xF3u:
        case 0xF4u:
        case 0xF5u:
        case 0xF6u:
        case 0xF8u:
        case 0xF9u:
        case 0xFAu:
        case 0xFBu:
        case 0xFCu:
        case 0xFDu:
        case 0xFEu:
          if (v35 == 226)
          {
            if ((v34[1] & 0xFC) == 0xA0 && (v34[2] & 0xC0) == 0x80)
            {
              add_seg(1);
              v52 = v8[253];
              v53 = v52[2];
              v52 += 2;
              v54 = v53 & 0x3F | ((*(v52 - 1) & 3) << 6);
              v8[253] = v52;
              v55 = &brl_set_ansi[v54];
              v56 = &brl_set_ansi[v54];
              if (pCharmapGlb)
              {
                v56 = (pCharmapGlb + *v55);
              }

              v57 = *v56;
              v49 = &unk_9D000;
              if (v57 > 0x1F)
              {
                v105 = *v55;
                goto LABEL_482;
              }

              goto LABEL_140;
            }
          }

          else if (v35 == 239 && v34[1] == 187 && v34[2] == 191)
          {
            add_seg(0);
            v8[253] += 2;
            goto LABEL_127;
          }

          if (v36 == 2)
          {
            if (qword_9D7D8 == 64 || qword_9D7D8 == 128)
            {
              if (v35 != 120)
              {
                goto LABEL_168;
              }

LABEL_161:
              if ((v34[1] | 0x80) == 0xA0 && (is_number(v34 + 2) || v34[2] == 35))
              {
                remove_whitespace(0);
                add_seg(16);
                v67 = qword_9D7B0;
                v68 = -41;
                goto LABEL_165;
              }

              goto LABEL_168;
            }

            v66 = is_mathematics();
            v61 = 0;
            if (v35 == 120 && v66)
            {
              goto LABEL_161;
            }
          }

          else
          {
            if (v36 != 64)
            {
LABEL_168:
              v61 = 0;
              goto LABEL_169;
            }

            if (v35 == 104 && v34[1] - 58 >= 0xFFFFFFF6)
            {
              if (nLangIDGlb == 9 && nSubLangIDGlb != 2)
              {
LABEL_154:
                v62 = &unk_9D000;
                if ((byte_9D798 & 1) == 0)
                {
                  goto LABEL_186;
                }

                goto LABEL_198;
              }

              v62 = &unk_9D000;
              if (nLangIDGlb == 12)
              {
                goto LABEL_185;
              }

              if (nLangIDGlb == 9 && nSubLangIDGlb == 2 && (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
              {
                v92 = 0x2000;
                goto LABEL_1109;
              }

LABEL_187:
              add_seg(8);
              v73 = v62[246];
              v74 = 58;
LABEL_580:
              *v73 = v74;
              v79 = v73 + 1;
LABEL_581:
              v62[246] = v79;
              goto LABEL_1844;
            }

            v61 = 1;
          }

LABEL_169:
          if (nLangIDGlb != 7)
          {
            if (nLangIDGlb == 9 && v35 == 115 && !in(v34[1], 11))
            {
              v70 = nSubLangIDGlb == 1 ? v61 : 0;
              if ((v70 & 1) != 0 || v36 == 0x2000 && dword_9D7A0)
              {
                add_seg(32);
                v71 = qword_9D7B0;
                *qword_9D7B0 = 29486;
                qword_9D7B0 = v71 + 2;
LABEL_1843:
                dword_9D7A0 = 0;
                goto LABEL_1844;
              }
            }

            goto LABEL_390;
          }

          if (v36 == 4)
          {
            if (*(v34 - 1) != 181 && (byte_9D798 & 1) != 0)
            {
              v72 = 1;
              v36 = 4;
              goto LABEL_373;
            }
          }

          else
          {
            if (byte_9D798)
            {
LABEL_209:
              v72 = 1;
              goto LABEL_373;
            }

            if ((v36 & 0xC2) != 0)
            {
LABEL_242:
              v91 = (v36 & 0xCC) != 0 || v36 == 2 && (qword_9D7D8 & 0xC0) != 0 || (lFlags & 0x40) == 0;
              if (is_measurement(v34, v91, 0))
              {
                add_seg(32);
                if (!qword_9D7D8 || (v123 = v8[253], no_exception(1, byte_485A7, v123)))
                {
                  v124 = qword_9D7B0;
                  *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
                  qword_9D7B0 = v124 + 1;
                  v123 = v8[253];
                }

                for (m = *v123; ; m = *v127)
                {
                  add_basis_char(m, 0);
                  v126 = v8[253];
                  v129 = v126[1];
                  v127 = (v126 + 1);
                  v128 = v129;
                  if (!v129 || v128 <= 0xDE && v128 - 123 <= 0xFFFFFFE5 && v128 != 173 && v128 != 30)
                  {
                    break;
                  }

                  v8[253] = v127;
                }

                goto LABEL_1844;
              }

              v36 = qword_9D7C8;
              v72 = nLangIDGlb == 7;
LABEL_373:
              if (v72 && v36 <= 8)
              {
                v130 = 0;
                v131 = v8[253];
                v132 = v131;
                do
                {
                  do
                  {
                    v133 = *v132++;
                  }

                  while (v133 == 173 || v133 == 30);
                  if (v133 != aGen_0[v130])
                  {
                    goto LABEL_390;
                  }

                  ++v130;
                }

                while (v130 != 4);
                if ((lFlags & 4) == 0)
                {
                  v135 = v131[4];
                  if (v131[4])
                  {
                    if ((v135 - 223) > 0xFFFFFFE0 || (v135 - 91) > 0xFFFFFFE5 || (v135 | 0x80) == 0xA0 && (v136 = v131[5]) != 0 && ((v136 - 223) > 0xFFFFFFE0 || (v136 - 91) >= 0xFFFFFFE6))
                    {
                      v8[253] = v131 + 3;
                      add_seg(32);
                      v49 = &unk_9D000;
                      v300 = qword_9D7B0;
                      *qword_9D7B0 = 28198;
                      *(v300 + 2) = 46;
                      v60 = (v300 + 3);
                      goto LABEL_142;
                    }
                  }
                }
              }

LABEL_390:
              if (!no_abbrev() || !no_locution())
              {
                goto LABEL_1844;
              }

              v62 = &unk_9D000;
              if (qword_9D7C8 != 0x2000)
              {
                dword_9D7A0 = 0;
                if (nLangIDGlb == 9 && (lFlags & 0x100000) == 0)
                {
                  v137 = v8[253][1];
                  if (v8[253][1])
                  {
                    v138 = v137 - 223;
                    v139 = v137 - 91;
                    if (v138 > 0xFFFFFFE0 || v139 >= 0xFFFFFFE6)
                    {
                      add_seg(32);
                      v141 = qword_9D7B0;
                      *qword_9D7B0 = **(&stru_20.maxprot + pLangGlb);
                      qword_9D7B0 = v141 + 1;
                    }
                  }
                }
              }

              add_seg(0x2000);
              LODWORD(v142) = *v8[253];
              if (v142 >= 0x7B)
              {
                byte_9D810 = 1;
              }

              if (qword_9D7C8 != 2048)
              {
                if (dword_9D7A0)
                {
                  v143 = *&stru_68.segname[pLangGlb];
                  v142 = qword_9D7B0;
                  v146 = *v143;
                  v144 = v143 + 1;
                  v145 = v146;
                  do
                  {
                    *v142++ = v145;
                    v147 = *v144++;
                    v145 = v147;
                  }

                  while (v147);
                  qword_9D7B0 = v142;
                  dword_9D7A0 = 0;
                  LODWORD(v142) = *v8[253];
                }

                if (v142 == 156)
                {
                  v73 = qword_9D7B0;
                  v74 = -116;
                  goto LABEL_580;
                }

                if (v142 == 154)
                {
                  v73 = qword_9D7B0;
                  v74 = -118;
                  goto LABEL_580;
                }

                LOBYTE(v142) = v142 & 0xDF;
              }

              goto LABEL_1111;
            }
          }

          v76 = (v36 & 0xC) == 0 || qword_9D7D8 >= 0x21;
          v77 = !v76;
          if (v36 && !v77)
          {
            goto LABEL_209;
          }

          goto LABEL_242;
        case 0x7Bu:
          add_seg(0);
          v158 = v8[253];
          v159 = matching_brace_pos(v158);
          if (v159 > v158)
          {
            v160 = v159;
            if (*v159 == 125)
            {
              if (brl_process_command(v158 + 1))
              {
                v8[253] = v160;
                goto LABEL_1844;
              }
            }
          }

          v251 = 4;
          if (byte_9D798)
          {
            v251 = 16;
          }

          qword_9D7C8 = v251;
          v67 = qword_9D7B0;
          v68 = 123;
          goto LABEL_165;
        case 0x7Cu:
        case 0x7Eu:
          if (byte_9D798 == 1 && nLangIDGlb == 7)
          {
            remove_whitespace(0);
            add_seg(16);
            v149 = v8[253];
            v150 = *v149;
            if (v150 == 126 && v149[1] == 126)
            {
              v151 = qword_9D7B0;
              *qword_9D7B0 = 33;
              qword_9D7B0 = v151 + 1;
              ++v8[253];
              add_seg(32);
              LOBYTE(v150) = 63;
            }

            v152 = qword_9D7B0;
            *qword_9D7B0 = v150;
            qword_9D7B0 = v152 + 1;
            goto LABEL_166;
          }

          v114 = 4;
LABEL_480:
          add_seg(v114);
          v170 = v8[253];
          goto LABEL_481;
        case 0x7Du:
          remove_whitespace(0);
          if (byte_9D798)
          {
            v161 = 16;
          }

          else
          {
            v161 = 4;
          }

          add_seg(v161);
          v49 = &unk_9D000;
          v58 = qword_9D7B0;
          v59 = 125;
          goto LABEL_141;
        case 0x7Fu:
          goto LABEL_557;
        case 0x82u:
        case 0x91u:
        case 0x92u:
          if ((v36 & 0x20C0) == 0)
          {
            goto LABEL_849;
          }

          v93 = v34[1];
          if (!in(v93, 9) && (v93 - 58) < 0xF6u)
          {
            goto LABEL_849;
          }

          v94 = v34 + 2;
          while (2)
          {
            if (in(v93, 9))
            {
              goto LABEL_262;
            }

            if (!v93)
            {
              goto LABEL_847;
            }

            if ((v93 - 58) >= 0xF6u)
            {
LABEL_262:
              v95 = *v94++;
              v93 = v95;
              continue;
            }

            break;
          }

          if (v93 - 130 > 0x10 || ((1 << (v93 + 126)) & 0x18001) == 0 || (v306 = *v94, !in(*v94, 9)) && (v306 - 58) <= 0xF5u)
          {
LABEL_847:
            if (!qword_9D7F8 || *(qword_9D7E0 + 24) != 4 || (**qword_9D7E0 - 130 <= 0x10 ? (v307 = ((1 << (**qword_9D7E0 + 126)) & 0x18001) == 0) : (v307 = 1), v307 || (v308 = *(qword_9D7E0 + 40)) == 0 || (*(v308 + 24) & 0x1E0C0) == 0))
            {
              v35 = 39;
            }
          }

LABEL_849:
          v100 = v35;
          v99 = -111;
LABEL_850:
          v101 = -110;
          goto LABEL_865;
        case 0x84u:
        case 0x93u:
        case 0x94u:
          if ((v36 & 0x20C0) == 0)
          {
            goto LABEL_864;
          }

          v96 = v34[1];
          if (!in(v96, 9) && (v96 - 58) < 0xF6u)
          {
            goto LABEL_864;
          }

          v97 = v34 + 2;
          while (2)
          {
            if (in(v96, 9))
            {
              goto LABEL_270;
            }

            if (!v96)
            {
              goto LABEL_862;
            }

            if ((v96 - 58) >= 0xF6u)
            {
LABEL_270:
              v98 = *v97++;
              v96 = v98;
              continue;
            }

            break;
          }

          if (v96 - 132 > 0x10 || ((1 << (v96 + 124)) & 0x18001) == 0 || (v309 = *v97, !in(*v97, 9)) && (v309 - 58) <= 0xF5u)
          {
LABEL_862:
            if (!qword_9D7F8 || *(qword_9D7E0 + 24) != 4 || (**qword_9D7E0 - 132 <= 0x10 ? (v310 = ((1 << (**qword_9D7E0 + 124)) & 0x18001) == 0) : (v310 = 1), v310 || (v311 = *(qword_9D7E0 + 40)) == 0 || (*(v311 + 24) & 0x1E0C0) == 0))
            {
              v35 = 34;
            }
          }

LABEL_864:
          v100 = v35;
          v99 = -109;
          v101 = -108;
LABEL_865:
          process_quotes(v99, v100, v101);
          goto LABEL_1844;
        case 0x8Bu:
        case 0x9Bu:
          v99 = -111;
          v100 = 39;
          goto LABEL_850;
        case 0x96u:
          v172 = nLangIDGlb;
          v173 = nSubLangIDGlb;
          if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
          {
            byte_9D79C = 0;
            dword_9D7A0 = 0;
          }

          if (byte_9D798 == 1)
          {
            goto LABEL_883;
          }

          if (number_follows(1) && number_precedes(1))
          {
            goto LABEL_651;
          }

          v175 = v34[1];
          if ((v175 | 2) == 0x2E)
          {
            goto LABEL_904;
          }

          v177 = v172 != 9 || v173 != 3;
          if (v175 == 150)
          {
            goto LABEL_1216;
          }

          goto LABEL_1212;
        case 0x97u:
          v172 = nLangIDGlb;
          v233 = nSubLangIDGlb;
          if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
          {
            byte_9D79C = 0;
            dword_9D7A0 = 0;
          }

          if (byte_9D798 == 1)
          {
            goto LABEL_883;
          }

          if (number_follows(1) && number_precedes(1))
          {
LABEL_651:
            v235 = 45;
LABEL_1214:
            v423 = 0;
LABEL_1215:
            process_dash(v235, v423);
            goto LABEL_1844;
          }

          v319 = v34[1];
          if ((v319 | 2) == 0x2E)
          {
LABEL_904:
            v320 = 32;
LABEL_1144:
            add_seg(v320);
            goto LABEL_1145;
          }

          v177 = v172 != 9 || v233 != 3;
          if (v319 != 151)
          {
LABEL_1212:
            if (!v177)
            {
              v235 = 150;
              goto LABEL_1214;
            }
          }

LABEL_1216:
          v423 = v172 != 7 && v177;
          v235 = 151;
          goto LABEL_1215;
        case 0xA0u:
          v153 = nLangIDGlb != 7 || byte_9D798 == 0;
          if (v153 || (v36 & 0xC0) == 0 && ((v36 & 0x2000) == 0 || dword_9D818 || qword_9D7B0 - v22[250] > 4))
          {
            goto LABEL_435;
          }

          if (is_measurement(v34 + 1, 1, 1))
          {
            goto LABEL_707;
          }

          v34 = v8[253];
          v256 = v34[1];
          if (v256 - 137 <= 0x3C && ((1 << (v256 + 119)) & 0x1000108000000001) != 0)
          {
            goto LABEL_707;
          }

          if (!v34[1])
          {
            goto LABEL_435;
          }

          if (v256 == 37 || memchr("\x80$\xA5\xA2\xA3\xA4", v34[1], 7uLL))
          {
            goto LABEL_707;
          }

          if ((v256 > 0xDE || v256 - 123 >= 0xFFFFFFE6) && (v462 = v34[2]) != 0)
          {
            v8 = &unk_9D000;
            if ((v462 - 223) > 0xFFFFFFE0 || (v462 - 91) >= 0xFFFFFFE6)
            {
LABEL_707:
              add_seg(2);
              goto LABEL_708;
            }
          }

          else
          {
            v8 = &unk_9D000;
          }

LABEL_435:
          v154 = nLangIDGlb;
          v155 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
          if (v155 || (qword_9D7C8 & 0xC0) == 0 || (v156 = v34[1], v156 != 37) && v156 != 176 && v156 != 137)
          {
            add_seg(2);
            v189 = qword_9D7B0;
            v190 = -96;
LABEL_686:
            *v189 = v190;
            qword_9D7B0 = (v189 + 1);
            goto LABEL_134;
          }

          if (byte_9D800 == 1)
          {
            add_seg(2);
            v157 = qword_9D7B0;
            *qword_9D7B0 = 31;
            qword_9D7B0 = v157 + 1;
            v154 = nLangIDGlb;
          }

          if (byte_9D798 != 1 || v154 != 7)
          {
            goto LABEL_1844;
          }

          goto LABEL_447;
        case 0xA7u:
          if (nLangIDGlb != 7)
          {
            if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
            {
              v291 = v34 + 1;
              do
              {
                if (*v291 != 167)
                {
                  break;
                }

                v8[253] = v291;
              }

              while (*v291++);
            }

            add_seg(4);
            v49 = &unk_9D000;
            v58 = qword_9D7B0;
            v59 = -89;
            goto LABEL_141;
          }

          add_seg(32);
          v169 = &unk_9D000;
          v215 = qword_9D7B0;
          v216 = qword_9D7B0;
          *qword_9D7B0 = 48;
          qword_9D7B0 = v216 + 1;
          v217 = v8[253];
          if (is_any_number(v217 + 1) || v217[1] == 167)
          {
            v69 = 1;
            goto LABEL_167;
          }

          *(v215 + 1) = 35;
          v264 = (v215 + 2);
LABEL_1254:
          v169[246] = v264;
          goto LABEL_1844;
        case 0xB2u:
        case 0xB3u:
        case 0xB9u:
        case 0xBCu:
        case 0xBDu:
        case 0xBEu:
          if (qword_9D7D8 == 64)
          {
            remove_whitespace(1);
          }

          v62 = &unk_9D000;
          if (nLangIDGlb == 12 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0) && (qword_9D7C8 == 64 || qword_9D7C8 == 2 && qword_9D7D8 == 64) && **(*(&stru_20.cmd + pLangGlb) + 8 * *v8[253]) == stru_B8.segname[pLangGlb + 3])
          {
            add_seg(128);
            v78 = *(*(&stru_20.cmd + pLangGlb) + 8 * *v8[253]);
            v79 = qword_9D7B0;
            v80 = *(v78 + 1);
            v81 = (v78 + 2);
            do
            {
              *v79++ = v80;
              v82 = *v81++;
              v80 = v82;
            }

            while (v82);
          }

          else
          {
            add_seg(128);
            v83 = *(*(&stru_20.cmd + pLangGlb) + 8 * *v8[253]);
            v79 = qword_9D7B0;
            v86 = *v83;
            v84 = v83 + 1;
            v85 = v86;
            do
            {
              *v79++ = v85;
              v87 = *v84++;
              v85 = v87;
            }

            while (v87);
          }

          goto LABEL_581;
        case 0xDFu:
          if (v36 == 0x2000 && nLangIDGlb == 7 && (dword_9D818 > 1 || (v347 = *(v34 - 1)) != 0 && ((v347 - 223) > 0xFFFFFFE0 || (v347 - 91) >= 0xFFFFFFE6) && (v348 = v34[1]) != 0 && ((v348 - 223) > 0xFFFFFFE0 || (v348 - 91) >= 0xFFFFFFE6)))
          {
            ++dword_9D818;
          }

          add_seg(0x2000);
          v349 = qword_9D7B0;
          if (nSubLangIDGlb == 2)
          {
            *qword_9D7B0 = 21331;
            v277 = v349 + 2;
            goto LABEL_968;
          }

          *qword_9D7B0 = -33;
          qword_9D7B0 = v349 + 1;
          goto LABEL_1844;
        case 0xFFu:
          v114 = 0x2000;
          goto LABEL_480;
        default:
          if (v35 >= 0x20u)
          {
            if ((v36 & 0xC0) != 0 && byte_9D798 != 0 && nLangIDGlb == 7)
            {
              v298 = &unk_9D000;
              if (v35 - 137 <= 0x3C && ((1 << (v35 + 119)) & 0x1000108000000001) != 0 || v35 == 37 || memchr("\x80$\xA5\xA2\xA3\xA4", v35, 7uLL))
              {
                add_seg(2);
                v350 = qword_9D7B0;
                *qword_9D7B0 = 127;
                qword_9D7B0 = v350 + 1;
              }

              v237 = 4;
LABEL_976:
              add_seg(v237);
              v351 = v298[246];
              *v351 = *v8[253];
              v298[246] = v351 + 1;
              byte_9D79C = 0;
              goto LABEL_1844;
            }

            v237 = 4;
          }

          else
          {
            v237 = 1;
          }

          v298 = &unk_9D000;
          goto LABEL_976;
      }

      break;
    }
  }

  add_seg(0);
  qword_9D7A8 = 0;
  qword_9D7B0 = qword_9D7C0;
  qword_9D7D8 = 0;
  byte_9D844 = 0;
  dword_9D830 = 0;
  dword_9D7A0 = 0;
  v678 = qword_9D7F8;
  qword_9D7E0 = qword_9D7F8;
  if (!qword_9D7F8)
  {
    goto LABEL_3063;
  }

  v679 = 0;
  while (2)
  {
    v680 = *v678;
    v22[250] = *v678;
    v681 = v678[2];
    v33[245] = v681;
    v682 = v678[6];
    if (v682)
    {
      v683 = *(v682 + 3);
    }

    else
    {
      v683 = 0;
    }

    qword_9D848 = v683;
    v684 = v678[3];
    if ((v684 & 0xFFFFFFFFFFFFDF0FLL) != 0)
    {
      byte_9D844 = 0;
    }

    if (v684 > 127)
    {
      if (v684 <= 2047)
      {
        if (v684 <= 511)
        {
          if (v684 != 128 && v684 != 256)
          {
            goto LABEL_2155;
          }

          goto LABEL_2105;
        }

        if (v684 != 512)
        {
          if (v684 != 1024)
          {
            goto LABEL_2155;
          }

          v692 = dword_9D7A0;
          v693 = lowerchar_follows(v678, dword_9D7A0);
          v694 = v693;
          if (v692)
          {
            escape_number(v678, **(&stru_20.maxprot + pLangGlb));
          }

          else
          {
            if (v693)
            {
              v726 = *&stru_68.sectname[pLangGlb];
            }

            else
            {
              v726 = *&stru_68.segname[pLangGlb - 8];
            }

            inc_string(v726);
          }

          v847 = *v680;
          do
          {
            add_basis_char(v847, 1);
            v848 = v22[250] + 1;
            v22[250] = v848;
            v847 = *v848;
          }

          while (*v848);
          if (v694 && dword_9D7A0)
          {
            v849 = *&stru_68.segname[pLangGlb];
            v852 = *v849;
            v851 = v849 + 1;
            v850 = v852;
            do
            {
              std_char(v850);
              v853 = *v851++;
              v850 = v853;
            }

            while (v853);
          }

          dword_9D7A0 = v694 == 0;
          goto LABEL_2966;
        }

        v711 = *v680;
        if (*v680 && (v711 <= 0xDE ? (v712 = v711 - 123 >= 0xFFFFFFE6) : (v712 = 1), v712))
        {
          v713 = v679 != 2 || **v678[5] != 127;
        }

        else
        {
          v713 = 0;
        }

        while (1)
        {
          if (v711)
          {
            if (v711 - 223 > 0xFFFFFFE0 || v711 - 91 >= 0xFFFFFFE6)
            {
              v833 = v680 + 1;
              v832 = v680[1];
              if (v680[1])
              {
                v834 = v680[1];
                if ((v834 > 0xDE || (v832 - 123) >= 0xE6u) && v834 != 45 && (v834 != 100 || (v835 = v680[2]) != 0 && (v835 > 0xDE || v835 - 123 >= 0xFFFFFFE6)) && (!memchr("bcdfgkpt", v832, 9uLL) || v680[2] != 114))
                {
                  v836 = 0;
                  while (1)
                  {
                    do
                    {
                      v837 = *v833++;
                    }

                    while (v837 == 173 || v837 == 30);
                    if (v837 != aLer[v836])
                    {
                      break;
                    }

                    if (++v836 == 3)
                    {
                      goto LABEL_2539;
                    }
                  }

                  v839 = (v680 + 2);
                  while (v834 == 30 || v834 == 173)
                  {
                    v840 = *v839++;
                    LOBYTE(v834) = v840;
                  }

                  if (v834 != 115)
                  {
                    v820 = *(&stru_20.filesize + pLangGlb);
                    v823 = *v820;
                    v822 = v820 + 1;
                    v821 = v823;
                    do
                    {
                      v824 = v33[245];
                      if (v824 >= 2)
                      {
                        v33[245] = v824 + 1;
                      }

                      std_char(v821);
                      v713 = 0;
                      v825 = *v822++;
                      v821 = v825;
                    }

                    while (v825);
                    goto LABEL_2545;
                  }
                }
              }

LABEL_2539:
              if (!v713)
              {
                v841 = *&stru_68.sectname[pLangGlb];
                v844 = *v841;
                v843 = v841 + 1;
                v842 = v844;
                do
                {
                  v845 = v33[245];
                  if (v845 >= 2)
                  {
                    v33[245] = v845 + 1;
                  }

                  std_char(v842);
                  v846 = *v843++;
                  v842 = v846;
                }

                while (v846);
              }

LABEL_2544:
              v713 = 1;
              goto LABEL_2545;
            }

            if (v713)
            {
              if (v711 != 45)
              {
                goto LABEL_2511;
              }

              goto LABEL_2544;
            }
          }

          else if (v713)
          {
LABEL_2511:
            v826 = *(&stru_20.maxprot + pLangGlb);
            v829 = *v826;
            v828 = v826 + 1;
            v827 = v829;
            do
            {
              v830 = v33[245];
              if (v830 >= 2)
              {
                v33[245] = v830 + 1;
              }

              std_char(v827);
              v831 = *v828++;
              v827 = v831;
            }

            while (v831);
            v713 = 0;
          }

LABEL_2545:
          add_basis_char(*v680, 1);
          v680 = v22[250] + 1;
          v22[250] = v680;
          v711 = *v680;
          if (!*v680)
          {
            goto LABEL_2966;
          }
        }
      }

      if (v684 >= 0x200000)
      {
        if (v684 != 0x200000 && v684 != 0x400000)
        {
          goto LABEL_2155;
        }

        goto LABEL_2105;
      }

      if (v684 != 2048)
      {
        if (v684 != 4096)
        {
          goto LABEL_2155;
        }

        goto LABEL_2105;
      }

      v702 = *v680;
      if (v702 != 39 && v702 != 36)
      {
        v703 = off_95000;
        goto LABEL_2592;
      }

      v703 = off_95000;
      if (v680[1] != 36)
      {
        goto LABEL_2593;
      }

      dword_9D830 = v702 == 36;
      if (nLangIDGlb != 12)
      {
        if (nLangIDGlb == 7)
        {
          std_char(*v680);
          std_char(v680[1]);
          v680 = v22[250];
LABEL_2591:
          v22[250] = v680 + 2;
          LOBYTE(v702) = v680[2];
          v680 += 2;
LABEL_2592:
          if (!v702)
          {
LABEL_2704:
            v899 = *(v703 + 120);
            v20 = v899 > 0xC;
            v900 = (1 << v899) & 0x1600;
            if (!v20 && v900 != 0)
            {
              v902 = *&stru_B8.segname[pLangGlb - 8];
              v905 = *v902;
              v904 = v902 + 1;
              v903 = v905;
              do
              {
                std_char(v903);
                v906 = *v904++;
                v903 = v906;
              }

              while (v906);
              if (dword_9D830)
              {
                v907 = nLangIDGlb == 9;
              }

              else
              {
                v907 = 0;
              }

              if (v907 && nSubLangIDGlb == 3)
              {
                v909 = 0;
                v910 = 33;
                do
                {
                  std_char(v910);
                  v910 = asc_1D681[++v909];
                }

                while (v909 != 2);
              }

              dword_9D830 = 0;
            }

            goto LABEL_2966;
          }

LABEL_2593:
          v864 = 0;
          do
          {
            if (v702 < 0x20u || v702 - 150 <= 0x17 && ((1 << (v702 + 106)) & 0x800403) != 0)
            {
              v865 = v702;
            }

            else
            {
              v866 = 0;
              v867 = v680;
              while (1)
              {
                do
                {
                  v868 = *v867++;
                }

                while (v868 == 173 || v868 == 30);
                if (v868 != asc_2671B[v866])
                {
                  break;
                }

                if (++v866 == 2)
                {
                  if (*(v703 + 120) != 7)
                  {
                    v22[250] = v680 + 1;
                    goto LABEL_2599;
                  }

                  v870 = pLangGlb;
                  if (!*&stru_20.segname[pLangGlb])
                  {
LABEL_2638:
                    v878 = 0;
                    while (brl_set_ansi[v878] != v702)
                    {
                      if (++v878 == 256)
                      {
                        LOBYTE(v878) = 0;
                        goto LABEL_2660;
                      }
                    }

                    if ((v878 & 0xC0) != 0)
                    {
                      v887 = (v878 >> 2) & 0x20 | (v878 >> 3) & 8;
                      goto LABEL_2659;
                    }

                    if (v878 <= 0x28 && ((1 << v878) & 0x10100000100) != 0)
                    {
                      v889 = 0;
                      v890 = v680;
                      while (1)
                      {
                        do
                        {
                          v891 = *v890++;
                        }

                        while (v891 == 173 || v891 == 30);
                        if (v891 != asc_2671B[v889])
                        {
                          break;
                        }

                        if (++v889 == 2)
                        {
                          goto LABEL_2660;
                        }
                      }

                      v887 = v878;
LABEL_2659:
                      std_char(brl_set_ansi[v887]);
                    }

LABEL_2660:
                    if (*v680 != 45 || (lFlags & 0x20000000) == 0)
                    {
                      v865 = brl_set_ansi[v878 & 0x3F];
                      goto LABEL_2598;
                    }

LABEL_2663:
                    v865 = 4294967190;
                    goto LABEL_2598;
                  }

LABEL_2612:
                  if (v864)
                  {
                    if (v702 <= 0xDEu && (v702 - 123) < 0xE6u)
                    {
                      v871 = v702 != 32;
                      v864 = nSubLangIDGlb != 1 || v871;
                      goto LABEL_2652;
                    }

                    v880 = *&stru_B8.sectname[v870];
LABEL_2650:
                    inc_string(v880);
LABEL_2651:
                    v864 = 0;
                  }

                  else
                  {
                    if ((v702 + 33) <= 0xE0u && (v702 - 91) < 0xE6u)
                    {
                      goto LABEL_2651;
                    }

                    if (nSubLangIDGlb == 1)
                    {
                      v879 = v680[1];
                      if (!v680[1] || (v879 - 223) <= 0xFFFFFFE0 && (v879 - 91) < 0xFFFFFFE6)
                      {
                        v880 = *(&stru_68.reserved2 + v870);
                        goto LABEL_2650;
                      }

                      v888 = *(&stru_68.flags + v870);
                    }

                    else
                    {
                      v888 = *(&stru_68.reserved2 + v870);
                    }

                    inc_string(v888);
                    v864 = 1;
                  }

LABEL_2652:
                  v881 = *v680;
                  if (v881 == 45 && (lFlags & 0x20000000) != 0)
                  {
                    goto LABEL_2663;
                  }

                  v882 = *(*&stru_20.segname[pLangGlb] + 8 * v881);
                  v885 = *v882;
                  v884 = v882 + 1;
                  v883 = v885;
                  do
                  {
                    std_char(v883);
                    v886 = *v884++;
                    v883 = v886;
                  }

                  while (v886);
                  goto LABEL_2599;
                }
              }

              v870 = pLangGlb;
              if (*&stru_20.segname[pLangGlb])
              {
                goto LABEL_2612;
              }

              if (*(v703 + 120) != 12)
              {
                goto LABEL_2638;
              }

              if ((v702 + 33) > 0xE0u || (v702 - 91) >= 0xE6u)
              {
                v872 = 1;
                do
                {
                  v873 = v872;
                  v874 = v680[v872];
                  if (!v680[v872])
                  {
                    if (v872 < 3)
                    {
                      goto LABEL_2687;
                    }

                    goto LABEL_2676;
                  }

                  ++v872;
                }

                while (v874 - 58 > 0xFFFFFFF5 || v874 - 223 > 0xFFFFFFE0 || v874 - 91 > 0xFFFFFFE5);
                if (v874 > 0xDE || v874 - 123 > 0xFFFFFFE5 || v873 <= 2)
                {
                  goto LABEL_2687;
                }

                do
                {
LABEL_2676:
                  v893 = v680[v873];
                  if (v680[v873])
                  {
                    if ((v893 - 223) > 0xFFFFFFE0 || (v893 - 91) >= 0xFFFFFFE6)
                    {
                      v680[v873] = v893 | 0x60;
                    }
                  }

                  --v873;
                }

                while (v873);
                v895 = v33[245];
                if (v895 >= 2)
                {
                  v33[245] = v895 + 1;
                }

                std_char(36);
                LOBYTE(v702) = *v22[250];
              }

LABEL_2687:
              v896 = 0;
              while (brl_set_tbfr2007[v896] != v702)
              {
                if (++v896 == 256)
                {
                  LOBYTE(v896) = 0;
                  break;
                }
              }

              v897 = 0;
              while (brl_set_ansi[v897] != v896)
              {
                if (++v897 == 256)
                {
                  goto LABEL_2599;
                }
              }

              v898 = v897 >> 6;
              if (v898 > 1)
              {
                if (v898 == 2)
                {
                  v865 = 34;
                }

                else
                {
                  v865 = 33;
                }
              }

              else
              {
                if (!v898)
                {
                  goto LABEL_2599;
                }

                v865 = 36;
              }
            }

LABEL_2598:
            std_char(v865);
LABEL_2599:
            v680 = v22[250] + 1;
            v22[250] = v680;
            LOBYTE(v702) = *v680;
          }

          while (*v680);
          goto LABEL_2704;
        }

        if (nLangIDGlb != 9 || nSubLangIDGlb == 1)
        {
          v859 = v680[2];
          if (v680[2] && ((v859 - 223) > 0xFFFFFFE0 || (v859 - 91) >= 0xFFFFFFE6))
          {
            v860 = v680[3];
            if (v680[3])
            {
              if ((v860 - 223) > 0xFFFFFFE0 || (v860 - 91) > 0xFFFFFFE5)
              {
                goto LABEL_2591;
              }
            }
          }
        }
      }

      v862 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
      if (v702 == 36)
      {
        if (v862)
        {
          inc_string("!{");
        }

        v863 = *(&stru_68.reloff + pLangGlb);
      }

      else
      {
        if (v862)
        {
          inc_string(">{");
        }

        v863 = *(&stru_68.offset + pLangGlb);
      }

      inc_string(v863);
      goto LABEL_2591;
    }

    if (v684 > 7)
    {
      if (v684 <= 31)
      {
        if (v684 != 8)
        {
          if (v684 != 16)
          {
            goto LABEL_2155;
          }

          v689 = nLangIDGlb;
          if (nLangIDGlb == 12)
          {
            if ((lFlags & 0x20000) == 0 && (v678[4] & 2) == 0 && ((v679 & 0xD0) == 0 || (lFlags & 0x40000000) != 0 && (byte_9D798 & 1) == 0))
            {
              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              std_char(stru_B8.segname[pLangGlb + 3]);
            }

            v730 = *v680;
            if (v730 <= 0x2E)
            {
              if (v730 != 42 && v730 != 46)
              {
                goto LABEL_2964;
              }

              goto LABEL_2939;
            }

            if (v730 == 47 || v730 == 247)
            {
              if ((lFlags & 0x40000) != 0)
              {
                v731 = 58;
              }

              else
              {
                v731 = 47;
              }

              goto LABEL_2940;
            }

            if (v730 != 124)
            {
              goto LABEL_2964;
            }

            goto LABEL_2231;
          }

          if (nLangIDGlb == 7)
          {
            if ((lFlags & 0x20000) == 0 && (byte_9D798 & 1) == 0 && v679 != 16 && (*v680 != 46 || v683 == 2 && **v682 == 32))
            {
              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              std_char(stru_B8.segname[pLangGlb + 3]);
              goto LABEL_2921;
            }

            if (v678 != qword_9D7F8 && v679 != 32 && v679 != 16 && (v679 != 2 || **v678[5] == 31))
            {
              if (byte_9D798 && *v680 == 47)
              {
                goto LABEL_2935;
              }

              if ((v679 & 0x81) != 0)
              {
                v735 = **v678[5];
                if (v735 == 34)
                {
                  goto LABEL_2921;
                }

                v736 = *v680;
                if (v736 == 51)
                {
                  if (v735 == 124)
                  {
                    v731 = 51;
                    goto LABEL_2940;
                  }

                  goto LABEL_2918;
                }
              }

              else
              {
                v736 = *v680;
              }

              if (((v736 - 91) > 0x22 || ((1 << (v736 - 91)) & 0x500000005) == 0) && (v736 - 40) >= 2)
              {
LABEL_2918:
                if (v681 >= 2)
                {
                  v33[245] = v681 + 1;
                }

                std_char(32);
                v680 = v22[250];
              }
            }

LABEL_2921:
            v951 = *v680;
            v731 = v951;
            if (v951 > 0x32)
            {
              if (*v680 <= 0x7Au)
              {
                v952 = v951 - 51;
                if (v952 > 0x3C)
                {
                  goto LABEL_2965;
                }

                if (((1 << v952) & 0x10000000000000C1) != 0)
                {
                  goto LABEL_2940;
                }

                if (v952 != 40)
                {
                  if (v952 == 42)
                  {
LABEL_2927:
                    v731 = 125;
                    goto LABEL_2940;
                  }

LABEL_2965:
                  map_char(v731);
                  goto LABEL_2966;
                }

LABEL_2999:
                v731 = 123;
                goto LABEL_2940;
              }

              if (*v680 > 0x7Cu)
              {
                if (v951 == 126)
                {
                  v731 = 63;
                  goto LABEL_2940;
                }

                if (v951 == 125)
                {
                  v953 = 0;
                  v954 = 33;
                  do
                  {
                    std_char(v954);
                    v954 = asc_1D681[++v953];
                  }

                  while (v953 != 2);
                  goto LABEL_2966;
                }

                goto LABEL_2965;
              }

              if (v951 == 123)
              {
                v955 = 0;
                v956 = 33;
                do
                {
                  std_char(v956);
                  v956 = asc_20F25[++v955];
                }

                while (v955 != 2);
                goto LABEL_2966;
              }

LABEL_2935:
              v731 = 56;
              goto LABEL_2940;
            }

            if (*v680 > 0x28u)
            {
              if (v951 == 41)
              {
                v731 = 96;
                goto LABEL_2940;
              }

              if (v951 == 46)
              {
LABEL_2940:
                std_char(v731);
                goto LABEL_2966;
              }

              if (v951 != 47)
              {
                goto LABEL_2965;
              }

              goto LABEL_2935;
            }

            if (v951 != 33)
            {
              if (v951 == 40)
              {
                v731 = 50;
                goto LABEL_2940;
              }

              goto LABEL_2965;
            }

LABEL_2939:
            v731 = 42;
            goto LABEL_2940;
          }

          v732 = nSubLangIDGlb;
          if (nSubLangIDGlb == 1)
          {
            v733 = lFlags;
LABEL_2234:
            v730 = *v680;
            if ((v733 & 0x20000) == 0)
            {
              if (v730 == 61)
              {
                v734 = &unk_9D000;
LABEL_2237:
                if (v689 == 9 && v732 != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                {
                  v957 = v734[246];
                  if (v957 != qword_9D7C0)
                  {
                    v958 = *(v957 - 1);
                    if (v958 != 9 && v958 != 32 && v958 != 160)
                    {
                      std_char(32);
                    }
                  }

                  v959 = 36;
                  for (n = 1; n != 4; ++n)
                  {
                    std_char(v959);
                    v959 = aK_16[n];
                  }

                  byte_9D844 = 0;
                  goto LABEL_2966;
                }

                v731 = 61;
                goto LABEL_2965;
              }

              v929 = v678 != qword_9D7F8 && v679 == 0;
              if ((v679 & 0xD0) != 0)
              {
                v929 = 1;
              }

              if (nLangIDGlb != 9 || !v929 || (v733 & 0x40000000) != 0 && (byte_9D798 & 1) == 0)
              {
                if (v681 >= 2)
                {
                  v33[245] = v681 + 1;
                }

                std_char(stru_B8.segname[pLangGlb + 3]);
                v730 = *v680;
              }
            }

            if (v730 <= 61)
            {
              if (v730 <= 42)
              {
                if (v730 <= 39)
                {
                  if (v730 == 33)
                  {
                    if (nLangIDGlb != 9 || nSubLangIDGlb == 2 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0 || (v680[1] == 61 || !v680[1]) && (v680[1] || !v683 || (v683 & 0x22) != 0 || v683 == 16 && **v678[6] == 61))
                    {
                      goto LABEL_2966;
                    }

                    v731 = 33;
                    goto LABEL_2940;
                  }

                  if (v730 != 37)
                  {
                    goto LABEL_2964;
                  }

                  if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                  {
                    v978 = 0;
                    v979 = 34;
                    do
                    {
                      std_char(v979);
                      v979 = asc_20F82[++v978];
                    }

                    while (v978 != 2);
                    goto LABEL_2966;
                  }

                  v731 = 37;
                  goto LABEL_2965;
                }

                if (v730 == 40)
                {
                  if (nLangIDGlb != 9 || nSubLangIDGlb == 2 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
                  {
                    v731 = 40;
                    goto LABEL_2965;
                  }

                  goto LABEL_2999;
                }

                if (v730 == 41)
                {
                  if (nLangIDGlb != 9 || nSubLangIDGlb == 2 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
                  {
                    v731 = 41;
                    goto LABEL_2965;
                  }

                  goto LABEL_2927;
                }

LABEL_2906:
                v731 = 49;
                goto LABEL_2940;
              }

              if (v730 <= 46)
              {
                if (v730 == 43)
                {
                  v731 = 48;
                  goto LABEL_2940;
                }

                if (v730 != 46)
                {
                  goto LABEL_2964;
                }

                goto LABEL_2906;
              }

              v734 = &unk_9D000;
              if (v730 != 47)
              {
                if (v730 == 60)
                {
                  if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                  {
                    v970 = 0;
                    v971 = 33;
                    do
                    {
                      std_char(v971);
                      v971 = aK_6[++v970];
                    }

                    while (v970 != 2);
                    goto LABEL_2966;
                  }

                  v731 = 60;
                  goto LABEL_2965;
                }

                if (v730 != 61)
                {
                  goto LABEL_2964;
                }

                v689 = nLangIDGlb;
                v732 = nSubLangIDGlb;
                goto LABEL_2237;
              }

              goto LABEL_2814;
            }

            if (v730 <= 124)
            {
              if (v730 <= 92)
              {
                if (v730 == 62)
                {
                  if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                  {
                    v974 = 0;
                    v975 = 36;
                    do
                    {
                      std_char(v975);
                      v975 = asc_22180[++v974];
                    }

                    while (v974 != 2);
                    goto LABEL_2966;
                  }

                  v731 = 62;
                }

                else
                {
                  if (v730 != 91)
                  {
                    goto LABEL_2964;
                  }

                  if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                  {
                    v980 = 0;
                    v981 = 34;
                    do
                    {
                      std_char(v981);
                      v981 = asc_20FBC[++v980];
                    }

                    while (v980 != 2);
                    goto LABEL_2966;
                  }

                  v731 = 91;
                }

                goto LABEL_2965;
              }

              if (v730 == 93)
              {
                if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                {
                  v972 = 0;
                  v973 = 34;
                  do
                  {
                    std_char(v973);
                    v973 = asc_20FD7[++v972];
                  }

                  while (v972 != 2);
                  goto LABEL_2966;
                }

                v731 = 93;
                goto LABEL_2965;
              }

              if (v730 == 123)
              {
                if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                {
                  v968 = 0;
                  v969 = 36;
                  do
                  {
                    std_char(v969);
                    v969 = asc_26CAC[++v968];
                  }

                  while (v968 != 2);
                  goto LABEL_2966;
                }

                v731 = 123;
                goto LABEL_2965;
              }

              if (v730 != 124)
              {
                goto LABEL_2964;
              }

LABEL_2814:
              if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
              {
                v934 = 0;
                v935 = 36;
                do
                {
                  std_char(v935);
                  v935 = asc_26CA1[++v934];
                }

                while (v934 != 2);
                goto LABEL_2966;
              }

              goto LABEL_2231;
            }

            if (v730 <= 149)
            {
              if (v730 == 125)
              {
                if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                {
                  v976 = 0;
                  v977 = 36;
                  do
                  {
                    std_char(v977);
                    v977 = asc_26CAF[++v976];
                  }

                  while (v976 != 2);
                  goto LABEL_2966;
                }

                v731 = 125;
              }

              else
              {
                if (v730 != 137)
                {
                  goto LABEL_2964;
                }

                if (nLangIDGlb == 9 && nSubLangIDGlb != 2 && ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0))
                {
                  v982 = 34;
                  for (ii = 1; ii != 4; ++ii)
                  {
                    std_char(v982);
                    v982 = asc_26CA8[ii];
                  }

                  goto LABEL_2966;
                }

                v731 = 4294967177;
              }

              goto LABEL_2965;
            }

            if (v730 != 150)
            {
              if (v730 == 215)
              {
                goto LABEL_2906;
              }

              if (v730 != 247)
              {
                goto LABEL_2964;
              }

              goto LABEL_2814;
            }

            if (nLangIDGlb != 9 || nSubLangIDGlb == 2 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
            {
              v731 = 45;
              goto LABEL_2965;
            }

LABEL_2879:
            v731 = 45;
            goto LABEL_2940;
          }

          if (nLangIDGlb == 9 && nSubLangIDGlb != 2)
          {
            v733 = lFlags;
            if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
            {
              goto LABEL_2234;
            }
          }

          if (nSubLangIDGlb == 3)
          {
            if ((lFlags & 0x20000) == 0)
            {
              v730 = *v680;
              if (v730 == 61)
              {
                goto LABEL_2964;
              }

              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              std_char(stru_B8.segname[pLangGlb + 3]);
            }

            v730 = *v680;
            if (v730 <= 0x7B)
            {
              if (*v680 > 0x2Du)
              {
                if (v730 != 46)
                {
                  if (v730 != 47)
                  {
                    goto LABEL_2964;
                  }

                  goto LABEL_2231;
                }
              }

              else if (v730 != 42)
              {
                if (v730 == 43)
                {
                  v731 = 43;
                  goto LABEL_2940;
                }

                goto LABEL_2964;
              }

LABEL_2970:
              v731 = 40;
              goto LABEL_2940;
            }

            if (*v680 > 0xD6u)
            {
              if (v730 != 215)
              {
                if (v730 != 247)
                {
                  goto LABEL_2964;
                }

                goto LABEL_2231;
              }

              goto LABEL_2970;
            }

            if (v730 != 124)
            {
              if (v730 != 150)
              {
                goto LABEL_2964;
              }

              goto LABEL_2879;
            }

LABEL_2231:
            v731 = 124;
            goto LABEL_2940;
          }

          v730 = *v680;
          if (v730 <= 0x2E)
          {
            if (v730 != 42)
            {
              if (v730 == 43)
              {
                v966 = 0;
                v967 = 60;
                do
                {
                  std_char(v967);
                  v967 = asc_2221C[++v966];
                }

                while (v966 != 2);
                goto LABEL_2966;
              }

              if (v730 != 46)
              {
                goto LABEL_2964;
              }
            }
          }

          else
          {
            if (*v680 <= 0xD6u)
            {
              if (v730 != 47)
              {
                if (v730 != 150)
                {
                  goto LABEL_2964;
                }

                std_char(60);
                v731 = 4294967190;
                goto LABEL_2965;
              }

LABEL_2882:
              v947 = 0;
              v948 = 60;
              do
              {
                std_char(v948);
                v948 = asc_2223B[++v947];
              }

              while (v947 != 2);
              goto LABEL_2966;
            }

            if (v730 != 215)
            {
              if (v730 != 247)
              {
                goto LABEL_2964;
              }

              goto LABEL_2882;
            }
          }

          v949 = 0;
          v950 = 60;
          do
          {
            std_char(v950);
            v950 = asc_22219[++v949];
          }

          while (v949 != 2);
          goto LABEL_2966;
        }

        if (nLangIDGlb != 7)
        {
          v721 = nSubLangIDGlb;
          v722 = nLangIDGlb == 9;
          if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
          {
            v723 = *v680;
            if (*v680)
            {
              if (memchr(",;:!?", *v680, 6uLL))
              {
                v724 = 1;
              }

              else
              {
                v724 = v723 == 46;
              }

              v722 = 1;
              v721 = 3;
              if (v724 && (v683 & 0x1E000) != 0)
              {
                goto LABEL_2849;
              }
            }

            else
            {
              v722 = 1;
              v721 = 3;
            }
          }

          v911 = v721 != 2 && v722;
          if (v911)
          {
            if ((byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
            {
              goto LABEL_2840;
            }
          }

          else
          {
            if (v721 != 2)
            {
              v722 = 0;
            }

            if (!v722 || (byte_9D798 & 1) == 0 && (lFlags & 0x40000000) != 0)
            {
              goto LABEL_2840;
            }
          }

          if ((v679 & 0xD0) != 0)
          {
            if (v911)
            {
              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              v912 = 127;
            }

            else
            {
              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              v912 = 39;
            }

            std_char(v912);
            goto LABEL_2850;
          }

          goto LABEL_2840;
        }

        v700 = *v680;
        if (*v680)
        {
          if (memchr("()!?", *v680, 5uLL))
          {
            v701 = v678[4];
            if ((v701 & 4) == 0)
            {
              if ((v679 & 0x1E0C0) != 0 || (v679 & 0x24) != 0 && ((v936 = *v678[5], !*v936) || !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *v936, 0x15uLL)))
              {
                if ((v683 & 0x1E0C0) != 0 || (v683 & 0x24) != 0 && (!**v682 || !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", **v682, 0x15uLL)))
                {
                  goto LABEL_2849;
                }
              }
            }

            if ((v701 & 0x42) == 0)
            {
              if (!v679 || v679 <= 2 && ((v938 = *v678[5], !*v938) || !memchr(".,:;!?-_'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *v938, 0x15uLL)))
              {
                if (!v683)
                {
                  goto LABEL_2849;
                }

                if (v683 <= 2)
                {
                  v939 = **v682;
                  if (v939 < 0x21 || v939 == 160)
                  {
                    goto LABEL_2849;
                  }
                }
              }
            }
          }

          if (memchr(",;:!?", v700, 6uLL))
          {
            if ((v683 & 0x1E020) != 0)
            {
              if (!**v682 || !memchr(".!'><$CQXY\x7F", **v682, 0xDuLL))
              {
                goto LABEL_2849;
              }
            }

            else if (v683 == 2)
            {
              if (**v682 != **(&stru_20.filesize + pLangGlb))
              {
LABEL_2840:
                escape_number(v678, **(&stru_20.maxprot + pLangGlb));
LABEL_2850:
                v731 = *v22[250];
                goto LABEL_2965;
              }

LABEL_2849:
              map_char(**(&stru_20.maxprot + pLangGlb));
              goto LABEL_2850;
            }
          }
        }

        if ((v679 & 0xC) == 0)
        {
          goto LABEL_2840;
        }

        if ((v683 & 0xC) == 0)
        {
          goto LABEL_2840;
        }

        if ((v678[4] & 4) != 0)
        {
          goto LABEL_2840;
        }

        v937 = *v678[5];
        if (!*v937 || !memchr("({[<\x91", *v937, 6uLL) || !**v682 || !memchr(")}]>\x9B", **v682, 6uLL))
        {
          goto LABEL_2840;
        }

        goto LABEL_2849;
      }

      if (v684 != 32)
      {
        if (v684 != 64)
        {
          goto LABEL_2155;
        }

        if (nLangIDGlb == 12)
        {
          if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
          {
            if (byte_9D844)
            {
              goto LABEL_2564;
            }

            if (v681 >= 2)
            {
              v33[245] = v681 + 1;
            }

            v695 = 39;
LABEL_2563:
            std_char(v695);
            byte_9D844 = 1;
            goto LABEL_2564;
          }
        }

        else
        {
          v720 = nLangIDGlb == 9;
          if (nLangIDGlb == 9 && nSubLangIDGlb != 2)
          {
            if ((byte_9D798 & 1) != 0 || (lFlags & 0x40000000) == 0)
            {
              if (byte_9D844)
              {
                goto LABEL_2564;
              }

              if (v681 >= 2)
              {
                v33[245] = v681 + 1;
              }

              v695 = 35;
              goto LABEL_2563;
            }

            v720 = 1;
          }

          if (v720 && nSubLangIDGlb == 3)
          {
            if (byte_9D798)
            {
LABEL_2564:
              v854 = v22[250];
              v857 = *v854;
              v856 = v854 + 1;
              v855 = v857;
              do
              {
                std_char(v855);
                v858 = *v856++;
                v855 = v858;
              }

              while (v858);
              goto LABEL_2966;
            }

LABEL_2201:
            if (v681 >= 2)
            {
              v33[245] = v681 + 1;
            }

            std_char(35);
            goto LABEL_2564;
          }
        }

        if (v679 == 128)
        {
          goto LABEL_2564;
        }

        goto LABEL_2201;
      }

LABEL_2105:
      escape_number(v678, **(&stru_20.maxprot + pLangGlb));
      if (nLangIDGlb == 7)
      {
        if (v678[3] != &stru_20)
        {
          goto LABEL_2208;
        }

        v696 = *v678;
        v697 = **v678;
        if (byte_9D798 == 1)
        {
          if (v697 != 39 || v696[1] != 46 || v696[2])
          {
            goto LABEL_2208;
          }

          goto LABEL_2119;
        }

        if (v697 != 33 || v696[1] != 44 || v696[2])
        {
          goto LABEL_2208;
        }
      }

      else
      {
        if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
        {
          if (nLangIDGlb == 12 && v678[3] == &stru_B8.reserved2)
          {
            v699 = v33[245];
            if (v699 >= 2)
            {
              v33[245] = v699 + 1;
            }

            std_char(33);
          }

          goto LABEL_2208;
        }

        if (v678[3] != &stru_20)
        {
          goto LABEL_3200;
        }

        v698 = *v678;
        if (byte_9D798 == 1)
        {
          if (*v698 != 35 || v698[1] != 46 || v698[2])
          {
            goto LABEL_2208;
          }

LABEL_2119:
          byte_9D798 = 0;
          goto LABEL_2208;
        }

        if (strcmp(v698, "## "))
        {
LABEL_3200:
          do
          {
LABEL_2208:
            v727 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
            if (v727 && *(qword_9D7E0 + 24) == 256)
            {
              v728 = v33[245];
              if (v728 >= 2)
              {
                v33[245] = v728 + 1;
              }

              std_char(33);
            }

            v729 = v22[250];
            std_char(*v729);
            v22[250] = (v729 + 1);
          }

          while (v729[1]);
          goto LABEL_2966;
        }
      }

      byte_9D798 = 1;
      goto LABEL_2208;
    }

    if (v684 > 1)
    {
      if (v684 != 2)
      {
        if (v684 != 4)
        {
          goto LABEL_2155;
        }

        if (nLangIDGlb != 7)
        {
          if (nLangIDGlb != 9)
          {
            goto LABEL_2860;
          }

          if (nSubLangIDGlb == 2)
          {
            goto LABEL_2860;
          }

          if (((lFlags >> 30) & 1 & ~byte_9D798) != 0)
          {
            goto LABEL_2860;
          }

          if ((v679 & 0xD0) == 0)
          {
            goto LABEL_2860;
          }

          v719 = *(*(&stru_20.cmd + pLangGlb) + 8 * *v680);
          if (!*v719 || !memchr(",;:/?+=(*)", *v719, 0xBuLL))
          {
            goto LABEL_2860;
          }

          if (v681 >= 2)
          {
            v33[245] = v681 + 1;
          }

          v691 = 127;
          goto LABEL_2178;
        }

        v690 = *v680;
        if (*v680)
        {
          if (memchr("[]\x82\x91\x92", *v680, 6uLL) && v679 == v683 && (v679 & 0x1E0E4) != 0 && **v678[5] != 46 && **v682 != 46)
          {
            inc_string("''");
LABEL_2860:
            v944 = v22[250];
            v730 = *v944;
            if (v730 != 223 || nLangIDGlb != 7)
            {
              if (v730 == 196 || v730 == 214)
              {
                if (nLangIDGlb != 7)
                {
                  goto LABEL_2964;
                }
              }

              else
              {
                if (v730 != 220 || nLangIDGlb != 7)
                {
                  goto LABEL_2964;
                }

                LOBYTE(v730) = -36;
              }

              if ((*(qword_9D7E0 + 32) & 0x40) == 0)
              {
                v945 = **(&stru_20.maxprot + pLangGlb);
                v946 = v33[245];
                if (v946 >= 2)
                {
                  v33[245] = v946 + 1;
                }

                std_char(v945);
                v731 = *v944;
                goto LABEL_2965;
              }

              goto LABEL_2964;
            }

            if ((*(qword_9D7E0 + 32) & 0x40) == 0)
            {
              LOBYTE(v730) = -33;
              goto LABEL_2964;
            }

            v731 = 126;
            goto LABEL_2940;
          }

          if (!memchr("\x84\x93\x94", v690, 4uLL) || v679 != v683 || (v679 & 0x1E0E4) == 0 || **v678[5] == 46 || **v682 == 46)
          {
            goto LABEL_2860;
          }

          if (v681 >= 2)
          {
            v33[245] = v681 + 1;
          }

          v691 = 39;
LABEL_2178:
          std_char(v691);
          goto LABEL_2860;
        }

        LOBYTE(v730) = 0;
LABEL_2964:
        v731 = v730;
        goto LABEL_2965;
      }

      v704 = nLangIDGlb;
      v705 = dword_9D7A0;
      if (nLangIDGlb == 7 && dword_9D7A0)
      {
        if (lowerchar_follows(v678, 1))
        {
          v706 = *&stru_68.segname[pLangGlb];
          v709 = *v706;
          v708 = v706 + 1;
          v707 = v709;
          do
          {
            std_char(v707);
            v710 = *v708++;
            v707 = v710;
          }

          while (v710);
          v705 = 0;
          dword_9D7A0 = 0;
          v704 = nLangIDGlb;
          goto LABEL_2263;
        }

        v704 = nLangIDGlb;
        v705 = dword_9D7A0;
      }

      if (v704 == 10 && v705)
      {
        v737 = *v22[250];
        if (v737 == 9 || v737 == 160 || v737 == 32)
        {
          v705 = 0;
          dword_9D7A0 = 0;
        }

        else
        {
          v705 = 1;
        }

        v704 = 10;
        goto LABEL_2741;
      }

LABEL_2263:
      switch(v704)
      {
        case 9:
          v819 = *(qword_9D7E0 + 48);
          if (!v819 || *(v819 + 8) != 1 || (*(v819 + 35) & 8) == 0)
          {
            v704 = 9;
            goto LABEL_2741;
          }

          break;
        case 10:
          goto LABEL_2741;
        case 12:
          break;
        default:
          v738 = v22[250];
          goto LABEL_2742;
      }

      v738 = v22[250];
      v739 = pLangGlb;
      v740 = *(&stru_20.filesize + pLangGlb);
      if (!strcmp(v738, v740))
      {
        v926 = v740;
        if (v704 != 12)
        {
          v926 = *&stru_68.sectname[v739];
        }

        v927 = uppersign_follows(qword_9D7E0, v926);
        qword_9D828 = v927;
        if (!v927)
        {
          byte_9D840 = 0;
          if (!v705)
          {
            v942 = *v738;
            v941 = (v738 + 1);
            v940 = v942;
            do
            {
              std_char(v940);
              v943 = *v941++;
              v940 = v943;
            }

            while (v943);
          }

          goto LABEL_2966;
        }

        if ((byte_9D840 & 1) != 0 || v705)
        {
          goto LABEL_2966;
        }

        if (v704 == 9)
        {
          if (uppersign_follows(v927, *&stru_68.sectname[v739]))
          {
            goto LABEL_2889;
          }
        }

        else
        {
          v961 = uppersign_follows(v927, v740);
          if (uppersign_follows(v961, v740))
          {
            inc_string(*&stru_68.segname[v739 - 8]);
            byte_9D840 = 1;
            goto LABEL_2966;
          }
        }

        v964 = *v738;
        v963 = (v738 + 1);
        v962 = v964;
        do
        {
          std_char(v962);
          v965 = *v963++;
          v962 = v965;
        }

        while (v965);
        goto LABEL_2966;
      }

      if (((1 << v704) & 0x1600) == 0)
      {
LABEL_2742:
        v916 = *v738;
        v915 = (v738 + 1);
        v914 = v916;
        do
        {
          std_char(v914);
          v917 = *v915++;
          v914 = v917;
        }

        while (v917);
        goto LABEL_2966;
      }

LABEL_2741:
      v738 = v22[250];
      v739 = pLangGlb;
      v913 = *&stru_68.sectname[pLangGlb];
      if (strcmp(v738, v913))
      {
        goto LABEL_2742;
      }

      v918 = qword_9D7E0;
      v919 = uppersign_follows(qword_9D7E0, v913);
      qword_9D828 = v919;
      if (!v919)
      {
        if (v704 == 9 && v705)
        {
          terminate_upper(v918);
        }

        else
        {
          v932 = *v738;
          v931 = (v738 + 1);
          v930 = v932;
          do
          {
            std_char(v930);
            v933 = *v931++;
            v930 = v933;
          }

          while (v933);
        }

        dword_9D7A0 = 0;
        goto LABEL_2966;
      }

      if (v705)
      {
        goto LABEL_2966;
      }

      v920 = v919;
      if (v704 != 12 && (v704 != 9 || nSubLangIDGlb == 3))
      {
        if (uppersign_follows(v919, v913))
        {
          goto LABEL_2889;
        }

        if (v704 != 9)
        {
LABEL_2751:
          v924 = *v738;
          v923 = (v738 + 1);
          v922 = v924;
          do
          {
            std_char(v922);
            v925 = *v923++;
            v922 = v925;
          }

          while (v925);
          goto LABEL_2966;
        }
      }

      v921 = uppersign_follows(v920, v913);
      if (!uppersign_follows(v921, v913))
      {
        goto LABEL_2751;
      }

LABEL_2889:
      inc_string(*&stru_68.segname[v739 - 8]);
      dword_9D7A0 = 1;
      goto LABEL_2966;
    }

    if (!v684)
    {
      goto LABEL_2966;
    }

    if (v684 == 1)
    {
      v687 = *v680;
      v686 = v680 + 1;
      v685 = v687;
      do
      {
        std_char(v685);
        v688 = *v686++;
        v685 = v688;
      }

      while (v688);
      goto LABEL_2966;
    }

LABEL_2155:
    v714 = v678[1];
    if (v714 >= 1)
    {
      v715 = -v714;
      v716 = &v680[v714 - 1];
      v717 = 1;
      do
      {
        seg_index[*v716] = v717;
        seg_start[*v716] = v716;
        --v716;
        ++v717;
        v76 = __CFADD__(v715++, 1);
      }

      while (!v76);
    }

    if (nLangIDGlb == 12 && bMemoryOverflow == 0)
    {
      v725 = malloc_type_malloc(v714 + 1, 0x100004077774924uLL);
      if (v725)
      {
        v1042 = v725;
        strcpy(v725, v22[250]);
      }

      else
      {
        v1042 = 0;
        bMemoryOverflow = 1;
      }
    }

    else
    {
      v1042 = 0;
    }

    if ((*(&dword_18 + pLangGlb) & 0x80000000) == 0)
    {
      v741 = 0;
      v742 = *(&dword_10 + pLangGlb);
      while (1)
      {
        v743 = v742[2];
        v744 = *v742;
        v745 = **v742;
        v746 = seg_index[v745];
        if (v743 <= v746)
        {
          if (seg_index[v744[v743 - 1]])
          {
            if (seg_index[v744[1]])
            {
              v747 = qword_9D7E0;
              if ((*(qword_9D7E0 + 32) & v742[7] & 0x9000FFFF) == 0)
              {
                break;
              }
            }
          }
        }

LABEL_2276:
        v742 += 8;
        v20 = v741++ < *(&dword_18 + pLangGlb);
        if (!v20)
        {
          goto LABEL_2398;
        }
      }

      v748 = seg_start[v745];
      v8[253] = v748;
      v749 = *v742;
LABEL_2279:
      while (2)
      {
        v750 = 1;
        while (1)
        {
          v751 = v749[v750];
          if (!v749[v750])
          {
            break;
          }

          v752 = v748[v750++];
          if (v752 != v751)
          {
            goto LABEL_2323;
          }
        }

        v753 = &v748[v750];
        v1040 = v748 - v22[250];
        if (v1040)
        {
LABEL_2284:
          if (*v753)
          {
            goto LABEL_2285;
          }

          v764 = nLangIDGlb;
          if (nLangIDGlb != 7)
          {
            goto LABEL_2310;
          }

          if (qword_9D848 != 8)
          {
            if (qword_9D848 != 4)
            {
              goto LABEL_2310;
            }

            v765 = **(v747 + 48);
            if (!*v765)
            {
              goto LABEL_2310;
            }

            v1038 = v747;
            v766 = v22;
            v767 = v753;
            v768 = memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *v765, 0xDuLL);
            v753 = v767;
            v22 = v766;
            v33 = &unk_9D000;
            v747 = v1038;
            if (!v768)
            {
              goto LABEL_2310;
            }
          }

          v769 = *(*(v747 + 48) + 48);
          if (v769 && (*(v769 + 25) & 0x1C0) != 0)
          {
LABEL_2285:
            if ((v742[6] & 0x8000) != 0)
            {
              v1033 = v742[6];
              __s = v753;
              v1036 = v747;
              v8 = &unk_9D000;
              if (no_exception(1, v742[5], &v748[v743]))
              {
                goto LABEL_2337;
              }

              goto LABEL_2389;
            }
          }

          else
          {
LABEL_2310:
            if ((v742[6] & 0x10000) != 0)
            {
              v770 = *v742[1];
              if (v764 == 12 && v770 == 63 && qword_9D848 == 8)
              {
                v8 = &unk_9D000;
                if (***(v747 + 48) != 63)
                {
                  goto LABEL_2336;
                }

                goto LABEL_2323;
              }

              if (v764 != 12)
              {
                v8 = &unk_9D000;
                goto LABEL_2336;
              }

              v8 = &unk_9D000;
              if (v770 != 47)
              {
                goto LABEL_2336;
              }

              if ((lFlags & 0x40000) != 0 && qword_9D848 == 4)
              {
                if (***(v747 + 48) != 46)
                {
                  goto LABEL_2336;
                }

LABEL_2323:
                v772 = (v748 + 1);
                while (v746 > v743)
                {
                  --v746;
                  v8[253] = v772;
                  v773 = *v772;
                  v772 = (v772 + 1);
                  v749 = *v742;
                  if (v773 == **v742)
                  {
                    v748 = v772 - 1;
                    goto LABEL_2279;
                  }
                }

                goto LABEL_2276;
              }

              if ((lFlags & 0x40000) == 0 && qword_9D848 == 32 && ***(v747 + 48) == 47)
              {
                goto LABEL_2323;
              }

LABEL_2336:
              v1033 = v742[6];
              __s = v753;
              v1036 = v747;
LABEL_2337:
              v774 = v742[4];
              v775 = v748 - 1;
              v776 = 0;
LABEL_2338:
              if (no_exception(v776, v774, v775))
              {
LABEL_2339:
                v779 = *v749;
                v778 = v749 + 1;
                v777 = v779;
                do
                {
                  seg_index[v777] = 0;
                  v780 = *v778++;
                  v777 = v780;
                }

                while (v780);
                v781 = v33[245];
                if (v781 > v1040)
                {
                  if (v781 <= v743 + v1040)
                  {
                    v782 = (v1040 + 1);
                  }

                  else
                  {
                    v782 = &v742[3][v781 - v743];
                  }

                  v33[245] = v782;
                }

                v783 = v748;
                if ((lFlags & 0x20000000) != 0)
                {
                  v783 = v748;
                  if (v1040 >= 2)
                  {
                    v783 = v748;
                    if ((v1033 & 0x20000) != 0)
                    {
                      v783 = v748;
                      if (*(v748 - 1) != 173)
                      {
                        if (nLangIDGlb != 12 || (v792 = no_exception(0, byte_4865A, v748 - 1), v783 = v748, v792))
                        {
                          *v748 = -83;
                          v783 = v8[253] + 1;
                          v8[253] = v783;
                        }
                      }
                    }
                  }
                }

                memcpy(v783, v742[1], v742[3]);
                v746 -= v742[2];
                v784 = &v742[3][v8[253]];
                v8[253] = v784;
                if ((lFlags & 0x20000000) != 0)
                {
                  v785 = __s;
                  if (v1040 >= 2 && (v742[6] & 0x40000) != 0)
                  {
                    v793 = *(v784 - 1) == 173 || v746 < 2;
                    if (!v793 && *__s != 173)
                    {
                      *v784 = -83;
                      v784 = (v8[253] + 1);
                      v8[253] = v784;
                    }
                  }
                }

                else
                {
                  v785 = __s;
                }

                if (v785 > v784)
                {
                  *(qword_9D7E0 + 8) = &v784[*(qword_9D7E0 + 8)] - v748 - v750;
                  v786 = v785;
                  v787 = strlen(v785);
                  memmove(v784, v786, v787 + 1);
                }

                v747 = qword_9D7E0;
                v788 = *(qword_9D7E0 + 8);
                if (v788 >= 1)
                {
                  v789 = -v788;
                  v790 = &v22[250][v788 - 1];
                  v791 = 1;
                  do
                  {
                    seg_index[*v790] = v791;
                    seg_start[*v790] = v790;
                    --v790;
                    ++v791;
                    v76 = __CFADD__(v789++, 1);
                  }

                  while (!v76);
                }

                v743 = v742[2];
                v749 = *v742;
                if (v743 > seg_index[**v742] || !seg_index[v749[v743 - 1]] || !seg_index[v749[1]])
                {
                  goto LABEL_2276;
                }

                v748 = v8[253];
                if (*v748 == *v749)
                {
                  continue;
                }

                goto LABEL_2323;
              }

LABEL_2389:
              v747 = v1036;
              goto LABEL_2323;
            }
          }

          goto LABEL_2322;
        }

        break;
      }

      v754 = qword_9D7D8;
      __c = nLangIDGlb;
      if (nLangIDGlb == 7)
      {
        if (qword_9D7D8 == 8)
        {
LABEL_2293:
          v757 = *(*(v747 + 40) + 40);
          if (v757 && (*(v757 + 25) & 0x1C0) != 0)
          {
            goto LABEL_2284;
          }
        }

        else if (qword_9D7D8 == 4)
        {
          v755 = **(v747 + 40);
          if (*v755)
          {
            v1037 = v747;
            v1034 = qword_9D7D8;
            v756 = memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", *v755, 0xDuLL);
            v754 = v1034;
            v753 = &v748[v750];
            v747 = v1037;
            if (v756)
            {
              goto LABEL_2293;
            }
          }

LABEL_2297:
          v762 = v742[6];
          if (!*v753)
          {
            if ((v762 & 0x2000) != 0)
            {
              if (*v742[1] == 45)
              {
                if ((v754 & 0x30) != 0)
                {
                  goto LABEL_2322;
                }

                v1033 = v742[6];
                __s = v753;
                if (v754 == 4)
                {
                  v1036 = v747;
                  v795 = **(v747 + 40);
                  v796 = *v795;
                  if (!*v795)
                  {
                    v8 = &unk_9D000;
                    goto LABEL_2389;
                  }

                  if (!memchr("({[<\x91", *v795, 6uLL))
                  {
                    v797 = memchr(")}]>\x9B", v796, 6uLL);
                    v8 = &unk_9D000;
                    if (v797)
                    {
                      goto LABEL_2339;
                    }

                    goto LABEL_2389;
                  }
                }
              }

              else
              {
                v1033 = v742[6];
                __s = v753;
              }

              v8 = &unk_9D000;
              goto LABEL_2339;
            }

LABEL_2322:
            v8 = &unk_9D000;
            goto LABEL_2323;
          }

          if ((v762 & 0x4000) == 0)
          {
            goto LABEL_2322;
          }

          v763 = *v742[1];
          if (v763 == 45)
          {
            if ((v754 & 0x30) != 0)
            {
              if (**v747 != 60)
              {
                goto LABEL_2322;
              }

              goto LABEL_2384;
            }

            if (v754 != 4)
            {
              goto LABEL_2384;
            }

            v1033 = v742[6];
            __s = v753;
            v794 = **(v747 + 40);
            if (!*v794)
            {
              goto LABEL_2322;
            }

            v1036 = v747;
            __ca = *v794;
            v8 = &unk_9D000;
            if (!memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", __ca, 0xDuLL) && !memchr("({[<\x91", __ca, 6uLL) && !memchr(")}]>\x9B", __ca, 6uLL))
            {
              goto LABEL_2389;
            }
          }

          else
          {
LABEL_2384:
            __s = v753;
            v1036 = v747;
            v1033 = v742[6];
            if (__c == 7 && v754 == 32)
            {
              v8 = &unk_9D000;
              if (*v742[1] && ***(v747 + 40) == 39 && memchr(":+);=cqxy?(", v763, 0xCuLL))
              {
                goto LABEL_2389;
              }
            }

            else
            {
              v8 = &unk_9D000;
            }
          }

          v774 = v742[5];
          v775 = &v748[v743];
          v776 = 1;
          goto LABEL_2338;
        }
      }

      if ((v754 & 0xC0) != 0)
      {
        v758 = v747;
        v759 = v753;
        v760 = v754;
        v761 = in(*v742[1], 5);
        v754 = v760;
        v753 = v759;
        v22 = &unk_9D000;
        v33 = &unk_9D000;
        v747 = v758;
        if (v761)
        {
          goto LABEL_2322;
        }
      }

      goto LABEL_2297;
    }

LABEL_2398:
    escape_number(qword_9D7E0, 45);
    if (qword_9D848 == 32)
    {
      v798 = ***(qword_9D7E0 + 48);
      if (v798 == 33 || v798 == **(&stru_108.offset + *(&stru_20.cmd + pLangGlb)))
      {
        v800 = 0;
        v801 = off_95000;
LABEL_2412:
        v804 = v1042;
        goto LABEL_2426;
      }
    }

    v801 = off_95000;
    if (qword_9D7D8 == 32)
    {
      v802 = ***(qword_9D7E0 + 40);
      if (v802 == 33 || v802 == **(&stru_108.offset + *(&stru_20.cmd + pLangGlb)))
      {
        v800 = 0;
        goto LABEL_2412;
      }
    }

    v805 = lFlags;
    v804 = v1042;
    if (((lFlags & 0x1000) != 0 || !equals_zweiformig(*qword_9D7E0, lFlags)) && (nLangIDGlb != 9 && nLangIDGlb != 12 || (v805 & 0x4000) != 0 || !equals_mehrformig(qword_9D7E0)))
    {
      goto LABEL_2425;
    }

    v806 = v33[245];
    if (v806 >= 2)
    {
      v33[245] = v806 + 1;
    }

    map_char(**(&stru_20.maxprot + pLangGlb));
    if (v1042)
    {
      v808 = (v1042 + 1);
      v807 = *v1042;
      do
      {
        map_char(v807);
        v809 = *v808++;
        v807 = v809;
      }

      while (v809);
      v800 = 1;
    }

    else
    {
LABEL_2425:
      v800 = 0;
    }

LABEL_2426:
    v810 = qword_9D7E0;
    if (*(qword_9D7E0 + 8) >= 1)
    {
      v811 = 0;
      v812 = v22[250];
      do
      {
        seg_index[*v812] = 0;
        if ((v800 & 1) == 0)
        {
          v813 = *(v801 + 120);
          v814 = *v812;
          if (v813 == 9 && nSubLangIDGlb == 3 && byte_9D798 != 0)
          {
            if (!*v812)
            {
              goto LABEL_2475;
            }

            if (v811 && (v814 - 97) <= 9u)
            {
              v818 = v33[245];
              if (v818 >= 2)
              {
                v33[245] = v818 + 1;
              }

              map_char(**(&stru_20.maxprot + pLangGlb));
              v817 = *v812;
LABEL_2472:
              map_char(v817);
              goto LABEL_2475;
            }
          }

          if (*v812 > 0x57u)
          {
            switch(v814)
            {
              case 0x58u:
                if (v813 == 7 && (~*(v810 + 32) & 0x14) == 0)
                {
                  v817 = 120;
                  goto LABEL_2474;
                }

                v817 = 88;
                goto LABEL_2472;
              case 0x59u:
                if (v813 == 7 && (~*(v810 + 32) & 0x84) == 0)
                {
                  v817 = 121;
                  goto LABEL_2474;
                }

                v817 = 89;
                goto LABEL_2472;
              case 0xDFu:
                if (v813 == 7 && (~*(v810 + 32) & 0x1CLL) == 0)
                {
                  v817 = 126;
                  goto LABEL_2474;
                }

                v817 = 4294967263;
                goto LABEL_2472;
            }

LABEL_2459:
            v817 = v814;
            if (v814 < 0x40 || v817 >= 96)
            {
              goto LABEL_2474;
            }

            goto LABEL_2472;
          }

          if (*v812)
          {
            if (v814 == 67)
            {
              if (v813 == 7 && (*(v810 + 32) & 4) != 0)
              {
                v817 = 99;
                goto LABEL_2474;
              }

              v817 = 67;
              goto LABEL_2472;
            }

            if (v814 == 81)
            {
              if (v813 == 7 && (~*(v810 + 32) & 0xCLL) == 0)
              {
                v817 = 113;
LABEL_2474:
                std_char(v817);
                goto LABEL_2475;
              }

              v817 = 81;
              goto LABEL_2472;
            }

            goto LABEL_2459;
          }
        }

LABEL_2475:
        v812 = v22[250] + 1;
        v22[250] = v812;
        v810 = qword_9D7E0;
        ++v811;
      }

      while (v811 < *(qword_9D7E0 + 8));
    }

    if (v804)
    {
      free(v1042);
    }

LABEL_2966:
    if (v33[245] >= 1)
    {
      v33[245] = 0;
      std_char(30);
    }

    v679 = *(qword_9D7E0 + 24);
    qword_9D7D8 = v679;
    v678 = *(qword_9D7E0 + 48);
    qword_9D7E0 = v678;
    if (v678)
    {
      continue;
    }

    break;
  }

  if (dword_9D7A0)
  {
    v984 = *&stru_68.segname[pLangGlb];
    v987 = *v984;
    v986 = v984 + 1;
    v985 = v987;
    do
    {
      std_char(v985);
      v988 = *v986++;
      v985 = v988;
    }

    while (v988);
    dword_9D7A0 = 0;
  }

LABEL_3063:
  if (byte_9D804 == 1)
  {
    if (byte_9D798 == 1)
    {
      close_math_passage(1);
    }

    else if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
    {
      v992 = 0;
      v993 = 60;
      do
      {
        std_char(v993);
        v993 = asc_26C8B[++v992];
      }

      while (v992 != 2);
    }

    else if (nLangIDGlb == 7)
    {
      v990 = 0;
      v991 = 39;
      do
      {
        std_char(v991);
        v991 = asc_2671B[++v990];
      }

      while (v990 != 2);
    }

    byte_9D804 = 0;
  }

  if (dword_9D830)
  {
    v994 = *&stru_B8.segname[pLangGlb - 8];
    v997 = *v994;
    v996 = v994 + 1;
    v995 = v997;
    do
    {
      std_char(v995);
      v998 = *v996++;
      v995 = v998;
    }

    while (v998);
    dword_9D830 = 0;
  }

  v999 = qword_9D7F8;
  if (qword_9D7F8)
  {
    do
    {
      v1000 = v999;
      v999 = *(v999 + 48);
      qword_9D7F8 = v999;
      free(v1000);
    }

    while (v999);
    qword_9D7E0 = v1000;
  }

  free(qword_9D838);
  qword_9D838 = 0;
  v1001 = qword_9D7B0;
  *qword_9D7B0 = 0;
  v1002 = qword_9D7B8;
  if (v1001 == qword_9D7B8)
  {
    return 111;
  }

  if (bMemoryOverflow)
  {
    return 8;
  }

  if (!v1044)
  {
    goto LABEL_3182;
  }

  v33[245] = 0;
  v8[253] = qword_9D7F0;
  v1003 = qword_9D7C0;
  qword_9D7B0 = qword_9D7C0;
  if (qword_9D7C0 == v1002)
  {
    goto LABEL_3182;
  }

  v1004 = 0;
  v1005 = 0;
  v1006 = 0;
  do
  {
    v1007 = *v1003;
    if (v1007 >= 0x21 && v1007 != 160)
    {
      v1008 = v1005;
      if (!memchr("#!'><$\x7F", v1007, 9uLL))
      {
        goto LABEL_3094;
      }

      v1009 = v1003[1];
      if (v1009 < 0x21)
      {
        goto LABEL_3094;
      }

      if (in(v1003[1], 5))
      {
        if (v1009 == 160)
        {
          goto LABEL_3094;
        }

        v1016 = v1003[2];
        if (v1016 < 0x21 || v1016 == 160)
        {
          goto LABEL_3094;
        }
      }

      else if (v1009 == 160)
      {
LABEL_3094:
        v1005 = v1008 + 1;
LABEL_3095:
        qword_9D7B0 = ++v1003;
        continue;
      }

      v1005 = v1008;
      goto LABEL_3095;
    }

    v1010 = v8[253];
    v1011 = *v1010;
    if (!*v1010)
    {
      v1012 = 0;
      goto LABEL_3125;
    }

    v1012 = 0;
    v1013 = v8[253];
    while (v1011 < 0x21)
    {
      if (v1011 != 30)
      {
        if (v1011 != 27)
        {
          goto LABEL_3124;
        }

        v1014 = v1013 + 1;
        if (v1013[1])
        {
          v8[253] = v1014;
          if (*v1014 - 51 > 1)
          {
            ++v1013;
          }

          else
          {
            v1015 = v1013[2];
            v1013 += 2;
            if ((v1015 - 1) >= 0x1F)
            {
              v1013 = v1014;
            }
          }
        }
      }

LABEL_3116:
      v1010 = v1013 + 1;
      v8[253] = v1013 + 1;
      v1011 = *++v1013;
      if (!v1011)
      {
        goto LABEL_3125;
      }
    }

    if (v1011 <= 126)
    {
      goto LABEL_3115;
    }

    if (v1011 == 127)
    {
      if (v1013[1] - 1 < 0x1F)
      {
        ++v1013;
      }

      goto LABEL_3116;
    }

    if (v1011 != 160)
    {
LABEL_3115:
      ++v1012;
      goto LABEL_3116;
    }

LABEL_3124:
    v1010 = v1013;
LABEL_3125:
    v1017 = v1004 + v1012 - 1;
    v33[245] = v1017;
    if (v1005 >= 2)
    {
      v1012 = v1012 / (v1005 - 1);
    }

    v1043 = v1005;
    if (v1012 <= 1)
    {
      v1018 = 1;
    }

    else
    {
      v1018 = v1012;
    }

    v1019 = qword_9D7C0;
    v1020 = &v1003[-qword_9D7C0];
    while (2)
    {
      if (v1006 < v1020)
      {
        v1044[v1006] = v1004;
        if (*(v1019 + v1006) && memchr("#!'><$\x7F", *(v1019 + v1006), 9uLL) && (v1021 = *(v1019 + v1006 + 1), v1021 >= 0x21))
        {
          if (v1021 - 45 < 2 || memchr(",;:/?+=(*)", *(v1019 + v1006 + 1), 0xBuLL))
          {
            if (v1021 == 160)
            {
              goto LABEL_3135;
            }

            v1022 = *(v1019 + v1006 + 2);
            if (v1022 < 0x21 || v1022 == 160)
            {
              goto LABEL_3135;
            }
          }

          else if (v1021 == 160)
          {
            goto LABEL_3135;
          }
        }

        else
        {
LABEL_3135:
          if (v1004 + v1018 >= v1017)
          {
            v1004 = v1017;
          }

          else
          {
            v1004 += v1018;
          }
        }

        ++v1006;
        continue;
      }

      break;
    }

    if (v1043 >= 2 && v1006 >= 2)
    {
      v1044[v1006 - 1] = v1017;
    }

    v1023 = *v1010;
    v8 = &unk_9D000;
    if (*v1010)
    {
      while (2)
      {
        if (v1023 >= 0x21)
        {
          if (v1023 <= 126)
          {
            break;
          }

          if (v1023 != 127)
          {
            if (v1023 != 160)
            {
              break;
            }

            goto LABEL_3159;
          }
        }

        else
        {
          if ((v1023 - 9) >= 5 && v1023 != 32)
          {
            if (v1023 == 27)
            {
              v1024 = v1010 + 1;
              if (v1010[1])
              {
                qword_9D7E8 = (v1010 + 1);
                if (*v1024 - 51 > 1)
                {
                  ++v1010;
                }

                else
                {
                  v1025 = v1010[2];
                  v1010 += 2;
                  if ((v1025 - 1) >= 0x1F)
                  {
                    v1010 = v1024;
                  }
                }
              }
            }

            goto LABEL_3167;
          }

LABEL_3159:
          v33[245] = ++v1017;
          if (*v1003 == v1023)
          {
            v1044[v1006++] = v1017;
            qword_9D7B0 = ++v1003;
          }
        }

LABEL_3167:
        qword_9D7E8 = (v1010 + 1);
        v1023 = *++v1010;
        if (!v1023)
        {
          break;
        }

        continue;
      }
    }

    v1026 = *v1003;
    if (!*v1003)
    {
LABEL_3181:
      v1044[v1006] = v1017;
      break;
    }

    while (v1026 < 0x21 || v1026 == 160)
    {
      if (v1026 == 31)
      {
        v1027 = strlen(v1003);
        memmove(v1003, v1003 + 1, v1027);
        v1003 = qword_9D7B0;
      }

      else
      {
        v1044[v1006++] = v33[245];
        qword_9D7B0 = ++v1003;
      }

      v1026 = *v1003;
      if (!*v1003)
      {
        v1017 = v33[245];
        goto LABEL_3181;
      }
    }

    v1005 = 0;
    v1004 = v33[245] + 1;
    v33[245] = v1004;
    v1002 = qword_9D7B8;
  }

  while (v1003 != v1002);
LABEL_3182:
  if (!(nEncodingGlb | bUpShiftGlb))
  {
    return 0;
  }

  v1028 = qword_9D7C0;
  v1029 = *qword_9D7C0;
  if (*qword_9D7C0)
  {
    while (2)
    {
      if (!pCharmapGlb)
      {
        goto LABEL_3192;
      }

      if (v1029 >= 0x21)
      {
        if (v1029 - 150 <= 0x17 && ((1 << (v1029 + 106)) & 0x800403) != 0)
        {
LABEL_3192:
          if (bUpShiftGlb && v1029 >= 96)
          {
            *v1028 = v1029 & 0x5F;
          }

          v1030 = *++v1028;
          v1029 = v1030;
          if (!v1030)
          {
            goto LABEL_3196;
          }

          continue;
        }
      }

      else if (v1029 != 30 && v1029 != 27)
      {
        goto LABEL_3192;
      }

      break;
    }

    LOBYTE(v1029) = *(pCharmapGlb + v1029);
    *v1028 = v1029;
    goto LABEL_3192;
  }

LABEL_3196:
  result = 0;
  qword_9D7B0 = v1028;
  return result;
}