void sub_23044(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 4) = 4;
  sub_E5E0(a1);
}

uint64_t sub_23054(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_4834(v1);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 24);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  sub_A374(v1);
  timer_cancel(*(v1 + 64));
  memset(&v8[1], 0, 32);
  v5 = *(v1 + 4);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      HIDWORD(v8[1]) = 1;
      *&v8[2] = *(v1 + 72);
      v8[4] = *(v1 + 88);
    }

    else if (v5 == 3)
    {
      LODWORD(v8[1]) = 1;
    }

    else
    {
      v6 = nullsub_1(**(v1 + 16));
      printf("No result for %s?\n", v6);
    }
  }

  v8[0] = v1;
  return v4(v3, v2, v8);
}

void sub_23158(uint64_t *a1)
{
  DHCPLeaseListFree_0(a1 + 1);

  free(a1);
}

_OWORD *bootp_client_init(uint64_t a1)
{
  v2 = sub_5984();
  v3 = malloc_type_malloc(0x28uLL, 0x10A004021536C6AuLL);
  *v3 = 0u;
  v3[1] = 0u;
  *(v3 + 4) = 0;
  if (sub_59348(v2, v3))
  {
    *v3 = a1;
  }

  else
  {
    free(v3);
    return 0;
  }

  return v3;
}

void bootp_client_free(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = sub_5984();
    v4 = sub_15194(v3, v1);
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
        v15 = nullsub_1(*v1);
        *v14 = 136315138;
        *(v14 + 4) = v15;
        __SC_log_send();
      }
    }

    else
    {
      sub_15190(v3, v4, 0);
    }

    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    sub_A00C(v1);
    free(v1);
    *a1 = 0;
  }
}

void sub_233B4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_A00C();

  free(a1);
}

uint64_t sub_233F4(void *a1, int a2)
{
  v32 = a2;
  v4 = *(sub_5984() + 32);
  if (!v4 || (v5 = sub_5A18(v4), v5 < 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = nullsub_1(*a1);
    *v16 = 136315394;
    *(v16 + 4) = v17;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a2;
    goto LABEL_7;
  }

  if ((setsockopt(v5, 0, 25, &v32, 4u) & 0x80000000) == 0)
  {
    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    v28 = nullsub_1(*a1);
    v29 = v32;
    v30 = __error();
    v31 = strerror(*v30);
    *v27 = 136315650;
    *(v27 + 4) = v28;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v29;
    *(v27 + 18) = 2080;
    *(v27 + 20) = v31;
LABEL_7:
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_23644(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v62 = a2 >> 8;
  v12 = a2 >> 16;
  v13 = a2 >> 24;
  if (byte_70130 == 1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    sub_588D0(Mutable, a4, a5);
    sub_2424();
    _SC_syslog_os_log_mapping();
    v15 = __SC_log_enabled();
    if (a3)
    {
      if (v15)
      {
        v16 = _os_log_pack_size();
        v60 = a6;
        v61 = &v58;
        __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
        v59 = v12;
        v24 = *__error();
        v25 = _os_log_pack_fill();
        v26 = nullsub_1(*a1);
        *v25 = 136317186;
        v27 = "";
        *(v25 + 4) = v26;
        *(v25 + 12) = 2080;
        if (!v60)
        {
          v27 = "Will NOT ";
        }

        *(v25 + 14) = v27;
        *(v25 + 22) = 1024;
        v28 = v62;
        v29 = v59;
        *(v25 + 24) = a5;
        *(v25 + 28) = 1024;
        *(v25 + 30) = v10;
        *(v25 + 34) = 1024;
        *(v25 + 36) = v28;
        *(v25 + 40) = 1024;
        *(v25 + 42) = v29;
        *(v25 + 46) = 1024;
        *(v25 + 48) = v13;
        *(v25 + 52) = 1024;
        *(v25 + 54) = a3;
        *(v25 + 58) = 2112;
        *(v25 + 60) = Mutable;
LABEL_15:
        __SC_log_send();
      }
    }

    else if (v15)
    {
      v46 = _os_log_pack_size();
      __chkstk_darwin(v46, v47, v48, v49, v50, v51, v52, v53);
      v54 = *__error();
      v55 = _os_log_pack_fill();
      v56 = nullsub_1(*a1);
      v57 = "";
      *v55 = 136315906;
      *(v55 + 4) = v56;
      *(v55 + 12) = 2080;
      if (!a6)
      {
        v57 = "Will NOT ";
      }

      *(v55 + 14) = v57;
      *(v55 + 22) = 1024;
      *(v55 + 24) = a5;
      *(v55 + 28) = 2112;
      *(v55 + 30) = Mutable;
      goto LABEL_15;
    }

    CFRelease(Mutable);
    return;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v30 = _os_log_pack_size();
    v60 = a5;
    v59 = v13;
    v31 = a6;
    v61 = &v58;
    __chkstk_darwin(v30, v32, v33, v34, v35, v36, v37, v38);
    v39 = *__error();
    v40 = _os_log_pack_fill();
    v41 = nullsub_1(*a1);
    v42 = *(a4 + 4);
    v43 = "";
    *v40 = 136317186;
    *(v40 + 4) = v41;
    if (!v31)
    {
      v43 = "Will NOT ";
    }

    *(v40 + 12) = 2080;
    *(v40 + 14) = v43;
    v44 = v62;
    *(v40 + 22) = 1024;
    v45 = v59;
    *(v40 + 24) = v60;
    *(v40 + 28) = 2048;
    *(v40 + 30) = bswap32(v42);
    *(v40 + 38) = 1024;
    *(v40 + 40) = v10;
    *(v40 + 44) = 1024;
    *(v40 + 46) = v44;
    *(v40 + 50) = 1024;
    *(v40 + 52) = v12;
    *(v40 + 56) = 1024;
    *(v40 + 58) = v45;
    *(v40 + 62) = 1024;
    *(v40 + 64) = a3;
    __SC_log_send();
  }
}

uint64_t bootp_session_init(int a1)
{
  result = sub_5984();
  if (*(result + 44))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 136315394;
      *(v12 + 4) = "bootp_session_init";
      *(v12 + 12) = 1024;
      *(v12 + 14) = a1;
      return __SC_log_send();
    }
  }

  else
  {
    *(result + 44) = a1;
  }

  return result;
}

void sub_23BB8(uint64_t a1)
{
  v23[1] = 0;
  v23[0] = 0;
  *&v19.msg_namelen = 16;
  v19.msg_name = v23;
  v19.msg_iov = v20;
  *&v19.msg_iovlen = 1;
  v19.msg_control = &v24;
  *&v19.msg_controllen = 512;
  v20[0] = v21;
  v20[1] = 1500;
  v2 = sub_5A18(*(a1 + 32));
  v3 = recvmsg(v2, &v19, 0);
  v4 = v3;
  if (v3 < 1)
  {
    if (v3 < 0)
    {
      v6 = *__error();
      if (v6 != 35)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
          v15 = *__error();
          v16 = _os_log_pack_fill();
          v17 = sub_5A18(*(a1 + 32));
          v18 = strerror(v6);
          *v16 = 67109378;
          *(v16 + 4) = v17;
          *(v16 + 8) = 2080;
          *(v16 + 10) = v18;
          __SC_log_send();
        }

        if (v6 == 57)
        {
          sub_2BC0(a1);
        }
      }
    }
  }

  else if (v19.msg_controllen >= 0xC)
  {
    msg_control = v19.msg_control;
    if (v19.msg_control)
    {
      while (msg_control[1] || msg_control[2] != 20)
      {
        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
        if ((msg_control + 3) > v19.msg_control + v19.msg_controllen)
        {
          return;
        }
      }

      if (*msg_control >= 0xD && *(msg_control + 17) <= 0x10uLL)
      {
        __memmove_chk();
        v22[*(msg_control + 17)] = 0;
        sub_23E38(a1, v22, v23 + 4, v21, v4);
      }
    }
  }
}

void sub_23E38(uint64_t a1, const char *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a5 >= 0xEC)
  {
    v44[0] = 0;
    v44[1] = 0;
    v43[0] = a4;
    v43[1] = a5;
    sub_585E0(v44, a4, a5, 0);
    if (byte_70130 == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
      sub_58968(Mutable, v43[0], a5, v44);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = *a3;
        v21 = a3[1];
        v22 = a3[2];
        v23 = a3[3];
        *v19 = 136316674;
        *(v19 + 4) = a2;
        *(v19 + 12) = 1024;
        *(v19 + 14) = a5;
        *(v19 + 18) = 1024;
        *(v19 + 20) = v20;
        *(v19 + 24) = 1024;
        *(v19 + 26) = v21;
        *(v19 + 30) = 1024;
        *(v19 + 32) = v22;
        *(v19 + 36) = 1024;
        *(v19 + 38) = v23;
        *(v19 + 42) = 2112;
        *(v19 + 44) = Mutable;
        __SC_log_send();
      }

      CFRelease(Mutable);
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
        v32 = *__error();
        v33 = _os_log_pack_fill();
        v34 = bswap32(*(v43[0] + 1));
        v35 = *a3;
        v36 = a3[1];
        v37 = a3[2];
        v38 = a3[3];
        *v33 = 136316674;
        *(v33 + 4) = a2;
        *(v33 + 12) = 1024;
        *(v33 + 14) = a5;
        *(v33 + 18) = 2048;
        *(v33 + 20) = v34;
        *(v33 + 28) = 1024;
        *(v33 + 30) = v35;
        *(v33 + 34) = 1024;
        *(v33 + 36) = v36;
        *(v33 + 40) = 1024;
        *(v33 + 42) = v37;
        *(v33 + 46) = 1024;
        *(v33 + 48) = v38;
        __SC_log_send();
      }
    }

    if (sub_295C(a1) >= 1)
    {
      v39 = 0;
      do
      {
        v40 = sub_42C0(a1, v39);
        v41 = nullsub_1(*v40);
        if (!strcmp(v41, a2))
        {
          v42 = v40[2];
          if (v42)
          {
            v42(v40[3], v40[4], v43);
          }
        }

        ++v39;
      }

      while (v39 < sub_295C(a1));
    }

    sub_58494(v44);
  }
}

uint64_t sub_24180(char *a1, unsigned int a2)
{
  v2 = a1 != 0;
  v3 = a2 != 0;
  v4 = !v2 || !v3;
  if (v2 && v3)
  {
    v5 = a1;
  }

  else
  {
    v5 = &byte_5D080;
  }

  if (v4)
  {
    v6 = 10;
  }

  else
  {
    v6 = a2;
  }

  off_70000 = v5;
  dword_70008 = v6;
  off_70010 = v5;
  dword_70018 = v6;
  if (v6 < 1)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v5++;
      if (v7 == 108)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = 1;
  }

  dword_70140 = v8;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    if (dword_70140)
    {
      v20 = "TRUE";
    }

    else
    {
      v20 = "FALSE";
    }

    *v19 = 136315138;
    *(v19 + 4) = v20;
    return __SC_log_send();
  }

  return result;
}

void sub_24320(unsigned __int8 *a1, int a2)
{
  v4 = off_70000;
  if (off_70010)
  {
    v5 = off_70010 == off_70000;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    free(off_70010);
  }

  dword_70018 = dword_70008;
  if (a1 && a2)
  {
    v6 = malloc_type_malloc(dword_70008 + a2, 0x100004077774924uLL);
    if (!v6)
    {
      off_70010 = v4;
      goto LABEL_23;
    }

    v7 = v6;
    v8 = dword_70008;
    memmove(v6, off_70000, dword_70008);
    if (a2 < 1)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = v8;
    do
    {
      v11 = a1[v9];
      if (v10 < 1)
      {
LABEL_15:
        v7[v10++] = v11;
      }

      else
      {
        v12 = v10;
        v13 = v7;
        while (1)
        {
          v14 = *v13++;
          if (v14 == v11)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_15;
          }
        }
      }

      ++v9;
    }

    while (v9 != a2);
    if (v10 <= v8)
    {
LABEL_19:
      free(v7);
    }

    else
    {
      dword_70018 = v10;
      v4 = v7;
    }
  }

  off_70010 = v4;
  if (a1)
  {
LABEL_23:
    free(a1);
  }

  if (G_IPConfiguration_verbose)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v16 = dword_70018;
    if (dword_70018 >= 1)
    {
      v17 = 0;
      v18 = off_70010;
      do
      {
        if (v17)
        {
          CFStringAppendFormat(Mutable, 0, @", %d", v18[v17]);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%d", *v18);
        }

        ++v17;
      }

      while (v16 != v17);
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
      v27 = *__error();
      v28 = _os_log_pack_fill();
      *v28 = 138412290;
      *(v28 + 4) = Mutable;
      __SC_log_send();
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_245A4(_DWORD *a1, int a2, unsigned __int8 *a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  v8 = v7;
  v9 = 0;
  if (a2 > 7)
  {
    if (a2 <= 10)
    {
      if (a2 != 8)
      {
        if (a2 != 9)
        {
          return v9;
        }

        if (v7)
        {
          v29 = *a3;
          if (v29 == sub_2C3A4(a1) && !sub_2B250(a1, a3))
          {
            v30 = *(a3 + 1);
            snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", *a3, a3[1], a3[2], a3[3], *v30, v30[1], v30[2], v30[3], v30[4], v30[5]);
            if (!*(v8 + 539))
            {
              *(v8 + 539) = 1;
            }

            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v31 = _os_log_pack_size();
              __chkstk_darwin(v31, v32, v33, v34, v35, v36, v37, v38);
              v39 = *__error();
              v40 = _os_log_pack_fill();
              v41 = nullsub_1(v6);
              *v40 = 136315394;
              *(v40 + 4) = v41;
              *(v40 + 12) = 2080;
              *(v40 + 14) = __str;
              __SC_log_send();
            }
          }

          return 0;
        }

        return 6;
      }
    }

    else if (a2 != 11)
    {
      if (a2 != 13)
      {
        if (a2 == 22)
        {
          v13 = sub_1688(a1);
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v15 = Mutable;
          v16 = *(v13 + 1584);
          if (v16 > 4)
          {
            v17 = "<unknown>";
          }

          else
          {
            v17 = off_68D80[v16];
          }

          sub_578FC(Mutable, @"State", v17);
          if (sub_1CE28(a1))
          {
            v43 = sub_2833C(v13 + 40);
            if (v43)
            {
              v44 = v43;
              CFDictionarySetValue(v15, @"Packet", v43);
              CFRelease(v44);
            }
          }

          CFDictionarySetValue(a3, @"INFORM", v15);
          CFRelease(v15);
          return 0;
        }

        return v9;
      }

      if (sub_1CE28(a1))
      {
        if (*(v8 + 389))
        {
          *(a3 + 4) = 0;
          *a3 = 0u;
          *(a3 + 1) = 0u;
          v42 = *(v8 + 389);
          if (v42)
          {
            v9 = 0;
            *a3 = v8 + 7;
            *(a3 + 2) = v42;
            *(a3 + 2) = v8 + 5;
            return v9;
          }
        }
      }

      return 0;
    }

    goto LABEL_38;
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return v9;
      }

      goto LABEL_19;
    }

    if ((sub_10EE8(v6) & 8) != 0)
    {
      return 4;
    }

    if (v8)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_62;
      }

      return 6;
    }

    v8 = malloc_type_malloc(0x878uLL, 0x10A004082C9D559uLL);
    sub_151FC(a1, v8);
    bzero(v8, 0x878uLL);
    sub_58490(v8 + 5);
    sub_2C394(a1, *a3);
    sub_2C3BC(a1, *(a3 + 1));
    *(v8 + 5) = sub_2C3CC(a1);
    v57 = nullsub_1(v6);
    snprintf(__str, 0x20uLL, "inform-%s", v57);
    v58 = timer_callout_init(__str);
    v8[199] = v58;
    if (v58)
    {
      v59 = bootp_client_init(v6);
      v8[1] = v59;
      if (v59)
      {
        v60 = sub_216C0(v6);
        *v8 = v60;
        sub_2424();
        _SC_syslog_os_log_mapping();
        v61 = __SC_log_enabled();
        if (v60)
        {
          if (v61)
          {
            v62 = _os_log_pack_size();
            __chkstk_darwin(v62, v63, v64, v65, v66, v67, v68, v69);
            v70 = *__error();
            v71 = _os_log_pack_fill();
            v72 = nullsub_1(v6);
            *v71 = 136315138;
            *(v71 + 4) = v72;
            __SC_log_send();
          }

          *(v8 + 538) = arc4random();
LABEL_43:
          sub_24F4C(a1, 0, 0);
          return 0;
        }

        if (!v61)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_77:
        v73 = _os_log_pack_size();
        __chkstk_darwin(v73, v74, v75, v76, v77, v78, v79, v80);
        v81 = *__error();
        v82 = _os_log_pack_fill();
        v83 = nullsub_1(v6);
        *v82 = 136315138;
        *(v82 + 4) = v83;
        __SC_log_send();
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    v9 = 5;
LABEL_19:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = *__error();
      v27 = _os_log_pack_fill();
      v28 = nullsub_1(v6);
      *v27 = 136315138;
      *(v27 + 4) = v28;
      __SC_log_send();
    }

    if (v8)
    {
      sub_FE80(a1);
      if (v8[199])
      {
        timer_callout_free(v8 + 199);
      }

      if (v8[1])
      {
        bootp_client_free(v8 + 1);
      }

      if (*v8)
      {
        sub_15000(v8);
      }

      sub_58494((v8 + 5));
      free(v8);
      sub_151FC(a1, 0);
    }

    return v9;
  }

  if (a2 == 3)
  {
LABEL_38:
    if (!v7)
    {
      return 6;
    }

    *(v7 + 2156) = 0;
    if (*(a3 + 1) && !*(a3 + 2))
    {
      sub_253F4(a1);
      return 0;
    }

    if (a2 == 11 && sub_2AED8(a1))
    {
      return 0;
    }

    goto LABEL_43;
  }

  if (a2 == 4)
  {
    sub_2545C(a1);
    return 0;
  }

  if (a2 != 7)
  {
    return v9;
  }

  if (!v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_62:
      v45 = _os_log_pack_size();
      __chkstk_darwin(v45, v46, v47, v48, v49, v50, v51, v52);
      v53 = *__error();
      v54 = _os_log_pack_fill();
      v55 = nullsub_1(v6);
      *v54 = 136315138;
      *(v54 + 4) = v55;
      __SC_log_send();
      return 6;
    }

    return 6;
  }

  v10 = *a3;
  *(a3 + 2) = 0;
  v11 = *v10;
  if (v11 != sub_2C3A4(a1))
  {
    v9 = 0;
    *(a3 + 2) = 1;
    return v9;
  }

  v9 = v10[1];
  if (v9)
  {
    if (v9 != sub_2C3CC(a1))
    {
      sub_2C3BC(a1, v10[1]);
      v12 = v10[1];
      *(v8 + 5) = v12;
      sub_2BB1C(a1, *v10, v12, 0);
    }

    return 0;
  }

  return v9;
}

void sub_24F4C(_DWORD *a1, int a2, uint64_t a3)
{
  v6 = sub_1690(a1);
  v7 = sub_1688(a1);
  if (a2 == 6)
  {
    if (*(a3 + 8))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = nullsub_1(v6);
        v21 = sub_21F58(*v7);
        *v19 = 136315394;
        *(v19 + 4) = v20;
        *(v19 + 12) = 2080;
        *(v19 + 14) = v21;
        __SC_log_send();
      }

      sub_2776C(a1, 6u);
      timer_callout_set(*(v7 + 1592), sub_24F4C, a1, 0, 0, 8.0);
    }

    else if (*(a3 + 12))
    {
      v22 = sub_2C3A4(a1);
      snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x", v22, BYTE1(v22), BYTE2(v22), HIBYTE(v22), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29));
      if (!*(v7 + 2156))
      {
        *(v7 + 2156) = 1;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = _os_log_pack_size();
        __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
        v31 = *__error();
        v32 = _os_log_pack_fill();
        v33 = nullsub_1(v6);
        *v32 = 136315394;
        *(v32 + 4) = v33;
        *(v32 + 12) = 2080;
        *(v32 + 14) = __str;
        __SC_log_send();
      }

      sub_FE80(a1);
      sub_2776C(a1, 8u);
      if (dword_70048 >= 1)
      {
        timer_set_relative(*(v7 + 1592), dword_70048, 0, sub_24F4C, a1, 0, 0);
      }
    }

    else if (sub_169C(a1) == 1)
    {

      sub_2545C(a1);
    }

    else
    {
      v34 = *(v7 + 20);
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0xFFFFFFFFLL;
      }

      v36 = sub_2C3A4(a1);
      sub_2BB1C(a1, v36, v35, 0);

      sub_277B8(a1, 0, 0);
    }
  }

  else if (!a2)
  {
    sub_253F4(a1);
    sub_27604(a1, 1u);
    v8 = *v7;
    v9 = sub_2C3A4(a1);

    sub_D99C(v8, sub_24F4C, a1, 6, 0, v9);
  }
}

void sub_253F4(uint64_t a1)
{
  v2 = sub_1688(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 1592);
    if (v4)
    {
      timer_cancel(v4);
    }

    v5 = v3[1];
    if (v5)
    {
      bootp_client_disable_receive(v5);
    }

    v6 = *v3;

    sub_2A368(a1, v6);
  }
}

uint64_t sub_2545C(uint64_t a1)
{
  v2 = sub_1688(a1);
  sub_253F4(a1);
  sub_FE80(a1);
  sub_58494(v2 + 40);
  sub_102A4(a1, 0xCu);

  return sub_27604(a1, 0);
}

void sub_254C0(uint64_t a1)
{
  *(a1 + 56) = 0;
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 120) = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 128) = 0;
}

uint64_t sub_25504(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = sub_1690(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = nullsub_1(v3);
    *v13 = 136315138;
    *(v13 + 4) = v14;
    __SC_log_send();
  }

  DHCPLeaseListInit((v2 + 136));
  *(v2 + 2332) = arc4random();
  if (!sub_8CC0(a1))
  {
    sub_28390(a1);
  }

  return timer_set_relative(*(v2 + 1760), 0, 0, sub_28580, a1, 0, 0);
}

