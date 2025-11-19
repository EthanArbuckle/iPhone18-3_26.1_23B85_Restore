void sub_1000008C8()
{
  v0 = qword_10001CD18;
  if (*(qword_10001CD18 + 8) < 1)
  {
    goto LABEL_22;
  }

  v1 = 0;
  v2 = 0;
  do
  {
    v3 = *v0 + 104 * v1;
    if (!sub_10000D1CC(qword_10001CD20) || (v4 = nullsub_1(v3), sub_100000AF0(v4)))
    {
      if (sub_10000CAD0(v3) && (sub_10000CA6C(v3) & 8) == 0)
      {
        v11 = v2;
        if (sub_10000CA74(v3) >= 1)
        {
          v5 = 0;
          do
          {
            v6 = sub_10000CA7C(v3, v5);
            v7.s_addr = *v6;
            inet_ntoa(v7);
            __strlcpy_chk();
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              v8 = nullsub_1(v3);
              v9.s_addr = v6[1];
              v10 = inet_ntoa(v9);
              *buf = 136315650;
              v13 = v8;
              v14 = 2080;
              v15 = v18;
              v16 = 2080;
              v17 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "interface %s: ip %s mask %s", buf, 0x20u);
            }

            v5 = (v5 + 1);
          }

          while (v5 < sub_10000CA74(v3));
        }

        v2 = v11 + 1;
      }
    }

    ++v1;
    v0 = qword_10001CD18;
  }

  while (v1 < *(qword_10001CD18 + 8));
  if (!v2)
  {
LABEL_22:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "no available interfaces", v18, 2u);
    }

    if ((byte_10001CD30 & 1) == 0)
    {
      exit(2);
    }
  }
}

uint64_t sub_100000AF0(const char *a1)
{
  if (sub_10000D1CC(&unk_10001CD20) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = sub_10000D1E8(&unk_10001CD20, v2);
    if (!strcmp(a1, v3))
    {
      break;
    }

    if (++v2 >= sub_10000D1CC(&unk_10001CD20))
    {
      return 0;
    }
  }

  return 1;
}

void sub_100000B74()
{
  v0 = sub_10000C290(qword_10001CD18);
  if (!v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "interface list initialization failed", v2, 2u);
    }

    exit(1);
  }

  v1 = v0;
  sub_10000C9E8(&qword_10001CD18);
  qword_10001CD18 = v1;
}

void sub_100000C08()
{
  v0 = inetroute_list_init();
  if (!v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v3) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "can't get inetroutes list", &v3, 2u);
    }

    exit(1);
  }

  v1 = v0;
  inetroute_list_free(&qword_10001CD38);
  qword_10001CD38 = v1;
  if (byte_10001C208 == 1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    inetroute_list_print_cfstr(Mutable, qword_10001CD38);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v3 = 138412290;
      v4 = Mutable;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Routes:\n%@", &v3, 0xCu);
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_100000D88(uint64_t result)
{
  if (result | dword_10001D7F8)
  {
    v1 = result;
    SCDynamicStoreRemoveValue(qword_10001D7F0, @"com.apple.bootpd.DHCPServer");
    if (v1)
    {
      v2 = qword_10001CD18;
      if (*(qword_10001CD18 + 8) >= 1)
      {
        v3 = 0;
        v4 = 0;
        Mutable = 0;
        do
        {
          v6 = *v2 + v3;
          if ((*(v6 + 76) & 0x80000000) != 0)
          {
            v7 = nullsub_1(v6);
            v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
            if (v8)
            {
              v9 = v8;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              }

              CFArrayAppendValue(Mutable, v9);
              CFRelease(v9);
            }
          }

          ++v4;
          v2 = qword_10001CD18;
          v3 += 104;
        }

        while (v4 < *(qword_10001CD18 + 8));
        values = Mutable;
        if (Mutable)
        {
          v11 = @"DisabledInterfaces";
          v10 = CFDictionaryCreate(0, &v11, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFRelease(values);
          SCDynamicStoreAddTemporaryValue(qword_10001D7F0, @"com.apple.bootpd.DHCPServer", v10);
          CFRelease(v10);
        }
      }
    }

    result = notify_post("com.apple.bootpd.DHCPDisabledInterfaces");
    dword_10001D7F8 = v1;
  }

  return result;
}

void sub_100000F04(const __CFDictionary *a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      if ((sub_100008A7C(Value, a4) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid '%s' property", &v7, 0xCu);
      }
    }
  }
}

void start(int a1, char *const *a2)
{
  v39.s_addr = 0;
  byte_10001C208 = 0;
  byte_10001C510 = 0;
  sub_10000D194(qword_10001CD20);
  sub_100000B74();
  v4 = getopt(a1, a2, "aBbc:Ddf:hHi:Io:Pp:qr:St:v");
  v5 = 0;
  v6 = 0;
  if (v4 != -1)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (v4 > 103)
      {
        if (v4 <= 112)
        {
          if (v4 <= 110)
          {
            if (v4 == 105)
            {
              if (sub_100000AF0(optarg))
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                {
                  buf.st_dev = 136315138;
                  *&buf.st_mode = optarg;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "interface %s already specified", &buf, 0xCu);
                }
              }

              else
              {
                sub_10000D294(qword_10001CD20, optarg);
              }
            }

            else if (v4 == 104)
            {
LABEL_91:
              sub_100000FC0();
            }
          }

          else if (v4 == 111)
          {
            v9 = atoi(optarg);
            if ((v9 - 17) <= 0xFFFFFFEF)
            {
              printf("max hops value %s must be in the range 1..16\n");
              goto LABEL_103;
            }

            dword_10001C0A0 = v9;
          }

          else
          {
            word_10001C084 = strtoul(optarg, 0, 0);
            printf("Priority set to %d\n", word_10001C084);
          }
        }

        else if (v4 > 115)
        {
          if (v4 == 116)
          {
            off_10001C088 = optarg;
          }

          else if (v4 == 118)
          {
            byte_10001CD4C = 1;
          }
        }

        else if (v4 == 113)
        {
          dword_10001C200 = 1;
        }

        else if (v4 == 114)
        {
          dword_10001CD44 |= 0x10u;
          if (!inet_aton(optarg, &v39) || v39.s_addr + 1 <= 1)
          {
            printf("Invalid relay server ip address %s\n");
            goto LABEL_103;
          }

          if (sub_10000C158(qword_10001CD18, v39.s_addr))
          {
            printf("Relay server ip address %s specifies this host\n");
            goto LABEL_103;
          }

          sub_100001A44(v39.s_addr);
        }

        goto LABEL_48;
      }

      if (v4 <= 82)
      {
        if (v4 > 72)
        {
          if (v4 == 73)
          {
            v7 = 0;
          }

          else if (v4 == 80)
          {
            byte_10001CD30 = 1;
          }

          goto LABEL_48;
        }

        if (v4 != 68)
        {
          if (v4 == 72)
          {
            goto LABEL_91;
          }

          goto LABEL_48;
        }

        v8 = dword_10001CD44 | 2;
      }

      else
      {
        if (v4 > 99)
        {
          if (v4 == 100)
          {
            v6 = 1;
          }

          else if (v4 == 102)
          {
            off_10001C098 = optarg;
          }

          goto LABEL_48;
        }

        if (v4 != 83)
        {
          if (v4 == 98)
          {
            byte_10001CD48 = 1;
          }

          goto LABEL_48;
        }

        v8 = dword_10001CD44 | 1;
      }

      dword_10001CD44 = v8;
LABEL_48:
      v4 = getopt(a1, a2, "aBbc:Ddf:hHi:Io:Pp:qr:St:v");
      if (v4 == -1)
      {
        v5 = v7 == 0;
        break;
      }
    }
  }

  memset(&buf, 0, sizeof(buf));
  if (fstat(0, &buf) < 0 || (HIDWORD(v10) = (buf.st_mode & 0xF000) - 0x2000, LODWORD(v10) = HIDWORD(v10), (v10 >> 13) <= 4))
  {
    *&buf.st_dev = xmmword_1000124E0;
    if ((v6 & 1) == 0)
    {
      if (fork())
      {
        exit(0);
      }

      for (i = 0; i != 10; ++i)
      {
        close(i);
      }

      open("/", 0);
      dup2(0, 1);
      dup2(0, 2);
      v16 = open("/dev/tty", 2);
      if (v16 >= 1)
      {
        v17 = v16;
        ioctl(v16, 0x20007471uLL, 0);
        close(v17);
      }
    }

    v11 = socket(2, 2, 0);
    dword_10001C080 = v11;
    if (v11 < 0)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_103;
      }

      *v37 = 0;
      v12 = "socket call failed";
      goto LABEL_56;
    }

    HIWORD(buf.st_dev) = 17152;
    *&buf.st_mode = 0;
    if (bind(v11, &buf, 0x10u) < 0)
    {
      v18 = 10;
      while (1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v19 = __error();
          v20 = strerror(*v19);
          *v37 = 136315138;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "bind call failed: %s", v37, 0xCu);
        }

        if (*__error() != 48)
        {
          goto LABEL_103;
        }

        if (!--v18)
        {
          break;
        }

        sleep(0xAu);
        if ((bind(dword_10001C080, &buf, 0x10u) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *v37 = 0;
        v12 = "exiting";
LABEL_56:
        p_buf = v37;
        v14 = OS_LOG_TYPE_INFO;
LABEL_97:
        v28 = 2;
LABEL_98:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, v12, p_buf, v28);
      }

LABEL_103:
      exit(1);
    }
  }

  else
  {
    dword_10001C080 = 0;
    gettimeofday(&qword_10001CD50, 0);
    if ((byte_10001CD30 & 1) == 0)
    {
      v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      dispatch_source_set_event_handler(v21, &stru_1000185F0);
      v22 = dispatch_time(0, 15000000000);
      dispatch_source_set_timer(v21, v22, 0x37E11D600uLL, 0);
      dispatch_resume(v21);
    }
  }

LABEL_72:
  v23 = fopen("/var/run/bootpd.pid", "w");
  if (v23)
  {
    v24 = v23;
    v25 = getpid();
    fprintf(v24, "%d\n", v25);
    fclose(v24);
  }

  if (v6)
  {
    byte_10001CD60 = 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "server starting", &buf, 2u);
  }

  *v37 = 1;
  if (setsockopt(dword_10001C080, 0, 20, v37, 4u) < 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    v26 = __error();
    v27 = strerror(*v26);
    buf.st_dev = 136315138;
    *&buf.st_mode = v27;
    v12 = "setsockopt(IP_RECVIF) failed: %s";
    p_buf = &buf;
    v14 = OS_LOG_TYPE_DEFAULT;
    v28 = 12;
    goto LABEL_98;
  }

  if (setsockopt(dword_10001C080, 0xFFFF, 4356, v37, 4u) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setsockopt(SO_RECV_ANYIF) failed", &buf, 2u);
  }

  if (setsockopt(dword_10001C080, 0xFFFF, 32, v37, 4u) < 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    LOWORD(buf.st_dev) = 0;
    v12 = "setsockopt(SO_BROADCAST) failed";
  }

  else if (setsockopt(dword_10001C080, 0, 7, v37, 4u) < 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    LOWORD(buf.st_dev) = 0;
    v12 = "setsockopt(IPPROTO_IP, IP_RECVDSTADDR) failed";
  }

  else
  {
    if ((setsockopt(dword_10001C080, 0xFFFF, 4, v37, 4u) & 0x80000000) == 0)
    {
      *v37 = 900;
      if (setsockopt(dword_10001C080, 0xFFFF, 4230, v37, 4u) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v29 = __error();
        v30 = strerror(*v29);
        buf.st_dev = 136315138;
        *&buf.st_mode = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setsockopt(SO_TRAFFIC_CLASS) failed, %s", &buf, 0xCu);
      }

      *v37 = 0;
      if (setsockopt(dword_10001C080, 0xFFFF, 4352, v37, 4u) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v31 = __error();
        v32 = strerror(*v31);
        buf.st_dev = 136315138;
        *&buf.st_mode = v32;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setsockopt(SO_DEFUNCTOK) failed, %s", &buf, 0xCu);
      }

      *v37 = 1;
      if (ioctl(dword_10001C080, 0x8004667EuLL, v37) < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v33 = __error();
        v34 = strerror(*v33);
        buf.st_dev = 136315138;
        *&buf.st_mode = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ioctl FIONBIO failed, %s", &buf, 0xCu);
      }

      v35 = dispatch_source_create(&_dispatch_source_type_read, dword_10001C080, 0, &_dispatch_main_q);
      dispatch_source_set_event_handler(v35, &stru_1000185B0);
      dispatch_resume(v35);
      v36 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, &_dispatch_main_q);
      dispatch_source_set_event_handler(v36, &stru_100018630);
      dispatch_resume(v36);
      signal(1, 1);
      if (!v5)
      {
        sub_100004CF8();
      }

      dispatch_main();
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    LOWORD(buf.st_dev) = 0;
    v12 = "setsockopt(SO_REUSEADDR) failed";
  }

  p_buf = &buf;
  v14 = OS_LOG_TYPE_DEFAULT;
  goto LABEL_97;
}

_DWORD *sub_100001A44(int a1)
{
  if (qword_10001CD88)
  {
    v2 = ++dword_10001CD90;
    result = malloc_type_realloc(qword_10001CD88, 4 * v2, 0x100004052888210uLL);
    qword_10001CD88 = result;
    if (!result)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "realloc failed, exiting", v4, 2u);
      }

      exit(1);
    }

    result[dword_10001CD90 - 1] = a1;
  }

  else
  {
    result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    qword_10001CD88 = result;
    *result = a1;
    dword_10001CD90 = 1;
  }

  return result;
}

void sub_100001B28(id a1)
{
  v144 = xmmword_1000124E0;
  qword_10001D5A8 = &qword_10001D5C8;
  dword_10001D5B0 = 1;
  qword_10001D5B8 = &unk_10001D5D8;
  qword_10001D5C0 = 512;
  qword_10001D5C8 = &byte_10001CD98;
  unk_10001D5D0 = 2048;
  qword_10001D598 = &v144;
  dword_10001D5A0 = 16;
  v1 = recvmsg(dword_10001C080, &qword_10001D598, 0);
  if (v1 < 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 6291714;
    v5 = "recvmsg failed, %m";
    v6 = buf;
    v7 = OS_LOG_TYPE_DEBUG;
    v8 = 4;
    goto LABEL_8;
  }

  v2 = v1;
  if ((byte_10001CD94 & 1) == 0)
  {
    sub_100004E74(0);
    if (gethostname(&byte_10001C400, 0x100uLL))
    {
      byte_10001C400 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 6291714;
        v3 = "gethostname() failed, %m";
        v4 = 4;
LABEL_11:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v3, buf, v4);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = &byte_10001C400;
      v3 = "server name %s";
      v4 = 12;
      goto LABEL_11;
    }

    sub_100000B74();
    sub_1000008C8();
    sub_100000C08();
    sub_100000D88(0);
    v9 = sub_1000085E8(off_10001C098);
    if (v9)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v9) != TypeID)
      {
        CFRelease(v9);
        v9 = 0;
      }
    }

    LODWORD(v133) = 0;
    dword_10001CD40 = dword_10001CD44;
    byte_10001C510 = byte_10001CD4C;
    byte_10001C208 = byte_10001CD60;
    if (!v9)
    {
      dword_10001CD84 = 0;
LABEL_50:
      if (qword_10001D7D8)
      {
        free(qword_10001D7D8);
        qword_10001D7D8 = 0;
      }

      if (qword_10001D7E0)
      {
        free(qword_10001D7E0);
        qword_10001D7E0 = 0;
      }

      dword_10001D7E8 = 0;
      dword_10001D7EC = 0;
      if (v9)
      {
        Value = CFDictionaryGetValue(v9, @"allow");
        v33 = CFArrayGetTypeID();
        if (Value && CFGetTypeID(Value) == v33 && CFArrayGetCount(Value) >= 1)
        {
          qword_10001D7D8 = sub_100004AF4(Value, &dword_10001D7E8);
        }

        v34 = CFDictionaryGetValue(v9, @"deny");
        v35 = CFArrayGetTypeID();
        if (v34 && CFGetTypeID(v34) == v35 && CFArrayGetCount(v34) >= 1)
        {
          qword_10001D7E0 = sub_100004AF4(v34, &dword_10001D7EC);
        }
      }

      dword_10001C204 = 0;
      sub_100000F04(v9, @"reply_threshold_seconds", "reply_threshold_seconds", &dword_10001C204);
      byte_10001C209 = 0;
      LODWORD(v133) = 0;
      sub_100000F04(v9, @"dhcp_ignore_client_identifier", "dhcp_ignore_client_identifier", &v133);
      if (v133)
      {
        byte_10001C209 = 1;
      }

      byte_10001C20A = 0;
      LODWORD(v133) = 0;
      sub_100000F04(v9, @"dhcp_supply_bootfile", "dhcp_supply_bootfile", &v133);
      if (v133)
      {
        byte_10001C20A = 1;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "dhcp_supply_bootfile";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s is enabled", buf, 0xCu);
        }
      }

      dword_10001C0A4 = sub_100004888(v9, @"use_server_config_for_dhcp_options", "use_server_config_for_dhcp_options", 1);
      SubnetListFree(&qword_10001C508);
      if (v9)
      {
        v36 = CFDictionaryGetValue(v9, @"Subnets");
        v37 = CFArrayGetTypeID();
        if (v36)
        {
          if (CFGetTypeID(v36) == v37)
          {
            qword_10001C508 = SubnetListCreateWithArray(v36);
            if (qword_10001C508)
            {
              if (byte_10001C510 == 1)
              {
                Mutable = CFStringCreateMutable(0, 0);
                SubnetListPrintCFString(Mutable, qword_10001C508);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = Mutable;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                CFRelease(Mutable);
              }
            }
          }
        }

        sub_100005A44();
        CFRelease(v9);
      }

      else
      {
        sub_100005A44();
      }

      res_9_init();
      qword_10001CD70 = 0;
      if (qword_10001CD68)
      {
        free(qword_10001CD68);
        qword_10001CD68 = 0;
      }

      if (qword_10001CD78)
      {
        free(qword_10001CD78);
        qword_10001CD78 = 0;
      }

      dword_10001CD80 = 0;
      dword_10001CD64 = 0;
      if (*(__res_9_state() + 16))
      {
        tv_sec = 0;
        __dst[0].tv_sec = 0;
        if (byte_10001C208 == 1)
        {
          tv_sec = CFStringCreateMutable(0, 0);
          __dst[0].tv_sec = tv_sec;
        }

        v40 = __res_9_state();
        qword_10001CD68 = malloc_type_malloc(4 * *(v40 + 16), 0x100004052888210uLL);
        if (*(__res_9_state() + 16) >= 1)
        {
          v41 = 0;
          v42 = 24;
          do
          {
            v43.s_addr = *(__res_9_state() + v42);
            if (v43.s_addr + 1 >= 2 && LOBYTE(v43.s_addr) != 127)
            {
              v44 = dword_10001CD64;
              *(qword_10001CD68 + 4 * dword_10001CD64) = v43;
              if (tv_sec)
              {
                v45 = inet_ntoa(v43);
                CFStringAppendFormat(tv_sec, 0, @" %s", v45);
                v44 = dword_10001CD64;
              }

              dword_10001CD64 = v44 + 1;
            }

            ++v41;
            v42 += 16;
          }

          while (v41 < *(__res_9_state() + 16));
        }

        if (!dword_10001CD64)
        {
          free(qword_10001CD68);
          qword_10001CD68 = 0;
          sub_1000085B0(__dst);
          tv_sec = __dst[0].tv_sec;
        }

        if (tv_sec)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = tv_sec;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "DNS servers: %@", buf, 0xCu);
            tv_sec = __dst[0].tv_sec;
          }

          CFRelease(tv_sec);
        }
      }

      if (dword_10001CD64)
      {
        v46 = 0;
        __dst[0].tv_sec = 0;
        if (byte_10001C208 == 1)
        {
          v46 = CFStringCreateMutable(0, 0);
          __dst[0].tv_sec = v46;
        }

        if (*(__res_9_state() + 128))
        {
          v47 = __res_9_state();
          if (strcmp((v47 + 128), "local"))
          {
            v48 = __res_9_state() + 128;
            qword_10001CD70 = v48;
            if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              *&buf[4] = v48;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "DNS domain: %s", buf, 0xCu);
            }
          }
        }

        v49 = 9;
        while (*(__res_9_state() + 8 * v49))
        {
          if (v46)
          {
            v50 = __res_9_state();
            CFStringAppendFormat(v46, 0, @" %s", *(v50 + 8 * v49));
          }

          if (++v49 == 15)
          {
            v51 = 6;
            goto LABEL_116;
          }
        }

        if (v49 == 9)
        {
          sub_1000085B0(__dst);
          v46 = __dst[0].tv_sec;
          goto LABEL_117;
        }

        v51 = v49 - 9;
LABEL_116:
        v52 = __res_9_state();
        qword_10001CD78 = sub_10000A0AC(v52 + 72, v51, 0, &dword_10001CD80, 1);
