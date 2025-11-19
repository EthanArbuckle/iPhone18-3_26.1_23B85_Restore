void sub_6B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == 2)
  {
    v13 = sub_ACC(a2, 0);
    if (v13)
    {
      v14 = v13;
      v15 = qword_45E8;
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
      {
        v16 = v14[2];
        if (!v16)
        {
          v16 = "NULL";
        }

        *buf = 136446466;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Received request to remove alarm %{public}s with token %llu\n", buf, 0x16u);
      }

      free(v14[2]);
      free(v14);
    }

    else
    {
      sub_27F8(a2);
    }

    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v5 = malloc_type_calloc(1uLL, 0x48uLL, 0x1090040BA257DB1uLL);
    v6 = qword_45B8++;
    *v5 = a2;
    v5[1] = v6;
    value = xpc_dictionary_get_value(a3, "Date");
    if (!value)
    {
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
      {
        sub_299C();
      }

      goto LABEL_43;
    }

    v8 = value;
    string = xpc_dictionary_get_string(a3, "Type");
    if (string)
    {
      v10 = string;
    }

    else
    {
      v10 = "Walltime";
    }

    v11 = xpc_dictionary_get_value(a3, "ShouldWake");
    if (v11)
    {
      v12 = xpc_BOOL_get_value(v11);
    }

    else
    {
      v12 = 1;
    }

    *(v5 + 25) = v12;
    if (!strcasecmp(v10, "Walltime") && xpc_get_type(v8) == &_xpc_type_date)
    {
      *(v5 + 7) = 0;
      v20 = xpc_date_get_value(v8);
    }

    else
    {
      if (!strcasecmp(v10, "Uptime") && xpc_get_type(v8) == &_xpc_type_uint64)
      {
        *(v5 + 7) = 1;
        v5[4] = xpc_uint64_get_value(v8);
        *(v5 + 25) = 0;
LABEL_34:
        *(v5 + 24) = xpc_dictionary_get_BOOL(a3, "UserVisible");
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        memset(buf, 0, sizeof(buf));
        if (!xpc_get_event_name())
        {
          if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
          {
            sub_2928();
          }

          goto LABEL_43;
        }

        v21 = strdup(buf);
        v5[2] = v21;
        v22 = qword_45E8;
        if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_1484(*(v5 + 7));
          v24 = v5[4];
          if (v23 > v24)
          {
            v25 = -((v23 - v24) / 0x3B9ACA00);
          }

          else
          {
            v25 = (v24 - v23) / 0x3B9ACA00;
          }

          v26 = 136446466;
          v27 = v21;
          v28 = 2048;
          v29 = v25;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Registering job %{public}s due in %lld seconds.", &v26, 0x16u);
        }

        sub_1C9C(v5);
        goto LABEL_15;
      }

      if (strcasecmp(v10, "Monotonic") || xpc_get_type(v8) != &_xpc_type_uint64)
      {
        v18 = xpc_copy_description(v8);
        v19 = qword_45E8;
        if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
        {
          sub_28A0(v10, v18, v19);
        }

        free(v18);
LABEL_43:
        free(v5);
        return;
      }

      *(v5 + 7) = 2;
      v20 = xpc_uint64_get_value(v8);
    }

    v5[4] = v20;
    goto LABEL_34;
  }

LABEL_15:
  v17 = 0;
  do
  {
    sub_C04(v17, 0);
    v17 = (v17 + 1);
  }

  while (v17 != 3);
}

void *sub_ACC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = rb_tree_iterate(&unk_45F0 + v4, 0, 1u);
    if (v5)
    {
      break;
    }

LABEL_8:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  v6 = v5;
  while (*v6 != a1 || a2 && v6[1] != a2)
  {
    v6 = rb_tree_iterate(&unk_45F0 + v4, v6, 1u);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v8 = v6[2];
    v10 = 136446210;
    v11 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Removing alarm %{public}s", &v10, 0xCu);
  }

  rb_tree_remove_node(&unk_45F0 + v4, v6);
  return v6;
}