unint64_t sub_2568C(uint64_t a1)
{
  v2 = sub_1690(a1);
  result = sub_1688(a1);
  memset(v43, 0, sizeof(v43));
  if (*(result + 56))
  {
    v4 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = nullsub_1(v2);
      *v14 = 136315138;
      *(v14 + 4) = v15;
      __SC_log_send();
    }

    sub_25CBC(a1, 0);
    sub_254C0(v4);
    sub_2ADA0(a1);
    sub_8CD0(a1);
    result = sub_169C(a1);
    if (HIDWORD(result) || !result)
    {
      v16 = sub_A840(v2);
      v17 = sub_638C(v2);
      v18 = sub_AD1C(v2);
      result = sub_A848((v4 + 1784), 7, v16, v17, v18, *(v4 + 24), *(v4 + 32), 0, v43);
      *(v4 + 176) = result;
      if (result)
      {
        v19 = *(v4 + 2332) + 1;
        *(v4 + 2332) = v19;
        *(result + 4) = bswap32(v19);
        *(result + 12) = *(v4 + 1732);
        if (sub_ADA4(v43, 54, 4, (v4 + 1736)))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          v20 = _os_log_pack_size();
          __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
          v28 = *__error();
          v29 = _os_log_pack_fill();
          v30 = nullsub_1(v2);
          v31 = sub_588A8(v43);
          *v29 = 136315394;
          *(v29 + 4) = v30;
          *(v29 + 12) = 2080;
          *(v29 + 14) = v31;
          return __SC_log_send();
        }

        if (sub_ADA4(v43, 255, 0, 0))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          goto LABEL_12;
        }

        if ((bootp_client_transmit(*(v4 + 16), *(v4 + 1736), *(v4 + 1732), word_70044, word_70020, *(v4 + 176), *(v4 + 184)) & 0x80000000) == 0)
        {
          result = sub_29F0C(a1);
          *(v4 + 1732) = 0;
          return result;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
LABEL_12:
          v32 = _os_log_pack_size();
          __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
          v40 = *__error();
          v41 = _os_log_pack_fill();
          v42 = nullsub_1(v2);
          *v41 = 136315138;
          *(v41 + 4) = v42;
          return __SC_log_send();
        }
      }
    }
  }

  return result;
}

void sub_25B1C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1688(a1);
  sub_8CD0(a1);
  sub_2BA58(a1);
  sub_58494((v4 + 52));
  sub_FE80(a1);
  sub_102A4(a1, a2);
  sub_9D7C(a1, 0);
  *v4 = 0;

  sub_BC60(a1, 0);
}

void sub_25BA4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 120) = cf;
}

void sub_25BE4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 128) = cf;
}

double sub_25C24(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16)
{
  *&result = 136318722;
  *a1 = 136318722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  *(a1 + 36) = 1024;
  *(a1 + 38) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a9;
  *(a1 + 54) = 1024;
  *(a1 + 56) = a10;
  *(a1 + 60) = 1024;
  *(a1 + 62) = a11;
  *(a1 + 66) = 1024;
  *(a1 + 68) = a12;
  *(a1 + 72) = 1024;
  *(a1 + 74) = a13;
  *(a1 + 78) = 1024;
  *(a1 + 80) = a14;
  *(a1 + 84) = 1024;
  *(a1 + 86) = a15;
  *(a1 + 90) = 1024;
  *(a1 + 92) = a16;
  return result;
}

void sub_25CBC(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  v5 = sub_1690(a1);
  if (!sub_2A684(a1))
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = sub_2A6A0(a1);
  if (!sub_2C40C(a1))
  {
LABEL_11:
    v9 = 0;
    v7 = 0;
LABEL_12:
    v15 = 0;
    v14 = 0;
    v13 = 0;
    sub_285E8(v4, v5, &v15, &v14, &v13);
    DHCPLeaseListRemoveLease((v4 + 136), *(v4 + 1732), v6, v7, v9);
    v12 = nullsub_1(v5);
    DHCPLeaseListWrite((v4 + 136), v12, v14, v15, v13);
    return;
  }

  v7 = sub_2ACE8(a1);
  v8 = sub_AD1C(v5);
  v9 = v8;
  if (!a2 || !v6 || !v8)
  {
    goto LABEL_12;
  }

  Lease = DHCPLeaseListFindLease(v4 + 136, *(v4 + 1732), v6, v7, v8);
  if (Lease != -1)
  {
    v11 = sub_42C0(v4 + 136, Lease);

    DHCPLeaseSetNAK(v11, 1);
  }
}

void sub_25E14(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = sub_1690(a1);
  memset(v56, 0, sizeof(v56));
  sub_9D7C(a1, 1u);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = nullsub_1(v3);
    v15 = inet_ntop(2, (v2 + 1732), v55, 0x10u);
    *v13 = 136315394;
    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    *(v13 + 14) = v15;
    __SC_log_send();
  }

  sub_8CD0(a1);
  v16 = sub_A840(v3);
  v17 = sub_638C(v3);
  v18 = sub_AD1C(v3);
  v19 = sub_A848((v2 + 1784), 4, v16, v17, v18, *(v2 + 24), *(v2 + 32), 0, v56);
  *(v2 + 176) = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  if (sub_ADA4(v56, 50, 4, (v2 + 1732)))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (sub_ADA4(v56, 54, 4, (v2 + 1736)))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_9:
      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      v30 = nullsub_1(v3);
      v31 = sub_588A8(v56);
      *v29 = 136315394;
      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      *(v29 + 14) = v31;
LABEL_10:
      __SC_log_send();
    }

LABEL_11:
    sub_25B1C(a1, 5u);
    return;
  }

  if (sub_ADA4(v56, 255, 0, 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_11;
    }

    v32 = _os_log_pack_size();
    __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
    v40 = *__error();
    v41 = _os_log_pack_fill();
    v42 = nullsub_1(v3);
    *v41 = 136315138;
    *(v41 + 4) = v42;
    goto LABEL_10;
  }

  if ((bootp_client_transmit(*(v2 + 16), 0xFFFFFFFF, 0, word_70044, word_70020, *(v2 + 176), *(v2 + 184)) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v43 = _os_log_pack_size();
      __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
      v51 = *__error();
      v52 = _os_log_pack_fill();
      v53 = nullsub_1(v3);
      *v52 = 136315138;
      *(v52 + 4) = v53;
      __SC_log_send();
    }
  }

  sub_FE80(a1);
  *(v2 + 1732) = 0;
  sub_254C0(v2);
  sub_2ADA0(a1);
  sub_2BA58(a1);
  sub_BC60(a1, 0);
  if (sub_2990C(v3))
  {
    v54 = 1;
  }

  else
  {
    v54 = 10;
  }

  timer_set_relative(*(v2 + 1760), v54, 0, sub_B40, a1, 0, 0);
}

void sub_263C8(uint64_t a1)
{
  v2 = sub_1688(a1);
  sub_8CD0(a1);
  sub_4A20(a1, 12);
  sub_FE80(a1);
  sub_2BA58(a1);
  sub_102A4(a1, 0xCu);
  sub_9D7C(a1, 0);
  *v2 = 0;
  sub_BC60(a1, 0);
  *(v2 + 1776) = 0;
}

void sub_26440(uint64_t a1, const void *a2, int a3, int a4)
{
  v8 = sub_1688(a1);
  v9 = sub_1690(a1);
  if (sub_2A684(a1))
  {
    v10 = sub_2A6A0(a1);
    if (sub_2C40C(a1))
    {
      v11 = sub_2ACE8(a1);
      v12 = sub_AD1C(v9);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
  sub_285E8(v8, v9, &v19, &v18, &v17);
  DHCPLeaseListUpdateLease((v8 + 136), *(v8 + 1732), v10, v11, v12, *(v8 + 72), a2, a3, *(v8 + 80), *(v8 + 120), *(v8 + 128));
  if (a4)
  {
    v13 = nullsub_1(v9);
    v14 = v18;
    v15 = v19;
    v16 = v17;

    DHCPLeaseListWrite((v8 + 136), v13, v14, v15, v16);
  }
}

void sub_26598(_DWORD *a1, int a2, _DWORD *a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  if (a2 != 6)
  {
    if (!a2)
    {
      sub_BC60(a1, 1);
      *a3 = *(v6 + 1732);
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = nullsub_1(v7);
        v19 = *(a3 + 4);
        v20 = *(a3 + 5);
        v21 = *(a3 + 6);
        v22 = *(a3 + 7);
        v23 = *a3;
        v24 = *(a3 + 1);
        v25 = *(a3 + 2);
        v26 = *(a3 + 3);
        *v17 = 136317186;
        *(v17 + 4) = v18;
        *(v17 + 12) = 1024;
        *(v17 + 14) = v19;
        *(v17 + 18) = 1024;
        *(v17 + 20) = v20;
        *(v17 + 24) = 1024;
        *(v17 + 26) = v21;
        *(v17 + 30) = 1024;
        *(v17 + 32) = v22;
        *(v17 + 36) = 1024;
        *(v17 + 38) = v23;
        *(v17 + 42) = 1024;
        *(v17 + 44) = v24;
        *(v17 + 48) = 1024;
        *(v17 + 50) = v25;
        *(v17 + 54) = 1024;
        *(v17 + 56) = v26;
        __SC_log_send();
      }

      sub_21D40(*(v6 + 8), sub_26598, a1, 6, a3, 1);
    }

    return;
  }

  sub_BC60(a1, 0);
  if (a3[2])
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_10:
      v64 = sub_169C(a1);
      v65 = v39;
      sub_123A0(a1, 6, &v64);
      return;
    }

    v27 = _os_log_pack_size();
    __chkstk_darwin(v27, v28, v29, v30, v31, v32, v33, v34);
    v35 = *__error();
    v36 = _os_log_pack_fill();
    v37 = nullsub_1(v7);
    v38 = sub_21F58(*(v6 + 8));
    *v36 = 136315394;
    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;
    *(v36 + 14) = v38;
LABEL_9:
    __SC_log_send();
    goto LABEL_10;
  }

  if (!a3[3])
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_10;
    }

    v53 = _os_log_pack_size();
    __chkstk_darwin(v53, v54, v55, v56, v57, v58, v59, v60);
    v61 = *__error();
    v62 = _os_log_pack_fill();
    v63 = nullsub_1(v7);
    *v62 = 136315138;
    *(v62 + 4) = v63;
    goto LABEL_9;
  }

  current_time = timer_get_current_time();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v41 = _os_log_pack_size();
    __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
    v49 = *__error();
    v50 = _os_log_pack_fill();
    v51 = nullsub_1(v7);
    *v50 = 136315138;
    *(v50 + 4) = v51;
    __SC_log_send();
  }

  if (*(v6 + 72) != -1)
  {
    v52 = *(v6 + 192);
    if (current_time >= v52)
    {
      sub_26A78(a1, 0, 0);
    }

    else
    {
      timer_set_relative(*(v6 + 1760), (v52 - current_time), 0, sub_26A78, a1, 0, 0);
    }
  }
}

void sub_26A78(uint64_t a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 == 5)
  {
    LODWORD(v90[0]) = 7776000;
    v89[0] = 0;
    v88 = 0;
    v87 = 0;
    if (!sub_280D8(a3, *(v7 + 2332), v8, v89, &v88 + 1))
    {
      return;
    }

    if (v89[0] == 6)
    {
      v38 = 11;
    }

    else
    {
      if (v89[0] != 5)
      {
        return;
      }

      v40 = HIDWORD(v88);
      if (!HIDWORD(v88) || (*(*a3 + 16) + 1) < 2)
      {
        return;
      }

      dhcp_get_lease_from_options(a3 + 16, v90, &v88, &v87);
      if (*(*a3 + 16) == *(v7 + 1732))
      {
        sub_28AEC(a1, "RENEW/REBIND", v90[0], v88, v87, current_time);
        sub_58494(v7 + 208);
        memmove((v7 + 224), *a3, *(a3 + 8));
        v41 = *(a3 + 8);
        *(v7 + 1724) = v41;
        sub_585E0((v7 + 208), v7 + 224, v41, 0);
        *(v7 + 1736) = v40;
        sub_28E1C(a1, 0, 0);
        return;
      }

      v38 = 13;
    }

    v39 = a1;
LABEL_34:
    sub_102A4(v39, v38);
    sub_2994C(a1, 0);
    return;
  }

  if (a2 != 2)
  {
    if (a2)
    {
      return;
    }

    HIDWORD(v88) = 0;
    memset(v90, 0, sizeof(v90));
    sub_8CD0(a1);
    *v7 = 0;
    *(v7 + 1752) = current_time;
    if (*(v7 + 1776) == 0.0)
    {
      *(v7 + 1776) = current_time;
    }

    sub_9D7C(a1, 7u);
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(v8);
      v20 = inet_ntop(2, (v7 + 1732), v89, 0x10u);
      *v18 = 136315394;
      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      *(v18 + 14) = v20;
      __SC_log_send();
    }

    v21 = 2 * (sub_A694(a1) != 0);
    v22 = sub_A840(v8);
    v23 = sub_638C(v8);
    v24 = sub_AD1C(v8);
    v25 = sub_A848((v7 + 1784), 3, v22, v23, v24, *(v7 + 24), *(v7 + 32), v21, v90);
    *(v7 + 176) = v25;
    if (!v25)
    {
      goto LABEL_25;
    }

    *(v7 + 1768) = 0;
    *(v25 + 3) = *(v7 + 1732);
    HIDWORD(v88) = 10974720;
    if (sub_ADA4(v90, 51, 4, &v88 + 4))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v26 = _os_log_pack_size();
        __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
        v34 = *__error();
        v35 = _os_log_pack_fill();
        v36 = nullsub_1(v8);
        v37 = sub_588A8(v90);
        *v35 = 136315394;
        *(v35 + 4) = v36;
        *(v35 + 12) = 2080;
        *(v35 + 14) = v37;
LABEL_24:
        __SC_log_send();
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    sub_B1BC(a1, v90);
    if (sub_ADA4(v90, 255, 0, 0))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v42 = _os_log_pack_size();
        __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49);
        v50 = *__error();
        v51 = _os_log_pack_fill();
        v52 = nullsub_1(v8);
        *v51 = 136315138;
        *(v51 + 4) = v52;
        goto LABEL_24;
      }

LABEL_25:
      sub_25B1C(a1, 5u);
      return;
    }

    bootp_client_enable_receive(*(v7 + 16), sub_26A78, a1, 5);
  }

  if (!timer_still_pending(*(v7 + 1760)) && timer_time_changed(*(v7 + 1760)))
  {
    sub_29D9C(a1, current_time - *(v7 + 192));
  }

  if (current_time >= *(v7 + 64))
  {
    v39 = a1;
    v38 = 10;
    goto LABEL_34;
  }

  v53 = (v7 + 96);
  if (current_time >= *(v7 + 96))
  {
    sub_9D7C(a1, 8u);
    v54 = &G_ip_broadcast;
    v53 = (v7 + 64);
  }

  else
  {
    sub_9D7C(a1, 7u);
    v54 = (v7 + 1736);
  }

  v55 = *v54;
  v56 = (*v53 - current_time) * 0.5;
  v57 = *(v7 + 2332) + 1;
  *(v7 + 2332) = v57;
  v58 = *(v7 + 176);
  *(v58 + 4) = bswap32(v57);
  v59 = current_time + v56;
  *(v58 + 8) = __rev16((current_time - *(v7 + 1752)));
  if ((bootp_client_transmit(*(v7 + 16), v55, *(v7 + 1732), word_70044, word_70020, v58, *(v7 + 184)) & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v60 = _os_log_pack_size();
      __chkstk_darwin(v60, v61, v62, v63, v64, v65, v66, v67);
      v68 = *__error();
      v69 = _os_log_pack_fill();
      v70 = nullsub_1(v8);
      *v69 = 136315138;
      *(v69 + 4) = v70;
      __SC_log_send();
    }
  }

  v71 = v59 - current_time;
  v72 = current_time + 60.0;
  if (v59 - current_time >= 60.0)
  {
    v72 = v59;
  }

  if (v59 - current_time <= 60.0)
  {
    v71 = 60.0;
  }

  v73 = v71;
  *(v7 + 192) = v72;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v74 = _os_log_pack_size();
    __chkstk_darwin(v74, v75, v76, v77, v78, v79, v80, v81);
    v82 = *__error();
    v83 = _os_log_pack_fill();
    v84 = nullsub_1(v8);
    v85 = current_time - *(v7 + 1752);
    *v83 = 136315906;
    *(v83 + 4) = v84;
    *(v83 + 12) = 2048;
    *(v83 + 14) = v85;
    *(v83 + 22) = 2048;
    *(v83 + 24) = v73;
    *(v83 + 32) = 1024;
    *(v83 + 34) = 0;
    __SC_log_send();
  }

  timer_set_relative(*(v7 + 1760), v73, 0, sub_26A78, a1, 2, 0);
  v86 = *(v7 + 2344);
  if (v86 == 0.0 || current_time > v86 || v86 - current_time < dword_7007C)
  {
    sub_2B03C(a1);
  }
}

void sub_272FC(_DWORD *a1, int a2)
{
  v5 = sub_169C(a1);
  v6 = v4;
  sub_123A0(a1, a2, &v5);
}

double dhcp_get_lease_from_options(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v8 = sub_58598(a1, 51, 4);
  v9 = sub_58598(a1, 58, 4);
  v10 = sub_58598(a1, 59, 4);
  if (v8)
  {
    v12 = bswap32(*v8);
    if (v12 <= 3)
    {
      v12 = 3;
    }

    *a2 = v12;
  }

  if (v9)
  {
    v13 = bswap32(*v9);
    if (v13 <= 2)
    {
      v13 = 2;
    }

    *a3 = v13;
  }

  if (v10)
  {
    v14 = bswap32(*v10);
    if (v14 <= 2)
    {
      v14 = 2;
    }

    *a4 = v14;
  }

  if (!v8)
  {
    if (v9)
    {
      v15 = *a3;
    }

    else
    {
      if (!v10)
      {
        v15 = 3600;
        *a2 = 3600;
        goto LABEL_28;
      }

      v15 = *a4;
    }

    *a2 = v15;
    if (v15 == -1)
    {
      goto LABEL_26;
    }

LABEL_28:
    *a3 = v15 >> 1;
    LODWORD(result) = *a2;
    result = *&result * 0.875;
    *a4 = result;
    return result;
  }

  v15 = *a2;
  if (*a2 == -1)
  {
LABEL_26:
    *a4 = 0;
    *a3 = 0;
    return result;
  }

  if (!v9 || !v10 || *a3 >= v15 || *a4 >= v15 || *a4 < *a3)
  {
    goto LABEL_28;
  }

  return result;
}

_DWORD *sub_27498(uint64_t a1, int *a2)
{
  v7 = 0;
  v3 = sub_1CF54(a1, 121, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_591C0(v3, v7, a2);
  free(v4);
  return v5;
}

unsigned __int8 *sub_274FC(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = sub_27574(a1, a2);
  if (v5 == -1)
  {
    v6 = a1;
    v7 = 54;
  }

  else
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = a1;
    v7 = 6;
  }

  result = sub_58598(v6, v7, 4);
  if (!result)
  {
    return result;
  }

  v5 = *result;
LABEL_7:
  if ((v5 + 1) < 2)
  {
    return 0;
  }

  *a3 = v5;
  return (&dword_0 + 1);
}

uint64_t sub_27574(uint64_t a1, int a2)
{
  v4 = sub_58598(a1, 3, 4);
  if (v4)
  {
    if (*v4 == a2)
    {
      return 0;
    }

    else
    {
      return *v4;
    }
  }

  else
  {
    v10 = 0;
    v6 = sub_27498(a1, &v10);
    if (v6)
    {
      v7 = v6;
      v8 = sub_59274(v6, v10);
      if (v8)
      {
        v5 = v8[2];
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      free(v7);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_27604(uint64_t a1, unsigned int a2)
{
  v4 = sub_1690(a1);
  *(sub_1688(a1) + 1584) = a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = nullsub_1(v4);
    if (a2 > 4)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = off_68D80[a2];
    }

    *v15 = 136315394;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v17;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_2776C(uint64_t a1, unsigned int a2)
{
  sub_253F4(a1);
  sub_102A4(a1, a2);

  return sub_27604(a1, 0);
}

void sub_277B8(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1690(a1);
  v8 = sub_1688(a1);
  v9 = v8;
  if (a2 == 5)
  {
    v81 = 0;
    LODWORD(v82[0]) = 0;
    if (sub_280D8(a3, *(v8 + 2152), v7, v82, &v81))
    {
      v14 = LODWORD(v82[0]) == 5;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = sub_5883C(a3 + 16, off_70010, dword_70018);
      v16 = v15;
      if (!*(v9 + 1556) || v15 > *(v9 + 1560))
      {
        sub_58494(v9 + 40);
        memmove((v9 + 56), *a3, *(a3 + 8));
        v17 = *(a3 + 8);
        *(v9 + 1556) = v17;
        *(v9 + 1560) = v16;
        sub_585E0((v9 + 40), v9 + 56, v17, 0);
        *(v9 + 1568) = v81;
        if (v16 == dword_70018)
        {
LABEL_27:
          sub_27FD8(a1);
          return;
        }

        if (*(v9 + 16))
        {
          return;
        }

        v18 = G_gather_secs;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
          v27 = *__error();
          v28 = _os_log_pack_fill();
          v29 = nullsub_1(v7);
          v30 = current_time - *(v9 + 1576);
          *v28 = 136315394;
          *(v28 + 4) = v29;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v30;
          __SC_log_send();
        }

        *(v9 + 16) = 1;
        v31 = *(v9 + 1592);
        v32 = v18;
        v33 = a1;
        v34 = 2;
        goto LABEL_35;
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
      sub_27604(a1, 2u);
      *(v9 + 1576) = current_time;
      sub_253F4(a1);
      v10 = sub_A840(v7);
      v11 = sub_638C(v7);
      v12 = sub_AD1C(v7);
      v13 = sub_A848((v9 + 1604), 8, v10, v11, v12, 0, 0, 0, v82);
      *(v9 + 24) = v13;
      if (!v13)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_21:
          v35 = _os_log_pack_size();
          __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42);
          v43 = *__error();
          v44 = _os_log_pack_fill();
          v45 = nullsub_1(v7);
          *v44 = 136315138;
          *(v44 + 4) = v45;
          __SC_log_send();
        }

LABEL_22:
        sub_2776C(a1, 5u);
        return;
      }

      *(v13 + 3) = sub_2C3A4(a1);
      sub_B1BC(a1, v82);
      if (sub_ADA4(v82, 255, 0, 0))
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      v46 = sub_B830(v82) + 240;
      if (v46 <= 0x12C)
      {
        v46 = 300;
      }

      *(v9 + 32) = v46;
      *(v9 + 1600) = 0;
      *(v9 + 16) = 0;
      *(v9 + 2160) = G_initial_wait_secs;
      bootp_client_enable_receive(*(v9 + 8), sub_277B8, a1, 5);
      *(v9 + 1560) = 0;
      ++*(v9 + 2152);
    }

    if (*(v9 + 16) == 1)
    {
      goto LABEL_27;
    }

    v47 = *(v9 + 1600);
    v48 = v47 + 1;
    *(v9 + 1600) = v47 + 1;
    if (v47 >= 1)
    {
      v49 = sub_169C(a1);
      if (!HIDWORD(v49) && v49)
      {
        sub_2545C(a1);
        return;
      }

      v48 = *(v9 + 1600);
    }

    if (v48 > G_max_retries + 1)
    {
      v50 = sub_1688(a1);
      sub_253F4(a1);
      sub_27604(a1, 4u);
      v31 = *(v50 + 1592);
      v32 = 60;
      v33 = a1;
      v34 = 0;
LABEL_35:
      timer_set_relative(v31, v32, 0, sub_277B8, v33, v34, 0);
      return;
    }

    v51 = *(v9 + 24);
    *(v51 + 4) = bswap32(*(v9 + 2152));
    *(v51 + 8) = __rev16((current_time - *(v9 + 1576)));
    if ((bootp_client_transmit(*(v9 + 8), 0xFFFFFFFF, 0, word_70044, word_70020, v51, *(v9 + 32)) & 0x80000000) != 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v52 = _os_log_pack_size();
        __chkstk_darwin(v52, v53, v54, v55, v56, v57, v58, v59);
        v60 = *__error();
        v61 = _os_log_pack_fill();
        v62 = nullsub_1(v7);
        *v61 = 136315138;
        *(v61 + 4) = v62;
        __SC_log_send();
      }
    }

    v63 = *(v9 + 2160);
    v64 = sub_65CC(0, 999999);
    v65 = v64;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v66 = _os_log_pack_size();
      v79[1] = v79;
      __chkstk_darwin(v66, v67, v68, v69, v70, v71, v72, v73);
      v80 = v64;
      v74 = *__error();
      v75 = _os_log_pack_fill();
      v76 = nullsub_1(v7);
      v77 = current_time - *(v9 + 1576);
      *v75 = 136315906;
      *(v75 + 4) = v76;
      *(v75 + 12) = 2048;
      *(v75 + 14) = v77;
      *(v75 + 22) = 2048;
      *(v75 + 24) = v63;
      *(v75 + 32) = 1024;
      *(v75 + 34) = v64;
      v65 = v80;
      __SC_log_send();
    }

    timer_set_relative(*(v9 + 1592), v63, v65, sub_277B8, a1, 2, 0);
    v78 = 2 * *(v9 + 2160);
    if (v78 >= G_max_wait_secs)
    {
      v78 = G_max_wait_secs;
    }

    *(v9 + 2160) = v78;
  }
}

