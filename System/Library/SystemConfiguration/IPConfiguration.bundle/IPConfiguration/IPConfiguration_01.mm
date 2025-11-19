uint64_t sub_12F50()
{
  if (dword_700F4 < 0)
  {
    v1 = socket(30, 2, 0);
    dword_700F4 = v1;
    sub_2424();
    if (v1 < 0)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v5 = *__error();
        v6 = _os_log_pack_fill();
        v7 = __error();
        v8 = strerror(*v7);
        *v6 = 136315138;
        *(v6 + 4) = v8;
        __SC_log_send();
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v2 = *__error();
        v3 = _os_log_pack_fill();
        v4 = dword_700F4;
        *v3 = 67109120;
        v3[1] = v4;
        __SC_log_send();
      }

      if (off_70260)
      {
        off_70260();
      }
    }
  }

  return dword_700F4;
}

uint64_t sub_13158(uint64_t a1, int a2)
{
  v4 = sub_12F50();
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  memset(v18, 0, sizeof(v18));
  __strlcpy_chk();
  v6 = ioctl(v5, 0xC080696EuLL, v18);
  sub_7BE0(v6, a1, "SIOCPROTOATTACH_IN6");
  if (!v6)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315138;
      *(v16 + 4) = a1;
      __SC_log_send();
    }

    if (a2)
    {
      sub_409F0(v5, a1, 1, 0);
    }

    return 0;
  }

  return v6;
}

void sub_13310(const __CFString *a1)
{
  if (CFStringHasPrefix(a1, qword_701E8))
  {
    v2 = sub_40EC(a1, @"/", 3);
    v18 = v2;
    if (v2)
    {
      v3 = v2;
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      v4 = sub_13518(v2);
      if (v4)
      {
        v5 = v4;
        v6 = sub_144D8(*(v4 + 8));
        sub_16718(v19, v6);
        if (G_IPConfiguration_verbose)
        {
          v7 = sub_42980(v19);
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v8 = _os_log_pack_size();
            __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
            v16 = *__error();
            v17 = _os_log_pack_fill();
            *v17 = 138412546;
            *(v17 + 4) = v3;
            *(v17 + 12) = 2112;
            *(v17 + 14) = v7;
            __SC_log_send();
          }

          CFRelease(v7);
        }

        sub_36CD8(v5, v19);
        sub_8D44(v5 + 56, 15, v19);
        sub_37020(v5, v19);
        sub_17B18(v19);
      }

      sub_41E8(&v18);
    }
  }
}

uint64_t sub_13518(const void *a1)
{
  if (sub_295C(&unk_70160) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = sub_42C0(&unk_70160, v2);
    if (CFEqual(a1, *(v3 + 16)))
    {
      break;
    }

    if (++v2 >= sub_295C(&unk_70160))
    {
      return 0;
    }
  }

  return v3;
}

void sub_1359C()
{
  if (qword_70188)
  {
    sub_136C4();
  }

  if (byte_701C8 == 1)
  {
    byte_701C8 = 0;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
      v8 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    sub_17DBC();
  }
}

void sub_136C4()
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "perform_async_work_requiring_store";
    __SC_log_send();
  }

  if ((byte_70190 & 1) != 0 || byte_701AC)
  {
    Value = qword_70188;
    v19 = 0;
    v20 = 0;
    if (qword_70188)
    {
      NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
      v20 = NetworkGlobalEntity;
      if (!NetworkGlobalEntity)
      {
        goto LABEL_17;
      }

      v12 = sub_42EC(Value, NetworkGlobalEntity);
      v19 = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      Value = CFDictionaryGetValue(v12, kSCPropNetServiceOrder);
      TypeID = CFArrayGetTypeID();
      if (!Value)
      {
        goto LABEL_18;
      }

      if (CFGetTypeID(Value) != TypeID || (Count = CFArrayGetCount(Value)) == 0)
      {
LABEL_17:
        Value = 0;
        goto LABEL_18;
      }

      v15 = Count;
      if (Count >= 1)
      {
        v16 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v16);
          v18 = CFStringGetTypeID();
          if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v18)
          {
            goto LABEL_17;
          }
        }

        while (v15 != ++v16);
      }

      CFRetain(Value);
    }

LABEL_18:
    sub_41E8(&v20);
    sub_41E8(&v19);
    v20 = Value;
    if (byte_70190 == 1)
    {
      byte_70190 = 0;
      sub_13960(Value);
    }

    if (byte_701AC == 1)
    {
      byte_701AC = 0;
      sub_15260(Value);
    }

    sub_41E8(&v20);
  }

  if (byte_701B4 == 1)
  {
    byte_701B4 = 0;
    sub_1598C();
  }

  if (byte_701B0 == 1)
  {
    byte_701B0 = 0;
    sub_1653C();
  }

  sub_17B5C(qword_70188);
}

uint64_t sub_13960(const __CFArray *a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "linklocal_elect";
    __SC_log_send();
  }

  result = sub_295C(&unk_70160);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      v14 = sub_42C0(&unk_70160, i);
      if ((sub_10EE8(*(v14 + 8)) & 0x18) == 0)
      {
        v15 = *(v14 + 88);
        if (v15)
        {
          v16 = *(v15 + 48);
          if (!v16)
          {
            if (*(v15 + 100))
            {
              sub_13C40(*(v14 + 88), a1);
            }

            goto LABEL_6;
          }

          v17 = sub_498C(v14, v16, 1);
          if (!v17)
          {
            sub_13CE0(v14, *v15, (*(v15 + 24) >> 8) & 1);
            v15 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        if (sub_295C(v14 + 24) < 1)
        {
          v19 = 0;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 1048577;
          do
          {
            v21 = sub_42C0(v14 + 24, v18);
            v22 = *(v21 + 24);
            if (v22 != 261)
            {
              v23 = v21;
              if (*(v21 + 100) || (v22 == 259 ? (v25 = dword_70024 == 0) : (v25 = 1), !v25 && *(v21 + 28) == 9 && (*(*(v21 + 16) + 2) & 0x40) == 0))
              {
                v24 = sub_13C40(v21, a1);
                if (!v19 || v24 < v20 || !*(v19 + 100) && *(v23 + 100))
                {
                  v19 = v23;
                  v20 = v24;
                }
              }
            }

            ++v18;
          }

          while (v18 < sub_295C(v14 + 24));
        }

        if (v17 != v19)
        {
          if (v17)
          {
            sub_41E8(v17 + 7);
            sub_13CE0(v14, *v15, (*(v15 + 24) >> 8) & 1);
          }

          if (v19)
          {
            sub_33DA4(v19, *(v19 + 100) == 0);
          }
        }
      }

LABEL_6:
      result = sub_295C(&unk_70160);
    }
  }

  return result;
}

CFIndex sub_13C40(uint64_t a1, CFArrayRef theArray)
{
  v3 = *a1;
  if ((**(a1 + 16) & 0x10) != 0 && *(a1 + 24) == 259)
  {
    return 0;
  }

  v4 = 0x100000;
  if (theArray && v3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0x100000;
    }

    else
    {
      v4 = 0;
      v6 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (CFEqual(v3, ValueAtIndex))
        {
          break;
        }

        if (v6 == ++v4)
        {
          return 0x100000;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_13CE0(uint64_t a1, const void *a2, int a3)
{
  if (a3)
  {
    v6 = 24;
  }

  else
  {
    v6 = 56;
  }

  if (sub_295C(a1 + v6) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_42C0(a1 + v6, v7);
      if (CFEqual(a2, *v8))
      {
        break;
      }

      if (++v7 >= sub_295C(a1 + v6))
      {
        goto LABEL_10;
      }
    }

    sub_13DB8((a1 + v6), v7);
  }

LABEL_10:
  if (a3)
  {

    return sub_15204(a1);
  }

  else
  {

    return sub_33120(a1);
  }
}

uint64_t sub_13DB8(uint64_t *a1, unsigned int a2)
{
  v5 = 0;
  result = sub_13E08(a1, a2, &v5);
  if (result)
  {
    if (v5)
    {
      v4 = a1[2];
      if (v4)
      {
        v4();
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_13E08(uint64_t *a1, unsigned int a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 3);
    if (v6 > a2)
    {
      if (a3)
      {
        *a3 = *(v3 + 8 * a2);
      }

      if ((v6 + ~a2) >= 1)
      {
        memmove((*a1 + 8 * a2), (*a1 + 8 * a2 + 8), 8 * (v6 + ~a2));
        v6 = *(a1 + 3);
      }

      *(a1 + 3) = v6 - 1;
      return 1;
    }
  }

  return result;
}

void sub_13E90(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = *a1;
    v13 = sub_6160(*(a1 + 24));
    *v11 = 138412546;
    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    *(v11 + 14) = v13;
    __SC_log_send();
  }

  v14 = *(a1 + 16);
  *(a1 + 76) = 0;
  if (v14 && *(v14 + 88) == a1)
  {
    *(v14 + 88) = 0;
  }

  sub_8DB0(a1, 1, 0);
  sub_14C4C(a1, 0);
  sub_41E8(a1);
  sub_41E8((a1 + 48));
  sub_41E8((a1 + 56));
  v15 = *(a1 + 64);
  if (v15)
  {
    context = dispatch_get_context(v15);
    CFRelease(context);
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    CFRelease(v17);
  }

  free(a1);
}

uint64_t sub_1404C(uint64_t a1, int a2)
{
  if (sub_295C(a1 + 24) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    result = sub_42C0(a1 + 24, v4);
    if (*(result + 100) == a2)
    {
      break;
    }

    if (++v4 >= sub_295C(a1 + 24))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_140BC(uint64_t a1, int a2)
{
  v3 = HIBYTE(a2);
  v4 = BYTE2(a2);
  v5 = BYTE1(a2);
  v6 = a2;
  v7 = sub_14308(a1, a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2);
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (v7 < 0)
  {
    if (!result)
    {
      return result;
    }

    v19 = _os_log_pack_size();
    v32 = &v32;
    __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    v29 = __error();
    v30 = strerror(*v29);
    v31 = *__error();
    *v28 = 136316674;
    *(v28 + 4) = a1;
    *(v28 + 12) = 1024;
    *(v28 + 14) = v6;
    *(v28 + 18) = 1024;
    *(v28 + 20) = v5;
    *(v28 + 24) = 1024;
    *(v28 + 26) = v4;
    *(v28 + 30) = 1024;
    *(v28 + 32) = v3;
    *(v28 + 36) = 2080;
    *(v28 + 38) = v30;
    *(v28 + 46) = 1024;
    *(v28 + 48) = v31;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136316162;
    *(v18 + 4) = a1;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v6;
    *(v18 + 18) = 1024;
    *(v18 + 20) = v5;
    *(v18 + 24) = 1024;
    *(v18 + 26) = v4;
    *(v18 + 30) = 1024;
    *(v18 + 32) = v3;
  }

  return __SC_log_send();
}

uint64_t sub_14308(uint64_t a1, int a2)
{
  v4 = sub_7838();
  if ((v4 & 0x80000000) == 0)
  {
    v6 = 0u;
    v7 = 0u;
    LOWORD(v7) = 528;
    DWORD1(v7) = a2;
    __strlcpy_chk();
    v4 = ioctl(v4, 0x80206919uLL, &v6);
    sub_7BE0(v4, a1, "SIOCDIFADDR");
  }

  return v4;
}

uint64_t sub_143CC(int a1, int a2, int a3)
{
  result = arp_open_routing_socket();
  if ((result & 0x80000000) == 0)
  {
    v7 = result;
    if (a2)
    {
      arp_delete(result, a2, 0);
    }

    if (a3)
    {
      arp_delete(v7, a3, 0);
    }

    arp_flush(v7, 0, a1);
    sub_14908(v7);

    return close(v7);
  }

  return result;
}

uint64_t arp_open_routing_socket()
{
  v0 = socket(17, 3, 17);
  if ((v0 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  v3 = 1;
  if (ioctl(v0, 0x8004667EuLL, &v3) < 0)
  {
    close(v1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

unint64_t arp_delete(int a1, int a2, int a3)
{
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
  v7 = 0u;
  v8 = 0u;
  *__nbyte = 0u;
  v6 = 0u;
  result = arp_get(a1, __nbyte, a2, a3);
  if (!result)
  {
    DWORD1(v6) = ++dword_702E0;
    BYTE3(__nbyte[0]) = 2;
    return write(a1, __nbyte, LOWORD(__nbyte[0])) >> 63;
  }

  return result;
}

uint64_t arp_get(int a1, uint64_t a2, int a3, int a4)
{
  v8 = getpid();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 76) = 0u;
  *(a2 + 8) = 1024;
  if (a4)
  {
    *(a2 + 4) = a4;
    *(a2 + 8) = 16778240;
  }

  *(a2 + 12) = 1;
  *(a2 + 92) = xmmword_5D258;
  *(a2 + 96) = a3;
  *a2 = 285540460;
  v9 = dword_702E0 + 1;
  dword_702E0 = v9;
  *(a2 + 20) = v9;
  if (write(a1, a2, 0x6CuLL) != 108)
  {
    return 3;
  }

  *__error() = 0;
  if (read(a1, a2, 0x25CuLL) < 1)
  {
    return 4;
  }

  while (*(a2 + 3) != 4 || *(a2 + 20) != v9 || *(a2 + 16) != v8)
  {
    if (read(a1, a2, 0x25CuLL) < 1)
    {
      return 4;
    }
  }

  if ((~*(a2 + 12) & 3) != 0)
  {
    return 5;
  }

  if ((*(a2 + 8) & 0x402) != 0x400)
  {
    return 5;
  }

  if (*(a2 + 96) != a3)
  {
    return 5;
  }

  v11 = a2 + 92 + *(a2 + 92);
  if (*(v11 + 1) != 18)
  {
    return 5;
  }

  result = 0;
  v12 = *(v11 + 4);
  v13 = v12 > 0xF || ((1 << v12) & 0x83C0) == 0;
  if (v13 && v12 != 144)
  {
    return 5;
  }

  return result;
}

uint64_t arp_flush(int a1, int a2, int a3)
{
  size = 0;
  *v12 = xmmword_5D150;
  v13 = 0x40000000002;
  if (sysctl(v12, 6u, 0, &size, 0, 0) < 0)
  {
    return 1;
  }

  v6 = malloc_type_malloc(size, 0x59B17F11uLL);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if (sysctl(v12, 6u, v6, &size, 0, 0) < 0)
  {
    free(v7);
    return 1;
  }

  if (size >= 1)
  {
    v8 = v7 + size;
    v9 = v7;
    do
    {
      if ((a2 || *(v9 + 12)) && (!a3 || v9[48] != 65193 || v9[2] == a3) && *(v9 + *(v9 + 92) + 93) == 18)
      {
        *(v9 + 5) = ++dword_702E0;
        *(v9 + 3) = 2;
        write(a1, v9, *v9);
      }

      v9 = (v9 + *v9);
    }

    while (v9 < v8);
  }

  free(v7);
  return 0;
}

void sub_14908(uint64_t a1)
{
  v45 = 0;
  *v46 = xmmword_5D150;
  v47 = 0x1000000002;
  v2 = 3;
  while (1)
  {
    if (sysctl(v46, 6u, 0, &v45, 0, 0) < 0)
    {
      return;
    }

    v3 = malloc_type_malloc(v45, 0xE666D1EBuLL);
    if (!v3)
    {
      return;
    }

    v4 = v3;
    if ((sysctl(v46, 6u, v3, &v45, 0, 0) & 0x80000000) == 0)
    {
      break;
    }

    free(v4);
    if (!--v2)
    {
      return;
    }
  }

  if (v45 >= 1)
  {
    v6 = v4 + v45;
    *&v5 = 67110146;
    v41 = v5;
    v7 = v4;
    do
    {
      *(v7 + 3) = 2;
      *(v7 + 5) = arp_get_next_seq();
      v8 = write(a1, v7, *v7);
      sub_2424();
      if (v8 < 0)
      {
        v23 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v24 = _os_log_pack_size();
          v44 = &v41;
          __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
          v32 = *__error();
          v33 = _os_log_pack_fill();
          v43 = v23;
          v34 = a1;
          v35 = *(v7 + 96);
          v36 = v6;
          v37 = *(v7 + 97);
          v38 = *(v7 + 98);
          v42 = *(v7 + 99);
          v39 = __error();
          v40 = strerror(*v39);
          *v33 = v41;
          *(v33 + 4) = v35;
          a1 = v34;
          *(v33 + 8) = 1024;
          *(v33 + 10) = v37;
          v6 = v36;
          *(v33 + 14) = 1024;
          *(v33 + 16) = v38;
          *(v33 + 20) = 1024;
          *(v33 + 22) = v42;
          *(v33 + 26) = 2080;
          *(v33 + 28) = v40;
          goto LABEL_14;
        }
      }

      else
      {
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v44 = &v41;
          __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
          v17 = *__error();
          v18 = _os_log_pack_fill();
          v19 = *(v7 + 96);
          v20 = *(v7 + 97);
          v21 = *(v7 + 98);
          v22 = *(v7 + 99);
          *v18 = 67109888;
          *(v18 + 4) = v19;
          *(v18 + 8) = 1024;
          *(v18 + 10) = v20;
          *(v18 + 14) = 1024;
          *(v18 + 16) = v21;
          *(v18 + 20) = 1024;
          *(v18 + 22) = v22;
LABEL_14:
          __SC_log_send();
        }
      }

      v7 = (v7 + *v7);
    }

    while (v7 < v6);
  }

  free(v4);
}

_BYTE *sub_14C4C(_BYTE *result, int a2)
{
  v7 = 0;
  v2 = *(result + 2);
  *(result + 10) = 0;
  *(result + 7) = a2;
  if (qword_70188)
  {
    v3 = result;
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    byte_701B4 = 1;
    *(v2 + 152) = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
    v4 = *(v3 + 24);
    v6 = 0;
    if ((v4 & 0x100) != 0)
    {
      if ((*(*(v3 + 16) + 2) & 0x40) == 0)
      {
        sub_11084(v10, v9, kSCEntNetIPv4, 0, &v6);
      }

      v8 = sub_111C0(v3, 0, &v7);
      sub_11084(v10, v9, kSCEntNetDNS, v8, &v6);
      sub_11084(v10, v9, kSCEntNetCaptivePortal, v7, &v6);
      sub_11084(v10, v9, kSCEntNetDHCP, 0, &v6);
      v5 = *(v3 + 16);
      byte_701B0 = 1;
      *v5 |= 0x40u;
      dispatch_source_merge_data(qword_701C0, 1uLL);
    }

    else
    {
      sub_11084(v10, v9, kSCEntNetIPv6, 0, &v6);
      if ((*(*(v3 + 16) + 2) & 0x40) != 0)
      {
        sub_11084(v10, v9, kSCEntNetIPv4, 0, &v6);
      }

      sub_11084(v10, v9, @"DHCPv6", 0, &v6);
      v8 = sub_1CD84(v3, 0, &v7);
      sub_11084(v10, v9, kSCEntNetDNS, v8, &v6);
      sub_11084(v10, v9, kSCEntNetCaptivePortal, v7, &v6);
      sub_11084(v10, v9, kCFNull, 0, &v6);
      sub_11084(v10, v9, kSCEntNetPvD, 0, &v6);
    }

    sub_11F3C(qword_70188, *v3, v10, v9, v6, *(v3 + 36));
    dispatch_source_merge_data(qword_701C0, 1uLL);
    sub_41E8(&v8);
    sub_41E8(&v7);
    if (dword_700C0)
    {
      byte_701AC = 1;
      dispatch_source_merge_data(qword_701C0, 1uLL);
    }

    return sub_5474(v2, 0);
  }

  return result;
}

uint64_t sub_14F3C(uint64_t a1)
{
  if (sub_295C(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    result = sub_42C0(a1, v2);
    if (*(result + 76))
    {
      break;
    }

    if (++v2 >= sub_295C(a1))
    {
      return 0;
    }
  }

  return result;
}

void timer_callout_free(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      dispatch_source_cancel(v3);
      if (*(v1 + 56))
      {
        dispatch_resume(*(v1 + 40));
        *(v1 + 56) = 0;
      }

      dispatch_release(*(v1 + 40));
      *(v1 + 40) = 0;
    }

    free(*v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_15000(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[2];
      v16 = v3;
      v4 = sub_15194(v3 + 1, v2);
      if (v4 == -1)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = nullsub_1(*v3);
          *v14 = 136315138;
          *(v14 + 4) = v15;
          __SC_log_send();
        }
      }

      else
      {
        sub_15190(v3 + 1, v4, 0);
      }

      sub_A314(v2);
      timer_callout_free(v2 + 8);
      free(v2);
      *a1 = 0;
      if (!sub_295C(v3 + 1))
      {
        sub_2189C(&v16);
      }
    }
  }
}

uint64_t sub_15198(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    goto LABEL_4;
  }

LABEL_2:
  v4 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 12);
  }

  while (result < v4)
  {
    v5 = *a1;
    if (*a1)
    {
      if (result >= *(a1 + 12))
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v5 + 8 * result);
      }
    }

    if (v5 == a2)
    {
      return result;
    }

    ++result;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_4:
    v4 = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_15204(uint64_t a1)
{
  result = sub_295C(a1 + 24);
  if (!result)
  {
    v3 = *(a1 + 8);
    *a1 |= 1u;
    v4 = nullsub_1(v3);

    return sub_40D84(v4);
  }

  return result;
}

void sub_15260(const __CFArray *a1)
{
  v56[0] = 0;
  v56[1] = 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "DisableUntilNeededProcess";
    __SC_log_send();
  }

  sub_157D0(v56);
  v12 = sub_295C(&unk_70160);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      v15 = sub_42C0(&unk_70160, v13);
      v57 = 0;
      *v15 &= ~4u;
      v16 = sub_15704((v15 + 6), a1, &v57);
      if (v57)
      {
        *v15 |= 4u;
      }

      v17 = sub_15704((v15 + 14), a1, &v57);
      if (v57)
      {
        *v15 |= 4u;
      }

      if (v16 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v15[43] = v18;
      v19 = sub_2960(v56);
      if (v19 < 1)
      {
LABEL_16:
        sub_157D8(v56, v15);
      }

      else
      {
        v20 = 0;
        v21 = v19;
        while (v15[43] >= *(sub_42C8(v56, v20) + 172))
        {
          if (v21 == ++v20)
          {
            goto LABEL_16;
          }
        }

        sub_158B8(v56, v15, v20);
      }

      ++v13;
    }

    while (v13 != v14);
  }

  v22 = sub_2960(v56);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = v22;
    v26 = &off_70000;
    do
    {
      v27 = sub_42C8(v56, v24);
      v28 = v27;
      v29 = *(v27 + 8);
      if (*(v26 + 48) && *(v27 + 164) && (*(v27 + 168) ? (v30 = v23 == 0) : (v30 = 1), !v30))
      {
        if (!*(v27 + 160))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v44 = _os_log_pack_size();
            __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51);
            v52 = *__error();
            v53 = _os_log_pack_fill();
            v54 = nullsub_1(v29);
            *v53 = 136315138;
            *(v53 + 4) = v54;
            __SC_log_send();
            v26 = &off_70000;
          }

          v55 = nullsub_1(v29);
          sub_40874(v55, 0);
          *(v28 + 160) = 1;
        }
      }

      else if (*(v27 + 160))
      {
        *(v27 + 160) = 0;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v31 = _os_log_pack_size();
          __chkstk_darwin(v31, v32, v33, v34, v35, v36, v37, v38);
          v39 = *__error();
          v40 = _os_log_pack_fill();
          v41 = nullsub_1(v29);
          *v40 = 136315138;
          *(v40 + 4) = v41;
          __SC_log_send();
          v26 = &off_70000;
        }

        v42 = nullsub_1(v29);
        sub_40874(v42, 1);
        if (sub_295C(v28 + 24) >= 1)
        {
          v43 = nullsub_1(v29);
          sub_7A40(v43, 1);
        }

        if (sub_295C(v28 + 56) >= 1)
        {
          sub_12E30(v28, 1);
        }
      }

      if ((*v28 & 4) != 0)
      {
        v23 = 1;
      }

      ++v24;
    }

    while (v25 != v24);
  }

  sub_1595C(v56);
}

