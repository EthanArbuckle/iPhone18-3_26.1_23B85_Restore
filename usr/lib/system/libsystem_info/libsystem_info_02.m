int yp_get_default_domain(char **a1)
{
  *a1 = 0;
  if (!_yp_domain && getdomainname(&_yp_domain, 256) < 0)
  {
    return 12;
  }

  result = 0;
  *a1 = &_yp_domain;
  return result;
}

int yp_maplist(const char *a1, ypmaplist **a2)
{
  v8 = 0;
  v9 = a1;
  if (_yp_dobind(a1, &v8))
  {
    return 3;
  }

  v3 = 0;
  while ((**(*(v8 + 13) + 8))())
  {
    if (v3)
    {
      clnt_perror(*(v8 + 13), "yp_maplist: clnt_call");
    }

    if (yp_maplist_proto)
    {
      v4 = -1;
    }

    else
    {
      v4 = -2;
    }

    yp_maplist_proto ^= 1u;
    v5 = v9;
    *(v8 + 15) = v4;
    --v3;
    if (_yp_dobind(v5, &v8))
    {
      return 3;
    }
  }

  v7 = v8;
  *a2 = 0;
  _yp_unbind(v7);
  return ypprot_err(0);
}

int yp_master(const char *a1, const char *a2, char **a3)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  v6 = strlen(a1);
  v7 = 1;
  if (a2)
  {
    if (v6 <= 0x40)
    {
      if (*a2)
      {
        v8 = strlen(a2);
        if (a3)
        {
          if (v8 <= 0x40)
          {
            v15 = 0;
            if (_yp_dobind(a1, &v15))
            {
              return 3;
            }

            else
            {
              for (i = 0; ; --i)
              {
                *v13 = 0;
                __s1 = 0;
                if (!(**(*(v15 + 13) + 8))())
                {
                  break;
                }

                if (i)
                {
                  clnt_perror(*(v15 + 13), "yp_master: clnt_call");
                }

                if (yp_master_proto)
                {
                  v11 = -1;
                }

                else
                {
                  v11 = -2;
                }

                yp_master_proto ^= 1u;
                *(v15 + 15) = v11;
                v7 = 3;
                if (_yp_dobind(a1, &v15))
                {
                  return v7;
                }
              }

              v7 = ypprot_err(v13[0]);
              if (!v7)
              {
                v12 = strdup(__s1);
                *a3 = v12;
                if (v12)
                {
                  v7 = 0;
                }

                else
                {
                  v7 = 7;
                }
              }

              xdr_free(xdr_ypresp_master, v13);
              _yp_unbind(v15);
            }
          }
        }
      }
    }
  }

  return v7;
}

int yp_order(const char *a1, const char *a2, int *a3)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  v6 = strlen(a1);
  v7 = 1;
  if (a2)
  {
    if (v6 <= 0x40)
    {
      if (*a2)
      {
        v8 = strlen(a2);
        if (a3)
        {
          if (v8 <= 0x40)
          {
            v14 = 0;
            if (_yp_dobind(a1, &v14))
            {
              return 3;
            }

            else
            {
              for (i = 0; ; --i)
              {
                *v13 = 0;
                v11 = (**(*(v14 + 13) + 8))(*(v14 + 13), 10);
                if (!v11)
                {
                  break;
                }

                if (v11 == 10)
                {
                  v7 = 6;
                  goto LABEL_24;
                }

                if (i)
                {
                  clnt_perror(*(v14 + 13), "yp_order: clnt_call");
                }

                if (yp_order_proto)
                {
                  v12 = -1;
                }

                else
                {
                  v12 = -2;
                }

                yp_order_proto ^= 1u;
                *(v14 + 15) = v12;
                v7 = 3;
                if (_yp_dobind(a1, &v14))
                {
                  return v7;
                }
              }

              *a3 = v13[1];
              xdr_free(xdr_ypresp_order, v13);
              v7 = ypprot_err(v13[0]);
LABEL_24:
              _yp_unbind(v14);
            }
          }
        }
      }
    }
  }

  return v7;
}

char *__cdecl yperr_string(int a1)
{
  if (a1 < 0x11)
  {
    return off_1E75062A0[a1];
  }

  v1 = yperr_string_err;
  snprintf(yperr_string_err, 0x50uLL, "YP unknown error %d\n", a1);
  return v1;
}

int yp_match(const char *a1, const char *a2, const char *a3, int a4, char **a5, int *a6)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  v12 = strlen(a1);
  v13 = 1;
  if (a2)
  {
    if (v12 <= 0x40)
    {
      if (*a2)
      {
        v14 = strlen(a2);
        if (a4)
        {
          if (a3 && v14 <= 0x40)
          {
            v26 = 0;
            v21 = 0;
            *a5 = 0;
            *a6 = 0;
            if (_yp_dobind(a1, &v26))
            {
              return 3;
            }

            else
            {
              for (i = 0; ; --i)
              {
                v20[0] = a1;
                v20[1] = a2;
                v22 = a3;
                *v23 = 0;
                LODWORD(v21) = a4;
                v24 = 0;
                __src = 0;
                if (!(**(*(v26 + 13) + 8))(*(v26 + 13), 3, xdr_ypreq_key, v20))
                {
                  break;
                }

                if (i)
                {
                  clnt_perror(*(v26 + 13), "yp_match: clnt_call");
                }

                if (yp_match_proto)
                {
                  v17 = -1;
                }

                else
                {
                  v17 = -2;
                }

                yp_match_proto ^= 1u;
                *(v26 + 15) = v17;
                v13 = 3;
                if (_yp_dobind(a1, &v26))
                {
                  return v13;
                }
              }

              v13 = ypprot_err(v23[0]);
              if (!v13)
              {
                v18 = v24;
                *a6 = v24;
                v19 = malloc_type_malloc(v18 + 1, 0x84863E7BuLL);
                *a5 = v19;
                if (v19)
                {
                  memcpy(v19, __src, *a6);
                  v13 = 0;
                  (*a5)[*a6] = 0;
                }

                else
                {
                  v13 = 6;
                }
              }

              xdr_free(xdr_ypresp_val, v23);
              _yp_unbind(v26);
            }
          }
        }
      }
    }
  }

  return v13;
}

int yp_next(const char *a1, const char *a2, const char *a3, int a4, char **a5, int *a6, char **a7, int *a8)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  v16 = strlen(a1);
  v17 = 1;
  if (a2 && v16 <= 0x40 && *a2 && strlen(a2) <= 0x40)
  {
    v26 = 0;
    v25[0] = 0;
    *a7 = 0;
    *a5 = 0;
    *a8 = 0;
    *a6 = 0;
    if (_yp_dobind(a1, v25))
    {
      return 3;
    }

    else
    {
      v19 = 0;
      v17 = 3;
      while (1)
      {
        v25[1] = a1;
        v25[2] = a2;
        v27 = a3;
        LODWORD(v26) = a4;
        *v28 = 0u;
        *__src = 0u;
        v30 = 0;
        if (!(**(*(v25[0] + 13) + 8))())
        {
          break;
        }

        if (v19)
        {
          clnt_perror(*(v25[0] + 13), "yp_next: clnt_call");
        }

        v20 = -2;
        if (yp_next_proto)
        {
          v20 = -1;
        }

        yp_next_proto ^= 1u;
        *(v25[0] + 15) = v20;
        --v19;
        if (_yp_dobind(a1, v25))
        {
          return v17;
        }
      }

      v17 = ypprot_err(v28[0]);
      if (!v17)
      {
        v21 = v28[2];
        *a6 = v28[2];
        v22 = malloc_type_malloc(v21 + 1, 0x728CBC7DuLL);
        *a5 = v22;
        if (v22)
        {
          memcpy(v22, __src[0], *a6);
          v17 = 0;
          (*a5)[*a6] = 0;
        }

        else
        {
          v17 = 7;
        }

        v23 = SLODWORD(__src[1]);
        *a8 = __src[1];
        v24 = malloc_type_malloc(v23 + 1, 0xD53E8EEDuLL);
        *a7 = v24;
        if (v24)
        {
          memcpy(v24, v30, *a8);
          (*a7)[*a8] = 0;
        }

        else
        {
          v17 = 7;
        }
      }

      xdr_free(xdr_ypresp_key_val, v28);
      _yp_unbind(v25[0]);
    }
  }

  return v17;
}

