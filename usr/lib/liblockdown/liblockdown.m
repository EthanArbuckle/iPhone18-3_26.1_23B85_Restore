void *lockdown_connect()
{
  v18 = *MEMORY[0x29EDCA608];
  v0 = socket(1, 1, 0);
  if (v0 != -1)
  {
    v1 = v0;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    v14 = 0u;
    v15 = 0u;
    v12 = 0;
    v13 = 0u;
    __strlcpy_chk();
    v12.sa_family = 1;
    if (!connect(v1, &v12, 0xD2u))
    {
      _disable_sigpipe(v1);
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040A8488062uLL);
      v5 = lockconn_new();
      *v4 = v5;
      lockconn_init(v5, v1, 4);
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v2 = __error();
      v3 = strerror(*v2);
      v8 = 136315394;
      v9 = v3;
      v10 = 2080;
      v11 = "/var/run/lockdown.sock";
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to connect to lockdown(%s) for path: %s. \n", &v8, 0x16u);
    }

    close(v1);
  }

  v4 = 0;
LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

BOOL _disable_sigpipe(int a1)
{
  v10 = 1;
  v1 = setsockopt(a1, 0xFFFF, 4130, &v10, 4u);
  if (v1 == -1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    locklog(0, "_disable_sigpipe", @"setsockopt(SO_NOSIGPIPE) failed: %s", v4, v5, v6, v7, v8, v3);
  }

  return v1 != -1;
}

double lockconn_init(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = a3;
    *(a1 + 32) = 0;
  }

  return result;
}

const void *send_get_value(uint64_t a1, const void *a2, const void *a3, CFStringRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  message = _create_message(@"GetValue");
  if (message)
  {
    v15 = message;
    if (a2)
    {
      CFDictionarySetValue(message, @"Domain", a2);
    }

    if (a3)
    {
      CFDictionarySetValue(v15, @"Key", a3);
    }

    if (lockconn_send_message(a1, v15, v9, v10, v11, v12, v13, v14))
    {
      goto LABEL_9;
    }

    v17 = lockconn_receive_message(a1);
    if (v17)
    {
      v18 = v17;
      Value = CFDictionaryGetValue(v17, @"Value");
      v16 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v20 = CFDictionaryGetValue(v18, @"Error");
      if (a4)
      {
        v21 = v20;
        if (v20)
        {
          CFRetain(v20);
          *a4 = v21;
        }
      }

      CFRelease(v18);
      goto LABEL_20;
    }

    if (!a4)
    {
LABEL_9:
      v16 = 0;
    }

    else
    {
      v16 = 0;
      *a4 = CFStringCreateCopy(0, @"InvalidResponse");
    }

LABEL_20:
    CFRelease(v15);
    return v16;
  }

  return 0;
}

const void *lockdown_copy_value(uint64_t *a1, const void *a2, const void *a3)
{
  cf = 0;
  value = send_get_value(*a1, a2, a3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return value;
}

__CFDictionary *_create_message(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v3 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Request", a1);
    CFDictionarySetValue(v3, @"ProtocolVersion", @"2");
    v4 = getprogname();
    if (v4)
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v4, 0x8000100u);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(v3, @"Label", v5);
        CFRelease(v6);
      }
    }
  }

  return v3;
}

uint64_t _send_message(uint64_t a1, const void *a2, CFPropertyListFormat a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = @"no connection";
LABEL_21:
    locklog(0, "_send_message", v10, a4, a5, a6, a7, a8, v31);
    return 0xFFFFFFFFLL;
  }

  if (*a1 == -1)
  {
    v10 = @"no socket";
    goto LABEL_21;
  }

  if (*(a1 + 20) != 1)
  {
    if (!a2)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && *(a1 + 24))
  {
LABEL_10:
    Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], a2, a3, 0, 0);
    if (Data)
    {
      v12 = Data;
      Length = CFDataGetLength(Data);
      if (Length < 0)
      {
        locklog(0, "_send_message", @"message length too small", v14, v15, v16, v17, v18, v31);
        CFRelease(v12);
        return 0xFFFFFFFFLL;
      }

      v19 = Length;
      BytePtr = CFDataGetBytePtr(v12);
      v21 = 0;
      v32 = bswap32(v19);
      do
      {
        v22 = lockconn_send(a1, &v32 + v21, 4 - v21);
        if (v22 == -1)
        {
          CFRelease(v12);
          v25 = __error();
          strerror(*v25);
          locklog(0, "_send_message", @"Could not send message size %ld: %s\n", v26, v27, v28, v29, v30, v19);
          return 0xFFFFFFFFLL;
        }

        v21 += v22;
      }

      while (v21 != 4);
      if (!v19)
      {
LABEL_19:
        CFRelease(v12);
        return 0;
      }

      v23 = 0;
      while (1)
      {
        v24 = lockconn_send(a1, BytePtr, v19 - v23);
        if (v24 == -1)
        {
          break;
        }

        v23 += v24;
        BytePtr += v24;
        if (v23 >= v19)
        {
          goto LABEL_19;
        }
      }

      CFRelease(v12);
      v10 = @"Could not send secure message.\n";
    }

    else
    {
      v10 = @"Could not encode message as XML";
    }

    goto LABEL_21;
  }

  return result;
}

ssize_t lockconn_send(uint64_t a1, const void *a2, size_t a3)
{
  processed = -1;
  if (*(a1 + 20) != 1)
  {
    return send(*a1, a2, a3, 0);
  }

  v3 = SSLWrite(*(a1 + 24), a2, a3, &processed);
  if (v3)
  {
    v4 = v3;
    *__error() = 5;
    if (!processed)
    {
      processed = -1;
    }

    if (v4 == -9806)
    {
      v5 = __error();
      v6 = 32;
      goto LABEL_10;
    }

    if (v4 == -9803)
    {
      v5 = __error();
      v6 = 35;
LABEL_10:
      *v5 = v6;
    }
  }

  return processed;
}

const __CFDictionary *lockconn_receive_message(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = _receive_message(a1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (!*(a1 + 32))
      {
        Value = CFDictionaryGetValue(v3, @"ProtocolVersion");
        if (Value)
        {
          v12 = Value;
          v13 = CFGetTypeID(Value);
          if (v13 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v12);
            if (IntValue >= 1)
            {
              *(a1 + 32) = IntValue;
            }
          }
        }
      }

      goto LABEL_5;
    }

    locklog(0, "lockconn_receive_message", @"Ignoring message that is not the right type.\n", v5, v6, v7, v8, v9, v15);
    CFRelease(v3);
    return 0;
  }

LABEL_5:
  lockdown_warning_break(v3);
  return v3;
}

CFPropertyListRef _receive_message(uint64_t a1)
{
  data = 0;
  error = 0;
  v2 = *a1;
  if (v2 == -1)
  {
    return 0;
  }

  processed = 0;
  if (*(a1 + 20) == 1)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    if (SSLRead(v3, &data, 4uLL, &processed) != -9805)
    {
      v9 = processed;
      if (!processed)
      {
        return 0;
      }

      goto LABEL_7;
    }

    *(a1 + 20) = 0;
    lockconn_disable_ssl(a1);
    v2 = *a1;
  }

  v9 = recv(v2, &data, 4uLL, 0);
  processed = v9;
  if (!v9)
  {
    return 0;
  }

LABEL_7:
  if (v9 != 4)
  {
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    v44 = 4;
    v11 = @"Could not receive size of message, expected %d bytes, got %ld bytes: (%d, %s)";
    goto LABEL_11;
  }

  v10 = bswap32(data);
  if (v10 > 0x300000)
  {
    v44 = data;
    v11 = @"swapped %d message size %d exceeds %d limit";
LABEL_11:
    locklog(0, "_receive_message", v11, v4, v5, v6, v7, v8, v44);
    return 0;
  }

  if (!data)
  {
    v11 = @"msize is zero";
    goto LABEL_11;
  }

  v16 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v16)
  {
    locklog(0, "_receive_message", @"can't alloc message size %d", v17, v18, v19, v20, v21, v10);
    return 0;
  }

  v22 = v16;
  v23 = 0;
  v24 = v16;
  do
  {
    v25 = lockconn_recv(a1, v24, v10 - v23);
    processed = v25;
    if (v25 <= 0)
    {
      locklog(0, "_receive_message", @"Could not receive message: %ld.\n", v26, v27, v28, v29, v30, v25);
LABEL_33:
      free(v22);
      return 0;
    }

    v23 += v25;
    v24 += v25;
  }

  while (v23 < v10);
  v31 = CFDataCreateWithBytesNoCopy(0, v22, v10, *MEMORY[0x29EDB8EE0]);
  if (!v31)
  {
    locklog(0, "_receive_message", @"Could not create CFData for message.\n", v32, v33, v34, v35, v36, v44);
    goto LABEL_33;
  }

  v37 = v31;
  v14 = CFPropertyListCreateWithData(0, v31, 0, 0, &error);
  if (v14)
  {
    v43 = error == 0;
  }

  else
  {
    v43 = 0;
  }

  if (!v43)
  {
    locklog(0, "_receive_message", @"there was an err.", v38, v39, v40, v41, v42, v44);
    if (error)
    {
      CFRelease(error);
    }
  }

  CFRelease(v37);
  return v14;
}

