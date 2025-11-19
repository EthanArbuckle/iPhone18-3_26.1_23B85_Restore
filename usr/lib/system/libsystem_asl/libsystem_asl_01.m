__asl_object_s *asl_msg_list_from_string(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = atoi(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0x100000002;
    while (1)
    {
      v6 = strchr(v1, 10);
      if (!v6)
      {
        break;
      }

      v1 = v6 + 1;
      v7 = asl_msg_from_string((v6 + 1));
      if (!v7)
      {
        break;
      }

      v8 = v7;
      asl_msg_list_insert(v5, 0xFFFFFFFF, v7);
      asl_msg_release(v8);
      if (!--v3)
      {
        return v5;
      }
    }

    asl_release(v5);
    return 0;
  }

  return v5;
}

void asl_msg_list_insert(uint64_t a1, unsigned int a2, asl_object_t obj)
{
  if (a1)
  {
    if (obj)
    {
      v5 = *(a1 + 8);
      if (v5 != -1)
      {
        if (v5 >= a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = *(a1 + 8);
        }

        type = asl_get_type(obj);
        if (type >= 2)
        {
          v8 = asl_object_count(obj);
          if (!v8)
          {
            return;
          }
        }

        else
        {
          v8 = 1;
        }

        v9 = *(a1 + 8);
        if (!((v9 + v8) >> 32))
        {
          v10 = reallocf(*(a1 + 16), 8 * (v9 + v8));
          *(a1 + 16) = v10;
          if (v10)
          {
            v11 = *(a1 + 8);
            if (v11 > v6)
            {
              v12 = 8 * v11;
              do
              {
                *(*(a1 + 16) + v12) = *(*(a1 + 16) + v12 - 8);
                LODWORD(v11) = v11 - 1;
                v12 -= 8;
              }

              while (v6 < v11);
            }

            asl_object_set_iteration_index(obj, 0);
            if (type >= 2)
            {
              if (v8 <= 1)
              {
                v13 = 1;
              }

              else
              {
                v13 = v8;
              }

              do
              {
                *(*(a1 + 16) + 8 * v6++) = asl_object_next(obj);
                --v13;
              }

              while (v13);
            }

            else
            {
              *(*(a1 + 16) + 8 * v6) = asl_retain(obj);
            }

            asl_object_set_iteration_index(obj, 0);
            *(a1 + 8) += v8;
          }

          else
          {
            *(a1 + 8) = 0;
          }
        }
      }
    }
  }
}

uint64_t asl_msg_list_count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t asl_msg_list_get_index(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      v3 = *(result + 16);
      if (v3)
      {
        return *(v3 + 8 * a2);
      }

      else
      {
        result = 0;
        *(v2 + 8) = 0;
      }
    }
  }

  return result;
}

void *asl_msg_list_remove_index(void *result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 2) > a2)
    {
      v4 = result[2];
      if (!v4)
      {
        goto LABEL_8;
      }

      asl_msg_release(*(v4 + 8 * a2));
      v5 = *(v3 + 2);
      if (a2 + 1 < v5)
      {
        v6 = 8 * (a2 + 1);
        v7 = ~a2 + v5;
        do
        {
          *(v3[2] + 8 * a2) = *(v3[2] + v6);
          v6 += 8;
          --v7;
        }

        while (v7);
      }

      v8 = v5 - 1;
      *(v3 + 2) = v8;
      result = reallocf(v3[2], 8 * v8);
      v3[2] = result;
      if (!result)
      {
LABEL_8:
        v3[1] = 0;
      }
    }
  }

  return result;
}

uint64_t asl_msg_list_next(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 12);
  if (v1 >= *(a1 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v2 = *(v2 + 8 * v1);
    *(a1 + 12) = v1 + 1;
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return v2;
}

uint64_t asl_msg_list_prev(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 12);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    if (v1 >= *(a1 + 8))
    {
      v1 = *(a1 + 8);
    }

    v3 = v1 - 1;
    *(a1 + 12) = v3;
    return *(v2 + 8 * v3);
  }

  else
  {
    v4 = 0;
    *(a1 + 8) = 0;
  }

  return v4;
}

uint64_t asl_msg_list_reset_iteration(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 8) < a2)
    {
      v2 = -1;
    }

    else
    {
      v2 = a2;
    }

    *(result + 12) = v2;
  }

  return result;
}

uint64_t asl_msg_list_search(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    v5 = 0;
    *(a1 + 8) = 0;
    return v5;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (!a2 || asl_msg_cmp(a2, *(*(a1 + 16) + 8 * v4)))
    {
      if (!v5)
      {
        v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
        v5 = v6;
        if (!v6)
        {
          return v5;
        }

        *v6 = 0x100000002;
      }

      asl_msg_list_insert(v5, 0xFFFFFFFF, *(*(a1 + 16) + 8 * v4));
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v5;
}

uint64_t asl_msg_list_match(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v27.tv_sec = 0;
  *&v27.tv_usec = 0;
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v26.tv_sec = 0;
    *&v26.tv_usec = 0;
    if (a6 && !gettimeofday(&v26, 0))
    {
      v15 = v26.tv_usec + a6 % 0xF4240;
      v16 = v15 > 0xF4240;
      if (v15 > 0xF4240)
      {
        v15 -= 1000000;
      }

      v24 = v15;
      if (v16)
      {
        v13 = v26.tv_sec + a6 / 0xF4240uLL + 1;
      }

      else
      {
        v13 = v26.tv_sec + a6 / 0xF4240uLL;
      }
    }

    else
    {
      v24 = 0;
      v13 = 0;
    }

    v17 = *(a1 + 8);
    v18 = v17 - 1;
    if (a7 < 0)
    {
      if (v17 <= a4)
      {
        LODWORD(a4) = v17 - 1;
      }

      v19 = -1;
      v18 = 0;
      goto LABEL_18;
    }

    if (v17 > a4)
    {
      v19 = 1;
LABEL_18:
      v20 = 0;
      v14 = 0;
      while (!a2)
      {
        v21 = 0;
        if (a3)
        {
          goto LABEL_21;
        }

LABEL_22:
        if (!v21)
        {
          if (!v14)
          {
            v22 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
            v14 = v22;
            if (!v22)
            {
              return v14;
            }

            *v22 = 0x100000002;
          }

          asl_msg_list_insert(v14, 0xFFFFFFFF, *(*(a1 + 16) + 8 * a4));
          ++v20;
        }

        if (v20 >= a5 || v13 && !gettimeofday(&v27, 0) && (v27.tv_sec > v13 || v27.tv_sec == v13 && v27.tv_usec > v24))
        {
          return v20;
        }

        LODWORD(a4) = a4 + v19;
        if (v18 == a4)
        {
          return v14;
        }
      }

      v21 = asl_msg_cmp_list(*(*(a1 + 16) + 8 * a4), a2) == 0;
      if (!a3)
      {
        goto LABEL_22;
      }

LABEL_21:
      *a3 = a4;
      goto LABEL_22;
    }

    if (a3)
    {
      v14 = 0;
      *a3 = v17;
      return v14;
    }

    return 0;
  }

  v14 = 0;
  *(a1 + 8) = 0;
  return v14;
}

uint64_t _jump_count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t _jump_next(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 12);
  if (v1 >= *(a1 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v2 = *(v2 + 8 * v1);
    *(a1 + 12) = v1 + 1;
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return v2;
}

uint64_t _jump_prev(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 12);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    if (v1 >= *(a1 + 8))
    {
      v1 = *(a1 + 8);
    }

    v3 = v1 - 1;
    *(a1 + 12) = v3;
    return *(v2 + 8 * v3);
  }

  else
  {
    v4 = 0;
    *(a1 + 8) = 0;
  }

  return v4;
}

uint64_t _jump_get_object_at_index(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      v3 = *(result + 16);
      if (v3)
      {
        return *(v3 + 8 * a2);
      }

      else
      {
        result = 0;
        *(v2 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t _jump_set_iteration_index(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 8) < a2)
    {
      v2 = -1;
    }

    else
    {
      v2 = a2;
    }

    *(result + 12) = v2;
  }

  return result;
}

void _jump_append_0(uint64_t a1, asl_object_t obj)
{
  if (asl_get_type(obj) <= 1)
  {

    asl_msg_list_insert(a1, 0xFFFFFFFF, obj);
  }
}

void _jump_prepend(uint64_t a1, asl_object_t obj)
{
  if (asl_get_type(obj) <= 1)
  {

    asl_msg_list_insert(a1, 0, obj);
  }
}

uint64_t _jump_search_0(uint64_t a1, asl_object_t obj)
{
  type = asl_get_type(obj);
  if (obj && type > 1)
  {
    return 0;
  }

  return asl_msg_list_search(a1, obj);
}

uint64_t _jump_match_0(uint64_t a1, asl_object_t obj, unint64_t *a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  type = asl_get_type(obj);
  if (obj && type != 2)
  {
    return 0;
  }

  return asl_msg_list_match(a1, obj, a3, a4, a5, a6, a7);
}

asl_object_t asl_file_retain(asl_object_t obj)
{
  if (obj)
  {
    asl_retain(obj);
  }

  return obj;
}

void asl_file_release(asl_object_t obj)
{
  if (obj)
  {
    asl_release(obj);
  }
}

uint64_t asl_file_close(__asl_object_s *a1)
{
  if (a1)
  {
    asl_release(a1);
  }

  return 0;
}

