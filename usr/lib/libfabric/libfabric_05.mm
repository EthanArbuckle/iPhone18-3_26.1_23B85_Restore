_BYTE *ofi_cswap_OFI_OP_CSWAP_GE_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_CSWAP_GE_int16_t(__int16 *result, __int16 *a2, __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_GE_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_GE_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unsigned int *ofi_cswap_OFI_OP_CSWAP_GE_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_GE_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unint64_t *ofi_cswap_OFI_OP_CSWAP_GE_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_GE_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_GE_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_GE_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_GT_int8_t(_BYTE *result, _BYTE *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_GT_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_CSWAP_GT_int16_t(__int16 *result, __int16 *a2, __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_GT_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_GT_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unsigned int *ofi_cswap_OFI_OP_CSWAP_GT_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_GT_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unint64_t *ofi_cswap_OFI_OP_CSWAP_GT_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_GT_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_GT_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_GT_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 > v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

char *ofi_cswap_OFI_OP_MSWAP_int8_t(char *result, char *a2, char *a3, char *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

char *ofi_cswap_OFI_OP_MSWAP_uint8_t(char *result, char *a2, char *a3, char *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_MSWAP_int16_t(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_MSWAP_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

int *ofi_cswap_OFI_OP_MSWAP_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

int *ofi_cswap_OFI_OP_MSWAP_uint32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_MSWAP_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_MSWAP_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4++ = *result;
    v7 = *a2++;
    v6 = v7;
    v8 = *a3++;
    *result++ = v5 & ~v8 | v8 & v6;
  }

  return result;
}

uint64_t ofi_atomic_valid(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  if (fi_log_enabled(a1, 2, 2))
  {
    v8 = *__error();
    fi_log(a1, 2, 2, "ofi_log_atomic_info", 1083, "Using open-coded atomics. Use requires single-threaded access by provider.\n");
    *__error() = v8;
  }

  if ((a4 & 8) != 0)
  {
    if ((a4 & 0xC00000000000000) != 0)
    {
      if (!fi_log_enabled(a1, 2, 2))
      {
        return 4294967218;
      }

      v9 = *__error();
      fi_log(a1, 2, 2, "ofi_atomic_valid", 1098, "Only tagged atomic writes supported\n");
      v10 = 4294967218;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((a4 & 0xF3FFFFFFFFFFFFF7) == 0)
  {
    if (a4 >> 59 && (a4 & 0x400000000000000) != 0)
    {
      if (fi_log_enabled(a1, 2, 2))
      {
        v9 = *__error();
        fi_log(a1, 2, 2, "ofi_atomic_valid", 1105, "Invalid flag combination\n");
        goto LABEL_14;
      }

      return 4294967036;
    }

LABEL_15:
    if (a2 >= 0x10)
    {
      if (fi_log_enabled(a1, 2, 2))
      {
        v9 = *__error();
        fi_log(a1, 2, 2, "ofi_atomic_valid", 1110, "Invalid datatype\n");
LABEL_18:
        v10 = 4294967194;
        goto LABEL_19;
      }

      return 4294967194;
    }

    if ((a4 & 0x400000000000000) != 0)
    {
      if (a3 >= 0xC)
      {
        if (fi_log_enabled(a1, 2, 2))
        {
          v9 = *__error();
          fi_log(a1, 2, 2, "ofi_atomic_valid", 1116, "Invalid fetch operation\n");
          goto LABEL_18;
        }

        return 4294967194;
      }

      v11 = a3;
      v12 = ofi_atomic_readwrite_handlers;
    }

    else if ((a4 & 0x800000000000000) != 0)
    {
      v11 = a3 - 12;
      if (v11 >= 7)
      {
        if (fi_log_enabled(a1, 2, 2))
        {
          v9 = *__error();
          fi_log(a1, 2, 2, "ofi_atomic_valid", 1122, "Invalid swap operation\n");
          goto LABEL_18;
        }

        return 4294967194;
      }

      v12 = ofi_atomic_swap_handlers;
    }

    else
    {
      if (a3 > 0xB || a3 == 10)
      {
        if (fi_log_enabled(a1, 2, 2))
        {
          v9 = *__error();
          fi_log(a1, 2, 2, "ofi_atomic_valid", 1128, "Invalid write operation\n");
          goto LABEL_18;
        }

        return 4294967194;
      }

      v11 = a3;
      v12 = ofi_atomic_write_handlers;
    }

    if (*(&v12[16 * v11] + a2))
    {
      return 0;
    }

    if (fi_log_enabled(a1, 2, 2))
    {
      v9 = *__error();
      fi_log(a1, 2, 2, "ofi_atomic_valid", 1135, "Datatype/op combo not supported\n");
      goto LABEL_18;
    }

    return 4294967194;
  }

  if (!fi_log_enabled(a1, 2, 2))
  {
    return 4294967036;
  }

  v9 = *__error();
  fi_log(a1, 2, 2, "ofi_atomic_valid", 1102, "Unknown flag specified\n");
LABEL_14:
  v10 = 4294967036;
LABEL_19:
  *__error() = v9;
  return v10;
}

uint64_t ofi_monitor_import(uint64_t a1)
{
  if (*a1 != 23)
  {
    return 4294967218;
  }

  v10 = v1;
  if (off_2A1C52378)
  {
    if (!fi_log_enabled(&core_prov, 0, 8))
    {
      return 4294967280;
    }

    v7 = *__error();
    fi_log(&core_prov, 0, 8, "ofi_monitor_import", 172, "imported monitor already exists\n", v4, v3, v2, v10, v5, v6);
LABEL_5:
    *__error() = v7;
    return 4294967280;
  }

  if (default_monitor && *default_monitor != default_monitor)
  {
    if (!fi_log_enabled(&core_prov, 0, 8))
    {
      return 4294967280;
    }

    v7 = *__error();
    fi_log(&core_prov, 0, 8, "ofi_monitor_import", 178, "cannot replace active monitor\n", v4, v3, v2, v10, v5, v6);
    goto LABEL_5;
  }

  if (**(a1 + 24) < 0x30uLL)
  {
    return 4294967274;
  }

  off_2A1C52378 = a1;
  *(a1 + 8) = impmon;
  *(a1 + 16) = &impfid_ops;
  *(a1 + 32) = &import_ops;
  if (fi_log_enabled(&core_prov, 2, 8))
  {
    v9 = *__error();
    fi_log(&core_prov, 2, 8, "ofi_monitor_import", 192, "setting imported memory monitor as default\n");
    *__error() = v9;
  }

  result = 0;
  default_monitor = impmon;
  return result;
}

uint64_t ofi_import_monitor_cleanup(uint64_t a1)
{
  if (off_2A1C52378)
  {
    ofi_import_monitor_cleanup_cold_1();
  }

  return ofi_monitor_cleanup(a1);
}

uint64_t ofi_import_monitor_start()
{
  if (off_2A1C52378)
  {
    return (*(*(off_2A1C52378 + 3) + 8))();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t ofi_import_monitor_stop()
{
  if (!off_2A1C52378)
  {
    ofi_import_monitor_stop_cold_1();
  }

  v1 = *(*(off_2A1C52378 + 3) + 16);

  return v1();
}

uint64_t ofi_import_monitor_subscribe()
{
  if (!off_2A1C52378)
  {
    ofi_import_monitor_subscribe_cold_1();
  }

  v1 = *(*(off_2A1C52378 + 3) + 24);

  return v1();
}

uint64_t ofi_import_monitor_unsubscribe()
{
  if (!off_2A1C52378)
  {
    ofi_import_monitor_unsubscribe_cold_1();
  }

  v1 = *(*(off_2A1C52378 + 3) + 32);

  return v1();
}

uint64_t ofi_import_monitor_valid(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!off_2A1C52378)
  {
    ofi_import_monitor_valid_cold_1();
  }

  v4 = *(*(off_2A1C52378 + 3) + 40);
  v5 = *a3;
  v6 = a3[1];

  return v4();
}

uint64_t ofi_close_import()
{
  pthread_mutex_lock(&mm_state_lock);
  dword_2A1C52334 = 1;
  pthread_mutex_unlock(&mm_state_lock);
  off_2A1C52378 = 0;
  return 0;
}

uint64_t ofi_import_monitor_notify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != impmon)
  {
    ofi_import_monitor_notify_cold_1();
  }

  pthread_rwlock_rdlock(&mm_list_rwlock);
  pthread_mutex_lock(&mm_lock);
  ofi_monitor_notify(impmon, a2, a3);
  pthread_mutex_unlock(&mm_lock);

  return pthread_rwlock_unlock(&mm_list_rwlock);
}

uint64_t ofi_domain_bind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (*a2 == 13)
    {
      if (!*(a1 + 64))
      {
        result = 0;
        *(a1 + 64) = a2;
        atomic_fetch_add((a2 + 112), 1u);
        return result;
      }

      if (fi_log_enabled(*(a1 + 184), 0, 2))
      {
        v6 = *__error();
        fi_log(*(a1 + 184), 0, 2, "ofi_domain_bind_eq", 44, "duplicate EQ binding\n");
        *__error() = v6;
      }
    }

    return 4294967274;
  }

  if (fi_log_enabled(*(a1 + 184), 0, 2))
  {
    v4 = *__error();
    fi_log(*(a1 + 184), 0, 2, "ofi_domain_bind", 61, "unsupported bind flags\n");
    *__error() = v4;
  }

  return 4294967036;
}

uint64_t ofi_domain_close(uint64_t a1)
{
  if (atomic_load((a1 + 176)))
  {
    return 4294967280;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    atomic_fetch_add((v4 + 112), 0xFFFFFFFF);
  }

  if (*(a1 + 240))
  {
    ofi_mr_map_close(a1 + 232);
  }

  pthread_mutex_lock((*(a1 + 56) + 56));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *v6 = v5;
  *(v5 + 8) = v6;
  pthread_mutex_unlock((*(a1 + 56) + 56));
  free(*(a1 + 192));
  ofi_genlock_destroy((a1 + 80));
  result = 0;
  atomic_fetch_add((*(a1 + 56) + 120), 0xFFFFFFFF);
  return result;
}

uint64_t ofi_domain_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a3 + 56) = a1;
  *(a3 + 184) = *(a1 + 136);
  *(a3 + 176) = 0;
  v9 = ofi_genlock_init(a3 + 80, a5);
  if (!v9)
  {
    v11 = *(a2 + 96);
    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 36);
    *(a3 + 216) = v15;
    *(a3 + 220) = v13;
    *(a3 + 200) = vorrq_s8(*(v11 + 136), v12);
    *(a3 + 224) = v14;
    *(a3 + 264) = *(v11 + 16);
    *(a3 + 268) = vrev64_s32(*(v11 + 20));
    v16 = strdup(*(v11 + 8));
    *(a3 + 192) = v16;
    if (v16)
    {
      *a3 = 2;
      *(a3 + 8) = a4;
      *(a3 + 32) = &util_domain_mr_ops;
      v9 = ofi_mr_map_init(*(a3 + 184), v15, a3 + 232);
      if (v9)
      {
        ofi_domain_close(a3);
      }

      else
      {
        pthread_mutex_lock((a1 + 56));
        v17 = *(a1 + 152);
        v18 = *v17;
        *(a3 + 40) = *v17;
        *(a3 + 48) = v17;
        v19 = a3 + 40;
        *(v18 + 8) = v19;
        *v17 = v19;
        pthread_mutex_unlock((a1 + 56));
        atomic_fetch_add((a1 + 120), 1u);
      }
    }

    else
    {
      ofi_genlock_destroy((a3 + 80));
      return 4294967284;
    }
  }

  return v9;
}

uint64_t perf_cq_read_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x1BuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 648) = 0;
  result = (*(*(*(a1 + 32) + 24) + 8))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x1BuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[82] -= v5[81];
  ++v5[83];
  return result;
}

uint64_t perf_cq_readfrom_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x1CuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 672) = 0;
  result = (*(*(*(a1 + 32) + 24) + 16))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x1CuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[85] -= v5[84];
  ++v5[86];
  return result;
}

uint64_t perf_cq_readerr_op(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 48);
  if (*(v2 + 80) <= 0x1DuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v2 + 96) + 696) = 0;
  v4 = *(a1 + 32);
  if (a2)
  {
    *(a2 + 80) = -1;
  }

  result = (*(*(v4 + 24) + 24))();
  v6 = *(*(a1 + 40) + 48);
  if (*(v6 + 80) <= 0x1DuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v7 = *(v6 + 96);
  v7[88] -= v7[87];
  ++v7[89];
  return result;
}

uint64_t perf_cq_sread_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x1EuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 720) = 0;
  result = (*(*(*(a1 + 32) + 24) + 32))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x1EuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[91] -= v5[90];
  ++v5[92];
  return result;
}

uint64_t perf_cq_sreadfrom_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x1FuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 744) = 0;
  result = (*(*(*(a1 + 32) + 24) + 40))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x1FuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[94] -= v5[93];
  ++v5[95];
  return result;
}

uint64_t perf_cq_signal_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x20uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 768) = 0;
  result = (*(*(*(a1 + 32) + 24) + 48))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x20uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[97] -= v5[96];
  ++v5[98];
  return result;
}

uint64_t perf_cntr_read_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x21uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 792) = 0;
  result = (*(*(*(a1 + 32) + 24) + 8))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x21uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[100] -= v5[99];
  ++v5[101];
  return result;
}

uint64_t perf_cntr_readerr_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x22uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 816) = 0;
  result = (*(*(*(a1 + 32) + 24) + 16))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x22uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[103] -= v5[102];
  ++v5[104];
  return result;
}

uint64_t perf_cntr_add_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x23uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 840) = 0;
  result = (*(*(*(a1 + 32) + 24) + 24))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x23uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[106] -= v5[105];
  ++v5[107];
  return result;
}

uint64_t perf_cntr_set_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x24uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 864) = 0;
  result = (*(*(*(a1 + 32) + 24) + 32))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x24uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[109] -= v5[108];
  ++v5[110];
  return result;
}

uint64_t perf_cntr_wait_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x25uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 888) = 0;
  result = (*(*(*(a1 + 32) + 24) + 40))();
  v4 = *(*(a1 + 40) + 48);
  if (*(v4 + 80) <= 0x25uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[112] -= v5[111];
  ++v5[113];
  return result;
}

uint64_t perf_cntr_adderr_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x26uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 912) = 0;
  v3 = *(*(a1 + 32) + 24);
  if (v3 && *v3 >= 0x31uLL && (v4 = v3[6]) != 0)
  {
    result = v4();
    v1 = *(*(a1 + 40) + 48);
    if (*(v1 + 80) <= 0x26uLL)
    {
      perf_cq_read_op_cold_2();
    }
  }

  else
  {
    result = 4294967218;
  }

  v6 = *(v1 + 96);
  v6[115] -= v6[114];
  ++v6[116];
  return result;
}

uint64_t perf_cntr_seterr_op(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (*(v1 + 80) <= 0x27uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 936) = 0;
  v3 = *(*(a1 + 32) + 24);
  if (v3 && *v3 >= 0x39uLL && (v4 = v3[7]) != 0)
  {
    result = v4();
    v1 = *(*(a1 + 40) + 48);
    if (*(v1 + 80) <= 0x27uLL)
    {
      perf_cq_read_op_cold_2();
    }
  }

  else
  {
    result = 4294967218;
  }

  v6 = *(v1 + 96);
  v6[118] -= v6[117];
  ++v6[119];
  return result;
}

uint64_t hook_perf_destroy(uint64_t *a1)
{
  ofi_perfset_log(a1 + 9, perf_counters_str);
  ofi_perfset_close((a1 + 9));
  hook_close(a1);
  return 0;
}

uint64_t hook_perf_fabric(uint64_t *a1, void *a2, uint64_t a3)
{
  if (fi_log_enabled(a3, 1, 1))
  {
    v6 = *__error();
    fi_log(a3, 1, 1, "hook_perf_fabric", 875, "Installing perf hook\n");
    *__error() = v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040319416FAuLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  v9 = ofi_perfset_create(a3, v7 + 9, 0x28uLL);
  if (v9)
  {
    free(v8);
  }

  else
  {
    hook_fabric_init(v8, 1, *a1, a3, &perf_fabric_fid_ops, &hook_perf_ctx);
    *a2 = v8;
  }

  return v9;
}

void *fi_hook_perf_ini()
{
  result = &hook_perf_ctx;
  qword_2A1C526E8 = perf_cq_init;
  qword_2A1C526F0 = perf_cntr_init;
  qword_2A1C52690 = perf_endpoint_init;
  return result;
}

uint64_t perf_endpoint_init(void *a1)
{
  a1[5] = &perf_msg_ops;
  a1[6] = &perf_rma_ops;
  a1[7] = &perf_tagged_ops;
  return 0;
}

uint64_t perf_msg_recv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (!*(v1 + 80))
  {
    perf_cq_read_op_cold_1();
  }

  **(v1 + 96) = 0;
  result = (*(*(*(a1 + 80) + 40) + 8))();
  v4 = *(*(a1 + 88) + 48);
  if (!*(v4 + 80))
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[2] + 1;
  v5[1] -= *v5;
  v5[2] = v6;
  return result;
}

uint64_t perf_msg_recvv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 1uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 24) = 0;
  result = (*(*(*(a1 + 80) + 40) + 16))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 1uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[5] + 1;
  v5[4] -= v5[3];
  v5[5] = v6;
  return result;
}

uint64_t perf_msg_recvmsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 2uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 48) = 0;
  result = (*(*(*(a1 + 80) + 40) + 24))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 2uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[8] + 1;
  v5[7] -= v5[6];
  v5[8] = v6;
  return result;
}

uint64_t perf_msg_send(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 3uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 72) = 0;
  result = (*(*(*(a1 + 80) + 40) + 32))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 3uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[11] + 1;
  v5[10] -= v5[9];
  v5[11] = v6;
  return result;
}

uint64_t perf_msg_sendv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 4uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 96) = 0;
  result = (*(*(*(a1 + 80) + 40) + 40))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 4uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[14] + 1;
  v5[13] -= v5[12];
  v5[14] = v6;
  return result;
}

uint64_t perf_msg_sendmsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 5uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 120) = 0;
  result = (*(*(*(a1 + 80) + 40) + 48))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 5uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[17] + 1;
  v5[16] -= v5[15];
  v5[17] = v6;
  return result;
}

uint64_t perf_msg_inject(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 6uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 144) = 0;
  result = (*(*(*(a1 + 80) + 40) + 56))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 6uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[20] + 1;
  v5[19] -= v5[18];
  v5[20] = v6;
  return result;
}

uint64_t perf_msg_senddata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 7uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 168) = 0;
  result = (*(*(*(a1 + 80) + 40) + 64))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 7uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[23] + 1;
  v5[22] -= v5[21];
  v5[23] = v6;
  return result;
}

uint64_t perf_msg_injectdata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 8uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 192) = 0;
  result = (*(*(*(a1 + 80) + 40) + 72))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 8uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[26] + 1;
  v5[25] -= v5[24];
  v5[26] = v6;
  return result;
}

uint64_t perf_rma_read(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 9uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 216) = 0;
  result = (*(*(*(a1 + 80) + 48) + 8))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 9uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[29] + 1;
  v5[28] -= v5[27];
  v5[29] = v6;
  return result;
}

uint64_t perf_rma_readv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xAuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 240) = 0;
  result = (*(*(*(a1 + 80) + 48) + 16))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xAuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[32] + 1;
  v5[31] -= v5[30];
  v5[32] = v6;
  return result;
}

uint64_t perf_rma_readmsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xBuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 264) = 0;
  result = (*(*(*(a1 + 80) + 48) + 24))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xBuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[35] + 1;
  v5[34] -= v5[33];
  v5[35] = v6;
  return result;
}

uint64_t perf_rma_write(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xCuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 288) = 0;
  result = (*(*(*(a1 + 80) + 48) + 32))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xCuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[38] + 1;
  v5[37] -= v5[36];
  v5[38] = v6;
  return result;
}

uint64_t perf_rma_writev(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xDuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 312) = 0;
  result = (*(*(*(a1 + 80) + 48) + 40))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xDuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[41] + 1;
  v5[40] -= v5[39];
  v5[41] = v6;
  return result;
}

uint64_t perf_rma_writemsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xEuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 336) = 0;
  result = (*(*(*(a1 + 80) + 48) + 48))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xEuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[44] + 1;
  v5[43] -= v5[42];
  v5[44] = v6;
  return result;
}

uint64_t perf_rma_inject(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0xFuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 360) = 0;
  result = (*(*(*(a1 + 80) + 48) + 56))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0xFuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[47] + 1;
  v5[46] -= v5[45];
  v5[47] = v6;
  return result;
}

uint64_t perf_rma_writedata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x10uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 384) = 0;
  result = (*(*(*(a1 + 80) + 48) + 64))(*(a1 + 80));
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x10uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[50] + 1;
  v5[49] -= v5[48];
  v5[50] = v6;
  return result;
}

uint64_t perf_rma_injectdata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x11uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 408) = 0;
  result = (*(*(*(a1 + 80) + 48) + 72))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x11uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[53] + 1;
  v5[52] -= v5[51];
  v5[53] = v6;
  return result;
}

uint64_t perf_tagged_recv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x12uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 432) = 0;
  result = (*(*(*(a1 + 80) + 56) + 8))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x12uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[56] + 1;
  v5[55] -= v5[54];
  v5[56] = v6;
  return result;
}

uint64_t perf_tagged_recvv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x13uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 456) = 0;
  result = (*(*(*(a1 + 80) + 56) + 16))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x13uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[59] + 1;
  v5[58] -= v5[57];
  v5[59] = v6;
  return result;
}

uint64_t perf_tagged_recvmsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x14uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 480) = 0;
  result = (*(*(*(a1 + 80) + 56) + 24))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x14uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v6 = v5[62] + 1;
  v5[61] -= v5[60];
  v5[62] = v6;
  return result;
}

uint64_t perf_tagged_send(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x15uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 504) = 0;
  result = (*(*(*(a1 + 80) + 56) + 32))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x15uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[64] -= v5[63];
  ++v5[65];
  return result;
}

uint64_t perf_tagged_sendv(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x16uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 528) = 0;
  result = (*(*(*(a1 + 80) + 56) + 40))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x16uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[67] -= v5[66];
  ++v5[68];
  return result;
}

uint64_t perf_tagged_sendmsg(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x17uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 552) = 0;
  result = (*(*(*(a1 + 80) + 56) + 48))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x17uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[70] -= v5[69];
  ++v5[71];
  return result;
}

