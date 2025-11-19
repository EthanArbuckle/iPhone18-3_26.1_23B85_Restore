double GuardMalloc_initializeBuckets(uint64_t a1)
{
  *(a1 + 16392) = 0;
  vm_allocate(mach_task_self_, (a1 + 16400), 8 * vm_page_size, 16777217);
  result = 0.0;
  *(a1 + 16408) = 0u;
  return result;
}

void GuardMalloc_noteAllocation(uint64_t a1, unint64_t a2, unint64_t a3)
{
  os_unfair_lock_lock((a1 + 16392));
  v6 = *(a1 + 16408);
  if (!v6 || (v7 = (*(a1 + 16416) + 24), v8 = vm_page_size, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6 - 8) >> 3) >= (vm_page_size - 8) / 0x18))
  {
    v9 = reservedBucketArena;
    if (reservedBucketArena)
    {
      *(a1 + 16408) = reservedBucketArena;
      reservedBucketArena = 0;
    }

    else
    {
      vm_allocate(mach_task_self_, (a1 + 16408), vm_page_size, 16777217);
      v9 = *(a1 + 16408);
    }

    *v9 = v6;
    v7 = (*(a1 + 16408) + 8);
    v8 = vm_page_size;
  }

  *(a1 + 16416) = v7;
  *v7 = a2;
  v7[1] = a3;
  v10 = (a2 >> 2) % (v8 - 1);
  v11 = *(a1 + 16400);
  v7[2] = *(v11 + 8 * v10);
  *(v11 + 8 * v10) = v7;

  os_unfair_lock_unlock((a1 + 16392));
}

vm_size_t GuardMalloc_noteFree(uint64_t a1, unint64_t a2)
{
  v4 = (a2 >> 2) % (vm_page_size - 1);
  os_unfair_lock_lock((a1 + 16392));
  v5 = (*(a1 + 16400) + 8 * v4);
  v6 = *v5;
  if (!*v5)
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if (*v6 != a2)
  {
    while (1)
    {
      v7 = v6;
      v6 = v6[2];
      if (!v6)
      {
        goto LABEL_22;
      }

      if (*v6 == a2)
      {
        v5 = (v7 + 2);
        break;
      }
    }
  }

  v8 = v6[1];
  *v5 = v6[2];
  v9 = *(a1 + 16416);
  if (v6 != v9)
  {
    v10 = v9[2];
    *v6 = *v9;
    v6[2] = v10;
    v11 = (*(a1 + 16400) + 8 * ((*v6 >> 2) % (vm_page_size - 1)));
    v12 = *v11;
    v13 = *(a1 + 16416);
    if (*v11)
    {
      if (v12 == v13)
      {
LABEL_12:
        *v11 = v6;
        v13 = *(a1 + 16416);
      }

      else
      {
        while (1)
        {
          v14 = v12;
          v12 = v12[2];
          if (!v12)
          {
            break;
          }

          if (v12 == v13)
          {
            v11 = (v14 + 2);
            goto LABEL_12;
          }
        }
      }
    }

    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v9 = *(a1 + 16416);
  }

  v15 = *(a1 + 16408);
  v16 = v15 + 1;
  if (v15 + 1 < v9 && v9 <= &v16[3 * ((vm_page_size - 8) / 0x18) - 3])
  {
    *(a1 + 16416) = v9 - 3;
  }

  else
  {
    if (v9 != v16)
    {
      malloc_printf("GuardMalloc internal error: lastBucketAllocated %p is not in current arena %p-%p\n", v9, *(a1 + 16408), &v15[vm_page_size]);
      abort();
    }

    v17 = *v15;
    *(a1 + 16408) = *v15;
    if (v17)
    {
      v17 = v17 + 24 * ((vm_page_size - 8) / 0x18) - 16;
    }

    *(a1 + 16416) = v17;
    if (reservedBucketArena)
    {
      v18 = vm_deallocate(mach_task_self_, v15, vm_page_size);
      if (v18)
      {
        v19 = mach_error_string(v18);
        malloc_printf("error vm_deallocating hash bucket arena %p: %s\n", v15, v19);
      }
    }

    else
    {
      reservedBucketArena = v15;
    }
  }

LABEL_23:
  os_unfair_lock_unlock((a1 + 16392));
  return v8;
}

uint64_t GuardMalloc_nodeSize(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_lock((a1 + 16392));
  v4 = *(*(a1 + 16400) + 8 * ((a2 >> 2) % (vm_page_size - 1)));
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = v4[2];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v5 = v4[1];
  }

  else
  {
LABEL_4:
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 16392));
  return v5;
}

