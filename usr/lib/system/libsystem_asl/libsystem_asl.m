asl_object_t asl_retain(asl_object_t obj)
{
  if (obj)
  {
    atomic_fetch_add(obj + 1, 1u);
  }

  return obj;
}

void _vsyslog(__int16 a1, const char *a2, va_list a3)
{
  v5 = a1 & 7;
  v6 = a1 & 0x3F8;
  pthread_mutex_lock(&_sl_lock);
  v7 = _sl_asl;
  if (!_sl_asl)
  {
    _sl_asl = asl_open(0, 0, 0x10000u);
    _sl_mask = 255;
    asl_set_filter(_sl_asl, 255);
    v7 = _sl_asl;
  }

  v8 = asl_retain(v7);
  pthread_mutex_unlock(&_sl_lock);
  v9 = asl_new(0);
  if (v6)
  {
    v10 = asl_syslog_faciliy_num_to_name(v6);
    if (v10)
    {
      asl_set(v9, "Facility", v10);
    }
  }

  v11 = _asl_evaluate_send(v8, v9, v5);
  if ((v11 & 0x40000) != 0 && os_log_shim_enabled())
  {
    v12 = shim_syslog_to_log_type[v5];
    os_log_with_args_4syslog();
    if ((v11 & 0x80000) != 0)
    {
      _asl_lib_vlog_text(v8, v11, v9, a2, a3);
    }
  }

  else if ((v11 & 0x1A0000) != 0)
  {
    _asl_lib_vlog(v8, v11, v9, a2, a3);
  }

  asl_release(v8);
  asl_release(v9);
}

double _jump_alloc()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  if (v0)
  {
    *&result = 0x100000002;
    *v0 = 0x100000002;
  }

  return result;
}

char *_jump_alloc_0(int a1)
{
  result = _asl_msg_make_page(a1);
  if (result)
  {
    *result = a1;
    *(result + 1) = 1;
  }

  return result;
}

char *_asl_msg_make_page(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x138uLL, 0x1020040D2F95E9BuLL);
  v3 = v2;
  if (v2)
  {
    if (a1 == 1)
    {
      v4 = 20;
    }

    else
    {
      v4 = 0;
    }

    if (!a1)
    {
      v4 = 30;
    }

    if (v4)
    {
      memset(v2 + 32, 255, (2 * v4));
    }

    *(v3 + 2) = 312;
    *v3 = a1;
  }

  return v3;
}

uint32_t _asl_evaluate_send(asl_object_t client, asl_object_t msg, int level)
{
  check = 0;
  __s1 = 0;
  state64 = 0;
  if (level < 0)
  {
    v5 = 7;
  }

  else
  {
    v5 = level;
  }

  if (asl_msg_lookup(msg, "Level", &__s1, 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = __s1 == 0;
  }

  if (!v6)
  {
    v5 = atoi(__s1);
  }

  if (v5 >= 7)
  {
    v5 = 7;
  }

  if (client)
  {
    if (asl_get_type(client) != 5)
    {
      return v5 | 0x30000;
    }

    if (*(client + 8))
    {
      return v5 | 0x100000;
    }
  }

  else
  {
    if (_asl_open_default_once != -1)
    {
      _asl_evaluate_send_cold_1();
    }

    client = off_1ED4AE050;
    if (!off_1ED4AE050)
    {
      return v5 | 0x50000;
    }
  }

  control = asl_client_get_control(client);
  v9 = *(client + 10);
  v10 = control & 0xFFFF0000 | v5 | (*(client + 10) << 13) & 0x200000;
  if ((*(client + 12) & 4) == 0)
  {
    pthread_mutex_lock(&stru_1ED4AE000);
    if ((DWORD1(_asl_global) & 0x80000000) == 0)
    {
      check = 0;
      if (!notify_check(SDWORD1(_asl_global), &check))
      {
        if (check)
        {
          if ((HIDWORD(_asl_global) & 0x80000000) == 0)
          {
            state64 = 0;
            if (!notify_get_state(SHIDWORD(_asl_global), &state64))
            {
              qword_1ED4ADFC8 = state64;
            }
          }

          if ((DWORD2(_asl_global) & 0x80000000) == 0)
          {
            state64 = 0;
            if (!notify_get_state(SDWORD2(_asl_global), &state64))
            {
              qword_1ED4ADFC0 = state64;
            }
          }
        }
      }
    }

    if ((qword_1ED4ADFC8 & 0x10000) != 0)
    {
      v10 = v10 & 0xFFD90007 | qword_1ED4ADFC8 & 0x60000 | 0x200000;
      v11 = qword_1ED4ADFC0;
      if (qword_1ED4ADFC8)
      {
        v9 = qword_1ED4ADFC0;
      }
    }

    else
    {
      v11 = qword_1ED4ADFC0;
    }

    if ((v11 & 0x10000) != 0)
    {
      v10 = v10 & 0xFFF1FFFF | v11 & 0xE0000 | 0x200000;
      if (v11)
      {
        v9 = v11;
      }
    }

    pthread_mutex_unlock(&stru_1ED4AE000);
  }

  v12 = v10 & 0xFFFDFFFF;
  if ((v9 >> v5))
  {
    v12 = v10;
  }

  if (!v9)
  {
    v12 = v10;
  }

  if (*(client + 13))
  {
    v13 = v12 | 0x80000;
  }

  else
  {
    v13 = v12;
  }

  __s1 = 0;
  v14 = asl_msg_lookup(msg, "com.apple.message.domain", &__s1, 0);
  if (__s1)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v13 & 0xFF7BFFFF | 0x800000;
  }

  else
  {
    v16 = v13;
  }

  __s1 = 0;
  v17 = asl_msg_lookup(msg, "com.apple.iokit.domain", &__s1, 0);
  v18 = __s1;
  __s1 = 0;
  v19 = asl_msg_lookup(msg, "ASLOption", &__s1, 0);
  v20 = __s1;
  __s1 = 0;
  if (asl_msg_lookup(msg, "CFLog Local Time", &__s1, 0))
  {
    v21 = 1;
  }

  else
  {
    v21 = __s1 == 0;
  }

  v22 = !v21;
  if (v19)
  {
    v23 = 1;
  }

  else
  {
    v23 = v20 == 0;
  }

  if (!v23)
  {
    v22 = 1;
  }

  if (v17)
  {
    v24 = 1;
  }

  else
  {
    v24 = v18 == 0;
  }

  if (!v24)
  {
    v22 = 1;
  }

  if (v22)
  {
    v7 = v16 & 0xFFFBFFFF;
  }

  else
  {
    v7 = v16;
  }

  __s1 = 0;
  if (!asl_msg_lookup(msg, "Facility", &__s1, 0) && (v25 = __s1) != 0 || !asl_msg_lookup(*(client + 4), "Facility", &__s1, 0) && (v25 = __s1) != 0)
  {
    if (!strcmp(v25, "com.apple.system.lastlog") || !strcmp(v25, "com.apple.system.utmpx"))
    {
      v7 = v16 & 0xFFFBFFFF;
    }

    v26 = asl_syslog_faciliy_num_to_name(112);
    if (!strcmp(v25, v26))
    {
      return v16 & 0xFFFBFFFF;
    }
  }

  return v7;
}

void asl_release(asl_object_t obj)
{
  if (obj && *obj <= 6u)
  {
    if (asl_object_once != -1)
    {
      asl_release_cold_1();
    }

    if (atomic_fetch_add(obj + 1, 0xFFFFFFFF) == 1)
    {
      v2 = *(asl_jump[*obj] + 8);
      if (v2)
      {

        v2(obj);
      }
    }
  }
}

