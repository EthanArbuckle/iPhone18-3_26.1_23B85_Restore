void sub_2998288C8(int a1, UInt8 *a2, uint64_t a3)
{
  valuePtr = a1;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_2998289D4;
  v9[3] = &unk_29EF6DB18;
  v9[4] = a3;
  dispatch_sync(qword_2A197CD30, v9);
  dispatch_semaphore_wait(qword_2A197CD40, 0xFFFFFFFFFFFFFFFFLL);
  Value = CFDictionaryGetValue(qword_2A197CD38, v5);
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    dispatch_semaphore_signal(qword_2A197CD40);
    CFRelease(v5);
    v11.location = 0;
    v11.length = 40;
    CFDataGetBytes(v7, v11, a2);
    v8 = v7;
  }

  else
  {
    dispatch_semaphore_signal(qword_2A197CD40);
    v8 = v5;
  }

  CFRelease(v8);
}

intptr_t sub_2998289D4(intptr_t result)
{
  v2 = *(result + 32);
  if (v2)
  {
    if ((v2 - qword_2A14BF660) < 0x3B9ACA00)
    {
      return result;
    }

    qword_2A14BF660 = *(result + 32);
  }

  NStatManagerQueryAllSources();
  v3 = qword_2A197CD90;

  return dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_299828A44(uint64_t a1, int a2)
{
  NStatManagerQueryAllSources();
  dispatch_semaphore_wait(qword_2A197CD90, 0xFFFFFFFFFFFFFFFFLL);
  if (a1)
  {
    dispatch_semaphore_wait(qword_2A197CD40, 0xFFFFFFFFFFFFFFFFLL);
    Count = CFDictionaryGetCount(qword_2A197CD38);
    v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(qword_2A197CD38, 0, v5);
    qsort_b(v5, Count, 8uLL, &unk_2A1F8D6C0);
    if (Count)
    {
      v6 = 0;
      v7 = 0;
      for (i = 0; i < Count; v6 = i)
      {
        BytePtr = CFDataGetBytePtr(v5[v6]);
        if (v7 < a2 && (v10 = a1 + 456 * v7, *BytePtr >= *v10))
        {
          if (*BytePtr != *v10)
          {
            ++v7;
            continue;
          }

          v13.location = 0;
          v13.length = 40;
          CFDataGetBytes(v5[v6], v13, (v10 + 184));
          ++v7;
        }

        else
        {
          v11 = CFNumberCreate(0, kCFNumberIntType, BytePtr);
          CFDictionaryRemoveValue(qword_2A197CD38, v11);
          CFRelease(v11);
        }

        ++i;
      }
    }

    dispatch_semaphore_signal(qword_2A197CD40);

    free(v5);
  }
}

intptr_t sub_299828C24()
{
  qword_2A197CD90 = dispatch_semaphore_create(0);
  qword_2A197CD40 = dispatch_semaphore_create(1);
  qword_2A197CD50 = dispatch_queue_create("netstats sample queue", 0);
  qword_2A197CD30 = dispatch_queue_create("netstats update queue", 0);
  qword_2A197CD38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v0 = *MEMORY[0x29EDB8ED8];
  qword_2A197CD88 = NStatManagerCreate();
  NStatManagerAddAllTCP();
  NStatManagerAddAllUDP();
  NStatManagerQueryAllSources();
  v1 = qword_2A197CD90;

  return dispatch_semaphore_wait(v1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_299828D2C(int a1, CFTypeRef cf)
{
  CFRetain(cf);
  NStatSourceSetRemovedBlock();
  NStatSourceSetCountsBlock();
  return NStatSourceSetDescriptionBlock();
}

void sub_299828E50(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  v4 = NStatSourceCopyCounts();
  if (v4)
  {
    v5 = v4;
    v17 = 0;
    *buffer = 0u;
    v16 = 0u;
    valuePtr = 0;
    Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDC5E60]);
    if (Value)
    {
      v7 = Value;
      v8 = CFDictionaryGetValue(qword_2A197CD38, Value);
      if (v8)
      {
        v18.location = 0;
        v18.length = 40;
        CFDataGetBytes(v8, v18, buffer);
      }

      else
      {
        v17 = 0;
        *buffer = 0u;
        v16 = 0u;
      }

      CFNumberGetValue(v7, kCFNumberIntType, buffer);
      v9 = CFDictionaryGetValue(v5, *MEMORY[0x29EDC5E70]);
      CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr);
      if (valuePtr > *&buffer[8])
      {
        *&buffer[8] = valuePtr;
      }

      v10 = CFDictionaryGetValue(v5, *MEMORY[0x29EDC5E68]);
      CFNumberGetValue(v10, kCFNumberLongLongType, &valuePtr);
      if (valuePtr > *(&v16 + 1))
      {
        *(&v16 + 1) = valuePtr;
      }

      v11 = CFDictionaryGetValue(v5, *MEMORY[0x29EDC5E80]);
      CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
      if (valuePtr > v16)
      {
        *&v16 = valuePtr;
      }

      v12 = CFDictionaryGetValue(v5, *MEMORY[0x29EDC5E78]);
      CFNumberGetValue(v12, kCFNumberLongLongType, &valuePtr);
      if (valuePtr > v17)
      {
        v17 = valuePtr;
      }

      v13 = CFDataCreate(0, buffer, 40);
      dispatch_semaphore_wait(qword_2A197CD40, 0xFFFFFFFFFFFFFFFFLL);
      CFDictionarySetValue(qword_2A197CD38, v7, v13);
      dispatch_semaphore_signal(qword_2A197CD40);
      CFRelease(v13);
    }

    CFRelease(v5);
  }
}