void sub_27FD8(_DWORD *a1)
{
  v2 = sub_1688(a1);
  sub_27604(a1, 3u);
  v3 = sub_58598(v2 + 40, 1, 4);
  if (!sub_2C3CC(a1) && v3)
  {
    *(v2 + 20) = *v3;
    v4 = sub_2C3A4(a1);
    sub_2BB1C(a1, v4, *(v2 + 20), 0);
  }

  sub_253F4(a1);
  *(v2 + 36) = 0;
  if (!sub_2AD0C(a1, v2 + 40, *(v2 + 1564)) || (v5 = *v2, v6 = sub_2C3A4(a1), !sub_2A3A8(a1, v5, sub_281E4, v6)))
  {

    sub_2828C(a1);
  }
}

unsigned __int8 *sub_280D8(uint64_t *a1, int a2, uint64_t a3, unsigned int *a4, _DWORD *a5)
{
  v10 = *a1;
  v11 = sub_638C(a3);
  v12 = sub_A840(a3);
  v13 = sub_AD1C(a3);
  result = sub_58CD0(v10, a2, v11, v12, v13);
  if (result)
  {
    v17 = 0;
    result = sub_1CEA4((a1 + 2), 53, &v17, 0);
    if (a4 && result)
    {
      v15 = *result;
      *a4 = v15;
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v15 = *a4;
    }

    if (v15 <= 8 && ((1 << v15) & 0x10A) != 0)
    {
      return 0;
    }

    else
    {
      *a5 = 0;
      v16 = sub_58598((a1 + 2), 54, 4);
      if (v16)
      {
        *a5 = *v16;
      }

      return (&dword_0 + 1);
    }
  }

  return result;
}

void sub_281E4(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    timer_set_relative(*(v4 + 1592), 60, 0, sub_282EC, a1, 0, 0);
    if (*(v5 + 36))
    {
      return;
    }

    *(v5 + 36) = 1;
  }

  else
  {
    *(v4 + 36) = 0;
  }

  sub_2828C(a1);
}

void sub_2828C(uint64_t a1)
{
  v2 = sub_1688(a1);
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  v3 = *(v2 + 1556);
  if (v3)
  {
    *&v4 = v2 + 56;
    DWORD2(v4) = v3;
    *&v5 = v2 + 40;
  }

  sub_102AC(a1, &v4);
}

uint64_t sub_282EC(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = *v2;
  v4 = *(v2 + 1564);

  return sub_2A3A8(a1, v3, sub_281E4, v4);
}

__CFString *sub_2833C(uint64_t a1)
{
  if (!*(a1 + 1516))
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  sub_58968(Mutable, (a1 + 16), *(a1 + 1516), a1);
  return Mutable;
}

uint64_t sub_28390(uint64_t a1)
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v2 = sub_1688(a1);
  v3 = sub_1690(a1);
  sub_285E8(v2, v3, &v25, &v24, &v23);
  v4 = nullsub_1(v3);
  v5 = sub_2480(v3) != 0;
  DHCPLeaseListRead((v2 + 136), v4, v5, v24, v25, v23);
  result = sub_295C(v2 + 136);
  if (result)
  {
    v7 = sub_42C0(v2 + 136, result - 1);
    sub_2865C(a1, v7, 1);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = nullsub_1(v3);
      v19 = v7[4];
      v20 = v7[5];
      v21 = v7[6];
      v22 = v7[7];
      *v17 = 136316162;
      *(v17 + 4) = v18;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v19;
      *(v17 + 18) = 1024;
      *(v17 + 20) = v20;
      *(v17 + 24) = 1024;
      *(v17 + 26) = v21;
      *(v17 + 30) = 1024;
      *(v17 + 32) = v22;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_28580(_DWORD *a1)
{
  if (sub_8CC0(a1))
  {
    LODWORD(v3) = 0;
    sub_8F90(a1, 0, &v3);
  }

  else
  {
    v3 = sub_169C(a1);
    v4 = v2;
    sub_123A0(a1, 0, &v3);
  }
}

uint64_t sub_285E8(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, _DWORD *a5)
{
  if (*(a1 + 24))
  {
    *a4 = 0;
    *a3 = *(a1 + 24);
    result = *(a1 + 32);
  }

  else
  {
    *a4 = sub_638C(a2);
    *a3 = sub_A840(a2);
    result = sub_AD1C(a2);
  }

  *a5 = result;
  return result;
}

uint64_t sub_2865C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  v8 = *(a2 + 4);
  if (v8 != *(v6 + 1732))
  {
    goto LABEL_14;
  }

  v9 = bswap32(v8);
  if (HIWORD(v9) != 49320 && (v9 & 0xFF000000) != 167772160 && (v9 & 0xFFF00000) != -1408237568)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      goto LABEL_32;
    }

    return result;
  }

  if (!sub_2A684(a1) || !sub_2C40C(a1) || (v12 = *(a2 + 20), v12 != sub_2A6A0(a1)) || (v13 = sub_2ACE8(a1), v14 = sub_AD1C(v7), bcmp((a2 + 24), v13, v14)))
  {
LABEL_14:
    sub_FE80(a1);
    v15 = *(a2 + 64);
    if (v15 >= 0x5DC)
    {
      v16 = 1500;
    }

    else
    {
      v16 = v15;
    }

    v50 = 0;
    v49 = 0;
    *(v6 + 1724) = v16;
    memmove((v6 + 224), (a2 + 68), v16);
    sub_58494(v6 + 208);
    sub_585E0((v6 + 208), v6 + 224, *(v6 + 1724), 0);
    dhcp_get_lease_from_options(v6 + 208, &v50 + 1, &v50, &v49);
    sub_28AEC(a1, "RECOVERED", HIDWORD(v50), v50, v49, *(a2 + 8));
    *(v6 + 56) = 1;
    *(v6 + 1728) = 0;
    *(v6 + 1732) = *(a2 + 4);
    v17 = sub_58598(v6 + 208, 54, 4);
    if (v17)
    {
      *(v6 + 1736) = *v17;
    }

    sub_25BA4(v6, *(a2 + 48));
    sub_25BE4(v6, *(a2 + 56));
    sub_2ADA0(a1);
    *(v6 + 112) = 0;
    if (a3 && *(a2 + 47) == 1)
    {
      *(v6 + 112) = 1;
      v18 = *(a2 + 41);
      *(v6 + 108) = *(a2 + 45);
      *(v6 + 104) = v18;
    }

    v19 = *(a2 + 20);
    if (v19)
    {
      sub_2ADB0(a1, v19);
      sub_2ADC0(a1);
      v20 = *(a2 + 40);
      if (*(a2 + 40))
      {
        if (sub_2ACFC(a1) < v20)
        {
          v20 = sub_2ACFC(a1);
        }

        v21 = sub_2ACE8(a1);
        memmove(v21, (a2 + 24), v20);
        sub_2C428(a1);
      }
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      v32 = nullsub_1(v7);
      v33 = *(a2 + 4);
      v34 = *(a2 + 5);
      v35 = *(a2 + 6);
      v36 = *(a2 + 7);
      *v31 = 136316162;
      *(v31 + 4) = v32;
      *(v31 + 12) = 1024;
      *(v31 + 14) = v33;
      *(v31 + 18) = 1024;
      *(v31 + 20) = v34;
      *(v31 + 24) = 1024;
      *(v31 + 26) = v35;
      *(v31 + 30) = 1024;
      *(v31 + 32) = v36;
      __SC_log_send();
    }

    return 1;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
LABEL_32:
    v38 = _os_log_pack_size();
    __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
    v46 = *__error();
    v47 = _os_log_pack_fill();
    v48 = nullsub_1(v7);
    *v47 = 136315138;
    *(v47 + 4) = v48;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_28AEC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6)
{
  v12 = sub_1688(a1);
  v13 = sub_1690(a1);
  *(v12 + 80) = a6;
  *(v12 + 72) = a3;
  if (a3 == -1)
  {
    v14 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v14 = a3 + a6;
    v15 = a4 + a6;
    v16 = a5 + a6;
  }

  *(v12 + 64) = v14;
  *(v12 + 88) = v15;
  *(v12 + 96) = v16;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    v28 = nullsub_1(v13);
    v29 = *(v12 + 80);
    v30 = *(v12 + 88);
    v31 = *(v12 + 96);
    v32 = *(v12 + 64);
    *v27 = 136316418;
    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    *(v27 + 14) = a2;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v29;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v30;
    *(v27 + 42) = 2048;
    *(v27 + 44) = v31;
    *(v27 + 52) = 2048;
    *(v27 + 54) = v32;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_28CBC(uint64_t a1, void *a2, double a3)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[1];
    *v16 = 136316418;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v17;
    *(v16 + 32) = 2048;
    *(v16 + 34) = v18;
    *(v16 + 42) = 2048;
    *(v16 + 44) = v19;
    *(v16 + 52) = 2048;
    *(v16 + 54) = v20;
    return __SC_log_send();
  }

  return result;
}

void sub_28E1C(_DWORD *a1, int a2, uint64_t a3)
{
  current_time = timer_get_current_time();
  v7 = sub_1688(a1);
  v8 = sub_1690(a1);
  if (a2 != 6)
  {
    if (a2)
    {
      return;
    }

    v9 = *(v7 + 1744);
    sub_9D7C(a1, 5u);
    *(v7 + 116) = 1;
    *(v7 + 40) = 1;
    *(v7 + 1776) = 0;
    sub_8CD0(a1);
    if ((v9 - 7) > 1)
    {
      sub_2BA58(a1);
      if (!sub_8CC0(a1))
      {
        if (!sub_2990C(v8) && v9 == 4)
        {
          v24 = *(v7 + 8);
          v25 = *(v7 + 1732);

          sub_D99C(v24, sub_28E1C, a1, 6, 0, v25);
          return;
        }

        v39 = sub_1CE28(a1);
        if (v39 == *(v7 + 1732) && (v9 == 6 || v9 == 3))
        {
          v40 = v39;
          v41 = *(v7 + 8);

          sub_21A18(v41, sub_28E1C, a1, 6, 0, v40, 1);
          return;
        }
      }
    }

    else
    {
      v10 = *(v7 + 88);
      v11 = v10 >= current_time && v10 - current_time > dword_70040;
      *(v7 + 116) = v11;
    }

    goto LABEL_34;
  }

  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = *__error();
      v21 = _os_log_pack_fill();
      v22 = nullsub_1(v8);
      v23 = sub_21F58(*(v7 + 8));
      *v21 = 136315394;
      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      *(v21 + 14) = v23;
      __SC_log_send();
    }

    sub_25B1C(a1, 6u);
    return;
  }

  if (*(a3 + 12))
  {
    snprintf(__str, 0x80uLL, "%d.%d.%d.%d in use by %02x:%02x:%02x:%02x:%02x:%02x, DHCP Server %d.%d.%d.%d", *(v7 + 1732), *(v7 + 1733), *(v7 + 1734), *(v7 + 1735), *(a3 + 24), *(a3 + 25), *(a3 + 26), *(a3 + 27), *(a3 + 28), *(a3 + 29), *(v7 + 1736), *(v7 + 1737), *(v7 + 1738), *(v7 + 1739));
    v26 = *(v7 + 1732);
    if (*(v7 + 36) == v26)
    {
      if (*(v7 + 2336))
      {
LABEL_25:
        *(v7 + 36) = v26;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v28 = _os_log_pack_size();
          __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
          v36 = *__error();
          v37 = _os_log_pack_fill();
          v38 = nullsub_1(v8);
          *v37 = 136315394;
          *(v37 + 4) = v38;
          *(v37 + 12) = 2080;
          *(v37 + 14) = __str;
          __SC_log_send();
        }

        sub_25CBC(a1, 0);
        sub_254C0(v7);
        sub_2ADA0(a1);
        sub_102A4(a1, 8u);
        sub_25E14(a1);
        return;
      }

      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    *(v7 + 2336) = v27;
    goto LABEL_25;
  }

  sub_8CD0(a1);
LABEL_34:
  *(v7 + 56) = 1;
  v42 = sub_CBBC(a1);
  sub_25BA4(v7, v42);
  v43 = sub_2C964(a1);
  sub_25BE4(v7, v43);
  *(v7 + 36) = 0;
  *(v7 + 2336) = 0;
  v44 = sub_58598(v7 + 208, 1, 4);
  if (v44)
  {
    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = (v7 + 1732);
  v47 = *(v7 + 1732);
  if (v47 != sub_1CE28(a1) || v45 != sub_2C464(a1))
  {
    sub_2BB1C(a1, *v46, v45, 0);
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v48 = _os_log_pack_size();
    __chkstk_darwin(v48, v49, v50, v51, v52, v53, v54, v55);
    v56 = *__error();
    v57 = _os_log_pack_fill();
    v58 = nullsub_1(v8);
    v59 = inet_ntop(2, (v7 + 1732), __str, 0x10u);
    *v57 = 136315394;
    *(v57 + 4) = v58;
    *(v57 + 12) = 2080;
    *(v57 + 14) = v59;
    __SC_log_send();
  }

  if (dword_70028)
  {
    sub_4884(a1, 0);
  }

  *(v7 + 40) = 0;
  if (*(v7 + 72) == -1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v62 = _os_log_pack_size();
      __chkstk_darwin(v62, v63, v64, v65, v66, v67, v68, v69);
      v70 = *__error();
      v71 = _os_log_pack_fill();
      v72 = nullsub_1(v8);
      *v71 = 136315138;
      *(v71 + 4) = v72;
      __SC_log_send();
    }

    *(v7 + 200) = 0;
  }

  else
  {
    v60 = *(v7 + 88);
    if (v60 >= current_time)
    {
      v61 = (v60 - current_time);
    }

    else
    {
      v61 = 0;
    }

    *(v7 + 192) = v60;
    timer_set_relative(*(v7 + 1760), v61, v60 < current_time, sub_26A78, a1, 0, 0);
    *(v7 + 200) = 0;
    if (v60 < current_time)
    {
      goto LABEL_55;
    }
  }

  if (!sub_2AD0C(a1, v7 + 208, *v46) || !sub_2A3A8(a1, *(v7 + 8), sub_29C50, *(v7 + 1732)))
  {
LABEL_55:
    sub_26440(a1, (v7 + 224), *(v7 + 1724), *(v7 + 116));
    *(v7 + 116) = 0;
    sub_29BF4(a1);
    sub_BC60(a1, 0);
  }
}

uint64_t sub_29624(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v3 = sub_1CEA4(a1, 108, &v5, 0);
  result = 0;
  if (v3)
  {
    if (v5 == 4)
    {
      *a2 = bswap32(*v3);
      return 1;
    }
  }

  return result;
}

void sub_29688(_DWORD *a1, int a2, _DWORD *a3)
{
  v6 = sub_1688(a1);
  v7 = sub_1690(a1);
  if (a2 == 2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21, v22, v23, v24, v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      v30 = nullsub_1(v7);
      *v29 = 136315138;
      *(v29 + 4) = v30;
      __SC_log_send();
    }

    v32 = sub_169C(a1);
    v33 = v31;
    sub_123A0(a1, 0, &v32);
  }

  else if (!a2)
  {
    if (*a3 <= 0x12Cu)
    {
      v8 = 300;
    }

    else
    {
      v8 = *a3;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(v7);
      *v18 = 136315394;
      *(v18 + 4) = v19;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v8;
      __SC_log_send();
    }

    sub_25B1C(a1, 0x15u);
    timer_set_relative(*(v6 + 1760), v8, 0, sub_29688, a1, 2, 0);
  }
}

uint64_t sub_2994C(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  v5 = sub_1690(a1);
  sub_9D7C(a1, 2u);
  if (a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = nullsub_1(v5);
      *v15 = 136315138;
      *(v15 + 4) = v16;
      __SC_log_send();
    }
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v17 = _os_log_pack_size();
    __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = *__error();
    v26 = _os_log_pack_fill();
    v27 = nullsub_1(v5);
    v28 = inet_ntop(2, (v4 + 1732), v30, 0x10u);
    *v26 = 136315394;
    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    *(v26 + 14) = v28;
    __SC_log_send();
  }

  sub_8CD0(a1);
  sub_25CBC(a1, a2 != 0);
  sub_FE80(a1);
  *(v4 + 1732) = 0;
  sub_254C0(v4);
  *(v4 + 48) = 0;
  sub_2ADA0(a1);
  sub_BC60(a1, 0);
  return timer_set_relative(*(v4 + 1760), 0, 1000, sub_B40, a1, 0, 0);
}

void sub_29BF4(uint64_t a1)
{
  v2 = sub_1688(a1);
  v4 = v2 + 224;
  v5 = 0;
  LODWORD(v5) = *(v2 + 1724);
  v6 = v2 + 208;
  v3 = *(v2 + 64);
  v7 = *(v2 + 80);
  v8 = v3;
  sub_102AC(a1, &v4);
}

void sub_29C50(uint64_t a1, int a2)
{
  v4 = sub_1688(a1);
  sub_BC60(a1, 0);
  if (a2)
  {
    if (a2 == 1)
    {
      timer_set_relative(*(v4 + 1760), 60, 0, sub_29D4C, a1, 0, 0);
      if (!*(v4 + 200))
      {
        *(v4 + 200) = 1;
        sub_29BF4(a1);
        v5 = *(v4 + 1724);

        sub_26440(a1, (v4 + 224), v5, 1);
      }
    }
  }

  else
  {
    sub_26440(a1, (v4 + 224), *(v4 + 1724), *(v4 + 116));
    *(v4 + 116) = 0;

    sub_29BF4(a1);
  }
}

uint64_t sub_29D4C(uint64_t a1)
{
  v2 = sub_1688(a1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 1732);

  return sub_2A3A8(a1, v3, sub_29C50, v4);
}

uint64_t sub_29D9C(uint64_t a1, double a2)
{
  v3 = sub_1688(a1);
  v4 = sub_1690(a1);
  v3[4].f64[0] = v3[4].f64[0] + a2;
  v3[5] = vaddq_f64(v3[5], vdupq_lane_s64(*&a2, 0));
  v3[6].f64[0] = v3[6].f64[0] + a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = nullsub_1(v4);
    *v15 = 136315394;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_29F0C(uint64_t a1)
{
  v2 = sub_1690(a1);
  v3 = sub_1688(a1);
  v4 = sub_2C464(a1);
  v5 = *(v3 + 1732);
  v6 = *(v3 + 1736);
  if (((v6 ^ v5) & v4) != 0)
  {
    v6 = sub_27574(v3 + 208, v5);
    if ((v6 + 1) <= 1)
    {
      v6 = *(v3 + 1736);
    }
  }

  memset(v54, 0, 512);
  v52 = v6;
  v7 = arp_open_routing_socket();
  if (v7 == -1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      v21 = nullsub_1(v2);
      v22 = __error();
      v23 = strerror(*v22);
      *v20 = 136315394;
      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      *(v20 + 14) = v23;
      return __SC_log_send();
    }
  }

  else
  {
    v8 = v7;
    v9 = sub_144D8(v2);
    if (!arp_get(v8, v54, v6, v9))
    {
      for (i = 1; ; ++i)
      {
        v25 = &v54[v54[92] + 92];
        if (v25->sdl_family == 18)
        {
          if (v25->sdl_alen)
          {
            break;
          }
        }

        if (i == 5)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return close(v8);
          }

          v26 = _os_log_pack_size();
          __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
          v34 = *__error();
          v35 = _os_log_pack_fill();
          v36 = nullsub_1(v2);
          v37 = inet_ntop(2, &v52, v53, 0x10u);
          *v35 = 136315394;
          *(v35 + 4) = v36;
          *(v35 + 12) = 2080;
          *(v35 + 14) = v37;
          goto LABEL_20;
        }

        usleep(0x3E8u);
        if (arp_get(v8, v54, v52, v9))
        {
          return close(v8);
        }
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return close(v8);
      }

      v38 = _os_log_pack_size();
      v51 = &v51;
      __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45);
      v46 = *__error();
      v47 = _os_log_pack_fill();
      v48 = nullsub_1(v2);
      v49 = inet_ntop(2, &v52, v53, 0x10u);
      v50 = link_ntoa(v25);
      *v47 = 136315906;
      *(v47 + 4) = v48;
      *(v47 + 12) = 2080;
      *(v47 + 14) = v49;
      *(v47 + 22) = 2080;
      *(v47 + 24) = v50;
      *(v47 + 32) = 1024;
      *(v47 + 34) = i;
LABEL_20:
      __SC_log_send();
    }

    return close(v8);
  }

  return result;
}

void sub_2A368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_A314(a2);
  }

  if (*(a1 + 25))
  {
    *(a1 + 116) &= ~8u;
  }
}

uint64_t sub_2A3A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!G_discover_and_publish_router_mac_address)
  {
    return 0;
  }

  v5 = *(*(a1 + 16) + 8);
  if ((*(a1 + 25) & 1) == 0 || (v6 = *(a1 + 116), *(a1 + 116) = v6 & 0xFFFFFFFB, (v6 & 1) == 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = *__error();
    v17 = _os_log_pack_fill();
    v18 = nullsub_1(v5);
    *v17 = 136315138;
    *(v17 + 4) = v18;
    __SC_log_send();
    return 0;
  }

  *(a1 + 116) = v6 & 0xFFFFFFE3 | 8;
  v22 = *(a1 + 120);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v35 = HIBYTE(v22);
    v23 = _os_log_pack_size();
    v34[1] = v34;
    __chkstk_darwin(v23, v24, v25, v26, v27, v28, v29, v30);
    v31 = *__error();
    v32 = _os_log_pack_fill();
    v33 = nullsub_1(v5);
    *v32 = 136317186;
    *(v32 + 4) = v33;
    *(v32 + 12) = 1024;
    *(v32 + 14) = a4;
    *(v32 + 18) = 1024;
    *(v32 + 20) = BYTE1(a4);
    *(v32 + 24) = 1024;
    *(v32 + 26) = BYTE2(a4);
    *(v32 + 30) = 1024;
    *(v32 + 32) = HIBYTE(a4);
    *(v32 + 36) = 1024;
    *(v32 + 38) = v22;
    *(v32 + 42) = 1024;
    *(v32 + 44) = BYTE1(v22);
    *(v32 + 48) = 1024;
    *(v32 + 50) = BYTE2(v22);
    *(v32 + 54) = 1024;
    *(v32 + 56) = v35;
    __SC_log_send();
  }

  sub_21BA8(a2, sub_2A6B8, a1, a3, a4, v22, dword_70080);
  return 1;
}

