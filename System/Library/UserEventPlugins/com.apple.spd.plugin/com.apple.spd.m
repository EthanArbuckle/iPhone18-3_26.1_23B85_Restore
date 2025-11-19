void sub_890(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  if (qword_C780 != -1)
  {
    sub_50D0();
  }

  if (off_C778)
  {
    off_C778(a1, a2, va);
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

uint64_t sub_938()
{
  if (qword_C790 != -1)
  {
    sub_50E4();
  }

  return qword_C788;
}

void spd_dump_cached_state()
{
  *v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v0 = sub_938();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v1 = sub_938();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "\tCurrent default route reachability state:", buf, 2u);
  }

  v2 = sub_938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = "true";
    if (!qword_C798)
    {
      v3 = "false";
    }

    if (byte_C7A0)
    {
      v4 = "reachable";
    }

    else
    {
      v4 = "not reachable";
    }

    *buf = 136315394;
    *v43 = v3;
    *&v43[8] = 2080;
    *&v43[10] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "\t\tMonitoring IPv4: %s, State: %s", buf, 0x16u);
  }

  v5 = sub_938();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "true";
    if (!qword_C7A8)
    {
      v6 = "false";
    }

    if (byte_C7B0)
    {
      v7 = "reachable";
    }

    else
    {
      v7 = "not reachable";
    }

    *buf = 136315394;
    *v43 = v6;
    *&v43[8] = 2080;
    *&v43[10] = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "\t\tMonitoring IPv6: %s, State: %s", buf, 0x16u);
  }

  v8 = sub_938();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v9 = sub_938();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "\tCurrent clients spd is holding sockets for:", buf, 2u);
  }

  v10 = sub_938();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v11 = xpc_event_module_get_queue_ptr;
  v12 = qword_C7B8;
  if (qword_C7B8)
  {
    v13 = 0;
    do
    {
      if (*(v12 + 64))
      {
        ++v13;
      }

      else
      {
        v14 = sub_938();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(v12 + 24);
          if ((*(v12 + 64) & 2) != 0)
          {
            v16 = "true";
          }

          else
          {
            v16 = "false";
          }

          if ((*(v12 + 64) & 4) != 0)
          {
            v17 = "true";
          }

          else
          {
            v17 = "false";
          }

          *buf = 136315906;
          *v43 = v12 + 48;
          *&v43[8] = 1024;
          *&v43[10] = v15;
          *&v43[14] = 2080;
          *&v43[16] = v16;
          v44 = 2080;
          v45 = v17;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "\tClient %s.%d, checked in socket before: %s, wakeup allowed: %s", buf, 0x26u);
        }

        v18 = *(v12 + 16);
        if (v18)
        {
          v41 = v13;
          v19 = 0;
          while (1)
          {
            v20 = *(v18 + 30);
            if (v20 == 255)
            {
              v21 = "UNKNOWN";
            }

            else
            {
              v21 = 0;
            }

            if (v20 == 128)
            {
              v21 = "GENERIC";
            }

            if (v20 == 4)
            {
              v21 = "LOOPBACK";
            }

            if (v20 == 2)
            {
              v22 = "WiFi";
            }

            else
            {
              v22 = 0;
            }

            if (v20 == 1)
            {
              v22 = "WWAN";
            }

            if (!v20)
            {
              v22 = "LOCAL";
            }

            if (v20 <= 3)
            {
              v23 = v22;
            }

            else
            {
              v23 = v21;
            }

            v24 = *(v18 + 45);
            if (v24 == 30)
            {
              v25 = v18 + 52;
              v26 = 30;
            }

            else
            {
              if (v24 != 2)
              {
                goto LABEL_60;
              }

              v25 = v18 + 6;
              v26 = 2;
            }

            if (!inet_ntop(v26, v25, v46, 0x2Eu))
            {
LABEL_60:
              __strlcpy_chk();
            }

            v27 = sub_938();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = "ON";
              if (!v18[12])
              {
                v28 = "OFF";
              }

              *buf = 67109890;
              *v43 = v19;
              *&v43[4] = 2080;
              *&v43[6] = v46;
              *&v43[14] = 2080;
              *&v43[16] = v23;
              v44 = 2080;
              v45 = v28;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "      socket[%d]      %s : %s : %s", buf, 0x26u);
            }

            ++v19;
            v18 = *v18;
            if (!v18)
            {
              v13 = v41;
              break;
            }
          }
        }
      }

      v12 = *v12;
    }

    while (v12);
    v29 = v13 == 0;
    v11 = xpc_event_module_get_queue_ptr;
  }

  else
  {
    v30 = sub_938();
    v29 = 1;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "\tNONE", buf, 2u);
    }
  }

  v31 = sub_938();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v32 = sub_938();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "\tCurrent clients spd is notifying of wakeup:", buf, 2u);
  }

  v33 = sub_938();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v34 = sub_938();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
  if (v29)
  {
    if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "\tNONE", buf, 2u);
    }
  }

  else
  {
    if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "\tsession client(s)", buf, 2u);
    }

    for (i = v11[247]; i; i = *i)
    {
      if (*(i + 64))
      {
        v37 = sub_938();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = *(i + 6);
          *buf = 136315394;
          *v43 = i + 48;
          *&v43[8] = 1024;
          *&v43[10] = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "\t[name=%s, PID=%d]", buf, 0x12u);
        }
      }
    }
  }

  v39 = sub_938();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v40 = sub_938();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "", buf, 2u);
  }
}

void sub_112C(id a1)
{
  if (qword_C7C8)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_1350;
    v4[3] = &unk_C460;
    v4[4] = &v5;
    sub_1294(v4);
    byte_C7D0 = *(v6 + 24);
    v1 = sub_938();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      if (byte_C7D0)
      {
        v2 = "DOES";
      }

      else
      {
        v2 = "DOES NOT";
      }

      *buf = 136315138;
      v10 = v2;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Upon WiFi callback: this device %s support WoW", buf, 0xCu);
    }

    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v3 = sub_938();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_50F8();
    }
  }
}