ssize_t lockconn_recv(uint64_t a1, void *a2, size_t a3)
{
  processed = -1;
  if (*(a1 + 20) != 1)
  {
    return recv(*a1, a2, a3, 0);
  }

  v3 = SSLRead(*(a1 + 24), a2, a3, &processed);
  if (v3)
  {
    v4 = v3;
    *__error() = 5;
    if (!processed)
    {
      processed = -1;
    }

    switch(v4)
    {
      case -9806:
        v5 = __error();
        v6 = 54;
        break;
      case -9803:
        v5 = __error();
        v6 = 2;
        break;
      case -9805:
        return 0;
      default:
        return processed;
    }

    *v5 = v6;
  }

  return processed;
}

void lockdown_warning_break(const __CFDictionary *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"Warning");
    if (Value)
    {
      v2 = Value;
      memcpy(__dst, "Error creating CFString", sizeof(__dst));
      LODWORD(v2) = CFStringGetCString(v2, __dst, 1024, 0x8000100u);
      v3 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        if (v3)
        {
          v7 = 136315138;
          v8 = __dst;
          _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v7) = 0;
          v4 = MEMORY[0x29EDCA988];
          v5 = "*** this is a CLIENT bug, NOT a lockdown bug; set a breakpoint in lockdown_warning_break to debug";
LABEL_10:
          _os_log_impl(&dword_299099000, v4, OS_LOG_TYPE_DEFAULT, v5, &v7, 2u);
        }
      }

      else if (v3)
      {
        LOWORD(v7) = 0;
        v4 = MEMORY[0x29EDCA988];
        v5 = "CFStringGetCString failure in lockdown_warning_break";
        goto LABEL_10;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void lockdown_disconnect(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      heartbeat_ref = lockconn_get_heartbeat_ref(v2);
      if (heartbeat_ref)
      {
        v4 = heartbeat_ref;
        v5 = xpc_dictionary_create(0, 0, 0);
        if (v5)
        {
          v11 = v5;
          mach_service = xpc_connection_create_mach_service("com.apple.mobile.heartbeat", 0, 0);
          if (mach_service)
          {
            v18 = mach_service;
            xpc_dictionary_set_uint64(v11, "HB_PARAM_COMMAND", 3uLL);
            xpc_dictionary_set_uint64(v11, "HB_PARAM_REF", v4);
            xpc_connection_set_event_handler(v18, &__block_literal_global_131);
            xpc_connection_resume(v18);
            v19 = xpc_connection_send_message_with_reply_sync(v18, v11);
            if (v19)
            {
              xpc_release(v19);
            }

            else
            {
              locklog(0, "HBFreeHeartbeatReference", @"Failed to receive xpc reply.", v20, v21, v22, v23, v24, v28);
            }

            xpc_release(v11);
            v25 = v18;
          }

          else
          {
            locklog(0, "HBFreeHeartbeatReference", @"Failed to create xpc mach service.", v13, v14, v15, v16, v17, v28);
            v25 = v11;
          }

          xpc_release(v25);
        }

        else
        {
          locklog(0, "HBFreeHeartbeatReference", @"Failed to create xpc dictionary.", v6, v7, v8, v9, v10, v28);
        }
      }

      lockconn_disable_ssl(*a1);
      lockconn_close(*a1);
      lockconn_free(*a1);
    }

    v26 = a1[2];
    if (v26)
    {
      os_release(v26);
      a1[2] = 0;
    }

    v27 = a1[1];
    if (v27)
    {
      xpc_release(v27);
    }

    free(a1);
  }
}

void lockconn_close(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *a1;
    if (v3)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_activate(v3);
      dispatch_release(v3);
      *(a1 + 40) = 0;
    }

    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_activate(v2);
      dispatch_release(v2);
      *(a1 + 48) = 0;
    }

    else if (v4 != -1)
    {
      close(v4);
    }

    *a1 = -1;
  }
}

uint64_t lockconn_get_heartbeat_ref(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t lockconn_disable_ssl(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    v2 = SSLClose(*(a1 + 24));
    if (v2)
    {
      locklog(0, "lockconn_disable_ssl", @"Could not shutdown SSL connection: %d\n", v3, v4, v5, v6, v7, v2);
    }

    *(a1 + 20) = 0;
  }

  if (*(a1 + 24))
  {
    _SSLDisposeContext();
    *(a1 + 24) = 0;
  }

  return 0;
}

void lockconn_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t SocketRead(int a1, char *a2, size_t *a3)
{
  v6 = *a3;
  *a3 = 0;
  v7 = v6;
  while (1)
  {
    *__error() = -555;
    if (_select_socket())
    {
      locklog(0, "SocketRead", @"walk away", v8, v9, v10, v11, v12, v16);
      goto LABEL_7;
    }

    v13 = recv(a1, a2, v7, 0);
    if (v13 <= 0)
    {
      break;
    }

    a2 += v13;
    v7 -= v13;
    if (!v7)
    {
      result = 0;
      goto LABEL_14;
    }
  }

  if (!v13)
  {
    result = 4294957491;
    goto LABEL_14;
  }

  v15 = *__error();
  result = 4294957493;
  if (v15 != 2 && v15 != 35)
  {
    if (v15 != 54)
    {
      result = 4294967260;
      goto LABEL_14;
    }

LABEL_7:
    result = 4294957490;
  }

LABEL_14:
  *a3 = v6 - v7;
  return result;
}