uint64_t perf_tagged_inject(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x18uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 576) = 0;
  result = (*(*(*(a1 + 80) + 56) + 56))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x18uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[73] -= v5[72];
  ++v5[74];
  return result;
}

uint64_t perf_tagged_senddata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x19uLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 600) = 0;
  result = (*(*(*(a1 + 80) + 56) + 64))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x19uLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[76] -= v5[75];
  ++v5[77];
  return result;
}

uint64_t perf_tagged_injectdata(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 48);
  if (*(v1 + 80) <= 0x1AuLL)
  {
    perf_cq_read_op_cold_1();
  }

  *(*(v1 + 96) + 624) = 0;
  result = (*(*(*(a1 + 80) + 56) + 72))();
  v4 = *(*(a1 + 88) + 48);
  if (*(v4 + 80) <= 0x1AuLL)
  {
    perf_cq_read_op_cold_2();
  }

  v5 = *(v4 + 96);
  v5[79] -= v5[78];
  ++v5[80];
  return result;
}

uint64_t ofi_ns_add_local_name(uint64_t a1, const void *a2, const void *a3)
{
  if (*(a1 + 60))
  {
    v6 = malloc_type_calloc(*(a1 + 48) + *(a1 + 40) + 8, 1uLL, 0xC9385213uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      memcpy(v6 + 8, a2, *(a1 + 48));
      v8 = *(a1 + 48) + 8;
      memcpy(&v7[v8], a3, *(a1 + 40));
      v9 = *(a1 + 40);
      v10 = util_ns_connect_server(a1, *(a1 + 24));
      if (v10 == -1)
      {
        v17 = 4294967200;
      }

      else
      {
        v11 = v10;
        v12 = v9 + v8;
        if (v12)
        {
          v13 = 0;
          do
          {
            if (v12 - v13 >= 0x7FFFFFFF)
            {
              v14 = 0x7FFFFFFFLL;
            }

            else
            {
              v14 = v12 - v13;
            }

            v15 = send(v11, &v7[v13], v14, 0);
            v13 += v15 & ~(v15 >> 63);
          }

          while ((v15 & 0x8000000000000000) == 0 && v13 < v12);
        }

        else
        {
          v13 = 0;
        }

        if (v13 == v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = 4294967200;
        }

        close(v11);
      }

      free(v7);
    }

    else
    {
      return 4294967284;
    }
  }

  else
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v16 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_ns_add_local_name", 372, "Cannot add local name - name server uninitialized\n");
      *__error() = v16;
    }

    return 4294967274;
  }

  return v17;
}

uint64_t util_ns_connect_server(uint64_t a1, const char *a2)
{
  memset(&v10, 0, sizeof(v10));
  v10.ai_socktype = 1;
  v8 = 0;
  v9 = 0;
  if (asprintf(&v8, "%d", *(a1 + 32)) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (getaddrinfo(a2, v8, &v10, &v9) < 0)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = v9;
    if (v9)
    {
      do
      {
        v4 = socket(v3->ai_family, v3->ai_socktype, v3->ai_protocol);
        if (v4 != -1)
        {
          v5 = v4;
          if (!connect(v4, v3->ai_addr, v3->ai_addrlen))
          {
            goto LABEL_9;
          }

          close(v5);
        }

        v3 = v3->ai_next;
      }

      while (v3);
      v5 = 0xFFFFFFFFLL;
LABEL_9:
      v6 = v9;
    }

    else
    {
      v6 = 0;
      v5 = 0xFFFFFFFFLL;
    }

    freeaddrinfo(v6);
  }

  free(v8);
  return v5;
}

uint64_t ofi_ns_del_local_name(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 60))
  {
    return 4294967274;
  }

  v6 = malloc_type_calloc(*(a1 + 48) + *(a1 + 40) + 8, 1uLL, 0x774F5E1BuLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  *v6 = 256;
  memcpy(v6 + 8, a2, *(a1 + 48));
  v8 = *(a1 + 48) + 8;
  memcpy(&v7[v8], a3, *(a1 + 40));
  v9 = *(a1 + 40);
  v10 = util_ns_connect_server(a1, *(a1 + 24));
  if (v10 == -1)
  {
    v16 = 4294967200;
  }

  else
  {
    v11 = v10;
    v12 = v9 + v8;
    if (v12)
    {
      v13 = 0;
      do
      {
        if (v12 - v13 >= 0x7FFFFFFF)
        {
          v14 = 0x7FFFFFFFLL;
        }

        else
        {
          v14 = v12 - v13;
        }

        v15 = send(v11, &v7[v13], v14, 0);
        v13 += v15 & ~(v15 >> 63);
      }

      while ((v15 & 0x8000000000000000) == 0 && v13 < v12);
    }

    else
    {
      v13 = 0;
    }

    if (v13 == v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294967200;
    }

    close(v11);
  }

  free(v7);
  return v16;
}

void *ofi_ns_resolve_name(uint64_t a1, const char *a2, void *a3)
{
  v19 = 512;
  if (*(a1 + 60))
  {
    v5 = util_ns_connect_server(a1, a2);
    if (v5 != -1)
    {
      v6 = v5;
      v7 = malloc_type_calloc(*(a1 + 48) + 8, 1uLL, 0xE944B914uLL);
      if (v7)
      {
        v8 = v7;
        *v7 = v19;
        memcpy(v7 + 8, a3, *(a1 + 48));
        v9 = *(a1 + 48);
        v10 = 0;
        v11 = v9 + 8;
        if (v9 != -8)
        {
          do
          {
            if (v11 - v10 >= 0x7FFFFFFF)
            {
              v12 = 0x7FFFFFFFLL;
            }

            else
            {
              v12 = v11 - v10;
            }

            v13 = send(v6, &v8[v10], v12, 0);
            v10 += v13 & ~(v13 >> 63);
          }

          while ((v13 & 0x8000000000000000) == 0 && v10 < v11);
        }

        if (v10 != v11)
        {
          goto LABEL_22;
        }

        free(v8);
        v14 = *(a1 + 40) + *(a1 + 48);
        v15 = malloc_type_calloc(v14, 1uLL, 0x383DEE80uLL);
        if (v15)
        {
          v8 = v15;
          v16 = 0;
          if (recv(v6, &v19, 8uLL, 64) != 8 || HIDWORD(v19))
          {
            goto LABEL_23;
          }

          if (v14 >= 0x7FFFFFFF)
          {
            v17 = 0x7FFFFFFFLL;
          }

          else
          {
            v17 = v14;
          }

          if (recv(v6, v8, v17, 64) == v14)
          {
            v16 = malloc_type_calloc(*(a1 + 40), 1uLL, 0x8B809606uLL);
            if (v16)
            {
              memcpy(a3, v8, *(a1 + 48));
              memcpy(v16, &v8[*(a1 + 48)], *(a1 + 40));
            }

            goto LABEL_23;
          }

LABEL_22:
          v16 = 0;
LABEL_23:
          free(v8);
          goto LABEL_24;
        }
      }

      v16 = 0;
LABEL_24:
      close(v6);
      return v16;
    }
  }

  return 0;
}

uint64_t ofi_ns_start_server(uint64_t a1)
{
  if (!*(a1 + 60))
  {
    ofi_ns_start_server_cold_1();
  }

  if (atomic_fetch_add((a1 + 64), 1u) > 0)
  {
    return 0;
  }

  v3 = rbtNew(*(a1 + 72));
  *(a1 + 16) = v3;
  if (v3)
  {
    v4 = util_ns_listen(a1, 2);
    if (v4)
    {
      if (v4 == -48 || (v2 = util_ns_listen(a1, 30), v2 == -48))
      {
        rbtDelete(*(a1 + 16));
        return 0;
      }
    }

    else
    {
      *(a1 + 56) = 1;
      v5 = pthread_create((a1 + 8), 0, util_ns_accept_handler, a1);
      if (!v5)
      {
        return 0;
      }

      v2 = -v5;
      *(a1 + 56) = 0;
      close(*a1);
      *a1 = -1;
    }

    rbtDelete(*(a1 + 16));
  }

  else
  {
    v2 = 4294967284;
  }

  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v6 = *__error();
    fi_log(&core_prov, 0, 0, "ofi_ns_start_server", 564, "Error starting name server\n");
    *__error() = v6;
  }

  atomic_fetch_add((a1 + 64), 0xFFFFFFFF);
  return v2;
}

uint64_t util_ns_listen(int *a1, int a2)
{
  memset(&v12.ai_socktype, 0, 40);
  v12.ai_flags = 1;
  v12.ai_family = a2;
  v12.ai_socktype = 1;
  v10 = 0;
  v11 = 0;
  v9 = 1;
  if (asprintf(&v10, "%d", a1[8]) < 0)
  {
    return 4294967284;
  }

  v3 = getaddrinfo(0, v10, &v12, &v11);
  free(v10);
  if (v3)
  {
    return 4294967247;
  }

  v5 = v11;
  if (v11)
  {
    while (1)
    {
      v6 = socket(v5->ai_family, v5->ai_socktype, v5->ai_protocol);
      *a1 = v6;
      if (v6 != -1)
      {
        setsockopt(v6, 0xFFFF, 4, &v9, 4u);
        if (!bind(*a1, v5->ai_addr, v5->ai_addrlen))
        {
          goto LABEL_11;
        }

        v7 = *__error();
        close(*a1);
        *a1 = -1;
        if (v7 == 48)
        {
          break;
        }
      }

      v5 = v5->ai_next;
      if (!v5)
      {
LABEL_11:
        v8 = v11;
        goto LABEL_13;
      }
    }

    freeaddrinfo(v11);
    return 4294967248;
  }

  else
  {
    v8 = 0;
LABEL_13:
    freeaddrinfo(v8);
    if (*a1 == -1)
    {
      return 4294967247;
    }

    result = listen(*a1, 256);
    if (result)
    {
      close(*a1);
      *a1 = -1;
      return -*__error();
    }
  }

  return result;
}

uint64_t util_ns_accept_handler(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v32 = 0;
    while (1)
    {
      v2 = accept(*a1, 0, 0);
      if (v2 == -1)
      {
        return 0;
      }

      v3 = v2;
      if (recv(v2, &v32, 8uLL, 64) == 8 && v32 == 0)
      {
        break;
      }

LABEL_59:
      close(v3);
      if (!*(a1 + 56))
      {
        return 0;
      }
    }

    if (BYTE1(v32) < 2u)
    {
      v5 = *(a1 + 48) + *(a1 + 40);
      v6 = malloc_type_calloc(v5, 1uLL, 0xE2ECD6BAuLL);
      if (v6)
      {
        v7 = v6;
        if (v5 >= 0x7FFFFFFF)
        {
          v8 = 0x7FFFFFFFLL;
        }

        else
        {
          v8 = v5;
        }

        if (recv(v3, v6, v8, 64) == v5)
        {
          v9 = *(a1 + 48);
          if (BYTE1(v32))
          {
            v10 = rbtFind(*(a1 + 16), v7);
            if (!v10 || (v11 = v10, __s1 = 0, __src = 0, rbtKeyValue(*(a1 + 16), v10, &__src, &__s1), memcmp(__s1, (v7 + v9), *(a1 + 40))))
            {
              v12 = -2;
LABEL_56:
              free(v7);
LABEL_57:
              if (fi_log_enabled(&core_prov, 2, 0))
              {
                v29 = *__error();
                v30 = fi_strerror(-v12);
                fi_log(&core_prov, 2, 0, "util_ns_process_cmd", 229, "Name server processed command - returned %d (%s)\n", v12, v30);
                *__error() = v29;
              }

              goto LABEL_59;
            }

            free(__src);
            free(__s1);
            rbtErase(*(a1 + 16), v11);
LABEL_49:
            v12 = 0;
            goto LABEL_56;
          }

          v23 = malloc_type_calloc(v9, 1uLL, 0xEAA0F2F3uLL);
          if (!v23)
          {
            v12 = -12;
            goto LABEL_56;
          }

          v24 = v23;
          memcpy(v23, v7, *(a1 + 48));
          v25 = malloc_type_calloc(*(a1 + 40), 1uLL, 0xCDAB6290uLL);
          if (v25)
          {
            v26 = v25;
            memcpy(v25, (v7 + v9), *(a1 + 40));
            if (rbtFind(*(a1 + 16), v24))
            {
              v12 = -48;
            }

            else
            {
              if (!rbtInsert(*(a1 + 16), v24, v26))
              {
                goto LABEL_49;
              }

              v12 = -12;
            }

            free(v26);
          }

          else
          {
            v12 = -12;
          }

          free(v24);
          goto LABEL_56;
        }

LABEL_33:
        v12 = -96;
        goto LABEL_56;
      }

LABEL_32:
      v12 = -12;
      goto LABEL_57;
    }

    if (BYTE1(v32) != 2)
    {
      util_ns_accept_handler_cold_1();
    }

    v13 = *(a1 + 48);
    v14 = malloc_type_calloc(v13 + *(a1 + 40) + 8, 1uLL, 0x15D049EBuLL);
    if (!v14)
    {
      goto LABEL_32;
    }

    v7 = v14;
    *v14 = v32;
    v15 = (v14 + 1);
    v16 = *(a1 + 48);
    if (v13 >= 0x7FFFFFFF)
    {
      v17 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = v13;
    }

    if (recv(v3, v15, v17, 64) != v13)
    {
      goto LABEL_33;
    }

    *(v7 + 1) = 3;
    v18 = rbtFind(*(a1 + 16), v15);
    if (v18)
    {
      __s1 = 0;
      __src = 0;
      rbtKeyValue(*(a1 + 16), v18, &__src, &__s1);
      memcpy(&v15[v16], __s1, *(a1 + 40));
      v19 = *(a1 + 80);
      if (v19 && v19(v15))
      {
        memcpy(v15, __src, *(a1 + 48));
      }

      *(v7 + 4) = 0;
      v20 = *(a1 + 48) + *(a1 + 40);
      v21 = v20 + 8;
      if (v20 == -8)
      {
        v22 = 0;
LABEL_45:
        if (v22 == v21)
        {
          v12 = 0;
        }

        else
        {
          v12 = -96;
        }

        goto LABEL_56;
      }
    }

    else
    {
      *(v7 + 4) = -16777217;
      v21 = 8;
    }

    v22 = 0;
    do
    {
      if (v21 - v22 >= 0x7FFFFFFF)
      {
        v27 = 0x7FFFFFFFLL;
      }

      else
      {
        v27 = v21 - v22;
      }

      v28 = send(v3, (v7 + v22), v27, 0);
      v22 += v28 & ~(v28 >> 63);
    }

    while ((v28 & 0x8000000000000000) == 0 && v22 < v21);
    goto LABEL_45;
  }

  return 0;
}

void ofi_ns_stop_server(uint64_t a1)
{
  if (!*(a1 + 60))
  {
    ofi_ns_stop_server_cold_1();
  }

  if (atomic_fetch_add((a1 + 64), 0xFFFFFFFF) == 1 && *a1 != -1)
  {
    *(a1 + 56) = 0;
    v2 = util_ns_connect_server(a1, *(a1 + 24));
    if (v2 != -1)
    {
      close(v2);
    }

    close(*a1);
    *a1 = -1;
    pthread_join(*(a1 + 8), 0);
    v3 = *(a1 + 16);

    rbtDelete(v3);
  }
}

uint64_t ofi_ns_init(uint64_t result)
{
  if (!result || !*(result + 40) || !*(result + 48) || !*(result + 72))
  {
    ofi_ns_init_cold_1();
  }

  if (!*(result + 60))
  {
    *(result + 64) = 0;
    *result = -1;
    if (!*(result + 24))
    {
      *(result + 24) = "localhost";
    }

    *(result + 60) = 1;
  }

  return result;
}

uint64_t rxm_av_max_peers(uint64_t a1)
{
  (*(a1 + 128))(a1 + 56);
  v2 = *(*(a1 + 392) + 24);
  (*(a1 + 136))(a1 + 56);
  return v2;
}

