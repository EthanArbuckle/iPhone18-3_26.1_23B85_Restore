uint64_t xzm_malloc_zone_malloc_type_memalign_slow(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = malloc_get_thread_options() << 27;
  if (a3 <= 0x8000 && (*(a1 + 360) & 0x80) != 0)
  {
    if (*(a1 + 240))
    {
      v10 = *(a1 + 240);
    }

    else
    {
      v10 = a1;
    }

    v11 = v8 & 0x40000000;
  }

  else
  {
    v11 = v8 & 0x40000000;
    v10 = a1;
  }

  _xzm_memalign(v10, a2, a3, a4, v11, v9);
  v13 = v12;
  if (v12 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v13;
}

uint64_t xzm_malloc_zone_malloc_type_malloc_with_options_slow(uint64_t a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, int8x8_t a6)
{
  v7 = a1;
  if (a3 <= 0x8000 && (*(a1 + 360) & 0x80) != 0 && *(a1 + 240))
  {
    a1 = *(a1 + 240);
  }

  xzm_malloc_zone_malloc_type_malloc_with_options(a1, a2, a3, a4, a5, a6);
  v9 = v8;
  if ((a4 & 1) == 0 && v8 && (*(v7 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v9;
}

uint64_t malloc_gdb_po_unsafe()
{
  if (xmmword_1EAC7F7A0 && xmmword_1EAC7F7A0())
  {
    return 1;
  }

  v1 = malloc_num_zones;
  if (malloc_num_zones)
  {
    for (i = malloc_zones; ; i += 8)
    {
      if (*(*i + 104) >= 5u)
      {
        v3 = *(*(*i + 96) + 64);
        if (v3)
        {
          if (v3())
          {
            break;
          }
        }
      }

      if (!--v1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t zeroify_scalable_zone(uint64_t result)
{
  if (default_zone == result)
  {
    *(result + 24) = legacy_zeroing_large_malloc;
    *(result + 40) = legacy_zeroing_large_valloc;
  }

  return result;
}

uint64_t legacy_zeroing_large_malloc(uint64_t a1, unint64_t a2)
{
  v2 = lite_zone;
  if (a2 < 0x1FC01)
  {
    if (!lite_zone)
    {
      v2 = *malloc_zones;
    }

    return (*(v2 + 24))(v2, a2);
  }

  else
  {
    if (!lite_zone)
    {
      v2 = *malloc_zones;
    }

    return (*(v2 + 32))(v2, 1, a2);
  }
}

uint64_t legacy_zeroing_large_valloc(uint64_t a1, uint64_t a2)
{
  v2 = lite_zone;
  if (!lite_zone)
  {
    v2 = *malloc_zones;
  }

  v3 = (*(v2 + 40))(v2, a2);
  _platform_memset();
  return v3;
}

uint64_t malloc_engaged_nano()
{
  if (initial_nano_zone | initial_xzone_zone)
  {
    return _malloc_engaged_nano;
  }

  else
  {
    return 0;
  }
}

void malloc_create_legacy_default_zone()
{
  legacy_scalable_zone = create_legacy_scalable_zone(0, malloc_debug_flags);
  v1 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v3 = *malloc_zones;
  v4 = *(*malloc_zones + 72);
  if (v4 && !MEMORY[0x193ACD740](v4, "DefaultMallocZone"))
  {
    malloc_set_zone_name(v3, 0);
  }

  malloc_set_zone_name(legacy_scalable_zone, "DefaultMallocZone");
  malloc_zone_register_while_locked(legacy_scalable_zone, 1);
  v5 = *(StatusReg + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {

    os_unfair_lock_unlock(&_malloc_lock);
  }
}

void malloc_destroy_zone(malloc_zone_t *zone)
{
  malloc_set_zone_name(zone, 0);
  malloc_zone_unregister(zone);
  destroy = zone->destroy;

  (destroy)(zone);
}

void malloc_zone_unregister(malloc_zone_t *zone)
{
  if (malloc_num_zones)
  {
    v2 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    if (malloc_num_zones)
    {
      v4 = 0;
      while (*(malloc_zones + v4) != zone)
      {
        v4 += 8;
        if (8 * malloc_num_zones == v4)
        {
          goto LABEL_8;
        }
      }

      v7 = 8 * malloc_num_zones_allocated;
      mprotect(malloc_zones, v7, 3);
      v8 = malloc_num_zones;
      *(malloc_zones + v4) = *(malloc_zones + malloc_num_zones - 1);
      malloc_num_zones = v8 - 1;
      mprotect(malloc_zones, v7, 1);
      v9 = malloc_num_zones;
      if (malloc_num_zones >= initial_num_zones)
      {
        v9 = initial_num_zones;
      }

      if (v9 <= 1)
      {
        v9 = 1;
      }

      initial_num_zones = v9;
      v10 = pFRZCounterLive;
      pFRZCounterLive = pFRZCounterDrain;
      pFRZCounterDrain = v10;
      __dmb(0xBu);
      while (*pFRZCounterDrain)
      {
        MEMORY[0x193ACDCE0](0, 1, 1);
      }

      v11 = *(StatusReg + 24);
      v12 = v11;
      atomic_compare_exchange_strong_explicit(&_malloc_lock, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != v11)
      {

        os_unfair_lock_unlock(&_malloc_lock);
      }
    }

    else
    {
LABEL_8:
      v5 = *(StatusReg + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(&_malloc_lock, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(&_malloc_lock);
      }

      malloc_report(3u, "*** malloc_zone_unregister() failed for %p\n");
    }
  }
}

void malloc_zone_check_fail(uint64_t a1, uint64_t a2)
{
  v4 = _simple_salloc();
  if (v4)
  {
    _simple_sprintf();
    if (!qword_1EAC818E0)
    {
      goto LABEL_13;
    }

    _simple_sappend();
    if (_MergedGlobals >= 2)
    {
      v5 = 1;
      do
      {
        v6 = v5 + 1;
        v12 = *(qword_1EAC818E0 + 8 * v5);
        _simple_sprintf();
        v5 = v6;
      }

      while (v6 < _MergedGlobals);
    }

    _simple_string();
    v7 = "%s\n(Use 'atos' for a symbolic stack)\n";
  }

  else
  {
    malloc_report(0x10u, "*** MallocCheckHeap: FAILED check at operation #%d\n");
    if (!qword_1EAC818E0)
    {
      goto LABEL_13;
    }

    malloc_report(0x10u, "Stack for last operation where the malloc check succeeded: ");
    if (_MergedGlobals >= 2)
    {
      v8 = 1;
      do
      {
        v9 = v8 + 1;
        v13 = *(qword_1EAC818E0 + 8 * v8);
        malloc_report(0x10u, "%p ");
        v8 = v9;
      }

      while (v9 < _MergedGlobals);
    }

    v7 = "\n(Use 'atos' for a symbolic stack)\n";
  }

  malloc_report(0x10u, v7);
LABEL_13:
  if (malloc_check_each >= 2)
  {
    malloc_report(0x10u, "*** Recommend using 'setenv MallocCheckHeapStart %d; setenv MallocCheckHeapEach %d' to narrow down failure\n");
  }

  if (v4)
  {
    _simple_sfree();
  }

  if (malloc_check_abort)
  {
    v10 = 0;
    v11 = 211;
  }

  else
  {
    if (malloc_check_sleep < 1)
    {
      if (malloc_check_sleep < 0)
      {
        malloc_report(5u, "*** Will sleep once for %d seconds to leave time to attach\n");
        v10 = -malloc_check_sleep;
        malloc_check_sleep = 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      malloc_report(5u, "*** Will sleep for %d seconds to leave time to attach\n");
      v10 = malloc_check_sleep;
    }

    v11 = 147;
  }

  malloc_vreport(v11, v10, a1, 0, a2);
}

uint64_t malloc_claimed_address(uint64_t a1)
{
  if (!malloc_num_zones)
  {
    return 0;
  }

  if (lite_zone && malloc_zone_claimed_address(lite_zone, a1))
  {
    return 1;
  }

  if (initial_num_zones)
  {
    v3 = 0;
    while (!malloc_zone_claimed_address(*(malloc_zones + v3), a1))
    {
      if (++v3 >= initial_num_zones)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

LABEL_9:
  v4 = pFRZCounterLive;
  atomic_fetch_add(pFRZCounterLive, 1u);
  if (malloc_num_zones <= initial_num_zones)
  {
LABEL_13:
    result = 0;
  }

  else
  {
    v5 = 8 * initial_num_zones;
    v6 = malloc_num_zones - initial_num_zones;
    while (!malloc_zone_claimed_address(*(malloc_zones + v5), a1))
    {
      v5 += 8;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }

    result = 1;
  }

  atomic_fetch_add(v4, 0xFFFFFFFF);
  return result;
}

void *reallocarrayf_DARWIN_EXTSN(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    return reallocf(a1, a2 * a3);
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  return 0;
}

uint64_t _malloc_zone_malloc_with_options_outlined(malloc_zone_t *zone, size_t alignment, size_t size, unint64_t a4)
{
  if (!zone || (v8 = zone, default_zone == zone))
  {
    v8 = lite_zone;
    if (!lite_zone)
    {
      v8 = *malloc_zones;
    }
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 904);
  if (!v10)
  {
    *(StatusReg + 904) = (v4 >> 2);
  }

  if ((malloc_interposition_compat & 1) != 0 || v8->version < 0xF || (v11 = v8[1].reserved1) == 0)
  {
    if (a4 >= 4)
    {
      _malloc_zone_malloc_with_options_outlined_cold_1();
    }

    if (a4 >= 2 && malloc_has_sec_transition == 1)
    {
      v16 = *(StatusReg + 896);
      v17 = v16 & 0xFFFFFFFFFFFFFF00;
      *(StatusReg + 896) = v16 | 8;
      v18 = v16;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if (alignment < 9)
    {
      if (a4)
      {
        v19 = j__malloc_zone_calloc(v8, 1uLL, size);
      }

      else
      {
        v19 = j__malloc_zone_malloc(v8, size);
      }

      v15 = v19;
    }

    else
    {
      v15 = j__malloc_zone_memalign(v8, alignment, size);
      if (v15 && (a4 & 1) != 0)
      {
        _platform_memset();
      }
    }

    if (a4 >= 2 && malloc_has_sec_transition == 1)
    {
      *(StatusReg + 896) = v17 | v18;
    }
  }

  else
  {
    reserved1 = v8[1].reserved1;
    v13 = malloc_tracing_enabled;
    if (malloc_tracing_enabled == 1)
    {
      kdebug_trace();
      v14 = (v8[1].reserved1)(v8, alignment, size, a4);
    }

    else
    {
      v14 = v11(v8, alignment, size, a4);
    }

    v15 = v14;
    if (malloc_logger)
    {
      if (a4)
      {
        v21 = 74;
      }

      else
      {
        v21 = 10;
      }

      malloc_logger(v21, v8, size, 0, v15, 0);
    }

    if (malloc_simple_stack_logging != 1)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

      goto LABEL_16;
    }

    malloc_report(0x325u, "malloc_with_options (%p/%llu,%llu): ");
    if (v13)
    {
LABEL_16:
      kdebug_trace();
    }
  }

LABEL_33:
  if (!v10)
  {
    *(StatusReg + 904) = 0;
  }

  return v15;
}

uint64_t malloc_memory_event_handler(uint64_t result)
{
  v1 = result;
  if ((result & 0xF0000000) != 0 && (result & 0xFFFFFFF) == 0)
  {
    result = _malloc_register_stack_logger(0);
  }

  if ((malloc_memorystatus_mask_resource_exception_handling & v1) != 0)
  {
    result = _malloc_register_stack_logger(0);
  }

  v2 = *(&msl + 1);
  if (*(&msl + 1))
  {

    return v2(v1);
  }

  return result;
}

void malloc_zone_print_ptr_info(void *ptr)
{
  if (ptr)
  {
    if (malloc_zone_from_ptr(ptr))
    {
      printf("ptr %p in registered zone %p\n");
    }

    else
    {
      printf("ptr %p not in heap\n");
    }
  }
}

BOOLean_t malloc_zone_check(malloc_zone_t *zone)
{
  if (zone)
  {
    check = zone->introspect->check;

    return check();
  }

  else
  {
    if (!malloc_num_zones)
    {
      return 1;
    }

    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v4 + 1;
      if (!(*(*(*(malloc_zones + v4) + 96) + 16))())
      {
        v5 = 0;
      }

      v4 = v6;
    }

    while (v6 < malloc_num_zones);
    return v5;
  }
}

void malloc_zone_print(malloc_zone_t *zone, BOOLean_t verbose)
{
  if (zone)
  {
    print = zone->introspect->print;

    print();
  }

  else if (malloc_num_zones)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      (*(*(*(malloc_zones + v3) + 96) + 24))();
      v3 = v4;
    }

    while (v4 < malloc_num_zones);
  }
}

void malloc_zone_log(malloc_zone_t *zone, void *address)
{
  if (zone)
  {
    log = zone->introspect->log;

    log();
  }

  else if (malloc_num_zones)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      (*(*(*(malloc_zones + v3) + 96) + 32))();
      v3 = v4;
    }

    while (v4 < malloc_num_zones);
  }
}

void DefaultMallocError()
{
  if (!_simple_salloc())
  {
    malloc_report(0x10u, "*** error %d\n");
    qword_1EAC7F640 = "*** DefaultMallocError called";
    abort();
  }

  _simple_sprintf();
  _simple_string();
  malloc_report(0x10u, "%s\n");
  qword_1EAC7F640 = _simple_string();
  abort();
}

uint64_t _malloc_fork_prepare()
{
  v0 = 0;
  v4 = *(&xmmword_1EAC7F7A0 + 1);
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v0, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v0)
  {
    os_unfair_lock_lock_with_options();
  }

  mfm_lock();
  if (malloc_num_zones)
  {
    v1 = 0;
    do
    {
      v2 = v1 + 1;
      (*(*(*(malloc_zones + v1) + 96) + 40))();
      v1 = v2;
    }

    while (v2 < malloc_num_zones);
  }

  if (initial_xzone_zone)
  {
    xzm_force_lock_global_state(initial_xzone_zone);
  }

  result = v4;
  if (v4)
  {

    return v4();
  }

  return result;
}

void _malloc_fork_parent()
{
  v0 = off_1EAC7F7B0;
  if (initial_xzone_zone)
  {
    xzm_force_unlock_global_state(initial_xzone_zone);
  }

  if (v0)
  {
    v0();
  }

  if (malloc_num_zones)
  {
    v1 = 0;
    do
    {
      v2 = v1 + 1;
      (*(*(*(malloc_zones + v1) + 96) + 48))();
      v1 = v2;
    }

    while (v2 < malloc_num_zones);
  }

  mfm_unlock();
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {

    os_unfair_lock_unlock(&_malloc_lock);
  }
}

void _malloc_fork_child()
{
  if (_malloc_entropy_initialized == 1 && initial_nano_zone != 0)
  {
    nanov2_forked_zone(initial_nano_zone);
  }

  v1 = off_1EAC7F7B8;
  if (initial_xzone_zone)
  {
    xzm_force_reinit_lock_global_state(initial_xzone_zone);
  }

  if (v1)
  {
    v1();
  }

  if (malloc_num_zones)
  {
    v2 = 0;
    do
    {
      v3 = *(malloc_zones + v2);
      v4 = *(v3 + 96);
      if (*(v3 + 104) > 8u)
      {
        (*(v4 + 104))();
      }

      else
      {
        (*(v4 + 48))();
      }

      ++v2;
    }

    while (v2 < malloc_num_zones);
  }

  mfm_reinit_lock();
  _malloc_lock = 0;
}

mstats *mstats(mstats *__return_ptr retstr)
{
  memset(&v6, 0, sizeof(v6));
  malloc_zone_statistics(0, &v6);
  blocks_in_use = v6.blocks_in_use;
  size_allocated = v6.size_allocated;
  size_in_use = v6.size_in_use;
  retstr->bytes_total = v6.size_allocated;
  retstr->chunks_used = blocks_in_use;
  retstr->bytes_used = size_in_use;
  retstr->chunks_free = 0;
  retstr->bytes_free = size_allocated - size_in_use;
  return result;
}

BOOLean_t malloc_zone_enable_discharge_checking(malloc_zone_t *zone)
{
  if (zone->version >= 7 && (enable_discharge_checking = zone->introspect->enable_discharge_checking) != 0)
  {
    return enable_discharge_checking();
  }

  else
  {
    return 0;
  }
}

void malloc_zone_disable_discharge_checking(malloc_zone_t *zone)
{
  if (zone->version >= 7)
  {
    disable_discharge_checking = zone->introspect->disable_discharge_checking;
    if (disable_discharge_checking)
    {
      disable_discharge_checking();
    }
  }
}

void malloc_zone_discharge(malloc_zone_t *zone, void *memory)
{
  if ((zone || (zone = malloc_zone_from_ptr(memory)) != 0) && zone->version >= 7)
  {
    discharge = zone->introspect->discharge;
    if (discharge)
    {

      discharge();
    }
  }
}

void malloc_zone_enumerate_discharged_pointers(malloc_zone_t *zone, void *report_discharged)
{
  if (zone)
  {
    if (zone->version >= 7)
    {
      enumerate_discharged_pointers = zone->introspect->enumerate_discharged_pointers;
      if (enumerate_discharged_pointers)
      {

        enumerate_discharged_pointers();
      }
    }
  }

  else
  {
    v3 = malloc_num_zones;
    if (malloc_num_zones)
    {
      v4 = 0;
      v5 = malloc_zones;
      do
      {
        v6 = v5[v4];
        if (*(v6 + 104) >= 7u)
        {
          v7 = *(*(v6 + 96) + 96);
          if (v7)
          {
            v7();
            v5 = malloc_zones;
            v3 = malloc_num_zones;
          }
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }
}

void set_malloc_singlethreaded()
{
  if ((set_malloc_singlethreaded_warned & 1) == 0)
  {
    set_malloc_singlethreaded_warned = 1;
  }
}

void malloc_singlethreaded()
{
  if ((malloc_singlethreaded_warned & 1) == 0)
  {
    malloc_report(3u, "*** OBSOLETE: malloc_singlethreaded()\n");
    malloc_singlethreaded_warned = 1;
  }
}

uint64_t malloc_set_thread_options(uint64_t a1)
{
  if ((a1 & 8) != 0)
  {
    malloc_set_thread_options_cold_1();
  }

  if (a1)
  {
    v2 = a1 | 6;
  }

  else
  {
    v2 = a1;
  }

  result = pgm_thread_set_disabled((v2 >> 1) & 1);
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 896) = a1 & 0xFFFFFFFFFFFFFF00 | v2;
  return result;
}

uint64_t _malloc_register_stack_logger(int a1)
{
  if (malloc_sanitizer_enabled == 1 && a1 == 0)
  {
    return 0;
  }

  if (*(&msl + 1))
  {
    return 1;
  }

  if (_dlopen)
  {
    result = (_dlopen)("/System/Library/PrivateFrameworks/MallocStackLogging.framework/MallocStackLogging", 8);
    if (!result)
    {
      return result;
    }

    if (_register_msl_dylib_pred != -1)
    {
      _malloc_register_stack_logger_cold_1();
    }

    if (*(&msl + 1))
    {
      return 1;
    }

    malloc_report(4u, "failed to load MallocStackLogging.framework\n");
  }

  return 0;
}

uint64_t turn_on_stack_logging(uint64_t a1)
{
  _malloc_register_stack_logger(0);
  v2 = xmmword_1EAC7F7D0;
  if (!xmmword_1EAC7F7D0)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t (*turn_off_stack_logging())(void)
{
  _malloc_register_stack_logger(0);
  result = *(&xmmword_1EAC7F7D0 + 1);
  if (*(&xmmword_1EAC7F7D0 + 1))
  {

    return result();
  }

  return result;
}

uint64_t default_zone_size()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 16))();
}

uint64_t default_zone_destroy()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 64))();
}

uint64_t default_zone_batch_free()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 88))();
}

uint64_t default_zone_pressure_relief()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 128))();
}

