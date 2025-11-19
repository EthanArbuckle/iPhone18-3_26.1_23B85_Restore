void systemstats_write_microstackshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299934284;
  block[3] = &unk_29F277430;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

unint64_t systemstats_foreach_micro(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = 0;
  if (a2)
  {
    v10 = a1 + a2;
    while (v9 + 4 < a2)
    {
      v11 = (a1 + v9);
      v12 = *(a1 + v9);
      if (v12 > 835010576)
      {
        if (v12 == 1271888501)
        {
          goto LABEL_17;
        }

        if (v12 == 835010577)
        {
          if ((v11 + 80) > v10)
          {
            break;
          }

          if (*(v11 + 27) == -557122643)
          {
            v14 = *(v11 + 107);
            if (*(v11 + 31))
            {
              if ((v14 & 1) == 0)
              {
                goto LABEL_16;
              }

LABEL_24:
              v15 = 24;
            }

            else
            {
              if ((v14 & 2) != 0)
              {
                goto LABEL_24;
              }

LABEL_16:
              v15 = 20;
            }

            v17 = v11 + v15 * *(v11 + 83) + 320;
            if (v17 + 316 > v10)
            {
              break;
            }

            if (*v17 == -17958194)
            {
              v18 = *(v17 + 68);
              if ((v18 & 2) != 0)
              {
                v19 = 3;
              }

              else
              {
                v19 = 2;
              }

              v20 = *(v17 + 4) << v19;
              v21 = (2 * v18) & 8;
              if (v18)
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              v23 = v17 + 316 + v21 + v20 + (*(v17 + 8) << v22);
              if (v23 > v10)
              {
                break;
              }

              v9 = v23 - a1;
              if (v7)
              {
                if ((v7[2](v7, v11, v11 + 27) & 1) == 0)
                {
                  break;
                }
              }

              goto LABEL_38;
            }
          }

          v9 += 8;
          goto LABEL_38;
        }
      }

      else if (v12 == -1342106384 || v12 == -742165608)
      {
LABEL_17:
        if ((v11 + 4) > v10)
        {
          break;
        }

        v16 = v11[1];
        if (v11 + v16 > v10)
        {
          break;
        }

        v9 += v16;
        if (v8)
        {
          if (!v8[2](v8))
          {
            break;
          }
        }

        goto LABEL_38;
      }

      ++v9;
LABEL_38:
      if (v9 >= a2)
      {
        v9 = a2;
        break;
      }
    }
  }

  return v9;
}

void systemstats_zipper_buffers_foreach_micro(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = a5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v48 = 0;
  v49[0] = &v48;
  v49[1] = 0x2020000000;
  v49[2] = 0;
  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0x2020000000;
  v47[2] = 0;
  v44 = 0;
  v45[0] = &v44;
  v45[1] = 0x2020000000;
  v45[2] = 0;
  v42 = 0;
  v43[0] = &v42;
  v43[1] = 0x2020000000;
  v43[2] = 0;
  v40 = 0;
  v41[0] = &v40;
  v41[1] = 0x2020000000;
  v41[2] = 0;
  v38 = 0;
  v39[0] = &v38;
  v39[1] = 0x2020000000;
  v39[2] = 0;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x2020000000;
  v37[2] = 0;
  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x2020000000;
  v35[2] = 0;
  do
  {
    if (!*(v49[0] + 24) && !v10 && a2 > v11)
    {
      v33[0] = MEMORY[0x29EDCA5F8];
      v33[1] = 3221225472;
      v33[2] = sub_299934168;
      v33[3] = &unk_29F2771F0;
      v33[4] = &v48;
      v33[5] = &v46;
      v33[6] = &v44;
      v33[7] = &v42;
      v12 = systemstats_foreach_micro(a1 + v11, a2 - v11, v33, 0);
      v10 = v12 == 0;
      v11 += v12;
    }

    v13 = v41[0];
    if (*(v41[0] + 24) == 0 && !v8 && a4 > v9)
    {
      v32[0] = MEMORY[0x29EDCA5F8];
      v32[1] = 3221225472;
      v32[2] = sub_299934590;
      v32[3] = &unk_29F2771F0;
      v32[4] = &v40;
      v32[5] = &v38;
      v32[6] = &v36;
      v32[7] = &v34;
      v14 = systemstats_foreach_micro(a3 + v9, a4 - v9, v32, 0);
      v8 = v14 == 0;
      v9 += v14;
      v13 = v41[0];
    }

    v15 = *(v49[0] + 24);
    v16 = *(v13 + 24);
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_15;
      }

      if ((*(v15 + 24) & 0x10) != 0 && (*(v16 + 24) & 0x10) != 0 && (v17 = *(*(v47[0] + 24) + 209), v18 = *(*(v39[0] + 24) + 209), v17 != v18))
      {
        if (v17 < v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = *(v15 + 8);
        v20 = *(v16 + 8);
        if (v19 < v20 || v19 == v20 && *(v15 + 16) <= *(v16 + 16))
        {
LABEL_15:
          v21 = (*(v7 + 2))(v7, *(v49[0] + 24), *(v47[0] + 24), *(v45[0] + 24), *(v43[0] + 24));
          v22 = v47;
          v23 = v49;
          v25 = v43;
          v24 = v45;
          if ((v21 & 1) == 0)
          {
            break;
          }

          goto LABEL_19;
        }
      }
    }

    else if (!v16)
    {
      break;
    }

    v26 = *(v39[0] + 24);
    v27 = *(v37[0] + 24);
    v28 = *(v35[0] + 24);
    v29 = (*(v7 + 2))(v7);
    v22 = v39;
    v23 = v41;
    v24 = v37;
    v25 = v35;
    if ((v29 & 1) == 0)
    {
      break;
    }

LABEL_19:
    *(*v23 + 24) = 0;
    *(*v22 + 24) = 0;
    *(*v24 + 24) = 0;
    *(*v25 + 24) = 0;
  }

  while (v11 < a2 || v9 < a4);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v48, 8);
}

void sub_2999340F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 232), 8);
  _Block_object_dispose((v48 - 200), 8);
  _Block_object_dispose((v48 - 168), 8);
  _Block_object_dispose((v48 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_299934168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
  *(*(a1[7] + 8) + 24) = a5;
  return 0;
}

uint64_t now_in_absolute_milliseconds()
{
  v0 = systemstats_mach_absolute_time();
  v1 = sub_2999345D0();
  return *v1 * v0 / v1[1];
}

unint64_t sub_2999341D4(uint64_t *a1, uint64_t a2)
{
  v4 = now_in_absolute_milliseconds();
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  systemstats_gettimeofday(&v8, 0);
  v5 = sub_29993471C(*a1, v4, &v8);
  v6 = *a1;
  if (v5)
  {
    sub_299938C78(v6, v4, &v8, 0);
    v6 = *a1;
    if (*(*(*a1 + 8) + 16))
    {
      sub_299938E04(v6, 0, 0, 0, 0);
      v6 = *a1;
    }
  }

  result = _systemstats_retried_write(v6, *(a2 + 40), *(a2 + 48));
  *(*a1 + 176) = v4;
  return result;
}

uint64_t *sub_299934284(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = (a1 + 32);
  if ((*(v3 + 200) & 1) == 0)
  {
    return sub_2999341D4(result, a1);
  }

  return result;
}

void sub_2999342B4(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = gzopen([v5 UTF8String], "rb");
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  v11 = malloc_type_malloc(0x40000uLL, 0xA9897352uLL);
  if (!v11)
  {
    sub_299939E78();
  }

  v12 = v11;
  v13 = 0;
  v14 = 0x40000;
  while (1)
  {
    if (v14 != v13)
    {
      if (v13)
      {
        memmove(v12, &v12[v14 - v13], v13);
      }

      goto LABEL_11;
    }

    if (v13 >= 0x8000001)
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = 2 * v13;
    v15 = reallocf(v12, 2 * v13);
    if (!v15)
    {
      sub_299939E78();
    }

    v12 = v15;
LABEL_11:
    v16 = gzread(v9, &v12[v13], v14 - v13);
    if (v16 < 0)
    {
      errnum = 0;
      v18 = gzerror(v9, &errnum);
      if (errnum == -1)
      {
        errnum = *__error();
        v19 = __error();
        v18 = strerror(*v19);
      }

      v20 = v18;
      v21 = sub_2999351AC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v25 = v5;
        v26 = 1024;
        v27 = errnum;
        v28 = 2080;
        v29 = v20;
        _os_log_debug_impl(&dword_299933000, v21, OS_LOG_TYPE_DEBUG, "Read failed for microstackshots for file %@: %d %s", buf, 0x1Cu);
      }

      goto LABEL_22;
    }

    if (v16 != v14 - v13)
    {
      systemstats_foreach_micro(v12, v16 + v13, v6, v7);
      goto LABEL_23;
    }

    v17 = systemstats_foreach_micro(v12, v14, v6, v7);
    v13 = v14 - v17;
    if (v14 < v17)
    {
      sub_29993AE38();
    }
  }

  v21 = sub_2999351AC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_29993AE64();
  }

LABEL_22:

LABEL_23:
  free(v12);
  objc_autoreleasePoolPop(v10);
  gzclose(v9);
LABEL_24:

  v22 = *MEMORY[0x29EDCA608];
}

uint64_t sub_299934528(uint64_t a1, void *bytes, size_t length)
{
  v4 = xpc_data_create(bytes, length);
  (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);

  return 1;
}

uint64_t sub_299934590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
  *(*(a1[7] + 8) + 24) = a5;
  return 0;
}

uint64_t *sub_2999345D0()
{
  if (qword_2A189CA40 != -1)
  {
    sub_299939EB4();
  }

  return &qword_2A189CA30;
}