uint64_t asl_msg_lookup(_DWORD *a1, char *a2, int **a3, _WORD *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = 0xFFFFFFFFLL;
  v10 = -1;
  v9 = 0;
  if (_asl_msg_index(a1, a2, &v10, &v9) != -1)
  {
    if (a3)
    {
      *a3 = _asl_msg_slot_val(v9, v10);
    }

    if (a4)
    {
      if (v9)
      {
        v7 = 0;
        if (v10 <= 9 && *v9 == 1)
        {
          v7 = *(v9 + v10 + 36);
        }
      }

      else
      {
        v7 = 0;
      }

      v6 = 0;
      *a4 = v7;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t asl_client_get_control(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _asl_msg_index(_DWORD *a1, char *__s, _DWORD *a3, void *a4)
{
  if (!__s)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1;
  if (*a1 == 1)
  {
    v8 = 10;
  }

  else
  {
    v8 = 0;
  }

  if (*a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 15;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = a1;
  }

  v10 = strlen(__s);
  v11 = _asl_msg_std_key(__s, v10);
  v12 = 0;
  while (2)
  {
    v13 = 0;
    v14 = v7 + 23;
    do
    {
      v15 = *v7;
      if (*v7 == 1)
      {
        if (v13 > 9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = v13 >= 0xF;
        }

        if (v16)
        {
          goto LABEL_22;
        }
      }

      if (*(v7 + v13 + 16) == -1)
      {
        goto LABEL_52;
      }

LABEL_22:
      if (v11)
      {
        if (v15 == 1)
        {
          if (v13 <= 9)
          {
LABEL_26:
            v17 = *(v7 + v13 + 16);
            goto LABEL_33;
          }
        }

        else if (!v15 && v13 < 0xF)
        {
          goto LABEL_26;
        }

        v17 = 0;
LABEL_33:
        if (v17 == v11)
        {
          return v12;
        }

        goto LABEL_52;
      }

      if (v15 == 1)
      {
        if (v13 > 9)
        {
          goto LABEL_49;
        }
      }

      else if (v15 || v13 >= 0xF)
      {
        goto LABEL_49;
      }

      v18 = v7 + 2 * v13;
      if ((*(v18 + 16) & 0xC000) == 0x8000)
      {
        goto LABEL_52;
      }

      if (v15 == 1 && v13 > 9)
      {
        goto LABEL_49;
      }

      v19 = *(v18 + 16);
      if ((v19 & 0xC000) != 0x4000)
      {
        if (v15 == 1 && v13 > 9)
        {
LABEL_49:
          v23 = 0;
        }

        else
        {
          v23 = *(v18 + 16);
        }

        v22 = v14 + v23;
        goto LABEL_51;
      }

      v20 = v13 < 0xA || v15 == 0;
      v21 = v19 & 0x3FFF;
      if (!v20)
      {
        v21 = 0;
      }

      v22 = *(v14 + v21);
LABEL_51:
      if (!strcmp(__s, v22))
      {
        return v12;
      }

LABEL_52:
      ++v13;
      if (a3)
      {
        *a3 = v13;
      }

      v12 = (v12 + 1);
    }

    while (v13 < v9);
    v7 = *(v7 + 3);
    if (v7)
    {
      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = v7;
      }

      continue;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t _asl_msg_std_key(char *__s1, int a2)
{
  if (a2 < 0x13 || strncmp(__s1, "com.apple.message.", 0x12uLL))
  {
    if (a2 > 7)
    {
      if (a2 > 11)
      {
        if (a2 != 12)
        {
          if (a2 != 13)
          {
            if (a2 != 14)
            {
              return 0;
            }

LABEL_49:
            if (!strcmp(__s1, "ASLFreeNotify"))
            {
              return -32749;
            }

            return 0;
          }

LABEL_48:
          if (!strcmp(__s1, "ASLExpireTime"))
          {
            return -32751;
          }

          goto LABEL_49;
        }

LABEL_47:
        if (!strcmp(__s1, "ASLMessageID"))
        {
          return -32752;
        }

        goto LABEL_48;
      }

      if (a2 != 8)
      {
        if (a2 != 9)
        {
          if (a2 != 11)
          {
            return 0;
          }

          goto LABEL_46;
        }

LABEL_45:
        if (!strcmp(__s1, "ASLOption"))
        {
          return -32750;
        }

LABEL_46:
        if (!strcmp(__s1, "TimeNanoSec"))
        {
          return -32766;
        }

        goto LABEL_47;
      }

LABEL_44:
      if (!strcmp(__s1, "Facility"))
      {
        return -32763;
      }

      goto LABEL_45;
    }

    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (!strcmp(__s1, "PID"))
        {
          return -32762;
        }

        if (!strcmp(__s1, "UID"))
        {
          return -32761;
        }

        if (!strcmp(__s1, "GID"))
        {
          return -32760;
        }
      }

      else if (a2 != 4)
      {
        return 0;
      }

      if (!strcmp(__s1, "Time"))
      {
        return -32767;
      }

      if (!strcmp(__s1, "Host"))
      {
        return -32765;
      }
    }

    else if (a2 != 5)
    {
      if (a2 != 6)
      {
LABEL_39:
        if (!strcmp(__s1, "Message"))
        {
          return -32758;
        }

        if (!strcmp(__s1, "Session"))
        {
          return -32755;
        }

        if (!strcmp(__s1, "ReadUID"))
        {
          return -32757;
        }

        if (!strcmp(__s1, "ReadGID"))
        {
          return -32756;
        }

        if (!strcmp(__s1, "RefProc"))
        {
          return -32753;
        }

        goto LABEL_44;
      }

LABEL_37:
      if (!strcmp(__s1, "Sender"))
      {
        return -32764;
      }

      if (!strcmp(__s1, "RefPID"))
      {
        return -32754;
      }

      goto LABEL_39;
    }

    if (!strcmp(__s1, "Level"))
    {
      return -32759;
    }

    goto LABEL_37;
  }

  if (!strcmp(__s1 + 18, "domain"))
  {
    return -32511;
  }

  else if (!strcmp(__s1 + 18, "domain_scope"))
  {
    return -32510;
  }

  else if (!strcmp(__s1 + 18, "result"))
  {
    return -32509;
  }

  else if (!strcmp(__s1 + 18, "signature"))
  {
    return -32508;
  }

  else if (!strcmp(__s1 + 18, "signature2"))
  {
    return -32507;
  }

  else if (!strcmp(__s1 + 18, "signature3"))
  {
    return -32506;
  }

  else if (!strcmp(__s1 + 18, "success"))
  {
    return -32505;
  }

  else if (!strcmp(__s1 + 18, "uuid"))
  {
    return -32504;
  }

  else if (!strcmp(__s1 + 18, "value"))
  {
    return -32503;
  }

  else if (!strcmp(__s1 + 18, "value2"))
  {
    return -32502;
  }

  else if (!strcmp(__s1 + 18, "value3"))
  {
    return -32501;
  }

  else if (!strcmp(__s1 + 18, "value4"))
  {
    return -32500;
  }

  else if (!strcmp(__s1 + 18, "value5"))
  {
    return -32499;
  }

  else
  {
    return 0;
  }
}

int *_asl_msg_slot_val(int *result, unsigned int a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *result;
  if (a2 >= 0xF && !v2 || a2 >= 0xA && v2 == 1)
  {
    return 0;
  }

  if (v2 == 1)
  {
    if (a2 <= 9)
    {
      v3 = 10;
      goto LABEL_13;
    }

LABEL_17:
    v4 = 0;
    return (result + v4 + 92);
  }

  if (v2 || a2 >= 0xF)
  {
    goto LABEL_17;
  }

  v3 = 15;
LABEL_13:
  v4 = *(result + v3 + a2 + 16);
  if (v4 == 0xFFFF)
  {
    return 0;
  }

  if ((v4 & 0xC000) != 0x4000)
  {
    if ((v4 & 0xC000) != 0)
    {
      return 0;
    }

    return (result + v4 + 92);
  }

  return *(result + (v4 & 0x3FFF) + 92);
}

char *asl_syslog_faciliy_num_to_name(int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 3;
  if (v1 > 0x18)
  {
    return 0;
  }

  else
  {
    return off_1E86CFD98[v1];
  }
}

uint32_t asl_get_type(asl_object_t obj)
{
  if (obj)
  {
    return *obj;
  }

  else
  {
    return -1;
  }
}

void _jump_dealloc_0(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      if (*(a1 + 2))
      {
        v3 = 0;
        do
        {
          asl_msg_release(*(a1[2] + 8 * v3++));
        }

        while (v3 < *(a1 + 2));
        v2 = a1[2];
      }

      free(v2);
    }

    free(a1);
  }
}

void _jump_dealloc_1(_DWORD *a1)
{
  if (a1)
  {
    if (a1[3] == 1)
    {
      v2 = *(a1 + 14);

      asl_legacy1_close(v2);
    }

    else
    {
      v3 = *(a1 + 3);
      if (v3)
      {
        do
        {
          v4 = v3[2];
          free(v3);
          *(a1 + 3) = v4;
          v3 = v4;
        }

        while (v4);
      }

      free(*(a1 + 4));
      v5 = *(a1 + 13);
      if (v5)
      {
        fclose(v5);
      }

      v6 = *(a1 + 15);
      if (v6)
      {
        free(v6);
      }

      *(a1 + 6) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;

      free(a1);
    }
  }
}

void _jump_dealloc_2(char *a1)
{
  if (a1)
  {
    v1 = a1;
    while (1)
    {
      v2 = *(v1 + 3);
      v3 = *v1 == 1 ? 10 : 0;
      v4 = *v1 ? v3 : 15;
      if (v4)
      {
        break;
      }

LABEL_30:
      free(v1);
      v1 = v2;
      if (!v2)
      {
        return;
      }
    }

    v5 = 0;
    v6 = v1 + 92;
    while (1)
    {
      v7 = *v1;
      if (!*v1)
      {
        break;
      }

      if (v7 != 1)
      {
        v8 = 0;
        if (!v7)
        {
LABEL_20:
          v9 = 15;
LABEL_21:
          v10 = *&v1[2 * v5 + 32 + 2 * v9];
          goto LABEL_22;
        }

LABEL_15:
        if (v7 == 1 && v5 <= 9)
        {
          v9 = 10;
          goto LABEL_21;
        }

        v10 = 0;
LABEL_22:
        if (v8 == 32787)
        {
          v11 = _asl_msg_slot_val(v1, v5);
          if (v11)
          {
            notify_post(v11);
          }
        }

        else if ((v8 & 0xC000) == 0x4000)
        {
          free(*&v6[v8 & 0x3FFF]);
        }

        if ((v10 & 0xC000) == 0x4000)
        {
          free(*&v6[v10 & 0x3FFF]);
        }

        goto LABEL_29;
      }

      if (v5 <= 9)
      {
        break;
      }

LABEL_29:
      if (v4 == ++v5)
      {
        goto LABEL_30;
      }
    }

    v8 = *&v1[2 * v5 + 32];
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }
}

void _jump_dealloc_3(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    a1[2] = 0;
    asl_store_file_closeall(a1);
    v3 = a1[3];
    if (v3)
    {
      fclose(v3);
    }

    free(a1);
  }
}

int asl_log(asl_object_t client, asl_object_t msg, int level, const char *format, ...)
{
  va_start(va, format);
  v8 = _asl_evaluate_send(client, msg, level);
  if ((v8 & 0x40000) != 0 && os_log_shim_enabled())
  {
    v9 = level & ~(level >> 31);
    if (v9 >= 7)
    {
      v9 = 7;
    }

    v10 = shim_asl_to_log_type[v9];
    os_log_with_args_4syslog();
    if ((v8 & 0x80000) != 0)
    {
      v11 = _asl_lib_vlog_text(client, v8, msg, format, va);
      goto LABEL_10;
    }
  }

  else if ((v8 & 0x1A0000) != 0)
  {
    v11 = _asl_lib_vlog(client, v8, msg, format, va);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:
  if (v11)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

asl_object_t asl_open(const char *ident, const char *facility, uint32_t opts)
{
  v3 = opts;
  v4 = asl_client_open(ident, facility, opts);
  v5 = v4;
  if ((v3 & 4) == 0 && v4)
  {
    _asl_notify_open(1);
  }

  return v5;
}

uint64_t asl_client_open(const char *a1, char *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040ED89ACDEuLL);
  v7 = v6;
  if (!v6)
  {
    v13 = __error();
LABEL_12:
    *v13 = 12;
    return v7;
  }

  *v6 = 0x100000005;
  v8 = asl_msg_new(0);
  *(v7 + 32) = v8;
  if (!v8)
  {
    asl_release(v7);
    v13 = __error();
    v7 = 0;
    goto LABEL_12;
  }

  *(v7 + 12) = a3;
  *(v7 + 16) = getpid();
  *(v7 + 20) = getuid();
  *(v7 + 24) = getgid();
  if (a1)
  {
LABEL_7:
    asl_msg_set_key_val(*(v7 + 32), "Sender", a1);
    goto LABEL_8;
  }

  v9 = _NSGetArgv();
  a1 = **v9;
  if (a1)
  {
    v10 = strrchr(**v9, 47);
    if (v10)
    {
      a1 = v10 + 1;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (a2)
  {
    v11 = *(v7 + 32);
    v12 = a2;
  }

  else
  {
    v14 = *(v7 + 32);
    if (*(v7 + 20))
    {
      v15 = 8;
    }

    else
    {
      v15 = 24;
    }

    v12 = asl_syslog_faciliy_num_to_name(v15);
    v11 = v14;
  }

  asl_msg_set_key_val(v11, "Facility", v12);
  if ((a3 & 0x10000000) != 0)
  {
    v16 = 65599;
  }

  else
  {
    v16 = 196671;
  }

  *(v7 + 40) = ((a3 >> 11) & 0x40000 | v16) ^ 0x40000;
  if (*(v7 + 12))
  {
    if (fcntl(2, 1) < 0)
    {
      *(v7 + 12) &= ~1u;
    }

    else
    {
      v17 = fileno(*MEMORY[0x1E69E9848]);
      asl_client_add_output_file(v7, v17, "std", "lcl", 255, 1);
    }
  }

  return v7;
}

char *asl_msg_new(int a1)
{
  result = _asl_msg_make_page(a1);
  if (result)
  {
    *result = a1;
    *(result + 1) = 1;
  }

  return result;
}

uint64_t asl_msg_set_key_val_op(int *a1, char *__s1, const char *a3, int a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = 0xFFFFFFFFLL;
  if (!a1 || !__s1)
  {
    goto LABEL_48;
  }

  if ((a4 & 7) != 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 1;
  }

  if (a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!strcmp(__s1, "Level"))
  {
    if (a3)
    {
      if ((*a3 & 0xF8) != 0x30 || a3[1])
      {
        if (!strcasecmp(a3, "Emergency"))
        {
          a3 = "0";
        }

        else if (!strcasecmp(a3, "Alert"))
        {
          a3 = "1";
        }

        else if (!strcasecmp(a3, "Critical"))
        {
          a3 = "2";
        }

        else if (!strcasecmp(a3, "Error"))
        {
          a3 = "3";
        }

        else if (!strcasecmp(a3, "Warning"))
        {
          a3 = "4";
        }

        else if (!strcasecmp(a3, "Notice"))
        {
          a3 = "5";
        }

        else if (!strcasecmp(a3, "Info"))
        {
          a3 = "6";
        }

        else
        {
          a3 = "7";
        }
      }
    }

    else
    {
      a3 = "7";
    }
  }

  v10 = strcmp(__s1, "Message");
  v11 = 0;
  if (!a3 || v10)
  {
    goto LABEL_37;
  }

  v12 = strlen(a3);
  v13 = 0;
  do
  {
    if (!(v12 + v13))
    {
      a3 = 0;
      goto LABEL_31;
    }

    v14 = a3[v12 - 1 + v13--];
  }

  while (v14 == 10);
  if (v12 + v13 + 1 >= v12)
  {
LABEL_31:
    v11 = 0;
    goto LABEL_37;
  }

  v15 = v12 + v13 + 1;
  v16 = v15;
  if (v15 <= 0x1FF)
  {
    __memcpy_chk();
    v11 = 0;
    a3 = &v66;
    goto LABEL_36;
  }

  v17 = malloc_type_malloc(v12 + v13 + 2, 0xF19FCCEFuLL);
  if (!v17)
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_48;
  }

  v11 = v17;
  memcpy(v17, a3, v16);
  a3 = v11;
LABEL_36:
  a3[v16] = 0;
LABEL_37:
  v18 = *a1;
  v65 = -1;
  v64 = 0;
  if (v18 == 1 || _asl_msg_index(a1, __s1, &v65, &v64) == -1)
  {
    v21 = a1;
    v22 = __s1;
    v23 = a3;
    v24 = v9;
LABEL_45:
    v4 = _asl_msg_new_key_val_op(v21, v22, v23, v24);
    goto LABEL_46;
  }

  v19 = v64;
  v63 = v9;
  v62 = v65;
  if (!v64)
  {
    goto LABEL_55;
  }

  if (*v64 == 1)
  {
    if (v65 > 9)
    {
      goto LABEL_55;
    }

    v20 = 10;
LABEL_51:
    v27 = *(v64 + v20 + v65 + 16);
    if (v27 == 0xFFFF)
    {
      v61 = 0;
      v30 = 0;
      v28 = 0;
      v29 = 0;
      LOWORD(v27) = -1;
      if (a3)
      {
        goto LABEL_57;
      }

      goto LABEL_81;
    }

    if ((v27 & 0xC000) != 0x4000)
    {
      v31 = *(v64 + v20 + v65 + 16);
      goto LABEL_56;
    }

    v61 = 0;
    v28 = 0;
    v29 = *(v64 + (v27 & 0x3FFF) + 92);
    v30 = 8;
    if (!a3)
    {
      goto LABEL_81;
    }

LABEL_57:
    if (v28 && !strcmp(a3, v28) || v29 && !strcmp(a3, v29))
    {
      v4 = 0;
      if (v63 != -1)
      {
        if (v19)
        {
          v4 = 0;
          if (v62 <= 9 && *v19 == 1)
          {
            v4 = 0;
            *(v19 + v62 + 36) = v63;
          }
        }
      }

      goto LABEL_46;
    }

    v32 = v27 & 0x3FFF;
    if (v28 && v32 + v61 == v19[3])
    {
      if (*v19)
      {
        if (v62 > 9 || *v19 != 1)
        {
          goto LABEL_102;
        }

        v33 = 10;
      }

      else
      {
        if (v62 >= 0xF)
        {
LABEL_102:
          v61 = 0;
          v19[3] = v32;
          goto LABEL_108;
        }

        v33 = 15;
      }

      *(v19 + (v33 + v62) + 16) = -1;
      goto LABEL_102;
    }

    if (!v29 || v30 + v32 != v19[3])
    {
      goto LABEL_108;
    }

    if (*v19)
    {
      v34 = v62;
      if (v62 > 9 || *v19 != 1)
      {
        goto LABEL_107;
      }

      v35 = 10;
    }

    else
    {
      v34 = v62;
      if (v62 >= 0xF)
      {
LABEL_107:
        v19[3] = v32;
        *(v19 + 2) += ~strlen(v29);
        free(v29);
        v30 = 0;
        v29 = 0;
LABEL_108:
        v40 = strlen(a3);
        v41 = (v40 + 1);
        if (v41 <= 0xDC)
        {
          v42 = v40 + 1;
        }

        else
        {
          v42 = 8;
        }

        if (v29 && v42 <= v30)
        {
          *(v64 + 2) += ~strlen(v29);
          free(v29);
          goto LABEL_116;
        }

        if (!v29 && v42 <= v61)
        {
LABEL_116:
          if (v41 >= 0xDD)
          {
            v43 = strdup(a3);
            if (v43)
            {
              v44 = v43;
              v45 = strlen(v43);
              v46 = v64;
              *(v64 + 2) += v45 + 1;
              if (*v46)
              {
                v47 = v63;
                if (v65 > 9 || *v46 != 1)
                {
                  goto LABEL_144;
                }

                v48 = 10;
              }

              else
              {
                v47 = v63;
                if (v65 >= 0xF)
                {
LABEL_144:
                  *(v46 + v32 + 92) = v44;
LABEL_149:
                  if (v47 != -1 && v64)
                  {
                    v4 = 0;
                    if (v65 <= 9 && *v64 == 1)
                    {
                      v4 = 0;
                      *(v64 + v65 + 36) = v47;
                    }

                    goto LABEL_46;
                  }

                  goto LABEL_179;
                }

                v48 = 15;
              }

              *(v46 + v48 + v65 + 16) = v32 | 0x4000;
              goto LABEL_144;
            }

LABEL_140:
            v4 = 0xFFFFFFFFLL;
            goto LABEL_46;
          }

          v49 = v64;
          if (v64)
          {
            if (*v64)
            {
              if (v65 > 9 || *v64 != 1)
              {
                goto LABEL_148;
              }

              v50 = 10;
              goto LABEL_147;
            }

            if (v65 < 0xF)
            {
              v50 = 15;
LABEL_147:
              *(v64 + v50 + v65 + 16) = v32;
            }
          }

LABEL_148:
          memcpy(v49 + v32 + 92, a3, v41);
          v47 = v63;
          goto LABEL_149;
        }

        v51 = v64;
        if (v29)
        {
          *(v64 + 2) += ~strlen(v29);
          free(v29);
          v51 = v64;
        }

        v52 = v51[3];
        if (v42 > 220 - v52)
        {
          v53 = v65;
          v54 = *v51;
          if (*v51)
          {
            v24 = v63;
            if (v65 > 9 || v54 != 1)
            {
LABEL_162:
              if (v53 <= 9 && v54 == 1)
              {
                *(v51 + v53 + 36) = 0;
              }

              goto LABEL_165;
            }

            v55 = 10;
          }

          else
          {
            v24 = v63;
            if (v65 >= 0xF)
            {
LABEL_165:
              v21 = a1;
              v22 = __s1;
              v23 = a3;
              goto LABEL_45;
            }

            v55 = 15;
          }

          *(v51 + v65 + 16) = -1;
          *(v51 + (v55 + v53) + 16) = -1;
          goto LABEL_162;
        }

        v51[3] = v52 + v42;
        if (v41 >= 0xDD)
        {
          v56 = strdup(a3);
          if (!v56)
          {
            goto LABEL_140;
          }

          v57 = v56;
          *(v51 + 2) += strlen(v56) + 1;
          if (*v51)
          {
            v58 = v63;
            if (v65 > 9 || *v51 != 1)
            {
              goto LABEL_173;
            }

            v59 = 10;
          }

          else
          {
            v58 = v63;
            if (v65 >= 0xF)
            {
LABEL_173:
              *(v51 + v52 + 92) = v57;
              goto LABEL_174;
            }

            v59 = 15;
          }

          *(v51 + v59 + v65 + 16) = v52 | 0x4000;
          goto LABEL_173;
        }

        if (*v51)
        {
          if (v65 > 9 || *v51 != 1)
          {
            goto LABEL_169;
          }

          v60 = 10;
        }

        else
        {
          if (v65 >= 0xF)
          {
LABEL_169:
            memcpy(v51 + v52 + 92, a3, v41);
            v58 = v63;
LABEL_174:
            if (v58 != -1 && v64)
            {
              v4 = 0;
              if (v65 <= 9 && *v64 == 1)
              {
                v4 = 0;
                *(v64 + v65 + 36) = v58;
              }

              goto LABEL_46;
            }

LABEL_179:
            v4 = 0;
            goto LABEL_46;
          }

          v60 = 15;
        }

        *(v51 + v60 + v65 + 16) = v52;
        goto LABEL_169;
      }

      v35 = 15;
    }

    *(v19 + (v35 + v34) + 16) = -1;
    goto LABEL_107;
  }

  if (!*v64 && v65 < 0xF)
  {
    v20 = 15;
    goto LABEL_51;
  }

LABEL_55:
  LODWORD(v27) = 0;
  v31 = 0;
LABEL_56:
  v28 = v64 + v27 + 92;
  v30 = 0;
  v29 = 0;
  v61 = strlen(v28) + 1;
  LOWORD(v27) = v31;
  if (a3)
  {
    goto LABEL_57;
  }

LABEL_81:
  if (v29)
  {
    *(v64 + 2) += ~strlen(v29);
    free(v29);
    v19 = v64;
    v36 = v65;
    v37 = v63;
    if (!v64)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v37 = v63;
    v36 = v65;
    if (!v64)
    {
      goto LABEL_179;
    }
  }

  v38 = *v19;
  if (*v19)
  {
    if (v36 <= 9 && v38 == 1)
    {
      v39 = 10;
      goto LABEL_91;
    }
  }

  else if (v36 < 0xF)
  {
    v39 = 15;
LABEL_91:
    *(v19 + v39 + v36 + 16) = -1;
  }

  if (v37 == -1)
  {
    goto LABEL_179;
  }

  v4 = 0;
  if (v36 <= 9 && v38 == 1)
  {
    v4 = 0;
    *(v19 + v36 + 36) = v37;
  }

LABEL_46:
  if (v11)
  {
    free(v11);
  }

LABEL_48:
  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _asl_msg_new_key_val_op(int *a1, char *__s, const char *a3, __int16 a4)
{
  v6 = a1;
  v7 = *a1;
  if (*a1 == 1)
  {
    v8 = 10;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 15;
  }

  v32 = 0;
  __src = 0;
  v10 = strlen(__s);
  v31 = _asl_msg_std_key(__s, v10);
  if (v31)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 + 1;
  }

  if (a3)
  {
    v12 = strlen(a3) + 1;
    v29 = v12;
  }

  else
  {
    v12 = 0;
    v29 = 0;
  }

  if (v11 < 0xDD)
  {
    v13 = 0;
  }

  else
  {
    v13 = strdup(__s);
    __src = v13;
    v11 = 8;
  }

  if (v12 < 0xDD)
  {
    v14 = 0;
  }

  else
  {
    v14 = strdup(a3);
    v32 = v14;
    v12 = 8;
  }

  v15 = v12 + v11;
  if (v11 && v15 >= 0xDD && !v14)
  {
    v14 = strdup(a3);
    v32 = v14;
    v15 = v11 + 8;
    v12 = 8;
  }

  if (v15 >= 0xDD && !v13)
  {
    v13 = strdup(__s);
    __src = v13;
    v15 = v12 + 8;
    v11 = 8;
  }

  if (v15 > 0xDC)
  {
LABEL_27:
    if (v13)
    {
      free(v13);
    }

    if (v14)
    {
      free(v14);
    }

    return 0xFFFFFFFFLL;
  }

  v17 = v10;
  do
  {
    v18 = v6;
    if (v15 <= 220 - v6[3] && v9 != 0)
    {
      v20 = 0;
      v21 = *v18;
      while (v21 && (v21 != 1 || v20 > 9) || *&v18[2 * v20 + 32] != -1)
      {
        if (v9 == ++v20)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_46;
    }

LABEL_43:
    v6 = *(v18 + 3);
  }

  while (v6);
  v22 = v17;
  page = _asl_msg_make_page(v7);
  if (!page)
  {
    goto LABEL_27;
  }

  LODWORD(v20) = 0;
  *(v18 + 3) = page;
  v18 = page;
  v17 = v22;
LABEL_46:
  LOWORD(v24) = v31;
  if (!v31)
  {
    v24 = *(v18 + 3);
    if (v13)
    {
      v25 = v17;
      memcpy(&v18[v24 + 92], &__src, v11);
      *(v18 + 2) += v25;
      LOWORD(v24) = v24 | 0x4000;
    }

    else
    {
      memcpy(&v18[v24 + 92], __s, v11);
    }
  }

  v26 = *v18;
  if (!*v18 || v20 <= 9 && v26 == 1)
  {
    *&v18[2 * v20 + 32] = v24;
  }

  v27 = *(v18 + 3) + v11;
  *(v18 + 3) = v27;
  if (a3)
  {
    if (v32)
    {
      memcpy(&v18[v27 + 92], &v32, v12);
      *(v18 + 2) += v29;
      LOWORD(v27) = v27 | 0x4000;
    }

    else
    {
      memcpy(&v18[v27 + 92], a3, v12);
    }

    v26 = *v18;
    if (*v18)
    {
      if (v20 > 9 || v26 != 1)
      {
        goto LABEL_64;
      }

      v28 = 10;
    }

    else
    {
      v28 = 15;
    }

    *&v18[2 * (v28 + v20) + 32] = v27;
LABEL_64:
    *(v18 + 3) += v12;
  }

  if (v20 <= 9 && v26 == 1)
  {
    *&v18[2 * (v20 + 20) + 32] = a4;
  }

  result = 0;
  ++*(v18 + 2);
  return result;
}

void _asl_notify_open(int a1)
{
  if (a1)
  {
    pthread_mutex_lock(&stru_1ED4AE000);
    LODWORD(_asl_global) = _asl_global + 1;
    if (DWORD2(_asl_global) != -1)
    {
LABEL_15:

      pthread_mutex_unlock(&stru_1ED4AE000);
      return;
    }
  }

  else
  {
    LODWORD(_asl_global) = _asl_global + 1;
    if (DWORD2(_asl_global) != -1)
    {
      return;
    }
  }

  if (DWORD1(_asl_global) == -1 && notify_register_check("com.apple.asl.remote", &_asl_global + 1))
  {
    DWORD1(_asl_global) = -1;
  }

  if (HIDWORD(_asl_global) == -1 && notify_register_plain())
  {
    HIDWORD(_asl_global) = -1;
  }

  v2 = asl_remote_notify_name();
  if (v2)
  {
    v3 = v2;
    v4 = notify_register_plain();
    free(v3);
    if (v4)
    {
      DWORD2(_asl_global) = -1;
    }
  }

  if (a1)
  {
    goto LABEL_15;
  }
}

char *asl_remote_notify_name()
{
  getpid();
  v1 = 0;
  if (geteuid())
  {
    asprintf(&v1, "user.uid.%d.syslog.%d");
  }

  else
  {
    asprintf(&v1, "%s.%d");
  }

  return v1;
}

int asl_set_filter(asl_object_t client, int f)
{
  v2 = f;
  if (!client)
  {
    if (_asl_open_default_once != -1)
    {
      _asl_open_default_cold_1();
    }

    v5 = off_1ED4AE050;
    if (off_1ED4AE050)
    {
      pthread_mutex_lock(&stru_1ED4AE000);
      v6 = asl_client_set_filter(v5, v2);
      pthread_mutex_unlock(&stru_1ED4AE000);
      return v6;
    }

    return -1;
  }

  if (asl_get_type(client) != 5)
  {
    return -1;
  }

  return asl_client_set_filter(client, v2);
}

uint64_t asl_client_set_filter(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(a1 + 40);
  *(a1 + 40) = a2;
  return result;
}

void ___asl_open_default_block_invoke()
{
  v0 = asl_client_open(0, 0, 4u);
  off_1ED4AE050 = v0;
  if (v0)
  {
    *(v0 + 12) = 0;
  }

  _asl_notify_open(0);
}

void *_asl_object_init()
{
  asl_jump[0] = asl_msg_jump_table();
  qword_1ED4AE070 = asl_msg_jump_table();
  qword_1ED4AE078 = asl_msg_list_jump_table();
  qword_1ED4AE080 = asl_file_jump_table();
  qword_1ED4AE088 = asl_store_jump_table();
  result = asl_client_jump_table();
  qword_1ED4AE090 = result;
  return result;
}

uint64_t _asl_lib_vlog_text(__asl_object_s *a1, unsigned __int8 a2, __asl_object_s *a3, const char *a4, va_list a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = __error();
  if (!a4)
  {
    v26 = 1;
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v10;
  v30 = 0;
  while (a4[v11] == 37)
  {
    v16 = v11 + 1;
    if (!a4[v11 + 1])
    {
      goto LABEL_9;
    }

    if (a4[v11 + 1] == 109)
    {
      strerror_r(v15, __strerrbuf, 0x800uLL);
      v17 = strlen(__strerrbuf);
      v14 = 1;
      v11 = v16;
      v13 = v17;
    }

    else
    {
      v17 = 2;
      ++v11;
    }

LABEL_10:
    v12 += v17;
    ++v11;
  }

  if (a4[v11])
  {
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  if (v14)
  {
    v18 = malloc_type_malloc((v12 + 1), 0x94C063D2uLL);
    if (v18)
    {
      v19 = v18;
      v29 = a3;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = a4[v20];
        if (v22 != 37)
        {
          break;
        }

        v23 = v20 + 1;
        if (!a4[v20 + 1])
        {
          goto LABEL_25;
        }

        if (a4[v20 + 1] != 109 || v13 == 0)
        {
          v19[v21] = 37;
          v25 = v21 + 1;
          v21 += 2;
          v19[v25] = a4[v23];
        }

        else
        {
          memcpy(&v19[v21], __strerrbuf, v13);
          v21 += v13;
        }

LABEL_26:
        v20 = v23 + 1;
      }

      if (!a4[v20])
      {
        v19[v21] = 0;
        v30 = 0;
        vasprintf(&v30, v19, a5);
        free(v19);
        a3 = v29;
        goto LABEL_30;
      }

      v19[v21++] = v22;
LABEL_25:
      v23 = v20;
      goto LABEL_26;
    }

LABEL_32:
    v26 = 9;
  }

  else
  {
    v30 = 0;
    vasprintf(&v30, a4, a5);
LABEL_30:
    if (!v30)
    {
      goto LABEL_32;
    }

    v26 = _asl_send_message_text(0, 0, a1, a2, a3, v30, 1);
    free(v30);
  }

LABEL_33:
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void asl_msg_release(asl_object_t obj)
{
  if (obj)
  {
    asl_release(obj);
  }
}

uint64_t _asl_send_message_text(__asl_object_s *a1, int *a2, asl_object_t obj, unsigned __int8 a4, __asl_object_s *a5, const char *a6, int a7)
{
  v12 = a1;
  if (!a1)
  {
    if (obj)
    {
      if (asl_get_type(obj) == 5)
      {
        v12 = obj;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      if (_asl_open_default_once != -1)
      {
        _asl_open_default_cold_1();
      }

      v12 = off_1ED4AE050;
      if (!off_1ED4AE050)
      {
        return 9999;
      }
    }
  }

  if (a4 >= 7u)
  {
    v14 = 7;
  }

  else
  {
    v14 = a4;
  }

  if (!a2)
  {
    v35.tv_sec = 0;
    *&v35.tv_usec = 0;
    if (gettimeofday(&v35, 0))
    {
      v35.tv_sec = time(0);
      v35.tv_usec = 0;
    }

    v34 = 0;
    if (asl_msg_lookup(a5, "Sender", &v34, 0))
    {
      v34 = 0;
    }

    v33 = 0;
    v15 = asl_msg_lookup(a5, "Facility", &v33, 0);
    if (v15)
    {
      v17 = 0;
      v33 = 0;
    }

    else
    {
      v17 = v33;
    }

    v18 = asl_base_msg(v12, v14, &v35, v34, v17, a6);
    if (v18)
    {
      a2 = asl_msg_merge(v18, a5);
      v16 = a2;
      goto LABEL_23;
    }

    return 9999;
  }

  v15 = 0;
  v16 = 0;
LABEL_23:
  v19 = *(v12 + 13);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 1 << v14;
    do
    {
      v23 = *(v12 + 7);
      v24 = *(v23 + v20);
      if (a7)
      {
        if ((v24 - 1) < 2)
        {
          goto LABEL_29;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
LABEL_29:
        v25 = v23 + v20;
        v26 = *(v25 + 8);
        if (v26)
        {
          v27 = (v26 & v22) == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          LODWORD(v35.tv_sec) = 0;
          v28 = asl_format_message(a2, *(v25 + 16), *(v25 + 24), *(v25 + 4), &v35);
          if (v28)
          {
            v29 = v28;
            v30 = write(*(*(v12 + 7) + v20), v28, (LODWORD(v35.tv_sec) - 1));
            if ((v30 & 0x80000000) != 0)
            {
              v31 = *(v12 + 7);
              if (*(v31 + v20) == 2)
              {
                v15 = 0;
              }

              else
              {
                v15 = v30;
              }

              *(v31 + v20) = -1;
            }

            else
            {
              v15 = 0;
            }

            free(v29);
          }

          v19 = *(v12 + 13);
        }
      }

      ++v21;
      v20 += 32;
    }

    while (v21 < v19);
  }

  if (v16)
  {
    asl_msg_release(v16);
  }

  return v15;
}

int *asl_base_msg(uint64_t a1, unsigned int a2, uint64_t a3, int *a4, int *a5, const char *a6)
{
  v7 = a5;
  v8 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v23 = a5;
  v24 = a4;
  v12 = asl_msg_new(0);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_34;
  }

  if (a2 <= 7)
  {
    asl_msg_set_key_val(v12, "Level", level_to_number_string[a2]);
  }

  if (a3)
  {
    snprintf(__str, 0x40uLL, "%llu", *a3);
    asl_msg_set_key_val(v13, "Time", __str);
    snprintf(__str, 0x40uLL, "%d", 1000 * *(a3 + 8));
    asl_msg_set_key_val(v13, "TimeNanoSec", __str);
  }

  if (a6)
  {
    asl_msg_set_key_val(v13, "Message", a6);
  }

  v14 = getpid();
  snprintf(__str, 0x40uLL, "%u", v14);
  asl_msg_set_key_val(v13, "PID", __str);
  identifier = os_activity_get_identifier(MEMORY[0x1E69E9C00], 0);
  if (identifier)
  {
    snprintf(__str, 0x40uLL, "0x%016llx", identifier);
    asl_msg_set_key_val(v13, "OSActivityID", __str);
  }

  if (!a1 || v8)
  {
LABEL_26:
    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (asl_msg_lookup(*(a1 + 32), "Sender", &v24, 0) || (v8 = v24) == 0)
  {
    v24 = 0;
    v16 = qword_1ED4ADFF8;
    if (!qword_1ED4ADFF8)
    {
      v17 = _NSGetArgv();
      v18 = **v17;
      if (v18)
      {
        v19 = strrchr(**v17, 47);
        pthread_mutex_lock(&stru_1ED4AE000);
        if (!qword_1ED4ADFF8)
        {
          if (v19)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v18;
          }

          qword_1ED4ADFF8 = strdup(v20);
        }

        pthread_mutex_unlock(&stru_1ED4AE000);
      }

      if (qword_1ED4ADFF8)
      {
        v16 = qword_1ED4ADFF8;
      }

      else
      {
        v16 = "Unknown";
      }
    }

    asl_msg_set_key_val(v13, "Sender", v16);
    v8 = v24;
    goto LABEL_26;
  }

LABEL_27:
  asl_msg_set_key_val(v13, "Sender", v8);
  v7 = v23;
LABEL_28:
  if (a1 && !v7)
  {
    if (asl_msg_lookup(*(a1 + 32), "Facility", &v23, 0))
    {
      goto LABEL_34;
    }

    v7 = v23;
  }

  if (v7)
  {
    asl_msg_set_key_val(v13, "Facility", v7);
  }

LABEL_34:
  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

void *asl_format_message(void *result, char *__s1, char *a3, int a4, _DWORD *a5)
{
  v90 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if (!result)
  {
    goto LABEL_187;
  }

  v9 = result;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0uLL;
  __s = 0;
  __s1a = 0;
  v77 = 0;
  if (!__s1 || !strcmp(__s1, "raw"))
  {
LABEL_184:
    v77 = 0;
    asl_msg_lookup(v9, "TimeNanoSec", &v77, 0);
    v31 = asl_msg_to_string_raw(a4, v9, a3);
    v27 = v31;
    goto LABEL_185;
  }

  if (!strcmp(__s1, "std"))
  {
LABEL_38:
    v24 = 1;
    goto LABEL_44;
  }

  if (!strcmp(__s1, "bsd"))
  {
    goto LABEL_43;
  }

  if (!strcmp(__s1, "xml"))
  {
    asl_msg_lookup(v9, "TimeNanoSec", &v77, 0);
    result = asl_string_new(a4);
    if (!result)
    {
      goto LABEL_187;
    }

    v13 = result;
    asl_string_append_char_no_encoding(result, 9);
    asl_string_append_no_encoding(v13, "<dict>");
    asl_string_append_char_no_encoding(v13, 10);
    v14 = asl_msg_fetch(v9, 0, &__s1a, &__s, 0);
    if (v14 == -1)
    {
LABEL_31:
      asl_string_append_char_no_encoding(v13, 9);
      asl_string_append_no_encoding(v13, "</dict>");
      asl_string_append_char_no_encoding(v13, 10);
      *a5 = asl_string_length(v13);
      v23 = v13;
      goto LABEL_186;
    }

    v15 = v14;
    while (1)
    {
      if (asl_is_utf8(__s1a) == 1)
      {
        asl_string_append_xml_tag(v13, "key", __s1a);
        if (!strcmp(__s1a, "Time"))
        {
          v18 = _asl_time_string(a3, __s, v77);
          if (!v18)
          {
            v16 = v13;
            v17 = "0";
            goto LABEL_29;
          }

          v19 = v18;
          v20 = v13;
          v21 = "string";
        }

        else
        {
          if (asl_is_utf8(__s) == 1)
          {
            v16 = v13;
            v17 = __s;
LABEL_29:
            asl_string_append_xml_tag(v16, "string", v17);
            goto LABEL_30;
          }

          v22 = strlen(__s);
          v19 = asl_b64_encode(__s, v22);
          v20 = v13;
          v21 = "data";
        }

        asl_string_append_xml_tag(v20, v21, v19);
        free(v19);
      }

LABEL_30:
      v15 = asl_msg_fetch(v9, v15, &__s1a, &__s, 0);
      if (v15 == -1)
      {
        goto LABEL_31;
      }
    }
  }

  if (!strcmp(__s1, "msg"))
  {
    asl_msg_lookup(v9, "TimeNanoSec", &v77, 0);
    v83 = 0;
    if (asl_msg_lookup(v9, "Message", &v83, 0))
    {
      result = 0;
      goto LABEL_187;
    }

    result = asl_string_new(a4);
    if (!result)
    {
      goto LABEL_187;
    }

    v27 = result;
    v30 = v83;
    goto LABEL_75;
  }

  v10 = *__s1;
  if (v10 == 98)
  {
    if (__s1[1] != 115 || __s1[2] != 100 || __s1[3] != 46)
    {
      goto LABEL_77;
    }

    if (!a3)
    {
      v24 = 0;
      v75 = __s1[4];
      v73 = __s1 + 4;
      if (v75)
      {
LABEL_180:
        a3 = __str;
        snprintf(__str, 0x10uLL, "lcl.%s", v73);
        goto LABEL_44;
      }

LABEL_182:
      a3 = 0;
LABEL_44:
      v77 = 0;
      asl_msg_lookup(v9, "TimeNanoSec", &v77, 0);
      v80 = 0;
      v81 = 0uLL;
      v85 = 0;
      v86 = 0;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v25 = 0;
      if (!asl_msg_lookup(v9, "Time", &v80, 0))
      {
        v25 = _asl_time_string(a3, v80, v77);
      }

      v26 = 7;
      if (!asl_msg_lookup(v9, "Level", &v82, 0) && v82)
      {
        v26 = atoi(v82);
      }

      if (!asl_msg_lookup(v9, "Host", &v86, 0) && !v86)
      {
        v86 = "unknown";
      }

      if (!asl_msg_lookup(v9, "Sender", &v84, 0) && !v84)
      {
        v84 = "unknown";
      }

      asl_msg_lookup(v9, "PID", &v85, 0);
      asl_msg_lookup(v9, "Message", &v83, 0);
      asl_msg_lookup(v9, "RefProc", &v81 + 1, 0);
      asl_msg_lookup(v9, "RefPID", &v81, 0);
      result = asl_string_new(a4);
      if (!result)
      {
        goto LABEL_187;
      }

      v27 = result;
      if (v25)
      {
        asl_string_append(result, v25);
        free(v25);
      }

      else
      {
        asl_string_append_char_no_encoding(result, 48);
      }

      asl_string_append_char_no_encoding(v27, 32);
      asl_string_append(v27, v86);
      asl_string_append_char_no_encoding(v27, 32);
      asl_string_append(v27, v84);
      if (v85 && (*v85 != 45 || v85[1] != 49 || v85[2]))
      {
        asl_string_append_char_no_encoding(v27, 91);
        asl_string_append(v27, v85);
        asl_string_append_char_no_encoding(v27, 93);
      }

      v28 = DWORD2(v81) | v81;
      if (v81 != 0)
      {
        asl_string_append_no_encoding(v27, " (");
        if (*(&v81 + 1))
        {
          asl_string_append(v27, *(&v81 + 1));
        }

        v28 = v81;
        if (v81)
        {
          asl_string_append_char_no_encoding(v27, 91);
          asl_string_append(v27, v81);
          asl_string_append_char_no_encoding(v27, 93);
          v28 = v81 != 0;
        }
      }

      if (*(&v81 + 1) || v28)
      {
        asl_string_append_char_no_encoding(v27, 41);
      }

      if (v24)
      {
        asl_string_append_no_encoding(v27, " <");
        v29 = _asl_level_string(v26);
        asl_string_append(v27, v29);
        asl_string_append_char_no_encoding(v27, 62);
      }

      asl_string_append_no_encoding(v27, ": ");
      v30 = v83;
      if (!v83)
      {
LABEL_76:
        v31 = v27;
LABEL_185:
        asl_string_append_char_no_encoding(v31, 10);
        *a5 = asl_string_length(v27);
        v23 = v27;
        goto LABEL_186;
      }

LABEL_75:
      asl_string_append(v27, v30);
      goto LABEL_76;
    }

LABEL_43:
    v24 = 0;
    goto LABEL_44;
  }

  if (v10 == 115)
  {
    if (__s1[1] != 116 || __s1[2] != 100 || __s1[3] != 46)
    {
      goto LABEL_77;
    }

    if (a3)
    {
      goto LABEL_38;
    }

    v74 = __s1[4];
    v73 = __s1 + 4;
    v24 = 1;
    if (v74)
    {
      goto LABEL_180;
    }

    goto LABEL_182;
  }

  if (v10 == 114 && __s1[1] == 97 && __s1[2] == 119 && __s1[3] == 46)
  {
    if (!a3)
    {
      v12 = __s1[4];
      v11 = __s1 + 4;
      if (v12)
      {
        a3 = __str;
        snprintf(__str, 0x10uLL, "sec.%s", v11);
      }

      else
      {
        a3 = 0;
      }
    }

    goto LABEL_184;
  }

LABEL_77:
  asl_msg_lookup(v9, "TimeNanoSec", &v77, 0);
  result = asl_string_new(a4);
  if (!result)
  {
    goto LABEL_187;
  }

  v32 = result;
  v33 = strlen(__s1);
  if (v33 >= 0x201uLL)
  {
    result = malloc_type_malloc(v33, 0x5C7D4E1EuLL);
    v34 = result;
    if (!result)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v34 = __str;
  }

  LODWORD(v35) = 0;
LABEL_82:
  v36 = &__s1[v35];
  v37 = *v36;
  if (v37 == 36)
  {
    v42 = 0;
    v43 = v35 + 1;
    v44 = v43;
    v45 = &__s1[v43];
    while (1)
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 <= 39)
      {
        break;
      }

      if (v46 != 41)
      {
        if (v46 == 40)
        {
          ++v42;
          goto LABEL_108;
        }

LABEL_104:
        if (v46 == 9 && v42 == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_108;
      }

      v42 -= v42 > 0;
      if (!v42)
      {
        ++v43;
LABEL_122:
        v49 = v43 - v44;
        memcpy(v34, v36 + 1, v49);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v34[v49] = 0;
        while (2)
        {
          v54 = &v34[v50];
          v55 = *v54;
          if (v55 == 40)
          {
            goto LABEL_136;
          }

          if (v55 == 41)
          {
            *v54 = 0;
            v51 = 1;
LABEL_136:
            ++v50;
            continue;
          }

          break;
        }

        if (*v54)
        {
          v56 = v51 == 1;
          v57 = v53 == 0;
          v58 = !v56 || !v57;
          if (v56 && v57)
          {
            v59 = 1;
          }

          else
          {
            v59 = v51;
          }

          if (v58)
          {
            v60 = v53;
          }

          else
          {
            v60 = &v34[v50];
          }

          if (v52)
          {
            v51 = v59;
            v53 = v60;
          }

          else
          {
            v52 = &v34[v50];
          }

          goto LABEL_136;
        }

        if (v52)
        {
          v87 = 0;
          v88 = 0;
          asl_msg_lookup(v9, "TimeNanoSec", &v87, 0);
          if (!asl_msg_lookup(v9, v52, &v88, 0))
          {
            v61 = v88;
            if (v88)
            {
              if (!strcmp(v52, "Time"))
              {
                if (v53)
                {
                  v62 = v53;
                }

                else
                {
                  v62 = a3;
                }

                v69 = _asl_time_string(v62, v61, v87);
                if (v69)
                {
                  asl_string_append_no_encoding(v32, v69);
                  free(v69);
                }

                else
                {
                  asl_string_append_char_no_encoding(v32, 48);
                }
              }

              else
              {
                if (strcmp(v52, "Level"))
                {
                  asl_string_append(v32, v61);
                  goto LABEL_172;
                }

                if (v53)
                {
                  if (!strcmp(v53, "str"))
                  {
                    v70 = atoi(v61);
                    v71 = _asl_level_string(v70);
                  }

                  else
                  {
                    if (strcmp(v53, "char"))
                    {
                      goto LABEL_163;
                    }

                    v72 = atoi(v61);
                    v71 = _asl_level_char(v72);
                  }

                  v68 = v71;
                  v88 = v71;
                  v67 = v32;
                }

                else
                {
LABEL_163:
                  v67 = v32;
                  v68 = v61;
                }

                asl_string_append_no_encoding(v67, v68);
              }
            }
          }
        }

LABEL_172:
        LODWORD(v35) = v43 - 1;
LABEL_173:
        LODWORD(v35) = v35 + 1;
        goto LABEL_82;
      }

LABEL_108:
      ++v43;
    }

    if (v46 == 32)
    {
      if (!v42)
      {
        goto LABEL_122;
      }

      goto LABEL_108;
    }

    if (!v46)
    {
      goto LABEL_122;
    }

    goto LABEL_104;
  }

  if (v37 == 92)
  {
    v40 = v35;
    v35 = v35 + 1;
    v41 = __s1[v35];
    if (v41 > 0x65)
    {
      if (__s1[v35] > 0x72u)
      {
        switch(v41)
        {
          case 's':
            v39 = v32;
            v38 = 32;
            goto LABEL_86;
          case 't':
            v39 = v32;
            v38 = 9;
            goto LABEL_86;
          case 'v':
            v39 = v32;
            v38 = 11;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v41)
        {
          case 'f':
            v39 = v32;
            v38 = 12;
            goto LABEL_86;
          case 'n':
            v39 = v32;
            v38 = 10;
            goto LABEL_86;
          case 'r':
            v39 = v32;
            v38 = 13;
            goto LABEL_86;
        }
      }
    }

    else if (__s1[v35] > 0x60u)
    {
      switch(v41)
      {
        case 'a':
          v39 = v32;
          v38 = 7;
          goto LABEL_86;
        case 'b':
          v39 = v32;
          v38 = 8;
          goto LABEL_86;
        case 'e':
          v39 = v32;
          v38 = 27;
          goto LABEL_86;
      }
    }

    else
    {
      switch(v41)
      {
        case '$':
          v39 = v32;
          v38 = 36;
          goto LABEL_86;
        case '\'':
          v39 = v32;
          v38 = 39;
          goto LABEL_86;
        case '\\':
          v39 = v32;
          v38 = 92;
          goto LABEL_86;
      }
    }

    v37 = v41 - 48;
    if (v37 > 9)
    {
      goto LABEL_173;
    }

    v63 = v40 + 2;
    v64 = __s1[v40 + 2] - 48;
    if (v64 <= 9)
    {
      v65 = v40 + 3;
      v66 = __s1[v65];
      LOBYTE(v37) = v64 + 8 * v37;
      LODWORD(v35) = (v66 - 48) <= 9 ? v65 : v63;
      if ((v66 - 48) <= 9)
      {
        LOBYTE(v37) = v66 - 48 + 8 * v37;
      }
    }

LABEL_85:
    v38 = v37;
    v39 = v32;
LABEL_86:
    asl_string_append_char_no_encoding(v39, v38);
    goto LABEL_173;
  }

  if (*v36)
  {
    goto LABEL_85;
  }

  if (v34 != __str)
  {
    free(v34);
  }

  asl_string_append_char_no_encoding(v32, 10);
  *a5 = asl_string_length(v32);
  v23 = v32;
LABEL_186:
  result = asl_string_release_return_bytes(v23);
LABEL_187:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

void *asl_string_append_char_no_encoding(void *a1, char a2)
{
  if (a1)
  {
    if (a1[3])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((_asl_string_grow(a1, v4) & 0x80000000) == 0)
    {
      *(a1[5] + a1[4]) = a2;
      v5 = a1[5];
      v6 = a1[4] + 1;
      a1[4] = v6;
      *(v5 + v6) = 0;
    }
  }

  return a1;
}

void *asl_string_append_no_encoding_len(void *a1, char *__s, size_t a3)
{
  if (a1 && __s)
  {
    v5 = a3;
    if (!a3)
    {
      v5 = strlen(__s);
    }

    if (a1[3])
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if ((_asl_string_grow(a1, v6) & 0x80000000) == 0)
    {
      memcpy((a1[5] + a1[4]), __s, v5);
      v7 = a1[5];
      v8 = a1[4] + v5;
      a1[4] = v8;
      *(v7 + v8) = 0;
    }
  }

  return a1;
}

uint64_t asl_msg_fetch(_DWORD *a1, unsigned int a2, char **a3, int **a4, _WORD *a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1;
  if (*a1 == 1)
  {
    v7 = 10;
  }

  else
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 15;
  }

  v9 = HIBYTE(a2);
  if (HIBYTE(a2) == 255)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFF) != 0)
  {
    v14 = a2 & 0xFFFFFF;
    do
    {
      v6 = *(v6 + 3);
      if (!v6)
      {
        return 0xFFFFFFFFLL;
      }
    }

    while (--v14);
  }

  if (a3)
  {
    *a3 = _asl_msg_slot_key(v6, HIBYTE(a2));
  }

  if (a4)
  {
    *a4 = _asl_msg_slot_val(v6, v9);
  }

  if (a5)
  {
    v15 = 0;
    if (a2 >> 25 <= 4 && *v6 == 1)
    {
      v15 = *(v6 + v9 + 36);
    }

    *a5 = v15;
  }

  while (++v9 < v8)
  {
LABEL_27:
    if (*(v6 + v9 + 16) != -1)
    {
      return v13 | (v9 << 24);
    }
  }

  v6 = *(v6 + 3);
  if (v6)
  {
    v9 = 0;
    ++v13;
    goto LABEL_27;
  }

  return 4278190080;
}

int *asl_msg_merge(int *a1, asl_object_t obj)
{
  if (obj)
  {
    v14 = 0;
    v15 = 0;
    type = asl_get_type(obj);
    v5 = type;
    v6 = a1;
    if (!a1)
    {
      page = _asl_msg_make_page(type);
      v6 = page;
      if (page)
      {
        *page = v5;
        *(page + 1) = 1;
      }
    }

    v16 = 0;
    v8 = asl_msg_fetch(obj, 0, &v15, &v14, &v16);
    if (v8 != -1)
    {
      for (i = v8; i != -1; i = asl_msg_fetch(obj, i, &v15, &v14, &v16))
      {
        if (!v5)
        {
          v16 = 0;
        }

        v10 = v14;
        v11 = v15;
        v12 = v16;
        if (a1)
        {
          if (!v6)
          {
            continue;
          }

          if (!v15)
          {
            continue;
          }

          v18 = -1;
          v17 = 0;
          if (_asl_msg_index(v6, v15, &v18, &v17) != -1)
          {
            continue;
          }
        }

        asl_msg_set_key_val_op(v6, v11, v10, v12);
      }
    }

    return v6;
  }

  return a1;
}

uint64_t asl_string_append_internal(uint64_t a1, char *a2, int a3)
{
  v3 = a1;
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_150;
  }

  v4 = a2;
  if (!a2)
  {
    goto LABEL_150;
  }

  v5 = *(a1 + 8) & 0xF;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = 0;
      goto LABEL_149;
    }

    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_150;
    }

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v4[1];
      if (v4[1])
      {
        v10 = (v4[2] & 0xFE) != 168;
      }

      else
      {
        v10 = 1;
      }

      if (v6 == 8)
      {
        if (v7)
        {
          asl_string_append_no_encoding_len(v3, v8, v7);
          v8 = 0;
        }

        v11 = v3;
        v12 = "^H";
      }

      else
      {
        if (v6 == 13 || v6 == 10)
        {
          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v8, v7);
            v8 = 0;
          }
        }

        else
        {
          if (v6 == 194 && v9 == 133)
          {
            if (v7)
            {
              asl_string_append_no_encoding_len(v3, v8, v7);
              v8 = 0;
            }

            asl_string_append_no_encoding_len(v3, "\n\t", 2uLL);
            v7 = 0;
            ++v4;
            goto LABEL_20;
          }

          v15 = v6 != 226 || v9 != 128;
          if (v15 || v10)
          {
            if (!v8)
            {
              v8 = v4;
            }

            ++v7;
            goto LABEL_20;
          }

          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v8, v7);
            v8 = 0;
          }

          v4 += 3;
        }

        v11 = v3;
        v12 = "\n\t";
      }

      asl_string_append_no_encoding_len(v11, v12, 2uLL);
      v7 = 0;