intptr_t sub_1294(uint64_t a1)
{
  if (qword_C808 != -1)
  {
    sub_5134();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_3E38;
  block[3] = &unk_C630;
  block[4] = a1;
  CFRunLoopPerformBlock(qword_C818, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(qword_C818);
  return dispatch_semaphore_wait(qword_C810, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_1350(uint64_t a1)
{
  result = WiFiManagerClientGetWoWCapability();
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void spd_cleanup_all_client_sockets(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        spd_cleanup_client_socket(a1, v2);
        v2 = v3;
      }

      while (v3);
    }
  }
}

void spd_cleanup_client_socket(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    spd_stop_dispatch_events(a1, a2);
    if (a2[30] == 2 && byte_C7D0 == 1 && !--qword_C7D8)
    {
      v4 = sub_938();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Turning WoW OFF", v11, 2u);
      }

      sub_1294(&stru_C4A0);
    }

    v5 = *(a2 + 16);
    if (v5)
    {
      CFRelease(v5);
    }

    close(a2[18]);
    v6 = sub_938();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a2[18];
      v8 = *(a1 + 24);
      v11[0] = 67109376;
      v11[1] = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Successfully checked out socket [FD=%d] for client [PID=%d]", v11, 0xEu);
    }

    v9 = *a2;
    v10 = *(a2 + 1);
    if (*a2)
    {
      *(v9 + 8) = v10;
    }

    *v10 = v9;
    free(a2);
  }
}

uint64_t spd_stop_dispatch_events(uint64_t a1, uint64_t a2)
{
  result = 4;
  if (a1 && a2)
  {
    v5 = sub_938();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 24);
      v7 = *(a2 + 72);
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Stopping to monitor socket events for client [PID=%d] and socket [FD=%d]", v10, 0xEu);
    }

    v8 = *(a2 + 96);
    if (v8)
    {
      dispatch_source_cancel(v8);
      dispatch_release(*(a2 + 96));
      *(a2 + 96) = 0;
    }

    v9 = *(a2 + 104);
    if (v9)
    {
      dispatch_source_cancel(v9);
      dispatch_release(*(a2 + 104));
      *(a2 + 104) = 0;
    }

    if (*(a2 + 112))
    {
      spd_cancel_reachability(a2);
      CFRelease(*(a2 + 112));
      result = 0;
      *(a2 + 112) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1664(id a1)
{
  WiFiManagerClientSetWoWState();

  WiFiManagerClientSetType();
}

uint64_t spd_client_add(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pid = xpc_connection_get_pid(result);
    v3 = pid;
    v4 = &qword_C7B8;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(v4 + 6) == pid)
      {
        v5 = sub_938();
        result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v6 = "???";
          v7 = v4[4];
          if (v4[5])
          {
            v6 = v4[5];
          }

          v8 = *(v4 + 6);
          LODWORD(v21[0]) = 136315906;
          *(v21 + 4) = v6;
          WORD6(v21[0]) = 1024;
          *(v21 + 14) = v8;
          WORD1(v21[1]) = 2048;
          *(&v21[1] + 4) = v7;
          WORD6(v21[1]) = 2048;
          *(&v21[1] + 14) = v1;
          _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "existing client %s [%d], %p->%p", v21, 0x26u);
          return 0;
        }

        return result;
      }
    }

    result = malloc_type_calloc(1uLL, 0x48uLL, 0x10B004081547AA1uLL);
    if (result)
    {
      v9 = result;
      *(result + 24) = v3;
      *(result + 32) = v1;
      if (sub_19F4())
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 64) = *(v9 + 64) & 0xFB | v10;
      xpc_connection_get_audit_token();
      memset(&token, 0, sizeof(token));
      v11 = SecTaskCreateWithAuditToken(0, &token);
      v12 = v11;
      if (v11)
      {
        v13 = SecTaskCopySigningIdentifier(v11, 0);
        CFRelease(v12);
        if (v13)
        {
          Length = CFStringGetLength(v13);
          v12 = malloc_type_malloc(Length + 1, 0x21CBA50EuLL);
          if (!CFStringGetCString(v13, v12, Length + 1, 0x8000100u))
          {
            free(v12);
            v12 = 0;
          }

          CFRelease(v13);
        }

        else
        {
          v12 = 0;
        }
      }

      *(v9 + 40) = v12;
      xpc_retain(v1);
      *(v9 + 48) = 0;
      memset(v21, 0, sizeof(v21));
      if (proc_pidinfo(v3, 13, 1uLL, v21, 64) == 64)
      {
        __strlcpy_chk();
      }

      v15 = qword_C7B8;
      *v9 = qword_C7B8;
      if (v15)
      {
        *(v15 + 8) = v9;
      }

      qword_C7B8 = v9;
      *(v9 + 8) = &qword_C7B8;
      v16 = sub_938();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(v9 + 40);
        if (!v17)
        {
          v17 = "???";
        }

        v18 = *(v9 + 24);
        v19 = *(v9 + 64);
        token.val[0] = 136315650;
        if ((v19 & 4) != 0)
        {
          v20 = "true";
        }

        else
        {
          v20 = "false";
        }

        *&token.val[1] = v17;
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = v18;
        HIWORD(token.val[4]) = 2080;
        *&token.val[5] = v20;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "adding client %s [%d], wakeup allowed: %s", &token, 0x1Cu);
      }

      return 1;
    }
  }

  return result;
}

uint64_t *spd_client_find_by_pid(int a1)
{
  result = &qword_C7B8;
  do
  {
    result = *result;
  }

  while (result && *(result + 6) != a1);
  return result;
}

BOOL sub_19F4()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (xpc_get_type(v0) != &_xpc_type_BOOL)
  {
    return 0;
  }

  return xpc_BOOL_get_value(v1);
}

uint64_t spd_cleanup_client(uint64_t a1)
{
  if (!a1)
  {
    v13 = sub_938();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Request cleanup of NULL client", &v14, 2u);
    }

    return 5;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      spd_cleanup_client_socket(a1, v2);
      v2 = v3;
    }

    while (v3);
    if (*(a1 + 16))
    {
      v4 = sub_938();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_5148(a1);
      }

      return 5;
    }
  }

  v5 = sub_938();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = 134218496;
    v15 = a1;
    v16 = 1024;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "cleaned up client %p with pid %d, connection %p", &v14, 0x1Cu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    xpc_connection_cancel(v8);
    xpc_release(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    free(v9);
  }

  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1)
  {
    *(v10 + 8) = v11;
  }

  *v11 = v10;
  free(a1);
  return 0;
}

