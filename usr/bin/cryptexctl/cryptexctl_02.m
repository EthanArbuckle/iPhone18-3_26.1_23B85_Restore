uint64_t sub_100035F5C(uint64_t a1, const char *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = -1;
  v9 = 0;
  Data = 0;
  v7 = -1;
  memset(__b, 0, sizeof(__b));
  v9 = _CFXPCCreateCFObjectFromXPCObject();
  if (v9)
  {
    Data = CFPropertyListCreateData(0, v9, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      sub_10004C3C0(__b, 0, 0, BytePtr, Length);
      v7 = open(v11, 513, 438);
      v14 = v7;
      if (v7 < 0)
      {
        warn("unable to create %s", v11);
        v10 = *__error();
      }

      else
      {
        v10 = sub_10004B8CC(v7, __b);
        if (v10)
        {
          warnc(v10, "unable to write plist data to %s", v11);
        }
      }
    }

    else
    {
      v10 = 222;
      warnx("unable to create XML data from CFDictionaryRef (%p)", v9);
    }
  }

  else
  {
    v5 = xpc_copy_debug_description();
    warnx("unable to bridge XPC dictionary to CFDictionaryRef\n%s", v5);
    v10 = 214;
    sub_100002DE4(&v5);
  }

  sub_10004C66C(__b);
  v13 = v10;
  sub_1000038DC(&v7);
  sub_100006B40(&Data);
  sub_100006B40(&v9);
  return v13;
}

uint64_t sub_100036158(uint64_t a1, char *a2, const char *a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = sub_100048084();
  i = 0;
  v23 = -1;
  v22 = 7;
  for (i = *v28; i; i = *i)
  {
    v22 += 2;
  }

  v21 = malloc_type_malloc(8 * ++v22, 0x50040EE9192B6uLL);
  if (v21)
  {
    v19 = 1;
    *v21 = v25;
    v3 = v19++;
    v21[v3] = "generate-image4";
    v4 = v19++;
    v21[v4] = "-K";
    v5 = *(v28 + 32);
    v6 = v19++;
    v21[v6] = v5;
    v7 = v19++;
    v21[v7] = "-o";
    v8 = v19++;
    v21[v8] = v26;
    for (i = *v28; i; i = *i)
    {
      v9 = v19++;
      v21[v9] = "-C";
      v10 = i[1];
      v11 = v19++;
      v21[v11] = v10;
    }

    if (v19 >= v22)
    {
      __assert_rtn("_generate_im4m_from_plist", "sign.c", 578, "i < number_args");
    }

    v12 = v19++;
    v21[v12] = v27;
    v13 = v19++;
    v21[v13] = 0;
    if (v19 != v22)
    {
      __assert_rtn("_generate_im4m_from_plist", "sign.c", 581, "i == number_args");
    }

    v18 = 0;
    v23 = posix_spawn(&v18, v25, 0, 0, v21, environ);
    if (v23)
    {
      warnc(v23, "unable to posix_spawn %s", v25);
      v29 = v23;
      v20 = 1;
    }

    else
    {
      v17 = -1;
      v16 = waitpid(v18, &v17, 0);
      if (v16 == v18)
      {
        if ((v17 & 0x7F) == 0x7F || (v17 & 0x7F) == 0)
        {
          if ((v17 & 0x7F) != 0)
          {
            warnx("generate-image4 exited with an unknown state");
            v23 = 35;
            v29 = 35;
            v20 = 1;
          }

          else if (BYTE1(v17))
          {
            warnx("generate-image4 returned non-zero exit: %d", BYTE1(v17));
            v23 = BYTE1(v17);
            v29 = BYTE1(v17);
            v20 = 1;
          }

          else
          {
            memset(&__b, 0, sizeof(__b));
            v23 = stat(v26, &__b);
            if (v23)
            {
              warn("unable to stat %s", v26);
              v23 = *__error();
              v29 = v23;
            }

            else
            {
              v29 = 0;
            }

            v20 = 1;
          }
        }

        else
        {
          warnx("generate-image4 exited with signal: %d", v17 & 0x7F);
          v23 = 4;
          v29 = 4;
          v20 = 1;
        }
      }

      else
      {
        if (!v16)
        {
          _os_crash();
          __break(1u);
          JUMPOUT(0x100036514);
        }

        warn("unexpected return code for waitpid: %d", v16);
        v29 = *__error();
        v20 = 1;
      }
    }
  }

  else
  {
    warn("unable to allocate array to store args for generate-image4");
    v23 = *__error();
    v29 = v23;
    v20 = 1;
  }

  sub_100002DE4(&v21);
  return v29;
}

uint64_t sub_1000366F0(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a3 & 1) != 0 || !mkdir("Signatures", 0x1FFu))
  {
    rename(a2, a1, a3);
    if (v3)
    {
      warn("unable to rename %s to %s", a2, a1);
      return *__error();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    warn("unable to create Signatures directory");
    return *__error();
  }
}

uint64_t sub_1000367D4(uint64_t a1, char *a2)
{
  v45 = a1;
  string = a2;
  v43 = 0;
  v42 = -1;
  object = 0;
  v2 = *(a1 + 200);
  if ((cryptex_bundle_copy_build_manifest2() & 1) == 0)
  {
    v40 = sub_100048090();
    v28 = 1;
    if (v40[1] <= 1uLL)
    {
      v28 = v40[2] > 1uLL;
    }

    if (v28)
    {
      v3 = 999;
    }

    else
    {
      v3 = 3;
    }

    v39 = v3;
    v27 = 1;
    if (v40[1] <= 1uLL)
    {
      v27 = v40[2] > 1uLL;
    }

    v4 = 2000;
    if (!v27)
    {
      v4 = 200;
    }

    v38[1] = v4;
    xdict[2] = "unknown error";
    __s1 = "unknown error";
    v37 = strdup("unknown error");
    v66 = "known-constant allocation";
    v65 = v37;
    v64 = strlen("unknown error");
    if (!v37)
    {
      v63 = 0;
      memset(&v70[40], 0, 0x50uLL);
      v61 = 0;
      v60 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v60 &= ~1u;
      }

      if (v60)
      {
        v5 = __error();
        v6 = strerror(*v5);
        sub_1000031B0(v70, v66, v64, v6);
        v61 = _os_log_send_and_compose_impl();
      }

      v57 = v61;
      v62 = v61;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100036A70);
    }

    xdict[1] = v37;
    v38[0] = v37;
    warnx("Failed to copy build manifest\n%s", v37);
    sub_100002DE4(v38);
    exit(66);
  }

  xdict[0] = 0;
  v42 = sub_100034A0C(v45, object, xdict);
  if (v42)
  {
    __assert_rtn("_update_build_manifest", "sign.c", 460, "err == 0");
  }

  value = xpc_dictionary_get_array(xdict[0], "Signatures");
  if (!value)
  {
    value = xpc_array_create_empty();
    if (!value)
    {
      warn("unable to create signatures array");
      v42 = *__error();
      goto LABEL_46;
    }

    xpc_dictionary_set_value(xdict[0], "Signatures", value);
    xpc_release(value);
  }

  v34 = xpc_string_create(string);
  if (v34)
  {
    xpc_array_append_value(value, v34);
    v13 = *(v45 + 200);
    if ((cryptex_bundle_update_build_manifest2() & 1) == 0)
    {
      v33 = sub_100048090();
      v26 = 1;
      if (v33[1] <= 1uLL)
      {
        v26 = v33[2] > 1uLL;
      }

      if (v26)
      {
        v14 = 999;
      }

      else
      {
        v14 = 3;
      }

      v32 = v14;
      v25 = 1;
      if (v33[1] <= 1uLL)
      {
        v25 = v33[2] > 1uLL;
      }

      v15 = 2000;
      if (!v25)
      {
        v15 = 200;
      }

      v31 = v15;
      if (v43)
      {
        v24 = sub_100017530(v43, v32, v31);
      }

      else
      {
        v67 = "unknown error";
        v29 = strdup("unknown error");
        v16 = strlen("unknown error");
        v56 = "known-constant allocation";
        v55 = v29;
        v54 = v16;
        if (!v29)
        {
          v53 = 0;
          memset(&v69[32], 0, 0x50uLL);
          v51 = 0;
          v50 = 3;
          v49 = &_os_log_default;
          v48 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v50 &= ~1u;
          }

          if (v50)
          {
            v22 = v56;
            v23 = v54;
            v17 = __error();
            v18 = strerror(*v17);
            sub_1000031B0(v69, v22, v23, v18);
            v47 = _os_log_send_and_compose_impl();
            v51 = v47;
          }

          v46 = v51;
          v52 = v51;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100036E3CLL);
        }

        v24 = v29;
      }

      v30 = v24;
      warnx("Failed to update manifest.\n%s", v24);
      sub_100002DE4(&v30);
      v42 = sub_100018A78(v43);
    }
  }

  else
  {
    warn("unable to create an XPC string for the signature path");
    v42 = *__error();
  }

LABEL_46:
  xpc_release(object);
  v21 = v42;
  sub_100006B40(&v43);
  return v21;
}

void sub_100036EE4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  tc_asset = cryptex_core_get_tc_asset();
  if (tc_asset && sub_100037078(a2, tc_asset, *(*(tc_asset + 8) + 40)))
  {
    warnx("unable to encode loadable trust cache in objects");
  }

  v4 = *(a3 + 48);
  info_asset = cryptex_core_get_info_asset();
  if (info_asset && sub_100037078(a2, info_asset, *(*(info_asset + 8) + 40)))
  {
    warnx("unable to encode cryptex info plist in objects");
  }

  v5 = *(a3 + 48);
  image_asset = cryptex_core_get_image_asset();
  if (image_asset && sub_100037078(a2, image_asset, *(*(image_asset + 8) + 40)))
  {
    warnx("unable to encode image in objects");
  }

  v6 = *(a3 + 48);
  volumehash_asset = cryptex_core_get_volumehash_asset();
  if (volumehash_asset)
  {
    if (sub_100037078(a2, volumehash_asset, *(*(volumehash_asset + 8) + 40)))
    {
      warnx("unable to encode image in objects");
    }
  }
}

uint64_t sub_100037078(void *a1, uint64_t a2, const char *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = ccsha384_di();
  v3 = (*(v17 + 8) + *(v17 + 16) + 19) >> 3;
  v16 = v7;
  v8 = (8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v7[-v8];
  v15 = v4;
  bzero(&v7[-v8], v5);
  v14 = -1;
  memset(bytes, 0, sizeof(bytes));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = sub_10004B524(*(v19 + 16), v12);
  if (v14)
  {
    warnc(v14, "unable to read %s", *(v19 + 32));
    v21 = v14;
    v11 = 1;
  }

  else
  {
    ccdigest_init();
    ccdigest_update();
    sub_1000243C4(v17, v9, bytes);
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      xpc_dictionary_set_value(v20, v18, empty);
      xpc_dictionary_set_data(empty, "DGST", bytes, 0x30uLL);
      xpc_release(empty);
      v21 = 0;
    }

    else
    {
      warn("unable to create dictionary for %s asset", *(v19 + 32));
      v21 = *__error();
    }

    v11 = 1;
  }

  return v21;
}

uint64_t sub_1000372A8(int a1)
{
  switch(a1)
  {
    case -536870911:
      return 104;
    case -536870210:
    case -536870211:
      return 12;
    case -536870209:
      return 72;
    case -536870208:
      return 19;
    case -536870207:
      return 1;
    case -536870206:
      return 22;
  }

  if ((a1 + 536870205) <= 2)
  {
    return 35;
  }

  switch(a1)
  {
    case -536870202:
      return 94;
    case -536870201:
      return 45;
    case -536870200:
      return 12;
    case -536870198:
    case -536870199:
      return 5;
    case -536870196:
      return 35;
    case -536870195:
      return 9;
  }

  if (a1 != -536870193 && a1 != -536870194)
  {
    switch(a1)
    {
      case -536870192:
        return 14;
      case -536870191:
        return 83;
      case -536870190:
        return 16;
      case -536870188:
      case -536870189:
        return 5;
      case -536870187:
        return 16;
      case -536870186:
        return 60;
      case -536870185:
        return 19;
      case -536870184:
        return 6;
      case -536870183:
        return 19;
    }

    if (a1 != -536870182)
    {
      switch(a1)
      {
        case -536870181:
          return 28;
        case -536870179:
          return 17;
        case -536870178:
          return 12;
        case -536870176:
        case -536870177:
          return 104;
        case -536870175:
          return 7;
        case -536870174:
          return 13;
      }

      if ((a1 + 536870173) <= 5)
      {
        return 104;
      }

      if (a1 != -536870167)
      {
        if (a1 != -536870166)
        {
          if (a1 == -536870165)
          {
            return 89;
          }

          if ((a1 + 536870164) > 4 && !a1)
          {
            return 0;
          }
        }

        return 104;
      }

      return 83;
    }

    return 19;
  }

  return 13;
}

uint64_t sub_100037760(io_object_t *a1, char *a2)
{
  v7 = a1;
  className = a2;
  iterator = 0;
  v3 = 0;
  if (a1 && className && !IORegistryEntryGetChildIterator(*v7, "IOService", &iterator))
  {
    while (1)
    {
      object = IOIteratorNext(iterator);
      if (!object)
      {
        break;
      }

      if (IOObjectConformsTo(object, className))
      {
        IOObjectRelease(*v7);
        *v7 = object;
        v3 = 1;
        break;
      }

      IOObjectRelease(object);
    }
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100037880(uint64_t a1, int a2, char *const *a3)
{
  v82 = a1;
  v81 = a2;
  v80 = a3;
  v79 = -1;
  v78 = a3;
  v77 = -1;
  v76 = 0;
  memset(__b, 0, sizeof(__b));
  LODWORD(__b[3]) = -1;
  __b[6] = getenv("CRYPTEXCTL_UDID");
  __b[7] = "tatsu";
  sub_1000480E0();
  if (__b[6])
  {
    sub_1000483C8(1uLL, "loaded UDID from environment variable %s: %s", v3, v4, v5, v6, v7, v8, "CRYPTEXCTL_UDID");
  }

  while (1)
  {
    v77 = getopt_long(v81, v78, *(v82 + 32), *(v82 + 40), &v76);
    if (v77 == -1)
    {
      break;
    }

    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = (*(v82 + 40) + 32 * v76);
    v70 = v80[optind - 1];
    if (optind < 1)
    {
      v69 = 0;
      memset(&v83[8], 0, 0x50uLL);
      v67 = 0;
      v66 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v66 &= ~1u;
      }

      if (v66)
      {
        sub_1000013C8(v83, optind);
        v63 = _os_log_send_and_compose_impl();
        v67 = v63;
      }

      v62[1] = v67;
      v68 = v67;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100037AECLL);
    }

    sub_1000483C8(2uLL, "ch = %c, idx = %d, optind = %d", v9, v10, v11, v12, v13, v14, v77);
    switch(v77)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v71);
      case '?':
        errx(64, "unknown option: %s", v70);
      case 'U':
        __b[8] = optarg;
        sub_10004860C(0, 1uLL, "signer url = %s", v16, v17, v18, v19, v20, optarg);
        break;
      case 'X':
        if (os_variant_allows_internal_security_policies())
        {
          __b[0] |= 1uLL;
          sub_10004860C(0, 1uLL, "will use sso", v55, v56, v57, v58, v59, v61);
        }

        else
        {
          warnx("sso unsupported");
        }

        break;
      case 'b':
        if (!strcasecmp(optarg, "U") || !strcasecmp(optarg, "L") || !strcasecmp(optarg, "F"))
        {
          sub_1000483C8(2uLL, "setting buffering mode: %s", v27, v28, v29, v30, v31, v32, optarg);
          __b[5] = optarg;
        }

        else
        {
          v62[0] = 0;
          v79 = sub_100048490(optarg, v62);
          if (v79)
          {
            errc(64, v79, "invalid buffer size: %s", optarg);
          }

          if (v62[0] > 0x10000)
          {
            errx(64, "invalid buffer size: %llu", v62[0]);
          }

          sub_1000483C8(2uLL, "setting buffer size: %llu", v33, v34, v35, v36, v37, v38, v62[0]);
          LODWORD(__b[3]) = v62[0];
        }

        break;
      case 'd':
        v79 = sub_100048490(optarg, &v73);
        if (v79)
        {
          errc(64, v79, "invalid debug level: %s", optarg);
        }

        __b[1] = v73;
        break;
      case 'h':
        __b[10] = optarg;
        sub_10004860C(0, 1uLL, "socks proxy host = %s", v16, v17, v18, v19, v20, optarg);
        break;
      case 'l':
        if (strcmp(optarg, "os") && strcmp(optarg, "dt") && strcmp(optarg, "stream"))
        {
          errx(64, "invalid log mode: %s", optarg);
        }

        sub_1000483C8(2uLL, "setting log mode: %s", v21, v22, v23, v24, v25, v26, optarg);
        __b[4] = optarg;
        break;
      case 'p':
        v79 = sub_100048490(optarg, &v72);
        if (v79)
        {
          errc(64, v79, "invalid port number: %s", optarg);
        }

        LODWORD(__b[11]) = v72;
        sub_10004860C(0, 1uLL, "socks proxy port = %d", v50, v51, v52, v53, v54, v72);
        break;
      case 's':
        if (strcasecmp(optarg, "tatsu") && strcasecmp(optarg, "diavlo") && strcasecmp(optarg, "factory") && strcasecmp(optarg, "none"))
        {
          errx(64, "invalid signing environment: %s", optarg);
        }

        sub_10004860C(0, 1uLL, "tss = %s", v45, v46, v47, v48, v49, optarg);
        __b[7] = optarg;
        break;
      case 't':
        __b[9] = optarg;
        sub_10004860C(0, 1uLL, "will use auth token", v16, v17, v18, v19, v20, v61);
        break;
      case 'u':
        if (__b[6])
        {
          sub_1000483C8(1uLL, "overriding UDID environment variable with UDID provided on the command line", v15, v16, v17, v18, v19, v20, v61);
        }

        __b[6] = optarg;
        sub_10004860C(0, 1uLL, "udid = %s", v16, v17, v18, v19, v20, optarg);
        break;
      case 'v':
        v79 = sub_100048490(optarg, &v74);
        if (v79)
        {
          sub_1000487F4(v79, "invalid verbosity level: %s", v39, v40, v41, v42, v43, v44, optarg);
        }

        __b[2] = v74;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000380ECLL);
    }
  }

  if (!__b[10] && SLODWORD(__b[11]) > 0 || __b[10] && SLODWORD(__b[11]) <= 0)
  {
    errx(64, "must provide a valid socks proxy host and port");
  }

  v79 = sub_100038280(__b);
  return sysexit_np();
}