int xdr_x_passwd(XDR *a1, x_passwd *a2)
{
  result = xdr_string(a1, &a2->pw_name, 0xFFFFFFFF);
  if (result)
  {
    result = xdr_string(a1, &a2->pw_passwd, 0xFFFFFFFF);
    if (result)
    {
      result = xdr_int(a1, &a2->pw_uid);
      if (result)
      {
        result = xdr_int(a1, &a2->pw_gid);
        if (result)
        {
          result = xdr_string(a1, &a2->pw_gecos, 0xFFFFFFFF);
          if (result)
          {
            result = xdr_string(a1, &a2->pw_dir, 0xFFFFFFFF);
            if (result)
            {
              return xdr_string(a1, &a2->pw_shell, 0xFFFFFFFF) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

int xdr_yppasswd(XDR *a1, yppasswd *a2)
{
  result = xdr_string(a1, &a2->oldpass, 0xFFFFFFFF);
  if (result)
  {

    return xdr_x_passwd(a1, &a2->newpw);
  }

  return result;
}

int ypprot_err(unsigned int a1)
{
  if (a1 + 8 > 0xA)
  {
    return 6;
  }

  else
  {
    return dword_19A0D6C58[a1 + 8];
  }
}

AUTH *authnone_create(void)
{
  v0 = authnone_private;
  if (!authnone_private)
  {
    v1 = malloc_type_calloc(1uLL, 0x60uLL, 0x103004071B1A283uLL);
    v0 = v1;
    if (!v1)
    {
      return v0;
    }

    authnone_private = v1;
  }

  if (!*(v0 + 92))
  {
    memset(&v6, 0, sizeof(v6));
    v2 = *&_null_auth.oa_flavor;
    *(v0 + 24) = *&_null_auth.oa_flavor;
    v3 = *&_null_auth.oa_length;
    *(v0 + 40) = *&_null_auth.oa_length;
    *v0 = v2;
    *(v0 + 16) = v3;
    *(v0 + 56) = ops;
    xdrmem_create(&v6, (v0 + 72), 0x14u, XDR_ENCODE);
    xdr_opaque_auth(&v6, v0);
    xdr_opaque_auth(&v6, v0 + 24);
    *(v0 + 92) = (v6.x_ops->x_getpostn)(&v6);
    x_destroy = v6.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v6);
    }
  }

  return v0;
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

AUTH *__cdecl authunix_create(char *a1, int a2, int a3, int a4, int *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x1030040C13B3F82uLL);
  if (!v10)
  {
    fwrite("authunix_create: out of memory\n", 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_10;
  }

  v11 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x1010040138B38ECuLL);
  if (!v11)
  {
    v19 = v10;
LABEL_9:
    free(v19);
    fwrite("authunix_create: out of memory\n", 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v10 = 0;
    goto LABEL_10;
  }

  v12 = v11;
  memset(&v24, 0, 32);
  v23.tv_sec = 0;
  *&v23.tv_usec = 0;
  memset(&v22, 0, sizeof(v22));
  *(v10 + 7) = auth_unix_ops;
  *(v10 + 8) = v11;
  v13 = *&_null_auth.oa_length;
  *(v11 + 5) = *&_null_auth.oa_length;
  v14 = *&_null_auth.oa_flavor;
  *(v11 + 24) = *&_null_auth.oa_flavor;
  *(v10 + 24) = v14;
  *(v10 + 5) = v13;
  *(v11 + 12) = 0;
  gettimeofday(&v23, 0);
  v24.aup_time = v23.tv_sec;
  v24.aup_machname = a1;
  v24.aup_uid = a2;
  v24.aup_gid = a3;
  v24.aup_len = a4;
  v24.aup_gids = a5;
  xdrmem_create(&v22, __src, 0x190u, XDR_ENCODE);
  if (!xdr_authunix_parms(&v22, &v24))
  {
    abort();
  }

  v15 = (v22.x_ops->x_getpostn)(&v22);
  *(v12 + 4) = v15;
  *v12 = 1;
  v16 = v15;
  v17 = malloc_type_calloc(1uLL, v15, 0x67FECABEuLL);
  v12[1] = v17;
  if (!v17)
  {
    free(v10);
    v19 = v12;
    goto LABEL_9;
  }

  memmove(v17, __src, v16);
  v18 = v12[2];
  *v10 = *v12;
  *(v10 + 2) = v18;
  marshal_new_auth(v10);
LABEL_10:
  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

AUTH *authunix_create_default(void)
{
  v8 = *MEMORY[0x1E69E9840];
  if (gethostname(v7, 0xFFuLL) == -1 || (v7[255] = 0, v0 = geteuid(), v1 = getegid(), v2 = getgroups(16, v6), v2 < 0))
  {
    abort();
  }

  if (v2 >= maxgrplist)
  {
    v3 = maxgrplist;
  }

  else
  {
    v3 = v2;
  }

  result = authunix_create(v7, v0, v1, v3, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t authunix_validate(uint64_t a1, uint64_t a2)
{
  if (*a2 == 2)
  {
    v10 = v2;
    v11 = v3;
    memset(&v9, 0, sizeof(v9));
    v5 = *(a1 + 64);
    xdrmem_create(&v9, *(a2 + 8), *(a2 + 16), XDR_DECODE);
    v6 = *(v5 + 4);
    if (v6)
    {
      free(v6);
      *(v5 + 4) = 0;
    }

    if (xdr_opaque_auth(&v9, v5 + 24))
    {
      v5 = (v5 + 24);
    }

    else
    {
      v9.x_op = XDR_FREE;
      xdr_opaque_auth(&v9, v5 + 24);
      *(v5 + 4) = 0;
    }

    v7 = *v5;
    *(a1 + 16) = *(v5 + 2);
    *a1 = v7;
    marshal_new_auth(a1);
  }

  return 1;
}

uint64_t authunix_refresh(uint64_t a1)
{
  v1 = *(a1 + 64);
  memset(&v10, 0, 32);
  memset(&v8, 0, sizeof(v8));
  v2 = *(v1 + 1);
  if (*(a1 + 8) == v2)
  {
    return 0;
  }

  ++*(v1 + 12);
  v10.aup_machname = 0;
  v10.aup_gids = 0;
  xdrmem_create(&v8, v2, *(v1 + 4), XDR_DECODE);
  if (xdr_authunix_parms(&v8, &v10))
  {
    v9.tv_sec = 0;
    *&v9.tv_usec = 0;
    gettimeofday(&v9, 0);
    v10.aup_time = v9.tv_sec;
    v8.x_op = XDR_ENCODE;
    (v8.x_ops->x_setpostn)(&v8, 0);
    v4 = xdr_authunix_parms(&v8, &v10);
    if (v4)
    {
      v5 = *v1;
      *(a1 + 16) = *(v1 + 2);
      *a1 = v5;
      marshal_new_auth(a1);
    }
  }

  else
  {
    v4 = 0;
  }

  v8.x_op = XDR_FREE;
  xdr_authunix_parms(&v8, &v10);
  x_destroy = v8.x_ops->x_destroy;
  if (x_destroy)
  {
    (x_destroy)(&v8);
  }

  return v4;
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

void marshal_new_auth(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  v2 = *(a1 + 64);
  xdrmem_create(&v4, (v2 + 52), 0x190u, XDR_ENCODE);
  if (xdr_opaque_auth(&v4, a1) && xdr_opaque_auth(&v4, a1 + 24))
  {
    *(v2 + 452) = (v4.x_ops->x_getpostn)(&v4);
  }

  else
  {
    perror("auth_none.c - Fatal marshalling problem");
  }

  x_destroy = v4.x_ops->x_destroy;
  if (x_destroy)
  {
    (x_destroy)(&v4);
  }
}

_BYTE *muser_group_byname(uint64_t a1, char *__s1)
{
  if (*__s1 == 95 && strcmp(__s1, "_analyticsusers") && strcmp(__s1, "_accessory_mobile_share"))
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "groupname");
  xpc_dictionary_set_string(v5, "query", __s1);
  v6 = _muser_call("getgrnam", v5);
  if (v6)
  {
    v7 = v6;
    group = _muser_extract_group(a1, v6);
    xpc_release(v7);
  }

  else
  {
    group = 0;
  }

  xpc_release(v5);
  return group;
}

const char *muser_is_valid(const char **a1, const char ***a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *a1;
      if (*a1)
      {
        v4 = *a2;
        if (*a2 && *v4)
        {
          return (strcmp(result, *v4) == 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _muser_call(const char *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _muser_xpc_pipe(0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_string(a2, "procname", a1);
    xpc_dictionary_set_uint64(a2, "version", 1uLL);
    v6 = 0;
    v7 = MEMORY[0x1E69E9C10];
    while (1)
    {
      v8 = xpc_pipe_routine();
      v9 = v8;
      if (v8 != 32 && v8 != 35)
      {
        break;
      }

      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _muser_call_cold_2(v9);
        }

        break;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        _muser_call_cold_1(buf, v9, &v13);
      }

      xpc_release(v5);
      v6 = 1;
      v5 = _muser_xpc_pipe(1);
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    xpc_release(v5);
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

_BYTE *_muser_extract_user(uint64_t a1, xpc_object_t xdict)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x6000000000;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 3;
  v28 = "";
  v29 = "*";
  v30 = 0;
  v31 = 0;
  v32 = "";
  v33 = "";
  v34 = "/var/empty";
  v35 = "/usr/bin/false";
  v36 = 0;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___muser_extract_user_block_invoke;
  applier[3] = &unk_1E7506370;
  applier[4] = &v25;
  applier[5] = &v21;
  xpc_dictionary_apply(xdict, applier);
  v10 = 0;
  if (!*(v22 + 6))
  {
    v18 = v26[10];
    v19 = v26[11];
    v17 = *(v26 + 4);
    v16 = *(v26 + 3);
    v14 = *(v26 + 10);
    v15 = *(v26 + 11);
    v12 = v26[3];
    v13 = v26[4];
    v10 = LI_ils_create("L4488ss44LssssL", v3, v4, v5, v6, v7, v8, v9, a1);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v10;
}

uint64_t _muser_fork_child()
{
  if (__muser_pipe)
  {
    xpc_pipe_invalidate();
    __muser_pipe = 0;
  }

  return pthread_mutex_unlock(&mutex);
}

uint64_t ___muser_extract_user_block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (!__s1)
  {
    return 1;
  }

  if (!strcmp(__s1, "pw_name"))
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    if (!string_ptr)
    {
      return 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = string_ptr;
    goto LABEL_12;
  }

  if (strcmp(__s1, "pw_passwd"))
  {
    if (!strcmp(__s1, "pw_uid"))
    {
      if (MEMORY[0x19A8FCCB0](a3) != MEMORY[0x1E69E9EB0])
      {
        return 1;
      }

      *(*(*(a1 + 32) + 8) + 40) = xpc_int64_get_value(a3);
    }

    else
    {
      if (strcmp(__s1, "pw_gid"))
      {
        if (!strcmp(__s1, "pw_dir"))
        {
          v9 = xpc_string_get_string_ptr(a3);
          if (v9)
          {
            *(*(*(a1 + 32) + 8) + 72) = v9;
          }
        }

        else if (!strcmp(__s1, "pw_shell"))
        {
          v6 = xpc_string_get_string_ptr(a3);
          if (v6)
          {
            *(*(*(a1 + 32) + 8) + 80) = v6;
          }
        }

        return 1;
      }

      if (MEMORY[0x19A8FCCB0](a3) != MEMORY[0x1E69E9EB0])
      {
        return 1;
      }

      *(*(*(a1 + 32) + 8) + 44) = xpc_int64_get_value(a3);
    }

LABEL_12:
    --*(*(*(a1 + 40) + 8) + 24);
    return 1;
  }

  v8 = xpc_string_get_string_ptr(a3);
  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 32) = v8;
  }

  return 1;
}

_BYTE *_muser_extract_group(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3800000000;
  v26 = 0;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2;
  v24 = "";
  v25 = "*";
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___muser_extract_group_block_invoke;
  applier[3] = &unk_1E7506398;
  applier[4] = &v21;
  applier[5] = &v17;
  xpc_dictionary_apply(xdict, applier);
  v10 = 0;
  if (!*(v18 + 6))
  {
    v14 = *(v22 + 10);
    v15 = v22[6];
    v12 = v22[3];
    v13 = v22[4];
    v10 = LI_ils_create("L4488ss4*", v3, v4, v5, v6, v7, v8, v9, a1);
    free(v22[6]);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

uint64_t ___muser_extract_group_block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (!__s1)
  {
    return 1;
  }

  if (!strcmp(__s1, "gr_name"))
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    if (!string_ptr)
    {
      return 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = string_ptr;
LABEL_14:
    --*(*(*(a1 + 40) + 8) + 24);
    return 1;
  }

  if (!strcmp(__s1, "gr_gid"))
  {
    if (MEMORY[0x19A8FCCB0](a3) != MEMORY[0x1E69E9EB0])
    {
      return 1;
    }

    *(*(*(a1 + 32) + 8) + 40) = xpc_int64_get_value(a3);
    goto LABEL_14;
  }

  if (!strcmp(__s1, "gr_members") && MEMORY[0x19A8FCCB0](a3) == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(a3);
    *(*(*(a1 + 32) + 8) + 48) = malloc_type_malloc(8 * count + 8, 0x10040436913F5uLL);
    *(*(*(*(a1 + 32) + 8) + 48) + 8 * count) = 0;
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        *(*(*(*(a1 + 32) + 8) + 48) + 8 * i) = xpc_array_get_string(a3, i);
      }
    }
  }

  return 1;
}

BOOL ___muser_extract_grouplist_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x19A8FCCB0](a3);
  v7 = MEMORY[0x1E69E9EB0];
  if (v6 == MEMORY[0x1E69E9EB0])
  {
    *(*(*(*(a1 + 32) + 8) + 24) + 4 * a2) = xpc_int64_get_value(a3);
  }

  else
  {
    free(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return v6 == v7;
}

int bindresvport_sa(int a1, sockaddr *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0;
  v21 = 0u;
  v17 = 0;
  if (a2)
  {
    v3 = a2;
    p_sa_family = &a2->sa_family;
    sa_family = a2->sa_family;
  }

  else
  {
    v17 = 128;
    if (getsockname(a1, &v20, &v17) == -1)
    {
LABEL_13:
      v11 = -1;
      goto LABEL_14;
    }

    p_sa_family = &v20.sa_family;
    sa_family = v20.sa_family;
    v3 = &v20;
    __memset_chk();
  }

  if (sa_family == 2)
  {
    v7 = 0;
    v6 = 19;
    v8 = 16;
    goto LABEL_9;
  }

  if (sa_family != 30)
  {
    *__error() = 46;
    goto LABEL_13;
  }

  v6 = 14;
  v7 = 41;
  v8 = 28;
LABEL_9:
  v17 = v8;
  v18 = 2;
  v9 = *v3->sa_data;
  *p_sa_family = sa_family;
  v3->sa_len = v8;
  if (v9)
  {
    v10 = bind(a1, v3, v8);
  }

  else
  {
    v16 = 4;
    v10 = getsockopt(a1, v7, v6, &v19, &v16);
    if ((v10 & 0x80000000) == 0)
    {
      v10 = setsockopt(a1, v7, v6, &v18, 4u);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = bind(a1, v3, v17);
        v14 = *__error();
        if (v11)
        {
          if ((setsockopt(a1, v7, v6, &v19, 4u) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          v15 = __error();
        }

        else
        {
          if (v3 == &v20 || (getsockname(a1, v3, &v17) & 0x80000000) == 0)
          {
            v11 = 0;
            goto LABEL_14;
          }

          v15 = __error();
          v11 = 0;
        }

        *v15 = v14;
        goto LABEL_14;
      }
    }
  }

  v11 = v10;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CLIENT *__cdecl clnt_create(char *a1, unsigned int a2, unsigned int a3, char *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  result = gethostbyname(a1);
  if (!result)
  {
    rpc_createerr.cf_stat = RPC_UNKNOWNHOST;
    goto LABEL_14;
  }

  if (LODWORD(result->cl_private) != 2)
  {
    result = 0;
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
    v11 = 47;
LABEL_13:
    rpc_createerr.cf_error.ru.RE_errno = v11;
    goto LABEL_14;
  }

  *&v15.sin_len = 512;
  *v15.sin_zero = 0;
  v8 = *result[1].cl_auth;
  cl_private_high = SHIDWORD(result->cl_private);
  __memmove_chk();
  result = getprotobyname(a4);
  if (!result)
  {
    v12 = RPC_UNKNOWNPROTO;
LABEL_12:
    rpc_createerr.cf_stat = v12;
    v11 = 46;
    goto LABEL_13;
  }

  v14 = -1;
  cl_private = result->cl_private;
  if (cl_private == 6)
  {
    result = clnttcp_create(&v15, a2, a3, &v14, 0, 0);
    goto LABEL_14;
  }

  if (cl_private != 17)
  {
    result = 0;
    v12 = RPC_SYSTEMERROR;
    goto LABEL_12;
  }

  v17.tv_sec = 5;
  *&v17.tv_usec = 0;
  result = clntudp_create(&v15, a2, a3, v17, &v14);
LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

char *__cdecl clnt_sperror(CLIENT *a1, char *a2)
{
  v4 = buf;
  if (!buf)
  {
    v4 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
    buf = v4;
    if (!v4)
    {
      return v4;
    }
  }

  v27 = 0;
  *__errnum = 0;
  (a1->cl_ops->cl_geterr)(a1, __errnum);
  v5 = "(null)";
  if (a2)
  {
    v5 = a2;
  }

  v6 = snprintf(v4, 0x100uLL, "%s: ", v5);
  if (v6 > 0xFF)
  {
    return v4;
  }

  v7 = &v4[v6];
  v8 = 256 - v6;
  v9 = &off_1E75063E8;
  v10 = 18;
  v11 = "RPC: (unknown error code)";
  while (*(v9 - 2) != __errnum[0])
  {
    v9 += 2;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  v11 = *v9;
LABEL_11:
  v12 = snprintf(&v4[v6], v8, "%s", v11);
  if (v12 < 0 || v12 >= v8)
  {
    return v4;
  }

  v13 = &v7[v12];
  v14 = v8 - v12;
  if (__errnum[0] > 7)
  {
    if ((__errnum[0] - 10) < 8 || __errnum[0] == 8)
    {
      goto LABEL_35;
    }

    if (__errnum[0] != 9)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (__errnum[0] <= 2)
  {
    if (__errnum[0] >= 3u)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (__errnum[0] <= 5)
  {
    if ((__errnum[0] - 3) < 2)
    {
      strerror(__errnum[1]);
      v15 = snprintf(v13, v14, "; errno = %s");
LABEL_32:
      if ((v15 & 0x80000000) == 0)
      {
        v19 = __OFSUB__(v14, v15);
        v14 -= v15;
        if (!((v14 < 0) ^ v19 | (v14 == 0)))
        {
          v13 += v15;
          goto LABEL_35;
        }
      }

      return v4;
    }

    if (__errnum[0] != 5)
    {
LABEL_31:
      v15 = snprintf(v13, v14, "; s1 = %u, s2 = %u");
      goto LABEL_32;
    }

LABEL_35:
    snprintf(v13, v14, "\n");
    return v4;
  }

  if (__errnum[0] == 6)
  {
LABEL_29:
    v15 = snprintf(v13, v14, "; low version = %u, high version = %u");
    goto LABEL_32;
  }

  v16 = &off_1E7506508;
  v17 = 8;
  while (*(v16 - 2) != __errnum[1])
  {
    v16 += 2;
    if (!--v17)
    {
      v18 = 0;
      goto LABEL_38;
    }
  }

  v18 = *v16;
LABEL_38:
  v21 = snprintf(v13, v14, "; why = ");
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v14 - v21;
    if (v14 > v21)
    {
      v23 = v14 - v21;
      v24 = &v13[v21];
      if (v18)
      {
        v25 = snprintf(v24, v22, "%s", v18);
        if (v25 < 0 || v23 <= v25)
        {
          return v4;
        }
      }

      else
      {
        v25 = snprintf(v24, v22, "(unknown authentication error - %d)", __errnum[1]);
        if (v25 < 0 || v25 >= v23)
        {
          return v4;
        }
      }

      v13 = &v24[v25];
      v14 = v23 - v25;
      goto LABEL_35;
    }
  }

  return v4;
}

char *__cdecl clnt_sperrno(clnt_stat a1)
{
  v2 = &off_1E75063E8;
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

void clnt_perror(CLIENT *a1, char *a2)
{
  v2 = *MEMORY[0x1E69E9848];
  v3 = clnt_sperror(a1, a2);

  fputs(v3, v2);
}

void clnt_perrno(clnt_stat a1)
{
  v2 = &off_1E75063E8;
  v3 = 18;
  v4 = "RPC: (unknown error code)";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      goto LABEL_4;
    }
  }

  v4 = *v2;
LABEL_4:
  fputs(v4, *MEMORY[0x1E69E9848]);
}

char *__cdecl clnt_spcreateerror(char *a1)
{
  v2 = buf;
  if (!buf)
  {
    v2 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
    buf = v2;
    if (!v2)
    {
      return v2;
    }
  }

  v3 = "(null)";
  if (a1)
  {
    v3 = a1;
  }

  v4 = snprintf(v2, 0x100uLL, "%s: ", v3);
  if (v4 > 0xFF)
  {
    return v2;
  }

  v6 = &v2[v4];
  v7 = 256 - v4;
  v8 = &off_1E75063E8;
  v9 = 18;
  v10 = "RPC: (unknown error code)";
  while (*(v8 - 2) != rpc_createerr.cf_stat)
  {
    v8 += 2;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  v10 = *v8;
LABEL_12:
  v11 = snprintf(&v2[v4], v7, "%s", v10);
  if (v11 < 0 || v11 >= v7)
  {
    return v2;
  }

  v12 = &v6[v11];
  v13 = v7 - v11;
  if (rpc_createerr.cf_stat == RPC_SYSTEMERROR)
  {
    v19 = snprintf(v12, v13, " - ");
    if (v19 < 0)
    {
      return v2;
    }

    v20 = v13 - v19;
    if (v13 <= v19)
    {
      return v2;
    }

    v17 = &v12[v19];
    v15 = v20;
    if (rpc_createerr.cf_error.ru.RE_errno >= 1 && rpc_createerr.cf_error.ru.RE_errno < *MEMORY[0x1E69E9940])
    {
      v21 = strerror(rpc_createerr.cf_error.ru.RE_errno);
      v22 = snprintf(v17, v15, "%s", v21);
      if ((v22 & 0x80000000) == 0 && v15 > v22)
      {
        goto LABEL_34;
      }

      return v2;
    }

    v22 = snprintf(v17, v20, "Error %d");
  }

  else
  {
    if (rpc_createerr.cf_stat != RPC_PMAPFAILURE)
    {
LABEL_35:
      snprintf(v12, v13, "\n");
      return v2;
    }

    v14 = snprintf(v12, v13, " - ");
    if (v14 < 0 || v13 <= v14)
    {
      return v2;
    }

    v15 = v13 - v14;
    v16 = &off_1E75063E8;
    v17 = &v12[v14];
    v18 = 18;
    while (*(v16 - 2) != rpc_createerr.cf_error.re_status)
    {
      v16 += 2;
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v23 = *v16;
LABEL_30:
    v22 = snprintf(v17, v15, "%s");
  }

  if ((v22 & 0x80000000) == 0 && v22 < v15)
  {
LABEL_34:
    v12 = &v17[v22];
    v13 = v15 - v22;
    goto LABEL_35;
  }

  return v2;
}

void clnt_pcreateerror(char *a1)
{
  v1 = *MEMORY[0x1E69E9848];
  v2 = clnt_spcreateerror(a1);

  fputs(v2, v1);
}

CLIENT *__cdecl clntraw_create(unsigned int a1, unsigned int a2)
{
  v4 = clntraw_private;
  if (!clntraw_private)
  {
    v5 = malloc_type_calloc(1uLL, 0x22C8uLL, 0x10F0040E0640BEDuLL);
    v4 = v5;
    if (!v5)
    {
      return v4;
    }

    clntraw_private = v5;
  }

  v8.rm_xid = 0;
  memset(&v8.ru.RM_rmb.ru, 0, 56);
  *&v8.rm_direction = 0x200000000;
  *(&v8.ru.RM_rmb.rp_stat + 1) = __PAIR64__(a2, a1);
  xdrmem_create((v4 + 24), (v4 + 8872), 0x18u, XDR_ENCODE);
  if (!xdr_callhdr((v4 + 24), &v8))
  {
    perror("clnt_raw.c - Fatal header serialization error.");
  }

  *(v4 + 8896) = (*(*(v4 + 32) + 32))(v4 + 24);
  v6 = *(*(v4 + 32) + 56);
  if (v6)
  {
    v6(v4 + 24);
  }

  xdrmem_create((v4 + 24), (v4 + 72), 0x2260u, XDR_FREE);
  *(v4 + 8) = client_ops;
  *v4 = authnone_create();
  return v4;
}

uint64_t clntraw_call(uint64_t a1, int a2, unsigned int (*a3)(uint64_t, uint64_t, void), uint64_t a4, char *a5, char *a6)
{
  v17 = a2;
  v6 = clntraw_private;
  if (!clntraw_private)
  {
    return 16;
  }

  memset(&v16, 0, sizeof(v16));
  *&v15.re_status = 0;
  v15.ru.RE_vers.high = 0;
  while (1)
  {
    *(v6 + 24) = 0;
    (*(*(v6 + 32) + 40))(v6 + 24, 0);
    ++*(v6 + 8872);
    if (!(*(*(v6 + 32) + 24))(v6 + 24, v6 + 8872, *(v6 + 8896)) || !(*(*(v6 + 32) + 8))(v6 + 24, &v17) || !(*(*(*a1 + 56) + 8))() || !a3(v6 + 24, a4, 0))
    {
      return 1;
    }

    (*(*(v6 + 32) + 32))(v6 + 24);
    svc_getreq(1);
    *(v6 + 24) = 1;
    (*(*(v6 + 32) + 40))(v6 + 24, 0);
    v16.ru.RM_rmb.ru.RP_ar.ar_verf = _null_auth;
    v16.ru.RM_rmb.ru.RP_ar.ru.AR_results.where = a6;
    v16.ru.RM_cmb.cb_verf.oa_base = a5;
    if (!xdr_replymsg((v6 + 24), &v16))
    {
      return 2;
    }

    _seterr_reply(&v16, &v15);
    re_status = v15.re_status;
    v13 = *(*a1 + 56);
    if (v15.re_status == RPC_SUCCESS)
    {
      break;
    }

    if (!(*(v13 + 24))())
    {
      return re_status;
    }
  }

  re_status = 7;
  if ((*(v13 + 16))())
  {
    if ((*(*(*a1 + 56) + 16))())
    {
      re_status = 0;
    }

    else
    {
      re_status = 7;
    }

    if (v16.ru.RM_rmb.ru.RP_ar.ar_verf.oa_base)
    {
      *(v6 + 24) = 2;
      xdr_opaque_auth((v6 + 24), &v16.ru.RM_rmb.ru);
    }
  }

  return re_status;
}

uint64_t clntraw_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v3 = clntraw_private;
  if (!clntraw_private)
  {
    return 16;
  }

  *(clntraw_private + 24) = 2;
  return a2(v3 + 24, a3, 0);
}

void *clnttcp_create_timeout(sockaddr_in *a1, uint64_t a2, uint64_t a3, int *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t *a8)
{
  memset(&v26, 0, sizeof(v26));
  v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
  if (!v16)
  {
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
    v22 = __error();
    v17 = 0;
LABEL_21:
    rpc_createerr.cf_error.ru.RE_errno = *v22;
    goto LABEL_22;
  }

  v17 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F0040E18C1070uLL);
  if (!v17)
  {
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
    v22 = __error();
    goto LABEL_21;
  }

  if (a1->sin_port)
  {
    goto LABEL_6;
  }

  v28.tv_sec = 6;
  *&v28.tv_usec = a7;
  v18 = pmap_getport_timeout(a1, a2, a3, v28, a8);
  if (!v18)
  {
LABEL_22:
    free(v17);
    free(v16);
    return 0;
  }

  a1->sin_port = __rev16(v18);
LABEL_6:
  if (*a4 < 0)
  {
    v24 = socket(2, 1, 6);
    *a4 = v24;
    bindresvport(v24, 0);
    if (*a4 < 0 || (connect_NOCANCEL() & 0x80000000) != 0)
    {
      rpc_createerr.cf_stat = RPC_SYSTEMERROR;
      rpc_createerr.cf_error.ru.RE_errno = *__error();
LABEL_30:
      v25 = *a4;
      close_NOCANCEL();
      goto LABEL_22;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v17[1] = v19;
  *v17 = *a4;
  *(v17 + 1) = 60;
  v17[4] = 0;
  v17[6] = 0;
  if (a8)
  {
    *(v17 + 2) = *a8;
    v17[6] = 1;
  }

  *(v17 + 7) = *a1;
  v20 = open_NOCANCEL();
  if (v20 < 0 || read_NOCANCEL() != 4)
  {
    v27.tv_sec = 0;
    *&v27.tv_usec = 0;
    gettimeofday(&v27, 0);
    v26.rm_xid = getpid() ^ LODWORD(v27.tv_sec) ^ v27.tv_usec;
  }

  if (v20 >= 1)
  {
    close_NOCANCEL();
  }

  *&v26.rm_direction = 0x200000000;
  *(&v26.ru.RM_rmb.rp_stat + 1) = __PAIR64__(a3, a2);
  xdrmem_create((v17 + 22), v17 + 56, 0x18u, XDR_ENCODE);
  if (!xdr_callhdr((v17 + 22), &v26))
  {
    if (!v17[1])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v17[20] = (*(*(v17 + 12) + 32))(v17 + 22);
  v21 = *(*(v17 + 12) + 56);
  if (v21)
  {
    v21(v17 + 22);
  }

  xdrrec_create((v17 + 22), a5, a6, v17, readtcp, writetcp);
  v16[1] = tcp_ops;
  v16[2] = v17;
  *v16 = authnone_create();
  return v16;
}

uint64_t clnttcp_call(void *a1, int a2, unsigned int (*a3)(uint64_t, uint64_t, void), uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a2;
  v11 = a1[2];
  memset(&v21, 0, sizeof(v21));
  if (!*(v11 + 24))
  {
    *(v11 + 8) = a7;
    *(v11 + 16) = a8;
  }

  v12 = a8;
  if (a5)
  {
    v13 = (a7 | a8) != 0;
  }

  else
  {
    v12 = a8;
    v13 = 0;
  }

  v14 = (a7 | v12) == 0;
  v15 = 2;
  while (1)
  {
    *(v11 + 88) = 0;
    *(v11 + 44) = 0;
    v16 = *(v11 + 56) - 1;
    *(v11 + 56) = v16;
    if (!(*(*(v11 + 96) + 24))(v11 + 88, v11 + 56, *(v11 + 80)) || !(*(*(v11 + 96) + 8))(v11 + 88, &v22) || !(*(*(*a1 + 56) + 8))() || !a3(v11 + 88, a4, 0))
    {
      if (!*(v11 + 44))
      {
        *(v11 + 44) = 1;
      }

      xdrrec_endofrecord((v11 + 88), 1);
      return *(v11 + 44);
    }

    if (!xdrrec_endofrecord((v11 + 88), v13))
    {
      result = 3;
      goto LABEL_34;
    }

    if (!v13)
    {
      return 0;
    }

    if (v14)
    {
      break;
    }

    *(v11 + 88) = 1;
    v21.ru.RM_rmb.ru.RP_ar.ar_verf = _null_auth;
    v21.ru.RM_rmb.ru.RP_ar.ru.AR_results.where = 0;
    v21.ru.RM_cmb.cb_verf.oa_base = xdr_void;
    if (!xdrrec_skiprecord((v11 + 88)))
    {
      return *(v11 + 44);
    }

    v17 = bswap32(v16);
    while (1)
    {
      if (!xdr_replymsg((v11 + 88), &v21))
      {
        result = *(v11 + 44);
        if (result)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (v21.rm_xid == v17)
      {
        break;
      }

LABEL_20:
      v21.ru.RM_rmb.ru.RP_ar.ar_verf = _null_auth;
      v21.ru.RM_rmb.ru.RP_ar.ru.AR_results.where = 0;
      v21.ru.RM_cmb.cb_verf.oa_base = xdr_void;
      if (!xdrrec_skiprecord((v11 + 88)))
      {
        return *(v11 + 44);
      }
    }

    _seterr_reply(&v21, (v11 + 44));
    if (!*(v11 + 44))
    {
      if ((*(*(*a1 + 56) + 16))())
      {
        if (!a5(v11 + 88, a6, 0) && !*(v11 + 44))
        {
          *(v11 + 44) = 2;
        }
      }

      else
      {
        *(v11 + 44) = 0x600000007;
      }

      if (v21.ru.RM_rmb.ru.RP_ar.ar_verf.oa_base)
      {
        *(v11 + 88) = 2;
        xdr_opaque_auth((v11 + 88), &v21.ru.RM_rmb.ru);
      }

      return *(v11 + 44);
    }

    if (v15)
    {
      --v15;
      if ((*(*(*a1 + 56) + 24))())
      {
        continue;
      }
    }

    return *(v11 + 44);
  }

  result = 5;
LABEL_34:
  *(v11 + 44) = result;
  return result;
}

uint64_t clnttcp_geterr(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 44);
  *(a2 + 8) = *(v2 + 52);
  *a2 = v3;
  return result;
}

uint64_t clnttcp_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 88) = 2;
  return a2(v3 + 88, a3, 0);
}

void clnttcp_destroy(void *a1)
{
  v2 = a1[2];
  if (v2[1])
  {
    v3 = *v2;
    close_NOCANCEL();
  }

  v4 = *(*(v2 + 12) + 56);
  if (v4)
  {
    v4(v2 + 22);
  }

  free(v2);

  free(a1);
}

uint64_t clnttcp_control(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = *(a1 + 16);
  if (a2 == 3)
  {
    v5 = *(v3 + 28);
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v5 = *(v3 + 8);
LABEL_7:
    *a3 = v5;
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

uint64_t readtcp(int *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  memset(v10, 0, sizeof(v10));
  v4 = *a1;
  if (__darwin_check_fd_set_overflow(*a1, v10, 0))
  {
    *(v10 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  }

  while (1)
  {
    v5 = *a1;
    v6 = select_NOCANCEL();
    if (v6 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      a1[11] = 4;
      a1[12] = *__error();
      return 0xFFFFFFFFLL;
    }
  }

  if (v6)
  {
    v8 = *a1;
    result = read_NOCANCEL();
    if (result == -1)
    {
      v9 = *__error();
      a1[11] = 4;
      a1[12] = v9;
    }

    else
    {
      if (result)
      {
        return result;
      }

      *(a1 + 11) = 0x3600000004;
    }
  }

  else
  {
    a1[11] = 5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t writetcp(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = a3;
    while (1)
    {
      v7 = *a1;
      v8 = write_NOCANCEL();
      if (v8 == -1)
      {
        break;
      }

      a2 += v8;
      v9 = __OFSUB__(v6, v8);
      v6 -= v8;
      if ((v6 < 0) ^ v9 | (v6 == 0))
      {
        return v3;
      }
    }

    v10 = *__error();
    a1[11] = 3;
    a1[12] = v10;
    return 0xFFFFFFFFLL;
  }

  return v3;
}

void *clntudp_bufcreate_timeout(sockaddr_in *a1, unsigned int a2, unsigned int a3, int *a4, int a5, int a6, _OWORD *a7, _OWORD *a8)
{
  memset(&v29, 0, sizeof(v29));
  *v28 = 0;
  v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
  if (!v16)
  {
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
    rpc_createerr.cf_error.ru.RE_errno = *__error();
    return v16;
  }

  v17 = (a5 + 3) & 0xFFFFFFFC;
  v18 = (a6 + 3) & 0xFFFFFFFC;
  v31 = (a6 + 3) & 0xFFFFFFFC;
  v19 = malloc_type_calloc(1uLL, v17 + v18 + 152, 0x10F004088261126uLL);
  if (!v19)
  {
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
    rpc_createerr.cf_error.ru.RE_errno = *__error();
LABEL_26:
    free(v16);
    return 0;
  }

  v20 = v19;
  *(v19 + 17) = v19 + v18 + 148;
  if (!a1->sin_port)
  {
    v21 = pmap_getport_timeout(a1);
    if (!v21)
    {
LABEL_25:
      free(v20);
      goto LABEL_26;
    }

    a1->sin_port = __rev16(v21);
  }

  v16[1] = udp_ops;
  v16[2] = v20;
  v22 = *a1;
  *(v20 + 4) = 1;
  *(v20 + 2) = v22;
  v20[6] = 16;
  v20[33] = v17;
  v20[36] = v18;
  v20[10] = 0;
  if (a7)
  {
    *(v20 + 2) = *a7;
  }

  *(v20 + 6) = -1;
  v20[14] = -1;
  if (a8)
  {
    *(v20 + 3) = *a8;
  }

  v23 = open_NOCANCEL();
  if (v23 < 0 || read_NOCANCEL() != 4)
  {
    v30.tv_sec = 0;
    *&v30.tv_usec = 0;
    gettimeofday(&v30, 0);
    v29.rm_xid = getpid() ^ LODWORD(v30.tv_sec) ^ v30.tv_usec;
  }

  if (v23 >= 1)
  {
    close_NOCANCEL();
  }

  *&v29.rm_direction = 0x200000000;
  *(&v29.ru.RM_rmb.rp_stat + 1) = __PAIR64__(a3, a2);
  xdrmem_create((v20 + 20), *(v20 + 17), v17, XDR_ENCODE);
  if (!xdr_callhdr((v20 + 20), &v29))
  {
    goto LABEL_25;
  }

  v20[32] = (*(*(v20 + 11) + 32))(v20 + 20);
  if (*a4 < 0)
  {
    v27 = 1;
    v24 = socket(2, 2, 17);
    *a4 = v24;
    if (v24 < 0)
    {
      rpc_createerr.cf_stat = RPC_SYSTEMERROR;
      rpc_createerr.cf_error.ru.RE_errno = *__error();
    }

    else
    {
      bindresvport(v24, 0);
      ioctl(*a4, 0x8004667EuLL, &v27);
      v20[1] = 1;
      v28[0] = 0;
      v28[1] = 4;
      if (!getsockopt(*a4, 0xFFFF, 4098, v28, &v28[1]))
      {
        v28[1] = 4;
        if (v18 <= v28[0] || !setsockopt(*a4, 0xFFFF, 4098, &v31, 4u))
        {
          goto LABEL_18;
        }
      }

      v25 = *a4;
      close_NOCANCEL();
      *a4 = -1;
    }

    goto LABEL_25;
  }

  v20[1] = 0;
LABEL_18:
  *v20 = *a4;
  *v16 = authnone_create();
  return v16;
}

uint64_t clntudp_call(void *a1, int a2, unsigned int (*a3)(unsigned int *, uint64_t, void), uint64_t a4, char *a5, char *a6, int64_t a7, unsigned int a8)
{
  v67 = *MEMORY[0x1E69E9840];
  v64 = a2;
  v11 = a1[2];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  memset(&v46, 0, sizeof(v46));
  if (*(v11 + 6) != -1)
  {
    a8 = v11[14];
    a7 = *(v11 + 6);
  }

  v12 = 0;
  v13 = 0;
  v63 = 0;
  v65 = 0;
  v66 = 0;
  memset(&v45, 0, sizeof(v45));
  v40 = a8;
  v41 = a7;
  if (a7)
  {
    v14 = 0;
  }

  else
  {
    v14 = a8 == 0;
  }

  v15 = v14;
  v42 = v15;
  v16 = 2;
LABEL_10:
  v11[20] = 0;
  (*(*(v11 + 11) + 40))(v11 + 20, v11[32]);
  ++**(v11 + 17);
  if (!(*(*(v11 + 11) + 8))(v11 + 20, &v64) || !(*(*(*a1 + 56) + 8))() || !a3(v11 + 20, a4, 0))
  {
    result = 1;
LABEL_49:
    v11[16] = result;
    goto LABEL_45;
  }

  v17 = a4;
  v18 = (*(*(v11 + 11) + 32))(v11 + 20);
  v19 = *v11;
  v20 = *(v11 + 17);
  v21 = v11[6];
  if (sendto_NOCANCEL() != v18)
  {
LABEL_47:
    v37 = *__error();
    result = 3;
    goto LABEL_44;
  }

  if (v42)
  {
LABEL_48:
    result = 5;
    goto LABEL_49;
  }

  while (1)
  {
    v46.ru.RM_rmb.ru.RP_ar.ar_verf = _null_auth;
    v46.ru.RM_rmb.ru.RP_ar.ru.AR_results.where = a6;
    v46.ru.RM_cmb.cb_verf.oa_base = a5;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = *v11;
    if (__darwin_check_fd_set_overflow(*v11, &v47, 0))
    {
      *(&v47 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v22;
    }

LABEL_17:
    while (1)
    {
      v59 = v51;
      v60 = v52;
      v61 = v53;
      v62 = v54;
      v55 = v47;
      v56 = v48;
      v57 = v49;
      v58 = v50;
      v23 = *v11;
      v24 = select_NOCANCEL();
      if (v24 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_43;
      }
    }

    if (v24)
    {
      break;
    }

    v28 = *(v11 + 4);
    v29 = v11[10];
    v30 = v29 + v13;
    if ((v29 + v13) <= 999999)
    {
      v12 += v28;
      v13 += v29;
    }

    else
    {
      v31 = v12 + v28;
      v32 = v13 + v29;
      v33 = v32 + 999999;
      if (v30 >= 0x1E847F)
      {
        v30 = 1999999;
      }

      v12 = v31 + (v33 - v30) / 0xF4240uLL + 1;
      v13 = v32 - 1000000 - 1000000 * ((v33 - v30) / 0xF4240);
    }

    if (v12 >= v41 && (v12 != v41 || v13 >= v40))
    {
      goto LABEL_48;
    }

    v34 = *v11;
    v35 = *(v11 + 17);
    v36 = v11[6];
    if (sendto_NOCANCEL() != v18)
    {
      goto LABEL_47;
    }
  }

  do
  {
    v63 = 16;
    v25 = *v11;
    v26 = v11[36];
    v27 = recvfrom_NOCANCEL();
    if ((v27 & 0x80000000) == 0)
    {
      if ((v27 & 0x7FFFFFFC) == 0 || v11[37] != **(v11 + 17))
      {
        goto LABEL_17;
      }

      xdrmem_create(&v45, v11 + 148, v27, XDR_DECODE);
      if (!xdr_replymsg(&v45, &v46))
      {
        v11[16] = 2;
        goto LABEL_55;
      }

      _seterr_reply(&v46, (v11 + 16));
      if (!v11[16])
      {
        if (!(*(*(*a1 + 56) + 16))())
        {
          *(v11 + 8) = 0x600000007;
        }

        if (v46.ru.RM_rmb.ru.RP_ar.ar_verf.oa_base)
        {
          v11[20] = 2;
          xdr_opaque_auth((v11 + 20), &v46.ru.RM_rmb.ru);
        }

        goto LABEL_55;
      }

      if (!v16 || (a4 = v17, --v16, !(*(*(*a1 + 56) + 24))()))
      {
LABEL_55:
        result = v11[16];
        goto LABEL_45;
      }

      goto LABEL_10;
    }
  }

  while (*__error() == 4);
  if (*__error() == 35)
  {
    goto LABEL_17;
  }

LABEL_43:
  v37 = *__error();
  result = 4;
LABEL_44:
  v11[16] = result;
  v11[17] = v37;
LABEL_45:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t clntudp_geterr(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 64);
  *(a2 + 8) = *(v2 + 72);
  *a2 = v3;
  return result;
}

uint64_t clntudp_freeres(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 80) = 2;
  return a2(v3 + 80, a3, 0);
}

void clntudp_destroy(void *a1)
{
  v2 = a1[2];
  if (v2[1])
  {
    v3 = *v2;
    close_NOCANCEL();
  }

  v4 = *(*(v2 + 11) + 56);
  if (v4)
  {
    v4(v2 + 20);
  }

  free(v2);

  free(a1);
}

uint64_t clntudp_control(uint64_t a1, int a2, _OWORD *a3)
{
  result = 0;
  v5 = *(a1 + 16);
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v5[3] = *a3;
      return 1;
    }

    if (a2 != 2)
    {
      return result;
    }

    v6 = v5[3];
  }

  else
  {
    switch(a2)
    {
      case 3:
        v6 = *(v5 + 8);
        break;
      case 4:
        v5[2] = *a3;
        return 1;
      case 5:
        v6 = v5[2];
        break;
      default:
        return result;
    }
  }

  *a3 = v6;
  return 1;
}

uint64_t si_destination_create_control_socket()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = socket(32, 2, 2);
  if (v0 == -1)
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_create_control_socket_cold_7();
    }

    goto LABEL_8;
  }

  v1 = v0;
  v8 = 1;
  if (setsockopt(v0, 0xFFFF, 4130, &v8, 4u))
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_create_control_socket_cold_1();
    }

LABEL_5:
    close_NOCANCEL();
LABEL_8:
    v1 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  __strlcpy_chk();
  if (ioctl(v1, 0xC0644E03uLL, v9) == -1)
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_create_control_socket_cold_6();
    }

    goto LABEL_5;
  }

  v4[1] = 139296;
  v4[2] = v9[0];
  v4[3] = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (connect_NOCANCEL())
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_create_control_socket_cold_2(v9);
    }

    goto LABEL_5;
  }

  v4[0] = 0x20000;
  if (setsockopt(v1, 0xFFFF, 4098, v4, 4u) && os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
  {
    si_destination_create_control_socket_cold_3(v4);
  }

  if (fcntl_NOCANCEL() == -1)
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_create_control_socket_cold_5();
    }
  }

  else if (fcntl_NOCANCEL() == -1 && os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
  {
    si_destination_create_control_socket_cold_4();
  }

LABEL_9:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void set_loopback_ifindex()
{
  v2 = 0;
  if ((getifaddrs(&v2) & 0x80000000) == 0)
  {
    if (v2)
    {
      v0 = v2;
      while (1)
      {
        ifa_addr = v0->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18 && (v0->ifa_flags & 8) != 0)
          {
            break;
          }
        }

        v0 = v0->ifa_next;
        if (!v0)
        {
          goto LABEL_10;
        }
      }

      kLoopbackIndex = *ifa_addr->sa_data;
    }

LABEL_10:
    freeifaddrs(v2);
  }
}

uint64_t si_destination_compare(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    si_destination_compare_cold_35();
LABEL_193:
    v25 = *v75;
    goto LABEL_41;
  }

  if (!a3)
  {
    si_destination_compare_cold_34();
    goto LABEL_193;
  }

  pthread_once(&si_destination_compare_init_cache_init, si_destination_compare_init_once);
  v10 = a1[1];
  v11 = v10 == 2 || v10 == 30;
  if (v11)
  {
    v22 = a3[1];
    if (v22 != 2 && v22 != 30)
    {
      v25 = 1;
      if (v10 == 2 || v10 == 30)
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    memset(v75, 0, sizeof(v75));
    v73 = 0u;
    v74 = 0u;
    memset(v72, 0, sizeof(v72));
    v70 = 0u;
    v71 = 0u;
    v12 = si_destination_lookup(a1, a2, v75);
    v13 = si_destination_lookup(a3, a4, &v70);
    if (v12)
    {
      v14 = v13;
      if (v13)
      {
        if (!a5)
        {
          v29 = 0;
          goto LABEL_43;
        }

        pthread_once(&si_destination_compare_statistics_once, set_loopback_ifindex);
        v15 = v79;
        v16 = v74;
        if (v79)
        {
          if (v74)
          {
            if (v79 < v74)
            {
              if (si_compare_settings_0)
              {
                v17 = 3200;
              }

              else
              {
                v17 = 0;
              }

              v67 = v17;
              if (v17 + v79 < v74)
              {
                v18 = si_destination_log;
                if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                {
                  v19 = vcvtd_n_f64_u32(v15, 5uLL);
                  v20 = vcvtd_n_f64_u32(v16, 5uLL);
                  if (si_compare_settings_1)
                  {
                    v21 = 10;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  *buf = 134218752;
                  v81 = v19;
                  v82 = 2048;
                  v83 = v20;
                  v84 = 1024;
                  v85 = v67 >> 5;
                  v86 = 1024;
                  v87 = v21;
                  _os_log_debug_impl(&dword_19A0B0000, v18, OS_LOG_TYPE_DEBUG, "prefering 1, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u", buf, 0x22u);
                }

LABEL_150:
                v25 = 1;
                goto LABEL_40;
              }

              if (si_compare_settings_1)
              {
                v47 = 320;
              }

              else
              {
                v47 = 0;
              }

              v63 = v47;
              v48 = v47 + v79;
              loga = si_destination_log;
              v49 = os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG);
              if (v48 < v16)
              {
                if (v49)
                {
                  *buf = 134218752;
                  v81 = vcvtd_n_f64_u32(v15, 5uLL);
                  v82 = 2048;
                  v83 = vcvtd_n_f64_u32(v16, 5uLL);
                  v84 = 1024;
                  v85 = v67 >> 5;
                  v86 = 1024;
                  v87 = v63 >> 5;
                  _os_log_debug_impl(&dword_19A0B0000, loga, OS_LOG_TYPE_DEBUG, "prefering 1 slightly, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u", buf, 0x22u);
                }

                v29 = 2;
                goto LABEL_142;
              }

              if (v49)
              {
                *buf = 134218752;
                v81 = vcvtd_n_f64_u32(v15, 5uLL);
                v82 = 2048;
                v83 = vcvtd_n_f64_u32(v16, 5uLL);
                v84 = 1024;
                v85 = v67 >> 5;
                v86 = 1024;
                v87 = v63 >> 5;
                v54 = "not prefering 1, dst1 min rtt %f < dst2 min rtt %f, leeway %u small leeway %u";
LABEL_219:
                _os_log_debug_impl(&dword_19A0B0000, loga, OS_LOG_TYPE_DEBUG, v54, buf, 0x22u);
                goto LABEL_141;
              }

              goto LABEL_141;
            }

            if (v79 > v74)
            {
              if (si_compare_settings_0)
              {
                v42 = 3200;
              }

              else
              {
                v42 = 0;
              }

              v69 = v42;
              if (v79 > v42 + v74)
              {
                v43 = si_destination_log;
                if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                {
                  v44 = vcvtd_n_f64_u32(v15, 5uLL);
                  v45 = vcvtd_n_f64_u32(v16, 5uLL);
                  if (si_compare_settings_1)
                  {
                    v46 = 10;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  *buf = 134218752;
                  v81 = v44;
                  v82 = 2048;
                  v83 = v45;
                  v84 = 1024;
                  v85 = v69 >> 5;
                  v86 = 1024;
                  v87 = v46;
                  _os_log_debug_impl(&dword_19A0B0000, v43, OS_LOG_TYPE_DEBUG, "prefering 2, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u", buf, 0x22u);
                }

                goto LABEL_146;
              }

              if (si_compare_settings_1)
              {
                v51 = 320;
              }

              else
              {
                v51 = 0;
              }

              v64 = v51;
              v52 = v51 + v74;
              loga = si_destination_log;
              v53 = os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG);
              if (v15 <= v52)
              {
                if (v53)
                {
                  *buf = 134218752;
                  v81 = vcvtd_n_f64_u32(v15, 5uLL);
                  v82 = 2048;
                  v83 = vcvtd_n_f64_u32(v16, 5uLL);
                  v84 = 1024;
                  v85 = v69 >> 5;
                  v86 = 1024;
                  v87 = v64 >> 5;
                  v54 = "not prefering 2, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u";
                  goto LABEL_219;
                }

LABEL_141:
                v29 = 0;
                goto LABEL_142;
              }

              if (v53)
              {
                *buf = 134218752;
                v81 = vcvtd_n_f64_u32(v15, 5uLL);
                v82 = 2048;
                v83 = vcvtd_n_f64_u32(v16, 5uLL);
                v84 = 1024;
                v85 = v69 >> 5;
                v86 = 1024;
                v87 = v64 >> 5;
                _os_log_debug_impl(&dword_19A0B0000, loga, OS_LOG_TYPE_DEBUG, "prefering 2 slightly, dst1 min rtt %f > dst2 min rtt %f, leeway %u small leeway %u", buf, 0x22u);
              }

              v29 = -2;
            }

            else
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_2();
              }

              v29 = 0;
            }
          }

          else
          {
            if (DWORD2(v74))
            {
              goto LABEL_141;
            }

            v29 = 0;
            v41 = 10;
            if (!si_compare_settings_2)
            {
              v41 = 0;
            }

            if (DWORD1(v74) && v41 < DWORD1(v74))
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_1();
              }

              goto LABEL_150;
            }
          }
        }

        else
        {
          v29 = 0;
          if (v74 && !DWORD2(v79))
          {
            v29 = 0;
            v40 = 10;
            if (!si_compare_settings_2)
            {
              v40 = 0;
            }

            if (DWORD1(v79) && v40 < DWORD1(v79))
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_31();
              }

              goto LABEL_146;
            }
          }
        }

LABEL_142:
        if (BYTE12(v79))
        {
          if ((BYTE12(v74) & 1) == 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_9();
            }

            goto LABEL_150;
          }

          v55 = (BYTE12(v79) >> 2) & 1;
          v56 = (BYTE12(v74) >> 2) & 1;
          if (v55 != v56)
          {
            if (v56)
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_3();
              }

              goto LABEL_150;
            }

            if (v55)
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_4();
              }

              goto LABEL_146;
            }
          }

          if (HIDWORD(v78) == kLoopbackIndex)
          {
            v57 = 1;
          }

          else
          {
            v57 = 0;
            if (v75[1] == 30 && v75[8] == 254)
            {
              v57 = (v75[9] & 0xC0) == 0x80 && *&v75[24] == kLoopbackIndex;
            }
          }

          if (HIDWORD(v73) == kLoopbackIndex)
          {
            v58 = 1;
          }

          else
          {
            v58 = 0;
            if (BYTE1(v70) == 30 && BYTE8(v70) == 254)
            {
              v58 = (BYTE9(v70) & 0xC0) == 0x80 && DWORD2(v71) == kLoopbackIndex;
            }

            if (v57 && !v58)
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_5();
              }

              goto LABEL_150;
            }
          }

          if (!v57 && v58)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_6();
            }

            goto LABEL_146;
          }

          if ((BYTE12(v79) & 2) != 0)
          {
            if ((BYTE12(v74) & 2) == 0)
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_7();
              }

              goto LABEL_150;
            }
          }

          else if ((BYTE12(v74) & 2) != 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_8();
            }

            goto LABEL_146;
          }
        }

        else if (BYTE12(v74))
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_10();
          }

