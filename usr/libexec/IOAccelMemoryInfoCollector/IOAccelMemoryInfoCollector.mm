void start()
{
  mach_service = xpc_connection_create_mach_service("com.apple.gpumemd.client", &_dispatch_main_q, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100004198);
  xpc_connection_resume(mach_service);
  v1 = xpc_connection_create_mach_service("com.apple.gpumemd.source", &_dispatch_main_q, 1uLL);
  xpc_connection_set_event_handler(v1, &stru_1000041D8);
  xpc_connection_resume(v1);
  dispatch_main();
}

void sub_100000888(id a1, void *a2)
{
  sub_100000A24("client listener event handler called", a2);
  if (xpc_get_type(a2) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    syslog(5, "client_listener error: %s", string);
    return;
  }

  xpc_connection_get_audit_token();
  token = handler;
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (v3)
  {
    v4 = v3;
    *token.val = 0;
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.ioaccelmemoryinfo", &token);
    if (*token.val)
    {
      CFRelease(*token.val);
    }

    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        CFRelease(v5);
        CFRelease(v4);
        if (Value)
        {
          pid = xpc_connection_get_pid(a2);
          *handler.val = _NSConcreteStackBlock;
          *&handler.val[2] = 0x40000000;
          *&handler.val[4] = sub_100000C7C;
          *&handler.val[6] = &unk_1000041F8;
          v12 = a2;
          v13 = pid;
          xpc_connection_set_event_handler(a2, &handler);
          xpc_connection_set_target_queue(a2, &_dispatch_main_q);
          xpc_connection_resume(a2);
          return;
        }

        goto LABEL_12;
      }

      CFRelease(v5);
    }

    CFRelease(v4);
  }

LABEL_12:
  xpc_connection_cancel(a2);
}

void sub_100000A24(const char *a1, xpc_object_t object)
{
  v3 = xpc_copy_description(object);
  syslog(7, "%s: %s", a1, v3);

  free(v3);
}

void sub_100000A80(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    syslog(5, "source_listener error: %s", string);
  }

  else
  {
    pid = xpc_connection_get_pid(a2);
    v9 = pid;
    syslog(7, "registering new source connection %p for pid %d", a2, pid);
    v4 = qword_100008020;
    if (!qword_100008020)
    {
      goto LABEL_9;
    }

    v5 = &qword_100008020;
    do
    {
      if (*(v4 + 32) >= pid)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < pid));
    }

    while (v4);
    if (v5 != &qword_100008020 && pid >= *(v5 + 8))
    {
      syslog(7, "redundant checkin for PID %d, ignoring", pid);
      xpc_connection_cancel(a2);
    }

    else
    {
LABEL_9:
      xpc_connection_set_target_queue(a2, &_dispatch_main_q);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10000148C;
      handler[3] = &unk_100004278;
      handler[4] = a2;
      v8 = pid;
      xpc_connection_set_event_handler(a2, handler);
      xpc_retain(a2);
      xpc_connection_resume(a2);
      v10 = &v9;
      sub_1000019E0(&qword_100008018, &v9)[5] = a2;
    }
  }
}

void *sub_100000C18(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_100000C7C(uint64_t a1, void *a2)
{
  sub_100000A24("client connection event handler called", a2);
  if (xpc_get_type(a2) != &_xpc_type_error)
  {
    value = xpc_dictionary_get_value(a2, "TargetProcess");
    if (value)
    {
      v5 = value;
      if (xpc_get_type(value) == &_xpc_type_uint64)
      {
        xpc_uint64_get_value(v5);
        operator new();
      }

      sub_100001D84();
    }

    sub_100001DB0();
  }

  v6 = *(a1 + 32);
  string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
  syslog(7, "client connection %p error delivered: %s", v6, string);
  for (i = qword_100008008; i != &qword_100008000; i = i[1])
  {
    v9 = i[2];
    if (v9[1] == *(a1 + 32))
    {
      syslog(7, "%s: deleting outstanding request %p", "void register_new_client(xpc_connection_t)_block_invoke", v9);
      v10 = *i;
      v11 = i[1];
      *(v10 + 8) = v11;
      *v11 = v10;
      --qword_100008010;
      operator delete(i);
      sub_1000011E8(v9);
    }
  }

  syslog(7, "%s: %zu outstanding requests left", "void register_new_client(xpc_connection_t)_block_invoke", qword_100008010);
}

void sub_100000ED0()
{
  v0 = &qword_100008000;
  v1 = qword_100008008;
  v2 = &qword_100008000;
  if (qword_100008008 != &qword_100008000)
  {
    v3 = 0;
    v4 = "void process_outstanding_requests()";
    v5 = "%s: request %p timed out (now %f, last progress %f)";
    v6 = "Timeout";
    v7 = 0x10A0C40050E0BEALL;
    while (1)
    {
      v8 = v1[2];
      if (*(v8 + 25))
      {
        break;
      }

      v9 = qword_100008020;
      if (!qword_100008020)
      {
        goto LABEL_11;
      }

      v10 = *v8;
      v11 = &qword_100008020;
      do
      {
        if (*(v9 + 32) >= v10)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < v10));
      }

      while (v9);
      if (v11 != &qword_100008020 && v10 >= *(v11 + 8))
      {
        v27 = v11[5];
        syslog(7, "%s: request %p sending message to source pid %d for client pid %d", v4, v8, v10, *(v8 + 4));
        v16 = v3;
        v17 = v0;
        v18 = v2;
        v19 = v7;
        v20 = v4;
        v21 = v6;
        v22 = v5;
        v23 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v23, "MemoryListRequest", 1);
        v24 = *v8;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = sub_100001258;
        handler[3] = &unk_100004218;
        handler[4] = vrev64_s32(v24);
        xpc_connection_send_message_with_reply(v27, v23, &_dispatch_main_q, handler);
        v25 = v23;
        v5 = v22;
        v6 = v21;
        v4 = v20;
        v7 = v19;
        v2 = v18;
        v0 = v17;
        v3 = v16;
        xpc_release(v25);
        *(v8 + 25) = 1;
      }

      else
      {
LABEL_11:
        if (*(v8 + 24))
        {
          break;
        }

        syslog(7, "%s: request %p did not find a connection to source pid %d sending check-in broadcast", v4, v1[2], *v8);
        if ((v3 & 1) == 0)
        {
          notify_post("com.apple.gpumemd.check_in_request");
        }

        v3 = 1;
        *(v8 + 24) = 1;
      }

      *(v8 + 32) = sub_10000142C();
LABEL_19:
      v1 = v1[1];
      if (v1 == v0)
      {
        goto LABEL_20;
      }
    }

    if (sub_10000142C() - *(v8 + 32) > 1.0)
    {
      v12 = sub_10000142C();
      syslog(5, v5, v4, v8, *&v12, *(v8 + 32));
      v13 = *v1;
      v14 = v1[1];
      *(v13 + 8) = v14;
      *v14 = v13;
      --v2[2];
      operator delete(v1);
      xpc_dictionary_set_BOOL(*(v8 + 16), v6, 1);
      remote_connection = xpc_dictionary_get_remote_connection(*(v8 + 16));
      xpc_connection_send_message(remote_connection, *(v8 + 16));
      xpc_release(*(v8 + 8));
      xpc_release(*(v8 + 16));
      operator delete();
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v2[2])
  {
    if ((byte_100008030 & 1) == 0)
    {
      v26 = dispatch_time(0, 250000000);
      dispatch_after(v26, &_dispatch_main_q, &stru_100004258);
      byte_100008030 = 1;
    }
  }
}

