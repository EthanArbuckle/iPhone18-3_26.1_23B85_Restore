id libspindump_log()
{
  if (libspindump_log_onceToken != -1)
  {
    libspindump_log_cold_1();
  }

  v1 = libspindump_log_logt;

  return v1;
}

void SPReportDiskWritesResource(int a1, const char *a2, uint64_t a3, const char *a4, int64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, int64_t a9, unint64_t a10)
{
  v35 = *MEMORY[0x29EDCA608];
  v18 = libspindump_log();
  v19 = v18;
  if (a1 <= 0)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      SPReportDiskWritesResource_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v20 = "fatal ";
      }

      else
      {
        v20 = &unk_2998F9A39;
      }

      v25 = 136447234;
      v26 = v20;
      v27 = 2082;
      v28 = procname_btd(a1);
      v29 = 1024;
      v30 = a1;
      v31 = 2048;
      v32 = a5;
      v33 = 2048;
      v34 = a6 / 1000000000.0;
      _os_log_impl(&dword_2998F4000, v19, OS_LOG_TYPE_DEFAULT, "Reporting %{public}sdisk writes for %{public}s [%d] causing %{bytes}lld writes over the last %.0f seconds", &v25, 0x30u);
    }

    v19 = spindump_connection();
    if (v19)
    {
      empty = xpc_dictionary_create_empty();
      v22 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 5);
        xpc_dictionary_set_int64(v22, "pid", a1);
        if (a2)
        {
          xpc_dictionary_set_string(v22, "pname", a2);
        }

        if (a3)
        {
          xpc_dictionary_set_uint64(v22, "flags", a3);
        }

        if (a4)
        {
          xpc_dictionary_set_string(v22, "action", a4);
        }

        xpc_dictionary_set_int64(v22, "io", a5);
        xpc_dictionary_set_double(v22, "duration", a6 / 1000000000.0);
        xpc_dictionary_set_double(v22, "endtime", a8 / 1000000000.0 + a7 - *MEMORY[0x29EDB8ED0]);
        if (a9 && a10)
        {
          xpc_dictionary_set_int64(v22, "io_limit", a9);
          xpc_dictionary_set_double(v22, "duration_limit", a10 / 1000000000.0);
        }

        xpc_connection_send_message(v19, v22);
      }

      else
      {
        v23 = libspindump_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

void __libspindump_log_block_invoke()
{
  v0 = os_log_create("com.apple.libspindump", "logging");
  v1 = libspindump_log_logt;
  libspindump_log_logt = v0;

  v2 = libspindump_log_logt;
  if (!v2)
  {
    __libspindump_log_block_invoke_cold_1();
  }
}

_DWORD *procname_btd(int pid)
{
  if (procname_btd_onceToken != -1)
  {
    procname_btd_cold_1();
  }

  if (procname_btd_avoid_proc_name)
  {
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(procname_btd_index, 1u, memory_order_relaxed);
  v4 = add_explicit & 3;
  v6 = -add_explicit;
  v5 = v6 < 0;
  v7 = v6 & 3;
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = -v7;
  }

  v2 = (&procname_btd_names + 128 * v8);
  *v2 = 0;
  proc_name(pid, v2, 0x80u);
  return v2;
}

void __procname_btd_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x29EDCA968];
  v1 = sandbox_check();
  if (v1 == -1)
  {
    v3 = libspindump_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __procname_btd_block_invoke_cold_1(v3);
    }

    goto LABEL_8;
  }

  if (!v1)
  {
LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  if (v1 != 1)
  {
    return;
  }

  v2 = 1;
LABEL_9:
  procname_btd_avoid_proc_name = v2;
}

id spindump_connection()
{
  if (spindump_connection_once != -1)
  {
    spindump_connection_cold_1();
  }

  v0 = spindump_connection_connection;
  if (!spindump_connection_connection)
  {
    v1 = libspindump_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      spindump_connection_cold_2();
    }

    v0 = spindump_connection_connection;
  }

  return v0;
}

void __spindump_connection_block_invoke()
{
  mach_service = xpc_connection_create_mach_service("com.apple.spindump", 0, 2uLL);
  v1 = spindump_connection_connection;
  spindump_connection_connection = mach_service;

  if (spindump_connection_connection)
  {
    xpc_connection_set_event_handler(spindump_connection_connection, &__block_literal_global_78);
    v2 = spindump_connection_connection;

    xpc_connection_resume(v2);
  }
}

uint64_t SPHIDResponseDelayThreshold()
{
  if (SPHIDResponseDelayThresholdMachAbs_onceToken != -1)
  {
    SPHIDResponseDelayThreshold_cold_1();
  }

  return SPHIDResponseDelayThresholdMachAbs_thresholdMachAbs;
}

void SPExpectedHIDResponseDelayUntil(unint64_t a1)
{
  v2 = mach_absolute_time();
  if (v2 >= a1)
  {
    MachToNano(v2 - a1);
    v5 = libspindump_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      SPExpectedHIDResponseDelayUntil_cold_1();
    }
  }

  else
  {
    v3 = MachToNano(a1 - v2) / 1000000000.0;
    v4 = libspindump_log();
    v5 = v4;
    if (v3 > 2.0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        SPExpectedHIDResponseDelayUntil_cold_2();
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      SPExpectedHIDResponseDelayUntil_cold_3();
    }
  }

  if (gExpectedHIDResponseDelayEndMachAbs < a1)
  {
    gExpectedHIDResponseDelayEndMachAbs = a1;
    return;
  }

  v5 = libspindump_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    SPExpectedHIDResponseDelayUntil_cold_4(a1);
  }

LABEL_13:
}