void *rxm_av_alloc_conn(uint64_t a1)
{
  (*(a1 + 128))(a1 + 56);
  v2 = *(a1 + 400);
  if ((*(v2 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(*(a1 + 400)))
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = *v2;
  }

  if (v3 == *(v2 + 8))
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  v4 = v3 + 6;
LABEL_11:
  (*(a1 + 136))(a1 + 56);
  return v4;
}

uint64_t rxm_av_free_conn(uint64_t a1, uint64_t a2)
{
  (*(a1 + 128))(a1 + 56);
  v4 = *(a2 - 32);
  if (!v4)
  {
    ofi_buf_free_cold_6();
  }

  if (atomic_fetch_add((v4 + 76), 0xFFFFFFFF) <= 0)
  {
    ofi_buf_free_cold_7();
  }

  v5 = *(a2 - 32);
  if (!v5)
  {
    ofi_buf_free_cold_6();
  }

  v6 = *(v5 + 64);
  if (!v6)
  {
    ofi_buf_free_cold_5();
  }

  if ((v6[16] & 2) != 0)
  {
    ofi_buf_free_cold_1();
  }

  if (*(a2 - 8) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_2();
  }

  if (**(a2 - 16) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_3();
  }

  v7 = (a2 - 48);
  if (*(a2 - 48) != a2 - 48)
  {
    ofi_buf_free_cold_4();
  }

  v8 = *v6;
  if (!*v6)
  {
    v6[1] = v7;
  }

  *v7 = v8;
  *v6 = v7;
  v9 = *(a1 + 136);

  return v9(a1 + 56);
}

uint64_t util_get_peer(uint64_t a1, const void *a2, uint64_t a3)
{
  (*(a1 + 128))(a1 + 56);
  v6 = ofi_rbmap_find((a1 + 328), a2);
  if (!v6)
  {
    if (!(*(a1 + 120))(a1 + 56))
    {
      util_get_peer_cold_4();
    }

    v8 = *(a1 + 392);
    if ((*(v8 + 128) & 2) == 0)
    {
      util_get_peer_cold_3();
    }

    v9 = *v8;
    if (*v8 == v8)
    {
      if (ofi_bufpool_grow(*(a1 + 392)))
      {
        goto LABEL_14;
      }

      v9 = *v8;
    }

    v10 = v9[2];
    v11 = *v10;
    v12 = v10[1];
    *v12 = *v10;
    v11[1] = v12;
    if (atomic_fetch_add((v10[2] + 76), 1u) == -1)
    {
      util_get_peer_cold_2();
    }

    v7 = (v10 + 6);
    if (*v10 == v10)
    {
      util_get_peer_cold_1();
    }

    *v10 = v10;
    if (v9[2] == v9 + 2)
    {
      v13 = *v9;
      v14 = v9[1];
      *v14 = *v9;
      *(v13 + 8) = v14;
      *v9 = v9;
      v9[1] = v9;
    }

    v15 = v10[3];
    v10[6] = a1;
    v10[7] = -1;
    *(v10 + 18) = v15;
    *(v10 + 19) = 1;
    memcpy(v10 + 10, a2, *(a1 + 192));
    *(v10 + 224) = 0;
    v17 = 96;
    (*(*(a1 + 24) + 48))(a1, a2, v10 + 16, &v17);
    if (!ofi_rbmap_insert((a1 + 328), (v10 + 10), (v10 + 6), v10 + 8))
    {
      goto LABEL_3;
    }

    ofi_ibuf_free((v10 + 6));
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = v6[4];
  ++*(v7 + 28);
LABEL_3:
  *(v7 + 176) |= (a3 & 0x40000000000) != 0;
LABEL_15:
  (*(a1 + 136))(a1 + 56);
  return v7;
}

uint64_t util_put_peer(_DWORD *a1)
{
  v2 = *a1;
  (*(*a1 + 128))(*a1 + 56);
  util_deref_peer(a1);
  v3 = *(v2 + 136);

  return v3(v2 + 56);
}

uint64_t util_deref_peer(_DWORD *a1)
{
  result = (*(*a1 + 120))(*a1 + 56);
  if (!result)
  {
    util_deref_peer_cold_1();
  }

  v3 = a1[7] - 1;
  a1[7] = v3;
  if (!v3)
  {

    return rxm_free_peer(a1);
  }

  return result;
}

uint64_t rxm_ref_peer(_DWORD *a1)
{
  (*(*a1 + 128))(*a1 + 56);
  ++a1[7];
  v2 = *(*a1 + 136);
  v3 = *a1 + 56;

  return v2(v3);
}

uint64_t rxm_av_insertsym(uint64_t a1, char *a2, uint64_t a3, const char *a4, uint64_t a5, void *a6, unint64_t a7, _DWORD *a8)
{
  v16 = ofi_verify_av_insert(a1, a7, a8);
  if (v16)
  {
    return v16;
  }

  v23 = 0;
  v24 = 0;
  v17 = ofi_ip_av_sym_getaddr(a1, a2, a3, a4, a5, &v24, &v23);
  if (v17 >= 1)
  {
    v19 = ofi_ip_av_insertv(a1, v24, v23, v17, a6, a7, a8);
    if (v19 >= v17 || v19 <= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = v19;
    }

    v22 = rxm_av_add_peers(a1, v24, v21, a6, 0, a7);
    if (v22)
    {
      v17 = v22;
      rxm_av_remove(a1, a6, v21, a7);
    }

    else
    {
      free(v24);
      return v21;
    }
  }

  return v17;
}

uint64_t rxm_av_set(uint64_t a1)
{
  v1 = *(a1 + 440);
  if (v1 && (v2 = *(v1 + 24)) != 0 && *v2 >= 0x39uLL && (v3 = v2[7]) != 0)
  {
    return v3();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t rxm_util_av_open(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = malloc_type_calloc(1uLL, 0x1D0uLL, 0x10E2040797805E1uLL);
  if (!v14)
  {
    return 4294967284;
  }

  v15 = v14;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 184;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, 24);
  *(&v31[1] + 1) = 6;
  attr = ofi_bufpool_create_attr(&v28, v14 + 49);
  if (!attr)
  {
    v28 = a5;
    v29 = 0u;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    attr = ofi_bufpool_create_attr(&v28, v15 + 50);
    if (!attr)
    {
      ofi_rbmap_init((v15 + 41), rxm_addr_compare);
      v26 = 8;
      LODWORD(v27) = 0;
      v20 = *(a1 + 220) - 1;
      if (v20 >= 4)
      {
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v22 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeof_addr_format", 738, "Unsupported address format\n", v25, v26, v27);
          v23 = __error();
          v21 = 0;
          *v23 = v22;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = qword_29ED12CA0[v20];
      }

      v25 = v21;
      if (!*a2)
      {
        *a2 = 2;
      }

      attr = ofi_av_init(a1, a2, &v25, v15, a4, v17, v18, v19);
      if (!attr)
      {
        v15[2] = &rxm_av_fi_ops;
        v15[3] = &rxm_av_ops;
        v15[40] = a6;
        v15[57] = a7;
        *a3 = v15;
        return attr;
      }

      ofi_bufpool_destroy(v15[50]);
    }

    ofi_bufpool_destroy(v15[49]);
  }

  free(v15);
  return attr;
}

uint64_t ofi_ibuf_free(uint64_t result)
{
  v1 = *(result - 32);
  if (!v1)
  {
    ofi_buf_free_cold_6();
  }

  if (atomic_fetch_add((v1 + 76), 0xFFFFFFFF) <= 0)
  {
    ofi_ibuf_free_cold_7();
  }

  v2 = result;
  v3 = *(result - 32);
  if (!v3)
  {
    ofi_buf_free_cold_6();
  }

  v4 = *(v3 + 64);
  if (!v4)
  {
    ofi_buf_free_cold_5();
  }

  if ((*(v4 + 128) & 2) == 0)
  {
    ofi_ibuf_free_cold_4();
  }

  if (*(result - 8) != 0xF1C0DE0F1C0DE64)
  {
    ofi_ibuf_free_cold_1();
  }

  if (**(result - 16) != 0xF1C0DE0F1C0DE64)
  {
    ofi_ibuf_free_cold_2();
  }

  v5 = result - 48;
  if (*(result - 48) != result - 48)
  {
    ofi_ibuf_free_cold_3();
  }

  v6 = (v3 + 16);
  v7 = (v3 + 16);
  while (1)
  {
    v7 = *v7;
    if (v7 == v6)
    {
      break;
    }

    result = ofi_ibuf_is_lower(v7, v2 - 48);
    if (result)
    {
      if (v7)
      {
        goto LABEL_14;
      }

      break;
    }
  }

  v7 = v6;
LABEL_14:
  v8 = v7[1];
  v9 = *v8;
  *(v2 - 48) = *v8;
  *(v2 - 40) = v8;
  *(v9 + 8) = v5;
  *v8 = v5;
  v10 = *(v2 - 32);
  if (*v10 == v10)
  {
    v11 = v10[8];
    v12 = v11;
    while (1)
    {
      v12 = *v12;
      if (v12 == v11)
      {
        break;
      }

      result = ofi_ibufpool_region_is_lower(v12, v10);
      if (result)
      {
        if (v12)
        {
          goto LABEL_20;
        }

        break;
      }
    }

    v12 = v11;
LABEL_20:
    v13 = v12[1];
    v14 = *v13;
    *v10 = *v13;
    v10[1] = v13;
    *(v14 + 8) = v10;
    *v13 = v10;
  }

  return result;
}

uint64_t rxm_free_peer(uint64_t a1)
{
  if (!(*(*a1 + 120))(*a1 + 56))
  {
    rxm_free_peer_cold_2();
  }

  if (*(a1 + 28))
  {
    rxm_free_peer_cold_1();
  }

  ofi_rbmap_delete((*a1 + 328), *(a1 + 16));

  return ofi_ibuf_free(a1);
}

uint64_t rxm_av_add_peers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v12 = 0;
  while (1)
  {
    v13 = (a2 + *(a1 + 192) * v12);
    peer = util_get_peer(a1, v13, a6);
    if (!peer)
    {
      break;
    }

    v15 = peer;
    if (a4)
    {
      v16 = *(a4 + 8 * v12);
    }

    else
    {
      v16 = ofi_av_lookup_fi_addr(a1, v13);
    }

    v17 = v16;
    if (a5)
    {
      v17 = *(a5 + 8 * v12);
    }

    *(v15 + 8) = v17;
    if (v17 != -1)
    {
      *ofi_av_addr_context(a1, v16) = v15;
    }

    if (a3 == ++v12)
    {
      return 0;
    }
  }

  if (v12)
  {
    v19 = v12 - 1;
    do
    {
      if (a4)
      {
        v20 = *(a4 + 8 * v19);
      }

      else
      {
        v20 = ofi_av_lookup_fi_addr(a1, (a2 + *(a1 + 192) * v19));
      }

      if (v20 != -1)
      {
        (*(a1 + 128))(a1 + 56);
        rxm_put_peer_addr(a1, v20);
        (*(a1 + 136))(a1 + 56);
      }

      --v19;
    }

    while (v19 != -1);
  }

  return 4294967284;
}

uint64_t rxm_av_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 4294967274;
  }

  (*(a1 + 128))(a1 + 56);
  v8 = a3 - 1;
  if (a3 - 1 >= 0)
  {
    v9 = a1 + 152;
    do
    {
      if (fi_log_enabled(*(a1 + 144), 2, 5))
      {
        v10 = *__error();
        fi_log(*(a1 + 144), 2, 5, "rxm_av_remove", 243, "fi_addr %llu\n", *(a2 + 8 * v8));
        *__error() = v10;
      }

      v11 = *(a1 + 160);
      v12 = *(a2 + 8 * v8);
      v13 = v11[11];
      if (v12 / v13 >= v11[5])
      {
        rxm_rndv_handle_rd_done_cold_1();
      }

      v14 = *(*(v11[4] + 8 * (v12 / v13)) + 40) + v11[2] * (v12 % v13);
      if (*(v14 - 48) != v14 - 48)
      {
        rxm_rndv_handle_rd_done_cold_2();
      }

      if (*(a1 + 320))
      {
        v15 = ofi_av_addr_context(a1, v12);
        ++*(*v15 + 28);
        (*(a1 + 136))(a1 + 56);
        (*(a1 + 304))(a1 + 232);
        for (i = *(a1 + 208); i != (a1 + 208); i = *i)
        {
          (*(a1 + 320))(i - 12, *v15);
        }

        (*(a1 + 312))(a1 + 232);
        (*(a1 + 128))(a1 + 56);
        util_deref_peer(*v15);
      }

      if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
      {
        rxm_put_peer_addr(a1, *(a2 + 8 * v8));
        v17 = *(v14 + 16);
        if (v17 || *(v14 + 24))
        {
          v18 = *v9;
          v19 = *(*v9 + 8);
          if (v14 + 8 == *(v19 + 24))
          {
            *(v19 + 24) = v17 + *(v19 + 32);
          }

          v20 = *(v14 + 24);
          v21 = (a1 + 152);
          v22 = v20;
          if (v17)
          {
            v21 = (v17 + *(v19 + 32) + 16);
            v22 = v18;
          }

          *v21 = v20;
          v23 = *(v22 + 8);
          if (v20)
          {
            *(v20 + *(v23 + 32) + 8) = v17;
          }

          v24 = *v23 + 16 * ((*(v23 + 8) - 1) & *(v14 + 60));
          --*(v24 + 8);
          if (*v24 == v14 + 8)
          {
            *v24 = *(v14 + 40);
          }

          v25 = *(v14 + 32);
          v26 = *(v14 + 40);
          if (v25)
          {
            *(v25 + 32) = v26;
          }

          if (v26)
          {
            *(v26 + 24) = v25;
          }

          --*(v23 + 16);
        }

        else
        {
          free(**(*v9 + 8));
          free(*(*v9 + 8));
          *v9 = 0;
        }

        ofi_ibuf_free(v14);
      }
    }

    while (v8-- > 0);
  }

  (*(a1 + 136))(a1 + 56);
  return 0;
}

void *rxm_put_peer_addr(uint64_t a1, unint64_t a2)
{
  v4 = *ofi_av_addr_context(a1, a2);
  v5 = *(v4 + 28) - 1;
  *(v4 + 28) = v5;
  if (!v5)
  {
    rxm_free_peer(v4);
  }

  result = ofi_av_addr_context(a1, a2);
  *result = 0;
  return result;
}

uint64_t rxm_av_close(uint64_t *a1)
{
  v2 = a1[55];
  if (v2)
  {
    (*(*(v2 + 16) + 8))();
  }

  v3 = a1[56];
  if (v3)
  {
    (*(*(v3 + 16) + 8))();
  }

  v4 = ofi_av_close(a1);
  if (!v4)
  {
    ofi_rbmap_cleanup((a1 + 41));
    ofi_bufpool_destroy(a1[50]);
    ofi_bufpool_destroy(a1[49]);
    free(a1);
  }

  return v4;
}

uint64_t rxm_av_insert(uint64_t a1, uint64_t a2, size_t count, void *a4, unint64_t a5, _DWORD *a6)
{
  if ((a5 & 0x20000000000) != 0)
  {
    if (!a4)
    {
      rxm_av_insert_cold_2();
    }

    v13 = malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
    if (!v13)
    {
      rxm_av_insert_cold_1();
    }

    v12 = v13;
    memcpy(v13, a4, 8 * count);
  }

  else
  {
    v12 = 0;
  }

  v14 = ofi_ip_av_insert(a1, a2, count, a4, a5, a6);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = rxm_av_add_peers(a1, a2, v14, a4, v12, a5);
    if (v15)
    {
      v16 = v15;
      rxm_av_remove(a1, a4, v14, a5);
      v14 = v16;
    }

    else if (*(a1 + 456))
    {
      for (i = *(a1 + 208); i != (a1 + 208); i = *i)
      {
        (*(a1 + 456))(a1, i - 12);
      }
    }
  }

  free(v12);
  return v14;
}

uint64_t ofi_pep_bind_eq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    if (fi_log_enabled(*(v4 + 136), 0, 3))
    {
      v5 = *__error();
      fi_log(*(*(a1 + 40) + 136), 0, 3, "ofi_pep_bind_eq", 42, "Invalid flags\n");
LABEL_7:
      *__error() = v5;
      return 4294967274;
    }

    return 4294967274;
  }

  if (v4 != *(a2 + 32))
  {
    if (fi_log_enabled(*(v4 + 136), 0, 3))
    {
      v5 = *__error();
      fi_log(*(*(a1 + 40) + 136), 0, 3, "ofi_pep_bind_eq", 48, "Cannot bind Passive EP and EQ on different fabrics\n");
      goto LABEL_7;
    }

    return 4294967274;
  }

  result = 0;
  *(a1 + 48) = a2;
  atomic_fetch_add((a2 + 112), 1u);
  return result;
}

uint64_t ofi_pep_init(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  a3[5] = a1;
  *a3 = 9;
  a3[1] = a4;
  return 0;
}

uint64_t ofi_pep_close(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    atomic_fetch_add((v1 + 112), 0xFFFFFFFF);
  }

  return 0;
}

uint64_t ofi_mr_map_insert(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 16 * *(a2 + 1) + 112, 0x10F004076EA3CDFuLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  v12 = a2[2];
  v13 = *a2;
  v10[1] = a2[1];
  v10[2] = v12;
  *v10 = v13;
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[6];
  v10[5] = a2[5];
  v10[6] = v16;
  v10[3] = v14;
  v10[4] = v15;
  v17 = v10 + 7;
  *v11 = v17;
  v18 = *a2;
  v19 = *(a2 + 1);
  if ((a5 & 0x10000000000) != 0)
  {
    if (v19)
    {
      v21 = v11 + 15;
      v22 = v18 + 2;
      do
      {
        v23 = *v22;
        *(v21 - 1) = *(v22 - 1) + v22[1];
        *v21 = v23;
        v21 += 2;
        v22 += 4;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    memcpy(v17, v18, 16 * v19);
  }

  v24 = *(a1 + 24);
  if ((v24 & 0x10) == 0)
  {
    v11[3] = **a2;
  }

  if ((v24 & 0x40) != 0)
  {
    v25 = *(a1 + 16);
    *(a1 + 16) = v25 + 1;
    v11[4] = v25;
  }

  v26 = ofi_rbmap_insert(*(a1 + 8), (v11 + 4), v11, 0);
  if (v26)
  {
    if (v26 == -37)
    {
      v20 = 4294967030;
    }

    else
    {
      v20 = v26;
    }

    free(v11);
  }

  else
  {
    v20 = 0;
    *a3 = v11[4];
    v11[5] = a4;
  }

  return v20;
}

uint64_t *ofi_mr_map_get(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = ofi_rbmap_find(*(a1 + 8), &v3);
  if (result)
  {
    return *(result[4] + 40);
  }

  return result;
}

uint64_t ofi_mr_map_verify(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a5;
  v37 = a4;
  v11 = ofi_rbmap_find(*(a1 + 8), &v37);
  if (v11)
  {
    v12 = v11[4];
    if (!v12)
    {
      ofi_mr_map_verify_cold_1();
    }

    if ((a5 & ~v12[2]) != 0)
    {
      if (fi_log_enabled(*a1, 0, 8))
      {
        v18 = *__error();
        v19 = *a1;
        v26 = fi_tostr(v12 + 4, 21, v20, v21, v22, v23, v24, v25);
        fi_log(v19, 0, 8, "ofi_mr_map_verify", 134, "invalid access: permitted %s\n", v26);
        *__error() = v18;
      }

      if (fi_log_enabled(*a1, 0, 8))
      {
        v27 = *__error();
        v28 = *a1;
        v35 = fi_tostr(&v36, 21, v29, v30, v31, v32, v33, v34);
        fi_log(v28, 0, 8, "ofi_mr_map_verify", 137, "invalid access: requested %s\n", v35);
        *__error() = v27;
      }

      return 4294967283;
    }

    v13 = &(*a2)[v12[3]];
    v14 = **v12;
    if (v14 > v13 || &v13[a3] > (*v12)[1] + v14)
    {
      if (fi_log_enabled(*a1, 0, 8))
      {
        v15 = *__error();
        fi_log(*a1, 0, 8, "ofi_mr_map_verify", 152, "target region (%p - %p) out of registered range (%p - %p)\n", v13, &v13[a3], **v12, (*v12)[1] + **v12);
        *__error() = v15;
      }

      return 4294967283;
    }

    if (a6)
    {
      *a6 = v12[5];
    }

    result = 0;
    *a2 = v13;
  }

  else
  {
    if (fi_log_enabled(*a1, 0, 8))
    {
      v16 = *__error();
      fi_log(*a1, 0, 8, "ofi_mr_map_verify", 124, "unknown key: %llu\n", v37);
      *__error() = v16;
    }

    return 4294967274;
  }

  return result;
}

uint64_t ofi_mr_map_remove(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = ofi_rbmap_find(*(a1 + 8), &v6);
  if (!v3)
  {
    return 4294967030;
  }

  v4 = v3[4];
  ofi_rbmap_delete(*(a1 + 8), v3);
  free(v4);
  return 0;
}

uint64_t ofi_mr_map_init(uint64_t a1, int a2, uint64_t a3)
{
  v6 = ofi_rbmap_create(compare_mr_keys);
  *(a3 + 8) = v6;
  if (!v6)
  {
    return 4294967284;
  }

  result = 0;
  if (a2 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (a2 == 1)
  {
    v9 = 112;
  }

  else
  {
    v9 = v8;
  }

  *(a3 + 24) = v9;
  *a3 = a1;
  *(a3 + 16) = 1;
  return result;
}

uint64_t compare_mr_keys(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (*a2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > v3;
  }
}

uint64_t ofi_mr_close(void *a1)
{
  if (a1[6] == -1 || ((*(a1[5] + 160))(a1[5] + 88), v2 = ofi_mr_map_remove(a1[5] + 232, a1[6]), (*(a1[5] + 168))(a1[5] + 88), !v2))
  {
    atomic_fetch_add((a1[5] + 176), 0xFFFFFFFF);
    free(a1);
    return 0;
  }

  return v2;
}

uint64_t ofi_mr_update_attr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = *a3;
  *(a4 + 8) = *(a3 + 8);
  *(a4 + 24) = *(a3 + 24);
  *(a4 + 40) = *(a3 + 40);
  if (result <= 0x10004)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(a3 + 48);
    v5 = *(a3 + 56);
  }

  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  if ((a2 & 0x800000000000) != 0)
  {
    *(a4 + 64) = *(a3 + 64);
    *(a4 + 72) = *(a3 + 72);
    if (result <= 0x10012)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a3 + 80);
    }

    *(a4 + 80) = v6;
  }

  else
  {
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
  }

  if (result <= 0x10015)
  {
    *(a4 + 88) = 0;
  }

  else
  {
    *(a4 + 88) = *(a3 + 88);
    if (result >= 0x20000)
    {
      v7 = *(a3 + 104);
      *(a4 + 96) = *(a3 + 96);
      *(a4 + 104) = v7;
      return result;
    }
  }

  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  return result;
}

uint64_t ofi_mr_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4294967274;
  if (a2 && *a1 == 2 && *(a2 + 8))
  {
    if ((ofi_hmem_is_initialized(*(a2 + 64)) & 1) == 0)
    {
      if (fi_log_enabled(*(a1 + 232), 0, 8))
      {
        v15 = *__error();
        fi_log(*(a1 + 232), 0, 8, "ofi_mr_regattr", 317, "Cannot register memory for uninitialized iface\n");
        *__error() = v15;
      }

      return 4294967218;
    }

    v9 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040A10D1A06uLL);
    if (v9)
    {
      v10 = v9;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      ofi_mr_update_attr(*(*(a1 + 56) + 32), *(a1 + 200), a2, &v20);
      if ((a3 & 0x200000000000) != 0 && *(a2 + 64) == 3)
      {
        DWORD2(v24) = -1;
      }

      v11 = v24;
      if (hmem_ops[200 * v24])
      {
        v19 = 0;
        (*(a1 + 160))(a1 + 88);
        v12 = *(a2 + 40);
        *v10 = 12;
        v10[1] = v12;
        v10[2] = &ofi_mr_fi_ops;
        v10[5] = a1;
        v10[7] = a3;
        *(v10 + 16) = v11;
        v13 = v25;
        v10[9] = *(&v24 + 1);
        v10[10] = v13;
        if ((BYTE1(v21) & 0x30) != 0)
        {
          v14 = ofi_mr_map_insert(a1 + 232, &v20, &v19, v10, a3);
          if (v14)
          {
            v4 = v14;
            free(v10);
LABEL_24:
            (*(a1 + 168))(a1 + 88);
            return v4;
          }

          v18 = v19;
        }

        else
        {
          v18 = -1;
          v19 = -1;
        }

        v4 = 0;
        v10[6] = v18;
        v10[3] = v10;
        v10[4] = v18;
        *a4 = v10;
        atomic_fetch_add((a1 + 176), 1u);
        goto LABEL_24;
      }

      if (fi_log_enabled(*(a1 + 232), 0, 8))
      {
        v16 = *__error();
        fi_log(*(a1 + 232), 0, 8, "ofi_mr_regattr", 333, "MR registration failed - hmem iface not initialized\n");
        *__error() = v16;
      }

      free(v10);
      return 4294967218;
    }

    return 4294967284;
  }

  return v4;
}

uint64_t ofi_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = 0u;
  v11 = 0u;
  v12 = 0uLL;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a9;
  v13 = 0uLL;
  return ofi_mr_regattr(a1, v10, a7, a8);
}

uint64_t ofi_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  v15 = 0u;
  v12 = 0u;
  v13 = 0uLL;
  v11[0] = v10;
  v11[1] = 1;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a9;
  v14 = 0uLL;
  return ofi_mr_regattr(a1, v11, a7, a8);
}

uint64_t ofi_mr_verify(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 - 144;
  (*(a1 - 72))(a1 - 144);
  v11 = ofi_mr_map_verify(a1, a3, a2, a4, a5, 0);
  (*(a1 - 64))(v10);
  return v11;
}

