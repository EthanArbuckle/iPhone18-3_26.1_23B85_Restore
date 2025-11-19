uint64_t _citrus_mapper_serial_mapper_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a7 >= 0x18)
  {
    v11 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    if (v11)
    {
      v12 = v11;
      *v11 = 0;
      v11[1] = v11;
      _citrus_memory_stream_skip_ws();
      if (a5)
      {
        while (1)
        {
          _citrus_memory_stream_chr();
          snprintf(__str, 0x400uLL, "%.*s", 0, 0);
          *_citrus_bcs_skip_nonws() = 0;
          v13 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          if (_citrus_mapper_open())
          {
            goto LABEL_13;
          }

          mapdir_from_key = _citrus_mapper_get_mapdir_from_key();
          *(v14 + 4) = mapdir_from_key;
          if ((mapdir_from_key & (mapdir_from_key - 1)) != 0)
          {
            _citrus_mapper_serial_mapper_init_cold_1();
          }

          v16 = *(v14[1] + 24);
          if (v16[1] != 1 || v16[2] != 1 || *v16)
          {
LABEL_13:
            free(v14);
LABEL_14:
            uninit(v12);
            free(v12);
            goto LABEL_2;
          }

          *v14 = 0;
          *v12[1] = v14;
          v12[1] = v14;
          _citrus_memory_stream_skip_ws();
        }

        if (*__error())
        {
          goto LABEL_14;
        }
      }

      v17 = *v12;
      if (*v12)
      {
        v18 = *(a2 + 64);
        do
        {
          v18 |= *(v17 + 4);
          v17 = *v17;
        }

        while (v17);
        *(a2 + 64) = v18;
      }

      result = 0;
      *(a2 + 8) = v12;
      *(a6 + 16) = 1;
      *a6 = xmmword_296034D10;
    }

    else
    {
      result = *__error();
    }
  }

  else
  {
LABEL_2:
    result = 22;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void _citrus_mapper_serial_mapper_uninit(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      uninit(v2);
      v3 = *(a1 + 8);

      free(v3);
    }
  }
}

uint64_t _citrus_mapper_serial_mapper_convert(uint64_t a1, __int128 *a2)
{
  v14 = *a2;
  v3 = *(a2 + 2);
  v15 = v3;
  v4 = *a2;
  v5 = *v3;
  v6 = *(a1 + 8);
  memcpy(*a2, *(a2 + 1), 4 * v5);
  *(&v14 + 1) = v4;
  v16 = 0;
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = (*(*v7[1] + 16))(v7[1], &v14);
    v11 = (v10 >> 29) & 3;
    if ((*(a1 + 64) ^ (*(a1 + 64) - 1)) > *(a1 + 64) - 1)
    {
      v11 = *(a1 + 64);
    }

    v12 = v10 & 0x9FFFFFFF;
    if ((v10 & 0x9FFFFFFF) != 0)
    {
      if (v12 != 6)
      {
        if (*v3 >= v5)
        {
          _citrus_mapper_serial_mapper_convert_cold_3();
        }

        return ((v11 & 3) << 29) | v12;
      }

      v8 = 1;
      v9 = v11;
    }

    else if (*v3 != v5)
    {
      _citrus_mapper_serial_mapper_convert_cold_1();
    }

    v7 = *v7;
  }

  while (v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (!v9)
  {
    _citrus_mapper_serial_mapper_convert_cold_2();
  }

  return ((v9 & 3) << 29) | 6u;
}

uint64_t _citrus_mapper_parallel_mapper_convert(uint64_t a1, uint64_t *a2)
{
  v23 = 0;
  v22[3] = 0;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 8);
  v7 = *v5;
  v22[0] = &v23;
  v22[2] = &v21;
  if (v7 < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    v20 = v3;
LABEL_3:
    v9 = *v6;
    if (*v6)
    {
      v10 = 0;
      v11 = v3 + 4 * v8;
      do
      {
        v21 = 1;
        v22[1] = v11;
        v12 = (*(*v9[1] + 16))(v9[1], v22);
        v13 = v12 & 0x9FFFFFFF;
        if ((v12 & 0x9FFFFFFF) == 6)
        {
          *(v4 + 4 * v8) = v23;
          v10 = 1;
        }

        else
        {
          if (v13 == 4)
          {
            v18 = *(a1 + 64);
            if ((v18 ^ (v18 - 1)) <= v18 - 1)
            {
              v18 = (v12 >> 29) & 3;
            }

            if ((v18 & (v18 - 1)) != 0)
            {
              LOBYTE(v18) = v18 & 0xFD;
            }

            if (v10)
            {
              *v5 = v8 + 1;
              v19 = 6;
            }

            else
            {
              *v5 = v8;
              v19 = 4;
            }

            return v19 & 0x9FFFFFFF | ((v18 & 3) << 29);
          }

          if (!v13)
          {
            *(v4 + 4 * v8++) = v23;
            v3 = v20;
            if (v8 != v7)
            {
              goto LABEL_3;
            }

            LODWORD(v8) = v7;
            goto LABEL_17;
          }
        }

        v9 = *v9;
      }

      while (v9);
      *v5 = v8;
      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }

      *v5 = v8 + 1;
      v14 = 6;
      goto LABEL_21;
    }
  }

LABEL_17:
  *v5 = v8;
LABEL_18:
  if (v8 == v7)
  {
    return 0;
  }

  v14 = 1;
LABEL_21:
  v16 = *(a1 + 64);
  if ((v16 & (v16 - 1)) != 0)
  {
    v17 = (v16 << 29) & 0x20000000;
  }

  else
  {
    v17 = v16 << 29;
  }

  return v17 & 0x60000000 | v14;
}

uint64_t _citrus_mapper_serial_mapper_getops(_OWORD *a1)
{
  v1 = *&off_2A1A8F320;
  *a1 = _citrus_mapper_serial_mapper_ops;
  a1[1] = v1;
  return 0;
}

uint64_t _citrus_mapper_parallel_mapper_getops(_OWORD *a1)
{
  v1 = *&off_2A1A8F340;
  *a1 = _citrus_mapper_parallel_mapper_ops;
  a1[1] = v1;
  return 0;
}

void uninit(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    *a1 = *i;
    if (!v3)
    {
      *(a1 + 8) = a1;
    }

    v4 = i[1];
    _citrus_mapper_close();
    free(i);
  }
}