LABEL_117:
        if (v46)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v46;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "DNS search: %@", buf, 0xCu);
            v46 = __dst[0].tv_sec;
          }

          CFRelease(v46);
        }
      }

      byte_10001CD94 = 1;
      goto LABEL_122;
    }

    v11 = CFDictionaryGetValue(v9, @"ipv6_only_wait");
    LODWORD(__dst[0].tv_sec) = 0;
    if (v11)
    {
      if (sub_100008A7C(v11, __dst))
      {
        v12 = (LODWORD(__dst[0].tv_sec) != 0) << 24;
LABEL_23:
        dword_10001CD84 = v12;
        if (sub_100004888(v9, @"verbose", "verbose", 0))
        {
          byte_10001C510 = 1;
        }

        if (sub_100004888(v9, @"debug", "debug", 0))
        {
          byte_10001C208 = 1;
        }

        v13 = CFDictionaryGetValue(v9, @"bootp_enabled");
        sub_10000495C(v13, 1);
        v14 = CFDictionaryGetValue(v9, @"dhcp_enabled");
        sub_10000495C(v14, 2);
        v15 = CFDictionaryGetValue(v9, @"relay_enabled");
        sub_10000495C(v15, 16);
        v16 = CFDictionaryGetValue(v9, @"relay_ip_list");
        v17 = CFArrayGetTypeID();
        if (v16 && CFGetTypeID(v16) == v17)
        {
          Count = CFArrayGetCount(v16);
          if (qword_10001CD88)
          {
            free(qword_10001CD88);
            qword_10001CD88 = 0;
            dword_10001CD90 = 0;
          }

          if (Count >= 1)
          {
            for (i = 0; Count != i; ++i)
            {
              LODWORD(__dst[0].tv_sec) = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
              v21 = CFStringGetTypeID();
              if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v21)
              {
                continue;
              }

              if (sub_100008928(ValueAtIndex, __dst))
              {
                v22 = __dst[0].tv_sec;
                if ((LODWORD(__dst[0].tv_sec) + 1) > 1)
                {
                  if (!sub_10000C158(qword_10001CD18, __dst[0].tv_sec))
                  {
                    sub_100001A44(__dst[0].tv_sec);
                    continue;
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v27.s_addr = __dst[0].tv_sec;
                    v28 = inet_ntoa(v27);
                    *buf = 136315138;
                    *&buf[4] = v28;
                    v25 = "Relay server ip address %s specifies this host";
LABEL_44:
                    v26 = 12;
LABEL_45:
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v23.s_addr = v22;
                  v24 = inet_ntoa(v23);
                  *buf = 136315138;
                  *&buf[4] = v24;
                  v25 = "Invalid relay server ip address %s";
                  goto LABEL_44;
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v25 = "Invalid relay server ip address";
                v26 = 2;
                goto LABEL_45;
              }
            }
          }
        }

        v29 = CFDictionaryGetValue(v9, @"ignore_allow_deny");
        sub_10000495C(v29, 32);
        v30 = CFDictionaryGetValue(v9, @"detect_other_dhcp_server");
        sub_10000495C(v30, 64);
        v31 = CFDictionaryGetValue(v9, @"ipv6_only_preferred");
        sub_10000495C(v31, 128);
        goto LABEL_50;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "ipv6_only_wait";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid '%s' property", buf, 0xCu);
      }
    }

    v12 = 0;
    goto LABEL_23;
  }

LABEL_122:
  if (v2 >= 0xEC && byte_10001CD9A <= 0x10u)
  {
    *buf = 0;
    v53 = sub_100004C84(7, buf);
    if (v53)
    {
      v54 = *buf == 4;
    }

    else
    {
      v54 = 0;
    }

    v55 = !v54;
    if (v54)
    {
      v56 = v53;
    }

    else
    {
      v56 = 0;
    }

    if (byte_10001C208 == 1)
    {
      v57 = v53;
      v58 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v55)
      {
        if (v58)
        {
          *buf = 0;
          v59 = "no destination address";
          v60 = 2;
LABEL_139:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v59, buf, v60);
        }
      }

      else if (v58)
      {
        v61.s_addr = *v57;
        v62 = inet_ntoa(v61);
        *buf = 136315138;
        *&buf[4] = v62;
        v59 = "destination address %s";
        v60 = 12;
        goto LABEL_139;
      }
    }

    LODWORD(v133) = 0;
    v63 = sub_100004C84(20, &v133);
    if (!v63)
    {
      return;
    }

    if (!v133)
    {
      return;
    }

    v64 = v63;
    if (*(v63 + 5) > 0x10uLL)
    {
      return;
    }

    __memmove_chk();
    buf[*(v64 + 5)] = 0;
    v65 = sub_10000C208(qword_10001CD18, buf);
    if (v65)
    {
      v66 = v65;
      if (sub_10000CAD0(v65))
      {
        if (sub_10000D1CC(qword_10001CD20) < 1 || sub_100000AF0(buf))
        {
          v67 = *(v66 + 76);
          if ((v67 & 0x80000000) == 0)
          {
            v68 = v67 | dword_10001CD40;
            if ((v68 & 0x1F) != 0)
            {
              if (byte_10001CD9A == 6 && (v68 & 0x20) == 0)
              {
                if (qword_10001D7E0 && bsearch(&unk_10001CDB4, qword_10001D7E0, dword_10001D7EC, 6uLL, sub_10000D90C))
                {
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    return;
                  }

                  v69 = ether_ntoa(&unk_10001CDB4);
                  *buf = 136315138;
                  *&buf[4] = v69;
                  v5 = "%s is in deny list, ignoring";
LABEL_233:
                  v6 = buf;
                  goto LABEL_169;
                }

                if (qword_10001D7D8 && !bsearch(&unk_10001CDB4, qword_10001D7D8, dword_10001D7E8, 6uLL, sub_10000D90C))
                {
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    return;
                  }

                  v108 = ether_ntoa(&unk_10001CDB4);
                  *buf = 136315138;
                  *&buf[4] = v108;
                  v5 = "%s is not in the allow list, ignoring";
                  goto LABEL_233;
                }
              }

              gettimeofday(&qword_10001CD50, 0);
              if (byte_10001CD98 != 1)
              {
                goto LABEL_196;
              }

              v139[0] = 0;
              v139[1] = 0;
              v136 = 0;
              v133 = v66;
              __src = &byte_10001CD98;
              v135 = v2;
              v137 = v56;
              v138 = &qword_10001CD50;
              sub_1000095B0(v139);
              if (sub_100009768(v139, &byte_10001CD98, v2, 0) && (v136 = v139, *buf = 0, (v70 = sub_1000096B8(v139, 53, buf, 0)) != 0))
              {
                v71 = 0;
                v72 = *v70;
              }

              else
              {
                v72 = 0;
                v71 = 1;
              }

              if (byte_10001C510 == 1)
              {
                v73 = CFStringCreateMutable(0, 0);
                sub_100009CAC(v73, &byte_10001CD98, v2);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = v73;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "---- Client Request ----\n%@", buf, 0xCu);
                }

                CFRelease(v73);
              }

              if (!byte_10001CDC4 || !strcmp(&byte_10001CDC4, &byte_10001C400))
              {
                v74 = dword_10001CDAC;
                if (!dword_10001CDAC || v74 == sub_10000CA84(v66))
                {
                  v75 = *(v66 + 76);
                  if ((v71 & 1) != 0 || v75 < 0 || ((v75 | dword_10001CD40) & 2) == 0)
                  {
                    if (((v75 | dword_10001CD40) & 1) == 0)
                    {
                      goto LABEL_195;
                    }

                    v142 = 0;
                    v143 = 0;
                    if (v135 < 0x12C)
                    {
                      goto LABEL_195;
                    }

                    v76 = __src;
                    v141.s_addr = 0;
                    v77 = bswap32(*(__src + 4));
                    v78 = dword_10001C204;
                    if (dword_10001C204 > HIWORD(v77))
                    {
                      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 67109376;
                        *&buf[4] = HIWORD(v77);
                        *&buf[8] = 1024;
                        *&buf[10] = v78;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "rq->bp_secs %d < threshold %d", buf, 0xEu);
                      }

                      goto LABEL_195;
                    }

                    memcpy(__dst, __src, 0x12CuLL);
                    LOBYTE(__dst[0].tv_sec) = 2;
                    v122 = *(__src + 3);
                    if (v122)
                    {
                      v141.s_addr = *(__src + 3);
                      if (!sub_1000056A4(v122, &v142, &v143))
                      {
                        goto LABEL_195;
                      }
                    }

                    else
                    {
                      *buf = 0;
                      *&buf[8] = v133;
                      *&buf[16] = 0;
                      *buf = *(__src + 6);
                      if (!sub_1000055BC(*(__src + 1), __src + 28, *(__src + 2), sub_100003C04, buf, &v141, &v142, &v143))
                      {
                        goto LABEL_195;
                      }

                      LODWORD(__dst[1].tv_sec) = v141;
                    }

                    v76[235] = 0;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                    {
                      v125 = nullsub_1(v133);
                      v126 = v142;
                      if (!v142)
                      {
                        v127.s_addr = v141.s_addr;
                        v126 = inet_ntoa(v127);
                      }

                      *buf = 136315650;
                      *&buf[4] = v125;
                      *&buf[12] = 2080;
                      *&buf[14] = v126;
                      *&buf[22] = 2080;
                      *&buf[24] = v76 + 108;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "BOOTP request [%s]: %s requested file '%s'", buf, 0x20u);
                    }

                    if (sub_1000035F0(v76 + 108, v142, v143, &__dst[6].tv_usec + 4, 128))
                    {
                      if (*(v76 + 59) == 1666417251)
                      {
                        v161 = 0u;
                        v162 = 0u;
                        v159 = 0u;
                        v160 = 0u;
                        v157 = 0u;
                        v158 = 0u;
                        v155 = 0u;
                        v156 = 0u;
                        v153 = 0u;
                        v154 = 0u;
                        v151 = 0u;
                        v152 = 0u;
                        v149 = 0u;
                        v150 = 0u;
                        v147 = 0u;
                        v148 = 0u;
                        v146 = 0u;
                        memset(buf, 0, sizeof(buf));
                        sub_1000099C4(buf, &__dst[15], 60);
                        sub_100003FC8(v142, v141.s_addr, v133, buf, 0, 0);
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                        {
                          *v140 = 0;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "added vendor extensions", v140, 2u);
                        }

                        if (sub_100009A44(buf, 255, 0, 0))
                        {
                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                          {
                            *v140 = 0;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "couldn't add end tag", v140, 2u);
                          }
                        }

                        else
                        {
                          *(&__dst[14].tv_usec + 1) = 1666417251;
                        }
                      }

                      HIDWORD(__dst[1].tv_sec) = sub_10000CA84(v133);
                      __strlcpy_chk();
                      if (sub_100003C5C(v133, __dst, 0x12Cu, 0, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
                      {
                        v128 = v142;
                        v129.s_addr = v141.s_addr;
                        v130 = inet_ntoa(v129);
                        *buf = 136315650;
                        *&buf[4] = v128;
                        *&buf[12] = 2080;
                        *&buf[14] = v130;
                        *&buf[22] = 1024;
                        *&buf[24] = 300;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "reply sent %s %s pktsize %d", buf, 0x1Cu);
                      }
                    }

                    if (v142)
                    {
                      free(v142);
                    }

                    if (v143)
                    {
                      free(v143);
                    }

                    goto LABEL_195;
                  }

                  sub_100006118(&v133, v72, 1);
                }
              }

LABEL_195:
              sub_1000095B4(v139);
LABEL_196:
              v79 = aPrivateTftpboo;
              if (qword_10001CD88 && v2 >= 0x12C && ((*(v66 + 76) | dword_10001CD40) & 0x10) != 0)
              {
                if (byte_10001CD98 != 2)
                {
                  if (byte_10001CD98 == 1)
                  {
                    v80 = byte_10001CD9B;
                    if (dword_10001C0A0 > byte_10001CD9B && dword_10001C204 <= bswap32(word_10001CDA0) >> 16)
                    {
                      v131 = dword_10001CDB0;
                      if (!dword_10001CDB0)
                      {
                        dword_10001CDB0 = sub_10000CA84(v66);
                        v80 = byte_10001CD9B;
                      }

                      byte_10001CD9B = v80 + 1;
                      v81 = aPrivateTftpboo;
                      v82 = aPrivateTftpboo;
                      if (dword_10001CD90 >= 1)
                      {
                        v83 = 0;
                        v132 = 0;
                        v84 = &_os_log_default;
                        while (1)
                        {
                          v85 = *(*(v79 + 433) + 4 * v83);
                          if (v85 != sub_10000CAAC(v66))
                          {
                            break;
                          }

LABEL_223:
                          if (++v83 >= *(v81 + 868))
                          {
                            goto LABEL_224;
                          }
                        }

                        if (byte_10001C510 == 1 && v132 == 0)
                        {
                          v87 = CFStringCreateMutable(0, 0);
                          sub_100009CAC(v87, &byte_10001CD98, v2);
                          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412290;
                            *&buf[4] = v87;
                            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "==== Relayed Request ====\n%@", buf, 0xCu);
                          }

                          CFRelease(v87);
                          v132 = 1;
                        }

                        v88 = v84;
                        v89 = *(v82 + 32);
                        v90 = off_10001C090;
                        v91 = nullsub_1(v66);
                        v92 = byte_10001CD99;
                        v93 = sub_10000CA84(v66);
                        v94 = sub_100011388(v89, v90, v91, v92, 0, v85, v93, 0x43u, 0x44u, &byte_10001CD98, v2);
                        v84 = v88;
                        if (v94 < 0)
                        {
                          v81 = aPrivateTftpboo;
                          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                          {
                            v102.s_addr = v85;
                            v103 = inet_ntoa(v102);
                            *buf = 136315394;
                            *&buf[4] = v103;
                            v98 = v88;
                            v99 = OS_LOG_TYPE_DEFAULT;
                            v100 = "send to %s failed, %m";
                            v101 = 14;
                            goto LABEL_221;
                          }
                        }

                        else
                        {
                          v81 = aPrivateTftpboo;
                          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                          {
                            v95 = nullsub_1(v66);
                            v96.s_addr = v85;
                            v97 = inet_ntoa(v96);
                            *buf = 136315394;
                            *&buf[4] = v95;
                            *&buf[12] = 2080;
                            *&buf[14] = v97;
                            v98 = v88;
                            v99 = OS_LOG_TYPE_INFO;
                            v100 = "Relayed Request [%s] to %s";
                            v101 = 22;
LABEL_221:
                            _os_log_impl(&_mh_execute_header, v98, v99, v100, buf, v101);
                          }
                        }

                        v82 = aPrivateTftpboo;
                        v79 = aPrivateTftpboo;
                        goto LABEL_223;
                      }

LABEL_224:
                      if (!v131)
                      {
                        dword_10001CDB0 = 0;
                      }

                      --byte_10001CD9B;
                    }
                  }

                  goto LABEL_250;
                }

                if (dword_10001CDB0)
                {
                  v104 = sub_10000C158(qword_10001CD18, dword_10001CDB0);
                  if (v104)
                  {
                    v105 = v104;
                    if ((word_10001CDA2 & 0x80) != 0)
                    {
                      v107 = aPrivateTftpboo;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "replying using broadcast IP address", buf, 2u);
                      }

                      v106 = -1;
                    }

                    else
                    {
                      v106 = dword_10001CDA8;
                      v107 = aPrivateTftpboo;
                    }

                    if (byte_10001C510 == 1)
                    {
                      v109 = CFStringCreateMutable(0, 0);
                      sub_100009CAC(v109, &byte_10001CD98, v2);
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *&buf[4] = v109;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "==== Relayed Reply ====\n%@", buf, 0xCu);
                      }

                      CFRelease(v109);
                    }

                    v110 = *(v107 + 32);
                    v111 = off_10001C090;
                    v112 = nullsub_1(v105);
                    v113 = byte_10001CD99;
                    v114 = sub_10000CA84(v105);
                    v115 = sub_100011388(v110, v111, v112, v113, &unk_10001CDB4, v106, v114, 0x44u, 0x43u, &byte_10001CD98, v2);
                    v116 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
                    if (v115 < 0)
                    {
                      if (!v116)
                      {
                        goto LABEL_250;
                      }

                      v123.s_addr = v106;
                      v124 = inet_ntoa(v123);
                      *buf = 136315394;
                      *&buf[4] = v124;
                      v120 = "send %s failed, %m";
                      v121 = 14;
                    }

                    else
                    {
                      if (!v116)
                      {
                        goto LABEL_250;
                      }

                      v117 = nullsub_1(v105);
                      v118.s_addr = v106;
                      v119 = inet_ntoa(v118);
                      *buf = 136315394;
                      *&buf[4] = v117;
                      *&buf[12] = 2080;
                      *&buf[14] = v119;
                      v120 = "Relayed Response [%s] to %s";
                      v121 = 22;
                    }

                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v120, buf, v121);
                  }
                }
              }

LABEL_250:
              if (byte_10001C510 != 1)
              {
                return;
              }

              __dst[0].tv_sec = 0;
              *&__dst[0].tv_usec = 0;
              v133 = 0;
              __src = 0;
              gettimeofday(__dst, 0);
              sub_10000D620(__dst[0].tv_sec, __dst[0].tv_usec, qword_10001CD50, *algn_10001CD58, &v133);
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                return;
              }

              *buf = 134218240;
              *&buf[4] = v133;
              *&buf[12] = 1024;
              *&buf[14] = __src;
              v5 = "service time %lu.%06d seconds";
              v6 = buf;
              v7 = OS_LOG_TYPE_INFO;
              v8 = 18;
LABEL_8:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v5, v6, v8);
              return;
            }
          }

          if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          LODWORD(__dst[0].tv_sec) = 136315138;
          *(&__dst[0].tv_sec + 4) = buf;
          v5 = "ignoring request on %s (no services enabled)";
        }

        else
        {
          if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          LODWORD(__dst[0].tv_sec) = 136315138;
          *(&__dst[0].tv_sec + 4) = buf;
          v5 = "ignoring request on %s";
        }
      }

      else
      {
        if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        LODWORD(__dst[0].tv_sec) = 136315138;
        *(&__dst[0].tv_sec + 4) = buf;
        v5 = "ignoring request on %s (no IP address)";
      }
    }

    else
    {
      if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LODWORD(__dst[0].tv_sec) = 136315138;
      *(&__dst[0].tv_sec + 4) = buf;
      v5 = "unknown interface %s";
    }

    v6 = __dst;
LABEL_169:
    v7 = OS_LOG_TYPE_DEBUG;
    v8 = 12;
    goto LABEL_8;
  }
}

BOOL sub_1000035F0(_BYTE *a1, uint64_t a2, _BYTE *a3, char *a4, int a5)
{
  if ((!a1 || !*a1) && (!a3 || !*a3))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v8 = "no replyfile";
      v9 = &v18;
      v10 = 2;
LABEL_20:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v8, v9, v10);
    }

    return 1;
  }

  __strlcpy_chk();
  if (v18 == 47)
  {
    __strlcpy_chk();
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __strlcpy_chk();
    __strlcat_chk();
    __strlcat_chk();
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v11 = strlen(__s);
  __strlcat_chk();
  __strlcat_chk();
  if ((access(__s, 4) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  __s[v11] = 0;
LABEL_13:
  if ((access(__s, 4) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  if (byte_10001CD48 != 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315138;
      *v16 = __s;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "boot file %s* missing", &v15, 0xCu);
    }

LABEL_14:
    v12 = strlen(__s);
    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v12 < a5)
    {
      if (v13)
      {
        v15 = 136315138;
        *v16 = __s;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "replyfile %s", &v15, 0xCu);
      }

      strlcpy(a4, __s, a5);
      return 1;
    }

    if (v13)
    {
      v15 = 67109376;
      *v16 = v12;
      *&v16[4] = 1024;
      *&v16[6] = a5;
      v8 = "boot file name too long %d >= %d";
      v9 = &v15;
      v10 = 14;
      goto LABEL_20;
    }

    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (result)
  {
    v15 = 136315138;
    *v16 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "boot file %s* missing - not replying", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_100003914(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_10001C508)
    {
      return SubnetListAreAddressesOnSameSupernet(qword_10001C508, a1, a2);
    }

    return 0;
  }

  v5 = HIBYTE(a1);
  v6 = BYTE2(a1);
  v7 = BYTE1(a1);
  v8 = a1;
  v9 = a1 & 0xFF000000 | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1;
  if (sub_10000CAF4(a3, v9) != -1)
  {
    if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v23 = 136316162;
    v24 = nullsub_1(a3);
    v25 = 1024;
    *v26 = v8;
    *&v26[4] = 1024;
    *&v26[6] = v7;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v5;
    v10 = "%s: %d.%d.%d.%d on subnet";
    v11 = 36;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v10, &v23, v11);
    return 1;
  }

  v12 = sub_10000CB84(a3);
  v13 = *qword_10001CD38;
  if (v13 >= 1)
  {
    v14 = *(qword_10001CD38 + 8);
    while (1)
    {
      if (v14[9] == 18 && v12 == *(v14 + 5))
      {
        v15 = *(v14 + 1);
        if (v15)
        {
          if ((v15 & v9) == *v14)
          {
            break;
          }
        }
      }

      v14 += 28;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    if (byte_10001C510 != 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v18 = nullsub_1(a3);
    v19 = *v14;
    v20 = v14[1];
    v21 = v14[2];
    v22 = v14[3];
    v23 = 136317186;
    v24 = v18;
    v25 = 1024;
    *v26 = v8;
    *&v26[4] = 1024;
    *&v26[6] = v7;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    v32 = v19;
    v33 = 1024;
    v34 = v20;
    v35 = 1024;
    v36 = v21;
    v37 = 1024;
    v38 = v22;
    v10 = "%s: %d.%d.%d.%d on subnet route %d.%d.%d.%d";
    v11 = 60;
    goto LABEL_8;
  }

LABEL_17:
  if (byte_10001C510 == 1)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v16 = nullsub_1(a3);
    v17.s_addr = v9;
    v23 = 136315394;
    v24 = v16;
    v25 = 2080;
    *v26 = inet_ntoa(v17);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: ip %s not reachable", &v23, 0x16u);
  }

  return 0;
}

BOOL sub_100003C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 1;
  *(a1 + 16) = 1;
  if (*(a1 + 4) != a2)
  {
    return sub_100003914(a2, *a1, *(a1 + 8)) != 0;
  }

  return v2;
}

