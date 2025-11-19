uint64_t sub_10001D174(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 0;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a8;
  *(result + 48) = 0;
  *(result + 49) = 4;
  *(result + 50) = a9;
  return result;
}

uint64_t sub_10001D244(uint64_t a1)
{
  v73 = a1;
  v72 = -1;
  v71 = -1;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  i = 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    v68 = *(v73 + 136);
    v70 = 32;
  }

  else
  {
    v68 = *(v73 + 136);
    v70 = 28;
  }

  v69 = sub_10004C5C0(*(v73 + 112), "rb", 0);
  v71 = fseek(v69, v70, 0);
  v65 = v71;
  if (v71 == -1)
  {
    v64 = 0;
    memset(&v86[8], 0, 0x50uLL);
    v62 = 0;
    v61 = 3;
    v60 = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v61 &= ~1u;
    }

    if (v61)
    {
      v1 = __error();
      sub_1000013C8(v86, *v1);
      v62 = _os_log_send_and_compose_impl();
    }

    __ptr[1] = v62;
    v63 = v62;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10001D450);
  }

  for (i = 0; ; ++i)
  {
    if (i >= v68)
    {
      goto LABEL_78;
    }

    __ptr[0] = 0;
    v57 = ftell(v69);
    v56 = v57;
    if (v57 == -1)
    {
      v55 = 0;
      memset(&v85[16], 0, 0x50uLL);
      v53 = 0;
      v52 = 3;
      v51 = &_os_log_default;
      v50 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v52 &= ~1u;
      }

      if (v52)
      {
        v2 = __error();
        sub_1000013C8(v85, *v2);
        v53 = _os_log_send_and_compose_impl();
      }

      v49 = v53;
      v54 = v53;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001D5CCLL);
    }

    v67 = fread(__ptr, 8uLL, 1uLL, v69);
    v72 = fcheck_np();
    if (v72)
    {
      v48 = *v73;
      if (!v48)
      {
        v48 = "[anonymous]";
      }

      v47 = *__error();
      v46 = *(v73 + 16);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v84, v48, v72);
        _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s: fread[load command]: %{darwin.errno}d", v84, 0x12u);
      }

      *__error() = v47;
      goto LABEL_89;
    }

    LODWORD(__ptr[0]) = sub_10001E37C(v73, __ptr[0]);
    HIDWORD(__ptr[0]) = sub_10001E37C(v73, HIDWORD(__ptr[0]));
    v71 = fseek(v69, v57, 0);
    v44 = v71;
    if (v71 == -1)
    {
      v43 = 0;
      memset(&v83[16], 0, 0x50uLL);
      v41 = 0;
      v40 = 3;
      v39 = &_os_log_default;
      v38 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v40 &= ~1u;
      }

      if (v40)
      {
        v3 = __error();
        sub_1000013C8(v83, *v3);
        v41 = _os_log_send_and_compose_impl();
      }

      v37 = v41;
      v42 = v41;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001D880);
    }

    if (LODWORD(__ptr[0]) == 29)
    {
      break;
    }

    v19 = HIDWORD(__ptr[0]);
    if (HIDWORD(__ptr[0]) > 0x7FFFFFFF)
    {
      v72 = 84;
      v18 = *v73;
      if (!*v73)
      {
        v18 = "[anonymous]";
      }

      v17 = *__error();
      oslog = *(v73 + 16);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v77, v18, SHIDWORD(__ptr[0]));
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%{public}s: bad offset: %u", v77, 0x12u);
      }

      *__error() = v17;
      goto LABEL_89;
    }

    v15 = *v73;
    if (!*v73)
    {
      v15 = "[anonymous]";
    }

    v14 = *__error();
    v13 = *(v73 + 16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100009614(v76, v15, __ptr[0]);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: not code signature: %#x", v76, 0x12u);
    }

    *__error() = v14;
    v71 = fseek(v69, v19, 1);
    if (v71)
    {
      v72 = *__error();
      v12 = *v73;
      if (!*v73)
      {
        v12 = "[anonymous]";
      }

      v11 = *__error();
      v10 = *(v73 + 16);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100009614(v75, v12, v72);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: fseek: %{darwin.errno}d", v75, 0x12u);
      }

      *__error() = v11;
      goto LABEL_89;
    }
  }

  v35 = 0;
  v36 = 0;
  v34 = *v73;
  if (!*v73)
  {
    v34 = "[anonymous]";
  }

  v33 = *__error();
  v32 = *(v73 + 16);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100009E38(v82, v34, __ptr[0], SHIDWORD(__ptr[0]));
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}s: found\n    ldcmd->cmd = %#x\n    ldcmd->cmdsize = %u", v82, 0x18u);
  }

  *__error() = v33;
  v67 = fread(&v35, 0x10uLL, 1uLL, v69);
  v72 = sub_10004887C("linkedit", v69, v67, 88, *(v73 + 16));
  if (!v72)
  {
    LODWORD(v35) = sub_10001E37C(v73, v35);
    HIDWORD(v35) = sub_10001E37C(v73, HIDWORD(v35));
    LODWORD(v36) = sub_10001E37C(v73, v36);
    HIDWORD(v36) = sub_10001E37C(v73, HIDWORD(v36));
    v31 = *v73;
    if (!*v73)
    {
      v31 = "[anonymous]";
    }

    v30 = *__error();
    v29 = *(v73 + 16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E3D4(v81, v31, v35, SHIDWORD(v35), v36, SHIDWORD(v36));
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}s: parsing\n    cmd->cmd = %#x\n    cmd->cmdsize = %u\n    cmd->dataoff = %u\n    cmd->datasize = %u", v81, 0x24u);
    }

    *__error() = v30;
    do
    {
      v72 = sub_10001E468(v73, v69, &v35);
      if (v72)
      {
        if (v72 == 89)
        {
          v25 = *v73;
          if (!*v73)
          {
            v25 = "[anonymous]";
          }

          v24 = *__error();
          v23 = *(v73 + 16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_1000095D4(v79, v25);
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s: no more cs blobs", v79, 0xCu);
          }

          *__error() = v24;
        }

        else
        {
          v22 = *v73;
          if (!*v73)
          {
            v22 = "[anonymous]";
          }

          v21 = *__error();
          v20 = *(v73 + 16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10001E5A4(v78, v22, __ptr[0], i, v72);
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s: failed to extract cdhash: cmd = %#x, index = %lu: %{darwin.errno}d", v78, 0x22u);
          }

          *__error() = v21;
        }
      }

      else
      {
        v28 = *v73;
        if (!*v73)
        {
          v28 = "[anonymous]";
        }

        v27 = *__error();
        v26 = *(v73 + 16);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10001E538(v80, v28, __ptr[0], i);
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}s: extracted cdhash: cmd = %#x, idx = %lu", v80, 0x1Cu);
        }

        *__error() = v27;
      }
    }

    while (!v72);
LABEL_78:
    if ((*(v73 + 32) & 4) != 0)
    {
      v9 = sub_1000216E4(*(v73 + 16));
      v72 = sub_100022F74(v9, v69, *(v73 + 48));
      if (v72)
      {
        v8 = *v73;
        if (!*v73)
        {
          v8 = "[anonymous]";
        }

        v7 = *__error();
        v6 = *(v73 + 16);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100009614(v74, v8, v72);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: failed to compute file hash: %{darwin.errno}d", v74, 0x12u);
        }

        *__error() = v7;
        goto LABEL_89;
      }

      v9[1] = *(v73 + 40);
      *(v73 + 40) = v9;
      *v9 |= 1uLL;
      v72 = 0;
    }

    if (*(v73 + 40))
    {
      v72 = 0;
    }

    else
    {
      v72 = 90;
    }
  }

LABEL_89:
  v5 = v72;
  sub_100010FB4(&v69);
  return v5;
}

uint64_t sub_10001E37C(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    return sub_10000E154(a2);
  }

  return v3;
}

uint64_t sub_10001E3D4(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  return result;
}

uint64_t sub_10001E468(uint64_t a1, FILE *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  v5 = sub_1000216E4(*(a1 + 16));
  v4 = v5;
  v6 = sub_100021918(v5, *(v9 + 40), v8, v7);
  if (!v6)
  {
    v5[1] = *(v9 + 40);
    *(v9 + 40) = v5;
    *v5 |= 1uLL;
    v4 = 0;
  }

  sub_100023DE0(&v4);
  return v6;
}

uint64_t sub_10001E538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_10001E5A4(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

char *sub_10001E620(uint64_t a1)
{
  v10[1] = a1;
  v10[0] = 0;
  v9 = *(a1 + 124);
  if ((v9 & 0xFFFFFFu) < 0x12uLL)
  {
    v8 = (&unk_10007A6F0 + 24 * (v9 & 0xFFFFFF));
    v7 = "";
    if ((v9 & 0x1000000) != 0)
    {
      v3 = asprintf(v10, "%s%s%s", v8[1], v8[2], "64");
    }

    else
    {
      if ((v9 & 0x2000000) != 0)
      {
        v7 = "64_32";
      }

      v3 = asprintf(v10, "%s%s%s", v8[1], v8[2], v7);
    }

    v18 = v3;
    if (v3 < 0)
    {
      v17 = 0;
      memset(&v28[16], 0, 0x50uLL);
      v15 = 0;
      v14 = 3;
      v13 = &_os_log_default;
      v12 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 &= ~1u;
      }

      if (v14)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_100003120(v28, v5);
        v11 = _os_log_send_and_compose_impl();
        v15 = v11;
      }

      v10[2] = v15;
      v16 = v15;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001E988);
    }
  }

  else
  {
    v27 = asprintf(v10, "%#x", v9);
    if (v27 < 0)
    {
      v26 = 0;
      memset(&v29[24], 0, 0x50uLL);
      v24 = 0;
      v23 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 &= ~1u;
      }

      if (v23)
      {
        v1 = __error();
        v2 = strerror(*v1);
        sub_100003120(v29, v2);
        v20 = _os_log_send_and_compose_impl();
        v24 = v20;
      }

      v19 = v24;
      v25 = v24;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001E7C8);
    }
  }

  return v10[0];
}

void sub_10001E9CC(void ***a1)
{
  v6 = a1;
  v5 = 0;
  i = 0;
  v3 = 0;
  v5 = *a1;
  if (v5)
  {
    sub_10004C66C(v5[14]);
    for (i = v5[5]; ; i = v3)
    {
      v1 = 0;
      if (i)
      {
        v3 = i[1];
        v1 = 1;
      }

      if ((v1 & 1) == 0)
      {
        break;
      }

      if (v5[5] == i)
      {
        v5[5] = v5[5][1];
      }

      else
      {
          ;
        }

        j[1] = *(j[1] + 8);
      }

      sub_100023DE0(&i);
    }

    sub_100049728(v5);
    free(v5);
    *v6 = 0;
  }
}

uint64_t sub_10001EB34(uint64_t a1, int a2, char *const *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = -1;
  v19 = a3;
  v18 = -1;
  v17 = 0;
  memset(__b, 0, sizeof(__b));
  sub_1000480E0();
  while (1)
  {
    v18 = getopt_long(v22, v19, *(v23 + 32), *(v23 + 40), &v17);
    if (v18 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v24[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v24, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10001ED18);
    }

    switch(v18)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v23 + 40) + 32 * v17));
      case '?':
        errx(64, "unknown option: %s", v21[optind - 1]);
      case 'P':
        __b[0] |= 8uLL;
        sub_10004860C(0, 1uLL, "will persist cryptex", v3, v4, v5, v6, v7, v15);
        break;
      case 'R':
        __b[0] |= 0x20uLL;
        sub_10004860C(0, 1uLL, "will install cryptex as readWrite", v3, v4, v5, v6, v7, v15);
        break;
      case 'V':
        __b[3] = optarg;
        break;
      case 'l':
        __b[0] |= 4uLL;
        sub_10004860C(0, 1uLL, "will lock system codex down", v3, v4, v5, v6, v7, v15);
        break;
      case 'p':
        __b[0] |= 1uLL;
        if (optarg)
        {
          if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
          {
            errx(64, "invalid output format: %s", optarg);
          }

          __b[5] = optarg;
          sub_1000483C8(1uLL, "print format: %s", v8, v9, v10, v11, v12, v13, optarg);
        }

        break;
      case 'r':
        __b[0] |= 0x10uLL;
        sub_10004860C(0, 1uLL, "will limit load cryptex jobs to REM", v3, v4, v5, v6, v7, v15);
        break;
      case 't':
        __b[4] = optarg;
        sub_10004860C(0, 1uLL, "will use ticket %s in place of personalization ticket", v3, v4, v5, v6, v7, optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10001EF94);
    }
  }

  v21 += optind;
  v22 -= optind;
  if (v22 < 1)
  {
    errx(64, "a cryptex bundle directory must be provided");
  }

  __b[1] = *v21;
  v20 = sub_10001F040(__b);
  return sysexit_np();
}

uint64_t sub_10001F040(uint64_t a1)
{
  v72 = a1;
  v71 = 0;
  v70 = -1;
  v69 = sub_100048090();
  v68 = 0;
  v67 = 0;
  v66 = 0;
  memset(__b, 0, sizeof(__b));
  v76 = 0;
  v75 = 0;
  v74 = 0;
  LODWORD(__b[0]) = 1;
  memset(&__b[1], 0, 36);
  v64 = **(v69 + 5);
  v63 = -1;
  memset(__dst, 0, sizeof(__dst));
  __dst[0] = 6;
  v62 = 0;
  if (*(v69 + 4))
  {
    memcpy(__dst, (*(v69 + 4) + 24), sizeof(__dst));
    v62 = __dst;
  }

  if (!v62)
  {
    v61 = &_img4_chip_cryptex1_generic;
    v70 = img4_chip_instantiate();
    if (v70)
    {
      warnc(v70, "failed to instantiate host ap");
LABEL_92:
      v73 = v70;
      v52 = 1;
      goto LABEL_93;
    }

    v62 = __dst;
  }

  v63 = open(*(v72 + 8), 0x100000);
  v78 = v63;
  if (v63 < 0)
  {
    v70 = *__error();
    warn("open: %s", *(v72 + 8));
    goto LABEL_92;
  }

  v68 = cryptex_bundle_create_with_directory();
  v70 = cryptex_identity_set_chip();
  if (v70)
  {
    warnc(v70, "failed to set host identity to chip");
    goto LABEL_92;
  }

  v38 = *(v72 + 24);
  memcpy(v60, __b, sizeof(v60));
  if ((cryptex_bundle_copy_cryptex2() & 1) == 0)
  {
    v59 = sub_100048090();
    v37 = 1;
    if (v59[1] <= 1uLL)
    {
      v37 = v59[2] > 1uLL;
    }

    if (v37)
    {
      v1 = 999;
    }

    else
    {
      v1 = 3;
    }

    v58 = v1;
    v36 = 1;
    if (v59[1] <= 1uLL)
    {
      v36 = v59[2] > 1uLL;
    }

    v2 = 2000;
    if (!v36)
    {
      v2 = 200;
    }

    v57 = v2;
    if (v71)
    {
      v35 = sub_100017530(v71, v58, v57);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v55 = strdup("unknown error");
      v3 = strlen("unknown error");
      v114 = "known-constant allocation";
      v113 = v55;
      v112 = v3;
      if (!v55)
      {
        v111 = 0;
        memset(&v118[40], 0, 0x50uLL);
        v109 = 0;
        v108 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v108 &= ~1u;
        }

        if (v108)
        {
          v33 = v114;
          v34 = v112;
          v4 = __error();
          v5 = strerror(*v4);
          sub_1000031B0(v118, v33, v34, v5);
          v105 = _os_log_send_and_compose_impl();
          v109 = v105;
        }

        v104 = v109;
        v110 = v109;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10001F4F0);
      }

      v53 = v55;
      v35 = v55;
    }

    v56 = v35;
    warnx("failed to copy cryptex from bundle\n%s", v35);
    sub_100002DE4(&v56);
    v70 = sub_100018A78(v71);
    goto LABEL_92;
  }

  v66 = cryptex_attr_create();
  *v72;
  cryptex_attr_set_persistence();
  cryptex_attr_set_nonce_persistence();
  cryptex_attr_set_authentication();
  if ((*v72 & 0x10) != 0)
  {
    cryptex_attr_set_limit_load_to_rem();
  }

  if ((*v72 & 0x20) != 0)
  {
    warn("Installing cryptexes as READWRITE is only supported on macOS.");
    v73 = 45;
    v52 = 1;
  }

  else
  {
    if (*(v72 + 32))
    {
      v51 = open(*(v72 + 32), 0);
      v77 = v51;
      if (v51 < 0)
      {
        v70 = *__error();
        warn("open: %s", *(v72 + 32));
        v52 = 2;
      }

      else
      {
        v70 = cryptex_attach_personalized_manifest();
        if (v70)
        {
          warnc(v70, "failed to attach personalized manifest");
          v52 = 2;
        }

        else
        {
          v52 = 0;
        }
      }

      sub_1000038DC(&v51);
      if (v52)
      {
        if (v52 != 2)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    if (*(v69 + 4))
    {
      v71 = sub_10004042C(*(v69 + 4), v67, v66);
      if (v71)
      {
        v50 = sub_100048090();
        v32 = 1;
        if (v50[1] <= 1uLL)
        {
          v32 = v50[2] > 1uLL;
        }

        if (v32)
        {
          v6 = 999;
        }

        else
        {
          v6 = 3;
        }

        v49 = v6;
        v31 = 1;
        if (v50[1] <= 1uLL)
        {
          v31 = v50[2] > 1uLL;
        }

        v7 = 2000;
        if (!v31)
        {
          v7 = 200;
        }

        v48 = v7;
        if (v71)
        {
          v30 = sub_100017530(v71, v49, v48);
        }

        else
        {
          v45 = "unknown error";
          v80 = "unknown error";
          v46 = strdup("unknown error");
          v8 = strlen("unknown error");
          v103 = "known-constant allocation";
          v102 = v46;
          v101 = v8;
          if (!v46)
          {
            v100 = 0;
            memset(&v117[32], 0, 0x50uLL);
            v98 = 0;
            v97 = 3;
            v96 = &_os_log_default;
            v95 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v97 &= ~1u;
            }

            if (v97)
            {
              v28 = v103;
              v29 = v101;
              v9 = __error();
              v10 = strerror(*v9);
              sub_1000031B0(v117, v28, v29, v10);
              v94 = _os_log_send_and_compose_impl();
              v98 = v94;
            }

            v93 = v98;
            v99 = v98;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10001F944);
          }

          v44 = v46;
          v30 = v46;
        }

        v47 = v30;
        warnx("Install failed.\n%s", v30);
        sub_100002DE4(&v47);
      }

      v73 = sub_100018A78(v71);
      v52 = 1;
    }

    else
    {
      if (cryptex_install2())
      {
        if ((*v72 & 4) != 0 && (sub_10004860C(0, 1uLL, "locking down codex", v11, v12, v13, v14, v15, v22), (v70 = cryptex_lockdown()) != 0))
        {
          warnc(v70, "failed to lock down system codex");
        }

        else if (*v72)
        {
          v70 = sub_10001FD7C(v67[6], *(v72 + 40));
          if (v70)
          {
            warnc(v70, "failed to print cryptex information");
          }
        }

        goto LABEL_92;
      }

      v43 = sub_100048090();
      v27 = 1;
      if (v43[1] <= 1uLL)
      {
        v27 = v43[2] > 1uLL;
      }

      if (v27)
      {
        v16 = 999;
      }

      else
      {
        v16 = 3;
      }

      v42 = v16;
      v26 = 1;
      if (v43[1] <= 1uLL)
      {
        v26 = v43[2] > 1uLL;
      }

      v17 = 2000;
      if (!v26)
      {
        v17 = 200;
      }

      v41 = v17;
      if (v71)
      {
        v25 = sub_100017530(v71, v42, v41);
      }

      else
      {
        v79 = "unknown error";
        v39 = strdup("unknown error");
        v18 = strlen("unknown error");
        v92 = "known-constant allocation";
        v91 = v39;
        v90 = v18;
        if (!v39)
        {
          v89 = 0;
          memset(&v116[32], 0, 0x50uLL);
          v87 = 0;
          v86 = 3;
          v85 = &_os_log_default;
          v84 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v86 &= ~1u;
          }

          if (v86)
          {
            v23 = v92;
            v24 = v90;
            v19 = __error();
            v20 = strerror(*v19);
            sub_1000031B0(v116, v23, v24, v20);
            v83 = _os_log_send_and_compose_impl();
            v87 = v83;
          }

          v82 = v87;
          v88 = v87;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10001FC04);
        }

        v25 = v39;
      }

      v40 = v25;
      warnx("failed to install cryptex\n%s", v25);
      sub_100002DE4(&v40);
      v73 = sub_100018A78(v71);
      v52 = 1;
    }
  }

LABEL_93:
  sub_1000038DC(&v63);
  sub_1000030D0(&v66);
  sub_1000030D0(&v67);
  sub_1000030D0(&v68);
  sub_100006B40(&v71);
  return v73;
}

uint64_t sub_10001FD7C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v12 = cryptex_core_parse_info_asset();
  if (v12)
  {
    warnc(v12, "failed to parse cryptex info asset for printing");
  }

  else
  {
    warnx("failed to get cryptex identifier or version from info asset");
    return 22;
  }

  return v12;
}

uint64_t sub_100020044(const void *a1, size_t a2, uint64_t a3, unint64_t a4, _DWORD *a5)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = sub_100048090();
  v19 = 0;
  *v26 = -1;
  v18 = 0;
  v17 = malloc_type_calloc(v22 + 3, 8uLL, 0x10040436913F5uLL);
  v16 = -1;
  v15 = -1;
  v10 = 1;
  if (v20[2] <= 1uLL)
  {
    v10 = v20[1] > 1uLL;
  }

  v14 = v10;
  v13 = -1;
  v12 = -1;
  *v17 = "/bin/zsh";
  v17[1] = "/dev/stdin";
  for (i = 0; i < v22; ++i)
  {
    v17[i + 2] = *(v23 + 8 * i);
  }

  if (pipe(v26))
  {
    v5 = __error();
    warnc(*v5, "pipe");
    v19 = *__error();
  }

  else
  {
    posix_spawn_file_actions_init(&v18);
    posix_spawn_file_actions_addclose(&v18, v26[1]);
    posix_spawn_file_actions_adddup2(&v18, v26[0], 0);
    posix_spawn_file_actions_addclose(&v18, v26[0]);
    if (!v14)
    {
      v13 = open("/dev/null", 2);
      posix_spawn_file_actions_adddup2(&v18, v13, 1);
      posix_spawn_file_actions_addclose(&v18, v13);
    }

    if (posix_spawn(&v16, *v17, &v18, 0, v17, environ))
    {
      v6 = __error();
      warnc(*v6, "posix_spawn script");
      v19 = *__error();
    }

    else
    {
      close_drop_np();
      if (write(v26[1], v25, v24) < 0)
      {
        v7 = __error();
        warnc(*v7, "write script data");
        v19 = *__error();
      }

      else
      {
        close_drop_np();
        while (1)
        {
          while (1)
          {
            v15 = waitpid(v16, &v12, 0);
            if (v15 != -1)
            {
              break;
            }

            if (*__error() != 4)
            {
              v19 = *__error();
              warnc(v19, "waitpid[%d]", v16);
              goto LABEL_29;
            }
          }

          if (v15 == v16)
          {
            break;
          }

          warnx("waitpid: %d != %d", v15, v16);
        }

        if ((v12 & 0x7F) == 0x7F || (v12 & 0x7F) == 0)
        {
          if ((v12 & 0x7F) != 0)
          {
            v19 = 35;
            warnc(35, "script exited with an unknown state");
          }

          else
          {
            v19 = 0;
            if (v21)
            {
              *v21 = BYTE1(v12);
            }
          }
        }

        else
        {
          v19 = 4;
          warnc(4, "script exited with signal: %d", v12 & 0x7F);
        }
      }
    }
  }

LABEL_29:
  posix_spawn_file_actions_destroy(&v18);
  close_drop_optional_np();
  close_drop_optional_np();
  v9 = v19;
  sub_1000038DC(&v13);
  sub_100002DE4(&v17);
  return v9;
}

void *sub_1000204C0(const char *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = -1;
  memset(__b, 0, sizeof(__b));
  object = 0;
  if (v7)
  {
    v5 = open(v7, 0);
    if (v5 == -1)
    {
      v6 = *__error();
      warnc(v6, "failed to open plist");
    }

    else
    {
      v6 = sub_10004B524(v5, __b);
      if (v6)
      {
        warnc(v6, "failed to read plist");
      }

      else if (__b[1] <= 0x100000uLL)
      {
        object = xpc_create_from_plist();
        v9 = object;
        v8 = &_xpc_type_dictionary;
        if (object && (type = xpc_get_type(v9), type == v8))
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          warnx("invalid plist, not a dictionary");
          os_release(object);
          object = 0;
          v6 = 22;
        }
      }

      else
      {
        warnx("plist too large: %lu bytes (max is : %d)", __b[1], 0x100000);
      }
    }
  }

  sub_10004C66C(__b);
  sub_1000038DC(&v5);
  return object;
}