uint64_t sub_100038280(uint64_t a1)
{
  v81 = a1;
  v80 = 0;
  v79 = -1;
  v78 = sub_100048090();
  v77 = sub_100048084();
  v76 = -1;
  bzero(v100, 0x400uLL);
  memcpy(__dst, "com.apple.security.cryptexctl.XXXXXX", sizeof(__dst));
  v75 = 0;
  v74 = 0;
  v73 = 0;
  if (*(v81 + 32))
  {
    if (!strcmp(*(v81 + 32), "os"))
    {
      *v78 |= 1uLL;
    }

    else if (!strcmp(*(v81 + 32), "dt"))
    {
      *v78 |= 3uLL;
    }

    else if (!strcmp(*(v81 + 32), "stream"))
    {
      *v78 |= 0x21uLL;
    }

    else
    {
      __break(1u);
    }
  }

  if (*(v81 + 40))
  {
    setbuf(__stdoutp, *(v81 + 40));
  }

  else if (*(v81 + 24) > 0)
  {
    setbuffer(__stdoutp, "F", *(v81 + 24));
  }

  v78[1] = *(v81 + 16);
  v78[2] = *(v81 + 8);
  if (*(v81 + 16) || *(v81 + 8))
  {
    *v78 |= 8uLL;
  }

  v1 = *v78;
  v75 = os_flagset_copy_string();
  sub_1000483C8(2uLL, "flags = %s", v2, v3, v4, v5, v6, v7, v75);
  sub_10003908C(v78);
  v74 = os_log_create("com.apple.libcryptex", "dummy");
  v72 = unsetenv("OS_ACTIVITY_DT_MODE");
  if (v72 == -1)
  {
    v71 = 0;
    memset(&v98[17], 0, 0x50uLL);
    v69 = 0;
    v68 = 3;
    v67 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v68 &= ~1u;
    }

    if (v68)
    {
      v8 = __error();
      sub_1000013C8(v98, *v8);
      v65 = _os_log_send_and_compose_impl();
      v69 = v65;
    }

    v64 = v69;
    v70 = v69;
    _os_crash_msg();
    __break(1u);
  }

  v63 = unsetenv("OS_ACTIVITY_MODE");
  if (v63 == -1)
  {
    v62 = 0;
    memset(&v97[16], 0, 0x50uLL);
    v60 = 0;
    v59 = 3;
    v58 = &_os_log_default;
    v57 = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v59 &= ~1u;
    }

    if (v59)
    {
      v9 = __error();
      sub_1000013C8(v97, *v9);
      v56 = _os_log_send_and_compose_impl();
      v60 = v56;
    }

    v55 = v60;
    v61 = v60;
    _os_crash_msg();
    __break(1u);
  }

  sub_10004B40C(65537, v100);
  v76 = open(v100, 0x100000);
  v83 = v76;
  if (v76 < 0)
  {
    v79 = *__error();
    warnc(v79, "open: %s", v100);
  }

  else
  {
    v79 = sub_10004B3B0(v76, __dst, v77 + 584);
    if (v79)
    {
      warnc(v79, "mkdtemp: %s", __dst);
    }

    else
    {
      v10 = v77[584];
      v79 = realpath_np();
      v54 = v79;
      if (v79)
      {
        v53 = 0;
        memset(&v96[16], 0, 0x50uLL);
        v51 = 0;
        v50 = 3;
        v49 = &_os_log_default;
        v48 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v50 &= ~1u;
        }

        if (v50)
        {
          sub_100003098(v96, v54);
          v47 = _os_log_send_and_compose_impl();
          v51 = v47;
        }

        v46 = v51;
        v52 = v51;
        _os_crash_msg();
        __break(1u);
      }

      if (!strcasecmp(*(v81 + 56), "tatsu"))
      {
        v73 = &unk_100084740;
      }

      else if (!strcasecmp(*(v81 + 56), "diavlo"))
      {
        if (*v81)
        {
          v79 = 22;
          warnc(22, "cannot use signing environment diavlo with sso");
          goto LABEL_85;
        }

        v73 = &unk_100084770;
      }

      else if (!strcasecmp(*(v81 + 56), "factory"))
      {
        if (*v81)
        {
          v79 = 22;
          warnc(22, "cannot use signing environment factory with sso");
          goto LABEL_85;
        }

        v73 = &unk_1000847A0;
      }

      else if (!strcasecmp(*(v81 + 56), "none"))
      {
        v73 = &unk_1000847D0;
      }

      if (*(v81 + 64))
      {
        v73[1] = *(v81 + 64);
      }

      if (*(v81 + 80))
      {
        v73[3] = *(v81 + 80);
      }

      if (*(v81 + 88))
      {
        *(v73 + 8) = *(v81 + 88);
      }

      if (*(v81 + 72))
      {
        v73[5] = *(v81 + 72);
      }

      v78[5] = v73;
      if (*v81)
      {
        *v78 |= 0x10uLL;
      }

      if (*(v81 + 48))
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0;
        v44 = 32;
        v45 = 0;
        v39 = dispatch_queue_create("com.apple.security.cryptexctl.cryptexctl.rsdbrowse", 0);
        v40 = v39;
        v32 = _NSConcreteStackBlock;
        v33 = 0x40000000;
        v34 = 0;
        v35 = sub_100039C28;
        v36 = &unk_10007D620;
        v37 = &v41;
        v38 = v81;
        remote_device_browse_present();
        sub_10004809C();
        if (v42[3])
        {
          v80 = sub_10003F6B4(v42[3]);
          if (v80)
          {
            v79 = sub_100018A78(v80);
            v31 = sub_100048090();
            v26 = 1;
            if (v31[1] <= 1uLL)
            {
              v26 = v31[2] > 1uLL;
            }

            if (v26)
            {
              v16 = 999;
            }

            else
            {
              v16 = 3;
            }

            v30 = v16;
            v25 = 1;
            if (v31[1] <= 1uLL)
            {
              v25 = v31[2] > 1uLL;
            }

            v17 = 2000;
            if (!v25)
            {
              v17 = 200;
            }

            v29 = v17;
            if (v80)
            {
              v24 = sub_100017530(v80, v30, v29);
            }

            else
            {
              v84 = "unknown error";
              v27 = strdup("unknown error");
              v18 = strlen("unknown error");
              v95 = "known-constant allocation";
              v94 = v27;
              v93 = v18;
              if (!v27)
              {
                v92 = 0;
                memset(&v101[40], 0, 0x50uLL);
                v90 = 0;
                v89 = 3;
                v88 = &_os_log_default;
                v87 = OS_LOG_TYPE_ERROR;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  v89 &= ~1u;
                }

                if (v89)
                {
                  v22 = v95;
                  v23 = v93;
                  v19 = __error();
                  v20 = strerror(*v19);
                  sub_1000031B0(v101, v22, v23, v20);
                  v86 = _os_log_send_and_compose_impl();
                  v90 = v86;
                }

                v85 = v90;
                v91 = v90;
                _os_crash_msg();
                __break(1u);
              }

              v24 = v27;
            }

            v28 = v24;
            warnx("initalize remote device failed\n%s", v24);
            sub_100002DE4(&v28);
          }

          else
          {
            v78[4] = v42[3];
            sub_10004860C(0, 1uLL, "will operate on device: [udid: %s]", v11, v12, v13, v14, v15, *(v42[3] + 168));
          }
        }

        else
        {
          v79 = 3;
          warnx("no device for udid: %s", *(v81 + 48));
        }

        sub_1000030D0(&v40);
        _Block_object_dispose(&v41, 8);
      }
    }
  }

LABEL_85:
  v82 = v79;
  sub_1000030D0(&v74);
  sub_100002DE4(&v75);
  sub_1000038DC(&v76);
  sub_100006B40(&v80);
  return v82;
}

void sub_10003908C(void *a1)
{
  v23 = a1;
  v22 = -1;
  v21 = sub_100048084();
  v20 = 0;
  __argv = *(v21 + 289);
  v18 = 0;
  v17 = 0;
  if (sub_100039D1C(v23))
  {
    sub_1000483C8(1uLL, "will re-exec: %s", v1, v2, v3, v4, v5, v6, v21);
    v20 = setenv("_CRYPTEX_CLI_ENV_POST_REEXEC", "1", 1);
    if (v20 == -1)
    {
      memset(&v32[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v7 = __error();
      sub_1000013C8(v32, *v7);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawnattr_init(&v18);
    v16 = v22;
    if (v22)
    {
      memset(&v31[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v31, v16);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawnattr_setflags(&v18, 64);
    v15 = v22;
    if (v22)
    {
      memset(&v30[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v30, v15);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn_file_actions_init(&v17);
    v14 = v22;
    if (v22)
    {
      memset(&v29[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v29, v14);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn_file_actions_addinherit_np(&v17, 0);
    v13 = v22;
    if (v22)
    {
      memset(&v28[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v28, v13);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn_file_actions_addinherit_np(&v17, 1);
    v12 = v22;
    if (v22)
    {
      memset(&v27[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v27, v12);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn_file_actions_addinherit_np(&v17, 2);
    v11 = v22;
    if (v22)
    {
      memset(&v26[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v26, v11);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn(0, v21, &v17, &v18, __argv, environ);
    if (v22)
    {
      errc(71, v22, "posix_spawn: %s", v21);
    }

    v22 = posix_spawnattr_destroy(&v18);
    v10 = v22;
    if (v22)
    {
      memset(&v25[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v25, v10);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = posix_spawn_file_actions_destroy(&v17);
    v9 = v22;
    if (v22)
    {
      memset(&v24[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v24, v9);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    sub_1000483C8(1uLL, "declining to re-exec", v1, v2, v3, v4, v5, v6, v8);
  }
}

void sub_100039C28(void *a1, void *a2, char a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  xstring[1] = a1;
  xstring[0] = 0;
  if (a3)
  {
    sub_1000480C0();
  }

  else if (!*(*(a1[4] + 8) + 24))
  {
    xstring[0] = remote_device_copy_property();
    __s1 = xpc_string_get_string_ptr(xstring[0]);
    if (__s1)
    {
      if (!strcmp(__s1, *(a1[5] + 48)))
      {
        *(*(a1[4] + 8) + 24) = sub_10003F450(v7, 0);
      }
    }
  }

  sub_1000030D0(xstring);
}

BOOL sub_100039D1C(void *a1)
{
  v9 = 0;
  if ((*a1 & 4) != 0)
  {
    return 0;
  }

  else
  {
    if ((*a1 & 2) != 0)
    {
      if (setenv("OS_ACTIVITY_DT_MODE", "1", 1) == -1)
      {
        memset(&v18[8], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v1 = __error();
        sub_1000013C8(v18, *v1);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100039EACLL);
      }

      v9 = 1;
    }

    if (*a1)
    {
      __value = "info";
      if (a1[2])
      {
        if (a1[2] >= 2uLL)
        {
          __value = "debug";
        }

        if (setenv("OS_ACTIVITY_MODE", __value, 1) == -1)
        {
          memset(&v17[16], 0, 0x50uLL);
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v2 = __error();
          sub_1000013C8(v17, *v2);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10003A03CLL);
        }

        ++v9;
      }

      if (setenv("LOG_STYLE", "compact", 1) == -1)
      {
        memset(&v16[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v3 = __error();
        sub_1000013C8(v16, *v3);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A180);
      }
    }

    if ((*a1 & 0x20) != 0)
    {
      if (setenv("OS_ACTIVITY_STREAM", "live", 1) == -1)
      {
        memset(&v15[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v4 = __error();
        sub_1000013C8(v15, *v4);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A2C8);
      }

      ++v9;
    }

    if ((*a1 & 8) != 0)
    {
      memset(v14, 0, sizeof(v14));
      __snprintf_chk(v14, 0x40uLL, 0, 0x40uLL, "%llu", a1[1]);
      if (setenv("CRYPTEXCTL_VERBOSE_LEVEL", v14, 1) == -1)
      {
        memset(&v13[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v5 = __error();
        sub_1000013C8(v13, *v5);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A45CLL);
      }

      __snprintf_chk(v14, 0x40uLL, 0, 0x40uLL, "%llu", a1[2]);
      if (setenv("CRYPTEXCTL_DEBUG_LEVEL", v14, 1) == -1)
      {
        memset(&v12[16], 0, 0x50uLL);
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v6 = __error();
        sub_1000013C8(v12, *v6);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003A5C0);
      }

      ++v9;
    }

    return v9 != 0;
  }
}

uint64_t sub_10003A62C(uint64_t a1, int a2, char **a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -1;
  v7 = a3;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  sub_1000480E0();
  while (1)
  {
    v6 = getopt_long(v10, v7, *(v11 + 32), *(v11 + 40), &v5);
    if (v6 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v12[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v12, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003A804);
    }

    switch(v6)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v11 + 40) + 32 * v5));
      case '?':
        errx(64, "unknown option: %s", v9[optind - 1]);
      case 'A':
        v4 |= 4uLL;
        break;
      case 'B':
        v4 |= 8uLL;
        break;
      case 'p':
        v4 |= 2uLL;
        break;
      case 't':
        v4 |= 1uLL;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10003A900);
    }
  }

  v9 += optind;
  v10 -= optind;
  v8 = sub_10003A980(&v4);
  return sysexit_np();
}

uint64_t sub_10003A980(void *a1)
{
  v2 = 0xFFFFFFFF00000000;
  if (*a1)
  {
    HIDWORD(v2) = 78;
    warnx("i hope you did not expect this to work", v2);
  }

  else if ((*a1 & 2) != 0)
  {
    HIDWORD(v2) = 61;
    warnx("@launchderp said no", v2);
  }

  else
  {
    if ((*a1 & 4) != 0)
    {
      HIDWORD(v2) = 1;
      raise(9);
      pause();
    }

    if ((*a1 & 8) != 0)
    {
      HIDWORD(v2) = 70;
      warnx("blobs have been saved, and the sudo(1) administrator has been notified", v2);
    }

    else
    {
      LODWORD(v2) = arc4random_uniform(0xAu);
      sleep(v2);
      warnx("timed out waiting for the next jelbrek", v2);
      return 60;
    }
  }

  return v3;
}

uint64_t sub_10003AA7C(uint64_t a1, void *a2, uint64_t (*a3)(void, void, uint64_t *, uint64_t *))
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  v6 = 0;
  v5 = 0;
  sub_10003AB6C(v12, __b);
  v8 = v10(__b[0], __b[1], &v6, &v5);
  if (v8)
  {
    v9 = 92;
  }

  else
  {
    sub_10004C358(v11, 0, j__free, v6, v5);
    v6 = 0;
    v9 = 0;
  }

  sub_10004C66C(__b);
  v4 = v9;
  sub_100002DE4(&v6);
  return v4;
}

void *sub_10003AB6C(uint64_t a1, void *a2)
{
  v4 = strnstr(*a1, "-----BEGIN", *(a1 + 8));
  if (!v4)
  {
    v4 = *a1;
  }

  v3 = &v4[-*a1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x10003AC00);
  }

  return sub_10004C358(a2, 0, 0, v4, *(a1 + 8) - v3);
}

char *sub_10003AC40(__n128 *a1, uint64_t a2)
{
  v5 = malloc_type_calloc(1uLL, 0xE0uLL, 0x8709206FuLL);
  if (!v5)
  {
    memset(&v8[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v8, "known-constant allocation", 224, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003ADF4);
  }

  *v5 = a2;
  sub_10004C42C((v5 + 40), a1);
  *(v5 + 12) = v5 + 40;
  sub_1000496F4((v5 + 8), "com.apple.security.cryptexctl", "img4-certificate");
  return v5;
}

uint64_t sub_10003AE8C(void *a1)
{
  v47 = a1;
  v46 = -1;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v38 = 0;
  v37 = 0;
  if (a1[12])
  {
    v46 = sub_10003AA7C(v47[12], v47 + 13, &AMSupportX509CreateDerCertFromPEM);
    if (v46)
    {
      v36 = v47[1];
      if (!v36)
      {
        v36 = "[anonymous]";
      }

      v35 = *__error();
      v34 = v47[3];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v61, v36, v46);
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s: failed to read der from pem: %{darwin.errno}d", v61, 0x12u);
      }

      *__error() = v35;
      goto LABEL_99;
    }

    v47[20] = v47 + 13;
  }

  v1 = *v47[20];
  v2 = *(v47[20] + 8);
  v45 = SecCertificateCreateWithBytes();
  if (!v45)
  {
    v46 = 92;
    v33 = v47[1];
    if (!v33)
    {
      v33 = "[anonymous]";
    }

    v32 = *__error();
    v31 = v47[3];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v60, v33);
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}s: der representation invalid", v60, 0xCu);
    }

    *__error() = v32;
    goto LABEL_99;
  }

  v44 = SecCertificateCopyKey(v45);
  if (!v44)
  {
    v46 = 92;
    v30 = v47[1];
    if (!v30)
    {
      v30 = "[anonymous]";
    }

    v29 = *__error();
    v28 = v47[3];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v59, v30);
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: failed to copy public key", v59, 0xCu);
    }

    *__error() = v29;
    goto LABEL_99;
  }

  v43 = SecKeyCopyAttributes(v44);
  if (!v43)
  {
    v46 = 93;
    v27 = v47[1];
    if (!v27)
    {
      v27 = "[anonymous]";
    }

    v26 = *__error();
    v25 = v47[3];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v58, v27);
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s: failed to copy public key attributes", v58, 0xCu);
    }

    *__error() = v26;
    goto LABEL_99;
  }

  Value = CFDictionaryGetValue(v43, kSecAttrKeySizeInBits);
  if (!Value)
  {
    v46 = 93;
    v24 = v47[1];
    if (!v24)
    {
      v24 = "[anonymous]";
    }

    v23 = *__error();
    v22 = v47[3];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v57, v24);
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: failed to copy public key size attribute", v57, 0xCu);
    }

    *__error() = v23;
    goto LABEL_99;
  }

  v21 = 0;
  v49 = Value;
  v48 = &CFNumberGetTypeID;
  v5 = CFGetTypeID(Value);
  if (v5 == CFNumberGetTypeID())
  {
    v21 = Value;
  }

  if (!v21)
  {
    v46 = 93;
    v20 = v47[1];
    if (!v20)
    {
      v20 = "[anonymous]";
    }

    v19 = *__error();
    v18 = v47[3];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D4(v56, v20);
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s: key size is not a CFNumber", v56, 0xCu);
    }

    *__error() = v19;
    goto LABEL_99;
  }

  v41 = sub_10001813C(v21) / 8uLL;
  AlgorithmId = SecKeyGetAlgorithmId();
  switch(AlgorithmId)
  {
    case 0:
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003B6C8);
    case 1:
      v17 = v47[1];
      if (!v17)
      {
        v17 = "[anonymous]";
      }

      v16 = *__error();
      v15 = v47[3];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v55, v17);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: rsa public key", v55, 0xCu);
      }

      *__error() = v16;
      v47[27] = &off_10007ED18;
      goto LABEL_66;
    case 2:
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003B7E4);
  }

  if (AlgorithmId != 3)
  {
    memset(&v53[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v53, AlgorithmId);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003BAACLL);
  }

  switch(v41)
  {
    case 0x18uLL:
      v47[27] = &off_10007EE28;
LABEL_66:
      SignatureHashAlgorithm = SecCertificateGetSignatureHashAlgorithm();
      switch(SignatureHashAlgorithm)
      {
        case 4:
          v47[26] = &off_10007EDD8;
          v37 = ccsha1_di();
          v38 = 20;
          break;
        case 5:
          if (AlgorithmId == 1)
          {
            v47[26] = &off_10007ED68;
          }

          else
          {
            v47[26] = &off_10007ED98;
          }

          v37 = ccsha224_di();
          v38 = 28;
          break;
        case 6:
          if (AlgorithmId == 1)
          {
            v47[26] = &off_10007ED38;
          }

          else
          {
            v47[26] = &off_10007EDA8;
          }

          v37 = ccsha256_di();
          v38 = 32;
          break;
        case 7:
          if (AlgorithmId == 1)
          {
            v47[26] = &off_10007ED48;
          }

          else
          {
            v47[26] = &off_10007EDB8;
          }

          v37 = ccsha384_di();
          v38 = 48;
          break;
        case 8:
          if (AlgorithmId == 1)
          {
            v47[26] = &off_10007ED58;
          }

          else
          {
            v47[26] = &off_10007EDC8;
          }

          v37 = ccsha512_di();
          v38 = 64;
          break;
        default:
          v46 = 45;
          v11 = v47[1];
          if (!v11)
          {
            v11 = "[anonymous]";
          }

          v10 = *__error();
          v9 = v47[3];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100009614(v52, v11, SignatureHashAlgorithm);
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: unsupported signature algorithm: %d", v52, 0x12u);
          }

          *__error() = v10;
          break;
      }

      v8 = v47[1];
      if (!v8)
      {
        v8 = "[anonymous]";
      }

      v7 = *__error();
      v6 = v47[3];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100011C40(v51, v8, v38);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: digest output length = %lu", v51, 0x16u);
      }

      *__error() = v7;
      v47[22] = v38;
      v47[23] = v47[26];
      v47[24] = v37;
      v47[25] = v47 + 22;
      v50 = v45;
      v47[21] = CFRetain(v45);
      v46 = 0;
      goto LABEL_99;
    case 0x20uLL:
      v47[27] = &off_10007EE38;
      goto LABEL_66;
    case 0x30uLL:
      v47[27] = &off_10007EE48;
      goto LABEL_66;
    case 0x40uLL:
      v47[27] = &off_10007EE58;
      goto LABEL_66;
  }

  v46 = 45;
  v14 = v47[1];
  if (!v14)
  {
    v14 = "[anonymous]";
  }

  v13 = *__error();
  v12 = v47[3];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100011C40(v54, v14, v41);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: unsupported ecdsa key size: %lu", v54, 0x16u);
  }

  *__error() = v13;
LABEL_99:
  v4 = v46;
  sub_100006B40(&v43);
  sub_100006B40(&v44);
  sub_100006B40(&v45);
  return v4;
}

void sub_10003BF44(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*(v1 + 20))
    {
      sub_10004C66C(*(v1 + 20));
    }

    if (*(v1 + 20))
    {
      sub_10004C66C(*(v1 + 12));
    }

    if (*(v1 + 21))
    {
      CFRelease(*(v1 + 21));
    }

    sub_100049728(v1 + 8);
    free(v1);
    *a1 = 0;
  }
}