uint64_t spd_log_event(uint64_t a1, uint64_t a2)
{
  result = 4;
  if (a1 && a2)
  {
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = a1 + 48;
    }

    v6 = sub_938();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 24);
      *buf = 136315906;
      v13 = a2;
      v14 = 2080;
      v15 = a1 + 48;
      v16 = 2080;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Logging event %s for client [name: %s, bundle ID: %s, PID=%d]", buf, 0x26u);
    }

    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s.%s", a2, v5);
    if (v9)
    {
      v10 = v9;
      v11 = sub_938();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_51C8(v10);
      }

      ADClientAddValueForScalarKey();
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t spd_notify_client_sessions_of_wake(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if ((*(a1 + 64) & 4) == 0)
  {
    v4 = sub_938();
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_5300();
    return 0;
  }

  spd_log_event(a1, "com.apple.spd.app_resume");
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "msg_type", 50);
    xpc_dictionary_set_int64(v7, "pid", v3);
    v8 = qword_C7B8;
    if (!qword_C7B8)
    {
      goto LABEL_19;
    }

    v9 = 0;
    do
    {
      while ((*(v8 + 64) & 1) != 0)
      {
        v10 = sub_938();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(v8 + 40);
          if (!v11)
          {
            v11 = "???";
          }

          v12 = *(v8 + 24);
          v13 = *(a1 + 40);
          if (!v13)
          {
            v13 = "???";
          }

          v14 = *(a1 + 24);
          *buf = 136315906;
          v17 = v11;
          v18 = 1024;
          v19 = v12;
          v20 = 2080;
          v21 = v13;
          v22 = 1024;
          v23 = v14;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Notifying %s [%d] to wake up %s [%d]", buf, 0x22u);
        }

        xpc_connection_send_message(*(v8 + 32), v7);
        v8 = *v8;
        v9 = 1;
        if (!v8)
        {
          goto LABEL_21;
        }
      }

      v8 = *v8;
    }

    while (v8);
    if ((v9 & 1) == 0)
    {
LABEL_19:
      v15 = sub_938();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_5270(a1, v2);
      }
    }

LABEL_21:
    xpc_release(v7);
    return 0;
  }

  return 6;
}

uint64_t spd_start_dispatch_events(_DWORD *a1, uint64_t a2)
{
  v2 = 4;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = sub_938();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = a1[6];
    v7 = *(a2 + 72);
    *buf = 67109376;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Starting to monitor socket events for client [PID=%d] and socket [FD=%d]", buf, 0xEu);
  }

  if (*(a2 + 96))
  {
    v8 = sub_938();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_537C(a1);
    }
  }

  else
  {
    v9 = dispatch_source_create(&_dispatch_source_type_read, *(a2 + 72), 0, qword_C7C0);
    *(a2 + 96) = v9;
    if (v9)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_2220;
      handler[3] = &unk_C4C0;
      handler[4] = a1;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(a2 + 96));
      if (spd_setup_reachability(a1, a2))
      {
        v10 = sub_938();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_53F0(a1);
        }
      }

      v2 = 0;
      goto LABEL_14;
    }

    v13 = sub_938();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_5464(a1);
    }
  }

  v2 = 5;
LABEL_14:
  if (*(a2 + 104))
  {
    v11 = sub_938();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_54D8(a1);
    }
  }

  else
  {
    v12 = dispatch_source_create(&_dispatch_source_type_sock, *(a2 + 72), 0x100uLL, qword_C7C0);
    *(a2 + 104) = v12;
    if (v12)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 0x40000000;
      v16[2] = sub_2578;
      v16[3] = &unk_C4E0;
      v16[4] = a1;
      v16[5] = a2;
      dispatch_source_set_event_handler(v12, v16);
      dispatch_resume(*(a2 + 104));
      return 0;
    }

    else
    {
      v14 = sub_938();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_554C(a1);
      }
    }
  }

  return v2;
}

uint64_t sub_2220(uint64_t a1)
{
  v2 = sub_938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 24);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Data available for client [PID=%d], waking...", v5, 8u);
  }

  spd_notify_client_sessions_of_wake(*(a1 + 32));
  return spd_stop_all_dispatch_events(*(a1 + 32));
}

uint64_t spd_stop_all_dispatch_events(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_stop_dispatch_events(a1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_setup_reachability(void *a1, uint64_t a2)
{
  v15.version = 0;
  memset(&v15.retain, 0, 24);
  v15.info = a1;
  if (!a1 || !a2)
  {
    v7 = sub_938();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v11 = *(a2 + 72);
      }

      else
      {
        v11 = -1;
      }

      *buf = 134218240;
      v17 = a1;
      v18 = 1024;
      v19 = v11;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "NULL object(s) passed in for setting up reachability client [ADDR=%p] socket [FD=%d]", buf, 0x12u);
    }

    return 5;
  }

  v4 = *(a2 + 120);
  if (v4 && v4 != 255)
  {
    if (*(a2 + 112))
    {
      v8 = sub_938();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_55C0(a1);
      }
    }

    else
    {
      v9 = SCNetworkReachabilityCreateWithAddressPair(kCFAllocatorDefault, (a2 + 16), (a2 + 44));
      if (v9)
      {
        v10 = v9;
        if (SCNetworkReachabilitySetCallback(v9, spd_reachability_callback, &v15))
        {
          if (SCNetworkReachabilitySetDispatchQueue(v10, qword_C7C0))
          {
            result = 0;
            *(a2 + 112) = v10;
            return result;
          }

          v14 = sub_938();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_564C(a1);
          }
        }

        else
        {
          v13 = sub_938();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_56C0(a1);
          }
        }

        if (!*(a2 + 112))
        {
          CFRelease(v10);
        }
      }

      else
      {
        v12 = sub_938();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_5734(a1);
        }
      }
    }

    return 5;
  }

  v5 = sub_938();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Socket isn't AF_NET or AF_NET6 so we can't setup reachability", buf, 2u);
    return 0;
  }

  return result;
}

void sub_2578(uint64_t a1)
{
  v2 = sub_938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 24);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "TCP KeepAlive received for client [PID=%d]", v5, 8u);
  }

  spd_log_event(*(a1 + 32), "com.apple.spd.tcp_keepalive");
  v4 = *(*(a1 + 40) + 104);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(*(a1 + 40) + 104));
    *(*(a1 + 40) + 104) = 0;
  }
}

uint64_t spd_cancel_reachability(uint64_t a1)
{
  if (a1)
  {
    if (SCNetworkReachabilitySetDispatchQueue(*(a1 + 112), 0) == 1)
    {
      return 0;
    }

    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_57A8(a1);
    }
  }

  else
  {
    v3 = sub_938();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_581C();
    }
  }

  return 5;
}

