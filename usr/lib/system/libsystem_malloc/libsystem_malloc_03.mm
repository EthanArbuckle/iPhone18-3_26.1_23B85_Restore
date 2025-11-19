uint64_t rack_destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = v2[2];
  v4 = MEMORY[0x1E69E9AC8];
  if (result != a1 + 96)
  {
    result = mvm_deallocate_pages(result, (*MEMORY[0x1E69E9AC8] + 8 * *v2 - 1) & -*MEMORY[0x1E69E9AC8], 0);
  }

  v5 = *(a1 + 608);
  if (v5 >= 1)
  {
    result = mvm_deallocate_pages(*(a1 + 624) - 2560, (*v4 + 2560 * v5 + 2559) & -*v4, 3);
    *(a1 + 624) = 0;
  }

  return result;
}

void rack_region_insert(os_unfair_lock_t lock, unint64_t a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(lock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = *&lock[6]._os_unfair_lock_opaque;
  v7 = *v6;
  if (*v6 < (2 * *&lock[2]._os_unfair_lock_opaque))
  {
    v9 = v6[1];
    v8 = v6[2];
    v10 = 2 * v7;
    pages = mvm_allocate_pages((*MEMORY[0x1E69E9AC8] + 16 * v7 - 1) & -*MEMORY[0x1E69E9AC8], 0, 0x40000000, 1);
    if (v7)
    {
      v12 = 0;
      v13 = 63 - v9;
      do
      {
        v14 = *(v8 + 8 * v12);
        if (v14 + 1 >= 2)
        {
          v15 = (0x9E3779B97F4A7C55 * (v14 >> 20)) >> v13;
          while ((*(pages + 8 * v15) + 1) > 1)
          {
            if (v15 + 1 == v10)
            {
              v15 = 0;
            }

            else
            {
              ++v15;
            }

            if (v15 == (0x9E3779B97F4A7C55 * (v14 >> 20)) >> v13)
            {
              goto LABEL_15;
            }
          }

          *(pages + 8 * v15) = v14;
        }

LABEL_15:
        ++v12;
      }

      while (v12 != v7);
    }

    v16 = *(*&lock[6]._os_unfair_lock_opaque + 24);
    v16[1] = v9 + 1;
    v16[2] = pages;
    *v16 = v10;
    __dmb(0xBu);
    v6 = *(*&lock[6]._os_unfair_lock_opaque + 24);
    *&lock[6]._os_unfair_lock_opaque = v6;
    v7 = *v6;
  }

  v17 = v6[2];
  v18 = (0x9E3779B97F4A7C55 * (a2 >> 20)) >> -*(v6 + 8);
  v19 = v18;
  while ((*(v17 + 8 * v19) + 1) > 1)
  {
    if (v19 + 1 == v7)
    {
      v19 = 0;
    }

    else
    {
      ++v19;
    }

    if (v19 == v18)
    {
      goto LABEL_25;
    }
  }

  *(v17 + 8 * v19) = a2;
LABEL_25:
  ++*&lock[2]._os_unfair_lock_opaque;
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(lock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {

    os_unfair_lock_unlock(lock);
  }
}

BOOL rack_region_remove(os_unfair_lock_t lock, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(lock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = *&lock[6]._os_unfair_lock_opaque;
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 16);
    v11 = (0x9E3779B97F4A7C55 * (a2 >> 20)) >> -*(v8 + 8);
    v12 = v11;
    while (1)
    {
      v13 = *(v10 + 8 * v12);
      if (!v13)
      {
LABEL_11:
        v9 = 0;
        goto LABEL_13;
      }

      if (v13 == a2)
      {
        break;
      }

      if ((v12 + 1) == v9)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }

      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    v9 = (v10 + 8 * v12);
  }

LABEL_13:
  v14 = *(a3 + 36);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    *(a3 + 36) = v14 | 2;
  }

  if (v9)
  {
    *v9 = -1;
    atomic_fetch_add_explicit(&lock[4], 1uLL, memory_order_relaxed);
  }

  else
  {
    malloc_zone_error(lock[155]._os_unfair_lock_opaque, 1, "tiny_free_try_depot_unmap_no_lock hash lookup failed: %p\n");
    v15 = 0;
  }

  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(lock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(lock);
  }

  return v15;
}

uint64_t rack_region_maybe_dispose(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  v10 = *(a4 + 36);
  if ((v10 & 2) != 0)
  {
    os_unfair_lock_opaque = a1[155]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 4) != 0)
    {
      v12 = -2;
    }

    else
    {
      v12 = -8;
    }

    mvm_deallocate_pages(a2, a3, v12 & os_unfair_lock_opaque);
  }

  else
  {
    *(a4 + 36) = v10 & 0xFFFFFFFC;
  }

  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(a1, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(a1);
  }

  return (v10 >> 1) & 1;
}

uint64_t rack_get_thread_index(uint64_t a1)
{
  result = _os_cpu_number_override;
  if (_os_cpu_number_override == -1)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
    if (*(a1 + 608) == ncpuclusters)
    {
      return (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12);
    }

    else
    {
      return StatusReg & 0xFFF;
    }
  }

  else if (*(a1 + 608) == ncpuclusters)
  {
    return *(_os_cpu_number_override + 0xFFFFFC200);
  }

  return result;
}

void *create_legacy_scalable_zone(uint64_t a1, uint64_t a2)
{
  scalable_zone = create_scalable_zone(a1, a2);
  v3 = scalable_zone;
  if (scalable_zone)
  {
    mprotect(scalable_zone, 0xC8uLL, 3);
    v3[5] = legacy_valloc;
    v3[15] = 0;
    mprotect(v3, 0xC8uLL, 1);
  }

  return v3;
}

mach_vm_address_t legacy_valloc(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9AA0];
  if (*MEMORY[0x1E69E9AA0] <= *MEMORY[0x1E69E9AB8])
  {
    v2 = *MEMORY[0x1E69E9AB8];
  }

  v3 = (v2 + a2) & ~v2;
  v4 = *MEMORY[0x1E69E9AA8];
  if (*MEMORY[0x1E69E9AA8] <= *MEMORY[0x1E69E9AC0])
  {
    LOBYTE(v4) = *MEMORY[0x1E69E9AC0];
  }

  return large_malloc(a1, v3 >> v4, 0);
}

void mvm_guarded_range_init()
{
  v0 = MEMORY[0x1E69E9AC8];
  v1 = *v0 * arc4random_uniform(0x100000uLL / *MEMORY[0x1E69E9AC8] + 1);
  v2 = v1 + 0x400000;
  v3 = *v0 * arc4random_uniform((v1 - 2 * *v0 + 3145728) / *v0 + 1);
  address = 0;
  v4 = MEMORY[0x1E69E9A60];
  if (mach_vm_map(*MEMORY[0x1E69E9A60], &address, v2, 0, 16777217, 0, 0, 0, 0, 0, 1u))
  {
    malloc_zone_error(64, 0, "Failed to map guarded range: %d\n");
  }

  v5 = address + *v0 + v3;
  if (mach_vm_deallocate(*v4, v5, 0x100000uLL))
  {
    malloc_zone_error(64, 0, "Failed to create carveout at 0x%lx in malloc guarded range 0x%lx: %d\n");
  }

  *&malloc_guarded_range_config = address;
  *(&malloc_guarded_range_config + 1) = v2;
  qword_1ED4042E0 = v5;
}

void mvm_deallocate_pages_plat(mach_vm_address_t a1, mach_vm_size_t a2, __int16 a3)
{
  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v3 = *MEMORY[0x1E69E9AB0];
  if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
  {
    v3 = *MEMORY[0x1E69E9AC8];
  }

  a1 -= v3;
  a2 += v3;
  if ((a3 & 2) != 0)
  {
LABEL_7:
    v4 = *MEMORY[0x1E69E9AB0];
    if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
    {
      v4 = *MEMORY[0x1E69E9AC8];
    }

    a2 += v4;
  }

LABEL_3:
  mvm_deallocate_plat(a1, a2, a3);
}

uint64_t mvm_madvise_free_plat(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void **a5, int a6)
{
  v6 = a4 - a3;
  if (a4 <= a3)
  {
    return 0;
  }

  if (a6 && malloc_zero_policy)
  {
    _platform_memset();
  }

  if (a5)
  {
    if (*a5 == a3)
    {
      return 0;
    }

    *a5 = a3;
  }

  if (mvm_madvise(a3, v6, 7))
  {
    return 1;
  }

  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  return 0;
}

void *__cdecl malloc_type_zone_valloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 904);
  if (type_id <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = type_id;
  }

  *(StatusReg + 904) = v5;
  if (malloc_interposition_compat == 1 && v4 == 0)
  {
    result = j__malloc_zone_valloc(zone, size);
  }

  else
  {
    result = _malloc_zone_valloc(zone, size, 0);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t _malloc_type_realloc_outlined(void *a1, size_t a2, unint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 904);
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  *(StatusReg + 904) = v5;
  if (malloc_interposition_compat == 1 && v4 == 0)
  {
    result = j__realloc(a1, a2);
  }

  else
  {
    result = _realloc(a1, a2);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t _malloc_type_aligned_alloc_outlined(size_t __alignment, size_t __size, unint64_t a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 904);
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  *(StatusReg + 904) = v5;
  if (malloc_interposition_compat == 1 && v4 == 0)
  {
    result = j__aligned_alloc(__alignment, __size);
  }

  else
  {
    result = _malloc_zone_memalign(default_zone, __alignment, __size, 3, 0);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t _malloc_type_zone_realloc_outlined(malloc_zone_t *a1, void *a2, size_t a3, unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 904);
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  *(StatusReg + 904) = v6;
  if (malloc_interposition_compat == 1 && v5 == 0)
  {
    result = j__malloc_zone_realloc(a1, a2, a3);
  }

  else
  {
    result = _malloc_zone_realloc(a1, a2, a3, 0);
  }

  *(StatusReg + 904) = v5;
  return result;
}

uint64_t _malloc_type_zone_memalign_outlined(malloc_zone_t *a1, size_t a2, size_t a3, unint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 904);
  if (a4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4;
  }

  *(StatusReg + 904) = v6;
  if (malloc_interposition_compat == 1 && v5 == 0)
  {
    result = j__malloc_zone_memalign(a1, a2, a3);
  }

  else
  {
    result = _malloc_zone_memalign(a1, a2, a3, 0, 0);
  }

  *(StatusReg + 904) = v5;
  return result;
}

uint64_t _malloc_type_zone_malloc_with_options_outlined(malloc_zone_t *a1, size_t a2, size_t a3, unint64_t a4, unint64_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 904);
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  *(StatusReg + 904) = v7;
  result = _malloc_zone_malloc_with_options_outlined(a1, a2, a3, a5);
  *(StatusReg + 904) = v6;
  return result;
}

void mfm_reinit_lock()
{
  if (mfm_arena)
  {
    *mfm_arena = 0;
  }
}

uint64_t mfmi_good_size(uint64_t a1, unint64_t a2)
{
  v2 = (a2 & 0x7FF0) + 16;
  if ((a2 & 0xF) == 0)
  {
    v2 = a2;
  }

  if (a2 <= 0x4000)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mfmi_print_self(uint64_t a1, int a2)
{
  result = mfm_arena;
  if (mfm_arena)
  {
    return print_mfm_arena(mfm_arena, a2 != 0, malloc_report_simple);
  }

  return result;
}

void mfmi_force_unlock()
{
  v0 = mfm_arena;
  if (mfm_arena)
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v2 = v1;
    atomic_compare_exchange_strong_explicit(v0, &v2, 0, memory_order_release, memory_order_relaxed);
    if (v2 != v1)
    {
      os_unfair_lock_unlock(v0);
    }
  }
}

void mfmi_statistics_self(int a1, _DWORD *a2)
{
  v3 = mfm_arena;
  bzero(a2, 0x20uLL);
  if (v3)
  {
    v4 = *(v3 + 16);
    *a2 = *(v3 + 24);
    v5 = 16 * *(v3 + 4);
    *(a2 + 3) = 0x400000;
    v6 = ((((v4 >> 2) & 0x1FFFFFFFFFFFFFF8) + *MEMORY[0x1E69E9AC8] + 223) & -*MEMORY[0x1E69E9AC8]) + *(a2 + 2) + ((*MEMORY[0x1E69E9AC8] + 16 * v4 - 1) & -*MEMORY[0x1E69E9AC8]);
    *(a2 + 1) = v5;
    *(a2 + 2) = v6;
  }
}

uint64_t mfmi_locked()
{
  result = mfm_arena;
  if (mfm_arena)
  {
    v1 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(result, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      return 0;
    }

    else
    {
      v3 = *(StatusReg + 24);
      v4 = v3;
      atomic_compare_exchange_strong_explicit(result, &v4, 0, memory_order_release, memory_order_relaxed);
      if (v4 != v3)
      {
        os_unfair_lock_unlock(result);
      }

      return 1;
    }
  }

  return result;
}

void mfmi_reinit_lock()
{
  if (mfm_arena)
  {
    *mfm_arena = 0;
  }
}

uint64_t mfmi_print_task(uint64_t a1, unsigned int a2, const void *a3, uint64_t (*a4)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), uint64_t (*a5)(const char *, ...))
{
  v9 = 0;
  if (mfmi_read_zone(a1, a3, a4, &v9))
  {
    return a5("Failed to read ProbGuard zone at %p\n", a3);
  }

  else
  {
    return print_mfm_arena(v9, a2 > 1, a5);
  }
}