uint64_t sub_15704(uint64_t a1, const __CFArray *a2, _DWORD *a3)
{
  v6 = 1048577;
  *a3 = 0;
  v7 = sub_295C(a1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      v10 = sub_42C0(a1, v8);
      if (!*(v10 + 48))
      {
        v11 = v10;
        v12 = sub_13C40(v10, a2);
        if (v12 >= v6)
        {
          v6 = v6;
        }

        else
        {
          v6 = v12;
        }

        v13 = v11[6];
        if (v13 != 261 && v13 != 517 && v11[10] && !v11[7])
        {
          *a3 = 1;
        }
      }

      ++v8;
    }

    while (v9 != v8);
  }

  return v6;
}

void *sub_157D0(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

BOOL sub_157D8(uint64_t a1, uint64_t a2)
{
  result = sub_1581C(a1);
  if (result)
  {
    v5 = *a1;
    v6 = *(a1 + 12);
    *(a1 + 12) = v6 + 1;
    *(v5 + 8 * v6) = a2;
    return 1;
  }

  return result;
}

BOOL sub_1581C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!v2)
  {
    if (!v3)
    {
      v3 = 16;
      *(a1 + 8) = 16;
    }

    *(a1 + 12) = 0;
    v4 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
    goto LABEL_7;
  }

  if (v3 == *(a1 + 12))
  {
    *(a1 + 8) = 2 * v3;
    v4 = malloc_type_realloc(v2, 16 * v3, 0x80040B8603338uLL);
LABEL_7:
    *a1 = v4;
    return v4 != 0;
  }

  return 1;
}

BOOL sub_158B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 12);
  result = sub_1581C(a1);
  if (v6 <= a3)
  {
    if (!result)
    {
      return result;
    }

    v8 = *a1;
    v9 = *(a1 + 12);
    *(a1 + 12) = v9 + 1;
    *(v8 + 8 * v9) = a2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    memmove((*a1 + 8 * a3 + 8), (*a1 + 8 * a3), 8 * (*(a1 + 12) - a3));
    *(*a1 + 8 * a3) = a2;
    ++*(a1 + 12);
  }

  return 1;
}

void sub_1595C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

void sub_1598C()
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "ActiveDuringSleepProcess";
    __SC_log_send();
  }

  v10 = sub_295C(&unk_70160);
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    v13 = kSCEntNetInterfaceActiveDuringSleepSupported;
    do
    {
      v14 = sub_42C0(&unk_70160, v12);
      if (*(v14 + 152))
      {
        v15 = v14;
        *(v14 + 152) = 0;
        v18 = *(v14 + 156);
        v19 = 1;
        sub_8D44(v14 + 24, 17, &v18);
        if (*(v15 + 156))
        {
          v16 = v19 == 0;
        }

        else
        {
          v16 = 1;
        }

        v17 = !v16;
        sub_CED0(v15, v13, v17);
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

void sub_15B34(uint64_t a1, _DWORD *a2)
{
  v4 = sub_1688(a1);
  v5 = sub_1690(a1);
  valuePtr = 0;
  if (!*a2 || !sub_1CE28(a1) || !*(v4 + 56) || *(v4 + 64) == 0.0)
  {
LABEL_34:
    if (*(v4 + 2344) != 0.0)
    {
      v39 = sub_30CEC(a1);
      v40 = CFDateCreate(0, *(v4 + 2344));
      IOPMCancelScheduledPowerEvent(v40, v39, @"wake");
      CFRelease(v39);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v41 = _os_log_pack_size();
        __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
        v49 = *__error();
        v50 = _os_log_pack_fill();
        v51 = nullsub_1(v5);
        v52 = *(v4 + 2344);
        *v50 = 136315650;
        *(v50 + 4) = v51;
        *(v50 + 12) = 2112;
        *(v50 + 14) = v40;
        *(v50 + 22) = 2048;
        *(v50 + 24) = v52;
        __SC_log_send();
      }

      CFRelease(v40);
      *(v4 + 2344) = 0;
    }

    return;
  }

  current_time = timer_get_current_time();
  v8 = *(v4 + 64);
  if (current_time >= v8)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = nullsub_1(v5);
      *v22 = 136315138;
      *(v22 + 4) = v23;
      __SC_log_send();
    }

    v24 = "lease is expired";
    goto LABEL_31;
  }

  v9 = *(v4 + 192);
  v10 = dword_70078;
  v11 = *(v4 + 96);
  if (current_time < v9 && v9 - current_time >= v10)
  {
    if (v11 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = ((v11 - v9) * 0.5);
      valuePtr = v12;
    }

    v24 = "wake at renew_rebind_time";
    goto LABEL_30;
  }

  v25 = v11 - current_time;
  if (current_time < v11 && v25 >= v10)
  {
    if (v8 <= v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = ((v8 - v11) * 0.5);
      valuePtr = v12;
    }

    v24 = "wake at t2";
    goto LABEL_29;
  }

  if (*v4)
  {
    if (current_time < v11)
    {
      LODWORD(v6) = dword_70074;
      if (v25 >= v6)
      {
        v12 = 0;
        v24 = "wake at t2 (allow short first wake)";
LABEL_29:
        v9 = v11;
        goto LABEL_30;
      }
    }
  }

  v24 = "expiration is too soon";
  if (current_time >= v8 || v8 - current_time < v10)
  {
    goto LABEL_31;
  }

  v12 = 0;
  v9 = current_time + dword_70078;
  v24 = "wake in min_interval";
LABEL_30:
  if (v9 == 0.0)
  {
LABEL_31:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      v27 = v24;
      v119 = &v118;
      __chkstk_darwin(v26, v28, v29, v30, v31, v32, v33, v34);
      v35 = *__error();
      v36 = _os_log_pack_fill();
      v37 = nullsub_1(v5);
      *v36 = 136315394;
      *(v36 + 4) = v37;
      *(v36 + 12) = 2080;
      *(v36 + 14) = v27;
      __SC_log_send();
    }

    v38 = nullsub_1(v5);
    sub_28CBC(v38, (v4 + 56), current_time);
    a2[1] = 0;
    goto LABEL_34;
  }

  v119 = v12;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v53 = _os_log_pack_size();
    v54 = v24;
    v118 = &v118;
    __chkstk_darwin(v53, v55, v56, v57, v58, v59, v60, v61);
    v62 = *__error();
    v63 = _os_log_pack_fill();
    v64 = nullsub_1(v5);
    *v63 = 136315650;
    *(v63 + 4) = v64;
    *(v63 + 12) = 2048;
    *(v63 + 14) = v9;
    *(v63 + 22) = 2080;
    *(v63 + 24) = v54;
    __SC_log_send();
  }

  v65 = nullsub_1(v5);
  sub_28CBC(v65, (v4 + 56), current_time);
  if (v9 == *(v4 + 2344))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = _os_log_pack_size();
      __chkstk_darwin(v66, v67, v68, v69, v70, v71, v72, v73);
      v74 = *__error();
      v75 = _os_log_pack_fill();
      v76 = nullsub_1(v5);
      *v75 = 136315394;
      *(v75 + 4) = v76;
      *(v75 + 12) = 2048;
      *(v75 + 14) = v9;
      __SC_log_send();
    }
  }

  else
  {
    v77 = sub_30CEC(a1);
    v78 = *(v4 + 2344);
    if (v78 != 0.0)
    {
      v79 = CFDateCreate(0, v78);
      IOPMCancelScheduledPowerEvent(v79, v77, @"wake");
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v80 = _os_log_pack_size();
        __chkstk_darwin(v80, v81, v82, v83, v84, v85, v86, v87);
        v88 = *__error();
        v89 = _os_log_pack_fill();
        v90 = nullsub_1(v5);
        v91 = *(v4 + 2344);
        *v89 = 136315650;
        *(v89 + 4) = v90;
        *(v89 + 12) = 2112;
        *(v89 + 14) = v79;
        *(v89 + 22) = 2048;
        *(v89 + 24) = v91;
        __SC_log_send();
      }

      CFRelease(v79);
    }

    v92 = CFDateCreate(0, v9);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"scheduledby", v77);
    CFDictionarySetValue(Mutable, @"time", v92);
    if (v119 >= 1)
    {
      v94 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
      CFDictionarySetValue(Mutable, @"leeway", v94);
      CFRelease(v94);
    }

    v95 = IOPMRequestSysWake();
    CFRelease(Mutable);
    CFRelease(v77);
    sub_2424();
    if (v95)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v96 = _os_log_pack_size();
        __chkstk_darwin(v96, v97, v98, v99, v100, v101, v102, v103);
        v104 = *__error();
        v105 = _os_log_pack_fill();
        v106 = nullsub_1(v5);
        *v105 = 136315650;
        *(v105 + 4) = v106;
        *(v105 + 12) = 2112;
        *(v105 + 14) = v92;
        *(v105 + 22) = 2048;
        *(v105 + 24) = v9;
        __SC_log_send();
      }

      *(v4 + 2344) = 0;
      a2[1] = 0;
    }

    else
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v107 = _os_log_pack_size();
        __chkstk_darwin(v107, v108, v109, v110, v111, v112, v113, v114);
        v115 = *__error();
        v116 = _os_log_pack_fill();
        v117 = nullsub_1(v5);
        *v116 = 136315650;
        *(v116 + 4) = v117;
        *(v116 + 12) = 2112;
        *(v116 + 14) = v92;
        *(v116 + 22) = 2048;
        *(v116 + 24) = v9;
        __SC_log_send();
      }

      *(v4 + 2344) = v9;
    }

    CFRelease(v92);
  }
}

_DWORD *sub_1653C()
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2, v3, v4, v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "IPv4ServicePublishProcess";
    __SC_log_send();
  }

  result = sub_295C(&unk_70160);
  if (result >= 1)
  {
    v11 = result;
    for (i = 0; i != v11; ++i)
    {
      result = sub_42C0(&unk_70160, i);
      if ((*result & 0x40) != 0)
      {
        *result &= ~0x40u;
        result = sub_8D44((result + 14), 21, 0);
      }
    }
  }

  return result;
}

void sub_166A8(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = sub_1690(a1);
  v3 = sub_144D8(v2);
  sub_16718(v4, v3);
  sub_16DC4(a1, v4);
  sub_17B18(v4);
}

void sub_16718(uint64_t a1, int a2)
{
  v44 = 0;
  v3 = sub_16BFC(a2, &v44);
  if (!v3)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v4 = v3;
  v5 = v44;
  v45[0] = 0;
  if (v44 < 1)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = &v3[v44];
  v8 = v3;
  do
  {
    if (*(v8 + 2) == 5)
    {
      v9 = *(v8 + 3);
      if (v9 == 12)
      {
        ++v6;
      }

      else if (v9 == 14 && (v8[2] & 0x10) != 0)
      {
        if (*(v8 + 117) - 17 < 0xFFFFFFF0)
        {
          goto LABEL_17;
        }

        __memmove_chk();
        v45[*(v8 + 117)] = 0;
      }
    }

    v8 = (v8 + *v8);
  }

  while (v8 < v7);
  if (!v45[0] || v6 == 0)
  {
LABEL_17:
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  if (v6 < 6)
  {
    v13 = (a1 + 12);
  }

  else
  {
    v13 = malloc_type_malloc(32 * v6, 0x1000040E0EAB150uLL);
    if (!v13)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_19;
    }
  }

  if (v5 < 1)
  {
    v12 = 0;
    goto LABEL_74;
  }

  v40 = 0;
  v41 = v13;
  v11 = 0;
  v14 = 0xFFFFFFFFLL;
  v15 = 0uLL;
  v16 = v4;
  do
  {
    v43 = 0;
    v42[2] = v15;
    v42[3] = v15;
    v42[0] = v15;
    v42[1] = v15;
    if (*(v16 + 2) != 5 || *(v16 + 3) != 12)
    {
      goto LABEL_70;
    }

    LODWORD(v42[0]) = *(v16 + 1);
    v17 = sub_16D38(v16 + 20, v16 + *v16, v42);
    if (v17)
    {
      v37 = v17;
      v38 = __stderrp;
      v39 = strerror(v17);
      fprintf(v38, "couldn't extract rt_addrinfo %s (%d)\n", v39, v37);
      v12 = v40;
      goto LABEL_19;
    }

    v18 = 0;
    v19 = &v13[32 * v11];
    v20 = 1;
    v15 = 0uLL;
    do
    {
      while (1)
      {
        v21 = *(v42 + v18 + 1);
        if (!v21 || *v21 < 0x1Cu)
        {
          goto LABEL_55;
        }

        if (v18 == 2)
        {
          break;
        }

        if (v18 != 5)
        {
          goto LABEL_55;
        }

        v20 = 0;
        *v19 = *(v21 + 8);
        if (++v18 == 8)
        {
          goto LABEL_57;
        }
      }

      v22 = 0;
      v23 = 0;
      v24 = v21 + 8;
      while (v24[v22] == 255)
      {
        ++v22;
        v23 += 8;
        if (v22 == 16)
        {
          v25 = 128;
          goto LABEL_54;
        }
      }

      v26 = 0;
      v27 = v24[v22];
      v28 = v23 + 7;
      while (1)
      {
        v29 = v26 + 7;
        if (((v27 >> (v26 + 7)) & 1) == 0)
        {
          break;
        }

        if (--v26 == -7)
        {
LABEL_49:
          v30 = v21 + 9;
          while (v22 != 15)
          {
            if (v30[v22++])
            {
              goto LABEL_52;
            }
          }

          v25 = v28;
          goto LABEL_54;
        }
      }

      v28 = v23 - v26;
      while (((v27 >> v29) & 1) == 0)
      {
        if (!--v29)
        {
          goto LABEL_49;
        }
      }

LABEL_52:
      v25 = 0;
LABEL_54:
      *(v19 + 4) = v25;
LABEL_55:
      ++v18;
    }

    while (v18 != 8);
    if (v20)
    {
      goto LABEL_70;
    }

LABEL_57:
    if ((v14 & 0x80000000) == 0 || (v32 = sub_12F50(), v15 = 0uLL, v14 = v32, (v32 & 0x80000000) == 0))
    {
      v61 = v15;
      v62 = v15;
      v59 = v15;
      v60 = v15;
      v57 = v15;
      v58 = v15;
      v55 = v15;
      v56 = v15;
      v53 = v15;
      v54 = v15;
      v51 = v15;
      v52 = v15;
      v49 = v15;
      v50 = v15;
      *&v47[16] = v15;
      v48 = v15;
      v46 = v15;
      *v47 = v15;
      *v47 = 7708;
      *&v47[8] = *v19;
      __strlcpy_chk();
      v33 = v14;
      v34 = ioctl(v14, 0xC1206949uLL, &v46);
      sub_7BE0(v34, v45, "SIOCGIFAFLAG_IN6");
      if (!v34)
      {
        *(v19 + 5) = *v47;
      }

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
      *&v47[16] = 0u;
      v48 = 0u;
      v46 = 0u;
      *v47 = 0u;
      *v47 = 7708;
      *&v47[8] = *v19;
      __strlcpy_chk();
      v35 = ioctl(v33, 0xC1206951uLL, &v46);
      sub_7BE0(v35, v45, "SIOCGIFALIFETIME_IN6");
      if (!v35)
      {
        *(v19 + 3) = *&v47[16];
      }

      v15 = 0uLL;
      v14 = v33;
      v13 = v41;
    }

    if (*v19 == 254 && (v19[1] & 0xC0) == 0x80)
    {
      *(v19 + 1) = 0;
      v36 = v40;
      if (!v40)
      {
        v36 = v19;
      }

      v40 = v36;
    }

    ++v11;
LABEL_70:
    v16 = (v16 + *v16);
  }

  while (v16 < v7);
  v12 = v40;
  if (!v11)
  {
LABEL_74:
    if (v13 != (a1 + 12))
    {
      free(v13);
    }

    v11 = 0;
LABEL_18:
    v13 = 0;
  }

LABEL_19:
  free(v4);
LABEL_21:
  *a1 = v13;
  *(a1 + 8) = v11;
  *(a1 + 176) = v12;
}

void *sub_16BFC(int a1, _DWORD *a2)
{
  v9 = 0;
  *v10 = xmmword_5D120;
  v11 = 3;
  v12 = a1;
  *a2 = 0;
  if (sysctl(v10, 6u, 0, &v9, 0, 0) < 0)
  {
    v4 = __stderrp;
    v5 = __error();
    strerror(*v5);
    fprintf(v4, "sysctl() size failed: %s");
    return 0;
  }

  v9 *= 2;
  v3 = malloc_type_malloc(v9, 0x73B83BF1uLL);
  if (sysctl(v10, 6u, v3, &v9, 0, 0) < 0)
  {
    free(v3);
    v6 = __stderrp;
    v7 = __error();
    strerror(*v7);
    fprintf(v6, "sysctl() failed: %s");
    return 0;
  }

  *a2 = v9;
  return v3;
}

uint64_t sub_16D38(unsigned __int8 *a1, unint64_t a2, int *a3)
{
  *(a3 + 2) = 0u;
  *(a3 + 10) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 6) = 0u;
  if (a1 < a2)
  {
    v3 = 0;
    v4 = *a3;
    while (1)
    {
      if ((v4 >> v3))
      {
        v5 = *a1;
        if (&a1[v5] > a2)
        {
          return 22;
        }

        *&a3[2 * v3 + 2] = a1;
        if (v5)
        {
          v6 = ((v5 - 1) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v6 = 4;
        }

        a1 += v6;
      }

      v7 = 0;
      if (v3 <= 6)
      {
        ++v3;
        if (a1 < a2)
        {
          continue;
        }
      }

      return v7;
    }
  }

  return 0;
}

void sub_16DC4(uint64_t a1, uint64_t a2)
{
  v146 = sub_1690(a1);
  v4 = sub_1688(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "rtadv_address_changed_common";
    __SC_log_send();
  }

  v15 = sub_17B0C(a2);
  if (!v15)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_25:
    v53 = _os_log_pack_size();
    __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
    v61 = *__error();
    v62 = _os_log_pack_fill();
    v63 = nullsub_1(v146);
    *v62 = 136315138;
    *(v62 + 4) = v63;
    __SC_log_send();
    return;
  }

  v16 = *(v15 + 20);
  if ((v16 & 6) != 0)
  {
    sub_2424();
    if ((v16 & 4) != 0)
    {
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }
    }

    goto LABEL_25;
  }

  *(v4 + 60) = ((v16 >> 9) & 1) == 0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  v17 = __SC_log_enabled();
  if (v17)
  {
    v25 = _os_log_pack_size();
    __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
    v33 = *__error();
    v34 = _os_log_pack_fill();
    v35 = nullsub_1(v146);
    v36 = "";
    if (!*(v4 + 60))
    {
      v36 = "not ";
    }

    *v34 = 136315394;
    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    *(v34 + 14) = v36;
    v17 = __SC_log_send();
  }

  v37 = *(v4 + 36);
  if (!v37)
  {
    v17 = sub_169C(a1);
    if (!v17 || (v17 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v38 = _os_log_pack_size();
        __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
        v46 = *__error();
        v47 = _os_log_pack_fill();
        v48 = nullsub_1(v146);
        *v47 = 136315138;
        *(v47 + 4) = v48;
        __SC_log_send();
      }

      sub_44814(a1, 0, 0);
    }
  }

  if (!(*(v4 + 64) | v37))
  {
    return;
  }

  memset(v156, 0, 184);
  v155 = 0uLL;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  v49 = *(a2 + 8);
  __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
  v142 = &v136 - 4 * v50;
  v147 = 0;
  sub_1C394(v156);
  v52 = *(v4 + 24);
  if (v52 && (sub_1BE48(v52, v156), LODWORD(v156[1])))
  {
    v51 = *v156[0];
    v155 = *v156[0];
    v137 = &v155;
  }

  else
  {
    v137 = 0;
  }

  v139 = a1;
  v64 = *(a2 + 8);
  v141 = v4;
  if (v64 <= 0)
  {
    sub_17B18(v156);
    v66 = 0;
    v84 = 0;
    v85 = 0;
    goto LABEL_44;
  }

  v138 = &v136;
  v65 = 0;
  v66 = 0;
  v144 = 0;
  v67 = 0;
  v68 = *a2;
  *&v51 = 136315138;
  v140 = v51;
  do
  {
    v69 = *(v68 + 20);
    v70 = v69 & 0x40;
    if ((v69 & 6) != 0)
    {
      if ((v69 & 4) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v71 = _os_log_pack_size();
          v145 = v66;
          v143 = &v136;
          __chkstk_darwin(v71, v72, v73, v74, v75, v76, v77, v78);
          v79 = *__error();
          v80 = _os_log_pack_fill();
          v81 = nullsub_1(v146);
          *v80 = v140;
          *(v80 + 4) = v81;
          v4 = v141;
          __SC_log_send();
          v66 = v145;
        }
      }
    }

    else
    {
      if ((v69 & 0x40) != 0)
      {
        LODWORD(v144) = ((v69 >> 3) & 1) + v144;
        HIDWORD(v144) += (v69 >> 4) & 1;
LABEL_38:
        v82 = *(v68 + 16);
        v83 = &v142[4 * v66];
        *v83 = *v68;
        *(v83 + 1) = v82;
        v66 = (v66 + 1);
        goto LABEL_39;
      }

      if (sub_1BDF8(v156, v68))
      {
        goto LABEL_38;
      }
    }