uint64_t spd_start_all_dispatch_events(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_start_dispatch_events(a1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_vet_socket(uint64_t a1)
{
  v39 = 0;
  *cStr = 0;
  v47 = 0;
  theString1 = 0;
  if (!a1)
  {
    return 4;
  }

  *v37 = 0;
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  v36 = 0;
  v3[12] = 255;
  v38 = 28;
  if (getsockname(v2, (v3 - 14), &v38))
  {
    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5858(v3);
    }

    return 46;
  }

  v38 = 28;
  if (getpeername(*(a1 + 72), (a1 + 44), &v38))
  {
    v6 = sub_938();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_58E4(v3);
    }

    return 46;
  }

  v8 = *(a1 + 17);
  if (v8 != 30)
  {
    if (v8 == 2 && *(a1 + 45) == 2)
    {
      goto LABEL_14;
    }

LABEL_21:
    v5 = 0;
    *(a1 + 120) = 0;
    return v5;
  }

  if (*(a1 + 45) != 30)
  {
    goto LABEL_21;
  }

LABEL_14:
  v37[1] = 4;
  if (v8 == 30)
  {
    v9 = 41;
  }

  else
  {
    v9 = 0;
  }

  if (getsockopt(*v3, v9, 9696, &v39, &v37[1]))
  {
    v10 = sub_938();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_5970(v3);
    }

    return 46;
  }

  if (!v39 || !if_indextoname(v39, cStr))
  {
    v17 = sub_938();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_5A54(v3);
    }

    return 46;
  }

  v11 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x600u);
  if (v11)
  {
    v12 = v11;
    if (CFStringCompare(@"lo0", v11, 0) == kCFCompareEqualTo)
    {
      v5 = 0;
      *(a1 + 120) = 4;
      goto LABEL_59;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 0x40000000;
    v30[2] = sub_2C5C;
    v30[3] = &unk_C508;
    v30[4] = &v31;
    v30[5] = v12;
    sub_1294(v30);
    v13 = v32[3];
    if (v13)
    {
      if (byte_C7D0 == 1 && !qword_C7D8++)
      {
        v15 = sub_938();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Turning WoW ON", buf, 2u);
        }

        sub_1294(&stru_C548);
        v13 = v32[3];
      }

      v5 = 0;
      *(a1 + 128) = v13;
      v16 = 2;
      goto LABEL_33;
    }

    PacketContextActiveByServiceType = _CTServerConnectionGetPacketContextActiveByServiceType();
    v20 = PacketContextActiveByServiceType;
    v21 = HIDWORD(PacketContextActiveByServiceType);
    if (HIDWORD(PacketContextActiveByServiceType) || (v37[0] & 0x80000000) != 0)
    {
      v25 = sub_938();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 67109632;
      v41 = v21;
      v42 = 1024;
      v43 = v20;
      v44 = 1024;
      v45 = v37[0];
      v26 = "CT acquire packet context failed, error=%d domain=%d pdp=%d";
    }

    else
    {
      v22 = _CTServerConnectionCopyPacketContextInterfaceName();
      v23 = v22;
      v24 = HIDWORD(v22);
      if (HIDWORD(v22) || !theString1)
      {
        v25 = sub_938();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        *buf = 67109632;
        v41 = v24;
        v42 = 1024;
        v43 = v23;
        v44 = 1024;
        v45 = v37[0];
        v26 = "CT acquire interface failed, error=%d domain=%d pdp=%d";
      }

      else
      {
        if (CFStringCompare(theString1, v12, 0))
        {
          if (*(a1 + 120) == 255)
          {
            v5 = 0;
            v16 = 128;
LABEL_33:
            *(a1 + 120) = v16;
LABEL_58:
            _Block_object_dispose(&v31, 8);
LABEL_59:
            CFRelease(v12);
            if (theString1)
            {
              CFRelease(theString1);
            }

            return v5;
          }

          goto LABEL_57;
        }

        v27 = _CTServerConnectionPacketContextAssertionCreate();
        v28 = v27;
        v29 = HIDWORD(v27);
        if (!HIDWORD(v27) && *(a1 + 128))
        {
          v5 = 0;
          v16 = 1;
          goto LABEL_33;
        }

        v25 = sub_938();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_57:
          v5 = 5;
          goto LABEL_58;
        }

        *buf = 67109632;
        v41 = v29;
        v42 = 1024;
        v43 = v28;
        v44 = 1024;
        v45 = v37[0];
        v26 = "CT assertion failed, error=%d domain=%d pdp=%d";
      }
    }

    _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x14u);
    goto LABEL_57;
  }

  v18 = sub_938();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_59E0();
  }

  return 6;
}

CFTypeRef sub_2C5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = WiFiManagerClientGetDevice();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_2CC4(id a1)
{
  WiFiManagerClientSetWoWState();

  WiFiManagerClientSetType();
}

void spd_reachability_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a3 + 24);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Reachability notifications fired for client [PID=%d]", v7, 8u);
    }

    spd_notify_client_sessions_of_wake(a3);
    for (i = *(a3 + 16); i; i = *i)
    {
      spd_stop_dispatch_events(a3, i);
    }
  }
}