uint64_t lockdown_receive_message(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = lockconn_receive_message_no_select(*a1);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t lockdown_get_socket(unsigned int **a1)
{
  if (a1)
  {
    return lockconn_sock(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t lockconn_sock(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t SocketWrite(int __fd, uint64_t a2, unint64_t *a3)
{
  v6 = 0;
  v7 = *a3;
  *a3 = 0;
  while (1)
  {
    v8 = write(__fd, (a2 + v6), v7 - v6);
    if (v8 < 1)
    {
      break;
    }

    v6 += v8;
    if (v6 >= v7)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  v10 = *__error();
  if (v10 == 32)
  {
    v11 = -9806;
  }

  else
  {
    v11 = -36;
  }

  if (v10 == 35)
  {
    result = 4294957493;
  }

  else
  {
    result = v11;
  }

LABEL_11:
  *a3 = v6;
  return result;
}

uint64_t lockdown_copy_checkin_info(void *a1, CFArrayRef *a2)
{
  v63 = *MEMORY[0x29EDCA608];
  values = 0;
  v56 = -1;
  if (!a2 || (*a2 = 0, MEMORY[0x29C297790]() != MEMORY[0x29EDCAA00]) || (string = xpc_dictionary_get_string(a1, "_LDCHECKININFO")) == 0)
  {
    v49 = 8;
    goto LABEL_33;
  }

  v5 = CFStringCreateWithCString(0, string, 0x8000100u);
  if (!v5)
  {
    v49 = 11;
    goto LABEL_33;
  }

  v6 = v5;
  v62 = 0;
  *v60 = 0u;
  v61 = 0u;
  valuePtr = xpc_dictionary_get_date(a1, "_LDTIMESTAMP");
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberLongLongType, &valuePtr);
  if (!v8)
  {
    v49 = 8;
    v47 = v6;
LABEL_32:
    CFRelease(v47);
    goto LABEL_33;
  }

  v9 = v8;
  value = xpc_dictionary_get_value(a1, "_LDCHECKINDICT");
  v18 = copy_dict_from_xpc_data(value, v11, v12, v13, v14, v15, v16, v17);
  if (!v18 || (v56 = xpc_dictionary_dup_fd(a1, "_LDSERVICESOCK"), v56 == -1))
  {
    v19 = 0;
    goto LABEL_24;
  }

  v19 = CFNumberCreate(v7, kCFNumberIntType, &v56);
  if (!v19)
  {
LABEL_24:
    v47 = 0;
LABEL_26:
    v49 = 8;
    goto LABEL_27;
  }

  xpc_dictionary_set_value(a1, "_LDSERVICESOCK", 0);
  v20 = xpc_dictionary_dup_fd(a1, "_LDSERVICELOGSOCK");
  if (v20 == -1)
  {
    locklog(0, "lockdown_copy_checkin_info", @"_LDSERVICELOGSOCK missing", v21, v22, v23, v24, v25, v52);
  }

  else
  {
    v26 = v20;
    v55 = 0;
    v27 = _NSGetProgname();
    if (v27)
    {
      v28 = *v27;
    }

    else
    {
      v28 = "unknown service";
    }

    __s = 0;
    time(&v55);
    ctime_r(&v55, v59);
    v29 = getpid();
    asprintf(&__s, "%s(%d) checked in at %s", v28, v29, v59);
    if (__s)
    {
      v35 = strlen(__s);
      write(v26, __s, v35);
      free(__s);
    }

    else
    {
      locklog(0, "lockdown_copy_checkin_info", @"asprintf failed", v30, v31, v32, v33, v34, v53);
    }

    close(v26);
  }

  xpc_dictionary_set_value(a1, "_LDSERVICELOGSOCK", 0);
  values = xpc_dictionary_get_remote_connection(a1);
  if (!values)
  {
    locklog(0, "lockdown_copy_checkin_info", @"Failed to get XPC connection from message.", v36, v37, v38, v39, v40, v53);
    goto LABEL_24;
  }

  v41 = CFBagCreate(v7, &values, 1, &xpc_connection_bag_callbacks);
  v47 = v41;
  if (!v41)
  {
    locklog(0, "lockdown_copy_checkin_info", @"Failed to store XPC connection in CFBag.", v42, v43, v44, v45, v46, v53);
    goto LABEL_26;
  }

  v60[0] = v6;
  v60[1] = v9;
  *&v61 = v18;
  *(&v61 + 1) = v19;
  v62 = v41;
  v48 = CFArrayCreate(v7, v60, 5, MEMORY[0x29EDB9000]);
  *a2 = v48;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = 11;
  }

LABEL_27:
  CFRelease(v6);
  CFRelease(v9);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v47)
  {
    goto LABEL_32;
  }

LABEL_33:
  v50 = *MEMORY[0x29EDCA608];
  return v49;
}

uint64_t lockconn_get_buffered_read_size(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  bufferSize = 0;
  if (a1 && a2)
  {
    if (*(a1 + 20) == 1)
    {
      v9 = SSLGetBufferedReadSize(*(a1 + 24), &bufferSize);
      if (v9)
      {
        v10 = v9;
        v11 = SecCopyErrorMessageString(v9, 0);
        locklog(0, "lockconn_get_buffered_read_size", @"SSLGetBufferedReadSize failed: %d (%@)", v12, v13, v14, v15, v16, v10);
        if (v11)
        {
          CFRelease(v11);
        }

        return 0;
      }

LABEL_13:
      *a2 = bufferSize;
      return 1;
    }

    if (!ioctl(*a1, 0x4004667FuLL, &bufferSize))
    {
      goto LABEL_13;
    }

    v18 = *__error();
    v19 = __error();
    strerror(*v19);
    v21 = v18;
    v17 = @"ioctl (FIONREAD) failed: %d (%s)";
  }

  else
  {
    v17 = @"Invalid input(s).";
  }

  locklog(0, "lockconn_get_buffered_read_size", v17, a4, a5, a6, a7, a8, v21);
  return 0;
}

void locklog(uint64_t a1, const char *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x800uLL);
  if (!a2)
  {
    a2 = "";
  }

  v11 = CFStringCreateWithFormatAndArguments(0, 0, a3, &a9);
  v12 = v11;
  if (v11 && !CFStringGetCString(v11, buffer, 2048, 0x8000100u))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to retrieve C string.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = a2;
    v16 = 2080;
    v17 = buffer;
    _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: %s", buf, 0x16u);
  }

  if (v12)
  {
LABEL_8:
    CFRelease(v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t lockconn_set_heartbeat_ref(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void lockconn_set_keybag_handle(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 && a2)
  {
    v11 = *a1;
    if (v11 == -1)
    {
      v12 = @"can't set keybag handle on a connection without a socket";
    }

    else
    {
      if (!*(a1 + 40))
      {
        v13 = dup(v11);
        if (v13 == -1)
        {
          v18 = *__error();
          v19 = __error();
          strerror(*v19);
          locklog(0, "lockconn_set_keybag_handle", @"Failed to dup the socket: %d (%s).", v20, v21, v22, v23, v24, v18);
        }

        else
        {
          v14 = v13;
          v15 = v13;
          global_queue = dispatch_get_global_queue(0, 0);
          v17 = dispatch_source_create(MEMORY[0x29EDCA5C8], v15, 0x1006uLL, global_queue);
          handler[0] = MEMORY[0x29EDCA5F8];
          handler[1] = 0x40000000;
          handler[2] = __lockconn_set_keybag_handle_block_invoke;
          handler[3] = &__block_descriptor_tmp;
          handler[4] = v17;
          dispatch_source_set_event_handler(v17, handler);
          CFRetain(a2);
          v25[0] = MEMORY[0x29EDCA5F8];
          v25[1] = 0x40000000;
          v25[2] = __lockconn_set_keybag_handle_block_invoke_2;
          v25[3] = &__block_descriptor_tmp_8;
          v25[4] = a2;
          v26 = v14;
          dispatch_source_set_cancel_handler(v17, v25);
          dispatch_activate(v17);
          *(a1 + 40) = v17;
        }

        return;
      }

      v12 = @"can't set two keybag handles for the same socket";
    }

    locklog(0, "lockconn_set_keybag_handle", v12, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t __lockconn_set_keybag_handle_block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  return close(v2);
}

uint64_t lockconn_type(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 4;
  }
}

uint64_t lockconn_enable_ssl(uint64_t a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, int a5)
{
  v6 = lockssl_handshake(*a1, a2, a3, a4, a5);
  *(a1 + 24) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = 1;
  return result;
}

uint64_t lockconn_sslcontext(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t send_set_value(uint64_t a1, const void *a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  message = _create_message(@"SetValue");
  if (message)
  {
    v11 = message;
    if (a2)
    {
      CFDictionarySetValue(message, @"Domain", a2);
    }

    CFDictionarySetValue(v11, @"Key", a3);
    CFDictionarySetValue(v11, @"Value", a4);
    if (!lockconn_send_message(a1, v11, v12, v13, v14, v15, v16, v17))
    {
      v19 = lockconn_receive_message(a1);
      if (v19)
      {
        v20 = v19;
        Value = CFDictionaryGetValue(v19, @"Error");
        if (Value)
        {
          v18 = 0xFFFFFFFFLL;
        }

        else
        {
          v18 = 0;
        }

        if (a5)
        {
          v22 = Value;
          if (Value)
          {
            CFRetain(Value);
            *a5 = v22;
            v18 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v20);
        goto LABEL_17;
      }

      if (a5)
      {
        *a5 = CFStringCreateCopy(0, @"InvalidResponse");
      }
    }

    v18 = 0xFFFFFFFFLL;
LABEL_17:
    CFRelease(v11);
    return v18;
  }

  return 0xFFFFFFFFLL;
}

uint64_t send_save_value(uint64_t a1, const void *a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  message = _create_message(@"SaveValue");
  if (message)
  {
    v11 = message;
    if (a2)
    {
      CFDictionarySetValue(message, @"Domain", a2);
    }

    CFDictionarySetValue(v11, @"Key", a3);
    CFDictionarySetValue(v11, @"Value", a4);
    if (!lockconn_send_message(a1, v11, v12, v13, v14, v15, v16, v17))
    {
      v19 = lockconn_receive_message(a1);
      if (v19)
      {
        v20 = v19;
        Value = CFDictionaryGetValue(v19, @"Error");
        if (Value)
        {
          v18 = 0xFFFFFFFFLL;
        }

        else
        {
          v18 = 0;
        }

        if (a5)
        {
          v22 = Value;
          if (Value)
          {
            CFRetain(Value);
            *a5 = v22;
            v18 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v20);
        goto LABEL_17;
      }

      if (a5)
      {
        *a5 = CFStringCreateCopy(0, @"InvalidResponse");
      }
    }

    v18 = 0xFFFFFFFFLL;
LABEL_17:
    CFRelease(v11);
    return v18;
  }

  return 0xFFFFFFFFLL;
}

uint64_t send_remove_value(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  message = _create_message(@"RemoveValue");
  if (message)
  {
    v9 = message;
    if (a2)
    {
      CFDictionarySetValue(message, @"Domain", a2);
    }

    CFDictionarySetValue(v9, @"Key", a3);
    if (!lockconn_send_message(a1, v9, v10, v11, v12, v13, v14, v15))
    {
      v17 = lockconn_receive_message(a1);
      if (v17)
      {
        v18 = v17;
        Value = CFDictionaryGetValue(v17, @"Error");
        v16 = Value;
        if (Value)
        {
          if (isCFString(Value))
          {
            v20 = v16;
          }

          else
          {
            v20 = @"InvalidResponse";
          }

          if (v20)
          {
            v16 = 0xFFFFFFFFLL;
          }

          else
          {
            v16 = 0;
          }

          if (a4 && v20)
          {
            CFRetain(v20);
            *a4 = v20;
            v16 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v18);
        goto LABEL_21;
      }

      if (a4)
      {
        *a4 = CFStringCreateCopy(0, @"InvalidResponse");
      }
    }

    v16 = 0xFFFFFFFFLL;
LABEL_21:
    CFRelease(v9);
    return v16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t send_reset_pairing(uint64_t a1, int a2, CFStringRef *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  message = _create_message(@"ResetPairing");
  if (message)
  {
    v7 = message;
    v8 = MEMORY[0x29EDB8F00];
    if (!a2)
    {
      v8 = MEMORY[0x29EDB8EF8];
    }

    CFDictionarySetValue(message, @"FullReset", *v8);
    if (!lockconn_send_message(a1, v7, v9, v10, v11, v12, v13, v14))
    {
      v16 = lockconn_receive_message(a1);
      if (v16)
      {
        v17 = v16;
        Value = CFDictionaryGetValue(v16, @"Error");
        if (Value)
        {
          v15 = 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 0;
        }

        if (a3)
        {
          v19 = Value;
          if (Value)
          {
            CFRetain(Value);
            *a3 = v19;
            v15 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v17);
        goto LABEL_17;
      }

      if (a3)
      {
        *a3 = CFStringCreateCopy(0, @"InvalidResponse");
      }
    }

    v15 = 0xFFFFFFFFLL;
LABEL_17:
    CFRelease(v7);
    return v15;
  }

  return 0xFFFFFFFFLL;
}

uint64_t send_unpair(uint64_t a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    goto LABEL_15;
  }

  message = _create_message(@"Unpair");
  values = a2;
  keys[0] = @"HostID";
  v8 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v8 || (CFDictionarySetValue(message, @"PairRecord", v8), CFDictionarySetValue(message, @"ResetTrustPrompt", *MEMORY[0x29EDB8F00]), lockconn_send_message(a1, message, v9, v10, v11, v12, v13, v14)))
  {
    v15 = 0;
    v16 = kLDErrorInternalError;
    goto LABEL_6;
  }

  v20 = lockconn_receive_message(a1);
  v15 = v20;
  if (!v20)
  {
    v16 = kLDErrorInvalidResponse;
LABEL_6:
    Value = *v16;
    if (a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v20, @"Error");
  if (Value)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
LABEL_7:
    if (Value)
    {
      CFRetain(Value);
      *a3 = Value;
    }
  }

LABEL_9:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (message)
  {
    CFRelease(message);
  }

LABEL_15:
  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL send_is_host_trusted(uint64_t a1, const void *a2, const void *a3, CFStringRef *a4)
{
  message = _create_message(@"IsHostTrusted");
  if (message)
  {
    v15 = message;
    if (a2)
    {
      CFDictionarySetValue(message, @"Client", a2);
    }

    if (a3)
    {
      CFDictionarySetValue(v15, @"Options", a3);
    }

    if (lockconn_send_message(a1, v15, v9, v10, v11, v12, v13, v14))
    {
      goto LABEL_7;
    }

    v17 = lockconn_receive_message(a1);
    if (v17)
    {
      v18 = v17;
      Value = CFDictionaryGetValue(v17, @"Error");
      v16 = Value == 0;
      if (a4)
      {
        v20 = Value;
        if (Value)
        {
          CFRetain(Value);
          *a4 = v20;
        }
      }

      CFRelease(v18);
      goto LABEL_16;
    }

    if (!a4)
    {
LABEL_7:
      v16 = 0;
    }

    else
    {
      v16 = 0;
      *a4 = CFStringCreateCopy(0, @"InvalidResponse");
    }

LABEL_16:
    CFRelease(v15);
    return v16;
  }

  return 0;
}

BOOL send_enable_wireless_pairing(uint64_t a1, int a2)
{
  message = _create_message(@"EnableWirelessPairing");
  if (!message)
  {
    return 0;
  }

  v5 = message;
  v6 = MEMORY[0x29EDB8F00];
  if (!a2)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(message, @"Options", *v6);
  if (lockconn_send_message(a1, v5, v7, v8, v9, v10, v11, v12) || (v14 = lockconn_receive_message(a1)) == 0)
  {
    v13 = 0;
  }

  else
  {
    v15 = v14;
    v13 = CFDictionaryGetValue(v14, @"Error") == 0;
    CFRelease(v15);
  }

  CFRelease(v5);
  return v13;
}

uint64_t lockcrypto_decode_pem(const __CFData *a1, const char *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a1 || (BytePtr = CFDataGetBytePtr(a1), Length = CFDataGetLength(a1), Length < 0))
  {
    v10 = 0;
  }

  else
  {
    v6 = Length;
    v7 = snprintf(__str, 0x50uLL, "-----BEGIN %s-----\n", a2);
    snprintf(__little, 0x50uLL, "\n-----END %s-----\n", a2);
    v8 = strnstr(BytePtr, __str, v6);
    v9 = strnstr(BytePtr, __little, v6);
    v10 = 0;
    if (v8)
    {
      v11 = v9;
      if (v9)
      {
        v12 = &v8[v7];
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v12 length:v11 - v12 freeWhenDone:0];
        v10 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBase64EncodedData:v14 options:1];

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

const __CFData *lockcrypto_cert_from_pem_data(const __CFData *a1)
{
  result = lockcrypto_decode_pem(a1, "CERTIFICATE");
  if (result)
  {
    v2 = result;
    v3 = SecCertificateCreateWithData(*MEMORY[0x29EDB8ED8], result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t lockcrypto_private_key_from_pem_data(const __CFData *a1)
{
  v1 = lockcrypto_decode_pem(a1, "RSA PRIVATE KEY");
  if (v1)
  {
    v7 = v1;
    v8 = *MEMORY[0x29EDB8ED8];
    CFDataGetBytePtr(v1);
    CFDataGetLength(v7);
    RSAPrivateKey = SecKeyCreateRSAPrivateKey();
    if (!RSAPrivateKey)
    {
      locklog(0, "lockcrypto_private_key_from_pem_data", @"SecKeyCreateRSAPrivateKey failed", v9, v10, v11, v12, v13, v16);
    }

    CFRelease(v7);
  }

  else
  {
    locklog(0, "lockcrypto_private_key_from_pem_data", @"lockcrypto_decode_pem failed", v2, v3, v4, v5, v6, v16);
    return 0;
  }

  return RSAPrivateKey;
}

uint64_t unlock_with_escrow(void *a1, int a2, CFDataRef theData, __CFString **a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    *a4 = 0;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  CCDigest();
  __sprintf_chk(v28, 0, 0x29uLL, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  CFDataGetLength(theData);
  locklog(0, "unlock_with_escrow", @"Starting service with bag=%s, %ld", v7, v8, v9, v10, v11, v28);
  v12 = MKBKeyBagCreateWithData();
  if (v12)
  {
    locklog(0, "unlock_with_escrow", @"Can't instantiate escrow bag: %d", v13, v14, v15, v16, v17, v12);
    if (a4)
    {
      v18 = @"Failure";
LABEL_9:
      v25 = 0;
      *a4 = v18;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = MKBKeyBagUnlock();
  if (v19)
  {
    locklog(0, "unlock_with_escrow", @"Can't unlock escrow bag: %d", v20, v21, v22, v23, v24, v19);
    if (a4)
    {
      v18 = @"EscrowFailure";
      goto LABEL_9;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  if (a1)
  {
    *a1 = 0;
  }

  v25 = 1;
LABEL_11:
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

CFTypeRef lockdown_copy_wireless_connections_list()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    return 0;
  }

  v1 = v0;
  mach_service = xpc_connection_create_mach_service("com.apple.mobile.heartbeat", 0, 0);
  if (!mach_service)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v29[0] = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to create mach service connection.", v29, 2u);
    }

    v27 = v1;
    goto LABEL_13;
  }

  v3 = mach_service;
  xpc_dictionary_set_uint64(v1, "HB_PARAM_COMMAND", 4uLL);
  xpc_connection_set_event_handler(v3, &__block_literal_global);
  xpc_connection_resume(v3);
  v4 = xpc_connection_send_message_with_reply_sync(v3, v1);
  if (!v4)
  {
    locklog(0, "lockdown_copy_wireless_connections_list", @"Failed to send xpc message.", v5, v6, v7, v8, v9, v29[0]);
    xpc_release(v1);
    v27 = v3;
LABEL_13:
    xpc_release(v27);
    return 0;
  }

  v10 = v4;
  value = xpc_dictionary_get_value(v4, "HB_PARAM_OBJECT");
  if (value)
  {
    v19 = copy_array_from_xpc_data(value, v12, v13, v14, v15, v16, v17, v18);
    v25 = v19;
    if (v19)
    {
      v26 = CFRetain(v19);
    }

    else
    {
      locklog(0, "lockdown_copy_wireless_connections_list", @"Failed to copy array from xpc data.", v20, v21, v22, v23, v24, v29[0]);
      v26 = 0;
    }
  }

  else
  {
    locklog(0, "lockdown_copy_wireless_connections_list", @"Invalid xpc response.", v14, v15, v16, v17, v18, v29[0]);
    v26 = 0;
    v25 = 0;
  }

  xpc_release(v10);
  xpc_release(v1);
  xpc_release(v3);
  if (v25)
  {
    CFRelease(v25);
  }

  return v26;
}

void lockdown_kill_wireless_connections(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9)
  {
    v15 = v9;
    mach_service = xpc_connection_create_mach_service("com.apple.mobile.heartbeat", 0, 0);
    if (mach_service)
    {
      v22 = mach_service;
      xpc_dictionary_set_uint64(v15, "HB_PARAM_COMMAND", 2uLL);
      xpc_connection_set_event_handler(v22, &__block_literal_global_38);
      xpc_connection_resume(v22);
      v23 = xpc_connection_send_message_with_reply_sync(v22, v15);
      if (v23)
      {
        xpc_release(v23);
      }

      else
      {
        locklog(0, "lockdown_kill_wireless_connections", @"Failed to receive xpc reply.", v24, v25, v26, v27, v28, v30);
      }

      xpc_release(v15);
      v29 = v22;
    }

    else
    {
      locklog(0, "lockdown_kill_wireless_connections", @"Failed to create xpc mach service.", v17, v18, v19, v20, v21, v30);
      v29 = v15;
    }

    xpc_release(v29);
  }

  else
  {

    locklog(0, "lockdown_kill_wireless_connections", @"Failed to create xpc dictionary.", v10, v11, v12, v13, v14, a9);
  }
}

uint64_t secure_lockdown_checkin(void *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v79 = *MEMORY[0x29EDCA608];
  valuePtr = -1;
  v74 = 0;
  values = 0;
  cf = 0;
  v70 = 0;
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = MEMORY[0x29EDCA988];
      v34 = "Invalid input.";
LABEL_46:
      _os_log_impl(&dword_299099000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    }

LABEL_47:
    v30 = 0;
    v35 = 0;
    v36 = 0;
    v24 = -1;
    v32 = 1;
    goto LABEL_55;
  }

  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"CheckinConnectionInfo")) == 0)
  {
    *buf = 0;
    v76 = buf;
    v77 = 0x2000000000;
    v78 = 0;
    v27 = getenv("LOCKDOWN_MACH_SERVICE");
    if (v27)
    {
      v28 = v27;
      v29 = dispatch_semaphore_create(0);
      if (v29)
      {
        v30 = v29;
        dispatch_retain(v29);
        v68[0] = MEMORY[0x29EDCA5F8];
        v68[1] = 0x40000000;
        v68[2] = __secure_lockdown_checkin_block_invoke;
        v68[3] = &unk_29EF06A60;
        v68[4] = buf;
        v68[5] = v28;
        v68[6] = a1;
        v68[7] = a3;
        v68[8] = v30;
        lockdown_checkin_xpc(v28, theDict, 0, v68);
        v31 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v30, v31))
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            secure_lockdown_checkin_cold_1();
          }

          v32 = 9;
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_54;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        v37 = MEMORY[0x29EDCA988];
        v38 = "Failed to create semaphore.";
        goto LABEL_52;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 0;
      v37 = MEMORY[0x29EDCA988];
      v38 = "Unknown service name.";
LABEL_52:
      _os_log_impl(&dword_299099000, v37, OS_LOG_TYPE_DEFAULT, v38, v69, 2u);
    }

    v30 = 0;
    v32 = 1;
LABEL_54:
    _Block_object_dispose(buf, 8);
    v35 = 0;
    v36 = 0;
    v24 = -1;
    goto LABEL_55;
  }

  v7 = Value;
  if (!isCFArray(Value) || CFArrayGetCount(v7) != 5)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = MEMORY[0x29EDCA988];
      v34 = "Invalid sideband info.";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v7, 2);
  if (!isCFDictionary(ValueAtIndex))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v33 = MEMORY[0x29EDCA988];
    v34 = "Invalid info.";
    goto LABEL_46;
  }

  v9 = CFArrayGetValueAtIndex(v7, 3);
  if (!isCFNumber(v9))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v33 = MEMORY[0x29EDCA988];
    v34 = "Invalid socket.";
    goto LABEL_46;
  }

  if (!CFNumberGetValue(v9, kCFNumberIntType, &valuePtr))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v33 = MEMORY[0x29EDCA988];
    v34 = "Failed to convert number.";
    goto LABEL_46;
  }

  v10 = CFArrayGetValueAtIndex(v7, 4);
  if (!isCFBag(v10))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 0;
    v41 = MEMORY[0x29EDCA988];
    v42 = "Failed to read CF bag containing XPC connection.";
LABEL_83:
    _os_log_impl(&dword_299099000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
    goto LABEL_84;
  }

  if (MEMORY[0x29C296E90](v10) != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 0;
    v41 = MEMORY[0x29EDCA988];
    v42 = "Unexpected number of items in XPC connection bag.";
    goto LABEL_83;
  }

  CFBagGetValues(v10, &values);
  if (!values)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 0;
    v41 = MEMORY[0x29EDCA988];
    v42 = "Failed to get remote connection from XPC message.";
    goto LABEL_83;
  }

  if (!ack_checkin(values))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = MEMORY[0x29EDCA988];
      v42 = "Failed to send checkin reply.";
      goto LABEL_83;
    }

LABEL_84:
    v30 = 0;
    v35 = 0;
    v36 = 0;
    v24 = -1;
    v32 = 8;
    goto LABEL_55;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v33 = MEMORY[0x29EDCA988];
    v34 = "Failed to create dictionary.";
    goto LABEL_46;
  }

  v12 = Mutable;
  v74 = 2;
  v13 = CFNumberCreate(0, kCFNumberIntType, &v74);
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to create number.", buf, 2u);
    }

    CFRelease(v12);
    goto LABEL_47;
  }

  v14 = v13;
  CFDictionarySetValue(v12, @"CheckinVersion", v13);
  v15 = CFArrayGetValueAtIndex(v7, 0);
  if (isCFString(v15))
  {
    CFDictionarySetValue(v12, @"CheckinPath", v15);
  }

  v16 = CFArrayGetValueAtIndex(v7, 1);
  if (isCFNumber(v16))
  {
    CFDictionarySetValue(v12, @"CheckinTimestamp", v16);
  }

  v17 = CFDictionaryGetValue(ValueAtIndex, @"HostID");
  if (isCFString(v17))
  {
    CFDictionarySetValue(v12, @"HostID", v17);
  }

  v18 = CFDictionaryGetValue(ValueAtIndex, @"HostSideClientName");
  if (isCFString(v18))
  {
    CFDictionarySetValue(v12, @"ClientName", v18);
  }

  v19 = CFDictionaryGetValue(ValueAtIndex, @"HostSideHostName");
  if (isCFString(v19))
  {
    CFDictionarySetValue(v12, @"HostName", v19);
  }

  v20 = CFDictionaryGetValue(ValueAtIndex, @"HostConnectionType");
  if (isCFNumber(v20))
  {
    if (CFNumberGetValue(v20, kCFNumberIntType, &v70))
    {
      v21 = v70;
      if (v70 < 7)
      {
        if (v20)
        {
          CFDictionarySetValue(v12, @"ConnectionType", v20);
          goto LABEL_30;
        }

LABEL_104:
        v35 = 0;
        v36 = 0;
        v24 = -1;
        goto LABEL_109;
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 67109120;
      *&buf[4] = v21;
      v43 = MEMORY[0x29EDCA988];
      v44 = "Unknown connection type: %d";
      v45 = 8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 0;
      v43 = MEMORY[0x29EDCA988];
      v44 = "Failed to get number.";
      v45 = 2;
    }

    _os_log_impl(&dword_299099000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, v45);
    goto LABEL_104;
  }

LABEL_30:
  v22 = CFDictionaryGetValue(ValueAtIndex, @"EscrowBag");
  v23 = CFDictionaryGetValue(ValueAtIndex, @"EscrowSecret");
  if (isCFData(v22) && isCFData(v23) && !unlock_with_escrow(&cf, v22, v23, 0))
  {
    goto LABEL_104;
  }

  v24 = valuePtr;
  if (v70 - 7 > 0xFFFFFFFD)
  {
    theDicta = theDict;
    v67 = a1;
    valuePtr = -1;
  }

  else
  {
    v25 = CFDictionaryGetValue(ValueAtIndex, @"HostIP");
    v26 = accept_with_timeout(v24, 5, v25);
    v24 = v26;
    if (v26 == -1)
    {
LABEL_107:
      v35 = 0;
LABEL_108:
      v36 = 0;
      goto LABEL_109;
    }

    theDicta = theDict;
    v67 = a1;
    _disable_sigpipe(v26);
    _disable_wake_from_sleep(v24);
  }

  v46 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040A8488062uLL);
  if (!v46)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to allocate memory.", buf, 2u);
    }

    goto LABEL_107;
  }

  v35 = v46;
  v47 = lockconn_new();
  if (!v47)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to allocate connection.", buf, 2u);
    }

    goto LABEL_108;
  }

  v36 = v47;
  lockconn_init(v47, v24, v70);
  v48 = CFDictionaryGetValue(ValueAtIndex, @"DeviceCertificate");
  v49 = CFDictionaryGetValue(ValueAtIndex, @"DevicePrivateKey");
  v50 = CFDictionaryGetValue(ValueAtIndex, @"HostRootCertificate");
  if (!isCFData(v48) || !isCFData(v49))
  {
    goto LABEL_111;
  }

  if (isCFData(v50))
  {
    if (lockconn_enable_ssl(v36, v48, v49, v50, 0))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v51 = MEMORY[0x29EDCA988];
        v52 = "Failed to enable SSL.";
LABEL_123:
        _os_log_impl(&dword_299099000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
        goto LABEL_109;
      }

      goto LABEL_109;
    }