void GuardMalloc_destroyZone(vm_address_t a1)
{
  os_unfair_lock_lock((a1 + 16392));
  v2 = vm_page_size;
  if (vm_page_size != 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 16400) + 8 * v3);
      if (v5)
      {
        do
        {
          GuardMalloc_freeInternal(a1, *v5, v5[1]);
          v5 = v5[2];
        }

        while (v5);
        v2 = vm_page_size;
      }

      v3 = ++v4;
    }

    while (v2 - 1 > v4);
  }

  v6 = *(a1 + 16408);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = vm_deallocate(mach_task_self_, v6, vm_page_size);
      if (v8)
      {
        v9 = mach_error_string(v8);
        malloc_printf("error vm_deallocating hash bucket arena %p: %s\n", v6, v9);
      }

      v6 = v7;
    }

    while (v7);
  }

  os_unfair_lock_unlock((a1 + 16392));
  v10 = vm_deallocate(mach_task_self_, a1, 0x4028uLL);
  if (v10)
  {
    v11 = mach_error_string(v10);
    malloc_printf("error vm_deallocating zone %p: %s\n", a1, v11);
  }
}

void GuardMalloc_printZone(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = "unnamed zone";
  }

  malloc_printf("zone %p  %s\n", a1, v4);
  if (a2)
  {
    os_unfair_lock_lock((a1 + 16392));
    malloc_printf("heapBucketsHashTable: %p\n", *(a1 + 16400));
    for (i = *(a1 + 16408); i; i = *i)
    {
      malloc_printf("bucketArena: %p\n", i);
    }

    if (vm_page_size != 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        malloc_printf("\n");
        malloc_printf("hash table index %u\n", v7);
        for (j = *(*(a1 + 16400) + 8 * v6); j; j = j[2])
        {
          malloc_printf("bucket %p in arena %p   %p, %lu\n", j, (-vm_page_size & j), *j, j[1]);
        }

        v6 = ++v7;
      }

      while (vm_page_size - 1 > v7);
    }

    malloc_printf("\n");

    os_unfair_lock_unlock((a1 + 16392));
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    GuardMalloc_statistics(a1, &v9);
    malloc_printf("inUse=%u(%ly) allocated=%ly maxSizeInUse=%ly\n", v9, *(&v9 + 1), *(&v10 + 1), v10);
    malloc_printf("\n");
  }
}

void GuardMalloc_statistics(uint64_t a1, int *a2)
{
  os_unfair_lock_lock((a1 + 16392));
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = vm_page_size - 1;
  if (vm_page_size != 1)
  {
    v5 = 0;
    v6 = *(a1 + 16400);
    v7 = -vm_page_size;
    do
    {
      v8 = *(v6 + 8 * v5);
      if (v8)
      {
        v9 = *a2;
        v10 = *(a2 + 1);
        v11 = *(a2 + 3);
        do
        {
          ++v9;
          v12 = *(v8 + 8);
          v8 = *(v8 + 16);
          v10 += v12;
          v11 += (v12 + v4) & v7;
        }

        while (v8);
        *a2 = v9;
        *(a2 + 1) = v10;
        *(a2 + 3) = v11;
      }

      v5 = (v5 + 1);
    }

    while (v4 > v5);
  }

  *(a2 + 2) = *(a2 + 3);

  os_unfair_lock_unlock((a1 + 16392));
}

uint64_t GuardMalloc_check(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16392));
  v2 = vm_page_size;
  if (vm_page_size == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 1;
    do
    {
      v6 = *(*(a1 + 16400) + 8 * v4);
      if (v6)
      {
        do
        {
          if (GuardMalloc_validateHeader(a1, *v6, v6[1]))
          {
            v3 = v3;
          }

          else
          {
            v3 = 0;
          }

          v6 = v6[2];
        }

        while (v6);
        v2 = vm_page_size;
      }

      v4 = ++v5;
    }

    while (v2 - 1 > v5);
  }

  os_unfair_lock_unlock((a1 + 16392));
  return v3;
}

uint64_t GuardMalloc_zone_locked(os_unfair_lock_s *a1)
{
  if (!os_unfair_lock_trylock(a1 + 4098))
  {
    return 1;
  }

  os_unfair_lock_unlock(a1 + 4098);
  return 0;
}