LABEL_20:
      v13 = *++v4;
      v6 = v13;
      if (!v13)
      {
        if (v7)
        {
          a1 = v3;
          a2 = v8;
          goto LABEL_149;
        }

        goto LABEL_150;
      }
    }
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_150;
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *v4;
      if (v18 <= 0x26)
      {
        if (v18 == 34)
        {
          if (v17)
          {
            asl_string_append_no_encoding_len(v3, v16, v17);
            v16 = 0;
          }

          v19 = v3;
          v20 = "&quot;";
LABEL_71:
          v21 = 6;
          goto LABEL_72;
        }

        if (v18 == 38)
        {
          if (v17)
          {
            asl_string_append_no_encoding_len(v3, v16, v17);
            v16 = 0;
          }

          v19 = v3;
          v20 = "&amp;";
          v21 = 5;
          goto LABEL_72;
        }

        if (!*v4)
        {
          if (v17)
          {
            a1 = v3;
            a2 = v16;
            v7 = v17;
            goto LABEL_149;
          }

          goto LABEL_150;
        }
      }

      else
      {
        switch(v18)
        {
          case '\'':
            if (v17)
            {
              asl_string_append_no_encoding_len(v3, v16, v17);
              v16 = 0;
            }

            v19 = v3;
            v20 = "&apos;";
            goto LABEL_71;
          case '<':
            if (v17)
            {
              asl_string_append_no_encoding_len(v3, v16, v17);
              v16 = 0;
            }

            v19 = v3;
            v20 = "&lt;";
LABEL_61:
            v21 = 4;
LABEL_72:
            asl_string_append_no_encoding_len(v19, v20, v21);
            v17 = 0;
            goto LABEL_73;
          case '>':
            if (v17)
            {
              asl_string_append_no_encoding_len(v3, v16, v17);
              v16 = 0;
            }

            v19 = v3;
            v20 = "&gt;";
            goto LABEL_61;
        }
      }

      if ((v18 & 0x80) != 0)
      {
        if (__maskrune(*v4, 0x200uLL))
        {
LABEL_68:
          if (v17)
          {
            asl_string_append_no_encoding_len(v3, v16, v17);
            v16 = 0;
          }

          snprintf(__str, 8uLL, "&#x%02hhx;", v18);
          v20 = __str;
          v19 = v3;
          goto LABEL_71;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * *v4 + 60) & 0x200) != 0)
      {
        goto LABEL_68;
      }

      if (!v16)
      {
        v16 = v4;
      }

      ++v17;