unint64_t _systemstats_retried_write(uint64_t a1, void *a2, size_t __nbyte)
{
  v4 = *(a1 + 88);
  if (v4 == -1 || (*(a1 + 200) & 1) != 0)
  {
    return 0;
  }

  v5 = __nbyte;
  if ((*(*(a1 + 8) + 16) & 2) == 0)
  {
    sub_299938B84(v4, a2, __nbyte);
    *(a1 + 112) = vaddq_s64(*(a1 + 112), vdupq_n_s64(v5));
LABEL_11:
    nullsub_1(*(a1 + 88));
    return v5;
  }

  gzwrite(*(a1 + 184), a2, __nbyte);
  v6 = MEMORY[0x29C2A4A00](*(a1 + 184));
  if (v6 < 1)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 112);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v9 < 0 == v8)
  {
    v11 = v9 + *(a1 + 120);
    *(a1 + 112) = v6;
    *(a1 + 120) = v11;
    goto LABEL_11;
  }

  *(a1 + 200) = 1;
  v10 = *(a1 + 104);
  if (v10)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_299938C1C;
    block[3] = &unk_29F277410;
    block[4] = a1;
    dispatch_async(v10, block);
    goto LABEL_11;
  }

  return 0;
}

BOOL sub_29993471C(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[22];
  if (a2 < v3)
  {
    sub_29993B300();
  }

  v4 = a1[1];
  if ((*(v4 + 16) & 4) != 0)
  {
    return 0;
  }

  if (v3 && a2 - v3 < *(v4 + 24))
  {
    v5 = a1[14];
  }

  else
  {
    v5 = a1[14];
    if (v5 >= a1[16])
    {
      return 1;
    }
  }

  if (v5 < *(v4 + 32))
  {
    return *a3 - a1[17] > 86400;
  }

  return 1;
}

uint64_t systemstats_get_pmi_cycle_interval(_BYTE *a1)
{
  microstackshot_cycle_interval_override = systemstats_get_microstackshot_cycle_interval_override();
  if (microstackshot_cycle_interval_override)
  {
    v3 = microstackshot_cycle_interval_override;
    v4 = sub_2999351AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_29993A590();
    }

    if (a1)
    {
      *a1 = 1;
    }

    return v3;
  }

  else
  {
    if (a1)
    {
      *a1 = 0;
    }

    return systemstats_get_microstackshot_cycle_interval_default();
  }
}

const void *systemstats_get_microstackshot_cycle_interval_override()
{
  if (geteuid())
  {
    v0 = sub_2999351AC();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_29993A604();
    }

    v1 = __error();
    v2 = 0;
    v3 = 1;
    goto LABEL_27;
  }

  v4 = CFPreferencesCopyValue(@"PMICycleInterval", @"com.apple.microstackshots", @"root", *MEMORY[0x29EDB8F90]);
  v2 = v4;
  if (!v4)
  {
    v1 = __error();
    v3 = 2;
LABEL_27:
    *v1 = v3;
    return v2;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFNumberGetTypeID())
  {
    v7 = CFGetTypeID(v2);
    v8 = CFCopyTypeIDDescription(v7);
    v9 = sub_2999351AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_29993A640();
    }

    CFRelease(v8);
    goto LABEL_19;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr))
  {
    v10 = sub_2999351AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29993A824();
    }

LABEL_19:
    CFRelease(v2);
LABEL_26:
    v1 = __error();
    v2 = 0;
    v3 = 22;
    goto LABEL_27;
  }

  CFRelease(v2);
  v2 = valuePtr;
  *__error() = 0;
  if (v2 <= 0)
  {
    v6 = sub_2999351AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29993A7B0();
    }

    goto LABEL_25;
  }

  if (v2 <= 0x98967F)
  {
    v6 = sub_2999351AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29993A734();
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v2 >= 0x174876E801)
  {
    v6 = sub_2999351AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29993A6C0();
    }

    goto LABEL_25;
  }

  return v2;
}

uint64_t systemstats_get_microstackshot_cycle_interval_default()
{
  v0 = 10000000000;
  v1 = CFPreferencesCopyValue(@"microstackshotPMICycleInterval", @"com.apple.da", @"mobile", *MEMORY[0x29EDB8FA8]);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID() && (valuePtr = 0, CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr)))
    {
      v4 = valuePtr;
      CFRelease(v2);
      if (v4 - 1 < 0x3B9AC9FF)
      {
        v5 = 1000000000;
      }

      else
      {
        v5 = v4;
      }

      if (v4 <= 0x174876E800)
      {
        return v5;
      }

      else
      {
        return 100000000000;
      }
    }

    else
    {
      v6 = CFGetTypeID(v2);
      v7 = CFCopyTypeIDDescription(v6);
      v8 = sub_2999351AC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_29993A8AC();
      }

      CFRelease(v7);
      CFRelease(v2);
    }
  }

  return v0;
}

void systemstats_get_microstackshots(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((systemstats_persistence_is_allowed() & 1) == 0)
  {
    v6 = v3;
    v11 = v4;
    v12 = sub_2999351AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_29993A92C();
    }

    v13 = malloc_type_malloc(0x10000uLL, 0xB33FA638uLL);
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = v13;
    v15 = malloc_type_malloc(0x10000uLL, 0x7B10C2F4uLL);
    if (!v15)
    {
      v16 = v14;
LABEL_41:
      free(v16);
LABEL_42:

      goto LABEL_43;
    }

    v16 = v15;
    v17 = __microstackshot();
    if ((v17 & 0x80000000) != 0)
    {
      v19 = sub_2999351AC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_29993A9D8();
      }
    }

    else
    {
      v18 = v17;
      if (v17 <= 0x10000)
      {
        goto LABEL_22;
      }

      v19 = sub_2999351AC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_29993A968();
      }
    }

    v18 = 0;
LABEL_22:
    v20 = __microstackshot();
    if ((v20 & 0x80000000) != 0)
    {
      v22 = sub_2999351AC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_29993AACC();
      }
    }

    else
    {
      v21 = v20;
      if (v20 <= 0x10000)
      {
LABEL_29:
        if (v21 | v18)
        {
          if (v6)
          {
            uint64 = xpc_dictionary_get_uint64(v6, "time");
            v31 = xpc_dictionary_get_uint64(v6, "endtime");
            v23 = xpc_dictionary_get_value(v6, "pid");

            if (v23)
            {
              v24 = xpc_dictionary_get_uint64(v6, "pid");
            }

            else
            {
              v24 = -1;
            }

            v29 = xpc_dictionary_get_value(v6, "uniqueid");

            if (v29)
            {
              v28 = xpc_dictionary_get_uint64(v6, "uniqueid");
            }

            else
            {
              v28 = -1;
            }

            v27 = xpc_dictionary_get_uint64(v6, "type");
            v26 = v31;
            v25 = uint64;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v24 = -1;
            v28 = -1;
          }

          v35[0] = MEMORY[0x29EDCA5F8];
          v35[1] = 3221225472;
          v35[2] = sub_2999380D8;
          v35[3] = &unk_29F277328;
          v41 = v24;
          v37 = v28;
          v38 = v27;
          v39 = v25;
          v40 = v26;
          v36 = v11;
          v30 = MEMORY[0x29C2A4C70](v35);
          systemstats_zipper_buffers_foreach_micro(v14, v18, v16, v21, v30);
        }

        (*(v11 + 2))(v11, 1, 0, 0);
        free(v14);
        goto LABEL_41;
      }

      v22 = sub_2999351AC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_29993AA5C();
      }
    }

    v21 = 0;
    goto LABEL_29;
  }

  v5 = dispatch_semaphore_create(0);
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = sub_299935450;
  v33[3] = &unk_29F277290;
  v6 = v5;
  v34 = v6;
  if (systemstats_microstackshot_checkpoint_async(v33))
  {
    v7 = dispatch_time(0, 10000000000);
    v8 = dispatch_semaphore_wait(v6, v7);
    v9 = sub_2999351AC();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        sub_29993AB50();
      }
    }

    else if (v10)
    {
      sub_29993AB8C();
    }
  }

  get_microstackshots_from_files("/private/var/db/systemstats", v3, v4);

LABEL_43:
}

uint64_t systemstats_persistence_is_allowed()
{
  v12[1] = *MEMORY[0x29EDCA608];
  v0 = CFPreferencesCopyValue(@"allowMicrostackshotPersistence", @"com.apple.da", @"mobile", *MEMORY[0x29EDB8FA8]);
  if (!v0)
  {
LABEL_14:
    v9 = sub_2999351AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_29993A138();
    }

    v3 = 1;
    goto LABEL_17;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFNumberGetTypeID())
  {
    v12[0] = 0;
    if (!CFNumberGetValue(v1, kCFNumberSInt64Type, v12))
    {
      goto LABEL_11;
    }

    v3 = v12[0];
    if (v12[0] >= 2uLL)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = CFGetTypeID(v1);
    if (v4 != CFBooleanGetTypeID())
    {
LABEL_11:
      v6 = CFGetTypeID(v1);
      v7 = CFCopyTypeIDDescription(v6);
      v8 = sub_2999351AC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_29993A0B8();
      }

      CFRelease(v7);
      CFRelease(v1);
      goto LABEL_14;
    }

    v3 = CFBooleanGetValue(v1) != 0;
  }

  CFRelease(v1);
  v5 = sub_2999351AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(v12[0]) = 67109120;
    HIDWORD(v12[0]) = v3;
    _os_log_impl(&dword_299933000, v5, OS_LOG_TYPE_INFO, "allowMicrostackshotPersistence setting: %d", v12, 8u);
  }

LABEL_17:
  v10 = *MEMORY[0x29EDCA608];
  return v3 & 1;
}

id sub_2999351AC()
{
  if (qword_2A189CA50 != -1)
  {
    sub_299934B94();
  }

  v1 = qword_2A189CA58;

  return v1;
}