uint64_t ofi_ep_bind_cq(void *a1, uint64_t a2, uint64_t a3)
{
  result = ofi_check_bind_cq_flags(a1, a2, a3);
  if (!result)
  {
    if ((a3 & 0x800) != 0)
    {
      a1[17] = a2;
      if ((a3 & 0x800000000000000) == 0)
      {
        a1[18] |= 0x1000000uLL;
        a1[20] = 0x1000000;
      }

      atomic_fetch_add((a2 + 48), 1u);
    }

    if ((a3 & 0x400) != 0)
    {
      a1[15] = a2;
      if ((a3 & 0x800000000000000) == 0)
      {
        a1[16] |= 0x1000000uLL;
        a1[21] = 0x1000000;
      }

      atomic_fetch_add((a2 + 48), 1u);
    }

    if ((a3 & 0xC00) != 0)
    {

      return fid_list_insert2((a2 + 56), a2 + 72, a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ofi_ep_bind_eq(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    atomic_fetch_add((v2 + 112), 0xFFFFFFFF);
  }

  *(a1 + 112) = a2;
  atomic_fetch_add((a2 + 112), 1u);
  return 0;
}

uint64_t ofi_ep_bind_av(void *a1, uint64_t a2)
{
  v3 = a1[11];
  if (v3)
  {
    if (fi_log_enabled(*(v3 + 144), 0, 3))
    {
      v4 = *__error();
      fi_log(*(a1[11] + 144), 0, 3, "ofi_ep_bind_av", 89, "duplicate AV binding\n");
      *__error() = v4;
    }

    return 4294967274;
  }

  else
  {
    a1[11] = a2;
    atomic_fetch_add((a2 + 40), 1u);
    (*(a2 + 304))(a2 + 232);
    v7 = *(a2 + 216);
    v8 = *v7;
    a1[12] = *v7;
    a1[13] = v7;
    v9 = a1 + 12;
    *(v8 + 8) = v9;
    *v7 = v9;
    (*(a2 + 312))(a2 + 232);
    return 0;
  }
}

uint64_t ofi_ep_bind_cntr(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xFFFFFFFFFFFFC0FFLL) != 0)
  {
    if (fi_log_enabled(*(*(a1[10] + 56) + 136), 0, 3))
    {
      v4 = *__error();
      fi_log(*(*(a1[10] + 56) + 136), 0, 3, "ofi_ep_bind_cntr", 107, "Unsupported bind flags\n");
      *__error() = v4;
    }

    return 4294967036;
  }

  if ((a3 & 0x800) != 0 && a1[22] || (a3 & 0x400) != 0 && a1[23] || (a3 & 0x100) != 0 && a1[24] || (a3 & 0x200) != 0 && a1[25] || (a3 & 0x1000) != 0 && a1[26] || a3 >= 0x2000 && a1[27])
  {
    if (fi_log_enabled(*(*(a1[10] + 56) + 136), 0, 3))
    {
      v6 = *__error();
      fi_log(*(*(a1[10] + 56) + 136), 0, 3, "ofi_ep_bind_cntr", 118, "Duplicate counter binding\n");
      *__error() = v6;
    }

    return 4294967274;
  }

  if ((a3 & 0x800) != 0)
  {
    a1[22] = a2;
    a1[28] = ofi_cntr_inc;
    atomic_fetch_add((a2 + 48), 1u);
    if ((a3 & 0x400) == 0)
    {
LABEL_22:
      if ((a3 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  else if ((a3 & 0x400) == 0)
  {
    goto LABEL_22;
  }

  a1[23] = a2;
  a1[29] = ofi_cntr_inc;
  atomic_fetch_add((a2 + 48), 1u);
  if ((a3 & 0x100) == 0)
  {
LABEL_23:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_34:
    a1[25] = a2;
    a1[31] = ofi_cntr_inc;
    atomic_fetch_add((a2 + 48), 1u);
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_33:
  a1[24] = a2;
  a1[30] = ofi_cntr_inc;
  atomic_fetch_add((a2 + 48), 1u);
  if ((a3 & 0x200) != 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  if ((a3 & 0x1000) != 0)
  {
LABEL_25:
    a1[26] = a2;
    a1[32] = ofi_cntr_inc;
    atomic_fetch_add((a2 + 48), 1u);
  }

LABEL_26:
  if (a3 >= 0x2000)
  {
    a1[27] = a2;
    a1[33] = ofi_cntr_inc;
    atomic_fetch_add((a2 + 48), 1u);
  }

  a1[36] |= 0x2000000000000000uLL;
  v7 = (a2 + 88);
  v8 = a2 + 104;

  return fid_list_insert2(v7, v8, a1);
}

uint64_t ofi_ep_bind(void *a1, uint64_t a2, unint64_t a3)
{
  result = ofi_ep_bind_valid(*(a1[10] + 184), a2, a3);
  if (!result)
  {
    v7 = *a2;
    result = 4294967274;
    if (*a2 > 13)
    {
      if (v7 == 15)
      {

        return ofi_ep_bind_cntr(a1, a2, a3);
      }

      else if (v7 == 14)
      {

        return ofi_ep_bind_cq(a1, a2, a3);
      }
    }

    else if (v7 == 11)
    {

      return ofi_ep_bind_av(a1, a2);
    }

    else if (v7 == 13)
    {
      v8 = a1[14];
      if (v8)
      {
        atomic_fetch_add((v8 + 112), 0xFFFFFFFF);
      }

      result = 0;
      a1[14] = a2;
      atomic_fetch_add((a2 + 112), 1u);
    }
  }

  return result;
}

uint64_t ofi_endpoint_init(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (!a3[11] || !a3[10] || !a3[9])
  {
    return 4294967274;
  }

  result = ofi_prov_check_info(a2, *(*(a1 + 56) + 32), a3);
  if (!result)
  {
    *a4 = 3;
    *(a4 + 8) = a5;
    *(a4 + 80) = a1;
    *(a4 + 280) = a3[1];
    *(a4 + 288) = 0;
    *(a4 + 296) = a6;
    v12 = *(a3[9] + 16);
    *(a4 + 128) = *(a3[10] + 16);
    *(a4 + 160) = 0;
    *(a4 + 168) = 0;
    *(a4 + 144) = v12;
    *(a4 + 152) = v12 & 0xFFFFFFFFE0FFFFFFLL | 0x2000000;
    memset_pattern16((a4 + 224), &off_2A2557D50, 0x30uLL);
    *(a4 + 272) = *a3[11];
    atomic_fetch_add((a1 + 176), 1u);
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *(a4 + 112);
      if (v14)
      {
        atomic_fetch_add((v14 + 112), 0xFFFFFFFF);
      }

      *(a4 + 112) = v13;
      atomic_fetch_add((v13 + 112), 1u);
    }

    result = ofi_genlock_init(a4 + 304, 2 * (*(*(a4 + 80) + 264) != 1));
    if (!result)
    {
      if ((*(a4 + 280) & 0x40) == 0)
      {
        *(a4 + 400) = 0;
LABEL_18:
        result = 0;
        *(a4 + 408) = 0;
        *(a4 + 416) = 0;
        return result;
      }

      v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
      *(a4 + 400) = v15;
      if (v15)
      {
        util_coll_init_cid_mask(v15);
        goto LABEL_18;
      }

      ofi_genlock_destroy((a4 + 304));
      return 4294967284;
    }
  }

  return result;
}

__n128 util_coll_init_cid_mask(void *a1)
{
  v2 = malloc_type_calloc(0x20uLL, 1uLL, 0x14C108E5uLL);
  a1[1] = v2;
  if (v2)
  {
    *a1 = 256;
    result.n128_u64[0] = -1;
    result.n128_u64[1] = -1;
    *v2 = result;
    v2[1] = result;
    *a1[1] &= ~1u;
  }

  return result;
}

uint64_t ofi_endpoint_close(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    fid_list_remove2((v2 + 56), v2 + 72, a1);
    atomic_fetch_add((*(a1 + 136) + 48), 0xFFFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    fid_list_remove2((v3 + 56), v3 + 72, a1);
    atomic_fetch_add((*(a1 + 120) + 48), 0xFFFFFFFF);
  }

  for (i = 176; i != 224; i += 8)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      fid_list_remove2((v5 + 88), v5 + 104, a1);
      atomic_fetch_add((*(a1 + i) + 48), 0xFFFFFFFF);
    }
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    (*(v6 + 304))(v6 + 232);
    v8 = *(a1 + 96);
    v7 = *(a1 + 104);
    v9 = *(a1 + 88);
    *v7 = v8;
    *(v8 + 8) = v7;
    (*(v9 + 312))(v9 + 232);
    atomic_fetch_add((*(a1 + 88) + 40), 0xFFFFFFFF);
  }

  v10 = *(a1 + 400);
  if (v10)
  {
    free(*(v10 + 8));
    *(v10 + 8) = 0;
    free(*(a1 + 400));
  }

  v11 = *(a1 + 112);
  if (v11)
  {
    ofi_eq_remove_fid_events(v11, a1);
    atomic_fetch_add((*(a1 + 112) + 112), 0xFFFFFFFF);
  }

  atomic_fetch_add((*(a1 + 80) + 176), 0xFFFFFFFF);
  ofi_genlock_destroy((a1 + 304));
  return 0;
}

uint64_t ofi_match_addr_format(unsigned int a1, int a2)
{
  v2 = a1 == a2;
  if (a2 == 1)
  {
    v2 = a1 < 4;
  }

  if (!a2)
  {
    v2 = 1;
  }

  return !a1 || v2;
}

uint64_t ofi_valid_addr_format(int a1, unsigned int a2)
{
  result = 1;
  if (a1 && a2)
  {
    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (a1 != 4)
        {
          return a1 == a2;
        }

        v4 = a2 >= 5;
        return !v4;
      }
    }

    else if (a1 != 1)
    {
      if (a1 == 2)
      {
        v4 = a2 >= 3;
        return !v4;
      }

      return a1 == a2;
    }

    v4 = a2 >= 4;
    return !v4;
  }

  return result;
}

char *ofi_strdup_append_internal(const char *a1, const char *a2, int a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = malloc_type_malloc(v6 + v7 + 2, 0xBD8FC49BuLL);
  v9 = v8;
  if (v8)
  {
    sprintf(v8, "%s%c%s", a1, a3, a2);
  }

  return v9;
}

uint64_t ofi_exclude_prov_name(const char **a1, char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 2, 0x8EC81B54uLL);
  if (v5)
  {
    v6 = v5;
    snprintf(v5, v4 + 2, "^%s", __s);
    if (!*a1)
    {
LABEL_8:
      result = 0;
      *a1 = v6;
      return result;
    }

    v7 = strdup(*a1);
    if (v7)
    {
      v8 = v7;
      ofi_rm_substr_delim(v7, __s, 59);
      if (!*v8)
      {
LABEL_7:
        free(v8);
        free(*a1);
        goto LABEL_8;
      }

      appended = ofi_strdup_append_internal(v8, v6, 59);
      if (appended)
      {
        v10 = appended;
        free(v6);
        v6 = v10;
        goto LABEL_7;
      }

      free(v8);
    }

    free(v6);
  }

  return 4294967284;
}

uint64_t ofi_get_core_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *))
{
  v16 = *a5;
  v17 = fi_dupinfo(0);
  if (!v17)
  {
    return 4294967284;
  }

  v18 = v17;
  v19 = a8(a1, a6, a7, v17);
  if (v19)
  {
    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_26;
  }

  v19 = ofi_dup_addr(a6, v18);
  if (!v19)
  {
    v22 = *(a6 + 104);
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = *(v22 + 8);
    if (v23)
    {
      v24 = strdup(v23);
      v25 = v18[13];
      *(v25 + 8) = v24;
      if (!v24)
      {
        if (fi_log_enabled(v16, 0, 1))
        {
          v26 = *__error();
          fi_log(v16, 0, 1, "ofi_info_to_core", 230, "Unable to allocate fabric name\n");
LABEL_29:
          *__error() = v26;
          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v25 = v18[13];
    }

    v27 = *(v22 + 16);
    if (v27 || a7 && (v30 = *(a7 + 104)) != 0 && (v27 = *(v30 + 16)) != 0)
    {
      v28 = v25;
      v29 = strdup(v27);
      v25 = v28;
      *(v28 + 16) = v29;
      if (!v29)
      {
        goto LABEL_30;
      }
    }

    v32 = *(v25 + 16);
    v31 = (v25 + 16);
    if (!v32 || (v19 = ofi_exclude_prov_name(v31, *(v16 + 40)), !v19))
    {
LABEL_23:
      v33 = *(a6 + 96);
      if (v33)
      {
        v34 = *(v33 + 8);
        if (v34)
        {
          v35 = strdup(v34);
          *(v18[12] + 8) = v35;
          if (!v35)
          {
            if (fi_log_enabled(v16, 0, 1))
            {
              v26 = *__error();
              fi_log(v16, 0, 1, "ofi_info_to_core", 247, "Unable to allocate domain name\n");
              goto LABEL_29;
            }

LABEL_30:
            v20 = 4294967284;
            goto LABEL_4;
          }
        }
      }

LABEL_26:
      v36 = *(*a5 + 40);
      v37 = log_prefix();
      *v37 = v38;
      v20 = fi_getinfo(a1, a2, a3, a4 | 0x800000000000000, v18, v39);
      *v37 = &unk_29ED0916E;
      goto LABEL_4;
    }
  }

LABEL_3:
  v20 = v19;
LABEL_4:
  fi_freeinfo(v18);
  return v20;
}

uint64_t ofix_getinfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void *), unsigned int (*a8)(uint64_t, void *, void *, void *), void **a9)
{
  *a9 = 0;
  v9 = a5[1];
  if (!v9)
  {
    return 4294967200;
  }

  v10 = a7;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v17 = 0;
  v40 = 0;
  v18 = 4294967200;
  do
  {
    if (!ofi_check_info(a5, v9, a1, a6))
    {
      core_info = ofi_get_core_info(a1, v15, v14, v13, a5, a6, v9, v10);
      v18 = core_info;
      if (core_info != -96)
      {
        if (core_info)
        {
          return v18;
        }

        v20 = v40;
        if (v40)
        {
          while (1)
          {
            v21 = *a5;
            v22 = fi_dupinfo(0);
            if (!v22)
            {
              break;
            }

            v23 = v22;
            if (a8(a1, v20, v9, v22) || ofi_dup_addr(v20, v23))
            {
              goto LABEL_28;
            }

            v24 = *(v20[12] + 8);
            if (v24)
            {
              v25 = strdup(v24);
              *(v23[12] + 8) = v25;
              if (!v25)
              {
                if (fi_log_enabled(v21, 0, 1))
                {
                  v31 = *__error();
                  fi_log(v21, 0, 1, "ofi_info_to_util", 288, "Unable to allocate domain name\n", &v40);
LABEL_27:
                  *__error() = v31;
                }

LABEL_28:
                fi_freeinfo(v23);
                break;
              }
            }

            v26 = v20[13];
            v27 = strdup(*(v26 + 8));
            v28 = v23[13];
            *(v28 + 8) = v27;
            if (!v27)
            {
              if (!fi_log_enabled(v21, 0, 1))
              {
                goto LABEL_28;
              }

              v31 = *__error();
              v32 = v21;
              v33 = 296;
LABEL_24:
              fi_log(v32, 0, 1, "ofi_info_to_util", v33, "Unable to allocate fabric name\n", &v40);
              goto LABEL_27;
            }

            v29 = strdup(*(v26 + 16));
            *(v28 + 16) = v29;
            if (!v29)
            {
              if (!fi_log_enabled(v21, 0, 1))
              {
                goto LABEL_28;
              }

              v31 = *__error();
              v32 = v21;
              v33 = 304;
              goto LABEL_24;
            }

            ofi_alter_info(v23, a6, a1);
            if (*a9)
            {
              v30 = v17;
            }

            else
            {
              v30 = a9;
            }

            *v30 = v23;
            v20 = *v20;
            v17 = v23;
            if (!v20)
            {
              v18 = 0;
              v17 = v23;
              goto LABEL_30;
            }
          }

          fi_freeinfo(*a9);
          v18 = 4294967284;
LABEL_30:
          v13 = a4;
          v10 = a7;
          v14 = a3;
        }

        else
        {
          v18 = 0;
        }

        fi_freeinfo(v40);
        v15 = a2;
      }
    }

    v9 = *v9;
  }

  while (v9);
  return v18;
}

uint64_t ofi_check_info(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a4 + 88);
  if (!v9 || (result = ofi_check_ep_type(*a1, *(a2 + 88), v9), !result))
  {
    v11 = (a2 + 8);
    if ((*(a4 + 8) & ~*(a2 + 8)) != 0)
    {
      if (fi_log_enabled(v8, 2, 0))
      {
        v12 = *__error();
        fi_log(v8, 2, 0, "ofi_check_info", 1124, "Unsupported capabilities\n");
        *__error() = v12;
      }

      if (fi_log_enabled(v8, 2, 0))
      {
        v13 = *__error();
        v20 = fi_tostr(v11, 2, v14, v15, v16, v17, v18, v19);
        fi_log(v8, 2, 0, "ofi_check_info", 1125, "Supported: %s\n", v20);
        *__error() = v13;
      }

      if (!fi_log_enabled(v8, 2, 0))
      {
        return 4294967200;
      }

      v21 = *__error();
      fi_tostr((a4 + 8), 2, v22, v23, v24, v25, v26, v27);
      fi_log(v8, 2, 0, "ofi_check_info", 1125, "Requested: %s\n");
LABEL_36:
      *__error() = v21;
      return 4294967200;
    }

    if (a3 >= 0x10005 && ((v28 = *(a4 + 96)) == 0 || (*(v28 + 36) & 4) != 0))
    {
      v29 = *(a2 + 16);
    }

    else
    {
      v29 = *(a2 + 16) | ((*(*(a2 + 96) + 36) & 4) << 53);
    }

    v66 = v29;
    v30 = (a4 + 16);
    if ((v29 & ~*(a4 + 16)) != 0)
    {
      if (fi_log_enabled(v8, 2, 0))
      {
        v34 = *__error();
        fi_log(v8, 2, 0, "ofi_check_info", 1132, "needed mode not set\n");
        *__error() = v34;
      }

      if (fi_log_enabled(v8, 2, 0))
      {
        v35 = *__error();
        v42 = fi_tostr(&v66, 14, v36, v37, v38, v39, v40, v41);
        fi_log(v8, 2, 0, "ofi_check_info", 1133, "Expected: %s\n", v42);
        *__error() = v35;
      }

      if (!fi_log_enabled(v8, 2, 0))
      {
        return 4294967200;
      }

      v21 = *__error();
      fi_tostr((a4 + 16), 14, v43, v44, v45, v46, v47, v48);
      fi_log(v8, 2, 0, "ofi_check_info", 1133, "Given: %s\n");
      goto LABEL_36;
    }

    if (!ofi_valid_addr_format(*(a2 + 24), *(a4 + 24)))
    {
      if (fi_log_enabled(v8, 2, 0))
      {
        v49 = *__error();
        fi_log(v8, 2, 0, "ofi_check_info", 1139, "address format not supported\n");
        *__error() = v49;
      }

      if (fi_log_enabled(v8, 2, 0))
      {
        v50 = *__error();
        v57 = fi_tostr((a2 + 24), 4, v51, v52, v53, v54, v55, v56);
        fi_log(v8, 2, 0, "ofi_check_info", 1141, "Supported: %s\n", v57);
        *__error() = v50;
      }

      if (fi_log_enabled(v8, 2, 0))
      {
        v58 = *__error();
        v65 = fi_tostr((a4 + 24), 4, v59, v60, v61, v62, v63, v64);
        fi_log(v8, 2, 0, "ofi_check_info", 1141, "Requested: %s\n", v65);
        *__error() = v58;
      }

      return 4294967200;
    }

    v31 = *(a4 + 104);
    if (!v31 || (result = ofi_check_fabric_attr(v8, *(a2 + 104), v31), !result))
    {
      if (!*(a4 + 96) || (result = ofi_check_domain_attr(v8, a3, *(a2 + 96), a4), !result))
      {
        if (!*(a4 + 88) || (result = ofi_check_ep_attr(a1, a3, a2, a4), !result))
        {
          v32 = *(a4 + 80);
          if (!v32 || (result = ofi_check_rx_attr(v8, a2, v32, *v30), !result))
          {
            v33 = *(a4 + 72);
            if (!v33)
            {
              return 0;
            }

            result = ofi_check_tx_attr(v8, *(a2 + 72), v33, *v30);
            if (!result)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ofi_alter_info(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (result)
  {
    v5 = result;
    v6 = 0xC008A0000003F7ELL;
    do
    {
      caps = v5[1];
      if (a2)
      {
        caps = ofi_get_caps(v5[1], a2[1], v5[1]);
        v8 = *(v5[12] + 36);
        result = ofi_rma_target_allowed(caps);
        v9 = v8 & 0x158;
        if (result && v9 != 0)
        {
          v11 = a2[12];
          if (!v11 || ((v12 = *(v11 + 36)) == 0 ? (v13 = a3 >= 0x10005) : (v13 = 1), v13 ? (v14 = v12 == 1) : (v14 = 1), !v14 ? (v15 = (v12 & v9) == v9) : (v15 = 1), !v15))
          {
            caps &= 0xFFFFFFFFFFFCFFFuLL;
          }
        }
      }

      v5[1] = caps;
      v16 = v5[12];
      v17 = *(v16 + 36);
      if ((v17 & 4) != 0)
      {
        if (a3 >= 0x10005)
        {
          if (!a2)
          {
            goto LABEL_56;
          }

          v18 = a2[12];
          if (!v18)
          {
            v5[8] = a2[8];
            goto LABEL_56;
          }

          if ((*(v18 + 36) & 3) == 0)
          {
            v5[8] = a2[8];
            v19 = *(v18 + 36);
            if ((v19 & 3) != 0)
            {
              goto LABEL_44;
            }

            goto LABEL_34;
          }
        }

        v5[2] |= 0x80000000000000uLL;
      }

      if (a2)
      {
        v18 = a2[12];
        v5[8] = a2[8];
        if (v18)
        {
          v19 = *(v18 + 36);
          if ((v19 & 3) != 0)
          {
            goto LABEL_44;
          }

          if (a3 <= 0x10004)
          {
            if ((v17 & 0xFFFFFFFD) != 0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 2;
            }

            goto LABEL_44;
          }

LABEL_34:
          v20 = v17 & 0xFFFFFFFC;
          *(v16 + 36) = v17 & 0xFFFFFFFC;
          v21 = v19 & v17;
          if (v21 != v20)
          {
            v22 = v6;
            if ((caps & 0x800000000000) != 0)
            {
              v23 = v21;
            }

            else
            {
              v23 = v21 & 0xFFFFFBFC;
            }

            v24 = ofi_rma_target_allowed(caps);
            v25 = v23 & 0xFFFFFEA4;
            if ((v23 & 0x404) == 0)
            {
              v25 = 0;
            }

            if (v24)
            {
              v19 = v23;
            }

            else
            {
              v19 = v25;
            }

            v6 = v22;
LABEL_44:
            *(v16 + 36) = v19;
          }

          result = ofi_get_caps(caps, *(v18 + 136), *(v16 + 136));
          *(v16 + 136) = result;
          v26 = *(v18 + 16);
          if (v26)
          {
            *(v16 + 16) = v26;
          }

          v27 = *(v18 + 24);
          if (v27)
          {
            *(v16 + 24) = v27;
          }

          v28 = *(v18 + 32);
          if (v28)
          {
            *(v16 + 32) = v28;
          }

          v29 = *(v18 + 192);
          if (v29)
          {
            *(v16 + 192) = v29;
          }

          if (*(v18 + 160) == -1)
          {
            *(v16 + 160) = -1;
          }

          goto LABEL_74;
        }
      }

LABEL_56:
      if ((v17 & 0xFFFFFFFD) != 0)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      v31 = v17 & 0xFFFFFFFC;
      if (a3 < 0x10005)
      {
        v31 = v30;
      }

      *(v16 + 36) = v31;
      v32 = *(v16 + 136);
      v33 = caps & v6 | 0x33E000000310000;
      v34 = v32 & v33;
      v35 = (v32 & v33 & 0xC00) != 0 || (v32 & v33 & 0xA) == 0;
      v36 = *(v16 + 136) & 0xC00;
      if (v35)
      {
        v36 = 0;
      }

      v37 = (v34 & 0x3300) != 0 || (v34 & 0x14) == 0;
      v38 = *(v16 + 136) & 0x3300;
      if (v37)
      {
        v38 = 0;
      }

      *(v16 + 136) = v38 | v36 | v34;
      if (!a2)
      {
        v46 = v5[10];
        goto LABEL_94;
      }

LABEL_74:
      v39 = a2[11];
      caps = v5[1];
      if (v39)
      {
        v40 = v5[11];
        if ((caps & 0x14) != 0)
        {
          v41 = v39[4];
          if (v41)
          {
            v40[4] = v41;
          }

          v42 = v39[5];
          if (v42)
          {
            v40[5] = v42;
          }

          v43 = v39[6];
          if (v43)
          {
            v40[6] = v43;
          }
        }

        v44 = v39[8];
        if (v44)
        {
          v40[8] = v44;
        }

        v45 = v39[9];
        if (v45)
        {
          v40[9] = v45;
        }
      }

      v46 = v5[10];
      v47 = a2[10];
      if (v47)
      {
        result = ofi_get_caps(caps, *v47, *v46);
        *v46 = result;
        v46[2] = v47[2];
        v48 = v47[6];
        if (v48)
        {
          v46[6] = v48;
        }

        v49 = v47[7];
        if (v49)
        {
          v46[7] = v49;
        }

        v50 = v5[9];
        goto LABEL_107;
      }

      v33 = caps & v6 | 0x33E000000310000;
LABEL_94:
      v51 = *v46 & v33;
      v52 = (v51 & 0xC00) != 0 || (v51 & 0xA) == 0;
      v53 = *v46 & 0xC00;
      if (v52)
      {
        v53 = 0;
      }

      v54 = (v51 & 0x3300) != 0 || (v51 & 0x14) == 0;
      v55 = *v46 & 0x3300;
      if (v54)
      {
        v55 = 0;
      }

      *v46 = v55 | v53 | v51;
      v50 = v5[9];
      if (!a2)
      {
        goto LABEL_117;
      }

LABEL_107:
      v56 = a2[9];
      if (!v56)
      {
        v33 = caps & v6 | 0x33E000000310000;
LABEL_117:
        v61 = *v50 & v33;
        v62 = (v61 & 0xC00) != 0 || (v61 & 0xA) == 0;
        v63 = *v50 & 0xC00;
        if (v62)
        {
          v63 = 0;
        }

        v64 = (v61 & 0x3300) != 0 || (v61 & 0x14) == 0;
        v65 = *v50 & 0x3300;
        if (v64)
        {
          v65 = 0;
        }

        *v50 = v65 | v63 | v61;
        goto LABEL_130;
      }

      result = ofi_get_caps(caps, *v56, *v50);
      *v50 = result;
      v50[2] = v56[2];
      v57 = v56[5];
      if (v57)
      {
        v50[5] = v57;
      }

      v58 = v56[6];
      if (v58)
      {
        v50[6] = v58;
      }

      v59 = v56[7];
      if (v59)
      {
        v50[7] = v59;
      }

      v60 = v56[8];
      if (v60)
      {
        v50[8] = v60;
      }

LABEL_130:
      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ofi_get_core_info_fabric(uint64_t a1, uint64_t a2, void *a3)
{
  if (!strstr(*(a2 + 16), *(a1 + 40)))
  {
    return 4294967200;
  }

  v21 = 0;
  v18 = 0u;
  v19 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040A4FB0822uLL);
  v20 = v6;
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  v8 = strdup(*(a2 + 16));
  v7[2] = v8;
  if (v8)
  {
    v9 = ofi_exclude_prov_name(v7 + 2, *(a1 + 40));
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v7[1] = *(a2 + 8);
      v11 = *(a2 + 28);
      *(v7 + 7) = v11;
      *&v14 = -1;
      v10 = fi_getinfo(v11, 0, 0, 0x800000000000000, &v13, a3);
      free(v20[2]);
      v7 = v20;
    }
  }

  else
  {
    v10 = 4294967284;
  }

  free(v7);
  return v10;
}

uint64_t ofi_check_fabric_attr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 && (v7 = *(a3 + 16)) != 0 && !strcasestr(v7, v6))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v8 = *__error();
      v10 = *(a3 + 16);
      v11 = *(a2 + 16);
      fi_log(a1, 2, 0, "ofi_check_fabric_attr", 437, "Requesting provider %s, skipping %s\n");
      goto LABEL_13;
    }
  }

  else if (*(a3 + 24) <= *(a2 + 24))
  {
    if (*(a3 + 28) >= *(a2 + 28))
    {
      return 0;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v8 = *__error();
      fi_log(a1, 2, 0, "ofi_check_fabric_attr", 447, "Unsupported api version\n");
      goto LABEL_13;
    }
  }

  else if (fi_log_enabled(a1, 2, 0))
  {
    v8 = *__error();
    fi_log(a1, 2, 0, "ofi_check_fabric_attr", 442, "Unsupported provider version\n");
LABEL_13:
    *__error() = v8;
  }

  return 4294967200;
}

uint64_t ofi_thread_level(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_29ED12CC0[a1];
  }
}

uint64_t ofi_check_mr_mode(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 96) + 36);
  v28 = v5;
  v29 = a3;
  if ((a3 & 4) != 0 && (*(a4 + 22) & 0x80) == 0 && (v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (a2 > 0x10004)
  {
    if (v5)
    {
      if ((a3 & 1) != 0 && v5 <= 1)
      {
        return 0;
      }

      goto LABEL_12;
    }

    if ((v5 & 2) != 0)
    {
      if ((a3 & 2) != 0 && v5 <= 3)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v25 = *(a4 + 8);
    if ((v25 & 0x800000000000) != 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = a3 & 0xFFFFFBFF;
    }

    if (!ofi_rma_target_allowed(v25))
    {
      if ((v26 & 0x404) == 0)
      {
        v27 = 0;
        goto LABEL_28;
      }

      v26 &= 0xFFFFFEA7;
    }

    v27 = v26 & 0xFFFFFFFC;
LABEL_28:
    result = 0;
    v29 = v27;
    if (!v5 || (v5 & v27) == v27)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v5 == 2)
  {
    if ((a3 & 2) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = (a3 & 3) == 0;
      }

      if (v6)
      {
        goto LABEL_12;
      }

      return 0;
    }

    if (a3)
    {
      return 0;
    }
  }

LABEL_12:
  if (fi_log_enabled(a1, 2, 0))
  {
    v7 = *__error();
    fi_log(a1, 2, 0, "ofi_check_mr_mode", 578, "Invalid memory registration mode\n");
    *__error() = v7;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v8 = *__error();
    v15 = fi_tostr(&v29, 21, v9, v10, v11, v12, v13, v14);
    fi_log(a1, 2, 0, "ofi_check_mr_mode", 579, "Expected: %s\n", v15);
    *__error() = v8;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v16 = *__error();
    v23 = fi_tostr(&v28, 21, v17, v18, v19, v20, v21, v22);
    fi_log(a1, 2, 0, "ofi_check_mr_mode", 579, "Given: %s\n", v23);
    *__error() = v16;
  }

  return 4294967200;
}

uint64_t ofi_check_domain_attr(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 96);
  v8 = *(v7 + 16);
  if (v8 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = dword_29ED12CC0[v8];
  }

  v10 = *(a3 + 16);
  if (v10 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = dword_29ED12CC0[v10];
  }

  if (v9 < v11)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v12 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 593, "Invalid threading model\n");
