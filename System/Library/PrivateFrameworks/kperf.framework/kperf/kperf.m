uint64_t kperf_sysctl_get_uint32(const char *a1, unsigned int a2, _DWORD *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  v6 = 16;
  result = sysctlbyname(a1, &v7, &v6, &v7, 0x10uLL);
  if (!result)
  {
    *a3 = v8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t kperf_ticks_to_ns(uint64_t a1)
{
  v2 = dword_2814DB0EC;
  if (!dword_2814DB0EC)
  {
    mach_timebase_info(&timebase_info);
    v2 = dword_2814DB0EC;
  }

  return timebase_info * a1 / v2;
}

uint64_t kperf_kdebug_filter_add_internal(uint64_t a1, int a2, char a3)
{
  if (!a1)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  v4 = *(a1 + 144);
  if (v4 < 0x20)
  {
    result = 0;
    *(a1 + (v4 >> 1)) = *(a1 + (v4 >> 1)) & ~(15 << (4 * (v4 & 1))) | ((a3 & 0xF) << (4 * (v4 & 1)));
    *(a1 + 4 * v4 + 16) = a2;
    *(a1 + 144) = v4 + 1;
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t kperf_kdebug_filter_get_n_filters(uint64_t a1)
{
  if (!a1)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  return *(a1 + 144);
}

uint64_t kperf_kdebug_filter_get_filter(uint64_t a1, int a2, _DWORD *a3, int *a4)
{
  if (!a1)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  if (!a3)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  if (!a4)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  if (*(a1 + 144) <= a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    *a3 = *(a1 + 4 * a2 + 16);
    *a4 = (*(a1 + (a2 >> 1)) >> (4 * (a2 & 1))) & 0xF;
  }

  return v4;
}

uint64_t kperf_kdebug_filter_set(unsigned __int8 *a1)
{
  if (a1)
  {
    v1 = a1[144];
    if (a1[144])
    {

      return sysctlbyname("kperf.kdebug.filter", 0, 0, a1, 4 * v1 + 16);
    }

    else
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    return sysctlbyname("kperf.kdebug.filter", 0, 0, v3, 0x10uLL);
  }
}

_BYTE *kperf_kdebug_filter_get()
{
  v4 = 145;
  v0 = malloc_type_calloc(1uLL, 0x91uLL, 0x1000040C6B2EAB2uLL);
  if (v0)
  {
    if (sysctlbyname("kperf.kdebug.filter", v0, &v4, 0, 0) == -1)
    {
      v2 = *__error();
      goto LABEL_7;
    }

    v1 = v4 - 16;
    if (v4 < 0x10 || (v4 -= 16, v0[144] = v1 >> 2, (v1 & 0x3FC) == 0))
    {
      v2 = 22;
LABEL_7:
      free(v0);
      v0 = 0;
      *__error() = v2;
    }
  }

  return v0;
}

uint64_t kperf_kdebug_filter_add_desc(uint64_t a1, char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  __endptr = 0;
  if (!a1)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  v2 = a2;
  if (!a2)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  while (1)
  {
    v4 = *v2;
    if (v4 <= 0x43)
    {
      break;
    }

    if (v4 == 68)
    {
      v6 = 0;
      v5 = 4;
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v4 != 83)
      {
        goto LABEL_40;
      }

      v5 = 2;
      v6 = 16;
      v7 = 0xFFFFLL;
    }

LABEL_10:
    v8 = strtoul(v2 + 1, &__endptr, 0);
    v9 = __endptr;
    if (__endptr == v2 + 1)
    {
      v16 = kperf_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        kperf_kdebug_filter_add_desc_cold_3();
      }

      goto LABEL_35;
    }

    if (v8 > v7)
    {
      v17 = kperf_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        kperf_kdebug_filter_add_desc_cold_2();
      }

LABEL_35:
      *__error() = 22;
LABEL_36:
      result = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    v10 = v8 << v6;
    v11 = *__endptr;
    if (v11 <= 0x6D)
    {
      if (*__endptr && v11 != 44)
      {
LABEL_19:
        v12 = kperf_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *v9;
          *buf = 67109120;
          v23 = v13;
          _os_log_error_impl(&dword_27718A000, v12, OS_LOG_TYPE_ERROR, "unrecognized suffix '%c'", buf, 8u);
        }
      }
    }

    else
    {
      switch(v11)
      {
        case 'n':
          v9 = __endptr + 1;
          break;
        case 'r':
          v9 = __endptr + 1;
          v10 |= 2u;
          break;
        case 's':
          v9 = __endptr + 1;
          v10 |= 1u;
          break;
        default:
          goto LABEL_19;
      }

      v5 |= 1u;
    }

    if (*v9 == 44)
    {
      v2 = v9 + 1;
    }

    else
    {
      v2 = v9;
    }

    if (kperf_kdebug_filter_add_internal(a1, v10, v5))
    {
      v14 = *__error();
      v15 = kperf_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        kperf_kdebug_filter_add_desc_cold_1(v10, v15);
      }

      *__error() = v14;
      goto LABEL_36;
    }
  }

  if (v4 == 67)
  {
    v5 = 0;
    v6 = 24;
    v7 = 255;
    goto LABEL_10;
  }

  if (*v2)
  {
LABEL_40:
    *__error() = 22;
    v20 = kperf_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      kperf_kdebug_filter_add_desc_cold_4(v2);
    }

    goto LABEL_36;
  }

  result = 0;
LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

char *kperf_kdebug_filter_create_desc(uint64_t a1)
{
  n_filters = kperf_kdebug_filter_get_n_filters(a1);
  if (n_filters)
  {
    v3 = n_filters;
    v4 = (14 * n_filters) | 1u;
    v5 = malloc_type_calloc(1uLL, v4, 0xE1C3BF01uLL);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v22 = 0;
        if (kperf_kdebug_filter_get_filter(a1, v8, &v22 + 1, &v22))
        {
          break;
        }

        v9 = v22 > 5 || ((1 << v22) & 0x2A) == 0;
        if (v9)
        {
          v11 = "";
        }

        else
        {
          v10 = "r";
          if ((v22 & 0x200000000) == 0)
          {
            v10 = "n";
          }

          v11 = "s";
          if ((v22 & 0x100000000) == 0)
          {
            v11 = v10;
          }
        }

        if (v22 > 5)
        {
          v21 = kperf_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            kperf_kdebug_filter_create_desc_cold_3(&v22);
          }

          goto LABEL_35;
        }

        if (((1 << v22) & 3) != 0)
        {
          v12 = HIBYTE(HIDWORD(v22));
          HIDWORD(v22) >>= 24;
          v13 = 67;
          v14 = 2;
        }

        else if (((1 << v22) & 0xC) != 0)
        {
          v12 = HIWORD(HIDWORD(v22));
          HIDWORD(v22) >>= 16;
          v13 = 83;
          v14 = 4;
        }

        else
        {
          v12 = HIDWORD(v22) & 0xFFFFFFFC;
          HIDWORD(v22) &= 0xFFFFFFFC;
          v13 = 68;
          v14 = 8;
        }

        if (v7)
        {
          v15 = ",";
        }

        else
        {
          v15 = "";
        }

        v16 = snprintf(&v6[v7], v4 - v7, "%s%c0x%0*x%s", v15, v13, v14, v12, v11);
        if ((v16 & 0x80000000) != 0)
        {
          v19 = kperf_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            kperf_kdebug_filter_create_desc_cold_2(v8, v19);
          }

          goto LABEL_35;
        }

        v7 += v16;
        if (v7 <= v4)
        {
          v9 = v3 - 1 == v8++;
          if (!v9)
          {
            continue;
          }
        }

        return v6;
      }

      v18 = kperf_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        kperf_kdebug_filter_create_desc_cold_1();
      }