uint64_t default_zone_ptr_in_use_enumerator()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (**(v0 + 96))();
}

uint64_t default_zone_check()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 16))();
}

uint64_t default_zone_print()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 24))();
}

uint64_t default_zone_log()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 32))();
}

uint64_t default_zone_force_lock()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 40))();
}

uint64_t default_zone_force_unlock()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 48))();
}

uint64_t default_zone_statistics()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 56))();
}

uint64_t default_zone_locked()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 64))();
}

uint64_t default_zone_reinit_lock()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 104))();
}

uint64_t (*register_msl_dylib(uint64_t (*result)(uint64_t (**)(), uint64_t)))(uint64_t (**)(), uint64_t)
{
  if (result)
  {
    v1 = result;
    *(&msl + 1) = _dlsym(result, "msl_handle_memory_event");
    xmmword_1EAC7F7A0 = _dlsym(v1, "msl_stack_logging_locked");
    *(&xmmword_1EAC7F7A0 + 1) = _dlsym(v1, "msl_fork_prepare");
    off_1EAC7F7B8 = _dlsym(v1, "msl_fork_child");
    off_1EAC7F7B0 = _dlsym(v1, "msl_fork_parent");
    *&xmmword_1EAC7F7D0 = _dlsym(v1, "msl_turn_on_stack_logging");
    *(&xmmword_1EAC7F7D0 + 1) = _dlsym(v1, "msl_turn_off_stack_logging");
    *&xmmword_1EAC7F7C0 = _dlsym(v1, "msl_set_flags_from_environment");
    *(&xmmword_1EAC7F7C0 + 1) = _dlsym(v1, "msl_initialize");
    result = _dlsym(v1, "msl_copy_msl_lite_hooks");
    if (result)
    {

      return set_msl_lite_hooks(result);
    }
  }

  return result;
}

void *malloc_freezedry()
{
  v0 = j__malloc(0x10uLL);
  v1 = malloc_num_zones;
  *v0 = 6;
  *(v0 + 1) = v1;
  *(v0 + 1) = j__calloc(v1, 0x4A00uLL);
  if (malloc_num_zones)
  {
    v2 = 0;
    v3 = 0;
    while (1)
    {
      v4 = MEMORY[0x193ACD740](*(*(malloc_zones + v3) + 72), "DefaultMallocZone");
      v5 = *(v0 + 1);
      if (v4)
      {
        break;
      }

      memcpy(&v5[v2], *(malloc_zones + v3++), 0x4A00uLL);
      v2 += 2368;
      if (v3 >= malloc_num_zones)
      {
        return v0;
      }
    }

    _free(v5);
    _free(v0);
    return 0;
  }

  return v0;
}

uint64_t malloc_jumpstart(uint64_t a1)
{
  if (*a1 != 6)
  {
    return 1;
  }

  if (*(a1 + 4))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(a1 + 8) + v2);
      v4->size = szone_size;
      v4->malloc = frozen_malloc;
      v4->calloc = frozen_calloc;
      v4->valloc = frozen_valloc;
      v4->free = frozen_free;
      v4->realloc = frozen_realloc;
      v4->destroy = frozen_destroy;
      v4->introspect = &szone_introspect;
      malloc_zone_register(v4);
      ++v3;
      v2 += 18944;
    }

    while (v3 < *(a1 + 4));
  }

  return 0;
}

void *frozen_realloc(uint64_t a1, const void *a2, size_t a3)
{
  v5 = szone_size(a1, a2);
  if (v5 >= a3)
  {
    return a2;
  }

  v6 = v5;
  v7 = j__malloc(a3);
  v8 = v7;
  if (v6)
  {
    memcpy(v7, a2, v6);
  }

  return v8;
}

void tiny_print_region_free_list(uint64_t a1, unsigned int a2)
{
  v2 = *((a1 & 0xFFFFFFFFFFF00000) + 4 * a2 + 0x3F28);
  v3 = a1 & 0xFFFFFFFFFFF00000 | 0x4080;
  v4 = ((16 * v2 - 16) + v3);
  if (!*((a1 & 0xFFFFFFFFFFF00000) + 4 * a2 + 0x3F28))
  {
    v4 = 0;
  }

  v5 = *((a1 & 0xFFFFFFFFFFF00000) + 4 * a2 + 0x3F2A);
  v6 = ((16 * v5 - 16) + v3);
  if (!*((a1 & 0xFFFFFFFFFFF00000) + 4 * a2 + 0x3F2A))
  {
    v6 = 0;
  }

  malloc_printf("For region %p, first block: %d (%p), last block: %d (%p)\n", (a1 & 0xFFFFFFFFFFF00000), v2, v4, v5, v6);
}

unint64_t tiny_finalize_region(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 2128);
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 2144) - v3 + 0x100000;
    v6 = v3 >> 4;
    v7 = v5 - (v5 & 0xFFFFFFFFFFF00000 | 0x4080);
    v8 = v7 >> 4;
    if ((v7 & 0xFFFF0) != 0xFBF70)
    {
      v9 = (v5 & 0xFFFFFFFFFFF00000) + 4 * (((v8 + 1) >> 4) & 0xFFE);
      *(v9 + 40) &= ~(1 << (v8 + 1));
    }

    if ((v7 & 0xFFFF0) != 0)
    {
      tiny_previous_free_msize = get_tiny_previous_free_msize(v5);
      if (tiny_previous_free_msize <= v8)
      {
        v11 = tiny_previous_free_msize;
        v12 = ((v8 - tiny_previous_free_msize) >> 4) & 0xFFE;
        v13 = 1 << (v8 - tiny_previous_free_msize);
        if ((*((v5 & 0xFFFFFFFFFFF00000) + 0x28 + 4 * v12) & v13) != 0 && (*((v5 & 0xFFFFFFFFFFF00000) + 0x2C + 4 * v12) & v13) == 0)
        {
          v14 = (v5 & 0xFFFFFFFFFFF00000 | 0x4080) + 16 * (v8 - tiny_previous_free_msize);
          if (v14 + 16 >= (v14 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v14 + 16) & 0xFFFFFFFFFFF00000 | ((((v14 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v14 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
          {
            v15 = 1;
          }

          else
          {
            v15 = *((v5 & 0xFFFFFFFFFFF00000 | 0x4080) + 16 * (v8 - tiny_previous_free_msize) + 0x10);
          }

          if (v15 == tiny_previous_free_msize && v14)
          {
            *((v5 & 0xFFFFFFFFFFF00000) + 0x28 + ((v7 >> 6) & 0x3FF8)) = vand_s8(*((v5 & 0xFFFFFFFFFFF00000) + 0x28 + ((v7 >> 6) & 0x3FF8)), vdup_n_s32(~(1 << v8)));
            tiny_free_list_remove_ptr(v4, a2, v14, tiny_previous_free_msize);
            if (v11 >= 2 && !malloc_zero_policy)
            {
              *(v14 + 16 * v11 - 2) = 0;
            }

            LOWORD(v6) = v11 + v6;
            v5 = v14;
          }
        }
      }
    }

    result = tiny_free_list_add_ptr(v4, a2, v5, v6);
    *(a2 + 2128) = 0;
  }

  *(a2 + 2144) = 0;
  return result;
}

void tiny_free_list_remove_ptr(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if ((a4 - 64) >= 0xFFFFFFC1)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 63;
  }

  v5 = *(a3 + 8);
  v6 = v5;
  v7 = *a3;
  if (*a3)
  {
    if (*(v7 + 8) != a3)
    {
      v14 = *(a1 + 620);
      v16 = *(v7 + 8);
      v15 = "tiny_free_list_remove_ptr: Internal invariant broken (next ptr of prev): ptr=%p, prev_next=%p\n";
      goto LABEL_28;
    }

    *(v7 + 8) = v5;
    if (!v5)
    {
      v8 = 1;
      goto LABEL_11;
    }

LABEL_9:
    if (*v5 == a3)
    {
      v8 = 0;
      *v5 = *a3;
      goto LABEL_11;
    }

    v14 = *(a1 + 620);
    v17 = *v5;
    v15 = "tiny_free_list_remove_ptr: Internal invariant broken (prev ptr of next): ptr=%p, next_prev=%p\n";
LABEL_28:
    malloc_zone_error(v14, 1, v15);
    __break(1u);
    return;
  }

  *(a2 + 8 * v4 + 32) = v5;
  if (v5)
  {
    goto LABEL_9;
  }

  v8 = 1;
  *(a2 + 4 * (v4 >> 5) + 2088) &= ~(1 << v4);
LABEL_11:
  v9 = (a3 & 0xFFFFFFFFFFF00000) + 4 * v4 + 16168;
  v10 = *((a3 & 0xFFFFFFFFFFF00000) + 4 * v4 + 0x3F28);
  v11 = ((a3 + 1032064) >> 4) + 1;
  v12 = *((a3 & 0xFFFFFFFFFFF00000) + 4 * v4 + 0x3F2A);
  if (v11 == v10 && v11 == v12)
  {
    *v9 = 0;
  }

  else if (v11 == v10)
  {
    if (v8)
    {
      purgeable_ptr_in_use_enumerator_cold_1(a1);
    }

    *v9 = ((v6 + 1032064) >> 4) + 1;
  }

  else if (v11 == v12)
  {
    if (!v7)
    {
      purgeable_ptr_in_use_enumerator_cold_1(a1);
    }

    *(v9 + 2) = ((v7 + 1032064) >> 4) + 1;
  }
}

unint64_t tiny_free_list_add_ptr(unint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 - 64 >= 0xFFFFFFC1)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 63;
  }

  v5 = a2 + 32;
  v6 = a3 & 0xFFFFFFFFFFF00000;
  v7 = a3 & 0xFFFFFFFFFFF00000 | 0x4080;
  v8 = a3 - v7;
  v9 = a3 & 0xFFFFFFFFFFF00000 | ((a3 - v7) >> 6) & 0x3FF8;
  v10 = 1 << ((a3 - v7) >> 4);
  v11 = *(v9 + 0x28) | v10;
  v12 = *(v9 + 0x2C) & ~v10;
  v13 = *(a2 + 32 + 8 * v4);
  *(v9 + 40) = v11;
  *(v9 + 44) = v12;
  if (a4 < 2)
  {
    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a3 + 16 * a4 - 2) = a4;
  }

  *(a3 + 16) = a4;
LABEL_8:
  if (!v13)
  {
    *(a2 + 4 * (v4 >> 5) + 2088) |= 1 << v4;
  }

  v14 = (v6 + 4 * v4 + 16168);
  if (*v14)
  {
    v15 = 16 * *v14 - 16;
    if (*(v15 + v7))
    {
      v16 = a3;
      *(*(v15 + v7) + 8) = a3;
    }

    else
    {
      *(v5 + 8 * v4) = a3;
      v16 = a3;
    }

    *a3 = *(v15 + v7);
    *(a3 + 8) = v15 + v7;
    *(v15 + v7) = v16;
    v25 = (v8 >> 4) + 1;
  }

  else
  {
    v17 = *(v5 + 8 * v4);
    if (*((a3 & 0xFFFFFFFFFFF00000) + 0x18) == -1)
    {
      goto LABEL_31;
    }

    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = *(a2 + 2176);
    if (!v18 || v18 == v6)
    {
      goto LABEL_31;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      if (*((v18 & 0xFFFFFFFFFFF00000) + 4 * v4 + 0x3F2A))
      {
        v21 = v18;
        v20 = *((v18 & 0xFFFFFFFFFFF00000) + 4 * v4 + 0x3F2A);
      }

      v18 = *(v18 + 8);
      if (v18)
      {
        v22 = v18 == v6;
      }

      else
      {
        v22 = 1;
      }
    }

    while (!v22 && v19++ < 4);
    if (v20 && (v24 = (16 * v20 - 16) + (v21 & 0xFFFFFFFFFFF00000) + 16512) != 0)
    {
      v17 = *((16 * v20 - 16) + (v21 & 0xFFFFFFFFFFF00000) + 0x4080 + 8);
      *((16 * v20 - 16) + (v21 & 0xFFFFFFFFFFF00000) + 0x4080 + 8) = a3;
      result = result & 0xFFFFFFFFFFFFLL | 0xD796000000000000;
    }

    else
    {
LABEL_31:
      v24 = 0;
      *(v5 + 8 * v4) = a3;
      result = result & 0xFFFFFFFFFFFFLL | 0xD796000000000000;
    }

    *a3 = v24;
    if (v17)
    {
      *v17 = a3;
    }

    *(a3 + 8) = v17;
    v25 = (v8 >> 4) + 1;
    v14[1] = v25;
  }

  *v14 = v25;
  return result;
}