uint64_t asl_file_open_write_fd(int a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  result = 9999;
  if ((a1 & 0x80000000) == 0 && a2)
  {
    v5 = malloc_type_calloc(1uLL, 0x80uLL, 0x10B0040093DCD73uLL);
    if (!v5)
    {
      result = 9;
      goto LABEL_10;
    }

    v6 = v5;
    *v5 = 0x100000003;
    v7 = fdopen(a1, "w+");
    v6[13] = v7;
    if (v7)
    {
      v14 = 0u;
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v15 = 0u;
      qmemcpy(__ptr, "ASL DB", sizeof(__ptr));
      *(&v14 + 6) = 0x2000000;
      v8 = time(0);
      v6[11] = v8;
      *(&v15 + 2) = asl_core_htonq(v8);
      *(&v15 + 10) = 0x80000000;
      v9 = fwrite(__ptr, 0x50uLL, 1uLL, v6[13]);
      v10 = v6[13];
      if (v9 == 1)
      {
        fflush(v10);
        v6[12] = 80;
        v11 = malloc_type_malloc(0x11AuLL, 0x100004000313F17uLL);
        result = 0;
        v6[15] = v11;
        *a2 = v6;
        goto LABEL_10;
      }

      fclose(v10);
    }

    free(v6);
    result = 9999;
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_file_open_write(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(&v22, 0, sizeof(v22));
  if (!stat(a1, &v22))
  {
    if ((v22.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_27;
    }

    if (v22.st_size)
    {
      v10 = malloc_type_calloc(1uLL, 0x80uLL, 0x10B0040093DCD73uLL);
      if (!v10)
      {
        set_position_last = 9;
        goto LABEL_28;
      }

      v11 = v10;
      *v10 = 0x100000003;
      v12 = fopen(a1, "r+");
      *(v11 + 104) = v12;
      if (v12)
      {
        if (fread(&__ptr, 0x50uLL, 1uLL, v12) <= 0)
        {
          goto LABEL_38;
        }

        v13 = __ptr == 541872961 && v24 == 16964;
        if (v13 && v25 == 0x2000000)
        {
          *(v11 + 88) = asl_core_ntohq(v27);
          *(v11 + 40) = asl_core_ntohq(v26);
          v14 = asl_core_ntohq(v28);
          *(v11 + 48) = v14;
          st_size = v22.st_size;
          *(v11 + 96) = v22.st_size;
          if (v14 + 122 > st_size)
          {
LABEL_18:
            *(v11 + 48) = 0;
LABEL_19:
            if (*(v11 + 12) == 1)
            {
              set_position_last = 9999;
LABEL_32:
              asl_release(v11);
              goto LABEL_28;
            }

            set_position_last = asl_file_read_set_position_last(v11, 0);
            if (set_position_last)
            {
              goto LABEL_32;
            }

            *(v11 + 64) = *(v11 + 72);
            if (!fseeko(*(v11 + 104), 0, 2))
            {
              *(v11 + 96) = ftello(*(v11 + 104));
              set_position_last = 0;
              *(v11 + 120) = malloc_type_malloc(0x11AuLL, 0x100004000313F17uLL);
              *a5 = v11;
              goto LABEL_28;
            }

LABEL_38:
            asl_release(v11);
            set_position_last = 7;
            goto LABEL_28;
          }

          uint64 = asl_file_read_uint32(v11, v14 + 2, &v21);
          if (!uint64)
          {
            v20 = *(v11 + 48);
            if (v20 + v21 > *(v11 + 96))
            {
              goto LABEL_18;
            }

            if (!v20)
            {
              goto LABEL_19;
            }

            uint64 = asl_file_read_uint64(v11, v20 + 14, (v11 + 56));
            if (!uint64)
            {
              goto LABEL_19;
            }
          }

          set_position_last = uint64;
          goto LABEL_32;
        }

        asl_release(v11);
LABEL_27:
        set_position_last = 2;
        goto LABEL_28;
      }

      free(v11);
    }

    else
    {
      v16 = open(a1, 2050, a2);
      if ((v16 & 0x80000000) == 0)
      {
        set_position_last = asl_file_open_write_fd(v16, a5);
        goto LABEL_28;
      }
    }

LABEL_25:
    set_position_last = 9999;
    goto LABEL_28;
  }

  if (*__error() != 2)
  {
    goto LABEL_25;
  }

  v8 = open(a1, 2562, a2);
  if (v8 < 0)
  {
    goto LABEL_25;
  }

  set_position_last = asl_file_open_write_fd(v8, a5);
  if (set_position_last)
  {
    unlink(a1);
  }

LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
  return set_position_last;
}

uint64_t asl_file_read_uint32(uint64_t a1, off_t a2, _DWORD *a3)
{
  v4 = *(a1 + 104);
  if (!v4)
  {
    return 2;
  }

  if ((a2 + 4) > *(a1 + 96))
  {
    return 7;
  }

  if (fseeko(v4, a2, 0))
  {
    return 7;
  }

  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, *(a1 + 104)) != 1)
  {
    return 7;
  }

  result = 0;
  if (a3)
  {
    *a3 = bswap32(__ptr);
  }

  return result;
}

uint64_t asl_file_read_uint64(uint64_t a1, off_t a2, unint64_t *a3)
{
  v4 = *(a1 + 104);
  if (!v4)
  {
    return 2;
  }

  if ((a2 + 8) > *(a1 + 96))
  {
    return 7;
  }

  if (fseeko(v4, a2, 0))
  {
    return 7;
  }

  __ptr = 0;
  if (fread(&__ptr, 8uLL, 1uLL, *(a1 + 104)) != 1)
  {
    return 7;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = asl_core_ntohq(__ptr);
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t asl_file_read_set_position(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  if (a2 == 3)
  {

    return asl_file_read_set_position_last(a1, 0);
  }

  else
  {
    if (!a2)
    {
      *(a1 + 80) = 0;
      v5 = *(a1 + 40);
      *(a1 + 72) = v5;
      if (!v5)
      {
        return 0;
      }

      return asl_file_read_uint64(a1, v5 + 14, (a1 + 80));
    }

    v11 = 0;
    if (a2 == 1)
    {
      v6 = *(a1 + 72);
      result = 14;
      if (!v6)
      {
        return result;
      }

      if (v6 == *(a1 + 40))
      {
        return result;
      }

      result = asl_file_read_uint32(a1, v6 + 2, &v11);
      if (result)
      {
        return result;
      }

      v7 = *(a1 + 72) + v11 - 2;
LABEL_24:
      *(a1 + 80) = 0;
      v12 = 0;
      if (asl_file_read_uint64(a1, v7, &v12))
      {
        return 7;
      }

      v9 = v12;
      if (v12 + 122 > *(a1 + 96))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 72);
      if (a2 == 1)
      {
        if (v12 < v10)
        {
          *(a1 + 72) = v12;
          if (!v9)
          {
            return 14;
          }

          return asl_file_read_uint64(a1, v9 + 14, (a1 + 80));
        }
      }

      else if (v12 > v10)
      {
        *(a1 + 72) = v12;
        return asl_file_read_uint64(a1, v9 + 14, (a1 + 80));
      }

LABEL_29:
      *(a1 + 72) = 0;
      return 14;
    }

    if (a2 != 2)
    {
      return 1;
    }

    v8 = *(a1 + 72);
    result = 14;
    if (v8 && v8 != *(a1 + 48))
    {
      v7 = v8 + 6;
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t asl_file_compact(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  v13 = 0;
  v14 = 0;
  memset(&v15, 0, sizeof(v15));
  if (!stat(a2, &v15) || *__error() != 2)
  {
    return 9999;
  }

  set_position = asl_file_read_set_position(a1, 0);
  if (set_position)
  {
    return set_position;
  }

  v16 = 0;
  set_position = asl_file_open_write(a2, a3, v7, v8, &v16);
  if (set_position)
  {
    return set_position;
  }

  *(v16 + 2) = 12;
  while (1)
  {
    v11 = *(a1 + 72);
    if (!v11)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v14 = 0;
    if (*(a1 + 12) == 1)
    {
      v9 = 9999;
      goto LABEL_22;
    }

    pos = asl_file_fetch_pos(a1, v11, 1, &v14);
    if (pos)
    {
      break;
    }

    v13 = 0;
    v9 = asl_file_save(v16, v14, &v13);
    asl_msg_release(v14);
    if (v9)
    {
      goto LABEL_22;
    }
  }

  v9 = pos;
LABEL_22:
  if (v16)
  {
    asl_release(v16);
  }

  return v9;
}

uint64_t asl_file_fetch_next(uint64_t a1, int **a2)
{
  if (!a1)
  {
    return 2;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  return asl_file_fetch_pos(a1, *(a1 + 72), 1, a2);
}

uint64_t asl_file_save(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (a1 && *(a1 + 104))
  {
    if (a2)
    {
      if (*(a1 + 8))
      {
        v18 = 11;
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0;
        v39 = -1;
        if (a3 && *a3)
        {
          v39 = *a3;
        }

        __s1 = 0;
        v36 = 0;
        v41 = xmmword_1DF925530;
        LODWORD(v42) = -1;
        *&v40 = 0;
        *(&v40 + 1) = 0x700000000;
        v46 = *(a1 + 64);
        __s = 0;
        v6 = asl_msg_fetch(a2, 0, &__s1, &__s, 0);
        if (v6 != -1)
        {
          v7 = v6;
          __ptr = 0;
          v8 = __src;
          while (1)
          {
            v9 = __s1;
            if (!__s1)
            {
              goto LABEL_44;
            }

            if (!strcmp(__s1, "Time"))
            {
              if (__s)
              {
                *&v40 = asl_core_parse_time(__s, 0);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "TimeNanoSec"))
            {
              if (__s)
              {
                DWORD2(v40) = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "Host"))
            {
              v12 = __s;
              if (!__s)
              {
                goto LABEL_44;
              }

              v13 = &v43;
              goto LABEL_43;
            }

            if (!strcmp(v9, "Sender"))
            {
              v12 = __s;
              if (!__s)
              {
                goto LABEL_44;
              }

              v13 = &v43 + 1;
              goto LABEL_43;
            }

            if (!strcmp(v9, "PID"))
            {
              if (__s)
              {
                v41.i32[0] = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "RefPID"))
            {
              if (__s)
              {
                DWORD1(v42) = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "UID"))
            {
              if (__s)
              {
                v41.i32[1] = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "GID"))
            {
              if (__s)
              {
                v41.i32[2] = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "Level"))
            {
              if (__s)
              {
                WORD6(v40) = atoi(__s);
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "Message"))
            {
              v12 = __s;
              if (!__s)
              {
                goto LABEL_44;
              }

              v13 = &v44 + 1;
              goto LABEL_43;
            }

            if (!strcmp(v9, "Facility"))
            {
              v12 = __s;
              if (!__s)
              {
                goto LABEL_44;
              }

              v13 = &v44;
              goto LABEL_43;
            }

            if (!strcmp(v9, "RefProc"))
            {
              break;
            }

            if (!strcmp(v9, "Session"))
            {
              v12 = __s;
              if (!__s)
              {
                goto LABEL_44;
              }

              v13 = &v45 + 1;
LABEL_43:
              v10 = asl_file_string_encode(a1, v12, v13);
              if (v10)
              {
                goto LABEL_102;
              }

              goto LABEL_44;
            }

            if (!strcmp(v9, "ReadUID"))
            {
              v14 = HIWORD(v40);
              if ((BYTE14(v40) & 1) != 0 || !__s)
              {
                goto LABEL_44;
              }

              v41.i32[3] = atoi(__s);
              v15 = v14 | 1;
LABEL_70:
              HIWORD(v40) = v15;
              goto LABEL_44;
            }

            if (!strcmp(v9, "ReadGID"))
            {
              v16 = HIWORD(v40);
              if ((BYTE14(v40) & 2) != 0 || !__s)
              {
                goto LABEL_44;
              }

              LODWORD(v42) = atoi(__s);
              v15 = v16 | 2;
              goto LABEL_70;
            }

            if (!strcmp(v9, "ASLMessageID"))
            {
              if ((*(a1 + 8) & 8) != 0)
              {
                v17 = atoll(__s);
                v39 = v17;
                if (a3)
                {
                  *a3 = v17;
                }
              }
            }

            else if (strcmp(v9, "ASLOption"))
            {
              v10 = asl_file_string_encode(a1, v9, &v37);
              if (v10 || (v36 = 0, __s) && (v10 = asl_file_string_encode(a1, __s, &v36), v10))
              {
LABEL_102:
                v18 = v10;
                free(__ptr);
                goto LABEL_76;
              }

              v11 = DWORD2(v42);
              if (DWORD2(v42) >= 0x80)
              {
                __ptr = reallocf(__ptr, 8 * (DWORD2(v42) + 2));
                if (!__ptr)
                {
                  goto LABEL_83;
                }

                v11 = DWORD2(v42);
                v8 = __ptr;
                if (DWORD2(v42) == 128)
                {
                  memcpy(__ptr, __src, 0x400uLL);
                  v11 = 128;
                }
              }

              v8[v11] = v37;
              DWORD2(v42) = v11 + 2;
              v8[v11 + 1] = v36;
            }

LABEL_44:
            v7 = asl_msg_fetch(a2, v7, &__s1, &__s, 0);
            if (v7 == -1)
            {
              v21 = DWORD2(v42);
              v22 = __ptr;
              goto LABEL_80;
            }
          }

          v12 = __s;
          if (!__s)
          {
            goto LABEL_44;
          }

          v13 = &v45;
          goto LABEL_43;
        }

        v21 = 0;
        v22 = 0;
        v8 = __src;
LABEL_80:
        v23 = 8 * v21;
        v24 = *(a1 + 120);
        if (v24 && 8 * v21 + 122 <= 0x11A)
        {
          v24[15] = 0u;
          v24[16] = 0u;
          v24[13] = 0u;
          v24[14] = 0u;
          v24[11] = 0u;
          v24[12] = 0u;
          v24[9] = 0u;
          v24[10] = 0u;
          v24[7] = 0u;
          v24[8] = 0u;
          v24[5] = 0u;
          v24[6] = 0u;
          v24[3] = 0u;
          v24[4] = 0u;
          v24[1] = 0u;
          v24[2] = 0u;
          *v24 = 0u;
          *(v24 + 266) = 0u;
          v25 = *(a1 + 120);
          if (!v25)
          {
LABEL_83:
            v18 = 9;
            goto LABEL_76;
          }
        }

        else
        {
          v25 = malloc_type_calloc(1uLL, (v23 + 122), 0xA7635C32uLL);
          if (!v25)
          {
            goto LABEL_83;
          }
        }

        v26 = v39;
        if (v39 == -1)
        {
          v26 = *(a1 + 56) + 1;
          *(a1 + 56) = v26;
          v39 = v26;
        }

        *v25 = 0;
        *(v25 + 2) = bswap32(v23 + 116);
        *(v25 + 6) = asl_core_htonq(v38);
        *(v25 + 14) = asl_core_htonq(v26);
        *(v25 + 22) = asl_core_htonq(v40);
        *(v25 + 30) = bswap32(DWORD2(v40));
        *(v25 + 17) = bswap32(WORD6(v40)) >> 16;
        *(v25 + 18) = bswap32(HIWORD(v40)) >> 16;
        *(v25 + 38) = vrev32q_s8(v41);
        *(v25 + 54) = vrev32_s8(*&v42);
        *(v25 + 62) = bswap32(v21);
        *(v25 + 66) = asl_core_htonq(v43);
        *(v25 + 74) = asl_core_htonq(*(&v43 + 1));
        *(v25 + 82) = asl_core_htonq(v44);
        *(v25 + 90) = asl_core_htonq(*(&v44 + 1));
        *(v25 + 98) = asl_core_htonq(v45);
        *(v25 + 106) = asl_core_htonq(*(&v45 + 1));
        v27 = (v25 + 114);
        v28 = DWORD2(v42);
        if (DWORD2(v42))
        {
          do
          {
            v29 = *v8++;
            *v27++ = asl_core_htonq(v29);
            --v28;
          }

          while (v28);
        }

        *v27 = asl_core_htonq(v46);
        free(v22);
        if (!fseeko(*(a1 + 104), 0, 2))
        {
          v30 = ftello(*(a1 + 104));
          *(a1 + 48) = v30;
          v36 = asl_core_htonq(v30);
          fwrite(v25, (v23 + 122), 1uLL, *(a1 + 104));
          fflush(*(a1 + 104));
          if (v25 != *(a1 + 120))
          {
            free(v25);
          }

          v31 = *(a1 + 64);
          v32 = v31 ? v31 + 6 : 16;
          if (!fseeko(*(a1 + 104), v32, 0))
          {
            v18 = 8;
            if (fwrite(&v36, 8uLL, 1uLL, *(a1 + 104)) != 1)
            {
              goto LABEL_76;
            }

            if (!fseeko(*(a1 + 104), 37, 0))
            {
              v18 = 8;
              if (fwrite(&v36, 8uLL, 1uLL, *(a1 + 104)) != 1)
              {
                goto LABEL_76;
              }

              if (!fseeko(*(a1 + 104), 0, 2))
              {
                fflush(*(a1 + 104));
                v18 = 0;
                *(a1 + 96) = ftello(*(a1 + 104));
                *(a1 + 64) = *(a1 + 48);
                goto LABEL_76;
              }
            }
          }
        }

        v18 = 8;
      }
    }

    else
    {
      v18 = 5;
    }
  }

  else
  {
    v18 = 2;
  }

LABEL_76:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t asl_file_filter(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, int a6, int a7, _DWORD *a8, void (*a9)(int *))
{
  v24 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  v25 = 0;
  memset(&v26, 0, sizeof(v26));
  if (!stat(a2, &v26) || *__error() != 2)
  {
    return 9999;
  }

  set_position = asl_file_read_set_position(a1, 0);
  if (set_position)
  {
    return set_position;
  }

  v27 = 0;
  set_position = asl_file_open_write(a2, a5, v16, v17, &v27);
  if (set_position)
  {
    return set_position;
  }

  v20 = 0;
  *(v27 + 2) = 12;
  while (1)
  {
    v21 = *(a1 + 72);
    if (!v21)
    {
      v18 = 0;
      goto LABEL_32;
    }

    v25 = 0;
    if (*(a1 + 12) == 1)
    {
      v18 = 9999;
      goto LABEL_32;
    }

    pos = asl_file_fetch_pos(a1, v21, 1, &v25);
    if (pos)
    {
      break;
    }

    if ((asl_msg_cmp_list(v25, a3) == 0) == (a4 & 1))
    {
      if (a9)
      {
        val_for_key = asl_msg_get_val_for_key(v25, "ASLAuxURL");
        if (val_for_key)
        {
          a9(val_for_key);
        }
      }

      v18 = 0;
    }

    else
    {
      v18 = asl_file_save(v27, v25, &v24);
      if (!v18)
      {
        ++v20;
      }
    }

    asl_msg_release(v25);
    if (v18)
    {
      goto LABEL_32;
    }
  }

  v18 = pos;
LABEL_32:
  if (v27)
  {
    asl_release(v27);
  }

  if (a8)
  {
    *a8 = v20;
  }

  return v18;
}

uint64_t asl_file_filter_level(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, void (*a8)(void))
{
  v24 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  v27 = 0;
  v25 = 0;
  v22 = 0;
  memset(&v26, 0, sizeof(v26));
  if (!stat(a2, &v26) || *__error() != 2)
  {
    return 9999;
  }

  if (fseeko(*(a1 + 104), 36, 0))
  {
    return 7;
  }

  __ptr = 0;
  fread(&__ptr, 1uLL, 1uLL, *(a1 + 104));
  result = asl_file_read_set_position(a1, 0);
  if (!result)
  {
    v27 = 0;
    result = asl_file_open_write(a2, a4, v15, v16, &v27);
    if (!result)
    {
      v17 = 0;
      *(v27 + 8) = 12;
      while (1)
      {
        v18 = *(a1 + 72);
        if (!v18)
        {
          break;
        }

        v25 = 0;
        if (*(a1 + 12) == 1 || asl_file_fetch_pos(a1, v18, 1, &v25))
        {
          break;
        }

        if (v25)
        {
          val_for_key = asl_msg_get_val_for_key(v25, "Level");
          if (val_for_key)
          {
            if ((a3 >> atoi(val_for_key)))
            {
              v20 = asl_file_save(v27, v25, &v24);
              v21 = v20 == 0;
              if (!v20)
              {
                ++v17;
              }
            }

            else
            {
              if (a8 && asl_msg_get_val_for_key(v25, "ASLAuxURL"))
              {
                a8();
              }

              v21 = 1;
            }

            asl_msg_release(v25);
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            break;
          }
        }
      }

      v22 = __ptr & a3;
      if (fseeko(*(v27 + 104), 36, 0))
      {
        return 7;
      }

      fwrite(&v22, 1uLL, 1uLL, *(v27 + 104));
      if (v27)
      {
        asl_release(v27);
      }

      result = 0;
      if (a7)
      {
        *a7 = v17;
      }
    }
  }

  return result;
}

uint64_t asl_file_string_encode(uint64_t a1, char *__s, unint64_t *a3)
{
  if (!*(a1 + 104))
  {
    return 2;
  }

  v6 = strlen(__s);
  if (v6 <= 7)
  {
    v21 = v6 | 0x80u;
    __memcpy_chk();
    v7 = asl_core_ntohq(v21);
LABEL_4:
    result = 0;
    *a3 = v7;
    return result;
  }

  v9 = v6 + 1;
  if (v9 > 0x6C)
  {
    v10 = 0;
  }

  else
  {
    v10 = asl_core_string_hash(__s, v6 + 1);
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 24);
      while (1)
      {
        v14 = v13;
        if (v10 == *(v13 + 8) && !strcmp(__s, (v13 + 24)))
        {
          break;
        }

        v13 = v14[2];
        v12 = v14;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      if (v12)
      {
        v12[2] = v14[2];
        v14[2] = v11;
        *(a1 + 24) = v14;
      }

      v7 = *v14;
      goto LABEL_4;
    }
  }

LABEL_14:
  v7 = ftello(*(a1 + 104));
  __ptr = 256;
  if (fwrite(&__ptr, 2uLL, 1uLL, *(a1 + 104)) != 1)
  {
    return 8;
  }

  v22 = bswap32(v9);
  if (fwrite(&v22, 4uLL, 1uLL, *(a1 + 104)) != 1 || fwrite(__s, v9, 1uLL, *(a1 + 104)) != 1)
  {
    return 8;
  }

  fflush(*(a1 + 104));
  if (v9 > 0x6C)
  {
    goto LABEL_4;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    *(a1 + 32) = 0;
LABEL_25:
    *v15 = v7;
    v15[2] = v10;
    v16 = *(a1 + 24);
    *(v15 + 2) = v16;
    memcpy(v15 + 6, __s, v9);
    *(a1 + 24) = v15;
    v17 = *(a1 + 16);
    if ((*(a1 + 8) & 4) != 0 || v17 != 128)
    {
      *(a1 + 16) = v17 + 1;
    }

    else
    {
      do
      {
        v18 = v16;
        v19 = v15;
        v16 = *(v16 + 16);
        v15 = v18;
      }

      while (v16);
      *(v19 + 2) = 0;
      if (*(a1 + 32))
      {
        free(v18);
      }

      else
      {
        *(a1 + 32) = v18;
        *(v18 + 16) = 0;
        v18[6] = 0u;
        v18[7] = 0u;
        v18[4] = 0u;
        v18[5] = 0u;
        v18[2] = 0u;
        v18[3] = 0u;
        *v18 = 0u;
        v18[1] = 0u;
      }
    }

    goto LABEL_4;
  }

  v15 = malloc_type_calloc(1uLL, 0x88uLL, 0x10200408BEEBE60uLL);
  if (v15)
  {
    goto LABEL_25;
  }

  return 9;
}

uint64_t asl_file_open_read(const char *a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(&v18, 0, sizeof(v18));
  if (stat(a1, &v18))
  {
    v4 = 9999;
    goto LABEL_13;
  }

  v5 = fopen(a1, "r");
  if (v5)
  {
    v6 = v5;
    if (fread(&__ptr, 0x50uLL, 1uLL, v5) <= 0 || (__ptr == 541872961 ? (v7 = v22 == 16964) : (v7 = 0), !v7))
    {
      fclose(v6);
      v4 = 2;
      goto LABEL_13;
    }

    v19 = 0;
    v10 = v23;
    if (v23 != 0x1000000 || (fclose(v6), v4 = asl_legacy1_open(a1, &v19), !v4))
    {
      v11 = malloc_type_calloc(1uLL, 0x80uLL, 0x10B0040093DCD73uLL);
      if (!v11)
      {
        fclose(v6);
        v4 = 9;
        goto LABEL_13;
      }

      v12 = v11;
      *v11 = 0x100000003;
      v11[13] = v6;
      *(v11 + 2) = 1;
      *(v11 + 3) = bswap32(v10);
      v13 = v19;
      if (v19)
      {
        v4 = 0;
        *(v11 + 2) = 17;
        v11[14] = v13;
LABEL_25:
        *a2 = v12;
        goto LABEL_13;
      }

      v11[5] = asl_core_ntohq(v24);
      v14 = asl_core_ntohq(v25);
      *(v12 + 48) = v14;
      st_size = v18.st_size;
      *(v12 + 96) = v18.st_size;
      if (v14 + 122 > st_size)
      {
        goto LABEL_21;
      }

      uint64 = asl_file_read_uint32(v12, v14 + 2, &v20);
      if (uint64)
      {
        goto LABEL_27;
      }

      if (*(v12 + 48) + v20 > *(v12 + 96))
      {
LABEL_21:
        *(v12 + 48) = 0;
      }

      v16 = *(v12 + 40);
      *(v12 + 72) = v16;
      if (!v16 || (uint64 = asl_file_read_uint64(v12, v16 + 14, (v12 + 80)), !uint64))
      {
        v4 = 0;
        goto LABEL_25;
      }

LABEL_27:
      v4 = uint64;
      fclose(*(v12 + 104));
      free(v12);
    }
  }

  else if (*__error() == 13)
  {
    v4 = 10;
  }

  else
  {
    v4 = 9999;
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t asl_file_read_set_position_last(uint64_t a1, int a2)
{
  if (a2 || (v3 = *(a1 + 48)) == 0)
  {
    v5 = *(a1 + 40);
    *(a1 + 72) = v5;
    *(a1 + 80) = 0;
    *(a1 + 20) = 0;
    while (1)
    {
      v8 = 0;
      result = asl_file_read_uint64(a1, v5 + 6, &v8);
      if (result)
      {
        break;
      }

      v5 = v8;
      v6 = *(a1 + 72);
      if (v8 + 122 > *(a1 + 96) || v8 <= v6)
      {
        v8 = 0;
        ++*(a1 + 20);
        if (v6)
        {
          asl_file_read_uint64(a1, v6 + 14, (a1 + 80));
        }

        return 0;
      }

      ++*(a1 + 20);
      *(a1 + 72) = v5;
    }
  }

  else
  {
    *(a1 + 72) = v3;

    return asl_file_read_uint64(a1, v3 + 14, (a1 + 80));
  }

  return result;
}

uint64_t asl_file_fetch_pos(uint64_t a1, unint64_t a2, int a3, int **a4)
{
  if (!*(a1 + 104))
  {
    return 2;
  }

  if (!a4)
  {
    return 1;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    return 12;
  }

  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v31 = 0;
  result = asl_file_fetch_object(a1, 0, a2, &v31, &v25);
  if (!result && v31)
  {
    if (v25 <= 0x73 || 8 * bswap32(*(v31 + 14)) + 116 > v25)
    {
      free(v31);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      return 7;
    }

    v8 = asl_msg_new(0);
    v9 = v31;
    if (!v8)
    {
      free(v31);
      return 9;
    }

    v10 = v8;
    v11 = asl_core_ntohq(*v31);
    v30 = (v9 + 8);
    asl_file_fetch_helper_64(&v30, v10, "ASLMessageID");
    asl_file_fetch_helper_64(&v30, v10, "Time");
    asl_file_fetch_helper_32(&v30, v10, "TimeNanoSec", 0, 0);
    asl_file_fetch_helper_16(&v30, v10, "Level");
    v30 = (v30 + 2);
    asl_file_fetch_helper_32(&v30, v10, "PID", 0, 0);
    asl_file_fetch_helper_32(&v30, v10, "UID", 1, -1);
    asl_file_fetch_helper_32(&v30, v10, "GID", 1, -1);
    asl_file_fetch_helper_32(&v30, v10, "ReadUID", 1, -1);
    asl_file_fetch_helper_32(&v30, v10, "ReadGID", 1, -1);
    asl_file_fetch_helper_32(&v30, v10, "RefPID", 1, 0);
    v12 = *v30;
    v30 = (v30 + 4);
    object = 0;
    asl_file_fetch_helper_str(a1, &v30, v10, "Host", &object);
    if (object || (asl_file_fetch_helper_str(a1, &v30, v10, "Sender", &object), object) || (asl_file_fetch_helper_str(a1, &v30, v10, "Facility", &object), object) || (asl_file_fetch_helper_str(a1, &v30, v10, "Message", &object), object) || (asl_file_fetch_helper_str(a1, &v30, v10, "RefProc", &object), object) || (asl_file_fetch_helper_str(a1, &v30, v10, "Session", &object), object))
    {
LABEL_22:
      asl_msg_release(v10);
      free(v31);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      return object;
    }

    v13 = bswap32(v12);
    v14 = v30;
    if (v13 >= 2)
    {
      v15 = v13 >> 1;
      while (1)
      {
        v16 = v14;
        v28 = 0;
        v29 = 0;
        v26 = 0;
        v17 = asl_core_ntohq(*v14);
        object = asl_file_fetch_object(a1, 1, v17, &v29, &v26);
        if (object)
        {
          goto LABEL_22;
        }

        v18 = asl_core_ntohq(v16[1]);
        v26 = 0;
        if (v18)
        {
          v19 = 1;
          object = asl_file_fetch_object(a1, 1, v18, &v28, &v26);
          if (object)
          {
            free(v29);
            goto LABEL_22;
          }
        }

        else
        {
          v19 = object == 0;
        }

        v20 = v29;
        if (v19 && v29)
        {
          asl_msg_set_key_val(v10, v29, v28);
          v20 = v29;
        }

        free(v20);
        free(v28);
        v14 = v16 + 2;
        if (!--v15)
        {
          v14 = v16 + 2;
          break;
        }
      }
    }

    v21 = asl_core_ntohq(*v14);
    free(v31);
    if (a3 < 0)
    {
      if (!v21)
      {
        v11 = 0;
        goto LABEL_44;
      }

      v22 = (a1 + 72);
      v11 = v21;
      if (v21 < *(a1 + 72))
      {
        goto LABEL_44;
      }
    }

    else if (!v11 || (v22 = (a1 + 72), v11 > *(a1 + 72)))
    {
LABEL_44:
      *(a1 + 72) = v11;
      *(a1 + 80) = 0;
      v23 = (a1 + 72);
      if (v11)
      {
        if (v11 + 14 > *(a1 + 96))
        {
          result = 0;
          *v23 = 0;
          *(a1 + 80) = 0;
LABEL_51:
          *a4 = v10;
          return result;
        }

        object = fseeko(*(a1 + 104), v11 + 14, 0);
        if (object || (__ptr = 0, object = fread(&__ptr, 8uLL, 1uLL, *(a1 + 104)), object != 1))
        {
          asl_msg_release(v10);
          *v23 = 0;
          *(a1 + 80) = 0;
          return 7;
        }

        *(a1 + 80) = asl_core_ntohq(__ptr);
      }

      result = 0;
      goto LABEL_51;
    }

    result = 0;
    *v22 = 0;
    v22[1] = 0;
    return result;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t asl_file_fetch_previous(uint64_t a1, int **a2)
{
  if (!a1)
  {
    return 2;
  }

  if (*(a1 + 12) == 1)
  {
    return 9999;
  }

  return asl_file_fetch_pos(a1, *(a1 + 72), -1, a2);
}

uint64_t asl_file_fetch(uint64_t a1, unint64_t a2, int **a3)
{
  if (!a1)
  {
    return 2;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    return 12;
  }

  if (*(a1 + 12) == 1)
  {
    if (a3)
    {
      v7 = *(a1 + 112);

      return asl_legacy1_fetch(v7, a2, a3);
    }

    return 0;
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    goto LABEL_12;
  }

  result = asl_file_read_set_position(a1, 0);
  if (!result)
  {
    v8 = *(a1 + 80);
    if (!v8)
    {
      return 4;
    }

LABEL_12:
    while (v8 < a2)
    {
      result = asl_file_read_set_position(a1, 2);
      if (result)
      {
        return result;
      }

      v8 = *(a1 + 80);
      if (v8 - 1 >= a2)
      {
        return 4;
      }
    }

    while (v8 > a2)
    {
      result = asl_file_read_set_position(a1, 1);
      if (!result)
      {
        v8 = *(a1 + 80);
        result = 4;
        if (v8 >= a2 && v8 != 0)
        {
          continue;
        }
      }

      return result;
    }

    if (v8 != a2)
    {
      return 4;
    }

    if (!a3)
    {
      return 0;
    }

    v10 = *(a1 + 72);

    return asl_file_fetch_pos(a1, v10, 1, a3);
  }

  return result;
}

uint64_t asl_file_cursor(uint64_t result)
{
  if (result)
  {
    if ((*(result + 8) & 1) != 0 && *(result + 12) != 1)
    {
      return *(result + 80);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t asl_file_match_start(uint64_t a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*(a1 + 12) == 1)
  {
    return 2;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    return 12;
  }

  if (a3 < 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if ((a3 & 0x80000000) == 0)
  {
    result = asl_file_read_set_position(a1, 0);
    if (result)
    {
      return result;
    }

    while (1)
    {
LABEL_14:
      v8 = *(a1 + 80);
      if (a3 < 0)
      {
        if (v8 <= a2)
        {
          return 0;
        }
      }

      else if (v8 >= a2)
      {
        return 0;
      }

      result = asl_file_read_set_position(a1, v7);
      if (result)
      {
        return result;
      }
    }
  }

  result = asl_file_read_set_position_last(a1, 0);
  if (!result)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t asl_file_match_next(uint64_t a1, uint64_t a2, __asl_object_s **a3, void *a4, int a5)
{
  if (!a1)
  {
    return 2;
  }

  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 12) == 1)
  {
    return 2;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    return 12;
  }

  if (!*(a1 + 72))
  {
    return 14;
  }

  *a3 = 0;
  if (a2)
  {
    v9 = *(a2 + 8) == 0;
  }

  else
  {
    v9 = 1;
  }

  v13 = 0;
  *a4 = *(a1 + 80);
  result = asl_file_fetch_pos(a1, *(a1 + 72), a5, &v13);
  switch(result)
  {
    case 0:
      if (v9)
      {
        goto LABEL_28;
      }

      if (*(a2 + 8))
      {
        v10 = 0;
        do
        {
          v11 = asl_msg_cmp(*(*(a2 + 16) + 8 * v10++), v13);
        }

        while (v10 < *(a2 + 8) && v11 == 0);
        if (v11)
        {
LABEL_28:
          result = 0;
          *a3 = v13;
          return result;
        }
      }

      *a3 = 0;
      asl_msg_release(v13);
      return 13;
    case 0xA:
      return 13;
    case 1:
      if (*(a1 + 72))
      {
        return 1;
      }

      else
      {
        return 14;
      }
  }

  return result;
}

uint64_t asl_file_match(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v35.tv_sec = 0;
  *&v35.tv_usec = 0;
  v33 = 0;
  if (!a1 || (*(a1 + 8) & 1) == 0)
  {
    return 0;
  }

  v9 = a5;
  if (*(a1 + 12) == 1)
  {
    asl_legacy1_match(*(a1 + 112), a2, &v33, a3, a4, a5, a7);
    return v33;
  }

  if (a2)
  {
    v15 = *(a2 + 8) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (a7 < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if ((a7 & 0x80000000) == 0)
  {
    if (!asl_file_read_set_position(a1, 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (asl_file_read_set_position_last(a1, 0))
  {
    return 0;
  }

  do
  {
LABEL_16:
    v18 = *(a1 + 80);
    if (a7 < 0)
    {
      if (v18 <= a4)
      {
        break;
      }
    }

    else if (v18 >= a4)
    {
      break;
    }
  }

  while (!asl_file_read_set_position(a1, v16));
  v34.tv_sec = 0;
  *&v34.tv_usec = 0;
  if (a6)
  {
    if (gettimeofday(&v34, 0))
    {
      v32 = 0;
      v19 = 0;
      v34.tv_sec = 0;
      *&v34.tv_usec = 0;
    }

    else
    {
      v19 = v34.tv_sec + a6 / 0xF4240uLL;
      v34.tv_sec = v19;
      v20 = v34.tv_usec + a6 % 0xF4240;
      v34.tv_usec = v20;
      if (v20 <= 0xF4240)
      {
        v32 = v20;
      }

      else
      {
        v32 = v20 - 1000000;
        v34.tv_usec = v20 - 1000000;
        v34.tv_sec = ++v19;
      }
    }
  }

  else
  {
    v32 = 0;
    v19 = 0;
  }

  v13 = 0;
  v21 = 0;
  v22 = 0;
  v23 = (v9 - 1);
  while (1)
  {
    do
    {
      obj = 0;
      pos = asl_file_fetch_pos(a1, *(a1 + 72), a7, &obj);
    }

    while (pos == 10);
    if (pos)
    {
      return v13;
    }

    *a3 = *(a1 + 80);
    if (v15)
    {
      goto LABEL_52;
    }

    if (*(a2 + 8))
    {
      v31 = v15;
      v25 = v19;
      v26 = v23;
      v27 = 0;
      do
      {
        v28 = asl_msg_cmp(*(*(a2 + 16) + 8 * v27++), obj);
      }

      while (v27 < *(a2 + 8) && v28 == 0);
      v23 = v26;
      v19 = v25;
      v15 = v31;
      if (v28 == 1)
      {
LABEL_52:
        if (!v21)
        {
          asl_msg_list_new();
          v13 = v30;
          v33 = v30;
          if (!v30)
          {
            return v13;
          }
        }

        asl_msg_list_append(v13, obj);
        if (v23 < ++v22)
        {
          return v13;
        }

        if (!v19 || gettimeofday(&v35, 0))
        {
          goto LABEL_48;
        }

        if (v35.tv_sec > v19)
        {
          return v13;
        }

        if (v35.tv_sec == v19)
        {
          v21 = v13;
          if (v35.tv_usec > v32)
          {
            return v13;
          }
        }

        else
        {
LABEL_48:
          v21 = v13;
        }
      }
    }

    asl_msg_release(obj);
  }
}

uint64_t asl_file_size(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t asl_file_ctime(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

void asl_file_list_close(asl_object_t *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[1];
      if (*v1)
      {
        asl_release(*v1);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *asl_file_list_add(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 12) != 1)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v4)
    {
      *v4 = a2;
      v4[1] = a1;
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void **asl_file_list_match_start(uint64_t *a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (v6)
  {
    do
    {
      if (!asl_file_match_start(*v5, a2, a3) && *(*v5 + 80))
      {
        *v6 = asl_file_list_insert(*v6, *v5, a3);
      }

      v5 = v5[1];
    }

    while (v5);
    *(v6 + 2) = a3;
  }

  return v6;
}

void *asl_file_list_insert(void *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return a1;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (result)
  {
    *result = a2;
    if (a1)
    {
      v7 = *(a2 + 80);
      v8 = *(*a1 + 80);
      if (a3 < 0)
      {
        if (v7 > v8)
        {
          goto LABEL_6;
        }
      }

      else if (v7 < v8)
      {
LABEL_6:
        result[1] = a1;
        return result;
      }

      v9 = a1[1];
      v10 = a1;
      if (!v9)
      {
LABEL_15:
        v10[1] = result;
        return a1;
      }

      v11 = a1;
      while (1)
      {
        v10 = v9;
        v12 = *(*v9 + 80);
        if (a3 < 0)
        {
          if (v7 > v12)
          {
LABEL_16:
            result[1] = v10;
            v11[1] = result;
            return a1;
          }
        }

        else if (v7 < v12)
        {
          goto LABEL_16;
        }

        v9 = v10[1];
        v11 = v10;
        if (!v9)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

uint64_t asl_file_list_match_next(uint64_t result, uint64_t a2, uint64_t *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = result;
  v6 = *result;
  if (!*result)
  {
    return 0;
  }

  v8 = 0;
  v9 = a4 - 1;
  while (1)
  {
    obj = 0;
    matched = asl_file_match_next(*v6, a2, &obj, &v21, *(v5 + 8));
    v11 = obj;
    if (!obj)
    {
      goto LABEL_10;
    }

    v12 = *a3;
    if (!*a3)
    {
      break;
    }

LABEL_9:
    asl_msg_list_append(v12, v11);
    asl_msg_release(obj);
    ++v8;
LABEL_10:
    v6 = *v5;
    if (matched || !*(*v6 + 80))
    {
      v13 = v6[1];
      free(*v5);
      *v5 = v13;
      v6 = v13;
      if (!v13)
      {
        return 0;
      }
    }

    v14 = v6[1];
    if (v14)
    {
      v15 = *(v5 + 8);
      v16 = *v6;
      v17 = *(*v6 + 80);
      v18 = *(*v14 + 80);
      if ((v15 & 0x80000000) == 0)
      {
        if (v17 <= v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = v14;
        v6[1] = 0;
        *v5 = asl_file_list_insert(v14, v16, v15);
        free(v6);
        v6 = *v5;
        goto LABEL_18;
      }

      if (v17 <= v18)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    result = 0;
    if (!v6 || v9 < v8)
    {
      return result;
    }
  }

  asl_msg_list_new();
  *a3 = v12;
  if (v12)
  {
    v11 = obj;
    goto LABEL_9;
  }

  v19 = *v5;
  if (*v5)
  {
    do
    {
      v20 = v19[1];
      free(v19);
      v19 = v20;
    }

    while (v20);
  }

  *v5 = 0;
  return 9;
}

void asl_file_list_match_end(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t asl_file_list_match(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4, int a5, unsigned int a6, int a7)
{
  v7 = 0;
  if (a1 && a3)
  {
    v14 = a1;
    v15 = 0;
    obj = 0;
    do
    {
      if (!asl_file_match_start(*v14, a4, a7) && *(*v14 + 80))
      {
        v15 = asl_file_list_insert(v15, *v14, a7);
      }

      v14 = v14[1];
    }

    while (v14);
    if (!v15)
    {
      return 0;
    }

    v32.tv_sec = 0;
    *&v32.tv_usec = 0;
    if (a6)
    {
      if (gettimeofday(&v32, 0))
      {
        v32.tv_sec = 0;
        *&v32.tv_usec = 0;
      }

      else
      {
        v16 = v32.tv_sec + a6 / 0xF4240uLL;
        v32.tv_sec = v16;
        v17 = v32.tv_usec + a6 % 0xF4240;
        v32.tv_usec = v17;
        if (v17 > 0xF4240)
        {
          v32.tv_usec = v17 - 1000000;
          v32.tv_sec = v16 + 1;
        }
      }
    }

    v7 = 0;
    v18 = 0;
    v33.tv_sec = 0;
    *&v33.tv_usec = 0;
    v19 = a5 - 1;
    do
    {
      if (v19 < v18)
      {
        goto LABEL_40;
      }

      obj = 0;
      asl_file_match_next(*v15, a2, &obj, a3, a7);
      v20 = obj;
      if (obj)
      {
        if (!v7)
        {
          asl_msg_list_new();
          if (!v21)
          {
            do
            {
              v29 = v15[1];
              free(v15);
              v7 = 0;
              v15 = v29;
            }

            while (v29);
            return v7;
          }

          v7 = v21;
          v20 = obj;
        }

        asl_msg_list_append(v7, v20);
        asl_msg_release(obj);
        ++v18;
      }

      if (*(*v15 + 80) || (v22 = v15[1], free(v15), (v15 = v22) != 0))
      {
        v23 = v15[1];
        if (v23)
        {
          v24 = *v15;
          v25 = *(*v15 + 80);
          v26 = *(*v23 + 80);
          if (a7 < 0)
          {
            if (v25 > v26)
            {
              goto LABEL_28;
            }

LABEL_27:
            v15[1] = 0;
            v27 = asl_file_list_insert(v23, v24, a7);
            free(v15);
            v15 = v27;
            goto LABEL_28;
          }

          if (v25 > v26)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_28:
      tv_sec = v32.tv_sec;
      if (v32.tv_sec && !gettimeofday(&v33, 0) && (v33.tv_sec > tv_sec || v33.tv_sec == tv_sec && v33.tv_usec > v32.tv_usec))
      {
        if (!v15)
        {
          return v7;
        }

        do
        {
LABEL_40:
          v30 = v15[1];
          free(v15);
          v15 = v30;
        }

        while (v30);
        return v7;
      }
    }

    while (v15);
  }

  return v7;
}

uint64_t _jump_count_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 8) & 1) != 0 && (v2 = *(result + 72), v3 = *(result + 80), !asl_file_read_set_position_last(result, 1)))
    {
      *(v1 + 72) = v2;
      *(v1 + 80) = v3;
      return *(v1 + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int *_jump_next_0(int *result)
{
  v1 = 0;
  if (result)
  {
    if (result[3] == 1)
    {
      return 0;
    }

    else if (asl_file_fetch_pos(result, *(result + 9), 1, &v1))
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

int *_jump_prev_0(int *result)
{
  v1 = 0;
  if (result)
  {
    if (result[3] == 1)
    {
      return 0;
    }

    else if (asl_file_fetch_pos(result, *(result + 9), -1, &v1))
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

int *_jump_get_object_at_index_0(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (asl_file_fetch(a1, a2, &v3))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t _jump_set_iteration_index_0(uint64_t result, unint64_t a2)
{
  if (result && (*(result + 8) & 1) != 0)
  {
    if (a2 == -1)
    {
      return asl_file_read_set_position_last(result, 0);
    }

    else if (a2)
    {
      return asl_file_fetch(result, a2, 0);
    }

    else
    {
      *(result + 80) = 0;
      v2 = *(result + 40);
      *(result + 72) = v2;
      if (v2)
      {
        return asl_file_read_uint64(result, v2 + 14, (result + 80));
      }
    }
  }

  return result;
}

uint64_t _jump_append_1(uint64_t a1, asl_object_t obj)
{
  result = asl_get_type(obj);
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    v5 = 0;
    if (result == 2)
    {
      asl_msg_list_reset_iteration(obj, 0);
      do
      {
        result = asl_msg_list_next(obj);
        if (!result)
        {
          break;
        }

        result = asl_file_save(a1, result, &v5);
      }

      while (!result);
    }

    else if (result <= 1)
    {
      return asl_file_save(a1, obj, &v5);
    }
  }

  return result;
}

uint64_t _jump_search_1(uint64_t a1, asl_object_t obj)
{
  type = asl_get_type(obj);
  v11 = 0;
  if (!obj)
  {
    v5 = a1;
    v6 = 0;
    return asl_file_match(v5, v6, &v11, 0, 0, 0, 1);
  }

  if (type == 2)
  {
    v5 = a1;
    v6 = obj;
    return asl_file_match(v5, v6, &v11, 0, 0, 0, 1);
  }

  if (type > 1)
  {
    return 0;
  }

  asl_msg_list_new();
  v10 = v9;
  asl_msg_list_append(v9, obj);
  v7 = asl_file_match(a1, v10, &v11, 0, 0, 0, 1);
  asl_msg_list_release(v10);
  return v7;
}

uint64_t _jump_match_1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v9 = 0;
  result = asl_file_match(a1, a2, &v9, a4, a5, a6, a7);
  *a3 = v9;
  return result;
}

uint64_t asl_file_fetch_object(uint64_t a1, int a2, unint64_t a3, const void **a4, unsigned int *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 104))
  {
    goto LABEL_12;
  }

  v6 = 1;
  if (a3 && a4 && a5)
  {
    *a4 = 0;
    *a5 = 0;
    v11 = asl_core_htonq(a3);
    v30 = v11;
    if ((v11 & 0x80) == 0)
    {
      if (a2 == 1)
      {
        v12 = *(a1 + 24);
        if (v12)
        {
          if (*v12 == a3)
          {
            v13 = 0;
LABEL_16:
            v16 = strdup((v12 + 24));
            *a4 = v16;
            if (v16)
            {
              *a5 = *(v12 + 8);
              if (v13)
              {
                v6 = 0;
                v17 = *(a1 + 24);
                *(v13 + 16) = *(v12 + 16);
                *(v12 + 16) = v17;
                *(a1 + 24) = v12;
                goto LABEL_40;
              }

              goto LABEL_48;
            }

LABEL_36:
            v6 = 9;
            goto LABEL_40;
          }

          v15 = *(a1 + 24);
          while (1)
          {
            v12 = *(v15 + 16);
            if (!v12)
            {
              break;
            }

            v13 = v15;
            v15 = *(v15 + 16);
            if (*v12 == a3)
            {
              goto LABEL_16;
            }
          }
        }
      }

      if (a3 + 6 > *(a1 + 96) || fseeko(*(a1 + 104), a3, 0) || (__ptr = 0, fread(&__ptr, 2uLL, 1uLL, *(a1 + 104)) != 1))
      {
LABEL_39:
        v6 = 7;
        goto LABEL_40;
      }

      if (a2 == bswap32(__ptr) >> 16)
      {
        *__s1 = 0;
        if (fread(__s1, 4uLL, 1uLL, *(a1 + 104)) == 1)
        {
          if (*__s1)
          {
            v18 = bswap32(*__s1);
            if (a3 + 6 + v18 <= *(a1 + 96))
            {
              v19 = malloc_type_calloc(1uLL, v18, 0x9AE81642uLL);
              *a4 = v19;
              if (!v19)
              {
                goto LABEL_36;
              }

              if (fread(v19, v18, 1uLL, *(a1 + 104)) == 1)
              {
                if (a2 != 1)
                {
                  v6 = 0;
                  *a5 = v18;
                  goto LABEL_40;
                }

                v20 = *a4;
                v21 = (v18 - 1);
                if (!*(*a4 + v21) && strlen(*a4) == v21)
                {
                  *a5 = v18;
                  if (v18 <= 0x6C)
                  {
                    v22 = *(a1 + 32);
                    if (v22)
                    {
                      *(a1 + 32) = 0;
                    }

                    else
                    {
                      v22 = malloc_type_calloc(1uLL, 0x88uLL, 0x10200408BEEBE60uLL);
                      if (!v22)
                      {
                        goto LABEL_48;
                      }
                    }

                    *v22 = a3;
                    v22[2] = v18;
                    v26 = *(a1 + 24);
                    *(v22 + 2) = v26;
                    memcpy(v22 + 6, *a4, v18);
                    *(a1 + 24) = v22;
                    v27 = *(a1 + 16);
                    if ((*(a1 + 8) & 4) != 0 || v27 != 128)
                    {
                      v6 = 0;
                      *(a1 + 16) = v27 + 1;
                      goto LABEL_40;
                    }

                    do
                    {
                      v28 = v22;
                      v22 = v26;
                      v26 = v26[2];
                    }

                    while (v26);
                    *(v28 + 2) = 0;
                    if (!*(a1 + 32))
                    {
                      v6 = 0;
                      *(a1 + 32) = v22;
                      *(v22 + 16) = 0;
                      *(v22 + 6) = 0u;
                      *(v22 + 7) = 0u;
                      *(v22 + 4) = 0u;
                      *(v22 + 5) = 0u;
                      *(v22 + 2) = 0u;
                      *(v22 + 3) = 0u;
                      *v22 = 0u;
                      *(v22 + 1) = 0u;
                      goto LABEL_40;
                    }

                    free(v22);
                  }

LABEL_48:
                  v6 = 0;
                  goto LABEL_40;
                }
              }

              else
              {
                v20 = *a4;
              }

              free(v20);
              *a4 = 0;
            }
          }
        }

        goto LABEL_39;
      }

      goto LABEL_12;
    }

    if (a2 != 1 || (v14 = v11 & 0xF, v14 > 7))
    {
LABEL_12:
      v6 = 2;
      goto LABEL_40;
    }

    v32 = 0;
    *__s1 = 0;
    v6 = 9;
    __memcpy_chk();
    v23 = strdup(__s1);
    *a4 = v23;
    if (v23)
    {
      v6 = 0;
      *a5 = v14;
    }
  }

LABEL_40:
  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t asl_file_fetch_helper_64(unint64_t **a1, int *a2, char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = asl_core_ntohq(**a1);
  ++*a1;
  if (a2 && a3)
  {
    snprintf(__str, 0x100uLL, "%llu", result);
    result = asl_msg_set_key_val(a2, a3, __str);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int **asl_file_fetch_helper_32(unsigned int **result, int *a2, char *a3, int a4, int a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(*result)++;
  if (a2)
  {
    if (a3)
    {
      v8 = bswap32(v5);
      if (!a4 || v8 != a5)
      {
        snprintf(__str, 0x100uLL, "%u", v8);
        result = asl_msg_set_key_val(a2, a3, __str);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *asl_file_fetch_helper_16(void *result, int *a2, char *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = **result;
  *result += 2;
  if (a2 && a3)
  {
    snprintf(__str, 0x100uLL, "%hu", __rev16(v3));
    result = asl_msg_set_key_val(a2, a3, __str);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void asl_file_fetch_helper_str(uint64_t a1, unint64_t **a2, int *a3, char *a4, _DWORD *a5)
{
  v10 = asl_core_ntohq(**a2);
  ++*a2;
  v12 = 0;
  v11 = 0;
  if (v10)
  {
    LODWORD(v10) = asl_file_fetch_object(a1, 1, v10, &v12, &v11);
  }

  if (a5)
  {
    *a5 = v10;
  }

  if (!v10)
  {
    if (v12)
    {
      asl_msg_set_key_val(a3, a4, v12);
      free(v12);
    }
  }
}

uint64_t asl_legacy1_open(const char *a1, void ***a2)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v19, 0, sizeof(v19));
  if (stat(a1, &v19) < 0)
  {
    result = 9999;
    goto LABEL_16;
  }

  st_size = v19.st_size;
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
  if (!v5)
  {
    result = 9;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = fopen(a1, "r");
  v6[2] = v7;
  if (v7)
  {
    memset(__ptr, 0, sizeof(__ptr));
    if (fread(__ptr, 0x50uLL, 1uLL, v7) != 1)
    {
      fclose(v6[2]);
      free(v6);
      result = 7;
      goto LABEL_16;
    }

    if (LODWORD(__ptr[0]) != 541872961 || WORD2(__ptr[0]) != 16964)
    {
      fclose(v6[2]);
      goto LABEL_10;
    }

    if (!fseek(v6[2], 80, 0))
    {
      v11 = st_size / 80;
      v12 = malloc_type_calloc(v11, 0x18uLL, 0x1000040FE83055AuLL);
      *v6 = v12;
      if (v12)
      {
        if (v11 >= 2)
        {
          v13 = 0;
          v14 = 1;
          while (1)
          {
            if (fread(v21, 0x50uLL, 1uLL, v6[2]) != 1)
            {
              goto LABEL_15;
            }

            if (!v21[0])
            {
              v15 = 0;
              v16 = 0;
              goto LABEL_27;
            }

            if (v21[0] == 2)
            {
              break;
            }

            if (v21[0] == 4)
            {
              v15 = bswap64(v22);
              v16 = bswap32(v23);
LABEL_27:
              v17 = *v6 + 24 * v13;
              *v17 = v21[0];
              *(v17 + 4) = v14;
              *(v17 + 8) = v15;
              *(v17 + 16) = v16;
              ++v13;
            }

            if (v11 == ++v14)
            {
              v12 = *v6;
              goto LABEL_31;
            }
          }

          v16 = 0;
          v15 = bswap64(v22);
          goto LABEL_27;
        }

        v13 = 0;
LABEL_31:
        v18 = reallocf(v12, 24 * v13);
        *v6 = v18;
        if (v18)
        {
          *(v6 + 2) = v13;
          qsort(v18, v13, 0x18uLL, slot_comp);
        }
      }
    }

LABEL_15:
    result = 0;
    *a2 = v6;
    goto LABEL_16;
  }

LABEL_10:
  free(v6);
  result = 2;
LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_legacy1_close(void **a1)
{
  if (!a1)
  {
    return 2;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    fclose(v3);
  }

  free(a1);
  return 0;
}

uint64_t asl_legacy1_fetch(uint64_t *a1, unint64_t a2, int **a3)
{
  if (!a1)
  {
    return 2;
  }

  result = 1;
  if (a2 != -1 && a3)
  {
    v6 = slotlist_find(a1, a2, 0);
    if (v6 == -1)
    {
      return 4;
    }

    else
    {
      result = msg_fetch(a1, *(*a1 + 24 * v6 + 4), a3);
      if (!result)
      {
        if (*a3)
        {
          return 0;
        }

        else
        {
          return 9999;
        }
      }
    }
  }

  return result;
}

uint64_t slotlist_find(uint64_t *a1, unint64_t a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = (v5 - 1);
      v7 = *a1;
      if (v6 < 2)
      {
        v8 = 0;
LABEL_15:
        result = v6;
        if (*(v7 + 24 * v6 + 8) != a2)
        {
          if (*(v7 + 24 * v8 + 8) == a2)
          {
            return v8;
          }

          else if (a3 >= 0)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v8;
          }
        }
      }

      else
      {
        LODWORD(v8) = 0;
        result = v6 >> 1;
        while (1)
        {
          v9 = *(v7 + 24 * result + 8);
          if (v9 == a2)
          {
            break;
          }

          if (v9 <= a2)
          {
            v6 = v6;
          }

          else
          {
            v6 = result;
          }

          if (v9 <= a2)
          {
            v8 = result;
          }

          else
          {
            v8 = v8;
          }

          result = v8 + ((v6 - v8) >> 1);
          if ((v6 - v8) <= 1)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

uint64_t msg_fetch(uint64_t a1, int a2, int **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
    if (fseek(*(a1 + 16), (80 * a2), 0) < 0 || (sid = 0, v19 = 0, v20 = 0, fread(&__ptr, 0x50uLL, 1uLL, *(a1 + 16)) != 1))
    {
LABEL_31:
      result = 7;
      goto LABEL_32;
    }

    v5 = asl_msg_new(0);
    if (v5)
    {
      v6 = v5;
      v21 = &v25;
      asl_legacy1_fetch_helper_64(&v21, v5, "ASLMessageID");
      asl_legacy1_fetch_helper_32(&v21, v6, "ReadUID", 1, -1);
      asl_legacy1_fetch_helper_32(&v21, v6, "ReadGID", 1, -1);
      asl_legacy1_fetch_helper_64(&v21, v6, "Time");
      asl_legacy1_fetch_helper_str(a1, &v21, v6, "Host", &sid);
      asl_legacy1_fetch_helper_str(a1, &v21, v6, "Sender", &sid);
      asl_legacy1_fetch_helper_str(a1, &v21, v6, "Facility", &sid);
      v7 = v21;
      snprintf(__str, 0x100uLL, "%u", bswap32(*v21));
      asl_msg_set_key_val(v6, "Level", __str);
      snprintf(__str, 0x100uLL, "%u", bswap32(*(v7 + 1)));
      asl_msg_set_key_val(v6, "PID", __str);
      snprintf(__str, 0x100uLL, "%u", bswap32(*(v7 + 2)));
      asl_msg_set_key_val(v6, "UID", __str);
      v8 = bswap32(*(v7 + 3));
      v21 = (v7 + 2);
      snprintf(__str, 0x100uLL, "%u", v8);
      asl_msg_set_key_val(v6, "GID", __str);
      asl_legacy1_fetch_helper_str(a1, &v21, v6, "Message", &sid);
      if (v24)
      {
        v9 = 0;
        v10 = 0;
        v11 = bswap32(v24);
        while ((fseek(*(a1 + 16), 80 * v11, 0) & 0x80000000) == 0 && fread(&__ptr, 0x50uLL, 1uLL, *(a1 + 16)) == 1)
        {
          v12 = bswap32(v25);
          if (!v9)
          {
            v9 = v12;
          }

          if (v10 < v9)
          {
            v13 = 0;
            v14 = v26;
            while (1)
            {
              v20 = 0;
              sid = string_fetch_sid(a1, bswap64(*(v14 - 1)), &v20);
              v19 = 0;
              if (!sid)
              {
                sid = string_fetch_sid(a1, bswap64(*v14), &v19);
                v15 = v20;
                if (sid)
                {
                  v16 = 1;
                }

                else
                {
                  v16 = v20 == 0;
                }

                if (v16)
                {
                  goto LABEL_20;
                }

                asl_msg_set_key_val(v6, v20, v19);
              }

              v15 = v20;
LABEL_20:
              if (v15)
              {
                free(v15);
              }

              if (v19)
              {
                free(v19);
              }

              ++v10;
              if (v13 <= 2)
              {
                ++v13;
                v14 += 2;
                if (v10 < v9)
                {
                  continue;
                }
              }

              break;
            }
          }

          v11 = bswap32(v24);
          if (!v24)
          {
            goto LABEL_27;
          }
        }

        asl_msg_release(v6);
        goto LABEL_31;
      }

LABEL_27:
      result = 0;
      *a3 = v6;
    }

    else
    {
      result = 9;
    }
  }

  else
  {
    result = 1;
  }

LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_legacy1_match(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t a6, int a7)
{
  obj = 0;
  if (!a1)
  {
    return 2;
  }

  v8 = 1;
  if (a3 && a4)
  {
    *a3 = 0;
    if (a7 < 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (a5 == -1 && a7 < 0)
    {
      v13 = *(a1 + 8);
    }

    else
    {
      v13 = slotlist_find(a1, a5, v12);
    }

    search_slot = next_search_slot(a1, v13, v12);
    if (search_slot == -1)
    {
      return 0;
    }

    else
    {
      v15 = search_slot;
      if (search_slot >= *(a1 + 8))
      {
        return 9999;
      }

      else
      {
        if (a2)
        {
          v22 = *(a2 + 8);
          v16 = v22 == 0;
        }

        else
        {
          v22 = 0;
          v16 = 1;
        }

        asl_msg_list_new();
        *a3 = v17;
        if (v17)
        {
          v8 = 0;
          while (1)
          {
            if (v15 >= *(a1 + 8))
            {
              return v8;
            }

            v18 = *a1 + 24 * v15;
            v19 = *(v18 + 4);
            *a4 = *(v18 + 8);
            v8 = msg_fetch(a1, v19, &obj);
            if (!v16)
            {
              if (!v22)
              {
                goto LABEL_28;
              }

              v20 = 0;
              while (asl_msg_cmp(*(*(a2 + 16) + v20), obj) != 1)
              {
                v20 += 8;
                if (8 * v22 == v20)
                {
                  goto LABEL_28;
                }
              }
            }

            asl_msg_list_append(*a3, obj);
LABEL_28:
            asl_msg_release(obj);
            v15 = next_search_slot(a1, v15, v12);
            if (v15 == -1)
            {
              return v8;
            }
          }
        }

        return 9;
      }
    }
  }

  return v8;
}

uint64_t slot_comp(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      return 1;
    }

    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 < v3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v2 == v3)
    {
      v5 = *(a1 + 4);
      v6 = *(a2 + 4);
      v7 = v5 >= v6;
      v8 = v5 != v6;
      if (v7)
      {
        return v8;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 1;
    }
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

unint64_t **asl_legacy1_fetch_helper_64(unint64_t **result, int *a2, char *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*result)++;
  if (a3)
  {
    snprintf(__str, 0x100uLL, "%llu", bswap64(v3));
    result = asl_msg_set_key_val(a2, a3, __str);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int **asl_legacy1_fetch_helper_32(unsigned int **result, int *a2, char *a3, int a4, int a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(*result)++;
  if (a3)
  {
    v8 = bswap32(v5);
    if (!a4 || v8 != a5)
    {
      snprintf(__str, 0x100uLL, "%u", v8);
      result = asl_msg_set_key_val(a2, a3, __str);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void asl_legacy1_fetch_helper_str(uint64_t a1, unint64_t **a2, int *a3, char *a4, _DWORD *a5)
{
  v8 = *(*a2)++;
  v10 = 0;
  if (v8)
  {
    sid = string_fetch_sid(a1, bswap64(v8), &v10);
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sid = 0;
  if (a5)
  {
LABEL_3:
    *a5 = sid;
  }

LABEL_4:
  if (!sid)
  {
    if (v10)
    {
      asl_msg_set_key_val(a3, a4, v10);
      free(v10);
    }
  }
}

uint64_t string_fetch_sid(uint64_t a1, unint64_t a2, void *a3)
{
  *&v31[55] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    result = 1;
    goto LABEL_35;
  }

  *a3 = 0;
  if (a2 == -1)
  {
    goto LABEL_29;
  }

  v4 = bswap64(a2);
  v26 = HIBYTE(v4);
  v25 = HIDWORD(v4) >> 8;
  v24 = v4 >> 8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
    v22 = malloc_type_calloc(1uLL, v21, 0x195C378AuLL);
    *a3 = v22;
    if (!v22)
    {
      goto LABEL_31;
    }

    memcpy(v22, &v24, v21);
LABEL_29:
    result = 0;
    goto LABEL_35;
  }

  v6 = slotlist_find(a1, a2, 0);
  if (v6 == -1)
  {
    result = 6;
    goto LABEL_35;
  }

  v7 = *(*a1 + 24 * v6 + 4);
  *a3 = 0;
  if (fseek(*(a1 + 16), (80 * v7), 0) < 0 || fread(&__ptr, 0x50uLL, 1uLL, *(a1 + 16)) != 1)
  {
    goto LABEL_34;
  }

  if (__ptr != 4)
  {
    result = 3;
    goto LABEL_35;
  }

  if (!v30)
  {
    goto LABEL_29;
  }

  v8 = bswap32(v30);
  v9 = v28;
  v10 = malloc_type_calloc(1uLL, v8, 0xD91E710uLL);
  if (!v10)
  {
LABEL_31:
    result = 9;
    goto LABEL_35;
  }

  v11 = v10;
  if (v8 >= 0x37)
  {
    v12 = 55;
  }

  else
  {
    v12 = v8;
  }

  memcpy(v10, v31, v12);
  v13 = v9 != 0;
  v14 = v8 - v12;
  v15 = v8 != v12;
  if (v8 != v12 && v9)
  {
    v16 = bswap32(v9);
    v17 = &v11[v12];
    while ((fseek(*(a1 + 16), 80 * v16, 0) & 0x80000000) == 0 && fread(&__ptr, 0x50uLL, 1uLL, *(a1 + 16)) == 1)
    {
      v18 = v28;
      if (v14 >= 0x4B)
      {
        v19 = 75;
      }

      else
      {
        v19 = v14;
      }

      memcpy(v17, v29, v19);
      v14 -= v19;
      v13 = v18 != 0;
      v15 = v14 != 0;
      if (v18)
      {
        v16 = bswap32(v18);
        v17 += v19;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_23:
  if (v13 || v15)
  {
LABEL_33:
    free(v11);
LABEL_34:
    result = 7;
    goto LABEL_35;
  }

  result = 0;
  *a3 = v11;
LABEL_35:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t next_search_slot(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    while (1)
    {
      a2 = (a2 + 1);
      if (a2 >= *(a1 + 8))
      {
        break;
      }

      if (*(*a1 + 24 * a2) == 2)
      {
        return a2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a2 || *(a1 + 8) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  for (i = 24 * a2 - 24; i; i -= 24)
  {
    v6 = v4[i];
    a2 = (a2 - 1);
    if (v6 == 2)
    {
      return a2;
    }
  }

  if (*v4 == 2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

asl_object_t asl_msg_retain(asl_object_t obj)
{
  if (obj)
  {
    asl_retain(obj);
  }

  return obj;
}

unsigned int *asl_msg_type(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t asl_msg_count(uint64_t a1)
{
  for (i = 0; a1; a1 = *(a1 + 24))
  {
    i = (*(a1 + 8) + i);
  }

  return i;
}

uint64_t _asl_msg_dump(uint64_t result, const char *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = a3;
    v5 = result;
    if (a3)
    {
      if (*a3 == 1)
      {
        v6 = 10;
      }

      else
      {
        v6 = 0;
      }

      if (*a3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 15;
      }

      for (i = 1; ; i = 0)
      {
        if (i)
        {
          fprintf(v5, "asl_msg %s: %p\n", a2, v3);
          fprintf(v5, "    refcount: %u\n", v3[1]);
          v9 = *v3;
          fprintf(v5, "    asl_type: %u\n");
        }

        else
        {
          fprintf(v5, "  page: %p\n");
        }

        fprintf(v5, "    count: %u\n", v3[2]);
        fprintf(v5, "    data_size: %u\n", v3[3]);
        fprintf(v5, "    mem_size: %llu\n", *(v3 + 2));
        result = fprintf(v5, "    next: %p\n", *(v3 + 3));
        if (v7)
        {
          break;
        }

LABEL_33:
        v3 = *(v3 + 3);
        if (!v3)
        {
          return result;
        }
      }

      v10 = 0;
      while (1)
      {
        fprintf(v5, "    slot[%d]: ", v10);
        if (*v3 && (*v3 != 1 || v10 > 9))
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v3 + v10 + 16);
        }

        _asl_msg_dump_kv(v5, v3, v11);
        fputc(32, v5);
        if (!*v3)
        {
          break;
        }

        if (*v3 == 1 && v10 <= 9)
        {
          v12 = 10;
LABEL_26:
          v13 = *(v3 + v10 + v12 + 16);
          goto LABEL_27;
        }

        v13 = 0;
LABEL_27:
        result = _asl_msg_dump_kv(v5, v3, v13);
        if (*v3 == 1)
        {
          if (v10 > 9)
          {
            v14 = 0;
          }

          else
          {
            v14 = *(v3 + v10 + 36);
          }

          result = fprintf(v5, " 0x%04x\n", v14);
        }

        if (v7 == ++v10)
        {
          goto LABEL_33;
        }
      }

      v12 = 15;
      goto LABEL_26;
    }

    return fprintf(result, "asl_msg %s: NULL\n", a2);
  }

  return result;
}

size_t _asl_msg_dump_kv(FILE *__stream, uint64_t a2, unsigned int a3)
{
  if (a3 == 0xFFFF)
  {
    v5 = "-free-";
    v6 = 6;
LABEL_7:

    return fwrite(v5, v6, 1uLL, __stream);
  }

  if ((a3 & 0xC000) == 0x4000)
  {
    return fprintf(__stream, "(extern: %s)", *(a2 + (a3 & 0x3FFF) + 92));
  }

  if ((a3 & 0xC000) == 0x8000)
  {
    switch(a3)
    {
      case 0x8001u:
        v5 = "(dict: Time)";
        goto LABEL_46;
      case 0x8002u:
        v5 = "(dict: Nano)";
        goto LABEL_46;
      case 0x8003u:
        v5 = "(dict: Host)";
LABEL_46:
        v6 = 12;
        goto LABEL_7;
      case 0x8004u:
        v5 = "(dict: Sender)";
        goto LABEL_39;
      case 0x8005u:
        v5 = "(dict: Facility)";
        v6 = 16;
        goto LABEL_7;
      case 0x8006u:
      case 0x800Eu:
        v5 = "(dict: PID)";
        goto LABEL_51;
      case 0x8007u:
        v5 = "(dict: UID)";
        goto LABEL_51;
      case 0x8008u:
        v5 = "(dict: GID)";
LABEL_51:
        v6 = 11;
        goto LABEL_7;
      case 0x8009u:
        v5 = "(dict: Level)";
        v6 = 13;
        goto LABEL_7;
      case 0x800Au:
        v5 = "(dict: Message)";
        goto LABEL_49;
      case 0x800Bu:
        v5 = "(dict: ReadUID)";
        goto LABEL_49;
      case 0x800Cu:
        v5 = "(dict: ReadGID)";
        goto LABEL_49;
      case 0x800Du:
        v5 = "(dict: Session)";
        goto LABEL_49;
      case 0x800Fu:
        v5 = "(dict: RefProc)";
LABEL_49:
        v6 = 15;
        break;
      case 0x8010u:
        v5 = "(dict: ASLMessageID)";
        v6 = 20;
        break;
      case 0x8011u:
        v5 = "(dict: Expire)";
LABEL_39:
        v6 = 14;
        break;
      case 0x8012u:
        v5 = "(dict: ASLOption)";
LABEL_37:
        v6 = 17;
        break;
      default:
        switch(a3)
        {
          case 0x8101u:
            v5 = "(dict: com.apple.message.domain)";
            goto LABEL_42;
          case 0x8102u:
            v5 = "(dict: com.apple.message.domain_scope)";
            v6 = 38;
            goto LABEL_7;
          case 0x8103u:
            v5 = "(dict: com.apple.message.result)";
            goto LABEL_42;
          case 0x8104u:
            v5 = "(dict: com.apple.message.signature)";
            v6 = 35;
            goto LABEL_7;
          case 0x8105u:
            v5 = "(dict: com.apple.message.signature2)";
            goto LABEL_34;
          case 0x8106u:
            v5 = "(dict: com.apple.message.signature3)";
LABEL_34:
            v6 = 36;
            goto LABEL_7;
          case 0x8107u:
            v5 = "(dict: com.apple.message.success)";
            v6 = 33;
            goto LABEL_7;
          case 0x8108u:
            v5 = "(dict: com.apple.message.uuid)";
            v6 = 30;
            goto LABEL_7;
          case 0x8109u:
            v5 = "(dict: com.apple.message.value)";
            v6 = 31;
            goto LABEL_7;
          case 0x810Au:
            v5 = "(dict: com.apple.message.value2)";
            goto LABEL_42;
          case 0x810Bu:
            v5 = "(dict: com.apple.message.value3)";
            goto LABEL_42;
          case 0x810Cu:
            v5 = "(dict: com.apple.message.value4)";
            goto LABEL_42;
          case 0x810Du:
            v5 = "(dict: com.apple.message.value5)";
LABEL_42:
            v6 = 32;
            break;
          default:
            v5 = "(dict: -unknown-)";
            goto LABEL_37;
        }

        break;
    }

    goto LABEL_7;
  }

  return fputs((a2 + a3 + 92), __stream);
}

int *asl_msg_get_val_for_key(int *result, char *a2)
{
  if (result)
  {
    v3 = -1;
    v2 = 0;
    if (_asl_msg_index(result, a2, &v3, &v2) == -1)
    {
      return 0;
    }

    else
    {
      return _asl_msg_slot_val(v2, v3);
    }
  }

  return result;
}

char *asl_msg_key(int *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  if (*a1 == 1)
  {
    LODWORD(v3) = 10;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (*a1)
  {
    v3 = v3;
  }

  else
  {
    v3 = 15;
  }

  while (!v3)
  {
LABEL_17:
    a1 = *(a1 + 3);
    if (!a1)
    {
      return 0;
    }
  }

  v4 = 0;
  v5 = *a1;
  while (1)
  {
    if ((!v5 || v5 == 1 && v4 <= 9) && *(a1 + v4 + 16) == -1)
    {
      goto LABEL_16;
    }

    if (v2 == a2)
    {
      return _asl_msg_slot_key(a1, v4);
    }

    ++v2;
LABEL_16:
    if (v3 == ++v4)
    {
      goto LABEL_17;
    }
  }
}

void asl_msg_unset(_DWORD *a1, char *a2)
{
  if (a1 && a2)
  {
    v3 = -1;
    v2 = 0;
    if (_asl_msg_index(a1, a2, &v3, &v2) != -1)
    {
      _asl_msg_unset_page_slot(v2, v3);
    }
  }
}

void _asl_msg_unset_page_slot(int *a1, unsigned int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1 == 1)
    {
      v5 = 10;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v5 = 15;
    }

    if (v5 > a2)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          v6 = 0;
          goto LABEL_12;
        }

        if (a2 > 9)
        {
          goto LABEL_24;
        }
      }

      v6 = *(a1 + a2 + 16);
      if (!v4)
      {
        v7 = 15;
        goto LABEL_18;
      }

LABEL_12:
      if (v4 != 1 || a2 > 9)
      {
        v8 = 0;
LABEL_19:
        if (v6 == 0xFFFF)
        {
          return;
        }

        if ((v6 & 0xC000) == 0x4000)
        {
          v9 = *(a1 + (v6 & 0x3FFF) + 92);
          *(a1 + 2) += ~strlen(v9);
          free(v9);
        }

        if ((v8 & 0xC000) == 0x4000)
        {
          v10 = *(a1 + (v8 & 0x3FFF) + 92);
          *(a1 + 2) += ~strlen(v10);
          free(v10);
        }

LABEL_24:
        v11 = *a1;
        if (*a1)
        {
          if (a2 > 9 || v11 != 1)
          {
            goto LABEL_30;
          }

          v12 = 10;
        }

        else
        {
          v12 = 15;
        }

        *(a1 + a2 + 16) = -1;
        *(a1 + v12 + a2 + 16) = -1;
LABEL_30:
        if (a2 <= 9 && v11 == 1)
        {
          *(a1 + a2 + 36) = 0;
        }

        --a1[2];
        return;
      }

      v7 = 10;
LABEL_18:
      v8 = *(a1 + v7 + a2 + 16);
      goto LABEL_19;
    }
  }
}

void asl_msg_unset_index(uint64_t a1, unsigned int a2)
{
  v5 = -1;
  v4 = 0;
  if (a1 && !_asl_msg_resolve_index(a1, a2, &v4, &v5))
  {
    v2 = v4;
    v3 = v5;

    _asl_msg_unset_page_slot(v2, v3);
  }
}

uint64_t _asl_msg_resolve_index(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1)
  {
    v5 = 0;
    *a4 = -1;
    *a3 = 0;
    if (*a1 == 1)
    {
      v6 = 10;
    }

    else
    {
      v6 = 0;
    }

    if (*a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 15;
    }

    do
    {
      v8 = (*(a1 + 8) + v5);
      if (v8 >= a2)
      {
        *a3 = a1;
        if (v7)
        {
          v9 = 0;
          v8 = v5;
          while (1)
          {
            if (*(a1 + 32 + 2 * v9) != -1)
            {
              if (v8 == a2)
              {
                v4 = 0;
                *a4 = v9;
                return v4;
              }

              v8 = (v8 + 1);
            }

            if (v7 == ++v9)
            {
              goto LABEL_17;
            }
          }
        }

        v8 = v5;
      }

LABEL_17:
      a1 = *(a1 + 24);
      v5 = v8;
    }

    while (a1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t _asl_msg_test(_DWORD *a1, _DWORD *a2)
{
  v16 = 0;
  __s1 = 0;
  v18 = 0;
  v4 = asl_msg_fetch(a1, 0, &__s1, &v16, &v18);
  if (v4 == -1)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    v15 = 0;
    result = asl_msg_lookup(a2, __s1, &v15, 0);
    v7 = v18;
    v8 = v18 & 7;
    if (!v8)
    {
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      if (result)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (!result)
    {
      v9 = strcmp(__s1, "Time");
      v10 = v15;
      v11 = v16;
      if (v9 || (v7 & 0x160) != 0 || !v16 || !v15 || (v12 = asl_core_parse_time(v16, 0), v12 < 0) || (v13 = v12, v14 = asl_core_parse_time(v10, 0), (v14 & 0x8000000000000000) != 0))
      {
        result = _asl_msg_test_expression(v7, v11, v10);
      }

      else if (v8 <= 3)
      {
        if (v8 == 1)
        {
          result = v14 == v13;
        }

        else if (v8 == 2)
        {
          result = v14 > v13;
        }

        else
        {
          result = v14 >= v13;
        }
      }

      else if (v8 > 5)
      {
        result = v14 != v13;
      }

      else if (v8 == 4)
      {
        result = v14 < v13;
      }

      else
      {
        result = v14 <= v13;
      }

LABEL_13:
      if (!result)
      {
        return result;
      }

      goto LABEL_14;
    }

    if (v8 != 6)
    {
      return 0;
    }

LABEL_14:
    v5 = asl_msg_fetch(a1, v5, &__s1, &v16, &v18);
    if (v5 == -1)
    {
      return 1;
    }
  }
}

uint64_t _asl_msg_test_expression(__int16 a1, char *a2, char *__s)
{
  v3 = a1 & 7;
  if (v3 == 7)
  {
    return 1;
  }

  v5 = __s;
  v6 = a2;
  v7 = a1;
  if ((a1 & 0x20) == 0)
  {
    if ((a1 & 0x40) == 0)
    {
      v8 = 0;
LABEL_24:

      return _asl_msg_basic_test(a1, a2, __s, v8);
    }

    if (__s)
    {
      v10 = strlen(__s);
      if (!v6)
      {
        return v7 & 1;
      }
    }

    else
    {
      v10 = 0;
      if (!a2)
      {
        return v7 & 1;
      }
    }

    v13 = strlen(v6);
    v8 = v13;
    if (v13)
    {
      if (v10 >= v13)
      {
        __s = &v5[v10 - v13];
        a1 = v7;
        a2 = v6;
        goto LABEL_24;
      }

      return v3 == 6;
    }

    return v7 & 1;
  }

  if ((a1 & 0x40) == 0)
  {
    if (__s)
    {
      v9 = strlen(__s);
      if (!v6)
      {
        return v7 & 1;
      }
    }

    else
    {
      v9 = 0;
      if (!a2)
      {
        return v7 & 1;
      }
    }

    v12 = strlen(v6);
    v8 = v12;
    if (v12)
    {
      if (v9 >= v12)
      {
        a1 = v7;
        a2 = v6;
        __s = v5;
        goto LABEL_24;
      }

      return v3 == 6;
    }

    return v7 & 1;
  }

  if (__s)
  {
    v11 = strlen(__s);
    if (!v6)
    {
      return v7 & 1;
    }
  }

  else
  {
    v11 = 0;
    if (!a2)
    {
      return v7 & 1;
    }
  }

  v14 = strlen(v6);
  v15 = v14;
  if (!v14)
  {
    return v7 & 1;
  }

  v16 = v11 >= v14;
  v17 = v11 - v14;
  if (!v16)
  {
    return v3 == 6;
  }

  result = 0;
  if (v3 != 2 && v3 != 4)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      while (_asl_msg_basic_test(v7 & 0xFF0 | 1u, v6, &v5[v20], v15))
      {
        if (v7)
        {
          return 1;
        }

        ++v19;
        if (++v20 > v17)
        {
          return v19 == 0;
        }
      }

      ++v20;
    }

    while (v20 <= v17);
    if ((v7 & 1) == 0)
    {
      return v19 == 0;
    }

    return 0;
  }

  return result;
}

uint64_t asl_msg_cmp(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (*a1 == *a2)
      {
        v5 = 0;
        v6 = a1;
        do
        {
          v5 += v6[2];
          v6 = *(v6 + 3);
        }

        while (v6);
        v7 = a2;
        do
        {
          LODWORD(v6) = v7[2] + v6;
          v7 = *(v7 + 3);
        }

        while (v7);
        if (v5 == v6)
        {
          v14 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v8 = asl_msg_fetch(a1, 0, &v13, &v12, &v14 + 1);
          if (v8 == -1)
          {
            return 1;
          }

          v9 = v8;
          while (!asl_msg_lookup(v4, v13, &v11, &v14) && !strcmp(v12, v11) && (*a1 != 1 || HIWORD(v14) == v14))
          {
            v9 = asl_msg_fetch(a1, v9, &v13, &v12, &v14 + 1);
            if (v9 == -1)
            {
              return 1;
            }
          }
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          v10 = a1;
        }

        else
        {
          v10 = a2;
          a2 = a1;
        }

        return _asl_msg_test(v10, a2);
      }
    }
  }

  return result;
}

uint64_t asl_msg_cmp_list(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 && *(a2 + 8))
    {
      v3 = result;
      v4 = 0;
      while (!_asl_msg_test(*(*(a2 + 16) + 8 * v4), v3))
      {
        if (++v4 >= *(a2 + 8))
        {
          return 0;
        }
      }
    }

    return 1;
  }

  return result;
}

void *asl_msg_to_string_raw(int a1, _DWORD *a2, const char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  do
  {
    v5 += v6[2];
    v6 = *(v6 + 3);
  }

  while (v6);
  if (!v5)
  {
    return 0;
  }

  v7 = asl_string_new(a1);
  if (v7)
  {
    __s = 0;
    __s1 = 0;
    v14 = 0;
    asl_msg_lookup(a2, "TimeNanoSec", &v14, 0);
    v8 = asl_msg_fetch(a2, 0, &__s1, &__s, 0);
    if (v8 != -1)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        if (__s1)
        {
          if (v10)
          {
            asl_string_append_char_no_encoding(v7, 32);
          }

          asl_string_append_char_no_encoding(v7, 91);
          asl_string_append_asl_key(v7, __s1);
          if (!strcmp(__s1, "Time"))
          {
            asl_string_append_char_no_encoding(v7, 32);
            if (__s && (v11 = _asl_time_string(a3, __s, v14)) != 0)
            {
              v12 = v11;
              asl_string_append_no_encoding(v7, v11);
              free(v12);
            }

            else
            {
              asl_string_append_char_no_encoding(v7, 48);
            }
          }

          else if (__s)
          {
            asl_string_append_char_no_encoding(v7, 32);
            asl_string_append(v7, __s);
          }

          asl_string_append_char_no_encoding(v7, 93);
          ++v10;
        }

        v9 = asl_msg_fetch(a2, v9, &__s1, &__s, 0);
      }

      while (v9 != -1);
    }
  }

  return v7;
}

void *asl_string_append_asl_msg(void *a1, _DWORD *a2)
{
  if (a2)
  {
    if (*a2 == 1)
    {
      asl_string_append(a1, "Q ");
    }

    v9 = 0;
    v10 = 0;
    v8 = 0;
    v4 = asl_msg_fetch(a2, 0, &v10, &v9, &v8);
    if (v4 != -1)
    {
      v5 = v4;
      v6 = 0;
      do
      {
        if (v6)
        {
          asl_string_append_char_no_encoding(a1, 32);
        }

        asl_string_append_char_no_encoding(a1, 91);
        if (*a2 == 1)
        {
          asl_string_append_op(a1, v8);
          asl_string_append_char_no_encoding(a1, 32);
        }

        asl_string_append_asl_key(a1, v10);
        if (v9)
        {
          asl_string_append_char_no_encoding(a1, 32);
          asl_string_append(a1, v9);
        }

        asl_string_append_char_no_encoding(a1, 93);
        v5 = asl_msg_fetch(a2, v5, &v10, &v9, &v8);
        --v6;
      }

      while (v5 != -1);
    }
  }

  return a1;
}

char *asl_msg_to_string(_DWORD *a1, _DWORD *a2)
{
  result = asl_string_new(2);
  if (result)
  {
    v5 = result;
    appended = asl_string_append_asl_msg(result, a1);
    *a2 = asl_string_length(appended);

    return asl_string_release_return_bytes(v5);
  }

  return result;
}

__asl_object_s *asl_msg_from_string(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v25 = 0;
  v24 = a1;
  next_word = _asl_msg_get_next_word(&v24, &v25, 1);
  if (!next_word)
  {
    return 0;
  }

  v2 = next_word;
  if (*next_word == 81 && !next_word[1])
  {
    free(next_word);
    v4 = 1;
    v2 = _asl_msg_get_next_word(&v24, &v25, 1);
  }

  else
  {
    if (v25 == 4)
    {
      free(next_word);
      v3 = _asl_msg_get_next_word(&v24, &v25, 1);
      if (!v3)
      {
        return 0;
      }

      v2 = v3;
    }

    v4 = 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x138uLL, 0x1020040D2F95E9BuLL);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(v5 + 76) = v7;
  *(v5 + 3) = v7;
  *(v5 + 4) = v7;
  *(v5 + 2) = v7;
  *(v5 + 2) = 312;
  *v5 = v4;
  *(v5 + 1) = 1;
  if (!v2)
  {
    return v6;
  }

  while (2)
  {
    if (v25 != 1)
    {
      goto LABEL_69;
    }

    free(v2);
    if (!v4)
    {
      v9 = 0;
      goto LABEL_44;
    }

    v8 = _asl_msg_get_next_word(&v24, &v25, 1);
    if (!v8 || v25 != 3)
    {
      if (v8)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v9 = 0;
    for (i = 0; ; ++i)
    {
      v11 = *(v8 + i);
      if (v11 == 67)
      {
        v9 |= 0x10u;
        goto LABEL_22;
      }

      if (!*(v8 + i))
      {
        goto LABEL_43;
      }

      if (v11 == 46)
      {
        break;
      }

LABEL_22:
      v12 = v9 | 0x100;
      if (v11 != 82)
      {
        v12 = v9;
      }

      if (v11 == 78)
      {
        v12 |= 0x80u;
      }

      if (v11 == 83)
      {
        v12 |= 0x60u;
      }

      if (v11 == 65)
      {
        v12 |= 0x20u;
      }

      if (v11 == 90)
      {
        v12 |= 0x40u;
      }

      if (v11 == 60)
      {
        v12 |= 4u;
      }

      if (v11 == 62)
      {
        v12 |= 2u;
      }

      v13 = v12 | (v11 == 61);
      if (v11 == 33)
      {
        v13 |= 6u;
      }

      if (v11 == 84)
      {
        v9 = v13 | 7;
      }

      else
      {
        v9 = v13;
      }
    }

    v9 = 0;
LABEL_43:
    free(v8);
LABEL_44:
    v8 = _asl_msg_get_next_word(&v24, &v25, 1);
    v14 = v8;
    v15 = v25;
    if (v25 == 4)
    {
      v15 = 3;
    }

    v25 = v15;
    if (!v8 || v15 != 3)
    {
      if (v8)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v16 = _asl_msg_get_next_word(&v24, &v25, 0);
    if (v25 == 4)
    {
      v17 = 3;
    }

    else
    {
      v17 = v25;
    }

    v25 = v17;
    if (v16)
    {
      v18 = v16;
      if (v17 == 3)
      {
        v19 = v6;
        v20 = v14;
        v21 = v18;
LABEL_56:
        asl_msg_set_key_val_op(v19, v20, v21, v9);
        free(v14);
        free(v18);
        if (v17 == 2)
        {
          goto LABEL_60;
        }

        v22 = _asl_msg_get_next_word(&v24, &v25, 1);
        if (v22)
        {
          if (v25 != 2)
          {
            goto LABEL_69;
          }

          free(v22);
LABEL_60:
          v2 = _asl_msg_get_next_word(&v24, &v25, 1);
          if (!v2)
          {
            return v6;
          }

          continue;
        }
      }

      else
      {
        if (v17 == 2)
        {
          v19 = v6;
          v20 = v14;
          v21 = 0;
          goto LABEL_56;
        }

        free(v14);
        v8 = v18;
LABEL_68:
        free(v8);
LABEL_69:
        asl_release(v6);
        return 0;
      }
    }

    else
    {
      asl_msg_set_key_val_op(v6, v14, 0, v9);
      free(v14);
    }

    return v6;
  }
}

void *_asl_msg_get_next_word(void *result, _DWORD *a2, int a3)
{
  *a2 = 0;
  if (!result)
  {
    return result;
  }

  v3 = *result;
  if (!*result || !*v3)
  {
    return 0;
  }

  if (*v3 == 32)
  {
    *result = ++v3;
  }

  if (a3)
  {
    while (1)
    {
      v5 = *v3;
      if (v5 != 32 && v5 != 9)
      {
        break;
      }

      *result = ++v3;
    }
  }

  else
  {
    v5 = *v3;
  }

  if (!v5 || v5 == 10)
  {
    return 0;
  }

  if (v5 == 91)
  {
    *a2 = 1;
    *result = v3 + 1;
    result = malloc_type_malloc(2uLL, 0xF0589543uLL);
    if (result)
    {
      v8 = 91;
      goto LABEL_47;
    }

    return result;
  }

  if (a3 && v5 == 32)
  {
    *result = v3;
    v9 = 1;
    v10 = v3;
    goto LABEL_44;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (v5 == 92)
  {
    v5 = v13 + 1;
    v14 = v3[v13 + 1];
    v15 = (v14 - 77);
    if (v15 > 0x29)
    {
      goto LABEL_36;
    }

    if (((1 << (v14 - 77)) & 0x2E20231C000) == 0)
    {
      if (v14 != 77)
      {
        if (v15 == 17)
        {
          v5 = v13 + 2;
          goto LABEL_39;
        }

LABEL_36:
        if ((v14 & 0xFC) != 0x30)
        {
          return 0;
        }
      }

      if (!v3[v13 + 2])
      {
        return 0;
      }

      v5 = v13 + 3;
LABEL_39:
      if (!v3[v5])
      {
        return 0;
      }
    }

LABEL_40:
    v11 = v5 + 1;
    v13 = v11;
    ++v12;
    LOBYTE(v5) = v3[v11];
    if (a3 && v3[v11] == 32)
    {
      goto LABEL_42;
    }
  }

  if (v5 && v5 != 93)
  {
    v5 = v13;
    goto LABEL_40;
  }

LABEL_42:
  v9 = (v12 + 1);
  v10 = &v3[v11];
  *result = &v3[v11];
  if (v13)
  {
    v16 = 0;
    goto LABEL_49;
  }

LABEL_44:
  if (*v10 != 93)
  {
    v13 = 0;
    v16 = 1;
LABEL_49:
    *a2 = 4;
    result = malloc_type_malloc(v9, 0x603A4358uLL);
    if (!result)
    {
      return result;
    }

    if (v16)
    {
      v17 = 0;
LABEL_52:
      *(result + v17) = 0;
      return result;
    }

    LODWORD(v17) = 0;
    v18 = 0;
    while (1)
    {
      v19 = v3[v18];
      if (v19 != 92)
      {
        if ((v19 - 58) <= 0xF5u)
        {
          *a2 = 3;
        }

        LODWORD(v20) = v18;
        goto LABEL_63;
      }

      *a2 = 3;
      v20 = v18 + 1;
      v19 = v3[v20];
      if (v19 <= 0x61)
      {
        if (v3[v20] > 0x5Cu)
        {
          switch(v19)
          {
            case ']':
              goto LABEL_63;
            case '^':
              LODWORD(v20) = v18 + 2;
              v19 = v3[v18 + 2];
              if (v19 == 63)
              {
                LOBYTE(v19) = 127;
              }

              else
              {
                LOBYTE(v19) = v19 - 64;
              }

              goto LABEL_63;
            case 'a':
              LOBYTE(v19) = 7;
              goto LABEL_63;
          }
        }

        else
        {
          if (v19 == 77)
          {
            v21 = v3[v18 + 2];
            if (v21 == 45)
            {
              LODWORD(v20) = v18 + 3;
              LOBYTE(v19) = v3[v18 + 3] ^ 0x80;
            }

            else
            {
              if (v21 != 94)
              {
                goto LABEL_98;
              }

              LODWORD(v20) = v18 + 3;
              v19 = v3[v18 + 3];
              if (v19 == 63)
              {
                LOBYTE(v19) = -1;
              }

              else
              {
                LOBYTE(v19) = v19 + 64;
              }
            }

            goto LABEL_63;
          }

          if (v19 == 91 || v19 == 92)
          {
            goto LABEL_63;
          }
        }
      }

      else if (v3[v20] <= 0x71u)
      {
        switch(v19)
        {
          case 'b':
            LOBYTE(v19) = 8;
            goto LABEL_63;
          case 'f':
            LOBYTE(v19) = 12;
            goto LABEL_63;
          case 'n':
            LOBYTE(v19) = 10;
            goto LABEL_63;
        }
      }

      else
      {
        if (v3[v20] <= 0x73u)
        {
          if (v19 == 114)
          {
            LOBYTE(v19) = 13;
          }

          else
          {
            LOBYTE(v19) = 32;
          }

          goto LABEL_63;
        }

        if (v19 == 116)
        {
          LOBYTE(v19) = 9;
          goto LABEL_63;
        }

        if (v19 == 118)
        {
          LOBYTE(v19) = 11;
          goto LABEL_63;
        }
      }

      if ((v19 & 0xFC) != 0x30 || (v22 = v3[v18 + 2], (v22 - 56) <= 0xF7u) || (LODWORD(v20) = v18 + 3, v23 = v3[v18 + 3], (v23 - 56) <= 0xF7u))
      {
LABEL_98:
        *a2 = 0;
        free(result);
        return 0;
      }

      LOBYTE(v19) = v23 + ((v19 << 6) | (8 * (v22 & 7))) - 48;
LABEL_63:
      *(result + v17) = v19;
      v17 = (v17 + 1);
      v18 = v20 + 1;
      if (v20 + 1 >= v13)
      {
        goto LABEL_52;
      }
    }
  }

  *a2 = 2;
  *result = v10 + 1;
  result = malloc_type_malloc(2uLL, 0x4C4E289FuLL);
  if (result)
  {
    v8 = 93;
LABEL_47:
    *result = v8;
  }

  return result;
}

_DWORD *_asl_log_args_to_xpc(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = asl_client_kvdict(a1);
  _asl_msg_to_xpc(v5, a3);

  return _asl_msg_to_xpc(a2, a3);
}

_DWORD *_asl_msg_to_xpc(_DWORD *result, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v15 = 0;
      __s = 0;
      v14 = 0;
      asl_msg_lookup(result, "TimeNanoSec", &v14, 0);
      result = asl_msg_fetch(v3, 0, &__s, &v15, 0);
      if (result != -1)
      {
        v4 = result;
        do
        {
          v5 = __s;
          if (__s)
          {
            v6 = strlen(__s);
            v7 = _asl_msg_std_key(__s, v6);
            v8 = v15;
            if (!v15)
            {
              v9 = xpc_null_create();
              goto LABEL_21;
            }

            if (v7 != 32770)
            {
              if (v7 == 32769)
              {
                v10 = 1000000000 * asl_core_parse_time(v15, 0);
                if (v14)
                {
                  v10 += atoll(v14);
                }

                v9 = xpc_date_create(v10);
              }

              else if (v7)
              {
                if ((v7 & 0xFFFFFFF7) == 0x8006 || (v7 + 32761) <= 1u || v7 == 32777 || (v7 + 32757) <= 1u)
                {
                  v11 = atoll(v15);
                  v9 = xpc_int64_create(v11);
                }

                else
                {
                  if (v7 == 32784)
                  {
                    goto LABEL_22;
                  }

LABEL_11:
                  v9 = xpc_string_create(v8);
                }
              }

              else
              {
                if (strcmp(v5, "SenderMachUUID"))
                {
                  goto LABEL_11;
                }

                memset(uu, 0, sizeof(uu));
                if (uuid_parse(v8, uu))
                {
                  goto LABEL_22;
                }

                v9 = xpc_uuid_create(uu);
              }

LABEL_21:
              v12 = v9;
              xpc_dictionary_set_value(a2, __s, v9);
              xpc_release(v12);
            }
          }

LABEL_22:
          result = asl_msg_fetch(v3, v4, &__s, &v15, 0);
          v4 = result;
        }

        while (result != -1);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _jump_set_key_val_op(int *a1, char *a2, const char *a3, int a4)
{
  if (asl_msg_set_key_val_op(a1, a2, a3, a4))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _jump_get_key_val_op_at_index(uint64_t a1, unsigned int a2, char **a3, int **a4, _WORD *a5)
{
  v8 = 0xFFFFFFFFLL;
  v12 = -1;
  v11 = 0;
  if (!_asl_msg_resolve_index(a1, a2, &v11, &v12))
  {
    if (a3)
    {
      *a3 = _asl_msg_slot_key(v11, v12);
    }

    if (a4)
    {
      *a4 = _asl_msg_slot_val(v11, v12);
    }

    if (a5)
    {
      if (v11)
      {
        v9 = 0;
        if (v12 <= 9 && *v11 == 1)
        {
          v9 = *&v11[2 * v12 + 72];
        }
      }

      else
      {
        v9 = 0;
      }

      v8 = 0;
      *a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t _jump_count_1(uint64_t result)
{
  if (result)
  {
    v1 = result;
    LODWORD(result) = 0;
    do
    {
      result = (*(v1 + 8) + result);
      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return result;
}

int *_jump_append_2(int *a1, asl_object_t obj)
{
  result = asl_get_type(obj);
  if (result <= 1)
  {

    return asl_msg_merge(a1, obj);
  }

  return result;
}

uint64_t _jump_prepend_0(uint64_t result, asl_object_t obj)
{
  if (result)
  {
    v3 = result;
    result = asl_get_type(obj);
    if (result <= 1)
    {
      if (obj)
      {
        v9 = 0;
        v7 = 0;
        v8 = 0;
        type = asl_get_type(obj);
        result = asl_msg_fetch(obj, 0, &v8, &v7, &v9);
        if (result != -1)
        {
          v5 = result;
          do
          {
            if (type)
            {
              v6 = v9;
            }

            else
            {
              v6 = 0;
              v9 = 0;
            }

            asl_msg_set_key_val_op(v3, v8, v7, v6);
            result = asl_msg_fetch(obj, v5, &v8, &v7, &v9);
            v5 = result;
          }

          while (result != -1);
        }
      }
    }
  }

  return result;
}

uint64_t _jump_search_2(__asl_object_s *a1, _DWORD *a2)
{
  if (!a1 || a2 && (*a2 > 1u || !asl_msg_cmp(a1, a2)))
  {
    return 0;
  }

  asl_msg_list_new();
  v4 = v3;
  asl_msg_list_append(v3, a1);
  return v4;
}

uint64_t _jump_match_2(__asl_object_s *a1, uint64_t a2)
{
  if (!a1 || a2 && !asl_msg_cmp_list(a1, a2))
  {
    return 0;
  }

  asl_msg_list_new();
  v4 = v3;
  asl_msg_list_append(v3, a1);
  return v4;
}

uint64_t _asl_msg_basic_test(__int16 a1, char *a2, char *__s1, size_t __n)
{
  v4 = a1;
  if (!a2 || !__s1)
  {
    return v4 & 6;
  }

  v6 = a1 & 7;
  if ((a1 & 0x100) == 0)
  {
    if ((a1 & 0x80) != 0)
    {
      v10 = a2 + 1;
      if (((*a2 - 43) & 0xFD) != 0)
      {
        v10 = a2;
      }

      v11 = *v10;
      if (v11)
      {
        v12 = (((*a2 - 43) & 0xFD) == 0) + 1;
        while ((v11 - 48) < 0xA)
        {
          v11 = a2[v12++];
          if (!v11)
          {
            v13 = __s1 + 1;
            if (((*__s1 - 43) & 0xFD) != 0)
            {
              v13 = __s1;
            }

            v14 = *v13;
            if (v14)
            {
              v15 = (((*__s1 - 43) & 0xFD) == 0) + 1;
              while ((v14 - 48) < 0xA)
              {
                v14 = __s1[v15++];
                if (!v14)
                {
                  v16 = atoll(a2);
                  v17 = atoll(__s1);
                  v18 = v17 < v16;
                  v19 = v17 <= v16;
                  v20 = v17 != v16;
                  if (v6 != 6)
                  {
                    v20 = 0;
                  }

                  if (v6 != 5)
                  {
                    v19 = v20;
                  }

                  if (v6 != 4)
                  {
                    v18 = v19;
                  }

                  v21 = v17 == v16;
                  v22 = v17 > v16;
                  v23 = v22;
                  if (v6 != 3)
                  {
                    v23 = 0;
                  }

                  if (v6 != 2)
                  {
                    v22 = v23;
                  }

                  if (v6 != 1)
                  {
                    v21 = v22;
                  }

                  if (v6 <= 3)
                  {
                    return v21;
                  }

                  else
                  {
                    return v18;
                  }
                }
              }
            }

            break;
          }
        }
      }
    }

    else
    {
      if ((a1 & 0x10) != 0)
      {
        if (__n)
        {
          v7 = strncasecmp(__s1, a2, __n);
        }

        else
        {
          v7 = strcasecmp(__s1, a2);
        }
      }

      else if (__n)
      {
        v7 = strncmp(__s1, a2, __n);
      }

      else
      {
        v7 = strcmp(__s1, a2);
      }

      if (v6 > 3)
      {
        switch(v6)
        {
          case 4:
            return v7 >> 31;
          case 5:
            return v7 < 1;
          case 6:
            return v7 != 0;
        }
      }

      else
      {
        switch(v6)
        {
          case 1:
            return v7 == 0;
          case 2:
            return v7 > 0;
          case 3:
            return v7 >= 0;
        }
      }
    }

    return v6 == 6;
  }

  result = 0;
  if (v6 != 2 && v6 != 4)
  {
    memset(&v26, 0, sizeof(v26));
    if ((v4 & 0x10) != 0)
    {
      v9 = 7;
    }

    else
    {
      v9 = 5;
    }

    if (regcomp(&v26, a2, v9))
    {
      return v4 & 6;
    }

    v24 = regexec(&v26, __s1, 0, 0, 0);
    MEMORY[0x1E12E1DA0](&v26);
    if (v6 == 6)
    {
      return v24 != 0;
    }

    else
    {
      return v24 == 0;
    }
  }

  return result;
}

const char *_asl_level_char(unsigned int a1)
{
  if (a1 > 7)
  {
    return "?";
  }

  else
  {
    return off_1E86CFD38[a1];
  }
}

uint64_t asl_store_open_write(const char *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    result = 1;
    goto LABEL_25;
  }

  started = _asl_start_today();
  if (!started)
  {
    goto LABEL_24;
  }

  v5 = started;
  if (!a1)
  {
    a1 = asl_filesystem_path(0);
  }

  v19 = 0;
  __ptr = 0;
  memset(&v20, 0, sizeof(v20));
  if (!stat(a1, &v20))
  {
    if ((v20.st_mode & 0xF000) == 0x4000)
    {
      goto LABEL_11;
    }

LABEL_17:
    result = 2;
    goto LABEL_25;
  }

  if (*__error() != 2)
  {
    goto LABEL_17;
  }

  if (mkdir(a1, 0x1EDu))
  {
LABEL_8:
    result = 8;
    goto LABEL_25;
  }

LABEL_11:
  snprintf(__str, 0x400uLL, "%s/%s", a1, "StoreData");
  memset(&v20, 0, sizeof(v20));
  if (!stat(__str, &v20))
  {
    v9 = fopen(__str, "r+");
    if (v9)
    {
      v8 = v9;
      if (fread(&__ptr, 8uLL, 1uLL, v9) != 1)
      {
        fclose(v8);
        result = 7;
        goto LABEL_25;
      }

      __ptr = asl_core_ntohq(__ptr);
      goto LABEL_21;
    }

LABEL_24:
    result = 9999;
    goto LABEL_25;
  }

  if (*__error() != 2)
  {
    goto LABEL_24;
  }

  v7 = fopen(__str, "w+");
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  __ptr = 0;
  if (fwrite(&__ptr, 8uLL, 1uLL, v7) != 1 || (v19 = 0, fwrite(&v19, 4uLL, 1uLL, v8) != 1))
  {
    fclose(v8);
    goto LABEL_8;
  }

  fflush(v8);
LABEL_21:
  v10 = malloc_type_calloc(1uLL, 0xA58uLL, 0x10B004012294A83uLL);
  if (!v10)
  {
    fclose(v8);
LABEL_35:
    result = 9;
    goto LABEL_25;
  }

  v11 = v10;
  *v10 = 0x100000004;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = asl_filesystem_path(0);
  }

  v14 = strdup(v12);
  v11[2] = v14;
  if (!v14)
  {
    fclose(v8);
    free(v11);
    goto LABEL_35;
  }

  v15 = 0;
  v11[326] = v5;
  v11[327] = v5 + 86400;
  v16 = __ptr + 1;
  v11[3] = v8;
  v11[4] = v16;
  do
  {
    v17 = &v11[v15];
    *(v17 + 5) = 0uLL;
    v17[9] = 0;
    *(v17 + 7) = 0uLL;
    v17[6] = -1;
    v15 += 5;
  }

  while (v15 != 320);
  result = 0;
  *a2 = v11;
LABEL_25:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_store_set_flags(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 2640);
    *(v2 + 2640) = a2;
  }

  return result;
}

uint64_t asl_store_statistics(uint64_t a1, char **a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = asl_msg_new(0);
  if (!v3)
  {
    return 9;
  }

  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t asl_store_open_read(char *a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a1;
  if (!a1)
  {
    v3 = asl_filesystem_path(0);
  }

  memset(&v9, 0, sizeof(v9));
  if (stat(v3, &v9) || (v9.st_mode & 0xF000) != 0x4000)
  {
    return 2;
  }

  v4 = malloc_type_calloc(1uLL, 0xA58uLL, 0x10B004012294A83uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0x100000004;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = asl_filesystem_path(0);
    }

    v8 = strdup(v6);
    v5[2] = v8;
    if (v8)
    {
      result = 0;
      *a2 = v5;
      return result;
    }

    free(v5);
  }

  return 9;
}

uint64_t asl_store_max_file_size(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  result = 0;
  *(a1 + 2632) = a2;
  return result;
}

double asl_store_file_closeall(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 72);
    v2 = 64;
    do
    {
      if (*v1)
      {
        asl_file_close(*v1);
      }

      *v1 = 0;
      v3 = *(v1 - 1);
      if (v3)
      {
        free(v3);
      }

      result = NAN;
      *(v1 - 3) = -1;
      *(v1 - 2) = 0;
      *(v1 - 1) = 0;
      *(v1 - 4) = 0;
      v1 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

asl_object_t asl_store_retain(asl_object_t obj)
{
  if (obj)
  {
    asl_retain(obj);
  }

  return obj;
}

void asl_store_release(asl_object_t obj)
{
  if (obj)
  {
    asl_release(obj);
  }
}

uint64_t asl_store_close(__asl_object_s *a1)
{
  if (a1)
  {
    asl_release(a1);
  }

  return 0;
}

uint64_t asl_store_sweep_file_cache(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v2 = time(0);
  asl_store_file_cache_lru(a1, v2, 0x40u);
  return 0;
}

uint64_t asl_store_file_cache_lru(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = a2 - 300;
  v6 = a1 + 40;
  v7 = a3;
  v8 = (a1 + 40 + 40 * a3);
  v9 = (a1 + 72);
  do
  {
    if (v7 == v3)
    {
      v10 = *v8;
    }

    else
    {
      v10 = *(v9 - 4);
      if (v10 < v5)
      {
        asl_file_close(*v9);
        *v9 = 0;
        v11 = *(v9 - 1);
        if (v11)
        {
          free(v11);
        }

        v10 = 0;
        *(v9 - 3) = -1;
        *(v9 - 2) = 0;
        *(v9 - 1) = 0;
        *(v9 - 4) = 0;
      }
    }

    if (v10 >= *(v6 + 40 * v4))
    {
      v4 = v4;
    }

    else
    {
      v4 = v3;
    }

    ++v3;
    v9 += 5;
  }

  while (v3 != 64);
  return v4;
}

char *asl_store_file_path(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a1 + 72);
  v3 = 64;
  while (*v2 != a2)
  {
    v2 += 5;
    if (!--v3)
    {
      return 0;
    }
  }

  v4 = *(v2 - 1);
  if (v4)
  {
    return strdup(v4);
  }

  else
  {
    return 0;
  }
}

double asl_store_file_close(uint64_t a1, __asl_object_s *a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 72);
    v3 = 64;
    while (*v2 != a2)
    {
      v2 += 5;
      if (!--v3)
      {
        return result;
      }
    }

    asl_file_close(*v2);
    *v2 = 0;
    v4 = *(v2 - 1);
    if (v4)
    {
      free(v4);
    }

    result = NAN;
    *(v2 - 3) = -1;
    *(v2 - 2) = 0;
    *(v2 - 1) = 0;
    *(v2 - 4) = 0;
  }

  return result;
}

uint64_t asl_store_save(uint64_t a1, _DWORD *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = 2;
    goto LABEL_67;
  }

  if (!a2)
  {
    v7 = 1;
    goto LABEL_67;
  }

  memset(&v37, 0, sizeof(v37));
  v4 = time(0);
  v5 = *(a1 + 2624) + 300 <= v4;
  __s = 0;
  if (asl_msg_lookup(a2, "Time", &__s, 0) || !__s)
  {
    v36 = v4;
    v6 = v4;
  }

  else
  {
    v6 = asl_core_parse_time(__s, 0);
    v36 = v6;
  }

  v8 = *(a1 + 2616);
  if (v6 >= v8 && v4 >= v8)
  {
    asl_store_file_closeall(a1);
    started = _asl_start_today();
    *(a1 + 2608) = started;
    if (!started)
    {
      started = *(a1 + 2616);
      *(a1 + 2608) = started;
    }

    v5 = 0;
    *(a1 + 2616) = started + 86400;
  }

  if (*(a1 + 2640))
  {
    v10 = -1;
    v11 = -1;
  }

  else
  {
    __s = 0;
    v10 = -1;
    if (!asl_msg_lookup(a2, "ReadUID", &__s, 0) && __s)
    {
      v10 = atoi(__s);
    }

    __s = 0;
    v11 = -1;
    if (!asl_msg_lookup(a2, "ReadGID", &__s, 0) && __s)
    {
      v11 = atoi(__s);
    }
  }

  v35 = 0;
  if ((*(a1 + 2640) & 2) != 0)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    __s = 0;
    v12 = 0;
    v13 = 0;
    if (!asl_msg_lookup(a2, "ASLExpireTime", &__s, 0) && __s)
    {
      v13 = 1;
      v35 = 1;
      v36 = asl_core_parse_time(__s, 0);
      v12 = 1;
    }
  }

  if (fseeko(*(a1 + 24), 0, 0))
  {
    v7 = 8;
    goto LABEL_67;
  }

  __ptr = asl_core_htonq(*(a1 + 32));
  v7 = 8;
  if (fwrite(&__ptr, 8uLL, 1uLL, *(a1 + 24)) != 1)
  {
    goto LABEL_67;
  }

  fflush(*(a1 + 24));
  __ptr = *(a1 + 32);
  *(a1 + 32) = __ptr + 1;
  *(a1 + 2624) = v4;
  if (!localtime_r(&v36, &v37))
  {
    goto LABEL_34;
  }

  if (v13)
  {
    *&v37.tm_sec = 0;
    *&v37.tm_hour = 0;
    ++v37.tm_mon;
    v35 = mktime(&v37);
    if (localtime_r(&v35, &v37))
    {
      snprintf(__str, 0x80uLL, "BB.%d.%02d.%02d", v37.tm_year + 1900, v37.tm_mon + 1, v37.tm_mday);
      v12 = v35;
      goto LABEL_36;
    }

LABEL_34:
    v7 = 9999;
    goto LABEL_67;
  }

  snprintf(__str, 0x80uLL, "%d.%02d.%02d", v37.tm_year + 1900, v37.tm_mon + 1, v37.tm_mday);
LABEL_36:
  v14 = 0;
  for (i = 0; i != 64; ++i)
  {
    if (*(a1 + v14 + 48) == v10 && *(a1 + v14 + 52) == v11 && *(a1 + v14 + 56) == v12)
    {
      v16 = *(a1 + v14 + 72);
      if (v16)
      {
        *(a1 + v14 + 40) = v4;
        if (v5)
        {
          asl_store_file_cache_lru(a1, v4, i);
        }

        goto LABEL_53;
      }
    }

    v14 += 40;
  }

  *v40 = 0;
  v38 = 0;
  v39 = 420;
  ug_path = asl_store_make_ug_path(*(a1 + 16), __str, "asl", v10, v11, v40, &v38, &v39);
  if (!ug_path)
  {
    v7 = 9;
    goto LABEL_67;
  }

  v18 = ug_path;
  __to.__pn_.__r_.__value_.__r.__words[0] = 0;
  v19 = asl_file_open_write(ug_path, v39, *v40, v38, &__to);
  if (v19)
  {
    v7 = v19;
    free(v18);
    goto LABEL_67;
  }

  v20 = a1 + 40 + 40 * asl_store_file_cache_lru(a1, v4, 0x40u);
  v21 = *(v20 + 32);
  if (v21)
  {
    asl_file_close(v21);
  }

  v22 = *(v20 + 24);
  if (v22)
  {
    free(v22);
  }

  v23 = __to.__pn_.__r_.__value_.__r.__words[0];
  *(v20 + 24) = v18;
  *(v20 + 32) = v23;
  *(v20 + 8) = v10;
  *(v20 + 12) = v11;
  *(v20 + 16) = v12;
  *v20 = time(0);
  v16 = __to.__pn_.__r_.__value_.__r.__words[0];
LABEL_53:
  v7 = asl_file_save(v16, a2, &__ptr);
  if (!v7)
  {
    v24 = asl_file_size(v16);
    asl_file_ctime(v16);
    v25 = *(a1 + 2632);
    if (v25)
    {
      if (v24 > v25)
      {
        v26 = asl_store_file_path(a1, v16);
        asl_store_file_close(a1, v16);
        if (v26)
        {
          v27 = strlen(v26);
          if ((v27 & 0xFFFFFFFC) != 0 && (v28 = v27, !strcmp(v26 + v27 - 4, ".asl")))
          {
            snprintf(v40, 0x400uLL, "%s", v26);
            v40[v28 - 4] = 0;
            snprintf(&__to, 0x400uLL, "%s.%llu.asl");
          }

          else
          {
            snprintf(&__to, 0x400uLL, "%s.%llu");
          }

          rename(v26, &__to, v29);
          if (v30)
          {
            v7 = 9999;
          }

          else
          {
            v7 = 0;
          }

          free(v26);
        }

        else
        {
          v7 = 0;
        }

        asl_trigger_aslmanager();
      }
    }
  }

LABEL_67:
  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t asl_store_open_aux(uint64_t a1, _DWORD *a2, _DWORD *a3, char **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  result = 1;
  if (a2 && a3 && a4)
  {
    memset(&v22, 0, sizeof(v22));
    __s = 0;
    v21 = time(0);
    if (*(a1 + 2640))
    {
      v9 = -1;
      v10 = -1;
    }

    else
    {
      __s = 0;
      v9 = -1;
      if (!asl_msg_lookup(a2, "ReadUID", &__s, 0) && __s)
      {
        v9 = atoi(__s);
      }

      __s = 0;
      v10 = -1;
      if (!asl_msg_lookup(a2, "ReadGID", &__s, 0) && __s)
      {
        v10 = atoi(__s);
      }
    }

    v20 = 0;
    if ((*(a1 + 2640) & 2) != 0 || (__s = 0, asl_msg_lookup(a2, "ASLExpireTime", &__s, 0)) || !__s)
    {
      if (localtime_r(&v21, &v22))
      {
        snprintf(__str, 0x80uLL, "AUX.%d.%02d.%02d");
        goto LABEL_21;
      }
    }

    else
    {
      v21 = asl_core_parse_time(__s, 0);
      if (localtime_r(&v21, &v22))
      {
        *&v22.tm_sec = 0;
        *&v22.tm_hour = 0;
        ++v22.tm_mon;
        v20 = mktime(&v22);
        if (localtime_r(&v20, &v22))
        {
          snprintf(__str, 0x80uLL, "BB.AUX.%d.%02d.%02d");
LABEL_21:
          snprintf(v25, 0x400uLL, "%s/%s", *(a1 + 16), __str);
          memset(&v23, 0, sizeof(v23));
          if (stat(v25, &v23))
          {
            if (*__error() == 2)
            {
              if (mkdir(v25, 0x1EDu))
              {
                goto LABEL_34;
              }

              goto LABEL_27;
            }

            goto LABEL_25;
          }

          if ((v23.st_mode & 0xF000) == 0x4000)
          {
LABEL_27:
            v11 = *(a1 + 32);
            *(a1 + 32) = v11 + 1;
            snprintf(v25, 0x80uLL, "%s/%llu", __str, v11);
            v23.st_dev = 0;
            v18 = 0;
            v17 = 420;
            ug_path = asl_store_make_ug_path(*(a1 + 16), v25, 0, v9, v10, &v23, &v18, &v17);
            if (!ug_path)
            {
              result = 9;
              goto LABEL_31;
            }

            v13 = ug_path;
            v14 = asl_file_create(ug_path, v23.st_dev, v18, v17);
            if ((v14 & 0x80000000) == 0)
            {
              v15 = v14;
              *a4 = 0;
              asprintf(a4, "file://%s", v13);
              free(v13);
              result = 0;
              *a3 = v15;
              goto LABEL_31;
            }

            free(v13);
            *a3 = -1;
LABEL_34:
            result = 8;
            goto LABEL_31;
          }

LABEL_30:
          result = 2;
          goto LABEL_31;
        }
      }
    }

LABEL_25:
    result = 9999;
  }

LABEL_31:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

char *asl_store_make_ug_path(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _DWORD *a6, _DWORD *a7, _WORD *a8)
{
  v11 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 420;
  if (a4 == -1)
  {
    if (a5 == -1)
    {
      if (a3)
      {
        asprintf(&v11, "%s/%s.%s");
      }

      else
      {
        asprintf(&v11, "%s/%s");
      }
    }

    else
    {
      *a7 = a5;
      *a8 = 384;
      if (a3)
      {
        asprintf(&v11, "%s/%s.G%d.%s");
      }

      else
      {
        asprintf(&v11, "%s/%s.G%d");
      }
    }
  }

  else
  {
    *a6 = a4;
    if (a5 == -1)
    {
      *a8 = 384;
      if (a3)
      {
        asprintf(&v11, "%s/%s.U%d.%s");
      }

      else
      {
        asprintf(&v11, "%s/%s.U%d");
      }
    }

    else
    {
      *a7 = a5;
      *a8 = 384;
      v8 = *a6;
      if (a3)
      {
        asprintf(&v11, "%s/%s.U%d.G%u.%s");
      }

      else
      {
        v10 = *a6;
        asprintf(&v11, "%s/%s.U%d.G%d");
      }
    }
  }

  return v11;
}

uint64_t asl_store_match(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int a5, unsigned int a6, int a7)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1 && (v14 = opendir(*(a1 + 16))) != 0)
  {
    v15 = v14;
    v23 = 0;
    v16 = readdir(v14);
    for (i = 0; v16; v16 = readdir(v15))
    {
      v19 = v16->d_name[0];
      d_name = v16->d_name;
      if (v19 != 46)
      {
        snprintf(__str, 0x400uLL, "%s/%s", *(a1 + 16), d_name);
        if (!asl_file_open_read(__str, &v23))
        {
          if (v23)
          {
            i = asl_file_list_add(i, v23);
          }
        }
      }
    }

    closedir(v15);
    v20 = asl_file_list_match(i, a2, a3, a4, a5, a6, a7);
    asl_file_list_close(i);
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t asl_store_match_timeout(uint64_t a1, uint64_t a2, unsigned int **a3, void *a4, unint64_t a5, int a6, int a7, unsigned int a8)
{
  obj = 0;
  if (!a3)
  {
    return 9999;
  }

  *a3 = 0;
  v15 = asl_store_open_read(0, &obj);
  if (!v15)
  {
    if (a2)
    {
      if (*a2)
      {
        v16 = asl_new(2u);
        v17 = *a2;
        *(a2 + 4) = 0;
        if (v17)
        {
          v18 = 0;
          do
          {
            asl_append(v16, *(*(a2 + 8) + 8 * v18));
            v19 = *a2;
            v18 = *(a2 + 4) + 1;
            *(a2 + 4) = v18;
          }

          while (v18 < v19);
        }
      }

      else
      {
        v16 = 0;
        *(a2 + 4) = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = asl_store_match(obj, v16, a4, a5, a6, a8, a7);
    asl_release(obj);
    asl_release(v16);
    if (v20)
    {
      v21 = asl_count(v20);
      if (v21)
      {
        v22 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
        if (v22)
        {
          v23 = v22;
          *v22 = v21;
          *(v22 + 1) = malloc_type_calloc(v21, 8uLL, 0x80040B8603338uLL);
          v23[1] = 0;
          if (*v23)
          {
            do
            {
              v24 = asl_next(v20);
              v25 = asl_retain(v24);
              v27 = *v23;
              v26 = v23[1];
              *(*(v23 + 1) + 8 * v26) = v25;
              v23[1] = v26 + 1;
            }

            while (v26 + 1 < v27);
          }

          v15 = 0;
          v23[1] = 0;
          *a3 = v23;
        }

        else
        {
          v15 = 9;
        }
      }

      else
      {
        v15 = 0;
      }

      asl_release(v20);
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

uint64_t asl_store_match_start(uint64_t a1, unint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 2600);
    if (v6)
    {
      asl_file_list_match_end(v6);
    }

    *(a1 + 2600) = 0;
    v7 = opendir(*(a1 + 16));
    if (v7)
    {
      v8 = v7;
      v16 = 0;
      v9 = readdir(v7);
      for (i = 0; v9; v9 = readdir(v8))
      {
        v12 = v9->d_name[0];
        d_name = v9->d_name;
        if (v12 != 46)
        {
          snprintf(__str, 0x400uLL, "%s/%s", *(a1 + 16), d_name);
          if (!asl_file_open_read(__str, &v16))
          {
            if (v16)
            {
              i = asl_file_list_add(i, v16);
            }
          }
        }
      }

      closedir(v8);
      matched = asl_file_list_match_start(i, a2, a3);
      *(a1 + 2600) = matched;
      if (matched)
      {
        result = 0;
      }

      else
      {
        result = 9999;
      }
    }

    else
    {
      result = 7;
    }
  }

  else
  {
    result = 2;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_store_match_next(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (!a1)
  {
    return 2;
  }

  result = *(a1 + 2600);
  if (result)
  {
    return asl_file_list_match_next(result, a2, a3, a4);
  }

  return result;
}

uint64_t _jump_next_1(uint64_t a1)
{
  v7 = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    return 0;
  }

  *(a1 + 8) = v2 + 1;
  v3 = asl_store_match(a1, 0, &v7, v2 + 1, 1, 0, 1);
  if (v3)
  {
    v4 = v3;
    *(a1 + 8) = v7;
    index = asl_msg_list_get_index(v3, 0);
    asl_msg_list_release(v4);
  }

  else
  {
    index = 0;
    *(a1 + 8) = -1;
  }

  return index;
}

uint64_t _jump_prev_1(uint64_t a1)
{
  v7 = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  *(a1 + 8) = v2 - 1;
  if (v2 == 1)
  {
    return 0;
  }

  v3 = asl_store_match(a1, 0, &v7, v2 - 1, 1, 0, -1);
  if (v3)
  {
    v4 = v3;
    *(a1 + 8) = v7;
    index = asl_msg_list_get_index(v3, 0);
    asl_msg_list_release(v4);
  }

  else
  {
    index = 0;
    *(a1 + 8) = 0;
  }

  return index;
}

uint64_t _jump_set_iteration_index_1(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t _jump_append_3(uint64_t a1, asl_object_t obj)
{
  result = asl_get_type(obj);
  if (a1 && (*(a1 + 2640) & 1) == 0)
  {
    if (result == 2)
    {
      asl_msg_list_reset_iteration(obj, 0);
      do
      {
        result = asl_msg_list_next(obj);
        if (!result)
        {
          break;
        }

        result = asl_store_save(a1, result);
      }

      while (!result);
    }

    else if (result <= 1)
    {

      return asl_store_save(a1, obj);
    }
  }

  return result;
}

uint64_t _jump_search_3(uint64_t a1, asl_object_t obj)
{
  type = asl_get_type(obj);
  v11 = 0;
  if (!obj)
  {
    v5 = a1;
    v6 = 0;
    return asl_store_match(v5, v6, &v11, 0, 0, 0, 1);
  }

  if (type == 2)
  {
    v5 = a1;
    v6 = obj;
    return asl_store_match(v5, v6, &v11, 0, 0, 0, 1);
  }

  if (type > 1)
  {
    return 0;
  }

  asl_msg_list_new();
  v10 = v9;
  asl_msg_list_append(v9, obj);
  v7 = asl_store_match(a1, v10, &v11, 0, 0, 0, 1);
  asl_msg_list_release(v10);
  return v7;
}

uint64_t _jump_match_3(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int a5, unsigned int a6, int a7)
{
  v9 = 0;
  result = asl_store_match(a1, a2, &v9, a4, a5, a6, a7);
  *a3 = v9;
  return result;
}

tm *_asl_start_today()
{
  memset(&v1, 0, sizeof(v1));
  v2 = time(0);
  result = localtime_r(&v2, &v1);
  if (result)
  {
    *&v1.tm_sec = 0;
    v1.tm_hour = 0;
    return mktime(&v1);
  }

  return result;
}

uint64_t asl_is_utf8(unsigned __int8 *a1)
{
  if (a1)
  {
    v2 = *a1;
    result = 1;
    if (!v2)
    {
      return result;
    }

    v4 = 0;
    v5 = 0;
    v6 = a1 + 1;
    while (1)
    {
      if (v5 > 1)
      {
        v7 = v4 & 0xFFFFFFFE;
        v8 = (v4 - 4) < 3 && v2 < -64;
        if (v8)
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v10 = v7 == 2;
        if (v7 == 2)
        {
          v11 = 2 * (v2 > -65);
        }

        else
        {
          v11 = v9;
        }

        if (v10)
        {
          v8 = v2 < -64;
        }

        v12 = (v4 - 4) < 3 && v2 < -64;
        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = 3;
        }

        v14 = v5 == 2;
        if (v5 == 2)
        {
          v5 = v11;
        }

        else
        {
          v5 = v13;
        }

        if (v14)
        {
          v15 = v8;
        }

        else
        {
          v15 = v12;
        }

        goto LABEL_64;
      }

      if (v5)
      {
        v15 = 0;
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            v15 = (v2 - 144) < 0x30;
            if ((v2 - 144) >= 0x30)
            {
              v5 = 1;
            }

            else
            {
              v5 = 2;
            }

            v4 = 4;
          }

          else if (v4 == 5)
          {
            v15 = v2 < -64;
            if (v2 >= -64)
            {
              v5 = 1;
            }

            else
            {
              v5 = 2;
            }

            v4 = 5;
          }

          else
          {
            v15 = v2 < -112;
            if (v2 >= -112)
            {
              v5 = 1;
            }

            else
            {
              v5 = 2;
            }

            v4 = 6;
          }
        }

        else
        {
          switch(v4)
          {
            case 1:
              v5 = v2 > -65;
              v15 = v2 < -64;
              v4 = 1;
              break;
            case 2:
              v15 = (v2 & 0xE0) == 160;
              if ((v2 & 0xE0) == 0xA0)
              {
                v5 = 2;
              }

              else
              {
                v5 = 1;
              }

              v4 = 2;
              break;
            case 3:
              v15 = v2 < -64;
              if (v2 >= -64)
              {
                v5 = 1;
              }

              else
              {
                v5 = 2;
              }

              v4 = 3;
              break;
            default:
              return v15;
          }
        }

        goto LABEL_64;
      }

      if ((v2 & 0x80) != 0)
      {
        if ((v2 - 194) >= 0x1E)
        {
          if (v2 == 224)
          {
            v5 = 1;
            v4 = 2;
          }

          else if ((v2 - 225) >= 0xF)
          {
            if (v2 == 240)
            {
              v5 = 1;
              v4 = 4;
            }

            else
            {
              if ((v2 - 241) >= 3)
              {
                v15 = v2 == 244;
                if (v2 == 244)
                {
                  v4 = 6;
                }

                else
                {
                  v4 = 0;
                }

                v5 = 1;
                goto LABEL_64;
              }

              v5 = 1;
              v4 = 5;
            }
          }

          else
          {
            v5 = 1;
            v4 = 3;
          }
        }

        else
        {
          v5 = 1;
          v4 = 1;
        }
      }

      else
      {
        v5 = 0;
        v4 = 0;
      }

      v15 = 1;
LABEL_64:
      v16 = *v6++;
      v2 = v16;
      if (!v16 || !v15)
      {
        return v15;
      }
    }
  }

  return 1;
}

char *asl_b64_encode(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = malloc_type_malloc((4 * ((a2 + 2) / 3)) | 1, 0x100004077774924uLL);
    if (result)
    {
      result[(2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL] = 0;
      if (a2 < 3)
      {
        v11 = 0;
        v12 = 0;
        v8 = 1;
      }

      else
      {
        v5 = result + 3;
        v6 = (a1 + 2);
        v7 = 1;
        v8 = 1;
        do
        {
          *(v5 - 3) = aAbcdefghijklmn[*(v6 - 2) >> 2];
          *(v5 - 2) = aAbcdefghijklmn[(*(v6 - 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(v6 - 2) & 3))];
          *(v5 - 1) = aAbcdefghijklmn[(*v6 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(v6 - 1) & 0xF))];
          v9 = *v6;
          v6 += 3;
          v10 = v8 + 4;
          v8 += 3;
          *v5 = aAbcdefghijklmn[v9 & 0x3F];
          v5 += 4;
          v7 += 4;
        }

        while (v10 < a2);
        v11 = v8 - 1;
        v12 = v7 - 1;
      }

      if (v11 < a2)
      {
        v14 = &result[v12];
        *v14 = aAbcdefghijklmn[*(a1 + v11) >> 2];
        v15 = 16 * (*(a1 + v11) & 3);
        if (v8 >= a2)
        {
          v14[1] = aAbcdefghijklmn[v15];
          v14[2] = 61;
        }

        else
        {
          v14[1] = aAbcdefghijklmn[v15 | (*(a1 + v8) >> 4)];
          v14[2] = aAbcdefghijklmn[4 * (*(a1 + v8) & 0xF)];
        }

        v14[3] = 61;
      }
    }

    else
    {
      v13 = __error();
      result = 0;
      *v13 = 12;
    }
  }

  return result;
}

uint64_t asl_syslog_faciliy_name_to_num(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strcasecmp(a1, "auth"))
  {
    return 32;
  }

  if (!strcasecmp(a1, "authpriv"))
  {
    return 80;
  }

  if (!strcasecmp(a1, "cron"))
  {
    return 72;
  }

  if (!strcasecmp(a1, "daemon"))
  {
    return 24;
  }

  if (!strcasecmp(a1, "ftp"))
  {
    return 88;
  }

  if (!strcasecmp(a1, "install"))
  {
    return 112;
  }

  result = strcasecmp(a1, "kern");
  if (!result)
  {
    return result;
  }

  if (!strcasecmp(a1, "lpr"))
  {
    return 48;
  }

  if (!strcasecmp(a1, "mail"))
  {
    return 16;
  }

  if (!strcasecmp(a1, "netinfo"))
  {
    return 96;
  }

  if (!strcasecmp(a1, "remoteauth"))
  {
    return 104;
  }

  if (!strcasecmp(a1, "news"))
  {
    return 56;
  }

  if (!strcasecmp(a1, "security"))
  {
    return 32;
  }

  if (!strcasecmp(a1, "syslog"))
  {
    return 40;
  }

  if (!strcasecmp(a1, "user"))
  {
    return 8;
  }

  if (!strcasecmp(a1, "uucp"))
  {
    return 64;
  }

  if (!strcasecmp(a1, "local0"))
  {
    return 128;
  }

  if (!strcasecmp(a1, "local1"))
  {
    return 136;
  }

  if (!strcasecmp(a1, "local2"))
  {
    return 144;
  }

  if (!strcasecmp(a1, "local3"))
  {
    return 152;
  }

  if (!strcasecmp(a1, "local4"))
  {
    return 160;
  }

  if (!strcasecmp(a1, "local5"))
  {
    return 168;
  }

  if (!strcasecmp(a1, "local6"))
  {
    return 176;
  }

  if (!strcasecmp(a1, "local7"))
  {
    return 184;
  }

  if (!strcasecmp(a1, "launchd"))
  {
    return 192;
  }

  return 0xFFFFFFFFLL;
}

uint64_t asl_trigger_aslmanager()
{
  mach_service = xpc_connection_create_mach_service("com.apple.aslmanager", 0, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_1);
  xpc_connection_resume(mach_service);
  if (!mach_service)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = xpc_dictionary_create(0, 0, 0);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = xpc_connection_send_message_with_reply_sync(mach_service, v1);
  if (v3)
  {
    xpc_release(v3);
  }

  xpc_release(v2);
  xpc_release(mach_service);
  return 0;
}

uint64_t asl_object_set_key_val_op(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || *a1 > 6u)
  {
    return 0xFFFFFFFFLL;
  }

  if (asl_object_once != -1)
  {
    asl_object_set_key_val_op_cold_1();
  }

  v8 = *(asl_jump[*a1] + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  return v8(a1, a2, a3, a4);
}

void asl_object_unset_key(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 <= 6u)
  {
    if (asl_object_once != -1)
    {
      asl_object_unset_key_cold_1();
    }

    v4 = *(asl_jump[*a1] + 24);
    if (v4)
    {

      v4(a1, a2);
    }
  }
}

uint64_t asl_object_get_val_op_for_key(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || *a1 > 6u)
  {
    return 0xFFFFFFFFLL;
  }

  if (asl_object_once != -1)
  {
    asl_object_get_val_op_for_key_cold_1();
  }

  v8 = *(asl_jump[*a1] + 32);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t asl_object_get_key_val_op_at_index(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || *a1 > 6u)
  {
    return 0xFFFFFFFFLL;
  }

  if (asl_object_once != -1)
  {
    asl_object_get_key_val_op_at_index_cold_1();
  }

  v10 = *(asl_jump[*a1] + 40);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t asl_object_count(_DWORD *a1)
{
  if (!a1 || *a1 > 6u)
  {
    return 0;
  }

  if (asl_object_once != -1)
  {
    asl_object_count_cold_1();
  }

  v2 = *(asl_jump[*a1] + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t asl_object_next(_DWORD *a1)
{
  if (!a1 || *a1 > 6u)
  {
    return 0;
  }

  if (asl_object_once != -1)
  {
    asl_object_next_cold_1();
  }

  v2 = *(asl_jump[*a1] + 56);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t asl_object_prev(_DWORD *a1)
{
  if (!a1 || *a1 > 6u)
  {
    return 0;
  }

  if (asl_object_once != -1)
  {
    asl_object_prev_cold_1();
  }

  v2 = *(asl_jump[*a1] + 64);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t asl_object_get_object_at_index(_DWORD *a1, uint64_t a2)
{
  if (!a1 || *a1 > 6u)
  {
    return 0;
  }

  if (asl_object_once != -1)
  {
    asl_object_get_object_at_index_cold_1();
  }

  v4 = *(asl_jump[*a1] + 72);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

void asl_object_set_iteration_index(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 <= 6u)
  {
    if (asl_object_once != -1)
    {
      asl_object_set_iteration_index_cold_1();
    }

    v4 = *(asl_jump[*a1] + 80);
    if (v4)
    {

      v4(a1, a2);
    }
  }
}

void asl_object_remove_object_at_index(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 <= 6u)
  {
    if (asl_object_once != -1)
    {
      asl_object_remove_object_at_index_cold_1();
    }

    v4 = *(asl_jump[*a1] + 88);
    if (v4)
    {

      v4(a1, a2);
    }
  }
}

void asl_object_append(int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *a1;
    if (*a1 > 6)
    {
      return;
    }
  }

  else
  {
    v6 = 5;
  }

  if (asl_object_once != -1)
  {
    asl_object_append_cold_1();
  }

  v7 = *(asl_jump[v6] + 96);
  if (v7)
  {

    v7(a1, a2, a3);
  }
}

void asl_object_prepend(_DWORD *a1, uint64_t a2)
{
  if (a1 && *a1 <= 6u)
  {
    if (asl_object_once != -1)
    {
      asl_object_prepend_cold_1();
    }

    v4 = *(asl_jump[*a1] + 104);
    if (v4)
    {

      v4(a1, a2);
    }
  }
}

uint64_t asl_object_search(_DWORD *a1, __asl_object_s *a2)
{
  if (a1)
  {
    if (*a1 > 6u)
    {
      return 0;
    }

    if (asl_object_once != -1)
    {
      asl_object_search_cold_1();
    }

    v4 = *(asl_jump[*a1] + 112);
    if (v4)
    {

      return v4(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return asl_client_search(0, a2);
  }
}

uint64_t asl_object_match(_DWORD *a1, void *a2, char **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (*a1 > 6u)
    {
      return 0;
    }

    if (asl_object_once != -1)
    {
      asl_object_match_cold_1();
    }

    v14 = *(asl_jump[*a1] + 120);
    if (v14)
    {

      return v14(a1, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return asl_client_match(0, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t asl_get_value_for_key(_DWORD *a1, uint64_t a2)
{
  v4 = 0;
  v3 = 0;
  asl_object_get_val_op_for_key(a1, a2, &v4, &v3);
  return v4;
}

int asl_set(asl_object_t obj, const char *key, const char *value)
{
  if (!obj)
  {
    return -1;
  }

  if (*obj == 1)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return asl_object_set_key_val_op(obj, key, value, v3);
}

const char *__cdecl asl_key(asl_object_t msg, uint32_t n)
{
  v3 = 0;
  if (asl_object_get_key_val_op_at_index(msg, n, &v3, 0, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

const char *__cdecl asl_get(asl_object_t msg, const char *key)
{
  v3 = 0;
  if (asl_object_get_val_op_for_key(msg, key, &v3, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

int asl_fetch_key_val_op(asl_object_t msg, uint32_t n, const char **key, const char **val, uint32_t *op)
{
  v7 = 0;
  result = asl_object_get_key_val_op_at_index(msg, n, key, val, &v7);
  if (op)
  {
    if (!result)
    {
      *op = v7;
    }
  }

  return result;
}

char *__cdecl asl_format(char *msg, const char *msg_fmt, const char *time_fmt, uint32_t text_encoding)
{
  if (msg)
  {
    if (*msg)
    {
      return 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v6 = 0;
      return asl_format_message(msg, msg_fmt, time_fmt, text_encoding, &v6);
    }
  }

  return msg;
}

void openlog(const char *a1, int a2, int a3)
{
  pthread_mutex_lock(&_sl_lock);
  if (_sl_asl)
  {
    asl_release(_sl_asl);
  }

  _sl_asl = 0;
  free(_sl_ident);
  _sl_ident = 0;
  if (a1)
  {
    _sl_ident = strdup(a1);
  }

  _sl_fac = a3;
  v6 = asl_syslog_faciliy_num_to_name(a3);
  _sl_opts = a2;
  if ((a2 & 0x1000) != 0)
  {
    v7 = 65540;
  }

  else
  {
    v7 = 0x10000;
  }

  _sl_mask = 255;
  _sl_asl = asl_open(_sl_ident, v6, v7 & 0xFFFFFFFE | (a2 >> 5) & 1);
  asl_set_filter(_sl_asl, _sl_mask);

  pthread_mutex_unlock(&_sl_lock);
}

void closelog(void)
{
  pthread_mutex_lock(&_sl_lock);
  if (_sl_asl)
  {
    asl_close(_sl_asl);
  }

  _sl_asl = 0;
  free(_sl_ident);
  _sl_ident = 0;
  _sl_fac = 0;

  pthread_mutex_unlock(&_sl_lock);
}

int setlogmask(int a1)
{
  if (!a1)
  {
    return _sl_mask;
  }

  pthread_mutex_lock(&_sl_lock);
  _sl_mask = a1;
  v2 = asl_set_filter(_sl_asl, a1);
  if ((_sl_opts & 0x20) != 0)
  {
    asl_set_output_file_filter(_sl_asl, 2, a1);
  }

  pthread_mutex_unlock(&_sl_lock);
  return v2;
}

uint64_t _asl_server_create_aux_link(int a1, uint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6, _DWORD *a7)
{
  *&reply_port[16] = 0x100000000;
  *&v22[4] = 0;
  memset(v23, 0, sizeof(v23));
  *reply_port = 0u;
  v20 = a2;
  v21 = 16777473;
  *v22 = a3;
  *&v22[4] = *MEMORY[0x1E69E99E0];
  *v23 = a3;
  v12 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v12;
  v18 = -2147478253;
  *&reply_port[12] = 0x7500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v18);
    v13 = *&reply_port[8];
  }

  else
  {
    v13 = v12;
  }

  v14 = mach_msg(&v18, 3, 0x38u, 0x50u, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v14)
    {
      if (*&reply_port[16] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&reply_port[16] == 217)
      {
        if (v18 < 0)
        {
          v15 = 4294966996;
          if (*&reply_port[20] == 2 && *reply_port == 72 && !*&reply_port[4] && HIWORD(v21) << 16 == 1114112 && v22[11] == 1)
          {
            v16 = *v23;
            if (*v23 == *&v23[12])
            {
              v15 = 0;
              *a4 = v20;
              *a5 = *v22;
              *a6 = v16;
              *a7 = *&v23[16];
              return v15;
            }
          }
        }

        else if (*reply_port == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (*&reply_port[4])
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  return v15;
}

uint64_t _asl_server_message(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 16777473;
  v7 = a3;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1DF925580;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
}

uint64_t _asl_server_register_direct_watch(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 119;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t _asl_server_cancel_direct_watch(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 120;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t _asl_server_query_2(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, void *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  msg.msgh_id = 0;
  v24 = 0;
  v25 = 0u;
  v26 = 0;
  *&msg.msgh_size = 0u;
  v20 = 1;
  v21 = a2;
  v22 = 16777473;
  v23 = a3;
  v24 = *MEMORY[0x1E69E99E0];
  LODWORD(v25) = a3;
  *(&v25 + 4) = a4;
  HIDWORD(v25) = a5;
  LODWORD(v26) = a6;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x7900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v15 = mach_msg(&msg, 3, 0x48u, 0x4Cu, msgh_local_port, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v15)
    {
      if (msg.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (msg.msgh_id == 221)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v16 = 4294966996;
          if (v20 == 1 && msg.msgh_size == 68 && !msg.msgh_remote_port && HIBYTE(v22) == 1)
          {
            v17 = v23;
            if (v23 == v25)
            {
              v16 = 0;
              *a7 = v21;
              *a8 = v17;
              *a9 = *(&v25 + 4);
              *a10 = HIDWORD(v25);
              return v16;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v16 = 4294966996;
          if (HIDWORD(v21))
          {
            if (msg.msgh_remote_port)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = HIDWORD(v21);
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v16;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v16;
}

uint64_t _asl_server_match(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8, _DWORD *a9, void *a10, _DWORD *a11)
{
  v20 = 1;
  v21 = a2;
  v22 = 16777473;
  v23 = a3;
  v24 = *MEMORY[0x1E69E99E0];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  reply_port = mig_get_reply_port();
  *&v19.msgh_bits = 2147489043;
  v19.msgh_remote_port = a1;
  v19.msgh_local_port = reply_port;
  *&v19.msgh_voucher_port = 0x7A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v19);
    msgh_local_port = v19.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v15 = mach_msg(&v19, 3, 0x50u, 0x4Cu, msgh_local_port, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v19.msgh_local_port);
  }

  else
  {
    if (!v15)
    {
      if (v19.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (v19.msgh_id == 222)
      {
        if ((v19.msgh_bits & 0x80000000) != 0)
        {
          v16 = 4294966996;
          if (v20 == 1 && *&v19.msgh_size == 68 && HIBYTE(v22) == 1)
          {
            v17 = v23;
            if (v23 == v25)
            {
              v16 = 0;
              *a8 = v21;
              *a9 = v17;
              *a10 = v26;
              *a11 = v27;
              return v16;
            }
          }
        }

        else if (v19.msgh_size == 36)
        {
          v16 = 4294966996;
          if (HIDWORD(v21))
          {
            if (v19.msgh_remote_port)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = HIDWORD(v21);
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&v19);
      return v16;
    }

    mig_dealloc_reply_port(v19.msgh_local_port);
  }

  return v16;
}