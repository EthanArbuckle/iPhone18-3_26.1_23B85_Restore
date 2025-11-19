unint64_t os_simple_hash_with_seed(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v3 = (0xC6A4A7935BD1E995 * a2) ^ a3;
  if (a2 >= 8)
  {
    v4 = &a1[8 * (a2 >> 3)];
    v5 = 8 * (a2 >> 3);
    do
    {
      v6 = *a1;
      a1 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v3);
      v5 -= 8;
    }

    while (v5);
    a1 = v4;
  }

  v7 = a2 & 7;
  if (v7 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v7 != 6)
      {
        v3 ^= a1[6] << 48;
      }

      v3 ^= a1[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_18;
    }

    v3 ^= a1[4] << 32;
LABEL_18:
    v3 ^= a1[3] << 24;
LABEL_19:
    v3 ^= a1[2] << 16;
    goto LABEL_20;
  }

  if ((a2 & 7) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v7 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v3 ^= a1[1] << 8;
LABEL_21:
  v3 = 0xC6A4A7935BD1E995 * (v3 ^ *a1);
  return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
}

uint64_t os_variant_has_internal_content()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (disabled_status)
  {
    return 0;
  }

  return _check_internal_release_type();
}

uint64_t _check_internal_release_type()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (internal_release_type == 2)
  {
    return 0;
  }

  if (internal_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_has_internal_diagnostics()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x100) != 0)
  {
    return 0;
  }

  return _check_internal_release_type();
}