uint64_t sub_2A684(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 116) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2A6A0(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 120);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2A6B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (*(a1 + 25))
  {
    *(a1 + 116) &= ~8u;
  }

  v6 = *(*(a1 + 16) + 8);
  if (*(a3 + 8))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = nullsub_1(v6);
      v18 = sub_21F58(*a3);
      *v16 = 136315394;
      *(v16 + 4) = v17;
      *(v16 + 12) = 2080;
      *(v16 + 14) = v18;
      __SC_log_send();
    }

    v19 = 99;
  }

  else if (*(a3 + 12))
  {
    v20 = sub_AD1C(*(*(a1 + 16) + 8));
    memmove((a1 + 124), (a3 + 24), v20);
    if (*(a1 + 25))
    {
      *(a1 + 116) |= 7u;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = nullsub_1(v6);
      v32 = *(a1 + 120);
      v33 = *(a1 + 121);
      v34 = *(a1 + 122);
      v35 = *(a1 + 123);
      *v30 = 136316162;
      *(v30 + 4) = v31;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v32;
      *(v30 + 18) = 1024;
      *(v30 + 20) = v33;
      *(v30 + 24) = 1024;
      *(v30 + 26) = v34;
      *(v30 + 30) = 1024;
      *(v30 + 32) = v35;
      __SC_log_send();
    }

    v19 = 0;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = _os_log_pack_size();
      __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
      v44 = *__error();
      v45 = _os_log_pack_fill();
      v46 = nullsub_1(v6);
      v47 = *(a1 + 120);
      v48 = *(a1 + 121);
      v49 = *(a1 + 122);
      v50 = *(a1 + 123);
      *v45 = 136316162;
      *(v45 + 4) = v46;
      *(v45 + 12) = 1024;
      *(v45 + 14) = v47;
      *(v45 + 18) = 1024;
      *(v45 + 20) = v48;
      *(v45 + 24) = 1024;
      *(v45 + 26) = v49;
      *(v45 + 30) = 1024;
      *(v45 + 32) = v50;
      __SC_log_send();
    }

    if (*(a1 + 25))
    {
      *(a1 + 116) |= 0x10u;
    }

    v19 = 1;
  }

  return a2(a1, v19);
}

uint64_t sub_2AA6C(uint64_t a1, uint64_t a2)
{
  if (!G_discover_and_publish_router_mac_address)
  {
    return 0;
  }

  v3 = *(*(a1 + 16) + 8);
  if ((*(a1 + 25) & 1) == 0 || (v4 = *(a1 + 116), *(a1 + 116) = v4 & 0xFFFFFFFB, (v4 & 1) == 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = nullsub_1(v3);
    *v15 = 136315138;
    *(v15 + 4) = v16;
    __SC_log_send();
    return 0;
  }

  v18 = *(a1 + 120);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    v29 = nullsub_1(v3);
    *v28 = 136316162;
    *(v28 + 4) = v29;
    *(v28 + 12) = 1024;
    *(v28 + 14) = v18;
    *(v28 + 18) = 1024;
    *(v28 + 20) = BYTE1(v18);
    *(v28 + 24) = 1024;
    *(v28 + 26) = BYTE2(v18);
    *(v28 + 30) = 1024;
    *(v28 + 32) = HIBYTE(v18);
    __SC_log_send();
  }

  *(a2 + 4) = v18;
  v30 = *(a1 + 24);
  if ((v30 & 0x100) != 0)
  {
    v31 = (a1 + 124);
  }

  else
  {
    v31 = 0;
  }

  memmove((a2 + 8), v31, (v30 >> 4) & 0x10);
  return 1;
}

uint64_t sub_2ACE8(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return a1 + 124;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AD0C(_DWORD *a1, uint64_t a2, int a3)
{
  v8 = 0;
  v4 = sub_274FC(a2, a3, &v8);
  v5 = a1[6];
  if (!v4)
  {
    if ((v5 & 0x100) != 0)
    {
      result = 0;
      a1[29] = 0;
      return result;
    }

    return 0;
  }

  if ((v5 & 0x100) == 0)
  {
    return 1;
  }

  v7 = v8;
  if ((~a1[29] & 7) == 0 && v8 == a1[30])
  {
    return 0;
  }

  result = 1;
  a1[29] = 1;
  a1[30] = v7;
  return result;
}

uint64_t sub_2ADA0(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) = 0;
  }

  return result;
}

uint64_t sub_2ADB0(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t sub_2ADC0(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 1u;
  }

  return result;
}

uint64_t sub_2ADD8(uint64_t a1, int a2)
{
  if (sub_295C(&unk_70160) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_42C0(&unk_70160, v4);
    if (sub_295C(v5 + 24) >= 1)
    {
      break;
    }

LABEL_8:
    if (++v4 >= sub_295C(&unk_70160))
    {
      return 0;
    }
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(v5 + 24, v6);
    if (v7 != a1 && *(v7 + 100) == a2)
    {
      return 1;
    }

    if (++v6 >= sub_295C(v5 + 24))
    {
      goto LABEL_8;
    }
  }
}

_DWORD *sub_2AEA4(_DWORD *result, _DWORD *a2)
{
  if (result)
  {
    *result = dword_70180;
  }

  if (a2)
  {
    *a2 = dword_70184;
  }

  return result;
}

void sub_2AEF8(uint64_t a1, __CFDictionary *a2, int a3)
{
  v6 = *(*(a1 + 16) + 8);
  v7 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(a1 + 120), *(a1 + 121), *(a1 + 122), *(a1 + 123));
  v8 = sub_AD1C(v6);
  sub_59EA8(cStr, 48, (a1 + 124), v8);
  v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v10 = v9;
  if (a3)
  {
    v11 = CFStringCreateWithFormat(0, 0, @"IPv4.Router=%@;IPv4.RouterHardwareAddress=%@", v7, v9);
    sub_2B7AC(a2, v11);
    CFRelease(v11);
  }

  CFDictionarySetValue(a2, @"ARPResolvedIPAddress", v7);
  CFDictionarySetValue(a2, @"ARPResolvedHardwareAddress", v10);
  CFRelease(v7);
  CFRelease(v10);
}

void sub_2B03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  byte_701B4 = 1;
  *(v1 + 152) = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

uint64_t sub_2B060(uint64_t result)
{
  v1 = *(result + 16);
  if ((*v1 & 0x80) == 0)
  {
    v2 = result;
    v3 = *(v1 + 8);
    *v1 |= 0x80u;
    result = sub_295C(v1 + 24);
    v4 = *(v1 + 88);
    if (v4)
    {
      if (result > 2)
      {
        return result;
      }

      v5 = v4 + 88;
    }

    else
    {
      if (result > 1)
      {
        return result;
      }

      v5 = 0;
    }

    result = sub_596EC(v3);
    if (result >= 1)
    {
      v7 = result;
      v8 = 0;
      v9 = 0;
      *&v6 = 136315138;
      v23 = v6;
      do
      {
        result = sub_596F4(v3, v8);
        if (*result != *(v2 + 100))
        {
          v10 = result;
          if (!v5 || *result != *(v5 + 12))
          {
            if (!v9)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v11 = _os_log_pack_size();
                v24 = &v23;
                __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
                v19 = *__error();
                v20 = _os_log_pack_fill();
                v21 = nullsub_1(v3);
                *v20 = v23;
                *(v20 + 4) = v21;
                __SC_log_send();
              }
            }

            v22 = nullsub_1(v3);
            result = sub_140BC(v22, *v10);
            v9 = 1;
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

uint64_t sub_2B250(uint64_t a1, uint64_t a2)
{
  current_time = timer_get_current_time();
  if (!*(a2 + 20) && current_time - *(a1 + 144) <= dword_70084)
  {
    return 0;
  }

  v5 = *(a1 + 160);
  if (v5 >= 1 && current_time - *(a1 + 152) > dword_70084)
  {
    v5 = 0;
  }

  *(a1 + 152) = current_time;
  *(a1 + 160) = v5 + 1;
  if (v5 >= dword_70088)
  {
    return 0;
  }

  v6 = *(*(a1 + 16) + 8);
  v7 = sub_216C0(v6);
  v35 = v7;
  if (!v7)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      __chkstk_darwin(v24, v25, v26, v27, v28, v29, v30, v31);
      v32 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 0;
    }

    return 0;
  }

  v8 = v7;
  sub_2B55C(v6, a2);
  v9 = sub_21F60(v8, *(a1 + 100));
  sub_15000(&v35);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v34[1] = v34;
    __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = sub_6160(*(a1 + 24));
    v21 = nullsub_1(v6);
    if (*(a2 + 20))
    {
      v22 = "BonjourSleepProxy ";
    }

    else
    {
      v22 = "";
    }

    v23 = *(a2 + 8);
    sub_2B710(v19, v20, v21, *(a1 + 100), *(a1 + 101), *(a1 + 102), *(a1 + 103), v22, *v23, v23[1], v23[2], v23[3], v23[4], v23[5], *(a1 + 160), dword_70088);
    __SC_log_send();
  }

  return v9;
}

uint64_t sub_2B55C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = nullsub_1(result);
    v5 = sub_638C(v3);
    v6 = *(a2 + 8);
    BytePtr = CFDataGetBytePtr(*(a2 + 32));
    Length = CFDataGetLength(*(a2 + 32));
    v9 = sub_5A20(-1, v21, v4, v5, v6, *(a2 + 24), *a2, 0x14E9u, 0x14E9u, BytePtr, Length);
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12, v13, v14, v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      v20 = nullsub_1(v3);
      *v19 = 136315394;
      *(v19 + 4) = v20;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v9;
      return __SC_log_send();
    }
  }

  return result;
}

double sub_2B710(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16)
{
  *&result = 136318722;
  *a1 = 136318722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  *(a1 + 46) = 2080;
  *(a1 + 48) = a8;
  *(a1 + 56) = 1024;
  *(a1 + 58) = a9;
  *(a1 + 62) = 1024;
  *(a1 + 64) = a10;
  *(a1 + 68) = 1024;
  *(a1 + 70) = a11;
  *(a1 + 74) = 1024;
  *(a1 + 76) = a12;
  *(a1 + 80) = 1024;
  *(a1 + 82) = a13;
  *(a1 + 86) = 1024;
  *(a1 + 88) = a14;
  *(a1 + 92) = 1024;
  *(a1 + 94) = a15;
  *(a1 + 98) = 1024;
  *(a1 + 100) = a16;
  return result;
}

void sub_2B7AC(__CFDictionary *a1, const __CFString *a2)
{
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, a2, 0x8000100u, 0);
  if (ExternalRepresentation)
  {
    v5 = ExternalRepresentation;
    memset(&v9, 0, sizeof(v9));
    CC_SHA256_Init(&v9);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    CC_SHA256_Update(&v9, BytePtr, Length);
    CC_SHA256_Final(md, &v9);
    CFRelease(v5);
    v8 = CFDataCreate(0, md, 20);
    CFDictionarySetValue(a1, @"NetworkSignatureHash", v8);
    CFDictionarySetValue(a1, @"NetworkSignature", a2);
    CFRelease(v8);
  }
}

void sub_2B8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((*(v1 + 2) & 0x40) != 0)
  {
    v15 = 0;
    v16 = kSCEntNetIPv4;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      v13 = sub_6160(*(a1 + 24));
      v14 = nullsub_1(*(v1 + 8));
      *v12 = 136315394;
      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v12 + 14) = v14;
      __SC_log_send();
    }

    sub_11F3C(qword_70188, *a1, &v16, &v15, 1, *(a1 + 36));
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }
}

uint64_t sub_2BA58(uint64_t a1)
{
  v2 = sub_144D8(*(*(a1 + 16) + 8));
  sub_143CC(v2, 0, 0);
  v3 = nullsub_1(*(*(a1 + 16) + 8));

  return sub_B778(v3, 0);
}

CFTypeRef *sub_2BAB0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return sub_498C(*(a1 + 16), v1, (*(a1 + 24) >> 8) & 1);
  }

  else
  {
    return 0;
  }
}

void sub_2BB1C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v91 = a4;
  v92 = a3;
  v7 = *(a1 + 100);
  v87 = (a1 + 100);
  v8 = *(*(a1 + 16) + 8);
  v90 = a2;
  if (v7)
  {
    v9 = v7 == a2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!a3)
    {
LABEL_11:
      v26 = bswap32(v90);
      if ((v26 & 0x80000000) != 0)
      {
        if (v26 >> 30 == 2)
        {
          v84 = 0;
          v85 = 0;
          v88 = 0xFFFF;
          v92 = 0xFFFF;
          LOBYTE(v5) = -1;
          v83 = 255;
        }

        else
        {
          v88 = 0xFFFFFF;
          v92 = 0xFFFFFF;
          LOBYTE(v5) = -1;
          v83 = 255;
          v84 = 0;
          v85 = (&stru_B8 + 71);
        }
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v83 = 0;
        LOBYTE(v5) = -1;
        v92 = 255;
        v88 = 255;
      }

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
      v21 = nullsub_1(v8);
      v22 = *(v6 + 100);
      v23 = *(v6 + 101);
      v24 = *(v6 + 102);
      v25 = *(v6 + 103);
      *v20 = 136316418;
      *(v20 + 4) = "service_set_address";
      *(v20 + 12) = 2080;
      *(v20 + 14) = v21;
      *(v20 + 22) = 1024;
      *(v20 + 24) = v22;
      *(v20 + 28) = 1024;
      *(v20 + 30) = v23;
      *(v20 + 34) = 1024;
      *(v20 + 36) = v24;
      *(v20 + 40) = 1024;
      *(v20 + 42) = v25;
      __SC_log_send();
    }

    sub_FE80(v6);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v85 = (v5 >> 16);
  v88 = v5;
  v83 = v5 >> 8;
  v84 = v5 >> 24;
LABEL_16:
  v27 = v90 >> 24;
  if (v4)
  {
    v81 = v4 >> 16;
    v82 = v4 >> 8;
    v28 = v90 >> 16;
    v29 = v90;
    v80 = v4;
    v30 = v90 >> 8;
  }

  else
  {
    v28 = v90 >> 16;
    v30 = v90 >> 8;
    v29 = v90;
    LODWORD(v4) = (v27 << 24) | (BYTE2(v90) << 16) | (BYTE1(v90) << 8) | ~v88;
    v80 = v4 | v90;
    v91 = v80;
    v82 = v4 >> 8;
    v81 = WORD1(v4);
  }

  v31 = BYTE3(v90);
  v32 = v28;
  v89 = v30;
  v33 = (v28 << 16) | (v27 << 24) | (v30 << 8) | v29;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v78 = BYTE3(v4);
    v34 = _os_log_pack_size();
    v86 = v32;
    v79 = &v76;
    __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
    v42 = *__error();
    v77 = _os_log_pack_fill();
    v43 = sub_6160(*(v6 + 24));
    v44 = v31;
    v45 = v6;
    v46 = v33;
    v47 = v29;
    v48 = v43;
    v49 = nullsub_1(v8);
    v50 = v48;
    v29 = v47;
    v33 = v46;
    v6 = v45;
    v31 = v44;
    v32 = v86;
    sub_2C10C(v77, v50, v49, v29, v89, v86, v31, v5, v83, v85, v84, v80, v82, v81, v78);
    __SC_log_send();
  }

  v51 = v89;
  v52 = nullsub_1(v8);
  if ((sub_40E30(v52, v33, &v92, &v91) & 0x80000000) != 0)
  {
    v53 = sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = _os_log_pack_size();
      v86 = v32;
      v85 = &v76;
      __chkstk_darwin(v54, v55, v56, v57, v58, v59, v60, v61);
      v84 = v53;
      v62 = *__error();
      v63 = _os_log_pack_fill();
      v64 = nullsub_1(v8);
      LODWORD(v83) = v31;
      v65 = v6;
      v66 = v33;
      v67 = v29;
      v68 = v64;
      v69 = __error();
      v70 = strerror(*v69);
      v71 = *__error();
      *v63 = 136316674;
      *(v63 + 4) = v68;
      *(v63 + 12) = 1024;
      *(v63 + 14) = v67;
      v33 = v66;
      v6 = v65;
      *(v63 + 18) = 1024;
      *(v63 + 20) = v51;
      *(v63 + 24) = 1024;
      *(v63 + 26) = v86;
      *(v63 + 30) = 1024;
      *(v63 + 32) = v83;
      *(v63 + 36) = 2080;
      *(v63 + 38) = v70;
      *(v63 + 46) = 1024;
      *(v63 + 48) = v71;
      __SC_log_send();
    }
  }

  v72 = v88 & v33;
  v73 = v87;
  *v87 = 0;
  v73[1] = 0;
  LODWORD(v73) = v91;
  v74 = v92;
  *(v6 + 100) = v90;
  *(v6 + 104) = v74;
  *(v6 + 108) = v72;
  *(v6 + 112) = v73;
  *(v6 + 144) = timer_get_current_time();
  *(v6 + 160) = 0;
  v75 = sub_144D8(v8);
  sub_143CC(v75, 0, v91);
  byte_70190 = 1;
  dispatch_source_merge_data(qword_701C0, 1uLL);
}

double sub_2C10C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15)
{
  *&result = 136318466;
  *a1 = 136318466;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a6;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a7;
  *(a1 + 46) = 1024;
  *(a1 + 48) = a8;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a9;
  *(a1 + 58) = 1024;
  *(a1 + 60) = a10;
  *(a1 + 64) = 1024;
  *(a1 + 66) = a11;
  *(a1 + 70) = 1024;
  *(a1 + 72) = a12;
  *(a1 + 76) = 1024;
  *(a1 + 78) = a13;
  *(a1 + 82) = 1024;
  *(a1 + 84) = a14;
  *(a1 + 88) = 1024;
  *(a1 + 90) = a15;
  return result;
}

void sub_2C1A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (((*v2 >> 22) & 1) != a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
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
      __SC_log_send();
    }

    *v2 = *v2 & 0xFFBFFFFF | ((a2 != 0) << 22);
    byte_70190 = 1;
    dispatch_source_merge_data(qword_701C0, 1uLL);
  }
}

uint64_t sub_2C358(uint64_t a1)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C394(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t sub_2C3A4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C3BC(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_2C3CC(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 92);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C3E4(uint64_t result, int a2)
{
  if (*(result + 25))
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t sub_2C3F4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C40C(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*(a1 + 116) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C428(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 2u;
  }

  return result;
}

uint64_t sub_2C440(uint64_t result)
{
  if (*(result + 25))
  {
    *(result + 116) |= 7u;
  }

  return result;
}

uint64_t sub_2C464(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return *(a1 + 104);
  }

  else
  {
    return 0;
  }
}

__n128 sub_2C47C(uint64_t a1, _OWORD *a2, int a3, __n128 *a4)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    *(a1 + 88) = *a2;
    *(a1 + 104) = a3;
    result = *a4;
    *(a1 + 108) = *a4;
  }

  return result;
}

__n128 sub_2C49C(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  if ((*(a1 + 25) & 2) != 0)
  {
    result = *(a1 + 88);
    *a2 = result;
    *a3 = *(a1 + 104);
  }

  return result;
}

uint64_t sub_2C4B8(uint64_t a1, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  if ((*(a1 + 25) & 2) == 0)
  {
    return 22;
  }

  v13 = *(*(a1 + 16) + 8);
  v14 = sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v15 = _os_log_pack_size();
    v50 = a6;
    v49[1] = v49;
    __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    v25 = sub_6160(*(a1 + 24));
    v26 = nullsub_1(v13);
    v49[0] = v14;
    v27 = a4;
    v28 = a5;
    v29 = v13;
    v30 = v26;
    v31 = inet_ntop(30, a2, v51, 0x2Eu);
    *v24 = 136315906;
    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    *(v24 + 14) = v30;
    v13 = v29;
    a5 = v28;
    a4 = v27;
    *(v24 + 22) = 2080;
    *(v24 + 24) = v31;
    *(v24 + 32) = 1024;
    *(v24 + 34) = a3;
    a6 = v50;
    __SC_log_send();
  }

  v32 = nullsub_1(v13);
  if ((sub_420DC(v32, a2, 0, a3, a4, a5, a6) & 0x80000000) == 0)
  {
    return 0;
  }

  v33 = v13;
  v6 = *__error();
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v34 = _os_log_pack_size();
    __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
    v42 = *__error();
    v43 = _os_log_pack_fill();
    v44 = nullsub_1(v33);
    v45 = __error();
    v46 = strerror(*v45);
    v47 = *__error();
    *v43 = 136315650;
    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    *(v43 + 14) = v46;
    *(v43 + 22) = 1024;
    *(v43 + 24) = v47;
    __SC_log_send();
  }

  return v6;
}

uint64_t sub_2C7AC(uint64_t result, _DWORD *a2, int a3)
{
  if ((*(result + 25) & 2) != 0)
  {
    v5 = result;
    v6 = *(*(result + 16) + 8);
    if (*a2 || a2[1] || a2[2] || a2[3])
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        v17 = sub_6160(*(v5 + 24));
        v18 = nullsub_1(v6);
        v19 = inet_ntop(30, a2, v21, 0x2Eu);
        *v16 = 136315906;
        *(v16 + 4) = v17;
        *(v16 + 12) = 2080;
        *(v16 + 14) = v18;
        *(v16 + 22) = 2080;
        *(v16 + 24) = v19;
        *(v16 + 32) = 1024;
        *(v16 + 34) = a3;
        __SC_log_send();
      }

      v20 = nullsub_1(v6);
      return sub_41CE4(v20, a2);
    }
  }

  return result;
}

uint64_t sub_2C964(uint64_t a1)
{
  result = *(*(a1 + 16) + 96);
  if (result)
  {
    return sub_395C4(result);
  }

  return result;
}

uint64_t remove_unused_ip(const char *a1, int a2)
{
  result = sub_4220(a1, 0);
  if (result)
  {
    v5 = result;
    result = sub_1404C(result, a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2);
    if (!result)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        *v15 = 136316162;
        *(v15 + 4) = a1;
        *(v15 + 12) = 1024;
        *(v15 + 14) = a2;
        *(v15 + 18) = 1024;
        *(v15 + 20) = BYTE1(a2);
        *(v15 + 24) = 1024;
        *(v15 + 26) = BYTE2(a2);
        *(v15 + 30) = 1024;
        *(v15 + 32) = HIBYTE(a2);
        __SC_log_send();
      }

      v16 = nullsub_1(*(v5 + 8));
      return sub_140BC(v16, a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2);
    }
  }

  return result;
}