LABEL_39:
    v65 += v70 >> 6;
    ++v67;
    v68 += 32;
  }

  while (v67 < *(a2 + 8));
  sub_17B18(v156);
  v85 = v144;
  v84 = HIDWORD(v144);
  if (!v65)
  {
LABEL_44:
    if (!*(v4 + 72))
    {
      v65 = 0;
      if (!v66)
      {
        return;
      }

      goto LABEL_49;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v86 = _os_log_pack_size();
      __chkstk_darwin(v86, v87, v88, v89, v90, v91, v92, v93);
      v94 = *__error();
      v95 = _os_log_pack_fill();
      v96 = nullsub_1(v146);
      *v95 = 136315138;
      *(v95 + 4) = v96;
      __SC_log_send();
    }

    v97 = v139;
    sub_1E064(v139, 0);
    sub_44DE4(v97, 0);
    return;
  }

  if (!v66)
  {
    return;
  }

LABEL_49:
  v145 = v66;
  if (v65)
  {
    if (v84 + v85 == v65)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v98 = _os_log_pack_size();
        __chkstk_darwin(v98, v99, v100, v101, v102, v103, v104, v105);
        v106 = *__error();
        v107 = _os_log_pack_fill();
        v108 = nullsub_1(v146);
        *v107 = 136315138;
        *(v107 + 4) = v108;
        __SC_log_send();
      }
    }
  }

  *(v4 + 72) = v65 != 0;
  v150 = 0u;
  v151 = 0u;
  v153 = 0u;
  v154 = 0u;
  v152 = 0u;
  v148 = 0u;
  v149 = 0u;
  if (*(v4 + 16))
  {
    v109 = *(v4 + 24);
    v110 = v139;
    if (v109)
    {
      v111 = sub_1BE98(v109, &v148);
      if (v137)
      {
        if (v111 && *(v4 + 48) == 0.0)
        {
          *(v4 + 48) = timer_get_current_time();
        }
      }
    }

    if (sub_1BF4C(v4 + 104))
    {
      *(&v154 + 1) = sub_1B9E0(v4 + 104);
    }

    v112 = sub_1C0C4(v110);
    *(&v150 + 1) = *(v4 + 16);
    *&v152 = sub_1C0DC(*(&v150 + 1));
    if (v152 || sub_1C3A4(v110))
    {
      sub_1C228(v110, 1);
      if (v152)
      {
        sub_1C3B4(v110, v152);
      }

      if (sub_1DFD0(v110))
      {
        goto LABEL_66;
      }

      v116 = sub_2C458(v110);
      if (sub_44FE4(v110))
      {
        *(&v151 + 1) = sub_45450(v116, *(v4 + 160));
      }
    }

    else
    {
      sub_1C228(v110, 0);
      if (v112 || sub_12E28(v146) != 255)
      {
        LODWORD(v151) = sub_1C4A0(v110) == 0;
      }

LABEL_66:
      sub_1C3B4(v110, 0);
      if (*(v4 + 160))
      {
        sub_44028(v110, 0);
        sub_2C1A0(v110, 0);
      }
    }

    v115 = sub_1B0C8(*(v4 + 16));
    v117 = *(v4 + 16);
    v160 = 0;
    v158 = 0;
    v159 = 0;
    v118 = sub_1B9E8(v117, &v160);
    if (v118)
    {
      v119 = v118;
      v157[0] = 0;
      v120 = sub_1BA78(v117, v157);
      valuePtr = v120;
      if (!v120)
      {
        v158 = 0;
        v159 = 0;
        goto LABEL_77;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v120, 0);
      v122 = CFArrayGetValueAtIndex(v157[0], 0);
      CFRetain(ValueAtIndex);
      CFRetain(v122);
      sub_41E8(&valuePtr);
      sub_41E8(v157);
      v158 = v122;
      v159 = ValueAtIndex;
      if (ValueAtIndex)
      {
LABEL_79:
        Mutable = CFStringCreateMutable(0, 0);
        CFStringAppendFormat(Mutable, 0, @"IPv6.Prefix=%@/%@;IPv6.RouterHardwareAddress=", ValueAtIndex, v122);
        sub_1A9BC(Mutable, v119, v160, 58);
      }

      else
      {
LABEL_77:
        LODWORD(valuePtr) = 64;
        if (v137)
        {
          *v157 = *v137;
          sub_41DD0(v157, 64);
          ValueAtIndex = sub_1A0F8(v157);
          v159 = ValueAtIndex;
          v122 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v158 = v122;
          goto LABEL_79;
        }

        Mutable = 0;
      }

      v4 = v141;
    }

    else
    {
      Mutable = 0;
    }

    sub_41E8(&v159);
    sub_41E8(&v158);
    v147 = Mutable;
    v114 = 1;
  }

  else
  {
    Mutable = 0;
    v114 = 0;
    v115 = 0;
    v110 = v139;
  }

  sub_1C4B0(v110, v142, v145, v115, v114, &v148, Mutable);
  sub_41E8(&v147);
  sub_41E8(&v151 + 1);
  sub_41E8(&v152);
  if (*(v4 + 16))
  {
    v123 = *(sub_1688(v110) + 24);
    if (!v123 || !sub_1E05C(v123))
    {
      sub_1E064(v110, 1);
    }

    v124 = *(v4 + 24);
    if (v124 && sub_1E05C(v124))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v125 = _os_log_pack_size();
        __chkstk_darwin(v125, v126, v127, v128, v129, v130, v131, v132);
        v133 = *__error();
        v134 = _os_log_pack_fill();
        v135 = nullsub_1(v146);
        *v134 = 136315138;
        *(v134 + 4) = v135;
        __SC_log_send();
      }
    }

    else
    {
      sub_BC60(v110, 0);
    }
  }

  if (*(v4 + 64))
  {
    sub_45550(v110, v142, v145);
    *(v4 + 64) = 0;
  }
}

uint64_t sub_17B0C(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

void sub_17B18(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2 != (a1 + 12))
    {
      free(v2);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 176) = 0;
  }
}

void sub_17B5C(SCDynamicStoreRef store)
{
  if (*(&xmmword_70280 + 1) && !CFArrayGetCount(*(&xmmword_70280 + 1)))
  {
    sub_41E8(&xmmword_70280 + 1);
  }

  if (xmmword_70280 && !CFDictionaryGetCount(xmmword_70280))
  {
    sub_41E8(&xmmword_70280);
  }

  if (xmmword_70280 != 0)
  {
    SCDynamicStoreSetMultiple(store, xmmword_70280, *(&xmmword_70280 + 1), 0);
    if (G_IPConfiguration_verbose)
    {
      if (xmmword_70280)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v2 = _os_log_pack_size();
          __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
          v10 = *__error();
          v11 = _os_log_pack_fill();
          v12 = xmmword_70280;
          *v11 = 138412290;
          *(v11 + 4) = v12;
          __SC_log_send();
        }
      }

      if (*(&xmmword_70280 + 1))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
          v21 = *__error();
          v22 = _os_log_pack_fill();
          v23 = *(&xmmword_70280 + 1);
          *v22 = 138412290;
          *(v22 + 4) = v23;
          __SC_log_send();
        }
      }
    }

    sub_41E8(&xmmword_70280 + 1);
    sub_41E8(&xmmword_70280);
  }
}

uint64_t sub_17DBC()
{
  sub_17DE4();

  return sub_17F0C();
}

uint64_t sub_17DE4()
{
  result = dword_700F0;
  if ((dword_700F0 & 0x80000000) == 0)
  {
    close(dword_700F0);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      v11 = dword_700F0;
      *v10 = 67109120;
      v10[1] = v11;
      result = __SC_log_send();
    }

    dword_700F0 = -1;
  }

  return result;
}

uint64_t sub_17F0C()
{
  result = dword_700F4;
  if ((dword_700F4 & 0x80000000) == 0)
  {
    close(dword_700F4);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      v11 = dword_700F4;
      *v10 = 67109120;
      v10[1] = v11;
      result = __SC_log_send();
    }

    dword_700F4 = -1;
  }

  return result;
}

uint64_t sub_18034(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    v2 = *__error();
    v3 = _os_log_pack_fill();
    v4 = *(a1 + 32);
    *v3 = 136315394;
    *(v3 + 4) = "arp_client_open_fd_block_invoke";
    *(v3 + 12) = 1024;
    *(v3 + 14) = v4;
    __SC_log_send();
  }

  return close(*(a1 + 32));
}

uint64_t sub_18150(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[2];
  if (v2)
  {
    return v2(v1[3], v1[4]);
  }

  return result;
}

void sub_18168()
{
  v94 = 0;
  v95 = 0uLL;
  v96 = 0;
  *&v93.msg_namelen = 28;
  v97[0] = &v98;
  v97[1] = 1500;
  v93.msg_name = &v94;
  v93.msg_iov = v97;
  *&v93.msg_iovlen = 1;
  v93.msg_control = &v101;
  *&v93.msg_controllen = 48;
  v0 = sub_5A18(*(qword_702D0 + 32));
  v1 = recvmsg(v0, &v93, 0);
  if ((v1 & 0x8000000000000000) != 0)
  {
    if (*__error() != 35)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        __chkstk_darwin(v13, v14, v15, v16, v17, v18, v19, v20);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = __error();
        v24 = strerror(*v23);
        v25 = *__error();
        *v22 = 136315394;
        *(v22 + 4) = v24;
        *(v22 + 12) = 1024;
        *(v22 + 14) = v25;
        goto LABEL_9;
      }
    }

    return;
  }

  v2 = v1;
  if (!v1)
  {
    return;
  }

  if (v1 <= 0xF)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 134217984;
      *(v12 + 4) = v2;
LABEL_9:
      __SC_log_send();
      return;
    }

    return;
  }

  if (v95 != 254 || (BYTE1(v95) & 0xC0) != 0x80)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v52 = _os_log_pack_size();
    __chkstk_darwin(v52, v53, v54, v55, v56, v57, v58, v59);
    v60 = *__error();
    v61 = _os_log_pack_fill();
    v62 = inet_ntop(30, &v95, v100, 0x2Eu);
    *v61 = 136315138;
    *(v61 + 4) = v62;
    goto LABEL_37;
  }

  if (v93.msg_controllen < 0xC)
  {
    goto LABEL_35;
  }

  msg_control = v93.msg_control;
  if (!v93.msg_control)
  {
    goto LABEL_35;
  }

  v27 = 0;
  v28 = 0;
  do
  {
    if (msg_control[1] == 41)
    {
      v29 = msg_control[2];
      if (v29 == 47)
      {
        if (*msg_control >= 0x10)
        {
          v27 = (msg_control + 3);
        }
      }

      else if (v29 == 46)
      {
        if (*msg_control >= 0x20)
        {
          v28 = msg_control + 3;
        }
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v30 = _os_log_pack_size();
          __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
          v38 = *__error();
          v39 = _os_log_pack_fill();
          v40 = msg_control[2];
          *v39 = 67109120;
          v39[1] = v40;
          __SC_log_send();
        }
      }
    }

    msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
  }

  while ((msg_control + 3) <= v93.msg_control + v93.msg_controllen);
  if (!v28)
  {
LABEL_35:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

LABEL_36:
    v63 = _os_log_pack_size();
    __chkstk_darwin(v63, v64, v65, v66, v67, v68, v69, v70);
    v71 = *__error();
    *_os_log_pack_fill() = 0;
LABEL_37:
    __SC_log_send();
    return;
  }

  if (!v27)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_36;
  }

  if (v98 != 134)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v72 = _os_log_pack_size();
    __chkstk_darwin(v72, v73, v74, v75, v76, v77, v78, v79);
    v80 = *__error();
    v50 = _os_log_pack_fill();
    v51 = v98;
    goto LABEL_43;
  }

  if (v99)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v41 = _os_log_pack_size();
    __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
    v49 = *__error();
    v50 = _os_log_pack_fill();
    v51 = v99;
LABEL_43:
    *v50 = 67109120;
    v50[1] = v51;
    goto LABEL_37;
  }

  if (*v27 == 255)
  {
    sub_18CD8(v28[4], &v95, &v98, v2);
    return;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v81 = _os_log_pack_size();
    __chkstk_darwin(v81, v82, v83, v84, v85, v86, v87, v88);
    v89 = *__error();
    v90 = _os_log_pack_fill();
    v91 = *v27;
    v92 = inet_ntop(30, &v95, v100, 0x2Eu);
    *v90 = 67109378;
    *(v90 + 4) = v91;
    *(v90 + 8) = 2080;
    *(v90 + 10) = v92;
    goto LABEL_37;
  }
}

const __CFArray *sub_1894C(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v34 = 0;
  v8 = sub_18C18(a1, &v34, &v34 + 1);
  v9 = v8;
  if (!v8)
  {
LABEL_7:
    Mutable = 0;
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (sub_1D494(a1, HIDWORD(v34), Current))
  {
    if (a2)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
        v19 = *__error();
        v20 = _os_log_pack_fill();
        *v20 = 136315138;
        *(v20 + 4) = a2;
        __SC_log_send();
      }
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  Mutable = CFArrayCreateMutable(0, v34, &kCFTypeArrayCallBacks);
  sub_1D304(Mutable, v9, v34);
  v9 = 0;
  if (sub_11668(24))
  {
    v33 = 0;
    v9 = sub_1BD1C(a1, &v33, &v34 + 1);
    if (v9)
    {
      if (sub_1D494(a1, HIDWORD(v34), Current))
      {
        if (a2)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
            v31 = *__error();
            v32 = _os_log_pack_fill();
            *v32 = 136315138;
            *(v32 + 4) = a2;
            __SC_log_send();
          }
        }

        v9 = 0;
      }

      else
      {
        v9 = sub_59078(v9, v33);
      }
    }
  }

  if (sub_11668(144))
  {
    v8 = sub_1D4D0(a1);
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  *a3 = v9;
  *a4 = v8;
  return Mutable;
}

uint64_t sub_18C18(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  v6 = sub_2960(a1 + 48);
  if (v6 < 1)
  {
LABEL_7:
    v12 = 0;
    result = 0;
    LODWORD(v14) = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = sub_42C8(a1 + 48, v8);
    if (*v9 == 25)
    {
      v10 = *(v9 + 1);
      if (v10 < 3)
      {
        goto LABEL_7;
      }

      v11 = *(v9 + 4);
      if (v11)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  result = v9 + 8;
  v12 = bswap32(v11);
  v14 = (8 * v10 + 0xFFFFFFFF8) >> 4;
  if (a2)
  {
LABEL_8:
    *a2 = v14;
  }

LABEL_9:
  if (a3)
  {
    *a3 = v12;
  }

  return result;
}

void sub_18CD8(int a1, _OWORD *a2, const void *a3, size_t a4)
{
  v7 = sub_18E80(a1);
  if (v7)
  {
    v8 = v7;
    if (v7[4])
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = sub_18EFC(a3, a4, a2, Current);
      if (v10)
      {
        v11 = v10;
        (v8[4])(v8[5], v8[6], v10);

        CFRelease(v11);
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v12 = _os_log_pack_size();
          __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
          v20 = *__error();
          v21 = _os_log_pack_fill();
          v22 = nullsub_1(*v8);
          *v21 = 136315138;
          *(v21 + 4) = v22;
          __SC_log_send();
        }
      }
    }
  }
}

