BOOL _malloc_allow_internal_security_policy()
{
  if (!MEMORY[0xFFFFF4084])
  {
    return 0;
  }

  if (_os_feature_enabled_simple_impl())
  {
    return 1;
  }

  v1 = _simple_getenv();
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = *(v1 + v2);
    if (!*(v1 + v2))
    {
      break;
    }

    v3 = (v4 & 0xF) + 10 * v3;
    ++v2;
    if ((v4 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }
  }

  result = v3 != 0;
  if (!v2 || v3 >= 2)
  {
    return 0;
  }

  return result;
}

_BYTE *malloc_common_value_for_key_copy(unsigned __int8 *a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = malloc_common_value_for_key(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = a3;
  if (a4 >= 2)
  {
    v7 = a3;
    do
    {
      v8 = *v6;
      if (v8 <= 0x20 && ((1 << v8) & 0x100000601) != 0)
      {
        break;
      }

      ++v6;
      *v7++ = v8;
      --a4;
    }

    while (a4 > 1);
  }

  *v7 = 0;
  return a3;
}

unsigned __int8 *malloc_common_value_for_key(unsigned __int8 *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *a1;
  while (v5)
  {
    if (MEMORY[0x193ACD780](a1, __s, v4))
    {
      v6 = *++a1;
      v5 = v6;
    }

    else
    {
      if (v4)
      {
        a1 += v4;
      }

      v5 = *a1;
      if (v5 == 61)
      {
        return a1 + 1;
      }
    }
  }

  return 0;
}

uint64_t _xzm_ptr_size_outlined(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) || !mfm_claimed_address(a2))
  {
    return 0;
  }

  return mfm_alloc_size(a2);
}

uint64_t pgm_malloc_type_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
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
    v11 = *(*(a1 + 200) + 168);

    return v11();
  }

  else
  {
    bzero(v14, a2 * a3);
    return v14;
  }
}

uint64_t mvm_aslr_init()
{
  result = _dyld_get_image_slide();
  if (result)
  {
    if (!entropic_address)
    {
      v1 = 0x16FD00000 - ((qword_1ED404330 & 0x7F) << 25);
      address = 0;
      v2 = MEMORY[0x1E69E9A60];
      v3 = MEMORY[0x1E69E9AC8];
      result = mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, *MEMORY[0x1E69E9AC8], 117440513);
      if (!result)
      {
        v4 = address;
        if (address > 0x16FE00000)
        {
          v5 = 0;
          v1 = (address & 0xFFFFFFFFFE000000) + 0x200000000;
          atomic_compare_exchange_strong_explicit(&entropic_base, &v5, address, memory_order_relaxed, memory_order_relaxed);
        }

        result = mach_vm_deallocate(*v2, v4, *v3);
      }

      v6 = 0;
      v7 = 0;
      atomic_compare_exchange_strong_explicit(&entropic_limit, &v6, v1, memory_order_relaxed, memory_order_relaxed);
      atomic_compare_exchange_strong_explicit(&entropic_address, &v7, v1 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
    }
  }

  else
  {
    malloc_entropy = 0;
    qword_1ED404330 = 0;
  }

  return result;
}

void *__cdecl malloc_type_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  if (default_zone == zone)
  {
    zone = *malloc_zones;
  }

  if (alignment < 8)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  if (zone->version < 0x10)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  v4 = vcnt_s8(alignment);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    return _malloc_type_zone_memalign_outlined(zone, alignment, size, type_id);
  }

  else
  {
    return (zone[1].calloc)();
  }
}