uint64_t print_mfm_arena(uint64_t a1, char a2, void (*a3)(const char *, ...))
{
  a3("mfm_arena info\n");
  a3(" address      : %p\n", a1);
  a3(" size         : %zd\n", 16 * *(a1 + 4));
  a3(" high water   : %zd\n", 16 * *(a1 + 8));
  v4 = a1 + 0x10000;
  a3(" arena        : [%p, %p)\n", (a1 + 0x10000), (a1 + 0x400000));
  a3("\n");
  a3("freelists\n");
  v5 = 0;
  v6 = a1 + 224;
  do
  {
    v7 = (a1 + 32 + 16 * v5);
    a3(" size %-8zd:\n", 16 << v5);
    v8 = (a1 + 16 * *v7);
    if (v8 != v7)
    {
      v9 = 16 * *v7;
      do
      {
        v10 = ((v9 - 0x10000) >> 4) + 1;
        v11 = v10 >> 5;
        v12 = (v10 >> 5) & 0x7FFFFFFFFFFFFFELL;
        v13 = *(v6 + 8 * v12) >> v10;
        if (v13)
        {
          v14 = __clz(__rbit64(v13)) + 1;
        }

        else
        {
          v15 = v10 & 0x3F;
          v16 = v6 + 8 * v12;
          v17 = *(v16 + 16);
          if (!v17)
          {
            v18 = *(v6 + ((8 * v11) | 8));
            if (v15 < 0x2F)
            {
              v19 = 0;
            }

            else
            {
              v19 = *(v16 + 24);
            }

            v20 = ((((2 * v19) << (v15 ^ 0x3Fu)) | (v18 >> v15)) & 0x3FFFF) + 1;
            a3("  [%p, %p) size=%zd\n", v8, &v8[2 * v20], 16 * v20);
            goto LABEL_7;
          }

          v14 = __clz(__rbit64(v17)) - v15 + 65;
        }

        a3("  [%p, %p) size=%zd\n", v8, &v8[2 * v14], 16 * v14);
LABEL_7:
        v9 = 16 * *v8;
        v8 = (a1 + v9);
      }

      while ((a1 + v9) != v7);
    }

    ++v5;
  }

  while (v5 != 11);
  result = (a3)("\n");
  if (a2)
  {
    a3("blocks\n");
    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = (v23 + 1) >> 5;
        v25 = *(v6 + 8 * (v24 & 0x7FFFFFFFFFFFFFELL)) >> (v23 + 1);
        if (v25)
        {
          v26 = __clz(__rbit64(v25));
        }

        else
        {
          v29 = (v23 + 1) & 0x3F;
          v30 = v6 + 8 * (v24 & 0x7FFFFFFFFFFFFFELL);
          v31 = *(v30 + 16);
          if (v31)
          {
            v27 = __clz(__rbit64(v31)) - v29 + 65;
            goto LABEL_22;
          }

          v32 = *(v6 + ((8 * v24) | 8));
          if (v29 < 0x2F)
          {
            v33 = 0;
          }

          else
          {
            v33 = *(v30 + 24);
          }

          v26 = (((2 * v33) << (v29 ^ 0x3Fu)) | (v32 >> v29)) & 0x3FFFF;
        }

        v27 = v26 + 1;
LABEL_22:
        if ((*(v6 + ((v23 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v23) & *(v6 + ((v23 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
        {
          v28 = "*";
        }

        else
        {
          v28 = " *";
        }

        a3(" %c[%p, %p) size=%zd\n", *v28, (v4 + 16 * v23), (v4 + 16 * v23 + 16 * v27), 16 * v27);
        v23 += v27;
        v22 = *(a1 + 8);
      }

      while (v23 < v22);
    }

    a3("  [%p, %p) size=%zd (bump)\n", (v4 + 16 * v22), (a1 + 0x400000), 4128768 - 16 * v22);

    return (a3)("\n");
  }

  return result;
}

uint64_t xzm_segment_table_foreach(int *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = a2;
  if (a4)
  {
    v8 = *a4;
    if (a2)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v8 = 0;
  if (!a2)
  {
LABEL_11:
    result = 0;
    if (a4)
    {
      *a4 = v8;
    }

    return result;
  }

LABEL_5:
  while (1)
  {
    v9 = *a1++;
    v10 = (v9 & 0x7FFFFFFF) << 14;
    if (v10 && v8 != v10)
    {
      result = (*(a3 + 16))(a3, v10);
      v8 = v10;
      if (result)
      {
        return result;
      }
    }

    if (!--v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t _xzm_introspect_enumerate_thread_caches(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t **), uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 560);
  if (!v4)
  {
    return 0;
  }

  v8 = 24 * *(a3 + 212);
  while (1)
  {
    v10 = 0;
    result = a2(a1, v4, v8 + 40, &v10);
    if (result)
    {
      break;
    }

    result = (*(a4 + 16))(a4, v4, v10);
    if (result)
    {
      break;
    }

    v4 = *v10;
    if (!*v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___xzm_introspect_freelist_chunk_blocks_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 24 * *(a1 + 56);
  if (*(v3 + 56) > 0x400u)
  {
    return 0;
  }

  v4 = v3 + 40;
  if (*(a1 + 48) != *(v3 + 48))
  {
    return 0;
  }

  v5 = *(a3 + 32);
  v6 = *(*(a1 + 32) + 8);
  if (v5)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = 0;
      if (v5 <= *(v7 + 32))
      {
        return v8;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 256;
  }

  *(v6 + 24) = a3;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return v8;
}

void xzm_print(uint64_t a1, const void *a2, uint64_t (*a3)(void), void (*a4)(const char *, ...))
{
  v107 = 0;
  v108 = 0;
  v106 = 0;
  if (!_xzm_introspect_map_zone_and_main(a1, a2, a3, &v108, &v107, &v106))
  {
    v8 = v106;
    a4("Begin xzone malloc JSON:\n");
    a4("{\n");
    a4("desc: xzone malloc, \n");
    a4("addr: %p, \n", a2);
    a4("segment_size: %zu, \n", 0x400000uLL);
    a4("slice_size: %zu, \n", 0x4000uLL);
    v9 = v108;
    a4("mzone: %d, \n", *(v108 + 208));
    a4("is_main: %d, \n", v8 == a2);
    a4("max_list_config: %d, \n", *(v9 + 248) & 3);
    a4("initial_slot_config: %d, \n", (*(v9 + 248) >> 2) & 3);
    a4("slot_initial_threshold: %u, \n", *(v9 + 288));
    a4("max_slot_config: %d, \n", (*(v9 + 248) >> 4) & 3);
    v102 = 0;
    v103 = &v102;
    v104 = 0x2000000000;
    v105 = 0;
    v98 = 0;
    v99 = &v98;
    v100 = 0x2000000000;
    v101 = 0;
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x2000000000;
    v97[3] = 0;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 0x40000000;
    v95[2] = __xzm_print_block_invoke;
    v95[3] = &unk_1E7260C68;
    v96 = a1;
    v95[4] = v97;
    v95[5] = &v102;
    v95[6] = &v98;
    v95[7] = a4;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2000000000;
    v94 = 1;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2000000000;
    v90 = 1;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 0x40000000;
    v80 = __xzm_print_block_invoke_2;
    v81 = &unk_1E7260C90;
    v10 = v107;
    v85 = a4;
    v86 = v107;
    v83 = &v91;
    v84 = &v87;
    v82 = v95;
    if (v8 != a2)
    {
      v20 = v108;
      v21 = v106;
LABEL_30:
      a4("spans: {\n");
      *(v92 + 24) = 1;
      *(v88 + 24) = 0;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 0x40000000;
      v75[2] = __xzm_print_block_invoke_4;
      v75[3] = &unk_1E7260CE0;
      v75[5] = &v91;
      v75[6] = a4;
      v75[4] = v95;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 0x40000000;
      v74[2] = __xzm_print_block_invoke_5;
      v74[3] = &unk_1E7260D08;
      v74[6] = a4;
      v74[7] = v10;
      v74[4] = v95;
      v74[5] = &v91;
      if (v8 == a2)
      {
        v22 = v73;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 0x40000000;
        v73[2] = __xzm_print_block_invoke_6;
        v73[3] = &unk_1E7260D30;
        v73[6] = a4;
        v73[7] = v10;
        v73[4] = v95;
        v73[5] = &v91;
      }

      else
      {
        v22 = 0;
      }

      v23 = _xzm_introspect_enumerate(a1, a3, a2, v20, v21, v10, 0, v75, v79, v74, v22);
      v24 = v99[3];
      if (v24)
      {
        mach_vm_deallocate(*MEMORY[0x1E69E9A60], v24, 4 * v103[3]);
      }

      if (!v23)
      {
        a4("}\n");
        a4("}\n");
        a4("End xzone malloc JSON\n");
      }

      goto LABEL_39;
    }

    a4("bucketing_key: %016llx%016llx, \n", *(v107 + 392), *(v107 + 400));
    a4("guard_config: {\n");
    a4("    guards_enabled: %d, \n", *(v10 + 532));
    a4("    data_guards_enabled: %d, \n", *(v10 + 533));
    a4("    tiny_run_size: %d, \n", *(v10 + 534));
    a4("    tiny_guard_density: %d, \n", *(v10 + 535));
    a4("    small_run_size: %d, \n", *(v10 + 536));
    a4("    small_guard_density: %d \n", *(v10 + 537));
    a4("}, \n");
    a4("chunk_threshold: %u, \n", *(v10 + 427));
    a4("ptr_bucket_count: %d, \n", *(v10 + 426));
    a4("mte_config: {\n");
    a4("    enabled: %d, \n", *(v10 + 368));
    a4("    tag_data: %d, \n", *(v10 + 369));
    a4("    max_block_size: %d \n", *(v10 + 376));
    a4("}, \n");
    if ((*(v10 + 409) & 8) != 0)
    {
      v11 = "true";
    }

    else
    {
      v11 = "false";
    }

    a4("defer_tiny: %s, \n", v11);
    if ((*(v10 + 409) & 4) != 0)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    a4("defer_small: %s, \n", v12);
    if ((*(v10 + 409) & 0x10) != 0)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    a4("defer_large: %s, \n", v13);
    if ((*(v10 + 409) & 0x20) != 0)
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    a4("deallocate_segment: %s, \n", v14);
    if (*(v10 + 416))
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    a4("use_early_alloc: %s, \n", v15);
    a4("batch_size: %u, \n", *(v10 + 424));
    v16 = *(v10 + 568);
    if (v16)
    {
      v77[0] = 0;
      v109 = 0;
      if ((a3)(a1, v16, 40, v77))
      {
        goto LABEL_39;
      }

      if (*v77[0])
      {
        if ((a3)(a1, *v77[0], 16 * *(v77[0] + 8) + 112, &v109))
        {
          goto LABEL_39;
        }

        v17 = v109;
        if (v109)
        {
          v69 = v8;
          a4("reclaim_buffer: { \n");
          a4("    buffer_len: %llu, \n", *(v17 + 16));
          a4("    max_len: %llu, \n", *(v17 + 20));
          a4("    sampling_period_abs: %llu, \n", *(v17 + 48));
          a4("    last_sample_abs: %llu, \n", *(v17 + 56));
          a4("    reclaimable_bytes: %llu, \n", *(v17 + 64));
          a4("    reclaimable_bytes_min: %llu, \n", *(v17 + 72));
          a4("    head: %llu, \n", *(v17 + 80));
          a4("    busy: %llu, \n", *(v17 + 88));
          a4("    tail: %llu, \n", *(v17 + 96));
          a4("    entries: [ \n");
          if (*(v17 + 16))
          {
            v18 = 0;
            v19 = (v17 + 124);
            do
            {
              a4("        { \n");
              a4("            id: %u, \n", v18);
              a4("            address: %p, \n", *(v19 - 12));
              a4("            size: %u, \n", *(v19 - 1));
              a4("            behavior: %u \n", *v19);
              a4("        }");
              if (v18 < (*(v17 + 16) - 1))
              {
                a4(",");
              }

              v19 += 16;
              a4(" \n");
              ++v18;
            }

            while (v18 < *(v17 + 16));
          }

          a4("    ] \n");
          v8 = v69;
        }
      }

      a4("}, \n");
    }

    a4("allocation_front_count: %u, \n", *(v10 + 415));
    a4("range_group_count: %u, \n", *(v10 + 410));
    a4("range_groups: {\n");
    v25 = *(v10 + 464);
    if (v106 <= v25)
    {
      v26 = *(v10 + 410);
      v27 = v25 - v106;
      if (!__CFADD__(v27, 80 * v26) && v27 + 80 * v26 <= *(v10 + 384))
      {
        v28 = v27 + v10;
        if (v28)
        {
          v71 = v106;
          v70 = v8;
          if (*(v10 + 410))
          {
            v29 = 0;
            v30 = v28 + 40;
            do
            {
              a4("    ");
              if (v29)
              {
                a4(", ");
              }

              a4("%d: {\n", v29);
              v31 = *(v30 - 40);
              v32 = "unknown";
              if (v31 == 2)
              {
                v32 = "pointer";
              }

              v33 = v31 == 0;
              v34 = "data";
              if (!v33)
              {
                v34 = v32;
              }

              a4("        id: %s, \n", v34);
              a4("        front: %d, \n", *(v30 - 39));
              a4("        lock: %u, \n", *(v30 - 24));
              a4("        base: %p, \n", *(v30 - 16));
              a4("        size: %zu, \n", *(v30 - 8));
              a4("        skip_addr: %p, \n", *v30);
              a4("        skip_size: %zu, \n", *(v30 + 8));
              a4("        next: %p, \n", *(v30 + 16));
              a4("        remaining: %zu, \n", *(v30 + 24));
              v35 = "down";
              if (!*(v30 + 32))
              {
                v35 = "up";
              }

              a4("        direction: %s\n", v35);
              a4("    }\n");
              ++v29;
              v30 += 80;
            }

            while (v29 < *(v10 + 410));
          }

          a4("}, \n");
          a4("segment_group_ids_count: %u, \n", *(v10 + 411));
          a4("segment_group_front_count: %u, \n", *(v10 + 412));
          a4("segment_group_count: %u, \n", *(v10 + 413));
          a4("segment_groups: {\n");
          v36 = *(v10 + 472);
          if (v71 <= v36)
          {
            v37 = *(v10 + 413);
            v38 = v36 - v71;
            if (!__CFADD__(v38, 496 * v37) && v38 + 496 * v37 <= *(v10 + 384))
            {
              v39 = v38 + v10;
              if (v38 + v10)
              {
                if (*(v10 + 413))
                {
                  v40 = 0;
                  while (1)
                  {
                    a4("    ");
                    if (v40)
                    {
                      a4(", ");
                    }

                    v41 = (v39 + 496 * v40);
                    a4("%d: {\n", v40);
                    v42 = *v41;
                    v43 = "unknown";
                    if (v42 <= 3)
                    {
                      v43 = off_1E7260DE8[v42];
                    }

                    a4("        id: %s, \n", v43);
                    a4("        front: %d, \n", *(v41 + 1));
                    a4("        range_group: %p, \n", v41[2]);
                    a4("        segment_cache: { \n");
                    a4("            max_count: %u, \n", *(v41 + 240));
                    a4("            count: %u, \n", *(v41 + 241));
                    a4("            max_entry_slices: %u, \n", *(v41 + 121));
                    a4("            segments: { \n");
                    if (*(v41 + 241))
                    {
                      v44 = v41[58];
                      if (v44)
                      {
                        break;
                      }
                    }

LABEL_70:
                    a4("            } \n");
                    a4("        } \n");
                    a4("    }\n");
                    if (++v40 >= *(v10 + 413))
                    {
                      goto LABEL_71;
                    }
                  }

                  while (1)
                  {
                    v77[0] = 0;
                    if ((a3)(a1, v44, 14392, v77) || v80(v79, v44, v77[0], "                    "))
                    {
                      goto LABEL_39;
                    }

                    v44 = *(v77[0] + 24);
                    if (!v44)
                    {
                      goto LABEL_70;
                    }
                  }
                }

LABEL_71:
                a4("}, \n");
                a4("xzones: {\n");
                v45 = *(v10 + 216);
                if (v71 <= v45)
                {
                  v46 = *(v10 + 210);
                  v47 = v45 - v71;
                  v48 = v45 - v71 + 96 * v46;
                  if (!__CFADD__(v45 - v71, 96 * v46))
                  {
                    v49 = *(v10 + 384);
                    if (v48 <= v49)
                    {
                      v68 = v47 + v10;
                      if (v47 + v10)
                      {
                        v50 = *(v10 + 224);
                        if (v71 <= v50)
                        {
                          v51 = *(v10 + 210) * *(v10 + 211);
                          v52 = v50 - v71;
                          v53 = __CFADD__(v50 - v71, 32 * v51);
                          v54 = v50 - v71 + 32 * v51;
                          if (!v53 && v54 <= v49)
                          {
                            v72 = v52 + v10;
                            if (v52 + v10)
                            {
                              v20 = v108;
                              if (*(v108 + 210) >= 2u)
                              {
                                v55 = 1;
                                do
                                {
                                  v56 = v68 + 96 * v55;
                                  a4("    %d: {\n", v55);
                                  a4("        early_budget: %u, \n", *(v56 + 40));
                                  a4("        id: %d, \n", *(v56 + 80));
                                  a4("        bucket: %d, \n", *(v56 + 84));
                                  a4("        segment_group_id: %d, \n", *(v56 + 42));
                                  a4("        front: %d, \n", *(v56 + 43));
                                  if (*(v56 + 48) > 0x1000uLL)
                                  {
                                    LODWORD(v57) = *(v56 + 32);
                                  }

                                  else
                                  {
                                    v57 = (*v56 >> 57) & 0x3FLL;
                                  }

                                  a4("        batch_count: %u, \n", v57);
                                  a4("        block_size: %llu, \n", *(v56 + 48));
                                  a4("        chunk_count: %llu, \n", *(v56 + 72));
                                  a4("        chunk_capacity: %u, \n", *(v56 + 68));
                                  a4("        sequestered: %d,\n", *(v56 + 87) & 1);
                                  v58 = *(v56 + 85);
                                  v59 = "UNKNOWN";
                                  if (v58 <= 2)
                                  {
                                    v59 = off_1E7260DD0[v58];
                                  }

                                  a4("        list_config: %s,\n", v59);
                                  v60 = *(v56 + 86);
                                  v61 = "UNKNOWN";
                                  if (v60 <= 2)
                                  {
                                    v61 = off_1E7260DD0[v60];
                                  }

                                  a4("        slot_config: %s,\n", v61);
                                  a4("        allocation_slots: [\n");
                                  if (*(v20 + 211))
                                  {
                                    v62 = 0;
                                    do
                                    {
                                      v63 = (v72 + 32 * (v55 + v62 * *(v20 + 210)));
                                      a4("            {\n");
                                      if (*(v56 + 48) <= 0x1000uLL || *(v20 + 250) == 1)
                                      {
                                        a4("                atomic_value: 0x%llx,\n", *v63);
                                        a4("                xsg_locked: 0x%llx,\n", *v63 & 1);
                                        a4("                xsg_waiters: 0x%llx,\n", (*v63 >> 1) & 1);
                                        a4("                xsc_ptr: 0x%llx,\n", (*v63 >> 2) & 0x7FFFFFFFFFFFLL);
                                        a4("                operations: %lu,\n", *(v63 + 4));
                                        a4("                contentions: %lu,\n", *(v63 + 5) & 0xFFFFFF);
                                        if (HIBYTE(*(v63 + 5)) <= 2u)
                                        {
                                          v64 = *(off_1E7260DD0 + ((*(v63 + 5) >> 21) & 0x7F8));
                                        }

                                        v65 = "                slot_config: %s,\n";
                                      }

                                      else
                                      {
                                        a4("                chunk: %p,\n", *v63);
                                        a4("                allocations: %lu,\n", *(v63 + 4));
                                        v66 = *(v63 + 5);
                                        v65 = "                contentions: %lu,\n";
                                      }

                                      a4(v65);
                                      a4("                last_chunk_empty_ts: %llu\n", v63[3]);
                                      a4("            }");
                                      if (*(v20 + 211) - 1 > v62)
                                      {
                                        a4(",");
                                      }

                                      a4("\n");
                                      ++v62;
                                    }

                                    while (v62 < *(v20 + 211));
                                  }

                                  a4("        ]\n");
                                  a4("    }");
                                  if (*(v20 + 210) - 1 > v55)
                                  {
                                    a4(",");
                                  }

                                  a4("\n");
                                  ++v55;
                                }

                                while (v55 < *(v20 + 210));
                              }

                              a4("}, \n");
                              v67 = "true";
                              if (!*(v20 + 249))
                              {
                                v67 = "false";
                              }

                              a4("thread_cache_enabled: %s, \n", v67);
                              a4("thread_cache_activation_period: %lu, \n", *(v20 + 252));
                              a4("thread_cache_activation_contentions: %lu, \n", *(v20 + 256));
                              a4("thread_cache_activation_time: %llu, \n", *(v20 + 264));
                              if (*(v20 + 249))
                              {
                                a4("thread_caches: [ \n");
                                v77[0] = 0;
                                v77[1] = v77;
                                v77[2] = 0x2000000000;
                                v78 = 1;
                                v76[0] = MEMORY[0x1E69E9820];
                                v76[1] = 0x40000000;
                                v76[2] = __xzm_print_block_invoke_3;
                                v76[3] = &unk_1E7260CB8;
                                v76[4] = v77;
                                v76[5] = a4;
                                v76[6] = v20;
                                _xzm_introspect_enumerate_thread_caches(a1, a3, v10, v76);
                                a4("], \n");
                                _Block_object_dispose(v77, 8);
                              }

                              v8 = v70;
                              v21 = v71;
                              goto LABEL_30;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_39:
    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(&v91, 8);
    _Block_object_dispose(v97, 8);
    _Block_object_dispose(&v98, 8);
    _Block_object_dispose(&v102, 8);
  }
}

uint64_t __xzm_print_block_invoke(uint64_t a1, mach_vm_offset_t address, unint64_t a3, const char *a4)
{
  result = *(a1 + 64);
  if (!result)
  {
    return result;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 24);
  v11 = MEMORY[0x1E69E9AC8];
  v12 = *MEMORY[0x1E69E9AC8];
  if (v10 > address || v10 + v12 * *(*(*(a1 + 40) + 8) + 24) < a3 + address)
  {
    *(v9 + 24) = address;
    v13 = a3 / v12;
    if (a3 % v12)
    {
      ++v13;
    }

    v14 = 0x400000 / v12;
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 24);
    if (v15 > v17)
    {
      v18 = *(*(*(a1 + 48) + 8) + 24);
      v19 = MEMORY[0x1E69E9A60];
      if (v18)
      {
        mach_vm_deallocate(*MEMORY[0x1E69E9A60], v18, 4 * v17);
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v16 = *(*(a1 + 40) + 8);
      }

      *(v16 + 24) = v15;
      result = mach_vm_allocate(*v19, (*(*(a1 + 48) + 8) + 24), 4 * *(*(*(a1 + 40) + 8) + 24), 1);
      if (result)
      {
        return result;
      }

      LODWORD(result) = *(a1 + 64);
    }

    dispositions_count = v15;
    if (a3 <= 0x400000)
    {
      v20 = 0x400000;
    }

    else
    {
      v20 = a3;
    }

    result = mach_vm_page_range_query(result, address, v20, *(*(*(a1 + 48) + 8) + 24), &dispositions_count);
    if (result)
    {
      return result;
    }
  }

  v28 = a4;
  (*(a1 + 56))("%s    dispositions: ", a4);
  if (*v11 <= a3)
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v24 = (address - *(*(*(a1 + 32) + 8) + 24)) / *v11;
    while (v24 < *(*(*(a1 + 40) + 8) + 24))
    {
      v25 = *(*(*(*(a1 + 48) + 8) + 24) + 4 * v24);
      if ((v25 & 8) != 0)
      {
        ++v21;
        v27 = "d";
      }

      else
      {
        v26 = v25 & 0x10;
        if (v26)
        {
          v27 = "s";
        }

        else
        {
          v27 = "c";
        }

        v22 += v26 >> 4;
      }

      (*(a1 + 56))(v27);
      ++v24;
      if (++v23 >= a3 / *v11)
      {
        goto LABEL_29;
      }
    }

    return 5;
  }

  else
  {
    v21 = 0;
    v22 = 0;
LABEL_29:
    (*(a1 + 56))(", \n");
    (*(a1 + 56))("%s    dirty_count: %zu, \n", v28, v21);
    (*(a1 + 56))("%s    swapped_count: %zu, \n", v28, v22);
    return 0;
  }
}

uint64_t __xzm_print_block_invoke_2(uint64_t a1, const void *a2, uint64_t a3, const char *a4)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 56))(", ");
  }

  (*(a1 + 56))("%s%p: {\n", a4, a2);
  (*(a1 + 56))("%s    addr: %p, \n", a4, a2);
  v8 = 0xEF7BDEF7BDEF7BDFLL * ((*a3 - *(*(a1 + 64) + 472)) >> 4);
  v9 = "unknown";
  if ((v8 & 0xFC) == 0)
  {
    v9 = off_1E7260DE8[v8 & 3];
  }

  (*(a1 + 56))("%s    segment_group: %s, \n", a4, v9);
  (*(a1 + 56))("%s    body_addr: %p, \n", a4, *(a3 + 40));
  (*(a1 + 56))("%s    used: %u, \n", a4, *(a3 + 8));
  v10 = "huge_segment";
  if (*(a3 + 20) != 1)
  {
    v10 = "unknown";
  }

  if (*(a3 + 20))
  {
    v11 = v10;
  }

  else
  {
    v11 = "normal_segment";
  }

  (*(a1 + 56))("%s    kind: %s, \n", a4, v11);
  if (*(a3 + 48) == -1)
  {
    v12 = "%s    reclaim_id: -1, \n";
  }

  else
  {
    v15 = *(a3 + 48);
    v12 = "%s    reclaim_id: %llu, \n";
  }

  (*(a1 + 56))(v12);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v13 = *(a3 + 12) << 14;
    (*(*(a1 + 32) + 16))(*(a1 + 32), *(a3 + 40));
  }

  (*(a1 + 56))("%s    slice_count: %u, \n", a4, *(a3 + 12));
  (*(a1 + 56))("%s    slice_entry_count: %u \n", a4, *(a3 + 16));
  (*(a1 + 56))("%s}\n", a4);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __xzm_print_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 40))("    ");
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    *(v5 + 24) = 0;
  }

  else
  {
    (*(a1 + 40))(", ");
  }

  (*(a1 + 40))("{\n");
  (*(a1 + 40))("        thread: %p,\n", *(a3 + 24));
  v12 = *(a3 + 24);
  (*(a1 + 40))("        xz_caches: {\n");
  if (*(*(a1 + 48) + 212) >= 2u)
  {
    v6 = (a3 + 86);
    v7 = 1;
    while (1)
    {
      (*(a1 + 40))("            %d: {\n", v7);
      (*(a1 + 40))("                xz_idx: %d, \n", v7);
      v8 = *(v6 - 3);
      v9 = *(a1 + 40);
      if (v8 == 65534)
      {
        break;
      }

      if (v8 != 0xFFFF)
      {
        v9("                head: 0x%llx, \n", *(v6 - 3));
        (*(a1 + 40))("                chunk: %p, \n", *(v6 - 11));
        (*(a1 + 40))("                chunk_start: %p, \n", *(v6 - 7));
        (*(a1 + 40))("                head_seqno: 0x%llx, \n", *(v6 - 1));
        (*(a1 + 40))("                free_count: 0x%llx, \n", *(v6 - 2));
        v9 = *(a1 + 40);
        v14 = *v6;
        v10 = "                seqno: 0x%llx \n";
        goto LABEL_11;
      }

      v9("                head: NOT_CACHED, \n");
      (*(a1 + 40))("                timestamp: %llu, \n", *(v6 - 7));
      (*(a1 + 40))("                contentions: %llu, \n", *(v6 - 2));
      v13 = *(v6 - 1);
      (*(a1 + 40))("                allocs: %llu \n");
LABEL_12:
      (*(a1 + 40))("            }");
      if (*(*(a1 + 48) + 212) - 1 > v7)
      {
        (*(a1 + 40))(",");
      }

      (*(a1 + 40))("\n");
      ++v7;
      v6 += 12;
      if (v7 >= *(*(a1 + 48) + 212))
      {
        goto LABEL_15;
      }
    }

    v10 = "                head: EMPTY \n";
LABEL_11:
    v9(v10);
    goto LABEL_12;
  }

LABEL_15:
  (*(a1 + 40))("        } \n");
  (*(a1 + 40))("    } \n");
  return 0;
}

uint64_t __xzm_print_block_invoke_4(uint64_t a1, const void *a2, int a3, unsigned int a4)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a2);
  (*(a1 + 48))("        addr: %p, \n", a2);
  if (a4 > 4)
  {
    v8 = "unknown slab";
  }

  else
  {
    v8 = off_1E7260E08[a4];
  }

  (*(a1 + 48))("        kind: %s, \n", v8);
  (*(*(a1 + 32) + 16))();
  (*(a1 + 48))("        size: %u \n", a3);
  (*(a1 + 48))("    }\n");
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 0;
}

uint64_t __xzm_print_block_invoke_5(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, int a5, const void *a6, uint64_t a7)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", (a2 - a3 + a4));
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 34));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 33));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", 0xEF7BDEF7BDEF7BDFLL * ((*a3 - *(*(a1 + 56) + 472)) >> 4));
  v14 = *(a4 + 32) & 0xF;
  if (v14 > 9)
  {
    v15 = "unknown";
  }

  else
  {
    v15 = off_1E7260E30[v14];
  }

  (*(a1 + 48))("        kind: %s, \n", v15);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  if (a7)
  {
    v16 = *(a7 + 48);
  }

  else
  {
    v16 = 0;
  }

  (*(a1 + 48))("        block_size: %u, \n", v16);
  (*(a1 + 48))("        in_use: 1, \n");
  (*(a1 + 48))("        slice_metadata: %p, \n", a3[-1431655765 * ((a4 - a3 - 2104) >> 4) + 7]);
  v17 = (*(*(a1 + 32) + 16))();
  if (!v17)
  {
    if (v14 > 6 || ((1 << v14) & 0x64) == 0)
    {
      goto LABEL_17;
    }

    (*(a1 + 48))("        bucket: %u,\n", *(a7 + 84));
    switch(v14)
    {
      case 6:
        goto LABEL_15;
      case 5:
        (*(a1 + 48))("        free: 0x%x,\n", *a4);
        (*(a1 + 48))("        used: %u,\n", *(a4 + 4));
        v20 = *(a4 + 12);
        (*(a1 + 48))("        alloc_idx: %u,\n");
        break;
      case 2:
LABEL_15:
        (*(a1 + 48))("        meta: 0x%llx,\n", *a4);
        (*(a1 + 48))("        xca_alloc_head: 0x%llx,\n", *a4 & 0x7FF);
        (*(a1 + 48))("        xca_free_count: 0x%llx,\n", (*a4 >> 11) & 0x7FF);
        (*(a1 + 48))("        xca_alloc_idx: 0x%llx,\n", (*a4 >> 22) & 0x3F);
        (*(a1 + 48))("        xca_on_partial_list: 0x%llx,\n", (*a4 >> 28) & 1);
        (*(a1 + 48))("        xca_on_empty_list: 0x%llx,\n", (*a4 >> 29) & 1);
        (*(a1 + 48))("        xca_walk_locked: 0x%llx,\n", (*a4 >> 30) & 1);
        (*(a1 + 48))("        xca_head_seqno: 0x%llx,\n", (*a4 >> 31) & 0x1FFFLL);
        v19 = *a4 >> 44;
        (*(a1 + 48))("        xca_seqno: 0x%llx,\n");
        break;
    }

LABEL_17:
    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 32) >> 6) & 1);
    (*(a1 + 48))("        is_pristine: %d\n", (*(a4 + 32) >> 4) & 1);
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v17;
}

uint64_t __xzm_print_block_invoke_6(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, int a5, const void *a6)
{
  (*(a1 + 48))("    ");
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(a1 + 48))(", ");
  }

  (*(a1 + 48))("%p: {\n", a6);
  (*(a1 + 48))("        addr: %p, \n", a6);
  (*(a1 + 48))("        metadata_addr: %p, \n", (a2 - a3 + a4));
  (*(a1 + 48))("        mzone: %d, \n", *(a4 + 34));
  (*(a1 + 48))("        xzone: %d, \n", *(a4 + 33));
  (*(a1 + 48))("        segment: %p, \n", a2);
  (*(a1 + 48))("        segment_group: %zu, \n", 0xEF7BDEF7BDEF7BDFLL * ((*a3 - *(*(a1 + 56) + 472)) >> 4));
  v12 = *(a4 + 32) & 0xF;
  if (v12 > 9)
  {
    v13 = "unknown";
  }

  else
  {
    v13 = off_1E7260E30[v12];
  }

  (*(a1 + 48))("        kind: %s, \n", v13);
  (*(a1 + 48))("        slice_count: %u, \n", a5);
  (*(a1 + 48))("        slice_metadata: %p, \n", a3[-1431655765 * ((a4 - a3 - 2104) >> 4) + 7]);
  v14 = (*(*(a1 + 32) + 16))();
  if (!v14)
  {
    (*(a1 + 48))("        is_preallocated: %d,\n", (*(a4 + 32) >> 6) & 1);
    (*(a1 + 48))("        in_use: 0 \n");
    (*(a1 + 48))("    }\n");
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v14;
}

uint64_t pgm_thread_set_disabled(uint64_t result)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = 0xFFFFFFFFLL;
  if (!result)
  {
    v2 = 0;
  }

  *(StatusReg + 880) = v2;
  return result;
}

uint64_t pgm_extract_report_from_corpse(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v13 = 0;
  v53 = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock_0, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    v1 = os_unfair_lock_lock_with_options();
  }

  if (!v3)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v1);
  }

  g_crm_reader_0 = v3;
  num_read_memory_0 = 0;
  if (!v5)
  {
LABEL_21:
    v19 = 5;
    goto LABEL_22;
  }

  v15 = v5;
  while (1)
  {
    v16 = *v7;
    LODWORD(v33[0]) = 0;
    zone_type = get_zone_type(v9, memory_reader_adapter_0, v16, v33);
    if (LODWORD(v33[0]) == 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = 257;
    }

    if (zone_type)
    {
      v19 = zone_type;
    }

    else
    {
      v19 = v18;
    }

    free_read_memory();
    if (v19 == 257)
    {
      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_22;
    }

    v20 = *v7;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    memset(v33, 0, sizeof(v33));
    zone = read_zone(v9, v20, memory_reader_adapter_0, v33, 6);
    if (zone)
    {
      v19 = zone;
      free_read_memory();
      if (v19 != 257)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (*(&v36 + 1) <= v12 && v37 > v12)
    {
      break;
    }

    free_read_memory();
LABEL_20:
    ++v7;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }

  v26 = lookup_slot(v33, v12);
  if (v34 <= v26)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v26);
  }

  v27 = *(&v38 + 1);
  v28 = (*(&v38 + 1) + 8 * v26);
  if (DWORD2(v34) <= *v28 >> 2)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v26);
  }

  if ((*v28 & 3) == 0)
  {
    v29 = "low";
    v30 = "long-range OOB";
    goto LABEL_36;
  }

  if ((*v28 & 3) == 2)
  {
    if ((v26 & 0x7FFFFFFE00000000) != 0)
    {
      if ((HIDWORD(v26) & 0x7FFFFFFE) != 2)
      {
        purgeable_ptr_in_use_enumerator_cold_1(v26);
      }

      v29 = "low";
      v30 = "OOB + UAF";
    }

    else
    {
      v29 = "high";
      v30 = "use-after-free";
    }

LABEL_36:
    *v11 = v30;
    *(v11 + 8) = v29;
    *(v11 + 16) = v12;
    v31 = v39 + ((*v28 << 6) & 0x3FFFFFFF00);
    *(v11 + 24) = *(&v36 + 1) + *MEMORY[0x1E69E9AC8] * ((2 * (v26 & 0x7FFFFFFF)) | 1) + *(v27 + 8 * v26 + 6);
    *(v11 + 32) = *(v28 + 2);
    *(v11 + 40) = slot_state_labels[*v28 & 3];
    *(v11 + 48) = 0;
    if (*v31 == v26 && (*(v11 + 48) = 1, *(v11 + 56) = *(v31 + 4), *(v11 + 72) = trace_decode(v31 + 40, *(v31 + 20), v11 + 80, 64), (*v28 & 3) == 2))
    {
      ++*(v11 + 48);
      v32 = *(v31 + 20);
      *(v11 + 592) = *(v31 + 22);
      v19 = 0;
      *(v11 + 608) = trace_decode(v31 + 40 + v32, *(v31 + 38), v11 + 616, 64);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if ((HIDWORD(v26) & 0x7FFFFFFF) == 3)
    {
      v29 = "high";
      v30 = "out-of-bounds";
      goto LABEL_36;
    }

    malloc_report(0x223u, "Failed to generate PGM report for fault address %p: slot is unexpectedly allocated with bounds %d\n");
    v19 = 5;
  }

  free_read_memory();
LABEL_22:
  v22 = *(StatusReg + 24);
  v23 = v22;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock_0, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != v22)
  {
    os_unfair_lock_unlock(&crash_reporter_lock_0);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t pgm_malloc(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 0x4000);
  if (*MEMORY[0x1E69E9AC8] >= a2 && *(a1 + 16684) != *(a1 + 212))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 880);
    if (v7 != -1)
    {
      if (v7)
      {
        v9 = v7 - 1;
      }

      else
      {
        v8 = *(a1 + 220);
        if (!v8)
        {
          purgeable_ptr_in_use_enumerator_cold_1(v8);
        }

        v9 = arc4random_uniform(v8);
      }

      *(StatusReg + 880) = v9;
      if (!v9)
      {
        v12 = 0;
        v13 = v4 + 74;
        atomic_compare_exchange_strong_explicit(v13, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v12)
        {
          os_unfair_lock_lock_with_options();
        }

        v14 = allocate(a1, a2, 0x10uLL);
        v15 = *(StatusReg + 24);
        v16 = v15;
        atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          os_unfair_lock_unlock(v13);
        }

        if (v14)
        {
          return v14;
        }
      }
    }
  }

  v10 = *(*(a1 + 200) + 24);

  return v10();
}