uint64_t sub_100020670(uint64_t a1, int a2, char **a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -1;
  v6 = a3;
  v5 = -1;
  v4 = 0;
  sub_1000480E0();
  v5 = getopt_long(v9, v6, *(v10 + 32), *(v10 + 40), &v4);
  if (v5 != -1)
  {
    if (optind < 1)
    {
      memset(&v11[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v11, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100020848);
    }

    if (v5 != 58)
    {
      if (v5 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000208C4);
      }

      errx(64, "unknown option: %s", v8[optind - 1]);
    }

    errx(64, "missing argument for option: %s", *(*(v10 + 40) + 32 * v4));
  }

  v8 += optind;
  v9 -= optind;
  if (v9 < 1)
  {
    errx(64, "a device action must be provided");
  }

  v7 = sub_100020964();
  return sysexit_np();
}

uint64_t sub_100020994(uint64_t a1, int a2, char *const *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = -1;
  v20 = a3;
  v19 = -1;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  sub_1000480E0();
  while (1)
  {
    v19 = getopt_long(v23, v20, *(v24 + 32), *(v24 + 40), &v18);
    if (v19 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v25[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v25, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100020B70);
    }

    switch(v19)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v24 + 40) + 32 * v18));
      case '?':
        errx(64, "unknown option: %s", v22[optind - 1]);
      case 'f':
        if (strcmp(optarg, "plist") && strcmp(optarg, "json"))
        {
          errx(64, "invalid output format: %s", optarg);
        }

        v16 = optarg;
        sub_1000483C8(1uLL, "output format: %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'o':
        v17 = optarg;
        sub_1000483C8(1uLL, "output file path: %s", v3, v4, v5, v6, v7, v8, optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100020CD0);
    }
  }

  if (v17 && !v16)
  {
    v16 = "plist";
  }

  v22 += optind;
  v23 -= optind;
  v21 = sub_100020D78(&v16);
  return sysexit_np();
}

uint64_t sub_100020D78(const char **a1)
{
  memset(__b, 0, sizeof(__b));
  __b[0] = 6;
  v14 = sub_100048090();
  memset(v17, 0, sizeof(v17));
  LOWORD(v17[0]) = 6;
  v17[1] = &_img4_chip_cryptex1_generic;
  memcpy(__b, v17, sizeof(__b));
  if (v14[4])
  {
    return sub_100020ED8(a1, v14[4] + 24, v1, v2, v3, v4, v5, v6);
  }

  else
  {
    v15 = img4_chip_instantiate();
    if (v15)
    {
      warnc(v15, "failed to instantiate host ap");
    }

    else
    {
      return sub_100020ED8(a1, __b, v7, v8, v9, v10, v11, v12);
    }
  }

  return v15;
}

uint64_t sub_100020ED8(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a1;
  v92 = a2;
  v91 = 0;
  if (*a1)
  {
    if (!strcmp(*v93, "plist"))
    {
      v90 = sub_10002DD94(v92);
      if (v93[1])
      {
        v91 = sub_10002D09C(v90, v93[1]);
      }

      else
      {
        v91 = sub_10002CD94(v90);
      }
    }

    else if (!strcmp(*v93, "json"))
    {
      v89 = sub_10002DD94(v92);
      if (v93[1])
      {
        v91 = sub_10002D234(v89, v93[1]);
      }

      else
      {
        v91 = sub_10002CF18(v89);
      }
    }
  }

  else
  {
    if (*(v92 + 16))
    {
      sub_10004860C(__stdoutp, 0, "CEPO = [not present]", a4, a5, a6, a7, a8, v74);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CEPO = %#x", a4, a5, a6, a7, a8, *(v92 + 24));
    }

    if ((*(v92 + 16) & 2) != 0)
    {
      sub_10004860C(__stdoutp, 0, "BORD = [not present]", v8, v9, v10, v11, v12, v75);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "BORD = %#x", v8, v9, v10, v11, v12, *(v92 + 28));
    }

    if ((*(v92 + 16) & 4) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CHIP = [not present]", v13, v14, v15, v16, v17, v76);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CHIP = %#x", v13, v14, v15, v16, v17, *(v92 + 32));
    }

    if ((*(v92 + 16) & 8) != 0)
    {
      sub_10004860C(__stdoutp, 0, "SDOM = [not present]", v18, v19, v20, v21, v22, v77);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "SDOM = %#x", v18, v19, v20, v21, v22, *(v92 + 36));
    }

    if ((*(v92 + 16) & 0x8000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "FCHP = [not present]", v23, v24, v25, v26, v27, v78);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "FCHP = %#x", v23, v24, v25, v26, v27, *(v92 + 128));
    }

    if ((*(v92 + 16) & 0x10000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "TYPE = [not present]", v28, v29, v30, v31, v32, v79);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "TYPE = %#x", v28, v29, v30, v31, v32, *(v92 + 132));
    }

    if ((*(v92 + 16) & 0x20000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "STYP = [not present]", v33, v34, v35, v36, v37, v80);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "STYP = %#x", v33, v34, v35, v36, v37, *(v92 + 136));
    }

    if ((*(v92 + 16) & 0x40000) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CLAS = [not present]", v38, v39, v40, v41, v42, v81);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CLAS = %#x", v38, v39, v40, v41, v42, *(v92 + 140));
    }

    if ((*(v92 + 16) & 0x10) != 0)
    {
      sub_10004860C(__stdoutp, 0, "ECID = [not present]", v43, v44, v45, v46, v47, v82);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "ECID = %#llx", v43, v44, v45, v46, v47, *(v92 + 40));
    }

    if ((*(v92 + 16) & 0x20) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CPRO = [not present]", v48, v49, v50, v51, v52, v83);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CPRO = %#x", v48, v49, v50, v51, v52, *(v92 + 48) & 1);
    }

    if ((*(v92 + 16) & 0x40) != 0)
    {
      sub_10004860C(__stdoutp, 0, "CSEC = [not present]", v53, v54, v55, v56, v57, v84);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "CSEC = %#x", v53, v54, v55, v56, v57, *(v92 + 49) & 1);
    }

    if ((*(v92 + 16) & 0x80) != 0)
    {
      sub_10004860C(__stdoutp, 0, "EPRO = [not present]", v58, v59, v60, v61, v62, v85);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "EPRO = %#x", v58, v59, v60, v61, v62, *(v92 + 50) & 1);
    }

    if ((*(v92 + 16) & 0x100) != 0)
    {
      sub_10004860C(__stdoutp, 0, "ESEC = [not present]", v63, v64, v65, v66, v67, v86);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "ESEC = %#x", v63, v64, v65, v66, v67, *(v92 + 51) & 1);
    }

    if ((*(v92 + 16) & 0x400) != 0)
    {
      sub_10004860C(__stdoutp, 0, "RSCH = [not present]", v68, v69, v70, v71, v72, v87);
    }

    else
    {
      sub_10004860C(__stdoutp, 0, "RSCH = %#x", v68, v69, v70, v71, v72, *(v92 + 53) & 1);
    }
  }

  v88 = sub_100018A78(v91);
  sub_100006B40(&v91);
  return v88;
}

void *sub_1000216E4(void *a1)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x8709206FuLL);
  if (!v4)
  {
    memset(&v6[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v1 = __error();
    v2 = strerror(*v1);
    sub_1000031B0(v6, "known-constant allocation", 144, v2);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100021894);
  }

  sub_10004941C((v4 + 2), (v4 + 7), 64);
  v4[6] = os_retain(a1);
  v4[17] = -1;
  return v4;
}

uint64_t sub_100021918(uint64_t a1, uint64_t a2, FILE *a3, uint64_t a4)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = -1;
  v39 = -1;
  v38 = -1;
  v37 = 0;
  __ptr = 0;
  v36 = 0;
  v34 = 0;
  i = 0;
  v32 = -1;
  memset(__b, 0, sizeof(__b));
  v38 = *(v41 + 8);
  v39 = fseek(v42, v38, 0);
  if (v39)
  {
    v40 = *__error();
    v30 = *__error();
    v29 = *(v44 + 48);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000013C8(v56, v40);
      _os_log_impl(&_mh_execute_header, v29, type, "fseek [code signature]: %{darwin.errno}d", v56, 8u);
    }

    *__error() = v30;
  }

  else
  {
    v37 = fread(&__ptr, 0xCuLL, 1uLL, v42);
    v40 = sub_10004887C("cs superblob", v42, v37, 88, *(v44 + 48));
    if (!v40)
    {
      LODWORD(__ptr) = sub_10000E154(__ptr);
      HIDWORD(__ptr) = sub_10000E154(HIDWORD(__ptr));
      v36 = sub_10000E154(v36);
      if (__ptr == -86111040)
      {
        v34 = 8 * v36 + 12;
        if (HIDWORD(__ptr) >= v34)
        {
          if (v43)
          {
            if ((*(v43 + 136) & 0x8000000000000000) != 0)
            {
              _os_crash();
              __break(1u);
            }

            v32 = *(v43 + 136);
          }

          for (i = 0; i < v36; ++i)
          {
            v46 = i;
            if (i > 0x7FFFFFFFFFFFFFFFLL)
            {
              _os_crash();
              __break(1u);
            }

            v21 = v46;
            v20 = 0;
            v18 = *(v41 + 8);
            v37 = fread(&v20, 8uLL, 1uLL, v42);
            v40 = sub_10004887C("cs blob index", v42, v37, 88, *(v44 + 48));
            if (!v40)
            {
              LODWORD(v20) = sub_10000E154(v20);
              HIDWORD(v20) = sub_10000E154(HIDWORD(v20));
              v19 = v18 + HIDWORD(v20);
              if (sub_10002256C(&v20))
              {
                if (v21 <= v32)
                {
                  v15 = *__error();
                  v14 = *(v44 + 48);
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000225FC(v52, i, v32, v20, SHIDWORD(v20));
                    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "previously-encountered code directory: superblob idx = %lu, last idx = %ld, type = %#x, off = %u", v52, 0x22u);
                  }

                  *__error() = v15;
                }

                else
                {
                  v13 = *__error();
                  oslog = *(v44 + 48);
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100009EF8(v51, v20, SHIDWORD(v20));
                    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "found code directory: type = %#x, off = %u", v51, 0xEu);
                  }

                  *__error() = v13;
                  v39 = fseek(v42, v19, 0);
                  if (v39)
                  {
                    v40 = *__error();
                    v11 = *__error();
                    v10 = *(v44 + 48);
                    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000013C8(v50, v40);
                      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "fseek [csidx]: %{darwin.errno}d", v50, 8u);
                    }

                    *__error() = v11;
                    return v40;
                  }

                  v37 = fread(__b, 0x2CuLL, 1uLL, v42);
                  v40 = sub_10004887C("cs directory", v42, v37, 88, *(v44 + 48));
                  if (v40)
                  {
                    return v40;
                  }

                  __b[1] = sub_10000E154(__b[1]);
                  __b[5] = sub_10000E154(__b[5]);
                  v9 = *__error();
                  v8 = *(v44 + 48);
                  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100022670(v49, i, BYTE1(__b[9]), __b[5], __b[1]);
                    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "read code directory header: idx = %lu, hash type = %hu, csid offset = %u, length = %u", v49, 0x1Eu);
                  }

                  *__error() = v9;
                  if (fseek(v42, v19, 0) == -1)
                  {
                    memset(&v48[16], 0, 0x50uLL);
                    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                    v4 = __error();
                    sub_1000013C8(v48, *v4);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

                  v40 = sub_1000226E4(v44, v42, __b);
                  if (!v40)
                  {
                    v45 = i;
                    if (i > 0x7FFFFFFFFFFFFFFFLL)
                    {
                      _os_crash();
                      __break(1u);
                    }

                    *(v44 + 136) = v45;
                    break;
                  }
                }
              }

              else
              {
                v17 = *__error();
                v16 = *(v44 + 48);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000013C8(v53, v20);
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "not a code directory: %#x", v53, 8u);
                }

                *__error() = v17;
              }
            }
          }

          if ((*(v44 + 136) & 0x8000000000000000) != 0)
          {
            v7 = *__error();
            v6 = *(v44 + 48);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              sub_100003098(v47, i);
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "exhausted cs blobs: cnt = %lu", v47, 0xCu);
            }

            *__error() = v7;
            return 89;
          }
        }

        else
        {
          v40 = 84;
          v24 = *__error();
          v23 = *(v44 + 48);
          v22 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100003160(v54, SHIDWORD(__ptr), v34);
            _os_log_impl(&_mh_execute_header, v23, v22, "invalid cs super blob size: actual = %u, expected = %lu", v54, 0x12u);
          }

          *__error() = v24;
        }
      }

      else
      {
        v40 = 88;
        v27 = *__error();
        v26 = *(v44 + 48);
        v25 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100009EF8(v55, __ptr, v40);
          _os_log_impl(&_mh_execute_header, v26, v25, "bad cs juju: %#x: %{darwin.errno}d", v55, 0xEu);
        }

        *__error() = v27;
      }
    }
  }

  return v40;
}

uint64_t sub_1000225FC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t sub_100022670(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

uint64_t sub_1000226E4(uint64_t a1, FILE *a2, uint64_t a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = -1;
  v25 = 0;
  if (*(a3 + 4) >= 0x2CuLL)
  {
    v24 = *(v27 + 20);
    if (v24 >= *(v27 + 4))
    {
      v26 = 88;
      v20 = *__error();
      v19 = *(v29 + 48);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100024124(v49, v24, *(v27 + 4), v26);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "invalid identity offset: actual = %u, expected < %u: %{darwin.errno}d", v49, 0x14u);
      }

      *__error() = v20;
    }

    else
    {
      v18 = *__error();
      v17 = *(v29 + 48);
      if (os_log_type_enabled(*(v29 + 48), OS_LOG_TYPE_DEBUG))
      {
        sub_100009EF8(v48, *(v27 + 37), *(v27 + 4));
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "reading code directory: hash type = %u, length = %u", v48, 0xEu);
      }

      *__error() = v18;
      v25 = malloc_type_malloc(*(v27 + 4), 0x1E0DA44DuLL);
      if (v25)
      {
        v23 = fread(v25, *(v27 + 4), 1uLL, v28);
        v26 = sub_10004887C("code directory", v28, v23, 88, *(v29 + 48));
        if (!v26)
        {
          sub_100023540(v29, *(v27 + 37), v25, *(v27 + 4));
          v13 = strnlen(v25 + v24, *(v25 + 1) - v24) + 1;
          if (_dispatch_is_multithreaded())
          {
            v44 = 1;
            v43 = v13;
            v42 = 0;
            while (1)
            {
              v42 = malloc_type_calloc(v44, v43, 0x8A375538uLL);
              if (v42)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }

            v14 = v42;
          }

          else
          {
            v31 = 1;
            v30 = v13;
            v14 = malloc_type_calloc(1uLL, v13, 0x8709206FuLL);
            v41 = "known-constant allocation";
            v40 = v14;
            v39 = v13;
            if (!v14)
            {
              v38 = 0;
              memset(&v51[40], 0, 0x50uLL);
              v36 = 0;
              v35 = 3;
              v34 = &_os_log_default;
              v33 = OS_LOG_TYPE_ERROR;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v35 &= ~1u;
              }

              if (v35)
              {
                v4 = __error();
                v5 = strerror(*v4);
                sub_1000031B0(v51, v41, v39, v5);
                v36 = _os_log_send_and_compose_impl();
              }

              v32 = v36;
              v37 = v36;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100022D14);
            }
          }

          *(v29 + 128) = v14;
          v6 = *(v29 + 128);
          __strlcpy_chk();
          v26 = 0;
          v12 = *__error();
          v11 = *(v29 + 48);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_100003120(v46, *(v29 + 128));
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "code signing identity: %s", v46, 0xCu);
          }

          *__error() = v12;
        }
      }

      else
      {
        v26 = *__error();
        v16 = *__error();
        v15 = *(v29 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v3 = __error();
          sub_1000013C8(v47, *v3);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", v47, 8u);
        }

        *__error() = v16;
      }
    }
  }

  else
  {
    v26 = 88;
    v22 = *__error();
    oslog = *(v29 + 48);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000240C0(v50, *(v27 + 4), 44, v26);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "code directory too small: actual = %u, expected >= %lu: %{darwin.errno}d", v50, 0x18u);
    }

    *__error() = v22;
  }

  if (!v26)
  {
    v10 = *__error();
    v9 = *(v29 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100024184(v45, *(v29 + 128), *(v29 + 112), v29 + 56);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "code directory: identity = %s, hash = %.*P", v45, 0x1Cu);
    }

    *__error() = v10;
  }

  v8 = v26;
  sub_100002DE4(&v25);
  return v8;
}

uint64_t sub_100022F74(uint64_t a1, FILE *a2, unsigned __int8 a3)
{
  v18 = a1;
  __stream = a2;
  v16 = a3;
  v15 = -1;
  v14 = 0;
  __ptr = 0;
  if (fseek(a2, 0, 2) == -1)
  {
    memset(&v44[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v3 = __error();
    sub_1000013C8(v44, *v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x1000230E4);
  }

  v14 = ftell(__stream);
  v39 = v14;
  if (v14 < 0)
  {
    _os_crash();
    __break(1u);
    JUMPOUT(0x100023118);
  }

  rewind(__stream);
  if (_dispatch_is_multithreaded())
  {
    v42 = v39;
    v41 = 0;
    while (1)
    {
      v41 = malloc_type_malloc(v42, 0x5C008F58uLL);
      if (v41)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v11 = v41;
  }

  else
  {
    size = v39;
    v11 = malloc_type_malloc(v39, 0x2F48DA65uLL);
    v38 = "known-constant allocation";
    v37 = v11;
    v36 = v39;
    if (!v11)
    {
      v35 = 0;
      memset(&v46[40], 0, 0x50uLL);
      v33 = 0;
      v32 = 3;
      v31 = &_os_log_default;
      v30 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v32 &= ~1u;
      }

      if (v32)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_1000031B0(v46, v38, v36, v5);
        v33 = _os_log_send_and_compose_impl();
      }

      v29 = v33;
      v34 = v33;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000232ACLL);
    }
  }

  __ptr = v11;
  v12 = fread(v11, v39, 1uLL, __stream);
  v15 = sub_10004887C("unsigned file", __stream, v12, 88, *(v18 + 48));
  if (!v15)
  {
    sub_100023540(v18, v16, __ptr, v39);
    __s1 = "file-digest";
    v10 = strdup("file-digest");
    v28 = "known-constant allocation";
    v27 = v10;
    v26 = strlen("file-digest");
    if (!v10)
    {
      v25 = 0;
      memset(&v45[32], 0, 0x50uLL);
      v23 = 0;
      v22 = 3;
      v21 = &_os_log_default;
      v20 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v22 &= ~1u;
      }

      if (v22)
      {
        v6 = __error();
        v7 = strerror(*v6);
        sub_1000031B0(v45, v28, v26, v7);
        v23 = _os_log_send_and_compose_impl();
      }

      v19 = v23;
      v24 = v23;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000234DCLL);
    }

    *(v18 + 128) = v10;
    v15 = 0;
  }

  v9 = v15;
  sub_100002DE4(&__ptr);
  return v9;
}

int *sub_100023540(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v23 = &v43;
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = sub_1000241F8(a2);
  v4 = (v39[1] + v39[2] + 19) >> 3;
  v38 = &v14;
  v24 = (8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = &v14 - v24;
  v37 = v5;
  bzero(&v14 - v24, v6);
  if (*v39 >= 0x31)
  {
    v7 = v23;
    v36 = 0;
    *(v23 + 15) = 0u;
    *(v7 + 13) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 7) = 0u;
    v34 = 0;
    v33 = 3;
    v32 = &_os_log_default;
    v31 = 16;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v33 &= ~1u;
    }

    if (v33)
    {
      v20 = v33;
      v21 = v32;
      v22 = v31;
      v8 = *v39;
      v19 = v45;
      sub_100003098(v45, v8);
      v30 = _os_log_send_and_compose_impl();
      v34 = v30;
    }

    v29 = v34;
    v35 = v34;
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023720);
  }

  ccdigest_init();
  ccdigest_update();
  sub_1000243C4(v39, v25, *v23 + 56);
  v28 = *__error();
  v27 = *(*v23 + 48);
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v16 = v27;
    v17 = v26;
    v10 = *v39;
    v11 = *v23 + 56;
    v18 = v44;
    sub_100024404(v44, v10, v11);
    _os_log_impl(&_mh_execute_header, v16, v17, "computed digest: %.*P", v18, 0x12u);
  }

  v15 = v28;
  result = __error();
  *result = v15;
  v13 = v23;
  *(*v23 + 104) = v42;
  *(*v13 + 112) = *v39;
  v14 = v38;
  return result;
}

size_t sub_100023874(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  __memcpy_chk();
  *(a1 + 104) = a3[20];
  *(a1 + 112) = 20;
  *(a1 + 120) = a3[21];
  *(a1 + 121) = a3[22];
  v6 = strdup("trust-cache-digest");
  result = strlen("trust-cache-digest");
  v9 = result;
  if (!v6)
  {
    memset(&v10[40], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v4 = __error();
    v5 = strerror(*v4);
    sub_1000031B0(v10, "known-constant allocation", v9, v5);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023A70);
  }

  *(a1 + 128) = v6;
  return result;
}

size_t sub_100023AB8(uint64_t a1, uint64_t a2)
{
  __memcpy_chk();
  *(a1 + 120) = *(a2 + 120);
  __s = *(a2 + 128);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(__s);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }

    v6 = result;
  }

  else
  {
    v6 = strdup(__s);
    result = strlen(__s);
    v9 = result;
    if (!v6)
    {
      memset(&v10[40], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v3 = __error();
      v4 = strerror(*v3);
      sub_1000031B0(v10, "known-constant allocation", v9, v4);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100023CA0);
    }
  }

  *(a1 + 128) = v6;
  return result;
}

void sub_100023DE0(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    os_release(v1[6]);
    free(v1[16]);
    free(v1);
    *a1 = 0;
  }
}

uint64_t sub_100023E48(uint64_t a1, const char *a2)
{
  v3 = sub_1000164C0(a2);
  if (!v3)
  {
    memset(&v6[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v6, v3);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x100023F8CLL);
  }

  result = strcmp(a2, "before");
  if (result)
  {
    result = strcmp(a2, "after");
    if (result)
    {
      result = strcmp(a2, "none");
      if (result)
      {
        result = strcmp(a2, "both");
        if (result)
        {
          __break(1u);
        }

        else
        {
          *(a1 + 120) |= 0x40u;
          *(a1 + 120) |= 0x80u;
        }
      }

      else
      {
        *(a1 + 120) &= ~0x40u;
        *(a1 + 120) &= ~0x80u;
      }
    }

    else
    {
      *(a1 + 120) &= ~0x40u;
      *(a1 + 120) |= 0x80u;
    }
  }

  else
  {
    *(a1 + 120) |= 0x40u;
    *(a1 + 120) &= ~0x80u;
  }

  return result;
}