LABEL_73:
      ++v4;
    }
  }

  v22 = *a2;
  if (!*a2)
  {
    goto LABEL_150;
  }

  v7 = 0;
  v24 = 0;
  do
  {
    if ((v22 & 0x80) != 0)
    {
      if (v22 == 160)
      {
        if (v7)
        {
          asl_string_append_no_encoding_len(v3, v24, v7);
          v24 = 0;
        }

        v26 = v3;
        v27 = "\\240";
        v28 = 4;
        goto LABEL_130;
      }

      if (v7)
      {
        asl_string_append_no_encoding_len(v3, v24, v7);
        v24 = 0;
      }

      asl_string_append_no_encoding_len(v3, "\\M", 2uLL);
      v7 = 0;
      v25 = v22 & 0x7F;
    }

    else
    {
      v25 = v22;
    }

    if (v25 == 32)
    {
      if (a3)
      {
        if (v7)
        {
          asl_string_append_no_encoding_len(v3, v24, v7);
          v24 = 0;
        }

        v26 = v3;
        v27 = "\\s";
LABEL_129:
        v28 = 2;
LABEL_130:
        asl_string_append_no_encoding_len(v26, v27, v28);
LABEL_131:
        v7 = 0;
        goto LABEL_132;
      }
    }

    else
    {
      v29 = v25;
      if ((v22 & 0x80) == 0 && v25 == 92)
      {
        if (v7)
        {
          asl_string_append_no_encoding_len(v3, v24, v7);
          v24 = 0;
        }

        v26 = v3;
        v27 = "\\\";
        goto LABEL_129;
      }

      if ((v22 & 0x80) == 0 && (*(v3 + 8) & 2) != 0)
      {
        v30 = *v4;
        if (v30 == 93 || v30 == 91)
        {
          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v24, v7);
            v24 = 0;
            v30 = *v4;
          }

          v26 = v3;
          if (v30 == 91)
          {
            v27 = "\\[";
          }

          else
          {
            v27 = "\\]";
          }

          goto LABEL_129;
        }
      }

      if (v29 == 127)
      {
        if ((v22 & 0x80) != 0)
        {
          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v24, v7);
            v24 = 0;
          }
        }

        else
        {
          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v24, v7);
            v24 = 0;
          }

          asl_string_append_char_no_encoding(v3, 92);
        }

        v26 = v3;
        v27 = "^?";
        goto LABEL_129;
      }

      if (v29 < 0x21)
      {
        if ((v22 & 0x80) != 0 || (v29 - 7) > 6u)
        {
          if ((v22 & 0x80) != 0)
          {
            if (v7)
            {
              asl_string_append_no_encoding_len(v3, v24, v7);
              v24 = 0;
            }
          }

          else
          {
            if (v7)
            {
              asl_string_append_no_encoding_len(v3, v24, v7);
              v24 = 0;
            }

            asl_string_append_char_no_encoding(v3, 92);
          }

          appended = asl_string_append_char_no_encoding(v3, 94);
          v32 = v29 | 0x40;
        }

        else
        {
          if (v7)
          {
            asl_string_append_no_encoding_len(v3, v24, v7);
            v24 = 0;
          }

          appended = asl_string_append_char_no_encoding(v3, 92);
          v32 = aAbtnvfr[v29 - 7];
        }

        goto LABEL_144;
      }

      if ((v22 & 0x80) != 0)
      {
        if (v7)
        {
          asl_string_append_no_encoding_len(v3, v24, v7);
          v24 = 0;
        }

        appended = asl_string_append_char_no_encoding(v3, 45);
        v32 = v29;
LABEL_144:
        asl_string_append_char_no_encoding(appended, v32);
        goto LABEL_131;
      }
    }

    if (!v24)
    {
      v24 = v4;
    }

    ++v7;
LABEL_132:
    v33 = *++v4;
    v22 = v33;
  }

  while (v33);
  if (v7)
  {
    a1 = v3;
    a2 = v24;
LABEL_149:
    asl_string_append_no_encoding_len(a1, a2, v7);
  }

LABEL_150:
  v34 = *MEMORY[0x1E69E9840];
  return v3;
}

char *_asl_msg_slot_key(char *result, unsigned int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 >= 0xF && !v2 || a2 >= 0xA && v2 == 1)
    {
      return 0;
    }

    if (v2 == 1)
    {
      if (a2 <= 9)
      {
LABEL_10:
        v3 = *&result[2 * a2 + 32];
        if (v3 != 0xFFFF)
        {
          v4 = v3 >> 14;
          if (v3 >> 14 <= 1)
          {
            if (v4)
            {
              return *&result[(v3 & 0x3FFF) + 92];
            }

LABEL_17:
            result += v3 + 92;
            return result;
          }

          if (v4 == 2)
          {
            if ((v3 + 0x7FFF) <= 0x12u)
            {
              v3 = (v3 + 0x7FFF);
              v5 = ASLStandardKey;
              return v5[v3];
            }

            LOWORD(v3) = v3 + 32511;
            if (v3 <= 0xCu)
            {
              v3 = v3;
              v5 = MTStandardKey;
              return v5[v3];
            }
          }
        }

        return 0;
      }
    }

    else if (!v2 && a2 < 0xF)
    {
      goto LABEL_10;
    }

    LODWORD(v3) = 0;
    goto LABEL_17;
  }

  return result;
}

_BYTE *_asl_time_string(const char *a1, char *__s, const char *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  memset(&v26, 0, sizeof(v26));
  v25 = 0;
  *v28 = 0;
  if (!a1 || strlen(a1) > 0x1F)
  {
    v6 = 0;
    strcpy(__str, "local");
    v7 = 1;
LABEL_4:
    v30[0] = 0;
    goto LABEL_5;
  }

  v7 = &__str[1];
  v24 = a1;
  v6 = __str;
  snprintf(__str, 0x20uLL, "%s", v24);
  v12 = strchr(__str, 46);
  if (!v12)
  {
    goto LABEL_4;
  }

  *v12 = 0;
  v13 = atoi(v12 + 1);
  v30[0] = 0;
  if (v13)
  {
    v14 = v13;
    if (a3)
    {
      v15 = atoi(a3);
    }

    else
    {
      v15 = 0;
    }

    snprintf(v30, 0x10uLL, ".%09u", v15);
    if (v14 >= 9)
    {
      v18 = 9;
    }

    else
    {
      v18 = v14;
    }

    v30[v18 + 1] = 0;
    v6 = __str;
  }

LABEL_5:
  v27 = 0;
  if (__s)
  {
    v27 = asl_core_parse_time(__s, 0);
  }

  if (!strcasecmp(__str, "lcl") || !strcasecmp(__str, "local"))
  {
    result = ctime_r(&v27, v31);
    if (result)
    {
      result[19] = 0;
      asprintf(&v25, "%s%s");
      goto LABEL_41;
    }
  }

  else
  {
    if (strcasecmp(__str, "jz") && strcasecmp(__str, "iso8601") && strcasecmp(__str, "iso8601e"))
    {
      if (!strcasecmp(__str, "iso8601b"))
      {
        result = localtime_r(&v27, &v26);
        if (!result)
        {
          goto LABEL_42;
        }

        if (v26.tm_gmtoff >= 0)
        {
          tm_gmtoff = v26.tm_gmtoff;
        }

        else
        {
          tm_gmtoff = -v26.tm_gmtoff;
        }

        if (tm_gmtoff % 0xE10 > 0x3B)
        {
          snprintf(v28, 8uLL, "%c%02lld:%02lld");
        }

        else
        {
          snprintf(v28, 8uLL, "%c%02lld");
        }

        asprintf(&v25, "%d%02d%02dT%02d%02d%02d%s%s", (v26.tm_year + 1900), (v26.tm_mon + 1));
        goto LABEL_41;
      }

      if (strcasecmp(__str, "sec") && strcasecmp(__str, "raw"))
      {
        if (!strcasecmp(__str, "j"))
        {
          result = localtime_r(&v27, &v26);
          if (!result)
          {
            goto LABEL_42;
          }

          asprintf(&v25, "%d-%02d-%02d %02d:%02d:%02d%s", (v26.tm_year + 1900));
          goto LABEL_41;
        }

        if (!strcasecmp(__str, "utc") || !strcasecmp(__str, "zulu") || !strcasecmp(__str, "iso8601z") || !strcasecmp(__str, "iso8601ez"))
        {
          strncasecmp(__str, "iso8601", 7uLL);
          result = gmtime_r(&v27, &v26);
          if (!result)
          {
            goto LABEL_42;
          }

          asprintf(&v25, "%d-%02d-%02d%c%02d:%02d:%02d%sZ", (v26.tm_year + 1900), (v26.tm_mon + 1));
          goto LABEL_41;
        }

        if (!strcasecmp(__str, "iso8601bz"))
        {
          result = gmtime_r(&v27, &v26);
          if (!result)
          {
            goto LABEL_42;
          }

          asprintf(&v25, "%d%02d%02dT%02d%02d%02d%sZ", (v26.tm_year + 1900));
          goto LABEL_41;
        }

        v8 = __str[0];
        if (__str[1] || ((__str[0] & 0xDF) - 65) > 0x19u)
        {
          v20 = *v6;
          if (v20 == 45 || v20 == 43)
          {
            v20 = *v7;
            v6 = v7;
          }

          if ((v20 - 48) <= 9)
          {
            v21 = atoi(v6);
            v22 = strchr(v6, 58);
            if (v22)
            {
              v23 = atoi(v22 + 1);
              if (v8 == 45)
              {
                v10 = -(3600 * v21 + 60 * v23);
              }

              else
              {
                v10 = 3600 * v21 + 60 * v23;
              }

              if (v23)
              {
                snprintf(v28, 8uLL, "%c%02lld:%02lld");
                goto LABEL_77;
              }
            }

            else if (v8 == 45)
            {
              v10 = -3600 * v21;
            }

            else
            {
              v10 = 3600 * v21;
            }

            snprintf(v28, 8uLL, "%c%02lld");
            goto LABEL_77;
          }
        }

        else
        {
          v9 = __str[0] - 32;
          if (__str[0] <= 0x60u)
          {
            v9 = __str[0];
          }

          if (v9 == 90)
          {
            v10 = 0;
LABEL_77:
            v27 += v10;
            memset(&v26, 0, sizeof(v26));
            result = gmtime_r(&v27, &v26);
            if (!result)
            {
              goto LABEL_42;
            }

            if ((__str[0] - 65) > 0x19)
            {
              if ((__str[0] - 97) > 0x19)
              {
                asprintf(&v25, "%d-%02d-%02d %02d:%02d:%02d%s%s", (v26.tm_year + 1900), (v26.tm_mon + 1));
              }

              else
              {
                asprintf(&v25, "%d-%02d-%02d %02d:%02d:%02d%s%c", (v26.tm_year + 1900), (v26.tm_mon + 1));
              }
            }

            else
            {
              asprintf(&v25, "%d-%02d-%02d %02d:%02d:%02d%s%c", (v26.tm_year + 1900), (v26.tm_mon + 1));
            }

            goto LABEL_41;
          }

          if (v9 - 65 <= 8)
          {
            v10 = 3600 * v9 - 230400;
            goto LABEL_77;
          }

          if (v9 - 75 <= 2)
          {
            v10 = 3600 * v9 - 234000;
            goto LABEL_77;
          }

          if (v9 - 78 <= 0xB)
          {
            v10 = 3600 * (77 - v9);
            goto LABEL_77;
          }
        }

        result = 0;
        goto LABEL_42;
      }

      asprintf(&v25, "%llu%s");
LABEL_41:
      result = v25;
      goto LABEL_42;
    }

    strncasecmp(__str, "iso8601", 7uLL);
    result = localtime_r(&v27, &v26);
    if (result)
    {
      if (v26.tm_gmtoff >= 0)
      {
        v16 = v26.tm_gmtoff;
      }

      else
      {
        v16 = -v26.tm_gmtoff;
      }

      if (v16 % 0xE10 > 0x3B)
      {
        snprintf(v28, 8uLL, "%c%02lld:%02lld");
      }

      else
      {
        snprintf(v28, 8uLL, "%c%02lld");
      }

      asprintf(&v25, "%d-%02d-%02d%c%02d:%02d:%02d%s%s", (v26.tm_year + 1900), (v26.tm_mon + 1), v26.tm_mday);
      goto LABEL_41;
    }
  }

LABEL_42:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_core_str_match_absolute_or_relative_time(uint64_t result, void *a2, _DWORD *a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *result;
  if (v6 == 45 || v6 == 43)
  {
    v7 = time(0);
    if (*v5 == 45)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 1;
  }

  v10 = &v5[v9];
  LOBYTE(v11) = v5[v9];
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    if (!memchr("0123456789", v11, 0xBuLL))
    {
      break;
    }

    v11 = v5[v9 + 1 + v12++];
  }

  while (v11);
  if (!v12)
  {
    return 0;
  }

  v27 = v8;
  v28 = v7;
  v29 = a2;
  v13 = 0;
  v14 = v12;
  v15 = &v5[v9];
  v16 = v12;
  do
  {
    v17 = *v15++;
    v13 = v17 + 10 * v13 - 48;
    --v16;
  }

  while (v16);
  v18 = &v10[v12];
  v19 = *v18;
  if (v10[v14])
  {
    v20 = 0;
    LOBYTE(v21) = *v18;
    while (v20 != 1)
    {
      if (memchr("SsMmHhDdWw", v21, 0xBuLL))
      {
        v21 = v5[v9 + 1 + v14 + v20++];
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    LODWORD(v20) = 1;
LABEL_24:
    if (v19 <= 99)
    {
      if (v19 <= 76)
      {
        if (v19 != 68)
        {
          if (v19 != 72)
          {
            goto LABEL_42;
          }

          goto LABEL_32;
        }

LABEL_39:
        v22 = 86400;
        goto LABEL_41;
      }

      if (v19 != 77)
      {
        if (v19 != 87)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

LABEL_38:
      v13 *= 60;
      goto LABEL_42;
    }

    if (v19 > 108)
    {
      if (v19 == 119)
      {
LABEL_40:
        v22 = 604800;
        goto LABEL_41;
      }

      if (v19 == 109)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 == 100)
      {
        goto LABEL_39;
      }

      if (v19 == 104)
      {
LABEL_32:
        v22 = 3600;
LABEL_41:
        v13 *= v22;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

LABEL_42:
  v23 = &v18[v20];
  LOBYTE(v24) = *v23;
  if (*v23)
  {
    v25 = 0;
    v26 = &v5[v14 + 1 + v9 + v20];
    while (v25 != 1)
    {
      if (!memchr(" \t\n", v24, 4uLL))
      {
        if (!v25)
        {
          return 0;
        }

        break;
      }

      v24 = *(v26 + v25++);
      if (!v24)
      {
        break;
      }
    }
  }

  if (a3)
  {
    *a3 = v23 - v5;
  }

  if (v29)
  {
    *v29 = v28 + v13 * v27;
  }

  return 1;
}

time_t asl_core_parse_time(char *__s, _DWORD *a2)
{
  v8 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (!__s)
  {
    return -1;
  }

  v4 = strlen(__s);
  if (!v4)
  {
    return -1;
  }

  v5 = *__s;
  if (v5 == 45 || v5 == 43)
  {
    goto LABEL_7;
  }

  if ((v5 & 0xFFFFFFDF) - 65 > 0x19)
  {
    if (v4 <= 4)
    {
LABEL_7:
      matched = asl_core_str_match_absolute_or_relative_time(__s, &v8, a2);
      goto LABEL_8;
    }

    if (__s[4] == 46)
    {
      matched = asl_core_str_match_dotted_time(__s, &v8, a2);
    }

    else
    {
      if (asl_core_str_match_absolute_or_relative_time(__s, &v8, a2))
      {
        return v8;
      }

      matched = asl_core_str_match_iso_8601_time(__s, &v8, a2);
    }
  }

  else
  {
    matched = asl_core_str_match_c_time(__s, &v8, a2);
  }

LABEL_8:
  if (matched)
  {
    return v8;
  }

  else
  {
    return -1;
  }
}

void *asl_string_new(int a1)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0x1010040C41FE6D2uLL);
  if (result)
  {
    *result = 0x100000006;
    *(result + 2) = a1;
    result[2] = 256;
    if (a1 < 0)
    {
      result[2] = *MEMORY[0x1E69E9AC8];
    }

    result[3] = 0;
    result[4] = 0;
    if ((a1 & 0x40000000) != 0)
    {
      return asl_string_append_no_encoding_len(result, "         0 ", 0xBuLL);
    }
  }

  return result;
}

uint64_t _asl_string_grow(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (a1 + 24);
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (v3 + ~v5 >= a2)
    {
      return 0;
    }

    v6 = (v5 + a2 + *(a1 + 16)) / *(a1 + 16) * *(a1 + 16);
  }

  else
  {
    v6 = (a2 + *(a1 + 16) - 1) / *(a1 + 16) * *(a1 + 16);
  }

  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    v8 = reallocf(*(a1 + 40), v6);
    *(a1 + 40) = v8;
    if (v8)
    {
      result = 0;
      *v4 = v6;
      return result;
    }

    *v4 = 0;
    v4[1] = 0;
    return 0xFFFFFFFFLL;
  }

  address = 0;
  v9 = MEMORY[0x1E69E9A60];
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, v6, 1358954497))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    memcpy(address, v10, *(a1 + 24));
    MEMORY[0x1E12E1EE0](*v9, *(a1 + 40), *(a1 + 24));
  }

  result = 0;
  *(a1 + 40) = address;
  *(a1 + 24) = v6;
  return result;
}

char *asl_string_release_return_bytes(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  if ((*(a1 + 11) & 0x40) != 0)
  {
    snprintf(__str, 0xBuLL, "%10lu", *(a1 + 4) - 10);
    v2 = *(a1 + 5);
    *v2 = *__str;
    *(v2 + 8) = v10;
  }

  if (atomic_fetch_add(a1 + 1, 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 5);
    free(a1);
LABEL_15:
    v8 = *MEMORY[0x1E69E9840];
    return v3;
  }

  if ((*(a1 + 2) & 0x80000000) != 0)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      *__str = 0;
      v3 = 0;
      if (!vm_allocate(*MEMORY[0x1E69E9A60], __str, v7, 1358954497))
      {
        memcpy(*__str, *(a1 + 5), *(a1 + 3));
        v3 = *__str;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*(a1 + 4))
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 5);
  v5 = *MEMORY[0x1E69E9840];

  return strdup(v4);
}

uint64_t asl_string_length(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      return v1 + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *_asl_level_string(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return off_1E86CFCF8[a1];
  }
}

void asl_client_release(asl_object_t obj)
{
  if (obj)
  {
    asl_release(obj);
  }
}

uint64_t asl_client_add_output_file(uint64_t a1, int a2, const char *a3, const char *a4, int a5, int a6)
{
  if (!a1)
  {
    return 9999;
  }

  v12 = *(a1 + 52);
  if (v12)
  {
    v13 = 0;
    v14 = (*(a1 + 56) + 16);
    while (*(v14 - 4) != a2)
    {
      v14 += 4;
      v13 += 32;
      if (32 * v12 == v13)
      {
        v15 = *(a1 + 56);
        goto LABEL_9;
      }
    }

    free(*v14);
    v21 = *(a1 + 56) + v13;
    *(v21 + 16) = 0;
    if (a3)
    {
      *(v21 + 16) = strdup(a3);
    }

    free(*(v21 + 24));
    v22 = *(a1 + 56) + v13;
    *(v22 + 24) = 0;
    if (a4)
    {
      *(v22 + 24) = strdup(a4);
    }

    result = 0;
    *(v22 + 4) = a6;
    *(v22 + 8) = a5;
  }

  else
  {
    v15 = 0;
    *(a1 + 56) = 0;
LABEL_9:
    v17 = reallocf(v15, 32 * (v12 + 1));
    *(a1 + 56) = v17;
    if (v17)
    {
      v18 = *(a1 + 52);
      v19 = &v17[32 * v18];
      *v19 = a2;
      *(v19 + 1) = a6;
      *(v19 + 2) = a5;
      *(v19 + 2) = 0;
      if (a3)
      {
        *(v19 + 2) = strdup(a3);
      }

      *(v19 + 3) = 0;
      v20 = (v19 + 24);
      if (a4)
      {
        *v20 = strdup(a4);
      }

      result = 0;
      *(a1 + 52) = v18 + 1;
    }

    else
    {
      return 9999;
    }
  }

  return result;
}