uint64_t pgm_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a2, a3))
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69E9AC8] < a2 * a3 || *(a1 + 16684) == *(a1 + 212))
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 880);
  if (v8 == -1)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v9 = *(a1 + 220);
    if (!v9)
    {
      purgeable_ptr_in_use_enumerator_cold_1(v9);
    }

    v10 = arc4random_uniform(v9);
  }

  *(StatusReg + 880) = v10;
  if (v10)
  {
    goto LABEL_12;
  }

  v13 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    os_unfair_lock_lock_with_options();
  }

  v14 = allocate(a1, a2 * a3, 0x10uLL);
  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock((a1 + 16680));
  }

  if (!v14)
  {
LABEL_12:
    v11 = *(*(a1 + 200) + 32);

    return v11();
  }

  else
  {
    bzero(v14, a2 * a3);
    return v14;
  }
}

uint64_t pgm_valloc(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E9AC8];
  v5 = (a1 + 0x4000);
  if (*MEMORY[0x1E69E9AC8] >= a2 && *(a1 + 16684) != *(a1 + 212))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 880);
    if (v8 != -1)
    {
      if (v8)
      {
        v10 = v8 - 1;
      }

      else
      {
        v9 = *(a1 + 220);
        if (!v9)
        {
          purgeable_ptr_in_use_enumerator_cold_1(v9);
        }

        v10 = arc4random_uniform(v9);
      }

      *(StatusReg + 880) = v10;
      if (!v10)
      {
        v13 = 0;
        v14 = v5 + 74;
        atomic_compare_exchange_strong_explicit(v14, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v13)
        {
          os_unfair_lock_lock_with_options();
        }

        v15 = allocate(a1, a2, *v4);
        v16 = *(StatusReg + 24);
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v14, &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 != v16)
        {
          os_unfair_lock_unlock(v14);
        }

        if (v15)
        {
          return v15;
        }
      }
    }
  }

  v11 = *(*(a1 + 200) + 40);

  return v11();
}

uint64_t pgm_destroy(mach_vm_address_t a1)
{
  malloc_destroy_zone(*(a1 + 200));
  my_vm_deallocate(*(a1 + 272), *(a1 + 264));

  return my_vm_deallocate(a1, 16720);
}

uint64_t pgm_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*MEMORY[0x1E69E9AC8] >= a2 && *MEMORY[0x1E69E9AC8] >= a3 && *(a1 + 16684) != *(a1 + 212))
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 880);
    if (v8 != -1)
    {
      if (v8)
      {
        v10 = v8 - 1;
      }

      else
      {
        v9 = *(a1 + 220);
        if (!v9)
        {
          purgeable_ptr_in_use_enumerator_cold_1(v9);
        }

        v10 = arc4random_uniform(v9);
      }

      *(StatusReg + 880) = v10;
      if (!v10)
      {
        v13 = 0;
        if (a2 <= 0x10)
        {
          v14 = 16;
        }

        else
        {
          v14 = a2;
        }

        atomic_compare_exchange_strong_explicit((a1 + 16680), &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v13)
        {
          os_unfair_lock_lock_with_options();
        }

        v15 = allocate(a1, a3, v14);
        v16 = *(StatusReg + 24);
        v17 = v16;
        atomic_compare_exchange_strong_explicit((a1 + 16680), &v17, 0, memory_order_release, memory_order_relaxed);
        if (v17 != v16)
        {
          os_unfair_lock_unlock((a1 + 16680));
        }

        if (v15)
        {
          return v15;
        }
      }
    }
  }

  v11 = *(*(a1 + 200) + 112);

  return v11();
}

uint64_t pgm_malloc_with_options(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (*MEMORY[0x1E69E9AC8] < a2)
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69E9AC8] < a3 || *(a1 + 16684) == *(a1 + 212))
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 880);
  if (v10 == -1)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v11 = *(a1 + 220);
    if (!v11)
    {
      purgeable_ptr_in_use_enumerator_cold_1(v11);
    }

    v12 = arc4random_uniform(v11);
  }

  *(StatusReg + 880) = v12;
  if (v12)
  {
    goto LABEL_12;
  }

  v15 = 0;
  if (a2 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = a2;
  }

  atomic_compare_exchange_strong_explicit((a1 + 16680), &v15, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    os_unfair_lock_lock_with_options();
  }

  v17 = allocate(a1, a3, v16);
  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit((a1 + 16680), &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock((a1 + 16680));
  }

  if (!v17)
  {
LABEL_12:
    v13 = *(*(a1 + 200) + 152);

    return v13();
  }

  else
  {
    if (a4)
    {
      bzero(v17, a3);
    }

    return v17;
  }
}

BOOL pgm_check(uint64_t a1)
{
  result = check_zone(a1);
  if (result)
  {
    result = check_slots(a1);
    if (result)
    {
      return check_metadata(a1);
    }
  }

  return result;
}

BOOL check_zone(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  if (v1 > v2 >> 1)
  {
    return 0;
  }

  v3 = *(a1 + 208);
  if (v2 > v3)
  {
    return 0;
  }

  v4 = *(a1 + 220);
  if (v4)
  {
    if (*(a1 + 224) > 0x64u)
    {
      return 0;
    }

    v5 = *(a1 + 240);
    v6 = *MEMORY[0x1E69E9AC8];
    if (v5 != *MEMORY[0x1E69E9AC8] * ((2 * v3) | 1))
    {
      return 0;
    }

    v7 = *(a1 + 248);
    if (v7 % v6)
    {
      return 0;
    }

    v4 = v5 % v6;
    if (v4)
    {
      return 0;
    }

    v9 = *(a1 + 256);
    if (v7 + v5 == v9 && v7 < v9)
    {
      if (*(a1 + 264) != v5 + 0x4000000)
      {
        return 0;
      }

      v4 = 0;
      v10 = *(a1 + 272);
      if (v10 != v7 - 0x2000000 || v10 >= v7)
      {
        return v4;
      }

      v11 = *(a1 + 16684);
      if (v11 > v1)
      {
        return 0;
      }

      v4 = 0;
      v12 = *(a1 + 16688);
      if (v11 > v12 || v12 > v2)
      {
        return v4;
      }

      if (*(a1 + 16692) >= v3)
      {
        return 0;
      }

      v4 = *(a1 + 280);
      if (v4)
      {
        v4 = *(a1 + 288);
        if (v4)
        {
          return *(a1 + 16696) <= *(a1 + 16704);
        }
      }
    }
  }

  return v4;
}

BOOL check_slots(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *MEMORY[0x1E69E9AC8];
    for (i = (*(a1 + 280) + 6); ; i += 4)
    {
      v6 = *(i - 3);
      v7 = v6 & 3;
      if ((v6 & 3) != 0)
      {
        if (v7 == 3)
        {
          return 0;
        }

        if (*(a1 + 16688) <= v6 >> 2)
        {
          return 0;
        }

        v8 = *(i - 1);
        if (v4 < v8)
        {
          return 0;
        }

        v9 = (v8 + 15) & 0x1FFF0;
        if (!*(i - 1))
        {
          v9 = 16;
        }

        if (v9 != v8)
        {
          return 0;
        }

        v10 = 0;
        v11 = *i;
        if (v4 < v11 || (v11 & 0xF) != 0 || v11 + v8 > v4)
        {
          return v10;
        }

        if (v7 == 1)
        {
          ++v3;
          v2 += v8;
        }
      }

      if (!--v1)
      {
        return v3 == *(a1 + 16684) && v2 == *(a1 + 16696);
      }
    }
  }

  v3 = 0;
  v2 = 0;
  return v3 == *(a1 + 16684) && v2 == *(a1 + 16696);
}

BOOL check_metadata(uint64_t a1)
{
  v1 = *(a1 + 16688);
  if (v1)
  {
    v2 = *(a1 + 288);
    v3 = *(a1 + 208);
    v4 = *v2;
    if (v4 >= v3)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v6 = v2 + 64;
      v7 = 1;
      do
      {
        if (v7 - 1 != *(*(a1 + 280) + 8 * v4) >> 2)
        {
          break;
        }

        if (*(v6 - 109) + *(v6 - 118) >= 0xD9)
        {
          break;
        }

        v5 = v7 >= v1;
        if (v1 == v7)
        {
          break;
        }

        v4 = *v6;
        v6 += 64;
        ++v7;
      }

      while (v4 < v3);
    }
  }

  else
  {
    return 1;
  }

  return v5;
}

uint64_t my_vm_deallocate(mach_vm_address_t address, uint64_t a2)
{
  result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]);
  if (result)
  {
    purgeable_ptr_in_use_enumerator_cold_1(result);
  }

  return result;
}

uint64_t pgm_enumerator(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v41 = *MEMORY[0x1E69E9840];
  if ((v3 & 3) == 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = v3;
  v9 = v2;
  v10 = v1;
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
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  result = read_zone(v1, v4, v5, v21, 2);
  if (!result)
  {
    v12 = v22;
    if (v22)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = MEMORY[0x1E69E9AC8];
      do
      {
        if ((*(*(&v26 + 1) + 4 * v14) & 3) == 1)
        {
          if ((v8 & 2) != 0)
          {
            v17 = *v16;
            v19 = *(&v24 + 1) + *v16 * (v14 & 0xFFFFFFFE | 1);
            v20 = v17;
            result = v7(v10, v9, 2, &v19, 1);
            v12 = v22;
          }

          if (v8)
          {
            if (v15 >= v12)
            {
              purgeable_ptr_in_use_enumerator_cold_1(result);
            }

            v19 = *(&v24 + 1) + *v16 * (v14 & 0xFFFFFFFE | 1) + *(*(&v26 + 1) + v13 + 6);
            v20 = 0;
            v20 = *(*(&v26 + 1) + v13 + 4);
            result = v7(v10, v9, 1, &v19, 1);
            v12 = v22;
          }
        }

        ++v15;
        v14 += 2;
        v13 += 8;
      }

      while (v15 < v12);
    }

    goto LABEL_12;
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

atomic_uint *pgm_force_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 16680);
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void pgm_force_unlock(os_unfair_lock_s *a1)
{
  v1 = a1 + 4170;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v1);
  }
}

BOOL pgm_zone_locked(os_unfair_lock_s *a1)
{
  v1 = 0;
  v2 = a1 + 4170;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v2, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  v4 = v1 == 0;
  if (!v1)
  {
    v5 = *(StatusReg + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(v2);
    }
  }

  return !v4;
}

uint64_t pgm_print_task(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 512);
  if (read_zone(v1, v4, v8, v11, 2))
  {
    result = v3("Failed to read ProbGuard zone at %p\n", v5);
  }

  else
  {
    result = print_zone(v11, v7 > 1, v3);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pgm_statistics_task(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v12 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  result = read_zone(v1, v4, v5, v9, 1);
  if (!result)
  {
    v7 = *MEMORY[0x1E69E9AC8] * v10;
    *v3 = v10;
    *(v3 + 8) = v11;
    *(v3 + 24) = v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t read_zone(uint64_t task, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, const void **a4), uint64_t a4, char a5)
{
  v7 = a3;
  if (!a3)
  {
    if (task)
    {
      is_self = mach_task_is_self(task);
      if (!is_self)
      {
        purgeable_ptr_in_use_enumerator_cold_1(is_self);
      }
    }

    v7 = _malloc_default_reader_3;
  }

  v13 = 0;
  result = v7(task, a2, 16720, &v13);
  if (!result)
  {
    v12 = v13;
    if (!check_zone(v13))
    {
      return 5;
    }

    memcpy(a4, v12, 0x4150uLL);
    if ((a5 & 2) != 0)
    {
      result = v7(task, *(a4 + 280), 8 * *(a4 + 208), (a4 + 280));
      if (result)
      {
        return result;
      }

      if (!check_slots(a4))
      {
        return 5;
      }
    }

    if ((a5 & 4) == 0)
    {
      return 0;
    }

    result = v7(task, *(a4 + 288), *(a4 + 216) << 8, (a4 + 288));
    if (!result)
    {
      if (check_metadata(a4))
      {
        return 0;
      }

      return 5;
    }
  }

  return result;
}

uint64_t print_zone(uint64_t a1, int a2, void (*a3)(const char *, ...))
{
  v6 = MEMORY[0x1E69E9AC8];
  a3("ProbGuard zone: slots: %u, slots in use: %u, size in use: %llu, max size in use: %llu, allocated size: %llu\n", *(a1 + 208), *(a1 + 16684), *(a1 + 16696), *(a1 + 16704), *MEMORY[0x1E69E9AC8] * *(a1 + 16684));
  a3("Quarantine: size: %llu, address range: [%p - %p)\n", *(a1 + 240), *(a1 + 248), *(a1 + 256));
  result = (a3)("Slots (#, state, offset, size, block address):\n");
  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i < v8; ++i)
    {
      v12 = *(a1 + 280);
      if (a2 || (*(v12 + v9) & 3) == 1)
      {
        result = (a3)("%4u, %9s, %4u, %4u, %p\n", i, slot_state_labels[*(v12 + v9) & 3], *(v12 + v9 + 6), *(v12 + v9 + 4), (*(a1 + 248) + *v6 * (v10 & 0xFFFFFFFE | 1) + *(v12 + v9 + 6)));
        v8 = *(a1 + 208);
      }

      v10 += 2;
      v9 += 8;
    }
  }

  return result;
}

uint64_t memory_reader_adapter_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (num_read_memory_0 >= 3)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = g_crm_reader_0();
  *a4 = v5;
  if (!v5)
  {
    return 5;
  }

  v6 = v5;
  result = 0;
  v8 = num_read_memory_0++;
  read_memory_0[v8] = v6;
  return result;
}

void free_read_memory()
{
  if (num_read_memory_0)
  {
    v0 = 0;
    do
    {
      _free(read_memory_0[v0++]);
    }

    while (v0 < num_read_memory_0);
  }

  num_read_memory_0 = 0;
}

uint64_t nanov2_configure()
{
  if (nanov2_config_predicate != -1)
  {
    return nanov2_configure_cold_1();
  }

  return result;
}

void nanov2_configure_once()
{
  v0 = 0;
  v1 = 0uLL;
  do
  {
    v1 = vaddq_s32(vshlq_n_s32(block_units_by_size_class[v0++], 6uLL), v1);
  }

  while (v0 != 4);
  if (vaddvq_s32(v1) != 4096)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  first_block_offset_by_size_class[0] = 1;
  v2 = LODWORD(block_units_by_size_class[0]) << 6;
  last_block_offset_by_size_class[0] = (LODWORD(block_units_by_size_class[0]) << 6) - 1;
  v3 = 1u;
  do
  {
    first_block_offset_by_size_class[v3] = v2;
    v2 += *(block_units_by_size_class + v3 * 4) << 6;
    last_block_offset_by_size_class[v3++] = v2 - 1;
  }

  while (v3 != 16);
  if (v2 != 4096)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(block_units_by_size_class + v4);
    if (v6 >= 1)
    {
      v7 = (&ptr_offset_to_size_class + 4 * v5);
      v5 += v6;
      do
      {
        *v7++ = v4;
        --v6;
      }

      while (v6);
    }

    ++v4;
  }

  while (v4 != 16);
  if (v5 != 64)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }
}

uint64_t nanov2_size(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFE000000FLL) != 0x300000000)
  {
    return (*(*(a1 + 28704) + 16))();
  }

  if (*(a1 + 28720) > a2 || *(a1 + 28728) < a2)
  {
    return (*(*(a1 + 28704) + 16))();
  }

  v3 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ *(a1 + 28680)) >> 6];
  v4 = *((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F)) & 0x7FF;
  if (v4 > 0x7FD)
  {
    if (v4 - 2046 < 2)
    {
      return (*(*(a1 + 28704) + 16))();
    }

    goto LABEL_13;
  }

  if (!v4 || v4 == 2042)
  {
    return (*(*(a1 + 28704) + 16))();
  }

  if (v4 != 2044)
  {
LABEL_13:
    if (((*((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F)) >> 11) & 0x3FF) != slots_by_size_class[v3] - 1)
    {
      goto LABEL_14;
    }

    return (*(*(a1 + 28704) + 16))();
  }

LABEL_14:
  v5 = 16 * v3 + 16;
  if ((a2 & 0x3FF0) != (a2 & 0x3FF0) / v5 * v5 || (*(a1 + 28696) ^ *a2) == a2)
  {
    return (*(*(a1 + 28704) + 16))();
  }

  return v5;
}

void *nanov2_malloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v2 > 0x100)
  {
    v22 = *(*(a1 + 28704) + 24);

    return v22();
  }

  v3 = (v2 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v4) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v26) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v4 = v26 % nano_common_max_magazines;
  }

  v5 = v4 & 0x3F;
  v6 = a1 + (v3 << 9) + 8 * (v4 & 0x3F);
  v7 = *(v6 + 0x4000);
  if (v7)
  {
    v8 = 0;
    v9 = *v7;
    v10 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
    v11 = 16 * v3 + 16;
    while (1)
    {
      v12 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v14 = 0;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 0);
      }

      v13 = v9 & 0x7FF;
      v14 = 0;
      if (v13 == 2044)
      {
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 0);
      }

      v15 = (v9 >> 11) & 0x3FF;
      v16 = (v9 + 2095104) & 0x1FF800 | (v9 + 0x200000) & 0x7FE00000;
      if (v13 == 2043 || v13 == 2045)
      {
        if (v15)
        {
          v17 = 2043;
        }

        else
        {
          v17 = 2044;
        }

        v18 = v16 | v17 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v18, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          v24 = slots_by_size_class[v3] + ~v15;
          v25 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (!v8)
        {
          v8 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
        }

        v24 = v13 - 1;
        v14 = v8 + v24 * v11;
        if (v15)
        {
          v20 = *(v14 + 8) & 0x7FF;
        }

        else
        {
          v20 = 2044;
        }

        v21 = v16 | v20 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v21, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          if (v14)
          {
            goto LABEL_38;
          }

          v25 = 0;
LABEL_30:
          if (!v8)
          {
            v8 = v10;
          }

          v14 = v8 + v24 * v11;
          if (v25)
          {
            if (!v14)
            {
LABEL_34:
              v12 = 0;
              return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 0);
            }
          }

          else
          {
LABEL_38:
            if ((*(a1 + 28696) ^ *v14) != v14)
            {
              goto LABEL_34;
            }
          }

          *v14 = 0;
          *(v14 + 8) = 0;
          return v14;
        }
      }

      v9 = v19;
      if ((v19 & 0x7FF) - 2045 < 3)
      {
        v14 = 0;
        v12 = v7;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 0);
      }
    }
  }

  v12 = 0;
  v14 = 0;
  return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 0);
}

void *nanov2_malloc_type(uint64_t a1, unint64_t a2)
{
  v2 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a2 <= 0x10)
  {
    v2 = 16;
  }

  if (v2 > 0x100)
  {
    v22 = *(*(a1 + 28704) + 160);

    return v22();
  }

  v3 = (v2 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v4) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v26) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v4 = v26 % nano_common_max_magazines;
  }

  v5 = v4 & 0x3F;
  v6 = a1 + (v3 << 9) + 8 * (v4 & 0x3F);
  v7 = *(v6 + 0x4000);
  if (v7)
  {
    v8 = 0;
    v9 = *v7;
    v10 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
    v11 = 16 * v3 + 16;
    while (1)
    {
      v12 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v14 = 0;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 1);
      }

      v13 = v9 & 0x7FF;
      v14 = 0;
      if (v13 == 2044)
      {
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 1);
      }

      v15 = (v9 >> 11) & 0x3FF;
      v16 = (v9 + 2095104) & 0x1FF800 | (v9 + 0x200000) & 0x7FE00000;
      if (v13 == 2043 || v13 == 2045)
      {
        if (v15)
        {
          v17 = 2043;
        }

        else
        {
          v17 = 2044;
        }

        v18 = v16 | v17 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v18, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          v24 = slots_by_size_class[v3] + ~v15;
          v25 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (!v8)
        {
          v8 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
        }

        v24 = v13 - 1;
        v14 = v8 + v24 * v11;
        if (v15)
        {
          v20 = *(v14 + 8) & 0x7FF;
        }

        else
        {
          v20 = 2044;
        }

        v21 = v16 | v20 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v21, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          if (v14)
          {
            goto LABEL_37;
          }

          v25 = 0;
LABEL_29:
          if (!v8)
          {
            v8 = v10;
          }

          v14 = v8 + v24 * v11;
          if (v25)
          {
            if (!v14)
            {
LABEL_33:
              v12 = 0;
              return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 1);
            }
          }

          else
          {
LABEL_37:
            if ((*(a1 + 28696) ^ *v14) != v14)
            {
              goto LABEL_33;
            }
          }

          *v14 = 0;
          *(v14 + 8) = 0;
          return v14;
        }
      }

      v9 = v19;
      if ((v19 & 0x7FF) - 2045 < 3)
      {
        v14 = 0;
        v12 = v7;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 1);
      }
    }
  }

  v12 = 0;
  v14 = 0;
  return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 0, 1);
}

void nanov2_free_definite_size(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  if (!a2 || a2 >> 29 != 24)
  {
    v17 = *(*(a1 + 28704) + 120);

    v17();
    return;
  }

  v5 = a3 >> 4;
  if ((a3 & 0xF) != 0)
  {
    LODWORD(v5) = v5 + 1;
  }

  v6 = v5 - 1;
  if (malloc_zero_policy)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 1;
  }

  if (!v7)
  {
    bzero(a2 + 2, a3 - 16);
  }

  v8 = ((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F));
  v9 = *v8;
  v10 = slots_by_size_class[v6];
  *a2 = *(a1 + 28696) ^ a2;
  while (1)
  {
    v11 = v9 & 0x7FF;
    v12 = (v9 + 2048) & 0x1FF800;
    v13 = (v9 + 0x200000) & 0x7FE00000 | v9 & 0x80000000;
    if (v11 == 2044)
    {
      v11 = 2043;
      goto LABEL_19;
    }

    if ((((v9 + 2048) >> 11) & 0x3FF) == v10 - 1)
    {
      break;
    }

LABEL_19:
    v15 = v12 | v13 | (((a2 & 0x3FFF) / (16 * v6 + 16)) + 1) & 0x7FF;
    a2[1] = v11;
    v16 = v9;
    atomic_compare_exchange_strong_explicit(v8, &v16, v15, memory_order_release, memory_order_relaxed);
    if (v16 == v9)
    {
      goto LABEL_29;
    }

LABEL_20:
    v9 = v16;
  }

  a2[1] = 0;
  if (v9 < 0)
  {
    v14 = 2043;
  }

  else
  {
    v14 = 2045;
  }

  v15 = v14 | v12 | v13;
  v16 = v9;
  atomic_compare_exchange_strong_explicit(v8, &v16, v15, memory_order_release, memory_order_relaxed);
  if (v16 != v9)
  {
    goto LABEL_20;
  }

  if ((v9 & 0x80000000) != 0 || nanov2_madvise_policy)
  {
LABEL_29:
    if ((v15 & 0x80000000) == 0 && ((1 << v6) & *(a1 + 28672)) != 0 && v10 * 0.75 <= ((v15 >> 11) & 0x3FF))
    {
      atomic_fetch_and_explicit((a1 + 28672), ~(1 << v6), memory_order_relaxed);
    }

    return;
  }

  nanov2_madvise_block(a1, v8, v6, 2045);
}

