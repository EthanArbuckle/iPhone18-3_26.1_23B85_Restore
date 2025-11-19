uint64_t _newrpclib_socparms2netid(int a1, int a2, int a3, const char **a4)
{
  v4 = 0;
  *a4 = 0;
  v5 = "udp";
  v6 = &dword_27A70EE04;
  do
  {
    if (*(v6 - 1) != a1)
    {
      goto LABEL_16;
    }

    if (a1 == 1)
    {
      if (a3)
      {
        v8 = __error();
        goto LABEL_23;
      }

      if (*v6 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (a1 != 30 && a1 != 2)
    {
      goto LABEL_20;
    }

    if (a2)
    {
      if (*v6 == a2)
      {
        if (!a3)
        {
          goto LABEL_21;
        }

LABEL_14:
        if (v6[1] == a3)
        {
LABEL_21:
          result = 0;
          *a4 = v5;
          return result;
        }
      }
    }

    else if (a3)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = 1;
LABEL_16:
    v5 = *(v6 + 3);
    v6 += 6;
  }

  while (v5);
  if (!v4)
  {
LABEL_20:
    v8 = __error();
    v9 = 46;
    goto LABEL_24;
  }

  v7 = a2 - 3;
  v8 = __error();
  if (v7 <= 0xFFFFFFFD)
  {
    v9 = 41;
    goto LABEL_24;
  }

LABEL_23:
  v9 = 43;
LABEL_24:
  *v8 = v9;
  return 0xFFFFFFFFLL;
}

uint64_t _newrpclib_netid2socparms(char *__s2, _DWORD *a2, _DWORD *a3, _DWORD *a4, int a5)
{
  if (!__s2)
  {
    v15 = 22;
LABEL_19:
    *__error() = v15;
    return 0xFFFFFFFFLL;
  }

  v10 = &netids;
  v11 = "udp";
  while (1)
  {
    result = strncmp(v11, __s2, 0x80uLL);
    if (!result)
    {
      break;
    }

    v13 = v10[3];
    v10 += 3;
    v11 = v13;
    if (!v13)
    {
      v10 = &unk_27A70EED0;
      break;
    }
  }

  if (a2)
  {
    if (a5 && *(v10 + 5))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v10 + 2);
    }

    *a2 = v14;
  }

  if (a3)
  {
    *a3 = *(v10 + 3);
  }

  if (a4)
  {
    *a4 = *(v10 + 4);
  }

  if (result)
  {
    v15 = 2;
    goto LABEL_19;
  }

  return result;
}