uint64_t _xzm_xzone_freelist_chunk_block_is_free_slow(uint64_t result, uint64_t a2, int a3)
{
  LODWORD(v4) = 0;
  v5 = *(result + 216) + 96 * *(a2 + 33);
  v6 = *(v5 + 48);
  v7 = ((0xAAAAAAAAAAAAC000 * (((a2 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  if (v6 <= 0x1000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 10;
  }

  v9 = v6 >> v8;
  v10 = (a3 - v7);
  v11 = (v6 >> v8) * (*(v5 + 68) - 1);
  if (*(result + 249) != 1 || v6 > 0x100)
  {
    goto LABEL_11;
  }

  if ((~*a2 & 0xFC00000) != 0 || (v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912)) == 0 || (v13 = v12 + 24 * *(v5 + 80), v14 = *(v13 + 56), v14 > 0x400) || *(v13 + 40) != a2)
  {
    LODWORD(v4) = 0;
    goto LABEL_11;
  }

  if (v14 == 1024)
  {
    v23 = 0;
    v33 = *(v13 + 58);
LABEL_53:
    v4 = 1;
    if ((v23 - v33 + *(v5 + 68)) * v9 <= v10)
    {
      return v4;
    }

LABEL_11:
    v15 = 0;
    v16 = (result + 344);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((result + 344), &v15, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v15)
    {
      result = os_unfair_lock_lock_with_options();
    }

    v18 = *a2;
    do
    {
      v19 = v18;
      if ((~v18 & 0x7FE) == 0)
      {
        v4 = 1;
        goto LABEL_38;
      }

      v20 = v18 | 0x40000000;
      atomic_compare_exchange_strong_explicit(a2, &v18, v18 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
    }

    while (v18 != v19);
    v21 = v19 & 0x7FF;
    v22 = (v19 >> 11) & 0x7FF;
    if (v21 == 1024)
    {
      v23 = 0;
LABEL_31:
      if (!v4)
      {
        v4 = (v23 - v22 + *(v5 + 68)) * v9 <= v10;
        goto LABEL_37;
      }
    }

    else
    {
      v23 = 0;
      while (1)
      {
        v24 = v21 % v9 || v21 > v11;
        if (v24 || v23 >= v22)
        {
          break;
        }

        if (v21 == v10)
        {
          v4 = 1;
          goto LABEL_37;
        }

        _X12 = v7 + (v21 << v8);
        if (*(a2 + 12) == 1)
        {
          __asm { LDG             X12, [X12] }
        }

        v21 = *(_X12 + 8) & 0x7FFLL;
        ++v23;
        if (v21 == 1024)
        {
          goto LABEL_31;
        }
      }

      if (!v4)
      {
        goto LABEL_59;
      }
    }

    if (v23 == v22)
    {
      v4 = 0;
LABEL_37:
      v23 = v19 & 0xFFFFFFFFBFFFFFFFLL;
      v30 = v19 | 0x40000000;
      atomic_compare_exchange_strong_explicit(a2, &v30, v23, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v20)
      {
LABEL_38:
        v31 = *(StatusReg + 24);
        v32 = v31;
        atomic_compare_exchange_strong_explicit(v16, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != v31)
        {
          os_unfair_lock_unlock(v16);
        }

        return v4;
      }

      qword_1EAC7F640 = "BUG IN LIBMALLOC: malloc assertion success failed (/Library/Caches/com.apple.xbs/Sources/libmalloc/src/xzone/xzone_malloc.c:4189)";
      __break(1u);
    }

    qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny remote freelist, client likely has a buffer overflow or use-after-free bug";
    qword_1EAC7F670 = v23;
    __break(1u);
    goto LABEL_58;
  }

  v23 = 0;
  while (!(v14 % v9) && v14 <= v11)
  {
    v33 = *(v13 + 58);
    if (v23 >= v33)
    {
      break;
    }

    if (v14 == v10)
    {
      return 1;
    }

    _X11 = v7 + (v14 << v8);
    if (*(a2 + 12) == 1)
    {
      __asm { LDG             X11, [X11] }
    }

    v14 = *(_X11 + 8) & 0x7FFLL;
    ++v23;
    if (v14 == 1024)
    {
      goto LABEL_53;
    }
  }

LABEL_58:
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny local freelist, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = v23;
  __break(1u);
LABEL_59:
  qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: corrupt tiny freelist, client likely has a buffer overflow or use-after-free bug";
  qword_1EAC7F670 = v23;
  __break(1u);
  return result;
}

void _malloc_detect_interposition()
{
  v0 = malloc < &dword_18E52A000 || malloc >= 0x18E56DCB8;
  if (v0 || (calloc >= &dword_18E52A000 ? (v1 = calloc >= 0x18E56DCB8) : (v1 = 1), v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (free >= &dword_18E52A000 && free < 0x18E56DCB8 && realloc >= &dword_18E52A000 && realloc < 0x18E56DCB8 && valloc >= &dword_18E52A000 && valloc < 0x18E56DCB8 && aligned_alloc >= &dword_18E52A000 && aligned_alloc < 0x18E56DCB8 && posix_memalign >= &dword_18E52A000 && posix_memalign < 0x18E56DCB8 && malloc_zone_malloc >= &dword_18E52A000 && malloc_zone_malloc < 0x18E56DCB8 && malloc_zone_calloc >= &dword_18E52A000 && malloc_zone_calloc < 0x18E56DCB8 && malloc_zone_free >= &dword_18E52A000 && malloc_zone_free < 0x18E56DCB8 && malloc_zone_realloc >= &dword_18E52A000 && malloc_zone_realloc < 0x18E56DCB8 && malloc_zone_valloc >= &dword_18E52A000 && malloc_zone_valloc < 0x18E56DCB8)
    {
      v2 = malloc_zone_memalign < &dword_18E52A000 || malloc_zone_memalign >= 0x18E56DCB8;
    }
  }

  v3 = malloc_type_malloc < &dword_18E52A000 || malloc_type_malloc >= 0x18E56DCB8;
  if (v3 || (malloc_type_calloc >= &dword_18E52A000 ? (v4 = malloc_type_calloc >= 0x18E56DCB8) : (v4 = 1), v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (malloc_type_free >= &dword_18E52A000 && malloc_type_free < 0x18E56DCB8)
    {
      v5 = 0;
      if (malloc_type_realloc >= &dword_18E52A000 && malloc_type_realloc < 0x18E56DCB8)
      {
        v5 = 0;
        if (malloc_type_valloc >= &dword_18E52A000 && malloc_type_valloc < 0x18E56DCB8)
        {
          v5 = 0;
          if (malloc_type_aligned_alloc >= &dword_18E52A000 && malloc_type_aligned_alloc < 0x18E56DCB8)
          {
            v5 = 0;
            if (malloc_type_posix_memalign >= &dword_18E52A000 && malloc_type_posix_memalign < 0x18E56DCB8)
            {
              v5 = 0;
              if (malloc_type_zone_malloc >= &dword_18E52A000 && malloc_type_zone_malloc < 0x18E56DCB8)
              {
                v5 = 0;
                if (malloc_type_zone_calloc >= &dword_18E52A000 && malloc_type_zone_calloc < 0x18E56DCB8)
                {
                  v5 = 0;
                  if (malloc_type_zone_free >= &dword_18E52A000 && malloc_type_zone_free < 0x18E56DCB8)
                  {
                    v5 = 0;
                    if (malloc_type_zone_realloc >= &dword_18E52A000 && malloc_type_zone_realloc < 0x18E56DCB8)
                    {
                      v5 = 0;
                      if (malloc_type_zone_valloc >= &dword_18E52A000 && malloc_type_zone_valloc < 0x18E56DCB8)
                      {
                        v5 = malloc_type_zone_memalign >= &dword_18E52A000 && malloc_type_zone_memalign < 0x18E56DCB8;
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

  if (malloc_interposition_compat != (v2 && v5))
  {
    malloc_interposition_compat = v2 && v5;
  }
}

void pgm_free(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    pgm_free_cold_1(a1, a2);
  }

  else
  {
    v3 = *(a1[25] + 48);

    v3();
  }
}

uint64_t mfm_alloc_size(uint64_t a1)
{
  v1 = a1 & 0xF0FFFFFFFFFFFFFFLL;
  v2 = mfm_arena + 0x10000;
  if (mfm_arena)
  {
    v3 = v2 > v1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = a1;
  result = 0;
  if ((v5 & 0xF) == 0 && mfm_arena + 0x400000 > v1)
  {
    v6 = (v1 - v2) >> 4;
    v7 = mfm_arena + 224;
    if ((*(mfm_arena + 224 + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF0)) & (1 << v6) & *(mfm_arena + 224 + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8))) != 0)
    {
      v8 = v6 + 1;
      v9 = v8 >> 5;
      v10 = (v8 >> 5) & 0x7FFFFFFFFFFFFFELL;
      v11 = *(v7 + 8 * v10) >> v8;
      if (v11)
      {
        v12 = __clz(__rbit64(v11));
      }

      else
      {
        v14 = v8 & 0x3F;
        v15 = v7 + 8 * v10;
        v16 = *(v15 + 16);
        if (v16)
        {
          v13 = __clz(__rbit64(v16)) - v14 + 65;
          return 16 * v13;
        }

        v17 = *(v7 + ((8 * v9) | 8));
        if (v14 < 0x2F)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v15 + 24);
        }

        v12 = (((2 * v18) << (v14 ^ 0x3Fu)) | (v17 >> v14)) & 0x3FFFF;
      }

      v13 = v12 + 1;
      return 16 * v13;
    }

    return 0;
  }

  return result;
}

char *malloc_print_configure()
{
  v0 = getenv("MallocDebugReport");
  if (v0)
  {
    v1 = v0;
    if (MEMORY[0x193ACD740](v0, "stderr"))
    {
      if (MEMORY[0x193ACD740](v1, "crash"))
      {
        if (MEMORY[0x193ACD740](v1, "none"))
        {
          debug_mode = 2;
          malloc_printf("Unrecognized value for MallocDebugReport (%s) - using 'stderr'\n", v1);
        }

        else
        {
          debug_mode = 0;
        }

        goto LABEL_11;
      }

      v2 = 0x1EAC7F000uLL;
      v3 = 1;
    }

    else
    {
      v2 = 0x1EAC7F000;
      v3 = 2;
    }

    *(v2 + 2056) = v3;
    goto LABEL_11;
  }

  if (isatty(2))
  {
    debug_mode = 2;
  }

LABEL_11:
  if (getenv("MallocErrorStop"))
  {
    malloc_error_stop = 1;
  }

  result = getenv("MallocErrorSleep");
  if (result)
  {
    malloc_error_sleep = 1;
  }

  return result;
}

uint64_t malloc_common_convert_to_long(unsigned __int8 *a1, void *a2)
{
  v3 = 0;
  do
  {
    v4 = a1;
    result = v3;
    v6 = *a1;
    if (!v6)
    {
      break;
    }

    v7 = v6 - 58;
    v3 = (v6 & 0xF) + 10 * v3;
    a1 = v4 + 1;
  }

  while (v7 > 0xFFFFFFF5);
  *a2 = v4;
  return result;
}

uint64_t xzm_segment_group_try_realloc_large_chunk(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a3 + 40);
  if (v7 >= a4)
  {
    if (v7 > a4)
    {
      v17 = 0;
      v18 = &a1[1];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&a1[1], &v17, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v17)
      {
        os_unfair_lock_lock_with_options();
      }

      v20 = *(a3 + 40) - a4;
      *(a3 + 40) = a4;
      v21 = a3 + 48 * (a4 - 1);
      *(v21 + 32) = *(v21 + 32) & 0xF0 | 4;
      *(v21 + 36) = 48 * (a4 - 1);
      if (v20 >= 2)
      {
        v22 = 7;
      }

      else
      {
        v22 = 2;
      }

      _xzm_segment_group_segment_span_mark_allocated(a3 & 0xFFFFFFFFFFFFC000, v22, -1431655765 * ((a3 + 48 * a4 - (a3 & 0xFFFFFFFFFFFFC000) - 2104) >> 4), v20);
      v23 = *(StatusReg + 24);
      v24 = v23;
      atomic_compare_exchange_strong_explicit(v18, &v24, 0, memory_order_release, memory_order_relaxed);
      if (v24 != v23)
      {
        os_unfair_lock_unlock(a1 + 1);
      }

      xzm_segment_group_free_chunk(a1, a3 + 48 * a4, 0, 0);
    }

    return 1;
  }

  v9 = 0;
  v10 = &a1[1];
  v11 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[1], &v9, *(v11 + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  v12 = *(a3 + 40);
  v13 = a4 - v12;
  v14 = a3 + 48 * v12;
  v15 = *(v14 + 32);
  if ((v15 & 0xF) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(v14 + 40);
  }

  v26 = v15 & 0xD;
  if (v14 < a2 + 2104 + 48 * *(a2 + 16) && v26 == 1 && v16 >= v13)
  {
    os_unfair_lock_opaque_low = LOBYTE(a1->_os_unfair_lock_opaque);
    if (os_unfair_lock_opaque_low >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(os_unfair_lock_opaque_low);
    }

    v32 = 0x4101004u >> (8 * os_unfair_lock_opaque_low);
    v33 = *(*&a1[6]._os_unfair_lock_opaque + 409);
    v34 = v32 & v33;
    if ((v32 & v33) == 0)
    {
      goto LABEL_30;
    }

    v35 = a3 + 48 * v12;
    v36 = a4 - v12;
    v60 = a4 - v12;
    v61 = *(a3 + 40);
    v37 = v32 & v33;
    v38 = _xzm_segment_group_span_mark_smaller(a1, v35, 0, v36, v16 - v13);
    v34 = v37;
    v13 = v60;
    v12 = v61;
    if (v38)
    {
LABEL_30:
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40)
      {
        *(v40 + 24) = v39;
        v40 = *(v14 + 16);
      }

      *v39 = v40;
      if (v16 != v13)
      {
        v41 = v13;
        _xzm_segment_group_segment_span_free(a1, a2, v13 - 1431655765 * ((v14 - (a2 + 2104)) >> 4), *(v14 + 40) - v13, v34 == 0, (*(v14 + 32) >> 4) & 1);
        v13 = v41;
      }

      if (a4 != v12)
      {
        v42 = a3 + 48 * v12 + 32;
        v43 = 48 * v12;
        v44 = v13;
        do
        {
          *v42 = *v42 & 0xF0 | 4;
          *(v42 + 4) = v43;
          v42 += 48;
          v43 += 48;
          --v44;
        }

        while (v44);
      }

      *(a3 + 40) = a4;
      v45 = *(v11 + 24);
      v46 = v45;
      atomic_compare_exchange_strong_explicit(v10, &v46, 0, memory_order_release, memory_order_relaxed);
      if (v46 != v45)
      {
        v47 = v13;
        os_unfair_lock_unlock(a1 + 1);
        LODWORD(v13) = v47;
      }

      v48 = LOBYTE(a1->_os_unfair_lock_opaque);
      if (v48 >= 4)
      {
        xzm_segment_group_alloc_chunk_cold_1(v48);
      }

      v49 = *&a1[6]._os_unfair_lock_opaque;
      if (*(v49 + 368) != 1)
      {
        return 1;
      }

      v50 = 16;
      if (((v48 - 1) & 0xFE) == 0)
      {
        v50 = 32769;
      }

      v51 = *(v49 + 376);
      if (v51 < v50 || ((0xCu >> (v48 & 0xF)) & 1) != 0)
      {
        if (v51 < v50)
        {
          return 1;
        }
      }

      else if ((*(v49 + 369) & 1) == 0)
      {
        return 1;
      }

      v52 = *(a3 + 32) & 0xF;
      if (v52 > 6)
      {
        if (v52 - 7 >= 2)
        {
          goto LABEL_63;
        }

        v53 = *(a3 + 40) << 14;
      }

      else
      {
        switch(v52)
        {
          case 2u:
            v53 = 0x4000;
            break;
          case 5u:
            v53 = 0x10000;
            break;
          case 6u:
            v53 = 0x20000;
            break;
          default:
LABEL_63:
            xzm_chunk_mark_free_cold_1(v52);
        }
      }

      _X10 = ((0xAAAAAAAAAAAAC000 * (((a3 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a3 & 0xFFFFFFFFFFFFC000) + 0x28);
      __asm { LDG             X10, [X10] }

      if (a4 != v12)
      {
        v58 = _X10 + v53;
        v59 = _X10 + v53 - (v13 << 14);
        result = 1;
        do
        {
          __asm
          {
            DC              GVA, X9
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
            DC              GVA, X10
          }

          v59 += 512;
        }

        while (v59 < v58);
        return result;
      }

      return 1;
    }
  }

  v29 = *(v11 + 24);
  v30 = v29;
  atomic_compare_exchange_strong_explicit(v10, &v30, 0, memory_order_release, memory_order_relaxed);
  if (v30 != v29)
  {
    os_unfair_lock_unlock(a1 + 1);
  }

  return 0;
}

uint64_t sanitizer_should_enable()
{
  v0 = *_NSGetEnviron();
  v1 = _simple_getenv();
  if (v1 && *v1 == 49)
  {
    return 1;
  }

  v3 = *_NSGetEnviron();
  result = _simple_getenv();
  if (result)
  {
    return *result == 49;
  }

  return result;
}

void nano_common_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  _malloc_engaged_nano = _nano_common_init_pick_mode(a1, a2, a3, malloc_space_efficient_enabled);
  if (_malloc_engaged_nano)
  {
    v6 = malloc_common_value_for_key_copy(a3, "malloc_nano_max_magazines", v10, 0x100uLL);
    if (v6)
    {
      v9 = 0;
      v7 = malloc_common_convert_to_long(v6, &v9);
      if (*v9 || v7 < 0)
      {
        malloc_report(3u, "malloc_nano_max_magazines must be positive - ignored.\n");
      }

      else
      {
        nano_common_max_magazines = v7;
      }
    }

    if (_malloc_engaged_nano == 2)
    {
      nanov2_init(a1, a2, a3);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t pgm_malloc_type_malloc(uint64_t a1, unint64_t a2)
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

  v10 = *(*(a1 + 200) + 160);

  return v10();
}

uint64_t _nano_common_init_pick_mode(int a1, int a2, unsigned __int8 *a3, int a4)
{
  v5 = malloc_common_value_for_key(a3, "nanov2_mode");
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  if (!MEMORY[0x193ACD780](v5, "enabled", 7))
  {
    goto LABEL_5;
  }

  if (!MEMORY[0x193ACD780](v6, "forced", 6))
  {
    return 2;
  }

  if (!MEMORY[0x193ACD780](v6, "conditional", 11))
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
LABEL_5:
    v7 = _simple_getenv();
    if (v7)
    {
      v8 = 2 * (*v7 == 49);
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = _simple_getenv();
  if (v9)
  {
    v10 = *v9;
    if (v10 > 0x55)
    {
      if (v10 == 86 || v10 == 118)
      {
        if (v9[1] - 49 >= 2)
        {
          return v8;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      if (v10 == 48)
      {
        return 0;
      }

      if (v10 == 49)
      {
        return 2;
      }
    }
  }

  return v8;
}

void xzm_malloc_zone_malloc(uint64_t a1, unint64_t a2)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v5 = (malloc_get_thread_options() << 27) & 0x40000000;

  xzm_malloc_inline(a1, a2, v4, v5, v6);
}

void nanov2_init(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  __src[8] = *MEMORY[0x1E69E9840];
  v4 = _simple_getenv();
  if (v4 || (v4 = malloc_common_value_for_key(a3, "nanov2_madvise_policy")) != 0)
  {
    v5 = v4;
    if (MEMORY[0x193ACD780](v4, "immediate", 9))
    {
      if (!MEMORY[0x193ACD780](v5, "warning", 7))
      {
        v6 = 1;
        goto LABEL_10;
      }

      if (!MEMORY[0x193ACD780](v5, "critical", 8))
      {
        v6 = 2;
        goto LABEL_10;
      }

      malloc_report(3u, "%s value (%s) invalid - ignored.\n");
    }
  }

  v6 = 0;
LABEL_10:
  nanov2_madvise_policy = v6;
  v7 = _simple_getenv();
  if (v7 || (v7 = malloc_common_value_for_key_copy(a3, "nanov2_single_arena", v43, 0x100uLL)) != 0)
  {
    v8 = 0;
    __src[0] = 0;
    v9 = v7;
    while (*v9)
    {
      v10 = malloc_common_convert_to_long(v9, __src);
      if (__src[0] == v9 || ((v11 = *__src[0], v11 != 58) ? (v12 = v11 == 0) : (v12 = 1), !v12 || v10 - 16 > 0xF0 || (v10 & 0xF) != 0))
      {
        malloc_report(3u, "%s value (%s) invalid - ignored.\n");
        goto LABEL_25;
      }

      v8 |= 1 << ((v10 >> 4) - 1);
      v9 = (__src[0] + 1);
      if (!*__src[0])
      {
        break;
      }
    }
  }

  else
  {
LABEL_25:
    LOWORD(v8) = 0;
  }

  word_1ED404108 = v8;
  v13 = _simple_getenv();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = malloc_common_value_for_key_copy(a3, "nanov2_scan_policy", v43, 0x100uLL);
    if (!v15)
    {
LABEL_69:
      v21 = 10;
      v20 = 80;
      v19 = 20;
      v31 = 1;
      goto LABEL_77;
    }

    v14 = v15;
  }

  if (!MEMORY[0x193ACD740](v14, nanov2_set_block_scan_policy_first_fit_key))
  {
    v31 = 0;
    v21 = 10;
    v20 = 80;
    v19 = 20;
    goto LABEL_77;
  }

  __src[0] = 0;
  if (!*v14)
  {
    goto LABEL_69;
  }

  v41 = a3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 20;
  v20 = 80;
  v21 = 10;
  v22 = v14;
  while (1)
  {
    if (MEMORY[0x193ACD780](v22, nanov2_set_block_scan_policy_min_key, 3) | v16)
    {
      if (MEMORY[0x193ACD780](v22, nanov2_set_block_scan_policy_max_key, 3) | v17)
      {
        if (MEMORY[0x193ACD780](v22, nanov2_set_block_scan_policy_lim_key, 3) | v18)
        {
          LOBYTE(v23) = 1;
        }

        else
        {
          v22 += 3;
          v28 = malloc_common_convert_to_long(v22, __src);
          v23 = v22 == __src[0] || v28 < 0;
          if (!v23)
          {
            v21 = v28;
            v22 = __src[0];
          }

          v18 = 1;
        }
      }

      else
      {
        v22 += 3;
        v26 = malloc_common_convert_to_long(v22, __src);
        v23 = v22 == __src[0] || v26 > 0x64;
        if (!v23)
        {
          v20 = v26;
          v22 = __src[0];
        }

        v17 = 1;
      }
    }

    else
    {
      v22 += 3;
      v24 = malloc_common_convert_to_long(v22, __src);
      v23 = v22 == __src[0] || v24 > 0x64;
      if (!v23)
      {
        v19 = v24;
        v22 = __src[0];
      }

      v16 = 1;
    }

    if (*v22 != 58)
    {
      break;
    }

    if (v23)
    {
      goto LABEL_75;
    }

    if (!*++v22)
    {
      if (v19 <= v20)
      {
        goto LABEL_76;
      }

LABEL_75:
      malloc_report(3u, "%s value (%s) invalid - ignored.\n");
      a3 = v41;
      goto LABEL_78;
    }
  }

  if (*v22)
  {
    goto LABEL_75;
  }

  if (v19 > v20)
  {
    LOBYTE(v23) = 1;
  }

  if (v23)
  {
    goto LABEL_75;
  }

LABEL_76:
  v31 = 1;
  a3 = v41;
LABEL_77:
  nanov2_policy_config = v31;
  unk_1ED4040FC = v19;
  dword_1ED404100 = v20;
  unk_1ED404104 = v21;
LABEL_78:
  v32 = _simple_getenv();
  if (v32 || (v32 = malloc_common_value_for_key_copy(a3, "nanov2_size_class_blocks", v43, 0x100uLL)) != 0)
  {
    v33 = 0;
    v34 = 0;
    v42 = 0;
    v35 = v32;
    do
    {
      v36 = malloc_common_convert_to_long(v35, &v42);
      v37 = v42;
      if (v42 == v35 || (v33 != 60 ? (v38 = 44) : (v38 = 0), v38 != *v42 || v36 > 64))
      {
        v39 = "%s value invalid: [%s] - ignored.\n";
        goto LABEL_91;
      }

      *(__src + v33) = v36;
      v34 += v36;
      v35 = v37 + 1;
      v33 += 4;
    }

    while (v33 != 64);
    if (v34 == 64)
    {
      memcpy(block_units_by_size_class, __src, 0x40uLL);
      goto LABEL_92;
    }

    v39 = "%s value invalid - values must sum to %d, not %d - ignored.\n";
LABEL_91:
    malloc_report(3u, v39);
  }

LABEL_92:
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t malloc_zone_batch_malloc_fallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (1)
  {
    v9 = (*(a1 + 24))(a1, a2);
    if (!v9)
    {
      break;
    }

    *(a3 + 8 * v7++) = v9;
    if (v8 == v7)
    {
      return v8;
    }
  }

  return v7;
}

uint64_t default_zone_free_definite_size()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 120))();
}

uint64_t xzm_main_malloc_zone_create(unsigned int a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v325 = a4;
  v331 = a2;
  v342 = *MEMORY[0x1E69E9840];
  LODWORD(v315) = malloc_process_identity;
  LODWORD(v329) = malloc_process_identity - 1;
  v5 = (malloc_process_identity - 1) < 0x22;
  v337 = 0uLL;
  v6 = _simple_getenv();
  if (v6)
  {
    v7 = v6;
    v8 = strlen(v6);
    if (v8 <= 0x1F)
    {
      xzm_main_malloc_zone_create_cold_2(v8);
    }

    v9 = 0;
    v10 = &v337;
    v11 = 1;
    do
    {
      v12 = v11;
      memcpy(v339, &v7[v9], 0x10uLL);
      v339[16] = 0;
      v13 = strtoull(v339, 0, 16);
      v14 = v13;
      if (v13 == -1)
      {
        if (*__error() == 34)
        {
          goto LABEL_486;
        }
      }

      else if (!v13 && *__error() == 22)
      {
LABEL_486:
        xzm_main_malloc_zone_create_cold_1();
      }

      v11 = 0;
      *v10 = v14;
      v10 = &v337 + 1;
      v9 = 16;
    }

    while ((v12 & 1) != 0);
  }

  else
  {
    if (v329 <= 0x21)
    {
      xzm_main_malloc_zone_create_cold_8();
    }

    arc4random_buf(&v337, 0x10uLL);
  }

  v15 = ccsha256_di();
  v16 = (((*(v15 + 8) + *(v15 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = v273 - v17;
  ccdigest_init();
  strcpy(v340, "xzone malloc front random");
  ccdigest_update();
  ccdigest_update();
  (*(v15 + 56))(v15, v18, v341);
  v19 = *(v15 + 8) + *(v15 + 16);
  cc_clear();
  if (malloc_process_identity)
  {
    v20 = _xzm_process_configs[malloc_process_identity];
  }

  else
  {
    v20 = 0;
  }

  v21 = malloc_common_value_for_key_copy(v325, "xzone_ptr_buckets", v339, 0x100uLL);
  if (!v21)
  {
    goto LABEL_20;
  }

  v336 = 0;
  v22 = malloc_common_convert_to_long(v21, &v336);
  v23 = v22;
  if (*v336.numer || (v22 - 1) >= 4)
  {
    malloc_report(3u, "Invalid xzone_ptr_buckets value %ld - ignored.\n");
LABEL_20:
    v23 = 0;
  }

  v273[1] = v273;
  v302 = v5;
  if (v329 >= 0x22)
  {
    v25 = _simple_getenv();
    if (!v25)
    {
      v23 = 2;
      v24 = 2;
      goto LABEL_34;
    }

    v26 = strtol(v25, 0, 10);
    if (v26 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = 1;
      if (v26 != 2 && v26 != 0xFFFF)
      {
        v24 = 2;
      }

      if ((v26 - 1) >= 2 && v26 != 0xFFFF)
      {
        v23 = 2;
        goto LABEL_34;
      }
    }

    v23 = 1;
    goto LABEL_34;
  }

  v24 = 1;
LABEL_34:
  if (malloc_internal_security_policy == 1)
  {
    v27 = _simple_getenv();
    if (v27)
    {
      v28 = strtol(v27, 0, 10);
      if (v28 < 5)
      {
        v23 = v28;
      }
    }
  }

  v29 = 3;
  if (v23)
  {
    v29 = v23;
  }

  v324 = v29;
  v30 = _simple_getenv();
  if (!v30)
  {
LABEL_46:
    mfm_initialize();
    if (v20)
    {
      goto LABEL_44;
    }

LABEL_47:
    v32 = 0;
    goto LABEL_48;
  }

  v31 = strtol(v30, 0, 10);
  if (v31 > 1)
  {
    malloc_report(3u, "MallocXzoneEarlyAlloc must be 0 or 1.\n");
    goto LABEL_46;
  }

  if (v31)
  {
    goto LABEL_46;
  }

  if (!v20)
  {
    goto LABEL_47;
  }

LABEL_44:
  v32 = v20[1];
LABEL_48:
  if (malloc_internal_security_policy == 1)
  {
    v33 = _simple_getenv();
    if (v33)
    {
      v34 = strtol(v33, 0, 10);
      if (v34 < 2)
      {
        v32 = v34 != 0;
      }
    }
  }

  LODWORD(v294) = v32;
  v335 = 0;
  v334 = 0;
  if (malloc_has_sec_transition)
  {
    v35 = 0x8000;
  }

  else
  {
    v35 = 0;
  }

  v326 = malloc_has_sec_transition;
  v322 = malloc_has_sec_transition & (malloc_sec_transition_policy >> 1);
  v36 = _simple_getenv();
  if (v36 && strtol(v36, 0, 10) == 1)
  {
    if ((malloc_has_sec_transition & 1) == 0)
    {
      malloc_report(0x40u, "Malloc MTE debug mode (MallocTagAll=1) requires the process to be started with MTE enabled.\n");
    }

    v322 = 1;
    v35 = 0x8000;
  }

  if (malloc_internal_security_policy == 1)
  {
    v37 = _simple_getenv();
    if (v37)
    {
      v38 = strtol(v37, 0, 10);
      if (v38 == 1)
      {
        v35 = 0x8000;
      }

      v39 = v322;
      if (v38 == 1)
      {
        v39 = 1;
      }

      v322 = v39;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v40 = _simple_getenv();
    if (v40)
    {
      v41 = strtol(v40, 0, 10);
      v42 = v326;
      if (v41 < 2)
      {
        v42 = v41;
      }

      v326 = v42;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v43 = _simple_getenv();
    if (v43)
    {
      v44 = strtol(v43, 0, 10);
      v45 = v322;
      if (v44 < 2)
      {
        v45 = v44;
      }

      v322 = v45;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v46 = _simple_getenv();
    if (v46)
    {
      v47 = strtoull(v46, 0, 10);
      if ((v47 & 0xF) == 0 && v47 < 0x8001)
      {
        v35 = v47;
      }
    }
  }

  if (v20)
  {
    v49 = v20[2] ^ 1;
  }

  else
  {
    v49 = 1;
  }

  v295 = a1;
  v312 = v35;
  if (malloc_internal_security_policy == 1)
  {
    v50 = _simple_getenv();
    if (v50)
    {
      v51 = strtol(v50, 0, 10);
      if (v51 < 2)
      {
        v49 = v51 != 0;
      }
    }
  }

  v52 = malloc_process_identity == 34 || v329 > 0x21;
  v53 = _malloc_engaged_nano == 2 && v52;
  LODWORD(v328) = v329 > 0x21;
  if (v53)
  {
    v314 = _os_feature_enabled_simple_impl();
    v24 = 2;
  }

  else
  {
    v314 = 0;
  }

  v54 = _simple_getenv();
  if (v54)
  {
    v55 = strtol(v54, 0, 10);
    if (v55 > 1)
    {
      malloc_report(3u, "MallocXzoneThreadCaching must be one of 0,1 - got %ld\n");
      if (!v20)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }

    v314 = v55 == 1;
  }

  if (!v20)
  {
    goto LABEL_107;
  }

LABEL_104:
  if (*v20 == 3)
  {
    v24 = v24;
  }

  else
  {
    v24 = *v20;
  }

LABEL_107:
  v56 = malloc_common_value_for_key_copy(v325, "malloc_xzone_slot_config", v339, 0x100uLL);
  if (v56)
  {
    v57 = strtol(v56, 0, 10);
    if (v57 >= 3)
    {
      v24 = v24;
    }

    else
    {
      v24 = v57;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v58 = _simple_getenv();
    if (v58)
    {
      v59 = strtol(v58, 0, 10);
      if (v59 >= 3)
      {
        v24 = v24;
      }

      else
      {
        v24 = v59;
      }
    }
  }

  v275 = v49;
  if (malloc_internal_security_policy == 1 && (v60 = _simple_getenv()) != 0)
  {
    v61 = strtol(v60, 0, 10);
    if (v61 >= 3)
    {
      v62 = 0;
    }

    else
    {
      v62 = v61;
    }
  }

  else
  {
    v62 = 0;
  }

  if (malloc_internal_security_policy == 1)
  {
    v63 = _simple_getenv();
    v64 = 128;
    if (v63)
    {
      v65 = strtol(v63, 0, 10);
      if (v65 >= 0xFFFFFFFF)
      {
        v64 = 128;
      }

      else
      {
        v64 = v65;
      }
    }
  }

  else
  {
    v64 = 128;
  }

  if (malloc_internal_security_policy == 1 && (v66 = _simple_getenv()) != 0)
  {
    v67 = strtol(v66, 0, 10);
    if ((v67 - 1) >= 0xFE)
    {
      v68 = 1;
    }

    else
    {
      v68 = v67;
    }
  }

  else
  {
    v68 = 1;
  }

  v323 = v68;
  if (malloc_internal_security_policy == 1)
  {
    v69 = _simple_getenv();
    if (v69)
    {
      v70 = strtol(v69, 0, 10);
      if (v70 >= 0xFFFFFFFF)
      {
        v71 = 128;
      }

      else
      {
        v71 = v70;
      }

      if (v70 >= 0xFFFFFFFF)
      {
        v72 = 32;
      }

      else
      {
        v72 = v70;
      }

      v319 = v71;
      v320 = v72;
    }

    else
    {
      v319 = 128;
      v320 = 32;
    }
  }

  else
  {
    v320 = 32;
    v319 = 128;
  }

  if (malloc_internal_security_policy == 1)
  {
    v73 = _simple_getenv();
    if (v73)
    {
      v74 = strtol(v73, 0, 10);
      if (v74 >= 0xFFFFFFFF)
      {
        v75 = v320;
      }

      else
      {
        v75 = v74;
      }

      v320 = v75;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v76 = _simple_getenv();
    if (v76)
    {
      v77 = strtol(v76, 0, 10);
      if (v77 >= 0xFFFFFFFF)
      {
        v78 = v319;
      }

      else
      {
        v78 = v77;
      }

      v319 = v78;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v79 = _simple_getenv();
    v80 = 256;
    if (v79)
    {
      v81 = strtol(v79, 0, 10);
      if (v81 >= 0xFFFFFFFF)
      {
        v80 = 256;
      }

      else
      {
        v80 = v81;
      }

      if (v81 >= 0xFFFFFFFF)
      {
        v82 = 64;
      }

      else
      {
        v82 = v81;
      }

      v318 = v82;
    }

    else
    {
      v318 = 64;
    }
  }

  else
  {
    v318 = 64;
    v80 = 256;
  }

  if (malloc_internal_security_policy == 1)
  {
    v83 = _simple_getenv();
    if (v83)
    {
      v84 = strtol(v83, 0, 10);
      if (v84 >= 0xFFFFFFFF)
      {
        v85 = v318;
      }

      else
      {
        v85 = v84;
      }

      v318 = v85;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v86 = _simple_getenv();
    if (v86)
    {
      v87 = strtol(v86, 0, 10);
      if (v87 >= 0xFFFFFFFF)
      {
        v80 = v80;
      }

      else
      {
        v80 = v87;
      }
    }
  }

  if (malloc_internal_security_policy == 1 && (v88 = _simple_getenv()) != 0)
  {
    v89 = strtol(v88, 0, 10);
    if (v89 >= 0xFFFFFFFF)
    {
      v90 = 512;
    }

    else
    {
      v90 = v89;
    }

    v310 = v90;
  }

  else
  {
    v310 = 512;
  }

  if (malloc_internal_security_policy == 1 && (v91 = _simple_getenv()) != 0)
  {
    v92 = strtol(v91, 0, 10);
    if (v92 >= 0xFFFFFFFF)
    {
      v93 = 1024;
    }

    else
    {
      v93 = v92;
    }

    v311 = v93;
  }

  else
  {
    v311 = 1024;
  }

  if (v24)
  {
    if (v24 == 2)
    {
      goto LABEL_200;
    }

    if (v24 != 1)
    {
      xzm_main_malloc_zone_create_cold_7();
    }

    v94 = ncpuclusters;
    if (ncpuclusters <= 1)
    {
LABEL_200:
      v94 = logical_ncpus;
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v94 = 1;
  }

  if (v62 >= v24)
  {
    v95 = v24;
  }

  else
  {
    v95 = v62;
  }

  v309 = v95;
  v336 = 0;
  v96 = mach_timebase_info(&v336);
  if (v96)
  {
    xzm_main_malloc_zone_create_cold_3(v96);
  }

  v321 = 1000000;
  if (malloc_internal_security_policy == 1)
  {
    v97 = _simple_getenv();
    v321 = 1000000;
    if (v97)
    {
      v98 = strtol(v97, 0, 10);
      v99 = 1000000 * v98;
      if (v98 >= 0xFFFFFFFF)
      {
        v99 = 1000000;
      }

      v321 = v99;
    }
  }

  if ((v53 | v326))
  {
    v100 = 1000000;
  }

  else
  {
    v100 = 0;
  }

  v317 = v100;
  denom = v336.denom;
  numer = v336.numer;
  if (malloc_internal_security_policy == 1)
  {
    v101 = _simple_getenv();
    if (v101)
    {
      v102 = strtol(v101, 0, 10);
      v103 = v317;
      if (v102 < 0xFFFFFFFF)
      {
        v103 = 1000000 * v102;
      }

      v317 = v103;
    }
  }

  v286 = v336.denom;
  v287 = v336.numer;
  LODWORD(v293) = v94;
  if (malloc_internal_security_policy == 1 && (v104 = _simple_getenv()) != 0)
  {
    v105 = strtol(v104, 0, 10);
    v106 = 0x4000;
    if (v105 <= 0x8000)
    {
      v106 = v105;
    }
  }

  else
  {
    v106 = 0x4000;
  }

  v306 = v106;
  v107 = _simple_getenv();
  v108 = 0x4000;
  v307 = v80;
  if (v107)
  {
    v109 = strtol(v107, 0, 10);
    if (v109 >= 0xFFFFFFFF)
    {
      v108 = 0x4000;
    }

    else
    {
      v108 = v109;
    }
  }

  v110 = _simple_getenv();
  if (v110)
  {
    v111 = strtol(v110, 0, 10);
    if (v111 >= 0xFFFFFFFF)
    {
      v112 = 256;
    }

    else
    {
      v112 = v111;
    }

    v304 = v112;
  }

  else
  {
    v304 = 256;
  }

  v113 = 1000000000;
  v114 = _simple_getenv();
  if (v114)
  {
    v115 = strtol(v114, 0, 10);
    if (v115 >= 0)
    {
      v113 = 1000000 * v115;
    }
  }

  v284 = v336.denom;
  v285 = v336.numer;
  v313 = v24;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_243;
  }

  v116 = _simple_getenv();
  if (!v116)
  {
    goto LABEL_243;
  }

  v117 = strtol(v116, 0, 10);
  if (v117 > 1)
  {
    malloc_report(3u, "MallocDeferredReclaim must be one of 0,1 - got %ld\n");
LABEL_243:
    v118 = 0;
    v119 = 0;
    goto LABEL_244;
  }

  v118 = v117 == 1;
  v119 = 16 * v118;
LABEL_244:
  if (malloc_internal_security_policy == 1)
  {
    v120 = _simple_getenv();
    if (v120)
    {
      strtol(v120, 0, 10);
    }
  }

  v308 = v64;
  if (malloc_internal_security_policy == 1)
  {
    v121 = _simple_getenv();
    if (v121)
    {
      strtol(v121, 0, 10);
    }
  }

  v297 = mach_vm_reclaim_round_capacity();
  v296 = mach_vm_reclaim_round_capacity();
  v122 = _simple_getenv();
  if (v122)
  {
    v123 = strtol(v122, 0, 10);
    if (v123 > 1)
    {
      malloc_report(3u, "MallocLargeCache must be 0 or 1.\n");
    }

    else
    {
      v118 = v123 == 1;
      v119 = 16 * v118;
    }
  }

  if (v53)
  {
    v124 = v119;
  }

  else
  {
    v124 = 0;
  }

  v316 = v124;
  if (malloc_internal_security_policy == 1)
  {
    v125 = _simple_getenv();
    if (v125)
    {
      v126 = strtol(v125, 0, 10);
      if (v126 >> 16)
      {
        malloc_report(3u, "xzm: unsupported value for MallocXzoneHugeCacheSize (%ld)");
      }

      else
      {
        v316 = v126;
      }
    }
  }

  v127 = v53 & v118;
  if (malloc_internal_security_policy != 1)
  {
    v298 = 0xFFFFFFFFLL;
    goto LABEL_269;
  }

  v128 = _simple_getenv();
  if (!v128)
  {
LABEL_268:
    v298 = 0xFFFFFFFFLL;
    goto LABEL_269;
  }

  v129 = strtol(v128, 0, 10);
  if (HIDWORD(v129))
  {
    malloc_report(3u, "xzm: unsupported value for MallocXzoneHugeCacheMaxEntryBytes (%ld)");
    goto LABEL_268;
  }

  v298 = v129;
LABEL_269:
  v130 = v127;
  if (malloc_internal_security_policy == 1)
  {
    v131 = _simple_getenv();
    v130 = v127;
    if (v131)
    {
      v132 = strtol(v131, 0, 10);
      if (v132 > 1)
      {
        malloc_report(3u, "MallocXzoneDeferTiny must be one of 0,1 - got %ld\n");
        v130 = v127;
      }

      else
      {
        v130 = v132 == 1;
      }
    }
  }

  v330 = v127;
  if (malloc_internal_security_policy == 1)
  {
    v133 = _simple_getenv();
    v330 = v127;
    if (v133)
    {
      v134 = strtol(v133, 0, 10);
      if (v134 > 1)
      {
        malloc_report(3u, "MallocXzoneDeferSmall must be one of 0,1 - got %ld\n");
        v135 = v127;
      }

      else
      {
        v135 = v134 == 1;
      }

      v330 = v135;
    }
  }

  if (malloc_internal_security_policy == 1)
  {
    v136 = _simple_getenv();
    if (v136)
    {
      v137 = strtol(v136, 0, 10);
      if (v137 > 1)
      {
        malloc_report(3u, "MallocXzoneDeferLarge must be one of 0,1 - got %ld\n");
      }

      else
      {
        v127 = v137 == 1;
      }
    }
  }

  v138 = v328;
  if (v315 == 34)
  {
    v138 = 1;
  }

  if (v138 == 1)
  {
    v139 = v324;
    if (malloc_space_efficient_enabled)
    {
      v140 = 0;
      v316 = 0;
      v130 = 0;
      v141 = 0;
      v127 = 0;
    }

    else
    {
      v140 = v316 != 0;
      if (v316)
      {
        v144 = v127;
      }

      else
      {
        v144 = 1;
      }

      if ((v144 & 1) == 0)
      {
        v292 = v316 != 0;
        malloc_report(3u, "Huge cache requires deferred reclamation for large.\n");
        v142 = v130 | v330;
        goto LABEL_300;
      }

      v141 = v330;
    }
  }

  else
  {
    v140 = 0;
    v316 = 0;
    v130 = 0;
    v141 = 0;
    v127 = 0;
    v139 = v324;
  }

  v142 = v130 | v141;
  v330 = v141;
  v292 = v140;
  if ((v127 & 1) == 0 && v142)
  {
    v143 = v130 | v141;
    malloc_report(3u, "Deferred reclamation cannot be used for xzones without large\n");
    v142 = v143;
LABEL_300:
    v127 = 1;
  }

  v328 = v130;
  v283 = v142;
  if (malloc_internal_security_policy == 1)
  {
    v145 = _simple_getenv();
    if (v145)
    {
      v146 = v329 < 0x22;
      v147 = strtol(v145, 0, 10);
      v148 = v147 != 0;
      if (v147 >= 2)
      {
        v148 = v146;
      }

      v302 = v148;
    }
  }

  v149 = malloc_common_value_for_key_copy(v325, "xzone_guard_pages", v339, 0x100uLL);
  if (v149)
  {
    v150 = strtol(v149, 0, 10);
    if (v150 <= 1)
    {
      if (v150)
      {
        goto LABEL_309;
      }

LABEL_313:
      v325 = 0;
      v153 = 0;
      v154 = 0;
      v290 = 0;
      v291 = 0;
      v155 = 0;
      goto LABEL_343;
    }

    malloc_report(3u, "%s must be 0 or 1.\n");
    if (!v302)
    {
      goto LABEL_313;
    }
  }

  else if (!v302)
  {
    goto LABEL_313;
  }

LABEL_309:
  v152 = malloc_internal_security_policy != 1 || (v151 = _simple_getenv()) == 0 || strtol(v151, 0, 10) != 0;
  v291 = v152;
  if (malloc_internal_security_policy == 1)
  {
    v156 = _simple_getenv();
    v155 = 8;
    if (v156)
    {
      v157 = strtol(v156, 0, 10);
      if (v157 <= 0)
      {
        v155 = 8;
      }

      else
      {
        v155 = v157;
      }
    }
  }

  else
  {
    v155 = 8;
  }

  if (malloc_internal_security_policy == 1 && (v158 = _simple_getenv()) != 0)
  {
    v159 = strtol(v158, 0, 10);
    if (v159 <= 0)
    {
      v160 = 64;
    }

    else
    {
      v160 = v159;
    }

    v290 = v160;
  }

  else
  {
    v290 = 64;
  }

  if (malloc_internal_security_policy == 1)
  {
    v161 = _simple_getenv();
    v154 = 3;
    if (v161)
    {
      v162 = strtol(v161, 0, 10);
      if (v162 <= 0)
      {
        v154 = 3;
      }

      else
      {
        v154 = v162;
      }
    }
  }

  else
  {
    v154 = 3;
  }

  if (malloc_internal_security_policy == 1)
  {
    v163 = _simple_getenv();
    v153 = 32;
    if (v163)
    {
      v164 = strtol(v163, 0, 10);
      if (v164 <= 0)
      {
        v153 = 32;
      }

      else
      {
        v153 = v164;
      }
    }
  }

  else
  {
    v153 = 32;
  }

  v325 = 1;
LABEL_343:
  v280 = v153;
  if (malloc_internal_security_policy == 1 && (v165 = _simple_getenv()) != 0)
  {
    v166 = strtol(v165, 0, 10);
    if (v166 >= 0x40)
    {
      v167 = 0;
    }

    else
    {
      v167 = v166;
    }

    v302 = v167;
  }

  else
  {
    v302 = 0;
  }

  if (malloc_internal_security_policy == 1 && (v168 = _simple_getenv()) != 0)
  {
    v169 = strtol(v168, 0, 10);
    v170 = 2;
    if (v169 < 2)
    {
      v170 = v169;
    }

    v301 = v170;
  }

  else
  {
    v301 = 0;
  }

  v282 = v155;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_362;
  }

  v171 = _simple_getenv();
  if (!v171)
  {
    goto LABEL_362;
  }

  v172 = strtol(v171, 0, 10);
  if (!v172)
  {
    goto LABEL_362;
  }

  if (v172 != 1)
  {
    malloc_report(3u, "MallocXzoneDataOnly must be 0 or 1.\n");
LABEL_362:
    v173 = 1;
    v174 = 4;
    goto LABEL_363;
  }

  v173 = 0;
  v174 = 2;
LABEL_363:
  v327 = v127;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_368;
  }

  v175 = _simple_getenv();
  if (!v175)
  {
    goto LABEL_368;
  }

  v176 = strtol(v175, 0, 10);
  if (v176 > 1)
  {
    malloc_report(3u, "MallocXzonePerClusterSegmentGroups must be 0 or 1.\n");
LABEL_368:
    v177 = 0;
    goto LABEL_369;
  }

  v177 = v176;
LABEL_369:
  v303 = v113;
  if (malloc_internal_security_policy != 1)
  {
    goto LABEL_373;
  }

  v178 = _simple_getenv();
  if (!v178)
  {
    goto LABEL_373;
  }

  v179 = strtol(v178, 0, 10);
  if (v179 - 1 >= 2)
  {
    malloc_report(3u, "Unsupported MallocXzoneAllocationFronts\n");
LABEL_373:
    v179 = 2;
  }

  if (malloc_internal_security_policy == 1 && (v180 = _simple_getenv()) != 0)
  {
    v181 = strtol(v180, 0, 10);
    if (v181 >= 3)
    {
      v182 = 0;
    }

    else
    {
      v182 = v181;
    }
  }

  else
  {
    v182 = 0;
  }

  v273[0] = v182;
  if (malloc_internal_security_policy == 1 && (v183 = _simple_getenv()) != 0)
  {
    v184 = strtol(v183, 0, 10);
    if (v184 >= v313 || v184 >= 3)
    {
      v186 = 0;
    }

    else
    {
      v186 = v184;
    }

    v299 = v186;
  }

  else
  {
    v299 = 0;
  }

  v187 = 40 * v139 + 81;
  v305 = v108;
  v281 = v154;
  v189 = malloc_internal_security_policy != 1 || (v188 = _simple_getenv()) == 0 || strtol(v188, 0, 10) != 0;
  v300 = v189;
  v276 = v174;
  v190 = (v315 == 34) & v177;
  if (v329 >= 0x22)
  {
    v190 = v177;
  }

  if (v190)
  {
    v191 = ncpuclusters;
  }

  else
  {
    v191 = 1;
  }

  v192 = v179 - 1;
  if ((v173 & (v179 > 1)) == 0)
  {
    v192 = 0;
  }

  v193 = v192 + v174;
  v274 = v191;
  v315 = v293;
  v194 = v187 * v293;
  v293 = 96 * v187 + 576;
  v195 = v293 + 32 * v194;
  v196 = v195 + 16 * v194;
  v197 = v196 + 400 + 16 * v187;
  v279 = v187;
  v198 = v197 + 80 * (v179 + 2);
  v329 = v191 * v193;
  v199 = v198 + 496 * v191 * v193;
  v277 = v179 + 2;
  v278 = v199 + 65856;
  plat = mvm_allocate_plat(0, v199 + 65856, 0, 1, 0x2000, 1);
  if (!plat)
  {
    xzm_main_malloc_zone_create_cold_6();
  }

  v201 = plat;
  numer = v321 * denom / numer;
  v202 = v317 * v286 / v287;
  v287 = plat + v195;
  denom = v202;
  v338 = v337;
  if (v294)
  {
    v203 = 2;
  }

  else
  {
    v203 = 0;
  }

  if (v330)
  {
    v204 = 4;
  }

  else
  {
    v204 = 0;
  }

  v205 = v204 | v203;
  if (v328)
  {
    v206 = 8;
  }

  else
  {
    v206 = 0;
  }

  if (v327)
  {
    v207 = 16;
  }

  else
  {
    v207 = 0;
  }

  v208 = v205 | v206 | v207;
  if (v300)
  {
    v209 = 32;
  }

  else
  {
    v209 = 0;
  }

  v210 = v208 | v209;
  v294 = v303 * v284 / v285;
  v211 = mfm_zone_address();
  v212 = v196 + v201;
  *v201 = 0u;
  *(v201 + 16) = 0u;
  v213 = v196 + v201 + 320;
  v214 = v196 + v201 + 360;
  v215 = v196 + 400 + v201;
  *(v201 + 32) = 0u;
  *(v201 + 48) = 0u;
  *(v201 + 64) = 0u;
  *(v201 + 80) = 0u;
  *(v201 + 96) = 0u;
  *(v201 + 112) = 0u;
  *(v201 + 128) = 0u;
  *(v201 + 144) = 0u;
  *(v201 + 160) = 0u;
  *(v201 + 176) = 0u;
  *(v201 + 192) = 0u;
  *(v201 + 208) = 0u;
  *(v201 + 224) = 0u;
  *(v201 + 240) = 0u;
  *(v201 + 256) = 0u;
  *(v201 + 272) = 0u;
  *(v201 + 288) = 0u;
  *(v201 + 304) = 0u;
  *(v201 + 320) = 0u;
  *(v201 + 336) = 0u;
  *(v201 + 352) = 0u;
  v216 = v278;
  *(v201 + 384) = v278;
  *(v201 + 392) = v338;
  *(v201 + 408) = 0;
  *(v201 + 409) = v210;
  v217 = v276;
  *(v201 + 410) = v277;
  *(v201 + 411) = v217;
  *(v201 + 412) = v193;
  *(v201 + 413) = v329;
  *(v201 + 414) = 5;
  *(v201 + 415) = v179;
  *(v201 + 416) = v211;
  *(v201 + 424) = v302;
  *(v201 + 425) = 40;
  v218 = v324;
  *(v201 + 426) = v324;
  v219 = v323;
  *(v201 + 427) = v323;
  *(v201 + 428) = 0;
  *(v201 + 432) = v212;
  *(v201 + 440) = v213;
  *(v201 + 448) = v214;
  *(v201 + 456) = v215;
  *(v201 + 464) = v197 + v201;
  *(v201 + 472) = v198 + v201;
  *(v201 + 480) = v199 + v201;
  *(v201 + 488) = v201 + 320 + v199;
  *(v201 + 496) = 0;
  *(v201 + 504) = 0;
  *(v201 + 512) = 0;
  *(v201 + 516) = 1;
  *(v201 + 524) = 0;
  *(v201 + 518) = 0;
  *(v201 + 532) = v325;
  *(v201 + 533) = v291;
  *(v201 + 534) = v282;
  *(v201 + 535) = v290;
  LOBYTE(v212) = v280;
  *(v201 + 536) = v281;
  *(v201 + 537) = v212;
  *(v201 + 568) = 0;
  v220 = v295;
  *(v201 + 538) = 0u;
  *(v201 + 554) = 0u;
  _xzm_initialize_const_zone_data(v201, v216, 1, v279, v315, v201 + 576, v201 + v293, 0, v309, v308, v313, v320, v319, v310, v318, v307, v311, numer, denom, v306, v220, v301 & 1, v299, v287);
  *(v201 + 368) = v326;
  *(v201 + 369) = v322;
  *(v201 + 370) = v334;
  *(v201 + 374) = v335;
  *(v201 + 376) = v312;
  if (((v283 || v292) | v327) == 1)
  {
    v221 = xzm_reclaim_init(v201);
    v222 = v304;
    v223 = v316;
    v224 = v328;
    if (!v221)
    {
      v327 = 0;
      v330 = 0;
      v224 = 0;
      v223 = 0;
      *(v201 + 409) &= 0xE3u;
    }
  }

  else
  {
    v327 = 0;
    v222 = v304;
    v223 = v316;
    v224 = v328;
  }

  v225 = v314;
  *(v201 + 249) = v314;
  *(v201 + 252) = v305;
  *(v201 + 256) = v222;
  *(v201 + 264) = v294;
  if (v225)
  {
    inited = pthread_key_init_np();
    if (inited)
    {
      xzm_main_malloc_zone_create_cold_4(inited);
    }
  }

  v328 = v224;
  v227 = v218 + 2;
  memcpy(*(v201 + 432), &_xzm_bin_sizes, 0x140uLL);
  for (i = 0; i != 40; ++i)
  {
    *(*(v201 + 440) + i) = v227;
  }

  v229 = vdupq_n_s64(40 * v218 + 80);
  v230 = 40 * v218 + 84;
  v231 = xmmword_18E562DF0;
  v232 = xmmword_18E562E00;
  v233 = (*(v201 + 456) + 40);
  v234 = vdupq_n_s64(4uLL);
  do
  {
    v235 = vmovn_s64(vcgeq_u64(v229, v232));
    if (vuzp1_s16(v235, *v229.i8).u8[0])
    {
      *(v233 - 8) = 0;
    }

    if (vuzp1_s16(v235, *&v229).i8[2])
    {
      *(v233 - 4) = 0;
    }

    if (vuzp1_s16(*&v229, vmovn_s64(vcgeq_u64(v229, *&v231))).i32[1])
    {
      *v233 = 0;
      v233[4] = 0;
    }

    v231 = vaddq_s64(v231, v234);
    v232 = vaddq_s64(v232, v234);
    v233 += 16;
    v230 -= 4;
  }

  while (v230);
  v236 = 0;
  do
  {
    if (v230 == 2)
    {
      v237 = v179;
    }

    else
    {
      v237 = 1;
    }

    if (v237)
    {
      v238 = 0;
      v239 = *(v201 + 464) + 80 * v236;
      do
      {
        *v239 = v230;
        *(v239 + 1) = v238;
        *(v239 + 8) = v201;
        *(v239 + 16) = 0;
        ++v238;
        v239 += 80;
      }

      while (v237 != v238);
      v236 += v238;
    }

    ++v230;
  }

  while (v230 != 3);
  if (v275)
  {
    xzm_main_malloc_zone_init_range_groups(v201);
  }

  if ((*(v201 + 409) & 1) == 0)
  {
    v179 = 1;
    *(v201 + 415) = 1;
  }

  v240 = v329;
  if (v274)
  {
    v241 = 0;
    v242 = v298 >> 14;
    if (v329 <= 1)
    {
      v240 = 1;
    }

    v243 = 40;
    while (1)
    {
      v244 = *(v201 + 472);
      v245 = v244 + 496 * v241;
      v246 = v241 % v193;
      if (v241 % v193 >= 3)
      {
        LOBYTE(v247) = 3;
      }

      else
      {
        v247 = v241 % v193;
      }

      *v245 = v247;
      *(v245 + 4) = 0;
      *(v245 + 8) = 0;
      if (v246 >= 2)
      {
        break;
      }

      v248 = *(v201 + 464);
      *(v245 + 16) = v248;
      *(v245 + 1) = *(v248 + 1);
      *(v245 + 24) = v201;
      if (v241 != 1)
      {
        goto LABEL_467;
      }

      v249 = v245 + 464;
      *(v245 + 480) = v223;
      *(v245 + 482) = 0;
      *(v245 + 484) = v242;
      *(v245 + 488) = 0;
      v250 = 472;
      *(v245 + 464) = 0;
LABEL_466:
      *(v245 + v250) = v249;
LABEL_467:
      v253 = 0;
      v254 = (v244 + v243);
      do
      {
        *v254 = _xzm_span_queue_slice_counts[v253];
        v254 += 4;
        ++v253;
      }

      while (v253 != 27);
      ++v241;
      v243 += 496;
      if (v241 == v240)
      {
        goto LABEL_470;
      }
    }

    if (v246 == 2)
    {
      v252 = *(v245 + 16);
      if (v252)
      {
LABEL_465:
        *(v245 + 1) = *(v252 + 1);
        v250 = 24;
        v249 = v201;
        goto LABEL_466;
      }

      if (v179 == 1)
      {
        v251 = 2;
      }

      else
      {
        if (v179 != 2)
        {
          xzm_main_malloc_zone_create_cold_5();
        }

        v251 = v341[0] & 1 | 2;
      }

      v252 = *(v201 + 464) + 80 * v251;
    }

    else
    {
      v252 = *(v201 + 464) + 80 * v246 - 80;
    }

    *(v245 + 16) = v252;
    goto LABEL_465;
  }

LABEL_470:
  v323 = v219;
  v255 = *(v201 + 480);
  xzm_metapool_init(v255 + 256, 4, 1, 0x4000u, 16, 0x10u, 0);
  xzm_metapool_init(*(v201 + 480), 0, 1, 0x80000u, 0x4000, 0x4000u, v255 + 256);
  xzm_metapool_init(*(v201 + 480) + 64, 1, 1, 0x40000u, 0x10000, 0x10000u, v255 + 256);
  xzm_metapool_init(*(v201 + 480) + 128, 2, 1, 0x4000u, 16, 0x10u, 0);
  v256 = *(v201 + 480);
  v257 = (12 * v227) | 1;
  *(v201 + 212) = v257;
  xzm_metapool_init(v256 + 192, 3, 11, 0x8000u, 0, 24 * v257 + 40, v255 + 256);
  _xzm_initialize_xzone_data(v201, (v201 + 532), v341, *(v201 + 411) == 2);
  if (_simple_getenv())
  {
    v333 = 0;
    v332 = 4;
    sysctlbyname("vm.reclaim.enabled", &v333, &v332, 0, 0);
    v258 = *(v201 + 464);
    if (malloc_internal_security_policy == 1)
    {
      v259 = v258[3];
      v260 = v258[4];
      v261 = v258[23];
      v262 = v258[24];
      if (*(v201 + 415) < 2u)
      {
        goto LABEL_478;
      }

      v265 = v258[33];
    }

    else
    {
      v263 = v258[4];
      v264 = v258[24];
      if (*(v201 + 415) < 2u)
      {
        goto LABEL_478;
      }
    }

    v266 = v258[34];
LABEL_478:
    *(v201 + 416);
    if (LOBYTE(v273[0]) <= 2u)
    {
      v267 = off_1E7260FC8[LOBYTE(v273[0])];
    }

    v268 = off_1E7260FC8[v309];
    v269 = off_1E7260FC8[v313];
    if (v299 <= 2u)
    {
      v270 = off_1E7260FC8[v299];
    }

    malloc_report(6u, "XZM Config:\n\tData Only: %d\n\tAllocation Fronts: %d\n\tGuards Enabled: %d\n\tScribble: %d\n\tTiny/Small Batch Max: %d\n\tDefer Tiny: %d\n\tDefer Small: %d\n\tDefer Large: %d\n\tHuge Cache Size: %d\n\tHuge Cache Max Entry Bytes: %u\n\tReclaim Buffer Count: %u/%u (%s)\n\tSmall Freelist: %u\n\tData Range: 0x%llx/%lu\n\tPointer Range 1: 0x%llx/%lu\n\tPointer Range 2: 0x%llx/%lu\n\tEarly Allocator: %s\n\tSegment Deallocate: %u\n\tMTE (enabled/data/max size): %d/%d/%llu\n\tInitial Slot Config: %s/%s (Chunk, Size Thresholds: %u, %u)\n\tInitial List Config: %s/%s\n\tList Upgrade Thresholds: %d/%d, %d/%d\n\tSlot Upgrade Thresholds: %d/%d, %d/%d\n\tTiny Thrash Threshold: %llu ms\n\tSmall Thrash Threshold: %llu ms, %llu bytes\n\tThread Caching: %s (%u allocs, %u contentions, %llu ms)\n\tPointer Bucket Count: %lu\n");
  }

  v271 = *MEMORY[0x1E69E9840];
  return v201;
}

uint64_t default_zone_batch_malloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 80))();
}

void pgm_free_definite_size(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    pgm_free_cold_1(a1, a2);
  }

  else
  {
    v3 = *(a1[25] + 120);

    v3();
  }
}

uint64_t mfm_initialize()
{
  v0 = malloc_has_sec_transition & malloc_sec_transition_early_malloc_support;
  mfm_memtag_enabled = malloc_has_sec_transition & malloc_sec_transition_early_malloc_support;
  pages_plat = mvm_allocate_pages_plat(0x400000uLL, 0, 1073741827, 1);
  if (!pages_plat)
  {
    mfm_initialize_cold_2();
  }

  v2 = pages_plat;
  if (v0)
  {
    v3 = 117465088;
  }

  else
  {
    v3 = 117456896;
  }

  address = pages_plat;
  result = mach_vm_map(*MEMORY[0x1E69E9A60], &address, 0x400000uLL, 0, v3, 0, 0, 0, 3, 7, 1u);
  if (result)
  {
    mfm_initialize_cold_1(result);
  }

  *v2 = 0;
  *(v2 + 216) = 0x8000000000000000;
  v5 = (v2 + 40);
  v6 = v2 + 32;
  v7 = -176;
  do
  {
    v8 = (v7 + 208) >> 4;
    *(v5 - 1) = v8;
    *v5 = v8;
    v5 += 2;
    v6 += 16;
    v7 += 16;
  }

  while (v7);
  *(v2 + 224) |= 1uLL;
  atomic_store(v2, &mfm_arena);
  return result;
}

uint64_t pgm_malloc_type_realloc(uint64_t a1, const void *a2, unint64_t a3)
{
  if (a2)
  {
    if (*MEMORY[0x1E69E9AC8] < a3 || *(a1 + 16684) == *(a1 + 212))
    {
      goto LABEL_13;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 880);
    if (v8 == -1)
    {
      goto LABEL_13;
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
LABEL_13:
      if (*(a1 + 248) > a2 || *(a1 + 256) <= a2)
      {
        v11 = *(*(a1 + 200) + 176);

        return v11();
      }

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = 0;
    v15 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 16680), &v14, *(v15 + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v16 = reallocate(a1, a2, a3, v13);
    v17 = *(v15 + 24);
    v18 = v17;
    atomic_compare_exchange_strong_explicit((a1 + 16680), &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 != v17)
    {
      os_unfair_lock_unlock((a1 + 16680));
    }

    return v16;
  }

  else
  {

    return pgm_malloc_type_malloc(a1, a3);
  }
}

mach_vm_address_t mvm_allocate_pages_plat(unint64_t a1, int a2, int a3, int a4)
{
  v5 = *MEMORY[0x1E69E9AC8];
  if (((a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) != 0)
  {
    v6 = (a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9AC8];
  }

  if ((a3 & 3) != 0)
  {
    if ((a3 & 1) != 0 && *MEMORY[0x1E69E9AC0] < a2)
    {
      if (*MEMORY[0x1E69E9AB0] > v5)
      {
        v5 = *MEMORY[0x1E69E9AB0];
      }

      v6 += (1 << a2) + v5;
    }

    else
    {
      if (*MEMORY[0x1E69E9AB0] > v5)
      {
        v5 = *MEMORY[0x1E69E9AB0];
      }

      v6 += v5 << ((a3 & 3) == 3);
    }
  }

  if ((a3 & 0x80) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6 < a1)
  {
    return 0;
  }

  v28 = a3 & 3;
  v8 = -1 << a2;
  v9 = v7 | (a4 << 24);
  v10 = (4 * a3) & 0x2000;
  v11 = MEMORY[0x1E69E9A60];
  if ((a3 & 0x40000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  for (i = entropic_address; ; i = *MEMORY[0x1E69E9AC8])
  {
    address = i;
    v13 = mach_vm_map(*v11, &address, v6, ~v8, v9 | v10, 0, 0, 0, 3, 7, 1u);
    if ((a3 & 0x40000000) == 0 && v13 == 3)
    {
      address = *MEMORY[0x1E69E9AC8];
      v13 = mach_vm_map(*v11, &address, v6, ~v8, v9 | v10, 0, 0, 0, 3, 7, 1u);
    }

    if (v13)
    {
      if (v13 == 3)
      {
        return 0;
      }

      v22 = "can't allocate region\n:*** mach_vm_map(size=%lu, flags: %x) failed (error code=%d)\n";
      goto LABEL_44;
    }

    v14 = address;
    if ((a3 & 0x40000000) != 0)
    {
      goto LABEL_34;
    }

    if (address + v6 <= entropic_limit)
    {
      break;
    }

    v15 = entropic_address;
    if (!(entropic_address >> 28) || entropic_address - 0x10000000 < entropic_base)
    {
      break;
    }

    mach_vm_deallocate(*v11, address, v6);
    atomic_compare_exchange_strong_explicit(&entropic_address, &v16, v15 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    ;
  }

  if (address < entropic_address)
  {
    v17 = entropic_address;
    if (entropic_address >> 28)
    {
      if (entropic_address - 0x10000000 >= entropic_base)
      {
        atomic_compare_exchange_strong_explicit(&entropic_address, &v18, v17 - 0x10000000, memory_order_relaxed, memory_order_relaxed);
      }
    }
  }

LABEL_34:
  if (!v28)
  {
    return v14;
  }

  if ((a3 & 1) != 0 && *MEMORY[0x1E69E9AC0] < a2)
  {
    if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
    {
      v19 = *MEMORY[0x1E69E9AC8];
    }

    else
    {
      v19 = *MEMORY[0x1E69E9AB0];
    }

    v20 = 1 << a2;
    v21 = (v19 + v14 + v20 - 1) & -v20;
    if (mach_vm_deallocate(*v11, v14, v21 - (v19 + v14)))
    {
      v22 = "can't unmap excess guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n";
LABEL_44:
      malloc_zone_error(a3, 0, v22);
      return 0;
    }

    if (v20 == v21 - v14)
    {
      v14 = (v19 + v14 + v20 - 1) & -v20;
    }

    else
    {
      v25 = mach_vm_deallocate(*v11, v6 - (v20 - v21), v20 - (v21 - v14));
      v14 = (v19 + v14 + v20 - 1) & -v20;
      if (v25)
      {
        v22 = "can't unmap excess trailing guard region\n*** mach_vm_deallocate(addr=%p, size=%lu) failed (code=%d)\n";
        goto LABEL_44;
      }
    }
  }

  else if (a3)
  {
    v24 = *MEMORY[0x1E69E9AB0];
    if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
    {
      v24 = *MEMORY[0x1E69E9AC8];
    }

    v14 += v24;
  }

  mvm_protect_plat(v14, a1, 0, a3);
  return v14;
}

void mvm_protect_plat(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = MEMORY[0x1E69E9AB0];
  v9 = MEMORY[0x1E69E9AC8];
  if ((a4 & 9) == 1)
  {
    v10 = *MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8] ? *MEMORY[0x1E69E9AC8] : *MEMORY[0x1E69E9AB0];
    if (mprotect((a1 - v10), v10, a3))
    {
      if (*v8 <= *v9)
      {
        v11 = *v9;
      }

      malloc_report(3u, "*** can't mvm_protect(%u) region for prelude guard page at %p\n");
    }
  }

  if ((a4 & 0x12) == 2)
  {
    v12 = a1 + a2;
    if (*v8 <= *v9)
    {
      v13 = *v9;
    }

    else
    {
      v13 = *v8;
    }

    if (mprotect(((v12 + *v9 - 1) & -*v9), v13, a3))
    {
      malloc_report(3u, "*** can't mvm_protect(%u) region for postlude guard page at %p\n");
    }
  }
}

void _xzm_xzone_free_freelist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 48);
  if (v8 <= 0x400)
  {
    bzero(a4, *(a2 + 48));
  }

  if (v8 > 0x1000 || (*(a2 + 87) & 2) == 0)
  {
    v11 = *(a1 + 320) ^ a4;
    if (v8 > 0x1000)
    {
      v11 &= 0xF0FFFFFFFFFFFFFFLL;
    }

    v10 = a4;
  }

  else
  {
    v10 = _xzm_xzone_block_memtag_retag(a4, v8);
    v11 = *(a1 + 320) ^ v10;
  }

  *v10 = v11;
  if (*(a2 + 48) <= 0x1000uLL)
  {
    v12 = (a4 >> 4) & 0x3FF;
  }

  else
  {
    v12 = ((v10 + 1431650304 * ((a3 - (a3 & 0xFFFFC000 | 0x838)) >> 4) - *((a3 & 0xFFFFFFFFFFFFC000) + 0x28)) >> 10) & 0x7FF;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(a2 + 80);
  v18 = *(a2 + 68);
  v19 = 1;
  v20 = *a3;
  if ((*a3 & 0x40000000) != 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v21 = (v20 & 0xFFFFFFFFBFFFFFFFLL) + 0x100000000000;
    v22 = (v20 >> 11) & 0x7FF;
    if (v22 + 1 == v18)
    {
      if ((v14 & 1) == 0)
      {
        v16 = *(a1 + 216) + 96 * v17;
        v23 = (v20 >> 22) & 0x3F;
        if (v23)
        {
          if (v23 != 63)
          {
            v24 = *(a1 + 232);
            v25 = *(v16 + 85);
            if (v25 == 1)
            {
              v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
            }

            else
            {
              LOBYTE(v26) = v25 == 2 ? _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) : 0;
            }

            if ((*(v24 + 16 * v26 * *(a1 + 210) + 16 * *(v16 + 80)) & 0x7FFFFFFFFFFFLL) == 0)
            {
              v36 = a1;
              v28 = v16;
              v29 = v17;
              v15 = mach_absolute_time();
              v17 = v29;
              v16 = v28;
              a1 = v36;
              v13 = *(v36 + 224) + 32 * *(v36 + 210) * (v23 - 1) + 32 * *(v16 + 80);
              v19 &= v15 - *(v13 + 24) >= *(v36 + 312);
            }
          }
        }
      }

      v27 = 0;
      v14 = 1;
      if (~v20 & 0xFC00000) != 0 && (v19)
      {
        v27 = 0;
        v30 = v21 & 0xFFFFFFFFB0000000 | 0x7FF;
        v14 = 1;
        v19 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      if (v22)
      {
        goto LABEL_25;
      }

      if ((v20 & 0x7FF) != 0x400)
      {
        _xzm_free_abort(v10);
      }

      if ((v20 & 0xFC00000) != 0)
      {
LABEL_25:
        v27 = 0;
      }

      else
      {
        v21 |= 0x10000000uLL;
        v16 = *(a1 + 216) + 96 * v17;
        v27 = 1;
      }
    }

    *(v10 + 8) = v20 & 0x7FF | (((v20 >> 31) & 0x1FFF) << 11) & 0xFFFFFFE000FFFFFFLL | (((v20 >> 44) & 0xFFF) << 24) & 0xFFFFFFE000FFFFFFLL;
    v30 = v12 & 0xFFFFF8007FFFFFFFLL | (((v20 >> 44) & 0xFFF) << 31) | v21 & 0xFFFFF0007FC00000 | (v21 + 2048) & 0x3FF800;
LABEL_35:
    v31 = v20;
    atomic_compare_exchange_strong_explicit(a3, &v31, v30, memory_order_release, memory_order_relaxed);
    if (v31 == v20)
    {
      break;
    }

    v20 = v31;
    if ((v31 & 0x40000000) != 0)
    {
      do
      {
LABEL_37:
        _xzm_walk_lock_wait(a1);
        v17 = v32;
        v20 = *a3;
      }

      while ((*a3 & 0x40000000) != 0);
    }
  }

  if (v15)
  {
    *(v13 + 24) = v15;
  }

  if ((~v30 & 0x7FF) != 0)
  {
    if (v27)
    {
      v35 = *(a1 + 232);

      _xzm_chunk_list_slot_push(a1, v16, v35, a3);
    }
  }

  else
  {
    v33 = *(a1 + 240);
    if (!v33)
    {
      v33 = a1;
    }

    v34 = *(v33 + 424);
    if (*(v33 + 424))
    {

      _xzm_chunk_batch_list_push(a1, v16, a3, v34);
    }

    else
    {

      _xzm_xzone_madvise_freelist_chunk(a1, v16, a3);
    }
  }
}

uint64_t _malloc_zone_valloc(uint64_t a1, unint64_t a2, char a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 904);
  if (!v8)
  {
    *(StatusReg + 904) = (v3 >> 2);
  }

  v9 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (malloc_absolute_max_size >= a2)
  {
    v10 = (*(a1 + 40))(a1, a2);
    if (malloc_logger)
    {
      malloc_logger(10, a1, a2, 0, v10, 0);
    }

    if (malloc_simple_stack_logging == 1)
    {
      malloc_report(0x325u, "valloc (%p/%llu): ");
      if (!v9)
      {
LABEL_14:
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    else if (!v9)
    {
      goto LABEL_14;
    }

    kdebug_trace();
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v10)
    {
      return v10;
    }

    goto LABEL_21;
  }

  v10 = 0;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_19:
  *(StatusReg + 904) = 0;
  if (v10)
  {
    return v10;
  }

LABEL_21:
  if (a3)
  {
    **(StatusReg + 8) = 12;
  }

  return v10;
}

uint64_t _xzm_initialize_const_zone_data(uint64_t result, uint64_t a2, __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, char a11, int a12, unsigned int a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char a23, uint64_t a24)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = xzm_malloc_zone_size;
  *(result + 24) = xzm_malloc_zone_malloc;
  *(result + 32) = xzm_malloc_zone_calloc;
  *(result + 40) = xzm_malloc_zone_valloc;
  *(result + 48) = xzm_malloc_zone_free;
  *(result + 56) = xzm_malloc_zone_realloc;
  *(result + 64) = xzm_malloc_zone_destroy;
  *(result + 72) = 0;
  *(result + 80) = malloc_zone_batch_malloc_fallback;
  *(result + 88) = malloc_zone_batch_free_fallback;
  *(result + 96) = &xzm_malloc_zone_introspect;
  *(result + 104) = 16;
  *(result + 112) = xzm_malloc_zone_memalign;
  *(result + 120) = xzm_malloc_zone_free_definite_size;
  *(result + 128) = malloc_zone_pressure_relief_fallback;
  *(result + 136) = xzm_malloc_zone_claimed_address;
  *(result + 144) = xzm_malloc_zone_try_free_default;
  *(result + 152) = xzm_malloc_zone_malloc_with_options;
  *(result + 160) = xzm_malloc_zone_malloc_type_malloc;
  *(result + 168) = xzm_malloc_zone_malloc_type_calloc;
  *(result + 176) = xzm_malloc_zone_malloc_type_realloc;
  *(result + 184) = xzm_malloc_zone_malloc_type_memalign;
  *(result + 192) = xzm_malloc_zone_malloc_type_malloc_with_options;
  *(result + 200) = a2;
  *(result + 208) = a3;
  *(result + 210) = a4;
  *(result + 211) = a5;
  *(result + 212) = 0;
  *(result + 216) = a6;
  *(result + 224) = a7;
  *(result + 232) = a24;
  *(result + 240) = a8;
  *(result + 248) = (4 * (a9 & 3)) & 0xCC | (16 * (a11 & 3)) | a23 & 3;
  *(result + 250) = a22;
  *(result + 252) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = a12;
  *(result + 276) = a13;
  *(result + 284) = a14;
  *(result + 288) = a10;
  *(result + 292) = a15;
  *(result + 296) = a16;
  *(result + 304) = a17;
  *(result + 312) = a18;
  *(result + 320) = 0;
  *(result + 328) = a19;
  *(result + 336) = a20;
  *(result + 344) = 0;
  *(result + 352) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 360) = a21;
  if ((a21 & 0xA0) != 0)
  {
    *(result + 24) = xzm_malloc_zone_malloc_slow;
    *(result + 32) = xzm_malloc_zone_calloc_slow;
    *(result + 40) = xzm_malloc_zone_valloc_slow;
    *(result + 48) = xzm_malloc_zone_free_slow;
    *(result + 56) = xzm_malloc_zone_realloc_slow;
    *(result + 112) = xzm_malloc_zone_memalign_slow;
    *(result + 120) = xzm_malloc_zone_free_definite_size_slow;
    *(result + 144) = xzm_malloc_zone_try_free_default_slow;
    *(result + 152) = xzm_malloc_zone_malloc_with_options_slow;
    *(result + 160) = xzm_malloc_zone_malloc_type_malloc_slow;
    *(result + 168) = xzm_malloc_zone_malloc_type_calloc_slow;
    *(result + 176) = xzm_malloc_zone_malloc_type_realloc_slow;
    *(result + 184) = xzm_malloc_zone_malloc_type_memalign_slow;
    *(result + 192) = xzm_malloc_zone_malloc_type_malloc_with_options_slow;
  }

  return result;
}

void *__cdecl malloc_type_valloc(size_t size, malloc_type_id_t type_id)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 904);
  if (type_id <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = type_id;
  }

  *(StatusReg + 904) = v4;
  if (malloc_interposition_compat == 1 && v3 == 0)
  {
    result = j__valloc(size);
  }

  else
  {
    result = _malloc_zone_valloc(default_zone, size, 1);
  }

  *(StatusReg + 904) = v3;
  return result;
}

uint64_t default_zone_valloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 40))();
}

uint64_t _xzm_reclaim_id_cache_init(uint64_t *a1)
{
  v2 = *a1;
  result = mach_vm_reclaim_ring_capacity();
  if (result)
  {
    _xzm_reclaim_id_cache_init_cold_1();
  }

  if (a1[4])
  {
    a1[3];
  }

  else
  {
    v4 = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    pages = mvm_allocate_pages(v4, 0, 64, 1);
    result = a1[4];
    if (result)
    {
      result = mvm_deallocate_pages(result, 8 * a1[3], 64);
    }

    a1[3] = v4 >> 3;
    a1[4] = pages;
  }

  a1[2] = 0;
  return result;
}

void xzm_main_malloc_zone_init_range_groups(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v52 = 255;
  if (sysctlbyname("vm.malloc_ranges", __str, &v52, 0, 0) == -1)
  {
    v25 = *__error();
    if (v25 == 2)
    {
      goto LABEL_71;
    }

    if (v25 != 1)
    {
      xzm_main_malloc_zone_init_range_groups_cold_24();
    }

    v26 = "sysctlbyname(vm.malloc_ranges) denied\n";
LABEL_58:
    malloc_report(3u, v26);
    goto LABEL_71;
  }

  __str[v52] = 0;
  __endptr = __str;
  v2 = strtoull(__str, &__endptr, 16);
  ++__endptr;
  v3 = strtoull(__endptr, &__endptr, 16);
  ++__endptr;
  v4 = strtoull(__endptr, &__endptr, 16);
  ++__endptr;
  v5 = strtoull(__endptr, &__endptr, 16);
  if (*(a1 + 415) != 2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_1(*(a1 + 415));
  }

  if (!v2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_23();
  }

  if (v3 < v2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_22();
  }

  if (v4 < v3)
  {
    xzm_main_malloc_zone_init_range_groups_cold_21();
  }

  if (v5 < v4)
  {
    xzm_main_malloc_zone_init_range_groups_cold_20();
  }

  v6 = (v2 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  v7 = v3 & 0xFFFFFFFFFE000000;
  if ((v3 & 0xFFFFFFFFFE000000) < v6)
  {
    v6 = v3 & 0xFFFFFFFFFE000000;
  }

  v8 = (v4 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  if (v7 > v8)
  {
    xzm_main_malloc_zone_init_range_groups_cold_19();
  }

  v9 = v5 & 0xFFFFFFFFFE000000;
  if ((v5 & 0xFFFFFFFFFE000000) <= v8)
  {
    v9 = (v4 + 0x1FFFFFF) & 0xFFFFFFFFFE000000;
  }

  v10 = v9 - v6;
  v11 = v7 - v6;
  v12 = 0x100000000;
  if (v7 - v6 >= 0x100000000)
  {
    v11 = 0x100000000;
  }

  v13 = v9 - v8;
  if (v13 < 0x100000000)
  {
    v12 = v13;
  }

  v14 = v11 - v7 + v8 + v12;
  v22 = v10 > v14;
  v15 = v10 - v14;
  if (!v22)
  {
    xzm_main_malloc_zone_init_range_groups_cold_2();
  }

  if (!(v15 >> 34))
  {
    xzm_main_malloc_zone_init_range_groups_cold_18();
  }

  if ((v15 & 0x1FFFFFF) != 0)
  {
    xzm_main_malloc_zone_init_range_groups_cold_3();
  }

  v47 = v4 - v3;
  v16 = v7 - v11;
  v17 = v12 + v8;
  v18 = v6 + ((qword_1ED404330 % (((v15 - 0x400000000) >> 25) + 1)) << 25);
  if (v18 >= v16)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 + v18;
  v21 = v19 + v18 + 0x400000000;
  v22 = v19 + v18 < v16 && v21 > v16;
  v23 = !v22;
  v48 = v23;
  v49 = v17;
  if (v22)
  {
    v55[1] = v17;
    v56 = v17 - v16 + 0x400000000 + v20;
    v46 = v56;
    v24 = 2;
    v21 = v16;
  }

  else
  {
    v24 = 1;
  }

  v27 = 0;
  *__str = v20;
  v55[0] = v21;
  v28 = MEMORY[0x1E69E9A60];
  do
  {
    v52 = 0x202000000000000;
    v50 = *&__str[v27];
    v53 = v50;
    v29 = mach_vm_range_create(*v28, MACH_VM_RANGE_FLAVOR_V1, &v52, 0x18u);
    if (v29)
    {
      if (v29 == 46)
      {
        goto LABEL_71;
      }

      if (v29 != 53)
      {
        xzm_main_malloc_zone_init_range_groups_cold_17(v29);
      }

      v26 = "mach_vm_range_create() denied\n";
      goto LABEL_58;
    }

    __endptr = v50;
    v30 = mach_vm_map(*v28, &__endptr, *(&v50 + 1) - v50, 0, 0x4000, 0, 0, 0, 0, 0, 1u);
    if (v30)
    {
      xzm_main_malloc_zone_init_range_groups_cold_4(v30);
    }

    v27 += 16;
  }

  while (16 * v24 != v27);
  *(a1 + 409) |= 1u;
  if (*(a1 + 415) != 2)
  {
    xzm_main_malloc_zone_init_range_groups_cold_5();
  }

  v31 = v49;
  if (v20 >= v21)
  {
    xzm_main_malloc_zone_init_range_groups_cold_6();
  }

  v32 = *(a1 + 464);
  if ((v48 & 1) == 0)
  {
    if (v49 <= v21)
    {
      xzm_main_malloc_zone_init_range_groups_cold_7();
    }

    if (v49 >= v46)
    {
      xzm_main_malloc_zone_init_range_groups_cold_8();
    }
  }

  v33 = 0;
  v34 = v55;
  do
  {
    v33 = *v34 + v33 - *(v34 - 1);
    v34 += 2;
    --v24;
  }

  while (v24);
  if ((v33 & 0x3FFFFFE) != 0)
  {
    v35 = ((v33 >> 1) & 0x7FFFFFFFFE000000) + 0x2000000;
  }

  else
  {
    v35 = v33 >> 1;
  }

  v36 = v35 + v20;
  if (v35 + v20 >= v21)
  {
    if (v48)
    {
      xzm_main_malloc_zone_init_range_groups_cold_9();
    }

    v44 = v20 - v21 + v35 + v49;
    if ((v44 & 0x1FFFFFF) == 0)
    {
      v37 = v44 | 0x1000000;
      goto LABEL_62;
    }

LABEL_81:
    xzm_main_malloc_zone_init_range_groups_cold_10();
  }

  if ((v36 & 0x1FFFFFF) != 0)
  {
    goto LABEL_81;
  }

  v37 = v36 | 0x1000000;
  if (v48)
  {
    v38 = v37 - v20;
    if (v37 <= v20)
    {
      xzm_main_malloc_zone_init_range_groups_cold_15();
    }

    v39 = v21 - v37;
    v41 = v47;
    v40 = v3;
    if (v21 <= v37)
    {
      xzm_main_malloc_zone_init_range_groups_cold_16();
    }

    v21 = 0;
    v42 = 0;
    v31 = 0;
    v43 = 0;
    goto LABEL_70;
  }

LABEL_62:
  if (v37 <= v21)
  {
    if (v37 >= v21)
    {
      xzm_main_malloc_zone_init_range_groups_cold_11();
    }

    v38 = v37 - v20;
    if (v37 <= v20)
    {
      xzm_main_malloc_zone_init_range_groups_cold_12();
    }

    v43 = 0;
    v39 = v21 + v46 - (v37 + v49);
    v42 = v49 - v21;
    v31 = 0;
  }

  else
  {
    if (v37 <= v49)
    {
      xzm_main_malloc_zone_init_range_groups_cold_13();
    }

    v39 = v46 - v37;
    if (v46 <= v37)
    {
      xzm_main_malloc_zone_init_range_groups_cold_14();
    }

    v42 = 0;
    v38 = v21 + v37 - (v20 + v49);
    v43 = v49 - v21;
    v21 = 0;
  }

  v41 = v47;
  v40 = v3;
LABEL_70:
  *(v32 + 184) = v37;
  *(v32 + 192) = v39;
  *(v32 + 216) = v37;
  *(v32 + 224) = v39;
  *(v32 + 200) = v21;
  *(v32 + 208) = v42;
  *(v32 + 232) = 0;
  *(v32 + 264) = v37;
  *(v32 + 272) = v38;
  *(v32 + 296) = v37;
  *(v32 + 304) = v38;
  *(v32 + 280) = v31;
  *(v32 + 288) = v43;
  *(v32 + 312) = 1;
  *(v32 + 24) = v40;
  *(v32 + 32) = v41;
LABEL_71:
  v45 = *MEMORY[0x1E69E9840];
}

uint64_t pgm_size(void *a1, unint64_t a2)
{
  if (a1[31] <= a2 && a1[32] > a2)
  {
    v6[1] = v2;
    v6[2] = v3;
    pgm_size_cold_1(a1, a2, v6);
    return v6[0];
  }

  else
  {
    v4 = *(a1[25] + 16);

    return v4();
  }
}

uint64_t xzm_metapool_init(uint64_t result, char a2, char a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7)
{
  *result = 0;
  *(result + 4) = a2;
  *(result + 5) = a3;
  *(result + 8) = a4;
  *(result + 12) = a4 / a6 * a6;
  *(result + 16) = a5;
  *(result + 20) = a6;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 56) = a7;
  return result;
}

BOOL xzm_reclaim_init(uint64_t a1)
{
  v2 = mach_vm_reclaim_round_capacity();
  mach_vm_reclaim_round_capacity();
  dword_1EAC7F81C = 0;
  qword_1EAC7F828 = 0;
  unk_1EAC7F830 = 0;
  v3 = mach_vm_reclaim_ring_allocate();
  v4 = v3;
  if (v3)
  {
    mach_error_string(v3);
    malloc_report(3u, "xzm: failed to initialize deferred reclamation buffer [%d] %s\n");
  }

  else
  {
    dword_1EAC7F818 = v2;
    *(a1 + 568) = &xzm_reclaim_buffer;
    _xzm_reclaim_id_cache_init(&xzm_reclaim_buffer);
  }

  return v4 == 0;
}

uint64_t _xzm_initialize_xzone_data(uint64_t a1, _BYTE *a2, uint64_t a3, int a4)
{
  __buf = 0;
  v7 = *(a1 + 240);
  if (v7)
  {
    v8 = *(a1 + 240);
  }

  else
  {
    v8 = a1;
  }

  arc4random_buf(&__buf, 8uLL);
  v10 = __buf;
  if (!__buf)
  {
    v10 = 0xDEADDEADDEADDEADLL;
    __buf = 0xDEADDEADDEADDEADLL;
  }

  if (*(a1 + 368) == 1)
  {
    v10 &= 0xF0FFFFFFFFFFFFFFLL;
    __buf = v10;
  }

  v11 = 0;
  *(a1 + 320) = v10;
  v12 = 1;
  result = 0x10000;
  do
  {
    if (!v7)
    {
      *(*(a1 + 448) + v11) = v12;
    }

    v14 = *(v8 + 440);
    v15 = *(v14 + v11);
    if (*(v14 + v11))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(v8 + 432) + 8 * v11);
        if (v17 > 0x1000)
        {
          v18 = *(a1 + 250) ? 0x20000 : 0x10000;
        }

        else
        {
          v18 = 0x4000;
        }

        if (v7 || !*(a1 + 416))
        {
          break;
        }

        if (v17 >= 0x101)
        {
          if (v17 >= 0x201)
          {
            if (v17 >= 0x801)
            {
              LOWORD(v19) = v17 <= 0x2000;
LABEL_20:
              v20 = v16 == 0;
              if (v16)
              {
                v21 = a4;
              }

              else
              {
                v21 = 1;
              }

              v22 = v21 ^ 1;
              if (v21)
              {
                v23 = 0;
              }

              else
              {
                v23 = 3;
              }

              if (v17 > 0x1000)
              {
                v22 |= (*(v8 + 409) & 4) >> 2;
              }

              if (v7)
              {
                LOBYTE(v24) = *(*(v7 + 216) + 96 * v12 + 43);
                goto LABEL_48;
              }

              if (v21)
              {
                v23 = 0;
                LOBYTE(v24) = 0;
                goto LABEL_48;
              }

              goto LABEL_42;
            }

            v25 = 0x2000;
          }

          else
          {
            v25 = 4096;
          }
        }

        else
        {
          v25 = 2048;
        }

        v22 = 0;
        v20 = v16 == 0;
        v19 = v25 / *(*(v8 + 432) + 8 * v11);
        if (!v16 || (a4 & 1) != 0)
        {
          v23 = 0;
          LOBYTE(v24) = 0;
          goto LABEL_48;
        }

        v22 = 1;
LABEL_42:
        v26 = *(a1 + 415);
        if (v26 == 1)
        {
          v20 = 0;
          LOBYTE(v24) = 0;
        }

        else
        {
          if (v26 != 2)
          {
            xzm_main_malloc_zone_create_cold_5();
          }

          v20 = 0;
          v24 = (*(a3 + (v12 >> 3)) >> (v12 & 7)) & 1;
        }

        v23 = 3;
LABEL_48:
        if (*a2 == 1)
        {
          if ((a2[1] | v22))
          {
            v27 = 4;
            if (v17 > 0x1000)
            {
              v28 = 5;
            }

            else
            {
              v27 = 2;
              v28 = 3;
            }

            v29 = a2[v27];
            v30 = a2[v28];
            v22 = 1;
          }

          else
          {
            v30 = 0;
            v29 = 0;
            v22 = 0;
          }
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

        v31 = *(a1 + 216) + 96 * v12;
        v32 = *(a1 + 208);
        v9 = v9 & 0xFFFFFFFC | v22;
        *(v31 + 32) = 0;
        *v31 = 0uLL;
        *(v31 + 16) = 0uLL;
        *(v31 + 40) = v19;
        *(v31 + 42) = v23;
        *(v31 + 43) = v24;
        *(v31 + 48) = v17;
        *(v31 + 56) = 0xFFFFFFFF / v17 + 1;
        *(v31 + 64) = 0xFFFFFFFF / v17 + 1;
        *(v31 + 68) = v18 / v17;
        *(v31 + 72) = 0;
        *(v31 + 80) = v12;
        *(v31 + 82) = v32;
        *(v31 + 84) = v16;
        *(v31 + 85) = 0;
        *(v31 + 87) = v9;
        *(v31 + 88) = v29;
        *(v31 + 89) = v30;
        v33 = *(a1 + 248) & 3;
        if (v33 == 1)
        {
          v34 = ncpuclusters;
        }

        else if (v33 == 2)
        {
          v34 = logical_ncpus;
        }

        else
        {
          v34 = 1;
        }

        if (*(a1 + 211))
        {
          v35 = 0;
          do
          {
            *(*(a1 + 224) + 32 * v35 * *(a1 + 210) + 32 * *(v31 + 80) + 23) = *(v31 + 86);
            if (v35 < v34)
            {
              *(*(a1 + 232) + 16 * v35 * *(a1 + 210) + 16 * *(v31 + 80) + 15) = *(v31 + 85);
            }

            ++v35;
          }

          while (v35 < *(a1 + 211));
        }

        if ((*(a1 + 368) & 1) == 0)
        {
          v39 = *(v31 + 87);
LABEL_74:
          *(v31 + 87) = v39 & 0xFD;
          if (*(a1 + 368))
          {
            *(v31 + 40) = 0;
          }

          goto LABEL_78;
        }

        v36 = *(a1 + 376);
        v37 = v36 >= v17;
        if (v36 >= v17 && v20)
        {
          v39 = *(v31 + 87);
          if ((*(a1 + 369) & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v39 = *(v31 + 87);
          if (!v37)
          {
            goto LABEL_74;
          }
        }

        *(v31 + 87) = v39 | 2;
LABEL_78:
        ++v12;
        if (++v16 == v15)
        {
          goto LABEL_81;
        }
      }

      LOWORD(v19) = 0;
      goto LABEL_20;
    }

LABEL_81:
    ++v11;
  }

  while (v11 != 40);
  return result;
}

void malloc_set_zone_name(malloc_zone_t *zone, const char *name)
{
  if (zone->version >= 0xE && zone->introspect->zone_type == 1)
  {
    v4 = 0;
  }

  else
  {
    mprotect(zone, 0xC8uLL, 3);
    v4 = 1;
  }

  zone_name = zone->zone_name;
  if (zone_name)
  {
    if (!malloc_num_zones)
    {
LABEL_24:
      zone->zone_name = 0;
      goto LABEL_25;
    }

    if (lite_zone)
    {
      v6 = zone->zone_name;
      if ((*(lite_zone + 16))())
      {
        goto LABEL_9;
      }
    }

    if (initial_num_zones)
    {
      v8 = 0;
      while (1)
      {
        v7 = *(malloc_zones + v8);
        if (v7[2](v7, zone_name))
        {
          break;
        }

        if (++v8 >= initial_num_zones)
        {
          goto LABEL_15;
        }
      }

      if (!v8 && (has_injected_zone0 & 1) == 0)
      {
LABEL_9:
        v7 = default_zone;
        if (!default_zone)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_15:
      v9 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v10 = malloc_num_zones;
      v11 = initial_num_zones;
      if (initial_num_zones >= malloc_num_zones)
      {
LABEL_18:
        v7 = 0;
      }

      else
      {
        while (1)
        {
          v7 = *(malloc_zones + v11);
          if (v7[2](v7, zone_name))
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_18;
          }
        }
      }

      atomic_fetch_add(v9, 0xFFFFFFFF);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    malloc_zone_free(v7, zone->zone_name);
    goto LABEL_24;
  }

LABEL_25:
  if (!name)
  {
    goto LABEL_37;
  }

  v12 = strlen(name);
  v13 = name;
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {
    v14 = _malloc_zone_malloc(zone, v12 + 1, 0);
    if (!v14)
    {
      goto LABEL_30;
    }

    v13 = v14;
    _platform_strcpy();
  }

  zone->zone_name = v13;
LABEL_30:
  wrapped_zone = get_wrapped_zone(zone);
  if (wrapped_zone)
  {
    if (zone->version <= 0xD)
    {
      purgeable_ptr_in_use_enumerator_cold_1(wrapped_zone);
    }

    v16 = wrapped_zone;
    if (zone->introspect->zone_type == 2)
    {
      v17 = "PGM";
    }

    else
    {
      v17 = "Sanitizer";
    }

    v18 = strlen(name);
    v19 = strlen(v17);
    v20 = strlen("Wrapped");
    v21 = _malloc_zone_malloc(v16, v18 + v20 + v19 + 3, 0);
    if (v21)
    {
      v22 = v21;
      _platform_strcpy();
      *&v22[strlen(v22)] = 45;
      v23 = strcat(v22, v17);
      *&v22[strlen(v23)] = 45;
      *&v22[strlen(v22)] = 0x64657070617257;
      malloc_set_zone_name(v16, v22);
      malloc_zone_free(v16, v22);
    }
  }

LABEL_37:
  if (v4)
  {

    mprotect(zone, 0xC8uLL, 1);
  }
}

uint64_t get_wrapped_zone(uint64_t a1)
{
  v3 = 0;
  wrapped_zone = malloc_get_wrapped_zone(*MEMORY[0x1E69E9A60], 0, a1, &v3);
  if (wrapped_zone)
  {
    purgeable_ptr_in_use_enumerator_cold_1(wrapped_zone);
  }

  return v3;
}

uint64_t malloc_get_wrapped_zone(uint64_t task, uint64_t (*a2)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), uint64_t a3, void *a4)
{
  v6 = a2;
  if (!a2)
  {
    if (task)
    {
      is_self = mach_task_is_self(task);
      if (!is_self)
      {
        purgeable_ptr_in_use_enumerator_cold_1(is_self);
      }
    }

    v6 = _malloc_default_reader_5;
  }

  *a4 = 0;
  v11 = 0;
  result = get_zone_type(task, v6, a3, &v11);
  if (!result)
  {
    if ((v11 - 4) >= 0xFFFFFFFE)
    {
      v10 = 0;
      result = v6(task, a3 + 200, 8, &v10);
      if (!result)
      {
        *a4 = *v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_zone_type(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, _DWORD **), uint64_t a3, _DWORD *a4)
{
  if (!a2)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  *a4 = 0;
  v10 = 0;
  result = a2(a1, a3, 200, &v10);
  if (!result)
  {
    if (*(v10 + 104) >= 0xEu)
    {
      v8 = *(v10 + 96);
      v9 = 0;
      result = a2(a1, v8 + 128, 4, &v9);
      if (!result)
      {
        *a4 = *v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _malloc_default_reader(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_0(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_1(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_2(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_3(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_4(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_5(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

uint64_t _malloc_default_reader_6(task_name_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    is_self = mach_task_is_self(a1);
    if (!is_self)
    {
      purgeable_ptr_in_use_enumerator_cold_1(is_self);
    }
  }

  *a4 = a2;
  return 0;
}

void malloc_zone_register_while_locked(uint64_t a1, char a2)
{
  if (malloc_num_zones)
  {
    v4 = 0;
    do
    {
      if (*(malloc_zones + v4) == a1)
      {
        malloc_report(3u, "Attempted to register zone more than once: %p\n");
        return;
      }

      ++v4;
    }

    while (malloc_num_zones != v4);
    v5 = malloc_num_zones_allocated;
    if (malloc_num_zones != malloc_num_zones_allocated)
    {
      goto LABEL_11;
    }

    v6 = 8 * malloc_num_zones;
    if (malloc_num_zones >= 0x20000)
    {
      v7 = malloc_num_zones + 0x20000;
    }

    else
    {
      if (malloc_num_zones < 0)
      {
        purgeable_ptr_in_use_enumerator_cold_1();
      }

      v7 = (2 * malloc_num_zones);
    }
  }

  else
  {
    v5 = malloc_num_zones_allocated;
    if (malloc_num_zones_allocated)
    {
LABEL_11:
      v8 = 8 * v5;
      mprotect(malloc_zones, v8, 3);
LABEL_18:
      if (a2)
      {
        memcpy(malloc_zones + 8, malloc_zones, 8 * malloc_num_zones);
        *malloc_zones = a1;
        atomic_fetch_add(&malloc_num_zones, 1u);
        mprotect(malloc_zones, v8, 1);
        if (*malloc_zones != a1)
        {
          has_injected_zone0 = 1;

          malloc_slowpath_update();
        }
      }

      else
      {
        *(malloc_zones + malloc_num_zones) = a1;
        atomic_fetch_add(&malloc_num_zones, 1u);
        v11 = malloc_zones;

        mprotect(v11, v8, 1);
      }

      return;
    }

    v6 = 0;
    v7 = *MEMORY[0x1E69E9AC8] >> 3;
  }

  v8 = (*MEMORY[0x1E69E9AC8] + 8 * v7 - 1) & -*MEMORY[0x1E69E9AC8];
  plat = mvm_allocate_plat(0, v8, 0, 1, 0x2000, 1);
  if (plat)
  {
    v10 = plat;
    if (malloc_zones)
    {
      memcpy(plat, malloc_zones, v6);
    }

    malloc_zones = v10;
    malloc_num_zones_allocated = v7;
    if (v7 >> 31)
    {
      purgeable_ptr_in_use_enumerator_cold_1();
    }

    goto LABEL_18;
  }

  malloc_report(3u, "malloc_zone_register allocation failed\n");
}

void malloc_slowpath_update()
{
  v0 = 1;
  if ((has_injected_zone0 & 1) == 0)
  {
    v1 = malloc_num_zones && malloc_check_start == 0;
    if (v1 && lite_zone == 0)
    {
      if ((malloc_tracing_enabled & 1) != 0 || (malloc_simple_stack_logging & 1) != 0 || (malloc_debug_flags & 0x20) != 0)
      {
        v0 = 1;
      }

      else
      {
        v0 = malloc_interposition_compat;
      }
    }
  }

  v3 = v0 & 1;
  if (malloc_slowpath != v3)
  {
    malloc_slowpath = v3;
  }
}

uint64_t _xzm_random_clear_n_bits(uint64_t a1, uint32_t __upper_bound, int a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = arc4random_uniform(__upper_bound);
      v7 = a1;
      if (v6)
      {
        v7 = a1;
        do
        {
          v7 &= v7 - 1;
          --v6;
        }

        while (v6);
      }

      a1 = v7 & -v7 ^ a1;
      --__upper_bound;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t _xzm_segment_group_segment_create_guard(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 2104 + 48 * a2;
  if (v2 + 48 < a1 + 2104 + 48 * *(a1 + 16) && (*(v2 + 80) & 0xF) == 9)
  {
    v3 = *(v2 + 88) + 1;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 1;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  v4 = v2 - 48;
  if ((*(v2 - 16) & 0xF) == 4)
  {
    v10 = v4 - *(v2 - 12);
    v11 = *(v10 + 32) & 0xF;
    if (v11 <= 9)
    {
      v12 = 1 << v11;
      if ((v12 & 0x3E8) != 0)
      {
        if (v10 + 48 * *(v10 + 40) <= v4)
        {
          goto LABEL_7;
        }

LABEL_25:
        v4 -= *(v2 - 12);
        goto LABEL_7;
      }

      if ((v12 & 6) != 0)
      {
        v13 = v4 == v10;
        *(v2 - 12);
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_7:
  if ((*(v4 + 32) & 0xF) == 9)
  {
    v5 = *(v4 + 40);
    a2 -= v5;
    v3 += v5;
    v2 = v4;
  }

LABEL_9:
  if (v3 < 2)
  {
    ++*(a1 + 8);
    v6 = v3;
  }

  else
  {
    v6 = v3;
    v7 = v2 + 80;
    v8 = 48;
    do
    {
      *(v7 + 4) = v8;
      *v7 = *v7 & 0xF0 | 4;
      v7 += 48;
      v8 += 48;
    }

    while (48 * v3 != v8);
  }

  *(v2 + 40) = v3;
  result = mprotect((*(a1 + 40) + (a2 << 14)), v6 << 14, 0);
  if (result)
  {
    _xzm_segment_group_segment_create_guard_cold_1();
  }

  *(v2 + 32) = *(v2 + 32) & 0xF0 | 9;
  return result;
}

uint64_t _xzm_segment_group_span_mark_smaller(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = 0;
  v6 = *(*(a1 + 24) + 568);
  v7 = a2 & 0xFFFFFFFFFFFFC000 | 0x38;
  v8 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v9 = *(v7 + 8 * v8);
  v10 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28) + (v8 << 14);
  v23 = *(a2 + 32);
  v11 = a5 << 14;
  v12 = a2 + 48 * a3 + 48 * a4;
  v13 = (v12 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v12 & 0x3FFF) - 2104) >> 4) + 56;
  if (!(a5 << 14))
  {
    v13 = 0;
  }

  v22 = v13;
  v14 = a3 << 14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v6 + 12), &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  if (v9 != -1)
  {
    v16 = *(v7 + 8 * v8);
    _xzm_reclaim_mark_used_locked(v6);
    if (!mach_vm_reclaim_is_reusable())
    {
      v18 = 0;
      goto LABEL_18;
    }

    *(v7 + 8 * v8) = -1;
  }

  if (v14 && (v23 & 0x10) == 0)
  {
    *(v7 + 8 * v8) = xzm_reclaim_mark_free_locked(v6);
  }

  if (v11)
  {
    if ((v23 & 0x10) != 0)
    {
      v17 = -1;
    }

    else
    {
      v17 = xzm_reclaim_mark_free_locked(v6);
    }

    *v22 = v17;
  }

  v18 = 1;
LABEL_18:
  v19 = *(StatusReg + 24);
  v20 = v19;
  atomic_compare_exchange_strong_explicit((v6 + 12), &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != v19)
  {
    os_unfair_lock_unlock((v6 + 12));
  }

  return v18;
}

void _xzm_fork_lock_wait(os_unfair_lock_s *a1)
{
  v1 = 0;
  v2 = a1 + 87;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[87], &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = *(StatusReg + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {

    os_unfair_lock_unlock(v2);
  }
}

mach_vm_address_t _xzm_range_group_alloc_anywhere_segment(mach_vm_address_t a1, mach_vm_size_t size, unint64_t a3, uint64_t a4, int a5)
{
  address = a1;
  v5 = ((a5 & 1) << 24) | 0x2000001;
  if ((a5 & 2) != 0)
  {
    v5 = ((a5 & 1) << 24) + 33554435;
  }

  v6 = v5 | (a5 << 11) & 0x2000;
  v7 = 0x400000;
  if (a3 > 0x400000)
  {
    v7 = a3;
  }

  v8 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, v7 - 1, v6, 0, 0, 0, 3, 7, 1u);
  if (!v8)
  {
    return address;
  }

  v9 = 0;
  if (v8 != 3)
  {
    malloc_zone_error(0, 0, "Failed to allocate segment (size=%lu, flags=%x, kr=%d)\n");
    return 0;
  }

  return v9;
}

mach_vm_address_t xzm_malloc_zone_create(unsigned int a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 210);
  v6 = *(a2 + 211);
  v7 = (a2 + 528);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a2 + 528), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v9 = *(a2 + 520);
  if (v9)
  {
    *(a2 + 520) = v9[1];
    v10 = *v9;
    xzm_metapool_free((*(a2 + 480) + 128), v9);
  }

  else
  {
    v11 = *(a2 + 516);
    if (v11 == 0xFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11 + 1;
      *(a2 + 516) = v11 + 1;
    }
  }

  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(v7, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(v7);
  }

  if (!v10)
  {
    return 0;
  }

  v14 = 96 * v5 + 384;
  v15 = v6 * v5;
  v16 = v14 + 32 * v15;
  v17 = v16 + 16 * v15;
  plat = mvm_allocate_plat(0, v17, 0, 1, 0x2000, 1);
  if (plat)
  {
    _xzm_initialize_const_zone_data(plat, v17, v10, v5, v6, plat + 384, v14 + plat, a2, (*(a2 + 248) >> 2) & 3, *(a2 + 288), (*(a2 + 248) >> 4) & 3, *(a2 + 272), HIDWORD(*(a2 + 272)), *(a2 + 284), *(a2 + 292), *(a2 + 296), *(a2 + 304), *(a2 + 312), 0, 0, a1, *(a2 + 250), *(a2 + 248) & 3, plat + v16);
    *(plat + 368) = *(a2 + 368);
    _xzm_initialize_xzone_data(plat, (a2 + 532), 0, *(a2 + 411) == 2);
    *(plat + 352) = 0;
  }

  return plat;
}

malloc_zone_t *__cdecl malloc_create_zone(vm_size_t start_size, unsigned int flags)
{
  if (malloc_absolute_max_size < start_size)
  {
    return 0;
  }

  if (!initial_xzone_zone || xzm_create_mzones != 1 || (scalable_zone = xzm_malloc_zone_create(malloc_debug_flags | flags, initial_xzone_zone)) == 0)
  {
    scalable_zone = create_scalable_zone(start_size, malloc_debug_flags | flags);
  }

  if ((flags & 0x400) != 0 || (has_injected_zone0 & 1) != 0 || (malloc_sanitizer_enabled & 1) != 0 || !pgm_should_enable())
  {
    malloc_zone_register(scalable_zone);
  }

  else
  {
    zone = pgm_create_zone(scalable_zone);
    v6 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    malloc_zone_register_while_locked(zone, 0);
    malloc_zone_register_while_locked(scalable_zone, 0);
    v8 = *(StatusReg + 24);
    v9 = v8;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return zone;
  }

  return scalable_zone;
}

void malloc_zone_register(malloc_zone_t *zone)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  malloc_zone_register_while_locked(zone, 0);
  v4 = *(StatusReg + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(&_malloc_lock, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {

    os_unfair_lock_unlock(&_malloc_lock);
  }
}

uint64_t _xzm_segment_group_span_mark_free(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 568);
  if ((*(a2 + 32) & 0xF) != 1)
  {
    v3 = (*(a2 + 40) << 14);
  }

  v4 = (a2 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((a2 & 0x3FFF) - 2104) >> 4);
  v5 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  result = _xzm_reclaim_mark_free(v2);
  *(v4 + 56) = result;
  return result;
}

uint64_t pgm_malloc_type_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
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

  v11 = *(*(a1 + 200) + 184);

  return v11();
}

uint64_t _xzm_reclaim_mark_free(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 12), &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v5 = xzm_reclaim_mark_free_locked(a1);
  v6 = *(StatusReg + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v3);
  }

  return v5;
}

uint64_t xzm_reclaim_mark_free_locked(uint64_t *a1)
{
  do
  {
    v2 = a1[2];
    if (!v2)
    {
      while (1)
      {
        v7 = *a1;
        if (mach_vm_reclaim_try_enter())
        {
          break;
        }

        xzm_reclaim_sync_and_resize(a1);
      }

      xzm_reclaim_mark_free_locked_cold_2();
    }

    v3 = a1[4];
    v4 = v2 - 1;
    a1[2] = v4;
    v8 = *(v3 + 8 * v4);
    v5 = *a1;
    if (mach_vm_reclaim_try_enter())
    {
      xzm_reclaim_mark_free_locked_cold_1();
    }

    result = v8;
  }

  while (v8 == -1);
  return result;
}

uint64_t _xzm_segment_group_span_mark_used(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFC000 | 0x38;
  v3 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  if (*(v2 + 8 * v3) == -1)
  {
    return 1;
  }

  v4 = *(*(a1 + 24) + 568);
  if ((*(a2 + 32) & 0xF) != 1)
  {
    v5 = (*(a2 + 40) << 14);
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  _xzm_reclaim_mark_used(v4);
  result = mach_vm_reclaim_is_reusable();
  if (result)
  {
    *(v2 + 8 * v3) = -1;
    return 1;
  }

  return result;
}

void _xzm_segment_group_segment_deallocate(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = *(a2 + 40);
    v6 = v5 + (*(a2 + 12) << 14);
    if (v5 < v6)
    {
      v7 = *(a1 + 24);
      do
      {
        v8 = v5 >> 22;
        if (v5 >> 36)
        {
          v8 = 0x4000;
        }

        if (v8 >> 14)
        {
          v9 = 0;
        }

        else
        {
          v9 = (*(v7 + 488) + 4 * v8);
        }

        *v9 = 0;
        v5 += 0x400000;
      }

      while (v5 < v6);
    }
  }

  mvm_deallocate_plat(*(a2 + 40), *(a2 + 12) << 14, 0);
  v10 = *(*(a1 + 24) + 480);

  xzm_metapool_free(v10, a2);
}

void mvm_deallocate_plat(mach_vm_address_t address, mach_vm_size_t size, __int16 a3)
{
  if (mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size))
  {
    malloc_zone_error(a3, 0, "Failed to deallocate at address %p of size 0x%lx: %d\n");
  }
}

uint64_t _xzm_reclaim_mark_used(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 12);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 12), &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v5 = _xzm_reclaim_mark_used_locked(a1);
  v6 = *(StatusReg + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v3);
  }

  return v5;
}

uint64_t _xzm_reclaim_mark_used_locked(uint64_t *a1)
{
  v1 = *a1;
  if (mach_vm_reclaim_try_cancel())
  {
    _xzm_reclaim_mark_used_locked_cold_1();
  }

  return 0;
}

uint64_t main_image_has_section(uint64_t a1, uint64_t a2)
{
  image_header = _dyld_get_image_header(0);
  if (!image_header->ncmds)
  {
    return 0;
  }

  v5 = image_header;
  v6 = 0;
  p_cputype = &image_header[1].cputype;
  while (*p_cputype != 25 || MEMORY[0x193ACD780](p_cputype + 2, a1, 16) && v5->filetype != 1 || !p_cputype[16])
  {
LABEL_11:
    p_cputype = (p_cputype + p_cputype[1]);
    if (++v6 >= v5->ncmds)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = p_cputype + 22;
  while (MEMORY[0x193ACD780](v9 - 4, a2, 16) || MEMORY[0x193ACD780](v9, a1, 16))
  {
    ++v8;
    v9 += 20;
    if (v8 >= p_cputype[16])
    {
      goto LABEL_11;
    }
  }

  return 1;
}

uint64_t pgm_create_zone(uint64_t a1)
{
  if (*(a1 + 104) <= 0xFu)
  {
    purgeable_ptr_in_use_enumerator_cold_1(a1);
  }

  my_vm_map_common(0, 16720, 3, 1, 1);
  MEMORY[0x20] = xmmword_1F018DC88;
  MEMORY[0x30] = *&off_1F018DC98;
  MEMORY[0x60] = xmmword_1F018DCC8;
  MEMORY[0x70] = *&off_1F018DCD8;
  MEMORY[0x40] = xmmword_1F018DCA8;
  MEMORY[0x50] = *&off_1F018DCB8;
  MEMORY[0xA0] = xmmword_1F018DD08;
  MEMORY[0xB0] = *off_1F018DD18;
  MEMORY[0x80] = xmmword_1F018DCE8;
  MEMORY[0x90] = unk_1F018DCF8;
  MEMORY[0] = malloc_zone_template_0;
  MEMORY[0x10] = *&off_1F018DC78;
  MEMORY[0xC0] = off_1F018DD28[0];
  MEMORY[0xC8] = a1;
  if (*(a1 + 112))
  {
    v1 = *(a1 + 112);
  }

  else
  {
    MEMORY[0x70] = 0;
  }

  if (*(a1 + 184))
  {
    v2 = *(a1 + 184);
  }

  else
  {
    MEMORY[0xB8] = 0;
  }

  if (*(a1 + 120))
  {
    v3 = *(a1 + 120);
  }

  else
  {
    MEMORY[0x78] = 0;
  }

  if (*(a1 + 136))
  {
    v4 = *(a1 + 136);
  }

  else
  {
    MEMORY[0x88] = 0;
  }

  if (*(a1 + 152))
  {
    v5 = *(a1 + 152);
  }

  else
  {
    MEMORY[0x98] = 0;
  }

  if (*(a1 + 192))
  {
    v6 = *(a1 + 192);
  }

  else
  {
    MEMORY[0xC0] = 0;
  }

  v7 = env_uint_0("MallocProbGuardMemoryBudgetInKB", 2048) << 10;
  v8 = MEMORY[0x1E69E9AC8];
  v9 = (*MEMORY[0x1E69E9AC8] + 16719) & -*MEMORY[0x1E69E9AC8];
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (!v10 || (v12 = v11 / (*MEMORY[0x1E69E9AC8] + 1600.0 + 80.0 + 768.0), !v12))
  {
    pgm_create_zone_cold_4();
  }

  MEMORY[0xD4] = env_uint_0("MallocProbGuardAllocations", v12);
  MEMORY[0xD0] = env_uint_0("MallocProbGuardSlots", (10 * MEMORY[0xD4]));
  MEMORY[0xD8] = env_uint_0("MallocProbGuardMetadata", (3 * MEMORY[0xD4]));
  v13 = arc4random_uniform(0x1194u);
  v14 = env_uint_0("MallocProbGuardSampleRate", v13 + 500);
  v15 = 2 * v14;
  if (v14 == 1)
  {
    v15 = 1;
  }

  MEMORY[0xDC] = v15;
  MEMORY[0xE0] = env_uint_0("MallocProbGuardLeftAlignPercentage", 10);
  v16 = getenv("MallocProbGuardDebug");
  if (v16)
  {
    v17 = *v16 == 49;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0xE4] = v17;
  MEMORY[0xE8] = env_uint_0("MallocProbGuardDebugLogThrottleInMillis", 1000);
  if (MEMORY[0xE4] == 1)
  {
    malloc_report(6u, "ProbGuard configuration: %u kB budget, 1/%u sample rate, %u/%u/%u allocations/metadata/slots\n");
  }

  if (!MEMORY[0xD4] || MEMORY[0xD4] > MEMORY[0xD8] >> 1 || MEMORY[0xD8] > MEMORY[0xD0] || !MEMORY[0xDC] || MEMORY[0xE0] >= 0x65u)
  {
    pgm_create_zone_cold_3();
  }

  MEMORY[0xF0] = *v8 * ((2 * MEMORY[0xD0]) | 1u);
  MEMORY[0x108] = MEMORY[0xF0] + 0x4000000;
  my_vm_map_common(0, MEMORY[0xF0] + 0x4000000, 0, 1, 1);
  MEMORY[0x110] = 0;
  MEMORY[0xF8] = 0x2000000;
  MEMORY[0x100] = MEMORY[0xF0] + 0x2000000;
  my_vm_map_common(0x2000000, MEMORY[0xF0], 0, 0x4000, 13);
  MEMORY[0x118] = (*(MEMORY[0xC8] + 32))(MEMORY[0xC8], MEMORY[0xD0], 8, v18, v19);
  v22 = (*(MEMORY[0xC8] + 32))(MEMORY[0xC8], MEMORY[0xD8], 256, v20, v21);
  MEMORY[0x120] = v22;
  if (!MEMORY[0x118] || !v22)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v22);
  }

  MEMORY[0x4128] = 0;
  my_vm_protect(0, 0x4000, 1);
  return 0;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> my_vm_map_common(int a1, uint64_t a2, vm_prot_t cur_protection, int a4, int a5)
{
  if (mach_vm_map(*MEMORY[0x1E69E9A60], &address, (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 0, a4 | (a5 << 24), 0, 0, 0, cur_protection, 3, 1u))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }
}

unint64_t env_uint(uint64_t a1, uint64_t a2)
{
  v3 = *_NSGetEnviron();
  v4 = _simple_getenv();
  if (v4)
  {
    return strtoul(v4, 0, 0);
  }

  return a2;
}

unint64_t env_uint_0(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (v3)
  {
    return strtoul(v3, 0, 0);
  }

  return a2;
}

void xzm_malloc_zone_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v7 = (malloc_get_thread_options() << 27) & 0x40000000;

  _xzm_malloc_zone_malloc_type_calloc_entry(a1, a2, a3, v6, v7, v8);
}

void _xzm_foreach_lock(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((a1 + 348), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 344), &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    _xzm_allocation_slots_do_lock_action(a1, 0);
  }

  if (*(a1 + 210) >= 2u)
  {
    v7 = 1;
    v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v9 = *(a1 + 216) + 96 * v7;
      if (*(v9 + 48) <= 0x1000uLL || *(a1 + 250) == 1)
      {
        if (!a2)
        {
          if (*(a1 + 211))
          {
            v10 = 0;
            do
            {
              atomic_fetch_or_explicit((*(a1 + 232) + 16 * v10 * *(a1 + 210) + 16 * *(v9 + 80)), 0x8000000000000000, memory_order_relaxed);
              ++v10;
            }

            while (v10 < *(a1 + 211));
          }

          atomic_fetch_or_explicit(v9, 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 8), 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 24), 0x8000000000000000, memory_order_relaxed);
          atomic_fetch_or_explicit((v9 + 16), 0x8000000000000000, memory_order_relaxed);
        }

        for (i = (*(v9 + 16) & 0x7FFFFFFFFFFFLL); i; i = i[3])
        {
          v12 = *i;
          if (a2)
          {
            if ((~v12 & 0x7FE) != 0)
            {
              v13 = *i;
              atomic_compare_exchange_strong_explicit(i, &v13, v12 & 0xFFFFFFFFBFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
              if (v13 != v12)
              {
                _xzm_foreach_lock_cold_1();
              }
            }
          }

          else
          {
            do
            {
              if ((~v12 & 0x7FE) == 0)
              {
                break;
              }

              v14 = v12;
              atomic_compare_exchange_strong_explicit(i, &v14, v12 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
              v34 = v14 == v12;
              v12 = v14;
            }

            while (!v34);
          }
        }

        if (a2)
        {
          atomic_fetch_and_explicit((v9 + 16), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit(v9, 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit((v9 + 24), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          atomic_fetch_and_explicit((v9 + 8), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
          if (*(a1 + 211))
          {
            v15 = 0;
            do
            {
              atomic_fetch_and_explicit((*(a1 + 232) + 16 * v15 * *(a1 + 210) + 16 * *(v9 + 80)), 0x7FFFFFFFFFFFFFFFuLL, memory_order_relaxed);
              ++v15;
            }

            while (v15 < *(a1 + 211));
          }
        }
      }

      else if (a2)
      {
        for (j = *(v9 + 24); j; j = *((j & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((j & 0x3FFF) - 2104) >> 4) + 0x38))
        {
          _xzm_do_lock_action(j + 2, a2);
        }

        for (k = *v9; k; k = *(k + 16))
        {
          _xzm_do_lock_action((k + 8), a2);
        }

        for (m = *(v9 + 8); m; m = *(m + 16))
        {
          _xzm_do_lock_action((m + 8), a2);
        }

        _xzm_do_lock_action((v9 + 36), a2);
      }

      else
      {
        v19 = (v9 + 36);
        while (1)
        {
          v20 = 0;
          atomic_compare_exchange_strong_explicit(v19, &v20, *(v8 + 24), memory_order_acquire, memory_order_acquire);
          if (v20)
          {
            os_unfair_lock_lock_with_options();
          }

          for (n = *(v9 + 24); n; n = *((n & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((n & 0x3FFF) - 2104) >> 4) + 0x38))
          {
            v22 = 0;
            atomic_compare_exchange_strong_explicit((n + 8), &v22, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v22)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          for (ii = *v9; ii; ii = *(ii + 16))
          {
            v24 = 0;
            atomic_compare_exchange_strong_explicit((ii + 8), &v24, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v24)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          v25 = *(v9 + 8);
          if (!v25)
          {
            break;
          }

          while (1)
          {
            v26 = 0;
            atomic_compare_exchange_strong_explicit((v25 + 8), &v26, *(v8 + 24), memory_order_acquire, memory_order_acquire);
            if (v26)
            {
              break;
            }

            v25 = *(v25 + 16);
            if (!v25)
            {
              goto LABEL_38;
            }
          }

          for (jj = *(v9 + 24); jj; jj = *((jj & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((jj & 0x3FFF) - 2104) >> 4) + 0x38))
          {
            v28 = *(v8 + 24);
            v29 = v28;
            atomic_compare_exchange_strong_explicit(&jj[2], &v29, 0, memory_order_release, memory_order_relaxed);
            if (v29 != v28)
            {
              os_unfair_lock_unlock(jj + 2);
            }
          }

          for (kk = *v9; kk; kk = *(kk + 16))
          {
            v31 = *(v8 + 24);
            v32 = v31;
            atomic_compare_exchange_strong_explicit((kk + 8), &v32, 0, memory_order_release, memory_order_relaxed);
            if (v32 != v31)
            {
              os_unfair_lock_unlock((kk + 8));
            }
          }

          for (mm = *(v9 + 8); ; mm = *(mm + 16))
          {
            v34 = !mm || mm == v25;
            if (v34)
            {
              break;
            }

            v35 = *(v8 + 24);
            v36 = v35;
            atomic_compare_exchange_strong_explicit((mm + 8), &v36, 0, memory_order_release, memory_order_relaxed);
            if (v36 != v35)
            {
              os_unfair_lock_unlock((mm + 8));
            }
          }

          v37 = *(v8 + 24);
          v38 = v37;
          atomic_compare_exchange_strong_explicit(v19, &v38, 0, memory_order_release, memory_order_relaxed);
          if (v38 != v37)
          {
            os_unfair_lock_unlock((v9 + 36));
          }

          MEMORY[0x193ACDCE0](0, 1, 1);
        }
      }

LABEL_38:
      ++v7;
    }

    while (v7 < *(a1 + 210));
  }

  if (a2)
  {
    _xzm_allocation_slots_do_lock_action(a1, a2);
    _xzm_do_lock_action((a1 + 344), a2);

    _xzm_do_lock_action((a1 + 348), a2);
  }
}

void xzm_statistics_self(unint64_t a1, uint64_t a2)
{
  if (!*(a1 + 240))
  {
    mfm_lock();
  }

  xzm_force_lock(a1);
  xzm_statistics(*MEMORY[0x1E69E9A60], a1, _malloc_default_reader_2, a2);
  xzm_force_unlock(a1);
  if (!*(a1 + 240))
  {

    mfm_unlock();
  }
}

uint64_t my_vm_protect(mach_vm_address_t address, uint64_t a2, vm_prot_t new_protection)
{
  result = mach_vm_protect(*MEMORY[0x1E69E9A60], address, (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 0, new_protection);
  if (result)
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  return result;
}

uint64_t _xzm_xzone_block_memtag_retag(uint64_t a1, uint64_t a2)
{
  result = memtag_assign_tag(a1, a2);
  _X8 = result + a2;
  if ((a2 & 0x1FF) != 0)
  {
    __asm
    {
      STG             X0, [X0]
      STG             X8, [X8,#-0x10]
    }

    if (a2 > 0x20)
    {
      _X9 = (result + 31) & 0xFFFFFFFFFFFFFFE0;
      _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
      __asm
      {
        ST2G            X9, [X9]
        ST2G            X10, [X10,#-0x20]
      }
    }

    v11 = (result + 63) & 0xFFFFFFFFFFFFFFC0;
    v12 = _X8 & 0xFFFFFFFFFFFFFFC0;
    while (v11 < v12)
    {
      __asm { DC              GVA, X9 }

      v11 += 64;
    }
  }

  else if (a2 >= 1)
  {
    v13 = result;
    do
    {
      __asm
      {
        DC              GVA, X9
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
        DC              GVA, X10
      }

      v13 += 512;
    }

    while (v13 < _X8);
  }

  return result;
}

void _xzm_allocation_slots_do_lock_action(uint64_t a1, int a2)
{
  v2 = *(a1 + 210);
  if (v2 >= 2)
  {
    for (i = 1; i < v2; ++i)
    {
      v6 = *(*(a1 + 216) + 96 * i + 48);
      if (v6 > 0x1000)
      {
        v7 = *(a1 + 250);
      }

      else
      {
        v7 = 0;
      }

      if (*(a1 + 211))
      {
        v8 = 0;
        v9 = (v6 <= 0x1000) | v7;
        do
        {
          v10 = *(a1 + 224) + 32 * v8 * *(a1 + 210) + 32 * i;
          if (v9)
          {
            v11 = *v10;
            if (a2)
            {
              if (atomic_exchange_explicit(v10, v11 & 0xFFFFFFFFFFFFFFFDLL, memory_order_release) != v11)
              {
                _xzm_allocation_slots_do_lock_action_cold_1();
              }
            }

            else
            {
              do
              {
                while ((v11 & 1) != 0)
                {
                  if ((v11 & 2) == 0)
                  {
                    v12 = v11;
                    atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 2, memory_order_relaxed, memory_order_relaxed);
                    v13 = v12 == v11;
                    v11 = v12;
                    if (!v13)
                    {
                      continue;
                    }
                  }

                  v14 = __ulock_wait();
                  if ((v14 & 0x80000000) != 0)
                  {
                    _xzm_allocation_slots_do_lock_action_cold_2(v14);
                  }

                  v11 = *v10;
                }

                v15 = v11;
                atomic_compare_exchange_strong_explicit(v10, &v15, v11 | 2, memory_order_relaxed, memory_order_relaxed);
                v13 = v15 == v11;
                v11 = v15;
              }

              while (!v13);
            }
          }

          else
          {
            _xzm_do_lock_action((v10 + 8), a2);
          }

          ++v8;
        }

        while (v8 < *(a1 + 211));
        v2 = *(a1 + 210);
      }
    }
  }
}

uint64_t mfm_lock()
{
  result = mfm_arena;
  if (mfm_arena)
  {
    v1 = 0;
    atomic_compare_exchange_strong_explicit(mfm_arena, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      return os_unfair_lock_lock_with_options();
    }
  }

  return result;
}

void _xzm_do_lock_action(os_unfair_lock_t lock, int a2)
{
  if (a2 == 2)
  {
    lock->_os_unfair_lock_opaque = 0;
  }

  else if (a2 == 1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v3 = v2;
    atomic_compare_exchange_strong_explicit(lock, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 != v2)
    {
      os_unfair_lock_unlock(lock);
    }
  }

  else
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(lock, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }
  }
}

uint64_t _xzm_segment_group_cache_mark_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 12);
  result = _xzm_reclaim_mark_free(*(*(a1 + 24) + 568));
  *(a2 + 48) = result;
  v7 = *(a1 + 464);
  *(a2 + 24) = v7;
  if (v7)
  {
    v8 = (v7 + 32);
  }

  else
  {
    v8 = (a1 + 472);
  }

  *v8 = a2 + 24;
  *(a1 + 464) = a2;
  *(a2 + 32) = a1 + 464;
  ++*(a1 + 482);
  return result;
}

uint64_t xzm_statistics(uint64_t task, unint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), uint64_t a4)
{
  v5 = a3;
  *a4 = 0u;
  *(a4 + 16) = 0u;
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

    v5 = _malloc_default_reader_2;
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  result = _xzm_introspect_map_zone_and_main(task, a2, v5, &v18, &v17, &v16);
  if (!result)
  {
    v10 = v16;
    v11 = v17;
    if (v16 == a2)
    {
      v12 = *(v17 + 416);
      if (v12)
      {
        off_1F018DB70(task, v12, v5, a4);
        *(a4 + 16) = 0;
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __xzm_statistics_block_invoke_3;
    v15[3] = &__block_descriptor_tmp_245;
    v15[4] = a4;
    if (v10 == a2)
    {
      v13 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __xzm_statistics_block_invoke_4;
      v14[3] = &__block_descriptor_tmp_246;
      v14[4] = a4;
    }

    else
    {
      v13 = 0;
    }

    return _xzm_introspect_enumerate(task, v5, a2, v18, v10, v11, 0, &__block_literal_global_241, &__block_literal_global_244, v15, v13);
  }

  return result;
}

uint64_t _xzm_introspect_map_zone_and_main(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void **), void *a4, void *a5, void *a6)
{
  v10 = a2;
  v18 = 0;
  result = a3(a1, a2, 384, &v18);
  if (!result)
  {
    v13 = v18[25];
    if (v13 < 0x180)
    {
      return 5;
    }

    result = a3(a1, v10, v18[25], &v18);
    if (!result)
    {
      v17 = 0;
      v14 = v18;
      v15 = v18[30];
      if (v15)
      {
        result = a3(a1, v18[30], 576, &v17);
        if (result)
        {
          return result;
        }

        v16 = v17[48];
        if (v16 < 0x240)
        {
          return 5;
        }

        result = a3(a1, v15, v17[48], &v17);
        if (result)
        {
          return result;
        }

        v14 = v17;
        if (v16 < v17[48])
        {
          return 5;
        }

        v10 = v15;
      }

      else
      {
        v17 = v18;
        if (v18[48] != v13)
        {
          return 5;
        }
      }

      if (!v18)
      {
        _xzm_introspect_map_zone_and_main_cold_2();
      }

      if (!v10)
      {
        _xzm_introspect_map_zone_and_main_cold_1();
      }

      result = 0;
      *a4 = v18;
      *a5 = v14;
      *a6 = v10;
    }
  }

  return result;
}

uint64_t mfmi_read_zone(uint64_t task, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void *a4)
{
  v5 = a3;
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

    v5 = _malloc_default_reader_1;
  }

  return v5(task, a2, 0x400000, a4);
}

void mfmi_statistics_task(uint64_t a1, uint64_t a2, uint64_t (*a3)(task_name_t a1, uint64_t a2, uint64_t a3, void *a4), void *a4)
{
  v9 = 0;
  v5 = mfmi_read_zone(a1, a2, a3, &v9);
  bzero(a4, 0x20uLL);
  if (!v5)
  {
    v6 = v9;
    v7 = *(v9 + 16);
    *a4 = *(v9 + 24);
    a4[3] = 0x400000;
    v8 = ((((v7 >> 2) & 0x1FFFFFFFFFFFFFF8) + *MEMORY[0x1E69E9AC8] + 223) & -*MEMORY[0x1E69E9AC8]) + a4[2] + ((*MEMORY[0x1E69E9AC8] + 16 * v7 - 1) & -*MEMORY[0x1E69E9AC8]);
    a4[1] = 16 * *(v6 + 4);
    a4[2] = v8;
  }
}

malloc_zone_t *malloc_default_purgeable_zone(void)
{
  if (malloc_default_purgeable_zone_pred != -1)
  {
    malloc_default_purgeable_zone_cold_1();
  }

  return default_purgeable_zone;
}

uint64_t _xzm_introspect_enumerate(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = a3 == a5;
  v17 = (a6 + 384);
  v18 = (a4 + 200);
  if (a3 == a5)
  {
    v18 = (a6 + 384);
  }

  v19 = *v18;
  if (a3 != a5)
  {
    goto LABEL_17;
  }

  v20 = *(a6 + 480);
  v21 = v20 - a3;
  if (v20 < a3)
  {
    return 5;
  }

  v22 = *(a6 + 414);
  result = 5;
  if (__CFADD__(v21, v22 << 6))
  {
    return result;
  }

  if (v21 + (v22 << 6) > *(a6 + 384))
  {
    return result;
  }

  v24 = v21 + a6;
  if (!v24)
  {
    return result;
  }

  if (!*(a6 + 414))
  {
LABEL_17:
    v30 = *(a6 + 488);
    v31 = v30 >= a5;
    v32 = v30 - a5;
    if (v31)
    {
      result = 5;
      if (v32 < 0xFFFFFFFFFFFF0000 && v32 + 0x10000 <= *v17)
      {
        v33 = v32 + a6;
        if (v32 + a6)
        {
          v34 = 0;
          v35 = 0;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 0x40000000;
          v58 = ___xzm_introspect_enumerate_block_invoke;
          v59 = &unk_1E7260C18;
          v56 = a1;
          v67 = a1;
          v64 = a4;
          v65 = a3;
          v66 = v19;
          v68 = a7;
          v60 = a9;
          v61 = a10;
          v69 = v16;
          v36 = a2;
          v62 = a11;
          v63 = a2;
          while (1)
          {
            v37 = (*(v33 + v34) & 0x7FFFFFFF) << 14;
            if (v37 && v35 != v37)
            {
              result = v58(v57, v37);
              v35 = v37;
              if (result)
              {
                break;
              }
            }

            v34 += 4;
            if (v34 == 0x10000)
            {
              v39 = *(a6 + 496);
              if (v39 >> 62)
              {
                return 5;
              }

              v40 = *(a6 + 504);
              result = 0;
              v31 = v40 >= a5;
              v41 = v40 - a5;
              if (v31 && !__CFADD__(v41, 4 * v39))
              {
                v42 = v56;
                if (v41 + 4 * v39 <= *v17)
                {
                  result = 0;
                  v43 = v41 + a6;
                  if (v41 + a6)
                  {
                    if (v39)
                    {
                      v44 = v36;
                      v45 = 0;
                      while (1)
                      {
                        v46 = *(v43 + 4 * v45);
                        if (v46)
                        {
                          break;
                        }

LABEL_48:
                        result = 0;
                        if (++v45 >= v39)
                        {
                          return result;
                        }
                      }

                      v70 = 0;
                      result = v44(v42, v46 << 16, 0x10000, &v70);
                      if (!result)
                      {
                        v47 = 0;
                        v48 = v70;
                        while (1)
                        {
                          v49 = (*(v48 + v47) & 0x7FFFFFFF) << 14;
                          if (v49 && v35 != v49)
                          {
                            result = v58(v57, v49);
                            v35 = v49;
                            if (result)
                            {
                              break;
                            }
                          }

                          v47 += 4;
                          if (v47 == 0x10000)
                          {
                            v39 = *(a6 + 496);
                            v44 = v36;
                            v42 = v56;
                            goto LABEL_48;
                          }
                        }
                      }
                    }
                  }
                }
              }

              return result;
            }
          }
        }
      }

      return result;
    }

    return 5;
  }

  v26 = 0;
  v53 = a3 == a5;
  v54 = a7;
  v51 = v24;
  v52 = v19;
  while (1)
  {
    v27 = a1;
    v28 = a2;
    v29 = v24 + (v26 << 6);
    if (*(v29 + 24))
    {
      break;
    }

LABEL_16:
    ++v26;
    a2 = v28;
    a1 = v27;
    if (v26 >= v22)
    {
      goto LABEL_17;
    }
  }

  v55 = v26;
  while (1)
  {
    v70 = 0;
    result = v28(v27);
    if (result)
    {
      return result;
    }

    result = (*(a8 + 16))(a8, v70[1], *(v29 + 8), *(v29 + 4));
    if (result)
    {
      return result;
    }

    if (!*v70)
    {
      LODWORD(v22) = *(a6 + 414);
      v16 = v53;
      a7 = v54;
      v24 = v51;
      v19 = v52;
      v26 = v55;
      goto LABEL_16;
    }
  }
}

BOOL xzm_malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (mfm_claimed_address(a2))
  {
    return 1;
  }

  v5 = 0x4000;
  if (!((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36))
  {
    v5 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  }

  if (v5 >> 14)
  {
    return 0;
  }

  v6 = *(a1 + 240);
  if (!v6)
  {
    v6 = a1;
  }

  v7 = *(v6 + 488);
  return v7 && (*(v7 + 4 * v5) & 0x7FFFFFFF) != 0;
}

uint64_t default_zone_malloc_claimed_address(uint64_t a1, uint64_t a2)
{
  v2 = lite_zone;
  if (!lite_zone)
  {
    v2 = *malloc_zones;
  }

  return malloc_zone_claimed_address(v2, a2);
}

unint64_t xzm_malloc_zone_malloc_type_malloc_slow(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc_get_thread_options() << 27;
  if (a2 <= 0x8000 && (*(a1 + 360) & 0x80) != 0)
  {
    if (*(a1 + 240))
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = a1;
    }

    if (*(v8 + 240))
    {
      v9 = *(v8 + 240);
    }

    else
    {
      v9 = v8;
    }

    v10 = __clz(a2 - 1);
    v11 = (((a2 - 1) >> (61 - v10)) & 3) - 4 * v10 + 488;
    if (a2 <= 0x80)
    {
      v11 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v11) = 0;
    }

    v12 = v11;
    v13 = *(v9[56] + v11);
    if (HIWORD(a3) == 256)
    {
      v14 = 0;
    }

    else if ((a3 & 0xC0000000000) == 0x40000000000)
    {
      v14 = 1;
    }

    else
    {
      v22 = *(v9[55] + v12);
      if ((v22 & 0xFE) == 2)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        v26 = dword_1ED40432C;
        if (a3)
        {
          v26 = a3;
        }

        v23 = v9[50] + v26 * v9[49];
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

      v14 = v23 + 2;
    }

    v28 = (v14 + v13);
    v29 = v6 & 0x40000000;
LABEL_52:
    _xzm_xzone_malloc(v8, a2, v28, v29, v7);
    goto LABEL_53;
  }

  if (a2 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v16 = *(a1 + 240);
    }

    else
    {
      v16 = a1;
    }

    v17 = __clz(a2 - 1);
    v18 = (((a2 - 1) >> (61 - v17)) & 3) - 4 * v17 + 488;
    if (a2 <= 0x80)
    {
      v18 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v18) = 0;
    }

    v19 = v18;
    v20 = *(v16[56] + v18);
    if (HIWORD(a3) == 256)
    {
      v21 = 0;
    }

    else if ((a3 & 0xC0000000000) == 0x40000000000)
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
        if (a3)
        {
          v27 = a3;
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
    v29 = v6 & 0x40000000;
    v8 = a1;
    goto LABEL_52;
  }

  v15 = _xzm_malloc_large_huge(a1, a2, 0, a3, v6 & 0x40000000);
LABEL_53:
  v30 = v15;
  if (v15 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  return v30;
}

uint64_t ___xzm_introspect_enumerate_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  result = (*(a1 + 56))(*(a1 + 88), a2, 14392, &v18);
  if (!result)
  {
    v17 = 0;
    result = (*(a1 + 56))(*(a1 + 88), *(v18 + 40), *(v18 + 12) << 14, &v17);
    if (!result)
    {
      result = (*(*(a1 + 32) + 16))();
      if (!result)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = ___xzm_introspect_enumerate_block_invoke_2;
        v6[3] = &unk_1E7260BF0;
        v8 = v18;
        v9 = v17;
        v5 = *(a1 + 56);
        v10 = *(a1 + 64);
        v11 = *(a1 + 72);
        v15 = *(a1 + 92);
        v14 = *(a1 + 88);
        v12 = v5;
        v13 = a2;
        v16 = *(a1 + 93);
        v7 = *(a1 + 40);
        return xzm_segment_group_segment_foreach_span(v18, v6);
      }
    }
  }

  return result;
}

uint64_t (**find_registered_purgeable_zone(uint64_t a1))(void *, void)
{
  result = 0;
  if (!a1 || !malloc_num_zones)
  {
    return result;
  }

  if (lite_zone)
  {
    v3 = (*(lite_zone + 16))();
    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (initial_num_zones)
  {
    v5 = 0;
    while (1)
    {
      v4 = *(malloc_zones + v5);
      v3 = v4[2](v4, a1);
      if (v3)
      {
        break;
      }

      if (++v5 >= initial_num_zones)
      {
        goto LABEL_11;
      }
    }

    if (!v5 && (has_injected_zone0 & 1) == 0)
    {
LABEL_5:
      v4 = default_zone;
      if (!default_zone)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_11:
    v6 = pFRZCounterLive;
    atomic_fetch_add(pFRZCounterLive, 1u);
    v7 = malloc_num_zones;
    v8 = initial_num_zones;
    if (initial_num_zones >= malloc_num_zones)
    {
LABEL_14:
      v4 = 0;
      v3 = 0;
    }

    else
    {
      while (1)
      {
        v4 = *(malloc_zones + v8);
        v3 = v4[2](v4, a1);
        if (v3)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    atomic_fetch_add(v6, 0xFFFFFFFF);
    if (!v4)
    {
      return 0;
    }
  }

  if (v3 < *MEMORY[0x1E69E9AC8])
  {
    return 0;
  }

  if (v3 % *MEMORY[0x1E69E9AC8])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t malloc_zone_claimed_address(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (*(a1 + 104) < 0xAu)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 136);

  return v4(a1, a2);
}

void malloc_make_purgeable(void *ptr)
{
  if (find_registered_purgeable_zone(ptr))
  {
    v2 = 1;
    MEMORY[0x193ACDD50](*MEMORY[0x1E69E9A60], ptr, 0, &v2);
  }
}

uint64_t xzm_segment_group_segment_foreach_span(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 2104;
  if (*(a1 + 20) != 1)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      return 0;
    }

    v8 = v3 + 48 * v7;
    while (1)
    {
      v9 = *(v3 + 32) & 0xF;
      if ((v9 - 5) < 5)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = 1;
        goto LABEL_9;
      }

      v11 = 0;
      do
      {
        v12 = v3 + v11 + 48;
        v13 = *(v3 + v11 + 80) & 0xF;
        v14 = v13 > 8 || ((1 << v13) & 0x1E4) == 0;
        v11 += 48;
      }

      while (v14 && v13 != 9 && v12 < v8);
      result = (*(a2 + 16))(a2, v3, -1431655765 * (v11 >> 4));
      if (result)
      {
        return result;
      }

      v3 += v11;
LABEL_11:
      if (v3 >= v8)
      {
        return 0;
      }
    }

    v10 = *(v3 + 40);
LABEL_9:
    result = (*(a2 + 16))(a2, v3, v10);
    if (result)
    {
      return result;
    }

    v3 += 48 * v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 2144);
  v5 = *(a2 + 16);

  return v5(a2, v3, v4);
}

uint64_t ___xzm_introspect_enumerate_block_invoke_2()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v4 = v1;
  v84[2048] = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 48);
  v6 = 0xAAAAAAAAAAAAC000 * ((v1 - v5 - 2104) >> 4);
  v7 = (v6 & 0x3FFFFFFFC000) + *(v5 + 40);
  v8 = *(v1 + 32) & 0xF;
  _ZF = v8 - 5 < 4 || v8 == 2;
  if (_ZF && (v10 = *(v0 + 64), *(v1 + 34) == *(v10 + 208)))
  {
    v11 = 0;
    if (v8 <= 6 && ((1 << v8) & 0x64) != 0)
    {
      v12 = *(v0 + 72);
      v13 = *(v10 + 216) + 96 * *(v1 + 33);
      if (v12 > v13)
      {
        v14 = 5;
LABEL_14:
        v15 = *MEMORY[0x1E69E9840];
        return v14;
      }

      v17 = v13 - v12;
      _CF = __CFADD__(v13 - v12, 96);
      v19 = v13 - v12 + 96;
      v20 = _CF;
      v14 = 5;
      v11 = v17 + v10;
      if (!(v17 + v10) || (v20 & 1) != 0 || v19 > *(v0 + 80))
      {
        goto LABEL_14;
      }
    }

    if (*(v0 + 108) == 1)
    {
      v21 = *(v0 + 96);
      v22 = *(v0 + 32);
      if (v8 > 6 || ((1 << v8) & 0x64) == 0)
      {
        v84[0] = (v6 & 0x3FFFFFFFC000) + *(v5 + 40);
        v84[1] = v2 << 14;
        v39 = (*(v22 + 16))(v22, v21, v5, v4, v2, v7, 0, v84, 1);
LABEL_70:
        v14 = v39;
        goto LABEL_14;
      }

      v23 = *(v11 + 68);
      v14 = 5;
      if (v23 > 0x400)
      {
        goto LABEL_14;
      }

      v24 = *(v11 + 48);
      v25 = v24;
      if ((v2 << 14) / v24 != v23)
      {
        goto LABEL_14;
      }

      if (v8 == 5)
      {
        v72 = *(v0 + 32);
        v26 = *(v0 + 96);
        bzero(v84, 0x4000uLL);
        if (v23)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = *v4;
          v31 = v26;
          v32 = v72;
          do
          {
            if (((v30 >> v28) & 1) == 0)
            {
              v33 = &v84[2 * v29];
              *v33 = v7 + v27;
              v33[1] = v24;
              ++v29;
            }

            ++v28;
            v27 += v24;
          }

          while (v23 != v28);
LABEL_68:
          v29 = v29;
          goto LABEL_69;
        }

        v29 = 0;
        v31 = v26;
        v32 = v72;
        goto LABEL_69;
      }

      v40 = *v4;
      if ((~*v4 & 0x7FELL) == 0)
      {
        v39 = (*(v22 + 16))(v22, v21, v5, v4, v2, v7, v11, 0, 0);
        goto LABEL_70;
      }

      v70 = *(v0 + 96);
      v71 = v6 + *(v0 + 56);
      v73 = *(v0 + 32);
      v69 = *(v0 + 104);
      v68 = *(v0 + 88);
      bzero(v84, 0x4000uLL);
      v41 = 0;
      if (v24 <= 0x1000uLL)
      {
        v42 = 4;
      }

      else
      {
        v42 = 10;
      }

      v43 = v24 >> v42;
      v44 = (v40 >> 11) & 0x7FF;
      v45 = v40 & 0x7FF;
      if (v45 <= 0x3FF && v44)
      {
        v41 = 0;
        v46 = malloc_has_sec_transition;
        do
        {
          if (v45 % v43)
          {
            break;
          }

          v47 = &v84[2 * (v45 / v43)];
          if (*v47)
          {
            break;
          }

          *v47 = 1;
          _X14 = (v45 << v42) + v71;
          if (v46)
          {
            __asm { LDG             X14, [X14] }
          }

          if (++v41 >= v44)
          {
            break;
          }

          v45 = *(_X14 + 8) & 0x7FFLL;
        }

        while (v45 < 0x400);
      }

      if ((v40 & 0xFC00000) != 0xFC00000)
      {
        v31 = v70;
        v32 = v73;
        if (v23 >= v44 && v41 < v44)
        {
          v23 = v23 - v44 + v41;
        }

        goto LABEL_63;
      }

      v14 = 5;
      if (v41 != v44)
      {
        goto LABEL_14;
      }

      if (*(v10 + 240))
      {
        goto LABEL_14;
      }

      v51 = *(v11 + 80);
      if (v51 >= *(v10 + 212))
      {
        goto LABEL_14;
      }

      v67 = v42;
      v80 = 0;
      v81 = &v80;
      v82 = 0x2000000000;
      v83 = 0;
      v76 = 0;
      v77 = &v76;
      v78 = 0x2000000000;
      v79 = 0;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 0x40000000;
      v74[2] = ___xzm_introspect_freelist_chunk_blocks_block_invoke;
      v74[3] = &unk_1E7260C40;
      v75 = v51;
      v74[5] = &v76;
      v74[6] = v7;
      v74[4] = &v80;
      v52 = _xzm_introspect_enumerate_thread_caches(v69, v68, v10, v74);
      if ((v52 & 0xFFFFFEFF) != 0)
      {
        v14 = v52;
      }

      else if (v81[3])
      {
        v58 = 0;
        v59 = v77[3];
        v60 = *(v59 + 18);
        if (*(v59 + 18))
        {
          v61 = *(v59 + 16);
          if (v61 <= 0x3FF)
          {
            v58 = 0;
            v62 = malloc_has_sec_transition;
            do
            {
              if (v61 % v43)
              {
                break;
              }

              v63 = &v84[2 * (v61 / v43)];
              if (*v63)
              {
                break;
              }

              *v63 = 1;
              _X13 = (v61 << v67) + v71;
              if (v62)
              {
                __asm { LDG             X13, [X13] }
              }

              if (++v58 >= v60)
              {
                break;
              }

              v61 = *(_X13 + 8) & 0x7FFLL;
            }

            while (v61 < 0x400);
          }
        }

        _CF = v58 >= v60;
        v65 = v58 - v60;
        if (_CF || v60 > v23)
        {
          v65 = 0;
        }

        v23 += v65;
        v14 = 5;
        v53 = 1;
LABEL_87:
        _Block_object_dispose(&v76, 8);
        _Block_object_dispose(&v80, 8);
        v31 = v70;
        v32 = v73;
        if ((v53 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_63:
        v29 = 0;
        if (v23)
        {
          v54 = v84;
          v55 = v7;
          do
          {
            v56 = *v54;
            v54 += 16;
            if ((v56 & 1) == 0)
            {
              v57 = &v84[2 * v29];
              *v57 = v55;
              v57[1] = v25;
              ++v29;
            }

            v55 += v25;
            --v23;
          }

          while (v23);
          goto LABEL_68;
        }

LABEL_69:
        v39 = (*(v32 + 16))(v32, v31, v5, v4, v3, v7, v11, v84, v29);
        goto LABEL_70;
      }

      v53 = 0;
      goto LABEL_87;
    }

    result = (*(*(v0 + 32) + 16))(*(v0 + 32), *(v0 + 96), v5, v1, v2, v7, v11, 0, 0);
    v38 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (*(v0 + 109) != 1 || *(v1 + 34))
    {
      v14 = 0;
      goto LABEL_14;
    }

    v34 = *(v0 + 96);
    v35 = *(*(v0 + 40) + 16);
    v36 = *MEMORY[0x1E69E9840];
    v37 = *(v0 + 40);

    return v35(v37, v34, v5, v4, v2, v7);
  }

  return result;
}

uint64_t __xzm_statistics_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v7 = a5 << 14;
  v8 = *(a4 + 32) & 0xF;
  if (v8 != 6)
  {
    if (v8 == 5)
    {
      v10 = *(a4 + 4);
LABEL_8:
      v9 = *(a1 + 32);
      *v9 += v10;
      v11 = *(v9 + 8) + *(a7 + 48) * v10;
LABEL_10:
      *(v9 + 8) = v11;
      goto LABEL_11;
    }

    if (v8 != 2)
    {
      v9 = *(a1 + 32);
      ++*v9;
      v11 = *(v9 + 8) + v7;
      goto LABEL_10;
    }
  }

  if ((~*a4 & 0x7FE) != 0)
  {
    v10 = *(a7 + 68) - ((*a4 >> 11) & 0x7FFu);
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
LABEL_11:
  *(v9 + 24) += v7;
  return 0;
}

void malloc_report(unsigned int a1, uint64_t a2)
{
  if (malloc_error_sleep)
  {
    v3 = 3600;
  }

  else
  {
    v3 = 0;
  }

  malloc_vreport(a1, v3, 0, 0, a2);
}

void malloc_vreport(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (_simple_salloc())
  {
    if ((a1 & 0x20) == 0)
    {
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      getprogname();
      getpid();
      _simple_sprintf();
    }

    if (a3)
    {
      _simple_sprintf();
    }

    _simple_vsprintf();
    if ((a1 & 0x100) != 0)
    {
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      *array = 0u;
      v9 = backtrace(array, 50);
      if (v9)
      {
        v10 = v9;
        backtrace_image_offsets(array, &image_offsets, v9);
        if (v10 >= 1)
        {
          v11 = 0;
          p_image_offsets = &image_offsets;
          do
          {
            *uu1 = 0;
            v19 = 0;
            if (!v11 || uuid_compare(uu1, p_image_offsets->uuid))
            {
              uuid_copy(uu1, p_image_offsets->uuid);
              memset(out, 0, 37);
              uuid_unparse(p_image_offsets->uuid, out);
            }

            _simple_sappend();
            offset = p_image_offsets->offset;
            _simple_sprintf();
            ++v11;
            ++p_image_offsets;
          }

          while (v10 != v11);
        }
      }
    }

    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      _simple_put();
    }

    if (!(_malloc_no_asl_log | a1 & 0x10))
    {
      _simple_string();
      _simple_asl_log();
    }

    if ((a1 & 0x40) != 0)
    {
      v13 = _simple_string();
    }

    else
    {
      _simple_sfree();
      v13 = 0;
    }
  }

  else
  {
    if ((a1 & 0x200) == 0 && (debug_mode == 2 || debug_mode == 1 && (a1 & 0x40) != 0))
    {
      if ((a1 & 0x20) == 0)
      {
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        getprogname();
        getpid();
        _simple_dprintf();
      }

      if (a3)
      {
        _simple_dprintf();
      }

      _simple_vdprintf();
    }

    if ((a1 & 0x40) != 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }
  }

  if ((a1 & 0xC0) != 0)
  {
    _malloc_put(a1, "*** set a breakpoint in malloc_error_break to debug\n");
    malloc_error_break();
    if (malloc_error_stop == 1)
    {
      _malloc_put(5u, "*** sending SIGSTOP to help debug\n");
      v14 = getpid();
      kill(v14, 17);
    }

    else if (a2)
    {
      _malloc_put(5u, "*** sleeping to help debug\n");
      sleep(a2);
    }
  }

  if ((a1 & 0x40) != 0)
  {
    qword_1EAC7F640 = v13;
    abort();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void mfm_unlock()
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

void *reallocarray_DARWIN_EXTSN(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    return j__realloc(a1, a2 * a3);
  }

  **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  return 0;
}

size_t malloc_zone_pressure_relief(malloc_zone_t *zone, size_t goal)
{
  if (!zone)
  {
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    v9 = malloc_num_zones;
    if (malloc_num_zones)
    {
      v6 = 0;
      v10 = 0;
      do
      {
        v11 = v10;
        v12 = v10 + 1;
        while (1)
        {
          v13 = *(malloc_zones + v11);
          if (*(v13 + 104) > 7u)
          {
            v14 = *(v13 + 128);
            if (v14)
            {
              break;
            }
          }

          ++v11;
          ++v12;
          if (v11 >= v9)
          {
            goto LABEL_23;
          }
        }

        v15 = *(v13 + 128);
        if (goal && goal <= v6)
        {
          break;
        }

        v10 = v11 + 1;
        v6 += v14();
        v9 = malloc_num_zones;
      }

      while (malloc_num_zones > v12);
    }

    else
    {
      v6 = 0;
    }

LABEL_23:
    v16 = *(StatusReg + 24);
    v17 = v16;
    atomic_compare_exchange_strong_explicit(&_malloc_lock, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != v16)
    {
      os_unfair_lock_unlock(&_malloc_lock);
    }

    return v6;
  }

  if (zone->version < 8)
  {
    return 0;
  }

  pressure_relief = zone->pressure_relief;
  if (!pressure_relief)
  {
    return 0;
  }

  v4 = zone->pressure_relief;

  return pressure_relief();
}

uint64_t _xzm_reclaim_is_reusable(uint64_t *a1)
{
  v1 = *a1;
  if (mach_vm_reclaim_query_state())
  {
    _xzm_reclaim_is_reusable_cold_1();
  }

  return mach_vm_reclaim_is_reusable();
}

uint64_t _xzm_segment_group_cache_mark_used(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 40);
  v6 = *(a2 + 12);
  _xzm_reclaim_mark_used(*(*(a1 + 24) + 568));
  is_reusable = mach_vm_reclaim_is_reusable();
  if (is_reusable)
  {
    *(a2 + 48) = -1;
    --*(a1 + 482);
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    v10 = (a1 + 472);
    if (v8)
    {
      v10 = (v8 + 32);
    }

    *v10 = v9;
    *v9 = v8;
  }

  else
  {
    --*(a1 + 482);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = (a1 + 472);
    if (v11)
    {
      v13 = (v11 + 32);
    }

    *v13 = v12;
    *v12 = v11;
    xzm_metapool_free(*(*(a1 + 24) + 480), a2);
  }

  return is_reusable;
}

int malloc_make_nonpurgeable(void *ptr)
{
  registered_purgeable_zone = find_registered_purgeable_zone(ptr);
  if (registered_purgeable_zone)
  {
    v4 = 0;
    MEMORY[0x193ACDD50](*MEMORY[0x1E69E9A60], ptr, 0, &v4);
    if (v4 == 2)
    {
      LODWORD(registered_purgeable_zone) = 14;
    }

    else
    {
      LODWORD(registered_purgeable_zone) = 0;
    }
  }

  return registered_purgeable_zone;
}

void _malloc_create_purgeable_zone()
{
  if (initial_xzone_zone && purgeable_zone_use_xzm == 1)
  {
    purgeable_zone = xzm_malloc_zone_create(malloc_debug_flags | 0x80u, initial_xzone_zone);
  }

  else
  {
    v1 = initial_scalable_zone;
    if (!initial_scalable_zone)
    {
      initial_scalable_zone = create_scalable_zone(0, malloc_debug_flags);
      malloc_set_zone_name(initial_scalable_zone, "DefaultScalableMallocZone");
      malloc_zone_register(initial_scalable_zone);
      v1 = initial_scalable_zone;
    }

    purgeable_zone = create_purgeable_zone(0, v1, malloc_debug_flags);
  }

  default_purgeable_zone = purgeable_zone;
  malloc_zone_register(purgeable_zone);
  v2 = default_purgeable_zone;

  malloc_set_zone_name(v2, "DefaultPurgeableMallocZone");
}

uint64_t xzm_segment_group_try_realloc_huge_chunk(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = *(a4 + 40);
  if (a5 <= v8)
  {
    if (v8 <= a5)
    {
      return 1;
    }

    v12 = *(a3 + 12);
    if (v12 == a5)
    {
      return 1;
    }

    v13 = *(a3 + 40);
    v14 = v13 + (v12 << 14);
    v15 = v13 + (a5 << 14);
    if (v15 >= v14)
    {
      return 1;
    }

    v16 = (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
    v17 = *(*(a1 + 3) + 480);
    v18 = xzm_metapool_alloc(v17);
    v19 = v14 - v16;
    if (v14 > v16)
    {
      v20 = *(a3 + 40) + (*(a3 + 12) << 14);
      if (v20 > v16)
      {
        v21 = *(a1 + 3);
        v22 = (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
        do
        {
          v23 = v22 >> 22;
          if (v22 >> 36)
          {
            v23 = 0x4000;
          }

          if (v23 >> 14)
          {
            v24 = 0;
          }

          else
          {
            v24 = (*(v21 + 488) + 4 * v23);
          }

          *v24 = 0;
          v22 += 0x400000;
        }

        while (v22 < v20);
      }
    }

    v25 = 0;
    v55 = a5 << 14;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(a1 + 122, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v25)
    {
      os_unfair_lock_lock_with_options();
      v19 = v14 - v16;
    }

    v27 = v14 - v15;
    if (v14 <= v16 || v19 <= 0x200000 || *(a1 + 241) >= *(a1 + 240))
    {
      v46 = *(StatusReg + 24);
      v47 = v46;
      atomic_compare_exchange_strong_explicit(a1 + 122, &v47, 0, memory_order_release, memory_order_relaxed);
      if (v47 != v46)
      {
        os_unfair_lock_unlock(a1 + 122);
      }

      xzm_metapool_free(v17, v18);
      v31 = v55;
    }

    else
    {
      v28 = v19;
      _xzm_segment_group_init_segment(a1, v18, (v15 + 0x3FFFFF) & 0xFFFFFFFFFFC00000, v19, 1, 0);
      _xzm_segment_group_cache_mark_free(a1, v18);
      v29 = *(StatusReg + 24);
      v30 = v29;
      atomic_compare_exchange_strong_explicit(a1 + 122, &v30, 0, memory_order_release, memory_order_relaxed);
      if (v30 != v29)
      {
        os_unfair_lock_unlock(a1 + 122);
      }

      v31 = v55;
      if (v15 >= v16)
      {
        goto LABEL_58;
      }

      v27 -= v28;
    }

    mvm_deallocate_plat(v15, v27, 0);
LABEL_58:
    v40 = 1;
    _xzm_segment_group_init_segment(a1, a3, *(a3 + 40), v31, 1, 0);
    return v40;
  }

  v10 = *(a4 + 32) & 0xF;
  if (v10 > 6)
  {
    if (v10 - 7 >= 2)
    {
      goto LABEL_65;
    }

    v11 = v8 << 14;
  }

  else
  {
    switch(v10)
    {
      case 2u:
        v11 = 0x4000;
        break;
      case 5u:
        v11 = 0x10000;
        break;
      case 6u:
        v11 = 0x20000;
        break;
      default:
LABEL_65:
        xzm_chunk_mark_free_cold_1(v10);
    }
  }

  _X27 = ((0xAAAAAAAAAAAAC000 * (((a4 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a4 & 0xFFFFFFFFFFFFC000) + 0x28);
  v33 = a5 - v8;
  v34 = (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
  v35 = _X27 + v11 + (v33 << 14);
  if (v34 < v35)
  {
    v36 = (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000;
    do
    {
      v37 = v36 >> 22;
      if (v36 >> 36)
      {
        v37 = 0x4000;
      }

      if (!(v37 >> 14))
      {
        v38 = *(*(a1 + 3) + 488);
        if (v38)
        {
          if ((*(v38 + 4 * v37) & 0x7FFFFFFF) != 0)
          {
            return 0;
          }
        }
      }

      v36 += 0x400000;
    }

    while (v36 < v35);
  }

  v39 = v33 << 14;
  if (!mvm_allocate_plat(_X27 + v11, v39, 0, 0, 0, 6))
  {
    return 0;
  }

  v40 = 1;
  _xzm_segment_group_init_segment(a1, a3, *(a3 + 40), a5 << 14, 1, 0);
  if (_X27 + (a5 << 14) > v34)
  {
    if (*(a2 + 240))
    {
      v41 = *(a2 + 240);
    }

    else
    {
      v41 = a2;
    }

    _xzm_segment_table_allocated_at(v41, (_X27 + v11 + 0x3FFFFF) & 0xFFFFFFFFFFC00000, a3, 0);
    v42 = *a1;
    if (v42 >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(v42);
    }

    v43 = *(a1 + 3);
    if (*(v43 + 368) == 1)
    {
      v44 = 16;
      if (((v42 - 1) & 0xFE) == 0)
      {
        v44 = 32769;
      }

      v45 = *(v43 + 376);
      if (v45 < v44 || ((0xCu >> (v42 & 0xF)) & 1) != 0)
      {
        if (v45 < v44)
        {
          return v40;
        }
      }

      else if ((*(v43 + 369) & 1) == 0)
      {
        return v40;
      }

      __asm { LDG             X27, [X27] }

      v53 = _X27 + v11;
      do
      {
        __asm
        {
          DC              GVA, X8
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
          DC              GVA, X10
        }

        v53 += 512;
      }

      while (v53 < _X27 + v11 + v39);
      return 1;
    }
  }

  return v40;
}

void xzm_malloc_zone_free_slow(uint64_t a1, unint64_t a2)
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

LABEL_101:
        v11 -= *(v11 + 36);
        goto LABEL_12;
      }

      if ((v43 & 6) != 0)
      {
        v47 = v11 == v41;
        *(v11 + 36);
      }

      else
      {
        v47 = 0;
      }

      if (v47)
      {
        goto LABEL_101;
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

  v13 = _X21 - (((0xAAAAAAAAAAAAC000 * (((v11 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v11 & 0xFFFFFFFFFFFFC000) + 0x28));
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
        goto LABEL_66;
      }

      goto LABEL_26;
    }

    if (((*v11 >> (v13 / v16)) & 1) == 0)
    {
      goto LABEL_66;
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

  v38 = *(a1 + 320) ^ _X22;
  if (v12 == 6)
  {
    v38 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v22 == v38)
  {
    v52 = v16;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v11, _X22);
    v16 = v52;
    if (is_free_slow)
    {
      goto LABEL_30;
    }
  }

LABEL_66:
  if (_X22 != a2)
  {
    v16 = v16 - a2 + _X22;
  }

LABEL_31:
  if (v16)
  {
    v24 = 0;
    goto LABEL_71;
  }

  if ((*(a1 + 360) & 0x80) == 0)
  {
LABEL_112:
    xzm_malloc_zone_free_slow_cold_3(a2);
  }

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
    goto LABEL_69;
  }

  v25 = *(v24 + 240);
  if (!v25)
  {
    v25 = v24;
  }

  v26 = *(v25 + 488);
  if (!v26)
  {
    goto LABEL_69;
  }

  v27 = (*(v26 + 4 * v5) & 0x7FFFFFFF) << 14;
  if (!v27)
  {
    goto LABEL_69;
  }

  v28 = a2 - *(v27 + 40);
  if (*(v27 + 16) <= (v28 >> 14))
  {
    goto LABEL_69;
  }

  v29 = v28 >> 14;
  v30 = v27 + 48 * v29 + 2104;
  if ((*(v27 + 48 * v29 + 2136) & 0xF) == 4)
  {
    v44 = v27 + 48 * v29 + 2104 - *(v27 + 48 * v29 + 2140);
    v45 = *(v44 + 32) & 0xF;
    if (v45 <= 9)
    {
      v46 = 1 << v45;
      if ((v46 & 0x3E8) != 0)
      {
        if (v44 + 48 * *(v44 + 40) <= v30)
        {
          goto LABEL_44;
        }

LABEL_109:
        v30 -= *(v30 + 36);
        goto LABEL_44;
      }

      if ((v46 & 6) != 0)
      {
        v49 = v30 == v44;
        *(v30 + 36);
      }

      else
      {
        v49 = 0;
      }

      if (v49)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_44:
  v31 = *(v30 + 32) & 0xF;
  if (v31 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v31);
  }

  if (((1 << v31) & 0x1E4) == 0 || *(v30 + 34) != *(v24 + 208))
  {
    goto LABEL_69;
  }

  v32 = _X21 - *((v30 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v30 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v31 > 6 || ((1 << v31) & 0x64) == 0)
  {
    v16 = *(v30 + 40) << 14;
    if (v32 % v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v34 = *(v24 + 216) + 96 * *(v30 + 33);
    if ((*(v34 + 64) * v32) >= *(v34 + 64))
    {
      goto LABEL_69;
    }

    v16 = *(v34 + 48);
  }

  if (*(v24 + 368) == 1)
  {
    __asm { LDG             X21, [X21] }

    if (((_X21 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_69;
    }
  }

  if (v31 != 6)
  {
    if (v31 != 5)
    {
      if (v31 != 2)
      {
        goto LABEL_86;
      }

      goto LABEL_58;
    }

    if (((*v30 >> (v32 / v16)) & 1) == 0)
    {
      goto LABEL_86;
    }

LABEL_69:
    v16 = _xzm_ptr_size_outlined(v24, a2);
    goto LABEL_70;
  }

LABEL_58:
  if (*(v30 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v36 = *_X21;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v36 = *_X21;
  }

  v40 = *(v24 + 320) ^ _X21;
  if (v31 == 6)
  {
    v40 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v36 == v40)
  {
    v50 = v16;
    v51 = _xzm_xzone_freelist_chunk_block_is_free_slow(v24, v30, _X21);
    v16 = v50;
    if (v51)
    {
      goto LABEL_69;
    }
  }

LABEL_86:
  if (_X21 != a2)
  {
    v16 = v16 - a2 + _X21;
  }

LABEL_70:
  if (!v16)
  {
    goto LABEL_112;
  }

LABEL_71:
  if (v16 >= 0x401 && (*(a1 + 360) & 0x20) != 0)
  {
    _platform_memset();
  }

  if (v24)
  {
    v39 = v24;
  }

  else
  {
    v39 = a1;
  }

  _xzm_free(v39, a2, 0);
}

__n128 pgm_statistics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16684);
  v3 = *MEMORY[0x1E69E9AC8] * v2;
  *a2 = v2;
  result = *(a1 + 16696);
  *(a2 + 8) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = MEMORY[0x1E69E9AC8];
  v4 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] < a2)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  if (a3 < 0x10 || v4 < a3)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  v7 = a1 + 0x4000;
  if (*(a1 + 16684) == *(a1 + 212))
  {
    return 0;
  }

  if (a2)
  {
    v9 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v9 = 16;
  }

  v10 = *(a1 + 16692);
  v11 = *(a1 + 280);
  v12 = *(v11 + 8 * v10) & 3;
  v13 = *(a1 + 208);
  while (v12 == 1)
  {
    LODWORD(v10) = (v10 + 1) % v13;
    v12 = *(v11 + 8 * v10) & 3;
  }

  *(a1 + 16692) = (v10 + 1) % v13;
  LODWORD(v14) = *(a1 + 16688);
  if (v14 >= *(a1 + 216))
  {
    v14 = *(v11 + 8 * v10) >> 2;
    if (*(*(a1 + 288) + (v14 << 8)) != v10)
    {
      do
      {
        v15 = *(a1 + 216);
        if (!v15)
        {
          (purgeable_ptr_in_use_enumerator_cold_1)();
        }

        v16 = arc4random_uniform(v15);
      }

      while ((*(*(a1 + 280) + 8 * *(*(a1 + 288) + (v16 << 8))) & 3) != 2);
      v4 = *v3;
      LODWORD(v14) = v16;
    }
  }

  else
  {
    *(a1 + 16688) = v14 + 1;
  }

  if (v4 < v9)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  if (v4 < a3)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  if ((v4 ^ (v4 - 1)) <= v4 - 1)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  v17 = *(a1 + 224);
  if (v17 >= 0x65)
  {
    (purgeable_ptr_in_use_enumerator_cold_1)();
  }

  v18 = arc4random_uniform(0x64u);
  if (*(a1 + 208) <= v10)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v18);
  }

  if (v18 >= v17)
  {
    v19 = (v4 - v9) & -a3;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 248) + *v3 * ((2 * v10) | 1u);
  my_vm_protect(v20, *v3, 3);
  v21 = *(a1 + 280) + 8 * v10;
  *v21 = (4 * v14) | 1;
  *(v21 + 4) = v9;
  *(v21 + 6) = v19;
  v22 = *(a1 + 288) + (v14 << 8);
  *v22 = v10;
  *(v22 + 4) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v22 + 12) = mach_absolute_time();
  *(v22 + 30) = 0;
  *(v22 + 22) = 0;
  *(v22 + 38) = 0;
  *(v22 + 20) = trace_collect(v22 + 40, 216);
  ++*(v7 + 300);
  v23 = *(a1 + 16696) + v9;
  *(a1 + 16696) = v23;
  if (v23 <= *(a1 + 16704))
  {
    v23 = *(a1 + 16704);
  }

  *(a1 + 16704) = v23;
  v8 = v20 + v19;
  debug_zone(a1, "allocated", v8);
  return v8;
}

uint64_t trace_collect(uint64_t a1, uint64_t a2)
{
  v16[65] = *MEMORY[0x1E69E9840];
  v4 = backtrace(v16, 65);
  if (v4 >= 2)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 - 1;
    while (2)
    {
      if (v6)
      {
        v9 = v16[v6];
      }

      else
      {
        v9 = 0;
      }

      v10 = v16[v6 + 1] - v9;
      v11 = 2 * (v10 / 4);
      if (v10 < -3)
      {
        v11 = ~v11;
      }

      v12 = (a1 + v7);
      result = v7;
      do
      {
        if (a2 == result)
        {
          result = v7;
          goto LABEL_15;
        }

        v13 = v11;
        *v12++ = v11 & 0x7F;
        ++result;
        v14 = v11 > 0x7F;
        v11 >>= 7;
      }

      while (v14);
      *(v12 - 1) = v13 | 0x80;
      ++v6;
      v7 = result;
      if (v6 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    result = 0;
  }

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t debug_zone(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 228) == 1)
  {
    v4 = result;
    v5 = mach_absolute_time();
    v6 = v5 - *(v4 + 16712);
    info = 0;
    mach_timebase_info(&info);
    if (*(v4 + 232) <= v6 * info.numer / info.denom / 0xF4240)
    {
      *(v4 + 16712) = v5;
      v7 = *(v4 + 16684);
      v8 = *(v4 + 212);
      malloc_report(6u, "ProbGuard: %9s 0x%llx, fill state: %3u/%u\n");
    }

    result = pgm_check(v4);
    if (!result)
    {
      debug_zone_cold_1(a3);
    }
  }

  return result;
}

void pgm_size_cold_1(uint64_t a1, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_0();
  v8 = (v6 + v7);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v6 + v7), &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  v11 = lookup_slot(v3, a2);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = *(*(v3 + 280) + 8 * v11 + 4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v8, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(v8);
  }

  *a3 = v12;
}

void pgm_free_cold_1(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_0_0();
  v6 = (v4 + v5);
  atomic_compare_exchange_strong_explicit((v4 + v5), &v7, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    os_unfair_lock_lock_with_options();
  }

  deallocate(v2, a2);
  OUTLINED_FUNCTION_1();
  if (!v8)
  {

    os_unfair_lock_unlock(v6);
  }
}

unint64_t lookup_slot(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = a2 - v2;
  if (a2 < v2 || (v4 = *(a1 + 256), v4 <= a2))
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  v5 = *MEMORY[0x1E69E9AC8];
  if (v2 % *MEMORY[0x1E69E9AC8])
  {
    purgeable_ptr_in_use_enumerator_cold_1();
  }

  if (v5 + v2 <= a2)
  {
    if (v4 - v5 <= a2)
    {
      v6 = *(a1 + 208) - 1;
    }

    else
    {
      v6 = ((v3 / v5) - 1) >> 1;
      if (((v3 / v5) & 1) == 0 && a2 % v5 >= v5 >> 1)
      {
        ++v6;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = *(a1 + 280) + 8 * v6;
  if ((v3 / v5))
  {
    v12 = *(v9 + 6);
    v13 = (a2 % v5);
    if (v13 == v12)
    {
      v11 = 0;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v14 = v13 < (*(v9 + 4) + v12) && v13 > v12;
      v11 = 0x200000000;
      if (v14)
      {
        v11 = 0x100000000;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0x300000000;
  }

  v15 = (v10 & ((*v9 & 3) == 1)) == 0;
  v16 = 0x8000000000000000;
  if (v15)
  {
    v16 = 0;
  }

  return v11 | v8 | v16;
}

uint64_t deallocate(uint64_t a1, unint64_t a2)
{
  v4 = lookup_slot(a1, a2);
  if ((v4 & 0x8000000000000000) == 0)
  {
    deallocate_cold_3(a2);
  }

  v5 = v4;
  v6 = *(a1 + 280);
  v7 = 8 * v4;
  v8 = *(v6 + v7);
  *(v6 + v7) = v8 & 0xFFFFFFFC | 2;
  v9 = *(a1 + 288) + ((v8 << 6) & 0x3FFFFFFF00);
  *(v9 + 22) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  *(v9 + 30) = mach_absolute_time();
  if (*(v9 + 20) >= 0x6Cu)
  {
    v10 = 108;
  }

  else
  {
    v10 = *(v9 + 20);
  }

  *(v9 + 20) = v10;
  v11 = trace_collect(v9 + v10 + 40, 216 - v10);
  v12 = *(a1 + 16684);
  *(v9 + 38) = v11;
  *(a1 + 16684) = v12 - 1;
  *(a1 + 16696) -= *(*(a1 + 280) + v7 + 4);
  if (*(a1 + 208) <= v5)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v11);
  }

  v13 = MEMORY[0x1E69E9AC8];
  v14 = (*(a1 + 248) + *MEMORY[0x1E69E9AC8] * ((2 * (v5 & 0x7FFFFFFF)) | 1));
  v15 = madvise(v14, *MEMORY[0x1E69E9AC8], 7);
  if (v15)
  {
    purgeable_ptr_in_use_enumerator_cold_1(v15);
  }

  my_vm_protect(v14, *v13, 0);

  return debug_zone(a1, "freed", a2);
}

void _xzm_xzone_thread_cache_destructor(uint64_t *a1)
{
  v2 = a1[2];
  a1[4] = atomic_fetch_add_explicit((v2 + 544), 1uLL, memory_order_relaxed) + 1;
  if (*(v2 + 212) >= 2u)
  {
    v3 = 1;
    do
    {
      v4 = &a1[3 * v3 + 5];
      if (*(v4 + 16) <= 0x400u)
      {
        v5 = *(v2 + 216) + 96 * v3;
        v6 = *v4;
        v7 = *(v5 + 68);
        v8 = *(v4 + 18);
        v9 = **v4;
        v10 = *(v4 + 16) < 0x400u;
        do
        {
          v11 = v9;
          if ((v9 & 0x40000000) != 0)
          {
            do
            {
              _xzm_walk_lock_wait(v2);
              v11 = *v6;
            }

            while ((*v6 & 0x40000000) != 0);
          }

          v12 = ((v11 >> 11) & 0x7FF) + v8;
          if (v7 == (((v11 >> 11) & 0x7FF) + v8))
          {
            v13 = 0;
            v14 = v11 & 0xFFFFFFFFB0000000 | 0x7FF;
          }

          else if (((v11 >> 11) & 0x7FF) + v8)
          {
            v14 = v11 & 0xFFFFFFFFA00007FFLL | ((v12 & 0x7FF) << 11) | 0x10000000;
            v15 = v11 & 0x7FF;
            if (v15 == 1024)
            {
              v14 = v11 & 0xFFFFF00020000000 | ((v12 & 0x7FF) << 11) & 0xFFFFF000303FF800 | 0x10000000 | *(v4 + 16) & 0x7FF | ((*(v4 + 20) & 0x1FFF) << 31);
            }

            else if (v10)
            {
              v16 = *(*v4 + 8) >> 4;
              v17 = v11 >> 31;
              v18 = (v11 >> 11) & 0x7FF;
              for (i = 1; ; ++i)
              {
                _X30 = *(v4 + 8) + 16 * v15;
                if (*(*v4 + 12))
                {
                  __asm { LDG             X30, [X30] }
                }

                if (*_X30 != (*(v2 + 320) ^ _X30))
                {
                  _xzm_xzone_thread_cache_destructor_cold_1(*_X30);
                }

                v24 = *(_X30 + 8);
                if (v24 != (v24 & 0xFFFFFF | ((v17 & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL))
                {
                  _xzm_xzone_thread_cache_destructor_cold_2(*(_X30 + 8));
                }

                v15 = *(_X30 + 8) & 0x7FFLL;
                if (v15 == 1024)
                {
                  break;
                }

                if (v15 != (v15 / v16) * v16 || v15 > (*(*v4 + 10) - 1) * v16 || i >= v18)
                {
                  _xzm_xzone_thread_cache_destructor_cold_3(i);
                }

                v17 = v24 >> 11;
              }

              if (v18 != i)
              {
                _xzm_xzone_thread_cache_destructor_cold_4(i);
              }

              v10 = 0;
              *(_X30 + 8) = *(v4 + 16) & 0x7FF | ((*(v4 + 20) & 0x1FFF) << 11) & 0xFFFFFFE000FFFFFFLL | ((v17 & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL;
            }

            else
            {
              v10 = 0;
            }

            v13 = 1;
          }

          else
          {
            v13 = 0;
            v14 = v11 & 0xFFFFFFFFB03FFFFFLL;
          }

          v9 = v11;
          atomic_compare_exchange_strong_explicit(v6, &v9, v14, memory_order_release, memory_order_relaxed);
        }

        while (v9 != v11);
        if ((~v14 & 0x7FF) != 0)
        {
          if (v13)
          {
            _xzm_chunk_list_slot_push(v2, v5, *(v2 + 232), v6);
          }
        }

        else
        {
          _xzm_xzone_madvise_freelist_chunk(v2, v5, v6);
        }
      }

      ++v3;
    }

    while (v3 < *(v2 + 212));
  }

  v27 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v2 + 552), &v27, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v27)
  {
    os_unfair_lock_lock_with_options();
  }

  v29 = *a1;
  v30 = a1[1];
  if (*a1)
  {
    *(v29 + 8) = v30;
  }

  *v30 = v29;
  v31 = *(StatusReg + 24);
  v32 = v31;
  atomic_compare_exchange_strong_explicit((v2 + 552), &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != v31)
  {
    os_unfair_lock_unlock((v2 + 552));
  }

  v33 = (*(v2 + 480) + 192);

  xzm_metapool_free(v33, a1);
}

uint64_t _posix_memalign(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = _malloc_zone_memalign(default_zone, a2, a3, 0, (v3 >> 2));
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a1 = v7;
  }

  else if ((a2 & (a2 - 1)) == 0 && a2 > 7)
  {
    return 12;
  }

  else
  {
    return 22;
  }

  return result;
}

uint64_t _malloc_zone_memalign(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = *(StatusReg + 904);
  if (!v10)
  {
    *(StatusReg + 904) = a5;
  }

  v11 = malloc_tracing_enabled;
  if (malloc_tracing_enabled == 1)
  {
    kdebug_trace();
  }

  if (*(a1 + 104) < 5u)
  {
    goto LABEL_9;
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  if (malloc_absolute_max_size < a3)
  {
    goto LABEL_9;
  }

  v12 = 0;
  v13 = 22;
  if (a2 >= 8)
  {
    v15 = vcnt_s8(a2);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] <= 1uLL)
    {
      if (((a2 - 1) & a3) == 0 || (a4 & 2) == 0)
      {
        v16 = *(a1 + 112);
        if (v16)
        {
          v17 = *(a1 + 112);
          v12 = v16(a1, a2, a3);
          if (malloc_logger)
          {
            malloc_logger(10, a1, a3, 0, v12, 0);
          }

          if (malloc_simple_stack_logging == 1)
          {
            malloc_report(0x325u, "memalign (%p/%llu,%llu): ");
            if (!v11)
            {
              goto LABEL_10;
            }
          }

          else if (!v11)
          {
            goto LABEL_10;
          }

          kdebug_trace();
          goto LABEL_10;
        }

LABEL_9:
        v12 = 0;
LABEL_10:
        v13 = 12;
        goto LABEL_11;
      }

      v12 = 0;
      v13 = 22;
    }
  }

LABEL_11:
  if (!v10)
  {
    *(StatusReg + 904) = 0;
  }

  if (!v12 && (a4 & 1) != 0)
  {
    **(StatusReg + 8) = v13;
  }

  return v12;
}

void xzm_malloc_zone_memalign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 904);
  v7 = (malloc_get_thread_options() << 27) & 0x40000000;

  _xzm_memalign(a1, a2, a3, v6, v7, v8);
}

uint64_t default_zone_memalign()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 112))();
}

uint64_t xzm_chunk_mark_free(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(v2 + 568);
  v4 = *(a2 + 32) & 0xF;
  if (v4 > 6)
  {
    if (v4 - 7 < 2)
    {
      v5 = *(a2 + 40) << 14;
      goto LABEL_10;
    }

LABEL_11:
    xzm_chunk_mark_free_cold_1(*(a2 + 32) & 0xF);
  }

  if (v4 != 2 && v4 != 5 && v4 != 6)
  {
    goto LABEL_11;
  }

LABEL_10:
  v6 = (a2 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((a2 & 0x3FFF) - 2104) >> 4);
  v7 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  result = _xzm_reclaim_mark_free(v3);
  *(v6 + 56) = result;
  return result;
}

uint64_t malloc_get_all_zones(uint64_t a1, uint64_t (*a2)(task_name_t a1, uint64_t a2, uint64_t a3, unsigned int **a4), unsigned int **a3, _DWORD *a4)
{
  v6 = a2;
  if (!a2)
  {
    if (a1)
    {
      is_self = mach_task_is_self(a1);
      if (!is_self)
      {
        purgeable_ptr_in_use_enumerator_cold_1(is_self);
      }
    }

    v6 = _malloc_default_reader_6;
  }

  v16 = 0;
  v17[0] = 0;
  v9 = v6(a1, &malloc_zones, 8, v17);
  if (v9)
  {
    v10 = v9;
    v11 = "*** malloc_get_all_zones: error reading zones_address at %p\n";
LABEL_11:
    malloc_report(3u, v11);
    return v10;
  }

  v12 = *v17[0];
  v17[1] = *v17[0];
  v13 = v6(a1, &malloc_num_zones, 4, &v16);
  if (v13)
  {
    v10 = v13;
    v11 = "*** malloc_get_all_zones: error reading num_zones at %p\n";
    goto LABEL_11;
  }

  v14 = *v16;
  *a4 = v14;
  v10 = v6(a1, v12, 8 * v14, a3);
  if (v10)
  {
    v11 = "*** malloc_get_all_zones: error reading zones at %p\n";
    goto LABEL_11;
  }

  return v10;
}