uint64_t sub_10003C004(uint64_t a1, int a2, char *const *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = -1;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  *__s1 = 0u;
  v7 = 0u;
  sub_1000480E0();
  while (1)
  {
    v9 = getopt_long(v13, v10, *(v14 + 32), *(v14 + 40), &v8);
    if (v9 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v15[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v15, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003C1E4);
    }

    switch(v9)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v14 + 40) + 32 * v8));
      case '?':
        errx(64, "unknown option: %s", v12[optind - 1]);
      case 'c':
        __s1[0] = (__s1[0] | 2);
        break;
      case 'd':
        __s1[0] = (__s1[0] | 1);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10003C2A0);
    }
  }

  v12 += optind;
  v13 -= optind;
  if (v13 < 1)
  {
    errx(64, "a log action must be provided");
  }

  __s1[1] = *v12;
  if (strcmp(__s1[1], "show") && strcmp(__s1[1], "stream") && strcmp(__s1[1], "collect"))
  {
    errx(64, "invalid log action: %s", __s1[1]);
  }

  ++v12;
  if (--v13 >= 1)
  {
    v5 = v13;
    v4 = v12;
    if (!strcmp(*v12, "--"))
    {
      ++v4;
      --v5;
    }

    *&v7 = v5;
    *(&v7 + 1) = v4;
  }

  v11 = sub_10003C434(__s1);
  return sysexit_np();
}

uint64_t sub_10003C434(uint64_t a1)
{
  v61 = a1;
  v60 = -1;
  v59 = "log";
  i = 0;
  v100 = 0;
  v99 = "log";
  v100 = *(a1 + 8);
  memset(__b, 0, sizeof(__b));
  v57 = 0;
  __argv = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = -1;
  v50 = -1;
  if (!strcmp(*(v61 + 8), "collect"))
  {
    v49 = 0;
    __s1 = "host";
    v48 = strdup("host");
    v84 = "known-constant allocation";
    v83 = v48;
    v82 = strlen("host");
    if (!v48)
    {
      v81 = 0;
      memset(&v102[40], 0, 0x50uLL);
      v79 = 0;
      v78 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v78 &= ~1u;
      }

      if (v78)
      {
        v12 = __error();
        v13 = strerror(*v12);
        sub_1000031B0(v102, v84, v82, v13);
        v75 = _os_log_send_and_compose_impl();
        v79 = v75;
      }

      v74 = v79;
      v80 = v79;
      _os_crash_msg();
      __break(1u);
    }

    v49 = v48;
    sub_10004860C(__stdoutp, 0, "Collecting logs from %s", v7, v8, v9, v10, v11, v48);
    sub_100002DE4(&v49);
  }

  else
  {
    __b[v57++] = "--predicate";
    __b[v57++] = off_100084800[0];
  }

  if (*v61)
  {
    __b[v57++] = "-d";
  }

  if ((*v61 & 2) != 0)
  {
    __b[v57++] = "--style";
    __b[v57++] = "compact";
  }

  v14 = *(v61 + 16);
  v54 = v14 + 2 + v57 + 1;
  sub_1000483C8(2uLL, "log argc = %lu", v1, v2, v3, v4, v5, v6, v14 + 2 + v57 + 1);
  v46 = v54;
  if (_dispatch_is_multithreaded())
  {
    v89 = v46;
    v88 = 8;
    v87 = 0;
    while (1)
    {
      v87 = malloc_type_calloc(v89, v88, 0x8A375538uLL);
      if (v87)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v47 = v87;
  }

  else
  {
    count = v46;
    size = 8;
    v47 = malloc_type_calloc(v46, 8uLL, 0x8709206FuLL);
    v73 = "known-constant allocation";
    v72 = v47;
    v71 = 8;
    if (!v47)
    {
      v70 = 0;
      memset(&v101[32], 0, 0x50uLL);
      v68 = 0;
      v67 = 3;
      v66 = &_os_log_default;
      v65 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v67 &= ~1u;
      }

      if (v67)
      {
        v36 = v73;
        v37 = v71;
        v21 = __error();
        v22 = strerror(*v21);
        sub_1000031B0(v101, v36, v37, v22);
        v64 = _os_log_send_and_compose_impl();
        v68 = v64;
      }

      v63 = v68;
      v69 = v68;
      _os_crash_msg();
      __break(1u);
    }
  }

  __argv = v47;
  for (i = 0; i < 2; ++i)
  {
    __argv[v55] = (&v99)[i];
    v32 = __argv[v55];
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v15, v16, v17, v18, v19, v20, v55++);
  }

  for (i = 0; i < v57; ++i)
  {
    if (i >= 7)
    {
      _os_crash();
      __break(1u);
    }

    __argv[v55] = __b[i];
    v33 = __argv[v55];
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v15, v16, v17, v18, v19, v20, v55++);
  }

  for (i = 0; i < *(v61 + 16); ++i)
  {
    __argv[v55] = *(*(v61 + 24) + 8 * i);
    v34 = __argv[v55];
    sub_1000483C8(2uLL, "log argv[%lu] = %s", v15, v16, v17, v18, v19, v20, v55++);
  }

  v35 = __argv[v55];
  sub_1000483C8(2uLL, "log argv[%lu] = %p", v15, v16, v17, v18, v19, v20, v55);
  if (__argv[v55])
  {
    memset(&v97[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_10000AD08(v97, v55, __argv[v55]);
    v31 = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawnattr_init(&v53);
  v45 = v60;
  if (v60)
  {
    memset(&v96[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v96, v45);
    v31 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawnattr_setflags(&v53, 128);
  v44 = v60;
  if (v60)
  {
    memset(&v95[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v95, v44);
    v31 = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawn_file_actions_init(&v52);
  v43 = v60;
  if (v60)
  {
    memset(&v94[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v94, v43);
    v31 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawn_file_actions_addinherit_np(&v52, 0);
  v42 = v60;
  if (v60)
  {
    memset(&v93[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v93, v42);
    v31 = v93;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawn_file_actions_addinherit_np(&v52, 1);
  v41 = v60;
  if (v60)
  {
    memset(&v92[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v92, v41);
    v31 = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawn_file_actions_addinherit_np(&v52, 2);
  v40 = v60;
  if (v60)
  {
    memset(&v91[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v91, v40);
    v31 = v91;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v60 = posix_spawnp(&v51, v59, &v52, 0, __argv, environ);
  if (v60)
  {
    warnc(v60, "posix_spawn");
  }

  else
  {
    sub_10003D788(v51);
    while (1)
    {
      v39 = waitpid(v51, &v50, 0);
      if (v39 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        err(71, "waitpid[%d]", v51);
      }

      warnx("waitpid: interrupted");
    }

    if (v39 != v51)
    {
      errx(71, "waitpid: %d != %d", v39, v51);
    }

    if ((v50 & 0x7F) != 0)
    {
      if ((v50 & 0x7F) != 0x7F && (v50 & 0x7F) != 0)
      {
        v28 = strsignal(v50 & 0x7F);
        errx(71, "child signaled: %s", v28);
      }

      if ((v50 & 0x7F) == 0x7F && v50 >> 8 != 19)
      {
        v29 = strsignal(v50 >> 8);
        errx(71, "child stopped: %s", v29);
      }
    }

    else if (BYTE1(v50))
    {
      if (BYTE1(v50) == 77)
      {
        v60 = 1;
        warnx("collect must be run as root. Hint: 'sudo -E'");
      }

      else
      {
        if (BYTE1(v50) != 127)
        {
          errx(71, "child exited: %d", BYTE1(v50));
        }

        v60 = 88;
        warnx("no interpreter");
      }
    }

    else
    {
      sub_10004860C(0, 1uLL, "log exited successfully", v23, v24, v25, v26, v27, v31);
    }
  }

  free(__argv);
  v38 = posix_spawn_file_actions_destroy(&v52);
  if (v38)
  {
    memset(&v90[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v90, v38);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v60;
}

void sub_10003D788(int a1)
{
  pid = a1;
  v48 = -1;
  v47 = -1;
  error_value = 5;
  target_task = 0;
  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  v42 = 0;
  memset(__b, 0, sizeof(__b));
  v41 = __b;
  error_value = task_name_for_pid(mach_task_self_, pid, &target_task);
  if (error_value)
  {
    v48 = 1;
    v38 = pid;
    v7 = mach_error_string(error_value);
    warnx("failed to get task-name port for pid: %d: %s", v38, v7);
  }

  else
  {
    sub_1000483C8(2uLL, "got task-name port for pid %d", v1, v2, v3, v4, v5, v6, pid);
    error_value = task_info(target_task, 0xFu, &task_info_out, &task_info_outCnt);
    if (error_value)
    {
      v48 = 1;
      v37 = pid;
      v14 = mach_error_string(error_value);
      warnx("failed to get audit trailer for pid: %d: %s", v37, v14);
    }

    else
    {
      sub_1000483C8(2uLL, "got audit token pid %d", v8, v9, v10, v11, v12, v13, pid);
      atoken = task_info_out;
      v15 = audit_token_to_pid(&atoken);
      sub_1000483C8(2uLL, "pid = %u", v16, v17, v18, v19, v20, v21, v15);
      v39 = task_info_out;
      v22 = audit_token_to_pidversion(&v39);
      sub_1000483C8(2uLL, "pidvers = %u", v23, v24, v25, v26, v27, v28, v22);
      v47 = csops_audittoken();
      if (v47)
      {
        v48 = *__error();
        warn("csops: status");
      }

      else
      {
        v47 = csops_audittoken();
        if (v47)
        {
          v48 = *__error();
          warn("csops: identity");
        }

        else
        {
          sub_1000483C8(2uLL, "got identity: %s", v29, v30, v31, v32, v33, v34, v41 + 8);
          if ((v42 & 0x4000000) != 0)
          {
            if (!strcmp(v41 + 8, "com.apple.log"))
            {
              v47 = kill(pid, 19);
              if (v47 == -1)
              {
                memset(&v51[8], 0, 0x50uLL);
                os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                v35 = *__error();
                sub_1000013C8(v51, v35);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                JUMPOUT(0x10003DBB0);
              }

              v48 = 0;
            }

            else
            {
              v48 = 13;
              warnx("log id is incorrect: %s", v41 + 8);
            }
          }

          else
          {
            v48 = 13;
            warnx("log is not a platform binary");
          }
        }
      }
    }
  }

  if (v48)
  {
    warn("killing child");
    v47 = kill(pid, 9);
    if (v47 == -1)
    {
      memset(&v50[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v36 = *__error();
      sub_1000013C8(v50, v36);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003DD00);
    }
  }
}

uint64_t sub_10003DD38(uint64_t a1, int a2, char *const *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -1;
  v8 = a3;
  v7 = -1;
  v6 = 0;
  v4 = 0;
  v5 = 0;
  sub_1000480E0();
  while (1)
  {
    v7 = getopt_long(v11, v8, *(v12 + 32), *(v12 + 40), &v6);
    if (v7 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v13[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v13, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10003DF14);
    }

    if (v7 == 58)
    {
      errx(64, "missing argument for option: %s", *(*(v12 + 40) + 32 * v6));
    }

    if (v7 == 63)
    {
      errx(64, "unknown option: %s", v10[optind - 1]);
    }

    if (v7 != 117)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003DFB0);
    }

    v4 |= 1uLL;
  }

  v10 += optind;
  v11 -= optind;
  if (v11 < 1)
  {
    errx(64, "a trust cache must be provided");
  }

  v5 = *v10;
  v9 = sub_10003E05C(&v4);
  return sysexit_np();
}

uint64_t sub_10003E05C(uint64_t a1)
{
  v40 = a1;
  v39 = -1;
  v38 = -1;
  v37 = 0;
  v36 = 0;
  memset(__b, 0, sizeof(__b));
  v35 = 0;
  i = 0;
  if (*v40)
  {
    v37 |= 1uLL;
  }

  v38 = open(*(v40 + 8), 0);
  v41 = v38;
  if (v38 < 0)
  {
    warn("open: %s", *(v40 + 8));
  }

  else
  {
    v36 = sub_100011D7C(0, 0, v37);
    v39 = sub_1000133D0(v36, v38);
    if (v39)
    {
      if (v39 == 45)
      {
        warnx("trust cache version not supported");
      }

      else if (v39 == 79)
      {
        warnx("unknown trust cache tag");
      }

      else
      {
        warnc(v39, "failed to read trust cache");
      }
    }

    else
    {
      uuid_unparse(v36 + 46, __b);
      if (*(v36 + 17))
      {
        v33 = 0;
        v31 = 0;
        v32 = 0;
        v33 = sub_10004B484(*(v36 + 17), &v31);
        sub_10004860C(__stdoutp, 0, "object type = %s", v6, v7, v8, v9, v10, v33);
      }

      sub_10004860C(__stdoutp, 0, "version = %u", v1, v2, v3, v4, v5, *(v36 + 42));
      sub_10004860C(__stdoutp, 0, "uuid = %s", v11, v12, v13, v14, v15, __b);
      sub_10004860C(__stdoutp, 0, "entry count = %u", v16, v17, v18, v19, v20, *(v36 + 62));
      v35 = sub_100015C98(v36);
      for (i = 0; i < *(v36 + 106); ++i)
      {
        v30 = v35[i];
        memset(v42, 0, sizeof(v42));
        v29 = 0;
        sub_100023D24(v30, v42);
        v29 = sub_100023D68(v30);
        if (*(v36 + 42) == 2)
        {
          v27 = *(v30 + 121);
          sub_10004860C(__stdoutp, 0, "%22s %s %d", v21, v22, v23, v24, v25, v42);
        }

        else
        {
          sub_10004860C(__stdoutp, 0, "%22s %s", v21, v22, v23, v24, v25, v42);
        }

        sub_100002DE4(&v29);
      }

      v39 = 0;
    }
  }

  v28 = v39;
  sub_100002DE4(&v35);
  sub_1000038DC(&v38);
  return v28;
}

CFErrorRef sub_10003E3F8(uint64_t a1, const char *a2, NSObject *a3)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  v52 = -1;
  v50 = archive_read_new();
  v49 = archive_write_disk_new();
  v48 = 0;
  v47 = 0;
  bzero(v68, 0x400uLL);
  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all)
  {
    v52 = archive_errno();
    v46 = *__error();
    v45 = v53;
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v3 = archive_error_string();
      sub_100003120(v67, v3);
      _os_log_impl(&_mh_execute_header, v45, v44, "archive_read_support_filter_all: %s", v67, 0xCu);
    }

    *__error() = v46;
  }

  else
  {
    support_filter_all = archive_read_support_format_all();
    if (support_filter_all)
    {
      v52 = archive_errno();
      v43 = *__error();
      v42 = v53;
      v41 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v4 = archive_error_string();
        sub_100003120(v66, v4);
        _os_log_impl(&_mh_execute_header, v42, v41, "archive_read_support_format_all: %s", v66, 0xCu);
      }

      *__error() = v43;
    }

    else
    {
      support_filter_all = archive_read_open_filename();
      if (support_filter_all)
      {
        v52 = archive_errno();
        v40 = *__error();
        v39 = v53;
        v38 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v5 = archive_error_string();
          sub_100003120(v65, v5);
          _os_log_impl(&_mh_execute_header, v39, v38, "archive_read_open_filename: %s", v65, 0xCu);
        }

        *__error() = v40;
      }

      else
      {
        support_filter_all = archive_write_disk_set_options();
        if (support_filter_all)
        {
          v52 = archive_errno();
          v37 = *__error();
          v36 = v53;
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v6 = archive_error_string();
            sub_100003120(v64, v6);
            _os_log_impl(&_mh_execute_header, v36, v35, "archive_write_disk_set_options: %s", v64, 0xCu);
          }

          *__error() = v37;
        }

        else
        {
          support_filter_all = archive_write_disk_set_standard_lookup();
          if (support_filter_all)
          {
            v52 = archive_errno();
            v34 = *__error();
            v33 = v53;
            v32 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v7 = archive_error_string();
              sub_100003120(v63, v7);
              _os_log_impl(&_mh_execute_header, v33, v32, "archive_write_disk_set_standard_lookup: %s", v63, 0xCu);
            }

            *__error() = v34;
          }

          else
          {
            while (1)
            {
              support_filter_all = archive_read_next_header();
              if (support_filter_all == 1)
              {
                break;
              }

              if (support_filter_all)
              {
                v52 = archive_errno();
                v31 = *__error();
                v30 = v53;
                v29 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  v8 = archive_error_string();
                  sub_100003120(v62, v8);
                  _os_log_impl(&_mh_execute_header, v30, v29, "archive_read_next_header: %s", v62, 0xCu);
                }

                *__error() = v31;
                break;
              }

              v47 = archive_entry_pathname();
              if (v47)
              {
                support_filter_all = __snprintf_chk(v68, 0x400uLL, 0, 0x400uLL, "%s/%s", v54, v47);
                if (support_filter_all < 0)
                {
                  v52 = *__error();
                  v28 = *__error();
                  v27 = v53;
                  v26 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v9 = strerror(v52);
                    sub_10003F0CC(v61, v47, v9, v52);
                    _os_log_impl(&_mh_execute_header, v27, v26, "failed to build destination path for '%s': %s: %{darwin.errno}d", v61, 0x1Cu);
                  }

                  *__error() = v28;
                  break;
                }

                if (support_filter_all >= 0x401)
                {
                  v52 = 5;
                  v25 = *__error();
                  v24 = v53;
                  v23 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000013C8(v60, support_filter_all);
                    _os_log_impl(&_mh_execute_header, v24, v23, "resulting destination path too long: needed = %d", v60, 8u);
                  }

                  *__error() = v25;
                  break;
                }

                archive_entry_set_pathname();
                v10 = archive_write_header();
                support_filter_all = v10;
                if (v10)
                {
                  v52 = archive_errno();
                  v22 = *__error();
                  v21 = v53;
                  v20 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v11 = archive_error_string();
                    sub_100003120(v59, v11);
                    _os_log_impl(&_mh_execute_header, v21, v20, "archive_write_header: %s", v59, 0xCu);
                  }

                  *__error() = v22;
                  break;
                }

                if (archive_entry_size() >= 1)
                {
                  v52 = sub_10003F138(v50, v49, v53);
                }

                support_filter_all = archive_write_finish_entry();
                if (support_filter_all)
                {
                  if (!v52)
                  {
                    v52 = archive_errno();
                  }

                  v19 = *__error();
                  v18 = v53;
                  v17 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v12 = archive_error_string();
                    sub_100003120(v58, v12);
                    _os_log_impl(&_mh_execute_header, v18, v17, "archive_write_finish_entry: %s", v58, 0xCu);
                  }

                  *__error() = v19;
                  break;
                }

                if (v52)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  archive_read_close();
  archive_read_free();
  archive_write_close();
  archive_write_free();
  if (!v52)
  {
    return 0;
  }

  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10003F0CC(&v57, v55, v54, v52);
  v16 = _os_log_send_and_compose_impl();
  if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c", 47))
  {
    v14 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c", 47) + 1;
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/libarchive.c";
  }

  v15 = sub_1000185D8("libarchive_extract", v14, 167, "com.apple.security.cryptex.posix", v52, 0, v16);
  sub_100002DE4(&v16);
  return v15;
}

uint64_t sub_10003F0CC(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_10003F138(uint64_t a1, uint64_t a2, NSObject *a3)
{
  do
  {
    data_block = archive_read_data_block();
    if (data_block == 1)
    {
      return 0;
    }

    if (data_block)
    {
      v9 = archive_errno();
      v7 = *__error();
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v3 = archive_error_string();
        sub_100003120(v12, v3);
        _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "archive_read_data_block: %s", v12, 0xCu);
      }

      *__error() = v7;
      return v9;
    }
  }

  while (archive_write_data_block() >= 0);
  v9 = archive_errno();
  v6 = *__error();
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    v4 = archive_error_string();
    sub_100003120(v11, v4);
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "archive_write_data_block: %s", v11, 0xCu);
  }

  *__error() = v6;
  return v9;
}

uint64_t sub_10003F374()
{
  v4 = &unk_100084C70;
  location = 0;
  objc_storeStrong(&location, &stru_10007DF08);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100084C68;
  v0 = qword_100084C68;
  return v2;
}

void sub_10003F3F8(id a1)
{
  v1 = os_log_create("com.apple.libcryptex", "device");
  v2 = qword_100084C68;
  qword_100084C68 = v1;
  _objc_release(v2);
}

void *sub_10003F450(void *a1, uint64_t a2)
{
  location[0] = 0;
  objc_storeStrong(location, a1);
  location[2] = 1;
  location[1] = 184;
  v8 = malloc_type_calloc(1uLL, 0xB8uLL, 0x8709206FuLL);
  v20 = "known-constant allocation";
  v19 = v8;
  v18 = 184;
  if (!v8)
  {
    v17 = 0;
    memset(&v21[40], 0, 0x50uLL);
    v15 = 0;
    v14 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v14 &= ~1u;
    }

    if (v14)
    {
      v5 = v20;
      v6 = v18;
      v2 = __error();
      v3 = strerror(*v2);
      sub_1000031B0(v21, v5, v6, v3);
      v11 = _os_log_send_and_compose_impl();
      v15 = v11;
    }

    v10 = v15;
    objc_storeStrong(&oslog, 0);
    v16 = v10;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10003F638);
  }

  v8[2] = a2;
  objc_storeStrong(v8, location[0]);
  objc_storeStrong(location, 0);
  return v8;
}

uint64_t sub_10003F6B4(uint64_t *a1)
{
  v65 = a1;
  v64 = 0;
  v63 = 0;
  string_ptr = 0;
  v61 = 0;
  v60 = 0;
  chip_inst = 0;
  v1 = *a1;
  if (remote_device_get_state() == 2)
  {
    v3 = *v65;
    v61 = remote_device_copy_os_build();
    v4 = *v65;
    v29 = remote_device_copy_property();
    v5 = v63;
    v63 = v29;

    if (!v29 || xpc_get_type(v63) != &_xpc_type_string)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10003FC4CLL);
    }

    string_ptr = xpc_string_get_string_ptr(v63);
    v28 = *v65;
    v6 = &_dispatch_main_q;
    v26 = &_dispatch_main_q;
    v27 = cryptex_remote_service_create();
    v7 = v65[1];
    v65[1] = v27;

    v8 = v65[1];
    v42 = v60;
    v25 = cryptex_remote_service_copy_device_identifier2();
    objc_storeStrong(&v60, v60);
    if (v25)
    {
      chip_inst = cryptex_remote_device_identifier_get_chip_inst();
      v34 = string_ptr;
      if (_dispatch_is_multithreaded())
      {
        v93 = v34;
        v92 = 0;
        while (1)
        {
          v92 = strdup(v93);
          if (v92)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v35 = v92;
      }

      else
      {
        v89 = v34;
        v35 = strdup(v34);
        v9 = strlen(v34);
        v87 = "known-constant allocation";
        v86 = v35;
        v85 = v9;
        if (!v35)
        {
          v84 = 0;
          v108 = 0u;
          v107 = 0u;
          v106 = 0u;
          v105 = 0u;
          v104 = 0u;
          v82 = 0;
          v81 = 3;
          v80 = &_os_log_default;
          v79 = 16;
          if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            v81 &= ~1u;
          }

          if (v81)
          {
            v18 = v87;
            v19 = v85;
            v20 = __error();
            v17 = strerror(*v20);
            sub_1000031B0(v103, v18, v19, v17);
            v78 = _os_log_send_and_compose_impl();
            v82 = v78;
          }

          v77 = v82;
          objc_storeStrong(&v80, 0);
          v83 = v77;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000400E4);
        }
      }

      v65[21] = v35;
      v32 = v61;
      if (_dispatch_is_multithreaded())
      {
        v91 = v32;
        v90 = 0;
        while (1)
        {
          v90 = strdup(v91);
          if (v90)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v33 = v90;
      }

      else
      {
        v88 = v32;
        v33 = strdup(v32);
        v10 = strlen(v32);
        v76 = "known-constant allocation";
        v75 = v33;
        v74 = v10;
        if (!v33)
        {
          v73 = 0;
          v102 = 0u;
          v101 = 0u;
          v100 = 0u;
          v99 = 0u;
          v98 = 0u;
          v71 = 0;
          v70 = 3;
          v69 = &_os_log_default;
          v68 = 16;
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 &= ~1u;
          }

          if (v70)
          {
            v14 = v76;
            v15 = v74;
            v16 = __error();
            v13 = strerror(*v16);
            sub_1000031B0(v97, v14, v15, v13);
            v67 = _os_log_send_and_compose_impl();
            v71 = v67;
          }

          v66 = v71;
          objc_storeStrong(&v69, 0);
          v72 = v66;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100040318);
        }
      }

      v65[22] = v33;
      __memmove_chk();
    }

    else if (v64)
    {
      v37 = *__error();
      v36 = sub_10003F374();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10000ACC8(v94, v64);
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "failed to copy remote device identifier: %@", v94, 0xCu);
      }

      objc_storeStrong(&v36, 0);
      v21 = v37;
      *__error() = v21;
    }

    else
    {
      v41 = *__error();
      v40 = sub_10003F374();
      v39 = 2;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v23 = v40;
        v24 = v39;
        sub_10000DC54(v38);
        _os_log_impl(&_mh_execute_header, v23, v24, "failed to copy remote device identifier [no error]", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
      v22 = v41;
      *__error() = v22;
    }
  }

  else
  {
    v2 = *v65;
    name = remote_device_get_name();
    v57 = 0;
    v56 = 19;
    v31 = sub_10003F374();

    if (v31)
    {
      v55 = 0;
      v54 = 3;
      v53 = sub_10003F374();
      v52 = 16;
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 &= ~1u;
      }

      if (v54)
      {
        sub_100003120(&v96, name);
        v51 = _os_log_send_and_compose_impl();
        v55 = v51;
      }

      v50 = v55;
      objc_storeStrong(&v53, 0);
      v57 = v50;
    }

    else
    {
      v49 = 0;
      v48 = 2;
      v47 = &_os_log_default;
      v46 = 16;
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 &= ~1u;
      }

      if (v48)
      {
        sub_100003120(&v95, name);
        v45 = _os_log_send_and_compose_impl();
        v49 = v45;
      }

      v44 = v49;
      objc_storeStrong(&v47, 0);
      v57 = v44;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m", 47))
    {
      v30 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m", 47) + 1;
    }

    else
    {
      v30 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/device.m";
    }

    v43 = sub_1000185D8("device_init", v30, 46, "com.apple.security.cryptex", v56, 0, v57);
    sub_100002DE4(&v57);
    v64 = v43;
  }

  v12 = v64;
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v63, 0);
  return v12;
}