BOOL sub_100003C5C(uint64_t a1, uint64_t a2, unsigned int a3, int a4, in_addr_t *a5)
{
  v7 = *(a2 + 12);
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v8.s_addr = v7;
      *buf = 136315138;
      v26 = inet_ntoa(v8);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reply ciaddr %s", buf, 0xCu);
    }

    v9 = 0;
LABEL_5:
    v10 = 68;
    v11 = 67;
    goto LABEL_23;
  }

  v7 = *(a2 + 24);
  if (!v7)
  {
    if (a4 || (*(a2 + 10) & 0x80) != 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "replying using broadcast IP address", buf, 2u);
      }

      v9 = 0;
      v7 = -1;
    }

    else
    {
      v14 = (a2 + 16);
      if (a5)
      {
        v14 = a5;
      }

      v7 = *v14;
      v9 = a2 + 28;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v15.s_addr = v7;
      v16 = inet_ntoa(v15);
      *buf = 136315138;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "replying to %s", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v13.s_addr = v7;
    *buf = 136315138;
    v26 = inet_ntoa(v13);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reply giaddr %s", buf, 0xCu);
  }

  if (a4)
  {
    v9 = 0;
    *(a2 + 10) |= 0x8000u;
  }

  else
  {
    v9 = 0;
  }

  v10 = 67;
  v11 = 68;
LABEL_23:
  v17 = dword_10001C080;
  v18 = off_10001C090;
  v19 = nullsub_1(a1);
  v20 = sub_10000CB68(a1);
  v21 = sub_10000CA84(a1);
  if ((sub_100011388(v17, v18, v19, v20, v9, v7, v21, v10, v11, a2, a3) & 0x80000000) != 0)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 6291714;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "transmit failed, %m", buf, 4u);
      return 0;
    }
  }

  else
  {
    if (byte_10001C510 == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
      sub_100009CAC(Mutable, a2, a3);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = Mutable;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "==== Server Reply ====\n%@", buf, 0xCu);
      }

      CFRelease(Mutable);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100003FC8(char *a1, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6)
{
  v8 = a4;
  v62 = sub_100009C84(a4);
  if (qword_10001C508)
  {
    SubnetForAddress = SubnetListGetSubnetForAddress(qword_10001C508, a2, 1);
    if (!SubnetForAddress)
    {
      SubnetForAddress = SubnetListGetSubnetForAddress(qword_10001C508, a2, 0);
    }
  }

  else
  {
    SubnetForAddress = 0;
  }

  if (a5)
  {
    v11 = a6;
  }

  else
  {
    v11 = 5;
  }

  if (!a5)
  {
    a5 = &unk_1000124D8;
  }

  if (v11 >= 1)
  {
    __src = 0;
    v12 = 0;
    v64 = 0;
    v13 = &_os_log_default;
    v14 = &_mh_execute_header;
    v15 = "couldn't add hostname: %s";
    while (1)
    {
      v16 = *a5;
      if ((v16 - 50) >= 0xA)
      {
        if (*a5 > 0x3Cu)
        {
          if (v16 == 61 || v16 == 255)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }

        if (*a5)
        {
          break;
        }
      }

LABEL_13:
      ++a5;
      if (!--v11)
      {
        return sub_100009C84(v8) - v62;
      }
    }

    if (v16 == 12)
    {
      if (!a1)
      {
        goto LABEL_13;
      }

      v17 = strlen(a1);
      if (!sub_100009A44(v8, 12, v17, a1) || !os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v18 = sub_100009C5C(v8);
      *buf = 136315138;
      *v67 = v18;
      v19 = v14;
      v20 = v13;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = v15;
      goto LABEL_22;
    }

LABEL_26:
    if (SubnetForAddress)
    {
      v65 = 0;
      OptionPtrAndLength = SubnetGetOptionPtrAndLength(SubnetForAddress, v16, &v65);
      v25 = OptionPtrAndLength == 0;
      if (OptionPtrAndLength && sub_100009A44(v8, *a5, v65, OptionPtrAndLength) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v15;
        v27 = v13;
        v28 = v12;
        v29 = SubnetForAddress;
        v30 = a1;
        v31 = *a5;
        v32 = sub_100009C5C(v8);
        *buf = 67109378;
        *v67 = v31;
        a1 = v30;
        SubnetForAddress = v29;
        v12 = v28;
        v13 = v27;
        v15 = v26;
        v14 = &_mh_execute_header;
        *&v67[4] = 2080;
        *&v67[6] = v32;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "couldn't add option %d: %s", buf, 0x12u);
      }
    }

    else
    {
      v25 = 1;
    }

    if (!v25 || !dword_10001C0A4)
    {
      goto LABEL_86;
    }

    if (!v64)
    {
      v33 = sub_10000CAF4(a3, a2);
      if (v33 != -1)
      {
        v12 = sub_10000CA7C(a3, v33);
      }

      __src = inetroute_default(qword_10001CD38);
    }

    v34 = *a5;
    v64 = 1;
    if (v34 <= 5)
    {
      if (v34 == 1)
      {
        if (!v12)
        {
          goto LABEL_68;
        }

        if (sub_100009A44(v8, 1, 4, (v12 + 4)))
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v45 = sub_100009C5C(v8);
            *buf = 136315138;
            *v67 = v45;
            v36 = v14;
            v37 = v13;
            v38 = "couldn't add subnet_mask: %s";
LABEL_67:
            _os_log_impl(v36, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
          }

LABEL_68:
          v64 = 1;
          goto LABEL_13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v49.s_addr = *(v12 + 4);
          v50 = v8;
          v51 = v15;
          v52 = v14;
          v53 = v13;
          v54 = v12;
          v55 = inet_ntoa(v49);
          v56 = nullsub_1(a3);
          *buf = 136315394;
          *v67 = v55;
          v12 = v54;
          v13 = v53;
          v14 = v52;
          v15 = v51;
          v8 = v50;
          *&v67[8] = 2080;
          *&v67[10] = v56;
          v46 = v14;
          v47 = v13;
          v48 = "subnet mask %s derived from %s";
          v57 = 22;
LABEL_84:
          _os_log_impl(v46, v47, OS_LOG_TYPE_DEBUG, v48, buf, v57);
          v64 = 1;
          goto LABEL_87;
        }
      }

      else
      {
        if (v34 != 3)
        {
          goto LABEL_86;
        }

        v64 = 1;
        if (!__src)
        {
          goto LABEL_13;
        }

        if (!v12)
        {
          goto LABEL_13;
        }

        v40 = *(v12 + 4);
        v39 = *(v12 + 8);
        v64 = 1;
        if ((*__src & v40) != v39 || (v40 & a2) != v39)
        {
          goto LABEL_13;
        }

        if (sub_100009A44(v8, 3, 4, __src))
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v41 = sub_100009C5C(v8);
            *buf = 136315138;
            *v67 = v41;
            v36 = v14;
            v37 = v13;
            v38 = "couldn't add router: %s";
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v46 = v14;
          v47 = v13;
          v48 = "default route added as router";
          goto LABEL_83;
        }
      }
    }

    else
    {
      switch(v34)
      {
        case 6u:
          if (!dword_10001CD64)
          {
            goto LABEL_68;
          }

          if (sub_100009A44(v8, 6, 4 * dword_10001CD64, qword_10001CD68))
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v42 = sub_100009C5C(v8);
              *buf = 136315138;
              *v67 = v42;
              v36 = v14;
              v37 = v13;
              v38 = "couldn't add dns servers: %s";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v46 = v14;
            v47 = v13;
            v48 = "default dns servers added";
LABEL_83:
            v57 = 2;
            goto LABEL_84;
          }

          break;
        case 0xFu:
          if (qword_10001CD70)
          {
            v43 = strlen(qword_10001CD70);
            if (sub_100009A44(v8, 15, v43, qword_10001CD70))
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v44 = sub_100009C5C(v8);
                *buf = 136315138;
                *v67 = v44;
                _os_log_impl(v14, v13, OS_LOG_TYPE_DEFAULT, "couldn't add domain name: %s", buf, 0xCu);
              }

              v64 = 1;
              v15 = "couldn't add hostname: %s";
              goto LABEL_13;
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(v14, v13, OS_LOG_TYPE_DEBUG, "default domain name added", buf, 2u);
              v64 = 1;
              v15 = "couldn't add hostname: %s";
              goto LABEL_87;
            }

            v64 = 1;
          }

          else
          {
            v64 = 1;
          }

          v15 = "couldn't add hostname: %s";
LABEL_86:
          if (!v25)
          {
            goto LABEL_13;
          }

LABEL_87:
          if (*a5 != 108 || ((*(a3 + 76) | dword_10001CD40) & 0x80) == 0)
          {
            goto LABEL_13;
          }

          if (sub_100009A44(v8, 108, 4, &dword_10001CD84))
          {
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_13;
            }

            v58 = sub_100009C5C(v8);
            *buf = 136315138;
            *v67 = v58;
            v19 = v14;
            v20 = v13;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = "couldn't add ipv6 only preferred: %s";
LABEL_22:
            v23 = 12;
          }

          else
          {
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              goto LABEL_13;
            }

            *buf = 0;
            v19 = v14;
            v20 = v13;
            v21 = OS_LOG_TYPE_INFO;
            v22 = "IPv6-only preferred option added";
            v23 = 2;
          }

          _os_log_impl(v19, v20, v21, v22, buf, v23);
          goto LABEL_13;
        case 0x77u:
          if (qword_10001CD78)
          {
            if (sub_100009A44(v8, 119, dword_10001CD80, qword_10001CD78))
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v35 = sub_100009C5C(v8);
                *buf = 136315138;
                *v67 = v35;
                v36 = v14;
                v37 = v13;
                v38 = "couldn't add domain search: %s";
                goto LABEL_67;
              }

              goto LABEL_68;
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v46 = v14;
              v47 = v13;
              v48 = "domain search added";
              goto LABEL_83;
            }
          }

          break;
        default:
          goto LABEL_86;
      }
    }

    v64 = 1;
    goto LABEL_86;
  }

  return sub_100009C84(v8) - v62;
}

void sub_1000047F0(id a1)
{
  v2.tv_sec = 0;
  *&v2.tv_usec = 0;
  gettimeofday(&v2, 0);
  if (v2.tv_sec - qword_10001CD50 >= 300)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "idle, exiting", v1, 2u);
    }

    exit(0);
  }
}

BOOL sub_100004888(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    v8 = 0;
    if (Value)
    {
      if (sub_100008A7C(Value, &v8))
      {
        return v8 != 0;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid '%s' property", buf, 0xCu);
      }
    }
  }

  return a4;
}

uint64_t sub_10000495C(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  TypeID = CFBooleanGetTypeID();
  if (CFGetTypeID(v3) == TypeID)
  {
    result = CFEqual(v3, kCFBooleanTrue);
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v5 = CFStringGetTypeID();
  if (CFGetTypeID(v3) == v5)
  {
    v6 = 1;
    ValueAtIndex = v3;
    goto LABEL_7;
  }

  v10 = CFArrayGetTypeID();
  result = CFGetTypeID(v3);
  if (result == v10)
  {
    result = CFArrayGetCount(v3);
    if (!result)
    {
LABEL_4:
      dword_10001CD40 |= a2;
      return result;
    }

    v6 = result;
    if (result >= 1)
    {
      ValueAtIndex = 0;
LABEL_7:
      for (i = 0; i != v6; ++i)
      {
        if (i || !ValueAtIndex)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          result = CFStringGetTypeID();
          if (!ValueAtIndex)
          {
            continue;
          }

          v9 = result;
          result = CFGetTypeID(ValueAtIndex);
          if (result != v9)
          {
            continue;
          }
        }

        result = CFStringGetCString(ValueAtIndex, buffer, 17, 0x600u);
        if (result && buffer[0])
        {
          result = sub_10000C208(qword_10001CD18, buffer);
          if (result)
          {
            *(result + 76) |= a2;
          }
        }
      }
    }
  }

  return result;
}

char *sub_100004AF4(const __CFArray *a1, _DWORD *a2)
{
  Count = CFArrayGetCount(a1);
  v5 = malloc_type_malloc(6 * Count, 0x1000040274DC3F3uLL);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    TypeID = CFStringGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == TypeID)
      {
        if (CFStringGetCString(ValueAtIndex, buffer, 64, 0x600u))
        {
          if (strlen(buffer) >= 2)
          {
            v10 = ether_aton(&buffer[2 * (*buffer == 11313)]);
            if (v10)
            {
              v11 = &v5[6 * v7];
              v12 = *v10->octet;
              *(v11 + 2) = *&v10->octet[4];
              *v11 = v12;
              ++v7;
            }
          }
        }
      }
    }

    ++v6;
  }

  while (Count != v6);
  if (v7)
  {
    qsort(v5, v7, 6uLL, sub_10000D90C);
  }

  else
  {
LABEL_12:
    free(v5);
    v7 = 0;
    v5 = 0;
  }

  *a2 = v7;
  return v5;
}

unsigned int *sub_100004C84(int a1, _DWORD *a2)
{
  *a2 = 0;
  v2 = qword_10001D5B8;
  if (qword_10001D5C0 < 0xC || qword_10001D5B8 == 0)
  {
    return 0;
  }

  while (v2[1] || v2[2] != a1)
  {
    v2 = (v2 + ((*v2 + 3) & 0x1FFFFFFFCLL));
    if ((v2 + 3) > qword_10001D5B8 + qword_10001D5C0)
    {
      return 0;
    }
  }

  if (*v2 < 0xC)
  {
    return 0;
  }

  *a2 = *v2 - 12;
  return v2 + 3;
}

uint64_t sub_100004CF8()
{
  v0 = CFDictionaryCreate(0, &kSCDynamicStoreUseSessionKeys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_10001D7F0 = SCDynamicStoreCreateWithOptions(0, @"com.apple.network.bootpd", v0, sub_100004E68, 0);
  CFRelease(v0);
  if (!qword_10001D7F0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SCDynamicStoreCreate failed", v5, 2u);
    }

    exit(2);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  SCDynamicStoreSetNotificationKeys(qword_10001D7F0, 0, Mutable);
  CFRelease(Mutable);
  v3 = qword_10001D7F0;

  return SCDynamicStoreSetDispatchQueue(v3, &_dispatch_main_q);
}

void sub_100004E74(const char *a1)
{
  memset(&v31, 0, sizeof(v31));
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "/etc/bootptab";
  }

  v2 = fopen(v1, "r");
  if (!v2)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v45 = v1;
    v22 = "can't open %s";
    v23 = buf;
    v24 = OS_LOG_TYPE_INFO;
    v25 = 12;
    goto LABEL_59;
  }

  v3 = v2;
  v4 = fileno(v2);
  if (!fstat(v4, &v31) && v31.st_mtimespec.tv_sec == qword_10001D800)
  {
    fclose(v3);
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "re-reading %s", buf, 0xCu);
  }

  qword_10001D800 = v31.st_mtimespec.tv_sec;
  v5 = qword_10001D808;
  if (qword_10001D808)
  {
    do
    {
      v6 = *v5;
      hostfree(&qword_10001D808, v5);
      v5 = v6;
    }

    while (v6);
  }

  v29 = 0;
  if (fgets(buf, 256, v3))
  {
    v26 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = strlen(buf);
      if (v10)
      {
        buf[v10 - 1] = 0;
      }

      v30 = buf;
      ++v8;
      if (buf[0] <= 0x23u && ((1 << buf[0]) & 0x900000001) != 0)
      {
        goto LABEL_20;
      }

      if (!v9)
      {
        break;
      }

      v9 = buf[0] != 37;
LABEL_20:
      v29 = 0;
      if (!fgets(buf, 256, v3))
      {
        goto LABEL_57;
      }
    }

    v27 = v7 + 1;
    sub_100005478(&v30, v8, v41, 63);
    sub_100005478(&v30, v8, v43, 64);
    sscanf(v43, "%d", &v29);
    sub_100005478(&v30, v8, v43, 64);
    v12 = &v42;
    __strlcpy_chk();
    v13 = 0;
    v14 = 1;
    do
    {
      v28 = 0;
      for (i = v12 + 1; ; ++i)
      {
        v16 = *(i - 1);
        if (v16 <= 0x3A && ((1 << v16) & 0x400400000000001) != 0)
        {
          break;
        }
      }

      *(i - 1) = 0;
      if (sscanf(v12, "%x", &v28) != 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 136315394;
          v33 = v43;
          v34 = 1024;
          v35 = v8;
          v20 = "bad hex address: %s, at line %d of bootptab";
LABEL_42:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, v32, 0x12u);
        }

LABEL_43:
        v9 = 0;
        v7 = v27;
        goto LABEL_20;
      }

      v18 = v28;
      v19 = v13 + 1;
      v36[v13] = v28;
      if (v18)
      {
        v14 = 0;
      }

      if (!v16)
      {
        break;
      }

      ++v13;
      v12 = i;
    }

    while (v19 != 32);
    if (v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136315394;
        v33 = v43;
        v34 = 1024;
        v35 = v8;
        v20 = "zero hex address: %s, at line %d of bootptab";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v29 != 1 || v19 == 6)
    {
      sub_100005478(&v30, v8, v43, 64);
      HIDWORD(v29) = inet_addr(v43);
      v7 = v27;
      if ((HIDWORD(v29) + 1) > 1)
      {
        sub_100005478(&v30, v8, v37, 127);
        hostadd(&qword_10001D808, 0, v29, v36, v19, &v29 + 1, v41, v37);
        v9 = 0;
        ++v26;
        goto LABEL_20;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *v32 = 136315394;
      v33 = v43;
      v34 = 1024;
      v35 = v8;
      v21 = "bad internet address: %s, at line %d of bootptab";
    }

    else
    {
      v7 = v27;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_52:
        v9 = 0;
        goto LABEL_20;
      }

      *v32 = 136315394;
      v33 = v43;
      v34 = 1024;
      v35 = v8;
      v21 = "bad hex address: %s, at line %d of bootptab";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, v32, 0x12u);
    goto LABEL_52;
  }

  v7 = 0;
  v26 = 0;
LABEL_57:
  fclose(v3);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 67109376;
    v38 = v26;
    v39 = 1024;
    v40 = v7 - v26;
    v22 = "Loaded %d entries from bootptab (%d bad)";
    v23 = v37;
    v24 = OS_LOG_TYPE_DEFAULT;
    v25 = 14;
LABEL_59:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v24, v22, v23, v25);
  }
}

void sub_100005478(_BYTE **a1, int a2, _BYTE *a3, int a4)
{
  for (i = *a1; ; ++i)
  {
    v8 = *i;
    if (v8 != 9 && v8 != 32)
    {
      break;
    }
  }

  if (*i)
  {
    for (j = a3; ; ++j)
    {
      if (v8 <= 0x20u && ((1 << v8) & 0x100000201) != 0)
      {
        *j = 0;
        goto LABEL_13;
      }

      *j = v8;
      if (a4 <= 2)
      {
        break;
      }

      v10 = *++i;
      LOBYTE(v8) = v10;
      --a4;
    }

    j[1] = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = a3;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "string truncated: %s, on line %d of bootptab", &v11, 0x12u);
    }
  }

  else
  {
    *a3 = 0;
  }

LABEL_13:
  *a1 = i;
}

uint64_t sub_1000055BC(int a1, void *a2, unsigned int a3, unsigned int (*a4)(uint64_t, void), uint64_t a5, _DWORD *a6, char **a7, char **a8)
{
  v8 = qword_10001D808;
  if (!qword_10001D808)
  {
    return 0;
  }

  v17 = a3;
  while (*(v8 + 20) != a1 || *(v8 + 21) != a3 || bcmp(a2, (v8 + 22), v17) || a4 && !a4(a5, *(v8 + 16)))
  {
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (a7)
  {
    *a7 = strdup(*(v8 + 280));
  }

  if (a8)
  {
    *a8 = strdup(*(v8 + 288));
  }

  *a6 = *(v8 + 16);
  return 1;
}

uint64_t sub_1000056A4(int a1, char **a2, char **a3)
{
  v3 = qword_10001D808;
  if (!qword_10001D808)
  {
    return 0;
  }

  while (*(v3 + 16) != a1)
  {
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = strdup(*(v3 + 280));
  }

  if (a3)
  {
    *a3 = strdup(*(v3 + 288));
  }

  return 1;
}

uint64_t sub_10000571C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10000F368(a1);
  sub_10000F37C(a1, 104857600);
  if (sub_10000F4B4(a1, "/var/db/dhcpd_leases"))
  {
    return 1;
  }

  sub_10000F420(a1);
  result = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_100005784(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, in_addr *a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v22.s_addr = 0;
    v9 = sub_1000100A0(*v5, v5[1], "ip_address", 0) << 32;
    if (v9 != 0xFFFFFFFF00000000)
    {
      v10 = v5[1] + 24 * SHIDWORD(v9);
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      if (v12)
      {
        if (inet_aton(**(v11 + 8), &v22) && sub_100003914(v22.s_addr, a3, a2))
        {
          v13 = sub_1000100A0(*v5, v5[1], "lease", 0) << 32;
          if (v13 == 0xFFFFFFFF00000000)
          {
            break;
          }

          v14 = v5[1] + 24 * SHIDWORD(v13);
          v16 = *(v14 + 8);
          v15 = v14 + 8;
          if (v16)
          {
            v17 = strtol(**(v15 + 8), 0, 0);
            if ((v17 != 0x7FFFFFFFFFFFFFFFLL || *__error() != 34) && *a4 > v17)
            {
              break;
            }
          }
        }
      }
    }

    v5 = v5[5];
    if (!v5)
    {
      return 0;
    }
  }

  v23 = v5;
  sub_100005970(&v23);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v19.s_addr = v22.s_addr;
    v20 = inet_ntoa(v19);
    *buf = 136315138;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "dhcp: reclaimed address %s", buf, 0xCu);
  }

  a5->s_addr = v22.s_addr;
  return 1;
}