uint64_t _newrpclib_uaddr2sa(const char *a1, char *__s2, unsigned __int8 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *v15 = 0u;
  v14 = 0;
  v13 = 0;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (!__s2)
  {
    goto LABEL_4;
  }

  v5 = *a3;
  if (_newrpclib_netid2socparms(__s2, &v14 + 1, &v14, &v13, 0))
  {
    goto LABEL_4;
  }

  if (HIDWORD(v14) == 30)
  {
    if (v5 >= 0x1C && strlen(a1) <= 0x36)
    {
      v12 = ugetport(a1, v15);
      if ((v12 & 0x80000000) == 0)
      {
        v9 = v12;
        *a3 = 0;
        *(a3 + 6) = 0;
        *(a3 + 2) = 0;
        *(a3 + 1) = 0;
        v10 = inet_pton(30, v15, a3 + 8);
        if (v10 == 1)
        {
          result = 0;
          v11 = 7708;
          goto LABEL_23;
        }

LABEL_24:
        if (v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    if (HIDWORD(v14) != 2)
    {
      if (HIDWORD(v14) == 1 && v5 >= 0x6A)
      {
        *(a3 + 90) = 0u;
        *(a3 + 4) = 0u;
        *(a3 + 5) = 0u;
        *(a3 + 2) = 0u;
        *(a3 + 3) = 0u;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        if (strnlen(a1, 0x68uLL) <= 0x67)
        {
          *a3 = 362;
          strlcpy(a3 + 2, a1, 0x68uLL);
          result = 0;
          goto LABEL_6;
        }
      }

      goto LABEL_4;
    }

    if (v5 >= 0x10 && strlen(a1) <= 0x36)
    {
      v8 = ugetport(a1, v15);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = v8;
        *a3 = 0;
        *(a3 + 1) = 0;
        v10 = inet_pton(2, v15, a3 + 4);
        if (v10 == 1)
        {
          result = 0;
          v11 = 528;
LABEL_23:
          *a3 = v11;
          *(a3 + 1) = bswap32(v9) >> 16;
          goto LABEL_6;
        }

        goto LABEL_24;
      }
    }
  }

LABEL_4:
  *__error() = 22;
LABEL_5:
  result = 0xFFFFFFFFLL;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ugetport(const char *a1, char *a2)
{
  __endptr = 0;
  v4 = &a1[strnlen(a1, 0x400uLL)];
  if (!*v4)
  {
    v7 = 0;
    LODWORD(v5) = 0;
    v8 = 1;
    while (1)
    {
      if (v4 == a1)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = v8;
      v10 = v4;
      while (*v10 != 46)
      {
        if (--v10 == a1)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v11 = strtol(v10 + 1, &__endptr, 10);
      if (v11 > 0xFF)
      {
        return 0xFFFFFFFFLL;
      }

      v12 = *__endptr;
      if (v12 != 46 && v12 != 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v7)
      {
        break;
      }

      v8 = 0;
      v14 = *v10;
      v4 = &v10[-(v14 == 46)];
      v5 = v5 | v11;
      v7 = 1;
      if ((v9 & 1) == 0)
      {
        v10 -= v14 == 46;
LABEL_20:
        strlcpy(a2, a1, v10 - a1 + 1);
        return v5;
      }
    }

    v5 = v5 | (v11 << 8);
    goto LABEL_20;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _newrpclib_sa2uaddr(char *__s1, char **a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *v13 = 0u;
  *a2 = 0;
  if (!__s1)
  {
    goto LABEL_14;
  }

  v4 = __s1[1];
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = 4;
LABEL_7:
      if (inet_ntop(v4, &__s1[v5], v13, 0x2Eu))
      {
        v6 = bswap32(*(__s1 + 1));
        v7 = asprintf(a2, "%s.%d.%d", v13, HIBYTE(v6), BYTE2(v6)) == -1;
        goto LABEL_9;
      }

LABEL_15:
      result = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

    if (v4 == 30)
    {
      v5 = 8;
      goto LABEL_7;
    }

LABEL_14:
    *__error() = 22;
    goto LABEL_15;
  }

  v10 = __s1[2];
  v9 = __s1 + 2;
  if (!v10 || strnlen(v9, 0x68uLL) == 104)
  {
    goto LABEL_14;
  }

  v12 = strdup(v9);
  *a2 = v12;
  v7 = v12 == 0;
LABEL_9:
  if (v7)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void freenetconfigent(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[2]);
    free(a1[3]);

    free(a1);
  }
}

_DWORD *getnetconfigent(char *__s2)
{
  v2 = "udp";
  v3 = off_27A70EF00;
  while (strncmp(v2, __s2, 0x80uLL))
  {
    v2 = v3[2];
    v3 += 5;
    if (!v2)
    {
      v4 = 0;
      *__error() = 2;
      return v4;
    }
  }

  v4 = calloc(1uLL, 0x20uLL);
  if (v4)
  {
    v5 = strdup(*(v3 - 2));
    *v4 = v5;
    v4[2] = *(v3 - 2);
    v6 = strdup(*v3);
    *(v4 + 2) = v6;
    v7 = strdup(v3[1]);
    *(v4 + 3) = v7;
    if (!v5 || !v6 || !v7)
    {
      freenetconfigent(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t set_local_ephemeral_sockname(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = getenv("TMPDIR");
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  if (!v4 || !*v4)
  {
    v4 = "/tmp";
  }

  if (snprintf(__str, 0x68uLL, "%s/rpc.XXXXXXXX.%s", v4, a2) < 0x69)
  {
    v6 = strlen(a2);
    v7 = mkstemps(__str, v6 + 1);
    unlink(__str);
    close(v7);
    strlcpy((a1 + 2), __str, 0x68uLL);
    result = 0;
  }

  else
  {
    *__error() = 63;
    result = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cache_init()
{
  result = pthread_rwlock_init(&cache_rwlock, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      cache_init_cold_1();
    }

    abort();
  }

  return result;
}

double reset_if_addr_cache()
{
  v1 = qword_280A69688;
  v0 = qword_280A69690;
  if (qword_280A69688)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = v0 + 16 * v2;
      v5 = *v4;
      if (*v4)
      {
        do
        {
          v6 = v5[2];
          *v4 = v6;
          if (!v6)
          {
            *(v4 + 8) = v4;
          }

          free(v5);
          v0 = qword_280A69690;
          v4 = qword_280A69690 + 16 * v2;
          v5 = *v4;
        }

        while (*v4);
        v1 = qword_280A69688;
      }

      v2 = ++v3;
    }

    while (v1 > v3);
  }

  free(v0);
  if (qword_280A69698)
  {
    MEMORY[0x277CA8E70]();
  }

  qword_280A69698 = 0;
  result = 0.0;
  if_addr_cache = 0u;
  *&qword_280A69688 = 0u;
  return result;
}

BOOL compare_sa(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != a2[1])
  {
    return 0;
  }

  if (v5 != 30)
  {
    if (v5 != 2)
    {
      if (a4)
      {
        *a4 = 8 * v4;
      }

      return memcmp(a1, a2, v4) == 0;
    }

    v6 = *(a1 + 1);
    v7 = *(a2 + 1);
    if (a3)
    {
      v8 = *(a3 + 4);
      if (a4)
      {
        if (v8 != -1)
        {
          v9 = 0;
          v10 = 31;
          do
          {
            if (((v8 >> v10) & 1) == 0)
            {
              break;
            }

            ++v9;
            --v10;
          }

          while (v9 != 32);
          goto LABEL_37;
        }

LABEL_36:
        v9 = 32;
LABEL_37:
        *a4 = v9;
      }
    }

    else
    {
      v8 = -1;
      if (a4)
      {
        goto LABEL_36;
      }
    }

    return (v8 & (v7 ^ v6)) == 0;
  }

  v12 = (a3 + 8);
  if (!a3)
  {
    v12 = &compare_sa_allones;
  }

  if (a4)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v12[v14];
      if (v15 != -1)
      {
        break;
      }

LABEL_21:
      v13 += 32;
      if (++v14 == 4)
      {
        v17 = 128;
        goto LABEL_27;
      }
    }

    v16 = 0;
    while (((v15 >> (v16 + 31)) & 1) != 0)
    {
      if (--v16 == -32)
      {
        goto LABEL_21;
      }
    }

    v17 = v13 - v16;
LABEL_27:
    *a4 = v17;
  }

  v19 = 0;
  v20 = a1 + 8;
  do
  {
    v21 = (*&a2[v19 * 4 + 8] ^ *&v20[v19 * 4]) & v12[v19];
    result = v21 == 0;
    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19 == 3;
    }

    ++v19;
  }

  while (!v22);
  return result;
}

uint64_t _newrpclib_xdr_pmap(uint64_t (***a1)(void), int *a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    result = _newrpclib_xdr_uint32_t(a1, a2 + 1);
    if (result)
    {
      result = _newrpclib_xdr_uint32_t(a1, a2 + 2);
      if (result)
      {
        return _newrpclib_xdr_uint32_t(a1, a2 + 3) != 0;
      }
    }
  }

  return result;
}

BOOL _newrpclib_xdr_pmaplist(uint64_t (***a1)(void), int *a2)
{
  v2 = a2;
  v9 = 0;
  v4 = *a1;
  if (*a1 == 2)
  {
    if (a2)
    {
      LOBYTE(v6) = 0;
      while (_newrpclib_xdr_pmap(a1, v2))
      {
        v7 = v2[2];
        if (v6)
        {
          free(v2);
        }

        v6 = 1;
        v2 = v7;
        if (!v7)
        {
          return v6;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    if (_newrpclib_xdr_pmap(a1, a2))
    {
      while (_newrpclib_xdr_int32_t(a1, &v9))
      {
        if (!v9)
        {
          v2[2] = 0;
          return 1;
        }

        v6 = v2[2];
        if (!v6)
        {
          v6 = calloc(1uLL, 0x18uLL);
          v2[2] = v6;
          if (!v6)
          {
            return v6;
          }

          if (!v9)
          {
            return 1;
          }
        }

        v2 = v6;
        if (!_newrpclib_xdr_pmap(a1, v6))
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    return 1;
  }

  while (_newrpclib_xdr_pmap(a1, v2))
  {
    v2 = v2[2];
    v9 = v2 != 0;
    v5 = _newrpclib_xdr_int32_t(a1, &v9);
    if (!v5 || !v2)
    {
      return v5 != 0;
    }
  }

  return 0;
}

uint64_t _newrpclib_xdr_pmap_call_args(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    result = _newrpclib_xdr_uint32_t(a1, (a2 + 4));
    if (result)
    {
      result = _newrpclib_xdr_uint32_t(a1, (a2 + 8));
      if (result)
      {
        return _newrpclib_xdr_bytes(a1, (a2 + 24), (a2 + 16), 0x10000u) != 0;
      }
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_pmap_call_result(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    return _newrpclib_xdr_bytes(a1, (a2 + 16), (a2 + 8), 0x10000u) != 0;
  }

  return result;
}

uint64_t _newrpclib_pmap_set(int a1, int a2, int a3, int a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14 = -1;
  if (_newrpclib_pmap_wakeup())
  {
    result = 0;
  }

  else
  {
    v12 = 0;
    v15[0] = 0x100007F6F000210;
    v15[1] = 0;
    result = _newrpclib_clntudp_bufcreate_timeout(v15, 0x186A0u, 2u, &v14, 400, 400, &set_retry_timeout, &set_total_timeout);
    if (result)
    {
      v9 = result;
      v13[0] = a1;
      v13[1] = a2;
      v13[2] = a3;
      v13[3] = a4;
      v10 = _newrpclib_pmapproc_set_2(v13, &v12, result);
      (*(*(v9 + 8) + 32))(v9);
      if (v10)
      {
        result = 0;
      }

      else
      {
        result = v12;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_pmap_unset(int a1, int a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = -1;
  if (_newrpclib_pmap_wakeup())
  {
    result = 0;
  }

  else
  {
    v8 = 0;
    v11[0] = 0x100007F6F000210;
    v11[1] = 0;
    result = _newrpclib_clntudp_bufcreate_timeout(v11, 0x186A0u, 2u, &v10, 400, 400, &unset_retry_timeout, &unset_total_timeout);
    if (result)
    {
      v5 = result;
      v9[0] = a1;
      v9[1] = a2;
      v9[2] = 0;
      v9[3] = 0;
      v6 = _newrpclib_pmapproc_unset_2(v9, &v8, result);
      (*(*(v5 + 8) + 32))(v5);
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = v8;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_pmapproc_callit_2(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return (**(a3 + 8))(a3, 5, _newrpclib_xdr_pmap_call_args, a1, _newrpclib_xdr_pmap_call_result, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_callit_3(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return (**(a3 + 8))(a3, 5, _newrpclib_xdr_rpcb_rmtcallargs, a1, _newrpclib_xdr_rpcb_rmtcallres, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_uaddr2taddr_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return (**(a3 + 8))(a3, 7, _newrpclib_xdr_wrapstring, &v4, _newrpclib_xdr_netbuf, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_bcast_4(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return (**(a3 + 8))(a3, 5, _newrpclib_xdr_rpcb_rmtcallargs, a1, _newrpclib_xdr_rpcb_rmtcallres, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_uaddr2taddr_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return (**(a3 + 8))(a3, 7, _newrpclib_xdr_wrapstring, &v4, _newrpclib_xdr_netbuf, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_indirect_4(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return (**(a3 + 8))(a3, 10, _newrpclib_xdr_rpcb_rmtcallargs, a1, _newrpclib_xdr_rpcb_rmtcallres, a2, 25, 0);
}

uint64_t _newrpclib_rpcbproc_getstat_4(_OWORD *a1, uint64_t a2)
{
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return (**(a2 + 8))(a2, 12, _newrpclib_xdr_void, 0, _newrpclib_xdr_rpcb_stat_byvers, a1, 25, 0);
}

uint64_t _newrpclib_xdr_rpcb(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    result = _newrpclib_xdr_uint32_t(a1, (a2 + 4));
    if (result)
    {
      result = _newrpclib_xdr_string(a1, (a2 + 8), 0x10000u);
      if (result)
      {
        result = _newrpclib_xdr_string(a1, (a2 + 16), 0x10000u);
        if (result)
        {
          return _newrpclib_xdr_string(a1, (a2 + 24), 0x10000u) != 0;
        }
      }
    }
  }

  return result;
}

BOOL _newrpclib_xdr_rp__list(uint64_t (***a1)(void), uint64_t a2)
{
  v2 = a2;
  v9 = 0;
  v4 = *a1;
  if (*a1 == 2)
  {
    if (a2)
    {
      LOBYTE(v6) = 0;
      while (_newrpclib_xdr_rpcb(a1, v2))
      {
        v7 = v2[4];
        if (v6)
        {
          free(v2);
        }

        v6 = 1;
        v2 = v7;
        if (!v7)
        {
          return v6;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    if (_newrpclib_xdr_rpcb(a1, a2))
    {
      while (_newrpclib_xdr_int32_t(a1, &v9))
      {
        if (!v9)
        {
          v2[4] = 0;
          return 1;
        }

        v6 = v2[4];
        if (!v6)
        {
          v6 = calloc(1uLL, 0x28uLL);
          v2[4] = v6;
          if (!v6)
          {
            return v6;
          }

          if (!v9)
          {
            return 1;
          }
        }

        v2 = v6;
        if (!_newrpclib_xdr_rpcb(a1, v6))
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    return 1;
  }

  while (_newrpclib_xdr_rpcb(a1, v2))
  {
    v2 = v2[4];
    v9 = v2 != 0;
    v5 = _newrpclib_xdr_int32_t(a1, &v9);
    if (!v5 || !v2)
    {
      return v5 != 0;
    }
  }

  return 0;
}

uint64_t _newrpclib_xdr_rpcb_rmtcallargs(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    result = _newrpclib_xdr_uint32_t(a1, (a2 + 4));
    if (result)
    {
      result = _newrpclib_xdr_uint32_t(a1, (a2 + 8));
      if (result)
      {
        return _newrpclib_xdr_bytes(a1, (a2 + 24), (a2 + 16), 0x10000u) != 0;
      }
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_rpcb_rmtcallres(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_string(a1, a2, 0x10000u);
  if (result)
  {
    return _newrpclib_xdr_bytes(a1, (a2 + 16), (a2 + 8), 0x10000u) != 0;
  }

  return result;
}

uint64_t _newrpclib_xdr_rpcb_entry(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_string(a1, a2, 0x10000u);
  if (result)
  {
    result = _newrpclib_xdr_string(a1, (a2 + 8), 0x10000u);
    if (result)
    {
      result = _newrpclib_xdr_uint32_t(a1, (a2 + 16));
      if (result)
      {
        result = _newrpclib_xdr_string(a1, (a2 + 24), 0x10000u);
        if (result)
        {
          return _newrpclib_xdr_string(a1, (a2 + 32), 0x10000u) != 0;
        }
      }
    }
  }

  return result;
}

BOOL _newrpclib_xdr_rpcb_entry_list(uint64_t (***a1)(void), uint64_t a2)
{
  v2 = a2;
  v9 = 0;
  v4 = *a1;
  if (*a1 == 2)
  {
    if (a2)
    {
      LOBYTE(v6) = 0;
      while (_newrpclib_xdr_rpcb_entry(a1, v2))
      {
        v7 = v2[5];
        if (v6)
        {
          free(v2);
        }

        v6 = 1;
        v2 = v7;
        if (!v7)
        {
          return v6;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    if (_newrpclib_xdr_rpcb_entry(a1, a2))
    {
      while (_newrpclib_xdr_int32_t(a1, &v9))
      {
        if (!v9)
        {
          v2[5] = 0;
          return 1;
        }

        v6 = v2[5];
        if (!v6)
        {
          v6 = calloc(1uLL, 0x30uLL);
          v2[5] = v6;
          if (!v6)
          {
            return v6;
          }

          if (!v9)
          {
            return 1;
          }
        }

        v2 = v6;
        if (!_newrpclib_xdr_rpcb_entry(a1, v6))
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    return 1;
  }

  while (_newrpclib_xdr_rpcb_entry(a1, v2))
  {
    v2 = v2[5];
    v9 = v2 != 0;
    v5 = _newrpclib_xdr_int32_t(a1, &v9);
    if (!v5 || !v2)
    {
      return v5 != 0;
    }
  }

  return 0;
}

BOOL _newrpclib_xdr_rpcbs_addrlist(uint64_t (***a1)(void), int *a2)
{
  v2 = a2;
  v11 = 0;
  v4 = *a1;
  if (*a1 == 2)
  {
    if (a2)
    {
      LOBYTE(v6) = 0;
      while (_newrpclib_xdr_uint32_t(a1, v2) && _newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_int32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_string(a1, v2 + 2, 0x10000u))
      {
        v9 = *(v2 + 3);
        if (v6)
        {
          free(v2);
        }

        v6 = 1;
        v2 = v9;
        if (!v9)
        {
          return v6;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    if (_newrpclib_xdr_uint32_t(a1, a2))
    {
      while (_newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_int32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_string(a1, v2 + 2, 0x10000u) && _newrpclib_xdr_int32_t(a1, &v11))
      {
        if (!v11)
        {
          *(v2 + 3) = 0;
          return 1;
        }

        v7 = *(v2 + 3);
        if (!v7)
        {
          v8 = calloc(1uLL, 0x20uLL);
          *(v2 + 3) = v8;
          if (!v8)
          {
            return 0;
          }

          v7 = v8;
          if (!v11)
          {
            return 1;
          }
        }

        v6 = 0;
        v2 = v7;
        if (!_newrpclib_xdr_uint32_t(a1, v7))
        {
          return v6;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    return 1;
  }

  while (_newrpclib_xdr_uint32_t(a1, v2) && _newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_int32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_string(a1, v2 + 2, 0x10000u))
  {
    v2 = *(v2 + 3);
    v11 = v2 != 0;
    v5 = _newrpclib_xdr_int32_t(a1, &v11);
    if (!v5 || !v2)
    {
      return v5 != 0;
    }
  }

  return 0;
}

BOOL _newrpclib_xdr_rpcbs_rmtcalllist(uint64_t (***a1)(void), int *a2)
{
  v2 = a2;
  v11 = 0;
  v4 = *a1;
  if (*a1 == 2)
  {
    if (a2)
    {
      LOBYTE(v6) = 0;
      while (_newrpclib_xdr_uint32_t(a1, v2) && _newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_uint32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_int32_t(a1, v2 + 4) && _newrpclib_xdr_int32_t(a1, v2 + 5) && _newrpclib_xdr_string(a1, v2 + 3, 0x10000u))
      {
        v9 = *(v2 + 4);
        if (v6)
        {
          free(v2);
        }

        v6 = 1;
        v2 = v9;
        if (!v9)
        {
          return v6;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    if (_newrpclib_xdr_uint32_t(a1, a2))
    {
      while (_newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_uint32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_int32_t(a1, v2 + 4) && _newrpclib_xdr_int32_t(a1, v2 + 5) && _newrpclib_xdr_string(a1, v2 + 3, 0x10000u) && _newrpclib_xdr_int32_t(a1, &v11))
      {
        if (!v11)
        {
          *(v2 + 4) = 0;
          return 1;
        }

        v7 = *(v2 + 4);
        if (!v7)
        {
          v8 = calloc(1uLL, 0x28uLL);
          *(v2 + 4) = v8;
          if (!v8)
          {
            return 0;
          }

          v7 = v8;
          if (!v11)
          {
            return 1;
          }
        }

        v6 = 0;
        v2 = v7;
        if (!_newrpclib_xdr_uint32_t(a1, v7))
        {
          return v6;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    return 1;
  }

  while (_newrpclib_xdr_uint32_t(a1, v2) && _newrpclib_xdr_uint32_t(a1, v2 + 1) && _newrpclib_xdr_uint32_t(a1, v2 + 2) && _newrpclib_xdr_int32_t(a1, v2 + 3) && _newrpclib_xdr_int32_t(a1, v2 + 4) && _newrpclib_xdr_int32_t(a1, v2 + 5) && _newrpclib_xdr_string(a1, v2 + 3, 0x10000u))
  {
    v2 = *(v2 + 4);
    v11 = v2 != 0;
    v5 = _newrpclib_xdr_int32_t(a1, &v11);
    if (!v5 || !v2)
    {
      return v5 != 0;
    }
  }

  return 0;
}

uint64_t _newrpclib_xdr_rpcb_stat(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_vector(a1, a2, 13, 4u, _newrpclib_xdr_int32_t);
  if (result)
  {
    result = _newrpclib_xdr_int32_t(a1, (a2 + 52));
    if (result)
    {
      result = _newrpclib_xdr_int32_t(a1, (a2 + 56));
      if (result)
      {
        result = _newrpclib_xdr_pointer(a1, (a2 + 64), 0x20uLL, _newrpclib_xdr_rpcbs_addrlist);
        if (result)
        {
          return _newrpclib_xdr_pointer(a1, (a2 + 72), 0x28uLL, _newrpclib_xdr_rpcbs_rmtcalllist) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_netbuf(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_uint32_t(a1, a2);
  if (result)
  {
    return _newrpclib_xdr_bytes(a1, (a2 + 16), (a2 + 8), 0x10000u) != 0;
  }

  return result;
}

BOOL _newrpclib_rpcb_getaddr_timeout(unsigned __int8 *a1, char *a2, unsigned int a3, unsigned int a4, uint64_t a5, __int128 *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 2;
  v24 = 4;
  memset(__src, 0, sizeof(__src));
  v6 = a1[1];
  if (v6 > 0x1E || ((1 << v6) & 0x40000006) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_13;
    }

    _newrpclib_rpcb_getaddr_timeout_cold_1(v6);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = *a1;
  __memcpy_chk();
  v15 = getrpcbind_handle(a2, __src, v13, a5, a6);
  if (!v15)
  {
    i = 4;
    goto LABEL_14;
  }

  v16 = v15;
  v17 = rpcbind_getaddr_generic(v15, v13, a2, a3, a4, __src);
  if (!handle_callerror(v16, &v23, &v24))
  {
    (*(*(v16 + 8) + 32))(v16);
    for (i = v24; i >= v23; i = (i - 1))
    {
LABEL_14:
      if (v13 != i)
      {
        v21 = getrpcbind_handle(a2, __src, i, a5, a6);
        if (v21)
        {
          v16 = v21;
          v17 = rpcbind_getaddr_generic(v21, i, a2, a3, a4, __src);
          if (handle_callerror(v16, &v23, &v24))
          {
            goto LABEL_21;
          }

          (*(*(v16 + 8) + 32))(v16);
        }
      }
    }

    goto LABEL_12;
  }

LABEL_21:
  (*(*(v16 + 8) + 32))(v16);
  if (!v17 || LOBYTE(__src[0]) > *a1)
  {
    goto LABEL_12;
  }

  if (a1[1] == 30)
  {
    v22 = *(a1 + 6);
  }

  else
  {
    v22 = 0;
  }

  memcpy(a1, __src, LOBYTE(__src[0]));
  if (a1[1] == 30 && v22 != *(a1 + 6))
  {
    *(a1 + 6) = v22;
  }

  result = 1;
LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *getrpcbind_handle(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v13 = 0;
  v11 = -1;
  v12 = 0;
  if (a3 == 2 && portmap_netid)
  {
    if (_newrpclib_netid2socparms(portmap_netid, &v13 + 1, &v13, &v12, 0))
    {
      v12 = 17;
    }
  }

  else if (_newrpclib_netid2socparms(a1, &v13 + 1, &v13, &v12, 0))
  {
    goto LABEL_14;
  }

  if (HIDWORD(v13) == 1)
  {
    if (v13 == 1)
    {
      return clntstrm_create_timeout(a2, 100000, a3, &v11, 0x190u, 0x190u, a4, a5);
    }

    goto LABEL_14;
  }

  if (HIDWORD(v13) != 30 && HIDWORD(v13) != 2)
  {
LABEL_14:
    v10 = _newrpclib___rpc_createerr();
    result = 0;
    *v10 = xmmword_2771E5590;
    return result;
  }

  if (v12 != 6)
  {
    if (v12 == 17)
    {
      *(a2 + 2) = 28416;
      return (_newrpclib_clntudp_bufcreate_timeout)(a2, 100000, a3, &v11, 400, 400, a4, a5);
    }

    goto LABEL_14;
  }

  *(a2 + 2) = 28416;
  return _newrpclib_clnttcp_create_timeout(a2, 100000, a3, &v11, 0x190u, 0x190u, a4, a5);
}

uint64_t rpcbind_getaddr_generic(uint64_t a1, int a2, char *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v30 = 0u;
  v31 = 0u;
  *v29 = 0;
  *_newrpclib___rpc_createerr() = 0;
  if ((a2 - 3) < 2)
  {
    *&v30 = __PAIR64__(a5, a4);
    *(&v30 + 1) = a3;
    *&v31 = &unk_2771E704D;
    *(&v31 + 1) = &unk_2771E704D;
    if (a2 == 3)
    {
      v12 = _newrpclib_rpcbproc_getaddr_3(&v30, v29, a1);
    }

    else
    {
      v12 = _newrpclib_rpcbproc_getaddr_4(&v30, v29, a1);
    }

    v15 = v12;
    v16 = *(*(a1 + 8) + 16);
    v17 = _newrpclib___rpc_createerr();
    v16(a1, v17 + 4);
    if (v15)
    {
      if ((v15 & 0xFFFFFFFE) != 0xE)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (!**v29)
    {
      v15 = 15;
      goto LABEL_18;
    }

    if (_newrpclib_uaddr2sa(*v29, a3, a6))
    {
      *(_newrpclib___rpc_createerr() + 1) = 12;
      v18 = *__error();
      goto LABEL_17;
    }

    return 1;
  }

  if (a2 == 2)
  {
    v27 = 0;
    if (*(a6 + 1) == 30)
    {
      if (*(a6 + 8) || *(a6 + 12) || (v20 = *(a6 + 16), v20 != -65536) && (v20 || (*(a6 + 20) | 0x1000000) == 0x1000000))
      {
        *_newrpclib___rpc_createerr() = 14;
        *(_newrpclib___rpc_createerr() + 1) = 12;
        v13 = _newrpclib___rpc_createerr();
        result = 0;
        v13[2] = 22;
        return result;
      }
    }

    if (_newrpclib_netid2socparms(a3, 0, 0, &v27, 1))
    {
      *_newrpclib___rpc_createerr() = 14;
      *(_newrpclib___rpc_createerr() + 1) = 12;
      v21 = *__error();
      v22 = _newrpclib___rpc_createerr();
      result = 0;
      v22[2] = v21;
      return result;
    }

    v28[0] = a4;
    v28[1] = a5;
    v28[2] = v27;
    v28[3] = 0;
    v23 = _newrpclib_pmapproc_getport_2(v28, &v27 + 1, a1);
    v24 = *(*(a1 + 8) + 16);
    v25 = _newrpclib___rpc_createerr();
    v24(a1, v25 + 4);
    if (!v23)
    {
      if ((HIDWORD(v27) - 0x10000) <= 0xFFFF0000)
      {
        v26 = _newrpclib___rpc_createerr();
        result = 0;
        *v26 = 15;
        return result;
      }

      *(a6 + 2) = bswap32(HIDWORD(v27)) >> 16;
    }

    return 1;
  }

  *(_newrpclib___rpc_createerr() + 1) = 12;
  v18 = 22;
LABEL_17:
  *(_newrpclib___rpc_createerr() + 2) = v18;
  v15 = 14;
LABEL_18:
  v19 = _newrpclib___rpc_createerr();
  result = 0;
  *v19 = v15;
  return result;
}

uint64_t handle_callerror(uint64_t a1, int *a2, unsigned int *a3)
{
  v10 = 0;
  v9 = 0;
  if (*_newrpclib___rpc_createerr())
  {
    return 1;
  }

  (*(*(a1 + 8) + 16))(a1, &v9);
  if (!v9)
  {
    return 1;
  }

  if (v9 == 10)
  {
    return 0;
  }

  if (v9 != 9)
  {
    *_newrpclib___rpc_createerr() = 14;
    return 1;
  }

  if (a2)
  {
    v7 = *a2;
    if (*a2 <= HIDWORD(v9))
    {
      v7 = HIDWORD(v9);
    }

    *a2 = v7;
  }

  if (!a3)
  {
    return 0;
  }

  result = 0;
  v8 = *a3;
  if (*a3 >= v10)
  {
    v8 = v10;
  }

  *a3 = v8;
  return result;
}

BOOL _newrpclib_rpcb_getversaddr_timeout(unsigned __int8 *a1, char *a2, int a3, int a4, uint64_t a5, __int128 *a6)
{
  v10 = getrpcbind_handle(a2, a1, 4, a5, a6);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  *v14 = 0;
  v15[0] = a3;
  v15[1] = a4;
  v17 = &unk_2771E704D;
  v18 = &unk_2771E704D;
  v16 = a2;
  if (_newrpclib_rpcbproc_getversaddr_4(v15, v14, v10))
  {
    v12 = 0;
  }

  else
  {
    v12 = _newrpclib_uaddr2sa(*v14, a2, a1) == 0;
  }

  (*(v11[1] + 32))(v11);
  return v12;
}

BOOL _newrpclib_rpcb_getaddr_for_host(char *a1, char *__s2, unsigned int a3, unsigned int a4, unsigned __int8 *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (_newrpclib_netid2socparms(__s2, &v13, 0, 0, 0) || (memset(__src, 0, sizeof(__src)), gethostaddr(a1, v13, __src)))
  {
    result = 0;
  }

  else
  {
    result = _newrpclib_rpcb_getaddr_timeout(__src, __s2, a3, a4, 0, 0);
    if (result)
    {
      if (*a5 >= LOBYTE(__src[0]))
      {
        v12 = LOBYTE(__src[0]);
      }

      else
      {
        v12 = *a5;
      }

      memcpy(a5, __src, v12);
      result = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *_newrpclib_rpcb_set(char *a1, unsigned int a2, unsigned int a3, char *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  memset(&v19, 0, sizeof(v19));
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (_newrpclib_netid2socparms(a1, &v16, 0, 0, 0))
  {
    goto LABEL_9;
  }

  memset(v20, 0, sizeof(v20));
  switch(v16)
  {
    case 1:
      LOWORD(v20[0]) = 362;
      break;
    case 0x1E:
      LOWORD(v20[0]) = 7708;
      *(v20 + 8) = *MEMORY[0x277D85EF0];
      break;
    case 2:
      LOWORD(v20[0]) = 528;
      DWORD1(v20[0]) = 16777343;
      break;
    default:
LABEL_9:
      result = 0;
      goto LABEL_10;
  }

  if (_newrpclib_pmap_wakeup())
  {
    goto LABEL_9;
  }

  result = getrpcbind_handle(a1, v20, 3, &set_retry_timeout_0, &set_total_timeout_0);
  if (result)
  {
    v10 = result;
    if (!_newrpclib_sa2uaddr(a4, &v17))
    {
      *&v14 = __PAIR64__(a3, a2);
      *(&v14 + 1) = a1;
      *&v15 = v17;
      v11 = geteuid();
      v12 = getpwuid_r(v11, &v19, v21, 0x100uLL, &v18);
      pw_name = &unk_2771E704D;
      if (!v12 && v18)
      {
        pw_name = v18->pw_name;
      }

      *(&v15 + 1) = pw_name;
      if (_newrpclib_rpcbproc_set_3(&v14, &v16 + 1, v10))
      {
        HIDWORD(v16) = 0;
      }
    }

    (*(*(v10 + 8) + 32))(v10);
    if (v17)
    {
      free(v17);
    }

    result = HIDWORD(v16);
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_rpcb_unset(char *a1, int a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  memset(&v20, 0, sizeof(v20));
  v6 = portmap_netid;
  v19 = 0;
  if (!portmap_netid)
  {
    v6 = "udp";
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = v6;
  }

  v18 = 0;
  if (_newrpclib_netid2socparms(v7, &v18, 0, 0, 0))
  {
    goto LABEL_7;
  }

  memset(v22, 0, sizeof(v22));
  if (v18 == 30)
  {
    LOWORD(v22[0]) = 7708;
    *(v22 + 8) = *MEMORY[0x277D85EF0];
  }

  else
  {
    if (v18 != 2)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    LOWORD(v22[0]) = 528;
    DWORD1(v22[0]) = 16777343;
  }

  if (_newrpclib_pmap_wakeup())
  {
    goto LABEL_7;
  }

  result = getrpcbind_handle(v7, v22, 3, &unset_retry_timeout_0, &unset_total_timeout_0);
  if (result)
  {
    v10 = result;
    v14[0] = a2;
    v14[1] = a3;
    pw_name = &unk_2771E704D;
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = &unk_2771E704D;
    }

    v15 = v12;
    v16 = &unk_2771E704D;
    v13 = geteuid();
    if (!getpwuid_r(v13, &v20, v23, 0x100uLL, &v19) && v19)
    {
      pw_name = v19->pw_name;
    }

    v17 = pw_name;
    if (_newrpclib_rpcbproc_unset_3(v14, &v21, v10))
    {
      v21 = 0;
    }

    (*(*(v10 + 8) + 32))(v10);
    result = v21;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void _newrpclib_authnone_create_cold_1(int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/auth_none.c";
  v4 = 1024;
  v5 = 125;
  v6 = 2080;
  v7 = "_newrpclib_authnone_create";
  v8 = 2080;
  v9 = "pthread_once";
  v10 = 67108960;
  v11 = a1;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void marshal_new_auth_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_default_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_authunix_create_default_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib___rpc_createerr_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib___rpc_createerr_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void tsd_init_rpc_createerr_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void _buf_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void _buf_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void tsd_init_buf_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s returned with %m (%d)\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_clntraw_create_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = 136315906;
  v2 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/clnt_raw.c";
  v3 = 1024;
  v4 = 144;
  v5 = 2080;
  v6 = "_newrpclib_clntraw_create";
  v7 = 2080;
  v8 = "xdr_callhdr: Fatal header serialization error.";
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s\n", &v1, 0x26u);
  v0 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_5(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x24u);
  v7 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntstrm_create_timeout_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntticotsord_create_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntticots_create_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_clnttcp_create_sa_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_clnttcp_create_timeout_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_clnttcp_create_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void clntticotsord_create_timeout_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

void _newrpclib_rpc_control_cold_1(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 136315906;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/rpc_control.c";
  v4 = 1024;
  v5 = 171;
  v6 = 2080;
  v7 = "_newrpclib_rpc_control";
  v8 = 1024;
  v9 = a1;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, Unknown rpc_control command (%d)\n\n", &v2, 0x22u);
  v1 = *MEMORY[0x277D85DE8];
}

void _newrpclib__authenticate_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v4 = 136316418;
  v5 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_auth.c";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  v7 = "_newrpclib__authenticate";
  v8 = v1;
  v9 = "pthread_getugid_np failed.";
  v10 = 67108960;
  v11 = v2;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v4, 0x2Eu);
  v3 = *MEMORY[0x277D85DE8];
}

void _newrpclib__authenticate_cold_2()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v4 = 136316418;
  v5 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_auth.c";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  v7 = "_newrpclib__authenticate";
  v8 = v1;
  v9 = "pthread_setugid_np";
  v10 = 67108960;
  v11 = v2;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v4, 0x2Eu);
  v3 = *MEMORY[0x277D85DE8];
}

void _newrpclib__authenticate_cold_3()
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136316162;
  v5 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_auth.c";
  OUTLINED_FUNCTION_0();
  v6 = v0;
  v7 = "_newrpclib__authenticate";
  v8 = v0;
  v9 = v1;
  v10 = v0;
  v11 = v2;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, Could not change credentials for uid = %d gid = %d\n", &v4, 0x28u);
  v3 = *MEMORY[0x277D85DE8];
}

void add_working_xprt_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 136315906;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
  v4 = 1024;
  v5 = 137;
  v6 = 2080;
  v7 = "add_working_xprt";
  v8 = 2048;
  v9 = a1;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, xprt %p is already on workq\n", &v2, 0x26u);
  v1 = *MEMORY[0x277D85DE8];
}

void add_working_xprt_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = 136315650;
  v2 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
  v3 = 1024;
  v4 = 138;
  v5 = 2080;
  v6 = "add_working_xprt";
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s aborted.\n", &v1, 0x1Cu);
  v0 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svc_pollnext_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
  v4 = 1024;
  v5 = 227;
  v6 = 2080;
  v7 = "_newrpclib_svc_pollnext";
  v8 = 2080;
  v9 = "EXPECTED CONTROL PIPE, BUT DIDN'T GET IT";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void _newrpclib_registerrpc_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_registerrpc_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_registerrpc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_registerrpc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void universal_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

void universal_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void universal_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svctcp_create_cold_7()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_domain_create_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_domain_create_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_domain_create_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_8()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcticotsord_create_cold_9()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void makefd_xprt_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void makefd_xprt_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void makefd_xprt_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void makefd_xprt_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void makefd_xprt_cold_5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void rendezvous_request_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_destroy_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void readstrm_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void readstrm_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void writestrm_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_recv_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcstrm_recv_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcstrm_recv_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcstrm_reply_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svcudp_bufcreate_cold_6()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcudp_recv_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcudp_recv_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcudp_reply_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svcudp_reply_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcudp_reply_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcudp_reply_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_2771CF000, MEMORY[0x277D86220], v0, "%s:%d in %s, %s\n", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void svcudp_destroy_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_xprt_create_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_xprt.c";
  v4 = 1024;
  v5 = 50;
  v6 = 2080;
  v7 = "svc_xprt_create";
  v8 = 2080;
  v9 = "mem_alloc failed";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void svc_xprt_create_cold_2()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_xprt.c";
  v4 = 1024;
  v5 = 45;
  v6 = 2080;
  v7 = "svc_xprt_create";
  v8 = 2080;
  v9 = "mem_alloc failed";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void svc_oncrpc_start_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_oncrpc_start_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_oncrpc_start_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_armxprt_cold_1(unsigned int *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_armxprt_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void svc_armxprt_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_rmxprt_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void wakeup_kq_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_rearmxprt_cold_1(unsigned int *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_rearmxprt_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_rearmxprt_cold_3(unsigned int *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_unarmxprt_cold_1(unsigned int *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void svc_unarmxprt_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svc_enable_localaddr_cold_1(uint64_t **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svc_enable_localaddr_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Eu);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_svc_enable_localaddr_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdr_array_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/xdr_array.c";
  v4 = 1024;
  v5 = 122;
  v6 = 2080;
  v7 = "_newrpclib_xdr_array";
  v8 = 2080;
  v9 = "mem_alloc failed";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdrrec_create_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdrrec_create_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdrrec_create_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL xdrrec_isrecordstart_cold_1(uint64_t a1, int a2, int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 100))
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    *buf = 136316162;
    v11 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/xdr_rec.c";
    v12 = 1024;
    v13 = 457;
    v14 = 2080;
    v15 = "xdrrec_isrecordstart";
    v16 = 1024;
    v17 = a2;
    v18 = 2080;
    v19 = v6;
    _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, Exptected to be at record start. Fbtbc = %d last fragment = %s\n\n", buf, 0x2Cu);
    a2 = *a3;
  }

  if (*(a1 + 100))
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  warnx("Exptected to be at record start. Fbtbc = %d last fragment = %s\n\n", a2, v7);
  result = *a3 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void _newrpclib_xdr_reference_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/xdr_reference.c";
  v4 = 1024;
  v5 = 104;
  v6 = 2080;
  v7 = "_newrpclib_xdr_reference";
  v8 = 2080;
  v9 = "mem_alloc failed";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdr_bytes_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void xdr_vmbytes_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void _newrpclib_xdr_string_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_2771CF000, MEMORY[0x277D86220], v1, "%s:%d in %s, %s returned with %m (%d)\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void recvfrom_and_to_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2 = 136316418;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/rpc_inet.c";
  v4 = 1024;
  v5 = 557;
  v6 = 2080;
  v7 = "recvfrom_and_to";
  v8 = 2080;
  v9 = "Could not get socket name";
  v10 = 67108960;
  v11 = v0;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", &v2, 0x2Eu);
  v1 = *MEMORY[0x277D85DE8];
}

void cache_init_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = 136315650;
  v2 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/rpc_inet.c";
  v3 = 1024;
  v4 = 385;
  v5 = 2080;
  v6 = "cache_init";
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s aborted.\n", &v1, 0x1Cu);
  v0 = *MEMORY[0x277D85DE8];
}

void _newrpclib_rpcb_getaddr_timeout_cold_1(unsigned __int8 a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 136315906;
  v3 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/rpcbind.c";
  v4 = 1024;
  v5 = 291;
  v6 = 2080;
  v7 = "_newrpclib_rpcb_getaddr_timeout";
  v8 = 1024;
  v9 = a1;
  _os_log_error_impl(&dword_2771CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d in %s, Unsupported address family %d\n", &v2, 0x22u);
  v1 = *MEMORY[0x277D85DE8];
}