LABEL_111:
    if (CFDictionaryContainsKey(ValueAtIndex, @"UseHostTracker") && !CFDictionaryContainsKey(theDicta, @"NoHeartBeat"))
    {
      *buf = 0;
      v59 = CFDictionaryGetValue(ValueAtIndex, @"HostID");
      v60 = CFDictionaryGetValue(ValueAtIndex, @"HostSideHostName");
      v61 = CFDictionaryGetValue(ValueAtIndex, @"HostSideClientName");
      HBWatchFDForHost(v24, v59, v60, v61, buf, v62, v63, v64, v65);
      lockconn_set_heartbeat_ref(v36, *buf);
    }

    if (cf)
    {
      lockconn_set_keybag_handle(v36, cf, v53, v54, v55, v56, v57, v58, v65);
    }

    *v35 = v36;
    *v67 = v35;
    v32 = 0;
    v35 = 0;
    v36 = 0;
    if (a3)
    {
      *a3 = CFRetain(v12);
    }

    v24 = -1;
    goto LABEL_110;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v51 = MEMORY[0x29EDCA988];
    v52 = "Invalid root certificate.";
    goto LABEL_123;
  }

LABEL_109:
  v32 = 1;
LABEL_110:
  CFRelease(v12);
  CFRelease(v14);
  v30 = 0;
LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v35)
  {
    free(v35);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  if (valuePtr != -1)
  {
    close(valuePtr);
  }

  if (v36)
  {
    lockconn_disable_ssl(v36);
    lockconn_close(v36);
    lockconn_free(v36);
  }

  if (v24 != -1)
  {
    close(v24);
  }

  v39 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t lockdown_checkin_xpc(const char *a1, const void *a2, NSObject *a3, uint64_t a4)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(a1, global_queue, 1uLL);
  if (mach_service)
  {
    v10 = mach_service;
    if (a2)
    {
      CFRetain(a2);
    }

    if (!a3)
    {
      a3 = global_queue;
    }

    dispatch_retain(a3);
    *buf = 0;
    v14 = buf;
    v15 = 0x2000000000;
    v16 = 0;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = __lockdown_checkin_xpc_block_invoke;
    handler[3] = &unk_29EF06AB0;
    handler[6] = v10;
    handler[7] = a2;
    handler[8] = a3;
    handler[4] = a4;
    handler[5] = buf;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(v10);
    _Block_object_dispose(buf, 8);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Could not create XPC listener", buf, 2u);
    }

    return 1;
  }
}

void __secure_lockdown_checkin_block_invoke(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Unexpected second connection to %s.", &v7, 0xCu);
    }
  }

  else
  {
    *(v4 + 24) = 1;
    **(a1 + 48) = a2;
    if (*(a1 + 56))
    {
      **(a1 + 56) = CFRetain(cf);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
  dispatch_release(*(a1 + 64));
  v6 = *MEMORY[0x29EDCA608];
}

BOOL ack_checkin(_xpc_connection_s *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v8 = v2;
  if (v2)
  {
    xpc_dictionary_set_BOOL(v2, "ACK", 1);
    xpc_connection_send_message(a1, v8);
    xpc_release(v8);
  }

  else
  {
    locklog(0, "ack_checkin", @"Couldn't construct a checkin reply message.", v3, v4, v5, v6, v7, v10);
  }

  return v8 != 0;
}

void HBWatchFDForHost(int a1, const __CFString *a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    v10 = a4;
    v14 = xpc_dictionary_create(0, 0, 0);
    if (v14)
    {
      v15 = v14;
      mach_service = xpc_connection_create_mach_service("com.apple.mobile.heartbeat", 0, 0);
      if (mach_service)
      {
        v22 = mach_service;
        v23 = copy_cstr_from_cfstr(a2);
        if (v23)
        {
          v29 = v23;
          if (v10 && (v10 = copy_cstr_from_cfstr(v10)) == 0)
          {
            locklog(0, "HBWatchFDForHost", @"Failed to convert client name string.", v30, v31, v32, v33, v34, v49);
            free(v29);
          }

          else
          {
            if (a3 && (a3 = copy_cstr_from_cfstr(a3)) == 0)
            {
              locklog(0, "HBWatchFDForHost", @"Failed to convert host name string.", v35, v36, v37, v38, v39, v49);
              v46 = 0;
            }

            else
            {
              xpc_dictionary_set_uint64(v15, "HB_PARAM_COMMAND", 1uLL);
              xpc_dictionary_set_fd(v15, "HB_PARAM_FD", a1);
              xpc_dictionary_set_string(v15, "HB_PARAM_HOSTID", v29);
              xpc_dictionary_set_uint64(v15, "HB_PARAM_THEIRFD", a1);
              if (v10)
              {
                xpc_dictionary_set_string(v15, "HB_PARAM_CLIENTNAME", v10);
              }

              if (a3)
              {
                xpc_dictionary_set_string(v15, "HB_PARAM_HOSTNAME", a3);
              }

              xpc_connection_set_event_handler(v22, &__block_literal_global_116);
              xpc_connection_resume(v22);
              v40 = xpc_connection_send_message_with_reply_sync(v22, v15);
              v46 = v40;
              if (v40)
              {
                if (a5)
                {
                  *a5 = xpc_dictionary_get_uint64(v40, "HB_PARAM_REF");
                }
              }

              else
              {
                locklog(0, "HBWatchFDForHost", @"Failed to send xpc message.", v41, v42, v43, v44, v45, v49);
              }
            }

            free(v29);
            if (v10)
            {
              free(v10);
            }

            if (a3)
            {
              free(a3);
            }

            if (v46)
            {
              xpc_release(v46);
            }
          }
        }

        else
        {
          locklog(0, "HBWatchFDForHost", @"Failed to convert host id string.", v24, v25, v26, v27, v28, v49);
        }

        xpc_release(v15);
        v48 = v22;
      }

      else
      {
        locklog(0, "HBWatchFDForHost", @"Failed to create xpc mach service.", v17, v18, v19, v20, v21, v49);
        v48 = v15;
      }

      xpc_release(v48);
      return;
    }

    v47 = @"Failed to allocate xpc dictionary.";
  }

  else
  {
    v47 = @"Invalid host id.";
  }

  locklog(0, "HBWatchFDForHost", v47, a4, a5, a6, a7, a8, a9);
}