uint64_t sub_100005970(uint64_t *a1)
{
  v2 = *a1;
  sub_10000F9EC(&xmmword_10001D818, *a1);
  sub_10000F324(v2);
  *a1 = 0;
  sub_10000F864(&xmmword_10001D818, "/var/db/dhcpd_leases");

  return notify_post("com.apple.bootpd.DHCPLeaseList");
}

uint64_t sub_1000059E4(uint64_t a1)
{
  v4 = 0;
  v1 = sub_1000096B8(a1, 57, &v4, 0);
  result = 548;
  if (v1 && v4 == 2)
  {
    v3 = bswap32(*v1) >> 16;
    if (v3 <= 0x224)
    {
      return 548;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void sub_100005A44()
{
  if (byte_10001D810)
  {
    v0 = 0uLL;
    v1 = 0;
    if (sub_10000571C(&v0))
    {
      sub_10000F420(&xmmword_10001D818);
      xmmword_10001D818 = v0;
      qword_10001D828 = v1;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v3 = HIDWORD(qword_10001D828);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "dhcp: re-reading lease list (%d entries)", buf, 8u);
      }
    }
  }

  else if (sub_10000571C(&xmmword_10001D818))
  {
    byte_10001D810 = 1;
  }
}

uint64_t sub_100005B44(uint64_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t *a6)
{
  v8 = a1;
  __src = a3;
  v10 = a5[1];
  v9 = a5[2];
  *a1 = *a5;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  v11 = a5[3];
  v12 = a5[4];
  v13 = a5[6];
  *(a1 + 80) = a5[5];
  *(a1 + 96) = v13;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  v14 = a5[7];
  v15 = a5[8];
  v16 = a5[10];
  *(a1 + 144) = a5[9];
  *(a1 + 160) = v16;
  *(a1 + 112) = v14;
  *(a1 + 128) = v15;
  v17 = a5[11];
  v18 = a5[12];
  v19 = a5[13];
  *(a1 + 220) = *(a5 + 220);
  *(a1 + 192) = v18;
  *(a1 + 208) = v19;
  *(a1 + 176) = v17;
  *(a1 + 20) = a3;
  *(a1 + 3) = 0;
  *(a1 + 8) = 0;
  *a1 = 2;
  *(a1 + 236) = 1666417251;
  sub_1000099C4(a6, (a1 + 240), a2 - 240);
  if (sub_100009C2C(a6, a4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      LODWORD(v26[0]) = a4;
      WORD2(v26[0]) = 2080;
      *(v26 + 6) = sub_100009C5C(a6);
      v20 = "make_dhcp_reply: couldn't add dhcp message tag %d: %s";
      v21 = 18;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v20, buf, v21);
      return 0;
    }

    return 0;
  }

  if (sub_100009A44(a6, 54, 4, &__src))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v22 = sub_100009C5C(a6);
      *buf = 136315138;
      v26[0] = v22;
      v20 = "make_dhcp_reply: couldn't add server identifier tag: %s";
      v21 = 12;
      goto LABEL_7;
    }

    return 0;
  }

  return v8;
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  result = qword_10001C508;
  if (qword_10001C508)
  {
    if (a1)
    {
      *a4 = a1;

      return SubnetListAcquireAddress(result, a4, sub_100008238, a3);
    }

    else if (sub_10000CA74(a2) < 1)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        *a4 = *(sub_10000CA7C(a2, v9) + 8);
        result = SubnetListAcquireAddress(qword_10001C508, a4, sub_100008238, a3);
        if (result)
        {
          break;
        }

        v9 = (v9 + 1);
        if (v9 >= sub_10000CA74(a2))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100005E88(const char *a1, const char *a2, in_addr a3, uint64_t a4, int a5, uint64_t a6)
{
  v19 = 0;
  v20 = 0;
  if (a4)
  {
    v10 = sub_100008150(a4, a5);
    *&__str[8] = 0;
    v26 = 0;
    *__str = "name";
    if (v10)
    {
      sub_1000101A8(&__str[8], v10, 0);
    }

    v23 = *__str;
    v24 = v26;
    sub_10000FD30(&v19, &v23, 0);
    sub_10001013C(&__str[8]);
    free(v10);
  }

  v11.s_addr = a3.s_addr;
  v12 = inet_ntoa(v11);
  v13 = v19;
  *&__str[8] = 0;
  v26 = 0;
  *__str = "ip_address";
  if (v12)
  {
    sub_1000101A8(&__str[8], v12, 0);
  }

  v23 = *__str;
  v24 = v26;
  sub_10000FD30(&v19, &v23, v13);
  sub_10001013C(&__str[8]);
  v14 = v19;
  *&__str[8] = 0;
  v26 = 0;
  *__str = "hw_address";
  if (a2)
  {
    sub_1000101A8(&__str[8], a2, 0);
  }

  v23 = *__str;
  v24 = v26;
  sub_10000FD30(&v19, &v23, v14);
  sub_10001013C(&__str[8]);
  v15 = v19;
  *&__str[8] = 0;
  v26 = 0;
  *__str = "identifier";
  if (a1)
  {
    sub_1000101A8(&__str[8], a1, 0);
  }

  v23 = *__str;
  v24 = v26;
  sub_10000FD30(&v19, &v23, v15);
  sub_10001013C(&__str[8]);
  snprintf(__str, 0x80uLL, "0x%lx", a6);
  v16 = v19;
  *(&v23 + 1) = 0;
  v24 = 0;
  *&v23 = "lease";
  sub_1000101A8(&v23 + 2, __str, 0);
  v21 = v23;
  v22 = v24;
  sub_10000FD30(&v19, &v21, v16);
  sub_10001013C(&v23 + 1);
  v17 = sub_10000F2C0(v19, v20);
  sub_10000F480(&xmmword_10001D818, v17);
  sub_10000F864(&xmmword_10001D818, "/var/db/dhcpd_leases");
  sub_10000FF24(&v19);
  return notify_post("com.apple.bootpd.DHCPLeaseList");
}

void sub_100006118(uint64_t *a1, int a2, int a3)
{
  memset(v195, 0, sizeof(v195));
  *v194 = 0;
  v193 = 0;
  v192 = 0;
  __src = 0;
  v189 = 0;
  memset(v208, 0, sizeof(v208));
  v188 = 0;
  v6 = a1[1];
  if (byte_10001C20A)
  {
    v7 = &v195[1];
  }

  else
  {
    v7 = 0;
  }

  v191.s_addr = 0;
  v8 = sub_1000059E4(a1[3]);
  if (v8 >= 0x5DC)
  {
    v9 = 1500;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1000096B8(a1[3], 61, v195, 0);
  if (!v10 || v195[0] < 2 || (v11 = v10 + 1, v12 = *v10, v13 = v195[0] - 1, --v195[0], byte_10001C209 == 1) && *(v6 + 2))
  {
    v12 = *(v6 + 1);
    v13 = *(v6 + 2);
    v195[0] = v13;
    if (!v13)
    {
      v15 = 0;
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }

    v11 = (v6 + 28);
  }

  v14 = identifierToStringWithBuffer(v12, v11, v13, __str, 128);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

  v186 = v14;
  if (!v12)
  {
    v186 = identifierToStringWithBuffer(*(v6 + 1), v6 + 28, *(v6 + 2), v206, 48);
    if (!v186)
    {
      goto LABEL_22;
    }
  }

  v182 = a3;
  v16 = sub_1000096B8(a1[3], 12, &v193, 0);
  v17 = v193;
  v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  v184 = v16;
  if (v16 && v17)
  {
    if (!v18)
    {
      goto LABEL_42;
    }

    if (a2 > 8)
    {
      v19 = "<unknown>";
    }

    else
    {
      v19 = off_100018650[a2];
    }

    v25 = nullsub_1(*a1);
    *buf = 136316162;
    *v204 = v19;
    *&v204[8] = 2080;
    *&v204[10] = v25;
    *&v204[18] = 2080;
    *&v204[20] = v15;
    *&v204[28] = 1040;
    *&v204[30] = v193;
    *&v204[34] = 2080;
    v205[0] = v16;
    v23 = "DHCP %s [%s]: %s <%.*s>";
    v24 = 48;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_42;
    }

    if (a2 > 8)
    {
      v21 = "<unknown>";
    }

    else
    {
      v21 = off_100018650[a2];
    }

    v22 = nullsub_1(*a1);
    *buf = 136315650;
    *v204 = v21;
    *&v204[8] = 2080;
    *&v204[10] = v22;
    *&v204[18] = 2080;
    *&v204[20] = v15;
    v23 = "DHCP %s [%s]: %s";
    v24 = 32;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v23, buf, v24);
LABEL_42:
  v26 = v9 - 28;
  v181 = sub_1000096B8(a1[3], 51, &v189 + 1, 0);
  if (v12)
  {
    *&v204[4] = *a1;
    v27 = *(v6 + 12);
    *buf = *(v6 + 24);
    *v204 = v27;
    v28 = sub_1000055BC(v12, v11, v195[0], sub_100003C04, buf, &v191, &v192, v7);
    v29 = *&v204[12] == 1;
    if (v28)
    {
      v180 = *&v204[12] == 1;
      v30 = 0;
      v31 = 1;
LABEL_45:
      v32 = 0;
      __src = -1;
      v33 = 1;
      v34 = -1;
      goto LABEL_64;
    }
  }

  else
  {
    v29 = 0;
  }

  v187 = 0;
  *&v204[4] = *a1;
  *&v204[12] = 0;
  v35 = *(v6 + 12);
  *buf = *(v6 + 24);
  *v204 = v35;
  v36 = sub_10000FAAC(&xmmword_10001D818, v15, sub_100003C04, buf, &v191, &v187);
  v30 = v36;
  *v194 = v36;
  if (v187 == 1)
  {
    v29 = 1;
  }

  v33 = v36 == 0;
  v180 = v29;
  if (!v36)
  {
    goto LABEL_63;
  }

  if (!qword_10001C508 || (SubnetForAddress = SubnetListGetSubnetForAddress(qword_10001C508, v191.s_addr, 1)) == 0)
  {
    v30 = 0;
LABEL_60:
    sub_100005970(v194);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v40.s_addr = v191.s_addr;
      v41 = inet_ntoa(v40);
      *v196 = 136315394;
      *v197 = v15;
      *&v197[8] = 2080;
      v198 = v41;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "dhcpd: removing %s binding for %s", v196, 0x16u);
    }

    *v194 = 0;
LABEL_63:
    v31 = 0;
    v34 = 0;
    v32 = 1;
    goto LABEL_64;
  }

  v178 = SubnetForAddress;
  if ((SubnetDoesAllocate(SubnetForAddress) & 1) == 0)
  {
    v30 = v178;
    goto LABEL_60;
  }

  v175 = v26;
  v38 = *v30;
  if (!v38)
  {
    goto LABEL_190;
  }

  v39 = (*(v30 + 1) + 16);
  while (strcmp("lease", *(v39 - 2)))
  {
    v39 += 3;
    if (!--v38)
    {
      goto LABEL_190;
    }
  }

  if (!*(v39 - 2) || (v108 = **v39) == 0)
  {
LABEL_190:
    sub_10000FA44(&xmmword_10001D818, v30);
    v31 = 2;
    v26 = v175;
    goto LABEL_191;
  }

  v109 = strtol(v108, 0, 0);
  if (v109 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v136 = v109;
    sub_10000FA44(&xmmword_10001D818, v30);
    v110 = v136;
    v26 = v175;
    if (v136 != -1)
    {
      goto LABEL_278;
    }

    v31 = 2;
LABEL_191:
    v30 = v178;
    goto LABEL_45;
  }

  v26 = v175;
  if (*__error() == 34)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v196 = 136315138;
      *v197 = v108;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "S_lease_time_expiry: lease '%s' bad", v196, 0xCu);
    }

    v110 = 0;
  }

  else
  {
    v110 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_10000FA44(&xmmword_10001D818, v30);
LABEL_278:
  MaxLease = SubnetGetMaxLease(v178);
  MinLease = SubnetGetMinLease(v178);
  if (!v181)
  {
    v150 = *a1[5];
    v34 = v110;
    if (v150 + MinLease < v110)
    {
      v32 = 0;
      __src = v110 - v150;
      goto LABEL_307;
    }

LABEL_284:
    v32 = 0;
    __src = MinLease;
    goto LABEL_307;
  }

  v149 = bswap32(*v181);
  __src = v149;
  v34 = v110;
  if (v149 <= MaxLease)
  {
    if (v149 >= MinLease)
    {
      v32 = 0;
      goto LABEL_307;
    }

    goto LABEL_284;
  }

  v32 = 0;
  __src = MaxLease;
LABEL_307:
  v33 = 1;
  v31 = 2;
  v30 = v178;
LABEL_64:
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v185 = v31;
      v60 = v32;
      v61 = qword_10001D830;
      v20 = v186;
      if (qword_10001D830)
      {
        v62 = v195[0];
        while (*(v61 + 20) != v12 || v62 != *(v61 + 21) || bcmp(v11, (v61 + 22), v62))
        {
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_201;
          }
        }

        hostfree(&qword_10001D830, v61);
      }

LABEL_201:
      if (sub_100007ED4(*a1, a1[3]))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "client IPv6-only preferred", buf, 2u);
        }

        v114 = v26;
        s_addr = 0;
        v191.s_addr = 0;
        v116 = 3600;
      }

      else
      {
        if (v60)
        {
          if (!v182)
          {
            goto LABEL_23;
          }

          v117 = v26;
          v118 = sub_100005D94(*(v6 + 24), *a1, a1[5], &v191.s_addr);
          if (!v118 && (!sub_100005784(&xmmword_10001D818, *a1, *(v6 + 24), a1[5], &v191) || !qword_10001C508 || (v118 = SubnetListGetSubnetForAddress(qword_10001C508, v191.s_addr, 1)) == 0))
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            *buf = 0;
            v93 = "no ip addresses";
            v94 = buf;
            v95 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_245;
          }

          v119 = v118;
          v120 = SubnetGetMaxLease(v118);
          v121 = SubnetGetMinLease(v119);
          if (v181)
          {
            v122 = bswap32(*v181);
            __src = v122;
            v26 = v117;
            if (v122 <= v120)
            {
              if (v122 < v121)
              {
                __src = v121;
              }
            }

            else
            {
              __src = v120;
            }
          }

          else
          {
            __src = v121;
            v26 = v117;
          }
        }

        v137 = hostadd(&qword_10001D830, a1[5], v12, v11, v195[0], &v191, 0, 0);
        if (!v137)
        {
          goto LABEL_23;
        }

        v114 = v26;
        v116 = __src;
        s_addr = v191.s_addr;
        *(v137 + 39) = __src;
      }

      v45 = v185;
      __src = bswap32(v116);
      v138 = *a1;
      v139 = sub_10000CAF4(*a1, s_addr);
      if (v139 == -1)
      {
        v140 = sub_10000CA84(v138);
      }

      else
      {
        v140 = *sub_10000CA7C(v138, v139);
      }

      v188 = 2;
      v141 = sub_100005B44(buf, v114, v140, 2, v6, v208);
      if (!v141)
      {
        goto LABEL_23;
      }

      v65 = v141;
      v142 = v191.s_addr;
      *(v141 + 12) = 0;
      *(v141 + 16) = v142;
      if (*&v195[1])
      {
        __strlcpy_chk();
      }

      if (!sub_100009A44(v208, 51, 4, &__src))
      {
        v63 = 0;
        v64 = 3;
        goto LABEL_154;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

LABEL_336:
      v172 = sub_100009C5C(v208);
      *v196 = 136315138;
      *v197 = v172;
      v93 = "dhcpd: couldn't add lease time tag: %s";
LABEL_337:
      v94 = v196;
      v95 = OS_LOG_TYPE_INFO;
LABEL_338:
      v96 = 12;
      goto LABEL_339;
    }

    if (a2 != 3)
    {
      goto LABEL_90;
    }

    v173 = v34;
    v174 = v32;
    v179 = v30;
    v187 = 0;
    v183 = sub_1000096B8(a1[3], 54, &v187, 0);
    v47 = sub_1000096B8(a1[3], 50, &v187, 0);
    v48 = v47;
    v49 = v26;
    if (v47)
    {
      v50 = *v47;
    }

    else
    {
      v50 = 0;
    }

    v67 = *a1;
    v68 = sub_10000CAF4(*a1, v50);
    if (v68 == -1)
    {
      v177 = sub_10000CA84(v67);
    }

    else
    {
      v177 = *sub_10000CA7C(v67, v68);
    }

    v69 = v49;
    if (v183)
    {
      v70 = qword_10001D830;
      v176 = v69;
      if (qword_10001D830)
      {
        v71 = v195[0];
        v20 = v186;
        do
        {
          if (*(v70 + 20) == v12 && v71 == *(v70 + 21) && !bcmp(v11, (v70 + 22), v71))
          {
            break;
          }

          v70 = *v70;
        }

        while (v70);
        v72 = v31;
      }

      else
      {
        v72 = v31;
        v20 = v186;
      }

      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "SELECT", buf, 2u);
      }

      v74 = *v183;
      if (*v183 != v177)
      {
        if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v80.s_addr = v74;
          v81 = inet_ntoa(v80);
          *buf = 136315138;
          *v204 = v81;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "client selected %s", buf, 0xCu);
        }

        if (v70)
        {
          hostfree(&qword_10001D830, v70);
        }

        if (v72 == 2)
        {
          sub_100005970(v194);
        }

        if (sub_100000D40(*a1))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v82.s_addr = *v183;
            v83 = inet_ntoa(v82);
            v84 = nullsub_1(*a1);
            *buf = 136315394;
            *v204 = v83;
            *&v204[8] = 2080;
            *&v204[10] = v84;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "dhcpd: detected another DHCP server %s, disabling DHCP on %s", buf, 0x16u);
          }

          sub_100000D70(*a1);
        }

        goto LABEL_23;
      }

      if (v70)
      {
        v75 = 0;
      }

      else
      {
        v75 = v174;
      }

      if (v75)
      {
        goto LABEL_23;
      }

      if (v70)
      {
        v191.s_addr = *(v70 + 16);
        v76 = *(v70 + 312);
        v173 = 0xFFFFFFFFLL;
        if (v76 != 0xFFFFFFFFLL)
        {
          v173 = *a1[5] + v76;
        }

        __src = *(v70 + 312);
      }

      if (v48)
      {
        v77 = *v48;
        if (*v48 == v191.s_addr)
        {
          if ((v174 & 1) == 0)
          {
            if (v72 == 2)
            {
              if (v184 && v193 > 0)
              {
                v45 = 2;
                v143 = sub_100008150(v184, v193);
                v144 = *v194;
                sub_10001026C(*v194, "name", v143, &v189);
                free(v143);
              }

              else
              {
                v45 = 2;
                v144 = *v194;
              }

              sub_100005D0C(v144, v173, &v189);
            }

            else
            {
              v45 = v72;
            }

            goto LABEL_310;
          }

          v78 = v179;
          if (qword_10001C508)
          {
            v78 = SubnetListGetSubnetForAddress(qword_10001C508, *v48, 1);
          }

          v45 = v72;
          if (v78)
          {
            v79.s_addr = v191.s_addr;
            sub_100005E88(v15, v20, v79, v184, v193, v173);
LABEL_310:
            v73 = 4;
            v69 = v176;
LABEL_332:
            __src = bswap32(__src);
            v188 = 5;
            v65 = sub_100005B44(buf, v69, v177, 5, v6, v208);
            *(v65 + 16) = v191;
            if (*&v195[1])
            {
              __strlcpy_chk();
            }

            if (sub_100009A44(v208, 51, 4, &__src))
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                goto LABEL_23;
              }

              goto LABEL_336;
            }

            v63 = 0;
LABEL_341:
            v64 = v73;
            goto LABEL_154;
          }

          v155 = sub_100007F58(buf, v176, v177, &v188, "unexpected server failure", v6, v208);
          if (!v155)
          {
            goto LABEL_23;
          }

          v65 = v155;
          v63 = 0;