uint64_t sub_1000240C0(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_100024124(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

uint64_t sub_100024184(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 16;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 48;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_1000241F8(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    return ccsha1_di();
  }

  if (a1 == 3 || a1 == 2)
  {
    return ccsha256_di();
  }

  if (a1 != 4)
  {
    memset(&v4[8], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_1000013C8(v4, a1);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    JUMPOUT(0x10002437CLL);
  }

  return ccsha384_di();
}

uint64_t sub_100024404(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 16;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 48;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t sub_10002445C(uint64_t a1, int a2, char *const *a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = -1;
  v23 = a3;
  v22 = -1;
  v21 = 0;
  memcpy(__dst, &unk_10007B070, sizeof(__dst));
  sub_1000480E0();
  while (1)
  {
    v22 = getopt_long(v26, v23, *(v27 + 32), *(v27 + 40), &v21);
    if (v22 == -1)
    {
      break;
    }

    v17 = (*(v27 + 40) + 32 * v21);
    v16 = v25[optind - 1];
    if (optind < 1)
    {
      memset(&v28[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v28, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100024648);
    }

    sub_1000483C8(1uLL, "parsing: %c", v3, v4, v5, v6, v7, v8, v22);
    switch(v22)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v17);
      case '?':
        errx(64, "unknown option: %s", v16);
      case 'A':
        v19 = sub_100024AF0(optarg);
        if (!v19)
        {
          errx(64, "invalid max algorithm: %s", optarg);
        }

        BYTE1(__dst[68]) = v19;
        break;
      case 'X':
        __dst[69] = optarg;
        break;
      case 'a':
        v18 = sub_100024AF0(optarg);
        if (!v18)
        {
          errx(64, "invalid min algorithm: %s", optarg);
        }

        LOBYTE(__dst[68]) = v18;
        break;
      case 'b':
        if (__dst[66] < 0x40uLL)
        {
          __dst[__dst[66]++ + 2] = optarg;
          sub_10004860C(0, 1uLL, "will add hashes from: %s", v10, v11, v12, v13, v14, optarg);
        }

        else
        {
          warnx("maximum number of base trust caches reached; ignoring: %s", optarg);
        }

        break;
      case 'o':
        __dst[1] = optarg;
        sub_1000483C8(1uLL, "will write trust cache to: %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 't':
        if (!strcmp(optarg, "static"))
        {
          __dst[67] = 0;
        }

        else if (!strcmp(optarg, "restore"))
        {
          __dst[67] = 1;
        }

        else if (!strcmp(optarg, "base-system"))
        {
          __dst[67] = 2;
        }

        else if (!strcmp(optarg, "loadable"))
        {
          __dst[67] = 3;
        }

        else
        {
          if (strcmp(optarg, "development"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          __dst[67] = 4;
        }

        break;
      case 'x':
        __dst[70] = sub_10004BAF0(optarg);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000249ECLL);
    }
  }

  v25 += optind;
  v26 -= optind;
  if (v26 < 1)
  {
    errx(64, "a directory path is required");
  }

  __dst[0] = *v25;
  if (__dst[69])
  {
    __dst[71] = sub_1000204C0(__dst[69]);
    if (!__dst[71])
    {
      errx(74, "Failed to parse REM config plist.");
    }
  }

  if (__dst[71])
  {
    xpc_dictionary_apply(__dst[71], &stru_10007B2D0);
  }

  v24 = sub_100024C40(__dst);
  return sysexit_np();
}

uint64_t sub_100024AF0(const char *a1)
{
  if (!strcmp(a1, "sha1"))
  {
    return 1;
  }

  else if (!strcmp(a1, "sha2-256"))
  {
    return 2;
  }

  else if (!strcmp(a1, "sha2-384"))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100024B90(id a1, const char *a2, void *a3)
{
  if (xpc_get_type(a3) != &_xpc_type_string)
  {
    errx(64, "REM config plist key '%s' maps to unexpected type.", a2);
  }

  string_ptr = xpc_string_get_string_ptr(a3);
  if (!sub_1000164C0(string_ptr))
  {
    errx(64, "REM config plist key '%s' maps to unexpected value '%s'.", a2, string_ptr);
  }

  return 1;
}

uint64_t sub_100024C40(uint64_t a1)
{
  v15 = a1;
  v14 = -1;
  v13 = 0;
  v12 = 0;
  v11 = -1;
  v13 = sub_100011D7C(*(a1 + 536), (a1 + 544), 0);
  sub_100012044(v13, *v15, v15, sub_100024E3C);
  if (*(v15 + 8))
  {
    v12 = *(v15 + 8);
  }

  else
  {
    v12 = "./trustcache";
  }

  v11 = open(v12, 1537, 438);
  v16 = v11;
  if (v11 < 0)
  {
    v14 = *__error();
    warnc(v14, "open: %s", v12);
  }

  else
  {
    for (i = 0; i < *(v15 + 528); ++i)
    {
      v9 = *(v15 + 16 + 8 * i);
      v14 = sub_100025284(v15, v13, v9);
      if (v14)
      {
        warnc(v14, "failed to add hashes from trust cache: %s", v9);
        goto LABEL_14;
      }
    }

    v14 = sub_100014D78(v13, v11);
    if (v14)
    {
      warnc(v14, "failed to write trust cache");
    }

    else
    {
      sub_1000483C8(1uLL, "wrote trust cache to: %s", v1, v2, v3, v4, v5, v6, v12);
    }
  }

LABEL_14:
  sub_1000160F8(&v13);
  v8 = v14;
  sub_1000038DC(&v11);
  return v8;
}

void sub_100024E3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  __s2 = a5;
  v49 = a6;
  i = 0;
  v47 = 0;
  v46 = a6;
  v45 = 0;
  key = 0;
  if (a4)
  {
    if (a4 == 90)
    {
      warnx("mach-o is not signed: %s", v53);
      v43 = 1;
    }

    else
    {
      if (a4 == 92)
      {
        sub_1000483C8(2uLL, "not a mach-o: %s", a3, a4, a5, a6, a7, a8, v53);
      }

      else
      {
        warnc(v51, "failed to add mach-o to trust cache: %s", v53);
      }

      v43 = 1;
    }
  }

  else
  {
    v42 = strstr(v53, __s2) == v53;
    if (!v42)
    {
      v41 = 0;
      memset(&v56[24], 0, 0x50uLL);
      v39 = 0;
      v38 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v38 &= ~1u;
      }

      if (v38)
      {
        sub_100003098(v56, v42);
        v39 = _os_log_send_and_compose_impl();
      }

      v35[1] = v39;
      v40 = v39;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100025064);
    }

    key = &v53[strlen(__s2)];
    v45 = sub_10001E620(v52);
    sub_10004860C(0, 1uLL, "added mach-o: %s", v8, v9, v10, v11, v12, key);
    sub_10004860C(0, 1uLL, "  cpu type: %s", v13, v14, v15, v16, v17, v45);
    for (i = *(v52 + 40); ; i = v47)
    {
      v33 = 0;
      if (i)
      {
        v47 = *(i + 8);
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        break;
      }

      v35[0] = 0;
      memset(v55, 0, sizeof(v55));
      sub_10004860C(0, 1uLL, "  identity: %s", v18, v19, v20, v21, v22, *(i + 128));
      sub_100023D24(i, v55);
      sub_10004860C(0, 1uLL, "  cdhash: %s", v23, v24, v25, v26, v27, v55);
      if (*(v46 + 568))
      {
        string = xpc_dictionary_get_string(*(v46 + 568), key);
        if (string)
        {
          v35[0] = sub_10004BAF0(string);
        }
      }

      if (!v35[0])
      {
        v35[0] = sub_10004BAF0(*(v46 + 560));
      }

      sub_100023E48(i, v35[0]);
      sub_10004860C(0, 1uLL, "  exec before/after REM: %s", v28, v29, v30, v31, v32, v35[0]);
      sub_100002DE4(v35);
    }

    v43 = 0;
  }

  sub_100002DE4(&v45);
}

uint64_t sub_100025284(uint64_t a1, uint64_t a2, const char *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = -1;
  v12 = 0;
  v11 = 1;
  v10 = 0;
  v13 = open(a3, 0);
  v18 = v13;
  if (v13 < 0)
  {
    v14 = *__error();
    warn("failed to open trust cache: %s", v15);
  }

  else
  {
    v12 = sub_100011D7C(0, 0, v11);
    v14 = sub_1000133D0(v12, v13);
    if (v14)
    {
      if (v14 == 45)
      {
        warnx("trust cache version not supported");
      }

      else
      {
        warnc(v14, "failed to read trust cache");
      }
    }

    else
    {
      v7 = 0;
      i = 0;
      v9 = 0;
      while (1)
      {
        v6[1] = 37;
        if (v7 >= 0x25)
        {
          break;
        }

        for (i = *&v12[8 * v7 + 120]; ; i = v9)
        {
          v5 = 0;
          if (i)
          {
            v9 = *(i + 8);
            v10 = i - 16;
            v5 = 1;
          }

          if ((v5 & 1) == 0)
          {
            break;
          }

          v6[0] = 0;
          v6[0] = sub_1000216E4(*(v16 + 16));
          sub_100023AB8(v6[0], v10);
          sub_1000149F8(v16, v6);
          sub_100023DE0(v6);
        }

        ++v7;
      }
    }
  }

  sub_1000160F8(&v12);
  v4 = v14;
  sub_1000038DC(&v13);
  return v4;
}

void sub_1000254AC(uint64_t a1)
{
  v2 = a1 != 0;
  if (!a1)
  {
    memset(&v3[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v3, v2);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v1 = collation_copy_search_path();
  if (v1)
  {
    fprintf(__stdoutp, "%s\n", v1);
    free(v1);
  }

  else
  {
    warnc(22, "Unable to get description for NULL specified paths.\n");
  }
}

void sub_100025694(uint64_t a1, unint64_t a2, const char *a3, const char *a4)
{
  v6 = 0;
  __str = strdup(a3);
  for (i = strtok(__str, ":"); i; i = strtok(0, ":"))
  {
    for (j = 0; j < a2; ++j)
    {
      bzero(v11, 0x400uLL);
      __strlcpy_chk();
      __strlcat_chk();
      if ((!a4 || !strcmp(a4, (a1 + 3600 * j + 8))) && !access(v11, 0))
      {
        if (v6)
        {
          fprintf(__stdoutp, "%s", ":");
        }

        fprintf(__stdoutp, "%s", v11);
        v6 = 1;
      }
    }
  }

  fprintf(__stdoutp, "\n");
  free(__str);
}

uint64_t sub_1000258A4(uint64_t a1, int a2, char *const *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -1;
  v8 = a3;
  v7 = -1;
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
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
      JUMPOUT(0x100025A70);
    }

    switch(v7)
    {
      case '?':
        errx(64, "unknown option: %s", v10[optind - 1]);
      case 'S':
        *&v4 = v4 | 4;
        *(&v5 + 1) = optarg;
        break;
      case 'c':
        *&v5 = optarg;
        break;
      case 'p':
        *&v4 = v4 | 4;
        *(&v5 + 1) = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin";
        break;
      case 's':
        *&v4 = v4 | 1;
        *(&v4 + 1) = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100025B6CLL);
    }
  }

  v10 += optind;
  v11 -= optind;
  v9 = sub_100025BEC(&v4);
  return sysexit_np();
}

uint64_t sub_100025BEC(void *a1)
{
  if (*a1)
  {
    if (!a1[1])
    {
      err(22, "No session selected.");
    }

    return sub_100025C60(a1);
  }

  else
  {
    return sub_100025D3C(a1);
  }
}

uint64_t sub_100025C60(uint64_t a1)
{
  if (!sub_100025DE4(*(a1 + 8)))
  {
    err(22, "Session %s not found", *(a1 + 8));
  }

  object = collation_create_for_user();
  if (!object)
  {
    err(22, "Unable to create collation");
  }

  if ((*a1 & 4) != 0)
  {
    v3 = *(a1 + 24);
  }

  v1 = *(a1 + 16);
  sub_1000254AC(object);
  os_release(object);
  return 0;
}

uint64_t sub_100025D3C(uint64_t a1)
{
  *&v3[8] = 0;
  *v3 = _cryptex_copy_list_lossy();
  if (*v3)
  {
    err(*v3, "Unable to copy system cryptex list");
  }

  if ((*a1 & 4) != 0)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = "/";
  }

  sub_100025694(0, *&v3[4], v2, *(a1 + 16));
  return 0;
}

uint64_t sub_100025DE4(char *a1)
{
  v4[1] = a1;
  v4[0] = 0;
  if (asprintf(v4, "cryptex_%s", a1) <= 0)
  {
    memset(&v5[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v5, 0);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = getpwnam(v4[0]);
  pw_uid = 0;
  if (v3)
  {
    pw_uid = v3->pw_uid;
  }

  else
  {
    warnc(22, "Failed to get passwd for %s", v4[0]);
  }

  free(v4[0]);
  return pw_uid;
}

uint64_t sub_100025FE4(uint64_t a1, int a2, char **a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = -1;
  v14 = a3;
  v13 = -1;
  v12 = 0;
  v11 = 0;
  sub_1000480E0();
  v13 = getopt_long(v17, v14, *(v18 + 32), *(v18 + 40), &v12);
  if (v13 != -1)
  {
    if (optind < 1)
    {
      memset(&v19[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v19, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000261BCLL);
    }

    if (v13 != 58)
    {
      if (v13 != 63)
      {
        _os_crash();
        __break(1u);
        JUMPOUT(0x100026238);
      }

      errx(64, "unknown option: %s", v16[optind - 1]);
    }

    errx(64, "missing argument for option: %s", *(*(v18 + 40) + 32 * v12));
  }

  v16 += optind;
  v17 -= optind;
  if (v17 >= 1)
  {
    if (!strcmp(*v16, "cli"))
    {
      v11 = 0;
    }

    else if (!strcmp(*v16, "library"))
    {
      v11 = 1;
    }

    else if (!strcmp(*v16, "daemon"))
    {
      v11 = 2;
    }

    else
    {
      if (strcmp(*v16, "mobile-device-framework"))
      {
        errx(64, "invalid version specifier: %s", optarg);
      }

      v11 = 3;
    }
  }

  v15 = sub_100026398(&v11, v3, v4, v5, v6, v7, v8, v9);
  return sysexit_np();
}

uint64_t sub_100026398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v13 = -1;
  v12 = 0;
  v11 = 0;
  v10 = *a1;
  if (!*a1)
  {
    v12 = off_100084810[0];
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    v12 = _cryptex_version();
    goto LABEL_12;
  }

  if (v10 == 2)
  {
    v13 = sub_1000264BC(&v11);
    if (v13)
    {
      warnc(v13, "copying daemon version failed");
      goto LABEL_13;
    }

    v12 = v11;
LABEL_12:
    sub_10004860C(__stdoutp, 0, "%s", a4, a5, a6, a7, a8, v12);
    v13 = 0;
    goto LABEL_13;
  }

  if (v10 != 3)
  {
    goto LABEL_12;
  }

  warnx("MobileDevice framework not present on this platform");
  v13 = 78;
LABEL_13:
  v9 = v13;
  sub_100002DE4(&v11);
  return v9;
}

uint64_t sub_1000264BC(void *a1)
{
  v5 = a1;
  bzero(v7, 0x168uLL);
  bzero(v6, 0x168uLL);
  v6[0] = 32;
  actor = cryptex_subsystem_create_actor();
  v4 = cryptex_actor_connect();
  if (v4)
  {
    warnc(v4, "could not connect to daemon");
  }

  else
  {
    _cryptex_actor_init_invoke_u64();
    daemon_version_pack();
    v4 = cryptex_actor_trap();
    if (v4)
    {
      warnc(v4, "failed to get daemon version");
    }

    else
    {
      v4 = daemon_version_reply_unpack();
      if (v4)
      {
        warnc(v4, "bogus daemon reply");
      }

      else
      {
        *v5 = 0;
        v4 = 0;
      }
    }
  }

  v2 = v4;
  sub_100026664(v6);
  sub_100026664(v7);
  sub_1000030D0(&actor);
  return v2;
}

uint64_t sub_100026694(uint64_t a1)
{
  v9 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0;
  v7 = 32;
  v8 = 0;
  v3 = session_iter_list();
  if (v3)
  {
    warnc(v3, "Failed session iteration for copy_target_session");
  }

  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void *sub_100026774(uint64_t a1, uint64_t a2)
{
  __s1 = session_get_name();
  result = strcmp(__s1, *(a1 + 40));
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    return os_retain(*(*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t sub_1000267F0()
{
  v157 = __chkstk_darwin();
  v156 = v0;
  v155 = v1;
  v154 = -1;
  v153 = v1;
  v152 = -1;
  v151 = 0;
  memcpy(__dst, &unk_10007BE08, sizeof(__dst));
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = sub_100048090();
  __dst[19] = 491526;
  HIDWORD(__dst[21]) = 1;
  sub_1000480E0();
  __dst[4] = 0;
  while (1)
  {
    v152 = getopt_long(v156, v153, *(v157 + 32), *(v157 + 40), &v151);
    if (v152 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v310[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v310, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100026A28);
    }

    switch(v152)
    {
      case '1':
        ++v148;
        __dst[16] = 2;
        sub_1000483C8(1uLL, "will write cryptex in Cryptex1 format", v2, v3, v4, v5, v6, v7, v102);
        break;
      case ':':
        errx(64, "missing argument for option: %s", *(*(v157 + 40) + 32 * v151));
      case '?':
        errx(64, "unknown option: %s", v155[optind - 1]);
      case 'B':
        __dst[19] &= ~2uLL;
        HIDWORD(__dst[20]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", v23, v24, v25, v26, v27, v28, SBYTE4(__dst[20]));
        ++v150;
        break;
      case 'C':
        __dst[19] &= ~4uLL;
        LODWORD(__dst[21]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", v29, v30, v31, v32, v33, v34, __dst[21]);
        ++v150;
        break;
      case 'D':
        HIDWORD(__dst[21]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %u", v35, v36, v37, v38, v39, v40, SBYTE4(__dst[21]));
        ++v150;
        break;
      case 'F':
        __dst[19] &= ~0x8000uLL;
        LODWORD(__dst[33]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", v41, v42, v43, v44, v45, v46, __dst[33]);
        ++v149;
        break;
      case 'H':
        __dst[0] |= 1uLL;
        sub_1000483C8(1uLL, "will use host identity", v2, v3, v4, v5, v6, v7, v102);
        break;
      case 'L':
        __dst[19] &= ~0x40000uLL;
        HIDWORD(__dst[34]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %u", v59, v60, v61, v62, v63, v64, SBYTE4(__dst[34]));
        ++v149;
        break;
      case 'N':
        __dst[12] = xpc_BOOL_create(1);
        sub_1000483C8(1uLL, "will create a no-code cryptex", v17, v18, v19, v20, v21, v22, v102);
        break;
      case 'P':
        ++v148;
        __dst[16] = 3;
        sub_1000483C8(1uLL, "will write cryptex in legacy PDI format", v2, v3, v4, v5, v6, v7, v102);
        break;
      case 'R':
        __dst[40] = optarg;
        break;
      case 'T':
        __dst[19] &= ~0x10000uLL;
        HIDWORD(__dst[33]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", v47, v48, v49, v50, v51, v52, SBYTE4(__dst[33]));
        ++v149;
        break;
      case 'V':
        __dst[9] = optarg;
        break;
      case 'X':
        v139 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v303 = v139;
          v302 = 0;
          while (1)
          {
            v302 = strdup(v303);
            if (v302)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v140 = v302;
        }

        else
        {
          v165 = v139;
          v140 = strdup(v139);
          v71 = strlen(v139);
          v256 = "known-constant allocation";
          v255 = v140;
          v254 = v71;
          if (!v140)
          {
            v253 = 0;
            memset(&v319[32], 0, 0x50uLL);
            v251 = 0;
            v250 = 3;
            v249 = &_os_log_default;
            v248 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v250 &= ~1u;
            }

            if (v250)
            {
              v117 = v256;
              v118 = v254;
              v72 = __error();
              v73 = strerror(*v72);
              sub_1000031B0(v319, v117, v118, v73);
              v247 = _os_log_send_and_compose_impl();
              v251 = v247;
            }

            v246 = v251;
            v252 = v251;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x10002757CLL);
          }
        }

        __dst[37] = v140;
        break;
      case 'Y':
        LODWORD(__dst[36]) = sub_10004B498(optarg, 0, 0);
        BYTE4(__dst[35]) = 1;
        sub_1000483C8(1uLL, "STYP = %u", v53, v54, v55, v56, v57, v58, __dst[34]);
        break;
      case 'd':
        __dst[8] = xpc_BOOL_create(1);
        break;
      case 'i':
        __s = optarg;
        if (_dispatch_is_multithreaded())
        {
          v309 = __s;
          v308 = 0;
          while (1)
          {
            v308 = strdup(v309);
            if (v308)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v146 = v308;
        }

        else
        {
          __s1 = __s;
          v146 = strdup(__s);
          v8 = strlen(__s);
          v289 = "known-constant allocation";
          v288 = v146;
          v287 = v8;
          if (!v146)
          {
            v286 = 0;
            memset(&v322[40], 0, 0x50uLL);
            v284 = 0;
            v283 = 3;
            v282 = &_os_log_default;
            v281 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v283 &= ~1u;
            }

            if (v283)
            {
              v123 = v289;
              v124 = v287;
              v9 = __error();
              v10 = strerror(*v9);
              sub_1000031B0(v322, v123, v124, v10);
              v280 = _os_log_send_and_compose_impl();
              v284 = v280;
            }

            v279 = v284;
            v285 = v284;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026C00);
          }
        }

        __dst[2] = v146;
        break;
      case 'm':
        v141 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v305 = v141;
          v304 = 0;
          while (1)
          {
            v304 = strdup(v305);
            if (v304)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v142 = v304;
        }

        else
        {
          v166 = v141;
          v142 = strdup(v141);
          v14 = strlen(v141);
          v267 = "known-constant allocation";
          v266 = v142;
          v265 = v14;
          if (!v142)
          {
            v264 = 0;
            memset(&v320[32], 0, 0x50uLL);
            v262 = 0;
            v261 = 3;
            v260 = &_os_log_default;
            v259 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v261 &= ~1u;
            }

            if (v261)
            {
              v119 = v267;
              v120 = v265;
              v15 = __error();
              v16 = strerror(*v15);
              sub_1000031B0(v320, v119, v120, v16);
              v258 = _os_log_send_and_compose_impl();
              v262 = v258;
            }

            v257 = v262;
            v263 = v262;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026FE4);
          }
        }

        __dst[4] = v142;
        break;
      case 'n':
        LODWORD(__dst[35]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "nonce domain = %u", v65, v66, v67, v68, v69, v70, __dst[35]);
        break;
      case 'o':
        __dst[10] = optarg;
        sub_1000483C8(1uLL, "will write cryptex to: %s", v2, v3, v4, v5, v6, v7, optarg);
        break;
      case 'p':
        __dst[11] = optarg;
        break;
      case 'r':
        LOBYTE(__dst[15]) = 1;
        sub_1000483C8(1uLL, "will replace existing cryptex", v2, v3, v4, v5, v6, v7, v102);
        break;
      case 's':
        __dst[41] = optarg;
        break;
      case 't':
        if (!strcmp(optarg, "loadable"))
        {
          LOBYTE(__dst[42]) = 1;
          __dst[43] = 3;
        }

        else
        {
          if (strcmp(optarg, "cryptex1-generic"))
          {
            errx(64, "invalid trust cache type: %s", optarg);
          }

          LOBYTE(__dst[42]) = 1;
          __dst[43] = 5;
        }

        break;
      case 'u':
        LOBYTE(__dst[39]) = 1;
        break;
      case 'v':
        v143 = optarg;
        if (_dispatch_is_multithreaded())
        {
          v307 = v143;
          v306 = 0;
          while (1)
          {
            v306 = strdup(v307);
            if (v306)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v144 = v306;
        }

        else
        {
          v167 = v143;
          v144 = strdup(v143);
          v11 = strlen(v143);
          v278 = "known-constant allocation";
          v277 = v144;
          v276 = v11;
          if (!v144)
          {
            v275 = 0;
            memset(&v321[32], 0, 0x50uLL);
            v273 = 0;
            v272 = 3;
            v271 = &_os_log_default;
            v270 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v272 &= ~1u;
            }

            if (v272)
            {
              v121 = v278;
              v122 = v276;
              v12 = __error();
              v13 = strerror(*v12);
              sub_1000031B0(v321, v121, v122, v13);
              v269 = _os_log_send_and_compose_impl();
              v273 = v269;
            }

            v268 = v273;
            v274 = v273;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100026DE8);
          }
        }

        __dst[3] = v144;
        break;
      case 'x':
        __dst[38] = sub_10004BAF0(optarg);
        break;
      case 'z':
        ++v148;
        __dst[16] = 1;
        sub_1000483C8(1uLL, "will be signed as a cpxd", v2, v3, v4, v5, v6, v7, v102);
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000276E8);
    }
  }

  if (v148 > 1)
  {
    errx(64, "must provide no more than one of --research, --use-cryptex1-format, and --use-pdi-format");
  }

  if (__dst[37])
  {
    __dst[14] = sub_1000204C0(__dst[37]);
    if (!__dst[14])
    {
      errx(74, "Failed to parse REM config plist.");
    }
  }

  if (__dst[14])
  {
    xpc_dictionary_apply(__dst[14], &stru_10007BF88);
  }

  if ((__dst[39] & 1) != 0 && __dst[16] != 2)
  {
    errx(64, "--use-product-class requires the cryptex to be in Cryptex1 format (--use-cryptex1-format).");
  }

  if (!sub_1000164C0(__dst[38]))
  {
    errx(64, "Default REM config has unexpected value '%s'.", __dst[38]);
  }

  if (strlen(__dst[41]) != 4)
  {
    errx(64, "Invalid Seal 4CC specified: %s", __dst[41]);
  }

  if (__dst[11])
  {
    __dst[13] = sub_1000204C0(__dst[11]);
  }

  if (__dst[13])
  {
    string = xpc_dictionary_get_string(__dst[13], "CFBundleIdentifier");
    v137 = xpc_dictionary_get_string(__dst[13], "CFBundleVersion");
    v136 = xpc_dictionary_get_string(__dst[13], "RequiredMountPath");
    v135 = xpc_dictionary_get_string(__dst[13], "CMD");
    v134 = xpc_dictionary_get_string(__dst[13], "Publisher");
    v133 = xpc_dictionary_get_string(__dst[13], "Version");
    if (string)
    {
      if (__dst[2])
      {
        warnx("cryptex identifier in provided plist overridden bythe value of --identifier");
      }

      else
      {
        if (_dispatch_is_multithreaded())
        {
          v301 = string;
          v300 = 0;
          while (1)
          {
            v300 = strdup(v301);
            if (v300)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v132 = v300;
        }

        else
        {
          v164 = string;
          v132 = strdup(string);
          v80 = strlen(string);
          v245 = "known-constant allocation";
          v244 = v132;
          v243 = v80;
          if (!v132)
          {
            v242 = 0;
            memset(&v318[32], 0, 0x50uLL);
            v240 = 0;
            v239 = 3;
            v238 = &_os_log_default;
            v237 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v239 &= ~1u;
            }

            if (v239)
            {
              v115 = v245;
              v116 = v243;
              v81 = __error();
              v82 = strerror(*v81);
              sub_1000031B0(v318, v115, v116, v82);
              v236 = _os_log_send_and_compose_impl();
              v240 = v236;
            }

            v235 = v240;
            v241 = v240;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100027A60);
          }
        }

        __dst[2] = v132;
      }
    }

    if (v137)
    {
      if (__dst[3])
      {
        warnx("cryptex version in provided plist overridden bythe value of --version");
      }

      else
      {
        if (_dispatch_is_multithreaded())
        {
          v299 = v137;
          v298 = 0;
          while (1)
          {
            v298 = strdup(v299);
            if (v298)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }

          v131 = v298;
        }

        else
        {
          v163 = v137;
          v131 = strdup(v137);
          v83 = strlen(v137);
          v234 = "known-constant allocation";
          v233 = v131;
          v232 = v83;
          if (!v131)
          {
            v231 = 0;
            memset(&v317[32], 0, 0x50uLL);
            v229 = 0;
            v228 = 3;
            v227 = &_os_log_default;
            v226 = OS_LOG_TYPE_ERROR;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v228 &= ~1u;
            }

            if (v228)
            {
              v113 = v234;
              v114 = v232;
              v84 = __error();
              v85 = strerror(*v84);
              sub_1000031B0(v317, v113, v114, v85);
              v225 = _os_log_send_and_compose_impl();
              v229 = v225;
            }

            v224 = v229;
            v230 = v229;
            _os_crash_msg();
            __break(1u);
            JUMPOUT(0x100027C6CLL);
          }
        }

        __dst[3] = v131;
      }
    }

    __dst[12] = xpc_dictionary_get_value(__dst[13], "NoCode");
    if (v136)
    {
      if (__dst[4])
      {
        errx(64, "cryptex mount point cannot be specified explicitly and in provided plist");
      }

      if (_dispatch_is_multithreaded())
      {
        v297 = v136;
        v296 = 0;
        while (1)
        {
          v296 = strdup(v297);
          if (v296)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v130 = v296;
      }

      else
      {
        v162 = v136;
        v130 = strdup(v136);
        v86 = strlen(v136);
        v223 = "known-constant allocation";
        v222 = v130;
        v221 = v86;
        if (!v130)
        {
          v220 = 0;
          memset(&v316[32], 0, 0x50uLL);
          v218 = 0;
          v217 = 3;
          v216 = &_os_log_default;
          v215 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v217 &= ~1u;
          }

          if (v217)
          {
            v111 = v223;
            v112 = v221;
            v87 = __error();
            v88 = strerror(*v87);
            sub_1000031B0(v316, v111, v112, v88);
            v214 = _os_log_send_and_compose_impl();
            v218 = v214;
          }

          v213 = v218;
          v219 = v218;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100027E90);
        }
      }

      __dst[4] = v130;
    }

    if (v135)
    {
      if (_dispatch_is_multithreaded())
      {
        v295 = v135;
        v294 = 0;
        while (1)
        {
          v294 = strdup(v295);
          if (v294)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v129 = v294;
      }

      else
      {
        v161 = v135;
        v129 = strdup(v135);
        v89 = strlen(v135);
        v212 = "known-constant allocation";
        v211 = v129;
        v210 = v89;
        if (!v129)
        {
          v209 = 0;
          memset(&v315[32], 0, 0x50uLL);
          v207 = 0;
          v206 = 3;
          v205 = &_os_log_default;
          v204 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v206 &= ~1u;
          }

          if (v206)
          {
            v109 = v212;
            v110 = v210;
            v90 = __error();
            v91 = strerror(*v90);
            sub_1000031B0(v315, v109, v110, v91);
            v203 = _os_log_send_and_compose_impl();
            v207 = v203;
          }

          v202 = v207;
          v208 = v207;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002807CLL);
        }
      }

      __dst[5] = v129;
    }

    if (v134)
    {
      if (_dispatch_is_multithreaded())
      {
        v293 = v134;
        v292 = 0;
        while (1)
        {
          v292 = strdup(v293);
          if (v292)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v128 = v292;
      }

      else
      {
        v160 = v134;
        v128 = strdup(v134);
        v92 = strlen(v134);
        v201 = "known-constant allocation";
        v200 = v128;
        v199 = v92;
        if (!v128)
        {
          v198 = 0;
          memset(&v314[32], 0, 0x50uLL);
          v196 = 0;
          v195 = 3;
          v194 = &_os_log_default;
          v193 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v195 &= ~1u;
          }

          if (v195)
          {
            v107 = v201;
            v108 = v199;
            v93 = __error();
            v94 = strerror(*v93);
            sub_1000031B0(v314, v107, v108, v94);
            v192 = _os_log_send_and_compose_impl();
            v196 = v192;
          }

          v191 = v196;
          v197 = v196;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100028268);
        }
      }

      __dst[6] = v128;
    }

    if (v133)
    {
      if (_dispatch_is_multithreaded())
      {
        v291 = v133;
        v290 = 0;
        while (1)
        {
          v290 = strdup(v291);
          if (v290)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }

        v127 = v290;
      }

      else
      {
        v159 = v133;
        v127 = strdup(v133);
        v95 = strlen(v133);
        v190 = "known-constant allocation";
        v189 = v127;
        v188 = v95;
        if (!v127)
        {
          v187 = 0;
          memset(&v313[32], 0, 0x50uLL);
          v185 = 0;
          v184 = 3;
          v183 = &_os_log_default;
          v182 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v184 &= ~1u;
          }

          if (v184)
          {
            v105 = v190;
            v106 = v188;
            v96 = __error();
            v97 = strerror(*v96);
            sub_1000031B0(v313, v105, v106, v97);
            v181 = _os_log_send_and_compose_impl();
            v185 = v181;
          }

          v180 = v185;
          v186 = v185;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100028454);
        }
      }

      __dst[7] = v127;
    }

    __dst[8] = xpc_dictionary_get_value(__dst[13], "DeveloperModeRequired");
  }

  if (!__dst[2] || !__dst[3])
  {
    errx(64, "must provide a cryptex identifier + version either explicitly or in a provided plist");
  }

  if (!__dst[6])
  {
    v158 = "cryptexctl";
    v126 = strdup("cryptexctl");
    v98 = strlen("cryptexctl");
    v179 = "known-constant allocation";
    v178 = v126;
    v177 = v98;
    if (!v126)
    {
      v176 = 0;
      memset(&v312[32], 0, 0x50uLL);
      v174 = 0;
      v173 = 3;
      v172 = &_os_log_default;
      v171 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v173 &= ~1u;
      }

      if (v173)
      {
        v103 = v179;
        v104 = v177;
        v99 = __error();
        v100 = strerror(*v99);
        sub_1000031B0(v312, v103, v104, v100);
        v170 = _os_log_send_and_compose_impl();
        v174 = v170;
      }

      v169 = v174;
      v175 = v174;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100028670);
    }

    __dst[6] = v126;
  }

  if (__dst[0])
  {
    if (__dst[16] != 1)
    {
      if (__dst[16] == 2)
      {
LABEL_215:
        v154 = img4_chip_instantiate();
        if (v154)
        {
          errc(71, v154, "failed to instantiate host ap");
        }

        goto LABEL_217;
      }

      if (__dst[16] != 3)
      {
        errx(65, "Invalid cryptex format.");
      }
    }

    img4_chip_select_personalized_ap();
    goto LABEL_215;
  }

