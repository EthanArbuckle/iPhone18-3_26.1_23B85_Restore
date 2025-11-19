double _citrus_mapper_zone_mapper_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a7 >= 0x18)
  {
    v26[8] = v7;
    v26[9] = v8;
    v13 = malloc_type_malloc(0x1CuLL, 0x100004027586B93uLL);
    if (v13)
    {
      v14 = v13;
      *(v13 + 1) = 0;
      v15 = v13 + 2;
      *v13 = 0;
      v13[6] = 0;
      *(v13 + 2) = 0;
      v25[0] = a4;
      v25[1] = a5;
      v25[2] = 0;
      v26[0] = 0;
      v26[1] = 0;
      if (parse_zone(v25, v26, v13))
      {
LABEL_4:
        free(v14);
        return result;
      }

      tok = get_tok(v25, v26);
      v19 = tok;
      if (tok == 47)
      {
        *(v14 + 1) = *v14;
        if (parse_zone(v25, v26, v14))
        {
          goto LABEL_4;
        }

        if (get_tok(v25, v26) != 47)
        {
          goto LABEL_4;
        }

        if (get_tok(v25, v26) != 257)
        {
          goto LABEL_4;
        }

        v20 = HIDWORD(v26[0]);
        v14[6] = HIDWORD(v26[0]);
        if (v20 > 0x20)
        {
          goto LABEL_4;
        }

        tok = get_tok(v25, v26);
      }

      else
      {
        v14[6] = 32;
        *(v14 + 1) = 0;
      }

      if (tok == 58)
      {
        LODWORD(v26[0]) = 1;
        if (get_tok(v25, v26) != 257)
        {
          goto LABEL_4;
        }

        v21 = HIDWORD(v26[0]);
        v14[4] = HIDWORD(v26[0]);
        if (v19 == 47)
        {
          v14[5] = v21;
          if (get_tok(v25, v26) != 47 || get_tok(v25, v26) != 257)
          {
            goto LABEL_4;
          }

          v14[4] = HIDWORD(v26[0]);
        }

        else
        {
          v14[5] = 0;
        }

        tok = get_tok(v25, v26);
      }

      if (tok != -1)
      {
        goto LABEL_4;
      }

      v22 = v14[6];
      v23 = v22 == 32 ? 0 : 1 << v22;
      if (check_rowcol(v14, v14[4], v23))
      {
        goto LABEL_4;
      }

      v24 = v22 ? 1 << -v22 : 0;
      if (check_rowcol(v15, v14[5], v24))
      {
        goto LABEL_4;
      }

      *(a2 + 8) = v14;
      *(a6 + 16) = 1;
      result = 0.0;
      *a6 = xmmword_296037CA0;
    }

    else
    {
      v17 = *__error();
    }
  }

  return result;
}

uint64_t _citrus_mapper_zone_mapper_convert(uint64_t a1, uint64_t *a2)
{
  v2 = a2[2];
  if (*v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 64);
  while (1)
  {
    v8 = v4[6];
    v9 = *(v6 + 4 * v3);
    if (v8 != 32)
    {
      break;
    }

    if (v9 < *v4 || v9 > v4[1])
    {
      goto LABEL_14;
    }

    v10 = v4[4] + v9;
LABEL_12:
    *(v5 + 4 * v3++) = v10;
    if (v3 >= *v2)
    {
      return 0;
    }
  }

  v11 = v9 >> v8;
  if (v9 >> v8 >= v4[2] && v11 <= v4[3])
  {
    v12 = v9 & ~(-1 << v8);
    if (v12 >= *v4 && v12 <= v4[1])
    {
      v10 = ((v4[5] + v11) << v8) | (v4[4] + v12);
      goto LABEL_12;
    }
  }

LABEL_14:
  *v2 = v3;
  return ((v7 & 3) << 29) | 1u;
}

