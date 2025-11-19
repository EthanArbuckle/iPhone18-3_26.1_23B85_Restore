void *__cdecl malloc_type_malloc(size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {
    return _malloc_type_malloc_outlined(size, type_id, 1);
  }

  v4 = *malloc_zones;
  v5 = *(*malloc_zones + 104);
  if (v5 >= 0x10)
  {
    return (*(v4 + 160))(v4, size, type_id);
  }

  if (v5 <= 0xC)
  {
    return _malloc_type_malloc_outlined(size, type_id, 1);
  }

  else
  {
    return (*(v4 + 24))(v4, size);
  }
}

uint64_t *_xzm_xzone_malloc_tiny_or_early(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 2) == 0)
  {
    v3 = *(a2 + 40);
    while (v3)
    {
      v4 = v3;
      atomic_compare_exchange_strong_explicit((a2 + 40), &v4, v3 - 1, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
      if (v5)
      {
        return mfm_alloc(*(a2 + 48));
      }
    }
  }

  return _xzm_xzone_malloc_tiny(a1, a2, 0);
}

void _xzm_xzone_malloc(uint64_t a1, unint64_t a2, unsigned int a3, int a4, int8x8_t a5)
{
  v6 = *(a1 + 216) + 96 * a3;
  if ((a4 & 0x40000000) != 0 || a2 > 0x100 || (*(a1 + 249) & 1) == 0)
  {
    if ((a4 & 2) == 0 && !*(a1 + 240) && ((a4 & 0x40000000) == 0 || (*(a1 + 368) & 1) == 0))
    {
      v17 = *(v6 + 40);
      while (v17)
      {
        v18 = v17;
        atomic_compare_exchange_strong_explicit((v6 + 40), &v18, v17 - 1, memory_order_relaxed, memory_order_relaxed);
        _ZF = v18 == v17;
        v17 = v18;
        if (_ZF)
        {
          mfm_alloc(*(v6 + 48));
          return;
        }
      }
    }

    if (a2 > 0x1000)
    {
      if (*(a1 + 250) == 1)
      {
        _xzm_xzone_malloc_small_freelist(a1, v6, a4);
      }

      else
      {
        _xzm_xzone_malloc_small(a1, v6, a4, a5);
      }
    }

    else
    {
      _xzm_xzone_malloc_tiny(a1, v6, a4);
    }
  }

  else
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
    if (v7)
    {
      v8 = v7 + 24 * a3;
      v9 = *(v8 + 56);
      if (v9 > 0x3FF)
      {
        if (v9 == 0xFFFF)
        {
          v19 = *(v8 + 60) + 1;
          *(v8 + 60) = v19;
          if (v19 == *(a1 + 252))
          {
            _xzm_xzone_thread_cache_record_and_malloc_outlined(a1, v6, a4, v8 + 40);
          }

          else
          {
            _xzm_xzone_malloc_tiny_or_early(a1, v6, a4);
          }
        }

        else if (v9 == 1024 && *(v8 + 58))
        {
          _X8 = (*(v8 + 48) + (*(v6 + 68) - *(v8 + 58)) * *(v6 + 48));
          if (*(a1 + 368) == 1)
          {
            __asm { LDG             X8, [X8] }
          }

          *_X8 = 0;
          _X8[1] = 0;
          --*(v8 + 58);
        }

        else
        {
          _xzm_xzone_thread_cache_fill_and_malloc(a1, v6, v8 + 40);
        }
      }

      else
      {
        _X8 = (*(v8 + 48) + 16 * v9);
        if (*(a1 + 368) == 1)
        {
          __asm { LDG             X8, [X8] }
        }

        v15 = _X8[1];
        if (v15 == (v15 & 0xFFFFFF | ((*(v8 + 60) & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL))
        {
          *_X8 = 0;
          _X8[1] = 0;
          *(v8 + 56) = (v15 & 0x7FF | (*(v8 + 58) << 16)) - 0x10000;
          *(v8 + 60) = (v15 >> 11) & 0x1FFF;
        }

        else
        {
          _xzm_xzone_thread_cache_malloc_corrupt(_X8);
        }
      }
    }

    else
    {
      _xzm_thread_cache_create_and_malloc(a1, v6, a4);
    }
  }
}

void _xzm_malloc_zone_malloc_type_calloc_entry(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int8x8_t a6)
{
  v6 = a3;
  if (a2 == 1 || is_mul_ok(a2, a3) && (v6 = a2 * a3, a2 * a3 <= malloc_absolute_max_size))
  {
    if (v6 <= 0x8000)
    {
      if (*(a1 + 240))
      {
        v7 = *(a1 + 240);
      }

      else
      {
        v7 = a1;
      }

      v8 = __clz(v6 - 1);
      v9 = (((v6 - 1) >> (61 - v8)) & 3) - 4 * v8 + 488;
      if (v6 <= 0x80)
      {
        v9 = (__PAIR128__(v6 >> 4, v6 & 0xF) - 1) >> 64;
      }

      if (!v6)
      {
        LOBYTE(v9) = 0;
      }

      v10 = v9;
      v11 = *(v7[56] + v9);
      if (HIWORD(a4) == 256)
      {
        v12 = 0;
      }

      else if ((a4 & 0xC0000000000) == 0x40000000000)
      {
        v12 = 1;
      }

      else
      {
        v13 = *(v7[55] + v10);
        if ((v13 & 0xFE) == 2)
        {
          LOBYTE(v14) = 0;
        }

        else
        {
          v15 = dword_1ED40432C;
          if (a4)
          {
            v15 = a4;
          }

          v14 = v7[50] + v15 * v7[49];
          if (v13 == 6)
          {
            v14 = HIDWORD(v14) & 3;
          }

          else if (v13 == 5)
          {
            LODWORD(v14) = HIDWORD(v14) % 3;
          }

          else
          {
            v14 = HIDWORD(v14) & 1;
          }
        }

        v12 = v14 + 2;
      }

      _xzm_xzone_malloc(a1, v6, (v12 + v11), a5 | 1, a6);
    }

    else
    {
      _xzm_malloc_large_huge(a1, v6, 0, a4, a5 | 1);
    }
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }
}

void *__cdecl malloc_type_calloc(size_t count, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0)
  {
    return _malloc_type_calloc_outlined(count, size, type_id);
  }

  v6 = *malloc_zones;
  v7 = *(*malloc_zones + 104);
  if (v7 >= 0x10)
  {
    return (*(v6 + 168))(v6, count, size, type_id);
  }

  if (v7 <= 0xC)
  {
    return _malloc_type_calloc_outlined(count, size, type_id);
  }

  else
  {
    return (*(v6 + 32))(v6, count, size);
  }
}

void xzm_malloc_inline(uint64_t a1, unint64_t a2, unint64_t a3, int a4, int8x8_t a5)
{
  if (a2 <= 0x8000)
  {
    if (*(a1 + 240))
    {
      v5 = *(a1 + 240);
    }

    else
    {
      v5 = a1;
    }

    v6 = __clz(a2 - 1);
    v7 = (((a2 - 1) >> (61 - v6)) & 3) - 4 * v6 + 488;
    if (a2 <= 0x80)
    {
      v7 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v7) = 0;
    }

    v8 = v7;
    v9 = *(v5[56] + v7);
    if (HIWORD(a3) == 256)
    {
      v10 = 0;
    }

    else if ((a3 & 0xC0000000000) == 0x40000000000)
    {
      v10 = 1;
    }

    else
    {
      v11 = *(v5[55] + v8);
      if ((v11 & 0xFE) == 2)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v13 = dword_1ED40432C;
        if (a3)
        {
          v13 = a3;
        }

        v12 = v5[50] + v13 * v5[49];
        if (v11 == 6)
        {
          v12 = HIDWORD(v12) & 3;
        }

        else if (v11 == 5)
        {
          LODWORD(v12) = HIDWORD(v12) % 3;
        }

        else
        {
          v12 = HIDWORD(v12) & 1;
        }
      }

      v10 = v12 + 2;
    }

    _xzm_xzone_malloc(a1, a2, (v10 + v9), a4, a5);
  }

  else
  {
    _xzm_malloc_large_huge(a1, a2, 0, a3, a4);
  }
}

unint64_t xzm_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x8000)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if ((a2 & 0x3FFF) != 0)
    {
      return v6;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    v2 = *(a1 + 240);
    if (!v2)
    {
      v2 = a1;
    }

    v3 = __clz(a2 - 1);
    v4 = (((a2 - 1) >> (61 - v3)) & 3) - 4 * v3 + 488;
    if (a2 <= 0x80)
    {
      v4 = (__PAIR128__(a2 >> 4, a2 & 0xF) - 1) >> 64;
    }

    if (!a2)
    {
      LOBYTE(v4) = 0;
    }

    return *(*(v2 + 432) + 8 * v4);
  }
}

void _free(uint64_t *a1)
{
  if (a1)
  {
    if ((malloc_slowpath & 1) != 0 || malloc_logger || (v2 = *malloc_zones, *(*malloc_zones + 104) <= 0xCu) || (v3 = *(v2 + 144)) == 0)
    {
      find_zone_and_free(a1, 0);
    }

    else
    {
      v4 = *(v2 + 144);
      v3();
    }
  }
}

uint64_t default_zone_good_size()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(*(v0 + 96) + 8))();
}

void _xzm_free(uint64_t a1, unint64_t a2, char a3)
{
  if (!a2)
  {
    return;
  }

  v3 = a1;
  _X8 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v5 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v5 = 0x4000;
  }

  if (v5 >> 14)
  {
    goto LABEL_5;
  }

  v6 = *(a1 + 240);
  if (!v6)
  {
    v6 = a1;
  }

  v7 = *(v6 + 488);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 4 * v5);
  if ((v8 & 0x80000000) == 0 || (*(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x858) & 0xF) != 2)
  {
    goto LABEL_71;
  }

  v9 = ((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 2104;
  if (*(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x85A) != *(a1 + 208))
  {
    goto LABEL_5;
  }

  v10 = *(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x840);
  v11 = a2 & 0x3FFF;
  if ((a2 & 0x3FFF) % v10)
  {
    goto LABEL_5;
  }

  v12 = *(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x859);
  v13 = *(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x844);
  v14 = a2;
  if (v13 == 1)
  {
    __asm { LDG             X8, [X8] }

    v14 = _X8;
    if (((_X8 ^ a2) & 0xF00000000000000) != 0)
    {
LABEL_5:

      _xzm_free_not_found(a1, a2, a3);
      return;
    }
  }

  v20 = *(a1 + 320) ^ a2;
  if (*v14 != v20)
  {
    if ((v10 - 17) <= 0x3EF)
    {
      v21 = *(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x859);
      bzero(v14, *(((48 * (a2 >> 14)) & 0xFFFFE00000003FFFLL | ((v8 & 0x7FFFFFFF) << 14)) + 0x840));
      v12 = v21;
    }

    if (v13)
    {
      v22 = v14;
      v23 = v12;
      v24 = _xzm_xzone_block_memtag_retag(v22, v10);
      v12 = v23;
      v14 = v24;
      v20 = v20 & 0xF0FFFFFFFFFFFFFFLL | ((HIBYTE(v24) & 0xF) << 56);
    }

    *v14 = v20;
    v25 = v11 >> 4;
    if (v10 <= 0x100 && *(v3 + 249) == 1)
    {
      v26 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
      if (v26)
      {
        v27 = v26 + 24 * v12;
        v28 = *(v27 + 56);
        if (v28 <= 0x400 && *(v27 + 40) == v9)
        {
          v54 = *(v27 + 62) & 0xFFF | 0x1000;
          v14[1] = (((*(v27 + 60) & 0x1FFF) << 11) | v28 | (v54 << 24)) & 0xFFFFFFE000FFFFFFLL;
          *(v27 + 56) = (v25 | (*(v27 + 58) << 16)) + 0x10000;
          *(v27 + 60) = v54;
          ++*(v27 + 62);
          return;
        }
      }
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = *(v9 + 10);
    v34 = *v9;
    v35 = 1;
    if ((*v9 & 0x40000000) != 0)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v36 = (v34 & 0xFFFFFFFFBFFFFFFFLL) + 0x100000000000;
      v37 = (v34 >> 11) & 0x7FF;
      if (v37 + 1 == v33)
      {
        if ((v30 & 1) == 0)
        {
          v32 = *(v3 + 216) + 96 * v12;
          v38 = (v34 >> 22) & 0x3F;
          if (v38)
          {
            if (v38 != 63)
            {
              v39 = *(v3 + 232);
              v40 = *(v32 + 85);
              if (v40 == 1)
              {
                v41 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
              }

              else
              {
                LOBYTE(v41) = v40 == 2 ? _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) : 0;
              }

              if ((*(v39 + 16 * v41 * *(v3 + 210) + 16 * *(v32 + 80)) & 0x7FFFFFFFFFFFLL) == 0)
              {
                v55 = v25;
                v43 = v3;
                v44 = v32;
                v45 = v12;
                v46 = v35;
                v47 = mach_absolute_time();
                v12 = v45;
                v32 = v44;
                v3 = v43;
                v25 = v55;
                v31 = v47;
                v29 = *(v3 + 224) + 32 * *(v3 + 210) * (v38 - 1) + 32 * *(v32 + 80);
                v35 = (v47 - *(v29 + 24) >= *(v3 + 312)) & v46;
              }
            }
          }
        }

        v42 = 0;
        v30 = 1;
        if (~v34 & 0xFC00000) != 0 && (v35)
        {
          v42 = 0;
          v48 = v36 & 0xFFFFFFFFB0000000 | 0x7FF;
          v30 = 1;
          v35 = 1;
          goto LABEL_48;
        }
      }

      else
      {
        if (v37)
        {
          goto LABEL_38;
        }

        if ((v34 & 0x7FF) != 0x400)
        {
          _xzm_free_abort(v14);
        }

        if ((v34 & 0xFC00000) != 0)
        {
LABEL_38:
          v42 = 0;
        }

        else
        {
          v36 |= 0x10000000uLL;
          v32 = *(v3 + 216) + 96 * v12;
          v42 = 1;
        }
      }

      v14[1] = v34 & 0x7FF | (((v34 >> 31) & 0x1FFF) << 11) & 0xFFFFFFE000FFFFFFLL | (((v34 >> 44) & 0xFFF) << 24) & 0xFFFFFFE000FFFFFFLL;
      v48 = v36 & 0xFFFFF0007FC00000 | (v36 + 2048) & 0x3FF800 | (((v34 >> 44) & 0xFFF) << 31) | v25;
LABEL_48:
      v49 = v34;
      atomic_compare_exchange_strong_explicit(v9, &v49, v48, memory_order_release, memory_order_relaxed);
      if (v49 == v34)
      {
        if (v31)
        {
          *(v29 + 24) = v31;
        }

        if ((~v48 & 0x7FF) != 0)
        {
          if (v42)
          {
            v53 = *(v3 + 232);

            _xzm_chunk_list_slot_push(v3, v32, v53, v9);
          }
        }

        else
        {
          v51 = *(v3 + 240);
          if (!v51)
          {
            v51 = v3;
          }

          v52 = *(v51 + 424);
          if (*(v51 + 424))
          {

            _xzm_chunk_batch_list_push(v3, v32, v9, v52);
          }

          else
          {

            _xzm_xzone_madvise_freelist_chunk(v3, v32, v9);
          }
        }

        return;
      }

      v34 = v49;
      if ((v49 & 0x40000000) != 0)
      {
        do
        {
LABEL_50:
          _xzm_walk_lock_wait(v3);
          v35 = v50;
          v34 = *v9;
        }

        while ((*v9 & 0x40000000) != 0);
      }
    }
  }

LABEL_71:

  _xzm_free_outlined(a1, a2, a3, v8);
}

uint64_t _xzm_xzone_malloc_tiny(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 86);
  if (v4 == 1)
  {
    v5 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
  }

  else if (v4 == 2)
  {
    LOBYTE(v5) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  _X4 = 0;
  v7 = (*(a1 + 224) + 32 * *(a1 + 210) * v5 + 32 * *(a2 + 80));
  v8 = *v7;
  if ((*v7 & 1) == 0 && (v8 & 0x1FFFFFFFFFFFCLL) != 0)
  {
    if ((a3 & 0x40000000) == 0 || (*(a2 + 87) & 2) == 0)
    {
      v10 = (v8 >> 2) & 0x7FFFFFFFFFFFLL;
      v11 = *(v10 + 0xC);
      v12 = (v8 >> 2) & 0x7FFFFFFFC000;
      v13 = *v10;
      if ((*v10 & 0x40000000) == 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = ((0xAAAAAAAAAAAAC000 * ((v10 - v12 - 2104) >> 4)) & 0x3FFFFFFFC000) + *(v12 + 0x28);
        do
        {
          if (((v13 >> 22) & 0x3F) != v5 + 1)
          {
            break;
          }

          if ((v13 & 0x3FF800) != 0)
          {
            v18 = (v13 + 4192256) & 0x3FF800 | v13 & 0xFFFFFFFFBFC007FFLL;
            v19 = v13 & 0x7FF;
            if (v19 > 0x3FF)
            {
              _X4 = v17 + (*(a2 + 68) - ((v13 >> 11) & 0x7FF)) * *(a2 + 48);
            }

            else
            {
              _X4 = v17 + 16 * v19;
              if (v11)
              {
                __asm { MSR             TCO, #1 }

                v14 = *_X4;
                v15 = *(_X4 + 8);
                __asm { MSR             TCO, #0 }
              }

              else
              {
                v14 = *_X4;
                v15 = *(_X4 + 8);
              }

              v18 = (v13 + 4192256) & 0x3FF800 | v13 & 0xFFFFF0003FC00000 | v15 & 0x7FF | (((v15 >> 11) & 0x1FFF) << 31);
            }

            v25 = v13;
            atomic_compare_exchange_strong_explicit(v10, &v25, v18, memory_order_relaxed, memory_order_relaxed);
            if (v25 == v13)
            {
              if (v11)
              {
                if (v19 <= 0x3FF)
                {
                  _X4 = _X4 & 0xF0FFFFFFFFFFFFFFLL | ((HIBYTE(v14) & 0xF) << 56);
                  goto LABEL_35;
                }

                v26 = 0;
                __asm { LDG             X4, [X4] }
              }

              else if (v19 > 0x3FF)
              {
                v26 = 0;
              }

              else
              {
LABEL_35:
                if ((*(a1 + 320) ^ _X4) != v14)
                {
                  goto LABEL_11;
                }

                v26 = v15 != (v15 & 0xFFFFFF | (((v13 >> 31) & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL);
              }

              if (!_X4 || v26)
              {
                goto LABEL_11;
              }

              if (*(a1 + 249) == 1 && *(a2 + 48) <= 0x100uLL)
              {
                if (v16)
                {
                  v27 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
                  if (v27)
                  {
                    v28 = (v27 + 24 * *(a2 + 80));
                    if (v28[28] == -1)
                    {
                      v29 = v28[29] + 1;
                      v28[29] = v29;
                      if (*(a1 + 256) == v29)
                      {
                        v28[28] = -2;
                        v28[31] = v28[24] & 0xFFF;
                      }
                    }
                  }
                }
              }

              else
              {
                v30 = v7[2];
                v31 = (*(a1 + 248) >> 4) & 3;
                if (HIBYTE(v30) != v31 && (((v30 & 0xFFFFFF00000000) == 0) & ~v16) == 0)
                {
                  v32 = 0x100000001;
                  if ((v16 & 1) == 0)
                  {
                    v32 = 1;
                  }

                  v33 = atomic_fetch_add_explicit(v7 + 2, v32, memory_order_relaxed) + v32;
                  v34 = HIBYTE(v33);
                  if (HIBYTE(v33) != v31)
                  {
                    v35 = *(a1 + 4 * v34 + 292);
                    if ((HIDWORD(v33) & 0xFFFFFFu) >= v35)
                    {
                      if ((HIDWORD(v33) & 0xFFFFFFu) <= v35)
                      {
                        v37 = ncpuclusters;
                        if (v34)
                        {
                          _CF = 0;
                        }

                        else
                        {
                          _CF = ncpuclusters >= 2;
                        }

                        v39 = !_CF;
                        _ZF = v39 == 0;
                        if (v39)
                        {
                          v41 = 2;
                        }

                        else
                        {
                          v41 = 1;
                        }

                        *(a2 + 86) = v41;
                        v42 = 0x100000000000000;
                        if (!_ZF)
                        {
                          v42 = 0x200000000000000;
                          v37 = logical_ncpus;
                        }

                        if (v37)
                        {
                          for (i = 0; i != v37; ++i)
                          {
                            *(*(a1 + 224) + 32 * i * *(a1 + 210) + 32 * *(a2 + 80) + 16) = v42;
                          }
                        }
                      }
                    }

                    else
                    {
                      v36 = *(a1 + 304);
                      if (v36 <= v33 && v36 >= v33)
                      {
                        v44 = v7[2];
                        do
                        {
                          if (v44 < v33)
                          {
                            break;
                          }

                          if (v34 < HIBYTE(v44))
                          {
                            break;
                          }

                          v45 = v44;
                          atomic_compare_exchange_strong_explicit(v7 + 2, &v45, v33 & 0xFF00000000000000, memory_order_relaxed, memory_order_relaxed);
                          _ZF = v45 == v44;
                          v44 = v45;
                        }

                        while (!_ZF);
                      }
                    }
                  }
                }
              }

              *_X4 = 0;
              *(_X4 + 8) = 0;
              if ((a3 & 1) == 0 || *(a2 + 48) < 0x401uLL)
              {
                return _X4;
              }

              return _platform_memset();
            }

            v16 = 1;
            v13 = v25;
          }

          else
          {
            v24 = v13;
            atomic_compare_exchange_strong_explicit(v10, &v24, v13 & 0xFFFFFFFFB00007FFLL, memory_order_relaxed, memory_order_relaxed);
            _ZF = v24 == v13;
            v13 = v24;
            if (_ZF)
            {
              break;
            }
          }
        }

        while ((v13 & 0x40000000) == 0);
      }
    }

    _X4 = 0;
  }

LABEL_11:

  return _xzm_xzone_malloc_freelist_outlined(a1, a2, v5, v7, _X4, a3);
}

void *_xzm_xzone_thread_cache_fill_and_malloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) != -2 && (result = _xzm_xzone_malloc_from_freelist_chunk(a1, a2, 62, a3, *a3, 0, &v8, 0)) != 0 || (result = _xzm_xzone_find_and_malloc_from_freelist_chunk(a1, a2, 62, a3, &v7, &v8)) != 0)
  {
    *result = 0;
    result[1] = 0;
  }

  else
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
  }

  return result;
}