char *SPPauseMonitoringHIDResponsiveness(const char *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    SPPauseMonitoringHIDResponsiveness_cold_1(&v9);
  }

  v2 = mach_absolute_time();
  v3 = strlen(a1);
  v4 = malloc_type_malloc(v3 + 9, 0x100004000313F17uLL);
  *v4 = v2;
  strlcpy(v4 + 8, a1, v3 + 1);
  os_unfair_lock_lock(&gPauseReceiptLock);
  v5 = gNumPauseReceipts;
  if (!gNumPauseReceipts)
  {
    gEarliestPauseMachAbs = v2;
  }

  ++gNumPauseReceipts;
  gPauseReceipts = malloc_type_realloc(gPauseReceipts, 8 * (v5 + 1), 0x2004093837F09uLL);
  *(gPauseReceipts + 8 * gNumPauseReceipts - 8) = v4;
  os_unfair_lock_unlock(&gPauseReceiptLock);
  v6 = libspindump_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = a1;
    _os_log_impl(&dword_2998F4000, v6, OS_LOG_TYPE_DEFAULT, "Pausing HID responsiveness monitoring for %{public}s", &v9, 0xCu);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void SPResumeMonitoringHIDResponsiveness(uint64_t *a1)
{
  if (!a1)
  {
    SPResumeMonitoringHIDResponsiveness_cold_5(&v12);
  }

  v2 = mach_absolute_time();
  os_unfair_lock_lock(&gPauseReceiptLock);
  v3 = gNumPauseReceipts;
  if (gNumPauseReceipts < 1)
  {
LABEL_6:
    SPResumeMonitoringHIDResponsiveness_cold_1(&v12);
  }

  v4 = 0;
  v5 = gPauseReceipts;
  v6 = 8 * (gNumPauseReceipts - 1);
  while (*v5 != a1)
  {
    ++v4;
    ++v5;
    v6 -= 8;
    if (gNumPauseReceipts == v4)
    {
      goto LABEL_6;
    }
  }

  if (gNumPauseReceipts - 1 > v4)
  {
    memmove(v5, v5 + 1, v6);
    v3 = gNumPauseReceipts;
  }

  gNumPauseReceipts = v3 - 1;
  if (v3 == 1)
  {
    free(gPauseReceipts);
    gPauseReceipts = 0;
    v8 = gEarliestPauseMachAbs;
    v9 = *a1;
    v10 = libspindump_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v8 == v9)
    {
      if (v11)
      {
        SPResumeMonitoringHIDResponsiveness_cold_4(a1, v2);
      }
    }

    else if (v11)
    {
      SPResumeMonitoringHIDResponsiveness_cold_3(a1, v2);
    }

    gTimeMonitoringLastResumed = v2;
  }

  else
  {
    v7 = libspindump_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      SPResumeMonitoringHIDResponsiveness_cold_2(a1, v2);
    }
  }

  os_unfair_lock_unlock(&gPauseReceiptLock);
  free(a1);
}