uint64_t sub_2999351F0()
{
  qword_2A189CA58 = os_log_create("com.apple.systemstats", "micro");

  return MEMORY[0x2A1C71028]();
}

uint64_t systemstats_microstackshot_checkpoint_async(void *a1)
{
  v1 = a1;
  out_token = 0;
  v2 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29993540C;
  v7[3] = &unk_29F277268;
  v3 = v1;
  v8 = v3;
  v4 = notify_register_dispatch("com.apple.telemetry.immediate-done", &out_token, v2, v7);

  v5 = 0;
  if (!v4)
  {
    if (notify_post("com.apple.telemetry.immediate"))
    {
      notify_cancel(out_token);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

void systemstats_stream_flush(uint64_t a1)
{
  if (*a1 == 1 && (*(*(a1 + 8) + 16) & 2) != 0)
  {
    block[5] = v1;
    block[6] = v2;
    v3 = *(a1 + 104);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_2999353F0;
    block[3] = &unk_29F277490;
    block[4] = a1;
    dispatch_sync(v3, block);
  }
}

uint64_t sub_2999353F0(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 200) & 1) == 0)
  {
    return gzflush(*(v1 + 184), 2);
  }

  return result;
}

uint64_t sub_29993540C(uint64_t a1, int token)
{
  notify_cancel(token);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

intptr_t sub_299935450(uint64_t a1)
{
  v2 = sub_2999351AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29993ABC8();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void get_microstackshots_from_files(const char *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5 = a3;
  v6 = sub_2999351AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_299939FE8();
  }

  if (v4)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "time");
    v8 = xpc_dictionary_get_uint64(v4, "endtime");
    v9 = xpc_dictionary_get_value(v4, "pid");
    v10 = v9 == 0;

    if (v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = xpc_dictionary_get_uint64(v4, "pid");
    }

    v15 = xpc_dictionary_get_value(v4, "uniqueid");
    v16 = v15 == 0;

    if (v16)
    {
      v14 = -1;
    }

    else
    {
      v14 = xpc_dictionary_get_uint64(v4, "uniqueid");
    }

    v12 = xpc_dictionary_get_uint64(v4, "type");
    v45 = 0;
    v46 = 0;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    if (xpc_dictionary_get_BOOL(v4, "currentBoot"))
    {
      if (_systemstats_read_uuid_from_cookie_path(a1, "current_boot_uuid", &v45, &v43))
      {
        v13 = &v43;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    uint64 = 0;
    v8 = 0;
    v12 = 0;
    v13 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    v11 = -1;
    v14 = -1;
  }

  v38 = 0;
  v39[0] = &v38;
  v39[1] = 0x2020000000;
  v39[2] = 0;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x2020000000;
  v37[2] = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = sub_2999372F0;
  v28[3] = &unk_29F277218;
  v35 = v11;
  v31 = v14;
  v32 = v12;
  v33 = uint64;
  v34 = v8;
  v29 = v5;
  v30 = &v38;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_299934528;
  v25[3] = &unk_29F277240;
  v17 = v29;
  v26 = v17;
  v27 = &v36;
  v18 = v28;
  v19 = v25;
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v40[2] = sub_299935ED8;
  v40[3] = &unk_29F2772D8;
  v41 = v18;
  v42 = v19;
  v20 = v19;
  v21 = v18;
  sub_299935890(a1, v13, uint64, v8, v40);

  (*(v17 + 2))(v17, 1, 0, 0);
  v22 = sub_2999351AC();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_29993A024(v39, v37);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v38, 8);

  v23 = *MEMORY[0x29EDCA608];
}

void sub_299935864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_299935890(const char *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x29EDCA608];
  v9 = a5;
  v36 = 15;
  v37 = "microstackshots";
  v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v11 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = sub_299935DA4;
  v30[3] = &unk_29F277300;
  v33 = a1;
  v34 = a3;
  v35 = a4;
  v12 = v10;
  v31 = v12;
  v13 = v11;
  v32 = v13;
  _systemstats_enumerate_files(a1, a2, 0, &v37, &v36, 1, v30);
  v14 = objc_autoreleasePoolPush();
  v15 = [v12 keysSortedByValueUsingSelector:sel_compare_];
  v16 = [v15 firstObject];
  if ([v13 count] && (objc_msgSend(v16, "containsString:", @"bootinfo") & 1) == 0)
  {
    v17 = [v16 lastPathComponent];
    v18 = [v17 substringToIndex:36];
    v19 = [v13 objectForKeyedSubscript:v18];

    if (v19)
    {
      v9[2](v9, v19);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v9[2](v9, *(*(&v26 + 1) + 8 * v24++));
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v22);
  }

  objc_autoreleasePoolPop(v14);
  v25 = *MEMORY[0x29EDCA608];
}

void _systemstats_enumerate_files(const char *a1, const char *a2, const char *a3, const char **a4, size_t *a5, uint64_t a6, void *a7)
{
  v35 = *MEMORY[0x29EDCA608];
  v12 = a7;
  if (!a1)
  {
    a1 = "/private/var/db/systemstats";
  }

  v13 = opendir(a1);
  if (v13)
  {
    v14 = v13;
    v29 = a1;
    v28 = dirfd(v13);
    v15 = readdir(v14);
    if (v15)
    {
      v16 = v15;
      do
      {
        if (v16->d_type == 8 && v16->d_namlen > 0x27u)
        {
          *in = 0u;
          memset(v34, 0, sizeof(v34));
          __strlcpy_chk();
          memset(uu, 0, sizeof(uu));
          if (!uuid_parse(in, uu) && (!a2 || !strncmp(a2, in, 0x25uLL)) && (!a3 || strncmp(a3, in, 0x25uLL)) && v16->d_name[36] == 46)
          {
            if (!a6)
            {
              goto LABEL_23;
            }

            v26 = a6;
            v27 = v12;
            v17 = 0;
            v18 = a4;
            d_namlen = v16->d_namlen;
            v24 = v18;
            v25 = a5;
            do
            {
              v21 = *a5++;
              v20 = v21;
              if (v21 + 38 <= d_namlen && !strncmp(&v16->d_name[37], *v18, v20))
              {
                v17 |= v16->d_name[v20 + 37] == 46;
              }

              ++v18;
              --a6;
            }

            while (a6);
            a6 = v26;
            v12 = v27;
            a4 = v24;
            a5 = v25;
            if (v17)
            {
LABEL_23:
              memset(&v31, 0, sizeof(v31));
              v22 = sub_299935D90(v29, v28, v16->d_name, &v31);
              if (v22)
              {
                if (v22 == -1)
                {
                  sub_299939E94();
                }
              }

              else
              {
                v12[2](v12, v16->d_name, v16->d_namlen, &v31);
              }
            }
          }
        }

        v16 = readdir(v14);
      }

      while (v16);
    }

    closedir(v14);
  }

  else if (*__error())
  {
    _os_assumes_log();
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_299935DA4(uint64_t a1, const char *a2, size_t a3, uint64_t a4)
{
  v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%s/%s", *(a1 + 48), a2];
  v8 = *(a4 + 48);
  if (v8 >= *(a1 + 56) && ((v9 = *(a1 + 64)) != 0 ? (v10 = v8 <= v9) : (v10 = 1), v10))
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DB0]) initWithTimeIntervalSince1970:*(a4 + 56) / 1000000000.0 + *(a4 + 48)];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v13];
  }

  else
  {
    if (!strnstr(a2, "bootinfo", a3))
    {
      goto LABEL_11;
    }

    v11 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:a2];
    v12 = [v11 substringToIndex:36];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];
  }

LABEL_11:
}

uint64_t now_in_continuous_milliseconds()
{
  v0 = systemstats_mach_continuous_time();
  v1 = sub_2999345D0();
  return *v1 * v0 / v1[1];
}

void *_systemstats_writers()
{
  if (qword_2A189CA48 != -1)
  {
    sub_299939E64();
  }

  return &unk_2A189C4F0;
}

uint64_t sub_299935F90()
{
  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    qword_2A189C810 = 0x40000000;
  }

  return result;
}

double sub_299935FC0(uint64_t a1, int a2)
{
  *&result = 4;
  *a1 = xmmword_29993BCE0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a1 + 32;
  return result;
}

void sub_299935FDC(void *a1)
{
  if (*a1 >= 0x4000uLL)
  {
    sub_299939E78();
  }

  v3 = a1[3];
  if (v3 != a1 + 4)
  {

    free(v3);
  }
}

uint64_t sub_299936020(uint64_t result, size_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = (8 * result);
    do
    {
      __src = v5 & 0x7F | ((v5 > 0x7F) << 7);
      sub_299936208(a2, &__src, 1uLL);
      v6 = v5 >= 0x7F;
      v7 = v5 == 127;
      v5 >>= 7;
    }

    while (!v7 && v6);
    do
    {
      v9 = v3 & 0x7F | ((v3 > 0x7F) << 7);
      result = sub_299936208(a2, &v9, 1uLL);
      v6 = v3 >= 0x7F;
      v7 = v3 == 127;
      v3 >>= 7;
    }

    while (!v7 && v6);
  }

  return result;
}

void *sub_2999360C0(void *result, size_t *a2, void *a3, size_t a4)
{
  if (a3 && a4)
  {
    v7 = (8 * result) | 2u;
    do
    {
      __src = v7 & 0x7F | ((v7 > 0x7F) << 7);
      sub_299936208(a2, &__src, 1uLL);
      v8 = v7 > 0x7F;
      v7 >>= 7;
    }

    while (v8);
    v9 = 16382 - *a2;
    if (a4 >= v9)
    {
      if (a4 != v9)
      {
        _os_assumes_log();
      }

      v12 = v9;
      do
      {
        v15 = v12 & 0x7F | ((v12 > 0x7F) << 7);
        sub_299936208(a2, &v15, 1uLL);
        v8 = v12 > 0x7F;
        v12 >>= 7;
      }

      while (v8);
    }

    else
    {
      v10 = a4;
      do
      {
        v14 = v10 & 0x7F | ((v10 > 0x7F) << 7);
        sub_299936208(a2, &v14, 1uLL);
        v11 = v10 >= 0x80;
        v10 >>= 7;
      }

      while (v11);
      v9 = a4;
    }

    return sub_299936208(a2, a3, v9);
  }

  return result;
}

