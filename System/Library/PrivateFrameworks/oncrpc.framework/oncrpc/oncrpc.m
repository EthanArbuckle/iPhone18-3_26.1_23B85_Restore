uint64_t _newrpclib_callrpc(char *__s2, unsigned int a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = callrpc_private;
  if (!callrpc_private)
  {
    result = calloc(1uLL, 0x20uLL);
    if (!result)
    {
      goto LABEL_19;
    }

    v6 = result;
    callrpc_private = result;
  }

  v16 = 0;
  v17 = 0;
  v8 = *(v6 + 24);
  if (!v8)
  {
    v8 = malloc(0x100uLL);
    *(v6 + 24) = v8;
    *v8 = 0;
    *(v6 + 8) = -1;
  }

  v15 = 0;
  if (!*(v6 + 20) || *(v6 + 12) != a2 || *(v6 + 16) != a3 || strcmp(v8, __s2))
  {
    *(v6 + 20) = 0;
    *(v6 + 8) = -1;
    if (*v6)
    {
      (*(*(*v6 + 8) + 32))();
      *v6 = 0;
    }

    v9 = getipnodebyname(__s2, 2, 0, &v15);
    if (!v9)
    {
      result = 13;
      goto LABEL_19;
    }

    v10 = v9;
    v16 = 0;
    v17 = 0;
    v11 = *v9->h_addr_list;
    h_length = v9->h_length;
    __memmove_chk();
    freehostent(v10);
    BYTE1(v16) = 2;
    WORD1(v16) = 0;
    v13 = _newrpclib_clntudp_create(&v16, a2, a3, 5, 0, (v6 + 8));
    *v6 = v13;
    if (!v13)
    {
      result = *_newrpclib___rpc_createerr();
      goto LABEL_19;
    }

    *(v6 + 16) = a3;
    *(v6 + 20) = 1;
    *(v6 + 12) = a2;
    strcpy(*(v6 + 24), __s2);
  }

  result = (**(*v6 + 8))();
  if (result)
  {
    *(v6 + 20) = 0;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_authnone_create()
{
  v0 = pthread_once(&authnone_once_init, authnone_init);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authnone_create_cold_1(v1);
    }
  }

  return authnone_private;
}

char *authnone_init()
{
  result = calloc(1uLL, 0x60uLL);
  if (result)
  {
    v1 = result;
    memset(v5, 0, sizeof(v5));
    authnone_private = result;
    v2 = _newrpclib__null_auth;
    *(result + 24) = _newrpclib__null_auth;
    v3 = qword_280A69790;
    *(result + 5) = qword_280A69790;
    *(result + 2) = v3;
    *result = v2;
    *(result + 7) = ops;
    _newrpclib_xdrmem_create(v5, (result + 72), 20, 0);
    _newrpclib_xdr_opaque_auth(v5, v1);
    _newrpclib_xdr_opaque_auth(v5, v1 + 24);
    result = (*(*(&v5[0] + 1) + 32))(v5);
    *(v1 + 92) = result;
    v4 = *(*(&v5[0] + 1) + 56);
    if (v4)
    {
      return v4(v5);
    }
  }

  return result;
}

uint64_t authnone_marshal(uint64_t a1, uint64_t a2)
{
  if (authnone_private)
  {
    return (*(*(a2 + 8) + 24))(a2, authnone_private + 72, *(authnone_private + 92));
  }

  else
  {
    return 0;
  }
}

_OWORD *_newrpclib_authunix_create(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  memset(__src, 0, sizeof(__src));
  memset(v22, 0, sizeof(v22));
  v10 = calloc(1uLL, 0x48uLL);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authunix_create_cold_4();
    }

    goto LABEL_16;
  }

  v11 = v10;
  v12 = calloc(1uLL, 0x1C8uLL);
  if (!v12)
  {
    free(v11);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authunix_create_cold_3();
    }

    goto LABEL_16;
  }

  v13 = v12;
  v23.tv_sec = 0;
  *&v23.tv_usec = 0;
  *(v11 + 7) = auth_unix_ops;
  *(v11 + 8) = v12;
  v14 = qword_280A69790;
  *(v12 + 5) = qword_280A69790;
  v15 = _newrpclib__null_auth;
  *(v12 + 24) = _newrpclib__null_auth;
  *(v11 + 24) = v15;
  *(v11 + 5) = v14;
  *(v12 + 12) = 0;
  gettimeofday(&v23, 0);
  LODWORD(v24) = v23.tv_sec;
  *(&v24 + 1) = a1;
  *&v25 = __PAIR64__(a3, a2);
  DWORD2(v25) = a4;
  v26 = a5;
  _newrpclib_xdrmem_create(v22, __src, 400, 0);
  if (!_newrpclib_xdr_authunix_parms(v22, &v24))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authunix_create_cold_2();
    }

    goto LABEL_15;
  }

  v16 = (*(*&v22[0].tv_usec + 32))(v22);
  v13[4] = v16;
  v17 = v16;
  *v13 = 1;
  v18 = calloc(1uLL, v16);
  *(v13 + 1) = v18;
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authunix_create_cold_1();
    }

    goto LABEL_15;
  }

  memmove(v18, __src, v17);
  v19 = *(v13 + 2);
  *v11 = *v13;
  *(v11 + 2) = v19;
  if (!marshal_new_auth(v11))
  {
LABEL_15:
    free(v13);
    free(v11);
LABEL_16:
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL marshal_new_auth(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  v2 = *(a1 + 64);
  _newrpclib_xdrmem_create(v5, v2 + 52, 400, 0);
  if (_newrpclib_xdr_opaque_auth(v5, a1) && _newrpclib_xdr_opaque_auth(v5, a1 + 24))
  {
    *(v2 + 452) = (*(*(&v5[0] + 1) + 32))(v5);
    v3 = *(*(&v5[0] + 1) + 56);
    if (v3)
    {
      v3(v5);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (result)
    {
      marshal_new_auth_cold_1();
      return 0;
    }
  }

  return result;
}

uint64_t _newrpclib_set_rpc_maxgrouplist(uint64_t result)
{
  if ((result - 1) <= 0xE)
  {
    maxgrplist = result;
  }

  return result;
}

_OWORD *_newrpclib_authunix_create_default()
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  if (gethostname(v7, 0xFFuLL) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_authunix_create_default_cold_2();
    }

    result = 0;
  }

  else
  {
    HIBYTE(v22) = 0;
    v0 = geteuid();
    v1 = getegid();
    v2 = getgroups(16, v6);
    if (v2 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_authunix_create_default_cold_1();
      }

      LODWORD(v6[0]) = v1;
      v2 = 1;
    }

    if (v2 >= maxgrplist)
    {
      v3 = maxgrplist;
    }

    else
    {
      v3 = v2;
    }

    result = _newrpclib_authunix_create(v7, v0, v1, v3, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL authunix_validate(uint64_t a1, uint64_t a2)
{
  if (*a2 != 2)
  {
    return 1;
  }

  v10 = v2;
  v11 = v3;
  memset(v9, 0, sizeof(v9));
  v5 = *(a1 + 64);
  _newrpclib_xdrmem_create(v9, *(a2 + 8), *(a2 + 16), 1);
  v6 = *(v5 + 4);
  if (v6)
  {
    free(v6);
    *(v5 + 4) = 0;
  }

  if (_newrpclib_xdr_opaque_auth(v9, v5 + 24))
  {
    v5 = (v5 + 24);
  }

  else
  {
    LODWORD(v9[0]) = 2;
    _newrpclib_xdr_opaque_auth(v9, v5 + 24);
    *(v5 + 4) = 0;
  }

  v8 = *v5;
  *(a1 + 16) = *(v5 + 2);
  *a1 = v8;
  return marshal_new_auth(a1);
}

BOOL authunix_refresh(uint64_t a1)
{
  v1 = *(a1 + 64);
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, sizeof(v8));
  v2 = *(v1 + 1);
  if (*(a1 + 8) == v2)
  {
    return 0;
  }

  ++*(v1 + 12);
  *(&v10[0] + 1) = 0;
  v11 = 0;
  _newrpclib_xdrmem_create(v8, v2, *(v1 + 4), 1);
  if (_newrpclib_xdr_authunix_parms(v8, v10) && (v9.tv_sec = 0, *&v9.tv_usec = 0, gettimeofday(&v9, 0), LODWORD(v10[0]) = v9.tv_sec, LODWORD(v8[0].tv_sec) = 0, (*(*&v8[0].tv_usec + 40))(v8, 0), _newrpclib_xdr_authunix_parms(v8, v10)))
  {
    v4 = *v1;
    *(a1 + 16) = *(v1 + 2);
    *a1 = v4;
    v5 = marshal_new_auth(a1);
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v8[0].tv_sec) = 2;
  _newrpclib_xdr_authunix_parms(v8, v10);
  v6 = *(*&v8[0].tv_usec + 56);
  if (v6)
  {
    v6(v8);
  }

  return v5;
}

void authunix_destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  free(*(v2 + 8));
  v3 = *(v2 + 32);
  if (v3)
  {
    free(v3);
  }

  free(*(a1 + 64));
  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

void *_newrpclib_clnt_create_timeout(char *a1, uint64_t a2, unsigned int a3, char *__s2, __int128 *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, 128);
  v15 = 0;
  v16 = 0;
  if (!_newrpclib_netid2socparms(__s2, &v16, &v15 + 1, &v15, 1))
  {
    if (v16 == 1)
    {
      v16 = 0xFFFFFFFF00000001;
      *&v17.sa_len = 362;
      memset(v17.sa_data, 0, 104);
      goto LABEL_7;
    }

    if (gethostaddr(a1, v16, &v17))
    {
      v14 = _newrpclib___rpc_createerr();
      result = 0;
      *v14 = 13;
      goto LABEL_4;
    }

    HIDWORD(v16) = -1;
    if (v16 > 1)
    {
      if (v16 != 30 && v16 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v16)
    {
      if (v16 == 1)
      {
LABEL_7:
        if (HIDWORD(v15) == 1)
        {
          result = clntticotsord_create_timeout(&v17, a2, a3, &v16 + 1, 0, 0, 0, a5);
          goto LABEL_4;
        }
      }

LABEL_20:
      v9 = _newrpclib___rpc_createerr();
      v10 = 12;
      goto LABEL_3;
    }

    if (v15 == 6)
    {
      result = _newrpclib_clnttcp_create_timeout(&v17, a2, a3, &v16 + 1, 0, 0, 0, a5);
      goto LABEL_4;
    }

    if (v15 == 17)
    {
      result = _newrpclib_clntudp_bufcreate_timeout(&v17.sa_len, a2, a3, &v16 + 1, 8800, 8800, 0, a5);
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v9 = _newrpclib___rpc_createerr();
  v10 = 17;
LABEL_3:
  *v9 = v10;
  v11 = _newrpclib___rpc_createerr();
  result = 0;
  v11[2] = 46;
LABEL_4:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *_newrpclib_clnt_create(char *a1, uint64_t a2, unsigned int a3, char *__s2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (_newrpclib_netid2socparms(__s2, &v15 + 1, 0, &v15, 1))
  {
    v8 = _newrpclib___rpc_createerr();
    v9 = 17;
LABEL_3:
    *v8 = v9;
    v10 = _newrpclib___rpc_createerr();
    result = 0;
    v10[2] = 46;
    return result;
  }

  if (v15 == 6)
  {
    v12 = 0;
  }

  else
  {
    if (v15 != 17)
    {
      v8 = _newrpclib___rpc_createerr();
      v9 = 12;
      goto LABEL_3;
    }

    v13 = 5;
    LODWORD(v14) = 0;
    v12 = &v13;
  }

  return _newrpclib_clnt_create_timeout(a1, a2, a3, __s2, v12);
}

uint64_t clnt_auth_set(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*(result + 56) + 32))();
  }

  *a1 = a2;
  return result;
}

void *reply_addr_cache_create(size_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 256;
  }

  v2 = calloc(1uLL, 0x10uLL);
  if (v2)
  {
    v3 = calloc(v1, 0x1CuLL);
    v2[1] = v3;
    if (v3)
    {
      *v2 = v1;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void reply_addr_cache_destroy(void **a1)
{
  if (a1)
  {
    free(a1[1]);

    free(a1);
  }
}

uint64_t _newrpclib_clnt_multicasts_buf_timeout(uint64_t a1, size_t __count, unsigned int (*a3)(uint64_t, timeval *, _DWORD *, unint64_t), uint64_t a4, int *a5, size_t a6, _DWORD *a7, size_t a8, unsigned int *a9, unsigned int a10, unsigned int a11, int a12)
{
  v18 = __count;
  v113 = *MEMORY[0x277D85DE8];
  v20 = calloc(__count, 0x20uLL);
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v102 = 0;
  if (v18)
  {
    v22 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v18 - 1);
    v24 = xmmword_2771E54F0;
    v25 = xmmword_2771E5500;
    v26 = v20 + 23;
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s16(v28, *v23.i8).u8[0])
      {
        *(v26 - 16) = -1;
      }

      if (vuzp1_s16(v28, *&v23).i8[2])
      {
        *(v26 - 8) = -1;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
      {
        *v26 = -1;
        v26[8] = -1;
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 32;
      v22 -= 4;
    }

    while (v22);
  }

  v99 = a7;
  v29 = calloc(v18, 8uLL);
  if (!v29)
  {
    free(v21);
LABEL_15:
    v30 = 12;
    goto LABEL_126;
  }

  v100 = v29;
  v101 = v21;
  if (getifaddrs(&v102))
  {
LABEL_13:
    v30 = 3;
    goto LABEL_122;
  }

  v94 = a3;
  v95 = a4;
  v97 = a8;
  if (!v18)
  {
    v30 = 5;
    goto LABEL_42;
  }

  v31 = 0;
  v98 = a1;
  do
  {
    v32 = *(a1 + 8 * v31);
    v33 = v102;
    v34 = &v21[32 * v31];
    LODWORD(__s2.tv_sec) = 1;
    *v34 = 0;
    *(v34 + 8) = v34;
    *(v34 + 16) = v32;
    v35 = *(v32 + 1);
    if (v35 == 30)
    {
      if (*(v32 + 8) != 255)
      {
        goto LABEL_118;
      }

      v38 = 0;
      v36 = 0;
      v37 = -32770;
      goto LABEL_26;
    }

    if (v35 != 2)
    {
      goto LABEL_118;
    }

    v36 = *(v32 + 2);
    if (*(v32 + 4) == -1)
    {
      v37 = -32772;
      v38 = 1;
LABEL_26:
      *(v34 + 24) = v38;
      goto LABEL_27;
    }

    if ((v32 & 0xF0000000) != 0xE0000000)
    {
      goto LABEL_118;
    }

    v37 = -32770;
LABEL_27:
    v39 = socket(v35, 2, 0);
    *(v34 + 28) = v39;
    if (v39 == -1)
    {
LABEL_118:
      v30 = 3;
      goto LABEL_121;
    }

    if (setsockopt(v39, 0xFFFF, 32, &__s2, 4u))
    {
      goto LABEL_119;
    }

    for (; v33; v33 = v33->ifa_next)
    {
      if (*(v32 + 1) == v33->ifa_addr->sa_family && (v33->ifa_flags | v37) == 0xFFFFFFFF)
      {
        v40 = calloc(1uLL, 0x98uLL);
        if (!v40)
        {
          v30 = 12;
          goto LABEL_120;
        }

        v41 = v40;
        v40[16] = v40;
        if (*(v34 + 24))
        {
          sa_len = v33->ifa_dstaddr->sa_len;
          __memcpy_chk();
          *(v41[16] + 2) = v36;
        }

        else
        {
          v43 = v33->ifa_addr->sa_len;
          __memcpy_chk();
        }

        *(v41 + 34) = if_nametoindex(v33->ifa_name);
        v41[18] = 0;
        **(v34 + 8) = v41;
        *(v34 + 8) = v41 + 18;
      }
    }

    if (!*v34)
    {
LABEL_119:
      v30 = 3;
LABEL_120:
      free_interface_list(v34);
LABEL_121:
      MEMORY[0x277CA8E70](v102);
      goto LABEL_122;
    }

    v21 = v101;
    v44 = &v100[v31];
    v44->fd = *(v34 + 28);
    *&v44->events = 64;
    ++v31;
    a1 = v98;
  }

  while (v31 != v18);
  v30 = 0;
LABEL_42:
  MEMORY[0x277CA8E70](v102);
  if (!*a5)
  {
    LODWORD(v104.tv_sec) = 0;
    v45 = open("/dev/random", 0, 0);
    v46 = v45;
    if ((v45 & 0x80000000) == 0 && read(v45, &v104, 4uLL) == 4 || (__s2.tv_sec = 0, *&__s2.tv_usec = 0, gettimeofday(&__s2, 0), tv_sec = getpid() ^ LODWORD(__s2.tv_sec) ^ __s2.tv_usec, LODWORD(v104.tv_sec) = tv_sec, (v46 & 0x80000000) == 0))
    {
      close(v46);
      tv_sec = v104.tv_sec;
    }

    *a5 = tv_sec;
  }

  v96 = a10;
  if (a10 > a11)
  {
    goto LABEL_122;
  }

  while (2)
  {
    if (!v18)
    {
      goto LABEL_69;
    }

    v48 = 0;
    while (2)
    {
      v49 = &v101[32 * v48];
      v50 = *v49;
      if (!*v49)
      {
        goto LABEL_13;
      }

      v51 = 0;
      v52 = -1;
      v30 = 3;
      while (2)
      {
        while (!*(v49 + 6))
        {
          v53 = (v50 + 136);
          if (*(v50 + 136) == v52)
          {
            goto LABEL_63;
          }

          v54 = *(*(v49 + 2) + 1);
          if (v54 == 30)
          {
            v55 = *(v49 + 7);
            v57 = 41;
            v56 = 4;
          }

          else
          {
            if (v54 != 2)
            {
              goto LABEL_62;
            }

            v55 = *(v49 + 7);
            v53 = *(v50 + 128);
            v56 = *v53;
            v57 = 0;
          }

          if (setsockopt(v55, v57, 9, v53, v56))
          {
            goto LABEL_63;
          }

LABEL_62:
          if (sendto(*(v49 + 7), a5, a6, 0, *(v49 + 2), **(v49 + 2)) != a6)
          {
            goto LABEL_63;
          }

          v30 = 0;
          v52 = *(v50 + 136);
          v50 = *(v50 + 144);
          v51 = 1;
          if (!v50)
          {
            goto LABEL_68;
          }
        }

        if (sendto(*(v49 + 7), a5, a6, 0, *(v50 + 128), **(v50 + 128)) == a6)
        {
          goto LABEL_68;
        }

LABEL_63:
        v50 = *(v50 + 144);
        if (v50)
        {
          continue;
        }

        break;
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_68:
      if (++v48 != v18)
      {
        continue;
      }

      break;
    }

LABEL_69:
    if (v96)
    {
      v58 = 0;
      v92 = *a5;
      *v103 = 0;
      __s2 = 0;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v59 = (1000 * v96);
      v60 = v100;
      v61 = v97;
      do
      {
        v104.tv_sec = 0;
        *&v104.tv_usec = 0;
        gettimeofday(&v104, 0);
        v62 = v104.tv_sec;
        tv_usec = v104.tv_usec;
        v64 = poll(v60, v18, v59);
        if (!v64)
        {
          break;
        }

        if (v64 <= 0)
        {
          while (v64 == -1)
          {
            if (*__error() != 4 && *__error() != 35)
            {
              v30 = 4;
              goto LABEL_122;
            }

            gettimeofday(&v104, 0);
            v62 = v104.tv_sec;
            tv_usec = v104.tv_usec;
            v64 = poll(v60, v18, v59);
            if (!v64)
            {
              goto LABEL_113;
            }

            if (v64 >= 1)
            {
              goto LABEL_73;
            }
          }
        }

        else
        {
LABEL_73:
          gettimeofday(&v104, 0);
          v65 = 1000 * (v104.tv_sec - v62) + v104.tv_usec / 1000 + tv_usec / -1000;
          v66 = v59 >= v65;
          v67 = v59 - v65;
          v59 = v66 ? v67 : 0;
        }

        v91 = v59;
        v93 = v58;
        v68 = v99;
        if (v18 >= 1)
        {
          v69 = 0;
          do
          {
            v70 = &v60[v69];
            if ((v70->revents & 0x40) != 0)
            {
              while (1)
              {
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                __s2 = 0;
                v106 = 0u;
                LOBYTE(__s2.tv_sec) = 0x80;
                *v103 = 128;
                v71 = recvfrom(v70->fd, v68, v61, 0, &__s2, v103);
                if ((v71 & 0x8000000000000000) == 0)
                {
                  break;
                }

                if (*__error() != 4 && *__error() != 35)
                {
                  v86 = 1;
                  goto LABEL_114;
                }
              }

              v72 = v71;
              if (v71 >= 4 && *v68 == v92)
              {
                tv_sec_low = LOBYTE(__s2.tv_sec);
                if (LOBYTE(__s2.tv_sec) >= 4u)
                {
                  v74 = 0;
                  v75 = LOBYTE(__s2.tv_sec) >> 2;
                  p_s2 = &__s2;
                  do
                  {
                    v77 = p_s2->tv_sec;
                    p_s2 = (p_s2 + 4);
                    v74 = v77 + (v74 << 8);
                    --v75;
                  }

                  while (v75);
                }

                else
                {
                  v74 = 0;
                }

                if (a9 && (v78 = *(a9 + 1)) != 0 && (v79 = *a9) != 0)
                {
                  v80 = 0;
                  v81 = v74 % v79;
                  v82 = *a9;
                  v90 = *a9;
                  while (1)
                  {
                    v83 = (v78 + 28 * ((v80 + v81) % v79));
                    if (!v83[1])
                    {
                      memcpy(v83, &__s2, tv_sec_low);
                      goto LABEL_99;
                    }

                    if (*v83 == tv_sec_low)
                    {
                      v84 = v78;
                      v85 = memcmp(v83, &__s2, tv_sec_low);
                      v79 = v90;
                      v78 = v84;
                      if (!v85)
                      {
                        break;
                      }
                    }

                    ++v80;
                    if (!--v82)
                    {
                      goto LABEL_99;
                    }
                  }

                  v68 = v99;
                  v60 = v100;
                  v61 = v97;
                }

                else
                {
LABEL_99:
                  v68 = v99;
                  v60 = v100;
                  v61 = v97;
                  if (v94(v95, &__s2, v99, v72))
                  {
                    v30 = 0;
                    goto LABEL_122;
                  }

                  v93 = 1;
                }
              }
            }
          }

          while (++v69 != v18);
        }

        v58 = v93;
        v59 = v91;
      }

      while (v91);
    }

    else
    {
      v58 = 0;
    }

LABEL_113:
    v86 = v58 != 0;
LABEL_114:
    v30 = 5;
    if (v96 + a12 <= a11)
    {
      v96 += a12;
      if (v86)
      {
        continue;
      }
    }

    break;
  }

LABEL_122:
  if (v18)
  {
    v87 = v101;
    do
    {
      free_interface_list(v87);
      v87 += 32;
      --v18;
    }

    while (v18);
  }

  free(v101);
  free(v100);
LABEL_126:
  v88 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t free_interface_list(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = v2[18];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  result = *(a1 + 28);
  if (result != -1)
  {
    result = close(result);
    *(a1 + 28) = -1;
  }

  return result;
}

void *_newrpclib___rpc_createerr()
{
  if (pthread_once(&rpc_createerr_once, tsd_init_rpc_createerr))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib___rpc_createerr_cold_1();
    }

    return 0;
  }

  else
  {
    v0 = pthread_getspecific(rpc_createerr_key);
    if (!v0)
    {
      v0 = calloc(1uLL, 0x10uLL);
      if (pthread_setspecific(rpc_createerr_key, v0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _newrpclib___rpc_createerr_cold_2();
        }
      }
    }
  }

  return v0;
}

void tsd_init_rpc_createerr()
{
  if (pthread_key_create(&rpc_createerr_key, rpc_createerr_destroy))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      tsd_init_rpc_createerr_cold_1();
    }
  }
}