void __lockdown_checkin_xpc_block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C297790](a2) == MEMORY[0x29EDCA9F0])
  {
    *v18 = 0u;
    v19 = 0u;
    xpc_connection_get_audit_token();
    v4 = xpc_copy_entitlement_for_token();
    if (v4 && (v5 = v4, v6 = MEMORY[0x29EDCA9B0], xpc_release(v4), v5 == v6))
    {
      v11 = xpc_retain(*(a1 + 48));
      xpc_connection_set_context(a2, v11);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = __lockdown_checkin_xpc_block_invoke_2;
      handler[3] = &unk_29EF06A88;
      v14 = a2;
      v15 = *(a1 + 56);
      v13 = *(a1 + 32);
      xpc_connection_set_event_handler(a2, handler);
      xpc_connection_resume(a2);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        pid = xpc_connection_get_pid(a2);
        _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "connection attempt from pid %d missing entitlement: iamlockdown", buf, 8u);
      }

      xpc_connection_cancel(a2);
    }
  }

  else
  {
    if (a2 == MEMORY[0x29EDCA9D0])
    {
      syslog(6, "XPC connection closing, time to go");
    }

    else if (a2 == MEMORY[0x29EDCA9C0] && (*(*(*(a1 + 40) + 8) + 24) & 1) != 0)
    {
      syslog(6, "XPC listener can now be shutdown");
    }

    else
    {
      v7 = MEMORY[0x29C297680](a2);
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 136315138;
        *&v18[4] = v7;
        _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Unexpected XPC event '%s' on xpc listener", v18, 0xCu);
      }

      free(v7);
    }

    xpc_connection_cancel(*(a1 + 48));
    xpc_release(*(a1 + 48));
    v8 = *(a1 + 64);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void __lockdown_checkin_xpc_block_invoke_2(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  context = xpc_connection_get_context(*(a1 + 48));
  if (MEMORY[0x29C297790](a2) != MEMORY[0x29EDCAA00])
  {
    if (a2 == MEMORY[0x29EDCA9D0])
    {
      syslog(6, "XPC connection should close now");
    }

    else if (a2 == MEMORY[0x29EDCA9C0])
    {
      syslog(6, "The connection is now invalid.");
    }

    else
    {
      v5 = MEMORY[0x29C297680](a2);
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v48 = v5;
        _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Unexpected XPC event '%s' on xpc connection", buf, 0xCu);
      }

      free(v5);
    }

LABEL_9:
    xpc_connection_cancel(*(a1 + 48));
    goto LABEL_10;
  }

  v8 = xpc_dictionary_get_BOOL(a2, "_LDKEEPCONNALIVE");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "_LDSHUTDOWNLISTENER");
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  theDict = 0;
  cf = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v34 = 0;
  bzero(buf, 0x400uLL);
  v12 = lockdown_copy_checkin_info(a2, &cf);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *block = 67109120;
      *&block[4] = v13;
      _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "lockdown_copy_checkin_info failed (%d).", block, 8u);
    }

    v14 = 0;
    goto LABEL_20;
  }

  if (v9)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  v14 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"CheckinConnectionInfo", cf);
  v16 = secure_lockdown_checkin(&v34, v14);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CheckinPath");
    v18 = isCFString(Value);
    if (v18)
    {
      v19 = v18;
      CString = CFStringGetCString(v18, buf, 1024, 0x8000100u);
      if (!CString)
      {
        locklog(CString, "handle_lockdown_xpc_message", @"CFStringGetCString failure for %@", v21, v22, v23, v24, v25, v19);
        if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *block = 0;
        v26 = MEMORY[0x29EDCA988];
        v27 = "hinkyness";
        v28 = 2;
        goto LABEL_42;
      }
    }
  }

  if (v16)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *block = 136315394;
    *&block[4] = buf;
    *&block[12] = 1024;
    *&block[14] = v16;
    v26 = MEMORY[0x29EDCA988];
    v27 = "Could not check in with lockdown at '%s': %d";
    v28 = 18;