void sub_1000403FC(uint64_t a1, int a2)
{
  *v2 = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 8) = *v2;
  _Unwind_Resume(*(v2 + 8));
}

uint64_t sub_10004042C(uint64_t a1, void *a2, void *a3)
{
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = 0;
  v3 = *(v9 + 8);
  cryptex_remote_service_install2();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  return 0;
}

uint64_t sub_1000404F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  cryptex_remote_service_uninstall2();
  return 0;
}

uint64_t sub_100040538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v28 = a3;
  v27 = a4;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  nonce = 0;
  v4 = cryptex_remote_service_nonce_attr_create();
  v5 = v25;
  v25 = v4;
  _objc_release(v5);
  cryptex_remote_service_nonce_attr_set_persistence();
  cryptex_remote_service_nonce_attr_set_cryptex();
  v6 = *(v30 + 8);
  v22 = v24;
  v15 = cryptex_remote_service_copy_nonce2();
  objc_storeStrong(&v24, v22);
  if (v15)
  {
    nonce = cryptex_remote_service_nonce_get_nonce();
    __memmove_chk();
  }

  else if (v26)
  {
    v17 = *__error();
    oslog = sub_10003F374();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10000ACC8(v31, v26);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "failed to copy nonce from remote device: %@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = v17;
    *__error() = v9;
  }

  else
  {
    v21 = *__error();
    v20 = sub_10003F374();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      log = v20;
      type = v19;
      sub_10000DC54(v18);
      _os_log_impl(&_mh_execute_header, log, type, "failed to copy nonce from remote device [no error]", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v10 = v21;
    *__error() = v10;
  }

  v8 = v26;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

uint64_t sub_100040818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = ccsha1_di();
  v5 = (v26[1] + v26[2] + 19) >> 3;
  v25 = v10;
  v14 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = v10 - v14;
  v24 = v6;
  bzero(v10 - v14, v7);
  if (v28 != *v26)
  {
    v23 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v21 = 0;
    v20 = 3;
    v19 = &_os_log_default;
    v18 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 &= ~1u;
    }

    if (v20)
    {
      v11 = v20;
      v12 = v19;
      v13 = v18;
      v8 = *v26;
      v10[2] = v32;
      sub_10000AD08(v32, v28, v8);
      v17 = _os_log_send_and_compose_impl();
      v21 = v17;
    }

    v16 = v21;
    v22 = v21;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000409F4);
  }

  ccdigest_update();
  sub_1000243C4(v26, v15, v29);
  return 0;
}

uint64_t sub_100040AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = ccsha224_di();
  v5 = (v26[1] + v26[2] + 19) >> 3;
  v25 = v10;
  v14 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = v10 - v14;
  v24 = v6;
  bzero(v10 - v14, v7);
  if (v28 != *v26)
  {
    v23 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v21 = 0;
    v20 = 3;
    v19 = &_os_log_default;
    v18 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 &= ~1u;
    }

    if (v20)
    {
      v11 = v20;
      v12 = v19;
      v13 = v18;
      v8 = *v26;
      v10[2] = v32;
      sub_10000AD08(v32, v28, v8);
      v17 = _os_log_send_and_compose_impl();
      v21 = v17;
    }

    v16 = v21;
    v22 = v21;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100040CBCLL);
  }

  ccdigest_update();
  sub_1000243C4(v26, v15, v29);
  return 0;
}

uint64_t sub_100040D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = ccsha256_di();
  v5 = (v26[1] + v26[2] + 19) >> 3;
  v25 = v10;
  v14 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = v10 - v14;
  v24 = v6;
  bzero(v10 - v14, v7);
  if (v28 != *v26)
  {
    v23 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v21 = 0;
    v20 = 3;
    v19 = &_os_log_default;
    v18 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 &= ~1u;
    }

    if (v20)
    {
      v11 = v20;
      v12 = v19;
      v13 = v18;
      v8 = *v26;
      v10[2] = v32;
      sub_10000AD08(v32, v28, v8);
      v17 = _os_log_send_and_compose_impl();
      v21 = v17;
    }

    v16 = v21;
    v22 = v21;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100040F0CLL);
  }

  ccdigest_update();
  sub_1000243C4(v26, v15, v29);
  return 0;
}

uint64_t sub_100040F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = ccsha384_di();
  v5 = (v26[1] + v26[2] + 19) >> 3;
  v25 = v10;
  v14 = (8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = v10 - v14;
  v24 = v6;
  bzero(v10 - v14, v7);
  if (v28 != *v26)
  {
    v23 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v21 = 0;
    v20 = 3;
    v19 = &_os_log_default;
    v18 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 &= ~1u;
    }

    if (v20)
    {
      v11 = v20;
      v12 = v19;
      v13 = v18;
      v8 = *v26;
      v10[2] = v32;
      sub_10000AD08(v32, v28, v8);
      v17 = _os_log_send_and_compose_impl();
      v21 = v17;
    }

    v16 = v21;
    v22 = v21;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10004115CLL);
  }

  ccdigest_update();
  sub_1000243C4(v26, v15, v29);
  return 0;
}

void *sub_1000411D0(uint64_t a1)
{
  v4 = malloc_type_calloc(1uLL, 0xB8uLL, 0x8709206FuLL);
  if (!v4)
  {
    memset(&v6[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v1 = __error();
    v2 = strerror(*v1);
    sub_1000031B0(v6, "known-constant allocation", 184, v2);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100041380);
  }

  v4[4] = a1;
  v4[21] = v4 + 14;
  sub_1000496F4(v4, "com.apple.security.cryptexctl", "img4-decode");
  return v4;
}

uint64_t sub_100041404(uint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  if (sub_1000418C0(*(*a2 + 208), &off_10007EDD8))
  {
    Context = CTImg4CreateContext(**(v8 + 160), *(*(v8 + 160) + 8), 1, 0, a1 + 112);
    goto LABEL_16;
  }

  if (sub_1000418C0(*(v8 + 208), &off_10007ED68))
  {
    goto LABEL_4;
  }

  if (sub_1000418C0(*(v8 + 208), &off_10007ED38))
  {
LABEL_6:
    Context = CTImg4CreateContext(**(v8 + 160), *(*(v8 + 160) + 8), 4, 0, a1 + 112);
    goto LABEL_16;
  }

  if (sub_1000418C0(*(v8 + 208), &off_10007ED48))
  {
    goto LABEL_8;
  }

  if (!sub_1000418C0(*(v8 + 208), &off_10007ED58))
  {
    if (sub_1000418C0(*(v8 + 208), &off_10007ED98))
    {
LABEL_4:
      Context = CTImg4CreateContext(**(v8 + 160), *(*(v8 + 160) + 8), 2, 0, a1 + 112);
      goto LABEL_16;
    }

    if (sub_1000418C0(*(v8 + 208), &off_10007EDA8))
    {
      goto LABEL_6;
    }

    if (sub_1000418C0(*(v8 + 208), &off_10007EDB8))
    {
LABEL_8:
      Context = CTImg4CreateContext(**(v8 + 160), *(*(v8 + 160) + 8), 8, 0, a1 + 112);
      goto LABEL_16;
    }

    if (!sub_1000418C0(*(v8 + 208), &off_10007EDC8))
    {
      memset(&v13[40], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100041968(v13, *(*(v8 + 208) + 8), **(v8 + 208), *(*(v8 + 208) + 8));
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000416E8);
    }
  }

  Context = CTImg4CreateContext(**(v8 + 160), *(*(v8 + 160) + 8), 16, 0, a1 + 112);
LABEL_16:
  v7 = Context;
  if (Context)
  {
    v9 = 103;
    v6 = *a1;
    if (!*a1)
    {
      v6 = "[anonymous]";
    }

    v5 = *__error();
    v4 = *(a1 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100009E38(v12, v6, v7, 103);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: failed to parse root: %#x: %{darwin.errno}d", v12, 0x18u);
    }

    *__error() = v5;
  }

  else
  {
    *(a1 + 32) = *(a1 + 112);
    *(a1 + 152) = a1;
    *(a1 + 160) = a1 + 112;
    *(a1 + 24) = v8;
    *a2 = 0;
    return 0;
  }

  return v9;
}

uint64_t sub_100041968(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 16;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 48;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_1000419D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100041A50);
  }

  *(a1 + 176) = a2;
  memcpy((a1 + 56), *(a1 + 32), 0x38uLL);
  *(a1 + 80) = sub_100041C68;
  *(a1 + 40) = a1 + 56;
  if (qword_100084C78 != -1)
  {
    dispatch_once_f(&qword_100084C78, 0, sub_100041FAC);
  }

  v3 = pthread_setspecific(qword_100084C80, *(a1 + 168));
  if (v3)
  {
    memset(&v5[8], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_1000013C8(v5, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100041C00);
  }

  if (!*(a1 + 160))
  {
    *(a1 + 152) = a1;
  }

  return *(a1 + 40);
}

uint64_t sub_100041C68(uint64_t a1)
{
  v13 = sub_100042324();
  v12 = (*(*(v13 + 32) + 24))(a1, 0);
  if (v12)
  {
    if (v12 == 1)
    {
      v11 = *v13;
      if (!*v13)
      {
        v11 = "[anonymous]";
      }

      v10 = *__error();
      v9 = *(v13 + 16);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000095D4(v17, v11);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: certificate evaluation returned DR_EndOfSequence", v17, 0xCu);
      }

      *__error() = v10;
      v12 = 5;
    }

    v8 = *v13;
    if (!*v13)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    oslog = *(v13 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v1 = sub_10004C9DC(v12);
      sub_100042384(v16, v8, v12, v1);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: manifest violates certificate constraints: [%d: %s]", v16, 0x1Cu);
    }

    *__error() = v7;
  }

  else
  {
    v5 = *v13;
    if (!*v13)
    {
      v5 = "[anonymous]";
    }

    v4 = *__error();
    v3 = *(v13 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v15, v5);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: manifest satisfies certificate constraints", v15, 0xCu);
    }

    *__error() = v4;
  }

  return v12;
}

uint64_t sub_100041FAC()
{
  result = pthread_key_create(&qword_100084C80, 0);
  v1 = result;
  if (result)
  {
    memset(&v2[8], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_1000013C8(v2, v1);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000420F8);
  }

  return result;
}

uint64_t sub_10004212C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 != *(result + 40))
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10004219CLL);
    }

    *(result + 176) = 0;
    *(result + 40) = 0;
    result = pthread_setspecific(qword_100084C80, 0);
    v2 = result;
    if (result)
    {
      memset(&v3[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v3, v2);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000422D4);
    }
  }

  return result;
}

uint64_t sub_100042324()
{
  v1 = pthread_getspecific(qword_100084C80);
  if (!v1)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100042368);
  }

  return v1[5];
}

uint64_t sub_100042384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

__n128 *sub_1000423F4(__n128 *a1, unint64_t a2)
{
  v5 = malloc_type_calloc(1uLL, 0x68uLL, 0x8709206FuLL);
  if (!v5)
  {
    memset(&v8[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v2 = __error();
    v3 = strerror(*v2);
    sub_1000031B0(v8, "known-constant allocation", 104, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000425A8);
  }

  v5[1].n128_u64[1] = a2;
  sub_10004C42C(v5 + 2, a1);
  v5[5].n128_u64[1] = v5[2].n128_u64;
  sub_1000496F4(v5, "com.apple.security.cryptexctl", "mach-fat");
  return v5;
}

uint64_t sub_10004263C(uint64_t a1)
{
  v19 = a1;
  v18 = -1;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v17 = sub_10004C5C0(*(a1 + 88), "rb", 0);
  v16 = fread(&v15, 8uLL, 1uLL, v17);
  v18 = sub_10004887C("mach fat header", v17, v16, 88, *(v19 + 16));
  if (v18)
  {
    goto LABEL_23;
  }

  LODWORD(v15) = sub_10000E154(v15);
  HIDWORD(v15) = sub_10000E154(HIDWORD(v15));
  v14 = *v19;
  if (!*v19)
  {
    v14 = "[anonymous]";
  }

  v13 = *__error();
  v12 = *(v19 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v23, v14, v15, SHIDWORD(v15));
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: initialized fat header:\n        magic = %#x\n        nfat = %d", v23, 0x18u);
  }

  *__error() = v13;
  if (v15 == -889275714)
  {
    goto LABEL_13;
  }

  if (v15 == -889275713)
  {
    v11 = *v19;
    if (!*v19)
    {
      v11 = "[anonymous]";
    }

    v10 = *__error();
    oslog = *(v19 + 16);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000095D4(v22, v11);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: fat file uses 64-bit format", v22, 0xCu);
    }

    *__error() = v10;
    *(v19 + 24) |= 1uLL;
LABEL_13:
    v8 = *v19;
    if (!*v19)
    {
      v8 = "[anonymous]";
    }

    v7 = *__error();
    v6 = *(v19 + 16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v21, v8, SHIDWORD(v15));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: fat file has %u archs", v21, 0x12u);
    }

    *__error() = v7;
    *(v19 + 96) = v15;
    v18 = 0;
    goto LABEL_23;
  }

  v18 = 92;
  v5 = *v19;
  if (!*v19)
  {
    v5 = "[anonymous]";
  }

  v4 = *__error();
  v3 = *(v19 + 16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v20, v5, v15, v18);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s: not a mach fat file: %#x: %{darwin.errno}d", v20, 0x18u);
  }

  *__error() = v4;
LABEL_23:
  v2 = v18;
  sub_100010FB4(&v17);
  return v2;
}

