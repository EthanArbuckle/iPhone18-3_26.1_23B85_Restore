uint64_t sandbox_check_common(void *a1, int a2, unsigned int *a3)
{
  v18 = a3;
  *a1 = &v13;
  if ((a2 & 0x40000000) != 0)
  {
    a1[5] |= 1uLL;
    if ((a2 & 0x20000000) == 0)
    {
LABEL_3:
      if ((a2 & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a2 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  a1[5] |= 2uLL;
  if ((a2 & 0x10000000) == 0)
  {
LABEL_4:
    if ((a2 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  a1[5] |= 8uLL;
  if ((a2 & 0x8000000) == 0)
  {
LABEL_5:
    if ((a2 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  a1[5] |= 0x10uLL;
  if ((a2 & 0x4000000) == 0)
  {
LABEL_6:
    if ((a2 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  a1[5] |= 0x20uLL;
  if ((a2 & 0x2000000) != 0)
  {
LABEL_7:
    a1[5] |= 0x40uLL;
  }

LABEL_8:
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v3 = a2 & 0x81FFFFFF;
  v13 = 0;
  v4 = 240;
  switch(v3)
  {
    case 0:
      a1[3] = 0;
      a1[4] = 0;
      goto LABEL_35;
    case 1:
      goto LABEL_33;
    case 2:
      v3 = 6;
      goto LABEL_33;
    case 3:
      v3 = 7;
      goto LABEL_33;
    case 4:
      v3 = 25;
      goto LABEL_33;
    case 5:
      v3 = 27;
      goto LABEL_33;
    case 6:
      v3 = 28;
      goto LABEL_33;
    case 7:
      v3 = 33;
      goto LABEL_33;
    case 8:
      v3 = 34;
      goto LABEL_33;
    case 9:
      v9 = v18;
      v18 += 2;
      v16 = *v9;
      v18 = v9 + 4;
      v17 = v9[2];
      a1[3] = 35;
      a1[4] = &v16;
      goto LABEL_35;
    case 10:
      goto LABEL_31;
    case 11:
      v5 = v18;
      v18 += 2;
      v6 = *v5;
      v18 = v5 + 4;
      v7 = *(v5 + 1);
      a1[3] = 241;
      LODWORD(v15) = *v6;
      v14 = *v7;
      v8 = &v14;
      goto LABEL_34;
    case 12:
      v3 = 50;
      goto LABEL_33;
    case 13:
      v3 = 19;
      goto LABEL_33;
    case 14:
      v4 = 65;
      goto LABEL_31;
    case 15:
      v3 = 45;
      goto LABEL_33;
    case 16:
      v4 = 75;
      goto LABEL_31;
    case 17:
      v3 = 5;
LABEL_33:
      a1[3] = v3;
      v11 = v18;
      v18 += 2;
      v8 = *v11;
      goto LABEL_34;
    case 18:
      v4 = 52;
LABEL_31:
      a1[3] = v4;
      v10 = v18;
      v18 += 2;
      v8 = *v10;
LABEL_34:
      a1[4] = v8;
LABEL_35:
      if (__sandbox_ms())
      {
        goto LABEL_36;
      }

      result = v13 != 0;
      break;
    default:
      *__error() = 22;
LABEL_36:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t sandbox_check(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v23 = a2;
  sandbox_operation_fixup(&v23);
  v12[0] = 0;
  v13 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12[1] = a1;
  *&v13 = v23;
  v22 = &a9;
  return sandbox_check_common(v12, a3, &a9);
}

uint64_t sandbox_operation_fixup(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = strcmp(result, "iokit-open");
    if (!result)
    {
      result = sandbox_warn();
      *a1 = "iokit-open-user-client";
    }
  }

  return result;
}

uint64_t sandbox_check_by_audit_token(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v23 = 0;
  v24 = a2;
  sandbox_operation_fixup(&v24);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *(&v13 + 1) = *(a1 + 20);
  *&v14 = v24;
  v11 = *(a1 + 28);
  *(&v15 + 1) = 0x40000000;
  *&v16 = v11;
  v23 = &a9;
  return sandbox_check_common(&v13, a3, &a9);
}

uint64_t sandbox_container_path_for_audit_token(uint64_t a1)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 28);
  return __sandbox_ms();
}

uint64_t sandbox_get_container_expected(_BYTE *a1, _BYTE *a2)
{
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    *a1 = 0;
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sandbox_container_path_for_pid(int a1)
{
  if (!a1)
  {
    getpid();
  }

  return __sandbox_ms();
}

void *sandbox_extension_issue_file_to_process(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 20);
  v5 = *(a4 + 28);
  return _sandbox_extension_issue(a1, 0, a2, a3);
}

uint64_t sandbox_reference_retain_by_audit_token(uint64_t a1)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 28);
  if (__sandbox_ms())
  {
    return -1;
  }

  else
  {
    return -1;
  }
}

void *_sandbox_extension_issue(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = malloc_type_malloc(0x3FF0uLL, 0xD4D356C0uLL);
  if (v5)
  {
    if (a4)
    {
      __strlcpy_chk();
    }

    else if (__sandbox_ms())
    {
      v6 = *__error();
      free(v5);
      v5 = 0;
      *__error() = v6;
    }
  }

  return v5;
}

uint64_t sandbox_extension_consume(const char *a1)
{
  if (!strcmp(a1, "invalid"))
  {
    return 0;
  }

  strlen(a1);
  if (__sandbox_ms())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

size_t _amkrtemp(const char *a1)
{
  v2 = _amkrtemp_sentinel;
  if (!_amkrtemp_sentinel)
  {
    size = 0;
    if (sysctlbyname("security.mac.sandbox.sentinel", 0, &size, 0, 0))
    {
      v5 = 0;
    }

    else
    {
      v5 = malloc_type_malloc(size, 0xF65A244uLL);
      if (v5 && !sysctlbyname("security.mac.sandbox.sentinel", v5, &size, 0, 0))
      {
        v6 = 0;
        atomic_compare_exchange_strong(&_amkrtemp_sentinel, &v6, v5);
        if (v6)
        {
          free(v5);
        }

        v2 = _amkrtemp_sentinel;
        goto LABEL_2;
      }
    }

    v4 = v5;
    goto LABEL_9;
  }

LABEL_2:
  size = 0;
  if (asprintf(&size, "%s%s-XXXXXX", a1, v2) != -1 && mktemp(size))
  {
    return size;
  }

  v4 = size;
LABEL_9:
  free(v4);
  return 0;
}

void *sandbox_extension_issue_mach_to_process(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 20);
  v5 = *(a4 + 28);
  return _sandbox_extension_issue(a1, 1, a2, a3);
}

uint64_t rootless_check_protected_flag(const char *a1, const char *a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(&v10, 0, sizeof(v10));
  result = stat(a1, &v10);
  if (!result)
  {
    if (a3 == 0x80000 && is_path_on_authenticated_root_volume(a1))
    {
      v10.st_flags |= 0x80000u;
    }

    if ((v10.st_flags & a3) == 0)
    {
      goto LABEL_10;
    }

    if (!a2)
    {
      result = 0;
      goto LABEL_12;
    }

    memset(value, 0, sizeof(value));
    v7 = getxattr(a1, "com.apple.rootless", value, 0x80uLL, 0, 0);
    if (v7 < 1 || (v8 = v7, v7 != strlen(a2)) || (result = memcmp(a2, value, v8), result))
    {
LABEL_10:
      result = 1;
    }
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL _sandbox_in_a_container()
{
  v4 = *MEMORY[0x29EDCA608];
  bzero(v3, 0x400uLL);
  v0 = getpid();
  result = sandbox_container_path_for_pid(v0) == 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rootless_trusted_by_self_token(unsigned int a1, int a2)
{
  v4 = trusted_storage_classes_0;
  if (trusted_storage_classes_0)
  {
    while (*(v4 + 8) != a2 || rootless_check_trusted_internal(0, a1, v4 + 12))
    {
      v4 = *v4;
      if (!v4)
      {
        return 0x80000000;
      }
    }
  }

  else if (rootless_check_trusted_internal(0, a1, 0))
  {
    return 0x80000000;
  }

  return (1 << a2) | 0x80000000;
}

uint64_t rootless_check_trusted_internal(const char *a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    if (is_path_on_authenticated_root_volume(a1))
    {
      return 0;
    }

    v15 = 1;
  }

  else
  {
    v38 = 0;
    v37 = xmmword_299E4E478;
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    if (fgetattrlist(a2, &v37, &v25, 0x28uLL, 0))
    {
      v7 = *__error();
      v8 = __error();
      strerror(*v8);
      rootless_log(7, "fgetattrlist failed: #%d: %s", v9, v10, v11, v12, v13, v14, v7);
    }

    else if ((BYTE5(v25) & 0x40) != 0 && (BYTE11(v25) & 2) != 0)
    {
      v42 = 0x20000000000;
      v41 = xmmword_299E4E490;
      v40 = 0;
      v39 = 0;
      if (fgetattrlist(a2, &v41, &v39, 0xCuLL, 0x20u))
      {
        v17 = *__error();
        v18 = __error();
        strerror(*v18);
        rootless_log(7, "fgetattrlist failed: #%d: %s", v19, v20, v21, v22, v23, v24, v17);
        return 0;
      }

      if ((v39 & 0x2000000000) == 0)
      {
        return 0;
      }
    }

    v15 = 240;
  }

  *&v41 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0;
  *&v25 = &v41;
  *(&v25 + 1) = 1;
  v30 = a3;
  v16 = a2;
  if (a1)
  {
    v16 = a1;
  }

  *&v26 = "file-write-data";
  *(&v26 + 1) = v15;
  v27 = v16;
  v28 = 536870917;
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v41 != 1;
  }
}

void rootless_log(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[0] = 0;
  v9[1] = &a9;
  vasprintf(v9, a2, &a9);
  if (!v9[0])
  {
    rootless_register_trusted_storage_class_cold_1();
  }

  _simple_asl_log();
  free(v9[0]);
}

double sandbox_spawnattrs_init(uint64_t a1)
{
  *&result = 0x45000000000;
  *a1 = 0x45000000000;
  *(a1 + 80) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sandbox_spawnattrs_setprofilename(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x40)
  {
    v6 = v4;
    memcpy((a1 + 16), __s, v4 + 1);
    result = 0;
    *(a1 + 8) = v6;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sandbox_extension_issue_generic_to_process(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a3 + 28);
  return _sandbox_extension_issue(a1, 3, 0, a2);
}

uint64_t sandbox_init_with_parameters(void *a1, uint64_t a2, void *a3, char **a4)
{
  v36[0] = 0;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v36;
  }

  *v7 = 0;
  v8 = dlopen("/usr/lib/libsandbox.1.dylib", 261);
  if (!v8)
  {
    v20 = dlerror();
    asprintf(v7, "%s", v20);
    v21 = 0xFFFFFFFFLL;
    goto LABEL_41;
  }

  v9 = v8;
  if (!a3)
  {
    v17 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v10 = dlsym(v8, "sandbox_create_params");
  if (v10 && (v11 = v10, (v12 = dlsym(v9, "sandbox_set_param")) != 0) && (v13 = v12, (v14 = dlsym(v9, "sandbox_free_params")) != 0))
  {
    v15 = v14;
    v16 = v11();
    if (v16)
    {
      v17 = v16;
      while (*a3)
      {
        v18 = v13(v17, *a3, a3[1]);
        a3 += 2;
        if (v18)
        {
          v19 = __error();
          strerror(*v19);
          goto LABEL_35;
        }
      }

LABEL_18:
      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 != 1)
          {
LABEL_36:
            asprintf(v7, "bad flags");
            goto LABEL_37;
          }

          v25 = "sandbox_compile_named";
        }

        else
        {
          v25 = "sandbox_compile_string";
        }
      }

      else
      {
        if (a2 == 2)
        {
          goto LABEL_22;
        }

        if (a2 != 3)
        {
          if (a2 == 4)
          {
LABEL_22:
            v36[2] = 0;
            v36[3] = 0;
            v36[1] = a1;
            v21 = __sandbox_ms();
            if (v21)
            {
              v23 = __error();
              v24 = strerror(*v23);
              asprintf(v7, "%s", v24);
            }

            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v25 = "sandbox_compile_file";
      }

      v26 = dlsym(v9, v25);
      if (!v26)
      {
        dlerror();
LABEL_35:
        asprintf(v7, "%s");
        goto LABEL_37;
      }

      v27 = v26(a1, v17, v7);
      if (!v27)
      {
LABEL_37:
        v21 = 0xFFFFFFFFLL;
LABEL_38:
        if (v17)
        {
          v15(v17);
        }

        goto LABEL_40;
      }

      v28 = v27;
      v29 = dlsym(v9, "sandbox_apply");
      if (v29)
      {
        if (!v29(v28))
        {
          v21 = 0;
LABEL_54:
          v34 = dlsym(v9, "sandbox_free_profile");
          if (v34)
          {
            v34(v28);
          }

          goto LABEL_38;
        }

        v30 = __error();
        v31 = strerror(*v30);
      }

      else
      {
        v31 = dlerror();
      }

      asprintf(v7, "%s", v31);
      v21 = 0xFFFFFFFFLL;
      goto LABEL_54;
    }

    v33 = __error();
    v22 = strerror(*v33);
  }

  else
  {
    v22 = dlerror();
  }

  asprintf(v7, "%s", v22);
  v21 = 0xFFFFFFFFLL;
LABEL_40:
  dlclose(v9);
LABEL_41:
  if (*v7)
  {
    v35 = *v7;
    sandbox_warn();
  }

  if (v7 == v36)
  {
    if (v36[0] != internal_error)
    {
      free(v36[0]);
    }
  }

  else if (v21 && !*v7)
  {
    __strlcpy_chk();
    *v7 = internal_error;
  }

  return v21;
}

uint64_t sandbox_warn()
{
  _simple_salloc();
  _simple_vsprintf();
  _simple_string();
  _simple_asl_log();
  _simple_string();
  _simple_dprintf();
  return _simple_sfree();
}

void sandbox_free_error(char *errorbuf)
{
  if (errorbuf != internal_error)
  {
    free(errorbuf);
  }
}

uint64_t sandbox_check_with_attribution(int a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v26 = a5;
  v27 = a3;
  v25 = 0;
  sandbox_operation_fixup(&v26);
  v14[0] = 0;
  v14[1] = a1;
  v14[2] = v26;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 256;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = a2;
  v22 = &v27;
  v23 = &v25;
  v24 = &a9;
  result = sandbox_check_common(v14, a6, &a9);
  if (a4)
  {
    *a4 = v25;
  }

  return result;
}

uint64_t sandbox_check_by_uniqueid(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v25 = a3;
  sandbox_operation_fixup(&v25);
  v13[0] = 0;
  v14 = 0u;
  v15 = 0;
  v17 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13[1] = a1;
  *&v14 = v25;
  v16 = 0x80000000;
  *&v17 = a2;
  v24 = &a9;
  return sandbox_check_common(v13, a4, &a9);
}

uint64_t sandbox_check_self_signal_target(unsigned int a1, uint64_t a2, int a3)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15[0] = 0;
  v16 = 0u;
  v15[1] = getpid();
  *&v16 = "signal";
  v6 = *(a2 + 20);
  *(&v17 + 1) = 0x1000000;
  v7 = *(a2 + 28);
  *&v22 = v6;
  *(&v22 + 1) = v7;
  return sandbox_check_signal_target_internal(v15, a3 & 0x81FFFFED | 0x12, v8, v9, v10, v11, v12, v13, a1);
}

uint64_t sandbox_check_process_signal_target(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 20);
  v11[0] = 0;
  v11[1] = v8;
  v11[2] = "signal";
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = 1090519040;
  v11[6] = *(a1 + 28);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = *(a3 + 20);
  v15 = 0;
  v16 = v9;
  v17 = *(a3 + 28);
  v18 = 0u;
  v19 = 0u;
  return sandbox_check_signal_target_internal(v11, a4 & 0x81FFFFED | 0x12, a3, a4, a5, a6, a7, a8, a2);
}

uint64_t sandbox_query_approval_policy_for_path(uint64_t a1, uint64_t a2, char **a3)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(__s1, 0, sizeof(__s1));
  v7 = a1;
  sandbox_operation_fixup(&v7);
  getpid();
  if (__sandbox_ms())
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    if (a3)
    {
      if (strstr(__s1, "-telemetry-"))
      {
        v5 = 0;
      }

      else
      {
        v5 = strdup(__s1);
      }

      *a3 = v5;
    }

    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sandbox_query_user_intent_for_process_with_audit_token(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  sandbox_operation_fixup(&v11);
  v9 = *(a1 + 20);
  v10 = *(a1 + 28);
  if ((a3 & 0x81FFFFFE) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t sandbox_check_finder_automation_for_path(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sandbox_warn();
    abort();
  }

  v6 = *(a1 + 20);
  v7 = *(a1 + 28);
  if ((__sandbox_ms() & 0x80000000) == 0)
  {
    return 1;
  }

  v4 = __error();
  strerror(*v4);
  v5 = *__error();
  sandbox_warn();
  return 0;
}

uint64_t sandbox_check_bulk(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a2;
  if ((a3 & 0x81FFFFFF) != 0)
  {
    return 22;
  }

  if ((a3 & 0x30000000) != 0)
  {
    return 45;
  }

  sandbox_operation_fixup(&v7);
  v5 = *(a1 + 20);
  v6 = *(a1 + 28);
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sandbox_check_by_reference(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v24 = a2;
  sandbox_operation_fixup(&v24);
  v14 = 0;
  v16 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = 0u;
  v13 = 0u;
  *&v13 = v24;
  v15 = 3221225472;
  *&v16 = a1;
  v23 = &a9;
  return sandbox_check_common(&v12, a3, &a9);
}

uint64_t sandbox_set_container_path_for_audit_token(uint64_t a1)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 28);
  return __sandbox_ms();
}

void *sandbox_extension_issue_file_to_self(uint64_t a1, uint64_t a2, char a3)
{
  getpid();

  return _sandbox_extension_issue(a1, 0, a2, a3);
}

void *sandbox_extension_issue_iokit_registry_entry_class_to_process(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 20);
  v5 = *(a4 + 28);
  return _sandbox_extension_issue(a1, 2, a2, a3);
}

void *sandbox_extension_issue_related_file_to_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, __int128 *a6)
{
  v12 = *(a6 + 5);
  v13 = *(a6 + 7);
  v39 = 0;
  v40 = a4;
  v38 = 0;
  sandbox_operation_fixup(&v40);
  *&v26 = &v38;
  *(&v26 + 1) = v12;
  *&v27 = v40;
  *(&v27 + 1) = 1;
  v30 = v13;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = &v39;
  v14 = 1107296258;
  if ((a5 & 0x40000000) != 0)
  {
    v14 = 1107296259;
  }

  v35 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v28 = a2;
  v29 = v14 | (a5 >> 25) & 8 | (a5 >> 23) & 0x10;
  if ((a5 & 0x81FFFFFE) != 0)
  {
    *__error() = 22;
    return 0;
  }

  if (__sandbox_ms())
  {
    return 0;
  }

  if (v38)
  {
    goto LABEL_8;
  }

  if (v39)
  {
    goto LABEL_10;
  }

  v24 = a6[1];
  v26 = *a6;
  v27 = v24;
  v25 = sandbox_check_by_audit_token(&v26, a4, a5 | 0x20000001, v15, v16, v17, v18, v19, a3);
  if (v25 < 0)
  {
    return 0;
  }

  if (v25)
  {
LABEL_8:
    v21 = __error();
    result = 0;
    *v21 = 1;
  }

  else
  {
LABEL_10:
    v22 = *(a6 + 5);
    v23 = *(a6 + 7);
    return _sandbox_extension_issue(a1, 0, a3, 2);
  }

  return result;
}

uint64_t sandbox_spawnattrs_setcontainer(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 < 0x400)
  {
    v6 = v4;
    memcpy((a1 + 80), __s, v4 + 1);
    result = 0;
    *(a1 + 12) = v6;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sandbox_message_filter_query(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v31 = 0;
  v32 = a2;
  sandbox_operation_fixup(&v32);
  v20[0] = 0;
  v21 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = 0;
  v24 = 0u;
  v20[1] = a1;
  *&v21 = v32;
  v23 = 0x4000000;
  v11 = malloc_type_malloc(0x400uLL, 0x5FD57AAAuLL);
  if (v11)
  {
    v12 = 3;
    v13 = 1024;
    while (1)
    {
      v19 = v13;
      *(&v26 + 1) = v11;
      *&v27 = &v19;
      v31 = &a9;
      v14 = sandbox_check_common(v20, a3, &a9);
      v13 = v19;
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = __error();
      if (v15 >= 1)
      {
        *v16 = 1;
        goto LABEL_10;
      }

      if (*v16 == 34)
      {
        v11 = reallocf(v11, v13);
        if (v11)
        {
          if (--v12)
          {
            continue;
          }
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    v17 = *__error();
    free(v11);
    v11 = 0;
    *__error() = v17;
  }

  return v11;
}

uint64_t sandbox_check_message_filter_string(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a5)
  {
    v5 = __error();
    v6 = 22;
    goto LABEL_8;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 20);
  v9 = *(a1 + 28);
  if ((a4 & 0x40000000) != 0)
  {
    a4 &= ~0x40000000u;
  }

  if (a4)
  {
    sandbox_warn();
    v5 = __error();
    v6 = 45;
LABEL_8:
    *v5 = v6;
    return 0xFFFFFFFFLL;
  }

  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sandbox_check_message_filter_integer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 20);
  v6 = *(a1 + 28);
  if ((a4 & 0x40000000) != 0)
  {
    a4 &= ~0x40000000u;
  }

  if (a4)
  {
    sandbox_warn();
    *__error() = 45;
  }

  else if (!__sandbox_ms())
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sandbox_message_filter_retain(uint64_t a1)
{
  if (a1 && __sandbox_ms())
  {
    sandbox_message_filter_retain_cold_1();
  }

  return a1;
}

uint64_t sandbox_message_filter_release(uint64_t result)
{
  if (result)
  {
    result = __sandbox_ms();
    if (result)
    {
      v1 = *__error();
      v2 = __error();
      strerror(*v2);
      return sandbox_warn();
    }
  }

  return result;
}

uint64_t sandbox_register_erm_initialization_callback(const void *a1)
{
  if (MEMORY[0xFFFFFC342])
  {
    if (a1)
    {
      v1 = _Block_copy(a1);
      v2 = 0;
      atomic_compare_exchange_strong(&registered_state_flag_callback, &v2, v1);
      if (!v2)
      {
        return 1;
      }

      _Block_release(v1);
      v4 = __error();
      result = 0;
      if (v2 == &__block_literal_global)
      {
        v5 = 37;
      }

      else
      {
        v5 = 28;
      }
    }

    else
    {
      v4 = __error();
      result = 0;
      v5 = 22;
    }
  }

  else
  {
    v4 = __error();
    result = 0;
    v5 = 1;
  }

  *v4 = v5;
  return result;
}

BOOL sandbox_enable_state_flag(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v6 = *(a2 + 28);
  if (MEMORY[0xFFFFFC342] && (!v2 || v2 == getpid()))
  {
    v3 = atomic_exchange(&registered_state_flag_callback, &__block_literal_global);
    if (v3)
    {
      v4 = v3 == &__block_literal_global;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v3[2](v3);
      _Block_release(v3);
    }
  }

  return __sandbox_ms() == 0;
}

uint64_t sandbox_apply_bytecode(uint64_t a1, int a2, char *__s)
{
  if (a1)
  {
    if (__s)
    {
      strlen(__s);
    }

    return __sandbox_ms();
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sandbox_check_storage_class()
{
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t _sandbox_register_app_bundle_1(uint64_t a1, uint64_t a2)
{
  result = _sandbox_register_app_bundle_0();
  if (!result)
  {
    if (!a2)
    {
      return 0;
    }

    result = _sandbox_register_exception_common();
    if (!result)
    {
      result = _sandbox_register_exception_common();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _sandbox_register_app_bundle_0()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sandbox_unregister_app_bundle()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t _sandbox_register_exception_common()
{
  if (!__sandbox_ms())
  {
    return 0;
  }

  v0 = __error();
  v1 = *v0;
  strerror(*v0);
  sandbox_warn();
  return v1;
}

uint64_t sandbox_register_app_container()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sandbox_unregister_app_container()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sandbox_check_protected_app_container(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  *a2 = 0;
  *a3 = 0;
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

uint64_t sandbox_register_disk_image_backing_store()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sandbox_unregister_disk_image_backing_store()
{
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sandbox_issue_fs_extension(uint64_t a1, char a2, void *a3)
{
  v4 = APP_SANDBOX_READ_WRITE;
  if ((a2 & 8) == 0)
  {
    v4 = APP_SANDBOX_READ;
  }

  v5 = sandbox_extension_issue_file(*v4, a1, 0);
  *a3 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sandbox_issue_mach_extension(uint64_t a1, void *a2)
{
  v3 = sandbox_extension_issue_mach("com.apple.app-sandbox.mach", a1, 0);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sandbox_consume_extension(uint64_t a1, const char *a2)
{
  if (sandbox_extension_consume(a2) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sandbox_consume_fs_extension(const char *a1, void *a2)
{
  v3 = sandbox_extension_consume(a1);
  if (a2 && v3 != -1)
  {
    *a2 = 0;
  }

  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sandbox_consume_mach_extension(const char *a1, void *a2)
{
  v3 = sandbox_extension_consume(a1);
  if (a2 && v3 != -1)
  {
    *a2 = 0;
  }

  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t rootless_mkdir_protected(const char *a1, mode_t a2, void *a3, __uint32_t a4)
{
  v48 = *MEMORY[0x29EDCA608];
  bzero(v47, 0x400uLL);
  memset(&v31, 0, sizeof(v31));
  memset(&v30, 0, sizeof(v30));
  if (dirname_r(a1, v47))
  {
    v8 = open(v47, 1074790400);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      if (fstat(v8, &v31) < 0)
      {
        goto LABEL_19;
      }

      v45 = 0u;
      memset(v46, 0, sizeof(v46));
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
      *v32 = 0u;
      if (!basename_r(a1, v32) || (v10 = mkdirat(v9, v32, a2)) != 0 && ((v11 = __error(), a4 != 0x100000) || *v11 != 17))
      {
LABEL_19:
        v21 = *__error();
        goto LABEL_20;
      }

      v12 = openat(v9, v32, 1611661312);
      v13 = v12;
      if ((v12 & 0x80000000) == 0 && (fstat(v12, &v30) & 0x80000000) == 0)
      {
        if (v30.st_dev != v31.st_dev)
        {
          v24 = "%s: failed: %s not on same filesystem as parent";
          v25 = 3;
          goto LABEL_24;
        }

        v20 = &unk_299E4EAD7;
        if (a3)
        {
          v20 = a3;
        }

        v28 = v13;
        v29 = v20;
        if (!__sandbox_ms() && !fchflags(v13, a4))
        {
          memset(&v27, 0, sizeof(v27));
          close(v13);
          v26 = openat(v9, v32, 1611661312);
          v13 = v26;
          if ((v26 & 0x80000000) == 0 && (fstat(v26, &v27) & 0x80000000) == 0)
          {
            if (v27.st_dev == v30.st_dev && v27.st_ino == v30.st_ino)
            {
              if ((a4 & ~v27.st_flags) == 0)
              {
                close(v9);
                close(v13);
                result = 0;
                goto LABEL_22;
              }

              v24 = "%s: failed: %s not protected";
            }

            else
            {
              v24 = "%s: failed: %s moved before protection";
            }

            v25 = 1;
LABEL_24:
            rootless_log(v25, v24, v14, v15, v16, v17, v18, v19, "rootless_mkdir_protected");
            *__error() = 89;
            v21 = *__error();
            if (v10)
            {
LABEL_26:
              close(v13);
              goto LABEL_20;
            }

            goto LABEL_25;
          }
        }
      }

      v21 = *__error();
      if (v10)
      {
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }

LABEL_25:
      unlinkat(v9, v32, 2176);
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_20:
      close(v9);
      goto LABEL_21;
    }
  }

  v21 = *__error();
LABEL_21:
  *__error() = v21;
  result = 0xFFFFFFFFLL;
LABEL_22:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rootless_convert_to_datavault(const char *a1)
{
  v53[2] = *MEMORY[0x29EDCA608];
  v2 = open(a1, 256);
  if (v2 == -1)
  {
    v12 = __error();
    strerror(*v12);
    rootless_log(3, "%s: open(%s): %s", v13, v14, v15, v16, v17, v18, "rootless_convert_to_datavault");
    goto LABEL_6;
  }

  v3 = v2;
  if (__sandbox_ms())
  {
    v4 = "%s: rootless_set_storage_class(%s): %s";
LABEL_4:
    v5 = __error();
    strerror(*v5);
    rootless_log(3, v4, v6, v7, v8, v9, v10, v11, "rootless_convert_to_datavault");
    close(v3);
LABEL_6:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v53[0] = a1;
  v53[1] = 0;
  v22 = fts_open(v53, 84, 0);
  if (!v22)
  {
    v4 = "%s: fts_open(%s): %s";
    goto LABEL_4;
  }

  v23 = v22;
  v24 = fts_read(v22);
  if (v24)
  {
    v31 = v24;
    do
    {
      fts_info = v31->fts_info;
      if (fts_info > 6)
      {
        if (fts_info == 10 || fts_info == 7)
        {
LABEL_25:
          fts_errno = v31->fts_errno;
          fts_path = v31->fts_path;
          v50 = v31->fts_info;
          rootless_log(3, "%s: bad fts entity %d:%d at %s", v25, v26, v27, v28, v29, v30, "rootless_convert_to_datavault");
          goto LABEL_26;
        }
      }

      else
      {
        if (fts_info == 6)
        {
          goto LABEL_21;
        }

        if (fts_info == 4)
        {
          goto LABEL_25;
        }
      }

      st_flags = v31->fts_statp->st_flags;
      if ((st_flags & 0x80) == 0 && lchflags(v31->fts_accpath, st_flags | 0x80))
      {
        v42 = v31->fts_path;
        v43 = __error();
        strerror(*v43);
        rootless_log(3, "%s: lchflags(%s): %s", v44, v45, v46, v47, v48, v49, "rootless_convert_to_datavault");
LABEL_26:
        v19 = 0xFFFFFFFFLL;
        goto LABEL_28;
      }

LABEL_21:
      v31 = fts_read(v23);
    }

    while (v31);
  }

  if (*__error())
  {
    v35 = __error();
    strerror(*v35);
    rootless_log(3, "%s: fts_read: %s", v36, v37, v38, v39, v40, v41, "rootless_convert_to_datavault");
    goto LABEL_26;
  }

  v19 = 0;
LABEL_28:
  close(v3);
  fts_close(v23);
LABEL_7:
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t rootless_remove_in_favor_of_static_storage_class(const char *a1, int a2)
{
  v63[2] = *MEMORY[0x29EDCA608];
  v4 = open(a1, 256);
  if (v4 == -1)
  {
    v14 = __error();
    strerror(*v14);
    rootless_log(3, "%s: open(%s): %s", v15, v16, v17, v18, v19, v20, "rootless_remove_in_favor_of_static_storage_class");
    goto LABEL_6;
  }

  v5 = v4;
  if (__sandbox_ms())
  {
    v6 = "%s: rootless_check_clear_storage_class(%s): %s";
LABEL_4:
    v7 = __error();
    strerror(*v7);
    rootless_log(3, v6, v8, v9, v10, v11, v12, v13, "rootless_remove_in_favor_of_static_storage_class");
    close(v5);
LABEL_6:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v63[0] = a1;
  v63[1] = 0;
  v24 = fts_open(v63, 84, 0);
  if (!v24)
  {
    v6 = "%s: fts_open(%s): %s";
    goto LABEL_4;
  }

  v25 = v24;
  v26 = fts_read(v24);
  if (v26)
  {
    v33 = v26;
    do
    {
      fts_info = v33->fts_info;
      if (fts_info > 3)
      {
        if (fts_info == 4 || fts_info == 10 || fts_info == 7)
        {
          fts_errno = v33->fts_errno;
          fts_path = v33->fts_path;
          v60 = v33->fts_info;
          rootless_log(3, "%s: bad fts entity %d:%d at %s", v27, v28, v29, v30, v31, v32, "rootless_remove_in_favor_of_static_storage_class");
          goto LABEL_32;
        }
      }

      else if (fts_info == 1)
      {
        goto LABEL_23;
      }

      st_flags = v33->fts_statp->st_flags;
      if ((st_flags & a2) != 0 && lchflags(v33->fts_accpath, st_flags & ~a2))
      {
        v52 = v33->fts_path;
        v53 = __error();
        strerror(*v53);
        rootless_log(3, "%s: lchflags(%s): %s", v54, v55, v56, v57, v58, v59, "rootless_remove_in_favor_of_static_storage_class");
LABEL_32:
        v21 = 0xFFFFFFFFLL;
        goto LABEL_33;
      }

LABEL_23:
      v33 = fts_read(v25);
    }

    while (v33);
  }

  if (*__error())
  {
    v38 = __error();
    strerror(*v38);
    rootless_log(3, "%s: fts_read: %s", v39, v40, v41, v42, v43, v44, "rootless_remove_in_favor_of_static_storage_class");
    goto LABEL_32;
  }

  if (__sandbox_ms())
  {
    v45 = __error();
    strerror(*v45);
    rootless_log(3, "%s: rootless_clear_storage_class(%s): %s", v46, v47, v48, v49, v50, v51, "rootless_remove_in_favor_of_static_storage_class");
    goto LABEL_32;
  }

  v21 = 0;
LABEL_33:
  close(v5);
  fts_close(v25);
LABEL_7:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t rootless_restricted_environment()
{
  if (csops())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t rootless_protected_volume()
{
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t rootless_protected_volume_fd()
{
  if (__sandbox_ms())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t rootless_register_trusted_storage_class(char *__s, int a2)
{
  v4 = trusted_storage_classes_0;
  if (trusted_storage_classes_0)
  {
    while (1)
    {
      if (*(v4 + 8) == a2)
      {
        result = strcmp(__s, (v4 + 12));
        if (!result)
        {
          break;
        }
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = strlen(__s);
    v7 = malloc_type_calloc(1uLL, v6 + 13, 0x51EB2267uLL);
    if (!v7)
    {
      rootless_register_trusted_storage_class_cold_1();
    }

    v8 = v7;
    *(v7 + 2) = a2;
    result = memcpy(v7 + 12, __s, v6 + 1);
    *v8 = trusted_storage_classes_0;
    trusted_storage_classes_0 = v8;
  }

  return result;
}

uint64_t rootless_verify_trusted_by_self_token(unsigned int a1, char a2)
{
  if ((a1 & 0x80000000) == 0)
  {
    rootless_verify_trusted_by_self_token_cold_1();
  }

  return (a1 >> a2) & 1;
}

BOOL is_path_on_authenticated_root_volume(const char *a1)
{
  v22 = 0;
  v21 = xmmword_299E4E478;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (getattrlist(a1, &v21, v19, 0x28uLL, 0))
  {
    v2 = *__error();
    v3 = __error();
    strerror(*v3);
    rootless_log(7, "getattrlist failed for %s: #%d: %s", v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }

  if ((BYTE5(v19[0]) & 0x40) == 0 || (BYTE11(v19[0]) & 2) == 0)
  {
    return 0;
  }

  v26 = 0x20000000000;
  v25 = xmmword_299E4E490;
  v24 = 0;
  v23 = 0;
  if (!getattrlist(a1, &v25, &v23, 0xCuLL, 0x20u))
  {
    return (v23 & 0x2000000000) == 0;
  }

  v11 = *__error();
  v12 = __error();
  strerror(*v12);
  rootless_log(7, "getattrlist failed: #%d: %s", v13, v14, v15, v16, v17, v18, v11);
  return 1;
}

void sandbox_message_filter_retain_cold_1()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sandbox_warn();
  abort();
}

void rootless_register_trusted_storage_class_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void rootless_verify_trusted_by_self_token_cold_1()
{
  v0 = _os_crash();
  __break(1u);
  _Block_copy(v0);
}