LABEL_42:
    _os_log_impl(&dword_299099000, v26, OS_LOG_TYPE_DEFAULT, v27, block, v28);
    goto LABEL_20;
  }

  if (v34)
  {
    v29 = lockconn_sock(*v34);
    v30 = "out";
    if (v34 && lockconn_sslcontext(*v34))
    {
      v30 = "";
    }
  }

  else
  {
    v30 = "out";
    v29 = -1;
  }

  syslog(6, "Checked in with lockdown on path '%s' socket %d with%s SSL", buf, v29, v30);
  if (a2 && (v31 = v34) != 0)
  {
    xpc_retain(a2);
    v32 = *(v31 + 8);
    if (v32)
    {
      xpc_release(v32);
    }

    *(v31 + 8) = a2;
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *block = 0;
    _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Invalid input(s).", block, 2u);
  }

  v33 = v34;
  if (!*(v34 + 16))
  {
    *(v33 + 16) = os_transaction_create();
  }

  v36[3] = os_transaction_create();
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 0x40000000;
  *&block[16] = __handle_lockdown_xpc_message_block_invoke;
  v42 = &unk_29EF06AF8;
  v45 = v34;
  v46 = theDict;
  v43 = v11;
  v44 = &v35;
  dispatch_async(v10, block);
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v35, 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  xpc_connection_suspend(*(a1 + 48));
LABEL_10:
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && context != 0)
  {
    xpc_connection_cancel(context);
    xpc_release(context);
    xpc_connection_set_context(*(a1 + 48), 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t *lockdown_get_securecontext(uint64_t *result)
{
  if (result)
  {
    return lockconn_sslcontext(*result);
  }

  return result;
}

uint64_t lockdown_set_value(uint64_t *a1, const void *a2, const void *a3, const void *a4)
{
  cf = 0;
  send_set_value(*a1, a2, a3, a4, &cf);
  if (!cf)
  {
    return 0;
  }

  v4 = _convert_error(cf);
  CFRelease(cf);
  return v4;
}

uint64_t _convert_error(const __CFString *a1)
{
  if (!isCFString(a1) || CFStringCompare(a1, @"InvalidResponse", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"MissingKey", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"MissingValue", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(a1, @"GetProhibited", 0) == kCFCompareEqualTo)
  {
    return 4;
  }

  if (CFStringCompare(a1, @"SetProhibited", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"RemoveProhibited", 0) == kCFCompareEqualTo)
  {
    return 6;
  }

  if (CFStringCompare(a1, @"ImmutableValue", 0) == kCFCompareEqualTo)
  {
    return 7;
  }

  if (CFStringCompare(a1, @"InvalidCheckin", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"CheckinTimeout", 0))
  {
    return 0;
  }

  return 9;
}

uint64_t lockdown_save_value(uint64_t *a1, const void *a2, const void *a3, const void *a4)
{
  cf = 0;
  send_save_value(*a1, a2, a3, a4, &cf);
  if (!cf)
  {
    return 0;
  }

  v4 = _convert_error(cf);
  CFRelease(cf);
  return v4;
}

uint64_t lockdown_remove_value(uint64_t *a1, const void *a2, const void *a3)
{
  cf = 0;
  send_remove_value(*a1, a2, a3, &cf);
  if (!cf)
  {
    return 0;
  }

  v3 = _convert_error(cf);
  CFRelease(cf);
  return v3;
}

uint64_t lockdown_copy_identity(uint64_t *a1)
{
  value = send_get_value(*a1, 0, @"ActivationPrivateKey", 0);
  v3 = send_get_value(*a1, 0, @"DeviceCertificate", 0);
  v4 = lockcrypto_cert_from_pem_data(v3);
  if (v4)
  {
    v5 = v4;
    v6 = lockcrypto_private_key_from_pem_data(value);
    if (v6)
    {
      v7 = v6;
      v8 = SecIdentityCreate();
      CFRelease(v7);
    }

    else
    {
      lockdown_copy_identity_cold_1(&v10);
      v8 = v10;
    }

    CFRelease(v5);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  lockdown_copy_identity_cold_2(&v10);
  v8 = v10;
  if (v3)
  {
LABEL_5:
    CFRelease(v3);
  }

LABEL_6:
  if (value)
  {
    CFRelease(value);
  }

  return v8;
}

const void *lockdown_copy_DPK()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"ActivationPrivateKey", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_ticket_status()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"WeHaveATicket", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_activationState()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"ActivationState", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_brickState()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"BrickState", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_trustedHostAttached()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"TrustedHostAttached", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_raptor()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"UseRaptorCerts", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

uint64_t *lockdown_copy_deviceIdentity()
{
  result = lockdown_connect();
  if (result)
  {
    v1 = result;
    v2 = lockdown_copy_identity(result);
    lockdown_disconnect(v1);
    return v2;
  }

  return result;
}

const void *lockdown_copy_deviceCertificate()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"DeviceCertificate", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

const void *lockdown_copy_ticket()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, @"com.apple.fmip", @"ActivationRecord", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

BOOL lockdown_wifi_sync_enabled()
{
  v0 = lockdown_connect();
  v1 = v0;
  if (v0)
  {
    value = send_get_value(*v0, @"com.apple.mobile.wireless_lockdown", @"EnableWifiConnections", 0);
    lockdown_disconnect(v1);
    if (value)
    {
      v1 = value == *MEMORY[0x29EDB8F00];
      CFRelease(value);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

BOOL lockdown_wifi_debug_enabled()
{
  v0 = lockdown_connect();
  v1 = v0;
  if (v0)
  {
    value = send_get_value(*v0, @"com.apple.mobile.wireless_lockdown", @"EnableWifiDebugging", 0);
    lockdown_disconnect(v1);
    if (value)
    {
      v1 = value == *MEMORY[0x29EDB8F00];
      CFRelease(value);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

BOOL lockdown_set_fmipticket(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    cf = 0;
    v2 = lockdown_connect();
    if (v2)
    {
      v3 = v2;
      v1 = send_set_value(*v2, @"com.apple.fmip", @"ActivationRecord", v1, &cf) == 0;
      if (cf)
      {
        CFRelease(cf);
      }

      lockdown_disconnect(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t *lockdown_is_host_trusted(const void *a1, const void *a2, CFStringRef *a3)
{
  result = lockdown_connect();
  if (result)
  {
    v7 = result;
    is_host_trusted = send_is_host_trusted(*result, a1, a2, a3);
    lockdown_disconnect(v7);
    return is_host_trusted;
  }

  return result;
}

uint64_t lockdown_reset_pairing_internal(int a1)
{
  cf = 0;
  v2 = lockdown_connect();
  if (!v2)
  {
    return 8;
  }

  v3 = v2;
  send_reset_pairing(*v2, a1, &cf);
  if (cf)
  {
    v4 = _convert_error(cf);
    CFRelease(cf);
  }

  else
  {
    v4 = 0;
  }

  lockdown_disconnect(v3);
  return v4;
}

const void *lockdown_copy_regulatoryvariant()
{
  cf = 0;
  v0 = lockdown_connect();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  value = send_get_value(*v0, 0, @"ActivationRegulatoryVariant", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  lockdown_disconnect(v1);
  return value;
}

uint64_t *lockdown_enable_wireless_pairing(int a1)
{
  result = lockdown_connect();
  if (result)
  {
    v3 = result;
    v4 = send_enable_wireless_pairing(*result, a1);
    lockdown_disconnect(v3);
    return v4;
  }

  return result;
}

uint64_t *lockdown_connection_is_wifi(uint64_t *result)
{
  if (result)
  {
    return (lockconn_type(*result) == 3);
  }

  return result;
}

uint64_t *lockdown_connection_is_usb(uint64_t *result)
{
  if (result)
  {
    return (lockconn_type(*result) == 1);
  }

  return result;
}

uint64_t *lockdown_connection_is_proxy(uint64_t *result)
{
  if (result)
  {
    return (lockconn_type(*result) == 2);
  }

  return result;
}

const void *lockdown_copy_paired_host_info()
{
  cf = 0;
  v0 = lockdown_connect();
  if (v0)
  {
    v1 = v0;
    value = send_get_value(*v0, @"com.apple.mobile.lockdown.paired_host_info", 0, &cf);
    if (!value && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      lockdown_copy_paired_host_info_cold_1(&cf);
    }

    lockdown_disconnect(v1);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      lockdown_copy_paired_host_info_cold_2();
    }

    return 0;
  }

  return value;
}

uint64_t lockdown_unpair_host_by_id(void *a1)
{
  cf = 0;
  v2 = lockdown_connect();
  if (v2)
  {
    v3 = v2;
    if (send_unpair(*v2, a1, &cf))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        lockdown_unpair_host_by_id_cold_1(a1, &cf);
      }

      v4 = 6;
    }

    else
    {
      v4 = 0;
    }

    lockdown_disconnect(v3);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      lockdown_copy_paired_host_info_cold_2();
    }

    return 8;
  }

  return v4;
}

xpc_object_t cfbag_xpc_retain(int a1, xpc_object_t object)
{
  if (object)
  {
    xpc_retain(object);
  }

  return object;
}

void cfbag_xpc_release(int a1, xpc_object_t object)
{
  if (object)
  {
    xpc_release(object);
  }
}

void *copy_cstr_from_cfstr(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 2, 0xFD67C359uLL);
  if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

void __handle_lockdown_xpc_message_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  (*(a1[4] + 16))();
  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  os_release(*(*(a1[5] + 8) + 24));
  *(*(a1[5] + 8) + 24) = 0;
}

const void *isCFNumber(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *isCFDictionary(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFDictionaryGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *isCFArray(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFArrayGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *isCFString(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *isCFData(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFDataGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *isCFBag(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFBagGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _disable_wake_from_sleep(int a1)
{
  v10 = 1;
  v1 = setsockopt(a1, 0xFFFF, 0x10000, &v10, 4u);
  if (v1 == -1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    locklog(0, "_disable_wake_from_sleep", @"setsockopt(SO_NOWAKEFROMSLEEP) failed: %s", v4, v5, v6, v7, v8, v3);
  }

  return v1 != -1;
}

CFStringRef createIPString(int a1, char *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0u;
  v11 = 128;
  if (getpeername(a1, &v13, &v11))
  {
    createIPString_cold_1();
    goto LABEL_10;
  }

  if (v13.sa_family == 30)
  {
    if (inet_ntop(30, &v13.sa_data[6], cStr, 0x80u))
    {
      v8 = 1;
      goto LABEL_8;
    }

    createIPString_cold_2();
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  if (v13.sa_family != 2)
  {
    locklog(0, "createIPString", @"Unknown socket family %d", v3, v4, v5, v6, v7, v13.sa_family);
    goto LABEL_10;
  }

  if (!inet_ntop(2, &v13.sa_data[2], cStr, 0x80u))
  {
    createIPString_cold_3();
    goto LABEL_10;
  }

  v8 = 0;
LABEL_8:
  *a2 = v8;
  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t accept_with_timeout(int a1, int a2, const void *a3)
{
  v45 = 0;
  v46 = 0;
  memset(&v47, 0, sizeof(v47));
  if (__darwin_check_fd_set_overflow(a1, &v47, 0))
  {
    *(v47.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  if (a2)
  {
    LODWORD(v46) = 0;
    v45 = a2;
    v6 = &v45;
  }

  else
  {
    v6 = 0;
  }

  v7 = select(a1 + 1, &v47, 0, 0, v6);
  if (!v7)
  {
    locklog(v7, "accept_with_timeout", @"Timed out waiting for a connection", v8, v9, v10, v11, v12, v43);
    return 0xFFFFFFFFLL;
  }

  if (v7 == -1)
  {
    v13 = __error();
    v14 = strerror(*v13);
    locklog(0, "accept_with_timeout", @"select error: %s", v15, v16, v17, v18, v19, v14);
    return 0xFFFFFFFFLL;
  }

  v22 = accept(a1, 0, 0);
  v20 = v22;
  if (v22 == -1)
  {
    v36 = __error();
    v37 = strerror(*v36);
    locklog(0, "accept_with_timeout", @"Could not accept: %s", v38, v39, v40, v41, v42, v37);
    return v20;
  }

  if (a3)
  {
    v23 = createIPString(v22, &v44);
    if (!v23)
    {
      locklog(0, "accept_with_timeout", @"createIPString failed", v24, v25, v26, v27, v28, v43);
      close(v20);
      return 0xFFFFFFFFLL;
    }

    v29 = v23;
    v30 = CFEqual(v23, a3);
    if (!v30)
    {
      locklog(v30, "accept_with_timeout", @"Denying unauthorized host from %@, was expecting %@.", v31, v32, v33, v34, v35, v29);
      close(v20);
      v20 = 0xFFFFFFFFLL;
    }

    CFRelease(v29);
  }

  return v20;
}

CFTypeRef copy_array_from_xpc_data(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  if (!a1 || MEMORY[0x29C297790]() != MEMORY[0x29EDCA9F8])
  {
    locklog(0, "copy_array_from_xpc_data", @"Invalid input(s).", a4, a5, a6, a7, a8, v29);
    return 0;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  v14 = CFDataCreateWithBytesNoCopy(v11, bytes_ptr, length, *MEMORY[0x29EDB8EE8]);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = CFPropertyListCreateWithData(0, v14, 0, 0, &error);
  if (v16)
  {
    v22 = v16;
    v23 = CFGetTypeID(v16);
    if (v23 == CFArrayGetTypeID())
    {
      v9 = CFRetain(v22);
    }

    else
    {
      locklog(0, "copy_array_from_xpc_data", @"XPC data is not an array.", v24, v25, v26, v27, v28, v29);
      v9 = 0;
    }

    CFRelease(v22);
  }

  else
  {
    locklog(0, "copy_array_from_xpc_data", @"Failed to create data: %@", v17, v18, v19, v20, v21, error);
    v9 = 0;
  }

  CFRelease(v15);
  if (error)
  {
    CFRelease(error);
  }

  return v9;
}

CFTypeRef copy_dict_from_xpc_data(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  if (!a1 || MEMORY[0x29C297790]() != MEMORY[0x29EDCA9F8])
  {
    locklog(0, "copy_dict_from_xpc_data", @"Invalid input(s).", a4, a5, a6, a7, a8, v29);
    return 0;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  v14 = CFDataCreateWithBytesNoCopy(v11, bytes_ptr, length, *MEMORY[0x29EDB8EE8]);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = CFPropertyListCreateWithData(0, v14, 0, 0, &error);
  if (v16)
  {
    v22 = v16;
    v23 = CFGetTypeID(v16);
    if (v23 == CFDictionaryGetTypeID())
    {
      v9 = CFRetain(v22);
    }

    else
    {
      locklog(0, "copy_dict_from_xpc_data", @"XPC data is not a dictionary.", v24, v25, v26, v27, v28, v29);
      v9 = 0;
    }

    CFRelease(v22);
  }

  else
  {
    locklog(0, "copy_dict_from_xpc_data", @"Failed to create data: %@", v17, v18, v19, v20, v21, error);
    v9 = 0;
  }

  CFRelease(v15);
  if (error)
  {
    CFRelease(error);
  }

  return v9;
}

void lockdown_copy_identity_cold_1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Can't convert pem key", v2, 2u);
  }

  *a1 = 0;
}

void lockdown_copy_identity_cold_2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_299099000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Can't convert pem cert", v2, 2u);
  }

  *a1 = 0;
}

void lockdown_copy_paired_host_info_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void lockdown_unpair_host_by_id_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x29EDCA608];
}

void createIPString_cold_1()
{
  v0 = __error();
  v1 = strerror(*v0);
  locklog(0, "createIPString", @"Can't get socket address: %s", v2, v3, v4, v5, v6, v1);
}

void createIPString_cold_2()
{
  v0 = __error();
  v1 = strerror(*v0);
  locklog(0, "createIPString", @"Can't convert to ipv6 string: %s", v2, v3, v4, v5, v6, v1);
}

void createIPString_cold_3()
{
  v0 = __error();
  v1 = strerror(*v0);
  locklog(0, "createIPString", @"Can't convert to ipv4 string: %s", v2, v3, v4, v5, v6, v1);
}

SSLContext *lockssl_handshake(int a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, int a5)
{
  cf = 0;
  trust = 0;
  error = 0;
  certificates = 0;
  context = 0;
  v14 = lockcrypto_cert_from_pem_data(a2);
  v15 = MEMORY[0x29EDB8ED8];
  if (v14)
  {
    v16 = lockcrypto_private_key_from_pem_data(a3);
    if (v16)
    {
      v22 = v16;
      _SSLNewContext();
      locklog(0, "lockssl_create_context", @"Could not create SSL context", v53, v54, v55, v56, v57, v58);
      goto LABEL_5;
    }
  }

  else
  {
    locklog(0, "lockssl_create_context", @"Could not decode certificate", v9, v10, v11, v12, v13, v58);
    v22 = lockcrypto_private_key_from_pem_data(a3);
    if (v22)
    {
LABEL_5:
      CFRelease(v22);
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  locklog(0, "lockssl_create_context", @"Could not decode private key", v17, v18, v19, v20, v21, v58);
  if (v14)
  {
LABEL_6:
    CFRelease(v14);
  }

LABEL_7:
  v28 = context;
  if (!context)
  {
    locklog(0, "lockssl_handshake", @"Could not create ssl context", v23, v24, v25, v26, v27, v58);
LABEL_30:
    v50 = 0;
    LockdownPairing = 0;
    v49 = 0;
    goto LABEL_31;
  }

  if (SSLSetProtocolVersionMin(context, kTLSProtocol1))
  {
    v52 = @"Could Not Set Minimum Protocol Version";
LABEL_54:
    locklog(0, "lockssl_handshake", v52, v29, v30, v31, v32, v33, v58);
    goto LABEL_55;
  }

  v34 = SSLSetConnection(v28, a1);
  if (!v34)
  {
    SSLSetSessionOption(v28, (2 * (a5 == 0)), 1u);
    v40 = *v15;
    v41 = MEMORY[0x29EDB9000];
    do
    {
      v42 = SSLHandshake(v28);
      if (v42 == -9841)
      {
        if (_SSLCopyPeerCertificates())
        {
          v52 = @"SSLCopyPeerCertificates failed";
          goto LABEL_54;
        }

        LockdownPairing = SecPolicyCreateLockdownPairing();
        if (SecTrustCreateWithCertificates(certificates, LockdownPairing, &trust))
        {
          locklog(0, "lockssl_handshake", @"SecTrustCreateWithCertificates failed", v44, v45, v46, v47, v48, v58);
          goto LABEL_56;
        }

        cf = lockcrypto_cert_from_pem_data(a4);
        if (!cf)
        {
          goto LABEL_56;
        }

        v49 = CFArrayCreate(v40, &cf, 1, v41);
        if (SecTrustSetAnchorCertificates(trust, v49))
        {
          goto LABEL_57;
        }

        if (!SecTrustEvaluateWithError(trust, &error))
        {
          locklog(0, "lockssl_handshake", @"SecTrustEvalute failed", v29, v30, v31, v32, v33, v58);
          goto LABEL_57;
        }

        if (certificates)
        {
          CFRelease(certificates);
        }

        certificates = 0;
        if (v49)
        {
          CFRelease(v49);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        if (LockdownPairing)
        {
          CFRelease(LockdownPairing);
        }

        if (trust)
        {
          CFRelease(trust);
        }

        trust = 0;
        v42 = -9803;
      }
    }

    while (v42 == -9803);
    if (!v42)
    {
      goto LABEL_30;
    }

    v58 = v42;
    v52 = @"SSLHandshake returned %ld";
    goto LABEL_54;
  }

  locklog(0, "lockssl_handshake", @"SSLSetConnection returned %ld", v35, v36, v37, v38, v39, v34);
LABEL_55:
  LockdownPairing = 0;
LABEL_56:
  v49 = 0;
LABEL_57:
  v50 = v28;
  v28 = 0;
LABEL_31:
  if (certificates)
  {
    CFRelease(certificates);
  }

  certificates = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (LockdownPairing)
  {
    CFRelease(LockdownPairing);
  }

  if (trust)
  {
    CFRelease(trust);
  }

  trust = 0;
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v50)
  {
    SSLClose(v50);
    _SSLDisposeContext();
  }

  return v28;
}