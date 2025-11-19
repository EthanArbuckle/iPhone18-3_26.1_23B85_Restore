uint64_t sub_100000C88(uint64_t result)
{
  if (!result)
  {
    sub_1000543CC();
  }

  return result;
}

uint64_t sub_100000CA4(int a1)
{
  if (!a1)
  {
    sub_1000543E8();
  }

  return 0;
}

uint64_t sub_100000CC4()
{
  os_map_str_init();

  return os_map_32_init();
}

_DWORD *sub_100000D0C(const char *a1, unsigned int a2)
{
  v4 = sub_100014514(63 * a2 + 32, 0x7458886BuLL);
  *v4 = sub_100011A04();
  v4[2] = a2;
  *(v4 + 3) = sub_1000166EC(a1);
  v4[5] = 0;
  return v4;
}

void sub_100000D74(uint64_t a1)
{
  while (*(a1 + 16))
  {
    sub_100000E10(a1);
  }

  *(a1 + 20) = 0;
  sub_100011B8C(*a1);
  free(*(a1 + 24));

  free(a1);
}

void sub_100000DD4(uint64_t a1)
{
  while (*(a1 + 16))
  {
    sub_100000E10(a1);
  }

  *(a1 + 20) = 0;
}

double sub_100000E10(uint64_t *a1)
{
  if (!*(a1 + 4))
  {
    sub_100054404();
  }

  v2 = &a1[8 * *(a1 + 3)] - *(a1 + 3);
  v3 = *a1;
  v4 = *(v2 + 32);
  sub_100011B10();
  result = 0.0;
  *(v2 + 79) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  v6 = *(a1 + 4) - 1;
  *(a1 + 3) = (*(a1 + 3) + 1) % *(a1 + 2);
  *(a1 + 4) = v6;
  return result;
}

uint64_t sub_100000E90(_DWORD *a1, unsigned int a2)
{
  if (a1[4] < a2)
  {
    sub_100054404();
  }

  v2 = (a1[3] + a2) % a1[2];
  return &a1[16 * v2 + 8] - v2;
}

unint64_t sub_100000ECC(uint64_t a1, uint64_t a2)
{
  result = os_map_32_count();
  if (result > 0x7CF)
  {
    return result;
  }

  result = os_map_str_count();
  if (result)
  {
    if (a2)
    {
LABEL_5:
      if (os_map_32_find())
      {
        sub_1000441E0("launch_service_stats_record_spawn() must not be called twice with the same pid (%d)", a1);
      }

      return _os_map_32_insert(&unk_10007DE10, a1, a2);
    }

LABEL_13:
    sub_1000441E0("launch_service_stats_record_spawn() must not be called with a zero timestamp");
  }

  if (dword_10007DE28 == 500)
  {
    os_map_32_destroy();
    result = os_map_32_init();
    ++dword_10007DE28;
    return result;
  }

  if (dword_10007DE28 <= 0x1F3)
  {
    ++dword_10007DE28;
    if (a2)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  return result;
}

size_t sub_100000FF0(size_t result, int a2, const char *a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, int a9, int a10, int a11, __int16 a12, int a13, int a14)
{
  if (a5)
  {
    v20 = result;
    v21 = *(result + 16);
    v22 = *(result + 8);
    if (v21 == v22)
    {
      v23 = a3;
      sub_100000E10(result);
      a3 = v23;
      v21 = *(v20 + 16);
      ++*(v20 + 20);
      v22 = *(v20 + 8);
    }

    if (v21 >= v22)
    {
      sub_100054404();
    }

    v24 = (*(v20 + 12) + v21) % v22;
    v25 = v20 - v24 + (v24 << 6);
    result = sub_100011A4C(*v20, a3);
    *(v25 + 32) = result;
    *(v25 + 40) = a5;
    *(v25 + 56) = a2;
    *(v25 + 60) = a4;
    *(v25 + 48) = a6;
    *(v25 + 64) = a7;
    *(v25 + 65) = a8;
    *(v25 + 73) = a9;
    *(v25 + 77) = a10;
    *(v25 + 81) = a11;
    *(v25 + 85) = a12;
    *(v25 + 91) = a13;
    *(v25 + 87) = a14;
    ++*(v20 + 16);
  }

  return result;
}

uint64_t launch_service_stats_enable(const char *a1, unsigned int a2)
{
  if (os_map_str_find())
  {
    return 17;
  }

  v5 = *(sub_100000D0C(a1, a2) + 3);
  os_map_str_insert();
  return 0;
}

uint64_t launch_service_stats_disable()
{
  v0 = os_map_str_delete();
  if (!v0)
  {
    return 2;
  }

  sub_100000D74(v0);
  return 0;
}

void sub_100001260()
{
  dword_10007D34C = 0;
  dword_10007D364 = 0;
  dword_10007D37C = 0;
}

size_t sub_100001278(int a1, char *__s)
{
  v4 = &off_10007D350;
  v5 = 3;
  while (*(v4 - 2) != a1)
  {
    v4 += 3;
    if (!--v5)
    {
      sub_1000441E0("unrecognized launch diagnostic thread type: %u", a1);
    }
  }

  v6 = atomic_fetch_add_explicit(v4 - 1, 1u, memory_order_relaxed) + 1;
  v7 = *(v4 + 2);
  if (v6 > v7)
  {
    sub_10004749C(4, "Exceeded max diagnostic thread count for type %s (%u)", *v4, v7);
    v8 = 0;
    atomic_fetch_add_explicit(v4 - 1, 0xFFFFFFFF, memory_order_relaxed);
    return v8;
  }

  v9 = strlen(__s);
  v10 = v9 + 16;
  v11 = v9 >= 0xFFFFFFFFFFFFFFF0;
  result = v9 + 17;
  v13 = ((v10 == -1) << 63) >> 63 != (v10 == -1);
  if (!v11 && !v13)
  {
    v8 = sub_100014514(result, 0x36E0A275uLL);
    *v8 = dispatch_semaphore_create(0);
    v8[2] = a1;
    v14 = strlen(__s);
    memcpy(v8 + 3, __s, v14);
    memset(&v17, 0, sizeof(v17));
    if (pthread_attr_init(&v17))
    {
      sub_100054420();
    }

    if (pthread_attr_setdetachstate(&v17, 2))
    {
      sub_100054420();
    }

    v16 = 0;
    v15 = pthread_create(&v16, &v17, sub_1000014C8, v8);
    if (pthread_attr_destroy(&v17))
    {
      sub_100054420();
    }

    if (v15)
    {
      sub_100001448(v8);
      return 0;
    }

    return v8;
  }

  __break(1u);
  return result;
}

void sub_100001448(uint64_t a1)
{
  v2 = &dword_10007D34C;
  v3 = 3;
  while (*(v2 - 1) != *(a1 + 8))
  {
    v2 += 6;
    if (!--v3)
    {
      sub_1000441E0("unrecognized launch diagnostic thread type: %u", *(a1 + 8));
    }
  }

  dispatch_release(*a1);
  free(a1);
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
}

uint64_t sub_1000014C8(dispatch_semaphore_t *a1)
{
  memset(v3, 0, sizeof(v3));
  __strlcpy_chk();
  if (pthread_setname_np(v3))
  {
    sub_100054420();
  }

  dispatch_semaphore_wait(*a1, 0xFFFFFFFFFFFFFFFFLL);
  sub_100001448(a1);
  return 0;
}

void sub_100001564(uint64_t a1, uint64_t (*a2)(const char *, void **))
{
  if (qword_10007DE30)
  {
    sub_100054404();
  }

  if (dword_10007DE38)
  {
    sub_100054404();
  }

  dword_10007DE38 = 1;
  if (getenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE"))
  {

    sub_10004749C(65541, "not setting boot-mode to hw.osenvironment due to USR to boot-mode");
  }

  else
  {
    v5 = 0;
    v3 = a2("hw.osenvironment", &v5);
    v4 = v5;
    if (v3 && v5 && *v5)
    {
      sub_10004749C(65541, "boot-mode set by sysctl: %s", v5);
      sub_100001650(v5);
      dword_10007DE38 = 2;
      v4 = v5;
    }

    free(v4);
  }
}

void sub_100001650(const char *a1)
{
  if (!a1)
  {
    sub_100054404();
  }

  if (dword_10007DE38 >= 2)
  {
    if (dword_10007DE38 != 2)
    {
      sub_1000441E0("Cannot set boot-mode after it has been committed: (%s, %s)", qword_10007DE30, a1);
    }

    if (!qword_10007DE30)
    {
      sub_100054404();
    }

    sub_10004749C(65541, "boot-mode forced to (%s) skipping set: %s", qword_10007DE30, a1);
  }

  else
  {
    free(qword_10007DE30);
    qword_10007DE30 = sub_1000166EC(a1);
  }
}

uint64_t sub_1000016EC(int a1)
{
  if (!a1)
  {
    sub_1000441E0("can't ask for the string for 'none' boot mode!");
  }

  v1 = &dword_10007D398;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      sub_1000441E0("Unknown boot-mode: %d", a1);
    }
  }

  return *(v1 - 1);
}

uint64_t sub_100001750(char *__s1)
{
  if (!__s1)
  {
    sub_1000441E0("empty boot-mode name given");
  }

  v2 = &dword_10007D398;
  v3 = 9;
  while (!sub_100016A6C(__s1, *(v2 - 1)))
  {
    v2 += 4;
    if (!--v3)
    {
      sub_1000441E0("Unknown boot-mode: %s", __s1);
    }
  }

  return *v2;
}

void sub_1000017CC(int a1)
{
  v1 = sub_1000016EC(a1);

  sub_100001650(v1);
}

void sub_1000017F4()
{
  if (dword_10007DE38 == 3)
  {
    sub_100054404();
  }

  dword_10007DE38 = 3;
  sub_10004749C(65541, "boot-mode committed: %s", qword_10007DE30);
}

uint64_t sub_10000184C()
{
  if (dword_10007DE38 != 3)
  {
    sub_100054404();
  }

  return qword_10007DE30;
}

uint64_t sub_10000188C(char *a1)
{
  if (!a1)
  {
    sub_100054404();
  }

  if (dword_10007DE38 != 3)
  {
    sub_100054404();
  }

  result = qword_10007DE30;
  if (qword_10007DE30)
  {
    return strcasecmp(qword_10007DE30, a1) == 0;
  }

  return result;
}

uint64_t sub_1000018D8(int a1)
{
  v1 = sub_1000016EC(a1);

  return sub_10000188C(v1);
}

double xpc_binprefs_alloc()
{
  v0 = sub_100014514(0x24uLL, 0x10000408AA14F5FuLL);
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 0;
  return result;
}

double xpc_binprefs_init(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t xpc_binprefs_add(uint64_t result, int a2, int a3)
{
  v3 = *(result + 32);
  if (v3 >= 4)
  {
    return _os_assumes_log();
  }

  *(result + 4 * v3) = a2;
  *(result + 4 * (*(result + 32))++ + 16) = a3;
  return result;
}

uint64_t xpc_binprefs_cpu_type(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 32) <= a2)
  {
    sub_100054404();
  }

  return *(a1 + 4 * a2);
}

uint64_t xpc_binprefs_cpu_subtype(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 32) <= a2)
  {
    sub_100054404();
  }

  return *(a1 + 4 * a2 + 16);
}

BOOL xpc_binprefs_equal(uint64_t a1, uint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 32);
    if (v5 == *(a2 + 32))
    {
      if (!v5)
      {
        return 1;
      }

      v6 = 0;
      while (1)
      {
        v7 = xpc_binprefs_cpu_type(a1, v6);
        if (v7 != xpc_binprefs_cpu_type(a2, v6))
        {
          break;
        }

        v8 = xpc_binprefs_cpu_subtype(a1, v6);
        if (v8 != xpc_binprefs_cpu_subtype(a2, v6))
        {
          break;
        }

        if (++v6 >= *(a1 + 32))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

char *xpc_binprefs_copy_description(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_10000FC98(0x80uLL);
    sub_10000FD40(v3, "%d: [", v4, v5, v6, v7, v8, v9, *(a1 + 32));
    if (*(a1 + 32))
    {
      v16 = 0;
      do
      {
        if (v16)
        {
          sub_10000FD40(v3, ", ", v10, v11, v12, v13, v14, v15, v26);
        }

        v17 = xpc_binprefs_cpu_type(a1, v16);
        xpc_binprefs_cpu_subtype(a1, v16);
        sub_10000FD40(v3, "%d.%d", v18, v19, v20, v21, v22, v23, v17);
        ++v16;
      }

      while (v16 < *(a1 + 32));
    }

    sub_10000FD40(v3, "]", v10, v11, v12, v13, v14, v15, v26);
    v24 = sub_10000FCFC(v3);
    sub_10000FD04(v3);
    return v24;
  }

  else
  {

    return sub_1000166EC("(null)");
  }
}

uint64_t xpc_binprefs_set_psattr(cpu_type_t *a1, posix_spawnattr_t *a2)
{
  result = posix_spawnattr_setarchpref_np(a2, a1[8], a1, a1 + 4, 0);
  if (result)
  {
    sub_100054420();
  }

  return result;
}

size_t sub_100001BE8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 248);
  v129 = 0;
  v130 = 0;
  v7 = *(a1 + 1320);
  v8 = v7 != 0;
  v56 = v7 == 0;
  v9 = 1;
  if (!v56)
  {
    v9 = 2;
  }

  if ((*(a1 + 1372) + 1) >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(a1 + 904);
  if (v11)
  {
    v12 = sub_1000310B4(v6, v11);
    if (v12)
    {
      v19 = sub_10004BFA4(v12, 1, v13, v14, v15, v16, v17, v18);
      ++v10;
      goto LABEL_11;
    }

    sub_100020018(a1, 3, "Could not find exception endpoint for service: %s", v14, v15, v16, v17, v18, *(a1 + 904));
  }

  v19 = 0;
LABEL_11:
  v128 = 0;
  sub_100033208(v6, &v129, &v130, &v128, v10);
  if (*(a1 + 1320))
  {
    xpc_array_set_mach_send();
    v20 = v128++;
    *(v130 + v20) = 129;
  }

  if ((*(a1 + 1372) + 1) >= 2)
  {
    xpc_array_set_mach_send();
    v23 = v128++;
    *(v130 + v23) = 130;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  else if (v19)
  {
LABEL_15:
    xpc_array_set_mach_send();
    v21 = v128;
    v22 = ++v128;
    *(v130 + v21) = 128;
    goto LABEL_18;
  }

  v22 = v128;
LABEL_18:
  v24 = *(a1 + 592) + 4 * v22;
  for (i = qword_10007F188; i; i = *i)
  {
    v24 += strlen((i + 32)) + 1;
  }

  for (j = qword_10007F190; j; j = *j)
  {
    v24 += strlen((j + 32)) + 1;
  }

  for (k = *(*(a1 + 248) + 96); k; k = *k)
  {
    if (sub_100026FD8())
    {
      v24 += strlen(k + 32) + 1;
    }
  }

  v125 = v24;
  if ((*(a1 + 1346) & 4) != 0)
  {
    if (*(a1 + 1280))
    {
      v28 = sub_10001FB70(a1);
      v29 = strlen(v28);
      v24 = strlen(*(a1 + 1280)) + v24 - v29;
      v125 = v24;
    }

    v30 = *(a1 + 1288);
    if (v30)
    {
      v31 = *(a1 + 428);
      if (v31)
      {
        v32 = *(a1 + 432);
        do
        {
          v33 = *v32++;
          v24 += ~strlen(v33);
          --v31;
        }

        while (v31);
      }

      if (xpc_array_get_count(v30))
      {
        v34 = 0;
        do
        {
          string = xpc_array_get_string(*(a1 + 1288), v34);
          if (string)
          {
            v24 += strlen(string) + 1;
          }

          ++v34;
        }

        while (v34 < xpc_array_get_count(*(a1 + 1288)));
      }

      v125 = v24;
    }

    v36 = *(a1 + 1296);
    if (v36)
    {
      v37 = *(a1 + 440);
      if (v37)
      {
        v24 += ~strlen(v37);
      }

      v125 = v24 + strlen(v36) + 1;
    }

    if (*(a1 + 1304))
    {
      xpc_dictionary_apply_f();
    }

    v38 = *(a1 + 1312);
    if (v38)
    {
      if (*(a1 + 920))
      {
        v125 -= _xpc_spawnattr_binprefs_size(*(a1 + 920));
        v38 = *(a1 + 1312);
      }

      v24 = v125 + _xpc_spawnattr_binprefs_size(v38);
    }

    else
    {
      v24 = v125;
    }
  }

  for (m = *(a1 + 680); m; m = *m)
  {
    v24 += 20;
  }

  v40 = sub_100014514(v24, 0xCCE47B6AuLL);
  *v40 = v24;
  v127 = 0;
  v126 = v24 - 244;
  v41 = *(a1 + 1280);
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v41 = sub_10001FB70(a1);
    v42 = v127;
  }

  v40[1] = v42;
  _xpc_spawnattr_pack_string(v40, &v127, &v126, v41);
  *(v40 + 234) = 0;
  v43 = *(a1 + 624);
  if (v43)
  {
    v40[2] = v127;
    v40[3] = v43;
    _xpc_spawnattr_pack_bytes(v40, &v127, &v126, *(a1 + 616), v43);
  }

  v44 = *(a1 + 1288);
  if (v44)
  {
    count = xpc_array_get_count(v44);
    v40[4] = count;
    if (count)
    {
      v46 = 0;
      v40[5] = v127;
      do
      {
        v47 = xpc_array_get_string(*(a1 + 1288), v46);
        if (v47)
        {
          _xpc_spawnattr_pack_string(v40, &v127, &v126, v47);
        }

        ++v46;
      }

      while (v46 < v40[4]);
    }
  }

  else
  {
    v48 = *(a1 + 428);
    if (v48)
    {
      v49 = 0;
      v50 = v127;
      v40[4] = v48;
      v40[5] = v50;
      do
      {
        _xpc_spawnattr_pack_string(v40, &v127, &v126, *(*(a1 + 432) + 8 * v49++));
      }

      while (v49 < *(a1 + 428));
    }

    else
    {
      v40[4] = 0;
    }
  }

  v51 = *(*(a1 + 248) + 96);
  if (v51)
  {
    v52 = 0;
    do
    {
      v52 += sub_100026FD8();
      v51 = *v51;
    }

    while (v51);
    v53 = v52 != 0;
  }

  else
  {
    v53 = 0;
  }

  v54 = qword_10007F188;
  v55 = *(a1 + 1304);
  if (*(a1 + 1032))
  {
    v56 = 0;
  }

  else
  {
    v56 = qword_10007F190 == 0;
  }

  if (v56 && qword_10007F188 == 0 && v55 == 0 && !v53)
  {
    v40[7] = 0;
  }

  else
  {
    v40[7] = v127;
    if (v55)
    {
      xpc_dictionary_apply_f();
      v54 = qword_10007F188;
    }

    for (; v54; v54 = *v54)
    {
      _xpc_spawnattr_pack_string(v40, &v127, &v126, (v54 + 32));
      ++v40[6];
    }

    for (n = *(a1 + 1024); n; n = *n)
    {
      _xpc_spawnattr_pack_string(v40, &v127, &v126, n + 32);
      ++v40[6];
    }

    for (ii = *(*(a1 + 248) + 96); ii; ii = *ii)
    {
      if (sub_100026FD8())
      {
        _xpc_spawnattr_pack_string(v40, &v127, &v126, ii + 32);
        ++v40[6];
      }
    }

    for (jj = qword_10007F190; jj; jj = *jj)
    {
      _xpc_spawnattr_pack_string(v40, &v127, &v126, (jj + 32));
      ++v40[6];
    }
  }

  v63 = *(a1 + 1312);
  if (v63 || (v63 = *(a1 + 920)) != 0)
  {
    _xpc_spawnattr_binprefs_pack(v40, v63, &v127, &v126);
  }

  else
  {
    v40[9] = 0;
  }

  v64 = *(a1 + 800);
  if (v64)
  {
    v40[10] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v64);
  }

  else
  {
    v40[10] = 0;
  }

  v65 = *(a1 + 808);
  if (v65)
  {
    v40[11] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v65);
  }

  else
  {
    v40[11] = 0;
  }

  if ((*(a1 + 1412) & 2) != 0)
  {
    *(v40 + 26) = *(a1 + 816);
    v66 = 0x4000;
  }

  else
  {
    v66 = 0;
  }

  v67 = *(a1 + 248);
  v40[12] = *(v67 + 56);
  v40[60] = v40[60] & 0xFFF7FFFF | ((*(v67 + 104) & 1) << 19);
  v68 = sub_100026EE8(a1);
  if (v68 != -1)
  {
    v40[60] |= 0x1000000u;
    v40[54] = v68;
  }

  if (sub_100032A18(v6) == &unk_10007D8B8)
  {
    *(v40 + 7) = sub_100032A20(*(a1 + 248));
  }

  v74 = *(a1 + 1296);
  if (v74 || (v74 = *(a1 + 440)) != 0)
  {
    v40[16] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v74);
  }

  else
  {
    v40[16] = 0;
  }

  v75 = *(a1 + 448);
  if (v75)
  {
    v40[17] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v75);
  }

  else
  {
    v40[17] = 0;
  }

  v76 = *(a1 + 456);
  if (v76)
  {
    v40[18] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v76);
  }

  else
  {
    v40[18] = 0;
  }

  v77 = *(a1 + 464);
  if (v77)
  {
    v40[19] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v77);
  }

  else
  {
    v40[19] = 0;
  }

  v78 = *(a1 + 472);
  if (v78)
  {
    v40[20] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v78);
  }

  else
  {
    v40[20] = 0;
  }

  v79 = *(a1 + 480);
  if (v79)
  {
    v40[21] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v79);
  }

  else
  {
    v40[21] = 0;
  }

  v80 = *(a1 + 488);
  if (v80)
  {
    v40[22] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v80);
  }

  else
  {
    v40[22] = 0;
  }

  v81 = *(a1 + 1384);
  if (v81)
  {
    v40[26] = v127;
    _xpc_spawnattr_pack_string(v40, &v127, &v126, v81);
  }

  *(v40 + 14) = *(a1 + 912);
  *(v40 + 200) = *(a1 + 1000);
  v82 = *(a1 + 1344);
  if (!*(a1 + 1344))
  {
    v82 = *(a1 + 932);
  }

  v40[30] = v82;
  v83 = *(a1 + 1336);
  if ((v83 & 0x80000000) != 0)
  {
    v83 = *(a1 + 936);
  }

  v40[31] = v83;
  v84 = *(a1 + 1340);
  if (v84)
  {
    v40[32] = v84;
  }

  else
  {
    v40[32] = sub_100017160(*(a1 + 940), *(a1 + 1212));
    v84 = sub_100017160(*(a1 + 944), *(a1 + 1212));
  }

  v40[33] = v84;
  v85 = *(a1 + 948);
  if ((v85 & 0x80000000) == 0)
  {
    v40[34] = v85;
  }

  *(v40 + 35) = *(a1 + 952);
  v86 = *(a1 + 976);
  *(v40 + 37) = *(a1 + 960);
  *(v40 + 41) = v86;
  sub_100020704(a1, v40, v69, v81, v70, v71, v72, v73, v123);
  v40[49] = sub_100020674(a1);
  v40[48] = sub_10002058C(a1);
  v87 = *(a1 + 1408);
  v88 = (v87 >> 24) & 0x2000000 | v40[60] & 0xF9FFFFFF | (v87 >> 25) & 0x4000000;
  v40[60] = v88;
  v89 = *(a1 + 1036);
  v90 = *(a1 + 1034);
  if (v89 || *(a1 + 1034))
  {
    v88 |= 0x200000u;
    v40[60] = v88;
    v40[57] = v89;
    *(v40 + 232) = v90;
  }

  v40[51] = *(a1 + 928);
  v91 = 1;
  v92 = (a1 + 680);
  do
  {
    v92 = *v92;
    --v91;
  }

  while (v92);
  if (v91)
  {
    v93 = -v91;
    v94 = v127;
    v40[52] = v93;
    v40[53] = v94;
    v95 = *(a1 + 680);
    if (v95)
    {
      v96 = v126;
      do
      {
        v97 = *(v95 + 8);
        v98 = v40 + v94 + 244;
        *v98 = *(v95 + 1);
        *(v98 + 16) = v97;
        v94 += 20;
        v96 -= 20;
        v95 = *v95;
      }

      while (v95);
      v127 = v94;
      v126 = v96;
    }

    if ((v87 & 0x800) == 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    *(v40 + 26) = 0;
    if ((v87 & 0x800) == 0)
    {
LABEL_160:
      v99 = *(a1 + 1346);
      goto LABEL_163;
    }
  }

  v99 = 1;
LABEL_163:
  *(v40 + 108) = v99 & 1;
  v100 = v128;
  v40[56] = v128;
  if (v100)
  {
    v101 = v127;
    v40[55] = v127;
    v102 = v130;
    v103 = v126;
    v104 = 4 * v100;
    do
    {
      v105 = *v102++;
      *(v40 + v101 + 244) = v105;
      v101 += 4;
      v127 = v101;
      --v100;
    }

    while (v100);
    v126 = v103 - v104;
  }

  else
  {
    v40[55] = 0;
  }

  v106 = v87 >> 9;
  v107 = v87 >> 12;
  v108 = (8 * v87) & 0x10 | (v87 >> 12) & 3 | (v87 >> 3) & 0x20 | (v87 >> 25) & 0x800000 | v88 & 0xFF7FE600;
  v109 = *(a1 + 1180) == 11;
  v110 = (v87 >> 3) & 0xC | (v87 >> 11) & 0x100 | (((*(a1 + 368) >> 5) & 1) << 7);
  *(v40 + 233) = *(a1 + 1364);
  v40[60] = v107 & 0x1000 | ((v106 & 1) << 11) | v110 | v108 | (v109 << 6);
  if (sub_100020564(a1) && sub_100020564(a1) != -1)
  {
    v40[60] |= 0x400u;
  }

  v111 = *(a1 + 1408);
  if ((v111 & 0x2000000) != 0 || (*(a1 + 1346) & 0x10) != 0)
  {
    v40[60] |= 0x40000u;
  }

  if ((v111 & 0x80000) != 0)
  {
    if (sub_10004EC38(v41))
    {
      v113 = 512;
    }

    else
    {
      v113 = 0;
    }

    v112 = v40[60] & 0xFFFFFDFF | v113;
    v111 = *(a1 + 1408);
  }

  else
  {
    v112 = v40[60];
  }

  *(v40 + 101) = *(a1 + 1210);
  v40[60] = (v111 >> 12) & 0x400000 | v66 | v112 & 0xFFBEBFFF | (v111 >> 40) & 0x10000;
  v114 = sub_10001FD2C(a1);
  if ((v111 & 0x40000000000000) != 0)
  {
    if (v114)
    {
      sub_100020018(a1, 3, "Conflicting request: resliding disabled, but requesting a shared cache reslide. No reslide will be performed.", v115, v116, v117, v118, v119, v124);
    }

    v121 = v40[60] & 0xF7FFFFFF;
  }

  else
  {
    if (v114)
    {
      v120 = 0x8000000;
    }

    else
    {
      v120 = 0;
    }

    v121 = v40[60] & 0xF7FFFFFF | v120;
  }

  v40[60] = (*(a1 + 1408) >> 18) & 0x20000 | (*(a1 + 1408) >> 21) & 0x100000 | v121 & 0xFFEDFFFF;
  if (sub_100032A18(*(a1 + 248)) == &unk_10007D720)
  {
    v40[60] |= 0x10000000u;
  }

  if (v126 || v127 + 244 != v24)
  {
    sub_1000441E0("failed to marshall spawnattrs: offset = %u, left = %lu, expected = %lu", v127, v126, *(a1 + 592));
  }

  free(v130);
  *a3 = v40;
  *a2 = v129;
  return v24;
}

