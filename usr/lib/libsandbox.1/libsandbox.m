uint64_t sb_inspect_subsystem(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = 0;
  v7 = 10;
  while (1)
  {
    if (v6)
    {
      free(v6);
    }

    v9 = malloc_type_malloc(0x1000uLL, 0xC8CC48E1uLL);
    if (!__sandbox_ms())
    {
      break;
    }

    if (*__error() != 63)
    {
      if (v9)
      {
        free(v9);
      }

      return *__error();
    }

    v6 = v9;
    if (!--v7)
    {
      free(v9);
      return 26;
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  result = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

void *sb_packbuff_new(unint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  v3 = v2;
  if (v2)
  {
    v4 = 256;
    if (a1 >= 8)
    {
      v4 = a1;
    }

    v2[1] = v4;
    *v2 = 1;
    if (sb_packbuff_realloc(v2, 0))
    {
      free(v3);
      return 0;
    }

    else
    {
      *(v3 + 3) -= 8;
      *(v3 + 4) = 8;
      **(v3 + 6) = 0;
    }
  }

  return v3;
}

uint64_t sb_packbuff_realloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 45;
  }

  if (*a1 != 1)
  {
    return 45;
  }

  v5 = 8 - (a2 & 7);
  v6 = (a2 & 7) == 0;
  v7 = *(a1 + 16) + v2;
  *(a1 + 16) = v7;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 + a2;
  if (v9 > v7 - *(a1 + 32))
  {
    v7 += v9;
    *(a1 + 16) = v7;
  }

  v10 = reallocf(*(a1 + 40), v7);
  *(a1 + 40) = v10;
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  result = 0;
  v13 = *(a1 + 32);
  *(a1 + 24) = *(a1 + 16) - v13;
  if (v13)
  {
    v11 = v11 + v13 - 8;
  }

  *(a1 + 48) = v11;
  return result;
}

void *sb_packbuff_init_with_buffer(void *a1, uint64_t a2, int a3, int a4)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  if (result)
  {
    *result = a4;
    result[1] = 0;
    result[2] = a2;
    v9 = a2;
    result[5] = a1;
    result[6] = a1;
    if (!a3)
    {
      *a1 = 0;
      a2 = result[2];
      v9 = 8;
    }

    result[3] = a2 - v9;
    result[4] = v9;
  }

  return result;
}

void sb_packbuff_free(uint64_t *a1)
{
  if (a1)
  {
    if (*a1 == 2)
    {
      if (MEMORY[0x29C2A2CB0](*MEMORY[0x29EDCA6B0], a1[5], a1[2]) && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        sb_packbuff_free_cold_1(a1 + 5, a1 + 2);
      }
    }

    else if (*a1 == 1)
    {
      free(a1[5]);
    }

    free(a1);
  }
}

uint64_t sb_packbuff_get_item_value_type(void *a1, _WORD *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v2 < v3 || (v2 + 4) > v3 + a1[4] || !*v2)
  {
    return 0;
  }

  *a2 = v2[1];
  return 1;
}

uint64_t sb_packbuff_unpack_uint32(void *a1, int *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3 < v2 || (v5 = v3 + 8, v3 + 8 > v2 + a1[4]))
  {
    result = 0;
LABEL_4:
    v7 = 34;
    goto LABEL_5;
  }

  if (*v3 == 1)
  {
    result = *(v3 + 4);
    if (v5 >= v2 + a1[2])
    {
      goto LABEL_4;
    }

    v7 = 0;
    a1[6] = v5;
  }

  else
  {
    result = 0;
    v7 = 22;
  }