LABEL_35:
      free(v6);
    }

    else
    {
      v17 = kperf_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        kperf_kdebug_filter_create_desc_cold_4();
      }
    }
  }

  return 0;
}

uint64_t kperf_kdebug_action_get(void *a1)
{
  if (!a1)
  {
    kperf_kdebug_filter_add_internal_cold_1();
  }

  v2 = 8;
  return sysctlbyname("kperf.kdebug.action", a1, &v2, 0, 0);
}

uint64_t kperf_kdbg_callstacks_set(int a1)
{
  if (!a1)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v1 = sysctlbyname("kperf.kdebug.filter", 0, 0, v7, 0x10uLL);
    if (!v1)
    {
      LODWORD(v7[0]) = 0;
      return sysctlbyname("kperf.kdebug.action", 0, 0, v7, 4uLL);
    }

    return v1;
  }

  kperf_action_count_set(32);
  v1 = kperf_action_samplers_set(0x20u, 8u);
  if (v1)
  {
    return v1;
  }

  v2 = malloc_type_calloc(1uLL, 0x91uLL, 0x1000040C6B2EAB2uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (kperf_kdebug_filter_add_internal(v2, 554303488, 2) || kperf_kdebug_filter_add_internal(v3, 67895298, 3) || kperf_kdebug_filter_add_internal(v3, 17432578, 3) || kperf_kdebug_filter_add_internal(v3, 17563650, 3) || kperf_kdebug_filter_add_internal(v3, 19922946, 3) || kperf_kdebug_filter_add_internal(v3, 754974720, 0) || kperf_kdebug_filter_add_internal(v3, -16777214, 1))
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = kperf_kdebug_filter_set(v3);
    if (!v4)
    {
      LODWORD(v7[0]) = 32;
      v4 = sysctlbyname("kperf.kdebug.action", 0, 0, v7, 4uLL);
    }
  }

  v5 = *__error();
  free(v3);
  *__error() = v5;
  return v4;
}

uint64_t kperf_kdbg_callstacks_get(_BOOL4 *a1)
{
  v5 = 0;
  v4 = 0;
  result = kperf_action_count_get(&v5);
  if (!result)
  {
    if (v5 != 32)
    {
      goto LABEL_7;
    }

    result = kperf_action_samplers_get(0x20u, &v4);
    if (result)
    {
      return result;
    }

    if (v4 == 8)
    {
      v6 = 8;
      result = sysctlbyname("kperf.kdebug.action", &v5 + 4, &v6, 0, 0);
      if (result)
      {
        return result;
      }

      v3 = HIDWORD(v5) == 32;
    }

    else
    {
LABEL_7:
      v3 = 0;
    }

    result = 0;
    *a1 = v3;
  }

  return result;
}

uint64_t kpc_pmu_version()
{
  v1 = 0;
  v2 = 4;
  if (sysctlbyname("kpc.pmu_version", &v1, &v2, 0, 0))
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t kpc_cpu_string(char *a1, size_t a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v6 = 0;
    v7 = 0;
    v5 = 32;
    if (sysctlbyname("hw.cputype", &v7 + 4, &v5, 0, 0) || sysctlbyname("hw.cpusubtype", &v7, &v5, 0, 0) || sysctlbyname("hw.cpufamily", &v6 + 4, &v5, 0, 0))
    {
      return 0xFFFFFFFFLL;
    }

    else if (sysctlbyname("machdep.cpu.model", &v6, &v5, 0, 0))
    {
      return snprintf(a1, a2, "cpu_%x_%x_%x");
    }

    else
    {
      return snprintf(a1, a2, "cpu_%x_%x_%x_%x");
    }
  }

  return result;
}