LABEL_39:
      *__error() = v12;
      return 4294967200;
    }

    return 4294967200;
  }

  v13 = *(v7 + 24);
  if (v13 > 3)
  {
    v14 = -1;
  }

  else
  {
    v14 = dword_29ED12CE0[v13];
  }

  v15 = *(a3 + 24);
  if (v15 > 3)
  {
    v16 = -1;
  }

  else
  {
    v16 = dword_29ED12CE0[v15];
  }

  if (v14 < v16)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v12 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 599, "Invalid progress model\n");
      goto LABEL_39;
    }

    return 4294967200;
  }

  v17 = *(v7 + 28);
  if (v17 >= 3)
  {
    v18 = -1;
  }

  else
  {
    v18 = 3 - v17;
  }

  v19 = *(a3 + 28);
  v20 = 3 - v19;
  if (v19 >= 3)
  {
    v20 = -1;
  }

  if (v18 < v20)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v12 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 605, "Invalid resource mgmt model\n");
      goto LABEL_39;
    }

    return 4294967200;
  }

  v21 = *(a3 + 32);
  if (v21)
  {
    v22 = *(v7 + 32);
    if (v22)
    {
      if (v21 != v22)
      {
        if (fi_log_enabled(a1, 2, 0))
        {
          v12 = *__error();
          fi_log(a1, 2, 0, "ofi_check_domain_attr", 612, "Invalid AV type\n");
          goto LABEL_39;
        }

        return 4294967200;
      }
    }
  }

  if (*(v7 + 48) > *(a3 + 48))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v23 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 617, "CQ data size too large\n");
      *__error() = v23;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v24 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 618, "Supported: %zd\n", *(a3 + 48));
      *__error() = v24;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v12 = *__error();
    v25 = *(v7 + 48);
    fi_log(a1, 2, 0, "ofi_check_domain_attr", 618, "Requested: %zd\n");
    goto LABEL_39;
  }

  if (ofi_check_mr_mode(a1, a2, *(a3 + 36), a4))
  {
    return 4294967200;
  }

  if (*(v7 + 104) > *(a3 + 104))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v27 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 626, "max_ep_stx_ctx greater than supported\n");
      *__error() = v27;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v28 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 627, "Supported: %zd\n", *(a3 + 104));
      *__error() = v28;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v29 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 627, "Requested: %zd\n", *(v7 + 104));
      *__error() = v29;
    }
  }

  if (*(v7 + 112) > *(a3 + 112))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v30 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 631, "max_ep_srx_ctx greater than supported\n");
      *__error() = v30;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v31 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 632, "Supported: %zd\n", *(a3 + 112));
      *__error() = v31;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v32 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 632, "Requested: %zd\n", *(v7 + 112));
      *__error() = v32;
    }
  }

  if (a2 >= 0x10005)
  {
    if (*(v7 + 120) > *(a3 + 120))
    {
      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 640, "Cntr count too large\n", v79);
      goto LABEL_39;
    }

    if (*(v7 + 128) > *(a3 + 128))
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v33 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 645, "MR iov limit too large\n");
        *__error() = v33;
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v34 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 646, "Supported: %zd\n", *(a3 + 128));
        *__error() = v34;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      v35 = *(v7 + 128);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 646, "Requested: %zd\n");
      goto LABEL_39;
    }

    v36 = (a3 + 136);
    if ((*(v7 + 136) & ~*(a3 + 136)) != 0)
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v37 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 651, "Requested domain caps not supported\n");
        *__error() = v37;
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v38 = *__error();
        v45 = fi_tostr(v36, 2, v39, v40, v41, v42, v43, v44);
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 652, "Supported: %s\n", v45);
        *__error() = v38;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      fi_tostr((v7 + 136), 2, v46, v47, v48, v49, v50, v51);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 652, "Requested: %s\n");
      goto LABEL_39;
    }

    v52 = (a3 + 144);
    if ((*(a3 + 144) & ~*(v7 + 144)) != 0)
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v56 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 657, "Required domain mode missing\n");
        *__error() = v56;
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v57 = *__error();
        v64 = fi_tostr(v52, 14, v58, v59, v60, v61, v62, v63);
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 658, "Expected: %s\n", v64);
        *__error() = v57;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      fi_tostr((v7 + 144), 14, v65, v66, v67, v68, v69, v70);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 658, "Given: %s\n");
      goto LABEL_39;
    }

    if (*(v7 + 168) > *(a3 + 168))
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v53 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 663, "Max err data too large\n");
        *__error() = v53;
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v54 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 664, "Supported: %zd\n", *(a3 + 168));
        *__error() = v54;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      v55 = *(v7 + 168);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 664, "Requested: %zd\n");
      goto LABEL_39;
    }

    if (*(v7 + 176) > *(a3 + 176))
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v71 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 669, "MR count too large\n");
        *__error() = v71;
      }

      if (fi_log_enabled(a1, 2, 0))
      {
        v72 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 670, "Supported: %zd\n", *(a3 + 176));
        *__error() = v72;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      v73 = *(v7 + 176);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 670, "Requested: %zd\n");
      goto LABEL_39;
    }

    v74 = *(v7 + 160);
    if (a2 > 0x10013 && v74 == -1)
    {
      if (*(v7 + 152))
      {
        if (!fi_log_enabled(a1, 2, 0))
        {
          return 4294967200;
        }

        v12 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 678, "Authentication key must be NULL with FI_AV_AUTH_KEY\n", v79);
        goto LABEL_39;
      }
    }

    else
    {
      if (v74 && v74 != *(a3 + 160))
      {
        if (fi_log_enabled(a1, 2, 0))
        {
          v77 = *__error();
          fi_log(a1, 2, 0, "ofi_check_domain_attr", 685, "Supported: %zd\n", *(a3 + 160));
          *__error() = v77;
        }

        if (!fi_log_enabled(a1, 2, 0))
        {
          return 4294967200;
        }

        v12 = *__error();
        v78 = *(v7 + 160);
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 685, "Requested: %zd\n");
        goto LABEL_39;
      }

      if (a2 <= 0x10013)
      {
        return 0;
      }
    }

    if (*(v7 + 192) > *(a3 + 192))
    {
      if (fi_log_enabled(a1, 2, 0))
      {
        v75 = *__error();
        fi_log(a1, 2, 0, "ofi_check_domain_attr", 693, "Supported: %zd\n", *(a3 + 192));
        *__error() = v75;
      }

      if (!fi_log_enabled(a1, 2, 0))
      {
        return 4294967200;
      }

      v12 = *__error();
      v76 = *(v7 + 192);
      fi_log(a1, 2, 0, "ofi_check_domain_attr", 693, "Requested: %zd\n");
      goto LABEL_39;
    }
  }

  return 0;
}

uint64_t ofi_check_ep_type(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (!*a3)
  {
    return 0;
  }

  if (*a2)
  {
    v4 = *a3 == *a2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v9 = *__error();
    fi_log(a1, 2, 0, "ofi_check_ep_type", 707, "unsupported endpoint type\n");
    *__error() = v9;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v10 = *__error();
    v17 = fi_tostr(a2, 1, v11, v12, v13, v14, v15, v16);
    fi_log(a1, 2, 0, "ofi_check_ep_type", 708, "Supported: %s\n", v17);
    *__error() = v10;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v18 = *__error();
    v25 = fi_tostr(a3, 1, v19, v20, v21, v22, v23, v24);
    fi_log(a1, 2, 0, "ofi_check_ep_type", 708, "Requested: %s\n", v25);
    *__error() = v18;
  }

  return 4294967200;
}

unint64_t ofi_check_ep_attr(uint64_t *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = *(a3 + 88);
  v8 = a4[11];
  v9 = *a1;
  result = ofi_check_ep_type(*a1, v7, v8);
  if (!result)
  {
    if (a2 < 0x10014)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = a4[12];
      if (v11)
      {
        LODWORD(v11) = *(v11 + 160) == -1;
      }
    }

    v13 = (v8 + 4);
    v12 = *(v8 + 4);
    if (v12 && v12 != *(v7 + 4))
    {
      if (fi_log_enabled(v9, 2, 0))
      {
        v19 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 735, "Unsupported protocol\n");
        *__error() = v19;
      }

      if (fi_log_enabled(v9, 2, 0))
      {
        v20 = *__error();
        v27 = fi_tostr((v7 + 4), 12, v21, v22, v23, v24, v25, v26);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 736, "Supported: %s\n", v27);
        *__error() = v20;
      }

      if (!fi_log_enabled(v9, 2, 0))
      {
        return 4294967200;
      }

      v15 = *__error();
      fi_tostr(v13, 12, v28, v29, v30, v31, v32, v33);
      fi_log(v9, 2, 0, "ofi_check_ep_attr", 736, "Requested: %s\n");
      goto LABEL_25;
    }

    v14 = *(v8 + 8);
    if (v14 && v14 > *(v7 + 8))
    {
      if (!fi_log_enabled(v9, 2, 0))
      {
        return 4294967200;
      }

      v15 = *__error();
      fi_log(v9, 2, 0, "ofi_check_ep_attr", 742, "Unsupported protocol version\n");
LABEL_25:
      *__error() = v15;
      return 4294967200;
    }

    if (*(v8 + 16) > *(v7 + 16))
    {
      if (fi_log_enabled(v9, 2, 0))
      {
        v16 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 747, "Max message size too large\n");
        *__error() = v16;
      }

      if (fi_log_enabled(v9, 2, 0))
      {
        v17 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 748, "Supported: %zd\n", *(v7 + 16));
        *__error() = v17;
      }

      if (!fi_log_enabled(v9, 2, 0))
      {
        return 4294967200;
      }

      v15 = *__error();
      v18 = *(v8 + 16);
      fi_log(v9, 2, 0, "ofi_check_ep_attr", 748, "Requested: %zd\n");
      goto LABEL_25;
    }

    v34 = *(v8 + 64);
    v35 = *(a3 + 96);
    if (v34 <= v35[11])
    {
      if (!v34 && *(v7 + 64) == -1)
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 770, "Provider requires use of shared tx context\n");
        goto LABEL_25;
      }
    }

    else
    {
      if (v34 != -1)
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v36 = *(*(a3 + 96) + 88);
        v56 = *(v8 + 64);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 764, "Requested tx_ctx_cnt exceeds supported. Expected:%zd, Requested%zd\n");
        goto LABEL_25;
      }

      if (!v35[13])
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 756, "Shared tx context not supported\n");
        goto LABEL_25;
      }
    }

    v37 = *(v8 + 72);
    if (v37 <= v35[12])
    {
      if (!v37 && *(v7 + 72) == -1)
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 792, "Provider requires use of shared rx context\n");
        goto LABEL_25;
      }
    }

    else
    {
      if (v37 != -1)
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v38 = *(*(a3 + 96) + 96);
        v57 = *(v8 + 72);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 786, "Requested rx_ctx_cnt exceeds supported. Expected: %zd, Requested:%zd\n");
        goto LABEL_25;
      }

      if (!v35[14])
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 778, "Shared rx context not supported\n");
        goto LABEL_25;
      }
    }

    v39 = a4[1];
    if ((v39 & 0x14) != 0)
    {
      if (*(v8 + 32) > *(v7 + 32))
      {
        if (fi_log_enabled(v9, 2, 0))
        {
          v40 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 800, "Max order RAW size exceeds supported size\n");
          *__error() = v40;
        }

        if (fi_log_enabled(v9, 2, 0))
        {
          v41 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 802, "Supported: %zd\n", *(v7 + 32));
          *__error() = v41;
        }

        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v42 = *(v8 + 32);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 802, "Requested: %zd\n");
        goto LABEL_25;
      }

      if (*(v8 + 40) > *(v7 + 40))
      {
        if (fi_log_enabled(v9, 2, 0))
        {
          v43 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 809, "Max order WAR size exceeds supported size\n");
          *__error() = v43;
        }

        if (fi_log_enabled(v9, 2, 0))
        {
          v44 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 811, "Supported: %zd\n", *(v7 + 40));
          *__error() = v44;
        }

        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v45 = *(v8 + 40);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 811, "Requested: %zd\n");
        goto LABEL_25;
      }

      if (*(v8 + 48) > *(v7 + 48))
      {
        if (fi_log_enabled(v9, 2, 0))
        {
          v46 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 818, "Max order WAW size exceeds supported size\n");
          *__error() = v46;
        }

        if (fi_log_enabled(v9, 2, 0))
        {
          v47 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 820, "Supported: %zd\n", *(v7 + 48));
          *__error() = v47;
        }

        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v48 = *(v8 + 48);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 820, "Requested: %zd\n");
        goto LABEL_25;
      }
    }

    if (v11)
    {
      if (*(v8 + 88))
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 828, "Authentication key must be NULL with FI_AV_AUTH_KEY\n");
        goto LABEL_25;
      }

      if (*(v8 + 80))
      {
        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 834, "Authentication key must be 0 with FI_AV_AUTH_KEY\n");
        goto LABEL_25;
      }
    }

    else
    {
      v49 = *(v8 + 80);
      if (v49 && v49 != *(v7 + 80))
      {
        if (fi_log_enabled(v9, 2, 0))
        {
          v50 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 841, "Supported: %zd\n", *(v7 + 80));
          *__error() = v50;
        }

        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v51 = *(v8 + 80);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 841, "Requested: %zd\n");
        goto LABEL_25;
      }
    }

    if ((v39 & 8) == 0)
    {
      return 0;
    }

    result = *(v8 + 56);
    if (result)
    {
      v52 = ofi_max_tag(result);
      if (v52 > ofi_max_tag(*(v7 + 56)))
      {
        if (fi_log_enabled(v9, 2, 0))
        {
          v53 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 849, "Tag size exceeds supported size\n");
          *__error() = v53;
        }

        if (fi_log_enabled(v9, 2, 0))
        {
          v54 = *__error();
          fi_log(v9, 2, 0, "ofi_check_ep_attr", 850, "Supported: %llu\n", *(v7 + 56));
          *__error() = v54;
        }

        if (!fi_log_enabled(v9, 2, 0))
        {
          return 4294967200;
        }

        v15 = *__error();
        v55 = *(v8 + 56);
        fi_log(v9, 2, 0, "ofi_check_ep_attr", 850, "Requested: %llu\n");
        goto LABEL_25;
      }

      return 0;
    }
  }

  return result;
}

uint64_t ofi_check_rx_attr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 80);
  if ((*a3 & 0xFBFFFFFFFFDFF4DFLL) != 0 && fi_log_enabled(a1, 2, 0))
  {
    v8 = *__error();
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 864, "Tx only caps ignored in Rx caps\n");
    *__error() = v8;
  }

  if ((*a3 & 0xFBFFFFFFFFDFF4DFLL & ~*v7) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v9 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 867, "caps not supported\n");
      *__error() = v9;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v10 = *__error();
      v17 = fi_tostr(v7, 2, v11, v12, v13, v14, v15, v16);
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 868, "Supported: %s\n", v17);
      *__error() = v10;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(a3, 2, v19, v20, v21, v22, v23, v24);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 868, "Requested: %s\n");