void *sub_1000027B8(char *a1, xpc_object_t object, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    _xpc_spawnattr_pack_string_fragment(v5, v6, v7, a1);
    _xpc_spawnattr_pack_string_fragment(v5, v6, v7, "=");
    string_ptr = xpc_string_get_string_ptr(object);
    result = _xpc_spawnattr_pack_string(v5, v6, v7, string_ptr);
    ++*(v5 + 24);
  }

  return result;
}

char *sub_100002860(const char *a1, xpc_object_t object, void *a3)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    v7 = strlen(a1);
    result = xpc_string_get_length(object);
    *a3 += &result[v7 + 2];
  }

  return result;
}

void sub_1000028D0(uint64_t a1)
{
  if (*(a1 + 424))
  {
    sub_1000441E0("deallocation of active service");
  }

  if (*(a1 + 24) != -1 || *(a1 + 32) != -1)
  {
    sub_1000441E0("service disposal while still in list");
  }

  if (*(a1 + 40) != -1 || *(a1 + 48) != -1)
  {
    sub_1000441E0("service disposal while in parent instance list");
  }

  if (*(a1 + 512))
  {
    sub_1000441E0("Service: %s has leaked pended requests", (a1 + 1424));
  }

  if (*(a1 + 888))
  {
    sub_100054404();
  }

  if (*(a1 + 136))
  {
    sub_100054404();
  }

  if (*(a1 + 144))
  {
    sub_100054404();
  }

  v2 = *(a1 + 576);
  if (v2 != (a1 + 1424))
  {
    free(v2);
  }

  free(*(a1 + 584));
  sub_10001B690(*(a1 + 16));
  free(*(a1 + 600));
  free(*(a1 + 432));
  free(*(a1 + 440));
  free(*(a1 + 904));
  free(*(a1 + 616));
  free(*(a1 + 472));
  free(*(a1 + 480));
  free(*(a1 + 488));
  free(*(a1 + 448));
  free(*(a1 + 456));
  free(*(a1 + 464));
  free(*(a1 + 800));
  free(*(a1 + 808));
  free(*(a1 + 920));
  free(*(a1 + 1384));
  free(*(a1 + 1392));
  free(*(a1 + 304));
  v3 = *(a1 + 992);
  if (v3)
  {
    j__free(v3);
  }

  v4 = *(a1 + 632);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 640);
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = *(a1 + 648);
  if (v6)
  {
    xpc_release(v6);
  }

  v7 = *(a1 + 656);
  if (v7)
  {
    xpc_release(v7);
  }

  v8 = *(a1 + 664);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(a1 + 496);
  if (v9)
  {
    xpc_release(v9);
  }

  v10 = *(a1 + 504);
  if (v10)
  {
    xpc_release(v10);
  }

  if (*(a1 + 712))
  {
    sub_100002B90(a1);
  }

  while (1)
  {
    v11 = *(a1 + 1024);
    if (!v11)
    {
      break;
    }

    sub_100002BD0(a1, v11);
  }

  while (1)
  {
    v14 = *(a1 + 672);
    if (!v14)
    {
      break;
    }

    v12 = *v14;
    v13 = v14[1];
    if (*v14)
    {
      *(v12 + 8) = v13;
    }

    *v13 = v12;
    free(v14);
  }

  while (1)
  {
    v17 = *(a1 + 680);
    if (!v17)
    {
      break;
    }

    v15 = *v17;
    v16 = v17[1];
    if (*v17)
    {
      *(v15 + 8) = v16;
    }

    *v16 = v15;
    free(v17);
  }

  v18 = *(a1 + 1072);
  if (v18)
  {
    xpc_release(v18);
  }

  v19 = *(a1 + 1080);
  if (v19)
  {
    xpc_release(v19);
  }

  v20 = *(a1 + 1372);
  if (v20 + 1 >= 2 && mach_port_mod_refs(mach_task_self_, v20, 0, -1))
  {
    sub_100054420();
  }

  if (*(a1 + 1400))
  {
    os_map_64_clear();
    v21 = *(a1 + 1400);
    os_map_64_destroy();
    free(*(a1 + 1400));
  }

  sub_100041B8C(a1);
}

void sub_100002B90(uint64_t a1)
{
  v2 = *(a1 + 712);
  if (!v2)
  {
    sub_100054404();
  }

  dispatch_set_context(v2, v2);
  dispatch_source_cancel(*(a1 + 712));
  *(a1 + 712) = 0;
}

void sub_100002BD0(uint64_t a1, char *a2)
{
  --*(a1 + 1032);
  *(a1 + 592) += ~strlen(a2 + 32);
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2)
  {
    *(v3 + 8) = v4;
  }

  *v4 = v3;
  *a2 = -1;
  *(a2 + 1) = -1;

  j__free(a2);
}

void sub_100002C6C(uint64_t a1, char *__s, const char *a3, char a4, int a5)
{
  v8 = 0;
  v6 = sub_10001B708(__s, a3, a5, &v8, a4);
  if (v6)
  {
    v7 = *(a1 + 1024);
    *v6 = v7;
    if (v7)
    {
      *(v7 + 8) = v6;
    }

    *(a1 + 1024) = v6;
    ++*(a1 + 1032);
    *(a1 + 592) += v8;
    *(v6 + 1) = a1 + 1024;
    *(v6 + 2) = a1;
  }
}

uint64_t sub_100002D28(uint64_t a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v6 = *(a1 + 1408);
        if ((v6 & 0x80800000000) != 0)
        {
          if (sub_10000E554(a1 + 376, 31))
          {
            goto LABEL_30;
          }

          v6 = *(a1 + 1408);
        }

        v2 = (v6 >> 45) & 1;
        return v2 & 1;
      }

      if (a2 != 1)
      {
        return v2 & 1;
      }
    }

LABEL_16:
    LODWORD(v2) = (*(a1 + 1413) >> 5) & 1;
    return v2 & 1;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      LOBYTE(v2) = (*(a1 + 1413) & 2) == 0;
      return v2 & 1;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 6:
      LODWORD(v2) = (*(a1 + 1413) >> 1) & 1;
      return v2 & 1;
    case 7:
      v7 = *(a1 + 1000);
      if (!*(a1 + 1000))
      {
        goto LABEL_30;
      }

      if (v7 != 2)
      {
        v8 = sub_100046A64(a1 + 376);
        if (v8)
        {
          v9 = v8;
          if (xpc_get_type(v8) == &_xpc_type_dictionary)
          {
            array = xpc_dictionary_get_array(v9, "com.apple.private.xpc.allowed-launch-types");
            if (xpc_array_get_count(array))
            {
              v11 = 0;
              do
              {
                int64 = xpc_array_get_int64(array, v11);
                LOBYTE(v2) = int64 == v7;
                if (int64 == v7)
                {
                  break;
                }

                ++v11;
              }

              while (v11 < xpc_array_get_count(array));
            }

            else
            {
              LOBYTE(v2) = 0;
            }

            xpc_release(v9);
            return v2 & 1;
          }

          xpc_release(v9);
        }
      }

      LOBYTE(v2) = 0;
      return v2 & 1;
    case 8:
      v4 = *(a1 + 1408);
      if ((v4 & 0x80800000000) == 0)
      {
LABEL_9:
        v2 = (v4 >> 45) & 1;
        return v2 & 1;
      }

      if ((sub_10000E554(a1 + 376, 32) & 1) == 0)
      {
        v4 = *(a1 + 1408);
        goto LABEL_9;
      }

LABEL_30:
      LOBYTE(v2) = 1;
      break;
  }

  return v2 & 1;
}

void sub_100002EE8(uint64_t a1, char *a2)
{
  if (!strcasecmp(a2, "Interactive"))
  {
    v10 = 1024;
    goto LABEL_15;
  }

  if (!strcasecmp(a2, "Adaptive"))
  {
    v10 = 1536;
    goto LABEL_15;
  }

  if (!strcasecmp(a2, "Standard"))
  {
    v10 = 768;
    goto LABEL_15;
  }

  if (!strcasecmp(a2, "Background"))
  {
    v10 = 1280;
    goto LABEL_15;
  }

  if (!strcasecmp(a2, "SystemApp"))
  {
    *(a1 + 912) = 256;
    v9 = *(a1 + 1408) | 0x3000;
    goto LABEL_18;
  }

  if (!strcasecmp(a2, "App"))
  {
    *(a1 + 912) = 256;
    v9 = *(a1 + 1408) | 0x1000;
    goto LABEL_18;
  }

  if (strcasecmp(a2, "_AdaptiveUtility"))
  {
    if (!strcasecmp(a2, "Driver"))
    {
      v10 = 1792;
    }

    else
    {
      if (strcasecmp(a2, "AppNonUI"))
      {
        sub_100020018(a1, 4, "Unknown ProcessType: %s", v4, v5, v6, v7, v8, a2);
        v9 = *(a1 + 1408) | 1;
LABEL_18:
        *(a1 + 1408) = v9;
        return;
      }

      v10 = 512;
    }

LABEL_15:
    *(a1 + 912) = v10;
    return;
  }

  *(a1 + 912) = 1536;
  *(a1 + 928) = 17;
}

uint64_t sub_10000305C(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  if ((*(a1 + 1412) & 0x80) == 0)
  {
    return 0;
  }

  v3 = sub_10001582C(*(a1 + 248), (a1 + 1424));
  v2 = (*(a1 + 544))(a1, a1 + 1424, &_xpc_BOOL_true, 0, v3, *(a1 + 568));
  if (!v2)
  {
    *(a1 + 1408) |= 1uLL;
    sub_100015968(v3, 3, "Failed to create the implicit endpoint");
  }

  sub_100015920(v3);
  *(a1 + 1408) &= ~0x8000000000uLL;
  return v2;
}

char *sub_10000312C(_DWORD *a1, xpc_object_t object, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    sub_10002C908(a1, 3, "Root node of launchd.plist is not a dictionary.", v14, v15, v16, v17, v18, v88);
LABEL_3:
    v19 = 0;
    v20 = 109;
LABEL_16:
    *a7 = v20;
    return v19;
  }

  v21 = xpc_dictionary_get_string(object, "Label");
  if (!v21)
  {
    v31 = "Service plist does not specify a label.";
LABEL_15:
    sub_10002C908(a1, 3, v31, v22, v23, v24, v25, v26, v88);
    v19 = 0;
    v20 = 110;
    goto LABEL_16;
  }

  v27 = v21;
  v28 = strlen(v21);
  if (!v28)
  {
    v31 = "Service plist has an empty label.";
    goto LABEL_15;
  }

  v29 = v28;
  v90 = a5;
  v91 = a4;
  string = a3;
  v30 = 0;
  v31 = "Service plist has an empty label.";
  while (1)
  {
    v32 = v27[v30];
    if (v32 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v32] & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (v29 == ++v30)
    {
      goto LABEL_15;
    }
  }

  if (__maskrune(v32, 0x4000uLL))
  {
    goto LABEL_11;
  }

LABEL_18:
  v34 = sub_100004F6C(object, a1, v27);
  if (!v34)
  {
    goto LABEL_3;
  }

  v35 = v34;
  v36 = sub_10001582C(a1, v27);
  v19 = xpc_dictionary_get_string(v35, "Label");
  if (!v19)
  {
    sub_100015968(v36, 3, "Service plist does not specify a label.");
    v41 = 110;
    goto LABEL_24;
  }

  v89 = v36;
  v37 = xpc_dictionary_get_BOOL(v35, "Disabled");
  v38 = xpc_dictionary_get_BOOL(v35, "ForceEnableHack");
  v39 = sub_100032CB8(a1, v19);
  value = xpc_dictionary_get_value(v35, "_Conclave");
  if ((a6 & 0x800) == 0 && value)
  {
    v36 = v89;
    sub_100015968(v89, 3, "Only LaunchDaemons are allowed to use the _Conclave key");
    v19 = 0;
    v41 = 109;
    goto LABEL_24;
  }

  if (v39)
  {
    v42 = v39 == &_xpc_BOOL_true;
  }

  else
  {
    v42 = v37;
  }

  if ((a6 & 0x20) == 0 && v42 && !((a6 >> 1) & 1 | v38))
  {
    v19 = 0;
    v43 = 119;
    goto LABEL_53;
  }

  if ((a6 >> 1) & 1 | v38)
  {
    sub_100030AB4(a1, v19, v91, 2);
  }

  v44 = xpc_dictionary_get_value(v35, "LimitLoadToSessionType");
  if (!v44)
  {
    string_ptr = 0;
    goto LABEL_44;
  }

  v45 = v44;
  if (xpc_get_type(v44) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v45);
LABEL_44:
    if (sub_100032A7C(a1, string_ptr))
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (xpc_get_type(v45) != &_xpc_type_array || !xpc_array_get_count(v45))
  {
LABEL_52:
    v19 = 0;
    v43 = 134;
    goto LABEL_53;
  }

  v46 = 0;
  while (1)
  {
    v47 = xpc_array_get_string(v45, v46);
    if (sub_100032A7C(a1, v47))
    {
      break;
    }

    if (++v46 >= xpc_array_get_count(v45))
    {
      goto LABEL_52;
    }
  }

LABEL_45:
  v49 = xpc_dictionary_get_value(v35, "LimitLoadToHardware");
  if (v49)
  {
    v50 = v49;
    if (xpc_get_type(v49) == &_xpc_type_dictionary && (sub_1000068FC(v50) & 1) == 0)
    {
      v19 = 0;
      v43 = 138;
      goto LABEL_53;
    }
  }

  v51 = xpc_dictionary_get_value(v35, "LimitLoadFromHardware");
  v36 = v89;
  if (v51)
  {
    v52 = v51;
    if (xpc_get_type(v51) == &_xpc_type_dictionary)
    {
      if (sub_1000068FC(v52))
      {
        goto LABEL_51;
      }
    }
  }

  v53 = xpc_dictionary_get_value(v35, "_LimitLoadToVariant");
  if (v53 && (sub_1000069A0(v53) & 1) == 0 || (v54 = xpc_dictionary_get_value(v35, "_LimitLoadFromVariant")) != 0 && sub_1000069A0(v54))
  {
    v19 = 0;
    v41 = 158;
    goto LABEL_24;
  }

  v55 = xpc_dictionary_get_value(v35, "_PersistToBootMode");
  if (v55)
  {
    if ((a6 & 0x200) == 0)
    {
      sub_100015968(v89, 3, "Service specifies _PersistToBootMode which is not permitted for services that were not dynamically submitted");
      goto LABEL_66;
    }

    if ((a6 & 0x40000) == 0 && (sub_10000E554(v91, 37) & 1) == 0)
    {
      sub_100015968(v89, 3, "Unentitled submitter specifies _PersistToBootMode in service, which is not permitted");
LABEL_66:
      v19 = 0;
      v41 = 137;
      goto LABEL_24;
    }
  }

  v56 = xpc_dictionary_get_value(v35, "_LimitLoadToBootMode");
  if (!v56)
  {
    v58 = 0;
    goto LABEL_78;
  }

  v57 = sub_100006A88(v56);
  if ((a6 & 0x40000) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v57 ^ 1;
  }

  if (!v55 && (v57 & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_78:
  v59 = xpc_dictionary_get_value(v35, "_LimitLoadFromBootMode");
  if (v59)
  {
    v60 = sub_100006A88(v59);
    if (v60)
    {
      v58 = (a6 & 0x40000) == 0;
    }

    if (!v55 && v60)
    {
      goto LABEL_99;
    }
  }

  if (xpc_dictionary_get_BOOL(v35, "_LimitLoadToClarityMode") && (sub_100006B64() & 1) == 0 || xpc_dictionary_get_BOOL(v35, "_LimitLoadFromClarityMode") && sub_100006B64() || ((v61 = xpc_dictionary_get_BOOL(v35, "LimitLoadToDeveloperMode"), (a6 & 0x4000) != 0) || v61) && sub_10000FC64("security.mac.amfi.developer_mode_status") <= 0)
  {
LABEL_99:
    v19 = 0;
    v41 = 152;
LABEL_24:
    *a7 = v41;
    goto LABEL_55;
  }

  v62 = xpc_dictionary_get_value(v35, "_LimitLoadToDeviceTree");
  if (v62 && (sub_100006BB0(v62, v89) & 1) == 0 || (v63 = v19, (v64 = xpc_dictionary_get_value(v35, "_LimitLoadFromDeviceTree")) != 0) && sub_100006BB0(v64, v89))
  {
LABEL_51:
    v19 = 0;
    v41 = 138;
    goto LABEL_24;
  }

  v65 = xpc_dictionary_get_value(v35, "_LimitLoadToBootarg");
  if (v65 && (sub_100006CDC(v65, v89) & 1) == 0)
  {
    v19 = 0;
    v41 = 160;
    goto LABEL_24;
  }

  v66 = xpc_dictionary_get_value(v35, "_LimitLoadFromBootarg");
  if (v66 && sub_100006CDC(v66, v89))
  {
    v19 = 0;
    v43 = 160;
    goto LABEL_53;
  }

  if (byte_10007F058 == 1 && !xpc_dictionary_get_BOOL(v35, "MinimalBootProfile"))
  {
    v19 = 0;
    v43 = 152;
    goto LABEL_53;
  }

  v67 = sub_100030830(a1, v19);
  if (v67)
  {
    v68 = sub_10001FB7C(v67);
    if (!strcmp(string, v68))
    {
      v43 = 37;
    }

    else
    {
      if (*v68 == 47 && *string == 47)
      {
        sub_10002C908(a1, 4, "Attempt to re-bootstrap service from different path, will use existing: service = %s, existing = %s, conflicting = %s", v69, v70, v71, v72, v73, v19);
      }

      v43 = 17;
    }

    v19 = 0;
LABEL_53:
    *a7 = v43;
  }

  else
  {
    v74 = sub_100006E08(v35, string, v91, a6, v90, a7, v89);
    v19 = v74;
    if (v74)
    {
      if (v58)
      {
        v80 = 2;
      }

      else
      {
        v80 = 0;
      }

      v74[1416] = v74[1416] & 0xFD | v80;
      if (v58)
      {
        sub_10002C908(a1, 5, "Retaining, but not starting, service %s", v75, v76, v77, v78, v79, v63);
      }

      v81 = sub_100004258(v19, a1, v89);
      *a7 = v81;
      if (v81)
      {
        sub_10001B690(v19);
        v19 = 0;
      }

      else
      {
        sub_100007504(v19, a1, v82, v83, v84, v85, v86, v87);
        if (*(v19 + 228) == 768 && (byte_10007F104 & 1) == 0)
        {
          *(v19 + 232) = 17;
        }

        if (byte_10007F0C7 == 1)
        {
          *(v19 + 940) = -1;
          *(v19 + 233) &= 0xFFFFFFF3;
        }
      }
    }
  }

  v36 = v89;
LABEL_55:
  sub_100015920(v36);
  xpc_release(v35);
  if (v19 && *(v19 + 81))
  {
    *(v19 + 82) = xpc_retain(object);
    *(v19 + 83) = xpc_string_create(string);
  }

  return v19;
}

char *sub_1000038CC(uint64_t a1, unsigned __int8 *uu, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, int *a8)
{
  v9 = *(a1 + 1408);
  if ((v9 & 0x20000) != 0 || *(*(a1 + 248) + 72) == a1 || (v9 & 0x40000000) != 0 || (~v9 & 0x80000001000) == 0 || (v9 & 0x80) != 0 || *(a1 + 144))
  {
    v11 = 0;
    v12 = 136;
LABEL_8:
    *a8 = v12;
    return v11;
  }

  if ((v9 & 0x4000) == 0 && !*(a1 + 1376) || (v9 & 0x8000) != 0 || (*(a1 + 368) & 0x20) != 0)
  {
    goto LABEL_28;
  }

  if ((v9 & 0x8000000000) != 0)
  {
    sub_1000441E0("multiple-instance service has no initialized endpoints");
  }

  v20 = *(a1 + 1372);
  if (v20 + 1 >= 2)
  {
    if (sub_10000B744(v20))
    {
LABEL_28:
      v11 = 0;
      v12 = 137;
      goto LABEL_8;
    }
  }

  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
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
  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x100uLL, "%s.%s", (a1 + 1424), out);
  v21 = sub_10001582C(*(a1 + 248), __str);
  v22 = sub_100003B0C(a1, uu, __str, a3, a5, a6, a7, v21, a8);
  v11 = v22;
  if (a4)
  {
    if (*a4)
    {
      sub_10000417C(v22, *a4);
    }

    v23 = *(a4 + 8);
    if (v23)
    {
      sub_1000041E0(v11, v23);
    }

    if (*(a4 + 16))
    {
      xpc_dictionary_apply_f();
    }
  }

  if (v11)
  {
    v24 = sub_100004258(v11, *(a1 + 248), v21);
    *a8 = v24;
    if (v24)
    {
      sub_10001B690(v11);
      v11 = 0;
    }
  }

  sub_100015920(v21);
  return v11;
}

char *sub_100003B0C(uint64_t a1, const unsigned __int8 *a2, char *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, _BYTE *a8, int *a9)
{
  if (*(a1 + 428))
  {
    v17 = xpc_array_create(0, 0);
    if (*(a1 + 428))
    {
      v88 = a2;
      v18 = 0;
      do
      {
        xpc_array_set_string(v17, 0xFFFFFFFFFFFFFFFFLL, *(*(a1 + 432) + 8 * v18++));
      }

      while (v18 < *(a1 + 428));
      a2 = v88;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = sub_100004FE4(*(a1 + 16), a5, a3, v17, a6, a7 | 4, a9, a8);
  if (v17)
  {
    xpc_release(v17);
  }

  if (v22)
  {
    if (a4 == -1 || (v23 = sub_100020B7C(v22, *(a1 + 448), *(a1 + 456), *(a1 + 464), a4, v19, v20, v21)) == 0)
    {
      if (!a5)
      {
        v30 = *(a1 + 392);
        *(v22 + 376) = *(a1 + 376);
        *(v22 + 392) = v30;
      }

      v31 = *(a1 + 576);
      if (v31)
      {
        *(v22 + 72) = sub_1000166EC(v31);
      }

      v32 = *(a1 + 440);
      if (v32)
      {
        *(v22 + 55) = sub_1000166EC(v32);
      }

      v33 = *(a1 + 904);
      if (v33)
      {
        *(v22 + 113) = sub_1000166EC(v33);
      }

      v34 = *(a1 + 448);
      if (v34)
      {
        *(v22 + 56) = sub_1000166EC(v34);
      }

      v35 = *(a1 + 456);
      if (v35)
      {
        *(v22 + 57) = sub_1000166EC(v35);
      }

      v36 = *(a1 + 464);
      if (v36)
      {
        *(v22 + 58) = sub_1000166EC(v36);
      }

      sub_1000433EC(a1, v22);
      sub_10004347C(a1, v22);
      sub_1000434F0(a1, v22);
      v37 = *(a1 + 480);
      if (v37)
      {
        *(v22 + 60) = sub_1000166EC(v37);
      }

      v38 = *(a1 + 472);
      if (v38)
      {
        *(v22 + 74) += ~strlen(v38);
      }

      v39 = *(a1 + 488);
      if (v39)
      {
        *(v22 + 61) = sub_1000166EC(v39);
      }

      uuid_copy(v22 + 408, a2);
      v45 = *(a1 + 800);
      if (v45)
      {
        *(v22 + 100) = sub_1000166EC(v45);
      }

      v46 = *(a1 + 808);
      if (v46)
      {
        *(v22 + 101) = sub_1000166EC(v46);
      }

      *(v22 + 114) = *(a1 + 912);
      v47 = *(v22 + 176) & 0xBFFFFFFFFFFFFFFFLL | (((*(a1 + 1408) >> 62) & 1) << 62);
      *(v22 + 176) = v47;
      *(v22 + 932) = *(a1 + 932);
      *(v22 + 237) = *(a1 + 948);
      *(v22 + 119) = *(a1 + 952);
      *(v22 + 60) = *(a1 + 960);
      *(v22 + 61) = *(a1 + 976);
      v22[1000] = *(a1 + 1000);
      *(v22 + 176) = v47 | 0x40000000000;
      v22[356] = *(a1 + 356);
      v22[1046] = *(a1 + 1046);
      v48 = v47 & 0xF7FFFBFFFFFFFFFFLL | 0x40000000000 | (((*(a1 + 1408) >> 59) & 1) << 59);
      *(v22 + 176) = v48;
      *(v22 + 176) = v48 & 0xEFFFFFFFFFFFFFFFLL | (((*(a1 + 1408) >> 60) & 1) << 60);
      v22[1034] = *(a1 + 1034);
      *(v22 + 259) = *(a1 + 1036);
      v49 = *(a1 + 920);
      if (v49)
      {
        *(v22 + 115) = xpc_binprefs_copy(v49);
      }

      *(v22 + 232) = *(a1 + 928);
      v50 = *(a1 + 1024);
      if (v50)
      {
        v51 = (v22 + 1024);
        do
        {
          out[0] = 0;
          v52 = sub_10001B804(v50, out);
          v53 = *v51;
          *v52 = *v51;
          if (v53)
          {
            *(v53 + 8) = v52;
          }

          *(v22 + 128) = v52;
          v52[1] = v51;
          ++*(v22 + 516);
          *(v22 + 74) += out[0];
          v50 = *v50;
        }

        while (v50);
      }

      v22[1416] = v22[1416] & 0xFD | *(a1 + 1416) & 2;
      v54 = *(v22 + 176) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 1408) & 1;
      *(v22 + 176) = v54;
      v55 = v54 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((*(a1 + 1408) >> 1) & 1));
      *(v22 + 176) = v55;
      v56 = v55 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((*(a1 + 1408) >> 2) & 1));
      *(v22 + 176) = v56;
      v57 = v56 & 0xFFFFFFFFFFFFFFF7 | (8 * ((*(a1 + 1408) >> 3) & 1));
      *(v22 + 176) = v57;
      v58 = v57 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*(a1 + 1408) >> 5) & 1));
      *(v22 + 176) = v58;
      v59 = v58 & 0xFFFFFFFFFFFFFFBFLL | (((*(a1 + 1408) >> 6) & 1) << 6);
      *(v22 + 176) = v59;
      v22[1364] = *(a1 + 1364);
      v60 = v59 & 0xFFFFFFFFFFFFFEFFLL | (((*(a1 + 1408) >> 8) & 1) << 8);
      *(v22 + 176) = v60;
      v61 = v60 & 0xFFFFFFFFFFFFFDFFLL | (((*(a1 + 1408) >> 9) & 1) << 9);
      *(v22 + 176) = v61;
      v62 = v61 & 0xFFFFFFFFFFFFFBFFLL | (((*(a1 + 1408) >> 10) & 1) << 10);
      *(v22 + 176) = v62;
      v63 = v62 & 0xFFFFFFFFFFFEFFFFLL | (((*(a1 + 1408) >> 16) & 1) << 16);
      *(v22 + 176) = v63;
      v64 = v63 & 0xFFFFFFFFFF7FFFFFLL | (((*(a1 + 1408) >> 23) & 1) << 23);
      *(v22 + 176) = v64;
      v65 = v64 & 0xFFFFFFFFFEFFFFFFLL | (((*(a1 + 1408) >> 24) & 1) << 24);
      *(v22 + 176) = v65;
      v66 = v65 & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(*(a1 + 1408)) & 1) << 56);
      *(v22 + 176) = v66;
      v67 = v66 & 0xFFFFFFFF7FFFFFFFLL | (((*(a1 + 1408) >> 31) & 1) << 31);
      *(v22 + 176) = v67;
      *(v22 + 63) = *(a1 + 1008);
      v68 = v67 & 0xFFFFFFFBFFFFFFFFLL | (((*(a1 + 1408) >> 34) & 1) << 34);
      *(v22 + 176) = v68;
      v22[1056] = *(a1 + 1056);
      v69 = v68 & 0xFFBFFFFFFFFFFFFFLL | (((*(a1 + 1408) >> 54) & 1) << 54);
      *(v22 + 176) = v69;
      *(v22 + 522) = *(a1 + 1044);
      v70 = v69 & 0xFFDFFFFFFFFFFFFFLL | (((*(a1 + 1408) >> 53) & 1) << 53);
      *(v22 + 176) = v70;
      v71 = v70 & 0xFFFFFFF7FFFFFFFFLL | (((*(a1 + 1408) >> 35) & 1) << 35);
      *(v22 + 176) = v71;
      v72 = *(a1 + 584);
      if (v72)
      {
        *(v22 + 73) = sub_1000166EC(v72);
        v71 = *(v22 + 176);
      }

      *(v22 + 221) = *(a1 + 884);
      v73 = v71 & 0xFFFFFDFFFFFFFFFFLL | (((*(a1 + 1408) >> 41) & 1) << 41);
      *(v22 + 176) = v73;
      v74 = v73 & 0xFFFFEFFFFFFFFFFFLL | (((*(a1 + 1408) >> 44) & 1) << 44);
      *(v22 + 176) = v74;
      v75 = v74 & 0xFFFFDFFFFFFFFFFFLL | (((*(a1 + 1408) >> 45) & 1) << 45);
      *(v22 + 176) = v75;
      *(v22 + 340) = *(a1 + 1360);
      v76 = v75 & 0xFFFF7FFFFFFFFFFFLL | (((*(a1 + 1408) >> 47) & 1) << 47);
      *(v22 + 176) = v76;
      v77 = v76 & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(*(a1 + 1408)) & 1) << 48);
      *(v22 + 176) = v77;
      v78 = v77 & 0xFFFDFFFFFFFFFFFFLL | (((*(a1 + 1408) >> 49) & 1) << 49);
      *(v22 + 176) = v78;
      *(v22 + 176) = v78 & 0xFFF7FFFFFFFFFFFFLL | (((*(a1 + 1408) >> 51) & 1) << 51);
      *(v22 + 343) = *(a1 + 1372);
      v79 = *(a1 + 640);
      if (v79)
      {
        *(v22 + 80) = xpc_retain(v79);
      }

      v80 = *(a1 + 648);
      if (v80)
      {
        *(v22 + 81) = xpc_retain(v80);
      }

      v81 = *(a1 + 496);
      if (v81)
      {
        if (*(a1 + 1376) == 2)
        {
          *(v22 + 62) = xpc_retain(v81);
        }

        else
        {
          sub_100020018(v22, 4, "Service instances do not support XPC events.", v40, v41, v42, v43, v44, v87);
        }
      }

      v82 = *(a1 + 1384);
      if (v82)
      {
        *(v22 + 173) = sub_1000166EC(v82);
      }

      v83 = *(a1 + 1392);
      if (v83)
      {
        *(v22 + 174) = sub_1000166EC(v83);
      }

      v84 = *(a1 + 600);
      if (v84)
      {
        *(v22 + 75) = sub_1000166A0(v84, *(a1 + 608));
        *(v22 + 152) = *(a1 + 608);
      }

      v85 = *(a1 + 616);
      if (v85)
      {
        *(v22 + 77) = sub_1000166A0(v85, *(a1 + 624));
        *(v22 + 156) = *(a1 + 624);
      }

      *(v22 + 74) = *(a1 + 592);
      memset(out, 0, 37);
      uuid_unparse(a2, out);
      sub_100002C6C(v22, "LaunchInstanceID", out, 1, 0);
    }

    else
    {
      v24 = v23;
      *a9 = v23;
      strerror(v23);
      sub_100020018(a1, 3, "Could not set up nowait inetd service: %d: %s", v25, v26, v27, v28, v29, v24);
      sub_10001B690(v22);
      return 0;
    }
  }

  return v22;
}