void sub_C04(__uint64_t a1, int a2)
{
  v4 = a1;
  v5 = (&unk_45F0 + 64 * a1);
  if (rb_tree_count(v5))
  {
    v55 = v4;
    v54 = a1;
    v57 = sub_1484(a1);
    node_leq = rb_tree_find_node_leq(v5, &v57);
    v56 = node_leq;
    if (node_leq)
    {
      v7 = 0;
      do
      {
        if ((node_leq[5] & 1) == 0)
        {
          v8 = qword_45E8;
          if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = node_leq[2];
            v10 = node_leq[4];
            v11 = sub_1484(*(node_leq + 7));
            if (v10 <= v11)
            {
              v12 = (v11 - v10) / 0x3B9ACA00;
            }

            else
            {
              v12 = -(&v10[-v11] / 0x3B9ACA00);
            }

            *buf = 136446466;
            *&buf[4] = v9;
            *&buf[12] = 2048;
            *&buf[14] = v12;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Firing event %{public}s which was due %lld sec ago.", buf, 0x16u);
          }

          *(node_leq + 40) = 1;
          v14 = *node_leq;
          v13 = node_leq[1];
          v15 = strdup(node_leq[2]);
          AssertionID[0] = 0;
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v17 = Mutable;
            v18 = CFStringCreateWithCString(0, v15, 0x8000100u);
            if (!v18)
            {
              goto LABEL_16;
            }

            v19 = v18;
            CFDictionarySetValue(v17, @"AssertName", v18);
            CFRelease(v19);
            CFDictionarySetValue(v17, @"PlugInBundleID", @"com.apple.alarm");
            CFDictionarySetValue(v17, @"AssertType", @"PreventUserIdleSystemSleep");
            CFDictionarySetValue(v17, @"TimeoutAction", @"TimeoutActionTurnOff");
            LODWORD(valuePtr[0]) = 30;
            v20 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
            if (!v20)
            {
              goto LABEL_16;
            }

            v21 = v20;
            CFDictionarySetValue(v17, @"TimeoutSeconds", v20);
            CFRelease(v21);
            LODWORD(valuePtr[0]) = 255;
            v22 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
            if (v22)
            {
              v23 = v22;
              CFDictionarySetValue(v17, @"AssertLevel", v22);
              CFRelease(v23);
              v24 = IOPMAssertionCreateWithProperties(v17, AssertionID);
              if (v24)
              {
                AssertionID[0] = 0;
              }
            }

            else
            {
LABEL_16:
              v24 = 0;
            }

            v25 = qword_45E8;
            if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
            {
              v67[0] = 136315650;
              *&v67[1] = v15;
              v68 = 1024;
              v69 = v24;
              v70 = 1024;
              v71 = AssertionID[0];
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "power_create_temporary_fire_assertion: name %s, ret: %x, id: %d", v67, 0x18u);
            }

            CFRelease(v17);
            v26 = AssertionID[0];
          }

          else
          {
            v26 = 0;
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 0x40000000;
          *&buf[16] = sub_1D74;
          v62 = &unk_42C8;
          v66 = v26;
          v63 = v14;
          v64 = v13;
          v65 = v15;
          valuePtr[0] = 0;
          valuePtr[1] = valuePtr;
          valuePtr[2] = 0x2000000000;
          v60 = 0;
          xpc_event_provider_get_queue();
        }

        if (a2 && *(node_leq + 25))
        {
          v7 = node_leq;
        }

        node_leq = rb_tree_iterate(v5, node_leq, 0);
      }

      while (node_leq);
      node_leq = v56;
      if (v7)
      {
        v27 = qword_45E8;
        if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v7[2];
          v29 = v7[4];
          *buf = 136446466;
          *&buf[4] = v28;
          *&buf[12] = 2048;
          *&buf[14] = v29;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "System woke up due to %{public}s which was due at: %lld", buf, 0x16u);
        }
      }
    }

    v30 = rb_tree_iterate(v5, node_leq, 1u);
    if (v30)
    {
      v31 = v30;
      do
      {
        if (*(v31 + 40) == 1)
        {
          v32 = qword_45E8;
          if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v31[2];
            v34 = v31[4];
            v35 = sub_1484(*(v31 + 7));
            v36 = (v35 - v34) / 0x3B9ACA00;
            *buf = 136446466;
            *&buf[4] = v33;
            if (v34 > v35)
            {
              v36 = -((v34 - v35) / 0x3B9ACA00);
            }

            *&buf[12] = 2048;
            *&buf[14] = v36;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Un-firing event %{public}s which is due in %lld sec.", buf, 0x16u);
          }

          *(v31 + 40) = 0;
        }

        v31 = rb_tree_iterate(v5, v31, 1u);
      }

      while (v31);
    }

    v37 = rb_tree_iterate(v5, v56, 1u);
    if (!v37)
    {
      dispatch_source_set_timer(qword_46B0[v55], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      v53 = qword_45E8;
      if (!os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = v54;
      v49 = "Clearing dispatch timer of type %d";
      v50 = v53;
      v51 = 8;
      goto LABEL_55;
    }

    v39 = v37;
    v40 = v37[4];
    v41 = v57;
    v42 = v40 - v57;
    if ((((v40 - __PAIR128__(v38, v57)) >> 64) & 1) != (v40 - v57) >> 63)
    {
      v43 = qword_45E8;
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "Detected subtraction overflow while setting dispatch timer.", buf, 2u);
        v40 = v39[4];
        v41 = v57;
      }

      if (v40 > v41)
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = 0x8000000000000000;
      }
    }

    v44 = dispatch_time(qword_30B8[v55], v42);
    dispatch_source_set_timer(qword_46B0[v55], v44, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
    v45 = qword_45E8;
    if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
    {
      v46 = v39[2];
      v47 = v39[4];
      if (v57 > v47)
      {
        v48 = -((v57 - v47) / 0x3B9ACA00);
      }

      else
      {
        v48 = (v47 - v57) / 0x3B9ACA00;
      }

      *buf = 136446466;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      v49 = "Setting timer for %{public}s in %lld seconds.";
      v50 = v45;
      v51 = 22;
LABEL_55:
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, v49, buf, v51);
    }
  }

  else
  {
    v52 = qword_46B0[v4];

    dispatch_source_set_timer(v52, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

__uint64_t sub_1484(__uint64_t result)
{
  switch(result)
  {
    case 2:
      v4 = _CLOCK_MONOTONIC_RAW;

      return clock_gettime_nsec_np(v4);
    case 1:
      v4 = _CLOCK_UPTIME_RAW;

      return clock_gettime_nsec_np(v4);
    case 0:
      v2 = xpc_date_create_from_current();
      value = xpc_date_get_value(v2);
      xpc_release(v2);
      return value;
  }

  return result;
}

uint64_t sub_14FC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 32);
  v4 = v3 > *a3;
  if (v3 >= *a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_1514(uint64_t (*a1)(uint64_t, uint64_t, int *, uint64_t *, void **), uint64_t a2, int a3, intptr_t a4)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  if (a3 != -536870288)
  {
    if (a3 == -536870144)
    {
      v5 = a1(3758097152, 31, &v10, &v9, &v8);
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (a3 != -536870272)
    {
      goto LABEL_13;
    }

    v5 = a1(3758097024, 0, &v10, &v9, &v8);
LABEL_10:
    if (!IOAllowPowerChange(dword_45C8, a4))
    {
      goto LABEL_11;
    }

LABEL_15:
    _os_assumes_log();
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = a1(3758097008, 0, &v10, &v9, &v8);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  string_ptr = xpc_string_get_string_ptr(v6);
  if (!string_ptr || strcmp(string_ptr, "CancelSleep"))
  {
    goto LABEL_10;
  }

  if (IOCancelPowerChange(dword_45C8, a4))
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v5)
  {
LABEL_12:
    xpc_release(v5);
  }

LABEL_13:
  free(v8);
}

unint64_t *sub_1658(int a1, int a2)
{
  v4 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    LODWORD(v21[0]) = a1;
    WORD2(v21[0]) = 1024;
    *(v21 + 6) = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "power_event, msg: %u caps: %u", buf, 0xEu);
  }

  v5 = 0;
  do
  {
    sub_C04(v5, a1 == -536870144);
    v5 = (v5 + 1);
  }

  while (v5 != 3);
  if (a1 == -536870288)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = rb_tree_iterate(&unk_45F0 + v6, 0, 0);
      if (v8)
      {
        v9 = v8;
        while (*(v9 + 40) != 1)
        {
          v9 = rb_tree_iterate(&unk_45F0 + v6, v9, 0);
          if (!v9)
          {
            goto LABEL_18;
          }
        }

        v10 = qword_45E8;
        if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v9 + 2);
          *buf = 136446210;
          v21[0] = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Alarm event %{public}s is fired and active.", buf, 0xCu);
        }

        v7 = 1;
      }