uint64_t _xzm_xzone_find_and_malloc_from_freelist_chunk(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _BYTE *a6)
{
  v80 = *(a2 + 48);
  v12 = a1 + 272;
  while (1)
  {
    v13 = *(a1 + 232);
    v14 = *(a2 + 85);
    if (v14 == 1)
    {
      v15 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
    }

    else
    {
      LOBYTE(v15) = v14 == 2 ? _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) : 0;
    }

    v16 = (v13 + 16 * v15 * *(a1 + 210) + 16 * *(a2 + 80));
    v84 = 0;
    v17 = _xzm_chunk_list_pop(a1, v16, 0, &v84);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    v19 = v16[1];
    v20 = *(a1 + 248) & 3;
    if (HIBYTE(v19) != v20)
    {
      v21 = (v19 & 0xFFFFFF00000000) == 0 && v84 == 0;
      if (!v21)
      {
        v22 = v84 ? 0x100000001 : 1;
        v23 = atomic_fetch_add_explicit(v16 + 1, v22, memory_order_relaxed) + v22;
        v24 = HIBYTE(v23);
        if (HIBYTE(v23) != v20)
        {
          v25 = *(v12 + 4 * v24);
          if ((HIDWORD(v23) & 0xFFFFFFu) >= v25)
          {
            if ((HIDWORD(v23) & 0xFFFFFFu) <= v25)
            {
              v29 = ncpuclusters;
              if (v24)
              {
                v30 = 0;
              }

              else
              {
                v30 = ncpuclusters >= 2;
              }

              v31 = !v30;
              v32 = v31 == 0;
              if (v31)
              {
                v33 = 2;
              }

              else
              {
                v33 = 1;
              }

              *(a2 + 85) = v33;
              v34 = 0x100000000000000;
              if (!v32)
              {
                v34 = 0x200000000000000;
                v29 = logical_ncpus;
              }

              if (v29)
              {
                for (i = 0; i != v29; ++i)
                {
                  *(*(a1 + 232) + 16 * i * *(a1 + 210) + 16 * *(a2 + 80) + 8) = v34;
                }
              }
            }
          }

          else
          {
            v26 = *(a1 + 284);
            if (v26 <= v23 && v26 >= v23)
            {
              v36 = v16[1];
              do
              {
                if (v36 < v23)
                {
                  break;
                }

                if (v24 < HIBYTE(v36))
                {
                  break;
                }

                v37 = v36;
                atomic_compare_exchange_strong_explicit(v16 + 1, &v37, v23 & 0xFF00000000000000, memory_order_relaxed, memory_order_relaxed);
                v21 = v37 == v36;
                v36 = v37;
              }

              while (!v21);
            }
          }
        }
      }
    }

    v83 = 0;
    v28 = _xzm_xzone_malloc_from_freelist_chunk(a1, a2, a3, a4, v17, v80 > 0x1000, a6, &v83);
    if (v28)
    {
      v42 = v28;
      goto LABEL_130;
    }

    if (v83 == 1)
    {
      _xzm_chunk_list_push(a1, (a2 + 8), v18, 0, 0);
    }
  }

  v38 = _xzm_chunk_list_pop(a1, a2, 3u, 0);
  if (v38)
  {
    v39 = 0;
    while (1)
    {
      v40 = v38;
      v41 = _xzm_xzone_malloc_from_empty_freelist_chunk(a2, a3, a4, v38, 0);
      if (v41)
      {
        break;
      }

      *((v40 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v40 & 0x3FFF) - 2104) >> 4) + 0x38) = v39;
      v38 = _xzm_chunk_list_pop(a1, a2, 3u, 0);
      v39 = v40;
      if (!v38)
      {
        v79 = a5;
        v42 = 0;
        v18 = 0;
        if (*(a1 + 240))
        {
          v43 = *(a1 + 240);
        }

        else
        {
          v43 = a1;
        }

        goto LABEL_62;
      }
    }

    v42 = v41;
    if (*(a1 + 240))
    {
      v43 = *(a1 + 240);
    }

    else
    {
      v43 = a1;
    }

    if (!v39)
    {
      v18 = v40;
      goto LABEL_130;
    }

    v79 = a5;
    v18 = v40;
    v40 = v39;
    do
    {
LABEL_62:
      v44 = *((v40 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((v40 & 0x3FFF) - 2104) >> 4) + 0x38);
      _xzm_chunk_batch_list_push(a1, a2, v40, *(v43 + 424));
      v40 = v44;
    }

    while (v44);
    a5 = v79;
    if (v42)
    {
      goto LABEL_130;
    }
  }

  else if (*(a1 + 240))
  {
    v43 = *(a1 + 240);
  }

  else
  {
    v43 = a1;
  }

  v45 = _xzm_chunk_list_pop(a1, (a2 + 8), 0, 0);
  if (!v45)
  {
    goto LABEL_78;
  }

  v46 = 0;
  while (1)
  {
    v18 = v45;
    v82 = 1;
    if ((*(v43 + 409) & 8) == 0 || v80 > 0x1000)
    {
      v47 = 1;
      if ((*(v43 + 409) & 4) == 0 || v80 <= 0x1000)
      {
        break;
      }
    }

    if (xzm_chunk_mark_used(a1, v45, &v82))
    {
      v47 = v82;
      break;
    }

LABEL_73:
    *(v18 + 16) = v46;
    v45 = _xzm_chunk_list_pop(a1, (a2 + 8), 0, 0);
    v46 = v18;
    if (!v45)
    {
      v42 = 0;
      v49 = 0;
      v46 = v18;
      goto LABEL_76;
    }
  }

  v48 = _xzm_xzone_malloc_from_empty_freelist_chunk(a2, a3, a4, v18, v47 & 1);
  if (!v48)
  {
    goto LABEL_73;
  }

  v42 = v48;
  v49 = v18;
  if (!v46)
  {
    goto LABEL_130;
  }

  do
  {
LABEL_76:
    v50 = *(v46 + 16);
    _xzm_chunk_list_push(a1, (a2 + 8), v46, 0, 0);
    v46 = v50;
  }

  while (v50);
  v18 = v49;
  if (!v42)
  {
LABEL_78:
    if (*(a2 + 87))
    {
      v51 = *(a1 + 240) ? *(a1 + 240) : a1;
      chunk_from_isolation = _xzm_xzone_allocate_chunk_from_isolation(v51, a2);
      if (chunk_from_isolation)
      {
        v18 = chunk_from_isolation;
        v53 = _xzm_xzone_malloc_from_empty_freelist_chunk(a2, a3, a4, chunk_from_isolation, 1);
        goto LABEL_128;
      }
    }

    v54 = *(a2 + 48);
    v55 = _xzm_chunk_list_pop(a1, (a2 + 24), 0, 0);
    if (v55)
    {
      v18 = v55;
      if (v54 <= 0x400)
      {
        v56 = *(v55 + 32);
        if ((v56 & 0x10) == 0)
        {
          v57 = v56 & 0xF;
          if (v57 > 6)
          {
            if (v57 - 7 >= 2)
            {
              goto LABEL_138;
            }

            v58 = *(v18 + 40) << 14;
          }

          else
          {
            switch(v57)
            {
              case 2u:
                v58 = 0x4000;
                break;
              case 5u:
                v58 = 0x10000;
                break;
              case 6u:
                v58 = 0x20000;
                break;
              default:
LABEL_138:
                xzm_chunk_mark_free_cold_1(v57);
            }
          }

          bzero((((0xAAAAAAAAAAAAC000 * (((v18 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v18 & 0xFFFFFFFFFFFFC000) + 0x28)), v58);
        }
      }

LABEL_121:
      _xzm_xzone_fresh_chunk_init(a2, v18, *(v18 + 32) & 0xF);
      v42 = ((0xAAAAAAAAAAAAC000 * (((v18 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v18 & 0xFFFFFFFFFFFFC000) + 0x28);
      if (a4)
      {
        v74 = (((a3 + 1) & 0x3F) << 22) | 0x400;
        *a4 = v18;
        *(a4 + 8) = v42;
        *(a4 + 16) = 1024;
        *(a4 + 18) = *(a2 + 68) - 1;
      }

      else
      {
        v74 = ((*(a2 + 68) << 11) + 4192256) & 0x3FF800 | 0x400u | (((a3 + 1) & 0x3F) << 22);
      }

      *v18 = v74;
      *(v18 + 34) = *(a2 + 82);
      if (*(v18 + 12) == 1)
      {
        if (v80 <= 0x1000)
        {
          v53 = _xzm_xzone_chunk_memtag_init(a2, v18);
        }

        else
        {
          v53 = _xzm_xzone_block_memtag_retag(v42, *(a2 + 48));
        }

LABEL_128:
        v42 = v53;
      }

      _xzm_chunk_list_push(a1, (a2 + 16), v18, 1u, 0);
      goto LABEL_130;
    }

    v81 = 0;
    v59 = *(a2 + 42);
    v60 = *(a2 + 43);
    v61 = *(a1 + 240);
    if (!v61)
    {
      v61 = a1;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
    LOBYTE(v63) = v60 + v59;
    v64 = *(v61 + 412);
    if (v64 >= *(v61 + 413))
    {
      v65 = *(v61 + 472);
      v63 = v63;
    }

    else
    {
      v63 = (v63 + v64 * (StatusReg >> 12));
      v65 = *(v61 + 472);
    }

    if (v80 <= 0x1000)
    {
      v66 = 1;
    }

    else
    {
      v66 = 8;
    }

    if (v80 <= 0x1000)
    {
      v67 = 2;
    }

    else
    {
      v67 = 6;
    }

    v68 = xzm_segment_group_alloc_chunk((v65 + 496 * v63), v67, (a2 + 88), v66, &v81, 0, v54 < 0x401, 0);
    v18 = v68;
    if (!v68)
    {
      v42 = 0;
      goto LABEL_130;
    }

    *(v68 + 33) = *(a2 + 80);
    v69 = v81;
    if (v81)
    {
      do
      {
        v70 = *(v69 + 16);
        v81 = *(v81 + 16);
        *(v69 + 33) = *(a2 + 80);
        *(v69 + 32) |= 0x40u;
        _xzm_chunk_list_push(a1, (a2 + 24), v69, 0, 0);
        v69 = v70;
      }

      while (v70);
    }

    if (*(a2 + 86) >= ((*(a1 + 248) >> 2) & 3u) || *(a2 + 48) >= *(a1 + 288))
    {
      goto LABEL_121;
    }

    v71 = *(a1 + 240);
    if (!v71)
    {
      v71 = a1;
    }

    if (atomic_fetch_add_explicit((a2 + 72), 1uLL, memory_order_relaxed) + 1 <= *(v71 + 427))
    {
      goto LABEL_121;
    }

    v72 = (*(a1 + 248) >> 2) & 3;
    *(a2 + 86) = v72;
    if (v72 != 2)
    {
      if (v72 == 1)
      {
        v73 = &ncpuclusters;
LABEL_132:
        v76 = *v73;
        if (!*v73)
        {
          goto LABEL_121;
        }
      }

      else
      {
        LOBYTE(v76) = 1;
      }

      v77 = 0;
      v78 = v72 << 56;
      do
      {
        *(*(a1 + 224) + 32 * v77 * *(a1 + 210) + 32 * *(a2 + 80) + 16) = v78;
        ++v77;
      }

      while (v76 != v77);
      goto LABEL_121;
    }

    v73 = &logical_ncpus;
    goto LABEL_132;
  }

LABEL_130:
  *a5 = v18;
  return v42;
}

uint64_t _xzm_xzone_malloc_from_freelist_chunk(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6, _BYTE *a7, _BYTE *a8)
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v12 = a4;
  v13 = a2;
  v15 = *(a5 + 12);
  v16 = ((0xAAAAAAAAAAAAC000 * (((a5 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a5 & 0xFFFFFFFFFFFFC000) + 0x28);
  if (a4 && a8)
  {
    *a4 = a5;
    a4[1] = v16;
  }

  v17 = 0;
  v18 = 0;
  v19 = *a5;
  v20 = a3 + 1;
  if (a6)
  {
    v21 = 10;
  }

  else
  {
    v21 = 4;
  }

  while (1)
  {
    while (1)
    {
      if ((v19 & 0x40000000) != 0)
      {
        v50 = a1;
        do
        {
          v38 = v18;
          _xzm_walk_lock_wait(a1);
          v18 = v38;
          a1 = v50;
          v19 = *v11;
        }

        while ((*v11 & 0x40000000) != 0);
      }

      if (!v8)
      {
        break;
      }

      if ((v19 & 0x3FF800) != 0)
      {
        v24 = v19 & 0xFFFFFFFFA03FFFFFLL | ((v20 & 0x3F) << 22);
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      if ((v19 & 0x7FF) != 0x7FE)
      {
        v22 = v19 & 0xFFFFFFFFAFC007FFLL;
        if (!v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        v12[8] = -2;
        goto LABEL_20;
      }

      v22 = v19 & 0xFFFFFFFF8FC007FELL | 0x20000000;
      *v8 = 1;
      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v23 = v19;
      atomic_compare_exchange_strong_explicit(v11, &v23, v22, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v19)
      {
        return 0;
      }

      v19 = v23;
    }

    if (((v19 >> 22) & 0x3F) != v20)
    {
      return 0;
    }

    if ((v19 & 0x3FF800) == 0)
    {
      if (v12)
      {
        v12[8] = -2;
      }

      v22 = v19 & 0xFFFFFFFFB00007FFLL;
      goto LABEL_20;
    }

    v24 = v19;
    if (v12)
    {
LABEL_23:
      v25 = v24 & 0xFFFFFFFFFFC00000 | 0x400;
      v26 = (v19 >> 11) & 0x7FF;
      v12[9] = v26 - 1;
      if ((v19 & 0x7FF) > 0x3FF)
      {
        v36 = 0;
        result = v16 + (*(v13 + 68) - v26) * *(v13 + 48);
        v12[8] = 1024;
        goto LABEL_37;
      }

      result = v16 + ((v19 & 0x7FF) << v21);
      if (v15)
      {
        __asm { MSR             TCO, #1 }

        v18 = *result;
        v17 = *(result + 8);
        __asm { MSR             TCO, #0 }
      }

      else
      {
        v18 = *result;
        v17 = *(result + 8);
      }

      v12[8] = v17 & 0x7FF;
      v12[10] = (v17 >> 11) & 0x1FFF;
      goto LABEL_36;
    }

LABEL_27:
    v25 = v24 & 0xFFFFFFFFFFC007FFLL | ((((v24 + 4192256) >> 11) & 0x7FF) << 11);
    if ((v19 & 0x7FF) > 0x3FF)
    {
      v36 = 0;
      result = v16 + (*(v13 + 68) - ((v19 >> 11) & 0x7FF)) * *(v13 + 48);
      goto LABEL_37;
    }

    result = v16 + ((v19 & 0x7FF) << v21);
    if (v15)
    {
      __asm { MSR             TCO, #1 }

      v18 = *result;
      v17 = *(result + 8);
      __asm { MSR             TCO, #0 }
    }

    else
    {
      v18 = *result;
      v17 = *(result + 8);
    }

    v25 = v25 & 0xFFFFF0007FFFF800 | v17 & 0x7FF | (((v17 >> 11) & 0x1FFF) << 31);
LABEL_36:
    v36 = 1;
LABEL_37:
    v37 = v19;
    atomic_compare_exchange_strong_explicit(v11, &v37, v25, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v19)
    {
      break;
    }

    *v9 = 1;
    v19 = v37;
  }

  if (!v15)
  {
    goto LABEL_60;
  }

  if (a6)
  {
    v39 = v36;
    v40 = v18;
    v41 = a1;
    v42 = *(v13 + 48);
    result = memtag_assign_tag(result, v42);
    _X8 = result + v42;
    if ((v42 & 0x1FF) != 0)
    {
      __asm
      {
        STG             X0, [X0]
        STG             X8, [X8,#-0x10]
      }

      if (v42 > 0x20)
      {
        _X9 = (result + 31) & 0xFFFFFFFFFFFFFFE0;
        _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
        __asm
        {
          ST2G            X9, [X9]
          ST2G            X10, [X10,#-0x20]
        }
      }

      a1 = v41;
      v18 = v40;
      v36 = v39;
      v46 = (result + 63) & 0xFFFFFFFFFFFFFFC0;
      v47 = _X8 & 0xFFFFFFFFFFFFFFC0;
      while (v46 < v47)
      {
        __asm { DC              GVA, X9 }

        v46 += 64;
      }
    }

    else if (v42 < 1)
    {
      a1 = v41;
      v18 = v40;
      v36 = v39;
    }

    else
    {
      v49 = result;
      a1 = v41;
      v18 = v40;
      v36 = v39;
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

        v49 += 512;
      }

      while (v49 < _X8);
    }

LABEL_60:
    if (v36)
    {
      v48 = *(a1 + 320) ^ result;
      if (a6)
      {
        v48 &= 0xF0FFFFFFFFFFFFFFLL;
      }

LABEL_63:
      if (v48 != v18 || v17 != (v17 & 0xFFFFFF | (((v37 >> 31) & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL))
      {
        _xzm_xzone_malloc_from_freelist_chunk_cold_1(result);
      }
    }
  }

  else
  {
    if (v36)
    {
      result = result & 0xF0FFFFFFFFFFFFFFLL | ((HIBYTE(v18) & 0xF) << 56);
      v48 = *(a1 + 320) ^ result;
      goto LABEL_63;
    }

    __asm { LDG             X0, [X0] }
  }

  return result;
}

uint64_t _xzm_chunk_list_pop(os_unfair_lock_s *a1, atomic_ullong *a2, unsigned int a3, _BYTE *a4)
{
  v8 = *a2;
  v9 = a3;
  while (1)
  {
    if (v8 < 0)
    {
      do
      {
        _xzm_fork_lock_wait(a1);
        v8 = *a2;
      }

      while (*a2 < 0);
    }

    result = v8 & 0x7FFFFFFFFFFFLL;
    if ((v8 & 0x7FFFFFFFFFFFLL) == 0)
    {
      break;
    }

    if (a3 == 3)
    {
      v11 = v8 & 0x7FFFFFFFC000 | 0x38;
      v12 = -1431655765 * ((result - (v8 & 0x7FFFFFFFC000uLL) - 2104) >> 4);
      v13 = v8;
      atomic_compare_exchange_strong_explicit(a2, &v13, (v8 + 0x7E00000000000000) & 0x7E00000000000000 | (v8 + 0x800000000000) & 0x1FF800000000000 | *(v11 + 8 * v12) & 0x7FFFFFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
      v14 = v13 == v8;
      v8 = v13;
      if (v14)
      {
        *(v11 + 8 * v12) = -1;
        return result;
      }
    }

    else
    {
      v15 = v8;
      atomic_compare_exchange_strong_explicit(a2, &v15, (v8 + 0x800000000000) & 0x7FFF800000000000 | *((v8 & 0x7FFFFFFFFFFFLL) + 8 * v9 + 0x10) & 0x7FFFFFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
      v14 = v15 == v8;
      v8 = v15;
      if (v14)
      {
        return result;
      }
    }

    if (a4)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return _os_once();
}

void *__cdecl malloc_type_zone_calloc(malloc_zone_t *zone, size_t count, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0)
  {
    return _malloc_type_zone_calloc_outlined(zone, count, size, type_id);
  }

  if (default_zone == zone)
  {
    zone = *malloc_zones;
  }

  version = zone->version;
  if (version >= 0x10)
  {
    return (zone[1].size)(zone, count, size, type_id);
  }

  if (version <= 0xC)
  {
    return _malloc_type_zone_calloc_outlined(zone, count, size, type_id);
  }

  else
  {
    return (zone->calloc)(zone, count, size);
  }
}

void *__cdecl malloc_type_zone_malloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {
    return _malloc_type_zone_malloc_outlined(zone, size, type_id);
  }

  if (default_zone == zone)
  {
    zone = *malloc_zones;
  }

  version = zone->version;
  if (version >= 0x10)
  {
    return (zone[1].reserved2)();
  }

  if (version <= 0xC)
  {
    return _malloc_type_zone_malloc_outlined(zone, size, type_id);
  }

  else
  {
    return (zone->malloc)();
  }
}

void malloc_zone_free(malloc_zone_t *zone, void *ptr)
{
  if (malloc_tracing_enabled == 1)
  {
    if (ptr)
    {
      v5 = *ptr;
    }

    kdebug_trace();
  }

  if (malloc_logger)
  {
    malloc_logger(12, zone, ptr, 0, 0, 0);
  }

  if (malloc_simple_stack_logging == 1)
  {
    malloc_report(0x325u, "malloc_zone_free (%p): ");
  }

  if (malloc_check_start)
  {
    internal_check();
  }

  free = zone->free;

  (free)(zone, ptr);
}

uint64_t default_zone_free()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 48))();
}

uint64_t _xzm_xzone_malloc_freelist_outlined(uint64_t a1, uint64_t a2, int a3, atomic_ullong *a4, uint64_t a5, int a6)
{
  if (a5)
  {
    v30 = a5;
    qword_1EAC7F640 = "BUG IN CLIENT OF LIBMALLOC: memory corruption of free block";
    qword_1EAC7F670 = a5;
    __break(1u);
LABEL_56:
    if (_ZF || !_CF)
    {
      v42 = ncpuclusters;
      if (v30)
      {
        v43 = 0;
      }

      else
      {
        v43 = ncpuclusters >= 2;
      }

      v44 = !v43;
      v45 = v44 == 0;
      if (v44)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }

      *(v9 + 86) = v46;
      v47 = 0x100000000000000;
      if (!v45)
      {
        v47 = 0x200000000000000;
        v42 = logical_ncpus;
      }

      if (v42)
      {
        for (i = 0; i != v42; ++i)
        {
          *(*(v10 + 224) + 32 * i * *(v10 + 210) + 32 * *(v9 + 80) + 16) = v47;
        }
      }
    }

    goto LABEL_44;
  }

  v9 = a2;
  v10 = a1;
  v15 = 0;
  v12 = *(a2 + 48);
  v51 = *(a2 + 87);
  v16 = *a4;
  v54 = 0;
  v53 = 0;
  do
  {
    v17 = v16;
    while ((v17 & 1) != 0)
    {
      if ((v17 & 2) == 0)
      {
        v18 = v17;
        atomic_compare_exchange_strong_explicit(a4, &v18, v17 | 2, memory_order_relaxed, memory_order_relaxed);
        _ZF = v18 == v17;
        v17 = v18;
        if (!_ZF)
        {
          continue;
        }
      }

      result = __ulock_wait();
      if ((result & 0x80000000) != 0 && result != -14 && result != -4)
      {
        goto LABEL_78;
      }

LABEL_11:
      v17 = *a4;
    }

    if ((v17 & 2) != 0)
    {
      _xzm_fork_lock_wait(v10);
      goto LABEL_11;
    }

    v20 = (v17 >> 2) & 0x7FFFFFFFFFFFLL;
    v54 = v20;
    if (v20)
    {
      v21 = _xzm_xzone_malloc_from_freelist_chunk(v10, v9, a3, 0, v20, v12 > 0x1000, &v53, 0);
      if (v21)
      {
        _X22 = v21;
        goto LABEL_26;
      }
    }

    if (!v15)
    {
      v15 = _malloc_ulock_self_owner_value();
    }

    v16 = v17;
    atomic_compare_exchange_strong_explicit(a4, &v16, v17 & 0xFFFE000000000000 | (4 * v15) | 1u, memory_order_relaxed, memory_order_relaxed);
  }

  while (v16 != v17);
  _X22 = _xzm_xzone_find_and_malloc_from_freelist_chunk(v10, v9, a3, 0, &v54, &v53);
  if ((atomic_exchange_explicit(a4, (v17 & 0xFFFE000000000000) + 0x2000000000000 + 4 * (v54 & 0x7FFFFFFFFFFFLL), memory_order_release) & 2) != 0)
  {
    result = __ulock_wake();
    if (result != -2)
    {
      if (result)
      {
        qword_1EAC7F640 = "BUG IN LIBMALLOC: ulock_wake failure";
        qword_1EAC7F670 = -result;
        __break(1u);
LABEL_78:
        qword_1EAC7F640 = "BUG IN LIBMALLOC: ulock_wait failure";
        qword_1EAC7F670 = -result;
        __break(1u);
        return result;
      }
    }
  }

  if (!_X22)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    return _X22;
  }

LABEL_26:
  v22 = *(v9 + 86);
  if (*(v10 + 249) == 1 && *(v9 + 48) <= 0x100uLL)
  {
    v8 = a6;
    if (v53)
    {
      v23 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
      if (v23)
      {
        v24 = (v23 + 24 * *(v9 + 80));
        if (v24[28] == -1)
        {
          v25 = v24[29] + 1;
          v24[29] = v25;
          if (*(v10 + 256) == v25)
          {
            v24[28] = -2;
            v24[31] = v24[24] & 0xFFF;
          }
        }
      }
    }
  }

  else
  {
    v26 = a4[2];
    v27 = (*(v10 + 248) >> 4) & 3;
    v8 = a6;
    if (HIBYTE(v26) != v27 && ((v26 & 0xFFFFFF00000000) != 0 || v53))
    {
      v28 = 0x100000001;
      if (!v53)
      {
        v28 = 1;
      }

      v29 = atomic_fetch_add_explicit(a4 + 2, v28, memory_order_relaxed) + v28;
      v30 = HIBYTE(v29);
      if (HIBYTE(v29) != v27)
      {
        v31 = *(v10 + 4 * v30 + 292);
        _CF = (HIDWORD(v29) & 0xFFFFFFu) >= v31;
        _ZF = (HIDWORD(v29) & 0xFFFFFF) == v31;
        if ((HIDWORD(v29) & 0xFFFFFFu) >= v31)
        {
          goto LABEL_56;
        }

        v32 = *(v10 + 304);
        if (v32 <= v29 && v32 >= v29)
        {
          v49 = a4[2];
          do
          {
            if (v49 < v29)
            {
              break;
            }

            if (v30 < HIBYTE(v49))
            {
              break;
            }

            v50 = v49;
            atomic_compare_exchange_strong_explicit(a4 + 2, &v50, v29 & 0xFF00000000000000, memory_order_relaxed, memory_order_relaxed);
            _ZF = v50 == v49;
            v49 = v50;
          }

          while (!_ZF);
        }
      }
    }
  }

LABEL_44:
  if ((v8 & 0x40000000) != 0 && (v51 & 2) != 0)
  {
    v34 = *(v9 + 48);
    _X22 &= 0xF0FFFFFFFFFFFFFFLL;
    _X9 = _X22 + v34;
    __asm
    {
      STG             X22, [X22]
      STG             X9, [X9,#-0x10]
    }

    if (v34 > 0x20)
    {
      _X10 = (_X22 + 31) & 0xF1FFFFFFFFFFFFE0;
      _X11 = _X9 & 0xFFFFFFFFFFFFFFE0;
      __asm
      {
        ST2G            X10, [X10]
        ST2G            X11, [X11,#-0x20]
      }
    }

    v40 = (_X22 + 63) & 0xF1FFFFFFFFFFFFC0;
    v41 = _X9 & 0xFFFFFFFFFFFFFFC0;
    while (v40 < v41)
    {
      __asm { DC              GVA, X8 }

      v40 += 64;
    }
  }

  *_X22 = 0;
  *(_X22 + 8) = 0;
  if ((v8 & 1) != 0 && v12 >= 0x401)
  {
    bzero(_X22, *(v9 + 48));
  }

  return _X22;
}

void _xzm_chunk_list_push(os_unfair_lock_s *a1, atomic_ullong *a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  v9 = *a2;
  v10 = a3 & 0x7FFFFFFFFFFFLL;
  v11 = a3 + 16;
  while (1)
  {
    while (v9 < 0)
    {
      _xzm_fork_lock_wait(a1);
      v9 = *a2;
    }

    *(v11 + 8 * a4) = v9 & 0x7FFFFFFFFFFFLL;
    v12 = v9;
    atomic_compare_exchange_strong_explicit(a2, &v12, (v9 + 0x800000000000) & 0x7FFF800000000000 | v10, memory_order_release, memory_order_relaxed);
    if (v12 == v9)
    {
      break;
    }

    v9 = v12;
    if (a5)
    {
      *a5 = 1;
      v9 = v12;
    }
  }
}

void *__cdecl reallocf(void *__ptr, size_t __size)
{
  v4 = j__realloc(__ptr, __size);
  v5 = v4;
  if (__size && __ptr && !v4)
  {
    v6 = *__error();
    j__free(__ptr);
    *__error() = v6;
  }

  return v5;
}

void *__cdecl malloc_type_realloc(void *ptr, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {

    return _malloc_type_realloc_outlined(ptr, size, type_id);
  }

  else
  {
    if (!ptr || !size)
    {
      v8 = *malloc_zones;
      v9 = *(*malloc_zones + 104);
      if (v9 < 0x10)
      {
        if (v9 > 0xC)
        {
          v7 = (*(v8 + 24))(v8, size);
        }

        else
        {
          v7 = _malloc_type_malloc_outlined(size, type_id, 0);
        }
      }

      else
      {
        v7 = (*(v8 + 160))(v8, size, type_id);
      }

LABEL_20:
      v11 = v7;
      if (v7)
      {
        if (!size)
        {
          _free(ptr);
        }
      }

      else
      {
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
      }

      return v11;
    }

    registered_zone = find_registered_zone(ptr, 0, 0);
    if (registered_zone)
    {
      if (registered_zone == default_zone)
      {
        registered_zone = *malloc_zones;
      }

      if (*(registered_zone + 26) < 0x10u)
      {
        v7 = registered_zone[7](registered_zone, ptr, size);
      }

      else
      {
        v7 = (registered_zone[22])(registered_zone, ptr, size, type_id);
      }

      goto LABEL_20;
    }

    return _realloc(ptr, size);
  }
}

unint64_t _xzm_xzone_malloc_from_empty_freelist_chunk(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a4 + 32);
  explicit = atomic_load_explicit(a4, memory_order_acquire);
  if ((explicit & 0x10000000) != 0)
  {
    return 0;
  }

  v11 = (0xAAAAAAAAAAAAC000 * (((a4 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000;
  _X23 = v11 + *((a4 & 0xFFFFFFFFFFFFC000) + 0x28);
  v13 = *(a1 + 87);
  result = _X23;
  if ((v13 & 2) != 0)
  {
    if ((v5 & 0xF) == 6)
    {
      v16 = *(a1 + 48);
      result = memtag_assign_tag(v11 + *((a4 & 0xFFFFFFFFFFFFC000) + 0x28), v16);
      _X8 = result + v16;
      if ((v16 & 0x1FF) != 0)
      {
        __asm
        {
          STG             X0, [X0]
          STG             X8, [X8,#-0x10]
        }

        if (v16 > 0x20)
        {
          _X9 = (result + 31) & 0xFFFFFFFFFFFFFFE0;
          _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
          __asm
          {
            ST2G            X9, [X9]
            ST2G            X10, [X10,#-0x20]
          }
        }

        v24 = (result + 63) & 0xFFFFFFFFFFFFFFC0;
        v25 = _X8 & 0xFFFFFFFFFFFFFFC0;
        while (v24 < v25)
        {
          __asm { DC              GVA, X9 }

          v24 += 64;
        }
      }

      else if (v16 >= 1)
      {
        v27 = result;
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

          v27 += 512;
        }

        while (v27 < _X8);
      }
    }

    else if (a5)
    {
      result = _xzm_xzone_chunk_memtag_init(a1, a4);
    }

    else
    {
      __asm { LDG             X0, [X23] }
    }
  }

  v15 = explicit & 0xFFFFFFFFC0000000 | ((a2 << 22) + 0x400000) & 0xFC00000;
  if (a3)
  {
    *a3 = a4;
    *(a3 + 8) = _X23;
    *(a3 + 16) = 1024;
    *(a3 + 18) = *(a1 + 68) - 1;
  }

  else
  {
    v15 |= ((*(a1 + 68) << 11) + 4192256) & 0x3FF800;
  }

  v26 = explicit;
  atomic_compare_exchange_strong_explicit(a4, &v26, v15 | 0x400, memory_order_acquire, memory_order_acquire);
  if (v26 != explicit)
  {
    _xzm_xzone_malloc_from_empty_freelist_chunk_cold_1();
  }

  return result;
}

uint64_t xzm_segment_group_segment_madvise_chunk(uint64_t a1, uint64_t a2)
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

  v5 = (((0xAAAAAAAAAAAAC000 * (((a2 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28));

  return mvm_madvise(v5, v4, 7);
}

void _xzm_xzone_madvise_freelist_chunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v5 = *(a1 + 240);
  if (!v5)
  {
    v5 = a1;
  }

  v6 = *(a3 + 32) & 0xF;
  if (v6 != 6)
  {
    if (v6 != 2 || (*(v5 + 409) & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    xzm_chunk_mark_free(a1, a3);
    goto LABEL_9;
  }

  if ((*(v5 + 409) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  xzm_segment_group_segment_madvise_chunk(*(a3 & 0xFFFFFFFFFFFFC000), a3);
LABEL_9:
  _xzm_xzone_freelist_chunks_mark_empty(a1, a2, &v7, 1);
}

void _xzm_xzone_freelist_chunks_mark_empty(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = *(a3 + 8 * i);
      v10 = *v9;
      do
      {
        v11 = v10;
        if ((v10 & 0x10000000) != 0)
        {
          v12 = 2046;
        }

        else
        {
          v12 = 536872958;
        }

        atomic_compare_exchange_strong_explicit(v9, &v10, v12 | v10 & 0xFFFFFFFFFFFFF800, memory_order_release, memory_order_relaxed);
      }

      while (v10 != v11);
      if ((v11 & 0x10000000) == 0)
      {
        _xzm_chunk_list_push(a1, (a2 + 8), v9, 0, 0);
      }
    }
  }
}

size_t malloc_size(const void *ptr)
{
  result = 0;
  if (ptr)
  {
    if (malloc_num_zones)
    {
      if (!lite_zone || (result = (*(lite_zone + 16))()) == 0)
      {
        if (initial_num_zones)
        {
          v3 = 0;
          while (1)
          {
            result = (*(*(malloc_zones + v3) + 16))();
            if (result)
            {
              break;
            }

            if (++v3 >= initial_num_zones)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          v4 = pFRZCounterLive;
          atomic_fetch_add(pFRZCounterLive, 1u);
          v5 = malloc_num_zones;
          v6 = initial_num_zones;
          if (initial_num_zones >= malloc_num_zones)
          {
LABEL_12:
            result = 0;
          }

          else
          {
            while (1)
            {
              result = (*(*(malloc_zones + v6) + 16))();
              if (result)
              {
                break;
              }

              if (v5 == ++v6)
              {
                goto LABEL_12;
              }
            }
          }

          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

void xzm_realloc(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int8x8_t a5)
{
  v7 = a1;
  if (!a2)
  {
    v28 = a3;
LABEL_30:

    xzm_malloc_inline(a1, v28, a4, 0, a5);
    return;
  }

  if (!a3)
  {
    _xzm_free(a1, a2, 0);
    a1 = v7;
    v28 = 0;
    goto LABEL_30;
  }

  _X8 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v10 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v10 = 0x4000;
  }

  if (v10 >> 14)
  {
    goto LABEL_34;
  }

  v11 = *(a1 + 240);
  if (!v11)
  {
    v11 = a1;
  }

  v12 = *(v11 + 488);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = (*(v12 + 4 * v10) & 0x7FFFFFFF) << 14;
  if (!v13)
  {
    goto LABEL_34;
  }

  v14 = a2 - *(v13 + 40);
  if (*(v13 + 16) <= (v14 >> 14))
  {
    goto LABEL_34;
  }

  v15 = v14 >> 14;
  v16 = v13 + 48 * v15 + 2104;
  if ((*(v13 + 48 * v15 + 2136) & 0xF) == 4)
  {
    v35 = v13 + 48 * v15 + 2104 - *(v13 + 48 * v15 + 2140);
    v36 = *(v35 + 32) & 0xF;
    if (v36 <= 9)
    {
      v37 = 1 << v36;
      if ((v37 & 0x3E8) != 0)
      {
        if (v35 + 48 * *(v35 + 40) <= v16)
        {
          goto LABEL_12;
        }

LABEL_82:
        v16 -= *(v16 + 36);
        goto LABEL_12;
      }

      if ((v37 & 6) != 0)
      {
        v38 = v16 == v35;
        *(v16 + 36);
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_12:
  v17 = *(v16 + 32) & 0xF;
  if (v17 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v17);
  }

  if (((1 << v17) & 0x1E4) == 0 || *(v16 + 34) != *(v7 + 208))
  {
    goto LABEL_34;
  }

  v18 = _X8 - *((v16 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v16 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v17 > 6 || ((1 << v17) & 0x64) == 0)
  {
    v21 = *(v16 + 40) << 14;
    if (v18 % v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v20 = *(v7 + 216) + 96 * *(v16 + 33);
    if ((*(v20 + 64) * v18) >= *(v20 + 64))
    {
      goto LABEL_34;
    }

    v21 = *(v20 + 48);
  }

  if (*(v7 + 368) == 1)
  {
    __asm { LDG             X8, [X8] }

    if (((_X8 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_34;
    }
  }

  if (v17 != 6)
  {
    if (v17 != 5)
    {
      if (v17 != 2)
      {
        goto LABEL_69;
      }

      goto LABEL_26;
    }

    if (((*v16 >> (v18 / v21)) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_34:
    v21 = _xzm_ptr_size_outlined(v7, a2);
    v16 = 0;
    v29 = 1;
    goto LABEL_35;
  }

LABEL_26:
  if (*(v16 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v26 = *_X8;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v26 = *_X8;
  }

  v34 = *(v7 + 320) ^ _X8;
  if (v17 == 6)
  {
    v34 &= 0xF0FFFFFFFFFFFFFFLL;
  }

  if (v26 == v34)
  {
    v40 = _X8;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(v7, v16, _X8);
    _X8 = v40;
    if (is_free_slow)
    {
      goto LABEL_34;
    }
  }

LABEL_69:
  v29 = 0;
  if (_X8 != a2)
  {
    v21 = v21 - a2 + _X8;
  }

LABEL_35:
  if (!v21)
  {
    ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(0x50u, a2);
    if (v29)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (*(v16 + 34) != *(v7 + 208))
    {
      xzm_realloc_cold_2(a2);
    }

    goto LABEL_40;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (a3 > 0x8000 && v16 && v21 > 0x8000)
  {
    v30 = (v16 & 0xFFFFFFFFFFFFC000);
    if (a3 <= 0x200000 || v21 <= 0x200000)
    {
      if (v21 <= 0x200000 && a3 < 0x200001 && !*((v16 & 0xFFFFFFFFFFFFC000) + 0x14) && (*(v7 + 360) & 0x80) == 0 && (xzm_segment_group_try_realloc_large_chunk(*v30, v16 & 0xFFFFFFFFFFFFC000, v16, (a3 + 0x3FFF) >> 14) & 1) != 0)
      {
        return;
      }
    }

    else if (*(v7 + 360) & 0x80) == 0 && (xzm_segment_group_try_realloc_huge_chunk(*v30, v7, v30, v16, (a3 + 0x3FFF) >> 14))
    {
      return;
    }
  }

  if (v21 < a3 || v21 >> 1 > a3)
  {
    xzm_malloc_inline(v7, a3, a4, 0, a5);
    v32 = v31;
    if (v31)
    {
      if (v21 >= a3)
      {
        v33 = a3;
      }

      else
      {
        v33 = v21;
      }

      memcpy(v31, a2, v33);
      if (v32 != a2)
      {
        _xzm_free(v7, a2, 0);
      }
    }
  }
}

void _xzm_free_not_found(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 240) || !mfm_claimed_address(a2))
  {
    if ((a3 & 1) == 0)
    {
      ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(0x50u, a2);
    }

    find_zone_and_free(a2, 1u);
  }

  else
  {

    mfm_free(a2);
  }
}

uint64_t mfm_claimed_address(uint64_t _X0)
{
  v1 = _X0 & 0xF0FFFFFFFFFFFFFFLL;
  if (mfm_arena)
  {
    v2 = mfm_arena + 0x10000 > v1;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && mfm_arena + 0x400000 > v1;
  if (v4 == 1 && mfm_memtag_enabled == 1)
  {
    __asm { LDG             X9, [X0] }

    if (((_X9 ^ _X0) & 0xF00000000000000) != 0)
    {
      return 0;
    }
  }

  return v4;
}

void find_zone_and_free(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
    return;
  }

  if (!malloc_num_zones)
  {
    goto LABEL_34;
  }

  if (lite_zone && (v4 = (*(lite_zone + 16))()) != 0)
  {
    v5 = v4;
  }

  else
  {
    if (initial_num_zones <= a2)
    {
LABEL_13:
      v9 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v10 = malloc_num_zones;
      v11 = initial_num_zones;
      if (initial_num_zones >= malloc_num_zones)
      {
LABEL_16:
        v6 = 0;
        v5 = 0;
      }

      else
      {
        while (1)
        {
          v6 = *(malloc_zones + v11);
          v12 = (v6->size)(v6, a1);
          if (v12)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_16;
          }
        }

        v5 = v12;
      }

      atomic_fetch_add(v9, 0xFFFFFFFF);
      if (!v6)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    v7 = a2;
    while (1)
    {
      v6 = *(malloc_zones + v7);
      v8 = (v6->size)(v6, a1);
      if (v8)
      {
        break;
      }

      if (++v7 >= initial_num_zones)
      {
        goto LABEL_13;
      }
    }

    v5 = v8;
    if (v7 || (has_injected_zone0 & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  v6 = default_zone;
  if (!default_zone)
  {
LABEL_34:
    if ((malloc_debug_flags & 0x140) != 0)
    {
      v15 = 80;
    }

    else
    {
      v15 = 144;
    }

    ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(v15, a1);
    return;
  }

LABEL_22:
  if (v6->version >= 6 && v6->free_definite_size)
  {
    free_definite_size = v6->free_definite_size;
    if (malloc_tracing_enabled == 1)
    {
      if (v5)
      {
        v16 = *a1;
      }

      kdebug_trace();
    }

    if (malloc_logger)
    {
      malloc_logger(12, v6, a1, 0, 0, 0);
    }

    if (malloc_simple_stack_logging == 1)
    {
      malloc_report(0x325u, "free (%p/%llu): ");
    }

    if (malloc_check_start)
    {
      internal_check();
    }

    v14 = v6->free_definite_size;

    (v14)(v6, a1, v5);
  }

  else
  {

    malloc_zone_free(v6, a1);
  }
}

uint64_t xzm_malloc_zone_size(uint64_t a1, uint64_t a2)
{
  _X10 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v3 = (a2 & 0xF0FFFFFFFFFFFFFFLL) >> 22;
  if ((a2 & 0xF0FFFFFFFFFFFFFFLL) >> 36)
  {
    v3 = 0x4000;
  }

  if (v3 >> 14)
  {
    goto LABEL_27;
  }

  v4 = *(a1 + 240);
  if (!v4)
  {
    v4 = a1;
  }

  v5 = *(v4 + 488);
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = (*(v5 + 4 * v3) & 0x7FFFFFFF) << 14;
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = a2 - *(v6 + 40);
  if (*(v6 + 16) <= (v7 >> 14))
  {
    goto LABEL_27;
  }

  v8 = v6 + 48 * (v7 >> 14) + 2104;
  if ((*(v8 + 32) & 0xF) == 4)
  {
    v22 = v8 - *(v8 + 36);
    v23 = *(v22 + 32) & 0xF;
    if (v23 <= 9)
    {
      v24 = 1 << v23;
      if ((v24 & 0x3E8) != 0)
      {
        if (v22 + 48 * *(v22 + 40) <= v8)
        {
          goto LABEL_10;
        }

LABEL_49:
        v8 -= *(v8 + 36);
        goto LABEL_10;
      }

      if ((v24 & 6) != 0)
      {
        v25 = v8 == v22;
        *(v8 + 36);
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_10:
  v9 = *(v8 + 32) & 0xF;
  if (v9 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(*(v8 + 32) & 0xF);
  }

  if (((1 << v9) & 0x1E4) == 0 || *(v8 + 34) != *(a1 + 208))
  {
    goto LABEL_27;
  }

  v10 = _X10 - (((0xAAAAAAAAAAAAC000 * (((v8 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v8 & 0xFFFFFFFFFFFFC000) + 0x28));
  if (v9 > 6 || ((1 << v9) & 0x64) == 0)
  {
    v13 = *(v8 + 40) << 14;
    if (v10 % v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = *(a1 + 216) + 96 * *(v8 + 33);
    if ((*(v12 + 64) * v10) >= *(v12 + 64))
    {
      goto LABEL_27;
    }

    v13 = *(v12 + 48);
  }

  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X10, [X10] }

    if (((_X10 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  if (v9 != 6)
  {
    if (v9 == 5)
    {
      if ((*v8 >> (v10 / v13)))
      {
        goto LABEL_27;
      }
    }

    else if (v9 == 2)
    {
      goto LABEL_24;
    }

LABEL_37:
    if (_X10 == a2)
    {
      return v13;
    }

    else
    {
      return v13 - a2 + _X10;
    }
  }

LABEL_24:
  if (*(v8 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v18 = *_X10;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v18 = *_X10;
  }

  if (v9 == 6)
  {
    v21 = (*(a1 + 320) ^ _X10) & 0xF0FFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = *(a1 + 320) ^ _X10;
  }

  if (v18 != v21)
  {
    goto LABEL_37;
  }

  v31 = a1;
  v29 = a2;
  v30 = _X10;
  v28 = v13;
  is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v8, _X10);
  v13 = v28;
  a2 = v29;
  _X10 = v30;
  v27 = is_free_slow;
  a1 = v31;
  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_27:

  return _xzm_ptr_size_outlined(a1, a2);
}

void *__cdecl malloc_type_zone_realloc(malloc_zone_t *zone, void *ptr, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size)
  {
    return _malloc_type_zone_realloc_outlined(zone, ptr, size, type_id);
  }

  if (default_zone == zone)
  {
    zone = *malloc_zones;
  }

  if (zone->version < 0x10)
  {
    return _malloc_zone_realloc(zone, ptr, size, type_id);
  }

  else
  {
    return (zone[1].malloc)(zone, ptr);
  }
}

void _xzm_xzone_free_block_to_small_chunk(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a3 + 12);
  v9 = (a3 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    while (!v8)
    {
      v17 = 0;
      atomic_compare_exchange_strong_explicit(v9, &v17, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v17)
      {
        os_unfair_lock_lock_with_options();
      }

      v8 = *(a3 + 12);
      if (!v8)
      {
        v23 = *(a3 + 32) & 0xF;
        if (v23 != 2 && v23 != 6)
        {
          if (v23 == 5)
          {
            v30 = *(a3 + 4) == *(a2 + 68);
            goto LABEL_46;
          }

LABEL_91:
          qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_1EAC7F670 = v23;
          __break(1u);
LABEL_92:
          qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
          qword_1EAC7F670 = v23;
          __break(1u);
          return;
        }

        v30 = (*a3 & 0x3FF800) == 0 && (*a3 | 0xFFFFF800) < 0xFFFFFFFE;
LABEL_46:
        v40 = _xzm_xzone_free_to_chunk(a1, a2, a3, a4);
        _xzm_xzone_chunk_madvise_free_slices(a1, a2, a3, v40);
        v23 = *(a3 + 32) & 0xF;
        if (v23 == 2 || v23 == 6)
        {
          if ((~*a3 & 0x7FE) == 0 || ((*a3 >> 11) & 0x7FF) == *(a2 + 68))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_92;
          }

          if (!*(a3 + 4))
          {
LABEL_64:
            v50 = *(StatusReg + 24);
            v51 = v50;
            atomic_compare_exchange_strong_explicit(v9, &v51, 0, memory_order_release, memory_order_relaxed);
            if (v51 != v50)
            {
              os_unfair_lock_unlock(v9);
            }

            v52 = 0;
            atomic_compare_exchange_strong_explicit((a2 + 36), &v52, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v52)
            {
              os_unfair_lock_lock_with_options();
            }

            if ((*(a3 + 32) & 0x20) != 0)
            {
              v54 = *(a3 + 16);
              v53 = *(a3 + 24);
              if (v54)
              {
                *(v54 + 24) = v53;
                v54 = *(a3 + 16);
              }

              *v53 = v54;
              *(a3 + 32) &= ~0x20u;
            }

            v55 = *(a1 + 240);
            if (!v55)
            {
              v55 = a1;
            }

            v39 = *(v55 + 424);
            if (*(v55 + 424))
            {
              v36 = a1;
              v37 = a2;
              v38 = a3;
              goto LABEL_76;
            }

            v60 = *(StatusReg + 24);
            v61 = v60;
            atomic_compare_exchange_strong_explicit((a2 + 36), &v61, 0, memory_order_release, memory_order_relaxed);
            if (v61 != v60)
            {
              os_unfair_lock_unlock((a2 + 36));
            }

            v56 = a1;
            v57 = a2;
            v58 = a3;
            v59 = 0;
LABEL_87:

            _xzm_xzone_chunk_free(v56, v57, v58, v59);
            return;
          }
        }

        if (v30)
        {
          v41 = 0;
          atomic_compare_exchange_strong_explicit((a2 + 36), &v41, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v41)
          {
            os_unfair_lock_lock_with_options();
          }

          v44 = *(a3 + 16);
          v43 = *(a3 + 24);
          v42 = (a3 + 16);
          if (v44)
          {
            *(v44 + 24) = v43;
            v44 = *v42;
          }

          *v43 = v44;
          v45 = *a2;
          *v42 = *a2;
          if (v45)
          {
            *(v45 + 24) = v42;
          }

          *a2 = a3;
          *(a3 + 24) = a2;
          *(a3 + 32) |= 0x20u;
          v46 = *(StatusReg + 24);
          v47 = v46;
          atomic_compare_exchange_strong_explicit((a2 + 36), &v47, 0, memory_order_release, memory_order_relaxed);
          if (v47 != v46)
          {
            os_unfair_lock_unlock((a2 + 36));
          }
        }

        v48 = *(StatusReg + 24);
        v49 = v48;
        atomic_compare_exchange_strong_explicit(v9, &v49, 0, memory_order_release, memory_order_relaxed);
        if (v49 == v48)
        {
          return;
        }

        v28 = v9;
LABEL_80:

        os_unfair_lock_unlock(v28);
        return;
      }

      v18 = *(StatusReg + 24);
      v19 = v18;
      atomic_compare_exchange_strong_explicit(v9, &v19, 0, memory_order_release, memory_order_relaxed);
      v13 = v9;
      if (v19 != v18)
      {
LABEL_12:
        os_unfair_lock_unlock(v13);
      }
    }

    v11 = 0;
    v12 = *(a1 + 224) + 32 * *(a1 + 210) * (v8 - 1) + 32 * *(a2 + 80);
    v13 = (v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v11, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
    }

    v14 = *(a3 + 12);
    if (v14 == v8)
    {
      break;
    }

    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
    v8 = v14;
    if (v16 != v15)
    {
      goto LABEL_12;
    }
  }

  v20 = _xzm_xzone_free_to_chunk(a1, a2, a3, a4);
  v21 = *(a1 + 328);
  if (v21 && *(a2 + 48) < *(a1 + 336))
  {
    v22 = 1;
  }

  else
  {
    _xzm_xzone_chunk_madvise_free_slices(a1, a2, a3, v20);
    v22 = 0;
  }

  v23 = *(a3 + 32) & 0xF;
  if (v23 == 2 || v23 == 6)
  {
    if ((~*a3 & 0x7FE) == 0 || ((*a3 >> 11) & 0x7FF) == *(a2 + 68))
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (v23 != 5)
  {
    qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
    qword_1EAC7F670 = v23;
    __break(1u);
    goto LABEL_91;
  }

  if (*(a3 + 4))
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v22)
  {
    v24 = mach_absolute_time();
    v25 = v24 - *(v12 + 24);
    *(v12 + 24) = v24;
    if (v25 < v21)
    {
LABEL_26:
      v26 = *(StatusReg + 24);
      v27 = v26;
      atomic_compare_exchange_strong_explicit(v13, &v27, 0, memory_order_release, memory_order_relaxed);
      if (v27 == v26)
      {
        return;
      }

      v28 = (v12 + 8);
      goto LABEL_80;
    }
  }

  *v12 = 0;
  *(a3 + 12) = 0;
  v31 = *(StatusReg + 24);
  v32 = v31;
  atomic_compare_exchange_strong_explicit((v12 + 8), &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != v31)
  {
    os_unfair_lock_unlock((v12 + 8));
  }

  v33 = *(a1 + 240);
  if (!v33)
  {
    v33 = a1;
  }

  v34 = *(v33 + 424);
  if (!*(v33 + 424))
  {
    v56 = a1;
    v57 = a2;
    v58 = a3;
    v59 = v22;
    goto LABEL_87;
  }

  v35 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 36), &v35, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v35)
  {
    os_unfair_lock_lock_with_options();
  }

  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = v34;
LABEL_76:

  _xzm_xzone_batch_small_push(v36, v37, v38, v39);
}

void _xzm_free_outlined(uint64_t a1, uint64_t *a2, char a3, int a4)
{
  v4 = (a4 & 0x7FFFFFFF) << 14;
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = a2 - *(((a4 & 0x7FFFFFFF) << 14) + 0x28);
  if (*(((a4 & 0x7FFFFFFF) << 14) + 0x10) <= (v5 >> 14))
  {
    goto LABEL_21;
  }

  v6 = v4 + 48 * (v5 >> 14) + 2104;
  if ((*(v6 + 32) & 0xF) == 4)
  {
    v21 = v6 - *(v6 + 36);
    v22 = *(v21 + 32) & 0xF;
    if (v22 <= 9)
    {
      v23 = 1 << v22;
      if ((v23 & 0x3E8) != 0)
      {
        if (v21 + 48 * *(v21 + 40) <= v6)
        {
          goto LABEL_4;
        }

LABEL_52:
        v6 -= *(v6 + 36);
        goto LABEL_4;
      }

      if ((v23 & 6) != 0)
      {
        v24 = v6 == v21;
        *(v6 + 36);
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        goto LABEL_52;
      }
    }
  }

LABEL_4:
  v7 = *(v6 + 32) & 0xF;
  if (v7 > 8)
  {
    qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
    qword_1EAC7F670 = v7;
    __break(1u);
    return;
  }

  if (((1 << v7) & 0x1E4) == 0 || *(v6 + 34) != *(a1 + 208))
  {
    goto LABEL_21;
  }

  _X3 = a2 & 0xF0FFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xF0FFFFFFFFFFFFFFLL) - *((v6 & 0xFFFFFFFFFFFFC000) + 0x28) - ((0xAAAAAAAAAAAAC000 * (((v6 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000);
  if (v7 > 6 || ((1 << v7) & 0x64) == 0)
  {
    v12 = *(v6 + 40) << 14;
    v11 = v9 % v12;
    if (v9 % v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = *(a1 + 216) + 96 * *(v6 + 33);
    if (*(v11 + 64) * (a2 - *((v6 & 0xFFFFFFFFFFFFC000) + 0x28) - -1431650304 * (((v6 & 0x3FFF) - 2104) >> 4)) >= *(v11 + 64))
    {
      goto LABEL_21;
    }

    v12 = *(v11 + 48);
  }

  if (*(a1 + 368) == 1)
  {
    __asm { LDG             X3, [X3]; void * }

    if (((_X3 ^ a2) & 0xF00000000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  if (v7 != 6)
  {
    if (v7 == 5)
    {
      if ((*v6 >> (v9 / v12)))
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    if (v7 != 2)
    {
      goto LABEL_31;
    }
  }

  if (*(v6 + 12) == 1)
  {
    __asm { MSR             TCO, #1 }

    v17 = *_X3;
    __asm { MSR             TCO, #0 }
  }

  else
  {
    v17 = *_X3;
  }

  if (v7 == 6)
  {
    v19 = (*(a1 + 320) ^ _X3) & 0xF0FFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *(a1 + 320) ^ _X3;
  }

  if (v17 == v19)
  {
    v31 = a2;
    v32 = a1;
    v30 = a3;
    v28 = v11;
    v29 = v6;
    v27 = _X3;
    is_free_slow = _xzm_xzone_freelist_chunk_block_is_free_slow(a1, v6, _X3);
    _X3 = v27;
    v11 = v28;
    v6 = v29;
    a3 = v30;
    v26 = is_free_slow;
    a2 = v31;
    a1 = v32;
    if (v26)
    {
LABEL_21:

      _xzm_free_not_found(a1, a2, a3);
      return;
    }
  }

LABEL_31:
  v20 = *(v6 + 32) & 0xF;
  switch(v20)
  {
    case 6:
LABEL_34:

      _xzm_xzone_free_freelist(a1, v11, v6, _X3);
      return;
    case 5:

      _xzm_xzone_free_block_to_small_chunk(a1, v11, v6, _X3);
      break;
    case 2:
      goto LABEL_34;
    default:

      _xzm_free_large_huge(a1, v6);
      break;
  }
}

void _xzm_xzone_malloc_small(uint64_t a1, uint64_t a2, int a3, int8x8_t a4)
{
  v6 = *(a2 + 86);
  if (v6 == 1)
  {
    v7 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2)) >> 12;
  }

  else if (v6 == 2)
  {
    LODWORD(v7) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v8 = 0;
  v9 = *(a1 + 224) + 32 * *(a1 + 210) * v7 + 32 * *(a2 + 80);
  v10 = (*(a1 + 248) >> 4) & 3;
  v11 = (v9 + 8);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v9 + 8), &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  v13 = v8 == 0;
  v118 = (v9 + 8);
  if (v6 >= v10)
  {
    if (!v13)
    {
      os_unfair_lock_lock_with_options();
    }

    goto LABEL_43;
  }

  if (!v13)
  {
    v14 = 0;
    atomic_compare_exchange_strong_explicit(v11, &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v15 = *(v9 + 20) + 1;
    *(v9 + 20) = v15;
    if (v15 > *(a1 + 4 * v6 + 292))
    {
      *(v9 + 20) = 0;
      if (v6 == 2)
      {
        v16 = &logical_ncpus;
      }

      else
      {
        if (v6 != 1)
        {
LABEL_29:
          v26 = 0;
          atomic_compare_exchange_strong_explicit((a2 + 36), &v26, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v26)
          {
            os_unfair_lock_lock_with_options();
          }

          if (*(a2 + 86) == v6)
          {
            if (v6)
            {
              if (v6 != 1)
              {
LABEL_188:
                if (v6 == 2)
                {
                  qword_1EAC7F640 = "BUG IN LIBMALLOC: Can't upgrade from XZM_SLOT_CPU";
                  __break(1u);
                }

                qword_1EAC7F640 = "BUG IN LIBMALLOC: Invalid xzone slot config";
                __break(1u);
                return;
              }

              v27 = 2;
            }

            else if (ncpuclusters > 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            *(a2 + 86) = v27;
          }

          v28 = *(StatusReg + 24);
          v29 = v28;
          atomic_compare_exchange_strong_explicit((a2 + 36), &v29, 0, memory_order_release, memory_order_relaxed);
          if (v29 != v28)
          {
            os_unfair_lock_unlock((a2 + 36));
          }

          goto LABEL_41;
        }

        v16 = &ncpuclusters;
      }

      v17 = *v16;
      if ((*v16 & 0xFE) != 0)
      {
        v18 = *(StatusReg + 24);
        v19 = v18;
        atomic_compare_exchange_strong_explicit(v11, &v19, 0, memory_order_release, memory_order_relaxed);
        if (v19 != v18)
        {
          os_unfair_lock_unlock((v9 + 8));
        }

        v20 = 0;
        do
        {
          v21 = (*(a1 + 224) + 32 * v20 * *(a1 + 210) + 32 * *(a2 + 80));
          if (v21 != v9)
          {
            v22 = 0;
            atomic_compare_exchange_strong_explicit(&v21[2], &v22, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v22)
            {
              os_unfair_lock_lock_with_options();
            }

            v21[5]._os_unfair_lock_opaque = 0;
            v23 = *(StatusReg + 24);
            v24 = v23;
            atomic_compare_exchange_strong_explicit(&v21[2], &v24, 0, memory_order_release, memory_order_relaxed);
            if (v24 != v23)
            {
              os_unfair_lock_unlock(v21 + 2);
            }
          }

          ++v20;
        }

        while (v17 != v20);
        v25 = 0;
        v11 = (v9 + 8);
        atomic_compare_exchange_strong_explicit(v118, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v25)
        {
          os_unfair_lock_lock_with_options();
        }
      }

      goto LABEL_29;
    }
  }

LABEL_41:
  v30 = *(v9 + 16) + 1;
  *(v9 + 16) = v30;
  if (!(v30 % *(a1 + 304)))
  {
    *(v9 + 20) = 0;
  }

LABEL_43:
  chunk_from_isolation = *v9;
  if (!*v9)
  {
    goto LABEL_57;
  }

  v32 = *(chunk_from_isolation + 32) & 0xF;
  _ZF = v32 == 2 || v32 == 6;
  if (_ZF)
  {
    if ((*chunk_from_isolation & 0x3FF800) != 0 || (*chunk_from_isolation | 0xFFFFF800) >= 0xFFFFFFFE)
    {
      goto LABEL_113;
    }

    goto LABEL_57;
  }

  if (v32 != 5)
  {
LABEL_187:
    qword_1EAC7F640 = "BUG IN LIBMALLOC: bad chunk kind";
    qword_1EAC7F670 = v32;
    __break(1u);
    goto LABEL_188;
  }

  if (*(chunk_from_isolation + 4) == *(a2 + 68))
  {
LABEL_57:
    v35 = 0;
    v6 = (a2 + 36);
    atomic_compare_exchange_strong_explicit((a2 + 36), &v35, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v35)
    {
      os_unfair_lock_lock_with_options();
    }

    if (chunk_from_isolation)
    {
      v36 = (a2 + 8);
      v37 = *(a2 + 8);
      *(chunk_from_isolation + 16) = v37;
      if (v37)
      {
        *(v37 + 24) = chunk_from_isolation + 16;
      }

      *v36 = chunk_from_isolation;
      *(chunk_from_isolation + 24) = v36;
      atomic_store(0, (chunk_from_isolation + 12));
    }

    while (1)
    {
      chunk_from_isolation = *a2;
      if (!*a2)
      {
        if (*(a2 + 32))
        {
          chunk_from_isolation = *(a2 + 24);
          *(a2 + 24) = *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((chunk_from_isolation & 0x3FFF) - 2104) >> 4) + 0x38);
          *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * (((chunk_from_isolation & 0x3FFF) - 2104) >> 4) + 0x38) = -1;
          --*(a2 + 32);
          *v9 = chunk_from_isolation;
          *(chunk_from_isolation + 12) = v7 + 1;
        }

        else
        {
          chunk_from_isolation = 0;
        }

        goto LABEL_76;
      }

      v38 = 0;
      atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v38, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v38)
      {
        os_unfair_lock_lock_with_options();
      }

      v40 = *(chunk_from_isolation + 16);
      v39 = *(chunk_from_isolation + 24);
      if (v40)
      {
        *(v40 + 24) = v39;
        v40 = *(chunk_from_isolation + 16);
      }

      *v39 = v40;
      *(chunk_from_isolation + 32) &= ~0x20u;
      if (*(chunk_from_isolation + 4))
      {
        break;
      }

      v41 = *(StatusReg + 24);
      v42 = v41;
      atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v42, 0, memory_order_release, memory_order_relaxed);
      if (v42 != v41)
      {
        os_unfair_lock_unlock((chunk_from_isolation + 8));
      }
    }

    *v9 = chunk_from_isolation;
    *(chunk_from_isolation + 12) = v7 + 1;
    v43 = *(StatusReg + 24);
    v44 = v43;
    atomic_compare_exchange_strong_explicit((chunk_from_isolation + 8), &v44, 0, memory_order_release, memory_order_relaxed);
    if (v44 != v43)
    {
      os_unfair_lock_unlock((chunk_from_isolation + 8));
    }

LABEL_76:
    v11 = (v9 + 8);
    v45 = *(StatusReg + 24);
    v46 = v45;
    atomic_compare_exchange_strong_explicit(v6, &v46, 0, memory_order_release, memory_order_relaxed);
    if (v46 != v45)
    {
      os_unfair_lock_unlock((a2 + 36));
    }

    if (!chunk_from_isolation)
    {
      if ((*(a2 + 87) & 1) == 0 || (*(a1 + 240) ? (v47 = *(a1 + 240)) : (v47 = a1), (chunk_from_isolation = _xzm_xzone_allocate_chunk_from_isolation(v47, a2)) == 0))
      {
        v48 = (a2 + 16);
        if (!*(a2 + 16))
        {
          goto LABEL_94;
        }

        v49 = 0;
        atomic_compare_exchange_strong_explicit(v6, &v49, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v49)
        {
          os_unfair_lock_lock_with_options();
        }

        chunk_from_isolation = *v48;
        if (*v48)
        {
          v51 = *(chunk_from_isolation + 16);
          v50 = *(chunk_from_isolation + 24);
          if (v51)
          {
            *(v51 + 24) = v50;
            v51 = *(chunk_from_isolation + 16);
          }

          *v50 = v51;
        }

        v52 = *(StatusReg + 24);
        v53 = v52;
        atomic_compare_exchange_strong_explicit(v6, &v53, 0, memory_order_release, memory_order_relaxed);
        if (v53 != v52)
        {
          os_unfair_lock_unlock((a2 + 36));
        }

        if (!chunk_from_isolation)
        {
LABEL_94:
          v119 = 0;
          v54 = *(a2 + 42);
          v55 = *(a2 + 43);
          v56 = *(a1 + 240);
          if (!v56)
          {
            v56 = a1;
          }

          v57 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
          LOBYTE(v58) = v55 + v54;
          v59 = *(v56 + 412);
          if (v59 >= *(v56 + 413))
          {
            v60 = *(v56 + 472);
            v58 = v58;
          }

          else
          {
            v58 = (v58 + v59 * (v57 >> 12));
            v60 = *(v56 + 472);
          }

          v61 = xzm_segment_group_alloc_chunk((v60 + 496 * v58), 5, (a2 + 88), 4u, &v119, 0, 0, 0);
          if (!v61)
          {
            _X22 = 0;
            *v9 = 0;
            v11 = (v9 + 8);
            goto LABEL_150;
          }

          chunk_from_isolation = v61;
          *(v61 + 33) = *(a2 + 80);
          if (v119)
          {
            v62 = 0;
            atomic_compare_exchange_strong_explicit(v6, &v62, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v62)
            {
              os_unfair_lock_lock_with_options();
            }

            v63 = v119;
            if (v119)
            {
              v64 = v119;
              do
              {
                v65 = *(v63 + 16);
                v64 = *(v64 + 16);
                *(v63 + 33) = *(a2 + 80);
                *(v63 + 32) |= 0x40u;
                v66 = *(a2 + 16);
                *(v63 + 16) = v66;
                if (v66)
                {
                  *(v66 + 24) = v63 + 16;
                }

                *v48 = v63;
                *(v63 + 24) = v48;
                v63 = v65;
              }

              while (v65);
              v119 = v64;
            }

            v67 = *(StatusReg + 24);
            v68 = v67;
            atomic_compare_exchange_strong_explicit(v6, &v68, 0, memory_order_release, memory_order_relaxed);
            if (v68 != v67)
            {
              os_unfair_lock_unlock((a2 + 36));
            }
          }
        }

        _xzm_xzone_fresh_chunk_init(a2, chunk_from_isolation, 5);
        *(chunk_from_isolation + 34) = *(a2 + 82);
        v11 = (v9 + 8);
      }

      *v9 = chunk_from_isolation;
      *(chunk_from_isolation + 12) = v7 + 1;
    }
  }

LABEL_113:
  v69 = *(chunk_from_isolation + 32) & 0xF;
  if (v69 != 5)
  {
    if (v69 <= 8 && ((1 << v69) & 0x1C4) != 0)
    {
      qword_1EAC7F640 = "BUG IN LIBMALLOC: attempting to allocate from chunk of bad kind";
      qword_1EAC7F670 = v69;
      __break(1u);
LABEL_184:
      v69 = v7;
      qword_1EAC7F640 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
      qword_1EAC7F670 = v7;
      __break(1u);
    }

    qword_1EAC7F640 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
    qword_1EAC7F670 = v69;
    __break(1u);
LABEL_186:
    v32 = v7;
    qword_1EAC7F640 = "BUG IN LIBMALLOC: asking for size of chunk with invalid kind";
    qword_1EAC7F670 = v7;
    __break(1u);
    goto LABEL_187;
  }

  v70 = chunk_from_isolation & 0xFFFFFFFFFFFFC000 | 0x838;
  v71 = *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0x28);
  v72 = (0xAAAAAAAAAAAAC000 * ((chunk_from_isolation - v70) >> 4)) & 0x3FFFFFFFC000;
  v73 = *(chunk_from_isolation + 4);
  if (!v73 || (v74 = *(a1 + 216), (*(v74 + 96 * *(chunk_from_isolation + 33) + 48) & 0x3FFFLL) == 0) || (v75 = *(chunk_from_isolation + 40), !v75))
  {
    v94 = *chunk_from_isolation;
    goto LABEL_146;
  }

  v116 = *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0x28);
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 48 * v75;
  v81 = -1;
  LODWORD(v6) = -1;
  do
  {
    v82 = chunk_from_isolation + v76;
    LODWORD(v7) = *(chunk_from_isolation + v76 + 32) & 0xF;
    v83 = chunk_from_isolation + v76;
    v84 = chunk_from_isolation + v76;
    if (v7 != 4)
    {
      goto LABEL_119;
    }

    v95 = *(v82 + 36);
    v84 = v82 - v95;
    LODWORD(v7) = *(v82 - v95 + 32) & 0xF;
    if (v7 <= 9)
    {
      if (((1 << v7) & 0x3E8) != 0)
      {
        if (v84 + 48 * *(v84 + 40) > v82)
        {
          goto LABEL_143;
        }
      }

      else if (((1 << v7) & 6) != 0)
      {
        *(v82 + 36);
        if (v82 == v84)
        {
LABEL_143:
          v83 = chunk_from_isolation + 48 * v78 - v95;
          goto LABEL_119;
        }
      }
    }

    LODWORD(v7) = 4;
    v83 = chunk_from_isolation + v76;
    v84 = chunk_from_isolation + v76;
LABEL_119:
    if (v7 > 8)
    {
      goto LABEL_184;
    }

    v85 = *(v84 + 33);
    v86 = 1 << v7;
    if (((1 << v7) & 0x64) != 0)
    {
      v87 = *(v74 + 96 * *(v84 + 33) + 48);
    }

    else
    {
      if ((v86 & 0x180) == 0)
      {
        goto LABEL_184;
      }

      v87 = *(v84 + 40) << 14;
    }

    v88 = ((0xAAAAAAAAAAAAC000 * ((v82 - (v82 & 0xFFFFFFFFFFFFC000) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v82 & 0xFFFFFFFFFFFFC000) + 0x28);
    v89 = ((0xAAAAAAAAAAAAC000 * (((v83 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v83 & 0xFFFFFFFFFFFFC000) + 0x28);
    v90 = (v88 - v89) / v87;
    v91 = *(v74 + 96 * *(v84 + 33) + 68);
    if (v91 == v90)
    {
      LODWORD(v92) = 0;
    }

    else
    {
      if ((v86 & 0x64) != 0)
      {
        v93 = *(v74 + 96 * *(v84 + 33) + 48);
      }

      else
      {
        if ((v86 & 0x180) == 0)
        {
          goto LABEL_186;
        }

        v93 = *(v84 + 40) << 14;
      }

      v92 = ~(-1 << ((v88 - v89 + 0x3FFF) / v93 - v90 - (v91 == ((v88 - v89 + 0x3FFF) / v93)) + 1)) << v90;
    }

    v94 = *chunk_from_isolation;
    if ((*chunk_from_isolation & v92) != 0 && (*chunk_from_isolation & v92) != v92)
    {
      a4.i32[0] = *chunk_from_isolation & v92;
      a4 = vcnt_s8(a4);
      a4.i16[0] = vaddlv_u8(a4);
      if (a4.i32[0] < v81)
      {
        v77 = *chunk_from_isolation & v92;
        v79 = chunk_from_isolation + v76;
        v81 = a4.i32[0];
      }
    }

    ++v78;
    v76 += 48;
  }

  while (v80 != v76);
  v72 = (0xAAAAAAAAAAAAC000 * ((chunk_from_isolation - v70) >> 4)) & 0x3FFFFFFFC000;
  if (!v79)
  {
    v11 = v118;
    v71 = *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0x28);
LABEL_146:
    v96 = __clz(__rbit32(v94));
    if (v94)
    {
      v97 = v96;
    }

    else
    {
      v97 = -1;
    }

    goto LABEL_149;
  }

  v104 = __clz(__rbit32(v77));
  if (v77)
  {
    v97 = v104;
  }

  else
  {
    v97 = -1;
  }

  v11 = v118;
  if ((v77 & (v77 - 1)) != 0)
  {
    v105 = (((0xAAAAAAAAAAAAC000 * ((chunk_from_isolation - v70) >> 4)) & 0x3FFFFFFFC000 | v104) + *(a2 + 48)) >> 14;
    v106 = v70 + 48 * v105;
    if (*((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0x10) <= v105)
    {
      v106 = 0;
    }

    if (v106 < v79)
    {
      v107 = v77 & ~(1 << v104);
      _ZF = v107 == 0;
      v108 = __clz(__rbit32(v107));
      if (_ZF)
      {
        v97 = -1;
      }

      else
      {
        v97 = v108;
      }
    }
  }

  v71 = *((chunk_from_isolation & 0xFFFFFFFFFFFFC000) + 0x28);
LABEL_149:
  _X22 = v72 + v71 + *(a2 + 48) * v97;
  *chunk_from_isolation = v94 & ~(1 << v97);
  *(chunk_from_isolation + 4) = v73 + 1;
LABEL_150:
  v99 = *(StatusReg + 24);
  v100 = v99;
  atomic_compare_exchange_strong_explicit(v11, &v100, 0, memory_order_release, memory_order_relaxed);
  if (v100 != v99)
  {
    os_unfair_lock_unlock(v11);
  }

  if (_X22)
  {
    if ((*(a2 + 87) & 2) != 0)
    {
      v102 = *(a2 + 48);
      v101 = a3;
      if ((a3 & 0x40000000) != 0)
      {
        _X22 &= 0xF0FFFFFFFFFFFFFFLL;
        _X9 = _X22 + v102;
        __asm
        {
          STG             X22, [X22]
          STG             X9, [X9,#-0x10]
        }

        if (v102 > 0x20)
        {
          _X10 = (_X22 + 31) & 0xF1FFFFFFFFFFFFE0;
          _X11 = _X9 & 0xFFFFFFFFFFFFFFE0;
          __asm
          {
            ST2G            X10, [X10]
            ST2G            X11, [X11,#-0x20]
          }
        }

        v114 = (_X22 + 63) & 0xF1FFFFFFFFFFFFC0;
        v115 = _X9 & 0xFFFFFFFFFFFFFFC0;
        while (v114 < v115)
        {
          __asm { DC              GVA, X8 }

          v114 += 64;
        }
      }

      else
      {
        _X22 = _xzm_xzone_block_memtag_retag(_X22, v102);
      }
    }

    else
    {
      v101 = a3;
    }

    if (v101)
    {
      v103 = *(a2 + 48);
      if (v103 >= 0x401)
      {
        bzero(_X22, v103);
      }
    }
  }

  else
  {
    **(StatusReg + 8) = 12;
  }
}

uint64_t mvm_madvise(void *a1, size_t a2, int a3)
{
  result = madvise(a1, a2, a3);
  if (result)
  {
    return *__error() != 0;
  }

  return result;
}

unint64_t _xzm_xzone_free_to_chunk(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a3 + 32) & 0xF;
  if (v4 != 5)
  {
    _xzm_xzone_free_to_chunk_cold_1(v4);
  }

  if ((*(a2 + 87) & 2) != 0)
  {
    v5 = a4 & 0xF0FFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a4;
  }

  v6 = *(a3 + 4) - 1;
  *a3 |= 1 << ((v5 - *((a3 & 0xFFFFFFFFFFFFC000) + 0x28) + 1431650304 * ((a3 - (a3 & 0xFFFFC000 | 0x838)) >> 4)) / *(*(a1 + 216) + 96 * *(a3 + 33) + 48));
  *(a3 + 4) = v6;
  return v5;
}

unsigned __int8 *_xzm_xzone_chunk_madvise_free_slices(unsigned __int8 *result, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a3 + 32) & 0xF) == 5)
  {
    v5 = result;
    result = *(a3 & 0xFFFFFFFFFFFFC000);
    v6 = *result;
    if (v6 >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(v6);
    }

    if (((*(*(result + 3) + 409) << (8 * v6)) & 0x4101004) == 0)
    {
      v7 = *((a3 & 0xFFFFFFFFFFFFC000) + 0x28);
      v8 = 0xAAAAAAAAAAAAC000 * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2104) >> 4);
      v9 = *(*(v5 + 27) + 96 * *(a3 + 33) + 48);
      v10 = (a4 - v7 - v8) / v9;
      v11 = (v8 & 0x3FFFFFFFC000) + v9 * v10;
      v12 = v11 >> 14;
      v13 = (v9 + v11 - 1) >> 14;
      v14 = ((v11 - v8) & 0xFFFFC000) / v9;
      v15 = (~v8 + ((v13 + 1) << 14)) / v9;
      v16 = ((~(-1 << (v10 - v14 + 1)) << v14) & ~*a3) != 0 ? (v12 + 1) : v12;
      v17 = ((~(-1 << (v15 - v10 - (*(a2 + 68) == v15) + 1)) << v10) & ~*a3) != 0 ? v13 : v13 + 1;
      v18 = v17 >= v16;
      v19 = v17 - v16;
      if (v19 != 0 && v18)
      {
        if (v18)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        return xzm_segment_group_segment_madvise_span(result, (v7 + (v16 << 14)), v20);
      }
    }
  }

  return result;
}

void _xzm_xzone_chunk_free(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a3 & 0xFFFFFFFFFFFFC000);
  *(a3 + 34) = 0;
  if (*(a2 + 87))
  {
    if (*(a1 + 240))
    {
      v7 = *(a1 + 240);
    }

    else
    {
      v7 = a1;
    }

    v8 = *(a3 + 32) & 0xF;
    v9 = v8 - 2;
    if ((v8 - 2) >= 7 || ((0x79u >> v9) & 1) == 0)
    {
      _xzm_xzone_chunk_free_cold_2();
    }

    if (((0x10100404080808uLL >> (8 * (v9 & 0x1Fu))) & *(v7 + 409)) != 0)
    {
      if (*((a3 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a3 - (a3 & 0xFFFFFFFFFFFFC000) - 2104) >> 4) + 0x38) == -1)
      {
        xzm_chunk_mark_free(a1, a3);
      }

      goto LABEL_25;
    }

    if (v8 != 6)
    {
      if (v8 == 5)
      {
        if (!a4)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v8 != 2)
      {
        _xzm_xzone_madvise_batch_cold_4(*(a3 + 32) & 0xF);
      }
    }

    if ((*a3 & 0x7FFLL) == 0x7FE)
    {
      goto LABEL_25;
    }

    *a3 = *a3 & 0xFFFFFFFFFFC00000 | 0x7FE;
LABEL_24:
    xzm_segment_group_segment_madvise_chunk(v6, a3);
LABEL_25:
    v12 = *(a3 + 32);
    v13 = v12 & 0xF;
    if (v13 == 2 || v13 == 6)
    {
      *(a3 + 32) = v12 & 0xEF;
      if ((v13 | 4) == 6)
      {
        *a3 = *a3 & 0xFFFFFFFFC03FFFFFLL | 0x20000000;
      }
    }

    else
    {
      if (v13 != 5)
      {
        _xzm_segment_group_segment_span_free_coalesce_cold_4(v13);
      }

      *(a3 + 4) = 0;
      *(a3 + 12) = 0;
      *a3 |= ~(-1 << *(a2 + 68));
      *(a3 + 32) = v12 & 0xEF;
    }

    v14 = 0;
    v15 = *(v7 + 456) + 16 * *(a2 + 80);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((v15 + 8), &v14, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
    }

    v17 = *v15;
    *(a3 + 16) = *v15;
    if (v17)
    {
      *(v17 + 24) = a3 + 16;
    }

    *v15 = a3;
    *(a3 + 24) = v15;
    v18 = *(StatusReg + 24);
    v19 = v18;
    atomic_compare_exchange_strong_explicit((v15 + 8), &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != v18)
    {

      os_unfair_lock_unlock((v15 + 8));
    }

    return;
  }

  *(a3 + 33) = 0;
  v11 = *(a3 + 32) & 0xF;
  if (v11 != 6)
  {
    if (v11 == 5)
    {
      *(a3 + 12) = 0;
      goto LABEL_20;
    }

    if (v11 != 2)
    {
      _xzm_segment_group_segment_span_free_coalesce_cold_4(*(a3 + 32) & 0xF);
    }
  }

  *(a3 + 5) = 0;
LABEL_20:
  *a3 = 0;

  xzm_segment_group_free_chunk(v6, a3, 0, a4);
}

uint64_t _xzm_xzone_allocate_chunk_from_isolation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 456) + 16 * *(a2 + 80);
  if (!*v2)
  {
    return 0;
  }

  v5 = 0;
  v24 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v2 + 8), &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = *v2;
  if (*v2)
  {
    while (1)
    {
      v8 = v7;
      v9 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = (v9 + 16);
      if (v11)
      {
        *(v11 + 24) = v10;
        v11 = *v12;
      }

      *v10 = v11;
      v13 = *(a1 + 409);
      if (*(a2 + 48) <= 0x1000uLL)
      {
        if ((*(a1 + 409) & 8) == 0)
        {
          break;
        }
      }

      else if ((*(a1 + 409) & 4) == 0)
      {
        break;
      }

      if (xzm_chunk_mark_used(a1, v8, 0))
      {
        break;
      }

      v14 = v24;
      *v12 = v24;
      if (v14)
      {
        *(v14 + 24) = v12;
      }

      v24 = v8;
      *(v8 + 24) = &v24;
      v7 = *v2;
      if (!*v2)
      {
        v15 = 0;
        goto LABEL_22;
      }
    }

    *(v8 + 34) = *(a2 + 82);
  }

  else
  {
    v8 = 0;
  }

  v16 = v24;
  v15 = v8;
  while (1)
  {
    v8 = v16;
    if (!v16)
    {
      break;
    }

LABEL_22:
    v16 = *(v8 + 16);
    v19 = *(v8 + 24);
    v18 = (v8 + 16);
    if (v16)
    {
      *(v16 + 24) = v19;
      v20 = *v18;
    }

    else
    {
      v20 = 0;
    }

    *v19 = v20;
    v21 = *v2;
    *v18 = *v2;
    if (v21)
    {
      *(v21 + 24) = v18;
    }

    *v2 = v8;
    *(v8 + 24) = v2;
  }

  v22 = *(StatusReg + 24);
  v23 = v22;
  atomic_compare_exchange_strong_explicit((v2 + 8), &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != v22)
  {
    os_unfair_lock_unlock((v2 + 8));
  }

  return v15;
}

uint64_t _malloc_zone_malloc(uint64_t a1, unint64_t a2, char a3)
{
  if (default_zone == a1 && lite_zone == 0)
  {
    a1 = *malloc_zones;
  }

  if (malloc_slowpath)
  {
    return _malloc_zone_malloc_instrumented_or_legacy(a1, a2, a3);
  }

  if (malloc_logger)
  {
    return _malloc_zone_malloc_instrumented_or_legacy(a1, a2, a3);
  }

  v4 = *(a1 + 104);
  if (v4 <= 0xC)
  {
    return _malloc_zone_malloc_instrumented_or_legacy(a1, a2, a3);
  }

  if (malloc_absolute_max_size < a2)
  {
    if (a3)
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
    }

    return 0;
  }

  else if (v4 < 0x10)
  {
    return (*(a1 + 24))();
  }

  else
  {
    return (*(a1 + 160))();
  }
}

uint64_t *mfm_alloc(unint64_t a1)
{
  v1 = mfm_arena;
  if (a1 > 0x4000)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 >> 4;
  if ((a1 & 0xF) != 0)
  {
    ++v4;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v1, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  LODWORD(v7) = 64 - __clz(v5 - 1);
  if (v7 >= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v7;
  }

  if (v5 < 2)
  {
    v7 = 0;
  }

  v8 = v1 + 32;
  v9 = 16 * v7;
  v10 = v1 + 32 + 16 * v7;
  while (1)
  {
    v11 = *(v8 + v9);
    _X21 = (v1 + 16 * v11);
    if ((v8 + v9) != _X21)
    {
      break;
    }

    v10 += 16;
    v9 += 16;
    if (v9 == 176)
    {
      v12 = mfm_arena;
      v13 = *(mfm_arena + 8);
      if (v5 >= 258048 - v13)
      {
        _X21 = 0;
      }

      else
      {
        v14 = v13 + v5;
        v15 = v1 + 224;
        *(v1 + 224 + (((v13 + v5) >> 2) & 0x3FFFFFFFFFFFFFF0)) |= 1 << (v13 + v5);
        if (v5 > 0x3F)
        {
          __mfm_block_set_sizes(v1, 1, v13, v5);
          v12 = mfm_arena;
          v14 = *(mfm_arena + 8) + v5;
        }

        else
        {
          *(v15 + ((v13 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) |= 1 << v13;
          *(v15 + (((v5 + v13 - 1) >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) |= 1 << (v5 + v13 - 1);
        }

        *(v12 + 8) = v14;
        *(v1 + 4) += v5;
        ++*(v1 + 24);
        _X21 = (v1 + 16 * v13 + 0x10000);
        if (*(v12 + 16) < v14)
        {
          *(v12 + 16) = v14;
        }
      }

      goto LABEL_35;
    }
  }

  v16 = 16 * v11;
  if (mfm_memtag_enabled)
  {
    __asm { LDG             X8, [X21] }

    v23 = *_X8;
    v22 = _X8[1];
    _X12 = v1 + 16 * *_X8;
    _X10 = v1 + 16 * v22;
    __asm
    {
      LDG             X12, [X12]
      LDG             X10, [X10]
    }
  }

  else
  {
    v23 = *_X21;
    v22 = _X21[1];
    _X12 = v1 + 16 * *_X21;
    _X10 = (v1 + 16 * v22);
    _X8 = _X21;
  }

  *(_X12 + 8) = v22;
  *_X10 = v23;
  *_X8 = 0;
  _X8[1] = 0;
  v28 = v16 - 0x10000;
  v29 = (v16 - 0x10000) >> 4;
  v30 = v1 + 224;
  v31 = (v29 + 1) >> 5;
  v32 = *(v1 + 224 + 8 * (v31 & 0x7FFFFFFFFFFFFFELL)) >> (v29 + 1);
  if (v32)
  {
    v33 = __clz(__rbit64(v32));
LABEL_28:
    v34 = v33 + 1;
    goto LABEL_29;
  }

  v44 = (v29 + 1) & 0x3F;
  v45 = v30 + 8 * (v31 & 0x7FFFFFFFFFFFFFELL);
  v46 = *(v45 + 16);
  if (!v46)
  {
    v47 = *(v30 + ((8 * v31) | 8));
    if (v44 < 0x2F)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(v45 + 24);
    }

    v33 = (((2 * v48) << (v44 ^ 0x3Fu)) | (v47 >> v44)) & 0x3FFFF;
    goto LABEL_28;
  }

  v34 = __clz(__rbit64(v46)) - v44 + 65;
LABEL_29:
  if (v34 > v5)
  {
    *(v30 + (((v29 + v5) >> 2) & 0x3FFFFFFFFFFFFFF0)) |= 1 << (v29 + v5);
    __mfm_free_block(v1, v29 + v5, v34 - v5);
  }

  if (v5 > 0x3F)
  {
    __mfm_block_set_sizes(v1, 1, v29, v5);
  }

  else
  {
    *(v30 + ((v29 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) |= 1 << (v28 >> 4);
    *(v30 + (((v5 + v29 - 1) >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) |= 1 << (v5 + v29 - 1);
  }

  *(v1 + 4) += v5;
  ++*(v1 + 24);
LABEL_35:
  v35 = *(StatusReg + 24);
  v36 = v35;
  atomic_compare_exchange_strong_explicit(v1, &v36, 0, memory_order_release, memory_order_relaxed);
  if (v36 != v35)
  {
    os_unfair_lock_unlock(v1);
  }

  if (mfm_memtag_enabled == 1)
  {
    _X0 = memtag_assign_tag(_X21, 16 * v5);
    _X21 = _X0;
    _X8 = _X0 + 16 * v5;
    __asm
    {
      STG             X0, [X0]
      STG             X8, [X8,#-0x10]
    }

    if (v5 > 2)
    {
      _X9 = (_X0 + 31) & 0xFFFFFFFFFFFFFFE0;
      _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
      __asm
      {
        ST2G            X9, [X9]
        ST2G            X10, [X10,#-0x20]
      }
    }

    v41 = (_X0 + 63) & 0xFFFFFFFFFFFFFFC0;
    v42 = _X8 & 0xFFFFFFFFFFFFFFC0;
    while (v41 < v42)
    {
      __asm { DC              GVA, X9 }

      v41 += 64;
    }
  }

  return _X21;
}

uint64_t __mfm_free_block(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = 63 - __clz(a3);
  if (v5 >= 0xA)
  {
    v5 = 10;
  }

  v6 = a1 + 16 * v5;
  result = __mfm_block_mark_free(a1, a2, a3);
  v10 = *(v6 + 32);
  v9 = (v6 + 32);
  v8 = v10;
  _X8 = a1 + 16 * a2 + 0x10000;
  _X9 = a1 + 16 * v10;
  if (mfm_memtag_enabled == 1)
  {
    __asm
    {
      LDG             X10, [X8]
      LDG             X9, [X9]
    }
  }

  else
  {
    _X10 = (a1 + 16 * a2 + 0x10000);
  }

  *_X10 = v8;
  _X10[1] = (v9 - a1) >> 4;
  v18 = (16 * a2 + 0x10000) >> 4;
  *v9 = v18;
  *(_X9 + 8) = v18;
  return result;
}

uint64_t __mfm_block_mark_free(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 > 0x3F)
  {
    return __mfm_block_set_sizes(result, 0, a2, a3);
  }

  v3 = result + 224;
  *(v3 + ((a2 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) = *(result + 224 + ((a2 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) & ~(1 << a2);
  *(v3 + (((a2 + a3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) = *(result + 224 + (((a2 + a3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) & ~(1 << (a2 + a3 - 1));
  return result;
}

void mfm_free(unint64_t a1)
{
  v1 = a1;
  v2 = mfm_arena;
  v3 = a1 & 0xF0FFFFFFFFFFFFFFLL;
  v4 = mfm_arena + 0x10000;
  if (mfm_arena)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || mfm_arena + 0x400000 <= v3)
  {
    mfm_free_cold_1(v1);
  }

  if ((v1 & 0xF) != 0)
  {
    mfm_free_cold_2(v3);
  }

  v7 = (v3 - v4) >> 4;
  v8 = mfm_arena + 224;
  v9 = (v7 >> 5) | 1;
  v10 = 1 << v7;
  if ((*(mfm_arena + 224 + 8 * ((v7 >> 5) & 0x7FFFFFFFFFFFFFELL)) & *(mfm_arena + 224 + 8 * v9) & (1 << v7)) == 0)
  {
    mfm_free_cold_4(v1);
  }

  v11 = (v7 + 1) & 0x3F;
  v12 = (v7 + 1) >> 5;
  v13 = v12 & 0x7FFFFFFFFFFFFFELL;
  v14 = *(v8 + 8 * (v12 & 0x7FFFFFFFFFFFFFELL)) >> (v7 + 1);
  v82 = v11;
  v81 = mfm_arena + 0x10000;
  if (v14)
  {
    v15 = __clz(__rbit64(v14));
LABEL_13:
    v16 = v15 + 1;
    goto LABEL_14;
  }

  v64 = v8 + 8 * v13;
  v65 = *(v64 + 16);
  if (!v65)
  {
    if (v11 < 0x2F)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v64 + 24);
    }

    v15 = (((2 * v73) << (v11 ^ 0x3Fu)) | (*(v8 + ((8 * v12) | 8)) >> v11)) & 0x3FFFF;
    goto LABEL_13;
  }

  v16 = __clz(__rbit64(v65)) - v11 + 65;
LABEL_14:
  if (mfm_memtag_enabled == 1)
  {
    _X0 = memtag_assign_tag(v1, 16 * v16);
    v1 = _X0;
    _X8 = _X0 + 16 * v16;
    __asm
    {
      STG             X0, [X0]
      STG             X8, [X8,#-0x10]
    }

    if (v16 > 2)
    {
      _X9 = (_X0 + 31) & 0xFFFFFFFFFFFFFFE0;
      _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
      __asm
      {
        ST2G            X9, [X9]
        ST2G            X10, [X10,#-0x20]
      }
    }

    v25 = (_X0 + 63) & 0xFFFFFFFFFFFFFFC0;
    v26 = _X8 & 0xFFFFFFFFFFFFFFC0;
    while (v25 < v26)
    {
      __asm { DC              GVA, X9 }

      v25 += 64;
    }
  }

  bzero(v1, 16 * v16);
  v27 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v2, &v27, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v27)
  {
    os_unfair_lock_lock_with_options();
  }

  v29 = (v7 >> 5) & 0x7FFFFFFFFFFFFFELL;
  v30 = *(v8 + 8 * v29);
  if ((v30 & *(v8 + 8 * v9) & v10) == 0)
  {
LABEL_61:
    mfm_free_cold_3(v1);
  }

  v31 = *(v8 + 8 * v13) >> v82;
  if (v31)
  {
    v32 = __clz(__rbit64(v31));
LABEL_25:
    v33 = v32 + 1;
    goto LABEL_26;
  }

  v66 = v8 + 8 * v13;
  v67 = *(v66 + 16);
  if (!v67)
  {
    if (v82 < 0x2F)
    {
      v74 = 0;
    }

    else
    {
      v74 = *(v66 + 24);
    }

    v29 = (v7 >> 5) & 0x7FFFFFFFFFFFFFELL;
    v32 = (((2 * v74) << (v82 ^ 0x3Fu)) | (*(v8 + ((8 * v12) | 8)) >> v82)) & 0x3FFFF;
    goto LABEL_25;
  }

  v33 = __clz(__rbit64(v67)) - v82 + 65;
LABEL_26:
  if (v16 != v33)
  {
    goto LABEL_61;
  }

  *(v2 + 4) -= v16;
  --*(v2 + 24);
  v34 = (v7 - 1) >> 5;
  v35 = *(v8 + ((8 * v34) | 8));
  if (((v35 >> (v7 - 1)) & 1) == 0)
  {
    v36 = (v7 - 1) & 0x3F;
    v37 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v8 + 8 * v37) << (v36 ^ 0x3Fu);
    if (v38)
    {
      v39 = __clz(v38) + 1;
    }

    else
    {
      v68 = v8 + 8 * v37;
      v69 = *(v68 - 16);
      if (v69)
      {
        v39 = v36 + __clz(v69) + 2;
      }

      else
      {
        if (v36 > 0x11)
        {
          v75 = 0;
        }

        else
        {
          v75 = *(v68 - 8);
        }

        v78 = v36 + 46;
        v79 = ((2 * v35) << ~v78) | (v75 >> v78);
        v80 = v35 >> v78;
        if ((v78 & 0x40) == 0)
        {
          LODWORD(v80) = v79;
        }

        v39 = (v80 & 0x3FFFF) + 1;
        v29 = (v7 >> 5) & 0x7FFFFFFFFFFFFFELL;
      }
    }

    v7 -= v39;
    *(v8 + 8 * v29) = v30 & ~v10;
    _X8 = (v81 + 16 * v7);
    if (mfm_memtag_enabled)
    {
      __asm { LDG             X8, [X8] }

      v42 = *_X8;
      v41 = _X8[1];
      _X12 = v2 + 16 * *_X8;
      _X10 = v2 + 16 * v41;
      __asm
      {
        LDG             X12, [X12]
        LDG             X10, [X10]
      }
    }

    else
    {
      v42 = *_X8;
      v41 = _X8[1];
      _X12 = v2 + 16 * *_X8;
      _X10 = (v2 + 16 * v41);
    }

    *(_X12 + 8) = v41;
    *_X10 = v42;
    *_X8 = 0;
    _X8[1] = 0;
    v16 += v39;
  }

  v47 = v7 + v16;
  v48 = *(v2 + 8);
  if (v7 + v16 < v48)
  {
    v49 = (v47 >> 5) & 0x7FFFFFFFFFFFFFELL;
    v50 = *(v8 + 8 * v49);
    if ((v50 & (1 << v47) & *(v8 + ((8 * (v47 >> 5)) | 8))) == 0)
    {
      v51 = (v47 + 1) >> 5;
      v52 = *(v8 + 8 * (v51 & 0x7FFFFFFFFFFFFFELL)) >> (v47 + 1);
      if (v52)
      {
        v53 = __clz(__rbit64(v52));
      }

      else
      {
        v70 = (v47 + 1) & 0x3F;
        v71 = v8 + 8 * (v51 & 0x7FFFFFFFFFFFFFELL);
        v72 = *(v71 + 16);
        if (v72)
        {
          v54 = __clz(__rbit64(v72)) - v70 + 65;
          goto LABEL_39;
        }

        v76 = *(v8 + ((8 * v51) | 8));
        if (v70 < 0x2F)
        {
          v77 = 0;
        }

        else
        {
          v77 = *(v71 + 24);
        }

        v53 = (((2 * v77) << (v70 ^ 0x3Fu)) | (v76 >> v70)) & 0x3FFFF;
      }

      v54 = v53 + 1;
LABEL_39:
      *(v8 + 8 * v49) = v50 & ~(1 << v47);
      _X8 = (v81 + 16 * v47);
      if (mfm_memtag_enabled)
      {
        __asm { LDG             X8, [X8] }

        v57 = *_X8;
        v56 = _X8[1];
        _X12 = v2 + 16 * *_X8;
        _X10 = v2 + 16 * v56;
        __asm
        {
          LDG             X12, [X12]
          LDG             X10, [X10]
        }
      }

      else
      {
        v57 = *_X8;
        v56 = _X8[1];
        _X12 = v2 + 16 * *_X8;
        _X10 = (v2 + 16 * v56);
      }

      *(_X12 + 8) = v56;
      *_X10 = v57;
      *_X8 = 0;
      _X8[1] = 0;
      v16 += v54;
      v48 = *(v2 + 8);
      v47 = v16 + v7;
    }
  }

  if (v47 == v48)
  {
    *(v8 + ((v48 >> 2) & 0x3FFFFFFFFFFFFFF0)) &= ~(1 << v48);
    if (v16 > 0x3F)
    {
      __mfm_block_set_sizes(v2, 0, v7, v16);
    }

    else
    {
      *(v8 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) &= ~(1 << v7);
      *(v8 + (((v7 + v16 - 1) >> 2) & 0x3FFFFFFFFFFFFFF0 | 8)) &= ~(1 << (v7 + v16 - 1));
    }

    *(v2 + 8) = v7;
  }

  else
  {
    __mfm_free_block(v2, v7, v16);
  }

  v62 = *(StatusReg + 24);
  v63 = v62;
  atomic_compare_exchange_strong_explicit(v2, &v63, 0, memory_order_release, memory_order_relaxed);
  if (v63 != v62)
  {

    os_unfair_lock_unlock(v2);
  }
}

uint64_t *_xzm_xzone_thread_cache_record_and_malloc_outlined(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = mach_absolute_time();
  v9 = *(a4 + 8);
  if (v8 - v9 >= *(a1 + 264))
  {
    *(a4 + 8) = v8;
    *(a4 + 20) = 0;
    *(a4 + 18) = 0;

    return _xzm_xzone_malloc_tiny_or_early(a1, a2, a3);
  }

  else
  {
    *(a4 + 16) = -2;
    *(a4 + 22) = v9 & 0xFFF;

    return _xzm_xzone_thread_cache_fill_and_malloc(a1, a2, a4);
  }
}

uint64_t __mfm_block_set_sizes(uint64_t result, int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 - 1;
  v5 = result + 224;
  *(result + 224 + ((8 * (a3 >> 5)) | 8)) = *(result + 224 + ((8 * (a3 >> 5)) | 8)) & ~(0x7FFFFLL << a3) | ((a2 & 1 | (2 * (a4 - 1))) << a3);
  if ((a3 & 0x3F) >= 0x2E)
  {
    *(v5 + 8 * ((a3 >> 5) & 0x7FFFFFFFFFFFFFELL) + 24) = *(v5 + 8 * ((a3 >> 5) & 0x7FFFFFFFFFFFFFELL) + 24) & ~(0x3FFFFuLL >> (a3 & 0x3F ^ 0x3F)) | ((v4 & 0x7FFFFFFFFFFFFFFFuLL) >> (a3 & 0x3F ^ 0x3F));
  }

  v6 = (v4 + a3) >> 6;
  v7 = (v4 + a3) & 0x3F;
  v8 = 0x40000;
  if (!a2)
  {
    v8 = 0;
  }

  v9 = v4 + v8;
  v10 = 0x7FFFFLL << (v7 + 46);
  v11 = 0x3FFFFuLL >> ~(v7 + 46);
  if (((v7 + 46) & 0x40) != 0)
  {
    v11 = 0x7FFFFLL << (v7 + 46);
    v10 = 0;
  }

  v12 = v9 << (v7 + 46);
  v13 = v9 >> 1 >> ~(v7 + 46);
  if (((v7 + 46) & 0x40) != 0)
  {
    v13 = v12;
    v12 = 0;
  }

  if (v7 >= 0x12)
  {
    v14 = 2 * v6;
  }

  else
  {
    v14 = 2 * v6;
    *(v5 + 16 * v6 - 8) = *(v5 + 16 * v6 - 8) & ~v10 | v12;
  }

  *(v5 + 8 * v14 + 8) = *(v5 + 8 * v14 + 8) & ~v11 | v13;
  return result;
}

char *xzm_metapool_alloc(uint64_t a1)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4[1];
    *(a1 + 32) = *v4;
    v6 = *(a1 + 56);
    if (v6)
    {
      xzm_metapool_free(v6, v4);
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7 && (v8 = *(a1 + 48), v8 != *(a1 + 12)))
    {
      v11 = *(v7 + 8);
    }

    else
    {
      v9 = *(a1 + 8);
      plat = mvm_allocate_plat(0, v9, __clz(__rbit32(*(a1 + 16))) & 0x1F, 1, 0x2000, 1);
      if (!plat)
      {
        xzm_metapool_alloc_cold_2();
      }

      v11 = plat;
      v12 = *(a1 + 5);
      if (v12 != 1)
      {
        address = plat;
        v13 = *(a1 + 16);
        v14 = v13 != 0;
        v15 = v13 - 1;
        v16 = v14 ? v15 : 0;
        if (mach_vm_map(*MEMORY[0x1E69E9A60], &address, v9, v16, (v12 << 24) | 0x4000, 0, 0, 0, 3, 7, 1u))
        {
          xzm_metapool_alloc_cold_1();
        }
      }

      if (*(a1 + 56))
      {
        v17 = xzm_metapool_alloc();
        v8 = 0;
      }

      else
      {
        v8 = *(a1 + 20);
        v17 = v11;
      }

      *v17 = 0;
      v17[1] = v11;
      *(a1 + 40) = v17;
      *v17 = *(a1 + 24);
      *(a1 + 24) = v17;
    }

    v5 = v11 + v8;
    *(a1 + 48) = *(a1 + 20) + v8;
  }

  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit(a1, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock(a1);
  }

  return v5;
}

void _xzm_walk_lock_wait(os_unfair_lock_s *a1)
{
  v1 = 0;
  v2 = a1 + 86;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&a1[86], &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
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

uint64_t _xzm_segment_group_clear_chunk(char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  result = madvise(a1, a2, 11);
  if (v2 && result)
  {
    do
    {
      if (v2 >= 0x80000)
      {
        v5 = 0x80000;
      }

      else
      {
        v5 = v2;
      }

      bzero(v3, v5);
      result = mvm_madvise(v3, v5, 7);
      v3 += v5;
      v2 -= v5;
    }

    while (v2);
  }

  return result;
}

unint64_t _xzm_malloc_large_huge(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (*(a1 + 240))
  {
    v5 = *(a1 + 240);
  }

  else
  {
    v5 = a1;
  }

  v6 = a2 + 0x3FFF;
  v8 = a3 > 0x100000 || ((a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000) > 0x200000;
  if (v8)
  {
    v9 = 8;
  }

  else
  {
    v9 = 7;
  }

  if (!(v6 >> 46))
  {
    v13 = v6 >> 14;
    v14 = HIWORD(a4) == 256 || v8;
    if (v14 || *(v5 + 411) == 2)
    {
      v15 = (*(v5 + 409) >> 4) & 1;
      if (*(a1 + 369) == 1 && *(a1 + 376) <= 0x8000uLL)
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 2;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 2));
    v17 = *(v5 + 412);
    if (v17 >= *(v5 + 413))
    {
      v19 = (*(v5 + 472) + 496 * v15);
    }

    else
    {
      v18 = (v15 + v17 * (StatusReg >> 12));
      if (v8)
      {
        v18 = 1;
      }

      v19 = (*(v5 + 472) + 496 * v18);
    }

    v20 = xzm_segment_group_alloc_chunk(v19, v9, 0, v13, 0, a3, a5 & 1, (*(a1 + 360) >> 7) & 1);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      *(v20 + 34) = *(a1 + 208);
      v23 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit((a1 + 344), &v22, *(v23 + 24), memory_order_acquire, memory_order_acquire);
      if (v22)
      {
        os_unfair_lock_lock_with_options();
      }

      v24 = (a1 + 352);
      v25 = *(a1 + 352);
      *(v21 + 16) = v25;
      if (v25)
      {
        *(v25 + 24) = v21 + 16;
      }

      *v24 = v21;
      *(v21 + 24) = v24;
      v26 = *(v23 + 24);
      v27 = v26;
      atomic_compare_exchange_strong_explicit((a1 + 344), &v27, 0, memory_order_release, memory_order_relaxed);
      if (v27 != v26)
      {
        os_unfair_lock_unlock((a1 + 344));
      }

      v28 = *(v21 + 32) & 0xF;
      if (v28 > 6)
      {
        if (v28 - 7 >= 2)
        {
          goto LABEL_63;
        }

        v29 = *(v21 + 40) << 14;
      }

      else
      {
        switch(v28)
        {
          case 2u:
            v29 = 0x4000;
            break;
          case 5u:
            v29 = 0x10000;
            break;
          case 6u:
            v29 = 0x20000;
            break;
          default:
LABEL_63:
            xzm_chunk_mark_free_cold_1(v28);
        }
      }

      v30 = *v19;
      if (v30 >= 4)
      {
        xzm_segment_group_alloc_chunk_cold_1(*v19);
      }

      result = ((0xAAAAAAAAAAAAC000 * (((v21 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v21 & 0xFFFFFFFFFFFFC000) + 0x28);
      v32 = 16;
      if (((v30 - 1) & 0xFE) == 0)
      {
        v32 = 32769;
      }

      if (v32 <= v29)
      {
        v33 = *(v19 + 3);
        if (*(v33 + 368) == 1)
        {
          v34 = *(v33 + 376);
          if (v34 < v29 || ((0xCu >> (v30 & 0xF)) & 1) != 0)
          {
            if (v34 < v29)
            {
              goto LABEL_57;
            }
          }

          else if ((*(v33 + 369) & 1) == 0)
          {
            goto LABEL_57;
          }

          if ((a5 & 0x40000000) != 0)
          {
            result &= 0xF0FFFFFFFFFFFFFFLL;
            _X9 = result + v29;
            __asm
            {
              STG             X0, [X0]
              STG             X9, [X9,#-0x10]
            }

            _X8 = (result + 31) & 0xF1FFFFFFFFFFFFE0;
            _X10 = (result + v29) & 0xFFFFFFFFFFFFFFE0;
            __asm
            {
              ST2G            X8, [X8]
              ST2G            X10, [X10,#-0x20]
            }

            for (i = (result + 63) & 0xFFFFFFFFFFFFFFC0; i < ((result + v29) & 0xFFFFFFFFFFFFFFC0); i += 64)
            {
              __asm { DC              GVA, X8 }
            }
          }

          else
          {
            result = memtag_assign_tag(result, v29);
            v35 = result;
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

              v35 += 512;
            }

            while (v35 < result + v29);
          }
        }
      }

LABEL_57:
      if (result)
      {
        return result;
      }
    }
  }

  malloc_type_aligned_alloc_cold_1();
  return 0;
}

uint64_t _xzm_segment_group_find_and_allocate_chunk(unsigned __int8 *a1, int a2, unsigned __int8 *a3, uint64_t *a4, unsigned int a5, unint64_t a6)
{
  if (a6 > 0x4000)
  {
    v6 = a6 >> 14;
  }

  else
  {
    v6 = 0;
  }

  if (HIDWORD(v6))
  {
    return 0;
  }

  if (!a3 || !*a3)
  {
    v12 = 0;
    v56 = 1;
    v13 = a5;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = __CFADD__(v13, v6 - 1);
    v13 += v6 - 1;
    if (!v14)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v56 = (arc4random_uniform(*a3) + 1);
  v10 = (v56 * a5 * a3[1]) >> 8;
  v11 = (v56 * a5 * a3[1]);
  if (v11 && v11 > arc4random_uniform(0x100u))
  {
    LOBYTE(v10) = v10 + 1;
  }

  v12 = v10;
  v13 = v56 * a5 + v10;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_14:
  v52 = v12;
  v15 = v13 - 1;
  v16 = __clz(v13 - 1);
  v17 = (((v13 - 1) >> (29 - v16)) & 3) - 4 * v16 + 119;
  if (v13 >= 9)
  {
    v15 = v17;
  }

  if (v15 > 0x1A)
  {
    return 0;
  }

  v51 = a4;
  v18 = 16 * v15 + 32;
  while (1)
  {
    v53 = v18;
    v19 = *&a1[v18];
    if (v19)
    {
      break;
    }

LABEL_33:
    v28 = 0;
    v18 = v53 + 16;
    if (v53 >= 0x1C0)
    {
      return v28;
    }
  }

  while (1)
  {
    v20 = (*(v19 + 32) & 0xF) == 1 ? 1 : *(v19 + 40);
    v21 = *(v19 + 16);
    if (v20 >= v13)
    {
      v22 = v19 & 0xFFFFFFFFFFFFC000;
      if (v6)
      {
        v23 = -1431655765 * ((v19 - v22 - 2104) >> 4) % v6;
        if (v23)
        {
          v24 = v6 - v23;
        }

        else
        {
          v24 = 0;
        }

        v20 -= v24;
        v25 = a5;
      }

      else
      {
        v24 = 0;
        v25 = v13;
      }

      v26 = *a1;
      if (v26 >= 4)
      {
        xzm_segment_group_alloc_chunk_cold_1(v26);
      }

      v27 = (0x4101004u >> (8 * v26)) & *(*(a1 + 3) + 409);
      if (!v27)
      {
        v30 = (v19 + 16);
        goto LABEL_39;
      }

      if (_xzm_segment_group_span_mark_smaller(a1, v19, v24, v25, v20 - v25))
      {
        break;
      }
    }

    v19 = v21;
    if (!v21)
    {
      goto LABEL_33;
    }
  }

  v30 = (v19 + 16);
  v21 = *(v19 + 16);
LABEL_39:
  v31 = *(v19 + 24);
  if (v21)
  {
    *(v21 + 24) = v31;
    v32 = *v30;
  }

  else
  {
    v32 = 0;
  }

  *v31 = v32;
  if (v24)
  {
    v19 = _xzm_segment_group_segment_slice_split(a1, v19 & 0xFFFFFFFFFFFFC000, v19, v20, v27 != 0, 1);
  }

  if (v20 != v25)
  {
    _xzm_segment_group_segment_span_free(a1, v22, v25 - 1431655765 * ((v19 - v22 - 2104) >> 4), *(v19 + 40) - v25, v27 == 0, (*(v19 + 32) >> 4) & 1);
  }

  v33 = v51;
  v34 = v52;
  v35 = (v19 - (v22 + 2104)) >> 4;
  if (v52)
  {
    v36 = v56 + 1;
    v37 = ~(-1 << (v56 + 1));
    if (v52 >= (3 * (v56 + 1)) >> 2)
    {
      v45 = ~(-1 << (v56 + 1));
      v46 = v56 + 1;
    }

    else if (v52 <= v36 >> 2)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v38 = arc4random() & v37;
      v39.i32[0] = v38;
      v40 = vcnt_s8(v39);
      v40.i16[0] = vaddlv_u8(v40);
      v41 = v52 - v40.i32[0];
      if (v40.i32[0] >= v52)
      {
        v41 = v40.i32[0] - v52;
      }

      v42 = v52 - (v36 - v40.i32[0]);
      if (v36 - v40.i32[0] >= v52)
      {
        v42 = v36 - v40.i32[0] - v52;
      }

      v43 = v41 > v42;
      if (v41 <= v42)
      {
        v44 = 0;
      }

      else
      {
        v44 = ~(-1 << (v56 + 1));
      }

      v45 = v44 ^ v38;
      if (v43)
      {
        v46 = v36 - v40.i32[0];
      }

      else
      {
        v46 = v40.i32[0];
      }

      v34 = v52;
    }

    if (v46 >= v34)
    {
      if (v46 > v34)
      {
        LODWORD(v45) = _xzm_random_clear_n_bits(v45, v46, v46 - v34);
      }
    }

    else
    {
      LODWORD(v45) = _xzm_random_clear_n_bits(v45 ^ v37, v36 - v46, v34 - v46) ^ v37;
    }

    v33 = v51;
  }

  else
  {
    LODWORD(v45) = 0;
  }

  v47 = -1431655765 * v35;
  switch(a2)
  {
    case 2:
      v25 = 1;
      break;
    case 6:
      v25 = 8;
      break;
    case 5:
      v25 = 4;
      break;
  }

  if (!v56)
  {
    v28 = 0;
    if (!v45)
    {
      return v28;
    }

LABEL_85:
    _xzm_segment_group_segment_create_guard(v22, v47);
    return v28;
  }

  v28 = 0;
  v48 = 0;
  v49 = *(v22 + 2104 + 48 * v47 + 32) & 0x10;
  do
  {
    if (v45)
    {
      _xzm_segment_group_segment_create_guard(v22, v47++);
    }

    v50 = _xzm_segment_group_segment_span_mark_allocated(v22, a2, v47, v25);
    *(v50 + 32) = *(v50 + 32) & 0xEF | v49;
    if (v48)
    {
      *(v50 + 16) = *v33;
      *v33 = v50;
    }

    else
    {
      v28 = v50;
    }

    LODWORD(v45) = v45 >> 1;
    v47 += v25;
    ++v48;
  }

  while (v56 != v48);
  if (v45)
  {
    goto LABEL_85;
  }

  return v28;
}

uint64_t xzm_segment_group_alloc_chunk(unsigned __int8 *a1, int a2, unsigned __int8 *a3, unsigned int a4, uint64_t *a5, unint64_t a6, int a7, int a8)
{
  if (a2 != 8)
  {
    v36 = 0;
    if (a4 == 1 && a2 == 7)
    {
      v38 = 2;
    }

    else
    {
      v38 = a4;
    }

    v39 = (a1 + 4);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(a1 + 1, &v36, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v36)
    {
      os_unfair_lock_lock_with_options();
    }

    chunk = _xzm_segment_group_find_and_allocate_chunk(a1, a2, a3, a5, v38, a6);
    if (chunk)
    {
      v29 = chunk;
      v42 = *(StatusReg + 24);
      v43 = v42;
      atomic_compare_exchange_strong_explicit(v39, &v43, 0, memory_order_release, memory_order_relaxed);
      if (v43 == v42)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

    v78 = a8;
    v44 = 0;
    v45 = (a1 + 8);
    atomic_compare_exchange_strong_explicit(a1 + 2, &v44, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    v46 = v44 == 0;
    v47 = *(StatusReg + 24);
    v48 = v47;
    atomic_compare_exchange_strong_explicit(a1 + 1, &v48, 0, memory_order_release, memory_order_relaxed);
    v49 = v48 == v47;
    if (v46)
    {
      if (!v49)
      {
        os_unfair_lock_unlock(a1 + 1);
      }
    }

    else
    {
      if (!v49)
      {
        os_unfair_lock_unlock(a1 + 1);
      }

      v71 = 0;
      atomic_compare_exchange_strong_explicit(v45, &v71, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v71)
      {
        os_unfair_lock_lock_with_options();
      }

      v72 = 0;
      atomic_compare_exchange_strong_explicit(v39, &v72, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v72)
      {
        os_unfair_lock_lock_with_options();
      }

      v29 = _xzm_segment_group_find_and_allocate_chunk(a1, a2, a3, a5, v38, a6);
      v73 = *(StatusReg + 24);
      v74 = v73;
      atomic_compare_exchange_strong_explicit(a1 + 1, &v74, 0, memory_order_release, memory_order_relaxed);
      if (v74 != v73)
      {
        os_unfair_lock_unlock(a1 + 1);
      }

      if (v29)
      {
        v75 = *(StatusReg + 24);
        v76 = v75;
        atomic_compare_exchange_strong_explicit(v45, &v76, 0, memory_order_release, memory_order_relaxed);
        v39 = (a1 + 8);
        a8 = v78;
        if (v76 != v75)
        {
LABEL_48:
          os_unfair_lock_unlock(v39);
        }

LABEL_58:
        v54 = *(v29 + 32) & 0xF;
        if (v54 > 6)
        {
          if (v54 - 7 >= 2)
          {
            goto LABEL_118;
          }

          v55 = *(v29 + 40) << 14;
        }

        else
        {
          switch(v54)
          {
            case 2u:
              v55 = 0x4000;
              break;
            case 5u:
              v55 = 0x10000;
              break;
            case 6u:
              v55 = 0x20000;
              break;
            default:
LABEL_118:
              xzm_chunk_mark_free_cold_1(v54);
          }
        }

        v56 = *a1;
        if (v56 >= 4)
        {
          xzm_segment_group_alloc_chunk_cold_1(v56);
        }

        v57 = *(a1 + 3);
        v58 = 16;
        if (((v56 - 1) & 0xFE) == 0)
        {
          v58 = 32769;
        }

        if (v58 <= v55 && *(v57 + 368) == 1)
        {
          v59 = *(v57 + 376);
          v60 = v59 >= v55;
          if (v59 >= v55 && ((0xCu >> (v56 & 0xF)) & 1) == 0)
          {
            v60 = *(v57 + 369);
          }
        }

        else
        {
          v60 = 0;
        }

        v61 = *((v29 & 0xFFFFFFFFFFFFC000) + 0x28);
        v62 = (0xAAAAAAAAAAAAC000 * (((v29 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000;
        if ((*(v29 + 32) & 0x10) != 0)
        {
          goto LABEL_87;
        }

        if (a2 == 7 && (*(v57 + 409) & 2) != 0)
        {
          if (v60)
          {
            v63 = 4;
          }

          else
          {
            v63 = 0;
          }

          _xzm_segment_group_overwrite_chunk(v62 + v61, v55, v63);
        }

        else
        {
          if (!a7)
          {
LABEL_87:
            if (a8)
            {
              xzm_segment_group_alloc_chunk_cold_2(v62 + v61, v60 & 1, v55);
            }

            return v29;
          }

          v64 = (v62 + v61);
          if (a2 == 2)
          {
            bzero(v64, v55);
          }

          else
          {
            _xzm_segment_group_clear_chunk(v64, v55);
          }
        }

        *(v29 + 32) |= 0x10u;
        goto LABEL_87;
      }
    }

    v29 = 0;
    if (_xzm_segment_group_alloc_segment(a1, 0, 0, 0, 0))
    {
      v29 = _xzm_segment_group_find_and_allocate_chunk(a1, a2, a3, a5, v38, a6);
      v50 = *(StatusReg + 24);
      v51 = v50;
      atomic_compare_exchange_strong_explicit(a1 + 1, &v51, 0, memory_order_release, memory_order_relaxed);
      if (v51 != v50)
      {
        os_unfair_lock_unlock(a1 + 1);
      }
    }

    v52 = *(StatusReg + 24);
    v53 = v52;
    atomic_compare_exchange_strong_explicit(v45, &v53, 0, memory_order_release, memory_order_relaxed);
    if (v53 != v52)
    {
      os_unfair_lock_unlock(a1 + 2);
    }

    a8 = v78;
    if (!v29)
    {
      return v29;
    }

    goto LABEL_58;
  }

  if (a6 >= 0x400000)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  v81 = 0;
  if (*a1 != 1 || !*(a1 + 240) || v13 > 0x400000 || *(a1 + 121) < a4)
  {
    goto LABEL_92;
  }

  v14 = 0;
  v15 = (a1 + 488);
  v16 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1 + 122, &v14, *(v16 + 24), memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    os_unfair_lock_lock_with_options();
  }

  if (!*(a1 + 241))
  {
    v68 = *(v16 + 24);
    v69 = v68;
    atomic_compare_exchange_strong_explicit(v15, &v69, 0, memory_order_release, memory_order_relaxed);
    if (v69 == v68)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v77 = v16;
  v79 = a7;
  v17 = *(*(a1 + 3) + 568);
  do
  {
    v18 = *(a1 + 58);
    if (!v18)
    {
LABEL_89:
      v65 = *(v77 + 24);
      v66 = v65;
      atomic_compare_exchange_strong_explicit(v15, &v66, 0, memory_order_release, memory_order_relaxed);
      if (v66 == v65)
      {
LABEL_91:
        v81 = 0;
LABEL_92:
        if (_xzm_segment_group_alloc_segment(a1, a4 << 14, v13, &v81, a8))
        {
          return v81;
        }

        else
        {
          return 0;
        }
      }

LABEL_90:
      os_unfair_lock_unlock(a1 + 122);
      goto LABEL_91;
    }

    v19 = 0;
    do
    {
      while (1)
      {
        v20 = v18;
        v18 = *(v18 + 24);
        v21 = *(v20 + 12);
        v22 = v21 < a4 || v21 >= 2 * a4;
        if (v22 || v19 && v21 >= *(v19 + 12))
        {
          goto LABEL_23;
        }

        v23 = *(v20 + 48);
        if ((_xzm_reclaim_is_reusable(v17) & 1) == 0)
        {
          break;
        }

        v19 = v20;
LABEL_23:
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      --*(a1 + 241);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = (v24 + 32);
      if (!v24)
      {
        v26 = a1 + 472;
      }

      *v26 = v25;
      *v25 = v24;
      xzm_metapool_free(*(*(a1 + 3) + 480), v20);
    }

    while (v18);
LABEL_28:
    if (!v19)
    {
      goto LABEL_89;
    }
  }

  while (!_xzm_segment_group_cache_mark_used(a1, v19));
  v27 = *(v77 + 24);
  v28 = v27;
  atomic_compare_exchange_strong_explicit(v15, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != v27)
  {
    os_unfair_lock_unlock(a1 + 122);
  }

  _xzm_segment_table_allocated_at(*(a1 + 3), *(v19 + 40), v19, 0);
  v29 = v19 + 2104;
  v30 = *(v19 + 2136);
  if (v79)
  {
    v31 = v30 & 0xF;
    if (v31 > 6)
    {
      if (v31 - 7 >= 2)
      {
        goto LABEL_119;
      }

      v32 = *(v19 + 2144) << 14;
    }

    else
    {
      switch(v31)
      {
        case 2u:
          v32 = 0x4000;
          break;
        case 5u:
          v32 = 0x10000;
          break;
        case 6u:
          v32 = 0x20000;
          break;
        default:
LABEL_119:
          xzm_chunk_mark_free_cold_1(v31);
      }
    }

    _xzm_segment_group_clear_chunk((((0xAAAAAAAAAAAAC000 * (((v29 & 0x3FFF) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((v29 & 0xFFFFFFFFFFFFC000) + 0x28)), v32);
    v70 = *(v19 + 2136) | 0x10;
  }

  else
  {
    v70 = v30 & 0xEF;
  }

  *(v19 + 2136) = v70;
  return v29;
}

uint64_t _xzm_segment_group_segment_span_mark_allocated(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1 + 2104 + 48 * a3;
  v5 = a4 - 1;
  if (a4 - 1 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 16);
  if (v6 + a3 >= v7)
  {
    v8 = v7 + ~a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = v4 + 48;
  if (v8)
  {
    if ((v8 + 1) > 2)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = v10 - 1;
    v12 = 48;
    do
    {
      *(v9 + 32) = *(v9 + 32) & 0xF0 | 4;
      *(v9 + 36) = v12;
      v9 += 48;
      v12 += 48;
      --v11;
    }

    while (v11);
  }

  if (a2 == 8)
  {
    goto LABEL_17;
  }

  v13 = a1 + 2104 + 48 * (a3 + a4) - 48;
  if (v13 >= v9)
  {
    v14 = *(a1 + 2104 + 48 * (a3 + a4) - 16) & 0xF0 | 4u;
    *(v13 + 32) = *(v13 + 32) & 0xF0 | 4;
    *(a1 + 2104 + 48 * (a3 + a4) - 12) = 48 * v5;
  }

  if (a2 != 2)
  {
LABEL_17:
    *(v4 + 40) = a4;
  }

  *(v4 + 32) = *(v4 + 32) & 0xF0 | a2 & 0xF;
  *(a1 + 8 * a3 + 56) = -1;
  ++*(a1 + 8);
  return a1 + 2104 + 48 * a3;
}

uint64_t _xzm_segment_group_segment_span_free(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v6 = a2 + 2104 + 48 * a3;
  if (a6)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v6 + 32) & 0xE0 | v7;
  v9 = a4 - 1;
  if (a4 == 1)
  {
    *(v6 + 32) = v8 | 1;
    v9 = *(a2 + 20);
    if (*(a2 + 20))
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v6 + 32) = v8 | 3;
    *(v6 + 40) = a4;
    v10 = a2 + 2104 + 48 * (v9 + a3);
    *(v10 + 32) = *(v10 + 32) & 0xF0 | 4;
    *(v10 + 36) = 48 * a4 - 48;
    if (*(a2 + 20))
    {
      goto LABEL_13;
    }

    if (a4 >= 9)
    {
      v11 = __clz(v9);
      v9 = ((v9 >> (29 - v11)) & 3) - 4 * v11 + 119;
    }
  }

  v12 = result + 16 * v9;
  v15 = *(v12 + 32);
  v13 = (v12 + 32);
  v14 = v15;
  *(v6 + 16) = v15;
  if (v15)
  {
    *(v14 + 24) = v6 + 16;
  }

  *v13 = v6;
  *(v6 + 24) = v13;
LABEL_13:
  if (a5)
  {
    *(a2 + 8 * a3 + 56) = -1;
  }

  return result;
}

uint64_t _xzm_xzone_fresh_chunk_init(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 32);
  *(a2 + 32) = v3 & 0xBF;
  if (a3 == 2 || a3 == 6)
  {
    *(a2 + 8) = *(result + 48);
    *(a2 + 10) = *(result + 68);
    *(a2 + 12) = (*(result + 87) & 2) != 0;
  }

  else
  {
    if (a3 != 5)
    {
      _xzm_xzone_fresh_chunk_init_cold_2();
    }

    v4 = v3 & 0xF;
    if (v4 != 2 && v4 != 6)
    {
      if (v4 != 5)
      {
        _xzm_segment_group_segment_span_free_coalesce_cold_4(v4);
      }

      *(a2 + 4) = 0;
      *(a2 + 12) = 0;
      *a2 |= ~(-1 << *(result + 68));
    }
  }

  return result;
}

malloc_zone_t *__cdecl malloc_zone_from_ptr(const void *ptr)
{
  v1 = 0;
  if (ptr && malloc_num_zones)
  {
    if (lite_zone && (*(lite_zone + 16))())
    {
      return default_zone;
    }

    else if (initial_num_zones)
    {
      v3 = 0;
      while (1)
      {
        v1 = *(malloc_zones + v3);
        if ((*(v1 + 16))(v1, ptr))
        {
          break;
        }

        if (++v3 >= initial_num_zones)
        {
          goto LABEL_10;
        }
      }

      if (!v3 && !has_injected_zone0)
      {
        return default_zone;
      }
    }

    else
    {
LABEL_10:
      v4 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v5 = malloc_num_zones;
      v6 = initial_num_zones;
      if (initial_num_zones >= malloc_num_zones)
      {
LABEL_13:
        v1 = 0;
      }

      else
      {
        while (1)
        {
          v1 = *(malloc_zones + v6);
          if ((*(v1 + 16))(v1, ptr))
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_13;
          }
        }
      }

      atomic_fetch_add(v4, 0xFFFFFFFF);
    }
  }

  return v1;
}

void *find_registered_zone(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (malloc_num_zones)
  {
    if (lite_zone && (v6 = (*(lite_zone + 16))()) != 0)
    {
      if (a2)
      {
        *a2 = v6;
      }

      return default_zone;
    }

    else if (initial_num_zones <= a3)
    {
LABEL_11:
      v10 = pFRZCounterLive;
      atomic_fetch_add(pFRZCounterLive, 1u);
      v11 = malloc_num_zones;
      v12 = initial_num_zones;
      if (initial_num_zones >= malloc_num_zones)
      {
LABEL_14:
        v7 = 0;
        v13 = 0;
      }

      else
      {
        while (1)
        {
          v7 = *(malloc_zones + v12);
          v13 = (*(v7 + 16))(v7, a1);
          if (v13)
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_14;
          }
        }
      }

      if (a2)
      {
        *a2 = v13;
      }

      atomic_fetch_add(v10, 0xFFFFFFFF);
    }

    else
    {
      v8 = a3;
      while (1)
      {
        v7 = *(malloc_zones + v8);
        v9 = (*(v7 + 16))(v7, a1);
        if (v9)
        {
          break;
        }

        if (++v8 >= initial_num_zones)
        {
          goto LABEL_11;
        }
      }

      if (a2)
      {
        *a2 = v9;
      }

      if (!v8 && !has_injected_zone0)
      {
        return default_zone;
      }
    }
  }

  else
  {
    v7 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return v7;
}

uint64_t _realloc(uint64_t *a1, unint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      v8 = _malloc_zone_malloc(default_zone, 0, 0);
      if (!v8)
      {
LABEL_29:
        v9 = 0;
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 12;
        return v9;
      }

      v9 = v8;
      _free(a1);
      return v9;
    }

    if (!malloc_num_zones)
    {
LABEL_22:
      if ((malloc_debug_flags & 0x140) != 0)
      {
        v14 = 80;
      }

      else
      {
        v14 = 144;
      }

      ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(v14, a1);
      goto LABEL_29;
    }

    if (!lite_zone || !(*(lite_zone + 16))())
    {
      if (!initial_num_zones)
      {
LABEL_17:
        v11 = pFRZCounterLive;
        atomic_fetch_add(pFRZCounterLive, 1u);
        v12 = malloc_num_zones;
        v13 = initial_num_zones;
        if (initial_num_zones >= malloc_num_zones)
        {
LABEL_20:
          v5 = 0;
        }

        else
        {
          while (1)
          {
            v5 = *(malloc_zones + v13);
            if (v5[2](v5, a1))
            {
              break;
            }

            if (v12 == ++v13)
            {
              goto LABEL_20;
            }
          }
        }

        atomic_fetch_add(v11, 0xFFFFFFFF);
        if (!v5)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      v10 = 0;
      while (1)
      {
        v5 = *(malloc_zones + v10);
        if (v5[2](v5, a1))
        {
          break;
        }

        if (++v10 >= initial_num_zones)
        {
          goto LABEL_17;
        }
      }

      if (v10 || (has_injected_zone0 & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    v5 = default_zone;
    if (!default_zone)
    {
      goto LABEL_22;
    }

LABEL_28:
    v9 = _malloc_zone_realloc(v5, a1, a2, (v2 >> 2));
    if (!v9)
    {
      goto LABEL_29;
    }

    return v9;
  }

  v6 = default_zone;

  return _malloc_zone_malloc(v6, a2, 1);
}

void _xzm_memalign(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int8x8_t a6)
{
  v7 = a2;
  if (a2 > 0x4000 || a3 > 0x8000)
  {
    _xzm_malloc_large_huge(a1, a3, a2, a4, a5 | 2);
  }

  else
  {
    if (a3 <= a2)
    {
      v8 = a5 | 2;
    }

    else
    {
      a2 *= 2;
      if (2 * v7 < a3 && (a2 = 4 * v7, 4 * v7 <= a3))
      {
        v8 = a5 | 2;
        a2 = a3;
      }

      else
      {
        v8 = a5 | 2;
      }
    }

    xzm_malloc_inline(a1, a2, a4, v8, a6);
  }
}

int malloc_type_posix_memalign(void **memptr, size_t alignment, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size || ((v5 = vcnt_s8(alignment), v5.i16[0] = vaddlv_u8(v5), alignment >= 8) ? (v6 = *(*malloc_zones + 104) >= 0x10u) : (v6 = 0), v6 ? (v7 = v5.u32[0] > 1uLL) : (v7 = 1), v7))
  {

    return _malloc_type_posix_memalign_outlined(memptr, alignment, size, type_id);
  }

  else
  {
    v9 = (*(*malloc_zones + 184))();
    if (v9)
    {
      v10 = v9;
      result = 0;
      *memptr = v10;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

void *__cdecl malloc_type_aligned_alloc(size_t alignment, size_t size, malloc_type_id_t type_id)
{
  if (malloc_logger || (malloc_slowpath & 1) != 0 || malloc_absolute_max_size < size || alignment < 8 || ((v4 = vcnt_s8(alignment), v4.i16[0] = vaddlv_u8(v4), *(*malloc_zones + 104) >= 0x10u) ? (v5 = v4.u32[0] > 1uLL) : (v5 = 1), v5 || ((alignment - 1) & size) != 0))
  {

    return _malloc_type_aligned_alloc_outlined(alignment, size, type_id);
  }

  else
  {
    result = (*(*malloc_zones + 184))(*malloc_zones, alignment);
    if (!result)
    {
      malloc_type_aligned_alloc_cold_1();
      return 0;
    }
  }

  return result;
}

uint64_t _malloc_zone_realloc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 904);
  if (!v8)
  {
    *(StatusReg + 904) = a4;
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

  if (malloc_absolute_max_size < a3)
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    return v10;
  }

  v10 = (*(a1 + 56))(a1, a2, a3);
  if (malloc_logger)
  {
    malloc_logger(14, a1, a2, a3, v10, 0);
  }

  if (malloc_simple_stack_logging != 1)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_18:
    kdebug_trace();
    if (v8)
    {
      return v10;
    }

    goto LABEL_15;
  }

  malloc_report(0x325u, "realloc (%p->%p/%llu): ");
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v8)
  {
LABEL_15:
    *(StatusReg + 904) = 0;
  }

  return v10;
}

uint64_t default_zone_realloc()
{
  v0 = lite_zone;
  if (!lite_zone)
  {
    v0 = *malloc_zones;
  }

  return (*(v0 + 56))();
}

uint64_t _xzm_xzone_malloc_small_freelist(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 86);
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

  _X4 = 0;
  v9 = (*(a1 + 224) + 32 * *(a1 + 210) * v7 + 32 * *(a2 + 80));
  v10 = *v9;
  if ((*v9 & 1) == 0 && (v10 & 0x1FFFFFFFFFFFCLL) != 0)
  {
    if ((a3 & 0x40000000) == 0 || (*(a2 + 87) & 2) == 0)
    {
      v12 = v10 >> 2;
      v13 = (v10 >> 2) & 0x7FFFFFFFFFFFLL;
      v14 = *(v13 + 0xC);
      v15 = v12 & 0x7FFFFFFFC000;
      v16 = *((v12 & 0x7FFFFFFFC000) + 0x28);
      v17 = *v13;
      if ((*v13 & 0x40000000) == 0)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = ((0xAAAAAAAAAAAAC000 * ((v13 - v15 - 2104) >> 4)) & 0x3FFFFFFFC000) + v16;
        while (((v17 >> 22) & 0x3F) == v7 + 1)
        {
          if ((v17 & 0x3FF800) != 0)
          {
            v22 = (v17 + 4192256) & 0x3FF800 | v17 & 0xFFFFFFFFBFC007FFLL;
            v23 = v17 & 0x7FF;
            if (v23 > 0x3FF)
            {
              _X4 = v21 + (*(a2 + 68) - ((v17 >> 11) & 0x7FF)) * *(a2 + 48);
            }

            else
            {
              _X4 = v21 + (v23 << 10);
              if (v14)
              {
                __asm { MSR             TCO, #1 }

                v18 = *_X4;
                v19 = *(_X4 + 8);
                __asm { MSR             TCO, #0 }
              }

              else
              {
                v18 = *_X4;
                v19 = *(_X4 + 8);
              }

              v22 = (v17 + 4192256) & 0x3FF800 | v17 & 0xFFFFF0003FC00000 | v19 & 0x7FF | (((v19 >> 11) & 0x1FFF) << 31);
            }

            v29 = v17;
            atomic_compare_exchange_strong_explicit(v13, &v29, v22, memory_order_relaxed, memory_order_relaxed);
            if (v29 == v17)
            {
              if (v14)
              {
                v57 = *(a2 + 48);
                v30 = memtag_assign_tag(_X4, v57);
                _X4 = v30;
                _X8 = v30 + v57;
                if ((v57 & 0x1FF) != 0)
                {
                  __asm
                  {
                    STG             X4, [X4]
                    STG             X8, [X8,#-0x10]
                  }

                  if (v57 > 0x20)
                  {
                    _X9 = (v30 + 31) & 0xFFFFFFFFFFFFFFE0;
                    _X10 = _X8 & 0xFFFFFFFFFFFFFFE0;
                    __asm
                    {
                      ST2G            X9, [X9]
                      ST2G            X10, [X10,#-0x20]
                    }
                  }

                  v34 = (v30 + 63) & 0xFFFFFFFFFFFFFFC0;
                  v35 = _X8 & 0xFFFFFFFFFFFFFFC0;
                  while (v34 < v35)
                  {
                    __asm { DC              GVA, X9 }

                    v34 += 64;
                  }
                }

                else if (v57 >= 1)
                {
                  v36 = v30;
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

                    v36 += 512;
                  }

                  while (v36 < _X8);
                }
              }

              if (v23 > 0x3FF)
              {
                v37 = 0;
              }

              else
              {
                if (((*(a1 + 320) ^ _X4) & 0xF0FFFFFFFFFFFFFFLL) != v18)
                {
                  goto LABEL_11;
                }

                v37 = v19 != (v19 & 0xFFFFFF | (((v29 >> 31) & 0x1FFF) << 24) & 0xFFFFFFE000FFFFFFLL);
              }

              if (_X4 && !v37)
              {
                if (*(a1 + 249) == 1 && *(a2 + 48) <= 0x100uLL)
                {
                  if (v20)
                  {
                    v38 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 912);
                    if (v38)
                    {
                      v39 = (v38 + 24 * *(a2 + 80));
                      if (v39[28] == -1)
                      {
                        v40 = v39[29] + 1;
                        v39[29] = v40;
                        if (*(a1 + 256) == v40)
                        {
                          v39[28] = -2;
                          v39[31] = v39[24] & 0xFFF;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v41 = v9[2];
                  v42 = (*(a1 + 248) >> 4) & 3;
                  if (HIBYTE(v41) != v42 && (((v41 & 0xFFFFFF00000000) == 0) & ~v20) == 0)
                  {
                    v43 = 0x100000001;
                    if ((v20 & 1) == 0)
                    {
                      v43 = 1;
                    }

                    v44 = atomic_fetch_add_explicit(v9 + 2, v43, memory_order_relaxed) + v43;
                    v45 = HIBYTE(v44);
                    if (HIBYTE(v44) != v42)
                    {
                      v46 = *(a1 + 4 * v45 + 292);
                      if ((HIDWORD(v44) & 0xFFFFFFu) >= v46)
                      {
                        if ((HIDWORD(v44) & 0xFFFFFFu) <= v46)
                        {
                          v48 = ncpuclusters;
                          if (v45)
                          {
                            _CF = 0;
                          }

                          else
                          {
                            _CF = ncpuclusters >= 2;
                          }

                          v50 = !_CF;
                          _ZF = v50 == 0;
                          if (v50)
                          {
                            v52 = 2;
                          }

                          else
                          {
                            v52 = 1;
                          }

                          *(a2 + 86) = v52;
                          v53 = 0x100000000000000;
                          if (!_ZF)
                          {
                            v53 = 0x200000000000000;
                            v48 = logical_ncpus;
                          }

                          if (v48)
                          {
                            for (i = 0; i != v48; ++i)
                            {
                              *(*(a1 + 224) + 32 * i * *(a1 + 210) + 32 * *(a2 + 80) + 16) = v53;
                            }
                          }
                        }
                      }

                      else
                      {
                        v47 = *(a1 + 304);
                        if (v47 <= v44 && v47 >= v44)
                        {
                          v55 = v9[2];
                          do
                          {
                            if (v55 < v44)
                            {
                              break;
                            }

                            if (v45 < HIBYTE(v55))
                            {
                              break;
                            }

                            v56 = v55;
                            atomic_compare_exchange_strong_explicit(v9 + 2, &v56, v44 & 0xFF00000000000000, memory_order_relaxed, memory_order_relaxed);
                            _ZF = v56 == v55;
                            v55 = v56;
                          }

                          while (!_ZF);
                        }
                      }
                    }
                  }
                }

                *_X4 = 0;
                *(_X4 + 8) = 0;
                if ((a3 & 1) == 0 || *(a2 + 48) < 0x401uLL)
                {
                  return _X4;
                }

                return _platform_memset();
              }

              goto LABEL_11;
            }

            v20 = 1;
            v17 = v29;
          }

          else
          {
            v28 = v17;
            atomic_compare_exchange_strong_explicit(v13, &v28, v17 & 0xFFFFFFFFB00007FFLL, memory_order_relaxed, memory_order_relaxed);
            _ZF = v28 == v17;
            v17 = v28;
            if (_ZF)
            {
              break;
            }
          }

          if ((v17 & 0x40000000) != 0)
          {
            break;
          }
        }
      }
    }

    _X4 = 0;
  }

LABEL_11:

  return _xzm_xzone_malloc_freelist_outlined(a1, a2, v7, v9, _X4, a3);
}

uint64_t xzm_chunk_mark_used(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
    v4 = a1;
  }

  v5 = *(v4 + 568);
  v6 = *(a2 + 32) & 0xF;
  if (v6 > 6)
  {
    if (v6 - 7 < 2)
    {
      v7 = *(a2 + 40) << 14;
      goto LABEL_10;
    }

LABEL_15:
    xzm_chunk_mark_free_cold_1(*(a2 + 32) & 0xF);
  }

  if (v6 != 2 && v6 != 5 && v6 != 6)
  {
    goto LABEL_15;
  }

LABEL_10:
  v8 = a2 & 0xFFFFFFFFFFFFC000 | 0x38;
  v9 = -1431655765 * (((a2 & 0x3FFF) - 2104) >> 4);
  v10 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  v11 = *(v8 + 8 * v9);
  v12 = _xzm_reclaim_mark_used(v5);
  if (a3)
  {
    *a3 = v12 != 1;
  }

  result = mach_vm_reclaim_is_reusable();
  if (result)
  {
    *(v8 + 8 * v9) = -1;
  }

  return result;
}

uint64_t _xzm_segment_group_alloc_segment(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t *a4, int a5)
{
  if (a2)
  {
    v6 = (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
  }

  else
  {
    v6 = 0x400000;
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (a5)
  {
    v8 = v7;
  }

  else
  {
    v8 = a2 != 0;
  }

  v9 = *a1;
  if (v9 >= 4)
  {
    xzm_segment_group_alloc_chunk_cold_1(v9);
  }

  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  if (*(v12 + 368) == 1)
  {
    v14 = 16;
    if (((v9 - 1) & 0xFE) == 0)
    {
      v14 = 32769;
    }

    v15 = *(v12 + 376);
    if (v15 < v14 || ((0xCu >> (v9 & 0xF)) & 1) != 0)
    {
      if (v15 < v14)
      {
        goto LABEL_20;
      }
    }

    else if ((*(v12 + 369) & 1) == 0)
    {
      goto LABEL_20;
    }

    v8 |= 4u;
  }

LABEL_20:
  v16 = *(*(v13 + 8) + 409);
  if (!*v13)
  {
    if (*(*(v13 + 8) + 409))
    {
      pages_plat = _xzm_range_group_alloc_anywhere_segment(0, v6, a3, a4, v8);
      goto LABEL_49;
    }

    if ((v8 & 2) != 0)
    {
      v22 = 128;
    }

    else
    {
      v22 = 0;
    }

    v23 = __clz(__rbit64(a3));
    if (v23 <= 0x16)
    {
      LODWORD(v23) = 22;
    }

    if (a3)
    {
      v21 = v23;
    }

    else
    {
      v21 = 22;
    }

    v18 = v8 & 1 | 2;
    v20 = v6;
    v19 = v22 & 0xFFFFF7FF | (((v8 >> 2) & 1) << 11);
LABEL_36:
    pages_plat = mvm_allocate_pages_plat(v20, v21, v19, v18);
LABEL_49:
    v30 = pages_plat;
    goto LABEL_50;
  }

  if ((*(*(v13 + 8) + 409) & 1) == 0)
  {
    if ((v8 & 2) != 0)
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    v18 = v8 & 1 | 2;
    v19 = v17 & 0xFFFFF7FF | (((v8 >> 2) & 1) << 11);
    v20 = v6;
    v21 = 22;
    goto LABEL_36;
  }

  if (*(v13 + 73))
  {
    return 0;
  }

  v25 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v13 + 16), &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v25)
  {
    os_unfair_lock_lock_with_options();
  }

  v27 = *(v13 + 64);
  v28 = v27 >= v6;
  v29 = v27 - v6;
  if (!v28)
  {
    goto LABEL_58;
  }

  v30 = *(v13 + 56);
  v31 = *(v13 + 72);
  if (v30 == *(v13 + 40))
  {
    v32 = *(v13 + 48);
    if (!*(v13 + 72))
    {
      v30 += v32;
      goto LABEL_55;
    }

    v30 -= v32;
    *(v13 + 56) = v30;
  }

  if (!v31)
  {
LABEL_55:
    v33 = v30 + v6;
    goto LABEL_56;
  }

  if (v31 != 1)
  {
    goto LABEL_57;
  }

  v33 = v30 - v6;
  v30 -= v6;
LABEL_56:
  *(v13 + 56) = v33;
LABEL_57:
  *(v13 + 64) = v29;
  if (!v30)
  {
LABEL_58:
    if ((*(v13 + 73) & 1) == 0)
    {
      *(v13 + 73) = 1;
      malloc_report(4u, "Failed to allocate segment from range group - out of space\n");
    }

    v30 = 0;
  }

  v37 = *(StatusReg + 24);
  v38 = v37;
  atomic_compare_exchange_strong_explicit((v13 + 16), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != v37)
  {
    os_unfair_lock_unlock((v13 + 16));
  }

  if (!v30)
  {
    return 0;
  }

  address = v30;
  if ((v8 & 4) != 0)
  {
    v39 = 33579008;
  }

  else
  {
    v39 = 33570816;
  }

  v40 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, v6, 0, v39, 0, 0, 0, 3, 7, 1u);
  if (v40)
  {
    _xzm_segment_group_alloc_segment_cold_2(v40);
  }

LABEL_50:
  if (!v30)
  {
    return 0;
  }

  if (v30 >> 36)
  {
    _xzm_segment_group_alloc_segment_cold_3();
  }

  v34 = xzm_metapool_alloc(*(*(a1 + 3) + 480));
  v35 = 1;
  inited = _xzm_segment_group_init_segment(a1, v34, v30, v6, a2 != 0, 1);
  _xzm_segment_table_allocated_at(*(a1 + 3), v30, v34, a2 == 0);
  if (a2)
  {
    *a4 = inited;
  }

  return v35;
}

mach_vm_address_t mvm_allocate_plat(mach_vm_address_t a1, mach_vm_size_t size, char a3, int a4, int a5, int a6)
{
  v11 = a1;
  if (a1 && (a4 & 1) != 0)
  {
    malloc_zone_error(a5 | 0x40, 0, "Unsupported anywhere allocation at address 0x%lx of size 0x%lx with flags %d\n");
  }

  if ((a5 & 0x1200) != 0)
  {
    malloc_zone_error(a5 | 0x40, 0, "Unsupported unpopulated allocation at address 0x%lx of size 0x%lx with flags %d\n");
  }

  if ((a5 & 0x2000) != 0)
  {
    if (v11 || a6 != 1)
    {
      malloc_zone_error(a5 | 0x40, 0, "Unsupported guarded metadata allocation at address 0x%lx of size 0x%lx with flags %d and label %d\n");
    }

    v11 = malloc_guarded_range_config;
  }

  address = v11;
  if (mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, ~(-1 << a3), (4 * a5) & 0x2000 | (a6 << 24) | a4, 0, 0, 0, 3, 7, 1u))
  {
    return 0;
  }

  else
  {
    return address;
  }
}

uint64_t _xzm_segment_group_init_segment(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  if (a2 >> 36)
  {
    _xzm_segment_group_init_segment_cold_1();
  }

  if (a3 >> 36)
  {
    _xzm_segment_group_init_segment_cold_2();
  }

  if (a4 >> 46)
  {
    _xzm_segment_group_init_segment_cold_3();
  }

  *a2 = a1;
  v9 = a4 >> 14;
  LODWORD(v10) = 256;
  if (a4 >> 14 < 0x100)
  {
    v10 = a4 >> 14;
  }

  *(a2 + 12) = v9;
  *(a2 + 16) = v10;
  *(a2 + 8) = 0;
  *(a2 + 40) = a3;
  *(a2 + 48) = -1;
  *(a2 + 20) = a5;
  if (a5)
  {
    result = _xzm_segment_group_segment_span_mark_allocated(a2, 8, 0, a4 >> 14);
    if (a6)
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    *(result + 32) = *(result + 32) & 0xEF | v12;
  }

  else
  {
    v13 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 4), &v13, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    _xzm_segment_group_segment_span_free(a1, a2, 0, v9, 1, a6);
    return 0;
  }

  return result;
}

uint64_t _xzm_segment_table_allocated_at(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  if (a3 >> 45)
  {
    _xzm_segment_table_allocated_at_cold_1();
  }

  v4 = *(a3 + 40) + (*(a3 + 12) << 14);
  if (a4)
  {
    v5 = 0x80000000;
  }

  else
  {
    v5 = 0;
  }

  if (v4 > a2)
  {
    v6 = (a3 >> 14) & 0x7FFFFFFF | v5;
    do
    {
      v7 = a2 >> 22;
      if (a2 >> 36)
      {
        v7 = 0x4000;
      }

      if (v7 >> 14)
      {
        v8 = 0;
      }

      else
      {
        v8 = (*(result + 488) + 4 * v7);
      }

      atomic_store(v6, v8);
      a2 += 0x400000;
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t __malloc_late_init(uint64_t a1)
{
  pgm_init_config(*(a1 + 24));
  if ((has_injected_zone0 & 1) == 0 && (malloc_sanitizer_enabled & 1) == 0 && pgm_should_enable())
  {
    zone = pgm_create_zone(*malloc_zones);
    malloc_zone_register_while_locked(zone, 1);
  }

  if (*(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  _dlopen = *(a1 + 8);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  _dlsym = *(a1 + 16);
  if (*a1 >= 2uLL)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *v5;
      v7 = *(v5 + 32);
      *&xmmword_1EAC7F7A0 = *(v5 + 16);
      *&off_1EAC7F7B0 = v7;
      msl = v6;
      v8 = *(v5 + 48);
      v9 = *(v5 + 64);
      v10 = *(v5 + 80);
      qword_1EAC7F7F0 = *(v5 + 96);
      xmmword_1EAC7F7D0 = v9;
      unk_1EAC7F7E0 = v10;
      xmmword_1EAC7F7C0 = v8;
    }
  }

  v11 = _NSGetEnviron();
  v12 = *v11;
  result = **v11;
  if (result)
  {
    v14 = v12 + 1;
    while (MEMORY[0x193ACD780]())
    {
      v15 = *v14++;
      result = v15;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    result = _malloc_register_stack_logger(1);
    v16 = xmmword_1EAC7F7C0;
    if (xmmword_1EAC7F7C0)
    {
      v17 = _NSGetEnviron();
      result = v16(*v17);
    }
  }

LABEL_19:
  if (*(&xmmword_1EAC7F7C0 + 1))
  {
    result = (*(&xmmword_1EAC7F7C0 + 1))(result);
  }

  initial_num_zones = malloc_num_zones;
  if (malloc_sanitizer_enabled == 1)
  {

    return sanitizer_reset_environment();
  }

  return result;
}

uint64_t _malloc_type_calloc_outlined(size_t __count, size_t __size, unint64_t a3)
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
    result = j__calloc(__count, __size);
  }

  else
  {
    result = _malloc_zone_calloc(default_zone, __count, __size, 1);
  }

  *(StatusReg + 904) = v4;
  return result;
}

uint64_t _malloc_zone_calloc(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (default_zone == a1 && lite_zone == 0)
  {
    a1 = *malloc_zones;
  }

  if (malloc_slowpath)
  {
    return _malloc_zone_calloc_instrumented_or_legacy(a1, a2, a3, a4);
  }

  if (malloc_logger)
  {
    return _malloc_zone_calloc_instrumented_or_legacy(a1, a2, a3, a4);
  }

  v6 = *(a1 + 104);
  if (v6 <= 0xC)
  {
    return _malloc_zone_calloc_instrumented_or_legacy(a1, a2, a3, a4);
  }

  if (v6 < 0x10)
  {
    return (*(a1 + 32))();
  }

  return (*(a1 + 168))(a1, a2, a3, (v4 >> 2));
}

void internal_check()
{
  v0 = malloc_check_counter++;
  if (v0 >= malloc_check_start)
  {
    if (malloc_zone_check(0))
    {
      v1 = MEMORY[0x1E69E9AC8];
      if (!qword_1EAC818E0)
      {
        vm_allocate(*MEMORY[0x1E69E9A60], &qword_1EAC818E0, *MEMORY[0x1E69E9AC8], 1);
      }

      v2 = *v1 >> 3;
      thread_stack_pcs();
    }

    malloc_check_start += malloc_check_each;
  }
}

void ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(unsigned int a1, uint64_t a2)
{
  if (malloc_has_sec_transition != 1 || !memtag_handle_mismatch(a2))
  {
    malloc_report(a1, "*** error for object %p: pointer being freed was not allocated\n");
  }
}

void xzm_segment_group_free_chunk(unsigned __int8 *a1, unint64_t a2, int a3, char a4)
{
  v7 = *(a2 + 32);
  v8 = v7 & 0xF;
  if (v8 <= 5)
  {
    if (v8 == 2)
    {
      v20 = 0x4000;
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_128;
      }

      v20 = 0x10000;
    }
  }

  else
  {
    switch(v8)
    {
      case 6u:
        v20 = 0x20000;
        break;
      case 7u:
        v20 = *(a2 + 40) << 14;
        break;
      case 8u:
        v9 = a2 & 0xFFFFFFFFFFFFC000;
        if (!*(a1 + 240) || (a3 & 1) != 0 || (v10 = *((a2 & 0xFFFFFFFFFFFFC000) + 0xC), v10 < 0x81) || v10 > *(a1 + 121))
        {
          v53 = a2 & 0xFFFFFFFFFFFFC000;

          _xzm_segment_group_segment_deallocate(a1, v53, 1);
          return;
        }

        v11 = *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
        v12 = v11 + (v10 << 14);
        if (v11 < v12)
        {
          v13 = *(a1 + 3);
          do
          {
            v14 = v11 >> 22;
            if (v11 >> 36)
            {
              v14 = 0x4000;
            }

            if (v14 >> 14)
            {
              v15 = 0;
            }

            else
            {
              v15 = (*(v13 + 488) + 4 * v14);
            }

            *v15 = 0;
            v11 += 0x400000;
          }

          while (v11 < v12);
        }

        v16 = *a1;
        if (v16 >= 4)
        {
          xzm_segment_group_alloc_chunk_cold_1(v16);
        }

        v17 = *(a1 + 3);
        if (*(v17 + 368) != 1)
        {
          goto LABEL_95;
        }

        v18 = 16;
        if (((v16 - 1) & 0xFE) == 0)
        {
          v18 = 32769;
        }

        v19 = *(v17 + 376);
        if (v19 < v18 || ((0xCu >> (v16 & 0xF)) & 1) != 0)
        {
          if (v19 >= v18)
          {
            goto LABEL_105;
          }
        }

        else if (*(v17 + 369))
        {
LABEL_105:
          v74 = *(a2 + 32) & 0xF;
          if (v74 > 6)
          {
            if (v74 - 7 < 2)
            {
              v75 = *(a2 + 40) << 14;
              goto LABEL_120;
            }
          }

          else
          {
            switch(v74)
            {
              case 2u:
                v75 = 0x4000;
                goto LABEL_120;
              case 5u:
                v75 = 0x10000;
                goto LABEL_120;
              case 6u:
                v75 = 0x20000;
LABEL_120:
                _X11 = (((0xAAAAAAAAAAAAC000 * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2104) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28)) & 0xF0FFFFFFFFFFFFFFLL;
                _X10 = _X11 + v75;
                __asm
                {
                  STG             X11, [X11]
                  STG             X10, [X10,#-0x10]
                }

                if (v75)
                {
                  _X8 = (_X11 + 31) & 0xF1FFFFFFFFFFFFE0;
                  _X12 = _X10 & 0xFFFFFFFFFFFFFFE0;
                  __asm
                  {
                    ST2G            X8, [X8]
                    ST2G            X12, [X12,#-0x20]
                  }
                }

                for (i = (_X11 + 63) & 0xF1FFFFFFFFFFFFC0; i < (_X10 & 0xFFFFFFFFFFFFFFC0); i += 64)
                {
                  __asm { DC              GVA, X8 }
                }

                goto LABEL_95;
            }
          }

          xzm_chunk_mark_free_cold_1(v74);
        }

LABEL_95:
        v63 = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        atomic_compare_exchange_strong_explicit(a1 + 122, &v63, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v63)
        {
          os_unfair_lock_lock_with_options();
        }

        v65 = *(a1 + 241);
        v66 = *(a1 + 240);
        if (v65 != v66)
        {
          goto LABEL_133;
        }

        v67 = *(a1 + 58);
        if (!v67)
        {
          goto LABEL_134;
        }

        v68 = *(*(a1 + 3) + 568);
        do
        {
          v69 = v67[3];
          v70 = v67[6];
          if (_xzm_reclaim_is_reusable(v68))
          {
            break;
          }

          --*(a1 + 241);
          v71 = v67[3];
          v72 = v67[4];
          v73 = (v71 + 32);
          if (!v71)
          {
            v73 = a1 + 472;
          }

          *v73 = v72;
          *v72 = v71;
          xzm_metapool_free(*(*(a1 + 3) + 480), v67);
          v67 = v69;
        }

        while (v69);
        while (1)
        {
          v65 = *(a1 + 241);
          v66 = *(a1 + 240);
LABEL_133:
          if (v65 != v66)
          {
            break;
          }

LABEL_134:
          v85 = **(*(a1 + 59) + 8);
          if (_xzm_segment_group_cache_mark_used(a1, v85))
          {
            v86 = *(StatusReg + 24);
            v87 = v86;
            atomic_compare_exchange_strong_explicit(a1 + 122, &v87, 0, memory_order_release, memory_order_relaxed);
            if (v87 != v86)
            {
              os_unfair_lock_unlock(a1 + 122);
            }

            mvm_deallocate_plat(*(v85 + 40), *(v85 + 12) << 14, 0);
            xzm_metapool_free(*(*(a1 + 3) + 480), v85);
            v88 = 0;
            atomic_compare_exchange_strong_explicit(a1 + 122, &v88, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v88)
            {
              os_unfair_lock_lock_with_options();
            }
          }
        }

        _xzm_segment_group_cache_mark_free(a1, v9);
        v89 = *(StatusReg + 24);
        v90 = v89;
        atomic_compare_exchange_strong_explicit(a1 + 122, &v90, 0, memory_order_release, memory_order_relaxed);
        if (v90 != v89)
        {
          v52 = (a1 + 488);
          goto LABEL_69;
        }

        return;
      default:
LABEL_128:
        xzm_chunk_mark_free_cold_1(v7 & 0xF);
    }
  }

  v21 = *a1;
  if (v21 >= 4)
  {
    xzm_segment_group_alloc_chunk_cold_1(v21);
  }

  v22 = (a2 & 0xFFFFFFFFFFFFC000);
  v23 = a2 & 0xFFFFFFFFFFFFC000 | 0x838;
  v24 = ((0xAAAAAAAAAAAAC000 * ((a2 - v23) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28);
  v25 = *(a1 + 3);
  if (*(v25 + 368) != 1)
  {
    goto LABEL_38;
  }

  v26 = 16;
  if (((v21 - 1) & 0xFE) == 0)
  {
    v26 = 32769;
  }

  v27 = *(v25 + 376);
  if (v27 < v26 || ((0xCu >> (v21 & 0xF)) & 1) != 0)
  {
    if (v27 >= v26)
    {
      goto LABEL_55;
    }

LABEL_38:
    v28 = 0;
    if (!a3)
    {
      goto LABEL_39;
    }

LABEL_61:
    _xzm_segment_group_overwrite_chunk(((0xAAAAAAAAAAAAC000 * ((a2 - v23) >> 4)) & 0x3FFFFFFFC000) + *((a2 & 0xFFFFFFFFFFFFC000) + 0x28), v20, v28);
    goto LABEL_39;
  }

  if ((*(v25 + 369) & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_55:
  _X10 = v24 & 0xF0FFFFFFFFFFFFFFLL;
  _X9 = (v24 & 0xF0FFFFFFFFFFFFFFLL) + v20;
  __asm
  {
    STG             X10, [X10]
    STG             X9, [X9,#-0x10]
  }

  if (v20)
  {
    _X11 = (_X10 + 31) & 0xF1FFFFFFFFFFFFE0;
    _X12 = _X9 & 0xFFFFFFFFFFFFFFE0;
    __asm
    {
      ST2G            X11, [X11]
      ST2G            X12, [X12,#-0x20]
    }
  }

  v47 = (_X10 + 63) & 0xF1FFFFFFFFFFFFC0;
  v48 = _X9 & 0xFFFFFFFFFFFFFFC0;
  while (v47 < v48)
  {
    __asm { DC              GVA, X8 }

    v47 += 64;
  }

  v28 = 4;
  if (a3)
  {
    goto LABEL_61;
  }

LABEL_39:
  v29 = *(*(a1 + 3) + 409);
  if (v8 == 7 && (v29 & 2) != 0)
  {
    _xzm_segment_group_overwrite_chunk(v24, v20, v28);
  }

  else
  {
    v30 = *a1;
    if (v30 >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(v30);
    }

    v31 = a4 ^ 1;
    if (v8 != 5)
    {
      v31 = 0;
    }

    if ((v31 & 1) == 0 && ((0x4101004u >> (8 * v30)) & v29) == 0)
    {
      xzm_segment_group_segment_madvise_chunk(v30, a2);
    }
  }

  v32 = 0;
  v33 = (a1 + 4);
  v34 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(a1 + 1, &v32, *(v34 + 24), memory_order_acquire, memory_order_acquire);
  if (v32)
  {
    os_unfair_lock_lock_with_options();
  }

  v35 = _xzm_segment_group_segment_span_free_coalesce(a1, a2 & 0xFFFFFFFFFFFFC000, a2, 0);
  v36 = *((a2 & 0xFFFFFFFFFFFFC000) + 8) - 1;
  *((a2 & 0xFFFFFFFFFFFFC000) + 8) = v36;
  v37 = *(*(a1 + 3) + 409);
  if ((v37 & 0x20) == 0)
  {
LABEL_63:
    v49 = *a1;
    if (v49 >= 4)
    {
      xzm_segment_group_alloc_chunk_cold_1(v49);
    }

    if (((0x4101004u >> (8 * v49)) & v37) != 0)
    {
      _xzm_segment_group_span_mark_free(a1, v35);
    }

    v50 = *(v34 + 24);
    v51 = v50;
    atomic_compare_exchange_strong_explicit(v33, &v51, 0, memory_order_release, memory_order_relaxed);
    if (v51 != v50)
    {
      v52 = (a1 + 4);
LABEL_69:

      os_unfair_lock_unlock(v52);
      return;
    }

    return;
  }

  v38 = **v22;
  if (v38 >= 2)
  {
    if (v38 - 2 >= 2)
    {
      xzm_segment_group_alloc_chunk_cold_1(v38);
    }

    goto LABEL_63;
  }

  if (v36)
  {
    goto LABEL_63;
  }

  v54 = *a1;
  if (v54 >= 4)
  {
    xzm_segment_group_alloc_chunk_cold_1(v54);
  }

  if (((0x4101004u >> (8 * v54)) & v37) != 0)
  {
    if (!_xzm_segment_group_span_mark_used(a1, a2 & 0xFFFFFFFFFFFFC000 | 0x838))
    {
LABEL_85:
      v59 = a2 & 0xFFFFFFFFFFFFC000 | 0x838;
      do
      {
        if (v22[-1431655765 * ((v59 - v23) >> 4) + 7] == -1)
        {
          _xzm_segment_group_span_mark_free(a1, v59);
        }

        if ((*(v59 + 32) & 0xF) == 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = *(v59 + 40);
        }

        v59 += 48 * v60;
      }

      while (v59 < v23 + 48 * *(v22 + 4));
      v61 = *(v34 + 24);
      v62 = v61;
      atomic_compare_exchange_strong_explicit(v33, &v62, 0, memory_order_release, memory_order_relaxed);
      if (v62 != v61)
      {
        os_unfair_lock_unlock(a1 + 1);
      }

      return;
    }

    v55 = a2 & 0xFFFFFFFFFFFFC000 | 0x838;
    while (1)
    {
      v56 = *(v55 + 32) & 0xF;
      if (v56 != 1)
      {
        v56 = *(v55 + 40);
      }

      if (v56 >= *((a2 & 0xFFFFFFFFFFFFC000) + 0xC))
      {
        break;
      }

      v91 = 0;
      v58 = *(v55 + 16);
      v57 = *(v55 + 24);
      if (v58)
      {
        *(v58 + 24) = v57;
        v58 = *(v55 + 16);
      }

      *v57 = v58;
      v55 = _xzm_segment_group_segment_span_free_coalesce(a1, a2 & 0xFFFFFFFFFFFFC000, v55, &v91);
      if ((v91 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    v23 = v55;
  }

  v77 = *(v23 + 16);
  v76 = *(v23 + 24);
  if (v77)
  {
    *(v77 + 24) = v76;
    v77 = *(v23 + 16);
  }

  *v76 = v77;
  v78 = *(v34 + 24);
  v79 = v78;
  atomic_compare_exchange_strong_explicit(v33, &v79, 0, memory_order_release, memory_order_relaxed);
  if (v79 != v78)
  {
    os_unfair_lock_unlock(a1 + 1);
  }

  _xzm_segment_group_segment_deallocate(a1, a2 & 0xFFFFFFFFFFFFC000, 1);
}

uint64_t *_xzm_thread_cache_create_and_malloc(uint64_t a1, uint64_t a2, char a3)
{
  v6 = xzm_metapool_alloc(*(a1 + 480) + 192);
  v7 = pthread_self();
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = a1;
  *(v6 + 3) = v7;
  *(v6 + 4) = 0;
  v8 = mach_absolute_time();
  if (*(a1 + 212))
  {
    v9 = 0;
    v10 = v6 + 60;
    do
    {
      *(v10 - 20) = 0;
      *(v10 - 12) = v8;
      *(v10 - 4) = 0xFFFFLL;
      ++v9;
      v10 += 24;
    }

    while (v9 < *(a1 + 212));
  }

  v11 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 552), &v11, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    os_unfair_lock_lock_with_options();
  }

  v13 = (a1 + 560);
  v14 = *(a1 + 560);
  *v6 = v14;
  if (v14)
  {
    *(v14 + 8) = v6;
  }

  *v13 = v6;
  *(v6 + 1) = v13;
  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit((a1 + 552), &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock((a1 + 552));
  }

  *(StatusReg + 912) = v6;

  return _xzm_xzone_malloc_tiny_or_early(a1, a2, a3);
}

uint64_t pgm_init_config(int a1)
{
  if (a1)
  {
    g_env_0 = 1;
  }

  if (getenv("MallocProbGuard"))
  {
    g_env_1 = 1;
    v1 = getenv("MallocProbGuard");
    if (v1)
    {
      v2 = *v1 == 49;
    }

    else
    {
      v2 = 0;
    }

    g_env_2 = v2;
  }

  result = getenv("__TRIFactors");
  if (result)
  {
    result = _platform_strstr();
    if (result)
    {
      g_env_3 = 1;
    }
  }

  return result;
}

void xzm_metapool_free(os_unfair_lock_t lock, void *a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(lock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = a2;
  if (*&lock[14]._os_unfair_lock_opaque)
  {
    v6 = xzm_metapool_alloc();
    if (*&lock[14]._os_unfair_lock_opaque)
    {
      os_unfair_lock_opaque = lock[5]._os_unfair_lock_opaque;
      if (*MEMORY[0x1E69E9AC8] <= os_unfair_lock_opaque)
      {
        mvm_madvise(a2, os_unfair_lock_opaque, 7);
      }
    }
  }

  *v6 = *&lock[8]._os_unfair_lock_opaque;
  v6[1] = a2;
  *&lock[8]._os_unfair_lock_opaque = v6;
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(lock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {

    os_unfair_lock_unlock(lock);
  }
}

uint64_t pgm_should_enable()
{
  if (g_env_1 != 1)
  {
    if (_os_feature_enabled_simple_impl())
    {
      if (_os_feature_enabled_simple_impl() & 1) != 0 || (g_env_3)
      {
        v0 = 1;
        return v0 & 1;
      }

      if ((malloc_has_sec_transition & 1) == 0)
      {
        if (g_env_0)
        {
          v1 = 250;
          goto LABEL_12;
        }

        if (_malloc_is_platform_binary())
        {
          v1 = 1000;
LABEL_12:
          if (!arc4random_uniform(v1))
          {
            v0 = main_image_has_section("__DATA", "__pgm_opt_out") ^ 1;
            return v0 & 1;
          }
        }
      }
    }

    v0 = 0;
    return v0 & 1;
  }

  v0 = g_env_2;
  return v0 & 1;
}

void _xzm_free_large_huge(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 344);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((a1 + 344), &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  *(a2 + 34) = 0;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v8)
  {
    *(v8 + 24) = v7;
    v8 = *(a2 + 16);
  }

  *v7 = v8;
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v5, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(v5);
  }

  v11 = *(a2 & 0xFFFFFFFFFFFFC000);
  v12 = (*(a1 + 360) >> 7) & 1;

  xzm_segment_group_free_chunk(v11, a2, v12, 0);
}

uint64_t _malloc_is_platform_binary()
{
  getpid();
  if (csops())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _xzm_segment_group_segment_slice_split(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v7 = *(a3 + 40) - a4;
  if (a6)
  {
    v8 = a3 + 48 * v7;
    *(v8 + 40) = a4;
    v9 = *(v8 + 32) & 0xF0 | 3;
    *(v8 + 32) = v9;
    *(v8 + 32) = v9 & 0xEF | *(a3 + 32) & 0x10;
    v10 = -1431655765 * ((a3 - a2 - 2104) >> 4);
  }

  else
  {
    v10 = a4 - 1431655765 * ((a3 - a2 - 2104) >> 4);
    v8 = a3;
  }

  _xzm_segment_group_segment_span_free(a1, a2, v10, v7, a5 ^ 1, (*(a3 + 32) >> 4) & 1);
  return v8;
}

unint64_t _xzm_segment_group_segment_span_free_coalesce(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = *(a3 + 32);
  v6 = v5 & 0xF;
  if (v6 > 8)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_4(v6);
  }

  v10 = 1;
  if (((1 << v6) & 0x1B) == 0)
  {
    if (((1 << v6) & 0x1E0) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v5 & 0xD) != 1)
  {
    _xzm_segment_group_segment_span_free_coalesce_cold_1();
  }

  if (v6 != 1)
  {
LABEL_4:
    v10 = *(a3 + 40);
  }

LABEL_5:
  if (a4)
  {
    *a4 = 1;
    v5 = *(a3 + 32);
  }

  *(a3 + 32) = v5 & 0xF0;
  v11 = a3 + 48 * v10;
  v12 = a2 + 2104;
  if (v11 < a2 + 2104 + 48 * *(a2 + 16))
  {
    v13 = *(v11 + 32);
    if ((v13 & 0xD) == 1)
    {
      v14 = *a1;
      if (v14 >= 4)
      {
        xzm_segment_group_alloc_chunk_cold_1(v14);
      }

      if (((*(*(a1 + 3) + 409) << (8 * v14)) & 0x4101004) == 0)
      {
        goto LABEL_13;
      }

      if (_xzm_segment_group_span_mark_used(a1, a3 + 48 * v10))
      {
        v13 = *(v11 + 32);
LABEL_13:
        v15 = v13 & 0xF;
        if (v15 != 1)
        {
          v15 = *(v11 + 40);
        }

        v10 += v15;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17)
        {
          *(v17 + 24) = v16;
          v17 = *(v11 + 16);
        }

        *v16 = v17;
        goto LABEL_23;
      }

      if (a4)
      {
        *a4 = 0;
      }
    }
  }

LABEL_23:
  if (v12 >= a3)
  {
LABEL_37:
    v18 = a3;
    goto LABEL_38;
  }

  v18 = a3 - 48;
  if ((*(a3 - 16) & 0xF) == 4)
  {
    v25 = v18 - *(a3 - 12);
    v26 = *(v25 + 32) & 0xF;
    if (v26 <= 9)
    {
      v27 = 1 << v26;
      if ((v27 & 0x3E8) != 0)
      {
        if (v25 + 48 * *(v25 + 40) <= v18)
        {
          goto LABEL_25;
        }

LABEL_45:
        v18 -= *(a3 - 12);
        goto LABEL_25;
      }

      if ((v27 & 6) != 0)
      {
        *(a3 - 12);
        if (v18 == v25)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_25:
  v19 = *(v18 + 32);
  if ((v19 & 0xD) != 1)
  {
    goto LABEL_37;
  }

  v20 = *a1;
  if (v20 >= 4)
  {
    xzm_segment_group_alloc_chunk_cold_1(v20);
  }

  if (((*(*(a1 + 3) + 409) << (8 * v20)) & 0x4101004) == 0)
  {
    goto LABEL_30;
  }

  if (!_xzm_segment_group_span_mark_used(a1, v18))
  {
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_37;
  }

  v19 = *(v18 + 32);
LABEL_30:
  v21 = v19 & 0xF;
  if (v21 != 1)
  {
    v21 = *(v18 + 40);
  }

  v10 += v21;
  v23 = *(v18 + 16);
  v22 = *(v18 + 24);
  if (v23)
  {
    *(v23 + 24) = v22;
    v23 = *(v18 + 16);
  }

  *v22 = v23;
LABEL_38:
  _xzm_segment_group_segment_span_free(a1, a2, -1431655765 * ((v18 - v12) >> 4), v10, 1, 0);
  return v18;
}

void xzm_malloc_zone_malloc_type_malloc_with_options(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, unint64_t a5, int8x8_t a6)
{
  v7 = a4 & 1 | (((a4 >> 1) & 1) << 30);
  if (a2 < 9)
  {
    if (a3 <= 0x8000)
    {
      if (*(a1 + 240))
      {
        v8 = *(a1 + 240);
      }

      else
      {
        v8 = a1;
      }

      v9 = __clz(a3 - 1);
      v10 = (((a3 - 1) >> (61 - v9)) & 3) - 4 * v9 + 488;
      if (a3 <= 0x80)
      {
        v10 = (__PAIR128__(a3 >> 4, a3 & 0xF) - 1) >> 64;
      }

      if (!a3)
      {
        LOBYTE(v10) = 0;
      }

      v11 = v10;
      v12 = *(v8[56] + v10);
      if (HIWORD(a5) == 256)
      {
        v13 = 0;
      }

      else if ((a5 & 0xC0000000000) == 0x40000000000)
      {
        v13 = 1;
      }

      else
      {
        v14 = *(v8[55] + v11);
        if ((v14 & 0xFE) == 2)
        {
          LOBYTE(v15) = 0;
        }

        else
        {
          if (!a5)
          {
            LODWORD(a5) = dword_1ED40432C;
          }

          v15 = v8[50] + a5 * v8[49];
          if (v14 == 6)
          {
            v15 = HIDWORD(v15) & 3;
          }

          else if (v14 == 5)
          {
            LODWORD(v15) = HIDWORD(v15) % 3;
          }

          else
          {
            v15 = HIDWORD(v15) & 1;
          }
        }

        v13 = v15 + 2;
      }

      _xzm_xzone_malloc(a1, a3, (v13 + v12), a4 & 1 | (((a4 >> 1) & 1) << 30), a6);
    }

    else
    {
      _xzm_malloc_large_huge(a1, a3, 0, a5, v7);
    }
  }

  else
  {
    _xzm_memalign(a1, a2, a3, a5, v7, a6);
  }
}

void __malloc_init(uint64_t a1)
{
  __endptr[32] = *MEMORY[0x1E69E9840];
  bzero(v140, 0x400uLL);
  if (getpid() == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = _os_feature_enabled_simple_impl() ^ 1;
  }

  v138 = 1023;
  if (MEMORY[0xFFFFF4084] && (v2 & 1) == 0 && !sysctlbyname("kern.bootargs", v140, &v138, 0, 0) && v138)
  {
    v140[v138 + 1] = 0;
  }

  v3 = *MEMORY[0x1E69E9AB0];
  if (*MEMORY[0x1E69E9AB0] <= *MEMORY[0x1E69E9AC8])
  {
    v3 = *MEMORY[0x1E69E9AC8];
  }

  malloc_absolute_max_size = ~(2 * v3);
  v4 = *_NSGetEnviron();
  v5 = _malloc_allow_internal_security_policy();
  if (malloc_internal_security_policy != v5)
  {
    malloc_internal_security_policy = v5;
  }

  if (getpid() == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = _simple_getenv();
    if (v7 && (strtoull(v7, 0, 0) & 0xF) != 0)
    {
      v6 = 18;
    }

    else
    {
      v8 = &dword_1E7260FE8;
      v9 = 57;
      v10 = getprogname();
      do
      {
        if (!MEMORY[0x193ACD740](v10, *(v8 - 1)))
        {
          v6 = *v8;
          goto LABEL_24;
        }

        v8 += 4;
        --v9;
      }

      while (v9);
      if ((os_security_config_get() & 1) == 0)
      {
        goto LABEL_25;
      }

      v6 = 34;
    }
  }

LABEL_24:
  malloc_process_identity = v6;
LABEL_25:
  v11 = _os_feature_enabled_simple_impl();
  if (((v11 ^ (malloc_zero_policy != 0)) & 1) == 0)
  {
    malloc_zero_policy = v11 ^ 1;
  }

  v12 = 1;
  if ((malloc_process_identity - 1) >= 0x22)
  {
    if (malloc_process_identity > 35)
    {
      if (malloc_process_identity == 36)
      {
        if (malloc_internal_security_policy == 1)
        {
          goto LABEL_181;
        }
      }

      else if (malloc_process_identity == 37)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!malloc_process_identity)
      {
        if (malloc_internal_security_policy != 1)
        {
          goto LABEL_28;
        }

        goto LABEL_181;
      }

      if (malloc_process_identity == 35 && malloc_internal_security_policy == 1)
      {
LABEL_181:
        v12 = _os_feature_enabled_simple_impl();
        goto LABEL_28;
      }
    }

    v12 = 0;
  }

LABEL_28:
  if (malloc_xzone_enabled != v12)
  {
    malloc_xzone_enabled = v12;
  }

  v137 = a1;
  if (a1 && *a1)
  {
    v13 = 0;
    do
    {
      if (_platform_strstr() == *a1)
      {
        if (_platform_strchr())
        {
          v16 = 0;
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = v16;
            _platform_strlcpy();
            v20 = _platform_strchr();
            if (v20)
            {
              *v20 = 0;
            }

            *(&malloc_entropy + v17) = strtoull_l(__endptr, 0, 0, 0);
            v21 = v18 & (_platform_strchr() != 0);
            v16 = 1;
            v17 = 1;
            v18 = 0;
          }

          while ((v21 & 1) != 0);
          v22 = strlen(*a1);
          bzero(*a1, v22);
          if (v19)
          {
            _malloc_entropy_initialized = 1;
          }
        }

        else
        {
          v23 = strlen(*a1);
          bzero(*a1, v23);
        }
      }

      v14 = *a1;
      if (_platform_strstr() == *a1)
      {
        v13 = *a1;
      }

      v15 = *(a1 + 8);
      a1 += 8;
    }

    while (v15);
  }

  else
  {
    v13 = 0;
  }

  if ((_malloc_entropy_initialized & 1) == 0)
  {
    getentropy(&malloc_entropy, 0x10uLL);
    _malloc_entropy_initialized = 1;
  }

  if (v13)
  {
    v24 = _platform_strchr();
    if (v24)
    {
      if (strtoull_l((v24 + 1), 0, 16, 0) == 1)
      {
        magazine_medium_enabled = 0;
      }
    }
  }

  v25 = malloc_common_value_for_key_copy(v140, "malloc_max_magazines", __endptr, 0x100uLL);
  if (v25)
  {
    v139 = 0;
    v26 = malloc_common_convert_to_long(v25, &v139);
    if (*v139 || v26 < 0)
    {
      malloc_report(3u, "malloc_max_magazines must be positive - ignored.\n");
    }

    else
    {
      max_magazines = v26;
    }
  }

  v27 = malloc_common_value_for_key_copy(v140, "malloc_large_expanded_cache_threshold", __endptr, 0x100uLL);
  if (v27)
  {
    v139 = 0;
    v28 = malloc_common_convert_to_long(v27, &v139);
    if (*v139 || v28 < 0)
    {
      malloc_report(3u, "malloc_large_expanded_cache_threshold must be positive - ignored.\n");
    }

    else
    {
      magazine_large_expanded_cache_threshold = v28;
    }
  }

  v29 = malloc_common_value_for_key_copy(v140, "malloc_zero_on_free_enabled", __endptr, 0x100uLL);
  if (v29)
  {
    v139 = 0;
    v30 = malloc_common_convert_to_long(v29, &v139);
    if (*v139 || v30 > 1)
    {
      malloc_report(3u, "malloc_zero_on_free_enabled must be 0 or 1 - ignored.\n");
    }

    else
    {
      malloc_zero_policy = v30 ^ 1;
    }
  }

  v31 = malloc_common_value_for_key_copy(v140, "malloc_zero_on_free_sample_period", __endptr, 0x100uLL);
  if (v31)
  {
    v139 = 0;
    v32 = malloc_common_convert_to_long(v31, &v139);
    if (*v139 || v32 < 0)
    {
      malloc_report(3u, "malloc_zero_on_free_sample_period must be positive - ignored.\n");
    }

    else
    {
      malloc_zero_on_free_sample_period = v32;
    }
  }

  v33 = malloc_common_value_for_key_copy(v140, "malloc_secure_allocator", __endptr, 0x100uLL);
  if (v33)
  {
    v139 = 0;
    v34 = malloc_common_convert_to_long(v33, &v139);
    if (*v139 || v34 > 1)
    {
      malloc_report(3u, "malloc_secure_allocator must be 0 or 1 - ignored.\n");
    }

    else
    {
      malloc_xzone_enabled = v34;
    }
  }

  mvm_aslr_init();
  j__malloc_default_zone();
  phys_ncpus = MEMORY[0xFFFFFC035];
  v35 = MEMORY[0xFFFFFC036];
  logical_ncpus = MEMORY[0xFFFFFC036];
  ncpuclusters = MEMORY[0xFFFFFC02F];
  v36 = MEMORY[0xFFFFFC036] / MEMORY[0xFFFFFC035];
  if (MEMORY[0xFFFFFC036] % MEMORY[0xFFFFFC035])
  {
    __malloc_init_cold_1();
  }

  switch(v36)
  {
    case 1u:
      v37 = 0;
      break;
    case 4u:
      v37 = 2;
      break;
    case 2u:
      v37 = 1;
      break;
    default:
      __malloc_init_cold_2();
  }

  hyper_shift = v37;
  if (max_magazines >= MEMORY[0xFFFFFC036])
  {
    v38 = MEMORY[0xFFFFFC036];
  }

  else
  {
    v38 = max_magazines;
  }

  if (max_magazines)
  {
    v39 = v38;
  }

  else
  {
    v39 = MEMORY[0xFFFFFC036];
  }

  max_magazines = v39;
  if (max_medium_magazines < MEMORY[0xFFFFFC036])
  {
    v35 = max_medium_magazines;
  }

  if (!max_medium_magazines)
  {
    v35 = v39;
  }

  max_medium_magazines = v35;
  _malloc_detect_interposition();
  v40 = _simple_getenv();
  if (!v40 || (v41 = v40, __endptr[0] = 0, v42 = malloc_common_convert_to_long(v40, __endptr), __endptr[0] == v41) || *__endptr[0] || v42 >= 2)
  {
    malloc_has_sec_transition = 0;
  }

  else
  {
    malloc_has_sec_transition = v42;
    if (v42)
    {
      malloc_xzone_enabled = 1;
      malloc_xzone_nano_override = 2;
      malloc_sec_transition_early_malloc_support = 1;
      v43 = _simple_getenv();
      if (v43)
      {
        v44 = v43;
        __endptr[0] = 0;
        v45 = strtoul(v43, __endptr, 0);
        if (*__endptr[0])
        {
          v46 = 1;
        }

        else
        {
          v46 = __endptr[0] == v44;
        }

        if (v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v45;
        }
      }

      else
      {
        v47 = 0;
      }

      malloc_sec_transition_policy = v47;
    }
  }

  v48 = *_NSGetEnviron();
  malloc_debug_flags = 256;
  v49 = getprogname();
  if (!MEMORY[0x193ACD740](v49, "Sibelius") && (dyld_program_sdk_at_least() & 1) == 0)
  {
    malloc_zero_policy = 1;
  }

  v50 = getprogname();
  if (!MEMORY[0x193ACD740](v50, "JumpJump-mobile") && (dyld_program_sdk_at_least() & 1) == 0)
  {
    malloc_xzone_enabled = 0;
  }

  v51 = getprogname();
  if (!MEMORY[0x193ACD740](v51, "LetsGoClient") || (v52 = getprogname(), !MEMORY[0x193ACD740](v52, "PESmobile")) || (v53 = getprogname(), !MEMORY[0x193ACD740](v53, "SpeedGame")) || (v54 = getprogname(), !MEMORY[0x193ACD740](v54, "DeltaForceClient")) || (v55 = getprogname(), !MEMORY[0x193ACD740](v55, "MBS_PROD")) || (v56 = getprogname(), !MEMORY[0x193ACD740](v56, "CitiAuthenticator")) || (v57 = getprogname(), !MEMORY[0x193ACD740](v57, "Banco Galicia")))
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      malloc_nano_on_xzone_override = 2;
    }
  }

  v58 = *v48;
  if (!*v48)
  {
LABEL_135:
    dyld_process_is_restricted();
    malloc_print_configure();
    v61 = 0x1ED404000;
    goto LABEL_300;
  }

  v59 = v48 + 1;
  while (MEMORY[0x193ACD780](v58, "Malloc", 6) && MEMORY[0x193ACD780](v58, "_Malloc", 6))
  {
    v60 = *v59++;
    v58 = v60;
    if (!v60)
    {
      goto LABEL_135;
    }
  }

  v61 = 0x1ED404000uLL;
  if (!issetugid())
  {
    dyld_process_is_restricted();
    malloc_print_configure();
    v62 = getenv("MallocGuardEdges");
    if (!v62)
    {
      goto LABEL_148;
    }

    if (MEMORY[0x193ACD740](v62, "all"))
    {
      malloc_debug_flags = malloc_debug_flags & 0xFFFFFFF8 | 3;
      malloc_report(5u, "adding guard pages for large allocator blocks\n");
      if (getenv("MallocDoNotProtectPrelude"))
      {
        malloc_debug_flags |= 8u;
        malloc_report(5u, "... but not protecting prelude guard page\n");
      }

      if (!getenv("MallocDoNotProtectPostlude"))
      {
LABEL_148:
        if (getenv("MallocScribble"))
        {
          malloc_debug_flags |= 0x20u;
          malloc_report(5u, "enabling scribbling to detect mods to free blocks\n");
        }

        if (getenv("MallocErrorAbort"))
        {
          malloc_debug_flags |= 0x40u;
          malloc_report(5u, "enabling abort() on bad malloc or free\n");
        }

        if (getenv("MallocTracing"))
        {
          malloc_tracing_enabled = 1;
        }

        if (getenv("MallocSimpleStackLogging"))
        {
          malloc_simple_stack_logging = 1;
        }

        if (getenv("MallocReportConfig"))
        {
          malloc_report_config = 1;
        }

        v65 = getenv("MallocCheckHeapStart");
        if (!v65)
        {
LABEL_190:
          v76 = getenv("MallocMaxMagazines");
          if (!v76)
          {
            v76 = getenv("_MallocMaxMagazines");
            if (!v76)
            {
              goto LABEL_203;
            }
          }

          v77 = strtol(v76, 0, 0);
          if (v77 == 0xFFFF)
          {
            max_magazines = ncpuclusters;
            v78 = "Maximum magazines limited to ncpuclusters (%d)\n";
          }

          else if (v77)
          {
            if ((v77 & 0x80000000) != 0)
            {
              v78 = "Maximum magazines must be positive - ignored.\n";
              v79 = 3;
LABEL_202:
              malloc_report(v79, v78);
LABEL_203:
              v80 = getenv("MallocLargeExpandedCacheThreshold");
              if (v80)
              {
                v81 = strtoull(v80, 0, 0);
                if (v81)
                {
                  magazine_large_expanded_cache_threshold = v81;
                  v82 = "Large expanded cache threshold set to %lly\n";
                }

                else
                {
                  v82 = "Large expanded cache threshold defaulted to %lly\n";
                }

                malloc_report(5u, v82);
              }

              v83 = getenv("MallocLargeDisableASLR");
              if (v83)
              {
                if (strtoull(v83, 0, 0))
                {
                  malloc_report(5u, "Disabling ASLR slide on large allocations\n");
                  v84 = malloc_debug_flags | 0x20000000;
                }

                else
                {
                  malloc_report(5u, "Enabling ASLR slide on large allocations\n");
                  v84 = malloc_debug_flags & 0xDFFFFFFF;
                }

                malloc_debug_flags = v84;
              }

              v85 = getenv("MallocSpaceEfficient");
              if (v85)
              {
                v86 = v85;
                __endptr[0] = 0;
                v87 = malloc_common_convert_to_long(v85, __endptr);
                if (__endptr[0] == v86 || *__endptr[0] || v87 > 1)
                {
                  malloc_report(3u, "MallocSpaceEfficient must be 0 or 1.\n");
                }

                else
                {
                  aggressive_madvise_enabled = v87 == 1;
                  malloc_space_efficient_enabled = v87 == 1;
                }
              }

              v88 = getenv("MallocAggressiveMadvise");
              if (v88)
              {
                v89 = v88;
                __endptr[0] = 0;
                v90 = malloc_common_convert_to_long(v88, __endptr);
                if (__endptr[0] == v89 || *__endptr[0] || v90 > 1)
                {
                  malloc_report(3u, "MallocAggressiveMadvise must be 0 or 1.\n");
                }

                else
                {
                  aggressive_madvise_enabled = v90 == 1;
                }
              }

              v91 = getenv("MallocRecircRetainedRegions");
              if (v91)
              {
                v92 = strtol(v91, 0, 0);
                if (v92 < 1)
                {
                  malloc_report(3u, "MallocRecircRetainedRegions must be positive - ignored.\n");
                }

                else
                {
                  recirc_retained_regions = v92;
                }
              }

              v93 = getenv("MallocZeroOnFree");
              if (v93)
              {
                v94 = v93;
                __endptr[0] = 0;
                v95 = malloc_common_convert_to_long(v93, __endptr);
                if (__endptr[0] == v94 || *__endptr[0] || v95 > 1)
                {
                  malloc_report(3u, "MallocZeroOnFree must be 0 or 1.\n");
                }

                else
                {
                  malloc_zero_policy = v95 ^ 1;
                }
              }

              v96 = getenv("MallocZeroOnAlloc");
              if (v96)
              {
                v97 = v96;
                __endptr[0] = 0;
                v98 = malloc_common_convert_to_long(v96, __endptr);
                if (__endptr[0] == v97 || *__endptr[0] || v98 > 1)
                {
                  malloc_report(3u, "MallocZeroOnAlloc must be 0 or 1.\n");
                }

                else
                {
                  if (v98)
                  {
                    v99 = 2;
                  }

                  else
                  {
                    v99 = 1;
                  }

                  malloc_zero_policy = v99;
                }
              }

              v100 = getenv("MallocCheckZeroOnFreeCorruption");
              if (v100)
              {
                v101 = strtol(v100, 0, 0);
                if (v101 < 1)
                {
                  malloc_report(3u, "malloc_zero_on_free_sample_period must be positive - ignored.\n");
                }

                else
                {
                  malloc_zero_on_free_sample_period = v101;
                }
              }

              v102 = getenv("MallocSecureAllocator");
              if (v102 && malloc_internal_security_policy == 1)
              {
                v103 = v102;
                __endptr[0] = 0;
                v104 = malloc_common_convert_to_long(v102, __endptr);
                if (__endptr[0] == v103 || *__endptr[0] || v104 > 1)
                {
                  malloc_report(3u, "MallocSecureAllocator must be 0 or 1.\n");
                }

                else
                {
                  malloc_xzone_enabled = v104;
                }
              }

              v105 = getenv("MallocSecureAllocatorNano");
              if (v105)
              {
                v106 = v105;
                __endptr[0] = 0;
                v107 = malloc_common_convert_to_long(v105, __endptr);
                if (__endptr[0] == v106 || *__endptr[0] || v107 > 1)
                {
                  malloc_report(3u, "MallocSecureAllocatorNano must be 0 or 1.\n");
                }

                else
                {
                  if (v107)
                  {
                    v108 = 2;
                  }

                  else
                  {
                    v108 = 1;
                  }

                  malloc_xzone_nano_override = v108;
                }
              }

              v109 = getenv("MallocNanoOnXzone");
              if (v109)
              {
                v110 = v109;
                __endptr[0] = 0;
                v111 = malloc_common_convert_to_long(v109, __endptr);
                if (__endptr[0] == v110 || *__endptr[0] || v111 > 1)
                {
                  malloc_report(3u, "MallocNanoOnXzone must be 0 or 1.\n");
                }

                else
                {
                  if (v111)
                  {
                    v112 = 2;
                  }

                  else
                  {
                    v112 = 1;
                  }

                  malloc_nano_on_xzone_override = v112;
                }
              }

              v113 = getenv("MallocSecureAllocatorCreateMzones");
              if (v113 && malloc_internal_security_policy == 1)
              {
                v114 = v113;
                __endptr[0] = 0;
                v115 = malloc_common_convert_to_long(v113, __endptr);
                if (__endptr[0] == v114 || *__endptr[0] || v115 > 1)
                {
                  malloc_report(3u, "MallocSecureAllocatorCreateMzones must be 0 or 1.\n");
                }

                else
                {
                  xzm_create_mzones = v115;
                }
              }

              v116 = getenv("MallocSecureAllocatorPurgeableZone");
              if (v116 && malloc_internal_security_policy == 1)
              {
                v117 = v116;
                __endptr[0] = 0;
                v118 = malloc_common_convert_to_long(v116, __endptr);
                if (__endptr[0] == v117 || *__endptr[0] || v118 > 1)
                {
                  malloc_report(3u, "MallocSecureAllocatorPurgeableZone must be 0 or 1.\n");
                }

                else
                {
                  purgeable_zone_use_xzm = v118;
                }
              }

              v119 = getenv("MallocEarlyMallocSecTransitionSupport");
              if (v119)
              {
                v120 = v119;
                __endptr[0] = 0;
                v121 = malloc_common_convert_to_long(v119, __endptr);
                if (__endptr[0] == v120 || *__endptr[0] || v121 > 1)
                {
                  malloc_report(3u, "MallocEarlyMallocSecTransitionSupport must be 0 or 1.\n");
                }

                else
                {
                  malloc_sec_transition_early_malloc_support = v121;
                }
              }

              v122 = getenv("MallocEnableMSLAtLimitWarning");
              if (v122)
              {
                v123 = v122;
                __endptr[0] = 0;
                v124 = malloc_common_convert_to_long(v122, __endptr);
                if (!*__endptr[0] && __endptr[0] != v123 && v124 == 1)
                {
                  malloc_memorystatus_mask_resource_exception_handling |= 0x34uLL;
                }
              }

              if (getenv("MallocHelp"))
              {
                malloc_report(5u, "environment variables that can be set for debug:\n- MallocLogFile <f> to create/append messages to file <f> instead of stderr\n- MallocGuardEdges to add 2 guard pages for each large block\n- MallocDoNotProtectPrelude to disable protection (when previous flag set)\n- MallocDoNotProtectPostlude to disable protection (when previous flag set)\n- MallocStackLogging to record all stacks.  Tools like leaks can then be applied\n- MallocStackLoggingNoCompact to record all stacks.  Needed for malloc_history\n- MallocStackLoggingDirectory to set location of stack logs, which can grow large; default is /tmp\n- MallocScribble to detect writing on free blocks and missing initializers:\n  0x55 is written upon free and 0xaa is written on allocation\n- MallocCheckHeapStart <n> to start checking the heap after <n> operations\n- MallocCheckHeapEach <s> to repeat the checking of the heap after <s> operations\n- MallocCheckHeapSleep <t> to sleep <t> seconds on heap corruption\n- MallocCheckHeapAbort <b> to abort on heap corruption if <b> is non-zero\n- MallocCorruptionAbort to abort on malloc errors, but not on out of memory for 32-bit processes\n  MallocCorruptionAbort is always set on 64-bit processes\n- MallocErrorAbort to abort on any malloc error, including out of memory\n- MallocTracing to emit kdebug trace points on malloc entry points\n- MallocZeroOnFree to enable or disable zero-on-free behavior (for debugging only)\n- MallocCheckZeroOnFreeCorruption to enable zero-on-free corruption detection\n- MallocHelp - this help!\n");
              }

              goto LABEL_300;
            }

            if (logical_ncpus >= v77)
            {
              max_magazines = v77;
              v78 = "Maximum magazines set to %d\n";
            }

            else
            {
              max_magazines = logical_ncpus;
              v78 = "Maximum magazines limited to number of logical CPUs (%d)\n";
            }
          }

          else
          {
            v78 = "Maximum magazines defaulted to %d\n";
          }

          v79 = 5;
          goto LABEL_202;
        }

        v66 = strtoul(v65, 0, 0);
        if (v66 <= 1)
        {
          v67 = 1;
        }

        else
        {
          v67 = v66;
        }

        if (v66 == -1)
        {
          v68 = 1;
        }

        else
        {
          v68 = v67;
        }

        malloc_check_start = v68;
        v69 = getenv("MallocCheckHeapEach");
        if (v69)
        {
          v70 = strtoul(v69, 0, 0);
          if (v70 <= 1)
          {
            v71 = 1;
          }

          else
          {
            v71 = v70;
          }

          if (v70 == -1)
          {
            v71 = 1;
          }

          malloc_check_each = v71;
        }

        malloc_report(5u, "checks heap after operation #%d and each %d operations\n");
        v72 = getenv("MallocCheckHeapAbort");
        if (v72)
        {
          malloc_check_abort = strtol(v72, 0, 0);
          if (malloc_check_abort)
          {
LABEL_174:
            v73 = "will abort on heap corruption\n";
LABEL_189:
            malloc_report(5u, v73);
            goto LABEL_190;
          }
        }

        else if (malloc_check_abort)
        {
          goto LABEL_174;
        }

        v74 = getenv("MallocCheckHeapSleep");
        if (v74)
        {
          v75 = strtol(v74, 0, 0);
          malloc_check_sleep = v75;
        }

        else
        {
          v75 = malloc_check_sleep;
        }

        if (v75 < 1)
        {
          if (v75 < 0)
          {
            v73 = "will sleep once for %d seconds on heap corruption\n";
          }

          else
          {
            v73 = "no sleep on heap corruption\n";
          }
        }

        else
        {
          v73 = "will sleep for %d seconds on heap corruption\n";
        }

        goto LABEL_189;
      }

      v63 = malloc_debug_flags | 0x10;
      v64 = "... but not protecting postlude guard page\n";
    }

    else
    {
      v63 = malloc_debug_flags & 0xFFFFFFE0 | 7;
      v64 = "adding guard pages to all regions\n";
    }

    malloc_debug_flags = v63;
    malloc_report(5u, v64);
    goto LABEL_148;
  }

LABEL_300:
  malloc_memorypressure_mask_default_4libdispatch |= malloc_memorystatus_mask_resource_exception_handling;
  malloc_memorypressure_mask_msl_4libdispatch |= malloc_memorystatus_mask_resource_exception_handling;
  if (malloc_report_config == 1)
  {
    malloc_report(5u, "Internal Security Policy: %d\n");
  }

  malloc_sanitizer_enabled = sanitizer_should_enable();
  v125 = _NSGetEnviron();
  v126 = *v125;
  if ((malloc_sanitizer_enabled & 1) == 0 && !(malloc_debug_flags & 0x20 | malloc_zero_on_free_sample_period))
  {
    nano_common_init(*v125, v137, v140);
  }

  v127 = _os_feature_enabled_simple_impl();
  if (malloc_xzone_nano_override == 2)
  {
    v128 = 1;
  }

  else if (malloc_xzone_nano_override == 1)
  {
    v128 = 0;
  }

  else
  {
    v128 = ((*(v61 + 300) - 1) < 0x22) | v127;
  }

  v129 = malloc_xzone_enabled ^ 1;
  if (_malloc_engaged_nano != 2)
  {
    v129 = 1;
  }

  v130 = v129 | (malloc_nano_on_xzone_override != 2) & v128;
  if (v129 & 1 | (malloc_nano_on_xzone_override != 2) & v128)
  {
    if (!malloc_xzone_enabled)
    {
      v131 = 0;
      goto LABEL_328;
    }

LABEL_323:
    v131 = v130 ^ 1;
    mvm_guarded_range_init();
    if (malloc_report_config == 1 && malloc_internal_security_policy == 1)
    {
      malloc_report(5u, "Guarded Range Config (base/size/carveout): 0x%lx / 0x%lx / 0x%lx\n");
    }

    initial_xzone_zone = xzm_main_malloc_zone_create(malloc_debug_flags, v126, v137, v140);
    malloc_set_zone_name(initial_xzone_zone, "DefaultMallocZone");
    malloc_zone_register_while_locked(initial_xzone_zone, 1);
LABEL_328:
    if ((v131 & 1) == 0 && initial_xzone_zone)
    {
      goto LABEL_342;
    }

    if (!initial_xzone_zone)
    {
      goto LABEL_331;
    }

    goto LABEL_332;
  }

  v132 = _os_feature_enabled_simple_impl();
  if (malloc_nano_on_xzone_override == 2)
  {
    v132 = 1;
  }

  else if (malloc_nano_on_xzone_override == 1)
  {
    v132 = 0;
  }

  if (malloc_nano_on_xzone != v132)
  {
    malloc_nano_on_xzone = v132;
  }

  if (!v132)
  {
    v131 = 0;
    malloc_xzone_enabled = 0;
    goto LABEL_328;
  }

  if (malloc_xzone_enabled)
  {
    goto LABEL_323;
  }

  if (!initial_xzone_zone)
  {
LABEL_331:
    initial_scalable_zone = create_scalable_zone(0, malloc_debug_flags);
    malloc_set_zone_name(initial_scalable_zone, "DefaultMallocZone");
    malloc_zone_register_while_locked(initial_scalable_zone, 1);
  }

LABEL_332:
  nano_common_configure();
  if (initial_xzone_zone)
  {
    v133 = initial_xzone_zone;
  }

  else
  {
    v133 = initial_scalable_zone;
  }

  if (_malloc_engaged_nano != 2)
  {
    zone = initial_nano_zone;
    if (!initial_nano_zone)
    {
      goto LABEL_342;
    }

    goto LABEL_341;
  }

  if (malloc_report_config == 1)
  {
    malloc_report(5u, "NanoV2 Config:\n\tNano On Xzone: %d\n");
  }

  zone = nanov2_create_zone(v133, malloc_debug_flags);
  initial_nano_zone = zone;
  if (zone)
  {
LABEL_341:
    malloc_set_zone_name(zone, "DefaultMallocZone");
    malloc_set_zone_name(v133, "MallocHelperZone");
    malloc_zone_register_while_locked(initial_nano_zone, 1);
  }

LABEL_342:
  if (malloc_sanitizer_enabled == 1)
  {
    v135 = sanitizer_create_zone(*malloc_zones);
    malloc_zone_register_while_locked(v135, 1);
  }

  malloc_slowpath_update();
  initial_num_zones = malloc_num_zones;
  if (malloc_report_config == 1 && initial_scalable_zone)
  {
    malloc_report(5u, "Magazine Config:\n\tMax Magazines: %d\n\tMedium Enabled: %d\n\tAggressive Madvise: %d\n\tScribble: %d\n");
  }

  v136 = *MEMORY[0x1E69E9840];
}