void sub_1000011E8(xpc_object_t *a1)
{
  syslog(7, "deallocating request %p", a1);
  xpc_release(a1[1]);
  xpc_release(a1[2]);

  operator delete();
}

void sub_100001258(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  type = xpc_get_type(object);
  remote_connection = xpc_dictionary_get_remote_connection(object);
  v7 = remote_connection;
  if (type != &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    syslog(5, "source connection %p reply error: %s", v7, string);
    value = 0;
LABEL_3:
    v10 = 0;
    goto LABEL_7;
  }

  if (xpc_connection_get_pid(remote_connection) != v4)
  {
    sub_100001DDC();
  }

  value = xpc_dictionary_get_value(object, "Payload");
  v11 = xpc_dictionary_get_remote_connection(object);
  if (!value)
  {
    syslog(5, "source connection %p reply error: Payload missing", v11);
    goto LABEL_3;
  }

  syslog(7, "source connection %p reply received", v11);
  v10 = 1;
LABEL_7:
  for (i = qword_100008008; i != &qword_100008000; i = i[1])
  {
    v13 = i[2];
    if (v13[1] == v3 && *v13 == v4)
    {
      if (v10)
      {
        syslog(7, "completing request %p, sending reply for source %d to client %d", v13, v4, v3);
        xpc_dictionary_set_value(*(v13 + 2), "Payload", value);
        xpc_connection_send_message(*(v13 + 1), *(v13 + 2));
      }

      else
      {
        syslog(7, "discarding request %p for source %d to client %d", v13, v4, v3);
      }

      v14 = *i;
      v15 = i[1];
      *(v14 + 8) = v15;
      *v15 = v14;
      --qword_100008010;
      operator delete(i);
      sub_1000011E8(v13);
    }
  }
}

double sub_10000142C()
{
  if (mach_timebase_info(&info))
  {
    sub_100001E08();
  }

  v0 = mach_absolute_time();
  LODWORD(v1) = info.numer;
  LODWORD(v2) = info.denom;
  return v0 * v1 / v2 / 1000000000.0;
}

void sub_10000148C(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    syslog(5, "source connection %p error received", *(a1 + 32));
    sub_100001568(&qword_100008018, (a1 + 40));
    xpc_connection_cancel(*(a1 + 32));
    v6 = *(a1 + 32);

    xpc_release(v6);
  }

  else
  {
    v4 = xpc_dictionary_get_BOOL(object, "CheckIn");
    v5 = *(a1 + 32);
    if (v4)
    {
      v7 = *(a1 + 32);
      v9 = *(a1 + 40);
      syslog(7, "source connection %p for pid %d checked in");
    }

    else
    {
      v8 = *(a1 + 32);
      syslog(5, "unexpected message from source connection %p");
    }
  }
}

uint64_t sub_100001568(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000015EC(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1000015EC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100001660(v6, a2);
  return v3;
}

uint64_t *sub_100001660(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *sub_1000019E0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100001AB4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100001B0C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100001B0C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_100001CA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100001CA8(a1, *a2);
    sub_100001CA8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_100001CFC()
{
  qword_100008000 = &qword_100008000;
  qword_100008008 = &qword_100008000;
  qword_100008010 = 0;
  __cxa_atexit(sub_1000007C0, &qword_100008000, &_mh_execute_header);
  qword_100008028 = 0;
  qword_100008020 = 0;
  qword_100008018 = &qword_100008020;

  return __cxa_atexit(sub_1000007E8, &qword_100008018, &_mh_execute_header);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}