char *sub_100042B70(uint64_t a1, unint64_t a2)
{
  v35 = a1;
  v34 = a2;
  v33 = -1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  memset(__b, 0, sizeof(__b));
  __ptr = 0u;
  v28 = 0u;
  if (*(v35 + 24))
  {
    v25 = 32;
  }

  else
  {
    v25 = 20;
  }

  if (v34 == *(v35 + 100))
  {
    v33 = 89;
  }

  else
  {
    if (v34 > *(v35 + 100))
    {
      memset(&v44[24], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v44, v34);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v31 = sub_10004C5C0(*(v35 + 88), "rb", 0);
    if (fseek(v31, 8, 0) == -1)
    {
      memset(&v43[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v2 = __error();
      sub_1000013C8(v43, *v2);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v26 = v34 * v25;
    if (v34 * v25 > 0x7FFFFFFFFFFFFFFFLL)
    {
      memset(&v42[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v42, v34);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (fseek(v31, v26, 1))
    {
      v33 = *__error();
      v22 = *v35;
      if (!*v35)
      {
        v22 = "[anonymous]";
      }

      v21 = *__error();
      v20 = *(v35 + 16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v41, v22, v33);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: fseek: %{darwin.errno}d", v41, 0x12u);
      }

      *__error() = v21;
    }

    else
    {
      v30 = fread(&__ptr, v25, 1uLL, v31);
      v33 = sub_10004887C("arch", v31, v30, 88, *(v35 + 16));
      if (!v33)
      {
        if (*(v35 + 24))
        {
          v19 = DWORD1(__ptr);
          LODWORD(__ptr) = sub_10000E154(__ptr);
          DWORD1(__ptr) = sub_10000E154(v19);
          *(&__ptr + 1) = sub_100043A1C(*(&__ptr + 1));
          *&v28 = sub_100043A1C(v28);
          DWORD2(v28) = sub_10000E154(DWORD2(v28));
          v24 = *(&__ptr + 1);
          v23 = v28;
          v18 = *v35;
          if (!*v35)
          {
            v18 = "[anonymous]";
          }

          v17 = *__error();
          v16 = *(v35 + 16);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_100043A34(v40, v18, v24, v23);
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}s: found slice: off = %llu, length = %llu", v40, 0x20u);
          }

          *__error() = v17;
        }

        else
        {
          v15 = DWORD1(__ptr);
          LODWORD(__ptr) = sub_10000E154(__ptr);
          DWORD1(__ptr) = sub_10000E154(v15);
          DWORD2(__ptr) = sub_10000E154(DWORD2(__ptr));
          HIDWORD(__ptr) = sub_10000E154(HIDWORD(__ptr));
          LODWORD(v28) = sub_10000E154(v28);
          v24 = DWORD2(__ptr);
          v23 = HIDWORD(__ptr);
          v14 = *v35;
          if (!*v35)
          {
            v14 = "[anonymous]";
          }

          v13 = *__error();
          oslog = *(v35 + 16);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_100043A34(v39, v14, v24, v23);
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%{public}s: found slice: off = %llu, length = %llu", v39, 0x20u);
          }

          *__error() = v13;
        }

        v3 = __CFADD__(v24, v23);
        v36 = v3;
        if (v3)
        {
          v33 = 84;
          v11 = *v35;
          if (!*v35)
          {
            v11 = "[anonymous]";
          }

          v10 = *__error();
          v9 = *(v35 + 16);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100011C90(v38, v11, v24, v23, v33);
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: slice offset and length are not addressable: off = %llu, len = %llu: %{darwin.errno}d", v38, 0x26u);
          }

          *__error() = v10;
        }

        else if (v24 + v23 > *(*(v35 + 88) + 8))
        {
          v33 = 84;
          v8 = *v35;
          if (!*v35)
          {
            v8 = "[anonymous]";
          }

          v7 = *__error();
          v6 = *(v35 + 16);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_100043A9C(v37, v8, v24, v23, *(*(v35 + 88) + 8), v33);
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: slice exceeds file length: off = %llu, len = %llu, file len = %lu: %{darwin.errno}d", v37, 0x30u);
          }

          *__error() = v7;
        }

        else
        {
          sub_10004C574(__b, *(v35 + 88), v24, v23);
          v32 = sub_10001C334(__b, 0);
        }
      }
    }
  }

  v5 = v32;
  sub_100010FB4(&v31);
  return v5;
}

uint64_t sub_100043A34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_100043A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a6;
  return result;
}

void sub_100043B68(uint64_t a1)
{
  if (a1)
  {
    v1 = *a1;
    sub_10004C66C(*(*a1 + 88));
    sub_100049728(v1);
    free(v1);
    *a1 = 0;
  }
}

uint64_t sub_100043BD0(uint64_t a1)
{
  homedir = session_get_homedir();
  name = session_get_name();
  v5 = __stdoutp;
  count = xpc_array_get_count(*(*(a1 + 40) + 72));
  v1 = *(*(a1 + 40) + 48);
  v2 = cryptex_session_state_to_string();
  return fprintf(v5, "%s | %zu | %s | %s \n", name, count, v2, homedir);
}

uint64_t sub_100043C78(uint64_t a1, int a2, char *const *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -1;
  v7 = a3;
  v6 = -1;
  v5 = 0;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[1]) = 1;
  __b[2] = 0;
  sub_1000480E0();
  while (1)
  {
    v6 = getopt_long(v10, v7, *(v11 + 32), *(v11 + 40), &v5);
    if (v6 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v13[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v13, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100043E54);
    }

    switch(v6)
    {
      case '?':
        errx(64, "unknown option: %s", v9[optind - 1]);
      case 'A':
        LOBYTE(__b[1]) = 0;
        break;
      case 'H':
        __b[0] |= 8uLL;
        break;
      case 'L':
        __b[6] = optarg;
        break;
      case 'N':
        __b[0] |= 0x20uLL;
        break;
      case 'S':
        __b[0] |= 4uLL;
        break;
      case 'V':
        __b[5] = optarg;
        break;
      case 'c':
        __b[3] = optarg;
        __b[0] |= 2uLL;
        break;
      case 'e':
        __b[7] = optarg;
        break;
      case 'l':
        __b[0] |= 0x10uLL;
        break;
      case 'n':
        __b[0] |= 1uLL;
        break;
      case 's':
        __b[4] = optarg;
        break;
      case 'z':
        __b[2] = strtoull(optarg, 0, 0);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100043FB0);
    }
  }

  v9 += optind;
  v10 -= optind;
  if (__b[0] != 1 && (__b[7] || __b[6]))
  {
    v8 = 22;
    warnx("Environment and Launchd Overrides are only applicable for sessioncreate. Exiting");
    return sysexit_np();
  }

  else
  {
    v8 = sub_100044178(__b);
    return sysexit_np();
  }
}

uint64_t sub_100044178(void *a1)
{
  v2 = -1;
  if ((*a1 & 0x10) != 0)
  {
    v2 = sub_100044260();
  }

  if ((*a1 & 8) != 0)
  {
    v2 = sub_1000442CC(a1);
  }

  if (*a1)
  {
    v2 = sub_100044408(a1);
  }

  if ((*a1 & 2) != 0)
  {
    v2 = sub_1000446A0(a1);
  }

  if ((*a1 & 4) != 0)
  {
    v2 = sub_1000447E4(a1);
  }

  if ((*a1 & 0x20) != 0)
  {
    warn("Lockdown flag can only be applied with the Start flag.");
  }

  return v2;
}

uint64_t sub_100044260()
{
  fprintf(__stdoutp, "ID | Cryptex Count | State | Home Directory\n");
  v1 = session_iter_list();
  if (v1)
  {
    warnc(v1, "Failed session iteration for list_invoke");
  }

  return v1;
}

uint64_t sub_1000442CC(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  v4 = 0;
  group = dispatch_group_create();
  if (group)
  {
    dispatch_group_enter(group);
  }

  if (*(v6 + 32))
  {
    v4 = sub_100026694(*(v6 + 32));
    if (v4)
    {
      v5 = sub_1000449F4(v4, 16, group);
      if (v5)
      {
        warnc(v5, "Failed to register handler");
      }

      else
      {
        v5 = session_stop();
        if (v5)
        {
          warn("Failed to stop the session");
          dispatch_group_leave(group);
        }

        else
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        }
      }
    }

    else
    {
      warn("Session %s not found", *(v6 + 32));
      v5 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v5 = 22;
  }

  v2 = v5;
  sub_1000030D0(&v4);
  return v2;
}

uint64_t sub_100044408(uint64_t a1)
{
  v20 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0;
  v18 = 32;
  v19 = 0;
  v14[1] = ((*(a1 + 8) & 1) == 0);
  v14[0] = session_create();
  v13 = 0;
  v12 = 0;
  v1 = *(v14[0] + 5);
  *(v20 + 32) = cryptex_session_core_copy_name();
  if (!*(v20 + 48))
  {
    goto LABEL_17;
  }

  v13 = sub_100044B74(*(v20 + 48), v16 + 6);
  applier = _NSConcreteStackBlock;
  v6 = 0x40000000;
  v7 = 0;
  v8 = sub_100044CB8;
  v9 = &unk_10007E4B0;
  v10 = &v15;
  v11 = v14[0];
  xpc_dictionary_apply(v13, &applier);
  if (!v16[6])
  {
LABEL_17:
    if (*(v20 + 56))
    {
      v12 = sub_100044B74(*(v20 + 56), v16 + 6);
      if (v16[6])
      {
        warnc(v16[6], "create_xpc_object_from_plist_path returned an error");
        goto LABEL_14;
      }

      v16[6] = session_add_session_environment();
      if (v16[6])
      {
        warnc(v16[6], "session_add_session_environment returned an error");
        goto LABEL_14;
      }
    }

    if (*(v20 + 16) && (v2 = *(v20 + 16), (v16[6] = session_set_homedir_size()) != 0))
    {
      warnc(v16[6], "session_set_homedir_size returned an error");
    }

    else
    {
      v16[6] = session_activate();
      if (v16[6])
      {
        warnc(v16[6], "Activation error");
      }

      else
      {
        sub_100043BD0(v14[0]);
      }
    }
  }

LABEL_14:
  v4 = v16[6];
  sub_1000030D0(&v12);
  sub_1000030D0(&v13);
  sub_1000030D0(v14);
  _Block_object_dispose(&v15, 8);
  return v4;
}

uint64_t sub_1000446A0(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  v5 = strdup(*(a1 + 24));
  v4 = 0;
  if (*(v8 + 40))
  {
    v4 = strdup(*(v8 + 40));
  }

  if (*(v8 + 32))
  {
    v6 = sub_100026694(*(v8 + 32));
    if (v6)
    {
      name = session_get_name();
      warnx("Found session %s", name);
      v7 = session_add_cryptex();
      if (v7)
      {
        warnc(v7, "Cryptex Add Error");
      }

      free(v5);
    }

    else
    {
      warn("Session %s not found", *(v8 + 32));
      v7 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v7 = 22;
  }

  v3 = v7;
  sub_100002DE4(&v4);
  sub_1000030D0(&v6);
  return v3;
}

uint64_t sub_1000447E4(void *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = 0;
  group = dispatch_group_create();
  if (group)
  {
    dispatch_group_enter(group);
  }

  if (v7[4])
  {
    v5 = sub_100026694(v7[4]);
    if (v5)
    {
      v6 = sub_1000449F4(v5, 4, group);
      if (v6)
      {
        dispatch_group_leave(group);
        warnc(v6, "Failed to register handler");
      }

      else if ((*v7 & 0x20) != 0 && (v6 = cryptex_lockdown(), *v7 &= ~0x20uLL, v6))
      {
        warnc(v6, "Failed to lockdown");
      }

      else
      {
        name = session_get_name();
        warnx("Starting session %s valid conn %d", name, v5[10] != 0);
        v6 = session_start();
        if (v6)
        {
          dispatch_group_leave(group);
          warnc(v6, "Failed to start session");
        }

        else
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        }
      }
    }

    else
    {
      dispatch_group_leave(group);
      warn("Session %s not found", v7[4]);
      v6 = 22;
    }
  }

  else
  {
    warn("No session selected");
    v6 = 22;
    dispatch_group_leave(group);
  }

  v3 = v6;
  sub_1000030D0(&v5);
  return v3;
}

uint64_t sub_1000449F4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = session_set_event_handler();
  if (v4)
  {
    warnc(v4, "Failed to register event handler for session");
    dispatch_group_leave(a3);
  }

  return v4;
}

void sub_100044AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  name = session_get_name();
  v4 = __stdoutp;
  v3 = cryptex_session_event_to_string();
  fprintf(v4, "Session %s received %s event\n", name, v3);
  if (a2 == *(a1 + 40))
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

uint64_t sub_100044B74(const char *a1, int *a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  memset(__b, 0, sizeof(__b));
  v6 = open(v10, 0);
  v11 = v6;
  if (v6 < 0)
  {
    v2 = __error();
    v5 = *v2;
    warnc(*v2, "Could not open file at %s.", v10);
  }

  else
  {
    v5 = sub_10004B524(v6, __b);
    if (v5)
    {
      warnc(v5, "Unable to read plist: %s", v10);
    }

    else
    {
      v8 = xpc_create_from_plist();
      if (!v8)
      {
        v5 = 212;
        warnc(212, "Failed to parse plist: %s", v10);
      }
    }
  }

  sub_10004C66C(__b);
  *v9 = v5;
  v4 = v8;
  sub_1000038DC(&v6);
  return v4;
}

uint64_t sub_100044CB8(uint64_t a1, const char *a2, void *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a1;
  type = xpc_get_type(a3);
  if (type == &_xpc_type_dictionary)
  {
    applier = _NSConcreteStackBlock;
    v6 = 0x40000000;
    v7 = 0;
    v8 = sub_100044DEC;
    v9 = &unk_10007E488;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v16;
    xpc_dictionary_apply(v15, &applier);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 22;
    warnc(*(*(*(a1 + 32) + 8) + 24), "Job overrides plist is expected to be a dictionary of dictionaries, with the following format:\n\n{ job_A => {overrides_A}, job_B => {overrides_B}}\nEncountered unexpected type for %s", v16);
  }

  return 1;
}

uint64_t sub_100044DEC(void *a1, const char *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  *(*(a1[4] + 8) + 24) = session_add_job_override();
  if (*(*(a1[4] + 8) + 24))
  {
    warnc(*(*(a1[4] + 8) + 24), "Unable to add %s override to %s job", a2, a1[6]);
  }

  return 1;
}

CFErrorRef sub_100044EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v57 = 0;
  v56 = objc_opt_class();
  if (v56 && ([v56 instancesRespondToSelector:"initWithFolder:volumeName:format:"] & 1) != 0)
  {
    v16 = [NSURL alloc];
    v15 = [NSString alloc];
    v14 = [v15 initWithUTF8String:v61];
    v39 = [v16 initFileURLWithPath:v14];

    v13 = [NSURL alloc];
    v12 = [NSString alloc];
    v11 = [v12 initWithUTF8String:v60];
    v38 = [v13 initFileURLWithPath:v11];

    v10 = [SKDiskImageCreateParams alloc];
    v35 = 0;
    if (v59)
    {
      v9 = [NSString alloc];
      v36 = [v9 initWithUTF8String:v59];
      v35 = 1;
      v8 = v36;
    }

    else
    {
      v8 = 0;
    }

    v37 = [v10 initWithFolder:v39 volumeName:v8 format:4];
    if (v35 == 1)
    {
    }

    if (v37)
    {
      v6 = objc_autoreleasePoolPush();
      v19 = 0;
      v18 = 0;
      v5 = [SKDiskImage diskImageWithURL:v38 params:v37 error:&v18];
      objc_storeStrong(&v19, v18);

      if (!v5)
      {
        objc_storeStrong(&v57, v19);
      }

      objc_storeStrong(&v19, 0);
      objc_autoreleasePoolPop(v6);
      v62 = v57;
      v40 = 1;
    }

    else
    {
      v34 = 0;
      v33 = -1;
      if (location)
      {
        v32 = 0;
        v31 = 3;
        v30 = location;
        v29 = 16;
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 &= ~1u;
        }

        if (v31)
        {
          sub_100009EA4(v64, v60, -1);
          v28 = _os_log_send_and_compose_impl();
          v32 = v28;
        }

        v27 = v32;
        objc_storeStrong(&v30, 0);
        v34 = v27;
      }

      else
      {
        v26 = 0;
        v25 = 2;
        v24 = &_os_log_default;
        v23 = 16;
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 &= ~1u;
        }

        if (v25)
        {
          sub_100009EA4(v63, v60, -1);
          v22 = _os_log_send_and_compose_impl();
          v26 = v22;
        }

        v21 = v26;
        objc_storeStrong(&v24, 0);
        v34 = v21;
      }

      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
      {
        v7 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
      }

      v20 = sub_1000185D8("hdi_create_dmg_from_directory", v7, 42, "com.apple.security.cryptex.posix", v33, 0, v34);
      sub_100002DE4(&v34);
      v62 = v20;
      v40 = 1;
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v55 = 0;
    v54 = 45;
    if (location)
    {
      v53 = 0;
      v52 = 3;
      v51 = location;
      v50 = 16;
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 &= ~1u;
      }

      if (v52)
      {
        sub_1000013C8(v66, 45);
        v49 = _os_log_send_and_compose_impl();
        v53 = v49;
      }

      v48 = v53;
      objc_storeStrong(&v51, 0);
      v55 = v48;
    }

    else
    {
      v47 = 0;
      v46 = 2;
      v45 = &_os_log_default;
      v44 = 16;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 &= ~1u;
      }

      if (v46)
      {
        sub_1000013C8(v65, 45);
        v43 = _os_log_send_and_compose_impl();
        v47 = v43;
      }

      v42 = v47;
      objc_storeStrong(&v45, 0);
      v55 = v42;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v17 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v41 = sub_1000185D8("hdi_create_dmg_from_directory", v17, 26, "com.apple.security.cryptex.posix", v54, 0, v55);
    sub_100002DE4(&v55);
    v62 = v41;
    v40 = 1;
  }

  objc_storeStrong(&v57, 0);
  objc_storeStrong(&location, 0);
  return v62;
}

void sub_1000459B4(uint64_t a1, int a2)
{
  *(v2 + 8) = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 16) = *(v2 + 8);
  _Unwind_Resume(*(v2 + 16));
}

id sub_1000459E4(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  *&v43[8] = 0;
  v18 = [NSURL alloc];
  v19 = [[NSString alloc] initWithUTF8String:v47];
  v42 = [v18 initFileURLWithPath:?];
  _objc_release(v19);
  v20 = [NSURL alloc];
  v21 = [[NSString alloc] initWithUTF8String:v46];
  v41 = [v20 initFileURLWithPath:?];
  _objc_release(v21);
  v22 = [NSURL alloc];
  v23 = [[NSString alloc] initWithUTF8String:v45];
  v40 = [v22 initFileURLWithPath:?];
  _objc_release(v23);
  v39 = 0;
  v38 = mkstemp("shadow.XXXXXX");
  bzero(v50, 0x400uLL);
  *v43 = realpath_np();
  v37 = *v43;
  if (*v43)
  {
    v36 = 0;
    memset(&v49[24], 0, 0x50uLL);
    v34 = 0;
    v33 = 3;
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v33 &= ~1u;
    }

    if (v33)
    {
      sub_100003098(v49, v37);
      v7 = v49;
      LODWORD(v8) = 12;
      v30 = _os_log_send_and_compose_impl();
      v34 = v30;
    }

    v29 = v34;
    objc_storeStrong(&oslog, 0);
    v35 = v29;
    _os_crash_msg();
    __break(1u);
  }

  v14 = [NSURL alloc];
  v15 = [[NSString alloc] initWithUTF8String:v50];
  v4 = [v14 initFileURLWithPath:?];
  v5 = v39;
  v39 = v4;
  _objc_release(v5);
  _objc_release(v15);
  context = objc_autoreleasePoolPush();
  v28 = 0;
  obja = 0;
  v17 = sub_100045FCC(v42, v41, v40, location, v39, &obja);
  objc_storeStrong(&v28, obja);
  if ((v17 & 1) == 0)
  {
    objc_storeStrong(&v43[4], v28);
  }

  v12 = [NSFileManager defaultManager:v7];
  v26 = v28;
  v13 = [(NSFileManager *)v12 removeItemAtURL:v39 error:&v26];
  objc_storeStrong(&v28, v26);
  _objc_release(v12);
  if (v13)
  {
    if (!*&v43[4])
    {
      objc_storeStrong(&v43[4], v28);
    }

    v25 = *__error();
    v24 = location;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v11 = [v39 path];
      sub_10000DC04(v48, v11, v28);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to remove shadow file '%@': %@", v48, 0x16u);
      _objc_release(v11);
    }

    objc_storeStrong(&v24, 0);
    v10 = v25;
    *__error() = v10;
  }

  objc_storeStrong(&v28, 0);
  objc_autoreleasePoolPop(context);
  v9 = *&v43[4];
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43[4], 0);
  objc_storeStrong(&location, 0);
  return v9;
}