uint64_t sub_10000417C(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 920);
  if (v4)
  {
    *(a1 + 592) -= _xpc_spawnattr_binprefs_size(v4);
    free(*(a1 + 920));
  }

  *(a1 + 920) = xpc_binprefs_copy(a2);
  result = _xpc_spawnattr_binprefs_size(a2);
  *(a1 + 592) += result;
  return result;
}

size_t sub_1000041E0(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 480);
  if (v4)
  {
    *(a1 + 592) += ~strlen(*(a1 + 480));
    free(v4);
  }

  *(a1 + 480) = sub_1000166EC(a2);
  result = strlen(a2);
  *(a1 + 592) += result + 1;
  return result;
}

uint64_t sub_100004258(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((sub_10002CF00(a2) & 1) == 0)
  {
    v7 = sub_100032A18(a2);
    v8 = v7;
    v9 = *(a1 + 1408);
    if ((v9 & 0x80000000) != 0 && v7 != &unk_10007D8B8)
    {
      sub_100015968(a3, 3, "_AbandonCoalition is only available to Application services.");
      v9 = *(a1 + 1408) & 0xFFFFFFFF7FFFFFFFLL;
      *(a1 + 1408) = v9;
    }

    if ((v9 & 0x100000000000) != 0 && v8 != &unk_10007D720)
    {
      sub_100015968(a3, 3, "DisallowAllLookups is not supported for non-System services.");
      *(a1 + 1408) &= ~0x100000000000uLL;
    }

    if (!sub_10002CA94(a2))
    {
      if (*(a1 + 800))
      {
        v10 = (*(a1 + 1408) & 2) != 0 ? "_RoleAccount" : "UserName";
        sub_100015968(a3, 3, "%s is not supported by the domain, ignoring.", v10);
        v11 = *(a1 + 800);
        if (v11)
        {
          *(a1 + 592) += ~strlen(*(a1 + 800));
          free(v11);
          *(a1 + 800) = 0;
        }
      }

      if (*(a1 + 808))
      {
        sub_100015968(a3, 3, "GroupName is not supported by the domain, ignoring.");
        v12 = *(a1 + 808);
        *(a1 + 592) += ~strlen(v12);
        free(v12);
        *(a1 + 808) = 0;
      }
    }

    v13 = *(a1 + 1408);
    if ((v13 & 0x800000000000) != 0)
    {
      if ((v13 & 0x80800000000) == 0)
      {
        v6 = 144;
        sub_100015968(a3, 3, "persona can only be set on submitted jobs and extensions");
        return v6;
      }

      if ((sub_10000E554(a1 + 376, 3) & 1) == 0 && !sub_10000E554(a1 + 376, 15))
      {
        v6 = 144;
        sub_100015968(a3, 3, "setting persona requires an entitlement");
        return v6;
      }
    }

    v14 = *(a1 + 1408);
    if ((v14 & 0x2000000000000000) != 0)
    {
      if ((v14 & 0x80800000000) == 0 || (v15 = sub_10000E554(a1 + 376, 31), v14 = *(a1 + 1408), (v15 & 1) == 0))
      {
        if ((v14 & 0x200000000000) == 0)
        {
          v6 = 1;
          sub_100015968(a3, 3, "_Cryptex can only be set on trusted services");
          return v6;
        }
      }
    }

    if (*(a1 + 1392))
    {
      if ((v14 & 0x80800000000) == 0 || (v16 = sub_10000E554(a1 + 376, 32), v14 = *(a1 + 1408), (v16 & 1) == 0))
      {
        if ((v14 & 0x200000000000) == 0)
        {
          v6 = 1;
          sub_100015968(a3, 3, "_Conclave can only be set on trusted services");
          return v6;
        }
      }
    }

    if ((v14 & 0x10000000) != 0)
    {
      sub_100054404();
    }

    *(a1 + 1408) = v14 | 0x10000000;
    *(a1 + 248) = a2;
    (*(a1 + 560))(a1, *(a1 + 568));
    v17 = *(*(a1 + 248) + 48);
    while (v17)
    {
      v18 = v17;
      v17 = *v17;
      if (sub_100016A6C(v18[2], (a1 + 1424)))
      {
        sub_100020018(a1, 5, "matched domain attach request on creation", v19, v20, v21, v22, v23, v47);
        sub_10004B2C8(dword_10007F068, v18[3]);
        xpc_release(v18[3]);
        v24 = *v18;
        v25 = v18[1];
        if (*v18)
        {
          *(v24 + 1) = v25;
        }

        *v25 = v24;
        free(v18);
        break;
      }
    }

    if (*(a1 + 496))
    {
      if (sub_100026F10(a1))
      {
        sub_100020018(a1, 5, "Ignoring events for retain only services", v26, v27, v28, v29, v30, v47);
      }

      else
      {
        if (byte_10007F0F9)
        {
          sub_100020018(a1, 5, "Operating in pure on-demand mode. Ignoring events", v26, v27, v28, v29, v30, v47);
        }

        else
        {
          v31 = *(a1 + 496);
          xpc_dictionary_apply_f();
        }

        if ((*(a1 + 1409) & 0x40) == 0 && !*(a1 + 1376))
        {
          xpc_release(*(a1 + 496));
          *(a1 + 496) = 0;
        }
      }
    }

    v32 = *(a1 + 504);
    if (v32)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_100005518;
      applier[3] = &unk_100075330;
      applier[4] = a1;
      xpc_dictionary_apply(v32, applier);
      xpc_release(*(a1 + 504));
      *(a1 + 504) = 0;
      v33 = sub_100014514(0x28uLL, 0x10F0040E3AB0133uLL);
      v33[32] = 1;
      *(v33 + 2) = sub_10001FE68;
      *(v33 + 3) = "provides events";
      v34 = (a1 + 672);
      v35 = *(a1 + 672);
      *v33 = v35;
      if (v35)
      {
        *(v35 + 8) = v33;
      }

      *v34 = v33;
      *(v33 + 1) = v34;
    }

    v36 = sub_10003DF3C();
    v42 = *(a1 + 1408);
    if (v36 || (v42 & 0x800001000) == 0)
    {
      v6 = 0;
      *(a1 + 1408) = v42 | 0x4000000000000;
      return v6;
    }

    if ((v42 & 0x80000) != 0)
    {
      v43 = "it has a roleaccount set";
    }

    else if (*(a1 + 680))
    {
      v43 = "it has limits set";
    }

    else if (*(a1 + 440))
    {
      v43 = "it set a non standard working directory";
    }

    else if ((v42 & 0x200000000) != 0)
    {
      v43 = "it set a non standard umask";
    }

    else if ((v42 & 0x60) != 0)
    {
      v43 = "it set an io priority";
    }

    else
    {
      v46 = sub_10001FB70(a1);
      if (access(v46, 1))
      {
        v43 = "its binary is missing or not executable";
      }

      else if (*(a1 + 1384))
      {
        v43 = "is from a cryptex";
      }

      else if (*(a1 + 1412))
      {
        v43 = "it disabled initgroups";
      }

      else
      {
        sub_100005704();
        if (!v43)
        {
          if (byte_10007DC7C == 1)
          {
            v44 = "service will attempt to elide xpcproxy";
          }

          else
          {
            *(a1 + 1408) |= 0x4000000000000uLL;
            v44 = "service will always use xpcproxy, elision was disabled by boot-arg";
          }

          goto LABEL_63;
        }
      }
    }

    *(a1 + 1408) |= 0x4000000000000uLL;
    v47 = v43;
    v44 = "service will always use xpcproxy because %s";
LABEL_63:
    sub_100020018(a1, 5, v44, v37, v38, v39, v40, v41, v47);
    return 0;
  }

  return 124;
}

void sub_1000047C0(void *a1)
{
  v1 = a1[176];
  if ((v1 & 0x20000000) != 0)
  {
    sub_1000441E0("attempted to petrify a service twice");
  }

  a1[176] = v1 | 0x20000000;
  if ((v1 & 0x10000000) == 0)
  {
    sub_1000441E0("attempted to petrify a service that hasn't been animated");
  }

  sub_10001A464(a1);
  v3 = a1[17];
  if (v3)
  {
    do
    {
      v4 = v3[2];
      sub_100040094(v3);
      sub_10001B690(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[18];
  if (v5)
  {
    do
    {
      v6 = v5[2];
      sub_10003FB28(v5);
      sub_10001B690(v5);
      v5 = v6;
    }

    while (v6);
  }

  sub_100026D94(a1);

  sub_10001FECC(a1, 9, 0);
}

char *sub_1000048A0(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, int *a8)
{
  property = xpc_bundle_get_property();
  if (!property)
  {
    *a8 = 107;
    v43 = "Could not get path for service bundle.";
LABEL_19:
    sub_10002C908(a1, 3, v43, v16, v17, v18, v19, v20, v76);
    return 0;
  }

  v21 = property;
  info_dictionary = xpc_bundle_get_info_dictionary();
  if (!info_dictionary)
  {
    *a8 = 107;
    v76 = v21;
    v43 = "Could not get Info.plist for bundle at %s";
    goto LABEL_19;
  }

  v23 = info_dictionary;
  v82 = a5;
  string = xpc_dictionary_get_string(info_dictionary, "CFBundleIdentifier");
  if (!string)
  {
    sub_10002C908(a1, 3, "Bundle Info.plist at %s does not have a CFBundleIdentifier", v25, v26, v27, v28, v29, v21);
    goto LABEL_21;
  }

  v30 = string;
  value = xpc_dictionary_get_value(v23, "XPCService");
  if (value)
  {
    v32 = sub_100004F6C(value, a1, v30);
    if (v32)
    {
      v33 = v32;
      xpc_dictionary_set_value(v23, "XPCService", v32);
      xpc_release(v33);
      goto LABEL_7;
    }

LABEL_21:
    v44 = 0;
    *a8 = 107;
    return v44;
  }

LABEL_7:
  v34 = sub_10001582C(a1, v30);
  v35 = xpc_bundle_get_property();
  if (!v35)
  {
    sub_100054404();
  }

  v36 = v35;
  v37 = xpc_bundle_get_info_dictionary();
  if (!v37)
  {
    sub_100054404();
  }

  v38 = v37;
  v81 = xpc_dictionary_get_string(v37, "CFBundleIdentifier");
  if (!v81)
  {
    sub_100054404();
  }

  executable_path = xpc_bundle_get_executable_path();
  if (!executable_path)
  {
    sub_100015968(v34, 3, "Bundle has no executable");
    goto LABEL_25;
  }

  v40 = executable_path;
  if (!sub_1000169A8(executable_path, v36))
  {
    sub_100015968(v34, 3, "Executable not in bundle");
    goto LABEL_25;
  }

  v41 = xpc_dictionary_get_value(v38, "XPCService");
  if (!v41)
  {
    sub_100015968(v34, 3, "XPC Service Info.plist is missing XPCService dictionary");
    goto LABEL_25;
  }

  object = v41;
  type = xpc_get_type(v41);
  if (object == &_xpc_BOOL_false && type == &_xpc_type_BOOL)
  {
    goto LABEL_25;
  }

  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    sub_100015968(v34, 3, "XPCService must be dictionary");
LABEL_25:
    *a8 = 107;
LABEL_26:
    sub_100015920(v34);
    return 0;
  }

  if ((a7 & 0x40) != 0)
  {
    dictionary = xpc_dictionary_get_dictionary(v38, "EXAppExtensionAttributes");
    if (dictionary)
    {
      v48 = xpc_dictionary_get_string(dictionary, "EXExtensionPointIdentifier");
      if (!v48)
      {
        sub_100015968(v34, 3, "EX Extension Info.plist missing EXExtensionPointIdentifier");
        goto LABEL_25;
      }
    }

    else
    {
      v49 = xpc_dictionary_get_dictionary(v38, "NSExtension");
      if (!v49 || (v48 = xpc_dictionary_get_string(v49, "NSExtensionPointIdentifier")) == 0)
      {
        sub_100015968(v34, 3, "NS Extension Info.plist missing NSExtensionPointIdentifier");
        goto LABEL_25;
      }
    }

    v50 = v48;
    if (a4 && (v51 = xpc_dictionary_get_value(a4, "XPCService")) != 0)
    {
      v78 = xpc_dictionary_get_value(v51, "ProgramArguments");
    }

    else
    {
      v78 = 0;
    }

    v77 = v50;
    v46 = sub_10000D5C0(v50);
  }

  else
  {
    v46 = sub_10000D640(v81, object);
    v77 = 0;
    v78 = 0;
  }

  sub_10000C960(v46, v34);
  v79 = v34;
  sub_100005808(object, v46, v34, 1);
  v52 = xpc_dictionary_get_value(v46, "ExecuteAllowed");
  if (v52)
  {
    v53 = v52;
    if (xpc_get_type(v52) == &_xpc_type_BOOL)
    {
      v75 = xpc_BOOL_get_value(v53);
      if ((a7 & 0x200) == 0 && !v75)
      {
        *a8 = 157;
        xpc_release(v46);
        v34 = v79;
        goto LABEL_26;
      }
    }
  }

  sub_1000497F4();
  v55 = v54;
  v56 = sub_10001FA88(v81, v40, v36, v54);
  sub_10001B690(v55);
  v34 = v79;
  v44 = sub_100004FE4(v56, a3, v81, v78, a6, a7, a8, v79);
  sub_10001B690(v56);
  if (!v44)
  {
    xpc_release(v46);
    goto LABEL_26;
  }

  *(v44 + 176) |= 0x8000000002uLL;
  if ((a7 & 0x40) != 0)
  {
    v66 = sub_1000169A8(v81, "com.apple.");
    v67 = *(v44 + 176);
    if (!v66)
    {
      v67 |= 0x10000000000uLL;
    }

    *(v44 + 176) = v67 | 0x80000000;
    v68 = sub_10001B550(v44, 1, v79, 0);
    xpc_dictionary_apply_f();
    sub_10001B648(v68);
    sub_1000062D8(v44, object);
    sub_10000CAD4(v44, v46, v79);
    nullsub_23(v44, v46);
    xpc_release(v46);
    v65 = v82;
    if (v77)
    {
      *(v44 + 73) = sub_1000166EC(v77);
    }

    if (a4)
    {
      v69 = xpc_dictionary_get_value(a4, "XPCService");
      if (v69)
      {
        v70 = xpc_dictionary_get_value(v69, "PersonaEnterprise");
        if (v70)
        {
          *(v44 + 340) = xpc_int64_get_value(v70);
          *(v44 + 176) |= 0x800000000000uLL;
        }
      }
    }

    v64 = *(v44 + 176) & 0xFFFFFFFFFFFFFCFFLL;
  }

  else
  {
    v57 = sub_10001B550(v44, 1, v79, 0);
    xpc_dictionary_apply_f();
    sub_10001B648(v57);
    sub_1000062D8(v44, object);
    sub_10000CAD4(v44, v46, v79);
    nullsub_23(v44, v46);
    xpc_release(v46);
    v64 = *(v44 + 176);
    v65 = v82;
  }

  *(v44 + 72) = v44 + 1424;
  *(v44 + 176) = v64 | 0x2000000000;
  sub_100006384(v44, a7, v58, v59, v60, v61, v62, v63);
  sub_100006410(v44);
  if (v65)
  {
    v71 = sub_100021F4C(v44, v65);
    if (v71)
    {
      v72 = v71;
      v73 = xpc_strerror();
      sub_100015968(v79, 3, "Unable to apply LWCR (spawn constraint) - %d %s", v72, v73);
      sub_10001B690(v44);
      *a8 = v72;
      goto LABEL_26;
    }
  }

  v74 = sub_100004258(v44, a1, v79);
  *a8 = v74;
  if (v74)
  {
    sub_10001B690(v44);
    goto LABEL_26;
  }

  if (*(v44 + 62))
  {
    sub_100015968(v79, 4, "Ignoring launch events for a bundle");
    xpc_release(*(v44 + 62));
    *(v44 + 62) = 0;
  }

  sub_100015920(v79);
  if ((v44[1412] & 8) == 0)
  {
    if (!byte_10007F0C7)
    {
      return v44;
    }

LABEL_72:
    *(v44 + 940) = -1;
    *(v44 + 233) &= 0xFFFFFFF3;
    return v44;
  }

  if (byte_10007F0C8 & 1) != 0 || (byte_10007F0C7)
  {
    goto LABEL_72;
  }

  return v44;
}

uint64_t *sub_100004F6C(void *a1, uint64_t a2, const char *a3)
{
  v4 = sub_10001582C(a2, a3);
  v10 = sub_10003E80C(a1, v4);
  if (*(v4 + 16) == 1)
  {
    sub_100047654(v4[1], 3, "Plist preprocessing failed, rejecting", v5, v6, v7, v8, v9, v12);
    xpc_release(v10);
    v10 = 0;
  }

  sub_100015920(v4);
  return v10;
}

char *sub_100004FE4(void *a1, _OWORD *a2, char *__s1, void *a4, uint64_t a5, unint64_t a6, int *a7, _BYTE *a8)
{
  v13 = __s1;
  if (!strcmp(__s1, "shell"))
  {
    v16 = 0;
    v17 = 140;
    goto LABEL_7;
  }

  if (!a4)
  {
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
LABEL_23:
    v16 = sub_10001BE98(v13);
    *(v16 + 2) = sub_10001B5B8(a1);
    if (a2)
    {
      v32 = a2[1];
      *(v16 + 376) = *a2;
      *(v16 + 392) = v32;
    }

    v16[424] = 0;
    v33 = sub_10001FB70(v16);
    *(v16 + 74) = v19 + strlen(v33) + 245;
    *(v16 + 107) = v20;
    *(v16 + 54) = v18;
    *(v16 + 213) = 10;
    *(v16 + 212) = dword_10007DC38;
    *(v16 + 1224) = 0u;
    *(v16 + 1240) = 0u;
    *(v16 + 1256) = 0u;
    *(v16 + 159) = 0;
    *(v16 + 220) = 5;
    *(v16 + 221) = dword_10007DC40;
    *(v16 + 114) = 1536;
    *(v16 + 932) = 0x1E00000000;
    *(v16 + 672) = 0;
    *(v16 + 167) = 0xFFFFFFFFLL;
    *(v16 + 940) = -1;
    v16[1034] = 0;
    *(v16 + 259) = 0;
    *(v16 + 25) = 0;
    *(v16 + 232) = 0;
    v34 = *(a5 + 32);
    *(v16 + 536) = *(a5 + 16);
    *(v16 + 552) = v34;
    *(v16 + 520) = *a5;
    *(v16 + 71) = *(a5 + 48);
    *&v34 = -1;
    *(&v34 + 1) = -1;
    *(v16 + 86) = -1;
    *(v16 + 174) = -1;
    v16[1057] = 1;
    v35 = *(v16 + 176) | 0x10000000000300;
    *(v16 + 176) = v35;
    *(v16 + 522) = 10;
    *(v16 + 60) = *(v16 + 56);
    *(v16 + 29) = *(v16 + 27);
    *(v16 + 56) = 3226;
    *(v16 + 26) = v16 + 200;
    *(v16 + 27) = "/Library/Caches/com.apple.xbs/Sources/libxpc_executables/launchd/service_create.c";
    *(v16 + 24) = v34;
    *(v16 + 40) = v34;
    if ((a6 & 4) == 0)
    {
      sub_100002C6C(v16, "XPC_SERVICE_NAME", v13, 1, 0);
      v35 = *(v16 + 176);
    }

    v36 = v35 | (a6 << 34) & 0x20000000000 | (a6 << 28) & 0x200000000000;
    if ((a6 & 0x202C0) != 0)
    {
      *(v16 + 176) = (a6 << 34) & 0x80000000000 | (((a6 >> 6) & 1) << 35) | v36;
    }

    *(v16 + 343) = 0;
    v16[1000] = (v36 & 0x200000000000) != 0;
    if ((a6 & 0x8000) != 0)
    {
      sub_1000053C4(v16, "com.apple.cryptex.app");
    }

    return v16;
  }

  if (xpc_get_type(a4) != &_xpc_type_array)
  {
    sub_100015968(a8, 3, "ProgramArguments is not an array.");
LABEL_5:
    v16 = 0;
    v17 = 111;
LABEL_7:
    *a7 = v17;
    return v16;
  }

  v39 = a1;
  v40 = a2;
  v38 = v13;
  if (xpc_array_get_count(a4))
  {
    v21 = 0;
    v19 = 0;
    while (1)
    {
      value = xpc_array_get_value(a4, v21);
      if (xpc_get_type(value) != &_xpc_type_string)
      {
        break;
      }

      v19 += xpc_string_get_length(value) + 1;
      if (++v21 >= xpc_array_get_count(a4))
      {
        goto LABEL_15;
      }
    }

    sub_100015968(a8, 3, "ProgramArguments is not an array of strings.");
    goto LABEL_5;
  }

  v19 = 0;
LABEL_15:
  result = xpc_array_get_count(a4);
  v20 = result;
  v24 = result + 1;
  if (v24 << 31 >> 31 == v24)
  {
    result = (v19 + 8 * v24);
    a1 = v39;
    a2 = v40;
    if (!__CFADD__(v19, 8 * v24))
    {
      v25 = sub_100014514(result, 0xF97681BDuLL);
      v18 = v25;
      v26 = v20;
      if (v20)
      {
        v27 = 0;
        v37 = v20;
        v28 = &v25[(8 * v20 + 8) & 0x7FFFFFFF8];
        do
        {
          v29 = xpc_array_get_value(a4, v27);
          string_ptr = xpc_string_get_string_ptr(v29);
          length = xpc_string_get_length(v29);
          *&v18[8 * v27] = v28;
          strcpy(v28, string_ptr);
          v28 += length + 1;
          ++v27;
        }

        while (v26 != v27);
        v13 = v38;
        a1 = v39;
        a2 = v40;
        LODWORD(v20) = v37;
      }

      else
      {
        v13 = v38;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1000053C4(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 1384);
  if (v4)
  {
    *(a1 + 592) += ~strlen(*(a1 + 1384));
    free(v4);
    *(a1 + 1384) = 0;
  }

  *(a1 + 1384) = sub_1000166EC(a2);
  result = strlen(a2);
  *(a1 + 592) += result + 1;
  return result;
}

void sub_100005440(char *a1, xpc_object_t object, uint64_t a3)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    if ((*(a3 + 1413) & 1) != 0 || !sub_10001B984(a1))
    {
      string_ptr = xpc_string_get_string_ptr(object);

      sub_100002C6C(a3, a1, string_ptr, 0, 0);
    }

    else
    {
      sub_100020018(a3, 3, "Disallowing environment variable: %s", v12, v13, v14, v15, v16, a1);
    }
  }

  else
  {
    type = xpc_get_type(object);
    xpc_type_get_name(type);
    sub_100020018(a3, 3, "Invalid type for environment variable value (env/type): %s/%s", v7, v8, v9, v10, v11, a1);
  }
}

uint64_t sub_100005518(uint64_t a1, const void *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_uint64)
  {
    sub_100054404();
  }

  v6 = *(a1 + 32);
  value = xpc_uint64_get_value(object);
  sub_10003F66C(v6, a2, value, 0);
  return 1;
}

void sub_100005588(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100005660;
    applier[3] = &unk_100075350;
    applier[4] = a3;
    applier[5] = a1;
    xpc_dictionary_apply(object, applier);
  }

  else
  {
    type = xpc_get_type(object);
    xpc_type_get_name(type);
    sub_100020018(a3, 3, "Invalid type for event stream (stream/type): %s/%s", v7, v8, v9, v10, v11, a1);
    *(a3 + 1408) |= 1uLL;
  }
}

uint64_t sub_100005660(uint64_t a1, const char *a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  v7 = *(a1 + 32);
  if (type == &_xpc_type_dictionary)
  {
    sub_10003FEAC(*(a1 + 32), *(a1 + 40), a2, object);
  }

  else
  {
    v8 = xpc_get_type(object);
    xpc_type_get_name(v8);
    sub_100020018(v7, 3, "Invalid type for event (event/type): %s/%s", v9, v10, v11, v12, v13, a2);
    *(*(a1 + 32) + 1408) |= 1uLL;
  }

  return 1;
}

double sub_100005704()
{
  v0 = __chkstk_darwin();
  *(v0 + 720) = 0x6400000064;
  bzero(v6, 0x1090uLL);
  if (*(v0 + 800) || (v1 = *(v0 + 248), (*(v1 + 104) & 1) == 0))
  {
    v3 = *(v0 + 808);
    if (sub_10001C270())
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!sub_10001C118(*(v1 + 56), v6))
  {
LABEL_6:
    *(v0 + 720) = v7;
    v4 = v9;
    *(v0 + 728) = v8;
    *(v0 + 744) = v4;
    result = *&v10;
    v5 = v11;
    *(v0 + 760) = v10;
    *(v0 + 776) = v5;
    *(v0 + 792) = v12;
  }

  return result;
}

void sub_100005808(void *a1, xpc_object_t xdict, _BYTE *a3, int a4)
{
  value = xpc_dictionary_get_value(xdict, "EnablePressuredExit");
  v9 = xpc_dictionary_get_value(xdict, "EnableTransactions");
  if (xpc_dictionary_get_BOOL(a1, "KeepAlive"))
  {
    if (a4)
    {
      sub_1000441E0("XPC bundles can't have KeepAlive, they can't even set it as a plist key, how did we get here?");
    }

    v10 = 1;
    if (!v9)
    {
      v11 = 4;
      v12 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v12 = xpc_BOOL_get_value(v9);
    v11 = 0;
LABEL_19:
    v13 = 0;
    if (!value)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (value)
  {
    v10 = 0;
    if (xpc_BOOL_get_value(value))
    {
      v11 = 3;
      v12 = 1;
      v13 = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_18;
      }

      v13 = 0;
      if (a4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      v12 = 1;
    }

LABEL_20:
    v14 = xpc_BOOL_get_value(value);
    if (v10 == 1 && v13 != v14)
    {
      sub_100015968(a3, 3, "EnablePressuredExit is not compatible with KeepAlive=true. Ignoring EnablePressuredExit.");
      goto LABEL_25;
    }

LABEL_23:
    if (v10 == 2)
    {
      sub_100015968(a3, 4, "Assuming EnablePressuredExit=false given EnableTransactions=false.");
    }

LABEL_25:
    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (!v9)
  {
    LOBYTE(v13) = 1;
    LOBYTE(v12) = 1;
    goto LABEL_29;
  }

  if (!xpc_BOOL_get_value(v9))
  {
    v10 = 2;
    goto LABEL_18;
  }

  v11 = 3;
  LOBYTE(v13) = 1;
  v12 = 1;
LABEL_26:
  v15 = xpc_BOOL_get_value(v9);
  if (v11 == 3 && v12 != v15)
  {
    sub_100015968(a3, 3, "Service sets EnableTransactions=false and EnablePressuredExit=true, which makes no sense. Enabling Transactions.");
  }

LABEL_29:
  xpc_dictionary_set_BOOL(xdict, "EnablePressuredExit", v13);

  xpc_dictionary_set_BOOL(xdict, "EnableTransactions", v12);
}

void sub_1000059E0(char *a1, xpc_object_t object, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  type = xpc_get_type(object);
  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(object);
    v22 = *a1;
    if (v22 <= 0x5E)
    {
      if (v22 == 69)
      {
        goto LABEL_37;
      }

      if (v22 != 74)
      {
        if (v22 != 82)
        {
          goto LABEL_41;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (*a1 <= 0x69u)
      {
        if (v22 == 95)
        {
          if (!strcmp(a1, "_MultipleInstances"))
          {
            *(v5 + 1376) = value;
            return;
          }

          if (!strcmp(a1, "_JoinGUISession"))
          {
            return;
          }

          if (!strcmp(a1, "_AbandonCoalition"))
          {
            v70 = 0x80000000;
            if (!value)
            {
              v70 = 0;
            }

            v71 = *(v5 + 1408) & 0xFFFFFFFF7FFFFFFFLL;
          }

          else
          {
            if (!strcmp(a1, "_OmitSandboxParameters"))
            {
              return;
            }

            if (strcasecmp(a1, "_HighBitsASLR"))
            {
              if (!strcasecmp(a1, "_ExponentialThrottling"))
              {
                v36 = *(v5 + 1408) & 0xFFCFFFFFFFFFFFFFLL;
                *(v5 + 1044) = 3;
                v49 = 0x20000000000000;
                if (value)
                {
                  v49 = 0x30000000000000;
                }

                goto LABEL_79;
              }

LABEL_41:
              sub_100020018(v5, 4, "Unknown key for Boolean: %s", v16, v17, v18, v19, v20, a1);
              goto LABEL_84;
            }

            v70 = 0x400000000;
            if (!value)
            {
              v70 = 0;
            }

            v71 = *(v5 + 1408) & 0xFFFFFFFBFFFFFFFFLL;
          }

          v63 = v71 | v70;
          goto LABEL_85;
        }

        if (v22 != 101)
        {
          goto LABEL_41;
        }

LABEL_37:
        if (!strcmp(a1, "EnableCheckedAllocations"))
        {
          if (value)
          {
            v36 = 201326592;
          }

          else
          {
            sub_100015968(v6, 4, "EnableCheckedAllocations=>false is not allowed");
            v36 = 1;
          }

          v49 = *(v5 + 1408);
LABEL_79:
          v63 = v49 | v36;
LABEL_85:
          *(v5 + 1408) = v63;
          return;
        }

        goto LABEL_41;
      }

      if (v22 != 106)
      {
        if (v22 != 114)
        {
          goto LABEL_41;
        }

LABEL_35:
        if (!strcasecmp(a1, "ReslideSharedCache"))
        {
          *(v5 + 1056) = value;
          return;
        }

        goto LABEL_41;
      }
    }

    if (!strcmp(a1, "JoinExistingSession"))
    {
      return;
    }

    goto LABEL_41;
  }

  if (type == &_xpc_type_int64)
  {
    v23 = xpc_int64_get_value(object);
    v24 = *a1;
    if (v24 == 80 || v24 == 112)
    {
      if (!strcasecmp(a1, "PersonaEnterprise") || !strcasecmp(a1, "Platform"))
      {
        return;
      }
    }

    else if (v24 == 95)
    {
      v25 = v23;
      if (!strcasecmp(a1, "_VoluntaryExitTimeOut"))
      {
        *(v5 + 880) = v25;
        return;
      }

      if (!strcasecmp(a1, "_LaunchWatchdogTimeOut"))
      {
        sub_100020018(v5, 4, "setting launch watchdog timeout to %u secs from overlay", v26, v27, v28, v29, v30, v25);
        *(v5 + 884) = v25;
        return;
      }

      if (!strcasecmp(a1, "_ThrottleInterval"))
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          v82 = a1;
          v13 = "%s less than zero. Ignoring.";
        }

        else
        {
          if (!HIDWORD(v25))
          {
            if (v25)
            {
              *(v5 + 852) = v25;
            }

            else
            {
              sub_100020018(v5, 3, "_ThrottleInterval set to zero. You're not that important. Ignoring.", v8, v9, v10, v11, v12, v81);
              *(v5 + 852) = 1;
            }

            return;
          }

          v82 = a1;
          v13 = "%s is too large. Ignoring.";
        }

        v14 = v5;
        v15 = 4;
        goto LABEL_10;
      }
    }

    sub_100020018(v5, 4, "Unknown key for integer: %s", v8, v9, v10, v11, v12, a1);
LABEL_84:
    v63 = *(v5 + 1408) | 1;
    goto LABEL_85;
  }

  if (type == &_xpc_type_double)
  {
    xpc_double_get_value(object);
    sub_100020018(v5, 4, "Unknown key for double: %s", v31, v32, v33, v34, v35, a1);
    goto LABEL_84;
  }

  if (type == &_xpc_type_data)
  {
    xpc_data_get_bytes_ptr(object);
    xpc_data_get_length(object);
    sub_100020018(v5, 4, "Unknown key for data: %s", v37, v38, v39, v40, v41, a1);
    goto LABEL_84;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    v48 = *a1;
    if (v48 <= 0x5E)
    {
      if (v48 == 82)
      {
        goto LABEL_74;
      }

      if (v48 == 83)
      {
LABEL_68:
        v56 = "ServiceType";
        goto LABEL_75;
      }
    }

    else
    {
      if (v48 != 95)
      {
        if (v48 != 114)
        {
          if (v48 != 115)
          {
            goto LABEL_76;
          }

          goto LABEL_68;
        }

LABEL_74:
        v56 = "RunLoopType";
LABEL_75:
        if (sub_100016A6C(a1, v56))
        {
          return;
        }

        goto LABEL_76;
      }

      v64 = string_ptr;
      if (sub_100016AAC(a1, "_RoleAccount"))
      {
        if (sub_100016A6C(v64, "root"))
        {
          v63 = *(v5 + 1408) | 0x80000;
          goto LABEL_85;
        }

        v72 = 800;
LABEL_119:
        *(v5 + 592) += strlen(v64) + 1;
        v73 = j__strdup(v64);
        *(v5 + v72) = v73;
        if (!v73)
        {
          sub_100020018(v5, 3, "Could not set string argument for key: %s", v74, v75, v76, v77, v78, a1);
          goto LABEL_84;
        }

        return;
      }

      if (sub_100016AAC(a1, "_SandboxProfile"))
      {

        sub_1000041E0(v5, v64);
        return;
      }

      if (sub_100016AAC(a1, "_SandboxContainer"))
      {
        v72 = 472;
        goto LABEL_119;
      }

      if (sub_100016AAC(a1, "_ProcessType"))
      {
        return;
      }

      if (sub_100016A6C(a1, "_Cryptex"))
      {
        sub_1000053C4(v5, v64);
        v63 = *(v5 + 1408) | 0x2000000000000000;
        goto LABEL_85;
      }

      if (sub_100016A6C(a1, "_ManagedBy"))
      {
        v80 = xpc_string_create(v64);
        sub_1000432E8(v5, v80);

        xpc_release(v80);
        return;
      }

      if (sub_100016A6C(a1, "_Conclave"))
      {

        sub_10000645C(v5, v64);
        return;
      }
    }

LABEL_76:
    sub_100020018(v5, 4, "Unknown key for string: %s", v43, v44, v45, v46, v47, a1);
    goto LABEL_84;
  }

  if (type != &_xpc_type_array)
  {
    if (type != &_xpc_type_dictionary)
    {
      v82 = a1;
      xpc_type_get_name(type);
      v13 = "Invalid type for service dictionary (key/type): %s/%s";
LABEL_9:
      v14 = v5;
      v15 = 3;
LABEL_10:
      sub_100020018(v14, v15, v13, v8, v9, v10, v11, v12, v82);
      return;
    }

    v57 = __tolower(*a1);
    if (v57 != 95)
    {
      if (v57 == 101 && !strcmp(a1, "EnvironmentVariables"))
      {
        xpc_dictionary_apply_f();
        return;
      }

LABEL_72:
      sub_100020018(v5, 4, "Unknown key for dictionary: %s", v58, v59, v60, v61, v62, a1);
      goto LABEL_84;
    }

    if (!strcmp(a1, "_LaunchEvents"))
    {
      v82 = a1;
      v13 = "The %s key is not yet implemented. %s";
      goto LABEL_9;
    }

    if (!strcmp(a1, "_AdditionalServices"))
    {
      sub_100020018(v5, 3, "The %s key is no longer respected. %s", v65, v66, v67, v68, v69, a1);
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 0x40000000;
      v84[2] = sub_100006578;
      v84[3] = &unk_100075370;
      v84[4] = v5;
      v84[5] = v6;
      v79 = v84;
    }

    else
    {
      if (strcmp(a1, "_AdditionalSubServices"))
      {
        if (!strcasecmp(a1, "_AdditionalProperties"))
        {
          *(v5 + 640) = xpc_retain(object);
          return;
        }

        if (!strcasecmp(a1, "_UrgentLogSubmission"))
        {
          sub_100006674(v5, object, v6);
          return;
        }

        goto LABEL_72;
      }

      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_10000659C;
      applier[3] = &unk_100075390;
      applier[4] = v5;
      applier[5] = v6;
      v79 = applier;
    }

    xpc_dictionary_apply(object, v79);
    return;
  }

  v50 = __tolower(*a1);
  if (v50 == 112)
  {
    if (sub_100016A6C(a1, "ProgramArguments"))
    {
      return;
    }

    goto LABEL_83;
  }

  if (v50 != 95)
  {
LABEL_83:
    sub_100020018(v5, 4, "Unknown key for array: %s", v51, v52, v53, v54, v55, a1);
    goto LABEL_84;
  }

  if (!strcmp(a1, "_AdditionalServices"))
  {

    sub_1000064D8(v5, a1, &_xpc_BOOL_true, v6);
  }

  else
  {
    if (!strcmp(a1, "_AllowedClients"))
    {
      return;
    }

    if (strcmp(a1, "_ManagedBy"))
    {
      if (!strcmp(a1, "_ManagedBy_Services"))
      {

        sub_10004340C(v5, object);
        return;
      }

      goto LABEL_83;
    }

    sub_1000432E8(v5, object);
  }
}

void sub_1000062D8(uint64_t a1, xpc_object_t xdict)
{
  if ((*(a1 + 1408) & 0x800000000) != 0)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 1536;
  }

  string = xpc_dictionary_get_string(xdict, "RunLoopType");
  if (string && !strcmp(string, "_UIApplicationMain"))
  {
    v4 = 256;
  }

  *(a1 + 912) = v4;
  v6 = xpc_dictionary_get_string(xdict, "_ProcessType");
  if (v6)
  {

    sub_100002EE8(a1, v6);
  }
}

void sub_100006384(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x400) != 0)
  {
    v8 = 3;
  }

  else if ((a2 & 0x800) != 0)
  {
    v8 = 1;
  }

  else if ((a2 & 0x1000) != 0)
  {
    v8 = 2;
  }

  else if ((a2 & 0x40) != 0)
  {
    v8 = 6;
  }

  else if ((*(a1 + 1408) & 2) != 0)
  {
    v8 = 5;
  }

  else if ((a2 & 0x40000) != 0)
  {
    v8 = 7;
  }

  else
  {
    if ((a2 & 0x200) == 0)
    {
      sub_100020018(a1, 3, "Unknown service type. flags: %llx", a4, a5, a6, a7, a8, a2);
      return;
    }

    v8 = 4;
  }

  *(a1 + 356) = v8;
}