LABEL_27:
    *__error() = v18;
    return 4294967200;
  }

  v26 = (a3 + 8);
  v25 = *(a3 + 8);
  if (!v25)
  {
    v25 = a4;
  }

  if ((*(v7 + 8) & ~v25) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v43 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 874, "needed mode not set\n");
      *__error() = v43;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v44 = *__error();
      v51 = fi_tostr((v7 + 8), 14, v45, v46, v47, v48, v49, v50);
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 875, "Expected: %s\n", v51);
      *__error() = v44;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v26, 14, v52, v53, v54, v55, v56, v57);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 875, "Given: %s\n");
    goto LABEL_27;
  }

  v27 = (a3 + 16);
  if ((*(a3 + 16) & ~*(v7 + 16)) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v28 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 880, "op_flags not supported\n");
      *__error() = v28;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v29 = *__error();
      v36 = fi_tostr((v7 + 16), 3, v30, v31, v32, v33, v34, v35);
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 882, "Supported: %s\n", v36);
      *__error() = v29;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v27, 3, v37, v38, v39, v40, v41, v42);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 882, "Requested: %s\n");
    goto LABEL_27;
  }

  v59 = (a3 + 24);
  if ((*(a3 + 24) & ~*(v7 + 24)) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v60 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 887, "msg_order not supported\n");
      *__error() = v60;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v61 = *__error();
      v68 = fi_tostr((v7 + 24), 13, v62, v63, v64, v65, v66, v67);
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 889, "Supported: %s\n", v68);
      *__error() = v61;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v59, 13, v69, v70, v71, v72, v73, v74);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 889, "Requested: %s\n");
    goto LABEL_27;
  }

  v75 = (a3 + 32);
  if (*(a3 + 32))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v76 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 894, "comp_order not supported\n");
      *__error() = v76;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v77 = *__error();
      v84 = fi_tostr((v7 + 32), 13, v78, v79, v80, v81, v82, v83);
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 896, "Supported: %s\n", v84);
      *__error() = v77;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v75, 13, v85, v86, v87, v88, v89, v90);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 896, "Requested: %s\n");
    goto LABEL_27;
  }

  if (*(a3 + 40))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v91 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 901, "total_buffered_recv too large\n");
      *__error() = v91;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v92 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 903, "Supported: %zd\n", *(v7 + 40));
      *__error() = v92;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v93 = *(a3 + 40);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 903, "Requested: %zd\n");
    goto LABEL_27;
  }

  if (*(a3 + 48) > *(v7 + 48))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v94 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 908, "size is greater than supported\n");
      *__error() = v94;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v95 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 909, "Supported: %zd\n", *(v7 + 48));
      *__error() = v95;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v96 = *(a3 + 48);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 909, "Requested: %zd\n");
    goto LABEL_27;
  }

  if (*(a3 + 56) > *(v7 + 56))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v97 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 914, "iov_limit too large\n");
      *__error() = v97;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v98 = *__error();
      fi_log(a1, 2, 0, "ofi_check_rx_attr", 915, "Supported: %zd\n", *(v7 + 56));
      *__error() = v98;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v99 = *(a3 + 56);
    fi_log(a1, 2, 0, "ofi_check_rx_attr", 915, "Requested: %zd\n");
    goto LABEL_27;
  }

  return 0;
}

uint64_t ofi_check_attr_subset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a2 & 0xC00) != 0 || (a2 & 0xA) == 0;
  v4 = a2 | 0xC00;
  if (v3)
  {
    v4 = a2;
  }

  if ((a2 & 0x3300) == 0 && (a2 & 0x14) != 0)
  {
    v4 |= 0x3300uLL;
  }

  v25 = v4;
  v26 = a3;
  if ((a3 & ~v4) == 0)
  {
    return 0;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v7 = *__error();
    fi_log(a1, 2, 0, "ofi_check_attr_subset", 939, "requested caps not subset of base endpoint caps\n");
    *__error() = v7;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v8 = *__error();
    v15 = fi_tostr(&v25, 2, v9, v10, v11, v12, v13, v14);
    fi_log(a1, 2, 0, "ofi_check_attr_subset", 941, "Supported: %s\n", v15);
    *__error() = v8;
  }

  if (fi_log_enabled(a1, 2, 0))
  {
    v16 = *__error();
    v23 = fi_tostr(&v26, 2, v17, v18, v19, v20, v21, v22);
    fi_log(a1, 2, 0, "ofi_check_attr_subset", 941, "Requested: %s\n", v23);
    *__error() = v16;
  }

  return 4294967200;
}

uint64_t ofi_check_tx_attr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a3 & 0xF4FBFFFFFFFECBFFLL) != 0 && fi_log_enabled(a1, 2, 0))
  {
    v8 = *__error();
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 953, "Rx only caps ignored in Tx caps\n");
    *__error() = v8;
  }

  if ((*a3 & 0xF4FBFFFFFFFECBFFLL & ~*a2) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v9 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 956, "caps not supported\n");
      *__error() = v9;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v10 = *__error();
      v17 = fi_tostr(a2, 2, v11, v12, v13, v14, v15, v16);
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 957, "Supported: %s\n", v17);
      *__error() = v10;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(a3, 2, v19, v20, v21, v22, v23, v24);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 957, "Requested: %s\n");
LABEL_27:
    *__error() = v18;
    return 4294967200;
  }

  v26 = (a3 + 8);
  v25 = *(a3 + 8);
  if (!v25)
  {
    v25 = a4;
  }

  if ((*(a2 + 8) & ~v25) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v43 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 963, "needed mode not set\n");
      *__error() = v43;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v44 = *__error();
      v51 = fi_tostr((a2 + 8), 14, v45, v46, v47, v48, v49, v50);
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 964, "Expected: %s\n", v51);
      *__error() = v44;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v26, 14, v52, v53, v54, v55, v56, v57);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 964, "Given: %s\n");
    goto LABEL_27;
  }

  v27 = (a3 + 16);
  if ((*(a3 + 16) & ~*(a2 + 16)) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v28 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 969, "op_flags not supported\n");
      *__error() = v28;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v29 = *__error();
      v36 = fi_tostr((a2 + 16), 3, v30, v31, v32, v33, v34, v35);
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 971, "Supported: %s\n", v36);
      *__error() = v29;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v27, 3, v37, v38, v39, v40, v41, v42);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 971, "Requested: %s\n");
    goto LABEL_27;
  }

  v59 = (a3 + 24);
  if ((*(a3 + 24) & ~*(a2 + 24)) != 0)
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v60 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 976, "msg_order not supported\n");
      *__error() = v60;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v61 = *__error();
      v68 = fi_tostr((a2 + 24), 13, v62, v63, v64, v65, v66, v67);
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 978, "Supported: %s\n", v68);
      *__error() = v61;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v59, 13, v69, v70, v71, v72, v73, v74);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 978, "Requested: %s\n");
    goto LABEL_27;
  }

  v75 = (a3 + 32);
  if (*(a3 + 32))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v76 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 983, "comp_order not supported\n");
      *__error() = v76;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v77 = *__error();
      v84 = fi_tostr((a2 + 32), 13, v78, v79, v80, v81, v82, v83);
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 985, "Supported: %s\n", v84);
      *__error() = v77;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    fi_tostr(v75, 13, v85, v86, v87, v88, v89, v90);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 985, "Requested: %s\n");
    goto LABEL_27;
  }

  if (*(a3 + 40) > *(a2 + 40))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v91 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 990, "inject_size too large\n");
      *__error() = v91;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v92 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 991, "Supported: %zd\n", *(a2 + 40));
      *__error() = v92;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v93 = *(a3 + 40);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 991, "Requested: %zd\n");
    goto LABEL_27;
  }

  if (*(a3 + 48) > *(a2 + 48))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v94 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 996, "size is greater than supported\n");
      *__error() = v94;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v95 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 997, "Supported: %zd\n", *(a2 + 48));
      *__error() = v95;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v96 = *(a3 + 48);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 997, "Requested: %zd\n");
    goto LABEL_27;
  }

  if (*(a3 + 56) > *(a2 + 56))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v97 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 1002, "iov_limit too large\n");
      *__error() = v97;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v98 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 1003, "Supported: %zd\n", *(a2 + 56));
      *__error() = v98;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v99 = *(a3 + 56);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 1003, "Requested: %zd\n");
    goto LABEL_27;
  }

  if (*(a3 + 64) > *(a2 + 64))
  {
    if (fi_log_enabled(a1, 2, 0))
    {
      v100 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 1008, "rma_iov_limit too large\n");
      *__error() = v100;
    }

    if (fi_log_enabled(a1, 2, 0))
    {
      v101 = *__error();
      fi_log(a1, 2, 0, "ofi_check_tx_attr", 1009, "Supported: %zd\n", *(a2 + 64));
      *__error() = v101;
    }

    if (!fi_log_enabled(a1, 2, 0))
    {
      return 4294967200;
    }

    v18 = *__error();
    v102 = *(a3 + 64);
    fi_log(a1, 2, 0, "ofi_check_tx_attr", 1009, "Requested: %zd\n");
    goto LABEL_27;
  }

  return 0;
}

uint64_t ofi_prov_check_info(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = a1[2];
    if (v6)
    {
      pthread_mutex_lock(v6);
    }

    v7 = a1[1];
    if (v7)
    {
      v8 = 0;
      do
      {
        if (!ofi_check_info(a1, v7, a2, v3))
        {
          ++v8;
        }

        v7 = *v7;
      }

      while (v7);
      if (v8)
      {
        v3 = 0;
      }

      else
      {
        v3 = 4294967200;
      }
    }

    else
    {
      v3 = 4294967200;
    }

    v9 = a1[2];
    if (v9)
    {
      pthread_mutex_unlock(v9);
    }
  }

  return v3;
}

uint64_t ofi_prov_check_dup_info(uint64_t *a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (!a4)
  {
    return 4294967274;
  }

  v8 = *a1;
  v9 = a1[2];
  if (v9)
  {
    pthread_mutex_lock(v9);
  }

  *a4 = 0;
  v10 = a1[1];
  if (!v10)
  {
LABEL_15:
    v16 = a1[2];
    if (v16)
    {
      pthread_mutex_unlock(v16);
    }

    if (*a4)
    {
      return 0;
    }

    else
    {
      return 4294967200;
    }
  }

  v11 = 0;
  while (ofi_check_info(a1, v10, a2, a3))
  {
LABEL_14:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v12 = fi_dupinfo(v10);
  if (v12)
  {
    v13 = v12;
    v14 = a1[3];
    if (v14)
    {
      v14(a2, a3, v10, v12);
    }

    if (*a4)
    {
      v15 = v11;
    }

    else
    {
      v15 = a4;
    }

    *v15 = v13;
    v11 = v13;
    goto LABEL_14;
  }

  v18 = a1[2];
  if (v18)
  {
    pthread_mutex_unlock(v18);
  }

  fi_freeinfo(*a4);
  if (fi_log_enabled(v8, 2, 0))
  {
    v19 = *__error();
    fi_log(v8, 2, 0, "ofi_prov_check_dup_info", 1098, "cannot copy info\n");
    *__error() = v19;
  }

  return 4294967284;
}

uint64_t ofi_dup_addr(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 32);
    *(a2 + 32) = v5;
    v6 = malloc_type_malloc(v5, 0x2A1BF8CCuLL);
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    memcpy(v6, v4, v5);
    *(a2 + 48) = v7;
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  *(a2 + 40) = v9;
  v10 = malloc_type_malloc(v9, 0x2A1BF8CCuLL);
  if (v10)
  {
    v11 = v10;
    memcpy(v10, v8, v9);
    result = 0;
    *(a2 + 56) = v11;
    return result;
  }

  *(a2 + 56) = 0;
  free(*(a2 + 48));
LABEL_9:
  *(a2 + 48) = 0;
  return 4294967284;
}

uint64_t ofi_get_caps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0x13E000000310000 | a2 & 0xE008A0000003F7ELL;
  if (!a2)
  {
    v3 = (a1 & 0xC008A0000003F7ELL | 0x33E000000310000) & a3;
  }

  v4 = (v3 & 0xC00) != 0 || (v3 & 0xA) == 0;
  v5 = a3 & 0xC00;
  if (v4)
  {
    v5 = 0;
  }

  v6 = (v3 & 0x3300) != 0 || (v3 & 0x14) == 0;
  v7 = a3 & 0x3300;
  if (v6)
  {
    v7 = 0;
  }

  return v7 | v5 | v3;
}

void ofi_eq_handle_err_entry(unsigned int a1, int a2, __int128 *a3, uint64_t a4)
{
  if (a1 < 0x10005 || (v7 = *(a4 + 32)) == 0 || (v8 = *(a4 + 40)) == 0 || (v10 = (a3 + 2), (v9 = *(a3 + 4)) == 0) || (v11 = *(a3 + 5)) == 0)
  {
    v14 = *a3;
    v15 = a3[2];
    *(a4 + 16) = a3[1];
    *(a4 + 32) = v15;
    *a4 = v14;
    if ((a2 & 0x80000) != 0)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v11 >= v8)
  {
    v12 = *(a4 + 40);
  }

  else
  {
    v12 = *(a3 + 5);
  }

  memcpy(*(a4 + 32), v9, v12);
  v13 = a3[1];
  *a4 = *a3;
  *(a4 + 16) = v13;
  *(a4 + 32) = v7;
  *(a4 + 40) = v12;
  if ((a2 & 0x80000) == 0)
  {
    free(*v10);
    *v10 = 0;
    *(a3 + 5) = 0;
LABEL_12:
    *(a3 + 3) = 0;
  }
}

size_t ofi_eq_read(uint64_t a1, _DWORD *a2, void *a3, size_t a4, uint64_t a5)
{
  pthread_mutex_lock((a1 + 48));
  v11 = (a1 + 128);
  v10 = *(a1 + 128);
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = *(v10 + 20);
  if ((a5 & 0x1000000000000000) == 0 && v12)
  {
    a4 = -259;
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0 && !v12)
  {
LABEL_7:
    a4 = -35;
    goto LABEL_8;
  }

  if (a2)
  {
    *a2 = *(v10 + 16);
  }

  if (a3)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      free(*(a1 + 144));
      *(a1 + 144) = 0;
      if (*(v10 + 8) != 48)
      {
        ofi_eq_read_cold_1();
      }

      ofi_eq_handle_err_entry(*(*(a1 + 32) + 32), a5, (v10 + 24), a3);
      a4 = *(v10 + 8);
      if ((a5 & 0x80000) == 0)
      {
        *(a1 + 144) = *(v10 + 56);
      }
    }

    else
    {
      if (*(v10 + 8) < a4)
      {
        a4 = *(v10 + 8);
      }

      memcpy(a3, (v10 + 24), a4);
    }
  }

  else
  {
    a4 = 0;
  }

  if ((a5 & 0x80000) == 0)
  {
    v14 = *(a1 + 128);
    if (v14 == *(a1 + 136))
    {
      *v11 = 0;
      *(a1 + 136) = 0;
    }

    else
    {
      *v11 = *v14;
    }

    free(v10);
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 48));
  return a4;
}

uint64_t ofi_eq_write(uint64_t a1, int a2, const void *a3, size_t a4, uint64_t a5)
{
  v6 = a4;
  v10 = malloc_type_calloc(1uLL, a4 + 24, 0x102004024DAA5DEuLL);
  if (!v10)
  {
    return -12;
  }

  v11 = v10;
  v10[1] = v6;
  *(v10 + 4) = a2;
  *(v10 + 5) = (a5 & 0x1000000000000000) != 0;
  memcpy(v10 + 3, a3, v6);
  pthread_mutex_lock((a1 + 48));
  v12 = (a1 + 128);
  if (*(a1 + 128))
  {
    v12 = *(a1 + 136);
  }

  *v12 = v11;
  *v11 = 0;
  *(a1 + 136) = v11;
  pthread_mutex_unlock((a1 + 48));
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 72))();
  }

  return v6;
}

uint64_t ofi_eq_sread(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (*(a1 + 152))
  {
    v8 = a5;
    if (a5 < 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = ofi_gettime_ms() + a5;
    }

    while (1)
    {
      result = (*(*(a1 + 24) + 8))(a1, a2, a3, a4, a6);
      if (result != -35)
      {
        break;
      }

      if ((v8 & 0x80000000) == 0)
      {
        v8 = v12 - ofi_gettime_ms();
        if (v8 < 1)
        {
          return -35;
        }
      }

      LODWORD(result) = (*(*(*(a1 + 40) + 24) + 8))();
      if (result)
      {
        result = result;
        break;
      }
    }

    if (result == -60)
    {
      return -35;
    }
  }

  else
  {
    if (fi_log_enabled(*(a1 + 120), 0, 7))
    {
      v13 = *__error();
      fi_log(*(a1 + 120), 0, 7, "ofi_eq_sread", 180, "EQ not configured for sread\n");
      *__error() = v13;
    }

    return -78;
  }

  return result;
}

const char *ofi_eq_strerror(uint64_t a1, int a2, uint64_t a3, char *a4, size_t a5)
{
  result = fi_strerror(a2);
  if (a4 && a5)
  {

    return strncpy(a4, result, a5);
  }

  return result;
}

uint64_t ofi_eq_control(uint64_t a1, int a2)
{
  if (a2 == 16 || a2 == 5)
  {
    return (*(*(*(a1 + 40) + 16) + 24))();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t ofi_eq_cleanup(uint64_t a1)
{
  if (atomic_load((a1 + 112)))
  {
    return 4294967280;
  }

  v5 = (a1 + 128);
  v4 = *(a1 + 128);
  if (v4)
  {
    do
    {
      if (v4 == *(a1 + 136))
      {
        *v5 = 0;
        v5[1] = 0;
      }

      else
      {
        *v5 = *v4;
      }

      free(v4);
      v4 = *v5;
    }

    while (*v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(*(*(v6 + 40) + 24) + 24))();
    if (*(a1 + 152))
    {
      (*(*(*(a1 + 40) + 16) + 8))();
    }
  }

  free(*(a1 + 144));
  pthread_mutex_destroy((a1 + 48));
  result = 0;
  atomic_fetch_add((*(a1 + 32) + 120), 0xFFFFFFFF);
  return result;
}

uint64_t ofi_eq_remove_fid_events(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 48));
  v4 = 0;
LABEL_2:
  v5 = (a1 + 128);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = v4;
    v7 = v5[4];
    if (v7 != 1 || *(*(v5 + 4) + 64) != a2)
    {
      v4 = v5;
      if (*(v5 + 3) != a2)
      {
        continue;
      }
    }

    v8 = *v5;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = (a1 + 128);
    }

    *v9 = v8;
    if (!v8)
    {
      *(a1 + 136) = v6;
    }

    if (v5[5])
    {
      v10 = *(v5 + 7);
      if (v10)
      {
        free(v10);
      }
    }

    else if (v7 == 1)
    {
      v11 = *(v5 + 4);
      if (!v11)
      {
        ofi_eq_remove_fid_events_cold_1();
      }

      fi_freeinfo(v11);
    }

    free(v5);
    v4 = 0;
    goto LABEL_2;
  }

  return pthread_mutex_unlock((a1 + 48));
}

uint64_t ofi_eq_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 136);
  v5 = *(a2 + 16);
  if (v5 > 6)
  {
    if (!fi_log_enabled(*(a1 + 136), 0, 7))
    {
      return 4294967274;
    }

    v11 = *__error();
    fi_log(v4, 0, 7, "util_verify_eq_attr", 389, "invalid wait object type\n");
    goto LABEL_6;
  }

  if (v5 == 2 && !*(a2 + 24))
  {
    if (!fi_log_enabled(*(a1 + 136), 0, 7))
    {
      return 4294967274;
    }

    v11 = *__error();
    fi_log(v4, 0, 7, "util_verify_eq_attr", 384, "invalid wait set\n");
    goto LABEL_6;
  }

  v10 = *(a2 + 8);
  if ((v10 & 0xFFFFF7FFDFFFFDFFLL) != 0)
  {
    if (!fi_log_enabled(*(a1 + 136), 0, 7))
    {
      return 4294967274;
    }

    v11 = *__error();
    fi_log(v4, 0, 7, "util_verify_eq_attr", 394, "invalid flags\n");
LABEL_6:
    *__error() = v11;
    return 4294967274;
  }

  if ((v10 & 0x20000000) != 0 && fi_log_enabled(*(a1 + 136), 0, 7))
  {
    v14 = *__error();
    fi_log(v4, 0, 7, "util_verify_eq_attr", 399, "signaling vector ignored\n");
    *__error() = v14;
  }

  *(a3 + 32) = a1;
  v15 = *(a1 + 136);
  *(a3 + 112) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = v15;
  pthread_mutex_init((a3 + 48), 0);
  v16 = *(a2 + 16);
  if (v16 <= 2)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    if (v16 != 1)
    {
      if (v16 != 2)
      {
        goto LABEL_31;
      }

      v17 = (a2 + 24);
      goto LABEL_21;
    }
  }

  else if ((v16 - 3) > 3)
  {
LABEL_31:
    ofi_eq_init_cold_1();
  }

  v20 = 0;
  v21[1] = 0;
  v21[0] = v16;
  *(a3 + 152) = 1;
  v17 = &v20;
  v18 = (*(*(a1 + 24) + 32))(a1, v21, &v20);
  if (v18)
  {
    return v18;
  }

LABEL_21:
  *(a3 + 40) = *v17;
LABEL_22:
  *a3 = 13;
  *(a3 + 8) = a4;
  *(a3 + 16) = &util_eq_fi_ops;
  *(a3 + 24) = &util_eq_ops;
  atomic_fetch_add((a1 + 120), 1u);
  v19 = *(a3 + 40);
  if (!v19)
  {
    return 0;
  }

  v12 = (*(*(*(v19 + 40) + 24) + 16))();
  if (v12)
  {
    ofi_eq_cleanup(a3);
  }

  return v12;
}

uint64_t ofi_eq_create(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E004073E7674EuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_eq_init(a1, a2, v8, a4);
  if (v10)
  {
    free(v9);
  }

  else
  {
    *a3 = v9;
  }

  return v10;
}