CFIndex sub_2CB40(CFIndex result, in_addr *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v3) != TypeID)
  {
    return 3;
  }

  Value = CFDictionaryGetValue(v3, kSCEntNetIPv4);
  if (Value)
  {
    v6 = Value;
    v7 = 0;
  }

  else
  {
    v8 = CFDictionaryGetValue(v3, kSCEntNetIPv6);
    v7 = v8 != 0;
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = v3;
    }
  }

  v9 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v6) != v9 || v6 == 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13, v14, v15, v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      if (v7)
      {
        v21 = 54;
      }

      else
      {
        v21 = 52;
      }

      *v20 = 67109120;
      v20[1] = v21;
      __SC_log_send();
      return 3;
    }

    return 3;
  }

  result = CFDictionaryGetCount(v6);
  if (result)
  {
    if (v7)
    {

      return sub_2D518(v6, a2);
    }

    else
    {

      return sub_2CDA4(v6, a2);
    }
  }

  else
  {
    if (v7)
    {
      v22 = 512;
    }

    else
    {
      v22 = 256;
    }

    a2->s_addr = v22;
  }

  return result;
}

uint64_t sub_2CDA4(const __CFDictionary *a1, in_addr *a2)
{
  Value = CFDictionaryGetValue(a1, kSCPropNetIPv4ConfigMethod);
  if (!sub_33950(Value, a2))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 3;
    }

    return 3;
  }

  result = 0;
  s_addr = a2->s_addr;
  if (a2->s_addr <= 259)
  {
    if (s_addr != 257)
    {
      if (s_addr != 259)
      {
        return result;
      }

      v16 = CFDictionaryGetValue(a1, kSCPropNetIPv4DHCPClientID);
      TypeID = CFStringGetTypeID();
      if (v16)
      {
        if (CFGetTypeID(v16) == TypeID)
        {
          v18 = sub_4160(v16, v83, 256, 0);
          v19 = v18 - (v18 > 0);
          if (v19 >= 1)
          {
            a2[2].s_addr = v19;
            v20 = strdup(v83);
            *&a2[4].s_addr = v20;
            if (!v20)
            {
              sub_2424();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v21 = _os_log_pack_size();
                __chkstk_darwin(v21, v22, v23, v24, v25, v26, v27, v28);
                v29 = *__error();
                *_os_log_pack_fill() = 0;
                __SC_log_send();
              }

              return 5;
            }
          }
        }
      }

      return 0;
    }

LABEL_18:
    v83[0].s_addr = 0;
    v82 = 0;
    if (sub_33B40(a1, kSCPropNetIPv4Addresses, v83))
    {
      if (v83[0].s_addr)
      {
        v30 = kSCPropNetIPv4SubnetMasks;
        if (CFDictionaryContainsKey(a1, kSCPropNetIPv4SubnetMasks) && !sub_33B40(a1, kSCPropNetIPv4SubnetMasks, &v82))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
LABEL_42:
            v59 = _os_log_pack_size();
            __chkstk_darwin(v59, v60, v61, v62, v63, v64, v65, v66);
            v67 = *__error();
            v68 = _os_log_pack_fill();
            v69 = sub_6160(a2->s_addr);
            *v68 = 136315394;
            *(v68 + 4) = v69;
            *(v68 + 12) = 2112;
            *(v68 + 14) = v30;
            goto LABEL_43;
          }
        }

        else
        {
          v30 = kSCPropNetIPv4DestAddresses;
          if (!CFDictionaryContainsKey(a1, kSCPropNetIPv4DestAddresses))
          {
            v31 = 0;
            goto LABEL_29;
          }

          if (sub_33B40(a1, kSCPropNetIPv4DestAddresses, &v82 + 1))
          {
            v31 = HIDWORD(v82);
LABEL_29:
            v43 = v82;
            a2[2].s_addr = v83[0];
            a2[3].s_addr = v43;
            a2[5].s_addr = v31;
            if (a2->s_addr == 262)
            {
              v47 = CFDictionaryGetValue(a1, @"FailoverAddressTimeout");
              if (!v47)
              {
                return 0;
              }

              v48 = v47;
              v49 = CFNumberGetTypeID();
              if (CFGetTypeID(v48) == v49)
              {
                if (CFNumberGetValue(v48, kCFNumberSInt32Type, &a2[7]))
                {
                  return 0;
                }
              }

              sub_2424();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                return 0;
              }

              v50 = _os_log_pack_size();
              __chkstk_darwin(v50, v51, v52, v53, v54, v55, v56, v57);
              v58 = *__error();
              *_os_log_pack_fill() = 0;
            }

            else
            {
              if (a2->s_addr != 257)
              {
                return 0;
              }

              v44 = CFDictionaryGetValue(a1, kSCPropNetIgnoreLinkStatus);
              v45 = CFBooleanGetTypeID();
              if (v44 && CFGetTypeID(v44) == v45)
              {
                v46 = CFBooleanGetValue(v44);
              }

              else
              {
                v46 = 0;
              }

              a2[6].s_addr = v46;
              v70 = CFDictionaryGetValue(a1, kSCPropNetIPv4Router);
              if (!v70)
              {
                return 0;
              }

              if (sub_575A4(v70, a2 + 4))
              {
                return 0;
              }

              sub_2424();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                return 0;
              }

              v71 = _os_log_pack_size();
              __chkstk_darwin(v71, v72, v73, v74, v75, v76, v77, v78);
              v79 = *__error();
              v80 = _os_log_pack_fill();
              v81 = sub_6160(a2->s_addr);
              *v80 = 136315394;
              *(v80 + 4) = v81;
              *(v80 + 12) = 2112;
              *(v80 + 14) = kSCPropNetIPv4Router;
            }

            __SC_log_send();
            return 0;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v32 = _os_log_pack_size();
          __chkstk_darwin(v32, v33, v34, v35, v36, v37, v38, v39);
          v40 = *__error();
          v41 = _os_log_pack_fill();
          v42 = sub_6160(a2->s_addr);
          *v41 = 136315138;
          *(v41 + 4) = v42;
LABEL_43:
          __SC_log_send();
        }
      }
    }

    return 3;
  }

  switch(s_addr)
  {
    case 262:
      goto LABEL_18;
    case 261:
      result = 0;
      a2[2].s_addr = 1;
      return result;
    case 260:
      goto LABEL_18;
  }

  return result;
}

uint64_t sub_2D518(const __CFDictionary *a1, uint64_t a2)
{
  v113 = 0uLL;
  Value = CFDictionaryGetValue(a1, kSCPropNetIPv6LinkLocalAddress);
  if (sub_57658(Value, &v113) && v113 == 254 && (BYTE1(v113) & 0xC0) == 0x80)
  {
    *(a2 + 52) = v113;
  }

  if (!sub_33210(a1, kSCPropNetIPv6EnableCGA, 1))
  {
    *(a2 + 48) = 1;
  }

  v5 = CFDictionaryGetValue(a1, kSCPropNetIPv6ConfigMethod);
  TypeID = CFStringGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID)
  {
    goto LABEL_74;
  }

  if (CFEqual(v5, kSCValNetIPv6ConfigMethodManual))
  {
    *a2 = 513;
    *v114 = 0uLL;
    LODWORD(v111) = 0;
    v7 = CFDictionaryGetValue(a1, kSCPropNetIPv6Addresses);
    v8 = CFArrayGetTypeID();
    if (v7)
    {
      if (CFGetTypeID(v7) == v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = CFDictionaryGetValue(a1, kSCPropNetIPv6PrefixLength);
    v12 = CFArrayGetTypeID();
    if (v11)
    {
      if (CFGetTypeID(v11) == v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (!v9)
      {
LABEL_38:
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_52;
        }

        return 3;
      }
    }

    else
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    Count = CFArrayGetCount(v9);
    if (!Count)
    {
      goto LABEL_38;
    }

    v15 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    if ((sub_57658(ValueAtIndex, v114) & 1) == 0)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_52;
      }

      return 3;
    }

    if (!v13)
    {
      goto LABEL_97;
    }

    if (v15 != CFArrayGetCount(v13))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_52:
        v34 = _os_log_pack_size();
        __chkstk_darwin(v34, v35, v36, v37, v38, v39, v40, v41);
        v42 = *__error();
LABEL_61:
        v52 = _os_log_pack_fill();
        v53 = sub_6160(*a2);
        *v52 = 136315138;
        *(v52 + 4) = v53;
LABEL_62:
        __SC_log_send();
      }

      return 3;
    }

    v17 = CFArrayGetValueAtIndex(v13, 0);
    v18 = CFNumberGetTypeID();
    if (v17 && CFGetTypeID(v17) == v18 && CFNumberGetValue(v17, kCFNumberIntType, &v111))
    {
LABEL_97:
      if (v15 >= 2)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20, v21, v22, v23, v24, v25, v26);
          v27 = *__error();
          v28 = _os_log_pack_fill();
          v29 = sub_6160(*a2);
          *v28 = 136315138;
          *(v28 + 4) = v29;
          __SC_log_send();
        }
      }

      v30 = CFDictionaryGetValue(a1, kSCPropNetIPv6Router);
      v31 = CFStringGetTypeID();
      if (!v30 || CFGetTypeID(v30) != v31 || (sub_57658(v30, (a2 + 28)) & 1) != 0)
      {
        v32 = 0;
        *(a2 + 8) = *v114;
        *(a2 + 24) = v111;
        return v32;
      }

      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 3;
      }
    }

    else
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 3;
      }
    }

    v43 = _os_log_pack_size();
    __chkstk_darwin(v43, v44, v45, v46, v47, v48, v49, v50);
    v51 = *__error();
    goto LABEL_61;
  }

  if (CFEqual(v5, kSCValNetIPv6ConfigMethodAutomatic))
  {
    v10 = 514;
LABEL_42:
    v32 = 0;
    *a2 = v10;
    return v32;
  }

  if (CFEqual(v5, kSCValNetIPv6ConfigMethodRouterAdvertisement))
  {
    v10 = 515;
    goto LABEL_42;
  }

  if (!CFEqual(v5, kSCValNetIPv6ConfigMethod6to4))
  {
    if (CFEqual(v5, kSCValNetIPv6ConfigMethodLinkLocal))
    {
      v10 = 517;
      goto LABEL_42;
    }

    if (CFEqual(v5, @"DHCPv6PD"))
    {
      *a2 = 518;
      v54 = @"RequestedPrefix";
      v55 = CFDictionaryGetValue(a1, @"RequestedPrefix");
      if (v55)
      {
        v56 = v55;
        v57 = CFStringGetTypeID();
        if (CFGetTypeID(v56) != v57)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return 3;
          }

          goto LABEL_91;
        }

        if ((sub_57658(v56, (a2 + 8)) & 1) == 0)
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return 3;
          }

          goto LABEL_91;
        }

        inet_ntop(30, (a2 + 8), v114, 0x2Eu);
      }

      v54 = @"RequestedPrefixLength";
      v32 = CFDictionaryGetValue(a1, @"RequestedPrefixLength");
      if (!v32)
      {
        return v32;
      }

      *v114 = 0;
      v58 = CFNumberGetTypeID();
      if (CFGetTypeID(v32) == v58)
      {
        if (sub_577B0(v32, v114))
        {
          if (*v114 < 0x81u)
          {
            v32 = 0;
            *(a2 + 24) = v114[0];
            return v32;
          }

          sub_2424();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            return 3;
          }

          v59 = _os_log_pack_size();
          __chkstk_darwin(v59, v60, v61, v62, v63, v64, v65, v66);
          v67 = *__error();
          v68 = _os_log_pack_fill();
          v69 = *v114;
          *v68 = 136315650;
          *(v68 + 4) = "method_info_from_ipv6_dict";
          *(v68 + 12) = 2112;
          *(v68 + 14) = @"RequestedPrefixLength";
          *(v68 + 22) = 1024;
          *(v68 + 24) = v69;
          goto LABEL_62;
        }

        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return 3;
        }
      }

      else
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          return 3;
        }
      }

LABEL_91:
      v100 = _os_log_pack_size();
      __chkstk_darwin(v100, v101, v102, v103, v104, v105, v106, v107);
      v108 = *__error();
      v109 = _os_log_pack_fill();
      *v109 = 136315394;
      *(v109 + 4) = "method_info_from_ipv6_dict";
      *(v109 + 12) = 2112;
      *(v109 + 14) = v54;
      goto LABEL_62;
    }

LABEL_74:
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 3;
    }

    v70 = _os_log_pack_size();
    __chkstk_darwin(v70, v71, v72, v73, v74, v75, v76, v77);
    v78 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return 3;
  }

  *a2 = 516;
  v32 = CFDictionaryGetValue(a1, @"6to4Relay");
  if (!v32)
  {
    return v32;
  }

  v112.s_addr = 0;
  v111 = 0uLL;
  v33 = CFStringGetTypeID();
  if (CFGetTypeID(v32) != v33)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 3;
    }

    goto LABEL_77;
  }

  if (!sub_4160(v32, v114, 256, 0))
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 3;
    }

LABEL_77:
    v79 = _os_log_pack_size();
    __chkstk_darwin(v79, v80, v81, v82, v83, v84, v85, v86);
    v87 = *__error();
    v88 = _os_log_pack_fill();
    v89 = sub_6160(*a2);
    *v88 = 136315138;
    *(v88 + 4) = v89;
    __SC_log_send();
    return 3;
  }

  if (inet_aton(v114, &v112) == 1)
  {
    *(a2 + 8) = 1;
    *(a2 + 16) = v112;
    return 0;
  }

  if (inet_pton(30, v114, &v111) == 1)
  {
    *(a2 + 8) = 2;
    *(a2 + 16) = v111;
    return 0;
  }

  *(a2 + 8) = 3;
  v90 = strdup(v114);
  *(a2 + 16) = v90;
  if (v90)
  {
    return 0;
  }

  sub_2424();
  v32 = (&dword_4 + 1);
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v91 = _os_log_pack_size();
    __chkstk_darwin(v91, v92, v93, v94, v95, v96, v97, v98);
    v99 = *__error();
    *_os_log_pack_fill() = 0;
    v32 = (&dword_4 + 1);
    __SC_log_send();
  }

  return v32;
}