uint64_t sub_100006410(uint64_t result)
{
  v1 = *(result + 912);
  if (v1 == 256)
  {
    v3 = *(result + 1408);
    *(result + 1408) = v3 | 0x2000000;
    if ((v3 & 0x4000000000000000) != 0)
    {
      return result;
    }

    *(result + 916) = 1;
    v2 = v3 | 0x4000000002000000;
  }

  else
  {
    if (v1 != 1792)
    {
      return result;
    }

    v2 = *(result + 1408) | 0x200000000000000;
  }

  *(result + 1408) = v2;
  return result;
}

void sub_10000645C(uint64_t a1, char *__s)
{
  if (strlen(__s) < 0x80)
  {
    v9 = *(a1 + 1392);
    if (v9)
    {
      free(v9);
      *(a1 + 1392) = 0;
    }

    *(a1 + 1392) = sub_1000166EC(__s);
  }

  else
  {
    sub_100020018(a1, 3, "%s failed: conclave id too long", v4, v5, v6, v7, v8, "_launch_service_set_conclave");
  }
}

void sub_1000064D8(uint64_t a1, char *__s1, uint64_t a3, _BYTE *a4)
{
  if ((*(a1 + 1412) & 0x80) != 0 && !strcmp(__s1, (a1 + 1424)))
  {
    sub_100015968(a4, 4, "MachService endpoint name specified was same as implicitly created endpoint: %s", __s1);
  }

  else if ((*(a1 + 544))(a1, __s1, a3, 0, a4, *(a1 + 568)))
  {
    return;
  }

  *(a1 + 1408) |= 1uLL;
}

uint64_t sub_10000659C(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = 0u;
  v38 = 0u;
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
  v5 = (*(a1 + 32) + 1424);
  *__str = 0u;
  v8 = 0u;
  snprintf(__str, 0x200uLL, "%s.%s", v5, a2);
  sub_1000064D8(*(a1 + 32), __str, a3, *(a1 + 40));
  return 1;
}

BOOL sub_100006674(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000066E8;
  v4[3] = &unk_1000753D0;
  v4[4] = a3;
  v4[5] = a1;
  return xpc_dictionary_apply(xdict, v4);
}

uint64_t sub_1000066E8(uint64_t a1, char *a2, void *a3)
{
  if (sub_10000F6F8(a2))
  {
    v5 = sub_100014514(4uLL, 0x100004052888210uLL);
    *v5 = word_10007DC7E;
    v5[1] = word_10007DC82;
    if (xpc_get_type(a3) == &_xpc_type_BOOL)
    {
      if (a3 == &_xpc_BOOL_true)
      {
LABEL_5:
        sub_100026F7C(*(a1 + 40));
        return 1;
      }
    }

    else if (xpc_get_type(a3) == &_xpc_type_dictionary)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = sub_100006824;
      v7[3] = &unk_1000753B0;
      v7[4] = *(a1 + 32);
      v7[5] = v5;
      if (xpc_dictionary_apply(a3, v7))
      {
        goto LABEL_5;
      }
    }

    free(v5);
  }

  return 1;
}

BOOL sub_100006824(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_int64)
  {
    sub_100015968(*(a1 + 32), 3, "Improper type for %s", a2);
    return 0;
  }

  value = xpc_int64_get_value(object);
  if (!value)
  {
    return 0;
  }

  if (sub_100016AAC("ConsecutiveCrashCount", a2))
  {
    *(*(a1 + 40) + 2) = value;
    return 1;
  }

  result = sub_100016AAC("SubmissionTimeout", a2);
  if (result)
  {
    if (word_10007DC80 < value)
    {
      return 0;
    }

    **(a1 + 40) = value;
    return 1;
  }

  return result;
}