uint64_t sub_100045FCC(id obj, void *a2, void *a3, void *a4, void *a5, CFErrorRef *a6)
{
  v173 = 0;
  objc_storeStrong(&v173, obj);
  v172 = 0;
  objc_storeStrong(&v172, a2);
  v171 = 0;
  objc_storeStrong(&v171, a3);
  v170 = 0;
  objc_storeStrong(&v170, a4);
  v169 = 0;
  objc_storeStrong(&v169, a5);
  v168 = a6;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = +[SKManager sharedManager];
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v74 = [DIAttachParams alloc];
  v73 = v173;
  v189 = v169;
  v71 = [NSArray arrayWithObjects:&v189 count:1];
  v156 = v167;
  v72 = [v74 initWithURL:v73 shadowURLs:v71 error:&v156];
  objc_storeStrong(&v167, v156);
  v6 = v164;
  v164 = v72;

  if (!v164)
  {
    v155 = *__error();
    v154 = v170;
    v153 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      v70 = [v173 path];
      sub_10000DC04(v188, v70, v167);
      _os_log_impl(&_mh_execute_header, v154, v153, "failed to create attach params for dmg '%@': %@", v188, 0x16u);
    }

    objc_storeStrong(&v154, 0);
    v69 = v155;
    *__error() = v69;
    goto LABEL_87;
  }

  [v164 setAutoMount:0];
  [v164 setFileMode:3];
  v152 = v167;
  v68 = [DiskImages2 managedAttachWithParams:v164 handle:&v163 error:&v152];
  objc_storeStrong(&v167, v152);
  if ((v68 & 1) == 0)
  {
    v151 = *__error();
    v150 = v170;
    v149 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      v67 = [v173 path];
      sub_10000DC04(v187, v67, v167);
      _os_log_impl(&_mh_execute_header, v150, v149, "failed to attach dmg '%@': %@", v187, 0x16u);
    }

    objc_storeStrong(&v150, 0);
    v66 = v151;
    *__error() = v66;
    goto LABEL_87;
  }

  v65 = v162;
  v64 = [v163 BSDName];
  v7 = [v65 diskForString:?];
  v8 = v161;
  v161 = v7;

  if (!v161)
  {
    v148 = 0;
    v147 = -1;
    if (v170)
    {
      v146 = 0;
      v145 = 3;
      v144 = v170;
      v143 = 16;
      if (!os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        v145 &= ~1u;
      }

      if (v145)
      {
        v62 = [v173 path];
        sub_100048030(v186, v62, -1);
        v63 = _os_log_send_and_compose_impl();

        v142 = v63;
        v146 = v63;
      }

      v141 = v146;
      objc_storeStrong(&v144, 0);
      v148 = v141;
    }

    else
    {
      v140 = 0;
      v139 = 2;
      v138 = &_os_log_default;
      v137 = 16;
      if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        v139 &= ~1u;
      }

      if (v139)
      {
        v60 = [v173 path];
        sub_100048030(v185, v60, -1);
        v61 = _os_log_send_and_compose_impl();

        v136 = v61;
        v140 = v61;
      }

      v135 = v140;
      objc_storeStrong(&v138, 0);
      v148 = v135;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v59 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v59 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v134 = sub_1000185D8("_hdi_create_dmg_applying_root", v59, 108, "com.apple.security.cryptex.posix", v147, 0, v148);
    sub_100002DE4(&v148);
    v9 = v167;
    v167 = v134;

    goto LABEL_87;
  }

  v133 = v167;
  v58 = [v161 mountWithOptionsDictionary:0 error:&v133];
  objc_storeStrong(&v167, v133);
  if ((v58 & 1) == 0)
  {
    v132 = *__error();
    v131 = v170;
    v130 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v57 = [v173 path];
      sub_10000DC04(v184, v57, v167);
      _os_log_impl(&_mh_execute_header, v131, v130, "failed to mount dmg '%@': %@", v184, 0x16u);
    }

    objc_storeStrong(&v131, 0);
    v56 = v132;
    *__error() = v56;
    goto LABEL_87;
  }

  v10 = [v161 mountPoint];
  v11 = v160;
  v160 = v10;

  v128 = 0;
  if (v160)
  {
    v129 = [[NSURL alloc] initWithString:v160];
    v128 = 1;
    v55 = v129;
  }

  else
  {
    v55 = 0;
  }

  objc_storeStrong(&v159, v55);
  if (v128 == 1)
  {
  }

  if (!v159)
  {
    v127 = 0;
    v126 = -1;
    if (v170)
    {
      v125 = 0;
      v124 = 3;
      v123 = v170;
      v122 = 16;
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v124 &= ~1u;
      }

      if (v124)
      {
        v53 = [v173 path];
        sub_100048030(v183, v53, -1);
        v54 = _os_log_send_and_compose_impl();

        v121 = v54;
        v125 = v54;
      }

      v120 = v125;
      objc_storeStrong(&v123, 0);
      v127 = v120;
    }

    else
    {
      v119 = 0;
      v118 = 2;
      v117 = &_os_log_default;
      v116 = 16;
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        v118 &= ~1u;
      }

      if (v118)
      {
        v51 = [v173 path];
        sub_100048030(v182, v51, -1);
        v52 = _os_log_send_and_compose_impl();

        v115 = v52;
        v119 = v52;
      }

      v114 = v119;
      objc_storeStrong(&v117, 0);
      v127 = v114;
    }

    if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
    {
      v50 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
    }

    else
    {
      v50 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
    }

    v113 = sub_1000185D8("_hdi_create_dmg_applying_root", v50, 122, "com.apple.security.cryptex.posix", v126, 0, v127);
    sub_100002DE4(&v127);
    v12 = v167;
    v167 = v113;

LABEL_83:
    v82 = v165;
    v26 = [v161 unmountWithOptions:0 error:&v82];
    objc_storeStrong(&v165, v82);
    if ((v26 & 1) == 0)
    {
      v81 = *__error();
      v80 = v170;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v25 = [v173 path];
        sub_10000DC04(v174, v25, v165);
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "failed to unmount dmg '%@': %@", v174, 0x16u);
      }

      objc_storeStrong(&v80, 0);
      v24 = v81;
      *__error() = v24;
    }

    goto LABEL_87;
  }

  v49 = [v172 path];
  v13 = v49;
  v48 = [v49 UTF8String];
  v47 = [v159 path];
  v14 = v47;
  v46 = sub_10003E3F8(v48, [v47 UTF8String], v170);
  v15 = v167;
  v167 = v46;

  if (v167)
  {
    v112 = *__error();
    v111 = v170;
    v110 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v45 = [v173 path];
      sub_10000DC04(v181, v45, v167);
      _os_log_impl(&_mh_execute_header, v111, v110, "failed to overlay root on dmg '%@': %@", v181, 0x16u);
    }

    objc_storeStrong(&v111, 0);
    v44 = v112;
    *__error() = v44;
    goto LABEL_83;
  }

  v109 = 0;
  v43 = [v161 unmountWithOptions:0 error:&v109];
  objc_storeStrong(&v167, v109);
  if (v43)
  {
    v16 = [SKDiskImage alloc];
    v105 = v167;
    v40 = [v16 initWithURL:v173 error:&v105];
    objc_storeStrong(&v167, v105);
    v17 = v158;
    v158 = v40;

    if (v158)
    {
      v37 = [SKDiskImageCreateParams alloc];
      v36 = v158;
      v178 = v169;
      v34 = [NSArray arrayWithObjects:&v178 count:1];
      v35 = [v37 initWithDiskImage:v36 format:4 shadowURLs:?];
      v18 = v157;
      v157 = v35;

      if (v157)
      {
        v86 = v167;
        v28 = [SKDiskImage diskImageWithURL:v171 params:v157 error:&v86];
        objc_storeStrong(&v167, v86);

        if (v28)
        {
          v166 = 1;
        }

        else
        {
          v85 = *__error();
          v84 = v170;
          v83 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            sub_10000ACC8(v175, v167);
            _os_log_impl(&_mh_execute_header, v84, v83, "failed to create disk image with applied root: %@", v175, 0xCu);
          }

          objc_storeStrong(&v84, 0);
          v27 = v85;
          *__error() = v27;
        }
      }

      else
      {
        v101 = 0;
        v100 = -1;
        if (v170)
        {
          v99 = 0;
          v98 = 3;
          v97 = v170;
          v96 = 16;
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v98 &= ~1u;
          }

          if (v98)
          {
            v32 = [v173 path];
            sub_100048030(&v177, v32, -1);
            v33 = _os_log_send_and_compose_impl();

            v95 = v33;
            v99 = v33;
          }

          v94 = v99;
          objc_storeStrong(&v97, 0);
          v101 = v94;
        }

        else
        {
          v93 = 0;
          v92 = 2;
          v91 = &_os_log_default;
          v90 = 16;
          if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v92 &= ~1u;
          }

          if (v92)
          {
            v30 = [v173 path];
            sub_100048030(&v176, v30, -1);
            v31 = _os_log_send_and_compose_impl();

            v89 = v31;
            v93 = v31;
          }

          v88 = v93;
          objc_storeStrong(&v91, 0);
          v101 = v88;
        }

        if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47))
        {
          v29 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m", 47) + 1;
        }

        else
        {
          v29 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/hlutil/hdi.m";
        }

        v87 = sub_1000185D8("_hdi_create_dmg_applying_root", v29, 153, "com.apple.security.cryptex.posix", v100, 0, v101);
        sub_100002DE4(&v101);
        v19 = v167;
        v167 = v87;
      }
    }

    else
    {
      v104 = *__error();
      v103 = v170;
      v102 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v39 = [v173 path];
        sub_10000DC04(v179, v39, v167);
        _os_log_impl(&_mh_execute_header, v103, v102, "failed to initialize disk image object for '%@': %@", v179, 0x16u);
      }

      objc_storeStrong(&v103, 0);
      v38 = v104;
      *__error() = v38;
    }
  }

  else
  {
    v108 = *__error();
    v107 = v170;
    v106 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v42 = [v173 path];
      sub_10000DC04(v180, v42, v167);
      _os_log_impl(&_mh_execute_header, v107, v106, "failed to unmount dmg '%@': %@", v180, 0x16u);
    }

    objc_storeStrong(&v107, 0);
    v41 = v108;
    *__error() = v41;
  }

LABEL_87:
  if (v168)
  {
    v23 = v167;
    v20 = v167;
    *v168 = v23;
  }

  v22 = v166;
  objc_storeStrong(&v157, 0);
  objc_storeStrong(&v158, 0);
  objc_storeStrong(&v159, 0);
  objc_storeStrong(&v160, 0);
  objc_storeStrong(&v161, 0);
  objc_storeStrong(&v162, 0);
  objc_storeStrong(&v163, 0);
  objc_storeStrong(&v164, 0);
  objc_storeStrong(&v165, 0);
  objc_storeStrong(&v167, 0);
  objc_storeStrong(&v169, 0);
  objc_storeStrong(&v170, 0);
  objc_storeStrong(&v171, 0);
  objc_storeStrong(&v172, 0);
  objc_storeStrong(&v173, 0);
  return v22 & 1;
}

void sub_100048000(uint64_t a1, int a2)
{
  *(v2 + 8) = a1;
  if (a2)
  {
    objc_terminate();
  }

  *(v2 + 16) = *(v2 + 8);
  _Unwind_Resume(*(v2 + 16));
}

uint64_t sub_100048030(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_1000480E0()
{
  v35 = __chkstk_darwin();
  v34 = v0;
  v33 = v1;
  v29 = sub_100048084();
  *(sub_100048090() + 3) = v35;
  optind = 0;
  sub_1000483C8(1uLL, "argv[%s] =", v2, v3, v4, v5, v6, v7, *(v35 + 16));
  for (i = 0; i < v34; ++i)
  {
    v26 = *(v33 + 8 * i);
    sub_1000483C8(1uLL, "  [%d] = %s", v8, v9, v10, v11, v12, v13, i);
  }

  v31 = 0;
  sub_1000483C8(1uLL, "env[%s] =", v8, v9, v10, v11, v12, v13, *(v35 + 16));
  while (*(environ + 8 * v31))
  {
    bzero(__s, 0x800uLL);
    __strlcpy_chk();
    v28 = strrchr(__s, 61);
    if (v28)
    {
      *v28 = 0;
      sub_1000483C8(1uLL, "  %s => %s", v14, v15, v16, v17, v18, v19, __s);
    }

    ++v31;
  }

  v32 = 0;
  sub_1000483C8(1uLL, "apple[%s] =", v14, v15, v16, v17, v18, v19, *(v35 + 16));
  while (*(v29[290] + 8 * v32))
  {
    bzero(v36, 0x800uLL);
    __strlcpy_chk();
    v27 = strrchr(v36, 61);
    if (v27)
    {
      *v27 = 0;
      sub_1000483C8(1uLL, "  %s => %s", v20, v21, v22, v23, v24, v25, v36);
    }

    ++v32;
  }
}

void sub_1000483C8(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = a1;
  v13 = a2;
  v12 = sub_100048090();
  v11 = v12[3];
  v10 = 0;
  if (v14 <= v12[2])
  {
    v10 = &a9;
    vwarnx(v13, &a9);
    if (*v12)
    {
      v9 = sub_1000485AC(v11);
      v10 = &a9;
      os_log_with_args();
      sub_1000030D0(&v9);
    }
  }
}

uint64_t sub_100048490(const char *a1, unint64_t *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -1;
  __endptr = 0;
  *__error() = 0;
  if (v7)
  {
    v3 = strtoull(v7, &__endptr, 0);
    if (__endptr == v7)
    {
      v5 = 22;
    }

    else if (*__error())
    {
      v5 = *__error();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = 1;
    v5 = 0;
  }

  if (!v5)
  {
    *v6 = v3;
  }

  return v5;
}

os_log_t sub_1000485AC(uint64_t a1)
{
  if (a1)
  {
    return os_log_create("com.apple.libcryptex", *(a1 + 16));
  }

  else
  {
    return os_log_create("com.apple.libcryptex", "main");
  }
}

void sub_10004860C(FILE *a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = sub_100048090();
  v11 = v12[3];
  v10 = 0;
  v15 = sub_10004870C(v15, v14);
  if (v14 <= v12[1])
  {
    v10 = &a9;
    vfprintf(v15, v13, &a9);
    fprintf(v15, "\n");
    if (*v12)
    {
      v9 = sub_1000485AC(v11);
      sub_100048770(v15, v14);
      v10 = &a9;
      os_log_with_args();
      sub_1000030D0(&v9);
    }
  }
}

FILE *sub_10004870C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a1;
  }

  if (a2)
  {
    return __stderrp;
  }

  return __stdoutp;
}

uint64_t sub_100048770(FILE *a1, uint64_t a2)
{
  if (a2)
  {
    return 2;
  }

  else if (a1 == __stderrp)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

void sub_1000487F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = sysexit_np();
  vfprintf(__stderrp, a2, &a9);
  v10 = __stderrp;
  v9 = strerror_np();
  fprintf(v10, ": %s\n", v9);
  exit(v11);
}

uint64_t sub_10004887C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, NSObject *a5)
{
  v6 = fcheck_np();
  if (v6 == -1)
  {
    v9 = 84;
    v8 = *__error();
    if (os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v14, a1, 84);
      _os_log_impl(&_mh_execute_header, a5, OS_LOG_TYPE_ERROR, "FILE [read %s]: %{darwin.errno}d", v14, 0x12u);
    }

    *__error() = v8;
  }

  else if (v6)
  {
    v9 = a4;
    v7 = *__error();
    if (os_log_type_enabled(a5, OS_LOG_TYPE_ERROR))
    {
      sub_100009EA4(v13, a1, a4);
      _os_log_impl(&_mh_execute_header, a5, OS_LOG_TYPE_ERROR, "FILE [read %s]: %{darwin.errno}d", v13, 0x12u);
    }

    *__error() = v7;
  }

  else
  {
    return 0;
  }

  return v9;
}

void start(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100048090();
  sub_100048AE0(v5);
  sub_100048BE0(a1, a2, a3, a4);
  v4 = os_subcommand_main();
  exit(v4);
}

const char *sub_100048AE0(void *a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  if (getenv("_CRYPTEX_CLI_ENV_POST_REEXEC"))
  {
    *v8 |= 4uLL;
  }

  v7 = getenv("CRYPTEXCTL_VERBOSE_LEVEL");
  if (v7)
  {
    v5 = -1;
    v4 = 0;
    v5 = sub_100048490(v7, &v4);
    if (!v5)
    {
      v8[1] = v4;
    }
  }

  result = getenv("CRYPTEXCTL_DEBUG_LEVEL");
  v6 = result;
  if (result)
  {
    v3 = -1;
    v2 = 0;
    result = sub_100048490(v6, &v2);
    v3 = result;
    if (!result)
    {
      v8[2] = v2;
    }
  }

  return result;
}

int *sub_100048BE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = -1;
  v14 = -1;
  bzero(v23, 0x400uLL);
  bufsize = 1024;
  v12 = -1;
  v14 = _NSGetExecutablePath(v23, &bufsize);
  if (v14)
  {
    memset(&v22[8], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_1000013C8(v22, bufsize);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100048D7CLL);
  }

  v12 = open(v23, 0);
  v20 = v12;
  if (v12 < 0)
  {
    err(71, "open: %s", v23);
  }

  v15 = realpath_np();
  if (v15)
  {
    errc(71, v15, "realpath: %s", v23);
  }

  __strlcpy_chk();
  basename_r(byte_100084C88, byte_100085088);
  sub_1000483C8(1uLL, "path = %s", v4, v5, v6, v7, v8, v9, byte_100084C88);
  *&byte_100085088[1280] = v19;
  *&byte_100085088[1288] = v18;
  *&byte_100085088[1296] = v16;
  opterr = 0;
  *&byte_100085088[1304] = dispatch_semaphore_create(0);
  err_set_exit(sub_100049008);
  if (setenv("POSIXLY_CORRECT", "1", 1) == -1)
  {
    memset(&v21[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v10 = __error();
    sub_1000013C8(v21, *v10);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100048FCCLL);
  }

  return sub_1000038DC(&v12);
}

uint64_t sub_100049044(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  if (a3)
  {
    v17 = sub_1000183E8();
    for (i = 0; i < v20; ++i)
    {
      sub_100049214(v17, (v21 + 32 * i));
    }

    v18 = sub_10004933C(v19, v17);
    sub_100006B40(&v17);
  }

  else
  {
    for (j = 0; j < v20; ++j)
    {
      v14 = (v21 + 32 * j);
      sub_10004860C(__stdoutp, 0, "%s", a4, a5, a6, a7, a8, *v14);
      sub_10004860C(__stdoutp, 0, "  version = %s", v8, v9, v10, v11, v12, v14[1]);
      if (v14[3])
      {
        sub_10004860C(__stdoutp, 0, "  device = %s", a4, a5, a6, a7, a8, v14[3]);
      }

      if (v14[2])
      {
        sub_10004860C(__stdoutp, 0, "  mount point = %s", a4, a5, a6, a7, a8, v14[2]);
      }
    }
  }

  return v18;
}

void sub_100049214(__CFArray *a1, const char **a2)
{
  v8 = a1;
  v7 = a2;
  v6 = sub_100018314(*a2);
  value = sub_100018314(v7[1]);
  v4 = 0;
  v3 = 0;
  theDict = sub_100018434();
  CFDictionaryAddValue(theDict, @"identifier", v6);
  CFDictionaryAddValue(theDict, @"version", value);
  if (v7[3])
  {
    v4 = sub_100018314(v7[3]);
    CFDictionaryAddValue(theDict, @"device", v4);
  }

  if (v7[2])
  {
    v3 = sub_100018314(v7[2]);
    CFDictionaryAddValue(theDict, @"mount_point", v3);
  }

  CFArrayAppendValue(v8, theDict);
  sub_100006B40(&theDict);
  sub_100006B40(&v3);
  sub_100006B40(&v4);
  sub_100006B40(&value);
  sub_100006B40(&v6);
}