char *_newrpclib_clnt_sperror(uint64_t a1, _BYTE *a2)
{
  v4 = _buf();
  if (v4)
  {
    clnt_sperror_r(a1, a2, v4);
  }

  return v4;
}

void *_buf()
{
  if (pthread_once(&clnt_perror_once, tsd_init_buf))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _buf_cold_1();
    }

    return 0;
  }

  else
  {
    v0 = pthread_getspecific(buf);
    if (!v0)
    {
      v0 = malloc(0x100uLL);
      if (pthread_setspecific(buf, v0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _buf_cold_2();
        }
      }
    }
  }

  return v0;
}

char *clnt_sperror_r(uint64_t a1, _BYTE *a2, char *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__strerrbuf = 0u;
  (*(*(a1 + 8) + 16))();
  *a3 = 0;
  if (a2 && *a2)
  {
    slprintf(a3, v5, "%s: ", v6, v7, v8, v9, v10, a2);
  }

  v11 = &off_27A70EC60;
  v12 = 18;
  v13 = "RPC: (unknown error code)";
  while (*(v11 - 2))
  {
    v11 += 2;
    if (!--v12)
    {
      goto LABEL_9;
    }
  }

  v13 = *v11;
LABEL_9:
  strlcat(a3, v13, 0x100uLL);
  slprintf(a3, v14, "\n", v15, v16, v17, v18, v19, v22);
  v20 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t _newrpclib_clnt_perror(uint64_t a1, _BYTE *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v2 = *MEMORY[0x277D85DF8];
  clnt_sperror_r(a1, a2, v5);
  result = fputs(v5, v2);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

const char *_newrpclib_clnt_sperrno(int a1)
{
  v2 = &off_27A70EC60;
  v3 = 18;
  result = "RPC: (unknown error code)";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

uint64_t _newrpclib_clnt_perrno(int a1)
{
  v2 = &off_27A70EC60;
  v3 = 18;
  v4 = "RPC: (unknown error code)";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return fputs(v4, *MEMORY[0x277D85DF8]);
    }
  }

  v4 = *v2;
  return fputs(v4, *MEMORY[0x277D85DF8]);
}

char *_newrpclib_clnt_spcreateerror(char a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = _newrpclib___rpc_createerr();
  v3 = _buf();
  v10 = 0;
  if (v3 && v2)
  {
    v31 = 0u;
    v32 = 0u;
    v10 = v3;
    v29 = 0u;
    v30 = 0u;
    *__strerrbuf = 0u;
    *v3 = 0;
    slprintf(v3, v4, "%s: ", v5, v6, v7, v8, v9, a1);
    v11 = &off_27A70EC60;
    v12 = 18;
    v13 = "RPC: (unknown error code)";
    while (*(v11 - 2) != *v2)
    {
      v11 += 2;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    v13 = *v11;
LABEL_8:
    strlcat(v10, v13, 0x100uLL);
    if (*v2 == 12)
    {
      v23 = v2[2];
      if (v23 < 1 || v23 >= *MEMORY[0x277D85EB0])
      {
        LODWORD(v27) = v2[2];
        v24 = " - Error %d\n";
        goto LABEL_22;
      }

      strerror_r(v23, __strerrbuf, 0x50uLL);
      v27 = __strerrbuf;
LABEL_20:
      v24 = " - %s\n";
LABEL_22:
      slprintf(v10, v14, v24, v15, v16, v17, v18, v19, v27);
      goto LABEL_23;
    }

    if (*v2 == 14)
    {
      v20 = &off_27A70EC60;
      v21 = 18;
      v22 = "RPC: (unknown error code)";
      while (*(v20 - 2) != v2[1])
      {
        v20 += 2;
        if (!--v21)
        {
          goto LABEL_19;
        }
      }

      v22 = *v20;
LABEL_19:
      LOBYTE(v27) = v22;
      goto LABEL_20;
    }

    strlcat(v10, "\n", 0x100uLL);
  }

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

size_t slprintf(const char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = strlen(a1);
  if (result <= 0xFF)
  {
    return vsnprintf(&a1[result], 256 - result, a3, &a9);
  }

  return result;
}

uint64_t _newrpclib_clnt_pcreateerror(char a1)
{
  v1 = *MEMORY[0x277D85DF8];
  v2 = _newrpclib_clnt_spcreateerror(a1);

  return fputs(v2, v1);
}

void rpc_createerr_destroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void tsd_init_buf()
{
  if (pthread_key_create(&buf, bufdestroy))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      tsd_init_buf_cold_1();
    }
  }
}

void bufdestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Eu);
}

uint64_t _newrpclib_clntraw_create(int a1, int a2)
{
  v4 = clntraw_private;
  if (!clntraw_private)
  {
    v5 = calloc(1uLL, 0x2308uLL);
    v4 = v5;
    if (!v5)
    {
      return v4;
    }

    clntraw_private = v5;
  }

  v8 = 0;
  v11 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v9 = 0x200000000;
  v10 = a1;
  LODWORD(v11) = a2;
  _newrpclib_xdrmem_create(v4 + 88, v4 + 8936, 24, 0);
  if (!_newrpclib_xdr_callhdr((v4 + 88), &v8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib_clntraw_create_cold_1();
  }

  *(v4 + 8960) = (*(*(v4 + 96) + 32))(v4 + 88);
  v6 = *(*(v4 + 96) + 56);
  if (v6)
  {
    v6(v4 + 88);
  }

  _newrpclib_xdrmem_create(v4 + 88, v4 + 136, 8800, 2);
  *(v4 + 8) = client_ops;
  *v4 = _newrpclib_authnone_create();
  return v4;
}

uint64_t clntraw_call(uint64_t a1, int a2, unsigned int (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v6 = clntraw_private;
  if (!clntraw_private)
  {
    return 16;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    *(v6 + 88) = 0;
    (*(*(v6 + 96) + 40))(v6 + 88, 0);
    ++*(v6 + 8936);
    if (!(*(*(v6 + 96) + 24))(v6 + 88, v6 + 8936, *(v6 + 8960)) || !(*(*(v6 + 96) + 8))(v6 + 88, &v22) || !(*(*(*a1 + 56) + 8))() || !a3(v6 + 88, a4))
    {
      return 1;
    }

    (*(*(v6 + 96) + 32))(v6 + 88);
    *(v6 + 88) = 1;
    (*(*(v6 + 96) + 40))(v6 + 88, 0);
    v18 = _newrpclib__null_auth;
    *&v19 = qword_280A69790;
    *&v20 = a6;
    *(&v20 + 1) = a5;
    if (!_newrpclib_xdr_replymsg((v6 + 88), &v17))
    {
      return 2;
    }

    _newrpclib__seterr_reply(&v17, &v15);
    v12 = v15;
    v13 = *(*a1 + 56);
    if (!v15)
    {
      break;
    }

    if (!(*(v13 + 24))())
    {
      return v12;
    }
  }

  v12 = 7;
  if ((*(v13 + 16))())
  {
    if ((*(*(*a1 + 56) + 16))())
    {
      v12 = 0;
    }

    else
    {
      v12 = 7;
    }

    if (*(&v18 + 1))
    {
      *(v6 + 88) = 2;
      _newrpclib_xdr_opaque_auth((v6 + 88), &v18);
    }
  }

  return v12;
}

uint64_t clntraw_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = clntraw_private;
  if (!clntraw_private)
  {
    return 16;
  }

  *(clntraw_private + 88) = 2;
  return a2(v3 + 88, a3);
}

void *clntstrm_create_timeout(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6, uint64_t a7, __int128 *a8)
{
  v68 = *MEMORY[0x277D85DE8];
  v56.tv_sec = 0;
  *&v56.tv_usec = 0;
  v55.tv_sec = 0;
  *&v55.tv_usec = 0;
  v54 = 0uLL;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v16 = *a4;
  v17 = calloc(1uLL, 0x58uLL);
  if (!v17)
  {
    *_newrpclib___rpc_createerr() = 12;
    v21 = *__error();
    *(_newrpclib___rpc_createerr() + 2) = v21;
    goto LABEL_28;
  }

  v46 = a5;
  v47 = a3;
  v18 = calloc(1uLL, 0xF8uLL);
  if (!v18)
  {
    *_newrpclib___rpc_createerr() = 12;
    v22 = *__error();
    *(_newrpclib___rpc_createerr() + 2) = v22;
LABEL_11:
    v23 = v17;
LABEL_27:
    free(v23);
    v17 = 0;
    goto LABEL_28;
  }

  v19 = v18;
  v45 = a6;
  v20 = *a4;
  v58 = 4;
  v59 = 1;
  if ((v20 & 0x80000000) == 0)
  {
    v57 = 128;
    if (!getsockopt(v20, 0xFFFF, 4104, &v59, &v58))
    {
      if (v59 != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          clntstrm_create_timeout_cold_1();
        }

        goto LABEL_24;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0;
      v61 = 0u;
      if (getsockname(v20, &v60, &v57))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          clntstrm_create_timeout_cold_2();
        }

        goto LABEL_26;
      }

      if (a1)
      {
        sa_family = v60.sa_family;
        if (a1->sa_family && a1->sa_family != v60.sa_family)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            clntstrm_create_timeout_cold_3();
          }

LABEL_24:
          v28 = __error();
          v29 = 22;
LABEL_25:
          *v28 = v29;
          goto LABEL_26;
        }
      }

      else
      {
        sa_family = v60.sa_family;
      }

      if (sa_family <= 0x1E && ((1 << sa_family) & 0x40000006) != 0)
      {
        setsockopt(v20, 0xFFFF, 4130, &v59, 4u);
        goto LABEL_43;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        clntstrm_create_timeout_cold_4();
      }

LABEL_33:
      v28 = __error();
      v29 = 45;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      clntstrm_create_timeout_cold_7();
    }

    goto LABEL_24;
  }

  v24 = a1->sa_family;
  v25 = 6;
  if (v24 != 30 && v24 != 2)
  {
    if (v24 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        clntstrm_create_timeout_cold_6();
      }

      goto LABEL_33;
    }

    v25 = 0;
  }

  v26 = socket(a1->sa_family, 1, v25);
  if (v26 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      clntstrm_create_timeout_cold_5(&a1->sa_family);
    }

    goto LABEL_26;
  }

  v20 = v26;
  sa_family = a1->sa_family;
  setsockopt(v26, 0xFFFF, 4130, &v59, 4u);
  if (v20 < 0)
  {
LABEL_26:
    *_newrpclib___rpc_createerr() = 12;
    v30 = *__error();
    *(_newrpclib___rpc_createerr() + 2) = v30;
    free(v17);
    v23 = v19;
    goto LABEL_27;
  }

LABEL_43:
  if (sa_family == 1)
  {
    if (!a1->sa_data[0])
    {
      *&v60.sa_len = 0;
      if (_newrpclib_socparms2netid(a1->sa_family, 1, 0, &v60))
      {
        goto LABEL_90;
      }

      if (a2 == 100000)
      {
        snprintf(a1->sa_data, 0x68uLL, "%s.%s", "/var/run/rpcb", *&v60.sa_len);
      }

      else if (!_newrpclib_rpcb_getaddr_timeout(a1, *&v60.sa_len, a2, v47, a7, a8))
      {
        goto LABEL_90;
      }
    }
  }

  else if (sa_family == 30 || sa_family == 2)
  {
    if (!*a1->sa_data)
    {
      *&v60.sa_len = 0;
      if (a2 == 100000)
      {
        *a1->sa_data = 28416;
      }

      else if (_newrpclib_socparms2netid(a1->sa_family, 1, 6, &v60) || !_newrpclib_rpcb_getaddr_timeout(a1, *&v60.sa_len, a2, v47, a7, a8))
      {
        goto LABEL_90;
      }
    }

    bindresvport_sa(v20, 0);
  }

  if ((v16 & 0x80000000) == 0)
  {
    v33 = 0;
    v34 = v47;
    goto LABEL_53;
  }

  if (a8)
  {
    v54 = *a8;
    fcntl(v20, 4, 4);
    if (connect(v20, a1, a1->sa_len) < 0 && *__error() != 36)
    {
      goto LABEL_74;
    }

    v48.fd = v20;
    *&v48.events = 4;
    v39 = *(a8 + 2) / 1000 + 1000 * *a8;
    gettimeofday(&v55, 0);
    v40 = poll(&v48, 1u, v39);
    if (v40 == -1)
    {
      goto LABEL_74;
    }

    if (v40 != 1)
    {
      if (v40)
      {
        *__error() = 5;
LABEL_74:
        *_newrpclib___rpc_createerr() = 12;
        v41 = *__error();
        *(_newrpclib___rpc_createerr() + 2) = v41;
LABEL_90:
        close(v20);
LABEL_91:
        free(v19);
        goto LABEL_11;
      }

LABEL_89:
      *_newrpclib___rpc_createerr() = 5;
      *(_newrpclib___rpc_createerr() + 2) = 60;
      goto LABEL_90;
    }

    gettimeofday(&v56, 0);
    v42 = v56.tv_usec - v55.tv_usec + 1000000;
    if (v56.tv_usec >= v55.tv_usec)
    {
      v42 = v56.tv_usec - v55.tv_usec;
    }

    v43 = *a8 - (v56.tv_sec - v55.tv_sec + ((v56.tv_usec - v55.tv_usec) >> 31));
    *a8 = v43;
    v44 = *(a8 + 2) - v42;
    *(a8 + 2) = v44;
    if (v44 < 0)
    {
      *a8 = --v43;
      *(a8 + 2) = v44 + 1000000;
    }

    v34 = v47;
    if (v43 < 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v34 = v47;
    if (connect(v20, a1, a1->sa_len) < 0)
    {
      goto LABEL_74;
    }

    fcntl(v20, 4, 4);
  }

  v33 = 1;
LABEL_53:
  *v19 = v20;
  v19[1] = v33;
  *(v19 + 1) = 60;
  v19[4] = 0;
  v19[6] = 0;
  if (a8)
  {
    *(v19 + 2) = v54;
    v19[6] = 1;
  }

  sa_len = a1->sa_len;
  __memcpy_chk();
  v36 = open("/dev/random", 0, 0);
  v37 = v36;
  if ((v36 & 0x80000000) == 0 && read(v36, &v49, 4uLL) == 4 || (gettimeofday(&v56, 0), LODWORD(v49) = getpid() ^ LODWORD(v56.tv_sec) ^ v56.tv_usec, (v37 & 0x80000000) == 0))
  {
    close(v37);
  }

  *(&v49 + 4) = 0x200000000;
  HIDWORD(v49) = a2;
  LODWORD(v50) = v34;
  _newrpclib_xdrmem_create((v19 + 50), (v19 + 43), 24, 0);
  if (!_newrpclib_xdr_callhdr(v19 + 25, &v49))
  {
    if (!v19[1])
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v19[49] = (*(*(v19 + 26) + 32))(v19 + 50);
  v38 = *(*(v19 + 26) + 56);
  if (v38)
  {
    v38(v19 + 50);
  }

  _newrpclib_xdrrec_create((v19 + 50), v46, v45, v19, readstrm, writestrm);
  v17[1] = strm_ops;
  v17[2] = v19;
  *v17 = _newrpclib_authnone_create();
  pthread_mutex_init((v17 + 3), 0);
  *a4 = v20;
LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

ssize_t readstrm(int *a1, void *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v10 = 0x4000000000;
  v10.fd = *a1;
  v6 = a1[4] / 1000 + 1000 * a1[2];
  while (1)
  {
    v7 = poll(&v10, 1u, v6);
    if (v7 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      a1[40] = 4;
      a1[41] = *__error();
      return -1;
    }
  }

  if (v7)
  {
    result = read(*a1, a2, a3);
    if (result == -1)
    {
      v9 = *__error();
      a1[40] = 4;
      a1[41] = v9;
    }

    else
    {
      if (result)
      {
        return result;
      }

      *(a1 + 20) = 0x3600000004;
    }
  }

  else
  {
    a1[40] = 5;
  }

  return -1;
}

uint64_t writestrm(int *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v12 = 0x400000000;
  v12.fd = *a1;
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = poll(&v12, 1u, -1);
      if (v8)
      {
        if (v8 == -1)
        {
          break;
        }

        v6 = write(*a1, a2, v7);
        if (v6 == -1)
        {
          break;
        }
      }

      a2 += v6;
      v9 = v7 <= v6;
      v7 -= v6;
      if (v9)
      {
        return v3;
      }
    }

    v10 = *__error();
    a1[40] = 3;
    a1[41] = v10;
    return -1;
  }

  return v3;
}

void *clntticotsord_create(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6)
{
  if (check_raddr(a1, 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      clntticotsord_create_cold_1();
    }

    return 0;
  }

  else
  {

    return clntstrm_create_timeout(a1, a2, a3, a4, a5, a6, 0, 0);
  }
}

uint64_t check_raddr(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 1) == a2)
  {
    return 0;
  }

  *_newrpclib___rpc_createerr() = 12;
  *(_newrpclib___rpc_createerr() + 2) = 22;
  return 0xFFFFFFFFLL;
}

void *clntticots_create(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6)
{
  if (check_raddr(a1, 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      clntticots_create_cold_1();
    }

    return 0;
  }

  else
  {

    return clntticotsord_create(a1, a2, a3, a4, a5, a6);
  }
}

void *_newrpclib_clnttcp_create_sa(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6)
{
  if (check_raddr(a1, 2) && check_raddr(a1, 30))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_clnttcp_create_sa_cold_1();
    }

    return 0;
  }

  else
  {

    return clntstrm_create_timeout(a1, a2, a3, a4, a5, a6, 0, 0);
  }
}

void *_newrpclib_clnttcp_create_timeout(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6, uint64_t a7, __int128 *a8)
{
  if (check_raddr(a1, 2) && check_raddr(a1, 30))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_clnttcp_create_timeout_cold_1();
    }

    return 0;
  }

  else
  {

    return clntstrm_create_timeout(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void *_newrpclib_clnttcp_create(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6)
{
  if (check_raddr(a1, 2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_clnttcp_create_cold_1();
    }

    return 0;
  }

  else
  {

    return clntstrm_create_timeout(a1, a2, a3, a4, a5, a6, 0, 0);
  }
}

void *clntticotsord_create_timeout(const sockaddr *a1, uint64_t a2, unsigned int a3, int *a4, unsigned int a5, unsigned int a6, uint64_t a7, __int128 *a8)
{
  if (check_raddr(a1, 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      clntticotsord_create_timeout_cold_1(a1);
    }

    return 0;
  }

  else
  {

    return clntstrm_create_timeout(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t clntstrm_call(void *a1, int a2, unsigned int (*a3)(uint64_t, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v11 = a1[2];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (!*(v11 + 24))
  {
    *(v11 + 8) = a7;
    *(v11 + 16) = a8;
  }

  v12 = a7 | a8;
  v13 = (v12 | a5) != 0;
  v14 = v12 == 0;
  v15 = 2;
  while (1)
  {
    *(v11 + 200) = 0;
    *(v11 + 160) = 0;
    v16 = *(v11 + 172) - 1;
    *(v11 + 172) = v16;
    if (!(*(*(v11 + 208) + 24))(v11 + 200, v11 + 172, *(v11 + 196)) || !(*(*(v11 + 208) + 8))(v11 + 200, &v26) || !(*(*(*a1 + 56) + 8))() || !a3(v11 + 200, a4))
    {
      if (!*(v11 + 160))
      {
        *(v11 + 160) = 1;
      }

      _newrpclib_xdrrec_endofrecord(v11 + 200, 1);
      return *(v11 + 160);
    }

    if (!_newrpclib_xdrrec_endofrecord(v11 + 200, v13))
    {
      result = 3;
      goto LABEL_31;
    }

    if (!v13)
    {
      return 0;
    }

    if (v14)
    {
      break;
    }

    *(v11 + 200) = 1;
    v22 = _newrpclib__null_auth;
    *&v23 = qword_280A69790;
    *&v24 = 0;
    *(&v24 + 1) = _newrpclib_xdr_void;
    if (!_newrpclib_xdrrec_skiprecord(v11 + 200))
    {
      return *(v11 + 160);
    }

    v17 = bswap32(v16);
    while (1)
    {
      if (!_newrpclib_xdr_replymsg((v11 + 200), &v21))
      {
        result = *(v11 + 160);
        if (result)
        {
          return result;
        }

        goto LABEL_17;
      }

      if (v21 == v17)
      {
        break;
      }

LABEL_17:
      v22 = _newrpclib__null_auth;
      *&v23 = qword_280A69790;
      *&v24 = 0;
      *(&v24 + 1) = _newrpclib_xdr_void;
      if (!_newrpclib_xdrrec_skiprecord(v11 + 200))
      {
        return *(v11 + 160);
      }
    }

    _newrpclib__seterr_reply(&v21, (v11 + 160));
    if (!*(v11 + 160))
    {
      if ((*(*(*a1 + 56) + 16))())
      {
        if ((!a5 || !(a5)(v11 + 200, a6)) && !*(v11 + 160))
        {
          *(v11 + 160) = 2;
        }
      }

      else
      {
        *(v11 + 160) = 0x600000007;
      }

      if (*(&v22 + 1))
      {
        *(v11 + 200) = 2;
        _newrpclib_xdr_opaque_auth((v11 + 200), &v22);
      }

      return *(v11 + 160);
    }

    if (v15)
    {
      --v15;
      if ((*(*(*a1 + 56) + 24))())
      {
        continue;
      }
    }

    return *(v11 + 160);
  }

  result = 5;
LABEL_31:
  *(v11 + 160) = result;
  return result;
}

uint64_t clntstrm_geterr(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 160);
  *(a2 + 8) = *(v2 + 168);
  *a2 = v3;
  return result;
}

uint64_t clntstrm_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 200) = 2;
  return a2(v3 + 200, a3);
}

void clntstrm_destroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 4))
  {
    close(*v2);
  }

  v3 = *(*(v2 + 208) + 56);
  if (v3)
  {
    v3(v2 + 200);
  }

  pthread_mutex_destroy((a1 + 24));
  free(v2);

  free(a1);
}