uint64_t sub_1000068FC(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100007570;
  applier[3] = &unk_1000753F8;
  applier[4] = &v4;
  xpc_dictionary_apply(a1, applier);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

size_t sub_1000069A0(void *a1)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    result = xpc_array_get_count(a1);
    if (result)
    {
      v3 = 0;
      while (1)
      {
        value = xpc_array_get_value(a1, v3);
        if (xpc_get_type(value) == &_xpc_type_string && (sub_1000069A0(value) & 1) != 0)
        {
          break;
        }

        if (++v3 >= xpc_array_get_count(a1))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (xpc_get_type(a1) == &_xpc_type_string)
  {
    xpc_string_get_string_ptr(a1);

    return j__os_variant_check();
  }

  else
  {
    return 0;
  }

  return result;
}

size_t sub_100006A88(void *a1)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    result = xpc_array_get_count(a1);
    if (result)
    {
      v4 = 0;
      while (1)
      {
        value = xpc_array_get_value(a1, v4);
        if (xpc_get_type(value) == &_xpc_type_string && (sub_100006A88(value) & 1) != 0)
        {
          break;
        }

        if (++v4 >= xpc_array_get_count(a1))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return sub_10000188C(string_ptr);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100006B64()
{
  result = j___os_feature_enabled_impl();
  if (result)
  {

    return sub_100041634("/var/mobile/Library/Accessibility/ClarityBoardEnabled");
  }

  return result;
}

size_t sub_100006BB0(void *a1, _BYTE *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return sub_1000440E0(string_ptr);
  }

  else if (xpc_get_type(a1) == &_xpc_type_array)
  {
    result = xpc_array_get_count(a1);
    if (result)
    {
      v6 = 0;
      while (1)
      {
        value = xpc_array_get_value(a1, v6);
        if (xpc_get_type(value) == &_xpc_type_string)
        {
          v8 = xpc_string_get_string_ptr(value);
          if (sub_1000440E0(v8))
          {
            return 1;
          }
        }

        else
        {
          sub_100015968(a2, 4, "Unsupported type for index %lu of _LimitLoadToDeviceTree", v6);
        }

        if (++v6 >= xpc_array_get_count(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    sub_100015968(a2, 4, "Unsupported type for _LimitLoadToDeviceTree");
    return 0;
  }

  return result;
}

size_t sub_100006CDC(void *a1, _BYTE *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return sub_10004D960(string_ptr);
  }

  else if (xpc_get_type(a1) == &_xpc_type_array)
  {
    result = xpc_array_get_count(a1);
    if (result)
    {
      v6 = 0;
      while (1)
      {
        value = xpc_array_get_value(a1, v6);
        if (xpc_get_type(value) == &_xpc_type_string)
        {
          if (sub_100006CDC(value, a2))
          {
            return 1;
          }
        }

        else
        {
          sub_100015968(a2, 4, "Unsupported type for index: %lu of _LimitLoadToBootarg", v6);
        }

        if (++v6 >= xpc_array_get_count(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    sub_100015968(a2, 4, "Unsupported type for _LimitLoadToBootarg");
    return 0;
  }

  return result;
}

char *sub_100006E08(void *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, int *a6, _BYTE *a7)
{
  string = xpc_dictionary_get_string(a1, "Label");
  if (!string)
  {
    sub_100054404();
  }

  v15 = string;
  v16 = xpc_dictionary_get_string(a1, "Program");
  if (v16)
  {
    v17 = v16;
    v62 = a5;
    if (*v16 == 47)
    {
LABEL_4:
      v63 = a2;
      value = xpc_dictionary_get_value(a1, "ProgramArguments");
      v19 = 0;
      goto LABEL_5;
    }

    v29 = xpc_dictionary_get_BOOL(a1, "ResolveProgramIdentifier");
    v30 = xpc_dictionary_get_string(a1, "BundleProgram");
    if (v29 || v30)
    {
      if (!v30 || sub_100016A6C(v30, v17))
      {
        goto LABEL_4;
      }

      sub_100015968(a7, 3, "BundleProgram(%s) is not the same as Program(%s). Bug in ServiceManagement?");
    }

    else
    {
      sub_100015968(a7, 3, "Service specifies non-absolute Program path.");
    }

LABEL_56:
    v37 = 0;
    v38 = 111;
LABEL_57:
    *a6 = v38;
    return v37;
  }

  v63 = a2;
  v28 = xpc_dictionary_get_value(a1, "ProgramArguments");
  if (!v28 || (value = v28, xpc_get_type(v28) != &_xpc_type_array))
  {
    sub_100015968(a7, 3, "Service specifies neither Program nor ProgramArguments.");
    goto LABEL_56;
  }

  if (!xpc_array_get_count(value))
  {
    sub_100015968(a7, 3, "Service specifies no Program and empty ProgramArguments.");
    goto LABEL_56;
  }

  v32 = xpc_array_get_string(value, 0);
  if (!v32)
  {
    sub_100015968(a7, 3, "Service does not specify a valid argument array.");
    goto LABEL_56;
  }

  v17 = v32;
  v62 = a5;
  v19 = 0x1000000;
LABEL_5:
  v20 = xpc_dictionary_get_value(a1, "ProcessType");
  if (v20)
  {
    xpc_dictionary_set_value(a1, "POSIXSpawnType", v20);
  }

  if ((a4 & 0x400) != 0)
  {
    xpc_dictionary_set_BOOL(a1, "__Angel", 1);
  }

  v21 = xpc_dictionary_get_string(a1, "POSIXSpawnType");
  if (sub_100016A6C(v21, "Driver") && (sub_10000E554(a3, 24) & 1) == 0)
  {
    if (a3)
    {
      v31 = *(a3 + 20);
    }

    else
    {
      v31 = 0;
    }

    sub_100015968(a7, 3, "Service (pid %d) does not have spawn driver entitlement", v31);
    v37 = 0;
    v38 = 144;
    goto LABEL_57;
  }

  v59 = v19;
  if ((a4 & 0x200) == 0 && xpc_dictionary_get_string(a1, "_JetsamPropertiesIdentifier"))
  {
    sub_100015968(a7, 3, "Ignoring _JetsamPropertiesIdentifier on a service which isn't submitted");
    xpc_dictionary_set_value(a1, "_JetsamPropertiesIdentifier", 0);
  }

  v22 = sub_10000D168(a1);
  sub_10000C960(v22, a7);
  sub_100005808(a1, v22, a7, 0);
  v23 = xpc_dictionary_get_value(v22, "ExecuteAllowed");
  if (v23)
  {
    v24 = v23;
    if (xpc_get_type(v23) == &_xpc_type_BOOL)
    {
      v33 = xpc_BOOL_get_value(v24);
      if ((a4 & 0x200) == 0 && !v33)
      {
        v34 = 157;
LABEL_40:
        *a6 = v34;
        xpc_release(v22);
        return 0;
      }
    }
  }

  v25 = xpc_dictionary_get_value(a1, "_StandardInFd");
  if (v25 && (v26 = v25, xpc_get_type(v25) == &_xpc_type_fd))
  {
    v27 = xpc_fd_dup(v26);
  }

  else
  {
    v27 = -1;
  }

  if (xpc_dictionary_get_string(a1, "StandardInPath") && v27 != -1)
  {
    close(v27);
    sub_100015968(a7, 3, "Service specifies both standard out file descriptor and path.");
    v34 = 111;
    goto LABEL_40;
  }

  v61 = v27;
  v35 = xpc_dictionary_get_value(a1, "_StandardOutFd");
  if (v35 && (v36 = v35, xpc_get_type(v35) == &_xpc_type_fd))
  {
    v60 = xpc_fd_dup(v36);
  }

  else
  {
    v60 = -1;
  }

  if (xpc_dictionary_get_string(a1, "StandardOutPath") && v60 != -1)
  {
    close(v60);
    sub_100015968(a7, 3, "Service specifies both standard out file descriptor and path.");
    *a6 = 111;
    xpc_release(v22);
    if (v61 == -1)
    {
      return 0;
    }

    v39 = v61;
LABEL_75:
    close(v39);
    return 0;
  }

  v40 = xpc_dictionary_get_value(a1, "_StandardErrorFd");
  if (v40 && (v41 = v40, xpc_get_type(v40) == &_xpc_type_fd))
  {
    v58 = xpc_fd_dup(v41);
  }

  else
  {
    v58 = -1;
  }

  if (xpc_dictionary_get_string(a1, "StandardErrorPath") && v58 != -1)
  {
    close(v58);
    sub_100015968(a7, 3, "Service specifies both standard out file descriptor and path.");
    *a6 = 111;
    xpc_release(v22);
    if (v61 != -1)
    {
      close(v61);
    }

    v39 = v60;
    goto LABEL_74;
  }

  v42 = sub_10001FA4C(v15, v17, v63);
  v37 = sub_100004FE4(v42, a3, v15, value, v62, a4, a6, a7);
  sub_10001B690(v42);
  if (!v37)
  {
    xpc_release(v22);
    if (v61 != -1)
    {
      close(v61);
    }

    if (v60 != -1)
    {
      close(v60);
    }

    v39 = v58;
LABEL_74:
    if (v39 == -1)
    {
      return 0;
    }

    goto LABEL_75;
  }

  v43 = sub_10000E554(a3, 3);
  v44 = v43;
  v45 = *(v37 + 176);
  if (v43)
  {
    v45 |= 0x10000000000uLL;
  }

  *(v37 + 176) = v45 & 0xFFFFFFFFFEFFFFFFLL | v59;
  v46 = sub_10001B550(v37, 1, a7, 0);
  xpc_dictionary_apply_f();
  sub_10001B648(v46);
  sub_10000CAD4(v37, v22, a7);
  nullsub_23(v37, v22);
  xpc_release(v22);
  v53 = *(v37 + 176);
  if ((v53 & 0x100000000) != 0)
  {
    v54 = v60;
    v55 = v58;
    if (!*(v37 + 100))
    {
      v53 &= ~0x100000000uLL;
      *(v37 + 176) = v53;
    }
  }

  else
  {
    v54 = v60;
    v55 = v58;
  }

  if (v53 & 0x20000 | a4 & 0x10)
  {
    v53 |= 0x200000uLL;
    *(v37 + 176) = v53;
  }

  if ((v53 & 0x40000000) == 0)
  {
    if ((v44 & 1) == 0 || *(v37 + 228) == 1792)
    {
      goto LABEL_89;
    }

    *(v37 + 228) = 256;
    v57 = v53 | 0x1000;
    goto LABEL_88;
  }

  *(v37 + 176) = v53 | 0x400000;
  if (*(v37 + 228) != 1792)
  {
    *(v37 + 228) = 256;
    v57 = v53 | 0x401000;
    *(v37 + 234) = 160;
LABEL_88:
    *(v37 + 176) = v57 & 0xFFFFFFFFFFFFFCFFLL;
  }

LABEL_89:
  if (v61 != -1)
  {
    *(v37 + 172) = v61;
  }

  if (v54 != -1)
  {
    *(v37 + 173) = v54;
  }

  if (v55 != -1)
  {
    *(v37 + 174) = v55;
  }

  sub_100006384(v37, a4, v47, v48, v49, v50, v51, v52);
  if ((v37[1415] & 4) != 0)
  {
    sub_100026CDC(v37, 15);
  }

  sub_100006410(v37);
  return v37;
}

void sub_100007504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 1411) & 0x40) != 0)
  {
    v9 = *(a2 + 72);
    if (v9)
    {
      sub_100020018(a1, 3, "Service tried to claim home screen from: %s", a4, a5, a6, a7, a8, v9 - 112);
      *(a1 + 1408) &= ~0x40000000uLL;
    }

    else
    {
      *(a2 + 72) = a1;
    }
  }
}

uint64_t sub_100007570(uint64_t a1, const char *a2, void *a3)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x80uLL, "hw.%s", a2);
  if (xpc_get_type(a3) == &_xpc_type_array)
  {
    if (xpc_array_get_count(a3))
    {
      v6 = 0;
      while (1)
      {
        value = xpc_array_get_value(a3, v6);
        if (sub_100007680(__str, value))
        {
          break;
        }

        if (++v6 >= xpc_array_get_count(a3))
        {
          return 1;
        }
      }

      goto LABEL_3;
    }
  }

  else if (sub_100007680(__str, a3))
  {
LABEL_3:
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return result;
  }

  return 1;
}

size_t sub_100007680(const char *a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    if (xpc_get_type(object) == &_xpc_type_int64)
    {
      __s2[0] = 0;
      if (sub_100045EF0(a1, __s2))
      {
        value = xpc_int64_get_value(object);
        return value == __s2[0];
      }
    }

    else if (xpc_get_type(object) == &_xpc_type_BOOL)
    {
      __s2[0] = 0;
      __s2[1] = 0;
      v13 = 16;
      v4 = sysctlbyname(a1, __s2, &v13, 0, 0);
      v5 = 0;
      if (v4 != -1 && v13)
      {
        v6 = xpc_BOOL_get_value(object);
        v8 = v13 < 9 && __s2[0] == 0;
        return v6 ^ v8;
      }

      return v5;
    }

    return 0;
  }

  __s2[0] = 0;
  v5 = sub_100045D60(a1, __s2);
  if (v5)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    v10 = __s2[0];
    v5 = strncmp(string_ptr, __s2[0], v5) == 0;
    free(v10);
  }

  return v5;
}

uint64_t sub_1000077F0(const char *a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = a3[1];
  v7 = qword_10007DE40;
  if (!qword_10007DE40)
  {
    qword_10007DE40 = sub_10000BC6C("plist");
    sub_10000BD2C(qword_10007DE40, "AbandonProcessGroup", &stru_100075438);
    sub_10000BD2C(qword_10007DE40, "AuxiliaryBootstrapper", &stru_100075478);
    sub_10000BD2C(qword_10007DE40, "AuxiliaryBootstrapperAllowDemand", &stru_1000754B8);
    sub_10000C038(qword_10007DE40, "AlwaysSIGTERMOnShutdown");
    sub_10000BD2C(qword_10007DE40, "BootShell", &stru_1000754F8);
    sub_10000BD2C(qword_10007DE40, "DisabledInSafeBoot", &stru_100075538);
    sub_10000BD2C(qword_10007DE40, "KeepAlive", &stru_100075578);
    sub_10000BD2C(qword_10007DE40, "OnDemand", &stru_1000755B8);
    sub_10000BD2C(qword_10007DE40, "Debug", &stru_1000755F8);
    sub_10000C038(qword_10007DE40, "Disabled");
    sub_10000BD2C(qword_10007DE40, "DisableASLR", &stru_100075638);
    sub_10000BD2C(qword_10007DE40, "DisallowAllLookups", &stru_100075678);
    sub_10000BD2C(qword_10007DE40, "DrainMessagesOnFailedInit", &stru_1000756B8);
    sub_10000BD2C(qword_10007DE40, "DisableReslide", &stru_1000756F8);
    sub_10000BD2C(qword_10007DE40, "HopefullyExitsLast", &stru_100075738);
    sub_10000BD2C(qword_10007DE40, "SessionCreate", &stru_100075778);
    sub_10000BD2C(qword_10007DE40, "StartOnMount", &stru_1000757B8);
    sub_10000BD2C(qword_10007DE40, "ServiceIPC", &stru_1000757F8);
    sub_10000BD2C(qword_10007DE40, "ShutdownMonitor", &stru_100075838);
    sub_10000BD2C(qword_10007DE40, "LowPriorityIO", &stru_100075878);
    sub_10000BD2C(qword_10007DE40, "LowPriorityBackgroundIO", &stru_1000758B8);
    sub_10000BD2C(qword_10007DE40, "LegacyTimers", &stru_1000758F8);
    sub_10000BD2C(qword_10007DE40, "LaunchOnlyOnce", &stru_100075938);
    sub_10000BD2C(qword_10007DE40, "MachExceptionHandler", &stru_100075978);
    sub_10000BD2C(qword_10007DE40, "MultipleInstances", &stru_1000759B8);
    sub_10000BD2C(qword_10007DE40, "MaterializeDatalessFiles", &stru_1000759F8);
    sub_10000C038(qword_10007DE40, "MinimalBootProfile");
    sub_10000BD2C(qword_10007DE40, "InitGroups", &stru_100075A38);
    sub_10000BD2C(qword_10007DE40, "IgnoreProcessGroupAtShutdown", &stru_100075A78);
    sub_10000BD2C(qword_10007DE40, "RunAtLoad", &stru_100075AB8);
    sub_10000BD2C(qword_10007DE40, "ResolveProgramIdentifier", &stru_100075AF8);
    sub_10000BE88(qword_10007DE40, "BundleProgram", &stru_100075B38);
    sub_10000BD2C(qword_10007DE40, "ReslideSharedCache", &stru_100075B78);
    sub_10000BD2C(qword_10007DE40, "EnableGlobbing", &stru_100075BB8);
    sub_10000BD2C(qword_10007DE40, "EnableTransactions", &stru_100075BF8);
    sub_10000BD2C(qword_10007DE40, "EnterKernelDebuggerBeforeKill", &stru_100075C38);
    sub_10000BD2C(qword_10007DE40, "EmbeddedHomeScreen", &stru_100075C78);
    sub_10000BD2C(qword_10007DE40, "EventMonitor", &stru_100075CB8);
    sub_10000BD2C(qword_10007DE40, "_InitialSystemSupport", &stru_100075CF8);
    sub_10000BD2C(qword_10007DE40, "EnablePressuredExit", &stru_100075D38);
    sub_10000C038(qword_10007DE40, "ExecuteAllowed");
    sub_10000BD2C(qword_10007DE40, "WaitForDebugger", &stru_100075D78);
    sub_10000C038(qword_10007DE40, "ForceEnableHack");
    sub_10000BD2C(qword_10007DE40, "NSBuiltWithThreadSanitizer", &stru_100075DB8);
    sub_10000BD2C(qword_10007DE40, "_NullBootstrapPort", &stru_100075DF8);
    sub_10000C038(qword_10007DE40, "_Protected");
    sub_10000BD2C(qword_10007DE40, "_ExponentialThrottling", &stru_100075E38);
    sub_10000C038(qword_10007DE40, "__Proxyless");
    sub_10000BD2C(qword_10007DE40, "_DisablePointerAuth", &stru_100075E78);
    sub_10000BE1C(qword_10007DE40, "ExitTimeOut", &stru_100075EB8);
    sub_10000BE1C(qword_10007DE40, "EmbeddedMainThreadPriority", &stru_100075EF8);
    sub_10000BE1C(qword_10007DE40, "CPUMonitorPercentage", &stru_100075F38);
    sub_10000BE1C(qword_10007DE40, "CPUMonitorInterval", &stru_100075F78);
    sub_10000BE1C(qword_10007DE40, "PersonaEnterprise", &stru_100075FB8);
    sub_10000BE1C(qword_10007DE40, "Platform", &stru_100075FF8);
    sub_10000BE1C(qword_10007DE40, "JetsamPriority", &stru_100076038);
    sub_10000BE1C(qword_10007DE40, "JetsamMemoryLimit", &stru_100076078);
    sub_10000BE1C(qword_10007DE40, "Nice", &stru_1000760B8);
    sub_10000BE1C(qword_10007DE40, "TimeOut", &stru_1000760F8);
    sub_10000BE1C(qword_10007DE40, "ThrottleInterval", &stru_100076138);
    sub_10000BE1C(qword_10007DE40, "Umask", &stru_100076178);
    sub_10000BE88(qword_10007DE40, "Umask", &stru_1000761B8);
    sub_10000BE1C(qword_10007DE40, "StartInterval", &stru_1000761F8);
    sub_10000BE1C(qword_10007DE40, "SandboxFlags", &stru_100076238);
    sub_10000C038(qword_10007DE40, "ActiveHardMemoryLimit");
    sub_10000C038(qword_10007DE40, "ActiveSoftMemoryLimit");
    sub_10000C038(qword_10007DE40, "InactiveHardMemoryLimit");
    sub_10000C038(qword_10007DE40, "InactiveSoftMemoryLimit");
    sub_10000BE1C(qword_10007DE40, "InitialTaskRole", &stru_100076278);
    sub_10000BE88(qword_10007DE40, "CFBundleIdentifier", &stru_1000762B8);
    sub_10000BE88(qword_10007DE40, "ContainingBundleID", &stru_1000762F8);
    sub_10000BFCC(qword_10007DE40, "_BTMItemUUID", &stru_100076338);
    sub_10000BFCC(qword_10007DE40, "_LightweightCodeRequirement", &stru_100076378);
    sub_10000BFCC(qword_10007DE40, "_ProvenanceData", &stru_1000763B8);
    sub_10000BE88(qword_10007DE40, "ContainingBundleVersion", &stru_1000763F8);
    sub_10000BE88(qword_10007DE40, "MachExceptionHandler", &stru_100076438);
    sub_10000BE88(qword_10007DE40, "MultipleInstances", &stru_100076478);
    sub_10000C038(qword_10007DE40, "Program");
    sub_10000BE88(qword_10007DE40, "POSIXSpawnType", &stru_1000764B8);
    sub_10000BE88(qword_10007DE40, "ProcessType", &stru_1000764B8);
    sub_10000BE88(qword_10007DE40, "PublishesEvents", &stru_1000764F8);
    sub_10000C038(qword_10007DE40, "Label");
    sub_10000BE88(qword_10007DE40, "LimitLoadToHosts", &stru_100076538);
    sub_10000BE88(qword_10007DE40, "LimitLoadFromHosts", &stru_100076578);
    sub_10000C038(qword_10007DE40, "LimitLoadToSessionType");
    sub_10000BE88(qword_10007DE40, "LoginWindowUserName", &stru_1000765B8);
    sub_10000BE88(qword_10007DE40, "RootDirectory", &stru_1000765F8);
    sub_10000BE88(qword_10007DE40, "WorkingDirectory", &stru_100076638);
    sub_10000BE88(qword_10007DE40, "UserName", &stru_100076678);
    sub_10000BE88(qword_10007DE40, "GroupName", &stru_1000766B8);
    sub_10000BE88(qword_10007DE40, "StandardOutPath", &stru_1000766F8);
    sub_10000BE88(qword_10007DE40, "StandardErrorPath", &stru_100076738);
    sub_10000BE88(qword_10007DE40, "StandardInPath", &stru_100076778);
    sub_10000BE88(qword_10007DE40, "SandboxProfile", &stru_1000767B8);
    sub_10000BE88(qword_10007DE40, "SandboxContainer", &stru_1000767F8);
    sub_10000C038(qword_10007DE40, "_LimitLoadToDeviceTree");
    sub_10000C038(qword_10007DE40, "_LimitLoadFromDeviceTree");
    sub_10000C038(qword_10007DE40, "_LimitLoadToVariant");
    sub_10000C038(qword_10007DE40, "_LimitLoadFromVariant");
    sub_10000BE88(qword_10007DE40, "_ResourceCoalition", &stru_100076838);
    sub_10000C038(qword_10007DE40, "_LimitLoadToBootMode");
    sub_10000C038(qword_10007DE40, "_LimitLoadFromBootMode");
    sub_10000C038(qword_10007DE40, "_LimitLoadToClarityMode");
    sub_10000C038(qword_10007DE40, "_LimitLoadFromClarityMode");
    sub_10000C038(qword_10007DE40, "_LimitLoadToBootarg");
    sub_10000C038(qword_10007DE40, "_LimitLoadFromBootarg");
    sub_10000BE88(qword_10007DE40, "_ManagedBy", &stru_100076878);
    sub_10000BEF4(qword_10007DE40, "_ManagedBy", &stru_1000768B8);
    sub_10000BEF4(qword_10007DE40, "_ManagedBy_Services", &stru_1000768F8);
    sub_10000BE88(qword_10007DE40, "_SubsystemRoot", &stru_100076938);
    sub_10000C038(qword_10007DE40, "ProgramArguments");
    sub_10000BEF4(qword_10007DE40, "PublishesEvents", &stru_100076978);
    sub_10000BEF4(qword_10007DE40, "LimitLoadToHosts", &stru_1000769D8);
    sub_10000BEF4(qword_10007DE40, "LimitLoadFromHosts", &stru_100076A18);
    sub_10000C038(qword_10007DE40, "LimitLoadToSessionType");
    sub_10000BEF4(qword_10007DE40, "BinaryOrderPreference", &stru_100076A58);
    sub_10000BEF4(qword_10007DE40, "StartCalendarInterval", &stru_100076A98);
    sub_10000BEF4(qword_10007DE40, "QueueDirectories", &stru_100076AD8);
    sub_10000BEF4(qword_10007DE40, "WatchPaths", &stru_100076B18);
    sub_10000BF60(qword_10007DE40, "Policies", &stru_100076B58);
    sub_10000BF60(qword_10007DE40, "PublishesEvents", &stru_100076B98);
    sub_10000BF60(qword_10007DE40, "KeepAlive", &stru_100076BF8);
    sub_10000BF60(qword_10007DE40, "inetdCompatibility", &stru_100076C58);
    sub_10000BF60(qword_10007DE40, "JetsamProperties", &stru_100076C98);
    sub_10000BF60(qword_10007DE40, "EnvironmentVariables", &stru_100076CD8);
    sub_10000BF60(qword_10007DE40, "UserEnvironmentVariables", &stru_100076D18);
    sub_10000BF60(qword_10007DE40, "Sockets", &stru_100076D58);
    sub_10000BF60(qword_10007DE40, "StartCalendarInterval", &stru_100076DB8);
    sub_10000BF60(qword_10007DE40, "SoftResourceLimits", &stru_100076DF8);
    sub_10000BF60(qword_10007DE40, "SandboxFlags", &stru_100076E38);
    sub_10000BF60(qword_10007DE40, "HardResourceLimits", &stru_100076E78);
    sub_10000BF60(qword_10007DE40, "MachServices", &stru_100076EB8);
    sub_10000BF60(qword_10007DE40, "LaunchEvents", &stru_100076F18);
    sub_10000C038(qword_10007DE40, "LimitLoadToHardware");
    sub_10000C038(qword_10007DE40, "LimitLoadFromHardware");
    sub_10000BF60(qword_10007DE40, "Datastores", &stru_100076F78);
    sub_10000BF60(qword_10007DE40, "RemoteServices", &stru_100076FD8);
    sub_10000BF60(qword_10007DE40, "_AdditionalProperties", &stru_100077038);
    sub_10000BE88(qword_10007DE40, "_PersistToBootMode", &stru_100077078);
    sub_10000BEF4(qword_10007DE40, "_PersistToBootMode", &stru_1000770B8);
    sub_10000BD2C(qword_10007DE40, "EnableCheckedAllocations", &stru_1000770F8);
    sub_10000BFCC(qword_10007DE40, "_DextCheckInPort", &stru_100077138);
    sub_10000BD2C(qword_10007DE40, "__Angel", &stru_100077178);
    sub_10000C038(qword_10007DE40, "_StandardInFd");
    sub_10000C038(qword_10007DE40, "_StandardOutFd");
    sub_10000C038(qword_10007DE40, "_StandardErrorFd");
    sub_10000BD2C(qword_10007DE40, "_PanicOnCrash", &stru_1000771B8);
    sub_10000BF60(qword_10007DE40, "_PanicOnCrash", &stru_1000771F8);
    sub_10000BF60(qword_10007DE40, "_RecoverOnCrash", &stru_100077238);
    sub_10000BF60(qword_10007DE40, "_UrgentLogSubmission", &stru_100077278);
    sub_10000BE88(qword_10007DE40, "_Cryptex", &stru_1000772B8);
    sub_10000BE88(qword_10007DE40, "_Conclave", &stru_1000772F8);
    sub_10000C038(qword_10007DE40, "AssociatedBundleIdentifiers");
    sub_10000BE1C(qword_10007DE40, "_LaunchType", &stru_100077338);
    sub_10000BF60(qword_10007DE40, "SpawnConstraint", &stru_100077378);
    sub_10000BD2C(qword_10007DE40, "_NeedsSystemThreadGroup", &stru_1000773B8);
    v3 = a2;
    v7 = qword_10007DE40;
  }

  result = sub_10000C14C(v7, v5, a1, v3, v6);
  if ((result & 1) == 0)
  {
    *(v5 + 1408) |= 1uLL;
  }

  return result;
}

void sub_100008620(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x10000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFEFFFFLL | v4;
}

void sub_100008650(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    sub_100020018(a2, 5, "This service is defined to be constantly running and is inherently inefficient.", a4, v4, v5, v6, v7, v9);
    *(&a2->var4 + 129) |= 4uLL;
  }
}

void sub_100008698(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {

    sub_100020018(a2, 5, "This key does not do anything: OnDemand", a4, v4, v5, v6, v7, v11);
  }

  else
  {
    sub_100020018(a2, 5, "Please switch away from OnDemand to KeepAlive.", a4, v4, v5, v6, v7, v9);
    *(&a2->var4 + 129) |= 4uLL;
  }
}

void sub_100008790(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x100000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFEFFFFFFFFFFFLL | v4;
}

void sub_1000087B0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x2000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFDFFFFFFFFFLL | v4;
}

void sub_1000087D0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x40000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFBFFFFFFFFFFFFFLL | v4;
}

void sub_1000088C4(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 32;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFFDFLL | v4;
}

void sub_1000088E4(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 64;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFFBFLL | v4;
}

void sub_100008908(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x100000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFEFFFFFLL | v4;
}

void sub_100008928(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 128;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFF7FLL | v4;
}

void sub_100008950(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  a2->var4.var92 = v4;
}

void sub_100008964(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = &_mh_execute_header;
  if (a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFEFFFFFFFFLL | v4;
}

void sub_1000089C8(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 16;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFFEFLL | v4;
}

void sub_100008A40(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 1024;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFBFFLL | v4;
}

void sub_100008A70(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x20000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFDFFFFLL | v4;
}

void sub_100008A90(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x400000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFBFFFFFLL | v4;
}

void sub_100008AB4(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 2048;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFF7FFLL | v4;
}

void sub_100008AD4(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x2000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFDFFFFFFFFFFFFLL | v4;
}

void sub_100008AF4(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x8000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFF7FFFFFFFFFFFFLL | v4;
}

void sub_100008B14(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x10000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFEFFFFFFFFFFFFFLL | v4;
  a2->var4.var82 = 3;
}

void sub_100008B3C(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v8 = *(&a2->var4 + 129);
  if ((v8 & 0x80000000000) != 0)
  {
    v9 = 0x100000000000000;
    if (!a3)
    {
      v9 = 0;
    }

    *(&a2->var4 + 129) = v8 & 0xFEFFFFFFFFFFFFFFLL | v9;
  }

  else
  {
    sub_100020018(a2, 3, "%s not permitted to be set on non-submitted jobs", a4, v4, v5, v6, v7, "_DisablePointerAuth");
  }
}

void sub_100008B9C(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  if (a3 < 0)
  {
    sub_100020018(a2, 4, "%s less than zero. Ignoring.", a4, v4, v5, v6, v7, "ExitTimeOut");
  }

  else
  {
    v9 = a3;
    if (a3 >> 31)
    {
      sub_100020018(a2, 4, "%s is too large. Ignoring.", a4, v4, v5, v6, v7, "ExitTimeOut");
    }

    else
    {
      v10 = a3 + dword_10007DC3C + 2;
      if (dword_10007DC44)
      {
        v11 = v10 <= dword_10007DC44;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        sub_100020018(a2, 4, "Service has increased maximum shutdown time to %d seconds. This will create a poor experience for the user.", a4, v4, v5, v6, v7, a3 + dword_10007DC3C + 2);
        dword_10007DC44 = v10;
      }

      a2->var4.var45 = v9;
    }
  }
}

void sub_100008D58(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  if (a3 < 0)
  {
    sub_100020018(a2, 4, "%s less than zero. Ignoring.", a4, v4, v5, v6, v7, "ThrottleInterval");
  }

  else if (HIDWORD(a3))
  {
    sub_100020018(a2, 4, "%s is too large. Ignoring.", a4, v4, v5, v6, v7, "ThrottleInterval");
  }

  else if (a3)
  {
    a2->var4.var46 = a3;
  }

  else
  {
    sub_100020018(a2, 3, "ThrottleInterval set to zero. You're not that important. Ignoring.", a4, v4, v5, v6, v7, v9);
    a2->var4.var46 = 1;
  }
}

void sub_100008E04(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = strtoul(a3, 0, 0);
  *(&a2->var4 + 129) |= 0x200000000uLL;
  a2->var4.var41 = v5;
}

void sub_100008EDC(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  if (xpc_get_type(a3) != &_xpc_type_data)
  {
    type = xpc_get_type(a3);
    xpc_type_get_name(type);
    sub_100015968(a4, 3, "Invalid type (%s) for _ProvenanceData");
LABEL_8:
    *(&a2->var4 + 129) |= 1uLL;
    return;
  }

  if (xpc_data_get_length(a3) >> 32)
  {
    sub_100015968(a4, 3, "Provenance data too big: %zu");
    goto LABEL_8;
  }

  sub_100022084(a2, a3);
}

void sub_100008FD8(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  if (sub_100016A6C(a3, "Managed"))
  {
    a2->var4.var95 = 2;

    sub_100026CDC(a2, 16);
  }

  else
  {
    sub_100015968(a4, 3, "Invalid value for MultipleInstances '%s'", a3);
  }
}

void sub_10000907C(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v7 = xpc_BOOL_create(1);

  sub_1000090D4(a2, a3, v7, a4);
}

void sub_1000090D4(uint64_t a1, const char *a2, xpc_object_t object, uint64_t a4)
{
  if (!*(a1 + 504))
  {
    *(a1 + 504) = xpc_dictionary_create(0, 0, 0);
  }

  if (xpc_get_type(object) == &_xpc_type_BOOL)
  {
    if (xpc_BOOL_get_value(object))
    {
      v8 = *(a1 + 504);

      xpc_dictionary_set_uint64(v8, a2, 0);
    }
  }

  else if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_10000B014;
    applier[3] = &unk_1000773E0;
    applier[4] = &v10;
    applier[5] = a4;
    applier[6] = a1;
    xpc_dictionary_apply(object, applier);
    xpc_dictionary_set_uint64(*(a1 + 504), a2, *(v11 + 6));
    _Block_object_dispose(&v10, 8);
  }
}

void sub_1000092B4(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  a2->var4.var39 = sub_1000166EC(a3);
  a2->var4.var18 += strlen(a3) + 1;
  *(&a2->var4 + 129) |= 0x80000000000000uLL;
}

void sub_10000934C(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = sub_1000166EC(a3);
  a2->var4.var5 = v5;
  a2->var4.var18 += strlen(v5) + 1;
}

void sub_10000938C(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  if (strcmp(a3, "root"))
  {
    a2->var4.var39 = sub_1000166EC(a3);
    a2->var4.var18 += strlen(a3) + 1;
  }
}

void sub_1000093E8(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  if (strcmp(a3, "wheel"))
  {
    a2->var4.var40 = sub_1000166EC(a3);
    a2->var4.var18 += strlen(a3) + 1;
  }
}

void sub_100009444(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = sub_1000166EC(a3);
  a2->var4.var7 = v5;
  a2->var4.var18 += strlen(v5) + 1;
}

void sub_100009484(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = sub_1000166EC(a3);
  a2->var4.var8 = v5;
  a2->var4.var18 += strlen(v5) + 1;
}

void sub_1000094C4(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = sub_1000166EC(a3);
  a2->var4.var6 = v5;
  a2->var4.var18 += strlen(v5) + 1;
}

void sub_100009584(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = xpc_string_create(a3);
  sub_1000432E8(a2, v5);

  xpc_release(v5);
}

void sub_1000095E8(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  v5 = sub_1000168E0("%s/", a3);
  a2->var4.var11 = v5;
  a2->var4.var18 += strlen(v5) + 1;
}

void sub_100009638(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000096A8;
  v4[3] = &unk_100076998;
  v4[4] = a2;
  v4[5] = a4;
  xpc_array_apply(a3, v4);
}

uint64_t sub_1000096A8(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v8 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(object);
    v10 = xpc_BOOL_create(1);
    sub_1000090D4(v8, string_ptr, v10, *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 40);
    type = xpc_get_type(object);
    name = xpc_type_get_name(type);
    sub_100015968(v5, 3, "Invalid item type %s in PublishesEvents, expected string", name);
    *(*(a1 + 32) + 1408) |= 1uLL;
  }

  return 1;
}

void sub_1000097E8(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  xpc_binprefs_init(v18);
  if (xpc_array_get_count(a3))
  {
    for (i = 0; i < xpc_array_get_count(a3); ++i)
    {
      value = xpc_array_get_value(a3, i);
      if (xpc_get_type(value) == &_xpc_type_int64)
      {
        v10 = xpc_int64_get_value(value);
        v11 = -1;
      }

      else
      {
        if (xpc_get_type(value) != &_xpc_type_dictionary)
        {
          type = xpc_get_type(value);
          xpc_type_get_name(type);
          sub_100015968(a4, 3, "Invalid CPU type value type specified: %s");
          continue;
        }

        v12 = xpc_dictionary_get_value(value, "CPUType");
        if (!v12)
        {
          sub_100015968(a4, 3, "Missing CPUType", v17);
          continue;
        }

        v13 = v12;
        if (xpc_get_type(v12) != &_xpc_type_int64)
        {
          sub_100015968(a4, 3, "Wrong CPUType type - expecting int64", v17);
          continue;
        }

        v14 = xpc_int64_get_value(v13);
        v15 = xpc_dictionary_get_value(value, "CPUSubtype");
        if (v15)
        {
          v16 = v15;
          if (xpc_get_type(v15) != &_xpc_type_int64)
          {
            sub_100015968(a4, 3, "Wrong CPUSubtype type - expecting int64");
            continue;
          }

          v11 = xpc_int64_get_value(v16);
        }

        else
        {
          v11 = -1;
        }

        v10 = v14;
      }

      xpc_binprefs_add(v18, v10, v11);
    }
  }

  sub_10000417C(a2, v18);
}

void sub_1000099B4(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  if (xpc_array_get_count(a3))
  {
    v6 = 0;
    do
    {
      value = xpc_array_get_value(a3, v6);
      sub_100009A1C(a2, value);
      ++v6;
    }

    while (v6 < xpc_array_get_count(a3));
  }
}

void sub_100009A1C(uint64_t a1, void *a2)
{
  bzero(__str, 0x400uLL);
  v4 = qword_10007D420++;
  snprintf(__str, 0x400uLL, "%s.%llu", (a1 + 1424), v4);
  sub_100009B4C(a1, "com.apple.launchd.calendarinterval", __str, a2);
}

void sub_100009ACC(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v6, "QueueDirectories", a3);
  sub_100009B4C(a2, "com.apple.fsevents.matching", "com.apple.launchd.QueueDirectories", v6);

  xpc_release(v6);
}