LABEL_18:
      ++v6;
    }

    while (v6 != 3);
    if (v7)
    {
      return xpc_string_create("CancelSleep");
    }
  }

  else if (a1 != -536870080 || (IOPMIsASleep() & 1) == 0)
  {
    return 0;
  }

  v13 = CFAbsoluteTimeGetCurrent() + 30.0;
  if (*&qword_46C8 >= v13)
  {
    v14 = CFDateCreate(0, *&qword_46C8);
    if (IOPMCancelScheduledPowerEvent(v14, qword_46D0, @"wake") && os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
    {
      sub_29D8();
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    else if (!v14)
    {
LABEL_26:
      qword_46C8 = 0;
      if (qword_46D0)
      {
        CFRelease(qword_46D0);
      }

      qword_46D0 = 0;
      goto LABEL_29;
    }

    CFRelease(v14);
    goto LABEL_26;
  }

LABEL_29:
  if (*&qword_46D8 < v13)
  {
    goto LABEL_38;
  }

  v15 = CFDateCreate(0, *&qword_46D8);
  v16 = IOPMCancelScheduledPowerEvent(v15, qword_46E0, @"wake");
  if (v16 && (v16 & 0xE00002F0) == 0 && os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
  {
    sub_2A50();
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v15)
  {
LABEL_34:
    CFRelease(v15);
  }

LABEL_35:
  qword_46D8 = 0;
  if (qword_46E0)
  {
    CFRelease(qword_46E0);
  }

  qword_46E0 = 0;
LABEL_38:
  v17 = sub_214C(0);
  if (v17)
  {
    v18 = v17;
    sub_2228(v17);
    if ((v18[3] & 1) == 0)
    {
      result = sub_214C(1);
      if (!result)
      {
        return result;
      }

      sub_2228(result);
    }
  }

  else
  {
    v19 = qword_45E8;
    if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "No upcoming events, not scheduling wake.", buf, 2u);
    }
  }

  return 0;
}