uint64_t clntstrm_control(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = *(a1 + 16);
  if (a2 == 3)
  {
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    a3[2] = *(v3 + 64);
    a3[3] = v7;
    *a3 = v5;
    a3[1] = v6;
    v8 = *(v3 + 96);
    v9 = *(v3 + 112);
    v10 = *(v3 + 144);
    a3[6] = *(v3 + 128);
    a3[7] = v10;
    a3[4] = v8;
    a3[5] = v9;
    return 1;
  }

  if (a2 == 2)
  {
    *a3 = *(v3 + 8);
    return 1;
  }

  if (a2 != 1)
  {
    return 0;
  }

  *(v3 + 8) = *a3;
  result = 1;
  *(v3 + 24) = 1;
  return result;
}

void *_newrpclib_clntudp_bufcreate_timeout(unsigned __int8 *a1, unsigned int a2, unsigned int a3, int *a4, int a5, int a6, _OWORD *a7, __int128 *a8)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *v31 = 0;
  v16 = calloc(1uLL, 0x58uLL);
  if (!v16)
  {
    *_newrpclib___rpc_createerr() = 12;
    v24 = *__error();
    *(_newrpclib___rpc_createerr() + 2) = v24;
    return v16;
  }

  v17 = (a5 + 3) & 0xFFFFFFFC;
  v18 = (a6 + 3) & 0xFFFFFFFC;
  v38 = (a6 + 3) & 0xFFFFFFFC;
  v19 = calloc(1uLL, v17 + v18 + 264);
  if (!v19)
  {
    *_newrpclib___rpc_createerr() = 12;
    v25 = *__error();
    *(_newrpclib___rpc_createerr() + 2) = v25;
LABEL_28:
    free(v16);
    return 0;
  }

  v20 = v19;
  *(v19 + 31) = &v19[v18 + 260];
  if (!*(a1 + 1))
  {
    v37.tv_sec = 0;
    if (a2 == 100000)
    {
      *(a1 + 1) = 28416;
    }

    else if (_newrpclib_socparms2netid(a1[1], 2, 17, &v37) || !_newrpclib_rpcb_getaddr_timeout(a1, v37.tv_sec, a2, a3, a7, a8))
    {
LABEL_27:
      free(v20);
      goto LABEL_28;
    }
  }

  v16[1] = udp_ops;
  v16[2] = v20;
  memcpy(v20 + 8, a1, *a1);
  v21 = v20[8];
  *(v20 + 18) = 1;
  *(v20 + 34) = v21;
  *(v20 + 61) = v17;
  *(v20 + 64) = v18;
  *(v20 + 38) = 0;
  if (a7)
  {
    *(v20 + 9) = *a7;
  }

  *(v20 + 20) = -1;
  *(v20 + 42) = -1;
  if (a8)
  {
    *(v20 + 10) = *a8;
  }

  v22 = open("/dev/random", 0, 0);
  v23 = v22;
  if ((v22 & 0x80000000) == 0 && read(v22, &v32, 4uLL) == 4 || (v37.tv_sec = 0, *&v37.tv_usec = 0, gettimeofday(&v37, 0), LODWORD(v32) = getpid() ^ LODWORD(v37.tv_sec) ^ v37.tv_usec, (v23 & 0x80000000) == 0))
  {
    close(v23);
  }

  *(&v32 + 4) = 0x200000000;
  HIDWORD(v32) = a2;
  LODWORD(v33) = a3;
  _newrpclib_xdrmem_create((v20 + 192), *(v20 + 31), v17, 0);
  if (!_newrpclib_xdr_callhdr(v20 + 24, &v32))
  {
    goto LABEL_27;
  }

  *(v20 + 60) = (*(*(v20 + 25) + 32))(v20 + 192);
  if (*a4 < 0)
  {
    v29 = 1;
    v30 = 1;
    v26 = socket(v20[9], 2, 17);
    *a4 = v26;
    if (v26 < 0)
    {
      *_newrpclib___rpc_createerr() = 12;
      v27 = *__error();
      *(_newrpclib___rpc_createerr() + 2) = v27;
    }

    else
    {
      bindresvport_sa(v26, 0);
      ioctl(*a4, 0x8004667EuLL, &v30);
      setsockopt(*a4, 0xFFFF, 4130, &v29, 4u);
      *(v20 + 1) = 1;
      v31[0] = 0;
      v31[1] = 4;
      if (!getsockopt(*a4, 0xFFFF, 4098, v31, &v31[1]))
      {
        v31[1] = 4;
        if (v18 <= v31[0] || !setsockopt(*a4, 0xFFFF, 4098, &v38, 4u))
        {
          goto LABEL_17;
        }
      }

      close(*a4);
      *a4 = -1;
    }

    goto LABEL_27;
  }

  *(v20 + 1) = 0;
LABEL_17:
  *v20 = *a4;
  *v16 = _newrpclib_authnone_create();
  return v16;
}

void *_newrpclib_clntudp_bufcreate(unsigned __int8 *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6, int a7, int a8)
{
  *&v9 = a4;
  *(&v9 + 1) = a5;
  if (!*a1 && a1[1] == 2)
  {
    *a1 = 16;
  }

  return _newrpclib_clntudp_bufcreate_timeout(a1, a2, a3, a6, a7, a8, &v9, 0);
}

void *_newrpclib_clntudp_bufcreate_sa(unsigned __int8 *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6, int a7, int a8)
{
  *&v9 = a4;
  *(&v9 + 1) = a5;
  return _newrpclib_clntudp_bufcreate_timeout(a1, a2, a3, a6, a7, a8, &v9, 0);
}

void *_newrpclib_clntudp_create_sa(unsigned __int8 *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int *a6)
{
  *&v7 = a4;
  *(&v7 + 1) = a5;
  return _newrpclib_clntudp_bufcreate_timeout(a1, a2, a3, a6, 8800, 8800, &v7, 0);
}

uint64_t clntudp_call(void *a1, int a2, unsigned int (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v35 = a2;
  v12 = a1[2];
  v13 = *(v12 + 160);
  if (v13 == -1)
  {
    v14 = a8 / 1000 + 1000 * a7;
  }

  else
  {
    v14 = *(v12 + 168) / 1000 + 1000 * v13;
  }

  v15 = 0;
  v34 = 0;
  v33 = 0;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v25 = 2;
  memset(v27, 0, sizeof(v27));
LABEL_5:
  *(v12 + 192) = 0;
  (*(*(v12 + 200) + 40))(v12 + 192, *(v12 + 240));
  ++**(v12 + 248);
  if (!(*(*(v12 + 200) + 8))(v12 + 192, &v35) || !(*(*(*a1 + 56) + 8))() || !a3(v12 + 192, v10))
  {
    result = 1;
LABEL_35:
    *(v12 + 176) = result;
    goto LABEL_32;
  }

  v16 = (*(*(v12 + 200) + 32))(v12 + 192);
  while (1)
  {
    if (sendto(*v12, *(v12 + 248), v16, 0, (v12 + 8), *(v12 + 136)) != v16)
    {
      v21 = *__error();
      result = 3;
      goto LABEL_31;
    }

    if (!v14)
    {
LABEL_34:
      result = 5;
      goto LABEL_35;
    }

    v29 = _newrpclib__null_auth;
    *&v30 = qword_280A69790;
    *&v31 = a6;
    *(&v31 + 1) = a5;
    v33.fd = *v12;
    *&v33.events = 64;
    v17 = *(v12 + 152) / 1000 + 1000 * *(v12 + 144);
LABEL_12:
    while (1)
    {
      v18 = poll(&v33, 1u, v17);
      if (v18 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_30;
      }
    }

    if (v18)
    {
      break;
    }

    v15 += v17;
    if (v15 >= v14)
    {
      goto LABEL_34;
    }
  }

  do
  {
    v34 = 128;
    v19 = recvfrom(*v12, (v12 + 260), *(v12 + 256), 0, &v36, &v34);
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v19 < 4 || *(v12 + 260) != **(v12 + 248))
      {
        goto LABEL_12;
      }

      _newrpclib_xdrmem_create(v27, v12 + 260, v19, 1);
      if (!_newrpclib_xdr_replymsg(v27, &v28))
      {
        *(v12 + 176) = 2;
        goto LABEL_42;
      }

      _newrpclib__seterr_reply(&v28, (v12 + 176));
      if (!*(v12 + 176))
      {
        if (!(*(*(*a1 + 56) + 16))())
        {
          *(v12 + 176) = 0x600000007;
        }

        if (*(&v29 + 1))
        {
          *(v12 + 192) = 2;
          _newrpclib_xdr_opaque_auth((v12 + 192), &v29);
        }

        goto LABEL_42;
      }

      v10 = a4;
      if (!v25 || (--v25, !(*(*(*a1 + 56) + 24))()))
      {
LABEL_42:
        result = *(v12 + 176);
        goto LABEL_32;
      }

      goto LABEL_5;
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    goto LABEL_12;
  }

LABEL_30:
  v21 = *__error();
  result = 4;
LABEL_31:
  *(v12 + 176) = result;
  *(v12 + 180) = v21;
LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t clntudp_geterr(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 176);
  *(a2 + 8) = *(v2 + 184);
  *a2 = v3;
  return result;
}

uint64_t clntudp_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 192) = 2;
  return a2(v3 + 192, a3);
}

void clntudp_destroy(void *a1)
{
  v2 = a1[2];
  if (*(v2 + 4))
  {
    close(*v2);
  }

  v3 = *(*(v2 + 200) + 56);
  if (v3)
  {
    v3(v2 + 192);
  }

  free(v2);

  free(a1);
}

uint64_t clntudp_control(uint64_t a1, int a2, _OWORD *a3)
{
  result = 0;
  v5 = *(a1 + 16);
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          return result;
        }

        v7 = *(v5 + 8);
        v8 = *(v5 + 24);
        v9 = *(v5 + 56);
        a3[2] = *(v5 + 40);
        a3[3] = v9;
        *a3 = v7;
        a3[1] = v8;
        v10 = *(v5 + 72);
        v11 = *(v5 + 88);
        v12 = *(v5 + 120);
        a3[6] = *(v5 + 104);
        a3[7] = v12;
        a3[4] = v10;
        a3[5] = v11;
        return 1;
      }

      v6 = *(v5 + 160);
      goto LABEL_16;
    }

    *(v5 + 160) = *a3;
  }

  else if (a2 > 5)
  {
    if (a2 == 6)
    {
      v6 = *(v5 + 192);
      v13 = *(v5 + 224);
      a3[1] = *(v5 + 208);
      a3[2] = v13;
      goto LABEL_16;
    }

    if (a2 != 7)
    {
      return result;
    }

    *a3 = *(v5 + 240);
  }

  else
  {
    if (a2 != 4)
    {
      v6 = *(v5 + 144);
LABEL_16:
      *a3 = v6;
      return 1;
    }

    *(v5 + 144) = *a3;
  }

  return 1;
}