void sub_100009B4C(uint64_t a1, char *key, const char *a3, void *a4)
{
  v8 = *(a1 + 496);
  if (!v8)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    *(a1 + 496) = v8;
  }

  value = xpc_dictionary_get_value(v8, key);
  if (!value)
  {
    value = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(*(a1 + 496), key, value);
    xpc_release(value);
  }

  xpc_dictionary_set_value(value, a3, a4);
}

void sub_100009BF4(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v6, "WatchPaths", a3);
  sub_100009B4C(a2, "com.apple.fsevents.matching", "com.apple.launchd.WatchPaths", v6);

  xpc_release(v6);
}

void sub_100009CB8(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100009D28;
  v4[3] = &unk_100076BB8;
  v4[4] = a2;
  v4[5] = a4;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_100009D28(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary || xpc_get_type(object) == &_xpc_type_BOOL)
  {
    sub_1000090D4(*(a1 + 32), a2, object, *(a1 + 40));
  }

  else
  {
    sub_100015968(*(a1 + 40), 3, "Invalid item %s in PublishesEvents, expected dictionary or BOOL", a2);
    *(*(a1 + 32) + 1408) |= 1uLL;
  }

  return 1;
}

void sub_100009DD0(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100009E40;
  v4[3] = &unk_100076C18;
  v4[4] = a2;
  v4[5] = a4;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_100009E40(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v5 + 1408) |= 8uLL;
  v7 = __tolower(*a2);
  if (v7 <= 110)
  {
    if (v7 == 97)
    {
      if (strcasecmp(a2, "AfterInitialDemand"))
      {
        goto LABEL_26;
      }

      if (xpc_get_type(a3) == &_xpc_type_BOOL)
      {
        v12 = *(v5 + 1408) & 0xFFFFFFFFFF7FFFFFLL | ((a3 != 0) << 23);
LABEL_28:
        *(v5 + 1408) = v12;
        return 1;
      }
    }

    else
    {
      if (v7 != 99)
      {
        if (v7 == 110)
        {
          v8 = "NetworkState";
LABEL_17:
          if (!strcasecmp(a2, v8))
          {
            goto LABEL_18;
          }
        }

LABEL_26:
        sub_100015968(v6, 3, "Unknown key for KeepAlive: %s");
LABEL_27:
        v12 = *(v5 + 1408) | 1;
        goto LABEL_28;
      }

      if (strcasecmp(a2, "Crashed"))
      {
        goto LABEL_26;
      }

      if (xpc_get_type(a3) == &_xpc_type_BOOL)
      {
        v9 = sub_100014514(0x28uLL, 0x10F0040E3AB0133uLL);
        v10 = sub_10001FD60;
        v9[32] = a3 == &_xpc_BOOL_true;
        v11 = "after crash";
        goto LABEL_22;
      }
    }

LABEL_31:
    sub_100015968(v6, 3, "Improper type for KeepAlive key: %s");
    goto LABEL_27;
  }

  if (v7 == 111)
  {
    if (!strcasecmp(a2, "OtherJobActive"))
    {
LABEL_18:
      sub_100020018(v5, 3, "The %s key is no longer respected. %s", v13, v14, v15, v16, v17, a2);
      return 1;
    }

    v8 = "OtherJobEnabled";
    goto LABEL_17;
  }

  if (v7 == 112)
  {
    if (strcmp(a2, "PathState"))
    {
      goto LABEL_26;
    }

    if (xpc_get_type(a3) == &_xpc_type_dictionary)
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(v21, "PathState", a3);
      sub_100009B4C(v5, "com.apple.fsevents.matching", "com.apple.launchd.PathState", v21);
      xpc_release(v21);
      return 1;
    }

    goto LABEL_31;
  }

  if (v7 != 115 || strcmp(a2, "SuccessfulExit"))
  {
    goto LABEL_26;
  }

  if (xpc_get_type(a3) != &_xpc_type_BOOL)
  {
    goto LABEL_31;
  }

  v9 = sub_100014514(0x28uLL, 0x10F0040E3AB0133uLL);
  v10 = sub_10001FDBC;
  v9[32] = a3 == &_xpc_BOOL_true;
  v11 = "successful exit";
LABEL_22:
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v18 = (v5 + 672);
  v19 = *(v5 + 672);
  *v9 = v19;
  if (v19)
  {
    *(v19 + 8) = v9;
  }

  *v18 = v9;
  *(v9 + 1) = v18;
  return 1;
}

int64_t sub_10000A138(const char *a1, void *a2, uint64_t a3)
{
  if (!strcasecmp(a1, "Wait"))
  {
    result = xpc_BOOL_get_value(a2);
    v7 = 0x8000;
    if (!result)
    {
      v7 = 0;
    }

    *(a3 + 1408) = *(a3 + 1408) & 0xFFFFFFFFFFFF7FFFLL | v7;
  }

  else
  {
    result = strcasecmp(a1, "Instances");
    if (!result)
    {
      result = xpc_int64_get_value(a2);
      *(a3 + 268) = result;
    }
  }

  return result;
}

void sub_10000A220(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000A290;
  v4[3] = &unk_100076D78;
  v4[4] = a2;
  v4[5] = a4;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_10000A290(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    if (xpc_get_type(object) != &_xpc_type_array)
    {
      sub_100020018(v5, 3, "Socket entry is not a dictionary or array. Skipping: %s", v7, v8, v9, v10, v11, a2);
LABEL_5:
      *(v5 + 1408) |= 1uLL;
      return 1;
    }

    if (!xpc_array_get_count(object))
    {
      return 1;
    }

    v12 = 0;
    while (1)
    {
      value = xpc_array_get_value(object, v12);
      if (xpc_get_type(value) == &_xpc_type_dictionary)
      {
        if ((*(v5 + 552))(v5, a2, value, v6, *(v5 + 568)))
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_100020018(v5, 3, "Socket entry is not a dictionary. Skipping: %s", v14, v15, v16, v17, v18, a2);
      }

      *(v5 + 1408) |= 1uLL;
LABEL_12:
      if (++v12 >= xpc_array_get_count(object))
      {
        return 1;
      }
    }
  }

  if (!(*(v5 + 552))(v5, a2, object, v6, *(v5 + 568)))
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_10000A408(const char *a1, xpc_object_t object, uint64_t a3)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(object);
    v8 = &word_100077408;
    v9 = 9;
    while (1)
    {
      result = strcasecmp(*(v8 - 1), a1);
      if (!result)
      {
        break;
      }

      v8 += 8;
      if (!--v9)
      {
        return result;
      }
    }

    v10 = *v8;
    v11 = *(a3 + 1408);
    v12 = (a3 + 680);
    result = v12;
    while (1)
    {
      result = *result;
      if (!result)
      {
        break;
      }

      if (*(result + 32) == v10)
      {
        goto LABEL_13;
      }
    }

    result = sub_100014514(0x28uLL, 0x10A0040F99E814CuLL);
    *(result + 32) = v10;
    v13 = *v12;
    *result = *v12;
    if (v13)
    {
      *(v13 + 8) = result;
    }

    *v12 = result;
    *(result + 8) = v12;
LABEL_13:
    if ((v11 & 0x1000000000) != 0)
    {
      *(result + 34) = 1;
      v14 = 24;
    }

    else
    {
      *(result + 35) = 1;
      v14 = 16;
    }

    *(result + v14) = value;
  }

  return result;
}

void sub_10000A550(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  *(&a2->var4 + 129) |= 0x1000000000uLL;
  xpc_dictionary_apply_f();
  *(&a2->var4 + 129) &= ~0x1000000000uLL;
}

void sub_10000A5A0(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000A610;
  v4[3] = &unk_100076ED8;
  v4[4] = a2;
  v4[5] = a4;
  xpc_dictionary_apply(a3, v4);
}

void sub_10000A634(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000A6A4;
  v4[3] = &unk_100076F38;
  v4[4] = a2;
  v4[5] = a4;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_10000A6A4(uint64_t a1, const char *a2, xpc_object_t object)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_10000B110;
    applier[3] = &unk_100077490;
    applier[4] = object;
    applier[5] = v5;
    applier[6] = a2;
    applier[7] = v6;
    xpc_dictionary_apply(object, applier);
  }

  else
  {
    type = xpc_get_type(object);
    name = xpc_type_get_name(type);
    sub_100015968(v5, 3, "Invalid type for a LaunchEvent stream, should be a dictionary (stream/type): %s/%s", a2, name);
    *(v6 + 1408) |= 1uLL;
  }

  return 1;
}

void sub_10000A784(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000A7F4;
  v4[3] = &unk_100076F98;
  v4[4] = a4;
  v4[5] = a2;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_10000A7F4(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_int64(object, "SizeLimit"))
    {
      sub_100009B4C(*(a1 + 40), "com.apple.xpc.datastores.publish", a2, object);
      return 1;
    }

    sub_100015968(*(a1 + 32), 3, "Size limit for Datastore entry not specified: %s");
  }

  else
  {
    v6 = *(a1 + 32);
    type = xpc_get_type(object);
    xpc_type_get_name(type);
    sub_100015968(v6, 3, "Invalid type for a Datastores entry, should be a dictionary (key/type): %s/%s");
  }

  *(*(a1 + 40) + 1408) |= 1uLL;
  return 1;
}

void sub_10000A8C4(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000A934;
  v4[3] = &unk_100076FF8;
  v4[4] = a4;
  v4[5] = a2;
  xpc_dictionary_apply(a3, v4);
}

uint64_t sub_10000A934(uint64_t a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    sub_100009B4C(*(a1 + 40), "com.apple.remoted.service", a2, object);
  }

  else
  {
    v6 = *(a1 + 32);
    type = xpc_get_type(object);
    name = xpc_type_get_name(type);
    sub_100015968(v6, 3, "Invalid type for a RemoteServices entry, should be a dictionary (key/type): %s/%s", a2, name);
    *(*(a1 + 40) + 1408) |= 1uLL;
  }

  return 1;
}

void sub_10000AA78(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  a2->var4.var25 = xpc_array_create_empty();
  if (xpc_array_get_count(a3))
  {
    v7 = 0;
    do
    {
      value = xpc_array_get_value(a3, v7);
      if (xpc_get_type(value) == &_xpc_type_string)
      {
        xpc_array_append_value(a2->var4.var25, value);
      }

      else
      {
        sub_100015968(a4, 3, "Invalid type for _PersistToBootMode at index: %lu", v7);
        *(&a2->var4 + 129) |= 1uLL;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(a3));
  }
}

void sub_10000AB48(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v5 = 201326592;
  }

  else
  {
    sub_100015968(a4, 4, "EnableCheckedAllocations=>false is not allowed");
    v5 = 1;
  }

  *(&a2->var4 + 129) |= v5;
}

void sub_10000AB98(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  if (xpc_get_type(a3) == &_xpc_type_mach_send)
  {
    a2->var4.var94 = xpc_mach_send_copy_right();
  }

  else
  {
    sub_10005443C(a2);
  }
}

void sub_10000ABEC(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x400000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFBFFFFFFFFFFFFFFLL | v4;
}

void sub_10000AC0C(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    a2->var4.var83 = 1;
  }
}

void sub_10000AC1C(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10000B1C4;
  applier[3] = &unk_1000774B8;
  applier[7] = &v11;
  applier[8] = a4;
  applier[4] = &v7;
  applier[5] = &v19;
  applier[6] = &v15;
  xpc_dictionary_apply(a3, applier);
  if ((v16[3] & 1) == 0)
  {
    if (*(v12 + 24) == 1)
    {
      *(&a2->var4 + 129) |= 0x800000000000000uLL;
      v5 = v8[3];
      if (!v5)
      {
        v5 = qword_10007DC50;
      }
    }

    else
    {
      a2->var4.var83 = *(v20 + 24);
      v5 = v8[3];
    }

    a2->var4.var84 = v5;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void sub_10000AD7C(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10000B38C;
  applier[3] = &unk_1000774E0;
  applier[5] = &v8;
  applier[6] = a4;
  applier[4] = &v12;
  xpc_dictionary_apply(a3, applier);
  *(&a2->var4 + 129) |= 0x1000000000000000uLL;
  v5 = v13[3];
  if (!v5)
  {
    v5 = qword_10007DC58;
  }

  a2->var4.var84 = v5;
  v6 = v9[3];
  if (!v6)
  {
    LOWORD(v6) = word_10007DC60;
  }

  a2->var4.var82 = v6;
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

void sub_10000AE88(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000066E8;
  v4[3] = &unk_1000753D0;
  v4[4] = a4;
  v4[5] = a2;
  xpc_dictionary_apply(a3, v4);
}

void sub_10000AF3C(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  var74 = a2->var4.var74;
  a2->var4.var74 = a3;
  if ((sub_100002D28(a2, 7) & 1) == 0)
  {
    sub_100015968(a4, 3, "Supplied value (%lld) for _LaunchType key not allowed", a3);
    a2->var4.var74 = var74;
  }
}

void sub_10000AFA8(id a1, _launch_service_s *a2, void *a3, _launch_lint_s *a4)
{
  v5 = sub_100021F4C(a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = xpc_strerror();
    sub_100015968(a4, 3, "SpawnConstraint is invalid - %d %s", v6, v7);
  }
}

uint64_t sub_10000B014(uint64_t a1, char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_BOOL)
  {
    if (sub_100016AAC(a2, "DomainInternal"))
    {
      if (!xpc_BOOL_get_value(object))
      {
        return 1;
      }

      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24) | 1;
    }

    else
    {
      if (!sub_100016AAC(a2, "RequireTrusted"))
      {
        sub_100015968(*(a1 + 40), 3, "Unknown property %s for PublishesEvents");
        goto LABEL_3;
      }

      if (!xpc_BOOL_get_value(object))
      {
        return 1;
      }

      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24) | 2;
    }

    *(v7 + 24) = v8;
    return 1;
  }

  sub_100015968(*(a1 + 40), 3, "Invalid type for PublishesEvents property %s, expected BOOL");
LABEL_3:
  *(*(a1 + 48) + 1408) |= 1uLL;
  return 1;
}

uint64_t sub_10000B110(uint64_t a1, const char *a2, void *a3)
{
  type = xpc_get_type(*(a1 + 32));
  v7 = *(a1 + 48);
  if (type == &_xpc_type_dictionary)
  {
    sub_100009B4C(*(a1 + 56), *(a1 + 48), a2, a3);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = xpc_get_type(a3);
    name = xpc_type_get_name(v9);
    sub_100015968(v8, 3, "Invalid type for a LaunchEvent (stream/name/type): %s/%s/%s", v7, a2, name);
    *(*(a1 + 56) + 1408) |= 1uLL;
  }

  return 1;
}

uint64_t sub_10000B1C4(uint64_t a1, char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_int64)
  {
    if (xpc_get_type(object) != &_xpc_type_BOOL)
    {
      sub_100015968(*(a1 + 64), 3, "Improper type for _PanicOnCrash key: %s");
      return 1;
    }

    if (object == &_xpc_BOOL_false)
    {
      return 1;
    }

    if (sub_100016AAC(a2, "PanicOnNonZeroExit"))
    {
      v9 = *(*(a1 + 40) + 8);
      v10 = 3;
LABEL_25:
      *(v9 + 24) = v10;
      return 1;
    }

    if (sub_100016AAC(a2, "InternalOnly"))
    {
      if (byte_10007F0E6)
      {
        return 1;
      }

      sub_100015968(*(a1 + 64), 4, "_PanicOnCrash key: InternalOnly not enabled in the current environment");
    }

    else
    {
      if (!sub_100016AAC(a2, "AutomationOnly"))
      {
        if (!sub_100016AAC(a2, "PanicOnConsecutiveCrash"))
        {
          return 1;
        }

        v12 = *(a1 + 56);
        goto LABEL_24;
      }

      if (byte_10007F0E7)
      {
        return 1;
      }

      sub_100015968(*(a1 + 64), 4, "_PanicOnCrash key: AutomationOnly not enabled in the current environment");
    }

    v12 = *(a1 + 48);
LABEL_24:
    v9 = *(v12 + 8);
    v10 = 1;
    goto LABEL_25;
  }

  value = xpc_int64_get_value(object);
  if (sub_100016AAC(a2, "PanicOnCrashDeadline"))
  {
    if (value < 0)
    {
      v7 = *(a1 + 64);
      v8 = "_PanicOnCrash key: PanicOnCrashDeadline less than zero. Ignoring.";
    }

    else
    {
      if (is_mul_ok(value, 0x3B9ACA00uLL))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1000000000 * value;
        return 1;
      }

      v7 = *(a1 + 64);
      v13 = value;
      v8 = "_PanicOnCrash key: PanicOnCrashDeadline overflowed converting to ns (%lld)";
    }

    sub_100015968(v7, 4, v8, v13);
  }

  return 1;
}

uint64_t sub_10000B38C(void *a1, char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(object);
    if (sub_100016AAC(a2, "RecoverOnCrashDeadline"))
    {
      if ((value & 0x8000000000000000) != 0)
      {
        v7 = a1[6];
        v8 = "_RecoverOnCrash key: RecoverOnCrashDeadline invalid. Ignoring.";
      }

      else
      {
        if (is_mul_ok(value, 0x3B9ACA00uLL))
        {
          *(*(a1[4] + 8) + 24) = 1000000000 * value;
          return 1;
        }

        v7 = a1[6];
        v10 = value;
        v8 = "_RecoverOnCrash key: RecoverOnCrashDeadline overflowed converting to ns (%lld)";
      }
    }

    else
    {
      if (!sub_100016AAC(a2, "RecoverOnCrashCount"))
      {
        return 1;
      }

      if (value < 0x101)
      {
        *(*(a1[5] + 8) + 24) = value;
        return 1;
      }

      v7 = a1[6];
      v8 = "_RecoverOnCrash key: RecoverOnCrashCount invalid value. Ignoring.";
    }

    sub_100015968(v7, 4, v8, v10);
    return 1;
  }

  sub_100015968(a1[6], 3, "Improper type for _RecoverOnCrash key: %s");
  return 1;
}

uint64_t sub_10000B4A8(uint64_t a1)
{
  v1 = mach_absolute_time() - a1;

  return sub_10000B4E0(v1);
}

uint64_t sub_10000B4E0(uint64_t a1)
{
  if (qword_10007DE48 != -1)
  {
    sub_100054484();
  }

  if (dword_10007DE50 != *algn_10007DE54)
  {
    return __udivti3();
  }

  return a1;
}

void sub_10000B548(unint64_t a1)
{
  if (qword_10007DE48 != -1)
  {
    sub_100054484();
  }

  if (dword_10007DE50 != *algn_10007DE54 && !is_mul_ok(a1 / dword_10007DE50, *algn_10007DE54))
  {
    __break(1u);
  }
}

uint64_t sub_10000B5B0(mach_port_options_ptr_t options, mach_port_context_t context, mach_port_name_t *name)
{
  do
  {
    v6 = mach_port_construct(mach_task_self_, options, context, name);
    v7 = v6;
    v8 = v6 == 6 || v6 == 3;
  }

  while (v8 && sub_100016680());
  return v7;
}

uint64_t sub_10000B620(mach_port_options_t *a1, mach_port_context_t a2)
{
  name = 0;
  v2 = sub_10000B5B0(a1, a2, &name);
  if (v2)
  {
    sub_100054490(v2);
  }

  return name;
}

uint64_t sub_10000B654(uint32_t a1, mach_port_msgcount_t a2, mach_port_context_t a3)
{
  v4.flags = a1;
  v4.mpl.mpl_qlimit = a2;
  v4.8 = 0uLL;
  return sub_10000B620(&v4, a3);
}

uint64_t sub_10000B69C(mach_port_name_t name, uint64_t a2)
{
  *info = a2;
  result = mach_port_assert_attributes(mach_task_self_, name, 8, info, 2u);
  if (result)
  {
    sub_1000544B8(result);
  }

  return result;
}

uint64_t sub_10000B7B0(mach_port_name_t name, mach_port_t notify, mach_port_t *previous)
{
  if (notify)
  {
    v3 = 21;
  }

  else
  {
    v3 = 18;
  }

  return mach_port_request_notification(mach_task_self_, name, 69, 0, notify, v3, previous);
}

uint64_t sub_10000B7FC()
{
  if (_os_alloc_once_table[2] == -1)
  {
    v0 = _os_alloc_once_table[3];
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 41) == 1)
  {
    if (*(v0 + 48) != -1)
    {
      dispatch_once_f((v0 + 48), (v0 + 56), sub_10000B890);
    }
  }

  else
  {
    sub_10000B890((v0 + 56));
  }

  return v0 + 56;
}

uint64_t sub_10000B890(task_info_t task_info_out)
{
  task_info_outCnt = 8;
  if (task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt))
  {
    sub_1000544E0();
  }

  v2 = task_info_out[5];
  result = getpid();
  if (v2 != result || !task_info_out[7])
  {
    sub_1000544E0();
  }

  return result;
}

uint64_t sub_10000B900(posix_spawnattr_t *a1, mach_port_t new_port)
{
  if (_os_alloc_once_table[2] == -1)
  {
    v4 = _os_alloc_once_table[3];
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if (*(v4 + 42))
  {
    v5 = 7168;
  }

  else
  {
    v5 = 10240;
  }

  if (a1)
  {
    result = posix_spawnattr_setexceptionports_np(a1, v5, new_port, -1610612732, 1);
    if (result)
    {
      sub_100054420();
    }
  }

  else
  {
    v7 = mach_task_self_;

    return task_set_exception_ports(v7, v5, new_port, -1610612732, 1);
  }

  return result;
}

uint64_t sub_10000B9C0(task_t task)
{
  if (_os_alloc_once_table[2] == -1)
  {
    v2 = _os_alloc_once_table[3];
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v19 = 0;
  memset(masks, 0, sizeof(masks));
  masksCnt = 0;
  v17 = 0;
  memset(old_handlers, 0, sizeof(old_handlers));
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  *old_behaviors = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *old_flavors = 0u;
  if (*(v2 + 42))
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x2000;
  }

  if (mach_task_self_ == task)
  {
    exception_ports = task_get_exception_ports(task, v3, masks, &masksCnt, old_handlers, old_behaviors, old_flavors);
  }

  else
  {
    v5 = mach_host_self();
    exception_ports = host_get_exception_ports(v5, v3, masks, &masksCnt, old_handlers, old_behaviors, old_flavors);
  }

  if (exception_ports)
  {
    sub_100054420();
  }

  return LODWORD(old_handlers[0]);
}

uint64_t sub_10000BAFC(void *a1)
{
  result = sub_10000B7FC();
  if (result == a1)
  {
    return 1;
  }

  if (result)
  {
    return *a1 == *result && a1[1] == *(result + 8) && a1[2] == *(result + 16) && a1[3] == *(result + 24);
  }

  return result;
}

uint64_t sub_10000BB58(void *a1, const char *a2, const _xpc_type_s *a3, uint64_t (*a4)(xpc_object_t))
{
  if (xpc_get_type(a1) != &_xpc_type_error && xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    return 0;
  }

  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v8 = value;
  if (xpc_get_type(value) != a3)
  {
    return 0;
  }

  return a4(v8);
}

uint64_t sub_10000BC2C()
{
  result = mach_timebase_info(&dword_10007DE50);
  if (result)
  {
    sub_100054420();
  }

  return result;
}

void *sub_10000BC6C(const char *a1)
{
  v2 = sub_100014514(0xB0uLL, 0xD0040D27D4415uLL);
  *v2 = sub_1000166EC(a1);
  os_map_str_init();
  os_map_str_init();
  os_map_str_init();
  os_map_str_init();
  os_map_str_init();
  os_map_str_init();
  os_map_str_init();
  return v2;
}

uint64_t sub_10000BD2C(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 8, a2, v6);
}

uint64_t sub_10000BD98(uint64_t a1, uint64_t a2, const char *a3, char **a4)
{
  v5 = sub_10000C0F8(a3);
  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  *a4 = v5;

  return os_map_str_insert();
}

uint64_t sub_10000BE1C(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 32, a2, v6);
}

uint64_t sub_10000BE88(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 56, a2, v6);
}

uint64_t sub_10000BEF4(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 80, a2, v6);
}

uint64_t sub_10000BF60(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 104, a2, v6);
}

uint64_t sub_10000BFCC(uint64_t a1, const char *a2, char *a3)
{
  v6 = sub_100014514(0x10uLL, 0x900405DDA6445uLL);
  v6[1] = a3;

  return sub_10000BD98(a1, a1 + 128, a2, v6);
}

uint64_t sub_10000C038(uint64_t a1, const char *a2)
{
  sub_10000C0F8(a2);
  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  if (os_map_str_find())
  {
    sub_100054404();
  }

  return os_map_str_insert();
}

char *sub_10000C0F8(const char *a1)
{
  v1 = sub_1000166EC(a1);
  if (*v1)
  {
    v2 = 0;
    do
    {
      v1[v2] = __tolower(v1[v2]);
      ++v2;
    }

    while (v2 < strlen(v1));
  }

  return v1;
}

uint64_t sub_10000C14C(uint64_t *a1, uint64_t a2, const char *a3, void *a4, uint64_t a5)
{
  v9 = sub_10000C0F8(a3);
  if (os_map_str_find())
  {
    goto LABEL_2;
  }

  type = xpc_get_type(a4);
  if (type != &_xpc_type_BOOL)
  {
    if (type == &_xpc_type_int64)
    {
      v16 = os_map_str_find();
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = *(v16 + 8);
      value = xpc_int64_get_value(a4);
      v19 = *(v17 + 16);
      v20 = v17;
    }

    else
    {
      if (type != &_xpc_type_string)
      {
        v24 = os_map_str_find();
        if (v24)
        {
          v20 = *(v24 + 8);
          v19 = *(v20 + 16);
          v23 = a2;
          value = a4;
          goto LABEL_17;
        }

LABEL_18:
        v25 = xpc_get_type(a4);
        v26 = sub_10000FC98(0x80uLL);
        v27 = *a1;
        xpc_type_get_name(v25);
        sub_10000FD40(v26, "Invalid type for %s importer (key: %s type: %s), accepted types: [", v28, v29, v30, v31, v32, v33, v27);
        v34 = os_map_str_find();
        v41 = v34 != 0;
        if (v34)
        {
          sub_10000FD40(v26, "BOOL, ", v35, v36, v37, v38, v39, v40, v89);
        }

        if (os_map_str_find())
        {
          sub_10000FD40(v26, "integer, ", v42, v43, v44, v45, v46, v47, v89);
          v41 = 1;
        }

        if (os_map_str_find())
        {
          sub_10000FD40(v26, "string, ", v48, v49, v50, v51, v52, v53, v89);
          v41 = 1;
        }

        if (os_map_str_find())
        {
          sub_10000FD40(v26, "array, ", v54, v55, v56, v57, v58, v59, v89);
          v41 = 1;
        }

        if (os_map_str_find())
        {
          sub_10000FD40(v26, "dictionary, ", v60, v61, v62, v63, v64, v65, v89);
          if (!os_map_str_find())
          {
            goto LABEL_31;
          }
        }

        else if (!os_map_str_find())
        {
          if (!v41)
          {
            v83 = *a1;
            xpc_type_get_name(v25);
            sub_100020018(a2, 3, "Unknown key for %s importer (key: %s type: %s)", v84, v85, v86, v87, v88, v83);
            goto LABEL_32;
          }

LABEL_31:
          sub_10000FE4C(v26, 2uLL);
          sub_10000FD40(v26, "]", v72, v73, v74, v75, v76, v77, v89);
          sub_100020018(a2, 3, "%s", v78, v79, v80, v81, v82, *v26);
LABEL_32:
          sub_10000FD04(v26);
          v10 = 0;
          goto LABEL_3;
        }

        sub_10000FD40(v26, "object, ", v66, v67, v68, v69, v70, v71, v89);
        goto LABEL_31;
      }

      v21 = os_map_str_find();
      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = v21;
      value = xpc_string_get_string_ptr(a4);
      v20 = *(v22 + 8);
      v19 = *(v20 + 16);
    }

    v23 = a2;
LABEL_17:
    v19(v20, v23, value, a5);
    goto LABEL_2;
  }

  v13 = os_map_str_find();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *(v13 + 8);
  v15 = xpc_BOOL_get_value(a4);
  (*(v14 + 16))(v14, a2, v15, a5);
LABEL_2:
  v10 = 1;
LABEL_3:
  free(v9);
  return v10;
}