uint64_t kpc_get_counting()
{
  v1 = 0;
  v2 = 4;
  if (sysctlbyname("kpc.counting", &v1, &v2, 0, 0))
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t kpc_get_thread_counting()
{
  v1 = 0;
  v2 = 4;
  if (sysctlbyname("kpc.thread_counting", &v1, &v2, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

uint64_t kpc_get_config(unsigned int a1, void *a2)
{
  v6 = a1;
  v7 = 0;
  v9 = a1;
  v8 = 4;
  v3 = sysctlbyname("kpc.config_count", &v7, &v8, &v9, 4uLL);
  v4 = v7;
  if (v3 < 0)
  {
    v4 = 0;
  }

  v8 = 8 * v4;
  return sysctlbyname("kpc.config", a2, &v8, &v6, 8uLL);
}

uint64_t kpc_get_config_count(int a1)
{
  v2 = 0;
  v4 = a1;
  v3 = 4;
  if (sysctlbyname("kpc.config_count", &v2, &v3, &v4, 4uLL) >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t kpc_get_counter_count(int a1)
{
  v2 = 0;
  v4 = a1;
  v3 = 4;
  if (sysctlbyname("kpc.counter_count", &v2, &v3, &v4, 4uLL) >= 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t kpc_set_config(unsigned int a1, const void *a2)
{
  v9 = 0;
  v11 = a1;
  v10 = 4;
  v4 = 0xFFFFFFFFLL;
  if ((sysctlbyname("kpc.config_count", &v9, &v10, &v11, 4uLL) & 0x80000000) == 0 && v9)
  {
    v5 = (8 * v9);
    v6 = malloc_type_malloc((v5 + 8), 0x26444B15uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = a1;
      memcpy(v6 + 1, a2, v5);
      v4 = sysctlbyname("kpc.config", 0, 0, v7, (v5 + 8));
      free(v7);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t kpc_get_cpu_counters(int a1, unsigned int a2, _DWORD *a3, void *a4)
{
  v15 = a2;
  v16 = 1;
  if (a1)
  {
    v15 = a2 | 0x80000000;
    if (kpc_cpu_count(&v16))
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 8 * v16;
  }

  else
  {
    v7 = 8;
  }

  v17 = 0;
  v19 = a2;
  v18 = 4;
  v8 = sysctlbyname("kpc.counter_count", &v17, &v18, &v19, 4uLL);
  v9 = v17;
  if (v8 < 0)
  {
    v9 = 0;
  }

  v10 = (v7 * v9);
  v18 = v10 + 8;
  v11 = malloc_type_malloc(v10 + 8, 0x472B09F2uLL);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  bzero(v11, v10 + 8);
  v13 = sysctlbyname("kpc.counters", v12, &v18, &v15, 8uLL);
  if (a3)
  {
    *a3 = *v12;
  }

  memcpy(a4, v12 + 1, v10);
  free(v12);
  return v13;
}

uint64_t kpc_cpu_count(int *a1)
{
  v2 = kpc_cpu_count_ncpus;
  if (kpc_cpu_count_ncpus)
  {
    goto LABEL_2;
  }

  if (!sysctlbyname("hw.ncpu", &kpc_cpu_count_ncpus, &kpc_cpu_count_ncpus_size, 0, 0))
  {
    v2 = kpc_cpu_count_ncpus;
LABEL_2:
    result = 0;
    *a1 = v2;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t kpc_get_thread_counters(int a1, unsigned int a2, void *a3)
{
  v5 = a1;
  v4 = 8 * a2;
  return sysctlbyname("kpc.thread_counters", a3, &v4, &v5, 4uLL);
}

void *kpc_counterbuf_alloc()
{
  v5 = 3;
  v3 = 0;
  v4 = 4;
  if (sysctlbyname("kpc.counter_count", &v3 + 4, &v4, &v5, 4uLL) >= 0)
  {
    v0 = HIDWORD(v3);
  }

  else
  {
    v0 = 0;
  }

  v1 = kpc_cpu_count(&v3);
  result = 0;
  if (!v1 && v0 >= 1)
  {
    return malloc_type_calloc(v3 * v0 + 1, 8uLL, 0x100004000313F17uLL);
  }

  return result;
}

uint64_t kpc_set_period(unsigned int a1, const void *a2)
{
  v9 = 0;
  v11 = a1;
  v10 = 4;
  if (sysctlbyname("kpc.counter_count", &v9, &v10, &v11, 4uLL) >= 0)
  {
    v4 = (8 * v9);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc((v4 + 8), 0xB38BBCC5uLL);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  *v5 = a1;
  memcpy(v5 + 1, a2, v4);
  v7 = sysctlbyname("kpc.period", 0, 0, v6, (v4 + 8));
  free(v6);
  return v7;
}

uint64_t kpc_get_period(unsigned int a1, void *a2)
{
  v6 = a1;
  v7 = 0;
  v9 = a1;
  v8 = 4;
  v3 = sysctlbyname("kpc.counter_count", &v7, &v8, &v9, 4uLL);
  v4 = v7;
  if (v3 < 0)
  {
    v4 = 0;
  }

  v8 = 8 * v4;
  return sysctlbyname("kpc.period", a2, &v8, &v6, 8uLL);
}

uint64_t kpc_set_actionid(unsigned int a1, const void *a2)
{
  v9 = 0;
  v11 = a1;
  v10 = 4;
  if (sysctlbyname("kpc.counter_count", &v9, &v10, &v11, 4uLL) >= 0)
  {
    v4 = (4 * v9);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc((v4 + 8), 0xE10EF4BEuLL);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  *v5 = a1;
  memcpy(v5 + 1, a2, v4);
  v7 = sysctlbyname("kpc.actionid", 0, 0, v6, (v4 + 8));
  free(v6);
  return v7;
}

uint64_t kpc_get_actionid(unsigned int a1, void *a2)
{
  v6 = a1;
  v7 = 0;
  v9 = a1;
  v8 = 4;
  v3 = sysctlbyname("kpc.counter_count", &v7, &v8, &v9, 4uLL);
  v4 = v7;
  if (v3 < 0)
  {
    v4 = 0;
  }

  v8 = 4 * v4;
  return sysctlbyname("kpc.actionid", a2, &v8, &v6, 8uLL);
}

uint64_t trace_clear()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *__error() = 0;
  *v4 = xmmword_27718F150;
  v5 = 0;
  v0 = sysctl(v4, 3u, 0, &v3, 0, 0);
  result = 0;
  if (v0 < 0)
  {
    result = *__error();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_bufinit(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *__error() = 0;
  *&v5 = 0x1800000001;
  DWORD2(v5) = 4;
  HIDWORD(v5) = a1;
  v6 = 0;
  if (sysctl(&v5, 4u, 0, 0, 0, 0) < 0 || (v5 = xmmword_27718F160, v6 = 0, v2 = sysctl(&v5, 3u, 0, 0, 0, 0), result = 0, v2 < 0))
  {
    result = *__error();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_rnginit()
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0x40000;
  v4 = 0xFFFFFFFF00000000;
  v5 = 0;
  v6 = 20;
  *v7 = xmmword_27718F170;
  v8 = 0;
  if (sysctl(v7, 3u, &v3, &v6, 0, 0) < 0 || (*v7 = xmmword_27718F160, v8 = 0, v0 = sysctl(v7, 3u, 0, 0, 0, 0), result = 0, v0 < 0))
  {
    result = *__error();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_enable(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0x1800000001;
  v5 = 3;
  v6 = a1;
  v7 = 0;
  v1 = sysctl(&v4, 4u, 0, 0, 0, 0);
  result = 0;
  if (v1 < 0)
  {
    result = *__error();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_perf_filter()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = 0x2500010000;
  v4 = 38;
  v6 = 20;
  *v7 = xmmword_27718F170;
  v8 = 0;
  v0 = sysctl(v7, 3u, &v3, &v6, 0, 0);
  result = 0;
  if (v0 < 0)
  {
    result = *__error();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_read(void *a1, size_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = xmmword_27718F180;
  v6 = 0;
  v2 = sysctl(&v5, 3u, a1, a2, 0, 0);
  result = 0;
  if (v2 < 0)
  {
    result = *__error();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_set_nowrap()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 1;
  *v4 = xmmword_27718F190;
  v5 = 0;
  v0 = sysctl(v4, 4u, 0, &v3, 0, 0);
  v1 = *MEMORY[0x277D85DE8];
  return v0 >> 31;
}

uint64_t trace_get_bufinfo(void *a1, size_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 5;
  v4 = a2;
  *v5 = 0x1800000001;
  result = sysctl(v5, 3u, a1, &v4, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_read_threadmap(void *a1, size_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *v6 = xmmword_27718F1A0;
  v7 = 0;
  v2 = sysctl(v6, 3u, a1, &v5, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return v2 & (v2 >> 31);
}

uint64_t trace_block(unint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1 / 0xF4240;
  *v6 = xmmword_27718F1B0;
  v7 = 0;
  LODWORD(result) = sysctl(v6, 3u, 0, &v5, 0, 0);
  if (result || !v5)
  {
    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v2 = result == 0;
    }

    if (v2)
    {
      result = 35;
    }

    else
    {
      result = result;
    }
  }

  else
  {
    if (v5 != 1)
    {
      v3 = kperf_log();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_12;
      }

      trace_block_cold_1(&v5, v3);
    }

    result = 0;
  }

LABEL_12:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_config_default(int a1)
{
  v2 = trace_clear();
  if (v2)
  {
    v4 = v2;
    v6 = "trace_clear";
LABEL_8:
    perror(v6);
    return v4;
  }

  v3 = trace_bufinit(a1);
  if (v3)
  {
    v4 = v3;
    v6 = "trace_bufinit";
    goto LABEL_8;
  }

  v4 = trace_rnginit();
  if (v4)
  {
    v6 = "trace_rnginit";
    goto LABEL_8;
  }

  return v4;
}

uint64_t trace_start()
{
  v0 = trace_perf_filter();
  if (v0)
  {
    v2 = v0;
    perror("trace_perf_filter");
    return v2;
  }

  else
  {

    return trace_enable(1);
  }
}

uint64_t trace_set_typefilter(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0x2000;
  *v5 = xmmword_27718F1C0;
  v6 = 0;
  v1 = sysctl(v5, 3u, a1, &v4, 0, 0);
  v2 = *MEMORY[0x277D85DE8];
  return v1 & (v1 >> 31);
}

_DWORD *kperf_buffer_create_live()
{
  v0 = malloc_type_calloc(1uLL, 0xCF8uLL, 0x10F0040D9A9C70DuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 1;
    v2 = malloc_type_malloc(0x100000uLL, 0x2D06CD63uLL);
    *(v1 + 3) = v2;
    if (v2)
    {
      *(v1 + 4) = 0x100000;
      *(v1 + 9) = v1;
      *(v1 + 11) = 0;
      *(v1 + 413) = 0;
      *(v1 + 23) = 0;
      *(v1 + 24) = 0;
      v1[828] = -1;
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

void *kperf_buffer_create_chunked()
{
  result = malloc_type_calloc(1uLL, 0xCF8uLL, 0x10F0040D9A9C70DuLL);
  if (result)
  {
    *result = 0;
    result[9] = result;
    result[11] = 0;
    result[413] = 0;
    *(result + 828) = -1;
  }

  return result;
}

uint64_t kperf_buffer_wait(_DWORD *a1, unint64_t a2)
{
  if (*a1 == 1)
  {
    return trace_block(a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t kperf_buffer_readdata_withmore(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v32 = 0;
  if ((*(a1 + 176) & 1) == 0 && !*(a1 + 96))
  {
    is_64bit = kperf_kern_is_64bit();
    if (is_64bit)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(a1 + 4) = v10;
    v11 = vdup_n_s32(is_64bit == 0);
    v12.i64[0] = v11.u32[0];
    v12.i64[1] = v11.u32[1];
    *(a1 + 8) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v12, 0x3FuLL)), xmmword_27718F200, xmmword_27718F1F0);
    if (trace_get_bufinfo(&v33, 0x14uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v15 = HIDWORD(v34);
    v16 = *(a1 + 16) * SHIDWORD(v34);
    v17 = ((v16 + 288) & 0xFFF) != 0 ? (v16 + 4384) & 0xFFFFFFFFFFFFF000 : v16 + 288;
    if (v17 > *(a1 + 32))
    {
      return 0xFFFFFFFFLL;
    }

    v18 = *(a1 + 24);
    *v18 = 1437204992;
    *(v18 + 4) = v15;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = kperf_tick_frequency(v13, v14);
    if (is_64bit)
    {
      *(v18 + 20) |= 1u;
    }

    *(a1 + 96) = v18 + 288;
    *(a1 + 104) = v16 + v18 + 288;
    if (trace_read_threadmap((v18 + 288), v16))
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 40) = v17;
    *(a1 + 48) = v17;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = v4 - v5;
  if (*(a1 + 3288))
  {
    if (*(a1 + 8) * (*(a1 + 3296) / 4 + 3) > v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = inject_kd(a1, (a1 + 24));
    v8 = *(a1 + 4);
    if (v8 == 1)
    {
      *(v7 + 28) = 620756993;
    }

    else
    {
      *(v7 + 48) = 620756993;
    }

    if ((*(a1 + 3296) & 0x80000000) == 0)
    {
      v19 = -1;
      v20 = v8;
      v21 = v8;
      while (1)
      {
        v22 = (v19 + 1) & 3;
        if (((v19 + 1) & 3) == 0)
        {
          break;
        }

        v23 = *(*(a1 + 3288) + 8 * v19);
        if (v22 != 1)
        {
          if (v22 == 2)
          {
            if (v21 == 1)
            {
              *(v7 + 16) = v23;
            }

            else
            {
              *(v7 + 24) = v23;
            }

            goto LABEL_49;
          }

          if (v8 != 1)
          {
            *(v7 + 32) = v23;
            goto LABEL_48;
          }

          *(v7 + 20) = v23;
LABEL_42:
          v20 = 1;
          goto LABEL_43;
        }

        if (v20 != 1)
        {
          *(v7 + 16) = v23;
          v21 = v20;
          goto LABEL_49;
        }

        *(v7 + 12) = v23;
LABEL_43:
        v21 = 1;
LABEL_49:
        if (++v19 >= *(a1 + 3296))
        {
          goto LABEL_50;
        }
      }

      v7 = inject_kd(a1, (a1 + 24));
      v8 = *(a1 + 4);
      if (v8 == 1)
      {
        *(v7 + 28) = 630784000;
      }

      else
      {
        *(v7 + 48) = 630784000;
      }

      if (v19 == -1)
      {
        v24 = *(a1 + 3296);
      }

      else
      {
        v24 = *(*(a1 + 3288) + 8 * v19);
      }

      if (v8 != 1)
      {
        *(v7 + 8) = v24;
LABEL_48:
        v20 = v8;
        v21 = v8;
        goto LABEL_49;
      }

      *(v7 + 8) = v24;
      goto LABEL_42;
    }

LABEL_50:
    v25 = inject_kd(a1, (a1 + 24));
    if (*(a1 + 4) == 1)
    {
      *(v25 + 28) = 620756994;
    }

    else
    {
      *(v25 + 48) = 620756994;
    }

    *(a1 + 3296) = 0;
    free(*(a1 + 3288));
    *(a1 + 3288) = 0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = v4 - v5;
  }

  if (v6 >> 16)
  {
    goto LABEL_60;
  }

  if (!*(a1 + 24))
  {
    v27 = malloc_type_malloc(0x100000uLL, 0x2D06CD63uLL);
    *(a1 + 24) = v27;
    if (v27)
    {
      v5 = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v6 = 0x100000;
      *(a1 + 32) = 0x100000;
      goto LABEL_60;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = v4;
  if (v4 < 0x10000)
  {
    return 1;
  }

LABEL_60:
  LODWORD(v26) = 0;
  do
  {
    v32 = v6;
    v28 = trace_read((*(a1 + 24) + v5), &v32);
    if (v28)
    {
      return v28;
    }

    v29 = v32 * *(a1 + 8);
    v32 = v29;
    v26 = (v26 + v29);
    v5 = *(a1 + 48) + v29;
    *(a1 + 48) = v5;
    *(a1 + 56) = v5;
    v6 -= v29;
  }

  while (v29 >= 0x401 && v6 != 0);
  if (a2 && *(a1 + 32) - v5 <= 0x3FF)
  {
    *a2 = 1;
  }

  return v26;
}

uint64_t kperf_buffer_set_config(uint64_t a1, int a2, const void *a3)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 8 * a2;
  v7 = malloc_type_malloc(v6, 0x100004000313F17uLL);
  if (!v7)
  {
    return 4294967294;
  }

  v8 = v7;
  memcpy(v7, a3, v6);
  result = 0;
  *(a1 + 3288) = v8;
  *(a1 + 3296) = a2;
  return result;
}

uint64_t kperf_buffer_getbuf(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    dbglog_log(a1, *(a1 + 24), v6);
    result = 0;
    *a2 = *(a1 + 24);
    *a3 = *(a1 + 56);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 176) = 1;
  }

  else
  {
    result = 0;
    *a2 = 0;
    *a3 = 0;
  }

  return result;
}

ssize_t dbglog_log(uint64_t a1, void *__buf, size_t __nbyte)
{
  v6 = *(a1 + 3304);
  if (v6)
  {
    if ((*(a1 + 3312) & 0x80000000) != 0)
    {
      v7 = open(v6, 1537, 384);
      *(a1 + 3312) = v7;
      if (v7 < 0)
      {
        free(*(a1 + 3304));
        *(a1 + 3304) = 0;
      }
    }
  }

  result = *(a1 + 3312);
  if ((result & 0x80000000) == 0)
  {

    return write(result, __buf, __nbyte);
  }

  return result;
}

char *kperf_buffer_set_debug_log(char *result, char *__s1)
{
  if (!*(result + 413))
  {
    v2 = result;
    result = strdup(__s1);
    *(v2 + 413) = result;
  }

  return result;
}

void kperf_buffer_free(void *a1)
{
  if (*a1 == 1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(a1 + 828);
  if (v3)
  {
    close(v3);
  }

  free(a1);
}

uint64_t kperf_buffer_setchunk(uint64_t a1, void *a2, size_t a3)
{
  if (*a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 24))
  {
    return 4294967294;
  }

  dbglog_log(a1, a2, a3);
  result = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  *(a1 + 88) = a2;
  return result;
}

double kperf_buffer_clearchunk(uint64_t a1)
{
  if (!*a1)
  {
    if (*(a1 + 24))
    {
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 176) = 1;
    }
  }

  return result;
}

unint64_t *_kperf_buffer_next_kevent(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return 0;
    }

    v2 = *(a1 + 24);
    if (!v2)
    {
      return 0;
    }

    v3 = *(a1 + 4);
    if (!v3)
    {
      v4 = *(a1 + 32);
      if (v4 >= 0x120)
      {
        if (*v2 == 1437204992)
        {
          v19 = v2[5];
          v3 = 1;
          if (v19)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          *(a1 + 4) = v20;
          v5 = 72;
          if ((v19 & 1) == 0)
          {
            v21 = 28;
            v22 = 32;
LABEL_38:
            *(a1 + 8) = v22;
            *(a1 + 16) = v21;
            v23 = v2[1];
            v24 = (v5 * 4 + v21 * v23 + 4095) & 0xFFFFFFFFFFFFF000;
            *(a1 + 64) = 1;
            v25 = v24 | v22;
            v26 = v2 + v24;
            if (v4 >= v25)
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            *(a1 + 80) = a1 + 24;
            *(a1 + 88) = v27;
            v28 = &v2[v5];
            *(a1 + 96) = v28;
            *(a1 + 104) = v28 + v21 * v23;
            goto LABEL_42;
          }

LABEL_37:
          v3 = 2;
          v21 = 32;
          v22 = 64;
          goto LABEL_38;
        }

        if (*v2 == 1437204737)
        {
          *(a1 + 4) = 2;
          v5 = 6;
          goto LABEL_37;
        }
      }

      v3 = 0;
    }

LABEL_42:
    if (*(a1 + 64))
    {
      if ((*(a1 + 176) & 1) == 0)
      {
        v29 = *(a1 + 96);
        if (v29)
        {
          v30 = *(a1 + 104);
          if (v29 < v30)
          {
            v31 = 2;
            if (v3 == 1)
            {
              v31 = 1;
            }

            while (!v29[v31])
            {
              v29 = (v29 + *(a1 + 16));
              *(a1 + 96) = v29;
              if (v30 <= v29)
              {
                goto LABEL_50;
              }
            }

            *(a1 + 112) = 0;
            result = (a1 + 112);
            *(a1 + 160) = 117506056;
            if (v3 == 1)
            {
              v34 = *(v29 + 2);
              *(a1 + 136) = v29[6];
              *(a1 + 120) = v34;
              v35 = *v29;
            }

            else
            {
              v36 = *(v29 + 3);
              *(a1 + 136) = v29[7];
              *(a1 + 120) = v36;
              v35 = *v29;
            }

            *(a1 + 152) = v35;
            v18 = v29 + *(a1 + 16);
LABEL_31:
            *(a1 + 96) = v18;
            return result;
          }

LABEL_50:
          *(a1 + 176) = 1;
        }
      }

      v32 = *(a1 + 88);
      if (v32)
      {
        result = kd32_promote(a1, v32);
        v33 = *(a1 + 8) + *(a1 + 88);
        if (**(a1 + 80) + *(*(a1 + 80) + 24) <= v33)
        {
          v33 = 0;
        }

        *(a1 + 88) = v33;
        return result;
      }
    }

    return 0;
  }

  *(a1 + 64) = 1;
  if ((*(a1 + 176) & 1) == 0)
  {
    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
    if (v6 < v7)
    {
      v8 = *(a1 + 4);
      v9 = 2;
      if (v8 == 1)
      {
        v9 = 1;
      }

      while (!v6[v9])
      {
        v6 = (v6 + *(a1 + 16));
        *(a1 + 96) = v6;
        if (v7 <= v6)
        {
          goto LABEL_15;
        }
      }

      *(a1 + 112) = 0;
      result = (a1 + 112);
      *(a1 + 160) = 117506056;
      if (v8 == 1)
      {
        v15 = *(v6 + 2);
        *(a1 + 136) = v6[6];
        *(a1 + 120) = v15;
        v16 = *v6;
      }

      else
      {
        v17 = *(v6 + 3);
        *(a1 + 136) = v6[7];
        *(a1 + 120) = v17;
        v16 = *v6;
      }

      *(a1 + 152) = v16;
      v18 = v6 + *(a1 + 16);
      goto LABEL_31;
    }

LABEL_15:
    *(a1 + 176) = 1;
  }

  v10 = (a1 + 88);
  v11 = *(a1 + 88);
  v12 = *(a1 + 80);
  if (!v11)
  {
    if (!v12)
    {
      v12 = (a1 + 24);
      *(a1 + 80) = a1 + 24;
    }

    if (v12[3])
    {
      result = (*v12 + v12[2]);
      *v10 = result;
      return result;
    }

    return 0;
  }

  v13 = *(a1 + 8);
  if ((v11 - *v12 + v13) >= v12[3])
  {
    result = 0;
    *v10 = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 176) = 1;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    *(a1 + 88) = v13 + v11;

    return kd32_promote(a1, (v13 + v11));
  }

  return result;
}

uint64_t kperf_buffer_get_stats(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (*(a1 + 64))
    {
      return *(a1 + 204);
    }

    return -1;
  }

  if (a2 || !*(a1 + 64))
  {
    return -1;
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    return *(v2 + 2536);
  }

  else
  {
    return *(a1 + 8) * *(a1 + 200);
  }
}

uint64_t kperf_buffer_set_debug(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    return -1;
  }

  result = *(a1 + 3300);
  *(a1 + 3300) = a3 != 0;
  return result;
}

uint64_t inject_kd(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  v4 = a2[3];
  v5 = *(a1 + 8);
  a2[3] = v5 + v4;
  bzero((v3 + v4), v5);
  LODWORD(v2) = *(v2 + 4);
  v6 = mach_absolute_time();
  v7 = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 1)
  {
    v7 = v6;
  }

  *(v3 + v4) = v7;
  return v3 + v4;
}

unint64_t *kd32_promote(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 4) != 2)
  {
    v2 = *a2;
    *(a1 + 112) = *a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = a1 + 112;
    v4 = a2[1];
    v5 = a2[2];
    *&v6 = v4;
    *(&v6 + 1) = HIDWORD(v4);
    *(v3 + 8) = v6;
    *&v6 = v5;
    *(&v6 + 1) = HIDWORD(v5);
    *(v3 + 24) = v6;
    v7 = *(a2 + 7);
    *(v3 + 40) = *(a2 + 6);
    *(v3 + 48) = v7;
    *(v3 + 52) = HIBYTE(v2);
    return v3;
  }

  return a2;
}

uint64_t kperf_logging_start()
{
  result = trace_config_default(logging_nbufs);
  if (!result)
  {
    if ((wrap & 1) == 0)
    {
      trace_set_nowrap();
    }

    if (kdebug)
    {
      v1 = has_typefilter;
      v2 = kperf_log();
      v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
      if (v1 == 1)
      {
        if (v3)
        {
          kperf_logging_start_cold_3(v2, v4, v5, v6, v7, v8, v9, v10);
        }

        trace_set_typefilter(&typefilter);
      }

      else if (v3)
      {
        kperf_logging_start_cold_2(v2, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    else
    {
      v11 = kperf_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        kperf_logging_start_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      trace_perf_filter();
    }

    return trace_enable(1);
  }

  return result;
}

uint64_t kperf_logging_set_wrap(char a1)
{
  v1 = wrap;
  wrap = a1;
  return v1;
}

uint64_t kperf_logging_set_kdebug(char a1)
{
  v1 = kdebug;
  kdebug = a1;
  return v1;
}

void kperf_logging_set_typefilter(void *__src)
{
  if (__src)
  {
    memcpy(&typefilter, __src, 0x2000uLL);
    kperf_typefilter_enable_class(&typefilter, 0x25u);
  }

  else
  {
    bzero(&typefilter, 0x2000uLL);
  }

  has_typefilter = __src != 0;
}

uint64_t kperf_logging_query_size(uint64_t result)
{
  if (result)
  {
    return result;
  }

  else
  {
    return 1000000;
  }
}

uint64_t kperf_logging_set_size(uint64_t result)
{
  if (result)
  {
    result = result;
  }

  else
  {
    result = 1000000;
  }

  logging_nbufs = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

int8x16_t kperf_typefilter_invert(uint64_t a1)
{
  for (i = 0; i != 0x2000; i += 16)
  {
    result = vmvnq_s8(*(a1 + i));
    *(a1 + i) = result;
  }

  return result;
}

double kperf_typefilter_disable_class(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 32 * a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

__n128 kperf_typefilter_enable_class(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 32 * a2);
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v2 = result;
  v2[1] = result;
  return result;
}

uint64_t kperf_typefilter_enable_subclass(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (a3 | (a2 << 8)) >> 3;
  *(result + v3) |= 1 << (a3 & 7);
  return result;
}

uint64_t kperf_typefilter_disable_subclass(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (a3 | (a2 << 8)) >> 3;
  *(result + v3) &= ~(1 << (a3 & 7));
  return result;
}

uint64_t kperf_timer_period_set(unsigned int a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.timer.period", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_timer_period_get(unsigned int a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = 0;
  v5 = 16;
  result = sysctlbyname("kperf.timer.period", &v6, &v5, &v6, 0x10uLL);
  if (!result)
  {
    *a2 = v7;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_timer_action_set(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.timer.action", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_timer_lightweight_pet_get(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kperf.lightweight_pet", &v4, &v3, 0, 0);
  if (!result)
  {
    *a1 = v4 == 1;
  }

  return result;
}

uint64_t kperf_action_samplers_set(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.samplers", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_action_userdata_set(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.userdata", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_action_filter_set_by_task(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.filter_by_task", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_action_filter_set_by_pid(unsigned int a1, int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.filter_by_pid", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_action_ucallstack_depth_set(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.ucallstack_depth", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_action_kcallstack_depth_set(unsigned int a1, unsigned int a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  result = sysctlbyname("kperf.action.kcallstack_depth", 0, 0, v4, 0x10uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kperf_kern_is_64bit()
{
  v35 = *MEMORY[0x277D85DE8];
  v34 = xmmword_27718F218;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  v2 = 648;
  if (sysctl(&v34, 4u, v3, &v2, 0, 0) == -1)
  {
    result = 0;
  }

  else
  {
    result = (v4 >> 2) & 1;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void kperf_buffer_free_record(void *a1)
{
  v2 = a1[311];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

uint64_t kperf_buffer_next_record(uint64_t a1, void *a2)
{
  v3 = a1 + 2256;
  v4 = a1 + 1232;
  v5 = a1 + 208;
  while (1)
  {
    if (*(a1 + 64))
    {
      v6 = *(a1 + 184);
      if (v6)
      {
        if (*(v6 + 2504))
        {
          break;
        }

        if (*(a1 + 204) >= 10001)
        {
          *v6 = 0x8000000000000000;
          *(v6 + 2504) = 1;
          *(v5 + 8 * *(v6 + 24)) = 0;
          goto LABEL_103;
        }
      }
    }

    kevent = _kperf_buffer_next_kevent(a1);
    if (!kevent)
    {
      break;
    }

    v8 = kevent;
    ++*(a1 + 200);
    if (*kevent)
    {
      if (*(kevent + 12) != 630784000)
      {
        v9 = *(kevent + 13);
        v10 = *(v3 + 8 * v9) + 1;
        *(v3 + 8 * v9) = v10;
        if (v10 > *(a1 + 3280))
        {
          *(a1 + 3280) = v10;
        }
      }
    }

    v11 = malloc_type_malloc(0x9F0uLL, 0x1030040B65789E5uLL);
    if (!v11)
    {
      return 2;
    }

    v12 = v11;
    v11[313].i32[0] = 0;
    v11[3].i32[0] = 0;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    v11[316] = 0xFFFFFFFF00000000;
    v11[311] = 0;
    v11[271].i32[0] = 0;
    v11[1] = *v8;
    v11[317] = (*(a1 + 8) * *(a1 + 200));
    if (*(a1 + 3300))
    {
      *v11 = 23;
      v13 = *(v8 + 13);
      v11[6].i32[0] = *(v8 + 12);
      v11[7] = v8[1];
      v11[8] = v8[2];
      v11[9] = v8[3];
      v11[10] = v8[4];
      v11[2] = v8[5];
      v11[3].i32[0] = v13;
      v14 = 65559;
    }

    else
    {
      v13 = *(v8 + 13);
      v14 = 65539;
    }

    if (v13 > 0x7F)
    {
      v15 = 2;
      goto LABEL_33;
    }

    v16 = *(v8 + 12);
    if (v16 == 117571592)
    {
      v11[3].i32[0] = v13;
      v17 = *v8;
      *v11 = v14;
      v11[1] = v17;
      v11[312] = *(v4 + 8 * v13);
      v11[313].i32[0] = 1;
      *(v4 + 8 * v13) = v17;
      v18 = *(v5 + 8 * v13);
      v15 = 0;
      if (v18)
      {
        *v18 = 0x8000000000000000;
        *(v18 + 2504) = 1;
        *(v5 + 8 * v13) = 0;
      }

LABEL_33:
      v23 = *v11;
      if (*v11)
      {
        goto LABEL_34;
      }

      goto LABEL_94;
    }

    *(v4 + 8 * v13) = *v8;
    v19 = *(v5 + 8 * v13);
    if (v16 == 620756993)
    {
      if (v19)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
        *(v5 + 8 * v13) = v11;
        *v11 |= 0x2007uLL;
        v11[3].i32[0] = v13;
        v11[307] = vmovn_s64(*(v8 + 1));
        v11[2] = v8[5];
      }

      goto LABEL_33;
    }

    v15 = 0;
    if (v19)
    {
      if (v16 <= 620888083)
      {
        if (v16 <= 620822531)
        {
          if (v16 == 620756994)
          {
            v15 = 0;
            *(v19 + 2504) = 1;
            *(v5 + 8 * v13) = 0;
          }
        }

        else
        {
          switch(v16)
          {
            case 620822532:
              v15 = 0;
              *v19 |= 0x20uLL;
              v40 = v8[1];
              *(v19 + 16) = v8[2];
              v41 = v8[4];
              *(v19 + 96) = v8[3];
              *(v19 + 88) = v40;
              *(v19 + 92) = v41;
              break;
            case 620888076:
              if ((*v19 & 0x40) != 0)
              {
                v15 = 0;
                v34 = *(v19 + 2520);
                v35 = (v19 + 8 * v34);
                v35[143] = v8[1];
                v35[144] = v8[2];
                v35[145] = v8[3];
                v35[146] = v8[4];
                *(v19 + 2520) = v34 + 4;
                break;
              }

              goto LABEL_86;
            case 620888080:
              v15 = 0;
              v26 = *(v19 + 2524);
              v27 = (v19 + 8 * v26);
              v27[14] = v8[1];
              v27[15] = v8[2];
              v27[16] = v8[3];
              v27[17] = v8[4];
              *(v19 + 2524) = v26 + 4;
              break;
          }
        }
      }

      else
      {
        if (v16 > 621150223)
        {
          if (v16 == 621150224)
          {
            v15 = 0;
            *v19 |= 0x800uLL;
            v43 = (v19 + 2432);
            v51.val[1] = vmovn_s64(*(v8 + 3));
            v51.val[0] = vmovn_s64(*(v8 + 1));
            vst2_f32(v43, v51);
            *(v19 + 2168) = 0;
            goto LABEL_92;
          }

          if (v16 != 621150232)
          {
            if (v16 != 630784000)
            {
              goto LABEL_92;
            }

            v28 = *(v19 + 2488);
            v29 = *(v19 + 2532);
            if (v28)
            {
LABEL_56:
              v30 = 0;
              v31 = *(v19 + 2480);
              while (v29 < v31)
              {
                if (v30 | v29)
                {
                  if (v30 == 2)
                  {
                    v32 = v8 + 3;
                  }

                  else
                  {
                    v32 = v8 + 4;
                  }

                  if (v30)
                  {
                    v33 = v8 + 2;
                  }

                  else
                  {
                    v33 = v8 + 1;
                  }

                  if (v30 <= 1)
                  {
                    v32 = v33;
                  }

                  v28[v29++] = *v32;
                  *(v19 + 2532) = v29;
                }

                v15 = 0;
                if (++v30 == 4)
                {
                  goto LABEL_92;
                }
              }
            }

            else if (v29 == -1)
            {
              v46 = v8[1];
              *(v19 + 2480) = v46;
              v28 = malloc_type_malloc(8 * v46, 0x100004000313F17uLL);
              *(v19 + 2488) = v28;
              *(v19 + 2532) = 0;
              if (v28)
              {
                v29 = 0;
                *v19 |= 0x8000uLL;
                goto LABEL_56;
              }
            }

LABEL_86:
            v15 = 0;
            goto LABEL_92;
          }

          v15 = 0;
          *v19 |= 0x400uLL;
          v37 = *(v8 + 8) | (v8[3] << 32);
          v38 = *(v19 + 2528);
          v39 = v19 + 8 * v38;
          *(v39 + 2176) = *(v8 + 4) | (v8[1] << 32);
          *(v39 + 2184) = v37;
          v22 = v38 + 2;
          *(v19 + 2528) = v38 + 2;
        }

        else
        {
          if (v16 == 620888084)
          {
            v42 = v8[2];
            if (v42 - 1001 >= 0xFFFFFFFFFFFFFC18)
            {
              v15 = 0;
              *v19 |= 0x40uLL;
              *(v19 + 1136) = v8[1];
              *(v19 + 1140) = v42;
              *(v19 + 2520) = 0;
              goto LABEL_92;
            }

            goto LABEL_86;
          }

          if (v16 == 620888088)
          {
            v36 = v8[2];
            if (v36 - 1001 >= 0xFFFFFFFFFFFFFC18)
            {
              v15 = 0;
              *v19 |= 0x80uLL;
              *(v19 + 104) = v8[1];
              *(v19 + 108) = v36;
              *(v19 + 2524) = 0;
              goto LABEL_92;
            }

            goto LABEL_86;
          }

          if (v16 != 621150220)
          {
            goto LABEL_92;
          }

          *v19 |= 0x400uLL;
          if (*(v19 + 2436))
          {
            v20 = *(v19 + 2528);
            v21 = (v19 + 8 * v20);
            v21[272] = v8[1];
            v21[273] = v8[2];
            v21[274] = v8[3];
            v21[275] = v8[4];
            v22 = v20 + 4;
          }

          else
          {
            v44 = *(v19 + 2528);
            if (v44)
            {
              v45 = (v19 + 2176 + 8 * v44);
              *v45 = v8[1];
              v45[1] = v8[2];
              v45[2] = v8[3];
              v45[3] = v8[4];
              v22 = v44 + 4;
            }

            else
            {
              *(v19 + 2176) = v8[2];
              *(v19 + 2184) = v8[3];
              *(v19 + 2192) = v8[4];
              v22 = 3;
            }
          }

          *(v19 + 2528) = v22;
          v15 = 0;
        }

        if (v22 >= *(v19 + 2440))
        {
          v22 = *(v19 + 2440);
        }

        *(v19 + 2168) = v22;
      }
    }

    else
    {
      if (v16 <= 620953608)
      {
        if (v16 == 117506056)
        {
          *v11 |= 8uLL;
          v11[2] = v8[5];
          v11[3].i32[0] = v13;
          strncpy(&v11[3] + 4, v8 + 8, 0x14uLL);
          v12[5].i8[7] = 0;
        }

        else
        {
          if (v16 != 620822548)
          {
            goto LABEL_92;
          }

          *v11 |= 0x4000uLL;
          v25 = v8[2];
          v11[308] = v8[1];
          v11[309].i32[0] = v25;
        }

        goto LABEL_73;
      }

      if (v16 == 620953609 || v16 == 621150209)
      {
        *v11 |= 0x100uLL;
        v11[3].i32[0] = v13;
LABEL_73:
        v15 = 0;
        v12[313].i32[0] = 1;
      }
    }

LABEL_92:
    v23 = *v12;
    if (*v12)
    {
      v12[313].i32[0] = 1;
LABEL_34:
      if (*(a1 + 3280) <= 0x7FFuLL)
      {
        *v12 = (*&v23 | 0x20000);
      }

      ++*(a1 + 204);
      v12[314] = 0;
      v24 = *(a1 + 192);
      if (v24)
      {
        *(v24 + 2512) = v12;
      }

      *(a1 + 192) = v12;
      if (!*(a1 + 184))
      {
        *(a1 + 184) = v12;
      }

      goto LABEL_95;
    }

LABEL_94:
    kperf_buffer_free_record(v12);
LABEL_95:
    if (v15 == 2)
    {
      return v15;
    }
  }

  if (!*(a1 + 64))
  {
    return 1;
  }

LABEL_103:
  v47 = *(a1 + 184);
  if (!v47)
  {
    return 1;
  }

  v48 = *(a1 + 204);
  if (!*(v47 + 2504))
  {
    v15 = 1;
    if (v48 < 10001)
    {
      return v15;
    }

    *v47 = 0x8000000000000000;
    *(v47 + 2504) = 1;
    *(v5 + 8 * *(v47 + 24)) = 0;
    v47 = *(a1 + 184);
  }

  *a2 = v47;
  *(a1 + 204) = v48 - 1;
  *(a1 + 184) = *(v47 + 2512);
  if (*(a1 + 192) == v47)
  {
    *(a1 + 192) = 0;
  }

  v15 = 0;
  *(v47 + 2512) = 0;
  return v15;
}

unint64_t kperf_ns_to_ticks(uint64_t a1)
{
  v2 = dword_2814DB0EC;
  if (!dword_2814DB0EC)
  {
    mach_timebase_info(&timebase_info);
    v2 = dword_2814DB0EC;
  }

  return v2 * a1 / timebase_info;
}

unint64_t kperf_tick_frequency(double a1, double a2)
{
  v2 = dword_2814DB0EC;
  if (!dword_2814DB0EC)
  {
    mach_timebase_info(&timebase_info);
    v2 = dword_2814DB0EC;
  }

  LODWORD(a2) = timebase_info;
  return (v2 / *&a2 * 1000000000.0);
}

uint64_t kperf_log()
{
  if (kperf_log_init_once != -1)
  {
    kperf_log_cold_1();
  }

  return kperf_log_log;
}

os_log_t __kperf_log_block_invoke()
{
  result = os_log_create("com.apple.libkperf", "log");
  kperf_log_log = result;
  return result;
}

void kperf_kdebug_filter_add_internal_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void kperf_kdebug_filter_add_desc_cold_1(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v6[0] = 67109376;
  v6[1] = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_27718A000, a2, OS_LOG_TYPE_ERROR, "cannot add filter 0x%08x to filter (%{errno}d)", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_add_desc_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_add_desc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_add_desc_cold_4(char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_create_desc_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_create_desc_cold_2(int a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8[0] = 67109634;
  v8[1] = a1;
  v9 = 1024;
  v10 = v4;
  v11 = 2080;
  v12 = v6;
  _os_log_error_impl(&dword_27718A000, a2, OS_LOG_TYPE_ERROR, "failed to write filter %u (%d: %s)", v8, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_create_desc_cold_3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void kperf_kdebug_filter_create_desc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_block_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109376;
  v4[1] = 0;
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&dword_27718A000, a2, OS_LOG_TYPE_ERROR, "error: block returned unknown error (r = %d, delay = %zu)", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}