LABEL_146:
          v25 = 0xFFFFFFFFLL;
          goto LABEL_40;
        }

LABEL_43:
        v30 = BYTE5(v76);
        v31 = BYTE5(v72[0]);
        if (BYTE5(v76))
        {
          if (!BYTE5(v72[0]))
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_11();
            }

            v25 = 1;
            goto LABEL_40;
          }
        }

        else if (BYTE5(v72[0]))
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_12();
          }

          v25 = 0xFFFFFFFFLL;
          goto LABEL_40;
        }

        log = a2;
        v68 = a4;
        v35 = v29;
        v36 = rfc6724_scope_sa(v75);
        v37 = rfc6724_scope_sa(&v76 + 4);
        v38 = rfc6724_scope_sa(&v70);
        v39 = rfc6724_scope_sa(v72 + 4);
        if (v36 == v37)
        {
          if (v38 != v39)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_14();
            }

LABEL_126:
            v25 = 1;
            goto LABEL_127;
          }
        }

        else if (v38 == v39)
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_13();
          }

          goto LABEL_73;
        }

        if ((v78 & 4) != (v73 & 4))
        {
          if ((v78 & 4) != 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_15();
            }

            goto LABEL_126;
          }

          if ((v73 & 4) != 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_16();
            }

            goto LABEL_73;
          }
        }

        if ((v78 & 8) != (v73 & 8))
        {
          if ((v78 & 8) != 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_17();
            }

            goto LABEL_126;
          }

          if ((v73 & 8) != 0)
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_18();
            }

            goto LABEL_73;
          }
        }

        if (v76 == WORD2(v78))
        {
          if (LOWORD(v72[0]) != WORD2(v73))
          {
            if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_20();
            }

            goto LABEL_126;
          }
        }

        else if (LOWORD(v72[0]) == WORD2(v73))
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_19();
          }

          goto LABEL_73;
        }

        if (WORD1(v76) > WORD1(v72[0]))
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_30();
          }

          goto LABEL_126;
        }

        if (WORD1(v72[0]) > WORD1(v76))
        {
          if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
          {
            si_destination_compare_cold_29();
          }

          goto LABEL_73;
        }

        if (v30 == 30)
        {
          if (WORD6(v76) == 544)
          {
            v59 = 0;
          }

          else
          {
            v59 = WORD6(v76) != 288 || HIWORD(v76) != 0;
          }
        }

        else
        {
          v59 = 1;
        }

        if (v31 == 30)
        {
          if (WORD6(v72[0]) == 544)
          {
            v60 = 0;
            goto LABEL_212;
          }

          if (WORD6(v72[0]) == 288)
          {
            v60 = HIWORD(v72[0]) != 0;
LABEL_212:
            if (v59 && !v60)
            {
              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_21();
              }

              goto LABEL_217;
            }

LABEL_201:
            if (v59 || !v60)
            {
              if (v36 < v38)
              {
                if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                {
                  si_destination_compare_cold_28();
                }

                goto LABEL_217;
              }

              if (v38 >= v36)
              {
                if (v35 - 1 >= 2)
                {
                  if (v35 <= 0xFFFFFFFD)
                  {
                    v61 = common_prefix_length(v75, &v76 + 4);
                    v62 = common_prefix_length(&v70, v72 + 4);
                    if (!v61 || !v62)
                    {
                      goto LABEL_230;
                    }

                    if (v61 > v62)
                    {
                      if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                      {
                        si_destination_compare_cold_26();
                      }

                      goto LABEL_126;
                    }

                    if (v62 > v61)
                    {
                      if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                      {
                        si_destination_compare_cold_25();
                      }
                    }

                    else
                    {
LABEL_230:
                      if (v12 == 1 && v14 == 2)
                      {
                        if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                        {
                          si_destination_compare_cold_24();
                        }

                        goto LABEL_126;
                      }

                      if (v14 != 1)
                      {
                        v25 = 0;
                        goto LABEL_127;
                      }

                      v11 = v12 == 2;
                      v25 = 0;
                      a4 = v68;
                      a2 = log;
                      if (!v11)
                      {
                        goto LABEL_40;
                      }

                      if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
                      {
                        si_destination_compare_cold_23();
                      }
                    }
                  }

LABEL_73:
                  v25 = 0xFFFFFFFFLL;
LABEL_127:
                  a4 = v68;
                  a2 = log;
                  goto LABEL_40;
                }

LABEL_217:
                v25 = 1;
                goto LABEL_127;
              }

              if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
              {
                si_destination_compare_cold_27();
              }
            }

            else if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
            {
              si_destination_compare_cold_22();
            }

            v25 = 0xFFFFFFFFLL;
            goto LABEL_127;
          }
        }

        v60 = 1;
        goto LABEL_201;
      }

      if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
      {
        si_destination_compare_cold_32();
      }
    }

    else if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
    {
      si_destination_compare_cold_33();
    }

    v25 = 0;
    goto LABEL_40;
  }

  v22 = a3[1];