uint64_t *sub_18E80(int a1)
{
  if (sub_295C(qword_702D0) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = sub_42C0(qword_702D0, v2);
    if (sub_144D8(*v3) == a1)
    {
      break;
    }

    if (++v2 >= sub_295C(qword_702D0))
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_18EFC(const void *a1, size_t a2, _OWORD *a3, double a4)
{
  pthread_once(&stru_70108, sub_19EEC);
  Instance = _CFRuntimeCreateInstance();
  memcpy((Instance + 72), a1, a2);
  *(Instance + 64) = a2;
  *(Instance + 16) = *a3;
  *(Instance + 32) = sub_1A0F8(a3);
  *(Instance + 40) = a4;
  v9 = *(Instance + 64) - 16;
  sub_157D0((Instance + 48));
  if (v9 >= 2)
  {
    v10 = Instance + 88;
    while (1)
    {
      v11 = 8 * *(v10 + 1);
      v12 = Instance + 48;
      if (!*(v10 + 1) || v9 < v11)
      {
        break;
      }

      sub_157D8(v12, v10);
      v10 += v11;
      v9 -= v11;
      if (v9 < 2)
      {
        return Instance;
      }
    }

    sub_1595C(v12);
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void sub_19004(uint64_t a1, CFMutableStringRef theString)
{
  v3 = *(a1 + 77);
  v4 = *(a1 + 78);
  v5 = __rev16(v4);
  if (v4 == 0xFFFF)
  {
    v6 = " (max)";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(theString, 0, @"from %@, length %ld, hop limit %d, lifetime %us%s, reachable %dms, retransmit %dms, flags 0x%x", *(a1 + 32), *(a1 + 64), *(a1 + 76), v5, v6, bswap32(*(a1 + 80)), bswap32(*(a1 + 84)), v3);
  if (!v3)
  {
    CFStringAppend(theString, @"\n");
    goto LABEL_12;
  }

  CFStringAppend(theString, @"=[");
  if ((v3 & 0x80) != 0)
  {
    CFStringAppend(theString, @" managed");
    if ((v3 & 0x40) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_194:
      CFStringAppend(theString, @" home-agent");
      if ((v3 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  CFStringAppend(theString, @" other");
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_194;
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
LABEL_9:
    CFStringAppend(theString, @" proxy");
  }

LABEL_10:
  CFStringAppend(theString, @" ]");
  CFStringAppend(theString, @", pref=");
  CFStringAppendFormat(theString, 0, @"%s\n", *(off_6A868 + (v3 & 0x18)));
LABEL_12:
  v7 = a1;
  v8 = sub_2960(a1 + 48);
  if (v8)
  {
    v9 = v8;
    if (v8 >= 1)
    {
      v10 = 0;
      v70 = v8;
      do
      {
        v11 = sub_42C8(v7 + 48, v10);
        v12 = v11;
        v13 = *v11;
        if (*v11 <= 0x17u)
        {
          if (*v11 > 3u)
          {
            switch(v13)
            {
              case 4:
                v14 = "redirected header";
                goto LABEL_46;
              case 5:
                v14 = "mtu";
                goto LABEL_46;
              case 0x15:
                v14 = "provisioning domain";
                goto LABEL_46;
            }
          }

          else
          {
            switch(v13)
            {
              case 1:
                v14 = "source link-address";
                goto LABEL_46;
              case 2:
                v14 = "target link-address";
                goto LABEL_46;
              case 3:
                v14 = "prefix info";
                goto LABEL_46;
            }
          }
        }

        else if (*v11 <= 0x1Eu)
        {
          switch(v13)
          {
            case 0x18:
              v14 = "route info";
              goto LABEL_46;
            case 0x19:
              v14 = "rdnss";
              goto LABEL_46;
            case 0x1A:
              v14 = "flags extension";
              goto LABEL_46;
          }
        }

        else if (*v11 > 0x25u)
        {
          if (v13 == 38)
          {
            v14 = "pref64";
            goto LABEL_46;
          }

          if (v13 == 144)
          {
            v14 = "dnr";
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 31)
          {
            v14 = "dnssl";
            goto LABEL_46;
          }

          if (v13 == 37)
          {
            v14 = "captive portal";
            goto LABEL_46;
          }
        }

        v14 = "<unknown>";
LABEL_46:
        v15 = v11[1];
        v16 = 8 * v11[1];
        CFStringAppendFormat(theString, 0, @"\t%s option (%d), length %d (%d): ", v14, v13, v16, v11[1]);
        v17 = *v12;
        if (v17 <= 0x19)
        {
          if (*v12 > 0x17u)
          {
            if (v17 == 24)
            {
              if (v15)
              {
                v28 = v12[2];
                if (v28 >= 0x81)
                {
                  CFStringAppendFormat(theString, 0, @"invalid prefix length %d > %d", v12[2], 128);
                  sub_59CB0(theString, (v12 + 2), v16 - 2, 58);
LABEL_189:
                  v9 = v70;
                  goto LABEL_183;
                }

                v40 = v28 >> 3;
                if ((v28 & 7) != 0)
                {
                  v41 = v40 + 1;
                }

                else
                {
                  v41 = v40;
                }

                if (v41 + 8 <= v16)
                {
                  __dst = 0;
                  v75 = 0;
                  __memcpy_chk();
                  if ((v28 & 7) != 0)
                  {
                    *(&v73 + v41) &= -1 << (8 - (v28 & 7));
                  }

                  v55 = inet_ntop(30, &__dst, v76, 0x2Eu);
                  CFStringAppendFormat(theString, 0, @" %s/%d, pref=%s, lifetime ", v55, v28, *(off_6A868 + (v12[3] & 0x18)));
                  v56 = *(v12 + 1);
                  v7 = a1;
                  if (v56 == -1)
                  {
                    CFStringAppend(theString, @"infinite");
                  }

                  else
                  {
                    CFStringAppendFormat(theString, 0, @"%us", bswap32(v56));
                  }

                  goto LABEL_189;
                }

                CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", v16, v41 + 8);
                sub_59CB0(theString, (v12 + 2), v16 - 2, 58);
                v9 = v70;
                goto LABEL_157;
              }

LABEL_101:
              v33 = 8;
LABEL_113:
              CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", 8 * v15, v33);
              v26 = (v12 + 2);
              v27 = theString;
              v25 = -2;
              goto LABEL_114;
            }

            if (v17 == 25)
            {
              if (v15 > 2)
              {
                v34 = *(v12 + 1);
                CFStringAppend(theString, @" lifetime ");
                if (v34 == -1)
                {
                  CFStringAppend(theString, @"infinite");
                }

                else
                {
                  CFStringAppendFormat(theString, 0, @"%us", bswap32(v34));
                }

                CFStringAppend(theString, @", addr: ");
                if (((v16 + 0xFFFFFFFF8) >> 4) >= 1)
                {
                  v42 = 0;
                  v43 = (v12 + 8);
                  do
                  {
                    if (v42)
                    {
                      v44 = ", ";
                    }

                    else
                    {
                      v44 = "";
                    }

                    v45 = inet_ntop(30, v43, v76, 0x2Eu);
                    CFStringAppendFormat(theString, 0, @"%s%s", v44, v45);
                    ++v42;
                    v43 += 16;
                  }

                  while ((((v16 + 0xFFFFFFFF8) >> 4) & 0x7FFFFFFF) != v42);
                }
              }

              else
              {
                CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", 8 * v15, 24);
                sub_59CB0(theString, (v12 + 2), v16 - 2, 58);
              }

              goto LABEL_157;
            }
          }

          else if (v17 == 3)
          {
            if (v15 > 3)
            {
              v36 = inet_ntop(30, v12 + 16, v76, 0x2Eu);
              CFStringAppendFormat(theString, 0, @" %s/%d, flags [", v36, v12[2]);
              v37 = v12[3];
              if (v37 < 0)
              {
                CFStringAppend(theString, @" onlink");
                if ((v12[3] & 0x40) != 0)
                {
LABEL_108:
                  CFStringAppend(theString, @" auto");
                }
              }

              else if ((v37 & 0x40) != 0)
              {
                goto LABEL_108;
              }

              CFStringAppend(theString, @" ], valid time ");
              v38 = *(v12 + 1);
              v39 = *(v12 + 2);
              if (v38 == -1)
              {
                CFStringAppendFormat(theString, 0, @"infinite", v66);
              }

              else
              {
                CFStringAppendFormat(theString, 0, @"%us", bswap32(v38));
              }

              CFStringAppend(theString, @", pref. time ");
              if (v39 == -1)
              {
                CFStringAppendFormat(theString, 0, @"infinite", v67);
              }

              else
              {
                CFStringAppendFormat(theString, 0, @"%us", bswap32(*(v12 + 2)));
              }

              goto LABEL_157;
            }

            CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", 8 * v15, 32);
          }

          else if (v17 == 21)
          {
            *v76 = 0;
            if (v15)
            {
              if (8 * v12[1])
              {
                v20 = v12[2];
                v21 = v12[3];
                v22 = *(v12 + 2);
                v23 = (8 * v12[1]) - 6;
                CFStringAppend(theString, @" ");
                v24 = sub_1AA80((v12 + 6), v23, 0);
                *v76 = v24;
                if (v24)
                {
                  CFStringAppendFormat(theString, 0, @"%@", v24);
                  CFStringAppend(theString, @", flags [");
                  if ((v20 & 0x80) == 0)
                  {
                    if ((v20 & 0x20) == 0)
                    {
                      goto LABEL_62;
                    }

LABEL_186:
                    CFStringAppend(theString, @" ra");
                    if ((v20 & 0x40) == 0)
                    {
                      goto LABEL_64;
                    }

LABEL_63:
                    CFStringAppend(theString, @" legacy");
                    goto LABEL_64;
                  }

                  CFStringAppend(theString, @" http");
                  if ((v20 & 0x20) != 0)
                  {
                    goto LABEL_186;
                  }

LABEL_62:
                  if ((v20 & 0x40) != 0)
                  {
                    goto LABEL_63;
                  }

LABEL_64:
                  CFStringAppend(theString, @" ]");
                  CFStringAppendFormat(theString, 0, @", delay %hu", v21 & 0xF);
                  CFStringAppendFormat(theString, 0, @", sequence nr %hu", bswap32(v22) >> 16);
                  v9 = v70;
                  v7 = a1;
                }

                else
                {
                  CFStringAppend(theString, @"invalid id");
                  v9 = v70;
                }
              }

              else
              {
                CFStringAppend(theString, @" ");
                CFStringAppend(theString, @"invalid id");
              }
            }

            else
            {
              CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", v16, 6);
              sub_59CB0(theString, (v12 + 2), -2, 58);
            }

            p_dst = v76;
            goto LABEL_182;
          }
        }

        else if (*v12 <= 0x24u)
        {
          if (v17 == 26)
          {
            if (v15)
            {
              CFStringAppend(theString, @" flags [ ");
              v31 = bswap32(*(v12 + 1)) >> 16;
              if (v31)
              {
                CFStringAppend(theString, @"managed ");
                if ((v31 & 2) != 0)
                {
                  goto LABEL_121;
                }

LABEL_90:
                if ((v31 & 4) == 0)
                {
                  goto LABEL_91;
                }

LABEL_122:
                CFStringAppend(theString, @"mobile_ipv6_home_agent ");
                if ((v31 & 8) != 0)
                {
                  goto LABEL_123;
                }

LABEL_92:
                if ((v31 & 0x10) == 0)
                {
                  goto LABEL_93;
                }

LABEL_124:
                CFStringAppend(theString, @"router_selection_preferences1 ");
                if ((v31 & 0x20) != 0)
                {
LABEL_94:
                  CFStringAppend(theString, @"proxy ");
                }
              }

              else
              {
                if ((v31 & 2) == 0)
                {
                  goto LABEL_90;
                }

LABEL_121:
                CFStringAppend(theString, @"other ");
                if ((v31 & 4) != 0)
                {
                  goto LABEL_122;
                }

LABEL_91:
                if ((v31 & 8) == 0)
                {
                  goto LABEL_92;
                }

LABEL_123:
                CFStringAppend(theString, @"router_selection_preferences0 ");
                if ((v31 & 0x10) != 0)
                {
                  goto LABEL_124;
                }

LABEL_93:
                if ((v31 & 0x20) != 0)
                {
                  goto LABEL_94;
                }
              }

              if (v31 & 0xC0 | *(v12 + 1))
              {
                CFStringAppend(theString, @"reserved ");
              }

              CFStringAppend(theString, @"]");
              goto LABEL_183;
            }

            goto LABEL_101;
          }

          if (v17 == 31)
          {
            *v76 = 0;
            if (v15 > 1)
            {
              v35 = *(v12 + 1);
              CFStringAppend(theString, @" lifetime ");
              if (v35 == -1)
              {
                CFStringAppend(theString, @"infinite");
              }

              else
              {
                CFStringAppendFormat(theString, 0, @"%us", bswap32(v35));
              }

              CFStringAppend(theString, @", domain(s): ");
              v46 = v16 - 8;
              while (!v12[v46 + 6])
              {
                v30 = v46-- <= 2;
                if (v30)
                {
                  v46 = 1;
                  break;
                }
              }

              v47 = sub_58F38((v12 + 8), v46, v76);
              v48 = v47;
              if (*v76 < 1)
              {
                if (!v47)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                v49 = 0;
                do
                {
                  if (v49)
                  {
                    v50 = ", ";
                  }

                  else
                  {
                    v50 = "";
                  }

                  CFStringAppendFormat(theString, 0, @"%s%s", v50, *&v48[8 * v49++]);
                }

                while (v49 < *v76);
              }

              free(v48);
              goto LABEL_157;
            }

            CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", 8 * v15, 16);
            sub_59CB0(theString, (v12 + 2), v16 - 2, 58);
LABEL_157:
            v7 = a1;
            goto LABEL_183;
          }
        }

        else
        {
          switch(v17)
          {
            case 0x25u:
              if (v15)
              {
                if (v12[2])
                {
                  v29 = (v16 - 2);
                  while (!v12[v29])
                  {
                    v30 = v29 <= 2;
                    v29 = (v29 - 1);
                    if (v30)
                    {
                      v29 = 1;
                      break;
                    }
                  }

                  CFStringAppendFormat(theString, 0, @"uri=%.*s", v29, v12 + 2, v68);
                  goto LABEL_183;
                }

                CFStringAppend(theString, @"empty uri: ");
                v25 = v16 - 2;
                v27 = theString;
                v26 = (v12 + 2);
                goto LABEL_114;
              }

              v33 = 3;
              goto LABEL_113;
            case 0x26u:
              __dst = 0;
              v75 = 0;
              v73 = 0;
              v72 = 0;
              if (sub_19FC8(v12, 8 * v15, &__dst, &v73, &v72, theString))
              {
                v32 = inet_ntop(30, &__dst, v76, 0x2Eu);
                CFStringAppendFormat(theString, 0, @"%s/%d lifetime %us", v32, v73, v72);
              }

              goto LABEL_183;
            case 0x90u:
              __dst = 0;
              *v76 = 0u;
              memset(v77, 0, sizeof(v77));
              if (v15 < 2)
              {
                goto LABEL_180;
              }

              v18 = *(v12 + 1);
              Mutable = CFStringCreateMutable(0, 0);
              __dst = Mutable;
              CFStringAppend(Mutable, @" lifetime ");
              if (v18 == -1)
              {
                CFStringAppend(Mutable, @"infinite");
              }

              else
              {
                CFStringAppendFormat(Mutable, 0, @"%u", bswap32(v18));
              }

              CFStringAppend(Mutable, @", priority ");
              CFStringAppendFormat(Mutable, 0, @"%hu", bswap32(*(v12 + 1)) >> 16);
              CFStringAppend(Mutable, @", authentication domain name: ");
              v51 = bswap32(*(v12 + 4));
              if ((v16 - 10) < HIWORD(v51))
              {
                goto LABEL_179;
              }

              v52 = HIWORD(v51);
              v53 = sub_1AA80((v12 + 10), HIWORD(v51), 0);
              if (v53)
              {
                v54 = v53;
                CFStringAppend(Mutable, v53);
                CFRelease(v54);
              }

              else
              {
                CFStringAppend(Mutable, @"(null)");
              }

              CFStringAppend(Mutable, @", addrs: ");
              v69 = v12 + 10;
              v58 = *&v12[v52 + 10];
              v59 = v16 - 10 - v52 - 2;
              if (v59 < (bswap32(v58) >> 16))
              {
                goto LABEL_179;
              }

              v60 = __rev16(v58);
              if ((v60 & 0xF) != 0)
              {
                goto LABEL_179;
              }

              v61 = v52 + 2;
              if (*&v12[v52 + 10])
              {
                if (v60 >> 4 <= 1)
                {
                  v62 = 1;
                }

                else
                {
                  v62 = v60 >> 4;
                }

                v63 = &v12[v52 + 12];
                v64 = v52 - v16 + 12;
                do
                {
                  inet_ntop(30, v63, v76, 0x2Eu);
                  CFStringAppendFormat(Mutable, 0, @"%s ", v76);
                  v61 += 16;
                  v63 += 16;
                  v64 += 16;
                  --v62;
                }

                while (v62);
                v59 = -v64;
              }

              if (v59 < 2)
              {
LABEL_179:
                CFStringAppend(Mutable, @"<truncated>");
                v9 = v70;
                v7 = a1;
LABEL_180:
                CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", v16, 10);
                sub_59CB0(theString, (v12 + 2), v16 - 2, 58);
              }

              else
              {
                v65 = bswap32(*&v69[v61]) >> 16;
                CFStringAppend(Mutable, @", service parameters: ");
                sub_1A9BC(Mutable, &v69[v61 + 2], v65, 32);
                CFStringAppend(theString, Mutable);
                v9 = v70;
                v7 = a1;
              }

              p_dst = &__dst;
LABEL_182:
              sub_41E8(p_dst);
              goto LABEL_183;
          }
        }

        v25 = v16 - 2;
        v26 = (v12 + 2);
        v27 = theString;
LABEL_114:
        sub_59CB0(v27, v26, v25, 58);
LABEL_183:
        CFStringAppend(theString, @"\n");
        ++v10;
      }

      while (v10 != v9);
    }
  }
}

uint64_t sub_19EEC()
{
  result = _CFRuntimeRegisterClass();
  qword_702D8 = result;
  return result;
}

void sub_19F14(uint64_t a1)
{
  sub_1595C(a1 + 48);

  sub_41E8((a1 + 32));
}

__CFString *sub_19F50(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<RouterAdvertisement %p [%p]> { ", a1, v2);
  sub_19004(a1, Mutable);
  CFStringAppend(Mutable, @"}");
  return Mutable;
}

uint64_t sub_19FC8(uint64_t a1, uint64_t a2, char *__dst, _BYTE *a4, _WORD *a5, CFMutableStringRef theString)
{
  v7 = a2;
  if (a2 > 0xF)
  {
    v12 = bswap32(*(a1 + 2));
    if ((HIWORD(v12) & 7) < 6u)
    {
      v16 = HIWORD(v12);
      v17 = 0x202830384060uLL >> (8 * (BYTE2(v12) & 7u));
      memmove(__dst, (a1 + 4), (v17 >> 3) & 0xF);
      bzero(&__dst[(v17 >> 3) & 0xF], 16 - ((v17 & 0x78) >> 3));
      *a4 = v17;
      *a5 = v16 & 0xFFF8;
      return 1;
    }

    if (theString)
    {
      CFStringAppendFormat(theString, 0, @"invalid PLC=%d: ", HIWORD(v12) & 7);
      v9 = v7 - 2;
      v11 = theString;
      v10 = a1 + 2;
      goto LABEL_8;
    }
  }

  else if (theString)
  {
    CFStringAppendFormat(theString, 0, @"truncated (%d < %d) ", a2, 16);
    v9 = v7 - 2;
    v10 = a1 + 2;
    v11 = theString;
LABEL_8:
    sub_59CB0(v11, v10, v9, 58);
  }

  return 0;
}

void sub_1A164(uint64_t a1, int a2, const void *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  if (a2 != 5)
  {
    if (a2 == 2)
    {
      if (*(v7 + 16))
      {
        if (sub_1BF4C(v7 + 104))
        {
          v27 = sub_1EFD8(v8 + 104);
          current_time = timer_get_current_time();
          if (v27 != 0.0 && v27 < current_time)
          {
            sub_1E738(a1);
          }
        }

        sub_166A8(a1);
        if (*(v8 + 16))
        {
          v29 = timer_get_current_time();
          v30 = sub_1BBEC(*(v8 + 16), 0, 0, v29);
          if (sub_1BF4C(v8 + 104))
          {
            v31 = sub_1EFD8(v8 + 104);
            if (v31 < v30 && v31 != 0.0)
            {
              v30 = v31;
            }
          }

          if (v30 != 0.0)
          {
            v33 = CFDateCreate(0, v30);
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }
        }
      }

      return;
    }

    if (a2)
    {
      return;
    }

    sub_43E1C(a1, 2u);
    timer_cancel(*(v8 + 8));
    sub_54968(*v8, sub_1A164, a1, 5);
  }

  v9 = nullsub_1(v6);
  sub_1A844(v9, a3);
  v11 = (v8 + 16);
  v10 = *(v8 + 16);
  if (v10)
  {
    v12 = sub_1B0C8(v10);
    v13 = sub_1B0C8(a3);
    if (*v12 != *v13 || v12[1] != v13[1])
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        v25 = nullsub_1(v6);
        v26 = sub_1B9E0(*v11);
        *v24 = 136315394;
        *(v24 + 4) = v25;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v26;
        __SC_log_send();
      }

      return;
    }
  }

  else if (!sub_1A82C(a3))
  {
    *(v8 + 80) = 1;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v47 = _os_log_pack_size();
      __chkstk_darwin(v47, v48, v49, v50, v51, v52, v53, v54);
      v55 = *__error();
      v56 = _os_log_pack_fill();
      v57 = nullsub_1(v6);
      *v56 = 136315138;
      *(v56 + 4) = v57;
      __SC_log_send();
    }

    return;
  }

  timer_cancel(*(v8 + 8));
  sub_41E8((v8 + 16));
  if (sub_1A82C(a3))
  {
    CFRetain(a3);
    *v11 = a3;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v34 = _os_log_pack_size();
      __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
      v42 = *__error();
      v43 = _os_log_pack_fill();
      v44 = nullsub_1(v6);
      *v43 = 136315138;
      *(v43 + 4) = v44;
      __SC_log_send();
    }
  }

  v45 = *(v8 + 24);
  if (v45)
  {
    if (*v11 && (v46 = sub_1B0D0(*v11), v45 = *(v8 + 24), v46 >= 0x40))
    {
      if ((v46 & 0x80u) == 0)
      {
        v58 = 1;
      }

      else
      {
        v58 = 2;
      }

      if (sub_1A83C(v45) != v58)
      {
        v59 = sub_B6A8(a1, 0) != 0;
        sub_47878(*(v8 + 24));
        sub_46B34(*(v8 + 24), v59);
        sub_47760(*(v8 + 24), v58);
        sub_47190(*(v8 + 24));
      }
    }

    else if (sub_1E05C(v45))
    {
      sub_47878(*(v8 + 24));
    }
  }

  if (*v11)
  {
    v60 = sub_1BD14(*v11);
    v30 = sub_1BBEC(*v11, 0, 0, v60);
  }

  else
  {
    v30 = 0.0;
  }

  sub_166A8(a1);
  if (*v11)
  {
    sub_1E738(a1);
  }

  if (sub_1BF4C(v8 + 104))
  {
    v61 = sub_1EFD8(v8 + 104);
    if (v61 < v30 && v61 != 0.0)
    {
      v30 = v61;
    }
  }

  if (v30 != 0.0)
  {
    v33 = CFDateCreate(0, v30);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_57:
      v63 = _os_log_pack_size();
      __chkstk_darwin(v63, v64, v65, v66, v67, v68, v69, v70);
      v71 = *__error();
      v72 = _os_log_pack_fill();
      v73 = nullsub_1(v6);
      *v72 = 136315394;
      *(v72 + 4) = v73;
      *(v72 + 12) = 2112;
      *(v72 + 14) = v33;
      __SC_log_send();
    }

LABEL_58:
    CFRelease(v33);
    timer_callout_set_absolute(*(v8 + 8), sub_1A164, a1, 2, 0, v30);
  }
}

void sub_1A844(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A97C(a2);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v3;
    __SC_log_send();
  }

  CFRelease(v3);
}

__CFString *sub_1A97C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_19004(a1, Mutable);
  return Mutable;
}

void sub_1A9BC(CFMutableStringRef theString, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (a4 && v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          *v11 = a4;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

CFStringRef sub_1AA80(uint64_t a1, unsigned int a2, int a3)
{
  cStr[0] = 0;
  cStr[1] = v6;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  HIDWORD(v8) = 128;
  if (!sub_1AB58(a1, a2, v6, v3))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, cStr[1], 0x8000100u);
  if ((cStr[0] & 1) == 0 && cStr[1] && cStr[1] != v6)
  {
    free(cStr[1]);
  }

  return v4;
}

uint64_t sub_1AB58(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v4 = 0;
  __src = 46;
  v31 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v30 = 0;
  v4 = 0;
  v9 = 0;
  v10 = 0;
  v34[1] = 0x800000000;
  memset(v33, 0, sizeof(v33));
  v34[0] = v33;
  v29 = 1;
  v11 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v9 >= a2)
        {
          goto LABEL_44;
        }

        v12 = (a1 + v9);
        v13 = *v12;
        if ((~v13 & 0xC0) != 0)
        {
          break;
        }

        if (a4)
        {
          v23 = __stderrp;
          v24 = "single name with pointers\n";
          v25 = 26;
          goto LABEL_54;
        }

        if (v9 >= v10)
        {
          if (v11 <= 1)
          {
            v23 = __stderrp;
            v24 = "truncated pointer value\n";
            v25 = 24;
            goto LABEL_54;
          }

          v10 = (v10 + 2);
          v11 -= 2;
        }

        v14 = bswap32(*v12 & 0xFF3F);
        if (v9 <= HIWORD(v14))
        {
          v23 = __stderrp;
          v24 = "pointer points at or ahead of current position\n";
          v25 = 47;
          goto LABEL_54;
        }

        v9 = HIWORD(v14);
        if (v30 <= v9)
        {
          v23 = __stderrp;
          v24 = "attempt to create infinite loop\n";
          v25 = 32;
          goto LABEL_54;
        }

        if (SLODWORD(v34[1]) >= 1)
        {
          if (*v34[0] == v9)
          {
            continue;
          }

          v15 = 1;
          do
          {
            v16 = v15;
            if (LODWORD(v34[1]) == v15)
            {
              break;
            }

            v17 = *(v34[0] + v15++);
          }

          while (v17 != v9);
          if (v16 < LODWORD(v34[1]))
          {
            continue;
          }
        }

        v23 = __stderrp;
        v24 = "attempt to point off into the weeds\n";
        v25 = 36;
LABEL_54:
        fwrite(v24, v25, 1uLL, v23);
        goto LABEL_55;
      }

      if (v9 >= v10)
      {
        break;
      }

      if (!*v12)
      {
        goto LABEL_35;
      }

LABEL_21:
      if (SLODWORD(v34[1]) < 1)
      {
        goto LABEL_27;
      }

      if (*v34[0] != v9)
      {
        v18 = 1;
        do
        {
          v19 = v18;
          if (LODWORD(v34[1]) == v18)
          {
            break;
          }

          v20 = *(v34[0] + v18++);
        }

        while (v20 != v9);
        if (v19 >= LODWORD(v34[1]))
        {
LABEL_27:
          sub_1AF3C(v33, v9);
        }
      }

      if ((v29 & 1) == 0)
      {
        sub_1AFD8(a3, &__src, 1);
      }

      sub_1AFD8(a3, v12 + 1, v13);
      v29 = 0;
      v9 = v9 + v13 + 1;
    }

    if (v13 >= 0x40)
    {
      v28 = *v12;
      fprintf(__stderrp, "label length %d > %d\n");
      goto LABEL_40;
    }

    v21 = v13 + 1;
    if (v11 <= v13)
    {
      break;
    }

    v10 = v21 + v10;
    v11 -= v21;
    if (*v12)
    {
      goto LABEL_21;
    }

LABEL_35:
    if ((a4 & 2) != 0)
    {
      sub_1AFD8(a3, &__src, 1);
    }

    v29 = 1;
    sub_1AFD8(a3, &v31, 1);
    v4 = (v4 + 1);
    if (a4)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v30 = v10;
    v9 = v10;
    if (v22)
    {
      goto LABEL_43;
    }
  }

  fprintf(__stderrp, "label truncated %d < %d\n");
LABEL_40:
  v22 = 4;
LABEL_43:
  if (v22 == 4)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (v4)
  {
    goto LABEL_60;
  }

  if (!*(a3 + 144))
  {
    v23 = __stderrp;
    v24 = "empty list\n";
    v25 = 11;
    goto LABEL_54;
  }

  if (a4)
  {
    v4 = 1;
    sub_1AFD8(a3, &v31, 1);
    goto LABEL_60;
  }

LABEL_55:
  if ((*(a3 + 128) & 1) == 0)
  {
    v26 = *(a3 + 136);
    if (v26)
    {
      if (v26 != a3)
      {
        free(v26);
      }
    }
  }

  v4 = 0;
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
LABEL_60:
  if (v34[0] && v34[0] != v33)
  {
    free(v34[0]);
  }

  return v4;
}