void *sub_299936208(size_t *a1, void *__src, size_t __n)
{
  if (__n >> 14 || (v5 = *a1, v6 = *a1 + __n, v6 >= 0x4000))
  {
    abort();
  }

  v8 = a1[1];
  v9 = a1[3];
  if (v6 > v8)
  {
    if (v9 == a1 + 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = a1[3];
    }

    v11 = 2 * v8;
    if (v11 > v6)
    {
      v6 = v11;
    }

    if (v6 >= 0x3FFF)
    {
      v12 = 0x3FFFLL;
    }

    else
    {
      v12 = v6;
    }

    a1[1] = v12;
    v13 = reallocf(v10, v12);
    a1[3] = v13;
    if (!v13)
    {
      sub_299939E78();
    }

    v9 = v13;
    v5 = *a1;
    if (!v10)
    {
      memcpy(v13, a1 + 4, *a1);
    }
  }

  result = memcpy(v9 + v5, __src, __n);
  v15 = a1[1];
  v16 = *a1 + __n;
  *a1 = v16;
  if (v16 > v15)
  {
    sub_299939E78();
  }

  return result;
}

void *sub_2999362F4(void *result, size_t *a2, char *__s)
{
  if (__s)
  {
    v5 = result;
    v6 = strlen(__s);

    return sub_2999360C0(v5, a2, __s, v6);
  }

  return result;
}

uint64_t sub_299936354(uint64_t a1)
{
  v2 = *a1 - 4;
  if (*a1 == 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = (flsll(*a1 - 4) - 1) / 7 + 1;
  }

  v4 = (8 * *(a1 + 16)) | 2u;
  v5 = (flsll(v4) - 1) / 7 + 1;
  v6 = v3 + v5;
  if (v6 >= 5)
  {
    sub_299939E78();
  }

  v7 = 4 - v3;
  *a1 = v7 - v5;
  do
  {
    __src = v4 & 0x7F | ((v4 > 0x7F) << 7);
    sub_299936208(a1, &__src, 1uLL);
    v8 = v4 > 0x7F;
    v4 >>= 7;
  }

  while (v8);
  if (*a1 != v7)
  {
    sub_299939E78();
  }

  v9 = v2;
  do
  {
    v12 = v9 & 0x7F | ((v9 > 0x7F) << 7);
    sub_299936208(a1, &v12, 1uLL);
    v8 = v9 > 0x7F;
    v9 >>= 7;
  }

  while (v8);
  if (*a1 != 4)
  {
    sub_299939E78();
  }

  *a1 = v6 + v2;
  return *(a1 + 24) - v6 + 4;
}

double systemstats_create_record(int a1)
{
  v2 = malloc_type_malloc(0xA0uLL, 0x10100405638ECB9uLL);
  *&result = 4;
  *v2 = xmmword_29993BCE0;
  v2[4] = a1;
  *(v2 + 3) = v2 + 8;
  return result;
}

void systemstats_insert_and_dispose_subrecord(size_t *a1, uint64_t a2)
{
  sub_2999360C0(*(a2 + 16), a1, (*(a2 + 24) + 4), *a2 - 4);
  sub_299935FDC(a2);

  free(a2);
}

void systemstats_write_and_dispose_record(_BYTE *a1, uint64_t *a2)
{
  if (a1 && (*a1 & 1) != 0)
  {
    v4 = sub_299936354(a2);
    _systemstats_queued_write(a1, v4, *a2);
    sub_299935FDC(a2);

    free(a2);
  }

  else
  {
    _os_assumes_log();
  }
}

void systemstats_dispose_record(void *a1)
{
  sub_299935FDC(a1);

  free(a1);
}

uint64_t systemstats_write_checkpoint(_BYTE *a1)
{
  v2 = now_in_absolute_milliseconds();
  v3 = malloc_type_malloc(0xA0uLL, 0x10100405638ECB9uLL);
  *v3 = xmmword_29993BCE0;
  v3[4] = 36;
  *(v3 + 3) = v3 + 8;
  sub_299936020(1, v3, v2);
  systemstats_write_and_dispose_record(a1, v3);
  return v2;
}

void systemstats_delete_old_files(const char *a1, const char *a2, char *__s, uint64_t a4, void *a5, char a6)
{
  v64 = *MEMORY[0x29EDCA608];
  v61 = __s;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = "/private/var/db/systemstats";
  }

  v10 = *a5 - 345600;
  v60 = strlen(__s);
  context = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v13 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v14 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = sub_299936AF8;
  v47[3] = &unk_29F277180;
  v53 = v9;
  v55 = a6;
  v35 = v14;
  v48 = v35;
  v54 = v10;
  v15 = v11;
  v49 = v15;
  v36 = v12;
  v50 = v36;
  v16 = v13;
  v51 = v16;
  v52 = &v56;
  _systemstats_enumerate_files(v9, 0, a2, &v61, &v60, 1, v47);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v43 objects:v63 count:16];
  if (v18)
  {
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v17);
        }

        unlink([*(*(&v43 + 1) + 8 * v20++) UTF8String]);
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v63 count:16];
    }

    while (v18);
  }

  v21 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  [v36 keysSortedByValueUsingSelector:sel_compare_];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v22 = v40 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v62 count:16];
  if (v23)
  {
    v24 = 4 * a4;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * v26);
        if (v57[3] <= v24)
        {
          v29 = [*(*(&v39 + 1) + 8 * v26) lastPathComponent];
          v31 = [v29 substringToIndex:36];
          [v21 addObject:v31];
        }

        else
        {
          v28 = v27;
          unlink([v27 UTF8String]);
          v29 = [v16 objectForKeyedSubscript:v27];
          v30 = [v29 unsignedIntegerValue];
          v57[3] -= v30;
        }

        ++v26;
      }

      while (v23 != v26);
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v62 count:16];
    }

    while (v23);
  }

  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3221225472;
  v37[2] = sub_299936C88;
  v37[3] = &unk_29F2771A8;
  v32 = v21;
  v38 = v32;
  [v35 enumerateKeysAndObjectsUsingBlock:v37];

  _Block_object_dispose(&v56, 8);
  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_299936AF8(uint64_t a1, const char *a2, size_t a3, uint64_t *a4)
{
  v8 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%s/%s", *(a1 + 72), a2];
  v14 = v8;
  if (*(a1 + 88) == 1 && (v9 = strnstr(a2, "bootinfo", a3), v8 = v14, v9))
  {
    v10 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:a2];
    v11 = [v10 substringToIndex:36];
    [*(a1 + 32) setObject:v14 forKeyedSubscript:v11];
  }

  else if (a4[6] >= *(a1 + 80))
  {
    v12 = [objc_alloc(MEMORY[0x29EDB8DB0]) initWithTimeIntervalSince1970:a4[7] / 1000000000.0 + a4[6]];
    [*(a1 + 48) setObject:v12 forKeyedSubscript:v14];

    v13 = [MEMORY[0x29EDBA070] numberWithLongLong:a4[12]];
    [*(a1 + 56) setObject:v13 forKeyedSubscript:v14];

    *(*(*(a1 + 64) + 8) + 24) += a4[12];
  }

  else
  {
    [*(a1 + 40) addObject:v8];
  }
}

void sub_299936C88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    unlink([v5 UTF8String]);
  }
}

uint64_t sub_299936CF4()
{
  v0 = 1000000;
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    result = _os_assumes_log();
    goto LABEL_5;
  }

  if (!info.denom)
  {
LABEL_5:
    qword_2A189CA30 = 1;
    goto LABEL_6;
  }

  qword_2A189CA30 = info.numer;
  v0 = 1000000 * info.denom;
LABEL_6:
  qword_2A189CA38 = v0;
  return result;
}