uint64_t _citrus_mapper_zone_mapper_getops(_OWORD *a1)
{
  v1 = *&off_2A1A8F3C0;
  *a1 = _citrus_mapper_zone_mapper_ops;
  a1[1] = v1;
  return 0;
}

uint64_t parse_zone(uint64_t *a1, _DWORD *a2, unsigned int *a3)
{
  if (get_tok(a1, a2) != 257)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = a2[1];
  if (get_tok(a1, a2) != 45 || get_tok(a1, a2) != 257)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2[1];
  a3[1] = v6;
  if (*a3 <= v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t get_tok(uint64_t *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 >= v2)
  {
    v5 = 0;
    v6 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = 1;
  while (1)
  {
    v6 = *(v4 + v3);
    if ((v6 - 9) >= 5 && v6 != 32)
    {
      break;
    }

    a1[2] = ++v3;
    v5 = v3 < v2;
    if (v2 == v3)
    {
      v5 = 0;
      v6 = 0xFFFFFFFFLL;
      v3 = v2;
      goto LABEL_10;
    }
  }

  if (*(v4 + v3))
  {
LABEL_10:
    if (*a2 == 1)
    {
      if ((v6 - 48) < 0xA || v6 == 43 || v6 == 45)
      {
        return get_imm(a1, a2);
      }

      if (v6 == 47)
      {
        if (v5)
        {
          a1[2] = v3 + 1;
        }

        return 47;
      }
    }

    else if (!*a2)
    {
      if ((v6 - 48) >= 0xA)
      {
        v7 = 256;
        if (v6 <= 0x3A && ((1 << v6) & 0x400A00000000000) != 0)
        {
          if (v5)
          {
            a1[2] = v3 + 1;
          }

          return v6;
        }

        return v7;
      }

      return get_imm(a1, a2);
    }

    return 256;
  }

  return 0xFFFFFFFFLL;
}

uint64_t check_rowcol(_DWORD *a1, int a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a1[1];
    v4 = a3 >= v3;
    v5 = a3 - v3;
    if (v5 == 0 || !v4)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2 <= 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 <= 0)
    {
LABEL_12:
      if (a2 < 0 && *a1 < -a2)
      {
        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    v6 = a1[1];
    if (v6)
    {
      v5 = -v6;
    }

    else
    {
      v5 = -1;
    }
  }

  if (v5 < a2)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t get_imm(void *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = a1[2];
  while (1)
  {
    v7 = v6;
    v8 = v4;
LABEL_3:
    v9 = v8;
    while (1)
    {
      if (v7 >= v5)
      {
        v8 = 0xFFFFFFFFLL;
        if (v3)
        {
LABEL_15:
          if (v8 - 58 > 0xFFFFFFF5 || (v8 & 0xDF) - 71 > 0xFFFFFFF9 || v3 == 1 && v8 == 120)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v8 = *(*a1 + v7);
        if (v3)
        {
          goto LABEL_15;
        }
      }

      if (v9 || v8 != 45 && v8 != 43)
      {
        break;
      }

      v9 = v8;
      if (v7 < v5)
      {
        a1[2] = ++v7;
        goto LABEL_3;
      }
    }

    if (v8 - 58 < 0xFFFFFFF6)
    {
      break;
    }

    v6 = v7;
    v4 = v9;
LABEL_19:
    if (v7 >= v5)
    {
      v10 = -1;
    }

    else
    {
      a1[2] = v6 + 1;
      v10 = *(*a1 + v6++);
    }

    __str[v3++] = v10;
    if (v3 == 20)
    {
LABEL_23:
      LODWORD(v9) = v4;
      goto LABEL_25;
    }
  }

  LODWORD(v3) = 0;
LABEL_25:
  __endptr = 0;
  __str[v3] = 0;
  v11 = strtoul(__str, &__endptr, 0);
  *(a2 + 4) = v11;
  if (__endptr - __str == v3)
  {
    if (v9 == 45)
    {
      *(a2 + 4) = -v11;
    }

    result = 257;
  }

  else
  {
    result = 256;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}