void power_set_handler(NSObject *a1, void *refcon)
{
  if (qword_45C0)
  {
    sub_27DC();
  }

  notifier = 0;
  dword_45C8 = IORegisterForSystemPower(refcon, &qword_45C0, sub_1514, &notifier);
  if (!dword_45C8)
  {
    sub_27DC();
  }

  IONotificationPortSetDispatchQueue(qword_45C0, a1);
}

uint64_t sub_1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = *(a3 + 32);
  v5 = v3 > v4;
  if (v3 >= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void sub_1C64()
{
  v0 = 0;
  do
  {
    sub_C04(v0, 0);
    v0 = (v0 + 1);
  }

  while (v0 != 3);
}

void *sub_1C9C(uint64_t a1)
{
  v2 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 16);
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Adding alarm %{public}s", &v6, 0xCu);
  }

  for (i = *(a1 + 28); ; i = *(a1 + 28))
  {
    result = rb_tree_insert_node(&unk_45F0 + i, a1);
    if (result == a1)
    {
      break;
    }

    --*(a1 + 32);
  }

  return result;
}

void sub_1D74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v28 = 67109120;
    LODWORD(v29) = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "release power assertion %d", &v28, 8u);
  }

  IOPMAssertionRelease(v5);
  v7 = sub_ACC(*(a1 + 32), *(a1 + 40));
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 40);
    *(v7 + 40) = 0;
    v10 = sub_1484(*(v7 + 7));
    v11 = v10;
    if (*(v8 + 32) <= v10)
    {
      *(v8 + 32) = v10 + 60000000000;
      if (v10 >= 0xFFFFFFF207B8A800)
      {
        if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
        {
          sub_2AC8();
        }

        *(v8 + 32) = -1;
      }
    }

    sub_1C9C(v8);
    v12 = qword_45E8;
    if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
    {
      v13 = "unfired";
      if (v9)
      {
        v13 = "fired";
      }

      v14 = *(v8 + 16);
      v15 = *(v8 + 32);
      v28 = 136315650;
      v29 = v13;
      if (v11 > v15)
      {
        v16 = -((v11 - v15) / 0x3B9ACA00);
      }

      else
      {
        v16 = (v15 - v11) / 0x3B9ACA00;
      }

      v30 = 2082;
      v31 = v14;
      v32 = 2048;
      v33 = v16;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Resetting %s job %{public}s, now due in %lld seconds.", &v28, 0x20u);
    }

    v17 = 0;
    do
    {
      sub_C04(v17, 0);
      v17 = (v17 + 1);
    }

    while (v17 != 3);
    if (a3)
    {
      v18 = qword_45E8;
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_FAULT))
      {
        v20 = *(a1 + 40);
        v19 = *(a1 + 48);
        v21 = *(a1 + 32);
        v22 = *(a1 + 56);
        v28 = 136315906;
        v29 = v19;
        v30 = 2048;
        v31 = v21;
        v32 = 2048;
        v33 = v20;
        v34 = 1024;
        v35 = v22;
        _os_log_fault_impl(&dword_0, v18, OS_LOG_TYPE_FAULT, "No reply received for alarm '%s' %lld/%lld with power assertion %d. Client may not have an event stream handler set up, or their event handler's queue may be blocked.", &v28, 0x26u);
      }

      goto LABEL_24;
    }
  }

  else if (a3)
  {
    goto LABEL_24;
  }

  v23 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = *(a1 + 56);
    v28 = 136315906;
    v29 = v24;
    v30 = 2048;
    v31 = v26;
    v32 = 2048;
    v33 = v25;
    v34 = 1024;
    v35 = v27;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Reply received for alarm '%s' %lld/%lld with power assertion %d.", &v28, 0x26u);
  }