void SPCheckHIDResponseTime2(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v62 = *MEMORY[0x29EDCA608];
  if (SPHIDResponseDelayThresholdMachAbs_onceToken != -1)
  {
    SPHIDResponseDelayThreshold_cold_1();
  }

  if (a1 - 1 >= a2)
  {
    v12 = libspindump_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      SPCheckHIDResponseTime2_cold_2(a1, a2, v12);
    }

    goto LABEL_17;
  }

  v6 = SPHIDResponseDelayThresholdMachAbs_thresholdMachAbs;
  if (gNumPauseReceipts >= 1)
  {
    os_unfair_lock_lock(&gPauseReceiptLock);
    if (gNumPauseReceipts)
    {
      SPCheckHIDResponseTime2_cold_3(buf, gNumPauseReceipts);
    }

    os_unfair_lock_unlock(&gPauseReceiptLock);
  }

  v7 = a2 - a1;
  v8 = a2 - a1 >= v6;
  if (gExpectedHIDResponseDelayEndMachAbs <= gTimeMonitoringLastResumed)
  {
    v9 = gTimeMonitoringLastResumed;
  }

  else
  {
    v9 = gExpectedHIDResponseDelayEndMachAbs;
  }

  if (v9 <= a1)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v8 = v9 + v6 <= a2;
  if (v9 + v6 > a2)
  {
    if (v7 >= v6)
    {
      v10 = libspindump_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        v53 = MachToNano(a2 - a1) / 1000000000.0;
        v54 = 2048;
        v55 = a1;
        v56 = 2048;
        v57 = a2;
        v58 = 2048;
        v59 = v9;
        v60 = 2048;
        v61 = MachToNano(a2 - v9) / 1000000000.0;
        v11 = "Not reporting %.2fs HID response delay %llu-%llu due to expected unresponsiveness until %llu (%.2fs reportable)";
        goto LABEL_57;
      }

LABEL_21:

      goto LABEL_23;
    }
  }

  else if (v7 >= v6)
  {
    v10 = libspindump_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      v53 = MachToNano(a2 - a1) / 1000000000.0;
      v54 = 2048;
      v55 = a1;
      v56 = 2048;
      v57 = a2;
      v58 = 2048;
      v59 = v9;
      v60 = 2048;
      v61 = MachToNano(a2 - v9) / 1000000000.0;
      v11 = "%.2fs HID response delay %llu-%llu with expected unresponsiveness until %llu still worth reporting (%.2fs reportable)";
LABEL_57:
      _os_log_debug_impl(&dword_2998F4000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x34u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v8 = 0;
LABEL_23:
  if (a1 >= a3)
  {
    goto LABEL_35;
  }

  v13 = v6 + a3 <= a2;
  if (v6 + a3 <= a2)
  {
    if (v8)
    {
      v14 = libspindump_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = MachToNano(a2 - a1) / 1000000000.0;
        v16 = MachToNano(a2 - a3);
        *buf = 134219008;
        v53 = v15;
        v54 = 2048;
        v55 = a1;
        v56 = 2048;
        v57 = a2;
        v58 = 2048;
        v59 = a3;
        v60 = 2048;
        v61 = v16 / 1000000000.0;
        v17 = "%.2fs HID response delay %llu-%llu out-of-order (latest event %llu) still worth reporting (%.2fs reportable)";
LABEL_59:
        _os_log_debug_impl(&dword_2998F4000, v14, OS_LOG_TYPE_DEBUG, v17, buf, 0x34u);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

  v14 = libspindump_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v22 = MachToNano(a2 - a1) / 1000000000.0;
    v23 = MachToNano(a2 - a3);
    *buf = 134219008;
    v53 = v22;
    v54 = 2048;
    v55 = a1;
    v56 = 2048;
    v57 = a2;
    v58 = 2048;
    v59 = a3;
    v60 = 2048;
    v61 = v23 / 1000000000.0;
    v17 = "Not reporting %.2fs HID response delay %llu-%llu due to out-of-order HID processing (latest event %llu, %.2fs reportable)";
    goto LABEL_59;
  }

LABEL_30:

LABEL_32:
  if (v9 <= a3)
  {
    v9 = a3;
  }

  v8 = v13;
LABEL_35:
  if (MEMORY[0x2A1C78548])
  {
    if (v9 <= a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = v9;
    }

    if (v18 <= SPCheckHIDResponseTime2_lastTelemetryHIDEventEndTimestamp_MachAbs)
    {
      v18 = SPCheckHIDResponseTime2_lastTelemetryHIDEventEndTimestamp_MachAbs;
    }

    if (SPCheckHIDResponseTime2_lastTelemetryHIDEventEndTimestamp_MachAbs < a2)
    {
      SPCheckHIDResponseTime2_lastTelemetryHIDEventEndTimestamp_MachAbs = a2;
    }

    v19 = a2 - v18;
    if (a2 > v18)
    {
      v20 = MachToNano(a2 - v18);
      if (v20 >= 0x2FAF080)
      {
        if (v20 >= 0x5F5E100)
        {
          if (v20 >= 0xEE6B280)
          {
            if (v20 >= 0x1DCD6500)
            {
              if (v20 >= 0x3B9ACA00)
              {
                if (v20 >= 0x77359400)
                {
                  if (v20 >= 0x12A05F200)
                  {
                    v21 = 7;
                    if (v20 >= 0x2540BE400)
                    {
                      v21 = 8;
                    }
                  }

                  else
                  {
                    v21 = 6;
                  }
                }

                else
                {
                  v21 = 5;
                }
              }

              else
              {
                v21 = 4;
              }
            }

            else
            {
              v21 = 3;
            }
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      atomic_fetch_add_explicit(&gHIDEventCountBuckets[v21], 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&gHIDEventDurationMachAbsBuckets[v21], v19, memory_order_relaxed);
      atomic_fetch_add_explicit(&gActionCount, 1uLL, memory_order_relaxed);
      if ((SPAddToHIDTelemetry_telemetryPending & 1) == 0)
      {
        SPAddToHIDTelemetry_telemetryPending = 1;
        v24 = dispatch_time(0, 10000000000);
        v25 = dispatch_get_global_queue(9, 0);
        dispatch_after(v24, v25, &__block_literal_global_46);
      }
    }
  }

  if (v8)
  {
    if (SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs > a1)
    {
      v26 = SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs + v6;
      v12 = libspindump_log();
      v27 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v26 > a2)
      {
        if (v27)
        {
          v28 = MachToNano(a2 - a1) / 1000000000.0;
          v29 = SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs;
          v30 = MachToNano(a2 - SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs);
          *buf = 134219008;
          v53 = v28;
          v54 = 2048;
          v55 = a1;
          v56 = 2048;
          v57 = a2;
          v58 = 2048;
          v59 = v29;
          v60 = 2048;
          v61 = v30 / 1000000000.0;
          _os_log_debug_impl(&dword_2998F4000, v12, OS_LOG_TYPE_DEBUG, "Not reporting %.2fs HID response delay %llu-%llu due to previously reported HID response delay at %llu (%.2fs reportable)", buf, 0x34u);
        }

        goto LABEL_17;
      }

      if (v27)
      {
        v49 = MachToNano(a2 - a1) / 1000000000.0;
        v50 = SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs;
        v51 = MachToNano(a2 - SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs);
        *buf = 134219008;
        v53 = v49;
        v54 = 2048;
        v55 = a1;
        v56 = 2048;
        v57 = a2;
        v58 = 2048;
        v59 = v50;
        v60 = 2048;
        v61 = v51 / 1000000000.0;
        _os_log_debug_impl(&dword_2998F4000, v12, OS_LOG_TYPE_DEBUG, "%.2fs HID response delay %llu-%llu overlapping previously reported HID response delay at %llu still worth reporting (%.2fs reportable)", buf, 0x34u);
      }

      if (v9 <= SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs)
      {
        v9 = SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs;
      }
    }

    SPCheckHIDResponseTime2_lastReportedHIDEventEndTimestamp_MachAbs = a2;
    v32 = libspindump_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
    if (v9 <= a1)
    {
      if (!v33)
      {
        goto LABEL_82;
      }

      v39 = MachToNano(a2 - a1);
      *buf = 134218496;
      v53 = v39 / 1000000000.0;
      v54 = 2048;
      v55 = a1;
      v56 = 2048;
      v57 = a2;
      v36 = "Reporting %.2fs HID response delay %llu-%llu";
      v37 = v32;
      v38 = 32;
    }

    else
    {
      if (!v33)
      {
        goto LABEL_82;
      }

      v34 = MachToNano(v9 - a1) / 1000000000.0;
      v35 = MachToNano(a2 - a1);
      *buf = 134219008;
      v53 = v34;
      v54 = 2048;
      v55 = a1;
      v56 = 2048;
      v57 = a2;
      v58 = 2048;
      v59 = v9;
      v60 = 2048;
      v61 = v35 / 1000000000.0;
      v36 = "Reporting %.2fs HID response delay %llu-%llu with start time capped to %llu (%.2fs original)";
      v37 = v32;
      v38 = 52;
    }

    _os_log_impl(&dword_2998F4000, v37, OS_LOG_TYPE_INFO, v36, buf, v38);
LABEL_82:

    mach_get_times();
    if (v9 <= a1)
    {
      v40 = a1;
    }

    else
    {
      v40 = v9;
    }

    v41 = *&v40;
    v42 = libspindump_log();
    if (os_signpost_enabled(v42))
    {
      *buf = 134349312;
      v53 = v41;
      v54 = 2050;
      v55 = a2;
      _os_signpost_emit_with_name_impl(&dword_2998F4000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SlowHIDResponse", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu", buf, 0x16u);
    }

    kdebug_trace();
    v12 = spindump_connection();
    if (!v12)
    {
      goto LABEL_17;
    }

    empty = xpc_dictionary_create_empty();
    v44 = empty;
    if (!empty)
    {
      v47 = libspindump_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        SPCheckHIDResponseTime2_cold_7();
      }

      goto LABEL_108;
    }

    xpc_dictionary_set_int64(empty, "message", 8);
    xpc_dictionary_set_uint64(v44, "eventtime_machabs", a1);
    if (v9 > a1)
    {
      xpc_dictionary_set_uint64(v44, "starttime_machabs", v9);
    }

    xpc_dictionary_set_uint64(v44, "endtime_machabs", a2);
    xpc_dictionary_set_uint64(v44, "threshold_machabs", v6);
    *buf = 0;
    if (_NSGetExecutablePath(0, buf))
    {
      if (!((*buf - 1) >> 30))
      {
        v45 = malloc_type_malloc(*buf, 0x232C669DuLL);
        if (_NSGetExecutablePath(v45, buf))
        {
          v46 = libspindump_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            SPCheckHIDResponseTime2_cold_5(buf, v46);
          }
        }

        else
        {
          xpc_dictionary_set_string(v44, "pname", v45);
        }

        free(v45);
        goto LABEL_107;
      }

      v48 = libspindump_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        SPCheckHIDResponseTime2_cold_4(buf, v48);
      }
    }

    else
    {
      v48 = libspindump_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        SPCheckHIDResponseTime2_cold_6();
      }
    }

LABEL_107:
    xpc_connection_send_message(v12, v44);
LABEL_108:

LABEL_17:
  }

  v31 = *MEMORY[0x29EDCA608];
}