void sub_299829024(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = NStatSourceCopyProperties();
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t sub_2998290AC()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v71 = *MEMORY[0x29EDCA608];
  v12 = 456;
  if (v1 == 2)
  {
    v12 = 440;
  }

  if (v1 == 1)
  {
    v13 = 408;
  }

  else
  {
    v13 = v12;
  }

  bzero(v0, v13);
  tn = 0;
  *task_info_out = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  task_info_outCnt = 0;
  *v11 = v6;
  if (v8)
  {
    if (v6)
    {
      v14 = proc_pidpath(v6, buffer, 0x1000u);
      if (v14 <= 0)
      {
        v22 = *MEMORY[0x29EDCA610];
        v31 = v6;
        v32 = v14;
        v20 = "proc_pidpath %u failed(%u)\n";
        goto LABEL_32;
      }

      strrchr(buffer, 47);
    }

    __strlcpy_chk();
  }

  if ((v8 & 0x24) != 0)
  {
    p_tn = v4;
    if (!v4)
    {
      p_tn = &tn;
      v23 = task_name_for_pid(*MEMORY[0x29EDCA6B0], v6, &tn);
      if (v23)
      {
        v18 = *MEMORY[0x29EDCA610];
        v31 = v23;
        v32 = mach_error_string(v23);
        v20 = "task_name_for_pid failed %u %s\n";
        goto LABEL_26;
      }
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *task_info_out = 0u;
    v35 = 0u;
    task_info_outCnt = 26;
    v16 = task_info(*p_tn, 0x1Au, task_info_out, &task_info_outCnt);
    v17 = v16;
    if (v4)
    {
      if (v16)
      {
LABEL_15:
        v18 = *MEMORY[0x29EDCA610];
        v31 = v17;
        v32 = mach_error_string(v17);
LABEL_20:
        v20 = "task_info failed %u %s\n";
LABEL_26:
        v24 = v18;
LABEL_33:
        fprintf(v24, v20, v31, v32);
        result = 0xFFFFFFFFLL;
        goto LABEL_52;
      }
    }

    else
    {
      mach_port_deallocate(*MEMORY[0x29EDCA6B0], *p_tn);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    if ((v8 & 4) != 0)
    {
      v26 = v35;
      *(v11 + 132) = *task_info_out;
      *(v11 + 148) = v26;
      v27 = v39;
      *(v11 + 164) = v36;
      *(v11 + 23) = v27;
      *(v11 + 48) = v40;
      if ((v8 & 0x20) != 0)
      {
LABEL_35:
        *(v11 + 42) = v37;
      }
    }

    else if ((v8 & 0x20) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    p_tn = v4;
  }

  if (v8 < 0)
  {
    task_info_outCnt = 8;
    v19 = task_info(*p_tn, 0x19u, v11 + 56, &task_info_outCnt);
    if (v19)
    {
      v18 = *MEMORY[0x29EDCA610];
      v31 = v19;
      v32 = mach_error_string(v19);
      goto LABEL_20;
    }
  }

  if ((v8 & 0x16) != 0)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    memset(v58, 0, sizeof(v58));
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v21 = proc_pid_rusage(v6, 6, &v43);
    if (v21)
    {
      v22 = *MEMORY[0x29EDCA610];
      v31 = v6;
      v32 = v21;
      v20 = "proc_pid_rusage %u failed(%u)\n";
LABEL_32:
      v24 = v22;
      goto LABEL_33;
    }

    if ((v8 & 4) != 0)
    {
      v28 = v54;
      *(v11 + 16) = v53;
      *(v11 + 17) = v28;
      *(v11 + 18) = v55;
      *(v11 + 38) = v56;
      if (v2 >= 2)
      {
        v29 = v62;
        *(v11 + 408) = *&v58[1];
        *(v11 + 424) = v29;
      }
    }

    if ((v8 & 0x10) != 0)
    {
      *(v11 + 312) = v52;
      *(v11 + 41) = v46;
    }

    if ((v8 & 2) != 0)
    {
      if (!v10)
      {
        v10 = mach_absolute_time();
      }

      *(v11 + 49) = v10 - v48;
    }
  }

  if ((v8 & 8) != 0)
  {
    if (!v10)
    {
      v10 = mach_absolute_time();
    }

    if (qword_2A197CD98 != -1)
    {
      sub_299829E00();
    }

    sub_2998288C8(v6, v11 + 184, v10);
  }

  result = 0;
LABEL_52:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pm_sample_task_version(mach_port_name_t a1)
{
  x[0] = 0;
  x[1] = a1;
  if (pid_for_task(a1, x))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_2998290AC();
  }
}

void *pm_samples_init_version(uint64_t a1)
{
  if (geteuid())
  {
    fwrite("pm_samples_init: Must be run as root!\n", 0x26uLL, 1uLL, *MEMORY[0x29EDCA610]);
    v2 = __error();
    result = 0;
    *v2 = 13;
  }

  else
  {
    result = malloc_type_malloc(0x20uLL, 0x1030040C323FB7DuLL);
    if (result)
    {
      *result = 0;
      result[1] = a1;
      v4 = MEMORY[0x29EDCA5F8];
      result[2] = 0;
      result[3] = 0;
      block[0] = v4;
      block[1] = 0x40000000;
      block[2] = sub_2998296E4;
      block[3] = &unk_29EF6DC20;
      block[4] = a1;
      if (qword_2A197CD78 != -1)
      {
        v5 = result;
        dispatch_once(&qword_2A197CD78, block);
        return v5;
      }
    }
  }

  return result;
}

uint64_t sub_2998296E4(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0 && qword_2A197CD98 != -1)
  {
    sub_299829E28();
  }

  v1 = MEMORY[0x29C2A0A00]();
  dword_2A197CD48 = v1;
  if (!v1)
  {
    goto LABEL_13;
  }

  result = host_processor_sets(v1, &qword_2A197CD58, &dword_2A197CD80);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_299829E3C();
      abort();
    }

    goto LABEL_13;
  }

  if (dword_2A197CD80)
  {
    v3 = 0;
    for (i = &unk_2A197CD64; ; ++i)
    {
      result = host_processor_set_priv(dword_2A197CD48, *(qword_2A197CD58 + 4 * v3), i);
      if (result)
      {
        break;
      }

      if (++v3 >= dword_2A197CD80)
      {
        return result;
      }
    }

    v5 = result;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_299829EB8(v5);
    }