uint64_t util_eq_close(void *a1)
{
  v2 = ofi_eq_cleanup(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

void *ofi_mr_cache_notify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  ++*(a1 + 400);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = a2;
  v10 = a3;
  result = ofi_rbmap_search((a1 + 168), &v9, util_mr_find_overlap);
  if (result)
  {
    for (i = result[4]; i; i = result[4])
    {
      util_mr_uncache_entry(a1, i);
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = a2;
      v10 = a3;
      result = ofi_rbmap_search((a1 + 168), &v9, util_mr_find_overlap);
      if (!result)
      {
        break;
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t util_mr_uncache_entry(uint64_t a1, uint64_t a2)
{
  result = util_mr_uncache_entry_storage(a1, a2);
  if (*(a2 + 128))
  {
    v5.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v5.i64[1] = *(a2 + 8);
    *(a1 + 360) = vaddq_s64(*(a1 + 360), v5);
  }

  else
  {
    v6 = *(a2 + 136);
    v7 = *(a2 + 144);
    v8 = (a2 + 136);
    *v7 = v6;
    *(v6 + 8) = v7;
    v9 = *(a1 + 256);
    v10 = *v9;
    *v8 = *v9;
    v8[1] = v9;
    *(v10 + 8) = v8;
    *v9 = v8;
  }

  return result;
}

BOOL ofi_mr_cache_flush(void *a1, int a2)
{
  v20 = &v20;
  v21 = &v20;
  pthread_mutex_lock(&mm_lock);
  if (a1[31] != a1 + 31)
  {
    v4 = v21;
    v5 = a1[32];
    v6 = *v21;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = a1[31];
    *v4 = v7;
    *(v7 + 8) = v4;
    a1[31] = a1 + 31;
    a1[32] = a1 + 31;
  }

  if (a2)
  {
    v8 = (a1 + 29);
    for (i = a1[29]; i != v8; i = *v8)
    {
      v10 = *i;
      v11 = i[1];
      *v11 = *i;
      *(v10 + 8) = v11;
      *i = i;
      i[1] = i;
      util_mr_uncache_entry_storage(a1, i - 17);
      v12 = v21;
      v13 = *v21;
      *i = *v21;
      i[1] = v12;
      *(v13 + 8) = i;
      *v12 = i;
      if (a1[41] < a1[43] && a1[42] < a1[44])
      {
        break;
      }
    }
  }

  pthread_mutex_unlock(&mm_lock);
  v14 = v20;
  if (v20 != &v20)
  {
    v15 = v20;
    do
    {
      v16 = (v15 - 17);
      v18 = *v15;
      v17 = v15[1];
      *v17 = v18;
      *(v18 + 8) = v17;
      util_mr_free_entry(a1, v16);
      v15 = v20;
    }

    while (v20 != &v20);
  }

  return v14 != &v20;
}

uint64_t util_mr_uncache_entry_storage(void *a1, uint64_t *a2)
{
  v4 = a1[*(a2 + 4) + 2];
  ofi_rbmap_delete(a1 + 21, a2[15]);
  a2[15] = 0;
  v5 = *a2;
  v6 = a2[1];
  result = ofi_monitor_unsubscribe(v4);
  v8 = a1[42] - a2[1];
  --a1[41];
  a1[42] = v8;
  return result;
}

uint64_t util_mr_free_entry(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120))
  {
    util_mr_free_entry_cold_1();
  }

  (*(a1 + 424))();

  return util_mr_entry_free(a1, a2);
}

uint64_t ofi_mr_cache_delete(void *a1, uint64_t a2)
{
  pthread_mutex_lock(&mm_lock);
  ++a1[48];
  v4 = *(a2 + 128) - 1;
  *(a2 + 128) = v4;
  if (v4)
  {
LABEL_4:

    return pthread_mutex_unlock(&mm_lock);
  }

  if (*(a2 + 120))
  {
    v5 = a1[30];
    v6 = *v5;
    *(a2 + 136) = *v5;
    *(a2 + 144) = v5;
    v7 = a2 + 136;
    *(v6 + 8) = v7;
    *v5 = v7;
    goto LABEL_4;
  }

  v9 = a1[46] - *(a2 + 8);
  --a1[45];
  a1[46] = v9;
  pthread_mutex_unlock(&mm_lock);

  return util_mr_free_entry(a1, a2);
}

uint64_t ofi_mr_cache_search(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1 + 16;
  v4 = (a2 + 16);
  v51 = *(a1 + 16 + 8 * *(a2 + 16));
  if (!v51)
  {
    if (fi_log_enabled(&core_prov, 0, 8))
    {
      v34 = *__error();
      v41 = fi_tostr(v4, 25, v35, v36, v37, v38, v39, v40);
      fi_log(&core_prov, 0, 8, "ofi_mr_cache_search", 352, "MR cache disabled for %s memory\n", v41);
      *__error() = v34;
    }

    return 4294967218;
  }

  v6 = a2;
  v50 = (a1 + 328);
  v8 = (a1 + 248);
  while (1)
  {
    pthread_mutex_lock(&mm_lock);
    if (*(a1 + 328) >= *(a1 + 344) || *(a1 + 336) >= *(a1 + 352))
    {
      v9 = 1;
    }

    else
    {
      if (*v8 == v8)
      {
        goto LABEL_9;
      }

      v9 = 0;
    }

    pthread_mutex_unlock(&mm_lock);
    ofi_mr_cache_flush(a1, v9);
    pthread_mutex_lock(&mm_lock);
LABEL_9:
    ++*(a1 + 376);
    v10 = ofi_rbmap_find((a1 + 168), v6);
    if (v10)
    {
      break;
    }

LABEL_19:
    *a3 = 0;
LABEL_20:
    pthread_mutex_unlock(&mm_lock);
    v14 = *(v3 + 8 * *v4);
    if (!v14)
    {
      ofi_mr_cache_search_cold_2();
    }

    v15 = util_mr_entry_alloc(a1);
    *a3 = v15;
    if (!v15)
    {
      v23 = -12;
LABEL_36:
      if (ofi_mr_cache_flush(a1, 1))
      {
        result = 4294967261;
      }

      else
      {
        result = v23;
      }

      goto LABEL_39;
    }

    v15[15] = 0;
    v16 = *a3;
    v17 = *v6;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    *(v16 + 32) = *(v6 + 32);
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = *(v6 + 64);
    v21 = *(v6 + 80);
    v22 = *(v6 + 96);
    *(v16 + 112) = *(v6 + 112);
    *(v16 + 80) = v21;
    *(v16 + 96) = v22;
    *(v16 + 64) = v20;
    *(*a3 + 128) = 1;
    v23 = (*(a1 + 416))(a1);
    if (!v23)
    {
      v24 = *a3;
      v25 = **a3;
      if (*v6 < v25 || *v6 + *(v6 + 8) > v25 + *(v24 + 8))
      {
        ofi_mr_cache_search_cold_1();
      }

      v26 = *v24;
      v27 = *(v24 + 16);
      v28 = *(v24 + 48);
      *(v6 + 32) = *(v24 + 32);
      *(v6 + 48) = v28;
      *v6 = v26;
      *(v6 + 16) = v27;
      v29 = *(v24 + 64);
      v30 = *(v24 + 80);
      v31 = *(v24 + 96);
      *(v6 + 112) = *(v24 + 112);
      *(v6 + 80) = v30;
      *(v6 + 96) = v31;
      *(v6 + 64) = v29;
      pthread_mutex_lock(&mm_lock);
      v32 = ofi_rbmap_find((a1 + 168), v6);
      if (v32 && v32[4])
      {
        v23 = -35;
LABEL_33:
        pthread_mutex_unlock(&mm_lock);
        goto LABEL_34;
      }

      if (*(a1 + 328) >= *(a1 + 344) || *(a1 + 336) >= *(a1 + 352))
      {
        ++*(a1 + 360);
      }

      else
      {
        if (ofi_rbmap_insert((a1 + 168), *a3, *a3, (*a3 + 120)))
        {
          v23 = -12;
          goto LABEL_33;
        }

        v42.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v43 = *v6;
        v44 = *(v6 + 8);
        v42.i64[1] = v44;
        *v50 = vaddq_s64(*v50, v42);
        v45 = *a3;
        if (!ofi_monitor_subscribe(v14, v43, v44))
        {
          goto LABEL_48;
        }

        util_mr_uncache_entry_storage(a1, *a3);
        ++*(a1 + 360);
        v6 = *a3;
      }

      *(a1 + 368) += *(v6 + 8);
      goto LABEL_48;
    }

LABEL_34:
    util_mr_free_entry(a1, *a3);
    if (v23 != -35)
    {
      goto LABEL_36;
    }

    result = 4294967261;
LABEL_39:
    if (result != -35)
    {
      return result;
    }
  }

  v11 = v10[4];
  *a3 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  if (*v6 < *v11 || *v6 + *(v6 + 8) > *v11 + *(v11 + 8))
  {
    while (1)
    {
      util_mr_uncache_entry(a1, v11);
      v13 = ofi_rbmap_find((a1 + 168), v6);
      if (!v13)
      {
        goto LABEL_19;
      }

      v11 = v13[4];
      *a3 = v11;
LABEL_17:
      if (!v11)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = (*(v51 + 72))(v51, v6);
  v11 = *a3;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  ++*(a1 + 392);
  v46 = *(v11 + 128);
  *(v11 + 128) = v46 + 1;
  if (!v46)
  {
    v48 = *(v11 + 136);
    v49 = *(v11 + 144);
    v47 = (v11 + 136);
    *v49 = v48;
    *(v48 + 8) = v49;
    *v47 = v47;
    v47[1] = v47;
  }

LABEL_48:
  pthread_mutex_unlock(&mm_lock);
  return 0;
}

uint64_t ofi_mr_cache_find(uint64_t a1, unint64_t **a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a2[1] != 1)
  {
    ofi_mr_cache_find_cold_1();
  }

  pthread_mutex_lock(&mm_lock);
  if (*(a1 + 248) != a1 + 248)
  {
    pthread_mutex_unlock(&mm_lock);
    ofi_mr_cache_flush(a1, 0);
    pthread_mutex_lock(&mm_lock);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  ++*(a1 + 376);
  *(&v28 + 1) = 0;
  v6 = *a2;
  if ((a3 & 0x10000000000) != 0)
  {
    v7 = v6[1];
    v9 = v6 + 2;
    v8 = v6[2];
    *&v26 = v7 + v9[1];
    *(&v26 + 1) = v8;
  }

  else
  {
    v26 = *v6;
  }

  v10 = ofi_rbmap_find((a1 + 168), &v26);
  if (!v10)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = v10[4];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = **a2;
  v18 = *v16;
  if (v17 < *v16 || v17 + (*a2)[1] > v18 + *(v16 + 8) || (v19 = *(a1 + 8 * *(v16 + 16) + 16), !(*(v19 + 72))(v19, v18, v16, v11, v12, v13, v14, v15, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1))))
  {
    while (1)
    {
      util_mr_uncache_entry(a1, v16);
      v23 = ofi_rbmap_find((a1 + 168), v16);
      if (!v23)
      {
        goto LABEL_17;
      }

      v16 = v23[4];
      if (!v16)
      {
        goto LABEL_18;
      }
    }
  }

  ++*(a1 + 392);
  v20 = *(v16 + 128);
  *(v16 + 128) = v20 + 1;
  if (!v20)
  {
    v21 = *(v16 + 136);
    v22 = *(v16 + 144);
    *v22 = v21;
    *(v21 + 8) = v22;
    *(v16 + 136) = v16 + 136;
    *(v16 + 144) = v16 + 136;
  }

LABEL_18:
  pthread_mutex_unlock(&mm_lock);
  v24 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t ofi_mr_cache_reg(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (a2[1] != 1)
  {
    ofi_mr_cache_reg_cold_1();
  }

  v8 = util_mr_entry_alloc(a1);
  *a3 = v8;
  if (!v8)
  {
    return 4294967284;
  }

  pthread_mutex_lock(&mm_lock);
  v9 = *(a1 + 368);
  ++*(a1 + 360);
  *(a1 + 368) = v9 + *(*a2 + 8);
  pthread_mutex_unlock(&mm_lock);
  v10 = *a3;
  v11 = *a2;
  if ((a4 & 0x10000000000) != 0)
  {
    v13 = *(v11 + 8);
    v15 = v11 + 16;
    v14 = *(v11 + 16);
    *v10 = v13 + *(v15 + 8);
    v10[1] = v14;
  }

  else
  {
    *v10 = *v11;
  }

  v16 = *a3;
  *(v16 + 128) = 1;
  *(v16 + 120) = 0;
  v12 = (*(a1 + 416))(a1, *a3);
  if (v12)
  {
    util_mr_entry_free(a1, *a3);
    pthread_mutex_lock(&mm_lock);
    v17 = *(a1 + 368);
    --*(a1 + 360);
    *(a1 + 368) = v17 - *(*a2 + 8);
    pthread_mutex_unlock(&mm_lock);
  }

  return v12;
}

void *util_mr_entry_alloc(uint64_t a1)
{
  pthread_mutex_lock((a1 + 264));
  v2 = *(a1 + 408);
  if ((*(v2 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(*(a1 + 408)))
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = *v2;
  }

  if (v3 == *(v2 + 8))
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  v4 = v3 + 6;
LABEL_11:
  pthread_mutex_unlock((a1 + 264));
  return v4;
}

uint64_t util_mr_entry_free(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 264));
  v4 = *(a2 - 32);
  if (!v4)
  {
    ofi_buf_free_cold_6();
  }

  if (atomic_fetch_add((v4 + 76), 0xFFFFFFFF) <= 0)
  {
    ofi_buf_free_cold_7();
  }

  v5 = *(a2 - 32);
  if (!v5)
  {
    ofi_buf_free_cold_6();
  }

  v6 = *(v5 + 64);
  if (!v6)
  {
    ofi_buf_free_cold_5();
  }

  if ((v6[16] & 2) != 0)
  {
    ofi_buf_free_cold_1();
  }

  if (*(a2 - 8) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_2();
  }

  if (**(a2 - 16) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_3();
  }

  v7 = (a2 - 48);
  if (*(a2 - 48) != a2 - 48)
  {
    ofi_buf_free_cold_4();
  }

  v8 = *v6;
  if (!*v6)
  {
    v6[1] = v7;
  }

  *v7 = v8;
  *v6 = v7;

  return pthread_mutex_unlock((a1 + 264));
}

void ofi_mr_cache_cleanup(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (fi_log_enabled(v2, 2, 8))
    {
      v3 = *__error();
      fi_log(*(a1 + 8), 2, 8, "ofi_mr_cache_cleanup", 494, "MR cache stats: searches %zu, deletes %zu, hits %zu notify %zu\n", *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
      *__error() = v3;
    }

      ;
    }

    pthread_mutex_destroy((a1 + 264));
    ofi_monitors_del_cache(a1);
    ofi_rbmap_cleanup(a1 + 168);
    if (*a1)
    {
      atomic_fetch_add((*a1 + 176), 0xFFFFFFFF);
    }

    ofi_bufpool_destroy(*(a1 + 408));
    if (*(a1 + 328))
    {
      ofi_mr_cache_cleanup_cold_1();
    }

    if (*(a1 + 336))
    {
      ofi_mr_cache_cleanup_cold_2();
    }

    if (*(a1 + 360))
    {
      ofi_mr_cache_cleanup_cold_3();
    }

    if (*(a1 + 368))
    {
      ofi_mr_cache_cleanup_cold_4();
    }
  }
}

uint64_t ofi_mr_cache_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 416) || !*(a3 + 424))
  {
    ofi_mr_cache_init_cold_1();
  }

  if (cache_params)
  {
    v4 = *(&cache_params + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 4294967268;
  }

  pthread_mutex_init((a3 + 264), 0);
  *(a3 + 232) = a3 + 232;
  *(a3 + 240) = a3 + 232;
  *(a3 + 248) = a3 + 248;
  *(a3 + 256) = a3 + 248;
  *(a3 + 328) = 0;
  *(a3 + 336) = 0;
  *(a3 + 344) = cache_params;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0u;
  *(a3 + 392) = 0u;
  *a3 = a1;
  if (a1)
  {
    *(a3 + 8) = *(a1 + 184);
    atomic_fetch_add((a1 + 176), 1u);
  }

  else
  {
    *(a3 + 8) = &core_prov;
  }

  ofi_rbmap_init(a3 + 168, util_mr_find_within);
  attr = ofi_monitors_add_cache(a2, a3);
  if (!attr)
  {
    v8 = *(a3 + 160) + 160;
    v14 = 0;
    v10[0] = v8;
    v10[1] = 16;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    attr = ofi_bufpool_create_attr(v10, (a3 + 408));
    if (!attr)
    {
      return attr;
    }

    ofi_monitors_del_cache(a3);
  }

  ofi_rbmap_cleanup(a3 + 168);
  if (a1)
  {
    atomic_fetch_add((*a3 + 176), 0xFFFFFFFF);
    *a3 = 0;
  }

  pthread_mutex_destroy((a3 + 264));
  *(a3 + 8) = 0;
  return attr;
}

uint64_t util_mr_find_within(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a2[5];
  v4 = a3[5];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v6 = *a2;
  v7 = *a3;
  if (*a2 < *a3 && v6 + a2[1] < v7 + a3[1])
  {
    return 0xFFFFFFFFLL;
  }

  return v6 > v7 && v6 + a2[1] > v7 + a3[1];
}

uint64_t ofi_open_mr_cache(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1 < 0x1000D || a3 != 0)
  {
    return 4294967274;
  }

  if (a4)
  {
    return 4294967036;
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00404568A766uLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  result = 0;
  *v11 = 22;
  v11[1] = a6;
  v11[2] = &ofi_mr_cache_ops;
  *a5 = v11;
  return result;
}

uint64_t util_mr_find_overlap(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[5];
  v4 = a3[5];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  if ((*a2 + a2[1] - 1) < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  return *a2 > (*a3 + a3[1] - 1);
}

uint64_t ofi_bind_cache_fid(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 || *a2 != 23)
  {
    return 4294967274;
  }

  else
  {
    return ofi_monitor_import(a2);
  }
}

uint64_t ofi_cq_write_overflow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!(*(a1 + 240))(a1 + 176))
  {
    ofi_cq_write_overflow_cold_2();
  }

  if (**(a1 + 304) - *(*(a1 + 304) + 24) + *(*(a1 + 304) + 16) >= 2uLL)
  {
    ofi_cq_write_overflow_cold_1();
  }

  v16 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A00400CB009B8uLL);
  if (!v16)
  {
    return 4294967284;
  }

  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  *(v16 + 16) = 0;
  v16[12] = a8;
  util_cq_insert_aux(a1, v16);
  return 0;
}

uint64_t util_cq_insert_aux(uint64_t a1, void *a2)
{
  result = (*(a1 + 240))(a1 + 176);
  if (!result)
  {
    util_cq_insert_aux_cold_1();
  }

  v5 = *(a1 + 304);
  v6 = v5[3];
  if (v5[2] - v6 + *v5)
  {
    v5[3] = ++v6;
  }

  v7 = &v5[6 * ((v6 - 1) & v5[1])];
  *a2 = v7 + 4;
  v7[5] = 0x2000000000000000;
  if (*(a1 + 320))
  {
    v8 = *(a1 + 328);
  }

  else
  {
    v8 = (a1 + 320);
  }

  *v8 = a2 + 13;
  a2[13] = 0;
  *(a1 + 328) = a2 + 13;
  return result;
}

uint64_t ofi_cq_write_error(uint64_t a1, __int128 *a2)
{
  (*(a1 + 248))(a1 + 176);
  inserted = util_cq_insert_error(a1, a2);
  (*(a1 + 256))(a1 + 176);
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 72))();
  }

  return inserted;
}

uint64_t util_cq_insert_error(uint64_t a1, __int128 *a2)
{
  if (!(*(a1 + 240))(a1 + 176))
  {
    util_cq_insert_error_cold_2();
  }

  if (!*(a2 + 14))
  {
    util_cq_insert_error_cold_1();
  }

  v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A00400CB009B8uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *a2;
    *(v4 + 24) = a2[1];
    *(v4 + 8) = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    *(v4 + 11) = *(a2 + 10);
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    *(v4 + 40) = v7;
    v10 = *(a2 + 9);
    if (!v10)
    {
LABEL_7:
      util_cq_insert_aux(a1, v5);
      return 0;
    }

    v11 = *(a2 + 8);
    v12 = malloc_type_malloc(v10, 0x2A1BF8CCuLL);
    if (v12)
    {
      v13 = v12;
      memcpy(v12, v11, v10);
      v5[9] = v13;
      goto LABEL_7;
    }

    free(v5);
  }

  return 4294967284;
}

uint64_t ofi_cq_write_error_peek(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a3;
  *(&v4 + 1) = 1032;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a2;
  v9 = 0;
  v10 = 0xFFFFFFA50000005BLL;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  return ofi_cq_write_error(a1, &v4);
}

uint64_t ofi_cq_write_error_trunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = a8;
  v15 = 0xFFFFFEF700000109;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  return ofi_cq_write_error(a1, &v9);
}

uint64_t ofi_peer_cq_write_error_peek(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 1032;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2;
  v10 = 0;
  v11 = 0xFFFFFFA50000005BLL;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  return (*(*(*(a1 + 288) + 24) + 16))();
}

uint64_t ofi_peer_cq_write_error_trunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = 0xFFFFFEF700000109;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  return (*(*(*(a1 + 288) + 24) + 16))();
}

uint64_t ofi_check_cq_attr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < 5u)
  {
    v3 = *(a2 + 20);
    if (v3 <= 6)
    {
      if (((1 << v3) & 0x4A) != 0)
      {
        goto LABEL_7;
      }

      if (((1 << v3) & 0x21) != 0)
      {
LABEL_8:
        if ((*(a2 + 8) & 0xFFFFF7FFDFFFFFFFLL) == 0)
        {
          return 0;
        }

        if (fi_log_enabled(a1, 0, 6))
        {
          v4 = *__error();
          fi_log(a1, 0, 6, "ofi_check_cq_attr", 232, "invalid flags\n");
LABEL_20:
          *__error() = v4;
          return 4294967274;
        }

        return 4294967274;
      }

      if (v3 == 2)
      {
        if (!*(a2 + 32))
        {
          if (fi_log_enabled(a1, 0, 6))
          {
            v4 = *__error();
            fi_log(a1, 0, 6, "ofi_check_cq_attr", 210, "invalid wait set\n");
            goto LABEL_20;
          }

          return 4294967274;
        }

LABEL_7:
        if (*(a2 + 28) >= 2u)
        {
          if (fi_log_enabled(a1, 0, 6))
          {
            v4 = *__error();
            fi_log(a1, 0, 6, "ofi_check_cq_attr", 222, "unsupported wait cond\n");
            goto LABEL_20;
          }

          return 4294967274;
        }

        goto LABEL_8;
      }
    }

    if (fi_log_enabled(a1, 0, 6))
    {
      v4 = *__error();
      fi_log(a1, 0, 6, "ofi_check_cq_attr", 227, "unsupported wait object\n");
      goto LABEL_20;
    }

    return 4294967274;
  }

  if (fi_log_enabled(a1, 0, 6))
  {
    v4 = *__error();
    fi_log(a1, 0, 6, "ofi_check_cq_attr", 200, "unsupported format\n");
    goto LABEL_20;
  }

  return 4294967274;
}