LABEL_217:
  if ((__dst[35] & 0x100000000) != 0)
  {
    __dst[19] &= ~0x20000uLL;
    LODWORD(__dst[34]) = __dst[36];
  }

  if (v147[4])
  {
    v125 = v147[4];
    memcpy(&__dst[17], (v125 + 24), 0x90uLL);
    if (v150)
    {
      warnx("overriding supplied device identity with identity for device [udid %s]", *(v125 + 168));
    }
  }

  if ((__dst[19] & 6) != 0)
  {
    if (v150)
    {
      errx(64, "must provide either a complete set of device identifiers at the command line or provide no identifiersto create with generic device build identity if not operating on a connected device");
    }

    sub_1000483C8(1uLL, "will omit Ap params from build identity", v74, v75, v76, v77, v78, v79, v102);
    __dst[0] |= 2uLL;
  }

  if (__dst[39])
  {
    sub_1000483C8(1uLL, "UseProductClass is 1, omitting Ap params from build identity", v74, v75, v76, v77, v78, v79, v102);
    __dst[0] |= 2uLL;
  }

  if ((__dst[19] & 0x78000) != 0)
  {
    if (v149)
    {
      errx(64, "must provide either a complete set of Cryptex1 identifiers at the command line or provide no identifiersto create with generic Cryptex1 build identity if not operating on a connected device");
    }

    sub_1000483C8(1uLL, "will omit Cryptex1 params from build identity", v74, v75, v76, v77, v78, v79, v102);
    __dst[0] |= 4uLL;
  }

  v155 += optind;
  v156 -= optind;
  if (v156 < 1)
  {
    if (__dst[40])
    {
      errx(64, "a base cryptex must be provided when using --root");
    }

    errx(64, "a disk image path or directory must be provided");
  }

  __dst[1] = *v155;
  v154 = sub_100028B44(__dst);
  return sysexit_np();
}

BOOL sub_100028A88(id a1, const char *a2, void *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5[1] = a1;
  if (xpc_get_type(a3) != &_xpc_type_string)
  {
    errx(64, "REM config plist key '%s' maps to unexpected type.", v7);
  }

  string_ptr = xpc_string_get_string_ptr(v6);
  v5[0] = sub_10004BAF0(string_ptr);
  if (!sub_1000164C0(v5[0]))
  {
    errx(64, "REM config plist key '%s' maps to unexpected value '%s'.", v7, v5[0]);
  }

  sub_100002DE4(v5);
  return 1;
}

uint64_t sub_100028B44(uint64_t a1)
{
  v89 = a1;
  v88 = 0;
  v87 = -1;
  v86 = sub_100048084();
  v85 = v86[584];
  v84 = -1;
  v83 = -1;
  memset(&v130[1], 0, 239);
  v130[0] = *"cryptex.XXXXXX";
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = v89 + 136;
  v78 = 0u;
  v76 = 1uLL;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v77 = 0uLL;
  *&v78 = 0;
  DWORD2(v78) = 0;
  v87 = cryptex_identity_set_chip();
  if (v87)
  {
    warnc(v87, "failed to set host identity to chip");
LABEL_88:
    v90 = v87;
    v55 = 1;
    goto LABEL_89;
  }

  v87 = sub_10004B3B0(v85, v130, &v84);
  if (v87)
  {
    warnc(v87, "mkodtempat [output directory]");
    goto LABEL_88;
  }

  v87 = sub_100029B24();
  if (v87)
  {
    warnc(v87, "create_cryptex_assets");
    goto LABEL_88;
  }

  if ((*v89 & 2) != 0)
  {
    *(&v76 + 1) |= 1uLL;
  }

  if ((*v89 & 4) != 0)
  {
    *(&v76 + 1) &= 0xFFFFFFFFFFFFFFF9;
  }

  v1 = *(v89 + 72);
  v75 = v78;
  v74 = v77;
  v73 = v76;
  v80 = _cryptex_create();
  v2 = *(v80 + 48);
  v87 = cryptex_core_set_assets_from_directory();
  if (v87)
  {
    warnc(v87, "cryptex_core_set_assets_from_directory");
    goto LABEL_88;
  }

  if (*(v89 + 128) == 2)
  {
    v87 = sub_10002A2F4(v89, v80);
    if (v87)
    {
      warnc(v87, "create_cryptex1_properties");
      goto LABEL_88;
    }

    v72 = sub_100048090();
    if (!sub_100006F2C())
    {
      v71 = 0;
      v70 = 22;
      v69 = 0;
      v68 = 2;
      v67 = &_os_log_default;
      v66[7] = 16;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v68 &= ~1u;
      }

      if (v68)
      {
        sub_10000DC54(v66);
        v65 = _os_log_send_and_compose_impl();
        v69 = v65;
      }

      v64 = v69;
      v71 = v69;
      if (strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c", 47))
      {
        v42 = strrchr("/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c", 47) + 1;
      }

      else
      {
        v42 = "/Library/Caches/com.apple.xbs/Sources/libcryptex_executables/cryptexctl/cmd/create.c";
      }

      v63 = sub_1000185D8("_create", v42, 1416, "com.apple.security.cryptex", v70, 0, v71);
      sub_100002DE4(&v71);
      v88 = v63;
      v62 = sub_100048090();
      v41 = 1;
      if (v62[1] <= 1uLL)
      {
        v41 = v62[2] > 1uLL;
      }

      if (v41)
      {
        v8 = 999;
      }

      else
      {
        v8 = 3;
      }

      v61 = v8;
      v40 = 1;
      if (v62[1] <= 1uLL)
      {
        v40 = v62[2] > 1uLL;
      }

      v9 = 2000;
      if (!v40)
      {
        v9 = 200;
      }

      v60 = v9;
      if (v88)
      {
        v39 = sub_100017530(v88, v61, v60);
      }

      else
      {
        v57 = "unknown error";
        v93 = "unknown error";
        v58 = strdup("unknown error");
        v10 = strlen("unknown error");
        v126 = "known-constant allocation";
        v125 = v58;
        v124 = v10;
        if (!v58)
        {
          v123 = 0;
          v143 = 0u;
          v142 = 0u;
          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v121 = 0;
          v120 = 3;
          v119 = &_os_log_default;
          v118 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v120 &= ~1u;
          }

          if (v120)
          {
            v37 = v126;
            v38 = v124;
            v11 = __error();
            v12 = strerror(*v11);
            sub_1000031B0(v138, v37, v38, v12);
            v117 = _os_log_send_and_compose_impl();
            v121 = v117;
          }

          v116 = v121;
          v122 = v121;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000293E4);
        }

        v56 = v58;
        v39 = v58;
      }

      v59 = v39;
      warnx("cryptex_is_apfs\n%s", v39);
      sub_100002DE4(&v59);
      v90 = sub_100018A78(v88);
      v55 = 1;
      goto LABEL_89;
    }

    sub_10004860C(0, 1uLL, "sealing...", v3, v4, v5, v6, v7, v25);
    if (v72[1] <= 1uLL)
    {
      v36 = v72[2] != 0;
    }

    v13 = *(v89 + 328);
    v87 = sub_100007174();
    if (v87)
    {
      warnc(v87, "seal cryptex");
      goto LABEL_88;
    }
  }

  v81 = cryptex_bundle_create();
  if (cryptex_bundle_set_cryptex2())
  {
    if (cryptex_bundle_write2())
    {
      v87 = sub_10002A3C8(v89, v130, "cxbd");
      goto LABEL_88;
    }

    v47 = sub_100048090();
    v30 = 1;
    if (v47[1] <= 1uLL)
    {
      v30 = v47[2] > 1uLL;
    }

    if (v30)
    {
      v19 = 999;
    }

    else
    {
      v19 = 3;
    }

    v46 = v19;
    v29 = 1;
    if (v47[1] <= 1uLL)
    {
      v29 = v47[2] > 1uLL;
    }

    v20 = 2000;
    if (!v29)
    {
      v20 = 200;
    }

    v45 = v20;
    if (v88)
    {
      v28 = sub_100017530(v88, v46, v45);
    }

    else
    {
      v91 = "unknown error";
      v43 = strdup("unknown error");
      v21 = strlen("unknown error");
      v104 = "known-constant allocation";
      v103 = v43;
      v102 = v21;
      if (!v43)
      {
        v101 = 0;
        memset(&v131[32], 0, 80);
        v99 = 0;
        v98 = 3;
        v97 = &_os_log_default;
        v96 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v98 &= ~1u;
        }

        if (v98)
        {
          v26 = v104;
          v27 = v102;
          v22 = __error();
          v23 = strerror(*v22);
          sub_1000031B0(v131, v26, v27, v23);
          v95 = _os_log_send_and_compose_impl();
          v99 = v95;
        }

        v94 = v99;
        v100 = v99;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100029A28);
      }

      v28 = v43;
    }

    v44 = v28;
    warnx("cryptex_bundle_write\n%s", v28);
    sub_100002DE4(&v44);
    v90 = sub_100018A78(v88);
    v55 = 1;
  }

  else
  {
    v54 = sub_100048090();
    v35 = 1;
    if (v54[1] <= 1uLL)
    {
      v35 = v54[2] > 1uLL;
    }

    if (v35)
    {
      v14 = 999;
    }

    else
    {
      v14 = 3;
    }

    v53 = v14;
    v34 = 1;
    if (v54[1] <= 1uLL)
    {
      v34 = v54[2] > 1uLL;
    }

    v15 = 2000;
    if (!v34)
    {
      v15 = 200;
    }

    v52 = v15;
    if (v88)
    {
      v33 = sub_100017530(v88, v53, v52);
    }

    else
    {
      v49 = "unknown error";
      v92 = "unknown error";
      v50 = strdup("unknown error");
      v16 = strlen("unknown error");
      v115 = "known-constant allocation";
      v114 = v50;
      v113 = v16;
      if (!v50)
      {
        v112 = 0;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v133 = 0u;
        v110 = 0;
        v109 = 3;
        v108 = &_os_log_default;
        v107 = 16;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v109 &= ~1u;
        }

        if (v109)
        {
          v31 = v115;
          v32 = v113;
          v17 = __error();
          v18 = strerror(*v17);
          sub_1000031B0(v132, v31, v32, v18);
          v106 = _os_log_send_and_compose_impl();
          v110 = v106;
        }

        v105 = v110;
        v111 = v110;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100029758);
      }

      v48 = v50;
      v33 = v50;
    }

    v51 = v33;
    warnx("cryptex_bundle_add_cryptex\n%s", v33);
    sub_100002DE4(&v51);
    v90 = sub_100018A78(v88);
    v55 = 1;
  }

LABEL_89:
  sub_100002DE4(&v82);
  sub_1000038DC(&v83);
  sub_1000038DC(&v84);
  sub_100006B40(&v88);
  return v90;
}

uint64_t sub_100029B24()
{
  v43 = __chkstk_darwin();
  v42 = v0;
  v41 = v1;
  v40 = -1;
  v39 = -1;
  v38 = sub_100048084();
  v37 = v38[584];
  bzero(v53, 0x400uLL);
  memcpy(v52, "mnt.XXXXXX", sizeof(v52));
  v36 = -1;
  memcpy(__dst, "cryptex.XXXXXX", sizeof(__dst));
  v35 = -1;
  v34 = -1;
  v33 = -1;
  memset(&__b, 0, sizeof(__b));
  bzero(v49, 0x848uLL);
  v49[0] = -1;
  v49[1] = -1;
  v31 = 0;
  bzero(v48, 0x400uLL);
  v30 = -1;
  v29 = -1;
  v25 = v43[16];
  switch(v25)
  {
    case 1:
      v28 = &_cryptex_asset_type_cpxd;
      break;
    case 2:
      v28 = &_cryptex_asset_type_gdmg;
      break;
    case 3:
      v28 = &_cryptex_asset_type_pdmg;
      break;
    default:
      errx(65, "Invalid cryptex format.");
  }

  v40 = sub_10004B3B0(v37, __dst, &v35);
  if (v40)
  {
    warnc(v40, "mkodtempat [output directory]");
    goto LABEL_36;
  }

  v40 = sub_10002A750(v43, &v29);
  if (v40)
  {
    warnc(v40, "open mounts directory");
    goto LABEL_36;
  }

  v37 = v29;
  v40 = sub_10004B3B0(v29, v52, &v36);
  if (v40)
  {
    warnc(v40, "mkodtempat [mount point]");
    goto LABEL_36;
  }

  v40 = realpath_np();
  v27 = v40;
  if (v40)
  {
    memset(&v47[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v47, v27);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  sub_10004860C(0, 1uLL, "mounting dmg at: %s", v2, v3, v4, v5, v6, v48);
  v40 = realpath_np();
  v26 = v40;
  if (v40)
  {
    memset(&v46[16], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v46, v26);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  sub_10004860C(0, 1uLL, "output directory: %s", v7, v8, v9, v10, v11, v53);
  v33 = open(v43[1], 0);
  v45 = v33;
  if (v33 < 0)
  {
    v40 = *__error();
    warnc(v40, "open: %s", v43[1]);
    goto LABEL_36;
  }

  v39 = fstat(v33, &__b);
  if (v39 == -1)
  {
    v40 = *__error();
    warnc(v40, "%s fd[%d] : [invalid descriptor]", v43[1], v33);
    goto LABEL_36;
  }

  if ((__b.st_mode & 0xF000) == 0x4000)
  {
    v40 = sub_10002A8FC(v43, &v33, &v34, v50);
    if (v40)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = v33;
    v33 = -1;
  }

  v49[0] = v34;
  v40 = sub_10000C09C(&v36, 0, v49);
  if (v40)
  {
    warnc(v40, "hdi_mount");
  }

  else
  {
    v31 = v49;
    v30 = open(v48, 0x100000);
    v44 = v30;
    if (v30 < 0)
    {
      v40 = *__error();
      warnc(v40, "open: %s", v48);
    }

    else
    {
      sub_10004860C(0, 1uLL, "mounted dmg: mount point = %s, devnode = %s", v12, v13, v14, v15, v16, v48);
      v40 = sub_10002B130(v28, v34, v35, v17, v18, v19, v20, v21);
      if (!v40 && (v43[12] && xpc_BOOL_get_value(v43[12]) || (v40 = sub_10002B168(v43, v30, v35)) == 0))
      {
        v40 = sub_10002B4EC(v43, v35);
        if (!v40)
        {
          *v42 = claimfd_np();
          v22 = strdup(__dst);
          *v41 = v22;
        }
      }
    }
  }

LABEL_36:
  if (v31)
  {
    sub_10002BBAC(v31, v48);
  }

  v24 = v40;
  sub_1000038DC(&v29);
  sub_1000038DC(&v30);
  sub_1000038DC(&v33);
  sub_1000038DC(&v34);
  sub_1000038DC(&v36);
  return v24;
}

uint64_t sub_10002A2F4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = -1;
  v8 = 0;
  v7 = *(a1 + 280);
  if ((*(a1 + 152) & 0x20000) == 0)
  {
    v6 = *(v11 + 272);
  }

  v2 = *(v11 + 312);
  v8 = cryptex_core_cx1_properties_create();
  if (v8)
  {
    v3 = *(v10 + 48);
    cryptex_core_set_cryptex1_properties();
    v9 = 0;
  }

  else
  {
    v9 = 12;
  }

  v5 = v9;
  sub_1000030D0(&v8);
  return v5;
}

uint64_t sub_10002A3C8(uint64_t a1, const char *a2, const char *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = -1;
  v18 = sub_100048084();
  memset(__b, 0, sizeof(__b));
  bzero(v26, 0x400uLL);
  v17 = -1;
  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.%s", *(v22 + 16), v20);
  __snprintf_chk(v26, 0x400uLL, 0, 0x400uLL, "%s/%s", *(v22 + 80), __b);
  v17 = open(*(v22 + 80), 0x100000);
  v24 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    while (1)
    {
      memcpy(__dst, "replaced.XXXXXX", sizeof(__dst));
      v16 = -1;
      v19 = sub_10004AA74(v18[584], v21, v17, __b);
      if (v19)
      {
        if (v19 == 17 || v19 == 66)
        {
          if ((*(v22 + 120) & 1) == 0)
          {
            warnx("cryptex directory exists: %s", v26);
            v15 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "replacing existing directory", v3, v4, v5, v6, v7, v14);
          v19 = sub_10004B3B0(v18[584], __dst, &v16);
          if (v19)
          {
            warnc(v19, "could not move old directory aside");
            v15 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "will rename into: %s", v8, v9, v10, v11, v12, __dst);
          v19 = sub_10004AA74(v17, __b, v16, __b);
          if (v19)
          {
            warnc(v19, "could not rename old directory");
            v15 = 6;
            goto LABEL_16;
          }

          v19 = 35;
        }

        else
        {
          warnc(v19, "renameat_xdev: %s", v26);
        }
      }

      else
      {
        sub_10004860C(0, 1uLL, "cryptex written to: %s", v3, v4, v5, v6, v7, v26);
        v19 = 0;
      }

      v15 = 0;
LABEL_16:
      sub_1000038DC(&v16);
      if (v15 || v19 != 35)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *__error();
  warnc(v19, "open: %s", *(v22 + 80));
LABEL_18:
  v23 = v19;
  sub_1000038DC(&v17);
  return v23;
}

uint64_t sub_10002A750(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  bzero(v9, 0x168uLL);
  bzero(v8, 0x168uLL);
  v8[0] = 32;
  actor = cryptex_subsystem_create_actor();
  v5 = cryptex_actor_connect();
  if (v5)
  {
    warnc(v5, "could not connect to daemon");
  }

  else
  {
    _cryptex_actor_init_invoke_u64();
    daemon_open_mountable_pack();
    v5 = cryptex_actor_trap();
    if (v5)
    {
      warnc(v5, "rpc failed");
    }

    else
    {
      v5 = daemon_open_mountable_reply_unpack();
      if (v5)
      {
        warnc(v5, "bogus daemon reply");
      }

      else
      {
        *v6 = 0;
        v5 = 0;
      }
    }
  }

  v3 = v5;
  sub_100026664(v8);
  sub_100026664(v9);
  sub_1000030D0(&actor);
  return v3;
}

uint64_t sub_10002A8FC(void *a1, uint64_t a2, int *a3, void *a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = -1;
  v17 = 0;
  v16 = -1;
  v15 = sub_100048084();
  v14 = v15[584];
  memcpy(__dst, "dmg.XXXXXX", sizeof(__dst));
  v13 = -1;
  memset(__b, 0, sizeof(__b));
  bzero(__s1, 0x400uLL);
  v18 = sub_10004B3B0(v14, __dst, &v13);
  if (v18)
  {
    warnc(v18, "mkdtempat [dmg directory]");
  }

  else
  {
    v18 = realpath_np();
    v12 = v18;
    if (v18)
    {
      memset(&v60[18], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_100003098(v60, v12);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v16 = __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s-%s", v22[2], v22[3]);
    v59 = v16;
    v58 = 255;
    if (v16 < 0)
    {
      v57 = 0;
      memset(&v67[24], 0, 0x50uLL);
      v55 = 0;
      v54 = 3;
      v53 = &_os_log_default;
      v52 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v54 &= ~1u;
      }

      if (v54)
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_100003120(v67, v5);
        v51 = _os_log_send_and_compose_impl();
        v55 = v51;
      }

      v50 = v55;
      v56 = v55;
      _os_crash_msg();
      __break(1u);
    }

    if (v59 > v58)
    {
      v49 = 0;
      memset(&v66[32], 0, 0x50uLL);
      v47 = 0;
      v46 = 3;
      v45 = &_os_log_default;
      v44 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v46 &= ~1u;
      }

      if (v46)
      {
        sub_100003160(v66, v59, v58);
        v43 = _os_log_send_and_compose_impl();
        v47 = v43;
      }

      v42 = v47;
      v48 = v47;
      _os_crash_msg();
      __break(1u);
    }

    v11 = strnlen(__s1, 0x400uLL);
    v16 = __snprintf_chk(&__s1[v11], 1024 - v11, 0, 0xFFFFFFFFFFFFFFFFLL, "/%s.dmg", __b);
    v41 = v16;
    v40 = 1024 - v11;
    if (v16 < 0)
    {
      v39 = 0;
      memset(&v65[16], 0, 0x50uLL);
      v37 = 0;
      v36 = 3;
      v35 = &_os_log_default;
      v34 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v36 &= ~1u;
      }

      if (v36)
      {
        v6 = __error();
        v7 = strerror(*v6);
        sub_100003120(v65, v7);
        v33 = _os_log_send_and_compose_impl();
        v37 = v33;
      }

      v32 = v37;
      v38 = v37;
      _os_crash_msg();
      __break(1u);
    }

    if (v41 > v40)
    {
      v31 = 0;
      memset(&v64[32], 0, 0x50uLL);
      v29 = 0;
      v28 = 3;
      v27 = &_os_log_default;
      v26 = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v28 &= ~1u;
      }

      if (v28)
      {
        sub_100003160(v64, v41, v40);
        v25 = _os_log_send_and_compose_impl();
        v29 = v25;
      }

      v24 = v29;
      v30 = v29;
      _os_crash_msg();
      __break(1u);
    }

    if (v22[40])
    {
      v17 = sub_10002BC54(v22, v21, v20, __s1, v19);
    }

    else
    {
      v17 = sub_100044EA0(v22[1], __s1, __b, v19);
    }

    if (v17)
    {
      v18 = sub_100018A78(v17);
      warnc(v18, "failed to create dmg");
    }

    else
    {
      v8 = open(__s1, 0);
      *v20 = v8;
      v23 = *v20;
      if (v23 < 0)
      {
        v18 = *__error();
        warnc(v18, "open: %s", __s1);
      }
    }
  }

  v10 = v18;
  sub_1000038DC(&v13);
  sub_100006B40(&v17);
  return v10;
}