void nanov2_madvise_block(const os_unfair_lock *a1, atomic_uint *a2, int a3, int a4)
{
  v8 = 0;
  v9 = a2 & 0xFFFFFFFFFC000000 | (((16 * a2) & 0xFC0 | (a2 >> 8) & 0x3F) << 14);
  v10 = &a1[7184];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[7184], &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  nanov2_madvise_block_locked(a1, a2, v9, a3, a4);
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(v10, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {

    os_unfair_lock_unlock(v10);
  }
}

void _nanov2_free(uint64_t a1, unint64_t *a2, int a3)
{
  if (!a2 || (a2 & 0xFFFFFFFFE000000FLL) != 0x300000000 || (*(a1 + 28720) <= a2 ? (v5 = *(a1 + 28728) >= a2) : (v5 = 0), !v5))
  {
LABEL_17:
    v11 = *(a1 + 28704);
    if (a3)
    {
      v12 = *(v11 + 144);
    }

    else
    {
      v12 = *(v11 + 48);
    }

    v12();
    return;
  }

  v6 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ *(a1 + 28680)) >> 6];
  v7 = ((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F));
  v8 = *v7 & 0x7FF;
  if (v8 > 0x7FD)
  {
    if (v8 - 2046 < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!v8 || v8 == 2042)
  {
    goto LABEL_17;
  }

  if (v8 != 2044)
  {
LABEL_14:
    if (((*v7 >> 11) & 0x3FF) == slots_by_size_class[v6] - 1)
    {
      goto LABEL_17;
    }
  }

  v9 = 16 * v6 + 16;
  if ((a2 & 0x3FF0) != (a2 & 0x3FF0u) / v9 * v9)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 28696);
  if ((v10 ^ *a2) == a2)
  {
    goto LABEL_17;
  }

  if (v9 >= 0x11 && malloc_zero_policy == 0)
  {
    bzero(a2 + 2, v9 - 16);
    v10 = *(a1 + 28696);
  }

  v14 = *v7;
  v15 = slots_by_size_class[v6];
  *a2 = v10 ^ a2;
  while (1)
  {
    v16 = v14 & 0x7FF;
    v17 = (v14 + 2048) & 0x1FF800;
    v18 = (v14 + 0x200000) & 0x7FE00000 | v14 & 0x80000000;
    if (v16 == 2044)
    {
      v16 = 2043;
      goto LABEL_39;
    }

    if ((((v14 + 2048) >> 11) & 0x3FF) == v15 - 1)
    {
      break;
    }

LABEL_39:
    v20 = v17 | v18 | (((a2 & 0x3FF0) / v9) + 1) & 0x7FF;
    a2[1] = v16;
    v21 = v14;
    atomic_compare_exchange_strong_explicit(v7, &v21, v20, memory_order_release, memory_order_relaxed);
    if (v21 == v14)
    {
      goto LABEL_46;
    }

LABEL_40:
    v14 = v21;
  }

  a2[1] = 0;
  if (v14 < 0)
  {
    v19 = 2043;
  }

  else
  {
    v19 = 2045;
  }

  v20 = v19 | v17 | v18;
  v21 = v14;
  atomic_compare_exchange_strong_explicit(v7, &v21, v20, memory_order_release, memory_order_relaxed);
  if (v21 != v14)
  {
    goto LABEL_40;
  }

  if ((v14 & 0x80000000) != 0 || nanov2_madvise_policy)
  {
LABEL_46:
    if ((v20 & 0x80000000) == 0 && ((1 << v6) & *(a1 + 28672)) != 0 && v15 * 0.75 <= ((v20 >> 11) & 0x3FF))
    {
      atomic_fetch_and_explicit((a1 + 28672), ~(1 << v6), memory_order_relaxed);
    }

    return;
  }

  nanov2_madvise_block(a1, v7, v6, 2045);
}

void *nanov2_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a2 != 1)
  {
    if (!is_mul_ok(a2, a3) || (v3 = a2 * a3, a2 * a3 > malloc_absolute_max_size))
    {
      v16 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
      return v16;
    }
  }

  if (v3 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v3 > 0x100)
  {
    v24 = *(*(a1 + 28704) + 32);

    return v24();
  }

  v5 = (v4 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v6) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v28) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v6 = v28 % nano_common_max_magazines;
  }

  v7 = v6 & 0x3F;
  v8 = a1 + (v5 << 9) + 8 * (v6 & 0x3F);
  v9 = *(v8 + 0x4000);
  if (!v9)
  {
    v14 = 0;
    v16 = 0;
    return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, v5, v7, v14, v16, 1, 0);
  }

  v10 = 0;
  v11 = *v9;
  v12 = v9 & 0xFFFFFFFFFC000000 | (((16 * v9) & 0xFC0 | (v9 >> 8) & 0x3F) << 14);
  v13 = 16 * v5 + 16;
  while (1)
  {
    v14 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      v16 = 0;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, v5, v7, v14, v16, 1, 0);
    }

    v15 = v11 & 0x7FF;
    v16 = 0;
    if (v15 == 2044)
    {
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, v5, v7, v14, v16, 1, 0);
    }

    v17 = (v11 >> 11) & 0x3FF;
    v18 = (v11 + 2095104) & 0x1FF800 | (v11 + 0x200000) & 0x7FE00000;
    if (v15 != 2043 && v15 != 2045)
    {
      break;
    }

    if (v17)
    {
      v19 = 2043;
    }

    else
    {
      v19 = 2044;
    }

    v20 = v18 | v19 | 0x80000000;
    v21 = v11;
    atomic_compare_exchange_strong_explicit(v9, &v21, v20, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v11)
    {
      v26 = slots_by_size_class[v5] + ~v17;
      v27 = 1;
      goto LABEL_35;
    }

LABEL_27:
    v11 = v21;
    if ((v21 & 0x7FF) - 2045 < 3)
    {
      v16 = 0;
      v14 = v9;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, v5, v7, v14, v16, 1, 0);
    }
  }

  if (!v10)
  {
    v10 = v9 & 0xFFFFFFFFFC000000 | (((16 * v9) & 0xFC0 | (v9 >> 8) & 0x3F) << 14);
  }

  v26 = v15 - 1;
  v16 = v10 + v26 * v13;
  if (v17)
  {
    v22 = *(v16 + 8) & 0x7FF;
  }

  else
  {
    v22 = 2044;
  }

  v23 = v18 | v22 | 0x80000000;
  v21 = v11;
  atomic_compare_exchange_strong_explicit(v9, &v21, v23, memory_order_relaxed, memory_order_relaxed);
  if (v21 != v11)
  {
    goto LABEL_27;
  }

  if (v16)
  {
    goto LABEL_43;
  }

  v27 = 0;
LABEL_35:
  if (!v10)
  {
    v10 = v12;
  }

  v16 = v10 + v26 * v13;
  if (v27)
  {
    if (!v16)
    {
LABEL_39:
      v14 = 0;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, v5, v7, v14, v16, 1, 0);
    }
  }

  else
  {
LABEL_43:
    if ((*(a1 + 28696) ^ *v16) != v16)
    {
      goto LABEL_39;
    }
  }

  if (malloc_zero_policy)
  {
    bzero(v16, v4);
  }

  else
  {
    *v16 = 0;
    *(v16 + 8) = 0;
  }

  return v16;
}

void *nanov2_calloc_type(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a2 != 1)
  {
    if (!is_mul_ok(a2, a3) || (v3 = a2 * a3, a2 * a3 > malloc_absolute_max_size))
    {
      v16 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
      return v16;
    }
  }

  if (v3 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v3 > 0x100)
  {
    v24 = *(*(a1 + 28704) + 168);

    return v24();
  }

  v5 = (v4 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v6) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v28) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v28 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v6 = v28 % nano_common_max_magazines;
  }

  v7 = v6 & 0x3F;
  v8 = a1 + (v5 << 9) + 8 * (v6 & 0x3F);
  v9 = *(v8 + 0x4000);
  if (!v9)
  {
    v14 = 0;
    v16 = 0;
    return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, (v4 >> 4) - 1, v7, v14, v16, 1, 1);
  }

  v10 = 0;
  v11 = *v9;
  v12 = v9 & 0xFFFFFFFFFC000000 | (((16 * v9) & 0xFC0 | (v9 >> 8) & 0x3F) << 14);
  v13 = 16 * v5 + 16;
  while (1)
  {
    v14 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      v16 = 0;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, (v4 >> 4) - 1, v7, v14, v16, 1, 1);
    }

    v15 = v11 & 0x7FF;
    v16 = 0;
    if (v15 == 2044)
    {
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, (v4 >> 4) - 1, v7, v14, v16, 1, 1);
    }

    v17 = (v11 >> 11) & 0x3FF;
    v18 = (v11 + 2095104) & 0x1FF800 | (v11 + 0x200000) & 0x7FE00000;
    if (v15 != 2043 && v15 != 2045)
    {
      break;
    }

    if (v17)
    {
      v19 = 2043;
    }

    else
    {
      v19 = 2044;
    }

    v20 = v18 | v19 | 0x80000000;
    v21 = v11;
    atomic_compare_exchange_strong_explicit(v9, &v21, v20, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v11)
    {
      v26 = slots_by_size_class[v5] + ~v17;
      v27 = 1;
      goto LABEL_35;
    }

LABEL_27:
    v11 = v21;
    if ((v21 & 0x7FF) - 2045 < 3)
    {
      v16 = 0;
      v14 = v9;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, (v4 >> 4) - 1, v7, v14, v16, 1, 1);
    }
  }

  if (!v10)
  {
    v10 = v9 & 0xFFFFFFFFFC000000 | (((16 * v9) & 0xFC0 | (v9 >> 8) & 0x3F) << 14);
  }

  v26 = v15 - 1;
  v16 = v10 + v26 * v13;
  if (v17)
  {
    v22 = *(v16 + 8) & 0x7FF;
  }

  else
  {
    v22 = 2044;
  }

  v23 = v18 | v22 | 0x80000000;
  v21 = v11;
  atomic_compare_exchange_strong_explicit(v9, &v21, v23, memory_order_relaxed, memory_order_relaxed);
  if (v21 != v11)
  {
    goto LABEL_27;
  }

  if (v16)
  {
    goto LABEL_43;
  }

  v27 = 0;
LABEL_35:
  if (!v10)
  {
    v10 = v12;
  }

  v16 = v10 + v26 * v13;
  if (v27)
  {
    if (!v16)
    {
LABEL_39:
      v14 = 0;
      return nanov2_allocate_outlined(a1, (v8 + 0x4000), v4, (v4 >> 4) - 1, v7, v14, v16, 1, 1);
    }
  }

  else
  {
LABEL_43:
    if ((*(a1 + 28696) ^ *v16) != v16)
    {
      goto LABEL_39;
    }
  }

  if (malloc_zero_policy)
  {
    bzero(v16, v4);
  }

  else
  {
    *v16 = 0;
    *(v16 + 8) = 0;
  }

  return v16;
}

void *nanov2_malloc_zero_on_alloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v2 > 0x100)
  {
    v22 = *(*(a1 + 28704) + 24);

    return v22();
  }

  v3 = (v2 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v4) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v26) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v4 = v26 % nano_common_max_magazines;
  }

  v5 = v4 & 0x3F;
  v6 = a1 + (v3 << 9) + 8 * (v4 & 0x3F);
  v7 = *(v6 + 0x4000);
  if (v7)
  {
    v8 = 0;
    v9 = *v7;
    v10 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
    v11 = 16 * v3 + 16;
    while (1)
    {
      v12 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v14 = 0;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 0);
      }

      v13 = v9 & 0x7FF;
      v14 = 0;
      if (v13 == 2044)
      {
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 0);
      }

      v15 = (v9 >> 11) & 0x3FF;
      v16 = (v9 + 2095104) & 0x1FF800 | (v9 + 0x200000) & 0x7FE00000;
      if (v13 == 2043 || v13 == 2045)
      {
        if (v15)
        {
          v17 = 2043;
        }

        else
        {
          v17 = 2044;
        }

        v18 = v16 | v17 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v18, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          v24 = slots_by_size_class[v3] + ~v15;
          v25 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (!v8)
        {
          v8 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
        }

        v24 = v13 - 1;
        v14 = v8 + v24 * v11;
        if (v15)
        {
          v20 = *(v14 + 8) & 0x7FF;
        }

        else
        {
          v20 = 2044;
        }

        v21 = v16 | v20 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v21, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          if (v14)
          {
            goto LABEL_38;
          }

          v25 = 0;
LABEL_30:
          if (!v8)
          {
            v8 = v10;
          }

          v14 = v8 + v24 * v11;
          if (v25)
          {
            if (!v14)
            {
LABEL_34:
              v12 = 0;
              return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 0);
            }
          }

          else
          {
LABEL_38:
            if ((*(a1 + 28696) ^ *v14) != v14)
            {
              goto LABEL_34;
            }
          }

          if (malloc_zero_policy)
          {
            bzero(v14, v2);
          }

          else
          {
            *v14 = 0;
            *(v14 + 8) = 0;
          }

          return v14;
        }
      }

      v9 = v19;
      if ((v19 & 0x7FF) - 2045 < 3)
      {
        v14 = 0;
        v12 = v7;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 0);
      }
    }
  }

  v12 = 0;
  v14 = 0;
  return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 0);
}

void *nanov2_malloc_type_zero_on_alloc(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v2 > 0x100)
  {
    v22 = *(*(a1 + 28704) + 160);

    return v22();
  }

  v3 = (v2 >> 4) - 1;
  if (nano_common_max_magazines_is_ncpu == 1)
  {
    LOBYTE(v4) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v26) = _os_cpu_number_override;
    if (_os_cpu_number_override == -1)
    {
      v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) & 0xFFF;
    }

    v4 = v26 % nano_common_max_magazines;
  }

  v5 = v4 & 0x3F;
  v6 = a1 + (v3 << 9) + 8 * (v4 & 0x3F);
  v7 = *(v6 + 0x4000);
  if (v7)
  {
    v8 = 0;
    v9 = *v7;
    v10 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
    v11 = 16 * v3 + 16;
    while (1)
    {
      v12 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v14 = 0;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 1);
      }

      v13 = v9 & 0x7FF;
      v14 = 0;
      if (v13 == 2044)
      {
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 1);
      }

      v15 = (v9 >> 11) & 0x3FF;
      v16 = (v9 + 2095104) & 0x1FF800 | (v9 + 0x200000) & 0x7FE00000;
      if (v13 == 2043 || v13 == 2045)
      {
        if (v15)
        {
          v17 = 2043;
        }

        else
        {
          v17 = 2044;
        }

        v18 = v16 | v17 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v18, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          v24 = slots_by_size_class[v3] + ~v15;
          v25 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (!v8)
        {
          v8 = v7 & 0xFFFFFFFFFC000000 | (((16 * v7) & 0xFC0 | (v7 >> 8) & 0x3F) << 14);
        }

        v24 = v13 - 1;
        v14 = v8 + v24 * v11;
        if (v15)
        {
          v20 = *(v14 + 8) & 0x7FF;
        }

        else
        {
          v20 = 2044;
        }

        v21 = v16 | v20 | 0x80000000;
        v19 = v9;
        atomic_compare_exchange_strong_explicit(v7, &v19, v21, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v9)
        {
          if (v14)
          {
            goto LABEL_38;
          }

          v25 = 0;
LABEL_30:
          if (!v8)
          {
            v8 = v10;
          }

          v14 = v8 + v24 * v11;
          if (v25)
          {
            if (!v14)
            {
LABEL_34:
              v12 = 0;
              return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 1);
            }
          }

          else
          {
LABEL_38:
            if ((*(a1 + 28696) ^ *v14) != v14)
            {
              goto LABEL_34;
            }
          }

          if (malloc_zero_policy)
          {
            bzero(v14, v2);
          }

          else
          {
            *v14 = 0;
            *(v14 + 8) = 0;
          }

          return v14;
        }
      }

      v9 = v19;
      if ((v19 & 0x7FF) - 2045 < 3)
      {
        v14 = 0;
        v12 = v7;
        return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 1);
      }
    }
  }

  v12 = 0;
  v14 = 0;
  return nanov2_allocate_outlined(a1, (v6 + 0x4000), v2, v3, v5, v12, v14, 1, 1);
}

void *nanov2_realloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (!a2)
  {
    v12 = a3;
LABEL_10:

    return nanov2_malloc(a1, v12);
  }

  v5 = a2;
  v6 = *(a1 + 28704);
  v7 = nanov2_pointer_size(a1, a2, 0);
  if (v7)
  {
    v8 = v7;
    if (a3 >= 0x101)
    {
      v9 = (*(v6 + 24))(v6, a3);
      if (v9)
      {
LABEL_5:
        v10 = v9;
        if (v8 >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = v8;
        }

        memcpy(v9, v5, v11);
        _nanov2_free(v4, v5, 0);
        return v10;
      }

      return 0;
    }

    if (a3)
    {
      if (a3 <= 0x10)
      {
        v15 = 16;
      }

      else
      {
        v15 = (a3 + 15) & 0x3F0;
      }

      if (v15 <= v7 && v15 > v7 >> 1)
      {
        if (v7 != a3)
        {
          if (v7 <= a3)
          {
            purgeable_ptr_in_use_enumerator_cold_1(v7);
          }

          if ((*(v4 + 28676) & 0x20) != 0)
          {
            _platform_memset();
          }
        }

        return v5;
      }

      v9 = nanov2_malloc(v4, v15);
      if (v9)
      {
        goto LABEL_5;
      }

      return 0;
    }

    _nanov2_free(v4, v5, 0);
    a1 = v4;
    v12 = 0;
    goto LABEL_10;
  }

  v14 = *(v6 + 56);

  return v14(v6, v5, a3);
}

void *nanov2_realloc_type(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    v8 = *(a1 + 28704);
    v9 = nanov2_pointer_size(a1, a2, 0);
    if (v9)
    {
      v10 = v9;
      if (a3 >= 0x101)
      {
        v11 = (*(v8 + 160))(v8, a3, a4);
        if (v11)
        {
LABEL_5:
          v12 = v11;
          if (v10 >= a3)
          {
            v13 = a3;
          }

          else
          {
            v13 = v10;
          }

          memcpy(v11, v7, v13);
          _nanov2_free(a1, v7, 0);
          return v12;
        }

        return 0;
      }

      if (a3)
      {
        if (a3 <= 0x10)
        {
          v16 = 16;
        }

        else
        {
          v16 = (a3 + 15) & 0x3F0;
        }

        if (v16 <= v9 && v16 > v9 >> 1)
        {
          if (v9 != a3)
          {
            if (v9 <= a3)
            {
              purgeable_ptr_in_use_enumerator_cold_1(v9);
            }

            if ((*(a1 + 28676) & 0x20) != 0)
            {
              _platform_memset();
            }
          }

          return v7;
        }

        v11 = nanov2_malloc_type(a1, v16);
        if (v11)
        {
          goto LABEL_5;
        }

        return 0;
      }

      _nanov2_free(a1, v7, 0);

      return nanov2_malloc(a1, 0);
    }

    else
    {
      v15 = *(v8 + 176);

      return v15(v8, v7, a3, a4);
    }
  }

  else
  {

    return nanov2_malloc_type(a1, a3);
  }
}

BOOL nanov2_claimed_address(uint64_t a1, unint64_t a2)
{
  v4 = 1;
  if (!nanov2_pointer_size(a1, a2, 1))
  {
    return malloc_zone_claimed_address(*(a1 + 28704), a2) != 0;
  }

  return v4;
}

unint64_t nanov2_pointer_size(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >> 29 != 24 || !a3 && (a2 & 0xF) != 0)
  {
    return 0;
  }

  if (*(a1 + 28720) > a2 || *(a1 + 28728) < a2)
  {
    return 0;
  }

  v4 = 0;
  v6 = ptr_offset_to_size_class[((a2 >> 14) & 0xFFF ^ *(a1 + 28680)) >> 6];
  v7 = *((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F)) & 0x7FF;
  if (v7 > 0x7FD)
  {
    if (v7 - 2046 < 2)
    {
      return v4;
    }
  }

  else
  {
    if (!v7 || v7 == 2042)
    {
      return v4;
    }

    if (v7 == 2044)
    {
      goto LABEL_17;
    }
  }

  if (((*((*(a1 + 28688) ^ a2 & 0x31C000000) + 4 * ((a2 >> 8) & 0xFC0 | (a2 >> 20) & 0x3F)) >> 11) & 0x3FF) == slots_by_size_class[v6] - 1)
  {
    return 0;
  }

LABEL_17:
  v4 = 16 * v6 + 16;
  if (!a3 && (a2 & 0x3FFF) != (a2 & 0x3FFF) / v4 * v4)
  {
    return 0;
  }

  if ((*(a1 + 28696) ^ *a2) == a2)
  {
    return 0;
  }

  return v4;
}

uint64_t nanov2_batch_malloc(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v7 > 0x100)
  {
    v8 = 0;
    return (*(*(a1 + 28704) + 80))() + v8;
  }

  v8 = 0;
  if (a4)
  {
    while (1)
    {
      v9 = nanov2_malloc(a1, v7);
      if (!v9)
      {
        break;
      }

      *a3++ = v9;
      if (v4 == ++v8)
      {
        return v4;
      }
    }
  }

  if (v8 != v4)
  {
    return (*(*(a1 + 28704) + 80))() + v8;
  }

  return v4;
}

void nanov2_batch_free(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 8 * a3;
    v5 = a2 - 8;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        _nanov2_free(a1, v6, 0);
      }

      v4 -= 8;
    }

    while (v4);
  }
}

void *nanov2_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > 0x10)
  {
    return (*(*(a1 + 28704) + 112))();
  }

  else
  {
    return nanov2_malloc(a1, a3);
  }
}

void *nanov2_memalign_type(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > 0x10)
  {
    return (*(*(a1 + 28704) + 184))();
  }

  else
  {
    return nanov2_malloc_type(a1, a3);
  }
}