uint64_t asl_client_open_from_file(int a1, const char *a2, char *a3)
{
  v4 = asl_client_open(a2, a3, 0);
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) = 196863;
    if (asl_file_open_write_fd(a1, (v4 + 64)))
    {
      _asl_client_free_internal(v5);
      return 0;
    }

    else
    {
      *(v5 + 72) = 1;
    }
  }

  return v5;
}

void _asl_client_free_internal(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      asl_msg_release(v2);
    }

    *(a1 + 32) = 0;
    v3 = *(a1 + 64);
    if (v3)
    {
      asl_file_close(v3);
    }

    *(a1 + 64) = 0;
    if (*(a1 + 52))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        free(*(*(a1 + 56) + v4 + 16));
        free(*(*(a1 + 56) + v4 + 24));
        ++v5;
        v4 += 32;
      }

      while (v5 < *(a1 + 52));
    }

    free(*(a1 + 56));

    free(a1);
  }
}

asl_object_t asl_client_retain(asl_object_t obj)
{
  if (obj)
  {
    asl_retain(obj);
  }

  return obj;
}

uint64_t asl_client_match(uint64_t a1, void *a2, char **a3, unint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  if (asl_store_location())
  {
    v24 = 0;
    service_port = asl_core_get_service_port();
    if (service_port)
    {
      v14 = service_port;
      size = 0;
      v22 = 0;
      address = 0;
      v25 = 0;
      if (a2)
      {
        v25 = asl_msg_list_to_string(a2, &size + 1);
        if (!v25)
        {
          return 0;
        }

LABEL_10:
        v18 = MEMORY[0x1E69E9A60];
        if (!vm_allocate(*MEMORY[0x1E69E9A60], &address, HIDWORD(size), 1358954497))
        {
          memmove(address, v25, HIDWORD(size));
          free(v25);
          v21 = 0;
          if (!_asl_server_match(v14, address, SHIDWORD(size), a4, a5, a6, a7, &v24, &size, &v21, &v22))
          {
            *a3 = v21;
            v16 = asl_msg_list_from_string(v24);
            MEMORY[0x1E12E1EE0](*v18, v24, size);
            return v16;
          }
        }

        return 0;
      }

      asprintf(&v25, "0\n");
      HIDWORD(size) = 3;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  v24 = 0;
  v25 = 0;
  LODWORD(v21) = 0;
  v15 = asl_msg_list_to_string(a2, &v21);
  free(v15);
  if (asl_store_open_read(0, &v24) || !v24)
  {
    return 0;
  }

  v16 = asl_store_match(v24, a2, &v25, a4, a5, a6, a7);
  v17 = v24;
  *a3 = v25;
  asl_store_close(v17);
  return v16;
}

uint64_t asl_client_search(uint64_t a1, __asl_object_s *a2)
{
  if (asl_store_location())
  {
    *&size[1] = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    service_port = asl_core_get_service_port();
    if (!service_port)
    {
      return 0;
    }

    v4 = service_port;
    address = 0;
    size[0] = 0;
    v5 = asl_msg_to_string(a2, size);
    v20 = 0;
    if (v5)
    {
      v6 = v5;
      asprintf(&v20, "1\n%s\n", v5);
      size[0] += 3;
      free(v6);
    }

    else
    {
      asprintf(&v20, "0\n");
      size[0] = 3;
    }

    if (v20 && (v8 = MEMORY[0x1E69E9A60], !vm_allocate(*MEMORY[0x1E69E9A60], &address, size[0], 1358954497)) && (memmove(address, v20, size[0]), free(v20), !_asl_server_query_2(v4, address, size[0], 0, 0, 0, &size[1], &v18, &v16, &v17)))
    {
      v9 = asl_msg_list_from_string(*&size[1]);
      MEMORY[0x1E12E1EE0](*v8, *&size[1], v18);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    LOWORD(address) = 0;
    v20 = 0;
    *&size[1] = 0;
    v16 = 0;
    v7 = 0;
    if (!asl_msg_lookup(a2, "ASLMessageID", &v16, &address) && v16)
    {
      if ((address & 2) != 0)
      {
        v10 = ~address;
        v7 = atoll(v16) + (v10 & 1);
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = 0;
    if (!asl_store_open_read(0, &size[1]))
    {
      v11 = *&size[1];
      if (*&size[1])
      {
        if (a2)
        {
          asl_msg_list_new();
          v13 = v12;
          asl_msg_list_append(v12, a2);
          v11 = *&size[1];
        }

        else
        {
          v13 = 0;
        }

        v9 = asl_store_match(v11, v13, &v20, v7, 0, 0, 1);
        asl_store_close(*&size[1]);
        asl_msg_list_release(v13);
      }
    }
  }

  return v9;
}

uint64_t asl_client_set_control(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(a1 + 40);
  *(a1 + 40) = a2;
  return result;
}

uint64_t asl_client_set_output_file_filter(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 52);
  if (!v3)
  {
    return 0;
  }

  for (i = (*(a1 + 56) + 8); *(i - 2) != a2; i += 8)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  result = *i;
  *i = a3;
  return result;
}

uint64_t asl_client_remove_output_file(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 52);
  if (!v3)
  {
    return 0;
  }

  v4 = -v3;
  v5 = -32;
  v6 = 1;
  v7 = *(a1 + 56);
  while (1)
  {
    v8 = *v7;
    v7 += 8;
    if (v8 == a2)
    {
      break;
    }

    ++v6;
    v5 -= 32;
    if (v4 + v6 == 1)
    {
      return 0;
    }
  }

  v10 = v6 - 1;
  free(*(*(a1 + 56) + 32 * v10 + 16));
  free(*(*(a1 + 56) + 32 * v10 + 24));
  LODWORD(v11) = *(a1 + 52);
  if (v6 < v11)
  {
    v12 = -v5;
    v13 = 32 * v10;
    do
    {
      v14 = *(a1 + 56);
      v15 = (v14 + v13);
      v16 = (v14 + v12);
      v17 = v16[1];
      *v15 = *v16;
      v15[1] = v17;
      ++v6;
      v11 = *(a1 + 52);
      v13 += 32;
      v12 += 32;
    }

    while (v6 < v11);
  }

  v18 = *(a1 + 56);
  *(a1 + 52) = v11 - 1;
  if (v11 == 1)
  {
    free(v18);
    result = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v19 = reallocf(v18, 32 * (v11 - 1));
    *(a1 + 56) = v19;
    if (v19)
    {
      return 0;
    }

    *(a1 + 52) = 0;
    return 9999;
  }

  return result;
}

uint64_t asl_client_kvdict(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t _jump_append(__asl_object_s *a1, asl_object_t obj, uint64_t a3)
{
  result = asl_get_type(obj);
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

      result = asl_client_internal_send(a1, result, a3);
    }

    while (!result);
  }

  else if (result <= 1)
  {

    return asl_client_internal_send(a1, obj, a3);
  }

  return result;
}

uint64_t _jump_search(int a1, asl_object_t obj)
{
  type = asl_get_type(obj);
  if (obj && type > 1)
  {
    return 0;
  }

  return asl_client_search(type, obj);
}

uint64_t _jump_match(int a1, asl_object_t obj, char **a3, unint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  type = asl_get_type(obj);
  if (obj && type != 2)
  {
    return 0;
  }

  return asl_client_match(type, obj, a3, a4, a5, a6, a7);
}

void _asl_fork_child()
{
  _asl_global = xmmword_1DF925490;
  qword_1ED4ADFE8 = 0;
  dword_1ED4ADFF0 = 0;
  qword_1ED4ADFD0 = 0;
  qword_1ED4ADFD8 = 0;
  dword_1ED4ADFE0 = 0;
  pthread_mutex_init(&stru_1ED4AE000, 0);

  _asl_redirect_fork_child();
}

uint64_t asl_core_get_service_port()
{
  if (qword_1ED4ADFE8 != -1)
  {
    asl_core_get_service_port_cold_1();
  }

  return dword_1ED4ADFF0;
}

void *_asl_open_default()
{
  if (_asl_open_default_once != -1)
  {
    _asl_open_default_cold_1();
  }

  return off_1ED4AE050;
}

int asl_add_output_file(asl_object_t client, int fd, const char *mfmt, const char *tfmt, int filter, int text_encoding)
{
  if (client)
  {
    if (asl_get_type(client) == 5)
    {
      v12 = asl_client_add_output_file(client, fd, mfmt, tfmt, filter, text_encoding);
      goto LABEL_8;
    }

    return -1;
  }

  if (_asl_open_default_once != -1)
  {
    _asl_open_default_cold_1();
  }

  v13 = off_1ED4AE050;
  if (!off_1ED4AE050)
  {
    return -1;
  }

  pthread_mutex_lock(&stru_1ED4AE000);
  v12 = asl_client_add_output_file(v13, fd, mfmt, tfmt, filter, text_encoding);
  pthread_mutex_unlock(&stru_1ED4AE000);
LABEL_8:
  if (v12)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int asl_set_output_file_filter(asl_object_t client, int fd, int filter)
{
  if (!client)
  {
    if (_asl_open_default_once != -1)
    {
      _asl_open_default_cold_1();
    }

    v7 = off_1ED4AE050;
    if (off_1ED4AE050)
    {
      pthread_mutex_lock(&stru_1ED4AE000);
      v8 = asl_client_set_output_file_filter(v7, fd, filter);
      pthread_mutex_unlock(&stru_1ED4AE000);
      return v8;
    }

    return -1;
  }

  if (asl_get_type(client) != 5)
  {
    return -1;
  }

  return asl_client_set_output_file_filter(client, fd, filter);
}

uint64_t asl_remove_output_file(__asl_object_s *a1, int a2)
{
  if (a1)
  {
    if (asl_get_type(a1) == 5)
    {
      v4 = asl_client_remove_output_file(a1, a2);
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  if (_asl_open_default_once != -1)
  {
    _asl_open_default_cold_1();
  }

  v5 = off_1ED4AE050;
  if (!off_1ED4AE050)
  {
    return 0xFFFFFFFFLL;
  }

  pthread_mutex_lock(&stru_1ED4AE000);
  v4 = asl_client_remove_output_file(v5, a2);
  pthread_mutex_unlock(&stru_1ED4AE000);
LABEL_8:
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _asl_lib_vlog(__asl_object_s *a1, int a2, __asl_object_s *a3, const char *a4, va_list a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = __error();
  if (!a4)
  {
    v26 = 1;
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v10;
  v30 = 0;
  while (a4[v11] == 37)
  {
    v16 = v11 + 1;
    if (!a4[v11 + 1])
    {
      goto LABEL_9;
    }

    if (a4[v11 + 1] == 109)
    {
      strerror_r(v15, __strerrbuf, 0x800uLL);
      v17 = strlen(__strerrbuf);
      v14 = 1;
      v11 = v16;
      v13 = v17;
    }

    else
    {
      v17 = 2;
      ++v11;
    }

LABEL_10:
    v12 += v17;
    ++v11;
  }

  if (a4[v11])
  {
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  if (v14)
  {
    v18 = malloc_type_malloc((v12 + 1), 0xEBA69F28uLL);
    if (v18)
    {
      v19 = v18;
      v29 = a3;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = a4[v20];
        if (v22 != 37)
        {
          break;
        }

        v23 = v20 + 1;
        if (!a4[v20 + 1])
        {
          goto LABEL_25;
        }

        if (a4[v20 + 1] != 109 || v13 == 0)
        {
          v19[v21] = 37;
          v25 = v21 + 1;
          v21 += 2;
          v19[v25] = a4[v23];
        }

        else
        {
          memcpy(&v19[v21], __strerrbuf, v13);
          v21 += v13;
        }

LABEL_26:
        v20 = v23 + 1;
      }

      if (!a4[v20])
      {
        v19[v21] = 0;
        v30 = 0;
        vasprintf(&v30, v19, a5);
        free(v19);
        a3 = v29;
        goto LABEL_30;
      }

      v19[v21++] = v22;
LABEL_25:
      v23 = v20;
      goto LABEL_26;
    }

LABEL_32:
    v26 = 9;
  }

  else
  {
    v30 = 0;
    vasprintf(&v30, a4, a5);
LABEL_30:
    if (!v30)
    {
      goto LABEL_32;
    }

    v26 = _asl_send_message(a1, a2, a3, v30);
    free(v30);
  }

LABEL_33:
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t _asl_send_message(asl_object_t obj, int a2, __asl_object_s *a3, const char *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v46.tv_sec = 0;
  *&v46.tv_usec = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  if ((a2 & 0x1A0000) == 0)
  {
    v11 = 0;
    goto LABEL_42;
  }

  v6 = a2;
  if (obj)
  {
    type = asl_get_type(obj);
    if (v6 >= 7u)
    {
      v9 = 7;
    }

    else
    {
      v9 = v6;
    }

    if (type != 5)
    {
      v10 = 0;
      v14 = 0;
      v13 = 1;
      goto LABEL_23;
    }

    v10 = obj;
  }

  else
  {
    if (_asl_open_default_once != -1)
    {
      _asl_evaluate_send_cold_1();
    }

    v10 = off_1ED4AE050;
    if (!off_1ED4AE050)
    {
      goto LABEL_39;
    }

    if (v6 >= 7u)
    {
      v9 = 7;
    }

    else
    {
      v9 = v6;
    }
  }

  if (obj)
  {
    v12 = *(v10 + 8) == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = 1;
LABEL_23:
  if (gettimeofday(&v46, 0))
  {
    v46.tv_sec = time(0);
    v46.tv_usec = 0;
  }

  v48 = 0;
  if (asl_msg_lookup(a3, "Sender", &v48, 0))
  {
    v48 = 0;
  }

  v47 = 0;
  if (asl_msg_lookup(a3, "Facility", &v47, 0))
  {
    v15 = 0;
    v47 = 0;
  }

  else
  {
    v15 = v47;
  }

  v16 = asl_base_msg(v10, v9, &v46, v48, v15, a4);
  if (!v16)
  {
LABEL_39:
    v11 = 9999;
    goto LABEL_42;
  }

  v17 = v16;
  if ((v6 & 0x200000) != 0)
  {
    _asl_set_option(v16);
  }

  if ((v13 & 1) == 0)
  {
    pthread_mutex_lock(&stru_1ED4AE000);
  }

  v18 = asl_msg_merge(v17, a3);
  if (v14)
  {
    v19 = *(v10 + 8);
    if (v19)
    {
      if (v18)
      {
        v11 = asl_file_save(v19, v18, v10 + 9);
        ++*(v10 + 9);
      }

      else
      {
        v11 = 9999;
      }

      goto LABEL_91;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___asl_send_message_block_invoke;
    block[3] = &unk_1E86CFAD8;
    block[4] = &v42;
    if (_asl_send_message_noquota_once != -1)
    {
      dispatch_once(&_asl_send_message_noquota_once, block);
    }

    if (*(v43 + 6))
    {
      v22 = asl_base_msg(v10, 2u, &v46, v48, v47, "*** MESSAGE QUOTA DISABLED FOR THIS PROCESS ***");
      asl_msg_set_key_val(v22, "ASLOption", "store");
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v22 = 0;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_62;
      }
    }

    v23 = dword_1ED4ADFE0;
    if (dword_1ED4ADFE0 != -1)
    {
      v25 = qword_1ED4ADFD0;
      v24 = qword_1ED4ADFD8;
      v26 = dword_1ED4ADFE0;
      v27 = v46.tv_sec - qword_1ED4ADFD0;
      if (v46.tv_sec > qword_1ED4ADFD0)
      {
        v28 = 10 * v27;
        if (v27 >= 3600)
        {
          v28 = 36000;
        }

        v26 = v28 + dword_1ED4ADFE0;
        if (v26 >= 0x8CA0)
        {
          v26 = 36000;
        }

        atomic_compare_exchange_strong(&qword_1ED4ADFD0, &v25, v46.tv_sec);
      }

      if (v26)
      {
        atomic_compare_exchange_strong(&dword_1ED4ADFE0, &v23, v26 - 1);
      }

      else if (v46.tv_sec - v24 < 61)
      {
        v6 &= 0xFFDDFFFF;
      }

      else
      {
        v6 |= 0x400000u;
        atomic_compare_exchange_strong(&qword_1ED4ADFD8, &v24, v46.tv_sec);
      }
    }

LABEL_62:
    if (qword_1ED4ADFE8 != -1)
    {
      _asl_send_message_cold_2();
    }

    v11 = 0;
    if ((v6 & 0x20000) == 0 || !dword_1ED4ADFF0)
    {
      goto LABEL_88;
    }

    if ((v6 & 0x400000) != 0)
    {
      asl_msg_set_key_val(v18, "Level", "Critical");
      asl_msg_set_key_val(v18, "Message", "*** LOG MESSAGE QUOTA EXCEEDED - SOME MESSAGES FROM THIS PROCESS HAVE BEEN DISCARDED ***");
    }

    if (!v22)
    {
LABEL_73:
      v33 = asl_msg_to_string_raw(-1073741822, v18, "raw");
      v34 = asl_string_length(v33);
      v11 = v34;
      if (v34 > 0x1F4000)
      {
        snprintf(__str, 0x100uLL, "*** ASL MESSAGE SIZE (%u bytes) EXCEEDED MAXIMIMUM SIZE (%u bytes) ***", v34, 2048000);
        v35 = asl_base_msg(v10, 2u, &v46, v48, v47, __str);
        asl_string_release(v33);
        if (v35)
        {
          if ((v6 & 0x200000) != 0)
          {
            _asl_set_option(v35);
          }

          v33 = asl_msg_to_string_raw(-1073741822, v35, "raw");
          v36 = asl_string_length(v33);
          asl_msg_release(v35);
        }

        else
        {
          v36 = 0;
        }

        v11 = v36;
      }

      v37 = asl_string_allocated_size(v33);
      v38 = asl_string_release_return_bytes(v33);
      if (v11)
      {
        if (!_asl_server_message(dword_1ED4ADFF0, v38, v11))
        {
          v11 = 0;
          goto LABEL_88;
        }

        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        v39 = 0;
        if (!v37)
        {
LABEL_88:
          if (v18 && *(v10 + 13))
          {
            _asl_send_message_text(v10, v18, obj, v6, a3, a4, 0);
          }

LABEL_91:
          asl_msg_release(v18);
          if (v13)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      v11 = v39;
      MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v38, v37);
      goto LABEL_88;
    }

    v40 = v22;
    v29 = asl_msg_to_string_raw(-1073741822, v22, "raw");
    v30 = asl_string_length(v29);
    v31 = asl_string_allocated_size(v29);
    v32 = asl_string_release_return_bytes(v29);
    if (v30)
    {
      if (!_asl_server_message(dword_1ED4ADFF0, v32, v30))
      {
LABEL_72:
        asl_msg_release(v40);
        goto LABEL_73;
      }
    }

    else if (!v31)
    {
      goto LABEL_72;
    }

    MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v32, v31);
    goto LABEL_72;
  }

  asl_append(obj, v18);
  asl_msg_release(v18);
  v11 = 0;
  if ((v13 & 1) == 0)
  {
LABEL_41:
    pthread_mutex_unlock(&stru_1ED4AE000);
  }

LABEL_42:
  _Block_object_dispose(&v42, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

int asl_vlog(asl_object_t obj, asl_object_t msg, int level, const char *format, va_list ap)
{
  v10 = _asl_evaluate_send(obj, msg, level);
  if ((v10 & 0x40000) != 0 && os_log_shim_enabled())
  {
    v11 = level & ~(level >> 31);
    if (v11 >= 7)
    {
      v11 = 7;
    }

    v12 = shim_asl_to_log_type[v11];
    os_log_with_args_4syslog();
    if ((v10 & 0x80000) != 0)
    {
      v13 = _asl_lib_vlog_text(obj, v10, msg, format, ap);
      goto LABEL_10;
    }
  }

  else if ((v10 & 0x1A0000) != 0)
  {
    v13 = _asl_lib_vlog(obj, v10, msg, format, ap);
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  if (v13)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int _asl_lib_log(asl_object_t client, uint32_t eval, asl_object_t msg, const char *format, ...)
{
  va_start(va, format);
  if ((eval & 0x1A0000) != 0)
  {
    return _asl_lib_vlog(client, eval, msg, format, va);
  }

  else
  {
    return 0;
  }
}

int asl_log_message(int level, const char *format, ...)
{
  va_start(va, format);
  v4 = _asl_evaluate_send(0, 0, level);
  if ((v4 & 0x40000) != 0 && os_log_shim_enabled())
  {
    v5 = level & ~(level >> 31);
    if (v5 >= 7)
    {
      v5 = 7;
    }

    v6 = shim_asl_to_log_type[v5];
    os_log_with_args_4syslog();
    if ((v4 & 0x80000) != 0)
    {
      v7 = _asl_lib_vlog_text(0, v4, 0, format, va);
      goto LABEL_10;
    }
  }

  else if ((v4 & 0x1A0000) != 0)
  {
    v7 = _asl_lib_vlog(0, v4, 0, format, va);
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  if (v7)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t asl_get_filter(asl_object_t obj, _DWORD *a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  if (obj && asl_get_type(obj) != 5)
  {
    return 0xFFFFFFFFLL;
  }

  if (_asl_open_default_once != -1)
  {
    _asl_open_default_cold_1();
  }

  if (obj)
  {
    v10 = obj;
  }

  else
  {
    v10 = off_1ED4AE050;
  }

  if (v10)
  {
    v11 = *(v10 + 40);
    if (!off_1ED4AE050)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if (!off_1ED4AE050)
    {
      goto LABEL_28;
    }
  }

  if ((*(off_1ED4AE050 + 12) & 4) == 0)
  {
    check = 0;
    v16 = 0;
    pthread_mutex_lock(&stru_1ED4AE000);
    if ((DWORD1(_asl_global) & 0x80000000) == 0)
    {
      check = 0;
      if (!notify_check(SDWORD1(_asl_global), &check))
      {
        if (check)
        {
          if ((HIDWORD(_asl_global) & 0x80000000) == 0)
          {
            v16 = 0;
            if (!notify_get_state(SHIDWORD(_asl_global), &v16))
            {
              qword_1ED4ADFC8 = v16;
            }
          }

          if ((DWORD2(_asl_global) & 0x80000000) == 0)
          {
            v16 = 0;
            if (!notify_get_state(SDWORD2(_asl_global), &v16))
            {
              qword_1ED4ADFC0 = v16;
            }
          }
        }
      }
    }

    v13 = qword_1ED4ADFC8;
    v14 = qword_1ED4ADFC0;
    if (qword_1ED4ADFC0)
    {
      v15 = 2;
    }

    else
    {
      v15 = qword_1ED4ADFC8 != 0;
    }

    pthread_mutex_unlock(&stru_1ED4AE000);
    if (!a2)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2)
  {
LABEL_29:
    *a2 = v11;
  }

LABEL_30:
  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v14;
  }

  result = 0;
  if (a5)
  {
    *a5 = v15;
  }

  return result;
}

uint64_t asl_set_local_control(__asl_object_s *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    if (asl_get_type(a1) != 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (_asl_open_default_once != -1)
    {
      _asl_open_default_cold_1();
    }

    v3 = off_1ED4AE050;
    if (!off_1ED4AE050)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return asl_client_set_control(v3, a2);
}

uint64_t asl_get_local_control(__asl_object_s *a1)
{
  if (a1)
  {
    v1 = a1;
    if (asl_get_type(a1) != 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (_asl_open_default_once != -1)
    {
      _asl_open_default_cold_1();
    }

    v1 = off_1ED4AE050;
    if (!off_1ED4AE050)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return asl_client_get_control(v1);
}

uint64_t asl_client_internal_send(__asl_object_s *a1, __asl_object_s *a2, uint64_t a3)
{
  v6 = _asl_evaluate_send(a1, a2, -1);
  val_for_key = asl_msg_get_val_for_key(a2, "Message");
  if ((v6 & 0x40000) != 0 && val_for_key && *val_for_key && os_log_shim_enabled())
  {
    v8 = asl_msg_get_val_for_key(a2, "Level");
    if (v8)
    {
      v9 = atoi(v8);
    }

    else
    {
      v9 = 7;
    }

    os_log_with_args_wrapper(a3, v9);
    result = 0;
    if ((v6 & 0x80000) != 0)
    {
      return _asl_send_message_text(0, 0, a1, v6, a2, 0, 1);
    }
  }

  else if ((v6 & 0x1A0000) != 0)
  {

    return _asl_send_message(a1, v6, a2, 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t os_log_with_args_wrapper(uint64_t a1, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 7)
  {
    v2 = 7;
  }

  v3 = shim_asl_to_log_type[v2];
  return os_log_with_args_4syslog();
}

int asl_create_auxiliary_file(asl_object_t msg, const char *title, const char *uti, int *out_descriptor)
{
  if (!out_descriptor)
  {
    return -1;
  }

  if (_asl_auxiliary(msg, title, uti, 0, out_descriptor))
  {
    return -1;
  }

  return 0;
}

uint64_t _asl_auxiliary(__asl_object_s *a1, const char *a2, const char *a3, const char *a4, _DWORD *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = asl_msg_new(0);
  v11 = v10;
  if (a4)
  {
    asl_msg_set_key_val(v10, "ASLAuxURL", a4);
  }

  if (a2)
  {
    asl_msg_set_key_val(v11, "ASLAuxTitle", a2);
  }

  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = "public.data";
  }

  asl_msg_set_key_val(v11, "ASLAuxUTI", v12);
  v13 = asl_msg_merge(v11, a1);
  if (!a5)
  {
    v18 = _asl_evaluate_send(0, v13, -1);
    v19 = _asl_send_message(0, v18, v13, 0);
    asl_msg_release(v13);
    v20 = *MEMORY[0x1E69E9840];
    return v19;
  }

  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (!asl_store_location())
  {
    if (qword_1ED4ADFE8 != -1)
    {
      asl_core_get_service_port_cold_1();
    }

    if (dword_1ED4ADFF0)
    {
      v22 = asl_msg_to_string_raw(-1073741822, v13, "raw");
      v23 = asl_string_length(v22);
      v24 = asl_string_allocated_size(v22);
      v25 = asl_string_release_return_bytes(v22);
      if (v23)
      {
        HIDWORD(v36) = 0;
        v35 = 0;
        if (_asl_server_create_aux_link(dword_1ED4ADFF0, v25, v23, &v36 + 1, &v34, &v36, &v35))
        {
          MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v25, v24);
        }

        else
        {
          if (v35)
          {
            asl_msg_release(v13);
            result = v35;
            goto LABEL_26;
          }

          if (v34)
          {
            asl_msg_set_key_val(v13, "ASLAuxURL", v34);
            MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v34, v36);
          }

          if (HIDWORD(v36))
          {
            v29 = fileport_makefd();
            mach_port_deallocate(*MEMORY[0x1E69E9A60], HIDWORD(v36));
            if (v29 < 0)
            {
              asl_msg_release(v13);
            }

            else
            {
              v30 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
              if (v30)
              {
                *a5 = v29;
                *v30 = v29;
                v30[1] = v13;
                result = _asl_aux_save_context(v30);
                goto LABEL_26;
              }
            }

            result = 0xFFFFFFFFLL;
            goto LABEL_26;
          }
        }

        asl_msg_release(v13);
      }

      else
      {
        asl_msg_release(v13);
        MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v25, v24);
      }
    }

    goto LABEL_25;
  }

  v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
  if (!v14)
  {
LABEL_25:
    result = 9999;
    goto LABEL_26;
  }

  v15 = v14;
  if (pipe(v37) < 0)
  {
LABEL_14:
    free(v15);
    goto LABEL_25;
  }

  v16 = v37[0];
  v17 = dispatch_semaphore_create(0);
  v15[2] = v17;
  *v15 = v37[1];
  if (_asl_aux_save_context(v15))
  {
    close(v37[0]);
    close(v37[1]);
    dispatch_release(v17);
    goto LABEL_14;
  }

  v26 = dispatch_queue_create("ASL_AUX_PIPE_Q", 0);
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 0x40000000;
  cleanup_handler[2] = ___asl_auxiliary_block_invoke;
  cleanup_handler[3] = &__block_descriptor_tmp_57;
  v33 = v16;
  v27 = dispatch_io_create(0, v16, v26, cleanup_handler);
  *a5 = v37[1];
  dispatch_io_set_low_water(v27, 0xFFFFFFFFFFFFFFFFLL);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = ___asl_auxiliary_block_invoke_2;
  v31[3] = &__block_descriptor_tmp_60;
  v31[4] = v13;
  v31[5] = v17;
  v31[6] = v27;
  v31[7] = v26;
  dispatch_io_read(v27, 0, 0xFFFFFFFFFFFFFFFFLL, v26, v31);
  result = 0;
LABEL_26:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

int asl_log_auxiliary_location(asl_object_t msg, const char *title, const char *uti, const char *url)
{
  if (_asl_auxiliary(msg, title, uti, url, 0))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int asl_close_auxiliary_file(int descriptor)
{
  pthread_mutex_lock(&stru_1ED4AE000);
  if (dword_1ED4AE040 < 1)
  {
LABEL_5:
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(qword_1ED4AE048 + 8 * v2);
    if (*v3 == descriptor)
    {
      break;
    }

    if (dword_1ED4AE040 == ++v2)
    {
      goto LABEL_5;
    }
  }

  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  free(v3);
  v9 = (dword_1ED4AE040 - 1);
  if (v2 + 1 < dword_1ED4AE040)
  {
    do
    {
      *(qword_1ED4AE048 + 8 * v2) = *(qword_1ED4AE048 + 8 * v2 + 8);
      ++v2;
    }

    while (v9 != v2);
  }

  dword_1ED4AE040 = v9;
  if (v9)
  {
    qword_1ED4AE048 = reallocf(qword_1ED4AE048, 8 * v9);
    if (qword_1ED4AE048)
    {
      v6 = 0;
      goto LABEL_7;
    }

    dword_1ED4AE040 = 0;
LABEL_6:
    v6 = -1;
    goto LABEL_7;
  }

  free(qword_1ED4AE048);
  v6 = 0;
  qword_1ED4AE048 = 0;
LABEL_7:
  pthread_mutex_unlock(&stru_1ED4AE000);
  close(descriptor);
  if (v4)
  {
    v7 = _asl_evaluate_send(0, v4, -1);
    if (_asl_send_message(0, v7, v4, 0))
    {
      v6 = -1;
    }

    asl_msg_release(v4);
  }

  if (v5)
  {
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  return v6;
}

asl_object_t _asl_server_control_query()
{
  if (qword_1ED4ADFE8 != -1)
  {
    asl_core_get_service_port_cold_1();
  }

  if (!dword_1ED4ADFF0)
  {
    return 0;
  }

  address = 0;
  v6 = 0;
  v9 = 0;
  v8 = 0;
  v0 = MEMORY[0x1E69E9A60];
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, 0x1BuLL, 1358954497))
  {
    return 0;
  }

  v1 = address;
  *address = *"1\nQ [= ASLOption control]\n";
  strcpy((v1 + 11), "ption control]\n");
  v7 = 0;
  if (_asl_server_query_2(dword_1ED4ADFF0, v1, 27, 0, 256, 0, &v9, &v8, &v6, &v7))
  {
    return 0;
  }

  v4 = asl_msg_list_from_string(v9);
  MEMORY[0x1E12E1EE0](*v0, v9, v8);
  if (!v4)
  {
    return 0;
  }

  if (*(v4 + 2))
  {
    v2 = asl_msg_retain(**(v4 + 2));
  }

  else
  {
    v2 = 0;
  }

  asl_msg_list_release(v4);
  return v2;
}

uint64_t asl_store_location()
{
  if (qword_1ED4ADFE8 != -1)
  {
    asl_core_get_service_port_cold_1();
  }

  result = dword_1ED4ADFF0;
  if (dword_1ED4ADFF0)
  {
    v2 = 0;
    v3 = 0;
    v1 = 0;
    if (_asl_server_query_2(dword_1ED4ADFF0, 0, 0, 0, -1, 0, &v3, &v2 + 1, &v1, &v2))
    {
      return 0;
    }

    else
    {
      if (v3)
      {
        MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], v3, HIDWORD(v2));
      }

      return v2 == 0;
    }
  }

  return result;
}

asl_object_t asl_open_path(const char *path, uint32_t opts)
{
  memset(&v12, 0, sizeof(v12));
  v10 = 0;
  v11 = 0;
  if (opts)
  {
    v3 = opts;
  }

  else
  {
    v3 = 0x80000000;
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (path)
    {
      memset(&v12, 0, sizeof(v12));
      if (stat(path, &v12) < 0)
      {
        return 0;
      }

      if (v12.st_mode < 0)
      {
        v6 = asl_file_open_read(path, &v11);
        goto LABEL_25;
      }

      if (v12.st_mode < 0x4000u)
      {
        return 0;
      }

      v5 = path;
    }

    else
    {
      v5 = "/var/log/asl";
    }

    v6 = asl_store_open_read(v5, &v10);
LABEL_23:
    v9 = v10;
    goto LABEL_26;
  }

  result = 0;
  if (path && (v3 & 1) != 0)
  {
    memset(&v12, 0, sizeof(v12));
    if (stat(path, &v12) < 0)
    {
      if (*__error() != 2)
      {
        return 0;
      }

      if ((v3 & 2) != 0)
      {
LABEL_22:
        v6 = asl_store_open_write(path, &v10);
        goto LABEL_23;
      }
    }

    else if ((v12.st_mode & 0x80000000) == 0)
    {
      if (v12.st_mode >= 0x4000u)
      {
        goto LABEL_22;
      }

      return 0;
    }

    v7 = geteuid();
    v8 = getegid();
    v6 = asl_file_open_write(path, 420, v7, v8, &v11);
LABEL_25:
    v9 = v11;
LABEL_26:
    if (v6)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

_BYTE *___asl_global_init_block_invoke()
{
  result = getenv("ASL_DISABLE");
  if (!result || *result != 49 || result[1])
  {
    v1 = *MEMORY[0x1E69E99F8];
    result = bootstrap_look_up2();
    if (result)
    {
      dword_1ED4ADFF0 = 0;
    }
  }

  return result;
}

void _asl_set_option(int *a1)
{
  v4 = 0;
  if (asl_msg_lookup(a1, "ASLOption", &v4, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = v4 == 0;
  }

  if (v2)
  {
    asl_msg_set_key_val(a1, "ASLOption", "store");
  }

  else
  {
    v3 = 0;
    asprintf(&v3, "%s %s", "store", v4);
    asl_msg_set_key_val(a1, "ASLOption", v3);
    free(v3);
  }
}

int *___asl_send_message_block_invoke(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  v2 = *__error();
  if (stat("/etc/asl/.noquota", &v5))
  {
    v3 = getenv("ASL_QUOTA_DISABLED");
    if (v3 && *v3 == 49 && !v3[1])
    {
      dword_1ED4ADFE0 = -1;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    dword_1ED4ADFE0 = -1;
  }

  result = __error();
  *result = v2;
  return result;
}

uint64_t _asl_aux_save_context(uint64_t a1)
{
  pthread_mutex_lock(&stru_1ED4AE000);
  v2 = reallocf(qword_1ED4AE048, 8 * dword_1ED4AE040 + 8);
  qword_1ED4AE048 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = dword_1ED4AE040++;
    v2[v4] = a1;
  }

  else
  {
    dword_1ED4AE040 = 0;
    v3 = 9999;
  }

  pthread_mutex_unlock(&stru_1ED4AE000);
  return v3;
}

void ___asl_auxiliary_block_invoke_2(uint64_t a1, int a2, dispatch_data_t data, int a4)
{
  if (!a4)
  {
    size_ptr = dispatch_data_get_size(data);
    if (size_ptr)
    {
      v10 = 0;
      v7 = dispatch_data_create_map(data, &v10, &size_ptr);
      v8 = asl_core_encode_buffer(v10, size_ptr);
      asl_msg_set_key_val(*(a1 + 32), "ASLAuxData", v8);
      free(v8);
      v9 = _asl_evaluate_send(0, *(a1 + 32), -1);
      _asl_send_message(0, v9, *(a1 + 32), 0);
      asl_msg_release(*(a1 + 32));
      dispatch_release(v7);
    }
  }

  if (a2)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    dispatch_release(*(a1 + 48));
    dispatch_release(*(a1 + 56));
  }
}

uint64_t asl_core_string_hash(uint64_t __s, unsigned int a2)
{
  if (__s)
  {
    v2 = __s;
    if (!a2)
    {
      if (!*__s)
      {
        return 0;
      }

      a2 = strlen(__s);
    }

    v3 = -1640531527;
    if (a2 < 0xC)
    {
      v4 = 0;
      v6 = -1640531527;
      v5 = a2;
    }

    else
    {
      v4 = 0;
      v5 = a2;
      v6 = -1640531527;
      do
      {
        v7 = v6 + v2[4] + (v2[5] << 8) + (v2[6] << 16) + (v2[7] << 24);
        v8 = v4 + v2[8] + (v2[9] << 8) + (v2[10] << 16) + (v2[11] << 24);
        v9 = (v3 + *v2 + (v2[1] << 8) + (v2[2] << 16) + (v2[3] << 24) - (v7 + v8)) ^ (v8 >> 13);
        v10 = (v7 - v8 - v9) ^ (v9 << 8);
        v11 = (v8 - v9 - v10) ^ (v10 >> 13);
        v12 = (v9 - v10 - v11) ^ (v11 >> 12);
        v13 = (v10 - v11 - v12) ^ (v12 << 16);
        v14 = (v11 - v12 - v13) ^ (v13 >> 5);
        v3 = (v12 - v13 - v14) ^ (v14 >> 3);
        v6 = (v13 - v14 - v3) ^ (v3 << 10);
        v4 = (v14 - v3 - v6) ^ (v6 >> 15);
        v2 += 12;
        v5 -= 12;
      }

      while (v5 > 0xB);
    }

    v15 = v4 + a2;
    if (v5 <= 5)
    {
      if (v5 <= 2)
      {
        if (v5 == 1)
        {
          goto LABEL_31;
        }

        if (v5 != 2)
        {
LABEL_32:
          v16 = (v3 - v6 - v15) ^ (v15 >> 13);
          v17 = (v6 - v15 - v16) ^ (v16 << 8);
          v18 = (v15 - v16 - v17) ^ (v17 >> 13);
          v19 = (v16 - v17 - v18) ^ (v18 >> 12);
          v20 = (v17 - v18 - v19) ^ (v19 << 16);
          v21 = (v18 - v19 - v20) ^ (v20 >> 5);
          v22 = (v19 - v20 - v21) ^ (v21 >> 3);
          v23 = (v20 - v21 - v22) ^ (v22 << 10);
          v24 = v21 - v22 - v23;
          if (v24 == v23 >> 15)
          {
            return 1;
          }

          else
          {
            return v24 ^ (v23 >> 15);
          }
        }

LABEL_30:
        v3 += v2[1] << 8;
LABEL_31:
        v3 += *v2;
        goto LABEL_32;
      }

      if (v5 == 3)
      {
LABEL_29:
        v3 += v2[2] << 16;
        goto LABEL_30;
      }

      if (v5 == 4)
      {
LABEL_28:
        v3 += v2[3] << 24;
        goto LABEL_29;
      }

LABEL_27:
      v6 += v2[4];
      goto LABEL_28;
    }

    if (v5 > 8)
    {
      if (v5 != 9)
      {
        if (v5 != 10)
        {
          v15 += v2[10] << 24;
        }

        v15 += v2[9] << 16;
      }

      v15 += v2[8] << 8;
    }

    else
    {
      if (v5 == 6)
      {
LABEL_26:
        v6 += v2[5] << 8;
        goto LABEL_27;
      }

      if (v5 == 7)
      {
LABEL_25:
        v6 += v2[6] << 16;
        goto LABEL_26;
      }
    }

    v6 += v2[7] << 24;
    goto LABEL_25;
  }

  return __s;
}

const char *asl_core_error(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "Operation Failed";
  }

  else
  {
    return off_1E86CFB58[a1];
  }
}

const char *asl_core_level_to_string(unsigned int a1)
{
  if (a1 <= 7)
  {
    return ASL_LEVEL_TO_STRING[a1];
  }

  else
  {
    return "invalid";
  }
}

uint64_t asl_core_check_access(int a1, gid_t a2, uid_t uid, int a4, char a5)
{
  result = 0;
  if (!uid)
  {
    return result;
  }

  v7 = a5 & 3;
  if ((a5 & 3) == 0)
  {
    return result;
  }

  if (v7 == 2)
  {
    return asl_core_check_group_access(a2, uid, a4);
  }

  if (v7 != 1)
  {
    result = 0;
    if (a1 == -1 || a1 == uid)
    {
      return result;
    }

    return asl_core_check_group_access(a2, uid, a4);
  }

  if (a1 == uid || a1 == -1)
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

uint64_t asl_core_check_group_access(gid_t a1, uid_t uid, int a3)
{
  result = 0;
  v9 = *MEMORY[0x1E69E9840];
  if (a1 != -1 && a1 != a3)
  {
    memset(uu, 0, sizeof(uu));
    memset(group, 0, sizeof(group));
    mbr_uid_to_uuid(uid, uu);
    mbr_gid_to_uuid(a1, group);
    ismember = 0;
    mbr_check_membership(uu, group, &ismember);
    if (ismember)
    {
      result = 0;
    }

    else
    {
      result = 10;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_core_new_msg_id(uint64_t a1)
{
  pthread_mutex_lock(&core_lock);
  if (!a1)
  {
    a1 = _asl_core_msg_next_id;
  }

  _asl_core_msg_next_id = a1 + 1;
  pthread_mutex_unlock(&core_lock);
  return a1;
}

uint64_t asl_filesystem_path(int a1)
{
  if (asl_filesystem_path_once != -1)
  {
    asl_filesystem_path_cold_1();
  }

  if (a1 == 1)
  {
    return asl_filesystem_path_asl_filesystem_path_archive;
  }

  if (a1)
  {
    return 0;
  }

  return asl_filesystem_path_asl_filesystem_path_database;
}

_BYTE *asl_core_encode_buffer(unsigned __int8 *a1, unsigned int a2)
{
  result = 0;
  v37 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    goto LABEL_25;
  }

  bzero(v35, 0x400uLL);
  v32 = 0;
  v5 = a2;
  v6 = a2;
  v7 = a1;
  do
  {
    v8 = *v7++;
    ++v35[v8];
    --v6;
  }

  while (v6);
  v9 = 0;
  v10 = v34;
  v11 = &v32;
  v12 = 1;
  do
  {
    v13 = v12;
    *v10 = 1;
    v14 = v36;
    v15 = 1;
    v16 = 2;
    v17 = v32;
    while (1)
    {
      v18 = v35[v16];
      if (v18 < v14)
      {
        break;
      }

LABEL_11:
      if (++v16 == 256)
      {
        goto LABEL_14;
      }
    }

    *v10 = v16;
    if (v18 && (v9 & (v18 == v17)) == 0)
    {
      v15 = v16;
      v14 = v18;
      goto LABEL_11;
    }

    v15 = v16;
LABEL_14:
    v12 = 0;
    *v11 = v35[v15];
    v35[v15] = -1;
    v10 = &v33;
    v9 = 1;
    v11 = (&v32 + 4);
  }

  while ((v13 & 1) != 0);
  v19 = a2 + v32 + HIDWORD(v32);
  result = malloc_type_malloc((v19 + 3), 0xB2964B23uLL);
  if (result)
  {
    v20 = 0;
    result[v19 + 2] = 0;
    v21 = v34[0];
    *result = v34[0];
    v22 = v33;
    result[1] = v33;
    v23 = 2;
    do
    {
      v24 = a1[v20];
      if (a1[v20])
      {
        v25 = 1;
        v26 = v34;
        v27 = 1;
        while (1)
        {
          v28 = v25;
          if (*v26 == v24)
          {
            break;
          }

          v25 = 0;
          v27 = 2;
          v26 = &v33;
          if ((v28 & 1) == 0)
          {
            v29 = 1;
            v30 = v23;
            goto LABEL_24;
          }
        }

        v30 = v23 + 1;
        result[v23] = v22;
        v29 = 2;
        LOBYTE(v24) = v27;
      }

      else
      {
        v29 = 1;
        v30 = v23;
        LOBYTE(v24) = v21;
      }

LABEL_24:
      v23 += v29;
      result[v30] = v24;
      ++v20;
    }

    while (v20 != v5);
  }

LABEL_25:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_core_decode_buffer(const char *a1, void *a2, int *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    v7 = *a1;
    v19[0] = *a1;
    v8 = *(a1 + 1);
    v19[1] = a1[1];
    v9 = strlen(a1);
    v10 = v9;
    if (v9 >= 3)
    {
      v11 = 0;
      LODWORD(v12) = 2;
      while (1)
      {
        if (a1[v12] == v8)
        {
          v12 = v12 + 1;
          if (v12 == v9 || a1[v12] - 3 < 0xFFFFFFFE)
          {
            break;
          }
        }

        LODWORD(v12) = v12 + 1;
        --v11;
        if (v12 >= v9)
        {
          if (!v11)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = -v11;
          v14 = malloc_type_malloc(-v11, 0x46E53489uLL);
          if (!v14)
          {
            return 0xFFFFFFFFLL;
          }

          if (v10 >= 3)
          {
            v15 = 0;
            LODWORD(v16) = 2;
            do
            {
              v17 = a1[v16];
              if (v17 == v7)
              {
                LOBYTE(v17) = 0;
              }

              else if (v17 == v8)
              {
                v16 = v16 + 1;
                LOBYTE(v17) = v19[a1[v16] - 1];
              }

              v14[v15++] = v17;
              LODWORD(v16) = v16 + 1;
            }

            while (v16 < v10);
          }

          v3 = 0;
          *a3 = v13;
          *a2 = v14;
          return v3;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

BOOL asl_core_str_match(char *a1, char *__s, unsigned int a3, int a4, unsigned int a5, unsigned int *a6)
{
  if (!a1)
  {
    return a3 == 0;
  }

  v11 = a1;
  v12 = 0;
  v13 = 0;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a6 = v13;
  v14 = *v11;
  if (*v11)
  {
    while (1)
    {
      if (a4 && v13 == a4)
      {
        return 1;
      }

      if (__s)
      {
        v15 = strchr(__s, v14);
        v16 = !v15 || (a5 & 1) == 0;
        if (((v15 == 0) & (a5 >> 1)) == 0 && v16)
        {
          break;
        }
      }

      v17 = v12;
      if (a6)
      {
        v17 = *a6;
      }

      ++v11;
      v13 = v17 + 1;
      if (a6)
      {
        goto LABEL_3;
      }

LABEL_5:
      v14 = *v11;
      v12 = v13;
      if (!*v11)
      {
        goto LABEL_19;
      }
    }

    if (a6)
    {
      v12 = *a6;
    }
  }

  else
  {
LABEL_19:
    v12 = v13;
  }

  return v12 >= a3;
}

BOOL asl_core_str_match_char(unsigned __int8 *a1, unsigned __int8 a2, unsigned int a3, char a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (!a1)
  {
    return a3 == 0;
  }

  v5 = *a1;
  if ((a4 & 1) != 0 && v5 == a2)
  {
    v6 = 1;
    if (!a5)
    {
      return v6 >= a3;
    }

    *a5 = 1;
    if ((a4 & 2) == 0 || *a1 == a2)
    {
      return v6 >= a3;
    }
  }

  else
  {
    if ((a4 & 2) == 0 || v5 == a2)
    {
      if (a5)
      {
        v6 = *a5;
      }

      else
      {
        v6 = 0;
      }

      return v6 >= a3;
    }

    if (!a5)
    {
      v6 = 1;
      return v6 >= a3;
    }
  }

  v6 = 1;
  *a5 = 1;
  return v6 >= a3;
}

uint64_t asl_core_str_to_uint32(char *a1, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 = (v4 + 10 * v2 - 48);
      --v3;
    }

    while (v3);
  }

  return v2;
}

const char *asl_core_str_to_size(const char *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result)
    {
      v2 = result[v1 - 1];
      if (v2 > 90)
      {
        LOBYTE(v2) = v2 - 32;
      }

      v3 = v2 - 71;
      if (v3 > 6u)
      {
        v4 = 1;
      }

      else
      {
        v4 = qword_1DF9254D8[v3];
      }

      return (atoll(v1) * v4);
    }
  }

  return result;
}

const char *asl_core_str_to_time(const char *result, int a2)
{
  if (result)
  {
    LODWORD(v2) = a2;
    v3 = result;
    result = strlen(result);
    if (result)
    {
      v4 = result[v3 - 1];
      if (v4 > 90)
      {
        LOBYTE(v4) = v4 - 32;
      }

      if (v4 > 0x4Cu)
      {
        if (v4 == 83)
        {
          v2 = 1;
          return (atoll(v3) * v2);
        }

        if (v4 == 77)
        {
          v2 = 60;
          return (atoll(v3) * v2);
        }
      }

      else
      {
        if (v4 == 68)
        {
          v2 = 86400;
          return (atoll(v3) * v2);
        }

        if (v4 == 72)
        {
          v2 = 3600;
          return (atoll(v3) * v2);
        }
      }

      v2 = v2;
      return (atoll(v3) * v2);
    }
  }

  return result;
}

uint64_t asl_core_time_to_str(int a1, char *a2, size_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  *__str = 0u;
  v18 = 0u;
  v6 = a1 / 86400;
  v7 = a1 % 86400 / 3600;
  v8 = a1 % 86400 % 3600;
  v9 = (((34953 * v8) >> 16) >> 5) + (((v8 + ((-30583 * v8) >> 16)) & 0x8000) >> 15);
  v10 = (v8 - 60 * ((((34953 * v8) >> 16) >> 5) + (((v8 + ((-30583 * v8) >> 16)) & 0x8000) >> 15)));
  if (a1 / 86400)
  {
    v11 = "s";
    if (v6 == 1)
    {
      v11 = &unk_1DF925A35;
    }

    snprintf(__str, 0x20uLL, "%u day%s", a1 / 86400, v11);
    v5 = 0uLL;
  }

  *v15 = v5;
  v16 = v5;
  snprintf(v15, 0x20uLL, "%02u:%02u:%02lld", v7, v9, v10);
  if (v7 + v9 + v10)
  {
    if (v6)
    {
      result = snprintf(a2, a3, "%s %s");
LABEL_11:
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_10:
    result = snprintf(a2, a3, "%s");
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v14 = *MEMORY[0x1E69E9840];

  return snprintf(a2, a3, "0");
}

uint64_t asl_core_str_match_c_time(uint64_t result, time_t *a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    memset(&v60, 0, sizeof(v60));
    v59 = time(0);
    localtime_r(&v59, &v60);
    tm_year = v60.tm_year;
    memset(&v60, 0, sizeof(v60));
    v60.tm_year = tm_year;
    if (!strncasecmp(v5, "jan", 3uLL))
    {
      v7 = 0;
    }

    else if (!strncasecmp(v5, "feb", 3uLL))
    {
      v7 = 1;
    }

    else if (!strncasecmp(v5, "mar", 3uLL))
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
      if (strncasecmp(v5, "apr", 3uLL))
      {
        if (!strncasecmp(v5, "may", 3uLL))
        {
          v7 = 4;
        }

        else if (!strncasecmp(v5, "jun", 3uLL))
        {
          v7 = 5;
        }

        else if (!strncasecmp(v5, "jul", 3uLL))
        {
          v7 = 6;
        }

        else if (!strncasecmp(v5, "aug", 3uLL))
        {
          v7 = 7;
        }

        else if (!strncasecmp(v5, "sep", 3uLL))
        {
          v7 = 8;
        }

        else if (!strncasecmp(v5, "oct", 3uLL))
        {
          v7 = 9;
        }

        else if (!strncasecmp(v5, "nov", 3uLL))
        {
          v7 = 10;
        }

        else
        {
          if (strncasecmp(v5, "dec", 3uLL))
          {
            return 0;
          }

          v7 = 11;
        }
      }
    }

    v60.tm_mon = v7;
    v8 = *(v5 + 3);
    if (!*(v5 + 3))
    {
      return 0;
    }

    v9 = 0;
    do
    {
      if (v8 != 32 && v8 != 9)
      {
        break;
      }

      v8 = *(v5 + 4 + v9++);
    }

    while (v8);
    if (!v9)
    {
      return 0;
    }

    v10 = (v5 + 3 + v9);
    LOBYTE(v11) = *v10;
    if (!*v10)
    {
      return 0;
    }

    v12 = 0;
    v13 = v9;
    v14 = (v5 + 3 + v9);
    v15 = v9 + v5 + 4;
    while (1)
    {
      if (v12 == 2)
      {
        LODWORD(v12) = 2;
        goto LABEL_39;
      }

      if (!memchr("0123456789", v11, 0xBuLL))
      {
        break;
      }

      v11 = *(v15 + v12++);
      if (!v11)
      {
        goto LABEL_39;
      }
    }

    if (!v12)
    {
      return 0;
    }

LABEL_39:
    v16 = 0;
    v17 = v12;
    do
    {
      v18 = *v14++;
      v16 = v18 + 10 * v16 - 48;
      --v17;
    }

    while (v17);
    v60.tm_mday = v16;
    if (v16 > 31)
    {
      return 0;
    }

    v19 = v10[v12];
    if (!v10[v12])
    {
      return 0;
    }

    v20 = 0;
    do
    {
      if (v19 != 32 && v19 != 9)
      {
        break;
      }

      v19 = *(v13 + v12 + v5 + 4 + v20++);
    }

    while (v19);
    if (!v20)
    {
      return 0;
    }

    v21 = &v10[v12 + v20];
    LOBYTE(v22) = *v21;
    if (!*v21)
    {
      return 0;
    }

    v23 = 0;
    v24 = v21;
    v58 = v20;
    v25 = v13 + v20 + v12 + v5 + 4;
    while (1)
    {
      if (v23 == 2)
      {
        LODWORD(v23) = 2;
        goto LABEL_56;
      }

      if (!memchr("0123456789", v22, 0xBuLL))
      {
        break;
      }

      v22 = *(v25 + v23++);
      if (!v22)
      {
        goto LABEL_56;
      }
    }

    if (!v23)
    {
      return 0;
    }

LABEL_56:
    v26 = 0;
    v27 = v23;
    v28 = v23;
    do
    {
      v29 = *v24++;
      v26 = v29 + 10 * v26 - 48;
      --v28;
    }

    while (v28);
    v60.tm_hour = v26;
    if (v26 > 23)
    {
      return 0;
    }

    v30 = &v21[v23];
    if (*v30 != 58)
    {
      return 0;
    }

    v33 = v30[1];
    v32 = v30 + 1;
    LOBYTE(v31) = v33;
    if (!v33)
    {
      return 0;
    }

    v34 = 0;
    v35 = v32;
    v56 = v27;
    v36 = v13 + v27 + v58 + v12 + v5 + 5;
    do
    {
      if (v34 == 2)
      {
        LODWORD(v34) = 2;
        v37 = v56;
        goto LABEL_68;
      }

      if (!memchr("0123456789", v31, 0xBuLL))
      {
        break;
      }

      v31 = *(v36 + v34++);
    }

    while (v31);
    v37 = v56;
    if (v34 < 2)
    {
      return 0;
    }

LABEL_68:
    v38 = 0;
    v39 = v34;
    do
    {
      v40 = *v35++;
      v38 = v40 + 10 * v38 - 48;
      --v39;
    }

    while (v39);
    v60.tm_min = v38;
    if (v38 > 59)
    {
      return 0;
    }

    v41 = &v32[v34];
    if (*v41 != 58)
    {
      return 0;
    }

    v44 = v41[1];
    v43 = v41 + 1;
    LOBYTE(v42) = v44;
    if (!v44)
    {
      return 0;
    }

    v45 = 0;
    v55 = v34;
    v57 = v43;
    v46 = v13 + v34 + v37 + v58 + v12 + v5 + 6;
    do
    {
      if (v45 == 2)
      {
        LODWORD(v45) = 2;
        goto LABEL_80;
      }

      if (!memchr("0123456789", v42, 0xBuLL))
      {
        break;
      }

      v42 = *(v46 + v45++);
    }

    while (v42);
    if (v45 < 2)
    {
      return 0;
    }

LABEL_80:
    v47 = 0;
    v48 = v45;
    v49 = v45;
    do
    {
      v50 = *v43++;
      v47 = v50 + 10 * v47 - 48;
      --v49;
    }

    while (v49);
    v60.tm_sec = v47;
    if (v47 > 59)
    {
      return 0;
    }

    v51 = v57 + v45;
    LOBYTE(v52) = v57[v48];
    if (v52)
    {
      v53 = 0;
      v54 = v13 + v48 + v55 + v37 + v58 + v12 + v5 + 6;
      while (v53 != 1)
      {
        if (!memchr(" \t\n", v52, 4uLL))
        {
          if (!v53)
          {
            return 0;
          }

          break;
        }

        v52 = *(v54 + v53++);
        if (!v52)
        {
          break;
        }
      }
    }

    v60.tm_isdst = -1;
    if (a3)
    {
      *a3 = v51 - v5;
    }

    if (a2)
    {
      *a2 = mktime(&v60);
    }

    return 1;
  }

  return result;
}

uint64_t asl_core_str_match_dotted_time(uint64_t result, time_t *a2, _DWORD *a3)
{
  memset(&v72, 0, sizeof(v72));
  if (result)
  {
    v3 = result;
    LOBYTE(v4) = *result;
    if (!*result)
    {
      return 0;
    }

    v7 = 0;
    do
    {
      if (v7 == 4)
      {
        LODWORD(v7) = 4;
        goto LABEL_10;
      }

      if (!memchr("0123456789", v4, 0xBuLL))
      {
        break;
      }

      v4 = v3[++v7];
    }

    while (v4);
    if (v7 < 4)
    {
      return 0;
    }

    v8 = 0;
    v9 = v3;
    v10 = v7;
    do
    {
      v11 = *v9++;
      v8 = v11 + 10 * v8 - 48;
      --v10;
    }

    while (v10);
    v72.tm_year = v8 - 1900;
    v12 = &v3[v7];
    if (*v12 != 46)
    {
      return 0;
    }

    v15 = v12[1];
    v14 = v12 + 1;
    LOBYTE(v13) = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_10:
    v16 = 0;
    v17 = v14;
    while (1)
    {
      if (v16 == 2)
      {
        LODWORD(v16) = 2;
        goto LABEL_21;
      }

      if (!memchr("0123456789", v13, 0xBuLL))
      {
        break;
      }

      v13 = v3[v7 + 2 + v16++];
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (!v16)
    {
      return 0;
    }

    v18 = 0;
    v19 = v16;
    do
    {
      v20 = *v17++;
      v18 = v20 + 10 * v18 - 48;
      --v19;
    }

    while (v19);
    if ((v18 - 13) < 0xFFFFFFF4)
    {
      return 0;
    }

    v72.tm_mon = v18 - 1;
    v21 = &v14[v16];
    if (*v21 != 46)
    {
      return 0;
    }

    v24 = v21[1];
    v23 = v21 + 1;
    LOBYTE(v22) = v24;
    if (!v24)
    {
      return 0;
    }

LABEL_21:
    v25 = 0;
    v26 = v23;
    while (1)
    {
      if (v25 == 2)
      {
        LODWORD(v25) = 2;
        goto LABEL_33;
      }

      if (!memchr("0123456789", v22, 0xBuLL))
      {
        break;
      }

      v22 = v3[v7 + 3 + v16 + v25++];
      if (!v22)
      {
        goto LABEL_33;
      }
    }

    if (!v25)
    {
      return 0;
    }

    v27 = 0;
    v28 = v25;
    do
    {
      v29 = *v26++;
      v27 = v29 + 10 * v27 - 48;
      --v28;
    }

    while (v28);
    v72.tm_mday = v27;
    if (v27 > 31)
    {
      return 0;
    }

    v30 = v23[v25];
    if (!v23[v25])
    {
      return 0;
    }

    v31 = 0;
    do
    {
      if (v30 != 32 && v30 != 9)
      {
        break;
      }

      v30 = v3[v16 + 3 + v7 + v25 + v31++];
    }

    while (v30);
    if (!v31)
    {
      return 0;
    }

    v32 = &v23[v25 + v31];
    LOBYTE(v33) = *v32;
    if (!*v32)
    {
      return 0;
    }

LABEL_33:
    v34 = 0;
    v67 = v31;
    v68 = v32;
    v35 = &v3[v25 + 3 + v16 + v7 + v31];
    while (1)
    {
      if (v34 == 2)
      {
        LODWORD(v34) = 2;
        goto LABEL_50;
      }

      if (!memchr("0123456789", v33, 0xBuLL))
      {
        break;
      }

      v33 = *(v35 + v34++);
      if (!v33)
      {
        goto LABEL_50;
      }
    }

    if (!v34)
    {
      return 0;
    }

    v36 = 0;
    v37 = v34;
    v38 = v34;
    do
    {
      v39 = *v32++;
      v36 = v39 + 10 * v36 - 48;
      --v38;
    }

    while (v38);
    v72.tm_hour = v36;
    if (v36 > 23)
    {
      return 0;
    }

    v40 = &v68[v34];
    if (*v40 != 58)
    {
      return 0;
    }

    v43 = v40[1];
    v42 = v40 + 1;
    LOBYTE(v41) = v43;
    if (!v43)
    {
      return 0;
    }

LABEL_50:
    v44 = 0;
    v69 = v42;
    v65 = v37;
    v45 = &v3[v25 + 4 + v16 + v7 + v37 + v67];
    do
    {
      if (v44 == 2)
      {
        LODWORD(v44) = 2;
        goto LABEL_62;
      }

      if (!memchr("0123456789", v41, 0xBuLL))
      {
        break;
      }

      v41 = *(v45 + v44++);
    }

    while (v41);
    if (v44 < 2)
    {
      return 0;
    }

    v46 = 0;
    v47 = v44;
    v66 = v44;
    do
    {
      v48 = *v42++;
      v46 = v48 + 10 * v46 - 48;
      --v47;
    }

    while (v47);
    v72.tm_min = v46;
    if (v46 > 59)
    {
      return 0;
    }

    v70 = &v69[v44];
    if (*v70 != 58)
    {
      return 0;
    }

    v49 = v70[1];
    v71 = v70 + 1;
    if (!v49)
    {
      return 0;
    }

LABEL_62:
    v50 = 0;
    v51 = v71;
    v52 = &v3[v25 + 5 + v16 + v7 + v44 + v65 + v67];
    do
    {
      if (v50 == 2)
      {
        LODWORD(v50) = 2;
        goto LABEL_74;
      }

      if (!memchr("0123456789", v49, 0xBuLL))
      {
        break;
      }

      v49 = *(v52 + v50++);
    }

    while (v49);
    if (v50 < 2)
    {
      return 0;
    }

    v53 = 0;
    v54 = v50;
    v55 = v50;
    do
    {
      v56 = *v51++;
      v53 = v56 + 10 * v53 - 48;
      --v55;
    }

    while (v55);
    v72.tm_sec = v53;
    if (v53 > 59)
    {
      return 0;
    }

    v57 = v71[v50];
    if (!v71[v50])
    {
      return 0;
    }

LABEL_74:
    v58 = 0;
    do
    {
      if (v57 != 32 && v57 != 9)
      {
        break;
      }

      v57 = v3[v25 + 5 + v16 + v7 + v50 + v66 + v65 + v67 + v58++];
    }

    while (v57);
    if (v58 && (v59 = &v71[v50 + v58], *v59 == 85) && v59[1] == 84 && v59[2] == 67)
    {
      v62 = v59[3];
      v61 = v59 + 3;
      LOBYTE(v60) = v62;
      if (v62)
      {
        v63 = 0;
        v64 = &v3[v25 + 8 + v16 + v7 + v58 + v54 + v66 + v65 + v67];
        while (v63 != 1)
        {
          if (!memchr(" \t\n", v60, 4uLL))
          {
            if (!v63)
            {
              return 0;
            }

            break;
          }

          v60 = *(v64 + v63++);
          if (!v60)
          {
            break;
          }
        }
      }

      if (a3)
      {
        *a3 = v61 - v3;
      }

      if (a2)
      {
        *a2 = timegm(&v72);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t asl_core_str_match_iso_8601_time(uint64_t result, time_t *a2, _DWORD *a3)
{
  memset(&v97, 0, sizeof(v97));
  if (result)
  {
    v3 = result;
    LOBYTE(v4) = *result;
    if (!*result)
    {
      return 0;
    }

    v7 = 0;
    do
    {
      if (v7 == 4)
      {
        LODWORD(v7) = 4;
        goto LABEL_10;
      }

      if (!memchr("0123456789", v4, 0xBuLL))
      {
        break;
      }

      v4 = v3[++v7];
    }

    while (v4);
    if (v7 < 4)
    {
      return 0;
    }

LABEL_10:
    v8 = 0;
    v9 = v3;
    v10 = v7;
    do
    {
      v11 = *v9++;
      v8 = v11 + 10 * v8 - 48;
      --v10;
    }

    while (v10);
    v12 = v3[v7];
    v97.tm_year = v8 - 1900;
    v13 = v12 == 45;
    v14 = v12 == 45 ? &v3[v7 + 1] : &v3[v7];
    LOBYTE(v15) = *v14;
    if (!*v14)
    {
      return 0;
    }

    v16 = 0;
    v17 = v14;
    do
    {
      if (v16 == 2)
      {
        LODWORD(v16) = 2;
        goto LABEL_23;
      }

      if (!memchr("0123456789", v15, 0xBuLL))
      {
        break;
      }

      v15 = v3[v7 + 1 + v13 + v16++];
    }

    while (v15);
    if (v16 < 2)
    {
      return 0;
    }

LABEL_23:
    v18 = 0;
    v19 = v16;
    do
    {
      v20 = *v17++;
      v18 = v20 + 10 * v18 - 48;
      --v19;
    }

    while (v19);
    if ((v18 - 13) < 0xFFFFFFF4)
    {
      return 0;
    }

    v97.tm_mon = v18 - 1;
    v21 = v14[v16] == 45;
    v22 = v14[v16] == 45 ? &v14[v16 + 1] : &v14[v16];
    LOBYTE(v23) = *v22;
    if (!*v22)
    {
      return 0;
    }

    v24 = 0;
    v25 = v22;
    v95 = v21;
    v96 = v16;
    v26 = &v3[v7 + 1 + v16 + v13 + v21];
    do
    {
      if (v24 == 2)
      {
        LODWORD(v24) = 2;
        v98[0] = 2;
        goto LABEL_37;
      }

      if (!memchr("0123456789", v23, 0xBuLL))
      {
        break;
      }

      v23 = *(v26 + v24++);
    }

    while (v23);
    v98[0] = v24;
    if (v24 <= 1)
    {
      return 0;
    }

LABEL_37:
    v27 = 0;
    v28 = v24;
    v29 = v24;
    do
    {
      v30 = *v25++;
      v27 = v30 + 10 * v27 - 48;
      --v29;
    }

    while (v29);
    v97.tm_mday = v27;
    if (v27 > 31)
    {
      return 0;
    }

    result = asl_core_str_match(&v22[v24], "Tt", 1u, 1, 1u, v98);
    if (result)
    {
      v31 = v98[0];
      v32 = &v22[v28 + v98[0]];
      result = asl_core_str_match(v32, "0123456789", 2u, 2, 1u, v98);
      if (result)
      {
        v33 = v98[0];
        if (v98[0])
        {
          v34 = 0;
          v35 = v32;
          v36 = v98[0];
          do
          {
            v37 = *v35++;
            v34 = v37 + 10 * v34 - 48;
            --v36;
          }

          while (v36);
          v97.tm_hour = v34;
          if (v34 > 23)
          {
            return 0;
          }
        }

        else
        {
          v33 = 0;
          v97.tm_hour = 0;
        }

        v38 = v32[v33];
        v39 = v38 == 58;
        v98[0] = v38 == 58;
        v40 = v38 == 58 ? &v32[v33 + 1] : &v32[v33];
        result = asl_core_str_match(v40, "0123456789", 2u, 2, 1u, v98);
        if (result)
        {
          v41 = v98[0];
          if (v98[0])
          {
            v42 = 0;
            v43 = v40;
            v44 = v98[0];
            do
            {
              v45 = *v43++;
              v42 = v45 + 10 * v42 - 48;
              --v44;
            }

            while (v44);
            v97.tm_min = v42;
            if (v42 > 59)
            {
              return 0;
            }
          }

          else
          {
            v41 = 0;
            v97.tm_min = 0;
          }

          v53 = v40[v41] == 58;
          v93 = v53;
          v94 = v41;
          v98[0] = v53;
          v46 = v53 ? &v40[v41 + 1] : &v40[v41];
          result = asl_core_str_match(v46, "0123456789", 2u, 2, 1u, v98);
          if (result)
          {
            v92 = v39;
            v47 = v98[0];
            if (v98[0])
            {
              v48 = 0;
              v49 = v46;
              v50 = v98[0];
              do
              {
                v51 = *v49++;
                v48 = v51 + 10 * v48 - 48;
                --v50;
              }

              while (v50);
              v97.tm_sec = v48;
              if (v48 > 59)
              {
                return 0;
              }
            }

            else
            {
              v47 = 0;
              v48 = 0;
              v97.tm_sec = 0;
            }

            v52 = v46[v47];
            v53 = v52 > 0x20 || ((1 << v52) & 0x100000601) == 0;
            if (!v53)
            {
              v97.tm_isdst = -1;
              if (a3)
              {
                *a3 = v46 + v47 - v3;
              }

              if (!a2)
              {
                return 1;
              }

              v54 = mktime(&v97);
LABEL_78:
              *a2 = v54;
              return 1;
            }

            v88 = v31;
            v89 = &v46[v47];
            v55 = 0;
            v98[0] = 0;
            v86 = v47;
            v87 = v33;
            v56 = &v3[v96 + 1 + v7 + v28 + v93 + v92 + v95 + v13 + v47 + v94 + v33 + v31];
            v57 = v52;
            LOBYTE(v58) = v52;
            while (1)
            {
              if (v55 == 1)
              {
                LODWORD(v55) = 1;
                goto LABEL_87;
              }

              if (!memchr("Zz+-", v58, 5uLL))
              {
                break;
              }

              v58 = *(v56 + v55++);
              v98[0] = v55;
              if (!v58)
              {
                goto LABEL_87;
              }
            }

            if (!v55)
            {
              return 0;
            }

LABEL_87:
            if (v57 == 45)
            {
              v63 = 3600;
            }

            else
            {
              if (v57 == 122 || v57 == 90)
              {
                v59 = &v89[v55];
                LOBYTE(v60) = *v59;
                if (*v59)
                {
                  v61 = 0;
                  v98[0] = 0;
                  v62 = &v3[v13 + 1 + v86 + v94 + v87 + v88 + v96 + v7 + v28 + v93 + v55 + v92 + v95];
                  do
                  {
                    if (v61 == 1)
                    {
                      break;
                    }

                    if (!memchr(" \t\n", v60, 4uLL))
                    {
                      goto LABEL_131;
                    }

                    v60 = *(v62 + v61++);
                    v98[0] = v61;
                  }

                  while (v60);
                }

                goto LABEL_132;
              }

              v63 = -3600;
            }

            v85 = v63;
            v98[0] = 0;
            v90 = &v89[v55];
            LOBYTE(v63) = *v90;
            if (*v90)
            {
              v64 = 0;
              v83 = v55;
              v65 = v96 + v7 + v28 + v93 + v55;
              v66 = v90;
              v67 = &v3[v13 + 1 + v86 + v94 + v87 + v88 + v65 + v92 + v95];
              while (1)
              {
                if (v64 == 2)
                {
                  LODWORD(v64) = 2;
                  goto LABEL_106;
                }

                if (!memchr("0123456789", v63, 0xBuLL))
                {
                  break;
                }

                v63 = *(v67 + v64++);
                v98[0] = v64;
                if (!v63)
                {
                  goto LABEL_106;
                }
              }

              if (!v64)
              {
                return 0;
              }

LABEL_106:
              v68 = 0;
              v69 = v64;
              v84 = v64;
              do
              {
                v70 = *v66++;
                v68 = v70 + 10 * v68 - 48;
                --v69;
              }

              while (v69);
              if (v68 <= 23)
              {
                v71 = v68;
                v72 = &v90[v84];
                v98[0] = 0;
                v82 = v90[v84] == 58;
                if (v90[v84] == 58)
                {
                  ++v72;
                }

                v91 = v72;
                v73 = *v72;
                if (v73)
                {
                  v74 = 0;
                  while (1)
                  {
                    if (v74 == 2)
                    {
                      LODWORD(v74) = 2;
                      goto LABEL_119;
                    }

                    if (!memchr("0123456789", v73, 0xBuLL))
                    {
                      break;
                    }

                    v73 = v3[v95 + 1 + v13 + v86 + v94 + v87 + v88 + v7 + v84 + v83 + v28 + v96 + v93 + v92 + v82 + v74++];
                    v98[0] = v74;
                    if (!v73)
                    {
                      goto LABEL_119;
                    }
                  }

                  if (!v74)
                  {
                    goto LABEL_123;
                  }

LABEL_119:
                  v75 = 0;
                  v76 = v74;
                  v77 = v74;
                  v78 = v91;
                  do
                  {
                    v79 = *v78++;
                    v75 = v79 + 10 * v75 - 48;
                    --v77;
                  }

                  while (v77);
                  if (v75 > 59)
                  {
                    return 0;
                  }
                }

                else
                {
LABEL_123:
                  v76 = 0;
                  v75 = 0;
                }

                v97.tm_sec = v48 + v85 * v71 + 60 * v75;
                v59 = &v91[v76];
                if (!v91[v76])
                {
LABEL_132:
                  if (a3)
                  {
                    *a3 = v59 - v3;
                  }

                  if (!a2)
                  {
                    return 1;
                  }

                  v54 = timegm(&v97);
                  goto LABEL_78;
                }

                v98[0] = 0;
                LOBYTE(v80) = *v59;
                if (*v59)
                {
                  v61 = 0;
                  v81 = &v3[v13 + 1 + v86 + v94 + v87 + v88 + v76 + v7 + v84 + v83 + v28 + v96 + v82 + v93 + v92 + v95];
                  while (v61 != 1)
                  {
                    if (!memchr(" \t\n", v80, 4uLL))
                    {
LABEL_131:
                      if (!v61)
                      {
                        return 0;
                      }

                      goto LABEL_132;
                    }

                    v80 = *(v81 + v61++);
                    v98[0] = v61;
                    if (!v80)
                    {
                      goto LABEL_132;
                    }
                  }

                  goto LABEL_132;
                }
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t asl_string_retain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 4), 1u);
  }

  return result;
}

void asl_string_release(uint64_t a1)
{
  if (a1 && atomic_fetch_add((a1 + 4), 0xFFFFFFFF) == 1)
  {
    if ((*(a1 + 8) & 0x80000000) != 0)
    {
      MEMORY[0x1E12E1EE0](*MEMORY[0x1E69E9A60], *(a1 + 40), *(a1 + 24));
    }

    else
    {
      free(*(a1 + 40));
    }

    free(a1);
  }
}

uint64_t asl_string_bytes(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ((*(result + 11) & 0x40) != 0)
    {
      snprintf(__str, 0xBuLL, "%10lu", *(result + 32) - 10);
      v2 = *(v1 + 40);
      *v2 = *__str;
      *(v2 + 8) = v5;
    }

    result = *(v1 + 40);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t asl_string_allocated_size(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void *asl_string_append_op(void *result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!a2)
    {
LABEL_21:
      result = asl_string_append_char_no_encoding(result, 46);
      goto LABEL_38;
    }

    if ((a2 & 0x10) != 0)
    {
      v8[0] = 67;
      v2 = 1;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v2 = 0;
      if ((a2 & 0x100) == 0)
      {
LABEL_8:
        if ((a2 & 0x80) != 0)
        {
          v8[v2++] = 78;
          if ((a2 & 0x20) == 0)
          {
LABEL_10:
            if ((a2 & 0x40) == 0)
            {
LABEL_17:
              v3 = a2 & 7;
              if (v3 > 3)
              {
                if ((a2 & 7u) > 5)
                {
                  if (v3 == 6)
                  {
                    v4 = 33;
                  }

                  else
                  {
                    v4 = 84;
                  }

                  goto LABEL_34;
                }

                if (v3 == 4)
                {
                  v4 = 60;
LABEL_34:
                  v3 = 1;
LABEL_35:
                  v5 = v2;
                  goto LABEL_36;
                }

                v5 = v2 + 1;
                v6 = 60;
              }

              else
              {
                if ((a2 & 7u) <= 1)
                {
                  if ((a2 & 7) == 0)
                  {
                    if (!v2)
                    {
                      goto LABEL_21;
                    }

LABEL_37:
                    v8[v2] = 0;
                    result = asl_string_append_no_encoding_len(result, v8, 0);
                    goto LABEL_38;
                  }

                  v4 = 61;
                  goto LABEL_35;
                }

                if (v3 == 2)
                {
                  v4 = 62;
                  goto LABEL_34;
                }

                v5 = v2 + 1;
                v6 = 62;
              }

              v8[v2] = v6;
              v4 = 61;
              v3 = 2;
LABEL_36:
              v2 += v3;
              v8[v5] = v4;
              goto LABEL_37;
            }

LABEL_16:
            v8[v2++] = 90;
            goto LABEL_17;
          }
        }

        else if ((a2 & 0x20) == 0)
        {
          goto LABEL_10;
        }

        if ((a2 & 0x40) == 0)
        {
          v8[v2++] = 65;
          goto LABEL_17;
        }

        v8[v2++] = 83;
        goto LABEL_16;
      }
    }

    v8[v2++] = 82;
    goto LABEL_8;
  }

LABEL_38:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *asl_string_append_xml_tag(void *a1, char *a2, char *a3)
{
  appended = asl_string_append_no_encoding_len(a1, "\t\t<", 3uLL);
  v6 = asl_string_append_no_encoding_len(appended, a2, 0);
  v7 = asl_string_append_char_no_encoding(v6, 62);
  v8 = asl_string_append_internal(v7, a3, 0);
  v9 = asl_string_append_no_encoding_len(v8, "</", 2uLL);
  v10 = asl_string_append_no_encoding_len(v9, a2, 0);

  return asl_string_append_no_encoding_len(v10, ">\n", 2uLL);
}

void _asl_redirect_fork_child()
{
  if (redirect_descriptors)
  {
    free(redirect_descriptors);
    n_redirect_descriptors = 0;
    redirect_descriptors = 0;
  }
}

int asl_log_descriptor(asl_object_t asl, asl_object_t msg, int level, int descriptor, uint32_t fd_type)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = __error();
  if (fd_type != 1)
  {
    if (fd_type != 2)
    {
      asl_log_descriptor_cold_1();
    }

    v13 = *v10;
    if (pipe(v16) != -1 && fcntl(v16[0], 2, 1) != -1)
    {
      if (dup2(v16[1], descriptor) != -1)
      {
        if (descriptor == 1)
        {
          setlinebuf(*MEMORY[0x1E69E9858]);
        }

        close(v16[1]);
        v14 = asl_log_from_descriptor(asl, msg, level, v16[0]);
        goto LABEL_14;
      }

      close(v16[0]);
      close(v16[1]);
    }

    v14 = *__error();
    *__error() = v13;
LABEL_14:
    v15 = *MEMORY[0x1E69E9840];
    return v14;
  }

  v11 = *MEMORY[0x1E69E9840];

  return asl_log_from_descriptor(asl, msg, level, descriptor);
}

uint64_t asl_log_from_descriptor(uint64_t a1, int *obj, int a3, int a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (asl_log_from_descriptor_once_control != -1)
  {
    asl_log_from_descriptor_cold_1();
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = 9;
    goto LABEL_11;
  }

  if (a4 < 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (obj && (obj = asl_msg_copy(obj)) == 0)
  {
    v8 = 12;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __asl_log_from_descriptor_block_invoke;
    v10[3] = &unk_1E86CFBD8;
    v11 = a4;
    v12 = a3;
    v10[4] = &v13;
    v10[5] = a1;
    v10[6] = obj;
    dispatch_sync(redirect_serial_q, v10);
    if (*(v14 + 6))
    {
      asl_msg_release(obj);
      v8 = *(v14 + 6);
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_11:
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t asl_descriptor_init()
{
  redirect_descriptors = malloc_type_calloc(0x10uLL, 0x30uLL, 0x10300407440E19AuLL);
  if (!redirect_descriptors)
  {
    asl_descriptor_init_cold_3();
  }

  n_redirect_descriptors = 16;
  redirect_serial_q = dispatch_queue_create("com.apple.asl-redirect", 0);
  if (!redirect_serial_q)
  {
    asl_descriptor_init_cold_2();
  }

  read_source_group = dispatch_group_create();
  if (!read_source_group)
  {
    asl_descriptor_init_cold_1();
  }

  return atexit(redirect_atexit);
}

void __asl_log_from_descriptor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >= n_redirect_descriptors)
  {
    v4 = 1 << (fls(v2) + 1);
    v5 = malloc_type_realloc(redirect_descriptors, 48 * v4, 0x10300407440E19AuLL);
    if (!v5)
    {
LABEL_11:
      *(*(*(a1 + 32) + 8) + 24) = *__error();
      return;
    }

    v3 = v5;
    redirect_descriptors = v5;
    bzero(&v5[48 * n_redirect_descriptors], 48 * (v4 - n_redirect_descriptors));
    n_redirect_descriptors = v4;
    v2 = *(a1 + 56);
  }

  else
  {
    v3 = redirect_descriptors;
  }

  if (*(v3 + 48 * v2 + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = 9;
    return;
  }

  v6 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  v7 = redirect_descriptors;
  v8 = *(a1 + 56);
  *(redirect_descriptors + 48 * v8 + 24) = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v9 = v7 + 48 * v8;
  *(v9 + 32) = v6;
  *v9 = *(a1 + 60);
  v10 = asl_client_retain(*(a1 + 40));
  v11 = *(a1 + 56);
  v12 = redirect_descriptors + 48 * v11;
  *(v12 + 8) = v10;
  *(v12 + 16) = *(a1 + 48);
  fcntl(v11, 4, 4);
  v13 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 56), 0, redirect_serial_q);
  *(redirect_descriptors + 48 * *(a1 + 56) + 40) = v13;
  dispatch_set_context(v13, v13);
  dispatch_source_set_event_handler_f(v13, read_from_source);
  dispatch_source_set_cancel_handler_f(v13, cancel_source);
  dispatch_group_enter(read_source_group);

  dispatch_resume(v13);
}

void read_from_source(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  if (_read_redirect(handle, 0) == -1)
  {

    dispatch_source_cancel(a1);
  }
}

void cancel_source(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  v3 = redirect_descriptors + 48 * handle;
  _read_redirect(handle, 1);
  close(handle);
  asl_client_release(*(v3 + 8));
  asl_msg_release(*(v3 + 16));
  free(*(v3 + 24));
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  dispatch_release(a1);
  v4 = read_source_group;

  dispatch_group_leave(v4);
}

intptr_t redirect_atexit()
{
  v0 = n_redirect_descriptors;
  if (n_redirect_descriptors <= 1)
  {
LABEL_4:
    if (v0 < 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (*(redirect_descriptors + 72))
  {
    fflush(*MEMORY[0x1E69E9858]);
    v0 = n_redirect_descriptors;
    goto LABEL_4;
  }

LABEL_5:
  v1 = 0;
  v2 = redirect_descriptors;
  v3 = 40;
  do
  {
    v4 = *(v2 + v3);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v2 = redirect_descriptors;
      v0 = n_redirect_descriptors;
    }

    ++v1;
    v3 += 48;
  }

  while (v1 < v0);
LABEL_9:
  v5 = read_source_group;
  v6 = dispatch_time(0, 3000000000);

  return dispatch_group_wait(v5, v6);
}

uint64_t _read_redirect(int a1, int a2)
{
  v4 = redirect_descriptors + 48 * a1;
  v5 = read(a1, *(v4 + 32), *(v4 + 24) - *(v4 + 32) + 511);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (*(v4 + 32) + v5);
      *(v4 + 32) = v7;
      *v7 = 0;
      v9 = *(v4 + 24);
      v8 = *(v4 + 32);
      if (v9 >= v8)
      {
        v11 = *(v4 + 24);
      }

      else
      {
        while (1)
        {
          v10 = 0;
          v11 = v9;
          while (v9[v10])
          {
            if (v9[v10] == 10)
            {
              v9[v10] = 0;
              v8 = *(v4 + 32);
              break;
            }

            ++v10;
          }

          v12 = &v9[v10];
          if (&v9[v10] >= v8)
          {
            v13 = *(v4 + 24);
            if (v13 != v9)
            {
              break;
            }
          }

          asl_log(*(v4 + 8), *(v4 + 16), *v4, "%s", v9);
          v9 = v12 + 1;
          v8 = *(v4 + 32);
          if (v12 + 1 >= v8)
          {
            v9 = *(v4 + 24);
            v11 += v10 + 1;
            goto LABEL_15;
          }
        }

        memmove(v13, v9, v13 - v9 + 512);
        v9 = *(v4 + 24);
        v8 = &v9[v10];
        *(v4 + 32) = &v9[v10];
      }

LABEL_15:
      if (v11 == v8)
      {
        *(v4 + 32) = v9;
        v8 = v9;
      }

      v6 += v5;
      v5 = read(a1, v8, v9 - v8 + 511);
    }

    while (v5 > 0);
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v6 = 0;
  if (!a2)
  {
    goto LABEL_21;
  }

LABEL_22:
  v14 = *(v4 + 32);
  if (v14 > *(v4 + 24))
  {
    *v14 = 0;
    asl_log(*(v4 + 8), *(v4 + 16), *v4, "%s", *(v4 + 24));
  }

LABEL_24:
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double asl_msg_list_new()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  if (v0)
  {
    *&result = 0x100000002;
    *v0 = 0x100000002;
  }

  return result;
}

void *asl_msg_list_new_count(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0x100000002;
    *(v2 + 2) = a1;
    v4 = reallocf(*(v2 + 2), 8 * a1);
    v3[2] = v4;
    if (!v4)
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

asl_object_t asl_msg_list_retain(asl_object_t obj)
{
  if (obj)
  {
    asl_retain(obj);
  }

  return obj;
}

void asl_msg_list_release(asl_object_t obj)
{
  if (obj)
  {
    asl_release(obj);
  }
}

void *asl_msg_list_to_string(void *result, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 2) && result[2])
    {
      result = asl_string_new(2);
      if (result)
      {
        v4 = result;
        snprintf(__str, 0x10uLL, "%u", *(v2 + 2));
        asl_string_append(v4, __str);
        asl_string_append_char_no_encoding(v4, 10);
        if (*(v2 + 2))
        {
          v5 = 0;
          do
          {
            asl_string_append_asl_msg(v4, *(v2[2] + 8 * v5));
            asl_string_append_char_no_encoding(v4, 10);
            ++v5;
          }

          while (v5 < *(v2 + 2));
        }

        *a2 = asl_string_length(v4);
        result = asl_string_release_return_bytes(v4);
      }
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *asl_msg_list_to_asl_string(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8) && *(a1 + 16))
  {
    v3 = asl_string_new(a2);
    if (v3)
    {
      snprintf(__str, 0x10uLL, "%u", *(a1 + 8));
      asl_string_append(v3, __str);
      asl_string_append_char_no_encoding(v3, 10);
      if (*(a1 + 8))
      {
        v4 = 0;
        do
        {
          asl_string_append_asl_msg(v3, *(*(a1 + 16) + 8 * v4));
          asl_string_append_char_no_encoding(v3, 10);
          ++v4;
        }

        while (v4 < *(a1 + 8));
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}