uint64_t sub_10002B168(uint64_t a1, int a2, int a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = -1;
  v20 = -1;
  bzero(v27, 0x400uLL);
  v19 = 0;
  v18 = *(v24 + 344);
  sub_10004860C(0, 1uLL, "creating trust cache...", v3, v4, v5, v6, v7, v14);
  v16 = *(v24 + 128);
  if (v16 == 1)
  {
LABEL_4:
    v17 = &_cryptex_asset_type_ltrs;
    goto LABEL_7;
  }

  if (v16 != 2)
  {
    if (v16 != 3)
    {
      errx(65, "Invalid cryptex format.");
    }

    goto LABEL_4;
  }

  v17 = &_cryptex_asset_type_gtcd;
LABEL_7:
  v21 = realpath_np();
  if (v21)
  {
    memset(&v26[24], 0, 0x50uLL);
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    sub_100003098(v26, v21);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if ((*(v24 + 336) & 1) == 0)
  {
    if (*(v24 + 128) == 2)
    {
      v18 = 5;
    }

    else
    {
      v18 = 3;
    }
  }

  v19 = sub_100011D7C(v18, 0, 0);
  sub_100012044(v19, v27, v24, sub_10002C4B8);
  sub_10004860C(0, 1uLL, "creating trust cache from: %s", v8, v9, v10, v11, v12, v27);
  v20 = openat(v22, v17[5], 513, 438);
  v25 = v20;
  if (v20 < 0)
  {
    v21 = *__error();
    warnc(v21, "openat [trust cache]");
  }

  else
  {
    v21 = sub_100014D78(v19, v20);
    if (v21)
    {
      warnc(v21, "failed to write trust cache");
    }
  }

  sub_1000160F8(&v19);
  v15 = v21;
  sub_1000038DC(&v20);
  return v15;
}

uint64_t sub_10002B4EC(uint64_t a1, int a2)
{
  v48 = a1;
  v47 = a2;
  v46 = -1;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  error = 0;
  v30 = -1;
  memset(__b, 0, sizeof(__b));
  v28 = 0;
  sub_10004860C(0, 1uLL, "creating Info.plist...", v2, v3, v4, v5, v6, v12);
  v18 = *(v48 + 128);
  if (v18 == 1)
  {
LABEL_4:
    v28 = &_cryptex_asset_type_c411;
    goto LABEL_7;
  }

  if (v18 != 2)
  {
    if (v18 != 3)
    {
      errx(65, "Invalid cryptex format.");
    }

    goto LABEL_4;
  }

  v28 = &_cryptex_asset_type_ginf;
LABEL_7:
  v43 = sub_100018314("CFBundleIdentifier");
  v42 = sub_100018314("CFBundleVersion");
  v41 = sub_100018314("Name");
  v40 = sub_100018314("Version");
  v39 = sub_100018314("Publisher");
  v38 = sub_100018314("RequiredMountPath");
  v37 = sub_100018314("CMD");
  v36 = sub_100018314("CMD_ARGS");
  v35 = sub_100018314("ENV");
  v34 = sub_100018314("DeveloperModeRequired");
  v33 = sub_100018314("NoCode");
  v45 = sub_100018434();
  sub_1000184FC(v45, v43, *(v48 + 16));
  sub_1000184FC(v45, v42, *(v48 + 24));
  sub_1000184FC(v45, v41, *(v48 + 16));
  if (*(v48 + 56))
  {
    sub_1000184FC(v45, v40, *(v48 + 56));
  }

  else
  {
    sub_1000184FC(v45, v40, *(v48 + 24));
  }

  sub_1000184FC(v45, v39, *(v48 + 48));
  if (*(v48 + 40))
  {
    sub_1000184FC(v45, v37, *(v48 + 40));
  }

  if (*(v48 + 64))
  {
    v17 = v45;
    v16 = v34;
    value = xpc_BOOL_get_value(*(v48 + 64));
    sub_100018488(v17, v16, value);
  }

  if (*(v48 + 32))
  {
    sub_1000184FC(v45, v38, *(v48 + 32));
  }

  if (*(v48 + 96))
  {
    v15 = v45;
    v14 = v33;
    v8 = xpc_BOOL_get_value(*(v48 + 96));
    sub_100018488(v15, v14, v8);
  }

  if (sub_10002C900(*(v48 + 104), v45, &off_10007C108))
  {
    warnx("failed to populate dependency data from info plist");
  }

  else if (sub_10002C900(*(v48 + 104), v45, &off_10007C128))
  {
    warnx("failed to populate install limits data from info plist");
  }

  else
  {
    if (*(v48 + 104))
    {
      v9 = *(v48 + 104);
      applier = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = 0;
      v25 = sub_10002CD10;
      v26 = &unk_10007C148;
      v27 = v45;
      xpc_dictionary_apply(v9, &applier);
    }

    v44 = v45;
    v32 = CFPropertyListCreateData(0, v45, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v32)
    {
      BytePtr = CFDataGetBytePtr(v32);
      Length = CFDataGetLength(v32);
      sub_10004C3C0(__b, 0, 0, BytePtr, Length);
      v30 = openat(v47, v28[5], 513, 438);
      v50 = v30;
      if (v30 < 0)
      {
        v46 = *__error();
        warnc(v46, "openat [info]");
      }

      else
      {
        v46 = sub_10004B8CC(v30, __b);
        if (v46)
        {
          warnc(v46, "writing property list failed");
        }
      }
    }

    else
    {
      v20 = "unknown failure";
      v19 = 0;
      v21 = CFErrorCopyFailureReason(error);
      if (v21)
      {
        v19 = sub_100018014(v21);
        v20 = v19;
      }

      warnx("property list creation failed: %s", v20);
      sub_100002DE4(&v19);
      sub_100006B40(&v21);
    }
  }

  sub_10004C66C(__b);
  v49 = v46;
  sub_1000038DC(&v30);
  sub_100006B40(&error);
  sub_100006B40(&v32);
  sub_100006B40(&v33);
  sub_100006B40(&v34);
  sub_100006B40(&v35);
  sub_100006B40(&v36);
  sub_100006B40(&v37);
  sub_100006B40(&v38);
  sub_100006B40(&v39);
  sub_100006B40(&v40);
  sub_100006B40(&v41);
  sub_100006B40(&v42);
  sub_100006B40(&v43);
  sub_100006B40(&v45);
  return v49;
}

void sub_10002BBAC(uint64_t a1, const char *a2)
{
  if (unmount(a2, 0x80000))
  {
    warn("failed to unmount disk image during cleanup: %s (not fatal)", a2);
  }

  else if (ioctl(*(a1 + 4), 0x20006415uLL))
  {
    warn("failed to detach virtual device during cleanup: %s (not fatal)", (a1 + 1057));
  }
}

__CFError *sub_10002BC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51 = a1;
  v50 = a2;
  v49 = a3;
  *v48 = a4;
  obj = a5;
  v46 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__b, v51 + 17, sizeof(__b));
  memset(v45, 0, sizeof(v45));
  v82 = __b[7];
  v81 = __b[8];
  v80 = __b[9];
  v79 = __b[32];
  v78 = __b[33];
  v77 = __b[34];
  v76 = __b[35];
  LODWORD(v45[0]) = 1;
  v45[1] = 6;
  v45[2] = *&__b[7];
  v45[3] = __PAIR64__(__b[32], __b[9]);
  v45[4] = *&__b[33];
  LODWORD(v45[5]) = __b[35];
  v44 = 0;
  v43 = 0;
  core = 0;
  image_asset = 0;
  v44 = cryptex_bundle_create_with_directory();
  v27 = v51[9];
  memcpy(v40, v45, sizeof(v40));
  if (cryptex_bundle_copy_cryptex2())
  {
    core = _cryptex_get_core();
    image_asset = cryptex_core_get_image_asset();
    v46 = sub_1000459E4(*(image_asset + 24), v51[40], *v48, obj);
    if (v46)
    {
      v32 = sub_100048090();
      v21 = 1;
      if (v32[1] <= 1uLL)
      {
        v21 = v32[2] > 1uLL;
      }

      if (v21)
      {
        v10 = 999;
      }

      else
      {
        v10 = 3;
      }

      v31 = v10;
      v20 = 1;
      if (v32[1] <= 1uLL)
      {
        v20 = v32[2] > 1uLL;
      }

      v11 = 2000;
      if (!v20)
      {
        v11 = 200;
      }

      v30 = v11;
      if (v46)
      {
        v19 = sub_100017530(v46, v31, v30);
      }

      else
      {
        v52 = "unknown error";
        v28 = strdup("unknown error");
        v12 = strlen("unknown error");
        v64 = "known-constant allocation";
        v63 = v28;
        v62 = v12;
        if (!v28)
        {
          v61 = 0;
          memset(&v84[32], 0, 0x50uLL);
          v59 = 0;
          v58 = 3;
          v57 = &_os_log_default;
          v56 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v58 &= ~1u;
          }

          if (v58)
          {
            v17 = v64;
            v18 = v62;
            v13 = __error();
            v14 = strerror(*v13);
            sub_1000031B0(v84, v17, v18, v14);
            v55 = _os_log_send_and_compose_impl();
            v59 = v55;
          }

          v54 = v59;
          v60 = v59;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002C2E8);
        }

        v19 = v28;
      }

      v29 = v19;
      warnx("failed to create dmg by applying root\n%s", v19);
      sub_100002DE4(&v29);
    }
  }

  else
  {
    v39 = sub_100048090();
    v26 = 1;
    if (v39[1] <= 1uLL)
    {
      v26 = v39[2] > 1uLL;
    }

    if (v26)
    {
      v5 = 999;
    }

    else
    {
      v5 = 3;
    }

    v38 = v5;
    v25 = 1;
    if (v39[1] <= 1uLL)
    {
      v25 = v39[2] > 1uLL;
    }

    v6 = 2000;
    if (!v25)
    {
      v6 = 200;
    }

    v37 = v6;
    if (v46)
    {
      v24 = sub_100017530(v46, v38, v37);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v35 = strdup("unknown error");
      v7 = strlen("unknown error");
      v75 = "known-constant allocation";
      v74 = v35;
      v73 = v7;
      if (!v35)
      {
        v72 = 0;
        memset(&v85[40], 0, 0x50uLL);
        v70 = 0;
        v69 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v69 &= ~1u;
        }

        if (v69)
        {
          v22 = v75;
          v23 = v73;
          v8 = __error();
          v9 = strerror(*v8);
          sub_1000031B0(v85, v22, v23, v9);
          v66 = _os_log_send_and_compose_impl();
          v70 = v66;
        }

        v65 = v70;
        v71 = v70;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002C014);
      }

      v33 = v35;
      v24 = v35;
    }

    v36 = v24;
    warnx("failed to copy cryptex from bundle\n%s", v24);
    sub_100002DE4(&v36);
  }

  v16 = v46;
  sub_1000030D0(&v44);
  return v16;
}

uint64_t sub_10002C37C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -1;
  v11 = -1;
  to_fd = -1;
  sub_10004860C(0, 1uLL, "copying %s...", a4, a5, a6, a7, a8, *(a1 + 40));
  to_fd = openat(v13, *(v15 + 40), 513, 438);
  v16 = to_fd;
  if (to_fd < 0)
  {
    v12 = *__error();
    warnc(v12, "openat [%s]", *(v15 + 40));
  }

  else
  {
    v11 = fcopyfile(v14, to_fd, 0, 0xFu);
    if (v11)
    {
      v12 = *__error();
      warnc(v12, "fcopyfile [%s]", *(v15 + 40));
    }

    else
    {
      v12 = 0;
    }
  }

  v9 = v12;
  sub_1000038DC(&to_fd);
  return v9;
}

void sub_10002C4B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  __s2 = a5;
  v49 = a6;
  i = 0;
  v47 = 0;
  v46 = 0;
  v45 = a6;
  key = 0;
  if (a4)
  {
    if (a4 == 90)
    {
      warnx("mach-o is not signed: %s", v53);
      v43 = 1;
    }

    else
    {
      if (a4 == 92)
      {
        sub_1000483C8(2uLL, "not a mach-o: %s", a3, a4, a5, a6, a7, a8, v53);
      }

      else
      {
        warnc(v51, "failed to add mach-o to trust cache: %s", v53);
      }

      v43 = 1;
    }
  }

  else
  {
    v42 = strstr(v53, __s2) == v53;
    if (!v42)
    {
      v41 = 0;
      memset(&v56[24], 0, 0x50uLL);
      v39 = 0;
      v38 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v38 &= ~1u;
      }

      if (v38)
      {
        sub_100003098(v56, v42);
        v39 = _os_log_send_and_compose_impl();
      }

      v35[1] = v39;
      v40 = v39;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002C6E0);
    }

    key = &v53[strlen(__s2)];
    v46 = sub_10001E620(v52);
    sub_10004860C(0, 1uLL, "added mach-o: %s", v8, v9, v10, v11, v12, key);
    sub_10004860C(0, 1uLL, "  cpu type: %s", v13, v14, v15, v16, v17, v46);
    for (i = *(v52 + 40); ; i = v47)
    {
      v33 = 0;
      if (i)
      {
        v47 = *(i + 8);
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        break;
      }

      v35[0] = 0;
      memset(v55, 0, sizeof(v55));
      sub_10004860C(0, 1uLL, "  identity: %s", v18, v19, v20, v21, v22, *(i + 128));
      sub_100023D24(i, v55);
      sub_10004860C(0, 1uLL, "  cdhash: %s", v23, v24, v25, v26, v27, v55);
      if (*(v45 + 112))
      {
        string = xpc_dictionary_get_string(*(v45 + 112), key);
        if (string)
        {
          v35[0] = sub_10004BAF0(string);
        }
      }

      if (!v35[0])
      {
        v35[0] = sub_10004BAF0(*(v45 + 304));
      }

      sub_100023E48(i, v35[0]);
      sub_10004860C(0, 1uLL, "  exec before/after REM: %s", v28, v29, v30, v31, v32, v35[0]);
      sub_100002DE4(v35);
    }

    v43 = 0;
  }

  sub_100002DE4(&v46);
}

uint64_t sub_10002C900(void *a1, __CFDictionary *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  array = 0;
  count = 0;
  Mutable = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  array = xpc_dictionary_get_array(a1, *(a3 + 16));
  if (array)
  {
    v19 = &_xpc_type_array;
    v36 = array;
    v35 = &_xpc_type_array;
    if (xpc_get_type(array) == &_xpc_type_array)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v18 = v37;
    if (v37)
    {
      count = xpc_array_get_count(array);
      if (count)
      {
        if (count > 8)
        {
          warnx("plist contains too many entries: %lu (max is %d)", count, 8);
          v27 = 22;
          v31 = 22;
          v20 = 1;
        }

        else
        {
          v23 = sub_100018314("CFBundleIdentifier");
          v22 = sub_100018314("CFBundleVersion");
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          for (index = 0; index < count; ++index)
          {
            xdict = xpc_array_get_value(array, index);
            v15 = &_xpc_type_dictionary;
            v33 = xdict;
            v32 = &_xpc_type_dictionary;
            if (xdict && (type = xpc_get_type(v33), type == v32))
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v14 = v34;
            if (!v34)
            {
              warnx("invalid %s entry in plist, not a dictionary", *(v28 + 16));
              v27 = 22;
              v31 = 22;
              v20 = 1;
              goto LABEL_27;
            }

            __s = xpc_dictionary_get_string(xdict, "CFBundleIdentifier");
            string = xpc_dictionary_get_string(xdict, "CFBundleVersion");
            if (!__s || !strlen(__s))
            {
              warnx("missing or zero length entry in dependencies array in plist");
              v27 = 22;
              v31 = 22;
              v20 = 1;
              goto LABEL_27;
            }

            value = sub_100018434();
            theDict = value;
            key = v23;
            v4 = sub_100018314(__s);
            CFDictionarySetValue(theDict, key, v4);
            if (string)
            {
              v8 = value;
              v7 = v22;
              v5 = sub_100018314(string);
              CFDictionarySetValue(v8, v7, v5);
            }

            CFArrayAppendValue(Mutable, value);
            sub_100006B40(&value);
          }

          v21 = sub_100018314(*(v28 + 16));
          CFDictionarySetValue(v29, v21, Mutable);
          v31 = v27;
          v20 = 1;
        }
      }

      else
      {
        v31 = v27;
        v20 = 1;
      }
    }

    else
    {
      warnx("invalid %s entry in plist, not an array", *(v28 + 16));
      v27 = 22;
      v31 = 22;
      v20 = 1;
    }
  }

  else
  {
    v31 = v27;
    v20 = 1;
  }

LABEL_27:
  sub_100006B40(&v21);
  sub_100006B40(&v22);
  sub_100006B40(&v23);
  sub_100006B40(&Mutable);
  return v31;
}

uint64_t sub_10002CD10(__CFDictionary **a1, const char *a2, void *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  key[1] = a1;
  key[0] = sub_100018314(a2);
  if (!CFDictionaryContainsKey(a1[4], key[0]))
  {
    sub_100018570(a1[4], key[0], v6);
  }

  sub_100006B40(key);
  return 1;
}

id sub_10002CDBC(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  context = objc_autoreleasePoolPush();
  v11 = 0;
  v9 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:location format:100 options:0 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v7;
  if (v7)
  {
    v1 = [NSString alloc];
    v8 = [v1 initWithData:v10 encoding:4];
    v5 = v8;
    v2 = v8;
    puts([v5 UTF8String]);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_storeStrong(&v12, v11);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_autoreleasePoolPop(context);
  v4 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v4;
}

id sub_10002CF40(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = 0;
  context = objc_autoreleasePoolPush();
  v11 = 0;
  v9 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:location options:1 error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v7;
  if (v7)
  {
    v1 = [NSString alloc];
    v8 = [v1 initWithData:v10 encoding:4];
    v5 = v8;
    v2 = v8;
    puts([v5 UTF8String]);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_storeStrong(&v12, v11);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_autoreleasePoolPop(context);
  v4 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v4;
}

id sub_10002D09C(void *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  v12 = 0;
  v10 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v13 format:100 options:0 error:&v10];
  objc_storeStrong(&v12, v10);
  v11 = v7;
  if (v7)
  {
    v2 = [NSString alloc];
    v9 = [v2 initWithCString:v15 encoding:4];
    obj = v12;
    v5 = [v11 writeToFile:v9 options:0 error:&obj];
    objc_storeStrong(&v12, obj);
    if (v5)
    {
      objc_storeStrong(&v14, v12);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    objc_storeStrong(&v14, v12);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(context);
  v4 = v14;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  return v4;
}

id sub_10002D234(void *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  v12 = 0;
  v10 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v10];
  objc_storeStrong(&v12, v10);
  v11 = v7;
  if (v7)
  {
    v2 = [NSString alloc];
    v9 = [v2 initWithCString:v15 encoding:4];
    obj = v12;
    v5 = [v11 writeToFile:v9 options:0 error:&obj];
    objc_storeStrong(&v12, obj);
    if (v5)
    {
      objc_storeStrong(&v14, v12);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    objc_storeStrong(&v14, v12);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_autoreleasePoolPop(context);
  v4 = v14;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  return v4;
}

uint64_t sub_10002D3CC(uint64_t a1, int a2, char **a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = -1;
  v12 = a3;
  v11 = -1;
  v10 = 0;
  bzero(&v18, 0x108uLL);
  sub_1000480E0();
  while (1)
  {
    v11 = getopt_long(v15, v12, *(v16 + 32), *(v16 + 40), &v10);
    if (v11 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v17[16], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v17, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002D5ACLL);
    }

    if (v11 == 58)
    {
      errx(64, "missing argument for option: %s", *(*(v16 + 40) + 32 * v10));
    }

    if (v11 == 63)
    {
      errx(64, "unknown option: %s", v14[optind - 1]);
    }

    if (v11 != 105)
    {
      _os_crash();
      __break(1u);
      JUMPOUT(0x10002D648);
    }

    v18 |= 1uLL;
  }

  v14 += optind;
  v15 -= optind;
  if (v15 < 1)
  {
    errx(64, "a cryptex identifier must be provided");
  }

  v3 = *v14;
  __strlcpy_chk();
  sub_10004860C(0, 1uLL, "using cryptex identifier: %s", v4, v5, v6, v7, v8, &v19);
  v13 = sub_10002D734(&v18);
  return sysexit_np();
}

uint64_t sub_10002D734(void *a1)
{
  v29 = a1;
  v28 = 0;
  v27 = -1;
  v26 = cryptex_attr_create();
  v25 = sub_100048090();
  if (v25[4])
  {
    v28 = sub_1000404F0(v25[4]);
    if (v28)
    {
      v24 = sub_100048090();
      v17 = 1;
      if (v24[1] <= 1uLL)
      {
        v17 = v24[2] > 1uLL;
      }

      if (v17)
      {
        v1 = 999;
      }

      else
      {
        v1 = 3;
      }

      v23 = v1;
      v16 = 1;
      if (v24[1] <= 1uLL)
      {
        v16 = v24[2] > 1uLL;
      }

      v2 = 2000;
      if (!v16)
      {
        v2 = 200;
      }

      v22[1] = v2;
      v22[0] = sub_100017530(v28, v23, v2);
      warnx("Uninstall failed.\n%s", v22[0]);
      sub_100002DE4(v22);
    }

    v27 = sub_100018A78(v28);
  }

  else
  {
    if (*v29)
    {
      cryptex_attr_set_uninstall_flags();
    }

    if (cryptex_uninstall())
    {
      sub_10004860C(0, 1uLL, "uninstalled: %s", v3, v4, v5, v6, v7, v29 + 8);
    }

    else
    {
      v21 = sub_100048090();
      v15 = 1;
      if (v21[1] <= 1uLL)
      {
        v15 = v21[2] > 1uLL;
      }

      if (v15)
      {
        v8 = 999;
      }

      else
      {
        v8 = 3;
      }

      v20 = v8;
      v14 = 1;
      if (v21[1] <= 1uLL)
      {
        v14 = v21[2] > 1uLL;
      }

      v9 = 2000;
      if (!v14)
      {
        v9 = 200;
      }

      v19[1] = v9;
      v30 = "unknown error";
      v18 = strdup("unknown error");
      v40 = "known-constant allocation";
      v39 = v18;
      v38 = strlen("unknown error");
      if (!v18)
      {
        v37 = 0;
        memset(&v41[32], 0, 0x50uLL);
        v35 = 0;
        v34 = 3;
        v33 = &_os_log_default;
        v32 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v34 &= ~1u;
        }

        if (v34)
        {
          v10 = __error();
          v11 = strerror(*v10);
          sub_1000031B0(v41, v40, v38, v11);
          v35 = _os_log_send_and_compose_impl();
        }

        v31 = v35;
        v36 = v35;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002DCD0);
      }

      v19[0] = v18;
      warnx("uninstall failed\n%s", v18);
      sub_100002DE4(v19);
    }
  }

  v13 = v27;
  sub_1000030D0(&v26);
  sub_100006B40(&v28);
  return v13;
}

id sub_10002DD94(uint64_t a1)
{
  v18 = a1;
  v17 = objc_opt_new();
  if ((*(v18 + 16) & 1) == 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:*(v18 + 24)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v16);
  }

  if ((*(v18 + 16) & 2) == 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:*(v18 + 28)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v15);
  }

  if ((*(v18 + 16) & 4) == 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:*(v18 + 32)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v14);
  }

  if ((*(v18 + 16) & 0x10) == 0)
  {
    v13 = [NSNumber numberWithUnsignedLongLong:*(v18 + 40)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v13);
  }

  if ((*(v18 + 16) & 8) == 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:*(v18 + 36)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v12);
  }

  if ((*(v18 + 16) & 0x20) == 0)
  {
    v11 = [NSNumber numberWithBool:*(v18 + 48) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v11);
  }

  if ((*(v18 + 16) & 0x40) == 0)
  {
    v10 = [NSNumber numberWithBool:*(v18 + 49) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v10);
  }

  if ((*(v18 + 16) & 0x80) == 0)
  {
    v9 = [NSNumber numberWithBool:*(v18 + 50) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v9);
  }

  if ((*(v18 + 16) & 0x100) == 0)
  {
    v8 = [NSNumber numberWithBool:*(v18 + 51) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v8);
  }

  if ((*(v18 + 16) & 0x400) == 0)
  {
    v7 = [NSNumber numberWithBool:*(v18 + 53) & 1];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v7);
  }

  if ((*(v18 + 16) & 0x8000) == 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:*(v18 + 128)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v6);
  }

  if ((*(v18 + 16) & 0x10000) == 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:*(v18 + 132)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
  }

  if ((*(v18 + 16) & 0x20000) == 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:*(v18 + 136)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v4);
  }

  if ((*(v18 + 16) & 0x40000) == 0)
  {
    v3 = [NSNumber numberWithUnsignedInt:*(v18 + 140)];
    [v17 setObject:? forKeyedSubscript:?];
    _objc_release(v3);
  }

  v2 = v17;
  objc_storeStrong(&v17, 0);
  return v2;
}