uint64_t GuardMalloc_enumerator()
{
  v0 = __chkstk_darwin();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = GuardMalloc_defaultReader;
  }

  v25 = 0;
  result = v10(v0, v1, 16424, &v25);
  if (result)
  {
    return result;
  }

  if ((v6 & 4) != 0)
  {
    v26[0] = *(v25 + 16400);
    v26[1] = 8 * vm_page_size;
    v12 = *(v25 + 16408);
    v28[0] = v12;
    v13 = 1;
    if (v12)
    {
      while (1)
      {
        v14 = v13;
        v15 = vm_page_size;
        v16 = &v26[2 * v13];
        *v16 = v12;
        v16[1] = v15;
        v13 = (v13 + 1);
        if (v14 >= 0xFF)
        {
          v4(v9, v8, 4, v26, v13);
          v13 = 0;
          v12 = v28[0];
          v15 = vm_page_size;
        }

        result = v10(v9, v12, v15, v28);
        if (result)
        {
          return result;
        }

        v12 = *v28[0];
        v28[0] = v12;
        if (!v12)
        {
          if (!v13)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v4(v9, v8, 4, v26, v13);
  }

  if ((v6 & 3) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = 0;
  result = v10(v9, *(v25 + 16400), 8 * vm_page_size, &v24);
  if (result)
  {
    return result;
  }

  if (vm_page_size == 1)
  {
    return 0;
  }

  v17 = 0;
  while (1)
  {
    v23 = *(v24 + 8 * v17);
    if (v23)
    {
      break;
    }

LABEL_39:
    if (++v17 >= vm_page_size - 1)
    {
      return 0;
    }
  }

  LODWORD(v18) = 0;
  while (1)
  {
    result = (v10)(v9);
    if (result)
    {
      return result;
    }

    if ((v6 & 2) != 0)
    {
      v19 = vm_page_size;
      v20 = -vm_page_size;
      v21 = &v27[v18];
      *v21 = *v23 & -vm_page_size;
      v21[1] = (v19 + v23[1] - 1) & v20;
    }

    if (v6)
    {
      v22 = &v28[2 * v18];
      *v22 = *v23;
      v22[1] = v23[1];
    }

    if (v18 < 0xFF)
    {
      v18 = (v18 + 1);
    }

    else
    {
      if ((v6 & 2) != 0)
      {
        v4(v9, v8, 2, v27, (v18 + 1));
      }

      if (v6)
      {
        v4(v9, v8, 1, v28, (v18 + 1));
      }

      v18 = 0;
    }

    v23 = v23[2];
    if (!v23)
    {
      if (v18)
      {
        if ((v6 & 2) != 0)
        {
          v4(v9, v8, 2, v27, v18);
        }

        if (v6)
        {
          v4(v9, v8, 1, v28, v18);
        }
      }

      goto LABEL_39;
    }
  }
}

uint64_t GMmalloc_default_zone()
{
  result = GMmalloc_default_zone_malloc_zone_default;
  if (!GMmalloc_default_zone_malloc_zone_default)
  {
    GuardMalloc_checkEnviron();
    GMmalloc_default_zone_malloc_zone_default = GuardMalloc_createZone(0);
    GMmalloc_set_zone_name(GMmalloc_default_zone_malloc_zone_default, "DefaultMallocZone");
    malloc_zone_register(GMmalloc_default_zone_malloc_zone_default);
    malloc_default_zone();
    return GMmalloc_default_zone_malloc_zone_default;
  }

  return result;
}

uint64_t GMmprotect(void *a1, size_t a2, int a3)
{
  if (a3 == 1 && malloc_zones == a1)
  {
    v6 = GMmalloc_default_zone();
    if (malloc_num_zones)
    {
      if (*malloc_zones != v6)
      {
        v7 = 0;
        while (1)
        {
          v8 = *(malloc_zones + 8 * v7);
          if (v8 == GMmalloc_default_zone())
          {
            break;
          }

          if (++v7 >= malloc_num_zones)
          {
            goto LABEL_10;
          }
        }

        v9 = *malloc_zones;
        *malloc_zones = *(malloc_zones + 8 * v7);
        *(malloc_zones + 8 * v7) = v9;
      }
    }
  }

LABEL_10:

  return mprotect(a1, a2, a3);
}

malloc_zone_t *GMmalloc_create_zone()
{
  malloc_default_zone();
  Zone = GuardMalloc_createZone(0);
  malloc_zone_register(Zone);
  return Zone;
}

void GMmalloc_set_zone_name(malloc_zone_t *zone, char *__s)
{
  if (__s && (introspect = zone->introspect) != 0 && (v5 = zone->introspect, introspect == GuardMalloc_introspect) && (v6 = strlen(__s), (v7 = malloc_type_zone_malloc(zone, v6 + 13, 0x4CFED19CuLL)) != 0))
  {
    v8 = v7;
    strlcpy(v7, "GuardMalloc-", v6 + 13);
    strlcat(v8, __s, v6 + 13);
    malloc_set_zone_name(zone, v8);

    malloc_zone_free(zone, v8);
  }

  else
  {

    malloc_set_zone_name(zone, __s);
  }
}

uint64_t GMmalloc_default_purgeable_zone()
{
  malloc_default_zone();
  if (!GMmalloc_default_purgeable_zone_dpz)
  {
    Zone = GuardMalloc_createZone(1);
    malloc_zone_register(Zone);
    GMmalloc_set_zone_name(Zone, "DefaultPurgeableMallocZone");
    v1 = 0;
    atomic_compare_exchange_strong(&GMmalloc_default_purgeable_zone_dpz, &v1, Zone);
    if (v1)
    {
      malloc_destroy_zone(Zone);
    }
  }

  return GMmalloc_default_purgeable_zone_dpz;
}

uint64_t GMmalloc_make_purgeable(const void *a1)
{
  if (!malloc_zone_from_ptr(a1))
  {
    malloc_printf_for_ABORT();
    abort();
  }

  state = 12289;
  return vm_purgable_control(mach_task_self_, a1, 0, &state);
}

uint64_t GMmalloc_make_nonpurgeable(const void *a1)
{
  if (!malloc_zone_from_ptr(a1))
  {
    malloc_printf_for_ABORT();
    abort();
  }

  state = 0;
  vm_purgable_control(mach_task_self_, a1, 0, &state);
  if (state == 2)
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

void *GMmalloc(size_t a1)
{
  GMmalloc_default_zone();

  return malloc_type_malloc(a1, 0x393A7099uLL);
}

void GMfree(void *a1)
{
  if (a1)
  {
    GMmalloc_default_zone();
    v2 = malloc_zone_from_ptr(a1);
    if (!v2)
    {
      malloc_printf_for_ABORT();
      abort();
    }

    malloc_zone_free(v2, a1);
  }
}

void *GMrealloc(void *a1, size_t a2)
{
  GMmalloc_default_zone();
  if (a1 && !malloc_zone_from_ptr(a1))
  {
    malloc_printf_for_ABORT();
    abort();
  }

  return malloc_type_realloc(a1, a2, 0x44A32BF2uLL);
}

void *GMcalloc(size_t a1, size_t a2)
{
  GMmalloc_default_zone();

  return malloc_type_calloc(a1, a2, 0xA689135uLL);
}

void *GMvalloc(size_t a1)
{
  GMmalloc_default_zone();

  return malloc_type_valloc(a1, 0x289FD814uLL);
}

size_t GMmalloc_good_size(size_t a1)
{
  GMmalloc_default_zone();

  return malloc_good_size(a1);
}

uint64_t GMposix_memalign(void **a1, size_t a2, size_t a3)
{
  GMmalloc_default_zone();

  return malloc_type_posix_memalign(a1, a2, a3, 0x7E191AA5uLL);
}

uint64_t GM_malloc_fork_prepare()
{
  os_unfair_lock_lock(&addrLock);

  return __malloc_fork_prepare();
}

uint64_t GM_malloc_fork_parent()
{
  os_unfair_lock_unlock(&addrLock);

  return __malloc_fork_parent();
}

void breakIfDebugging()
{
  if (amIBeingDebugged())
  {
    malloc_printf("Explicitly trapping into debugger!!!\n");
    v0 = pthread_self();

    pthread_kill(v0, 5);
  }

  else
  {
    malloc_printf("If you run under the debugger, it will automatically break here.\n\n");
    if (abortOnError == 1)
    {
      abort();
    }
  }
}

uint64_t amIBeingDebugged()
{
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
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  LODWORD(v3) = 0;
  *v33 = 0xE00000001;
  v34 = 1;
  v35 = getpid();
  v1 = 648;
  sysctl(v33, 4u, v2, &v1, 0, 0);
  return (v3 >> 11) & 1;
}

void malloc_printf(const char *format, ...)
{
  os_unfair_lock_lock(&mallocPrintfLock);
  malloc_printf_va(gmallocPrintfBuffer);
  os_unfair_lock_unlock(&mallocPrintfLock);
}

uint64_t malloc_printf_va(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = _simple_string();
    *v2 = 0;
    _simple_sresize();
    if (!amIBeingDebugged())
    {
      _simple_sappend();
      if (!_simple_vsprintf())
      {
        _simple_string();
        _simple_asl_log();
      }

      *v2 = 0;
      _simple_sresize();
    }

    v3 = getprogname();
    if (v3)
    {
      *v3;
    }

    getpid();
    _simple_sprintf();
    result = _simple_vsprintf();
    if (!result)
    {
      v4 = gmallocLogFile;

      return __simple_put(v1, v4);
    }
  }

  return result;
}

void malloc_printf_for_ABORT()
{
  os_unfair_lock_lock(&mallocPrintfLock);
  malloc_printf_va(gmallocPrintfBufferForAbort);
  qword_10098 = _simple_string();
  os_unfair_lock_unlock(&mallocPrintfLock);
}

void GuardMalloc_checkEnviron()
{
  v0 = *_NSGetEnviron();
  gmallocPrintfBuffer = _simple_salloc();
  gmallocPrintfBufferForAbort = _simple_salloc();
  v1 = getenv("MALLOC_LOG_FILE");
  if (v1)
  {
    v2 = v1;
    if (dyld_process_is_restricted())
    {
      malloc_printf("Process is restricted, so not opening %s %s. Using stderr instead.\n");
    }

    else
    {
      v3 = open(v2, 16777737, 420);
      if (v3 < 0)
      {
        malloc_printf("Could not open %s %s, thus using stderr\n");
      }

      else
      {
        gmallocLogFile = v3;
      }
    }
  }

  v4 = *v0;
  v5 = GuardMalloc_introspect;
  if (!*v0)
  {
    if (allowReads)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v11 = 0;
  v6 = (v0 + 1);
  do
  {
    if (!strncmp(v4, "MALLOC_PROTECT_BEFORE=", 0x16uLL))
    {
      protectBefore = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_CHECK_HEADER=0", 0x15uLL) || !strncmp(v4, "MALLOC_CHECK_HEADER=NO", 0x16uLL))
    {
      checkHeader = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_CHECK_HEADER=", 0x14uLL))
    {
      checkHeader = 0;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_FILL_SPACE=", 0x12uLL) || !strncmp(v4, "MallocScribble=", 0xFuLL))
    {
      fillSpace = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_ALLOW_READS=", 0x13uLL))
    {
      allowReads = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_WARN_ZERO=", 0x11uLL))
    {
      warnAllocZero = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_STRICT_SIZE=", 0x13uLL))
    {
      v8 = 1;
      goto LABEL_42;
    }

    if (!strncmp(v4, "MALLOC_WORD_SIZE=", 0x11uLL))
    {
      v8 = 2;
      goto LABEL_42;
    }

    if (!strncmp(v4, "MALLOC_ALTIVEC_SIZE=", 0x14uLL))
    {
      malloc_printf("The name MALLOC_ALTIVEC_SIZE is deprecated.  Please switch to using MALLOC_VECTOR_SIZE instead.\n");
LABEL_41:
      v8 = 3;
LABEL_42:
      setAllocationSize(v8);
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_VECTOR_SIZE=", 0x13uLL))
    {
      goto LABEL_41;
    }

    if (!strncmp(v4, "MALLOC_PERMIT_INSANE_REQUESTS=", 0x1EuLL) || !strncmp(v4, "MALLOC_ALLOW_LARGE_REQUESTS=", 0x1CuLL))
    {
      permitInsaneRequests = 1;
      goto LABEL_32;
    }

    if (!strncmp(v4, "MALLOC_MAXIMUM_VM=", 0x12uLL))
    {
      maximum_allowed_vm_size = strtoll(v4 + 18, 0, 10);
      malloc_printf("Maximum VM size is %lu\n");
      goto LABEL_32;
    }

    if (!strncmp(v4, "ENABLE_ADDRESS_REUSE=", 0x15uLL))
    {
      malloc_printf("VM address reuse enabled (the old, slow GuardMalloc behavior)\n");
LABEL_46:
      enable_address_reuse = 0;
      goto LABEL_32;
    }

    if (!strncmp(v4, "DISABLE_ADDRESS_REUSE=", 0x16uLL))
    {
      if (!vm_disable_address_reuse())
      {
        goto LABEL_46;
      }

      v11 = 1;
      enable_address_reuse = 1;
    }

    else if (!strncmp(v4, "MallocErrorAbort=", 0x11uLL) || !strncmp(v4, "MallocCorruptionAbort=", 0x16uLL))
    {
      abortOnError = 1;
    }

    else if (!strncmp(v4, "MallocHelp=", 0xBuLL))
    {
      malloc_printf("environment variables that can be set for GuardMalloc:\n- MALLOC_PROTECT_BEFORE protects against buffer underruns by placing buffers at start of VM pages\n- MALLOC_FILL_SPACE fills buffer with 0xaa upon creation, to help catch uninitialized memory problems\n     (similar to MallocScribble)\n- MALLOC_ALLOW_READS makes guard pages readable so that reads of bytes in guard pages don't cause crashes\n- MALLOC_VECTOR_SIZE places allocations on 16-byte boundaries for use with vector instructions\n     (this is the default)\n- MALLOC_WORD_SIZE places allocations on 4-byte boundaries\n- MALLOC_STRICT_SIZE places allocations on single-byte boundaries, aligned with end of page\n     unless MALLOC_PROTECT_BEFORE is set\n- MALLOC_ALLOW_LARGE_REQUESTS allows allocations greater than 100MB without error\n- MALLOC_CHECK_HEADER=NO turns off validating malloc block header when block is freed or reallocated\n\n");
    }

LABEL_32:
    v7 = *v6++;
    v4 = v7;
  }

  while (v7);
  v5 = GuardMalloc_introspect;
  if ((allowReads & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v11)
  {
    malloc_printf("MALLOC_ALLOW_READS requires VM address reuse to be enabled, but it was explicitly disabled with DISABLE_ADDRESS_REUSE\n");
    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 552) = 0;
  malloc_printf("MALLOC_ALLOW_READS is set;  this will double VM region use by explicitly allocating guard pages on which to set read permission.\n");
LABEL_55:
  if (*(v5 + 552) == 1)
  {
    vm_disable_address_reuse();
  }

  if (allocationStrategy > 1)
  {
    if (allocationStrategy == 2)
    {
      v9 = " - Applications using vector instructions (e.g., SSE) may fail.\n";
      v10 = " - Small buffer overruns may not be noticed.\n";
      malloc_printf("Allocations will be placed on word (4 byte) boundaries.\n");
    }

    else
    {
LABEL_62:
      v9 = " - Applications using vector instructions (e.g., SSE) should work.\n";
      v10 = " - Some buffer overruns may not be noticed.\n";
      malloc_printf("Allocations will be placed on 16 byte boundaries.\n");
    }
  }

  else
  {
    if (!allocationStrategy)
    {
      allocationStrategy = 3;
      goto LABEL_62;
    }

    malloc_printf("Allocations will be placed on byte boundaries.\n");
    v9 = " - Applications using vector instructions (e.g., SSE) may fail.\n";
    v10 = " - Applications expecting word-aligned pointers may fail (such as Carbon applications)\n";
    if (!protectBefore)
    {
      malloc_printf(" - Overrunning a buffer will cause an immediate crash. (Good.)\n");
    }
  }

  malloc_printf(v10);
  malloc_printf(v9);
  malloc_printf("version 064572.95.1\n");
  qword_10098 = "This process is running with libgmalloc.dylib (GuardMalloc) which may have forced the crash due to a memory access error.\n";
}

uint64_t setAllocationSize(uint64_t result)
{
  if (allocationStrategy)
  {
    malloc_printf("Only one of MALLOC_STRICT_SIZE, MALLOC_WORD_SIZE, or MALLOC_VECTOR_SIZE is permitted.\n", v1, v2);
    exit(1);
  }

  allocationStrategy = result;
  return result;
}

uint64_t vm_disable_address_reuse()
{
  v0 = 1;
  v2 = 1;
  if (sysctlbyname("debug.toggle_address_reuse", 0, 0, &v2, 4uLL) == -1)
  {
    if (*__error() != 2)
    {
      perror("Sysctl (debug.toggle_address_reuse) error");
    }

    v0 = 0;
    enable_address_reuse = 0;
  }

  return v0;
}

uint64_t GuardMalloc_validateHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((checkHeader & 1) == 0 && !*(a1 + 16388))
  {
    v3 = (a2 - 8);
    if (protectBefore)
    {
      v3 = (a2 + a3);
    }

    if (*v3 != 0xDEADBEEFDEADBEEFLL)
    {
      malloc_printf_for_ABORT();
      abort();
    }
  }

  return 1;
}

void GuardMalloc_freeInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GuardMalloc_validateHeader(a1, a2, a3);
  if (protectBefore)
  {
    if (enable_address_reuse)
    {
      v5 = 0;
    }

    else
    {
      v5 = vm_page_size;
    }

    v6 = a2 - v5;
    v7 = -vm_page_size;
  }

  else
  {
    v7 = -vm_page_size;
    v6 = (a2 - 8) & -vm_page_size;
    if (enable_address_reuse)
    {
      v5 = 0;
    }

    else
    {
      v5 = vm_page_size;
    }
  }

  v8 = a3 + 7;
  v9 = vm_deallocate(mach_task_self_, v6, ((a3 + 7 + vm_page_size) & v7) + v5);
  os_unfair_lock_lock(&addrLock);
  v10 = vm_page_size;
  if (enable_address_reuse)
  {
    v10 = 0;
  }

  guardmalloc_currently_allocated_memory = guardmalloc_currently_allocated_memory - v10 - ((v8 + vm_page_size) & -vm_page_size);
  os_unfair_lock_unlock(&addrLock);
  if (v9)
  {
    v11 = mach_error_string(v9);
    malloc_printf("vm_deallocate: %s\n", v11);
  }
}

vm_address_t GuardMalloc_createZone(int a1)
{
  address = 0;
  v2 = vm_allocate(mach_task_self_, &address, 0x4028uLL, 16777217);
  if (v2)
  {
    v3 = mach_error_string(v2);
    malloc_printf("could not allocate new zone: %s\n", v3);
    return 0;
  }

  else
  {
    v5 = address;
    *address = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = GuardMalloc_size;
    *(v5 + 24) = GuardMalloc_malloc;
    *(v5 + 32) = GuardMalloc_calloc;
    *(v5 + 40) = GuardMalloc_valloc;
    *(v5 + 48) = GuardMalloc_free;
    *(v5 + 56) = GuardMalloc_realloc;
    *(v5 + 64) = GuardMalloc_destroyZone;
    *(v5 + 72) = 0;
    *(v5 + 80) = GuardMalloc_batch_malloc;
    *(v5 + 88) = GuardMalloc_batch_free;
    *(v5 + 96) = GuardMalloc_introspect;
    *(v5 + 112) = GuardMalloc_memalign;
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    *(v5 + 136) = 0;
    *(v5 + 104) = 10;
    v6 = address;
    v7 = address + 0x4000;
    *(address + 0x4000) = 959604617;
    *(v7 + 4) = a1;
    GuardMalloc_initializeBuckets(v6);
    return address;
  }
}

unint64_t GuardMalloc_size(uint64_t a1, const void *a2)
{
  v3 = GuardMalloc_nodeSize(a1, a2);
  if (v3 >= 0x5F5E101 && (permitInsaneRequests & 1) == 0)
  {
    malloc_printf("\n");
    malloc_printf("malloc_size is returning a suspiciously large value:  %ld bytes\n", v3);
    malloc_printf("If this is expected behavior, launch your executable with the environment variable MALLOC_ALLOW_LARGE_REQUESTS set to any value to circumvent this check.\n");
    breakIfDebugging();
  }

  if (protectBefore)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4 && ((v3 + a2) & 0xFFF) != 0)
  {
    malloc_printf("malloc_size of %p is %ld -- seems wrong\n", a2, v3);
    breakIfDebugging();
  }

  return v3;
}

void *GuardMalloc_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = !is_mul_ok(a3, a2);
  if (a2 >= 2 && a3 && v3)
  {
    malloc_printf("calloc can't allocate %lu item of size %lu.\n", a2, a3);
    breakIfDebugging();
  }

  else
  {
    v4 = a3 * a2;
    v5 = GuardMalloc_malloc(a1, a3 * a2);
    if (v5)
    {
      v6 = v5;
      bzero(v5, v4);
      return v6;
    }
  }

  return 0;
}

void GuardMalloc_free(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = GuardMalloc_noteFree(a1, a2);
    if (!v4)
    {
      GuardMalloc_free_cold_1(a1);
    }

    GuardMalloc_freeInternal(a1, a2, v4);
  }
}

unint64_t GuardMalloc_realloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  if (a2 && !a3)
  {
    GuardMalloc_free(a1, a2);
    return 0;
  }

  if (a2)
  {
    v6 = GuardMalloc_nodeSize(a1, a2);
    if (!v6)
    {
      GuardMalloc_realloc_cold_1(a1);
    }

    v7 = v6;
    GuardMalloc_validateHeader(a1, v4, v6);
    if (v7 == a3)
    {
      return v4;
    }

    v8 = GuardMalloc_malloc(a1, a3);
    if (v8)
    {
      v9 = v8;
      if (v7 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v7;
      }

      memcpy(v8, v4, v10);
      GuardMalloc_free(a1, v4);
      return v9;
    }

    return 0;
  }

  return GuardMalloc_malloc(a1, a3);
}

uint64_t GuardMalloc_batch_malloc(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (1)
  {
    v9 = GuardMalloc_malloc(a1, a2);
    *(a3 + 8 * v7) = v9;
    if (!v9)
    {
      break;
    }

    if (v8 == ++v7)
    {
      return v8;
    }
  }

  return v7;
}

void GuardMalloc_batch_free(uint64_t a1, unint64_t *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *a2++;
      GuardMalloc_free(a1, v6);
      --v3;
    }

    while (v3);
  }
}

unint64_t GuardMalloc_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (!allocationStrategy)
  {
LABEL_4:
    v4 = a2 > 4;
    v5 = 4;
    goto LABEL_6;
  }

  if (allocationStrategy != 3)
  {
    if (allocationStrategy != 2)
    {
      return GuardMalloc_mallocInternal(a1, a3, v3);
    }

    goto LABEL_4;
  }

  v4 = a2 > 0x10;
  v5 = 16;
LABEL_6:
  if (!v4)
  {
    v3 = v5;
  }

  return GuardMalloc_mallocInternal(a1, a3, v3);
}

unint64_t GuardMalloc_mallocInternal(uint64_t a1, unint64_t a2, vm_size_t a3)
{
  v4 = a2;
  if (a2 >= 0x5F5E101 && (permitInsaneRequests & 1) == 0)
  {
    malloc_printf("Attempting excessively large memory allocation:  %lu bytes\n", a2);
    malloc_printf("If you really wanted to allocate so much memory, launch your executable with the environment variable MALLOC_ALLOW_LARGE_REQUESTS set to any value to circumvent this check.\n");
    breakIfDebugging();
  }

  if (!__CFADD__(v4, a3))
  {
    if (!v4)
    {
      if (warnAllocZero == 1)
      {
        malloc_printf("requested malloc of 0 bytes.\n");
        v4 = 0;
      }

      else
      {
        v4 = qword_3300[allocationStrategy];
      }
    }

    v6 = vm_page_size;
    if ((v4 & (a3 - 1)) != 0)
    {
      v7 = (v4 & -a3) + a3;
    }

    else
    {
      v7 = v4;
    }

    if (a3 < 2)
    {
      v7 = v4;
    }

    if (vm_page_size < a3)
    {
      v8 = ((v4 + a3) & -vm_page_size) + vm_page_size;
    }

    else
    {
      v8 = v7;
    }

    if (enable_address_reuse)
    {
      v6 = 0;
    }

    v9 = ((vm_page_size + v8 + 8 - 1) & -vm_page_size) + v6;
    os_unfair_lock_lock(&addrLock);
    v10 = v9 + guardmalloc_currently_allocated_memory;
    guardmalloc_currently_allocated_memory += v9;
    if (maximum_allowed_vm_size && v10 > maximum_allowed_vm_size)
    {
      malloc_printf_for_ABORT();
      if ((permitInsaneRequests & 1) == 0)
      {
        breakIfDebugging();
      }

      guardmalloc_currently_allocated_memory -= v9;
      os_unfair_lock_unlock(&addrLock);
      return 0;
    }

    v12 = getVMRegionTag_large_threshold;
    if (!getVMRegionTag_large_threshold)
    {
      v48 = 8;
      address = 0;
      v13 = sysctlbyname("hw.memsize", &address, &v48, 0, 0);
      v14 = (address & 0xFFFFFFFFC0000000) != 0 && v13 == 0;
      v12 = 15360;
      if (v14)
      {
        v12 = 130048;
      }

      getVMRegionTag_large_threshold = v12;
    }

    v47 = v8 + 8;
    if (v12 >= v8)
    {
      v15 = 0x2000000;
    }

    else
    {
      v15 = 50331648;
    }

    if (v8 < 0x3F1)
    {
      v15 = 117440512;
    }

    v16 = v15 | enable_address_reuse;
    v46 = a1;
    if (*(a1 + 16388))
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = nextAddr;
    if (!HIDWORD(nextAddr))
    {
      v18 = 0x100000000;
      nextAddr = 0x100000000;
    }

    v19 = 0;
    v20 = v18;
    while (1)
    {
      address = v20;
      if (!vm_allocate(mach_task_self_, &address, v9, v17))
      {
        break;
      }

      v20 = nextAddr + vm_page_size;
      if (nextAddr + vm_page_size > 0xFBFFFFFFFLL)
      {
        v20 = 0x100000000;
        v19 = 1;
      }

      nextAddr = v20;
      if (v19)
      {
        v21 = v20 > v18;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        goto LABEL_53;
      }
    }

    v22 = address + v9;
    if (address + v9 > 0xFBFFFFFFFLL)
    {
      v22 = 0x100000000;
    }

    nextAddr = v22;
    v23 = vm_page_size;
    if (vm_page_size >= a3)
    {
      v31 = a1;
      v32 = v8 + 8;
      v24 = GuardMalloc_introspect;
    }

    else
    {
      v24 = GuardMalloc_introspect;
      if (enable_address_reuse)
      {
        v25 = 0;
      }

      else
      {
        v25 = vm_page_size;
      }

      if (protectBefore)
      {
        v23 = v25;
      }

      v26 = address + v23;
      v27 = (a3 + v26 - 1) & -a3;
      v28 = v27 - v26;
      v29 = v27 - v26;
      if (v27 == v26)
      {
        v30 = 0;
      }

      else
      {
        v33 = vm_deallocate(mach_task_self_, address, v27 - v26);
        v30 = v33;
        if (v33)
        {
          v34 = mach_error_string(v33);
          malloc_printf("error vm_deallocating leading alignment pages: %s\n", v34);
        }
      }

      if (a3 != v29)
      {
        v35 = vm_deallocate(mach_task_self_, v9 - (a3 - v28) + address, a3 - v28);
        if (v35)
        {
          v36 = mach_error_string(v35);
          malloc_printf("error vm_deallocating trailing alignment pages: %s\n", v36);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }
      }

      address += v29;
      v8 -= a3;
      v9 -= a3;
      if (v30)
      {
LABEL_53:
        guardmalloc_currently_allocated_memory -= v9;
        os_unfair_lock_unlock(&addrLock);
        ABORTING_DUE_TO_OUT_OF_MEMORY();
      }

      v32 = v47 - a3;
      v31 = v46;
    }

    os_unfair_lock_unlock(&addrLock);
    if (!v9)
    {
      malloc_printf("byteCount is zero!  Something really bad happened!\n");
    }

    if (fillSpace == 1)
    {
      memset(address, 170, v9);
    }

    v37 = *(v24 + 552);
    v38 = vm_page_size;
    if (v37)
    {
      v38 = 0;
    }

    if (protectBefore)
    {
      v11 = v38 + address;
      *(v38 + address + v8) = 0xDEADBEEFDEADBEEFLL;
      if ((v37 & 1) == 0)
      {
        v39 = allowReads;
        v40 = mach_task_self_;
        v41 = address;
        goto LABEL_84;
      }
    }

    else
    {
      v42 = (v9 - v32 + address - v38);
      *v42 = 0xDEADBEEFDEADBEEFLL;
      v11 = (v42 + 1);
      if ((v37 & 1) == 0)
      {
        v39 = allowReads;
        v40 = mach_task_self_;
        v41 = v11 + v32 - 8;
LABEL_84:
        v43 = vm_protect(v40, v41, vm_page_size, 0, v39);
        if (v43)
        {
          v44 = mach_error_string(v43);
          malloc_printf("vm_protect: %s\n", v44);
        }
      }
    }

    GuardMalloc_noteAllocation(v31, v11, v8);
    return v11;
  }

  malloc_printf_for_ABORT();
  breakIfDebugging();
  return 0;
}

void GuardMalloc_free_cold_1(uint64_t a1)
{
  *(a1 + 72);
  malloc_printf_for_ABORT();
  abort();
}

void GuardMalloc_realloc_cold_1(uint64_t a1)
{
  *(a1 + 72);
  malloc_printf_for_ABORT();
  abort();
}