LABEL_25:
  v24 = v22 == 2 || v22 == 30;
  v25 = (v24 << 31 >> 31);
LABEL_40:
  v26 = si_destination_log;
  if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
  {
    v32 = *a1;
    v33 = *a3;
    if (v25 >= 0)
    {
      v34 = 62;
    }

    else
    {
      v34 = 60;
    }

    if (!v25)
    {
      v34 = 61;
    }

    *v75 = 68159234;
    *&v75[4] = v32;
    *&v75[8] = 2096;
    *&v75[10] = a1;
    *&v75[18] = 1024;
    *&v75[20] = a2;
    *&v75[24] = 1024;
    *&v75[26] = v34;
    *&v75[30] = 1040;
    LODWORD(v76) = v33;
    WORD2(v76) = 2096;
    *(&v76 + 6) = a3;
    HIWORD(v76) = 1024;
    LODWORD(v77) = a4;
    _os_log_debug_impl(&dword_19A0B0000, v26, OS_LOG_TYPE_DEBUG, "%{network:sockaddr}.*P@%u %c %{network:sockaddr}.*P@%u", v75, 0x34u);
  }

LABEL_41:
  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t si_destination_compare_no_dependencies(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = rfc6724_precedence(a1);
      v5 = rfc6724_precedence(a2);
      if (v4 > v5)
      {
        if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
        {
          si_destination_compare_no_dependencies_cold_4();
        }

        return 1;
      }

      if (v5 > v4)
      {
        if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
        {
          si_destination_compare_no_dependencies_cold_3();
        }

        return 0xFFFFFFFFLL;
      }

      v7 = rfc6724_scope_sa(a1);
      v8 = rfc6724_scope_sa(a2);
      if (v7 < v8)
      {
        if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
        {
          si_destination_compare_no_dependencies_cold_2();
        }

        return 1;
      }

      if (v8 < v7)
      {
        if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
        {
          si_destination_compare_no_dependencies_cold_1();
        }

        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    else
    {
      si_destination_compare_no_dependencies_cold_5();
      return v9;
    }
  }

  else
  {
    si_destination_compare_no_dependencies_cold_6();
    return v10;
  }
}

uint64_t rfc6724_precedence(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 != 2)
    {
      if (v1 != 30)
      {
        return 0;
      }

      v2 = *(result + 8);
      if (v2)
      {
        if (v2 == 544)
        {
          return 30;
        }

        if (v2 == 288 && v2 < 0x10000)
        {
          return 5;
        }

        if ((v2 & 0xFE) == 0xFC)
        {
          return 3;
        }

        if ((v2 & 0xC0FF) == 0xC0FE)
        {
          return 1;
        }

LABEL_15:
        if (v2 == 65087)
        {
          return 1;
        }

        else
        {
          return 40;
        }
      }

      if (*(result + 12))
      {
        goto LABEL_14;
      }

      if (!*(result + 16) && *(result + 20) == 0x1000000)
      {
        return 50;
      }

      if (*(result + 16) != -65536)
      {
LABEL_14:
        if (!*(result + 12) && !*(result + 16) && (*(result + 20) | 0x1000000) != 0x1000000)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }

    return 35;
  }

  return result;
}

uint64_t rfc6724_scope_sa(uint64_t a1)
{
  v2 = *(a1 + 1);
  if (v2 == 2)
  {
    v8 = bswap32(*(a1 + 4));
    v7 = HIWORD(v8) == 43518 || HIBYTE(v8) == 127;
    v6 = 14;
    goto LABEL_13;
  }

  if (v2 != 30)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    v10 = (*(a1 + 9) & 0xF) - 1;
    if (v10 >= 5)
    {
      return 14;
    }

    else
    {
      return dword_19A0D6CF0[v10];
    }
  }

  else
  {
    if (v3 == 254)
    {
      v4 = *(a1 + 9);
      v5 = v4 & 0xC0;
      if (v4 <= 0xBF)
      {
        v6 = 14;
      }

      else
      {
        v6 = 5;
      }

      v7 = v5 == 128;
LABEL_13:
      if (v7)
      {
        return 2;
      }

      else
      {
        return v6;
      }
    }

    v11 = *(a1 + 15);
    result = 14;
    if (!(*(a1 + 8) | v11))
    {
      if (*(a1 + 23) == 1)
      {
        return 2;
      }

      else
      {
        return 14;
      }
    }
  }

  return result;
}

uint64_t si_destination_compare_init_once()
{
  info = 0;
  mach_timebase_info(&info);
  cache_timeout = 1000000000 * info.denom / info.numer;
  si_destination_log = os_log_create("com.apple.network.libinfo", "si_destination_compare");
  si_compare_settings_0 = 1;
  si_compare_settings_1 = 1;
  si_compare_settings_2 = 1;
  return pthread_atfork(0, 0, si_destination_compare_child_has_forked);
}

uint64_t si_destination_lookup(unsigned __int8 *a1, int a2, _OWORD *a3)
{
  pthread_once(&si_destination_compare_init_cache_init, si_destination_compare_init_once);
  os_unfair_lock_lock(&cache_lock);
  v6 = mach_absolute_time();
  v7 = cache;
  if (!cache)
  {
LABEL_29:
    if (*a1 < 0x1Du)
    {
      v22 = malloc_type_calloc(1uLL, 0x70uLL, 0x1020040DB858CFCuLL);
      if (v22)
      {
        v23 = v22;
        v24 = *a1;
        __memcpy_chk();
        *(v23 + 88) = a2;
        si_destination_fill_netsrc((v23 + 16));
        v25 = *(v23 + 32);
        *a3 = *(v23 + 16);
        a3[1] = v25;
        v26 = *(v23 + 48);
        v27 = *(v23 + 64);
        v28 = *(v23 + 96);
        a3[4] = *(v23 + 80);
        a3[5] = v28;
        a3[2] = v26;
        a3[3] = v27;
        v29 = mach_absolute_time();
        v30 = cache;
        *v23 = v29;
        *(v23 + 8) = v30;
        cache = v23;
        v21 = 2;
        goto LABEL_37;
      }

      if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
      {
        si_destination_lookup_cold_1();
      }
    }

    else if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_lookup_cold_2();
    }

    v21 = 0;
    goto LABEL_37;
  }

  v8 = v6;
  v9 = 0;
  v10 = cache_timeout;
  v11 = &cache;
  do
  {
    if (v8 - *v7 >= v10)
    {
      *v11 = *(v7 + 8);
      *(v7 + 80) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *v7 = 0u;
      free(v7);
      v10 = cache_timeout;
      goto LABEL_24;
    }

    if (v9)
    {
      goto LABEL_5;
    }

    if (*(v7 + 88) != a2)
    {
      goto LABEL_22;
    }

    v12 = a1[1];
    if (v12 != *(v7 + 17))
    {
      goto LABEL_22;
    }

    if (v12 == 30)
    {
      if (*(a1 + 1) != *(v7 + 24) || *(a1 + 2) != *(v7 + 32))
      {
LABEL_22:
        v9 = 0;
        goto LABEL_23;
      }

      v13 = *(a1 + 6);
      v14 = *(v7 + 40);
    }

    else
    {
      if (v12 != 2)
      {
        v16 = *a1;
        if (v16 != *(v7 + 16) || memcmp(a1, (v7 + 16), v16))
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v13 = *(a1 + 1);
      v14 = *(v7 + 20);
    }

    if (v13 != v14)
    {
      goto LABEL_22;
    }

LABEL_26:
    v17 = *(v7 + 32);
    *a3 = *(v7 + 16);
    a3[1] = v17;
    v18 = *(v7 + 48);
    v19 = *(v7 + 64);
    v20 = *(v7 + 96);
    a3[4] = *(v7 + 80);
    a3[5] = v20;
    a3[2] = v18;
    a3[3] = v19;
    v7 = *v11;
LABEL_5:
    v9 = 1;
LABEL_23:
    v11 = (v7 + 8);
LABEL_24:
    v7 = *v11;
  }

  while (*v11);
  if ((v9 & 1) == 0)
  {
    goto LABEL_29;
  }

  v21 = 1;
LABEL_37:
  os_unfair_lock_unlock(&cache_lock);
  return v21;
}

void si_destination_fill_netsrc(unsigned __int8 *a1)
{
  if (si_destination_fill_netsrc_netsrc_sockfd < 0)
  {
    si_destination_fill_netsrc_netsrc_sockfd = si_destination_create_control_socket();
    if (si_destination_fill_netsrc_netsrc_sockfd < 0)
    {
      return;
    }
  }

  v13 = 0;
  v12 = 0;
  v15 = 0;
  v14 = 0;
  if (si_destination_fill_netsrc_version)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(a1 + 18);
  v10 = v2;
  v11 = v3;
  if (*a1 >= 0x1DuLL)
  {
    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
    {
      si_destination_fill_netsrc_cold_4();
    }

    return;
  }

  __memcpy_chk();
  if (send_NOCANCEL() == 36)
  {
    if (si_destination_fill_netsrc_version == 1)
    {
      memset(__n, 0, 40);
      if (recv_NOCANCEL() == 40)
      {
        *(a1 + 8) = *(&__n[4] + 2);
        if (LOBYTE(__n[0]) <= 0x1CuLL)
        {
          memcpy(a1 + 36, __n, LOBYTE(__n[0]));
        }

        v4 = *(&__n[3] + 6);
        *(a1 + 16) = WORD2(__n[3]);
        *(a1 + 17) = v4;
        return;
      }

      if (!os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

LABEL_25:
      si_destination_fill_netsrc_cold_2();
      return;
    }

    v9 = 0;
    memset(__n, 0, sizeof(__n));
    if (recv_NOCANCEL() == 56)
    {
      v5 = HIDWORD(__n[5]);
      *(a1 + 8) = v9;
      *(a1 + 36) = *__n;
      *(a1 + 3) = *(&__n[1] + 4);
      *(a1 + 19) = WORD2(v9);
      v7 = HIDWORD(__n[4]);
      v6 = __n[5];
      *(a1 + 16) = __n[5];
      *(a1 + 17) = v5;
      *(a1 + 10) = *(&__n[3] + 4);
      *(a1 + 22) = v7;
      a1[92] = a1[92] & 0xF8 | (v6 >> 5);
      return;
    }

    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*__error() == 22 && (si_destination_fill_netsrc_version & 1) == 0)
    {
      si_destination_fill_netsrc_version = 1;
      si_destination_fill_netsrc(a1);
    }

    if (os_log_type_enabled(si_destination_log, OS_LOG_TYPE_ERROR))
    {
      si_destination_fill_netsrc_cold_1();
    }
  }
}

uint64_t common_prefix_length(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 30 || *(a2 + 1) != 30)
  {
    return 0;
  }

  result = 0;
  v4 = (a2 + 8);
  v5 = (a1 + 8);
  while (1)
  {
    v6 = *v4;
    v8 = *v5++;
    v7 = v8;
    if (v6 != v8)
    {
      break;
    }

    ++v4;
    result += 8;
    if (result == 64)
    {
      return result;
    }
  }

  for (i = v7 ^ v6; (i & 0x80) == 0; i *= 2)
  {
    result = (result + 1);
  }

  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xEu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x10u);
}

BOOL OUTLINED_FUNCTION_12()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