LABEL_239:
          v64 = 4;
          goto LABEL_154;
        }

        v45 = v72;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v133.s_addr = v77;
          v134 = inet_ntoa(v133);
          *buf = 136316418;
          *v204 = v15;
          *&v204[8] = 2080;
          *&v204[10] = v134;
          *&v204[18] = 1024;
          *&v204[20] = LOBYTE(v191.s_addr);
          *&v204[24] = 1024;
          *&v204[26] = BYTE1(v191.s_addr);
          *&v204[30] = 1024;
          *&v204[32] = BYTE2(v191.s_addr);
          LOWORD(v205[0]) = 1024;
          *(v205 + 2) = HIBYTE(v191.s_addr);
          v125 = "dhcpd: host %s sends SELECT with wrong IP address %s, should be %d.%d.%d.%d";
          v126 = 46;
          goto LABEL_236;
        }
      }

      else
      {
        v45 = v72;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *v204 = v15;
          v125 = "dhcpd: host %s sends SELECT without Requested IP option";
          v126 = 12;
LABEL_236:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v125, buf, v126);
        }
      }

      v135 = sub_100007F58(buf, v176, v177, &v188, "protocol error in SELECT state", v6, v208);
      if (!v135)
      {
        goto LABEL_23;
      }

      v65 = v135;
      v63 = 1;
      goto LABEL_239;
    }

    if (sub_100007ED4(*a1, a1[3]))
    {
      v45 = v31;
      __src = 3600;
      v191.s_addr = 0;
      v73 = 0;
      v20 = v186;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "client IPv6-only preferred", buf, 2u);
        v73 = 0;
      }

      goto LABEL_332;
    }

    if (v48)
    {
      v111 = v179;
      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "init-reboot", buf, 2u);
      }

      if (v174)
      {
        if (v33)
        {
          v20 = v186;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          v112.s_addr = *v48;
          v113 = inet_ntoa(v112);
          *buf = 136315394;
          *v204 = v15;
          *&v204[8] = 2080;
          *&v204[10] = v113;
          v93 = "dhcpd: INIT-REBOOT host %s binding for %s with another server";
          v94 = buf;
          v95 = OS_LOG_TYPE_DEBUG;
          v96 = 22;
          goto LABEL_339;
        }

        v45 = v31;
        v73 = 6;
        v145 = "requested address no longer available";
        goto LABEL_271;
      }

      v45 = v31;
      v73 = 6;
      if (*v48 != v191.s_addr)
      {
        v145 = "requested address incorrect";
LABEL_271:
        v20 = v186;
LABEL_272:
        v146 = sub_100007F58(buf, v69, v177, &v188, v145, v6, v208);
        if (!v146)
        {
          goto LABEL_23;
        }

        v65 = v146;
        v63 = 1;
        goto LABEL_341;
      }

      v20 = v186;
LABEL_316:
      if (v45 == 1)
      {
        __src = -1;
        goto LABEL_332;
      }

      v159 = v69;
      if (v184 && v193 >= 1)
      {
        v160 = sub_100008150(v184, v193);
        sub_10001026C(*v194, "name", v160, &v189);
        free(v160);
      }

      v161 = SubnetGetMaxLease(v111);
      v162 = v111;
      v163 = v161;
      v164 = SubnetGetMaxLease(v162);
      v165 = v164;
      if (v181)
      {
        v166 = bswap32(*v181);
        __src = v166;
        if (v166 > v163)
        {
          __src = v163;
          v166 = v163;
          goto LABEL_329;
        }

        if (v166 < v164)
        {
          __src = v164;
          v166 = v164;
        }
      }

      else
      {
        __src = v164;
        v167 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
        v166 = v165;
        if (v167)
        {
          v168.s_addr = v191.s_addr;
          v169 = inet_ntoa(v168);
          v170 = off_100018698[v73];
          *buf = 136315394;
          *v204 = v169;
          *&v204[8] = 2080;
          *&v204[10] = v170;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "dhcpd: %s lease extended to %s client", buf, 0x16u);
          v166 = __src;
        }
      }

      if (v166 == -1)
      {
        v171 = -1;
        goto LABEL_331;
      }

LABEL_329:
      v171 = *a1[5] + v166;
LABEL_331:
      v69 = v159;
      sub_100005D0C(*v194, v171, &v189);
      goto LABEL_332;
    }

    v111 = v179;
    if (!*(v6 + 12))
    {
      v20 = v186;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      *buf = 136315138;
      *v204 = v15;
      v93 = "dhcpd: host %s in unknown state";
      v94 = buf;
      v95 = OS_LOG_TYPE_DEBUG;
      goto LABEL_338;
    }

    v130 = v69;
    if (byte_10001C208 == 1)
    {
      v131 = a1[4];
      if (!v131 || *v131 == -1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v132 = "rebind";
          goto LABEL_288;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v132 = "renew";
LABEL_288:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v132, buf, 2u);
      }
    }

    if (!v174)
    {
      v152 = a1[4];
      if (!v152 || *v152 == -1 || *(v6 + 24))
      {
        v45 = v31;
        v153 = *(v6 + 12);
        v154 = v191.s_addr;
        v20 = v186;
        if (v153 != v191.s_addr)
        {
          if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110912;
            *v204 = v153;
            *&v204[4] = 1024;
            *&v204[6] = BYTE1(v153);
            *&v204[10] = 1024;
            *&v204[12] = BYTE2(v153);
            *&v204[16] = 1024;
            *&v204[18] = HIBYTE(v153);
            *&v204[22] = 1024;
            *&v204[24] = v154;
            *&v204[28] = 1024;
            *&v204[30] = BYTE1(v154);
            *&v204[34] = 1024;
            LODWORD(v205[0]) = BYTE2(v154);
            WORD2(v205[0]) = 1024;
            *(v205 + 6) = HIBYTE(v154);
            v93 = "Incorrect ciaddr %d.%d.%d.%d should be %d.%d.%d.%d";
            v94 = buf;
            v95 = OS_LOG_TYPE_DEBUG;
            v96 = 50;
            goto LABEL_339;
          }

          goto LABEL_23;
        }

        v73 = 8;
        v111 = v179;
      }

      else
      {
        v45 = v31;
        v156 = *(v6 + 12);
        if (v156 != v191.s_addr)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v157.s_addr = v156;
            v158 = inet_ntoa(v157);
            *buf = 136316162;
            *v204 = v158;
            *&v204[8] = 1024;
            *&v204[10] = LOBYTE(v191.s_addr);
            *&v204[14] = 1024;
            *&v204[16] = BYTE1(v191.s_addr);
            *&v204[20] = 1024;
            *&v204[22] = BYTE2(v191.s_addr);
            *&v204[26] = 1024;
            *&v204[28] = HIBYTE(v191.s_addr);
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "dhcpd: client ciaddr=%s should use %d.%d.%d.%d", buf, 0x24u);
            v156 = *(v6 + 12);
          }

          v191.s_addr = v156;
        }

        v73 = 7;
        v20 = v186;
        v69 = v130;
      }

      goto LABEL_316;
    }

    if (!v33)
    {
      v45 = v31;
      v73 = 0;
      v145 = "requested address no longer available";
      v20 = v186;
      goto LABEL_272;
    }

    v20 = v186;
    if (byte_10001C208 != 1)
    {
      goto LABEL_23;
    }

    v151 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v180)
    {
      if (!v151)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v93 = "Client binding is not applicable";
    }

    else
    {
      if (!v151)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v93 = "No binding for client";
    }

    v94 = buf;
    v95 = OS_LOG_TYPE_DEBUG;
LABEL_245:
    v96 = 2;
    goto LABEL_339;
  }

  if (a2 == 4)
  {
    *v196 = 0;
    v51 = sub_1000096B8(a1[3], 54, v196, 0);
    v52 = sub_1000096B8(a1[3], 50, v196, 0);
    v20 = v186;
    if (!v51)
    {
      goto LABEL_23;
    }

    v53 = v52;
    if (!v52)
    {
      goto LABEL_23;
    }

    v54 = *a1;
    v55 = sub_10000CAF4(*a1, *v52);
    if (v55 == -1)
    {
      v56 = sub_10000CA84(v54);
    }

    else
    {
      v56 = *sub_10000CA7C(v54, v55);
    }

    if (*v51 != v56)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      v102.s_addr = *v53;
      v103 = inet_ntoa(v102);
      v104 = *v51;
      v105 = v51[1];
      v106 = v51[2];
      v107 = v51[3];
      *buf = 136316418;
      *v204 = v15;
      *&v204[8] = 2080;
      *&v204[10] = v103;
      *&v204[18] = 1024;
      *&v204[20] = v104;
      *&v204[24] = 1024;
      *&v204[26] = v105;
      *&v204[30] = 1024;
      *&v204[32] = v106;
      LOWORD(v205[0]) = 1024;
      *(v205 + 2) = v107;
      v93 = "dhcpd: host %s declines IP %s from server %d.%d.%d.%d";
      v94 = buf;
      v95 = OS_LOG_TYPE_DEBUG;
      v96 = 46;
      goto LABEL_339;
    }

    if (v31 == 2 && v191.s_addr == *v53)
    {
      v85 = *v194;
      sub_100010380(*v194, "identifier", &v189);
      sub_100005D0C(v85, *a1[5] + 600, &v189);
      sub_10001026C(v85, "declined", v15, &v189);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v86.s_addr = v191.s_addr;
        v87 = inet_ntoa(v86);
        *buf = 136315394;
        *v204 = v87;
        *&v204[8] = 2080;
        *&v204[10] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "dhcpd: IP %s declined by %s", buf, 0x16u);
      }

      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v88.s_addr = v191.s_addr;
        v89 = inet_ntoa(v88);
        *buf = 136315138;
        *v204 = v89;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "marking host %s as declined", buf, 0xCu);
      }
    }

    v45 = v31;
    goto LABEL_153;
  }

  if (a2 == 7)
  {
    if (v31 == 2)
    {
      v45 = 2;
      v20 = v186;
      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v57.s_addr = v191.s_addr;
        v58 = inet_ntoa(v57);
        *buf = 136315138;
        *v204 = v58;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s released by client, setting expiration to now", buf, 0xCu);
      }

      v59 = *v194;
      snprintf(buf, 0x20uLL, "0x%lx", *a1[5]);
      sub_10001026C(v59, "lease", buf, &v189);
      goto LABEL_153;
    }

LABEL_93:
    v45 = v31;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v20 = v186;
    goto LABEL_154;
  }

  if (a2 != 8)
  {
LABEL_90:
    if (byte_10001C208 == 1)
    {
      v45 = v31;
      v20 = v186;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "unknown message ignored", buf, 2u);
      }

LABEL_153:
      v63 = 0;
      v64 = 0;
      v65 = 0;
      goto LABEL_154;
    }

    goto LABEL_93;
  }

  v42 = v26;
  v191.s_addr = *(v6 + 12);
  v43 = *a1;
  v44 = sub_10000CAF4(*a1, v191.s_addr);
  v45 = v31;
  if (v44 == -1)
  {
    v46 = sub_10000CA84(v43);
  }

  else
  {
    v46 = *sub_10000CA7C(v43, v44);
  }

  v20 = v186;
  v188 = 5;
  v66 = sub_100005B44(buf, v42, v46, 5, v6, v208);
  if (!v66)
  {
    goto LABEL_23;
  }

  v65 = v66;
  v63 = 0;
  v64 = 0;
LABEL_154:
  if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v90 = off_100018698[v64];
    *v196 = 136315138;
    *v197 = v90;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "state=%s", v196, 0xCu);
  }

  if (v45 == 2 && v189 && !sub_10000F864(&xmmword_10001D818, "/var/db/dhcpd_leases"))
  {
    goto LABEL_23;
  }

  v91 = bswap32(*(v6 + 8));
  v92 = dword_10001C204;
  if (dword_10001C204 <= HIWORD(v91))
  {
    if (!v65)
    {
      goto LABEL_23;
    }

    if (v188 != 5 && v188 != 2)
    {
      goto LABEL_174;
    }

    v187 = 0;
    v97 = sub_1000096B8(a1[3], 55, &v187, 0);
    if (!*&v195[1])
    {
      *(v65 + 220) = 0u;
      *(v65 + 204) = 0u;
      *(v65 + 188) = 0u;
      *(v65 + 172) = 0u;
      *(v65 + 156) = 0u;
      *(v65 + 140) = 0u;
      *(v65 + 124) = 0u;
      *(v65 + 108) = 0u;
    }

    __strlcpy_chk();
    if (v97)
    {
      sub_100003FC8(v192, v191.s_addr, *a1, v208, v97, v187);
    }

    if (!sub_100009A44(v208, 255, 0, 0))
    {
LABEL_174:
      v99 = sub_100009C04(v208) + 240;
      if (v99 <= 0x12C)
      {
        v100 = 300;
      }

      else
      {
        v100 = v99;
      }

      if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        if (v188 > 8)
        {
          v101 = "<unknown>";
        }

        else
        {
          v101 = off_100018650[v188];
        }

        *v196 = 136315394;
        *v197 = v101;
        *&v197[8] = 1024;
        LODWORD(v198) = v100;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Sending: DHCP %s (size %d)", v196, 0x12u);
      }

      if (sub_100003C5C(*a1, v65, v100, v63, &v191.s_addr))
      {
        v123 = v192;
        if (!v192 && *v194)
        {
          v124 = sub_1000081C8(*v194, "name");
          v192 = v124;
          if (v124)
          {
            v123 = strdup(v124);
            v192 = v123;
          }

          else
          {
            v123 = 0;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          if (v188 > 8)
          {
            v127 = "<unknown>";
          }

          else
          {
            v127 = off_100018650[v188];
          }

          if (!v123)
          {
            v123 = "<no hostname>";
          }

          v128.s_addr = v191.s_addr;
          v129 = inet_ntoa(v128);
          *v196 = 136315906;
          *v197 = v127;
          *&v197[8] = 2080;
          v198 = v123;
          v199 = 2080;
          v200 = v129;
          v201 = 1024;
          v202 = v100;
          v93 = "%s sent %s %s pktsize %d";
          v94 = v196;
          v95 = OS_LOG_TYPE_INFO;
          v96 = 38;
          goto LABEL_339;
        }
      }

      goto LABEL_23;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v98 = sub_100009C5C(v208);
    *v196 = 136315138;
    *v197 = v98;
    v93 = "couldn't add end tag: %s";
    goto LABEL_337;
  }

  if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *v196 = 67109376;
    *v197 = HIWORD(v91);
    *&v197[4] = 1024;
    *&v197[6] = v92;
    v93 = "rp->dp_secs %d < threshold %d";
    v94 = v196;
    v95 = OS_LOG_TYPE_DEBUG;
    v96 = 14;
LABEL_339:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v95, v93, v94, v96);
  }

LABEL_23:
  if (v192)
  {
    free(v192);
  }

  if (*&v195[1])
  {
    free(*&v195[1]);
  }

  if (v15 != __str)
  {
    free(v15);
  }

  if (v20 && v20 != v15 && v20 != v206)
  {
    free(v20);
  }
}

uint64_t sub_100007ED4(uint64_t a1, uint64_t a2)
{
  if (!sub_100000D58(a1))
  {
    return 0;
  }

  v7 = 0;
  v3 = sub_1000096B8(a2, 55, &v7, 0);
  v4 = 0;
  if (v3)
  {
    v5 = v7;
    if (v7 >= 1)
    {
      while (*v3 != 108)
      {
        ++v3;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return v4;
}

uint64_t sub_100007F58(uint64_t a1, int a2, int a3, _DWORD *a4, char *a5, _OWORD *a6, uint64_t *a7)
{
  if (byte_10001C208 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v21 = 136315138;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "sending a NAK: '%s'", &v21, 0xCu);
  }

  v14 = sub_100005B44(a1, a2, a3, 6, a6, a7);
  v15 = v14;
  if (v14)
  {
    *(v14 + 12) = 0;
    *(v14 + 16) = 0;
    if (a5 && (v16 = strlen(a5), sub_100009A44(a7, 56, v16, a5)))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v17 = sub_100009C5C(a7);
      v21 = 136315138;
      v22 = v17;
      v18 = "dhcpd: couldn't add NAK message type: %s";
    }

    else
    {
      if (!sub_100009A44(a7, 255, 0, 0))
      {
        *a4 = 6;
        return v15;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v19 = sub_100009C5C(a7);
      v21 = 136315138;
      v22 = v19;
      v18 = "dhcpd: couldn't add end tag: %s";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v18, &v21, 0xCu);
    return 0;
  }

  return v15;
}

_BYTE *sub_100008150(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc((a2 + 1), 0x8A8F4DCFuLL);
  v5 = 0;
  do
  {
    v6 = *(a1 + v5);
    if (v6 == 10 || v6 == 0)
    {
      LOBYTE(v6) = 46;
    }

    result[v5++] = v6;
  }

  while (a2 != v5);
  result[a2] = 0;
  return result;
}

uint64_t sub_1000081C8(unsigned int *a1, char *__s1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1) + 16; strcmp(__s1, *(i - 16)); i += 24)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  if (*(i - 8))
  {
    return **i;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008238(void *a1, in_addr_t a2)
{
  if (sub_1000056A4(a2, 0, 0) || sub_10000FC50(&xmmword_10001D818, a2))
  {
    return 1;
  }

  v6 = qword_10001D830;
  if (qword_10001D830)
  {
    while (*(v6 + 16) != a2)
    {
      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }

    v7 = *a1 - *(v6 + 296);
    if (v7 <= 0x3B)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v8.s_addr = a2;
        v9 = 136315394;
        v10 = inet_ntoa(v8);
        v11 = 1024;
        v12 = 60 - v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "dhcpd: %s will remain pending %d secs", &v9, 0x12u);
      }

      return 1;
    }

    hostfree(&qword_10001D830, v6);
  }

  return 0;
}

uint64_t sub_100008380(int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  else
  {
    return close(a1);
  }
}