uint64_t spd_checkin_socket(_xpc_connection_s *a1, int a2, unsigned __int8 *a3)
{
  v31 = 0;
  pid = xpc_connection_get_pid(a1);
  v6 = pid;
  memset(&v30, 0, sizeof(v30));
  if (a3)
  {
    v7 = &qword_C7B8;
    do
    {
      v7 = *v7;
      if (!v7)
      {
        return 4;
      }
    }

    while (*(v7 + 6) != pid);
    v8 = v7 + 2;
    v9 = v7 + 2;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (!uuid_compare(v9 + 76, a3))
      {
        return 0;
      }
    }

    if (a2 == -1)
    {
      v14 = sub_938();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_5C98(v7 + 6);
      }

      return 5;
    }

    if (fstat(a2, &v30))
    {
      v13 = sub_938();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_5AC4(v7 + 6);
      }

      return 5;
    }

    if ((v30.st_mode & 0xF000) != 0xC000)
    {
      v20 = sub_938();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(v7 + 6);
        *buf = 67109120;
        v33 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Descriptor is not a socket, client [PID=%d]", buf, 8u);
      }

      return 5;
    }

    uuid_clear(a3);
    v15 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E004033DDB314uLL);
    if (v15)
    {
      v16 = v15;
      v15[18] = a2;
      v17 = v15 + 18;
      v18 = spd_vet_socket(v15);
      if (v18)
      {
        v10 = v18;
        if (v18 != 46)
        {
          v23 = sub_938();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_5C28();
            if (!v10)
            {
              return v10;
            }
          }

          else if (!v10)
          {
            return v10;
          }

          goto LABEL_40;
        }

        v19 = sub_938();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_5B34();
        }
      }

      else
      {
        if (!*(v16 + 120))
        {
          v24 = sub_938();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v33 = v6;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Client process [PID=%d] attempting to checkin non-AF_NET[6?] socket", buf, 8u);
          }

          v10 = 4;
          goto LABEL_40;
        }

        if (!setsockopt(*v17, 0xFFFF, 4352, &v31, 4u))
        {
          uuid_generate_random((v16 + 76));
          uuid_copy(a3, (v16 + 76));
          v25 = *v8;
          *v16 = *v8;
          if (v25)
          {
            *(v25 + 8) = v16;
          }

          v7[2] = v16;
          *(v16 + 8) = v8;
          *(v7 + 64) |= 2u;
          v26 = sub_938();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = *v17;
            v28 = *(v7 + 6);
            v29 = v7[5];
            if (!v29)
            {
              v29 = "<NULL>";
            }

            *buf = 67109634;
            v33 = v27;
            v34 = 1024;
            v35 = v28;
            v36 = 2080;
            v37 = v29;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Successfully checked in socket [FD=%d] for client [PID=%d] with BundleID: %s", buf, 0x18u);
          }

          return 0;
        }

        v22 = sub_938();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_5BA4(v17);
        }
      }

      v10 = 46;
LABEL_40:
      close(a2);
      free(v16);
      return v10;
    }

    close(a2);
    return 6;
  }

  else
  {
    v11 = sub_938();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_5D08();
    }

    return 4;
  }
}

uint64_t spd_checkout_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 6) == pid)
    {
      v5 = v4 + 2;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        if (!uuid_compare(v5 + 76, a2))
        {
          spd_cleanup_client_socket(v4, v5);
          return 0;
        }
      }

      return 29;
    }
  }

  return 29;
}

uint64_t spd_checkout_all_sockets(_xpc_connection_s *a1)
{
  pid = xpc_connection_get_pid(a1);
  v2 = &qword_C7B8;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 29;
    }
  }

  while (*(v2 + 6) != pid);
  v3 = v2[2];
  if (v3)
  {
    do
    {
      v4 = *v3;
      spd_cleanup_client_socket(v2, v3);
      v3 = v4;
    }

    while (v4);
  }

  return 5;
}

uint64_t spd_start_monitoring_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      return 29;
    }
  }

  while (*(v4 + 6) != pid);
  v5 = (v4 + 2);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      return 4;
    }
  }

  while (uuid_compare((v5 + 76), a2));

  return spd_start_dispatch_events(v4, v5);
}

uint64_t spd_stop_monitoring_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      return 29;
    }
  }

  while (*(v4 + 6) != pid);
  v5 = (v4 + 2);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      return 4;
    }
  }

  while (uuid_compare((v5 + 76), a2));

  return spd_stop_dispatch_events(v4, v5);
}

uint64_t spd_start_monitoring_all_sockets_for_pid(_xpc_connection_s *a1, int a2)
{
  if (xpc_connection_get_pid(a1) == a2 || sub_19F4())
  {

    return spd_start_monitoring_all_sockets_for_pid_priv(a2);
  }

  else
  {
    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5D78();
    }

    return 5;
  }
}

uint64_t spd_start_monitoring_all_sockets_for_pid_priv(int a1)
{
  v1 = &qword_C7B8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 29;
    }
  }

  while (*(v1 + 6) != a1);
  v2 = v1[2];
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_start_dispatch_events(v1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_stop_monitoring_all_sockets_for_pid(_xpc_connection_s *a1, int a2)
{
  if (xpc_connection_get_pid(a1) == a2 || sub_19F4())
  {

    return spd_stop_monitoring_all_sockets_for_pid_priv(a2);
  }

  else
  {
    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5DF8();
    }

    return 5;
  }
}

uint64_t spd_stop_monitoring_all_sockets_for_pid_priv(int a1)
{
  v1 = &qword_C7B8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 29;
    }
  }

  while (*(v1 + 6) != a1);
  v2 = v1[2];
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_stop_dispatch_events(v1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

void init_spd_plugin(uint64_t a1)
{
  v2 = sub_938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "init_spd_plugin start", buf, 2u);
  }

  if (a1 && !qword_C7E8)
  {
    v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    qword_C7E8 = v3;
    if (v3)
    {
      *v3 = a1;
      xpc_event_provider_create();
    }

    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_5EB4();
    }
  }
}

void sub_3768(int64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_938();
  v7 = v6;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_60F8();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v20 = 134218496;
      v21 = a1;
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v25 = a3;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "spd_event_callback unhandled action: %ld, token: %llu, event: %p", &v20, 0x20u);
    }

    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_5EF0();
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  int64 = xpc_dictionary_get_int64(a3, "pid");
  v9 = xpc_dictionary_get_int64(a3, "msg_type");
  v10 = sub_938();
  v11 = v10;
  if (v9 != 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_5F74();
    }

    return;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v20 = 134218240;
    v21 = int64;
    v22 = 2048;
    v23 = a2;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "ADD event from pid %lld, spd_msg_type_init, token %llu", &v20, 0x16u);
  }

  if (qword_C7C0)
  {
    v12 = qword_C820;
    if (qword_C820)
    {
      goto LABEL_23;
    }

    v13 = xpc_connection_create(0, qword_C7C0);
    qword_C820 = v13;
    if (v13)
    {
      xpc_connection_set_event_handler(v13, &stru_C670);
      xpc_connection_resume(qword_C820);
      v12 = qword_C820;
      goto LABEL_23;
    }

    v14 = sub_938();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_5FF4();
    }
  }

  v12 = 0;
LABEL_23:
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v15;
  if (v15 && v12)
  {
    xpc_dictionary_set_connection(v15, "connection", v12);
    v17 = sub_938();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_6030();
    }

    v18 = *(qword_C7E8 + 8);
    xpc_event_provider_token_fire();
  }

  v19 = sub_938();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_60BC();
    if (!v16)
    {
      return;
    }
  }

  else if (!v16)
  {
    return;
  }

  xpc_release(v16);
}