void SPGenerateSpindump(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, const char *a6, const char *a7, const char *a8, void *a9)
{
  v39 = *MEMORY[0x29EDCA608];
  v16 = a9;
  v17 = libspindump_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v34 = procname_btd(a1);
    v35 = 1024;
    v36 = a1;
    v37 = 2080;
    v38 = a6;
    _os_log_impl(&dword_2998F4000, v17, OS_LOG_TYPE_DEFAULT, "Requesting spindump to be generated for %{public}s [%d] due to %s", buf, 0x1Cu);
  }

  v18 = spindump_connection();
  if (!v18)
  {
    v23 = 2;
    if (!v16)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v20 = empty;
    xpc_dictionary_set_int64(empty, "message", 9);
    if ((a1 & 0x80000000) == 0)
    {
      xpc_dictionary_set_int64(v20, "pid", a1);
    }

    if (a2)
    {
      xpc_dictionary_set_uint64(v20, "tid", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_double(v20, "duration", a3 / 1000.0);
    }

    if (a4)
    {
      xpc_dictionary_set_double(v20, "interval", a4 / 1000000.0);
    }

    if (a5)
    {
      xpc_dictionary_set_uint64(v20, "flags", a5);
    }

    if (a6)
    {
      xpc_dictionary_set_string(v20, "reason", a6);
    }

    if (a8)
    {
      xpc_dictionary_set_string(v20, "filename", a8);
    }

    if (a7)
    {
      if (strnlen(a7, 0x100uLL) <= 0xFF)
      {
        xpc_dictionary_set_string(v20, "signature", a7);
        if (v16)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      v21 = malloc_type_malloc(0x100uLL, 0x131EB384uLL);
      __strlcpy_chk();
      xpc_dictionary_set_string(v20, "signature", v21);
      if (v21)
      {
        free(v21);
      }
    }

    if (v16)
    {
LABEL_24:
      xpc_dictionary_set_BOOL(v20, "callback", 1);
      v22 = dispatch_get_global_queue(0, 0);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 3221225472;
      handler[2] = __SPGenerateSpindump_block_invoke;
      handler[3] = &unk_29EF70540;
      v32 = v16;
      xpc_connection_send_message_with_reply(v18, v20, v22, handler);

LABEL_33:
      goto LABEL_34;
    }

LABEL_32:
    xpc_connection_send_message(v18, v20);
    goto LABEL_33;
  }

  v24 = libspindump_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    SPCheckHIDResponseTime2_cold_7();
  }

  v23 = 12;
  if (v16)
  {
LABEL_30:
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __SPGenerateSpindump_block_invoke_2;
    block[3] = &unk_29EF70568;
    v29 = v16;
    v30 = v23;
    dispatch_async(v25, block);

    v20 = v29;
    goto LABEL_33;
  }

LABEL_34:

  v26 = *MEMORY[0x29EDCA608];
}