LABEL_24:
  free(*(a1 + 48));
}

uint64_t sub_2084(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_20E0(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[4] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[5];

    dispatch_block_cancel(v3);
  }
}

unint64_t *sub_214C(int a1)
{
  v2 = 0;
  v3 = 0;
  v4 = -1;
  do
  {
    if (v2 != 1)
    {
      v9 = sub_1484(v2);
      node_geq = rb_tree_find_node_geq(&unk_45F0 + v2, &v9);
      if (node_geq)
      {
        v6 = node_geq;
        while (*(v6 + 25) != 1 || a1 && (v6[3] & 1) == 0)
        {
          v6 = rb_tree_iterate(&unk_45F0 + v2, v6, 1u);
          if (!v6)
          {
            goto LABEL_12;
          }
        }

        v7 = sub_250C(v2, v6[4]);
        if (v7 < v4)
        {
          v3 = v6;
          v4 = v7;
        }
      }
    }

LABEL_12:
    ++v2;
  }

  while (v2 != 3);
  return v3;
}

void sub_2228(uint64_t a1)
{
  v2 = (sub_250C(*(a1 + 28), *(a1 + 32)) / 0x3B9ACA00uLL - 978307200);
  v3 = CFDateCreate(0, v2);
  if (*(a1 + 24))
  {
    v4 = kCFBooleanTrue;
  }

  else
  {
    v4 = kCFBooleanFalse;
  }

  if (v4 == kCFBooleanTrue)
  {
    v5 = @"com.apple.alarm.user-visible";
  }

  else
  {
    v5 = @"com.apple.alarm.user-invisible";
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    if (v8)
    {
      v9 = v8;
      CFStringAppend(MutableCopy, @"-");
      CFStringAppend(MutableCopy, v9);
      CFRelease(v9);
    }
  }

  if (v4 == kCFBooleanTrue)
  {
    qword_46D8 = *&v2;
    v10 = &qword_46E0;
  }

  else
  {
    qword_46C8 = *&v2;
    v10 = &qword_46D0;
  }

  if (*v10)
  {
    CFRelease(*v10);
    *v10 = 0;
  }

  *v10 = CFRetain(MutableCopy);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"time", v3);
  CFDictionaryAddValue(Mutable, @"scheduledby", MutableCopy);
  CFDictionaryAddValue(Mutable, @"UserVisible", v4);
  v12 = IOPMRequestSysWake();
  v13 = qword_45E8;
  if (v12)
  {
    v14 = v12;
    if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v16 = *(a1 + 16);
      v19 = 134218498;
      v20 = v2 - Current;
      v21 = 2082;
      v22 = v16;
      v23 = 1024;
      v24 = v14;
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Unable to schedule wake for %.1fs on behalf of %{public}s, IOPMRequestSysWake() returned %d.", &v19, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v17 = CFAbsoluteTimeGetCurrent();
    v18 = *(a1 + 16);
    v19 = 134218242;
    v20 = v2 - v17;
    v21 = 2082;
    v22 = v18;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Scheduled wake for %.1fs on behalf of %{public}s.", &v19, 0x16u);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t sub_250C(__uint64_t a1, unint64_t a2)
{
  if ((a1 - 1) <= 1)
  {
    v4 = xpc_date_create_from_current();
    value = xpc_date_get_value(v4);
    xpc_release(v4);
    v6 = sub_1484(a1);
    v8 = a2 - v6;
    v9 = (a2 - v6) >> 63;
    if ((((a2 - __PAIR128__(v7, v6)) >> 64) ^ v9))
    {
      v10 = v6;
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
      {
        sub_2B04();
      }

      if (v10 < a2)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = 0x8000000000000000;
      }

      if (v10 < a2)
      {
        v9 = 0;
      }

      else
      {
        v9 = -1;
      }
    }

    v11 = v9 << 63 >> 63;
    a2 = value + v8;
    if (__CFADD__(value, v8))
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 << 63 >> 63;
    if (v13 != v12 || v13 < 0)
    {
      if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_ERROR))
      {
        sub_2B40();
      }

      return ~v8 >> 63;
    }
  }

  return a2;
}