uint64_t spd_init_state(uint64_t a1)
{
  qword_C7C0 = a1;
  if (!a1)
  {
    v7 = sub_938();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_62A8();
    }

    return 0;
  }

  qword_C7E0 = _CTServerConnectionCreateWithIdentifier();
  if (!qword_C7E0)
  {
    v8 = sub_938();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_626C();
    }

    return 0;
  }

  qword_C7C8 = WiFiManagerClientCreate();
  if (!qword_C7C8)
  {
    v9 = sub_938();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_6230();
    }

    return 0;
  }

  byte_C7D0 = WiFiManagerClientGetWoWCapability() != 0;
  v1 = sub_938();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    if (byte_C7D0)
    {
      v2 = "DOES";
    }

    else
    {
      v2 = "DOES NOT";
    }

    *&v14.sa_len = 136315138;
    *&v14.sa_data[2] = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "On launch: this device %s support WoW", &v14.sa_len, 0xCu);
  }

  if (byte_C7D0 == 1)
  {
    v3 = sub_938();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *&v14.sa_len = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Setting initial WoW state to OFF", &v14.sa_len, 2u);
    }

    WiFiManagerClientSetWoWState();
    WiFiManagerClientSetType();
  }

  *&v14.sa_len = _NSConcreteStackBlock;
  *&v14.sa_data[6] = 0x40000000;
  v15 = sub_4988;
  v16 = &unk_C6B8;
  v17 = qword_C7C8;
  if (qword_C828 != -1)
  {
    dispatch_once(&qword_C828, &v14);
  }

  if (!qword_C818)
  {
    v10 = sub_938();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_61F4();
    }

    return 0;
  }

  v4 = qword_C7F0;
  if (qword_C7F0 || (v4 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, qword_C7C0), (qword_C7F0 = v4) != 0))
  {
    dispatch_source_set_event_handler(v4, &stru_C588);
    dispatch_resume(qword_C7F0);
    signal(29, (&dword_0 + 1));
  }

  else
  {
    v12 = sub_938();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_617C();
    }
  }

  *&v14.sa_data[6] = 0;
  LODWORD(v16) = 0;
  v15 = 0;
  *&v14.sa_len = 528;
  qword_C798 = sub_4B2C(&v14);
  *&v14.sa_data[6] = 0;
  v15 = 0;
  LODWORD(v16) = 0;
  *&v14.sa_len = 7708;
  qword_C7A8 = sub_4B2C(&v14);
  sub_4CC4(1);
  v5 = qword_C7F8;
  if (qword_C7F8 || (v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, qword_C7C0), (qword_C7F8 = v5) != 0))
  {
    dispatch_source_set_event_handler(v5, &stru_C5C8);
    dispatch_resume(qword_C7F8);
    v6 = 1;
    signal(31, (&dword_0 + 1));
  }

  else
  {
    v13 = sub_938();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_61B8();
    }

    return 1;
  }

  return v6;
}

intptr_t sub_3E38(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = qword_C810;

  return dispatch_semaphore_signal(v1);
}

void sub_3E74(id a1, void *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_connection)
  {
    v3 = xpc_copy_description(a2);
    v4 = sub_938();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_62E4();
      if (!v3)
      {
LABEL_5:
        if (qword_C820)
        {
          xpc_connection_cancel(qword_C820);
          xpc_release(qword_C820);
          qword_C820 = 0;
        }

        return;
      }
    }

    else if (!v3)
    {
      goto LABEL_5;
    }

    free(v3);
    goto LABEL_5;
  }

  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x2000000000;
  v14[2] = a2;
  pid = xpc_connection_get_pid(a2);
  v6 = spd_client_add(*(v14[0] + 24));
  v7 = sub_938();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(v14[0] + 24);
      *buf = 134218496;
      v16 = qword_C820;
      v17 = 2048;
      v18 = v9;
      v19 = 1024;
      v20 = pid;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "listener %p got peer %p (pid %d)", buf, 0x1Cu);
    }

    xpc_connection_set_target_queue(*(v14[0] + 24), qword_C7C0);
    v10 = *(v14[0] + 24);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_40AC;
    v11[3] = &unk_C698;
    v11[4] = &v13;
    v12 = pid;
    xpc_connection_set_event_handler(v10, v11);
    xpc_connection_resume(*(v14[0] + 24));
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_6368(v14);
    }

    xpc_connection_cancel(*(v14[0] + 24));
  }

  _Block_object_dispose(&v13, 8);
}