uint64_t sub_10002E4D8(uint64_t a1, int a2, char **a3)
{
  v122 = a1;
  v121 = a2;
  v120 = a3;
  v119 = -1;
  v118 = a3;
  v117 = -1;
  v116 = 0;
  bzero(&v124, 0x110uLL);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = getenv("CRYPTEXCTL_CREATE_IDENTITY");
  v128 = ".";
  v129 = 0;
  v130 = 0;
  memset(v131, 0, sizeof(v131));
  LOWORD(v131[0]) = 6;
  HIDWORD(v131[24]) = 48;
  v132 = 0;
  v133 = 0;
  v131[1] = &_img4_chip_ap_sha2_384;
  v131[2] = 491542;
  HIDWORD(v131[4]) = 1;
  LODWORD(v131[3]) = 1;
  LODWORD(v131[6]) = 16843009;
  v114 = 0;
  v113 = sub_100048090();
  sub_1000480E0();
  if (v127)
  {
    sub_1000483C8(1uLL, "identity plist path loaded from environment variable %s: %s", v3, v4, v5, v6, v7, v8, "CRYPTEXCTL_CREATE_IDENTITY");
  }

  while (1)
  {
    v117 = getopt_long(v121, v118, *(v122 + 32), *(v122 + 40), &v116);
    if (v117 == -1)
    {
      break;
    }

    if (optind < 1)
    {
      memset(&v123[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v123, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x10002E7D4);
    }

    switch(v117)
    {
      case ':':
        errx(64, "missing argument for option: %s", *(*(v122 + 40) + 32 * v116));
      case '?':
        errx(64, "unknown option: %s", v120[optind - 1]);
      case 'A':
        if (!strcmp(optarg, "sha1"))
        {
          v131[1] = &_img4_chip_ap_sha1;
          HIDWORD(v131[24]) = 20;
        }

        else
        {
          if (strcmp(optarg, "sha2-384"))
          {
            errx(64, "invalid crypto algorithm: %s", optarg);
          }

          v131[1] = &_img4_chip_ap_sha2_384;
        }

        sub_1000483C8(1uLL, "ALGO = %s", v15, v16, v17, v18, v19, v20, optarg);
        ++v114;
        break;
      case 'B':
        v131[2] &= ~2uLL;
        HIDWORD(v131[3]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", v27, v28, v29, v30, v31, v32, SBYTE4(v131[3]));
        ++v114;
        break;
      case 'C':
        v131[2] &= ~4uLL;
        LODWORD(v131[4]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", v33, v34, v35, v36, v37, v38, v131[4]);
        ++v114;
        break;
      case 'D':
        HIDWORD(v131[4]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %u", v45, v46, v47, v48, v49, v50, SBYTE4(v131[4]));
        ++v114;
        break;
      case 'E':
        v131[2] &= ~0x10uLL;
        v131[5] = strtoull(optarg, 0, 0);
        sub_1000483C8(1uLL, "ECID = %#llx", v39, v40, v41, v42, v43, v44, v131[5]);
        ++v114;
        break;
      case 'F':
        v131[2] &= ~0x8000uLL;
        LODWORD(v131[16]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", v81, v82, v83, v84, v85, v86, v131[16]);
        ++v114;
        break;
      case 'H':
        v124 |= 1uLL;
        break;
      case 'I':
        if (v127)
        {
          sub_1000483C8(1uLL, "overriding identity plist path from environment with provided argument", v9, v10, v11, v12, v13, v14, v112);
        }

        v127 = optarg;
        sub_1000483C8(1uLL, "identity plist path = %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'L':
        v131[2] &= ~0x40000uLL;
        HIDWORD(v131[17]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %#x", v99, v100, v101, v102, v103, v104, SBYTE4(v131[17]));
        ++v114;
        break;
      case 'M':
        v124 |= 2uLL;
        sub_1000483C8(1uLL, "personalizing with AMNM", v9, v10, v11, v12, v13, v14, v112);
        break;
      case 'N':
        __s1 = optarg;
        if (strstr(optarg, "0x") == __s1)
        {
          __s1 += 2;
        }

        if (strlen(__s1) != 96)
        {
          errx(64, "nonce must be exactly %lu bytes", 48);
        }

        sub_100049940(&v131[18] + 2, __s1);
        sub_1000483C8(1uLL, "BNCH = %s", v75, v76, v77, v78, v79, v80, __s1);
        break;
      case 'P':
        LOBYTE(v131[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "CPRO = %u", v51, v52, v53, v54, v55, v56, v131[6] & 1);
        ++v114;
        break;
      case 'R':
        LODWORD(v131[3]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CEPO = %u", v21, v22, v23, v24, v25, v26, v131[3]);
        ++v114;
        break;
      case 'S':
        BYTE1(v131[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "CSEC = %u", v57, v58, v59, v60, v61, v62, BYTE1(v131[6]) & 1);
        ++v114;
        break;
      case 'T':
        v131[2] &= ~0x10000uLL;
        HIDWORD(v131[16]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", v87, v88, v89, v90, v91, v92, SBYTE4(v131[16]));
        ++v114;
        break;
      case 'V':
        v126 = optarg;
        sub_1000483C8(1uLL, "using variant: %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'Y':
        v131[2] &= ~0x20000uLL;
        LODWORD(v131[17]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "STYP = %#x", v93, v94, v95, v96, v97, v98, v131[17]);
        ++v114;
        break;
      case 'c':
        v132 = optarg;
        sub_1000483C8(1uLL, "Copying manifest after successful personalize to %s.", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'd':
        v131[2] &= ~0x1000uLL;
        LODWORD(v131[7]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "ESDM = %#x", v105, v106, v107, v108, v109, v110, v131[7]);
        ++v114;
        break;
      case 'g':
        v133 = optarg;
        sub_1000483C8(1uLL, "Copying GINF after successful personalize to %s.", v9, v10, v11, v12, v13, v14, v132);
        break;
      case 'o':
        v128 = optarg;
        sub_1000483C8(1uLL, "will write cryptex to: %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'p':
        BYTE2(v131[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "EPRO = %u", v63, v64, v65, v66, v67, v68, BYTE2(v131[6]) & 1);
        ++v114;
        break;
      case 'q':
        v124 |= 4uLL;
        break;
      case 'r':
        v129 = 1;
        sub_1000483C8(1uLL, "will replace existing cryptex", v9, v10, v11, v12, v13, v14, v112);
        break;
      case 's':
        BYTE3(v131[6]) = sub_10004B498(optarg, 0, 0) != 0;
        sub_1000483C8(1uLL, "ESEC = %u", v69, v70, v71, v72, v73, v74, BYTE3(v131[6]) & 1);
        ++v114;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x10002EFBCLL);
    }
  }

  if (v127 && v114)
  {
    errx(64, "must provide either a complete set of device identifiers at the command line or a device identity plist, but not both");
  }

  if (v127)
  {
    sub_10002F1C8(&v124);
  }

  if (v113[4])
  {
    memcpy(v131, (v113[4] + 24), 0x90uLL);
  }

  v120 += optind;
  v121 -= optind;
  if (v121 < 1)
  {
    errx(64, "a cryptex bundle path must be provided");
  }

  v125 = *v120;
  v119 = sub_10002F374();
  return sysexit_np();
}

void sub_10002F1C8(uint64_t a1)
{
  v7 = a1;
  v6 = -1;
  v5 = 0;
  v4 = 0;
  v3 = -1;
  memset(__b, 0, sizeof(__b));
  v3 = open(*(v7 + 24), 0);
  v8 = v3;
  if (v3 < 0)
  {
    err(66, "open: %s", *(v7 + 24));
  }

  v6 = sub_10004B524(v3, __b);
  if (v6)
  {
    errc(66, v6, "read");
  }

  v5 = xpc_create_from_plist();
  if (!v5)
  {
    errx(66, "invalid plist: %s", *(v7 + 24));
  }

  v10 = v5;
  v9 = &_xpc_type_dictionary;
  type = xpc_get_type(v5);
  if (type == v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4 = v11;
  if (!v11)
  {
    errx(66, "plist not a dictionary");
  }

  xpc_dictionary_apply_f();
  sub_1000038DC(&v3);
  sub_1000030D0(&v5);
}

uint64_t sub_10002F374()
{
  v289 = __chkstk_darwin();
  v288 = 0;
  v287 = -1;
  v286 = 0;
  v285 = sub_100048084();
  v284 = sub_100048090();
  memset(__b, 0, sizeof(__b));
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = v285[584];
  v279 = 0;
  v278 = 0;
  v277 = 0;
  memset(__src, 0, sizeof(__src));
  v297 = 0;
  v296 = 0;
  v295 = 0;
  LODWORD(__src[0]) = 1;
  memset(&__src[1], 0, 36);
  v275 = 0;
  v274 = -1;
  memcpy(__dst, "cryptex.XXXXXX", sizeof(__dst));
  memcpy(v409, "temp.XXXXXX", sizeof(v409));
  memset(__str, 0, sizeof(__str));
  v273 = -1;
  v272 = -1;
  v271 = (v289 + 200);
  v270 = v289 + 56;
  v269 = 0;
  memset(v268, 0, sizeof(v268));
  v262 = 0;
  v263 = &v262;
  v264 = 0;
  v265 = 40;
  v266 = 0;
  v267 = 0;
  if (*v289)
  {
    v270 = 0;
    v287 = cryptex_identity_set_host_identity();
    if (v287)
    {
      warnc(v287, "failed to set host identity");
LABEL_247:
      object = v263[4];
      if (object)
      {
        os_release(object);
      }

      cf = v263[3];
      if (cf)
      {
        CFRelease(cf);
      }

      sub_10004C66C(v268);
      v290 = v287;
      v209 = 1;
      goto LABEL_252;
    }
  }

  else
  {
    v287 = cryptex_identity_set_chip();
    if (v287)
    {
      warnc(v287, "failed to set host identity to chip");
      goto LABEL_247;
    }
  }

  if ((*v289 & 4) != 0)
  {
    v282 = 1;
  }

  v287 = sub_10004B3B0(v280, __dst, &v273);
  if (v287 || (v287 = sub_10004B3B0(v280, v409, &v272)) != 0)
  {
    warnc(v287, "mkodtempat [output directory]");
    goto LABEL_247;
  }

  v274 = open(*(v289 + 8), 0x100000);
  v294 = v274;
  if (v274 < 0)
  {
    v287 = *__error();
    warn("open: %s", *(v289 + 8));
    goto LABEL_247;
  }

  v279 = cryptex_bundle_create_with_directory();
  v188 = *(v289 + 16);
  memcpy(v261, __src, sizeof(v261));
  if ((cryptex_bundle_copy_cryptex2() & 1) == 0)
  {
    v260 = sub_100048090();
    v187 = 1;
    if (v260[1] <= 1uLL)
    {
      v187 = v260[2] > 1uLL;
    }

    if (v187)
    {
      v0 = 999;
    }

    else
    {
      v0 = 3;
    }

    v259 = v0;
    v186 = 1;
    if (v260[1] <= 1uLL)
    {
      v186 = v260[2] > 1uLL;
    }

    v1 = 2000;
    if (!v186)
    {
      v1 = 200;
    }

    v258 = v1;
    if (v288)
    {
      v185 = sub_100017530(v288, v259, v258);
    }

    else
    {
      __s = "unknown error";
      __s1 = "unknown error";
      v256 = strdup("unknown error");
      v2 = strlen("unknown error");
      v405 = "known-constant allocation";
      v404 = v256;
      v403 = v2;
      if (!v256)
      {
        v402 = 0;
        memset(&v420[40], 0, 0x50uLL);
        v400 = 0;
        v399 = 3;
        oslog = &_os_log_default;
        type = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v399 &= ~1u;
        }

        if (v399)
        {
          v183 = v405;
          v184 = v403;
          v3 = __error();
          v4 = strerror(*v3);
          sub_1000031B0(v420, v183, v184, v4);
          v396 = _os_log_send_and_compose_impl();
          v400 = v396;
        }

        v395 = v400;
        v401 = v400;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10002F8F0);
      }

      v254 = v256;
      v185 = v256;
    }

    v257 = v185;
    warnx("failed to copy cryptex from bundle\n%s", v185);
    sub_100002DE4(&v257);
    v287 = sub_100018A78(v288);
    goto LABEL_247;
  }

  v5 = v277[6];
  if ((cryptex_core_is_cryptex1() & 1) != 0 && v270 && (*(v270 + 16) & 0x78000) != 0)
  {
    errx(64, "must provide either a complete set of Cryptex1 identifiers at the command line or in a plist");
  }

  v6 = v277[6];
  if (((cryptex_core_is_cryptex1() & 1) == 0 || (*(*(v277[6] + 216) + 65) & 1) == 0) && v270 && (*(v270 + 16) & 0x16) != 0)
  {
    errx(64, "must provide either a complete set of device identifiers at the command line or in a plist");
  }

  v275 = cryptex_attr_create();
  if ((*v289 & 2) != 0)
  {
    v7 = v277[6];
    if (cryptex_core_is_cryptex1())
    {
      warnx("Mix-and-match (-M) is ignored for Cryptex1 bundles.");
    }

    else
    {
      v281 |= 1uLL;
    }
  }

  if (*(v284[5] + 8))
  {
    v8 = *(v284[5] + 8);
    cryptex_attr_set_tss_url();
  }

  v283 = *v284[5];
  if (*(v284[5] + 24) && *(v284[5] + 32))
  {
    v9 = *(v284[5] + 24);
    v10 = *(v284[5] + 32);
    cryptex_attr_set_socks_proxy();
  }

  if (*(v284[5] + 40))
  {
    v253 = open(*(v284[5] + 40), 0);
    v293 = v253;
    if (v253 < 0)
    {
      v287 = *__error();
      errc(64, v287, "bad token file");
    }

    v287 = sub_10004B524(v253, v268);
    if (v287)
    {
      errc(64, v287, "failed to read token file");
    }

    cryptex_attr_set_auth_token();
    sub_1000038DC(&v253);
  }

  if ((os_variant_allows_internal_security_policies() & 1) != 0 && (*v284 & 0x10) != 0)
  {
    v281 |= 2uLL;
  }

  if (v284[4])
  {
    v252 = v284[4];
    v288 = sub_100040538(v252, v277, v282, __b);
    if (v288)
    {
      v251 = sub_100048090();
      v182 = 1;
      if (v251[1] <= 1uLL)
      {
        v182 = v251[2] > 1uLL;
      }

      if (v182)
      {
        v11 = 999;
      }

      else
      {
        v11 = 3;
      }

      v250 = v11;
      v181 = 1;
      if (v251[1] <= 1uLL)
      {
        v181 = v251[2] > 1uLL;
      }

      v12 = 2000;
      if (!v181)
      {
        v12 = 200;
      }

      v249 = v12;
      if (v288)
      {
        v180 = sub_100017530(v288, v250, v249);
      }

      else
      {
        v246 = "unknown error";
        v305 = "unknown error";
        v247 = strdup("unknown error");
        v13 = strlen("unknown error");
        v394 = "known-constant allocation";
        v393 = v247;
        v392 = v13;
        if (!v247)
        {
          v391 = 0;
          memset(&v419[32], 0, 0x50uLL);
          v389 = 0;
          v388 = 3;
          v387 = &_os_log_default;
          v386 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v388 &= ~1u;
          }

          if (v388)
          {
            v178 = v394;
            v179 = v392;
            v14 = __error();
            v15 = strerror(*v14);
            sub_1000031B0(v419, v178, v179, v15);
            v385 = _os_log_send_and_compose_impl();
            v389 = v385;
          }

          v384 = v389;
          v390 = v389;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x10002FE34);
        }

        v245 = v247;
        v180 = v247;
      }

      v248 = v180;
      warnx("failed to copy nonce from remote device\n%s", v180);
      sub_100002DE4(&v248);
      goto LABEL_247;
    }

    v271 = __b;
  }

  cryptex_attr_set_personalization_flags();
  cryptex_attr_set_authentication();
  v269 = dispatch_queue_create("cryptexctl.personalize", 0);
  v239 = _NSConcreteStackBlock;
  v240 = 0x40000000;
  v241 = 0;
  v242 = sub_1000329F4;
  v243 = &unk_10007CAA0;
  v244 = &v262;
  v286 = cryptex_personalize2();
  if ((v286 & 1) == 0)
  {
    v287 = sub_100018A78(v288);
    v238 = sub_100048090();
    v177 = 1;
    if (v238[1] <= 1uLL)
    {
      v177 = v238[2] > 1uLL;
    }

    if (v177)
    {
      v21 = 999;
    }

    else
    {
      v21 = 3;
    }

    v237 = v21;
    v176 = 1;
    if (v238[1] <= 1uLL)
    {
      v176 = v238[2] > 1uLL;
    }

    v22 = 2000;
    if (!v176)
    {
      v22 = 200;
    }

    v236 = v22;
    if (v288)
    {
      v175 = sub_100017530(v288, v237, v236);
    }

    else
    {
      v233 = "unknown error";
      v304 = "unknown error";
      v234 = strdup("unknown error");
      v23 = strlen("unknown error");
      v383 = "known-constant allocation";
      v382 = v234;
      v381 = v23;
      if (!v234)
      {
        v380 = 0;
        memset(&v418[32], 0, 0x50uLL);
        v378 = 0;
        v377 = 3;
        v376 = &_os_log_default;
        v375 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v377 &= ~1u;
        }

        if (v377)
        {
          v173 = v383;
          v174 = v381;
          v24 = __error();
          v25 = strerror(*v24);
          sub_1000031B0(v418, v173, v174, v25);
          v374 = _os_log_send_and_compose_impl();
          v378 = v374;
        }

        v373 = v378;
        v379 = v378;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x10003018CLL);
      }

      v232 = v234;
      v175 = v234;
    }

    v235 = v175;
    warnx("failed to initiate cryptex personalization\n%s", v175);
    sub_100002DE4(&v235);
    goto LABEL_247;
  }

  if (v270)
  {
    sub_10004860C(0, 1uLL, "personalizing with identity:", v16, v17, v18, v19, v20, v141);
    sub_10004860C(0, 1uLL, "  BORD = %#x", v26, v27, v28, v29, v30, *(v270 + 28));
    sub_10004860C(0, 1uLL, "  CHIP = %#x", v31, v32, v33, v34, v35, *(v270 + 32));
    sub_10004860C(0, 1uLL, "  SDOM = %#x", v36, v37, v38, v39, v40, *(v270 + 36));
    sub_10004860C(0, 1uLL, "  FCHP = %#x", v41, v42, v43, v44, v45, *(v270 + 128));
    sub_10004860C(0, 1uLL, "  TYPE = %#x", v46, v47, v48, v49, v50, *(v270 + 132));
    sub_10004860C(0, 1uLL, "  STYP = %#x", v51, v52, v53, v54, v55, *(v270 + 136));
    sub_10004860C(0, 1uLL, "  CLAS = %#x", v56, v57, v58, v59, v60, *(v270 + 140));
    sub_10004860C(0, 1uLL, "  ECID = %#llx", v61, v62, v63, v64, v65, *(v270 + 40));
    sub_10004860C(0, 1uLL, "  CPRO = %#x", v66, v67, v68, v69, v70, *(v270 + 48) & 1);
    sub_10004860C(0, 1uLL, "  CSEC = %#x", v71, v72, v73, v74, v75, *(v270 + 49) & 1);
    sub_10004860C(0, 1uLL, "  EPRO = %#x", v76, v77, v78, v79, v80, *(v270 + 50) & 1);
    sub_10004860C(0, 1uLL, "  ESEC = %#x", v81, v82, v83, v84, v85, *(v270 + 51) & 1);
    sub_10004860C(0, 1uLL, "  rsch = %#x", v86, v87, v88, v89, v90, *(v270 + 53) & 1);
  }

  else
  {
    sub_10004860C(0, 1uLL, "personalizing with host identity", v16, v17, v18, v19, v20, v141);
  }

  if ((*v289 & 2) != 0)
  {
    sub_10004860C(0, 1uLL, "personalizing with mix-n-match", v91, v92, v93, v94, v95, v142);
  }

  if (v271)
  {
    sub_100049764(__str, v271 + 2, *(v271 + 13));
    sub_10004860C(0, 1uLL, "personalizing with nonce:", v96, v97, v98, v99, v100, v142);
    sub_10004860C(0, 1uLL, "  %s", v101, v102, v103, v104, v105, __str);
  }

  sub_10004809C();
  if (v263[3])
  {
    v287 = sub_100018A78(v263[3]);
    v231 = sub_100048090();
    v172 = 1;
    if (v231[1] <= 1uLL)
    {
      v172 = v231[2] > 1uLL;
    }

    if (v172)
    {
      v106 = 999;
    }

    else
    {
      v106 = 3;
    }

    v230 = v106;
    v171 = 1;
    if (v231[1] <= 1uLL)
    {
      v171 = v231[2] > 1uLL;
    }

    v107 = 2000;
    if (!v171)
    {
      v107 = 200;
    }

    v229 = v107;
    if (v263[3])
    {
      v170 = sub_100017530(v263[3], v230, v229);
    }

    else
    {
      v226 = "unknown error";
      v303 = "unknown error";
      v227 = strdup("unknown error");
      v108 = strlen("unknown error");
      v372 = "known-constant allocation";
      v371 = v227;
      v370 = v108;
      if (!v227)
      {
        v369 = 0;
        memset(&v417[32], 0, 0x50uLL);
        v367 = 0;
        v366 = 3;
        v365 = &_os_log_default;
        v364 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v366 &= ~1u;
        }

        if (v366)
        {
          v168 = v372;
          v169 = v370;
          v109 = __error();
          v110 = strerror(*v109);
          sub_1000031B0(v417, v168, v169, v110);
          v363 = _os_log_send_and_compose_impl();
          v367 = v363;
        }

        v362 = v367;
        v368 = v367;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100030708);
      }

      v225 = v227;
      v170 = v227;
    }

    v228 = v170;
    warnx("failed to personalize cryptex\n%s", v170);
    sub_100002DE4(&v228);
    goto LABEL_247;
  }

  v278 = cryptex_bundle_create();
  v111 = v263[4];
  if ((cryptex_bundle_set_cryptex2() & 1) == 0)
  {
    v287 = sub_100018A78(v288);
    v224 = sub_100048090();
    v167 = 1;
    if (v224[1] <= 1uLL)
    {
      v167 = v224[2] > 1uLL;
    }

    if (v167)
    {
      v112 = 999;
    }

    else
    {
      v112 = 3;
    }

    v223 = v112;
    v166 = 1;
    if (v224[1] <= 1uLL)
    {
      v166 = v224[2] > 1uLL;
    }

    v113 = 2000;
    if (!v166)
    {
      v113 = 200;
    }

    v222 = v113;
    if (v288)
    {
      v165 = sub_100017530(v288, v223, v222);
    }

    else
    {
      v219 = "unknown error";
      v302 = "unknown error";
      v220 = strdup("unknown error");
      v114 = strlen("unknown error");
      v361 = "known-constant allocation";
      v360 = v220;
      v359 = v114;
      if (!v220)
      {
        v358 = 0;
        memset(&v416[32], 0, 0x50uLL);
        v356 = 0;
        v355 = 3;
        v354 = &_os_log_default;
        v353 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v355 &= ~1u;
        }

        if (v355)
        {
          v163 = v361;
          v164 = v359;
          v115 = __error();
          v116 = strerror(*v115);
          sub_1000031B0(v416, v163, v164, v116);
          v352 = _os_log_send_and_compose_impl();
          v356 = v352;
        }

        v351 = v356;
        v357 = v356;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x1000309CCLL);
      }

      v218 = v220;
      v165 = v220;
    }

    v221 = v165;
    warnx("failed to add cryptex to bundle\n%s", v165);
    sub_100002DE4(&v221);
    goto LABEL_247;
  }

  if (*(v289 + 264))
  {
    v117 = *(v263[4] + 48);
    if (cryptex_core_is_cryptex1())
    {
      v217 = open(*(v289 + 264), 513);
      v292 = v217;
      if (v217 < 0)
      {
        v287 = *__error();
        warn("open: %s", *(v289 + 256));
        v209 = 2;
      }

      else
      {
        v118 = v263[4];
        v288 = cryptex_fcopy_info_plist();
        if (v288)
        {
          v216 = sub_100048090();
          v162 = 1;
          if (v216[1] <= 1uLL)
          {
            v162 = v216[2] > 1uLL;
          }

          if (v162)
          {
            v119 = 999;
          }

          else
          {
            v119 = 3;
          }

          v215 = v119;
          v161 = 1;
          if (v216[1] <= 1uLL)
          {
            v161 = v216[2] > 1uLL;
          }

          v120 = 2000;
          if (!v161)
          {
            v120 = 200;
          }

          v214 = v120;
          if (v288)
          {
            v160 = sub_100017530(v288, v215, v214);
          }

          else
          {
            v211 = "unknown error";
            v301 = "unknown error";
            v212 = strdup("unknown error");
            v121 = strlen("unknown error");
            v350 = "known-constant allocation";
            v349 = v212;
            v348 = v121;
            if (!v212)
            {
              v347 = 0;
              memset(&v415[32], 0, 0x50uLL);
              v345 = 0;
              v344 = 3;
              v343 = &_os_log_default;
              v342 = OS_LOG_TYPE_ERROR;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v344 &= ~1u;
              }

              if (v344)
              {
                v158 = v350;
                v159 = v348;
                v122 = __error();
                v123 = strerror(*v122);
                sub_1000031B0(v415, v158, v159, v123);
                v341 = _os_log_send_and_compose_impl();
                v345 = v341;
              }

              v340 = v345;
              v346 = v345;
              _os_crash_msg();
              __break(1u);
              JUMPOUT(0x100030D00);
            }

            v210 = v212;
            v160 = v212;
          }

          v213 = v160;
          warnx("Nonfatal - failed to write ginf\n%s", v160);
          sub_100002DE4(&v213);
        }

        v209 = 0;
      }

      sub_1000038DC(&v217);
      if (v209)
      {
        goto LABEL_247;
      }
    }

    else
    {
      warn("Will not produce ginf, as this is not a cryptex1 cryptex");
    }
  }

  if (!*(v289 + 256))
  {
    if (cryptex_bundle_write2())
    {
      v287 = sub_100032B68(v289, __dst);
    }

    else
    {
      v287 = sub_100018A78(v288);
      v193 = sub_100048090();
      v147 = 1;
      if (v193[1] <= 1uLL)
      {
        v147 = v193[2] > 1uLL;
      }

      if (v147)
      {
        v135 = 999;
      }

      else
      {
        v135 = 3;
      }

      v192 = v135;
      v146 = 1;
      if (v193[1] <= 1uLL)
      {
        v146 = v193[2] > 1uLL;
      }

      v136 = 2000;
      if (!v146)
      {
        v136 = 200;
      }

      v191 = v136;
      if (v288)
      {
        v145 = sub_100017530(v288, v192, v191);
      }

      else
      {
        v298 = "unknown error";
        v189 = strdup("unknown error");
        v137 = strlen("unknown error");
        v317 = "known-constant allocation";
        v316 = v189;
        v315 = v137;
        if (!v189)
        {
          v314 = 0;
          memset(&v412[32], 0, 0x50uLL);
          v312 = 0;
          v311 = 3;
          v310 = &_os_log_default;
          v309 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v311 &= ~1u;
          }

          if (v311)
          {
            v143 = v317;
            v144 = v315;
            v138 = __error();
            v139 = strerror(*v138);
            sub_1000031B0(v412, v143, v144, v139);
            v308 = _os_log_send_and_compose_impl();
            v312 = v308;
          }

          v307 = v312;
          v313 = v312;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100031600);
        }

        v145 = v189;
      }

      v190 = v145;
      warnx("failed to write cryptex bundle\n%s", v145);
      sub_100002DE4(&v190);
    }

    goto LABEL_247;
  }

  if (strcmp(*(v289 + 32), "."))
  {
    v208 = sub_100048090();
    v157 = 1;
    if (v208[1] <= 1uLL)
    {
      v157 = v208[2] > 1uLL;
    }

    if (v157)
    {
      v124 = 999;
    }

    else
    {
      v124 = 3;
    }

    v207 = v124;
    v156 = 1;
    if (v208[1] <= 1uLL)
    {
      v156 = v208[2] > 1uLL;
    }

    v125 = 2000;
    if (!v156)
    {
      v125 = 200;
    }

    v206 = v125;
    if (v288)
    {
      v155 = sub_100017530(v288, v207, v206);
    }

    else
    {
      v203 = "unknown error";
      v300 = "unknown error";
      v204 = strdup("unknown error");
      v126 = strlen("unknown error");
      v339 = "known-constant allocation";
      v338 = v204;
      v337 = v126;
      if (!v204)
      {
        v336 = 0;
        memset(&v414[32], 0, 0x50uLL);
        v334 = 0;
        v333 = 3;
        v332 = &_os_log_default;
        v331 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v333 &= ~1u;
        }

        if (v333)
        {
          v153 = v339;
          v154 = v337;
          v127 = __error();
          v128 = strerror(*v127);
          sub_1000031B0(v414, v153, v154, v128);
          v330 = _os_log_send_and_compose_impl();
          v334 = v330;
        }

        v329 = v334;
        v335 = v334;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100031004);
      }

      v202 = v204;
      v155 = v204;
    }

    v205 = v155;
    warnx("copy-personalized-manifest prevents writing of personalized cryptex.\n%s", v155);
    sub_100002DE4(&v205);
    goto LABEL_247;
  }

  v201 = open(*(v289 + 256), 513);
  v291 = v201;
  if (v201 < 0)
  {
    v287 = *__error();
    warn("open: %s", *(v289 + 256));
    v209 = 2;
  }

  else
  {
    v129 = v263[4];
    v288 = cryptex_fcopy_personalized_manifest2();
    if (v288)
    {
      v200 = sub_100048090();
      v152 = 1;
      if (v200[1] <= 1uLL)
      {
        v152 = v200[2] > 1uLL;
      }

      if (v152)
      {
        v130 = 999;
      }

      else
      {
        v130 = 3;
      }

      v199 = v130;
      v151 = 1;
      if (v200[1] <= 1uLL)
      {
        v151 = v200[2] > 1uLL;
      }

      v131 = 2000;
      if (!v151)
      {
        v131 = 200;
      }

      v198 = v131;
      if (v288)
      {
        v150 = sub_100017530(v288, v199, v198);
      }

      else
      {
        v195 = "unknown error";
        v299 = "unknown error";
        v196 = strdup("unknown error");
        v132 = strlen("unknown error");
        v328 = "known-constant allocation";
        v327 = v196;
        v326 = v132;
        if (!v196)
        {
          v325 = 0;
          memset(&v413[32], 0, 0x50uLL);
          v323 = 0;
          v322 = 3;
          v321 = &_os_log_default;
          v320 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v322 &= ~1u;
          }

          if (v322)
          {
            v148 = v328;
            v149 = v326;
            v133 = __error();
            v134 = strerror(*v133);
            sub_1000031B0(v413, v148, v149, v134);
            v319 = _os_log_send_and_compose_impl();
            v323 = v319;
          }

          v318 = v323;
          v324 = v323;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100031310);
        }

        v194 = v196;
        v150 = v196;
      }

      v197 = v150;
      warnx("failed to write cryptex bundle\n%s", v150);
      sub_100002DE4(&v197);
      v209 = 2;
    }

    else
    {
      v209 = 0;
    }
  }

  sub_1000038DC(&v201);
  if (!v209 || v209 == 2)
  {
    goto LABEL_247;
  }