BOOL _systemstats_get_system_version(char *a1, size_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = a2;
  *v8 = 0x4100000001;
  v4 = sysctl(v8, 2u, a1, &v7, 0, 0);
  if (v4 == -1)
  {
    sub_299939E94();
  }

  a1[a2 - 1] = 0;
  result = v4 == 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299936E14(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  *in = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", in, &v5, 0, 0);
  if (v2 || (v7[20] = 0, (v2 = uuid_parse(in, a1)) != 0))
  {
    if (v2 == -1)
    {
      sub_299939E94();
    }

    uuid_generate_random(a1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

unint64_t now_in_wall_milliseconds()
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  v0 = systemstats_gettimeofday(&v3, 0);
  if (!v0)
  {
    return 1000 * v3.tv_sec + v3.tv_usec / 0x3E8uLL;
  }

  v1 = v0;
  result = 0;
  if (v1 == -1)
  {
    sub_299939E94();
    return 0;
  }

  return result;
}

uint64_t sub_299936F44(const char *a1, void *a2, size_t a3)
{
  v5 = open(a1, 0);
  if (v5 < 0)
  {
    return -1;
  }

  v6 = v5;
  do
  {
    v7 = read(v6, a2, a3);
  }

  while (v7 == -1 && *__error() == 4);
  if (close(v6) == -1)
  {
    sub_299939E94();
  }

  return v7;
}

uint64_t _systemstats_read_uuid(const char *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v5 = sub_299936F44(a1, a3, 0x25uLL);
  if (v5 == 37)
  {
    a3[36] = 0;
    if (uuid_parse(a3, a2))
    {
      _os_assumes_log();
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v5 == -1 && *__error() != 2)
    {
      sub_299939E94();
    }

    _os_assumes_log();
    result = 0;
    *a3 = 0;
  }

  return result;
}

BOOL _systemstats_read_current_build(const char *a1, _BYTE *a2, size_t a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v4 = a2;
    v6 = sub_299936F44(a1, a2, a3);
    v3 = v6 != -1;
    if (v6 == -1)
    {
      v7 = *__error();
      v8 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG);
      if (v7 == 2)
      {
        if (v8)
        {
          sub_299939F68(a1);
        }
      }

      else if (v8)
      {
        sub_299939EC8(a1);
      }
    }

    else
    {
      v4 = &v4[v6 - 1];
    }

    *v4 = 0;
  }

  return v3;
}

char *_systemstats_copy_cookie_path(const char *a1, const char *a2)
{
  v4 = 0;
  v2 = "/private/var/db/systemstats";
  if (a1)
  {
    v2 = a1;
  }

  asprintf(&v4, "%s/%s", v2, a2);
  return v4;
}

uint64_t _systemstats_read_uuid_from_cookie_path(const char *a1, const char *a2, unsigned __int8 *a3, _BYTE *a4)
{
  uuid = 0;
  if (a2 && a3 && a4)
  {
    v10 = 0;
    v7 = "/private/var/db/systemstats";
    if (a1)
    {
      v7 = a1;
    }

    asprintf(&v10, "%s/%s", v7, a2);
    v8 = v10;
    if (v10)
    {
      uuid = _systemstats_read_uuid(v10, a3, a4);
      free(v8);
    }

    else
    {
      return 0;
    }
  }

  return uuid;
}

void systemstats_unlink_if_present(const char *a1, const char *a2)
{
  *&v5.st_dev = 0;
  v3 = "/private/var/db/systemstats";
  if (a1)
  {
    v3 = a1;
  }

  asprintf(&v5, "%s/%s", v3, a2);
  if (a2)
  {
    v4 = *&v5.st_dev;
    memset(&v5, 0, sizeof(v5));
    if (!stat(v4, &v5))
    {
      unlink(v4);
    }

    free(v4);
  }
}

BOOL sub_29993727C()
{
  if (getenv("DISABLE_FDR") || getenv("DISABLE_SYSTEMSTATS"))
  {
    return 0;
  }

  memset(&v1, 0, sizeof(v1));
  return stat("/private/var/db/systemstats/disabled", &v1) != 0;
}

uint64_t sub_2999372F0(uint64_t a1, void *bytes, uint64_t a3, int a4, size_t length)
{
  if (!a3 || (v6 = *(a1 + 80), v6 == -1) || *(a3 + 4) == v6)
  {
    if (!a3 || (v7 = *(a1 + 48), v7 == -1) || *(a3 + 8) == v7)
    {
      v8 = *(a1 + 56);
      if (!v8 || (v8 & bytes[3]) != 0)
      {
        v9 = bytes[1];
        if (v9 >= *(a1 + 64))
        {
          v10 = *(a1 + 72);
          if (v10 && v9 > v10)
          {
            return 0;
          }

          v12 = xpc_data_create(bytes, length);
          (*(*(a1 + 32) + 16))();
          ++*(*(*(a1 + 40) + 8) + 24);
        }
      }
    }
  }

  return 1;
}

uint64_t systemstats_cpu_hotspot_report_allowed_by_tasking()
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0.0;
  if (!sub_29993752C(@"cpuHotspotReportPercentage", &v8))
  {
LABEL_9:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v2 = sub_2999351AC();
    v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (has_internal_diagnostics)
    {
      if (v5)
      {
        sub_29993A2A8();
      }

      v0 = 100.0;
    }

    else
    {
      v0 = 0.0;
      if (v5)
      {
        sub_29993A230();
      }
    }

    goto LABEL_17;
  }

  v0 = v8;
  v1 = sub_2999351AC();
  v2 = v1;
  if (v0 < 0.0 || v0 > 100.0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_29993A1B4(v2, v0);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = v0;
    _os_log_impl(&dword_299933000, v2, OS_LOG_TYPE_INFO, "cpuHotspotReportPercentage setting: %.1f", buf, 0xCu);
  }

LABEL_17:

  result = sub_299937688(v0);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29993752C(const __CFString *a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = CFPreferencesCopyValue(a1, @"com.apple.da", @"mobile", *MEMORY[0x29EDB8FA8]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID() && (*v13 = 0, CFNumberGetValue(v5, kCFNumberDoubleType, v13)))
    {
      *a2 = *v13;
      v7 = 1;
    }

    else
    {
      v8 = CFGetTypeID(v5);
      v9 = CFCopyTypeIDDescription(v8);
      v10 = sub_2999351AC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v13 = 138543874;
        *&v13[4] = a1;
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v5;
        _os_log_fault_impl(&dword_299933000, v10, OS_LOG_TYPE_FAULT, "Invalid value for tasking setting %{public}@: (%{public}@)%{public}@", v13, 0x20u);
      }

      CFRelease(v9);
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_299937688(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 >= 100.0)
  {
    return 1;
  }

  if (qword_2A14C1B38 != -1)
  {
    sub_29993A324();
  }

  v2 = rand() * 100.0 / 2147483650.0;
  v3 = sub_2999351AC();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  v5 = v2 <= a1;
  if (v2 > a1)
  {
    if (v4)
    {
      sub_29993A338();
    }
  }

  else if (v4)
  {
    sub_29993A3AC();
  }

  return v5;
}

uint64_t systemstats_io_hotspot_report_allowed_by_tasking()
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0.0;
  if (!sub_29993752C(@"ioHotspotReportPercentage", &v8))
  {
LABEL_9:
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v2 = sub_2999351AC();
    v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (has_internal_diagnostics)
    {
      if (v5)
      {
        sub_29993A514();
      }

      v0 = 100.0;
    }

    else
    {
      v0 = 0.0;
      if (v5)
      {
        sub_29993A49C();
      }
    }

    goto LABEL_17;
  }

  v0 = v8;
  v1 = sub_2999351AC();
  v2 = v1;
  if (v0 < 0.0 || v0 > 100.0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_29993A420(v2, v0);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = v0;
    _os_log_impl(&dword_299933000, v2, OS_LOG_TYPE_INFO, "cpuHotspotReportPercentage setting: %.1f", buf, 0xCu);
  }

LABEL_17:

  result = sub_299937688(v0);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t systemstats_copy_microstackshots_to_file(void *a1, int a2)
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if ((a2 & 0x80000000) == 0)
  {
    if (systemstats_persistence_is_allowed())
    {
      v4 = dispatch_semaphore_create(0);
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = sub_299937EE8;
      v36[3] = &unk_29F277290;
      v5 = v4;
      v37 = v5;
      if (systemstats_microstackshot_checkpoint_async(v36))
      {
        v6 = dispatch_time(0, 10000000000);
        v7 = dispatch_semaphore_wait(v5, v6);
        v8 = sub_2999351AC();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (v7)
        {
          if (v9)
          {
            sub_29993AB50();
          }
        }

        else if (v9)
        {
          sub_29993AB8C();
        }
      }

      v19 = v3;
      v20 = sub_2999351AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_29993AD84();
      }

      if (v19)
      {
        uint64 = xpc_dictionary_get_uint64(v19, "time");
        v22 = xpc_dictionary_get_uint64(v19, "endtime");
        v23 = xpc_dictionary_get_BOOL(v19, "currentBoot");
        v52 = 0;
        v53 = 0;
        v50 = 0u;
        memset(v51, 0, 21);
        if (v23)
        {
          v24 = &v50;
          if ((_systemstats_read_uuid_from_cookie_path("/private/var/db/systemstats", "current_boot_uuid", &v52, &v50) & 1) == 0)
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        uint64 = 0;
        v22 = 0;
        v24 = 0;
        v52 = 0;
        v53 = 0;
        v50 = 0u;
        memset(v51, 0, 21);
      }

      v25 = malloc_type_malloc(0x8000000uLL, 0x29549993uLL);
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 1;
      *buf = MEMORY[0x29EDCA5F8];
      v39 = 3221225472;
      v40 = sub_299938280;
      v41 = &unk_29F2773F0;
      v42 = &v46;
      v43 = v25;
      v44 = a2;
      v45 = 0x8000000;
      sub_299935890("/private/var/db/systemstats", v24, uint64, v22, buf);
      free(v25);
      v11 = *(v47 + 6);
      _Block_object_dispose(&v46, 8);

      goto LABEL_56;
    }

    v12 = sub_2999351AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299933000, v12, OS_LOG_TYPE_DEFAULT, "Persistence disallowed, copying only live microstackshots", buf, 2u);
    }

    v13 = sub_2999351AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_29993A92C();
    }

    v14 = malloc_type_malloc(0x10000uLL, 0x63214D5DuLL);
    if (v14)
    {
      v15 = malloc_type_malloc(0x10000uLL, 0xD7681B09uLL);
      if (v15)
      {
        v16 = __microstackshot();
        v17 = v16;
        if ((v16 & 0x80000000) != 0)
        {
          v18 = sub_2999351AC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_29993AC04();
          }
        }

        else
        {
          if (v16 <= 0x10000)
          {
            goto LABEL_38;
          }

          v18 = sub_2999351AC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_29993A968();
          }
        }

        v17 = 0;
LABEL_38:
        v26 = __microstackshot();
        v27 = v26;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = sub_2999351AC();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_29993AC8C();
          }
        }

        else
        {
          if (v26 <= 0x10000)
          {
            goto LABEL_45;
          }

          v28 = sub_2999351AC();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_29993AA5C();
          }
        }

        v27 = 0;