void __SPGenerateSpindump_block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (MEMORY[0x29C2A3DF0]() != MEMORY[0x29EDCAA18] && MEMORY[0x29C2A3DF0](xdict) == MEMORY[0x29EDCAA00])
  {
    xpc_dictionary_get_int64(xdict, "errno");
    xpc_dictionary_get_string(xdict, "path");
    v3 = *(*(a1 + 32) + 16);
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
  }

  v3();
}

void SPReportCPUUsageResource(int a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = *MEMORY[0x29EDCA608];
  v19 = libspindump_log();
  v20 = v19;
  if (a1 <= 0)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      SPReportCPUUsageResource_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v21 = "fatal ";
      }

      else
      {
        v21 = &unk_2998F9A39;
      }

      v26 = 136447490;
      v27 = v21;
      v28 = 2082;
      v29 = procname_btd(a1);
      v30 = 1024;
      v31 = a1;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a6 / 1000000000.0;
      v36 = 2048;
      v37 = a7 / 1000000000.0;
      _os_log_impl(&dword_2998F4000, v20, OS_LOG_TYPE_DEFAULT, "Reporting %{public}scpu usage for %{public}s [%d] thread %#llx using %.0fs cpu over the last %.0f seconds", &v26, 0x3Au);
    }

    v20 = spindump_connection();
    if (v20)
    {
      empty = xpc_dictionary_create_empty();
      v23 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 3);
        xpc_dictionary_set_int64(v23, "pid", a1);
        if (a2)
        {
          xpc_dictionary_set_string(v23, "pname", a2);
        }

        if (a3)
        {
          xpc_dictionary_set_uint64(v23, "tid", a3);
        }

        if (a4)
        {
          xpc_dictionary_set_uint64(v23, "flags", a4);
        }

        if (a5)
        {
          xpc_dictionary_set_string(v23, "action", a5);
        }

        xpc_dictionary_set_double(v23, "cpu", a6 / 1000000000.0);
        xpc_dictionary_set_double(v23, "duration", a7 / 1000000000.0);
        xpc_dictionary_set_double(v23, "endtime", a10 / 1000000000.0 + a9 - *MEMORY[0x29EDB8ED0]);
        if (a11 >= 1 && a12 >= 1)
        {
          xpc_dictionary_set_double(v23, "cpu_limit", a11 / 1000000000.0);
          xpc_dictionary_set_double(v23, "duration_limit", a12 / 1000000000.0);
        }

        xpc_connection_send_message(v20, v23);
      }

      else
      {
        v24 = libspindump_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

void SPReportPowerException(const char *a1, uint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      if ((a2 & 2) == 0)
      {
        v18 = libspindump_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          SPReportPowerException_cold_3();
        }

        goto LABEL_30;
      }

      goto LABEL_9;
    }

    if ((a2 & 2) == 0)
    {
LABEL_9:
      v19 = libspindump_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "fatal ";
        if ((a2 & 1) == 0)
        {
          v20 = &unk_2998F9A39;
        }

        v25 = 136446722;
        v26 = v20;
        v27 = 2082;
        v28 = a1;
        v29 = 2048;
        v30 = a8 / 1000000000.0;
        _os_log_impl(&dword_2998F4000, v19, OS_LOG_TYPE_DEFAULT, "Reporting %{public}spower exception for %{public}s for the last %.0f seconds", &v25, 0x20u);
      }

      v18 = spindump_connection();
      if (v18)
      {
        empty = xpc_dictionary_create_empty();
        v22 = empty;
        if (empty)
        {
          xpc_dictionary_set_int64(empty, "message", 15);
          xpc_dictionary_set_string(v22, "pname", a1);
          xpc_dictionary_set_uint64(v22, "flags", a2);
          if (a3)
          {
            xpc_dictionary_set_string(v22, "issue_type", a3);
          }

          if (a4)
          {
            xpc_dictionary_set_string(v22, "mitigation_reason", a4);
          }

          if (a5)
          {
            xpc_dictionary_set_string(v22, "action", a5);
          }

          if (a6)
          {
            xpc_dictionary_set_string(v22, "detector", a6);
          }

          xpc_dictionary_set_double(v22, "event_duration", a7 / 1000000000.0);
          xpc_dictionary_set_double(v22, "report_duration", a8 / 1000000000.0);
          xpc_dictionary_set_double(v22, "endtime", a10 / 1000000000.0 + a9 - *MEMORY[0x29EDB8ED0]);
          xpc_connection_send_message(v18, v22);
        }

        else
        {
          v23 = libspindump_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            SPCheckHIDResponseTime2_cold_7();
          }
        }
      }

      goto LABEL_30;
    }

    v18 = libspindump_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      SPReportPowerException_cold_1();
    }
  }

  else
  {
    v18 = libspindump_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      SPReportPowerException_cold_4();
    }
  }

LABEL_30:

  v24 = *MEMORY[0x29EDCA608];
}