void sub_10000C494(const void *a1)
{
  if (dword_10007F800)
  {
    v2 = sub_1000157D8();
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v2);
    v4 = dispatch_time(0, 1000000000 * dword_10007F800);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(v3, sub_10000C568);
    v5 = _Block_copy(a1);
    dispatch_set_context(v3, v5);

    dispatch_activate(v3);
  }
}

void sub_10000C568()
{
  v0 = sub_10003283C();
  v1 = mach_absolute_time();
  if (!*(v0 + 188))
  {
    sub_10004749C(65541, "Shutdown stall event fired with no activations (skipping report)");
  }

  v2 = mach_absolute_time();
  v3 = sub_10000B544(v2 - v1);

  sub_10001A2BC(v3);
}

uint64_t sub_10000C5CC(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "Version4");
  if (!dictionary)
  {
    return 22;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10000C6F0;
  v5[3] = &unk_100077500;
  v5[4] = dictionary;
  sub_10000C688(v5);
  result = os_variant_is_darwinos();
  if (result)
  {
    v4 = xpc_retain(a1);
    xpc_array_append_value(qword_10007F000, v4);
    return 0;
  }

  return result;
}

uint64_t sub_10000C688(uint64_t result)
{
  v1 = result;
  v2 = &unk_10007D428;
  v3 = 8;
  do
  {
    if ((v2[2] & 2) != 0)
    {
      if (!v2[3])
      {
        sub_100054404();
      }

      result = (*(v1 + 16))(v1, v2);
    }

    v2 += 4;
    --v3;
  }

  while (v3);
  return result;
}

void *sub_10000C6F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  result = xpc_dictionary_get_dictionary(*(a1 + 32), v3);
  if (result)
  {
    v5 = result;
    result = xpc_get_type(result);
    if (result == &_xpc_type_dictionary)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        result = xpc_dictionary_get_dictionary(v5, off_100077580[v6]);
        if (result)
        {
          v9 = result;
          result = xpc_get_type(result);
          if (result == &_xpc_type_dictionary)
          {
            applier[0] = _NSConcreteStackBlock;
            applier[1] = 0x40000000;
            applier[2] = sub_10000D708;
            applier[3] = &unk_100077590;
            applier[4] = a2;
            applier[5] = v3;
            v11 = v6;
            result = xpc_dictionary_apply(v9, applier);
          }
        }

        v7 = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10000C808(const char *a1)
{
  sub_10004749C(5, "Loading overlay plist from: %s", a1);
  v2 = sub_100015A08();
  v3 = sub_100015A14();
  v4 = sub_10004144C(a1, v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000C5CC(v4);
    xpc_release(v5);
    return v6;
  }

  else
  {
    sub_10004749C(3, "Overlay plist is missing.");
    return 2;
  }
}

uint64_t sub_10000C894(const char *a1)
{
  v2 = sub_1000168E0("%s%s", a1, "/Library/JetsamProperties/com.apple.jetsamproperties.DDI.plist");
  sub_10004749C(5, "Loading DDI overlay plist from: %s", v2);
  v3 = sub_10000C808(v2);
  free(v2);
  if (v3 == 2)
  {
    v4 = sub_1000168E0("%s%s", a1, "/System/Library/JetsamProperties/com.apple.jetsamproperties.cryptex.plist");
    sub_10004749C(5, "Loading Cryptex overlay plist from: %s", v4);
    LODWORD(v3) = sub_10000C808(v4);
    free(v4);
    if (v3 == 2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

void sub_10000C960(void *a1, _BYTE *a2)
{
  sub_10000D7C4(a1, "ActiveSoftMemoryLimit", "ActiveHardMemoryLimit", a2);
  sub_10000D7C4(a1, "InactiveSoftMemoryLimit", "InactiveHardMemoryLimit", a2);
  int64 = xpc_dictionary_get_int64(a1, "CPUMonitorInterval");
  v5 = xpc_dictionary_get_int64(a1, "CPUMonitorPercentage");
  if (int64 >= 0x100)
  {
    sub_100015968(a2, 3, "CPUMonitorInterval is out of range, ignoring");
    xpc_dictionary_set_value(a1, "CPUMonitorInterval", 0);
    int64 = 0;
  }

  if (v5 >= 0x65)
  {
    sub_100015968(a2, 3, "CPUMonitorPercentage is out of range, ignoring");
    xpc_dictionary_set_value(a1, "CPUMonitorPercentage", 0);
    if (!int64)
    {
      return;
    }

    goto LABEL_11;
  }

  if (int64)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 100;
  }

  if (!v6 && (v5 != 0) == (int64 == 0))
  {
LABEL_11:
    sub_100015968(a2, 3, "incomplete CPUMonitor, ignoring");
    xpc_dictionary_set_value(a1, "CPUMonitorInterval", 0);

    xpc_dictionary_set_value(a1, "CPUMonitorPercentage", 0);
  }
}

BOOL sub_10000CAD4(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000CB48;
  v4[3] = &unk_100077520;
  v4[4] = a1;
  v4[5] = a3;
  return xpc_dictionary_apply(xdict, v4);
}

uint64_t sub_10000CB48(uint64_t a1, const char *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = qword_10007DE60;
  if (!qword_10007DE60)
  {
    qword_10007DE60 = sub_10000BC6C("JetsamProperties");
    sub_10000BD2C(qword_10007DE60, "AlwaysSIGTERMOnShutdown", &stru_1000775D0);
    sub_10000BD2C(qword_10007DE60, "EnableTransactions", &stru_100077610);
    sub_10000BD2C(qword_10007DE60, "EnablePressuredExit", &stru_100077650);
    sub_10000C038(qword_10007DE60, "ExecuteAllowed");
    sub_10000BD2C(qword_10007DE60, "EnableIdleHysteresis", &stru_100077690);
    sub_10000BD2C(qword_10007DE60, "MallocSpaceEfficient", &stru_1000776D0);
    sub_10000BD2C(qword_10007DE60, "MallocNanoZone", &stru_100077710);
    sub_10000BD2C(qword_10007DE60, "MallocLargeCache", &stru_100077750);
    sub_10000BD2C(qword_10007DE60, "MallocAggressiveMadvise", &stru_100077790);
    sub_10000BD2C(qword_10007DE60, "MallocMediumZone", &stru_1000777D0);
    sub_10000BE1C(qword_10007DE60, "MallocMaxMagazines", &stru_100077810);
    sub_10000BE1C(qword_10007DE60, "ActiveSoftMemoryLimit", &stru_100077850);
    sub_10000BE1C(qword_10007DE60, "ActiveHardMemoryLimit", &stru_100077890);
    sub_10000BE1C(qword_10007DE60, "AddressLimit", &stru_1000778D0);
    sub_10000BE1C(qword_10007DE60, "CPUMonitorInterval", &stru_100077910);
    sub_10000BE1C(qword_10007DE60, "CPUMonitorPercentage", &stru_100077950);
    sub_10000BE1C(qword_10007DE60, "SoftFileDescriptorLimit", &stru_100077990);
    sub_10000BE1C(qword_10007DE60, "HardFileDescriptorLimit", &stru_1000779D0);
    sub_10000BE1C(qword_10007DE60, "SoftKqWorkloopLimit", &stru_100077A10);
    sub_10000BE1C(qword_10007DE60, "HardKqWorkloopLimit", &stru_100077A50);
    sub_10000BE1C(qword_10007DE60, "InactiveSoftMemoryLimit", &stru_100077A90);
    sub_10000BE1C(qword_10007DE60, "InactiveHardMemoryLimit", &stru_100077AD0);
    sub_10000BE1C(qword_10007DE60, "JetsamPriority", &stru_100077B10);
    sub_10000BE1C(qword_10007DE60, "LogicalWritesLimit", &stru_100077B50);
    sub_10000BE1C(qword_10007DE60, "SoftPortLimit", &stru_100077B90);
    sub_10000BE1C(qword_10007DE60, "HardPortLimit", &stru_100077BD0);
    sub_10000BE1C(qword_10007DE60, "ThreadLimit", &stru_100077C10);
    sub_10000BE88(qword_10007DE60, "EnergyEfficiencyMode", &stru_100077C50);
    sub_10000BE1C(qword_10007DE60, "WiredMemoryLimit", &stru_100077C90);
    sub_10000BE1C(qword_10007DE60, "OSLogClientType", &stru_100077CD0);
    sub_10000BE88(qword_10007DE60, "OSLogRTBufferConfig", &stru_100077D10);
    sub_10000BE1C(qword_10007DE60, "OSLogRateLimit", &stru_100077D50);
    sub_10000BE88(qword_10007DE60, "_ServiceJetsamCoalitionToJoin", &stru_100077D90);
    sub_10000BE1C(qword_10007DE60, "ConclaveMemoryLimit", &stru_100077DD0);
    sub_10000BD2C(qword_10007DE60, "NoExcResourceDuringAudio", &stru_100077E10);
    sub_10000BD2C(qword_10007DE60, "RecoverOnCrash", &stru_100077E50);
    v7 = qword_10007DE60;
  }

  sub_10000C14C(v7, v6, a2, a3, v5);
  return 1;
}

uint64_t sub_10000CF10()
{
  qword_10007F000 = xpc_array_create_empty();

  return sub_10000C688(&stru_100077560);
}

void sub_10000CF58()
{
  v0 = sub_100015A08();
  v1 = sub_100015A14();
  if (!qword_10007F0D0)
  {
    sub_1000441E0("sysctl hw.jetsam_properties_product_type was not set");
  }

  v2 = v1;
  v3 = sub_10004144C("/System/Library/LaunchDaemons/com.apple.jetsamproperties.NonUI.plist", v0, v1);
  v4 = sub_1000168E0("%s.%s%s.plist", "/AppleInternal/Library/LaunchDaemons/com.apple.jetsamproperties", qword_10007F0D0, qword_10007F0D8);
  v5 = sub_10004144C(v4, v0, v2);
  if (v5 || (free(v4), v4 = sub_1000168E0("%s.%s%s.plist", "/System/Library/LaunchDaemons/com.apple.jetsamproperties", qword_10007F0D0, qword_10007F0D8), (v5 = sub_10004144C(v4, v0, v2)) != 0))
  {
    v6 = v5;
    if (v3)
    {
      sub_1000441E0("both NonUI & target-specific JetsamProperties plists are present. This is an error in the OS build configuration.");
    }
  }

  else
  {
    free(v4);
    if (v3)
    {
      v4 = "/System/Library/LaunchDaemons/com.apple.jetsamproperties.NonUI.plist";
    }

    else
    {
      v4 = 0;
    }

    v6 = v3;
  }

  qword_10007DE58 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &unk_10005CEA2;
  }

  if (!sub_10000FBCC("hw.mempath", v7))
  {
    sub_1000441E0("Failed to set hw.mempath");
  }

  if (v6)
  {
    if (xpc_get_type(v6) != &_xpc_type_dictionary)
    {
      sub_1000441E0("JetsamProperties plist is malformed");
    }

    dictionary = xpc_dictionary_get_dictionary(v6, "Version4");
    if (!dictionary)
    {
      sub_1000441E0("JetsamProperties plist is malformed - missing Version4 dictionary");
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10000E024;
    v9[3] = &unk_100077E70;
    v9[4] = dictionary;
    sub_10000C688(v9);
    xpc_release(v6);
  }
}

xpc_object_t sub_10000D168(void *a1)
{
  string = xpc_dictionary_get_string(a1, "POSIXSpawnType");
  if (!string)
  {
    string = xpc_dictionary_get_string(a1, "ProcessType");
  }

  if (xpc_dictionary_get_BOOL(a1, "__Angel"))
  {
    v3 = 1;
  }

  else if (sub_100016A6C(string, "Driver"))
  {
    v3 = 3;
  }

  else
  {
    v4 = xpc_dictionary_get_string(a1, "Label");
    if (!sub_1000169A8(v4, "lockdown.") && ((v5 = xpc_dictionary_get_string(a1, "Label"), sub_1000169A8(v5, "UIKitApplication:")) || (v6 = xpc_dictionary_get_string(a1, "Label"), sub_1000169A8(v6, "AlternateSystemApplication:"))))
    {
      if (sub_100016A6C(string, "SystemApp"))
      {
        v3 = 7;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = &unk_10007D428 + 32 * v3;
  if ((v7[16] & 2) == 0)
  {
    sub_1000441E0("invalid jetsam property category type: 0x%x", v3);
  }

  v8 = xpc_dictionary_get_string(a1, "_JetsamPropertiesIdentifier");
  if (v8)
  {
    goto LABEL_16;
  }

  v13 = xpc_dictionary_get_string(a1, "Label");
  if (sub_1000169A8(v13, "lockdown."))
  {
    v14 = strchr(v13 + 9, 46);
    if (v14)
    {
      v8 = v14 + 1;
LABEL_16:
      v9 = sub_1000166EC(v8);
LABEL_17:
      v10 = v9;
      goto LABEL_18;
    }
  }

  if (!sub_1000169A8(v13, "UIKitApplication:") && !sub_1000169A8(v13, "AlternateSystemApplication:"))
  {
    v9 = strdup(v13);
    goto LABEL_17;
  }

  v15 = strchr(v13, 58);
  v10 = sub_1000166EC(v15 + 1);
  v16 = strrchr(v10, 91);
  if (v16)
  {
    *v16 = 0;
    v17 = strrchr(v10, 91);
    if (v17)
    {
      *v17 = 0;
    }
  }

LABEL_18:
  v11 = sub_10000D394(v10, a1, v7);
  free(v10);
  return v11;
}

xpc_object_t sub_10000D394(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_apply_f();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v27 = 0u;
  v28 = 0u;
  if ((*(a3 + 16) & 4) != 0)
  {
    v10 = 0;
    v11 = &v27;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = *(a3 + 8 * v10);
      v15 = sub_100049614(v14, "Global");
      if (v15)
      {
        v15 = sub_100049864(v15);
      }

      *v11 = v15;
      v16 = sub_100049614(v14, a1);
      if (v16)
      {
        v16 = sub_100049864(v16);
      }

      v12 = 0;
      *(v11 + 1) = v16;
      v11 = &v28;
      v10 = 1;
    }

    while ((v13 & 1) != 0);
    v9 = *(&v28 + 1);
    v8 = v28;
    v7 = *(&v27 + 1);
    v6 = v27;
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  for (i = 0; i != 36; ++i)
  {
    v19 = (&off_100077EB0)[i];
    if (v9)
    {
      value = xpc_dictionary_get_value(v9, (&off_100077EB0)[i]);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      value = 0;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    if (!value)
    {
      value = xpc_dictionary_get_value(v8, v19);
    }

LABEL_16:
    if (!value)
    {
      v21 = xpc_dictionary_get_value(v5, v19);
      value = v21;
      if (v7 && !v21)
      {
        value = xpc_dictionary_get_value(v7, v19);
      }

      if (v6 && !value)
      {
        value = xpc_dictionary_get_value(v6, v19);
      }
    }

    xpc_dictionary_set_value(v17, v19, value);
  }

  v22 = &v27;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = *(v22 + 1);
    if (v25)
    {
      xpc_release(v25);
    }

    if (*v22)
    {
      xpc_release(*v22);
    }

    v23 = 0;
    v22 = &v28;
  }

  while ((v24 & 1) != 0);
  xpc_release(v5);
  return v17;
}

xpc_object_t sub_10000D5C0(const void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if ((byte_10007D4B8 & 2) == 0)
  {
    sub_1000441E0("invalid jetsam property category type: 0x%x", 4);
  }

  v3 = v2;
  v4 = sub_10000D394(a1, v2, &unk_10007D4A8);
  xpc_release(v3);
  return v4;
}

xpc_object_t sub_10000D640(const void *a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "ServiceType");
  v4 = 5;
  if (string)
  {
    if (!strcasecmp(string, "System"))
    {
      v4 = 6;
    }

    else
    {
      v4 = 5;
    }
  }

  v5 = &unk_10007D428 + 32 * v4;
  if ((v5[16] & 2) == 0)
  {
    sub_1000441E0("invalid jetsam property category type: 0x%x", v4);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = sub_10000D394(a1, v6, v5);
  xpc_release(v6);
  return v7;
}

uint64_t sub_10000D708(uint64_t a1, char *__s1, void *a3)
{
  if (!sub_100016A6C(__s1, "Global") && xpc_get_type(a3) == &_xpc_type_dictionary)
  {
    sub_1000497F4();
    v7 = *(a1 + 32);
    if ((*(v7 + 16) & 4) == 0)
    {
      sub_1000441E0("jetsam property category (%s) is not initialized", *(a1 + 40));
    }

    v8 = v6;
    sub_10004954C(*(v7 + 8 * *(a1 + 48)), __s1, v6);
    sub_10001B690(v8);
  }

  return 1;
}

void sub_10000D7C4(void *a1, const char *a2, const char *a3, _BYTE *a4)
{
  v8 = sub_10000D8D0(a1, a2, a4);
  v9 = sub_10000D8D0(a1, a3, a4);
  v10 = v9;
  if (v8 < 1 || v9 < 1)
  {
    if (v8 < 0)
    {
      xpc_dictionary_set_value(a1, a2, 0);
      if ((v10 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v9 >= v8)
  {
    sub_100015968(a4, 6, "%s is ignored in favor of %s", a3, a2);
  }

  else
  {
    sub_100015968(a4, 6, "%s is ignored in favor of %s", a2, a3);
    a3 = a2;
  }

  xpc_dictionary_set_value(a1, a3, 0);
}

int64_t sub_10000D8D0(void *a1, const char *a2, _BYTE *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v7 = value;
    if (xpc_get_type(value) == &_xpc_type_int64)
    {
      result = xpc_int64_get_value(v7);
      if ((result - 0x7FFFFFFF) > 0xFFFFFFFF00000001)
      {
        return result;
      }

      sub_100015968(a3, 3, "%s is out of range, ignoring");
    }

    else
    {
      sub_100015968(a3, 3, "%s is not an int, ignoring");
    }

    xpc_dictionary_set_value(a1, a2, 0);
  }

  return 0xFFFFFFFFLL;
}

void sub_10000D980(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x400000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFBFFFFFFFFFFFLL | v4;
}

void sub_10000D9A0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 256;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFEFFLL | v4;
}

void sub_10000D9C0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 512;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFFFFFFFFFFFDFFLL | v4;
}

void sub_10000D9E0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  v4 = 0x1000000000000;
  if (!a3)
  {
    v4 = 0;
  }

  *(&a2->var4 + 129) = *(&a2->var4 + 129) & 0xFFFEFFFFFFFFFFFFLL | v4;
}

void sub_10000DA00(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = "1";
  }

  else
  {
    v4 = "0";
  }

  sub_100002C64(a2, "MallocSpaceEfficient", v4, 0);
}

void sub_10000DA2C(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = "1";
  }

  else
  {
    v4 = "0";
  }

  sub_100002C64(a2, "MallocNanoZone", v4, 0);
}

void sub_10000DA58(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = "1";
  }

  else
  {
    v4 = "0";
  }

  sub_100002C64(a2, "MallocLargeCache", v4, 0);
}

void sub_10000DA84(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = "1";
  }

  else
  {
    v4 = "0";
  }

  sub_100002C64(a2, "MallocAggressiveMadvise", v4, 0);
}

void sub_10000DAB0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    v4 = "1";
  }

  else
  {
    v4 = "0";
  }

  sub_100002C64(a2, "MallocMediumZone", v4, 0);
}

void sub_10000DADC(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  if (a3 < 0)
  {
    sub_100020018(a2, 4, "%s less than zero. Ignoring.", a4, v4, v5, v6, v7, "MallocMaxMagazines");
  }

  else if (HIDWORD(a3))
  {
    sub_100020018(a2, 4, "%s is too large. Ignoring.", a4, v4, v5, v6, v7, "MallocMaxMagazines");
  }

  else
  {
    v11 = sub_1000168E0("%u", a3);
    if (v11)
    {
      v12 = v11;
      sub_100002C64(a2, "MallocMaxMagazines", v11, 0);

      free(v12);
    }

    else
    {
      sub_100015968(a4, 3, "Could not convert value for MallocMaxMagazines to str: %lld", a3);
    }
  }
}

void sub_10000DC68(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  if (sub_100016AAC(a3, "Efficient"))
  {
    a2->var4.var75 = 1;
  }

  else if (!sub_100016AAC(a3, "UserInterface"))
  {
    sub_100015968(a4, 3, "Unsupported value for EnergyEfficiencyMode: %s", a3);
  }
}

void sub_10000DCF4(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  if (a3 < 0)
  {
    sub_100020018(a2, 4, "%s is less than zero. Ignoring.", a4, v4, v5, v6, v7, "OSLogClientType");
  }

  else if (a3 < 0x80)
  {
    v11 = sub_1000168E0("%hd", a3);
    if (v11)
    {
      v12 = v11;
      sub_100002C64(a2, "OSLogClientType", v11, 0);

      free(v12);
    }

    else
    {
      sub_100015968(a4, 3, "Could not convert value for OSLogClientType to str: %lld", a3);
    }
  }

  else
  {
    sub_100020018(a2, 4, "%s is too large. Ignoring.", a4, v4, v5, v6, v7, "OSLogClientType");
  }
}

void sub_10000DDE4(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  if (sub_100016A6C(a3, "Default") || sub_100016A6C(a3, "Small") || sub_100016A6C(a3, "Medium") || sub_100016A6C(a3, "Large"))
  {

    sub_100002C64(a2, "OSLogRTBufferConfig", a3, 0);
  }

  else
  {
    sub_100020018(a2, 4, "Unsupported value for OSLogRTBufferConfig: %s", v6, v7, v8, v9, v10, a3);
  }
}

void sub_10000DEAC(id a1, _launch_service_s *a2, int64_t a3, _launch_lint_s *a4)
{
  if (a3 < 0x8000)
  {
    v11 = sub_1000168E0("%hd", a3);
    if (v11)
    {
      v12 = v11;
      sub_100002C64(a2, "OSLogRateLimit", v11, 0);

      free(v12);
    }

    else
    {
      sub_100015968(a4, 3, "Could not convert value for OSLogRateLimit to str: %lld", a3);
    }
  }

  else
  {
    sub_100020018(a2, 4, "%s is too large. Ignoring.", a4, v4, v5, v6, v7, "OSLogRateLimit");
  }
}

void sub_10000DF84(id a1, _launch_service_s *a2, char *a3, _launch_lint_s *a4)
{
  sub_1000166EC(a3);
  no_copy = xpc_string_create_no_copy();
  sub_10004349C(a2, no_copy);

  xpc_release(no_copy);
}

void sub_10000DFDC(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    a2->var4.var59 |= 0x10u;
  }
}

void sub_10000DFF0(id a1, _launch_service_s *a2, BOOL a3, _launch_lint_s *a4)
{
  if (a3)
  {
    *(&a2->var4 + 129) |= 0x1000000000000000uLL;
    a2->var4.var84 = qword_10007DC58;
    a2->var4.var82 = word_10007DC60;
  }
}

void sub_10000E024(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 4) != 0)
  {
    sub_1000441E0("found multiple jetsam property plists for category %s", *(a2 + 24));
  }

  dictionary = xpc_dictionary_get_dictionary(*(a1 + 32), *(a2 + 24));
  if (dictionary)
  {
    v4 = dictionary;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = off_100077580[v5];
      v9 = sub_1000496EC();
      *(a2 + 8 * v5) = v9;
      v10 = xpc_dictionary_get_dictionary(v4, v8);
      if (v10)
      {
        v11 = v10;
        if (xpc_get_type(v10) == &_xpc_type_dictionary)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 0x40000000;
          applier[2] = sub_10000E180;
          applier[3] = &unk_100077E90;
          applier[4] = v9;
          xpc_dictionary_apply(v11, applier);
        }
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    *(a2 + 16) |= 4u;
  }

  else
  {
    sub_10004749C(65540, "did not initialize jetsam properties category: %s", *(a2 + 24));
  }
}

uint64_t sub_10000E180(uint64_t a1, const void *a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    sub_1000497F4();
    v6 = v5;
    sub_10004954C(*(a1 + 32), a2, v5);
    sub_10001B690(v6);
  }

  return 1;
}

void sub_10000E1FC(char *a1, void *a2, void *a3)
{
  v6 = 0;
  while (1)
  {
    v7 = (&off_100077EB0)[v6];
    if (!strcasecmp(a1, v7))
    {
      break;
    }

    if (++v6 == 36)
    {
      return;
    }
  }

  xpc_dictionary_set_value(a3, v7, a2);
}

void sub_10000E290(const char *a1)
{
  v1 = sub_1000166EC(a1);
  if (qword_10007DE70 != -1)
  {
    sub_100054500();
  }

  v2 = qword_10007DE68;

  dispatch_sync_f(v2, v1, sub_10000E2F8);
}

void sub_10000E2F8(char *a1)
{
  v2 = strlen(a1);
  if ((sub_10000E43C(a1, v2) & 1) == 0)
  {
    sub_10000E43C(a1, v2);
  }

  free(a1);
}

void sub_10000E350(char *a1, ...)
{
  va_start(va, a1);
  context[0] = 0;
  va_copy(&context[1], va);
  if (vasprintf(context, a1, va) != -1)
  {
    if (qword_10007DE70 != -1)
    {
      sub_100054514();
    }

    dispatch_async_f(qword_10007DE68, context[0], sub_10000E2F8);
  }
}

void sub_10000E3C4(char *a1, ...)
{
  va_start(va, a1);
  v1[0] = 0;
  va_copy(&v1[1], va);
  if (vasprintf(v1, a1, va) != -1)
  {
    sub_10000E290(v1[0]);
    free(v1[0]);
  }
}

uint64_t sub_10000E43C(void *__buf, int64_t __nbyte)
{
  v4 = dword_10007D528;
  if (dword_10007D528 == -1)
  {
    v4 = open("/dev/console", 131073);
    dword_10007D528 = v4;
  }

  if (j__write(v4, __buf, __nbyte) >= __nbyte || *__error() != 5)
  {
    return 1;
  }

  sub_100010914(dword_10007D528);
  result = 0;
  dword_10007D528 = -1;
  return result;
}

double sub_10000E510()
{
  result = 0.0;
  xmmword_10007DF18 = 0u;
  unk_10007DF28 = 0u;
  xmmword_10007DEF8 = 0u;
  unk_10007DF08 = 0u;
  xmmword_10007DED8 = 0u;
  unk_10007DEE8 = 0u;
  xmmword_10007DEB8 = 0u;
  unk_10007DEC8 = 0u;
  xmmword_10007DE98 = 0u;
  unk_10007DEA8 = 0u;
  xmmword_10007DE78 = 0u;
  unk_10007DE88 = 0u;
  qword_10007DF38 = 0;
  xmmword_10007D52C = 0uLL;
  qword_10007D53C = 0x7FFFFFFF00000000;
  unk_10007D544 = 0;
  return result;
}

