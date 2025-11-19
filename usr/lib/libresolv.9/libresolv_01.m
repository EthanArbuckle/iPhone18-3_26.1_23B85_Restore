uint64_t res_9_ns_parserr2(uint64_t a1, res_9_ns_sect a2, signed int a3, uint64_t a4)
{
  if (a2 >= ns_s_max)
  {
    goto LABEL_20;
  }

  v5 = a3;
  if (*(a1 + 64) != a2)
  {
    v8 = *(a1 + 8 * a2 + 32);
    *(a1 + 64) = a2;
    *(a1 + 68) = 0;
    *(a1 + 72) = v8;
  }

  if (a3 == -1)
  {
    v5 = *(a1 + 68);
    if (v5 < 0)
    {
LABEL_20:
      v19 = __error();
      v20 = 19;
      goto LABEL_21;
    }
  }

  else if (a3 < 0)
  {
    goto LABEL_20;
  }

  if (v5 >= *(a1 + 20 + 2 * a2))
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 68);
  if (v5 < v9)
  {
    v9 = 0;
    v10 = *(a1 + 8 * a2 + 32);
    *(a1 + 64) = a2;
    *(a1 + 68) = 0;
    *(a1 + 72) = v10;
  }

  v11 = *(a1 + 72);
  if (v5 > v9)
  {
    v12 = res_9_ns_skiprr(*(a1 + 72), *(a1 + 8), a2, v5 - v9);
    if ((v12 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = (*(a1 + 72) + v12);
    *(a1 + 72) = v11;
    *(a1 + 68) = v5;
  }

  v13 = res_9_ns_name_unpack2(*a1, *(a1 + 8), v11, a4, 256, (a4 + 256));
  if ((v13 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = (*(a1 + 72) + v13);
  *(a1 + 72) = v14;
  v15 = *(a1 + 8);
  if ((v14 + 2) > v15)
  {
LABEL_19:
    v19 = __error();
    v20 = 40;
LABEL_21:
    *v19 = v20;
    return 0xFFFFFFFFLL;
  }

  *(a4 + 264) = __rev16(*v14);
  *(a1 + 72) = v14 + 1;
  *(a4 + 268) = __rev16(v14[1]);
  *(a1 + 72) = v14 + 2;
  if (a2)
  {
    v16 = v14 + 5;
    if ((v14 + 5) > v15)
    {
      goto LABEL_19;
    }

    *(a4 + 272) = bswap32(*(v14 + 1));
    *(a1 + 72) = v14 + 4;
    v17 = __rev16(v14[4]);
    *(a4 + 276) = v17;
    *(a1 + 72) = v16;
    v18 = v16 + v17;
    if (v18 > v15)
    {
      goto LABEL_19;
    }

    *(a4 + 280) = v16;
    *(a1 + 72) = v18;
  }

  else
  {
    *(a4 + 272) = 0;
    *(a4 + 280) = 0;
  }

  v22 = *(a1 + 68);
  *(a1 + 68) = v22 + 1;
  if (v22 < *(a1 + 20 + 2 * a2))
  {
    return 0;
  }

  *(a1 + 64) = a2 + 1;
  if (a2 == ns_s_ar)
  {
    v23 = 0;
    v24 = -1;
  }

  else
  {
    v24 = 0;
    v23 = *(a1 + 8 * (a2 + 1) + 32);
  }

  result = 0;
  *(a1 + 68) = v24;
  *(a1 + 72) = v23;
  return result;
}

int res_9_ns_sprintrr(const res_9_ns_msg *a1, const res_9_ns_rr *a2, const char *a3, const char *a4, char *a5, size_t a6)
{
  if (a2->name[0])
  {
    v6 = a2;
  }

  else
  {
    v6 = ".";
  }

  return res_9_ns_sprintrrf(a1->_msg, a1->_eom - a1->_msg, v6->name, a2->rr_class, a2->type, a2->ttl, a2->rdata, a2->rdlength, a3, a4, a5, a6);
}

int addstr(const char *a1)
{
  v4 = v1;
  if (*v3 <= v1)
  {
    *__error() = 28;
    return -1;
  }

  else
  {
    v5 = v3;
    v6 = v2;
    memcpy(*v2, a1, v1);
    v7 = *v5 - v4;
    if (*v5 < v4)
    {
      res_9_ns_sprintrrf_cold_1();
    }

    result = 0;
    v9 = *v6 + v4;
    *v6 = v9;
    *v5 = v7;
    *v9 = 0;
  }

  return result;
}

uint64_t prune_origin(char *a1, char *a2)
{
  v3 = a1;
  if (!*a1)
  {
    return v3 - a1;
  }

  v3 = a1;
LABEL_3:
  if (!a2 || res_9_ns_samename(v3, a2) != 1)
  {
    while (1)
    {
      v5 = *v3;
      if (v5 == 92)
      {
        if (!*++v3)
        {
          return v3 - a1;
        }
      }

      else
      {
        if (!*v3)
        {
          return v3 - a1;
        }

        if (v5 == 46)
        {
          if (!*++v3)
          {
            return v3 - a1;
          }

          goto LABEL_3;
        }
      }

      ++v3;
    }
  }

  return (__PAIR128__(v3 - a1, a1) - v3) >> 64;
}

uint64_t addtab(unint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 || a2 - 1 <= a1)
  {
    if ((addstr("  ") & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    v7 = *a5;
    v8 = *a4;
    v9 = ((~a1 + a2) >> 3) + 1;
    while ((addstr("\t") & 0x80000000) == 0)
    {
      if (--v9 < 1)
      {
        return 0;
      }
    }

    *a5 = v7;
    *a4 = v8;
  }

  return 0xFFFFFFFFLL;
}

unint64_t addname(const u_char *a1, uint64_t a2, const u_char **a3, char *a4, char **a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = *a5;
  v12 = res_9_dn_expand(a1, &a1[a2], *a3, *a5, *a6);
  if (v12 < 0)
  {
    goto LABEL_13;
  }

  v13 = v12;
  result = prune_origin(*a5, a4);
  v15 = *a5;
  if (**a5)
  {
    if (!result)
    {
      if (*a6 >= 2)
      {
        *v15 = 64;
        result = 1;
        goto LABEL_15;
      }

LABEL_13:
      *__error() = 28;
      *a5 = v11;
      *a6 = v10;
      return 0xFFFFFFFFLL;
    }

    if (a4 && *a4 && (*a4 == 46 || !a4[1] || v15[result]) || v15[result - 1] == 46)
    {
      goto LABEL_16;
    }
  }

  if (result + 2 > *a6)
  {
    goto LABEL_13;
  }

  v15[result++] = 46;
LABEL_15:
  (*a5)[result] = 0;
LABEL_16:
  *a3 += v13;
  v16 = *a6 - result;
  if (*a6 < result)
  {
    res_9_ns_sprintrrf_cold_1();
  }

  v17 = &(*a5)[result];
  *a5 = v17;
  *a6 = v16;
  *v17 = 0;
  return result;
}

uint64_t charstr(_BYTE *a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *a3;
  if ((addstr("") & 0x80000000) == 0)
  {
    LODWORD(v10) = a1;
    if (a1 < a2)
    {
      v11 = *a1;
      LODWORD(v10) = a1;
      if (&a1[v11 + 1] <= a2)
      {
        if (*a1)
        {
          v12 = v11 + 1;
          v10 = a1 + 1;
          while ((!memchr("\n\, *v10, 4uLL) || (addstr("\) & 0x80000000) == 0) && (addstr(v10) & 0x80000000) == 0)
          {
            ++v10;
            if (--v12 <= 1)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_14;
        }

        LODWORD(v10) = a1 + 1;
      }
    }

LABEL_12:
    if ((addstr("") & 0x80000000) == 0)
    {
      return (v10 - a1);
    }
  }

LABEL_14:
  *__error() = 28;
  *a3 = v9;
  *a4 = v8;
  return 0xFFFFFFFFLL;
}

int res_9_ns_samedomain(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = v5;
  if (v4 && a1[v4 - 1] == 46)
  {
    if (a1[v4 - 2] == 92)
    {
      v7 = 0;
      v8 = &a1[v4 - 3];
      do
      {
        v7 ^= 1u;
        v9 = *v8--;
      }

      while (v9 == 92);
      v10 = v7 - 1;
    }

    else
    {
      v10 = -1;
    }

    v4 += v10;
  }

  if (!v5)
  {
    return 1;
  }

  if (a2[v5 - 1] != 46)
  {
    goto LABEL_17;
  }

  if (a2[v5 - 2] == 92)
  {
    v11 = 0;
    v12 = &a2[v5 - 3];
    do
    {
      v11 ^= 1u;
      v13 = *v12--;
    }

    while (v13 == 92);
    v14 = v11 - 1;
  }

  else
  {
    v14 = -1;
  }

  v6 = v5 + v14;
  if (!(v5 + v14))
  {
    return 1;
  }

LABEL_17:
  v15 = v4 - v6;
  if (v4 < v6)
  {
    return 0;
  }

  if (v4 == v6)
  {
    v17 = a1;
    v18 = a2;
    v6 = v4;
  }

  else
  {
    if (v15 < 2)
    {
      return 0;
    }

    v17 = &a1[v15];
    if (a1[v15 - 1] != 46)
    {
      return 0;
    }

    v19 = &a1[v15];
    if (*(v19 - 2) == 92)
    {
      v20 = 0;
      v21 = v19 - 3;
      do
      {
        v22 = v20;
        v20 ^= 1u;
        v23 = *v21--;
      }

      while (v23 == 92);
      if (v22 != 1)
      {
        return 0;
      }
    }

    v18 = a2;
  }

  return strncasecmp(v17, v18, v6) == 0;
}

int res_9_ns_subdomain(const char *a1, const char *a2)
{
  if (res_9_ns_samename(a1, a2) == 1)
  {
    return 0;
  }

  return res_9_ns_samedomain(a1, a2);
}

int res_9_ns_samename(const char *a1, const char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (res_9_ns_makecanon(a1, v6, 0x401uLL) < 0 || res_9_ns_makecanon(a2, v5, 0x401uLL) < 0)
  {
    result = -1;
  }

  else
  {
    result = strcasecmp(v6, v5) == 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_ns_makecanon(const char *a1, char *a2, size_t a3)
{
  v6 = strlen(a1);
  if (v6 + 2 <= a3)
  {
    v8 = v6;
    strlcpy(a2, a1, a3);
    if (v8)
    {
      v9 = &a2[v8 - 1];
      if (*v9 == 46)
      {
        v10 = v8 - 1;
        while (v10)
        {
          if (*(v9 - 1) == 92)
          {
            if (v10 + 1 < 3)
            {
              goto LABEL_11;
            }

            if (*(v9 - 2) != 92)
            {
              goto LABEL_13;
            }
          }

          --v8;
          *v9 = 0;
          v11 = *--v9;
          --v10;
          if (v11 != 46)
          {
LABEL_11:
            v8 = v10 + 1;
            goto LABEL_13;
          }
        }

        v8 = 0;
        *v9 = 0;
      }
    }

LABEL_13:
    result = 0;
    *&a2[v8] = 46;
  }

  else
  {
    *__error() = 40;
    return -1;
  }

  return result;
}

int res_9_ns_sign_tcp_init(void *a1, const u_char *a2, int a3, res_9_ns_tcp_tsig_state *a4)
{
  res_9_dst_init();
  result = -1;
  if ((a3 & 0x80000000) == 0 && a2 && a1 && a4)
  {
    a4->counter = -1;
    a4->key = a1;
    if (*(a1 + 4) == 157)
    {
      if (a3 <= 0x200)
      {
        memcpy(a4->sig, a2, a3);
        result = 0;
        a4->siglen = a3;
      }
    }

    else
    {
      return -17;
    }
  }

  return result;
}

int res_9_ns_sign_tcp2(u_char *a1, int *a2, int a3, int a4, res_9_ns_tcp_tsig_state *a5, int a6, u_char **a7, u_char **a8)
{
  v42 = *MEMORY[0x29EDCA608];
  result = -1;
  if (a1 && a2 && a5)
  {
    v14 = a4;
    if (!__CFADD__(a5->counter++, 1))
    {
      siglen = a5->siglen;
      if (siglen >= 1)
      {
        v36 = bswap32(siglen) >> 16;
        res_9_dst_sign_data(1, a5->key, &a5->ctx, 0, 0, 0);
        res_9_dst_sign_data(2, a5->key, &a5->ctx, &v36, 2, 0);
        res_9_dst_sign_data(2, a5->key, &a5->ctx, a5->sig, a5->siglen, 0);
        a5->siglen = 0;
      }

      res_9_dst_sign_data(2, a5->key, &a5->ctx, a1, *a2, 0);
      if (!a6)
      {
        HIDWORD(v33) = -1030792151 * a5->counter + 85899344;
        LODWORD(v33) = HIDWORD(v33);
        if ((v33 >> 2) > 0x28F5C28)
        {
          result = 0;
          goto LABEL_22;
        }
      }

      v19 = *a2;
      v20 = &a1[v19];
      v21 = res_9_dn_comp(*a5->key, &a1[v19], a3 - v19, a7, a8);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      v22 = &a1[a3];
      v23 = &v20[v21];
      v24 = v23 + 10;
      if (v23 + 10 <= v22)
      {
        *v23 = -16713216;
        *(v23 + 1) = 0;
        v25 = res_9_dn_comp("HMAC-MD5.SIG-ALG.REG.INT", v23 + 10, v22 - v24, 0, 0);
        if ((v25 & 0x80000000) != 0)
        {
LABEL_19:
          result = -11;
          goto LABEL_22;
        }

        v26 = &v24[v25];
        if (v26 + 8 <= v22)
        {
          *v26 = 0;
          v27 = time(0);
          v26[2] = HIBYTE(v27);
          v26[3] = BYTE2(v27);
          v26[4] = BYTE1(v27);
          v26[5] = v27;
          *(v26 + 3) = 11265;
          v36 = 0;
          v37 = HIBYTE(v27);
          v38 = BYTE2(v27);
          v39 = BYTE1(v27);
          v40 = v27;
          v41 = 11265;
          res_9_dst_sign_data(2, a5->key, &a5->ctx, &v36, 8, 0);
          v28 = res_9_dst_sign_data(4, a5->key, &a5->ctx, 0, 0, a5->sig);
          if ((v28 & 0x80000000) != 0)
          {
            result = -17;
            goto LABEL_22;
          }

          a5->siglen = v28;
          if (&v26[v28 + 10] <= v22)
          {
            *(v26 + 4) = bswap32(v28) >> 16;
            v29 = (v26 + 10);
            memcpy(v29, a5->sig, a5->siglen);
            v30 = &v29[a5->siglen];
            if (v30 + 4 <= v22)
            {
              v31 = bswap32(*a1);
              *v30 = HIBYTE(v31);
              v30[1] = BYTE2(v31);
              v30[2] = HIBYTE(v14);
              v30[3] = v14;
              v32 = v30 + 6;
              if (v30 + 6 <= v22)
              {
                result = 0;
                *(v30 + 2) = 0;
                v35 = v32 - (v23 + 8) - 2;
                v23[8] = HIBYTE(v35);
                v23[9] = v35;
                *(a1 + 5) = bswap32((bswap32(*(a1 + 5)) >> 16) + 1) >> 16;
                *a2 = v32 - a1;
                goto LABEL_22;
              }
            }
          }
        }
      }

      *__error() = 40;
      goto LABEL_19;
    }

    result = res_9_ns_sign2(a1, a2, a3, a4, a5->key, a5->sig, a5->siglen, a5->sig, &a5->siglen, 0, a7, a8);
  }

LABEL_22:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_ns_format_ttl(u_long a1, char *a2, size_t a3)
{
  v18 = a3;
  v19 = a2;
  v5 = a1 / 0x93A80;
  if ((a1 / 0x93A80))
  {
    if ((fmt1(a1 / 0x93A80, 87, &v19, &v18) & 0x80000000) != 0)
    {
      return -1;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = -7 * ((a1 / 0x15180 * 0x2492492492492493uLL) >> 64);
  v8 = v7 + a1 / 0x15180;
  if (v8)
  {
    if ((fmt1(v7 + (a1 / 0x15180), 68, &v19, &v18) & 0x80000000) != 0)
    {
      return -1;
    }

    ++v6;
  }

  v9 = (a1 / 0xE10 * 0xAAAAAAAAAAAAAABuLL) >> 64;
  v10 = a1 / 0xE10 - 24 * v9;
  if (v10)
  {
    if ((fmt1(a1 / 0xE10 - 24 * v9, 72, &v19, &v18) & 0x80000000) != 0)
    {
      return -1;
    }

    ++v6;
  }

  v11 = ((a1 / 0x3C * 0x888888888888889uLL) >> 64) >> 1;
  v12 = a1 / 0x3C - 60 * v11;
  if (v12)
  {
    if ((fmt1(a1 / 0x3C - 60 * v11, 77, &v19, &v18) & 0x80000000) != 0)
    {
      return -1;
    }

    ++v6;
  }

  if (!(a1 % 0x3C) && (v5 || v8 | v10 | v12))
  {
    goto LABEL_19;
  }

  if ((fmt1(a1 % 0x3C, 83, &v19, &v18) & 0x80000000) != 0)
  {
    return -1;
  }

  ++v6;
LABEL_19:
  if (v6 >= 2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2 + 1;
      v15 = MEMORY[0x29EDCA600];
      do
      {
        if ((v13 & 0x80) == 0 && (*(v15 + 4 * v13 + 60) & 0x8000) != 0)
        {
          *(v14 - 1) = __tolower(v13);
        }

        v16 = *v14++;
        v13 = v16;
      }

      while (v16);
    }
  }

  return v19 - a2;
}

uint64_t fmt1(int a1, int a2, char **a3, size_t *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = __sprintf_chk(__source, 0, 0x32uLL, "%d%c", a1, a2);
  if (v6 + 1 <= *a4)
  {
    strlcpy(*a3, __source, *a4);
    result = 0;
    *a3 += v6;
    *a4 -= v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_ns_parse_ttl(const char *a1, u_long *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1;
    v7 = MEMORY[0x29EDCA600];
    while (2)
    {
      v8 = 0;
      v9 = 0;
      ++v4;
      while (1)
      {
        if (v2 < 0)
        {
          goto LABEL_28;
        }

        v10 = v2;
        v11 = *(v7 + 4 * v2 + 60);
        if ((v11 & 0x40000) == 0)
        {
          goto LABEL_28;
        }

        if ((v10 - 48) > 9)
        {
          break;
        }

        v9 = 10 * v9 + (v10 - 48);
        v12 = *v4++;
        v2 = v12;
        --v8;
        if (!v12)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_28;
          }

          v5 += v9;
          goto LABEL_27;
        }
      }

      if (!v8)
      {
        goto LABEL_28;
      }

      if ((v11 & 0x1000) != 0)
      {
        v10 = __toupper(v10);
      }

      if (v10 <= 76)
      {
        if (v10 != 68)
        {
          if (v10 != 72)
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (v10 == 77)
        {
LABEL_22:
          v9 *= 60;
LABEL_23:
          v6 = 0;
          v5 += v9;
          v2 = *v4;
          if (*v4)
          {
            continue;
          }

LABEL_27:
          result = 0;
          *a2 = v5;
          return result;
        }

        if (v10 == 83)
        {
          goto LABEL_23;
        }

        if (v10 != 87)
        {
          goto LABEL_28;
        }

        v9 *= 7;
      }

      break;
    }

    v9 *= 24;
LABEL_21:
    v9 *= 60;
    goto LABEL_22;
  }

LABEL_28:
  *__error() = 22;
  return -1;
}

u_char *__cdecl res_9_ns_find_tsig(u_char *a1, u_char *a2)
{
  result = 0;
  if (a1 <= a2 && a1 && a2)
  {
    if (a1 + 12 >= a2)
    {
      return 0;
    }

    if (*(a1 + 2) < 0x10000u)
    {
      return 0;
    }

    v5 = res_9_ns_skiprr(a1 + 12, a2, ns_s_qd, bswap32(*(a1 + 2)) >> 16);
    if (v5 < 0)
    {
      return 0;
    }

    v6 = &a1[v5 + 12];
    v7 = res_9_ns_skiprr(v6, a2, ns_s_an, bswap32(*(a1 + 3)) >> 16);
    if ((v7 & 0x80000000) != 0)
    {
      return 0;
    }

    v8 = &v6[v7];
    v9 = res_9_ns_skiprr(v8, a2, ns_s_ns, bswap32(*(a1 + 4)) >> 16);
    if ((v9 & 0x80000000) != 0)
    {
      return 0;
    }

    v10 = &v8[v9];
    v11 = res_9_ns_skiprr(v10, a2, ns_s_ar, (bswap32(*(a1 + 5)) >> 16) - 1);
    if ((v11 & 0x80000000) != 0)
    {
      return 0;
    }

    v12 = &v10[v11];
    v13 = res_9_dn_skipname(v12, a2);
    if ((v13 & 0x80000000) != 0)
    {
      return 0;
    }

    v14 = &v12[v13];
    if (v14 + 2 >= a2)
    {
      return 0;
    }

    else if (__rev16(*v14) == 250)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int res_9_ns_verify_tcp_init(void *a1, const u_char *a2, int a3, res_9_ns_tcp_tsig_state *a4)
{
  res_9_dst_init();
  result = -1;
  if ((a3 & 0x80000000) == 0 && a2 && a1 && a4)
  {
    a4->counter = -1;
    a4->key = a1;
    if (*(a1 + 4) == 157)
    {
      if (a3 <= 0x200)
      {
        memcpy(a4->sig, a2, a3);
        result = 0;
        a4->siglen = a3;
      }
    }

    else
    {
      return -17;
    }
  }

  return result;
}

int res_9_ns_verify_tcp(u_char *a1, int *a2, res_9_ns_tcp_tsig_state *a3, int a4)
{
  v44[129] = *MEMORY[0x29EDCA608];
  result = -1;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_31;
  }

  v8 = *a2;
  if (__CFADD__(a3->counter++, 1))
  {
    v44[0] = 0;
    result = res_9_ns_verify(a1, a2, a3->key, a3->sig, a3->siglen, a3->sig, &a3->siglen, v44, 0);
    goto LABEL_31;
  }

  v11 = &a1[v8];
  siglen = a3->siglen;
  if (siglen >= 1)
  {
    LOWORD(v44[0]) = bswap32(siglen) >> 16;
    res_9_dst_verify_data(1, a3->key, &a3->ctx, 0, 0, 0);
    res_9_dst_verify_data(2, a3->key, &a3->ctx, v44, 2, 0);
    res_9_dst_verify_data(2, a3->key, &a3->ctx, a3->sig, a3->siglen, 0);
    a3->siglen = 0;
  }

  tsig = res_9_ns_find_tsig(a1, v11);
  if (!tsig)
  {
    if (!a4)
    {
      res_9_dst_verify_data(2, a3->key, &a3->ctx, a1, *a2, 0);
      result = 0;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v14 = tsig;
  *(a1 + 5) = bswap32((bswap32(*(a1 + 5)) >> 16) - 1) >> 16;
  v15 = (tsig - a1);
  res_9_dst_verify_data(2, a3->key, &a3->ctx, a1, v15, 0);
  v16 = res_9_dn_expand(a1, v11, v14, v44, 1025);
  if ((v16 & 0x80000000) != 0 || (v17 = &v14[v16], v18 = v17 + 10, v17 + 10 > v11))
  {
LABEL_12:
    result = -12;
    goto LABEL_31;
  }

  if (__rev16(*v17) != 250)
  {
LABEL_30:
    result = -10;
    goto LABEL_31;
  }

  if (v11 - v18 != __rev16(*(v17 + 4)))
  {
    goto LABEL_12;
  }

  v19 = res_9_dn_expand(a1, v11, v18, v43, 1025);
  if (v19 < 0)
  {
    goto LABEL_12;
  }

  v20 = v19;
  if (res_9_ns_samename(v43, "HMAC-MD5.SIG-ALG.REG.INT") != 1 || res_9_ns_samename(*a3->key, v44) != 1 || (key = a3->key, *(key + 4) != 157))
  {
    result = -17;
    goto LABEL_31;
  }

  v22 = &v18[v20];
  if (v22 + 8 > v11)
  {
    goto LABEL_12;
  }

  v23 = (v22 + 10);
  if (v22 + 10 > v11)
  {
    goto LABEL_12;
  }

  v24 = __rev16(*(v22 + 4));
  v25 = &v23[v24];
  result = -12;
  if (&v23[v24] <= v11 && v25 + 4 <= v11)
  {
    __n = v24;
    if (v25 + 6 <= v11 && &v25[__rev16(*(v25 + 2)) + 6] == v11)
    {
      v26 = v22[2];
      v27 = v22[3];
      v28 = v22[4];
      v29 = v22[5];
      v30 = *(v22 + 3);
      v31 = *(v25 + 1);
      v37 = 0;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      v41 = v29;
      v42 = 11265;
      res_9_dst_verify_data(2, key, &a3->ctx, &v37, 8, 0);
      if ((res_9_dst_verify_data(4, a3->key, &a3->ctx, 0, 0, v23) & 0x80000000) != 0)
      {
        result = -16;
      }

      else if (__n <= 0x200)
      {
        v33 = (v26 << 24) | (v27 << 16) | (v28 << 8) | v29;
        v34 = __rev16(v30);
        memcpy(a3->sig, v23, __n);
        a3->siglen = __n;
        v35 = v33 - time(0);
        if (v35 < 0)
        {
          v35 = -v35;
        }

        if (v35 <= v34)
        {
          result = __rev16(v31);
          *a2 = v15;
        }

        else
        {
          result = -18;
        }
      }

      else
      {
        result = -11;
      }
    }
  }

LABEL_31:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_dn_expand(const u_char *a1, const u_char *a2, const u_char *a3, char *a4, int a5)
{
  result = res_9_ns_name_uncompress(a1, a2, a3, a4, a5);
  if (result >= 1 && *a4 == 46)
  {
    *a4 = 0;
  }

  return result;
}

int res_9_dn_skipname(const u_char *a1, const u_char *a2)
{
  v2 = a1;
  v4 = a1;
  if (res_9_ns_name_skip(&v4, a2) == -1)
  {
    return -1;
  }

  else
  {
    return v4 - v2;
  }
}

int res_9_hnok(const char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1 + 1;
    v3 = 46;
    do
    {
      v4 = v1;
      v5 = v1;
      v6 = *v2++;
      v1 = v6;
      if (v5 != 46)
      {
        if (v3 == 46 || (v1 != 46 ? (v7 = v1 == 0) : (v7 = 1), v7))
        {
          if ((v4 & 0xFFFFFFDF) - 65 >= 0x1A && v4 != 95 && (v4 - 48) >= 0xA)
          {
            return 0;
          }
        }

        else if ((v4 & 0xFFFFFFDF) - 65 >= 0x1A && (v4 - 48) >= 0xA && v4 != 95 && v4 != 45)
        {
          return 0;
        }
      }

      v3 = v4;
    }

    while (v1);
  }

  return 1;
}

int res_9_ownok(const char *a1)
{
  if (*a1 != 42)
  {
    return res_9_hnok(a1);
  }

  if (a1[1])
  {
    if (a1[1] == 46)
    {
      a1 += 2;
    }

    return res_9_hnok(a1);
  }

  return 1;
}

int res_9_mailok(const char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if ((v1 - 33) > 0x5D)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1;
  while (v2 || v1 != 46)
  {
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1 == 92;
    }

    v2 = v4;
    v5 = *v3++;
    v1 = v5;
    if ((v5 - 33) >= 0x5E)
    {
      return 0;
    }
  }

  return res_9_hnok(v3);
}

int res_9_dnok(const char *a1)
{
  while (1)
  {
    v1 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    if ((v1 - 33) >= 0x5E)
    {
      return 0;
    }
  }

  return 1;
}

void res_client_close(void *a1)
{
  if (a1)
  {
    v2 = a1[67];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void *res_state_new()
{
  v0 = malloc_type_calloc(1uLL, 0x228uLL, 0x10B2040E67E7BACuLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 127) = 9;
    v2 = malloc_type_calloc(1uLL, 0x3C8uLL, 0x1000040FB2B3248uLL);
    v1[67] = v2;
    if (!v2)
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

int res_9_init(void)
{
  v0 = __res_9_state();
  if (!v0->retrans)
  {
    v0->retrans = 5;
  }

  if (!v0->retry)
  {
    v0->retry = 2;
  }

  if ((v0->options & 1) == 0)
  {
    v0->options = 2147484352;
  }

  return res_9_vinit(v0, 1);
}

void res_9_fp_nquery(const u_char *a1, int a2, FILE *a3)
{
  v6 = __res_9_state();
  if ((v6->options & 1) != 0 || res_9_init() != -1)
  {

    res_9_pquery(v6, a1, a2, a3);
  }
}

int res_9_mkquery(int a1, const char *a2, int a3, int a4, const u_char *a5, int a6, const u_char *a7, u_char *a8, int a9)
{
  v17 = __res_9_state();
  if (v17->options)
  {
    return res_9_nmkquery(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  result = res_9_init();
  if (result != -1)
  {
    return res_9_nmkquery(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  v17->res_h_errno = -1;
  *MEMORY[0x29EDCA678] = -1;
  return result;
}

int res_9_query(const char *a1, int a2, int a3, u_char *a4, int a5)
{
  v10 = __res_9_state();
  if ((v10->options & 1) == 0 && (result = res_9_init(), result == -1))
  {
    v10->res_h_errno = -1;
    *MEMORY[0x29EDCA678] = -1;
  }

  else
  {

    return res_9_nquery(v10, a1, a2, a3, a4, a5);
  }

  return result;
}

int res_9_isourserver(const sockaddr_in *a1)
{
  v2 = __res_9_state();

  return res_ourserver_p(v2, a1);
}

int res_9_send(const u_char *a1, int a2, u_char *a3, int a4)
{
  v8 = __res_9_state();
  if ((v8->options & 1) != 0 || (result = res_9_init(), result != -1))
  {

    return res_9_nsend(v8, a1, a2, a3, a4);
  }

  return result;
}

int res_9_sendsigned(const u_char *a1, int a2, res_9_ns_tsig_key *a3, u_char *a4, int a5)
{
  v10 = __res_9_state();
  if ((v10->options & 1) != 0 || (result = res_9_init(), result != -1))
  {

    return res_9_nsendsigned(v10, a1, a2, a3, a4, a5);
  }

  return result;
}

void res_9_close(void)
{
  v0 = __res_9_state();

  res_9_nclose(v0);
}

int res_9_search(const char *a1, int a2, int a3, u_char *a4, int a5)
{
  v10 = __res_9_state();
  if ((v10->options & 1) == 0 && (result = res_9_init(), result == -1))
  {
    v10->res_h_errno = -1;
    *MEMORY[0x29EDCA678] = -1;
  }

  else
  {

    return res_9_nsearch(v10, a1, a2, a3, a4, a5);
  }

  return result;
}

int res_9_querydomain(const char *a1, const char *a2, int a3, int a4, u_char *a5, int a6)
{
  v12 = __res_9_state();
  if ((v12->options & 1) == 0 && (result = res_9_init(), result == -1))
  {
    v12->res_h_errno = -1;
    *MEMORY[0x29EDCA678] = -1;
  }

  else
  {

    return res_9_nquerydomain(v12, a1, a2, a3, a4, a5, a6);
  }

  return result;
}

u_int res_9_randomid(void)
{
  v0 = __res_9_state();
  if ((v0[2] & 1) == 0 && (result = res_9_init(), result == -1))
  {
    v0[124] = -1;
    *MEMORY[0x29EDCA678] = -1;
  }

  else
  {

    return res_9_nrandomid();
  }

  return result;
}

const char *__cdecl res_9_hostalias_1(const char *a1)
{
  v2 = __res_9_state();

  return res_9_hostalias_2(v2, a1, res_9_hostalias_1_abuf, 0x401uLL);
}

void res_9_fp_resstat(const res_9_state a1, FILE *a2)
{
  v4 = 1;
  fwrite(";; res options:", 0xFuLL, 1uLL, a2);
  do
  {
    if ((a1->options & v4) != 0)
    {
      v5 = res_9_p_option(v4);
      fprintf(a2, " %s", v5);
    }

    v4 *= 2;
  }

  while (v4);

  putc(10, a2);
}

const char *__cdecl res_9_p_option(u_long option)
{
  v2 = ___mtctxres();
  if (option > 1023)
  {
    if (option >= 0x200000)
    {
      if (option <= 0xFFFFFFF)
      {
        if (option == 0x200000)
        {
          return "dnssec";
        }

        if (option == 0x800000)
        {
          return "nsid";
        }
      }

      else
      {
        switch(option)
        {
          case 0x10000000uLL:
            return "dname";
          case 0x40000000uLL:
            return "edns0";
          case 0x80000000uLL:
            return "no-nibble2";
        }
      }
    }

    else if (option <= 4095)
    {
      if (option == 1024)
      {
        return "insecure1";
      }

      if (option == 2048)
      {
        return "insecure2";
      }
    }

    else
    {
      switch(option)
      {
        case 0x1000uLL:
          return "noaliases";
        case 0x2000uLL:
          return "inet6";
        case 0x100000uLL:
          return "no-tld-query";
      }
    }

LABEL_48:
    v3 = v2 + 817;
    sprintf(v2 + 817, "?0x%lx?", option);
    return v3;
  }

  if (option > 31)
  {
    if (option <= 127)
    {
      if (option == 32)
      {
        return "igntc";
      }

      if (option == 64)
      {
        return "recurs";
      }
    }

    else
    {
      switch(option)
      {
        case 0x80uLL:
          return "defnam";
        case 0x100uLL:
          return "styopn";
        case 0x200uLL:
          return "dnsrch";
      }
    }

    goto LABEL_48;
  }

  if (option <= 3)
  {
    if (option == 1)
    {
      return "init";
    }

    if (option == 2)
    {
      return "debug";
    }

    goto LABEL_48;
  }

  if (option == 4)
  {
    return "aaonly(unimpl)";
  }

  if (option == 8)
  {
    return "usevc";
  }

  if (option != 16)
  {
    goto LABEL_48;
  }

  return "primry(unimpl)";
}

void res_9_pquery(const res_9_state a1, const u_char *a2, int a3, FILE *a4)
{
  memset(&v23, 0, sizeof(v23));
  if (res_9_ns_initparse(a2, a3, &v23) < 0)
  {
    v19 = __error();
    v20 = strerror(*v19);
    fprintf(a4, ";; ns_initparse: %s\n", v20);
    return;
  }

  v22 = v23;
  v6 = res_9_ns_msg_getflag(&v22, 1);
  v22 = v23;
  v7 = res_9_ns_msg_getflag(&v22, 9);
  id = v23._id;
  v21 = *v23._counts;
  pfcode = a1->pfcode;
  if (pfcode && (pfcode & 0x800) == 0 && !v7)
  {
    v10 = 1;
    goto LABEL_7;
  }

  v11 = _res_opcodes[v6];
  v12 = res_9_sym_ntos(&__res_9_p_rcode_syms, v7, 0);
  fprintf(a4, ";; ->>HEADER<<- opcode: %s, status: %s, id: %d\n", v11, v12, id);
  pfcode = a1->pfcode;
  v10 = (pfcode & 0x800) == 0;
  if (pfcode)
  {
LABEL_7:
    if (v10)
    {
      goto LABEL_9;
    }
  }

  putc(59, a4);
  pfcode = a1->pfcode;
LABEL_9:
  if (!pfcode || (pfcode & 0x200) != 0)
  {
    fwrite("; flags:", 8uLL, 1uLL, a4);
    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 0))
    {
      fwrite(" qr", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 2))
    {
      fwrite(" aa", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 3))
    {
      fwrite(" tc", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 4))
    {
      fwrite(" rd", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 5))
    {
      fwrite(" ra", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 6))
    {
      fwrite(" ??", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 7))
    {
      fwrite(" ad", 3uLL, 1uLL, a4);
    }

    v22 = v23;
    if (res_9_ns_msg_getflag(&v22, 8))
    {
      fwrite(" cd", 3uLL, 1uLL, a4);
    }
  }

  v13 = a1->pfcode;
  if (!v13 || (v13 & 0x100) != 0)
  {
    if (v6 == 5)
    {
      v14 = &__p_update_section_syms;
    }

    else
    {
      v14 = &__p_default_section_syms;
    }

    v15 = res_9_sym_ntos(v14, 0, 0);
    fprintf(a4, "; %s: %d", v15, v21);
    v16 = res_9_sym_ntos(v14, 1, 0);
    fprintf(a4, ", %s: %d", v16, WORD1(v21));
    v17 = res_9_sym_ntos(v14, 2, 0);
    fprintf(a4, ", %s: %d", v17, WORD2(v21));
    v18 = res_9_sym_ntos(v14, 3, 0);
    fprintf(a4, ", %s: %d", v18, HIWORD(v21));
    v13 = a1->pfcode;
  }

  if (!v13 || (v13 & 0xB00) != 0)
  {
    putc(10, a4);
  }

  do_section(a1, &v23, ns_s_qd, 16, a4);
  do_section(a1, &v23, ns_s_an, 32, a4);
  do_section(a1, &v23, ns_s_ns, 64, a4);
  do_section(a1, &v23, ns_s_ar, 128, a4);
  if (!v21)
  {
    putc(10, a4);
  }
}

const char *__cdecl res_9_p_section(int section, int opcode)
{
  if (opcode == 5)
  {
    v3 = &__p_update_section_syms;
  }

  else
  {
    v3 = &__p_default_section_syms;
  }

  return res_9_sym_ntos(v3, section, 0);
}

void do_section(uint64_t a1, uint64_t a2, res_9_ns_sect a3, int a4, FILE *a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 384);
  v53 = v5 & a4;
  if (v5)
  {
    v6 = (v5 & a4) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_70;
  }

  v9 = malloc_type_malloc(do_section_buflen, 0xDA8E9BDFuLL);
  if (v9)
  {
    v10 = v9;
    memset(&v57, 0, 512);
    v11 = *(a2 + 48);
    *v56._sections = *(a2 + 32);
    *&v56._sections[2] = v11;
    *&v56._sect = *(a2 + 64);
    v12 = *(a2 + 16);
    *&v56._msg = *a2;
    *&v56._id = v12;
    v13 = res_9_ns_msg_getflag(&v56, 1);
    v14 = 0;
    v15 = &__p_default_section_syms;
    if (v13 == 5)
    {
      v15 = &__p_update_section_syms;
    }

    v49 = v15;
    v16 = MEMORY[0x29EDCA600];
    v51 = a3;
    while (1)
    {
      v52 = v10;
      if (res_9_ns_parserr(a2, a3, v14, &v57))
      {
        goto LABEL_60;
      }

      while (1)
      {
        if (v53 && !v14 && (*(a1 + 385) & 1) != 0)
        {
          v17 = res_9_sym_ntos(v49, a3, 0);
          fprintf(a5, ";; %s SECTION:\n", v17);
        }

        v55 = v14;
        if (a3 != ns_s_ar)
        {
          break;
        }

        if (v57.type != 41)
        {
          goto LABEL_52;
        }

        rdlength = v57.rdlength;
        fprintf(a5, "; EDNS: version: %u, udp=%u, flags=%04x\n", BYTE2(v57.ttl), v57.rr_class, LOWORD(v57.ttl));
        if (rdlength >= 4)
        {
          do
          {
            v22 = __rev16(*v57.rdata);
            v23 = *(v57.rdata + 2) << 8;
            v24 = *(v57.rdata + 3);
            v25 = *(v57.rdata + 3) | v23;
            v26 = v57.rdata + 4;
            if (v22 == 3)
            {
              fputs("; NSID: ", a5);
              if (!v25)
              {
                v43 = "; NSID\n";
                goto LABEL_48;
              }

              fputs("; NSID: ", a5);
              v27 = (v23 + v24);
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29++;
                fprintf(a5, "%02x ", v30);
                --v28;
              }

              while (v28);
              fputs(" (", a5);
              do
              {
                v31 = *v26++;
                v32 = v31;
                if (v31 < 0)
                {
                  v33 = __maskrune(v32, 0x40000uLL);
                }

                else
                {
                  v33 = *(v16 + 4 * v32 + 60) & 0x40000;
                }

                if (v33)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = 46;
                }

                fputc(v34, a5);
                --v27;
              }

              while (v27);
            }

            else
            {
              if (!_byteswap_ushort(*(v57.rdata + 1)))
              {
                fprintf(a5, "; OPT=%u\n", v22);
                goto LABEL_49;
              }

              fprintf(a5, "; OPT=%u: ", v22);
              v35 = (v23 + v24);
              v36 = v35;
              v37 = v26;
              do
              {
                v38 = *v37++;
                fprintf(a5, "%02x ", v38);
                --v36;
              }

              while (v36);
              fputs(" (", a5);
              do
              {
                v39 = *v26++;
                v40 = v39;
                if (v39 < 0)
                {
                  v41 = __maskrune(v40, 0x40000uLL);
                }

                else
                {
                  v41 = *(v16 + 4 * v40 + 60) & 0x40000;
                }

                if (v41)
                {
                  v42 = v40;
                }

                else
                {
                  v42 = 46;
                }

                fputc(v42, a5);
                --v35;
              }

              while (v35);
            }

            v43 = ")\n";
LABEL_48:
            fputs(v43, a5);
LABEL_49:
            rdlength = rdlength - v25 - 4;
          }

          while (rdlength > 3u);
        }

LABEL_54:
        v14 = v55 + 1;
        a3 = v51;
        v10 = v52;
        if (res_9_ns_parserr(a2, v51, v55 + 1, &v57))
        {
LABEL_60:
          if (*__error() == 19)
          {
            if (v53 && v14 >= 1 && (*(a1 + 385) & 1) != 0)
            {
              putc(10, a5);
            }
          }

          else
          {
            v46 = __error();
            strerror(*v46);
            fprintf(a5, ";; ns_parserr: %s\n");
          }

          goto LABEL_69;
        }
      }

      if (a3 == ns_s_qd)
      {
        if (v57.name[0])
        {
          v18 = &v57;
        }

        else
        {
          v18 = ".";
        }

        v19 = res_9_p_type(v57.type);
        v20 = res_9_p_class(v57.rr_class);
        fprintf(a5, ";;\t%s, type = %s, class = %s\n", v18->name, v19, v20);
        goto LABEL_54;
      }

LABEL_52:
      if ((res_9_ns_sprintrr(a2, &v57, 0, 0, v10, do_section_buflen) & 0x80000000) == 0)
      {
        fputs(v10, a5);
        fputc(10, a5);
        goto LABEL_54;
      }

      if (*__error() != 28)
      {
        v48 = __error();
        strerror(*v48);
        fprintf(a5, ";; ns_sprintrr: %s\n");
LABEL_69:
        free(v10);
        goto LABEL_70;
      }

      free(v10);
      if (do_section_buflen < 0x20000)
      {
        v44 = do_section_buflen + 1024;
        do_section_buflen += 1024;
        v10 = malloc_type_malloc(v44, 0xD4BDEC8BuLL);
        if (v10)
        {
          continue;
        }
      }

      fwrite(";; memory allocation failure\n", 0x1DuLL, 1uLL, a5);
LABEL_70:
      v47 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  v45 = *MEMORY[0x29EDCA608];

  fwrite(";; memory allocation failure\n", 0x1DuLL, 1uLL, a5);
}

const u_char *__cdecl res_9_p_cdnname(const u_char *a1, const u_char *a2, int a3, FILE *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = res_9_dn_expand(a2, &a2[a3], a1, v10, 1025);
  if (v6 < 0)
  {
    result = 0;
  }

  else
  {
    v7 = v6;
    if (v10[0])
    {
      fputs(v10, a4);
    }

    else
    {
      putc(46, a4);
    }

    result = &a1[v7];
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

const u_char *__cdecl res_9_p_fqnname(const u_char *cp, const u_char *msg, int a3, char *a4, int a5)
{
  v8 = res_9_dn_expand(msg, &cp[a3], cp, a4, a5);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    v10 = strlen(a4);
    if (v10 && a4[v10 - 1] == 46)
    {
      return &cp[v9];
    }

    if (v10 + 1 < a5)
    {
      strlcpy(&a4[v10], ".", a5 - v10);
      return &cp[v9];
    }
  }

  return 0;
}

const u_char *__cdecl res_9_p_fqname(const u_char *a1, const u_char *a2, FILE *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = res_9_p_fqnname(a1, a2, 255, v7, 1025);
  if (v4)
  {
    fputs(v7, a3);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

int res_9_sym_ston(const res_9_sym *a1, const char *a2, int *a3)
{
  v5 = a1;
  name = a1->name;
  if (name)
  {
    while (strcasecmp(a2, name))
    {
      v7 = v5 + 1;
      name = v5[1].name;
      ++v5;
      if (!name)
      {
        if (!a3)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }
    }

    if (!a3)
    {
      return v5->number;
    }

    v8 = 1;
    goto LABEL_10;
  }

  v7 = a1;
  if (a3)
  {
LABEL_5:
    v8 = 0;
    v5 = v7;
LABEL_10:
    *a3 = v8;
    return v5->number;
  }

LABEL_7:
  v5 = v7;
  return v5->number;
}

const char *__cdecl res_9_sym_ntos(const res_9_sym *a1, int a2, int *a3)
{
  v6 = ___mtctxres();
  name = a1->name;
  if (!name)
  {
    goto LABEL_8;
  }

  if (a1->number != a2)
  {
    p_name = &a1[1].name;
    while (1)
    {
      name = *p_name;
      if (!*p_name)
      {
        break;
      }

      v9 = *(p_name - 2);
      p_name += 3;
      if (v9 == a2)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    name = v6 + 777;
    sprintf(v6 + 777, "%d", a2);
    if (a3)
    {
      v10 = 0;
      goto LABEL_10;
    }

    return name;
  }

LABEL_6:
  if (a3)
  {
    v10 = 1;
LABEL_10:
    *a3 = v10;
  }

  return name;
}

const char *__cdecl res_9_sym_ntop(const res_9_sym *a1, int a2, int *a3)
{
  v6 = ___mtctxres();
  if (a1->name)
  {
    p_humanname = &a1->humanname;
    while (*(p_humanname - 4) != a2)
    {
      v8 = p_humanname[2];
      p_humanname += 3;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      *a3 = 1;
    }

    return *p_humanname;
  }

  else
  {
LABEL_5:
    v9 = v6 + 797;
    sprintf(v6 + 797, "%d", a2);
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v9;
}

const char *__cdecl res_9_p_type(int a1)
{
  v5 = 0;
  v2 = res_9_sym_ntos(__res_9_p_type_syms, a1, &v5);
  if (v5)
  {
    return v2;
  }

  if (HIWORD(a1))
  {
    return "BADTYPE";
  }

  v3 = res_9_p_type_typebuf;
  __sprintf_chk(res_9_p_type_typebuf, 0, 0x14uLL, "TYPE%d", a1);
  return v3;
}

const char *__cdecl res_9_p_class(int a1)
{
  v5 = 0;
  v2 = res_9_sym_ntos(&__res_9_p_class_syms, a1, &v5);
  if (v5)
  {
    return v2;
  }

  if (HIWORD(a1))
  {
    return "BADCLASS";
  }

  v3 = res_9_p_class_classbuf;
  __sprintf_chk(res_9_p_class_classbuf, 0, 0x14uLL, "CLASS%d", a1);
  return v3;
}

const char *__cdecl res_9_p_time(u_int32_t a1)
{
  v2 = ___mtctxres();
  if (res_9_ns_format_ttl(a1, v2 + 857, 8uLL) < 0)
  {
    sprintf(v2 + 857, "%u", a1);
  }

  return v2 + 857;
}

int res_9_loc_aton(const char *ascii, u_char *binary)
{
  v58 = 0;
  v59 = ascii;
  v4 = strlen(ascii);
  v5 = latlon2ul(&v59, &v58 + 1);
  v6 = latlon2ul(&v59, &v58);
  result = 0;
  if (v58 + HIDWORD(v58) == 3)
  {
    if (HIDWORD(v58) == 1 && v58 == 2)
    {
      v9 = v6;
      v6 = v5;
    }

    else
    {
      result = 0;
      if (HIDWORD(v58) != 2)
      {
        return result;
      }

      v9 = v5;
      if (v58 != 1)
      {
        return result;
      }
    }

    v10 = v59;
    v11 = *v59;
    if (v11 == 45)
    {
      v10 = (v59 + 1);
      v11 = *++v59;
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v11 == 43)
    {
      v13 = *++v10;
      v11 = v13;
      v59 = v10;
    }

    if ((v11 - 48) > 9)
    {
      v16 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *++v10;
        v14 = 10 * v14 + v11 - 48;
        v11 = v15;
      }

      while ((v15 - 48) < 0xA);
      v16 = 100 * v14;
    }

    v59 = v10;
    if (v11 == 46)
    {
      v17 = v10 + 1;
      v59 = (v10 + 1);
      v18 = v10[1];
      if ((v18 - 48) > 9)
      {
        v21 = 0;
      }

      else
      {
        v17 = v10 + 2;
        v59 = (v10 + 2);
        v19 = 10 * v18;
        v20 = v10[2];
        if ((v20 - 48) <= 9)
        {
          v10 += 3;
          v59 = v10;
          v21 = v19 + v20 - 528;
LABEL_28:
          v22 = &ascii[v4];
          v23 = (v21 + v16) * v12;
          v24 = MEMORY[0x29EDCA600];
          do
          {
            v25 = *v10;
            if (v25 < 0)
            {
              v26 = __maskrune(*v10, 0x4000uLL);
            }

            else
            {
              v26 = *(v24 + 4 * v25 + 60) & 0x4000;
            }

            v27 = v10 + 1;
            if (v26)
            {
              v28 = 1;
            }

            else
            {
              v28 = v10 >= v22;
            }

            ++v10;
          }

          while (!v28);
          v29 = v27 - 1;
          v59 = v29;
          do
          {
            v30 = v29;
            v31 = *v29;
            if (v31 < 0)
            {
              v32 = __maskrune(v31, 0x4000uLL);
            }

            else
            {
              v32 = *(v24 + 4 * v31 + 60) & 0x4000;
            }

            v29 = v30 + 1;
            if (v32)
            {
              v33 = v30 >= v22;
            }

            else
            {
              v33 = 1;
            }
          }

          while (!v33);
          v34 = v23 + 10000000;
          v59 = v30;
          if (v30 >= v22)
          {
            v35 = 18;
          }

          else
          {
            v35 = precsize_aton(&v59);
            v36 = v59;
            do
            {
              v37 = *v36;
              if (v37 < 0)
              {
                v38 = __maskrune(*v36, 0x4000uLL);
              }

              else
              {
                v38 = *(v24 + 4 * v37 + 60) & 0x4000;
              }

              v39 = v36 + 1;
              if (v38)
              {
                v40 = 1;
              }

              else
              {
                v40 = v36 >= v22;
              }

              ++v36;
            }

            while (!v40);
            v41 = (v39 - 1);
            do
            {
              v42 = v41;
              v43 = *v41;
              if (v43 < 0)
              {
                v44 = __maskrune(v43, 0x4000uLL);
              }

              else
              {
                v44 = *(v24 + 4 * v43 + 60) & 0x4000;
              }

              v41 = v42 + 1;
              if (v44)
              {
                v45 = v42 >= v22;
              }

              else
              {
                v45 = 1;
              }
            }

            while (!v45);
            v59 = v42;
            if (v42 < v22)
            {
              v46 = precsize_aton(&v59);
              v47 = v59;
              do
              {
                v48 = *v47;
                if (v48 < 0)
                {
                  v49 = __maskrune(*v47, 0x4000uLL);
                }

                else
                {
                  v49 = *(v24 + 4 * v48 + 60) & 0x4000;
                }

                v50 = v47 + 1;
                if (v49)
                {
                  v51 = 1;
                }

                else
                {
                  v51 = v47 >= v22;
                }

                ++v47;
              }

              while (!v51);
              v52 = (v50 - 1);
              do
              {
                v53 = v52;
                v54 = *v52;
                if (v54 < 0)
                {
                  v55 = __maskrune(v54, 0x4000uLL);
                }

                else
                {
                  v55 = *(v24 + 4 * v54 + 60) & 0x4000;
                }

                v52 = v53 + 1;
                if (v55)
                {
                  v56 = v53 >= v22;
                }

                else
                {
                  v56 = 1;
                }
              }

              while (!v56);
              v59 = v53;
              if (v53 >= v22)
              {
                v57 = 19;
              }

              else
              {
                v57 = precsize_aton(&v59);
              }

              goto LABEL_88;
            }
          }

          v57 = 19;
          v46 = 22;
LABEL_88:
          *binary = 0;
          binary[1] = v35;
          binary[2] = v46;
          binary[3] = v57;
          binary[4] = HIBYTE(v6);
          binary[5] = BYTE2(v6);
          binary[6] = BYTE1(v6);
          binary[7] = v6;
          binary[8] = HIBYTE(v9);
          binary[9] = BYTE2(v9);
          binary[10] = BYTE1(v9);
          binary[11] = v9;
          binary[12] = HIBYTE(v34);
          binary[13] = BYTE2(v34);
          binary[14] = BYTE1(v34);
          result = 16;
          binary[15] = v34;
          return result;
        }

        v21 = v19 - 480;
      }

      v10 = v17;
      goto LABEL_28;
    }

    v21 = 0;
    goto LABEL_28;
  }

  return result;
}

uint64_t latlon2ul(unsigned __int8 **a1, int *a2)
{
  v4 = *a1;
  v5 = **a1;
  if ((v5 - 48) > 9)
  {
    v8 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *++v4;
      v6 = 10 * v6 + v5 - 48;
      LOBYTE(v5) = v7;
    }

    while ((v7 - 48) < 0xA);
    v8 = 60 * v6;
  }

  v9 = v4 - 1;
  v10 = MEMORY[0x29EDCA600];
  do
  {
    v11 = v9[1];
    if (v9[1] < 0)
    {
      v12 = __maskrune(v9[1], 0x4000uLL);
    }

    else
    {
      v12 = *(v10 + 4 * v9[1] + 60) & 0x4000;
    }

    ++v9;
  }

  while (v12);
  if ((v11 - 48) > 9)
  {
    v14 = 0;
  }

  else
  {
    v13 = *v9;
    if ((v13 - 48) > 9)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *++v9;
        v14 = 10 * v14 + v13 - 48;
        LOBYTE(v13) = v15;
      }

      while ((v15 - 48) < 0xA);
    }

    --v9;
    do
    {
      v16 = v9[1];
      if (v9[1] < 0)
      {
        v17 = __maskrune(v9[1], 0x4000uLL);
      }

      else
      {
        v17 = *(v10 + 4 * v9[1] + 60) & 0x4000;
      }

      ++v9;
    }

    while (v17);
    if ((v16 - 48) <= 9)
    {
      v18 = *v9;
      if ((v18 - 48) > 9)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = *v9;
        do
        {
          v21 = *++v9;
          v18 = v21;
          v19 = 10 * v19 + v20 - 48;
          v20 = v21;
        }

        while ((v21 - 48) < 0xA);
      }

      if (v18 == 46)
      {
        v23 = v9[1];
        if ((v23 - 48) > 9)
        {
          v22 = 0;
          ++v9;
        }

        else
        {
          v24 = v9[2];
          v25 = 100 * v23;
          if ((v24 - 48) > 9)
          {
            v22 = v25 - 4800;
            v9 += 2;
          }

          else
          {
            v26 = v9 + 4;
            v27 = v9[3];
            v9 += 3;
            v28 = v25 + 10 * v24 - 5280;
            v29 = v28 + v27 - 48;
            if ((v27 - 48) > 9)
            {
              v22 = v28;
            }

            else
            {
              v9 = v26;
              v22 = v29;
            }
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v9 -= 2;
      do
      {
        v30 = v9[2];
        if (v30 < 0)
        {
          v31 = __maskrune(v9[2], 0x4000uLL);
        }

        else
        {
          v31 = *(v10 + 4 * v30 + 60) & 0x4000;
        }

        ++v9;
      }

      while (!v31);
      do
      {
        v32 = v9[1];
        if (v32 < 0)
        {
          v33 = __maskrune(v9[1], 0x4000uLL);
        }

        else
        {
          v33 = *(v10 + 4 * v32 + 60) & 0x4000;
        }

        ++v9;
      }

      while (v33);
      goto LABEL_48;
    }
  }

  v19 = 0;
  v22 = 0;
LABEL_48:
  v34 = *v9 - 69;
  v35 = 1 << (*v9 - 69);
  v36 = v19 + 60 * (v14 + v8);
  v37 = v22 + 1000 * v36 + 0x80000000;
  v38 = ((-1000 * v36) ^ 0x80000000) - v22;
  if ((v35 & 0x4400000044000) == 0)
  {
    v38 = 0;
  }

  if ((v35 & 0x20100000201) != 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  if (v34 <= 0x32)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v34 > 0x32)
  {
    goto LABEL_71;
  }

  if (((1 << v34) & 0x420000004200) != 0)
  {
    v41 = 1;
    goto LABEL_61;
  }

  if (((1 << v34) & 0x4000100040001) == 0)
  {
LABEL_71:
    v41 = 0;
    goto LABEL_61;
  }

  v41 = 2;
LABEL_61:
  *a2 = v41;
  v42 = v9 - 1;
  do
  {
    v43 = v42[2];
    if (v43 < 0)
    {
      v44 = __maskrune(v42[2], 0x4000uLL);
    }

    else
    {
      v44 = *(v10 + 4 * v43 + 60) & 0x4000;
    }

    ++v42;
  }

  while (!v44);
  do
  {
    v45 = v42[1];
    if (v45 < 0)
    {
      v46 = __maskrune(v42[1], 0x4000uLL);
    }

    else
    {
      v46 = *(v10 + 4 * v45 + 60) & 0x4000;
    }

    ++v42;
  }

  while (v46);
  *a1 = v42;
  return v40;
}

uint64_t precsize_aton(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((v2 - 48) > 9)
  {
    v5 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *++v1;
      v3 = 10 * v3 + v2 - 48;
      v2 = v4;
    }

    while ((v4 - 48) < 0xA);
    v5 = 100 * v3;
  }

  if (v2 != 46)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v7 = v1 + 1;
  v6 = v1[1];
  if ((v6 - 48) > 9)
  {
    v10 = 0;
LABEL_13:
    v1 = v7;
    goto LABEL_14;
  }

  v7 = v1 + 2;
  v8 = v1[2];
  v9 = 10 * v6;
  if ((v8 - 48) > 9)
  {
    v10 = v9 - 480;
    goto LABEL_13;
  }

  v1 += 3;
  v10 = v9 + v8 - 528;
LABEL_14:
  v11 = v10 + v5;
  v12 = -1;
  v13 = 1u;
  while (v13 != 10)
  {
    v14 = poweroften_0[v13];
    ++v12;
    ++v13;
    if (v11 < v14)
    {
      goto LABEL_19;
    }
  }

  v12 = 9;
LABEL_19:
  v15 = v11 / poweroften_0[v12];
  if (v15 >= 9)
  {
    LOBYTE(v15) = 9;
  }

  *a1 = v1;
  return (v12 | (16 * v15));
}

const char *__cdecl res_9_loc_ntoa(const u_char *binary, char *ascii)
{
  if (ascii)
  {
    v2 = ascii;
  }

  else
  {
    v2 = &res_9_loc_ntoa_tmpbuf;
  }

  if (*binary)
  {
    strcpy(v2, "; error: unknown LOC RR version");
  }

  else
  {
    v3 = binary;
    v4 = binary[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[4];
    v8 = v7 << 24;
    v9 = ((v3[7] | (v3[5] << 16) | (v3[6] << 8)) & 0xFFFFFF | (v7 << 24)) ^ 0x80000000;
    v10 = v3[8];
    v11 = v10 << 24;
    v12 = ((v3[11] | (v3[9] << 16) | (v3[10] << 8)) & 0xFFFFFF | (v10 << 24)) ^ 0x80000000;
    LODWORD(v3) = bswap32(*(v3 + 3));
    v13 = 10000000 - v3;
    v14 = v3 - 10000000;
    v15 = v3 >= 0x989680;
    if (v3 >= 0x989680)
    {
      v16 = &unk_2998BE18D;
    }

    else
    {
      v16 = "-";
    }

    v43 = v16;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v8 >= 0)
    {
      v9 = -v9;
    }

    v40 = v9 / 0x36EE80;
    v18 = 78;
    if (v8 >= 0)
    {
      v18 = 83;
    }

    v38 = v18;
    v42 = v9 % 0x3E8;
    v41 = v9 / 0x3E8 - 60 * ((71582789 * (v9 / 0x3E8)) >> 32);
    v39 = v9 / 0xEA60 - 60 * ((71582789 * (v9 / 0xEA60)) >> 32);
    if (v11 < 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = -v12;
    }

    v37 = v19 / 0x36EE80;
    v20 = v17 / 100;
    if (v11 < 0)
    {
      v21 = 69;
    }

    else
    {
      v21 = 87;
    }

    v22 = v19 % 0x3E8;
    v23 = v19 / 0x3E8 - 60 * ((71582789 * (v19 / 0x3E8)) >> 32);
    v24 = v19 / 0xEA60 - 60 * ((71582789 * (v19 / 0xEA60)) >> 32);
    v25 = v17 % 100;
    v26 = precsize_ntoa_0(v4);
    v27 = strdup(v26);
    v28 = precsize_ntoa_0(v5);
    v29 = strdup(v28);
    v30 = precsize_ntoa_0(v6);
    v31 = strdup(v30);
    v32 = v31;
    v33 = "?";
    if (v27)
    {
      v34 = v27;
    }

    else
    {
      v34 = "?";
    }

    if (v29)
    {
      v35 = v29;
    }

    else
    {
      v35 = "?";
    }

    if (v31)
    {
      v33 = v31;
    }

    sprintf(v2, "%d %.2d %.2d.%.3d %c %d %.2d %.2d.%.3d %c %s%d.%.2dm %sm %sm %sm", v40, v39, v41, v42, v38, v37, v24, v23, v22, v21, v43, v20, v25, v34, v35, v33);
    if (v27)
    {
      free(v27);
    }

    if (v29)
    {
      free(v29);
    }

    if (v32)
    {
      free(v32);
    }
  }

  return v2;
}

char *precsize_ntoa_0(unsigned int a1)
{
  v2 = ___mtctxres();
  v3 = v2;
  v4 = a1 >> 4;
  if (a1 >= 0xA0)
  {
    v4 = (a1 >> 4) - 10;
  }

  v5 = a1 & 0xF;
  if (v5 >= 0xA)
  {
    v5 = (a1 & 0xF) - 10;
  }

  v6 = poweroften_0[v5] * v4;
  sprintf(v2 + 897, "%lu.%.2lu", v6 / 0x64uLL, v6 % 0x64);
  return v3 + 897;
}

int res_9_dn_count_labels(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (a1[v3] == 46)
      {
        ++v4;
      }

      ++v3;
    }

    while (v2 != v3);
    v6 = *a1 == 42 && v4 != 0;
    v7 = v4 - v6;
    if (a1[v2 - 1] == 46)
    {
      LODWORD(v2) = v7;
    }

    else
    {
      LODWORD(v2) = v7 + 1;
    }
  }

  return v2;
}

char *__cdecl res_9_p_secstodate(u_long a1)
{
  v2 = ___mtctxres();
  v7 = a1;
  memset(&v6, 0, sizeof(v6));
  v3 = gmtime_r(&v7, &v6);
  v4 = vadd_s32(v3[2], 0x76C00000001);
  v3[2] = v4;
  sprintf(v2 + 996, "%04d%02d%02d%02d%02d%02d", v4.i32[1], v4.i32[0], v3[1].i32[1], v3[1].i32[0], v3->i32[1], v3->i32[0]);
  return v2 + 996;
}

u_int16_t res_9_nametoclass(const char *buf, int *success)
{
  v4 = "IN";
  v5 = &off_29EF6EDA8;
  do
  {
    if (!strcasecmp(buf, v4))
    {
      LODWORD(v9) = *(v5 - 8);
      v10 = 1;
      if (!success)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = *v5;
    v5 += 3;
    v4 = v6;
  }

  while (v6);
  if (strncasecmp(buf, "CLASS", 5uLL) || (v8 = *(buf + 5), v7 = buf + 5, (v8 - 48) > 9))
  {
    v10 = 0;
    LOWORD(v9) = 1;
    if (!success)
    {
      return v9;
    }

    goto LABEL_12;
  }

  __endptr = 0;
  *__error() = 0;
  v9 = strtoul(v7, &__endptr, 10);
  if (*__error())
  {
    v10 = 0;
    if (!success)
    {
      return v9;
    }

    goto LABEL_12;
  }

  if (*__endptr)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 >= 0x10000;
  }

  v10 = !v12;
  if (success)
  {
LABEL_12:
    *success = v10;
  }

  return v9;
}

u_int16_t res_9_nametotype(const char *buf, int *success)
{
  v4 = "A";
  v5 = off_29EF6EF88;
  do
  {
    if (!strcasecmp(buf, v4))
    {
      LODWORD(v9) = *(v5 - 8);
      v10 = 1;
      if (!success)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = *v5;
    v5 += 3;
    v4 = v6;
  }

  while (v6);
  if (strncasecmp(buf, "type", 4uLL) || (v8 = *(buf + 4), v7 = buf + 4, (v8 - 48) > 9))
  {
    v10 = 0;
    LOWORD(v9) = 0;
    if (!success)
    {
      return v9;
    }

    goto LABEL_12;
  }

  __endptr = 0;
  *__error() = 0;
  v9 = strtoul(v7, &__endptr, 10);
  if (*__error())
  {
    v10 = 0;
    if (!success)
    {
      return v9;
    }

    goto LABEL_12;
  }

  if (*__endptr)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 >= 0x10000;
  }

  v10 = !v12;
  if (success)
  {
LABEL_12:
    *success = v10;
  }

  return v9;
}

int res_9_findzonecut(res_9_state a1, const char *a2, res_9_ns_class a3, int a4, char *a5, size_t a6, in_addr *a7, int a8)
{
  v16 = malloc_type_calloc(a8, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (!v16)
  {
    return -1;
  }

  v17 = v16;
  v18 = res_9_findzonecut2(a1, a2, a3, a4 & 0xFFFFFFF9 | 2, a5, a6, v16, a8);
  v19 = v18;
  if (v18 >= 1)
  {
    v20 = v18;
    p_s_addr = &v17->sin.sin_addr.s_addr;
    do
    {
      v22 = *p_s_addr;
      p_s_addr += 32;
      a7->s_addr = v22;
      ++a7;
      --v20;
    }

    while (v20);
  }

  free(v17);
  return v19;
}

int res_9_findzonecut2(res_9_state a1, const char *a2, res_9_ns_class a3, int a4, char *a5, size_t a6, res_9_sockaddr_union *a7, int a8)
{
  v100 = a4;
  v107 = *MEMORY[0x29EDCA608];
  if ((a1->options & 2) != 0)
  {
    v16 = *__error();
    v17 = MEMORY[0x29EDCA620];
    v18 = *MEMORY[0x29EDCA620];
    v19 = res_9_p_class(a3);
    fprintf(v18, ";; res_findzonecut: START dname='%s' class=%s, zsize=%ld, naddrs=%d\n", a2, v19, a6, a8);
    *__error() = v16;
    options = a1->options;
    p_pfcode = &a1->pfcode;
    pfcode = a1->pfcode;
    a1->pfcode = pfcode | 0xBF0;
    v101 = 0;
    v102 = 0;
    if ((options & 2) != 0)
    {
      v21 = *__error();
      fwrite(";; res_findzonecut: get the soa, and see if it has enough glue\n", 0x3FuLL, 1uLL, *v17);
      *__error() = v21;
    }
  }

  else
  {
    p_pfcode = &a1->pfcode;
    pfcode = a1->pfcode;
    a1->pfcode = pfcode | 0xBF0;
    v101 = 0;
    v102 = 0;
  }

  memset(&v103, 0, sizeof(v103));
  if (res_9_ns_makecanon(a2, v106, 0x401uLL) < 0)
  {
    goto LABEL_42;
  }

  v22 = malloc_type_malloc(0xFFFFuLL, 0x8B73B6D3uLL);
  if (!v22)
  {
    goto LABEL_42;
  }

  v23 = v22;
  v97 = p_pfcode;
  i = v106;
  do
  {
LABEL_8:
    v25 = i;
    v26 = *i++;
  }

  while (v26 == 46);
  v27 = do_query(a1, v25, a3, 6, v23, &v103);
  v28 = v27;
  if (v27 < 0)
  {
    if ((a1->options & 2) != 0)
    {
      v53 = *__error();
      v54 = *MEMORY[0x29EDCA620];
      v55 = res_9_p_class(a3);
      fprintf(v54, ";; res_findzonecut: get_soa: do_query('%s', %s) failed (%d)\n", v25, v55, v28);
      *__error() = v53;
    }

    goto LABEL_41;
  }

  if (v27)
  {
    if ((a1->options & 2) != 0)
    {
      v29 = *__error();
      fwrite(";; res_findzonecut: get_soa: CNAME or DNAME found\n", 0x32uLL, 1uLL, *MEMORY[0x29EDCA620]);
      *__error() = v29;
    }

    goto LABEL_32;
  }

  *&v105.name[32] = *v103._sections;
  *&v105.name[48] = *&v103._sections[2];
  *&v105.name[64] = *&v103._sect;
  *&v105.name[16] = *&v103._id;
  *v105.name = *&v103._msg;
  v30 = res_9_ns_msg_getflag(&v105, 9);
  v31 = v103._counts[1];
  if (v103._counts[1])
  {
    v32 = v30 == 0;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v96 = v33;
  if (v32)
  {
    v34 = ns_s_an;
  }

  else
  {
    v31 = v103._counts[2];
    if (!v103._counts[2])
    {
LABEL_32:
      v36 = *v25;
      if (*v25)
      {
        for (i = v25; ; ++i)
        {
          if (v36 == 92)
          {
            if (!*++i)
            {
              v39 = __error();
              v40 = 40;
              goto LABEL_40;
            }
          }

          else if (v36 == 46)
          {
            goto LABEL_8;
          }

          v38 = i[1];
          v36 = v38;
        }
      }

      if ((a1->options & 2) != 0)
      {
        v56 = *__error();
        fwrite(";; res_findzonecut: get_soa: out of labels\n", 0x2BuLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v56;
      }

      v39 = __error();
      v40 = 39;
LABEL_40:
      *v39 = v40;
      goto LABEL_41;
    }

    v34 = ns_s_ns;
  }

  v35 = 0;
  while (1)
  {
    memset(&v105, 0, 512);
    if (res_9_ns_parserr(&v103, v34, v35, &v105) < 0)
    {
      if ((a1->options & 2) == 0)
      {
        goto LABEL_41;
      }

      v48 = *__error();
      v49 = *MEMORY[0x29EDCA620];
      v50 = res_9_p_section(v34, 0);
      fprintf(v49, ";; res_findzonecut: get_soa: ns_parserr(%s, %d) failed\n", v50, v35);
      goto LABEL_75;
    }

    if (v105.type == 6)
    {
      break;
    }

    if (v105.type == 5 || v105.type == 39)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (v31 == ++v35)
    {
      goto LABEL_32;
    }
  }

  if (v105.rr_class != a3)
  {
    goto LABEL_31;
  }

  if (v105.name[0])
  {
    v51 = &v105;
  }

  else
  {
    v51 = ".";
  }

  if (!v96)
  {
    if (res_9_ns_samename(v25, v51->name) != 1 && res_9_ns_samedomain(v25, v51->name))
    {
      goto LABEL_67;
    }

    if ((a1->options & 2) != 0)
    {
      v52 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: get_soa: ns_samename() || !ns_samedomain('%s', '%s')\n");
LABEL_73:
      *__error() = v52;
    }

LABEL_74:
    v48 = 41;
LABEL_75:
    *__error() = v48;
    goto LABEL_41;
  }

  if (!res_9_ns_samedomain(v25, v51->name))
  {
    if ((a1->options & 2) != 0)
    {
      v52 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: get_soa: ns_samedomain('%s', '%s') == 0\n");
      goto LABEL_73;
    }

    goto LABEL_74;
  }

LABEL_67:
  if (strlen(v51->name) + 1 > a6)
  {
    if ((a1->options & 2) != 0)
    {
      v57 = *__error();
      v58 = strlen(v51->name);
      fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: get_soa: zname(%lu) too small (%lu)\n", a6, v58 + 1);
      *__error() = v57;
    }

    v48 = 40;
    goto LABEL_75;
  }

  strlcpy(a5, v51->name, a6);
  if (res_9_ns_name_uncompress(v23, v103._eom, v105.rdata, v104, 0x401uLL) < 0)
  {
    if ((a1->options & 2) != 0)
    {
      v48 = *__error();
      v61 = *MEMORY[0x29EDCA620];
      v62 = ";; res_findzonecut: get_soa: ns_name_uncompress failed\n";
      v63 = 55;
LABEL_94:
      fwrite(v62, v63, 1uLL, v61);
      goto LABEL_75;
    }

LABEL_41:
    free(v23);
    p_pfcode = v97;
    goto LABEL_42;
  }

  v59 = v100;
  if ((save_ns(a1, &v103, 2u, a5, a3, v100, &v101) & 0x80000000) != 0)
  {
    if ((a1->options & 2) != 0)
    {
      v48 = *__error();
      v61 = *MEMORY[0x29EDCA620];
      v62 = ";; res_findzonecut: get_soa: save_ns failed\n";
      v63 = 44;
      goto LABEL_94;
    }

    goto LABEL_41;
  }

  free(v23);
  if ((v100 & 1) == 0)
  {
    v60 = satisfy(a1, v104, &v101, a7, a8);
    if (v60 > 0)
    {
LABEL_80:
      v41 = v60;
      goto LABEL_81;
    }
  }

  p_pfcode = v97;
  if ((a1->options & 2) != 0)
  {
    v64 = *__error();
    fwrite(";; res_findzonecut: get the ns rrset and see if it has enough glue\n", 0x43uLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v64;
  }

  v65 = malloc_type_malloc(0xFFFFuLL, 0xF93483D6uLL);
  if (!v65)
  {
    goto LABEL_42;
  }

  v66 = v65;
  memset(&v105, 0, 80);
  if (do_query(a1, a5, a3, 2, v65, &v105))
  {
    if ((a1->options & 2) != 0)
    {
      v67 = *__error();
      v68 = *MEMORY[0x29EDCA620];
      res_9_p_class(a3);
      fprintf(v68, ";; res_findzonecut: get_ns: do_query('%s', %s) failed (%d)\n");
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if ((save_ns(a1, &v105, 1u, a5, a3, v100, &v101) & 0x80000000) != 0)
  {
    if ((a1->options & 2) != 0)
    {
      v67 = *__error();
      v88 = *MEMORY[0x29EDCA620];
      res_9_p_class(a3);
      fprintf(v88, ";; res_findzonecut: get_ns save_ns('%s', %s) failed\n");
LABEL_90:
      *__error() = v67;
    }

LABEL_91:
    free(v66);
    goto LABEL_42;
  }

  free(v66);
  if ((v100 & 1) == 0)
  {
    v69 = satisfy(a1, v104, &v101, a7, a8);
    if (v69 > 0)
    {
      v41 = v69;
      goto LABEL_43;
    }
  }

  if ((a1->options & 2) != 0)
  {
    v70 = *__error();
    fwrite(";; res_findzonecut: get the missing glue and see if it's finally enough\n", 0x48uLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v70;
  }

  v71 = malloc_type_malloc(0xFFFFuLL, 0x530A87A5uLL);
  if (!v71)
  {
LABEL_42:
    v41 = -1;
    goto LABEL_43;
  }

  v72 = v71;
  v73 = v101;
  if (!v101)
  {
LABEL_121:
    free(v72);
    v60 = satisfy(a1, v104, &v101, a7, a8);
    goto LABEL_80;
  }

  while (1)
  {
    memset(&v105, 0, 80);
    v74 = *(v73 + 1);
    v75 = *(v73 + 6);
    if ((v75 & 1) == 0)
    {
      v76 = (v73 + 16);
      v77 = do_query(a1, *(v73 + 2), a3, 1, v72, &v105);
      if (v77 < 0)
      {
        goto LABEL_124;
      }

      if (v77 && (a1->options & 2) != 0)
      {
        v78 = *__error();
        v79 = *MEMORY[0x29EDCA620];
        v80 = *v76;
        v81 = res_9_p_class(a3);
        v94 = v80;
        v59 = v100;
        fprintf(v79, ";; res_findzonecut: get_glue: do_query('%s', %s') CNAME or DNAME found\n", v94, v81);
        *__error() = v78;
      }

      if ((save_a(a1, &v105, 1u, *(v73 + 2), a3, v59, v73) & 0x80000000) != 0)
      {
        break;
      }

      v75 = *(v73 + 6);
    }

    if ((v75 & 2) == 0)
    {
      v76 = (v73 + 16);
      v82 = do_query(a1, *(v73 + 2), a3, 28, v72, &v105);
      if (v82 < 0)
      {
LABEL_124:
        if ((a1->options & 2) == 0)
        {
          goto LABEL_129;
        }

        v89 = ";; res_findzonecut: get_glue: do_query('%s', %s') failed\n";
        goto LABEL_128;
      }

      if (v82 && (a1->options & 2) != 0)
      {
        v83 = *__error();
        v84 = *MEMORY[0x29EDCA620];
        v85 = *v76;
        v86 = res_9_p_class(a3);
        v95 = v85;
        v59 = v100;
        fprintf(v84, ";; res_findzonecut: get_glue: do_query('%s', %s') CNAME or DNAME found\n", v95, v86);
        *__error() = v83;
      }

      if ((save_a(a1, &v105, 1u, *(v73 + 2), a3, v59, v73) & 0x80000000) != 0)
      {
        break;
      }
    }

    if (!*(v73 + 4))
    {
      if ((a1->options & 2) != 0)
      {
        v87 = *__error();
        fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: get_glue: removing empty '%s' NS\n", *(v73 + 2));
        *__error() = v87;
      }

      free_nsrr(&v101, v73);
    }

    v73 = v74;
    if (!v74)
    {
      goto LABEL_121;
    }
  }

  if ((a1->options & 2) == 0)
  {
    goto LABEL_129;
  }

  v89 = ";; res_findzonecut: get_glue: save_r('%s', %s) failed\n";
LABEL_128:
  v90 = *__error();
  v91 = *MEMORY[0x29EDCA620];
  v92 = *v76;
  v93 = res_9_p_class(a3);
  fprintf(v91, v89, v92, v93);
  *__error() = v90;
LABEL_129:
  free(v72);
  v41 = -1;
LABEL_81:
  p_pfcode = v97;
LABEL_43:
  if ((a1->options & 2) != 0)
  {
    v42 = *__error();
    v43 = *MEMORY[0x29EDCA620];
    if (v41 < 0)
    {
      v45 = __error();
      v44 = strerror(*v45);
    }

    else
    {
      v44 = "OK";
    }

    fprintf(v43, ";; res_findzonecut: FINISH n=%d (%s)\n", v41, v44);
    *__error() = v42;
  }

  while (v101)
  {
    free_nsrr(&v101, v101);
  }

  *p_pfcode = pfcode;
  v46 = *MEMORY[0x29EDCA608];
  return v41;
}

uint64_t satisfy(uint64_t a1, char *a2, uint64_t *a3, _OWORD *a4, int a5)
{
  v10 = *a3;
  if (*a3)
  {
    while (res_9_ns_samename(*(v10 + 16), a2) != 1)
    {
      v10 = *(v10 + 8);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v10 = add_addrs(a1, v10, a4, a5);
    a4 += 8 * v10;
    a5 -= v10;
  }

LABEL_6:
  v11 = *a3;
  if (v11)
  {
    v12 = a5 < 1;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    do
    {
      if (res_9_ns_samename(*(v11 + 16), a2) != 1)
      {
        v13 = add_addrs(a1, v11, a4, a5);
        a4 += 8 * v13;
        a5 -= v13;
        v10 = (v13 + v10);
      }

      v11 = *(v11 + 8);
      if (v11)
      {
        v14 = a5 <= 0;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    v15 = *__error();
    fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: satisfy(%s): %d\n", a2, v10);
    *__error() = v15;
  }

  return v10;
}

uint64_t add_addrs(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while ((a4 & (a4 >> 31)) - a4 != v5)
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 32);
      v8 = *(v4 + 64);
      a3[2] = *(v4 + 48);
      a3[3] = v8;
      *a3 = v6;
      a3[1] = v7;
      v9 = *(v4 + 80);
      v10 = *(v4 + 96);
      v11 = *(v4 + 128);
      a3[6] = *(v4 + 112);
      a3[7] = v11;
      a3[4] = v9;
      a3[5] = v10;
      a3 += 8;
      v4 = *(v4 + 8);
      --v5;
      if (!v4)
      {
        v12 = -v5;
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
    v12 = 0;
LABEL_7:
    if ((*(a1 + 8) & 2) != 0)
    {
      v13 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_findzonecut: add_addrs: %d\n", v12);
      *__error() = v13;
    }
  }

  return v12;
}

uint64_t do_query(uint64_t a1, char *a2, int a3, int a4, u_char *a5, res_9_ns_msg *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v10 = res_9_nmkquery(a1, 0, a2, a3, a4, 0, 0, 0, v24, 512);
  if (v10 < 0)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      v16 = *__error();
      v17 = *MEMORY[0x29EDCA620];
      v18 = ";; res_findzonecut: do_query: res_nmkquery failed\n";
LABEL_20:
      v19 = 50;
LABEL_23:
      fwrite(v18, v19, 1uLL, v17);
      *__error() = v16;
    }

LABEL_31:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  v11 = res_9_nsend(a1, v24, v10, a5, 0xFFFF);
  if (v11 < 0)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      v16 = *__error();
      v17 = *MEMORY[0x29EDCA620];
      v18 = ";; res_findzonecut: do_query: res_nsend failed\n";
      v19 = 47;
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      v20 = *__error();
      fwrite(";; res_findzonecut: do_query: res_nsend returned 0\n", 0x33uLL, 1uLL, *MEMORY[0x29EDCA620]);
      *__error() = v20;
    }

    *__error() = 40;
    goto LABEL_31;
  }

  if (res_9_ns_initparse(a5, v11, a6) < 0)
  {
    if ((*(a1 + 8) & 2) == 0)
    {
      goto LABEL_31;
    }

    v16 = *__error();
    v17 = *MEMORY[0x29EDCA620];
    v18 = ";; res_findzonecut: do_query: ns_initparse failed\n";
    goto LABEL_20;
  }

  if (a6->_counts[1])
  {
    v12 = 0;
    LODWORD(v13) = 0;
    while (1)
    {
      memset(&v23, 0, 512);
      if (res_9_ns_parserr(a6, ns_s_an, v12, &v23) < 0)
      {
        break;
      }

      v15 = v23.rr_class == a3 && (v23.type == 5 || v23.type == 39);
      v13 = (v15 + v13);
      if (++v12 >= a6->_counts[1])
      {
        goto LABEL_32;
      }
    }

    if ((*(a1 + 8) & 2) == 0)
    {
      goto LABEL_31;
    }

    v16 = *__error();
    v17 = *MEMORY[0x29EDCA620];
    v18 = ";; res_findzonecut: do_query: ns_parserr failed\n";
    v19 = 48;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t save_ns(uint64_t a1, res_9_ns_msg *a2, unsigned int a3, const char *a4, int a5, char a6, uint64_t a7)
{
  v39 = *MEMORY[0x29EDCA608];
  counts = a2->_counts;
  if (a2->_counts[a3])
  {
    v13 = 0;
    while (1)
    {
      memset(&v37, 0, 512);
      if (res_9_ns_parserr(a2, a3, v13, &v37) < 0)
      {
        break;
      }

      if (v37.type == 2 && v37.rr_class == a5)
      {
        v14 = v37.name[0] ? &v37 : ".";
        if (res_9_ns_samename(v14->name, a4) == 1)
        {
          if (v37.name[0])
          {
            v15 = &v37;
          }

          else
          {
            v15 = ".";
          }

          v16 = *a7;
          if (*a7)
          {
            while (res_9_ns_samename(v16[2], v15->name) != 1)
            {
              v16 = v16[1];
              if (!v16)
              {
                goto LABEL_16;
              }
            }

            v19 = v16[2];
          }

          else
          {
LABEL_16:
            v17 = malloc_type_malloc(0x30uLL, 0x10700407AC41AD7uLL);
            if (!v17)
            {
              if ((*(a1 + 8) & 2) != 0)
              {
                v29 = *__error();
                fwrite(";; res_findzonecut: save_ns: malloc failed\n", 0x2BuLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v29;
              }

              goto LABEL_39;
            }

            v16 = v17;
            if (res_9_ns_name_uncompress(a2->_msg, a2->_eom, v37.rdata, __s1, 0x401uLL) < 0)
            {
              if ((*(a1 + 8) & 2) != 0)
              {
                v30 = *__error();
                v31 = *MEMORY[0x29EDCA620];
                v32 = ";; res_findzonecut: save_ns: ns_name_uncompress failed\n";
                v33 = 55;
                goto LABEL_37;
              }

LABEL_38:
              free(v16);
              goto LABEL_39;
            }

            v18 = strdup(__s1);
            v16[2] = v18;
            if (!v18)
            {
              if ((*(a1 + 8) & 2) != 0)
              {
                v30 = *__error();
                v31 = *MEMORY[0x29EDCA620];
                v32 = ";; res_findzonecut: save_ns: strdup failed\n";
                v33 = 43;
LABEL_37:
                fwrite(v32, v33, 1uLL, v31);
                *__error() = v30;
              }

              goto LABEL_38;
            }

            v19 = v18;
            *v16 = -1;
            v16[1] = -1;
            *(v16 + 6) = 0;
            v16[4] = 0;
            v16[5] = 0;
            v20 = *(a7 + 8);
            if (v20)
            {
              *(v20 + 8) = v16;
              v20 = *(a7 + 8);
            }

            else
            {
              *a7 = v16;
            }

            *v16 = v20;
            v16[1] = 0;
            *(a7 + 8) = v16;
          }

          if ((save_a(a1, a2, 3u, v19, a5, a6, v16) & 0x80000000) != 0)
          {
            if ((*(a1 + 8) & 2) != 0)
            {
              v25 = *__error();
              v26 = *MEMORY[0x29EDCA620];
              v27 = v16[2];
              v28 = res_9_p_class(a5);
              fprintf(v26, ";; res_findzonecut: save_ns: save_r('%s', %s) failed\n", v27, v28);
              *__error() = v25;
            }

            goto LABEL_39;
          }
        }
      }

      if (++v13 >= counts[a3])
      {
        goto LABEL_26;
      }
    }

    if ((*(a1 + 8) & 2) != 0)
    {
      v22 = *__error();
      v23 = *MEMORY[0x29EDCA620];
      v24 = res_9_p_section(a3, 0);
      fprintf(v23, ";; res_findzonecut: save_ns: ns_parserr(%s, %d) failed\n", v24, v13);
      *__error() = v22;
    }

LABEL_39:
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_26:
    result = 0;
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t save_a(uint64_t a1, res_9_ns_msg *a2, unsigned int a3, const char *a4, int a5, char a6, uint64_t a7)
{
  v31 = *MEMORY[0x29EDCA608];
  counts = a2->_counts;
  if (!a2->_counts[a3])
  {
LABEL_33:
    result = 0;
    goto LABEL_38;
  }

  v14 = 0;
  v29 = (a7 + 32);
  while (1)
  {
    memset(&v30, 0, 512);
    if (res_9_ns_parserr(a2, a3, v14, &v30) < 0)
    {
      if ((*(a1 + 8) & 2) == 0)
      {
        goto LABEL_37;
      }

      v24 = *__error();
      v25 = *MEMORY[0x29EDCA620];
      v26 = res_9_p_section(a3, 0);
      fprintf(v25, ";; res_findzonecut: save_a: ns_parserr(%s, %d) failed\n", v26, v14);
      goto LABEL_36;
    }

    if ((v30.type == 28 || v30.type == 1) && v30.rr_class == a5)
    {
      v15 = v30.name[0] ? &v30 : ".";
      if (res_9_ns_samename(v15->name, a4) == 1 && v30.rdlength == 4)
      {
        v16 = (a6 & 2) == 0 || v30.type == 1;
        v17 = v16;
        v18 = v30.type == 28 || (a6 & 4) == 0;
        if (v18 && v17)
        {
          break;
        }
      }
    }

LABEL_32:
    if (++v14 >= counts[a3])
    {
      goto LABEL_33;
    }
  }

  v19 = malloc_type_malloc(0x90uLL, 0x102004033B37985uLL);
  if (v19)
  {
    *v19 = -1;
    *(v19 + 1) = -1;
    *(v19 + 1) = 0u;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    *(v19 + 5) = 0u;
    *(v19 + 6) = 0u;
    *(v19 + 7) = 0u;
    *(v19 + 8) = 0u;
    if (v30.type == 28)
    {
      *(v19 + 8) = 7708;
      *(v19 + 24) = *v30.rdata;
      v20 = 2;
    }

    else
    {
      if (v30.type != 1)
      {
        abort();
      }

      *(v19 + 8) = 528;
      *(v19 + 5) = *v30.rdata;
      v20 = 1;
    }

    *(v19 + 9) = 13568;
    *(a7 + 24) |= v20;
    v21 = *(a7 + 40);
    v22 = (v21 + 8);
    if (!v21)
    {
      v22 = v29;
    }

    *v22 = v19;
    *v19 = v21;
    *(v19 + 1) = 0;
    *(a7 + 40) = v19;
    goto LABEL_32;
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    v24 = *__error();
    fwrite(";; res_findzonecut: save_a: malloc failed\n", 0x2AuLL, 1uLL, *MEMORY[0x29EDCA620]);
LABEL_36:
    *__error() = v24;
  }

LABEL_37:
  result = 0xFFFFFFFFLL;
LABEL_38:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void free_nsrr(void *a1, char *a2)
{
  v5 = (a2 + 32);
  v4 = *(a2 + 4);
  if (v4)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        v8 = v4[1];
      }

      else
      {
        v8 = a2 + 40;
      }

      *v8 = v7;
      if (v7)
      {
        v9 = (v7 + 8);
      }

      else
      {
        v9 = v5;
      }

      *v9 = v6;
      free(v4);
      v4 = *v5;
    }

    while (*v5);
  }

  free(*(a2 + 2));
  v11 = *a2;
  v10 = *(a2 + 1);
  if (!v10)
  {
    v10 = a1 + 1;
  }

  *v10 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = a1;
  }

  *v12 = *(a2 + 1);

  free(a2);
}

uint64_t res_build_sortlist(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 392);
  if (v4 > 0x9F)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = a1 + ((v4 >> 1) & 0x78);
  *(v6 + 396) = a2;
  *(v6 + 400) = a3;
  *(a1 + 392) = v4 + 16;
  return result;
}

const char *__cdecl res_get_nibblesuffix(res_9_state a1)
{
  ext = a1->_u._ext.ext;
  if (ext)
  {
    return ext + 744;
  }

  else
  {
    return "ip6.arpa";
  }
}

const char *__cdecl res_get_nibblesuffix2(res_9_state a1)
{
  ext = a1->_u._ext.ext;
  if (ext)
  {
    return ext + 872;
  }

  else
  {
    return "ip6.int";
  }
}

const char *__cdecl res_get_bitstringsuffix(res_9_state a1)
{
  ext = a1->_u._ext.ext;
  if (ext)
  {
    return ext + 808;
  }

  else
  {
    return "ip6.arpa";
  }
}

void res_9_setservers(res_9_state a1, const res_9_sockaddr_union *a2, int a3)
{
  res_9_nclose(a1);
  a1->_u._ext.nscount = 0;
  if (a3 >= 1)
  {
    v6 = 0;
    nsaddr_list = a1->nsaddr_list;
    v8 = 1;
    while (1)
    {
      sin_family = a2->sin.sin_family;
      if (sin_family == 30)
      {
        ext = a1->_u._ext.ext;
        if (ext)
        {
          sin = a2->sin;
          v13 = (ext + 128 * v6);
          *&v13->sin_zero[4] = *&a2->__space[12];
          *v13 = sin;
        }

        nsaddr_list[v6].sin_family = 0;
      }

      else
      {
        if (sin_family != 2)
        {
          goto LABEL_12;
        }

        v10 = a1->_u._ext.ext;
        if (v10)
        {
          *(v10 + 8 * v6) = a2->sin;
        }

        nsaddr_list[v6] = a2->sin;
      }

      ++v6;
LABEL_12:
      if (v8 < a3)
      {
        ++a2;
        ++v8;
        if (v6 < 3)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:
  a1->nscount = v6;
}

int res_9_getservers(res_9_state a1, res_9_sockaddr_union *a2, int a3)
{
  nscount = a1->nscount;
  if (a3 >= 1 && nscount >= 1)
  {
    v4 = 0;
    p_sin_family = &a1->nsaddr_list[0].sin_family;
    v6 = 1;
    while (1)
    {
      v7 = &a2[v4];
      ext = a1->_u._ext.ext;
      if (ext)
      {
        v9 = ext + v4 * 128 + 1;
      }

      else
      {
        v9 = p_sin_family;
      }

      v10 = *v9;
      if (v10 == 30)
      {
        if (ext)
        {
          v12 = (ext + v4 * 128);
          v11 = *v12;
          v13 = *(v12 + 12);
        }

        else
        {
          v11 = *(p_sin_family - 1);
          v13 = *(p_sin_family + 11);
        }

        *&v7->__space[12] = v13;
      }

      else
      {
        if (v10 != 2)
        {
          a2[v4].sin.sin_family = 0;
          goto LABEL_18;
        }

        if (ext)
        {
          v11 = *(ext + v4 * 128);
        }

        else
        {
          v11 = *(p_sin_family - 1);
        }
      }

      v7->sin = v11;
LABEL_18:
      nscount = a1->nscount;
      if (v6 < a3)
      {
        ++v4;
        p_sin_family += 16;
        if (v6++ < nscount)
        {
          continue;
        }
      }

      return nscount;
    }
  }

  return nscount;
}

uint64_t res_setoptions(uint64_t result, char *__s1, const char *a3)
{
  v5 = result;
  v6 = *(result + 536);
  v7 = MEMORY[0x29EDCA620];
  if ((*(result + 8) & 2) != 0)
  {
    v8 = *__error();
    fprintf(*v7, ";; res_setoptions(%s, %s)...\n", __s1, a3);
    result = __error();
    *result = v8;
  }

  v9 = *__s1;
  if (!*__s1)
  {
    return result;
  }

  v10 = __s1;
LABEL_5:
  while (v9 == 32 || v9 == 9)
  {
    v11 = *++v10;
    v9 = v11;
  }

  if (!strncmp(v10, "ndots:", 6uLL))
  {
    result = atoi(v10 + 6);
    if (result > 15)
    {
      v13 = *(v5 + 392) | 0xF;
    }

    else
    {
      v13 = v5[98] & 0xF0 | result & 0xF;
    }

    *(v5 + 392) = v13;
    if ((v5[2] & 2) == 0)
    {
      goto LABEL_47;
    }

    v15 = *__error();
    v17 = v5[98] & 0xF;
    fprintf(*v7, ";;\tndots=%d\n");
LABEL_44:
    result = __error();
    *result = v15;
    goto LABEL_47;
  }

  if (!strncmp(v10, "timeout:", 8uLL))
  {
    result = atoi(v10 + 8);
    if (result >= 30)
    {
      v14 = 30;
    }

    else
    {
      v14 = result;
    }

    *v5 = v14;
    if ((v5[2] & 2) == 0)
    {
      goto LABEL_47;
    }

    v15 = *__error();
    v16 = *v5;
    fprintf(*v7, ";;\ttimeout=%d\n");
    goto LABEL_44;
  }

  if (!strncmp(v10, "attempts:", 9uLL))
  {
    result = atoi(v10 + 9);
    if (result >= 5)
    {
      v18 = 5;
    }

    else
    {
      v18 = result;
    }

    v5[1] = v18;
    if ((v5[2] & 2) == 0)
    {
      goto LABEL_47;
    }

    v15 = *__error();
    v19 = v5[1];
    fprintf(*v7, ";;\tattempts=%d\n");
    goto LABEL_44;
  }

  if (!strncmp(v10, "debug", 5uLL))
  {
    v20 = *(v5 + 1);
    if ((v20 & 2) == 0)
    {
      *(v5 + 1) = v20 | 2;
      v21 = *__error();
      fprintf(*v7, ";; res_setoptions(%s, %s)..\n", __s1, a3);
      result = __error();
      *result = v21;
      if ((v5[2] & 2) == 0)
      {
        goto LABEL_47;
      }
    }

    v15 = *__error();
    fwrite(";;\tdebug\n", 9uLL, 1uLL, *v7);
    goto LABEL_44;
  }

  result = strncmp(v10, "no_tld_query", 0xCuLL);
  if (!result || (result = strncmp(v10, "no-tld-query", 0xCuLL), !result))
  {
    v12 = *(v5 + 1) | 0x100000;
    goto LABEL_46;
  }

  result = strncmp(v10, "inet6", 5uLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 0x2000;
    goto LABEL_46;
  }

  result = strncmp(v10, "insecure1", 9uLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 0x400;
    goto LABEL_46;
  }

  result = strncmp(v10, "insecure2", 9uLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 0x800;
    goto LABEL_46;
  }

  result = strncmp(v10, "rotate", 6uLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 0x4000;
    goto LABEL_46;
  }

  result = strncmp(v10, "usevc", 5uLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 8;
    goto LABEL_46;
  }

  result = strncmp(v10, "no-check-names", 0xEuLL);
  if (!result)
  {
    v12 = *(v5 + 1) | 0x8000;
    goto LABEL_46;
  }

  result = strncmp(v10, "reload-period:", 0xEuLL);
  if (result)
  {
    result = strncmp(v10, "edns0", 5uLL);
    if (result)
    {
      result = strncmp(v10, "dname", 5uLL);
      if (result)
      {
        result = strncmp(v10, "nibble:", 7uLL);
        if (result)
        {
          result = strncmp(v10, "nibble2:", 8uLL);
          if (result)
          {
            result = strncmp(v10, "v6revmode:", 0xAuLL);
            if (result)
            {
              goto LABEL_47;
            }

            v10 += 10;
            result = strncmp(v10, "single", 6uLL);
            if (result)
            {
              result = strncmp(v10, "both", 4uLL);
              if (result)
              {
                goto LABEL_47;
              }

              v12 = *(v5 + 1) & 0x7FFFFFFFLL;
            }

            else
            {
              v12 = *(v5 + 1) | 0x80000000;
            }

            goto LABEL_46;
          }

          if (!v6)
          {
            goto LABEL_47;
          }

          v10 += 8;
          v25 = strcspn(v10, " \t");
          if (v25 >= 0x3F)
          {
            v26 = 63;
          }

          else
          {
            v26 = v25 & 0x3F;
          }

          v27 = v26;
          v24 = v6 + 872;
        }

        else
        {
          if (!v6)
          {
            goto LABEL_47;
          }

          v10 += 7;
          v22 = strcspn(v10, " \t");
          if (v22 >= 0x3F)
          {
            v23 = 63;
          }

          else
          {
            v23 = v22 & 0x3F;
          }

          v27 = v23;
          v24 = v6 + 744;
        }

        result = __strncpy_chk();
        *(v24 + v27) = 0;
        goto LABEL_47;
      }

      v12 = *(v5 + 1) | 0x10000000;
    }

    else
    {
      v12 = *(v5 + 1) | 0x40000000;
    }

LABEL_46:
    *(v5 + 1) = v12;
    goto LABEL_47;
  }

  if (v6)
  {
    result = atoi(v10 + 14);
    *(v6 + 960) = result;
  }

LABEL_47:
  while (1)
  {
    v9 = *v10;
    if (!*v10)
    {
      return result;
    }

    if (v9 == 9 || v9 == 32)
    {
      goto LABEL_5;
    }

    ++v10;
  }
}

int res_9_nmkquery(res_9_state a1, int a2, const char *a3, int a4, int a5, const u_char *a6, int a7, const u_char *a8, u_char *a9, int a10)
{
  v11 = a6;
  v45[0] = *MEMORY[0x29EDCA608];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if ((a1->options & 2) != 0)
  {
    v16 = *__error();
    v17 = *MEMORY[0x29EDCA620];
    v18 = _res_opcodes[a2];
    v19 = a3;
    v20 = a4;
    v21 = res_9_p_class(a4);
    v22 = res_9_p_type(a5);
    v32 = v21;
    a4 = v20;
    a3 = v19;
    fprintf(v17, ";; res_nmkquery(%s, %s, %s, %s)\n", v18, v19, v32, v22);
    *__error() = v16;
    v11 = a6;
  }

  result = -1;
  if (a9 && a10 >= 12)
  {
    *(a9 + 2) = 0;
    *a9 = 0;
    a1->id = res_9_nrandomid();
    v24 = *a9 & 0xFFFFFFFFFF870000 | res_9_randomid() | ((a2 & 0xF) << 19);
    *a9 = v24;
    *a9 = v24 & 0xFFFFFFFFF0FEFFFFLL | (((a1->options >> 6) & 1) << 16);
    v35[0] = a9;
    v35[1] = 0;
    if (a2 != 4)
    {
      if (a2 == 1)
      {
        if (a10 - 12 >= a7 + 11)
        {
          a9[12] = 0;
          res_9_ns_put16(a5, a9 + 13);
          res_9_ns_put16(a4, a9 + 15);
          res_9_ns_put32(0, a9 + 17);
          res_9_ns_put16(a7, a9 + 21);
          LODWORD(v27) = a9 + 23;
          if (a7)
          {
            memcpy(a9 + 23, v11, a7);
            LODWORD(v27) = v27 + a7;
          }

          *(a9 + 3) = 256;
          goto LABEL_20;
        }
      }

      else if (!a2)
      {
        goto LABEL_8;
      }

LABEL_16:
      result = -1;
      goto LABEL_21;
    }

LABEL_8:
    if (a10 >= 0x10)
    {
      v25 = res_9_dn_comp(a3, a9 + 12, a10 - 16, v35, v45);
      if ((v25 & 0x80000000) == 0)
      {
        v26 = &a9[v25 + 12];
        res_9_ns_put16(a5, v26);
        res_9_ns_put16(a4, v26 + 2);
        v27 = v26 + 4;
        *(a9 + 2) = 256;
        if (!a2 || !v11)
        {
          goto LABEL_20;
        }

        v28 = &a9[a10] - v27;
        if (v28 >= 10)
        {
          v29 = res_9_dn_comp(v11, v26 + 4, v28 - 10, v35, v45);
          if ((v29 & 0x80000000) == 0)
          {
            v30 = &v27[v29];
            res_9_ns_put16(0xAu, v30);
            res_9_ns_put16(a4, v30 + 2);
            res_9_ns_put32(0, v30 + 4);
            res_9_ns_put16(0, v30 + 8);
            LODWORD(v27) = v30 + 10;
            *(a9 + 5) = 256;
LABEL_20:
            result = v27 - a9;
            goto LABEL_21;
          }
        }
      }
    }

    goto LABEL_16;
  }

LABEL_21:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_nopt(res_9_state a1, int a2, u_char *a3, int a4, int a5)
{
  if ((a1->options & 2) != 0)
  {
    v10 = *__error();
    fwrite(";; res_nopt()\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v10;
  }

  if (a4 - a2 < 11)
  {
    return -1;
  }

  v12 = &a3[a2];
  *v12 = 0;
  res_9_ns_put16(0x29u, v12 + 1);
  if (a5 >= 0xFFFF)
  {
    v13 = -1;
  }

  else
  {
    v13 = a5;
  }

  res_9_ns_put16(v13, v12 + 3);
  v14 = 0;
  *(v12 + 5) = 0;
  options = a1->options;
  if ((options & 0x200000) != 0)
  {
    if ((options & 2) != 0)
    {
      v16 = *__error();
      fwrite(";; res_opt()... ENDS0 DNSSEC\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA620]);
      *__error() = v16;
    }

    v14 = 0x8000;
  }

  res_9_ns_put16(v14, v12 + 7);
  res_9_ns_put16(0, v12 + 9);
  *(a3 + 5) = bswap32((bswap32(*(a3 + 5)) >> 16) + 1) >> 16;
  return v12 - a3 + 11;
}

uint64_t res_9_nopt_rdata(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, u_int a6, u_int a7, const void *a8)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    v15 = *__error();
    fwrite(";; res_nopt_rdata()\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v15;
  }

  if (a4 - a2 < a7 + 4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 + 2 <= a5 && a3 + a4 > a5)
  {
    v17 = (a3 + a2);
    res_9_ns_put16(a6, v17);
    res_9_ns_put16(a7, v17 + 2);
    memcpy(v17 + 4, a8, a7);
    v18 = v17 + 4 + a7;
    res_9_ns_put16((v18 - a5), (a5 - 2));
    return v18 - a3;
  }

  return result;
}

uint64_t res_query_mDNSResponder(__res_9_state *a1, char *a2, int a3, int a4, u_char *a5, int a6, uint64_t a7, _DWORD *a8)
{
  v12 = a3;
  *a5 &= 0xFFFFFFFFF0FFFFFFLL;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  LODWORD(v53) = a1->options;
  context = a5;
  v51 = a6;
  result = res_9_nmkquery(a1, 0, a2, a3, a4, 0, 0, 0, a5, a6);
  v50 = result;
  if (!result)
  {
    return result;
  }

  sdRef = 0;
  v48 = 0;
  memset(&changelist, 0, sizeof(changelist));
  memset(&v46, 0, sizeof(v46));
  *a5 &= ~0x800000uLL;
  v16 = strdup(a2);
  if (!v16)
  {
    *MEMORY[0x29EDCA678] = 3;
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  if ((a1->options & 2) != 0)
  {
    v18 = *__error();
    fwrite(";; res_query_mDNSResponder\n", 0x1BuLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v18;
  }

  v19 = DNSServiceQueryRecord(&sdRef, 0x1000u, 0, v17, a4, v12, res_query_callback, &context);
  free(v17);
  if (v19)
  {
    return 0;
  }

  v20 = kqueue();
  if (v20 == -1)
  {
    return 0;
  }

  v21 = v20;
  v44.tv_sec = 0;
  *&v44.tv_usec = 0;
  gettimeofday(&v44, 0);
  retrans = a1->retrans;
  timeout.tv_sec = retrans;
  timeout.tv_nsec = 0;
  tv_sec = v44.tv_sec;
  tv_usec = v44.tv_usec;
  changelist.ident = DNSServiceRefSockFD(sdRef);
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v21, &changelist, 1, 0, 0, 0))
  {
    close(v21);
    return 0;
  }

  if (interrupt_pipe_enabled)
  {
    v25 = pthread_getspecific(interrupt_pipe_key);
    if (v25)
    {
      if ((*v25 & 0x80000000) == 0)
      {
        v46.ident = *v25;
        *&v46.filter = 0x1FFFFLL;
        v46.data = 0;
        v46.udata = a2;
        kevent(v21, &v46, 1, 0, 0, 0);
      }
    }
  }

  v39 = tv_sec;
  v40 = retrans;
  v42 = 0;
  v48 = -1;
  v26 = pthread_self();
  asprintf(&v42, "self.thread.%lu", v26);
  if (v42)
  {
    notify_register_plain();
    free(v42);
  }

  memset(&eventlist, 0, sizeof(eventlist));
  v27 = 1;
  v28 = kevent(v21, 0, 0, &eventlist, 1, &timeout);
  if (!res_check_if_exit_requested(a1, v48))
  {
    v31 = 1000 * tv_usec;
    v41 = v39 + v40;
    while (v28 < 0)
    {
      if (*__error() != 4)
      {
        v27 = 0;
        v37 = 3;
LABEL_71:
        *MEMORY[0x29EDCA678] = v37;
        goto LABEL_19;
      }

LABEL_61:
      gettimeofday(&v44, 0);
      v36 = 1000 * v44.tv_usec;
      timeout.tv_sec = v41 - v44.tv_sec;
      if (v31 >= v36)
      {
        timeout.tv_nsec = v31 - v36;
      }

      else
      {
        timeout.tv_sec = v41 - v44.tv_sec - 1;
        timeout.tv_nsec = v31 + 1000000000 - v36;
      }

      memset(&eventlist, 0, sizeof(eventlist));
      v27 = 1;
      v28 = kevent(v21, 0, 0, &eventlist, 1, &timeout);
      if (res_check_if_exit_requested(a1, v48))
      {
        goto LABEL_19;
      }
    }

    if (!v28 && !*(a5 + 3))
    {
      v27 = 0;
      v37 = 2;
      goto LABEL_71;
    }

    if (eventlist.udata == a2)
    {
      if ((a1->options & 2) != 0)
      {
        v38 = *__error();
        v27 = 1;
        fwrite(";; cancelled\n", 0xDuLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v38;
      }

      else
      {
        v27 = 1;
      }

      goto LABEL_19;
    }

    v32 = DNSServiceProcessResult(sdRef);
    v33 = v54;
    v34 = (v32 | v54) == 0;
    if (!(v32 | v54))
    {
LABEL_51:
      if (!*(a5 + 3) || (v53 & 0x100000000) != 0)
      {
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (a4 == 5 || v52 != 5)
        {
          LOBYTE(v34) = 0;
        }

        if (!v34)
        {
LABEL_68:
          v27 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_61;
    }

    if (v32)
    {
      v33 = v32;
    }

    if (v33 > -65538)
    {
      if (!v33)
      {
        goto LABEL_50;
      }

      if (v33 == -65537)
      {
        v33 = 3;
        goto LABEL_50;
      }
    }

    else
    {
      if (v33 == -65554)
      {
        v33 = 4;
        goto LABEL_50;
      }

      if (v33 == -65538)
      {
        v33 = 1;
LABEL_50:
        *MEMORY[0x29EDCA678] = v33;
        goto LABEL_51;
      }
    }

    v33 = -1;
    goto LABEL_50;
  }

LABEL_19:
  if (v48 != -1)
  {
    notify_cancel(v48);
  }

  DNSServiceRefDeallocate(sdRef);
  close(v21);
  if (((*(a5 + 3) != 0) & ~v27) == 0)
  {
    if (v27)
    {
      v29 = 4;
    }

    else
    {
      v29 = 35;
    }

    *__error() = v29;
    v50 = -1;
  }

  if (a7 && a8)
  {
    v30 = HIDWORD(v52);
    if (HIDWORD(v52))
    {
      *a7 = 7708;
      *(a7 + 23) = 1;
      *(a7 + 24) = v30;
      *a8 = 28;
    }
  }

  return v50;
}

void res_query_callback(int a1, int a2, int a3, int a4, char *a5, int a6, int a7, unsigned int a8, unsigned __int8 *a9, u_int32_t a10, uint64_t *a11)
{
  v28[1] = *MEMORY[0x29EDCA608];
  *(a11 + 9) = a2;
  *(a11 + 10) = a4;
  if (a4)
  {
    if ((a11[4] & 2) != 0)
    {
      v14 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_query_mDNSResponder callback [%s %hu %hu]: error %u\n");
LABEL_13:
      *__error() = v14;
    }
  }

  else
  {
    v15 = a11[1];
    v16 = a11[2] - v15;
    if (v16 > 0xB)
    {
      v19 = *a11;
      v27 = (*a11 + 12);
      v28[0] = 0;
      v20 = v19 + v15;
      v21 = res_9_dn_comp(a5, (v19 + v15), v16, &v27, v28);
      if (v21 < 0)
      {
        if ((a11[4] & 2) != 0)
        {
          v14 = *__error();
          fprintf(*MEMORY[0x29EDCA620], ";; res_query_mDNSResponder callback [%s %hu %hu]: name mismatch\n");
          goto LABEL_13;
        }
      }

      else
      {
        v22 = v21;
        v23 = *(a11 + 8);
        if (v16 >= a8 + v21 + 10)
        {
          if ((v23 & 2) != 0)
          {
            v26 = *__error();
            fprintf(*MEMORY[0x29EDCA620], ";; res_query_mDNSResponder callback for %s %hu %hu\n", a5, a6, a7);
            *__error() = v26;
          }

          v25 = (v20 + v22);
          res_9_putshort(a6, v25);
          res_9_putshort(a7, v25 + 2);
          res_9_putlong(a10, v25 + 4);
          res_9_putshort(a8, v25 + 8);
          memcpy(v25 + 10, a9, a8);
          *(*a11 + 6) = bswap32((bswap32(*(*a11 + 6)) >> 16) + 1) >> 16;
          a11[1] = &v25[a8 + 10 - *a11];
          *(a11 + 12) = a6;
          if (a6 == 28 && !*(a11 + 7) && *a9 == 254 && (a9[1] & 0xC0) == 0x80)
          {
            *(a11 + 7) = a3;
          }
        }

        else if ((v23 & 2) != 0)
        {
          v14 = *__error();
          fprintf(*MEMORY[0x29EDCA620], ";; res_query_mDNSResponder callback [%s %hu %hu]: insufficient buffer space for reply\n");
          goto LABEL_13;
        }
      }
    }

    else if ((a11[4] & 2) != 0)
    {
      v14 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_query_mDNSResponder callback [%s %hu %hu]: malformed reply\n");
      goto LABEL_13;
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t res_nquery_soa_min(__res_9_state *res, const char *a2, int a3, int a4, const u_char *a5, int a6, _DWORD *a7, socklen_t *a8, int *a9)
{
  v51 = *MEMORY[0x29EDCA608];
  if (a9)
  {
    *a9 = -1;
  }

  flags = res->_flags;
  while (1)
  {
    _res_9_h_errno_set(res, 0);
    *a5 &= 0xFFFFFFFFF0FFFFFFLL;
    if ((res->options & 2) != 0)
    {
      v18 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_query(%s, %d, %d)\n", a2, a3, a4);
      *__error() = v18;
    }

    v19 = res_9_nmkquery(res, 0, a2, a3, a4, 0, 0, 0, v50, 1024);
    if (v19 >= 1)
    {
      if ((res->_flags & 4) != 0 || (res->options & 0x40200000) == 0)
      {
        goto LABEL_11;
      }

      v19 = res_9_nopt(res, v19, v50, 1024, a6);
    }

    if ((v19 & 0x80000000) != 0)
    {
      if ((res->options & 2) != 0)
      {
        v27 = *__error();
        fwrite(";; res_query: mkquery failed\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v27;
      }

      v24 = 3;
      goto LABEL_44;
    }

LABEL_11:
    v19 = res_nsend_2(res, v50, v19, a5, a6, a7, a8);
    if ((v19 & 0x80000000) == 0)
    {
      break;
    }

    options = res->options;
    if ((options & 0x40200000) == 0 || (v21 = res->_flags, ((v21 ^ flags) & 4) == 0))
    {
      if ((options & 2) != 0)
      {
        v23 = *__error();
        fwrite(";; res_query: send error\n", 0x19uLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v23;
      }

      v24 = 2;
LABEL_44:
      _res_9_h_errno_set(res, v24);
      goto LABEL_45;
    }

    res->_flags = v21 | 4;
    if ((options & 2) != 0)
    {
      v22 = *__error();
      fwrite(";; res_nquery: retry without EDNS0\n", 0x23uLL, 1uLL, *MEMORY[0x29EDCA620]);
      *__error() = v22;
    }
  }

  v25 = BYTE3(*a5) & 0xF;
  if (v25 == 3)
  {
    v26 = a9;
    if (a9)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v26 = a9;
    if (v25 || !a9 || HIWORD(*a5))
    {
      goto LABEL_33;
    }

LABEL_28:
    v28 = &a5[a6];
    if (a6 >= 2)
    {
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      if (a6 >= 4)
      {
        v36 = 0;
        v37 = (a5 + 4);
        while (1)
        {
          v38 = (v37 + 1);
          if (v37 + 1 > v28)
          {
            break;
          }

          *(&v48 + v36++ + 2) = bswap32(*v37++) >> 16;
          if (v36 == 4)
          {
            v39 = WORD4(v48);
            if (WORD4(v48))
            {
              v40 = 0;
              v41 = 1;
              do
              {
                v42 = v41;
                if (*(&v48 + v40 + 2))
                {
                  v43 = res_9_ns_skiprr(v38, v28, v40, *(&v48 + v40 + 2));
                  if ((v43 & 0x80000000) != 0)
                  {
                    v29 = -1;
                    v26 = a9;
                    goto LABEL_31;
                  }

                  *(v49 + v40) = v38;
                  v38 += v43;
                }

                else
                {
                  *(v49 + v40) = 0;
                }

                v41 = 0;
                v40 = 1;
              }

              while ((v42 & 1) != 0);
              v44 = 0;
              v29 = -1;
              v26 = a9;
              while (1)
              {
                v45 = res_9_ns_skiprr(v38, v28, ns_s_ns, 1);
                if ((v45 & 0x80000000) != 0)
                {
                  break;
                }

                v38 += v45;
                v46 = bswap32(*(v38 - 1));
                if (v46 >= v29)
                {
                  v47 = v29;
                }

                else
                {
                  v47 = v46;
                }

                if (v44)
                {
                  v29 = v47;
                }

                else
                {
                  v29 = v46;
                }

                if (v39 == ++v44)
                {
                  goto LABEL_31;
                }
              }
            }

            break;
          }
        }
      }
    }

    v29 = -1;
LABEL_31:
    *v26 = v29;
    if ((res->options & 2) != 0)
    {
      v30 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_nquery: SOA minimum TTL = %d\n", *v26);
      *__error() = v30;
    }
  }

LABEL_33:
  v31 = *a5;
  if ((*a5 & 0xF000000) != 0)
  {
    v32 = 1;
  }

  else
  {
    v32 = HIWORD(*a5) == 0;
    *a5;
  }

  if (v32)
  {
    if ((res->options & 2) != 0)
    {
      v33 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; rcode = %d, ancount=%d\n", BYTE3(*a5) & 0xF, __rev16(HIWORD(*a5)));
      *__error() = v33;
      v31 = *a5;
    }

    if ((v31 & 0xC000000) != 0)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4 - (BYTE3(v31) & 0xF);
    }

    v19 = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

LABEL_45:
  v34 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t res_nquerydomain_2(uint64_t a1, char *__s, const char *a3, int a4, int a5, const u_char *a6, int a7, _DWORD *a8, socklen_t *a9)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 8) & 2) != 0)
  {
    v17 = *__error();
    v18 = "<Nil>";
    if (a3)
    {
      v18 = a3;
    }

    fprintf(*MEMORY[0x29EDCA620], ";; res_nquerydomain(%s, %s, %d, %d)\n", __s, v18, a4, a5);
    *__error() = v17;
  }

  v19 = strlen(__s);
  if (a3)
  {
    if (v19 + strlen(a3) - 1024 > 0xFFFFFFFFFFFFFBFELL)
    {
      v22 = __s;
      __s = v23;
      __sprintf_chk(v23, 0, 0x401uLL, "%s.%s", v22, a3);
LABEL_12:
      result = res_nquery_soa_min(a1, __s, a4, a5, a6, a7, a8, a9, 0);
      goto LABEL_13;
    }
  }

  else if (v19 < 0x401)
  {
    if (__s[v19 - 1] == 46)
    {
      __strlcpy_chk();
      __s = v23;
    }

    goto LABEL_12;
  }

  _res_9_h_errno_set(a1, 3);
  result = 0xFFFFFFFFLL;
LABEL_13:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t res_nsearch_2(uint64_t a1, char *a2, int a3, int a4, u_char *a5, int a6, _DWORD *a7, socklen_t *a8)
{
  v42 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  _res_9_h_errno_set(a1, 1);
  v15 = *a2;
  if (*a2)
  {
    v16 = 0;
    v17 = a2;
    do
    {
      if (v15 == 46)
      {
        ++v16;
      }

      v18 = *++v17;
      v15 = v18;
    }

    while (v18);
    if (v17 > a2)
    {
      v19 = *(v17 - 1) == 46;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      v20 = 0;
      goto LABEL_15;
    }

    v19 = 0;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_12:
  v21 = res_9_hostalias_2(a1, a2, v41, 0x401uLL);
  if (v21)
  {
    result = res_9_nquery(a1, v21, a3, a4, a5, a6);
    goto LABEL_64;
  }

  v16 = 0;
  v20 = 1;
LABEL_15:
  v23 = v16 >= (*(a1 + 392) & 0xFu) || v19;
  if (v23 != 1)
  {
    v25 = -1;
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_28:
    if ((*(a1 + 8) & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_29:
    v37 = v25;
    LOBYTE(v38) = v23;
LABEL_51:
    v27 = 0;
    v32 = 0;
    v28 = 0;
LABEL_52:
    v33 = v38;
    if (v27)
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
LABEL_55:
      result = res_nquerydomain_2(a1, a2, 0, a3, a4, a5, a6, a7, a8);
      if (result > 0)
      {
        goto LABEL_64;
      }
    }

LABEL_56:
    v25 = v37;
    if (v37 == -1)
    {
      if (v28)
      {
        v34 = a1;
        v25 = 4;
      }

      else
      {
        if (!v32)
        {
LABEL_63:
          result = 0xFFFFFFFFLL;
          goto LABEL_64;
        }

LABEL_61:
        v34 = a1;
        v25 = 2;
      }

LABEL_62:
      _res_9_h_errno_set(v34, v25);
      goto LABEL_63;
    }

LABEL_57:
    v34 = a1;
    goto LABEL_62;
  }

  result = res_nquerydomain_2(a1, a2, 0, a3, a4, a5, a6, a7, a8);
  v24 = result > 0 || v19;
  if (v24)
  {
    goto LABEL_64;
  }

  v25 = *MEMORY[0x29EDCA678];
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v19)
  {
    if (v25 == -1)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if ((*(a1 + 9) & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v37 = v25;
  v38 = v23;
  v26 = *(a1 + 72);
  if (!v26)
  {
    goto LABEL_51;
  }

  v36 = v20;
  v27 = 0;
  v39 = 0;
  v28 = 0;
  v29 = 80;
  while (1)
  {
    if (!*v26 || *v26 == 46 && !*(v26 + 1))
    {
      ++v27;
    }

    result = res_nquerydomain_2(a1, a2, v26, a3, a4, a5, a6, a7, a8);
    if (result > 0)
    {
      break;
    }

    if (*__error() == 61)
    {
      goto LABEL_61;
    }

    v30 = *(a1 + 496);
    if (v30 == 2)
    {
      v31 = v39;
      if ((*a5 & 0xF000000) == 0x5000000)
      {
        v31 = v39 + 1;
      }

      v39 = v31;
    }

    else if (v30 == 4)
    {
      ++v28;
    }

    v26 = *(a1 + v29);
    v29 += 8;
    if (!v26)
    {
      if (!v36)
      {
        v32 = v39;
        goto LABEL_52;
      }

      v32 = v39;
      if (((v38 | ((*(a1 + 10) & 0x10) >> 4)) & 1) == 0 && !v27)
      {
        goto LABEL_55;
      }

      goto LABEL_56;
    }
  }

LABEL_64:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

const char *__cdecl res_9_hostalias_2(const res_9_state a1, const char *a2, char *a3, size_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((a1->options & 0x1000) != 0 || issetugid() || (v10 = getenv("HOSTALIASES")) == 0 || (v11 = fopen(v10, "re")) == 0)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v12 = v11;
  setbuf(v11, 0);
  v25[1022] = 0;
  v13 = MEMORY[0x29EDCA600];
  while (2)
  {
    v7 = 0;
    if (!fgets(&v24, 1024, v12))
    {
      goto LABEL_32;
    }

    v14 = v24;
    if (!v24)
    {
      goto LABEL_32;
    }

    v15 = v25;
    while (1)
    {
      if ((v14 & 0x80) == 0)
      {
        if ((*(v13 + 4 * v14 + 60) & 0x4000) != 0)
        {
          break;
        }

        goto LABEL_15;
      }

      if (__maskrune(v14, 0x4000uLL))
      {
        break;
      }

LABEL_15:
      v16 = *v15++;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    if (!*(v15 - 1))
    {
      goto LABEL_31;
    }

    *(v15 - 1) = 0;
    if (res_9_ns_samename(&v24, a2) != 1)
    {
      continue;
    }

    break;
  }

  do
  {
    v17 = *v15;
    if (v17 < 0)
    {
      v18 = __maskrune(*v15, 0x4000uLL);
    }

    else
    {
      v18 = *(v13 + 4 * v17 + 60) & 0x4000;
    }

    ++v15;
  }

  while (v18);
  if (!v17)
  {
LABEL_31:
    v7 = 0;
    goto LABEL_32;
  }

  v19 = v15 - 1;
  v20 = *v15;
  if (*v15)
  {
    do
    {
      if ((v20 & 0x80) != 0)
      {
        v21 = __maskrune(v20, 0x4000uLL);
      }

      else
      {
        v21 = *(v13 + 4 * v20 + 60) & 0x4000;
      }

      if (v21)
      {
        break;
      }

      v22 = *++v15;
      v20 = v22;
    }

    while (v22);
  }

  *v15 = 0;
  v23 = a4 - 1;
  strncpy(a3, v19, v23);
  a3[v23] = 0;
  v7 = a3;
LABEL_32:
  fclose(v12);
LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

int res_9_nquery(res_9_state a1, const char *a2, int a3, int a4, u_char *a5, int a6)
{
  v30 = *MEMORY[0x29EDCA608];
  flags = a1->_flags;
  while (1)
  {
    *a5 &= 0xFFFFFFFFF0FFFFFFLL;
    if ((a1->options & 2) != 0)
    {
      v13 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; res_query(%s, %d, %d)\n", a2, a3, a4);
      *__error() = v13;
    }

    v14 = res_9_nmkquery(a1, 0, a2, a3, a4, 0, 0, 0, v29, 1024);
    if (v14 >= 1)
    {
      if ((a1->_flags & 4) != 0 || (a1->options & 0x40A00000) == 0)
      {
        goto LABEL_11;
      }

      v15 = res_9_nopt(a1, v14, v29, 1024, a6);
      v14 = v15;
      if (v15 >= 1)
      {
        if ((a1->options & 0x800000) == 0)
        {
          goto LABEL_11;
        }

        v14 = res_9_nopt_rdata(a1, v15, v29, 1024, &v29[v15], 3u, 0, 0);
      }
    }

    if (v14 < 0)
    {
      if ((a1->options & 2) != 0)
      {
        v26 = *__error();
        fwrite(";; res_query: mkquery failed\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v26;
      }

      v20 = 3;
      goto LABEL_30;
    }

LABEL_11:
    v14 = res_9_nsend(a1, v29, v14, a5, a6);
    if ((v14 & 0x80000000) == 0)
    {
      break;
    }

    options = a1->options;
    if ((options & 0x40200000) == 0 || (v17 = a1->_flags, ((v17 ^ flags) & 4) == 0))
    {
      if ((options & 2) != 0)
      {
        v19 = *__error();
        fwrite(";; res_query: send error\n", 0x19uLL, 1uLL, *MEMORY[0x29EDCA620]);
        *__error() = v19;
      }

      v20 = 2;
LABEL_30:
      _res_9_h_errno_set(a1, v20);
      goto LABEL_31;
    }

    a1->_flags = v17 | 4;
    if ((options & 2) != 0)
    {
      v18 = *__error();
      fwrite(";; res_nquery: retry without EDNS0\n", 0x23uLL, 1uLL, *MEMORY[0x29EDCA620]);
      *__error() = v18;
    }
  }

  v21 = *a5;
  if ((*a5 & 0xF000000) != 0 || !HIWORD(v21))
  {
    if ((a1->options & 2) != 0)
    {
      v22 = *__error();
      v23 = *MEMORY[0x29EDCA620];
      v24 = res_9_p_rcode(a5[3] & 0xF);
      v25 = bswap32(*(a5 + 2));
      fprintf(v23, ";; rcode = (%s), counts = an:%d ns:%d ar:%d\n", v24, bswap32(*(a5 + 3)) >> 16, HIWORD(v25), v25);
      *__error() = v22;
      v21 = *a5;
    }

    if ((v21 & 0xC000000) != 0)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4 - (BYTE3(v21) & 0xF);
    }

    v14 = -1;
    goto LABEL_30;
  }

LABEL_31:
  v27 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t __res_nsearch_list_2(uint64_t a1, char *a2, int a3, int a4, u_char *a5, int a6, _DWORD *a7, socklen_t *a8, int a9, const char **a10)
{
  v43 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  _res_9_h_errno_set(a1, 1);
  v15 = *a2;
  if (*a2)
  {
    v16 = 0;
    v17 = a2;
    do
    {
      if (v15 == 46)
      {
        ++v16;
      }

      v18 = *++v17;
      v15 = v18;
    }

    while (v18);
    if (v17 > a2)
    {
      v19 = *(v17 - 1) == 46;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      v20 = 0;
      goto LABEL_15;
    }

    v19 = 0;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_12:
  v21 = res_9_hostalias_2(a1, a2, v42, 0x401uLL);
  if (v21)
  {
    result = res_9_nquery(a1, v21, a3, a4, a5, a6);
    goto LABEL_65;
  }

  v16 = 0;
  v20 = 1;
LABEL_15:
  v23 = v16 >= (*(a1 + 392) & 0xFu) || v19;
  if (v23 == 1)
  {
    result = res_9_nquerydomain(a1, a2, 0, a3, a4, a5, a6);
    v24 = result > 0 || v19;
    if (v24)
    {
      goto LABEL_65;
    }

    v25 = *MEMORY[0x29EDCA678];
  }

  else
  {
    v25 = -1;
  }

  v26 = a9;
  if (v20)
  {
    v37 = v25;
    v38 = v23;
    v27 = 0;
    if ((*(a1 + 8) & 0x80) != 0)
    {
      v36 = v20;
      v28 = 0;
      v29 = 0;
      if (a9 <= 0)
      {
LABEL_53:
        v33 = v38;
        if (v27)
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
LABEL_56:
          result = res_nquerydomain_2(a1, a2, 0, a3, a4, a5, a6, a7, a8);
          if (result > 0)
          {
            goto LABEL_65;
          }
        }

LABEL_57:
        v25 = v37;
        if (v37 == -1)
        {
          if (v29)
          {
            v34 = a1;
            v25 = 4;
          }

          else
          {
            if (!v28)
            {
LABEL_64:
              result = 0xFFFFFFFFLL;
              goto LABEL_65;
            }

LABEL_62:
            v34 = a1;
            v25 = 2;
          }

LABEL_63:
          _res_9_h_errno_set(v34, v25);
          goto LABEL_64;
        }

LABEL_58:
        v34 = a1;
        goto LABEL_63;
      }

      goto LABEL_34;
    }

LABEL_52:
    v28 = 0;
    v29 = 0;
    goto LABEL_53;
  }

  if (v19)
  {
    if (v25 == -1)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  v37 = v25;
  v38 = v23;
  v27 = 0;
  if ((*(a1 + 9) & 2) == 0)
  {
    goto LABEL_52;
  }

  v36 = 0;
  v28 = 0;
  v29 = 0;
  if (a9 < 1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    v31 = *a10;
    if (!**a10 || **a10 == 46 && !v31[1])
    {
      ++v27;
    }

    result = res_nquerydomain_2(a1, a2, v31, a3, a4, a5, a6, a7, a8);
    if (result > 0)
    {
      break;
    }

    if (*__error() == 61)
    {
      goto LABEL_62;
    }

    v32 = *(a1 + 496);
    if (v32 == 2)
    {
      if ((*a5 & 0xF000000) == 0x5000000)
      {
        ++v28;
      }
    }

    else if (v32 == 4)
    {
      ++v29;
    }

    ++a10;
    if (!--v26)
    {
      if (!v36)
      {
        goto LABEL_53;
      }

      if (((v38 | ((*(a1 + 10) & 0x10) >> 4)) & 1) == 0 && !v27)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }
  }

LABEL_65:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_nquerydomain(res_9_state a1, const char *a2, const char *a3, int a4, int a5, u_char *a6, int a7)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((a1->options & 2) != 0)
  {
    v14 = *__error();
    v15 = "<Nil>";
    if (a3)
    {
      v15 = a3;
    }

    fprintf(*MEMORY[0x29EDCA620], ";; res_nquerydomain(%s, %s, %d, %d)\n", a2, v15, a4, a5);
    *__error() = v14;
  }

  v16 = strlen(a2);
  if (a3)
  {
    if (v16 + strlen(a3) - 1024 > 0xFFFFFFFFFFFFFBFELL)
    {
      v20 = a2;
      a2 = v21;
      __sprintf_chk(v21, 0, 0x401uLL, "%s.%s", v20, a3);
LABEL_12:
      result = res_9_nquery(a1, a2, a4, a5, a6, a7);
      goto LABEL_13;
    }
  }

  else if (v16 < 0x401)
  {
    v18 = v16 - 1;
    if (a2[v16 - 1] == 46)
    {
      __strncpy_chk();
      v21[v18] = 0;
      a2 = v21;
    }

    goto LABEL_12;
  }

  _res_9_h_errno_set(a1, 3);
  result = -1;
LABEL_13:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_nsearch(res_9_state a1, const char *a2, int a3, int a4, u_char *a5, int a6)
{
  v44 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  _res_9_h_errno_set(a1, 1);
  v12 = *a2;
  if (*a2)
  {
    v13 = 0;
    v14 = a2;
    do
    {
      if (v12 == 46)
      {
        ++v13;
      }

      v15 = *++v14;
      v12 = v15;
    }

    while (v15);
    if (v14 > a2)
    {
      v16 = *(v14 - 1) == 46;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_11:
      v17 = 0;
      goto LABEL_15;
    }

    v16 = 0;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_12:
  v18 = res_9_hostalias_2(a1, a2, v43, 0x401uLL);
  if (v18)
  {
    result = res_9_nquery(a1, v18, a3, a4, a5, a6);
    goto LABEL_82;
  }

  v13 = 0;
  v17 = 1;
LABEL_15:
  v20 = v13 >= (*(a1 + 392) & 0xFu) || v16;
  if (v20 != 1)
  {
    res_h_errno = -1;
    goto LABEL_30;
  }

  result = res_9_nquerydomain(a1, a2, 0, a3, a4, a5, a6);
  v21 = result > 0 || v16;
  if ((v21 & 1) == 0)
  {
    if (*__error() == 61)
    {
      goto LABEL_78;
    }

    res_h_errno = a1->res_h_errno;
    if (res_h_errno != 1 && res_h_errno != 4)
    {
      if (res_h_errno != 2 || (*a5 & 0xF000000) != 0x2000000)
      {
        goto LABEL_81;
      }

      res_h_errno = 2;
    }

LABEL_30:
    v42 = v17;
    if (v17)
    {
      if ((a1->options & 0x80) != 0)
      {
LABEL_36:
        v40 = res_h_errno;
        v27 = a1->dnsrch[0];
        if (v27)
        {
          v28 = 0;
          v41 = 0;
          v29 = 80;
          while (1)
          {
            if (!*v27 || *v27 == 46 && !v27[1])
            {
              ++v28;
            }

            v23 = v28 != 0;
            v30 = v28 ? v20 : 0;
            if ((v30 & 1) == 0)
            {
              break;
            }

            v31 = 0;
LABEL_58:
            v27 = *(&a1->retrans + v29);
            v29 += 8;
            if (v27)
            {
              v33 = v31 == 0;
            }

            else
            {
              v33 = 0;
            }

            if (!v33)
            {
              v25 = v41 == 0;
              v26 = HIDWORD(v41) == 0;
              v24 = 1;
              goto LABEL_64;
            }
          }

          result = res_9_nquerydomain(a1, a2, v27, a3, a4, a5, a6);
          if (result > 0)
          {
            goto LABEL_82;
          }

          if (*__error() == 61)
          {
            goto LABEL_78;
          }

          v32 = a1->res_h_errno;
          if (v32 != 1)
          {
            if (v32 != 2)
            {
              if (v32 == 4)
              {
                v31 = 0;
                LODWORD(v41) = v41 + 1;
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            ++HIDWORD(v41);
            if ((*a5 & 0xF000000) != 0x2000000)
            {
LABEL_55:
              v31 = 1;
LABEL_56:
              if ((a1->options & 0x200) == 0)
              {
                v31 = 1;
              }

              goto LABEL_58;
            }
          }

          v31 = 0;
          goto LABEL_56;
        }

        v23 = 0;
        v24 = 0;
        v25 = 1;
        v26 = 1;
LABEL_64:
        res_h_errno = v40;
LABEL_65:
        v34 = a1->res_h_errno;
        if (v34 != 1 && v34 != 4 && (v34 != 2 || (*a5 & 0xF000000) != 0x2000000))
        {
          goto LABEL_74;
        }

        if ((v42 & v24) == 1)
        {
          if ((v20 | v23 | ((BYTE2(a1->options) & 0x10) >> 4)))
          {
            goto LABEL_74;
          }
        }

        else if ((v20 | v23))
        {
LABEL_74:
          if (res_h_errno != -1)
          {
            v37 = a1;
            v38 = res_h_errno;
LABEL_80:
            _res_9_h_errno_set(v37, v38);
            goto LABEL_81;
          }

          if (!v25)
          {
            v37 = a1;
            v38 = 4;
            goto LABEL_80;
          }

          if (v26)
          {
LABEL_81:
            result = -1;
            goto LABEL_82;
          }

LABEL_78:
          v37 = a1;
          v38 = 2;
          goto LABEL_80;
        }

        v35 = a2;
        v36 = res_h_errno;
        result = res_9_nquerydomain(a1, v35, 0, a3, a4, a5, a6);
        res_h_errno = v36;
        if (result > 0)
        {
          goto LABEL_82;
        }

        goto LABEL_74;
      }
    }

    else if (!v16 && (a1->options & 0x200) != 0)
    {
      goto LABEL_36;
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
    v26 = 1;
    goto LABEL_65;
  }

LABEL_82:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t res_ourserver_p(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1);
  if (v2 == 30)
  {
    v11 = *(a1 + 536);
    if (v11)
    {
      v12 = *(a1 + 16);
      if (v12 >= 1)
      {
        for (i = a1 + 20; ; i += 16)
        {
          v14 = *(i + 1) ? i : v11;
          if (*(v14 + 1) == 30 && *(v14 + 2) == *(a2 + 2))
          {
            v15 = *(v14 + 24);
            if (!v15 || v15 == *(a2 + 24))
            {
              if (!*(v14 + 8) && !*(v14 + 12) && !*(v14 + 16) && !*(v14 + 20))
              {
                break;
              }

              v17 = *(v14 + 8);
              v16 = *(v14 + 16);
              if (v17 == *(a2 + 8) && v16 == *(a2 + 16))
              {
                break;
              }
            }
          }

          v11 += 128;
          if (!--v12)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 20;
  v6 = v3 << 7;
  while (1)
  {
    v7 = *(v5 + 1);
    v8 = v5;
    if (!*(v5 + 1))
    {
      v9 = *(a1 + 536);
      if (v9)
      {
        v8 = v9 + v4;
      }

      else
      {
        v8 = v5;
      }

      v7 = *(v8 + 1);
    }

    if (v7 == 2 && *(v8 + 2) == *(a2 + 2))
    {
      v10 = *(v8 + 4);
      if (!v10 || v10 == *(a2 + 4))
      {
        break;
      }
    }

    v5 += 16;
    v4 += 128;
    if (v6 == v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t get_nsaddr(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16 * a2;
  result = v3 + 20;
  if (!*(v3 + 21))
  {
    v5 = *(a1 + 536);
    if (v5)
    {
      return v5 + (a2 << 7);
    }
  }

  return result;
}

int res_9_nameinquery(const char *a1, int a2, int a3, const u_char *a4, const u_char *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(a4 + 2))
  {
    v10 = a4 + 12;
    v11 = __rev16(*(a4 + 2)) + 1;
    while (1)
    {
      v12 = res_9_dn_expand(a4, a5, v10, v19, 1026);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      v13 = &v10[v12];
      v10 = v13 + 4;
      if (v13 + 4 > a5)
      {
        break;
      }

      v14 = res_9_ns_get16(v13);
      v15 = res_9_ns_get16(v13 + 2);
      if (v14 == a2 && v15 == a3)
      {
        result = res_9_ns_samename(v19, a1);
        if (result == 1)
        {
          goto LABEL_14;
        }
      }

      if (--v11 <= 1)
      {
        goto LABEL_12;
      }
    }

    result = -1;
  }

  else
  {
LABEL_12:
    result = 0;
  }

LABEL_14:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_queriesmatch(const u_char *a1, const u_char *a2, const u_char *a3, const u_char *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a1 + 12;
  v5 = *a1;
  result = -1;
  if (v6 <= a2 && a3 + 12 <= a4)
  {
    v11 = *a3;
    if ((v5 & 0x780000) != 0x280000 || (v11 & 0x780000) != 0x280000)
    {
      if (WORD2(v5) != WORD2(v11))
      {
        result = 0;
        goto LABEL_15;
      }

      v12 = (bswap32(HIDWORD(v5)) >> 16) + 1;
      while (--v12 >= 1)
      {
        v13 = res_9_dn_expand(a1, a2, v6, v18, 1026);
        if ((v13 & 0x80000000) != 0 || (v14 = &v6[v13], v6 = v14 + 4, v14 + 4 > a2))
        {
          result = -1;
          goto LABEL_15;
        }

        v15 = res_9_ns_get16(v14);
        v16 = res_9_ns_get16(v14 + 2);
        result = res_9_nameinquery(v18, v15, v16, a3, a4);
        if (!result)
        {
          goto LABEL_15;
        }
      }
    }

    result = 1;
  }

LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t res_nsend_2(__res_9_state *a1, u_char *a2, int a3, const u_char *a4, unsigned int a5, _DWORD *a6, socklen_t *a7)
{
  v8 = a5;
  if (dns_res_send(a1, a2, a3, a4, &v8, a6, a7))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

ssize_t dns_res_send(res_9_state a1, u_char *a2, int a3, const u_char *a4, int *a5, _DWORD *a6, socklen_t *a7)
{
  v266 = *MEMORY[0x29EDCA608];
  v242 = a2;
  v240 = 0;
  v241 = a3;
  if (!a1->nscount || !a1->_u._ext.ext)
  {
    *__error() = 3;
    v10 = 4294966291;
    goto LABEL_6;
  }

  v9 = *a5;
  if (v9 <= 11)
  {
    *__error() = 22;
    v10 = 4294966292;
    goto LABEL_6;
  }

  options = a1->options;
  if ((options & 2) != 0 || (a1->pfcode & 0x1000) != 0)
  {
    v17 = *__error();
    fwrite(";; res_send()\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v17;
    options = a1->options;
  }

  v221 = a5;
  if ((options & 2) != 0)
  {
    v18 = v241;
    goto LABEL_14;
  }

  v18 = v241;
  if ((a1->pfcode & 0x1000) != 0)
  {
LABEL_14:
    res_9_pquery(a1, a2, v18, *MEMORY[0x29EDCA620]);
    options = a1->options;
  }

  v19 = (options >> 3) & 1;
  if (v18 > 512)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  nscount = a1->_u._ext.nscount;
  v22 = a1->nscount;
  v235 = v9;
  v236 = a4;
  if (a1->_u._ext.nscount)
  {
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0;
    v249 = 0u;
    v258[0] = 0;
    if (v22 == nscount)
    {
      v23 = 0;
      v24 = 0;
      nsaddr_list = a1->nsaddr_list;
      nssocks = a1->_u._ext.nssocks;
      while (!nsaddr_list->sin_family || sock_eq(nsaddr_list, a1->_u._ext.ext + v23))
      {
        v27 = *nssocks;
        if (*nssocks != -1)
        {
          v258[0] = 128;
          if (getpeername(v27, &v248, v258) < 0)
          {
            break;
          }

          v28 = nsaddr_list;
          if (!nsaddr_list->sin_family)
          {
            ext = a1->_u._ext.ext;
            if (ext)
            {
              v28 = ext + v23;
            }

            else
            {
              v28 = nsaddr_list;
            }
          }

          if (!sock_eq(&v248, v28))
          {
            break;
          }

          v22 = a1->nscount;
        }

        ++v24;
        ++nssocks;
        v23 += 128;
        ++nsaddr_list;
        if (v24 >= v22)
        {
          v9 = v235;
          a4 = v236;
          if (a1->_u._ext.nscount)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }
    }

    res_9_nclose(a1);
    a1->_u._ext.nscount = 0;
    v9 = v235;
    a4 = v236;
LABEL_35:
    v22 = a1->nscount;
  }

  if (v22 >= 1)
  {
    v30 = 0;
    for (i = 0; i < v22; ++i)
    {
      a1->_u._ext.nstimes[i] = -1;
      a1->_u._ext.nssocks[i] = -1;
      if (a1->nsaddr_list[v30 / 0x10].sin_family)
      {
        *(a1->_u._ext.ext + 8 * v30) = a1->nsaddr_list[v30 / 0x10];
        v22 = a1->nscount;
      }

      v30 += 16;
    }
  }

  a1->_u._ext.nscount = v22;
LABEL_42:
  if ((a1->options & 0x24000) == 0x4000)
  {
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0;
    v249 = 0u;
    v32 = a1->nscount;
    v33 = a1->_u._ext.ext;
    if (v33)
    {
      v252 = *(v33 + 4);
      v253 = *(v33 + 5);
      v254 = *(v33 + 6);
      v255 = *(v33 + 7);
      v248 = *v33;
      v249 = *(v33 + 1);
      v250 = *(v33 + 2);
      v251 = *(v33 + 3);
    }

    v34 = (v32 - 1);
    v35 = a1->nsaddr_list;
    *v258 = a1->nsaddr_list[0];
    v36 = a1->_u._ext.nssocks;
    v37 = a1->_u._ext.nssocks[0];
    nstimes = a1->_u._ext.nstimes;
    v39 = a1->_u._ext.nstimes[0];
    if (v32 >= 2)
    {
      v40 = 0;
      do
      {
        v41 = a1->_u._ext.ext;
        v42 = v40 + 1;
        if (v41)
        {
          v43 = (v41 + 128 * v40 + 128);
          v44 = v43[5];
          v45 = (v41 + 128 * v40);
          v45[4] = v43[4];
          v45[5] = v44;
          v46 = v43[7];
          v45[6] = v43[6];
          v45[7] = v46;
          v47 = v43[1];
          *v45 = *v43;
          v45[1] = v47;
          v48 = v43[3];
          v45[2] = v43[2];
          v45[3] = v48;
        }

        v35[v40] = v35[v42];
        v36[v40] = v36[v42];
        nstimes[v40++] = nstimes[v42];
      }

      while (v42 != v34);
      v33 = a1->_u._ext.ext;
    }

    if (v33)
    {
      v49 = v33 + 128 * v34;
      *(v49 + 4) = v252;
      *(v49 + 5) = v253;
      *(v49 + 6) = v254;
      *(v49 + 7) = v255;
      *v49 = v248;
      *(v49 + 1) = v249;
      *(v49 + 2) = v250;
      *(v49 + 3) = v251;
    }

    v35[v34] = *v258;
    v36[v34] = v37;
    nstimes[v34] = v39;
  }

  v239 = 0;
  token = -1;
  v50 = pthread_self();
  asprintf(&v239, "self.thread.%lu", v50);
  if (v239)
  {
    notify_register_plain();
    free(v239);
  }

  retry = a1->retry;
  v222 = 1;
  if (retry < 1)
  {
    v10 = 0;
    v205 = 60;
LABEL_405:
    res_9_nclose(a1);
    if (token != -1)
    {
      notify_cancel(token);
    }

    v206 = __error();
    if (v20)
    {
      *v206 = v205;
    }

    else if (v222)
    {
      *v206 = 61;
      v10 = 4294966289;
    }

    else
    {
      *v206 = 60;
      v10 = 4294966295;
    }

    goto LABEL_6;
  }

  v52 = 0;
  v10 = 0;
  v227 = 0;
  v228 = a7;
  v53 = a1->nsaddr_list;
  if (a4)
  {
    v54 = a7 == 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v54;
  v220 = v55;
  v219 = a1->_u._ext.nssocks;
  LODWORD(v56) = a1->nscount;
  v214 = 60;
LABEL_64:
  if (v56 < 1)
  {
    goto LABEL_402;
  }

  v57 = 0;
LABEL_66:
  v58 = &v53[v57];
  if (!v58->sa_family)
  {
    v59 = a1->_u._ext.ext;
    if (v59)
    {
      v58 = (v59 + 128 * v57);
    }

    else
    {
      v58 = &v53[v57];
    }
  }

  v226 = &v53[v57];
  v237 = v58;
  sa_len = v58->sa_len;
  if (!v58->sa_len)
  {
    sa_family = v58->sa_family;
    sa_len = sa_family == 30 ? 28 : 0;
    if (sa_family == 2)
    {
      sa_len = 16;
    }
  }

  v223 = sa_len;
  v224 = v20;
  a1->_flags = a1->_flags & 0xFFFFFF0F | (16 * v57);
  v225 = v57 + 1;
  while (2)
  {
    if (a1->qhook)
    {
      v62 = 42;
      while (1)
      {
        v63 = (a1->qhook)(&v237, &v242, &v241, a4, v9, &v240);
        if (v63 != 2)
        {
          break;
        }

        if (!--v62)
        {
          goto LABEL_417;
        }
      }

      if (v63)
      {
        if (v63 == 1)
        {
          res_9_nclose(a1);
          goto LABEL_335;
        }

        if (v63 != 3)
        {
          break;
        }

        goto LABEL_410;
      }
    }

    if (res_check_if_exit_requested(a1, token))
    {
      break;
    }

    if ((a1->options & 2) != 0 && !getnameinfo(v237, v223, &v248, 0x401u, 0, 0, 10))
    {
      v64 = *__error();
      fprintf(*MEMORY[0x29EDCA620], ";; Querying server (# %d) address = %s\n", v57 + 1, &v248);
      *__error() = v64;
    }

    v216 = v53;
    if (v20)
    {
      v217 = a1->retry;
      v233 = v242;
      v145 = v241;
      v146 = token;
      LODWORD(v245.msg_name) = 1;
      v147 = v226;
      if (!a4)
      {
        goto LABEL_421;
      }

      if (!v226->sa_family)
      {
        v148 = a1->_u._ext.ext;
        if (v148)
        {
          v147 = (v148 + 128 * v57);
        }
      }

      *v257 = 0;
      v230 = v147->sa_len;
      if (!v147->sa_len)
      {
        v149 = v147->sa_family;
        if (v149 == 30)
        {
          v150 = 28;
        }

        else
        {
          v150 = 0;
        }

        if (v149 == 2)
        {
          v151 = 16;
        }

        else
        {
          v151 = v150;
        }

        v230 = v151;
      }

      if (res_check_if_exit_requested(a1, token))
      {
        break;
      }

      v152 = 0;
      while (1)
      {
        vcsock = a1->_vcsock;
        if ((vcsock & 0x80000000) == 0)
        {
          flags = a1->_flags;
          if (flags)
          {
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            *v258 = 0u;
            v246[0] = 128;
            if (getpeername(vcsock, v258, v246) < 0 || !sock_eq(v258, v147))
            {
              res_9_nclose(a1);
              a1->_flags &= ~1u;
            }

            if (a1->_vcsock < 0)
            {
              goto LABEL_287;
            }

            flags = a1->_flags;
          }

          if (flags)
          {
            goto LABEL_292;
          }

          res_9_nclose(a1);
        }

LABEL_287:
        v155 = socket(v147->sa_family, 1, 0);
        a1->_vcsock = v155;
        if (v155 >= 1024)
        {
          res_9_nclose(a1);
          *__error() = 38;
          v155 = a1->_vcsock;
        }

        if (v155 < 0)
        {
          v193 = __error();
          if (*v193 <= 0x2F)
          {
            v194 = ((1 << *v193) & 0xC80000000000) == 0;
            *v193;
          }

          else
          {
            v194 = 1;
          }

          v9 = v235;
          a4 = v236;
          v52 = v217;
          v53 = v216;
          if (!v194)
          {
            v195 = *MEMORY[0x29EDCA610];
            v196 = __error();
            Perror(a1, v195, "socket(vc)", *v196);
            goto LABEL_374;
          }

          __error();
          v211 = *MEMORY[0x29EDCA610];
          v212 = *__error();
          v213 = "socket(vc)";
          goto LABEL_426;
        }

        setsockopt(v155, 0xFFFF, 4130, &v245, 4u);
        *__error() = 0;
        if (connect(a1->_vcsock, v147, v230) < 0)
        {
          v214 = *__error();
          v197 = *MEMORY[0x29EDCA610];
          v198 = __error();
          Aerror(a1, v197, "connect(vc)", *v198, v147, v230);
          res_9_nclose(a1);
          v10 = 4294966289;
          goto LABEL_333;
        }

        a1->_flags |= 1u;
LABEL_292:
        res_9_ns_put16(v145, v257);
        *v256.fds_bits = v257;
        *&v256.fds_bits[2] = 2;
        *&v256.fds_bits[4] = v233;
        *&v256.fds_bits[6] = v145;
        if (writev(a1->_vcsock, &v256, 2) != v145 + 2)
        {
          v214 = *__error();
          v191 = *MEMORY[0x29EDCA610];
          v192 = __error();
          Perror(a1, v191, "write failed", *v192);
          res_9_nclose(a1);
LABEL_377:
          v10 = 4294966287;
          goto LABEL_333;
        }

        if (res_check_if_exit_requested(a1, v146))
        {
          goto LABEL_417;
        }

        v156 = 0;
LABEL_295:
        v157 = 2;
        *v257 = 2;
        v158 = v236;
        while (1)
        {
          v159 = read(a1->_vcsock, v158, v157);
          if (v159 < 1)
          {
            break;
          }

          v158 += v159;
          v160 = *v257;
          v157 = *v257 - v159;
          *v257 -= v159;
          if (v160 == v159)
          {
            v10 = res_9_ns_get16(v236);
            v161 = v10;
            v162 = v10 - v235;
            if (v10 > v235)
            {
              if ((a1->options & 2) != 0)
              {
                v163 = *__error();
                v156 = 1;
                fwrite(";; response truncated\n", 0x16uLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v163;
              }

              else
              {
                v156 = 1;
              }

              v161 = v235;
            }

            *v257 = v161;
            if ((v161 & 0xFFFCu) < 0xC)
            {
              if ((a1->options & 2) != 0)
              {
                v199 = *__error();
                fprintf(*MEMORY[0x29EDCA620], ";; undersized: %d\n", *v257);
                *__error() = v199;
              }

              res_9_nclose(a1);
              v10 = 4294966290;
              v214 = 40;
              goto LABEL_332;
            }

            if (v161)
            {
              v164 = v236;
              while (1)
              {
                v165 = read(a1->_vcsock, v164, v161);
                if (v165 < 1)
                {
                  break;
                }

                v164 += v165;
                *v257 -= v165;
                v161 = *v257;
                if (!*v257)
                {
                  goto LABEL_308;
                }
              }

              v214 = *__error();
              v179 = *MEMORY[0x29EDCA610];
              v180 = __error();
              Perror(a1, v179, "read(vc)", *v180);
              res_9_nclose(a1);
              v10 = 4294966287;
LABEL_332:
              a7 = v228;
LABEL_333:
              v9 = v235;
              a4 = v236;
              v52 = v217;
LABEL_334:
              v53 = v216;
LABEL_335:
              v57 = v225;
              v56 = a1->nscount;
              if (v225 >= v56)
              {
                retry = a1->retry;
LABEL_402:
                v52 = (v52 + 1);
                if (v52 >= retry)
                {
                  v222 = v227 == 0;
                  v205 = v214;
                  goto LABEL_405;
                }

                goto LABEL_64;
              }

              goto LABEL_66;
            }

LABEL_308:
            a7 = v228;
            if (v156)
            {
              *v236 |= 0x20000uLL;
              *v257 = v10 - v235;
              if (v10 != v235)
              {
                do
                {
                  if ((v162 & 0xFE00) != 0)
                  {
                    v166 = 512;
                  }

                  else
                  {
                    v166 = v162;
                  }

                  v167 = read(a1->_vcsock, v258, v166);
                  if (v167 <= 0)
                  {
                    break;
                  }

                  v168 = *v257;
                  v162 = *v257 - v167;
                  *v257 -= v167;
                }

                while (v168 != v167);
              }
            }

            v169 = (*v236 ^ *v233);
            if (*v236 != *v233)
            {
              v170 = a1->options;
              if ((v170 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
              {
                v171 = *__error();
                fwrite(";; old answer (unexpected):\n", 0x1CuLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v171;
                v170 = a1->options;
              }

              if ((v170 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
              {
                if (v10 >= v235)
                {
                  v172 = v235;
                }

                else
                {
                  v172 = v10;
                }

                res_9_pquery(a1, v236, v172, *MEMORY[0x29EDCA620]);
              }

              if (res_check_if_exit_requested(a1, v146))
              {
                goto LABEL_417;
              }

              goto LABEL_295;
            }

            *v228 = 8;
            *a6 = v147;
            if ((v10 & 0x80000000) == 0)
            {
              if (!v10)
              {
                goto LABEL_332;
              }

              a7 = v228;
              v9 = v235;
              a4 = v236;
              v52 = v217;
              v53 = v216;
LABEL_341:
              v240 = v10;
              v184 = a1->options;
              if ((v184 & 2) != 0 || (~LODWORD(a1->pfcode) & 0x2100) == 0)
              {
                v185 = *__error();
                fwrite(";; got answer:\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v185;
                v184 = a1->options;
              }

              if ((v184 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
              {
                v186 = *__error();
                fputc(10, *MEMORY[0x29EDCA620]);
                *__error() = v186;
                v184 = a1->options;
              }

              if ((v184 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
              {
                if (v240 >= v9)
                {
                  v187 = v9;
                }

                else
                {
                  v187 = v240;
                }

                res_9_pquery(a1, a4, v187, *MEMORY[0x29EDCA620]);
                v184 = a1->options;
              }

              v188 = (v184 & 8) != 0 || v20 == 0;
              if (!v188 || (v184 & 0x100) == 0)
              {
                res_9_nclose(a1);
              }

              if (a1->rhook)
              {
                v189 = 42;
                while (1)
                {
                  v190 = (a1->rhook)(v237, v242, v241, a4, v9, &v240);
                  if (v190 != 2)
                  {
                    break;
                  }

                  v10 = 4294966294;
                  if (!--v189)
                  {
                    goto LABEL_418;
                  }
                }

                if (v190)
                {
                  if (v190 == 1)
                  {
                    res_9_nclose(a1);
LABEL_374:
                    v10 = 0;
                    goto LABEL_335;
                  }

                  if (v190 != 3)
                  {
                    goto LABEL_417;
                  }
                }
              }

              if (token != -1)
              {
                notify_cancel(token);
              }

LABEL_410:
              v10 = 0;
              *v221 = v240;
              goto LABEL_6;
            }

LABEL_421:
            v10 = 0;
            goto LABEL_418;
          }
        }

        v173 = *__error();
        v174 = *MEMORY[0x29EDCA610];
        v175 = __error();
        Perror(a1, v174, "read failed", *v175);
        res_9_nclose(a1);
        res_9_nclose(a1);
        if (v152 & 1 | (v173 != 54))
        {
          v214 = v173;
          goto LABEL_377;
        }

        v152 = 1;
        v214 = 54;
        if (res_check_if_exit_requested(a1, v146))
        {
          goto LABEL_417;
        }
      }
    }

    if (v220)
    {
      goto LABEL_421;
    }

    v65 = v226;
    if (!v226->sa_family)
    {
      v66 = a1->_u._ext.ext;
      if (v66)
      {
        v65 = (v66 + 128 * v57);
      }

      else
      {
        v65 = v226;
      }
    }

    v229 = v242;
    v218 = v241;
    v232 = token;
    v244.tv_sec = 0;
    v244.tv_nsec = 0;
    memset(&v256, 0, sizeof(v256));
    v243 = 0;
    v67 = v65->sa_len;
    if (!v65->sa_len)
    {
      v68 = v65->sa_family;
      if (v68 == 30)
      {
        v69 = 28;
      }

      else
      {
        v69 = 0;
      }

      if (v68 == 2)
      {
        v67 = 16;
      }

      else
      {
        v67 = v69;
      }
    }

    v231 = v65;
    if (v219[v57] == -1)
    {
      v75 = v52;
      v76 = socket(v65->sa_family, 2, 0);
      v219[v57] = v76;
      if (v76 >= 1024)
      {
        res_9_nclose(a1);
        *__error() = 38;
        v76 = v219[v57];
      }

      if ((v76 & 0x80000000) == 0)
      {
        v77 = 0;
        v78 = v231->sa_family;
        v265 = 0u;
        v264 = 0u;
        v263 = 0u;
        v262 = 0u;
        v261 = 0u;
        v260 = 0u;
        v259 = 0u;
        *v258 = 0u;
        do
        {
          v79 = res_9_randomid();
          *v258 = 0u;
          v259 = 0u;
          v260 = 0u;
          v261 = 0u;
          v262 = 0u;
          v263 = 0u;
          v264 = 0u;
          v265 = 0u;
          if (v78 == 2)
          {
            v80 = 16;
          }

          else
          {
            if (v78 != 30)
            {
              v10 = 0;
              *__error() = 102;
              goto LABEL_418;
            }

            v80 = 28;
          }

          LOBYTE(v258[0]) = v80;
          BYTE1(v258[0]) = v78;
          HIWORD(v258[0]) = bswap32((v79 + (v79 / 0x3FFF)) | 0xFFFFC000) >> 16;
          v81 = bind(v76, v258, v80);
          if (v77 > 0xE)
          {
            break;
          }

          ++v77;
        }

        while (v81 < 0);
        if (!v81)
        {
          v52 = v75;
          v65 = v231;
          if ((a1->options & 2) != 0)
          {
            v82 = *__error();
            fwrite(";; new DG socket\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA620]);
            *__error() = v82;
            v65 = v231;
          }

          goto LABEL_101;
        }

        goto LABEL_421;
      }

      v181 = *__error();
      if (v181 <= 0x2F && ((1 << v181) & 0xC80000000000) != 0)
      {
        v182 = *MEMORY[0x29EDCA610];
        v183 = __error();
        Perror(a1, v182, "socket(dg)", *v183);
        v20 = 0;
        v10 = 0;
        goto LABEL_334;
      }

      __error();
      v211 = *MEMORY[0x29EDCA610];
      v212 = *__error();
      v213 = "socket(dg)";
LABEL_426:
      Perror(a1, v211, v213, v212);
      v10 = 4294966286;
      goto LABEL_418;
    }

LABEL_101:
    v70 = v219[v57];
    v243 = 1;
    setsockopt(v70, 0, 20, &v243, 4u);
    setsockopt(v70, 41, 19, &v243, 4u);
    v71 = v65->sa_family;
    v217 = v52;
    if (v71 == 30)
    {
      if (v65->sa_data[6] != 255)
      {
        goto LABEL_119;
      }

      v74 = 0;
      v73 = 30;
      v72 = 1;
LABEL_122:
      *v258 = 0;
      LODWORD(v245.msg_name) = 0;
      if (getifaddrs(v258) < 0)
      {
        v208 = v65;
        v209 = *MEMORY[0x29EDCA610];
        v210 = __error();
        Aerror(a1, v209, "getifaddrs", *v210, v208, v67);
        res_9_nclose(a1);
        goto LABEL_421;
      }

      v83 = *v258;
      if (!*v258)
      {
        v99 = 0;
LABEL_147:
        MEMORY[0x29C2A25F0](v99);
        v215 = 0;
        LOBYTE(v52) = v217;
        goto LABEL_148;
      }

      while (1)
      {
        v84 = v83[3];
        if (!v84)
        {
          goto LABEL_126;
        }

        v85 = *(v83 + 4);
        if ((v85 & 1) == 0 || (v85 & 0x8000) == 0 || v73 != *(v84 + 1))
        {
          goto LABEL_126;
        }

        v86 = v74 ^ 1;
        if ((v83[2] & 0x10) == 0)
        {
          v86 = 1;
        }

        if ((v86 & 1) == 0 && bswap32(*&v65->sa_data[2]) < 0xE0000100)
        {
          goto LABEL_126;
        }

        if (v74)
        {
          break;
        }

        if (v72)
        {
          LODWORD(v245.msg_name) = if_nametoindex(v83[1]);
          *&v65[1].sa_data[6] = v245.msg_name;
          v87 = &v245;
          v88 = v70;
          v89 = 41;
          goto LABEL_138;
        }

        v96 = *MEMORY[0x29EDCA610];
        v97 = __error();
        v98 = v96;
        v65 = v231;
        Aerror(a1, v98, "setsockopt", *v97, v231, v67);
LABEL_126:
        v83 = *v83;
        if (!v83)
        {
          v99 = *v258;
          goto LABEL_147;
        }
      }

      v87 = (v84 + 4);
      v88 = v70;
      v89 = 0;
LABEL_138:
      if (setsockopt(v88, v89, 9, v87, 4u) < 0)
      {
        v93 = *MEMORY[0x29EDCA610];
        v94 = __error();
        v95 = v93;
        v65 = v231;
        Aerror(a1, v95, "setsockopt", *v94, v231, v67);
      }

      else if (sendto(v70, v229, v218, 0, v65, v67) != v218)
      {
        v90 = *MEMORY[0x29EDCA610];
        v91 = __error();
        v92 = v90;
        v65 = v231;
        Aerror(a1, v92, "sendto", *v91, v231, v67);
      }

      a7 = v228;
      if (v72)
      {
        *&v65[1].sa_data[6] = 0;
      }

      goto LABEL_126;
    }

    if (v71 == 2 && (*&v65->sa_data[2] & 0xF0) == 0xE0)
    {
      v72 = 0;
      v73 = 2;
      v74 = 1;
      goto LABEL_122;
    }

LABEL_119:
    if (sendto(v70, v229, v218, 0, v65, v67) != v218)
    {
      v176 = v65;
      v177 = *MEMORY[0x29EDCA610];
      v178 = __error();
      Aerror(a1, v177, "sendto", *v178, v176, v67);
      res_9_nclose(a1);
      v20 = 0;
      v10 = 4294966287;
      v9 = v235;
      a4 = v236;
      goto LABEL_334;
    }

    v215 = 1;
LABEL_148:
    v100 = a1->retrans << v52;
    if (v57)
    {
      v100 /= a1->nscount;
    }

    if (v100 <= 1)
    {
      v101 = 1;
    }

    else
    {
      v101 = v100;
    }

    v102 = evNowTime();
    v104 = v102;
    v105 = v103;
    v244.tv_sec = v101;
    v244.tv_nsec = 0;
    if (v103 <= 999999999)
    {
      v106 = v103;
    }

    else
    {
      v106 = v103 - 1000000000;
    }

    if (v103 <= 999999999)
    {
      v107 = v102 + v101;
    }

    else
    {
      v107 = v102 + v101 + 1;
    }

    if (interrupt_pipe_enabled)
    {
      v108 = pthread_getspecific(interrupt_pipe_key);
    }

    else
    {
      v108 = 0;
    }

    if (!res_check_if_exit_requested(a1, v232))
    {
LABEL_163:
      v109 = v106 - v105;
      if (v107 == v104)
      {
        v110 = v106 - v105;
      }

      else
      {
        v110 = v107 - v104;
      }

      if (v106 < v105)
      {
        v109 += 1000000000;
      }

      v111 = v107 - v104 - (v106 < v105);
      if (v110 < 1)
      {
        v111 = 0;
        v109 = 0;
      }

      v244.tv_sec = v111;
      v244.tv_nsec = v109;
      memset(&v256, 0, sizeof(v256));
      if (__darwin_check_fd_set_overflow(v70, &v256, 0))
      {
        v256.fds_bits[v70 >> 5] |= 1 << v70;
      }

      v112 = v70;
      if (interrupt_pipe_enabled)
      {
        v112 = v70;
        if (v108)
        {
          v113 = *v108;
          v112 = v70;
          if ((v113 & 0x80000000) == 0)
          {
            if (__darwin_check_fd_set_overflow(*v108, &v256, 0))
            {
              *(v256.fds_bits + ((v113 >> 3) & 0x1FFFFFFC)) |= 1 << v113;
            }

            v112 = *v108;
            if (v70 > *v108)
            {
              v112 = v70;
            }
          }
        }
      }

      v114 = pselect(v112 + 1, &v256, 0, 0, &v244, 0);
      if (!v114)
      {
        if ((a1->options & 2) == 0)
        {
          v20 = 0;
          v10 = 4294966295;
LABEL_262:
          v227 = 1;
          goto LABEL_333;
        }

        v142 = *__error();
        v227 = 1;
        fwrite(";; timeout\n", 0xBuLL, 1uLL, *MEMORY[0x29EDCA620]);
        v20 = 0;
        *__error() = v142;
        v10 = 4294966295;
        goto LABEL_333;
      }

      if (v114 < 0)
      {
        if (*__error() != 4)
        {
          v143 = *MEMORY[0x29EDCA610];
          v144 = __error();
          Perror(a1, v143, "select", *v144);
          res_9_nclose(a1);
          v20 = 0;
          v10 = 4294966286;
          goto LABEL_333;
        }
      }

      else
      {
        if (interrupt_pipe_enabled)
        {
          if (v108)
          {
            v115 = *v108;
            if (v115 & 0x80000000) != 0 || __darwin_check_fd_set_overflow(*v108, &v256, 0) && ((*(v256.fds_bits + ((v115 >> 3) & 0x1FFFFFFC)) >> v115))
            {
              if ((a1->options & 2) != 0)
              {
                v207 = *__error();
                fwrite(";; cancelled\n", 0xDuLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v207;
              }

              break;
            }
          }
        }

        *__error() = 0;
        *v246 = v236;
        v247 = v235;
        if (!a6)
        {
          goto LABEL_254;
        }

        v116 = *a7;
        if (*a7 < 0x10)
        {
LABEL_253:
          v224 = 0;
LABEL_254:
          *__error() = 22;
LABEL_258:
          v9 = v235;
          a4 = v236;
          v52 = v217;
          v53 = v216;
          v139 = *MEMORY[0x29EDCA610];
          v140 = __error();
          Perror(a1, v139, "recvfrom", *v140);
          res_9_nclose(a1);
          v10 = 4294966287;
          v20 = v224;
          goto LABEL_335;
        }

        v245.msg_flags = 0;
        *&v245.msg_iovlen = 1;
        *(&v245.msg_namelen + 1) = 0;
        v245.msg_name = a6;
        v245.msg_namelen = v116;
        v245.msg_iov = v246;
        v245.msg_control = v258;
        v245.msg_controllen = 1024;
        v10 = recvmsg(v70, &v245, 0);
        if (v10 < 0)
        {
          goto LABEL_204;
        }

        msg_controllen = v245.msg_controllen;
        if (v245.msg_controllen < 0xC || (v245.msg_flags & 0x20) != 0)
        {
          goto LABEL_253;
        }

        *a7 = v245.msg_namelen;
        msg_control = v245.msg_control;
        if (!v245.msg_control)
        {
LABEL_204:
          v119 = 0;
        }

        else
        {
          v119 = 0;
          v120 = v245.msg_control;
          do
          {
            v121 = v120[1];
            if (v121 == 41)
            {
              if (v120[2] == 19)
              {
                v119 = v120[7];
              }
            }

            else if (!v121 && v120[2] == 20 && *(v120 + 17) <= 0xFuLL)
            {
              __memcpy_chk();
              v257[*(v120 + 17)] = 0;
              v119 = if_nametoindex(v257);
              msg_control = v245.msg_control;
              msg_controllen = v245.msg_controllen;
            }

            v120 = (v120 + ((*v120 + 3) & 0x1FFFFFFFCLL));
          }

          while (v120 + 3 <= &msg_control[msg_controllen]);
        }

        if (v10 <= 0)
        {
          v224 = 0;
          goto LABEL_258;
        }

        v122 = v231->sa_family;
        if (v122 == 30)
        {
          v123 = a6;
          a6[6] = v119;
        }

        else
        {
          v123 = a6;
          if (v122 == 2)
          {
            a6[2] = v119;
          }
        }

        if (v10 <= 0xB)
        {
          if ((a1->options & 2) != 0)
          {
            v141 = *__error();
            fprintf(*MEMORY[0x29EDCA620], ";; undersized: %d\n", v10);
            *__error() = v141;
          }

          res_9_nclose(a1);
          v20 = 0;
          v10 = 4294966290;
          v214 = 40;
          goto LABEL_262;
        }

        v124 = *v236;
        v125 = *v236 ^ *v229;
        v126 = a1->options;
        if (*v236 != *v229)
        {
          if ((v126 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
          {
            v127 = *__error();
            v128 = *MEMORY[0x29EDCA620];
            v129 = ";; old answer:\n";
            v130 = 15;
            goto LABEL_222;
          }
        }

        else
        {
          v131 = v215;
          if ((v126 & 0x400) != 0)
          {
            v131 = 0;
          }

          if (v131 != 1 || res_ourserver_p(a1, v123))
          {
            if ((v124 & 0xF000000) == 0x1000000 && (v126 & 0x40000000) != 0)
            {
              v9 = v235;
              a4 = v236;
              v52 = v217;
              v53 = v216;
              if ((v126 & 2) != 0)
              {
                v200 = *__error();
                fwrite("server rejected query with EDNS0:\n", 0x22uLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v200;
                if ((a1->options & 2) != 0)
                {
                  if (v10 >= v235)
                  {
                    v201 = v235;
                  }

                  else
                  {
                    v201 = v10;
                  }

                  res_9_pquery(a1, v236, v201, *MEMORY[0x29EDCA620]);
                }
              }

              a1->_flags |= 4u;
              res_9_nclose(a1);
              v20 = 0;
              v10 = 4294966289;
              v227 = 1;
              a7 = v228;
              goto LABEL_335;
            }

            v9 = v235;
            a4 = v236;
            v52 = v217;
            v53 = v216;
            if ((v126 & 0x800) == 0)
            {
              if (!res_9_queriesmatch(v229, &v229[v218], v236, &v236[v235]))
              {
                v202 = a1->options;
                if ((v202 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
                {
                  v203 = *__error();
                  fwrite(";; wrong query name:\n", 0x15uLL, 1uLL, *MEMORY[0x29EDCA620]);
                  *__error() = v203;
                  v202 = a1->options;
                }

                if ((v202 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
                {
                  if (v10 >= v235)
                  {
                    v204 = v235;
                  }

                  else
                  {
                    v204 = v10;
                  }

                  res_9_pquery(a1, v236, v204, *MEMORY[0x29EDCA620]);
                }

                res_9_nclose(a1);
                v20 = 0;
                v10 = 4294966290;
                v227 = 1;
                a7 = v228;
                goto LABEL_334;
              }

              v124 = *v236;
            }

            v134 = BYTE3(v124) & 0xF;
            a7 = v228;
            if (v134 <= 5 && ((1 << v134) & 0x34) != 0)
            {
              if ((a1->options & 2) != 0)
              {
                v135 = *__error();
                fwrite("server rejected query:\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA620]);
                *__error() = v135;
                if ((a1->options & 2) != 0)
                {
                  if (v10 >= v235)
                  {
                    v136 = v235;
                  }

                  else
                  {
                    v136 = v10;
                  }

                  res_9_pquery(a1, v236, v136, *MEMORY[0x29EDCA620]);
                }
              }

              res_9_nclose(a1);
              if (!a1->pfcode)
              {
                v20 = 0;
                v10 = v236[3] & 0xF;
                v227 = 1;
                goto LABEL_335;
              }
            }

            v137 = a1->options;
            if ((v137 & 0x20) != 0 || (v236[2] & 2) == 0)
            {
              v20 = 0;
              v227 = 1;
              goto LABEL_341;
            }

            if ((v137 & 2) != 0)
            {
              v138 = *__error();
              fwrite(";; truncated answer\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA620]);
              *__error() = v138;
            }

            res_9_nclose(a1);
            v10 = 0;
            v227 = 1;
            v20 = 1;
            continue;
          }

          if ((v126 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
          {
            v127 = *__error();
            v128 = *MEMORY[0x29EDCA620];
            v129 = ";; not our server:\n";
            v130 = 19;
LABEL_222:
            fwrite(v129, v130, 1uLL, v128);
            *__error() = v127;
            v126 = a1->options;
          }
        }

        if ((v126 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
        {
          if (v10 >= v235)
          {
            v132 = v235;
          }

          else
          {
            v132 = v10;
          }

          res_9_pquery(a1, v236, v132, *MEMORY[0x29EDCA620]);
        }

        v227 = 1;
        a7 = v228;
      }

      v104 = evNowTime();
      v105 = v133;
      if (res_check_if_exit_requested(a1, v232))
      {
        break;
      }

      goto LABEL_163;
    }

    break;
  }

LABEL_417:
  v10 = 4294966294;
LABEL_418:
  res_9_nclose(a1);
  if (token != -1)
  {
    notify_cancel(token);
  }

LABEL_6:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

int res_9_nsend(res_9_state a1, const u_char *a2, int a3, u_char *a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(v9, 0, sizeof(v9));
  v7 = 128;
  v8 = a5;
  if (dns_res_send(a1, a2, a3, a4, &v8, v9, &v7))
  {
    result = -1;
  }

  else
  {
    result = v8;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sock_eq(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 30)
  {
    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 24) == *(a2 + 24))
    {
      return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    }

    return 0;
  }

  if (v2 != 2 || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4);
}

uint64_t res_check_if_exit_requested(uint64_t a1, int token)
{
  if (token == -1)
  {
    return 0;
  }

  state64[3] = v2;
  state64[4] = v3;
  state64[0] = 0;
  notify_get_state(token, state64);
  if (state64[0] != 4)
  {
    return 0;
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    v5 = *__error();
    fwrite(";; cancelled\n", 0xDuLL, 1uLL, *MEMORY[0x29EDCA620]);
    *__error() = v5;
  }

  return 1;
}

int *Perror(uint64_t a1, FILE *a2, const char *a3, int a4)
{
  v8 = *__error();
  if ((*(a1 + 8) & 2) != 0)
  {
    v9 = strerror(a4);
    fprintf(a2, "res_send: %s: %s\n", a3, v9);
  }

  result = __error();
  *result = v8;
  return result;
}

int *Aerror(uint64_t a1, FILE *a2, const char *a3, int a4, const sockaddr *a5, socklen_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v12 = *__error();
  if ((*(a1 + 8) & 2) != 0)
  {
    if (getnameinfo(a5, a6, __dst, 0x401u, v16, 0x20u, 10))
    {
      strncpy(__dst, "?", 0x400uLL);
      __dst[1024] = 0;
      *v16 = xmmword_2998BDB00;
      *&v16[15] = *(&xmmword_2998BDB00 + 15);
      v17 = 0;
    }

    v13 = strerror(a4);
    fprintf(a2, "res_send: %s ([%s].%s): %s\n", a3, __dst, v16, v13);
  }

  result = __error();
  *result = v12;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

__darwin_time_t evNowTime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  if (gettimeofday(&v1, 0) < 0)
  {
    return 0;
  }

  else
  {
    return v1.tv_sec;
  }
}

int res_9_nsendsigned(res_9_state a1, const u_char *a2, int a3, res_9_ns_tsig_key *a4, u_char *a5, int a6)
{
  v50 = *MEMORY[0x29EDCA608];
  v46 = 0;
  res_9_dst_init();
  v12 = malloc_type_malloc(0x228uLL, 0x10B2040E67E7BACuLL);
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  memcpy(v12, a1, sizeof(__res_9_state));
  v14 = malloc_type_malloc(a3 + 1024, 0x100004077774924uLL);
  if (!v14)
  {
    free(v13);
LABEL_19:
    v25 = __error();
    v26 = 12;
LABEL_20:
    *v25 = v26;
    goto LABEL_21;
  }

  v15 = v14;
  memcpy(v14, a2, a3);
  v48 = a3;
  if (res_9_ns_samename(a4->alg, "HMAC-MD5.SIG-ALG.REG.INT") == 1)
  {
    v16 = res_9_dst_buffer_to_key(a4->name, 0x9Du, 0x4000u, 0xFFu, a4->data, a4->len);
    if (v16)
    {
      v17 = v16;
      v13->nscount = 1;
      v47 = 64;
      v18 = res_9_ns_sign(v15, &v48, a3 + 1024, 0, v16, 0, 0, v49, &v47, 0);
      if (v18 < 0)
      {
        v27 = v18;
        free(v13);
        free(v15);
        res_9_dst_free_key(v17);
        if (v27 == -1)
        {
          v25 = __error();
LABEL_61:
          v30 = 22;
        }

        else
        {
          if (v27 != -11)
          {
            goto LABEL_22;
          }

          v25 = __error();
          v30 = 40;
        }

        *v25 = v30;
        goto LABEL_22;
      }

      v19 = v48;
      options = v13->options;
      if (v48 > 512)
      {
        v21 = 1;
      }

      else
      {
        v21 = (options >> 3) & 1;
      }

      v22 = 32;
      if (v21)
      {
        v22 = 8;
      }

      v13->options = options & 0xFFFFFFFFFFFFFFFDLL | v22;
      v13->pfcode &= ~0x2000uLL;
      v45 = res_9_nsend(v13, v15, v19, a5, a6);
      if (v45 < 0)
      {
LABEL_54:
        free(v13);
        free(v15);
        res_9_dst_free_key(v17);
        v27 = v45;
        goto LABEL_22;
      }

      while (1)
      {
        v23 = res_9_ns_verify(a5, &v45, v17, v49, v47, 0, 0, &v46, HIWORD(LODWORD(v13->options)) & 1);
        if (v23)
        {
          break;
        }

        v24 = a1->options;
        if (v21 & 1 | ((a5[2] & 2) == 0) || (v24 & 0x20) != 0)
        {
          if ((v24 & 2) != 0 || (~LODWORD(a1->pfcode) & 0x2100) == 0)
          {
            v39 = *__error();
            fwrite(";; got answer:\n\n", 0x10uLL, 1uLL, *MEMORY[0x29EDCA620]);
            *__error() = v39;
            v24 = a1->options;
          }

          if ((v24 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
          {
            v40 = *__error();
            fputc(10, *MEMORY[0x29EDCA620]);
            *__error() = v40;
            v24 = a1->options;
          }

          if ((v24 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
          {
            if (v45 >= a6)
            {
              v41 = a6;
            }

            else
            {
              v41 = v45;
            }

            v42 = MEMORY[0x29EDCA620];
            res_9_pquery(a1, a5, v41, *MEMORY[0x29EDCA620]);
            if ((a1->pfcode & 0x2000) != 0)
            {
              v43 = *__error();
              fwrite(";; TSIG ok\n\n", 0xCuLL, 1uLL, *v42);
              *__error() = v43;
            }
          }

          goto LABEL_54;
        }

        v13->options &= ~0x20uLL;
        v45 = res_9_nsend(v13, v15, v48, a5, a6);
        LOBYTE(v21) = 1;
        if (v45 < 0)
        {
          goto LABEL_54;
        }
      }

      v27 = v23;
      v31 = a1->options;
      v32 = MEMORY[0x29EDCA620];
      if ((v31 & 2) != 0 || (~LODWORD(a1->pfcode) & 0x2100) == 0)
      {
        v33 = *__error();
        fwrite(";; got answer:\n", 0xFuLL, 1uLL, *v32);
        *__error() = v33;
        v31 = a1->options;
      }

      if ((v31 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
      {
        v34 = *__error();
        fputc(10, *v32);
        *__error() = v34;
        v31 = a1->options;
      }

      if ((v31 & 2) != 0 || (a1->pfcode & 0x2000) != 0)
      {
        if (v45 >= a6)
        {
          v35 = a6;
        }

        else
        {
          v35 = v45;
        }

        res_9_pquery(a1, a5, v35, *v32);
      }

      pfcode = a1->pfcode;
      if (v27 < 1)
      {
        if ((pfcode & 0x2000) != 0)
        {
          v37 = *__error();
          v44 = *v32;
          res_9_p_rcode(-v27);
          fprintf(v44, ";; TSIG invalid (%s)\n");
          goto LABEL_58;
        }
      }

      else if ((pfcode & 0x2000) != 0)
      {
        v37 = *__error();
        v38 = *v32;
        res_9_p_rcode(v27);
        fprintf(v38, ";; server rejected TSIG (%s)\n");
LABEL_58:
        *__error() = v37;
      }

      free(v13);
      free(v15);
      res_9_dst_free_key(v17);
      v25 = __error();
      if (v27 == -1)
      {
        goto LABEL_61;
      }

      v26 = 25;
      goto LABEL_20;
    }
  }

  *__error() = 22;
  free(v13);
  free(v15);
LABEL_21:
  v27 = -1;
LABEL_22:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}