uint64_t sub_2E2C4(const char *a1, _DWORD *a2)
{
  v3 = sub_4220(a1, 0);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  if (sub_295C(v3 + 24) < 1)
  {
    return 17;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(sub_42C0(v4 + 24, v5) + 100);
    if (v6)
    {
      break;
    }

    if (++v5 >= sub_295C(v4 + 24))
    {
      return 17;
    }
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t sub_2E350(const char *a1, int a2, vm_address_t *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (sub_295C(qword_70160) < 1)
  {
    return 2;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_42C0(qword_70160, v8);
    v10 = v9;
    if (*a1)
    {
      v11 = nullsub_1(*(v9 + 8));
      if (strcmp(v11, a1))
      {
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    if (sub_295C(v10 + 24) >= 1)
    {
      break;
    }

LABEL_16:
    v17 = sub_295C(qword_70160);
    if (!v12 && ++v8 < v17)
    {
      continue;
    }

    if (v12)
    {
      return 17;
    }

    else
    {
      return 2;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = sub_42C0(v10 + 24, v13);
    if ((*(v14 + 24) - 258) <= 2)
    {
      size[0] = 0;
      if (*(v14 + 40))
      {
        v21 = 0;
        *&size[1] = 0u;
        v20 = 0u;
        sub_8DB0(v14, 13, &size[1]);
        if (size[3])
        {
          v15 = sub_1CEA4(v20, a2, size, 0);
          if (v15)
          {
            v16 = sub_2E5CC(v15, size[0], a4);
            *a3 = v16;
            if (v16)
            {
              return 0;
            }
          }
        }
      }
    }

    if (++v13 >= sub_295C(v10 + 24))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2E4E0(const char *a1, vm_address_t *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v13 = 0;
  *size = 0u;
  v12 = 0u;
  if (sub_295C(v5 + 24) < 1)
  {
    return 17;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_42C0(v6 + 24, v7);
    if ((*(v8 + 24) - 258) <= 2)
    {
      if (*(v8 + 40))
      {
        v13 = 0;
        *size = 0u;
        v12 = 0u;
        sub_8DB0(v8, 13, size);
        if (LODWORD(size[1]))
        {
          v9 = sub_2E5CC(size[0], SLODWORD(size[1]), a3);
          *a2 = v9;
          if (v9)
          {
            break;
          }
        }
      }
    }

    if (++v7 >= sub_295C(v6 + 24))
    {
      return 17;
    }
  }

  return 0;
}

vm_address_t sub_2E5CC(const void *a1, vm_size_t size, _DWORD *a3)
{
  address = 0;
  *a3 = 0;
  v6 = vm_allocate(mach_task_self_, &address, size, 1);
  result = 0;
  if (!v6)
  {
    memmove(address, a1, size);
    *a3 = size;
    return address;
  }

  return result;
}

uint64_t sub_2E64C(const char *a1, vm_address_t *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *size = 0u;
  if (sub_295C(v5 + 56) < 1)
  {
    return 17;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_42C0(v6 + 56, v7);
    if ((*(v8 + 24) & 0xFFFFFFFE) == 0x202)
    {
      if (*(v8 + 40))
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        *size = 0u;
        sub_8DB0(v8, 14, size);
        if (LODWORD(size[1]))
        {
          v9 = sub_2E5CC(size[0], SLODWORD(size[1]), a3);
          *a2 = v9;
          if (v9)
          {
            break;
          }
        }
      }
    }

    if (++v7 >= sub_295C(v6 + 56))
    {
      return 17;
    }
  }

  return 0;
}

uint64_t sub_2E748(const char *a1, const __CFData **a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = sub_4220(a1, 0);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (sub_295C(v5 + 56) < 1)
  {
    return 17;
  }

  v7 = 0;
  v8 = 17;
  do
  {
    v9 = sub_42C0(v6 + 56, v7);
    if ((*(v9 + 24) & 0xFFFFFFFE) == 0x202)
    {
      if (*(v9 + 40))
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        sub_8DB0(v9, 14, &v13);
        if (*(&v15 + 1))
        {
          v10 = sub_58DE8(*(&v15 + 1));
          if (v10)
          {
            v11 = v10;
            *a2 = sub_57D48(v10, a3);
            CFRelease(v11);
            if (*a2)
            {
              v8 = 0;
            }

            else
            {
              v8 = v8;
            }
          }
        }
      }
    }

    ++v7;
  }

  while (v7 < sub_295C(v6 + 56));
  return v8;
}

uint64_t sub_2E868(const char *a1, uint64_t *a2)
{
  v3 = sub_4220(a1, 0);
  if (v3)
  {
    v3 = sub_2E8B4(v3);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 17;
    }
  }

  else
  {
    v4 = 2;
  }

  *a2 = v3;
  return v4;
}

__CFDictionary *sub_2E8B4(uint64_t a1)
{
  v41 = *(a1 + 8);
  v1 = a1 + 24;
  v47[0] = a1 + 24;
  v47[1] = a1 + 56;
  v47[2] = 0;
  v46[0] = kSCEntNetIPv4;
  v46[1] = kSCEntNetIPv6;
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2 = 0;
  v43 = kSCValNetIPv4ConfigMethodFailover;
  v3 = kIPConfigurationServiceOptionAPNName;
  v4 = v47;
  do
  {
    v44 = v2;
    allocator = 0;
    v5 = sub_295C(v1);
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; v6 != i; ++i)
      {
        v8 = sub_42C0(*v4, i);
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v10 = Mutable;
        v11 = *(v8 + 24);
        if (v11 > 512)
        {
          if (v11 > 515)
          {
            v12 = kSCValNetIPv6ConfigMethod6to4;
            if (v11 != 516)
            {
              v12 = kSCValNetIPv6ConfigMethodLinkLocal;
              if (v11 != 517)
              {
                v12 = @"DHCPv6PD";
                if (v11 != 518)
                {
LABEL_21:
                  v12 = @"<unknown>";
                }
              }
            }
          }

          else
          {
            v12 = kSCValNetIPv6ConfigMethodManual;
            if (v11 != 513)
            {
              v12 = kSCValNetIPv6ConfigMethodAutomatic;
              if (v11 != 514)
              {
                v12 = kSCValNetIPv6ConfigMethodRouterAdvertisement;
              }
            }
          }
        }

        else if (v11 > 259)
        {
          v12 = kSCValNetIPv4ConfigMethodINFORM;
          if (v11 != 260)
          {
            v12 = kSCValNetIPv4ConfigMethodLinkLocal;
            if (v11 != 261)
            {
              v12 = v43;
              if (v11 != 262)
              {
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v12 = kSCValNetIPv4ConfigMethodManual;
          if (v11 != 257)
          {
            v12 = kSCValNetIPv4ConfigMethodBOOTP;
            if (v11 != 258)
            {
              v12 = kSCValNetIPv4ConfigMethodDHCP;
              if (v11 != 259)
              {
                goto LABEL_21;
              }
            }
          }
        }

        CFDictionarySetValue(Mutable, kSCPropNetIPv4ConfigMethod, v12);
        if (!*(v8 + 40) || (v13 = kCFBooleanTrue, *(v8 + 28)))
        {
          v13 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v10, @"IsPublished", v13);
        if (*(v8 + 32))
        {
          CFDictionarySetValue(v10, @"IsDynamic", kCFBooleanTrue);
        }

        v14 = *(v8 + 28);
        if (v14)
        {
          v15 = "<unknown>";
          if (v14 <= 0x15)
          {
            v15 = off_68E70[v14];
          }

          v16 = CFStringCreateWithCString(0, v15, 0x600u);
          CFDictionarySetValue(v10, @"LastFailureStatus", v16);
          CFRelease(v16);
        }

        CFDictionarySetValue(v10, @"ServiceID", *v8);
        v17 = *(v8 + 56);
        if (v17)
        {
          v18 = v10;
          v19 = @"ChildServiceID";
        }

        else
        {
          v17 = *(v8 + 48);
          if (!v17)
          {
            goto LABEL_36;
          }

          v18 = v10;
          v19 = @"ParentServiceID";
        }

        CFDictionarySetValue(v18, v19, v17);
LABEL_36:
        if (*(v8 + 25))
        {
          v20 = *(v8 + 100);
          if (v20)
          {
            sub_10DF0(v10, kSCPropNetIPv4Addresses, v20);
          }

          v21 = *(v8 + 104);
          if (v21)
          {
            sub_10DF0(v10, kSCPropNetIPv4SubnetMasks, v21);
          }

          if (*(v8 + 25))
          {
            if (*(v8 + 100))
            {
              v22 = *(v8 + 120);
              if (v22)
              {
                sub_57874(v10, kSCPropNetIPv4Router, v22);
                if ((*(v8 + 116) & 4) != 0)
                {
                  v23 = kCFBooleanTrue;
                }

                else
                {
                  v23 = kCFBooleanFalse;
                }

                CFDictionarySetValue(v10, @"RouterARPVerified", v23);
              }
            }
          }

          v24 = *(v8 + 88);
          if (v24)
          {
            sub_57874(v10, @"ManualAddress", v24);
            v25 = *(v8 + 92);
            if (v25)
            {
              sub_57874(v10, @"ManualSubnetMask", v25);
            }
          }

          if ((*(v8 + 25) & 1) == 0)
          {
            goto LABEL_62;
          }

          v26 = *(v8 + 116);
          if ((v26 & 8) == 0)
          {
            goto LABEL_60;
          }

          CFDictionarySetValue(v10, @"RouterARPInProgress", kCFBooleanTrue);
          if (*(v8 + 25))
          {
            v26 = *(v8 + 116);
LABEL_60:
            if ((v26 & 0x10) != 0)
            {
              CFDictionarySetValue(v10, @"RouterARPTimedOut", kCFBooleanTrue);
            }
          }
        }

        else if (*(v8 + 88) || *(v8 + 92) || *(v8 + 96) || *(v8 + 100))
        {
          sub_1CCE0(v10, @"ManualAddress", (v8 + 88));
          sub_1DF6C(v10, @"ManualPrefixLength", *(v8 + 104));
        }

LABEL_62:
        v27 = *(v8 + 8);
        if (v27)
        {
          CFDictionarySetValue(v10, v3, v27);
        }

        sub_8DB0(v8, 22, v10);
        if (v10)
        {
          v28 = allocator;
          if (!allocator)
          {
            v28 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            allocator = v28;
          }

          CFArrayAppendValue(v28, v10);
          CFRelease(v10);
        }
      }
    }

    if (allocator)
    {
      CFDictionarySetValue(theDict, v46[v44], allocator);
      sub_41E8(&allocator);
    }

    v29 = v4[1];
    ++v4;
    v1 = v29;
    v2 = v44 + 1;
  }

  while (v29);
  v30 = sub_2430(v41);
  if (v30)
  {
    if (HIDWORD(v30))
    {
      v31 = *(a1 + 96);
      CFDictionarySetValue(theDict, @"LinkStatusActive", kCFBooleanTrue);
      if (sub_73DC(v41) && v31)
      {
        v32 = sub_395BC(v31);
        v33 = sub_38B24(v32);
        sub_578FC(theDict, @"Security", v33);
        v34 = sub_39534(v31);
        v35 = sub_3952C(v31);
        v36 = sub_395C4(v31);
        CFDictionarySetValue(theDict, @"BSSID", v34);
        CFDictionarySetValue(theDict, @"SSID", v35);
        if (v36)
        {
          CFDictionarySetValue(theDict, @"NetworkID", v36);
        }

        v37 = sub_395CC(v31);
        sub_1DF6C(theDict, @"ConnectionID", v37);
      }
    }

    else
    {
      CFDictionarySetValue(theDict, kSCPropNetLinkActive, kCFBooleanFalse);
    }
  }

  v38 = sub_597F4(v41);
  if (v38)
  {
    sub_578FC(theDict, @"InterfaceType", v38);
  }

  if (sub_12E14(v41))
  {
    CFDictionarySetValue(theDict, @"IsExpensive", kCFBooleanTrue);
  }

  if (sub_597E8(v41))
  {
    CFDictionarySetValue(theDict, @"IsTethered", kCFBooleanTrue);
  }

  return theDict;
}

uint64_t sub_2EFB4(__CFArray **a1)
{
  if (sub_295C(qword_70160) < 1)
  {
    Mutable = 0;
  }

  else
  {
    v2 = 0;
    Mutable = 0;
    do
    {
      v4 = sub_42C0(qword_70160, v2);
      if (sub_295C(v4 + 24) || sub_295C(v4 + 56))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        }

        CFArrayAppendValue(Mutable, *(v4 + 16));
      }

      ++v2;
    }

    while (v2 < sub_295C(qword_70160));
  }

  *a1 = Mutable;
  return 0;
}

uint64_t sub_2F080(vm_address_t *a1, _DWORD *a2)
{
  v4 = sub_5386C();
  if (!v4)
  {
    return 17;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v5);
  v8 = sub_2E5CC(BytePtr, Length, a2);
  *a1 = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_2F0F0(char *a1, _DWORD *a2)
{
  v4 = sub_4220(a1, 0);
  if (!v4)
  {
    return 2;
  }

  if (sub_295C(v4 + 56) < 1 || !sub_5386C())
  {
    return 17;
  }

  v5 = sub_542B0(a1);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_2F15C(const char *a1, __CFDictionary **a2)
{
  v3 = sub_4220(a1, 0);
  if (v3)
  {
    v4 = v3;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = sub_295C(v4 + 24);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v6;
      while (1)
      {
        v9 = sub_42C0(v4 + 24, v7);
        if ((*(v9 + 25) & 1) != 0 && (~*(v9 + 116) & 7) == 0)
        {
          break;
        }

        if (v8 == ++v7)
        {
          goto LABEL_10;
        }
      }

      sub_2AEF8(v9, Mutable, 0);
    }

LABEL_10:
    if (Mutable)
    {
      result = 0;
    }

    else
    {
      result = 17;
    }
  }

  else
  {
    Mutable = 0;
    result = 2;
  }

  *a2 = Mutable;
  return result;
}

uint64_t sub_2F230(char *__s2, int *a2)
{
  v4 = sub_4348(qword_70198, __s2);
  v5 = *a2;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = sub_6160(v5);
    *v15 = 136315394;
    *(v15 + 4) = __s2;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v16;
    __SC_log_send();
  }

  if (!v4)
  {
    return 2;
  }

  v17 = sub_2F404(v4);
  if (!v17)
  {
    return 5;
  }

  v18 = v17;
  if ((v5 & 0xFFFFFEFF) == 0 || (v5 & 0x100) != 0)
  {
    sub_2F45C(v17, 1);
  }

  else
  {
    sub_2F4D0(v17, 1);
  }

  result = 0;
  if (v5 && v5 != 256 && v5 != 512)
  {
    return sub_2F544(v18, 0, a2, 0, 0, 0);
  }

  return result;
}

uint64_t sub_2F404(__int128 *a1)
{
  v2 = nullsub_1(a1);
  v3 = sub_4220(v2, 0);
  if (!v3)
  {
    v3 = sub_32BFC(a1);
    if (v3)
    {
      sub_59348(qword_70160, v3);
    }
  }

  return v3;
}

void sub_2F45C(uint64_t a1, int a2)
{
  v4 = sub_295C(a1 + 24);
  v5 = (a1 + 24);
  if (a2)
  {
    DHCPLeaseListFree_0(v5);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_330B0(v5);
    if (!v4)
    {
      return;
    }
  }

  sub_15204(a1);
}

void sub_2F4D0(uint64_t a1, int a2)
{
  v4 = sub_295C(a1 + 56);
  v5 = (a1 + 56);
  if (a2)
  {
    DHCPLeaseListFree_0(v5);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_330B0(v5);
    if (!v4)
    {
      return;
    }
  }

  sub_33120(a1);
}

uint64_t sub_2F544(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v12 = *(a1 + 8);
  v13 = &off_70000;
  v73 = *a3;
  if ((v73 & 0x100) != 0)
  {
    if (a4 || !dword_700C0 || !*(a1 + 164) || !*(a1 + 168))
    {
      v43 = nullsub_1(v12);
      sub_7A40(v43, 1);
      goto LABEL_22;
    }
  }

  else
  {
    if (*(a3 + 48))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        v72 = a5;
        v16 = a2;
        v71 = v70;
        __chkstk_darwin(v15, v17, v18, v19, v20, v21, v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        v26 = nullsub_1(v12);
        *v25 = 136315138;
        *(v25 + 4) = v26;
        a2 = v16;
        a5 = v72;
        v13 = &off_70000;
        __SC_log_send();
      }

      *a1 |= 0x10000u;
      v6 = a6;
    }

    if (*(a3 + 52) == 254 && (*(a3 + 53) & 0xC0) == 0x80)
    {
      *(a1 + 128) = *(a3 + 52);
      v27 = sub_2424();
      LODWORD(v72) = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v28 = _os_log_pack_size();
        v71 = a2;
        v70[1] = v70;
        __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        v38 = nullsub_1(v12);
        v70[0] = v27;
        v39 = v6;
        v40 = v38;
        v41 = inet_ntop(30, (a3 + 52), v74, 0x2Eu);
        *v37 = 136315394;
        *(v37 + 4) = v40;
        v6 = v39;
        *(v37 + 12) = 2080;
        *(v37 + 14) = v41;
        a2 = v71;
        v13 = &off_70000;
        __SC_log_send();
      }
    }

    if (a4 || !*(v13 + 48) || !*(a1 + 164) || !*(a1 + 168))
    {
      sub_12E30(a1, 1);
      goto LABEL_22;
    }
  }

  if (!*(a1 + 160))
  {
    *(a1 + 160) = 1;
    v42 = nullsub_1(v12);
    sub_40874(v42, 0);
  }

LABEL_22:
  v44 = *a3;
  if (*a3 == 261)
  {
    v45 = *(a1 + 88);
    if (v45)
    {
      sub_13CE0(a1, *v45, (*(v45 + 24) >> 8) & 1);
    }
  }

  v46 = malloc_type_malloc(0xA8uLL, 0x10E00404F7B8AA8uLL);
  if (!v46)
  {
    v49 = 5;
    v50 = v73;
    goto LABEL_38;
  }

  v47 = v46;
  v46[20] = 0;
  *(v46 + 8) = 0u;
  *(v46 + 9) = 0u;
  *(v46 + 6) = 0u;
  *(v46 + 7) = 0u;
  *(v46 + 4) = 0u;
  *(v46 + 5) = 0u;
  *(v46 + 2) = 0u;
  *(v46 + 3) = 0u;
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *(v46 + 6) = v44;
  v46[2] = a1;
  if (a2)
  {
    v48 = CFRetain(a2);
  }

  else
  {
    v51 = sub_6160(v44);
    v52 = nullsub_1(*(a1 + 8));
    v48 = CFStringCreateWithFormat(0, 0, @"%s-%s", v51, v52);
  }

  *v47 = v48;
  v50 = v73;
  if (a4)
  {
    *(v47 + 6) = CFRetain(*a4);
  }

  if (a5)
  {
    (*(a5 + 16))(a5, v47);
  }

  v53 = *a3;
  v54 = sub_E4B8(*(*(v47 + 2) + 8));
  if (v53 == 516 && v54 != 57)
  {
    goto LABEL_36;
  }

  if (v54 > 134)
  {
    if ((v54 - 135) < 2)
    {
      goto LABEL_56;
    }

    if (v54 == 144)
    {
      if (v53 == 258)
      {
        goto LABEL_36;
      }

LABEL_56:
      v68 = sub_5324(v53);
      if (v68)
      {
        v49 = v68(v47, 0, (a3 + 8));
        if (!v49)
        {
          if (a4)
          {
            sub_41E8(a4 + 7);
            a4[7] = CFRetain(*v47);
          }

          if (*(v47 + 6) == 261)
          {
            *(a1 + 88) = v47;
          }

          if ((v50 & 0x100) != 0)
          {
            v69 = a1 + 24;
          }

          else
          {
            v69 = a1 + 56;
          }

          sub_59348(v69, v47);
          v49 = 0;
          if (v6)
          {
            goto LABEL_53;
          }

          return v49;
        }
      }

      else
      {
        v49 = 7;
      }

      goto LABEL_37;
    }

LABEL_68:
    if ((v53 - 258) < 4)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  if (v54 == 6)
  {
    goto LABEL_56;
  }

  if (v54 == 24)
  {
    if (v53 != 257 && v53 != 513)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  if (v54 != 57)
  {
    goto LABEL_68;
  }

  if (v53 == 516)
  {
    goto LABEL_56;
  }

LABEL_36:
  v49 = 4;
LABEL_37:
  sub_41E8(v47);
  sub_41E8(v47 + 6);
  free(v47);
LABEL_38:
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v55 = _os_log_pack_size();
    __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
    v63 = *__error();
    v64 = _os_log_pack_fill();
    v65 = sub_6160(v50);
    if (v49 <= 0x15)
    {
      v66 = off_68E70[v49];
    }

    else
    {
      v66 = "<unknown>";
    }

    *v64 = 136315394;
    *(v64 + 4) = v65;
    *(v64 + 12) = 2080;
    *(v64 + 14) = v66;
    __SC_log_send();
  }

  if ((v50 & 0x100) != 0)
  {
    sub_15204(a1);
  }

  else
  {
    sub_33120(a1);
  }

  sub_12244();
  v47 = 0;
  if (v6)
  {
LABEL_53:
    *v6 = v47;
  }

  return v49;
}

uint64_t sub_2FBA0(char *__s2, int *a2, int a3, uint64_t a4, const __CFDictionary *Value, int a6)
{
  v12 = sub_4348(qword_70198, __s2);
  v13 = *a2;
  v14 = 3;
  if (!*a2 || v13 == 256 || v13 == 512)
  {
    return v14;
  }

  v15 = v12;
  if (!v12)
  {
    return 2;
  }

  v16 = sub_2F404(v12);
  if (!v16)
  {
    return 5;
  }

  v17 = v16;
  v18 = sub_30608(v16, a2, 0);
  v88 = v18;
  if (v18)
  {
    v87 = 0;
    if (a3)
    {
      return 15;
    }

    v19 = v18;
    v20 = sub_4A28(v18, a2, &v87);
    if (!(v20 | v87))
    {
      return 0;
    }

    sub_13CE0(v17, *v19, (*(v19 + 6) >> 8) & 1);
  }

  v21 = sub_12E28(v15);
  v78 = v21 == 255;
  v82 = v17;
  if (!Value)
  {
    v76 = 0;
    v77 = 0;
    v30 = 0;
    v72 = 0;
    v26 = 1;
    v79 = 0;
    v80 = -1;
    v73 = -1;
    v75 = 1;
    goto LABEL_39;
  }

  v22 = v21;
  Value = CFDictionaryGetValue(Value, @"__IPConfigurationServiceOptions");
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
LABEL_26:
    v76 = 0;
    v77 = 0;
    v30 = 0;
    v72 = 0;
    v26 = 1;
    v79 = 0;
    v80 = -1;
    v73 = -1;
    v75 = 1;
    v17 = v82;
    goto LABEL_39;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    Value = 0;
    goto LABEL_26;
  }

  LODWORD(v81) = v22 != 255;
  if (sub_331B4(Value, @"MonitorPID", 0))
  {
    v24 = a6;
  }

  else
  {
    v24 = -1;
  }

  v73 = v24;
  LODWORD(v74) = sub_331B4(Value, @"NoPublish", 0);
  v80 = sub_33210(Value, kIPConfigurationServiceOptionMTU, 0xFFFFFFFFLL);
  HIDWORD(v76) = sub_331B4(Value, kIPConfigurationServiceOptionPerformNUD, 1);
  LODWORD(v76) = sub_331B4(Value, kIPConfigurationServiceOptionEnableDAD, 1);
  v25 = kIPConfigurationServiceOptionEnableCLAT46;
  v79 = sub_331B4(Value, kIPConfigurationServiceOptionEnableCLAT46, 0);
  v26 = CFDictionaryContainsKey(Value, v25) == 0;
  v78 = sub_331B4(Value, kIPConfigurationServiceOptionEnableDHCPv6, v81) == 0;
  v27 = CFDictionaryGetValue(Value, kIPConfigurationServiceOptionEnableL4S);
  v28 = CFBooleanGetTypeID();
  if (v27)
  {
    if (CFGetTypeID(v27) == v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v77 = v29;
  }

  else
  {
    v77 = 0;
  }

  v31 = CFDictionaryGetValue(Value, @"ServiceID");
  v32 = CFStringGetTypeID();
  if (v31 && CFGetTypeID(v31) == v32)
  {
    v81 = CFRetain(v31);
  }

  else
  {
    v81 = 0;
  }

  v75 = sub_331B4(Value, kIPConfigurationServiceOptionClearState, 0);
  v33 = CFDictionaryGetValue(Value, kIPConfigurationServiceOptionAPNName);
  v34 = CFStringGetTypeID();
  v30 = v74;
  if (v33)
  {
    if (CFGetTypeID(v33) == v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v72 = v35;
  }

  else
  {
    v72 = 0;
  }

  Value = v81;
  v17 = v82;
  v75 = v75 == 0;
  LODWORD(v76) = (v76 == 0) << 18;
  HIDWORD(v76) = (HIDWORD(v76) == 0) << 17;
LABEL_39:
  if (v26 && dword_701BC && sub_12E28(v15) == 255 && v30)
  {
    v81 = Value;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = _os_log_pack_size();
      v74 = &v72;
      __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43);
      v44 = *__error();
      v17 = v82;
      v45 = _os_log_pack_fill();
      *v45 = 136315138;
      *(v45 + 4) = __s2;
      __SC_log_send();
    }

    v79 = 1;
    Value = v81;
  }

  if (!Value)
  {
    Value = sub_57C70(0);
    if (!Value)
    {
      return 5;
    }
  }

  v81 = Value;
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v46 = _os_log_pack_size();
    LODWORD(v74) = v30;
    __chkstk_darwin(v46, v47, v48, v49, v50, v51, v52, v53);
    v54 = *__error();
    v55 = _os_log_pack_fill();
    if (a3)
    {
      v56 = "add_service";
    }

    else
    {
      v56 = "set_service";
    }

    v57 = sub_6160(v13);
    *v55 = 136315650;
    *(v55 + 4) = v56;
    *(v55 + 12) = 2080;
    *(v55 + 14) = __s2;
    *(v55 + 22) = 2080;
    *(v55 + 24) = v57;
    v17 = v82;
    __SC_log_send();
    v30 = v74;
  }

  v58 = v80;
  if (v80 >= 1)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v59 = _os_log_pack_size();
      __chkstk_darwin(v59, v60, v61, v62, v63, v64, v65, v66);
      v67 = *__error();
      v17 = v82;
      v68 = _os_log_pack_fill();
      *v68 = 136315394;
      *(v68 + 4) = __s2;
      *(v68 + 12) = 1024;
      *(v68 + 14) = v80;
      v58 = v80;
      __SC_log_send();
    }

    sub_40628(__s2, v58);
  }

  sub_33288(__s2, v77);
  *v17 = *v17 & 0xFFE1FFFF | HIDWORD(v76) | v76;
  v69 = v75;
  if ((v13 & 0x200) == 0)
  {
    v69 = 1;
  }

  if ((v69 & 1) == 0)
  {
    sub_33120(v17);
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 0x40000000;
  v83[2] = sub_3341C;
  v83[3] = &unk_68F20;
  v84 = v30;
  v85 = v78;
  v86 = v79;
  v70 = v81;
  v14 = sub_2F544(v17, v81, a2, 0, v83, &v88);
  if (!v14)
  {
    if (v72)
    {
      sub_33070(v88, v72);
    }

    if (v73 != -1)
    {
      sub_3344C(v88, v73);
    }

    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    sub_4160(v70, a4, 128, 0);
  }

  CFRelease(v70);
  return v14;
}

uint64_t sub_3038C(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  v5 = sub_303E8(a1, v3);
  CFRelease(v4);
  return v5;
}

uint64_t sub_303E8(const char *a1, const void *a2)
{
  v5 = 0;
  if (a1)
  {
    v3 = sub_30B04(a1, a2, &v5);
    if (!v3)
    {
      return 14;
    }
  }

  else
  {
    v3 = sub_337FC(a2, &v5, 0);
    if (!v3)
    {
      v3 = sub_337FC(a2, &v5, 1);
      if (!v3)
      {
        return 14;
      }
    }
  }

  return sub_307E0(v3, v5);
}