uint64_t sub_10004933C(const char *a1, void *a2)
{
  v4 = 22;
  if (!strcmp(a1, "plist"))
  {
    v3 = sub_10002CD94(a2);
  }

  else
  {
    if (strcmp(a1, "json"))
    {
      return v4;
    }

    v3 = sub_10002CF18(a2);
  }

  if (v3)
  {
    return sub_100018A78(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1000493EC(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
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
  return result;
}

uint64_t sub_10004941C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result |= 2u;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_100049430(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    sub_100049648();
  }

  v7 = v6;
  result = sub_1000494D4(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    sub_100049610();
  }

  *(a2 + 8) = *(a1 + 8 * (v7 % 0x25));
  *(a1 + 8 * (v7 % 0x25)) = a2;
  if (*a2)
  {
    sub_10004962C();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t sub_1000494D4(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100049570(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = os_simple_hash();
  v7 = (a1 + 8 * (result % 0x25));
  v8 = *v7;
  if (*v7 != a2)
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 8);
    }

    while (v8 != a2);
    v7 = (v9 + 8);
  }

  *v7 = *(v8 + 8);
  *(a2 + 8) = -1;
  if ((*a2 & 1) == 0)
  {
    sub_100049664();
  }

  *a2 &= ~1u;
  --*(a1 + 296);
  return result;
}

void sub_100049680(_BYTE *a1)
{
  if (*a1)
  {
    if (*(a1 + 4) == 2)
    {
      v2 = *(a1 + 10);
      mach_right_send_release();
    }

    xpc_release(*(a1 + 37));
    os_release(*(a1 + 1));
    if ((*a1 & 0x40) != 0)
    {

      free(a1);
    }
  }
}

os_log_t sub_1000496F4(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

void sub_100049728(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t sub_100049764(uint64_t __str, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >= 0x31)
  {
    sub_10004BD5C(&v8, v9);
  }

  v4 = __str;
  *(__str + 96) = 0;
  *(__str + 64) = 0u;
  *(__str + 80) = 0u;
  *(__str + 32) = 0u;
  *(__str + 48) = 0u;
  *__str = 0u;
  *(__str + 16) = 0u;
  if (a3)
  {
    v6 = 97;
    do
    {
      v7 = *a2++;
      __str = snprintf(v4, v6, "%02x", v7);
      v4 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  return __str;
}

char *sub_100049834(char **a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = (2 * a3) | 1;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v6, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v6, 0x8709206FuLL);
    if (!result)
    {
      sub_10004BDC8(&v11, v12);
    }
  }

  v8 = result;
  if (v3)
  {
    v9 = result;
    do
    {
      v10 = *a2++;
      result = snprintf(v9, v6, "%02x", v10);
      v9 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  *a1 = v8;
  return result;
}

size_t sub_100049940(_BYTE *a1, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v4 = result;
    for (i = 0; i < v4; i += 2)
    {
      v8 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        sub_10004BE74(&v6, v9);
      }

      *a1++ = result;
    }
  }

  return result;
}

unint64_t sub_100049A08(unint64_t *a1, size_t *a2, char *__s)
{
  v5 = strlen(__s);
  v6 = (v5 & 1) + (v5 >> 1);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, v6, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, v6, 0x8709206FuLL);
    if (!result)
    {
      sub_10004BDC8(&v13, v14);
    }
  }

  v8 = result;
  if (v5)
  {
    v9 = 0;
    v10 = result;
    do
    {
      v12 = 0;
      *__str = 0;
      __strlcpy_chk();
      result = strtoul(__str, 0, 16);
      if (result >= 0x100)
      {
        sub_10004BE74(&v13, v14);
      }

      *v10++ = result;
      v9 += 2;
    }

    while (v9 < v5);
  }

  *a1 = v8;
  *a2 = v6;
  return result;
}

uint64_t sub_100049B4C(int a1, const char *a2)
{
  v4 = &unk_100085000;
  if (a2)
  {
    v5 = openat(a1, a2, 0x100000);
    v74 = *__error();
    if (v5 < 0)
    {
      v12 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEE0();
      }

      v13 = qword_1000855E8;
      if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", buf, 8u);
      }

      *__error() = v12;
      return v74;
    }

    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "top-level directory: %s", buf, 0xCu);
    }

    *__error() = v74;
  }

  else
  {
    v5 = dup_np();
  }

  v73 = a2;
  v72 = a1;
  if (qword_1000855E0 != -1)
  {
    sub_10004BEF4();
  }

  v7 = qword_1000855E8;
  bzero(buf, 0x400uLL);
  memset(&v89, 0, sizeof(v89));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (fstat(v5, &v89) == -1)
    {
      v14 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *v77 = 136315650;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 1024;
        LODWORD(v82) = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
      }

      *__error() = v14;
    }

    else
    {
      if (fcntl(v5, 50, buf))
      {
        v8 = __error();
        v9 = strerror(*v8);
        snprintf(buf, 0x400uLL, "[%s]", v9);
      }

      v10 = v89.st_mode >> 12;
      if (v10 == 7)
      {
        v11 = "[unknown]";
      }

      else
      {
        v11 = off_10007E910[v10 ^ 8];
      }

      v16 = os_flagset_copy_string();
      v17 = *__error();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v77 = 136316418;
        v78 = "subdirfd";
        v79 = 1024;
        v80 = v5;
        v81 = 2080;
        v82 = v11;
        v83 = 2048;
        st_size = v89.st_size;
        v85 = 2080;
        v86 = v16;
        v87 = 2080;
        v88 = buf;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
      }

      *__error() = v17;
      free(v16);
      v4 = &unk_100085000;
    }
  }

  v18 = fdopendir(v5);
  if (!v18)
  {
    sub_10004C110(&v89, buf);
  }

  v19 = v18;
  v76 = 0;
  v20 = 0;
  v21 = 0;
  v74 = -1;
  v75 = v18;
  while (1)
  {
    v22 = v20;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v23 = 128;
LABEL_35:
    v25 = dirfd(v19);
    if (v76 >= 4)
    {
      sub_10004C094(&v89, buf);
    }

    v26 = v25;
    if (v21->d_name[0] == 46)
    {
      v20 = 0;
      if (!v21->d_name[1])
      {
        continue;
      }

      if (v21->d_name[1] == 46)
      {
        v20 = 0;
        if (!v21->d_name[2])
        {
          continue;
        }
      }
    }

    v27 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v28 = *(v4 + 189);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v21->d_name;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "removing: %s", buf, 0xCu);
    }

    *__error() = v27;
    v29 = openat(v26, v21->d_name, 256);
    if ((v29 & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v30 = *__error();
    if (v30 == 62)
    {
      v41 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v42 = *(v4 + 189);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s is a symlink", buf, 0xCu);
      }

      *__error() = v41;
    }

    else
    {
      if (v30 == 2)
      {
        v38 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v39 = *(v4 + 189);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
        }

        v76 = 0;
        v20 = 0;
        *__error() = v38;
        v40 = 9;
        goto LABEL_131;
      }

      if (v30)
      {
        v74 = *__error();
        v43 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v44 = *(v4 + 189);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v44;
        v47 = "openat: %{darwin.errno}d";
        goto LABEL_128;
      }

      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v31 = *(v4 + 189);
      bzero(buf, 0x400uLL);
      memset(&v89, 0, sizeof(v89));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        if (fstat(v29, &v89) == -1)
        {
          v48 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v49 = *__error();
            *v77 = 136315650;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 1024;
            LODWORD(v82) = v49;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s fd[%d] : [invalid descriptor]: %{darwin.errno}d", v77, 0x18u);
          }

          *__error() = v48;
        }

        else
        {
          if (fcntl(v29, 50, buf))
          {
            v32 = __error();
            v33 = strerror(*v32);
            snprintf(buf, 0x400uLL, "[%s]", v33);
          }

          v34 = v89.st_mode >> 12;
          v35 = "[unknown]";
          if (v34 != 7)
          {
            v35 = off_10007E910[v34 ^ 8];
          }

          v36 = os_flagset_copy_string();
          v37 = *__error();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *v77 = 136316418;
            v78 = "defd";
            v79 = 1024;
            v80 = v29;
            v81 = 2080;
            v82 = v35;
            v83 = 2048;
            st_size = v89.st_size;
            v85 = 2080;
            v86 = v36;
            v87 = 2080;
            v88 = buf;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s fd[%d]: type = %s, size = %lld, flags = %s, path = %s", v77, 0x3Au);
          }

          *__error() = v37;
          free(v36);
          v4 = &unk_100085000;
        }
      }
    }

    if ((unlinkat(v26, v21->d_name, v23) & 0x80000000) == 0)
    {
      *__error() = 0;
    }

    v50 = *__error();
    if (v50 <= 15)
    {
      if (!v50)
      {
        v51 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v59 = *(v4 + 189);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          d_name = v21->d_name;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "removed: %s", buf, 0xCu);
        }

        v53 = __error();
        v40 = 0;
        v76 = 0;
        goto LABEL_110;
      }

      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v51 = *__error();
          if (qword_1000855E0 != -1)
          {
            sub_10004BEF4();
          }

          v52 = *(v4 + 189);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "file disappeared: %s", buf, 0xCu);
          }

          v53 = __error();
          v40 = 0;
LABEL_110:
          v20 = 0;
          *v53 = v51;
          goto LABEL_131;
        }

LABEL_124:
        v74 = *__error();
        v43 = *__error();
        if (qword_1000855E0 != -1)
        {
          sub_10004BEF4();
        }

        v63 = *(v4 + 189);
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v63;
        v47 = "unlinkat: %{darwin.errno}d";
LABEL_128:
        v64 = 8;
LABEL_129:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v47, v45, v64);
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    if (v50 != 16)
    {
      if (v50 != 21)
      {
        if (v50 == 66)
        {
          v54 = *__error();
          if (qword_1000855E0 != -1)
          {
            sub_10004BEF4();
          }

          v55 = *(v4 + 189);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            d_name = v21->d_name;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "re-trying directory cleanup: %s", buf, 0xCu);
          }

          v40 = 0;
          v20 = 0;
          *__error() = v54;
          ++v76;
          goto LABEL_131;
        }

        goto LABEL_124;
      }

LABEL_96:
      v56 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v57 = *(v4 + 189);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        d_name = v21->d_name;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "emptying subdirectory: %s", buf, 0xCu);
      }

      *__error() = v56;
      v74 = sub_100049B4C(v29, 0);
      if (!v74)
      {
        goto LABEL_123;
      }

      v43 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v58 = *(v4 + 189);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        v45 = buf;
        v46 = v58;
        v47 = "emptydir [recurse]: %{darwin.errno}d";
        goto LABEL_128;
      }

      goto LABEL_130;
    }

    if ((v22 & 1) == 0 && v21->d_type != 4)
    {
      v74 = *__error();
      v43 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v65 = *(v4 + 189);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      *buf = 136315394;
      d_name = v21->d_name;
      v92 = 1024;
      v93 = v74;
      v45 = buf;
      v46 = v65;
      v47 = "file busy: %s: %{darwin.errno}d";
      v64 = 18;
      goto LABEL_129;
    }

    bzero(buf, 0x400uLL);
    if (realpath_np())
    {
      sub_10004BF1C(v77, &v89);
    }

    v60 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v61 = *(v4 + 189);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v89.st_dev = 136315138;
      *&v89.st_mode = v21->d_name;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "mount point; forcing unmount: %s", &v89, 0xCu);
    }

    *__error() = v60;
    if (!unmount(buf, 0x80000))
    {
LABEL_123:
      v40 = 0;
      v74 = 0;
      v20 = 1;
      goto LABEL_131;
    }

    v74 = *__error();
    v43 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v62 = *(v4 + 189);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v89.st_dev = 67109120;
      *&v89.st_mode = v74;
      v45 = &v89;
      v46 = v62;
      v47 = "unmount + MNT_FORCE: %{darwin.errno}d";
      goto LABEL_128;
    }

LABEL_130:
    v20 = 0;
    *__error() = v43;
    v40 = 4;
LABEL_131:
    if (v29 != -1 && close(v29) == -1)
    {
      sub_10004BFAC(&v89, buf);
    }

    v19 = v75;
    if (v40 && v40 != 9)
    {
      goto LABEL_157;
    }
  }

  v24 = readdir(v19);
  if (v24)
  {
    v21 = v24;
    v23 = 0;
    goto LABEL_35;
  }

  if (v73)
  {
    v66 = unlinkat(v72, v73, 128);
    v74 = *__error();
    if (v66)
    {
      v67 = *__error();
      if (qword_1000855E0 != -1)
      {
        sub_10004BEF4();
      }

      v68 = *(v4 + 189);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(d_name) = v74;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unlinkat [top level]: %{darwin.errno}d", buf, 8u);
      }

      goto LABEL_156;
    }

    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v70 = *(v4 + 189);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      d_name = v73;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "removed top-level directory: %s", buf, 0xCu);
    }

    v67 = v74;
  }

  else
  {
    v67 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v69 = *(v4 + 189);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "removed subdirectory", buf, 2u);
    }
  }

  v74 = 0;
LABEL_156:
  *__error() = v67;
LABEL_157:
  if (closedir(v19) == -1)
  {
    sub_10004C020(&v89, buf);
  }

  return v74;
}

uint64_t sub_10004AA74(int a1, const char *a2, int a3, const char *a4)
{
  if ((renameat(a1, a2, a3, a4) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v8 = *__error();
  v9 = *__error();
  if (v8 == 18)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v11 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "taking slow path", v15, 2u);
    }

    *__error() = v9;
    return sub_10004AC6C(a1, a2, a3, a4);
  }

  else if (v8)
  {
    v12 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "renameat: %{darwin.errno}d", v15, 8u);
    }

    *__error() = v12;
  }

  else
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEE0();
    }

    v10 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "renameat succeeded", v15, 2u);
    }

    *__error() = v9;
    return 0;
  }

  return v9;
}

uint64_t sub_10004AC6C(int a1, const char *a2, int a3, const char *a4)
{
  memset(&v34, 0, sizeof(v34));
  bzero(from, 0x400uLL);
  bzero(__str, 0x400uLL);
  LODWORD(v8) = openat(a1, a2, 0);
  if ((v8 & 0x80000000) != 0)
  {
    v10 = *__error();
    a1 = *__error();
    if (qword_1000855E0 != -1)
    {
      dispatch_once(&qword_1000855E0, &stru_10007E4F0);
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 67109120;
      *&buf.st_mode = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "openat: %{darwin.errno}d", &buf, 8u);
    }

    *__error() = a1;
    if (v8 != -1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v9 = realpath_np();
    if (!v9)
    {
      v14 = realpath_np();
      if (v14)
      {
        v10 = v14;
        a1 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v11 = qword_1000855E8;
        if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "realpath: %{darwin.errno}d";
      }

      else if (fstat(v8, &v34))
      {
        v10 = *__error();
        a1 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v11 = qword_1000855E8;
        if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "fstat: %{darwin.errno}d";
      }

      else
      {
        v15 = v34.st_mode & 0xF000;
        if (v15 == 0x8000)
        {
          v18 = 1179663;
        }

        else if (v15 == 0x4000)
        {
          memset(&buf, 0, sizeof(buf));
          if ((fstatat(a3, a4, &buf, 0) & 0x80000000) == 0)
          {
            *__error() = 0;
          }

          v16 = *__error();
          v10 = *__error();
          if (v16 != 2)
          {
            if (!v16)
            {
              if (qword_1000855E0 != -1)
              {
                dispatch_once(&qword_1000855E0, &stru_10007E4F0);
              }

              v17 = qword_1000855E8;
              if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
              {
                *v25 = 0;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "destination directory exists", v25, 2u);
              }

              a1 = v10;
              v10 = 17;
              goto LABEL_51;
            }

            a1 = *__error();
            if (qword_1000855E0 != -1)
            {
              dispatch_once(&qword_1000855E0, &stru_10007E4F0);
            }

            v11 = qword_1000855E8;
            if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }

            *v25 = 67109120;
            v26 = v10;
            v12 = "fstatat: %{darwin.errno}d";
            p_buf = v25;
            goto LABEL_50;
          }

          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v19 = qword_1000855E8;
          if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "will create destination directory", v25, 2u);
          }

          *__error() = v10;
          v18 = 32783;
        }

        else
        {
          v18 = 15;
        }

        snprintf(__str, 0x400uLL, "%s/%s", __str, a4);
        v20 = *__error();
        if (qword_1000855E0 != -1)
        {
          dispatch_once(&qword_1000855E0, &stru_10007E4F0);
        }

        v21 = qword_1000855E8;
        if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
        {
          buf.st_dev = 136315394;
          *&buf.st_mode = from;
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = __str;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "copyfile: src = %s, dst = %s", &buf, 0x16u);
        }

        *__error() = v20;
        if (copyfile(from, __str, 0, v18))
        {
          v10 = *__error();
          a1 = *__error();
          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v11 = qword_1000855E8;
          if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          buf.st_dev = 67109120;
          *&buf.st_mode = v10;
          v12 = "copyfile: %{darwin.errno}d";
        }

        else
        {
          if ((v18 & 0x8000) == 0)
          {
            v10 = 0;
            goto LABEL_52;
          }

          v10 = sub_100049B4C(a1, a2);
          if (!v10)
          {
            goto LABEL_52;
          }

          a1 = *__error();
          if (qword_1000855E0 != -1)
          {
            dispatch_once(&qword_1000855E0, &stru_10007E4F0);
          }

          v11 = qword_1000855E8;
          if (!os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          buf.st_dev = 67109120;
          *&buf.st_mode = v10;
          v12 = "_rmrfdirat: %{darwin.errno}d";
        }
      }

      goto LABEL_49;
    }

    v10 = v9;
    a1 = *__error();
    if (qword_1000855E0 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v11 = qword_1000855E8;
      if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 67109120;
        *&buf.st_mode = v10;
        v12 = "realpath: %{darwin.errno}d";
LABEL_49:
        p_buf = &buf;
LABEL_50:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, p_buf, 8u);
      }

LABEL_51:
      *__error() = a1;
LABEL_52:
      if (close(v8) != -1)
      {
        break;
      }

      *__str = 0;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      *from = 0u;
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v24 = *__error();
      v34.st_dev = 67109120;
      *&v34.st_mode = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      dispatch_once(&qword_1000855E0, &stru_10007E4F0);
    }
  }

  return v10;
}

uint64_t sub_10004B3B0(int a1, char *a2, int *a3)
{
  v5 = mkdtempat_np(a1, a2);
  if (!v5)
  {
    return *__error();
  }

  v6 = openat(a1, v5, 1048832);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a3 = v7;
  return result;
}

size_t sub_10004B40C(int a1, char *a2)
{
  result = confstr(a1, a2, 0x400uLL);
  if (!result)
  {
    sub_10004C1A0(&v3, v4);
  }

  if (result >= 0x401)
  {
    sub_10004C184();
  }

  return result;
}

uint64_t sub_10004B484(unsigned int a1, uint64_t a2)
{
  *(a2 + 4) = 0;
  *a2 = bswap32(a1);
  return a2;
}