void _SPReportFileDescriptorExhaustion(int a1, const char *a2, uint64_t a3, const char *a4, int64_t a5, int64_t a6, int a7)
{
  v29 = *MEMORY[0x29EDCA608];
  v14 = libspindump_log();
  v15 = v14;
  if (a1 <= 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      _SPReportFileDescriptorExhaustion_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if ((a7 - 1) >= 0xFFFFFFFE)
      {
        v16 = &unk_2998F9A39;
      }

      else
      {
        v16 = "fatal ";
      }

      v21 = 136446978;
      v22 = v16;
      v23 = 2082;
      v24 = procname_btd(a1);
      v25 = 1024;
      v26 = a1;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&dword_2998F4000, v15, OS_LOG_TYPE_DEFAULT, "Reporting %{public}sfile descriptor exhaustion for %{public}s [%d] at %lld file descriptors", &v21, 0x26u);
    }

    v15 = spindump_connection();
    if (v15)
    {
      empty = xpc_dictionary_create_empty();
      v18 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 11);
        xpc_dictionary_set_int64(v18, "pid", a1);
        if (a2)
        {
          xpc_dictionary_set_string(v18, "pname", a2);
        }

        if (a3)
        {
          xpc_dictionary_set_uint64(v18, "flags", a3);
        }

        if (a4)
        {
          xpc_dictionary_set_string(v18, "action", a4);
        }

        xpc_dictionary_set_int64(v18, "num_fds", a5);
        if (a6 >= 1)
        {
          xpc_dictionary_set_int64(v18, "num_fds_limit", a6);
        }

        if ((a7 - 1) <= 0xFFFFFFFD)
        {
          xpc_dictionary_set_mach_send();
        }

        xpc_connection_send_message(v15, v18);
      }

      else
      {
        v19 = libspindump_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void _SPReportPortExhaustion(int a1, const char *a2, uint64_t a3, const char *a4, int64_t a5, int64_t a6, int a7)
{
  v29 = *MEMORY[0x29EDCA608];
  v14 = libspindump_log();
  v15 = v14;
  if (a1 <= 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      _SPReportPortExhaustion_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if ((a7 - 1) >= 0xFFFFFFFE)
      {
        v16 = &unk_2998F9A39;
      }

      else
      {
        v16 = "fatal ";
      }

      v21 = 136446978;
      v22 = v16;
      v23 = 2082;
      v24 = procname_btd(a1);
      v25 = 1024;
      v26 = a1;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&dword_2998F4000, v15, OS_LOG_TYPE_DEFAULT, "Reporting %{public}sport exhaustion for %{public}s [%d] at %lld ports", &v21, 0x26u);
    }

    v15 = spindump_connection();
    if (v15)
    {
      empty = xpc_dictionary_create_empty();
      v18 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 12);
        xpc_dictionary_set_int64(v18, "pid", a1);
        if (a2)
        {
          xpc_dictionary_set_string(v18, "pname", a2);
        }

        if (a3)
        {
          xpc_dictionary_set_uint64(v18, "flags", a3);
        }

        if (a4)
        {
          xpc_dictionary_set_string(v18, "action", a4);
        }

        xpc_dictionary_set_int64(v18, "num_ports", a5);
        if (a6 >= 1)
        {
          xpc_dictionary_set_int64(v18, "num_ports_limit", a6);
        }

        if ((a7 - 1) <= 0xFFFFFFFD)
        {
          xpc_dictionary_set_mach_send();
        }

        xpc_connection_send_message(v15, v18);
      }

      else
      {
        v19 = libspindump_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void _SPReportKQWorkLoopExhaustion(int a1, const char *a2, uint64_t a3, const char *a4, int64_t a5, int64_t a6, int a7)
{
  v29 = *MEMORY[0x29EDCA608];
  v14 = libspindump_log();
  v15 = v14;
  if (a1 <= 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      _SPReportKQWorkLoopExhaustion_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if ((a7 - 1) >= 0xFFFFFFFE)
      {
        v16 = &unk_2998F9A39;
      }

      else
      {
        v16 = "fatal ";
      }

      v21 = 136446978;
      v22 = v16;
      v23 = 2082;
      v24 = procname_btd(a1);
      v25 = 1024;
      v26 = a1;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&dword_2998F4000, v15, OS_LOG_TYPE_DEFAULT, "Reporting %{public}skqworkloop exhaustion for %{public}s [%d] at %lld kqworkloops", &v21, 0x26u);
    }

    v15 = spindump_connection();
    if (v15)
    {
      empty = xpc_dictionary_create_empty();
      v18 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 14);
        xpc_dictionary_set_int64(v18, "pid", a1);
        if (a2)
        {
          xpc_dictionary_set_string(v18, "pname", a2);
        }

        if (a3)
        {
          xpc_dictionary_set_uint64(v18, "flags", a3);
        }

        if (a4)
        {
          xpc_dictionary_set_string(v18, "action", a4);
        }

        xpc_dictionary_set_int64(v18, "num_kqworkloops", a5);
        if (a6 >= 1)
        {
          xpc_dictionary_set_int64(v18, "num_kqworkloops_limit", a6);
        }

        if ((a7 - 1) <= 0xFFFFFFFD)
        {
          xpc_dictionary_set_mach_send();
        }

        xpc_connection_send_message(v15, v18);
      }

      else
      {
        v19 = libspindump_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void SPReportWorkflowResponsivenessDelay(const char *a1)
{
  if (a1)
  {
    v2 = spindump_connection();
    if (v2)
    {
      empty = xpc_dictionary_create_empty();
      v4 = empty;
      if (empty)
      {
        xpc_dictionary_set_int64(empty, "message", 13);
        xpc_dictionary_set_string(v4, "filename", a1);
        xpc_connection_send_message(v2, v4);
      }

      else
      {
        v5 = libspindump_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          SPCheckHIDResponseTime2_cold_7();
        }
      }
    }

    else
    {
      v4 = libspindump_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        SPReportWorkflowResponsivenessDelay_cold_2();
      }
    }
  }

  else
  {
    v2 = libspindump_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SPReportWorkflowResponsivenessDelay_cold_3();
    }
  }
}