LABEL_13:
    abort();
  }

  return result;
}

void pm_samples_destroy_version(int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    free(v2);
  }

  if (a1[1] >= 1)
  {
    v3 = *(a1 + 3);
    if (v3)
    {
      free(v3);
    }
  }

  free(a1);
}

uint64_t pm_samples_get_version(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 456 * a2;
  }
}

uint64_t pm_samples_get(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *a1 <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 456 * a2;
  }
}

uint64_t pm_samples_sample_version(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!dword_2A197CD80)
  {
    sub_299829FFC();
  }

  v2 = 0;
  v24 = *(a1 + 8);
  *task_list = 0u;
  v26 = 0u;
  v3 = task_listCnt;
  v4 = task_list;
  do
  {
    v5 = processor_set_tasks_with_flavor(dword_2A197CD64[v2], 2u, v4, v3);
    if (v5)
    {
      v23 = v5;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        sub_299829F38(v23);
      }

      goto LABEL_38;
    }

    ++v2;
    v6 = dword_2A197CD80;
    ++v3;
    ++v4;
  }

  while (v2 < dword_2A197CD80);
  v7 = 0;
  if (dword_2A197CD80)
  {
    v8 = task_listCnt;
    do
    {
      v9 = *v8++;
      v7 = (v9 + v7);
      --v6;
    }

    while (v6);
  }

  if (*(a1 + 4) < v7)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 24);
    if (v11 && *(a1 + 4))
    {
      free(v11);
    }

    v12 = malloc_type_malloc(456 * v7, 0x1080040B55FB8C3uLL);
    *(a1 + 16) = v12;
    if (v12)
    {
      if (!*(a1 + 24) || (v13 = malloc_type_malloc(4 * v7, 0x100004052888210uLL), (*(a1 + 24) = v13) != 0))
      {
        *(a1 + 4) = v7;
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        sub_299829FB8();
        abort();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_299829FB8();
      abort();
    }

LABEL_38:
    abort();
  }