int *sub_1AF3C(int *result, size_t size)
{
  v2 = size;
  v3 = result;
  v4 = result[11];
  if (v4 == result[10])
  {
    result[11] = 2 * v4;
    v5 = *(result + 4);
    v6 = 8 * v4;
    if (v5 == v3)
    {
      v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      *(v3 + 32) = v7;
      result = memmove(v7, v3, 4 * *(v3 + 40));
    }

    else
    {
      result = reallocf(v5, v6);
      *(v3 + 32) = result;
    }
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(v3 + 40) = v9 + 1;
  *(v8 + 4 * v9) = v2;
  return result;
}

uint64_t sub_1AFD8(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 148);
  v7 = v6 - *(a1 + 144);
  if (v7 < a3)
  {
    if (*(a1 + 128) == 1)
    {
      fprintf(__stderrp, "user-supplied buffer failed to add data with length %d (> %d)\n", a3, v7);
      return 0;
    }

    if (a3 <= 128)
    {
      v9 = 128;
    }

    else
    {
      v9 = a3;
    }

    v10 = v6 + v9;
    *(a1 + 148) = v10;
    v11 = *(a1 + 136);
    if (v11 == a1)
    {
      v12 = malloc_type_malloc(v10, 0xDF09CD32uLL);
      *(a1 + 136) = v12;
      memcpy(v12, a1, *(a1 + 144));
    }

    else
    {
      *(a1 + 136) = reallocf(v11, v10);
    }
  }

  memcpy((*(a1 + 136) + *(a1 + 144)), __src, a3);
  *(a1 + 144) += a3;
  return 1;
}

void sub_1B0D8(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 == 5)
  {
    LODWORD(v82[0]) = 7776000;
    v80 = 0;
    v81 = 0;
    if (sub_280D8(a3, *(v7 + 2332), v8, &v81 + 1, &v81))
    {
      if (HIDWORD(v81) == 5)
      {
        if ((*(*a3 + 16) + 1) >= 2)
        {
          dhcp_get_lease_from_options(a3 + 16, v82, &v80 + 1, &v80);
          sub_28AEC(a1, "SELECT", v82[0], HIDWORD(v80), v80, current_time);
          sub_58494(v7 + 208);
          memmove((v7 + 224), *a3, *(a3 + 8));
          v40 = *(a3 + 8);
          *(v7 + 1724) = v40;
          sub_585E0((v7 + 208), v7 + 224, v40, 0);
          *(v7 + 1732) = *(*a3 + 16);
          if (v81)
          {
            *(v7 + 1736) = v81;
          }

          sub_28E1C(a1, 0, 0);
        }
      }

      else if (HIDWORD(v81) == 6 && v81 && v81 == *(v7 + 1736))
      {
        sub_8CD0(a1);
        timer_set_relative(*(v7 + 1760), 10, 0, sub_B40, a1, 0, 0);
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2)
      {
        return;
      }

      memset(v82, 0, sizeof(v82));
      sub_9D7C(a1, 4u);
      sub_8CD0(a1);
      v9 = *(v7 + 168);
      v10 = sub_A694(a1);
      if (v9)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9 != 0;
      }

      v13 = sub_A840(v8);
      v14 = sub_638C(v8);
      v15 = sub_AD1C(v8);
      v16 = sub_A848((v7 + 1784), 3, v13, v14, v15, *(v7 + 24), *(v7 + 32), v12, v82);
      *(v7 + 176) = v16;
      if (!v16)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_26;
        }

LABEL_21:
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = nullsub_1(v8);
        *v26 = 136315138;
        *(v26 + 4) = v27;
LABEL_25:
        __SC_log_send();
        goto LABEL_26;
      }

      if (sub_ADA4(v82, 50, 4, (v7 + 1732)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      if (sub_ADA4(v82, 54, 4, (v7 + 1736)))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_24:
          v28 = _os_log_pack_size();
          __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
          v36 = *__error();
          v37 = _os_log_pack_fill();
          v38 = nullsub_1(v8);
          v39 = sub_588A8(v82);
          *v37 = 136315394;
          *(v37 + 4) = v38;
          *(v37 + 12) = 2080;
          *(v37 + 14) = v39;
          goto LABEL_25;
        }

LABEL_26:
        sub_25B1C(a1, 5u);
        return;
      }

      sub_B1BC(a1, v82);
      if (sub_ADA4(v82, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v41 = sub_B830(v82) + 240;
      if (v41 <= 0x12C)
      {
        v41 = 300;
      }

      *(v7 + 184) = v41;
      *(v7 + 1768) = 0;
      *(v7 + 44) = 0;
      *(v7 + 2340) = G_initial_wait_secs;
      bootp_client_enable_receive(*(v7 + 16), sub_1B0D8, a1, 5);
    }

    v42 = *(v7 + 1768);
    *(v7 + 1768) = v42 + 1;
    if (v42 <= dword_7003C)
    {
      v54 = *(v7 + 176);
      *(v54 + 4) = bswap32(*(v7 + 2332));
      *(v54 + 8) = __rev16((current_time - *(v7 + 1752)));
      if ((bootp_client_transmit(*(v7 + 16), 0xFFFFFFFF, 0, word_70044, word_70020, v54, *(v7 + 184)) & 0x80000000) != 0)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v55 = _os_log_pack_size();
          __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
          v63 = *__error();
          v64 = _os_log_pack_fill();
          v65 = nullsub_1(v8);
          *v64 = 136315138;
          *(v64 + 4) = v65;
          __SC_log_send();
        }
      }

      v66 = *(v7 + 2340);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v67 = _os_log_pack_size();
        __chkstk_darwin(v67, v68, v69, v70, v71, v72, v73, v74);
        v75 = *__error();
        v76 = _os_log_pack_fill();
        v77 = nullsub_1(v8);
        v78 = current_time - *(v7 + 1752);
        *v76 = 136315906;
        *(v76 + 4) = v77;
        *(v76 + 12) = 2048;
        *(v76 + 14) = v78;
        *(v76 + 22) = 2048;
        *(v76 + 24) = v66;
        *(v76 + 32) = 1024;
        *(v76 + 34) = 0;
        __SC_log_send();
      }

      timer_set_relative(*(v7 + 1760), v66, 0, sub_1B0D8, a1, 2, 0);
      v79 = 2 * *(v7 + 2340);
      if (v79 >= G_max_wait_secs)
      {
        v79 = G_max_wait_secs;
      }

      *(v7 + 2340) = v79;
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v43 = _os_log_pack_size();
        __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
        v51 = *__error();
        v52 = _os_log_pack_fill();
        v53 = nullsub_1(v8);
        *v52 = 136315138;
        *(v52 + 4) = v53;
        __SC_log_send();
      }

      sub_B40(a1, 0, 0);
    }
  }
}

_BYTE *sub_1B9E8(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2960(a1 + 48);
  *a2 = 0;
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = sub_42C8(a1 + 48, v6);
    if (*v7 == 1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  if (!v7[1])
  {
    return 0;
  }

  *a2 = 8 * v7[1] - 2;
  return v7 + 2;
}

CFMutableArrayRef sub_1BA78(uint64_t a1, __CFArray **a2)
{
  v14 = 0;
  v15 = 0;
  if (sub_2960(a1 + 48) < 1)
  {
    Mutable = 0;
    v4 = 0;
    if (a2)
    {
LABEL_15:
      *a2 = v4;
    }
  }

  else
  {
    v4 = 0;
    Mutable = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v13 = 0;
      v8 = sub_42C8(a1 + 48, v7);
      if (*v8 == 3)
      {
        v9 = v8;
        if ((v8[1] & 0x1C) == 0)
        {
          sub_41E8(&v15);
          sub_41E8(&v14);
          return v15;
        }

        if (!v6)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v15 = Mutable;
          if (a2)
          {
            v14 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          }
        }

        v13 = sub_1A0F8(v9 + 16);
        CFArrayAppendValue(Mutable, v13);
        sub_41E8(&v13);
        v4 = v14;
        if (v14)
        {
          valuePtr = v9[2];
          v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(v4, v10);
          CFRelease(v10);
        }

        v6 = Mutable;
      }

      ++v7;
    }

    while (v7 < sub_2960(a1 + 48));
    if (a2)
    {
      goto LABEL_15;
    }
  }

  return Mutable;
}

double sub_1BBEC(uint64_t a1, BOOL *a2, char *a3, double a4)
{
  v19 = 0;
  v18 = 0;
  v8 = sub_18C18(a1, &v18 + 1, &v18);
  v9 = 0.0;
  if (!v8)
  {
LABEL_19:
    v12 = 0;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v18 != -1)
  {
    if (!v18 || ((v10 = *(a1 + 40), v10 <= a4) ? (v11 = a4 - v10 < v18) : (v11 = 0), !v11))
    {
      v12 = 1;
      if (!a2)
      {
        goto LABEL_21;
      }

LABEL_20:
      *a2 = v8 != 0;
      goto LABEL_21;
    }
  }

  if (sub_1BD1C(a1, &v20, &v19) && ((v13 = v19, v19 == -1) || v19 && ((v14 = *(a1 + 40), v14 <= a4) ? (v15 = a4 - v14 < v19) : (v15 = 0), v15)))
  {
    v16 = v18;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = v18;
  }

  v13 = v16;
  if (v16 == -1)
  {
    goto LABEL_19;
  }

LABEL_25:
  v12 = 0;
  v9 = *(a1 + 40) + v13;
  if (a2)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (a3)
  {
    *a3 = v12;
  }

  return v9;
}

uint64_t sub_1BD1C(uint64_t a1, int *a2, unsigned int *a3)
{
  v6 = sub_2960(a1 + 48);
  if (v6 < 1)
  {
LABEL_7:
    v12 = 0;
    result = 0;
    v14 = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = sub_42C8(a1 + 48, v8);
    if (*v9 == 31)
    {
      v10 = *(v9 + 1);
      if (v10 < 2)
      {
        goto LABEL_7;
      }

      v11 = *(v9 + 4);
      if (v11)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  v12 = 8 * v10 - 8;
  while (!*(v9 + 6 + v12))
  {
    if (v12-- <= 2)
    {
      v12 = 1;
      break;
    }
  }

  result = v9 + 8;
  v14 = bswap32(v11);
  if (a2)
  {
LABEL_8:
    *a2 = v12;
  }

LABEL_9:
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1BDF8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *a1; ; i += 32)
  {
    v4 = *i == *a2 && *(i + 8) == *(a2 + 8);
    if (v4 && *(i + 16) == *(a2 + 16))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BE48(uint64_t result, uint64_t a2)
{
  if (!*(result + 56) && !*(result + 60) && !*(result + 64) && !*(result + 68))
  {
    return sub_1C394(a2);
  }

  *a2 = a2 + 12;
  *(a2 + 8) = 1;
  *(a2 + 12) = *(result + 56);
  *(a2 + 28) = *(result + 72);
  return result;
}

uint64_t sub_1BE98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  if (v2 && (v3 = *(a1 + 264), v3 == *(a1 + 116)) && (v4 = *(a1 + 184)) != 0)
  {
    *a2 = *(a1 + 176);
    *(a2 + 8) = v4;
    *(a2 + 16) = v2;
    if (v3 == 3)
    {
      *(a2 + 76) = *(a1 + 76);
      *(a2 + 92) = *(a1 + 92);
      v8 = *(a1 + 216);
      *(a2 + 96) = v8;
      v5 = v8;
    }

    else
    {
      if (v3 != 2)
      {
        return 1;
      }

      v5 = *(a1 + 216);
    }

    v6 = 1;
    *(a2 + 72) = 1;
    v9 = *(a1 + 200);
    *(a2 + 24) = v9;
    *(a2 + 32) = 0;
    if (v5 != -1)
    {
      *(a2 + 32) = v9 + v5;
    }
  }

  else
  {
    v6 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 72) = 0;
  }

  return v6;
}

BOOL sub_1BF54(uint64_t a1, char *a2, _BYTE *a3, _WORD *a4)
{
  v8 = sub_2960(a1 + 48);
  if (v8 < 1)
  {
    return 0;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = sub_42C8(a1 + 48, v10);
      if (*v12 == 38 && (sub_19FC8(v12, 8 * v12[1], a2, a3, a4, 0) & 1) != 0)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  return v11;
}

CFStringRef sub_1C00C(uint64_t a1, _WORD *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = 0;
  v5 = 0;
  v3 = sub_1BF54(a1, v7, &v6, &v5);
  result = 0;
  if (v3)
  {
    inet_ntop(30, v7, v8, 0x2Eu);
    result = CFStringCreateWithFormat(0, 0, @"%s/%d", v8, v6);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C0C4(uint64_t a1)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    return *(a1 + 124);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1C0DC(uint64_t a1)
{
  v14 = 0;
  v1 = sub_1C00C(a1, &v14);
  v15 = v1;
  if (v1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = v14;
      *v11 = 138412546;
      *(v11 + 4) = v1;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v12;
      __SC_log_send();
    }

    if (!v14)
    {
      sub_41E8(&v15);
      return v15;
    }
  }

  return v1;
}

uint64_t sub_1C228(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (((*v2 >> 21) & 1) != a2)
  {
    *v2 = *v2 & 0xFFDFFFFF | ((a2 != 0) << 21);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = nullsub_1(*(v2 + 8));
      v15 = "";
      if (!a2)
      {
        v15 = "not ";
      }

      *v13 = 136315394;
      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v15;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_1C394(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 176) = 0;
  return result;
}

void sub_1C3B4(uint64_t a1, const void *a2)
{
  v4 = sub_1690(a1);
  v14 = 0uLL;
  v13 = 0;
  v12 = 0;
  v5 = sub_1688(a1);
  v6 = *(v5 + 16);
  if (!v6 || (sub_1BF54(v6, &v14, &v13, &v12) ? (v7 = v12 == 0) : (v7 = 1), v7))
  {
    sub_41E8((v5 + 88));
    if (!*(v5 + 76))
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    if (a2)
    {
      v9 = *(v5 + 88);
      if (v9 && CFEqual(a2, v9))
      {
        return;
      }

      CFRetain(a2);
      sub_41E8((v5 + 88));
      *(v5 + 88) = a2;
    }

    v8 = 1;
  }

  v10 = nullsub_1(v4);
  if (sub_41BCC(v10, &v14, &v13, v8))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  *(v5 + 76) = v11;
}

void sub_1C4B0(uint64_t a1, _DWORD *a2, int a3, void *a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  memset(v75, 0, sizeof(v75));
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v66 = 0;
  if (!*a1)
  {
    return;
  }

  *(a1 + 132) = a7 != 0;
  *(a1 + 40) = 1;
  *(a1 + 28) = 0;
  if (!qword_70188)
  {
    return;
  }

  v13 = a2;
  v63 = v8;
  v69 = 0;
  memset(v74, 0, sizeof(v74));
  if (a2)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v17 = Mutable;
  v67 = Mutable;
  if (a6)
  {
    v18 = v15;
    if (*(a6 + 72))
    {
      v19 = *(a6 + 92);
      if (*(a6 + 92))
      {
        if (*(a6 + 76) || *(a6 + 80) || *(a6 + 84) || *(a6 + 88))
        {
          v61 = *(a6 + 100);
          v20 = *(a6 + 96);
          sub_1CCE0(Mutable, @"DelegatedPrefix", (a6 + 76));
          sub_1DF6C(v17, @"DelegatedPrefixLength", v19);
          sub_1DF6C(v17, @"DelegatedPrefixValidLifetime", v20);
          sub_1DF6C(v17, @"DelegatedPrefixPreferredLifetime", v61);
        }
      }
    }

    v15 = v18;
    if (v18)
    {
      v22 = *(a6 + 56);
      v21 = *(a6 + 64);
      if (v21)
      {
        CFDictionarySetValue(v17, @"NAT64Prefix", v21);
      }

      else if (!v22)
      {
        if (*(a6 + 48))
        {
          CFDictionarySetValue(v17, kSCPropNetIPv6PerformPLATDiscovery, kCFBooleanTrue);
          v22 = 0;
          v24 = " [PLATDiscovery]";
          goto LABEL_25;
        }

        v22 = 0;
      }

      v24 = "";
LABEL_25:
      v62 = v24;
      goto LABEL_26;
    }

    v23 = 0;
    v22 = 0;
    v62 = "";
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v62 = "";
    if (v15)
    {
LABEL_26:
      v58 = v15;
      v59 = v22;
      v25 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v26 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (a3 >= 1)
      {
        v27 = a3;
        do
        {
          LODWORD(valuePtr) = 0;
          v28 = sub_1A0F8(v13);
          CFArrayAppendValue(v25, v28);
          CFRelease(v28);
          LODWORD(valuePtr) = v13[4];
          v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(v26, v29);
          CFRelease(v29);
          v13 += 8;
          --v27;
        }

        while (v27);
      }

      CFDictionarySetValue(v17, kSCPropNetIPv6Addresses, v25);
      CFRelease(v25);
      CFDictionarySetValue(v17, kSCPropNetIPv6PrefixLength, v26);
      CFRelease(v26);
      if (a4)
      {
        sub_1CCE0(v17, kSCPropNetIPv6Router, a4);
      }

      v23 = sub_1CD84(a1, a6, &v70);
      v72 = v23;
      v22 = v59;
      v15 = v58;
    }
  }

  CFDictionarySetValue(v17, kSCPropInterfaceName, *(v7 + 16));
  if ((sub_10EE8(v63) & 8) == 0)
  {
    CFDictionarySetValue(v17, kSCPropConfirmedInterfaceName, *(v7 + 16));
    if (a7)
    {
      sub_2B7AC(v17, a7);
    }
  }

  if (a6)
  {
    v73 = sub_1D95C(a6);
    v71 = sub_1DC5C(a6);
  }

  v68 = 0;
  sub_11084(v75, v74, kSCEntNetIPv6, v17, &v68);
  if (v22)
  {
    sub_11084(v75, v74, kSCEntNetIPv4, v22, &v68);
    v23 = v72;
  }

  sub_11084(v75, v74, kSCEntNetDNS, v23, &v68);
  sub_11084(v75, v74, @"DHCPv6", v73, &v68);
  sub_11084(v75, v74, kSCEntNetCaptivePortal, v70, &v68);
  sub_11084(v75, v74, kSCEntNetPvD, v71, &v68);
  if (v15)
  {
    v30 = sub_1DFD0(a1);
    if (!v22 && !v30)
    {
      valuePtr = kSCPropNetServicePrimaryRank;
      values = kSCValNetServicePrimaryRankLast;
      v66 = CFDictionaryCreate(0, &valuePtr, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  sub_11084(v75, v74, kCFNull, v66, &v68);
  v31 = v68;
  v32 = sub_12160(v75, v74, v68);
  v69 = v32;
  sub_11F3C(qword_70188, *a1, v75, v74, v31, *(a1 + 36));
  dispatch_source_merge_data(qword_701C0, 1uLL);
  sub_41E8(&v67);
  sub_41E8(&v72);
  sub_41E8(&v73);
  sub_41E8(&v70);
  sub_41E8(&v66);
  sub_41E8(&v71);
  if (dword_700C0)
  {
    byte_701AC = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }

  *(a1 + 76) = 0;
  if (sub_12330(a1))
  {
    if ((*v7 & 8) != 0)
    {
      sub_144D8(*(v7 + 8));
      sub_12D68();
      *v7 &= ~8u;
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35, v36, v37, v38, v39, v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        v43 = sub_6160(*(a1 + 24));
        v44 = nullsub_1(*(v7 + 8));
        *v42 = 136315394;
        *(v42 + 4) = v43;
        *(v42 + 12) = 2080;
        *(v42 + 14) = v44;
        __SC_log_send();
      }
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    if (v22)
    {
      v45 = " [464XLAT]";
    }

    else
    {
      v45 = v62;
    }

    v46 = _os_log_pack_size();
    __chkstk_darwin(v46, v47, v48, v49, v50, v51, v52, v53);
    v54 = *__error();
    v55 = _os_log_pack_fill();
    v56 = sub_6160(*(a1 + 24));
    v57 = nullsub_1(*(v7 + 8));
    *v55 = 136315906;
    *(v55 + 4) = v56;
    *(v55 + 12) = 2080;
    *(v55 + 14) = v57;
    *(v55 + 22) = 2112;
    *(v55 + 24) = v32;
    *(v55 + 32) = 2080;
    *(v55 + 34) = v45;
    __SC_log_send();
  }

  sub_41E8(&v69);
}

void sub_1CCE0(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = inet_ntop(30, a3, v7, 0x2Eu);
  v6 = CFStringCreateWithCString(0, v5, 0x600u);
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v6);
}

__CFDictionary *sub_1CD84(uint64_t a1, uint64_t a2, CFDictionaryRef *a3)
{
  v5 = *(*(a1 + 16) + 8);
  v6 = sub_498C(*(a1 + 16), *a1, 1);
  memset(&v10, 0, sizeof(v10));
  v11 = 0;
  if (v6 && *(v6 + 10) && !*(v6 + 7))
  {
    sub_8DB0(v6, 13, &v10);
  }

  v7 = nullsub_1(v5);
  v8 = sub_1126C(v7, &v10, a2);
  *a3 = sub_11B44(&v10, a2);
  return v8;
}

uint64_t sub_1CE28(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 100);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CE40(int a1)
{
  if (a1 - 51) < 0xB && ((0x7ADu >> (a1 - 51)))
  {
    return 1;
  }

  if (dword_70018 < 1)
  {
    return 0;
  }

  v2 = off_70010;
  v3 = dword_70018 - 1;
  do
  {
    v4 = *v2++;
    v1 = v4 == a1;
  }

  while (v4 != a1 && v3-- != 0);
  return v1;
}

unsigned __int8 *sub_1CEA4(uint64_t a1, int a2, _DWORD *a3, int *a4)
{
  result = 0;
  if (a2 && a2 != 255)
  {
    if (a4)
    {
      v9 = *a4;
    }

    else
    {
      v9 = 0;
    }

    while (1)
    {
      if (v9 >= sub_2960(a1))
      {
        return 0;
      }

      v10 = sub_42C8(a1, v9);
      if (*v10 == a2)
      {
        break;
      }

      ++v9;
    }

    if (a3)
    {
      *a3 = v10[1];
    }

    if (a4)
    {
      *a4 = v9 + 1;
    }

    return v10 + 2;
  }

  return result;
}

char *sub_1CF54(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = 0;
  if (a2 && a2 != 255)
  {
    if (sub_2960(a1) < 1)
    {
      v3 = 0;
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v3 = 0;
      do
      {
        v9 = sub_42C8(a1, v7);
        if (*v9 == a2)
        {
          v10 = v9;
          v11 = v9[1];
          if (v3)
          {
            v12 = v11 + v8;
            v3 = reallocf(v3, v11 + v8);
          }

          else
          {
            v3 = malloc_type_malloc(v9[1], 0xA6202F9uLL);
            v12 = v8 + v11;
          }

          memmove(&v3[v8], v10 + 2, v11);
          v8 = v12;
        }

        ++v7;
      }

      while (v7 < sub_2960(a1));
    }

    *a3 = v8;
  }

  return v3;
}

__CFArray *sub_1D054(uint64_t a1, uint64_t a2, signed int a3, __n128 a4)
{
  v24 = a1;
  Mutable = 0;
  if (a2 && a3 >= 4)
  {
    Mutable = 0;
    if (a3 >> 2 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3 >> 2;
    }

    v6 = (a2 + 3);
    a4.n128_u64[0] = 136316162;
    v23 = a4;
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      if (((v9 << 16) | (v8 << 8) | (v10 << 24) | v7) + 1 > 1)
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        }

        v21 = sub_1103C((v9 << 16) | (v8 << 8) | (v10 << 24) | v7);
        CFArrayAppendValue(Mutable, v21);
        CFRelease(v21);
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = _os_log_pack_size();
          v26 = Mutable;
          v25 = &v23;
          __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
          v19 = *__error();
          Mutable = v26;
          v20 = _os_log_pack_fill();
          *v20 = v23.n128_u32[0];
          *(v20 + 4) = v24;
          *(v20 + 12) = 1024;
          *(v20 + 14) = v7;
          *(v20 + 18) = 1024;
          *(v20 + 20) = v8;
          *(v20 + 24) = 1024;
          *(v20 + 26) = v9;
          *(v20 + 30) = 1024;
          *(v20 + 32) = v10;
          __SC_log_send();
        }
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  return Mutable;
}

unsigned __int16 *sub_1D258(uint64_t a1, int a2, unsigned int *a3, int *a4)
{
  v8 = sub_2960(a1);
  v9 = v8;
  if (a4)
  {
    v10 = *a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= v8)
  {
    return 0;
  }

  while (1)
  {
    v11 = sub_42C8(a1, v10);
    if (a2 == bswap32(*v11) >> 16)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = v10 + 1;
  }

  *a3 = bswap32(v11[1]) >> 16;
  return v11 + 2;
}

void sub_1D304(const __CFArray *a1, char *a2, int a3)
{
  Count = CFArrayGetCount(a1);
  if (a3 >= 1)
  {
    v7 = Count;
    do
    {
      v8 = sub_1A0F8(a2);
      v9.location = 0;
      v9.length = v7;
      if (!CFArrayContainsValue(a1, v9, v8))
      {
        CFArrayAppendValue(a1, v8);
        ++v7;
      }

      CFRelease(v8);
      a2 += 16;
      --a3;
    }

    while (a3);
  }
}

CFMutableArrayRef sub_1D394(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v2 = sub_2960(a1);
  if (v2 >= 1)
  {
    v3 = v2;
    Mutable = 0;
    while (1)
    {
      v5 = sub_1D258(a1, 144, &v9 + 1, &v9);
      if (!v5)
      {
        break;
      }

      if (SHIDWORD(v9) < 1)
      {
        break;
      }

      v6 = sub_5AC3C(v5, SHIDWORD(v9));
      if (!v6)
      {
        break;
      }

      v7 = v6;
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v10 = Mutable;
      }

      sub_5A618(Mutable, v7);
      CFRelease(v7);
      if (v9 >= v3)
      {
        v11.length = CFArrayGetCount(Mutable);
        v11.location = 0;
        CFArraySortValues(Mutable, v11, sub_5A518, 0);
        return v10;
      }
    }
  }

  sub_41E8(&v10);
  return v10;
}

BOOL sub_1D494(uint64_t a1, unsigned int a2, double a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 == -1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  return a3 - v4 >= a2 || v4 > a3;
}

CFMutableArrayRef sub_1D4D0(uint64_t a1)
{
  v18 = 0;
  v2 = sub_2960(a1 + 48);
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    Mutable = 0;
    while (1)
    {
      v6 = sub_2960(a1 + 48);
      if (v4 >= v6)
      {
        break;
      }

      v7 = v6;
      while (1)
      {
        v8 = sub_42C8(a1 + 48, v4);
        if (*v8 == 144)
        {
          break;
        }

        if (v7 == ++v4)
        {
          goto LABEL_21;
        }
      }

      v9 = v8;
      v10 = 8 * v8[1];
      if (v10 < 0xAu)
      {
        break;
      }

      v11 = bswap32(*(v8 + 1));
      Current = CFAbsoluteTimeGetCurrent();
      if (v11 != -1)
      {
        if (!v11)
        {
          break;
        }

        v13 = *(a1 + 40);
        if (v13 > Current || Current - v13 >= v11)
        {
          break;
        }
      }

      v15 = sub_5AE5C(v9 + 1, (v10 - 2));
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v18 = Mutable;
      }

      ++v4;
      sub_5A618(Mutable, v16);
      CFRelease(v16);
      if (v4 >= v3)
      {
        v19.length = CFArrayGetCount(Mutable);
        v19.location = 0;
        CFArraySortValues(Mutable, v19, sub_5A518, 0);
        return Mutable;
      }
    }
  }

LABEL_21:
  sub_41E8(&v18);
  return v18;
}

void sub_1D650(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = v5;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v9.location = 0;
      v9.length = v6;
      if (!CFArrayContainsValue(a1, v9, ValueAtIndex))
      {
        CFArrayAppendValue(a1, ValueAtIndex);
        ++v6;
      }
    }
  }
}