uint64_t sub_30460(const char *a1, int a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  result = 3;
  if (*a3 && v5 != 256 && v5 != 512)
  {
    v10 = sub_4220(a1, 0);
    if (v10)
    {
      if (a2)
      {
        v11 = sub_3051C(v10, a3);
        if (v11)
        {
LABEL_7:
          v12 = *v11;
          *(a4 + 96) = 0u;
          *(a4 + 112) = 0u;
          *(a4 + 64) = 0u;
          *(a4 + 80) = 0u;
          *(a4 + 32) = 0u;
          *(a4 + 48) = 0u;
          *a4 = 0u;
          *(a4 + 16) = 0u;
          sub_4160(v12, a4, 128, 0);
          return 0;
        }
      }

      else
      {
        v11 = sub_30608(v10, a3, 0);
        if (v11)
        {
          goto LABEL_7;
        }
      }

      return 14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_3051C(uint64_t a1, int *a2)
{
  v4 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v6 = v4 - 1;
    v7 = (v4 - 257) > 5;
    if (sub_295C(a1 + 24) < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      v9 = v7 | (0x16u >> v6);
      while (1)
      {
        result = sub_42C0(a1 + 24, v8);
        if (*a2 == *(result + 24))
        {
          if (v9)
          {
            break;
          }

          v10 = (*a2 & 0x100) != 0 ? *(result + 88) : 0;
          if (a2[2] == v10)
          {
            break;
          }
        }

        if (++v8 >= sub_295C(a1 + 24))
        {
          return 0;
        }
      }
    }
  }

  else
  {

    return sub_338B0(a1, a2, 0);
  }

  return result;
}

_DWORD *sub_30608(uint64_t a1, int *a2, int a3)
{
  v6 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v8 = (v6 - 257) > 5 || ((1 << (v6 - 1)) & 0x29) == 0;
    v9 = v8;
    v10 = v8 && (v6 & 0xFFFFFFFE) == 258;
    if (sub_295C(a1 + 24) >= 1)
    {
      for (i = 0; i < sub_295C(a1 + 24); ++i)
      {
        result = sub_42C0(a1 + 24, i);
        if (!a3 || result[8])
        {
          v12 = result[6];
          if (v9)
          {
            v13 = (v12 & 0xFFFFFFFE) == 0x102 && v10;
            if (v13 || v12 == v6)
            {
              return result;
            }
          }

          else
          {
            v14 = v12 - 257;
            v15 = v14 > 5;
            v16 = (1 << v14) & 0x29;
            v17 = v15 || v16 == 0;
            if (!v17 && a2[2] == result[22])
            {
              return result;
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {

    return sub_338B0(a1, a2, a3);
  }
}

uint64_t sub_30750(const char *a1, int *a2)
{
  v3 = *a2;
  result = 3;
  if (*a2 && v3 != 256 && v3 != 512)
  {
    v6 = sub_4220(a1, 0);
    if (v6)
    {
      v7 = v6;
      v8 = sub_3051C(v6, a2);
      if (v8)
      {

        return sub_307E0(v7, v8);
      }

      else
      {
        return 14;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_307E0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return 4;
  }

  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6, v7, v8, v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = nullsub_1(*(a1 + 8));
    v15 = sub_6160(*(a2 + 24));
    *v13 = 136315394;
    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    *(v13 + 14) = v15;
    __SC_log_send();
  }

  sub_13CE0(a1, *a2, (*(a2 + 24) >> 8) & 1);
  return 0;
}

uint64_t sub_30948(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  v26 = 0;
  v5 = sub_30B04(a1, v3, &v26);
  if (v5)
  {
    v6 = v5;
    v23 = 0;
    v7 = v26;
    v24 = sub_2430(*(*(v26 + 16) + 8));
    v25 = v8;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      v19 = nullsub_1(*(v6 + 8));
      v20 = sub_6160(*(v7 + 24));
      *v18 = 136315394;
      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      *(v18 + 14) = v20;
      __SC_log_send();
    }

    v21 = sub_8DB0(v7, 8, &v23);
  }

  else
  {
    v21 = 14;
  }

  CFRelease(v4);
  return v21;
}

uint64_t sub_30B04(const char *a1, const void *a2, uint64_t *a3)
{
  v5 = sub_4220(a1, 0);
  if (v5)
  {
    v6 = v5;
    v5 = sub_498C(v5, a2, 0);
    if (!v5)
    {
      v5 = sub_498C(v6, a2, 1);
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v5;
  return v7;
}

uint64_t sub_30B78(const char *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 5;
  }

  v4 = v3;
  if (sub_30B04(a1, v3, &v7))
  {
    v5 = 0;
  }

  else
  {
    v5 = 14;
  }

  CFRelease(v4);
  return v5;
}

uint64_t sub_30BE8(const char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v3 = sub_4220(a1, 0);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  if (!sub_73DC(*(v3 + 8)))
  {
    return 3;
  }

  sub_8D44(v4 + 24, 20, a2);
  sub_8D44(v4 + 56, 20, a2);
  return 0;
}

uint64_t sub_30C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8D44(a1 + 24, a2, a3);

  return sub_8D44(a1 + 56, a2, a3);
}

void **get_interface_list()
{
  result = qword_70198;
  if (!qword_70198)
  {
    result = sub_59608(0);
    qword_70198 = result;
  }

  return result;
}

CFStringRef sub_30CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_6160(*(a1 + 24));
  v3 = nullsub_1(*(v1 + 8));
  return CFStringCreateWithFormat(0, 0, @"com.apple.networking.IPConfiguration.%s.%s", v3, v2);
}

void *load(const void *a1)
{
  v2 = os_log_create("com.apple.IPConfiguration", "Server");
  sub_5B738(v2);
  qword_701A0 = CFRetain(a1);
  Current = CFRunLoopGetCurrent();
  sub_39960(Current);
  sub_CB80();
  if (&_wd_endpoint_add_queue)
  {
    wd_endpoint_add_queue();
  }

  v4 = sub_CB80();
  v5 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v4);
  qword_701C0 = v5;
  dispatch_source_set_event_handler(v5, &stru_68F98);
  dispatch_activate(v5);

  return sub_40554(sub_8D28);
}

void start()
{
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v54 = 0;
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

  v9 = sub_CB80();
  sub_5A138(v9, sub_31744);
  sub_31744();
  sub_31CC0();
  sub_3AD6C(dword_701A8 != 0);
  v60 = 0;
  if (qword_701A0)
  {
    InfoDictionary = CFBundleGetInfoDictionary(qword_701A0);
    if (InfoDictionary)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"IPConfiguration");
      TypeID = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          G_must_broadcast = sub_33F38(Value, @"MustBroadcast", 0);
          G_max_retries = sub_34090(Value, @"RetryCount", 9);
          G_gather_secs = sub_34090(Value, @"GatherTimeSeconds", 1);
          qword_700C8 = sub_341D0(Value, @"LinkInactiveWaitTimeSeconds", *&qword_700C8);
          G_initial_wait_secs = sub_34090(Value, @"InitialRetryTimeSeconds", 1);
          G_max_wait_secs = sub_34090(Value, @"MaximumRetryTimeSeconds", 8);
          dword_7008C = sub_34090(Value, @"ARPProbeCount", 3);
          dword_70090 = sub_34090(Value, @"ARPGratuitousCount", 2);
          qword_70098 = sub_341D0(Value, @"ARPRetryTimeSeconds", *&qword_70098);
          dword_700A0 = sub_34090(Value, @"ARPDetectCount", 6);
          qword_700A8 = sub_341D0(Value, @"ARPDetectRetryTimeSeconds", *&qword_700A8);
          dword_70310 = sub_33F38(Value, @"DHCPAcceptsBOOTP", 0);
          dword_70024 = sub_33F38(Value, @"DHCPFailureConfiguresLinkLocal", 1);
          dword_70028 = sub_33F38(Value, @"DHCPSuccessDeconfiguresLinkLocal", 1);
          dword_70038 = sub_34090(Value, @"DHCPInitRebootRetryCount", 2);
          dword_7003C = sub_34090(Value, @"DHCPSelectRetryCount", 3);
          dword_7002C = sub_34090(Value, @"DHCPAllocateLinkLocalAtRetryCount", 4);
          dword_70030 = sub_34090(Value, @"DHCPGenerateFailureSymptomAtRetryCount", 6);
          dword_70034 = sub_34090(Value, @"DHCPRouterARPAtRetryCount", 3);
          v13 = sub_34350(Value, @"DHCPRequestedParameterList", 1u, &v60);
          sub_24180(v13, v60);
          G_router_arp = sub_33F38(Value, @"RouterARPEnabled", 1);
          G_router_arp_wifi_lease_start_threshold_secs = sub_34090(Value, @"RouterARPWiFiLeaseStartThresholdSeconds", G_router_arp_wifi_lease_start_threshold_secs);
          dword_700D0 = sub_34090(Value, @"DHCPLocalHostNameLengthMax", 15);
          G_discover_and_publish_router_mac_address = sub_33F38(Value, @"DiscoverAndPublishRouterMACAddress", 1);
          dword_70080 = sub_34090(Value, @"DiscoverRouterMACAddressTimeSeconds", 60);
          dword_70084 = sub_34090(Value, @"DefendIPAddressIntervalSeconds", 10);
          dword_70088 = sub_34090(Value, @"DefendIPAddressCount", 5);
          dword_70040 = sub_34090(Value, @"DHCPLeaseWriteT1ThresholdSeconds", 3600);
          dword_700B0 = sub_34090(Value, @"ARPConflictRetryCount", 2);
          qword_700B8 = sub_341D0(Value, @"ARPConflictRetryDelaySeconds", *&qword_700B8);
          dword_70048 = sub_34090(Value, @"ManualConflictRetryIntervalSeconds", 300);
          dword_70074 = sub_34090(Value, @"MinimumShortWakeIntervalSeconds", 60);
          dword_70078 = sub_34090(Value, @"MinimumWakeIntervalSeconds", 900);
          dword_7007C = sub_34090(Value, @"WakeSkewSeconds", 30);
          dword_700C4 = sub_33F38(Value, @"ConfigureIPv6", 1);
          if (dword_700C4)
          {
            v59 = 0;
            G_dhcpv6_enabled = sub_33F38(Value, @"DHCPv6Enabled", 1);
            v14 = sub_34350(Value, @"DHCPv6RequestedOptions", 2u, &v59);
            sub_46AF8(v14, v59);
            G_dhcpv6_stateful_enabled = sub_33F38(Value, @"DHCPv6StatefulEnabled", 1);
          }

          dword_700C0 = sub_33F38(Value, @"DisableUnneededInterfaces", 1);
        }
      }
    }
  }

  v15 = SCPreferencesCreate(0, @"IPConfiguration.DHCPClient", @"DHCPClient.plist");
  v54 = v15;
  if (v15)
  {
    v16 = v15;
    if (SCPreferencesSetCallback(v15, sub_31E08, 0) && (v17 = sub_CB80(), SCPreferencesSetDispatchQueue(v16, v17)))
    {
      sub_31EF8(v16);
      SCPreferencesSynchronize(v16);
      qword_70188 = SCDynamicStoreCreate(0, @"IPConfiguration", sub_30B8, 0);
      if (!qword_70188)
      {
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          __chkstk_darwin(v18, v19, v20, v21, v22, v23, v24, v25);
          v26 = *__error();
          v27 = _os_log_pack_fill();
          v28 = SCError();
          v29 = SCErrorString(v28);
          *v27 = 136315138;
          *(v27 + 4) = v29;
          __SC_log_send();
        }
      }

      bootp_session_init(word_70020);
      *&v55 = &dword_7008C;
      *(&v55 + 1) = &dword_70090;
      *&v56 = &qword_70098;
      *(&v56 + 1) = &dword_700A0;
      *&v57 = &qword_700A8;
      *(&v57 + 1) = &dword_700B0;
      v58 = &qword_700B8;
      sub_22194(sub_31F5C, &v55);
      sub_592AC(qword_70160, sub_32020, 0);
      sub_32188();
      sub_37BA0();
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
        v40 = SCError();
        v41 = SCErrorString(v40);
        *v39 = 136315138;
        *(v39 + 4) = v41;
        __SC_log_send();
      }

      sub_41E8(&v54);
    }
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v42 = _os_log_pack_size();
      __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      v52 = SCError();
      v53 = SCErrorString(v52);
      *v51 = 136315138;
      *(v51 + 4) = v53;
      __SC_log_send();
    }
  }
}

void sub_31744()
{
  v0 = sub_5A270(0);
  if (G_IPConfiguration_verbose == v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  G_IPConfiguration_verbose = v0;
  sub_2424();
  _SC_syslog_os_log_mapping();
  v2 = __SC_log_enabled();
  if (v1)
  {
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else if (v2)
  {
LABEL_6:
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  v12 = v1 != 0;
  bootp_session_set_verbose(v12);
  DHCPv6SocketSetVerbose(v12);
  sub_42B68(v12);
LABEL_8:
  v13 = sub_5A2C0();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 2;
  }

  if (v14 != dword_7004C)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22);
      v23 = *__error();
      v24 = _os_log_pack_fill();
      v25 = sub_5A23C(v14);
      *v24 = 138412290;
      *(v24 + 4) = v25;
      __SC_log_send();
    }

    dword_7004C = v14;
  }

  v26 = sub_5A390(0);
  if (dword_701BC != v26)
  {
    v27 = v26;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = "";
      if (!v27)
      {
        v38 = "not ";
      }

      *v37 = 136315138;
      *(v37 + 4) = v38;
      __SC_log_send();
    }

    dword_701BC = v27;
  }

  v39 = sub_5A3E0(1);
  if (dword_701A8 != v39)
  {
    v40 = v39;
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v41 = _os_log_pack_size();
      __chkstk_darwin(v41, v42, v43, v44, v45, v46, v47, v48);
      v49 = *__error();
      v50 = _os_log_pack_fill();
      v51 = "expires";
      if (!v40)
      {
        v51 = "does not expire";
      }

      *v50 = 136315138;
      *(v50 + 4) = v51;
      __SC_log_send();
    }

    dword_701A8 = v40;
  }

  if (dword_70314)
  {
    G_dhcp_duid_type = 3;
  }

  else
  {
    if (os_variant_is_darwinos())
    {
      v52 = 4;
    }

    else
    {
      v52 = 1;
    }

    G_dhcp_duid_type = v52;
    v53 = sub_5A430();
    v54 = v53;
    if ((v53 - 3) < 2)
    {
      goto LABEL_35;
    }

    if (!v53)
    {
      goto LABEL_36;
    }

    if (v53 == 1)
    {
LABEL_35:
      G_dhcp_duid_type = v53;
      goto LABEL_36;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v55 = _os_log_pack_size();
      __chkstk_darwin(v55, v56, v57, v58, v59, v60, v61, v62);
      v63 = *__error();
      v64 = _os_log_pack_fill();
      *v64 = 136315394;
      *(v64 + 4) = "check_prefs";
      *(v64 + 12) = 1024;
      *(v64 + 14) = v54;
      __SC_log_send();
    }
  }

LABEL_36:
  sub_5A0F4();
}

uint64_t sub_31CC0()
{
  result = sub_59D78("/var/db/dhcpclient/leases", 0x1C0u);
  if ((result & 0x80000000) != 0)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3, v4, v5, v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      *v10 = 136315394;
      *(v10 + 4) = v12;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v13;
      return __SC_log_send();
    }
  }

  return result;
}

const __SCPreferences *sub_31E08(const __SCPreferences *result, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = result;
    sub_31EF8(result);
    SCPreferencesSynchronize(v2);
    result = sub_295C(qword_70160);
    if (result >= 1)
    {
      v3 = 0;
      do
      {
        v4 = sub_42C0(qword_70160, v3);
        v8 = 0uLL;
        *(&v8 + 4) = sub_2430(*(v4 + 8));
        HIDWORD(v8) = v5;
        if (sub_295C(v4 + 24) >= 1)
        {
          v6 = 0;
          do
          {
            v7 = sub_42C0(v4 + 24, v6);
            if (*(v7 + 25))
            {
              *(v7 + 116) &= ~4u;
            }

            sub_8DB0(v7, 8, &v8);
            ++v6;
          }

          while (v6 < sub_295C(v4 + 24));
        }

        ++v3;
        result = sub_295C(qword_70160);
      }

      while (v3 < result);
    }
  }

  return result;
}

void sub_31EF8(const __SCPreferences *a1)
{
  v5 = 0;
  v1 = sub_34500(a1);
  v4 = v1;
  if (v1)
  {
    v2 = sub_343D0(v1, 1u, &v5);
    sub_41E8(&v4);
    v3 = v5;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  sub_24320(v2, v3);
}

uint64_t sub_31F5C(uint64_t a1, int a2, const void *a3, int a4)
{
  if (sub_59428(qword_70198) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_59434(qword_70198, v7);
    if (sub_AD1C(v8) == a4 && sub_638C(v8) == a2)
    {
      v9 = sub_A840(v8);
      if (!bcmp(a3, v9, a4))
      {
        break;
      }
    }

    if (++v7 >= sub_59428(qword_70198))
    {
      return 0;
    }
  }

  return 1;
}

void sub_32020(uint64_t a1)
{
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = nullsub_1(*(a1 + 8));
    *v11 = 136315138;
    *(v11 + 4) = v12;
    __SC_log_send();
  }

  sub_2F45C(a1, 1);
  sub_2F4D0(a1, 1);
  sub_41E8((a1 + 16));
  sub_41E8((a1 + 144));
  sub_41E8((a1 + 96));
  *(a1 + 96) = 0;
  sub_596FC((a1 + 8));
  timer_callout_free((a1 + 112));
  free(a1);
}

void sub_32188()
{
  v0 = IOPMCopyScheduledPowerEvents();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      *&v3 = 138412290;
      v19 = v3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
        if (CFStringHasPrefix(Value, @"com.apple.networking.IPConfiguration"))
        {
          sub_2424();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v8 = _os_log_pack_size();
            v20 = &v19;
            __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
            v16 = *__error();
            v17 = _os_log_pack_fill();
            *v17 = v19;
            *(v17 + 4) = Value;
            __SC_log_send();
          }

          v18 = CFDictionaryGetValue(ValueAtIndex, @"time");
          IOPMCancelScheduledPowerEvent(v18, Value, @"wake");
        }

        ++v5;
      }

      while (v4 != v5);
    }

    CFRelease(v1);
  }
}

void prime()
{
  v0 = sub_CB80();

  dispatch_async(v0, &stru_68E30);
}

void sub_32390(id a1)
{
  v1 = qword_70188;
  if (!qword_70188)
  {
    sub_3509C();
    goto LABEL_22;
  }

  qword_701E0 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService);
  qword_701E8 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainState, kSCCompNetwork, kSCCompInterface);
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
  CFArrayAppendValue(v3, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v5 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv6);
  CFArrayAppendValue(v3, v5);
  CFRelease(v5);
  v6 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNet6to4);
  CFArrayAppendValue(v3, v6);
  CFRelease(v6);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
  CFArrayAppendValue(v3, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(v3, v8);
  CFRelease(v8);
  v9 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetLink);
  CFArrayAppendValue(v3, v9);
  CFRelease(v9);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetAirPort);
  CFArrayAppendValue(v3, v10);
  CFRelease(v10);
  v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetNAT64);
  CFArrayAppendValue(v3, v11);
  CFRelease(v11);
  v12 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetRefreshConfiguration);
  CFArrayAppendValue(v3, v12);
  CFRelease(v12);
  v13 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4ARPCollision);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringAppend(MutableCopy, @".*");
  CFRelease(v13);
  CFArrayAppendValue(v3, MutableCopy);
  CFRelease(MutableCopy);
  v15 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetInterfaceActiveDuringSleepRequested);
  CFArrayAppendValue(v3, v15);
  CFRelease(v15);
  v16 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
  CFArrayAppendValue(v3, v16);
  CFRelease(v16);
  v17 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6RouterExpired);
  CFArrayAppendValue(v3, v17);
  CFRelease(v17);
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  CFArrayAppendValue(Mutable, NetworkInterface);
  CFRelease(NetworkInterface);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFRelease(NetworkGlobalEntity);
  qword_701D0 = SCDynamicStoreKeyCreateComputerName(0);
  CFArrayAppendValue(Mutable, qword_701D0);
  qword_701D8 = SCDynamicStoreKeyCreateHostNames(0);
  CFArrayAppendValue(Mutable, qword_701D8);
  SCDynamicStoreSetNotificationKeys(v1, Mutable, v3);
  CFRelease(Mutable);
  CFRelease(v3);
  v20 = sub_CB80();
  SCDynamicStoreSetDispatchQueue(v1, v20);
  sub_347CC(v1);
  sub_3509C();
  v37 = 0;
  v38 = 0;
  thePortRef[0] = 0x2800000001;
  v39 = 4;
  sysctl(thePortRef, 2u, &v38, &v39, 0, 0);
  if (v38)
  {
    v21 = sub_598A0("IODeviceTree:/chosen");
    v37 = v21;
    if (v21)
    {
      v22 = v21;
      Value = CFDictionaryGetValue(v21, @"dhcp-response");
      TypeID = CFDataGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        v25 = 0;
        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(v22, @"bootp-response");
      v26 = CFDataGetTypeID();
      if (Value && CFGetTypeID(Value) == v26)
      {
        v25 = 1;
LABEL_11:
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(Value);
        v29 = *(BytePtr + 4);
        if (v29 || (v29 = *(BytePtr + 3)) != 0)
        {
          dword_70180 = v29;
          dword_70184 = *(BytePtr + 5);
          v30 = sub_59468(qword_70198, v29);
          if (v30)
          {
            v31 = v30;
            v32 = sub_2F404(v30);
            *v32 |= 0x10u;
            if ((v25 & 1) == 0)
            {
              thePortRef[0] = 0;
              thePortRef[1] = 0;
              sub_585E0(thePortRef, BytePtr, Length, 0);
              v33 = sub_58598(thePortRef, 54, 4);
              if (v33)
              {
                dword_70184 = *v33;
              }

              sub_58494(thePortRef);
            }

            nullsub_1(v31);
            __strlcpy_chk();
            dword_70314 = 1;
          }
        }
      }
    }
  }

  sub_41E8(&v37);
  sub_37DF0(v1);
  LODWORD(v39) = 0;
  thePortRef[0] = 0;
  v34 = IORegisterForSystemPower(0, thePortRef, sub_690C, &v39);
  if (v34)
  {
    v35 = thePortRef[0];
    v36 = sub_CB80();
    IONotificationPortSetDispatchQueue(v35, v36);
  }

  qword_70218 = thePortRef[0];
  dword_70200 = v34;
LABEL_22:
  sub_3D6E4();
  sub_CB80();
  os_state_add_handler();
}

void stop(uint64_t a1)
{
  v2 = sub_CB80();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_32AD8;
  block[3] = &unk_68E50;
  block[4] = a1;
  dispatch_async(v2, block);
}

void sub_32AD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_295C(qword_70160);
  if (v2 >= 1)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = sub_42C0(qword_70160, i);
      sub_8D44(v5 + 24, 12, 0);
      sub_8D44(v5 + 56, 12, 0);
    }
  }

  CFRunLoopSourceSignal(v1);
}

_DWORD *sub_32B7C(uint64_t a1)
{
  if (sub_295C(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = sub_42C0(a1, v2);
    if (v3[10])
    {
      v4 = v3;
      if (!v3[7])
      {
        if (sub_12330(v3))
        {
          break;
        }
      }
    }

    if (++v2 >= sub_295C(a1))
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_32BFC(__int128 *a1)
{
  v2 = malloc_type_malloc(0xB8uLL, 0x10E00405985B266uLL);
  v3 = v2;
  if (v2)
  {
    v2[22] = 0;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    v2[1] = sub_59740(a1);
    v4 = nullsub_1(a1);
    *(v3 + 16) = CFStringCreateWithCString(0, v4, 0x600u);
    sub_32E1C(v3);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, *(v3 + 16), kSCEntNetInterfaceActiveDuringSleepRequested);
    v6 = SCDynamicStoreCopyValue(qword_70188, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    if (v6)
    {
      *(v3 + 156) = 1;
      CFRelease(v6);
    }

    v7 = nullsub_1(a1);
    *(v3 + 112) = timer_callout_init(v7);
    *(v3 + 124) = dword_701B8;
    sub_592AC((v3 + 24), sub_13E90, 0);
    sub_592AC((v3 + 56), sub_13E90, 0);
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10, v11, v12, v13, v14, v15);
      v16 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  return v3;
}

void sub_32E1C(uint64_t a1)
{
  v2 = nullsub_1(*(a1 + 8));
  v3 = sub_43CC(*(a1 + 8));
  sub_2424();
  _SC_syslog_os_log_mapping();
  v4 = __SC_log_enabled();
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v15 = "up";
    if (!HIDWORD(v3))
    {
      v15 = "down";
    }

    *v14 = 136315394;
    *(v14 + 4) = v2;
    *(v14 + 12) = 2080;
    *(v14 + 14) = v15;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v16 = _os_log_pack_size();
    __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136315138;
    *(v25 + 4) = v2;
  }

  __SC_log_send();
LABEL_9:
  if (sub_73DC(*(a1 + 8)))
  {
    v26 = sub_73E8(*(a1 + 16));
    sub_33018(a1, v26);
    sub_41E8(&v26);
  }
}

void sub_33018(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    sub_41E8((a1 + 96));
    *(a1 + 96) = cf;
    *(a1 + 104) = sub_395CC(cf);
  }

  else
  {
    sub_41E8((a1 + 96));
    *(a1 + 96) = 0;
  }
}

void sub_33070(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = cf;
}

uint64_t sub_330B0(uint64_t *a1)
{
  result = sub_295C(a1);
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = sub_42C0(a1, v4);
      if (*(result + 32))
      {
        ++v4;
      }

      else
      {
        result = sub_13DB8(a1, v4);
        --v3;
      }
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t sub_33120(uint64_t a1)
{
  result = sub_295C(a1 + 56);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = sub_12E28(v3);
    if (v4 != 24 && v4 != 57)
    {
      v5 = nullsub_1(v3);
      sub_4195C(v5);
      v6 = nullsub_1(v3);
      sub_41660(v6);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *a1 &= ~0x10000u;
    }

    v7 = nullsub_1(v3);

    return sub_40F2C(v7);
  }

  return result;
}

uint64_t sub_331B4(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    return CFBooleanGetValue(Value);
  }

  return a3;
}