LABEL_45:
        v29 = dup(a2);
        if (v29 < 0)
        {
          v11 = *__error();
          v32 = sub_2999351AC();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_29993AD14();
          }
        }

        else
        {
          v30 = gzdopen(a2, "ab");
          v31 = v30;
          if (v30)
          {
            *&v50 = 0;
            *(&v50 + 1) = &v50;
            v51[0] = 0x2020000000;
            LODWORD(v51[1]) = 0;
            *buf = MEMORY[0x29EDCA5F8];
            v39 = 3221225472;
            v40 = sub_2999381A0;
            v41 = &unk_29F277350;
            v42 = &v50;
            v43 = v30;
            systemstats_zipper_buffers_foreach_micro(v14, v17, v15, v27, buf);
            gzclose(v31);
            free(v14);
            free(v15);
            v11 = *(*(&v50 + 1) + 24);
            _Block_object_dispose(&v50, 8);
            goto LABEL_55;
          }

          v11 = *__error();
          v33 = sub_2999351AC();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_29993AD14();
          }

          close(v29);
        }

        free(v14);
        free(v15);
        goto LABEL_55;
      }

      free(v14);
    }

    v11 = 12;
LABEL_55:
    close(a2);
    goto LABEL_56;
  }

  v10 = sub_2999351AC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_29993ADC0();
  }

  v11 = 22;
LABEL_56:

  v34 = *MEMORY[0x29EDCA608];
  return v11;
}

intptr_t sub_299937EE8(uint64_t a1)
{
  v2 = sub_2999351AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29993ABC8();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t systemstats_set_microstackshot_cycle_interval_override(unint64_t a1)
{
  if (geteuid())
  {
    v2 = sub_2999351AC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_29993ADFC();
    }

    return 1;
  }

  if (a1 - 1 <= 0x98967E)
  {
    v4 = sub_2999351AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29993A734();
    }

LABEL_11:

    return 22;
  }

  if (a1 >= 0x174876E801)
  {
    v4 = sub_2999351AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29993A6C0();
    }

    goto LABEL_11;
  }

  valuePtr = a1;
  if (a1)
  {
    v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
    v6 = *MEMORY[0x29EDB8F90];
    CFPreferencesSetValue(@"PMICycleInterval", v5, @"com.apple.microstackshots", @"root", *MEMORY[0x29EDB8F90]);
    CFRelease(v5);
  }

  else
  {
    v6 = *MEMORY[0x29EDB8F90];
    CFPreferencesSetValue(@"PMICycleInterval", 0, @"com.apple.microstackshots", @"root", *MEMORY[0x29EDB8F90]);
  }

  CFPreferencesSynchronize(@"com.apple.microstackshots", @"root", v6);
  notify_post("com.apple.microstackshots.preferences_changed");
  return 0;
}

uint64_t sub_2999380D8(uint64_t a1, void *bytes, uint64_t a3, int a4, size_t length)
{
  if (!a3 || (v6 = *(a1 + 72), v6 == -1) || *(a3 + 4) == v6)
  {
    if (!a3 || (v7 = *(a1 + 40), v7 == -1) || *(a3 + 8) == v7)
    {
      v8 = *(a1 + 48);
      if (!v8 || (v8 & bytes[3]) != 0)
      {
        v9 = bytes[1];
        if (v9 >= *(a1 + 56))
        {
          v10 = *(a1 + 64);
          if (v10 && v9 > v10)
          {
            return 0;
          }

          v12 = xpc_data_create(bytes, length);
          (*(*(a1 + 32) + 16))();
        }
      }
    }
  }

  return 1;
}

uint64_t sub_2999381A0(uint64_t a1, const void *a2, int a3, int a4, unsigned int len)
{
  if (gzwrite(*(a1 + 40), a2, len) != len)
  {
    errnum = 0;
    gzerror(*(a1 + 40), &errnum);
    if (errnum == -1)
    {
      errnum = *__error();
      v6 = sub_2999351AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_29993AF28(&errnum);
      }
    }

    else
    {
      v6 = sub_2999351AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_29993AEA4(&errnum);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = errnum;
  }

  return 1;
}

void sub_299938280(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [v3 UTF8String];
  if (!v4)
  {
    v16 = sub_2999351AC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_29993B1C4();
    }

    goto LABEL_47;
  }

  v5 = v4;
  if (!strstr(v4, "XXXXXX") && !strstr(v5, "truncated"))
  {
    v18 = open([v3 UTF8String], 0);
    if (v18 < 0)
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        goto LABEL_48;
      }

      *(*(*(a1 + 32) + 8) + 24) = *__error();
      v16 = sub_2999351AC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_29993B12C();
      }

LABEL_47:

      goto LABEL_48;
    }

    v19 = v18;
    LODWORD(v20) = *(a1 + 52);
    while (1)
    {
      v21 = read(v19, *(a1 + 40), v20);
      v22 = v21;
      if (v21 < 0)
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = *__error();
        }

        v26 = sub_2999351AC();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *__error();
          *buf = 138412546;
          *&buf[4] = v3;
          *&buf[12] = 1024;
          *&buf[14] = v27;
          _os_log_error_impl(&dword_299933000, v26, OS_LOG_TYPE_ERROR, "Failed to read microstackshots file %@: %{errno}d", buf, 0x12u);
        }
      }

      else
      {
        if (v21)
        {
          v23 = write(*(a1 + 48), *(a1 + 40), v21);
          v24 = sub_2999351AC();
          v25 = v24;
          if (v23 == v22)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218242;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *&buf[14] = v3;
              _os_log_debug_impl(&dword_299933000, v25, OS_LOG_TYPE_DEBUG, "Copied %ld bytes of microstackshots from file %@", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v28 = *__error();
              *buf = 138413058;
              *&buf[4] = v3;
              *&buf[12] = 2048;
              *&buf[14] = v23;
              *&buf[22] = 2048;
              v39 = v22;
              v40 = 1024;
              v41 = v28;
              _os_log_error_impl(&dword_299933000, v25, OS_LOG_TYPE_ERROR, "Failed to write microstackshots from file %@, only wrote %ld out of %ld bytes: %{errno}d", buf, 0x26u);
            }

            if (v23 < 0)
            {
              *(*(*(a1 + 32) + 8) + 24) = *__error();
            }

            else
            {
              *(*(*(a1 + 32) + 8) + 24) = 28;
            }
          }

          goto LABEL_39;
        }

        v26 = sub_2999351AC();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_impl(&dword_299933000, v26, OS_LOG_TYPE_INFO, "Read 0 bytes from microstackshots file %@", buf, 0xCu);
        }
      }

LABEL_39:
      v20 = *(a1 + 52);
      if (v22 != v20)
      {
        close(v19);
        goto LABEL_48;
      }
    }
  }

  v6 = dup(*(a1 + 48));
  if (v6 < 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    v16 = sub_2999351AC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_29993B0A8();
    }

    goto LABEL_47;
  }

  v7 = v6;
  v8 = gzdopen(v6, "ab");
  if (v8)
  {
    v9 = v8;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v39) = 0;
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 3221225472;
    v34[2] = sub_2999388B0;
    v34[3] = &unk_29F277378;
    v37 = v8;
    v10 = v3;
    v35 = v10;
    v36 = buf;
    v11 = MEMORY[0x29C2A4C70](v34);
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 3221225472;
    v32[2] = sub_299938AAC;
    v32[3] = &unk_29F2773A0;
    v33 = v11;
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = sub_299938AC0;
    v30[3] = &unk_29F2773C8;
    v12 = v33;
    v31 = v12;
    sub_2999342B4(v10, v32, v30);
    v13 = *(*&buf[8] + 24);
    v14 = sub_2999351AC();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_29993AF9C(&buf[8]);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v42 = 138412290;
      v43 = v10;
      _os_log_impl(&dword_299933000, v15, OS_LOG_TYPE_INFO, "Read 0 bytes from microstackshots file %@", v42, 0xCu);
    }

    gzclose(v9);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    v17 = sub_2999351AC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_29993B024();
    }

    close(v7);
  }

LABEL_48:

  v29 = *MEMORY[0x29EDCA608];
}