uint64_t sub_100008390()
{
  snprintf(__str, 0x100uLL, "/dev/bpf%d", 0);
  v0 = open(__str, 2, 0);
  if ((v0 & 0x80000000) != 0)
  {
    if (*__error() != 16)
    {
      return v0;
    }

    for (i = 1; ; ++i)
    {
      snprintf(__str, 0x100uLL, "/dev/bpf%d", i);
      v0 = open(__str, 2, 0);
      if ((v0 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 16)
      {
        return v0;
      }
    }
  }

  v3 = 900;
  ioctl(v0, 0x8004427BuLL, &v3);
  return v0;
}

uint64_t sub_10000849C(int a1)
{
  memset(v3, 0, sizeof(v3));
  __strlcpy_chk();
  return ioctl(a1, 0x8020426CuLL, v3);
}

uint64_t sub_100008520(int a1)
{
  v3 = 6;
  v2[1] = &v3;
  v2[0] = 1;
  return ioctl(a1, 0x80104267uLL, v2);
}

void sub_1000085B0(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

CFPropertyListRef sub_1000085E8(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xE6DA7C8BuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreateWithBytesNoCopy(0, v4, st_size, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t sub_1000086E8(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_100008770(const __CFArray *a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  v9 = Count;
  v10 = 8 * Count;
  if (a2)
  {
    if (*a3 < v10)
    {
      return 0;
    }

    v12 = (a2 + v10);
  }

  else
  {
    v12 = 0;
  }

  if (Count >= 1)
  {
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
      TypeID = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID)
      {
        return 0;
      }

      if (a2)
      {
        v16 = *a3 - v10;
        if (v16 < 0)
        {
          return 0;
        }

        v17 = sub_1000086E8(ValueAtIndex, v12, v16, 0);
        *(a2 + 8 * v13) = v12;
        v12 += v17;
      }

      else
      {
        v17 = sub_1000086E8(ValueAtIndex, v12, 0, 0);
      }

      v10 += v17;
    }

    while (v9 != ++v13);
  }

  *a3 = (v10 + 7) & 0xFFFFFFF8;
  *a4 = v9;
  return 1;
}

void *sub_100008888(const __CFArray *a1, _DWORD *a2)
{
  size = 0;
  *a2 = 0;
  if (!sub_100008770(a1, 0, &size, &size + 1))
  {
    return 0;
  }

  v4 = malloc_type_malloc(size, 0x10040436913F5uLL);
  if (!sub_100008770(a1, v4, &size, &size + 1))
  {
    free(v4);
    return 0;
  }

  *a2 = HIDWORD(size);
  return v4;
}

uint64_t sub_100008928(const __CFString *a1, in_addr *a2)
{
  a2->s_addr = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_aton(buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_1000089DC(const __CFString *a1, _DWORD *a2)
{
  sub_1000086E8(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_100008A7C(const __CFString *a1, _DWORD *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFBooleanGetTypeID();
    CFNumberGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return (sub_1000089DC(a1, a2) & 1) != 0;
  }

  v6 = CFBooleanGetTypeID();
  if (CFGetTypeID(a1) != v6)
  {
    v7 = CFNumberGetTypeID();
    if (CFGetTypeID(a1) == v7)
    {
      result = CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

void sub_100008BF4(const __CFArray *a1, const __CFArray *a2, uint64_t (*a3)(const void *, const void *, void))
{
  Count = CFArrayGetCount(a1);
  v7 = CFArrayGetCount(a2);
  v8.length = v7;
  if (Count)
  {
    if (v7)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (CFArrayGetCount(a2) >= 1)
      {
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
          if (CFArrayGetCount(a1) < 1)
          {
LABEL_9:
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else
          {
            v12 = 0;
            while (1)
            {
              v13 = CFArrayGetValueAtIndex(a1, v12);
              if (!a3(v13, ValueAtIndex, 0))
              {
                break;
              }

              if (++v12 >= CFArrayGetCount(a1))
              {
                goto LABEL_9;
              }
            }
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(a2));
      }

      v14 = CFArrayGetCount(Mutable);
      if (v14)
      {
        v16.length = v14;
        v16.location = 0;
        CFArrayAppendArray(a1, Mutable, v16);
      }

      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }

  else
  {
    v8.location = 0;

    CFArrayAppendArray(a1, a2, v8);
  }
}

UInt8 *sub_100008D74(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_100008E2C(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_100008D74(a1, v4, a2);
}

char *sub_100008E8C(unsigned int a1)
{
  if (a1 <= 0xF)
  {
    return &unk_1000186E0 + 24 * a1;
  }

  else
  {
    return 0;
  }
}

void sub_100008EA8(CFMutableStringRef theString, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 > 8)
  {
    if (a2 <= 12)
    {
      if (a2 == 9)
      {
        CFStringAppendFormat(theString, 0, @"%.*s", a4, a3);
      }

      else if (a2 == 10)
      {
        CFStringAppendFormat(theString, 0, @"%d.%d.%d.%d", *a3, a3[1], a3[2], a3[3]);
      }

      return;
    }

    switch(a2)
    {
      case 13:
        v30 = 0;
        v8 = sub_10000A85C(a3, a4, &v30);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v30 >= 1)
          {
            for (i = 0; i < v30; CFStringAppendFormat(theString, 0, @"%s%s", v24, *&v8[8 * i++]))
            {
              if (i)
              {
                v24 = ", ";
              }

              else
              {
                v24 = "";
              }
            }
          }

          goto LABEL_48;
        }

        break;
      case 14:
        v12 = sub_1000109EC(a3, a4);
        if (v12)
        {
          v13 = v12;
          Count = CFArrayGetCount(v12);
          if (Count)
          {
            v15 = Count;
            CFStringAppend(theString, @"{\n");
            if (v15 >= 1)
            {
              for (j = 0; j != v15; ++j)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
                Value = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerName");
                v19 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerPriority");
                v20 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerAddresses");
                v21 = CFDictionaryGetValue(ValueAtIndex, @"EncryptedServerParameters");
                CFStringAppendFormat(theString, 0, @"{ %@ (%@)\n%@\n'%@'\n}", Value, v19, v20, v21);
              }
            }

            CFStringAppend(theString, @"\n}");
          }

          CFRelease(v13);
        }

        return;
      case 15:
        v29 = 0;
        v8 = sub_10000B390(a3, a4, &v29);
        CFStringAppendFormat(theString, 0, @"{");
        if (v8)
        {
          if (v29 >= 1)
          {
            v9 = 0;
            v10 = v8;
            do
            {
              if (v9)
              {
                v11 = "; ";
              }

              else
              {
                v11 = "";
              }

              CFStringAppendFormat(theString, 0, @"%s%d.%d.%d.%d/%d, %d.%d.%d.%d", v11, *v10, v10[1], v10[2], v10[3], *(v10 + 1), v10[8], v10[9], v10[10], v10[11]);
              ++v9;
              v10 += 12;
            }

            while (v9 < v29);
          }

LABEL_48:
          free(v8);
        }

        break;
      default:
        return;
    }

    CFStringAppendFormat(theString, 0, @"}", v25, v26, v27, v28);
    return;
  }

  if (a2 > 3)
  {
    if ((a2 - 5) < 2)
    {
      v7 = bswap32(*a3);
      goto LABEL_26;
    }

    if (a2 == 4)
    {
      v7 = bswap32(*a3) >> 16;
      goto LABEL_26;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        CFStringAppendFormat(theString, 0, @"\n");

        sub_10000D650(theString, a3, v4);
        break;
      case 2:
        if (*a3)
        {
          v22 = "TRUE";
        }

        else
        {
          v22 = "FALSE";
        }

        CFStringAppendFormat(theString, 0, @"%s", v22);
        break;
      case 3:
        v7 = *a3;
LABEL_26:
        CFStringAppendFormat(theString, 0, @"0x%x", v7);
        break;
    }
  }
}

void sub_1000092B4(CFMutableStringRef theString, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a3;
  if (a2 <= 0xF && (v6 = *(&unk_1000186E0 + 6 * a2 + 1)) != 0)
  {
    if (v6 <= 0xF)
    {
      v7 = *(&unk_1000186E0 + 6 * v6);
      v8 = a4 / v7;
      CFStringAppendFormat(theString, 0, @"{");
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (i)
          {
            CFStringAppendFormat(theString, 0, @", ");
          }

          sub_100008EA8(theString, v6, v4, v7);
          v4 += v7;
        }
      }

      CFStringAppendFormat(theString, 0, @"}");
    }
  }

  else
  {

    sub_100008EA8(theString, a2, a3, a4);
  }
}

BOOL sub_1000093F0(CFMutableStringRef theString, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = (&unk_100018860 + 16 * v3);
  v5 = *v4;
  if (*v4 >= 0x10)
  {
    CFStringAppendFormat(theString, 0, @"unknown type %d\n", *v4);
  }

  else
  {
    v7 = a2[1];
    CFStringAppendFormat(theString, 0, @"%s (%s): ", *(v4 + 1), *(&unk_1000186E0 + 3 * v5 + 1));
    if (v3 == 53)
    {
      v8 = a2[2];
      if (v8 > 8)
      {
        v9 = "<unknown>";
      }

      else
      {
        v9 = (&off_100019860)[v8];
      }

      CFStringAppendFormat(theString, 0, @"%s ", v9);
    }

    sub_1000092B4(theString, v5, a2 + 2, v7);
    CFStringAppendFormat(theString, 0, @"\n", v11);
  }

  return v5 < 0x10;
}

char *sub_100009500(unsigned int a1)
{
  if (a1 <= 0xFF)
  {
    return &unk_100018860 + 16 * a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100009518(char *__s2)
{
  v2 = 0;
  for (i = &off_100018868; strcmp(*i, __s2); i += 2)
  {
    if (++v2 == 256)
    {
      if (!strncmp(__s2, "option_", 7uLL))
      {
        v4 = __s2 + 7;
      }

      else
      {
        v4 = __s2;
      }

      v5 = strtoul(v4, 0, 10);
      if (v5 >= 0x101uLL)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t sub_1000095B8(void *a1, unsigned __int8 *a2, int a3, char *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  sub_10000D194(a1);
  if (a3 < 1)
  {
    v8 = 0;
    if ((a3 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v8 = *a2;
    if (*a2)
    {
      break;
    }

    ++a2;
    --a3;
LABEL_9:
    if (a3 <= 0)
    {
      goto LABEL_14;
    }
  }

  if (v8 != 255)
  {
    if (a3 < 2)
    {
      goto LABEL_16;
    }

    v9 = a2[1];
    sub_10000D294(a1, a2);
    a3 -= v9 + 2;
    a2 += v9 + 2;
    goto LABEL_9;
  }

  sub_10000D294(a1, a2);
  --a3;
LABEL_14:
  if ((a3 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_16:
  if (a4)
  {
    snprintf(a4, 0x100uLL, "parse failed near tag %d", v8);
  }

  sub_10000D19C(a1);
  return 0;
}

unsigned __int8 *sub_1000096B8(uint64_t a1, int a2, _DWORD *a3, int *a4)
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
      if (v9 >= sub_10000D1CC(a1))
      {
        return 0;
      }

      v10 = sub_10000D1E8(a1, v9);
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

uint64_t sub_100009768(void *a1, uint64_t a2, unsigned int a3, char *a4)
{
  sub_10000D194(a1);
  if (a4)
  {
    *a4 = 0;
    if (a3 <= 0xEF)
    {
      snprintf(a4, 0x100uLL, "packet is too short: %d < %d", a3, 240);
      return 0;
    }

    if (*(a2 + 236) != 1666417251)
    {
      result = 0;
      strcpy(a4, "missing magic number");
      return result;
    }
  }

  else if (a3 < 0xF0 || *(a2 + 236) != 1666417251)
  {
    return 0;
  }

  result = sub_1000095B8(a1, (a2 + 240), a3 - 240, a4);
  if (result)
  {
    v12 = 0;
    v9 = sub_1000096B8(a1, 52, &v12, 0);
    if (v9 && v12 == 1)
    {
      v10 = v9;
      v11[0] = 0;
      v11[1] = 0;
      sub_10000D194(v11);
      if ((*v10 | 2) == 3 && sub_1000095B8(v11, (a2 + 108), 128, 0))
      {
        sub_10000D418(a1, v11);
        sub_10000D19C(v11);
      }

      if ((*v10 & 0xFE) == 2)
      {
        if (sub_1000095B8(v11, (a2 + 44), 64, 0))
        {
          sub_10000D418(a1, v11);
          sub_10000D19C(v11);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000098FC(__CFString *a1, uint64_t a2)
{
  v4 = sub_10000D1CC(a2);
  CFStringAppendFormat(a1, 0, @"Options count is %d\n", v4);
  result = sub_10000D1CC(a2);
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_10000D1E8(a2, v6);
      if (!sub_1000093F0(a1, v7))
      {
        CFStringAppendFormat(a1, 0, @"undefined tag %d len %d\n", *v7, v7[1]);
      }

      ++v6;
      result = sub_10000D1CC(a2);
    }

    while (v6 < result);
  }

  return result;
}

double sub_1000099C4(uint64_t a1, void *a2, int a3)
{
  bzero(a2, a3);
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 287454020;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 296) = 1;
  return result;
}

uint64_t sub_100009A44(uint64_t a1, int a2, int a3, void *__src)
{
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  if (a3 >= 256)
  {
    snprintf(v5, 0x100uLL, "tag %d option %d > %d", __src);
    return 1;
  }

  if (*a1 != 287454020 || *(a1 + 24))
  {
    __strlcpy_chk();
    return 1;
  }

  v7 = *(a1 + 20);
  if (a2)
  {
    if (a2 == 255)
    {
      if (v7 >= *(a1 + 16))
      {
        v12 = (*(a1 + 296) + v7);
        snprintf(v5, 0x100uLL, "can't add end tag %d > %d", __src);
        return 1;
      }

      *(*(a1 + 8) + v7) = -1;
      ++*(a1 + 20);
      *(a1 + 24) = 1;
      goto LABEL_22;
    }

    v9 = a3 + 2;
    if (a3 + 2 + v7 + *(a1 + 296) > *(a1 + 16))
    {
      v13 = (v9 + v7 + *(a1 + 296));
      snprintf(v5, 0x100uLL, "can't add tag %d (%d > %d)", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = a2;
    *(*(a1 + 8) + *(a1 + 20) + 1) = a3;
    if (a3)
    {
      memmove((*(a1 + 8) + *(a1 + 20) + 2), __src, a3);
    }

    v10 = *(a1 + 28);
    v11 = *(a1 + 20);
    *(a1 + 28) = v11;
    *(a1 + 32) = v10;
    v8 = v9 + v11;
  }

  else
  {
    if (*(a1 + 296) + v7 >= *(a1 + 16))
    {
      snprintf(v5, 0x100uLL, "can't add pad tag %d > %d", __src);
      return 2;
    }

    *(*(a1 + 8) + v7) = 0;
    v8 = *(a1 + 20) + 1;
  }

  *(a1 + 20) = v8;
LABEL_22:
  result = 0;
  ++*(a1 + 36);
  return result;
}

uint64_t sub_100009C04(uint64_t result)
{
  if (result)
  {
    if (*result == 287454020)
    {
      return *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *sub_100009C5C(uint64_t *a1)
{
  result = "<bad parameter>";
  if (a1)
  {
    v4 = *a1;
    v3 = a1 + 5;
    if (v4 == 287454020)
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_100009C84(uint64_t result)
{
  if (result)
  {
    if (*result == 287454020)
    {
      return *(result + 36);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100009CAC(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 > 0xEB)
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_1000095B0(v7);
    sub_100009768(v7, a2, v3, 0);
    sub_100009D44(theString, a2, v6, v7);
    sub_1000095B4(v7);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet is too short %d < %d\n", a3, 236);
  }
}

void sub_100009D44(__CFString *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  CFStringAppendFormat(a1, 0, @"op = ");
  v7 = *a2;
  if (v7 == 2)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREPLY\n");
  }

  else if (v7 == 1)
  {
    CFStringAppendFormat(a1, 0, @"BOOTREQUEST\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"OP(%d)\n", *a2);
  }

  CFStringAppendFormat(a1, 0, @"htype = %d\n", a2[1]);
  CFStringAppendFormat(a1, 0, @"flags = 0x%x\n", bswap32(*(a2 + 5)) >> 16);
  v8 = a2[2];
  if (v8 >= 0x11)
  {
    v10 = 16;
    CFStringAppendFormat(a1, 0, @"hlen = %d (invalid > %lu)\n", a2[2], 16);
    v9 = "[truncated] ";
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"hlen = %d\n", a2[2]);
    v9 = "";
    v10 = v8;
  }

  CFStringAppendFormat(a1, 0, @"hops = %d\n", a2[3]);
  CFStringAppendFormat(a1, 0, @"xid = 0x%lx\n", bswap32(*(a2 + 1)));
  CFStringAppendFormat(a1, 0, @"secs = %hu\n", bswap32(*(a2 + 4)) >> 16);
  v11 = inet_ntop(2, a2 + 12, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"ciaddr = %s\n", v11);
  v12 = inet_ntop(2, a2 + 16, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"yiaddr = %s\n", v12);
  v13 = inet_ntop(2, a2 + 20, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"siaddr = %s\n", v13);
  v14 = inet_ntop(2, a2 + 24, v16, 0x10u);
  CFStringAppendFormat(a1, 0, @"giaddr = %s\n", v14);
  CFStringAppendFormat(a1, 0, @"chaddr = %s", v9);
  if (v10)
  {
    for (i = 0; i != v10; CFStringAppendFormat(a1, 0, @"%0x", a2[i++ + 28]))
    {
      if (i)
      {
        CFStringAppendFormat(a1, 0, @":");
      }
    }
  }

  CFStringAppendFormat(a1, 0, @"\n");
  CFStringAppendFormat(a1, 0, @"sname = %.*s\n", 64, a2 + 44);
  CFStringAppendFormat(a1, 0, @"file = %.*s\n", 128, a2 + 108);
  if (a4)
  {
    if (sub_1000095AC(a4) >= 1)
    {
      CFStringAppendFormat(a1, 0, @"options:\n");
      sub_1000098FC(a1, a4);
    }
  }
}

void *sub_10000A0B4(uint64_t a1, int a2, void *a3, _DWORD *a4, char a5, char a6)
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
              sub_10000B090(v15);
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

            sub_10000AF04(*v15, v19);
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

      if ((sub_10000AFA0(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_10000B090(v15);
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
                if (!sub_10000AFA0(&v65, &__src, 2))
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
                if (!sub_10000AFA0(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
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

    if ((sub_10000AFA0(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
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

      sub_10000B090(v15);
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
  sub_10000AE58(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

CFDataRef sub_10000A718(const __CFArray *a1, char a2)
{
  length = 0;
  v3 = sub_100008888(a1, &length);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_10000A0B4(v3, length, 0, &length + 1, a2, 0);
  free(v4);
  v6 = CFDataCreate(0, v5, SHIDWORD(length));
  free(v5);
  return v6;
}

const UInt8 *sub_10000A7A8(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_10000A0B4(&length[1], 1, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

UInt8 *sub_10000A818(const __CFString *a1)
{
  result = sub_100008E2C(a1, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = sub_10000A7A8(result);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_10000A85C(uint64_t a1, unsigned int a2, int *a3)
{
  __src[0] = 0;
  memset(v11, 0, sizeof(v11));
  __src[1] = v11;
  __n = 0x8000000000;
  v4 = sub_10000A99C(a1, a2, v11, 0);
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(__n + 8 * v4, 0x10040436913F5uLL);
    v7 = &v6[8 * v5];
    memcpy(v7, __src[1], __n);
    if (v5 >= 1)
    {
      v8 = 0;
      do
      {
        *&v6[v8] = v7;
        v7 += strlen(v7) + 1;
        v8 += 8;
      }

      while (8 * v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  if ((__src[0] & 1) == 0 && __src[1] && __src[1] != v11)
  {
    free(__src[1]);
  }

  return v6;
}

uint64_t sub_10000A99C(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
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
          sub_10000AF04(v33, v9);
        }
      }

      if ((v29 & 1) == 0)
      {
        sub_10000AFA0(a3, &__src, 1);
      }

      sub_10000AFA0(a3, v12 + 1, v13);
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
      sub_10000AFA0(a3, &__src, 1);
    }

    v29 = 1;
    sub_10000AFA0(a3, &v31, 1);
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
    sub_10000AFA0(a3, &v31, 1);
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

CFStringRef sub_10000AD80(uint64_t a1, unsigned int a2, int a3)
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
  if (!sub_10000A99C(a1, a2, v6, v3))
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

void sub_10000AE58(_OWORD *a1)
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
        sub_10000B090((*(a1 + 19) + v6));
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

int *sub_10000AF04(int *result, size_t size)
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

uint64_t sub_10000AFA0(uint64_t a1, void *__src, int a3)
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

void sub_10000B090(void **a1)
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

void *sub_10000B0E0(unsigned __int8 *a1, int a2, void *a3, int *a4)
{
  v5 = a3;
  v6 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_32;
  }

  v7 = a1;
  if (a3)
  {
    v8 = *a4;
    if (!*a4)
    {
      v6 = 0;
      goto LABEL_32;
    }

    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v9 = a3;
    LOBYTE(v27) = 1;
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v8 = 64;
    v9 = &v23;
  }

  *(&v27 + 1) = v9;
  HIDWORD(v28) = v8;
  if (a2 >= 1)
  {
    v10 = a2;
    while (1)
    {
      __src = *(v7 + 1);
      v11 = __src;
      if (__src > 0x20u || !sub_10000BDA0(&v23, &__src, 1uLL))
      {
        break;
      }

      if (v11)
      {
        v12 = v11 & 0xF8;
        if ((v11 & 7) != 0)
        {
          v12 = (v11 & 0xF8) + 8;
        }

        if ((sub_10000BDA0(&v23, v7, v12 >> 3) & 1) == 0)
        {
          break;
        }
      }

      if ((sub_10000BDA0(&v23, v7 + 8, 4uLL) & 1) == 0)
      {
        break;
      }

      v7 += 12;
      if (!--v10)
      {
        v6 = v28;
        if (v5)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    sub_100011AC8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = *v7;
      v18 = v7[1];
      v19 = v7[2];
      v20 = v7[3];
      *v16 = 67109888;
      *(v16 + 4) = v17;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v18;
      *(v16 + 14) = 1024;
      *(v16 + 16) = v19;
      *(v16 + 20) = 1024;
      *(v16 + 22) = v20;
      __SC_log_send();
    }

    if (v27)
    {
      v6 = 0;
      v5 = 0;
      goto LABEL_32;
    }

    v5 = 0;
    v6 = 0;
LABEL_29:
    if (*(&v27 + 1) && *(&v27 + 1) != &v23)
    {
      free(*(&v27 + 1));
    }

    goto LABEL_32;
  }

  v6 = 0;
  if (!a3)
  {
LABEL_24:
    v5 = malloc_type_malloc(v6, 0xE4E649AuLL);
    memcpy(v5, *(&v27 + 1), v6);
  }

LABEL_25:
  if ((v27 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  *a4 = v6;
  return v5;
}

_DWORD *sub_10000B390(unsigned __int8 *a1, int a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  if (a1 && a2)
  {
    v8 = sub_10000B444(a1, a2, 0, 0);
    v5 = v8;
    if (!v8)
    {
LABEL_6:
      v4 = 0;
      goto LABEL_7;
    }

    v4 = malloc_type_malloc(12 * v8, 0x10000403E1C8BA9uLL);
    if (sub_10000B444(a1, a2, v4, v5) != v5)
    {
      free(v4);
      v5 = 0;
      goto LABEL_6;
    }
  }

LABEL_7:
  *a3 = v5;
  return v4;
}

uint64_t sub_10000B444(unsigned __int8 *a1, int a2, _DWORD *__dst, int a4)
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
        sub_100011AC8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20);
          v21 = *__error();
          v22 = _os_log_pack_fill();
          *v22 = 67109376;
          *(v22 + 4) = v5;
          *(v22 + 8) = 1024;
          *(v22 + 10) = v13;
          __SC_log_send();
        }

        return 0;
      }

      if (__dst)
      {
        if (v7 >= v8)
        {
          sub_100011AC8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24);
            v25 = *__error();
            v26 = _os_log_pack_fill();
            *v26 = 67109120;
            v26[1] = a4;
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

    sub_100011AC8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 67109120;
      v18[1] = v10;
      __SC_log_send();
    }
  }

  return 0;
}

in_addr *sub_10000B76C(const __CFArray *a1, _DWORD *a2)
{
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_23;
  }

  if (Count)
  {
    sub_100011AC8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18);
      v19 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    goto LABEL_23;
  }

  v5 = Count >> 1;
  v6 = malloc_type_malloc(12 * (Count >> 1) + 12, 0x10000403E1C8BA9uLL);
  v7 = v6;
  if (v5 < 1)
  {
LABEL_22:
    free(v7);
LABEL_23:
    LODWORD(v5) = 0;
    v7 = 0;
    goto LABEL_24;
  }

  v32 = a2;
  v8 = 0;
  v9 = v6 + 3;
  v10 = 1;
  v11 = v5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 1);
    v13 = CFArrayGetValueAtIndex(a1, v10);
    TypeID = CFStringGetTypeID();
    if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID || (v15 = CFStringGetTypeID(), !v13) || CFGetTypeID(v13) != v15)
    {
      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      a2 = v32;
      if (!__SC_log_enabled())
      {
        goto LABEL_22;
      }

      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21);
      v22 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_21;
    }

    if ((sub_10000BBAC(ValueAtIndex, v9, &v9[1]) & 1) == 0)
    {
      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      a2 = v32;
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        __chkstk_darwin(v24, v25);
        v26 = *__error();
        v27 = _os_log_pack_fill();
        *v27 = 138412290;
        *(v27 + 4) = ValueAtIndex;
LABEL_21:
        __SC_log_send();
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ((sub_100008928(v13, v9 + 2) & 1) == 0)
    {
      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      a2 = v32;
      if (__SC_log_enabled())
      {
        v28 = _os_log_pack_size();
        __chkstk_darwin(v28, v29);
        v30 = *__error();
        v31 = _os_log_pack_fill();
        *v31 = 138412290;
        *(v31 + 4) = v13;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if ((v9->s_addr != 0) | v8 & 1)
    {
      v9 += 3;
    }

    else
    {
      v16 = *&v9->s_addr;
      v7[2].s_addr = v9[2].s_addr;
      *&v7->s_addr = v16;
      v8 = 1;
    }

    v10 += 2;
    --v11;
  }

  while (v11);
  a2 = v32;
  if ((v8 & 1) == 0)
  {
    v7[2].s_addr = 0;
    LODWORD(v5) = v5 + 1;
    *&v7->s_addr = 0;
  }

LABEL_24:
  *a2 = v5;
  return v7;
}

uint64_t sub_10000BBAC(const __CFString *a1, in_addr *a2, int *a3)
{
  v5 = sub_100008E2C(a1, 0x600u);
  if (v5)
  {
    v6 = v5;
    v7 = strchr(v5, 47);
    if (v7)
    {
      *v7 = 0;
      v8 = strtoul(v7 + 1, 0, 0);
      if (v8 >= 0x21)
      {
        sub_100011AC8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          __chkstk_darwin(v9, v10);
          v11 = *__error();
          v12 = _os_log_pack_fill();
          *v12 = 67109120;
          v12[1] = v8;
          __SC_log_send();
        }

        goto LABEL_22;
      }
    }

    else
    {
      v8 = -1;
    }

    if (inet_aton(v6, a2) == 1)
    {
      v14 = bswap32(a2->s_addr);
      if (v8)
      {
        v15 = -1 << -v8;
      }

      else
      {
        v15 = 0;
      }

      if (v14 >> 30 == 2)
      {
        v16 = 16;
      }

      else
      {
        v16 = 24;
      }

      if (v14 >= 0)
      {
        v16 = 8;
      }

      v17 = -1 << -v16;
      if (v8 != -1)
      {
        v16 = v8;
        v17 = v15;
      }

      if ((v17 & v14) == 0)
      {
        v16 = 0;
        a2->s_addr = 0;
      }

      *a3 = v16;
      v13 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v13 = 0;
LABEL_23:
    free(v6);
    return v13;
  }

  return 0;
}

uint64_t sub_10000BDA0(uint64_t a1, void *__src, size_t __n)
{
  v3 = __n;
  v6 = *(a1 + 84);
  if (v6 - *(a1 + 80) >= __n)
  {
    goto LABEL_9;
  }

  if (*(a1 + 64) != 1)
  {
    *(a1 + 84) = v6 + 64;
    v13 = *(a1 + 72);
    if (v13 == a1)
    {
      v14 = malloc_type_malloc(v6 + 64, 0x839AEDF3uLL);
      *(a1 + 72) = v14;
      memcpy(v14, a1, *(a1 + 80));
    }

    else
    {
      result = reallocf(v13, v6 + 64);
      *(a1 + 72) = result;
      if (!result)
      {
        return result;
      }
    }

LABEL_9:
    memcpy((*(a1 + 72) + *(a1 + 80)), __src, v3);
    *(a1 + 80) += v3;
    return 1;
  }

  sub_100011AC8();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = *(a1 + 84) - *(a1 + 80);
    *v11 = 67109376;
    *(v11 + 4) = v3;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v12;
    __SC_log_send();
    return 0;
  }

  return result;
}

void *sub_10000BF68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D194(a1);
  a1[2] = a2;
  a1[3] = a3;
  return result;
}

void sub_10000BFA0(uint64_t *a1)
{
  v1 = a1;
  v3 = 0;
  while (sub_10000D20C(a1, 0, &v3))
  {
    if (v3)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v2();
      }
    }

    a1 = v1;
  }

  sub_10000D19C(v1);
}

uint64_t sub_10000C010(_OWORD *a1, int a2)
{
  if (a2 < 32)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      a2 = v3 - 32;
      v4 = *a1;
      v5 = *(a1 + 1);
      a1 += 2;
      v2 += vaddvq_s32(vaddq_s32(vaddl_u16(*v4.i8, *v5.i8), vaddl_high_u16(v4, v5)));
      v6 = v3 > 0x3F;
      v3 -= 32;
    }

    while (v6);
  }

  if (a2 < 8)
  {
    v7 = a2;
    if (!a2)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  else
  {
    do
    {
      v7 = a2 - 8;
      v8 = *a1;
      a1 = (a1 + 8);
      v2 += vaddvq_s32(vmovl_u16(v8));
      v6 = a2 > 0xF;
      a2 -= 8;
    }

    while (v6);
    if (!v7)
    {
      return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
    }
  }

  v2 = HIWORD(v2) + v2;
  if (HIWORD(v2))
  {
    v2 -= 0xFFFF;
  }

  v9 = v7 - 2;
  if (v7 < 2)
  {
    v11 = a1;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFE;
    v11 = a1 + v10 + 2;
    for (i = v7; i > 1; i -= 2)
    {
      v13 = *a1;
      a1 = (a1 + 2);
      v2 += v13;
    }

    v9 = v7 - v10 - 4;
  }

  if (v9 == -1)
  {
    v2 += *v11;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

__n128 sub_10000C110(__n128 *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

uint64_t sub_10000C158(uint64_t a1, int a2)
{
  v4 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(a1 + 8); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    v6 = *a1 + 104 * v4;
    if (sub_1000095AC(v6 + 24) >= 1)
    {
      break;
    }

LABEL_9:
    ++v4;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v7 = 0;
  while (*sub_10000C00C(v6 + 24, v7) != a2)
  {
    v7 = (v7 + 1);
    if (v7 >= sub_1000095AC(v6 + 24))
    {
      goto LABEL_9;
    }
  }

  return v6;
}

uint64_t sub_10000C208(uint64_t *a1, char *__s2)
{
  v4 = -104;
  v5 = -1;
  while (1)
  {
    v6 = a1 ? *(a1 + 2) : 0;
    if (++v5 >= v6)
    {
      break;
    }

    v7 = v4 + 104;
    v8 = *a1;
    v9 = strcmp((*a1 + v4 + 104), __s2);
    v4 = v7;
    if (!v9)
    {
      return v8 + v7;
    }
  }

  return 0;
}

void *sub_10000C290(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v3 = v2;
  if (v2 && !sub_10000C2F0(v2, a1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_10000C2F0(uint64_t a1, uint64_t *a2)
{
  v63 = a2;
  v64 = 0;
  memset(v66, 0, 44);
  *a1 = 0;
  v3 = getifaddrs(&v64);
  v4 = v64;
  if (v3 < 0)
  {
    goto LABEL_88;
  }

  if (!v64)
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
  v6 = v64;
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
    v4 = v64;
    goto LABEL_88;
  }

  v9 = socket(2, 2, 0);
  v4 = v64;
  if (v9 < 0)
  {
    goto LABEL_88;
  }

  v11 = v9;
  *(a1 + 8) = 0;
  *(a1 + 12) = v7;
  v12 = 104;
  if (!v4)
  {
    goto LABEL_84;
  }

  v60 = kSCNetworkInterfaceTypeIEEE80211;
  *&v10 = 136315906;
  v61 = v10;
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
      v22 = 104 * (*(a1 + 8) & ~(*(a1 + 8) >> 31));
      v23 = -104;
      do
      {
        v24 = v23 + 104;
        if (v22 == v23 + 104)
        {
          goto LABEL_31;
        }

        v25 = *a1;
        v26 = strcmp((*a1 + v23 + 104), ifa_name);
        v23 = v24;
      }

      while (v26);
      if (v25)
      {
        v27 = v25 + v24;
LABEL_33:
        v37 = *&ifa_addr->sa_data[2];
        ifa_netmask = v4->ifa_netmask;
        if (ifa_netmask)
        {
          v39 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v39 = 0;
        }

        if ((*(v27 + 16) & 2) != 0 && (ifa_dstaddr = v4->ifa_dstaddr) != 0)
        {
          v47 = *&ifa_dstaddr->sa_data[2];
        }

        else
        {
          v47 = 0;
        }

        v48 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v48)
        {
          *v48 = v37;
          v48[1] = v39;
          v48[2] = v39 & v37;
          v48[3] = v47;
        }

        sub_10000C004(v27 + 24, v48);
        goto LABEL_82;
      }

LABEL_31:
      v36 = sub_10000CDD8(a1);
      if (v36)
      {
        v27 = v36;
        *(v36 + 16) = v4->ifa_flags;
        ifa_addr = v4->ifa_addr;
        goto LABEL_33;
      }

      sub_100011AC8();
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

      v16 = 104 * (*(a1 + 8) & ~(*(a1 + 8) >> 31));
      v17 = -104;
      do
      {
        v18 = v17 + 104;
        if (v16 == v17 + 104)
        {
          goto LABEL_25;
        }

        v19 = *a1;
        v20 = strcmp((*a1 + v17 + 104), ifa_name);
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
          sub_100011AC8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v30 = _os_log_pack_size();
            v62 = &v59;
            __chkstk_darwin(v30, v31);
            v32 = *__error();
            v33 = _os_log_pack_fill();
            v34 = ifa_addr->sa_data[2];
            v35 = ifa_addr->sa_data[4];
            *v33 = v61;
            *(v33 + 4) = ifa_name;
            *(v33 + 12) = 1024;
            *(v33 + 14) = v34;
            *(v33 + 18) = 1024;
            *(v33 + 20) = v35;
            *(v33 + 24) = 2048;
            *(v33 + 26) = 16;
            __SC_log_send();
          }

          *(v21 + 74) = 16;
          v29 = 16;
        }

        memmove((v21 + 56), &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], v29);
        v40 = ifa_addr->sa_data[2];
        *(v21 + 75) = v40;
        *(v21 + 72) = *ifa_addr->sa_data;
        ifa_data = v4->ifa_data;
        if (ifa_data)
        {
          v40 = *ifa_data;
        }

        *(v21 + 18) = v40;
        v42 = sub_10000CC20(v11, ifa_name);
        if ((v42 & 0x100000) != 0)
        {
          *(v21 + 19) |= 3u;
        }

        *(v21 + 20) = (v42 >> 14) & 1;
        if (sub_10000CB8C(v11, ifa_name, v66))
        {
          if (SLODWORD(v66[2]) < 1)
          {
            v44 = 0;
            v43 = 0;
            v45 = 0;
          }

          else
          {
            v43 = (BYTE8(v66[1]) & 2) << 31;
            if (BYTE8(v66[1]))
            {
              v44 = (DWORD2(v66[1]) >> 2) & 1;
            }

            else
            {
              v44 = 0;
            }

            if ((BYTE8(v66[1]) & 1) == 0)
            {
              v43 = 0;
            }

            v45 = 1;
            if ((BYTE8(v66[1]) & 1) == 0)
            {
              v45 = 0;
            }
          }

          *(v21 + 80) = v45 | v43;
          *(v21 + 88) = v44;
          if ((v66[1] & 0xE0) == 0x80)
          {
            *(v21 + 19) |= 1u;
          }
        }

        v52 = sub_10000CE70(v11, ifa_name);
        *(v21 + 96) = v52;
        if (*(v21 + 18) == 6)
        {
          v65 = 0;
          if (!v63 || (sub_10000D028(v63, ifa_name, v52, &v65) & 1) == 0)
          {
            v53 = CFStringCreateWithCString(0, ifa_name, 0x8000100u);
            v54 = _SCNetworkInterfaceCreateWithBSDName();
            if (v54)
            {
              v55 = v54;
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v54);
              if (InterfaceType)
              {
                if (CFEqual(InterfaceType, v60))
                {
                  v57 = v65;
                  v65 |= 1u;
                  if (*ifa_name == 101 && *(ifa_name + 1) == 110)
                  {
                    v65 = v57 | 9;
                  }
                }
              }

              if (_SCNetworkInterfaceIsTetheredHotspot())
              {
                v65 |= 4u;
              }

              if (_SCNetworkInterfaceIsCarPlay())
              {
                v65 |= 0x10u;
              }

              CFRelease(v55);
            }

            CFRelease(v53);
          }

          if (v65)
          {
            *(v21 + 19) |= v65;
          }
        }

        goto LABEL_82;
      }

LABEL_25:
      v28 = sub_10000CDD8(a1);
      if (v28)
      {
        v21 = v28;
        *(v28 + 16) = v4->ifa_flags;
        goto LABEL_27;
      }

      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    v49 = _os_log_pack_size();
    __chkstk_darwin(v49, v50);
    v51 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
LABEL_82:
    v4 = v4->ifa_next;
  }

  while (v4);
  v12 = 104 * *(a1 + 8) + 104;
LABEL_84:
  *a1 = reallocf(*a1, v12);
  if (v64)
  {
    freeifaddrs(v64);
  }

  close(v11);
  return 1;
}

void sub_10000C9E8(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 8) >= 1)
      {
        v3 = 0;
        v4 = 24;
        do
        {
          sub_10000BFA0((*v2 + v4));
          ++v3;
          v4 += 104;
        }

        while (v3 < *(v2 + 8));
      }

      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

unsigned int *sub_10000CA84(uint64_t a1)
{
  result = sub_10000C00C(a1 + 24, 0);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10000CAF4(uint64_t a1, int a2)
{
  v4 = sub_1000095AC(a1 + 24);
  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = sub_10000C00C(a1 + 24, v6);
    if ((*(v7 + 4) & a2) == *(v7 + 8))
    {
      break;
    }

    v6 = (v6 + 1);
    if (v5 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t sub_10000CB68(uint64_t a1)
{
  v1 = *(a1 + 75);
  if (v1 == 144)
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000CB8C(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02C6938uLL, a3) != -1)
  {
    return 1;
  }

  if (*__error() != 102)
  {
    return 0;
  }

  *(a3 + 24) = 3;
  result = 1;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_10000CC20(int a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC020698EuLL, &v11) != -1)
  {
    return v12;
  }

  sub_100011AC8();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315394;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    *__error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_10000CDD8(uint64_t *a1)
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
  sub_10000BF68((v3 + 24), j__free, sub_10000C110);
  return v3;
}

uint64_t sub_10000CE70(int a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02069D9uLL, &v11) != -1)
  {
    return v12;
  }

  sub_100011AC8();
  *__error();
  _SC_syslog_os_log_mapping();
  *__error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315394;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    *__error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_10000D028(uint64_t *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  result = sub_10000C208(a1, a2);
  if (result)
  {
    if (*(result + 96) == a3)
    {
      *a4 = *(result + 19);
      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9);
        v10 = *__error();
        v11 = _os_log_pack_fill();
        v12 = *a4;
        *v11 = 136315650;
        *(v11 + 4) = a2;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v12;
        *(v11 + 18) = 2048;
        *(v11 + 20) = a3;
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

void *sub_10000D194(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_10000D19C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_10000D1CC(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000D1E8(uint64_t a1, int a2)
{
  if (*a1 && *(a1 + 12) > a2)
  {
    return *(*a1 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D20C(uint64_t *a1, unsigned int a2, void *a3)
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

BOOL sub_10000D294(uint64_t a1, uint64_t a2)
{
  result = sub_10000D2D8(a1);
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

BOOL sub_10000D2D8(uint64_t a1)
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

BOOL sub_10000D374(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 12);
  result = sub_10000D2D8(a1);
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

uint64_t sub_10000D418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return 1;
  }

  v5 = *(a1 + 12) + v2;
  if (v5 <= *(a1 + 8))
  {
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  *(a1 + 8) = v5;
  v6 = *a1;
  if (*a1)
  {
    result = malloc_type_realloc(v6, 8 * v5, 0x80040B8603338uLL);
  }

  else
  {
    result = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  }

  *a1 = result;
  if (result)
  {
LABEL_7:
    memmove((result + 8 * *(a1 + 12)), *a2, 8 * *(a2 + 12));
    *(a1 + 12) += *(a2 + 12);
    return 1;
  }

  return result;
}

char *sub_10000D4D4(int a1, unsigned int a2)
{
  v12 = a1;
  v2 = bswap32(a2);
  v3 = -32;
  while (((v2 >> v3) & 1) == 0)
  {
    if (__CFADD__(v3++, 1))
    {
      byte_10001D838 = 0;
      v5 = 32;
      goto LABEL_8;
    }
  }

  byte_10001D838 = 0;
  if (!v3)
  {
    return &byte_10001D838;
  }

  v5 = -v3;
LABEL_8:
  v6 = (v5 + 7) >> 3;
  v7 = &v12;
  do
  {
    v9 = *v7++;
    v8 = v9;
    if (v6 == 1)
    {
      v10 = "";
    }

    else
    {
      v10 = ".";
    }

    snprintf(__str, 8uLL, "%d%s", v8, v10);
    __strlcat_chk();
    --v6;
  }

  while (v6);
  if ((v5 & 7) != 0)
  {
    snprintf(__str, 8uLL, "/%d", v5);
    __strlcat_chk();
  }

  return &byte_10001D838;
}

uint64_t sub_10000D620(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = result - a3;
  *(a5 + 8) = a2 - a4;
  if (a2 - a4 < 0)
  {
    *(a5 + 8) = a2 - a4 + 1000000;
    *a5 = result - a3 - 1;
  }

  return result;
}

void sub_10000D650(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!v6)
      {
        CFStringAppendFormat(theString, 0, @"%04x ", v5);
      }

      v8 = *(a2 + v5);
      if (v8 < 0)
      {
        v9 = __maskrune(*(a2 + v5), 0x40000uLL);
      }

      else
      {
        v9 = _DefaultRuneLocale.__runetype[v8] & 0x40000;
      }

      v10 = *(a2 + v5);
      if (v9)
      {
        v11 = v8;
      }

      else
      {
        v11 = 46;
      }

      v16[v6] = v11;
      CFStringAppendFormat(theString, 0, @" %02x", v10);
      if (v6 == 7)
      {
        CFStringAppendFormat(theString, 0, @" ");
        v6 = 8;
      }

      else if (v6 == 15)
      {
        v17 = 0;
        CFStringAppendFormat(theString, 0, @"  %s\n", v16);
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      ++v5;
    }

    while (a3 != v5);
    if (v6)
    {
      if (v6 >= 8)
      {
        v12 = "";
      }

      else
      {
        v12 = " ";
      }

      if (v6 <= 15)
      {
        v13 = &v16[v6];
        v14 = v6 + 1;
        do
        {
          CFStringAppendFormat(theString, 0, @"   ");
          *v13++ = 32;
        }

        while (v14++ != 16);
      }

      v17 = 0;
      CFStringAppendFormat(theString, 0, @"  %s%s\n", v12, v16);
    }
  }
}

void sub_10000D844(CFMutableStringRef theString, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (v9)
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

uint64_t sub_10000D90C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2) - *(a2 + v2);
    if (v3)
    {
      break;
    }

    if (++v2 == 6)
    {
      return 0;
    }
  }

  return v3;
}

char *identifierToStringWithBuffer(int a1, uint64_t a2, int a3, char *__str, int a5)
{
  v8 = 3 * a3 + 4;
  v9 = v8;
  if (__str && (v10 = __str, v8 <= a5) || (v10 = malloc_type_malloc(v8, 0xE2EC6117uLL)) != 0)
  {
    snprintf(v10, v9, "%x%c", a1, 44);
    if (a3 >= 1)
    {
      v11 = 0;
      do
      {
        if (v11)
        {
          v12 = ":";
        }

        else
        {
          v12 = "";
        }

        snprintf(__stra, 4uLL, "%s%x", v12, *(a2 + v11));
        strlcat(v10, __stra, v9);
        ++v11;
      }

      while (a3 != v11);
    }
  }

  return v10;
}

uint64_t SubnetGetOptionPtrAndLength(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2 == 1)
  {
    *a3 = 4;
    return a1 + 12;
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4 < 1)
    {
      return 0;
    }

    else
    {
      for (i = *(a1 + 48) + 8; *(i - 8) != a2; i += 16)
      {
        if (!--v4)
        {
          return 0;
        }
      }

      *a3 = *(i - 4);
      return *i;
    }
  }
}

uint64_t *SubnetListCreateWithArray(const void *a1)
{
  TypeID = CFArrayGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    syslog(5, "subnets: type is not an array");
    return 0;
  }

  v3 = malloc_type_malloc(0x20uLL, 0x1080040EE4F9096uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 0u;
    *(v3 + 1) = 0u;
    sub_10000BF68(v3, j__free_0, 0);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = 0;
      v58 = Count;
      while (1)
      {
        v59 = v6;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v61 = 0;
        v8 = CFDictionaryGetTypeID();
        if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v8)
        {
          goto LABEL_87;
        }

        v64[0] = 0;
        Value = CFDictionaryGetValue(ValueAtIndex, @"name");
        if (Value)
        {
          v10 = CFStringGetTypeID();
          if (CFGetTypeID(Value) != v10)
          {
            goto LABEL_87;
          }

          v11 = sub_1000086E8(Value, 0, 0, 0);
          v12 = v11 >= 2 ? v11 : 0;
        }

        else
        {
          v12 = 0;
        }

        v13 = CFDictionaryGetValue(ValueAtIndex, @"supernet");
        if (v13)
        {
          v14 = CFStringGetTypeID();
          if (CFGetTypeID(v13) != v14)
          {
            goto LABEL_87;
          }

          v15 = sub_1000086E8(v13, 0, 0, 0);
          v16 = v15 >= 2 ? v15 : 0;
          v60 = v16;
          v17 = v16 + v12;
        }

        else
        {
          v60 = 0;
          v17 = v12;
        }

        v62 = 0;
        v63 = 0;
        v18 = CFDictionaryGetValue(ValueAtIndex, @"net_address");
        v19 = CFStringGetTypeID();
        if (!v18)
        {
          goto LABEL_87;
        }

        if (CFGetTypeID(v18) != v19)
        {
          goto LABEL_87;
        }

        if (!sub_100008928(v18, &v63 + 1))
        {
          goto LABEL_87;
        }

        v20 = CFDictionaryGetValue(ValueAtIndex, @"net_mask");
        v21 = CFStringGetTypeID();
        if (!v20 || CFGetTypeID(v20) != v21 || !sub_100008928(v20, &v63) || (v22 = CFDictionaryGetValue(ValueAtIndex, @"net_range"), v23 = CFArrayGetTypeID(), !v22) || CFGetTypeID(v22) != v23 || CFArrayGetCount(v22) != 2 || (v24 = CFArrayGetValueAtIndex(v22, 0), v25 = CFStringGetTypeID(), !v24) || CFGetTypeID(v24) != v25 || !sub_100008928(v24, &v62) || (v26 = CFArrayGetValueAtIndex(v22, 1), v27 = CFStringGetTypeID(), !v26) || CFGetTypeID(v26) != v27 || !sub_100008928(v26, &v62 + 1) || (v62 & v63) != HIDWORD(v63) || (HIDWORD(v62) & v63) != HIDWORD(v63) || bswap32(v62) > bswap32(HIDWORD(v62)))
        {
LABEL_87:
          __strlcpy_chk();
          syslog(5, "subnets: create failed, %s", v64);
          goto LABEL_88;
        }

        if (!v12)
        {
          v28 = sub_10000D4D4(SHIDWORD(v63), v63);
          Value = 0;
          v12 = strlen(v28) + 1;
          v17 += v12;
        }

        v29 = sub_10000E784(ValueAtIndex, &v61);
        v30 = v29;
        if (v29)
        {
          v31 = (v61 + 7) & 0xFFFFFFF8;
          v61 = v31 + 16 * CFArrayGetCount(v29);
          v17 += v61;
        }

        v32 = malloc_type_malloc(v17 + 64, 0x1070040985A25BEuLL);
        *v32 = 0u;
        *(v32 + 1) = 0u;
        *(v32 + 2) = 0u;
        *(v32 + 3) = 0u;
        sub_10000EFC8(v32, ValueAtIndex);
        v33 = v63;
        *(v32 + 2) = HIDWORD(v63);
        *(v32 + 3) = v33;
        v32[2] = v62;
        *(v32 + 24) = sub_10000F06C(ValueAtIndex);
        v34 = (v32 + 8);
        if (v30)
        {
          *(v32 + 14) = CFArrayGetCount(v30);
          v35 = v61;
          v32[6] = sub_10000F0CC(v30, (v32 + 8), v61);
          v34 += v35;
          CFRelease(v30);
          v36 = *(v32 + 14);
          if (v36 >= 1)
          {
            v37 = v32[6];
            v38 = v37 + 8;
            v39 = *(v32 + 14);
            while (*(v38 - 2) != 3)
            {
              v38 += 2;
              if (!--v39)
              {
                v40 = 0;
                goto LABEL_51;
              }
            }

            v40 = *v38;
LABEL_51:
            v41 = v37 + 4;
            while (*(v41 - 1) != 121)
            {
              v41 += 16;
              if (!--v36)
              {
                goto LABEL_67;
              }
            }

            if (v40)
            {
              v42 = *(v41 + 4);
              if (v42)
              {
                v43 = *v41;
                if (!*v42 && v43 >= 5)
                {
                  v45 = *v40;
                  if (!*(v42 + 1) && v45 != 0)
                  {
                    *(v42 + 1) = v45;
                  }
                }
              }
            }
          }
        }

LABEL_67:
        *v32 = v34;
        if (Value)
        {
          sub_1000086E8(Value, v34, v12, 0);
        }

        else
        {
          v47 = sub_10000D4D4(SHIDWORD(v63), v63);
          strncpy(v34, v47, v12);
        }

        if (v60)
        {
          sub_1000086E8(v13, &v34[v12], v60, 0);
          v32[5] = &v34[v12];
        }

        *(v32 + 9) = v62;
        v48 = sub_1000095AC(v4);
        if (v48 >= 1)
        {
          break;
        }

LABEL_78:
        sub_10000C004(v4, v32);
LABEL_81:
        v6 = v59 + 1;
        if (v59 + 1 == v58)
        {
          return v4;
        }
      }

      v49 = v48;
      v50 = 0;
      while (1)
      {
        v51 = sub_10000C00C(v4, v50);
        v52 = *(v51 + 16);
        v53 = *(v32 + 4);
        if (v53 == v52)
        {
          break;
        }

        v54 = bswap32(v53);
        v55 = bswap32(v52);
        if (v54 < v55)
        {
          if (bswap32(*(v32 + 5)) < v55)
          {
            sub_10000C008(v4, v32, v50);
            goto LABEL_81;
          }

          break;
        }

        if (bswap32(*(v51 + 20)) >= v54)
        {
          break;
        }

        v50 = (v50 + 1);
        if (v49 == v50)
        {
          goto LABEL_78;
        }
      }

      v57 = *v32;
      syslog(5, "subnets: '%s' net_range overlaps with subnet '%s'", *v32, *v51);
      free(v32);
LABEL_88:
      sub_10000BFA0(v4);
      free(v4);
      return 0;
    }
  }

  return v4;
}

void SubnetListFree(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_10000BFA0(*a1);
      free(v2);
      *a1 = 0;
    }
  }
}

void SubnetListPrintCFString(__CFString *a1, uint64_t a2)
{
  v4 = sub_1000095AC(a2);
  v5 = v4;
  CFStringAppendFormat(a1, 0, @"Subnets[%d]\n", v4);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_10000C00C(a2, v6);
      v6 = (v6 + 1);
      CFStringAppendFormat(a1, 0, @"%2d. ", v6);
      v8 = *v7;
      if (!*v7)
      {
        v8 = sub_10000D4D4(*(v7 + 8), *(v7 + 12));
      }

      CFStringAppendFormat(a1, 0, @"Subnet '%s'", v8);
      if (*(v7 + 40))
      {
        CFStringAppendFormat(a1, 0, @": supernet %s\n", *(v7 + 40));
      }

      else
      {
        CFStringAppendFormat(a1, 0, @"\n", v20);
      }

      v9.s_addr = *(v7 + 8);
      v10 = inet_ntoa(v9);
      CFStringAppendFormat(a1, 0, @"\tNetwork: %s", v10);
      v11.s_addr = *(v7 + 12);
      v12 = inet_ntoa(v11);
      CFStringAppendFormat(a1, 0, @"/%s\n", v12);
      v13.s_addr = *(v7 + 16);
      v14 = inet_ntoa(v13);
      CFStringAppendFormat(a1, 0, @"\tRange: %s..", v14);
      v15.s_addr = *(v7 + 20);
      v16 = inet_ntoa(v15);
      CFStringAppendFormat(a1, 0, @"%s\n", v16);
      v17 = "no";
      if (*(v7 + 24))
      {
        v17 = "yes";
      }

      CFStringAppendFormat(a1, 0, @"\tAllocate: %s\n", v17);
      if (*(v7 + 24) == 1)
      {
        CFStringAppendFormat(a1, 0, @"\tLease Min: %d   Lease Max: %d\n", *(v7 + 28), *(v7 + 32));
      }

      if (*(v7 + 56))
      {
        CFStringAppendFormat(a1, 0, @"\tOptions:\n");
        CFStringAppendFormat(a1, 0, @"\t%6s %6s   %s\n", "Code", "Length", "Data");
        if (*(v7 + 56) >= 1)
        {
          v18 = 0;
          v19 = 0;
          do
          {
            CFStringAppendFormat(a1, 0, @"\t%6d %6d   ", *(*(v7 + 48) + v18), *(*(v7 + 48) + v18 + 4));
            sub_10000D904(a1, *(*(v7 + 48) + v18 + 8), *(*(v7 + 48) + v18 + 4));
            CFStringAppendFormat(a1, 0, @"\n");
            ++v19;
            v18 += 16;
          }

          while (v19 < *(v7 + 56));
        }
      }
    }

    while (v6 != v5);
  }
}

uint64_t SubnetListAcquireAddress(uint64_t a1, unsigned int *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = *a2;
  SubnetForAddress = SubnetListGetSubnetForAddress(a1, *a2, 0);
  if (!SubnetForAddress)
  {
    return 0;
  }

  v10 = SubnetForAddress;
  v11 = sub_1000095AC(a1);
  if (v11 < 1)
  {
    return 0;
  }

  v12 = v11;
  v22 = a2;
  v13 = 0;
  v24 = v8;
  v23 = v11;
  while (1)
  {
    v14 = sub_10000C00C(a1, v13);
    v15 = v14;
    if (v14 != v10 && (*(v14 + 12) & v8) != *(v14 + 8))
    {
      v19 = *(v14 + 40);
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = *(v10 + 40);
      if (!v20 || strcmp(v19, v20))
      {
        goto LABEL_17;
      }
    }

    if (*(v15 + 24) != 1)
    {
      goto LABEL_17;
    }

    v16 = bswap32(*(v15 + 20));
    v17 = bswap32(*(v15 + 36));
    if (v17 == v16 + 1)
    {
      v17 = bswap32(*(v15 + 16));
    }

    if (v17 <= v16)
    {
      break;
    }

LABEL_13:
    *(v15 + 36) = bswap32(v16 + 1);
    v8 = v24;
    v12 = v23;
LABEL_17:
    v13 = (v13 + 1);
    if (v13 == v12)
    {
      return 0;
    }
  }

  if (a3)
  {
    while (1)
    {
      v18 = bswap32(v17);
      if ((a3(a4, v18) & 1) == 0)
      {
        break;
      }

      if (++v17 > v16)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v18) = bswap32(v17);
  }

  *v22 = v18;
  *(v15 + 36) = v18;
  return v15;
}

uint64_t SubnetListGetSubnetForAddress(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_1000095AC(a1);
  if (a3)
  {
    v7 = sub_10000E6B4;
  }

  else
  {
    v7 = sub_10000E6A0;
  }

  if (v6 < 1)
  {
    return 0;
  }

  v8 = v6;
  v9 = 0;
  while (1)
  {
    v10 = sub_10000C00C(a1, v9);
    if (v7(v10, a2))
    {
      break;
    }

    v9 = (v9 + 1);
    if (v8 == v9)
    {
      return 0;
    }
  }

  return v10;
}

BOOL sub_10000E6B4(_DWORD *a1, unsigned int a2)
{
  if ((a1[3] & a2) == a1[2] && (v2 = bswap32(a2), v2 >= bswap32(a1[4])))
  {
    return v2 <= bswap32(a1[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t SubnetListAreAddressesOnSameSupernet(uint64_t a1, unsigned int a2, unsigned int a3)
{
  SubnetForAddress = SubnetListGetSubnetForAddress(a1, a2, 0);
  v6 = SubnetListGetSubnetForAddress(a1, a3, 0);
  result = 0;
  if (SubnetForAddress && v6)
  {
    if (SubnetForAddress == v6)
    {
      return 1;
    }

    else
    {
      result = *(SubnetForAddress + 40);
      if (result)
      {
        v8 = *(v6 + 40);
        return v8 && strcmp(result, v8) == 0;
      }
    }
  }

  return result;
}

__CFArray *sub_10000E784(const __CFDictionary *a1, _DWORD *a2)
{
  *a2 = 0;
  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v57 = a2;
  v6 = 8 * Count;
  v7 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v8 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1, v7, v8);
  theArray = CFArrayCreateMutable(0, v5, &kCFTypeArrayCallBacks);
  if (v5 >= 1)
  {
    v9 = 0;
    v59 = 0;
    while (1)
    {
      valuePtr = 0;
      v10 = v7[v9];
      ValueAtIndex = v8[v9];
      if (!CFStringHasPrefix(v10, @"dhcp_"))
      {
        goto LABEL_33;
      }

      v63.length = CFStringGetLength(v10) - 5;
      v63.location = 5;
      v12 = sub_100008D74(v10, v63, 0x8000100u);
      if (!v12)
      {
        goto LABEL_33;
      }

      v13 = v12;
      v14 = sub_100009518(v12);
      valuePtr = v14;
      if (v14 != 1)
      {
        v15 = v14;
        if (v14 != -1)
        {
          __str[0] = 0;
          TypeID = CFDataGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == TypeID)
          {
            v17 = CFRetain(ValueAtIndex);
            goto LABEL_12;
          }

          v21 = sub_100009500(v15);
          if (!v21)
          {
            goto LABEL_27;
          }

          v22 = v21;
          v23 = sub_100008E8C(*v21);
          v24 = *v22;
          if (!v23)
          {
            v54 = *v22;
            snprintf(__str, 0x100uLL, "Unknown type %d");
            goto LABEL_31;
          }

          v25 = v23;
          v26 = CFArrayGetTypeID();
          if (!ValueAtIndex)
          {
            CFStringGetTypeID();
LABEL_30:
            CFNumberGetTypeID();
            CFBooleanGetTypeID();
            CFArrayGetTypeID();
LABEL_31:
            syslog(5, "subnets: Failed to convert '%s': %s");
            goto LABEL_32;
          }

          if (CFGetTypeID(ValueAtIndex) != v26)
          {
            goto LABEL_21;
          }

          if (!CFArrayGetCount(ValueAtIndex))
          {
            goto LABEL_27;
          }

          if (!*(v25 + 4))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
            v27 = CFStringGetTypeID();
            if (!ValueAtIndex)
            {
              goto LABEL_30;
            }
          }

          else
          {
LABEL_21:
            v27 = CFStringGetTypeID();
          }

          if (CFGetTypeID(ValueAtIndex) == v27)
          {
            *bytes = 0;
            if (*(v25 + 1))
            {
              v28 = v24 == 12;
              v24 = *(v25 + 1);
              if (v28)
              {
                goto LABEL_81;
              }
            }

            if (v24 <= 8)
            {
              if ((v24 - 2) < 5)
              {
                if (sub_1000089DC(ValueAtIndex, bytes))
                {
                  Copy = sub_10000F214(v24, *bytes);
                  if (!Copy)
                  {
LABEL_72:
                    __strlcpy_chk();
                  }

LABEL_13:
                  if (!Copy)
                  {
                    goto LABEL_31;
                  }

LABEL_14:
                  v59 += CFDataGetLength(Copy);
                  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"Tag", v20);
                  CFRelease(v20);
                  CFDictionarySetValue(Mutable, @"Data", Copy);
                  CFRelease(Copy);
                  CFArrayAppendValue(theArray, Mutable);
                  CFRelease(Mutable);
                  goto LABEL_32;
                }

LABEL_81:
                __strlcpy_chk();
LABEL_82:
                Copy = 0;
                goto LABEL_13;
              }

LABEL_75:
              snprintf(__str, 0x100uLL, "Failed to convert from string to %s", *(v25 + 1));
              goto LABEL_82;
            }

            switch(v24)
            {
              case 13:
                Copy = sub_10000A818(ValueAtIndex);
                if (!Copy)
                {
                  goto LABEL_72;
                }

                goto LABEL_13;
              case 10:
                if ((sub_100008928(ValueAtIndex, &bytes[4]) & 1) == 0)
                {
                  goto LABEL_81;
                }

                v17 = CFDataCreate(0, &bytes[4], 4);
                break;
              case 9:
                v17 = sub_100008E74(ValueAtIndex);
                break;
              default:
                goto LABEL_75;
            }

LABEL_12:
            Copy = v17;
            goto LABEL_13;
          }

          v29 = CFNumberGetTypeID();
          if (CFGetTypeID(ValueAtIndex) == v29 || (v30 = CFBooleanGetTypeID(), CFGetTypeID(ValueAtIndex) == v30))
          {
            *&bytes[4] = 0;
            if (*(v25 + 1))
            {
              v28 = v24 == 12;
              v24 = *(v25 + 1);
              if (v28)
              {
                goto LABEL_81;
              }
            }

            v31 = CFBooleanGetTypeID();
            if (CFGetTypeID(ValueAtIndex) == v31)
            {
              v32 = CFEqual(ValueAtIndex, kCFBooleanTrue) != 0;
              *&bytes[4] = v32;
            }

            else
            {
              if (!CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &bytes[4]))
              {
                goto LABEL_81;
              }

              v32 = *&bytes[4];
            }

            v17 = sub_10000F214(v24, v32);
            goto LABEL_12;
          }

          v33 = CFArrayGetTypeID();
          if (CFGetTypeID(ValueAtIndex) != v33)
          {
            goto LABEL_31;
          }

          v34 = CFArrayGetCount(ValueAtIndex);
          v35 = v34;
          if (v24 > 11)
          {
            if (v24 == 15)
            {
              *&bytes[4] = 0;
              v46 = sub_10000B76C(ValueAtIndex, &bytes[4]);
              if (v46)
              {
                v47 = v46;
                *bytes = 0;
                v48 = sub_10000B0E0(v46, *&bytes[4], 0, bytes);
                if (v48)
                {
                  v49 = v48;
                  Copy = CFDataCreate(0, v48, *bytes);
                  free(v49);
                }

                else
                {
                  Copy = 0;
                }

                free(v47);
                goto LABEL_13;
              }

              goto LABEL_82;
            }

            if (v24 == 13)
            {
              Copy = sub_10000A718(ValueAtIndex, 1);
              if (!Copy)
              {
                goto LABEL_27;
              }

              goto LABEL_14;
            }

            if (v24 != 12)
            {
              goto LABEL_94;
            }

            if (v34)
            {
LABEL_27:
              __strlcpy_chk();
              goto LABEL_31;
            }
          }

          else
          {
            if ((v24 - 7) < 2)
            {
              *&bytes[4] = 0;
              theData = CFDataCreateMutable(0, v34 * *v25);
              if (v35 < 1)
              {
LABEL_68:
                v40 = theData;
                Copy = CFDataCreateCopy(0, theData);
              }

              else
              {
                v36 = 0;
                while (1)
                {
                  v37 = CFArrayGetValueAtIndex(ValueAtIndex, v36);
                  if ((sub_100008A7C(v37, &bytes[4]) & 1) == 0)
                  {
                    break;
                  }

                  if (*v25 == 1)
                  {
                    bytes[0] = bytes[4];
                    v38 = theData;
                    v39 = 1;
                  }

                  else
                  {
                    *bytes = bswap32(*&bytes[4]) >> 16;
                    v38 = theData;
                    v39 = 2;
                  }

                  CFDataAppendBytes(v38, bytes, v39);
                  if (v35 == ++v36)
                  {
                    goto LABEL_68;
                  }
                }

                __strlcpy_chk();
                Copy = 0;
                v40 = theData;
              }

              v51 = v40;
LABEL_104:
              CFRelease(v51);
              goto LABEL_13;
            }

            if (v24 != 11)
            {
LABEL_94:
              v50 = *(v25 + 1);
              snprintf(__str, 0x100uLL, "Can't convert array to %s");
              goto LABEL_31;
            }
          }

          *&bytes[4] = 0;
          v41 = CFDataCreateMutable(0, 4 * v34);
          v42 = v41;
          if (v35 < 1)
          {
LABEL_90:
            Copy = CFDataCreateCopy(0, v42);
          }

          else
          {
            v43 = 0;
            theDataa = v41;
            while (1)
            {
              v44 = CFArrayGetValueAtIndex(ValueAtIndex, v43);
              v45 = CFStringGetTypeID();
              if (!v44 || CFGetTypeID(v44) != v45 || (sub_100008928(v44, &bytes[4]) & 1) == 0)
              {
                break;
              }

              v42 = theDataa;
              CFDataAppendBytes(theDataa, &bytes[4], 4);
              if (v35 == ++v43)
              {
                goto LABEL_90;
              }
            }

            __strlcpy_chk();
            Copy = 0;
            v42 = theDataa;
          }

          v51 = v42;
          goto LABEL_104;
        }

        syslog(5, "subnets: unrecognized option '%s'");
      }

LABEL_32:
      free(v13);
LABEL_33:
      if (++v9 == v5)
      {
        goto LABEL_106;
      }
    }
  }

  v59 = 0;
LABEL_106:
  free(v7);
  free(v8);
  v52 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    CFRelease(theArray);
    return 0;
  }

  *v57 = v59;
  return v52;
}