LABEL_18:
  mach_absolute_time();
  if (dword_2A197CD80)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if (task_listCnt[v14])
      {
        v16 = 0;
        do
        {
          v17 = *(a1 + 16) + 456 * v15;
          if ((pm_sample_task_version(task_list[v14][v16]) & 0x80000000) != 0)
          {
            *(*(a1 + 16) + 456 * v15) = -1;
            v7 = (v7 - 1);
            mach_port_deallocate(*MEMORY[0x29EDCA6B0], task_list[v14][v16]);
          }

          else
          {
            v18 = *(a1 + 24);
            if (v18)
            {
              *(v18 + 4 * v15) = task_list[v14][v16];
              *(*(a1 + 16) + 456 * v15 + 400) = v18 + 4 * v15;
            }

            else
            {
              mach_port_deallocate(*MEMORY[0x29EDCA6B0], task_list[v14][v16]);
            }

            ++v15;
          }

          ++v16;
          v19 = task_listCnt[v14];
        }

        while (v16 < v19);
        v20 = 4 * v19;
      }

      else
      {
        v20 = 0;
      }

      mach_vm_deallocate(*MEMORY[0x29EDCA6B0], task_list[v14++], v20);
    }

    while (v14 < dword_2A197CD80);
  }

  qsort_b(*(a1 + 16), v7, 0x1C8uLL, &unk_2A1F8D760);
  if ((v24 & 8) != 0)
  {
    sub_299828A44(*(a1 + 16), v7);
  }

  *a1 = v7;
  v21 = *MEMORY[0x29EDCA608];
  return v7;
}

void *pm_samples_copy_version(uint64_t a1, const void **a2)
{
  v4 = *a2;
  v5 = *(a1 + 4);
  v6 = *(a1 + 16);
  if (*a2 > v5)
  {
    v6 = malloc_type_realloc(v6, 456 * v4, 0x1080040B55FB8C3uLL);
    *(a1 + 16) = v6;
    if (!v6)
    {
      sub_29982A028();
    }

    v4 = *a2;
    *(a1 + 4) = *a2;
  }

  result = memcpy(v6, a2[2], 456 * v4);
  *a1 = *a2;
  return result;
}

int *pm_samples_delta_version(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(a3 + 4);
  if (v4 < 0)
  {
    sub_29982A080();
  }

  v7 = result;
  v8 = *result;
  if (v3 > v4)
  {
    result = malloc_type_realloc(*(a3 + 16), 456 * v3, 0x1080040B55FB8C3uLL);
    *(a3 + 16) = result;
    if (!result)
    {
      sub_29982A054();
    }

    *(a3 + 4) = v3;
    v8 = *v7;
  }

  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v7 + 2);
      if (v9 < *a2 && (result = (v11 + 456 * v10), v12 = *(*(a2 + 16) + 456 * v9), *result >= v12))
      {
        if (*result == v12)
        {
          v13 = *(a3 + 16) + 456 * v10;
          result = pm_task_subtract_version();
          ++v10;
        }

        ++v9;
      }

      else
      {
        result = memcpy((*(a3 + 16) + 456 * v10), (v11 + 456 * v10), 0x1C8uLL);
        ++v10;
      }
    }

    while (v10 < *v7);
  }

  *a3 = v3;
  return result;
}

uint64_t sub_299829DC8(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *a2 - *a3;
  if (*a3 == -1)
  {
    v4 = -1;
  }

  if (v3 == -1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == *a3)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void sub_299829E3C()
{
  v6 = *MEMORY[0x29EDCA608];
  sub_299829DF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_299829EB8(mach_error_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  mach_error_string(a1);
  sub_299829DF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_299829F38(mach_error_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  mach_error_string(a1);
  sub_299829DF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}