LABEL_5:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sb_packbuff_unpack_item(void *a1, int a2, _DWORD *a3, unsigned __int16 **a4, _DWORD *a5)
{
  v5 = a1[5];
  v6 = a1[6];
  if (v6 < v5)
  {
    return 34;
  }

  v7 = (v6 + 8);
  if (v6 + 8 > v5 + a1[4])
  {
    return 34;
  }

  if (*v6 != a2)
  {
    return 22;
  }

  if ((a2 & 0xFFFE) != 2)
  {
    if (a3)
    {
      *a3 = *(v6 + 4);
      v11 = 8;
      goto LABEL_15;
    }

    return 22;
  }

  v8 = 22;
  if (!a4 || !a5)
  {
    return v8;
  }

  v10 = *(v6 + 4);
  LODWORD(v6) = 8 - (*(v6 + 4) & 7);
  *a4 = v7;
  *a5 = v10;
  if ((v10 & 7) != 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v10 + v6 + 8;
  v5 = a1[5];
  v6 = a1[6];
LABEL_15:
  v12 = (v6 + v11);
  if (v12 < v5 || v12 >= v5 + a1[2])
  {
    return 34;
  }

  if ((v11 & 7) != 0)
  {
    sb_packbuff_unpack_item_cold_1();
  }

  v8 = 0;
  a1[6] = v12;
  return v8;
}

unsigned __int16 *sb_packbuff_unpack_string(void *a1, void *a2, int *a3)
{
  v9 = 0;
  v8 = 0;
  v5 = sb_packbuff_unpack_item(a1, 2, 0, &v8, &v9);
  if (!v5)
  {
    if (v9 && (v6 = (v9 - 1), !*(v8 + v6)))
    {
      v5 = 0;
      if (a2)
      {
        *a2 = v6;
      }
    }

    else
    {
      v5 = 22;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v8;
}

uint64_t sb_packbuff_pack_item(void *a1, unsigned int a2, __int16 a3, int a4, void *__src, size_t __n)
{
  v6 = __n;
  v12 = 8;
  if (__n)
  {
    if ((__n & 7) != 0)
    {
      v13 = 8 - (__n & 7);
    }

    else
    {
      v13 = 0;
    }

    result = 34;
    v15 = __n + v13;
    if (__CFADD__(__n, v13) || v15 > 0xFFFFFFF7)
    {
      return result;
    }

    v12 = v15 + 8;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  if (a1[3] >= v12 || (result = sb_packbuff_realloc(a1, v12), !result))
  {
    v16 = a1[6];
    *v16 = a2;
    *(v16 + 2) = a3;
    if (a2 > 1)
    {
      if (!__src)
      {
        sb_packbuff_pack_item_cold_1();
      }

      *(v16 + 4) = v6;
      v17 = (a1[6] + 8);
      memcpy(v17, __src, v6);
      if (v13)
      {
        bzero(&v17[v6], v13);
      }
    }

    else
    {
      if (v15)
      {
        sb_packbuff_pack_item_cold_2();
      }

      *(v16 + 4) = a4;
    }

    result = 0;
    v18 = a1[4] + v12;
    a1[3] -= v12;
    a1[4] = v18;
    v19 = (a1[6] + v12);
    a1[6] = v19;
    *v19 = 0;
  }

  return result;
}

uint64_t sb_packbuff_pack_string(void *a1, __int16 a2, void *__src, unint64_t a4)
{
  if (a4 > 0xFFFFFFFE || *(__src + a4))
  {
    return 22;
  }

  else
  {
    return sb_packbuff_pack_item(a1, 2u, a2, 0, __src, (a4 + 1));
  }
}

uint64_t sb_packbuff_pack_key_with_string_value(void *a1, __int16 a2, char *__s, __int16 a4, char *a5)
{
  v10 = strlen(__s);
  if (v10 > 0xFFFFFFFE || __s[v10])
  {
    return 22;
  }

  result = sb_packbuff_pack_item(a1, 2u, a2, 0, __s, (v10 + 1));
  if (!result)
  {
    v12 = strlen(a5);
    if (v12 > 0xFFFFFFFE || a5[v12])
    {
      return 22;
    }

    return sb_packbuff_pack_item(a1, 2u, a4, 0, a5, (v12 + 1));
  }

  return result;
}

uint64_t sb_packbuff_unpack_key_with_string_value(void *a1, unsigned __int16 **a2, _WORD *a3, unsigned __int16 **a4, void *a5)
{
  v16 = 0;
  v15 = 0;
  v10 = sb_packbuff_unpack_string(a1, &v16, &v15);
  result = v15;
  if (!v15)
  {
    if (a2)
    {
      *a2 = v10;
    }

    if (a3)
    {
      v13 = a1[5];
      v12 = a1[6];
      if (v12 >= v13 && (v12 + 4) <= v13 + a1[4] && *v12)
      {
        *a3 = v12[1];
      }
    }

    v14 = sb_packbuff_unpack_string(a1, &v16, &v15);
    result = v15;
    if (!v15)
    {
      if (a4)
      {
        *a4 = v14;
      }

      result = 0;
      if (a5)
      {
        *a5 = v16;
      }
    }
  }

  return result;
}

char *sandbox_create_params()
{
  v0 = malloc_type_malloc(0x18uLL, 0x1080040468F112EuLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x10uLL, 0x10040B8F86A93uLL);
    *v0 = v1;
    if (v1)
    {
      *(v0 + 8) = xmmword_2998C2E70;
    }

    else
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

uint64_t sandbox_set_param(const char ***a1, char *__s2, uint64_t a3)
{
  if (!__s2 || !a3)
  {
    v12 = __error();
    v13 = 22;
LABEL_13:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    while (1)
    {
      result = strcmp(v8[v7], __s2);
      if (!result)
      {
        break;
      }

      v7 += 2;
      if (v7 >= v6)
      {
        goto LABEL_7;
      }
    }

    v15 = &v8[v7];
    goto LABEL_18;
  }

LABEL_7:
  if (v6 != a1[2])
  {
    v11 = *a1;
    goto LABEL_16;
  }

  if (v6 < 1 || (2 * v6) >> 61)
  {
    v12 = __error();
    v13 = 12;
    goto LABEL_13;
  }

  v10 = malloc_type_realloc(*a1, 16 * v6, 0x10040436913F5uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  *a1 = v10;
  a1[2] = (2 * v6);
  v6 = a1[1];
LABEL_16:
  result = 0;
  v11[v6] = __s2;
  v14 = *a1;
  a1[1] = (v6 + 2);
  v15 = &v14[v6];
LABEL_18:
  *(v15 + 1) = a3;
  return result;
}

void sandbox_free_params(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

uint64_t sandbox_compile_file(char *__filename, int a2, char **a3)
{
  __filenamea = 0;
  if (*__filename)
  {
    if (*__filename == 47)
    {
      v5 = fopen(__filename, "r");
      if (v5)
      {
LABEL_4:
        v6 = v5;
        asprintf(a3, "%s", "profile compilation not supported on this platform");
        free(__filenamea);
        fclose(v6);
      }

      else
      {
        v10 = __error();
        strerror(*v10);
        asprintf(a3, "%s: %s");
      }
    }

    else
    {
      v7 = "/System/Library/Sandbox/Profiles";
      for (i = &off_29EF6F870; ; ++i)
      {
        asprintf(&__filenamea, "%s/%s.sb", v7, __filename);
        if (!__filenamea)
        {
          break;
        }

        v5 = fopen(__filenamea, "r");
        if (v5)
        {
          goto LABEL_4;
        }

        free(__filenamea);
        v9 = *i;
        v7 = v9;
        if (!v9)
        {
          asprintf(a3, "%s: profile not found");
          return 0;
        }
      }

      asprintf(a3, "out of memory");
    }
  }

  else
  {
    asprintf(a3, "path is empty");
  }

  return 0;
}

void *sandbox_compile_named(char *a1, uint64_t a2, char **a3)
{
  if (__sandbox_ms())
  {
    sandbox_compile_file(a1, v5, a3);
    return 0;
  }

  else
  {
    v6 = malloc_type_malloc(0x18uLL, 0x10100403CCBF1C1uLL);
    if (v6)
    {
      v7 = strdup(a1);
      v6[1] = 0;
      v6[2] = 0;
      *v6 = v7;
    }

    else
    {
      asprintf(a3, "out of memory");
    }
  }

  return v6;
}

void sandbox_free_profile(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[1]);

    free(a1);
  }
}

uint64_t sandbox_apply_container(uint64_t *a1, char *__s)
{
  if (*a1)
  {
    v4 = *a1;
    if (!__s)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v5 = a1[1];
  v6 = a1[2];
  if (__s)
  {
LABEL_3:
    strlen(__s);
  }

LABEL_5:
  v2 = __sandbox_ms();
  if (!v2)
  {
    _sandbox_enter_notify_libxpc();
  }

  return v2;
}

uint64_t sandbox_user_state_item_buffer_send(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  sb_packbuff_get_bytes(a1);
  sb_packbuff_get_size(a1);
  return __sandbox_ms();
}

uint64_t sandbox_user_state_item_buffer_destroy(uint64_t *a1)
{
  if (!a1)
  {
    return 22;
  }

  sb_packbuff_free(a1);
  return 0;
}

uint64_t sandbox_set_user_state_item_with_persona(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v9 = a5;
    v10 = 0;
  }

  else
  {
    v9 = sb_packbuff_new(0x800uLL);
    v10 = v9;
    if (!v9)
    {
      return 22;
    }
  }

  v11 = sb_packbuff_pack_uint32(v9, 0, a1);
  if (v11)
  {
    goto LABEL_5;
  }

  if (a3 > 15)
  {
    if (a3 > 17)
    {
      switch(a3)
      {
        case 18:
          v26 = *a4;
          v28 = strlen(v26);
          v29 = v9;
          v30 = 2;
          break;
        case 19:
          v26 = *a4;
          v28 = strlen(v26);
          v29 = v9;
          v30 = 16;
          break;
        case 20:
          v19 = v9;
          v20 = 17;
          goto LABEL_36;
        default:
          goto LABEL_50;
      }

LABEL_49:
      v31 = v26;
LABEL_56:
      v11 = sb_packbuff_pack_string(v29, v30, v31, v28);
      goto LABEL_5;
    }

    if (a3 != 16)
    {
      v22 = *a4;
      v19 = v9;
      v20 = 1;
LABEL_37:
      v11 = sb_packbuff_pack_uint32(v19, v20, v22);
      goto LABEL_5;
    }

LABEL_35:
    v19 = v9;
    v20 = 3;
LABEL_36:
    v22 = 0;
    goto LABEL_37;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_50;
      }

      v13 = *a4;
      if (*a4)
      {
        v14 = *(a4 + 8);
        if (v14)
        {
          v15 = v9;
          v16 = 4;
          v17 = *a4;
          v18 = 5;
          goto LABEL_46;
        }

        v28 = strlen(*a4);
        v29 = v9;
        v30 = 6;
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    v11 = sb_packbuff_pack_uint32(v9, 1, *a4);
    if (v11)
    {
      goto LABEL_5;
    }

    v23 = *(a4 + 8);
    if (v23)
    {
      v24 = strlen(v23);
      v25 = sb_packbuff_pack_string(v9, 2, v23, v24);
      v12 = sb_packbuff_pack_uint32(v9, 17, 0) | v25;
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  if (a3 != 2)
  {
    if (a3 == 4)
    {
      v13 = *a4;
      if (*a4)
      {
        v14 = *(a4 + 8);
        if (v14)
        {
          v15 = v9;
          v16 = 10;
          v17 = *a4;
          v18 = 11;
          goto LABEL_46;
        }

        v28 = strlen(*a4);
        v29 = v9;
        v30 = 12;
LABEL_55:
        v31 = v13;
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    if (a3 == 8)
    {
      v13 = *a4;
      if (*a4)
      {
        v14 = *(a4 + 8);
        if (v14)
        {
          v15 = v9;
          v16 = 13;
          v17 = *a4;
          v18 = 14;
LABEL_46:
          v11 = sb_packbuff_pack_key_with_string_value(v15, v16, v17, v18, v14);
          goto LABEL_5;
        }

        v28 = strlen(*a4);
        v29 = v9;
        v30 = 15;
        goto LABEL_55;
      }

      goto LABEL_47;
    }

LABEL_50:
    v12 = 22;
    if (!v10)
    {
      return v12;
    }

    goto LABEL_9;
  }

  if (*a4)
  {
    v11 = sb_packbuff_pack_uint32(v9, 18, a2);
    if (!v11)
    {
      v27 = a4;
      v26 = *a4;
      v14 = *(v27 + 8);
      if (v14)
      {
        v15 = v9;
        v16 = 7;
        v17 = v26;
        v18 = 8;
        goto LABEL_46;
      }

      v28 = strlen(v26);
      v29 = v9;
      v30 = 9;
      goto LABEL_49;
    }

LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

LABEL_47:
  v12 = 22;
LABEL_6:
  if (v10)
  {
    if (!v12)
    {
      v12 = sandbox_user_state_item_buffer_send(v10);
    }

LABEL_9:
    sb_packbuff_free(v10);
  }

  return v12;
}

uint64_t inspect_iterate_items(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v19 = 0;
  result = sb_inspect_subsystem(a2, a1, &v20, &v19);
  if (!result)
  {
    v5 = sb_packbuff_init_with_buffer(v20, v19, 1, 1);
    if (v5)
    {
      v6 = v5;
      v18 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v7 = 0x7FFFFFFFLL;
      v16 = 0;
      while (sb_packbuff_get_item_value_type(v6, &v17))
      {
        if (v17 <= 6u)
        {
          if (v17 > 1u)
          {
            if (v17 == 2)
            {
              if (v7 == 0x7FFFFFFF)
              {
                goto LABEL_44;
              }

              v13 = 0;
              v10 = sb_packbuff_unpack_string(v6, &v13, &v18);
              if (v18)
              {
                break;
              }

              v14 = v10;
              (*(a3 + 16))(a3, v7, 18, &v14);
            }

            else
            {
              if (v17 != 4 || v7 == 0x7FFFFFFF)
              {
                goto LABEL_44;
              }

              v12 = 0;
              v13 = 0;
              v11 = 0;
              v18 = sb_packbuff_unpack_key_with_string_value(v6, &v13, &v11, &v12, 0);
              if (v18)
              {
                break;
              }

              if (v11 != 5)
              {
                goto LABEL_44;
              }

              LODWORD(v16) = 0;
              v14 = v13;
              v15 = v12;
              (*(a3 + 16))(a3, v7, 1, &v14);
            }
          }

          else if (v17)
          {
            LODWORD(v14) = sb_packbuff_unpack_uint32(v6, &v18);
            if (v18)
            {
              break;
            }

            (*(a3 + 16))(a3, v7, 17, &v14);
          }

          else
          {
            v7 = sb_packbuff_unpack_uint32(v6, &v18);
            if (v18)
            {
              break;
            }
          }
        }

        else if (v17 <= 0xCu)
        {
          if (v17 == 7)
          {
            if (v7 == 0x7FFFFFFF)
            {
              goto LABEL_44;
            }

            v12 = 0;
            v13 = 0;
            v11 = 0;
            v18 = sb_packbuff_unpack_key_with_string_value(v6, &v13, &v11, &v12, 0);
            if (v18)
            {
              break;
            }

            if (v11 != 8)
            {
LABEL_44:
              v18 = 22;
              break;
            }

            v14 = v13;
            v15 = v12;
            (*(a3 + 16))(a3, v7, 2, &v14);
          }

          else
          {
            if (v17 != 10)
            {
              goto LABEL_44;
            }

            v12 = 0;
            v13 = 0;
            v11 = 0;
            v18 = sb_packbuff_unpack_key_with_string_value(v6, &v13, &v11, &v12, 0);
            if (v18)
            {
              break;
            }

            if (v11 != 11)
            {
              goto LABEL_44;
            }

            LODWORD(v16) = 0;
            v14 = v13;
            v15 = v12;
            (*(a3 + 16))(a3, v7, 4, &v14);
          }
        }

        else if (v17 == 13)
        {
          v12 = 0;
          v13 = 0;
          v11 = 0;
          v18 = sb_packbuff_unpack_key_with_string_value(v6, &v13, &v11, &v12, 0);
          if (v18)
          {
            break;
          }

          if (v11 != 14)
          {
            goto LABEL_44;
          }

          LODWORD(v16) = 0;
          v14 = v13;
          v15 = v12;
          (*(a3 + 16))(a3, v7, 8, &v14);
        }

        else if (v17 == 16)
        {
          if (v7 == 0x7FFFFFFF)
          {
            goto LABEL_44;
          }

          v13 = 0;
          v9 = sb_packbuff_unpack_string(v6, &v13, &v18);
          if (v18)
          {
            break;
          }

          v14 = v9;
          (*(a3 + 16))(a3, v7, 19, &v14);
        }

        else
        {
          if (v17 != 18 || v7 == 0x7FFFFFFF)
          {
            goto LABEL_44;
          }

          v8 = sb_packbuff_unpack_uint32(v6, &v18);
          if (v18)
          {
            break;
          }

          LODWORD(v16) = v8;
        }
      }

      sb_packbuff_free(v6);
      return v18;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sandbox_register_sync_root()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

void sb_packbuff_free_cold_1(uint64_t *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_2998C1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "failed: vm_deallocate(%p, %zu)", &v5, 0x16u);
  v4 = *MEMORY[0x29EDCA608];
}