void sub_1D6EC(__CFDictionary *a1, CFDictionaryRef theDict, const __CFDictionary *a3, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  v8 = CFDictionaryGetValue(a3, key);
  if (Value | v8)
  {
    v9 = v8;
    if (Value && v8)
    {
      Count = CFArrayGetCount(Value);
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
      v12 = CFArrayGetCount(v9);
      if (v12 >= 1)
      {
        v13 = v12;
        for (i = 0; i != v13; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          v18.location = 0;
          v18.length = Count;
          if (!CFArrayContainsValue(Value, v18, ValueAtIndex))
          {
            CFArrayAppendValue(MutableCopy, ValueAtIndex);
          }
        }
      }

      CFDictionarySetValue(a1, key, MutableCopy);

      CFRelease(MutableCopy);
    }

    else
    {
      if (Value)
      {
        v16 = Value;
      }

      else
      {
        v16 = v8;
      }

      CFDictionarySetValue(a1, key, v16);
    }
  }
}

CFStringRef sub_1D860(UInt8 *bytes, CFIndex numBytes)
{
  if (bytes && numBytes >= 1)
  {
    return CFStringCreateWithBytes(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1D89C(uint64_t a1)
{
  v2 = sub_2960(a1 + 48);
  if (v2 < 1)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = sub_42C8(a1 + 48, v4);
    if (*v5 == 37)
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  v6 = v5;
  v7 = v5[1];
  if (v5[1] && (v8 = v5 + 2, v6[2]))
  {
    v9 = (8 * v7 - 2);
    while (!v6[v9])
    {
      v10 = v9 <= 2;
      v9 = (v9 - 1);
      if (v10)
      {
        v9 = 1;
        break;
      }
    }
  }

  else
  {
LABEL_13:
    v9 = 0;
    v8 = 0;
  }

  return sub_1D860(v8, v9);
}

CFMutableDictionaryRef sub_1D95C(uint64_t a1)
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

  v3 = sub_295C(*(a1 + 16));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = Mutable;
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = sub_42C0(v2, i);
      v8 = bswap32(*v7);
      v9 = HIWORD(v8);
      if (sub_11668(HIWORD(v8)))
      {
        v10 = CFDataCreate(0, v7 + 4, bswap32(*(v7 + 1)) >> 16);
        v11 = CFStringCreateWithFormat(0, 0, @"Option_%d", v9);
        Value = CFDictionaryGetValue(Mutable, v11);
        if (!Value)
        {
          Value = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          CFDictionarySetValue(Mutable, v11, Value);
          CFRelease(Value);
        }

        CFArrayAppendValue(Value, v10);
        CFRelease(v11);
        CFRelease(v10);
      }
    }
  }

  if (*(a1 + 72))
  {
    sub_1DB1C(Mutable, @"LeaseStartTime", *(a1 + 24));
    v13 = *(a1 + 32);
    if (v13 != 0.0)
    {
      sub_1DB1C(Mutable, @"LeaseExpirationTime", v13);
    }
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    sub_41E8(&v15);
    return v15;
  }

  return Mutable;
}

void sub_1DB1C(__CFDictionary *a1, const void *a2, CFAbsoluteTime a3)
{
  v5 = CFDateCreate(0, a3);
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

uint64_t sub_1DB78(uint64_t a1, void *a2, _WORD *a3, uint64_t a4)
{
  v8 = sub_2960(a1 + 48);
  if (v8 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = sub_42C8(a1 + 48, v10);
    if (*v11 == 21)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  v12 = 8 * *(v11 + 1);
  if (!v12)
  {
    return 0;
  }

  *a4 = *(v11 + 2) >> 7;
  *(a4 + 1) = (*(v11 + 2) & 0x40) != 0;
  *(a4 + 2) = (*(v11 + 2) & 0x20) != 0;
  *(a4 + 4) = *(v11 + 3) & 0xF;
  *a3 = bswap32(*(v11 + 4)) >> 16;
  *a2 = v12 - 6;
  return v11 + 6;
}

__CFDictionary *sub_1DC5C(uint64_t a1)
{
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DB78(v2, &v34, &v33, &v35);
  if (!v3 || v34 == 0)
  {
    return 0;
  }

  if (BYTE2(v35) == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return 0;
  }

  v14 = v3;
  v15 = sub_1AA80(v3, v34, 0);
  v32 = v15;
  if (!v15)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v31 = Mutable;
    sub_59ABC(Mutable, v14, v34);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      *v29 = 138412290;
      *(v29 + 4) = Mutable;
      __SC_log_send();
    }

    sub_41E8(&v31);
    return 0;
  }

  v16 = v15;
  v17 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v17, kSCPropNetPvDIdentifier, v16);
  if (v35 == 1)
  {
    sub_1DF6C(v17, kSCPropNetPvDHTTPSupported, 1);
    sub_1DF6C(v17, kSCPropNetPvDSequenceNumber, v33);
    sub_1DF6C(v17, kSCPropNetPvDDelay, v36);
    v18 = *(a1 + 104);
    if (v18)
    {
      CFDictionarySetValue(v17, kSCPropNetPvDAdditionalInformation, v18);
    }
  }

  if (BYTE1(v35) == 1)
  {
    sub_1DF6C(v17, kSCPropNetPvDLegacy, 1);
  }

  sub_41E8(&v32);
  return v17;
}

void sub_1DF6C(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

BOOL sub_1DFD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_295C(v1 + 24);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = sub_42C0(v1 + 24, v4);
    if (v6[6] != 261 && v6[10] && !v6[7])
    {
      break;
    }

    v5 = ++v4 < v3;
  }

  while (v3 != v4);
  return v5;
}