unint64_t _newrpclib_getrpcport(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  result = gethostbyname(a1);
  if (result)
  {
    v11[0] = 0;
    v11[1] = 0;
    v8 = **(result + 24);
    v9 = *(result + 20);
    __memmove_chk();
    BYTE1(v11[0]) = 2;
    result = _newrpclib_pmap_getport(v11, a2, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_pmap_getmaps(uint64_t a1)
{
  v6 = 0;
  v5 = -1;
  v4 = xmmword_2771E5530;
  *(a1 + 2) = 28416;
  v2 = _newrpclib_clnttcp_create(a1, 100000, 2u, &v5, 0x32u, 0x1F4u);
  (*(v2[1] + 40))(v2, 1);
  if (_newrpclib_pmapproc_dump_2(&v6, v2))
  {
    _newrpclib_clnt_perror(v2, "pmap_getmaps rpc problem");
  }

  (*(v2[1] + 32))(v2);
  *(a1 + 2) = 0;
  return v6;
}

unint64_t pmap_getport_timeout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0uLL;
  if (a5)
  {
    v6 = *a5;
    a5 = a5[1];
    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = 5;
  if (a6)
  {
LABEL_3:
    v8 = *a6;
    v7 = a6[1];
  }

LABEL_5:
  v9 = *(a1 + 1);
  if (v9 == 30)
  {
    *(a1 + 2) = 0;
    cvt6to4(a1, &v17);
    goto LABEL_11;
  }

  if (v9 != 2)
  {
LABEL_11:
    result = 0;
    goto LABEL_15;
  }

  *(a1 + 2) = 0;
  v17 = *a1;
  v16 = 0;
  v15 = -1;
  WORD1(v17) = 28416;
  result = _newrpclib_clntudp_bufcreate(&v17, 0x186A0u, 2u, v6, a5, &v15, 400, 400);
  if (result)
  {
    v11 = result;
    if ((**(result + 8))())
    {
      *_newrpclib___rpc_createerr() = 14;
      v12 = *(v11[1] + 16);
      v13 = _newrpclib___rpc_createerr();
      v12(v11, v13 + 4);
    }

    else if (!v16)
    {
      *_newrpclib___rpc_createerr() = 15;
    }

    (*(v11[1] + 32))(v11);
    result = v16;
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_pmap_rmtcall(uint64_t a1)
{
  v6 = -1;
  *(a1 + 2) = 28416;
  v2 = _newrpclib_clntudp_create(a1, 0x186A0u, 2u, 3, 0, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = (*v2[1])();
    (*(v3[1] + 32))(v3);
  }

  else
  {
    v4 = 16;
  }

  *(a1 + 2) = 0;
  return v4;
}

uint64_t _newrpclib_xdr_rmtcall_args(uint64_t a1, uint64_t a2)
{
  result = _newrpclib_xdr_u_long(a1);
  if (result)
  {
    result = _newrpclib_xdr_u_long(a1);
    if (result)
    {
      result = _newrpclib_xdr_u_long(a1);
      if (result)
      {
        v5 = (*(*(a1 + 8) + 32))(a1);
        result = _newrpclib_xdr_u_long(a1);
        if (result)
        {
          v6 = (*(*(a1 + 8) + 32))(a1);
          result = (*(a2 + 24))(a1, *(a2 + 16));
          if (result)
          {
            v7 = (*(*(a1 + 8) + 32))(a1);
            *(a2 + 12) = v7 - v6;
            (*(*(a1 + 8) + 40))(a1, v5);
            result = _newrpclib_xdr_u_long(a1);
            if (result)
            {
              (*(*(a1 + 8) + 40))(a1, v7);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_rmtcallres(uint64_t (***a1)(void), uint64_t a2)
{
  v5 = *a2;
  result = _newrpclib_xdr_reference(a1, &v5, 4uLL, _newrpclib_xdr_u_long);
  if (result)
  {
    result = _newrpclib_xdr_u_long(a1);
    if (result)
    {
      *a2 = v5;
      return (*(a2 + 24))(a1, *(a2 + 16));
    }
  }

  return result;
}

uint64_t _newrpclib_pmap_wakeup()
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v6.sa_family = 1;
  __strlcpy_chk();
  v0 = socket(1, 1, 0);
  if (v0 == -1)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    if (connect(v0, &v6, 0x6Au) == -1)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      read(v1, &v5, 1uLL);
      v2 = 0;
    }

    close(v1);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t _newrpclib_rpcb_callit()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v26 = *MEMORY[0x277D85DE8];
  v16 = _newrpclib_authunix_create_default();
  bzero(v25, 0x578uLL);
  bzero(v24, 0x2260uLL);
  v22 = 0;
  v23[0] = v6;
  v23[1] = 0;
  v23[2] = v4;
  v23[3] = v2;
  v17 = reply_addr_cache_create(0);
  if (build_callit_rpc(v15, v14, v12, 3, v10, v8, v25, v16, &v22))
  {
LABEL_2:
    v18 = 1;
    goto LABEL_3;
  }

  v21 = _newrpclib_clnt_multicasts_buf_timeout(&rpcb_addrs, 2uLL, rpcb_mcastrecv, v23, v25, v22, v24, 0x2260uLL, v17, 2u, 0xAu, 2);
  if (v21 == 5 || (v18 = v21, !v21))
  {
    if (!build_callit_rpc(v15, v14, v12, 2, v10, v8, v25, v16, &v22))
    {
      v18 = _newrpclib_clnt_multicasts_buf_timeout(&pmap_addrs, 1uLL, pmap_mcastrecv, v23, v25, v22, v24, 0x2260uLL, v17, 2u, 0xAu, 2);
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:
  (*(*(v16 + 7) + 32))(v16);
  reply_addr_cache_destroy(v17);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t build_callit_rpc(int a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, _DWORD *a9)
{
  memset(v16, 0, sizeof(v16));
  v17[0] = 0;
  v17[1] = 0x186A000000002;
  v18 = a4;
  v19 = 5;
  v20 = *a8;
  v21 = *(a8 + 2);
  v22 = *(a8 + 24);
  v23 = *(a8 + 5);
  v12[0] = a1;
  v12[1] = a2;
  v14 = a6;
  v13 = a3;
  v15 = a5;
  *a9 = 0;
  _newrpclib_xdrmem_create(v16, a7, 1400, 0);
  if (_newrpclib_xdr_callmsg(v16, v17) && xdr_callit_args(v16, v12))
  {
    v9 = 0;
    *a9 = (*(*(&v16[0] + 1) + 32))(v16);
    v10 = *(*(&v16[0] + 1) + 56);
    if (!v10)
    {
      return v9;
    }

    goto LABEL_6;
  }

  v10 = *(*(&v16[0] + 1) + 56);
  v9 = 1;
  if (v10)
  {
LABEL_6:
    v10(v16);
  }

  return v9;
}

uint64_t rpcb_mcastrecv(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  if (_newrpclib_socparms2netid(*(a2 + 1), 2, 17, &v14))
  {
    v8 = 0;
    goto LABEL_11;
  }

  v21 = 0;
  v17[0] = 0u;
  v17[1] = _newrpclib__null_auth;
  v18 = qword_280A69790;
  v19 = v16;
  v20 = xdr_rmt3callres;
  v16[0] = 0;
  v16[1] = 0;
  v9 = *a1;
  v16[2] = *(a1 + 16);
  v16[3] = v9;
  _newrpclib_xdrmem_create(v15, a3, a4, 1);
  if (!_newrpclib_xdr_replymsg(v15, v17) || DWORD2(v17[0]) | DWORD2(v18))
  {
    v8 = 0;
    goto LABEL_8;
  }

  v22 = v16[0];
  memset(v23, 0, 128);
  LOBYTE(v23[0]) = 0x80;
  if (!_newrpclib_uaddr2sa(v16[0], "udp", v23))
  {
    if (BYTE1(v23[0]) == 2)
    {
      v13 = v23[1];
      if (v23[1] >> 28 == 14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (BYTE1(v23[0]) == 30)
      {
        if (LOBYTE(v23[2]) != 255)
        {
          goto LABEL_6;
        }

LABEL_21:
        *(a2 + 2) = HIWORD(v23[0]);
        if (!_newrpclib_sa2uaddr(a2, &v22))
        {
          free(v16[0]);
          v16[0] = v22;
        }

        goto LABEL_6;
      }

      v13 = v23[1];
    }

    if (BYTE1(v23[0]) != 2 || HIBYTE(v13) != 255)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_6:
  v8 = (*(a1 + 24))(*(a1 + 16), v14, v16[0]);
LABEL_8:
  v10 = *(*(&v15[0] + 1) + 56);
  if (v10)
  {
    v10(v15);
  }

  _newrpclib_xdr_free(_newrpclib_xdr_replymsg);
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t pmap_mcastrecv(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  v13 = 0;
  if (_newrpclib_socparms2netid(*(a2 + 1), 2, 17, &v12))
  {
    return 0;
  }

  v20 = 0;
  v16[0] = 0u;
  v16[1] = _newrpclib__null_auth;
  v17 = qword_280A69790;
  v18 = v15;
  v19 = xdr_pmapcallres;
  v9 = *(a1 + 16);
  v15[0] = 0;
  v15[1] = v9;
  v15[2] = *a1;
  _newrpclib_xdrmem_create(v14, a3, a4, 1);
  if (!_newrpclib_xdr_replymsg(v14, v16) || DWORD2(v16[0]) | DWORD2(v17) || (*(a2 + 2) = bswap32(LOWORD(v15[0])) >> 16, _newrpclib_sa2uaddr(a2, &v13)))
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(a1 + 24))(*(a1 + 16), v12, v13);
    free(v13);
  }

  v10 = *(*(&v14[0] + 1) + 56);
  if (v10)
  {
    v10(v14);
  }

  _newrpclib_xdr_free(_newrpclib_xdr_replymsg);
  return v8;
}

uint64_t _newrpclib_pmap_callit()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v25 = *MEMORY[0x277D85DE8];
  v16 = _newrpclib_authunix_create_default();
  bzero(v24, 0x578uLL);
  bzero(v23, 0x2260uLL);
  v21 = 0;
  v17 = reply_addr_cache_create(0);
  v22[0] = v6;
  v22[1] = v4;
  v22[2] = v2;
  if (build_callit_rpc(v15, v14, v12, 2, v10, v8, v24, v16, &v21))
  {
    v18 = 1;
  }

  else
  {
    v18 = _newrpclib_clnt_multicasts_buf_timeout(&pmap_addrs, 1uLL, pmap_bcastrecv, v22, v24, v21, v23, 0x2260uLL, v17, 2u, 0xAu, 2);
  }

  (*(*(v16 + 7) + 32))(v16);
  reply_addr_cache_destroy(v17);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t pmap_bcastrecv(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  memset(v9, 0, sizeof(v9));
  v16 = 0;
  v12[0] = 0u;
  v12[1] = _newrpclib__null_auth;
  v13 = qword_280A69790;
  v14 = &v10;
  v15 = xdr_pmapcallres;
  v10 = 0;
  v11 = vextq_s8(*a1, *a1, 8uLL);
  _newrpclib_xdrmem_create(v9, a3, a4, 1);
  if (!_newrpclib_xdr_replymsg(v9, v12) || DWORD2(v12[0]) | DWORD2(v13))
  {
    v6 = 0;
  }

  else
  {
    *(a2 + 2) = bswap32(v10) >> 16;
    v6 = (*(a1 + 16))(*(a1 + 8), a2);
  }

  v7 = *(*(&v9[0] + 1) + 56);
  if (v7)
  {
    v7(v9);
  }

  _newrpclib_xdr_free(_newrpclib_xdr_replymsg);
  return v6;
}

uint64_t _newrpclib_rpcb_indirect(char *a1, char *__s2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 *a10, void *a11)
{
  timeout = _newrpclib_clnt_create_timeout(a1, 100000, 4u, __s2, a10);
  if (!timeout)
  {
    return 16;
  }

  v12 = timeout;
  v13 = *a10;
  v14 = *(a10 + 1);
  v15 = (*timeout[1])();
  *a11 = 0;
  (*(v12[1] + 32))(v12);
  return v15;
}

uint64_t xdr_callit_args(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_u_long(a1);
  if (result)
  {
    result = _newrpclib_xdr_u_long(a1);
    if (result)
    {
      result = _newrpclib_xdr_u_long(a1);
      if (result)
      {
        v5 = *(a2 + 16);
        *(a2 + 12) = _newrpclib_xdr_sizeof(*(a2 + 24));
        result = _newrpclib_xdr_u_long(a1);
        if (result)
        {
          return (*(a2 + 24))(a1, *(a2 + 16)) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t xdr_rmt3callres(uint64_t (***a1)(void), uint64_t a2)
{
  if (!_newrpclib_xdr_wrapstring(a1, a2) || !_newrpclib_xdr_uint32_t(a1, (a2 + 8)))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);

  return v5(a1, v4);
}

uint64_t _newrpclib_pmap_indirect(char *a1, char *__s2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 *a10, _DWORD *a11)
{
  timeout = _newrpclib_clnt_create_timeout(a1, 100000, 2u, __s2, a10);
  if (!timeout)
  {
    return 16;
  }

  v12 = timeout;
  v13 = *a10;
  v14 = *(a10 + 1);
  v15 = (*timeout[1])();
  *a11 = 0;
  (*(v12[1] + 32))(v12);
  return v15;
}

uint64_t xdr_pmapcallres(uint64_t (***a1)(void), uint64_t a2)
{
  if (!_newrpclib_xdr_uint32_t(a1, a2) || !_newrpclib_xdr_uint32_t(a1, (a2 + 4)))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 16);

  return v5(a1, v4);
}

uint64_t _newrpclib_xdr_callmsg(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v13 = *(a2 + 40);
    if (v13 > 0x190)
    {
      return 0;
    }

    v14 = *(a2 + 64);
    if (v14 > 0x190)
    {
      return 0;
    }

    v15 = (*(*(a1 + 8) + 48))(a1, ((v13 + 3) & 0x3FC) + ((v14 + 3) & 0x3FCu) + 40);
    if (v15)
    {
      *v15 = bswap32(*a2);
      v15[1] = bswap32(*(a2 + 4));
      if (*(a2 + 4))
      {
        return 0;
      }

      v15[2] = bswap32(*(a2 + 8));
      if (*(a2 + 8) != 2)
      {
        return 0;
      }

      v15[3] = bswap32(*(a2 + 12));
      v15[4] = bswap32(*(a2 + 16));
      v15[5] = bswap32(*(a2 + 20));
      v15[6] = bswap32(*(a2 + 24));
      v16 = v15 + 8;
      v15[7] = bswap32(*(a2 + 40));
      v17 = *(a2 + 40);
      if (v17)
      {
        memmove(v15 + 8, *(a2 + 32), v17);
        v16 = (v16 + ((*(a2 + 40) + 3) & 0xFFFFFFFC));
      }

      *v16 = bswap32(*(a2 + 48));
      v16[1] = bswap32(*(a2 + 64));
      v18 = *(a2 + 64);
      if (v18)
      {
        v19 = *(a2 + 56);
        v20 = v16 + 2;
LABEL_48:
        memmove(v20, v19, v18);
      }

      return 1;
    }

    v4 = *a1;
  }

  if (v4 == 1 && (v5 = (*(*(a1 + 8) + 48))(a1, 32)) != 0)
  {
    *a2 = bswap32(*v5);
    v6 = v5[1];
    *(a2 + 4) = bswap32(v6);
    if (v6)
    {
      return 0;
    }

    v7 = v5[2];
    *(a2 + 8) = bswap32(v7);
    if (v7 != 0x2000000)
    {
      return 0;
    }

    *(a2 + 12) = bswap32(v5[3]);
    *(a2 + 16) = bswap32(v5[4]);
    *(a2 + 20) = bswap32(v5[5]);
    *(a2 + 24) = bswap32(v5[6]);
    v8 = v5[7];
    v9 = bswap32(v8);
    *(a2 + 40) = v9;
    if (v8)
    {
      if (v9 > 0x190)
      {
        return 0;
      }

      if (!*(a2 + 32))
      {
        *(a2 + 32) = calloc(1uLL, (v9 + 3) & 0x3FC);
        v9 = *(a2 + 40);
      }

      v10 = (*(*(a1 + 8) + 48))(a1, (v9 + 3) & 0xFFFFFFFC);
      v11 = *(a2 + 40);
      if (v10)
      {
        memmove(*(a2 + 32), v10, v11);
      }

      else
      {
        result = _newrpclib_xdr_opaque(a1, *(a2 + 32), v11);
        if (!result)
        {
          return result;
        }
      }
    }

    v21 = (*(*(a1 + 8) + 48))(a1, 8);
    if (v21)
    {
      *(a2 + 48) = bswap32(*v21);
      v22 = bswap32(v21[1]);
      *(a2 + 64) = v22;
      if (!v22)
      {
        return 1;
      }

      goto LABEL_37;
    }

    result = _newrpclib_xdr_enum(a1, a2 + 48);
    if (result)
    {
      result = _newrpclib_xdr_u_int(a1, (a2 + 64));
      if (result)
      {
        v22 = *(a2 + 64);
        if (!v22)
        {
          return 1;
        }

LABEL_37:
        if (v22 > 0x190)
        {
          return 0;
        }

        if (!*(a2 + 56))
        {
          *(a2 + 56) = calloc(1uLL, (v22 + 3) & 0x3FC);
          v22 = *(a2 + 64);
        }

        v23 = (*(*(a1 + 8) + 48))(a1, (v22 + 3) & 0xFFFFFFFC);
        v18 = *(a2 + 64);
        if (v23)
        {
          v24 = v23;
          v20 = *(a2 + 56);
          v19 = v24;
          goto LABEL_48;
        }

        result = _newrpclib_xdr_opaque(a1, *(a2 + 56), v18);
        if (!result)
        {
          return result;
        }

        return 1;
      }
    }
  }

  else
  {
    result = _newrpclib_xdr_u_long(a1);
    if (result)
    {
      result = _newrpclib_xdr_enum(a1, a2 + 4);
      if (result)
      {
        if (*(a2 + 4))
        {
          return 0;
        }

        result = _newrpclib_xdr_u_long(a1);
        if (!result)
        {
          return result;
        }

        if (*(a2 + 8) != 2)
        {
          return 0;
        }

        result = _newrpclib_xdr_u_long(a1);
        if (result)
        {
          result = _newrpclib_xdr_u_long(a1);
          if (result)
          {
            result = _newrpclib_xdr_u_long(a1);
            if (result)
            {
              result = _newrpclib_xdr_opaque_auth(a1, a2 + 24);
              if (result)
              {

                return _newrpclib_xdr_opaque_auth(a1, a2 + 48);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL _newrpclib_rpc_control(int a1, char *__s2)
{
  v2 = __s2;
  switch(a1)
  {
    case 1:
      if ((__s2 - 2049) < 0xFFFFF800)
      {
        return 0;
      }

      svc_min_threads = __s2;
      if (svc_max_threads < __s2)
      {
        svc_max_threads = __s2;
      }

      return 1;
    case 2:
      v6 = svc_min_threads;
      goto LABEL_43;
    case 3:
      if (__s2 >= 2048)
      {
        v7 = 2048;
      }

      else
      {
        v7 = __s2;
      }

      svc_max_threads = v7;
      if (v7 < svc_min_threads)
      {
        svc_min_threads = v7;
      }

      return 1;
    case 4:
      v6 = svc_max_threads;
      goto LABEL_43;
    case 5:
      if (geteuid())
      {
        return 0;
      }

      if (v2)
      {
        pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
        result = 1;
        svc_cred_switch = 1;
        return result;
      }

      svc_cred_switch = 0;
      return 1;
    case 6:
      v6 = svc_cred_switch;
      goto LABEL_43;
    case 7:
      if (__s2 > 0x8000)
      {
        return 0;
      }

      svc_listen_backlog = __s2;
      return 1;
    case 8:
      v6 = svc_listen_backlog;
      goto LABEL_43;
    case 9:
      svc_nreq = __s2;
      return 1;
    case 10:
      v6 = svc_nreq;
      goto LABEL_43;
    case 11:
      svc_stack_size = __s2;
      return 1;
    case 12:
      v4 = svc_stack_size;
      goto LABEL_26;
    case 13:
      _newrpclib_rpc_ipmode = __s2;
      return 1;
    case 14:
      v8 = &_newrpclib_rpc_ipmode;
      goto LABEL_32;
    case 15:
      _newrpclib_rpc_v4mapped_ok = __s2 != 0;
      return 1;
    case 16:
      v8 = &_newrpclib_rpc_v4mapped_ok;
LABEL_32:
      v6 = *v8;
      goto LABEL_43;
    case 17:
      v13 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 0;
      if (__s2)
      {
        if (_newrpclib_netid2socparms(__s2, &v13, &v12, &v11, 0) || _newrpclib_socparms2netid(v13, v12, v11, &v10))
        {
          return 0;
        }

        v3 = v10;
      }

      else
      {
        v3 = 0;
      }

      portmap_netid = v3;
      return 1;
    case 18:
      v4 = portmap_netid;
LABEL_26:
      *__s2 = v4;
      return 1;
    case 19:
      result = 0;
      if (__s2 > 0x21 || ((1 << __s2) & 0x202220201) == 0)
      {
        return result;
      }

      svc_thread_qos_class = __s2;
      return 1;
    case 20:
      v6 = svc_thread_qos_class;
      goto LABEL_43;
    case 21:
      if ((__s2 - 1) < 0xFFFFFFF0)
      {
        return 0;
      }

      svc_thread_relative_priority = __s2;
      return 1;
    case 22:
      v6 = svc_thread_relative_priority;
LABEL_43:
      *__s2 = v6;
      return 1;
    default:
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _newrpclib_rpc_control_cold_1(a1);
      return 0;
  }
}

uint64_t _newrpclib_xdr_opaque_auth(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_enum();
  if (result)
  {

    return _newrpclib_xdr_bytes(a1, (a2 + 8), (a2 + 16), 0x190u);
  }

  return result;
}

uint64_t _newrpclib_xdr_replymsg(uint64_t (***a1)(void), uint64_t a2)
{
  if (!_newrpclib_xdr_u_long(a1) || !_newrpclib_xdr_enum(a1, a2 + 4) || *(a2 + 4) != 1)
  {
    return 0;
  }

  return _newrpclib_xdr_union(a1, (a2 + 8), a2 + 16, &reply_dscrm, 0);
}

uint64_t _newrpclib_xdr_callhdr(uint64_t (***a1)(void), uint64_t a2)
{
  *(a2 + 4) = 0x200000000;
  v2 = a2 + 4;
  if (*a1 || !_newrpclib_xdr_u_long(a1) || !_newrpclib_xdr_enum(a1, v2) || !_newrpclib_xdr_u_long(a1) || !_newrpclib_xdr_u_long(a1))
  {
    return 0;
  }

  return _newrpclib_xdr_u_long(a1);
}

_DWORD *_newrpclib__seterr_reply(_DWORD *result, int *a2)
{
  v2 = result[2];
  if (v2 == 1)
  {
    v3 = result[4];
    if (!v3)
    {
      *a2 = 6;
      a2[1] = result[5];
      v3 = result[6];
      goto LABEL_23;
    }

    if (v3 != 1)
    {
      v6 = 0x100000010;
LABEL_22:
      *a2 = v6;
      goto LABEL_23;
    }

    *a2 = 7;
    v4 = result[5];
LABEL_12:
    a2[1] = v4;
    return result;
  }

  if (v2)
  {
    *a2 = 16;
    v4 = result[2];
    goto LABEL_12;
  }

  v3 = result[10];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v5 = 10;
        break;
      case 4:
        v5 = 11;
        break;
      case 5:
        v5 = 12;
        break;
      default:
LABEL_21:
        v6 = 16;
        goto LABEL_22;
    }
  }

  else
  {
    if (!v3)
    {
      *a2 = 0;
      return result;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        *a2 = 9;
        a2[1] = result[12];
        v3 = result[13];
LABEL_23:
        a2[2] = v3;
        return result;
      }

      goto LABEL_21;
    }

    v5 = 8;
  }

  *a2 = v5;
  return result;
}

uint64_t xdr_accepted_reply(uint64_t (***a1)(void), uint64_t a2)
{
  result = _newrpclib_xdr_opaque_auth(a1, a2);
  if (result)
  {
    result = _newrpclib_xdr_enum(a1, a2 + 24);
    if (result)
    {
      v5 = *(a2 + 24);
      if (v5 == 2)
      {
        result = _newrpclib_xdr_u_long(a1);
        if (result)
        {

          return _newrpclib_xdr_u_long(a1);
        }
      }

      else if (v5)
      {
        return 1;
      }

      else
      {
        v6 = *(a2 + 32);
        v7 = *(a2 + 40);

        return v7(a1, v6);
      }
    }
  }

  return result;
}

uint64_t xdr_rejected_reply(uint64_t (***a1)(void), _DWORD *a2)
{
  if (!_newrpclib_xdr_enum(a1, a2))
  {
    return 0;
  }

  if (*a2 != 1)
  {
    if (!*a2 && _newrpclib_xdr_u_long(a1))
    {

      return _newrpclib_xdr_u_long(a1);
    }

    return 0;
  }

  return _newrpclib_xdr_enum(a1, a2 + 1);
}

uint64_t _svcauth_unix(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v3 = *(a1 + 40);
  *(v3 + 8) = v3 + 40;
  *(v3 + 32) = v3 + 296;
  v4 = *(a2 + 40);
  _newrpclib_xdrmem_create(v18, *(a2 + 32), v4, 1);
  v5 = (*(*(&v18[0] + 1) + 48))(v18, v4);
  if (v5)
  {
    *v3 = bswap32(*v5);
    v6 = bswap32(v5[1]);
    if (v6 > 0xFF)
    {
      goto LABEL_14;
    }

    v7 = v5 + 2;
    memmove(*(v3 + 8), v5 + 2, v6);
    *(*(v3 + 8) + v6) = 0;
    v8 = (v7 + ((v6 + 3) & 0xFFFFFFFC));
    *(v3 + 16) = bswap32(*v8);
    *(v3 + 20) = bswap32(v8[1]);
    v9 = v8[2];
    v10 = bswap32(v9);
    if (v10 > 0x10)
    {
      goto LABEL_14;
    }

    *(v3 + 24) = v10;
    if (v9)
    {
      v11 = v8 + 3;
      v12 = *(v3 + 32);
      if (v10 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }

      do
      {
        v14 = *v11++;
        *v12++ = bswap32(v14);
        --v13;
      }

      while (v13);
    }

    if (((v6 + 3) & 0x1FC) + 4 * v10 + 20 > v4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v15 = 0;
    *(a1 + 720) = 0;
    *(a1 + 736) = 0;
    goto LABEL_15;
  }

  if (_newrpclib_xdr_authunix_parms(v18, v3))
  {
    goto LABEL_12;
  }

  *(v3 + 8) = 0;
  LODWORD(v18[0]) = 2;
  _newrpclib_xdr_authunix_parms(v18, v3);
LABEL_14:
  v15 = 1;
LABEL_15:
  v16 = *(*(&v18[0] + 1) + 56);
  if (v16)
  {
    v16(v18);
  }

  return v15;
}

uint64_t _newrpclib__authenticate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 720) = _newrpclib__null_auth;
  *(a1 + 736) = 0;
  v5 = *(a1 + 16);
  if (v5 > 2)
  {
    return 2;
  }

  v14 = v2;
  v15 = v3;
  result = svcauthsw[v5]();
  if (result)
  {
    return result;
  }

  if (!svc_cred_switch)
  {
    return 0;
  }

  *v13 = 0;
  v8 = *(a1 + 40);
  v10 = *(v8 + 16);
  v9 = *(v8 + 20);
  if (pthread_getugid_np(&v13[1], v13))
  {
    if (*__error() != 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib__authenticate_cold_1();
      }

      return 7;
    }

    v13[1] = geteuid();
    v11 = getegid();
    v13[0] = v11;
  }

  else
  {
    v11 = v13[0];
  }

  if (!v10)
  {
    v9 = -2;
    v10 = -2;
  }

  if (v13[1] == v10 && v11 == v9)
  {
    return 0;
  }

  if (v13[1])
  {
    pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
  }

  if (!pthread_setugid_np(v10, v9))
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib__authenticate_cold_2();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib__authenticate_cold_3();
  }

  return 7;
}

uint64_t _svcauth_null(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(*(a1 + 40) + 16) = 0x100000001;
  return 0;
}

char *_newrpclib_svcraw_create()
{
  v0 = calloc(1uLL, 0x22E0uLL);
  if (!v0)
  {
    return 0;
  }

  v1 = (v0 + 2200);
  v0[2200] = 0;
  *(v0 + 4402) = 0;
  *(v0 + 1101) = &server_ops;
  _newrpclib_xdrmem_create((v0 + 2220), v0, 8800, 2);
  return v1;
}

uint64_t _newrpclib_svc_run()
{
  pthread_mutex_lock(&svc_thread_lock);
  if (svc_active_threads)
  {
    pthread_mutex_unlock(&svc_thread_lock);
    svc_start_threads(0);
    pthread_mutex_lock(&svc_thread_lock);
    while (svc_exit_flag != 1 || svc_active_threads != 0)
    {
      pthread_cond_wait(&svc_exit_cond, &svc_thread_lock);
    }

    return pthread_mutex_unlock(&svc_thread_lock);
  }

  else
  {
    svc_active_threads = 1;
    pthread_mutex_unlock(&svc_thread_lock);
    if (svc_thread_qos_class)
    {
      pthread_set_qos_class_self_np(svc_thread_qos_class, svc_thread_relative_priority);
    }

    return svc_thread();
  }
}

uint64_t svc_thread()
{
  while (!svc_complete())
  {
    v0 = _newrpclib_svc_pollnext(0);
    if (v0)
    {
      v1 = v0;
      if (svc_complete())
      {
        return 0;
      }

      if ((svc_polling & 1) == 0)
      {
        svc_start_threads(1);
      }

      _newrpclib_svc_getsomerequests(v1, svc_nreq);
    }
  }

  return 0;
}

uint64_t svc_start_threads(uint64_t result)
{
  v26 = *MEMORY[0x277D85DE8];
  if (svc_max_threads != 1)
  {
    v1 = result;
    v14 = 0;
    memset(&__attr, 0, sizeof(__attr));
    pthread_attr_init(&__attr);
    pthread_attr_setdetachstate(&__attr, 2);
    pthread_attr_setstacksize(&__attr, svc_stack_size);
    if (svc_thread_qos_class)
    {
      pthread_attr_set_qos_class_np(&__attr, svc_thread_qos_class, svc_thread_relative_priority);
    }

    pthread_mutex_lock(&svc_thread_lock);
    v2 = svc_active_threads;
    v3 = svc_min_threads - svc_active_threads;
    v4 = svc_max_threads;
    if (svc_min_threads - svc_active_threads >= 1 && svc_active_threads < svc_max_threads)
    {
      v6 = MEMORY[0x277D86220];
      v7 = 1;
      do
      {
        if (pthread_create(&v14, &__attr, svc_thread, 0))
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v8 = *__error();
            *buf = 136316418;
            v16 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
            v17 = 1024;
            v18 = 358;
            v19 = 2080;
            v20 = "svc_start_threads";
            v21 = 2080;
            v22 = "Could not create thread";
            v23 = 67108960;
            v24 = v8;
            _os_log_error_impl(&dword_2771CF000, v6, OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", buf, 0x2Eu);
          }
        }

        else
        {
          ++svc_active_threads;
          --v1;
        }

        v2 = svc_active_threads;
        v4 = svc_max_threads;
        if (v7 >= v3)
        {
          break;
        }

        ++v7;
      }

      while (svc_active_threads < svc_max_threads);
    }

    if (v1 >= 1 && v2 < v4 && (svc_polling & 1) == 0)
    {
      v9 = MEMORY[0x277D86220];
      v10 = 1;
      do
      {
        if (pthread_create(&v14, &__attr, svc_thread, 0))
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = *__error();
            *buf = 136316418;
            v16 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
            v17 = 1024;
            v18 = 374;
            v19 = 2080;
            v20 = "svc_start_threads";
            v21 = 2080;
            v22 = "Could not create thread";
            v23 = 67108960;
            v24 = v11;
            _os_log_error_impl(&dword_2771CF000, v9, OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", buf, 0x2Eu);
          }
        }

        else
        {
          ++svc_active_threads;
        }

        if (v10 >= v1)
        {
          break;
        }

        ++v10;
      }

      while (svc_active_threads < svc_max_threads && svc_polling == 0);
    }

    result = pthread_mutex_unlock(&svc_thread_lock);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_working_xprt(uint64_t a1)
{
  v1 = *(a1 + 64);
  pthread_mutex_lock(&svc_workq_lock);
  if (v1[122])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      add_working_xprt_cold_1(v1);
    }

    warnx("xprt %p is already on workq\n", v1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      add_working_xprt_cold_2();
    }

    abort();
  }

  *off_280A693E8 = v1;
  off_280A693E8 = (v1 + 122);

  return pthread_mutex_unlock(&svc_workq_lock);
}

_DWORD *_newrpclib_svc_pollnext(const timespec *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&svc_poll_lock);
  if (svc_polling == 1)
  {
    for (i = pthread_cond_timedwait_relative_np(&svc_poll_cond, &svc_poll_lock, &poll_timeout); (svc_exit_flag & 1) == 0; i = pthread_cond_timedwait_relative_np(&svc_poll_cond, &svc_poll_lock, &poll_timeout))
    {
      if (svc_polling == 1 && i == 60)
      {
        pthread_mutex_lock(&svc_thread_lock);
        if (svc_active_threads > svc_min_threads)
        {
          --svc_active_threads;
          pthread_mutex_unlock(&svc_thread_lock);
          v4 = &svc_poll_lock;
          goto LABEL_35;
        }

        pthread_mutex_unlock(&svc_thread_lock);
        if ((svc_polling & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (!svc_polling)
      {
        goto LABEL_14;
      }
    }

    pthread_mutex_unlock(&svc_poll_lock);
    pthread_mutex_lock(&svc_thread_lock);
    v3 = --svc_active_threads;
    if (svc_exit_flag == 1 && !v3)
    {
      pthread_cond_broadcast(&svc_exit_cond);
    }

    v4 = &svc_thread_lock;
LABEL_35:
    pthread_mutex_unlock(v4);
    pthread_exit(0);
  }

LABEL_14:
  v5 = 1;
  svc_polling = 1;
  pthread_mutex_unlock(&svc_poll_lock);
  v6 = MEMORY[0x277D86220];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        memset(&eventlist, 0, sizeof(eventlist));
        v7 = kevent64(kq, 0, 0, &eventlist, 1, v5, a1);
        if (v7 != -1)
        {
          break;
        }

        v9 = *__error();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v16 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_run.c";
          v17 = 1024;
          v18 = 206;
          v19 = 2080;
          v20 = "_newrpclib_svc_pollnext";
          v21 = 1024;
          v22 = v9;
          _os_log_error_impl(&dword_2771CF000, v6, OS_LOG_TYPE_ERROR, "%s:%d in %s, KEVENT ERRNO %d\n", buf, 0x22u);
        }

        warnx("KEVENT ERRNO %d\n", v9);
      }

      if (!v7)
      {
        break;
      }

      udata = eventlist.udata;
      if (eventlist.udata)
      {
        if (eventlist.filter == -1)
        {
          xprt_ref(eventlist.udata);
          svc_unarmxprt(udata);
          goto LABEL_32;
        }
      }

      else
      {
        ident = eventlist.ident;
        if (ident != svc_kq_control())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            _newrpclib_svc_pollnext_cold_1();
          }

          abort();
        }

        svc_clear_kq_control();
        v5 = 1;
      }
    }

    if (!v5)
    {
      break;
    }

    pthread_mutex_lock(&svc_workq_lock);
    v10 = workq;
    if (workq)
    {
      workq = *(workq + 122);
      if (!workq)
      {
        off_280A693E8 = &workq;
      }

      v10[122] = 0;
      pthread_mutex_unlock(&svc_workq_lock);
      v5 = 0;
      udata = v10[123];
      if (udata)
      {
        goto LABEL_32;
      }
    }

    else
    {
      pthread_mutex_unlock(&svc_workq_lock);
      v5 = 0;
    }
  }

  udata = 0;
LABEL_32:
  pthread_mutex_lock(&svc_poll_lock);
  svc_polling = 0;
  pthread_mutex_unlock(&svc_poll_lock);
  pthread_cond_signal(&svc_poll_cond);
  v12 = *MEMORY[0x277D85DE8];
  return udata;
}

uint64_t _newrpclib_svc_exit()
{
  pthread_mutex_lock(&svc_thread_lock);
  svc_exit_flag = 1;
  pthread_cond_broadcast(&svc_poll_cond);

  return pthread_mutex_unlock(&svc_thread_lock);
}

uint64_t svc_complete()
{
  pthread_mutex_lock(&svc_thread_lock);
  v0 = svc_active_threads;
  if ((svc_exit_flag & 1) != 0 || svc_active_threads > svc_max_threads)
  {
    --svc_active_threads;
    if (v0 == 1)
    {
      pthread_cond_broadcast(&svc_exit_cond);
    }

    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_unlock(&svc_thread_lock);
  return v1;
}

uint64_t _newrpclib_registerrpc(unsigned int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (_newrpclib_registerrpc_transp || (_newrpclib_registerrpc_transp = _newrpclib_svcudp_create(-1)) != 0)
    {
      _newrpclib_pmap_unset(a1, a2);
      if (_newrpclib_svc_register(_newrpclib_registerrpc_transp, a1, a2, universal, 17))
      {
        v12 = calloc(1uLL, 0x28uLL);
        if (v12)
        {
          v13 = v12;
          result = 0;
          *v13 = a4;
          *(v13 + 8) = a1;
          *(v13 + 12) = a3;
          *(v13 + 16) = a5;
          *(v13 + 24) = a6;
          *(v13 + 32) = proglst;
          proglst = v13;
          return result;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _newrpclib_registerrpc_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_registerrpc_cold_2();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_registerrpc_cold_3();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib_registerrpc_cold_4();
  }

  return 0xFFFFFFFFLL;
}

_DWORD *universal()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  v3 = v0[2];
  if (!v3)
  {
    result = _newrpclib_svc_sendreply(v1, _newrpclib_xdr_void, 0);
    if (result)
    {
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      universal_cold_3();
    }

LABEL_8:
    exit(1);
  }

  v4 = proglst;
  if (!proglst)
  {
LABEL_6:
    v5 = *v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      universal_cold_2();
    }

    goto LABEL_8;
  }

  while (*(v4 + 8) != *v0 || *(v4 + 12) != v3)
  {
    v4 = *(v4 + 32);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  bzero(v9, 0x2260uLL);
  if (!(*(*(v2 + 8) + 16))(v2, *(v4 + 16), v9))
  {
    result = _newrpclib_svcerr_decode();
    goto LABEL_18;
  }

  result = (*v4)(v9);
  v7 = *(v4 + 24);
  if (!result)
  {
    if (v7 != _newrpclib_xdr_void)
    {
      goto LABEL_18;
    }

    v7 = _newrpclib_xdr_void;
  }

  if (!_newrpclib_svc_sendreply(v2, v7, result))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      universal_cold_1((v4 + 8));
    }

    goto LABEL_8;
  }

  result = (*(*(v2 + 8) + 32))(v2, *(v4 + 16), v9);
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

int *_newrpclib_svctcp_create(int a1, int a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 1;
  v14 = 16;
  v12 = 4;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (a1 == -1)
  {
    v6 = open_socket(6);
    if (v6 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_svctcp_create_cold_7();
      }

      goto LABEL_31;
    }

LABEL_6:
    if (bindresvport_sa(v6, &v15))
    {
      *v15.sa_data = 0;
      if (bind(v6, &v15, v14))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          _newrpclib_svctcp_create_cold_5();
        }

        goto LABEL_31;
      }
    }

    goto LABEL_15;
  }

  v10 = 4;
  v11 = 1;
  if (getsockopt(a1, 0xFFFF, 4104, &v11, &v10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svctcp_create_cold_1();
    }

LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  if (v11 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svctcp_create_cold_2();
    }

    goto LABEL_31;
  }

  if (getsockname(a1, &v15, &v14) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svctcp_create_cold_4();
    }

    goto LABEL_31;
  }

  if (v15.sa_family != 2 && v15.sa_family != 30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svctcp_create_cold_3();
    }

    goto LABEL_31;
  }

  v6 = a1;
  if (!*v15.sa_data)
  {
    goto LABEL_6;
  }

LABEL_15:
  if (getsockopt(v6, 41, 27, &v13, &v12))
  {
    v7 = 2;
  }

  else
  {
    v7 = 30;
  }

  result = svcstrm_domain_create(v6, v7, 6, a2, a3);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svctcp_create_cold_6();
    }

    if (a1 == -1)
    {
      close(v6);
    }

    goto LABEL_31;
  }

LABEL_32:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

int *svcstrm_domain_create(int a1, int a2, int a3, int a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0;
  v19 = 0u;
  v16 = 0;
  v17 = 128;
  setsockopt(a1, 0xFFFF, 4130, &v16, 4u);
  if (getsockname(a1, &v18, &v17) || listen(a1, svc_listen_backlog))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcstrm_domain_create_cold_1();
    }
  }

  else
  {
    v13 = calloc(1uLL, 8uLL);
    if (v13)
    {
      v14 = v13;
      *v13 = a4;
      v13[1] = a5;
      v15 = svc_xprt_create(a1, &v18.sa_len, &svcstrm_rendezvous_op, 0, v13);
      if (v15)
      {
        v10 = v15;
        _newrpclib_socparms2netid(a2, 1, a3, *(v15 + 8));
        _newrpclib_xprt_register(v10);
        goto LABEL_6;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcstrm_domain_create_cold_2();
      }

      free(v14);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcstrm_domain_create_cold_3();
    }
  }

  v10 = 0;
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

int *svcticotsord_create(int a1, int a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, 106);
  v11 = 106;
  if (a1 == -1)
  {
    *v12[6].sa_data = 0;
    *v12[5].sa_data = 0uLL;
    *v12[4].sa_data = 0uLL;
    *v12[3].sa_data = 0uLL;
    *v12[2].sa_data = 0uLL;
    *v12[1].sa_data = 0uLL;
    *v12[0].sa_data = 0uLL;
    *&v12[0].sa_len = 362;
    v6 = socket(1, 1, 0);
    if (v6 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcticotsord_create_cold_9();
      }

      goto LABEL_34;
    }
  }

  else
  {
    v9 = 4;
    v10 = 1;
    if (getsockopt(a1, 0xFFFF, 4104, &v10, &v9))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcticotsord_create_cold_1();
      }

      goto LABEL_34;
    }

    if (v10 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcticotsord_create_cold_2();
      }

      goto LABEL_34;
    }

    memset(v12, 0, 106);
    if (getsockname(a1, v12, &v11) == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcticotsord_create_cold_4();
      }

      goto LABEL_34;
    }

    if (v12[0].sa_family != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcticotsord_create_cold_3();
      }

      goto LABEL_34;
    }

    v6 = a1;
    if (v12[0].sa_data[0])
    {
      goto LABEL_30;
    }
  }

  if (set_local_ephemeral_sockname(v12, "ticotsord"))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcticotsord_create_cold_5();
    }

LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcticotsord_create_cold_6();
    }

    if (a1 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (bind(v6, v12, 0x6Au))
  {
    goto LABEL_19;
  }

  if (chmod(v12[0].sa_data, 0x1FFu) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcticotsord_create_cold_7();
  }

LABEL_30:
  result = svcstrm_domain_create(v6, 1, 0, a2, a3);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcticotsord_create_cold_8();
    }

    if (a1 != -1)
    {
      goto LABEL_34;
    }

    unlink(v12[0].sa_data);
LABEL_22:
    close(v6);
LABEL_34:
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t makefd_xprt(int a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, int a5)
{
  v17 = 1;
  setsockopt(a1, 0xFFFF, 4130, &v17, 4u);
  v10 = calloc(1uLL, 0x18uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 0;
    v10[1] = 0;
    v12 = svc_xprt_create(a1, 0, &svcstrm_op, a5 | 0xAu, v10);
    if (v12)
    {
      v13 = v12;
      v11[2] = v12;
      _newrpclib_xdrrec_create(*(v12 + 8) + 344, 0, a3, v12, readstrm_0, 0);
      _newrpclib_xdrrec_create(*(v13 + 64) + 456, a2, 0, v13, 0, writestrm_0);
      if (!a4 || !*a4)
      {
        if (_newrpclib_socparms2netid(1, 1, 0, *(v13 + 64)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          makefd_xprt_cold_3();
        }

        goto LABEL_24;
      }

      memcpy((*(v13 + 64) + 8), a4, *a4);
      v14 = a4[1];
      switch(v14)
      {
        case 1:
          *(v13 + 16) = 0;
          memcpy((*(v13 + 64) + 136), a4, *a4);
          v15 = 0;
          goto LABEL_21;
        case 30:
          *(v13 + 20) = 0;
          *(v13 + 28) = 0;
          cvt6to4(a4, v13 + 20);
          goto LABEL_19;
        case 2:
          memcpy((v13 + 20), a4, *a4);
          *(v13 + 16) = *(v13 + 20);
LABEL_19:
          v15 = 6;
LABEL_21:
          if (_newrpclib_socparms2netid(a4[1], 1, v15, *(v13 + 64)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            makefd_xprt_cold_1();
          }

LABEL_24:
          _newrpclib_xprt_register(v13);
          return v13;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        makefd_xprt_cold_2();
      }

      svc_xprt_destroy(v13);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        makefd_xprt_cold_4();
      }

      free(v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    makefd_xprt_cold_5();
  }

  return 0;
}

uint64_t rendezvous_request(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  thread_req = svc_get_thread_req();
  v3 = *(a1 + 64);
  if ((*(v3 + 328) & 4) != 0)
  {
    pthread_mutex_lock((v3 + 392));
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0;
  v13 = 0u;
  v4 = *(a1 + 72);
  while (1)
  {
    v11 = 128;
    v5 = accept(*a1, &v12, &v11);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v6 = *(a1 + 64);
      if ((*(v6 + 328) & 4) != 0)
      {
        pthread_mutex_unlock((v6 + 392));
      }

      if (*__error() != 35 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        rendezvous_request_cold_1();
      }

      goto LABEL_16;
    }
  }

  v7 = v5;
  atomic_fetch_add_explicit(&conncount, 1u, memory_order_relaxed);
  v8 = *(a1 + 64);
  if ((*(v8 + 328) & 4) != 0)
  {
    pthread_mutex_unlock((v8 + 392));
  }

  if (thread_req)
  {
    thread_req[187] |= 1u;
    thread_req[186] = 0;
  }

  svc_rearmxprt(a1, 0);
  makefd_xprt(v7, *v4, v4[1], &v12.sa_len, *(*(a1 + 64) + 328) & 0x10);
LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void rendezvous_destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(v2 + 137) == 1)
  {
    v4 = *(v2 + 138);
    v3 = (v2 + 138);
    if (v4)
    {
      unlink(v3);
    }
  }

  svcstrm_destroy(a1);
}

void svcstrm_destroy(uint64_t a1)
{
  v2 = *(a1 + 72);
  _newrpclib_xprt_unregister();
  free(v2);
  atomic_fetch_add_explicit(&conncount, 0xFFFFFFFF, memory_order_relaxed);
  if (close(*a1) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcstrm_destroy_cold_1();
  }

  svc_xprt_destroy(a1);
}

ssize_t readstrm_0(uint64_t a1, void *a2, size_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  *&v14.events = 64;
  v7 = MEMORY[0x277D86220];
  v14.fd = v6;
  while (1)
  {
    v8 = poll(&v14, 1u, 12000);
    v9 = v8;
    if (v8 < 0)
    {
      if (*__error() != 4 && *__error() != 35)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        readstrm_cold_1();
      }

      goto LABEL_19;
    }

    if ((v14.revents & 0x40) != 0)
    {
      result = read(v6, a2, a3);
      if (result > 0)
      {
        goto LABEL_20;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        break;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 136316418;
        v16 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_strm.c";
        v17 = 1024;
        v18 = 698;
        v19 = 2080;
        v20 = "readstrm";
        v21 = 2080;
        v22 = "strm read";
        v23 = 67108960;
        v24 = v11;
        _os_log_error_impl(&dword_2771CF000, v7, OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", buf, 0x2Eu);
      }

      if (*__error() != 4 && *__error() != 35)
      {
        break;
      }
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    readstrm_cold_2();
  }

LABEL_19:
  *(*(a1 + 64) + 336) = 0;
  result = -1;
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

size_t writestrm_0(uint64_t a1, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  v23 = *MEMORY[0x277D85DE8];
  if (__nbyte)
  {
    v6 = MEMORY[0x277D86220];
    v7 = __nbyte;
    do
    {
      while (1)
      {
        v8 = write(*a1, __buf, v7);
        if (v8 < 0)
        {
          break;
        }

        __buf += v8;
        v7 -= v8;
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        *buf = 136316418;
        v14 = "/Library/Caches/com.apple.xbs/Sources/oncrpc/Oncrpc/svc_strm.c";
        v15 = 1024;
        v16 = 729;
        v17 = 2080;
        v18 = "writestrm";
        v19 = 2080;
        v20 = "strm write";
        v21 = 67108960;
        v22 = v9;
        _os_log_error_impl(&dword_2771CF000, v6, OS_LOG_TYPE_ERROR, "%s:%d in %s, %s returned with %m (%d)\n", buf, 0x2Eu);
      }
    }

    while (*__error() == 35 || *__error() == 4);
    *(*(a1 + 64) + 336) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      writestrm_cold_1();
    }

    v3 = -1;
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t svcstrm_recv(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 64) + 344);
  thread_req = svc_get_thread_req();
  v6 = *(a1 + 64);
  if ((*(v6 + 328) & 4) != 0)
  {
    pthread_mutex_lock((v6 + 392));
  }

  *v4 = 1;
  if (!xdrrec_isrecordstart(v4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcstrm_recv_cold_1();
  }

  if (_newrpclib_xdrrec_skiprecord(v4))
  {
    if (_newrpclib_xdr_callmsg(v4, a2))
    {
      v7 = *(a1 + 64);
      if ((*(v7 + 328) & 0x10) != 0)
      {
        v9 = *(v7 + 136);
        v8 = (v7 + 136);
        if (!v9)
        {
          v12 = 128;
          if (getsockname(*a1, v8, &v12))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              svcstrm_recv_cold_2();
            }
          }
        }
      }

      return 1;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcstrm_recv_cold_3();
  }

  v11 = *(a1 + 64);
  if ((*(v11 + 328) & 4) != 0)
  {
    pthread_mutex_unlock((v11 + 392));
  }

  result = svcstrm_stat(a1);
  if (thread_req)
  {
    thread_req[186] = 0;
    thread_req[187] |= 1u;
  }

  if (result)
  {
    svc_rearmxprt(a1, result == 1);
    return 0;
  }

  return result;
}

uint64_t svcstrm_stat(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(v1 + 336))
  {
    if (_newrpclib_xdrrec_eof(v1 + 344))
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    *(*(a1 + 64) + 336) = result;
  }

  else
  {
    result = 0;
    *(v1 + 328) |= 0x8000u;
  }

  return result;
}

uint64_t svcstrm_getargs(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  thread_req = svc_get_thread_req();
  v7 = a2(*(a1 + 64) + 344, a3);
  v8 = svcstrm_stat(a1);
  if (thread_req)
  {
    thread_req[186] = v8;
    v9 = thread_req[187];
    thread_req[187] = v9 | 1;
    if (v8)
    {
      if ((v9 & 2) != 0)
      {
        svc_rearmxprt(a1, v8 == 1);
        thread_req[187] &= ~2u;
      }
    }
  }

  v10 = *(a1 + 64);
  if ((*(v10 + 328) & 4) != 0)
  {
    pthread_mutex_unlock((v10 + 392));
  }

  return v7;
}

uint64_t svcstrm_reply(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 64) + 456);
  thread_req = svc_get_thread_req();
  if (!thread_req || (v6 = thread_req[187], (v6 & 1) == 0) && (thread_req[187] = v6 | 1, (v6 & 2) != 0))
  {
    svc_rearmxprt(a1, 0);
  }

  *v4 = 0;
  pthread_mutex_lock((*(a1 + 64) + 504));
  v7 = _newrpclib_xdr_replymsg(v4, a2);
  if (!_newrpclib_xdrrec_endofrecord(v4, 1) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcstrm_reply_cold_1();
  }

  pthread_mutex_unlock((*(a1 + 64) + 504));
  return v7;
}

uint64_t svcstrm_freeargs(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  LODWORD(v4[0]) = 2;
  return a2(v4, a3);
}

_DWORD *_newrpclib_svcudp_bufcreate(int a1, int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0;
  v22 = 0u;
  v19 = 1;
  v20 = 128;
  v17 = 4;
  v18 = 0;
  v6 = a1;
  if (a1 == -1)
  {
    v6 = open_socket(17);
    if (v6 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_svcudp_bufcreate_cold_6();
      }

      goto LABEL_34;
    }
  }

  ioctl(v6, 0x8004667EuLL, &v19);
  if (getsockname(v6, &v21, &v20))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svcudp_bufcreate_cold_1();
    }

LABEL_11:
    if (a1 == -1)
    {
      close(v6);
    }

    goto LABEL_34;
  }

  if (bindresvport_sa(v6, &v21))
  {
    *v21.sa_data = 0;
    bind(v6, &v21, v20);
  }

  if (getsockname(v6, &v21, &v20))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svcudp_bufcreate_cold_2();
    }

    goto LABEL_11;
  }

  v7 = calloc(1uLL, 0x28uLL);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svcudp_bufcreate_cold_5();
    }

    goto LABEL_11;
  }

  v8 = v7;
  v9 = (a3 + 3) & 0xFFFFFFFC;
  *v7 = v9;
  v10 = calloc(1uLL, v9);
  *(v8 + 1) = v10;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svcudp_bufcreate_cold_4();
    }

    if (a1 == -1)
    {
      close(v6);
    }

    goto LABEL_33;
  }

  v11 = (a2 + 3) & 0xFFFFFFFC;
  v8[4] = v11;
  v12 = calloc(1uLL, v11);
  *(v8 + 3) = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svcudp_bufcreate_cold_3();
    }

    if (a1 == -1)
    {
      close(v6);
    }

    free(*(v8 + 1));
LABEL_33:
    free(v8);
LABEL_34:
    v13 = 0;
    goto LABEL_35;
  }

  v13 = svc_xprt_create(v6, &v21.sa_len, &svcudp_op, 1, v8);
  _newrpclib_xdrmem_create(*(v13 + 8) + 344, *(v8 + 1), *v8, 1);
  _newrpclib_xdrmem_create(*(v13 + 8) + 456, *(v8 + 3), v8[4], 0);
  if (getsockopt(v6, 41, 27, &v18, &v17))
  {
    v14 = 2;
  }

  else
  {
    v14 = 30;
  }

  _newrpclib_socparms2netid(v14, 2, 17, *(v13 + 8));
  *(v8 + 4) = 0;
  _newrpclib_xprt_register(v13);
LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t svcudp_recv(uint64_t a1, unsigned int *a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  thread_req = svc_get_thread_req();
  v7 = *(a1 + 64);
  if ((*(v7 + 328) & 4) != 0)
  {
    pthread_mutex_lock((v7 + 392));
  }

  while (1)
  {
    v8 = *(a1 + 64);
    if ((*(v8 + 328) & 0x10) != 0)
    {
      *(v8 + 8) = 0x80;
      v10 = (v8 + 8);
      v10[128] = 0x80;
      v9 = recvfrom_and_to(*a1, *(*(a1 + 72) + 8), *v4, 0, v10, v10 + 128);
    }

    else
    {
      v25 = 128;
      v9 = recvfrom(*a1, *(*(a1 + 72) + 8), *v4, 0, (v8 + 8), &v25);
    }

    v11 = *(a1 + 64);
    if (*(v11 + 9) == 2)
    {
      *(a1 + 20) = *(v11 + 8);
    }

    else
    {
      *(a1 + 28) = 0;
      *(a1 + 20) = 0;
      cvt6to4(v11 + 8, a1 + 20);
    }

    *(a1 + 16) = *(a1 + 20);
    if (v9 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_26;
    }
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_26:
    if (*__error() != 35 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcudp_recv_cold_2();
      if (!thread_req)
      {
LABEL_30:
        svc_rearmxprt(a1, 0);
        result = 0;
        v23 = *(a1 + 64);
        if ((*(v23 + 328) & 4) != 0)
        {
          pthread_mutex_unlock((v23 + 392));
          return 0;
        }

        return result;
      }

LABEL_29:
      thread_req[187] |= 1u;
      goto LABEL_30;
    }

LABEL_28:
    if (!thread_req)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v9 < 0x10)
  {
    goto LABEL_28;
  }

  *(v5 + 344) = 1;
  (*(*(v5 + 352) + 40))(v5 + 344, 0);
  if (!_newrpclib_xdr_callmsg(v5 + 344, a2))
  {
    goto LABEL_28;
  }

  v12 = *a2;
  v13 = *(a1 + 64);
  *(v13 + 568) = *a2;
  if (*(v4 + 4))
  {
    v14 = *(*(a1 + 72) + 32);
    v15 = *(*(v14 + 8) + 8 * (v12 % (4 * *v14)));
    if (v15)
    {
      while (*v15 != *(*(a1 + 64) + 568) || *(v15 + 4) != *(v14 + 36) || *(v15 + 8) != *(v14 + 32) || *(v15 + 12) != *(v14 + 28) || memcmp((v15 + 16), (v14 + 40), 0x80uLL))
      {
        v15 = *(v15 + 160);
        if (!v15)
        {
          v13 = *(a1 + 64);
          goto LABEL_24;
        }
      }

      v24 = *(v15 + 152);
      if (sendto(*a1, *(v15 + 144), v24, 0, (*(a1 + 64) + 8), *(*(a1 + 64) + 8)) != v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svcudp_recv_cold_1();
      }
    }

    else
    {
LABEL_24:
      *(v14 + 36) = a2[5];
      *(v14 + 32) = a2[4];
      *(v14 + 28) = a2[3];
      v16 = *(v13 + 8);
      v17 = *(v13 + 24);
      v18 = *(v13 + 40);
      *(v14 + 88) = *(v13 + 56);
      *(v14 + 72) = v18;
      *(v14 + 56) = v17;
      *(v14 + 40) = v16;
      v19 = *(v13 + 72);
      v20 = *(v13 + 88);
      v21 = *(v13 + 104);
      *(v14 + 152) = *(v13 + 120);
      *(v14 + 136) = v21;
      *(v14 + 120) = v20;
      *(v14 + 104) = v19;
    }
  }

  return 1;
}

uint64_t svcudp_getargs(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  thread_req = svc_get_thread_req();
  v7 = a2(*(a1 + 64) + 344, a3);
  if (thread_req)
  {
    v8 = thread_req[187];
    thread_req[187] = v8 | 1;
    if ((v8 & 2) != 0)
    {
      svc_rearmxprt(a1, 0);
      thread_req[187] &= ~2u;
    }
  }

  v9 = *(a1 + 64);
  if ((*(v9 + 328) & 4) != 0)
  {
    pthread_mutex_unlock((v9 + 392));
  }

  return v7;
}

uint64_t svcudp_reply(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  thread_req = svc_get_thread_req();
  if (thread_req)
  {
    v7 = thread_req;
    v8 = thread_req[187];
    if ((v8 & 1) == 0)
    {
      thread_req[187] = v8 | 1;
      if ((v8 & 2) != 0)
      {
        svc_rearmxprt(a1, 0);
      }
    }

    pthread_mutex_lock((*(a1 + 64) + 504));
    v9 = (v7 + 14);
  }

  else
  {
    svc_rearmxprt(a1, 0);
    pthread_mutex_lock((*(a1 + 64) + 504));
    v9 = (*(a1 + 64) + 8);
  }

  sa_len = v9->sa_len;
  *(v5 + 456) = 0;
  (*(*(v5 + 464) + 40))(v5 + 456, 0);
  if (!_newrpclib_xdr_replymsg((v5 + 456), a2))
  {
    goto LABEL_22;
  }

  v11 = (*(*(v5 + 464) + 32))(v5 + 456);
  if (sendto(*a1, *(*(a1 + 72) + 24), v11, 0, v9, sa_len) != v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svcudp_reply_cold_1();
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v12 = 1;
  if ((v11 & 0x80000000) == 0 && *(v4 + 32))
  {
    v13 = *(a1 + 72);
    v14 = *(v13 + 32);
    v15 = *(*(v14 + 16) + 8 * *(v14 + 24));
    if (v15)
    {
      v16 = (*(v14 + 8) + 8 * (*v15 % (4 * *v14)));
      do
      {
        v17 = v16;
        v18 = *v16;
        v16 = (*v16 + 160);
        if (v18)
        {
          v19 = v18 == v15;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
      if (!v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          svcudp_reply_cold_2();
        }

        goto LABEL_34;
      }

      *v17 = *(v15 + 20);
      v20 = *(v15 + 18);
    }

    else
    {
      v22 = calloc(1uLL, 0xA8uLL);
      if (!v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          svcudp_reply_cold_4();
        }

        goto LABEL_34;
      }

      v15 = v22;
      v23 = calloc(1uLL, *(v13 + 16));
      if (!v23)
      {
        free(v15);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          svcudp_reply_cold_3();
        }

        goto LABEL_34;
      }

      v20 = v23;
    }

    *(v15 + 38) = v11;
    v25 = *(a1 + 64);
    v24 = *(a1 + 72);
    *(v15 + 18) = *(v24 + 24);
    *(v24 + 24) = v20;
    _newrpclib_xdrmem_create(v25 + 456, v20, *(v13 + 16), 0);
    v26 = *(*(a1 + 64) + 568);
    *v15 = v26;
    *(v15 + 4) = vrev64_s32(*(v14 + 32));
    *(v15 + 3) = *(v14 + 28);
    v27 = *(v14 + 40);
    v28 = *(v14 + 56);
    v29 = *(v14 + 88);
    *(v15 + 3) = *(v14 + 72);
    *(v15 + 4) = v29;
    *(v15 + 1) = v27;
    *(v15 + 2) = v28;
    v30 = *(v14 + 152);
    v31 = *(v14 + 120);
    v32 = *(v14 + 136);
    *(v15 + 5) = *(v14 + 104);
    *(v15 + 6) = v31;
    *(v15 + 7) = v32;
    *(v15 + 8) = v30;
    v33 = v26 % (4 * **(*(a1 + 72) + 32));
    v34 = *(v14 + 8);
    *(v15 + 20) = *(v34 + 8 * v33);
    *(v34 + 8 * v33) = v15;
    v35 = *(v14 + 24);
    *(*(v14 + 16) + 8 * v35) = v15;
    *(v14 + 24) = (v35 + 1) % *v14;
LABEL_34:
    v12 = 1;
  }

LABEL_23:
  pthread_mutex_unlock((*(a1 + 64) + 504));
  return v12;
}

uint64_t svcudp_freeargs(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  LODWORD(v4[0]) = 2;
  return a2(v4, a3);
}

void svcudp_destroy(uint64_t a1)
{
  _newrpclib_xprt_unregister();
  if (close(*a1) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    svcudp_destroy_cold_1();
  }

  free(*(*(a1 + 72) + 8));
  free(*(*(a1 + 72) + 24));
  svc_xprt_destroy(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

_DWORD *svc_xprt_create(int a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v19.__sig = 0;
  *v19.__opaque = 0;
  v10 = calloc(1uLL, 0x50uLL);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_xprt_create_cold_2();
    }

    goto LABEL_12;
  }

  v11 = v10;
  v12 = calloc(1uLL, 0x3E0uLL);
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_xprt_create_cold_1();
    }

    free(v11);
LABEL_12:
    v11 = 0;
    goto LABEL_15;
  }

  v13 = v12;
  *v11 = a1;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a3;
  v11[8] = 0;
  *(v11 + 7) = 0;
  *(v11 + 8) = v12;
  *(v11 + 9) = a5;
  *(v12 + 120) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 8) = 0u;
  v14 = *(v11 + 8);
  *(v14 + 248) = 0u;
  *(v14 + 232) = 0u;
  *(v14 + 216) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 168) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 136) = 0u;
  if (a2 && ((memcpy((*(v11 + 8) + 136), a2, *a2), v15 = a2[1], v15 == 30) || v15 == 2))
  {
    v16 = bswap32(*(a2 + 1)) >> 16;
  }

  else
  {
    LOWORD(v16) = 0;
  }

  *(v11 + 2) = v16;
  pthread_mutexattr_init(&v19);
  pthread_mutexattr_settype(&v19, 1);
  pthread_mutex_init((v13 + 264), &v19);
  *(v13 + 82) = a4;
  atomic_store(0, v13 + 572);
  *(v13 + 332) = 0x200000000;
  pthread_mutex_init((v13 + 504), &v19);
  pthread_mutex_init((v13 + 392), &v19);
  pthread_mutexattr_destroy(&v19);
  *(v13 + 44) = 0;
  *(v13 + 58) = 0;
  *(v13 + 142) = 0;
  *(v13 + 122) = 0;
  *(v13 + 123) = v11;
LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

void svc_xprt_destroy(void **a1)
{
  v2 = a1[8];
  pthread_mutex_destroy((v2 + 264));
  pthread_mutex_destroy((v2 + 504));
  pthread_mutex_destroy((v2 + 392));
  v3 = *(v2 + 44);
  if (v3)
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      v4(v2 + 344);
    }
  }

  v5 = *(v2 + 58);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v6(v2 + 456);
    }
  }

  free(a1[8]);

  free(a1);
}

uint64_t xprt_ref(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 64) + 264));
  v2 = *(a1 + 64);
  if ((*(v2 + 329) & 0x80) != 0)
  {
    v3 = 0;
  }

  else
  {
    ++*(v2 + 332);
    v3 = 1;
  }

  pthread_mutex_unlock((v2 + 264));
  return v3;
}

uint64_t xprt_unref(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 64) + 264));
  v2 = *(a1 + 64);
  v3 = *(v2 + 328) & 0x8000;
  v4 = *(v2 + 332) - 1;
  *(v2 + 332) = v4;
  pthread_mutex_unlock((v2 + 264));
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    (*(*(a1 + 8) + 40))(a1);
  }

  return (v3 >> 15) ^ 1;
}

void _newrpclib_xprt_register(int *a1)
{
  pthread_once(&oncrpc_xprt_init, svc_oncrpc_start);

  svc_armxprt(a1);
}

void svc_oncrpc_start()
{
  kq = kqueue();
  if (kq == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_oncrpc_start_cold_3();
    }

    exit(1);
  }

  if (kq_control_fd == -1)
  {
    if (pipe(&kq_control_fd))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svc_oncrpc_start_cold_1();
      }

      abort();
    }

    fcntl(kq_control_fd, 4, 4);
    fcntl(dword_280A69494, 4, 4);
    changelist.ident = kq_control_fd;
    *&changelist.filter = 0x1FFFF;
    memset(&changelist.fflags, 0, 36);
    while (kevent64(kq, &changelist, 1, 0, 0, 0, 0))
    {
      if (*__error() != 4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          svc_oncrpc_start_cold_2();
        }

        return;
      }
    }
  }
}

void svc_armxprt(int *a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  changelist.ident = *a1;
  *&changelist.filter = 0x10081FFFFLL;
  changelist.data = 1;
  changelist.udata = a1;
  changelist.ext[0] = 0;
  changelist.ext[1] = 0;
  atomic_compare_exchange_strong((v2 + 572), &v1, 1u);
  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_armxprt_cold_1(a1);
    }

    warnx("** OOPS ** fd = %d, xprt = %p ** ALREADY ARMED **\n", *a1, a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_armxprt_cold_2();
    }

    abort();
  }

  while (kevent64(kq, &changelist, 1, 0, 0, 0, 0))
  {
    if (*__error() != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svc_armxprt_cold_3();
      }

      break;
    }
  }

  wakeup_kq();
}

void svc_rmxprt(int *a1)
{
  v1 = *(a1 + 8);
  v2.ident = *a1;
  *&v2.filter = 196607;
  v2.data = 0;
  v2.udata = a1;
  v2.ext[0] = 0;
  v2.ext[1] = 0;
  atomic_store(0, (v1 + 572));
  while (kevent64(kq, &v2, 1, 0, 0, 0, 0))
  {
    if (*__error() != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svc_rmxprt_cold_1();
      }

      break;
    }
  }

  wakeup_kq();
}

ssize_t svc_clear_kq_control()
{
  v1 = 0;
  do
  {
    result = read(kq_control_fd, &v1, 4uLL);
  }

  while (result > 0);
  return result;
}

void wakeup_kq()
{
  __buf = 0;
  v0 = write(dword_280A69494, &__buf, 4uLL);
  if (v0 != 4 && (v0 != -1 || *__error() != 35) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    wakeup_kq_cold_1();
  }
}

void svc_rearmxprt(unsigned int *a1, int a2)
{
  if (a2)
  {
    add_working_xprt(a1);

    wakeup_kq();
  }

  else
  {
    v3 = 0;
    v4 = *(a1 + 8);
    memset(&changelist, 0, sizeof(changelist));
    atomic_compare_exchange_strong((v4 + 572), &v3, 1u);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svc_rearmxprt_cold_1(a1);
      }

      v5 = *a1;
      warnx("** OOPS ** fd = %d, xprt = %p ** ALREADY ARMED **\n");
    }

    else if (*(*(a1 + 8) + 336))
    {
      changelist.ident = *a1;
      *&changelist.filter = 327679;
      changelist.data = 0;
      changelist.udata = a1;
      changelist.ext[0] = 0;
      changelist.ext[1] = 0;
      while (kevent64(kq, &changelist, 1, 0, 0, 0, 0))
      {
        if (*__error() != 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            svc_rearmxprt_cold_2();
          }

          break;
        }
      }

      wakeup_kq();
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        svc_rearmxprt_cold_3(a1);
      }

      v6 = *a1;
      warnx("Trying to re-arm a dead export %p (%d)\n");
    }
  }
}

void svc_unarmxprt(_DWORD *a1)
{
  v1 = 1;
  atomic_compare_exchange_strong((*(a1 + 8) + 572), &v1, 0);
  if (v1 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_unarmxprt_cold_1(a1);
    }

    warnx("** OOPS ** fd = %d, xprt = %p ** ALREADY DIS-ARMED **\n", *a1, a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      svc_unarmxprt_cold_2();
    }

    abort();
  }
}

uint64_t _newrpclib_svc_register(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5)
{
  pthread_rwlock_wrlock(&svc_register_lock);
  v10 = svc_head;
  if (svc_head)
  {
    while (v10[2] != a2 || v10[3] != a3)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    if (*(v10 + 2) != a4)
    {
      goto LABEL_19;
    }

    v12 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!_newrpclib_rpcb_set(**(a1 + 64), a2, a3, (*(a1 + 64) + 136)) && (a5 != 17 && a5 != 6 || !_newrpclib_pmap_set(a2, a3, a5, *(a1 + 4))))
    {
      if (v12)
      {
        free(v10);
      }

      goto LABEL_19;
    }

    goto LABEL_8;
  }

LABEL_5:
  v11 = calloc(1uLL, 0x18uLL);
  if (!v11)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v10 = v11;
  v11[2] = a2;
  v11[3] = a3;
  v12 = 1;
  *(v11 + 2) = a4;
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v12)
  {
    *v10 = svc_head;
    svc_head = v10;
  }

  v13 = 1;
LABEL_20:
  pthread_rwlock_unlock(&svc_register_lock);
  return v13;
}

uint64_t _newrpclib_svc_unregister(int a1, int a2)
{
  pthread_rwlock_wrlock(&svc_register_lock);
  v4 = svc_head;
  if (svc_head)
  {
    v5 = 0;
    while (1)
    {
      v6 = v4;
      if (*(v4 + 2) == a1 && *(v4 + 3) == a2)
      {
        break;
      }

      v4 = *v4;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_10;
      }
    }

    if (!v5)
    {
      v5 = &svc_head;
    }

    *v5 = *v4;
    free(v4);
    _newrpclib_pmap_unset(a1, a2);
  }

LABEL_10:

  return pthread_rwlock_unlock(&svc_register_lock);
}

void *svc_get_thread_req()
{
  pthread_once(&create_key_init, create_svc_req_key);
  v0 = SVC_REQ_KEY;

  return pthread_getspecific(v0);
}

void *svc_req_clone(void *a1)
{
  v2 = calloc(1uLL, 0x2F0uLL);
  v3 = v2;
  if (v2)
  {
    memcpy(v2, a1, 0x2F0uLL);
    v4 = calloc(1uLL, 0x28uLL);
    v3[5] = v4;
    if (!v4)
    {
LABEL_15:
      free(v3);
      return 0;
    }

    v5 = a1[5];
    v6 = *v5;
    v7 = v5[1];
    v4[4] = *(v5 + 4);
    *v4 = v6;
    *(v4 + 1) = v7;
    v8 = v3[5];
    *(v8 + 8) = 0;
    *(v8 + 32) = 0;
    v9 = a1[5];
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = calloc(1uLL, 4 * v10);
      v12 = v3[5];
      *(v12 + 32) = v11;
      if (!v11)
      {
LABEL_10:
        if (*(v12 + 8))
        {
          free(*(v12 + 8));
          v12 = v3[5];
        }

        if (*(v12 + 24))
        {
          free(*(v12 + 32));
          v12 = v3[5];
        }

        free(v12);
        goto LABEL_15;
      }

      memcpy(v11, *(a1[5] + 32), 4 * *(a1[5] + 24));
      v9 = a1[5];
    }

    v13 = *(v9 + 8);
    if (!v13)
    {
LABEL_9:
      xprt_ref(v3[6]);
      return v3;
    }

    v14 = strlen(v13);
    v15 = calloc(1uLL, v14 + 1);
    v12 = v3[5];
    *(v12 + 8) = v15;
    if (v15)
    {
      memcpy(v15, *(a1[5] + 8), v14 + 1);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  return v3;
}

void svc_req_destroy(void *a1)
{
  xprt_unref(a1[6]);
  v2 = a1[5];
  if (v2)
  {
    if (*(v2 + 8))
    {
      free(*(v2 + 8));
      v2 = a1[5];
    }

    if (*(v2 + 24))
    {
      free(*(v2 + 32));
      v2 = a1[5];
    }

    free(v2);
  }

  free(a1);
}

_DWORD *_newrpclib_svc_sendreply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0u;
    v10 = 0u;
    v6 = result[78];
    v7 = 1;
    *(v8 + 8) = *(result + 45);
    *(&v8[1] + 1) = *(result + 92);
    *(&v9 + 1) = a3;
    *&v10 = a2;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svc_reqsendreply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v10, 0, sizeof(v10));
  v11 = 0u;
  v12 = 0u;
  v8 = *(a1 + 312);
  v9 = 1;
  *(v10 + 8) = *(a1 + 720);
  *(&v10[1] + 1) = *(a1 + 736);
  *(&v11 + 1) = a3;
  *&v12 = a2;
  v6 = (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, 0);
  return v6;
}

_DWORD *_newrpclib_svcerr_noproc()
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    v1 = result[78];
    v2 = 1;
    *(v3 + 8) = *(result + 45);
    *(&v3[1] + 1) = *(result + 92);
    LODWORD(v4) = 3;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqnoproc(uint64_t a1)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  v7 = 0u;
  v3 = *(a1 + 312);
  v4 = 1;
  *(v5 + 8) = *(a1 + 720);
  *(&v5[1] + 1) = *(a1 + 736);
  LODWORD(v6) = 3;
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

_DWORD *_newrpclib_svcerr_decode()
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    v1 = result[78];
    v2 = 1;
    *(v3 + 8) = *(result + 45);
    *(&v3[1] + 1) = *(result + 92);
    LODWORD(v4) = 4;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqdecode(uint64_t a1)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  v7 = 0u;
  v3 = *(a1 + 312);
  v4 = 1;
  *(v5 + 8) = *(a1 + 720);
  *(&v5[1] + 1) = *(a1 + 736);
  LODWORD(v6) = 4;
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

_DWORD *_newrpclib_svcerr_systemerr()
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    v1 = result[78];
    v2 = 1;
    *(v3 + 8) = *(result + 45);
    *(&v3[1] + 1) = *(result + 92);
    LODWORD(v4) = 5;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqsystemerr(uint64_t a1)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  v7 = 0u;
  v3 = *(a1 + 312);
  v4 = 1;
  *(v5 + 8) = *(a1 + 720);
  *(&v5[1] + 1) = *(a1 + 736);
  LODWORD(v6) = 5;
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

_DWORD *_newrpclib_svcerr_auth(uint64_t a1, int a2)
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    *&v5[4] = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v4 = result[78];
    *v5 = 0x100000001;
    *&v5[12] = 1;
    *&v5[16] = a2;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqauth(uint64_t a1, int a2)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  *&v6[4] = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = *(a1 + 312);
  *v6 = 0x100000001;
  *&v6[12] = 1;
  *&v6[16] = a2;
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

_DWORD *_newrpclib_svcerr_noprog()
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    v1 = result[78];
    v2 = 1;
    *(v3 + 8) = *(result + 45);
    *(&v3[1] + 1) = *(result + 92);
    LODWORD(v4) = 1;
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqnoprog(uint64_t a1)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  v7 = 0u;
  v3 = *(a1 + 312);
  v4 = 1;
  *(v5 + 8) = *(a1 + 720);
  *(&v5[1] + 1) = *(a1 + 736);
  LODWORD(v6) = 3;
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

_DWORD *_newrpclib_svcerr_progvers(uint64_t a1, unsigned int a2, unsigned int a3)
{
  pthread_once(&create_key_init, create_svc_req_key);
  result = pthread_getspecific(SVC_REQ_KEY);
  if (result)
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0u;
    v10 = 0u;
    v6 = result[78];
    v7 = 1;
    *(v8 + 8) = *(result + 45);
    *(&v8[1] + 1) = *(result + 92);
    LODWORD(v9) = 2;
    *(&v9 + 1) = __PAIR64__(a3, a2);
    return (*(*(*(result + 6) + 8) + 24))();
  }

  return result;
}

uint64_t _newrpclib_svcerr_reqprogvers(uint64_t a1, unsigned int a2, unsigned int a3)
{
  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(SVC_REQ_KEY, a1);
  memset(v9, 0, sizeof(v9));
  v10 = 0u;
  v11 = 0u;
  v7 = *(a1 + 312);
  v8 = 1;
  *(v9 + 8) = *(a1 + 720);
  *(&v9[1] + 1) = *(a1 + 736);
  LODWORD(v10) = 2;
  *(&v10 + 1) = __PAIR64__(a3, a2);
  (*(*(*(a1 + 48) + 8) + 24))();
  pthread_once(&create_key_init, create_svc_req_key);
  return pthread_setspecific(SVC_REQ_KEY, 0);
}