unint64_t nanov2_pressure_relief(uint64_t a1, uint64_t a2)
{
  if ((nanov2_madvise_policy - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v26 = *(a1 + 72);
  v25 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  v5 = *(a1 + 28720);
  v6 = *(a1 + 28680);
  explicit = atomic_load_explicit((a1 + 28728), memory_order_acquire);
  v28 = v5;
  v2 = 0;
  if (v5)
  {
    v27 = explicit;
    v24 = (explicit - 1) & 0xFFFFFFFFE0000000;
    v8 = (a1 + 28736);
    v9 = ((v6 >> 6) | (v6 << 6)) & 0xFFF;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = StatusReg;
    do
    {
      v11 = v28;
      v12 = v28 + 0x20000000;
      if (v28 == v24)
      {
        v12 = v27;
      }

      v30 = v12;
      while (1)
      {
        v13 = *(a1 + 28688);
        if (v11 >= v30)
        {
          break;
        }

        v14 = 0;
        atomic_compare_exchange_strong_explicit(v8, &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v14)
        {
          os_unfair_lock_lock_with_options();
        }

        v15 = 0;
        v16 = 0;
        v17 = (v13 ^ v11 & 0xFFFFFFFFFC000000);
        do
        {
          if (v9 != v16 && (*v17 & 0x7FF) == 0x7FD)
          {
            v18 = v11 + ((v15 & 0xFC0 | (v16 >> 6)) << 14);
            if (nanov2_madvise_block_locked(a1, v17, v18, ptr_offset_to_size_class[(*(a1 + 28680) ^ (v18 >> 14) & 0xFC0) >> 6], 2045))
            {
              v2 += 0x4000;
            }
          }

          ++v17;
          ++v16;
          v15 += 64;
        }

        while (v16 != 4096);
        StatusReg = v29;
        v19 = *(v29 + 24);
        v20 = v19;
        atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
        if (v20 != v19)
        {
          os_unfair_lock_unlock((a1 + 28736));
        }

        v11 += 0x4000000;
        if (a2 - 1 < v2)
        {
          goto LABEL_29;
        }
      }

      v21 = v28 + (*((v13 ^ v28 & 0xFFFFFFFFFC000000) + 4 * (((*(a1 + 28680) >> 6) | (*(a1 + 28680) << 6)) & 0xFFF)) << 29);
      if (v21 >= v27)
      {
        v21 = 0;
      }

      if (*((v13 ^ v28 & 0xFFFFFFFFFC000000) + 4 * (((*(a1 + 28680) >> 6) | (*(a1 + 28680) << 6)) & 0xFFF)))
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v28 = v22;
    }

    while (v22);
  }

LABEL_29:
  if (v25)
  {
    kdebug_trace();
  }

  return v2;
}

uint64_t nanov2_madvise_block_locked(const os_unfair_lock *a1, atomic_uint *a2, uint64_t a3, int a4, int a5)
{
  os_unfair_lock_assert_owner(a1 + 7184);
  v10 = *a2;
  if ((*a2 & 0x7FF) != a5)
  {
    return 0;
  }

  v11 = (v10 + 0x200000) & 0x7FE00000 | 0x7FE;
  v12 = *a2;
  atomic_compare_exchange_strong_explicit(a2, &v12, v11, memory_order_relaxed, memory_order_relaxed);
  if (v12 == v10)
  {
    if (mvm_madvise_free(a1, a3 & 0xFFFFFFFFE0000000, a3, a3 + 0x4000, 0, 0))
    {
      v16 = *__error();
      malloc_zone_error(0, 0, "Failed to madvise block at blockp: %p, error: %d\n");
      v13 = 0;
    }

    else
    {
      ++*&a1[8 * a4 + 7192]._os_unfair_lock_opaque;
      v13 = 1;
    }

    v14 = (v10 + 0x200000) & 0x7FE00000 | 0x7FE;
    atomic_compare_exchange_strong_explicit(a2, &v14, (v10 + 0x400000) & 0x7FE00000 | 0x7FF, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v11)
    {
      malloc_zone_error(a1[7169]._os_unfair_lock_opaque, 0, "Failed when changing state from MADVISING to MADVISED, block_metap = %p, blockp = %p\n");
    }
  }

  else
  {
    v13 = 0;
    ++*&a1[8 * a4 + 7194]._os_unfair_lock_opaque;
  }

  return v13;
}

unint64_t nanov2_find_block_and_allocate(uint64_t a1, int a2, atomic_uint **a3)
{
  v5 = *a3;
  v6 = *a3;
  if (!*a3)
  {
    v6 = *(a1 + 28720);
  }

  v7 = slots_by_size_class[a2];
  v8 = v6 & 0xFFFFFFFFFC000000;
  v59 = 1 << a2;
  v56 = a1 + 28672;
  v62 = (a1 + 28728);
  lock = (a1 + 28716);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v58 = v5;
  do
  {
LABEL_4:
    v9 = v8 & 0xFFFFFFFFE0000000;
    explicit = atomic_load_explicit(v62, memory_order_acquire);
    v11 = (v8 & 0xFFFFFFFFE0000000) + 0x20000000;
    v63 = (explicit - 1) & 0xFFFFFFFFE0000000;
    v65 = explicit;
    if (v63 == (v8 & 0xFFFFFFFFE0000000))
    {
      v11 = explicit;
    }

    v12 = nanov2_policy_config;
    v13 = unk_1ED4040FC;
    v15 = dword_1ED404100;
    v14 = unk_1ED404104;
    v16 = v8;
    do
    {
      v17 = v8;
      v18 = v5 == 0;
      v19 = first_block_offset_by_size_class[a2] ^ *(a1 + 28680);
      v20 = (*(a1 + 28688) ^ v16 & 0xFFFFFFFFFC000000) + 4 * (((v19 >> 6) | (v19 << 6)) & 0xFFF);
      if (v5)
      {
        v20 = v5;
      }

      if (!v12)
      {
        v18 = 1;
      }

LABEL_11:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      v26 = v14;
      v27 = v20;
      while (1)
      {
        while (1)
        {
          v28 = *v27;
          if ((*v27 & 0x80000000) != 0)
          {
            goto LABEL_30;
          }

          v5 = 0;
          v29 = *v27 & 0x7FF;
          if (v29 > 0x7FC)
          {
            break;
          }

          if ((v28 & 0x7FF) == 0)
          {
LABEL_25:
            if (!v23)
            {
              v23 = v27;
            }

            if (!v18)
            {
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          if (v29 == 2044)
          {
            goto LABEL_31;
          }

LABEL_23:
          if (!v18)
          {
            if (v12 != 1)
            {
              __break(1u);
              return 0;
            }

            v37 = (100 * ((v28 >> 11) & 0x3FF)) / v7;
            if (v37 >= v13 && v37 <= v15)
            {
              v5 = v27;
            }

            else if (v37 >= v13)
            {
              v5 = 0;
              if (v21)
              {
                v39 = 1;
              }

              else
              {
                v39 = v22 == 0;
              }

              if (v39)
              {
                v22 = v27;
              }
            }

            else
            {
              v5 = 0;
              if (v22)
              {
                if (!v23)
                {
                  v23 = v27;
                }
              }

              else
              {
                v21 = 1;
                v22 = v27;
              }
            }

            goto LABEL_31;
          }

          v5 = v27;
LABEL_52:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v35 = *v5;
          v36 = *v5 & 0x7FF;
          v25 = 1;
          v26 = v14;
          v27 = v20;
          if (v36 != 2046)
          {
            if (!v36 || v36 == 2045 || v36 == 2047)
            {
              v40 = 0;
              v41 = ((v7 << 11) + 2095104) & 0x1FF800 | 0x7FB;
            }

            else
            {
              v41 = v35 & 0x1FFFFF;
              v40 = (v35 + 0x200000) & 0x7FE00000;
            }

            v42 = *v5;
            atomic_compare_exchange_strong_explicit(v5, &v42, v41 | v40 | 0x80000000, memory_order_relaxed, memory_order_relaxed);
            v12 = nanov2_policy_config;
            v13 = unk_1ED4040FC;
            v15 = dword_1ED404100;
            v14 = unk_1ED404104;
            if (v42 == v35)
            {
              result = nanov2_allocate_from_block(a1, v5, a2);
              if (!result)
              {
                atomic_fetch_and_explicit(v5, 0x7FFFFFFFu, memory_order_relaxed);
                v8 = v16;
                goto LABEL_4;
              }

              *a3 = v5;
              if (v58)
              {
                atomic_fetch_and_explicit(v58, 0x7FFFFFFFu, memory_order_relaxed);
              }

              return result;
            }

            goto LABEL_11;
          }
        }

        if (v29 == 2047)
        {
          goto LABEL_25;
        }

        if (v29 != 2046)
        {
          if (v29 == 2045)
          {
            if (!v24)
            {
              v24 = v27;
            }

            if (!v18)
            {
LABEL_30:
              v5 = 0;
              goto LABEL_31;
            }

LABEL_28:
            if (v22 | v23)
            {
              goto LABEL_49;
            }

            v22 = 0;
            v23 = 0;
            goto LABEL_30;
          }

          goto LABEL_23;
        }

LABEL_31:
        if (v26 >= 1)
        {
          if (v22 | v23)
          {
            if (!--v26)
            {
              break;
            }
          }
        }

        v30 = *(a1 + 28680);
        v31 = ((16 * v27) & 0xFC0 | (v27 >> 8) & 0x3F) ^ v30;
        if (v25)
        {
          v32 = first_block_offset_by_size_class[a2];
          if (v31 == v32)
          {
            v33 = last_block_offset_by_size_class[a2];
            v26 = v14;
          }

          else
          {
            v33 = v31 - 1;
          }

          v39 = v31 == v32;
          v25 = v31 != v32;
          v27 = v27 & 0xFFFFFFFFFFFFC000 | (4 * ((((v33 ^ v30) >> 6) | ((v33 ^ v30) << 6)) & 0xFFF));
          if (v39)
          {
            v27 = v20;
          }

          goto LABEL_46;
        }

        v34 = v31 == last_block_offset_by_size_class[a2] ? first_block_offset_by_size_class[a2] : v31 + 1;
        v27 = v27 & 0xFFFFFFFFFFFFC000 | (4 * ((((v34 ^ v30) >> 6) | ((v34 ^ v30) << 6)) & 0xFFF));
        if (v27 == v20)
        {
          break;
        }

        v25 = 0;
LABEL_46:
        if (v5)
        {
          goto LABEL_52;
        }
      }

      if (v5)
      {
        goto LABEL_52;
      }

LABEL_49:
      v5 = v22;
      if (v22)
      {
        goto LABEL_52;
      }

      v5 = v23;
      if (v23)
      {
        goto LABEL_52;
      }

      v5 = v24;
      if (v24)
      {
        goto LABEL_52;
      }

      v16 += 0x4000000;
      if (v16 >= v11)
      {
        v43 = *((*(a1 + 28688) ^ v9 & 0xFFFFFFFFFC000000) + 4 * (((*(a1 + 28680) >> 6) | (*(a1 + 28680) << 6)) & 0xFFF));
        v16 = v9 + (v43 << 29);
        v39 = v43 == 0;
        v11 = v65;
        if (v39 || v16 >= v65 || v9 == 0)
        {
          v16 = *(a1 + 28720);
        }

        if (v16 != v63)
        {
          v11 = v16 + 0x20000000;
        }

        v9 = v16;
      }

      v8 = v17;
      v5 = 0;
    }

    while (v16 != v17);
    if ((v59 & word_1ED404108) != 0)
    {
      return 0;
    }

    v46 = 0;
    v47 = lock;
    atomic_compare_exchange_strong_explicit(lock, &v46, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v46)
    {
      os_unfair_lock_lock_with_options();
    }

    v8 = *(a1 + 28728);
    if (v8 != v65)
    {
      v8 -= 0x4000000;
LABEL_110:
      v50 = 1;
      goto LABEL_112;
    }

    if ((v65 & 0x1FFFFFFF) == 0)
    {
      v50 = 0;
      v8 = 0;
      goto LABEL_112;
    }

    *(a1 + 28728) = v8 + 0x4000000;
    if ((*(v56 + 4) & 7) == 0)
    {
      goto LABEL_110;
    }

    v64 = ((*(a1 + 28680) >> 6) | (*(a1 + 28680) << 6)) & 0xFFF;
    v48 = v65 & 0xFFFFFFFFFC000000;
    *((*(a1 + 28688) ^ v65 & 0xFFFFFFFFFC000000) + ((v64 == 0) << 8)) = -2147481606;
    v66 = v8;
    if (mprotect((v8 + ((v64 == 0) << 14)), 0x4000uLL, 1))
    {
      malloc_report(3u, "Failed to create guard block at %p (%d)\n");
    }

    if (v64 == 4095)
    {
      v49 = 4094;
    }

    else
    {
      v49 = 4095;
    }

    *((*(a1 + 28688) ^ v48) + 4 * (((v49 & 0x3F) << 6) | 0x3F)) = -2147481606;
    v50 = 1;
    if (mprotect((v66 + (v49 << 14)), 0x4000uLL, 1))
    {
      malloc_report(3u, "Failed to create guard block at %p (%d)\n");
    }

    v47 = lock;
    v8 = v66;
LABEL_112:
    v52 = *(StatusReg + 24);
    v53 = v52;
    atomic_compare_exchange_strong_explicit(v47, &v53, 0, memory_order_release, memory_order_relaxed);
    if (v53 != v52)
    {
      v54 = v47;
      v55 = v8;
      os_unfair_lock_unlock(v54);
      v8 = v55;
    }

    v5 = 0;
    result = 0;
  }

  while ((v50 & 1) != 0);
  return result;
}

unint64_t nanov2_allocate_from_block(uint64_t a1, atomic_uint *a2, int a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = 16 * a3 + 16;
  while (1)
  {
    v6 = 0;
    if ((v4 & 0x80000000) == 0)
    {
      return v6;
    }

    v7 = v4 & 0x7FF;
    if (v7 == 2044)
    {
      return v6;
    }

    v8 = (v4 >> 11) & 0x3FF;
    v9 = (v4 + 2095104) & 0x1FF800 | (v4 + 0x200000) & 0x7FE00000;
    if (v7 != 2043 && v7 != 2045)
    {
      break;
    }

    if (v8)
    {
      v10 = 2043;
    }

    else
    {
      v10 = 2044;
    }

    v11 = v9 | v10 | 0x80000000;
    v12 = v4;
    atomic_compare_exchange_strong_explicit(a2, &v12, v11, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v4)
    {
      v15 = slots_by_size_class[a3] + ~v8;
      v16 = 1;
      goto LABEL_19;
    }

LABEL_17:
    v4 = v12;
    if ((v12 & 0x7FF) - 2045 < 3)
    {
      nanov2_madvise_block(a1, a2, a3, 2047);
      return 0;
    }
  }

  if (!v3)
  {
    v3 = a2 & 0xFFFFFFFFFC000000 | (((16 * a2) & 0xFC0 | (a2 >> 8) & 0x3F) << 14);
  }

  v15 = v7 - 1;
  v6 = v3 + v15 * v5;
  if (v8)
  {
    v13 = *(v6 + 8) & 0x7FF;
  }

  else
  {
    v13 = 2044;
  }

  v14 = v9 | v13 | 0x80000000;
  v12 = v4;
  atomic_compare_exchange_strong_explicit(a2, &v12, v14, memory_order_relaxed, memory_order_relaxed);
  if (v12 != v4)
  {
    goto LABEL_17;
  }

  if (v6)
  {
LABEL_25:
    if ((*(a1 + 28696) ^ *v6) != v6)
    {
      nanov2_guard_corruption_detected(v6);
    }

    return v6;
  }

  v16 = 0;
LABEL_19:
  if (v3)
  {
    v17 = v3;
  }

  else
  {
    v17 = a2 & 0xFFFFFFFFFC000000 | (((16 * a2) & 0xFC0 | (a2 >> 8) & 0x3F) << 14);
  }

  v6 = v17 + v15 * v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  return v6;
}

mach_vm_address_t nanov2_create_zone(uint64_t a1, int a2)
{
  if (_malloc_engaged_nano != 2)
  {
    purgeable_ptr_in_use_enumerator_cold_1(a1);
  }

  v4 = MEMORY[0x1E69E9AB8];
  based_pages = nano_common_allocate_based_pages(~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 29264), 0, 0, 1, 0);
  v6 = based_pages;
  if (!based_pages)
  {
    _malloc_engaged_nano = 0;
    return v6;
  }

  based_pages[26] = 16;
  *(based_pages + 2) = nanov2_size;
  if (malloc_zero_policy == 2)
  {
    v7 = nanov2_malloc_zero_on_alloc;
  }

  else
  {
    v7 = nanov2_malloc;
  }

  v8 = nanov2_malloc_type;
  if (malloc_zero_policy == 2)
  {
    v8 = nanov2_malloc_type_zero_on_alloc;
  }

  *(based_pages + 20) = v8;
  *(based_pages + 3) = v7;
  *(based_pages + 4) = nanov2_calloc;
  *(based_pages + 5) = nanov2_valloc;
  *(based_pages + 6) = nanov2_free;
  *(based_pages + 7) = nanov2_realloc;
  *(based_pages + 8) = nanov2_destroy;
  *(based_pages + 10) = nanov2_batch_malloc;
  *(based_pages + 11) = nanov2_batch_free;
  *(based_pages + 12) = nanov2_introspect;
  *(based_pages + 14) = nanov2_memalign;
  *(based_pages + 15) = nanov2_free_definite_size;
  *(based_pages + 16) = nanov2_pressure_relief;
  *(based_pages + 17) = nanov2_claimed_address;
  *(based_pages + 18) = nanov2_try_free_default;
  *(based_pages + 21) = nanov2_calloc_type;
  *(based_pages + 22) = nanov2_realloc_type;
  *(based_pages + 23) = nanov2_memalign_type;
  *based_pages = 0;
  *(based_pages + 1) = 0;
  mprotect(based_pages, 0xC8uLL, 1);
  *(v6 + 28676) = a2;
  *(v6 + 28704) = a1;
  v9 = unk_1ED40432A << 16;
  v10 = qword_1ED404330;
  v11 = qword_1ED404330 & 0xFFFFFFFF0000;
  if ((qword_1ED404330 & 0xFFFFFFFF0000) == 0)
  {
    v11 = 0xDEADDEAD0000;
  }

  if (!v9)
  {
    v9 = v11;
  }

  *(v6 + 28696) = v9;
  v12 = v10 >> 52;
  *(v6 + 28680) = v12;
  *(v6 + 28688) = v12 << 14;
  *(v6 + 28712) = 0;
  *(v6 + 28736) = 0;
  if (malloc_tracing_enabled != 1)
  {
    if (nano_common_allocate_vm_space(0x300000000uLL, 0x20000000uLL))
    {
      goto LABEL_14;
    }

LABEL_24:
    nano_common_deallocate_pages(v6, ~*v4 & (*v4 + 29264), 0);
    _malloc_engaged_nano = 0;
    malloc_report(5u, "nano zone abandoned due to inability to reserve vm space.\n");
    return 0;
  }

  if (!nanov2_create_zone_cold_2())
  {
    goto LABEL_24;
  }

LABEL_14:
  *((*(v6 + 28688) ^ 0x300000000) + 4 * (((*(v6 + 28680) >> 6) | (*(v6 + 28680) << 6)) & 0xFFF)) = 0;
  *(v6 + 28720) = 0x300000000;
  atomic_store(0x304000000uLL, (v6 + 28728));
  *(v6 + 28744) = 1;
  if ((*(v6 + 28676) & 7) != 0)
  {
    v13 = ((*(v6 + 28680) >> 6) | (*(v6 + 28680) << 6)) & 0xFFF;
    *((*(v6 + 28688) ^ 0x300000000) + ((v13 == 0) << 8)) = -2147481606;
    if (mprotect((((v13 == 0) << 14) | 0x300000000), 0x4000uLL, 1))
    {
      malloc_report(3u, "Failed to create guard block at %p (%d)\n");
    }

    if (v13 == 4095)
    {
      v14 = 4094;
    }

    else
    {
      v14 = 4095;
    }

    *((*(v6 + 28688) ^ 0x300000000) + 4 * (((v14 & 0x3F) << 6) | 0x3F)) = -2147481606;
    if (mprotect(((v14 << 14) + 0x300000000), 0x4000uLL, 1))
    {
      malloc_report(3u, "Failed to create guard block at %p (%d)\n");
    }
  }

  return v6;
}

void nanov2_destroy(mach_vm_address_t a1)
{
  (*(*(a1 + 28704) + 64))();
  v2 = *(a1 + 28676);
  v3 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 29264);

  nano_common_deallocate_pages(a1, v3, v2);
}

unint64_t nanov2_forked_free(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = nanov2_pointer_size(result, a2, 0);
    if (a2 >> 29 != 24 && !result)
    {
      v4 = *(*(v3 + 28704) + 48);

      return v4();
    }
  }

  return result;
}

uint64_t nanov2_forked_realloc(uint64_t a1, const void *a2, size_t a3)
{
  if (!a2)
  {
    v8 = *(*(a1 + 28704) + 24);
LABEL_14:

    return v8();
  }

  v6 = nanov2_pointer_size(a1, a2, 0);
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 28704) + 24);
    if (a3)
    {
      v9 = v8();
      v10 = v9;
      if (v9)
      {
        if (v7 >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = v7;
        }

        memcpy(v9, a2, v11);
      }

      return v10;
    }

    goto LABEL_14;
  }

  v13 = *(*(a1 + 28704) + 56);

  return v13();
}

uint64_t nanov2_forked_realloc_type(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = nanov2_pointer_size(a1, a2, 0);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 28704);
      if (a3)
      {
        v11 = (*(v10 + 160))(v10, a3, a4);
        v12 = v11;
        if (v11)
        {
          if (v9 >= a3)
          {
            v13 = a3;
          }

          else
          {
            v13 = v9;
          }

          memcpy(v11, a2, v13);
        }

        return v12;
      }

      else
      {
        v17 = *(v10 + 24);

        return v17();
      }
    }

    else
    {
      v16 = *(*(a1 + 28704) + 176);

      return v16();
    }
  }

  else
  {
    v15 = *(*(a1 + 28704) + 160);

    return v15();
  }
}

unint64_t nanov2_forked_batch_free(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result;
    v4 = 8 * a3;
    v5 = a2 - 8;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        result = nanov2_forked_free(v3, v6);
      }

      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t nanov2_forked_zone(void *a1)
{
  mprotect(a1, 0xC8uLL, 3);
  a1[2] = nanov2_size;
  a1[3] = nanov2_forked_malloc;
  a1[4] = nanov2_forked_calloc;
  a1[5] = nanov2_valloc;
  a1[6] = nanov2_forked_free;
  a1[7] = nanov2_forked_realloc;
  a1[8] = nanov2_destroy;
  a1[10] = nanov2_forked_batch_malloc;
  a1[11] = nanov2_forked_batch_free;
  a1[12] = nanov2_introspect;
  a1[14] = nanov2_forked_memalign;
  a1[15] = nanov2_forked_free_definite_size;
  a1[17] = nanov2_forked_claimed_address;
  a1[18] = 0;
  a1[20] = nanov2_forked_malloc_type;
  a1[21] = nanov2_forked_calloc_type;
  a1[22] = nanov2_forked_realloc_type;
  a1[23] = nanov2_forked_memalign_type;

  return mprotect(a1, 0xC8uLL, 1);
}

void *nanov2_allocate_outlined(uint64_t a1, atomic_uint **a2, uint64_t a3, unsigned int a4, unsigned int a5, atomic_uint *a6, uint64_t *a7, char a8, char a9)
{
  if (a7)
  {
    nanov2_guard_corruption_detected(a7);
  }

  if (a6)
  {
    nanov2_madvise_block(a1, a6, a4, 2047);
  }

  if (((1 << a4) & *(a1 + 28672)) != 0)
  {
    v15 = *(a1 + 28704);
    if (a9)
    {
      v16 = *(v15 + 160);
LABEL_7:
      v17 = v16();
      goto LABEL_19;
    }
  }

  else
  {
    v25 = a8;
    v18 = 0;
    v19 = (a1 + (a4 << 8) + 4 * a5 + 24576);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(v19, &v18, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v18)
    {
      os_unfair_lock_lock_with_options();
    }

    if (!*a2 || (v21 = nanov2_allocate_from_block(a1, *a2, a4)) == 0)
    {
      v21 = nanov2_find_block_and_allocate(a1, a4, a2);
    }

    v22 = *(StatusReg + 24);
    v23 = v22;
    atomic_compare_exchange_strong_explicit(v19, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != v22)
    {
      os_unfair_lock_unlock(v19);
    }

    a8 = v25;
    if (v21)
    {
      goto LABEL_20;
    }

    atomic_fetch_or_explicit((a1 + 28672), 1 << a4, memory_order_relaxed);
    v15 = *(a1 + 28704);
    if (a9)
    {
      v16 = *(v15 + 160);
      goto LABEL_7;
    }
  }

  v17 = (*(v15 + 24))(v15, a3);
LABEL_19:
  v21 = v17;
  if (!v17)
  {
    malloc_type_aligned_alloc_cold_1();
    return v21;
  }

LABEL_20:
  switch(malloc_zero_policy)
  {
    case 2:
LABEL_25:
      _platform_memset();
      return v21;
    case 1:
      if ((a8 & 1) == 0)
      {
        *v21 = 0;
        return v21;
      }

      goto LABEL_25;
    case 0:
      *v21 = 0;
      v21[1] = 0;
      break;
  }

  return v21;
}

void nanov2_guard_corruption_detected(uint64_t *a1)
{
  v1 = *a1;
  malloc_zone_error(256, 1, "Heap corruption detected, free list is damaged at %p\n*** Incorrect guard value: %llu\n");
  __break(1u);
}