void sub_1E064(uint64_t a1, int a2)
{
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v70 = 0;
  v4 = sub_1690(a1);
  v69 = 0;
  v5 = sub_1688(a1);
  v6 = v5;
  v68 = 0;
  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  if (!a2)
  {
    goto LABEL_4;
  }

  if (*(v5 + 56))
  {
    return;
  }

  if (!*(v5 + 16))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = nullsub_1(v4);
      *v27 = 136315138;
      *(v27 + 4) = v28;
      __SC_log_send();
    }
  }

  else
  {
LABEL_4:
    v7 = sub_12E28(v4);
    if (v7 == 6)
    {
      v8 = 0;
      if (sub_2480(v4))
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else if (v7 == 255)
    {
      v8 = sub_2C978(a1);
      v9 = 2;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    if (dword_7004C == 3 || dword_7004C == 2 && v9 == 2)
    {
      v10 = sub_54490();
      if (v10)
      {
        v11 = v10;
        v12 = sub_144D8(v4);
        sub_16718(v71, v12);
        if (SDWORD2(v71[0]) >= 1)
        {
          v65 = a2;
          v13 = 0;
          v14 = 0;
          v15 = (*&v71[0] + 20);
          while (1)
          {
            if (*(v15 - 20) == 254 && (*(v15 - 19) & 0xC0) == 0x80)
            {
              if ((*v15 & 4) != 0)
              {
                IPv6AWDReportSetLinkLocalAddressDuplicated(v11);
              }

              goto LABEL_27;
            }

            if ((*v15 & 0x40) != 0)
            {
              break;
            }

LABEL_27:
            ++v14;
            v15 += 32;
            if (v14 >= SDWORD2(v71[0]))
            {
              v17 = v13 == 0;
              a2 = v65;
              goto LABEL_35;
            }
          }

          IPv6AWDReportSetAutoconfAddressAcquired(v11);
          v16 = *v15;
          if ((*v15 & 4) != 0)
          {
            IPv6AWDReportSetAutoconfAddressDuplicated(v11);
            v16 = *v15;
            if ((*v15 & 0x10) == 0)
            {
LABEL_24:
              if ((v16 & 8) == 0)
              {
LABEL_26:
                v13 = 1;
                goto LABEL_27;
              }

LABEL_25:
              IPv6AWDReportSetAutoconfAddressDetached(v11);
              goto LABEL_26;
            }
          }

          else if ((v16 & 0x10) == 0)
          {
            goto LABEL_24;
          }

          IPv6AWDReportSetAutoconfAddressDeprecated(v11);
          if ((*v15 & 8) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v17 = 1;
LABEL_35:
        sub_17B18(v71);
        if (v8)
        {
          IPv6AWDReportSetAPNName(v11, v8);
        }

        if (!v17)
        {
          v29 = *(v6 + 16);
          if (v29)
          {
            LODWORD(v73) = 0;
            v30 = sub_1A82C(v29);
            v31 = sub_58D48(*(v6 + 16), &v73);
            IPv6AWDReportSetRouterLifetime(v11, v30);
            IPv6AWDReportSetPrefixPreferredLifetime(v11, v31);
            IPv6AWDReportSetPrefixValidLifetime(v11, v73);
            if (v9 == 2)
            {
              if (v30 != 0xFFFF)
              {
                IPv6AWDReportSetRouterLifetimeNotMaximum(v11);
              }

              if (v73 != -1)
              {
                IPv6AWDReportSetPrefixLifetimeNotInfinite(v11);
              }
            }
          }
        }

        if (sub_1C0C4(a1))
        {
          IPv6AWDReportSetXLAT464Enabled(v11);
        }

        v32 = *(v6 + 16);
        if (v32 && sub_18C18(v32, 0, 0))
        {
          IPv6AWDReportSetAutoconfRDNSS(v11);
          if (sub_1BD1C(*(v6 + 16), 0, 0))
          {
            IPv6AWDReportSetAutoconfDNSSL(v11);
          }

          v33 = 1;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(v6 + 24);
        if (v34 && sub_46CF0(v34, &v70))
        {
          IPv6AWDReportSetDHCPv6DNSServers(v11);
          if (v70 == 1)
          {
            IPv6AWDReportSetDHCPv6DNSDomainList(v11);
          }

          v33 = 1;
        }

        if (a2)
        {
          v35 = sub_1BD14(*(v6 + 16));
          v36 = *(v6 + 40);
          if (v35 > v36)
          {
            IPv6AWDReportSetAutoconfAddressAcquisitionSeconds(v11, (v35 - v36));
          }

          v37 = *(v6 + 48);
          if (v37 != 0.0)
          {
            v38 = *(v6 + 40);
            if (v37 > v38)
            {
              IPv6AWDReportSetDHCPv6AddressAcquisitionSeconds(v11, (v37 - v38));
            }
          }

          if (v33)
          {
            current_time = timer_get_current_time();
            v40 = *(v6 + 40);
            if (current_time > v40)
            {
              IPv6AWDReportSetDNSConfigurationAcquisitionSeconds(v11, (current_time - v40));
            }
          }

          v41 = 1;
        }

        else
        {
          if (*(v6 + 80))
          {
            IPv6AWDReportSetRouterLifetimeZero(v11);
          }

          if (sub_2C32C(a1))
          {
            IPv6AWDReportSetXLAT464PLATDiscoveryFailed(v11);
          }

          v41 = 0;
        }

        *(v6 + 56) = v41;
        v42 = sub_1690(a1);
        if (sub_12E28(v42) == 255)
        {
          v43 = sub_1688(a1);
          if (*(v43 + 16))
          {
            v44 = v43;
            v73 = 0;
            v74 = 0;
            v45 = sub_144D8(v42);
            if (sub_42834(v45, &v73))
            {
              v46 = sub_1B0C8(*(v44 + 16));
              if (*v46 == v73 && v46[1] == v74)
              {
                IPv6AWDReportSetRouterSourceAddressCollision(v11);
              }
            }
          }
        }

        v48 = *(v6 + 36);
        if (v48 >= 3)
        {
          v49 = 3;
        }

        else
        {
          v49 = v48;
        }

        IPv6AWDReportSetRouterSolicitationCount(v11, v49);
        v50 = nullsub_1(v4);
        if (!sub_425C4(v50, v66))
        {
          if (*(&v67 + 1))
          {
            IPv6AWDReportSetExpiredPrefixCount(v11);
          }

          if (v68)
          {
            IPv6AWDReportSetExpiredDefaultRouterCount(v11);
          }
        }

        v51 = sub_144D8(v4);
        v52 = sub_4201C(v51, &v69);
        if (v52 >= 1)
        {
          IPv6AWDReportSetDefaultRouterCount(v11, v52);
          IPv6AWDReportSetPrefixCount(v11, v69);
        }

        if (*(v6 + 68))
        {
          IPv6AWDReportSetAutoconfRestarted(v11);
        }

        nullsub_1(v11);
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v53 = _os_log_pack_size();
          __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
          v61 = *__error();
          v62 = _os_log_pack_fill();
          v63 = nullsub_1(v4);
          v64 = "success";
          *v62 = 136315650;
          *(v62 + 4) = v63;
          if (!a2)
          {
            v64 = "failure";
          }

          *(v62 + 12) = 2080;
          *(v62 + 14) = v64;
          *(v62 + 22) = 2112;
          *(v62 + 24) = v11;
          __SC_log_send();
        }

        CFRelease(v11);
      }
    }
  }
}

void sub_1E738(uint64_t a1)
{
  v102 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v2 = sub_1688(a1);
  v3 = sub_1DB78(*(v2 + 16), &v100, &v98, &v101);
  if ((v101 & 1) == 0)
  {
LABEL_9:
    sub_55C00(v2 + 104, 1);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_1AA80(v3, v100, 0);
  v99 = v5;
  if (!v5)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v97 = Mutable;
    sub_59ABC(Mutable, v4, v100);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 136315394;
      *(v18 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      *(v18 + 12) = 2112;
      *(v18 + 14) = Mutable;
      __SC_log_send();
    }

    sub_41E8(&v97);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_1EF20(v2 + 104);
  if (!v7)
  {
LABEL_11:
    sub_45A30(a1, v6, v98);
    v19 = 1;
    goto LABEL_12;
  }

  if (CFStringCompare(v6, v7, 1uLL))
  {
LABEL_5:
    sub_55C00(v2 + 104, 0);
    goto LABEL_11;
  }

  if ((sub_1BF4C(v2 + 104) & 1) == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v47 = _os_log_pack_size();
      __chkstk_darwin(v47, v48, v49, v50, v51, v52, v53, v54);
      v55 = *__error();
      v56 = _os_log_pack_fill();
      *v56 = 136315394;
      *(v56 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      *(v56 + 12) = 2112;
      *(v56 + 14) = v6;
      __SC_log_send();
    }

    goto LABEL_10;
  }

  if (!sub_1EFA0(v2 + 104))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v57 = _os_log_pack_size();
      __chkstk_darwin(v57, v58, v59, v60, v61, v62, v63, v64);
      v65 = *__error();
      v66 = _os_log_pack_fill();
      *v66 = 136315394;
      *(v66 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      *(v66 + 12) = 1024;
      *(v66 + 14) = 10;
      __SC_log_send();
    }

    goto LABEL_10;
  }

  v31 = sub_1EFEC(v2 + 104);
  v32 = sub_1EFD8(v2 + 104);
  Current = CFAbsoluteTimeGetCurrent();
  if (v98 != v31)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v67 = _os_log_pack_size();
      __chkstk_darwin(v67, v68, v69, v70, v71, v72, v73, v74);
      v75 = *__error();
      v76 = _os_log_pack_fill();
      *v76 = 136315138;
      *(v76 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      __SC_log_send();
    }

    if (sub_4581C(v102) != -1)
    {
      v46 = "new sequence number";
LABEL_37:
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v87 = _os_log_pack_size();
        __chkstk_darwin(v87, v88, v89, v90, v91, v92, v93, v94);
        v95 = *__error();
        v96 = _os_log_pack_fill();
        *v96 = 136315650;
        *(v96 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
        *(v96 + 12) = 2112;
        *(v96 + 14) = v6;
        *(v96 + 22) = 2080;
        *(v96 + 24) = v46;
        __SC_log_send();
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v34 = Current;
  sub_2424();
  _SC_syslog_os_log_mapping();
  v35 = __SC_log_enabled();
  if (v32 != 0.0 && v32 < v34)
  {
    if (v35)
    {
      v36 = _os_log_pack_size();
      __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
      v44 = *__error();
      v45 = _os_log_pack_fill();
      *v45 = 136315138;
      *(v45 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      __SC_log_send();
    }

    v46 = "expired";
    goto LABEL_37;
  }

  if (v35)
  {
    v77 = _os_log_pack_size();
    __chkstk_darwin(v77, v78, v79, v80, v81, v82, v83, v84);
    v85 = *__error();
    v86 = _os_log_pack_fill();
    *v86 = 136315138;
    *(v86 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
    __SC_log_send();
  }

LABEL_10:
  v19 = 0;
LABEL_12:
  if (v101 == 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      v30 = "not ";
      if (v19)
      {
        v30 = "";
      }

      *v29 = 136315394;
      *(v29 + 4) = "rtadv_pvd_additional_info_schedule_fetch";
      *(v29 + 12) = 2080;
      *(v29 + 14) = v30;
      __SC_log_send();
    }
  }

  sub_41E8(&v99);
}

uint64_t timer_callout_set_absolute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a6 - CFAbsoluteTimeGetCurrent();

  return timer_callout_set_0(a1, a2, a3, a4, a5, v11);
}

double sub_1EFD8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return CFDateGetAbsoluteTime(v1);
  }

  else
  {
    return 0.0;
  }
}

BOOL sub_1EFF4(CFMutableStringRef theString, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = (&unk_697A8 + 16 * v3);
  v5 = *v4;
  if (*v4 >= 0x10)
  {
    CFStringAppendFormat(theString, 0, @"unknown type %d\n", *v4);
  }

  else
  {
    v7 = a2[1];
    CFStringAppendFormat(theString, 0, @"%s (%s): ", *(v4 + 1), *(&unk_69628 + 3 * v5 + 1));
    if (v3 == 53)
    {
      v8 = a2[2];
      if (v8 > 8)
      {
        v9 = "<unknown>";
      }

      else
      {
        v9 = off_6A7A8[v8];
      }

      CFStringAppendFormat(theString, 0, @"%s ", v9);
    }

    sub_58354(theString, v5, a2 + 2, v7);
    CFStringAppendFormat(theString, 0, @"\n", v11);
  }

  return v5 < 0x10;
}

void *sub_1F104(uint64_t a1, int a2, void *a3, _DWORD *a4, char a5, char a6)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = a1;
  v9 = *a4;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!a3)
  {
    *&v74 = 0;
    v73 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v9 = 128;
    v10 = &v65;
    v65 = 0uLL;
    v66 = 0uLL;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_87;
  }

  v73 = 0uLL;
  *&v74 = 0;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v10 = a3;
  LOBYTE(v73) = 1;
LABEL_7:
  *(&v73 + 1) = v10;
  DWORD1(v74) = v9;
  *(&v74 + 1) = 0;
  *&v75 = 0;
  BYTE8(v75) = a5;
  if (a2 >= 1)
  {
    v12 = 0;
    v57 = a2;
    while (1)
    {
      v13 = *(v8 + 8 * v12);
      v61 = v74;
      v14 = strlen(v13);
      v15 = malloc_type_malloc(v14 + 26, 0x10300409B68AA8EuLL);
      v16 = malloc_type_malloc(0x30uLL, 0x101004044458BAAuLL);
      if (v16)
      {
        *(v16 + 28) = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        *(v16 + 11) = 8;
        *(v16 + 4) = v16;
      }

      *v15 = v16;
      *(v15 + 1) = v15 + 24;
      if ((v14 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = v14 & 0x7FFFFFFF;
        v23 = (v14 + 1);
        while (1)
        {
          if (v17 == v22 || (v24 = v13[v17], v24 == 46))
          {
            if (!v21)
            {
              goto LABEL_22;
            }

            if (v21 > 63)
            {
              v53 = (v8 + 8 * v12);
              fprintf(__stderrp, "label length %d > %d\n", v21, 63);
              sub_1F814(v15);
              free(v15);
              if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
              {
                fprintf(__stderrp, "trying to set used to %d\n", v61);
              }

              else
              {
                LODWORD(v74) = v61;
              }

              goto LABEL_82;
            }

            sub_1AF3C(*v15, v19);
            *(*(v15 + 1) + v19) = v21;
            v20 += v21 + 1;
            v25 = v17 + 1;
            v19 = v17 + 1;
            v21 = 0;
          }

          else
          {
            *(*(v15 + 1) + v17 + 1) = v24;
            ++v21;
            v25 = v17 + 1;
          }

          v18 = v17 >= v22;
          v17 = v25;
          if (v25 == v23)
          {
            goto LABEL_22;
          }
        }
      }

      v20 = 0;
      v18 = 1;
LABEL_22:
      v59 = v12;
      if ((a6 & 1) != 0 && ((a6 & 2) == 0 || v18))
      {
        *(v15 + 4) = v20;
      }

      else
      {
        *(v15 + 4) = v20 + 1;
        *(*(v15 + 1) + v20) = 0;
      }

      if (BYTE8(v75) == 1)
      {
        break;
      }

      if ((sub_1AFD8(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_1F814(v15);
      free(v15);
      v8 = a1;
      v12 = v59 + 1;
      if (v59 + 1 == v57)
      {
        v11 = v74;
        v7 = a3;
        v6 = a4;
        goto LABEL_71;
      }
    }

    v63 = v75;
    if (v75 < 1)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v62 = *(&v74 + 1);
      v29 = *(&v73 + 1);
      do
      {
        v30 = *(v62 + 8 * v26);
        if (!v30)
        {
          break;
        }

        v31 = 0;
        v32 = *(v30 + 40);
        v33 = *v15;
        v34 = *(*v15 + 40);
        do
        {
          v35 = v31;
          if (v32 < 1)
          {
            break;
          }

          if (v34 < 1)
          {
            break;
          }

          v36 = (v29 + *(*(v30 + 32) + 4 * v32 - 4));
          v37 = *v36;
          v38 = (*(v15 + 1) + *(v33[4] + 4 * v34 - 4));
          if (v37 != *v38)
          {
            break;
          }

          v39 = memcmp(v36 + 1, v38 + 1, v37);
          v31 = v35 + 1;
          --v32;
          --v34;
        }

        while (!v39);
        v40 = v35 > v28;
        if (v35 > v28)
        {
          v28 = v35;
        }

        if (v40)
        {
          v27 = v30;
        }

        ++v26;
      }

      while (v26 != v63);
      if (v27)
      {
        v41 = 0;
        v42 = *(v27 + 40) - v28;
LABEL_47:
        v43 = *v15;
        v44 = *(*v15 + 40);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v44 - v28;
          do
          {
            if (v45 >= v46)
            {
              v49 = *(*(v27 + 32) + 4 * v42);
              if (v46 == v45)
              {
                __src = bswap32(v49 | 0xC000) >> 16;
                if (!sub_1AFD8(&v65, &__src, 2))
                {
                  goto LABEL_76;
                }
              }

              ++v42;
              v47 = *v15;
            }

            else
            {
              v47 = *v15;
              v48 = *(*(*v15 + 32) + 4 * v45);
              if ((v41 & 1) == 0)
              {
                if (!sub_1AFD8(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
                {
                  goto LABEL_76;
                }

                v47 = *v15;
              }

              v49 = v48 + v61;
            }

            if (v45 > *(v47 + 10))
            {
              fprintf(__stderrp, "attempt to set offset 0x%x at index %d\n", v49, v45);
            }

            *(v47[4] + 4 * v45++) = v49;
          }

          while (v44 != v45);
          v43 = *v15;
        }

        v50 = SDWORD1(v75);
        if (DWORD1(v75) == v75)
        {
          if (DWORD1(v75))
          {
            DWORD1(v75) *= 2;
            v51 = reallocf(*(&v74 + 1), 16 * v50);
          }

          else
          {
            DWORD1(v75) = 8;
            v51 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
          }

          *(&v74 + 1) = v51;
        }

        else
        {
          v51 = *(&v74 + 1);
        }

        v52 = v75;
        LODWORD(v75) = v75 + 1;
        v51[v52] = v43;
        *v15 = 0;
        goto LABEL_68;
      }
    }

    if ((sub_1AFD8(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
    {
LABEL_76:
      v53 = (a1 + 8 * v59);
      if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
      {
        fprintf(__stderrp, "trying to set used to %d\n", v61);
      }

      else
      {
        LODWORD(v74) = v61;
      }

      sub_1F814(v15);
      free(v15);
LABEL_82:
      v6 = a4;
      fprintf(__stderrp, "failed to add %s\n", *v53);
      if (a3)
      {
        v11 = v74;
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      goto LABEL_86;
    }

    v27 = 0;
    v42 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  v11 = 0;
LABEL_71:
  if (!v7)
  {
    v7 = malloc_type_malloc(v11, 0x7FF68011uLL);
    memcpy(v7, *(&v73 + 1), v11);
  }

LABEL_86:
  sub_1F768(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

void sub_1F768(_OWORD *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = *(a1 + 17);
    if (v2 && v2 != a1)
    {
      free(v2);
    }
  }

  *(a1 + 18) = 0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 19;
  v4 = *(a1 + 19);
  if (v4)
  {
    if (*(a1 + 40) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_1F814((*(a1 + 19) + v6));
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a1 + 40));
      v4 = *v5;
    }

    free(v4);
  }

  *v5 = 0;
  *(a1 + 20) = 0;
}

void sub_1F814(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v3 == v2;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        free(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_1F864(unsigned __int8 *a1, int a2, _DWORD *__dst, int a4)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = 0;
    v8 = a4;
    for (i = __dst; ; i += 3)
    {
      v10 = *a1;
      if (v10 >= 0x21)
      {
        break;
      }

      LODWORD(v11) = v10 + 8;
      if ((v10 & 7) != 0)
      {
        v11 = v11;
      }

      else
      {
        v11 = *a1;
      }

      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 5;
      v14 = v5 - v13;
      if (v5 < v13)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v25 = _os_log_pack_size();
          __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32);
          v33 = *__error();
          v34 = _os_log_pack_fill();
          *v34 = 67109376;
          *(v34 + 4) = v5;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v13;
          __SC_log_send();
        }

        return 0;
      }

      if (__dst)
      {
        if (v7 >= v8)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v35 = _os_log_pack_size();
            __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42);
            v43 = *__error();
            v44 = _os_log_pack_fill();
            *v44 = 67109120;
            v44[1] = a4;
            __SC_log_send();
          }

          return 0;
        }

        *i = 0;
        i[1] = v10;
        memcpy(i, a1 + 1, v11 >> 3);
        i[2] = *&a1[v12 + 1];
      }

      ++v7;
      a1 += v13;
      v5 -= v13;
      if (v14 <= 0)
      {
        return v7;
      }
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      *v24 = 67109120;
      v24[1] = v10;
      __SC_log_send();
    }
  }

  return 0;
}

void *sub_1FB8C(void **a1, uint64_t *a2)
{
  v75 = a2;
  v76 = 0;
  memset(v78, 0, 44);
  *a1 = 0;
  v3 = getifaddrs(&v76);
  v4 = v76;
  if (v3 < 0)
  {
    goto LABEL_88;
  }

  if (!v76)
  {
LABEL_90:
    result = *a1;
    if (*a1)
    {
      free(result);
      result = 0;
      *a1 = 0;
    }

    return result;
  }

  v5 = 0;
  v6 = v76;
  while (v6->ifa_addr)
  {
    v6 = v6->ifa_next;
    --v5;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (!v5)
  {
LABEL_88:
    if (v4)
    {
      freeifaddrs(v4);
    }

    goto LABEL_90;
  }

LABEL_8:
  v7 = -v5;
  v8 = malloc_type_malloc(104 * -v5, 0x1080040821398E0uLL);
  *a1 = v8;
  if (!v8)
  {
    v4 = v76;
    goto LABEL_88;
  }

  v9 = socket(2, 2, 0);
  v4 = v76;
  if (v9 < 0)
  {
    goto LABEL_88;
  }

  v11 = v9;
  *(a1 + 2) = 0;
  *(a1 + 3) = v7;
  v12 = 104;
  if (!v4)
  {
    goto LABEL_84;
  }

  v72 = kSCNetworkInterfaceTypeIEEE80211;
  *&v10 = 136315906;
  v73 = v10;
  do
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_82;
    }

    ifa_name = v4->ifa_name;
    sa_family = ifa_addr->sa_family;
    if (sa_family == 2)
    {
      v22 = 104 * (a1[1] & ~(*(a1 + 2) >> 31));
      v23 = -104;
      do
      {
        v24 = v23 + 104;
        if (v22 == v23 + 104)
        {
          goto LABEL_31;
        }

        v25 = *a1;
        v26 = strcmp(*a1 + v23 + 104, ifa_name);
        v23 = v24;
      }

      while (v26);
      if (v25)
      {
        v27 = v25 + v24;
LABEL_33:
        v43 = *&ifa_addr->sa_data[2];
        ifa_netmask = v4->ifa_netmask;
        if (ifa_netmask)
        {
          v45 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v45 = 0;
        }

        if ((*(v27 + 16) & 2) != 0 && (ifa_dstaddr = v4->ifa_dstaddr) != 0)
        {
          v53 = *&ifa_dstaddr->sa_data[2];
        }

        else
        {
          v53 = 0;
        }

        v54 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v54)
        {
          *v54 = v43;
          v54[1] = v45;
          v54[2] = v45 & v43;
          v54[3] = v53;
        }

        sub_59348(v27 + 24, v54);
        goto LABEL_82;
      }

LABEL_31:
      v42 = sub_20284(a1);
      if (v42)
      {
        v27 = v42;
        *(v42 + 16) = v4->ifa_flags;
        ifa_addr = v4->ifa_addr;
        goto LABEL_33;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (sa_family != 18)
      {
        goto LABEL_82;
      }

      v16 = 104 * (a1[1] & ~(*(a1 + 2) >> 31));
      v17 = -104;
      do
      {
        v18 = v17 + 104;
        if (v16 == v17 + 104)
        {
          goto LABEL_25;
        }

        v19 = *a1;
        v20 = strcmp(*a1 + v17 + 104, ifa_name);
        v17 = v18;
      }

      while (v20);
      if (v19)
      {
        v21 = v19 + v18;
LABEL_27:
        v29 = ifa_addr->sa_data[4];
        if (v29 < 0x11)
        {
          *(v21 + 74) = v29;
        }

        else
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v30 = _os_log_pack_size();
            v74 = &v71;
            __chkstk_darwin(v30, v31, v32, v33, v34, v35, v36, v37);
            v38 = *__error();
            v39 = _os_log_pack_fill();
            v40 = ifa_addr->sa_data[2];
            v41 = ifa_addr->sa_data[4];
            *v39 = v73;
            *(v39 + 4) = ifa_name;
            *(v39 + 12) = 1024;
            *(v39 + 14) = v40;
            *(v39 + 18) = 1024;
            *(v39 + 20) = v41;
            *(v39 + 24) = 2048;
            *(v39 + 26) = 16;
            __SC_log_send();
          }

          *(v21 + 74) = 16;
          v29 = 16;
        }

        memmove((v21 + 56), &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], v29);
        v46 = ifa_addr->sa_data[2];
        *(v21 + 75) = v46;
        *(v21 + 72) = *ifa_addr->sa_data;
        ifa_data = v4->ifa_data;
        if (ifa_data)
        {
          v46 = *ifa_data;
        }

        *(v21 + 18) = v46;
        v48 = sub_467C(v11, ifa_name);
        if ((v48 & 0x100000) != 0)
        {
          *(v21 + 19) |= 3u;
        }

        *(v21 + 20) = (v48 >> 14) & 1;
        if (sub_45E8(v11, ifa_name, v78))
        {
          if (SLODWORD(v78[2]) < 1)
          {
            v50 = 0;
            v49 = 0;
            v51 = 0;
          }

          else
          {
            v49 = (BYTE8(v78[1]) & 2) << 31;
            if (BYTE8(v78[1]))
            {
              v50 = (DWORD2(v78[1]) >> 2) & 1;
            }

            else
            {
              v50 = 0;
            }

            if ((BYTE8(v78[1]) & 1) == 0)
            {
              v49 = 0;
            }

            v51 = 1;
            if ((BYTE8(v78[1]) & 1) == 0)
            {
              v51 = 0;
            }
          }

          *(v21 + 80) = v51 | v49;
          *(v21 + 88) = v50;
          if ((v78[1] & 0xE0) == 0x80)
          {
            *(v21 + 19) |= 1u;
          }
        }

        v64 = sub_2031C(v11, ifa_name);
        *(v21 + 96) = v64;
        if (*(v21 + 18) == 6)
        {
          v77 = 0;
          if (!v75 || (sub_204D4(v75, ifa_name, v64, &v77) & 1) == 0)
          {
            v65 = CFStringCreateWithCString(0, ifa_name, 0x8000100u);
            v66 = _SCNetworkInterfaceCreateWithBSDName();
            if (v66)
            {
              v67 = v66;
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v66);
              if (InterfaceType)
              {
                if (CFEqual(InterfaceType, v72))
                {
                  v69 = v77;
                  v77 |= 1u;
                  if (*ifa_name == 101 && *(ifa_name + 1) == 110)
                  {
                    v77 = v69 | 9;
                  }
                }
              }

              if (_SCNetworkInterfaceIsTetheredHotspot())
              {
                v77 |= 4u;
              }

              if (_SCNetworkInterfaceIsCarPlay())
              {
                v77 |= 0x10u;
              }

              CFRelease(v67);
            }

            CFRelease(v65);
          }

          if (v77)
          {
            *(v21 + 19) |= v77;
          }
        }

        goto LABEL_82;
      }

LABEL_25:
      v28 = sub_20284(a1);
      if (v28)
      {
        v21 = v28;
        *(v28 + 16) = v4->ifa_flags;
        goto LABEL_27;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    v55 = _os_log_pack_size();
    __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
    v63 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
LABEL_82:
    v4 = v4->ifa_next;
  }

  while (v4);
  v12 = 104 * *(a1 + 2) + 104;
LABEL_84:
  *a1 = reallocf(*a1, v12);
  if (v76)
  {
    freeifaddrs(v76);
  }

  close(v11);
  return &dword_0 + 1;
}

uint64_t sub_20284(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= *(a1 + 3))
  {
    return 0;
  }

  v2 = *a1;
  *(a1 + 2) = v1 + 1;
  v3 = v2 + 104 * v1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  __strlcpy_chk();
  sub_592AC((v3 + 24), j__free, sub_593E0);
  return v3;
}

uint64_t sub_2031C(int a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02069D9uLL, &v17) != -1)
  {
    return v18;
  }

  sub_2424();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = __error();
    v16 = strerror(*v15);
    *v14 = 136315394;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v16;
    *__error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_204D4(uint64_t *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  result = sub_4348(a1, a2);
  if (result)
  {
    if (*(result + 96) == a3)
    {
      *a4 = *(result + 19);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = *a4;
        *v17 = 136315650;
        *(v17 + 4) = a2;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v18;
        *(v17 + 18) = 2048;
        *(v17 + 20) = a3;
        __SC_log_send();
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

uint64_t sub_20640()
{
  if (off_702F8)
  {
    return off_702F8(qword_702E8);
  }

  return result;
}

CFPropertyListRef sub_2065C(CFStringRef key)
{
  v2 = qword_702F0;
  if (!qword_702F0)
  {
    v2 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"/Library/Managed Preferences/mobile/com.apple.IPConfiguration.control.plist");
    qword_702F0 = v2;
  }

  Value = SCPreferencesGetValue(v2, key);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v5 = qword_702E8;
    if (!qword_702E8)
    {
      v5 = SCPreferencesCreate(0, @"IPConfigurationControlPrefs", @"com.apple.IPConfiguration.control.plist");
      qword_702E8 = v5;
    }

    v6 = SCPreferencesGetValue(v5, key);
    v7 = CFBooleanGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == v7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

void sub_20728(id a1)
{
  if (off_702F8)
  {
    off_702F8(qword_702E8);
  }
}

__CFDictionary *sub_20744(uint64_t a1, int a2)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFNumberCreate(0, kCFNumberShortType, (a1 + 4));
  v21 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServicePriority, v5);
  v6 = CFRetain(*(a1 + 8));
  v20 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAuthenticationDomainName, v6);
  v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v19 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *(a1 + 24);
  if (a2)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = sub_1A0F8((*(a1 + 16) + v10));
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(v8, v11);
          CFRelease(v12);
        }

        v10 += 16;
      }

      while (v10 < 16 * *(a1 + 24));
    }
  }

  else if (v9 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_1103C(*(*(a1 + 16) + v13));
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(v8, v14);
        CFRelease(v15);
      }

      v13 += 4;
    }

    while (v13 < 4 * *(a1 + 24));
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAddresses, v8);
  v16 = CFDataCreate(0, *(a1 + 32), *(a1 + 40));
  v18 = v16;
  if (v16)
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServiceParameters, v16);
  }

  else
  {
LABEL_18:
    sub_41E8(Mutable);
  }

  sub_41E8(&v21);
  sub_41E8(&v20);
  sub_41E8(&v19);
  sub_41E8(&v18);
  return Mutable;
}

void sub_20928(uint64_t a1)
{
  if (a1)
  {
    sub_41E8((a1 + 8));
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void sub_20AD8(__CFString *a1, uint64_t a2, int a3)
{
  v6 = sub_2960(a2);
  v7 = v6;
  CFStringAppendFormat(a1, 0, @"Options[%d] = {\n", v6);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_42C8(a2, i);
      v10 = *v9;
      v11 = v9[1];
      if (a3 >= 1)
      {
        v12 = a3;
        do
        {
          CFStringAppendFormat(a1, 0, @"  ");
          --v12;
        }

        while (v12);
      }

      CFStringAppendFormat(a1, 0, @"  ");
      sub_20C28(a1, bswap32(v10) >> 16, bswap32(v11) >> 16, v9 + 2, a3);
    }
  }

  if (a3 >= 1)
  {
    do
    {
      CFStringAppendFormat(a1, 0, @"  ");
      --a3;
    }

    while (a3);
  }

  CFStringAppendFormat(a1, 0, @"}\n");
}