uint64_t _newrpclib_svc_getsomerequests(uint64_t a1, int a2)
{
  v67 = *MEMORY[0x277D85DE8];
  bzero(v39, 0x4B0uLL);
  v4 = 0x280A69000uLL;
  while (2)
  {
    bzero(&v42, 0x2F0uLL);
    v36 = 0;
    v37 = &v40;
    v38 = 0;
    memset(v35, 0, 32);
    *&v35[32] = v39;
    v46 = &v41;
    pthread_once(&create_key_init, create_svc_req_key);
    pthread_setspecific(*(v4 + 1632), &v42);
    if (!(**(a1 + 8))(a1, v35))
    {
      goto LABEL_26;
    }

    v42 = *&v35[12];
    v43 = *&v35[20];
    v45 = *&v35[40];
    v44 = *&v35[24];
    v64 = *v35;
    v47 = a1;
    v5 = *(a1 + 64);
    v6 = *(v5 + 72);
    v7 = *(v5 + 88);
    v8 = *(v5 + 104);
    v55 = *(v5 + 120);
    v54 = v8;
    v53 = v7;
    v9 = *(v5 + 24);
    v10 = *(v5 + 40);
    v11 = *(v5 + 8);
    v51 = *(v5 + 56);
    v48 = v11;
    v50 = v10;
    v49 = v9;
    v52 = v6;
    v12 = *(v5 + 136);
    v13 = *(v5 + 152);
    v14 = *(v5 + 184);
    v58 = *(v5 + 168);
    v59 = v14;
    v56 = v12;
    v57 = v13;
    v15 = *(v5 + 200);
    v16 = *(v5 + 216);
    v17 = *(v5 + 248);
    v62 = *(v5 + 232);
    v63 = v17;
    v60 = v15;
    v61 = v16;
    v65 = 2;
    v66 = 2 * (a2 == 1);
    v18 = _newrpclib__authenticate(&v42, v35);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 64);
      if ((*(v20 + 328) & 4) != 0)
      {
        v18 = pthread_mutex_unlock((v20 + 392));
      }

      _newrpclib_svcerr_auth(v18, v19);
      goto LABEL_26;
    }

    v21 = v42;
    v22 = HIDWORD(v42);
    pthread_rwlock_rdlock(&svc_register_lock);
    v23 = svc_head;
    if (!svc_head)
    {
      v25 = 0;
      v26 = -1;
      LOBYTE(v28) = 1;
LABEL_19:
      pthread_rwlock_unlock(&svc_register_lock);
LABEL_20:
      v29 = *(a1 + 64);
      if ((*(v29 + 328) & 4) != 0)
      {
        pthread_mutex_unlock((v29 + 392));
      }

      if (v28)
      {
        _newrpclib_svcerr_reqnoprog(&v42);
      }

      else
      {
        _newrpclib_svcerr_reqprogvers(&v42, v26, v25);
      }

      v4 = 0x280A69000uLL;
      goto LABEL_26;
    }

    v24 = 0;
    v25 = 0;
    v26 = -1;
    while (*(v23 + 8) != v21)
    {
LABEL_16:
      v23 = *v23;
      if (!v23)
      {
        LOBYTE(v28) = v24 == 0;
        goto LABEL_19;
      }
    }

    v27 = *(v23 + 12);
    if (v27 != v22)
    {
      if (v27 < v26)
      {
        v26 = *(v23 + 12);
      }

      if (v27 > v25)
      {
        v25 = *(v23 + 12);
      }

      v24 = 1;
      goto LABEL_16;
    }

    v28 = *(v23 + 16);
    pthread_rwlock_unlock(&svc_register_lock);
    if (!v28)
    {
      goto LABEL_20;
    }

    v28(&v42, a1);
    v32 = *(a1 + 64);
    v4 = 0x280A69000;
    if ((*(v32 + 328) & 4) != 0 && (v66 & 1) == 0)
    {
      pthread_mutex_unlock((v32 + 392));
    }

LABEL_26:
    v30 = v65;
    if (v65)
    {
      v31 = v66;
      if ((v66 & 1) == 0)
      {
        v66 |= 1u;
        if ((v31 & 2) != 0)
        {
          svc_rearmxprt(a1, v65 == 1);
        }
      }

      if (!--a2 || v30 != 1)
      {
        if (a2)
        {
          svc_rearmxprt(a1, v30 == 1);
        }

        break;
      }

      continue;
    }

    break;
  }

  pthread_once(&create_key_init, create_svc_req_key);
  pthread_setspecific(*(v4 + 1632), 0);
  xprt_unref(a1);
  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

void _newrpclib_svc_enable_localaddr(uint64_t a1)
{
  v7 = 0;
  v8 = 1;
  v2 = (a1 + 64);
  v3 = **(a1 + 64);
  v6 = 0;
  if (_newrpclib_netid2socparms(v3, &v7, 0, &v6, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_svc_enable_localaddr_cold_1(v2);
    }

    return;
  }

  if (v7 == 2)
  {
    v4 = 0;
    v5 = 26;
    goto LABEL_8;
  }

  if (v7 == 30)
  {
    v4 = 41;
    v5 = 61;
LABEL_8:
    if (v6 == 17 && setsockopt(*a1, v4, v5, &v8, 4u))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_svc_enable_localaddr_cold_2();
      }
    }

    else
    {
      *(*v2 + 82) |= 0x10u;
    }

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib_svc_enable_localaddr_cold_3();
  }
}

unsigned int *OUTLINED_FUNCTION_9@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t _newrpclib_xdr_array(uint64_t (***a1)(void), void **a2, int *a3, unsigned int a4, unsigned int a5, uint64_t (*a6)(uint64_t (***)(void), char *))
{
  v12 = *a2;
  if (!_newrpclib_xdr_u_int(a1, a3))
  {
    return 0;
  }

  v13 = *a3;
  if ((v13 > a4 || ((a5 * v13) & 0xFFFFFFFF00000000) != 0) && *a1 != 2)
  {
    return 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  if (*a1 == 2)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (v13)
    {
      v18 = calloc(1uLL, v13 * a5);
      *a2 = v18;
      if (v18)
      {
        v12 = v18;
        bzero(v18, v13 * a5);
LABEL_7:
        v14 = a5;
        v15 = 1;
        do
        {
          v16 = a6(a1, v12);
          v17 = v16;
          if (v15 >= v13)
          {
            break;
          }

          v12 += v14;
          ++v15;
        }

        while (v16);
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_xdr_array_cold_1();
      }

      return 0;
    }

    return 1;
  }

LABEL_6:
  if (v13)
  {
    goto LABEL_7;
  }

  v17 = 1;
LABEL_17:
  if (*a1 == 2)
  {
    free(*a2);
    *a2 = 0;
  }

  return v17;
}

uint64_t _newrpclib_xdr_vector(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 1;
  }

  v6 = a3;
  v9 = a4;
  while (1)
  {
    result = a5(a1, a2);
    if (!result)
    {
      break;
    }

    a2 += v9;
    if (!--v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_float(uint64_t (***a1)(void), int *a2)
{
  v4 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  if (v4 == 1)
  {
    v8 = 0;
    result = (*a1[1])();
    if (result)
    {
      *a2 = v8;
      return 1;
    }
  }

  else if (v4)
  {
    return 0;
  }

  else
  {
    v7 = *a2;
    return a1[1][1]();
  }

  return result;
}

uint64_t _newrpclib_xdr_double(int *a1, int *a2)
{
  v4 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  if (v4 == 1)
  {
    v8 = 0;
    result = (**(a1 + 1))(a1, &v8);
    if (result)
    {
      a2[1] = v8;
      v8 = 0;
      result = (**(a1 + 1))(a1, &v8);
      if (result)
      {
        *a2 = v8;
        return 1;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  else
  {
    v8 = a2[1];
    result = (*(*(a1 + 1) + 8))(a1, &v8);
    if (result)
    {
      v8 = *a2;
      return (*(*(a1 + 1) + 8))(a1, &v8);
    }
  }

  return result;
}

uint64_t _newrpclib_xdrmem_create(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = a4;
  v4 = xdrmem_ops_unaligned;
  if ((a2 & 3) == 0)
  {
    v4 = xdrmem_ops_aligned;
  }

  *(result + 8) = v4;
  *(result + 24) = a2;
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t xdrmem_getrecord(int *a1, uint64_t *a2, int *a3)
{
  *a2 = 0;
  *a3 = 0;
  v4 = a1[10];
  if (!v4)
  {
    return 1;
  }

  result = calloc(1uLL, v4);
  *a2 = result;
  if (result)
  {
    v8 = a1[10];
    *a3 = v8;

    return _newrpclib_xdr_opaque(a1, result, v8);
  }

  return result;
}

uint64_t xdrmem_getlong_unaligned(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 40);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (!v3)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  v6 = *(a1 + 24);
  *a2 = bswap32(*v6);
  *(a1 + 24) = v6 + 1;
  return 1;
}

uint64_t xdrmem_putlong_unaligned(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 40);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (!v3)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  **(a1 + 24) = bswap32(*a2);
  *(a1 + 24) += 4;
  return 1;
}

uint64_t xdrmem_getbytes(uint64_t a1, void *__dst, size_t __len)
{
  v3 = *(a1 + 40);
  v4 = v3 >= __len;
  v5 = v3 - __len;
  if (!v4)
  {
    return 0;
  }

  v7 = __len;
  *(a1 + 40) = v5;
  memmove(__dst, *(a1 + 24), __len);
  *(a1 + 24) += v7;
  return 1;
}

uint64_t xdrmem_putbytes(uint64_t a1, const void *a2, size_t __len)
{
  v3 = *(a1 + 40);
  v4 = v3 >= __len;
  v5 = v3 - __len;
  if (!v4)
  {
    return 0;
  }

  v7 = __len;
  *(a1 + 40) = v5;
  memmove(*(a1 + 24), a2, __len);
  *(a1 + 24) += v7;
  return 1;
}

uint64_t xdrmem_getpos(uint64_t a1)
{
  if ((*(a1 + 24) - *(a1 + 32)) >= 0xFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 32);
  }
}

uint64_t xdrmem_setpos(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32) + a2;
  v3 = *(a1 + 24) + *(a1 + 40);
  if (v2 > v3)
  {
    return 0;
  }

  *(a1 + 24) = v2;
  v4 = v3 - v2;
  if (v4 > 0xFFFFFFFFLL)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  return 1;
}

uint64_t xdrmem_getlong_aligned(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 40);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (!v3)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  v6 = *(a1 + 24);
  *a2 = bswap32(*v6);
  *(a1 + 24) = v6 + 1;
  return 1;
}

uint64_t xdrmem_putlong_aligned(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 40);
  v3 = v2 >= 4;
  v4 = v2 - 4;
  if (!v3)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  v6 = *(a1 + 24);
  *v6 = bswap32(*a2);
  *(a1 + 24) = v6 + 1;
  return 1;
}

uint64_t xdrmem_inline_aligned(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *(a1 + 40) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = v5 + a2;
  return v5;
}

uint64_t xdrrec_getlong(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 80);
  __dst = 0;
  if (*(v3 + 96) < 4u || (*(v3 + 88) - v4) < 4)
  {
    result = xdrrec_getbytes(a1, &__dst, 4u);
    if (!result)
    {
      return result;
    }

    *a2 = bswap32(__dst);
  }

  else
  {
    *a2 = bswap32(*v4);
    *(v3 + 96) -= 4;
    *(v3 + 80) = v4 + 1;
  }

  return 1;
}

uint64_t xdrrec_putlong(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *(v3 + 24) = v4 + 1;
  if ((v4 + 1) > v5)
  {
    *(v3 + 24) = v4;
    *(v3 + 48) = 1;
    result = flush_out(v3, 0);
    if (!result)
    {
      return result;
    }

    v4 = *(v3 + 24);
    *(v3 + 24) = v4 + 1;
  }

  *v4 = bswap32(*a2);
  return 1;
}

uint64_t xdrrec_getbytes(uint64_t a1, char *__dst, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  v5 = *(a1 + 24);
  while (1)
  {
    while (1)
    {
      v6 = v5[24];
      if (!v6)
      {
        break;
      }

      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3;
      }

      result = get_input_bytes(v5, __dst, v8);
      if (result)
      {
        __dst += v8;
        v5[24] -= v8;
        result = 1;
        v3 -= v8;
        if (v3)
        {
          continue;
        }
      }

      return result;
    }

    if (v5[25])
    {
      break;
    }

    result = set_input_fragment(v5);
    if (!result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t xdrrec_putbytes(uint64_t a1, char *__src, unsigned int a3)
{
  v3 = 1;
  if (a3)
  {
    v4 = a3;
    v6 = *(a1 + 24);
    while (1)
    {
      v7 = *(v6 + 24);
      v8 = *(v6 + 32) - v7 >= v4 ? v4 : *(v6 + 32) - v7;
      memmove(v7, __src, v8);
      v9 = *(v6 + 32);
      v10 = *(v6 + 24) + v8;
      *(v6 + 24) = v10;
      if (v10 == v9)
      {
        *(v6 + 48) = 1;
        if (!flush_out(v6, 0))
        {
          break;
        }
      }

      __src += v8;
      v4 -= v8;
      if (!v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return v3;
}

off_t xdrrec_getpos(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = lseek(**v2, 0, 1);
  if (result != -1)
  {
    if (*a1 == 1)
    {
      return result - *(v2 + 88) + *(v2 + 80);
    }

    else if (*a1)
    {
      return -1;
    }

    else
    {
      return result + *(v2 + 24) - *(v2 + 16);
    }
  }

  return result;
}

uint64_t xdrrec_setpos(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  v5 = xdrrec_getpos(a1);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5 - a2;
  if (*a1 == 1)
  {
    v8 = *(v4 + 96);
    v9 = __OFSUB__(v8, v6);
    v10 = v8 - v6;
    if (!((v10 < 0) ^ v9 | (v10 == 0)))
    {
      v11 = *(v4 + 80) - v6;
      if (v11 <= *(v4 + 88) && v11 >= *(v4 + 72))
      {
        *(v4 + 80) = v11;
        *(v4 + 96) = v10;
        return 1;
      }
    }

    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v7 = *(v4 + 24) - v6;
  if (v7 <= *(v4 + 40) || v7 >= *(v4 + 32))
  {
    return 0;
  }

  *(v4 + 24) = v7;
  return 1;
}

uint64_t xdrrec_inline(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*a1 != 1)
  {
    if (!*a1)
    {
      result = *(v2 + 24);
      v4 = result + a2;
      if (v4 <= *(v2 + 32))
      {
        *(v2 + 24) = v4;
        return result;
      }
    }

    return 0;
  }

  v5 = *(v2 + 96);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    return 0;
  }

  result = *(v2 + 80);
  v8 = result + a2;
  if (v8 > *(v2 + 88))
  {
    return 0;
  }

  *(v2 + 96) = v7;
  *(v2 + 80) = v8;
  return result;
}

void xdrrec_destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  free(v1[2]);
  free(v1[9]);

  free(v1);
}

void _newrpclib_xdrrec_create(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = calloc(1uLL, 0x98uLL);
  if (v12)
  {
    v13 = v12;
    if (a2 >= 0x64)
    {
      v14 = (a2 + 3) & 0xFFFFFFFC;
    }

    else
    {
      v14 = 4000;
    }

    *(v12 + 26) = v14;
    v15 = calloc(1uLL, v14);
    *(v13 + 2) = v15;
    if (v15)
    {
      if (a3 >= 0x64)
      {
        v16 = (a3 + 3) & 0xFFFFFFFC;
      }

      else
      {
        v16 = 4000;
      }

      *(v13 + 27) = v16;
      v17 = calloc(1uLL, v16);
      *(v13 + 9) = v17;
      if (v17)
      {
        *(a1 + 8) = xdrrec_ops;
        *(a1 + 24) = v13;
        *v13 = a4;
        *(v13 + 1) = a6;
        v18 = *(v13 + 2);
        *(v13 + 5) = v18;
        *(v13 + 3) = v18 + 4;
        *(v13 + 4) = v18 + v14;
        *(v13 + 12) = 0;
        *(v13 + 7) = a5;
        *(v13 + 8) = v16;
        *(v13 + 10) = &v17[v16];
        *(v13 + 11) = &v17[v16];
        *(v13 + 12) = 0x100000000;
        *(v13 + 16) = v13 + 120;
        *(v13 + 14) = 0;
        *(v13 + 17) = 0;
        *(v13 + 36) = 0;
        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _newrpclib_xdrrec_create_cold_1();
      }

      free(*(v13 + 2));
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _newrpclib_xdrrec_create_cold_2();
    }

    free(v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib_xdrrec_create_cold_3();
  }
}

BOOL xdrrec_isrecordstart(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 96);
  return (!v2 && *(v1 + 100) || xdrrec_isrecordstart_cold_1(*(a1 + 24), v2, (v1 + 96))) && *(v1 + 100) != 0;
}

uint64_t _newrpclib_xdrrec_skiprecord(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!*(v1 + 28))
  {
    while (1)
    {
      v7 = *(v1 + 24);
      if (!v7)
      {
        if (*(v1 + 25))
        {
          break;
        }
      }

      result = skip_input_bytes(v1, v7);
      if (result)
      {
        *(v1 + 24) = 0;
        if (*(v1 + 25))
        {
          continue;
        }

        result = set_input_fragment(v1);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    *(v1 + 25) = 0;
    return 1;
  }

  if (*(v1 + 29))
  {
    goto LABEL_3;
  }

  v8 = (v1[7])(*v1, v1[16], 4 - *(v1 + 34));
  if (v8 < 1)
  {
    return 0;
  }

  v1[16] += v8;
  v9 = *(v1 + 34) + v8;
  *(v1 + 34) = v9;
  if (v9 < 4)
  {
    goto LABEL_15;
  }

  v10 = bswap32(*(v1 + 30));
  *(v1 + 30) = v10;
  v11 = v10 & 0x7FFFFFFF;
  if ((v10 & 0x7FFFFFFF) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 37);
  if (v11 > v12)
  {
    return 0;
  }

  v13 = *(v1 + 35) + v11;
  if (v13 > v12)
  {
    return 0;
  }

  *(v1 + 35) = v13;
  if (v13 <= *(v1 + 27))
  {
LABEL_27:
    if ((v10 & 0x80000000) != 0)
    {
      *(v1 + 30) = v10 & 0x7FFFFFFF;
      *(v1 + 25) = 1;
    }

LABEL_3:
    v2 = (v1[7])(*v1, v1[9] + *(v1 + 36), (*(v1 + 35) - *(v1 + 36)));
    if (v2 < 1)
    {
      return 0;
    }

    v3 = *(v1 + 35);
    v4 = *(v1 + 36) + v2;
    *(v1 + 36) = v4;
    if (v4 == v3)
    {
      *(v1 + 29) = 0;
      v1[16] = v1 + 15;
      *(v1 + 34) = 0;
      if (*(v1 + 25))
      {
        v5 = v1[9];
        v1[10] = v5;
        v1[11] = v5 + v4;
        *(v1 + 35) = 0;
        *(v1 + 36) = 0;
LABEL_17:
        *(v1 + 24) = 0;
        return 1;
      }
    }

LABEL_15:
    if (v1[10] == v1[11])
    {
      goto LABEL_17;
    }

    return 0;
  }

  result = realloc_stream(v1, v13);
  if (result)
  {
    v10 = *(v1 + 30);
    goto LABEL_27;
  }

  return result;
}

uint64_t skip_input_bytes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  do
  {
    while (1)
    {
      v4 = *(a1 + 80);
      LODWORD(v5) = *(a1 + 88) - v4;
      if (v5)
      {
        break;
      }

      result = fill_input_buf(a1);
      if (!result)
      {
        return result;
      }
    }

    if (v2 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v2;
    }

    *(a1 + 80) = v4 + v5;
    v2 -= v5;
  }

  while (v2);
  return 1;
}

uint64_t set_input_fragment(_DWORD *a1)
{
  if (a1[28])
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  __dst = 0;
  result = get_input_bytes(a1, &__dst, 4uLL);
  if (result)
  {
    v5 = __dst;
    v6 = bswap32(__dst);
    a1[25] = v6 >> 31;
    if (v5)
    {
      a1[24] = v6 & 0x7FFFFFFF;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _newrpclib_xdrrec_eof(uint64_t a1)
{
  v1 = *(a1 + 24);
  while (1)
  {
    v2 = *(v1 + 96);
    if (!v2)
    {
      if (*(v1 + 100))
      {
        break;
      }
    }

    if (skip_input_bytes(v1, v2))
    {
      *(v1 + 96) = 0;
      if (*(v1 + 100) || set_input_fragment(v1))
      {
        continue;
      }
    }

    return 1;
  }

  return *(v1 + 80) == *(v1 + 88);
}

uint64_t _newrpclib_xdrrec_endofrecord(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (a2 || *(v2 + 48) || (v3 = *(v2 + 24), (v3 + 4) >= *(v2 + 32)))
  {
    *(v2 + 48) = 0;
    return flush_out(v2, 1);
  }

  else
  {
    **(v2 + 40) = bswap32((v3 - *(v2 + 40) + 2147483644) | 0x80000000);
    *(v2 + 40) = v3;
    *(v2 + 24) = v3 + 4;
    return 1;
  }
}

uint64_t flush_out(uint64_t a1, int a2)
{
  v3 = a2 == 1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  **(a1 + 40) = bswap32((v5 - *(a1 + 40) - 4) | (v3 << 31));
  if ((*(a1 + 8))(*a1) != v5 - v4)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  *(a1 + 40) = v6;
  *(a1 + 24) = v6 + 4;
  return 1;
}

uint64_t xdrrec_getrecord(uint64_t a1, void **a2, unsigned int *a3)
{
  v3 = *(a1 + 24);
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 8) != xdrrec_ops)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3[24];
      if (!v7)
      {
        break;
      }

      if (__CFADD__(*a3, v7))
      {
        return 0;
      }

      result = reallocf(*a2, *a3 + v7);
      *a2 = result;
      if (!result)
      {
        return result;
      }

      if (!get_input_bytes(v3, (result + *a3), v3[24]))
      {
        free(*a2);
        result = 0;
        *a2 = 0;
        return result;
      }

      *a3 += v3[24];
      v3[24] = 0;
    }

    if (v3[25])
    {
      break;
    }

    result = set_input_fragment(v3);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t get_input_bytes(uint64_t a1, char *__dst, size_t __n)
{
  v3 = __n;
  if (*(a1 + 112))
  {
    v6 = *(a1 + 80);
    if (*(a1 + 88) - v6 < __n)
    {
      return 0;
    }

    v11 = __n;
    memcpy(__dst, v6, __n);
    *(a1 + 80) += v11;
    return 1;
  }

  if (!__n)
  {
    return 1;
  }

  do
  {
    while (1)
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 88) - v8;
      if (v9)
      {
        break;
      }

      result = fill_input_buf(a1);
      if (!result)
      {
        return result;
      }
    }

    if (v9 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *(a1 + 88) - v8;
    }

    memmove(__dst, v8, v10);
    *(a1 + 80) += v10;
    __dst += v10;
    result = 1;
    v3 -= v10;
  }

  while (v3);
  return result;
}

uint64_t realloc_stream(uint64_t a1, size_t __size)
{
  if (*(a1 + 108) >= __size)
  {
    return 1;
  }

  v2 = __size;
  v4 = __size;
  result = realloc(*(a1 + 72), __size);
  if (result)
  {
    *(a1 + 80) += result - *(a1 + 72);
    *(a1 + 88) = result + v4;
    *(a1 + 108) = v2;
    *(a1 + 64) = v4;
    *(a1 + 72) = result;
    return 1;
  }

  return result;
}

uint64_t fill_input_buf(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return 0;
  }

  v3 = *(a1 + 88) & 3;
  v4 = *(a1 + 72) + v3;
  v5 = (*(a1 + 56))(*a1, v4, *(a1 + 64) - v3);
  if (v5 == -1)
  {
    return 0;
  }

  *(a1 + 80) = v4;
  *(a1 + 88) = v4 + v5;
  return 1;
}

uint64_t _newrpclib_xdr_reference(_DWORD *a1, void **a2, size_t __size, uint64_t (*a4)(_DWORD *, void *, size_t))
{
  v7 = *a2;
  if (*a2)
  {
LABEL_2:
    v8 = a4(a1, v7, __size);
    if (*a1 == 2)
    {
      free(v7);
      *a2 = 0;
    }

    return v8;
  }

  if (*a1 == 2)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    v7 = 0;
    goto LABEL_2;
  }

  v9 = __size;
  v10 = calloc(1uLL, __size);
  *a2 = v10;
  if (v10)
  {
    v7 = v10;
    bzero(v10, v9);
    goto LABEL_2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _newrpclib_xdr_reference_cold_1();
  }

  return 0;
}