uint64_t sub_33210(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t sub_33288(uint64_t a1, const __CFBoolean *a2)
{
  v17 = 0;
  result = sub_407A4(a1, &v17);
  if (a2)
  {
    result = CFBooleanGetValue(a2);
    if (result)
    {
      LODWORD(a2) = 1;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  if (v17 != a2)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      if (v17 > 2)
      {
        v15 = "<unknown>";
      }

      else
      {
        v15 = off_68F40[v17];
      }

      v16 = off_68F40[a2];
      *v14 = 136315650;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2080;
      *(v14 + 24) = v16;
      __SC_log_send();
    }

    return sub_406DC(a1, a2);
  }

  return result;
}

_DWORD *sub_3341C(_DWORD *result, uint64_t a2)
{
  v2 = result[8];
  *(a2 + 32) = 1;
  *(a2 + 36) = v2;
  if ((*(a2 + 25) & 2) != 0)
  {
    *(a2 + 128) = result[9];
    if (result[10])
    {
      *(a2 + 124) = 1;
    }
  }

  return result;
}

void sub_3344C(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = sub_CB80();
  v5 = dispatch_source_create(&_dispatch_source_type_proc, v3, 0x80000000uLL, v4);
  if (v5)
  {
    v6 = v5;
    CFRetain(*a1);
    dispatch_set_context(v6, *a1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_335F0;
    handler[3] = &unk_68F58;
    handler[4] = v6;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    *(a1 + 64) = v6;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }
}

uint64_t sub_335F8(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  sub_2424();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 67109120;
    v12[1] = handle;
    __SC_log_send();
  }

  context = dispatch_get_context(a1);
  result = sub_303E8(0, context);
  if (result)
  {
    v15 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18, v19, v20, v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      v26 = off_68E70[v15];
      *v25 = 138412546;
      *(v25 + 4) = context;
      *(v25 + 12) = 2080;
      *(v25 + 14) = v26;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_337FC(const void *a1, CFTypeRef **a2, int a3)
{
  if (sub_295C(qword_70160) < 1)
  {
LABEL_5:
    v8 = 0;
    v7 = 0;
    v9 = 0;
    if (!a2)
    {
      return v9;
    }

LABEL_6:
    *a2 = v8;
    return v7;
  }

  v6 = 0;
  while (1)
  {
    v7 = sub_42C0(qword_70160, v6);
    v8 = sub_498C(v7, a1, a3);
    if (v8)
    {
      break;
    }

    if (++v6 >= sub_295C(qword_70160))
    {
      goto LABEL_5;
    }
  }

  v9 = v7;
  if (a2)
  {
    goto LABEL_6;
  }

  return v9;
}

uint64_t sub_338B0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_295C(a1 + 56) < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    result = sub_42C0(a1 + 56, v6);
    if (!a3 || *(result + 32))
    {
      v8 = *(result + 24);
      if (v8 == *a2)
      {
        if (v8 != 513)
        {
          break;
        }

        if (*(a2 + 8) == *result && *(a2 + 16) == *(result + 8))
        {
          break;
        }
      }
    }

    if (++v6 >= sub_295C(a1 + 56))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_33950(const void *a1, int *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodBOOTP))
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
      v14 = 259;
LABEL_9:
      *a2 = v14;
      return 1;
    }

LABEL_8:
    v14 = 259;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodDHCP))
  {
    goto LABEL_8;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodManual))
  {
    v14 = 257;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodINFORM))
  {
    v14 = 260;
    goto LABEL_9;
  }

  if (CFEqual(a1, kSCValNetIPv4ConfigMethodLinkLocal))
  {
    v14 = 261;
    goto LABEL_9;
  }

  result = CFEqual(a1, kSCValNetIPv4ConfigMethodFailover);
  if (result)
  {
    v14 = 262;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_33B40(const __CFDictionary *a1, const void *a2, in_addr *a3)
{
  a3->s_addr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v6 = result;
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v6) != TypeID)
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!CFArrayGetCount(v6))
    {
      sub_2424();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    if (sub_575A4(ValueAtIndex, a3))
    {
      return 1;
    }

    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
LABEL_11:
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11, v12, v13, v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 138412290;
      *(v18 + 4) = a2;
      __SC_log_send();
      return 0;
    }
  }

  return result;
}

uint64_t sub_33DA4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v17 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  LODWORD(v18[0]) = 261;
  DWORD2(v18[0]) = a2;
  result = sub_2F544(v2, 0, v18, a1, 0, &v17);
  if (result)
  {
    v4 = result;
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = nullsub_1(*(v2 + 8));
      if (v4 <= 0x15)
      {
        v16 = off_68E70[v4];
      }

      else
      {
        v16 = "<unknown>";
      }

      *v14 = 136315394;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v16;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_33F38(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v4 = sub_331B4(a1, a2, a3);
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = "false";
      if (v4 == 1)
      {
        v15 = "true";
      }

      *v14 = 138412546;
      *(v14 + 4) = a2;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v15;
      __SC_log_send();
    }
  }

  return v4;
}

uint64_t sub_34090(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v4 = sub_33210(a1, a2, a3);
  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7, v8, v9, v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 138412546;
      *(v14 + 4) = a2;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v4;
      __SC_log_send();
    }
  }

  return v4;
}

double sub_341D0(const __CFDictionary *a1, const void *a2, double a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      valuePtr = 0.0;
      if (CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr) == 1)
      {
        a3 = valuePtr;
      }
    }
  }

  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 138412546;
      *(v16 + 4) = a2;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a3;
      __SC_log_send();
    }
  }

  return a3;
}

void *sub_34350(const __CFDictionary *a1, const void *a2, unsigned int a3, _DWORD *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return sub_343D0(Value, a3, a4);
}

void *sub_343D0(const __CFArray *a1, unsigned int a2, _DWORD *a3)
{
  Count = CFArrayGetCount(a1);
  if (Count && (v7 = Count, (v8 = malloc_type_malloc(Count * a2, 0xB69BA314uLL)) != 0))
  {
    v9 = v8;
    if (v7 <= 0)
    {
      *a3 = 0;
LABEL_17:
      free(v9);
      return 0;
    }

    v16 = a3;
    v10 = 0;
    v11 = 0;
    v12 = v8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      TypeID = CFNumberGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == TypeID)
        {
          valuePtr = 0;
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            if (a2 == 1)
            {
              *v12 = valuePtr;
            }

            else
            {
              *v12 = valuePtr;
            }

            ++v11;
            v12 += a2;
          }
        }
      }

      ++v10;
    }

    while (v7 != v10);
    *v16 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    *a3 = 0;
  }

  return v9;
}

CFMutableArrayRef sub_34500(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"Application");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (G_IPConfiguration_verbose)
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 138412290;
      *(v12 + 4) = Value;
      __SC_log_send();
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    CFDictionaryApplyFunction(Value, sub_3469C, Mutable);
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void sub_3469C(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      Value = CFDictionaryGetValue(a2, @"DHCPRequestedParameterList");
      v7 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v7)
        {
          v8.length = CFArrayGetCount(Value);
          v8.location = 0;

          CFArrayApplyFunction(Value, v8, sub_3475C, a3);
        }
      }
    }
  }
}

void sub_3475C(const void *a1, const __CFArray *a2)
{
  TypeID = CFNumberGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {

    sub_57964(a2, a1);
  }
}

void sub_347CC(SCDynamicStoreRef store)
{
  v5 = 0;
  if (store)
  {
    if (qword_70150)
    {
      free(qword_70150);
      qword_70150 = 0;
    }

    if (qword_70158)
    {
      free(qword_70158);
      qword_70158 = 0;
    }

    nameEncoding = 0;
    cf = SCDynamicStoreCopyComputerName(store, &nameEncoding);
    if (cf && _SC_CFStringIsValidDNSName())
    {
      v2 = CFRetain(cf);
    }

    else
    {
      sub_41E8(&cf);
      cf = SCDynamicStoreCopyLocalHostName(store);
      if (!cf || !_SC_CFStringIsValidDNSName())
      {
LABEL_15:
        sub_41E8(&v5);
        sub_41E8(&cf);
        return;
      }

      v2 = sub_57E6C(cf, dword_700D0);
    }

    v5 = v2;
    if (v2)
    {
      qword_70150 = sub_57C28(v2, 0x8000100u);
    }

    qword_70158 = sub_57C28(cf, 0x8000100u);
    goto LABEL_15;
  }
}

void sub_348C4(const __CFString *a1)
{
  v25 = 0;
  if (CFStringHasPrefix(a1, qword_701E8))
  {
    v2 = sub_40EC(a1, @"/", 3);
    v26 = v2;
    if (v2)
    {
      v3 = sub_13518(v2);
      sub_41E8(&v26);
      if (v3)
      {
        if ((*v3 & 0x10) == 0)
        {
          v4 = qword_70198;
          v5 = nullsub_1(*(v3 + 8));
          v6 = sub_4348(v4, v5);
          if (v6)
          {
            v7 = v6;
            v8 = sub_43CC(v6);
            if (sub_73DC(*(v3 + 8)))
            {
              if (HIDWORD(v8) || v8 == 0)
              {
                v10 = *(v3 + 8);
                if (!*(v10 + 80) || *(v10 + 84))
                {
                  v11 = sub_73E8(*(v3 + 16));
                  v25 = v11;
                  if (sub_395D4(*(v3 + 96), v11) == 3)
                  {
                    if (!sub_13304(v7))
                    {
                      sub_2424();
                      _SC_syslog_os_log_mapping();
                      if (__SC_log_enabled())
                      {
                        v12 = _os_log_pack_size();
                        __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
                        v20 = *__error();
                        v21 = _os_log_pack_fill();
                        v22 = nullsub_1(v7);
                        *v21 = 136315138;
                        *(v21 + 4) = v22;
                        __SC_log_send();
                      }
                    }

                    sub_33018(v3, v11);
                    if (sub_295C(v3 + 24))
                    {
                      v23 = 0;
                      do
                      {
                        v24 = sub_42C0(v3 + 24, v23);
                        if (*(v24 + 25))
                        {
                          *(v24 + 116) &= ~4u;
                        }

                        sub_8DB0(v24, 16, 0);
                        ++v23;
                      }

                      while (v23 < sub_295C(v3 + 24));
                    }

                    sub_8D44(v3 + 56, 16, 0);
                  }
                }
              }
            }
          }
        }
      }

      sub_41E8(&v25);
    }
  }
}

void sub_34B38(const __SCDynamicStore *a1, CFStringRef theString)
{
  if (CFStringHasPrefix(theString, qword_701E8))
  {
    v4 = sub_40EC(theString, @"/", 3);
    v37 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = sub_13518(v4);
      if (v6)
      {
        v7 = v6;
        v8 = nullsub_1(*(v6 + 8));
        v9 = sub_41AFC(v8);
        v36 = v9;
        v10 = *v7;
        if (v9)
        {
          v11 = v10 | 0x100000;
        }

        else
        {
          *v7 = v10 & 0xFFEFFFFF;
          v23 = sub_42EC(a1, theString);
          if (!v23 || (v24 = v23, v25 = CFDictionaryContainsKey(v23, kSCPropNetNAT64PLATDiscoveryCompletionTime), CFRelease(v24), !v25))
          {
            sub_2424();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v26 = _os_log_pack_size();
              __chkstk_darwin(v26, v27, v28, v29, v30, v31, v32, v33);
              v34 = *__error();
              v35 = _os_log_pack_fill();
              *v35 = 138412290;
              *(v35 + 4) = v5;
              __SC_log_send();
            }

            goto LABEL_11;
          }

          v11 = *v7;
        }

        *v7 = v11 | 0x80000;
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v12 = _os_log_pack_size();
          __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19);
          v20 = *__error();
          v21 = _os_log_pack_fill();
          v22 = "";
          if (!v9)
          {
            v22 = "no ";
          }

          *v21 = 138412546;
          *(v21 + 4) = v5;
          *(v21 + 12) = 2080;
          *(v21 + 14) = v22;
          __SC_log_send();
        }

        sub_8D44((v7 + 14), 19, &v36);
      }

LABEL_11:
      sub_41E8(&v37);
    }
  }
}

void sub_34DEC(const __CFString *a1)
{
  if (CFStringHasPrefix(a1, qword_701E8))
  {
    v2 = sub_40EC(a1, @"/", 3);
    v20 = v2;
    if (v2)
    {
      v3 = v2;
      v4 = sub_13518(v2);
      if (v4)
      {
        v5 = v4;
        v19 = 0;
        v6 = sub_144D8(*(v4 + 8));
        HIDWORD(v19) = sub_4201C(v6, &v19);
        sub_2424();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14);
          v15 = *__error();
          v16 = _os_log_pack_fill();
          v18 = v19;
          v17 = HIDWORD(v19);
          *v16 = 138412802;
          *(v16 + 4) = v3;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v17;
          *(v16 + 18) = 1024;
          *(v16 + 20) = v18;
          __SC_log_send();
        }

        sub_8D44(v5 + 56, 18, &v19);
      }

      sub_41E8(&v20);
    }
  }
}

void sub_34F88(const __SCDynamicStore *a1, CFStringRef theString)
{
  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v10 = 0;
  v8.s_addr = 0;
  v3 = sub_43898(theString, &v8, &v11, &v10);
  v9 = v3;
  v4 = v11;
  if (v3 && v11)
  {
    v5 = sub_13518(v3);
    if (v5)
    {
      v6 = v5;
      if ((*v5 & 0x10) == 0)
      {
        v7 = sub_638C(*(v5 + 8));
        if (!sub_31F5C(v7, v7, v11, v10))
        {
          v13 = 0u;
          v14[0] = 0;
          *&v12 = v8.s_addr;
          *(&v12 + 1) = v11;
          LODWORD(v13) = v10;
          DWORD1(v13) = sub_3786C(a1, *(v6 + 16), v11, v10, &v13 + 2, v14);
          sub_8D44(v6 + 24, 9, &v12);
          sub_41E8(v14);
        }
      }
    }

    v4 = v11;
  }

  if (v4)
  {
    free(v4);
  }

  sub_41E8(&v9);
}

uint64_t sub_3509C()
{
  v0 = sub_59608(qword_70198);
  if (v0)
  {
    v1 = v0;
    if (qword_70198)
    {
      sub_59668(&qword_70198);
    }

    qword_70198 = v1;
    return 1;
  }

  else
  {
    sub_2424();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5, v6, v7, v8, v9, v10);
      v11 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      return 0;
    }
  }

  return result;
}

void sub_351D4()
{
  v0 = sub_295C(qword_70160);
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = malloc_type_malloc(8 * v0, 0x10040436913F5uLL);
  if (!v2)
  {
    return;
  }

  v4 = v2;
  if (v1 < 1)
  {
    goto LABEL_16;
  }

  v5 = 0;
  v6 = 0;
  v7 = qword_70160;
  v8 = &off_70000;
  *&v3 = 136315650;
  v37 = v3;
  v38 = v2;
  do
  {
    v9 = sub_42C0(v7, v6);
    v10 = v8[51];
    v11 = nullsub_1(*(v9 + 8));
    v12 = sub_4348(v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = sub_144D8(v12);
      if (v14 == sub_144D8(*(v9 + 8)))
      {
        goto LABEL_10;
      }

      v15 = sub_2424();
      v16 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        v41 = &v37;
        __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = nullsub_1(v13);
        v40 = v16;
        v28 = v7;
        v29 = v27;
        v30 = sub_144D8(*(v9 + 8));
        v39 = v15;
        v31 = v1;
        v32 = v30;
        v33 = sub_144D8(v13);
        *v26 = v37;
        *(v26 + 4) = v29;
        v7 = v28;
        *(v26 + 12) = 1024;
        *(v26 + 14) = v32;
        v1 = v31;
        *(v26 + 18) = 1024;
        *(v26 + 20) = v33;
        v4 = v38;
        v8 = &off_70000;
        __SC_log_send();
      }
    }

    v4[v5++] = nullsub_1(*(v9 + 8));
LABEL_10:
    ++v6;
  }

  while (v1 != v6);
  if (v5 >= 1)
  {
    v34 = v5;
    v35 = v4;
    do
    {
      v36 = *v35;
      v42 = -1;
      if (sub_4220(v36, &v42))
      {
        sub_13DB8(qword_70160, v42);
      }

      ++v35;
      --v34;
    }

    while (v34);
  }

LABEL_16:
  free(v4);
}

__CFArray *sub_3545C(const __SCDynamicStore *a1, __CFArray **a2)
{
  v75 = 0;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v76 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v4 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v79 = v4;
  v78 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
  CFArrayAppendValue(v76, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v6 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv6);
  CFArrayAppendValue(v76, v6);
  CFRelease(v6);
  v7 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNet6to4);
  CFArrayAppendValue(v76, v7);
  CFRelease(v7);
  v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(v76, v8);
  CFRelease(v8);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
  CFArrayAppendValue(v76, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  v74 = NetworkGlobalEntity;
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  v11 = SCDynamicStoreCopyMultiple(a1, Mutable, v76);
  v73 = v11;
  if (!v11)
  {
    goto LABEL_68;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(v11, NetworkGlobalEntity);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Value = CFDictionaryGetValue(Value, kSCPropNetServiceOrder);
      v15 = CFArrayGetTypeID();
      if (!Value)
      {
        goto LABEL_10;
      }

      if (CFGetTypeID(Value) == v15)
      {
        if (!CFArrayGetCount(Value))
        {
          Value = 0;
        }

        goto LABEL_10;
      }
    }

    Value = 0;
  }

LABEL_10:
  Count = CFDictionaryGetCount(v12);
  if (Count)
  {
    v17 = Count;
    v72 = Value;
    v71 = a2;
    v18 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    valuePtr = v18;
    v19 = malloc_type_malloc(8 * v17, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(v12, v19, 0);
    if (v17 >= 1)
    {
      v20 = v19;
      do
      {
        if (CFStringHasPrefix(*v20, qword_701E0))
        {
          v21 = sub_40EC(*v20, @"/", 3);
          if (v21)
          {
            v22 = v21;
            sub_57964(v18, v21);
            CFRelease(v22);
          }
        }

        ++v20;
        --v17;
      }

      while (v17);
    }

    free(v19);
    v23 = CFArrayGetCount(v18);
    if (v23)
    {
      if (v72)
      {
        v81.length = v23;
        v81.location = 0;
        CFArraySortValues(v18, v81, sub_35ED4, v72);
      }
    }

    else
    {
      sub_41E8(&valuePtr);
      v18 = valuePtr;
    }

    v75 = v18;
    if (v18)
    {
      v24 = CFArrayGetCount(v18);
      if (v24 >= 1)
      {
        v25 = v24;
        v26 = 0;
        v67 = kSCValNetInterfaceTypeLoopback;
        v27 = kSCEntNetInterface;
        v70 = v18;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v26);
          v29 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, v27);
          v30 = CFDictionaryGetValue(v12, v29);
          CFRelease(v29);
          v31 = CFDictionaryGetTypeID();
          if (v30 && CFGetTypeID(v30) == v31)
          {
            v32 = CFDictionaryGetValue(v30, kSCPropNetInterfaceType);
            v33 = CFStringGetTypeID();
            if (v32 && CFGetTypeID(v32) == v33)
            {
              v34 = CFDictionaryGetValue(v30, kSCPropNetInterfaceDeviceName);
              v35 = CFStringGetTypeID();
              if (v34 && CFGetTypeID(v34) == v35)
              {
                v69 = v34;
                v36 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v34, 0);
                v37 = CFDictionaryGetValue(v12, v36);
                CFRelease(v36);
                v38 = CFDictionaryGetTypeID();
                if (v37 && CFGetTypeID(v37) == v38 && (v39 = CFDictionaryGetValue(v37, @"DisableUntilNeeded"), v40 = CFNumberGetTypeID(), v39) && CFGetTypeID(v39) == v40)
                {
                  LODWORD(valuePtr) = 0;
                  v41 = CFNumberGetValue(v39, kCFNumberIntType, &valuePtr);
                  v42 = kCFBooleanFalse;
                  if (valuePtr)
                  {
                    v42 = kCFBooleanTrue;
                  }

                  if (!v41)
                  {
                    v42 = 0;
                  }

                  v68 = v42;
                }

                else
                {
                  v68 = 0;
                }

                v12 = v73;
                if (CFEqual(v32, kSCValNetInterfaceTypeEthernet) || CFEqual(v32, kSCValNetInterfaceTypeFireWire) || CFEqual(v32, v67))
                {
                  v53 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv4);
                  v54 = CFDictionaryGetValue(v73, v53);
                  CFRelease(v53);
                  v55 = CFDictionaryGetTypeID();
                  if (v54)
                  {
                    if (CFGetTypeID(v54) == v55)
                    {
                      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v54);
                      CFDictionarySetValue(MutableCopy, kSCPropNetInterfaceDeviceName, v69);
                      CFDictionarySetValue(MutableCopy, @"ServiceID", ValueAtIndex);
                      if (v68)
                      {
                        CFDictionarySetValue(MutableCopy, @"_DisableUntilNeeded", v68);
                      }

                      if (MutableCopy)
                      {
                        CFArrayAppendValue(v79, MutableCopy);
                        CFRelease(MutableCopy);
                      }
                    }
                  }
                }

                if (CFEqual(v32, kSCValNetInterfaceTypeEthernet) || CFEqual(v32, kSCValNetInterfaceTypeFireWire) || CFEqual(v32, kSCValNetInterfaceType6to4) || CFEqual(v32, v67))
                {
                  v57 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv6);
                  v58 = CFDictionaryGetValue(v73, v57);
                  CFRelease(v57);
                  v59 = CFDictionaryGetTypeID();
                  if (v58)
                  {
                    if (CFGetTypeID(v58) == v59)
                    {
                      v60 = CFDictionaryCreateMutableCopy(0, 0, v58);
                      CFDictionarySetValue(v60, kSCPropNetInterfaceDeviceName, v69);
                      CFDictionarySetValue(v60, @"ServiceID", ValueAtIndex);
                      v61 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNet6to4);
                      v62 = CFDictionaryGetValue(v73, v61);
                      CFRelease(v61);
                      if (v68)
                      {
                        CFDictionarySetValue(v60, @"_DisableUntilNeeded", v68);
                      }

                      v63 = CFDictionaryGetTypeID();
                      if (v62)
                      {
                        if (CFGetTypeID(v62) == v63)
                        {
                          v64 = CFDictionaryGetValue(v62, kSCPropNet6to4Relay);
                          if (v64)
                          {
                            CFDictionarySetValue(v60, @"6to4Relay", v64);
                          }
                        }
                      }

                      if (v60)
                      {
                        CFArrayAppendValue(v78, v60);
                        CFRelease(v60);
                      }
                    }
                  }
                }
              }
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
                *v52 = 138412290;
                *(v52 + 4) = v30;
                v27 = kSCEntNetInterface;
                __SC_log_send();
                v18 = v70;
              }
            }
          }

          ++v26;
        }

        while (v25 != v26);
        v4 = v79;
        a2 = v71;
      }
    }
  }

  else
  {
    v75 = 0;
  }

LABEL_68:
  sub_41E8(&v73);
  sub_41E8(&v74);
  sub_41E8(&Mutable);
  sub_41E8(&v76);
  sub_41E8(&v75);
  if (v4 && !CFArrayGetCount(v4))
  {
    sub_41E8(&v79);
  }

  v65 = v78;
  if (v78 && !CFArrayGetCount(v78))
  {
    sub_41E8(&v78);
    v65 = v78;
  }

  *a2 = v65;
  return v79;
}