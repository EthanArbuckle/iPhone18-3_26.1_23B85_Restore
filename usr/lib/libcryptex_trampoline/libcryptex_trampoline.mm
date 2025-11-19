void *cryptex_trampoline_upgrade_wait_options_create()
{
  v4 = *MEMORY[0x29EDCA608];
  result = malloc_type_calloc(1uLL, 8uLL, 0x8709206FuLL);
  if (!result)
  {
    cryptex_trampoline_upgrade_wait_options_create_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void cryptex_trampoline_upgrade_wait_options_destroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void cryptex_trampoline_upgrade_wait_options_set_cryptex_name(void **a1, const char *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  if (a2)
  {
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v5 = strdup(a2);
        if (v5)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v5 = strdup(a2);
      if (!v5)
      {
        cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(a2, &v7, v8);
      }
    }

    *a1 = v5;
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t cryptex_trampoline_upgrade_wait(char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  is_ongoing = sysctl_upgrade_is_ongoing(&v14);
  if (is_ongoing)
  {
    v3 = is_ongoing;
    v4 = *__error();
    if (cryptex_trampoline_osl_onceToken != -1)
    {
      cryptex_trampoline_upgrade_wait_cold_1();
    }

    v5 = cryptex_trampoline_osl_trampoline_log;
    if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_29871D000, v5, OS_LOG_TYPE_ERROR, "Failed to read upgrade sysctl.: %{darwin.errno}d", buf, 8u);
    }

    a1 = 0;
  }

  else
  {
    if (!v14)
    {
      a1 = 0;
      v3 = 0;
      goto LABEL_8;
    }

    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        if (_dispatch_is_multithreaded())
        {
          while (1)
          {
            v9 = strdup(v8);
            if (v9)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }
        }

        else
        {
          v9 = strdup(v8);
          if (!v9)
          {
            cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(v8, &v15, buf);
          }
        }

        a1 = v9;
      }

      else
      {
        a1 = 0;
      }
    }

    v10 = *__error();
    if (cryptex_trampoline_osl_onceToken != -1)
    {
      cryptex_trampoline_upgrade_wait_cold_1();
    }

    v11 = cryptex_trampoline_osl_trampoline_log;
    if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      *&buf[4] = a1;
      _os_log_impl(&dword_29871D000, v11, OS_LOG_TYPE_INFO, "Blocking on upgrade for cryptex '%{public}s.", buf, 0xCu);
    }

    *__error() = v10;
    v3 = cryptex_trampoline_upgrade_interface_wait();
    v4 = *__error();
    if (v3)
    {
      if (cryptex_trampoline_osl_onceToken != -1)
      {
        cryptex_trampoline_upgrade_wait_cold_1();
      }

      v12 = cryptex_trampoline_osl_trampoline_log;
      if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_impl(&dword_29871D000, v12, OS_LOG_TYPE_ERROR, "Error encountered blocking on cryptex upgrade.: %{darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      if (cryptex_trampoline_osl_onceToken != -1)
      {
        cryptex_trampoline_upgrade_wait_cold_1();
      }

      v13 = cryptex_trampoline_osl_trampoline_log;
      if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = a1;
        _os_log_impl(&dword_29871D000, v13, OS_LOG_TYPE_INFO, "Unblocked after upgrade for cryptex '%{public}s.", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  *__error() = v4;
LABEL_8:
  free(a1);
  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

os_log_t __cryptex_trampoline_osl_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "trampoline");
  cryptex_trampoline_osl_trampoline_log = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sysctl_upgrade_is_ongoing(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("kern.proc_rsr_in_progress", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = v4 != 0;
  }

  return result;
}

void cryptex_trampoline_upgrade_wait_options_create_cold_1(uint64_t *a1, _OWORD *a2)
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
  OUTLINED_FUNCTION_1();
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
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
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}