uint64_t tiny_free_detach_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 16512;
  if ((a3 + 16512) <= 0xFFFFFFFFFFF0407FLL)
  {
    v7 = a3 + 0x100000;
    do
    {
      v8 = v4 & 0xFFFFFFFFFFF00000 | 0x28;
      v9 = v4 - (v4 & 0xFFF00000 | 0x4080);
      v10 = (v9 >> 8) & 0xFFE;
      v11 = 1 << (v9 >> 4);
      v12 = (v8 + 4 * v10);
      v13 = *v12;
      if ((v13 & v11) == 0)
      {
        break;
      }

      if ((*(v8 + 4 * (v10 | 1)) & v11) != 0)
      {
        v14 = (v9 >> 4) & 0x1F;
        v15 = (v12[2] << (32 - v14)) | (v13 >> v14);
        if (v14)
        {
          v15 |= v12[4] << -v14;
        }

        if (v15 < 2)
        {
          return *(a3 + 20);
        }

        v16 = __clz(__rbit64(v15 >> 1)) + 1;
      }

      else
      {
        if (v4 + 16 >= (v4 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v4 + 16) & 0xFFFFFFFFFFF00000 | ((((v4 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v4 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
        {
          v16 = 1;
        }

        else
        {
          v16 = *(v4 + 16);
          if (!*(v4 + 16))
          {
            return *(a3 + 20);
          }
        }

        tiny_free_list_remove_ptr(a1, a2, v4, v16);
      }

      v4 += 16 * v16;
    }

    while (v4 < v7);
  }

  return *(a3 + 20);
}

uint64_t tiny_free_reattach_region(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 16512;
  v4 = *(a3 + 16);
  if ((a3 + 16512) <= 0xFFFFFFFFFFF0407FLL)
  {
    v7 = a3 + 0x100000;
    do
    {
      v8 = v3 & 0xFFFFFFFFFFF00000 | 0x28;
      v9 = v3 - (v3 & 0xFFF00000 | 0x4080);
      v10 = (v9 >> 8) & 0xFFE;
      v11 = 1 << (v9 >> 4);
      v12 = (v8 + 4 * v10);
      v13 = *v12;
      if ((v13 & v11) == 0)
      {
        break;
      }

      if ((*(v8 + 4 * (v10 | 1)) & v11) != 0)
      {
        v14 = (v9 >> 4) & 0x1F;
        v15 = (v12[2] << (32 - v14)) | (v13 >> v14);
        if (v14)
        {
          v15 |= v12[4] << -v14;
        }

        if (v15 < 2)
        {
          return v4;
        }

        v16 = __clz(__rbit64(v15 >> 1)) + 1;
      }

      else
      {
        if (v3 + 16 >= (v3 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v3 + 16) & 0xFFFFFFFFFFF00000 | ((((v3 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v3 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
        {
          v16 = 1;
        }

        else
        {
          v16 = *(v3 + 16);
          if (!*(v3 + 16))
          {
            return v4;
          }
        }

        tiny_free_list_add_ptr(a1, a2, v3, v16);
      }

      v3 += 16 * v16;
    }

    while (v3 < v7);
  }

  return v4;
}

unint64_t tiny_free_scan_madvise_free(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E9AA8];
  v7 = ((((*MEMORY[0x1E69E9AB0] + 1032063) >> *MEMORY[0x1E69E9AA8]) & 0xFFFFFFFFFFFFFFFELL) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00](a1);
  v14 = v46 - v13;
  if (v9 <= 0xFFFFFFFFFFF0407FLL)
  {
    LODWORD(v15) = 0;
    v16 = *MEMORY[0x1E69E9AA0];
    v17 = ~*MEMORY[0x1E69E9AA0];
    result = v9;
    do
    {
      v18 = result & 0xFFFFFFFFFFF00000 | 0x28;
      v19 = result - (result & 0xFFF00000 | v11);
      v20 = (v19 >> 8) & 0xFFE;
      v21 = 1 << (v19 >> 4);
      v22 = (v18 + 4 * v20);
      v23 = *v22;
      if ((v23 & v21) == 0)
      {
        break;
      }

      if ((*(v18 + 4 * (v20 | 1)) & v21) != 0)
      {
        v24 = (v19 >> 4) & 0x1F;
        v25 = (v22[2] << (32 - v24)) | (v23 >> v24);
        if (v24)
        {
          v25 |= v22[4] << -v24;
        }

        if (v25 < 2)
        {
          break;
        }

        v26 = 16 * __clz(__rbit64(v25 >> 1)) + 16;
      }

      else
      {
        if (result + 16 >= (result & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((result + 16) & 0xFFFFFFFFFFF00000 | ((((result + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((result + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
        {
          v27 = 1;
        }

        else
        {
          v27 = *(result + 16);
          if (result == v9 && !*(result + 16))
          {
            v33 = (v9 + v16 + 18) & v17;
            v34 = (v9 + 1048574) & v17;
            v30 = v34 > v33;
            v35 = v34 - v33;
            if (v30)
            {
              v36 = (v33 - v9) >> v10;
              v37 = &v14[2 * v15];
              *v37 = v36;
              v37[1] = v35 >> v10;
              LODWORD(v15) = v15 + 1;
            }

            break;
          }

          if (!*(result + 16))
          {
            break;
          }
        }

        v28 = (result + v16 + 18) & v17;
        v26 = 16 * v27;
        v29 = (result + v26 - 2) & v17;
        v30 = v29 > v28;
        v31 = v29 - v28;
        if (v30)
        {
          v32 = &v14[2 * v15];
          *v32 = (v28 - a3) >> v10;
          v32[1] = v31 >> v10;
          LODWORD(v15) = v15 + 1;
        }
      }

      result += v26;
    }

    while (result < v9 + v12 + 1);
    if (v15 >= 1)
    {
      atomic_fetch_add((a3 + 28), 1u);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v39 = *(StatusReg + 24);
      v40 = v39;
      atomic_compare_exchange_strong_explicit(a2, &v40, 0, memory_order_release, memory_order_relaxed);
      if (v40 != v39)
      {
        os_unfair_lock_unlock(a2);
      }

      v15 = v15;
      v41 = (v14 + 1);
      do
      {
        v42 = a3 + (*(v41 - 1) << *v6);
        v43 = *v41;
        v41 += 2;
        result = mvm_madvise_free(a1, a3, v42, v42 + (v43 << *v6), 0, *(a1 + 620) & 0x20);
        --v15;
      }

      while (v15);
      v44 = 0;
      atomic_compare_exchange_strong_explicit(a2, &v44, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v44)
      {
        result = os_unfair_lock_lock_with_options();
      }

      atomic_fetch_add((a3 + 28), 0xFFFFFFFF);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void tiny_free_no_lock(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  if (*(a4 + 16508) != unk_1ED404329)
  {
    malloc_zone_error(64, 1, "Region cookie corrupted for region %p (value is %x)[%p]\n");
    __break(1u);
    return;
  }

  v8 = a6;
  v65 = a4 + 0x4000;
  v11 = (16 * a6);
  v12 = a5 + v11;
  v13 = a5 & 0xFFFFFFFFFFF00000;
  v14 = a5 & 0xFFFFFFFFFFF00000 | 0x4080;
  v15 = a5 - v14;
  v16 = read_memory + 6016;
  if (((a5 - v14) & 0xFFFF0) == 0)
  {
    goto LABEL_7;
  }

  tiny_previous_free_msize = get_tiny_previous_free_msize(a5);
  if (tiny_previous_free_msize > (v15 >> 4))
  {
    v18 = a5;
    v16 = read_memory + 6016;
    goto LABEL_8;
  }

  v19 = tiny_previous_free_msize;
  v20 = v13 | 0x28;
  v21 = (v15 >> 4) - tiny_previous_free_msize;
  v22 = (v21 >> 4) & 0xFFE;
  v23 = 1 << ((v15 >> 4) - tiny_previous_free_msize);
  v16 = &read_memory[752];
  if ((*((v13 | 0x28) + 4 * v22) & v23) == 0 || (*((v13 | 0x2C) + 4 * v22) & v23) != 0)
  {
    goto LABEL_7;
  }

  v37 = v14 + 16 * v21;
  if (v37 + 16 >= (v37 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v37 + 16) & 0xFFFFFFFFFFF00000 | ((((v37 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v37 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = *(v37 + 16);
  }

  if (v38 != tiny_previous_free_msize)
  {
LABEL_7:
    v18 = a5;
    goto LABEL_8;
  }

  v18 = a5;
  if (v37)
  {
    *(v20 + ((v15 >> 6) & 0x3FF8)) = vand_s8(*(v20 + ((v15 >> 6) & 0x3FF8)), vdup_n_s32(~(1 << (v15 >> 4))));
    tiny_free_list_remove_ptr(a1, a2, v37, tiny_previous_free_msize);
    v16 = &read_memory[752];
    if (v19 >= 2 && !malloc_zero_policy)
    {
      *(v37 + 16 * v19 - 2) = 0;
    }

    v8 += v19;
    v18 = v37;
  }

LABEL_8:
  if (v12 >= a4 + 0x100000 || (v24 = (v12 & 0xFFFFF) - 16512, v25 = (v24 >> 8) & 0xFFE, v26 = ((v12 & 0xFFFFFFFFFFF00000 | (8 * ((v25 >> 1) & 0x7FF))) + 40), v27 = 1 << (v24 >> 4), (*((v12 & 0xFFFFFFFFFFF00000 | (8 * ((v25 >> 1) & 0x7FF))) + 0x28) & v27) == 0) || (*((v12 & 0xFFFFFFFFFFF00000) + 4 * v25 + 0x2C) & v27) != 0)
  {
    v28 = a7;
    goto LABEL_12;
  }

  if (v12 + 16 >= (v12 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v12 + 16) & 0xFFFFFFFFFFF00000 | ((((v12 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v12 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
  {
    LODWORD(v34) = 1;
    goto LABEL_39;
  }

  v34 = *(v12 + 16);
  if (v34 < 0x40)
  {
LABEL_39:
    tiny_free_list_remove_ptr(a1, a2, v12, v34);
    v35 = v34;
    *v26 = vand_s8(*v26, vdup_n_s32(~v27));
    v16 = &read_memory[752];
    v28 = a7;
    if (!malloc_zero_policy)
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      if (v35 >= 2)
      {
        *(v12 + 16) = 0;
        v36 = (v12 + 16 * (v35 & 0xFFF) - 2);
LABEL_85:
        *v36 = 0;
        goto LABEL_86;
      }

      if (!v35)
      {
        v36 = (v12 + 16);
        goto LABEL_85;
      }
    }

LABEL_86:
    v8 += v35;
LABEL_12:
    v29 = a1;
    if (*(v16 + 593) && (v28 & 2) == 0 && (*(a1 + 620) & 0x20) != 0)
    {
      _platform_memset();
    }

    tiny_free_list_add_ptr(a1, a2, v18, v8);
    goto LABEL_17;
  }

  v59 = *(v12 + 8);
  if (*v12)
  {
    *(*v12 + 8) = v18;
  }

  else
  {
    *(a2 + 536) = v18;
  }

  if (v59)
  {
    *v59 = v18;
  }

  v8 += v34;
  *v18 = *v12;
  *(v18 + 8) = *(v12 + 8);
  *v26 = vand_s8(*v26, vdup_n_s32(~v27));
  if (!*(v16 + 593))
  {
    *(v12 + 16) = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16 * v34 - 2) = 0;
  }

  v60 = (v18 & 0xFFFFF) - 16512;
  v61 = v18 & 0xFFFFFFFFFFF00000 | (v60 >> 6) & 0x3FF8;
  LODWORD(v60) = 1 << (v60 >> 4);
  v62 = *(v61 + 40) | v60;
  LODWORD(v60) = *(v61 + 44) & ~v60;
  *(v61 + 40) = v62;
  *(v61 + 44) = v60;
  v28 = a7;
  if (v8 >= 2u)
  {
    *(v18 + 16 * v8 - 2) = v8;
LABEL_96:
    *(v18 + 16) = v8;
    goto LABEL_97;
  }

  if (!v8)
  {
    goto LABEL_96;
  }

LABEL_97:
  v63 = ((v18 + 1032064) >> 4) + 1;
  v64 = ((v12 + 1032064) >> 4) + 1;
  if (*(v65 + 36) == (((v12 + 1032064) >> 4) + 1))
  {
    *(v65 + 36) = v63;
  }

  v29 = a1;
  if (*(v65 + 38) == v64)
  {
    *(v65 + 38) = v63;
  }

LABEL_17:
  *(a2 + 2152) -= v11;
  v30 = *(a4 + 16) - v11;
  *(a4 + 16) = v30;
  if ((v28 & 1) == 0)
  {
    --*(a4 + 20);
    --*(a2 + 2168);
  }

  if (aggressive_madvise_enabled == 1)
  {
    tiny_madvise_free_range_no_lock(v29, a2, a4, a5, v11, v18, v8);
    v30 = *(a4 + 16);
  }

  if (a3 == -1)
  {
    if ((aggressive_madvise_enabled & 1) == 0)
    {
      tiny_madvise_free_range_no_lock(v29, a2, a4, a5, v11, v18, v8);
    }

    if (!v30 && *(a4 + 28) <= 0)
    {
      v41 = tiny_free_try_depot_unmap_no_lock(v29, a2, a4);
      v42 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v43 = v42;
      atomic_compare_exchange_strong_explicit(a2, &v43, 0, memory_order_release, memory_order_relaxed);
      if (v43 == v42)
      {
        goto LABEL_74;
      }

      v44 = a2;
LABEL_73:
      os_unfair_lock_unlock(v44);
LABEL_74:
      if (v41)
      {
        v57 = *(v29 + 620);
        if ((v57 & 4) != 0)
        {
          v58 = -2;
        }

        else
        {
          v58 = -8;
        }

        mvm_deallocate_pages(v41, 0x100000, v58 & v57);
      }
    }
  }

  else
  {
    if (v30 <= 0xBCF9F)
    {
      *(a4 + 32) = 1;
    }

    v31 = *(a2 + 2160);
    v32 = *(a2 + 2152);
    if (v31 - v32 >= 0x179F41 && v32 < v31 - (v31 >> 2))
    {
      v33 = *(a2 + 2184);
      if (v33)
      {
        while (*(v33 + 32) != 1 || *(v33 + 28))
        {
          v33 = *v33;
          if (!v33)
          {
            return;
          }
        }

        if (*(a2 + 2144) == (v33 & 0xFFFFFFFFFFF00000) && (*(a2 + 2128) || *(a2 + 2136)))
        {
          tiny_finalize_region(v29, a2);
        }

        v39 = *v33;
        v40 = *(v33 + 8);
        if (*v33)
        {
          *(v39 + 8) = v40;
        }

        else
        {
          *(a2 + 2176) = v40;
        }

        if (!v40)
        {
          v40 = (a2 + 2184);
        }

        *v40 = v39;
        *v33 = 0;
        *(v33 + 8) = 0;
        --*(a2 + 2172);
        v45 = tiny_free_detach_region(v29, a2, v33 & 0xFFFFFFFFFFF00000);
        v46 = 0;
        v47 = *(v29 + 624);
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        atomic_compare_exchange_strong_explicit((v47 - 2560), &v46, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v46)
        {
          os_unfair_lock_lock_with_options();
        }

        *((v33 & 0xFFFFFFFFFFF00000) + 0x18) = -1;
        *(v33 + 28) = 0;
        v49 = tiny_free_reattach_region(v29, v47 - 2560, v33 & 0xFFFFFFFFFFF00000);
        *(a2 + 2152) -= v49;
        *(a2 + 2160) -= 1032064;
        *(a2 + 2168) -= v45;
        v50 = *(StatusReg + 24);
        v51 = v50;
        atomic_compare_exchange_strong_explicit(a2, &v51, 0, memory_order_release, memory_order_relaxed);
        if (v51 != v50)
        {
          os_unfair_lock_unlock(a2);
        }

        v52 = vdupq_n_s64(0xFBF80uLL);
        v52.i64[0] = v49;
        *(v47 - 408) = vaddq_s64(*(v47 - 408), v52);
        *(v47 - 392) += v45;
        v53 = *(v47 - 376);
        if (v53)
        {
          *(v53 + 8) = v33;
        }

        else
        {
          *(v47 - 384) = v33;
        }

        *(v47 - 376) = v33;
        *v33 = v53;
        *(v33 + 8) = 0;
        *(v33 + 32) = 0;
        ++*(v47 - 388);
        v54 = *((v33 & 0xFFFFFFFFFFF00000) + 0x10);
        if ((aggressive_madvise_enabled & 1) == 0)
        {
          tiny_free_scan_madvise_free(v29, (v47 - 2560), v33 & 0xFFFFFFFFFFF00000);
        }

        v41 = tiny_free_try_depot_unmap_no_lock(v29, v47 - 2560, v33);
        v55 = *(StatusReg + 24);
        v56 = v55;
        atomic_compare_exchange_strong_explicit((v47 - 2560), &v56, 0, memory_order_release, memory_order_relaxed);
        if (v56 == v55)
        {
          goto LABEL_74;
        }

        v44 = (v47 - 2560);
        goto LABEL_73;
      }
    }
  }
}

unint64_t tiny_madvise_free_range_no_lock(unint64_t result, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7)
{
  v7 = *MEMORY[0x1E69E9AA0];
  v8 = (*MEMORY[0x1E69E9AA0] + a6 + 18) & ~*MEMORY[0x1E69E9AA0];
  v9 = (a6 + 16 * a7 - 2) & ~*MEMORY[0x1E69E9AA0];
  if (v8 < v9)
  {
    v10 = (a4 - 2) & ~v7;
    v11 = (a5 + a4 + v7 + 18) & ~v7;
    v12 = v8 <= v10 ? v10 : (*MEMORY[0x1E69E9AA0] + a6 + 18) & ~*MEMORY[0x1E69E9AA0];
    v13 = v9 >= v11 ? v11 : (a6 + 16 * a7 - 2) & ~*MEMORY[0x1E69E9AA0];
    if (v12 < v13)
    {
      v18 = result;
      tiny_free_list_remove_ptr(result, a2, a6, a7);
      v19 = a6 & 0xFFFFFFFFFFF00000 | 0x28;
      v20 = (a6 & 0xFFFFF) - 16512;
      v21 = v20 >> 4;
      v22 = (v20 >> 8) & 0xFFE;
      v38 = (v19 + 4 * v22);
      *v38 = vorr_s8(*v38, vdup_n_s32(1 << v21));
      v23 = v21 + 1;
      v24 = v23 >> 4;
      v25 = (v23 & 0x1F) + (a7 - 1);
      v26 = 0x7FFFFFFFu >> (v23 & 0x1F ^ 0x1F);
      if (v25 < 0x40)
      {
        v30 = (v19 + 4 * (v24 & 0xFFE));
        v31 = *v30;
        v29 = (v19 + 4 * (v24 | 1u));
        if (v25 < 0x20)
        {
          v27 = v26 | (-1 << v25);
          *v30 = v31 & v27;
        }

        else
        {
          v27 = -1 << v25;
          *v30 = v31 & v26;
          *v29 &= v26;
          v30[2] &= v27;
          v29 = v30 + 3;
        }
      }

      else
      {
        v27 = -1 << v25;
        v28 = v19 + 4 * (v24 & 0xFFE);
        *v28 &= v26;
        *(v19 + 4 * (v24 | 1u)) &= v26;
        *(v28 + 8) = 0;
        *(v28 + 16) &= v27;
        v29 = (v28 + 20);
      }

      v32 = v22 | 1;
      *v29 &= v27;
      *(v19 + 4 * (((a7 - 1 + v23) >> 4) & 0xFFE)) |= 1 << (a7 - 1 + v23);
      atomic_fetch_add((a3 + 28), 1u);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = *(StatusReg + 24);
      v35 = v34;
      atomic_compare_exchange_strong_explicit(a2, &v35, 0, memory_order_release, memory_order_relaxed);
      if (v35 != v34)
      {
        os_unfair_lock_unlock(a2);
      }

      mvm_madvise_free(v18, a3, v12, v13, v18 + 640, *(v18 + 620) & 0x20);
      v36 = 0;
      atomic_compare_exchange_strong_explicit(a2, &v36, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v36)
      {
        os_unfair_lock_lock_with_options();
      }

      atomic_fetch_add((a3 + 28), 0xFFFFFFFF);
      v37 = 1 << (((a6 & 0xFFFFF) - 16512) >> 4);
      v38->i32[0] |= v37;
      *(v19 + 4 * v32) &= ~v37;
      if (a7 < 2)
      {
        if (a7)
        {
LABEL_23:

          return tiny_free_list_add_ptr(v18, a2, a6, a7);
        }
      }

      else
      {
        *(a6 + 16 * a7 - 2) = a7;
      }

      *(a6 + 16) = a7;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t tiny_memalign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 15;
  should_clear = tiny_malloc_should_clear(a1 + 16512, ((a4 + 15) >> 4), 0);
  v9 = should_clear;
  if (!should_clear)
  {
    return v9;
  }

  v10 = v7 >> 4;
  if (((a2 - 1) & should_clear) != 0)
  {
    v11 = a2 - ((a2 - 1) & should_clear);
  }

  else
  {
    v11 = 0;
  }

  v12 = a3 + 15;
  v13 = (a3 + 15) >> 4;
  v14 = v10 - (v13 + ((v11 + 15) >> 4));
  if (!((v11 + 15) >> 4))
  {
    v36 = (v10 - (v13 + ((v11 + 15) >> 4)));
    if (!v14)
    {
      return v9;
    }

    goto LABEL_27;
  }

  v68 = ((v11 + 15) >> 4);
  v69 = v10 - (v13 + ((v11 + 15) >> 4));
  v15 = 0;
  v16 = *(a1 + 17136);
  v17 = *((should_clear & 0xFFFFFFFFFFF00000) + 0x18);
  v18 = (v16 + 2560 * v17);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v18, &v15, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    os_unfair_lock_lock_with_options();
  }

  v20 = v11 + v9;
  v21 = *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
  if (v21 != v17)
  {
    do
    {
      v22 = *(StatusReg + 24);
      v23 = v22;
      atomic_compare_exchange_strong_explicit(v18, &v23, 0, memory_order_release, memory_order_relaxed);
      if (v23 != v22)
      {
        os_unfair_lock_unlock(v18);
      }

      v24 = 0;
      v18 = (v16 + 2560 * v21);
      atomic_compare_exchange_strong_explicit(v18, &v24, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v24)
      {
        os_unfair_lock_lock_with_options();
      }

      v25 = v21 == *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
      v21 = *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
    }

    while (!v25);
  }

  v26 = v20 & 0xFFFFFFFFFFF00000 | 0x28;
  v27 = (v20 & 0xFFFFF) - 16512;
  v28 = v27 >> 4;
  *(v26 + ((v27 >> 6) & 0x3FF8)) = vorr_s8(*(v26 + ((v27 >> 6) & 0x3FF8)), vdup_n_s32(1 << (v27 >> 4)));
  v29 = (v27 >> 4) + 1;
  v30 = (v28 + 1) >> 4;
  v31 = (v29 & 0x1F) + (v13 - 1);
  v32 = 0x7FFFFFFFu >> ((v28 + 1) & 0x1F ^ 0x1F);
  if (v31 < 0x40)
  {
    v37 = (v26 + 4 * (v30 & 0xFFE));
    v38 = *v37;
    v35 = (v26 + 4 * (v30 | 1u));
    v39 = v31 >= 0x20;
    v14 = v69;
    v33 = -1 << v31;
    if (v39)
    {
      *v37 = v38 & v32;
      *v35 &= v32;
      v37[2] &= v33;
      v35 = v37 + 3;
    }

    else
    {
      v33 |= v32;
      *v37 = v38 & v33;
    }
  }

  else
  {
    v33 = -1 << v31;
    v34 = v26 + 4 * (v30 & 0xFFE);
    *v34 &= v32;
    *(v26 + 4 * (v30 | 1u)) &= v32;
    *(v34 + 8) = 0;
    *(v34 + 16) &= v33;
    v35 = (v34 + 20);
    v14 = v69;
  }

  *v35 &= v33;
  *(v26 + 4 * (((v13 - 1 + v29) >> 4) & 0xFFE)) |= 1 << (v13 - 1 + v29);
  ++v18[542]._os_unfair_lock_opaque;
  v36 = v14;
  if (v14)
  {
    *((v20 & 0xFFFFFFFFFFF00000) + (((v28 + v13) >> 2) & 0x3FF8) + 0x2C) |= 1 << (v28 + v13);
  }

  v40 = *(StatusReg + 24);
  v41 = v40;
  atomic_compare_exchange_strong_explicit(v18, &v41, 0, memory_order_release, memory_order_relaxed);
  if (v41 != v40)
  {
    os_unfair_lock_unlock(v18);
  }

  free_tiny(a1 + 16512, v9, v9 & 0xFFFFFFFFFFF00000, (16 * v68), 1);
  v9 = v20;
  v12 = a3 + 15;
  if (v14)
  {
LABEL_27:
    v70 = v36;
    v42 = 0;
    v43 = *&v12 & 0xFFFF0;
    v44 = *(a1 + 17136);
    v45 = *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
    v46 = (v44 + 2560 * v45);
    v47 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(v46, &v42, *(v47 + 24), memory_order_acquire, memory_order_acquire);
    if (v42)
    {
      os_unfair_lock_lock_with_options();
    }

    v48 = v43 + v9;
    v49 = *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
    if (v49 != v45)
    {
      do
      {
        v50 = *(v47 + 24);
        v51 = v50;
        atomic_compare_exchange_strong_explicit(v46, &v51, 0, memory_order_release, memory_order_relaxed);
        if (v51 != v50)
        {
          os_unfair_lock_unlock(v46);
        }

        v52 = 0;
        v46 = (v44 + 2560 * v49);
        atomic_compare_exchange_strong_explicit(v46, &v52, *(v47 + 24), memory_order_acquire, memory_order_acquire);
        if (v52)
        {
          os_unfair_lock_lock_with_options();
        }

        v25 = v49 == *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
        v49 = *((v9 & 0xFFFFFFFFFFF00000) + 0x18);
      }

      while (!v25);
    }

    v53 = v48 & 0xFFFFFFFFFFF00000 | 0x28;
    v54 = (v48 & 0xFFFFF) - 16512;
    v55 = v54 >> 4;
    *(v53 + ((v54 >> 6) & 0x3FF8)) = vorr_s8(*(v53 + ((v54 >> 6) & 0x3FF8)), vdup_n_s32(1 << (v54 >> 4)));
    v56 = (v54 >> 4) + 1;
    v57 = (v55 + 1) >> 4;
    v58 = (v56 & 0x1F) + (v14 - 1);
    v59 = 0x7FFFFFFFu >> (v56 & 0x1F ^ 0x1F);
    if (v58 < 0x40)
    {
      v63 = (v53 + 4 * (v57 & 0xFFE));
      v64 = *v63;
      v62 = (v53 + 4 * (v57 | 1u));
      v39 = v58 >= 0x20;
      v60 = -1 << v58;
      if (v39)
      {
        *v63 = v64 & v59;
        *v62 &= v59;
        v63[2] &= v60;
        v62 = v63 + 3;
      }

      else
      {
        v60 |= v59;
        *v63 = v64 & v60;
      }
    }

    else
    {
      v60 = -1 << v58;
      v61 = v53 + 4 * (v57 & 0xFFE);
      *v61 &= v59;
      *(v53 + 4 * (v57 | 1u)) &= v59;
      *(v61 + 8) = 0;
      *(v61 + 16) &= v60;
      v62 = (v61 + 20);
    }

    *v62 &= v60;
    *(v53 + 4 * (((v14 - 1 + v56) >> 4) & 0xFFE)) |= 1 << (v14 - 1 + v56);
    ++v46[542]._os_unfair_lock_opaque;
    v65 = *(v47 + 24);
    v66 = v65;
    atomic_compare_exchange_strong_explicit(v46, &v66, 0, memory_order_release, memory_order_relaxed);
    if (v66 != v65)
    {
      os_unfair_lock_unlock(v46);
    }

    free_tiny(a1 + 16512, v48, v48 & 0xFFFFFFFFFFF00000, (16 * v70), 1);
  }

  return v9;
}

uint64_t tiny_malloc_should_clear(unint64_t a1, unsigned int a2, int a3)
{
  v7 = rack_get_thread_index(a1) % *(a1 + 608);
  v8 = *(a1 + 624) + 2560 * v7;
  if (malloc_tracing_enabled == 1)
  {
    v78 = *(a1 + 624) + 2560 * v7;
    kdebug_trace();
  }

  v9 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v8, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(v8 + 16) == a2)
  {
    v11 = *(v8 + 8);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v12 = *(StatusReg + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v8, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
      os_unfair_lock_unlock(v8);
    }

    if (malloc_zero_policy == 2)
    {
      goto LABEL_33;
    }

    if (malloc_zero_policy != 1)
    {
      if (malloc_zero_policy || !malloc_zero_on_free_sample_period)
      {
        return v11;
      }

      v14 = *(StatusReg + 888);
      v15 = v14 + 1 == malloc_zero_on_free_sample_period;
      v16 = v14 + 1 == malloc_zero_on_free_sample_period ? 0 : v14 + 1;
      *(StatusReg + 888) = v16;
      if (!v15)
      {
        return v11;
      }

LABEL_30:
      if (_platform_memcmp_zero_aligned8())
      {
        tiny_zero_corruption_abort(v11, a2);
      }

      return v11;
    }

LABEL_32:
    if (!a3)
    {
      return v11;
    }

LABEL_33:
    _platform_memset();
    return v11;
  }

  tiny_malloc_from_free_list(a1, v8, v6, a2);
  v11 = v18;
  if (!v18)
  {
    v98 = (v8 + 2152);
    v25 = (v8 + 4);
    v97 = vdupq_n_s64(0xFBF80uLL);
    v96 = a3;
    while (2)
    {
      v26 = 0;
      v27 = *(a1 + 624);
      v28 = (v27 - 2560);
      atomic_compare_exchange_strong_explicit((v27 - 2560), &v26, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v26)
      {
        os_unfair_lock_lock_with_options();
      }

      v29 = v27 - 2528;
      v30 = (v27 - 2024);
      v31 = a2;
      while (1)
      {
        v32 = v31 - 1;
        if ((v31 - 64) < 0xFFC1u)
        {
          v32 = 63;
        }

        v33 = *(v29 + 8 * v32);
        if (!v33 && ((v34 = *(v27 - 472) & (-1 << v32)) == 0 || ((v35 = __clz(__rbit64(v34)), v35 == 63) || (v33 = *(v29 + 8 * v35)) == 0) && (v33 = *v30) == 0) || (v36 = v33 & 0xFFFFFFFFFFF00000, (v33 & 0xFFFFFFFFFFF00000) == 0))
        {
LABEL_49:
          v37 = *(StatusReg + 24);
          v38 = v37;
          atomic_compare_exchange_strong_explicit(v28, &v38, 0, memory_order_release, memory_order_relaxed);
          if (v38 != v37)
          {
            os_unfair_lock_unlock(v28);
          }

          goto LABEL_63;
        }

        if (!*((v33 & 0xFFFFFFFFFFF00000) + 0x1C))
        {
          break;
        }

        if (++v31 >= 0x40u)
        {
          goto LABEL_49;
        }
      }

      v39 = *v36;
      v40 = *((v33 & 0xFFFFFFFFFFF00000) + 8);
      v95 = v25;
      if (*v36)
      {
        *(v39 + 8) = v40;
      }

      else
      {
        *(v27 - 384) = v40;
      }

      if (!v40)
      {
        v40 = (v27 - 376);
      }

      *v40 = v39;
      *v36 = 0;
      *((v33 & 0xFFFFFFFFFFF00000) + 8) = 0;
      --*(v27 - 388);
      v41 = tiny_free_detach_region(a1, v27 - 2560, v36);
      *(v36 + 24) = v7;
      if (*(v36 + 28))
      {
        purgeable_ptr_in_use_enumerator_cold_1(v41);
      }

      v42 = v41;
      v43 = tiny_free_reattach_region(a1, v8, v36);
      *(v27 - 408) -= v43;
      *(v27 - 400) -= 1032064;
      *(v27 - 392) -= v42;
      v44.i64[1] = v97.i64[1];
      v44.i64[0] = v43;
      *v98 = vaddq_s64(*v98, v44);
      *(v8 + 2168) += v42;
      v45 = *(v8 + 2184);
      if (v45)
      {
        *(v45 + 8) = v36;
      }

      else
      {
        *(v8 + 2176) = v36;
      }

      v25 = v95;
      *(v8 + 2184) = v36;
      *v36 = v45;
      *(v36 + 8) = 0;
      *(v36 + 32) = 0;
      ++*(v8 + 2172);
      v46 = *(StatusReg + 24);
      v47 = v46;
      atomic_compare_exchange_strong_explicit(v28, &v47, 0, memory_order_release, memory_order_relaxed);
      if (v47 != v46)
      {
        os_unfair_lock_unlock(v28);
      }

      v48 = *(v36 + 16);
      tiny_malloc_from_free_list(a1, v8, v36, a2);
      if (v49)
      {
        v11 = v49;
        v93 = *(StatusReg + 24);
        v94 = v93;
        atomic_compare_exchange_strong_explicit(v8, &v94, 0, memory_order_release, memory_order_relaxed);
        if (v94 != v93)
        {
          os_unfair_lock_unlock(v8);
        }

        tiny_check_zero_or_clear(v11, a2, v96);
        return v11;
      }

LABEL_63:
      v50 = 0;
      atomic_compare_exchange_strong_explicit((v8 + 4), &v50, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      v51 = v50 == 0;
      v52 = *(StatusReg + 24);
      v53 = v52;
      atomic_compare_exchange_strong_explicit(v8, &v53, 0, memory_order_release, memory_order_relaxed);
      v54 = v53 == v52;
      if (v51)
      {
        if (!v54)
        {
          os_unfair_lock_unlock(v8);
        }

        v60 = *(a1 + 620);
        if ((v60 & 4) != 0)
        {
          v61 = -2;
        }

        else
        {
          v61 = -8;
        }

        pages = mvm_allocate_pages(0x100000uLL, 20, v61 & v60, 7);
        v63 = 0;
        atomic_compare_exchange_strong_explicit(v8, &v63, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v63)
        {
          os_unfair_lock_lock_with_options();
        }

        if (pages)
        {
          *(pages + 16508) = unk_1ED404329;
          if (*(v8 + 2128) || *(v8 + 2136))
          {
            tiny_finalize_region(a1, v8);
          }

          *(pages + 16160) = 4278190080;
          *(pages + 24) = v7;
          rack_region_insert(a1, pages);
          *(v8 + 2144) = pages;
          v64 = 16 * a2;
          *(pages + 16) = 16 * a2;
          *(pages + 20) = 1;
          v11 = pages + 16512;
          v65 = (pages + 16512) & 0xFFFFFFFFFFF00000 | 0x28;
          v66 = ((pages + 16512) & 0xFFFFF) - 16512;
          *(v65 + ((v66 >> 6) & 0x3FF8)) = vorr_s8(*(v65 + ((v66 >> 6) & 0x3FF8)), vdup_n_s32(1 << (v66 >> 4)));
          v67 = (v66 >> 4) + 1;
          v68 = ((v66 >> 4) + 1) >> 4;
          v69 = (v67 & 0x1F) + (a2 - 1);
          v70 = 0x7FFFFFFFu >> (v67 & 0x1F ^ 0x1F);
          if (v69 < 0x40)
          {
            v79 = (v65 + 4 * (v68 & 0xFFE));
            v80 = *v79;
            v73 = (v65 + 4 * (v68 | 1u));
            if (v69 < 0x20)
            {
              v71 = v70 | (-1 << v69);
              *v79 = v80 & v71;
            }

            else
            {
              v71 = -1 << v69;
              *v79 = v80 & v70;
              *v73 &= v70;
              v79[2] &= v71;
              v73 = v79 + 3;
            }
          }

          else
          {
            v71 = -1 << v69;
            v72 = v65 + 4 * (v68 & 0xFFE);
            *v72 &= v70;
            *(v65 + 4 * (v68 | 1u)) &= v70;
            *(v72 + 8) = 0;
            *(v72 + 16) &= v71;
            v73 = (v72 + 20);
          }

          *v73 &= v71;
          *(v65 + 4 * (((a2 - 1 + v67) >> 4) & 0xFFE)) |= 1 << (a2 - 1 + v67);
          ++*(v8 + 2168);
          v81 = vdupq_n_s64(0xFBF80uLL);
          v81.i64[0] = 16 * a2;
          v82 = vaddq_s64(*v98, v81);
          v83 = v11 + v64;
          v84 = v83 & 0xFFFFF;
          v85 = v83 & 0xFFFFFFFFFFF00000 | 0x28;
          v86 = v84 - 16512;
          v87 = (v84 - 16512) >> 4;
          *(v85 + ((v86 >> 6) & 0x3FF8)) = vorr_s8(*(v85 + ((v86 >> 6) & 0x3FF8)), vdup_n_s32(1 << v87));
          *(v85 + 4 * (((v87 + 1) >> 4) & 0xFFE)) |= 1 << (v87 + 1);
          *v98 = v82;
          *(v8 + 2128) = (1032064 - v64);
          *(v8 + 2136) = 0;
          v88 = *(v8 + 2184);
          if (v88)
          {
            *(v88 + 8) = pages;
          }

          else
          {
            *(v8 + 2176) = pages;
          }

          *(v8 + 2184) = pages;
          *pages = v88;
          *(pages + 8) = 0;
          *(pages + 32) = 0;
          ++*(v8 + 2172);
          v89 = *(StatusReg + 24);
          v90 = v89;
          atomic_compare_exchange_strong_explicit(v8, &v90, 0, memory_order_release, memory_order_relaxed);
          if (v90 != v89)
          {
            os_unfair_lock_unlock(v8);
          }

          v91 = *(StatusReg + 24);
          v92 = v91;
          atomic_compare_exchange_strong_explicit(v25, &v92, 0, memory_order_release, memory_order_relaxed);
          if (v92 != v91)
          {
            os_unfair_lock_unlock(v25);
          }
        }

        else
        {
          v74 = *(StatusReg + 24);
          v75 = v74;
          atomic_compare_exchange_strong_explicit(v8, &v75, 0, memory_order_release, memory_order_relaxed);
          if (v75 != v74)
          {
            os_unfair_lock_unlock(v8);
          }

          v76 = *(StatusReg + 24);
          v77 = v76;
          atomic_compare_exchange_strong_explicit(v25, &v77, 0, memory_order_release, memory_order_relaxed);
          if (v77 != v76)
          {
            os_unfair_lock_unlock(v25);
          }

          return 0;
        }

        return v11;
      }

      if (!v54)
      {
        os_unfair_lock_unlock(v8);
      }

      v55 = 0;
      atomic_compare_exchange_strong_explicit(v25, &v55, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v55)
      {
        os_unfair_lock_lock_with_options();
      }

      v56 = *(StatusReg + 24);
      v57 = v56;
      atomic_compare_exchange_strong_explicit(v25, &v57, 0, memory_order_release, memory_order_relaxed);
      if (v57 != v56)
      {
        os_unfair_lock_unlock(v25);
      }

      v58 = 0;
      atomic_compare_exchange_strong_explicit(v8, &v58, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v58)
      {
        os_unfair_lock_lock_with_options();
      }

      tiny_malloc_from_free_list(a1, v8, v17, a2);
      v11 = v59;
      a3 = v96;
      if (!v59)
      {
        continue;
      }

      break;
    }
  }

  v19 = *(StatusReg + 24);
  v20 = v19;
  atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != v19)
  {
    os_unfair_lock_unlock(v8);
  }

  if (malloc_zero_policy == 2)
  {
    goto LABEL_33;
  }

  if (malloc_zero_policy == 1)
  {
    goto LABEL_32;
  }

  if (!malloc_zero_policy && malloc_zero_on_free_sample_period)
  {
    v21 = *(StatusReg + 888);
    v22 = v21 + 1 == malloc_zero_on_free_sample_period;
    v23 = v21 + 1 == malloc_zero_on_free_sample_period ? 0 : v21 + 1;
    *(StatusReg + 888) = v23;
    if (v22)
    {
      goto LABEL_30;
    }
  }

  return v11;
}

void free_tiny(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  v9 = *(a3 + 24);
  v10 = *(a1 + 624) + 2560 * v9;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    v11 = (a4 + 15) >> 4;
    goto LABEL_4;
  }

  v30 = a2 & 0xFFFFFFFFFFF00000 | 0x28;
  v31 = a2 - (a2 & 0xFFF00000 | 0x4080);
  v32 = (v31 >> 8) & 0xFFE;
  v33 = 1 << (v31 >> 4);
  v34 = (v30 + 4 * v32);
  v35 = *v34;
  if ((v35 & v33) != 0)
  {
    if ((*(v30 + 4 * (v32 | 1)) & v33) == 0)
    {
LABEL_44:

      free_tiny_botch(a1);
      return;
    }

    v36 = (v31 >> 4) & 0x1F;
    v37 = (v34[2] << (32 - v36)) | (v35 >> v36);
    if (v36)
    {
      v37 |= v34[4] << -v36;
    }

    v38 = __clz(__rbit64(v37 >> 1));
    if (v37 >= 2)
    {
      LOWORD(v11) = v38 + 1;
    }

    else
    {
      LOWORD(v11) = 0;
    }
  }

  else
  {
    LOWORD(v11) = 0;
  }

LABEL_4:
  if (!malloc_zero_policy)
  {
    _platform_memset();
  }

  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v10, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    os_unfair_lock_lock_with_options();
  }

  v14 = 0;
  if (a5 || v9 == -1 || v11 > 0xFu)
  {
    v15 = a2;
    goto LABEL_19;
  }

  v15 = *(v10 + 8);
  if (v15 == a2)
  {
    v28 = *(StatusReg + 24);
    v29 = v28;
    atomic_compare_exchange_strong_explicit(v10, &v29, 0, memory_order_release, memory_order_relaxed);
    if (v29 != v28)
    {
      os_unfair_lock_unlock(v10);
    }

    goto LABEL_44;
  }

  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  if (malloc_zero_policy && (*(a1 + 620) & 0x20) != 0 && v11)
  {
    v18 = *(v10 + 16);
    v19 = *(v10 + 24);
    _platform_memset();
    v17 = v19;
    v16 = v18;
  }

  *(v10 + 8) = a2;
  *(v10 + 16) = v11;
  *(v10 + 24) = v6;
  if (!v15)
  {
    goto LABEL_29;
  }

  v14 = 2;
  LOWORD(v11) = v16;
  v6 = v17;
LABEL_19:
  for (i = *(v6 + 24); v9 != i; i = *(v6 + 24))
  {
    v9 = i;
    v21 = *(StatusReg + 24);
    v22 = v21;
    atomic_compare_exchange_strong_explicit(v10, &v22, 0, memory_order_release, memory_order_relaxed);
    if (v22 != v21)
    {
      os_unfair_lock_unlock(v10);
    }

    v23 = 0;
    v10 = *(a1 + 624) + 2560 * v9;
    atomic_compare_exchange_strong_explicit(v10, &v23, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v23)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (a5)
  {
    v24 = v14 + 1;
  }

  else
  {
    v24 = v14;
  }

  tiny_free_no_lock(a1, v10, v9, v6, v15, v11, v24);
  if (v25)
  {
LABEL_29:
    v26 = *(StatusReg + 24);
    v27 = v26;
    atomic_compare_exchange_strong_explicit(v10, &v27, 0, memory_order_release, memory_order_relaxed);
    if (v27 != v26)
    {

      os_unfair_lock_unlock(v10);
    }
  }
}

BOOL tiny_claimed_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[2];
    v5 = (0x9E3779B97F4A7C55 * (a2 >> 20)) >> -*(v2 + 8);
    v6 = v5;
    do
    {
      v7 = *(v4 + 8 * v6);
      if (!v7)
      {
        break;
      }

      if (v7 == (a2 & 0xFFFFFFFFFFF00000))
      {
        if (v7 + 16512 > a2)
        {
          return 0;
        }

        return v7 + 0x100000 > a2;
      }

      if (v6 + 1 == v3)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 != v5);
  }

  return 0;
}

uint64_t tiny_try_shrink_in_place(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = (a3 >> 4) - (a4 >> 4);
  if ((a3 >> 4) != (a4 >> 4))
  {
    v7 = 0;
    v8 = a4 & 0xFFFF0;
    v9 = *(a1 + 624);
    v10 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
    v11 = (v9 + 2560 * v10);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(v11, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    v13 = v8 + a2;
    v14 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
    if (v14 != v10)
    {
      do
      {
        v15 = *(StatusReg + 24);
        v16 = v15;
        atomic_compare_exchange_strong_explicit(v11, &v16, 0, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          os_unfair_lock_unlock(v11);
        }

        v17 = 0;
        v11 = (v9 + 2560 * v14);
        atomic_compare_exchange_strong_explicit(v11, &v17, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v17)
        {
          os_unfair_lock_lock_with_options();
        }

        v18 = v14 == *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
        v14 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
      }

      while (!v18);
    }

    v19 = v13 & 0xFFFFFFFFFFF00000 | 0x28;
    v20 = (v13 & 0xFFFFF) - 16512;
    v21 = v20 >> 4;
    *(v19 + ((v20 >> 6) & 0x3FF8)) = vorr_s8(*(v19 + ((v20 >> 6) & 0x3FF8)), vdup_n_s32(1 << (v20 >> 4)));
    v22 = (v20 >> 4) + 1;
    v23 = (v21 + 1) >> 4;
    v24 = (v22 & 0x1F) + (v5 - 1);
    v25 = 0x7FFFFFFFu >> (v22 & 0x1F ^ 0x1F);
    if (v24 < 0x40)
    {
      v29 = (v19 + 4 * (v23 & 0xFFE));
      v30 = *v29;
      v28 = (v19 + 4 * (v23 | 1u));
      if (v24 < 0x20)
      {
        v26 = v25 | (-1 << v24);
        *v29 = v30 & v26;
      }

      else
      {
        v26 = -1 << v24;
        *v29 = v30 & v25;
        *v28 &= v25;
        v29[2] &= v26;
        v28 = v29 + 3;
      }
    }

    else
    {
      v26 = -1 << v24;
      v27 = v19 + 4 * (v23 & 0xFFE);
      *v27 &= v25;
      *(v19 + 4 * (v23 | 1u)) &= v25;
      *(v27 + 8) = 0;
      *(v27 + 16) &= v26;
      v28 = (v27 + 20);
    }

    *v28 &= v26;
    *(v19 + 4 * (((v5 - 1 + v22) >> 4) & 0xFFE)) |= 1 << (v5 - 1 + v22);
    ++v11[542]._os_unfair_lock_opaque;
    v31 = *(StatusReg + 24);
    v32 = v31;
    atomic_compare_exchange_strong_explicit(v11, &v32, 0, memory_order_release, memory_order_relaxed);
    if (v32 != v31)
    {
      os_unfair_lock_unlock(v11);
    }

    free_tiny(a1, v13, v13 & 0xFFFFFFFFFFF00000, 0, 1);
  }

  return a2;
}

uint64_t tiny_try_realloc_in_place(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 & 0xFFFFFFFFFFF00000;
  v5 = a2 & 0xFFFFFFFFFFF00000 | 0x4080;
  v6 = a3 >> 4;
  if (((a2 - v5) >> 4) + (a3 >> 4) > 0xFBF7)
  {
    return 0;
  }

  v79 = a2 - v5;
  v10 = 0;
  v11 = *(a1 + 624);
  v12 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
  v13 = v11 + 2560 * v12;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v13, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  for (i = *(v4 + 24); v12 != i; i = *(v4 + 24))
  {
    v12 = i;
    v16 = *(StatusReg + 24);
    v17 = v16;
    atomic_compare_exchange_strong_explicit(v13, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != v16)
    {
      os_unfair_lock_unlock(v13);
    }

    v18 = 0;
    v13 = v11 + 2560 * v12;
    atomic_compare_exchange_strong_explicit(v13, &v18, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v18)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (v12 == -1)
  {
    goto LABEL_25;
  }

  v19 = a2 + a3;
  v20 = (a3 >> 4);
  v21 = ((a4 + 15) >> 4);
  v22 = ((a4 + 15) >> 4) - v6;
  v23 = *(v13 + 8);
  if (v23 == a2 + a3)
  {
    v24 = *(v13 + 16);
    if (v20 + v24 >= v21)
    {
      if (v24 == v22)
      {
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        --*(v4 + 20);
      }

      else
      {
        v44 = v24 - v22;
        *(v13 + 16) = v24 - v22;
        *(v13 + 8) = v23 + a4 - a3;
        v45 = v19 + 16 * v22;
        v46 = v45 & 0xFFFFF;
        v47 = v45 & 0xFFFFFFFFFFF00000 | 0x28;
        v48 = v46 - 16512;
        v49 = (v46 - 16512) >> 4;
        v50 = v44 - 1;
        *(v47 + ((v48 >> 6) & 0x3FF8)) = vorr_s8(*(v47 + ((v48 >> 6) & 0x3FF8)), vdup_n_s32(1 << v49));
        v51 = v49 + 1;
        v52 = (v49 + 1) >> 4;
        v53 = ((v49 + 1) & 0x1F) + v50;
        v54 = 0x7FFFFFFFu >> (v51 & 0x1F ^ 0x1F);
        if (v53 < 0x40)
        {
          v63 = (v47 + 4 * (v52 & 0xFFE));
          v64 = *v63;
          v57 = (v47 + 4 * (v52 | 1u));
          if (v53 < 0x20)
          {
            v55 = (-1 << v53) | v54;
            *v63 = v64 & v55;
          }

          else
          {
            v55 = -1 << v53;
            *v63 = v64 & v54;
            *v57 &= v54;
            v63[2] &= v55;
            v57 = v63 + 3;
          }
        }

        else
        {
          v55 = -1 << v53;
          v56 = v47 + 4 * (v52 & 0xFFE);
          *v56 &= v54;
          *(v47 + 4 * (v52 | 1u)) &= v54;
          *(v56 + 8) = 0;
          *(v56 + 16) &= v55;
          v57 = (v56 + 20);
        }

        *v57 &= v55;
        *(v47 + 4 * (((v50 + v51) >> 4) & 0xFFE)) |= 1 << (v50 + v51);
      }

      *((v19 & 0xFFFFFFFFFFF00000 | (((v19 & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) = vand_s8(*((v19 & 0xFFFFFFFFFFF00000 | (((v19 & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28), vdup_n_s32(~(1 << (((v19 & 0xFFFFF) - 16512) >> 4))));
      if (malloc_zero_policy == 2)
      {
        _platform_memset();
      }

      else if (!malloc_zero_policy && malloc_zero_on_free_sample_period)
      {
        v74 = *(StatusReg + 888);
        v75 = v74 + 1 == malloc_zero_on_free_sample_period;
        v76 = v74 + 1 == malloc_zero_on_free_sample_period ? 0 : v74 + 1;
        *(StatusReg + 888) = v76;
        if (v75)
        {
          if (_platform_memcmp_zero_aligned8())
          {
            tiny_zero_corruption_abort(v23, v22);
          }
        }
      }

      LOWORD(v22) = 0;
      goto LABEL_83;
    }
  }

  if (*(v13 + 2144) == v4)
  {
    v25 = *(v13 + 2128);
    v26 = v5 - v25 + 1032064;
    if (v22 < (v25 >> 4) && v26 == v19)
    {
      *((v19 & 0xFFFFFFFFFFF00000 | (((v19 & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) = vand_s8(*((v19 & 0xFFFFFFFFFFF00000 | (((v19 & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28), vdup_n_s32(~(1 << (((v19 & 0xFFFFF) - 16512) >> 4))));
      if (v22 >= 2u)
      {
        *(((v26 + 16) & 0xFFFFFFFFFFF00000 | ((((v26 + 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 0x28) = vand_s8(*(((v26 + 16) & 0xFFFFFFFFFFF00000 | ((((v26 + 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 0x28), vdup_n_s32(~(1 << ((((v26 + 16) & 0xFFFFFu) - 16512) >> 4))));
      }

      v35 = v25 - 16 * v22;
      *(v13 + 2128) = v35;
      if (v35)
      {
        v36 = a2 + 16 * v21;
        v37 = v36 & 0xFFFFF;
        v38 = v36 & 0xFFFFFFFFFFF00000 | 0x28;
        v39 = v37 - 16512;
        v40 = (v37 - 16512) >> 4;
        *(v38 + ((v39 >> 6) & 0x3FF8)) = vorr_s8(*(v38 + ((v39 >> 6) & 0x3FF8)), vdup_n_s32(1 << v40));
        *(v38 + 4 * (((v40 + 1) >> 4) & 0xFFE)) |= 1 << (v40 + 1);
      }

      if (malloc_zero_policy == 2)
      {
        _platform_memset();
      }

      else if (!malloc_zero_policy && malloc_zero_on_free_sample_period)
      {
        v41 = *(StatusReg + 888);
        v42 = v41 + 1 == malloc_zero_on_free_sample_period;
        v43 = v41 + 1 == malloc_zero_on_free_sample_period ? 0 : v41 + 1;
        *(StatusReg + 888) = v43;
        if (v42)
        {
          if (_platform_memcmp_zero_aligned8())
          {
            tiny_zero_corruption_abort(v26, v22);
          }
        }
      }

      goto LABEL_83;
    }
  }

  v28 = (v19 & 0xFFFFF) - 16512;
  v29 = (v28 >> 8) & 0xFFE;
  v30 = ((v19 & 0xFFFFFFFFFFF00000 | (8 * ((v29 >> 1) & 0x7FF))) + 40);
  v31 = 1 << (v28 >> 4);
  if ((*((v19 & 0xFFFFFFFFFFF00000 | (8 * ((v29 >> 1) & 0x7FF))) + 0x28) & v31) != 0 && (*((v19 & 0xFFFFFFFFFFF00000) + 4 * v29 + 0x2C) & v31) == 0)
  {
    v32 = v19 + 16 >= (v19 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v19 + 16) & 0xFFFFFFFFFFF00000 | ((((v19 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v19 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0 ? 1 : *(v19 + 16);
    if (v20 + v32 >= v21)
    {
      v58 = (a4 + 15) >> 4;
      tiny_free_list_remove_ptr(a1, v13, v19, v32);
      *v30 = vand_s8(*v30, vdup_n_s32(~v31));
      v59 = malloc_zero_policy;
      if (!malloc_zero_policy)
      {
        _tiny_check_and_zero_inline_meta_from_freelist(a1, v19, v32);
        v59 = malloc_zero_policy;
      }

      if (v59 == 2)
      {
        _platform_memset();
      }

      else if (!v59 && malloc_zero_on_free_sample_period)
      {
        v60 = *(StatusReg + 888);
        v61 = v60 + 1 == malloc_zero_on_free_sample_period;
        v62 = v60 + 1 == malloc_zero_on_free_sample_period ? 0 : v60 + 1;
        *(StatusReg + 888) = v62;
        if (v61)
        {
          if (_platform_memcmp_zero_aligned8())
          {
            tiny_zero_corruption_abort(v19, v22);
          }
        }
      }

      if (v32 != v22)
      {
        tiny_free_list_add_ptr(a1, v13, 16 * v22 + v19, (v32 - v22));
      }

      v65 = v4 + 40;
      *(v4 + 40 + ((v79 >> 6) & 0x3FF8)) = vorr_s8(*(v4 + 40 + ((v79 >> 6) & 0x3FF8)), vdup_n_s32(1 << (v79 >> 4)));
      v66 = ((v79 >> 4) + 1) >> 4;
      v67 = (((v79 >> 4) + 1) & 0x1F) + (v58 - 1);
      v68 = 0x7FFFFFFFu >> (((v79 >> 4) + 1) & 0x1F ^ 0x1F);
      if (v67 < 0x40)
      {
        v72 = (v65 + 4 * (v66 & 0xFFE));
        v73 = *v72;
        v71 = (v65 + 4 * (v66 | 1u));
        if (v67 < 0x20)
        {
          v69 = v68 | (-1 << v67);
          *v72 = v73 & v69;
        }

        else
        {
          v69 = -1 << v67;
          *v72 = v73 & v68;
          *v71 &= v68;
          v72[2] &= v69;
          v71 = v72 + 3;
        }
      }

      else
      {
        v69 = -1 << v67;
        v70 = v65 + 4 * (v66 & 0xFFE);
        *v70 &= v68;
        *(v65 + 4 * (v66 | 1u)) &= v68;
        *(v70 + 8) = 0;
        *(v70 + 16) &= v69;
        v71 = (v70 + 20);
      }

      *v71 &= v69;
      *(v65 + 4 * (((v58 + (v79 >> 4)) >> 4) & 0xFFE)) |= 1 << (v58 + (v79 >> 4));
LABEL_83:
      v77 = 16 * v22;
      *(v13 + 2152) += v77;
      LODWORD(v77) = *(v4 + 16) + v77;
      *(v4 + 16) = v77;
      if (v77 >= 0xBCFA0)
      {
        *(v4 + 32) = 0;
      }

      v33 = *(StatusReg + 24);
      v34 = v33;
      atomic_compare_exchange_strong_explicit(v13, &v34, 0, memory_order_release, memory_order_relaxed);
      v7 = 1;
      goto LABEL_86;
    }
  }

LABEL_25:
  v7 = 0;
  v33 = *(StatusReg + 24);
  v34 = v33;
  atomic_compare_exchange_strong_explicit(v13, &v34, 0, memory_order_release, memory_order_relaxed);
LABEL_86:
  if (v34 != v33)
  {
    os_unfair_lock_unlock(v13);
  }

  return v7;
}

void tiny_check_zero_or_clear(uint64_t a1, int a2, int a3)
{
  if (malloc_zero_policy != 2)
  {
    if (malloc_zero_policy != 1)
    {
      if (!malloc_zero_policy)
      {
        v5 = malloc_zero_on_free_sample_period;
        if (malloc_zero_on_free_sample_period)
        {
          StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v7 = *(StatusReg + 888);
          v8 = v7 + 1 == v5;
          v9 = v7 + 1 == v5 ? 0 : v7 + 1;
          *(StatusReg + 888) = v9;
          if (v8)
          {
            if (_platform_memcmp_zero_aligned8())
            {

              tiny_zero_corruption_abort(a1, a2);
            }
          }
        }
      }

      return;
    }

    if (!a3)
    {
      return;
    }
  }

  _platform_memset();
}

uint64_t tiny_check_region(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 28))
  {
    return 1;
  }

  v3 = (*(a1 + 624) + 2560 * *(a2 + 24));
  v4 = a2 + 16512;
  if (v3[268] != a2)
  {
    v5 = a2 + 0x100000;
    v6 = a2 + 16512;
    goto LABEL_14;
  }

  v7 = v3[267];
  v6 = v7 + v4;
  if (v7)
  {
    v8 = (v6 - 16) & 0xFFFFFFFFFFF00000;
    v9 = v6 - 16 - (v8 | 0x4080);
    v10 = (v9 >> 8) & 0xFFE;
    v11 = 1 << (v9 >> 4);
    v12 = ((v8 | 0x28) + 4 * v10);
    v13 = *v12;
    if ((v13 & v11) != 0)
    {
      if ((*((v8 | 0x28) + 4 * (v10 | 1)) & v11) != 0)
      {
        v14 = (v9 >> 4) & 0x1F;
        v15 = (*((v8 | 0x28) + 4 * v10 + 8) << (32 - v14)) | (v13 >> ((v9 >> 4) & 0x1F));
        if (v14)
        {
          v15 |= v12[4] << -v14;
        }

        v16 = __clz(__rbit64(v15 >> 1));
        if (v15 >= 2)
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = 0;
        }

        if (v17 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v6 < v8 + 0x100000 && ((*((v6 & 0xFFFFFFFFFFF00000 | (((v6 & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> (((v6 & 0xFFFFF) - 16512) >> 4)) & 1) == 0)
      {
        v40 = *v6;
      }
    }

    v38 = "%ld, counter=%d\n*** invariant broken for leader block %p - %d %d\n";
    goto LABEL_53;
  }

LABEL_13:
  v5 = a2 + 0x100000 - v3[266];
LABEL_14:
  v41 = *(a1 + 624) + 2560 * *(a2 + 24);
  v42 = v3[268];
  if (v6 >= v5)
  {
    v26 = 0;
LABEL_40:
    v43 = v26;
    if (v6 != v5)
    {
      v38 = "%ld, counter=%d\n*** invariant broken for region end %p - %p\n";
      goto LABEL_53;
    }

LABEL_41:
    if (v42 == a2 && *(v41 + 2128))
    {
      result = get_tiny_meta_header_offset(v5, 0, &v43);
      if (v43 || result != 1)
      {
        v38 = "%ld, counter=%d\n*** invariant broken for blocker block %p - %d %d\n";
        goto LABEL_53;
      }

      return result;
    }

    return 1;
  }

  while (1)
  {
    v18 = v6 & 0xFFFFFFFFFFF00000 | 0x28;
    v19 = v6 - (v6 & 0xFFF00000 | 0x4080);
    v20 = (v19 >> 8) & 0xFFE;
    v21 = 1 << (v19 >> 4);
    v22 = (v18 + 4 * v20);
    v23 = *v22;
    if ((v23 & v21) == 0)
    {
LABEL_38:
      v38 = "%ld, counter=%d\n*** invariant broken for tiny block %p this msize=%d - size is too small\n";
      goto LABEL_53;
    }

    if ((*(v18 + 4 * (v20 | 1)) & v21) == 0)
    {
      break;
    }

    v24 = (v19 >> 4) & 0x1F;
    v25 = (v22[2] << (32 - v24)) | (v23 >> v24);
    if (v24)
    {
      v25 |= v22[4] << -v24;
    }

    if (v25 < 2)
    {
      goto LABEL_38;
    }

    v26 = 0;
    v6 += 16 * __clz(__rbit64(v25 >> 1)) + 16;
LABEL_33:
    if (v6 >= v5)
    {
      goto LABEL_40;
    }
  }

  if (v6 + 16 >= (v6 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v6 + 16) & 0xFFFFFFFFFFF00000 | ((((v6 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v6 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(v6 + 16);
    if (!*(v6 + 16) && v6 == v4)
    {
      return 1;
    }

    if (!*(v6 + 16))
    {
      goto LABEL_38;
    }
  }

  v28 = *v6;
  v29 = *(v6 + 8);
  if (*v6)
  {
    v30 = (v28 & 0xFFFFF) - 16512;
    v31 = (v30 >> 8) & 0xFFE;
    v32 = 1 << (v30 >> 4);
    if ((*((v28 & 0xFFFFFFFFFFF00000 | (8 * ((v31 >> 1) & 0x7FF))) + 0x28) & v32) == 0 || (*((v28 & 0xFFFFFFFFFFF00000) + 4 * v31 + 0x2C) & v32) != 0)
    {
      v38 = "%ld, counter=%d\n*** invariant broken for %p (previous %p is not a free pointer)\n";
      goto LABEL_53;
    }
  }

  if (v29)
  {
    v33 = (v29 & 0xFFFFF) - 16512;
    v34 = (v33 >> 8) & 0xFFE;
    v35 = 1 << (v33 >> 4);
    if ((*((v29 & 0xFFFFFFFFFFF00000 | (8 * ((v34 >> 1) & 0x7FF))) + 0x28) & v35) == 0 || (*((v29 & 0xFFFFFFFFFFF00000) + 4 * v34 + 0x2C) & v35) != 0)
    {
      v38 = "%ld, counter=%d\n*** invariant broken for %p (next in free list %p is not a free pointer)\n";
      goto LABEL_53;
    }
  }

  v36 = (16 * v27);
  v37 = v6 + v36;
  if (v5 == v6 + v36)
  {
    v43 = 1;
    goto LABEL_41;
  }

  if (get_tiny_previous_free_msize(v6 + v36) == v27)
  {
    v26 = 1;
    v6 = v37;
    goto LABEL_33;
  }

  v38 = "%ld, counter=%d\n*** invariant broken for tiny free %p followed by %p in region %p [%p-%p] (end marker incorrect) should be %d; in fact %d\n";
LABEL_53:
  malloc_zone_check_fail("*** check: incorrect tiny region ", v38);
  return 0;
}

uint64_t get_tiny_previous_free_msize(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFF00000 | 0x4080) == a1)
  {
    return 0;
  }

  else if ((*(((a1 - 16) & 0xFFFFFFFFFFF00000 | ((((a1 - 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((a1 - 16) & 0xFFFFFu) - 16512) >> 4)))
  {
    return 1;
  }

  else
  {
    return *(a1 - 2);
  }
}

uint64_t tiny_in_use_enumerator()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  result = v3(v0, *(v5 + 16536), 32, &v41);
  if (!result)
  {
    v13 = *v41;
    result = v4(v11, v41[2], 8 * *v41, &v48);
    if (!result)
    {
      if ((v8 & 1) == 0 || (result = v4(v11, *(v6 + 17136), 2560 * *(v6 + 17120), &v42), !result))
      {
        if (v13)
        {
          v37 = v2;
          v38 = v10;
          v15 = 0;
          v35 = v8;
          v36 = v8 & 6;
          v40 = v13;
          while (1)
          {
            v16 = *(v48 + 8 * v15);
            if ((v16 + 1) >= 2)
            {
              if ((v8 & 4) != 0)
              {
                v46 = *(v48 + 8 * v15);
                v47 = 16420;
                (v2)(v11, v38, 4, &v46, 1);
              }

              v39 = v16 + 16512;
              if (v36)
              {
                v44 = v16 + 16512;
                v45 = 1032064;
                (v2)(v11, v38, 2, &v44, 1);
              }

              if (v8)
              {
                break;
              }
            }

LABEL_9:
            result = 0;
            if (++v15 == v40)
            {
              goto LABEL_3;
            }
          }

          result = v4(v11, v16, 0x100000, &v43);
          if (!result)
          {
            v17 = *(v6 + 17120);
            if (v17 < 1)
            {
              v18 = 0;
              v20 = v16 + 16512;
            }

            else
            {
              v18 = 0;
              v19 = (v42 + 24);
              v20 = v16 + 16512;
              do
              {
                if (v16 == *v19)
                {
                  ++v18;
                }

                v19 += 320;
                --v17;
              }

              while (v17);
            }

            v21 = (v42 + 2560 * *(v43 + 24));
            if (v16 == v21[268])
            {
              v22 = v21[267] >> 4;
              v23 = 64504 - (v21[266] >> 4);
              if (v23 <= v22)
              {
                goto LABEL_9;
              }
            }

            else
            {
              LODWORD(v22) = 0;
              v23 = 64504;
            }

            v24 = 0;
            v25 = v43 + 40;
            v26 = v43 + 44;
            while (1)
            {
              v27 = (16 * v22);
              if ((*(v26 + 4 * ((v22 >> 4) & 0xFFE)) >> v22))
              {
                break;
              }

              if (((*(v25 + 4 * (((v22 + 1) >> 4) & 0xFFE)) >> (v22 + 1)) & 1) == 0)
              {
                v32 = *(v43 + v27 + 16528);
LABEL_41:
                if (!v32)
                {
                  goto LABEL_48;
                }

                goto LABEL_42;
              }

              v32 = 1;
LABEL_42:
              LODWORD(v22) = v22 + v32;
              if (v22 >= v23)
              {
                v2 = v37;
                v8 = v35;
                if (v24)
                {
                  v37(v11, v38, 1, v49);
                }

                goto LABEL_9;
              }
            }

            if (v18)
            {
              v28 = *(v6 + 17120);
              if (v28 >= 1)
              {
                v29 = (v42 + 16);
                while (v20 + v27 != *(v29 - 1))
                {
                  v29 += 1280;
                  if (!--v28)
                  {
                    goto LABEL_34;
                  }
                }

                v32 = *v29;
                if (!*v29)
                {
LABEL_48:
                  result = 5;
                  goto LABEL_3;
                }

                --v18;
                goto LABEL_42;
              }
            }

LABEL_34:
            v30 = v22 + 1;
            v31 = 1;
            do
            {
              v32 = v31++;
              v33 = *(v25 + 4 * ((v30 >> 4) & 0xFFE)) >> v30;
              ++v30;
            }

            while ((v33 & 1) == 0);
            v34 = &v49[v24];
            *v34 = v27 + v20;
            v34[1] = 16 * v32;
            if (++v24 >= 0x100)
            {
              v37(v11, v38, 1, v49);
              v20 = v39;
              v24 = 0;
            }

            goto LABEL_41;
          }
        }

        else
        {
          result = 0;
        }
      }
    }
  }

LABEL_3:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void tiny_malloc_from_free_list(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a4;
  LODWORD(v7) = a4 - 1;
  if ((a4 - 64) >= 0xFFC1u)
  {
    v7 = v7;
  }

  else
  {
    v7 = 63;
  }

  v8 = *(a2 + 32 + 8 * v7);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      *v9 = *v8;
    }

    else
    {
      *(a2 + 4 * (v7 >> 5) + 2088) &= ~(1 << v7);
    }

    *(a2 + 32 + 8 * v7) = v9;
    v15 = ((v8 & 0xFFFFFFFFFFF00000) + 4 * v7 + 16168);
    v16 = *v15;
    if (v16 - 1 != ((v8 + 1032064) >> 4))
    {
      purgeable_ptr_in_use_enumerator_cold_1(a1);
    }

    if (v9)
    {
      v17 = (v9 & 0xFFFFFFFFFFF00000) == (v8 & 0xFFFFFFFFFFF00000);
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = ((v9 + 1032064) >> 4) + 1;
      if (v16 == v15[1])
      {
        v15[1] = v18;
      }
    }

    else
    {
      LOWORD(v18) = 0;
      v15[1] = 0;
    }

    *v15 = v18;
    if (!malloc_zero_policy)
    {
      _tiny_check_and_zero_inline_meta_from_freelist(a1, v8, a4);
    }

    goto LABEL_72;
  }

  v10 = *(a2 + 2088) & (-1 << v7);
  if (v10)
  {
    v11 = __clz(__rbit64(v10));
    if (v11 != 63)
    {
      v12 = a2 + 8 * v11;
      v8 = *(v12 + 32);
      if (v8)
      {
        v13 = *(v8 + 8);
        v14 = v13;
        *(v12 + 32) = v13;
        if (v13)
        {
          *v13 = *v8;
        }

        else
        {
          *(a2 + 2088 + ((v11 >> 3) & 0xC)) &= ~(1 << v11);
        }

        v43 = v8 & 0xFFFFFFFFFFF00000;
        if (v8 + 16 >= (v8 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v8 + 16) & 0xFFFFFFFFFFF00000 | ((((v8 + 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v8 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = *(v8 + 16);
        }

        if (v20 < a4)
        {
          v67 = v20;
          v68 = v14;
          malloc_zone_error(256, 1, "Corruption of tiny freelist %p: size too small (%u/%u)\n");
          v20 = v67;
          v14 = v68;
        }

        v44 = (v43 + 4 * v11 + 16168);
        v45 = *v44;
        if (v45 - 1 != ((v8 - v43 - 16512) >> 4))
        {
          purgeable_ptr_in_use_enumerator_cold_1(a1);
        }

        if (v14)
        {
          v46 = (v14 & 0xFFFFFFFFFFF00000) == v43;
        }

        else
        {
          v46 = 0;
        }

        if (v46)
        {
          v47 = ((v14 + 1032064) >> 4) + 1;
          if (v45 == *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A))
          {
            *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A) = v47;
          }
        }

        else
        {
          LOWORD(v47) = 0;
          *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A) = 0;
        }

        *v44 = v47;
LABEL_65:
        if (!malloc_zero_policy)
        {
          v48 = v20;
          _tiny_check_and_zero_inline_meta_from_freelist(a1, v8, v20);
          v20 = v48;
        }

        if (v4 <= (v20 - 1))
        {
          tiny_free_list_add_ptr(a1, a2, v8 + 16 * v4, (v20 - v4));
        }

        else
        {
          v4 = v20;
        }

        goto LABEL_72;
      }
    }

    v8 = *(a2 + 536);
    if (v8)
    {
      v19 = v8 & 0xFFFFFFFFFFF00000;
      if (v8 + 16 >= (v8 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v8 + 16) & 0xFFFFFFFFFFF00000 | ((((v8 + 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 0x28) >> ((((v8 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(v8 + 16);
      }

      v21 = v20 - a4;
      if (v20 < a4)
      {
        v66 = v20;
        malloc_zone_error(256, 1, "Corruption of tiny freelist %p: size too small (%u/%u)\n");
        v20 = v66;
      }

      v22 = *(v8 + 8);
      if (v21 >= 64)
      {
        v23 = v8 + 16 * v4;
        v24 = *v8;
        if (!malloc_zero_policy)
        {
          v25 = a1;
          v26 = *v8;
          _tiny_check_and_zero_inline_meta_from_freelist(v25, v8, v20);
          v24 = v26;
        }

        *(a2 + 536) = v23;
        if (v22)
        {
          *v22 = v23;
        }

        *v23 = v24;
        *(v23 + 8) = v22;
        v27 = (v23 & 0xFFFFF) - 16512;
        v28 = v23 & 0xFFFFFFFFFFF00000 | (v27 >> 6) & 0x3FF8;
        LODWORD(v27) = 1 << (v27 >> 4);
        v29 = *(v28 + 40) | v27;
        LODWORD(v27) = *(v28 + 44) & ~v27;
        *(v28 + 40) = v29;
        *(v28 + 44) = v27;
        *(v23 + 16 * v21 - 2) = v21;
        *(v23 + 16) = v21;
        v30 = *((v8 & 0xFFFFFFFFFFF00000) + 0x4024);
        if (v30 - 1 != ((v8 - v19 - 16512) >> 4))
        {
          purgeable_ptr_in_use_enumerator_cold_1(a1);
        }

        if ((v23 & 0xFFFFFFFFFFF00000) == v19)
        {
          v31 = ((v23 + 1032064) >> 4) + 1;
          if (v30 == *((v8 & 0xFFFFFFFFFFF00000) + 0x4026))
          {
            *((v8 & 0xFFFFFFFFFFF00000) + 0x4026) = v31;
          }
        }

        else
        {
          LOWORD(v31) = 0;
          *((v8 & 0xFFFFFFFFFFF00000) + 0x4026) = 0;
        }

        *((v8 & 0xFFFFFFFFFFF00000) + 0x4024) = v31;
        goto LABEL_72;
      }

      if (v22)
      {
        *v22 = *v8;
      }

      *(a2 + 536) = v22;
      v40 = (v19 + 4 * v11 + 16168);
      v41 = *v40;
      if (v41 - 1 != ((v8 - v19 - 16512) >> 4))
      {
        purgeable_ptr_in_use_enumerator_cold_1(a1);
      }

      if (v22 && (v22 & 0xFFFFFFFFFFF00000) == v19)
      {
        v42 = ((v22 + 1032064) >> 4) + 1;
        if (v41 == *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A))
        {
          *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A) = v42;
        }
      }

      else
      {
        LOWORD(v42) = 0;
        *((v8 & 0xFFFFFFFFFFF00000) + 4 * v11 + 0x3F2A) = 0;
      }

      *v40 = v42;
      goto LABEL_65;
    }
  }

  v32 = *(a2 + 2128);
  if (v32 < 16 * a4)
  {
    return;
  }

  v33 = 16 * a4;
  v8 = *(a2 + 2144) - v32 + 0x100000;
  v34 = v32 - v33;
  *(a2 + 2128) = v34;
  if (v34)
  {
    v35 = v8 + v33;
    v36 = v35 & 0xFFFFF;
    v37 = v35 & 0xFFFFFFFFFFF00000 | 0x28;
    v38 = v36 - 16512;
    v39 = (v36 - 16512) >> 4;
    *(v37 + ((v38 >> 6) & 0x3FF8)) = vorr_s8(*(v37 + ((v38 >> 6) & 0x3FF8)), vdup_n_s32(1 << v39));
    *(v37 + 4 * (((v39 + 1) >> 4) & 0xFFE)) |= 1 << (v39 + 1);
  }

LABEL_72:
  ++*(a2 + 2168);
  v49 = 16 * v4;
  *(a2 + 2152) += v49;
  v50 = v8 & 0xFFFFFFFFFFF00000;
  v51 = (v8 & 0xFFFFFFFFFFF00000 | 0x407C);
  if (*v51 == unk_1ED404329)
  {
    v52 = vadd_s32(*((v8 & 0xFFFFFFFFFFF00000) + 0x10), (v49 | 0x100000000));
    *((v8 & 0xFFFFFFFFFFF00000) + 0x10) = v52;
    if (v52.i32[0] >= 0xBCFA0u)
    {
      *((v8 & 0xFFFFFFFFFFF00000) + 0x20) = 0;
    }

    v53 = v50 + 40;
    v54 = v8 - v50 - 16512;
    v55 = v54 >> 4;
    if (v4 < 2)
    {
      *(v53 + ((v54 >> 6) & 0x3FF8)) = vorr_s8(*(v53 + ((v54 >> 6) & 0x3FF8)), vdup_n_s32(1 << v55));
      v63 = v55 + 1;
    }

    else
    {
      *(v53 + ((v54 >> 6) & 0x3FF8)) = vorr_s8(*(v53 + ((v54 >> 6) & 0x3FF8)), vdup_n_s32(1 << v55));
      v56 = v55 + 1;
      v57 = v56 >> 4;
      v58 = (v56 & 0x1F) + (v4 - 1);
      v59 = 0x7FFFFFFFu >> (v56 & 0x1F ^ 0x1F);
      if (v58 < 0x40)
      {
        v64 = (v53 + 4 * (v57 & 0xFFE));
        v65 = *v64;
        v62 = (v53 + 4 * (v57 | 1u));
        if (v58 < 0x20)
        {
          v60 = v59 | (-1 << v58);
          *v64 = v65 & v60;
        }

        else
        {
          v60 = -1 << v58;
          *v64 = v65 & v59;
          *v62 &= v59;
          v64[2] &= v60;
          v62 = v64 + 3;
        }
      }

      else
      {
        v60 = -1 << v58;
        v61 = v53 + 4 * (v57 & 0xFFE);
        *v61 &= v59;
        *(v53 + 4 * (v57 | 1u)) &= v59;
        *(v61 + 8) = 0;
        *(v61 + 16) &= v60;
        v62 = (v61 + 20);
      }

      *v62 &= v60;
      v63 = v4 - 1 + v56;
    }

    *(v53 + 4 * ((v63 >> 4) & 0xFFE)) |= 1 << (v63 & 0x1F);
  }

  else
  {
    v69 = *v51;
    malloc_zone_error(64, 1, "Region cookie corrupted for region %p (value is %x)[%p]\n");
    __break(1u);
  }
}

uint64_t tiny_size(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = a2 & 0xFFFFFFFFFFF00000;
    v5 = v2[2];
    v6 = (0x9E3779B97F4A7C55 * (a2 >> 20)) >> -*(v2 + 8);
    v7 = v6;
    while (1)
    {
      v8 = *(v5 + 8 * v7);
      if (!v8)
      {
        return 0;
      }

      if (v8 == v4)
      {
        break;
      }

      if (v7 + 1 == v3)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v7 == v6)
      {
        return 0;
      }
    }

    if (((a2 + 1032064) & 0xFFF80u) > 0xFBF70uLL)
    {
      malloc_printf("NO ZONE for ptr %p\n", a2);
      return 0;
    }

    v10 = a2 - v4 - 16512;
    v11 = (v10 >> 8) & 0xFFE;
    v12 = 1 << (v10 >> 4);
    v13 = (v4 + 40 + 4 * v11);
    v14 = *v13;
    if ((v14 & v12) != 0)
    {
      if ((*((a2 & 0xFFFFFFFFFFF00000) + 0x28 + 4 * (v11 | 1)) & v12) == 0)
      {
        return 0;
      }

      v15 = (v10 >> 4) & 0x1F;
      v16 = (v13[2] << (32 - v15)) | (v14 >> v15);
      if (v15)
      {
        v16 |= v13[4] << -v15;
      }

      v17 = __clz(__rbit64(v16 >> 1));
      if (v16 >= 2)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = 0;
      }

      v19 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
      if (v19 != -1)
      {
        if (v18 > 0xF)
        {
          v18 = v17 + 1;
          return 16 * v18;
        }

LABEL_24:
        if (*(*(a1 + 624) + 2560 * v19 + 8) == a2)
        {
          return 0;
        }

        return 16 * v18;
      }
    }

    else
    {
      v18 = 0;
      v19 = *((a2 & 0xFFFFFFFFFFF00000) + 0x18);
      if (v19 != -1)
      {
        goto LABEL_24;
      }
    }

    v20 = *(a1 + 608);
    if (v20 < 1)
    {
      return 16 * v18;
    }

    for (i = 8; v18 > 0xF || *(*(a1 + 624) + i) != a2; i += 2560)
    {
      if (!--v20)
      {
        return 16 * v18;
      }
    }
  }

  return 0;
}

uint64_t tiny_batch_malloc(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 + 15;
  v8 = ((a2 + 15) >> 4);
  thread_index = rack_get_thread_index(a1 + 16512);
  v11 = 0;
  v12 = (*(a1 + 17136) + 2560 * (thread_index % *(a1 + 17120)));
  if (((v7 >> 4) & 0xFFFE) != 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v12, &v11, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    os_unfair_lock_lock_with_options();
  }

  if (a4)
  {
    v15 = 0;
    a4 = a4;
    while (1)
    {
      tiny_malloc_from_free_list(a1 + 16512, v12, v10, v13);
      if (!v16)
      {
        break;
      }

      *(a3 + 8 * v15++) = v16;
      if (a4 == v15)
      {
        goto LABEL_12;
      }
    }

    a4 = v15;
  }

LABEL_12:
  v17 = *(StatusReg + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v12, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(v12);
  }

  return a4;
}

void tiny_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = a3;
  v38 = a3;
  while (1)
  {
    v11 = *(a2 + 8 * v5);
    if (!v11)
    {
      goto LABEL_40;
    }

    v12 = v11 & 0xFFFFFFFFFFF00000;
    if (!v7 || v7 != v12)
    {
      break;
    }

LABEL_26:
    if (((v11 + 1032064) & 0xFFF80u) > 0xFBF70uLL)
    {
      goto LABEL_41;
    }

    v26 = v11 - v12 - 16512;
    v27 = (v26 >> 8) & 0xFFE;
    v28 = 1 << (v26 >> 4);
    v29 = (v12 + 40 + 4 * v27);
    v30 = *v29;
    if ((v30 & v28) != 0)
    {
      if ((*((v11 & 0xFFFFFFFFFFF00000) + 0x28 + 4 * (v27 | 1)) & v28) == 0)
      {
        goto LABEL_41;
      }

      v31 = (v26 >> 4) & 0x1F;
      v32 = (v29[2] << (32 - ((v26 >> 4) & 0x1F))) | (v30 >> ((v26 >> 4) & 0x1F));
      if (v31)
      {
        v32 |= v29[4] << -v31;
      }

      v33 = __clz(__rbit64(v32 >> 1));
      if (v32 >= 2)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    if (!malloc_zero_policy)
    {
      _platform_memset();
    }

    tiny_free_no_lock(a1 + 16512, v6, v8, v7, v11, v34, 0);
    if (!v35)
    {
      v7 = 0;
      v6 = 0;
    }

    *(a2 + 8 * v5) = 0;
    v10 = v38;
LABEL_40:
    if (++v5 == v10)
    {
LABEL_41:
      if (v6)
      {
        v36 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v37 = v36;
        atomic_compare_exchange_strong_explicit(v6, &v37, 0, memory_order_release, memory_order_relaxed);
        if (v37 != v36)
        {

          os_unfair_lock_unlock(v6);
        }
      }

      return;
    }
  }

  if (v6)
  {
    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(v6, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      os_unfair_lock_unlock(v6);
    }
  }

  v15 = *(a1 + 16536);
  v16 = *v15;
  if (*v15)
  {
    v17 = v15[2];
    v18 = (0x9E3779B97F4A7C55 * (v11 >> 20)) >> -*(v15 + 8);
    v19 = v18;
    do
    {
      v7 = *(v17 + 8 * v19);
      if (!v7)
      {
        break;
      }

      if (v7 == v12)
      {
        v20 = 0;
        v21 = *(a1 + 17136);
        v8 = *(v7 + 24);
        v6 = (v21 + 2560 * v8);
        atomic_compare_exchange_strong_explicit(v6, &v20, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v20)
        {
          os_unfair_lock_lock_with_options();
        }

        for (i = *(v7 + 24); v8 != i; i = *(v7 + 24))
        {
          v8 = i;
          v23 = *(StatusReg + 24);
          v24 = v23;
          atomic_compare_exchange_strong_explicit(v6, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != v23)
          {
            os_unfair_lock_unlock(v6);
          }

          v25 = 0;
          v6 = (v21 + 2560 * v8);
          atomic_compare_exchange_strong_explicit(v6, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v25)
          {
            os_unfair_lock_lock_with_options();
          }
        }

        goto LABEL_26;
      }

      if (v19 + 1 == v16)
      {
        v19 = 0;
      }

      else
      {
        ++v19;
      }
    }

    while (v19 != v18);
  }
}

uint64_t print_tiny_free_list(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t, uint64_t *), void (*a3)(const char *, ...), uint64_t a4)
{
  result = _simple_salloc();
  if (result)
  {
    v15 = 0;
    v16 = 0;
    if (a2(a1, a4, 768, &v16))
    {
      v8 = "Failed to map tiny rack\n";
      return (a3)(v8);
    }

    _simple_sappend();
    if (a2(a1, *(v16 + 624), 2560 * *(v16 + 608), &v15))
    {
      v8 = "Failed to map tiny rack magazines\n";
      return (a3)(v8);
    }

    if ((*(v16 + 608) & 0x80000000) == 0)
    {
      v9 = -1;
      do
      {
        _simple_sprintf();
        for (i = 0; i != 64; ++i)
        {
          v11 = *(v15 + 2560 * v9 + 8 * i + 32);
          if (v11)
          {
            v12 = 0;
            v17 = 0;
            while (v11)
            {
              if (a2(a1, v11, 16, &v17))
              {
                a3("** invalid pointer in free list: %p\n", v11);
                break;
              }

              v11 = *(v17 + 8);
              ++v12;
            }

            _simple_sprintf();
          }
        }

        _simple_sappend();
        ++v9;
      }

      while (v9 < *(v16 + 608));
    }

    v13 = _simple_string();
    a3("%s\n", v13);
    return _simple_sfree();
  }

  return result;
}

uint64_t print_tiny_region(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v49 = *MEMORY[0x1E69E9840];
  v12 = (v6 + 16512);
  v47 = 0;
  if (v13(v1, v6 + 16512, 0x100000, &v47))
  {
    result = v11("Failed to map tiny region at %p\n", v12);
    goto LABEL_40;
  }

  if (v7 == -1)
  {
    result = _simple_salloc();
    if (!result)
    {
      goto LABEL_40;
    }

    _simple_sprintf();
    v39 = _simple_string();
    v11("%s\n", v39);
LABEL_39:
    result = _simple_sfree();
    goto LABEL_40;
  }

  v46 = v9;
  v15 = &v12[v5];
  v16 = v7 + 0x100000 - v3;
  v17 = v47;
  _platform_memset();
  v18 = 0;
  v19 = 0;
  if (&v12[v5] < v16)
  {
    v20 = v17 - v12;
    v21 = *MEMORY[0x1E69E9AC8];
    v22 = -*MEMORY[0x1E69E9AC8];
    while (1)
    {
      v23 = (v15 & 0xFFFFFFFFFFF00000) + v20 + 40;
      v24 = v15 - (v15 & 0xFFF00000 | 0x4080);
      v25 = (v24 >> 8) & 0xFFE;
      v26 = 1 << (v24 >> 4);
      v27 = (v23 + 4 * v25);
      v28 = *v27;
      if ((v28 & v26) == 0)
      {
        break;
      }

      if ((*(v23 + 4 * (v25 | 1)) & v26) != 0)
      {
        v29 = (v24 >> 4) & 0x1F;
        v30 = (v27[2] << (32 - v29)) | (v28 >> v29);
        if (v29)
        {
          v30 |= v27[4] << -v29;
        }

        if (v30 < 2)
        {
          break;
        }

        v31 = __clz(__rbit64(v30 >> 1)) + 1;
        ++v48[v31];
        ++v18;
        v32 = 16 * v31;
      }

      else
      {
        if (v15 + 16 >= (v15 & 0xFFFFFFFFFFF00000) + 0x100000 || ((*(((v15 + 16) & 0xFFFFFFFFFFF00000) + v20 + (((((v15 + 16) & 0xFFFFF) - 16512) >> 6) & 0x3FF8) + 40) >> ((((v15 + 16) & 0xFFFFFu) - 16512) >> 4)) & 1) != 0)
        {
          v33 = 1;
        }

        else
        {
          v33 = *(v15 + v20 + 16);
          if (v15 == v12 && !*(v15 + v20 + 16))
          {
            goto LABEL_24;
          }

          if (!*(v15 + v20 + 16))
          {
            break;
          }
        }

        v34 = (v15 + v21 + 17) & v22;
        v32 = 16 * v33;
        v35 = (v15 + v32 - 2) & v22;
        v36 = v35 >= v34;
        v37 = v35 - v34;
        if (!v36)
        {
          v37 = 0;
        }

        v19 += v37;
      }

      v15 += v32;
      if (v15 >= v16)
      {
        goto LABEL_24;
      }
    }

    v11("*** error with %p: msize=%d\n", v15, 0);
  }

LABEL_24:
  result = _simple_salloc();
  if (result)
  {
    v38 = *(v17 + 24);
    _simple_sprintf();
    _simple_sprintf();
    v45 = *(v17 + 16);
    _simple_sprintf();
    if (v3 | v5)
    {
      _simple_sprintf();
    }

    if (v38 != -1)
    {
      _simple_sprintf();
      *(v17 + 16);
    }

    _simple_sprintf();
    if (v46 >= 2 && v18)
    {
      _simple_sappend();
      v40 = 0;
      v41 = v48;
      do
      {
        if (*v41++)
        {
          _simple_sprintf();
        }

        v40 += 16;
      }

      while (v40 != 0x4000);
    }

    v43 = _simple_string();
    v11("%s\n", v43);
    goto LABEL_39;
  }

LABEL_40:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_tiny_meta_header_offset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = (a1 & 0xFFFFFFFFFFF00000) + a2 + 40;
  v4 = a1 - (a1 & 0xFFF00000 | 0x4080);
  v5 = (v4 >> 8) & 0xFFE;
  v6 = 1 << (v4 >> 4);
  *a3 = 0;
  v7 = (v3 + 4 * v5);
  v8 = *v7;
  if ((v8 & v6) == 0)
  {
    return 0;
  }

  if ((*(v3 + 4 * (v5 | 1)) & v6) != 0)
  {
    v9 = (v4 >> 4) & 0x1F;
    v10 = (v7[2] << (32 - v9)) | (v8 >> ((v4 >> 4) & 0x1F));
    if (v9)
    {
      v10 |= v7[4] << -v9;
    }

    v11 = __clz(__rbit64(v10 >> 1));
    if (v10 >= 2)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = 1;
    *a3 = 1;
    if (a1 + 16 < (a1 & 0xFFFFFFFFFFF00000) + 0x100000)
    {
      if ((*(((a1 + 16) & 0xFFFFFFFFFFF00000) + a2 + (((((a1 + 16) & 0xFFFFFuLL) - 16512) >> 6) & 0x3FF8) + 40) >> ((((a1 + 16) & 0xFFFFFu) - 16512) >> 4)))
      {
        return 1;
      }

      else
      {
        return *(a1 + a2 + 16);
      }
    }
  }

  return v12;
}

uint64_t tiny_free_list_check(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 608) & 0x80000000) != 0)
  {
    return 1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = -1;
  v5 = 0x9E3779B97F4A7C55;
  v6 = a2;
  while (1)
  {
    v7 = 0;
    v8 = (*(a1 + 624) + 2560 * v4);
    atomic_compare_exchange_strong_explicit(v8, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      v9 = v5;
      os_unfair_lock_lock_with_options();
      v5 = v9;
    }

    v10 = *(*(a1 + 624) + 2560 * v4 + 8 * v6 + 32);
    if (v10)
    {
      break;
    }

LABEL_21:
    v22 = *(StatusReg + 24);
    v23 = v22;
    atomic_compare_exchange_strong_explicit(v8, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != v22)
    {
      v24 = v8;
      v25 = v5;
      os_unfair_lock_unlock(v24);
      v5 = v25;
    }

    ++v4;
    result = 1;
    if (v4 >= *(a1 + 608))
    {
      return result;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_7:
  v13 = (v10 & 0xFFFFF) - 16512;
  v14 = (v13 >> 8) & 0xFFE;
  v15 = 1 << (v13 >> 4);
  if ((*((v10 & 0xFFFFFFFFFFF00000 | (8 * ((v14 >> 1) & 0x7FF))) + 0x28) & v15) == 0 || (*((v10 & 0xFFFFFFFFFFF00000) + 4 * v14 + 0x2C) & v15) != 0)
  {
    v27 = " (slot=%u), counter=%d\n*** in-use ptr in free list slot=%u count=%d ptr=%p\n";
  }

  else if ((v10 & 0xF) != 0)
  {
    v27 = " (slot=%u), counter=%d\n*** unaligned ptr in free list slot=%u count=%d ptr=%p\n";
  }

  else
  {
    v16 = *(a1 + 24);
    v17 = *v16;
    if (*v16)
    {
      v18 = v16[2];
      v19 = ((v10 >> 20) * v5) >> -*(v16 + 8);
      v20 = v19;
      do
      {
        v21 = *(v18 + 8 * v20);
        if (!v21)
        {
          break;
        }

        if (v21 == (v10 & 0xFFFFFFFFFFF00000))
        {
          if (v11 != *v10)
          {
            v27 = " (slot=%u), counter=%d\n*** previous incorrectly set slot=%u count=%d ptr=%p\n";
            goto LABEL_26;
          }

          ++v12;
          v11 = v10;
          v10 = *(v10 + 8);
          if (v10)
          {
            goto LABEL_7;
          }

          goto LABEL_21;
        }

        if (v20 + 1 == v17)
        {
          v20 = 0;
        }

        else
        {
          ++v20;
        }
      }

      while (v20 != v19);
    }

    v27 = " (slot=%u), counter=%d\n*** ptr not in szone slot=%d  count=%u ptr=%p\n";
  }

LABEL_26:
  malloc_zone_check_fail("check: tiny free list incorrect ", v27);
  v28 = *(StatusReg + 24);
  v29 = v28;
  atomic_compare_exchange_strong_explicit(v8, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != v28)
  {
    os_unfair_lock_unlock(v8);
  }

  return 0;
}

uint64_t tiny_check(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*v2)
  {
    v3 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v5 = *(v2[2] + 8 * v3);
      if ((v5 + 1) >= 2)
      {
        v6 = 0;
        v7 = *(a1 + 624);
        v8 = *(v5 + 24);
        v9 = (v7 + 2560 * v8);
        atomic_compare_exchange_strong_explicit(v9, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v6)
        {
          os_unfair_lock_lock_with_options();
        }

        v10 = *(v5 + 24);
        if (v10 != v8)
        {
          do
          {
            v11 = *(StatusReg + 24);
            v12 = v11;
            atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
            if (v12 != v11)
            {
              os_unfair_lock_unlock(v9);
            }

            v13 = 0;
            v9 = (v7 + 2560 * v10);
            atomic_compare_exchange_strong_explicit(v9, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v13)
            {
              os_unfair_lock_lock_with_options();
            }

            v14 = v10 == *(v5 + 24);
            v10 = *(v5 + 24);
          }

          while (!v14);
        }

        v15 = tiny_check_region(a1, v5);
        v16 = *(StatusReg + 24);
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v9, &v17, 0, memory_order_release, memory_order_relaxed);
        v18 = v17 == v16;
        if (!v15)
        {
          if (!v18)
          {
            os_unfair_lock_unlock(v9);
          }

          return 0;
        }

        if (!v18)
        {
          os_unfair_lock_unlock(v9);
        }
      }

      ++v3;
      v2 = *(a1 + 24);
    }

    while (v3 < *v2);
  }

  v19 = 0;
  while (1)
  {
    result = tiny_free_list_check(a1, v19);
    if (!result)
    {
      break;
    }

    if (++v19 == 63)
    {
      return 1;
    }
  }

  return result;
}

unint64_t tiny_free_try_depot_unmap_no_lock(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return 0;
  }

  if (*(a3 + 28) > 0)
  {
    return 0;
  }

  v5 = *(a2 + 2172);
  if (v5 < recirc_retained_regions)
  {
    return 0;
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  if (*a3)
  {
    *(v7 + 8) = v8;
  }

  else
  {
    *(a2 + 2176) = v8;
  }

  if (!v8)
  {
    v8 = (a2 + 2184);
  }

  *v8 = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a2 + 2172) = v5 - 1;
  v9 = a3 & 0xFFFFFFFFFFF00000;
  if (tiny_free_detach_region(a1, a2, a3 & 0xFFFFFFFFFFF00000))
  {
    malloc_zone_error(a1[155]._os_unfair_lock_opaque, 1, "tiny_free_try_depot_unmap_no_lock objects_in_use not zero: %d\n");
    return 0;
  }

  if (!rack_region_remove(a1, a3 & 0xFFFFFFFFFFF00000, a3))
  {
    return 0;
  }

  *(a2 + 2160) -= 1032064;
  return v9;
}

void _tiny_check_and_zero_inline_meta_from_freelist(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  *a2 = 0;
  a2[1] = 0;
  if (a3 >= 2)
  {
    v5 = *(a2 + 8);
    v6 = &a2[2 * a3];
    if (v5 == *(v6 - 1))
    {
      if (v5 == a3)
      {
LABEL_10:
        *(a2 + 8) = 0;
        *(v6 - 1) = 0;
        return;
      }

      v8 = *(a2 + 8);
      v7 = "Corruption at %p: unexpected msizes %u/%u\n";
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(v6 - 1);
      v7 = "Corruption of free object %p: msizes %u/%u disagree\n";
    }

    malloc_zone_error(256, 1, v7);
    goto LABEL_10;
  }

  if (!a3)
  {
    if (*(a2 + 8))
    {
      v9 = *(a2 + 8);
      malloc_zone_error(256, 1, "Corruption at %p: unexpected nonzero msize %u\n");
    }
  }
}

uint64_t _malloc_default_debug_sleep_time()
{
  if (malloc_error_sleep)
  {
    return 3600;
  }

  else
  {
    return 0;
  }
}

ssize_t _malloc_put(unsigned int a1, const char *a2)
{
  result = _simple_salloc();
  if (result)
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_sprintf();
    }

    _simple_sprintf();
    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      _simple_put();
    }

    if (_malloc_no_asl_log & ~(a1 >> 4))
    {
      _simple_string();
      _simple_asl_log();
    }

    return _simple_sfree();
  }

  else if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_dprintf();
    }

    v5 = strlen(a2);

    return write(2, a2, v5);
  }

  return result;
}

void malloc_report_simple(uint64_t a1)
{
  if (malloc_error_sleep)
  {
    v1 = 3600;
  }

  else
  {
    v1 = 0;
  }

  malloc_vreport(0x30u, v1, 0, 0, a1);
}

void malloc_zone_error(__int16 a1, char a2, uint64_t a3)
{
  v3 = a2 ^ 1;
  if ((a1 & 0x100) == 0)
  {
    v3 = 1;
  }

  if ((((a1 & 0x40) == 0) & v3) != 0)
  {
    v4 = 147;
  }

  else
  {
    v4 = 67;
  }

  if (malloc_error_sleep)
  {
    v5 = 3600;
  }

  else
  {
    v5 = 0;
  }

  malloc_vreport(v4, v5, 0, 0, a3);
}

void bitarray_set_cold_1(uint64_t a1)
{
  qword_1EAC7F640 = "FATAL ERROR - invalid bitarray level";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void bitarray_first_set_cold_1(unsigned int a1)
{
  qword_1EAC7F640 = "FATAL ERROR - invalid bitarray level";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_init_range_groups_cold_1(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: unsupported allocation front count";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_init_range_groups_cold_4(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: pointer range initial overwrite failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_init_range_groups_cold_17(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: unexpected error from mach_vm_range_create()";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_init_range_groups_cold_24()
{
  v0 = *__error();
  qword_1EAC7F640 = "BUG IN LIBMALLOC: sysctlbyname(vm.malloc_ranges) failed";
  qword_1EAC7F670 = v0;
  __break(1u);
}

void xzm_chunk_mark_free_cold_1(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_segment_group_alloc_chunk_cold_1(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: unknown segment group id";
  qword_1EAC7F670 = a1;
  __break(1u);
}

uint64_t xzm_segment_group_alloc_chunk_cold_2(mach_vm_address_t a1, char a2, mach_vm_size_t a3)
{
  address = a1;
  if (a2)
  {
    v3 = 33579010;
  }

  else
  {
    v3 = 33570818;
  }

  result = mach_vm_map(*MEMORY[0x1E69E9A60], &address, a3, 0, v3, 0, 0, 0, 3, 7, 1u);
  if (result)
  {
    qword_1EAC7F640 = "BUG IN LIBMALLOC: mach_vm_map() overwrite failed";
    qword_1EAC7F670 = result;
    __break(1u);
  }

  return result;
}

void _xzm_segment_group_overwrite_chunk_cold_1(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: mach_vm_map() overwrite failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_segment_group_segment_span_free_coalesce_cold_4(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_segment_group_alloc_segment_cold_2(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: pointer range mach_vm_map() overwrite failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_segment_group_segment_create_guard_cold_1()
{
  v0 = *__error();
  qword_1EAC7F640 = "BUG IN LIBMALLOC: Failed to mprotect guard page";
  qword_1EAC7F670 = v0;
  __break(1u);
}

void sanitizer_free(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 209) == 1)
    {
      v4 = (*(*(a1 + 200) + 16))();
      poison_free(a1, a2, v4);
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 208) == 1)
    {
      malloc_report(6u, "free(%p)\n");
    }

    place_into_quarantine(a1, a2, v4);
  }
}

uint64_t szone_pressure_relief_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_0();
  kdebug_trace();
  v4 = *a3;
  OUTLINED_FUNCTION_0();

  return kdebug_trace();
}

void small_free_list_remove_ptr_no_clear_cold_1(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 620);
  small_free_list_get_ptr(a2);
  small_free_list_get_ptr(a3);
  malloc_zone_error(v4, 1, "small_free_list_remove_ptr_no_clear: Internal invariant broken (next ptr of prev) for %p, prev_next=%p\n");
  __break(1u);
}

void small_free_list_remove_ptr_no_clear_cold_2(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 620);
  small_free_list_get_ptr(a2);
  small_free_list_get_ptr(a3);
  malloc_zone_error(v4, 1, "small_free_list_remove_ptr_no_clear: Internal invariant broken (prev ptr of next) for %p, next_prev=%p\n");
  __break(1u);
}

void rack_init_cold_1()
{
  malloc_report(3u, "*** FATAL ERROR - unable to allocate magazine array.\n");
  qword_1EAC7F640 = "FATAL ERROR - unable to allocate magazine array";
  __break(1u);
}

uint64_t malloc_type_zone_malloc_with_options(malloc_zone_t *a1, size_t a2, size_t a3, unint64_t a4, unint64_t a5)
{
  if ((a2 | 8) == 8 || (a2 & (a2 - 1)) == 0 && ((a2 - 1) & a3) == 0)
  {
    if (malloc_logger || (malloc_slowpath & 1) != 0)
    {
      return _malloc_type_zone_malloc_with_options_outlined(a1, a2, a3, a4, a5);
    }

    if (default_zone == a1)
    {
      a1 = *malloc_zones;
      if (*malloc_zones)
      {
        goto LABEL_6;
      }
    }

    else if (a1)
    {
LABEL_6:
      if (a1->version >= 0x10)
      {
        valloc = a1[1].valloc;
        if (valloc)
        {
          v6 = a1[1].valloc;
          return valloc();
        }
      }

      return _malloc_type_zone_malloc_with_options_outlined(a1, a2, a3, a4, a5);
    }

    a1 = *malloc_zones;
    goto LABEL_6;
  }

  return 0;
}

void mfm_initialize_cold_1(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: failed to overwrite mfm arena";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void mfm_initialize_cold_2()
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: failed to allocate memory";
  qword_1EAC7F670 = 0;
  __break(1u);
}

void mfm_free_cold_1(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: not MFM owned";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void mfm_free_cold_2(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: invalid address";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void mfm_free_cold_3(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: double free detected";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void mfm_free_cold_4(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: not an allocated block";
  qword_1EAC7F670 = a1;
  __break(1u);
}

uint64_t pgm_claimed_address(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    return 1;
  }

  else
  {
    return (*(a1[25] + 136))();
  }
}

void pgm_create_zone_cold_3()
{
  malloc_report(3u, "*** FATAL ERROR - ProbGuard: bad configuration.\n");
  qword_1EAC7F640 = "FATAL ERROR - ProbGuard: bad configuration";
  __break(1u);
}

void pgm_create_zone_cold_4()
{
  malloc_report(3u, "*** FATAL ERROR - ProbGuard: memory budget too small.\n");
  qword_1EAC7F640 = "FATAL ERROR - ProbGuard: memory budget too small";
  __break(1u);
}

void debug_zone_cold_1(uint64_t a1)
{
  malloc_report(3u, "*** FATAL ERROR - ProbGuard: zone integrity check failed.\n");
  qword_1EAC7F640 = "FATAL ERROR - ProbGuard: zone integrity check failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void deallocate_cold_3(uint64_t a1)
{
  malloc_report(3u, "*** FATAL ERROR - ProbGuard: invalid pointer passed to free.\n");
  qword_1EAC7F640 = "FATAL ERROR - ProbGuard: invalid pointer passed to free";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void reallocate_cold_2(uint64_t a1)
{
  malloc_report(3u, "*** FATAL ERROR - ProbGuard: invalid pointer passed to realloc.\n");
  qword_1EAC7F640 = "FATAL ERROR - ProbGuard: invalid pointer passed to realloc";
  qword_1EAC7F670 = a1;
  __break(1u);
}

BOOL nanov2_create_zone_cold_2()
{
  kdebug_trace();
  vm_space = nano_common_allocate_vm_space(0x300000000uLL, 0x20000000uLL);
  kdebug_trace();
  return vm_space;
}

void xzm_realloc_cold_2(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: pointer zone mismatch, client may be passing the wrong malloc zone";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_create_cold_2(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: invalid executable_boothash length";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_create_cold_3(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: mach_timebase_info failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void xzm_main_malloc_zone_create_cold_4(int a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: pthread_key_init_np failed";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_thread_cache_destructor_cold_1(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - cookie, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_thread_cache_destructor_cold_2(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - linkage, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_thread_cache_destructor_cold_3(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - inconsistent walk, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_thread_cache_destructor_cold_4(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist - free count, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_malloc_from_freelist_chunk_cold_1(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: memory corruption of free block";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_madvise_batch_cold_4(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: Unexpected chunk kind";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_xzone_free_to_chunk_cold_1(unsigned __int8 a1)
{
  qword_1EAC7F640 = "BUG IN LIBMALLOC: Attempting to free to non-chunk slice";
  qword_1EAC7F670 = a1;
  __break(1u);
}

uint64_t _xzm_allocation_slots_do_lock_action_cold_2(uint64_t result)
{
  if (result != -14 && result != -4)
  {
    qword_1EAC7F640 = "BUG IN LIBMALLOC: ulock_wait failure";
    qword_1EAC7F670 = -result;
    __break(1u);
  }

  return result;
}

void xzm_malloc_zone_free_slow_cold_3(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: pointer being freed was not allocated";
  qword_1EAC7F670 = a1;
  __break(1u);
}

uint64_t malloc_zone_malloc_with_options(malloc_zone_t *a1, size_t a2, size_t a3, unint64_t a4)
{
  if ((a2 | 8) != 8 && ((a2 & (a2 - 1)) != 0 || ((a2 - 1) & a3) != 0))
  {
    return 0;
  }

  if (malloc_logger || (malloc_slowpath & 1) != 0)
  {
    return _malloc_zone_malloc_with_options_outlined(a1, a2, a3, a4);
  }

  if (!a1 || default_zone == a1)
  {
    a1 = *malloc_zones;
  }

  if (a1->version < 0x10)
  {
    return _malloc_zone_malloc_with_options_outlined(a1, a2, a3, a4);
  }

  valloc = a1[1].valloc;
  if (!valloc)
  {
    return _malloc_zone_malloc_with_options_outlined(a1, a2, a3, a4);
  }

  v5 = a1[1].valloc;
  return valloc();
}

void __malloc_init_cold_1()
{
  malloc_report(3u, "*** FATAL ERROR - logical_ncpus %% phys_ncpus != 0\n.\n");
  qword_1EAC7F640 = "FATAL ERROR - logical_ncpus %% phys_ncpus != 0\n";
  qword_1EAC7F670 = logical_ncpus % phys_ncpus;
  __break(1u);
}

void __malloc_init_cold_2()
{
  malloc_report(3u, "*** FATAL ERROR - logical_ncpus / phys_ncpus not 1, 2, or 4.\n");
  qword_1EAC7F640 = "FATAL ERROR - logical_ncpus / phys_ncpus not 1, 2, or 4";
  qword_1EAC7F670 = logical_ncpus / phys_ncpus;
  __break(1u);
}

uint64_t malloc_zone_batch_free_cold_1(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      v6 = *a3++;
      result = malloc_logger(12, a2, v6, 0, 0, 0);
      --v5;
    }

    while (v5);
  }

  return result;
}

void tiny_zero_corruption_abort(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = (16 * a2);
    ;
  }

  v5 = a1 + v3;
  v6 = (a1 + v2);
  if (a1 + v2 < (a1 + v3))
  {
    v51 = *v6;
  }

  if ((v6 + 1) < v5)
  {
    v50 = v6[1];
  }

  v7 = a1 + v2;
  if (a1 + v2 + 2 < v5)
  {
    v49 = *(v7 + 2);
  }

  if (v7 + 3 < v5)
  {
    v48 = *(v7 + 3);
  }

  v8 = a1 + v2;
  if (a1 + v2 + 4 < v5)
  {
    v47 = *(v8 + 4);
  }

  if (v8 + 5 < v5)
  {
    v46 = *(v8 + 5);
  }

  v9 = a1 + v2;
  if (a1 + v2 + 6 < v5)
  {
    v45 = *(v9 + 6);
  }

  if (v9 + 7 < v5)
  {
    v44 = *(v9 + 7);
  }

  v10 = a1 + v2;
  if (a1 + v2 + 8 < v5)
  {
    v43 = *(v10 + 8);
  }

  if (v10 + 9 < v5)
  {
    v11 = *(v10 + 9);
  }

  v12 = a1 + v2;
  if (a1 + v2 + 10 < v5)
  {
    v13 = *(v12 + 10);
  }

  if (v12 + 11 < v5)
  {
    v14 = *(v12 + 11);
  }

  v15 = a1 + v2;
  if (a1 + v2 + 12 < v5)
  {
    v16 = *(v15 + 12);
  }

  if (v15 + 13 < v5)
  {
    v17 = *(v15 + 13);
  }

  v18 = a1 + v2;
  if (a1 + v2 + 14 < v5)
  {
    v19 = *(v18 + 14);
  }

  if (v18 + 15 < v5)
  {
    v20 = *(v18 + 15);
  }

  v21 = a1 + v2;
  if (a1 + v2 + 16 < v5)
  {
    v22 = *(v21 + 16);
  }

  if (v21 + 17 < v5)
  {
    v23 = *(v21 + 17);
  }

  v24 = a1 + v2;
  if (a1 + v2 + 18 < v5)
  {
    v25 = *(v24 + 18);
  }

  if (v24 + 19 < v5)
  {
    v26 = *(v24 + 19);
  }

  v27 = a1 + v2;
  if (a1 + v2 + 20 < v5)
  {
    v28 = *(v27 + 20);
  }

  if (v27 + 21 < v5)
  {
    v29 = *(v27 + 21);
  }

  v30 = a1 + v2;
  if (a1 + v2 + 22 < v5)
  {
    v31 = *(v30 + 22);
  }

  if (v30 + 23 < v5)
  {
    v32 = *(v30 + 23);
  }

  v33 = a1 + v2;
  if (a1 + v2 + 24 < v5)
  {
    v34 = *(v33 + 24);
  }

  if (v33 + 25 < v5)
  {
    v35 = *(v33 + 25);
  }

  v36 = a1 + v2;
  if (a1 + v2 + 26 < v5)
  {
    v37 = *(v36 + 26);
  }

  if (v36 + 27 < v5)
  {
    v38 = *(v36 + 27);
  }

  v39 = a1 + v2;
  if (a1 + v2 + 28 < v5)
  {
    v40 = *(v39 + 28);
  }

  if (v39 + 29 < v5)
  {
    v41 = *(v39 + 29);
  }

  if (a1 + v2 + 30 < v5)
  {
    v42 = *(a1 + v2 + 30);
  }

  malloc_zone_error(256, 1, "Corruption detected in block %p of size %u at offset %u, first 32 bytes at that offset are %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X | %02X %02X %02X %02X %02X %02X %02X %02X\n");
}

void *__cdecl j__aligned_alloc(size_t __alignment, size_t __size)
{
    ;
  }
}

void *__cdecl j__calloc(size_t __count, size_t __size)
{
    ;
  }
}

void j__free(void *a1)
{
    ;
  }
}

void *__cdecl j__malloc(size_t __size)
{
    ;
  }
}

malloc_zone_t *j__malloc_default_zone(void)
{
    ;
  }
}

void *__cdecl j__malloc_zone_calloc(malloc_zone_t *zone, size_t num_items, size_t size)
{
    ;
  }
}

void *__cdecl j__malloc_zone_malloc(malloc_zone_t *zone, size_t size)
{
    ;
  }
}

void *__cdecl j__malloc_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size)
{
    ;
  }
}

void *__cdecl j__malloc_zone_realloc(malloc_zone_t *zone, void *ptr, size_t size)
{
    ;
  }
}

void *__cdecl j__malloc_zone_valloc(malloc_zone_t *zone, size_t size)
{
    ;
  }
}

int j__posix_memalign(void **__memptr, size_t __alignment, size_t __size)
{
    ;
  }
}

void *__cdecl j__realloc(void *__ptr, size_t __size)
{
    ;
  }
}