void sub_20C28(__CFString *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v10 = sub_5B7F0(a2);
  CFStringAppendFormat(a1, 0, @"%s (%d) Length %d: ", v10, a2, a3);
  switch(sub_5B744(a2))
  {
    case 0u:
      return;
    case 2u:
      sub_5B0EC(a1, a4, a3);
      goto LABEL_79;
    case 3u:
      if (a3 >= 2)
      {
        v23 = 0;
        v24 = a3 & 0xFFFE;
        do
        {
          v25 = bswap32(a4[v23]);
          v26 = HIWORD(v25);
          if ((v23 * 2))
          {
            v27 = ", ";
          }

          else
          {
            v27 = "";
          }

          if (a2 == 6)
          {
            v37 = sub_5B7F0(HIWORD(v25));
            CFStringAppendFormat(a1, 0, @"%s%s (%d)", v27, v37, v26);
          }

          else
          {
            CFStringAppendFormat(a1, 0, @"%s%d", v27, HIWORD(v25), v39);
          }

          ++v23;
        }

        while (v24 != (v23 * 2));
      }

      goto LABEL_79;
    case 4u:
      if (a3 >= 4)
      {
        v21 = 0;
        do
        {
          if ((v21 * 2))
          {
            v22 = ", ";
          }

          else
          {
            v22 = "";
          }

          CFStringAppendFormat(a1, 0, @"%s%d", v22, bswap32(*&a4[v21]));
          v21 += 2;
        }

        while ((a3 & 0xFFFC) != (v21 * 2));
      }

      goto LABEL_79;
    case 5u:
      if (a3 >= 0x10)
      {
        v14 = 0;
        do
        {
          if (v14)
          {
            v15 = ", ";
          }

          else
          {
            v15 = "";
          }

          v16 = inet_ntop(30, a4, v41, 0x2Eu);
          CFStringAppendFormat(a1, 0, @"%s%s", v15, v16);
          ++v14;
          a4 += 8;
        }

        while (a3 >> 4 != v14);
      }

      goto LABEL_71;
    case 6u:
      *v41 = 0;
      v17 = sub_58F38(a4, a3, v41);
      if (v17)
      {
        v18 = v17;
        if (*v41 >= 1)
        {
          v19 = 0;
          do
          {
            if (v19)
            {
              v20 = ", ";
            }

            else
            {
              v20 = "";
            }

            CFStringAppendFormat(a1, 0, @"%s%s", v20, *&v18[8 * v19++]);
          }

          while (v19 < *v41);
        }

        free(v18);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" Invalid");
LABEL_69:
        if (a3)
        {
          CFStringAppendFormat(a1, 0, @" Data ");
          sub_59D70(a1, a4, a3);
        }
      }

LABEL_71:
      CFStringAppendFormat(a1, 0, @"\n", v35, v36, v39);
      return;
    case 7u:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_NA option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_NA IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
      goto LABEL_62;
    case 8u:

      sub_213D4(a1, a4, a3, a5);
      return;
    case 9u:
      if (a3 > 1)
      {
        v31 = bswap32(*a4);
        v32 = HIWORD(v31);
        v33 = (a3 - 2);
        v34 = sub_5BD28(HIWORD(v31));
        if (v33)
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d) '%.*s'\n", v34, v32, v33, a4 + 1);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d)\n", v34, v32, v39);
        }
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" STATUS_CODE option is too short %d < %d\n", a3, 2, v39);
      }

      return;
    case 0xAu:
      *v41 = CFStringCreateWithBytes(kCFAllocatorDefault, a4, a3, 0x8000100u, 0);
      CFStringAppendFormat(a1, 0, @" %@\n", *v41);
      goto LABEL_57;
    case 0xBu:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_PD option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_PD IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
LABEL_62:
      if (!v28)
      {
        goto LABEL_79;
      }

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
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      v29 = sub_5BB1C(a4 + 6, v28, v41);
      if (v29)
      {
        v30 = v29;
        CFStringAppendFormat(a1, 0, @" ");
        sub_20AD8(a1, v30, (a5 + 1));
        sub_1595C(v30);
        free(v30);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v41, v38, v40);
      }

      return;
    case 0xCu:

      sub_214C0(a1, a4, a3, a5);
      return;
    case 0xDu:
      *v41 = sub_5AC3C(a4, a3);
      CFStringAppendFormat(a1, 0, @"%@\n", *v41);
LABEL_57:
      sub_41E8(v41);
      return;
    case 0xEu:
      if (!a3)
      {
        CFStringAppendFormat(a1, 0, @" CLIENT_FQDN option is too short %d < %d\n", a3, 1, v39);
        return;
      }

      v11 = *a4;
      CFStringAppendFormat(a1, 0, @" CLIENT_FQDN flags 0x%x", v11);
      if (!v11)
      {
        goto LABEL_10;
      }

      CFStringAppendFormat(a1, 0, @" [");
      if ((v11 & 4) != 0)
      {
        CFStringAppendFormat(a1, 0, @" N");
        if ((v11 & 2) == 0)
        {
LABEL_7:
          if ((v11 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }
      }

      else if ((v11 & 2) == 0)
      {
        goto LABEL_7;
      }

      CFStringAppendFormat(a1, 0, @" O");
      if (v11)
      {
LABEL_8:
        CFStringAppendFormat(a1, 0, @" S");
      }

LABEL_9:
      CFStringAppendFormat(a1, 0, @" ]");
LABEL_10:
      v12 = a3 - 1;
      printf("LENGTH %d\n", v12);
      if (v12)
      {
        v13 = sub_1AA80(a4 + 1, v12, 1);
        SCPrint();
        if (v13)
        {
          CFStringAppendFormat(a1, 0, @" domain-name %@", v13);
          CFRelease(v13);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" domain-name bad, raw bytes <", 0);
          sub_59D70(a1, a4 + 1, v12);
          CFStringAppendFormat(a1, 0, @">");
        }
      }

LABEL_79:

      CFStringAppendFormat(a1, 0, @"\n");
      return;
    default:
      goto LABEL_69;
  }
}

void sub_213D4(CFMutableStringRef theString, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 > 23)
  {
    v7 = a3 - 24;
    v8 = inet_ntop(30, a2, v11, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAADDR %s Preferred %d Valid=%d", v8, bswap32(*(a2 + 16)), bswap32(*(a2 + 20)));
    if (v7)
    {
      sub_215B4(theString, (a2 + 24), v7, a4);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAADDR option is too short %d < %d\n", a3, 24);
  }
}

void sub_214C0(CFMutableStringRef theString, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 > 24)
  {
    v7 = a3 - 25;
    v8 = inet_ntop(30, (a2 + 9), v11, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAPREFIX %s/%d Preferred %d Valid=%d", v8, *(a2 + 8), bswap32(*a2), bswap32(*(a2 + 4)));
    if (v7)
    {
      sub_215B4(theString, (a2 + 25), v7, a4);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAPREFIX option is too short %d < %d\n", a3, 25);
  }
}

void sub_215B4(__CFString *a1, unsigned __int16 *a2, unsigned int a3, int a4)
{
  memset(v8, 0, sizeof(v8));
  v6 = sub_5BB1C(a2, a3, v8);
  if (v6)
  {
    v7 = v6;
    CFStringAppendFormat(a1, 0, @" ");
    sub_20AD8(a1, v7, (a4 + 1));
    sub_1595C(v7);
    free(v7);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v8);
  }
}

_OWORD *sub_216C0(uint64_t a1)
{
  sub_217E4();
  v2 = sub_222FC(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_217E4();
  v5 = malloc_type_malloc(0x118uLL, 0x10A004088E64768uLL);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  *(v5 + 34) = 0;
  if (!sub_59348(v3 + 1, v5))
  {
    free(v5);
    return 0;
  }

  *(v5 + 2) = v3;
  v6 = *(v4 + 8);
  *(v5 + 30) = *(v4 + 24);
  v5[14] = v6;
  v7 = nullsub_1(*v3);
  snprintf(__str, 0x20uLL, "arp-%s", v7);
  *(v5 + 8) = timer_callout_init(__str);
  return v5;
}

uint64_t sub_217E4()
{
  result = qword_70118;
  if (!qword_70118)
  {
    v1 = malloc_type_malloc(0x68uLL, 0x1080040E1C1558CuLL);
    qword_70118 = v1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    *(v1 + 12) = 0;
    sub_592AC(v1 + 9, sub_23158, 0);
    return qword_70118;
  }

  return result;
}

void sub_2185C(uint64_t *a1)
{
  sub_A314(a1);
  timer_callout_free(a1 + 8);

  free(a1);
}

void sub_2189C(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = sub_217E4();
      v4 = sub_15194(v3 + 72, v2);
      if (v4 == -1)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v5 = _os_log_pack_size();
          __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = nullsub_1(*v2);
          *v14 = 136315138;
          *(v14 + 4) = v15;
          __SC_log_send();
        }
      }

      else
      {
        sub_15190((v3 + 72), v4, 0);
      }

      DHCPLeaseListFree_0(v2 + 1);
      free(v2);
      *a1 = 0;
    }
  }
}

void sub_21A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v14);
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 96) = 0;
  *(a1 + 240) = a7;
  *(a1 + 56) = *(a1 + 232);
  if (sub_DA70(a1))
  {
    *a1 = 0x400000001;

    sub_E5E0(a1);
  }

  else
  {
    *(a1 + 4) = 3;

    sub_21AF4(a1);
  }
}

void sub_21AF4(uint64_t a1)
{
  sub_4834(a1);
  v2 = sub_CB80();
  v3 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_23054;
  handler[3] = &unk_68CE0;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_activate(v3);
  dispatch_source_merge_data(v3, 1uLL);
  *(a1 + 272) = v3;
}

void sub_21BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v14);
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 96) = 0;
  *(a1 + 56) = 0;
  if (sub_DA70(a1))
  {
    if (a7)
    {
      v15 = a7;
    }

    else
    {
      v15 = 16;
    }

    *(a1 + 252) = v15;
    *a1 = 0x400000002;

    sub_21C8C(a1);
  }

  else
  {
    *(a1 + 4) = 3;

    sub_21AF4(a1);
  }
}

void sub_21C8C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 252) - v2 <= 0)
  {
    v4 = 1;
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    if (sub_E940(a1, 0, 0))
    {
      v3 = *(a1 + 64);

      timer_callout_set(v3, sub_21C8C, a1, 0, 0, 1.0);
      return;
    }

    v4 = 3;
  }

  *(a1 + 4) = v4;

  sub_21AF4(a1);
}

void sub_21D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, int a6)
{
  v12 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v12);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 96) = 0;
  *(a1 + 56) = 0;
  if (a6 && sub_DA70(a1))
  {
    v13 = malloc_type_malloc(24 * a6, 0x1000040504FFAC1uLL);
    *(a1 + 256) = v13;
    memmove(v13, a5, 24 * a6);
    *(a1 + 264) = a6;
    *a1 = 0x400000003;

    sub_21E48(a1);
  }

  else
  {
    *(a1 + 4) = 3;

    sub_21AF4(a1);
  }
}

void sub_21E48(uint64_t a1)
{
  v2 = sub_217E4();
  v3 = *(a1 + 56);
  if (*(v2 + 32) <= v3)
  {
    v11 = 1;
  }

  else
  {
    v4 = v2;
    v5 = v3 + 1;
    *(a1 + 56) = v5;
    if (*(a1 + 264) < 1)
    {
LABEL_7:
      v8 = (2 << (v5 - 2));
      if (v5 < 2)
      {
        v8 = 1.0;
      }

      v9 = *(v4 + 40) * v8;
      v10 = *(a1 + 64);

      timer_callout_set(v10, sub_21E48, a1, 0, 0, v9);
      return;
    }

    v6 = 0;
    v7 = 0;
    while (sub_E940(a1, 0, *(a1 + 256) + v6))
    {
      ++v7;
      v6 += 24;
      if (v7 >= *(a1 + 264))
      {
        v5 = *(a1 + 56);
        goto LABEL_7;
      }
    }

    v11 = 3;
  }

  *(a1 + 4) = v11;

  sub_21AF4(a1);
}

uint64_t sub_21F60(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  sub_A314(a1);
  sub_E374(v4);
  if (sub_DA70(a1))
  {
    *(a1 + 48) = a2;
    *(a1 + 52) = a2;
    if (sub_E940(a1, 0, 0))
    {
      v5 = 1;
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = nullsub_1(*v4);
        *v26 = 136315138;
        *(v26 + 4) = v27;
        __SC_log_send();
      }

      v5 = 0;
    }

    sub_A374(a1);
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = nullsub_1(*v4);
      *v15 = 136315138;
      *(v15 + 4) = v16;
      __SC_log_send();
    }

    return 0;
  }

  return v5;
}

uint64_t sub_22194(BOOL (*a1)(uint64_t a1, int a2, const void *a3, int a4), uint64_t a2)
{
  result = sub_217E4();
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_22284;
  }

  *(result + 64) = v5;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0x3FD47AE147AE147BLL;
  }

  *(result + 8) = v7;
  if (*a2)
  {
    v8 = **a2;
  }

  else
  {
    v8 = 3;
  }

  *(result + 16) = v8;
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 2;
  }

  *(result + 20) = v10;
  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 6;
  }

  *(result + 32) = v12;
  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0x3F947AE147AE147BLL;
  }

  *(result + 40) = v14;
  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 2;
  }

  *(result + 48) = v16;
  v17 = *(a2 + 48);
  if (v17)
  {
    v18 = *v17;
  }

  else
  {
    v18 = 0.75;
  }

  *(result + 56) = v18;
  return result;
}

BOOL sub_22284(uint64_t a1, int a2, const void *a3, int a4)
{
  if (sub_AD1C(a1) != a4 || sub_638C(a1) != a2)
  {
    return 0;
  }

  v8 = sub_A840(a1);
  return bcmp(a3, v8, a4) == 0;
}

uint64_t sub_222FC(uint64_t a1)
{
  v34 = 0uLL;
  v2 = sub_217E4();
  v3 = nullsub_1(a1);
  v4 = sub_295C(v2 + 72);
  if (v4 < 1)
  {
LABEL_5:
    v9 = sub_E4B8(a1);
    if ((v9 - 135) < 2 || v9 == 6)
    {
      goto LABEL_9;
    }

    if (v9 == 144)
    {
      v10 = nullsub_1(a1);
      if (sub_225D8(v10, &v34))
      {
LABEL_9:
        v7 = malloc_type_malloc(0x58uLL, 0x10B00403B75941AuLL);
        *v7 = 0u;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0;
        sub_592AC((v7 + 8), sub_2185C, 0);
        if (sub_E4B8(a1) == 144)
        {
          *(v7 + 72) = v34;
        }

        *v7 = a1;
        sub_59348(v2 + 72, v7);
        return v7;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v22 = _os_log_pack_size();
        __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29);
        v30 = *__error();
        v31 = _os_log_pack_fill();
        v32 = nullsub_1(a1);
        *v31 = 136315138;
        *(v31 + 4) = v32;
        goto LABEL_16;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
        v19 = *__error();
        v20 = _os_log_pack_fill();
        v21 = nullsub_1(a1);
        *v20 = 136315138;
        *(v20 + 4) = v21;
LABEL_16:
        __SC_log_send();
      }
    }

    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(v2 + 72, v6);
    v8 = nullsub_1(*v7);
    if (!strcmp(v8, v3))
    {
      return v7;
    }

    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_225D8(char *a1, uint64_t a2)
{
  v3 = sub_59918(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"IOFWHWAddr");
  TypeID = CFDataGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFDataGetLength(Value) == 16)
  {
    v9.location = 0;
    v9.length = 16;
    CFDataGetBytes(Value, v9, a2);
    *(a2 + 10) = bswap32(*(a2 + 10)) >> 16;
    *(a2 + 12) = bswap32(*(a2 + 12));
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void sub_2269C(void *a1)
{
  __str[0] = 0;
  if (!*(a1 + 16))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v59 = _os_log_pack_size();
      __chkstk_darwin(v59, v60, v61, v62, v63, v64, v65, v66);
      v67 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return;
  }

  v2 = sub_217E4();
  v104 = *v2;
  v3 = sub_295C(a1 + 1);
  v96 = sub_AD1C(*a1);
  v4 = sub_638C(*a1);
  v99 = v4;
  if (v4 == 24)
  {
    v5 = 18;
  }

  else
  {
    v5 = 14;
  }

  if (v4 == 24)
  {
    v6 = 16;
  }

  else
  {
    v6 = 6;
  }

  v101 = v6;
  v7 = sub_5A18(a1[7]);
  v8 = read(v7, a1[5], *(a1 + 12));
  v102 = v3;
  if (v8 < 0)
  {
    if (*__error() != 35)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v68 = _os_log_pack_size();
        __chkstk_darwin(v68, v69, v70, v71, v72, v73, v74, v75);
        v76 = *__error();
        v77 = _os_log_pack_fill();
        v78 = nullsub_1(*a1);
        v79 = __error();
        v80 = strerror(*v79);
        v81 = *__error();
        *v77 = 136315650;
        *(v77 + 4) = v78;
        *(v77 + 12) = 2080;
        *(v77 + 14) = v80;
        *(v77 + 22) = 1024;
        *(v77 + 24) = v81;
        v3 = v102;
        __SC_log_send();
      }

      v82 = nullsub_1(*a1);
      v83 = __error();
      v84 = strerror(*v83);
      v85 = __error();
      snprintf(__str, 0x80uLL, "arp_if_session_read: read(%s) failed, %s (%d)", v82, v84, *v85);
      if (v3 >= 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v87 = sub_42C0((a1 + 1), i);
          if (*(v87 + 24))
          {
            v88 = v87;
            strncpy((v87 + 96), __str, 0x80uLL);
            *(v88 + 4) = 3;
            sub_21AF4(v88);
          }
        }
      }
    }

    return;
  }

  v10 = v8;
  v94 = v2;
  if (!v8)
  {
    return;
  }

  v11 = a1[5];
  if (v99 == 24)
  {
    v12 = 50;
  }

  else
  {
    v12 = 42;
  }

  v103 = v12;
  v95 = v96;
  *&v9 = 67109376;
  v92 = v9;
  do
  {
    v105 = 0;
    v13 = (v11 + v5 + *(v11 + 16));
    if (!v104)
    {
      goto LABEL_27;
    }

    v14 = *v13;
    putchar(10);
    v15 = bswap32(v13[3]);
    v16 = HIWORD(v15) - 1;
    v17 = (HIWORD(v15) - 1);
    v18 = "<unknown>";
    if (v17 <= 3)
    {
      v18 = (&off_68D00)[v16];
    }

    v19 = bswap32(v14) >> 16;
    printf("%s type=0x%x proto=0x%x\n", v18, v19, bswap32(v13[1]) >> 16);
    if (v19 == 24)
    {
      if (*(v13 + 4) == 16)
      {
        printf("Sender H/W\t%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n", *(v13 + 8), *(v13 + 9), *(v13 + 10), *(v13 + 11), *(v13 + 12), *(v13 + 13), *(v13 + 14), *(v13 + 15));
      }

      v26 = inet_ntop(2, v13 + 12, &v108, 0x10u);
      printf("Sender IP\t%s\n", v26);
      v25 = (v13 + 14);
      goto LABEL_25;
    }

    if (v19 == 1)
    {
      if (*(v13 + 4) == 6)
      {
        v20 = *(v13 + 2);
        *&v108.octet[4] = v13[6];
        *v108.octet = v20;
        v21 = ether_ntoa(&v108);
        printf("Sender H/W\t%s\n", v21);
        v22 = v13[11];
        *v108.octet = *(v13 + 9);
        *&v108.octet[4] = v22;
        v23 = ether_ntoa(&v108);
        printf("Target H/W\t%s\n", v23);
      }

      v106 = *(v13 + 7);
      v24 = inet_ntop(2, &v106, &v108, 0x10u);
      printf("Sender IP\t%s\n", v24);
      v106 = *(v13 + 6);
      v25 = &v106;
LABEL_25:
      v27 = inet_ntop(2, v25, &v108, 0x10u);
      printf("Target IP\t%s\n", v27);
    }

    fflush(__stdoutp);
LABEL_27:
    if (*(v11 + 8) < v103)
    {
      goto LABEL_71;
    }

    if (v101 != *(v13 + 4))
    {
      goto LABEL_71;
    }

    v98 = v13[3];
    v28 = __rev16(v98) - 3;
    if (v28 != 65534 && v28 != 0xFFFF || v99 != bswap32(*v13) >> 16 || v13[1] != 8)
    {
      goto LABEL_71;
    }

    if (v99 == 24)
    {
      v97 = v13 + 12;
      v29 = (v13 + 14);
      v30 = &v110;
    }

    else
    {
      v31 = *(v13 + 7);
      LODWORD(v105) = *(v13 + 6);
      HIDWORD(v105) = v31;
      v100 = &v105;
      v29 = &v105 + 4;
      v30 = &v109;
    }

    *(v30 - 32) = v29;
    v93 = (*(v94 + 8))(*a1, v99, v13 + 4, v96);
    if (v3 < 1)
    {
      goto LABEL_71;
    }

    v32 = 0;
    while (1)
    {
      v33 = sub_42C0((a1 + 1), v32);
      if (!*(v33 + 24))
      {
        goto LABEL_39;
      }

      v34 = v33;
      if (*(v33 + 4) == 2)
      {
        goto LABEL_39;
      }

      v35 = *v33;
      if (*v33 == 3)
      {
        break;
      }

      if (v35 == 2)
      {
        v36 = *(v33 + 52);
        if (v36 == *v97 && v98 == 512)
        {
LABEL_53:
          *(v33 + 72) = *(v33 + 48);
          *(v33 + 76) = v36;
          memmove((v33 + 80), v13 + 4, v95);
          goto LABEL_54;
        }
      }

      else if (v35 == 1 && !v93)
      {
        v36 = *(v33 + 52);
        if (v36 == *v97 || !*v97 && *(v33 + 248) && v98 == 256 && v36 == *v100)
        {
          goto LABEL_53;
        }
      }

LABEL_39:
      ++v32;
      v3 = v102;
      if (v32 == v102)
      {
        goto LABEL_71;
      }
    }

    if (v98 != 512)
    {
      goto LABEL_39;
    }

    v53 = *(v33 + 264);
    if (v53 < 1)
    {
      goto LABEL_39;
    }

    v54 = 0;
    v55 = 0;
    while (1)
    {
      v56 = *(v34 + 256);
      if (*(v56 + v54) != *v100 || *(v56 + v54 + 4) != *v97)
      {
        goto LABEL_67;
      }

      if (!bcmp((v56 + v54 + 8), v13 + 4, v95))
      {
        break;
      }

      v53 = *(v34 + 264);
LABEL_67:
      ++v55;
      v54 += 24;
      if (v55 >= v53)
      {
        goto LABEL_39;
      }
    }

    v57 = *(v56 + v54);
    *(v34 + 88) = *(v56 + v54 + 16);
    *(v34 + 72) = v57;
LABEL_54:
    *(v34 + 4) = 2;
    if (*v34 != 1 || *(v34 + 248))
    {
      goto LABEL_59;
    }

    ++*(v34 + 60);
    v37 = sub_2424();
    v38 = _SC_syslog_os_log_mapping();
    v39 = __SC_log_enabled();
    v40 = v94;
    if (v39)
    {
      v41 = _os_log_pack_size();
      v90 = v38;
      v91 = v89;
      v89[1] = v37;
      __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
      v49 = *__error();
      v50 = _os_log_pack_fill();
      v51 = *(v34 + 60);
      v52 = v40[12] + 1;
      *v50 = v92;
      *(v50 + 4) = v51;
      *(v50 + 8) = 1024;
      *(v50 + 10) = v52;
      __SC_log_send();
    }

    if (*(v34 + 60) > v40[12])
    {
LABEL_59:
      sub_21AF4(v34);
      goto LABEL_39;
    }

    timer_callout_set(*(v34 + 64), sub_23044, v34, 0, 0, *(v94 + 7));
    v3 = v102;
LABEL_71:
    v58 = (*(v11 + 8) + *(v11 + 16) + 3) & 0xFFFFFFFC;
    if (!v58)
    {
      break;
    }

    v11 += v58;
    v10 -= v58;
  }

  while (v10 > 0);
}