uint64_t nanov2_ptr_in_use_enumerator(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  task = v1;
  v74[3659] = *MEMORY[0x1E69E9840];
  if (nanov2_config_predicate != -1)
  {
    nanov2_configure_cold_1();
  }

  if ((v9 & 3) == 0)
  {
    goto LABEL_69;
  }

  __src = 0;
  memset(v74, 0, 512);
  if (!v5)
  {
    if (task)
    {
      is_self = mach_task_is_self(task);
      if (!is_self)
      {
        purgeable_ptr_in_use_enumerator_cold_1(is_self);
      }
    }

    v5 = _malloc_default_reader_4;
  }

  result = v5(task, v7, 29264, &__src);
  if (result)
  {
    goto LABEL_70;
  }

  v14 = mach_task_is_self(task) && __src == v7;
  v15 = v14;
  v58 = v15;
  memcpy(v74, __src, 0x7250uLL);
  __src = v74;
  v16 = v74[3585];
  v17 = v74[3590];
  explicit = atomic_load_explicit(&v74[3591], memory_order_acquire);
  if (!v17)
  {
LABEL_69:
    result = 0;
    goto LABEL_70;
  }

  v19 = ((v16 >> 6) | (v16 << 6)) & 0xFFF;
  v51 = (explicit - 1) & 0xFFFFFFFFE0000000;
  v52 = explicit;
  v55 = v11;
  v20 = task;
  v57 = v3;
  v56 = v9;
  v53 = v5;
  while (1)
  {
    v70 = 0;
    result = v5(v20, v17, 0x20000000, &v70);
    if (result)
    {
      break;
    }

    v62 = v17 - v70;
    v21 = v17 + 0x20000000;
    if (v17 == v51)
    {
      v21 = explicit;
    }

    v68 = 0;
    v69 = 0;
    v54 = v17;
    v60 = v21;
    if (v17 < v21)
    {
      v63 = v17;
      v22 = v17;
      do
      {
        v23 = 0;
        v24 = ((*(__src + 3586) ^ v22 & 0xFFFFFFFFFC000000) - v62);
        v64 = v22;
        do
        {
          if (v23 != v19)
          {
            v25 = *v24;
            v26 = *v24 & 0x7FF;
            v27 = (v26 - 2042) > 5 || ((1 << (*v24 + 6)) & 0x31) == 0;
            if (v27 && v26 != 0)
            {
              v66 = v22 + ((((v23 & 0x3F) << 6) | (v23 >> 6)) << 14);
              if ((v9 & 2) != 0)
              {
                v68 = v22 + ((((v23 & 0x3F) << 6) | (v23 >> 6)) << 14);
                v69 = 0x4000;
                (v3)(v20, v11, 2, &v68, 1);
                v22 = v64;
              }

              if (v9)
              {
                v29 = ptr_offset_to_size_class[(*(__src + 7170) ^ (v66 >> 14) & 0xFC0) >> 6];
                v30 = 16 * v29 + 16;
                v31 = slots_by_size_class[v29];
                if ((v26 - 2043) > 1)
                {
                  v61 = ~(v25 >> 11) | 0xFFFFFC00;
                  v65 = slots_by_size_class[v29];
                  v37 = 64 - __clz(v31);
                  if (v58)
                  {
                    v38 = *(__src + 3588);
                    v39 = *(v38 + 32);
                    v40 = bitarray_size(v37);
                    v41 = v39(v38, 1, v40);
                  }

                  else
                  {
                    v41 = bitarray_create(v37);
                  }

                  v42 = v41;
                  v43 = 0;
                  if (v65 <= 1)
                  {
                    v44 = 1;
                  }

                  else
                  {
                    v44 = v65;
                  }

                  do
                  {
                    bitarray_set(v42, v37, v43++);
                  }

                  while (v44 != v43);
                  if (v26 == 2043)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = 0;
                    do
                    {
                      if (!v26)
                      {
                        break;
                      }

                      if (v26 > v65)
                      {
                        break;
                      }

                      if (!bitarray_get(v42, v37, v26 - 1))
                      {
                        break;
                      }

                      bitarray_zap(v42, v37, v26 - 1);
                      v26 = *(v66 - v62 + (v26 - 1) * v30 + 8);
                      ++v45;
                    }

                    while (v26 != 2043);
                  }

                  v67 = 0;
                  v46 = 0;
                  if (bitarray_zap_first_set(v42, v37, &v67))
                  {
                    v46 = 0;
                    v47 = v65 + v45 + v61;
                    v48 = v73;
                    do
                    {
                      if (v67 >= v47)
                      {
                        break;
                      }

                      *(v48 - 1) = v66 + (v67 * v30);
                      *v48 = v30;
                      ++v46;
                      v48 += 2;
                    }

                    while (bitarray_zap_first_set(v42, v37, &v67));
                  }

                  _free(v42);
                  LODWORD(v33) = v46;
                  v3 = v57;
                  v9 = v56;
                  v11 = v55;
                  v20 = task;
                }

                else
                {
                  if (v26 == 2043)
                  {
                    v32 = ~(v25 >> 11) | 0xFFFFFC00;
                  }

                  else
                  {
                    v32 = 0;
                  }

                  v33 = v31 + v32;
                  if (v33 >= 1)
                  {
                    v34 = v63 + (((v23 >> 6) + ((v23 & 0x3F) << 6)) << 14);
                    v35 = v33;
                    v36 = v73;
                    do
                    {
                      *(v36 - 1) = v34;
                      *v36 = v30;
                      v36 += 2;
                      v34 += v30;
                      --v35;
                    }

                    while (v35);
                  }
                }

                if (v33)
                {
                  v3(v20, v11, 1, v72);
                }

                v22 = v64;
              }
            }
          }

          ++v23;
          ++v24;
        }

        while (v23 != 4096);
        v22 += 0x4000000;
        v63 += 0x4000000;
      }

      while (v22 < v60);
    }

    v5 = v53;
    v49 = (*(__src + 3586) ^ v54 & 0xFFFFFFFFFC000000) - v62;
    v17 = v54 + (*(v49 + (((*(__src + 7170) << 8) | (*(__src + 7170) >> 4)) & 0x3FFC)) << 29);
    explicit = v52;
    if (!*(v49 + (((*(__src + 7170) << 8) | (*(__src + 7170) >> 4)) & 0x3FFC)))
    {
      goto LABEL_69;
    }
  }

LABEL_70:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nanov2_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x100)
  {
    return (*(*(*(a1 + 28704) + 96) + 8))();
  }

  if (a2 <= 0x10)
  {
    return 16;
  }

  return (a2 + 15) & 0x3F0;
}

uint64_t nanov2_print(uint64_t a1, unsigned int a2, const void *a3, uint64_t (*a4)(task_name_t a1, uint64_t a2, uint64_t a3, uint64_t *a4), void (*a5)(const char *, ...))
{
  v72 = *MEMORY[0x1E69E9840];
  if (nanov2_config_predicate != -1)
  {
    nanov2_configure_cold_1();
  }

  v70 = 0;
  if (a4(a1, a3, 29264, &v70))
  {
    v9 = "Failed to map nanozonev2_s at %p\n";
LABEL_5:
    result = (a5)(v9);
    goto LABEL_6;
  }

  v68 = 0u;
  v69 = 0u;
  v56 = a1;
  nanov2_statistics(a1, a3, a4, a5, &v68);
  a5("Nanozonev2 %p: blocks in use: %llu, size in use: %llu allocated size: %llu, allocated regions: %d, region holes: %d\n", a3, v68, *(&v68 + 1), *(&v69 + 1), *(v70 + 28744), *(v70 + 28748));
  a5("Current Allocation Blocks By Size Class/Context [CPU]\n");
  v12 = 0;
  v13 = 0x4000;
  do
  {
    a5("  Class %d: ", v12);
    for (i = 0; i != 64; ++i)
    {
      v15 = *(v70 + v13 + 8 * i);
      if (v15)
      {
        a5("%d: %p; ", i, v15);
      }
    }

    result = (a5)("\n");
    ++v12;
    v13 += 512;
  }

  while (v12 != 16);
  v16 = *(v70 + 28680);
  v17 = *(v70 + 28720);
  explicit = atomic_load_explicit((v70 + 28728), memory_order_acquire);
  if (v17)
  {
    v19 = 0;
    v53 = (explicit - 1) & 0xFFFFFFFFE0000000;
    v54 = explicit;
    v20 = 4 * (((v16 >> 6) | (v16 << 6)) & 0xFFF);
    v63 = a5;
    v64 = ((v16 >> 6) | (v16 << 6)) & 0xFFF;
    v55 = a4;
    while (1)
    {
      a5("\nRegion %d: base address %p\n", v19, v17);
      v67 = 0;
      result = a4(v56, v17, 0x20000000, &v67);
      if (result)
      {
        break;
      }

      v57 = v19;
      v58 = v17;
      v61 = v67 - v17;
      v21 = v17 + 0x20000000;
      if (v17 == v53)
      {
        v21 = explicit;
      }

      v60 = v21;
      if (v17 < v21)
      {
        v22 = 0;
        v23 = v17;
        do
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (*(v70 + 28688) ^ v23 & 0xFFFFFFFFFC000000);
          v31 = &v30[v61];
          do
          {
            if (v20 != v24)
            {
              v32 = *&v31[v24] & 0x7FF;
              if (v32 > 0x7FD)
              {
                if (v32 == 2046)
                {
                  ++v25;
                }

                else
                {
                  ++v26;
                }
              }

              else if (v32)
              {
                if (v32 == 2045)
                {
                  ++v28;
                }

                else
                {
                  ++v29;
                }
              }

              else
              {
                ++v27;
              }
            }

            v24 += 4;
          }

          while (v24 != 0x4000);
          v66 = v23;
          a5("Arena #%d: base address %p. Blocks - active: %d, madvisable: %d, madvising: %d, madvised: %d, unused: %d\n", v22, v23, v29, v28, v25, v26, v27);
          v33 = 0;
          memset(v71, 0, sizeof(v71));
          v34 = &v30[v61];
          v35 = v70;
          do
          {
            if (v64 << 6 != v33 && (*v34 & 0x7FFu) - 2045 >= 3 && (*v34 & 0x7FF) != 0)
            {
              v37 = ptr_offset_to_size_class[(v33 & 0xFC0 ^ *(v35 + 28680)) >> 6];
              ++*(v71 + v37);
            }

            v33 += 64;
            v34 += 4;
          }

          while (v33 != 0x40000);
          a5("Size classes with allocated blocks: ");
          for (j = 0; j != 16; ++j)
          {
            if (*(v71 + j))
            {
              a5("%d ", j);
            }
          }

          v62 = v22;
          result = (a5)("\n");
          v39 = v64;
          v40 = v66;
          if (a2 >= 2)
          {
            v41 = 0;
            for (k = 0; k != 4096; ++k)
            {
              if (v39 != k)
              {
                v43 = *&v31[4 * k];
                v44 = v43 & 0x7FF;
                v45 = (v44 - 2042) > 5 || ((1 << (v43 + 6)) & 0x31) == 0;
                if (v45 && v44 != 0)
                {
                  v65 = v44 != 2044 && v44 != 2045;
                  v47 = ptr_offset_to_size_class[(v41 & 0xFC0 ^ *(v70 + 28680)) >> 6];
                  a5 = v63;
                  v63("    Block %d: base %p; metadata: %p, size %d (class %d) in-use: %d ", k, (v40 + ((v41 & 0xFC0 | (k >> 6)) << 14)), v30, 16 * v47 + 16, ptr_offset_to_size_class[(v41 & 0xFC0 ^ *(v70 + 28680)) >> 6], v43 >> 31);
                  if (v65)
                  {
                    v48 = slots_by_size_class[v47];
                    if (v44 == 2043)
                    {
                      v49 = "BUMP (free list empty)";
                    }

                    else
                    {
                      v49 = "next_slot (1-based) = %d";
                    }

                    a5 = v63;
                    v63(v49);
                    v50 = ", allocated slots: %d, free slots = %d, occupancy: %d%%\n";
                  }

                  else
                  {
                    v50 = "%s\n";
                  }

                  result = (a5)(v50);
                  v39 = v64;
                  v40 = v66;
                }
              }

              v30 += 4;
              v41 += 64;
            }
          }

          v23 = v40 + 0x4000000;
          v22 = v62 + 1;
        }

        while (v23 < v60);
      }

      v51 = *((*(v70 + 28688) ^ v58 & 0xFFFFFFFFFC000000) + v61 + (((*(v70 + 28680) << 8) | (*(v70 + 28680) >> 4)) & 0x3FFC));
      explicit = v54;
      a4 = v55;
      if (v58 + (v51 << 29) >= v54)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v58 + (v51 << 29));
      }

      v19 = v57 + 1;
      if (*((*(v70 + 28688) ^ v58 & 0xFFFFFFFFFC000000) + v61 + (((*(v70 + 28680) << 8) | (*(v70 + 28680) >> 4)) & 0x3FFC)))
      {
        v52 = v17 == 0;
      }

      else
      {
        v52 = 1;
      }

      if (v52)
      {
        goto LABEL_6;
      }
    }

    v9 = "Failed to map nanov2 region at %p\n";
    goto LABEL_5;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nanov2_statistics(uint64_t task, const void *a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void (*a4)(const char *, ...), uint64_t a5)
{
  v6 = a3;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = nanov2_null_printer;
  }

  if (!a3)
  {
    if (task)
    {
      is_self = mach_task_is_self(task);
      if (!is_self)
      {
        purgeable_ptr_in_use_enumerator_cold_1(is_self);
      }
    }

    v6 = _malloc_default_reader_4;
  }

  if (nanov2_config_predicate != -1)
  {
    nanov2_configure_cold_1();
  }

  _platform_memset();
  v32 = 0;
  v11 = v6(task, a2, 29264, &v32);
  if (!v11)
  {
    v13 = v32[3585];
    explicit = atomic_load_explicit(v32 + 3591, memory_order_acquire);
    v15 = v32[3590];
    if (!v15)
    {
      return 0;
    }

    v16 = (((v13 >> 6) | (v13 << 6)) & 0xFFF) << 6;
    while (1)
    {
      v31 = 0;
      v17 = v6(task, v15, 0x20000000, &v31);
      if (v17)
      {
        v12 = v17;
        v9("Failed to map nanov2 region at %p\n", v15);
        return v12;
      }

      v18 = v31 - v15;
      v19 = (v15 == ((explicit - 1) & 0xFFFFFFFFE0000000) ? explicit : v15 + 0x20000000);
      v20 = v32;
      v21 = v32[3586];
      if (v15 < v19)
      {
        break;
      }

LABEL_33:
      v28 = *((v21 ^ v15 & 0xFFFFFFFFFC000000) + v18 + (((*(v20 + 7170) << 8) | (*(v20 + 7170) >> 4)) & 0x3FFC));
      if (v15 + (v28 << 29) >= explicit)
      {
        v15 = 0;
      }

      else
      {
        v15 += v28 << 29;
      }

      if (v28)
      {
        v29 = v15 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        return 0;
      }
    }

    v22 = v15;
LABEL_20:
    v23 = 0;
    v24 = ((v21 ^ v22 & 0xFFFFFFFFFC000000) + v18);
    while (1)
    {
      if (v16 != v23)
      {
        v25 = ptr_offset_to_size_class[(v23 & 0xFC0 ^ *(v20 + 7170)) >> 6];
        v26 = *v24 & 0x7FF;
        if (v26 > 0x7FC)
        {
          if (v26 - 2045 < 3)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (!v26 || v26 == 2042)
          {
            goto LABEL_31;
          }

          if (v26 == 2044)
          {
            v27 = slots_by_size_class[v25];
            if (!v27)
            {
              goto LABEL_31;
            }

LABEL_30:
            *a5 += v27;
            *(a5 + 8) += (v27 * (16 * v25 + 16));
            *(a5 + 24) += 0x4000;
            goto LABEL_31;
          }
        }

        v27 = slots_by_size_class[v25] + (~(*v24 >> 11) | 0xFFFFFC00);
        if (v27)
        {
          goto LABEL_30;
        }
      }

LABEL_31:
      v23 += 64;
      ++v24;
      if (v23 == 0x40000)
      {
        v22 += 0x4000000;
        if (v22 >= v19)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }
    }
  }

  v12 = v11;
  v9("Failed to map nanozonev2_s at %p\n", a2);
  return v12;
}

uint64_t nano_common_configure()
{
  if (nano_common_max_magazines)
  {
    v0 = nano_common_max_magazines;
  }

  else
  {
    v0 = phys_ncpus;
  }

  v1 = getenv("MallocNanoMaxMagazines");
  if (v1 || (v1 = getenv("_MallocNanoMaxMagazines")) != 0)
  {
    result = strtol(v1, 0, 0);
    v3 = 0;
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    malloc_report(3u, "MallocNanoMaxMagazines must be positive - ignored.\n");
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  result = v0;
LABEL_10:
  v4 = phys_ncpus;
  if (result)
  {
    if (result <= phys_ncpus)
    {
      goto LABEL_14;
    }

    malloc_report(3u, "Nano maximum magazines limited to number of physical CPUs [%d]\n");
  }

  result = v4;
LABEL_14:
  nano_common_max_magazines = result;
  if ((v3 & 1) == 0)
  {
    malloc_report(6u, "Nano maximum magazines set to %d\n");
    result = nano_common_max_magazines;
  }

  if (_os_cpu_number_override != -1 || result != phys_ncpus)
  {
    nano_common_max_magazines_is_ncpu = 0;
  }

  if (_malloc_engaged_nano == 2)
  {

    return nanov2_configure();
  }

  return result;
}

void nano_common_cpu_number_override_set()
{
  if (_os_cpu_number_override != -1 || nano_common_max_magazines != phys_ncpus)
  {
    nano_common_max_magazines_is_ncpu = 0;
  }
}

mach_vm_address_t nano_common_allocate_based_pages(mach_vm_size_t a1, char a2, __int16 a3, int a4, uint64_t a5)
{
  v6 = *MEMORY[0x1E69E9AC8];
  v7 = *MEMORY[0x1E69E9AC8] - 1;
  v8 = -*MEMORY[0x1E69E9AC8];
  if (((v7 + a1) & v8) != 0)
  {
    v9 = (v7 + a1) & v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9AC8];
  }

  if (v9 >= a1)
  {
    v10 = (v7 + a5) & v8;
    if (v10)
    {
      v6 = v10;
    }

    address = v6;
    v11 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, v9, ~(-1 << a2), (a4 << 24) | 1, 0, 0, 0, 3, 7, 1u);
    if (!v11)
    {
      return address;
    }

    if (v11 != 3)
    {
      malloc_zone_error(a3, 0, "*** can't allocate pages: mach_vm_map(size=%lu) failed (error code=%d)\n");
    }
  }

  return 0;
}

uint64_t _nano_common_map_vm_space(mach_vm_address_t a1, mach_vm_size_t size, vm_prot_t cur_protection)
{
  address = a1;
  v5 = MEMORY[0x1E69E9A60];
  v6 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, 0, 184549376, 0, 0, 0, cur_protection, 7, 1u);
  result = 0;
  if (!v6)
  {
    if (address == a1)
    {
      return 1;
    }

    else
    {
      mach_vm_deallocate(*v5, address, size);
      return 0;
    }
  }

  return result;
}

BOOL nano_common_unprotect_vm_space(mach_vm_address_t address, mach_vm_size_t size)
{
  v2 = mach_vm_protect(*MEMORY[0x1E69E9A60], address, size, 0, 3);
  if (v2)
  {
    malloc_report(3u, "mach_vm_protect ret: %d\n");
  }

  return v2 == 0;
}

void nano_common_deallocate_pages(mach_vm_address_t address, mach_vm_size_t size, __int16 a3)
{
  if (mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size))
  {
    malloc_zone_error(a3, 0, "Can't deallocate_pages at %p\n");
  }
}

uint64_t _xzm_type_choose_ptr_bucket(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = a1[1] + *a1 * a3;
    if (a2 == 4)
    {
      return HIDWORD(v3) & 3;
    }

    else if (a2 == 3)
    {
      LODWORD(v3) = HIDWORD(v3) % 3;
    }

    else
    {
      return HIDWORD(v3) & 1;
    }
  }

  return v3;
}

void _xzm_global_state_lock(uint64_t a1, int a2)
{
  if (*(a1 + 210) >= 2u)
  {
    v4 = 1;
    v5 = 24;
    do
    {
      _xzm_do_lock_action((*(a1 + 456) + v5), a2);
      ++v4;
      v5 += 16;
    }

    while (v4 < *(a1 + 210));
  }

  if (*(a1 + 413))
  {
    v6 = 0;
    v7 = 488;
    do
    {
      v8 = (*(a1 + 472) + v7);
      _xzm_do_lock_action(v8 - 120, a2);
      _xzm_do_lock_action(v8 - 121, a2);
      if (LOBYTE(v8[-122]._os_unfair_lock_opaque) == 1)
      {
        _xzm_do_lock_action(v8, a2);
      }

      ++v6;
      v7 += 496;
    }

    while (v6 < *(a1 + 413));
  }

  if (*(a1 + 410))
  {
    v9 = 0;
    v10 = 16;
    do
    {
      _xzm_do_lock_action((*(a1 + 464) + v10), a2);
      ++v9;
      v10 += 80;
    }

    while (v9 < *(a1 + 410));
  }

  _xzm_do_lock_action((a1 + 512), a2);
  if (*(a1 + 414))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      _xzm_do_lock_action((*(a1 + 480) + v11), a2);
      ++v12;
      v11 += 64;
    }

    while (v12 < *(a1 + 414));
  }

  _xzm_do_lock_action((a1 + 528), a2);
  _xzm_do_lock_action((a1 + 552), a2);
  v13 = *(a1 + 568);
  if (v13)
  {

    _xzm_do_lock_action(v13 + 3, a2);
  }
}

uint64_t xzm_ptr_lookup_4test(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  _X2 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v7 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v7 = 0x4000;
  }

  if (v7 >> 14)
  {
    return 0;
  }

  v8 = *(a1 + 240);
  if (!v8)
  {
    v8 = a1;
  }

  v9 = *(v8 + 488);
  if (!v9)
  {
    return 0;
  }

  v10 = (*(v9 + 4 * v7) & 0x7FFFFFFF) << 14;
  if (!v10)
  {
    return 0;
  }

  v11 = a2 - *(v10 + 40);
  if (*(v10 + 16) <= (v11 >> 14))
  {
    return 0;
  }

  v12 = v10 + 48 * (v11 >> 14) + 2104;
  if ((*(v12 + 32) & 0xF) == 4)
  {
    v29 = v12;
    v30 = v12 - *(v12 + 36);
    v31 = *(v30 + 32) & 0xF;
    if (v31 > 9)
    {
      v12 = v29;
      goto LABEL_10;
    }

    v32 = 1 << v31;
    if ((v32 & 0x3E8) != 0)
    {
      v12 = v29;
      if (v30 + 48 * *(v30 + 40) <= v29)
      {
        goto LABEL_10;
      }
    }

    else
    {
      _ZF = (v32 & 6) == 0;
      v12 = v29;
      if (_ZF || v29 != v30)
      {
        goto LABEL_10;
      }
    }

    v12 = v30;
  }

LABEL_10:
  v13 = *(v12 + 32) & 0xF;
  if (v13 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(*(v12 + 32) & 0xF);
  }

  if (((1 << v13) & 0x1E4) == 0 || *(v12 + 34) != *(a1 + 208))
  {
    return 0;
  }

  v14 = (v12 & 0xFFFFFFFFFFFFC000);
  v15 = _X2 - (((0xAAAAAAAAAAAAC000 * (((v12 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v12 & 0xFFFFFFFFFFFFC000) + 0x28));
  _ZF = v13 > 6 || ((1 << v13) & 0x64) == 0;
  if (_ZF)
  {
    v18 = *(v12 + 40) << 14;
    v17 = v15 % v18;
    if (v15 % v18)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 216) + 96 * *(v12 + 33);
    if ((*(v17 + 64) * v15) >= *(v17 + 64))
    {
      return 0;
    }

    v18 = *(v17 + 48);
  }

  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X2, [X2] }

    if (((_X2 ^ a2) & 0xF00000000000000) != 0)
    {
      return 0;
    }
  }

  if (v13 != 6)
  {
    if (v13 != 5)
    {
      if (v13 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    if (((*v12 >> (v15 / v18)) & 1) == 0)
    {
      goto LABEL_36;
    }

    return 0;
  }

LABEL_24:
  if (*(v12 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v23 = *_X2;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v23 = *_X2;
  }

  if (v13 == 6)
  {
    v26 = (*(a1 + 320) ^ _X2) & 0xF0FFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = *(a1 + 320) ^ _X2;
  }

  if (v23 == v26)
  {
    v39 = a3;
    v40 = v12;
    v37 = v12 & 0xFFFFFFFFFFFFC000;
    v38 = a5;
    v35 = v17;
    v36 = a4;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v12, _X2);
    v17 = v35;
    a4 = v36;
    v14 = v37;
    a5 = v38;
    a3 = v39;
    v12 = v40;
    if (is_free_slow)
    {
      return 0;
    }
  }

LABEL_36:
  v27 = *(v12 + 32) & 0xF;
  *a3 = v27;
  *a4 = **v14;
  result = 1;
  if (v27 <= 6 && ((1 << v27) & 0x64) != 0)
  {
    if (!v17)
    {
      xzm_ptr_lookup_4test_cold_1();
    }

    *a5 = *(v17 + 84);
  }

  return result;
}

uint64_t xzm_type_choose_ptr_bucket_4test(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = a1[1] + *a1 * a3;
    if (a2 == 4)
    {
      return HIDWORD(v3) & 3;
    }

    else if (a2 == 3)
    {
      LODWORD(v3) = HIDWORD(v3) % 3;
    }

    else
    {
      return HIDWORD(v3) & 1;
    }
  }

  return v3;
}

void _xzm_chunk_batch_list_push(os_unfair_lock_s *a1, atomic_ullong *a2, uint64_t a3, unint64_t a4)
{
  v7 = *a2;
  v8 = a3 & 0x7FFFFFFFFFFFLL;
  v9 = a3 & 0xFFFFFFFFFFFFC000 | 0x38;
  v10 = -1431655765 * (((a3 & 0x3FFF) - 2104) >> 4);
  do
  {
    while ((v7 & 0x8000000000000000) != 0)
    {
      _xzm_fork_lock_wait(a1);
      v7 = *a2;
    }

    v11 = v7 >> 57;
    v12 = (v7 + 0x200000000000000) & 0x7E00000000000000;
    if (v7 >> 57 >= a4)
    {
      v12 = 0x200000000000000;
    }

    v13 = (v7 + 0x800000000000) & 0x1FF800000000000 | v8 | v12;
    v14 = v7 & 0x7FFFFFFFFFFFLL;
    if (v7 >> 57 >= a4)
    {
      v15 = 0;
    }

    else
    {
      v15 = v7 & 0x7FFFFFFFFFFFLL;
    }

    *(v9 + 8 * v10) = v15;
    v16 = v7;
    atomic_compare_exchange_strong_explicit(a2, &v16, v13, memory_order_release, memory_order_relaxed);
    v17 = v16 == v7;
    v7 = v16;
  }

  while (!v17);
  if (v11 >= a4)
  {

    _xzm_xzone_madvise_batch(a1, a2, v14);
  }
}