void sub_40AC(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  if (type == &_xpc_type_dictionary)
  {
    if (!v6)
    {
      return;
    }

    v8 = xpc_get_type(*(v5 + 24));
    if (!object || v8 != &_xpc_type_connection || xpc_get_type(object) != &_xpc_type_dictionary)
    {
      return;
    }

    reply = xpc_dictionary_create_reply(object);
    pid = xpc_connection_get_pid(v6);
    v11 = &qword_C7B8;
    do
    {
      v11 = *v11;
    }

    while (v11 && *(v11 + 6) != pid);
    uuid = xpc_dictionary_get_uuid(object, "uuid");
    int64 = xpc_dictionary_get_int64(object, "pid");
    v14 = xpc_dictionary_get_BOOL(object, "legacy");
    v15 = xpc_dictionary_get_BOOL(object, "modern");
    if (!v11)
    {
      v29 = sub_938();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_6584(v6);
      }

      xpc_connection_cancel(v6);
      return;
    }

    v16 = v15;
    v17 = v11[8] & 4;
    if ((v11[8] & 4) == 0 && v14)
    {
      v18 = sub_938();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v11[5];
        if (!v19)
        {
          v19 = "???";
        }

        *v50 = 136315138;
        *&v50[4] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "allowing wakeup for %s, was linked against old SDK", v50, 0xCu);
      }

      *(v11 + 64) |= 4u;
      v17 = 4;
    }

    if (v17 != 0 && v16)
    {
      v20 = sub_938();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v11[5];
        if (!v21)
        {
          v21 = "???";
        }

        *v50 = 136315138;
        *&v50[4] = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "blocking %s linked against modern SDK, use Local Push Connectivity instead", v50, 0xCu);
      }

      *(v11 + 64) &= ~4u;
    }

    v22 = xpc_dictionary_get_int64(object, "msg_type");
    v23 = sub_938();
    v24 = v23;
    if (v22 <= 29)
    {
      if (v22 <= 19)
      {
        if (v22 == 10)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v38 = v11[5];
            if (!v38)
            {
              v38 = "???";
            }

            v39 = *(v11 + 6);
            *v50 = 136315394;
            *&v50[4] = v38;
            *&v50[12] = 1024;
            *&v50[14] = v39;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_notification_register", v50, 0x12u);
          }

          v32 = 0;
          v33 = *(v11 + 64) | 1;
        }

        else
        {
          if (v22 != 11)
          {
            goto LABEL_98;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v30 = v11[5];
            if (!v30)
            {
              v30 = "???";
            }

            v31 = *(v11 + 6);
            *v50 = 136315394;
            *&v50[4] = v30;
            *&v50[12] = 1024;
            *&v50[14] = v31;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_notification_deregister", v50, 0x12u);
          }

          v32 = 0;
          v33 = v11[8] & 0xFE;
        }

        *(v11 + 64) = v33;
        goto LABEL_96;
      }

      if (v22 == 20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v40 = v11[5];
          if (!v40)
          {
            v40 = "???";
          }

          v41 = *(v11 + 6);
          *v50 = 136315650;
          *&v50[4] = v40;
          *&v50[12] = 1024;
          *&v50[14] = v41;
          v51 = 1024;
          v52 = int64;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_pid: %d", v50, 0x18u);
        }

        started = spd_start_monitoring_all_sockets_for_pid(v6, int64);
        goto LABEL_95;
      }

      if (v22 == 21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v34 = v11[5];
          if (!v34)
          {
            v34 = "???";
          }

          v35 = *(v11 + 6);
          *v50 = 136315650;
          *&v50[4] = v34;
          *&v50[12] = 1024;
          *&v50[14] = v35;
          v51 = 1024;
          v52 = int64;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_pid_stop: %d", v50, 0x18u);
        }

        started = spd_stop_monitoring_all_sockets_for_pid(v6, int64);
        goto LABEL_95;
      }
    }

    else if (v22 <= 39)
    {
      if (v22 == 30)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v45 = "???";
          if (v11[5])
          {
            v45 = v11[5];
          }

          v46 = *(v11 + 6);
          *v50 = 136315906;
          *&v50[4] = v45;
          *&v50[12] = 1024;
          *&v50[14] = v46;
          v51 = 1040;
          v52 = 16;
          v53 = 2096;
          v54 = uuid;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor: %{uuid_t}.16P", v50, 0x22u);
        }

        started = spd_start_monitoring_socket(v6, uuid);
        goto LABEL_95;
      }

      if (v22 == 31)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v36 = "???";
          if (v11[5])
          {
            v36 = v11[5];
          }

          v37 = *(v11 + 6);
          *v50 = 136315906;
          *&v50[4] = v36;
          *&v50[12] = 1024;
          *&v50[14] = v37;
          v51 = 1040;
          v52 = 16;
          v53 = 2096;
          v54 = uuid;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_stop: %{uuid_t}.16P", v50, 0x22u);
        }

        started = spd_stop_monitoring_socket(v6, uuid);
        goto LABEL_95;
      }
    }

    else
    {
      switch(v22)
      {
        case '(':
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v42 = v11[5];
            if (!v42)
            {
              v42 = "???";
            }

            v43 = *(v11 + 6);
            *v50 = 136315394;
            *&v50[4] = v42;
            *&v50[12] = 1024;
            *&v50[14] = v43;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkin", v50, 0x12u);
          }

          if ((v11[8] & 4) != 0)
          {
            *v50 = 0;
            *&v50[8] = 0;
            if (uuid && !uuid_is_null(uuid))
            {
              uuid_copy(v50, uuid);
            }

            else
            {
              uuid_clear(v50);
            }

            v49 = xpc_dictionary_dup_fd(object, "socket");
            v32 = spd_checkin_socket(v6, v49, v50);
            if (reply)
            {
              xpc_dictionary_set_uuid(reply, "uuid", v50);
            }
          }

          else
          {
            v44 = sub_938();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_6468(v6);
            }

            v32 = 33;
          }

          goto LABEL_96;
        case ')':
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v47 = "???";
            if (v11[5])
            {
              v47 = v11[5];
            }

            v48 = *(v11 + 6);
            *v50 = 136315906;
            *&v50[4] = v47;
            *&v50[12] = 1024;
            *&v50[14] = v48;
            v51 = 1040;
            v52 = 16;
            v53 = 2096;
            v54 = uuid;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkout: %{uuid_t}.16P", v50, 0x22u);
          }

          started = spd_checkout_socket(v6, uuid);
          goto LABEL_95;
        case '*':
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v25 = v11[5];
            if (!v25)
            {
              v25 = "???";
            }

            v26 = *(v11 + 6);
            *v50 = 136315394;
            *&v50[4] = v25;
            *&v50[12] = 1024;
            *&v50[14] = v26;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkout_all", v50, 0x12u);
          }

          started = spd_checkout_all_sockets(v6);
LABEL_95:
          v32 = started;
LABEL_96:
          if (reply)
          {
            xpc_dictionary_set_int64(reply, "result", v32);
            xpc_connection_send_message(v6, reply);
            xpc_release(reply);
          }

          return;
      }
    }

LABEL_98:
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_64E8(v11);
    }

    v32 = 5;
    goto LABEL_96;
  }

  if (v6)
  {
    v7 = &qword_C7B8;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (*(v7 + 6) == *(a1 + 40))
      {
        spd_cleanup_client(v7);
        goto LABEL_39;
      }
    }

    v28 = sub_938();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_63E8(a1 + 32);
    }

LABEL_39:
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

intptr_t sub_4988(uint64_t a1)
{
  v3 = 0;
  memset(&v4, 0, sizeof(v4));
  qword_C830 = dispatch_semaphore_create(0);
  pthread_attr_init(&v4);
  pthread_attr_setdetachstate(&v4, 2);
  pthread_create(&v3, &v4, sub_4A44, *(a1 + 32));
  pthread_attr_destroy(&v4);
  return dispatch_semaphore_wait(qword_C830, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_4A44()
{
  Current = CFRunLoopGetCurrent();
  v1 = sub_938();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_6604();
  }

  qword_C818 = Current;
  dispatch_semaphore_signal(qword_C830);
  WiFiManagerClientRegisterDeviceAttachmentCallback();
  WiFiManagerClientScheduleWithRunLoop();
  v2 = sub_938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_66E0();
  }

  CFRunLoopRun();
  v3 = sub_938();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_6778();
  }

  return 0;
}

