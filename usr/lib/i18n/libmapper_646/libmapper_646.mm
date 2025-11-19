uint64_t _citrus_mapper_646_mapper_init(uint64_t a1, uint64_t a2, const char *a3, _BYTE *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a7 >= 0x18)
  {
    v11 = malloc_type_malloc(0x34uLL, 0x10000403884A0CCuLL);
    if (v11)
    {
      v12 = v11;
      v11[12] = 1;
      _citrus_memory_stream_skip_ws();
      v13 = 0;
      if (a5 && *a4 == 33)
      {
        v13 = 1;
        v12[12] = 0;
      }

      v14 = a5 - v13;
      if (a5 < v13)
      {
        v14 = 0;
      }

      if (v14 + v13 <= a5)
      {
        v15 = &a4[v13];
      }

      else
      {
        v15 = 0;
        LODWORD(v14) = 0;
      }

      snprintf(__str, 0x400uLL, "%s/%.*s", a3, v14, v15);
      *_citrus_bcs_skip_nonws() = 0;
      v19 = 0uLL;
      v16 = _citrus_map_file();
      if (v16)
      {
        v7 = v16;
      }

      else
      {
        v20 = v19;
        v21 = 0;
        while (_citrus_memory_stream_getln())
        {
          _citrus_bcs_skip_ws_len();
        }

        _citrus_unmap_file();
        v7 = 22;
      }

      free(v12);
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

  v17 = *MEMORY[0x29EDCA608];
  return v7;
}

void _citrus_mapper_646_mapper_uninit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      free(v1);
    }
  }
}

uint64_t _citrus_mapper_646_mapper_convert(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 8);
  v6 = *v4;
  if (v5[12])
  {
    if (v6 >= 1)
    {
      for (i = 0; i < *v4; ++i)
      {
        v8 = *(v3 + 4 * i);
        if (v8 > 0x7F)
        {
          goto LABEL_93;
        }

        if (v8 > 93)
        {
          if (v8 > 123)
          {
            switch(v8)
            {
              case '|':
                v8 = v5[9];
                goto LABEL_31;
              case '}':
                v8 = v5[10];
                goto LABEL_31;
              case '~':
                v8 = v5[11];
                goto LABEL_31;
            }
          }

          else
          {
            switch(v8)
            {
              case '^':
                v8 = v5[6];
                goto LABEL_31;
                v8 = v5[7];
                goto LABEL_31;
              case '{':
                v8 = v5[8];
                goto LABEL_31;
            }
          }
        }

        else
        {
          if (v8 > 90)
          {
            if (v8 == 91)
            {
              v8 = v5[3];
            }

            else if (v8 == 92)
            {
              v8 = v5[4];
            }

            else
            {
              v8 = v5[5];
            }

LABEL_31:
            if (v8 == -1)
            {
              goto LABEL_91;
            }

            goto LABEL_32;
          }

          switch(v8)
          {
            case '#':
              v8 = *v5;
              goto LABEL_31;
            case '$':
              v8 = v5[1];
              goto LABEL_31;
            case '@':
              v8 = v5[2];
              goto LABEL_31;
          }
        }

LABEL_32:
        *(v2 + 4 * i) = v8;
      }
    }

    return 0;
  }

  if (v6 < 1)
  {
    return 0;
  }

  i = 0;
  while (1)
  {
    v9 = *(v3 + 4 * i);
    if (*v5 != -1 && v9 == *v5)
    {
      v9 = 35;
      goto LABEL_51;
    }

    if (v9 == 35)
    {
      break;
    }

    v11 = v5[1];
    if (v11 != -1 && v9 == v11)
    {
      v9 = 36;
      goto LABEL_51;
    }

    if (v9 == 36)
    {
      break;
    }

    v13 = v5[2];
    if (v13 != -1 && v9 == v13)
    {
      v9 = 64;
      goto LABEL_51;
    }

    if (v9 == 64)
    {
      break;
    }

    v14 = v5[3];
    if (v14 != -1 && v9 == v14)
    {
      v9 = 91;
      goto LABEL_51;
    }

    if (v9 == 91)
    {
      break;
    }

    v15 = v5[4];
    if (v15 != -1 && v9 == v15)
    {
      v9 = 92;
      goto LABEL_51;
    }

    if (v9 == 92)
    {
      break;
    }

    v16 = v5[5];
    if (v16 != -1 && v9 == v16)
    {
      v9 = 93;
      goto LABEL_51;
    }

    if (v9 == 93)
    {
      break;
    }

    v17 = v5[6];
    if (v17 != -1 && v9 == v17)
    {
      v9 = 94;
      goto LABEL_51;
    }

    if (v9 == 94)
    {
      break;
    }

    v18 = v5[7];
    if (v18 != -1 && v9 == v18)
    {
      v9 = 96;
      goto LABEL_51;
    }

    if (v9 == 96)
    {
      break;
    }

    v19 = v5[8];
    if (v19 != -1 && v9 == v19)
    {
      v9 = 123;
      goto LABEL_51;
    }

    if (v9 == 123)
    {
      break;
    }

    v20 = v5[9];
    if (v20 != -1 && v9 == v20)
    {
      v9 = 124;
      goto LABEL_51;
    }

    if (v9 == 124)
    {
      break;
    }

    v21 = v5[10];
    if (v21 != -1 && v9 == v21)
    {
      v9 = 125;
      goto LABEL_51;
    }

    if (v9 == 125)
    {
      break;
    }

    v22 = v5[11];
    if (v22 != -1 && v9 == v22)
    {
      v9 = 126;
      goto LABEL_51;
    }

    if (v9 == 126)
    {
      break;
    }

    if (v9 > 0x7F)
    {
LABEL_91:
      v23 = 1;
      goto LABEL_94;
    }

LABEL_51:
    *(v2 + 4 * i++) = v9;
    if (i >= *v4)
    {
      return 0;
    }
  }

LABEL_93:
  v23 = 4;
LABEL_94:
  *v4 = i;
  return v23 & 0x9FFFFFFF | ((*(a1 + 64) & 3) << 29);
}

uint64_t _citrus_mapper_646_mapper_getops(_OWORD *a1)
{
  v1 = *&off_2A1A8F2E0;
  *a1 = _citrus_mapper_646_mapper_ops;
  a1[1] = v1;
  return 0;
}