uint64_t __SPHIDResponseDelayThresholdMachAbs_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HIDResponseDelayReportThresholdMs", *MEMORY[0x29EDB8FA0], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (AppIntegerValue < 0)
    {
      result = -1;
      goto LABEL_7;
    }

    v1 = 1000000 * AppIntegerValue;
  }

  else
  {
    v1 = 500000000;
  }

  result = NanoToMach(v1);
LABEL_7:
  SPHIDResponseDelayThresholdMachAbs_thresholdMachAbs = result;
  return result;
}

uint64_t NanoToMach(uint64_t a1)
{
  if (MachTimebase_onceToken != -1)
  {
    NanoToMach_cold_1();
  }

  if (MachTimebase_info != HIDWORD(MachTimebase_info))
  {
    if (HIDWORD(MachTimebase_info))
    {
      v2 = MachTimebase_info == 0;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return __udivti3();
    }
  }

  return a1;
}

uint64_t MachToNano(uint64_t a1)
{
  if (MachTimebase_onceToken != -1)
  {
    NanoToMach_cold_1();
  }

  if (MachTimebase_info != HIDWORD(MachTimebase_info))
  {
    if (HIDWORD(MachTimebase_info))
    {
      v2 = MachTimebase_info == 0;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return __udivti3();
    }
  }

  return a1;
}

uint64_t __SPAddToHIDTelemetry_block_invoke(uint64_t a1)
{
  v1 = 0;
  v26 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  do
  {
    __swp(gHIDEventCountBuckets + v1 * 8, &gHIDEventCountBuckets[v1]);
    *(&v10 + v1 * 8) = &gHIDEventCountBuckets[v1];
    __swp(a1, &gHIDEventDurationMachAbsBuckets[v1]);
    a1 = MachToNano(a1);
    *(&v14 + v1 * 8 + 8) = a1;
    ++v1;
  }

  while (v1 != 9);
  v2 = 0;
  __swp(gHIDEventCountBuckets, &gActionCount);
  v3 = v14;
  v4 = *(&v18 + 1);
  do
  {
    v5 = &v10 + 8 * v2;
    v3 += *(v5 + 7);
    *(v5 + 7) = v3;
    v4 += *(v5 + 16);
    *(v5 + 16) = v4;
    v6 = v2 + 8;
    --v2;
  }

  while (v6 > 1);
  v7 = libspindump_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134222592;
    *&buf[4] = gHIDEventCountBuckets;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v20 = *(&v14 + 1) / 1000000000.0;
    *v21 = 2048;
    *&v21[2] = *(&v10 + 1);
    *&v21[10] = 2048;
    *&v21[12] = v15 / 1000000000.0;
    *&v21[20] = 2048;
    *&v21[22] = v11;
    *&v21[30] = 2048;
    *&v21[32] = *(&v15 + 1) / 1000000000.0;
    *v22 = 2048;
    *&v22[2] = *(&v11 + 1);
    *&v22[10] = 2048;
    *&v22[12] = v16 / 1000000000.0;
    *&v22[20] = 2048;
    *&v22[22] = v12;
    *&v22[30] = 2048;
    *v23 = *(&v16 + 1) / 1000000000.0;
    *&v23[8] = 2048;
    *&v23[10] = *(&v12 + 1);
    *&v23[18] = 2048;
    *&v23[20] = v17 / 1000000000.0;
    *&v23[28] = 2048;
    *&v23[30] = v13;
    *&v23[38] = 2048;
    *&v23[40] = *(&v17 + 1) / 1000000000.0;
    *v24 = 2048;
    *&v24[2] = *(&v13 + 1);
    *&v24[10] = 2048;
    *&v24[12] = v18 / 1000000000.0;
    *&v24[20] = 2048;
    *&v24[22] = v14;
    *&v24[30] = 2048;
    v25 = *(&v18 + 1) / 1000000000.0;
    _os_log_debug_impl(&dword_2998F4000, v7, OS_LOG_TYPE_DEBUG, "HID statistics actions:%llu responseBuckets:%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs),%llu(%.3fs)", buf, 0xC0u);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 3221225472;
  *&v23[16] = v15;
  *&v23[32] = v16;
  *v24 = v17;
  *&v24[16] = v18;
  *&v21[24] = v11;
  *v22 = v12;
  *&v22[16] = v13;
  *v23 = v14;
  *&buf[16] = __SPSubmitHIDTelemetry_block_invoke;
  v20 = COERCE_DOUBLE(&__block_descriptor_184_e30___NSObject_OS_xpc_object__8__0l);
  *v21 = gHIDEventCountBuckets;
  *&v21[8] = v10;
  result = analytics_send_event_lazy();
  SPAddToHIDTelemetry_telemetryPending = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

xpc_object_t __SPSubmitHIDTelemetry_block_invoke(uint64_t *a1)
{
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v2 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x29EDB8F20]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x29EDB8EC0]];
  v7 = [v6 length];
  v8 = [v5 length];
  if (v7)
  {
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ (%@)", v6, v5];
    }

    else
    {
      v9 = v6;
    }

    goto LABEL_7;
  }

  if (v8)
  {
    v9 = v5;
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "action_count", a1[4]);
  xpc_dictionary_set_uint64(empty, "all_count", a1[5]);
  xpc_dictionary_set_uint64(empty, "50ms_count", a1[6]);
  xpc_dictionary_set_uint64(empty, "100ms_count", a1[7]);
  xpc_dictionary_set_uint64(empty, "250ms_count", a1[8]);
  xpc_dictionary_set_uint64(empty, "500ms_count", a1[9]);
  xpc_dictionary_set_uint64(empty, "1s_count", a1[10]);
  xpc_dictionary_set_uint64(empty, "2s_count", a1[11]);
  xpc_dictionary_set_uint64(empty, "5s_count", a1[12]);
  xpc_dictionary_set_uint64(empty, "10s_count", a1[13]);
  xpc_dictionary_set_uint64(empty, "all_ns", a1[14]);
  xpc_dictionary_set_uint64(empty, "50ms_ns", a1[15]);
  xpc_dictionary_set_uint64(empty, "100ms_ns", a1[16]);
  xpc_dictionary_set_uint64(empty, "250ms_ns", a1[17]);
  xpc_dictionary_set_uint64(empty, "500ms_ns", a1[18]);
  xpc_dictionary_set_uint64(empty, "1s_ns", a1[19]);
  xpc_dictionary_set_uint64(empty, "2s_ns", a1[20]);
  xpc_dictionary_set_uint64(empty, "5s_ns", a1[21]);
  xpc_dictionary_set_uint64(empty, "10s_ns", a1[22]);
  v12 = [v3 UTF8String];
  if (v12)
  {
    xpc_dictionary_set_string(empty, "bundle_id", v12);
  }

  v13 = [v10 UTF8String];
  if (v13)
  {
    xpc_dictionary_set_string(empty, "bundle_version", v13);
  }

  return empty;
}