LABEL_252:
  _Block_object_dispose(&v262, 8);
  sub_1000030D0(&v269);
  sub_1000038DC(&v272);
  sub_1000038DC(&v273);
  sub_1000038DC(&v274);
  sub_1000030D0(&v275);
  sub_1000030D0(&v277);
  sub_1000030D0(&v278);
  sub_1000030D0(&v279);
  sub_100006B40(&v288);
  return v290;
}

void sub_10003176C(char *a1, void *a2, uint64_t a3)
{
  __s1 = a1;
  xstring = a2;
  v84 = a3;
  v83 = a3;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = *(a3 + 72);
  xBOOL = 0;
  v76 = 0;
  v75 = xpc_copy_clean_description();
  if (!strcmp(__s1, "ALGO"))
  {
    v145 = xstring;
    v144 = &_xpc_type_string;
    if (xstring && xpc_get_type(v145) == v144)
    {
      v146 = v145;
    }

    else
    {
      v146 = 0;
    }

    xBOOL = v146;
    if (v146)
    {
      string_ptr = xpc_string_get_string_ptr(xstring);
      if (!strcmp(string_ptr, "sha1"))
      {
        *(v83 + 64) = &_img4_chip_ap_sha1;
        *(v83 + 252) = 20;
        goto LABEL_158;
      }

      if (!strcmp(string_ptr, "sha2-384"))
      {
        *(v83 + 64) = &_img4_chip_ap_sha2_384;
        *(v83 + 252) = 48;
        goto LABEL_158;
      }
    }

LABEL_145:
    warnx("invalid value for: %s: %s", __s1, v75);
    goto LABEL_158;
  }

  if (!strcmp(__s1, "CEPO"))
  {
    v142 = xstring;
    v141 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v142) == v141)
    {
      v143 = v142;
    }

    else
    {
      v143 = 0;
    }

    xBOOL = v143;
    if (!v143)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 80);
    v79 = 1;
    sub_10004860C(0, 1uLL, "identity plist:CEPO = %s", v3, v4, v5, v6, v7, v75);
  }

  else if (!strcmp(__s1, "BORD"))
  {
    v139 = xstring;
    v138 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v139) == v138)
    {
      v140 = v139;
    }

    else
    {
      v140 = 0;
    }

    xBOOL = v140;
    if (!v140)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 84);
    v79 = 2;
    sub_10004860C(0, 1uLL, "identity plist:BORD = %s", v8, v9, v10, v11, v12, v75);
  }

  else if (!strcmp(__s1, "CHIP"))
  {
    v136 = xstring;
    v135 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v136) == v135)
    {
      v137 = v136;
    }

    else
    {
      v137 = 0;
    }

    xBOOL = v137;
    if (!v137)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 88);
    v79 = 4;
    sub_10004860C(0, 1uLL, "identity plist:CHIP = %s", v13, v14, v15, v16, v17, v75);
  }

  else if (!strcmp(__s1, "ECID"))
  {
    v133 = xstring;
    v132 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v133) == v132)
    {
      v134 = v133;
    }

    else
    {
      v134 = 0;
    }

    xBOOL = v134;
    if (!v134)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v81 = (v83 + 96);
    v79 = 16;
    sub_10004860C(0, 1uLL, "identity plist:ECID = %s", v18, v19, v20, v21, v22, v75);
  }

  else if (!strcmp(__s1, "SDOM"))
  {
    v130 = xstring;
    v129 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v130) == v129)
    {
      v131 = v130;
    }

    else
    {
      v131 = 0;
    }

    xBOOL = v131;
    if (!v131)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 92);
    v79 = 8;
    sub_10004860C(0, 1uLL, "identity plist:SDOM = %s", v23, v24, v25, v26, v27, v75);
  }

  else if (!strcmp(__s1, "CPRO"))
  {
    v127 = xstring;
    v126 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v127) == v126)
    {
      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    xBOOL = v128;
    if (!v128)
    {
      v124 = xstring;
      v123 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v124) == v123)
      {
        v125 = v124;
      }

      else
      {
        v125 = 0;
      }

      xBOOL = v125;
    }

    v80 = (v83 + 104);
    v79 = 32;
    sub_10004860C(0, 1uLL, "identity plist:CPRO = %s", v28, v29, v30, v31, v32, v75);
  }

  else if (!strcmp(__s1, "CSEC"))
  {
    v121 = xstring;
    v120 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v121) == v120)
    {
      v122 = v121;
    }

    else
    {
      v122 = 0;
    }

    xBOOL = v122;
    if (!v122)
    {
      v118 = xstring;
      v117 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v118) == v117)
      {
        v119 = v118;
      }

      else
      {
        v119 = 0;
      }

      xBOOL = v119;
    }

    v80 = (v83 + 105);
    v79 = 64;
    sub_10004860C(0, 1uLL, "identity plist:CSEC = %s", v33, v34, v35, v36, v37, v75);
  }

  else if (!strcmp(__s1, "EPRO"))
  {
    object = xstring;
    v114 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(object) == v114)
    {
      v116 = object;
    }

    else
    {
      v116 = 0;
    }

    xBOOL = v116;
    if (!v116)
    {
      v112 = xstring;
      v111 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v112) == v111)
      {
        v113 = v112;
      }

      else
      {
        v113 = 0;
      }

      xBOOL = v113;
    }

    v80 = (v83 + 106);
    v79 = 128;
    sub_10004860C(0, 1uLL, "identity plist:EPRO = %s", v38, v39, v40, v41, v42, v75);
  }

  else if (!strcmp(__s1, "ESEC"))
  {
    v109 = xstring;
    v108 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v109) == v108)
    {
      v110 = v109;
    }

    else
    {
      v110 = 0;
    }

    xBOOL = v110;
    if (!v110)
    {
      v106 = xstring;
      v105 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v106) == v105)
      {
        v107 = v106;
      }

      else
      {
        v107 = 0;
      }

      xBOOL = v107;
    }

    v80 = (v83 + 107);
    v79 = 256;
    sub_10004860C(0, 1uLL, "identity plist:ESEC = %s", v43, v44, v45, v46, v47, v75);
  }

  else if (!strcmp(__s1, "rsch"))
  {
    v103 = xstring;
    v102 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v103) == v102)
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    xBOOL = v104;
    if (!v104)
    {
      v100 = xstring;
      v99 = &_xpc_type_BOOL;
      if (xstring && xpc_get_type(v100) == v99)
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      xBOOL = v101;
    }

    v80 = (v83 + 109);
    v79 = 1024;
    sub_10004860C(0, 1uLL, "identity plist:rsch = %s", v48, v49, v50, v51, v52, v75);
  }

  else if (!strcmp(__s1, "FCHP"))
  {
    v97 = xstring;
    v96 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v97) == v96)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    xBOOL = v98;
    if (!v98)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 184);
    v79 = 0x8000;
    sub_10004860C(0, 1uLL, "identity plist:FCHP = %s", v53, v54, v55, v56, v57, v75);
  }

  else if (!strcmp(__s1, "TYPE"))
  {
    v94 = xstring;
    v93 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v94) == v93)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    xBOOL = v95;
    if (!v95)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 188);
    v79 = 0x10000;
    sub_10004860C(0, 1uLL, "identity plist:TYPE = %s", v58, v59, v60, v61, v62, v75);
  }

  else if (!strcmp(__s1, "STYP"))
  {
    v91 = xstring;
    v90 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v91) == v90)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    xBOOL = v92;
    if (!v92)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 192);
    v79 = 0x20000;
    sub_10004860C(0, 1uLL, "identity plist:STYP = %s", v63, v64, v65, v66, v67, v75);
  }

  else if (!strcmp(__s1, "CLAS"))
  {
    v88 = xstring;
    v87 = &_xpc_type_uint64;
    if (xstring && xpc_get_type(v88) == v87)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0;
    }

    xBOOL = v89;
    if (!v89)
    {
      v76 = sub_1000328AC(__s1, xstring, v75);
      xBOOL = v76;
    }

    v82 = (v83 + 196);
    v79 = 0x40000;
    sub_10004860C(0, 1uLL, "identity plist:CLAS = %s", v68, v69, v70, v71, v72, v75);
  }

  if (!xBOOL)
  {
    goto LABEL_145;
  }

  if (v80)
  {
    if (xpc_get_type(xBOOL) == &_xpc_type_BOOL)
    {
      *v80 = xpc_BOOL_get_value(xBOOL);
    }

    else
    {
      *v80 = xpc_uint64_get_value(xBOOL) != 0;
    }

    *(v83 + 72) = v78 & ~v79;
  }

  else if (v82)
  {
    value = xpc_uint64_get_value(xBOOL);
    if (value <= 0xFFFFFFFF)
    {
      *v82 = value;
    }

    else
    {
      warnx("invalid value for: %s: %s", __s1, v75);
    }

    *(v83 + 72) = v78 & ~v79;
  }

  else if (v81)
  {
    *v81 = xpc_uint64_get_value(xBOOL);
    *(v83 + 72) = v78 & ~v79;
  }

LABEL_158:
  sub_100002DE4(&v75);
  sub_1000030D0(&v76);
}

xpc_object_t sub_1000328AC(const char *a1, void *a2, const char *a3)
{
  v6 = 0;
  if (a2 && xpc_get_type(a2) == &_xpc_type_string)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    __str = xpc_string_get_string_ptr(v10);
    *__error() = 0;
    value = strtoull(__str, 0, 0);
    if (*__error())
    {
      warn("invalid value for: %s: %s", a1, a3);
    }

    else
    {
      return xpc_uint64_create(value);
    }
  }

  return v6;
}

void sub_100032A44(void *a1, __CFError *a2, CFTypeRef *a3)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = 0;
  v21 = sub_100048090();
  v20 = 3;
  v19 = 200;
  if (v21[1] > 1uLL || v21[2] > 1uLL)
  {
    v20 = 999;
    v19 = 2000;
  }

  if (v24)
  {
    v22 = sub_100017530(v24, v20, v19);
    sub_10004860C(0, 1uLL, "personalization result: failed", v8, v9, v10, v11, v12, v18);
    sub_10004860C(0, 1uLL, "%s", v13, v14, v15, v16, v17, v22);
  }

  else
  {
    sub_10004860C(0, 1uLL, "personalization result: success", v3, v4, v5, v6, v7, v18);
  }

  *v23 = sub_100018E24(v24);
  v23[1] = os_retain(v25);
  sub_1000480C0();
  sub_100002DE4(&v22);
}

uint64_t sub_100032B68(uint64_t a1, const char *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = -1;
  v18 = sub_100048084();
  memset(__b, 0, sizeof(__b));
  bzero(v25, 0x400uLL);
  v17 = -1;
  v2 = basename(*(v21 + 8));
  __snprintf_chk(__b, 0xFFuLL, 0, 0xFFuLL, "%s.signed", v2);
  __snprintf_chk(v25, 0x400uLL, 0, 0x400uLL, "%s/%s", *(v21 + 32), __b);
  v17 = open(*(v21 + 32), 0x100000);
  v23 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    while (1)
    {
      memcpy(__dst, "replaced.XXXXXX", sizeof(__dst));
      v16 = -1;
      v19 = sub_10004AA74(v18[584], v20, v17, __b);
      if (v19)
      {
        if (v19 == 17 || v19 == 66)
        {
          if ((*(v21 + 40) & 1) == 0)
          {
            warnx("cryptex directory exists: %s", v25);
            v15 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "replacing existing directory", v3, v4, v5, v6, v7, v14);
          v19 = sub_10004B3B0(v18[584], __dst, &v16);
          if (v19)
          {
            warnc(v19, "could not move old directory aside");
            v15 = 6;
            goto LABEL_16;
          }

          sub_10004860C(0, 1uLL, "will rename into: %s", v8, v9, v10, v11, v12, __dst);
          v19 = sub_10004AA74(v17, __b, v16, __b);
          if (v19)
          {
            warnc(v19, "could not rename old directory");
            v15 = 6;
            goto LABEL_16;
          }

          v19 = 35;
        }

        else
        {
          warnc(v19, "renameat_xdev: %s", v25);
        }
      }

      else
      {
        sub_10004860C(0, 1uLL, "cryptex written to: %s", v3, v4, v5, v6, v7, v25);
        v19 = 0;
      }

      v15 = 0;
LABEL_16:
      sub_1000038DC(&v16);
      if (v15 || v19 != 35)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *__error();
  warnc(v19, "open: %s", *(v21 + 32));
LABEL_18:
  v22 = v19;
  sub_1000038DC(&v17);
  return v22;
}

uint64_t sub_100032EE8()
{
  description = collation_get_description();
  if (description)
  {
    return fprintf(__stdoutp, "%s\n", description);
  }

  else
  {
    return fprintf(__stdoutp, "Unable to get description for NULL collation.\n");
  }
}

uint64_t sub_100032F64(uint64_t a1, int a2, char **a3)
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
      JUMPOUT(0x10003312CLL);
    }

    switch(v7)
    {
      case '?':
        errx(64, "unknown option: %s", v10[optind - 1]);
      case 'c':
        v4 |= 1uLL;
        break;
      case 's':
        v4 |= 2uLL;
        v5 = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x1000331C8);
    }
  }

  v10 += optind;
  v11 -= optind;
  v9 = sub_100033248(&v4);
  return sysexit_np();
}

uint64_t sub_100033248(void *a1)
{
  if ((*a1 & 1) == 0 && *a1)
  {
    if ((*a1 & 2) != 0)
    {
      if (a1[1])
      {
        return sub_100033328(a1);
      }

      else
      {
        v2 = 22;
        warnc(22, "No session selected.");
      }
    }

    else
    {
      v2 = 22;
      warnc(22, "Invalid flags.");
    }
  }

  else
  {
    fprintf(__stdoutp, "Collation for current user:\n");
    return sub_100033328(a1);
  }

  return v2;
}

uint64_t sub_100033328(uint64_t a1)
{
  v3 = 0;
  object = 0;
  if (*(a1 + 8))
  {
    if (sub_100025DE4(*(a1 + 8)))
    {
      object = collation_create_for_user();
    }

    else
    {
      v3 = 22;
      warnc(22, "Session %s not found", *(a1 + 8));
    }
  }

  else
  {
    object = collation_create();
  }

  if (object)
  {
    sub_100032EE8();
    os_release(object);
  }

  return v3;
}

uint64_t sub_1000333EC(uint64_t a1, int a2, char *const *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = -1;
  v16 = a3;
  v15 = -1;
  v14 = 0;
  v12 = xmmword_10005BF50;
  v13 = 0;
  sub_1000480E0();
  while (1)
  {
    v15 = getopt_long(v19, v16, *(v20 + 32), *(v20 + 40), &v14);
    if (v15 == -1)
    {
      break;
    }

    v11 = (*(v20 + 40) + 32 * v14);
    v10 = v18[optind - 1];
    v9 = 0;
    if (optind < 1)
    {
      memset(&v21[8], 0, 0x50uLL);
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      sub_1000013C8(v21, optind);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x1000335DCLL);
    }

    switch(v15)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v11);
      case '?':
        errx(64, "unknown option: %s", v10);
      case 'e':
        v17 = sub_100048490(optarg, &v9);
        if (v17)
        {
          errc(64, v17, "invalid certificate epoch: %s", optarg);
        }

        sub_10004860C(0, 1uLL, "certificate epoch: %llu", v3, v4, v5, v6, v7, v9);
        *(&v12 + 1) = v9;
        break;
      case 'u':
        *&v12 = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100033704);
    }
  }

  v18 += optind;
  v19 -= optind;
  if (v19 < 1)
  {
    errx(64, "a certificate must be provided");
  }

  v13 = *v18;
  v17 = sub_1000337B0(&v12);
  return sysexit_np();
}