unint64_t _xzm_xzone_chunk_memtag_init(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32) & 0xF;
  if (v3 > 6)
  {
    if (v3 - 7 >= 2)
    {
      goto LABEL_13;
    }

    v4 = *(a2 + 40) << 14;
  }

  else
  {
    switch(v3)
    {
      case 2u:
        v4 = 0x4000;
        break;
      case 5u:
        v4 = 0x10000;
        break;
      case 6u:
        v4 = 0x20000;
        break;
      default:
LABEL_13:
        xzm_chunk_mark_free_cold_1(v3);
    }
  }

  v5 = *(a1 + 48);
  v6 = ((0xAAAAAAAAAAAAC000 * (((a2 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);

  return memtag_init_chunk(v6, v4, v5);
}

void _xzm_xzone_madvise_batch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 240);
  if (!v5)
  {
    v5 = a1;
  }

  v40 = *(v5 + 568);
  v6 = *(a3 + 32) & 0xF;
  v7 = *(v5 + 409);
  memset(v41, 0, 480);
  if (v6 == 2)
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  memset(&v41[30], 0, 32);
  v9 = v7 & v8;
  if ((v7 & v8) != 0)
  {
    v10 = 0;
    atomic_compare_exchange_strong_explicit((v40 + 12), &v10, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = v11 + 1;
    v14 = v3;
    while (1)
    {
      v11 = v13;
      *(v41 + v13 - 1) = v14;
      v15 = v14 & 0xFFFFFFFFFFFFC000 | 0x38;
      v16 = -1431655765 * (((v14 & 0x3FFF) - 2104) >> 4);
      v3 = *(v15 + 8 * v16);
      if (v9)
      {
        break;
      }

      xzm_segment_group_segment_madvise_chunk(*(v14 & 0xFFFFFFFFFFFFC000), v14);
      v13 = v11 + 1;
      v14 = v3;
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    v17 = *(v14 + 32) & 0xF;
    if (v17 > 6)
    {
      if (v17 - 7 >= 2)
      {
        goto LABEL_61;
      }

      v18 = *(v14 + 40) << 14;
    }

    else if (v17 != 2 && v17 != 5 && v17 != 6)
    {
LABEL_61:
      xzm_chunk_mark_free_cold_1(v17);
    }

    v19 = *((v14 & 0xFFFFFFFFFFFFC000) + 0x28);
    *(v15 + 8 * v16) = xzm_reclaim_mark_free_locked(v40);
    v20 = v12 & 1;
    v12 &= 1u;
  }

  while (v3);
  v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v22 = v21;
  atomic_compare_exchange_strong_explicit((v40 + 12), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != v21)
  {
    os_unfair_lock_unlock((v40 + 12));
  }

  if (v20)
  {
    v23 = *v40;
    mach_vm_reclaim_update_kernel_accounting();
  }

LABEL_26:
  if (v6 == 6)
  {
    goto LABEL_29;
  }

  if (v6 != 5)
  {
    if (v6 != 2)
    {
      _xzm_xzone_madvise_batch_cold_4(v6);
    }

LABEL_29:
    _xzm_xzone_freelist_chunks_mark_empty(a1, a2, v41, v11);
    goto LABEL_30;
  }

  v25 = *(a1 + 240);
  if (!v25)
  {
    v25 = a1;
  }

  v26 = *(v25 + 456) + 16 * *(a2 + 80);
  v27 = *(a2 + 87);
  if (v27)
  {
    v28 = 0;
    atomic_compare_exchange_strong_explicit((v26 + 8), &v28, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v28)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  if (v11)
  {
    v29 = v11;
    v30 = v41;
    do
    {
      v31 = *v30;
      *(*v30 + 34) = 0;
      if (v27)
      {
        v32 = *(v31 + 32);
        v33 = v32 & 0xF;
        if (v33 != 2 && v33 != 6)
        {
          if (v33 != 5)
          {
            _xzm_segment_group_segment_span_free_coalesce_cold_4(v33);
          }

          *(v31 + 4) = 0;
          *(v31 + 12) = 0;
          *v31 |= ~(-1 << *(a2 + 68));
        }

        *(v31 + 32) = v32 & 0xEF;
        v35 = *v26;
        *(v31 + 16) = *v26;
        if (v35)
        {
          *(v35 + 24) = v31 + 16;
        }

        *v26 = v31;
        *(v31 + 24) = v26;
        goto LABEL_54;
      }

      *(v31 + 33) = 0;
      v36 = *(v31 + 32) & 0xF;
      if (v36 != 6)
      {
        if (v36 == 5)
        {
          *(v31 + 12) = 0;
          goto LABEL_53;
        }

        if (v36 != 2)
        {
          _xzm_segment_group_segment_span_free_coalesce_cold_4(v36);
        }
      }

      *(v31 + 5) = 0;
LABEL_53:
      *v31 = 0;
      xzm_segment_group_free_chunk(*(v31 & 0xFFFFFFFFFFFFC000), v31, 0, 0);
LABEL_54:
      v30 = (v30 + 8);
      --v29;
    }

    while (v29);
  }

  if (v27)
  {
    v37 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v38 = v37;
    atomic_compare_exchange_strong_explicit((v26 + 8), &v38, 0, memory_order_release, memory_order_relaxed);
    if (v38 != v37)
    {
      os_unfair_lock_unlock((v26 + 8));
    }
  }

LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
}

void _xzm_free_abort(uint64_t a1)
{
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: free to empty or invalid chunk detected (likely double-free)";
  qword_1EAC7F670 = a1;
  __break(1u);
}

void _xzm_chunk_list_slot_push(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 85);
  if (v6 == 1)
  {
    v7 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
  }

  else if (v6 == 2)
  {
    LOBYTE(v7) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = (a3 + 16 * v7 * *(a1 + 210) + 16 * *(a2 + 80));
  v27 = 0;
  _xzm_chunk_list_push(a1, v8, a4, 0, &v27);
  v9 = v8[1];
  v10 = *(a1 + 248) & 3;
  if (HIBYTE(v9) != v10)
  {
    v11 = (v9 & 0xFFFFFF00000000) == 0 && v27 == 0;
    if (!v11)
    {
      v12 = 0x100000001;
      if (!v27)
      {
        v12 = 1;
      }

      v13 = atomic_fetch_add_explicit(v8 + 1, v12, memory_order_relaxed) + v12;
      v14 = HIBYTE(v13);
      if (HIBYTE(v13) != v10)
      {
        v15 = *(a1 + 4 * v14 + 272);
        if ((HIDWORD(v13) & 0xFFFFFFu) >= v15)
        {
          if ((HIDWORD(v13) & 0xFFFFFFu) <= v15)
          {
            v18 = ncpuclusters;
            if (v14)
            {
              v19 = 0;
            }

            else
            {
              v19 = ncpuclusters >= 2;
            }

            v20 = !v19;
            v21 = v20 == 0;
            if (v20)
            {
              v22 = 2;
            }

            else
            {
              v22 = 1;
            }

            *(a2 + 85) = v22;
            v23 = 0x100000000000000;
            if (!v21)
            {
              v23 = 0x200000000000000;
              v18 = logical_ncpus;
            }

            if (v18)
            {
              for (i = 0; i != v18; ++i)
              {
                *(*(a1 + 232) + 16 * i * *(a1 + 210) + 16 * *(a2 + 80) + 8) = v23;
              }
            }
          }
        }

        else
        {
          v16 = *(a1 + 284);
          if (v16 <= v13 && v16 >= v13)
          {
            v25 = v8[1];
            do
            {
              if (v25 < v13)
              {
                break;
              }

              if (v14 < HIBYTE(v25))
              {
                break;
              }

              v26 = v25;
              atomic_compare_exchange_strong_explicit(v8 + 1, &v26, v13 & 0xFF00000000000000, memory_order_relaxed, memory_order_relaxed);
              v11 = v26 == v25;
              v25 = v26;
            }

            while (!v11);
          }
        }
      }
    }
  }
}

void _xzm_xzone_batch_small_push(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(a2 + 24);
  if (*(a2 + 32) >= a4)
  {
    v7 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    v7 = *(a2 + 24);
    v6 = 0;
  }

  *((a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((a3 & 0x3FFF) - 2104) >> 4) + 0x38) = v7;
  *(a2 + 24) = a3;
  ++*(a2 + 32);
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit((a2 + 36), &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock((a2 + 36));
  }

  if (v6)
  {

    _xzm_xzone_madvise_batch(a1, a2, v6);
  }
}

void xzm_malloc_zone_destroy(mach_vm_address_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 344);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 344), &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v69 = 0;
    if (*(a1 + 210) >= 2u)
    {
      v5 = 1;
      do
      {
        v6 = *(a1 + 216) + 96 * v5;
        if (*(v6 + 48) <= 0x1000uLL || (*(a1 + 250) & 1) != 0)
        {
            ;
          }

          while (1)
          {
            v8 = _xzm_chunk_list_pop(a1, (v6 + 16), 1u, 0);
            if (!v8)
            {
              break;
            }

            if ((*(v8 + 32) & 0x40) != 0)
            {
              xzm_malloc_zone_destroy_cold_1();
            }

            *v8 &= 0xFFFFFFFFC03FFFFFLL;
            v7 = v69;
            *(v8 + 16) = v69;
            if (v7)
            {
              *(v7 + 24) = v8 + 16;
            }

            v69 = v8;
            *(v8 + 24) = &v69;
          }

          if (*(v6 + 48) <= 0x1000uLL)
          {
            v9 = 6;
          }

          else
          {
            v9 = 2;
          }

          v10 = _xzm_chunk_list_pop(a1, (v6 + 24), 0, 0);
          if (v10)
          {
            v11 = v10;
            do
            {
              _xzm_xzone_fresh_chunk_init(v6, v11, v9);
              v12 = v69;
              *(v11 + 16) = v69;
              if (v12)
              {
                *(v12 + 24) = v11 + 16;
              }

              v69 = v11;
              *(v11 + 24) = &v69;
              v11 = _xzm_chunk_list_pop(a1, (v6 + 24), 0, 0);
            }

            while (v11);
          }
        }

        else
        {
          v13 = *(v6 + 24);
          if (v13)
          {
            v14 = v69;
            do
            {
              v15 = v13;
              *(v13 + 16) = v14;
              v16 = v13 + 16;
              if (v14)
              {
                *(v14 + 24) = v16;
              }

              v69 = v15;
              *(v15 + 24) = &v69;
              v13 = *((v15 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v15 & 0x3FFF) - 2104) >> 4) + 0x38);
              *((v15 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v15 & 0x3FFF) - 2104) >> 4) + 0x38) = -1;
              v14 = v15;
            }

            while (v13);
          }

          v17 = *v6;
          if (*v6)
          {
            do
            {
              v18 = *(v17 + 16);
              v20 = *(v17 + 24);
              v19 = (v17 + 16);
              if (v18)
              {
                *(v18 + 24) = v20;
                v21 = *v19;
              }

              else
              {
                v21 = 0;
              }

              *v20 = v21;
              v22 = v69;
              *v19 = v69;
              if (v22)
              {
                *(v22 + 24) = v19;
              }

              v69 = v17;
              *(v17 + 24) = &v69;
              v17 = v18;
            }

            while (v18);
          }

          v23 = *(v6 + 8);
          if (v23)
          {
            do
            {
              v24 = *(v23 + 16);
              v26 = *(v23 + 24);
              v25 = (v23 + 16);
              if (v24)
              {
                *(v24 + 24) = v26;
                v27 = *v25;
              }

              else
              {
                v27 = 0;
              }

              *v26 = v27;
              v28 = v69;
              *v25 = v69;
              if (v28)
              {
                *(v28 + 24) = v25;
              }

              v69 = v23;
              *(v23 + 24) = &v69;
              v23 = v24;
            }

            while (v24);
          }

          v29 = *(a1 + 211);
          if (v29)
          {
            for (i = 0; i < v29; ++i)
            {
              v31 = (*(a1 + 224) + 32 * i * *(a1 + 210) + 32 * *(v6 + 80));
              v32 = *v31;
              if (*v31)
              {
                *v31 = 0;
                v33 = v69;
                *(v32 + 16) = v69;
                if (v33)
                {
                  *(v33 + 24) = v32 + 16;
                }

                v69 = v32;
                *(v32 + 24) = &v69;
                v29 = *(a1 + 211);
              }
            }
          }

          v34 = *(v6 + 16);
          if (v34)
          {
            do
            {
              v36 = *(v34 + 16);
              v35 = *(v34 + 24);
              v37 = (v34 + 16);
              if (v36)
              {
                *(v36 + 24) = v35;
                v38 = *v37;
              }

              else
              {
                v38 = 0;
              }

              *v35 = v38;
              _xzm_xzone_fresh_chunk_init(v6, v34, 5);
              v39 = v69;
              *(v34 + 16) = v69;
              if (v39)
              {
                *(v39 + 24) = v37;
              }

              v69 = v34;
              *(v34 + 24) = &v69;
              v34 = v36;
            }

            while (v36);
          }
        }

        ++v5;
      }

      while (v5 < *(a1 + 210));
    }

    v40 = *(StatusReg + 24);
    v41 = v40;
    atomic_compare_exchange_strong_explicit(v4, &v41, 0, memory_order_release, memory_order_relaxed);
    if (v41 != v40)
    {
      os_unfair_lock_unlock(v4);
    }

    v42 = v69;
    if (v69)
    {
      while (1)
      {
        v43 = *(v42 + 16);
        v44 = *(a1 + 216) + 96 * *(v42 + 33);
        if ((*(v44 + 87) & 1) == 0)
        {
          v45 = (*(v42 + 32) & 0xF) - 2;
          if (v45 >= 7 || ((0x79u >> v45) & 1) == 0)
          {
            _xzm_xzone_chunk_free_cold_2();
          }

          if (((0x10100404080808uLL >> (8 * (v45 & 0x1F))) & *(v1 + 409)) != 0)
          {
            v46 = v42 & 0xFFFFFFFFFFFFC000 | 0x38;
            v47 = -1431655765 * (((v42 & 0x3FFF) - 2104) >> 4);
            if (*(v46 + 8 * v47) != -1)
            {
              v48 = 11;
              while (!xzm_chunk_mark_used(a1, v42, 0))
              {
                xzm_reclaim_force_sync(*(v1 + 568));
                if (!--v48)
                {
                  xzm_malloc_zone_destroy_cold_3();
                }

                if (*(v46 + 8 * v47) == -1)
                {
                  goto LABEL_72;
                }
              }

              *v42 = *v42 & 0xFFFFFFFFFFFFF800 | 0x400;
            }
          }
        }

LABEL_72:
        v49 = *(v42 + 32);
        v50 = v49 & 0xF;
        if (v50 == 6)
        {
          goto LABEL_75;
        }

        if (v50 != 5)
        {
          break;
        }

        v52 = v49 & 0xD5;
        v53 = 1;
LABEL_89:
        *(v42 + 32) = v52;
        _xzm_xzone_chunk_free(a1, *(a1 + 216) + 96 * *(v42 + 33), v42, v53);
        v42 = v43;
        if (!v43)
        {
          goto LABEL_90;
        }
      }

      if (v50 != 2)
      {
        _xzm_xzone_madvise_batch_cold_4(v50);
      }

LABEL_75:
      if ((*v42 & 0x7FFLL) != 0x7FE)
      {
        switch(v50)
        {
          case 2:
            v51 = 0x4000;
            break;
          case 6:
            v51 = 0x20000;
            break;
          case 5:
            v51 = 0x10000;
            break;
          default:
            xzm_chunk_mark_free_cold_1(v50);
        }

        if (*(v44 + 48) <= 0x400uLL)
        {
          v54 = *((v42 & 0xFFFFFFFFFFFFC000) + 0x28);
          v55 = (0xAAAAAAAAAAAAC000 * (((v42 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000;
          if ((*(v44 + 87) & 2) != 0)
          {
            __asm { MSR             TCO, #1 }

            bzero((v55 + v54), v51);
            __asm { MSR             TCO, #0 }
          }

          else
          {
            bzero((v55 + v54), v51);
          }
        }

        xzm_segment_group_segment_madvise_chunk(*(v42 & 0xFFFFFFFFFFFFC000), v42);
        *v42 = *v42 & 0xFFFFFFFFFFC00000 | 0x7FE;
        v49 = *(v42 + 32);
      }

      v53 = 0;
      v52 = v49 & 0xDF;
      goto LABEL_89;
    }

LABEL_90:
    v62 = *(a1 + 352);
    if (v62)
    {
      do
      {
        v63 = *(v62 + 16);
        _xzm_free_large_huge(a1, v62);
        v62 = v63;
      }

      while (v63);
    }

    v64 = xzm_metapool_alloc(*(v1 + 480) + 128);
    v65 = 0;
    *v64 = *(a1 + 208);
    atomic_compare_exchange_strong_explicit((v1 + 528), &v65, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v65)
    {
      os_unfair_lock_lock_with_options();
    }

    *(v64 + 1) = *(v1 + 520);
    *(v1 + 520) = v64;
    v66 = *(StatusReg + 24);
    v67 = v66;
    atomic_compare_exchange_strong_explicit((v1 + 528), &v67, 0, memory_order_release, memory_order_relaxed);
    if (v67 != v66)
    {
      os_unfair_lock_unlock((v1 + 528));
    }

    mvm_deallocate_plat(a1, *(a1 + 200), 0);
  }
}

uint64_t xzm_malloc_zone_valloc_slow(uint64_t a1, unint64_t a2, int8x8_t a3)
{
  v3 = a1;
  if (a2 <= 0x8000 && (*(a1 + 360) & 0x80) != 0 && *(a1 + 240))
  {
    a1 = *(a1 + 240);
  }

  _xzm_memalign(a1, *MEMORY[0x1E69E9AC8], a2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904), 0, a3);
  v5 = v4;
  if (v4 && (*(v3 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v5;
}

void xzm_malloc_zone_free_definite_size_slow(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return;
  }

  _X22 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v7 = 0x4000;
  }

  else
  {
    v7 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  if (v7 >> 14)
  {
    goto LABEL_30;
  }

  v8 = *(a1 + 240);
  if (!v8)
  {
    v8 = a1;
  }

  v9 = *(v8 + 488);
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = (*(v9 + 4 * v7) & 0x7FFFFFFF) << 14;
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = a2 - *(v10 + 40);
  if (*(v10 + 16) <= (v11 >> 14))
  {
    goto LABEL_30;
  }

  v12 = v11 >> 14;
  v13 = v10 + 48 * v12 + 2104;
  if ((*(v10 + 48 * v12 + 2136) & 0xF) == 4)
  {
    v44 = v10 + 48 * v12 + 2104 - *(v10 + 48 * v12 + 2140);
    v45 = *(v44 + 32) & 0xF;
    if (v45 <= 9)
    {
      v46 = 1 << v45;
      if ((v46 & 0x3E8) != 0)
      {
        if (v44 + 48 * *(v44 + 40) <= v13)
        {
          goto LABEL_12;
        }

LABEL_96:
        v13 -= *(v13 + 36);
        goto LABEL_12;
      }

      if ((v46 & 6) != 0)
      {
        v47 = v13 == v44;
        *(v13 + 36);
      }

      else
      {
        v47 = 0;
      }

      if (v47)
      {
        goto LABEL_96;
      }
    }
  }

LABEL_12:
  v14 = *(v13 + 32) & 0xF;
  if (v14 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v14);
  }

  if (((1 << v14) & 0x1E4) == 0 || *(v13 + 34) != *(a1 + 208))
  {
    goto LABEL_30;
  }

  v15 = _X22 - (((0xAAAAAAAAAAAAC000 * (((v13 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v13 & 0xFFFFFFFFFFFFC000) + 0x28));
  if (v14 > 6 || ((1 << v14) & 0x64) == 0)
  {
    v18 = *(v13 + 40) << 14;
    if (v15 % v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v17 = *(a1 + 216) + 96 * *(v13 + 33);
    if ((*(v17 + 64) * v15) >= *(v17 + 64))
    {
      goto LABEL_30;
    }

    v18 = *(v17 + 48);
  }

  _X8 = _X22;
  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X8, [X22] }

    if (((_X8 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_30;
    }
  }

  if (v14 != 6)
  {
    if (v14 != 5)
    {
      if (v14 != 2)
      {
        goto LABEL_75;
      }

      goto LABEL_26;
    }

    if (((*v13 >> (v15 / v18)) & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_30:
    v18 = _xzm_ptr_size_outlined(a1, a2);
    goto LABEL_31;
  }

LABEL_26:
  if (*(v13 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v24 = *_X8;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v24 = *_X8;
  }

  v42 = *(a1 + 320) ^ _X8;
  if (v14 == 6)
  {
    v42 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v24 == v42)
  {
    v53 = _X8;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v13, _X8);
    _X8 = v53;
    if (is_free_slow)
    {
      goto LABEL_30;
    }
  }

LABEL_75:
  if (_X8 != a2)
  {
    v18 = v18 - a2 + _X8;
  }

LABEL_31:
  if (v18 || (*(a1 + 360) & 0x80) == 0)
  {
    v26 = 0;
    goto LABEL_34;
  }

  if (*(a1 + 240))
  {
    v26 = *(a1 + 240);
  }

  else
  {
    v26 = a1;
  }

  if (v7 >> 14)
  {
    goto LABEL_78;
  }

  v28 = *(v26 + 240);
  if (!v28)
  {
    v28 = v26;
  }

  v29 = *(v28 + 488);
  if (!v29)
  {
    goto LABEL_78;
  }

  v30 = (*(v29 + 4 * v7) & 0x7FFFFFFF) << 14;
  if (!v30)
  {
    goto LABEL_78;
  }

  v31 = a2 - *(v30 + 40);
  if (*(v30 + 16) <= (v31 >> 14))
  {
    goto LABEL_78;
  }

  v32 = v31 >> 14;
  v33 = v30 + 48 * v32 + 2104;
  if ((*(v30 + 48 * v32 + 2136) & 0xF) == 4)
  {
    v49 = v30 + 48 * v32 + 2104 - *(v30 + 48 * v32 + 2140);
    v50 = *(v49 + 32) & 0xF;
    if (v50 <= 9)
    {
      v51 = 1 << v50;
      if ((v51 & 0x3E8) != 0)
      {
        if (v49 + 48 * *(v49 + 40) <= v33)
        {
          goto LABEL_53;
        }

LABEL_108:
        v33 -= *(v33 + 36);
        goto LABEL_53;
      }

      if ((v51 & 6) != 0)
      {
        v52 = v33 == v49;
        *(v33 + 36);
      }

      else
      {
        v52 = 0;
      }

      if (v52)
      {
        goto LABEL_108;
      }
    }
  }

LABEL_53:
  v34 = *(v33 + 32) & 0xF;
  if (v34 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v34);
  }

  if (((1 << v34) & 0x1E4) == 0 || *(v33 + 34) != *(v26 + 208))
  {
    goto LABEL_78;
  }

  v35 = _X22 - (((0xAAAAAAAAAAAAC000 * (((v33 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v33 & 0xFFFFFFFFFFFFC000) + 0x28));
  if (v34 > 6 || ((1 << v34) & 0x64) == 0)
  {
    v38 = *(v33 + 40) << 14;
    if (v35 % v38)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v37 = *(v26 + 216) + 96 * *(v33 + 33);
    if ((*(v37 + 64) * v35) >= *(v37 + 64))
    {
      goto LABEL_78;
    }

    v38 = *(v37 + 48);
  }

  if (*(v26 + 368) == 1)
  {
    __asm { LDG             X22, [X22] }

    if (((_X22 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_78;
    }
  }

  if (v34 == 6)
  {
LABEL_67:
    if (*(v33 + 12) == 1)
    {
      __asm { MSR             TCO, #1 }

      v40 = *_X22;
      __asm { MSR             TCO, #0 }
    }

    else
    {
      v40 = *_X22;
    }

    v43 = *(v26 + 320) ^ _X22;
    if (v34 == 6)
    {
      v43 &= 0xF0FFFFFFFFFFFFFFLL;
    }

    if (v40 != v43 || !_xzm_xzone_freelist_chunk_block_is_free_slow(v26, v33, _X22))
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

  if (v34 != 5)
  {
    if (v34 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  if ((*v33 >> (v35 / v38)))
  {
LABEL_78:
    _xzm_ptr_size_outlined(v26, a2);
  }

LABEL_34:
  if (a3 >= 0x401 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = a1;
  }

  _xzm_free(v27, a2, 0);
}

void xzm_malloc_zone_try_free_default_slow(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  _X21 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  if (v5 >> 14)
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 240);
  if (!v6)
  {
    v6 = a1;
  }

  v7 = *(v6 + 488);
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = (*(v7 + 4 * v5) & 0x7FFFFFFF) << 14;
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = a2 - *(v8 + 40);
  if (*(v8 + 16) <= (v9 >> 14))
  {
    goto LABEL_30;
  }

  v10 = v9 >> 14;
  v11 = v8 + 48 * v10 + 2104;
  if ((*(v8 + 48 * v10 + 2136) & 0xF) == 4)
  {
    v41 = v8 + 48 * v10 + 2104 - *(v8 + 48 * v10 + 2140);
    v42 = *(v41 + 32) & 0xF;
    if (v42 <= 9)
    {
      v43 = 1 << v42;
      if ((v43 & 0x3E8) != 0)
      {
        if (v41 + 48 * *(v41 + 40) <= v11)
        {
          goto LABEL_12;
        }

LABEL_100:
        v11 -= *(v11 + 36);
        goto LABEL_12;
      }

      if ((v43 & 6) != 0)
      {
        v44 = v11 == v41;
        *(v11 + 36);
      }

      else
      {
        v44 = 0;
      }

      if (v44)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_12:
  v12 = *(v11 + 32) & 0xF;
  if (v12 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v12);
  }

  if (((1 << v12) & 0x1E4) == 0 || *(v11 + 34) != *(a1 + 208))
  {
    goto LABEL_30;
  }

  v13 = _X21 - *((v11 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v11 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v12 > 6 || ((1 << v12) & 0x64) == 0)
  {
    v16 = *(v11 + 40) << 14;
    if (v13 % v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v15 = *(a1 + 216) + 96 * *(v11 + 33);
    if ((*(v15 + 64) * v13) >= *(v15 + 64))
    {
      goto LABEL_30;
    }

    v16 = *(v15 + 48);
  }

  _X22 = _X21;
  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X22, [X21] }

    if (((_X22 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_30;
    }
  }

  if (v12 != 6)
  {
    if (v12 != 5)
    {
      if (v12 != 2)
      {
        goto LABEL_75;
      }

      goto LABEL_26;
    }

    if (((*v11 >> (v13 / v16)) & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_30:
    v16 = _xzm_ptr_size_outlined(a1, a2);
    goto LABEL_31;
  }

LABEL_26:
  if (*(v11 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v22 = *_X22;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v22 = *_X22;
  }

  v39 = *(a1 + 320) ^ _X22;
  if (v12 == 6)
  {
    v39 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v22 == v39)
  {
    v52 = v16;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v11, _X22);
    v16 = v52;
    if (is_free_slow)
    {
      goto LABEL_30;
    }
  }

LABEL_75:
  if (_X22 != a2)
  {
    v16 = v16 - a2 + _X22;
  }

LABEL_31:
  if (v16)
  {
    v24 = 0;
    goto LABEL_33;
  }

  if ((*(a1 + 360) & 0x80) != 0)
  {
    if (*(a1 + 240))
    {
      v24 = *(a1 + 240);
    }

    else
    {
      v24 = a1;
    }

    if (v5 >> 14)
    {
      goto LABEL_78;
    }

    v26 = *(v24 + 240);
    if (!v26)
    {
      v26 = v24;
    }

    v27 = *(v26 + 488);
    if (!v27)
    {
      goto LABEL_78;
    }

    v28 = (*(v27 + 4 * v5) & 0x7FFFFFFF) << 14;
    if (!v28)
    {
      goto LABEL_78;
    }

    v29 = a2 - *(v28 + 40);
    if (*(v28 + 16) <= (v29 >> 14))
    {
      goto LABEL_78;
    }

    v30 = v29 >> 14;
    v31 = v28 + 48 * v30 + 2104;
    if ((*(v28 + 48 * v30 + 2136) & 0xF) == 4)
    {
      v46 = v28 + 48 * v30 + 2104 - *(v28 + 48 * v30 + 2140);
      v47 = *(v46 + 32) & 0xF;
      if (v47 <= 9)
      {
        v48 = 1 << v47;
        if ((v48 & 0x3E8) != 0)
        {
          if (v46 + 48 * *(v46 + 40) <= v31)
          {
            goto LABEL_49;
          }

LABEL_112:
          v31 -= *(v31 + 36);
          goto LABEL_49;
        }

        if ((v48 & 6) != 0)
        {
          v49 = v31 == v46;
          *(v31 + 36);
        }

        else
        {
          v49 = 0;
        }

        if (v49)
        {
          goto LABEL_112;
        }
      }
    }

LABEL_49:
    v32 = *(v31 + 32) & 0xF;
    if (v32 > 8)
    {
      _xzm_segment_group_segment_span_free_coalesce_cold_4(v32);
    }

    if (((1 << v32) & 0x1E4) == 0 || *(v31 + 34) != *(v24 + 208))
    {
      goto LABEL_78;
    }

    v33 = _X21 - *((v31 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v31 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
    if (v32 > 6 || ((1 << v32) & 0x64) == 0)
    {
      v16 = *(v31 + 40) << 14;
      if (v33 % v16)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v35 = *(v24 + 216) + 96 * *(v31 + 33);
      if ((*(v35 + 64) * v33) >= *(v35 + 64))
      {
        goto LABEL_78;
      }

      v16 = *(v35 + 48);
    }

    if (*(v24 + 368) != 1)
    {
      goto LABEL_60;
    }

    __asm { LDG             X21, [X21] }

    if (((_X21 ^ a2) & 0xF00000000000000) == 0)
    {
LABEL_60:
      if (v32 == 6)
      {
LABEL_63:
        if (*(v31 + 12) == 1)
        {
          __asm { MSR             TCO, #1 }

          v37 = *_X21;
          __asm { MSR             TCO, #0 }
        }

        else
        {
          v37 = *_X21;
        }

        v40 = *(v24 + 320) ^ _X21;
        if (v32 == 6)
        {
          v40 &= 0xF0FFFFFFFFFFFFFFLL;
        }

        if (v37 == v40)
        {
          v50 = v16;
          v51 = _xzm_xzone_freelist_chunk_block_is_free_slow(v24, v31, _X21);
          v16 = v50;
          if (v51)
          {
            goto LABEL_78;
          }
        }

LABEL_89:
        if (_X21 != a2)
        {
          v16 = v16 - a2 + _X21;
        }

LABEL_79:
        if (v16)
        {
LABEL_33:
          if (v16 >= 0x401 && (*(a1 + 360) & 0x20) != 0)
          {
            _platform_memset();
          }

          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = a1;
          }

          _xzm_free(v25, a2, 1);
          return;
        }

        goto LABEL_80;
      }

      if (v32 != 5)
      {
        if (v32 != 2)
        {
          goto LABEL_89;
        }

        goto LABEL_63;
      }

      if (((*v31 >> (v33 / v16)) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

LABEL_78:
    v16 = _xzm_ptr_size_outlined(v24, a2);
    goto LABEL_79;
  }

LABEL_80:

  find_zone_and_free(a2, 1u);
}

void xzm_malloc_zone_malloc_type_calloc_slow(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (a2 != 1)
  {
    if (!is_mul_ok(a2, a3) || (v5 = a2 * a3, a2 * a3 > malloc_absolute_max_size))
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
      return;
    }
  }

  v7 = (((malloc_get_thread_options() >> 3) & 1) << 30) | 1;
  if (v5 <= 0x8000 && (*(a1 + 360) & 0x80) != 0)
  {
    if (*(a1 + 240))
    {
      v9 = *(a1 + 240);
    }

    else
    {
      v9 = a1;
    }

    if (*(v9 + 240))
    {
      v10 = *(v9 + 240);
    }

    else
    {
      v10 = v9;
    }

    v11 = __clz(v5 - 1);
    v12 = (((v5 - 1) >> (61 - v11)) & 3) - 4 * v11 + 488;
    if (v5 <= 0x80)
    {
      v12 = (__PAIR128__(v5 >> 4, v5 & 0xF) - 1) >> 64;
    }

    if (!v5)
    {
      LOBYTE(v12) = 0;
    }

    v13 = v12;
    v14 = *(v10[56] + v12);
    if (HIWORD(a4) == 256)
    {
      v15 = 0;
    }

    else if ((a4 & 0xC0000000000) == 0x40000000000)
    {
      v15 = 1;
    }

    else
    {
      v22 = *(v10[55] + v13);
      if ((v22 & 0xFE) == 2)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        v26 = dword_1ED40432C;
        if (a4)
        {
          v26 = a4;
        }

        v23 = v10[50] + v26 * v10[49];
        if (v22 == 6)
        {
          v23 = HIDWORD(v23) & 3;
        }

        else if (v22 == 5)
        {
          LODWORD(v23) = HIDWORD(v23) % 3;
        }

        else
        {
          v23 = HIDWORD(v23) & 1;
        }
      }

      v15 = v23 + 2;
    }

    v28 = (v15 + v14);
LABEL_58:

    _xzm_xzone_malloc(v9, v5, v28, v7, v8);
    return;
  }

  if (v5 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v16 = *(a1 + 240);
    }

    else
    {
      v16 = a1;
    }

    v17 = __clz(v5 - 1);
    v18 = (((v5 - 1) >> (61 - v17)) & 3) - 4 * v17 + 488;
    if (v5 <= 0x80)
    {
      v18 = (__PAIR128__(v5 >> 4, v5 & 0xF) - 1) >> 64;
    }

    if (!v5)
    {
      LOBYTE(v18) = 0;
    }

    v19 = v18;
    v20 = *(v16[56] + v18);
    if (HIWORD(a4) == 256)
    {
      v21 = 0;
    }

    else if ((a4 & 0xC0000000000) == 0x40000000000)
    {
      v21 = 1;
    }

    else
    {
      v24 = *(v16[55] + v19);
      if ((v24 & 0xFE) == 2)
      {
        LOBYTE(v25) = 0;
      }

      else
      {
        v27 = dword_1ED40432C;
        if (a4)
        {
          v27 = a4;
        }

        v25 = v16[50] + v27 * v16[49];
        if (v24 == 6)
        {
          v25 = HIDWORD(v25) & 3;
        }

        else if (v24 == 5)
        {
          LODWORD(v25) = HIDWORD(v25) % 3;
        }

        else
        {
          v25 = HIDWORD(v25) & 1;
        }
      }

      v21 = v25 + 2;
    }

    v28 = (v21 + v20);
    v9 = a1;
    goto LABEL_58;
  }

  _xzm_malloc_large_huge(a1, v5, 0, a4, v7);
}

void xzm_malloc_zone_malloc_type_realloc_slow(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int8x8_t a5)
{
  v8 = a1;
  v9 = *(a1 + 360);
  if ((v9 & 0xA0) == 0)
  {

    xzm_realloc(a1, a2, a3, a4, a5);
    return;
  }

  if (!a2)
  {
    v31 = a3;
LABEL_35:

    xzm_malloc_zone_malloc_type_malloc_slow(a1, v31, a4);
    return;
  }

  if (!a3)
  {
    xzm_malloc_zone_free_slow(a1, a2);
    a1 = v8;
    v31 = 0;
    goto LABEL_35;
  }

  _X25 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  v12 = v11 >> 14;
  if (v11 >> 14)
  {
    goto LABEL_39;
  }

  v13 = *(a1 + 240);
  if (!v13)
  {
    v13 = a1;
  }

  v14 = *(v13 + 488);
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = (*(v14 + 4 * v11) & 0x7FFFFFFF) << 14;
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = a2 - *(v15 + 40);
  if (*(v15 + 16) <= (v16 >> 14))
  {
    goto LABEL_39;
  }

  v17 = v16 >> 14;
  v18 = v15 + 48 * v17 + 2104;
  if ((*(v15 + 48 * v17 + 2136) & 0xF) == 4)
  {
    v82 = v15 + 48 * v17 + 2104 - *(v15 + 48 * v17 + 2140);
    v83 = *(v82 + 32) & 0xF;
    if (v83 <= 9)
    {
      v84 = 1 << v83;
      if ((v84 & 0x3E8) != 0)
      {
        if (v82 + 48 * *(v82 + 40) <= v18)
        {
          goto LABEL_14;
        }

LABEL_212:
        v18 -= *(v18 + 36);
        goto LABEL_14;
      }

      if ((v84 & 6) != 0)
      {
        v92 = v18 == v82;
        *(v18 + 36);
      }

      else
      {
        v92 = 0;
      }

      if (v92)
      {
        goto LABEL_212;
      }
    }
  }

LABEL_14:
  v19 = *(v18 + 32) & 0xF;
  if (v19 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v19);
  }

  if (((1 << v19) & 0x1E4) == 0 || *(v18 + 34) != *(v8 + 208))
  {
    goto LABEL_39;
  }

  v20 = _X25 - *((v18 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v18 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v19 > 6 || ((1 << v19) & 0x64) == 0)
  {
    v23 = *(v18 + 40) << 14;
    if (v20 % v23)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v22 = *(v8 + 216) + 96 * *(v18 + 33);
    if ((*(v22 + 64) * v20) >= *(v22 + 64))
    {
      goto LABEL_39;
    }

    v23 = *(v22 + 48);
  }

  _X23 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (*(v8 + 368) == 1)
  {
    __asm { LDG             X23, [X25] }

    if (((_X23 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  if (v19 != 6)
  {
    if (v19 != 5)
    {
      if (v19 != 2)
      {
        goto LABEL_74;
      }

      goto LABEL_28;
    }

    if (((*v18 >> (v20 / v23)) & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_39:
    v23 = _xzm_ptr_size_outlined(v8, a2);
    goto LABEL_40;
  }

LABEL_28:
  if (*(v18 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v29 = *_X23;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v29 = *_X23;
  }

  v47 = *(v8 + 320) ^ _X23;
  if (v19 == 6)
  {
    v47 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v29 == v47 && _xzm_xzone_freelist_chunk_block_is_free_slow(v8, v18, _X23))
  {
    goto LABEL_39;
  }

LABEL_74:
  if (_X23 != a2)
  {
    v23 = v23 - a2 + _X23;
  }

LABEL_40:
  v32 = 0;
  if ((v9 & 0x80) == 0 || v23)
  {
    goto LABEL_78;
  }

  if (*(v8 + 240))
  {
    v32 = *(v8 + 240);
  }

  else
  {
    v32 = v8;
  }

  if (v12)
  {
    goto LABEL_77;
  }

  v33 = *(v32 + 240);
  if (!v33)
  {
    v33 = v32;
  }

  v34 = *(v33 + 488);
  if (!v34)
  {
    goto LABEL_77;
  }

  v35 = (*(v34 + 4 * v11) & 0x7FFFFFFF) << 14;
  if (!v35)
  {
    goto LABEL_77;
  }

  v36 = a2 - *(v35 + 40);
  if (*(v35 + 16) <= (v36 >> 14))
  {
    goto LABEL_77;
  }

  v37 = v36 >> 14;
  v38 = v35 + 48 * v37 + 2104;
  if ((*(v35 + 48 * v37 + 2136) & 0xF) == 4)
  {
    v88 = v35 + 48 * v37 + 2104 - *(v35 + 48 * v37 + 2140);
    v89 = *(v88 + 32) & 0xF;
    if (v89 <= 9)
    {
      v90 = 1 << v89;
      if ((v90 & 0x3E8) != 0)
      {
        if (v88 + 48 * *(v88 + 40) <= v38)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if ((v90 & 6) != 0)
        {
          v94 = v38 == v88;
          *(v38 + 36);
        }

        else
        {
          v94 = 0;
        }

        if (!v94)
        {
          goto LABEL_52;
        }
      }

      v38 -= *(v38 + 36);
    }
  }

LABEL_52:
  v39 = *(v38 + 32) & 0xF;
  if (v39 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v39);
  }

  if (((1 << v39) & 0x1E4) == 0 || *(v38 + 34) != *(v32 + 208))
  {
    goto LABEL_77;
  }

  v40 = _X25 - *((v38 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v38 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v39 > 6 || ((1 << v39) & 0x64) == 0)
  {
    v23 = *(v38 + 40) << 14;
    if (v40 % v23)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v42 = *(v32 + 216) + 96 * *(v38 + 33);
    if ((*(v42 + 64) * v40) >= *(v42 + 64))
    {
      goto LABEL_77;
    }

    v23 = *(v42 + 48);
  }

  _X11 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  if (*(v32 + 368) != 1)
  {
    goto LABEL_63;
  }

  __asm { LDG             X11, [X25] }

  if (((_X11 ^ a2) & 0xF00000000000000) == 0)
  {
LABEL_63:
    if (v39 == 6)
    {
LABEL_66:
      if (*(v38 + 12) == 1)
      {
        __asm { MSR             TCO, #1 }

        v45 = *_X11;
        __asm { MSR             TCO, #0 }
      }

      else
      {
        v45 = *_X11;
      }

      v80 = *(v32 + 320) ^ _X11;
      if (v39 == 6)
      {
        v80 &= 0xF0FFFFFFFFFFFFFFLL;
      }

      if (v45 == v80)
      {
        v96 = _X11;
        is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v32, v38, _X11);
        _X11 = v96;
        if (is_free_slow)
        {
          goto LABEL_77;
        }
      }

LABEL_179:
      if (_X11 != a2)
      {
        v23 = v23 - a2 + _X11;
      }

      goto LABEL_78;
    }

    if (v39 != 5)
    {
      if (v39 != 2)
      {
        goto LABEL_179;
      }

      goto LABEL_66;
    }

    if (((*v38 >> (v40 / v23)) & 1) == 0)
    {
      goto LABEL_179;
    }
  }

LABEL_77:
  v23 = _xzm_ptr_size_outlined(v32, a2);
LABEL_78:
  if (!v23)
  {
    xzm_malloc_zone_malloc_type_realloc_slow_cold_5();
  }

  if ((v9 & 0x20) != 0 && v23 > a3)
  {
    _platform_memset();
  }

  if ((v9 & 0x80) == 0 || a3 > 0x8000 && !v32 || a3 <= 0x8000 && v32)
  {
    if (v12)
    {
      goto LABEL_125;
    }

    v48 = *(v8 + 240);
    if (!v48)
    {
      v48 = v8;
    }

    v49 = *(v48 + 488);
    if (!v49)
    {
      goto LABEL_125;
    }

    v50 = (*(v49 + 4 * v11) & 0x7FFFFFFF) << 14;
    if (!v50)
    {
      goto LABEL_125;
    }

    v51 = a2 - *(v50 + 40);
    if (*(v50 + 16) <= (v51 >> 14))
    {
      goto LABEL_125;
    }

    v52 = v51 >> 14;
    v53 = v50 + 48 * v52 + 2104;
    if ((*(v50 + 48 * v52 + 2136) & 0xF) == 4)
    {
      v85 = v50 + 48 * v52 + 2104 - *(v50 + 48 * v52 + 2140);
      v86 = *(v85 + 32) & 0xF;
      if (v86 <= 9)
      {
        v87 = 1 << v86;
        if ((v87 & 0x3E8) != 0)
        {
          if (v85 + 48 * *(v85 + 40) <= v53)
          {
            goto LABEL_94;
          }

LABEL_218:
          v53 -= *(v53 + 36);
          goto LABEL_94;
        }

        if ((v87 & 6) != 0)
        {
          v93 = v53 == v85;
          *(v53 + 36);
        }

        else
        {
          v93 = 0;
        }

        if (v93)
        {
          goto LABEL_218;
        }
      }
    }

LABEL_94:
    v54 = *(v53 + 32) & 0xF;
    if (v54 > 8)
    {
      _xzm_segment_group_segment_span_free_coalesce_cold_4(v54);
    }

    if (((1 << v54) & 0x1E4) == 0 || *(v53 + 34) != *(v8 + 208))
    {
      goto LABEL_125;
    }

    v55 = _X25 - *((v53 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v53 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
    if (v54 > 6 || ((1 << v54) & 0x64) == 0)
    {
      v58 = *(v53 + 40) << 14;
      if (v55 % v58)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v57 = *(v8 + 216) + 96 * *(v53 + 33);
      if ((*(v57 + 64) * v55) >= *(v57 + 64))
      {
        goto LABEL_125;
      }

      v58 = *(v57 + 48);
    }

    if (*(v8 + 368) != 1)
    {
      goto LABEL_105;
    }

    __asm { LDG             X25, [X25] }

    if (((_X25 ^ a2) & 0xF00000000000000) == 0)
    {
LABEL_105:
      if (v54 == 6)
      {
LABEL_108:
        if (*(v53 + 12) == 1)
        {
          __asm { MSR             TCO, #1 }

          v60 = *_X25;
          __asm { MSR             TCO, #0 }
        }

        else
        {
          v60 = *_X25;
        }

        v77 = *(v8 + 320) ^ _X25;
        if (v54 == 6)
        {
          v77 &= 0xF0FFFFFFFFFFFFFFLL;
        }

        if (v60 == v77 && _xzm_xzone_freelist_chunk_block_is_free_slow(v8, v53, _X25))
        {
          goto LABEL_125;
        }

LABEL_169:
        if (_X25 == a2)
        {
          v70 = 0;
        }

        else
        {
          v91 = _X25;
          v70 = 0;
          v58 = v58 - a2 + v91;
        }

LABEL_126:
        if (v58)
        {
          if (v70)
          {
            goto LABEL_131;
          }
        }

        else
        {
          ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(0x50u, a2);
          if (v70)
          {
            goto LABEL_131;
          }
        }

        if (*(v53 + 34) != *(v8 + 208))
        {
          xzm_realloc_cold_2(a2);
        }

LABEL_131:
        if (a3 > 0x8000 && v53 && v58 > 0x8000)
        {
          v71 = (v53 & 0xFFFFFFFFFFFFC000);
          if (a3 <= 0x200000 || v58 <= 0x200000)
          {
            if (v58 <= 0x200000 && a3 < 0x200001 && !*((v53 & 0xFFFFFFFFFFFFC000) + 0x14) && (*(v8 + 360) & 0x80) == 0)
            {
              v72 = xzm_segment_group_try_realloc_large_chunk(*v71, v53 & 0xFFFFFFFFFFFFC000, v53, (a3 + 0x3FFF) >> 14);
LABEL_138:
              v73 = a2;
              if (v72)
              {
LABEL_152:
                if ((v9 & 0x20) != 0 && v23 < a3)
                {
                  _platform_memset();
                }

                if (v73 != a2)
                {
                  if ((v9 & 0x20) != 0)
                  {
                    _platform_memset();
                  }

                  if (v32)
                  {
                    v76 = v32;
                  }

                  else
                  {
                    v76 = v8;
                  }

                  _xzm_free(v76, a2, 0);
                }

                return;
              }
            }
          }

          else if ((*(v8 + 360) & 0x80) == 0)
          {
            v72 = xzm_segment_group_try_realloc_huge_chunk(*v71, v8, v71, v53, (a3 + 0x3FFF) >> 14);
            goto LABEL_138;
          }
        }

        if (v58 >= a3)
        {
          v73 = a2;
          if (v58 >> 1 <= a3)
          {
            goto LABEL_152;
          }
        }

        xzm_malloc_inline(v8, a3, a4, 0, a5);
        v73 = v74;
        if (!v74)
        {
          return;
        }

LABEL_148:
        if (v58 >= a3)
        {
          v75 = a3;
        }

        else
        {
          v75 = v58;
        }

        memcpy(v73, a2, v75);
        goto LABEL_152;
      }

      if (v54 != 5)
      {
        if (v54 != 2)
        {
          goto LABEL_169;
        }

        goto LABEL_108;
      }

      if (((*v53 >> (v55 / v58)) & 1) == 0)
      {
        goto LABEL_169;
      }
    }

LABEL_125:
    v58 = _xzm_ptr_size_outlined(v8, a2);
    v53 = 0;
    v70 = 1;
    goto LABEL_126;
  }

  if (a3 > 0x8000)
  {
    v69 = _xzm_malloc_large_huge(v8, a3, 0, a4, 0);
  }

  else
  {
    if (*(v8 + 240))
    {
      v62 = *(v8 + 240);
    }

    else
    {
      v62 = v8;
    }

    if (*(v62 + 240))
    {
      v63 = *(v62 + 240);
    }

    else
    {
      v63 = v62;
    }

    v64 = __clz(a3 - 1);
    v65 = (((a3 - 1) >> (61 - v64)) & 3) - 4 * v64 + 488;
    if (a3 <= 0x80)
    {
      v65 = (__PAIR128__(a3 >> 4, a3 & 0xF) - 1) >> 64;
    }

    v66 = v65;
    v67 = *(v63[56] + v65);
    if (HIWORD(a4) == 256)
    {
      v68 = 0;
    }

    else if ((a4 & 0xC0000000000) == 0x40000000000)
    {
      v68 = 1;
    }

    else
    {
      v78 = *(v63[55] + v66);
      if ((v78 & 0xFE) == 2)
      {
        LOBYTE(v79) = 0;
      }

      else
      {
        v81 = dword_1ED40432C;
        if (a4)
        {
          v81 = a4;
        }

        v79 = v63[50] + v81 * v63[49];
        if (v78 == 6)
        {
          v79 = HIDWORD(v79) & 3;
        }

        else if (v78 == 5)
        {
          LODWORD(v79) = HIDWORD(v79) % 3;
        }

        else
        {
          v79 = HIDWORD(v79) & 1;
        }
      }

      v68 = v79 + 2;
    }

    _xzm_xzone_malloc(v62, a3, (v68 + v67), 0, a5);
  }

  v73 = v69;
  v58 = v23;
  if (v69)
  {
    goto LABEL_148;
  }
}