void __spindump_connection_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x29C2A3DF0]() == MEMORY[0x29EDCAA18] && v2 != MEMORY[0x29EDCA9B8] && v2 != MEMORY[0x29EDCA9D0])
  {
    v5 = libspindump_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __spindump_connection_block_invoke_2_cold_1(v2, v5);
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void SPExpectedHIDResponseDelayUntil_cold_1()
{
  v5 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  v4 = v0;
  _os_log_debug_impl(&dword_2998F4000, v1, OS_LOG_TYPE_DEBUG, "Expected HID response delay until %.2fs ago (%llu)", v3, 0x16u);
  v2 = *MEMORY[0x29EDCA608];
}

void SPExpectedHIDResponseDelayUntil_cold_2()
{
  v8 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  v5 = v0;
  v6 = v1;
  v7 = 0x4000000000000000;
  _os_log_fault_impl(&dword_2998F4000, v2, OS_LOG_TYPE_FAULT, "Expected HID response delay for the next %.2fs (%llu is more than %.2fs in the future", v4, 0x20u);
  v3 = *MEMORY[0x29EDCA608];
}

void SPExpectedHIDResponseDelayUntil_cold_3()
{
  v5 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  v4 = v0;
  _os_log_debug_impl(&dword_2998F4000, v1, OS_LOG_TYPE_DEBUG, "Expected HID response delay for the next %.2fs (%llu)", v3, 0x16u);
  v2 = *MEMORY[0x29EDCA608];
}

void SPExpectedHIDResponseDelayUntil_cold_4(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  MachToNano(gExpectedHIDResponseDelayEndMachAbs - a1);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x29EDCA608];
}

void SPPauseMonitoringHIDResponsiveness_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "No reason string provided");
  qword_2A14C16E8 = *a1;
  _os_crash();
  __break(1u);
}

void SPResumeMonitoringHIDResponsiveness_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Receipt passed to SPResumeMonitoringHIDResponsiveness does not match any live receipt returned by SPPauseMonitoringHIDResponsiveness");
  qword_2A14C16E8 = *a1;
  _os_crash();
  __break(1u);
}

void SPResumeMonitoringHIDResponsiveness_cold_2(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = MachToNano(a2 - *a1) / 1000000000.0;
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x29EDCA608];
}

void SPResumeMonitoringHIDResponsiveness_cold_3(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = MachToNano(a2 - *a1) / 1000000000.0;
  MachToNano(a2 - gEarliestPauseMachAbs);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x29EDCA608];
}

void SPResumeMonitoringHIDResponsiveness_cold_4(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = MachToNano(a2 - *a1) / 1000000000.0;
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x29EDCA608];
}

void SPResumeMonitoringHIDResponsiveness_cold_5(char **a1)
{
  *a1 = 0;
  asprintf(a1, "No receipt provided");
  qword_2A14C16E8 = *a1;
  _os_crash();
  __break(1u);
}

void SPCheckHIDResponseTime2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&dword_2998F4000, log, OS_LOG_TYPE_FAULT, "Invalid timestamps for HID response delay: %llu to %llu", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

void SPCheckHIDResponseTime2_cold_3(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "No matching SPResumeMonitoringHIDResponsiveness call for SPPauseMonitoringHIDResponsiveness before responding to a HID event. Monitoring is paused by %s (and %d others)", (*gPauseReceipts + 8), a2 - 1);
  qword_2A14C16E8 = *a1;
  _os_crash();
  __break(1u);
}

void SPCheckHIDResponseTime2_cold_4(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2998F4000, a2, OS_LOG_TYPE_ERROR, "Unable to get executable path for HID response delay, requires buffer of size %#x", v4, 8u);
  v3 = *MEMORY[0x29EDCA608];
}

void SPCheckHIDResponseTime2_cold_5(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2998F4000, a2, OS_LOG_TYPE_ERROR, "Unable to get executable path for HID response delay with buffer of size %#x", v4, 8u);
  v3 = *MEMORY[0x29EDCA608];
}

void __libspindump_log_block_invoke_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void __spindump_connection_block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x29EDCA9C8]);
  v5 = 136446210;
  v6 = string;
  _os_log_error_impl(&dword_2998F4000, a2, OS_LOG_TYPE_ERROR, "Got xpc error message: %{public}s\n", &v5, 0xCu);
  v4 = *MEMORY[0x29EDCA608];
}

void __procname_btd_block_invoke_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_2998F4000, a1, OS_LOG_TYPE_ERROR, "Unable to check for proc_name availability: %{errno}d", v4, 8u);
  v3 = *MEMORY[0x29EDCA608];
}