BOOL sub_2999388B0(uint64_t a1, const void *a2, unint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a3 >> 31)
  {
    sub_29993B2D4();
  }

  v3 = a3;
  v5 = gzwrite(*(a1 + 48), a2, a3);
  v6 = v5;
  if (v5 != v3)
  {
    if (v5)
    {
      v7 = sub_2999351AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138413058;
        v21 = v8;
        v22 = 1024;
        v23 = v9;
        v24 = 1024;
        v25 = v6;
        v26 = 1024;
        LODWORD(v27) = v3;
        v10 = "Failed to write microstackshots from file %@ after %d bytes, only wrote %d out of %d bytes";
        v11 = v7;
        v12 = 30;
LABEL_10:
        _os_log_error_impl(&dword_299933000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    else
    {
      errnum = 0;
      v13 = gzerror(*(a1 + 48), &errnum);
      if (errnum == -1)
      {
        errnum = *__error();
        v7 = sub_2999351AC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_29993B238(a1, &errnum);
        }

        goto LABEL_13;
      }

      v14 = v13;
      v7 = sub_2999351AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138413058;
        v21 = v15;
        v22 = 1024;
        v23 = v16;
        v24 = 1024;
        v25 = errnum;
        v26 = 2082;
        v27 = v14;
        v10 = "Unable to gzwrite microstackshots from %@ after %d bytes: %d (%{public}s)";
        v11 = v7;
        v12 = 34;
        goto LABEL_10;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  *(*(*(a1 + 40) + 8) + 24) += v3;
LABEL_14:
  result = v6 == v3;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

size_t sub_299938B84(int __fd, void *__buf, size_t __nbyte)
{
  if (__fd == -1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = write(__fd, __buf, __nbyte);
    if (v7 == -1)
    {
      break;
    }

LABEL_6:
    v6 += v7;
    if (v6 >= __nbyte)
    {
      return v6;
    }
  }

  if (*__error() == 4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (*__error())
  {
    _os_assumes_log();
  }

  return v6;
}

uint64_t sub_299938C1C(uint64_t a1)
{
  *(*(a1 + 32) + 200) = 0;
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  systemstats_gettimeofday(&v5, 0);
  v2 = *(a1 + 32);
  v3 = now_in_absolute_milliseconds();
  return sub_299938C78(v2, v3, &v5, 0);
}

uint64_t sub_299938C78(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  result = geteuid();
  if (!*(a1 + 96))
  {
    *(a1 + 88) = -1;
    return result;
  }

  v9 = result;
  v10 = a1;
  if (*(a1 + 88) == -1)
  {
    result = sub_299939CF0(a1, v9);
    if (!result)
    {
      return result;
    }

    if (a4)
    {
      if (*(a1 + 112))
      {
        v13 = 1;
      }

      else
      {
        result = sub_29993471C(a1, a2, a3);
        if ((result & 1) == 0)
        {
          return result;
        }

        v13 = *(a1 + 112) != 0;
      }
    }

    else
    {
      result = sub_29993471C(a1, a2, a3);
      if ((result & 1) == 0)
      {
        return result;
      }

      v13 = 0;
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v11 = a2;
    v12 = a3;
    v13 = 0;
  }

  result = sub_299939AB4(v10, v11, v12, v13);
  if (result)
  {

    return sub_299939CF0(a1, v9);
  }

  return result;
}

void _systemstats_queued_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_299934284;
  block[3] = &unk_29F277430;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void sub_299938E04(uint64_t a1, unsigned int a2, void *a3, char *a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 200) & 1) == 0)
  {
    v11 = *(a1 + 104);
    if (v11)
    {
      dispatch_assert_queue_V2(v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__nbyte = 0u;
    v18 = 0u;
    sub_299935FC0(__nbyte, 12);
    sub_2999362F4(1, __nbyte, "systemstats_v1");
    v12 = now_in_absolute_milliseconds();
    sub_299936020(2, __nbyte, v12);
    v13 = now_in_wall_milliseconds();
    sub_299936020(3, __nbyte, v13);
    sub_299936020(4, __nbyte, **(a1 + 8));
    sub_2999360C0(5, __nbyte, (a1 + 24), 0x10uLL);
    if (_systemstats_get_system_version(__s, 0x20uLL))
    {
      sub_2999362F4(6, __nbyte, __s);
    }

    if (a3)
    {
      sub_2999360C0(7, __nbyte, a3, 0x10uLL);
    }

    sub_299936020(8, __nbyte, a2);
    if (a4)
    {
      sub_2999362F4(9, __nbyte, a4);
    }

    if (a5)
    {
      sub_2999362F4(0xA, __nbyte, a5);
      v14 = *(a5 + 528);
      if (v14)
      {
        sub_299936020(11, __nbyte, v14);
      }

      v15 = *(a5 + 512);
      if (v15)
      {
        sub_299936020(12, __nbyte, v15);
      }

      sub_299936020(13, __nbyte, *(a5 + 536));
      if (*(a5 + 536))
      {
        sub_2999362F4(0xE, __nbyte, (a5 + 128));
        sub_2999362F4(0xF, __nbyte, (a5 + 256));
      }

      sub_2999362F4(0x10, __nbyte, (a5 + 384));
      sub_299936020(17, __nbyte, *(a5 + 520));
    }

    v16 = sub_299936354(__nbyte);
    *(a1 + 112) += _systemstats_retried_write(a1, v16, __nbyte[0]);
    sub_299935FDC(__nbyte);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void _systemstats_write_logstarts_queued(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a1 + 8) + 16))
  {
    v5 = *(a1 + 104);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_2999390C0;
    block[3] = &unk_29F277450;
    v7 = a2;
    block[4] = a1;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    dispatch_sync(v5, block);
  }
}

uint64_t _systemstats_stream_init(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*a1 == 1)
  {
    sub_29993B35C();
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "/private/var/db/systemstats";
  }

  result = sub_29993727C();
  if (result)
  {
    *(a1 + 16) = a4;
    result = _systemstats_writers();
    if (a2 - 5 < 0x17 || !a2 || a2 == 3)
    {
      *(a1 + 8) = result + 48 * a2;
      if (result)
      {
        *(a1 + 80) = v7;
        result = _systemstats_read_uuid_from_cookie_path(v7, "current_boot_uuid", (a1 + 24), (a1 + 40));
        if (result)
        {
          *(a1 + 88) = -1;
          *(a1 + 184) = 0;
          *(a1 + 120) = 0;
          systemstats_gettimeofday((a1 + 152), 0);
          *(a1 + 168) = now_in_absolute_milliseconds();
          v9 = (*(*(a1 + 8) + 16) & 7) - 1;
          if (v9 >= 4)
          {
            if (!*(*(a1 + 8) + 16))
            {
              sub_299939E78();
            }

            sub_29993B31C();
          }

          v10 = off_29F2774B0[v9];
          v11 = qword_29993BD78[v9];
          *(a1 + 192) = v10;
          *(a1 + 128) = v11;
          v20 = 0;
          memset(out, 0, sizeof(out));
          uuid_unparse((a1 + 24), out);
          v12 = _systemstats_writers();
          asprintf(&v20, "%s/%s.%s.XXXXXX%s", v7, out, v12[6 * a2 + 1], v10);
          *(a1 + 96) = v20;
          v13 = *(a1 + 8);
          if ((*(v13 + 42) & 1) == 0)
          {
            systemstats_delete_old_files(*(a1 + 80), 0, *(v13 + 8), *(v13 + 32), (a1 + 152), (*(v13 + 16) & 8) != 0);
            v13 = *(a1 + 8);
          }

          sub_299938C78(a1, *(a1 + 168), (a1 + 152), (*(v13 + 16) >> 1) & 1);
          if ((*(a1 + 88) & 0x80000000) != 0)
          {
            free(*(a1 + 96));
            result = 0;
          }

          else
          {
            if ((a2 & 0xFFFFFFEF) == 5)
            {
              *(a1 + 104) = 0;
            }

            else
            {
              v14 = *(a1 + 8);
              if (*(v14 + 44) == 1)
              {
                if (qword_2A14C1B48 != -1)
                {
                  sub_29993B334();
                }

                v15 = qword_2A14C1B40;
                *(a1 + 104) = qword_2A14C1B40;
                dispatch_retain(v15);
              }

              else
              {
                *out = 0;
                asprintf(out, "com.apple.systemstats.filestream.%s", *(v14 + 8));
                v16 = *out;
                v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_BACKGROUND, 0);
                *(a1 + 104) = dispatch_queue_create(v16, v18);
                free(*out);
              }
            }

            result = 1;
            *a1 = 1;
          }
        }
      }
    }

    else
    {
      result = 0;
      *(a1 + 8) = 0;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

dispatch_queue_t sub_299939384()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.systemstats.filestream", v1);
  qword_2A14C1B40 = result;
  return result;
}

uint64_t _systemstats_stream_teardown(uint64_t a1)
{
  if (!a1)
  {
    sub_299939E78();
  }

  free(*(a1 + 96));
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 104) = 0;
  }

  if ((*(*(a1 + 8) + 16) & 2) != 0)
  {
    result = gzclose_w(*(a1 + 184));
    if (result)
    {
      result = _os_assumes_log();
    }

    *(a1 + 184) = 0;
  }

  else
  {
    result = close(*(a1 + 88));
    if (result == -1)
    {
      result = sub_299939E94();
    }
  }

  *(a1 + 88) = -1;
  *(a1 + 120) = 0;
  *a1 = 0;
  return result;
}

void *_systemstats_stream_create(unsigned int a1, const char *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xD0uLL, 0x107004075F51AE9uLL);
  v7 = v6;
  if (v6)
  {
    if (_systemstats_stream_init(v6, a1, a2, a3))
    {
      _systemstats_write_logstarts_queued(v7, 1, 0, 0, 0);
    }

    else
    {
      free(v7);
      return 0;
    }
  }

  return v7;
}

void systemstats_stream_delete(void *a1)
{
  _systemstats_stream_teardown(a1);

  free(a1);
}

uint64_t _systemstats_save_current_boot_uuid(const char *a1, unsigned __int8 *a2, char *a3)
{
  v6 = geteuid();
  v7 = sub_2999395D4(a1, 1537, v6);
  if (v7 == -1)
  {
    return sub_299939E94();
  }

  v8 = v7;
  sub_299936E14(a2);
  uuid_unparse(a2, a3);
  a3[36] = 10;
  sub_299938B84(v8, a3, 0x25uLL);

  return close(v8);
}

