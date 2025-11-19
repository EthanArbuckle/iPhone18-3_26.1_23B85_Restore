uint64_t _citrus_mapper_std_mapper_init(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5, uint64_t a6, unint64_t a7)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a7 >= 0x18)
  {
    *(a6 + 16) = 1;
    *a6 = xmmword_296036E20;
    v12 = malloc_type_malloc(0x70uLL, 0x10A0040EA5F9EB0uLL);
    if (v12)
    {
      v13 = v12;
      snprintf(__str, 0x400uLL, "%s/%.*s", a3, a5, a4);
      v7 = _citrus_map_file();
      if (!v7)
      {
        v7 = _citrus_db_open();
        if (!v7)
        {
          v14 = v13[2];
          v15 = _citrus_db_lookup_string_by_string();
          if (v15)
          {
            if (v15 == 2)
            {
              v7 = 79;
            }

            else
            {
              v7 = v15;
            }
          }

          else if (_citrus_bcs_strcasecmp())
          {
            v7 = 0;
          }

          else
          {
            v7 = rowcol_init(v13);
            if (!v7)
            {
              *(a2 + 8) = v13;
              goto LABEL_17;
            }
          }

          MEMORY[0x29C257110](v13[2]);
        }

        _citrus_unmap_file();
      }

      free(v13);
    }

    else
    {
      v7 = *__error();
    }
  }

  else
  {
    v7 = 22;
  }

LABEL_17:
  v16 = *MEMORY[0x29EDCA608];
  return v7;
}

void _citrus_mapper_std_mapper_uninit(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[4];
  if (v2)
  {
    v2(*(a1 + 8));
  }

  MEMORY[0x29C257110](v1[2]);
  _citrus_unmap_file();

  free(v1);
}

uint64_t _citrus_mapper_std_mapper_convert(uint64_t a1, uint64_t *a2)
{
  v2 = a2[2];
  if (*v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v8 = *(a1 + 8);
  while (1)
  {
    v9 = (*(v8 + 24))(v8, v5, *(v6 + 4 * v4), v7, 0);
    if (v9)
    {
      break;
    }

    ++v4;
    v5 += 4;
    if (v4 >= *v2)
    {
      return 0;
    }
  }

  if ((v9 & 0x60000000) != 0)
  {
    _citrus_mapper_std_mapper_convert_cold_1();
  }

  if (v9 == 1)
  {
    v11 = (*(v8 + 24))(v8, v5, *(v6 + 4 * v4), v7, 1);
    v12 = v11 == 0;
    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = 6;
    }

    if (v12)
    {
      LODWORD(v4) = v4 + 1;
    }
  }

  *v2 = v4;
  return ((*(a1 + 64) & 3) << 29) | v9;
}

uint64_t _citrus_mapper_std_mapper_getops(_OWORD *a1)
{
  v1 = *&off_2A1A8F3A0;
  *a1 = _citrus_mapper_std_mapper_ops;
  a1[1] = v1;
  return 0;
}

uint64_t rowcol_init(void *a1)
{
  a1[3] = rowcol_convert;
  a1[4] = rowcol_uninit;
  v2 = a1[2];
  LODWORD(result) = _citrus_db_lookup_by_string();
  if (!result)
  {
    v4 = a1[2];
    if (_citrus_db_lookup_by_string() == 2)
    {
      a1[7] = 0;
      a1[8] = 0;
    }

    v5 = a1[2];
    LODWORD(result) = _citrus_db_lookup_by_string();
    if (!result)
    {
      return 79;
    }
  }

  if (result == 2)
  {
    return 79;
  }

  return result;
}

uint64_t rowcol_convert(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, int a5)
{
  if (a5)
  {
    if (!*(a1 + 64))
    {
      return 1;
    }

    v5 = (a1 + 56);
  }

  else
  {
    v5 = (a1 + 40);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  v8 = v6 * v7;
  if (v6 * v7)
  {
    v8 = 0;
    v9 = *(a1 + 80);
    v10 = -(v6 * v7);
    v11 = v7 * (v6 - 1);
    while (1)
    {
      v12 = *(a1 + 92) & (a3 >> v11);
      if (v12 < *v9 || v12 > v9[1])
      {
        break;
      }

      v8 = v12 - *v9 + v9[2] * v8;
      v9 += 3;
      v11 -= v7;
      v10 += v7;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v15 = *(a1 + 104);
    if (v15 != 1)
    {
      if (!v15)
      {
        v14 = *(a1 + 96);
LABEL_21:
        *a2 = v14;
        return 1;
      }

      return 5;
    }

    return 4;
  }

LABEL_10:
  v13 = *(a1 + 100);
  switch(v13)
  {
    case 32:
      v14 = bswap32(*(*v5 + 4 * v8));
      break;
    case 16:
      v14 = bswap32(*(*v5 + 2 * v8)) >> 16;
      break;
    case 8:
      v14 = *(*v5 + v8);
      break;
    default:
      return 5;
  }

  if (v14 == *(a1 + 96))
  {
    goto LABEL_21;
  }

  if (v14 == *(a1 + 108))
  {
    return 4;
  }

  result = 0;
  *a2 = v14;
  return result;
}