uint64_t _newrpclib_xdr_pointer(uint64_t (***a1)(void), void **a2, size_t a3, uint64_t (*a4)(_DWORD *, void *, size_t))
{
  v9 = *a2 != 0;
  result = _newrpclib_xdr_BOOL(a1, &v9);
  if (result)
  {
    if (v9)
    {
      return _newrpclib_xdr_reference(a1, a2, a3, a4);
    }

    else
    {
      *a2 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t _newrpclib_xdr_sizeof(uint64_t (*a1)(void *))
{
  v5 = 0uLL;
  v6 = 0u;
  v4[0] = 0;
  v3[1] = x_putlong;
  v3[3] = x_putbytes;
  v3[6] = x_inline;
  v3[4] = x_getpostn;
  v3[5] = x_setpostn;
  v3[7] = x_destroy;
  v3[8] = 0;
  v3[0] = harmless;
  v3[2] = harmless;
  v4[1] = v3;
  *&v6 = 0;
  DWORD2(v6) = 0;
  v1 = a1(v4);
  if (*(&v5 + 1))
  {
    free(*(&v5 + 1));
  }

  if (v1 == 1)
  {
    return DWORD2(v6);
  }

  else
  {
    return 0;
  }
}

void *x_inline(uint64_t a1, size_t __size)
{
  if (!__size)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v4 = __size;
  if (*(a1 + 32) <= __size)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      free(v5);
    }

    result = calloc(1uLL, v4);
    *(a1 + 24) = result;
    if (result)
    {
      *(a1 + 32) = v4;
      *(a1 + 40) += v4;
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }

  else
  {
    *(a1 + 40) += __size;
    return *(a1 + 24);
  }

  return result;
}

void x_destroy(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t _newrpclib_xdrstdio_create(uint64_t result, uint64_t a2, int a3)
{
  *result = a3;
  *(result + 8) = xdrstdio_ops;
  *(result + 40) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  return result;
}

uint64_t xdrstdio_getlong(uint64_t a1, _DWORD *a2)
{
  __ptr = 0;
  v3 = fread(&__ptr, 4uLL, 1uLL, *(a1 + 24));
  result = 0;
  if (v3 == 1)
  {
    *a2 = bswap32(__ptr);
    return 1;
  }

  return result;
}

uint64_t xdrstdio_getpos(uint64_t a1)
{
  result = MEMORY[0x277CA8E90](*(a1 + 24));
  if (result >= 0xFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _newrpclib_xdr_free(uint64_t (*a1)(_OWORD *))
{
  memset(v2, 0, sizeof(v2));
  LODWORD(v2[0]) = 2;
  return a1(v2);
}

uint64_t _newrpclib_xdr_int(uint64_t (***a1)(void), int *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_u_int(uint64_t (***a1)(void), int *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_long(uint64_t (***a1)(void))
{
  v1 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v1 == 1)
  {
    return (*a1[1])();
  }

  if (v1)
  {
    return 0;
  }

  return a1[1][1]();
}

uint64_t _newrpclib_xdr_u_long(uint64_t (***a1)(void))
{
  v1 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v1 == 1)
  {
    return (*a1[1])();
  }

  if (v1)
  {
    return 0;
  }

  return a1[1][1]();
}

uint64_t _newrpclib_xdr_int32_t(uint64_t (***a1)(void), int *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_uint32_t(uint64_t (***a1)(void), int *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_short(uint64_t (***a1)(void), __int16 *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_u_short(uint64_t (***a1)(void), _WORD *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_int16_t(uint64_t (***a1)(void), __int16 *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_uint16_t(uint64_t (***a1)(void), _WORD *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_char(uint64_t (***a1)(void), _BYTE *a2)
{
  v4 = *a2;
  result = _newrpclib_xdr_int(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t _newrpclib_xdr_u_char(uint64_t (***a1)(void), _BYTE *a2)
{
  v4 = *a2;
  result = _newrpclib_xdr_uint32_t(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t _newrpclib_xdr_BOOL(uint64_t (***a1)(void), _BOOL4 *a2)
{
  v5 = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    result = (*a1[1])();
    if (!result)
    {
      return result;
    }

    *a2 = v5;
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v5 = *a2;
  return a1[1][1]();
}

uint64_t _newrpclib_xdr_opaque(int *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3 & 3;
  v5 = *a1;
  if (!*a1)
  {
    v10 = (*(*(a1 + 1) + 24))(a1);
    result = v10 != 0;
    if (!v4 || !v10)
    {
      return result;
    }

    v8 = *(*(a1 + 1) + 24);
    v9 = &xdr_zero;
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    return 1;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v6 = (*(*(a1 + 1) + 16))(a1);
  result = v6 != 0;
  if (v4 && v6)
  {
    v8 = *(*(a1 + 1) + 16);
    v9 = &_newrpclib_xdr_opaque_crud;
LABEL_12:

    return v8(a1, v9, (4 - v4));
  }

  return result;
}

uint64_t _newrpclib_xdr_bytes(uint64_t (***a1)(void), void **a2, int *a3, unsigned int a4)
{
  v8 = *a2;
  result = _newrpclib_xdr_uint32_t(a1, a3);
  if (result)
  {
    v10 = *a3;
    v11 = *a1;
    if (v10 > a4)
    {
      if (v11 != 2)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v11)
    {
      if (v11 == 2)
      {
LABEL_14:
        if (v8)
        {
          free(v8);
          *a2 = 0;
        }

        return 1;
      }

      if (v11 != 1)
      {
        return 0;
      }

      if (!v10)
      {
        return 1;
      }

      if (!v8)
      {
        v8 = calloc(1uLL, v10);
        *a2 = v8;
        if (!v8)
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          _newrpclib_xdr_bytes_cold_1();
          return 0;
        }
      }
    }

    return _newrpclib_xdr_opaque(a1, v8, v10);
  }

  return result;
}

uint64_t xdr_vmbytes(uint64_t (***a1)(void), vm_address_t *a2, int *a3, unsigned int a4)
{
  v8 = *a2;
  address = *a2;
  result = _newrpclib_xdr_uint32_t(a1, a3);
  if (result)
  {
    v10 = *a3;
    v11 = *a1;
    if (v10 > a4)
    {
      if (v11 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v11)
    {
      if (v11 == 2)
      {
LABEL_11:
        if (v8)
        {
          MEMORY[0x277CA93C0](*MEMORY[0x277D85F48], v8, v10);
          *a2 = 0;
        }

        return 1;
      }

      if (v11 != 1)
      {
        return 0;
      }

      if (!v10)
      {
        return 1;
      }

      if (!v8)
      {
        if (vm_allocate(*MEMORY[0x277D85F48], &address, v10, 1))
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          xdr_vmbytes_cold_1();
          return 0;
        }

        v8 = address;
        *a2 = address;
      }
    }

    return _newrpclib_xdr_opaque(a1, v8, v10);
  }

  return result;
}

uint64_t _newrpclib_xdr_union(uint64_t (***a1)(void), _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t (***)(void), uint64_t))
{
  if (!_newrpclib_xdr_long(a1))
  {
    return 0;
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
LABEL_8:
    v10 = a5;
    if (a5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*a4 != *a2)
  {
    v11 = (a4 + 24);
    do
    {
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_8;
      }

      v12 = *(v11 - 2);
      v11 += 4;
    }

    while (v12 != *a2);
  }

LABEL_9:

  return v10(a1, a3);
}

uint64_t _newrpclib_xdr_string(uint64_t (***a1)(void), char **a2, unsigned int a3)
{
  v6 = *a2;
  v11 = 0;
  if (*a1)
  {
    if (*a1 != 2)
    {
      goto LABEL_6;
    }

    if (!v6)
    {
      return 1;
    }
  }

  v7 = strlen(v6);
  if (HIDWORD(v7))
  {
    return 0;
  }

  v11 = v7;
LABEL_6:
  result = _newrpclib_xdr_uint32_t(a1, &v11);
  if (!result)
  {
    return result;
  }

  v9 = v11;
  if (v11 > a3)
  {
    return 0;
  }

  v10 = *a1;
  if (!*a1)
  {
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    free(v6);
    *a2 = 0;
    return 1;
  }

  if (v10 != 1)
  {
    return 0;
  }

  if (v6 || (v6 = calloc(1uLL, v11 + 1), (*a2 = v6) != 0))
  {
    v6[v9] = 0;
LABEL_15:

    return _newrpclib_xdr_opaque(a1, v6, v9);
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    _newrpclib_xdr_string_cold_1();
    return 0;
  }

  return result;
}

uint64_t _newrpclib_xdr_int64_t(int *a1, unint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_9;
  }

  if (v2 == 1)
  {
    result = (**(a1 + 1))(a1, v7);
    if (!result)
    {
      goto LABEL_11;
    }

    result = (**(a1 + 1))(a1, v7 + 4);
    if (!result)
    {
      goto LABEL_11;
    }

    *a2 = HIDWORD(v7[0]) | (LODWORD(v7[0]) << 32);
LABEL_9:
    result = 1;
    goto LABEL_11;
  }

  if (v2)
  {
    result = 0;
  }

  else
  {
    v7[0] = __ROR8__(*a2, 32);
    result = (*(*(a1 + 1) + 8))(a1, v7);
    if (result)
    {
      result = (*(*(a1 + 1) + 8))(a1, v7 + 4);
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_xdr_uint64_t(int *a1, unint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_9;
  }

  if (v2 == 1)
  {
    result = (**(a1 + 1))(a1, v7);
    if (!result)
    {
      goto LABEL_11;
    }

    result = (**(a1 + 1))(a1, v7 + 4);
    if (!result)
    {
      goto LABEL_11;
    }

    *a2 = HIDWORD(v7[0]) | (LODWORD(v7[0]) << 32);
LABEL_9:
    result = 1;
    goto LABEL_11;
  }

  if (v2)
  {
    result = 0;
  }

  else
  {
    v7[0] = __ROR8__(*a2, 32);
    result = (*(*(a1 + 1) + 8))(a1, v7);
    if (result)
    {
      result = (*(*(a1 + 1) + 8))(a1, v7 + 4);
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _newrpclib_xdr_getrecord(int *a1, uint64_t *a2, int *a3)
{
  if (*a1 != 1)
  {
    return 0;
  }

  if (xdr_is_memstream(a1))
  {

    return xdrmem_getrecord(a1, a2, a3);
  }

  if (!xdr_is_recstream(a1))
  {
    return 0;
  }

  return xdrrec_getrecord(a1, a2, a3);
}

uint64_t cvt6to4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 30)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 12))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 != -65536 && (v3 || (*(a1 + 20) | 0x1000000) == 0x1000000))
  {
    return 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *a2 = 528;
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 4) = *(a1 + 20);
  return 1;
}

uint64_t cvt4to6(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 2)
  {
    return 0;
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *a2 = 7708;
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 16) = -65536;
  *(a2 + 20) = *(a1 + 4);
  return 1;
}

uint64_t gethostaddr(char *a1, int a2, char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (a2 != 30)
  {
    if (a2 == 2)
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (!a2)
    {
      v5 = _newrpclib_rpc_ipmode;
      goto LABEL_7;
    }

    *__error() = 47;
    result = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v5 = 3;
  while (1)
  {
    while (1)
    {
LABEL_7:
      memset(&v16, 0, sizeof(v16));
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v6 = 0;
LABEL_16:
          if (_newrpclib_rpc_v4mapped_ok)
          {
            v16.ai_flags = 2048;
            v6 = 4;
          }

          v7 = 30;
          goto LABEL_21;
        }

        v6 = v5;
        if (v5 == 3)
        {
          goto LABEL_16;
        }

        v6 = v5;
        if (v5 != 4)
        {
          goto LABEL_22;
        }

        v7 = 0;
        goto LABEL_20;
      }

      if (!v5)
      {
        v7 = 2;
LABEL_20:
        v6 = v5;
        goto LABEL_21;
      }

      v6 = v5;
      if (v5 != 1)
      {
        goto LABEL_22;
      }

      v6 = 3;
      v7 = 2;
LABEL_21:
      v16.ai_family = v7;
LABEL_22:
      result = getaddrinfo(a1, 0, &v16, &v15);
      if (result != 2)
      {
        break;
      }

      sleep(1u);
    }

    if (!result)
    {
      break;
    }

    v9 = v5 == v6;
    v5 = v6;
    if (v9)
    {
      goto LABEL_35;
    }
  }

  if (v5 == 4)
  {
    v10 = v15;
    ai_addr = v15->ai_addr;
    if (ai_addr->sa_family == 2)
    {
      v12 = *ai_addr->sa_data;
      v13 = *&ai_addr->sa_data[2];
      *a3 = 7708;
      *(a3 + 1) = v12;
      *(a3 + 12) = 0xFFFF000000000000;
      *(a3 + 4) = 0;
      *(a3 + 20) = v13;
      goto LABEL_32;
    }

    result = 11;
  }

  else
  {
    v10 = v15;
    memcpy(a3, v15->ai_addr, v15->ai_addrlen);
LABEL_32:
    freeaddrinfo(v10);
    result = 0;
  }

LABEL_35:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t open_socket(int a1)
{
  v2 = _newrpclib_rpc_ipmode;
  if (a1 == 17)
  {
    v3 = 2;
  }

  else
  {
    if (a1 != 6)
    {
      *__error() = 43;
      return 0xFFFFFFFFLL;
    }

    v3 = 1;
  }

  do
  {
    if (v2 > 4)
    {
      v5 = 0;
      v4 = v2;
    }

    else
    {
      v4 = dword_2771E557C[v2];
      v5 = 2;
    }

    result = socket(v5, v3, a1);
    if (result != -1)
    {
      break;
    }

    v7 = __error();
    result = 0xFFFFFFFFLL;
    if (v4 == v2)
    {
      break;
    }

    v2 = v4;
  }

  while (*v7 == 47);
  return result;
}

uint64_t recvfrom_and_to(int a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v11 = *a6;
  v30 = *a6;
  memset(v28, 0, sizeof(v28));
  v31[0] = a2;
  v31[1] = a3;
  bzero(a5, v10);
  memset(&v29.msg_namelen, 0, 40);
  if (getsockname(a1, a6, &v30))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      recvfrom_and_to_cold_1();
    }

LABEL_4:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  if (v11 < 0x10)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a6 + 1);
  }

  v29.msg_name = a5;
  v29.msg_namelen = v10;
  v29.msg_iov = v31;
  v29.msg_iovlen = 1;
  v29.msg_control = v28;
  v29.msg_controllen = 32;
  v16 = recvmsg(a1, &v29, a4);
  if (v16 == -1)
  {
    goto LABEL_4;
  }

  v12 = v16;
  bzero(a6, v11);
  if (v29.msg_controllen < 0xC)
  {
    goto LABEL_5;
  }

  msg_control = v29.msg_control;
  if (!v29.msg_control)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v18 = msg_control[1];
    if (v18)
    {
      if (v18 == 41)
      {
        v19 = *msg_control;
        if (msg_control[2] == 46 && v19 == 32)
        {
          if (v11 < 0x1C)
          {
            goto LABEL_5;
          }

          v23 = msg_control[6];
          v22 = msg_control[7];
          v24 = *(msg_control + 2);
          v25 = msg_control[3];
          *a6 = 7708;
          *(a6 + 1) = v15;
          *(a6 + 2) = v25;
          *(a6 + 12) = v24;
          *(a6 + 5) = v23;
LABEL_34:
          search_local_ifaddr_cache(v22, a6, a5);
          goto LABEL_5;
        }
      }

      else
      {
        v19 = *msg_control;
      }

      goto LABEL_26;
    }

    v20 = msg_control[2];
    v19 = *msg_control;
    if (v20 != 26)
    {
      break;
    }

    if (v19 == 24)
    {
      if (v11 < 0xC)
      {
        goto LABEL_5;
      }

      v27 = msg_control[5];
      v22 = msg_control[3];
      *a6 = 528;
      *(a6 + 1) = v15;
      *(a6 + 1) = v27;
      goto LABEL_34;
    }

LABEL_26:
    msg_control = (msg_control + ((v19 + 3) & 0x1FFFFFFFCLL));
    if ((msg_control + 3) > v29.msg_control + v29.msg_controllen)
    {
      goto LABEL_5;
    }
  }

  if (v20 != 7 || v19 != 16)
  {
    goto LABEL_26;
  }

  if (v11 >= 0x10)
  {
    v26 = msg_control[3];
    *a6 = 528;
    *(a6 + 1) = v15;
    *(a6 + 1) = v26;
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unsigned __int8 *search_local_ifaddr_cache(unsigned int a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!pthread_once(&cache_control_init, cache_init))
  {
    v37.tv_sec = 0;
    *&v37.tv_usec = 0;
    gettimeofday(&v37, 0);
    if (v37.tv_sec > if_addr_cache || qword_280A69698 == 0 || qword_280A69688 <= a1)
    {
      pthread_rwlock_wrlock(&cache_rwlock);
      gettimeofday(&v37, 0);
      if (v37.tv_sec > if_addr_cache || !qword_280A69698 || qword_280A69688 <= a1)
      {
        reset_if_addr_cache();
        if (getifaddrs(&qword_280A69698))
        {
          goto LABEL_54;
        }

        v21 = qword_280A69698;
        if (qword_280A69698)
        {
          v22 = 0;
          do
          {
            v23 = if_nametoindex(*(v21 + 8));
            if (v23 > v22)
            {
              v22 = v23;
            }

            v21 = *v21;
          }

          while (v21);
          v24 = v22 + 1;
        }

        else
        {
          v24 = 1;
        }

        v26 = v24;
        v27 = calloc(v24, 0x10uLL);
        qword_280A69690 = v27;
        if (!v27)
        {
LABEL_73:
          reset_if_addr_cache();
          goto LABEL_54;
        }

        qword_280A69688 = v26;
        if (v26)
        {
          do
          {
            *v27 = 0;
            v27[1] = v27;
            v27 += 2;
            --v26;
          }

          while (v26);
        }

        v28 = qword_280A69698;
        if (qword_280A69698)
        {
          v29 = 0;
          do
          {
            v30 = if_nametoindex(*(v28 + 8));
            if (*(*(v28 + 24) + 1) == 2)
            {
              v31 = *(v28 + 40);
              if (v31)
              {
                if ((~*(v28 + 16) & 3) == 0)
                {
                  v32 = v30;
                  v33 = *(v31 + 4);
                  v34 = calloc(1uLL, 0x18uLL);
                  if (!v34)
                  {
                    goto LABEL_73;
                  }

                  if (v33 == -343)
                  {
                    v29 = 1;
                  }

                  v35 = *(v28 + 24);
                  *v34 = *(v28 + 40);
                  v34[1] = v35;
                  v34[2] = 0;
                  **(qword_280A69690 + 16 * v32 + 8) = v34;
                  *(qword_280A69690 + 16 * v32 + 8) = v34 + 2;
                }
              }
            }

            v28 = *v28;
          }

          while (v28);
          v36 = 3;
          if (!v29)
          {
            v36 = 30;
          }
        }

        else
        {
          v36 = 30;
        }

        if_addr_cache = v37;
        *&if_addr_cache = v37.tv_sec + v36;
      }

      pthread_rwlock_unlock(&cache_rwlock);
    }

    pthread_rwlock_rdlock(&cache_rwlock);
    v8 = a2[1];
    if (v8 == 30)
    {
      if (a2[8] == 255)
      {
LABEL_16:
        v9 = qword_280A69698;
        if (!qword_280A69698)
        {
          goto LABEL_54;
        }

        v10 = 0;
        v11 = 0;
        v38 = 0;
        while (1)
        {
          if (if_nametoindex(*(v9 + 8)) == a1)
          {
            v12 = *(v9 + 24);
            v13 = v12[1];
            if (v13 == a2[1])
            {
              v14 = *v12;
              if (v14 == *a2)
              {
                if (v13 == 30)
                {
                  if (a2[8] != 255)
                  {
                    goto LABEL_29;
                  }
                }

                else if (v13 != 2 || *(a2 + 1) >> 28 != 14)
                {
LABEL_29:
                  if ((*(v9 + 16) & 2) != 0)
                  {
                    v15 = *(v9 + 40);
                    v16 = v13 != 2 || v15 == 0;
                    if (!v16 && compare_sa(v15, a2, 0, 0))
                    {
                      goto LABEL_38;
                    }
                  }

                  goto LABEL_35;
                }

                if (compare_sa(a3, *(v9 + 24), *(v9 + 32), &v38) && v38 > v11)
                {
                  v11 = v38;
                  v10 = v12;
                }
              }
            }
          }

LABEL_35:
          v9 = *v9;
          if (!v9)
          {
            if (!v10)
            {
              goto LABEL_54;
            }

            v14 = *a2;
            v12 = v10;
LABEL_38:
            v17 = v14;
            v18 = a2;
            v19 = v12;
LABEL_53:
            memcpy(v18, v19, v17);
            goto LABEL_54;
          }
        }
      }
    }

    else if (v8 == 2 && *(a2 + 1) >> 28 == 14)
    {
      goto LABEL_16;
    }

    if (qword_280A69688 > a1)
    {
      for (i = *(qword_280A69690 + 16 * a1); i; i = *(i + 16))
      {
        if (compare_sa(a2, *i, 0, 0))
        {
          v19 = *(i + 8);
          v17 = *a2;
          v18 = a2;
          goto LABEL_53;
        }
      }
    }

LABEL_54:
    pthread_rwlock_unlock(&cache_rwlock);
  }

  return a2;
}