uint64_t ofi_cq_readfrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a1 + 280))();
  v23 = a2;
  (*(a1 + 248))(a1 + 176);
  v8 = *(a1 + 296);
  if (v8)
  {
    free(v8);
    *(a1 + 296) = 0;
  }

  v9 = *(a1 + 304);
  v10 = v9[3] - v9[2];
  if (!v10)
  {
    a3 = -35;
    goto LABEL_34;
  }

  if (v10 < a3)
  {
    a3 = v9[3] - v9[2];
  }

  if (a3 < 1)
  {
    a3 = 0;
    goto LABEL_34;
  }

  v11 = 0;
  while (1)
  {
    v12 = v9[1] & v9[2];
    v13 = &v9[6 * v12];
    v14 = v13 + 4;
    if ((*(v13 + 47) & 0x20) == 0)
    {
      if (a4)
      {
        v15 = *(a1 + 312);
        if (v15)
        {
          *(a4 + 8 * v11) = *(v15 + 8 * v12);
        }
      }

      (*(a1 + 336))(&v23, v14);
      goto LABEL_26;
    }

    v16 = *(a1 + 320);
    if (!v16)
    {
      ofi_cq_readfrom_cold_2();
    }

    v17 = (v16 - 104);
    if (*(v16 - 104) != v14)
    {
      ofi_cq_readfrom_cold_1();
    }

    if (*(v16 - 40))
    {
      break;
    }

    if (a4 && *(a1 + 312))
    {
      *(a4 + 8 * v11) = *(v16 - 8);
    }

    (*(a1 + 336))(&v23, v16 - 96);
    v18 = *(a1 + 320);
    if (v18 == *(a1 + 328))
    {
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
    }

    else
    {
      *(a1 + 320) = *v18;
    }

    free(v17);
    v19 = *(a1 + 320);
    if (v19)
    {
      v20 = *(v19 - 104);
      v9 = *(a1 + 304);
      v21 = v9[2];
      if (v20 == &v9[6 * (v9[1] & v21) + 4])
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    v9 = *(a1 + 304);
    v21 = v9[2];
LABEL_27:
    v9[2] = v21 + 1;
LABEL_28:
    if (a3 == ++v11)
    {
      goto LABEL_34;
    }
  }

  if (v11)
  {
    a3 = v11;
  }

  else
  {
    a3 = -259;
  }

LABEL_34:
  (*(a1 + 256))(a1 + 176);
  return a3;
}

uint64_t ofi_cq_readerr(uint64_t a1, _OWORD *a2)
{
  v4 = *(a2 + 9);
  v5 = *(*(*(a1 + 32) + 56) + 32);
  (*(a1 + 248))(a1 + 176);
  v6 = *(a1 + 296);
  if (v6)
  {
    free(v6);
    *(a1 + 296) = 0;
  }

  v7 = *(a1 + 304);
  v8 = v7[2];
  if (v7[3] != v8)
  {
    v9 = v7 + 4;
    v10 = v7[1] & v8;
    if ((v9[6 * v10 + 1] & 0x2000000000000000) != 0)
    {
      v11 = *(a1 + 320);
      if (!v11)
      {
        ofi_cq_readerr_cold_2();
      }

      if (*(v11 - 104) != &v9[6 * v10])
      {
        ofi_cq_readerr_cold_1();
      }

      if (*(v11 - 40))
      {
        v12 = (v11 - 96);
        if (v5 >= 0x10005)
        {
          v18 = *(a2 + 8);
          v19 = *(a2 + 9);
          if (v5 <= 0x10013)
          {
            v20 = 80;
          }

          else
          {
            v20 = 88;
          }

          memcpy(a2, v12, v20);
          if (v19)
          {
            v21 = *(v11 - 24);
            if (v19 >= v21)
            {
              v19 = *(v11 - 24);
            }

            if (v21)
            {
              memcpy(v18, *(v11 - 32), v19);
            }

            *(a2 + 8) = v18;
            *(a2 + 9) = v19;
          }
        }

        else
        {
          *a2 = *v12;
          v13 = *(v11 - 80);
          v14 = *(v11 - 64);
          v15 = *(v11 - 48);
          *(a2 + 8) = *(v11 - 32);
          a2[2] = v14;
          a2[3] = v15;
          a2[1] = v13;
        }

        v22 = *(v11 - 24);
        if (v4)
        {
          v23 = v5 >= 0x10005;
        }

        else
        {
          v23 = 0;
        }

        v24 = !v23;
        if (v22 && v24)
        {
          v25 = *(v11 - 32);
          v26 = malloc_type_malloc(*(v11 - 24), 0x2A1BF8CCuLL);
          if (!v26)
          {
            *(a1 + 296) = 0;
            v16 = -12;
            goto LABEL_11;
          }

          v27 = v26;
          memcpy(v26, v25, v22);
          *(a1 + 296) = v27;
          v22 = *(v11 - 24);
          *(a2 + 8) = v27;
          *(a2 + 9) = v22;
        }

        v28 = *(a1 + 320);
        if (v28 == *(a1 + 328))
        {
          *(a1 + 320) = 0;
          *(a1 + 328) = 0;
          if (!*(v11 - 24))
          {
LABEL_34:
            free((v11 - 104));
            v29 = *(a1 + 320);
            if (v29)
            {
              v30 = *(v29 - 104);
              v31 = *(a1 + 304);
              v32 = *(v31 + 16);
              if (v30 == v31 + 48 * (*(v31 + 8) & v32) + 32)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v31 = *(a1 + 304);
              v32 = *(v31 + 16);
            }

            *(v31 + 16) = v32 + 1;
LABEL_41:
            v16 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          *(a1 + 320) = *v28;
          if (!v22)
          {
            goto LABEL_34;
          }
        }

        free(*(v11 - 32));
        goto LABEL_34;
      }
    }
  }

  v16 = -35;
LABEL_11:
  (*(a1 + 256))(a1 + 176);
  return v16;
}

uint64_t ofi_cq_sreadfrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!*(a1 + 40) || !*(a1 + 272))
  {
    ofi_cq_sreadfrom_cold_1();
  }

  v7 = a6;
  if (a6 < 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = ofi_gettime_ms() + a6;
  }

  while (1)
  {
    result = (*(*(a1 + 24) + 16))(a1, a2, a3, a4);
    if (result != -35)
    {
      break;
    }

    if ((v7 & 0x80000000) == 0)
    {
      v7 = v11 - ofi_gettime_ms();
      if (v7 < 1)
      {
        return -35;
      }
    }

    if (atomic_load((a1 + 276)))
    {
      atomic_store(0, (a1 + 276));
      return -35;
    }

    LODWORD(result) = (*(*(*(a1 + 40) + 24) + 8))();
    if (result)
    {
      result = result;
      break;
    }
  }

  if (result == -60)
  {
    return -35;
  }

  return result;
}

uint64_t ofi_cq_signal(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    ofi_cq_signal_cold_1();
  }

  atomic_store(1u, (a1 + 276));
  (*(v2 + 72))();
  return 0;
}

uint64_t ofi_cq_cleanup(uint64_t a1)
{
  if (atomic_load((a1 + 48)))
  {
    return 4294967280;
  }

  if ((*(a1 + 269) & 8) == 0)
  {
    util_peer_cq_cleanup(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*(*(v4 + 40) + 24) + 24))();
    if (*(a1 + 272))
    {
      (*(*(*(a1 + 40) + 16) + 8))();
    }
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    free(v5);
    *(a1 + 296) = 0;
  }

  ofi_genlock_destroy((a1 + 168));
  ofi_genlock_destroy((a1 + 72));
  result = 0;
  atomic_fetch_add((*(a1 + 32) + 176), 0xFFFFFFFF);
  return result;
}

uint64_t util_peer_cq_cleanup(uint64_t a1)
{
  for (i = *(a1 + 320); i; i = *(a1 + 320))
  {
    if (i == *(a1 + 328))
    {
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
    }

    else
    {
      *(a1 + 320) = *i;
    }

    free(i - 13);
  }

  free(*(a1 + 304));
  free(*(a1 + 312));
  v3 = *(*(*(a1 + 288) + 16) + 8);

  return v3();
}

uint64_t ofi_cq_control(uint64_t a1, int a2)
{
  if (a2 == 16 || a2 == 5)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(*(v3 + 16) + 24);

      return v4();
    }

    else
    {
      return 4294967200;
    }
  }

  else
  {
    if (fi_log_enabled(*(*(a1 + 40) + 56), 2, 6))
    {
      v6 = *__error();
      fi_log(*(*(a1 + 40) + 56), 2, 6, "ofi_cq_control", 468, "Unsupported command\n");
      *__error() = v6;
    }

    return 4294967218;
  }
}

uint64_t ofi_check_bind_cq_flags(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1[10] + 56) + 136);
  if ((a3 & 0xF7FFFFFFFFFFF3FFLL) != 0)
  {
    if (!fi_log_enabled(*(*(a1[10] + 56) + 136), 0, 3))
    {
      return 4294967036;
    }

    v4 = *__error();
    fi_log(v3, 0, 3, "ofi_check_bind_cq_flags", 502, "Unsupported flags\n");
    v5 = 4294967036;
  }

  else
  {
    if (((a3 & 0x800) == 0 || !a1[17]) && ((a3 & 0x400) == 0 || !a1[15]))
    {
      return 0;
    }

    if (!fi_log_enabled(*(*(a1[10] + 56) + 136), 0, 3))
    {
      return 4294967274;
    }

    v4 = *__error();
    fi_log(v3, 0, 3, "ofi_check_bind_cq_flags", 509, "Duplicate CQ binding\n");
    v5 = 4294967274;
  }

  *__error() = v4;
  return v5;
}

uint64_t ofi_cq_progress(uint64_t a1)
{
  (*(a1 + 152))(a1 + 80);
  for (i = *(a1 + 56); i != (a1 + 56); i = *i)
  {
    (*(i[2] + 296))();
  }

  v3 = *(a1 + 160);

  return v3(a1 + 80);
}

uint64_t ofi_cq_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    ofi_cq_init_cold_4();
  }

  v11 = ofi_check_cq_attr(a1, a3);
  if (!v11)
  {
    *(a4 + 16) = &util_cq_fi_ops;
    *(a4 + 24) = &util_cq_ops;
    *(a4 + 280) = a5;
    *(a4 + 296) = 0;
    *(a4 + 32) = a2;
    *(a4 + 48) = 0;
    *(a4 + 276) = 0;
    *(a4 + 56) = a4 + 56;
    *(a4 + 64) = a4 + 56;
    v12 = (*(a2 + 264) - 3) >= 2 ? *(a2 + 80) : 2;
    v11 = ofi_genlock_init(a4 + 168, v12);
    if (!v11)
    {
      v15 = *(a4 + 32);
      if (*(v15 + 272) != 3 || (*(v15 + 264) - 3) >= 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2;
      }

      v13 = ofi_genlock_init(a4 + 72, v17);
      if (v13)
      {
        goto LABEL_53;
      }

      v18 = *(a3 + 8);
      *(a4 + 264) = v18;
      *a4 = 14;
      *(a4 + 8) = a6;
      if ((v18 & 0x80000000000) != 0)
      {
        *(a4 + 288) = *(a6 + 8);
        *(a4 + 24) = &util_peer_cq_ops;
        goto LABEL_34;
      }

      v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040DCAF80CAuLL);
      *(a4 + 288) = v19;
      if (v19)
      {
        *(a4 + 320) = 0;
        *(a4 + 328) = 0;
        v20 = *(a3 + 16);
        if (v20 >= 5)
        {
          ofi_cq_init_cold_1();
        }

        *(a4 + 336) = *(&off_2A2557D60 + v20);
        v21 = *a3;
        if (!*a3)
        {
          v21 = 1024;
        }

        v22 = 2 << ~__clz(v21 - 1);
        if (v21 >= 2)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        v24 = malloc_type_calloc(1uLL, 48 * v23 + 32, 0x1000040E0EAB150uLL);
        if (v24)
        {
          v25 = v23 - 1;
          if (v23 >= 2 && 2 << ~__clz(v25) != v23)
          {
            ofi_cq_init_cold_2();
          }

          *v24 = v23;
          v24[1] = v25;
          v24[2] = 0;
          v24[3] = 0;
          *(a4 + 304) = v24;
          if ((*(*(a4 + 32) + 207) & 2) == 0)
          {
            v26 = &util_peer_cq_owner_ops;
LABEL_33:
            v28 = *(a4 + 288);
            *v28 = 24;
            v28[1] = a4;
            v28[2] = &util_peer_cq_fi_ops;
            v28[3] = v26;
LABEL_34:
            v29 = *(a3 + 20);
            if (v29 <= 2)
            {
              if (!v29)
              {
                goto LABEL_48;
              }

              if (v29 != 1)
              {
                if (v29 != 2)
                {
                  goto LABEL_57;
                }

                v30 = *(a3 + 32);
LABEL_44:
                if (v30)
                {
                  *(a4 + 40) = v30;
                  v31 = (*(*(*(v30 + 40) + 24) + 16))();
                  if (v31)
                  {
                    v13 = v31;
                    if (*(a4 + 272))
                    {
                      (*(*(*(a4 + 40) + 16) + 8))();
                      *(a4 + 40) = 0;
                    }

                    goto LABEL_42;
                  }
                }

LABEL_48:
                v13 = 0;
                atomic_fetch_add((*(a4 + 32) + 176), 1u);
                return v13;
              }
            }

            else if ((v29 - 3) >= 4)
            {
LABEL_57:
              ofi_cq_init_cold_3();
            }

            *(a4 + 272) = 1;
            v13 = (*(*(*(*(a4 + 32) + 56) + 24) + 32))();
            if (v13)
            {
LABEL_42:
              util_peer_cq_cleanup(a4);
LABEL_52:
              ofi_genlock_destroy((a4 + 72));
LABEL_53:
              ofi_genlock_destroy((a4 + 168));
              return v13;
            }

            v30 = 0;
            goto LABEL_44;
          }

          v27 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
          *(a4 + 312) = v27;
          if (v27)
          {
            v26 = &util_peer_cq_src_owner_ops;
            goto LABEL_33;
          }

          free(*(a4 + 304));
        }

        else
        {
          *(a4 + 304) = 0;
        }

        free(*(a4 + 288));
      }

      v13 = 4294967284;
      goto LABEL_52;
    }
  }

  return v11;
}

uint64_t util_cq_close(void *a1)
{
  v2 = ofi_cq_cleanup(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

__n128 util_cq_read_msg(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *a1 = (*a1 + 24);
  return result;
}

__n128 util_cq_read_data(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(v2 + 32) = *(a2 + 32);
  *v2 = result;
  *(v2 + 16) = v4;
  *a1 += 40;
  return result;
}

__n128 util_cq_read_tagged(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  *v2 = result;
  *a1 += 48;
  return result;
}

uint64_t util_peer_cq_write_src(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 8);
  (*(v15 + 248))(v15 + 176);
  v16 = *(v15 + 304);
  v17 = v16[3];
  if ((*v16 - v17 + v16[2]) < 2)
  {
    v18 = ofi_cq_write_overflow(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v18 = 0;
    v19 = v16[1] & v17;
    *(*(v15 + 312) + 8 * v19) = a8;
    v20 = &v16[6 * v19];
    v20[4] = a2;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    v20[9] = a7;
    v16[3] = v17 + 1;
  }

  (*(v15 + 256))(v15 + 176);
  v21 = *(v15 + 40);
  if (v21)
  {
    (*(v21 + 72))();
  }

  return v18;
}

uint64_t util_peer_cq_writeerr(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  (*(v3 + 248))(v3 + 176);
  inserted = util_cq_insert_error(v3, a2);
  (*(v3 + 256))(v3 + 176);
  v5 = *(v3 + 40);
  if (v5)
  {
    (*(v5 + 72))();
  }

  return inserted;
}

uint64_t util_peer_cq_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 8);
  (*(v13 + 248))(v13 + 176);
  v14 = *(v13 + 304);
  v15 = v14[3];
  if ((*v14 - v15 + v14[2]) < 2)
  {
    v16 = ofi_cq_write_overflow(v13, a2, a3, a4, a5, a6, a7, -1);
  }

  else
  {
    v16 = 0;
    v17 = &v14[6 * (v14[1] & v15)];
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a5;
    v17[8] = a6;
    v17[9] = a7;
    v14[3] = v15 + 1;
  }

  (*(v13 + 256))(v13 + 176);
  v18 = *(v13 + 40);
  if (v18)
  {
    (*(v18 + 72))();
  }

  return v16;
}

uint64_t ofi_trywait(uint64_t a1, uint64_t **a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3;
  while (1)
  {
    v5 = *a2;
    v6 = **a2;
    if ((v6 - 13) >= 3)
    {
      break;
    }

    v5 = v5[5];
LABEL_6:
    result = (v5[10])();
    if (result)
    {
      return result;
    }

    ++a2;
    if (!--v4)
    {
      return 0;
    }
  }

  if (v6 == 16)
  {
    goto LABEL_6;
  }

  return 4294967274;
}

uint64_t ofi_check_wait_attr(uint64_t a1, uint64_t a2)
{
  if ((*a2 - 3) >= 4 && *a2 != 1)
  {
    if (!fi_log_enabled(a1, 0, 1))
    {
      return 4294967274;
    }

    v4 = *__error();
    fi_log(a1, 0, 1, "ofi_check_wait_attr", 91, "invalid wait object type\n");
    goto LABEL_12;
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  if (fi_log_enabled(a1, 0, 1))
  {
    v4 = *__error();
    fi_log(a1, 0, 1, "ofi_check_wait_attr", 96, "invalid flags\n");
LABEL_12:
    *__error() = v4;
  }

  return 4294967274;
}

uint64_t fi_wait_cleanup(uint64_t a1)
{
  if (atomic_load((a1 + 48)))
  {
    return 4294967280;
  }

  result = (*(*(*(a1 + 40) + 16) + 8))();
  if (!result)
  {
    v5 = (a1 + 88);
    for (i = *(a1 + 88); i != v5; i = *v5)
    {
      v6 = *i;
      v7 = i[1];
      *v7 = *i;
      v6[1] = v7;
      free(i[8]);
      free(i);
    }

    pthread_mutex_destroy((a1 + 104));
    result = 0;
    atomic_fetch_add((*(a1 + 32) + 120), 0xFFFFFFFF);
  }

  return result;
}

uint64_t ofi_wait_init(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a3 + 56) = *(a1 + 136);
  *(a3 + 48) = 0;
  *a3 = 16;
  v3 = *a2 - 1;
  if (v3 >= 6 || ((0x3Du >> v3) & 1) == 0)
  {
    ofi_wait_init_cold_1();
  }

  *(a3 + 64) = dword_29ED12D00[v3];
  v8 = 0;
  v9 = 0;
  v6 = fi_poll_create_(*(a1 + 136), 0, &v8, &v9);
  if (!v6)
  {
    *(a3 + 40) = v9;
    pthread_mutex_init((a3 + 104), 0);
    *(a3 + 88) = a3 + 88;
    *(a3 + 96) = a3 + 88;
    *(a3 + 32) = a1;
    atomic_fetch_add((a1 + 120), 1u);
  }

  return v6;
}

uint64_t ofi_wait_fdset_del(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  ++*(a1 + 272);
  if (*(a1 + 64) == 3)
  {
    v2 = *(a1 + 264);
    changelist.ident = a2;
    *&changelist.filter = 196607;
    memset(&changelist.fflags, 0, 20);
    v8 = a2;
    v9 = 196606;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    if (kevent(v2, &changelist, 2, 0, 0, 0) < 0 && *__error() != 2)
    {
      result = -*__error();
    }

    else
    {
      result = 0;
    }

    v4 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = *(*(a1 + 264) + 224);
    v6 = *MEMORY[0x29EDCA608];

    return v5();
  }

  return result;
}

uint64_t ofi_wait_del_fd(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 104));
  v4 = (a1 + 248);
  while (1)
  {
    v4 = *v4;
    if (v4 == (a1 + 248))
    {
      break;
    }

    if (v4[4] == a2)
    {
      if (atomic_fetch_add(v4 + 10, 0xFFFFFFFF) == 1)
      {
        v5 = *v4;
        v6 = *(v4 + 1);
        *v6 = *v4;
        *(v5 + 8) = v6;
        ofi_wait_fdset_del(a1, v4[4]);
        free(v4);
      }

      v7 = 0;
      goto LABEL_10;
    }
  }

  if (fi_log_enabled(*(a1 + 56), 2, 1))
  {
    v8 = *__error();
    fi_log(*(a1 + 56), 2, 1, "ofi_wait_del_fd", 211, "Given fd (%d) not found in wait list - %p\n", a2, a1);
    *__error() = v8;
  }

  v7 = 4294967274;
LABEL_10:
  pthread_mutex_unlock((a1 + 104));
  return v7;
}

uint64_t ofi_wait_add_fd(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  pthread_mutex_lock((a1 + 104));
  v12 = a1 + 248;
  while (1)
  {
    v12 = *v12;
    if (v12 == a1 + 248)
    {
      break;
    }

    if (*(v12 + 16) == a2)
    {
      v13 = 0;
      atomic_fetch_add((v12 + 40), 1u);
      goto LABEL_11;
    }
  }

  v14 = ofi_wait_fdset_add(a1, a2, a3, a6);
  if (v14)
  {
    v13 = v14;
    if (fi_log_enabled(*(a1 + 56), 0, 1))
    {
      v15 = *__error();
      fi_log(*(a1 + 56), 0, 1, "ofi_wait_add_fd", 251, "Unable to add fd to epoll\n");
      *__error() = v15;
    }
  }

  else
  {
    v16 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00403055DAB9uLL);
    if (v16)
    {
      v13 = 0;
      v16[4] = a2;
      *(v16 + 3) = a4;
      *(v16 + 4) = a5;
      v16[10] = 1;
      v17 = *(a1 + 256);
      v18 = *v17;
      *v16 = *v17;
      *(v16 + 1) = v17;
      *(v18 + 8) = v16;
      *v17 = v16;
    }

    else
    {
      ofi_wait_fdset_del(a1, a2);
      v13 = 4294967284;
    }
  }

LABEL_11:
  pthread_mutex_unlock((a1 + 104));
  return v13;
}

uint64_t ofi_wait_fdset_add(uint64_t a1, int a2, char a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  ++*(a1 + 272);
  if (*(a1 + 64) == 3)
  {
    v4 = *(a1 + 264);
    if (a3)
    {
      changelist[0].ident = a2;
      *&changelist[0].filter = 0x1FFFFLL;
      changelist[0].data = 0;
      changelist[0].udata = a4;
      v5 = 1;
      if ((a3 & 4) == 0)
      {
LABEL_10:
        v10 = kevent(v4, changelist, v5, 0, 0, 0);
        result = 0;
        if (v10 < 0)
        {
          result = -*__error();
        }

        v11 = *MEMORY[0x29EDCA608];
        return result;
      }
    }

    else
    {
      v5 = 0;
      if ((a3 & 4) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = &changelist[v5];
    v9->ident = a2;
    *&v9->filter = 131070;
    ++v5;
    v9->data = 0;
    v9->udata = a4;
    goto LABEL_10;
  }

  v6 = *(*(a1 + 264) + 216);
  v7 = *MEMORY[0x29EDCA608];

  return v6();
}