uint64_t sub_2999395D4(const char *a1, int a2, int a3)
{
  v4 = a2;
  memset(&v14, 0, sizeof(v14));
  memset(&v13.st_atimespec, 0, 112);
  if ((a2 & 0x200) != 0)
  {
    v6 = -3585;
  }

  else
  {
    v6 = -1025;
  }

  v7 = v6 & a2;
  memset(&v13, 0, 32);
  if (lstat(a1, &v13) < 0)
  {
    v10 = __error();
    v8 = 0xFFFFFFFFLL;
    if ((v4 & 0x200) != 0 && *v10 == 2)
    {
      v11 = open(a1, v7 | 0xA00, 420);
      if ((v11 & 0x80000000) == 0)
      {
        v8 = v11;
        (nullsub_1)();
        goto LABEL_22;
      }
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    if ((v13.st_mode & 0xF000) == 0x8000 && v13.st_nlink == 1 && (v13.st_mode & 0xFFF) == 0x1A4 && v13.st_uid == a3)
    {
      v9 = open(a1, v7, 0);
      if ((v9 & 0x80000000) == 0)
      {
        v8 = v9;
        if (fstat(v9, &v14) || v14.st_nlink != v13.st_nlink || v14.st_uid != v13.st_uid || v14.st_mode != v13.st_mode || v14.st_ino != v13.st_ino || v14.st_dev != v13.st_dev)
        {
          close(v8);
          return 0xFFFFFFFFLL;
        }

        if ((v4 & 0x400) != 0)
        {
          ftruncate(v8, 0);
LABEL_22:
          nullsub_1(v8);
        }
      }
    }
  }

  return v8;
}

uint64_t _systemstats_boot(const char *a1, int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v26, 0, sizeof(v26));
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = "/private/var/db/systemstats";
  }

  memset(v31, 0, sizeof(v31));
  if (stat(v3, &v26) == -1 && mkpath_np(v3, 0x1EDu) == -1)
  {
    sub_29993B378();
  }

  if (sub_29993727C())
  {
    v4 = _systemstats_copy_cookie_path(v3, "current_boot_uuid");
    v5 = _systemstats_copy_cookie_path(v3, "last_boot_uuid");
    v6 = _systemstats_copy_cookie_path(v3, "current_build");
    v7 = _systemstats_copy_cookie_path(v3, "last_build");
    rename(v4, v5, v8);
    if (v9 == -1 && *__error() != 2)
    {
      sub_299939E94();
    }

    _systemstats_save_current_boot_uuid(v4, &v31[1] + 8, &v31[2] + 8);
    rename(v6, v7, v10);
    v12 = v11;
    if (v11 == -1 && *__error() != 2)
    {
      sub_299939E94();
    }

    if (_systemstats_get_system_version(__s, 0x20uLL))
    {
      v13 = geteuid();
      v14 = sub_2999395D4(v6, 1537, v13);
      if (v14 == -1)
      {
        sub_299939E94();
        if (a2)
        {
LABEL_17:
          v29[0] = 0;
          v29[1] = 0;
          memset(v28, 0, 37);
          if ((_systemstats_read_uuid(v5, v29, v28) & 1) == 0)
          {
            v17 = __error();
            if (v12 == -1 && *v17 != 2)
            {
              sub_299939E94();
            }
          }

          v18 = sub_299936F44(v7, v27, 0x1FuLL);
          v19 = v18;
          if (v18 < 1)
          {
            if (v18 == -1 && *__error() != 2)
            {
              sub_299939E94();
            }
          }

          else
          {
            v27[v18] = 0;
            v20 = strchr(v27, 10);
            if (v20)
            {
              *v20 = 0;
            }
          }

          v21 = _systemstats_stream_init(v31, 5u, v3, 20180126);
          if (v21)
          {
            if (v12)
            {
              v22 = 0;
            }

            else
            {
              v22 = v29;
            }

            if (v19 <= 0)
            {
              v23 = 0;
            }

            else
            {
              v23 = v27;
            }

            sub_299938E04(v31, 1u, v22, v23, 0);
            _systemstats_stream_teardown(v31);
          }

          goto LABEL_38;
        }

LABEL_37:
        v21 = 1;
LABEL_38:
        free(v4);
        free(v5);
        free(v6);
        free(v7);
        goto LABEL_39;
      }

      v15 = v14;
      v16 = strlen(__s);
      sub_299938B84(v15, __s, v16);
      sub_299938B84(v15, "\n", 1uLL);
      close(v15);
    }

    if (a2)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  v21 = 0;
LABEL_39:
  v24 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t sub_299939AB4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = *(a1 + 88);
  if (v5 == -1)
  {
    sub_299939E78();
  }

  if ((*(*(a1 + 8) + 16) & 2) != 0)
  {
    if (!gzclose_w(*(a1 + 184)))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (close(v5) != -1)
    {
      goto LABEL_6;
    }

    v9 = *__error();
  }

  _os_assumes_log();
LABEL_6:
  *(a1 + 88) = -1;
  *(a1 + 184) = 0;
  if ((*(*(a1 + 8) + 16) & 4) != 0)
  {
    return 0;
  }

  v10 = strdup(*(a1 + 96));
  v11 = strlen(*(a1 + 192));
  if (a4)
  {
    v12 = strstr(v10, "XXXXXX");
    v13 = strrchr(v10, 46);
    v23 = 0;
    if (v12 && v12 < v13)
    {
      *v13 = 0;
      asprintf(&v23, "%s.truncated.%s");
    }

    else
    {
      asprintf(&v23, "%s.truncated");
    }

    v14 = v23;
    if (v23)
    {
      free(v10);
      v11 += 10;
      v10 = v14;
    }
  }

  v15 = mkstemps(v10, v11);
  if (v15 < 0)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    free(v10);
    return 0;
  }

  if (close(v15) == -1)
  {
    sub_299939E94();
  }

  rename(*(a1 + 96), v10, v16);
  v18 = v17;
  free(v10);
  if (!v18)
  {
    if ((*a3 - *(a1 + 152)) < 86401 || (a2 - *(a1 + 168)) < 0x36EE81)
    {
      v20 = *(a1 + 8);
      v21 = *(v20 + 32);
      if (*(a1 + 120) < v21)
      {
        return 1;
      }
    }

    else
    {
      v20 = *(a1 + 8);
      v21 = *(v20 + 32);
    }

    if (*(v20 + 42))
    {
      v22 = (a1 + 40);
    }

    else
    {
      v22 = 0;
    }

    systemstats_delete_old_files(*(a1 + 80), v22, *(v20 + 8), v21, a3, (*(v20 + 16) & 8) != 0);
    *(a1 + 152) = *a3;
    *(a1 + 120) = 0;
    *(a1 + 168) = a2;
    return 1;
  }

  result = *__error();
  if (!result)
  {
    return result;
  }

  _os_assumes_log();
  return 0;
}

uint64_t sub_299939CF0(uint64_t a1, int a2)
{
  *(a1 + 112) = 0;
  if ((*(*(a1 + 8) + 16) & 4) != 0)
  {
    v4 = 1537;
  }

  else
  {
    v4 = 521;
  }

  v5 = sub_2999395D4(*(a1 + 96), v4, a2);
  *(a1 + 88) = v5;
  if (v5 != -1)
  {
    memset(&v10, 0, sizeof(v10));
    if (_systemstats_get_file_stats(v5, &v10) || v10.st_size < 0)
    {
      if (close(*(a1 + 88)) != -1)
      {
LABEL_21:
        result = 0;
        *(a1 + 88) = -1;
        return result;
      }
    }

    else
    {
      tv_nsec = v10.st_birthtimespec.tv_nsec;
      *(a1 + 136) = v10.st_birthtimespec.tv_sec;
      *(a1 + 144) = tv_nsec / 1000;
      *(a1 + 176) = 0;
      if (fcntl(*(a1 + 88), 2, 1) == -1)
      {
        sub_299939E94();
      }

      if ((*(*(a1 + 8) + 16) & 2) == 0)
      {
        *(a1 + 112) = v10.st_size;
        return 1;
      }

      v8 = gzdopen(*(a1 + 88), "ab");
      *(a1 + 184) = v8;
      if (v8)
      {
        v9 = MEMORY[0x29C2A4A00]();
        if ((v9 & 0x8000000000000000) == 0)
        {
          *(a1 + 112) = v9;
          return 1;
        }
      }

      if (close(*(a1 + 88)) != -1)
      {
        goto LABEL_21;
      }
    }

    sub_299939E94();
    goto LABEL_21;
  }

  result = *__error();
  if (result)
  {
    _os_assumes_log();
    return 0;
  }

  return result;
}

void sub_299939E78()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_299939EC8(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *__error();
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = a1;
  _os_log_debug_impl(&dword_299933000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "Error reading current build from file with errno %d at path: %s", v4, 0x12u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_299939F68(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_299933000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "Could not find the file for current build at path: %s", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void sub_299939FE8()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993A024(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = *(*a1 + 24);
  v8 = *(*a2 + 24);
  sub_299938B40();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993A0B8()
{
  v5 = *MEMORY[0x29EDCA608];
  sub_299938AE0();
  sub_299938B40();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x20u);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29993A138()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A1B4(os_log_t log, double a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_299933000, log, OS_LOG_TYPE_FAULT, "Bad cpuHotspotReportPercentage setting: %.1f", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29993A230()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A2A8()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A338()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B58();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A3AC()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B58();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A420(os_log_t log, double a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_299933000, log, OS_LOG_TYPE_FAULT, "Bad ioHotspotReportPercentage setting: %.1f", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29993A49C()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A514()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A590()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A604()
{
  sub_299938B28();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993A640()
{
  v5 = *MEMORY[0x29EDCA608];
  sub_299938AE0();
  sub_299938B40();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29993A6C0()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938AFC();
  sub_299938B70();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A734()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938AFC();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A7B0()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A824()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A8AC()
{
  v5 = *MEMORY[0x29EDCA608];
  sub_299938AE0();
  sub_299938B40();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x20u);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29993A92C()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993A968()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B4C();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993A9D8()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993AA5C()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B4C();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993AACC()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993AB50()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993AB8C()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993ABC8()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993AC04()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993AC8C()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993AD14()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B4C();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993AD84()
{
  sub_299938B28();
  sub_299938B10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993ADC0()
{
  sub_299938B28();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993ADFC()
{
  sub_299938B28();
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29993AEA4(unsigned int *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  sub_299938B34();
  sub_299938B40();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993AF28(unsigned int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  sub_299938B34();
  sub_299938B1C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29993AF9C(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 24);
  sub_299938B34();
  sub_299938B40();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993B024()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993B0A8()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  sub_299938B34();
  sub_299938AD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993B12C()
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = *__error();
  sub_299938AD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993B1C4()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299938B1C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29993B238(uint64_t a1, int *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *a2;
  sub_299938B40();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29993B300()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_29993B31C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_29993B35C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_29993B378()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
  CFBooleanGetTypeID();
}