uint64_t sub_10000E554(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2 == 7)
    {
      if (result != &xmmword_10007D52C)
      {
        v4 = *result == xmmword_10007D52C && *(result + 8) == *(&xmmword_10007D52C + 1);
        v5 = v4 && *(result + 16) == qword_10007D53C;
        if (!v5 || *(result + 24) != unk_10007D544)
        {
          if ((sub_10000E69C(result) & 0x80) == 0)
          {
            return 0;
          }

          v17 = v3[1];
          xmmword_10007D52C = *v3;
          *&qword_10007D53C = v17;
        }
      }

      return 1;
    }

    else
    {
      v7 = qword_10007DF38;
      v8 = 4;
      while (1)
      {
        v9 = &xmmword_10007DE78[3 * (v7 & 3)];
        if (*(v9 + 40) == 1)
        {
          if ((v9 + 8) == result)
          {
            break;
          }

          v10 = *result == *(v9 + 1) && *(result + 8) == *(v9 + 2);
          v11 = v10 && *(result + 16) == *(v9 + 3);
          if (v11 && *(result + 24) == *(v9 + 4))
          {
            break;
          }
        }

        ++v7;
        if (!--v8)
        {
          v13 = sub_10000E69C(result);
          qword_10007DF38 = (qword_10007DF38 - 1) & 3;
          v14 = &xmmword_10007DE78[3 * qword_10007DF38];
          v15 = v3[1];
          *(v14 + 8) = *v3;
          *(v14 + 24) = v15;
          *v14 = v13;
          *(v14 + 40) = 1;
          v16 = v13 >> v2;
          return v16 & 1;
        }
      }

      v16 = *v9 >> a2;
      return v16 & 1;
    }
  }

  return result;
}

uint64_t sub_10000E69C(uint64_t a1)
{
  v1 = sub_100046A64(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0;
  for (i = 0; i != 43; ++i)
  {
    value = xpc_dictionary_get_value(v2, off_100078010[i]);
    if (value)
    {
      v6 = value;
      if (xpc_get_type(value) != &_xpc_type_BOOL || xpc_BOOL_get_value(v6))
      {
        v3 |= 1 << i;
      }
    }
  }

  xpc_release(v2);
  return v3;
}

uint64_t sub_10000E74C(int *a1)
{
  v2 = *a1;
  HIDWORD(v4) = a1[6] - 256;
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 8;
  if (v3 <= 3)
  {
    if (v3 < 2 || v3 == 3)
    {
      v6 = 1024;
      goto LABEL_17;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_17;
  }

  if (v3 == 4)
  {
    v6 = 512;
    goto LABEL_17;
  }

  if (v3 != 6)
  {
    if (v3 == 5)
    {
      v6 = 768;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (*(a1 + 48))
  {
    v6 = 256;
  }

  else
  {
    v6 = 1024;
  }

LABEL_17:
  v7 = v6 | (16 * (*a1 & 0xF));
  if (v2)
  {
    if (v2 != 1)
    {
      sub_100054404();
    }

    *(a1 + 4);
  }

  if (coalition_create() == -1)
  {
    sub_10005453C();
  }

  if (!*a1 && *(a1 + 5) && coalition_ledger_set_logical_writes_limit() == -1)
  {
    sub_10005453C();
  }

  return 0;
}

uint64_t sub_10000E84C()
{
  result = coalition_terminate();
  if (result == -1)
  {
    return sub_10005455C();
  }

  return result;
}

uint64_t sub_10000E878()
{
  result = coalition_reap();
  if (result == -1)
  {
    return sub_10005455C();
  }

  return result;
}

uint64_t sub_10000E8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 2);
  result = posix_spawnattr_setcoalition_np();
  if (result)
  {
    return _os_assumes_log_ctx();
  }

  return result;
}

void sub_10000E8FC(uint64_t a1)
{
  free(*(a1 + 64));
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = *(a1 + 256);

  _Block_release(v6);
}

uint64_t sub_10000E968()
{
  v0 = sub_1000157F0();
  qword_10007DF40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v0);
  dispatch_source_set_timer(qword_10007DF40, 0, 1000000000 * dword_10007DC64, 0);
  dispatch_source_set_event_handler_f(qword_10007DF40, j__sync);
  dispatch_activate(qword_10007DF40);
  qword_10007F008 = dispatch_semaphore_create(10);
  v1 = setiopolicy_np(9, 0, 1);
  if (v1)
  {
    v1 = _os_assumes_log();
  }

  return nullsub_23(v1, v2);
}

void sub_10000EA30()
{
  block = _NSConcreteStackBlock;
  v3 = 0x40000000;
  v4 = sub_10000ED40;
  v5 = &unk_100078168;
  v6 = sub_1000157E4();
  dispatch_sync(v6, &block);
  v0 = sub_1000157F0();
  block = _NSConcreteStackBlock;
  v3 = 0x40000000;
  v4 = sub_10000ED40;
  v5 = &unk_100078168;
  v6 = v0;
  dispatch_sync(v0, &block);
  v1 = sub_1000157FC();
  block = _NSConcreteStackBlock;
  v3 = 0x40000000;
  v4 = sub_10000ED40;
  v5 = &unk_100078168;
  v6 = v1;
  dispatch_sync(v1, &block);
}

_BYTE *sub_10000EB3C(char a1, uint64_t a2)
{
  v4 = sub_10001BE0C(0);
  v4[56] = a1;
  if (a2)
  {
    v5 = xpc_bundle_copy_normalized_cryptex_path();
    *(v4 + 8) = v5;
    if (sub_10001A794(v5))
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    v4[264] = v4[264] & 0xFB | v6;
  }

  return v4;
}

_BYTE *sub_10000EBAC(int a1, uint64_t a2, int a3)
{
  result = sub_10000EB3C(a1, a2);
  if (a1 == 4)
  {
    *(result + 60) = a3;
  }

  return result;
}

void sub_10000EBE0(uint64_t a1, dispatch_object_t object, const void *a3)
{
  dispatch_retain(object);
  *(a1 + 248) = object;
  *(a1 + 256) = _Block_copy(a3);
  if (*(a1 + 56) == 4 || (*(a1 + 264) & 1) != 0)
  {
LABEL_3:
    dispatch_assert_queue_V2(*(a1 + 248));
    v6 = *(a1 + 240);
    v7 = *(*(a1 + 256) + 16);

    v7();
    return;
  }

  if (sub_10001B020())
  {
    if (sub_10001A794(*(a1 + 64)))
    {
      v8 = sub_10001A7E8(a1);
      if (!v8)
      {
        return;
      }

      *(a1 + 240) = v8;
      goto LABEL_3;
    }

    if ((*(a1 + 264) & 4) != 0)
    {
      sub_1000441E0("refusing to read cache protected location from disk: %s", *(a1 + 64));
    }
  }

  sub_100015A20(a1);
}

xpc_object_t sub_10000ED18(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return xpc_retain(result);
  }

  return result;
}

uint64_t sub_10000ED50(uint64_t a1, FILE *a2, uint64_t a3)
{
  result = *(a1 + 1400);
  if (result)
  {
    result = os_map_64_count();
    if (result)
    {
      sub_100049ECC(a2, a3, "urgent log submission = {", v7, v8, v9, v10, v11);
      v12 = *(a1 + 1400);
      v13 = *(a1 + 256);
      if (!v13)
      {
        v13 = a1;
      }

      v14 = *(v13 + 576);
      v15 = (v13 + 1424);
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      sub_10000F118(v16);
      sub_100049ECC(a2, a3 + 1, "config = {", v17, v18, v19, v20, v21);
      os_map_64_foreach();
      sub_100049ECC(a2, a3 + 1, "}", v22, v23, v24, v25, v26);
      sub_10000F050();
      v27 = *(a1 + 256);
      if (!v27)
      {
        v27 = a1;
      }

      v28 = *(v27 + 576);
      if (os_map_str_find())
      {
        sub_100049ECC(a2, a3 + 1, "pending submissions = {", v29, v30, v31, v32, v33);
        os_map_64_foreach();
        sub_100049ECC(a2, a3 + 1, "}", v34, v35, v36, v37, v38);
        sub_100049ECC(a2, a3 + 1, "deferred services = {", v39, v40, v41, v42, v43);
        os_map_64_foreach();
        sub_100049ECC(a2, a3 + 1, "}", v44, v45, v46, v47, v48);
      }

      return sub_100049ECC(a2, a3, "}", v29, v30, v31, v32, v33);
    }
  }

  return result;
}

uint64_t sub_10000EF88(uint64_t a1)
{
  sub_10000F050();
  v2 = *(a1 + 256);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(v2 + 576);
  result = os_map_str_find();
  if (result)
  {
    *(result + 48) = 0;
    os_map_64_foreach();
    result = os_map_64_delete();
    if (result)
    {
      v5 = result == a1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      sub_100054404();
    }
  }

  return result;
}

uint64_t sub_10000F050()
{
  result = qword_10007DF48;
  if (!qword_10007DF48)
  {
    qword_10007DF48 = sub_100014514(0x18uLL, 0x80040D6874129uLL);
    os_map_str_init();
    return qword_10007DF48;
  }

  return result;
}

uint64_t sub_10000F0A4(uint64_t a1)
{
  v1 = *(a1 + 256);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(v1 + 576);
  v3 = (v1 + 1424);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_10000F118(v4);
  if (os_map_64_find())
  {
    sub_100054404();
  }

  return os_map_64_insert();
}

uint64_t sub_10000F118(const char *a1)
{
  sub_10000F050();
  v2 = os_map_str_find();
  if (!v2)
  {
    v2 = sub_100014514(0x38uLL, 0x1080040D8917475uLL);
    *(v2 + 48) = 0;
    os_map_64_init();
    os_map_64_init();
    sub_1000166EC(a1);
    os_map_str_insert();
  }

  return v2;
}

uint64_t sub_10000F1B0(uint64_t result)
{
  if (*(result + 256))
  {
    v1 = *(result + 256);
  }

  else
  {
    v1 = result;
  }

  if (*(v1 + 1400))
  {
    v2 = *(v1 + 1400);
    result = os_map_64_count();
    if (result)
    {
      v3 = *(v1 + 256);
      if (!v3)
      {
        v3 = v1;
      }

      v4 = *(v3 + 576);
      v5 = (v3 + 1424);
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = v5;
      }

      sub_10000F118(v6);
      return os_map_64_foreach();
    }
  }

  return result;
}

uint64_t sub_10000F27C(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = a1[4];
  v7 = sub_10000F514();
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  if (!(*(a2 + 16))(v8))
  {
    return 1;
  }

  v11 = *(v7 + 24);
  if (v11 != 0xFFFF)
  {
    v12 = v11 + 1;
    *(v7 + 24) = v12;
    if (v12 < a3[1])
    {
      return 1;
    }
  }

  v14 = *(v8 + 1168);
  v15 = *(v8 + 1172);
  sub_10000F6A4();
  v16 = sub_100022158(v8, 1);
  v17 = v16;
  if (!(v15 | (v14 << 32)))
  {
    sub_1000441E0("%s: inserting zero urgent log submission key", v16);
  }

  if (os_map_64_find())
  {
    sub_1000441E0("%s: urgent log submission key already in map: 0x%llx", v17, v15 | (v14 << 32));
  }

  v28 = v17;
  if (os_map_64_find())
  {
    sub_1000441E0("%s: urgent log submission key already in stats: 0x%llx", v17, v15 | (v14 << 32));
  }

  v18 = sub_1000157D8();
  v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);
  v20 = dispatch_time(0, 1000000000 * *a3);
  dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000FA90;
  handler[3] = &unk_100078268;
  v30 = v14;
  v31 = v15;
  dispatch_source_set_event_handler(v19, handler);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_activate(v19);
  v21 = sub_100014514(0x18uLL, 0x1030040D5FA72FAuLL);
  *v21 = v28;
  v21[1] = v10;
  v21[2] = v19;
  os_map_64_insert();
  os_map_64_insert();
  v27 = *a3;
  if (*(v9 + 48) < v27)
  {
    *(v9 + 48) = v27;
  }

  sub_100020018(v8, 5, "inserted pending urgent log submission; pid = %d, version = %d, pushout = %zus", v22, v23, v24, v25, v26, v14);
  return 0;
}

uint64_t sub_10000F514()
{
  v0 = os_map_64_find();
  if (!v0)
  {
    v0 = sub_100014514(0x20uLL, 0x10800404D6EDF86uLL);
    *(v0 + 24) = 0;
    os_map_64_init();
    os_map_64_insert();
  }

  return v0;
}

uint64_t sub_10000F58C(uint64_t result, unsigned int a2)
{
  if (a2 | (result << 32))
  {
    sub_10000F6A4();
    result = os_map_64_find();
    if (result)
    {
      *(result + 48) = 0;
      os_map_64_foreach();
      v2 = os_map_64_count();
      sub_10004749C(5, "spawning %zu deferred services", v2);
      return os_map_64_clear();
    }
  }

  return result;
}

uint64_t sub_10000F6A4()
{
  result = qword_10007DF50;
  if (!qword_10007DF50)
  {
    qword_10007DF50 = sub_100014514(0x18uLL, 0x80040D6874129uLL);
    os_map_64_init();
    return qword_10007DF50;
  }

  return result;
}

char **sub_10000F6F8(char *a1)
{
  if (sub_100016AAC(a1, off_10007D558))
  {
    return off_10007D550;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F72C(uint64_t a1)
{
  sub_10000F050();
  v2 = *(a1 + 256);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(v2 + 576);
  result = os_map_str_find();
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_10000F778(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v6 = *(a1 + 32);
  v7 = sub_10000F514();
  sub_100049ECC(*(a1 + 40), *(a1 + 48) + 1, "%s => (timeout = %hus, consecutive crash count = %hu/%hu)", v8, v9, v10, v11, v12, *a2, *a3, *(v7 + 24), a3[1]);
  return 1;
}

uint64_t sub_10000F7EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  os_map_64_foreach();
  return 1;
}

uint64_t sub_10000F868(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(a1 + 48);
  sub_100049ECC(*(a1 + 32), *(a1 + 40) + 1, "%5d %10d   %-25s   %s", a4, a5, a6, a7, a8, HIDWORD(a2), a2, v8, *a3);
  return 1;
}

uint64_t sub_10000F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100022158(a3, 1);
  sub_100049ECC(*(a1 + 32), *(a1 + 40) + 1, "%s", v5, v6, v7, v8, v9, v4);
  free(v4);
  return 1;
}

uint64_t sub_10000F914(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  if (v5)
  {
    v6 = a1[5];
    if (v6)
    {
      v7 = os_map_64_find();
      if (v7)
      {
        sub_10004749C(5, "completed urgent log submission for %s; pid = %d, version = %d, rtt = %llus", *v7, HIDWORD(v5), v5, (v6 - *(v7 + 8)) / 0x3B9ACA00uLL);
      }
    }
  }

  v8 = a1[6];
  sub_10000F6A4();
  *(a3 + 24) = 0;
  os_map_64_clear();
  return 1;
}

uint64_t sub_10000FA0C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 != os_map_64_delete())
  {
    sub_100054404();
  }

  sub_10004749C(5, "clearing pending urgent log submission for %s; pid = %d, version = %d", *a3, HIDWORD(a2), a2);
  dispatch_source_cancel(a3[2]);
  free(*a3);
  free(a3);
  return 1;
}

uint64_t sub_10000FA90(uint64_t a1)
{
  sub_10004749C(5, "auto-completing urgent log submission for pid = %d, version = %d", *(a1 + 32), *(a1 + 36));
  clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);

  return sub_10000F58C(v2, v3);
}

uint64_t sub_10000FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != a3)
  {
    sub_100054404();
  }

  if (!*(a3 + 840))
  {
    sub_100054404();
  }

  v9 = *(a1 + 32);
  v10 = *(a3 + 824);
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (v12 != 0 && v11)
  {
    v13 = v12;
    sub_100020018(a3, 5, "urgent log submission completed, pushing out %llu more seconds", a4, a5, a6, a7, a8, v12 / 0x3B9ACA00);
    v14 = *(a3 + 840);
    v15 = dispatch_time(0, 1000000000 * (v13 / 0x3B9ACA00));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    sub_100020018(a3, 5, "spawning after urgent log submission completion", a4, a5, a6, a7, a8, v17);
    sub_100020484(a3);
  }

  return 1;
}

void *sub_10000FC18(const char *a1)
{
  v3 = 0;
  v1 = sub_100045D60(a1, &v3);
  result = v3;
  if (v1)
  {
    if (!v3)
    {
      sub_100054404();
    }
  }

  else
  {
    free(v3);
    return 0;
  }

  return result;
}

uint64_t sub_10000FC64(const char *a1)
{
  v2 = 0;
  if (sub_100045EF0(a1, &v2) == 8)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *sub_10000FC98(size_t a1)
{
  if (!a1)
  {
    sub_100054404();
  }

  v2 = sub_100014514(0x18uLL, 0x1010040113C0ABBuLL);
  v3 = sub_100014514(a1, 0xD7E5F149uLL);
  *v3 = 0;
  *v2 = v3;
  v2[1] = a1;
  v2[2] = 0;
  return v2;
}

void sub_10000FD04(void **a1)
{
  free(*a1);

  free(a1);
}

void sub_10000FD40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __source[0] = 0;
  __source[1] = &a9;
  v10 = vasprintf(__source, a2, &a9);
  if (v10 == -1)
  {
    sub_10005455C();
    return;
  }

  v11 = *(a1 + 16);
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (v12)
  {
    v14 = (v10 >> 63) + 1;
  }

  else
  {
    v14 = v10 >> 63;
  }

  v15 = v14 << 63 >> 63;
  if (v15 != v14 || v15 < 0)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 8);
  if (v16 <= v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v18 = 2 * v13;
      if (2 * v13 < 2 * v16)
      {
        sub_100054404();
      }

      v17 = sub_100014514(2 * v13, 0x160059B9uLL);
      if (strlcpy(v17, *a1, v18) >= v18)
      {
        sub_100054404();
      }

      free(*a1);
      *a1 = v17;
      *(a1 + 8) = v18;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return;
  }

  v17 = *a1;
  v18 = *(a1 + 8);
LABEL_13:
  v19 = strlcat(v17, __source[0], v18);
  *(a1 + 16) = v19;
  if (v19 >= *(a1 + 8))
  {
    sub_100054404();
  }

  free(__source[0]);
}

void *sub_10000FE4C(void *result, unint64_t a2)
{
  v2 = result[2];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    sub_100054404();
  }

  result[2] = v4;
  *(*result + v4) = 0;
  return result;
}

xpc_object_t sub_10000FE78(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = a1[2];
  v8 = *(a1 + 6);
  if (!sub_10005229C(&v5))
  {
    return 0;
  }

  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  v7 = a1[2];
  v8 = *(a1 + 6);
  return sub_10000FEEC(&v5);
}

xpc_object_t sub_10000FEEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v22 = *a1;
  v23 = v3;
  v24 = *(a1 + 2);
  v25 = a1[6];
  v4 = sub_10005238C(&v22, 0);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_dictionary_create_empty();
        break;
      case 2:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_array_create_empty();
        break;
      case 3:
        v5 = *(a1 + 1);
        v22 = *a1;
        v23 = v5;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v6 = sub_10005266C(&v22);
        return xpc_int64_create(v6);
      default:
        goto LABEL_17;
    }

    v14 = empty;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_100052408(&v22, empty, sub_100010180);
    return v14;
  }

  switch(v4)
  {
    case 4:
      v15 = *(a1 + 1);
      v22 = *a1;
      v23 = v15;
      v24 = *(a1 + 2);
      v25 = a1[6];
      sub_10001044C(&v22);
      return xpc_string_create_no_copy();
    case 5:
      v12 = *(a1 + 1);
      v22 = *a1;
      v23 = v12;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v13 = sub_100052774(&v22);
      return xpc_BOOL_create(v13);
    case 6:
      v8 = *(a1 + 1);
      v22 = *a1;
      v23 = v8;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v9 = sub_1000527F8(&v22);
      return xpc_data_create(v9, v10);
  }

LABEL_17:
  v17 = (*(v2 + 32))(v2, "[%s]: %s\n", "_objectForActiveContext", "CoreEntitlements: unknown DER type");
  return xpc_create_from_ce_der(v17);
}

xpc_object_t xpc_create_from_ce_der(unint64_t a1, uint64_t a2)
{
  v12 = 0uLL;
  v13 = 0;
  v2 = sub_10005287C(&qword_1000782C8, &v12, a1, a1 + a2);
  result = 0;
  if (v2 == &unk_10007A840)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v12;
    *&v5 = v13;
    if (sub_100052B74(&qword_1000782C8, &v4, &v8) == &unk_10007A840)
    {
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
      return sub_10000FE78(&v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100010180(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 29);
  if (v3 == 2)
  {
    if (*(a1 + 28) == 1)
    {
      v7 = a1[15];
      v14 = *(a1 + 7);
      v15 = *(a1 + 9);
      v16 = *(a1 + 11);
      v17 = a1[13];
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(v26 + 8, 0, 248);
      v8 = *(a1 + 9);
      v20[0] = *(a1 + 7);
      v20[1] = v8;
      v20[2] = *(a1 + 11);
      v21 = a1[13];
      *&v26[0] = 2;
      sub_100052248(v20, v26, &v22);
      v26[0] = v22;
      v26[1] = v23;
      v26[2] = v24;
      *&v26[3] = v25;
      v9 = sub_10001044C(v26);
      v18[0] = v14;
      v18[1] = v15;
      v18[2] = v16;
      v19 = v17;
      v26[0] = xmmword_1000576B0;
      memset(&v26[1], 0, 240);
      sub_100052248(v18, v26, v20);
      empty = sub_10000FEEC(v20);
      xpc_dictionary_set_value(v7, v9, empty);
      free(v9);
    }

    else
    {
      empty = xpc_array_create_empty();
      v11 = *(a1 + 9);
      v26[0] = *(a1 + 7);
      v26[1] = v11;
      v26[2] = *(a1 + 11);
      *&v26[3] = a1[13];
      if (sub_100052408(v26, empty, sub_100010180) != &unk_10007A840)
      {
        v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: Couldn't iterate over DER entitlements\n");
        return sub_10001044C(v13);
      }

      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, empty);
    }

    v6 = empty;
    goto LABEL_10;
  }

  if (v3)
  {
    if (*(a1 + 28) == 2)
    {
      v4 = *(a1 + 9);
      v26[0] = *(a1 + 7);
      v26[1] = v4;
      v26[2] = *(a1 + 11);
      *&v26[3] = a1[13];
      v5 = sub_10000FEEC(v26);
      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, v5);
      v6 = v5;
LABEL_10:
      xpc_release(v6);
      return 1;
    }

    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: not a sequence");
  }

  else
  {
    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: unknown DER type");
  }

  return sub_10001044C(v13);
}

void *sub_10001044C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = sub_1000526F0(v7);
  v4 = v3;
  v5 = sub_100014514(v3 + 1, 0xCECD693BuLL);
  memcpy(v5, v2, v4);
  return v5;
}

void sub_10001050C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsyslog(2, a2, &a9);
  qword_10007DCB8 = "Data corruption: CoreEntitlements has aborted due to an unrecoverable error";
  __break(1u);
}

void sub_10001055C()
{
  v0 = sub_1000106F0("ReleaseType");
  sub_100010834("kern.osreleasetype", v0);
  if (byte_10007F100 == 1)
  {
    v1 = sub_10000FC18("kern.osversion");
    if (v1)
    {
      v2 = v1;
      v3 = sub_1000106F0("ProductBuildVersion");
      if (v3)
      {
        v4 = v3;
        if (!sub_100016A6C(v2, v3))
        {
          sub_100044244("Userspace reboot changed system version: previous %s != current %s", v2, v4);
        }

        free(v2);
      }

      else
      {

        sub_10004749C(65539, "Missing ProductBuildVersion");
      }
    }

    else
    {
      v7 = __error();
      sub_10004749C(65539, "Unable to reload kern.osversion: %d", *v7);
    }
  }

  else
  {
    v5 = sub_1000106F0("ProductVersion");
    sub_100010834("kern.osproductversion", v5);
    v6 = sub_1000106F0("ProductBuildVersion");

    sub_100010834("kern.osversion", v6);
  }
}

const char *sub_1000106C0()
{
  result = sub_1000106F0("ProductBuildVersion");
  if (!result)
  {
    return "99Z999";
  }

  return result;
}

const char *sub_1000106F0(char *key)
{
  if (!qword_10007DF58)
  {
    v2 = sub_10004152C("/System/Library/CoreServices/SystemVersion.plist");
    if (qword_10007DF58)
    {
      sub_100054404();
    }

    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    qword_10007DF58 = v4;
    if (v3)
    {
      sub_1000108B4(v4, v3, "ProductVersion");
      sub_1000108B4(qword_10007DF58, v3, "ProductBuildVersion");
      sub_1000108B4(qword_10007DF58, v3, "iOSSupportVersion");
      sub_1000108B4(qword_10007DF58, v3, "ReleaseType");
      v4 = qword_10007DF58;
    }

    if (!xpc_dictionary_get_string(v4, "ReleaseType"))
    {
      xpc_dictionary_set_string(qword_10007DF58, "ReleaseType", "User");
    }

    if (v3)
    {
      xpc_release(v3);
    }
  }

  v5 = qword_10007DF58;

  return xpc_dictionary_get_string(v5, key);
}

BOOL sub_1000107F4(const char *a1)
{
  v2 = sub_1000106F0("ReleaseType");

  return sub_100016A4C(v2, a1);
}

void sub_100010834(const char *a1, char *a2)
{
  if (a2)
  {
    v4 = sub_10000FC18(a1);
    if (v4 && (v5 = *v4, free(v4), v5))
    {
      sub_10004749C(4, "%s is already set, skipping", a1);
    }

    else if (!sub_10000FBCC(a1, a2))
    {
      sub_10005457C(a1);
    }
  }
}

void sub_1000108B4(void *a1, xpc_object_t xdict, char *key)
{
  string = xpc_dictionary_get_string(xdict, key);
  if (string)
  {

    xpc_dictionary_set_string(a1, key, string);
  }
}

void *sub_100010918()
{
  v0 = sub_10001BB6C(0);
  v0[4] = 8;
  v0[2] = sub_100014514(0x40uLL, 0x6E3B2EBCuLL);
  return v0;
}

void sub_100010960(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    do
    {
      os_release(*(*(a1 + 16) + 8 * v2++));
    }

    while (v2 < *(a1 + 24));
  }

  v3 = *(a1 + 16);

  free(v3);
}

void *sub_1000109BC(void *result, void *object)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  if (v4 == v5)
  {
    result[4] = 2 * v4;
    if ((v4 & 0x8000000000000000) != 0 || (2 * v4) >> 61 || (result = sub_100014514(16 * v4, 0x6003880EuLL), v6 = v3[3], v6 >> 61))
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = v3[2];
    memcpy(result, v8, 8 * v6);
    free(v8);
    v3[2] = v7;
    v4 = v3[3];
    v5 = v3[4];
  }

  if (v4 >= v5)
  {
    sub_100054404();
  }

  result = os_retain(object);
  v9 = v3[3];
  *(v3[2] + 8 * v9) = result;
  v3[3] = v9 + 1;
  return result;
}

void sub_100010A70(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) <= a2)
  {
    sub_100054404();
  }

  os_release(*(*(a1 + 16) + 8 * a2));
  v4 = *(a1 + 24);
  *(*(a1 + 16) + 8 * a2) = 0;
  *(a1 + 24) = v4 - 1;
  if (v4 - 1 > a2)
  {
    v5 = *(a1 + 16) + 8 * a2;

    memmove(v5, (v5 + 8), 8 * (v4 - 1 - a2));
  }
}

uint64_t sub_100010AF4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) <= a2)
  {
    sub_100054404();
  }

  return *(*(a1 + 16) + 8 * a2);
}

uint64_t sub_100010BC8(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  empty = xpc_array_create_empty();
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100010D54;
  applier[3] = &unk_100078318;
  applier[4] = &v12;
  xpc_dictionary_apply(a1, applier);
  count = xpc_array_get_count(v13[3]);
  do
  {
    if (count < 2)
    {
      break;
    }

    v3 = 0;
    for (i = 1; i != count; ++i)
    {
      value = xpc_array_get_value(v13[3], i - 1);
      v6 = xpc_array_get_value(v13[3], i);
      string_ptr = xpc_string_get_string_ptr(value);
      v8 = xpc_string_get_string_ptr(v6);
      if (strcmp(string_ptr, v8) >= 1)
      {
        xpc_retain(value);
        xpc_array_set_value(v13[3], i - 1, v6);
        xpc_array_set_value(v13[3], i, value);
        xpc_release(value);
        v3 = i;
      }
    }

    count = v3;
  }

  while (v3);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}