uint64_t sysctlbyname_get_data_np(const char *a1, void *a2, size_t *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 4;
  if (sysctlnametomib(a1, v8, &v7))
  {
    result = *__error();
  }

  else
  {
    result = sysctl_get_data_np(v8, v7, a2, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sysctl_get_data_np(int *a1, u_int a2, void *a3, size_t *a4)
{
  size = 0;
  if (sysctl(a1, a2, 0, &size, 0, 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(size, 0x8631963AuLL);
    if (v8 && !sysctl(a1, a2, v8, &size, 0, 0))
    {
      v9 = 0;
      *a3 = v8;
      *a4 = size;
      return v9;
    }
  }

  v9 = *__error();
  if (v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t os_parse_boot_arg_int(char *a1, uint64_t *a2)
{
  v8 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &v8, &v7);
  v4 = v8;
  v5 = _parse_boot_arg_int(v8, a1, a2);
  free(v4);
  return v5;
}

uint64_t os_variant_allows_internal_security_policies()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x1000000) != 0)
  {
    return 0;
  }

  if (can_has_debugger == 2)
  {
    if (development_kernel == 2)
    {
      return 0;
    }

    if (development_kernel != 3)
    {
      _check_internal_release_type_cold_2();
    }
  }

  else if (can_has_debugger != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_has_internal_ui()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x10000) != 0)
  {
    return 0;
  }

  return _check_internal_release_type();
}

void ___initialize_status_block_invoke()
{
  v18[10] = *MEMORY[0x29EDCA608];
  v17 = 8;
  v18[0] = 0;
  if (!sysctlbyname("kern.osvariant_status", v18, &v17, 0, 0) && v18[0])
  {
    if ((v18[0] & 8) != 0)
    {
      can_has_debugger = (LODWORD(v18[0]) >> 2) & 3;
      if ((v18[0] & 0x8000) == 0)
      {
LABEL_40:
        if ((v18[0] & 0x2000000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_52;
      }
    }

    else if ((v18[0] & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    is_ephemeral = LOWORD(v18[0]) >> 14;
    if ((v18[0] & 0x2000000) == 0)
    {
LABEL_41:
      if ((v18[0] & 0x20) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

LABEL_52:
    has_full_logging = HIBYTE(LODWORD(v18[0])) & 3;
    if ((v18[0] & 0x20) == 0)
    {
LABEL_42:
      if ((v18[0] & 0x800) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }

LABEL_53:
    internal_release_type = (LODWORD(v18[0]) >> 4) & 3;
    if ((v18[0] & 0x800) == 0)
    {
LABEL_43:
      if ((v18[0] & 0x2000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_54:
    factory_release_type = (LODWORD(v18[0]) >> 10) & 3;
    if ((v18[0] & 0x2000) == 0)
    {
LABEL_44:
      if ((v18[0] & 0x20000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }

LABEL_55:
    darwin_release_type = (LODWORD(v18[0]) >> 12) & 3;
    if ((v18[0] & 0x20000) == 0)
    {
LABEL_45:
      if ((v18[0] & 0x200000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }

LABEL_56:
    recovery_release_type = HIWORD(LODWORD(v18[0])) & 3;
    if ((v18[0] & 0x200000) == 0)
    {
LABEL_46:
      if ((v18[0] & 0x8000000) == 0)
      {
LABEL_48:
        v10 = vdupq_n_s64(v18[0]);
        *v10.i8 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v10, xmmword_299DDEAB0)), vceqzq_s64(vandq_s8(v10, xmmword_299DDEAC0))))), 0x1000100010001);
        disabled_status = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
        goto LABEL_49;
      }

LABEL_47:
      allows_security_research = (LODWORD(v18[0]) >> 26) & 3;
      goto LABEL_48;
    }

LABEL_57:
    development_kernel = (LODWORD(v18[0]) >> 20) & 3;
    if ((v18[0] & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (is_ephemeral)
  {
    ___initialize_status_block_invoke_cold_1(&v17, v18);
  }

  LODWORD(v17) = 0;
  v18[0] = 4;
  sysctlbyname("hw.ephemeral_storage", &v17, v18, 0, 0);
  if (v17)
  {
    v0 = 3;
  }

  else
  {
    v0 = 2;
  }

  is_ephemeral = v0;
  if (can_has_debugger)
  {
    ___initialize_status_block_invoke_cold_2(&v17, v18);
  }

  if (MEMORY[0xFFFFF4084])
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  can_has_debugger = v1;
  if (internal_release_type)
  {
    ___initialize_status_block_invoke_cold_3(&v17, v18);
  }

  if (factory_release_type)
  {
    ___initialize_status_block_invoke_cold_4(&v17, v18);
  }

  if (darwin_release_type)
  {
    ___initialize_status_block_invoke_cold_5(&v17, v18);
  }

  if (recovery_release_type)
  {
    ___initialize_status_block_invoke_cold_6(&v17, v18);
  }

  v18[0] = 0x4000;
  file = _read_file("/System/Library/CoreServices/SystemVersion.plist", v18);
  if (!file)
  {
    goto LABEL_19;
  }

  v3 = file;
  v4 = xpc_create_from_plist();
  if (!v4)
  {
LABEL_18:
    free(v3);
LABEL_19:
    if (access("/AppleInternal/Library/PreferenceBundles/Internal Settings.bundle", 0))
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    internal_release_type = v6;
    factory_release_type = 2;
    darwin_release_type = 2;
    recovery_release_type = 2;
    goto LABEL_23;
  }

  v5 = v4;
  if (MEMORY[0x29C2B1AA0]() != MEMORY[0x29EDCAA00])
  {
    xpc_release(v5);
    goto LABEL_18;
  }

  free(v3);
  string = xpc_dictionary_get_string(v5, "ReleaseType");
  if (string)
  {
    v13 = string;
    if (strcmp(string, "NonUI"))
    {
      factory_release_type = 2;
      if (strstr(v13, "Internal"))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      internal_release_type = v14;
      if (strstr(v13, "Darwin"))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      darwin_release_type = v15;
      if (strstr(v13, "Recovery"))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_73;
    }

    factory_release_type = 3;
    internal_release_type = 3;
    v16 = 2;
  }

  else
  {
    v16 = 2;
    internal_release_type = 2;
    factory_release_type = 2;
  }

  darwin_release_type = 2;
LABEL_73:
  recovery_release_type = v16;
  xpc_release(v5);
LABEL_23:
  if (development_kernel)
  {
    ___initialize_status_block_invoke_cold_7(&v17, v18);
  }

  v17 = 0;
  v18[0] = 0;
  data_np = sysctlbyname_get_data_np("kern.osbuildconfig", v18, &v17);
  v8 = v18[0];
  if (!data_np && (!strcmp(v18[0], "development") || !strcmp(v8, "debug") || !strcmp(v8, "profile") || !strcmp(v8, "kasan")))
  {
    development_kernel = 3;
  }

  free(v8);
  if (!development_kernel)
  {
    development_kernel = 2;
  }

  if (allows_security_research)
  {
    ___initialize_status_block_invoke_cold_8(&v17, v18);
  }

  LODWORD(v17) = 0;
  v18[0] = 4;
  sysctlbyname("hw.features.allows_security_research", &v17, v18, 0, 0);
  if (v17)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  allows_security_research = v9;
  _parse_disabled_status();
LABEL_49:
  v11 = *MEMORY[0x29EDCA608];
}

uint64_t _parse_boot_arg_int(char *a1, char *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *__str = 0;
  v11 = 0;
  v12 = 0;
  v8[0] = a2;
  v8[1] = __str;
  v9 = xmmword_299DDEAF0;
  _enum_boot_arg_values(a1, v8, _check_boot_arg_value);
  v4 = BYTE9(v9);
  if (a3 && (BYTE9(v9) & 1) != 0)
  {
    if (BYTE8(v9))
    {
      v5 = 1;
LABEL_6:
      *a3 = v5;
      v4 = 1;
      goto LABEL_7;
    }

    v8[0] = 0;
    v5 = strtoll(__str, v8, 0);
    v4 = 0;
    if (!*v8[0])
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v4 & 1;
}

char *_enum_boot_arg_values(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  __stringp = a1;
  do
  {
    result = strsep(&__stringp, " \t");
    if (!result)
    {
      break;
    }

    v6 = result;
    v7 = strchr(result, 61);
    v8 = *v6;
    if (v8 == 45)
    {
      v9 = 0;
    }

    else if (v7)
    {
      *v7 = 0;
      v9 = v7 + 1;
    }

    else
    {
      v9 = "1";
    }

    result = a3(a2, v6, v9, v8 == 45);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t os_variant_has_factory_content()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (factory_release_type == 2)
  {
    return 0;
  }

  if (factory_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

BOOL _check_boot_arg_value(uint64_t a1, const char *a2, const char *a3, int a4)
{
  if (!strcmp(*a1, a2))
  {
    *(a1 + 25) = 1;
    *(a1 + 24) = a4;
    v7 = *(a1 + 8);
    if (v7)
    {
      if (a3)
      {
        v8 = a4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = "";
      }

      else
      {
        v9 = a3;
      }

      strlcpy(v7, v9, *(a1 + 16));
    }
  }

  return (*(a1 + 25) & 1) == 0;
}

uint64_t os_variant_is_darwinos()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (darwin_release_type == 2)
  {
    return 0;
  }

  if (darwin_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_uses_ephemeral_storage()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (is_ephemeral == 2)
  {
    return 0;
  }

  if (is_ephemeral != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t dirstatat_np()
{
  MEMORY[0x2A1C7C4A8]();
  v46 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    *__error() = 45;
    goto LABEL_59;
  }

  v3 = v1;
  v4 = v0;
  v5 = openat_NOCANCEL();
  if (v5 == -1)
  {
LABEL_59:
    v33 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v6 = v5;
  v37 = v3;
  __dst = v4;
  __src = 0uLL;
  v7 = _dirstat_fileid_set_create();
  v43 = 0;
  v44 = &v43;
  v41 = xmmword_299DDEAD0;
  v42 = 1029;
  bzero(v45, 0x8000uLL);
  v8 = 0;
  v39 = 0;
  do
  {
    if (v8)
    {
      v43 = *v8;
      if (!v43)
      {
        v44 = &v43;
      }

      v9 = v8[1];
      free(v8);
      v10 = openat_NOCANCEL();
      if ((v10 & 0x80000000) == 0)
      {
        v11 = v10;
        goto LABEL_10;
      }

      goto LABEL_54;
    }

    v9 = 0;
    v11 = v6;
LABEL_10:
    while (1)
    {
      v12 = getattrlistbulk(v11, &v41, v45, 0x8000uLL, 0);
      if (v12 == -1)
      {
        break;
      }

      v13 = v12;
      if (!v12)
      {
        goto LABEL_52;
      }

      if (v12 >= 1)
      {
        v14 = v45;
        while (1)
        {
          v15 = v14[1];
          v16 = v14 + *v14;
          v18 = v14[3];
          v17 = v14[4];
          if ((v15 & 0x20000000) == 0)
          {
            break;
          }

          if (!v14[6])
          {
            v19 = (v14 + 7);
            if (v15)
            {
LABEL_23:
              if (v19 + *v19 + v19[1] <= v16)
              {
                v20 = v19 + *v19;
              }

              else
              {
                v20 = 0;
              }

              v19 += 2;
              if ((v15 & 8) != 0)
              {
LABEL_27:
                v23 = *v19++;
                v21 = v23 == 2;
                if ((v15 & 0x2000000) != 0)
                {
LABEL_28:
                  v24 = *v19;
                  v19 += 2;
                  v22 = v24;
                  if (!v21)
                  {
LABEL_29:
                    if ((v17 & 1) == 0)
                    {
                      v25 = 0;
                      if ((v17 & 4) == 0)
                      {
                        goto LABEL_31;
                      }

LABEL_43:
                      v31 = *v19;
                      v19 += 2;
                      v26 = v31;
                      if ((v17 & 0x400) == 0)
                      {
                        goto LABEL_34;
                      }

LABEL_32:
                      v27 = *v19;
                      if (!v26)
                      {
                        v26 = *v19;
                      }

                      goto LABEL_34;
                    }

                    v30 = *v19++;
                    v25 = v30 == 1;
                    if ((v17 & 4) != 0)
                    {
                      goto LABEL_43;
                    }

LABEL_31:
                    v26 = 0;
                    if ((v17 & 0x400) != 0)
                    {
                      goto LABEL_32;
                    }

LABEL_34:
                    if (v25 || !_dirstat_fileid_set_add(v7, v22))
                    {
                      *&__src = __src + v26;
                    }

LABEL_47:
                    ++*(&__src + 1);
                    goto LABEL_48;
                  }

LABEL_19:
                  if ((v18 & 2) != 0 && !*v19 || !v20)
                  {
                    goto LABEL_47;
                  }

                  v28 = malloc_type_malloc(0x10uLL, 0x30040E4270A41uLL);
                  v29 = v28;
                  if (v9)
                  {
                    asprintf(v28 + 1, "%s/%s", v9, v20);
                    if (v29[1])
                    {
LABEL_41:
                      *v29 = 0;
                      *v44 = v29;
                      v44 = v29;
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                    v32 = strdup(v20);
                    v29[1] = v32;
                    if (v32)
                    {
                      goto LABEL_41;
                    }
                  }

                  free(v29);
                  goto LABEL_47;
                }

LABEL_18:
                v22 = 0;
                if (!v21)
                {
                  goto LABEL_29;
                }

                goto LABEL_19;
              }

LABEL_17:
              v21 = 0;
              if ((v15 & 0x2000000) != 0)
              {
                goto LABEL_28;
              }

              goto LABEL_18;
            }

LABEL_16:
            v20 = 0;
            if ((v15 & 8) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_17;
          }

LABEL_48:
          v14 = v16;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        v19 = (v14 + 6);
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    if (v11 == v6)
    {
      v39 = *__error();
    }

LABEL_52:
    if (v9)
    {
      close_NOCANCEL();
LABEL_54:
      free(v9);
    }

    v8 = v43;
  }

  while (v43);
  _dirstat_fileid_set_destroy(v7);
  if (v39)
  {
    *__error() = v39;
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    v33 = 0;
  }

  v34 = *__error();
  if (v37 < 0x10)
  {
    memcpy(__dst, &__src, v37);
  }

  else
  {
    *__dst = __src;
  }

  close_NOCANCEL();
  *__error() = v34;
LABEL_65:
  v35 = *MEMORY[0x29EDCA608];
  return v33;
}

void *_dirstat_fileid_set_create()
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040EE89F85BuLL);
  v0[2] = 0x2000;
  v1 = malloc_type_calloc(0x2000uLL, 8uLL, 0x2004093837F09uLL);
  *v0 = v1;
  if (!v1)
  {
    free(v0);
    return 0;
  }

  return v0;
}

void _dirstat_fileid_set_destroy(char **a1)
{
  v2 = a1[2];
  v3 = *a1;
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = &v3[8 * i];
      v6 = *v5;
      if (*v5)
      {
        do
        {
          *v5 = *v6;
          free(v6);
          v3 = *a1;
          v5 = &(*a1)[8 * i];
          v6 = *v5;
        }

        while (*v5);
        v2 = a1[2];
      }
    }
  }

  free(v3);

  free(a1);
}

uint64_t os_parse_boot_arg_string(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  sysctlbyname_get_data_np("kern.bootargs", v10, &v9);
  v6 = v10[0];
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = 0;
  _enum_boot_arg_values(v6, v10, _check_boot_arg_value);
  v7 = BYTE1(v11);
  free(v6);
  return v7;
}

uint64_t os_variant_is_recovery()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (recovery_release_type == 2)
  {
    return 0;
  }

  if (recovery_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_mach_msg_get_audit_trailer(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1)
  {
    return 0;
  }

  if (v1[1] <= 0x33u)
  {
    return 0;
  }

  return a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
}

uint64_t os_mach_msg_get_context_trailer(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1)
  {
    return 0;
  }

  if (v1[1] <= 0x3Bu)
  {
    return 0;
  }

  return a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
}

void os_assert_mach_port_status(uint64_t a1, mach_port_name_t a2, int *a3)
{
  v58 = *MEMORY[0x29EDCA608];
  v48 = 0;
  *port_info_out = 0u;
  v47 = 0u;
  port_info_outCnt = 10;
  attributes = mach_port_get_attributes(*MEMORY[0x29EDCA6B0], a2, 2, port_info_out, &port_info_outCnt);
  if (attributes)
  {
    os_assert_mach("get status", attributes);
  }

  v5 = *a3;
  if (*a3 != -1 && v5 != port_info_out[0])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v25 = v5;
    v26 = port_info_out[0];
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v26;
    v51 = 1024;
    v52 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a3[1];
  if (v7 != -1 && v7 != port_info_out[1])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v27 = v7;
    v28 = port_info_out[1];
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v28;
    v51 = 1024;
    v52 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v29 = v8;
    v30 = v9;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v30;
    v51 = 1024;
    v52 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v31 = v10;
    v32 = v11;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v32;
    v51 = 1024;
    v52 = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v33 = v12;
    v34 = v13;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v34;
    v51 = 1024;
    v52 = v33;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v35 = v14;
    v36 = v15;
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v49 = 67109376;
    v50 = v36;
    v51 = 1024;
    v52 = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v8 = a3[2];
  if (v8 != -1)
  {
    v9 = port_info_out[2];
    if (v8 != port_info_out[2])
    {
      goto LABEL_28;
    }
  }

  v10 = a3[3];
  if (v10 != -1)
  {
    v11 = port_info_out[3];
    if (v10 != port_info_out[3])
    {
      goto LABEL_29;
    }
  }

  v12 = a3[4];
  if (v12 != -1)
  {
    v13 = v47;
    if (v12 != v47)
    {
      goto LABEL_30;
    }
  }

  v14 = a3[5];
  if (v14 != -1)
  {
    v15 = DWORD1(v47);
    if (v14 != DWORD1(v47))
    {
      goto LABEL_31;
    }
  }

  v16 = a3[6];
  if (v16 != 0x7FFFFFFF)
  {
    v17 = DWORD2(v47);
    if (v16 != DWORD2(v47))
    {
      goto LABEL_33;
    }
  }

  v18 = a3[7];
  if (v18 != 0x7FFFFFFF)
  {
    v19 = HIDWORD(v47);
    if (v18 != HIDWORD(v47))
    {
      goto LABEL_34;
    }
  }

  v20 = a3[8];
  if (v20 != 0x7FFFFFFF)
  {
    v21 = v48;
    if (v20 != v48)
    {
      goto LABEL_35;
    }
  }

  v22 = a3[9];
  if (!v22 || (v23 = HIDWORD(v48), v22 == HIDWORD(v48)))
  {
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_32:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v37 = v22;
  v38 = v23;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v49 = 67109376;
  v50 = v38;
  v51 = 1024;
  v52 = v37;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_33:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v39 = v16;
  v40 = v17;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v49 = 67109376;
  v50 = v40;
  v51 = 1024;
  v52 = v39;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_34:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v41 = v18;
  v42 = v19;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v49 = 67109376;
  v50 = v42;
  v51 = 1024;
  v52 = v41;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_35:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v43 = v20;
  v44 = v21;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v49 = 67109376;
  v50 = v44;
  v51 = 1024;
  v52 = v43;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

double OUTLINED_FUNCTION_0()
{
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, float a2)
{
  *(v3 - 176) = a2;
  *(v2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_5()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v1 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_11()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_13()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14()
{
  v2 = *(v0 - 64);

  return _os_crash_msg();
}

uint64_t os_variant_allows_security_research()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (allows_security_research == 2)
  {
    return 0;
  }

  if (allows_security_research != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_check(uint64_t a1, const char *a2)
{
  v4 = "AllowsInternalSecurityPolicies";
  for (i = &off_2A201FA38; ; i += 2)
  {
    v6 = strlen(v4);
    if (!strncasecmp(v4, a2, v6))
    {
      break;
    }

    v7 = *i;
    v4 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(i - 1);

  return v9(a1);
}

char *os_variant_copy_description(uint64_t a1)
{
  v10 = 0;
  __bufp = 0;
  result = open_memstream(&__bufp, &v10);
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = "AllowsInternalSecurityPolicies";
    v6 = &off_2A201FA38;
    do
    {
      if ((*(v6 - 1))(a1))
      {
        if ((v4 & 1) != 0 && fputc(32, v3) == -1 || fputs(v5, v3) == -1)
        {
          v8 = *__error();
          fclose(v3);
          goto LABEL_13;
        }

        v4 = 1;
      }

      v7 = *v6;
      v6 += 2;
      v5 = v7;
    }

    while (v7);
    if (fclose(v3) != -1)
    {
      return __bufp;
    }

    v8 = *__error();
LABEL_13:
    free(__bufp);
    v9 = __error();
    result = 0;
    *v9 = v8;
  }

  return result;
}

uint64_t os_variant_init_4launchd()
{
  v7 = *MEMORY[0x29EDCA608];
  if (getpid() != 1)
  {
    os_variant_init_4launchd_cold_1(&v5, v6);
  }

  has_full_logging = 3;
  _parse_disabled_status();
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (!can_has_debugger)
  {
    os_variant_init_4launchd_cold_11(&v5, v6);
  }

  if (!is_ephemeral)
  {
    os_variant_init_4launchd_cold_10(&v5, v6);
  }

  if (!has_full_logging)
  {
    os_variant_init_4launchd_cold_9(&v5, v6);
  }

  if (!internal_release_type)
  {
    os_variant_init_4launchd_cold_8(&v5, v6);
  }

  if (!factory_release_type)
  {
    os_variant_init_4launchd_cold_7(&v5, v6);
  }

  if (!darwin_release_type)
  {
    os_variant_init_4launchd_cold_6(&v5, v6);
  }

  if (!recovery_release_type)
  {
    os_variant_init_4launchd_cold_5(&v5, v6);
  }

  if (!development_kernel)
  {
    os_variant_init_4launchd_cold_4(&v5, v6);
  }

  if (!allows_security_research)
  {
    os_variant_init_4launchd_cold_3(&v5, v6);
  }

  v0 = 0;
  v1 = (is_ephemeral << 14) | (4 * can_has_debugger) | (has_full_logging << 24) | (16 * internal_release_type) | (factory_release_type << 10) | (darwin_release_type << 12) | (recovery_release_type << 16) | (development_kernel << 20) | (allows_security_research << 26) | 0x70000000F0000000;
  do
  {
    if (*(&disabled_status + v0))
    {
      v2 = 0x100000000 << v0;
    }

    else
    {
      v2 = 0;
    }

    v1 |= v2;
    ++v0;
  }

  while (v0 != 4);
  *&v6[0] = v1;
  result = sysctlbyname("kern.osvariant_status", 0, 0, v6, 8uLL);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void _parse_disabled_status()
{
  __stringp[10] = *MEMORY[0x29EDCA608];
  disabled_status = 0;
  if (!access("/var/db/disableAppleInternal", 0) || !access("/usr/share/misc/os_variant_override", 0))
  {
    file = _read_file("/usr/share/misc/os_variant_override", 0);
    if (!file)
    {
      file = strdup("content,diagnostics,ui,security");
      if (!file)
      {
        _parse_disabled_status_cold_1(&v6, __stringp);
      }
    }

    v1 = file;
    __stringp[0] = file;
    v2 = strsep(__stringp, ",\n");
    if (v2)
    {
      v3 = v2;
      while (strcmp(v3, "content"))
      {
        if (!strcmp(v3, "diagnostics"))
        {
          v4 = (&disabled_status + 1);
          goto LABEL_16;
        }

        if (*v3 == 117 && v3[1] == 105 && !v3[2])
        {
          v4 = (&disabled_status + 2);
          goto LABEL_16;
        }

        if (!strcmp(v3, "security"))
        {
          v4 = (&disabled_status + 3);
LABEL_16:
          *v4 = 1;
        }

        v3 = strsep(__stringp, ",\n");
        if (!v3)
        {
          goto LABEL_20;
        }
      }

      v4 = &disabled_status;
      goto LABEL_16;
    }

LABEL_20:
    free(v1);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void *_read_file(uint64_t a1, unint64_t *a2)
{
  v3 = open_NOCANCEL();
  if (v3 == -1)
  {
    return 0;
  }

  memset(&v9, 0, sizeof(v9));
  v4 = 0;
  if (fstat(v3, &v9) || (st_size = v9.st_size) == 0)
  {
LABEL_14:
    close_NOCANCEL();
    free(v4);
    return 0;
  }

  if (a2)
  {
    v6 = *a2;
    if (!*a2)
    {
      v6 = 1024;
    }

    *a2 = v9.st_size;
  }

  else
  {
    v6 = 1024;
  }

  if (st_size > v6)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = malloc_type_malloc(st_size + 1, 0xCA8F296uLL);
  if (!v4)
  {
    goto LABEL_14;
  }

  NOCANCEL = read_NOCANCEL();
  *(v4 + st_size) = 0;
  if (NOCANCEL != st_size)
  {
    goto LABEL_14;
  }

  close_NOCANCEL();
  return v4;
}

uint64_t os_variant_has_full_logging()
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (has_full_logging == 2)
  {
    return 0;
  }

  if (has_full_logging != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t os_localtime_file(char *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  memset(&v5, 0, sizeof(v5));
  if (gettimeofday(&v6, 0) == -1)
  {
    os_localtime_file_cold_1(&v4, v7);
  }

  localtime_r(&v6.tv_sec, &v5);
  result = snprintf(a1, 0x20uLL, "%d-%02d-%02d_%02d.%02d.%02d.%06d", v5.tm_year + 1900, v5.tm_mon + 1, v5.tm_mday, v5.tm_hour, v5.tm_min, v5.tm_sec, v6.tv_usec);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t os_simple_hash_string_with_seed(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return os_simple_hash_with_seed(a1, v4, a2);
}

unint64_t os_simple_hash_string(char *a1)
{
  v2 = strlen(a1);

  return os_simple_hash_with_seed(a1, v2, 0);
}

uint64_t realpath_np()
{
  result = fcntl_NOCANCEL();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t memdup_np(void *a1, const void *a2, size_t size)
{
  v6 = malloc_type_malloc(size, 0x864A149CuLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  memcpy(v6, a2, size);
  result = 0;
  *a1 = v7;
  return result;
}

void *memdup2_np(const void *a1, size_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_malloc(a2, 0x5C008F58uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_malloc(a2, 0x2F48DA65uLL);
    if (!v4)
    {
      memdup2_np_cold_1(&v7, v8);
    }
  }

  v5 = *MEMORY[0x29EDCA608];

  return memcpy(v4, a1, a2);
}

uint64_t os_subcommand_main(int a1, uint64_t a2)
{
  v42 = 5242904;
  __endptr = 0;
  v4 = getenv("COLUMNS");
  if (v4)
  {
    v5 = v4;
    v6 = strtoul(v4, &__endptr, 0);
    if (__endptr != v5 && *__endptr)
    {
      LOWORD(v42) = v6;
    }
  }

  else
  {
    v41 = &v42;
    if (ioctl(0, 0x40087468uLL))
    {
      LODWORD(v42) = 5242904;
    }
  }

  __ttys = v42;
  v7 = _NSGetMachExecuteHeader();
  __endptr = 0;
  v8 = getsectdatafromheader_64(v7, "__DATA_CONST", "__subcommands", &__endptr);
  v9 = &v8[_dyld_get_image_slide()];
  v10 = _NSGetMachExecuteHeader();
  __endptr = 0;
  v11 = getsectdatafromheader_64(v10, "__DATA_CONST", "__subcommands", &__endptr);
  if (v9 < &v11[_dyld_get_image_slide() + __endptr])
  {
    while ((*(*v9 + 8) & 8) == 0)
    {
      v9 += 8;
      v12 = _NSGetMachExecuteHeader();
      __endptr = 0;
      v13 = getsectdatafromheader_64(v12, "__DATA_CONST", "__subcommands", &__endptr);
      if (v9 >= &v13[_dyld_get_image_slide() + __endptr])
      {
        goto LABEL_12;
      }
    }

    _main_cmd = *v9;
  }

LABEL_12:
  if (_os_subcommand_be_helpful(_main_cmd, a1, a2))
  {
    _print_subcommand_list(*MEMORY[0x29EDCA620]);
    return 0;
  }

  result = (*(_main_cmd + 9))();
  if (result == 64)
  {
    goto LABEL_25;
  }

  if (result)
  {
    return result;
  }

  v20 = *MEMORY[0x29EDCA658];
  v21 = __OFSUB__(a1, v20);
  v22 = (a1 - v20);
  if ((v22 < 0) ^ v21 | (v22 == 0))
  {
    v33 = *MEMORY[0x29EDCA610];
    v34 = "please provide a subcommand";
LABEL_24:
    os_subcommand_fprintf(result, v33, v34, v15, v16, v17, v18, v19, v41);
LABEL_25:
    _print_subcommand_list(*MEMORY[0x29EDCA610]);
    return 64;
  }

  v23 = (a2 + 8 * v20);
  v24 = *v23;
  result = _os_subcommand_find(*v23);
  if (!result)
  {
    v33 = *MEMORY[0x29EDCA610];
    LOBYTE(v41) = v24;
    v34 = "unknown subcommand: %s";
    goto LABEL_24;
  }

  v25 = result;
  v26 = *(result + 8);
  if (v26)
  {
    v27 = geteuid();
    if (v27)
    {
      os_subcommand_fprintf(v27, *MEMORY[0x29EDCA610], "subcommand requires root: %s", v28, v29, v30, v31, v32, v24);
      return 77;
    }

    v26 = *(v25 + 8);
  }

  if ((v26 & 2) != 0)
  {
    v35 = isatty(1);
    if (!v35 || (v35 = isatty(0), !v35))
    {
      os_subcommand_fprintf(v35, *MEMORY[0x29EDCA610], "subcommand requires a tty: %s", v36, v37, v38, v39, v40, v24);
      return 69;
    }
  }

  if (_os_subcommand_be_helpful(v25, v22, v23))
  {
    return 0;
  }

  result = (*(v25 + 72))(v25, v22, v23);
  if (result == 64)
  {
    _os_subcommand_print_usage(v25, *MEMORY[0x29EDCA610]);
    return 64;
  }

  return result;
}

uint64_t _os_subcommand_be_helpful(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a2 == 1 && (v4 & 0x10) != 0)
  {
LABEL_3:
    _os_subcommand_print_usage(a1, *MEMORY[0x29EDCA620]);
    return 1;
  }

  result = 0;
  if (a2 == 2 && (v4 & 0x20) != 0)
  {
    v6 = *(a3 + 8);
    if (strcmp(v6, "help") && (*v6 != 45 || *(v6 + 1) != 104 || *(v6 + 2)) && strcmp(v6, "-help") && strcmp(v6, "--help"))
    {
      return 0;
    }

    goto LABEL_3;
  }

  return result;
}

void _print_subcommand_list(FILE *a1)
{
  v16 = 0;
  v2 = _NSGetMachExecuteHeader();
  size = 0;
  v3 = getsectdatafromheader_64(v2, "__DATA_CONST", "__subcommands", &size);
  v4 = &v3[_dyld_get_image_slide()];
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__subcommands", &size);
  if (v4 < &v6[_dyld_get_image_slide() + size])
  {
    do
    {
      v12 = *v4;
      _print_header(a1, "SUBCOMMANDS", &v16, v7, v8, v9, v10, v11, v15);
      if ((*(v12 + 8) & 0xC) == 0)
      {
        _os_subcommand_print_help_line(v12, a1);
      }

      ++v4;
      v13 = _NSGetMachExecuteHeader();
      size = 0;
      v14 = getsectdatafromheader_64(v13, "__DATA_CONST", "__subcommands", &size);
    }

    while (v4 < &v14[_dyld_get_image_slide() + size]);
  }

  _os_subcommand_print_help_line(&__help_cmd, a1);
}

void *_os_subcommand_find(char *__s2)
{
  if (!__s2)
  {
    return _main_cmd;
  }

  if (!strcmp("help", __s2))
  {
    return &__help_cmd;
  }

  v2 = _NSGetMachExecuteHeader();
  size = 0;
  v3 = getsectdatafromheader_64(v2, "__DATA_CONST", "__subcommands", &size);
  v4 = &v3[_dyld_get_image_slide()];
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__subcommands", &size);
  if (v4 >= &v6[_dyld_get_image_slide() + size])
  {
    return 0;
  }

  while (1)
  {
    v7 = *v4;
    if ((*(*v4 + 8) & 8) == 0 && !strcmp(*(v7 + 16), __s2))
    {
      break;
    }

    v4 += 8;
    v8 = _NSGetMachExecuteHeader();
    size = 0;
    v9 = getsectdatafromheader_64(v8, "__DATA_CONST", "__subcommands", &size);
    if (v4 >= &v9[_dyld_get_image_slide() + size])
    {
      return 0;
    }
  }

  return v7;
}

void _os_subcommand_print_usage(uint64_t a1, FILE *a2)
{
  v97 = *MEMORY[0x29EDCA608];
  v92 = 0;
  v91 = 1;
  v94 = 0;
  if (*(a1 + 56))
  {
    v4 = " [options]";
  }

  else
  {
    v4 = "";
  }

  if (_main_cmd == a1)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x40uLL, " %s", *(a1 + 16));
  }

  v5 = getprogname();
  if (asprintf(&v94, "%s%s%s", v5, __str, v4) < 0)
  {
    _os_subcommand_print_usage_cold_1(&v93, v95);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = 0;
    do
    {
      if (*(v9 + 8))
      {
        break;
      }

      v11 = v94;
      v12 = _os_subcommand_copy_option_spec_long(v9);
      if (asprintf(&v94, "%s %s", v94, v12) < 0)
      {
        _os_subcommand_print_usage_cold_1(&v93, v95);
      }

      ++v10;
      free(v12);
      free(v11);
      v13 = *(a1 + 48);
      v9 = v13 + 40 * v10;
    }

    while (v13);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        break;
      }

      if ((v16 & 2) != 0)
      {
        v17 = "[";
      }

      else
      {
        v17 = "<";
      }

      if ((v16 & 2) != 0)
      {
        v18 = "]";
      }

      else
      {
        v18 = ">";
      }

      v19 = v94;
      v20 = _os_subcommand_copy_option_spec_long(v14);
      if (asprintf(&v94, "%s %s%s%s", v94, v17, v20, v18) < 0)
      {
        _os_subcommand_print_usage_cold_1(&v93, v95);
      }

      ++v15;
      free(v20);
      free(v19);
      v21 = *(a1 + 64);
      v14 = v21 + 40 * v15;
    }

    while (v21);
  }

  if (a1 != &__main_cmd && _main_cmd == a1)
  {
    v23 = v94;
    v24 = _os_subcommand_copy_option_spec_long(&_main_positional);
    if (asprintf(&v94, "%s <%s>", v94, v24) < 0)
    {
      _os_subcommand_print_usage_cold_1(&v93, v95);
    }

    free(v24);
    free(v23);
  }

  v25 = v94;
  wfprintf_np(a2, 0, 4uLL, WORD1(__ttys), "USAGE:", v6, v7, v8, v88);
  crfprintf_np(a2, "", v26, v27, v28, v29, v30, v31, v89);
  wfprintf_np(a2, 4, 4uLL, WORD1(__ttys), "%s", v32, v33, v34, v25);
  if (*(a1 + 80))
  {
    _print_header(a2, "DESCRIPTION", 0, v36, v37, v38, v39, v40, v90);
    wfprintf_np(a2, 4, 4uLL, WORD1(__ttys), "%s", v41, v42, v43, *(a1 + 80));
  }

  else if (*(a1 + 24))
  {
    crfprintf_np(a2, "", v35, v36, v37, v38, v39, v40, v90);
    wfprintf_np(a2, 0, 4uLL, WORD1(__ttys), "DESCRIPTION: %s", v44, v45, v46, *(a1 + 24));
  }

  v47 = *(a1 + 48);
  if (v47)
  {
    v48 = 0;
    do
    {
      if (*(v47 + 8))
      {
        break;
      }

      ++v48;
      _print_header(a2, "REQUIRED", &v92, v36, v37, v38, v39, v40, v90);
      _os_subcommand_print_option_usage(v47, a2, &v91, v49, v50, v51, v52, v53);
      v54 = *(a1 + 48);
      v47 = v54 + 40 * v48;
    }

    while (v54);
    v55 = *(a1 + 64);
  }

  else
  {
    v55 = *(a1 + 64);
    if (!v55 && _main_cmd != a1)
    {
      goto LABEL_54;
    }
  }

  if (v55)
  {
    v56 = 0;
    v57 = v55;
    do
    {
      v58 = *(v57 + 8);
      if (v58)
      {
        break;
      }

      if ((v58 & 2) == 0)
      {
        _print_header(a2, "REQUIRED", &v92, v36, v37, v38, v39, v40, v90);
        _os_subcommand_print_option_usage(v57, a2, &v91, v59, v60, v61, v62, v63);
        v55 = *(a1 + 64);
      }

      ++v56;
      v57 = v55 + 40 * v56;
    }

    while (v55);
  }

  if (a1 != &__main_cmd && _main_cmd == a1)
  {
    _print_header(a2, "REQUIRED", &v92, v36, v37, v38, v39, v40, v90);
    _os_subcommand_print_option_usage(&_main_positional, a2, &v91, v65, v66, v67, v68, v69);
  }

LABEL_54:
  v92 = 0;
  v91 = 1;
  v70 = *(a1 + 56);
  if (v70)
  {
    v71 = 0;
    do
    {
      if (*(v70 + 8))
      {
        break;
      }

      ++v71;
      _print_header(a2, "OPTIONAL", &v92, v36, v37, v38, v39, v40, v90);
      _os_subcommand_print_option_usage(v70, a2, &v91, v72, v73, v74, v75, v76);
      v77 = *(a1 + 56);
      v70 = v77 + 40 * v71;
    }

    while (v77);
  }

  v78 = *(a1 + 64);
  if (v78)
  {
    v79 = 0;
    v80 = *(a1 + 64);
    do
    {
      v81 = *(v80 + 8);
      if (v81)
      {
        break;
      }

      if ((v81 & 2) != 0)
      {
        _print_header(a2, "OPTIONAL", &v92, v36, v37, v38, v39, v40, v90);
        _os_subcommand_print_option_usage(v80, a2, &v91, v82, v83, v84, v85, v86);
        v78 = *(a1 + 64);
      }

      ++v79;
      v80 = v78 + 40 * v79;
    }

    while (v78);
  }

  free(v25);
  v87 = *MEMORY[0x29EDCA608];
}

uint64_t os_subcommand_vfprintf(uint64_t a1, FILE *a2, const char *a3, va_list a4)
{
  if (!a1 || (*(a1 + 8) & 8) != 0)
  {
    getprogname();
    fprintf(a2, "%s: ");
  }

  else
  {
    getprogname();
    v8 = *(a1 + 16);
    fprintf(a2, "%s-%s: ");
  }

  return vcrfprintf_np(a2, a3, a4);
}

FILE *_print_header(FILE *result, char a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  if (a3)
  {
    if ((*a3 & 1) == 0)
    {
      crfprintf_np(result, "", a3, a4, a5, a6, a7, a8, v36);
      crfprintf_np(v10, "%s:", v12, v13, v14, v15, v16, v17, a2);
      result = crfprintf_np(v10, "", v18, v19, v20, v21, v22, v23, v37);
      *a3 = 1;
    }
  }

  else
  {
    crfprintf_np(result, "", 0, a4, a5, a6, a7, a8, v36);
    crfprintf_np(v10, "%s:", v24, v25, v26, v27, v28, v29, a2);

    return crfprintf_np(v10, "", v30, v31, v32, v33, v34, v35, a9);
  }

  return result;
}

void _os_subcommand_print_help_line(uint64_t a1, FILE *a2)
{
  fprintf(a2, "    %-8s    ", *(a1 + 16));
  if (strlen(*(a1 + 16)) < 0xC)
  {
    v10 = -16;
  }

  else
  {
    crfprintf_np(a2, "", v4, v5, v6, v7, v8, v9, v11);
    v10 = 16;
  }

  wfprintf_np(a2, v10, 0x10uLL, WORD1(__ttys), "%s", v7, v8, v9, *(a1 + 24));
}

uint64_t _help_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a3 + 8);
  }

  v4 = *MEMORY[0x29EDCA620];
  v5 = _os_subcommand_find(v3);
  v6 = v5;
  v7 = MEMORY[0x29EDCA610];
  if (v5)
  {
    v8 = 0;
    v9 = v5;
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "unrecognized subcommand: %s\n", v3);
    v9 = _main_cmd;
    v8 = 69;
  }

  v10 = *v7;
  if (v6)
  {
    v11 = v4;
  }

  else
  {
    v11 = *v7;
  }

  _os_subcommand_print_usage(v9, v11);
  if (v9 == _main_cmd)
  {
    _print_subcommand_list(v11);
  }

  return v8;
}

void _os_subcommand_print_option_usage(uint64_t a1, FILE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((*a3 & 1) == 0)
  {
    crfprintf_np(a2, "", a3, a4, a5, a6, a7, a8, v23);
  }

  v11 = _os_subcommand_copy_option_spec_long(a1);
  v12 = v11;
  v26 = v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    if (asprintf(&v26, "-%c | %s", *(v13 + 24), v11) < 0)
    {
      _os_subcommand_print_usage_cold_1(&v25, v27);
    }

    v14 = v26;
  }

  else
  {
    v14 = v11;
    v12 = 0;
  }

  free(v12);
  fprintf(a2, "    %-8s    ", v14);
  if (strlen(v14) < 0xC)
  {
    v21 = -16;
  }

  else
  {
    crfprintf_np(a2, "", v15, v16, v17, v18, v19, v20, v24);
    v21 = 16;
  }

  wfprintf_np(a2, v21, 0x10uLL, WORD1(__ttys), "%s", v18, v19, v20, *(a1 + 32));
  *a3 = 0;
  free(v14);
  v22 = *MEMORY[0x29EDCA608];
}

char *_os_subcommand_copy_option_spec_long(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v16 = 0u;
  v17 = 0u;
  *__str = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0;
  if (v2)
  {
    snprintf(__str, 0x40uLL, "--%s", *v2);
    v3 = *(v2 + 8);
    if (v3)
    {
      if (v3 == 2)
      {
        snprintf(v10, 0x40uLL, "[=%s]");
      }

      else
      {
        snprintf(v10, 0x40uLL, "=<%s>");
      }
    }

    if ((*(a1 + 8) & 4) == 0)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = __str;
    snprintf(__str, 0x40uLL, "%s", *(a1 + 24));
    if ((*(a1 + 8) & 4) == 0)
    {
LABEL_10:
      _stoupper(v4);
    }
  }

  if (asprintf(&v8, "%s%s", __str, v10) < 0)
  {
    _os_subcommand_print_usage_cold_1(&v7, v9);
  }

  result = v8;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

size_t _stoupper(const char *a1)
{
  v1 = a1;
  result = strlen(a1);
  if (result)
  {
    v3 = result;
    do
    {
      result = ___toupper(*v1);
      *v1++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t fcheck_np(FILE *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (feof(a1))
  {
    return 0xFFFFFFFFLL;
  }

  ferror(a1);
  return 1;
}

uint64_t dup_np(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  while (1)
  {
    result = dup(a1);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v3 = *__error();
    if (v3 != 4)
    {
      if ((v3 - 23) < 2)
      {
        dup_np_cold_1();
      }

      if (v3 == 9)
      {
        dup_np_cold_2();
      }

      dup_np_cold_3(&v5, v6);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t claimfd_np(_DWORD *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (a2)
  {
    v4 = *a1;
    if (change_fdguard_np())
    {
      claimfd_np_cold_1(&v7, v8);
    }
  }

  *a1 = -1;
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t xferfd_np(_DWORD *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (change_fdguard_np())
  {
    claimfd_np_cold_1(&v5, v6);
  }

  *a1 = -1;
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t close_drop_np(_DWORD *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (a2)
  {
    result = guarded_close_np();
  }

  else
  {
    result = close_NOCANCEL();
  }

  if (result == -1)
  {
    close_drop_np_cold_1(&v6, v7);
  }

  *a1 = -1;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *close_drop_optional_np(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    return close_drop_np(a1, a2);
  }

  return a1;
}

uint64_t zsnprintf_np(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = vsnprintf(a1, a2, a3, &a9);
  if (v10 >= a2)
  {
    v11 = a2 - 1;
  }

  else
  {
    v11 = v10;
  }

  if (v10 < 0)
  {
    return 0;
  }

  return v11;
}

uint64_t vcrfprintf_np(FILE *a1, const char *a2, va_list a3)
{
  vfprintf(a1, a2, a3);

  return fputc(10, a1);
}

void vwfprintf_np(FILE *a1, int64_t a2, size_t a3, unint64_t a4, char *a5, va_list a6)
{
  v27 = 0;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v26 = v6;
  if (a4 - 1 < a3)
  {
    vwfprintf_np_cold_3();
  }

  if (a2 >= 1 && a4 && v6 >= a4)
  {
    vwfprintf_np_cold_1();
  }

  if (a2 < 0 && a4 && v6 >= a4)
  {
    vwfprintf_np_cold_2();
  }

  v10 = vasprintf(&v27, a5, a6);
  v11 = 0;
  if ((v10 & 0x80000000) != 0)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_39;
  }

  v12 = v27;
  v13 = 0;
  v14 = 0;
  if (v27)
  {
    v15 = v10;
    v11 = malloc_type_malloc(v10 + 1, 0xD1A1641CuLL);
    if (v11)
    {
      v16 = malloc_type_malloc(v26 + 1, 0xB936889uLL);
      v13 = v16;
      if (v16)
      {
        v17 = v16;
        if ((a2 & 0x8000000000000000) == 0)
        {
          memset(v16, 32, a2);
          v17 = &v13[a2];
        }

        *v17 = 0;
        v18 = malloc_type_malloc(a3 + 1, 0x4632BAFEuLL);
        v14 = v18;
        if (v18)
        {
          memset(v18, 32, a3);
          v14[a3] = 0;
          do
          {
            v19 = v26;
            if (v12 == v27)
            {
              v20 = v13;
            }

            else
            {
              v19 = a3;
              v20 = v14;
            }

            v21 = a4 - v19;
            if (a4 - v19 >= v15)
            {
              v22 = v15;
            }

            else
            {
              v22 = a4 - v19;
            }

            if (a4)
            {
              v23 = v22;
            }

            else
            {
              v23 = v15;
            }

            strlcpy(v11, v12, v23 + 1);
            v24 = strchr(v11, 10);
            if (!v24 && a4 && v21 < v15)
            {
              v24 = strrchr(v11, 32);
            }

            if (v24)
            {
              *v24 = 0;
              v23 = v24 - v11;
              v12 += v24 - v11 + 1;
            }

            fprintf(a1, "%s%s\n", v20, v11);
            v15 -= v23;
          }

          while (v15);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
  }

LABEL_39:
  free(v14);
  free(v13);
  free(v11);
  free(v27);
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return _os_log_send_and_compose_impl();
}

uint64_t os_crash_set_reporter_port(host_priv_t a1, unsigned int a2, mach_port_t a3)
{
  if ((a2 & 8) != 0)
  {
    v6 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | 0x2000;
  }

  else
  {
    v6 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | ((a2 & 1) << 10);
  }

  port = 0;
  v7 = MEMORY[0x29C2B1820]();
  special_port = host_get_special_port(v7, -1, 2, &port);
  if (!a2)
  {
    return 0;
  }

  if (MEMORY[0x29C2B1820](special_port) == a1 || port == a1)
  {
    return host_set_exception_ports(a1, v6, a3, -2147483645, 1);
  }

  return task_set_exception_ports(a1, v6, a3, -2147483645, 1);
}

uint64_t os_crash_get_reporter_port_array(task_t a1, _OWORD *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  *port = 0;
  v4 = MEMORY[0x29C2B1820]();
  special_port = host_get_special_port(v4, -1, 2, port);
  if (MEMORY[0x29C2B1820](special_port) == a1 || port[0] == a1)
  {
    v7 = MEMORY[0x29C2B1820]();
    exception_ports = host_get_exception_ports(v7, 0x3C00u, masks, &port[1], old_handlers, old_behaviors, old_flavors);
  }

  else
  {
    exception_ports = task_get_exception_ports(a1, 0x3C00u, masks, &port[1], old_handlers, old_behaviors, old_flavors);
  }

  v8 = exception_ports;
  if (!exception_ports)
  {
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    if (!port[1])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x29EDCA6B0];
    do
    {
      v14 = masks[v12];
      if ((v14 & 0x400) != 0)
      {
        v18 = a2 + 2 * v11;
        v19 = old_handlers[v12];
        *v18 = 1;
        v18[1] = v19;
        if (mach_port_mod_refs(*v13, v19, 0, 1))
        {
          v20 = -1;
        }

        else
        {
          v20 = v19;
        }

        v18[1] = v20;
        ++v11;
        v14 = masks[v12];
        if ((v14 & 0x1000) == 0)
        {
LABEL_11:
          if ((v14 & 0x800) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_29;
        }
      }

      else if ((v14 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      v21 = a2 + 2 * v11;
      v22 = old_handlers[v12];
      *v21 = 2;
      v21[1] = v22;
      if (mach_port_mod_refs(*v13, v22, 0, 1))
      {
        v23 = -1;
      }

      else
      {
        v23 = v22;
      }

      v21[1] = v23;
      ++v11;
      v14 = masks[v12];
      if ((v14 & 0x800) == 0)
      {
LABEL_12:
        if ((v14 & 0x2000) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:
        v15 = a2 + 2 * v11;
        v16 = old_handlers[v12];
        *v15 = 4;
        v15[1] = v16;
        if (mach_port_mod_refs(*v13, v16, 0, 1))
        {
          v17 = -1;
        }

        else
        {
          v17 = v16;
        }

        v15[1] = v17;
        ++v11;
        goto LABEL_17;
      }

LABEL_29:
      v24 = a2 + 2 * v11;
      v25 = old_handlers[v12];
      *v24 = 3;
      v24[1] = v25;
      if (mach_port_mod_refs(*v13, v25, 0, 1))
      {
        v26 = -1;
      }

      else
      {
        v26 = v25;
      }

      v24[1] = v26;
      ++v11;
      if ((masks[v12] & 0x2000) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v8 = mach_port_deallocate(*v13, old_handlers[v12]);
      if (v8)
      {
        os_assert_mach("deallocate port", v8);
      }

      ++v12;
    }

    while (v12 < port[1]);
  }

LABEL_6:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void os_crash_port_array_deallocate(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  v3 = MEMORY[0x29EDCA6B0];
  do
  {
    v4 = *(v2 + v1);
    if (v4 + 1 >= 2)
    {
      v5 = mach_port_deallocate(*v3, v4);
      if (v5)
      {
        os_assert_mach("deallocate port", v5);
      }
    }

    v1 += 8;
  }

  while (v1 != 128);
}

uint64_t os_crash_spawnattr_set_reporter_port(posix_spawnattr_t *a1, unsigned int a2, mach_port_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | 0x2000;
  if ((a2 & 8) == 0)
  {
    v3 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | ((a2 & 1) << 10);
  }

  if (a3 - 1 > 0xFFFFFFFD)
  {
    result = 15;
  }

  else if (a2)
  {
    result = posix_spawnattr_setexceptionports_np(a1, v3, a3, -2147483645, 1);
    if (result)
    {
      os_crash_spawnattr_set_reporter_port_cold_1(&v6, v7);
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __os_temporary_resource_shortage()
{
  v0 = sleep_NOCANCEL();

  return MEMORY[0x2A1C74F38](v0);
}

uint64_t _print_preamble(FILE *a1, const char *a2, va_list a3)
{
  v6 = getprogname();
  fprintf(a1, "%s: ", v6);

  return vfprintf(a1, a2, a3);
}

uint64_t os_parse_boot_arg_from_buffer_int(const char *a1, char *a2, uint64_t *a3)
{
  v5 = strdup(a1);
  v6 = _parse_boot_arg_int(v5, a2, a3);
  free(v5);
  return v6;
}

uint64_t os_parse_boot_arg_from_buffer_string(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = strdup(a1);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v11 = 0;
  _enum_boot_arg_values(v7, v10, _check_boot_arg_value);
  v8 = BYTE1(v11);
  free(v7);
  return v8;
}

BOOL os_boot_arg_string_to_int(const char *a1, uint64_t *a2)
{
  __endptr = 0;
  v3 = strtoll(a1, &__endptr, 0);
  v4 = *__endptr;
  if (!*__endptr)
  {
    *a2 = v3;
  }

  return v4 == 0;
}

void os_enumerate_boot_args(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  v6 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &v6, &v5);
  v4 = v6;
  _enum_boot_arg_values(v6, a1, a2);

  free(v4);
}

void os_enumerate_boot_args_from_buffer(const char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  v5 = strdup(a1);
  _enum_boot_arg_values(v5, a2, a3);

  free(v5);
}

void os_enumerate_boot_args_b(uint64_t a1)
{
  __s1 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &__s1, &v4);
  v2 = __s1;
  v3 = strdup(__s1);
  _enum_boot_arg_values(v3, a1, _visit_boot_args_enumerator_block);
  free(v3);

  free(v2);
}

void os_enumerate_boot_args_from_buffer_b(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  _enum_boot_arg_values(v3, a2, _visit_boot_args_enumerator_block);

  free(v3);
}

BOOL _dirstat_fileid_set_add(char **a1, char *a2)
{
  v4 = a1[2];
  if (a1[3] > 10 * v4 && (a1[4] & 1) == 0)
  {
    v4 *= 2;
    v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      goto LABEL_4;
    }

    v14 = a1[1];
    if (!v14)
    {
      goto LABEL_16;
    }

    do
    {
      a1[1] = *v14;
      free(v14);
      v14 = a1[1];
    }

    while (v14);
    v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
LABEL_4:
      v6 = v5;
      v7 = a1[2];
      v8 = *a1;
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v10 = &v8[8 * i];
          v11 = *v10;
          if (*v10)
          {
            v12 = a2 % v4;
            do
            {
              *v10 = *v11;
              v13 = *&v6[8 * v12];
              if (v13)
              {
                *(v13 + 8) = v11;
                v13 = *&v6[8 * v12];
              }

              *v11 = v13;
              v11[1] = 0;
              *&v6[8 * v12] = v11;
              v8 = *a1;
              v10 = &(*a1)[8 * i];
              v11 = *v10;
            }

            while (*v10);
          }
        }
      }

      free(v8);
      *a1 = v6;
      a1[2] = v4;
    }

    else
    {
LABEL_16:
      *(a1 + 32) = 1;
      v4 = a1[2];
    }
  }

  v15 = a2 % v4;
  v16 = *a1;
  v17 = &(*a1)[8 * v15];
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    if (*(v17 + 2) == a2)
    {
      return v17 != 0;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    v18 = a1[1];
    if (v18)
    {
      a1[1] = *v18;
    }

    else
    {
      v18 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
      if (!v18)
      {
        *(a1 + 32) = 1;
        return v17 != 0;
      }

      v16 = *a1;
    }

    v18[2] = a2;
    ++a1[3];
    *v18 = *&v16[8 * v15];
    v18[1] = 0;
    v19 = *&v16[8 * v15];
    if (v19)
    {
      *(v19 + 8) = v18;
    }

    *&v16[8 * v15] = v18;
  }

  return v17 != 0;
}

uint64_t sysexit_np(int a1)
{
  v1 = &_negative_one;
  v2 = (a1 - 200);
  v3 = &unk_29F28E7D8;
  if (a1 <= 0x6B)
  {
    v3 = &_posix_errors + 32 * a1;
  }

  if (v2 <= 0x16)
  {
    v4 = &_darwin_errors + 32 * v2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 >= 0)
  {
    v1 = v4;
  }

  return v1[1];
}

char *os_flagset_copy_string(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  bzero(&v22, 0x3FAuLL);
  qmemcpy(__s1, "[none]", sizeof(__s1));
  if (a1)
  {
    v9 = (a1 + 8);
    v10 = __s1;
    v11 = 1024;
    v12 = 64;
    do
    {
      v13 = *(v9 - 1);
      if (!v13)
      {
        break;
      }

      if ((v13 & a2) != 0)
      {
        v14 = *v9;
        v15 = __s1;
        if (v10 != __s1)
        {
          v16 = zsnprintf_np(v10, v11, "%s", v4, v5, v6, v7, v8, "|");
          v15 = &v10[v16];
          v11 -= v16;
        }

        v17 = zsnprintf_np(v15, v11, "%s", v4, v5, v6, v7, v8, v14);
        v10 = &v15[v17];
        v11 -= v17;
      }

      v9 += 2;
      --v12;
    }

    while (v12);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(__s1);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(__s1);
    if (!result)
    {
      os_flagset_copy_string_cold_1(__s1, &v20, v23);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

char *os_mach_msg_copy_description(unsigned int *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = (v2 >> 8) & 0x1F;
  v4 = v2 & 0x1F;
  v5 = (v2 >> 16) & 0x1F;
  if ((v3 - 27) >= 0xFFFFFFF5)
  {
    v6 = _mach_port_dispositions[2 * v3 + 1];
  }

  else
  {
    v6 = "[invalid]";
  }

  if ((v4 - 27) >= 0xFFFFFFF5)
  {
    v7 = _mach_port_dispositions[2 * v4 + 1];
  }

  else
  {
    v7 = "[invalid]";
  }

  if ((v5 - 27) >= 0xFFFFFFF5)
  {
    v8 = _mach_port_dispositions[2 * v5 + 1];
  }

  else
  {
    v8 = "[invalid]";
  }

  v15 = 0;
  if ((v2 & 0x80000000) != 0)
  {
    v9 = a1[6];
  }

  else
  {
    v9 = 0;
  }

  v10 = os_flagset_copy_string(&_mach_msgh_bits, v2);
  if (asprintf(&v15, "id = %#x, size = %u, bits = %s, local disp = %s, local port = %#x, remote disp = %s, remote port = %#x, voucher disp = %s, voucher port = %#x, out-of-line descriptor cnt = %u", a1[5], a1[1], v10, v6, a1[3], v7, a1[2], v8, a1[4], v9) == -1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v14 = *__error();
    v16 = 67109120;
    v17 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = v15;
  free(v10);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t os_mach_msg_trailer_copy_description(uint64_t a1)
{
  v60 = *MEMORY[0x29EDCA608];
  v49 = 0;
  v2 = *(a1 + 4);
  if (*a1)
  {
    v3 = asprintf(&v49, "type = %u, size = %u", *a1, v2);
    if (v3)
    {
      v27 = v3;
      *v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      *__str = 0u;
      os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      OUTLINED_FUNCTION_8();
      v58 = 134217984;
      v59 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    result = v49;
LABEL_27:
    v26 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v2 < 8)
  {
LABEL_22:
    if (_dispatch_is_multithreaded())
    {
      goto LABEL_26;
    }

    result = strdup(__str);
    if (!result)
    {
      v23 = strlen(__str);
      OUTLINED_FUNCTION_0();
      os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      OUTLINED_FUNCTION_8();
      v24 = __error();
      v25 = strerror(*v24);
      *v55 = 136315650;
      *&v55[4] = "known-constant allocation";
      *&v55[12] = 2048;
      *&v55[14] = v23;
      v56 = 2080;
      v57 = v25;
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_12();
      __break(1u);
      do
      {
        __os_temporary_resource_shortage();
LABEL_26:
        result = strdup(__str);
      }

      while (!result);
    }

    goto LABEL_27;
  }

  v6 = snprintf(__str, 0x200uLL, "format = %u, size = %u", 0, v2);
  if ((v6 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    if (v29)
    {
      v7 = v28;
    }

    else
    {
      v7 = v28 + 1;
    }

    v30 = __error();
    v31 = strerror(*v30);
    OUTLINED_FUNCTION_1(v31, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_33;
  }

  v7 = v6;
  if (v6 >= 0x201)
  {
LABEL_33:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    *v55 = v32;
    *&v55[4] = v7;
    *&v55[8] = 2048;
    *&v55[10] = 512;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v33 = __error();
    v34 = strerror(*v33);
    OUTLINED_FUNCTION_1(v34, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_35;
  }

  if (*(a1 + 4) < 0xCu)
  {
    goto LABEL_22;
  }

  v8 = &__str[v6];
  v9 = 512 - v6;
  v10 = snprintf(v8, v9, ", seqno = %u", *(a1 + 8));
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  v1 = v10;
  if (v9 < v10)
  {
LABEL_35:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    *v55 = v35;
    *&v55[4] = v1;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v36 = __error();
    v37 = strerror(*v36);
    OUTLINED_FUNCTION_1(v37, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_37;
  }

  if (*(a1 + 4) < 0x14u)
  {
    goto LABEL_22;
  }

  v11 = &v8[v10];
  v12 = v9 - v10;
  v13 = snprintf(v11, v12, ", security.uid = %u, security.gid = %u", *(a1 + 12), *(a1 + 16));
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_36;
  }

  v1 = v13;
  if (v12 < v13)
  {
LABEL_37:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    *v55 = v38;
    *&v55[4] = v1;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v39 = __error();
    v40 = strerror(*v39);
    OUTLINED_FUNCTION_1(v40, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_39;
  }

  if (*(a1 + 4) < 0x34u)
  {
    goto LABEL_22;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  v16 = snprintf(v14, v15, ", audit.auid = %u, audit.euid = %u, audit.egid = %u, audit.ruid = %u, audit.rgid = %u, audit.pid = %u, audit.asid = %u, audit.pidvers = %u", *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48));
  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  if (v15 < v16)
  {
LABEL_39:
    OUTLINED_FUNCTION_0();
    LODWORD(v14) = v41;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    *v55 = v42;
    *&v55[4] = v14;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v43 = __error();
    v44 = strerror(*v43);
    OUTLINED_FUNCTION_1(v44, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_41;
  }

  if (*(a1 + 4) < 0x3Cu)
  {
    goto LABEL_22;
  }

  v17 = &v14[v16];
  v18 = v15 - v16;
  v19 = snprintf(v17, v18, ", context = %#llx", *(a1 + 52));
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  LODWORD(v14) = v19;
  if (v18 < v19)
  {
LABEL_41:
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    *v55 = v45;
    *&v55[4] = v14;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_12();
    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_0();
    v22 = MEMORY[0x29EDCA988];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    v46 = __error();
    v47 = strerror(*v46);
    OUTLINED_FUNCTION_1(v47, 4.8149e-34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_12();
    __break(1u);
    goto LABEL_43;
  }

  if (*(a1 + 4) < 0x44u)
  {
    goto LABEL_22;
  }

  v20 = v18 - v19;
  v21 = snprintf(&v17[v19], v20, ", labels.sender = %#x", *(a1 + 64));
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  v22 = v21;
  if (v20 >= v21)
  {
    goto LABEL_22;
  }

LABEL_43:
  OUTLINED_FUNCTION_0();
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_8();
  *v55 = v48;
  *&v55[4] = v22;
  OUTLINED_FUNCTION_2();
  _os_log_send_and_compose_impl();
  result = OUTLINED_FUNCTION_12();
  __break(1u);
  return result;
}

char *os_mach_port_copy_description(uint64_t name)
{
  v34 = *MEMORY[0x29EDCA608];
  v30 = 0;
  *ptype = 0;
  *port_info_out = 0u;
  v29 = 0u;
  port_info_outCnt = 10;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if (name != -1)
  {
    v1 = name;
    if (!name)
    {
      v2 = strdup("null");
      if (v2)
      {
LABEL_6:
        v4 = v2;
        v5 = 0;
        v6 = 0;
LABEL_36:
        free(v5);
        free(v24);
        free(v6);
        free(v25);
        v17 = *MEMORY[0x29EDCA608];
        return v4;
      }

      v33 = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v3 = __error();
      strerror(*v3);
      LODWORD(v32) = 136315650;
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_14();
      __break(1u);
      goto LABEL_5;
    }

    v7 = MEMORY[0x29EDCA6B0];
    v8 = mach_port_type(*MEMORY[0x29EDCA6B0], name, &ptype[1]);
    if (v8)
    {
      if (asprintf(&v25, "[%#x]", v8) == -1)
      {
        goto LABEL_38;
      }

      v6 = 0;
    }

    else
    {
      v25 = os_flagset_copy_string(&_mach_port_rights, ptype[1]);
      v6 = os_flagset_copy_string(&_mach_port_requests, ptype[1]);
    }

    attributes = mach_port_get_attributes(*v7, v1, 2, port_info_out, &port_info_outCnt);
    if (attributes == 17)
    {
      if ((ptype[1] & 0x20000) == 0)
      {
        v10 = strdup("[none]");
        if (v10)
        {
          goto LABEL_27;
        }

        v33 = 0;
        OUTLINED_FUNCTION_5();
        v1 = MEMORY[0x29EDCA988];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_8();
        if (v12)
        {
          v6 = v11;
        }

        else
        {
          v6 = v11 + 1;
        }

        v13 = __error();
        strerror(*v13);
        LODWORD(v32) = 136315650;
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_4();
        attributes = OUTLINED_FUNCTION_14();
        __break(1u);
      }
    }

    else if (!attributes)
    {
      if (HIDWORD(v30))
      {
        v10 = os_flagset_copy_string(&_mach_port_status, HIDWORD(v30));
LABEL_27:
        v24 = v10;
        goto LABEL_28;
      }

LABEL_26:
      v10 = strdup("[none]");
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (asprintf(&v24, "[%#x]", attributes) != -1)
    {
LABEL_28:
      if ((ptype[1] & 0x10000) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = (ptype[1] & 0x100000) >> 18;
      }

      if (MEMORY[0x29C2B1850](*v7, v1, v16, ptype))
      {
        asprintf(&v23, ", %s urefs = [%#x]");
      }

      else
      {
        asprintf(&v23, ", %s urefs = %u");
      }

      if (asprintf(&v26, "name = %#x, rights = %s, requests = %s, status = %s%s", v1, v25, v6, v24, v23) != -1)
      {
        v4 = v26;
        v5 = v23;
        goto LABEL_36;
      }

      v32 = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v19 = __error();
      OUTLINED_FUNCTION_7(*v19, 1.5047e-36);
      OUTLINED_FUNCTION_4();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v32 = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v20 = __error();
      OUTLINED_FUNCTION_7(*v20, 1.5047e-36);
      OUTLINED_FUNCTION_4();
      _os_crash_msg();
      __break(1u);
    }

    v32 = 0;
    OUTLINED_FUNCTION_5();
    v1 = MEMORY[0x29EDCA988];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    if (v12)
    {
      v6 = v14;
    }

    else
    {
      v6 = v14 + 1;
    }

    v15 = __error();
    OUTLINED_FUNCTION_7(*v15, 1.5047e-36);
    OUTLINED_FUNCTION_4();
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

LABEL_5:
  v2 = strdup("dead-name");
  if (v2)
  {
    goto LABEL_6;
  }

  v33 = 0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v21 = __error();
  strerror(*v21);
  LODWORD(v32) = 136315650;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14();
  __break(1u);
LABEL_40:
  v33 = 0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v22 = __error();
  strerror(*v22);
  LODWORD(v32) = 136315650;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_14();
  __break(1u);
  return result;
}

void os_assert_mach(int a1, unsigned int r)
{
  v7 = *MEMORY[0x29EDCA608];
  if (r)
  {
    v3 = r;
    if (r - 1100 > 6)
    {
      v4 = mach_error_string(r & 0xFFFFC1FF);
      if (!strcmp(v4, "unknown error code"))
      {
        snprintf(__str, 0x40uLL, "[%#x|%#x|%#x]", v3 >> 26, (v3 >> 14) & 0xFFF, v3 & 0x1FF);
      }

      if (v3 + 309 >= 0xA)
      {
        goto LABEL_10;
      }
    }

    else
    {
      bootstrap_strerror(r);
    }

    snprintf(v5, 0x10uLL, "%d", v3);
    do
    {
      OUTLINED_FUNCTION_13();
      v3 = MEMORY[0x29EDCA988];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_10:
      snprintf(v5, 0x10uLL, "%#x", v3);
    }

    while (!os_flagset_copy_string(&_mach_special_bits, v3 & 0x3E00));
    OUTLINED_FUNCTION_13();
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    OUTLINED_FUNCTION_10();
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
  }
}

void os_variant_init_4launchd_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_9(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_variant_init_4launchd_cold_11(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void _parse_disabled_status_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_3_0();
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_localtime_file_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void memdup2_np_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _os_subcommand_print_usage_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  __break(1u);
}

void dup_np_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  v2 = __error();
  symerror_np(*v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void claimfd_np_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  v2 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void close_drop_np_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  v2 = *__error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0();
  __break(1u);
}

void os_crash_spawnattr_set_reporter_port_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void verr_np(int a1, const char *a2, va_list a3)
{
  v4 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a2, a3);
  v5 = *v4;
  v6 = strerror_np(a1);
  fprintf(v5, ": %s\n", v6);
  v7 = sysexit_np(a1);
  exit(v7);
}

void verrc_np(int a1, int a2, const char *a3, va_list a4)
{
  v6 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a3, a4);
  v7 = *v6;
  v8 = strerror_np(a2);
  fprintf(v7, ": %s\n", v8);
  exit(a1);
}

uint64_t vwarn_np(int a1, const char *a2, va_list a3)
{
  v4 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a2, a3);
  v5 = *v4;
  v6 = strerror_np(a1);
  return fprintf(v5, ": %s\n", v6);
}

char *strerror_np(int a1)
{
  if (a1 <= 0x6B)
  {
    return strerror(a1);
  }

  v2 = &_negative_one;
  v3 = (a1 - 200);
  v4 = v3 >= 0x16;
  v5 = v3 == 22;
  v6 = &_darwin_errors + 32 * v3;
  if (!v5 && v4)
  {
    v6 = &unk_29F28E7D8;
  }

  if (a1 >= 0)
  {
    v2 = v6;
  }

  return v2[3];
}

uint64_t strexit_np(int a1)
{
  v1 = &_zero;
  if ((a1 - 79) >= 0xFFFFFFF1)
  {
    v2 = &_sysexits + 32 * (a1 - 64);
  }

  else
  {
    v2 = &unk_29F28E8D8;
  }

  if (a1 == 173)
  {
    v2 = &_badreceipt;
  }

  if (a1)
  {
    v1 = v2;
  }

  return v1[3];
}

uint64_t symerror_np(int a1)
{
  v1 = &_negative_one;
  v2 = (a1 - 200);
  v3 = &unk_29F28E7D8;
  if (a1 <= 0x6B)
  {
    v3 = &_posix_errors + 32 * a1;
  }

  if (v2 <= 0x16)
  {
    v4 = &_darwin_errors + 32 * v2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 >= 0)
  {
    v1 = v4;
  }

  return v1[2];
}

uint64_t symexit_np(int a1)
{
  v1 = &_zero;
  if ((a1 - 79) >= 0xFFFFFFF1)
  {
    v2 = &_sysexits + 32 * (a1 - 64);
  }

  else
  {
    v2 = &unk_29F28E8D8;
  }

  if (a1 == 173)
  {
    v2 = &_badreceipt;
  }

  if (a1)
  {
    v1 = v2;
  }

  return v1[2];
}

void os_flagset_copy_string_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
  _NSGetMachExecuteHeader();
}