int getrpcport(char *a1, int a2, int a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = gethostbyname(a1);
  if (v7)
  {
    *&v12.sin_len = 0;
    *v12.sin_zero = 0;
    v8 = *v7->h_addr_list;
    h_length = v7->h_length;
    __memmove_chk();
    v12.sin_family = 2;
    LODWORD(v7) = pmap_getport(&v12, a2, a3, a4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

int pmap_set(unsigned int a1, unsigned int a2, int a3, int a4)
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v17 = -1;
  if (!pmap_wakeup())
  {
    v12 = 0;
    *&v18.sin_len = 0x100007F00000200;
    *v18.sin_zero = 0;
    v8 = clntudp_bufcreate_timeout(&v18, 0x186A0u, 2u, &v17, 400, 400, &set_retry_timeout, &set_total_timeout);
    if (!v8)
    {
      goto LABEL_3;
    }

    v10 = v8;
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = v4;
    if (!(*v8[1])())
    {
      (*(v10[1] + 32))(v10);
      close_NOCANCEL();
      LODWORD(v8) = v12;
      goto LABEL_3;
    }
  }

  LODWORD(v8) = 0;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

int pmap_unset(unsigned int a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = -1;
  if (pmap_wakeup())
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v8 = 0;
    *&v14.sin_len = 0x100007F00000200;
    *v14.sin_zero = 0;
    v4 = clntudp_bufcreate_timeout(&v14, 0x186A0u, 2u, &v13, 400, 400, &unset_retry_timeout, &unset_total_timeout);
    if (v4)
    {
      v5 = v4;
      v9 = a1;
      v10 = a2;
      v11 = 0;
      v12 = 0;
      (*v4[1])();
      (*(v5[1] + 32))(v5);
      close_NOCANCEL();
      LODWORD(v4) = v8;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

const char *darwin_directory_cached_item_is_valid(const char **a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *a1;
      if (*a1)
      {
        v5 = *a2;
        if (*a2 && *v5 && !strcmp(result, *v5))
        {
          v6 = *(a2 + 16);
          if ((v6 & 0x100000000000000) != 0)
          {
            return 1;
          }

          else
          {
            return (DarwinDirectoryGetGeneration() == v6);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t darwin_directory_user_byname(uint64_t a1, const char *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = &v17;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __darwin_directory_user_byname_block_invoke;
  v16[3] = &unk_1E75065A8;
  v16[4] = &v17;
  v16[5] = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

  v37 = a2;
  v38 = 0;
  v36 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 0x40000000;
  v28 = ___dd_foreach_record_with_name_block_invoke_0;
  v29 = &unk_1E75065D0;
  v30 = v16;
  v31 = &v32;
  v4 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v33[3])
  {
LABEL_6:
    _Block_object_dispose(&v32, 8);
    v2 = v18;
LABEL_7:
    v9 = v2[3];
    _Block_object_dispose(&v17, 8);
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  multiuser_flags[0] = 0;
  v5 = MEMORY[0x19A8FC650](v4);
  multiuser_config_flags = host_get_multiuser_config_flags(v5, multiuser_flags);
  if (multiuser_config_flags)
  {
    v8 = mbr_identifier_translate_cold_2(multiuser_config_flags, v7);
  }

  else
  {
    if ((multiuser_flags[0] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = strcmp(a2, "mobile");
    if (v8)
    {
      goto LABEL_6;
    }
  }

  LODWORD(v36) = 0;
  multiuser_flags[0] = 0;
  v12 = MEMORY[0x19A8FC650](v8);
  v13 = host_get_multiuser_config_flags(v12, multiuser_flags);
  if (!v13)
  {
    LODWORD(v37) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = ___dd_foreach_record_with_name_block_invoke_2_0;
    v24 = &unk_1E75065F8;
    v25 = v16;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_6;
  }

  v15 = mbr_identifier_translate_cold_2(v13, v14);
  return darwin_directory_user_byuid(v15);
}

uint64_t darwin_directory_user_byuid(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __darwin_directory_user_byuid_block_invoke;
  v14[3] = &unk_1E7506620;
  v14[4] = &v15;
  v14[5] = a1;
  v34 = 0;
  v36 = 0;
  v35 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v24 = MEMORY[0x1E69E9820];
  v25 = 0x40000000;
  v26 = ___dd_foreach_record_with_id_block_invoke_0;
  v27 = &unk_1E7506648;
  v28 = v14;
  v29 = &v30;
  v3 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v31[3])
  {
    goto LABEL_5;
  }

  multiuser_flags[0] = 0;
  v4 = MEMORY[0x19A8FC650](v3);
  multiuser_config_flags = host_get_multiuser_config_flags(v4, multiuser_flags);
  if (multiuser_config_flags)
  {
    multiuser_config_flags = mbr_identifier_translate_cold_2(multiuser_config_flags, v6);
  }

  else if (a2 != 501 || (multiuser_flags[0] & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  multiuser_flags[0] = 0;
  v10 = MEMORY[0x19A8FC650](multiuser_config_flags);
  v11 = host_get_multiuser_config_flags(v10, multiuser_flags);
  if (!v11)
  {
    LODWORD(v35) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v20 = 0x40000000;
    v21 = ___dd_foreach_record_with_id_block_invoke_2_0;
    v22 = &unk_1E7506670;
    v23 = v14;
    DarwinDirectoryRecordStoreApplyWithFilter();
LABEL_5:
    _Block_object_dispose(&v30, 8);
    v7 = v16[3];
    _Block_object_dispose(&v15, 8);
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v13 = mbr_identifier_translate_cold_2(v11, v12);
  return darwin_directory_user_byuuid(v13);
}

uint64_t darwin_directory_user_byuuid(uint64_t a1, const unsigned __int8 *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __darwin_directory_user_byuuid_block_invoke;
  v5[3] = &unk_1E7506698;
  v5[4] = &v6;
  v5[5] = a1;
  v15 = 2;
  v16[0] = 0;
  v16[1] = 0;
  uuid_copy(v16, a2);
  v10 = MEMORY[0x1E69E9820];
  v11 = 0x40000000;
  v12 = ___dd_foreach_record_with_uuid_block_invoke_0;
  v13 = &unk_1E75066C0;
  v14 = v5;
  DarwinDirectoryRecordStoreApplyWithFilter();
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t darwin_directory_user_all()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  DarwinDirectoryRecordStoreApply();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t darwin_directory_group_byname(uint64_t a1, const char *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = &v17;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __darwin_directory_group_byname_block_invoke;
  v16[3] = &unk_1E7506710;
  v16[4] = &v17;
  v16[5] = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

  v37 = a2;
  v38 = 0;
  v36 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 0x40000000;
  v28 = ___dd_foreach_record_with_name_block_invoke_0;
  v29 = &unk_1E75065D0;
  v30 = v16;
  v31 = &v32;
  v4 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v33[3])
  {
LABEL_6:
    _Block_object_dispose(&v32, 8);
    v2 = v18;
LABEL_7:
    v9 = v2[3];
    _Block_object_dispose(&v17, 8);
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  multiuser_flags[0] = 0;
  v5 = MEMORY[0x19A8FC650](v4);
  multiuser_config_flags = host_get_multiuser_config_flags(v5, multiuser_flags);
  if (multiuser_config_flags)
  {
    v8 = mbr_identifier_translate_cold_2(multiuser_config_flags, v7);
  }

  else
  {
    if ((multiuser_flags[0] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = strcmp(a2, "mobile");
    if (v8)
    {
      goto LABEL_6;
    }
  }

  LODWORD(v36) = 0;
  multiuser_flags[0] = 0;
  v12 = MEMORY[0x19A8FC650](v8);
  v13 = host_get_multiuser_config_flags(v12, multiuser_flags);
  if (!v13)
  {
    LODWORD(v37) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = ___dd_foreach_record_with_name_block_invoke_2_0;
    v24 = &unk_1E75065F8;
    v25 = v16;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_6;
  }

  v15 = mbr_identifier_translate_cold_2(v13, v14);
  return darwin_directory_group_bygid(v15);
}

uint64_t darwin_directory_group_bygid(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __darwin_directory_group_bygid_block_invoke;
  v14[3] = &unk_1E7506738;
  v14[4] = &v15;
  v14[5] = a1;
  v34 = 0;
  v36 = 0;
  v35 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v24 = MEMORY[0x1E69E9820];
  v25 = 0x40000000;
  v26 = ___dd_foreach_record_with_id_block_invoke_0;
  v27 = &unk_1E7506648;
  v28 = v14;
  v29 = &v30;
  v3 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v31[3])
  {
    goto LABEL_5;
  }

  multiuser_flags[0] = 0;
  v4 = MEMORY[0x19A8FC650](v3);
  multiuser_config_flags = host_get_multiuser_config_flags(v4, multiuser_flags);
  if (multiuser_config_flags)
  {
    multiuser_config_flags = mbr_identifier_translate_cold_2(multiuser_config_flags, v6);
  }

  else if (a2 != 501 || (multiuser_flags[0] & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  multiuser_flags[0] = 0;
  v10 = MEMORY[0x19A8FC650](multiuser_config_flags);
  v11 = host_get_multiuser_config_flags(v10, multiuser_flags);
  if (!v11)
  {
    LODWORD(v35) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v20 = 0x40000000;
    v21 = ___dd_foreach_record_with_id_block_invoke_2_0;
    v22 = &unk_1E7506670;
    v23 = v14;
    DarwinDirectoryRecordStoreApplyWithFilter();
LABEL_5:
    _Block_object_dispose(&v30, 8);
    v7 = v16[3];
    _Block_object_dispose(&v15, 8);
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v13 = mbr_identifier_translate_cold_2(v11, v12);
  return darwin_directory_group_byuuid(v13);
}

uint64_t darwin_directory_group_byuuid(uint64_t a1, const unsigned __int8 *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __darwin_directory_group_byuuid_block_invoke;
  v5[3] = &unk_1E7506760;
  v5[4] = &v6;
  v5[5] = a1;
  v15 = 2;
  v16[0] = 0;
  v16[1] = 0;
  uuid_copy(v16, a2);
  v10 = MEMORY[0x1E69E9820];
  v11 = 0x40000000;
  v12 = ___dd_foreach_record_with_uuid_block_invoke_0;
  v13 = &unk_1E75066C0;
  v14 = v5;
  DarwinDirectoryRecordStoreApplyWithFilter();
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t darwin_directory_group_all()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  DarwinDirectoryRecordStoreApply();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

_BYTE *darwin_directory_grouplist(uint64_t a1, const char *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = &v38;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v37 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = __darwin_directory_grouplist_block_invoke;
  v35[3] = &unk_1E75067B0;
  v35[4] = v36;
  v35[5] = &v38;
  if (!a2)
  {
    goto LABEL_7;
  }

  v58 = a2;
  v59 = 0;
  v57 = 1;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  LOBYTE(v56) = 0;
  v47 = MEMORY[0x1E69E9820];
  v48 = 0x40000000;
  v49 = ___dd_foreach_record_with_name_block_invoke_0;
  v50 = &unk_1E75065D0;
  v51 = v35;
  v52 = &v53;
  v5 = DarwinDirectoryRecordStoreApplyWithFilter();
  if ((v54[3] & 1) == 0)
  {
    multiuser_flags[0] = 0;
    v6 = MEMORY[0x19A8FC650](v5);
    multiuser_config_flags = host_get_multiuser_config_flags(v6, multiuser_flags);
    if (multiuser_config_flags)
    {
      goto LABEL_16;
    }

    if ((multiuser_flags[0] & 0x80000000) != 0)
    {
      v9 = strcmp(a2, "mobile");
      if (!v9)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    _Block_object_dispose(&v53, 8);
    v4 = v39;
LABEL_7:
    if (*(v4 + 24) != 1)
    {
      v19 = 0;
LABEL_14:
      _Block_object_dispose(v36, 8);
      _Block_object_dispose(&v38, 8);
      v20 = *MEMORY[0x1E69E9840];
      return v19;
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    *multiuser_flags = 0;
    v43 = multiuser_flags;
    v44 = 0x2000000000;
    v45 = 16;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2000000000;
    v10 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v56 = v10;
    if (v54[3])
    {
      DarwinDirectoryRecordStoreApply();
      if (*(v48 + 24))
      {
        v34 = v54[3];
        v33 = *(v48 + 24);
        v19 = LI_ils_create("L4488s4@", v12, v13, v14, v15, v16, v17, v18, a1);
      }

      else
      {
        v19 = 0;
      }

      _Block_object_dispose(&v53, 8);
      free(v54[3]);
      _Block_object_dispose(multiuser_flags, 8);
      _Block_object_dispose(&v47, 8);
      goto LABEL_14;
    }

    darwin_directory_grouplist_cold_3(v10, v11);
LABEL_16:
    v9 = mbr_identifier_translate_cold_2(multiuser_config_flags, v8);
LABEL_17:
    LODWORD(v57) = 0;
    multiuser_flags[0] = 0;
    v22 = MEMORY[0x19A8FC650](v9);
    v23 = host_get_multiuser_config_flags(v22, multiuser_flags);
    if (v23)
    {
      break;
    }

    LODWORD(v58) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v43 = 0x40000000;
    v44 = ___dd_foreach_record_with_name_block_invoke_2_0;
    v45 = &unk_1E75065F8;
    v46 = v35;
    DarwinDirectoryRecordStoreApplyWithFilter();
  }

  v25 = mbr_identifier_translate_cold_2(v23, v24);
  return __darwin_directory_user_byname_block_invoke(v25, v26, v27, v28, v29, v30, v31, v32);
}

_BYTE *__darwin_directory_user_byname_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_user(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

_BYTE *_dd_extract_user(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 32) == 1)
  {
    v8 = *(a2 + 34);
  }

  *(a2 + 4);
  v14 = *(a2 + 64);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v11 = *(a2 + 40);
  v10 = *(a2 + 8);
  return LI_ils_create("L4488ss44LssssL", a2, a3, a4, a5, a6, a7, a8, a1);
}

uint64_t ___dd_foreach_record_with_name_block_invoke_0(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

_BYTE *__darwin_directory_user_byuid_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_user(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

uint64_t ___dd_foreach_record_with_id_block_invoke_0(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

_BYTE *__darwin_directory_user_byuuid_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_user(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

void __darwin_directory_user_all_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  user = _dd_extract_user(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  if (user)
  {
    v10 = user;
    *(*(*(a1 + 32) + 8) + 24) = si_list_add(*(*(*(a1 + 32) + 8) + 24), user);

    si_item_release(v10);
  }
}

_BYTE *__darwin_directory_group_byname_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_group(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

_BYTE *_dd_extract_group(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 32) == 1)
  {
    v8 = *(a2 + 34);
  }

  v11 = *(a2 + 4);
  v12 = *(a2 + 40);
  v10 = *(a2 + 8);
  return LI_ils_create("L4488ss4*", a2, a3, a4, a5, a6, a7, a8, a1);
}

_BYTE *__darwin_directory_group_bygid_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_group(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

_BYTE *__darwin_directory_group_byuuid_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _dd_extract_group(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = 1;
  return result;
}

void __darwin_directory_group_all_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  group = _dd_extract_group(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  if (group)
  {
    v10 = group;
    *(*(*(a1 + 32) + 8) + 24) = si_list_add(*(*(*(a1 + 32) + 8) + 24), group);

    si_item_release(v10);
  }
}

uint64_t __darwin_directory_grouplist_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = *(a2 + 40);
  *(*(*(result + 40) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t __darwin_directory_grouplist_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  result = *v3;
  if (*v3)
  {
    v6 = a1[7];
    for (i = v3 + 1; ; ++i)
    {
      result = strcmp(result, v6);
      if (!result)
      {
        break;
      }

      v8 = *i;
      result = v8;
      if (!v8)
      {
        return result;
      }
    }

    v9 = *(a2 + 4);
    v10 = *(a1[4] + 8);
    v11 = *(v10 + 24);
    v12 = *(a1[5] + 8);
    if (v11 == *(v12 + 24))
    {
      *(v12 + 24) = 2 * v11;
      result = reallocf(*(*(a1[6] + 8) + 24), 4 * *(*(a1[5] + 8) + 24));
      *(*(a1[6] + 8) + 24) = result;
      v14 = *(*(a1[6] + 8) + 24);
      if (!v14)
      {
        __darwin_directory_grouplist_block_invoke_2_cold_1(result, v13);
        return pmap_getmaps(v15);
      }

      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
    }

    else
    {
      v14 = *(*(a1[6] + 8) + 24);
    }

    *(v10 + 24) = v11 + 1;
    *(v14 + 4 * v11) = v9;
  }

  return result;
}

pmaplist *__cdecl pmap_getmaps(sockaddr_in *a1)
{
  v6 = 0;
  v5 = -1;
  a1->sin_port = 28416;
  v2 = clnttcp_create(a1, 0x186A0u, 2u, &v5, 0x32u, 0x1F4u);
  if (v2)
  {
    v3 = v2;
    if ((v2->cl_ops->cl_call)())
    {
      clnt_perror(v3, "pmap_getmaps rpc problem");
    }

    (v3->cl_ops->cl_destroy)(v3);
  }

  close_NOCANCEL();
  a1->sin_port = 0;
  return v6;
}

uint64_t pmap_getport_timeout(sockaddr_in *a1, uint64_t a2, uint64_t a3, timeval a4, uint64_t *a5)
{
  if (*&a4.tv_usec)
  {
    a4 = **&a4.tv_usec;
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  a4.tv_sec = 5;
  if (a5)
  {
LABEL_3:
    v7 = *a5;
    v6 = a5[1];
  }

LABEL_5:
  v12 = 0;
  v11 = -1;
  a1->sin_port = 28416;
  v8 = clntudp_bufcreate(a1, 0x186A0u, 2u, a4, &v11, 0x190u, 0x190u);
  if (v8)
  {
    v9 = v8;
    if ((v8->cl_ops->cl_call)())
    {
      rpc_createerr.cf_stat = RPC_PMAPFAILURE;
      (v9->cl_ops->cl_geterr)(v9, &rpc_createerr.cf_error);
    }

    else if (!v12)
    {
      rpc_createerr.cf_stat = RPC_PROGNOTREGISTERED;
    }

    (v9->cl_ops->cl_destroy)(v9);
  }

  close_NOCANCEL();
  a1->sin_port = 0;
  return v12;
}

int xdr_pmap(XDR *a1, pmap *a2)
{
  if (!xdr_u_long(a1, &a2->pm_prog) || !xdr_u_long(a1, &a2->pm_vers) || !xdr_u_long(a1, &a2->pm_prot))
  {
    return 0;
  }

  return xdr_u_long(a1, &a2->pm_port);
}

int xdr_pmaplist(XDR *a1, pmaplist **a2)
{
  v2 = a2;
  x_op = a1->x_op;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *v2 != 0; ; i = 0)
  {
    v8 = i;
    result = xdr_BOOL(a1, &v8);
    if (!result)
    {
      break;
    }

    if (!v8)
    {
      return 1;
    }

    if (x_op == XDR_FREE)
    {
      v7 = *v2;
      result = xdr_reference(a1, v2, 0x18u, xdr_pmap);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = xdr_reference(a1, v2, 0x18u, xdr_pmap);
      if (!result)
      {
        return result;
      }

      v7 = *v2;
    }

    v2 = (v7 + 16);
    if (v7 != -16)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

clnt_stat pmap_rmtcall(sockaddr_in *a1, unsigned int a2, unsigned int a3, unsigned int a4, xdrproc_t a5, caddr_t a6, xdrproc_t a7, caddr_t a8, timeval a9, unsigned int *a10)
{
  v26 = -1;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  a1->sin_port = 28416;
  v27.tv_sec = 3;
  *&v27.tv_usec = 0;
  v18 = clntudp_create(a1, 0x186A0u, 2u, v27, &v26);
  if (v18)
  {
    v19 = v18;
    *&v24 = __PAIR64__(a3, a2);
    DWORD2(v24) = a4;
    *&v25 = a6;
    *(&v25 + 1) = a5;
    *&v22 = a10;
    *&v23 = a8;
    *(&v23 + 1) = a7;
    v20 = (v18->cl_ops->cl_call)(v18, 5, xdr_rmtcall_args, &v24, xdr_rmtcallres, &v22, a9.tv_sec, *&a9.tv_usec);
    (v19->cl_ops->cl_destroy)(v19);
  }

  else
  {
    v20 = RPC_FAILED;
  }

  close_NOCANCEL();
  a1->sin_port = 0;
  return v20;
}

int xdr_rmtcall_args(XDR *a1, rmtcallargs *a2)
{
  result = xdr_u_long(a1, &a2->prog);
  if (result)
  {
    result = xdr_u_long(a1, &a2->vers);
    if (result)
    {
      result = xdr_u_long(a1, &a2->proc);
      if (result)
      {
        v5 = (a1->x_ops->x_getpostn)(a1);
        result = xdr_u_long(a1, &a2->arglen);
        if (result)
        {
          v6 = (a1->x_ops->x_getpostn)(a1);
          result = (a2->xdr_args)(a1, a2->args_ptr, 0);
          if (result)
          {
            v7 = (a1->x_ops->x_getpostn)(a1);
            a2->arglen = v7 - v6;
            (a1->x_ops->x_setpostn)(a1, v5);
            result = xdr_u_long(a1, &a2->arglen);
            if (result)
            {
              (a1->x_ops->x_setpostn)(a1, v7);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

int xdr_rmtcallres(XDR *a1, rmtcallres *a2)
{
  port_ptr = a2->port_ptr;
  result = xdr_reference(a1, &port_ptr, 4u, xdr_u_long);
  if (result)
  {
    result = xdr_u_long(a1, &a2->resultslen);
    if (result)
    {
      a2->port_ptr = port_ptr;
      return (a2->xdr_results)(a1, a2->results_ptr, 0);
    }
  }

  return result;
}

uint64_t pmap_wakeup()
{
  v3 = *MEMORY[0x1E69E9840];
  if (socket(1, 1, 0) == -1)
  {
    v0 = 0xFFFFFFFFLL;
  }

  else
  {
    if (connect_NOCANCEL() == -1)
    {
      v0 = 0xFFFFFFFFLL;
    }

    else
    {
      read_NOCANCEL();
      v0 = 0;
    }

    close_NOCANCEL();
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

int xdr_callmsg(XDR *a1, rpc_msg *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_ENCODE)
  {
    oa_length = a2->ru.RM_cmb.cb_cred.oa_length;
    if (oa_length > 0x190)
    {
      return 0;
    }

    v14 = a2->ru.RM_cmb.cb_verf.oa_length;
    if (v14 > 0x190)
    {
      return 0;
    }

    v15 = (a1->x_ops->x_inline)(a1, ((oa_length + 3) & 0x3FC) + ((v14 + 3) & 0x3FCu) + 40);
    if (v15)
    {
      *v15 = bswap32(a2->rm_xid);
      v15[1] = bswap32(a2->rm_direction);
      if (a2->rm_direction)
      {
        return 0;
      }

      v15[2] = bswap32(a2->ru.RM_cmb.cb_rpcvers);
      if (a2->ru.RM_cmb.cb_rpcvers != 2)
      {
        return 0;
      }

      v15[3] = bswap32(a2->ru.RM_cmb.cb_prog);
      v15[4] = bswap32(a2->ru.RM_cmb.cb_vers);
      v15[5] = bswap32(a2->ru.RM_cmb.cb_proc);
      v15[6] = bswap32(a2->ru.RM_rmb.ru.RP_dr.ru.RJ_versions.high);
      v16 = v15 + 8;
      v15[7] = bswap32(a2->ru.RM_cmb.cb_cred.oa_length);
      v17 = a2->ru.RM_cmb.cb_cred.oa_length;
      if (v17)
      {
        memmove(v15 + 8, a2->ru.RM_cmb.cb_cred.oa_base, v17);
        v16 = (v16 + ((a2->ru.RM_cmb.cb_cred.oa_length + 3) & 0xFFFFFFFC));
      }

      *v16 = bswap32(a2->ru.RM_rmb.ru.RP_ar.ru.AR_versions.low);
      v16[1] = bswap32(a2->ru.RM_cmb.cb_verf.oa_length);
      v18 = a2->ru.RM_cmb.cb_verf.oa_length;
      if (v18)
      {
        oa_base = a2->ru.RM_cmb.cb_verf.oa_base;
        v20 = (v16 + 2);
LABEL_48:
        memmove(v20, oa_base, v18);
      }

      return 1;
    }

    x_op = a1->x_op;
  }

  if (x_op == XDR_DECODE && (v5 = (a1->x_ops->x_inline)(a1, 32)) != 0)
  {
    a2->rm_xid = bswap32(*v5);
    v6 = v5[1];
    a2->rm_direction = bswap32(v6);
    if (v6)
    {
      return 0;
    }

    v7 = v5[2];
    a2->ru.RM_cmb.cb_rpcvers = bswap32(v7);
    if (v7 != 0x2000000)
    {
      return 0;
    }

    a2->ru.RM_cmb.cb_prog = bswap32(v5[3]);
    a2->ru.RM_cmb.cb_vers = bswap32(v5[4]);
    a2->ru.RM_cmb.cb_proc = bswap32(v5[5]);
    a2->ru.RM_cmb.cb_cred.oa_flavor = bswap32(v5[6]);
    v8 = v5[7];
    v9 = bswap32(v8);
    a2->ru.RM_cmb.cb_cred.oa_length = v9;
    if (v8)
    {
      if (v9 > 0x190)
      {
        return 0;
      }

      if (!a2->ru.RM_cmb.cb_cred.oa_base)
      {
        a2->ru.RM_cmb.cb_cred.oa_base = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
        LODWORD(v9) = a2->ru.RM_cmb.cb_cred.oa_length;
      }

      v10 = (a1->x_ops->x_inline)(a1, (v9 + 3) & 0xFFFFFFFC);
      v11 = a2->ru.RM_cmb.cb_cred.oa_length;
      if (v10)
      {
        memmove(a2->ru.RM_cmb.cb_cred.oa_base, v10, v11);
      }

      else
      {
        result = xdr_opaque(a1, a2->ru.RM_cmb.cb_cred.oa_base, v11);
        if (!result)
        {
          return result;
        }
      }
    }

    v21 = (a1->x_ops->x_inline)(a1, 8);
    if (v21)
    {
      a2->ru.RM_cmb.cb_verf.oa_flavor = bswap32(*v21);
      v22 = bswap32(v21[1]);
      a2->ru.RM_cmb.cb_verf.oa_length = v22;
      if (!v22)
      {
        return 1;
      }

      goto LABEL_37;
    }

    result = xdr_enum(a1, &a2->ru.RM_cmb.cb_verf.oa_flavor);
    if (result)
    {
      result = xdr_u_int(a1, &a2->ru.RM_cmb.cb_verf.oa_length);
      if (result)
      {
        v22 = a2->ru.RM_cmb.cb_verf.oa_length;
        if (!v22)
        {
          return 1;
        }

LABEL_37:
        if (v22 > 0x190)
        {
          return 0;
        }

        if (!a2->ru.RM_cmb.cb_verf.oa_base)
        {
          a2->ru.RM_cmb.cb_verf.oa_base = malloc_type_calloc(1uLL, v22, 0x100004077774924uLL);
          v22 = a2->ru.RM_cmb.cb_verf.oa_length;
        }

        v23 = (a1->x_ops->x_inline)(a1, (v22 + 3) & 0xFFFFFFFC);
        v18 = a2->ru.RM_cmb.cb_verf.oa_length;
        if (v23)
        {
          v24 = v23;
          v20 = a2->ru.RM_cmb.cb_verf.oa_base;
          oa_base = v24;
          goto LABEL_48;
        }

        result = xdr_opaque(a1, a2->ru.RM_cmb.cb_verf.oa_base, v18);
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
    result = xdr_u_long(a1, &a2->rm_xid);
    if (result)
    {
      result = xdr_enum(a1, &a2->rm_direction);
      if (result)
      {
        if (a2->rm_direction)
        {
          return 0;
        }

        result = xdr_u_long(a1, &a2->ru.RM_cmb.cb_rpcvers);
        if (!result)
        {
          return result;
        }

        if (a2->ru.RM_cmb.cb_rpcvers != 2)
        {
          return 0;
        }

        result = xdr_u_long(a1, &a2->ru.RM_cmb.cb_prog);
        if (result)
        {
          result = xdr_u_long(a1, &a2->ru.RM_cmb.cb_vers);
          if (result)
          {
            result = xdr_u_long(a1, &a2->ru.RM_cmb.cb_proc);
            if (result)
            {
              result = xdr_opaque_auth(a1, &a2->ru.RM_rmb.ru.RP_ar.ar_verf.oa_base);
              if (result)
              {

                return xdr_opaque_auth(a1, &a2->ru.RM_rmb.ru.RP_ar.ru.AR_results);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t xdr_opaque_auth(XDR *a1, uint64_t a2)
{
  result = xdr_enum(a1, a2);
  if (result)
  {

    return xdr_bytes(a1, (a2 + 8), (a2 + 16), 0x190u);
  }

  return result;
}

uint64_t xdr_accepted_reply(XDR *a1, uint64_t a2)
{
  result = xdr_opaque_auth(a1, a2);
  if (result)
  {
    result = xdr_enum(a1, (a2 + 24));
    if (result)
    {
      v5 = *(a2 + 24);
      if (v5 == 2)
      {
        result = xdr_u_long(a1, (a2 + 32));
        if (result)
        {

          return xdr_u_long(a1, (a2 + 36));
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

        return v7(a1, v6, 0);
      }
    }
  }

  return result;
}

uint64_t xdr_rejected_reply(XDR *a1, uint64_t a2)
{
  if (!xdr_enum(a1, a2))
  {
    return 0;
  }

  if (*a2 != 1)
  {
    if (!*a2 && xdr_u_long(a1, (a2 + 4)))
    {

      return xdr_u_long(a1, (a2 + 8));
    }

    return 0;
  }

  return xdr_enum(a1, (a2 + 4));
}

int xdr_replymsg(XDR *a1, rpc_msg *a2)
{
  if (!xdr_u_long(a1, &a2->rm_xid) || !xdr_enum(a1, &a2->rm_direction) || a2->rm_direction != REPLY)
  {
    return 0;
  }

  return xdr_union(a1, &a2->ru, &a2->ru.RM_rmb.ru, &reply_dscrm, 0);
}

int xdr_callhdr(XDR *a1, rpc_msg *a2)
{
  *&a2->rm_direction = 0x200000000;
  p_rm_direction = &a2->rm_direction;
  if (a1->x_op || !xdr_u_long(a1, &a2->rm_xid) || !xdr_enum(a1, p_rm_direction) || !xdr_u_long(a1, p_rm_direction + 1) || !xdr_u_long(a1, &a2->ru.RM_cmb.cb_prog))
  {
    return 0;
  }

  return xdr_u_long(a1, &a2->ru.RM_cmb.cb_vers);
}

void _seterr_reply(rpc_msg *a1, rpc_err *a2)
{
  cb_rpcvers = a1->ru.RM_cmb.cb_rpcvers;
  if (cb_rpcvers == 1)
  {
    oa_flavor = a1->ru.RM_rmb.ru.RP_ar.ar_verf.oa_flavor;
    if (!oa_flavor)
    {
      a2->re_status = RPC_VERSMISMATCH;
      a2->ru.RE_errno = a1->ru.RM_cmb.cb_proc;
      oa_flavor = a1->ru.RM_cmb.cb_cred.oa_flavor;
      goto LABEL_23;
    }

    if (oa_flavor != 1)
    {
      v6 = 0x100000010;
LABEL_22:
      *&a2->re_status = v6;
      goto LABEL_23;
    }

    a2->re_status = RPC_AUTHERROR;
    cb_proc = a1->ru.RM_cmb.cb_proc;
LABEL_12:
    a2->ru.RE_errno = cb_proc;
    return;
  }

  if (cb_rpcvers)
  {
    a2->re_status = RPC_FAILED;
    cb_proc = a1->ru.RM_cmb.cb_rpcvers;
    goto LABEL_12;
  }

  oa_flavor = a1->ru.RM_cmb.cb_cred.oa_length;
  if (oa_flavor > 2)
  {
    switch(oa_flavor)
    {
      case 3:
        v5 = RPC_PROCUNAVAIL;
        break;
      case 4:
        v5 = RPC_CANTDECODEARGS;
        break;
      case 5:
        v5 = RPC_SYSTEMERROR;
        break;
      default:
LABEL_21:
        v6 = 16;
        goto LABEL_22;
    }
  }

  else
  {
    if (!oa_flavor)
    {
      a2->re_status = RPC_SUCCESS;
      return;
    }

    if (oa_flavor != 1)
    {
      if (oa_flavor == 2)
      {
        a2->re_status = RPC_PROGVERSMISMATCH;
        a2->ru.RE_errno = a1->ru.RM_cmb.cb_verf.oa_flavor;
        oa_flavor = a1->ru.RM_rmb.ru.RP_ar.ru.AR_versions.high;
LABEL_23:
        a2->ru.RE_vers.high = oa_flavor;
        return;
      }

      goto LABEL_21;
    }

    v5 = RPC_PROGUNAVAIL;
  }

  a2->re_status = v5;
}

void xprt_register(SVCXPRT *a1)
{
  xp_sock = a1->xp_sock;
  v3 = xports;
  if (!xports)
  {
    v3 = malloc_type_calloc(1uLL, 0x2000uLL, 0x2004093837F09uLL);
    xports = v3;
  }

  if (xp_sock <= 1023)
  {
    v3[xp_sock] = a1;
    if (__darwin_check_fd_set_overflow(xp_sock, &svc_fdset, 0))
    {
      *(svc_fdset.fds_bits + ((xp_sock >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << xp_sock;
    }

    v4 = svc_maxfd;
    if (svc_maxfd <= xp_sock)
    {
      v4 = xp_sock;
    }

    svc_maxfd = v4;
  }
}

void xprt_unregister(SVCXPRT *a1)
{
  xp_sock = a1->xp_sock;
  if (xp_sock <= 1023 && *(xports + 8 * xp_sock) == a1)
  {
    *(xports + 8 * xp_sock) = 0;
    if (__darwin_check_fd_set_overflow(xp_sock, &svc_fdset, 0))
    {
      *(svc_fdset.fds_bits + ((xp_sock >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << xp_sock);
    }

    if (xp_sock == svc_maxfd)
    {
      v2 = (xp_sock & (xp_sock >> 31)) - 1;
      v3 = xp_sock - 1;
      while (1)
      {
        v4 = __OFSUB__(xp_sock, 1);
        LODWORD(xp_sock) = xp_sock - 1;
        if (xp_sock < 0 != v4)
        {
          break;
        }

        if (*(xports + 8 * v3--))
        {
          goto LABEL_11;
        }
      }

      LODWORD(xp_sock) = v2;
LABEL_11:
      svc_maxfd = xp_sock;
    }
  }
}

int svc_register(SVCXPRT *a1, unsigned int a2, unsigned int a3, void (*a4)(void), int a5)
{
  v10 = svc_head;
  if (svc_head)
  {
    while (*(v10 + 8) != a2 || *(v10 + 12) != a3)
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    if (*(v10 + 16) != a4)
    {
      LODWORD(v11) = 0;
      return v11;
    }
  }

  else
  {
LABEL_5:
    v11 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00409D8FE3EAuLL);
    if (!v11)
    {
      return v11;
    }

    v11[2] = a2;
    v11[3] = a3;
    *(v11 + 2) = a4;
    *v11 = svc_head;
    svc_head = v11;
  }

  if (a5)
  {
    xp_port = a1->xp_port;

    LODWORD(v11) = pmap_set(a2, a3, a5, xp_port);
  }

  else
  {
    LODWORD(v11) = 1;
  }

  return v11;
}

void svc_unregister(unsigned int a1, unsigned int a2)
{
  v2 = svc_head;
  if (svc_head)
  {
    v5 = 0;
    while (1)
    {
      v6 = v2;
      if (*(v2 + 2) == a1 && *(v2 + 3) == a2)
      {
        break;
      }

      v2 = *v2;
      v5 = v6;
      if (!*v6)
      {
        return;
      }
    }

    if (!v5)
    {
      v5 = &svc_head;
    }

    *v5 = *v2;
    free(v2);

    pmap_unset(a1, a2);
  }
}

int svc_sendreply(SVCXPRT *a1, xdrproc_t a2, char *a3)
{
  v6 = 0u;
  v7 = 0u;
  v3 = *&a1->xp_verf.oa_flavor;
  v5[0] = 0u;
  v5[1] = v3;
  DWORD1(v5[0]) = 1;
  *&v6 = *&a1->xp_verf.oa_length;
  *&v7 = a3;
  *(&v7 + 1) = a2;
  v8 = 0;
  return a1->xp_ops->xp_reply(a1, v5, a3);
}

void svcerr_noproc(SVCXPRT *a1)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = *&a1->xp_verf.oa_flavor;
  v2[0] = 0u;
  v2[1] = v1;
  DWORD1(v2[0]) = 1;
  *&v3 = *&a1->xp_verf.oa_length;
  DWORD2(v3) = 3;
  a1->xp_ops->xp_reply(a1, v2);
}

void svcerr_decode(SVCXPRT *a1)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = *&a1->xp_verf.oa_flavor;
  v2[0] = 0u;
  v2[1] = v1;
  DWORD1(v2[0]) = 1;
  *&v3 = *&a1->xp_verf.oa_length;
  DWORD2(v3) = 4;
  a1->xp_ops->xp_reply(a1, v2);
}

void svcerr_systemerr(SVCXPRT *a1)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = *&a1->xp_verf.oa_flavor;
  v2[0] = 0u;
  v2[1] = v1;
  DWORD1(v2[0]) = 1;
  *&v3 = *&a1->xp_verf.oa_length;
  DWORD2(v3) = 5;
  a1->xp_ops->xp_reply(a1, v2);
}

void svcerr_auth(SVCXPRT *a1, auth_stat a2)
{
  v2 = 0u;
  v5 = 0;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  *(&v2 + 4) = 0x100000001;
  v3 = 1;
  v4 = a2;
  a1->xp_ops->xp_reply(a1, &v2);
}

void svcerr_weakauth(SVCXPRT *a1)
{
  v1[0] = 0u;
  v2 = 0;
  memset(&v1[2], 0, 32);
  *(v1 + 4) = 0x100000001;
  v1[1] = 0x500000001uLL;
  a1->xp_ops->xp_reply(a1, v1);
}

void svcerr_noprog(SVCXPRT *a1)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = *&a1->xp_verf.oa_flavor;
  v2[0] = 0u;
  v2[1] = v1;
  DWORD1(v2[0]) = 1;
  *&v3 = *&a1->xp_verf.oa_length;
  DWORD2(v3) = 1;
  a1->xp_ops->xp_reply(a1, v2);
}

void svc_getreq(int a1)
{
  memset(&v1.fds_bits[1], 0, 124);
  v1.fds_bits[0] = a1;
  svc_getreqset(&v1);
}

void svc_getreqset(fd_set *a1)
{
  v27[50] = *MEMORY[0x1E69E9840];
  v19.ru.RM_rmb.ru.RP_ar.ru.AR_results.where = 0;
  memset(&v19, 0, 32);
  memset(&v18, 0, 40);
  *(&v19.ru.RM_rmb.ru.RP_dr + 1) = &v25;
  v19.ru.RM_cmb.cb_verf.oa_base = &v26;
  *(&v19.ru.RM_rmb + 7) = 0;
  v18.rq_clntcred = v27;
  v18.rq_xprt = 0;
  v1 = svc_maxfd;
  if ((svc_maxfd & 0x80000000) == 0)
  {
    v2 = 0;
    while (1)
    {
      v3 = a1->fds_bits[0];
      a1 = (a1 + 4);
      if (v3)
      {
        break;
      }

LABEL_34:
      v2 += 32;
      if (v2 > v1)
      {
        goto LABEL_35;
      }
    }

    v4 = __clz(__rbit32(v3));
    v5 = v2 | 1;
    while ((v5 + v4) <= svc_maxfd + 1)
    {
      v6 = *(xports + 8 * (v5 + v4) - 8);
      if (v6)
      {
        do
        {
          if ((**(v6 + 8))(v6, &v19))
          {
            v18.rq_xprt = v6;
            *&v18.rq_prog = *(&v19.ru.RM_rmb.rp_stat + 1);
            v18.rq_proc = v19.ru.RM_cmb.cb_proc;
            v18.rq_cred = v19.ru.RM_cmb.cb_cred;
            v7 = _authenticate(&v18, &v19);
            if (v7)
            {
              v20 = 0u;
              *(&v21 + 1) = 0;
              v24 = 0;
              v22 = 0u;
              v23 = 0u;
              *(&v20 + 4) = 0x100000001;
              LODWORD(v21) = 1;
              DWORD1(v21) = v7;
            }

            else
            {
              v8 = svc_head;
              if (svc_head)
              {
                v9 = 0;
                v10 = 1;
                v11 = -1;
                do
                {
                  while (*(v8 + 8) == v18.rq_prog)
                  {
                    v12 = *(v8 + 12);
                    if (v12 == v18.rq_vers)
                    {
                      (*(v8 + 16))(&v18, v6);
                      goto LABEL_28;
                    }

                    v10 = 0;
                    if (v12 < v11)
                    {
                      v11 = *(v8 + 12);
                    }

                    if (v12 > v9)
                    {
                      v9 = *(v8 + 12);
                    }

                    v8 = *v8;
                    if (!v8)
                    {
                      goto LABEL_26;
                    }
                  }

                  v8 = *v8;
                }

                while (v8);
                if (v10)
                {
                  goto LABEL_25;
                }

LABEL_26:
                v24 = 0;
                v22 = 0u;
                v23 = 0u;
                v20 = 0u;
                v21 = 0u;
                DWORD1(v20) = 1;
                v21 = *(v6 + 40);
                *&v22 = *(v6 + 56);
                DWORD2(v22) = 2;
                *&v23 = __PAIR64__(v9, v11);
              }

              else
              {
LABEL_25:
                v24 = 0;
                v22 = 0u;
                v23 = 0u;
                v20 = 0u;
                v21 = 0u;
                DWORD1(v20) = 1;
                v21 = *(v6 + 40);
                *&v22 = *(v6 + 56);
                DWORD2(v22) = 1;
              }
            }

            (*(*(v6 + 8) + 24))(v6, &v20);
          }

LABEL_28:
          v13 = (*(*(v6 + 8) + 8))(v6);
        }

        while (v13 == 1);
        if (!v13)
        {
          (*(*(v6 + 8) + 40))(v6);
        }
      }

      v14 = 1 << v4;
      v4 = __clz(__rbit32((1 << v4) ^ v3));
      v15 = v14 == v3;
      v3 ^= v14;
      if (v15)
      {
        v1 = svc_maxfd;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  v16 = *MEMORY[0x1E69E9840];
}

auth_stat _authenticate(svc_req *a1, rpc_msg *a2)
{
  v4 = *(&a2->ru.RM_rmb.ru.RP_dr.ru.RJ_why + 1);
  *&a1->rq_cred.oa_length = *(&a2->ru.RM_rmb.ru.RP_dr + 3);
  *&a1->rq_cred.oa_flavor = v4;
  rq_xprt = a1->rq_xprt;
  rq_xprt->xp_verf.oa_flavor = _null_auth.oa_flavor;
  rq_xprt->xp_verf.oa_length = 0;
  switch(a1->rq_cred.oa_flavor)
  {
    case 0:
      return 0;
    case 1:
      v24 = v2;
      v25 = v3;
      memset(&v23, 0, sizeof(v23));
      rq_clntcred = a1->rq_clntcred;
      rq_clntcred->aup_machname = &rq_clntcred[1];
      rq_clntcred->aup_gids = &rq_clntcred[7].aup_uid;
      oa_length = a2->ru.RM_cmb.cb_cred.oa_length;
      xdrmem_create(&v23, a2->ru.RM_cmb.cb_cred.oa_base, oa_length, XDR_DECODE);
      v10 = (v23.x_ops->x_inline)(&v23, oa_length);
      if (v10)
      {
        rq_clntcred->aup_time = bswap32(*v10);
        v11 = bswap32(v10[1]);
        if (v11 > 0xFF)
        {
          goto LABEL_17;
        }

        v12 = v10 + 2;
        memmove(rq_clntcred->aup_machname, v10 + 2, v11);
        rq_clntcred->aup_machname[v11] = 0;
        v13 = (v12 + ((v11 + 3) & 0xFFFFFFFC));
        rq_clntcred->aup_uid = bswap32(*v13);
        rq_clntcred->aup_gid = bswap32(v13[1]);
        v14 = v13[2];
        v15 = bswap32(v14);
        if (v15 > 0x10)
        {
          goto LABEL_17;
        }

        rq_clntcred->aup_len = v15;
        if (v14)
        {
          v16 = v13 + 3;
          aup_gids = rq_clntcred->aup_gids;
          if (v15 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v15;
          }

          do
          {
            v19 = *v16++;
            *aup_gids++ = bswap32(v19);
            --v18;
          }

          while (v18);
        }

        if (((v11 + 3) & 0x1FC) + 4 * v15 + 20 > oa_length)
        {
          goto LABEL_17;
        }

LABEL_15:
        v20 = AUTH_OK;
        v21 = a1->rq_xprt;
        v21->xp_verf.oa_flavor = 0;
        v21->xp_verf.oa_length = 0;
        goto LABEL_18;
      }

      if (xdr_authunix_parms(&v23, rq_clntcred))
      {
        goto LABEL_15;
      }

      v23.x_op = XDR_FREE;
      xdr_authunix_parms(&v23, rq_clntcred);
LABEL_17:
      v20 = AUTH_BADCRED;
LABEL_18:
      x_destroy = v23.x_ops->x_destroy;
      if (x_destroy)
      {
        (x_destroy)(&v23);
      }

      return v20;
    case 2:
      return 2;
    default:
      return 2;
  }
}

SVCXPRT *svcraw_create(void)
{
  v0 = malloc_type_calloc(1uLL, 0x2470uLL, 0x10F004012DF63FBuLL);
  if (!v0)
  {
    return 0;
  }

  v1 = (v0 + 8800);
  *(v0 + 4402) = 0;
  *(v0 + 2200) = 0;
  *(v0 + 1101) = server_ops;
  *(v0 + 1106) = v0 + 8928;
  xdrmem_create(v0 + 185, v0, 0x2260u, XDR_FREE);
  return v1;
}

SVCXPRT *__cdecl svctcp_create(int a1, unsigned int a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 16;
  v6 = a1;
  if (a1 == -1)
  {
    v6 = socket(2, 1, 6);
    if (v6 < 0)
    {
      perror("svctcp_.c - udp socket creation problem");
      goto LABEL_11;
    }
  }

  *&v14.sin_len = 512;
  *v14.sin_zero = 0;
  if (bindresvport(v6, &v14))
  {
    v14.sin_port = 0;
    bind(v6, &v14, 0x10u);
  }

  if (getsockname(v6, &v14, &v13) || listen(v6, 2))
  {
    perror("svctcp_.c - cannot getsockname or listen");
    if (a1 == -1)
    {
      close_NOCANCEL();
    }

    goto LABEL_11;
  }

  v7 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (!v7)
  {
    fwrite("svctcp_create: out of memory\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
LABEL_11:
    v10 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  *v7 = a2;
  *(v7 + 1) = a3;
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10300405518D66FuLL);
  v10 = v9;
  if (v9)
  {
    v9->xp_p2 = 0;
    v9->xp_verf = _null_auth;
    v9->xp_p1 = v8;
    v9->xp_ops = svctcp_rendezvous_op;
    v9->xp_port = bswap32(v14.sin_port) >> 16;
    v9->xp_sock = v6;
    xprt_register(v9);
  }

  else
  {
    free(v8);
    fwrite("svctcp_create: out of memory\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t rendezvous_request(unsigned int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *a1;
    v4 = accept_NOCANCEL();
    if ((v4 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_6;
    }
  }

  v5 = makefd_xprt(v4, *v2, v2[1]);
  v5->xp_raddr = 0uLL;
  v5->xp_addrlen = 16;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void svctcp_destroy(SVCXPRT *a1)
{
  xp_p1 = a1->xp_p1;
  xprt_unregister(a1);
  xp_sock = a1->xp_sock;
  close_NOCANCEL();
  if (a1->xp_port)
  {
    a1->xp_port = 0;
  }

  else
  {
    v4 = *(xp_p1[2] + 56);
    if (v4)
    {
      v4(xp_p1 + 1);
    }
  }

  free(xp_p1);

  free(a1);
}

SVCXPRT *makefd_xprt(int a1, unsigned int a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x50uLL, 0x10300405518D66FuLL);
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x1C8uLL, 0x10F00403D1B6E79uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = 2;
      xdrrec_create((v7 + 8), a2, a3, v6, readtcp_0, writetcp_0);
      v6->xp_p1 = v8;
      v6->xp_p2 = 0;
      v6->xp_verf.oa_base = v8 + 56;
      v6->xp_addrlen = 0;
      v6->xp_ops = &svctcp_op;
      v6->xp_port = 0;
      v6->xp_sock = a1;
      xprt_register(v6);
    }

    else
    {
      fwrite("svc_tcp: makefd_xprt: out of memory\n", 0x24uLL, 1uLL, *MEMORY[0x1E69E9848]);
      free(v6);
      return 0;
    }
  }

  else
  {
    fwrite("svc_tcp: makefd_xprt: out of memory\n", 0x24uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  return v6;
}

uint64_t readtcp_0(int *a1)
{
  v2 = *a1;
  v3 = 1 << v2;
  v4 = v2 >> 5;
  do
  {
    while (1)
    {
      v6 = svc_fdset;
      if (__darwin_check_fd_set_overflow(v2, &v6, 0))
      {
        v6.fds_bits[v4] |= v3;
      }

      if (select_NOCANCEL() > 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_11;
      }
    }
  }

  while (!__darwin_check_fd_set_overflow(v2, &v6, 0) || (v6.fds_bits[v4] & v3) == 0);
  result = read_NOCANCEL();
  if (result <= 0)
  {
LABEL_11:
    **(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t writetcp_0(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = a3;
    while (1)
    {
      v7 = *a1;
      v8 = write_NOCANCEL();
      if (v8 < 0)
      {
        break;
      }

      a2 += v8 & 0x7FFFFFFF;
      v9 = __OFSUB__(v6, v8);
      v6 -= v8;
      if ((v6 < 0) ^ v9 | (v6 == 0))
      {
        return v3;
      }
    }

    **(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t svctcp_recv(uint64_t a1, rpc_msg *a2)
{
  v3 = *(a1 + 64);
  *(v3 + 8) = 1;
  result = xdrrec_skiprecord((v3 + 8));
  if (result)
  {
    result = xdr_callmsg((v3 + 8), a2);
    if (result)
    {
      *(v3 + 4) = a2->rm_xid;
      return 1;
    }
  }

  return result;
}

uint64_t svctcp_stat(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!*v1)
  {
    return 0;
  }

  if (xdrrec_eof((v1 + 8)))
  {
    return 2;
  }

  return 1;
}

uint64_t svctcp_reply(uint64_t a1, rpc_msg *a2)
{
  v2 = *(a1 + 64);
  *(v2 + 8) = 0;
  v2 += 8;
  a2->rm_xid = *(v2 - 4);
  v3 = xdr_replymsg(v2, a2);
  xdrrec_endofrecord(v2, 1);
  return v3;
}

uint64_t svctcp_freeargs(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v3 = *(a1 + 64);
  *(v3 + 8) = 2;
  return a2(v3 + 8, a3, 0);
}

SVCXPRT *__cdecl svcudp_bufcreate(int a1, unsigned int a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 16;
  v6 = a1;
  if (a1 == -1)
  {
    v6 = socket(2, 2, 17);
    if (v6 < 0)
    {
      perror("svcudp_create: socket creation problem");
      goto LABEL_17;
    }
  }

  *&v17.sin_len = 512;
  *v17.sin_zero = 0;
  if (bindresvport(v6, &v17))
  {
    v17.sin_port = 0;
    bind(v6, &v17, 0x10u);
  }

  if (getsockname(v6, &v17, &v16))
  {
    perror("svcudp_create - cannot getsockname");
    if (a1 == -1)
    {
      close_NOCANCEL();
    }

    goto LABEL_17;
  }

  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10300405518D66FuLL);
  if (!v7)
  {
    fwrite("svcudp_create: out of memory\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_18;
  }

  v8 = malloc_type_calloc(1uLL, 0x1D0uLL, 0x10F0040882F3134uLL);
  if (!v8)
  {
    v13 = v7;
LABEL_16:
    free(v13);
    fwrite("svcudp_create: out of memory\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  if (a2 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  v11 = (v10 + 3) & 0xFFFFFFFC;
  *v8 = v11;
  v12 = malloc_type_calloc(1uLL, v11, 0xEBBED73AuLL);
  v7->xp_p1 = v12;
  if (!v12)
  {
    free(v7);
    v13 = v9;
    goto LABEL_16;
  }

  xdrmem_create((v9 + 2), v12, *v9, XDR_DECODE);
  *(v9 + 57) = 0;
  v7->xp_p2 = v9;
  v7->xp_verf.oa_base = (v9 + 14);
  v7->xp_ops = &svcudp_op;
  v7->xp_port = bswap32(v17.sin_port) >> 16;
  v7->xp_sock = v6;
  xprt_register(v7);
LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t svcudp_recv(unsigned int *a1, rpc_msg *a2)
{
  v4 = *(a1 + 9);
  do
  {
    a1[4] = 16;
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *v4;
    v8 = recvfrom_NOCANCEL();
  }

  while (v8 == -1 && *__error() == 4);
  if ((v8 & 0xFFFFFFF0) == 0)
  {
    return 0;
  }

  v4[2] = 1;
  (*(*(v4 + 2) + 40))(v4 + 2, 0);
  result = xdr_callmsg((v4 + 2), a2);
  if (result)
  {
    v4[1] = a2->rm_xid;
    if (*(v4 + 57))
    {
      v10 = *(a1 + 9);
      v11 = *(v10 + 456);
      v12 = *(*(v11 + 8) + 8 * (*(v10 + 4) % (4 * *v11)));
      if (v12)
      {
        v13 = *(v10 + 4);
        while (*v12 != v13 || *(v12 + 4) != *(v11 + 36) || *(v12 + 8) != *(v11 + 32) || *(v12 + 12) != *(v11 + 28) || *(v12 + 16) != *(v11 + 40) || *(v12 + 24) != *(v11 + 48))
        {
          v12 = *(v12 + 48);
          if (!v12)
          {
            goto LABEL_18;
          }
        }

        v15 = *(v12 + 32);
        v16 = *(v12 + 40);
        v17 = *a1;
        v18 = a1[4];
        sendto_NOCANCEL();
      }

      else
      {
LABEL_18:
        *(v11 + 36) = a2->ru.RM_cmb.cb_proc;
        *(v11 + 32) = a2->ru.RM_cmb.cb_vers;
        *(v11 + 28) = a2->ru.RM_cmb.cb_prog;
        *(v11 + 40) = *(a1 + 5);
      }
    }

    return 1;
  }

  return result;
}

uint64_t svcudp_reply(unsigned int *a1, rpc_msg *a2)
{
  v4 = *(a1 + 9);
  *(v4 + 8) = 0;
  (*(*(v4 + 16) + 40))(v4 + 8, 0);
  a2->rm_xid = *(v4 + 4);
  result = xdr_replymsg((v4 + 8), a2);
  if (result)
  {
    v6 = (*(*(v4 + 16) + 32))(v4 + 8);
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = a1[4];
    if (sendto_NOCANCEL() != v6)
    {
      return 0;
    }

    result = 1;
    if ((v6 & 0x80000000) == 0)
    {
      if (*(v4 + 456))
      {
        v10 = *(a1 + 9);
        v11 = *(v10 + 57);
        v12 = *(*(v11 + 16) + 8 * *(v11 + 24));
        if (v12)
        {
          v13 = (*(v11 + 8) + 8 * (*v12 % (4 * *v11)));
          do
          {
            v14 = v13;
            v15 = *v13;
            v13 = (*v13 + 48);
            if (v15)
            {
              v16 = v15 == v12;
            }

            else
            {
              v16 = 1;
            }
          }

          while (!v16);
          if (v15)
          {
            *v14 = *(v12 + 6);
            v17 = *(v12 + 4);
LABEL_18:
            *(v12 + 10) = v6;
            *(v12 + 4) = *(a1 + 8);
            *(a1 + 8) = v17;
            xdrmem_create((v10 + 2), v17, *v10, XDR_ENCODE);
            v20 = v10[1];
            *v12 = v20;
            *(v12 + 4) = vrev64_s32(*(v11 + 32));
            *(v12 + 3) = *(v11 + 28);
            *(v12 + 1) = *(v11 + 40);
            v21 = v20 % (4 * **(*(a1 + 9) + 456));
            v22 = *(v11 + 8);
            *(v12 + 6) = *(v22 + 8 * v21);
            *(v22 + 8 * v21) = v12;
            v23 = *(v11 + 24);
            *(*(v11 + 16) + 8 * v23) = v12;
            *(v11 + 24) = (v23 + 1) % *v11;
            return 1;
          }

          v24 = *MEMORY[0x1E69E9848];
          v25 = "cache_set: victim not found";
        }

        else
        {
          v18 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004077396577uLL);
          if (v18)
          {
            v12 = v18;
            v19 = malloc_type_calloc(1uLL, *v10, 0xB6273AB5uLL);
            if (v19)
            {
              v17 = v19;
              goto LABEL_18;
            }

            free(v12);
            v24 = *MEMORY[0x1E69E9848];
            v25 = "cache_set: could not allocate new rpc_buffer";
          }

          else
          {
            v24 = *MEMORY[0x1E69E9848];
            v25 = "cache_set: victim alloc failed";
          }
        }

        fprintf(v24, "%s\n", v25);
        return 1;
      }
    }
  }

  return result;
}

uint64_t svcudp_freeargs(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v3 = *(a1 + 72);
  *(v3 + 8) = 2;
  return a2(v3 + 8, a3, 0);
}

void svcudp_destroy(SVCXPRT *a1)
{
  xp_p2 = a1->xp_p2;
  xprt_unregister(a1);
  xp_sock = a1->xp_sock;
  close_NOCANCEL();
  v4 = *(xp_p2[2] + 56);
  if (v4)
  {
    v4(xp_p2 + 1);
  }

  free(a1->xp_p1);
  free(xp_p2);

  free(a1);
}

void xdr_free(xdrproc_t a1, void *a2)
{
  memset(v2, 0, sizeof(v2));
  LODWORD(v2[0]) = 2;
  (a1)(v2, a2, 0);
}

int xdr_int(XDR *a1, int *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_u_int(XDR *a1, unsigned int *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_long(XDR *a1, int *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    return (a1->x_ops->x_getlong)();
  }

  if (x_op)
  {
    return 0;
  }

  return (a1->x_ops->x_putlong)();
}

int xdr_u_long(XDR *a1, unsigned int *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    return (a1->x_ops->x_getlong)();
  }

  if (x_op)
  {
    return 0;
  }

  return (a1->x_ops->x_putlong)();
}

int xdr_int32_t(XDR *a1, int32_t *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_u_int32_t(XDR *a1, u_int32_t *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_short(XDR *a1, __int16 *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_u_short(XDR *a1, unsigned __int16 *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_int16_t(XDR *a1, int16_t *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_u_int16_t(XDR *a1, u_int16_t *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2;
  return (a1->x_ops->x_putlong)();
}

int xdr_char(XDR *a1, char *a2)
{
  v4 = *a2;
  result = xdr_int(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

int xdr_u_char(XDR *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  result = xdr_u_int(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

int xdr_BOOL(XDR *a1, int *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (!result)
    {
      return result;
    }

    *a2 = 0;
    return 1;
  }

  if (x_op)
  {
    return 0;
  }

  v5 = *a2 != 0;
  return (a1->x_ops->x_putlong)();
}

int xdr_opaque(XDR *a1, char *a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3 & 3;
  x_op = a1->x_op;
  if (a1->x_op)
  {
    if (x_op != XDR_FREE)
    {
      if (x_op != XDR_DECODE)
      {
        return 0;
      }

      v6 = (a1->x_ops->x_getbytes)(a1, a2);
      result = v6 != 0;
      if (v4)
      {
        if (v6)
        {
          return (a1->x_ops->x_getbytes)(a1, v10, 4 - v4);
        }
      }

      return result;
    }

    return 1;
  }

  v8 = (a1->x_ops->x_putbytes)(a1, a2);
  result = v8 != 0;
  if (v4 && v8)
  {
    x_putbytes = a1->x_ops->x_putbytes;

    return (x_putbytes)(a1, &xdr_zero, 4 - v4);
  }

  return result;
}

int xdr_bytes(XDR *a1, char **a2, unsigned int *a3, unsigned int a4)
{
  v8 = *a2;
  result = xdr_u_int(a1, a3);
  if (!result)
  {
    return result;
  }

  v10 = *a3;
  x_op = a1->x_op;
  if (v10 > a4)
  {
    if (x_op != XDR_FREE)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (x_op)
  {
    if (x_op == XDR_FREE)
    {
LABEL_14:
      if (v8)
      {
        free(v8);
        *a2 = 0;
      }

      return 1;
    }

    if (x_op == XDR_DECODE)
    {
      if (!v10)
      {
        return 1;
      }

      if (v8)
      {
        goto LABEL_11;
      }

      v8 = malloc_type_calloc(1uLL, v10, 0xD6C8CA3uLL);
      *a2 = v8;
      if (v8)
      {
        goto LABEL_11;
      }

      warnx("xdr_bytes: out of memory");
    }

    return 0;
  }

LABEL_11:

  return xdr_opaque(a1, v8, v10);
}

int xdr_union(XDR *a1, int *a2, char *a3, const xdr_discrim *a4, xdrproc_t a5)
{
  if (!xdr_long(a1, a2))
  {
    return 0;
  }

  proc = a4->proc;
  if (!proc)
  {
LABEL_8:
    proc = a5;
    if (a5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a4->value != *a2)
  {
    p_proc = &a4[1].proc;
    do
    {
      proc = *p_proc;
      if (!*p_proc)
      {
        goto LABEL_8;
      }

      v12 = *(p_proc - 2);
      p_proc += 2;
    }

    while (v12 != *a2);
  }

LABEL_9:

  return (proc)(a1, a3, 0);
}

int xdr_string(XDR *a1, char **a2, unsigned int a3)
{
  v6 = *a2;
  v10 = 0;
  if (a1->x_op)
  {
    if (a1->x_op != XDR_FREE)
    {
      goto LABEL_5;
    }

    if (!v6)
    {
      return 1;
    }
  }

  v10 = strlen(v6);
LABEL_5:
  result = xdr_u_int(a1, &v10);
  if (!result)
  {
    return result;
  }

  v8 = v10;
  if (v10 > a3)
  {
    return 0;
  }

  x_op = a1->x_op;
  if (a1->x_op == XDR_ENCODE)
  {
    goto LABEL_15;
  }

  if (x_op == XDR_FREE)
  {
    free(v6);
    *a2 = 0;
    return 1;
  }

  if (x_op != XDR_DECODE)
  {
    return 0;
  }

  if (v10 == -1)
  {
    return 1;
  }

  if (!v6)
  {
    v6 = malloc_type_calloc(1uLL, v10 + 1, 0x60F6F296uLL);
    *a2 = v6;
    if (!v6)
    {
      warnx("xdr_string: out of memory");
      return 0;
    }
  }

  v6[v8] = 0;
LABEL_15:

  return xdr_opaque(a1, v6, v8);
}

int xdr_int64_t(XDR *a1, int64_t *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    goto LABEL_9;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)(a1, v7);
    if (!result)
    {
      goto LABEL_11;
    }

    result = (a1->x_ops->x_getlong)(a1, v7 + 4);
    if (!result)
    {
      goto LABEL_11;
    }

    *a2 = HIDWORD(v7[0]) | (LODWORD(v7[0]) << 32);
LABEL_9:
    result = 1;
    goto LABEL_11;
  }

  if (x_op)
  {
    result = 0;
  }

  else
  {
    v7[0] = __ROR8__(*a2, 32);
    result = (a1->x_ops->x_putlong)(a1, v7);
    if (result)
    {
      result = (a1->x_ops->x_putlong)(a1, v7 + 4);
    }
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int xdr_u_int64_t(XDR *a1, u_int64_t *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    goto LABEL_9;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)(a1, v7);
    if (!result)
    {
      goto LABEL_11;
    }

    result = (a1->x_ops->x_getlong)(a1, v7 + 4);
    if (!result)
    {
      goto LABEL_11;
    }

    *a2 = HIDWORD(v7[0]) | (LODWORD(v7[0]) << 32);
LABEL_9:
    result = 1;
    goto LABEL_11;
  }

  if (x_op)
  {
    result = 0;
  }

  else
  {
    v7[0] = __ROR8__(*a2, 32);
    result = (a1->x_ops->x_putlong)(a1, v7);
    if (result)
    {
      result = (a1->x_ops->x_putlong)(a1, v7 + 4);
    }
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int xdr_array(XDR *a1, char **a2, unsigned int *a3, unsigned int a4, unsigned int a5, xdrproc_t a6)
{
  v12 = *a2;
  if (!xdr_u_int(a1, a3))
  {
    return 0;
  }

  v13 = *a3;
  if ((v13 > a4 || ((a5 * v13) & 0xFFFFFFFF00000000) != 0) && a1->x_op != XDR_FREE)
  {
    return 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (a1->x_op == XDR_DECODE)
  {
    if (v13)
    {
      v18 = malloc_type_calloc(1uLL, v13 * a5, 0xF8680B8uLL);
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
          v16 = (a6)(a1, v12, 0);
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

      warnx("xdr_array: out of memory");
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
  if (a1->x_op == XDR_FREE)
  {
    free(*a2);
    *a2 = 0;
  }

  return v17;
}

int xdr_vector(XDR *a1, char *a2, unsigned int a3, unsigned int a4, xdrproc_t a5)
{
  if (!a3)
  {
    return 1;
  }

  v6 = a3;
  v9 = a4;
  while (1)
  {
    result = (a5)(a1, a2, 0);
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

int xdr_float(XDR *a1, float *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  if (x_op == XDR_DECODE)
  {
    result = (a1->x_ops->x_getlong)();
    if (result)
    {
      *a2 = 0.0;
      return 1;
    }
  }

  else if (x_op)
  {
    return 0;
  }

  else
  {
    v5 = *a2;
    return (a1->x_ops->x_putlong)();
  }

  return result;
}

int xdr_double(XDR *a1, double *a2)
{
  x_op = a1->x_op;
  if (a1->x_op == XDR_FREE)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  if (x_op == XDR_DECODE)
  {
    v8 = 0;
    result = (a1->x_ops->x_getlong)(a1, &v8);
    if (result)
    {
      *(a2 + 1) = v8;
      v8 = 0;
      result = (a1->x_ops->x_getlong)(a1, &v8);
      if (result)
      {
        *a2 = v8;
        return 1;
      }
    }
  }

  else if (x_op)
  {
    return 0;
  }

  else
  {
    v8 = *(a2 + 1);
    result = (a1->x_ops->x_putlong)(a1, &v8);
    if (result)
    {
      v8 = *a2;
      return (a1->x_ops->x_putlong)(a1, &v8);
    }
  }

  return result;
}

void xdrmem_create(XDR *a1, char *a2, unsigned int a3, xdr_op a4)
{
  a1->x_op = a4;
  v4 = xdrmem_ops_unaligned;
  if ((a2 & 3) == 0)
  {
    v4 = xdrmem_ops_aligned;
  }

  a1->x_ops = v4;
  a1->x_private = a2;
  a1->x_base = a2;
  a1->x_handy = a3;
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

void xdrrec_create(XDR *a1, unsigned int a2, unsigned int a3, void *a4, int (__cdecl *a5)(void *, void *, int), int (__cdecl *a6)(void *, void *, int))
{
  v12 = malloc_type_calloc(1uLL, 0x98uLL, 0x10900401867FBDDuLL);
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
    v15 = malloc_type_calloc(1uLL, v14, 0xC870D164uLL);
    v13[2] = v15;
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
      v17 = malloc_type_calloc(1uLL, v16, 0xCF6224B2uLL);
      v13[9] = v17;
      if (v17)
      {
        a1->x_ops = xdrrec_ops;
        a1->x_private = v13;
        *v13 = a4;
        v13[1] = a6;
        v18 = v13[2];
        v13[5] = v18;
        v13[3] = v18 + 4;
        v13[4] = &v18[v14];
        *(v13 + 12) = 0;
        v13[7] = a5;
        v13[8] = v16;
        v13[10] = &v17[v16];
        v13[11] = &v17[v16];
        v13[12] = 0x100000000;
        v13[16] = v13 + 15;
        v13[14] = 0;
        v13[17] = 0;
        *(v13 + 36) = 0;
      }

      else
      {
        xdrrec_create_cold_1(v13 + 2, v13);
      }
    }

    else
    {
      warnx("xdrrec_create: out of memory");

      free(v13);
    }
  }

  else
  {

    warnx("xdrrec_create: out of memory");
  }
}

int xdrrec_skiprecord(XDR *a1)
{
  x_private = a1->x_private;
  if (x_private[28])
  {
    v5 = 0;
    if (!__xdrrec_getrec(a1, &v5, 0) && (*(x_private + 10) != *(x_private + 11) || v5 != 1))
    {
      return 0;
    }

    x_private[24] = 0;
  }

  else
  {
    while (1)
    {
      v4 = x_private[24];
      if (v4 <= 0)
      {
        if (x_private[25])
        {
          break;
        }
      }

      result = skip_input_bytes(x_private, v4);
      if (result)
      {
        x_private[24] = 0;
        if (x_private[25])
        {
          continue;
        }

        result = set_input_fragment(x_private);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    x_private[25] = 0;
  }

  return 1;
}

uint64_t __xdrrec_getrec(uint64_t a1, int *a2, int a3)
{
  v5 = *(a1 + 24);
  if (!*(v5 + 29))
  {
    result = (v5[7])(*v5, v5[16], (4 - *(v5 + 34)));
    if (!result)
    {
      goto LABEL_11;
    }

    if ((result & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v5[16] += result;
    v11 = *(v5 + 34) + result;
    *(v5 + 34) = v11;
    if (v11 < 4)
    {
LABEL_10:
      result = 0;
      v10 = 1;
      goto LABEL_16;
    }

    v12 = bswap32(*(v5 + 30));
    *(v5 + 30) = v12;
    v13 = v12 & 0x7FFFFFFF;
    if ((v12 & 0x7FFFFFFF) == 0 || (v14 = *(v5 + 37), v13 > v14) || (v15 = *(v5 + 35) + v13, v15 > v14))
    {
LABEL_15:
      v10 = 0;
      result = 0;
      goto LABEL_16;
    }

    *(v5 + 35) = v15;
    if (v15 > *(v5 + 27))
    {
      realloc_stream(v5, v15);
      v12 = *(v5 + 30);
    }

    if ((v12 & 0x80000000) != 0)
    {
      *(v5 + 30) = v12 & 0x7FFFFFFF;
      *(v5 + 25) = 1;
    }
  }

  result = (v5[7])(*v5, v5[9] + *(v5 + 36), (*(v5 + 35) - *(v5 + 36)));
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  if (!result)
  {
LABEL_11:
    v10 = 2 * (a3 == 0);
    goto LABEL_16;
  }

  v7 = *(v5 + 35);
  v8 = *(v5 + 36) + result;
  *(v5 + 36) = v8;
  if (v8 != v7)
  {
    goto LABEL_10;
  }

  *(v5 + 29) = 0;
  v5[16] = v5 + 15;
  *(v5 + 34) = 0;
  if (!*(v5 + 25))
  {
    goto LABEL_10;
  }

  *(v5 + 24) = v8;
  v9 = v5[9];
  v5[10] = v9;
  v5[11] = v9 + v8;
  *(v5 + 35) = 0;
  *(v5 + 36) = 0;
  v10 = 1;
  result = 1;
LABEL_16:
  *a2 = v10;
  return result;
}

uint64_t skip_input_bytes(uint64_t a1, int a2)
{
  if (a2 < 1)
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
    v7 = __OFSUB__(v2, v5);
    v2 -= v5;
  }

  while (!((v2 < 0) ^ v7 | (v2 == 0)));
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
  result = get_input_bytes(a1, &__dst, 4);
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

int xdrrec_eof(XDR *a1)
{
  x_private = a1->x_private;
  while (1)
  {
    v2 = x_private[24];
    if (v2 <= 0)
    {
      if (x_private[25])
      {
        break;
      }
    }

    if (skip_input_bytes(x_private, v2))
    {
      x_private[24] = 0;
      if (x_private[25] || set_input_fragment(x_private))
      {
        continue;
      }
    }

    return 1;
  }

  return *(x_private + 10) == *(x_private + 11);
}

int xdrrec_endofrecord(XDR *a1, int a2)
{
  x_private = a1->x_private;
  if (a2 || x_private[12] || (v3 = *(x_private + 3), (v3 + 4) >= *(x_private + 4)))
  {
    x_private[12] = 0;
    return flush_out(x_private, 1);
  }

  else
  {
    **(x_private + 5) = bswap32((v3 - *(x_private + 5) + 2147483644) | 0x80000000);
    *(x_private + 5) = v3;
    *(x_private + 3) = v3 + 4;
    return 1;
  }
}

uint64_t flush_out(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  **(a1 + 40) = bswap32((v3 - *(a1 + 40) - 4) | ((a2 == 1) << 31));
  v4 = v3 - *(a1 + 16);
  if ((*(a1 + 8))(*a1) != v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  *(a1 + 40) = v5;
  *(a1 + 24) = v5 + 4;
  return 1;
}

void **realloc_stream(void **result, unsigned int a2)
{
  if (*(result + 27) < a2)
  {
    v3 = result;
    v4 = a2;
    result = malloc_type_realloc(result[9], a2, 0x6340A1EEuLL);
    if (result)
    {
      v3[10] = v3[10] + result - *(v3 + 18);
      v3[11] = v4 + result;
      *(v3 + 27) = a2;
      v3[8] = v4;
      v3[9] = result;
    }
  }

  return result;
}

uint64_t xdrrec_getlong(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 80);
  __dst = 0;
  if (*(v3 + 96) < 4u || *(v3 + 88) - v4 < 4uLL)
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
        v8 = v5[24];
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

uint64_t get_input_bytes(uint64_t a1, char *__dst, int a3)
{
  v3 = a3;
  if (*(a1 + 112))
  {
    v6 = *(a1 + 80);
    if (*(a1 + 88) - v6 < a3)
    {
      return 0;
    }

    memcpy(__dst, v6, a3);
    *(a1 + 80) += v3;
    return 1;
  }

  if (a3 < 1)
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
    v3 -= v10;
    result = 1;
  }

  while (v3 >= 1);
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
  v5 = (*(a1 + 56))(*a1, v4, (*(a1 + 64) - v3));
  if (v5 == -1)
  {
    return 0;
  }

  *(a1 + 80) = v4;
  *(a1 + 88) = v4 + v5;
  return 1;
}

int xdr_reference(XDR *a1, char **a2, unsigned int a3, xdrproc_t a4)
{
  v7 = *a2;
  if (!*a2)
  {
    if (a1->x_op == XDR_FREE)
    {
      return 1;
    }

    if (a1->x_op == XDR_DECODE)
    {
      v9 = a3;
      v10 = malloc_type_calloc(1uLL, a3, 0x100004077774924uLL);
      *a2 = v10;
      if (!v10)
      {
        warnx("xdr_reference: out of memory");
        return 0;
      }

      v7 = v10;
      bzero(v10, v9);
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = (a4)(a1, v7, 0);
  if (a1->x_op == XDR_FREE)
  {
    free(v7);
    *a2 = 0;
  }

  return v8;
}

int xdr_pointer(XDR *a1, char **a2, unsigned int a3, xdrproc_t a4)
{
  v9 = *a2 != 0;
  result = xdr_BOOL(a1, &v9);
  if (result)
  {
    if (v9)
    {
      return xdr_reference(a1, a2, a3, a4);
    }

    else
    {
      *a2 = 0;
      return 1;
    }
  }

  return result;
}

void xdrstdio_create(XDR *a1, FILE *a2, xdr_op a3)
{
  a1->x_op = a3;
  a1->x_ops = xdrstdio_ops;
  a1->x_handy = 0;
  a1->x_private = a2;
  a1->x_base = 0;
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
  result = MEMORY[0x19A8FC4B0](*(a1 + 24));
  if (result >= 0xFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

int rcmd_af(char **a1, int a2, const char *a3, const char *a4, const char *a5, int *a6, int a7)
{
  v97 = *MEMORY[0x1E69E9840];
  v83 = 0;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v82 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  getpid();
  memset(&v84.ai_addrlen, 0, 32);
  v84.ai_flags = 2;
  v84.ai_family = a7;
  *&v84.ai_socktype = 1;
  snprintf(__str, 8uLL, "%d", bswap32(a2) >> 16);
  v14 = getaddrinfo(*a1, __str, &v84, &v83);
  v15 = MEMORY[0x1E69E9848];
  if (v14)
  {
    v16 = v14;
    v17 = *MEMORY[0x1E69E9848];
    v18 = gai_strerror(v14);
    fprintf(v17, "rcmd: getaddrinfo: %s\n", v18);
    if (v16 == 11)
    {
      v19 = *v15;
      v20 = __error();
      v21 = strerror(*v20);
      fprintf(v19, "rcmd: getaddrinfo: %s\n", v21);
    }

    goto LABEL_65;
  }

  ai_next = v83;
  ai_canonname = v83->ai_canonname;
  if (ai_canonname && strlen(v83->ai_canonname) + 1 <= 0x400)
  {
    *a1 = strncpy(rcmd_af_canonnamebuf, ai_canonname, 0x401uLL);
  }

  v70 = a3;
  v71 = a4;
  v72 = a5;
  v24 = 1;
  v25 = ai_next;
  do
  {
    v25 = v25->ai_next;
    --v24;
  }

  while (v25);
  v26 = sigblock(0x8000);
  v27 = 0;
  v74 = 1023;
  v28 = 1;
LABEL_10:
  v29 = ai_next;
  do
  {
    while (1)
    {
      v30 = rresvport_af(&v74, v29->ai_family);
      if ((v30 & 0x80000000) != 0)
      {
        break;
      }

      fcntl_NOCANCEL();
      ai_addr = v29->ai_addr;
      ai_addrlen = v29->ai_addrlen;
      if ((connect_NOCANCEL() & 0x80000000) == 0)
      {
        if (a6)
        {
          v35 = rresvport_af(&v74, v29->ai_family);
          v73 = v29->ai_addrlen;
          if ((v35 & 0x80000000) == 0)
          {
            v36 = v35;
            listen(v35, 1);
            v37 = v74;
            snprintf(__s, 8uLL, "%d", v74);
            strlen(__s);
            v38 = write_NOCANCEL();
            if (v38 != strlen(__s) + 1)
            {
              v41 = *MEMORY[0x1E69E9848];
              v42 = __error();
              v43 = strerror(*v42);
              fprintf(v41, "rcmd: write (setting up stderr): %s\n", v43);
              goto LABEL_63;
            }

            if (v30 <= v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = v30;
            }

            if (v39 > 0x3FF)
            {
              fwrite("rcmd: too many files\n", 0x15uLL, 1uLL, *MEMORY[0x1E69E9848]);
LABEL_63:
              close_NOCANCEL();
              goto LABEL_64;
            }

            v68 = v37;
            v69 = a6;
            v51 = 1 << v36;
            v52 = v36 >> 5;
            while (1)
            {
              v82 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v75 = 0u;
              if (__darwin_check_fd_set_overflow(v30, &v75, 0))
              {
                *(&v75 + (v30 >> 5)) |= 1 << v30;
              }

              if (__darwin_check_fd_set_overflow(v36, &v75, 0))
              {
                *(&v75 + v52) |= v51;
              }

              *__error() = 0;
              if (select_NOCANCEL() < 1 || !__darwin_check_fd_set_overflow(v36, &v75, 0) || (*(&v75 + v52) & v51) == 0)
              {
                v55 = __error();
                v56 = *MEMORY[0x1E69E9848];
                if (*v55)
                {
                  v57 = __error();
                  v58 = strerror(*v57);
                  fprintf(v56, "rcmd: select (setting up stderr): %s\n", v58);
                }

                else
                {
                  fwrite("select: protocol failure in circuit setup\n", 0x2AuLL, 1uLL, *MEMORY[0x1E69E9848]);
                }

                goto LABEL_63;
              }

              v53 = accept_NOCANCEL();
              if (BYTE1(v89) != 30 && BYTE1(v89) != 2)
              {
                break;
              }

              if (WORD1(v89) != 5120)
              {
                v61 = __rev16(WORD1(v89));
                goto LABEL_70;
              }

              close_NOCANCEL();
            }

            v61 = 0;
LABEL_70:
            close_NOCANCEL();
            v40 = v68;
            a6 = v69;
            if (v53 < 0)
            {
              v65 = *MEMORY[0x1E69E9848];
              v66 = __error();
              v67 = strerror(*v66);
              fprintf(v65, "rcmd: accept: %s\n", v67);
              goto LABEL_64;
            }

            *v69 = v53;
            if ((v61 & 0xFE00) == 0x200)
            {
              goto LABEL_39;
            }

            fwrite("socket: protocol failure in circuit setup.\n", 0x2BuLL, 1uLL, *MEMORY[0x1E69E9848]);
            if (!v68)
            {
              goto LABEL_64;
            }

LABEL_43:
            v48 = *a6;
            goto LABEL_63;
          }
        }

        else
        {
          write_NOCANCEL();
          v40 = 0;
LABEL_39:
          strlen(v70);
          write_NOCANCEL();
          strlen(v71);
          write_NOCANCEL();
          strlen(v72);
          write_NOCANCEL();
          if (read_NOCANCEL() == 1)
          {
            sigsetmask(v26);
            freeaddrinfo(v83);
            goto LABEL_66;
          }

          v44 = *MEMORY[0x1E69E9848];
          v45 = *a1;
          v46 = __error();
          v47 = strerror(*v46);
          fprintf(v44, "rcmd: %s: %s\n", v45, v47);
          if (v40)
          {
            goto LABEL_43;
          }
        }

LABEL_64:
        close_NOCANCEL();
        sigsetmask(v26);
        freeaddrinfo(v83);
        goto LABEL_65;
      }

      close_NOCANCEL();
      if (*__error() != 48)
      {
        if (*__error() == 61)
        {
          v27 = 1;
        }

        ai_next = v29->ai_next;
        if (!ai_next && (!v27 || v28 >= 17))
        {
          v62 = *MEMORY[0x1E69E9848];
          v63 = *a1;
          v64 = __error();
          strerror(*v64);
          fprintf(v62, "%s: %s\n");
          goto LABEL_59;
        }

        if (v24)
        {
          v33 = a6;
          v34 = *__error();
          getnameinfo(v29->ai_addr, v29->ai_addrlen, v87, 0x401u, 0, 0, 34);
          fprintf(*MEMORY[0x1E69E9848], "connect to address %s: ", v87);
          *__error() = v34;
          a6 = v33;
          perror(0);
          ai_next = v29->ai_next;
          if (ai_next)
          {
LABEL_25:
            if (!v24)
            {
              goto LABEL_10;
            }

LABEL_29:
            getnameinfo(ai_next->ai_addr, ai_next->ai_addrlen, v87, 0x401u, 0, 0, 34);
            fprintf(*MEMORY[0x1E69E9848], "Trying %s...\n", v87);
            goto LABEL_10;
          }
        }

        else if (ai_next)
        {
          goto LABEL_25;
        }

        *__s = v28;
        v86 = 0;
        nanosleep_NOCANCEL();
        v27 = 0;
        v28 *= 2;
        ai_next = v83;
        if (!v24)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

      --v74;
    }

    if (*__error() == 35)
    {
      break;
    }

    v29 = v29->ai_next;
  }

  while (v29);
  v49 = __error();
  v50 = *MEMORY[0x1E69E9848];
  if (*v49 == 35)
  {
    fwrite("rcmd: socket: All ports in use\n", 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  else
  {
    v54 = __error();
    strerror(*v54);
    fprintf(v50, "rcmd: socket: %s\n");
  }

LABEL_59:
  freeaddrinfo(v83);
  sigsetmask(v26);
LABEL_65:
  v30 = -1;
LABEL_66:
  v59 = *MEMORY[0x1E69E9840];
  return v30;
}

int rresvport_af(int *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v7[0].sa_family = a2;
  if (a2 == 30)
  {
    v7[0].sa_len = 28;
    *&v7[0].sa_data[6] = in6addr_any;
  }

  else
  {
    if (a2 != 2)
    {
      *__error() = 47;
      goto LABEL_10;
    }

    v7[0].sa_len = 16;
  }

  v3 = socket(a2, 1, 0);
  if (v3 < 0)
  {
LABEL_10:
    v4 = -1;
    goto LABEL_11;
  }

  v4 = v3;
  *v7[0].sa_data = 0;
  if (bindresvport_sa(v3, v7) == -1)
  {
    close_NOCANCEL();
    goto LABEL_10;
  }

  *a1 = bswap32(*v7[0].sa_data) >> 16;
LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __ivaliduser_sa(FILE *a1, sockaddr *a2, socklen_t a3, const char *a4, const char *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  getnameinfo(a2, a3, v31, 0x100u, 0, 0, 4);
  v10 = 0;
  v11 = 0;
  v12 = &v33;
  do
  {
    do
    {
      while (1)
      {
        if (!fgets(&__s, 384, a1))
        {
          goto LABEL_68;
        }

        if (strchr(&__s, 10))
        {
          break;
        }

        do
        {
          v20 = getc(a1);
        }

        while (v20 != 10 && v20 != -1);
      }

      v13 = __s;
    }

    while (__s == 10 || __s == 35);
    v14 = v12;
    v15 = a4;
    v16 = a5;
    p_s = &__s;
    v30 = v14;
    v18 = v14;
    while (v13 <= 9)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

      if (v13 == 9)
      {
        goto LABEL_22;
      }

LABEL_13:
      if ((v13 & 0x80) == 0)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x8000) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        LOBYTE(v13) = __tolower(v13);
        goto LABEL_16;
      }

      if (__maskrune(v13, 0x8000uLL))
      {
        goto LABEL_15;
      }

LABEL_16:
      *p_s = v13;
      v19 = *++p_s;
      v13 = v19;
      ++v18;
    }

    if (v13 == 10)
    {
LABEL_33:
      v23 = p_s;
      goto LABEL_34;
    }

    if (v13 != 32)
    {
      goto LABEL_13;
    }

LABEL_22:
    *p_s = 0;
    while (1)
    {
      v21 = *v18;
      if (v21 != 32 && v21 != 9)
      {
        break;
      }

      ++v18;
    }

    v23 = v18;
    while (v21 > 0x20u || ((1 << v21) & 0x100000601) == 0)
    {
      v24 = *++v23;
      LOBYTE(v21) = v24;
    }

    p_s = v18;
LABEL_34:
    *v23 = 0;
    a5 = v16;
    if (__s == 45)
    {
      a4 = v15;
      if (v33 == 64)
      {
        v12 = v30;
        if (!innetgr(v34, v31, 0, 0))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v12 = v30;
        if (!__icheckhost(a2, a3, v30))
        {
          goto LABEL_48;
        }
      }

LABEL_68:
      result = 0xFFFFFFFFLL;
      goto LABEL_69;
    }

    a4 = v15;
    if (__s == 43)
    {
      v12 = v30;
      if (v33)
      {
        if (v33 == 64)
        {
          v25 = innetgr(v34, v31, 0, 0);
        }

        else
        {
          v25 = __icheckhost(a2, a3, v30);
        }

        v11 = v25;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = __icheckhost(a2, a3, &__s);
      v12 = v30;
    }

LABEL_48:
    v26 = *p_s;
    if (v26 != 45)
    {
      if (v26 == 43)
      {
        v27 = p_s + 1;
        if (!p_s[1])
        {
          v10 = 1;
          continue;
        }

        if (p_s[1] == 64)
        {
          v10 = innetgr(p_s + 2, 0, a5, 0);
          continue;
        }
      }

      else
      {
        if (!v11)
        {
          continue;
        }

        if (*p_s)
        {
          v27 = p_s;
        }

        else
        {
          v27 = a4;
        }
      }

      v10 = strcmp(a5, v27) == 0;
      continue;
    }

    if (!v11)
    {
      continue;
    }

    if (p_s[1] == 64)
    {
      if (!innetgr(p_s + 2, 0, a5, 0))
      {
        continue;
      }

      goto LABEL_68;
    }

    if (!p_s[1] || !strcmp(a5, p_s + 1))
    {
      goto LABEL_68;
    }
  }

  while (!v11 || !v10);
  result = 0;
LABEL_69:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

int ruserok(const char *a1, int a2, const char *a3, const char *a4)
{
  v11 = 0;
  memset(&v12, 0, sizeof(v12));
  v12.ai_socktype = 2;
  if (getaddrinfo(a1, "0", &v12, &v11))
  {
    return -1;
  }

  v8 = v11;
  if (v11)
  {
    while (iruserok_sa(v8->ai_addr, v8->ai_addrlen, a2, a3, a4))
    {
      v8 = v8->ai_next;
      if (!v8)
      {
        v7 = -1;
        goto LABEL_9;
      }
    }

    v7 = 0;
LABEL_9:
    v9 = v11;
  }

  else
  {
    v9 = 0;
    v7 = -1;
  }

  freeaddrinfo(v9);
  return v7;
}

int iruserok(unint64_t a1, int a2, const char *a3, const char *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6[0] = 528;
  v6[1] = a1;
  result = iruserok_sa(v6, 16, a2, a3, a4);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __icheckhost(sockaddr *a1, socklen_t a2, const char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v13.sa_len = 0;
  *&v13.sa_data[6] = 0;
  p_sa_family = &a1->sa_family;
  if (a1->sa_family == 30 && !*&a1->sa_data[6] && !*&a1->sa_data[10] && *&a1[1].sa_len == -65536)
  {
    p_sa_family = &v13.sa_family;
    *&v13.sa_len = 528;
    *&v13.sa_data[6] = 0;
    *&v13.sa_data[2] = *&a1[1].sa_data[2];
    a2 = 16;
    a1 = &v13;
  }

  __s1[0] = 0;
  if (getnameinfo(a1, a2, __s1, 0x401u, 0, 0, 34) || (memset(&v10, 0, sizeof(v10)), v10.ai_family = *p_sa_family, v10.ai_socktype = 2, v9 = 0, getaddrinfo(a3, "0", &v10, &v9)))
  {
    v5 = 0;
  }

  else
  {
    v5 = v9;
    if (v9)
    {
      while (1)
      {
        __s2[0] = 0;
        if (!getnameinfo(*(v5 + 32), *(v5 + 16), __s2, 0x401u, 0, 0, 34) && !strcmp(__s1, __s2))
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_17;
        }
      }

      v5 = 1;
LABEL_17:
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    freeaddrinfo(v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

int ether_line(const char *a1, ether_addr *a2, char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = sscanf(a1, " %x:%x:%x:%x:%x:%x %s", v8, &v8[1], &v8[2], &v8[3], &v8[4], &v8[5], a3);
  if (v4 == 7)
  {
    for (i = 0; i != 6; ++i)
    {
      a2->octet[i] = v8[i];
    }

    result = 0;
  }

  else
  {
    result = 7 - v4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

int getifmaddrs(ifmaddrs **a1)
{
  v34 = *MEMORY[0x1E69E9840];
  size = 0;
  *v32 = xmmword_19A0D6A80;
  v33 = 6;
  if (sysctl(v32, 6u, 0, &size, 0, 0) < 0)
  {
    goto LABEL_51;
  }

  v2 = 0;
  while (1)
  {
    v3 = malloc_type_malloc(size, 0xBA7FA455uLL);
    if (!v3)
    {
      goto LABEL_51;
    }

    v4 = v3;
    if ((sysctl(v32, 6u, v3, &size, 0, 0) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 12 || v2 >= 4)
    {
      goto LABEL_50;
    }

    ++v2;
    free(v4);
    if (sysctl(v32, 6u, 0, &size, 0, 0) < 0)
    {
      goto LABEL_51;
    }
  }

  if (size < 1)
  {
    v6 = 0;
    v12 = 1;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 1;
    v8 = v4;
    do
    {
      if (*(v8 + 2) == 5 && *(v8 + 3) == 19 && (*(v8 + 1) & 0x20) != 0)
      {
        v9 = 0;
        v10 = v8 + 10;
        do
        {
          if (((*(v8 + 1) & 0x32u) >> v9))
          {
            if (*v10)
            {
              v11 = (*v10 + 3) & 0x1FC;
            }

            else
            {
              v11 = 4;
            }

            LODWORD(v6) = v6 + v11;
            v10 += v11;
          }

          ++v9;
        }

        while (v9 != 8);
        ++v7;
      }

      v8 = (v8 + *v8);
    }

    while (v8 < (v4 + size));
    v12 = v7;
    v6 = v6;
  }

  v13 = malloc_type_malloc(v12 * 32 + v6, 0x20040DC1BFBCFuLL);
  if (!v13)
  {
LABEL_50:
    free(v4);
LABEL_51:
    result = -1;
    goto LABEL_52;
  }

  v14 = v13;
  bzero(v13, v12 * 32);
  v15 = size;
  if (size <= 0)
  {
    free(v4);
    goto LABEL_54;
  }

  v27 = v14;
  v28 = a1;
  v16 = &v14[v12];
  v17 = v14;
  v18 = v4;
  do
  {
    if (*(v18 + 2) == 5 && *(v18 + 3) == 19 && (v18[2] & 0x20) != 0)
    {
      v19 = 0;
      v20 = v18 + 10;
      v29 = v17;
      p_ifma_addr = &v17->ifma_addr;
      p_ifma_name = &v17->ifma_name;
      p_ifma_lladdr = &v17->ifma_lladdr;
      while (((1 << v19) & 0x32 & *(v18 + 1)) == 0)
      {
LABEL_45:
        if (++v19 == 8)
        {
          v29->ifma_next = v29 + 1;
          v15 = size;
          v17 = v29 + 1;
          goto LABEL_47;
        }
      }

      if (*v20)
      {
        v23 = (*v20 + 3) & 0x1FC;
      }

      else
      {
        v23 = 4;
      }

      v24 = p_ifma_lladdr;
      if (v19 != 1)
      {
        if (v19 == 5)
        {
          v24 = p_ifma_addr;
        }

        else
        {
          v24 = p_ifma_name;
          if (v19 != 4)
          {
            goto LABEL_44;
          }
        }
      }

      *v24 = v16;
      memcpy(v16, v20, v23);
LABEL_44:
      v16 += v23;
      v20 += v23;
      goto LABEL_45;
    }

LABEL_47:
    v18 = (v18 + *v18);
  }

  while (v18 < (v4 + v15));
  free(v4);
  v14 = v27;
  a1 = v28;
  if (v17 <= v27)
  {
LABEL_54:
    *a1 = 0;
    free(v14);
    result = 0;
    goto LABEL_52;
  }

  result = 0;
  v17[-1].ifma_next = 0;
  *v28 = v27;
LABEL_52:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getnameinfo_link(uint64_t a1, int a2, char *__str, size_t __size, _BYTE *a5, uint64_t a6)
{
  v6 = __size;
  if (a5 && a6)
  {
    *a5 = 0;
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  if (*(a1 + 5))
  {
    *__str = 0;
    if (v9)
    {
      v10 = a1 + v8 + 8;
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a1 + 6))
  {
    v10 = a1 + v8 + 8;
    *__str = 0;
LABEL_9:
    v11 = 0;
    v12 = __str;
    while (1)
    {
      v13 = v11 ? ":" : "";
      v14 = snprintf(v12, v6, "%s%02x", v13, *(v10 + v11));
      if ((v14 & 0x80000000) != 0 || v6 <= v14)
      {
        break;
      }

      v12 += v14;
      v6 -= v14;
      if (v9 == ++v11)
      {
        return 0;
      }
    }

    goto LABEL_20;
  }

  if (!*(a1 + 7))
  {
    if (snprintf(__str, __size, "link#%d", *(a1 + 2)) > __size)
    {
LABEL_20:
      result = 6;
      goto LABEL_21;
    }

    return 0;
  }

  result = 0;
LABEL_21:
  *__str = 0;
  return result;
}

char *configuration_profile_create_notification_key(char *result)
{
  v1 = 0;
  if (result)
  {
    if (*result == 47)
    {
      asprintf(&v1, "%s%s");
    }

    else
    {
      if (strchr(result + 1, 47))
      {
        return 0;
      }

      asprintf(&v1, "%s%s/%s.plist");
    }

    return v1;
  }

  return result;
}

uint64_t configuration_profile_copy_property_list(_BYTE *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_11;
  }

  __str[0] = 0;
  if (*a1 == 47)
  {
    snprintf(__str, 0x400uLL, "%s");
  }

  else
  {
    if (strchr(a1 + 1, 47))
    {
LABEL_11:
      v5 = 0;
      goto LABEL_12;
    }

    snprintf(__str, 0x400uLL, "%s/%s.plist");
  }

  if (!__str[0])
  {
    goto LABEL_11;
  }

  v1 = open_NOCANCEL();
  if (v1 < 0)
  {
    goto LABEL_11;
  }

  v2 = v1;
  memset(&v8, 0, sizeof(v8));
  if (fstat(v1, &v8) < 0 || (v3 = mmap(0, v8.st_size, 1, 2, v2, 0), v3 == -1))
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = xpc_create_from_plist();
    munmap(v4, v8.st_size);
  }

  close_NOCANCEL();
LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void kvbuf_add_key_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0B0000, MEMORY[0x1E69E9C10], v0, "kvbuf_add_key: overflow when adding extra (%zu) and kl (%u)", v1, v2, v3, v4, 0);
  v5 = *MEMORY[0x1E69E9840];
}

void kvbuf_add_val_len_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0B0000, MEMORY[0x1E69E9C10], v0, "kvbuf_add_val_len: overflow when adding sizeof(uint32_t) (%zu) and len (%u)", v1, v2, v3, v4, 0);
  v5 = *MEMORY[0x1E69E9840];
}

void kvbuf_append_kvbuf_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0B0000, MEMORY[0x1E69E9C10], v0, "kvbuf_append_kvbuf: overflow when subtracting sizeof(uint32_t) (%zu) from kv2->datalen (%u)", v1, v2, v3, v4, 0);
  v5 = *MEMORY[0x1E69E9840];
}

void _gai_load_libnetwork_once_cold_5(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = "?";
  if (a1)
  {
    v2 = a1;
  }

  v4 = 136446210;
  v5 = v2;
  _os_log_error_impl(&dword_19A0B0000, a2, OS_LOG_TYPE_ERROR, "dlopen(...libnetwork.dylib) failed: %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void _muser_call_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&dword_19A0B0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_muser_call: Error from xpc pipe (%d), retrying", buf, 8u);
}

void _muser_call_cold_2(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_19A0B0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_muser_call: Failure (%d) with retry, bailing", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void _muser_xpc_pipe_cold_2(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 67109378;
  v2[1] = a1;
  v3 = 2080;
  v4 = xpc_strerror();
  _os_log_error_impl(&dword_19A0B0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xAu);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_2(unsigned int *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_19A0B0000, v2, v3, "connect(%d, ...) ctl_id=%u, failed: %m", v5, v6);
  v4 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_3(unsigned int *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_19A0B0000, v2, v3, "setsockopt(%d, SOL_SOCKET, SO_RCVBUF, %d) failed: %m", v5, v6);
  v4 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_10(&dword_19A0B0000, v0, v1, "fcntl(%d, F_SETFL, %d) failed: %m", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xAu);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_create_control_socket_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xAu);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_27()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "Rule 8, prefer d2, d2 scope %d < d1 scope %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_28()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "Rule 8, prefer d1, d1 scope %d < d2 scope %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_29()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "Rule 6, prefer d2, d2 precedence %d > d1 precedence %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_30()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "Rule 6, prefer d1, d1 precedence %d > d2 precedence %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_31()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_34()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_6(&dword_19A0B0000, v0, v1, "%{public}s dst2 is NULL", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_cold_35()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_6(&dword_19A0B0000, v0, v1, "%{public}s dst1 is NULL", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "ND Rule 8, prefer d2, d2 scope %d < d1 scope %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "ND Rule 8, prefer d1, d1 scope %d < d2 scope %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "ND Rule 6, prefer d2, d2 precedence %d > d1 precedence %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_19A0B0000, v0, v1, "ND Rule 6, prefer d1, d1 precedence %d > d2 precedence %d", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_6(&dword_19A0B0000, v0, v1, "%{public}s dst2 is NULL", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x1E69E9840];
}

void si_destination_compare_no_dependencies_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_6(&dword_19A0B0000, v0, v1, "%{public}s dst1 is NULL", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x1E69E9840];
}

void si_destination_lookup_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void si_destination_lookup_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void svc_run(void)
{
  do
  {
    while (1)
    {
      do
      {
        memcpy(&v1, &svc_fdset, sizeof(v1));
        v0 = select_NOCANCEL();
      }

      while (!v0);
      if (v0 == -1)
      {
        break;
      }

      svc_getreqset(&v1);
    }
  }

  while (*__error() == 4);
  perror("svc_run: - select failed");
}

void xdrrec_create_cold_1(void **a1, void *a2)
{
  warnx("xdrrec_create: out of memory");
  free(*a1);

  free(a2);
}