uint64_t sub_1000337B0(const char **a1)
{
  v24 = a1;
  v23 = -1;
  v22 = sub_100048090();
  v21 = -1;
  memset(__b, 0, sizeof(__b));
  v20 = __b;
  memset(v17, 0, sizeof(v17));
  v18 = v17;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v21 = open(v24[2], 0);
  v25 = v21;
  if (v21 < 0)
  {
    v23 = *__error();
    warnc(v23, "failed to open certificate: %s", v24[2]);
  }

  else
  {
    v23 = sub_10004B524(v21, v20);
    if (v23)
    {
      warnc(v23, "failed to read certificate");
    }

    else
    {
      v16 = sub_10003AC40(v20, 0);
      v23 = sub_10003AE8C(v16);
      if (v23)
      {
        errc(66, v23, "failed to parse certificate: %s", v24[2]);
      }

      v18 = *(v16 + 20);
      if ((*v22 & 0x10) != 0)
      {
        v15 |= 1uLL;
      }

      v14 = cryptex_signing_service_create();
      if (*(v22[5] + 8))
      {
        v1 = *(v22[5] + 8);
        cryptex_signing_service_set_tss_url();
      }

      v2 = *v18;
      v3 = v18[1];
      cryptex_signing_service_set_image_bytes();
      if (*v24)
      {
        v13 = *v24;
        v4 = strlen(*v24);
        cryptex_signing_service_set_image_bytes();
      }

      v23 = cryptex_signing_service_trust();
      if (v23)
      {
        warnc(v23, "failed to trust proposed signing service");
      }

      else
      {
        sub_10004860C(0, 1uLL, "trusted signing service", v5, v6, v7, v8, v9, v11);
      }
    }
  }

  v12 = v23;
  sub_1000030D0(&v14);
  sub_1000038DC(&v21);
  return v12;
}

uint64_t sub_100033A48(uint64_t a1, int a2, char **a3)
{
  v128 = a1;
  v127 = a2;
  v126 = a3;
  v125 = 0;
  v124 = -1;
  v123 = a3;
  v122 = -1;
  v121 = 0;
  memcpy(__dst, &unk_10007D230, sizeof(__dst));
  memset(__b, 0, sizeof(__b));
  __b[0] = 6;
  memcpy(&__dst[7], __b, 0x90uLL);
  __dst[9] = 491534;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = sub_100048090();
  v116 = 1;
  v115 = 1;
  v114 = 97;
  v113 = 0uLL;
  v112 = 0;
  sub_1000480E0();
  __dst[0] = 0;
  __dst[1] = __dst;
  while (1)
  {
    v122 = getopt_long(v127, v123, *(v128 + 32), *(v128 + 40), &v121);
    if (v122 == -1)
    {
      break;
    }

    v111 = (*(v128 + 40) + 32 * v121);
    v110 = v126[optind - 1];
    if (optind < 1)
    {
      v109 = 0;
      memset(&v155[8], 0, 0x50uLL);
      v107 = 0;
      v106 = 3;
      oslog = &_os_log_default;
      type = OS_LOG_TYPE_ERROR;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v106 &= ~1u;
      }

      if (v106)
      {
        sub_1000013C8(v155, optind);
        v107 = _os_log_send_and_compose_impl();
      }

      v103 = v107;
      v108 = v107;
      _os_crash_msg();
      __break(1u);
      JUMPOUT(0x100033CCCLL);
    }

    switch(v122)
    {
      case ':':
        errx(64, "missing argument for option: %s", *v111);
      case '?':
        errx(64, "unknown option: %s", v110);
      case 'A':
        if (!strcmp(optarg, "sha1"))
        {
          __dst[8] = &_img4_chip_ap_sha1;
        }

        else
        {
          if (strcmp(optarg, "sha2-384"))
          {
            errx(64, "invalid crypto algorithm: %s", optarg);
          }

          __dst[8] = &_img4_chip_ap_sha2_384;
        }

        sub_1000483C8(1uLL, "ALGO = %s", v9, v10, v11, v12, v13, v14, optarg);
        break;
      case 'B':
        HIDWORD(__dst[10]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "BORD = %#x", v15, v16, v17, v18, v19, v20, SBYTE4(__dst[10]));
        *&v113 = v113 | 2;
        break;
      case 'C':
        LODWORD(__dst[11]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CHIP = %#x", v21, v22, v23, v24, v25, v26, __dst[11]);
        *&v113 = v113 | 4;
        break;
      case 'D':
        HIDWORD(__dst[11]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "SDOM = %#x", v27, v28, v29, v30, v31, v32, SBYTE4(__dst[11]));
        *&v113 = v113 | 8;
        break;
      case 'E':
        LODWORD(__dst[10]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CEPO = %#x", v33, v34, v35, v36, v37, v38, __dst[10]);
        v114 &= ~1uLL;
        break;
      case 'F':
        LODWORD(__dst[23]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "FCHP = %#x", v51, v52, v53, v54, v55, v56, __dst[23]);
        *(&v113 + 1) |= 0x8000uLL;
        break;
      case 'L':
        HIDWORD(__dst[24]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "CLAS = %#x", v69, v70, v71, v72, v73, v74, SBYTE4(__dst[24]));
        *(&v113 + 1) |= 0x40000uLL;
        break;
      case 'P':
        v116 = sub_10004B498(optarg, 0, 0);
        if (v116 > 1)
        {
          errx(64, "CPRO can only be 0/1");
        }

        LOBYTE(__dst[13]) = v116 != 0;
        sub_1000483C8(1uLL, "CPRO = %#x", v39, v40, v41, v42, v43, v44, v116 != 0);
        v114 &= ~0x20uLL;
        break;
      case 'S':
        v115 = sub_10004B498(optarg, 0, 0);
        if (v115 > 1)
        {
          errx(64, "CSEC can only be 0/1");
        }

        BYTE1(__dst[13]) = v115 != 0;
        sub_1000483C8(1uLL, "CSEC = %#x", v45, v46, v47, v48, v49, v50, v115 != 0);
        v114 &= ~0x40uLL;
        break;
      case 'T':
        HIDWORD(__dst[23]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "TYPE = %#x", v57, v58, v59, v60, v61, v62, SBYTE4(__dst[23]));
        *(&v113 + 1) |= 0x10000uLL;
        break;
      case 'V':
        __dst[6] = optarg;
        sub_1000483C8(1uLL, "variant = %s", v3, v4, v5, v6, v7, v8, optarg);
        break;
      case 'Y':
        LODWORD(__dst[24]) = sub_10004B498(optarg, 0, 0);
        sub_1000483C8(1uLL, "STYP = %#x", v63, v64, v65, v66, v67, v68, __dst[24]);
        *(&v113 + 1) |= 0x20000uLL;
        break;
      case 'c':
        v101 = 16;
        v100 = 1;
        count = 1;
        size = 16;
        v102 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
        v152 = "known-constant allocation";
        v151 = v102;
        v150 = 16;
        if (!v102)
        {
          v149 = 0;
          memset(&v159[40], 0, 0x50uLL);
          v147 = 0;
          v146 = 3;
          v145 = &_os_log_default;
          v144 = OS_LOG_TYPE_ERROR;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v146 &= ~1u;
          }

          if (v146)
          {
            v90 = v152;
            v91 = v150;
            v75 = __error();
            v76 = strerror(*v75);
            sub_1000031B0(v159, v90, v91, v76);
            v143 = _os_log_send_and_compose_impl();
            v147 = v143;
          }

          v142 = v147;
          v148 = v147;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x1000342B0);
        }

        v99 = v102;
        v120 = v102;
        v102[1] = optarg;
        *v120 = 0;
        *__dst[1] = v120;
        __dst[1] = v120;
        break;
      case 'k':
        __dst[4] = optarg;
        break;
      default:
        _os_crash();
        __break(1u);
        JUMPOUT(0x100034368);
    }
  }

  v112 = *(&v113 + 1) | v113;
  __dst[3] = *v126;
  LOBYTE(__dst[26]) = v113 == 0;
  __dst[9] &= ~(*(&v113 + 1) | v113);
  if (!__dst[4])
  {
    errx(64, "a private key must be provided");
  }

  if (!v120)
  {
    errx(64, "a certificate must be provided");
  }

  if (v114)
  {
    LODWORD(__dst[10]) = 1;
  }

  if ((v114 & 0x20) != 0)
  {
    LOBYTE(__dst[13]) = 1;
  }

  if ((v114 & 0x40) != 0)
  {
    BYTE1(__dst[13]) = 1;
  }

  if (v117[4])
  {
    v98 = v117[4];
    memcpy(&__dst[7], (v98 + 24), 0x90uLL);
    if (v112)
    {
      warnx("overriding supplied device identity with identity for device [udid %s]", *(v98 + 168));
    }

    v112 = 14;
  }

  if ((__dst[26] & 1) == 0)
  {
    if (*(&v113 + 1) && (DWORD2(v113) & 0x78000) != 0x78000)
    {
      errx(64, "incomplete set of Cryptex1 identifiers provided (FCHP, TYPE, STYP, CLAS).");
    }

    if (v113 && (v113 & 0xE) != 0xE)
    {
      errx(64, "incomplete set of device identifiers provided. (BORD, CHIP, SDOM).");
    }
  }

  v126 += optind;
  v127 -= optind;
  if (v127 < 1)
  {
    errx(64, "path to .cxbd cryptex bundle must be provided");
  }

  __dst[5] = *v126;
  v97 = open(__dst[5], 0x100000);
  v153 = v97;
  if (v97 < 0)
  {
    v77 = __error();
    errc(66, *v77, "unable to open %s", __dst[5]);
  }

  __dst[25] = cryptex_bundle_create_with_directory();
  if ((cryptex_bundle_copy_build_manifest2() & 1) == 0)
  {
    v96 = sub_100048090();
    v89 = 1;
    if (v96[1] <= 1uLL)
    {
      v89 = v96[2] > 1uLL;
    }

    if (v89)
    {
      v78 = 999;
    }

    else
    {
      v78 = 3;
    }

    v95 = v78;
    v88 = 1;
    if (v96[1] <= 1uLL)
    {
      v88 = v96[2] > 1uLL;
    }

    v79 = 2000;
    if (!v88)
    {
      v79 = 200;
    }

    v94 = v79;
    if (v125)
    {
      v87 = sub_100017530(v125, v95, v94);
    }

    else
    {
      __s1 = "unknown error";
      v92 = strdup("unknown error");
      v80 = strlen("unknown error");
      v141 = "known-constant allocation";
      v140 = v92;
      v139 = v80;
      if (!v92)
      {
        v138 = 0;
        memset(&v158[32], 0, 0x50uLL);
        v136 = 0;
        v135 = 3;
        v134 = &_os_log_default;
        v133 = OS_LOG_TYPE_ERROR;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v135 &= ~1u;
        }

        if (v135)
        {
          v85 = v141;
          v86 = v139;
          v81 = __error();
          v82 = strerror(*v81);
          sub_1000031B0(v158, v85, v86, v82);
          v132 = _os_log_send_and_compose_impl();
          v136 = v132;
        }

        v131 = v136;
        v137 = v136;
        _os_crash_msg();
        __break(1u);
        JUMPOUT(0x100034818);
      }

      v87 = v92;
    }

    v93 = v87;
    warnx("failed to copy build manifest\n%s", v87);
    sub_100002DE4(&v93);
    exit(66);
  }

  v124 = sub_100034A0C(__dst, v119, &v118);
  if (v124)
  {
    errc(66, v124, "failed to find matching build identity");
  }

  if ((v112 & 0x78000) == 0x78000)
  {
    v124 = sub_100035354(v118, &__dst[26] + 1);
    if (v124)
    {
      errc(66, v124, "failed to read ndom handle");
    }
  }

  v124 = sub_10003542C();
  os_release(__dst[25]);
  v84 = sysexit_np();
  sub_100006B40(&v125);
  return v84;
}

uint64_t sub_100034A0C(uint64_t a1, void *a2, xpc_object_t *a3)
{
  v60 = a1;
  v59 = a2;
  v58 = a3;
  string = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  value = 0;
  array = xpc_dictionary_get_array(a2, "BuildIdentities");
  if (!array)
  {
    warnx("unable to find %s in BuildManifest", "BuildIdentities");
    return 2;
  }

  if ((*(v60 + 208) & 1) != 0 && xpc_array_get_count(array))
  {
    *v58 = xpc_array_get_dictionary(array, 0);
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v33 = i;
    count = xpc_array_get_count(array);
    if (v33 >= count)
    {
      return 2;
    }

    v46 = 0;
    v45 = 0;
    xdict = xpc_array_get_dictionary(array, i);
    if (xdict)
    {
      break;
    }

LABEL_69:
    ;
  }

  string = xpc_dictionary_get_string(xdict, "ApBoardID");
  v55 = xpc_dictionary_get_string(xdict, "ApChipID");
  v54 = xpc_dictionary_get_string(xdict, "ApSecurityDomain");
  v52 = xpc_dictionary_get_string(xdict, "Cryptex1,ChipID");
  v51 = xpc_dictionary_get_string(xdict, "Cryptex1,Type");
  v50 = xpc_dictionary_get_string(xdict, "Cryptex1,SubType");
  v49 = xpc_dictionary_get_string(xdict, "Cryptex1,ProductClass");
  value = xpc_dictionary_get_value(xdict, "Cryptex1,NonceDomain");
  if (value && xpc_get_type(value) != &_xpc_type_int64)
  {
    type = xpc_get_type(value);
    name = xpc_type_get_name(type);
    warnx("ndom is of the wrong type: %s", name);
    goto LABEL_69;
  }

  v32 = 0;
  if (string)
  {
    v32 = 0;
    if (v55)
    {
      v32 = v54 != 0;
    }
  }

  v46 = v32;
  v31 = 0;
  if (v52)
  {
    v31 = 0;
    if (v51)
    {
      v31 = 0;
      if (v50)
      {
        v31 = 0;
        if (v49)
        {
          v31 = value != 0;
        }
      }
    }
  }

  v45 = v31;
  if (!v46 && !v45)
  {
    v30 = &v28;
    warnx("Identity %lu lacks a full set of either device-specific or Cryptex1 identifiers: board (%p), chip (%p), security domain (%p), chip_family (%p), type (%p), subtype (%p), class (%p), ndom (%p)", i, string, v55, v54, v52, v51, v50, v49, value);
    goto LABEL_69;
  }

  dictionary = xpc_dictionary_get_dictionary(xdict, "Info");
  if (!dictionary)
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Info", "BuildIdentities", i);
    goto LABEL_69;
  }

  v53 = xpc_dictionary_get_string(dictionary, "Variant");
  if (!v53)
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Variant", "Info", i);
    goto LABEL_69;
  }

  if (v46)
  {
    v42 = sub_10004B498(string, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", string);
      goto LABEL_69;
    }

    v41 = sub_10004B498(v55, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v55);
      goto LABEL_69;
    }

    v40 = sub_10004B498(v54, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v54);
      goto LABEL_69;
    }

    if (*(v60 + 84) != v42)
    {
      LODWORD(v28) = *(v60 + 84);
      v29 = v42;
      sub_1000483C8(1uLL, "BORD %u != %u", v6, v7, v8, v9, v10, v11, v28);
      goto LABEL_69;
    }

    if (*(v60 + 88) != v41)
    {
      LODWORD(v28) = *(v60 + 88);
      v29 = v41;
      sub_1000483C8(1uLL, "CHIP %u != %u", v6, v7, v8, v9, v10, v11, v28);
      goto LABEL_69;
    }

    if (*(v60 + 92) != v40)
    {
      LODWORD(v28) = *(v60 + 92);
      v29 = v40;
      sub_1000483C8(1uLL, "SDOM %u != %u", v6, v7, v8, v9, v10, v11, v28);
      goto LABEL_69;
    }
  }

  if (v45)
  {
    v39 = sub_10004B498(v52, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v52);
      goto LABEL_69;
    }

    v38 = sub_10004B498(v51, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v51);
      goto LABEL_69;
    }

    v37 = sub_10004B498(v50, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v50);
      goto LABEL_69;
    }

    v36 = sub_10004B498(v49, 0, 0);
    if (*__error())
    {
      warn("unable to convert %s to uint32_t", v49);
      goto LABEL_69;
    }

    v35 = 0;
    v12 = xpc_int64_get_value(value);
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v35 = v12;
    if (v20 & 1 | (v12 != v12))
    {
      warn("unable to convert ndom to uint32_t");
      goto LABEL_69;
    }

    if (*(v60 + 184) != v39)
    {
      LODWORD(v28) = *(v60 + 184);
      v29 = v39;
      sub_1000483C8(1uLL, "FCHP %u != %u", v13, v14, v15, v16, v17, v18, v28);
      goto LABEL_69;
    }

    if (*(v60 + 188) != v38)
    {
      LODWORD(v28) = *(v60 + 188);
      v29 = v38;
      sub_1000483C8(1uLL, "TYPE %u != %u", v13, v14, v15, v16, v17, v18, v28);
      goto LABEL_69;
    }

    if (*(v60 + 192) != v37)
    {
      LODWORD(v28) = *(v60 + 192);
      v29 = v37;
      sub_1000483C8(1uLL, "STYP %u != %u", v13, v14, v15, v16, v17, v18, v28);
      goto LABEL_69;
    }

    if (*(v60 + 196) != v36)
    {
      LODWORD(v28) = *(v60 + 196);
      v29 = v36;
      sub_1000483C8(1uLL, "CLAS %u != %u", v13, v14, v15, v16, v17, v18, v28);
      goto LABEL_69;
    }
  }

  if (strcmp(*(v60 + 48), v53))
  {
    v28 = *(v60 + 48);
    v29 = v53;
    sub_1000483C8(1uLL, "VARIANT %s != %s", v21, v22, v23, v24, v25, v26, v28);
    goto LABEL_69;
  }

  if (!xpc_dictionary_get_dictionary(xdict, "Manifest"))
  {
    warnx("unable to find %s key in %s dictionary [%lu]", "Manifest", "BuildIdentities", i);
    goto LABEL_69;
  }

  if (v58)
  {
    *v58 = xdict;
  }

  return 0;
}

uint64_t sub_100035354(void *a1, _DWORD *a2)
{
  object = xpc_dictionary_get_value(a1, "Cryptex1,NonceDomain");
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_int64)
    {
      value = xpc_int64_get_value(object);
      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      *a2 = value;
      if (v4 & 1 | (value != value))
      {
        return 84;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 22;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10003542C()
{
  v31 = __chkstk_darwin();
  v30 = -1;
  object = 0;
  v27 = 0;
  memset(out, 0, sizeof(out));
  memset(__b, 0, sizeof(__b));
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v27 = xpc_dictionary_create_empty();
    if (v27)
    {
      *keys = *off_10007D488;
      values[0] = empty;
      values[1] = v27;
      object = xpc_dictionary_create(keys, values, 2uLL);
      if (object)
      {
        sub_100035958(v31, empty);
        v30 = sub_100035B0C(v31, v27);
        if (v30)
        {
          warnx("unable to fill the objects plist");
        }

        else
        {
          bzero(v35, 0x400uLL);
          v26 = v35;
          uuid_generate_random(out);
          uuid_unparse(out, __b);
          __snprintf_chk(v35, 0x400uLL, 0, 0x400uLL, "/tmp/%s.plist", __b);
          v30 = sub_100035F5C(object, v35);
          if (!v30)
          {
            sub_10004860C(0, 1uLL, "created generate-image4 plist file: %s", v0, v1, v2, v3, v4, v26);
            bzero(v34, 0x400uLL);
            v25 = v34;
            __snprintf_chk(v34, 0x400uLL, 0, 0x400uLL, "/tmp/%s.im4m", __b);
            v30 = sub_100036158(v31, v26, v34);
            if (v30)
            {
              warnx("unable to generate the signed manifest from generate-image4");
            }

            else
            {
              sub_10004860C(0, 1uLL, "created generate-image4 im4m file: %s", v5, v6, v7, v8, v9, v25);
              bzero(v33, 0x400uLL);
              v24 = v33;
              __snprintf_chk(v33, 0x400uLL, 0, 0x400uLL, "%s/Restore", *(v31 + 40));
              v30 = chdir(v33);
              if (v30)
              {
                __assert_rtn("_sign", "sign.c", 881, "err == 0");
              }

              memset(&v23, 0, sizeof(v23));
              v30 = stat("Signatures", &v23);
              if (!v30 || *__error() == 2)
              {
                v22 = v30 == 0;
                bzero(v32, 0x400uLL);
                __snprintf_chk(v32, 0x400uLL, 0, 0x400uLL, "Signatures/%s.im4m", __b);
                v30 = sub_1000366F0(v32, v25, v22);
                if (!v30)
                {
                  sub_10004860C(0, 1uLL, "moved %s to %s", v10, v11, v12, v13, v14, v25);
                  v30 = sub_1000367D4(v31, v32);
                  if (v30)
                  {
                    unlink(v32);
                    if (!v22)
                    {
                      rmdir("Signatures");
                    }
                  }

                  else
                  {
                    v21 = *(v31 + 40);
                    sub_10004860C(0, 0, "successfully created %s.im4m within %s", v15, v16, v17, v18, v19, __b);
                  }
                }
              }

              else
              {
                warn("unable to stat the Signatures directory");
              }
            }
          }
        }
      }

      else
      {
        warn("unable to allocate grand plist");
        v30 = *__error();
      }
    }

    else
    {
      warn("unable to allocate objects plist");
      v30 = *__error();
    }
  }

  else
  {
    warn("unable to allocate manifest plist");
    v30 = *__error();
  }

  if (object)
  {
    xpc_release(object);
  }

  if (empty)
  {
    xpc_release(empty);
  }

  if (v27)
  {
    xpc_release(v27);
  }

  return v30;
}

void sub_100035958(uint64_t a1, void *a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    if ((*(a1 + 72) & 0xELL) == 0)
    {
      xpc_dictionary_set_int64(a2, "BORD_32", *(a1 + 84));
      xpc_dictionary_set_int64(a2, "CHIP_32", *(a1 + 88));
      xpc_dictionary_set_int64(a2, "SDOM_32", *(a1 + 92));
    }

    if ((*(a1 + 72) & 0x78000) == 0)
    {
      xpc_dictionary_set_int64(a2, "fchp_32", *(a1 + 184));
      xpc_dictionary_set_int64(a2, "type_32", *(a1 + 188));
      xpc_dictionary_set_int64(a2, "styp_32", *(a1 + 192));
      xpc_dictionary_set_int64(a2, "clas_32", *(a1 + 196));
      xpc_dictionary_set_int64(a2, "ndom_32", *(a1 + 212));
    }

    xpc_dictionary_set_int64(a2, "CEPO_32", *(a1 + 80));
    xpc_dictionary_set_BOOL(a2, "CPRO", *(a1 + 104) & 1);
    xpc_dictionary_set_BOOL(a2, "CSEC", *(a1 + 105) & 1);
  }

  xpc_dictionary_set_BOOL(a2, "acdc", 1);
}

uint64_t sub_100035B0C(uint64_t a1, void *a2)
{
  v27 = a1;
  v26 = a2;
  v25 = 0;
  v24 = -1;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  v43 = 0;
  v42 = 0;
  v41 = 0;
  LODWORD(__b[0]) = 1;
  memset(&__b[1], 0, 36);
  v24 = cryptex_identity_set_chip();
  if (v24)
  {
    warnc(v24, "failed to set cryptex identity with chip instance.");
    v28 = v24;
    v21 = 1;
  }

  else
  {
    if (*(v27 + 208))
    {
      __b[1] |= 1uLL;
    }

    v13 = *(v27 + 200);
    v14 = *(v27 + 48);
    memcpy(__dst, __b, sizeof(__dst));
    if (cryptex_bundle_copy_cryptex2())
    {
      sub_100036EE4(v27, v26, v23);
      v28 = 0;
      v21 = 1;
    }

    else
    {
      v19 = sub_100048090();
      v12 = 1;
      if (v19[1] <= 1uLL)
      {
        v12 = v19[2] > 1uLL;
      }

      if (v12)
      {
        v2 = 999;
      }

      else
      {
        v2 = 3;
      }

      v18 = v2;
      v11 = 1;
      if (v19[1] <= 1uLL)
      {
        v11 = v19[2] > 1uLL;
      }

      v3 = 2000;
      if (!v11)
      {
        v3 = 200;
      }

      v17 = v3;
      if (v25)
      {
        v10 = sub_100017530(v25, v18, v17);
      }

      else
      {
        v40 = "unknown error";
        v15 = strdup("unknown error");
        v4 = strlen("unknown error");
        v39 = "known-constant allocation";
        v38 = v15;
        v37 = v4;
        if (!v15)
        {
          v36 = 0;
          memset(&v44[40], 0, 0x50uLL);
          v34 = 0;
          v33 = 3;
          v32 = &_os_log_default;
          v31 = 16;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v33 &= ~1u;
          }

          if (v33)
          {
            v8 = v39;
            v9 = v37;
            v5 = __error();
            v6 = strerror(*v5);
            sub_1000031B0(v44, v8, v9, v6);
            v30 = _os_log_send_and_compose_impl();
            v34 = v30;
          }

          v29 = v34;
          v35 = v34;
          _os_crash_msg();
          __break(1u);
          JUMPOUT(0x100035E90);
        }

        v10 = v15;
      }

      v16 = v10;
      warnx("unable to find specified build identity in cryptex bundle\n%s", v10);
      sub_100002DE4(&v16);
      v28 = sub_100018A78(v25);
      v21 = 1;
    }
  }

  sub_1000030D0(&v23);
  sub_100006B40(&v25);
  return v28;
}