const __SCNetworkReachability *sub_4B2C(sockaddr *address)
{
  if (!address || ((p_sa_family = &address->sa_family, v2 = address->sa_family, v2 != 2) ? (v4 = v2 == 30) : (v4 = 1), !v4))
  {
    v8 = sub_938();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (address)
      {
        sa_family = address->sa_family;
      }

      else
      {
        sa_family = 0;
      }

      v13[0] = 67109120;
      v13[1] = sa_family;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Invalid sockaddr or address family %d", v13, 8u);
    }

    return 0;
  }

  v5 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, address);
  if (!v5)
  {
    v10 = sub_938();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_68F8(&address->sa_family);
    }

    return 0;
  }

  v6 = v5;
  if (!SCNetworkReachabilitySetCallback(v5, sub_4EC8, 0))
  {
    v11 = sub_938();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_6884(p_sa_family);
    }

    goto LABEL_19;
  }

  if (!SCNetworkReachabilitySetDispatchQueue(v6, qword_C7C0))
  {
    v7 = sub_938();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_6810(p_sa_family);
    }

LABEL_19:
    CFRelease(v6);
    return 0;
  }

  return v6;
}

void sub_4CC4(char a1)
{
  v2 = byte_C7A0;
  v3 = byte_C7B0;
  flags = 0;
  if (qword_C798 && SCNetworkReachabilityGetFlags(qword_C798, &flags))
  {
    byte_C7A0 = (flags & 2) != 0;
    v4 = ((flags >> 1) & 1) != v2;
  }

  else
  {
    v4 = 0;
  }

  if (qword_C7A8 && SCNetworkReachabilityGetFlags(qword_C7A8, &flags))
  {
    byte_C7B0 = (flags & 2) != 0;
    v4 |= ((flags >> 1) & 1) != v3;
  }

  v5 = sub_938();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "not reachable";
    if (v2)
    {
      v7 = "reachable";
    }

    else
    {
      v7 = "not reachable";
    }

    if (byte_C7A0)
    {
      v8 = "reachable";
    }

    else
    {
      v8 = "not reachable";
    }

    *buf = 136315906;
    v14 = v7;
    if (v3)
    {
      v9 = "reachable";
    }

    else
    {
      v9 = "not reachable";
    }

    v15 = 2080;
    v16 = v8;
    if (byte_C7B0)
    {
      v6 = "reachable";
    }

    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "IPv4: %s->%s, IPv6: %s->%s", buf, 0x2Au);
  }

  if ((v4 & 1) != 0 && (a1 & 1) == 0 && ((byte_C7A0 & 1) != 0 || byte_C7B0 == 1))
  {
    v10 = sub_938();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Transitioning from Not Reachable -> Reachable. Waking up all VoIP clients", buf, 2u);
    }

    for (i = qword_C7B8; i; i = *i)
    {
      if ((*(i + 64) & 3) == 2)
      {
        spd_notify_client_sessions_of_wake(i);
      }
    }
  }
}

void sub_4EC8()
{
  if (!dword_C838++)
  {
    v2 = dispatch_time(0, 300000000);
    v3 = qword_C7C0;

    dispatch_after(v2, v3, &stru_C6F8);
  }
}

void sub_4F24(id a1)
{
  v1 = sub_938();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2[0] = 67109120;
    v2[1] = dword_C838;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Accumulating %d change(s)", v2, 8u);
  }

  dword_C838 = 0;
  sub_4CC4(0);
}

uint64_t sub_5080@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 24);
  return result;
}

void sub_50B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void sub_50F8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5148(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_51C8(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x600u);
  sub_4FF8();
  sub_5068();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x1Cu);
}

void sub_5270(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  *(a1 + 40);
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_5300()
{
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_537C(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  v2 = *(v1 + 72);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_53F0(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  v2 = *v1;
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_5464(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  v2 = *v1;
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_54D8(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  v2 = *(v1 + 72);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_554C(uint64_t a1)
{
  sub_5080(a1, __stack_chk_guard);
  v2 = *v1;
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_55C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = __error();
  strerror(*v2);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_564C(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_56C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_5734(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_57A8(uint64_t a1)
{
  v1 = *(a1 + 72);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_581C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5858(unsigned int *a1)
{
  v1 = *a1;
  v2 = __error();
  strerror(*v2);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_58E4(unsigned int *a1)
{
  v1 = *a1;
  v2 = __error();
  strerror(*v2);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_5970(unsigned int *a1)
{
  sub_50A4(a1);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_5A54(unsigned int *a1)
{
  sub_50A4(a1);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_5AC4(unsigned int *a1)
{
  sub_50A4(a1);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_5B34()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5BA4(int *a1)
{
  v6 = *a1;
  sub_4FD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_5C28()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5C98(unsigned int *a1)
{
  sub_50A4(a1);
  sub_5028();
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_5D08()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5D78()
{
  sub_5074();
  sub_508C();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_5DF8()
{
  sub_5074();
  sub_508C();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_5E78()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5EB4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5EF0()
{
  LODWORD(v3) = 136315906;
  sub_4FF8();
  sub_5014();
  WORD2(v6) = v0;
  HIWORD(v6) = v1;
  sub_50B0(&dword_0, v1, v2, "%s:%d ADD event: %p, token %lld", v3, v4, v5, v6);
}

void sub_5FF4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6030()
{
  v1[0] = 136315394;
  sub_4FF8();
  *(&v1[3] + 2) = 1903;
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s:%d xpc_event_provider_token_fire", v1, 0x12u);
}

void sub_60BC()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_60F8()
{
  LODWORD(v3) = 136315906;
  sub_4FF8();
  sub_5014();
  WORD2(v6) = v0;
  HIWORD(v6) = v1;
  sub_50B0(&dword_0, v1, v2, "%s:%d REMOVE event: %p, token %lld", v3, v4, v5, v6);
}

void sub_617C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_61B8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_61F4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6230()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_626C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_62A8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6368(uint64_t a1)
{
  v1 = *(*a1 + 24);
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_63E8(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 24);
  sub_5008();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_6468(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_5074();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_64E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_6584(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_5074();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_6604()
{
  pthread_self();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x3Au);
}

void sub_66E0()
{
  pthread_self();
  sub_4FF8();
  sub_5014();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
}

void sub_6778()
{
  pthread_self();
  sub_4FF8();
  sub_5014();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
}

void sub_6810(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_6884(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_68F8(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_5028();
  sub_5008();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void xpc_event_module_get_queue()
{
    ;
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}