uint64_t clock_set_handler(dispatch_queue_t queue, uint64_t a2)
{
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_2740;
  handler[3] = &unk_4338;
  handler[4] = a2;
  if (notify_register_dispatch("com.apple.system.timezone", &out_token, queue, handler))
  {
    _os_assumes_log();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_2748;
  v5[3] = &unk_4358;
  v5[4] = a2;
  result = notify_register_dispatch("com.apple.system.clock_set", &out_token, queue, v5);
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

double clock_mach_time_dilation()
{
  if (qword_46E8 != -1)
  {
    sub_2B7C();
  }

  return *&qword_46F0;
}

void sub_2788(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v3 = 1.0;
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    v3 = v1 / v2;
  }

  qword_46F0 = *&v3;
}

void sub_27DC()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_27F8(uint64_t a1)
{
  _os_assumes_log();
  v2 = qword_45E8;
  if (os_log_type_enabled(qword_45E8, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Received request to remove alarm with token %llu\n", &v3, 0xCu);
  }
}

void sub_28A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2082;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unsupported alarm (Type: %{public}s, Date: %{public}s)", &v3, 0x16u);
}

void sub_299C()
{
  sub_2624();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29D8()
{
  sub_260C();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2A50()
{
  sub_260C();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2AC8()
{
  sub_2624();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2B04()
{
  sub_2624();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2B40()
{
  sub_2624();
  sub_2600();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire_with_reply()
{
    ;
  }
}