unint64_t sub_10004B498(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10004B524(int a1, void *a2)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    sub_10004C214();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v15 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v10;
  while (1)
  {
    v11 = pread(a1, v8, st_size, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v13 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v16 = v11;
  v17 = *__error();
  if (v16 == st_size)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v18 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v17;
LABEL_9:
    sub_10004C358(a2, 0, j__free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (qword_1000855E0 != -1)
  {
    sub_10004BEF4();
  }

  v19 = qword_1000855E8;
  if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t sub_10004B8CC(int __fd, uint64_t a2)
{
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v6 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v17) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      return v8;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v12 = qword_1000855E8;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (qword_1000855E0 != -1)
    {
      sub_10004BEF4();
    }

    v13 = qword_1000855E8;
    v8 = 5;
    if (os_log_type_enabled(qword_1000855E8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = v14;
      v20 = 1024;
      v21 = 5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  return v8;
}

char *sub_10004BAF0(const char *a1)
{
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v2 = strdup(a1);
      if (v2)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v2 = strdup(a1);
    if (!v2)
    {
      sub_10004C230(a1, &v8, v9);
    }
  }

  v3 = v2;
  v4 = *v2;
  if (*v2)
  {
    v5 = (v2 + 1);
    do
    {
      *(v5 - 1) = __tolower(v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10004BBD4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10004BBFC()
{

  return _os_log_send_and_compose_impl();
}

double sub_10004BC20(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double sub_10004BC40(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_10004BC64()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_10004BC9C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10004BCB4()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL sub_10004BCCC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10004BD04()
{
  v2 = *v0;

  return _os_crash_msg();
}

double sub_10004BD38(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_10004BD5C(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  sub_10004BC9C();
  sub_10004BD1C();
  sub_10004BBFC();
  sub_10004BD04();
  __break(1u);
}

void sub_10004BDC8(void *a1, _OWORD *a2)
{
  sub_10004BD38(a1, a2);
  sub_10004BC9C();
  v3 = __error();
  strerror(*v3);
  sub_10004BCE4();
  sub_10004BC64();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004BE74(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  sub_10004BC9C();
  sub_10004BD1C();
  sub_10004BBFC();
  sub_10004BD04();
  __break(1u);
}

void sub_10004BF1C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_10004BC9C();
  sub_10004BBFC();
  sub_10004BD04();
  __break(1u);
}

void sub_10004BFAC(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  v2 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  sub_10004BCB4();
  __break(1u);
}

void sub_10004C020(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  v2 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  sub_10004BCB4();
  __break(1u);
}

void sub_10004C094(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  sub_10004BC9C();
  sub_10004BBFC();
  sub_10004BD04();
  __break(1u);
}

void sub_10004C110(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  v2 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  sub_10004BCB4();
  __break(1u);
}

void sub_10004C1A0(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  sub_10004BCCC();
  v2 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  sub_10004BCB4();
  __break(1u);
}

void sub_10004C230(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  sub_10004BC9C();
  v5 = __error();
  strerror(*v5);
  sub_10004BCE4();
  sub_10004BC64();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

uint64_t sub_10004C2F8(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    sub_10004C6B8(&v3, v4);
  }

  return result;
}

void *sub_10004C358(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    sub_10004C73C(&v5, v6);
  }

  return result;
}

void *sub_10004C3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    sub_10004C7C4(&v6, v7);
  }

  return sub_10004C358(a1, a2, a3, a4, a5);
}

__n128 sub_10004C438(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  if (a4 + a3 > a2->n128_u64[1])
  {
    v5 = a2->n128_u64[1];
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  a1->n128_u64[0] = a2->n128_u64[0] + a3;
  a1->n128_u64[1] = a4;
  a1[1].n128_u64[0] = a2->n128_u64[0];
  a1[1].n128_u64[1] = a2->n128_u64[1];
  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[1] = 0;
  return result;
}

void sub_10004C574(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  if (a2[3].n128_u64[0])
  {
    sub_10004C84C();
  }

  sub_10004C438(a1, a2, a3, a4);
  a2[3].n128_u64[0] = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = 0;
}

uint64_t sub_10004C5B4(uint64_t result)
{
  *(result + 40) = *(result + 48);
  *(result + 48) = 0;
  return result;
}

FILE *sub_10004C5C0(uint64_t a1, char *__mode, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0 || (v5 = *(a1 + 8), v5 < a3))
  {
    sub_10004C970();
  }

  v6 = fmemopen(*a1, v5, __mode);
  if (!v6)
  {
    sub_10004C8EC(&v9, v10);
  }

  v7 = v6;
  if (fseek(v6, a3, 0) == -1)
  {
    sub_10004C868(&v9, v10);
  }

  return v7;
}

void *sub_10004C66C(void *result)
{
  if (result)
  {
    if (*result)
    {
      v2 = result[5];
      if (v2)
      {
        if (result[6])
        {
          sub_10004C98C();
        }

        v3 = result[3];
        v4 = result[4];
        v5 = result[2];

        return v2(v5, v3, v4);
      }
    }
  }

  return result;
}

void sub_10004C6B8(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004C73C(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10004BBFC();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004C7C4(void *a1, _OWORD *a2)
{
  sub_10004BC40(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_10004BBFC();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004C868(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void sub_10004C8EC(void *a1, _OWORD *a2)
{
  sub_10004BC20(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v3 = *__error();
  sub_10004BC80();
  sub_10004BBD4();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

uint64_t sub_10004C9A8(int a1)
{
  v1 = &dword_10007E98C;
  v2 = 8;
  while (*(v1 - 1) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 104;
    }
  }

  return *v1;
}

const char *sub_10004C9DC(int a1)
{
  v2 = &off_10007E990;
  v3 = 8;
  result = "unknown";
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

_DWORD *sub_10004CA18(int a1)
{
  result = calloc(1uLL, 0x10uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void sub_10004CA4C(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_10004D460(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t sub_10004CAA0(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_10004CC68(a2, a3, a4, a5, a6, 3);

  return sub_10004CAF4(a1, v7);
}

uint64_t sub_10004CAF4(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 20);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 24), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        sub_10004D460(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 24);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(*(v2 + 8), v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *sub_10004CC68(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  if (!a3 && a4 && a6)
  {
    return 0;
  }

  v12 = calloc(1uLL, 0x38uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v28 = 0;
        do
        {
          *(&v28 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(&v28 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v28;
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v28 = 0;
        v25 = a4;
        do
        {
          *(&v28 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v28 + --v24);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        return v13;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      return v13;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc(a4);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
        return 0;
      }
    }

    memcpy(v14, a3, a4);
  }

  return v13;
}

uint64_t sub_10004CF08(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_10004CC68(a2, a3, a4, a5, a6, 1);

  return sub_10004CAF4(a1, v7);
}

uint64_t sub_10004CF5C(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v10 = bswap32(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 4;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_10004CC68(a2, a3, &v11 - v7 + 5, v7, 0, 3);
  return sub_10004CAF4(a1, v8);
}

uint64_t sub_10004D028(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v5 = 0;
  v10 = bswap64(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 8)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 8;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_10004CC68(a2, a3, &v11 - v7 + 9, v7, 0, 3);
  return sub_10004CAF4(a1, v8);
}

uint64_t sub_10004D0F4(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t sub_10004D1BC(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = sub_10004D0F4(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = sub_10004CC68(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = sub_10004CAF4(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t sub_10004D290(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return sub_10004D1BC(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = sub_10004CC68(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc(0x38uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                sub_10004D460(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            sub_10004D460(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return sub_10004CAF4(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

void sub_10004D460(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          sub_10004D460(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t sub_10004D4E4(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 32);
    if (*v5 || *(v5 + 8))
    {
      return 101;
    }
  }

  else
  {
    v7 = calloc(1uLL, 0x28uLL);
    *a1 = v7;
    if (!v7)
    {
      return 102;
    }

    *(*a1 + 8) = calloc(1uLL, 0x400uLL);
    v8 = *a1;
    v9 = *(*a1 + 8);
    if (!v9)
    {
      return 102;
    }

    *(v8 + 16) = 1024;
    *(v8 + 24) = v9;
    v4 = *a1;
  }

  *v4 = a2;
  *(*a1 + 32) = calloc(1uLL, 0x18uLL);
  if (*(*a1 + 32))
  {
    **(*a1 + 32) = calloc(1uLL, 0x400uLL);
    v10 = *(*a1 + 32);
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 2) = 1024;
      v10[2] = v11;
      return 100;
    }
  }

  return 102;
}

uint64_t sub_10004D5EC(uint64_t a1, unsigned int a2)
{
  LODWORD(__n) = 0;
  __src = 0;
  if (!a1 || *a1 != a2)
  {
    return 101;
  }

  if (*(a1 + 8) && *(a1 + 16) && (v3 = *(a1 + 32), *v3) && *(v3 + 8))
  {
    v4 = sub_10004D764(0, a2, *v3, *(v3 + 16) - *v3, &__src, &__n);
    if (v4 == 100)
    {
      v5 = __n;
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v8 = &v7[-*(a1 + 8)];
      if (v6 - v8 > __n)
      {
LABEL_14:
        memcpy(v7, __src, v5);
        *a1 = 0;
        v11 = *(a1 + 32);
        *(a1 + 24) += __n;
        if (*v11)
        {
          free(*v11);
          v11 = *(a1 + 32);
          *v11 = 0;
        }

        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        v4 = 100;
        goto LABEL_19;
      }

      if (__n <= 0x400)
      {
        v9 = 1024;
      }

      else
      {
        v9 = __n;
      }

      v10 = sub_10004D970(*(a1 + 8), v6, v6 + v9);
      if (v10)
      {
        *(a1 + 8) = v10;
        v7 = &v8[v10];
        *(a1 + 24) = v7;
        *(a1 + 16) += v9;
        v5 = __n;
        goto LABEL_14;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 101;
  }

LABEL_19:
  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t sub_10004D764(int a1, unsigned int a2, const void *a3, unsigned int a4, void *a5, unsigned int *a6)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v6 = 101;
  if (!a5 || !a6)
  {
    goto LABEL_22;
  }

  v12 = bswap32(a2);
  if (a1 == 2)
  {
    v24 = v12;
    v13 = sub_10004CA18(0);
    v14 = v13;
    if (!v13)
    {
      v6 = 102;
      goto LABEL_22;
    }

    v15 = sub_10004CAA0(v13, 0, 0x16u, &v24, 4u, 0);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = sub_10004CAA0(v14, 0, 0x10u, a3, a4, 1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = sub_10004D0F4(v14, &v21, &v23);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = v12;
    v16 = sub_10004CA18(1);
    if (!v16)
    {
      sub_10004CA4C(0);
      v6 = 102;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = sub_10004CAA0(v16, 0, 0x16u, &v24, 4u, 0);
    if (v18 || (v18 = sub_10004CAA0(v17, 0, 0x11u, a3, a4, 1), v18) || (v18 = sub_10004D0F4(v17, &v21, &v23), v18))
    {
      v6 = v18;
      sub_10004CA4C(v17);
      if (v6 != 100)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_10004CA4C(v17);
    }

    v14 = 0;
  }

  v15 = sub_10004E718(v21, v23, &v20, &v22);
  if (v15 == 100)
  {
    v15 = sub_10004E7D0(a2, v20, v22, a5, a6);
  }

LABEL_17:
  v6 = v15;
  if (v14)
  {
    sub_10004CA4C(v14);
  }

LABEL_22:
  if (v21)
  {
    free(v21);
    v21 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  return v6;
}

void *sub_10004D970(void *a1, size_t a2, size_t __size)
{
  v6 = calloc(1uLL, __size);
  v7 = v6;
  if (a1 && v6)
  {
    if (a2 >= __size)
    {
      v8 = __size;
    }

    else
    {
      v8 = a2;
    }

    memcpy(v6, a1, v8);
    free(a1);
  }

  return v7;
}

uint64_t sub_10004D9D8(_DWORD *a1, int a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = 0;
  v15 = bswap32(a3);
  v16 = 0;
  v14 = 0;
  v6 = 102;
  if (a1 && a4 && a5)
  {
    if (*a1 == a2)
    {
      v11 = sub_10004CA18(0);
      v5 = v11;
      if (v11)
      {
        v12 = sub_10004CAA0(v11, 0, 0x16u, &v15, 4u, 0);
        if (!v12)
        {
          v12 = sub_10004CAA0(v5, 0, 4u, a4, a5, 0);
          if (!v12)
          {
            v12 = sub_10004D0F4(v5, &v14, &v16);
            if (!v12)
            {
              v12 = sub_10004DB1C(a1, a3, v14, v16);
            }
          }
        }

        v6 = v12;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v5 = 0;
      v6 = 101;
    }
  }

  sub_10004CA4C(v5);
  if (v14)
  {
    free(v14);
  }

  return v6;
}

uint64_t sub_10004DB1C(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v19 = 0;
  __n = 0;
  __src = 0;
  v4 = 101;
  if (a1 && a3)
  {
    v7 = sub_10004E718(a3, a4, &v19, &__n + 1);
    if (v7 == 100 && (v7 = sub_10004E7D0(a2, v19, HIDWORD(__n), &__src, &__n), v7 == 100))
    {
      v8 = __n;
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;
      v13 = v11 - v12;
      if (v10 - (v11 - v12) > __n)
      {
LABEL_11:
        memcpy(v11, __src, v8);
        *(*(a1 + 32) + 16) += __n;
        v4 = 100;
        goto LABEL_13;
      }

      if (__n <= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = __n;
      }

      v15 = sub_10004D970(v12, v10, v10 + v14);
      if (v15)
      {
        v16 = *(a1 + 32);
        *v16 = v15;
        v11 = &v15[v13];
        *(v16 + 16) = v11;
        *(v16 + 8) += v14;
        v8 = __n;
        goto LABEL_11;
      }

      v4 = 2;
    }

    else
    {
      v4 = v7;
    }
  }

LABEL_13:
  if (v19)
  {
    free(v19);
    v19 = 0;
  }

  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t sub_10004DC84(_DWORD *a1, int a2, unsigned int a3, int a4)
{
  v13[4] = 0;
  *v13 = (a4 << 31 >> 31);
  v12 = bswap32(a3);
  v11 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v6 = sub_10004CA18(0);
      v7 = v6;
      if (v6)
      {
        v8 = sub_10004CAA0(v6, 0, 0x16u, &v12, 4u, 0);
        if (!v8)
        {
          v8 = sub_10004CAA0(v7, 0, 1u, v13, 1u, 0);
          if (!v8)
          {
            v8 = sub_10004D0F4(v7, &v11, &v13[1]);
            if (!v8)
            {
              v8 = sub_10004DB1C(a1, a3, v11, *&v13[1]);
            }
          }
        }

        v9 = v8;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v7 = 0;
      v9 = 101;
    }
  }

  else
  {
    v7 = 0;
    v9 = 102;
  }

  sub_10004CA4C(v7);
  if (v11)
  {
    free(v11);
  }

  return v9;
}

uint64_t sub_10004DDC0(_DWORD *a1, int a2, unsigned int a3, unsigned int a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = sub_10004CA18(0);
      v8 = v7;
      if (v7)
      {
        v9 = sub_10004CAA0(v7, 0, 0x16u, &v13, 4u, 0);
        if (!v9)
        {
          v9 = sub_10004CF5C(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = sub_10004D0F4(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_10004DB1C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  sub_10004CA4C(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

uint64_t sub_10004DEF4(_DWORD *a1, int a2, unsigned int a3, unint64_t a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = sub_10004CA18(0);
      v8 = v7;
      if (v7)
      {
        v9 = sub_10004CAA0(v7, 0, 0x16u, &v13, 4u, 0);
        if (!v9)
        {
          v9 = sub_10004D028(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = sub_10004D0F4(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_10004DB1C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  sub_10004CA4C(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

void sub_10004E028(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    a1[1] = 0;
    v3 = a1[4];
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
        v3 = a1[4];
        *v3 = 0;
      }

      free(v3);
    }

    free(a1);
  }
}

uint64_t sub_10004E098(uint64_t a1, void *a2, unsigned int *a3)
{
  result = 102;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 24) - *(a1 + 8);
    v8 = calloc(1uLL, v7);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, *(a1 + 8), v7);
      *a2 = v9;
      *a3 = v7;
      return 100;
    }

    else
    {
      return 102;
    }
  }

  return result;
}

uint64_t sub_10004E124(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = sub_10004CA18(0);
    if (v8)
    {
      v12 = sub_10004CA18(0);
      if (v12)
      {
        v18 = sub_10004CAA0(v8, 0, 0x16u, "IM4P", 4u, 0);
        if (v18 || (v18 = sub_10004CAA0(v8, 0, 0x16u, a1, 4u, 0), v18) || (v19 = strlen(a2), v18 = sub_10004CAA0(v8, 0, 0x16u, a2, v19, 0), v18) || (v18 = sub_10004CF08(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = sub_10004CF08(v8, 0, 4u, a5, a6, 0), v18) || (v18 = sub_10004D290(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          v21 = sub_10004D0F4(v12, a7, a8);
          if (v21)
          {
            v9 = v21;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  sub_10004CA4C(v8);
  sub_10004CA4C(v12);
  return v9;
}

uint64_t sub_10004E2F0(uint64_t a1, uint64_t (*a2)(void **, char *, uint64_t), uint64_t (*a3)(void **, size_t *, uint64_t), uint64_t (*a4)(uint64_t, void *, void, void **, uint64_t *, uint64_t), const void *a5, unsigned int a6, void *a7, unsigned int *a8, uint64_t a9, uint64_t a10)
{
  v10 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 1295273289;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v11 = 101;
  if (!a2 || !a3 || !a7)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  if (!a8)
  {
    goto LABEL_13;
  }

  v20 = sub_10004CA18(0);
  v10 = v20;
  if (!v20)
  {
    v15 = 0;
LABEL_12:
    v11 = 2;
    goto LABEL_13;
  }

  v21 = sub_10004CAA0(v20, 0, 0x16u, &v35, 4u, 0);
  if (v21)
  {
    goto LABEL_8;
  }

  v21 = sub_10004CF5C(v10, 0, 2u, a1);
  if (v21)
  {
    goto LABEL_8;
  }

  __n = 0;
  v39 = 0;
  __src = 0;
  v23 = a2(&__src, &__n + 4, a9);
  if (v23 == 100 && (v23 = a3(&v39, &__n, a9), v23 == 100))
  {
    v24 = HIDWORD(__n) + __n;
    if (__CFADD__(HIDWORD(__n), __n))
    {
      v26 = 0;
      v11 = 106;
    }

    else
    {
      v25 = calloc(1uLL, (HIDWORD(__n) + __n));
      v26 = v25;
      if (v25)
      {
        memcpy(v25, __src, HIDWORD(__n));
        memcpy(&v26[HIDWORD(__n)], v39, __n);
        v11 = sub_10004D764(a1, 0x4D414E42u, v26, v24, &v34, &v38 + 1);
      }

      else
      {
        v11 = 102;
      }
    }
  }

  else
  {
    v11 = v23;
    v26 = 0;
  }

  if (__src)
  {
    free(__src);
    __src = 0;
  }

  if (v39)
  {
    free(v39);
    v39 = 0;
  }

  if (v26)
  {
    free(v26);
  }

  if (v11 != 100)
  {
    goto LABEL_9;
  }

  v21 = sub_10004CAA0(v10, 0, 0x11u, v34, HIDWORD(v38), 1);
  if (v21 || (v21 = sub_10004E678(v34, HIDWORD(v38), &v32, &v37), v21 != 100) || (v21 = a4(a1, v32, v37, &v31, &v36, a10), v21 != 100) || (v21 = sub_10004CAA0(v10, 0, 4u, v31, v36, 0), v21) || (v21 = sub_10004CAA0(v10, 0, 0x10u, a5, a6, 1), v21) || (v21 = sub_10004D0F4(v10, &v33, &v38), v21))
  {
LABEL_8:
    v11 = v21;
LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v27 = sub_10004CA18(0);
  v15 = v27;
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = sub_10004CAA0(v27, 0, 0x10u, v33, v38, 1);
  if (v28)
  {
    v11 = v28;
  }

  else
  {
    v29 = sub_10004D0F4(v15, a7, a8);
    if (v29)
    {
      v11 = v29;
    }

    else
    {
      v11 = 100;
    }
  }

LABEL_13:
  sub_10004CA4C(v10);
  sub_10004CA4C(v15);
  if (v34)
  {
    free(v34);
    v34 = 0;
  }

  if (v33)
  {
    free(v33);
    v33 = 0;
  }

  if (v32)
  {
    free(v32);
    v32 = 0;
  }

  if (v31)
  {
    free(v31);
  }

  return v11;
}

uint64_t sub_10004E678(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v8 = sub_10004CA18(0);
  v9 = v8;
  if (v8)
  {
    v10 = sub_10004CAA0(v8, 0, 0x11u, a1, a2, 1);
    if (!v10)
    {
      v11 = sub_10004D0F4(v9, a3, a4);
      if (v11)
      {
        v10 = v11;
      }

      else
      {
        v10 = 100;
      }
    }
  }

  else
  {
    v10 = 2;
  }

  sub_10004CA4C(v9);
  return v10;
}

uint64_t sub_10004E718(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 101;
  if (a1 && a3 && a4)
  {
    v10 = sub_10004CA18(0);
    v4 = v10;
    if (v10)
    {
      v11 = sub_10004CAA0(v10, 0, 0x10u, a1, a2, 1);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        v12 = sub_10004D0F4(v4, a3, a4);
        if (v12)
        {
          v5 = v12;
        }

        else
        {
          v5 = 100;
        }
      }
    }

    else
    {
      v5 = 102;
    }
  }

  sub_10004CA4C(v4);
  return v5;
}

uint64_t sub_10004E7D0(unsigned int a1, const void *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v5 = 0;
  v6 = 101;
  if (a2 && a4 && a5)
  {
    v12 = sub_10004CA18(0);
    v5 = v12;
    if (v12)
    {
      v13 = sub_10004CAA0(v12, 3u, a1, a2, a3, 1);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        v14 = sub_10004D0F4(v5, a4, a5);
        if (v14)
        {
          v6 = v14;
        }

        else
        {
          v6 = 100;
        }
      }
    }

    else
    {
      v6 = 102;
    }
  }

  sub_10004CA4C(v5);
  return v6;
}