void _dispatch_source_dispose(uint64_t *a1, _BYTE *a2)
{
  __swp(a1, (a1[11] + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (a1[11] + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (a1[11] + 48));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t _dispatch_source_xref_dispose(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((v2 & 0x14000000) == 0x4000000 && *(*(a1 + 88) + 48))
  {
    _dispatch_source_xref_dispose_cold_1(v2);
  }

  v3 = *(*a1 + 80);

  return v3();
}

uintptr_t dispatch_source_get_mask(dispatch_source_t source)
{
  isa = source[11].isa;
  if ((source[10].isa & 0x10000000) != 0)
  {
    return 0;
  }

  if ((*(isa + 29) & 0x10) != 0)
  {
    return 0x80000000;
  }

  if ((*(isa + 29) & 2) != 0)
  {
    return *(isa + 30);
  }

  return *(isa + 8);
}

uintptr_t dispatch_source_get_handle(dispatch_source_t source)
{
  isa = source[11].isa;
  if (*(isa + 28) != 236)
  {
    return *(isa + 6);
  }

  v2 = (*(isa + 30) >> 2) & 3;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 3;
    }

    return *(isa + 6);
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uintptr_t dispatch_source_get_data(dispatch_source_t source)
{
  isa = source[11].isa;
  v2 = *(isa + 29);
  if ((v2 & 0x10) != 0)
  {
    return 0x80000000;
  }

  v3 = *(isa + 8);
  if ((v2 & 4) != 0)
  {
    return v3;
  }

  else
  {
    return v3;
  }
}

uint64_t dispatch_source_get_extended_data(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 88);
    if ((*(v4 + 29) & 4) != 0)
    {
      v7 = *(v4 + 64);
      v6 = v7;
      v5 = HIDWORD(v7);
    }

    else
    {
      v5 = 0;
      v6 = (*(v4 + 29) & 0x10) != 0 ? 0x80000000 : *(v4 + 64);
    }

    if (a3 >= 8)
    {
      *a2 = v6;
      if (a3 >= 0x10)
      {
        a2[1] = v5;
        if (a3 != 16)
        {
          bzero(a2 + 2, a3 - 16);
        }
      }
    }
  }

  if (a3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return a3;
  }
}

void dispatch_source_merge_data(dispatch_source_t source, uintptr_t value)
{
  if ((source[10].isa & 0x10800000) == 0)
  {
    isa = source[11].isa;
    v3 = *(isa + 28);
    switch(v3)
    {
      case 233:
        *(isa + 9) = value;
        break;
      case 234:
        atomic_fetch_or_explicit(isa + 9, value, memory_order_relaxed);
        break;
      case 235:
        atomic_fetch_add_explicit(isa + 9, value, memory_order_relaxed);
        break;
      default:
        dispatch_source_merge_data_cold_2(*(isa + 28));
    }

    dispatch_source_merge_data_cold_1(source);
  }
}

atomic_ullong *_dispatch_source_set_handler(uint64_t a1, uint64_t (**aBlock)(), uint64_t a3, int a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 176);
  if (!v9)
  {
    v9 = _dispatch_continuation_alloc_from_heap();
    if (aBlock)
    {
      goto LABEL_3;
    }

LABEL_15:
    *v9 = 256;
    v9[4] = 0;
    goto LABEL_16;
  }

  *(StatusReg + 176) = v9[2];
  if (!aBlock)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = 4 * (a3 != 0);
  if (a4)
  {
    v11 = _dispatch_Block_copy(aBlock);
    v12 = v10 | 0x110;
    v13 = aBlock[2];
    if (v13)
    {
      v14 = aBlock[2];
      if (_dispatch_block_special_invoke == v13)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!_dispatch_block_special_invoke)
      {
LABEL_44:
        *v9 = v12;
        v9[5] = v11;
        _dispatch_continuation_init_slow(v9, a1, 1073741888);
        goto LABEL_16;
      }

      v14 = 0;
    }

    if (a3)
    {
      v14 = _dispatch_call_block_and_release;
    }

    v9[4] = v14;
    v9[5] = v11;
  }

  else
  {
    v15 = *(a1 + 32);
    v12 = v10 | 0x140;
    v9[4] = aBlock;
    v9[5] = v15;
  }

  v9[3] = 0;
  *v9 = v12;
  v9[1] = 0;
LABEL_16:
  v16 = *(a1 + 56);
  while ((~v16 & 0x180000000000000) == 0)
  {
    v17 = v16;
    atomic_compare_exchange_strong_explicit((a1 + 56), &v16, v16 + 0x400000000000000, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v17)
    {
      if ((v17 & 0x200000000000000) != 0)
      {
        qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Too many calls to dispatch_suspend() prior to calling dispatch_set_target_queue() or dispatch_set_*_handler()";
        __break(1u);
      }

      else
      {
        if (v9[4])
        {
          if ((*v9 & 0x40) != 0)
          {
            v9[5] = *(a1 + 32);
          }

          goto LABEL_29;
        }

        v18 = *(StatusReg + 176);
        if (v18)
        {
          v19 = *(v18 + 8) + 1;
        }

        else
        {
          v19 = 1;
        }

        if (v19 <= _dispatch_continuation_cache_limit)
        {
          v9[2] = v18;
          *(v9 + 2) = v19;
          *(StatusReg + 176) = v9;
LABEL_28:
          v9 = 0;
LABEL_29:
          v20 = atomic_exchange_explicit((*(a1 + 88) + 8 * a3 + 40), v9, memory_order_release);
          if (v20)
          {
            _dispatch_source_handler_dispose(v20);
          }

          return _dispatch_lane_resume(a1, 0);
        }
      }

      _dispatch_continuation_free_to_cache_limit(v9);
      goto LABEL_28;
    }
  }

  v22 = *(a1 + 80);
  if ((v22 & 0x4000000) != 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Cannot change a handler of this source after it has been activated";
    qword_1EBC5B9B0 = a3;
    __break(1u);
    goto LABEL_50;
  }

  if ((v22 & 0x10000000) == 0)
  {
    if (!MEMORY[0xFFFFFC100])
    {
LABEL_37:
      if (a3 == 2 || !aBlock)
      {
        if (a3 == 2)
        {
          v23 = "Setting registration handler after the source has been activated";
        }

        else
        {
          v23 = "Clearing handler after the source has been activated";
        }

        _dispatch_bug_deprecated(v23);
      }

      goto LABEL_39;
    }

LABEL_50:
    kdebug_trace();
    goto LABEL_37;
  }

LABEL_39:
  v9[6] = a3;

  return _dispatch_barrier_trysync_or_async_f(a1, v9, _dispatch_source_set_handler_slow, 0);
}

atomic_ullong *dispatch_source_set_mandatory_cancel_handler(uint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  return _dispatch_source_set_handler(a1, a2, 1, 1);
}

atomic_ullong *dispatch_source_set_mandatory_cancel_handler_f(uint64_t a1, uint64_t (**a2)())
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2 & 0xFBBFFFFF | 0x4000000;
    if (v3 == v2)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 80), &v4, v3, memory_order_relaxed, memory_order_relaxed);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  return _dispatch_source_set_handler(a1, a2, 1, 0);
}

BOOL _dispatch_source_will_reenable_kevent_4NW(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (((v1 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_source_will_reenable_kevent_4NW_cold_1();
  }

  v2 = *(*(a1 + 88) + 16);
  return (v2 & 3) == 0 && v2 != 0;
}

void _dispatch_source_activate(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 88);
  v12 = 0;
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    _dispatch_source_activate_cold_1(a1, a2);
    return;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *v4;
    if (*v4 < 0x1000)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((*(v5 + 40) & 0xF0) != 0x10 || (v4[10] & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    atomic_fetch_or_explicit((a1 + 80), 0x80000u, memory_order_relaxed);
LABEL_9:
    v6 = v4[1];
    if ((v6 & 0x10000000) != 0 || (v7 = *(a1 + 84), (v7 & 0x20000000) != 0) || (v7 & 0x44000FFF) == 0)
    {
      v8 = (__clz(__rbit32((v6 >> 8) & 0x3FFF)) << 8) + 256;
      if (((v6 >> 8) & 0x3FFF) == 0)
      {
        v8 = 0;
      }

      *(a1 + 84) = v8 & 0xFFFFFF00 | v4[1];
    }

    if ((*v4 & 0x40) != 0)
    {
      v4[5] = *(a1 + 32);
    }

    goto LABEL_17;
  }

  _dispatch_bug_deprecated("dispatch source activated with no event handler set");
LABEL_17:
  _dispatch_lane_activate(a1);
  if ((*(v3 + 29) & 3) != 0 && (*(a1 + 116) & 1) == 0)
  {
    v9 = _dispatch_queue_compute_priority_and_wlh(a1, &v12);
    if (v9)
    {
      v10 = v9;
      v11 = v12;
      if (v12 != -4 && v12 && *(*v12 + 40) == 18 && *(v3 + 28) == 236 && *(v3 + 24) <= 5u)
      {
        if (!v12[6])
        {
          *(v11 + 48) = _dispatch_calloc_typed(6uLL, 0x20uLL, 0x10A0040FB565BC9uLL);
          v11 = v12;
        }

        *(v3 + 29) |= 1u;
        if (v11 != -4 && v11 && (atomic_fetch_add_explicit((v11 + 96), 1u, memory_order_relaxed) & 0x80000000) != 0)
        {
          dispatch_set_target_queue_cold_2();
        }

        *(v3 + 16) = v11;
      }

      _dispatch_source_install(a1, v11, v10);
    }
  }
}

atomic_uint *_dispatch_source_refs_finalize_unregistration(atomic_uint *a1, const char *a2)
{
  v5 = a1[20];
  result = a1 + 20;
  v4 = v5;
  do
  {
    v6 = v4;
    v7 = v4 & 0x1FFFFFFF | 0x80000000;
    if (v7 == v4)
    {
      goto LABEL_10;
    }

    atomic_compare_exchange_strong_explicit(result, &v4, v7, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v6);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_10:
    qword_1EBC5B980 = "BUG IN LIBDISPATCH: Source finalized twice";
    qword_1EBC5B9B0 = v6;
    __break(1u);
    return result;
  }

  if ((v6 & 0x20000000) != 0)
  {
    _dispatch_wake_by_address();
  }

  return _os_object_release_internal(a1, a2);
}

void _dispatch_source_install(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 88);
  *(a1 + 116) |= 1u;
  _dispatch_unote_register(v4, a2, a3);
  if ((v6 & 1) == 0)
  {

    _dispatch_source_refs_finalize_unregistration(a1, v5);
  }
}

void _dispatch_source_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v80 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
  }

  if ((a3 & 2) != 0)
  {
    v80 = 0x40020000000001;
    v6 = a3 & 0x40000;
  }

  else
  {
    v52 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v54 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v6 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v55 = 0x4000000000;
    }

    else
    {
      v55 = 1;
    }

    v56 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v56 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v57 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v57 = v56;
    }

    v58 = *(StatusReg + 200);
    v59 = (v58 >> 8) & 0xF;
    v60 = v58 >> 12;
    v61 = HIWORD(v58) & 0xF;
    if (v59 <= v60)
    {
      v59 = v60;
    }

    if (v59 > v61)
    {
      v61 = v59;
    }

LABEL_158:
    for (i = *(a1 + 56); ; i = v67)
    {
      while ((i & v57) != 0)
      {
        if ((a3 & 1) != 0 || (v68 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v68, i ^ v55, memory_order_acquire, memory_order_acquire), v68 == i))
        {
          v80 = 0;
          goto LABEL_177;
        }

        i = v68;
      }

      if ((i & 0x1000000000) != 0)
      {
        v63 = HIDWORD(i) & 7;
        if (v63 > v61)
        {
          v69 = *(StatusReg + 24);
          _pthread_workqueue_override_start_direct();
          v70 = *(StatusReg + 200);
          v61 = v63;
          if ((HIWORD(v70) & 0xF) < v63)
          {
            *(StatusReg + 200) = v70 & 0xFFF0FFFF | (v63 << 16);
            v61 = v63;
          }

          goto LABEL_158;
        }
      }

      v64 = (i >> 40) & 1;
      if (!((v52 + i) >> 53))
      {
        LODWORD(v64) = 1;
      }

      v65 = v64 ? 0x60000000000000 : 0x20000000000000;
      v66 = v54 | i & 0x7700000001 | v65;
      v67 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v67, v66, memory_order_acquire, memory_order_acquire);
      if (v67 == i)
      {
        break;
      }
    }

    v71 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v71 = v55 | 0x60000000000000;
    }

    v80 = (v66 & v71) - (i & 0x3FFE0000000000);
    v4 = a2;
    if (!v80)
    {
      goto LABEL_177;
    }
  }

  if (v6)
  {
    v75 = 0;
    goto LABEL_21;
  }

  v7 = *(a1 + 84);
  v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(v8 + 200);
  if (v9)
  {
    v10 = v7 >> 12;
    v11 = v7 & 0xFFF;
    if ((v7 & 0xFFF) != 0)
    {
      if ((v9 & 0xFFFu) > v11)
      {
        v11 = v9 & 0xFFF;
      }

      if (v10 <= v11 >> 8)
      {
        v12 = 0x40000000;
      }

      else
      {
        v12 = 1140912128;
      }

      v13 = v12 & v7;
      v14 = v9 & 0x880F0000 | v11;
    }

    else
    {
      v15 = v9 | 0x40000000;
      if ((v9 & 0xFFF) == 0)
      {
        v15 = *(v8 + 200);
      }

      if (v10 <= ((v15 >> 8) & 0xF))
      {
        goto LABEL_20;
      }

      v14 = v15 & 0xFFFF0FFF;
      v13 = v7 & 0x400F000;
    }

    v15 = v14 | v13;
  }

  else
  {
    v15 = v7 & 0xFFF0FFFF;
  }

LABEL_20:
  *(v8 + 200) = v15;
  v75 = v9 & 0xFFF0FFFF;
LABEL_21:
  v16 = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v16 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  v74 = v16 | 0x10;
  v17 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v18 = v16;
      v77 = v16 & 0x1000002;
      if ((v16 & 0x1000002) == 2)
      {
        _dispatch_last_resort_autorelease_pool_push(v4);
      }

      v19 = *(v17 + 160);
      v76 = (v17 + 160);
      v20 = *(a1 + 88);
      if ((v18 & 0x40000) == 0)
      {
        v21 = *(v17 + 232);
        v22 = v21 ? *(v21 + 24) : -4;
        v23 = *(v20 + 16) & 0xFFFFFFFFFFFFFFFCLL;
        if (v23 == -4)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23 == 0;
          v25 = *(v20 + 16) < 0;
        }

        if (!v24 && v22 != v23)
        {
          _dispatch_source_handle_wlh_change(a1);
        }
      }

      if (*(a1 + 48))
      {
        _dispatch_lane_serial_drain(a1, v4, v18 | 0x4000000, &v80);
        v28 = v27;
        v29 = v18 & 0xFBFFFFFF;
      }

      else
      {
        v28 = 0;
        v29 = v18;
      }

      v30 = &_dispatch_mgr_q;
      if (*(v20 + 29))
      {
        v30 = *(a1 + 24);
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if (v19 != v30)
        {
LABEL_48:
          v28 = v30;
          goto LABEL_91;
        }

        if ((v29 & 0x10000) != 0)
        {
          v31 = *(v17 + 200);
        }

        else
        {
          v31 = 0x2000000;
        }

        v32 = *(v17 + 232);
        if (v32)
        {
          v33 = *(v32 + 24);
        }

        else
        {
          v33 = -4;
        }

        _dispatch_source_install(a1, v33, v31);
      }

      if (*(a1 + 56) >> 55)
      {
LABEL_114:
        v28 = *(a1 + 24);
        goto LABEL_91;
      }

      if ((*(v20 + 29) & 2) != 0 && *(v20 + 104) && (*(a1 + 80) & 0x10800000) == 0)
      {
        if (v19 != v30)
        {
          goto LABEL_48;
        }

        _dispatch_timer_unote_configure(*(a1 + 88));
      }

      if (*(v20 + 56))
      {
        v34 = v28;
        v28 = *(a1 + 24);
        if (v19 != v28)
        {
          goto LABEL_91;
        }

        _dispatch_source_registration_callout(a1, v19, v29);
        v28 = v34;
      }

      if ((*(v20 + 16) & 2) != 0)
      {
        _dispatch_source_refs_unregister(a1, 5);
      }

      v35 = *(a1 + 80);
      v36 = v35 & 0x10800000;
      if ((v35 & 0x10800000) != 0)
      {
        v37 = 0;
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

      if (*(v20 + 72))
      {
        v73 = v28;
        v28 = *(a1 + 24);
        if (v19 != v28)
        {
          goto LABEL_91;
        }

        _dispatch_source_latch_and_call(a1, v19, v29);
        v35 = *(a1 + 80);
        if ((v35 & 0x90000000) != 0)
        {
          v37 = 0;
          v28 = v73;
        }

        else
        {
          v28 = v73;
          if (*(v19 + 24))
          {
            v37 = 1;
          }

          else
          {
            v37 = *(v19 + 84) >= 0;
          }
        }

        *(a1 + 116) |= 2u;
        v36 = v35 & 0x10800000;
        if ((v35 & 0x80000000) == 0)
        {
LABEL_66:
          if (v36)
          {
            if ((*(v20 + 29) & 2) == 0 || (*(v20 + 16)) && v19 != v30)
            {
              goto LABEL_48;
            }

            if (v35 >> 30)
            {
              v38 = 1;
            }

            else
            {
              v38 = 3;
            }

            _dispatch_source_refs_unregister(a1, v38);
            v35 = *(a1 + 80);
            if ((v35 & 0x80000000) == 0)
            {
              if (!v28)
              {
                v28 = -1;
              }

              goto LABEL_91;
            }

            v36 = v35 & 0x10800000;
          }
        }

LABEL_75:
        if ((v35 & 0x80000000) != 0 && v36)
        {
          if (v19 != *(a1 + 24) && (*(v20 + 40) || *(v20 + 48) || *(v20 + 56)))
          {
            v37 = 0;
            v28 = *(a1 + 24);
          }

          else
          {
            _dispatch_source_cancel_callout(a1, v19, v29);
            v37 = 0;
            v35 = *(a1 + 80);
          }
        }

        goto LABEL_90;
      }

      v37 = 0;
LABEL_90:
      if ((v35 & 0x10800000) == 0)
      {
        if ((*(v20 + 29) & 2) != 0)
        {
          if (!*(v20 + 104))
          {
            v47 = *(v20 + 16);
            if (!v47 || (v47 & 3) != 0 || *(v20 + 80) > 0x7FFFFFFFFFFFFFFEuLL)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          v44 = *(v20 + 16);
          if (!v44 || (v44 & 3) != 0)
          {
            goto LABEL_91;
          }
        }

        v45 = v28;
        v28 = v30;
        if (v19 == v30)
        {
          if (*(a1 + 56) >> 55)
          {
            goto LABEL_114;
          }

          v28 = v45;
          if ((*(v20 + 29) & 1) == 0 || *(v20 + 16) < 0xFFFFFFFFFFFFFFFCLL)
          {
            _dispatch_unote_resume(v20);
            if (!v37)
            {
              if (*(v17 + 40))
              {
                v48 = *(v17 + 232);
                if (v48)
                {
                  v49 = *(v48 + 24);
                  if (v49 != -4 && v49 == (*(v20 + 16) & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    _dispatch_event_loop_drain(1);
                  }
                }
              }
            }

            goto LABEL_91;
          }

          v46 = *(a1 + 116);
          if ((v46 & 2) != 0)
          {
            *(a1 + 116) = v46 & 0xFFFD;
            _dispatch_unote_resume(v20);
          }

          if (v37)
          {
            goto LABEL_114;
          }
        }
      }

LABEL_91:
      v4 = a2;
      if (v77 == 2)
      {
        v79 = *v76;
        *(v17 + 160) = a1;
        *(v17 + 168) = &v79;
        _dispatch_last_resort_autorelease_pool_pop(a2);
        *v76 = v79;
      }

      if ((v28 + 1) > 1)
      {
        goto LABEL_141;
      }

      v39 = v80;
      v40 = *(a1 + 56);
      while (1)
      {
        v41 = v40;
        v42 = v40 - v39;
        v43 = v42 & 0xFFFFFFF700000001;
        if (!(v41 >> 55))
        {
          break;
        }

LABEL_99:
        v40 = v41;
        atomic_compare_exchange_strong_explicit((a1 + 56), &v40, v43, memory_order_release, memory_order_relaxed);
        if (v40 == v41)
        {
          if ((~v41 & 0x1800000000) == 0)
          {
            v50 = HIDWORD(v41) & 7;
            v51 = *(v17 + 200);
            if ((HIWORD(v51) & 0xF) < v50)
            {
              *(v17 + 200) = v51 & 0xFFF0FFFF | (v50 << 16);
            }
          }

          v28 = 0;
          v80 = 0;
          goto LABEL_141;
        }
      }

      if ((v41 & 0x8000000000) == 0)
      {
        if (v28)
        {
          v43 = v42 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v43 = v42 & 0xFFFFFFF000000001;
        }

        goto LABEL_99;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v28 = *v76;
      v16 = v74;
      if (a3)
      {
        continue;
      }

      break;
    }

    v16 = v74;
    if ((*(**v76 + 40) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_141:
  if ((v18 & 0x40000) == 0)
  {
    *(v17 + 200) = *(v17 + 200) & 0xF0000 | v75;
  }

  if (!v28)
  {
LABEL_177:
    _os_object_release_internal_n(a1, 2);
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_178;
    }

    return;
  }

  _dispatch_queue_invoke_finish(a1, a2, v28, v80);
  if ((a3 & 0x100000) == 0)
  {
    return;
  }

LABEL_178:
  v72 = *(*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 216) + 48);
  if (v72)
  {
    if (*(v72 + 6))
    {
      _dispatch_event_loop_drain_timers(v72, 6u);
    }
  }
}

void _dispatch_source_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 80);
  v5 = *(v3 + 29);
  v6 = &_dispatch_mgr_q;
  if (*(a1 + 116))
  {
    v7 = (v4 & 0x10800000) != 0 || (v5 & 2) == 0;
    if (v7 || !*(v3 + 104))
    {
      if (*(v3 + 56) | *(v3 + 16) & 2)
      {
        goto LABEL_14;
      }

      if ((v4 & 0x10800000) != 0)
      {
        if ((v4 & 0x80000000) != 0)
        {
          if (!*(v3 + 40) && !*(v3 + 48) && !*(v3 + 56))
          {
            goto LABEL_23;
          }
        }

        else if (*(v3 + 29) & 2) == 0 || (*(v3 + 16))
        {
          if ((a3 & 0x10) != 0 || !(v4 >> 30))
          {
            goto LABEL_7;
          }

          goto LABEL_23;
        }
      }

      else if (!*(v3 + 72))
      {
        if ((*(v3 + 29) & 2) != 0)
        {
          if (*(v3 + 104))
          {
            goto LABEL_7;
          }

          v12 = *(v3 + 16);
          if (v12)
          {
            if ((v12 & 3) == 0 && *(v3 + 80) < 0x7FFFFFFFFFFFFFFFuLL)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v10 = *(v3 + 16);
          if (v10)
          {
            v11 = (v10 & 3) == 0;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            goto LABEL_7;
          }
        }

LABEL_23:
        if (!*(a1 + 48))
        {
          v6 = 0;
          goto LABEL_12;
        }
      }

LABEL_14:
      if (*(a1 + 24) != &_dispatch_mgr_q)
      {
        v6 = 1;
      }

      goto LABEL_12;
    }
  }

LABEL_7:
  v8 = v5 & 1;
  if (&_dispatch_mgr_q == 1 || v8 != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  _dispatch_queue_wakeup(a1, a2, a3, v6);
}

void dispatch_source_cancel(dispatch_source_t source)
{
  if (LODWORD(source[1].isa) != 0x7FFFFFFF && atomic_fetch_add_explicit(&source[1], 2u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  dispatch_source_cancel_cold_2(source);
}

void dispatch_source_cancel_and_wait(dispatch_object_t object)
{
  isa = object[11].isa;
  if (*(isa + 6))
  {
    dispatch_source_cancel_and_wait_cold_1(object);
  }

  v4 = &object[10];
  v3 = object[10].isa;
  do
  {
    v5 = v3;
    v6 = v3 | 0x10000000;
    if ((v3 & 0x20000000) != 0)
    {
      break;
    }

    if ((v3 & 0x80000000) == 0 && (v3 >> 30 || (*(isa + 29) & 3) != 1))
    {
      v6 = v3 | 0x30000000;
    }

    atomic_compare_exchange_strong_explicit(v4, &v3, v6, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v5);
  if ((v5 & 0x800000) != 0)
  {
    dispatch_source_cancel_and_wait_cold_2(object);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return;
  }

  if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_12;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = *(StatusReg + 24);
  v13 = (StatusReg + 24);
  v15 = v14 & 0xFFFFFFFC;
  v16 = object[7].isa;
  while (1)
  {
    v17 = v16;
    if ((v16 & 0xFFE00000FFFFFFFCLL) != 0)
    {
      break;
    }

    v18 = v15 | v16 & 0x7700000001 | 0x60000000000000;
LABEL_22:
    atomic_compare_exchange_strong(&object[7], &v16, v18);
    if (v16 == v17)
    {
      goto LABEL_26;
    }
  }

  if ((v5 & 0x10000000) == 0)
  {
    v18 = v16 | 0x8000000000;
    goto LABEL_22;
  }

LABEL_26:
  if (v17 >> 55)
  {
    dispatch_source_cancel_and_wait_cold_6(v17, object);
  }

  else
  {
    if ((v17 & 0x600000FFFFFFFCLL) == 0)
    {
      dispatch_source_cancel_and_wait_cold_4(&object[10], object);
      goto LABEL_16;
    }

    dispatch_source_cancel_and_wait_cold_3(v13, v17, object);
LABEL_12:
    v8 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) >> 8) & 0x3FFF;
    v7 = v8 == 0;
    v9 = __clz(__rbit32(v8));
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 + 1;
    }

    (*(object->isa + 10))(object, v10, 2);
    dispatch_activate(object);
LABEL_16:
    v11 = *v4;
    if ((v11 & 0x80000000) == 0)
    {
      dispatch_source_cancel_and_wait_cold_5(v11, &object[10]);
    }
  }
}

void _dispatch_source_refs_unregister(uint64_t a1, char a2)
{
  _dispatch_unote_unregister(*(a1 + 88), a2);
  if (v4)
  {

    _dispatch_source_refs_finalize_unregistration(a1, v3);
  }

  else
  {
    v5 = *(a1 + 80);
    do
    {
      if (v5 >> 30)
      {
        break;
      }

      v6 = v5;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v6, v5 | 0x40000000, memory_order_relaxed, memory_order_relaxed);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
  }
}

void _dispatch_source_cancel_callout(void *a1, uint64_t a2, int a3)
{
  v6 = a1;
  v7 = a1[11];
  if ((a3 & 0x1000000) != 0)
  {
    a1 = objc_autoreleasePoolPush();
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  __swp(v3, (v7 + 48));
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  __swp(a1, (v7 + 40));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  __swp(a1, (v7 + 56));
  if (a1)
  {
    _dispatch_source_handler_dispose(a1);
  }

  if (!v3)
  {
LABEL_11:
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  if ((v6[10] & 0x10000000) == 0)
  {
    _dispatch_source_handler_dispose(v3);
    goto LABEL_11;
  }

  if ((*v3 & 0x40) != 0)
  {
    *(v3 + 40) = v6[4];
  }

  __dmb(9u);
  _dispatch_continuation_pop(v3, 0, a3 & 0xFEFFFFFF, a2);
  if (v8)
  {
LABEL_12:

    objc_autoreleasePoolPop(v8);
  }
}

uint64_t _dispatch_source_merge_evt(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v7 = ~*(a1 + 8);
  if ((a2 & 0x100) == 0 && !*(a1 + 16) && (*(a1 + 29) & 2) == 0)
  {
    _dispatch_source_refs_finalize_unregistration(~*(a1 + 8), a2);
  }

  if ((v5 & 0x200) != 0)
  {
    _dispatch_source_merge_evt_cold_1(v7[20], a1);
  }

  v8 = *(*v7 + 80);
  v9 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return v8(v7, v10, 51);
}

void dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (when == -1)
  {
    return;
  }

  v7 = when;
  v8 = _dispatch_timeout(when);
  if (v8)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 > 5)
    {
      v12 = 20;
    }

    else
    {
      v12 = qword_1BB5813B8[v11];
    }

    v13 = v8 / v12;
    if (v13 <= 0xF4240)
    {
      v13 = 1000000;
    }

    if (v13 >= 0xDF8475800)
    {
      v14 = 60000000000;
    }

    else
    {
      v14 = v13;
    }

    v15 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    isa = v15[11].isa;
    v17 = *(StatusReg + 176);
    if (v17)
    {
      *(StatusReg + 176) = v17[2];
    }

    else
    {
      v17 = _dispatch_continuation_alloc_from_heap();
    }

    *v17 = 256;
    v17[4] = work;
    v17[5] = context;
    v18 = *(StatusReg + 32) & 0xFFFFFFLL;
    v19 = 4351;
    if (v18 < 0x10FF)
    {
      v19 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v20 = *(StatusReg + 224);
    if (v20 && atomic_fetch_add_explicit((v20 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
      return;
    }

    v17[3] = v20;
    if (v18)
    {
      v21 = (HIDWORD(queue[10].isa) >> 30) & 1;
      if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
      {
        v21 = 1;
      }

      if (!v21)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v17[1] = v19;
    v17[6] = v15;
    *(isa + 5) = v17;
    if ((v7 & 0x8000000000000000) != 0)
    {
      if ((v7 & 0x4000000000000000) != 0)
      {
        if (-v7 >> 62)
        {
          v7 = -1;
        }

        else
        {
          v7 = -v7;
        }

        v22 = 2;
LABEL_37:
        *(isa + 30) |= 4 * v22;
        *(isa + 10) = v7;
        *(isa + 11) = v14 + v7;
        *(isa + 12) = -1;

        dispatch_activate(v15);
        return;
      }

      v7 &= 0x3FFFFFFFFFFFFFFFuLL;
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    if (v7 >> 62)
    {
      v7 = -1;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v14 = _dispatch_host_time_nano2mach(v14);
    }

    else
    {
      v23 = (3 * v14 * 0x624DD2F1A9FBE77uLL) >> 64;
      v14 = (v23 + ((3 * v14 - v23) >> 1)) >> 6;
    }

    goto LABEL_37;
  }

  dispatch_channel_async_f(queue, context, work);
}

void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block)
{
  if (when == -1)
  {
    return;
  }

  v5 = when;
  v6 = _dispatch_timeout(when);
  if (v6)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = __clz(__rbit32((*(StatusReg + 32) >> 8) & 0x3FFF));
    if (((*(StatusReg + 32) >> 8) & 0x3FFF) != 0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9 > 5)
    {
      v10 = 20;
    }

    else
    {
      v10 = qword_1BB5813B8[v9];
    }

    v11 = v6 / v10;
    if (v11 <= 0xF4240)
    {
      v11 = 1000000;
    }

    if (v11 >= 0xDF8475800)
    {
      v12 = 60000000000;
    }

    else
    {
      v12 = v11;
    }

    v13 = dispatch_source_create(&_dispatch_source_type_after, 0, 0, queue);
    isa = v13[11].isa;
    v15 = *(StatusReg + 176);
    if (v15)
    {
      *(StatusReg + 176) = v15[2];
    }

    else
    {
      v15 = _dispatch_continuation_alloc_from_heap();
    }

    v16 = _dispatch_Block_copy(block);
    v17 = *(block + 2);
    if (v17)
    {
      if (_dispatch_block_special_invoke == v17)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (!_dispatch_block_special_invoke)
      {
LABEL_51:
        *v15 = 272;
        v15[5] = v16;
        _dispatch_continuation_init_slow(v15, queue, 0);
        goto LABEL_35;
      }

      v17 = 0;
    }

    *v15 = 272;
    v15[4] = v17;
    v15[5] = v16;
    v18 = *(StatusReg + 32) & 0xFFFFFFLL;
    v19 = 4351;
    if (v18 < 0x10FF)
    {
      v19 = *(StatusReg + 32) & 0xFFFFFFLL;
    }

    v20 = *(StatusReg + 224);
    if (v20 && atomic_fetch_add_explicit((v20 + 12), 1u, memory_order_relaxed) <= 0)
    {
      [OS_voucher retain];
    }

    v15[3] = v20;
    if (v18)
    {
      v21 = (HIDWORD(queue[10].isa) >> 30) & 1;
      if ((HIDWORD(queue[10].isa) & 0xFFF) == 0)
      {
        v21 = 1;
      }

      if (!v21)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v15[1] = v19;
LABEL_35:
    v15[6] = v13;
    *(isa + 5) = v15;
    if ((v5 & 0x8000000000000000) != 0)
    {
      if ((v5 & 0x4000000000000000) != 0)
      {
        if (-v5 >> 62)
        {
          v5 = -1;
        }

        else
        {
          v5 = -v5;
        }

        v22 = 2;
LABEL_43:
        *(isa + 30) |= 4 * v22;
        *(isa + 10) = v5;
        *(isa + 11) = v12 + v5;
        *(isa + 12) = -1;

        dispatch_activate(v13);
        return;
      }

      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    if (v5 >> 62)
    {
      v5 = -1;
    }

    if (_dispatch_host_time_nano2mach)
    {
      v12 = _dispatch_host_time_nano2mach(v12);
    }

    else
    {
      v23 = (3 * v12 * 0x624DD2F1A9FBE77uLL) >> 64;
      v12 = (v23 + ((3 * v12 - v23) >> 1)) >> 6;
    }

    goto LABEL_43;
  }

  dispatch_channel_async(queue, block);
}

void _dispatch_source_handler_dispose(uint64_t a1)
{
  if ((*a1 & 0x10) != 0)
  {
    _Block_release(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      if (add_explicit != 1)
      {
        qword_1EBC5B980 = "API MISUSE: Voucher over-release";
        __break(1u);
        return;
      }

      _voucher_xref_dispose(v2);
    }

    *(a1 + 24) = -1;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    v6 = *(v5 + 8) + 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6 > _dispatch_continuation_cache_limit)
  {

    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v5;
    *(a1 + 8) = v6;
    *(StatusReg + 176) = a1;
  }
}

void _dispatch_source_set_handler_slow(unint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 160);
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (*(a1 + 32))
  {
    if ((*a1 & 0x40) != 0)
    {
      *(a1 + 40) = *(v2 + 32);
    }
  }

  else
  {
    v4 = *(StatusReg + 176);
    if (v4)
    {
      v5 = *(v4 + 8) + 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a1);
    }

    else
    {
      *(a1 + 16) = v4;
      *(a1 + 8) = v5;
      *(StatusReg + 176) = a1;
    }

    a1 = 0;
  }

  v6 = atomic_exchange_explicit((*(v2 + 88) + 8 * v3 + 40), a1, memory_order_release);
  if (v6)
  {

    _dispatch_source_handler_dispose(v6);
  }
}

void _dispatch_source_handle_wlh_change(uint64_t a1)
{
  v1 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy after source was activated");
    }
  }

  else
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after source was activated";
    __break(1u);
  }
}

void _dispatch_source_registration_callout(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __swp(v3, (*(a1 + 88) + 56));
  if ((*(a1 + 80) & 0x10800000) != 0)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v4 = objc_autoreleasePoolPush();
      _dispatch_source_handler_dispose(v3);

      objc_autoreleasePoolPop(v4);
    }

    else
    {

      _dispatch_source_handler_dispose(v3);
    }
  }

  else
  {
    if ((*v3 & 0x40) != 0)
    {
      *(v3 + 40) = *(a1 + 32);
    }

    _dispatch_continuation_pop(v3, 0, a3, a2);
  }
}

void _dispatch_source_latch_and_call(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = *(a1 + 88);
  v8 = *(v7 + 40);
  __swp(v3, (v7 + 72));
  v9 = *(*v7 + 9);
  if (v9 == 3)
  {
    v10 = ~v3;
  }

  else if (v9 == 5)
  {
    if (v3)
    {
      v10 = v3 >> 1;
      v11 = *(a1 + 88);
      v12 = (v11 + 80);
      if (*(v11 + 80) <= 0x7FFFFFFFFFFFFFFEuLL)
      {
        v13 = *(v11 + 24) / 3u;
        if (v13 == 2)
        {
          v14 = clock_gettime_nsec_np(_CLOCK_REALTIME);
        }

        else
        {
          v14 = v13 == 1 ? mach_continuous_time() : mach_absolute_time();
        }

        if (v14 >= *v12)
        {
          v15 = *(v11 + 96);
          v16 = (v14 - *v12) / v15;
          if ((v16 + 1 + v10) >= 0)
          {
            v17 = v16 + 1;
          }

          else
          {
            v17 = v10 ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v15 > 0x7FFFFFFFFFFFFFFELL)
          {
            *v12 = -1;
            *(v11 + 88) = -1;
          }

          else
          {
            v18 = v17 * v15;
            v19 = v18 + *v12;
            v20 = *(v11 + 88) + v18;
            *(v11 + 80) = v19;
            *(v11 + 88) = v20;
          }

          v10 += v17;
        }
      }
    }

    else
    {
      v10 = v3 >> 1;
    }
  }

  else
  {
    v10 = v3;
    if (!v3)
    {
      v10 = 0;
      if (*(v7 + 28) == 233)
      {
        return;
      }
    }
  }

  *(v7 + 64) = v10;
  if (v8)
  {
    if (v3)
    {
      if (*(v7 + 28) == 242)
      {
        _dispatch_source_latch_and_call_cold_1(v8);
      }

      _dispatch_continuation_pop(v8, 0, a3, a2);
      if (*(v7 + 28) == 242)
      {
        v21 = _dispatch_source_latch_and_call_cold_2();
      }

      if ((*(v7 + 29) & 2) != 0)
      {
        if ((v3 & 1) != 0 && *(v7 + 104))
        {
          _dispatch_timer_unote_configure(*(a1 + 88));
        }

        if ((*(v7 + 30) & 0x40) != 0)
        {
          if ((a3 & 0x1000000) != 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          __swp(v21, (v7 + 40));
          if (v21)
          {
            _dispatch_source_handler_dispose(v21);
          }

          if (v22)
          {
            objc_autoreleasePoolPop(v22);
          }

          dispatch_release(a1);
        }
      }
    }

    else
    {
      _dispatch_source_latch_and_call_cold_3();
    }
  }

  else
  {
    _dispatch_source_latch_and_call_cold_4();
  }
}

void _os_workgroup_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v1[1](*v1);

    free(v1);
  }
}

uint64_t _os_workgroup_interval_xref_dispose(uint64_t result)
{
  if ((*(result + 24) & 8) != 0)
  {
    _os_workgroup_interval_xref_dispose_cold_1();
  }

  return result;
}

void _os_workgroup_dispose(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 0, -1))
    {
      _os_assumes_log();
      if ((v2 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    if (work_interval_destroy())
    {
      _os_assumes_log();
    }
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v5 = *(a1 + 16);

    free(v5);
  }
}

uint64_t _os_workgroup_tsd_cleanup(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    _os_workgroup_tsd_cleanup_cold_1(v2, result);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void _os_workgroup_join_token_tsd_cleanup(void *a1, const char *a2)
{
  if (a1)
  {
    if (a1[1])
    {
      os_eventlink_create_with_port_cold_1();
    }

    _os_workgroup_leave_update_wg(a1[2], a2);

    free(a1);
  }
}

void *_os_workgroup_leave_update_wg(uint64_t a1, const char *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != a1)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!atomic_fetch_add_explicit((a1 + 60), 0xFFFFFFFF, memory_order_relaxed))
  {
    _os_workgroup_leave_update_wg_cold_2();
  }

  result = *(StatusReg + 928);
  *(StatusReg + 928) = 0;
  if (result)
  {

    return _os_object_release_internal(result, a2);
  }

  return result;
}

uint64_t _os_workgroup_get_backing_workinterval(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t os_workgroup_interval_data_set_flags(_DWORD *a1, unsigned int a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if (a2 <= 1 && *a1 == 1386695757)
  {
    result = 0;
    a1[1] = a2;
  }

  return result;
}

uint64_t os_workgroup_interval_data_set_complexity(uint64_t a1, int a2, uint64_t a3)
{
  if (a1 && *a1 == 1386695757)
  {
    switch(a2)
    {
      case 2:
LABEL_9:
        v3 = 0;
        *(a1 + 24) = a3;
        return v3;
      case 1:
        a3 = 1;
        goto LABEL_9;
      case 0:
        a3 = 0;
        goto LABEL_9;
    }
  }

  return 22;
}

uint64_t os_workgroup_interval_data_set_telemetry(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1 && a4 == 40)
  {
    result = 0;
    *(a1 + 16) = 2621441;
    *(a1 + 8) = a3;
  }

  else
  {
    result = 22;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  }

  return result;
}

uint64_t os_workgroup_attr_set_interval_type(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1 == 799564740 || *a1 == 799564724;
  if (!v3 || (a2 - 1) > 9)
  {
    return 22;
  }

  result = 0;
  *(a1 + 8) = a2;
  return result;
}

uint64_t os_workgroup_attr_set_flags(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 799564740 && *a1 != 799564724)
  {
    return 22;
  }

  result = 0;
  a1[1] = a2;
  return result;
}

uint64_t os_workgroup_attr_set_telemetry_flavor(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v3 = *a1 == 799564740 || *a1 == 799564724;
  if (!v3 || a2 != 1)
  {
    return 22;
  }

  result = 0;
  *(a1 + 10) = 1;
  return result;
}

void *os_workgroup_interval_copy_current_4AudioToolbox()
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 928);
  if (v0 && v0[28] - 3 <= 1)
  {
    return os_retain(v0);
  }

  else
  {
    return 0;
  }
}

_DWORD *os_workgroup_create(const char *a1, __int128 *a2)
{
  if (a2)
  {
    if (*a2 != 799564740 && *a2 != 799564724)
    {
      goto LABEL_17;
    }

    v4 = a2[1];
    v13 = *a2;
    v14 = v4;
    v5 = a2[3];
    v15 = a2[2];
    v16 = v5;
    v6 = v13 == 799564724 || v13 == 799564740;
    if (!v6 || (LODWORD(v13) = 2015762650, WORD4(v13)))
    {
LABEL_17:
      v7 = 0;
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v9 = 22;
LABEL_20:
      *v8 = v9;
      return v7;
    }
  }

  else
  {
    v13 = _os_workgroup_attr_default;
    v14 = unk_1BB5813F8;
    v15 = xmmword_1BB581408;
    v16 = unk_1BB581418;
  }

  if ((BYTE4(v13) & 2) == 0 || WORD5(v13))
  {
    v7 = 0;
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v9 = 45;
    goto LABEL_20;
  }

  work_interval = _os_workgroup_create_work_interval(&v13);
  if (!work_interval)
  {
    return 0;
  }

  v12 = work_interval;
  v7 = _os_object_alloc(OS_os_workgroup, 64);
  *(v7 + 4) = v12;
  v7[10] = 0;
  *(v7 + 3) = 1;
  *(v7 + 28) = 0;
  _os_workgroup_set_name(v7, a1);
  return v7;
}

uint64_t _os_workgroup_create_work_interval(uint64_t a1)
{
  v2 = _wg_type_to_wi_flags(*(a1 + 8));
  if ((*(a1 + 4) & 4) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = v3 | v2 | ((*(a1 + 12) & 1) << 7) | 0x100;
  *(a1 + 10);
  v5 = work_interval_create();
  result = 0;
  if (!v5)
  {
    v7 = work_interval_copy_port();
    result = 0;
    if (v7 < 0)
    {
      work_interval_destroy();
      return 0;
    }
  }

  return result;
}

void _os_workgroup_set_name(uint64_t a1, const char *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _dispatch_strdup_if_mutable(a2);
    if (v4 != v2)
    {
      *(a1 + 24) |= 4uLL;
      v2 = v4;
    }
  }

  *(a1 + 16) = v2;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = (*(a1 + 24) & 1) == 0;
    *(a1 + 24);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (v5 == -1)
    {
      _os_workgroup_set_name_cold_1();
    }

    if (v2)
    {
      if (__strlcpy_chk())
      {
        v7 = *(a1 + 40);
        if (__work_interval_ctl() == -1)
        {
          v8 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (v8)
          {
            _dispatch_bug(544, v8);
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

_DWORD *os_workgroup_interval_create(const char *a1, int a2, __int128 *a3)
{
  if (a3)
  {
    if (*a3 != 799564740 && *a3 != 799564724)
    {
      goto LABEL_22;
    }

    v6 = a3[1];
    v16 = *a3;
    v17 = v6;
    v7 = a3[3];
    v18 = a3[2];
    v19 = v7;
    if (v16 == 799564724)
    {
      v9 = DWORD1(v16);
      if (!DWORD1(v16))
      {
        v9 = 2;
      }

      DWORD1(v16) = v9;
      if (WORD4(v16) <= 1u)
      {
        v8 = 1;
      }

      else
      {
        v8 = WORD4(v16);
      }

      WORD4(v16) = v8;
    }

    else
    {
      if (v16 != 799564740)
      {
        goto LABEL_22;
      }

      v8 = WORD4(v16);
    }

    LODWORD(v16) = 2015762650;
    if ((v8 - 1) >= 0xA)
    {
LABEL_22:
      v10 = 0;
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v12 = 22;
      goto LABEL_23;
    }
  }

  else
  {
    v16 = _os_workgroup_interval_attr_default;
    v17 = unk_1BB581438;
    v18 = xmmword_1BB581448;
    v19 = unk_1BB581458;
    LOWORD(v8) = 1;
  }

  if ((BYTE4(v16) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((BYTE4(v16) & 2) == 0)
  {
    v10 = 0;
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v12 = 45;
LABEL_23:
    *v11 = v12;
    return v10;
  }

  work_interval = _os_workgroup_create_work_interval(&v16);
  if (!work_interval)
  {
    return 0;
  }

  v15 = work_interval;
  v10 = _os_object_alloc(OS_os_workgroup_interval, 80);
  *(v10 + 4) = v15;
  v10[10] = 0;
  v10[16] = a2;
  *(v10 + 9) = work_interval_instance_alloc();
  v10[17] = 0;
  *(v10 + 28) = v8;
  *(v10 + 3) = 1;
  *(v10 + 22) = WORD5(v16);
  _os_workgroup_set_name(v10, a1);
  return v10;
}

_DWORD *os_workgroup_create_with_workload_id(const char *a1, char *a2, __int128 *a3)
{
  if (a3)
  {
    if (*a3 != 799564740 && *a3 != 799564724)
    {
      goto LABEL_32;
    }

    v6 = a3[1];
    v19 = *a3;
    v20 = v6;
    v7 = a3[3];
    v21 = a3[2];
    v22 = v7;
    if (v19 != 799564740)
    {
      if (v19 != 799564724)
      {
LABEL_32:
        os_workgroup_create_with_workload_id_cold_1();
        return 0;
      }

      v8 = DWORD1(v19);
      if (!DWORD1(v19))
      {
        v8 = 2;
      }

      DWORD1(v19) = v8;
    }

    LODWORD(v19) = 2015762650;
  }

  else
  {
    v19 = _os_workgroup_with_workload_id_attr_default;
    v20 = unk_1BB581478;
    v21 = xmmword_1BB581488;
    v22 = unk_1BB581498;
  }

  LOWORD(v18) = 0;
  v9 = _os_workgroup_lookup_type_from_workload_id(a2, &v19 + 3, &v18);
  if (v9)
  {
    if (!WORD4(v19) || WORD4(v19) == v18)
    {
      WORD4(v19) = v9;
    }

    else if (v9 != WORD4(v19))
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_create_with_workload_id", a2, WORD4(v19));
      v10 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_31:
      v12 = *(StatusReg + 8);
      v13 = 22;
      goto LABEL_24;
    }
  }

  if (DWORD1(v19) != 2)
  {
    os_workgroup_create_with_workload_id_cold_2(SDWORD1(v19));
    return 0;
  }

  if (WORD4(v19))
  {
    _dispatch_log("BUG IN CLIENT of %s: Non-default workload type: %s (%hd)", "os_workgroup_create_with_workload_id", a2, WORD4(v19));
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_31;
  }

  if (!WORD5(v19))
  {
    v18 = 0;
    work_interval = _os_workgroup_create_work_interval(&v19);
    if (work_interval)
    {
      v15 = work_interval;
      v10 = _os_object_alloc(OS_os_workgroup, 64);
      *(v10 + 4) = v15;
      v10[10] = v18;
      *(v10 + 3) = 1;
      *(v10 + 28) = 0;
      if (!_os_workgroup_set_work_interval_workload_id(v10, a2, SHIDWORD(v19)))
      {
        _os_workgroup_set_name(v10, a1);
        return v10;
      }

      _os_object_release(v10, v16);
    }

    return 0;
  }

  v10 = 0;
  v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  v13 = 45;
LABEL_24:
  *v12 = v13;
  return v10;
}

uint64_t _os_workgroup_set_work_interval_workload_id(uint64_t a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 + 1 <= 1)
  {
    _os_workgroup_set_work_interval_workload_id_cold_1(v4);
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v6 = a3 & 0xFFFFFFFE;
  __strlcpy_chk();
  _wg_type_to_wi_flags(*(a1 + 56));
  v7 = *(a1 + 40);
  v8 = __work_interval_ctl();
  if (v8)
  {
    if (v8 != -1)
    {
      v10 = 0;
      v9 = v8;
      goto LABEL_12;
    }

    v9 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v9)
    {
      _dispatch_bug(586, v9);
      v10 = 0;
      LODWORD(v8) = v9;
      goto LABEL_12;
    }
  }

  v10 = v6;
  if (v6)
  {
    LODWORD(v8) = 0;
    v9 = 37;
LABEL_12:
    _dispatch_log("BUG IN CLIENT of %s: Unable to set kernel workload ID: %s (0x%x) -> %d (0x%x)", "_os_workgroup_set_work_interval_workload_id", a2, v6, v8, v10);
    goto LABEL_9;
  }

  v9 = 0;
  *(a1 + 24) |= 0x10uLL;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

_DWORD *os_workgroup_interval_create_with_workload_id(const char *a1, char *a2, int a3, __int128 *a4)
{
  if (a4)
  {
    if (*a4 != 799564740 && *a4 != 799564724)
    {
      goto LABEL_33;
    }

    v8 = a4[1];
    v21 = *a4;
    v22 = v8;
    v9 = a4[3];
    v23 = a4[2];
    v24 = v9;
    if (v21 != 799564740)
    {
      if (v21 != 799564724)
      {
LABEL_33:
        os_workgroup_interval_create_with_workload_id_cold_1();
        return 0;
      }

      v10 = DWORD1(v21);
      if (!DWORD1(v21))
      {
        v10 = 2;
      }

      DWORD1(v21) = v10;
      v11 = WORD4(v21);
      if (WORD4(v21) <= 1u)
      {
        v11 = 1;
      }

      WORD4(v21) = v11;
    }

    LODWORD(v21) = 2015762650;
  }

  else
  {
    v21 = _os_workgroup_interval_attr_default;
    v22 = unk_1BB581438;
    v23 = xmmword_1BB581448;
    v24 = unk_1BB581458;
  }

  LOWORD(v20) = 0;
  v12 = _os_workgroup_lookup_type_from_workload_id(a2, &v21 + 3, &v20);
  if (v12)
  {
    if (WORD4(v21) == 1 || WORD4(v21) == v20)
    {
      WORD4(v21) = v12;
    }

    else if (v12 != WORD4(v21))
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and attribute interval type: %s vs %hd", "os_workgroup_interval_create_with_workload_id", a2, WORD4(v21));
      v13 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_31:
      **(StatusReg + 8) = 22;
      return v13;
    }
  }

  if (DWORD1(v21) == 2)
  {
    v15 = WORD4(v21);
    if (WORD4(v21) - 1 >= 0xA)
    {
      _dispatch_log("BUG IN CLIENT of %s: Invalid workload interval type: %s (%hd)", "os_workgroup_interval_create_with_workload_id", a2, WORD4(v21));
      v13 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      goto LABEL_31;
    }

    v20 = 0;
    work_interval = _os_workgroup_create_work_interval(&v21);
    if (work_interval)
    {
      v17 = work_interval;
      v13 = _os_object_alloc(OS_os_workgroup_interval, 80);
      *(v13 + 4) = v17;
      v13[10] = v20;
      v13[16] = a3;
      *(v13 + 9) = work_interval_instance_alloc();
      v13[17] = 0;
      *(v13 + 28) = v15;
      *(v13 + 3) = 1;
      *(v13 + 22) = WORD5(v21);
      if (!_os_workgroup_set_work_interval_workload_id(v13, a2, SHIDWORD(v21)))
      {
        _os_workgroup_set_name(v13, a1);
        return v13;
      }

      _os_object_release(v13, v18);
    }
  }

  else
  {
    os_workgroup_interval_create_with_workload_id_cold_2(SDWORD1(v21));
  }

  return 0;
}

int os_workgroup_join(os_workgroup_t wg, os_workgroup_join_token_t token_out)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928))
  {
    v3 = *(StatusReg + 8);
    result = 37;
LABEL_9:
    *v3 = result;
    return result;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 2) != 0)
  {
    v3 = *(StatusReg + 8);
    result = 22;
    goto LABEL_9;
  }

  if (LODWORD(wg[5].super.super.isa))
  {
    if (isa)
    {
      v8 = wg[4].super.super.isa;
      if (work_interval_join())
      {
        return **(StatusReg + 8);
      }
    }

    else if (work_interval_join_port())
    {
      return **(StatusReg + 8);
    }
  }

  _os_workgroup_join_update_wg(wg, token_out);
  return 0;
}

void os_workgroup_leave(os_workgroup_t wg, os_workgroup_join_token_t token)
{
  if (token->sig != 1298094680)
  {
    os_workgroup_leave_cold_1();
  }

  v2 = *token->opaque;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (v2 != *(StatusReg + 24))
  {
    os_workgroup_leave_cold_2();
  }

  v5 = *(StatusReg + 928);
  if (v5 != wg || *&token->opaque[12] != v5)
  {
    os_workgroup_leave_cold_3();
  }

  if (*&token->opaque[4])
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (LODWORD(wg[5].super.super.isa) && work_interval_leave())
  {
    os_workgroup_leave_cold_5();
  }

  _os_workgroup_leave_update_wg(wg, token);
}

os_workgroup_parallel_t os_workgroup_parallel_create(const char *name, os_workgroup_attr_t attr)
{
  if (!attr)
  {
    goto LABEL_19;
  }

  sig = attr->sig;
  if (attr->sig != 799564724 && sig != 799564740)
  {
    goto LABEL_15;
  }

  v5 = *attr->opaque;
  if (sig != 799564740)
  {
    if (sig != 799564724)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      LOBYTE(v5) = 6;
    }

    if (!*&attr->opaque[4])
    {
LABEL_13:
      if ((v5 & 2) == 0 || *&attr->opaque[6])
      {
        v6 = 0;
        v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        v8 = 45;
        goto LABEL_18;
      }

LABEL_19:
      v6 = _os_object_alloc(OS_os_workgroup_parallel, 64);
      v6[4].super.super.isa = 0;
      v6[3].super.super.isa = 1;
      LOWORD(v6[7].super.super.isa) = 64;
      _os_workgroup_set_name(v6, name);
      return v6;
    }
  }

  if (*&attr->opaque[4] == 64)
  {
    goto LABEL_13;
  }

LABEL_15:
  v6 = 0;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  v8 = 22;
LABEL_18:
  *v7 = v8;
  return v6;
}

int os_workgroup_copy_port(os_workgroup_t wg, mach_port_t *mach_port_out)
{
  if (!wg)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (!mach_port_out)
  {
    os_eventlink_create_with_port_cold_1();
  }

  *mach_port_out = 0;
  if ((wg[3].super.super.isa & 2) != 0)
  {
    return 22;
  }

  isa = wg[5].super.super.isa;
  if (!isa)
  {
    return 22;
  }

  result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], isa, 0, 1);
  if (result)
  {
    os_workgroup_copy_port_cold_1();
    return 12;
  }

  else
  {
    *mach_port_out = wg[5].super.super.isa;
  }

  return result;
}

os_workgroup_t os_workgroup_create_with_port(const char *name, mach_port_t mach_port)
{
  v7 = *MEMORY[0x1E69E9840];
  if (mach_port - 1 >= 0xFFFFFFFE)
  {
    v4 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
  }

  else
  {
    if (!work_interval_get_flags_from_port())
    {
      if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], mach_port, 0, 1))
      {
        v4 = _os_object_alloc(OS_os_workgroup, 64);
        v4[10] = mach_port;
        *(v4 + 28) = 0;
        _os_workgroup_set_name(v4, name);
        goto LABEL_7;
      }

      os_workgroup_create_with_port_cold_1();
    }

    v4 = 0;
  }

LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

_DWORD *os_workgroup_create_with_workload_id_and_port(const char *a1, char *a2, mach_port_name_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 - 1 >= 0xFFFFFFFE)
  {
    os_workgroup_create_with_workload_id_and_port_cold_1(a3);
    goto LABEL_30;
  }

  v17 = 0;
  if (work_interval_get_flags_from_port())
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid mach port 0x%x", "os_workgroup_create_with_workload_id_and_port", a3);
    goto LABEL_30;
  }

  v6 = v17;
  v7 = v17 >> 28;
  if (v17 >> 28 > 3)
  {
    if (v17 >> 28 > 5)
    {
      if (v7 == 6)
      {
        v8 = 9;
        goto LABEL_22;
      }

      if (v7 == 7)
      {
        v8 = 10;
        goto LABEL_22;
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = 7;
        goto LABEL_22;
      }

      if (v7 == 5)
      {
        v8 = 8;
        goto LABEL_22;
      }
    }

LABEL_36:
    os_workgroup_create_with_port_cold_2(v18, v17);
  }

  if (v17 >> 28 > 1)
  {
    if (v7 == 2)
    {
      v8 = 5;
      goto LABEL_22;
    }

    if (v7 == 3)
    {
      v8 = 2;
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v8 = 0;
    goto LABEL_22;
  }

  if (v7 != 1)
  {
    goto LABEL_36;
  }

  v8 = 4;
LABEL_22:
  v18[0] = 0;
  LOWORD(v17) = 0;
  v9 = _os_workgroup_lookup_type_from_workload_id(a2, v18, &v17);
  if (v9)
  {
    v10 = v9;
    v11 = v6 & 0xF0000000;
    if ((_wg_type_to_wi_flags(v17) & 0x70000000) != v11 && (_wg_type_to_wi_flags(v10) & 0x70000000) != v11)
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and port interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_port", a2, v8);
      v12 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      goto LABEL_31;
    }
  }

  if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], a3, 0, 1))
  {
    os_workgroup_create_with_workload_id_and_port_cold_2(a3);
    goto LABEL_30;
  }

  v12 = _os_object_alloc(OS_os_workgroup, 64);
  v12[10] = a3;
  *(v12 + 28) = v8;
  v13 = _os_workgroup_set_work_interval_workload_id(v12, a2, v18[0]);
  if (v13 && v13 != 37)
  {
    _os_object_release(v12, v14);
LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  _os_workgroup_set_name(v12, a1);
LABEL_31:
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

os_workgroup_t os_workgroup_create_with_workgroup(const char *name, os_workgroup_t wg)
{
  if ((wg[3].super.super.isa & 2) != 0)
  {
    v4 = 0;
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
    return v4;
  }

  v4 = _os_object_alloc(OS_os_workgroup, 64);
  LOWORD(v4[7].super.super.isa) = wg[7].super.super.isa;
  isa = wg[5].super.super.isa;
  if (!isa)
  {
LABEL_7:
    _os_workgroup_set_name(v4, name);
    return v4;
  }

  if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], isa, 0, 1))
  {
    LODWORD(v4[5].super.super.isa) = wg[5].super.super.isa;
    goto LABEL_7;
  }

  free(v4);
  return 0;
}

_DWORD *os_workgroup_create_with_workload_id_and_workgroup(const char *a1, char *a2, uint64_t a3)
{
  if ((*(a3 + 24) & 2) != 0)
  {
    os_workgroup_create_with_workload_id_and_workgroup_cold_1();
    return 0;
  }

  v17 = 0;
  v6 = _wg_type_to_wi_flags(*(a3 + 56));
  v18 = 0;
  v7 = _os_workgroup_lookup_type_from_workload_id(a2, &v17, &v18);
  if (v7)
  {
    v8 = v7;
    v9 = v6 & 0x70000000;
    if ((_wg_type_to_wi_flags(v18) & 0x70000000) != v9 && (_wg_type_to_wi_flags(v8) & 0x70000000) != v9)
    {
      _dispatch_log("BUG IN CLIENT of %s: Mismatched workload ID and workgroup interval type: %s vs %hd", "os_workgroup_create_with_workload_id_and_workgroup", a2, *(a3 + 56));
      v10 = 0;
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
      return v10;
    }
  }

  v10 = _os_object_alloc(OS_os_workgroup, 64);
  *(v10 + 28) = *(a3 + 56);
  v11 = *(a3 + 40);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], v11, 0, 1);
  v13 = *(a3 + 40);
  if (v12)
  {
    _dispatch_log("BUG IN CLIENT of %s: Invalid workgroup port 0x%x", "os_workgroup_create_with_workload_id_and_workgroup", v13);
    free(v10);
    return 0;
  }

  v10[10] = v13;
  v14 = _os_workgroup_set_work_interval_workload_id(v10, a2, v17);
  if (v14 && v14 != 37)
  {
    _os_object_release(v10, v15);
    return 0;
  }

LABEL_9:
  _os_workgroup_set_name(v10, a1);
  return v10;
}

int os_workgroup_max_parallel_threads(os_workgroup_t wg, os_workgroup_mpt_attr_t attr)
{
  if (!wg)
  {
    os_eventlink_create_with_port_cold_1();
  }

  if (LOWORD(wg[7].super.super.isa) - 3 > 1)
  {

    return pthread_qos_max_parallelism();
  }

  else
  {

    return MEMORY[0x1EEE74348](0, attr);
  }
}

void *_os_workgroup_join_update_wg(uint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928))
  {
    _os_workgroup_join_update_wg_cold_1();
  }

  atomic_fetch_add_explicit((a1 + 60), 1u, memory_order_relaxed);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(StatusReg + 24);
  *a2 = 1298094680;
  *(a2 + 4) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  if (a1)
  {
    _os_object_retain_internal(a1);
  }

  result = *(StatusReg + 928);
  *(StatusReg + 928) = a1;
  if (result)
  {

    return _os_object_release_internal(result, a2);
  }

  return result;
}

int os_workgroup_set_working_arena(os_workgroup_t wg, void *arena, uint32_t max_workers, os_workgroup_working_arena_destructor_t destructor)
{
  _X0 = malloc_type_calloc(4 * max_workers + 24, 1uLL, 0x80929B4BuLL);
  if (_X0)
  {
    _X0[4] = max_workers;
    *_X0 = arena;
    *(_X0 + 1) = destructor;
    _X2 = wg[6].super.super.isa;
    do
    {
      if (wg[7].super.super.isa >> 32)
      {
        free(_X0);
        v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        result = 16;
        goto LABEL_9;
      }

      v10 = _X2;
      _X3 = wg[7].super.super.isa;
      __asm { CASP            X2, X3, X0, X1, [X9] }
    }

    while (_X2 != v10);
    if (v10)
    {
      (*(v10 + 1))(*v10);
      free(v10);
    }

    return 0;
  }

  else
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    result = 12;
LABEL_9:
    *v17 = result;
  }

  return result;
}

void *__cdecl os_workgroup_get_working_arena(os_workgroup_t wg, os_workgroup_index *index_out)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  isa = wg[6].super.super.isa;
  if (!isa)
  {
    return 0;
  }

  if (index_out)
  {
    v4 = *(isa + 4);
    if (!v4)
    {
      os_workgroup_get_working_arena_cold_3();
    }

    v5 = 0;
    v6 = isa + 24;
    while (*&v6[4 * v5] != *(StatusReg + 24))
    {
      if (v4 == ++v5)
      {
        LODWORD(v5) = atomic_fetch_add_explicit(isa + 5, 1u, memory_order_relaxed);
        if (v5 >= v4)
        {
          os_workgroup_get_working_arena_cold_2();
        }

        *&v6[4 * v5] = *(StatusReg + 24);
        break;
      }
    }

    *index_out = v5;
  }

  return *isa;
}

int os_workgroup_interval_start(os_workgroup_interval_t wg, uint64_t start, uint64_t deadline, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  if (data && *&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1 || deadline < start || LODWORD(wg[8].super.super.isa) == 32 && mach_absolute_time() < start)
  {
    v7 = *(StatusReg + 8);
    v8 = 22;
LABEL_7:
    *v7 = v8;
    return v8;
  }

  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    v7 = *(StatusReg + 8);
    v8 = 16;
    goto LABEL_7;
  }

  if (data && data->sig == 1386695757)
  {
    if (data->opaque[0])
    {
      v10 = 1;
    }

    else
    {
      v10 = *&data->opaque[20];
    }
  }

  else
  {
    v10 = 0;
  }

  isa = wg[3].super.super.isa;
  while (1)
  {
    if ((isa & 0xA) != 0)
    {
      v8 = 22;
LABEL_34:
      os_unfair_lock_unlock(&wg[8].super.super.isa + 1);
      v7 = *(StatusReg + 8);
      goto LABEL_7;
    }

    if ((isa & 1) == 0)
    {
      v8 = 1;
      goto LABEL_34;
    }

    if (v10 && (isa & 0x10) == 0)
    {
      break;
    }

    v12 = isa;
    atomic_compare_exchange_strong_explicit(&wg[3], &v12, isa | 8, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == isa;
    isa = v12;
    if (v13)
    {
      goto LABEL_25;
    }
  }

  **(StatusReg + 8) = 22;
LABEL_25:
  v14 = wg[9].super.super.isa;
  work_interval_instance_clear();
  work_interval_instance_set_start();
  work_interval_instance_set_deadline();
  work_interval_instance_set_complexity();
  v8 = work_interval_instance_start();
  if (v8)
  {
    atomic_fetch_and_explicit(&wg[3], 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
  }

  else if (data && *&data->opaque[12] == 1)
  {
    _os_workgroup_interval_copy_telemetry_data(wg, data);
  }

  os_unfair_lock_unlock(&wg[8].super.super.isa + 1);
  return v8;
}

double _os_workgroup_interval_copy_telemetry_data(uint64_t a1, uint64_t a2)
{
  memset(v6, 0, 40);
  v3 = *(a1 + 72);
  work_interval_instance_get_telemetry_data();
  if (*(a2 + 16) == 1)
  {
    v5 = *(a2 + 8);
    *v5 = *&v6[0];
    *(v5 + 24) = *(&v6[1] + 8);
    result = *(v6 + 1);
    *(v5 + 8) = *(v6 + 8);
  }

  return result;
}

int os_workgroup_interval_update(os_workgroup_interval_t wg, uint64_t deadline, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  v4 = data;
  if (!data)
  {
    v6 = &wg[8].super.super.isa + 1;
    if (os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = *(StatusReg + 8);
    LODWORD(v4) = 16;
    goto LABEL_19;
  }

  if (*&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1)
  {
    goto LABEL_18;
  }

  v6 = &wg[8].super.super.isa + 1;
  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    goto LABEL_13;
  }

  if (v4->sig != 1386695757)
  {
LABEL_10:
    v7 = 0;
LABEL_11:
    isa = wg[3].super.super.isa;
    if ((isa & 1) == 0)
    {
LABEL_12:
      os_unfair_lock_unlock(v6);
      v9 = *(StatusReg + 8);
      LODWORD(v4) = 1;
LABEL_19:
      *v9 = v4;
      return v4;
    }

    if (v7 && (isa & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v4->opaque[0] & 1) == 0)
  {
    v7 = *&v4->opaque[20];
    goto LABEL_11;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((isa & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  if ((isa & 8) == 0)
  {
LABEL_17:
    os_unfair_lock_unlock(v6);
LABEL_18:
    v9 = *(StatusReg + 8);
    LODWORD(v4) = 22;
    goto LABEL_19;
  }

  v11 = wg[9].super.super.isa;
  work_interval_instance_set_deadline();
  work_interval_instance_set_complexity();
  if (work_interval_instance_update())
  {
    LODWORD(v4) = **(StatusReg + 8);
  }

  else if (v4)
  {
    if (*&v4->opaque[12] == 1)
    {
      _os_workgroup_interval_copy_telemetry_data(wg, v4);
    }

    LODWORD(v4) = 0;
  }

  os_unfair_lock_unlock(v6);
  return v4;
}

int os_workgroup_interval_finish(os_workgroup_interval_t wg, os_workgroup_interval_data_t data)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (*(StatusReg + 928) != wg)
  {
    os_workgroup_get_working_arena_cold_1();
  }

  v3 = data;
  if (!data)
  {
    v5 = &wg[8].super.super.isa + 1;
    if (os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    v8 = *(StatusReg + 8);
    LODWORD(v3) = 16;
    goto LABEL_19;
  }

  if (*&data->opaque[12] == 1 && WORD2(wg[5].super.super.isa) != 1)
  {
    goto LABEL_18;
  }

  v5 = &wg[8].super.super.isa + 1;
  if (!os_unfair_lock_trylock(&wg[8].super.super.isa + 1))
  {
    goto LABEL_13;
  }

  if (v3->sig != 1386695757)
  {
LABEL_10:
    v6 = 0;
LABEL_11:
    isa = wg[3].super.super.isa;
    if ((isa & 1) == 0)
    {
LABEL_12:
      os_unfair_lock_unlock(v5);
      v8 = *(StatusReg + 8);
      LODWORD(v3) = 1;
LABEL_19:
      *v8 = v3;
      return v3;
    }

    v9 = &wg[3];
    if (v6 && (isa & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v3->opaque[0] & 1) == 0)
  {
    v6 = *&v3->opaque[20];
    goto LABEL_11;
  }

  isa = wg[3].super.super.isa;
  if ((isa & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = &wg[3];
  if ((isa & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  if ((isa & 8) == 0)
  {
LABEL_17:
    os_unfair_lock_unlock(v5);
LABEL_18:
    v8 = *(StatusReg + 8);
    LODWORD(v3) = 22;
    goto LABEL_19;
  }

  v11 = wg[9].super.super.isa;
  if (LODWORD(wg[8].super.super.isa) == 32)
  {
    mach_absolute_time();
  }

  work_interval_instance_set_finish();
  work_interval_instance_set_complexity();
  if (work_interval_instance_finish())
  {
    LODWORD(v3) = **(StatusReg + 8);
  }

  else
  {
    atomic_fetch_and_explicit(v9, 0xFFFFFFFFFFFFFFF7, memory_order_relaxed);
    if (v3)
    {
      if (*&v3->opaque[12] == 1)
      {
        _os_workgroup_interval_copy_telemetry_data(wg, v3);
      }

      LODWORD(v3) = 0;
    }
  }

  os_unfair_lock_unlock(v5);
  return v3;
}

uint64_t _os_workgroup_pthread_create_with_workgroup(pthread_t *a1, void *a2, const pthread_attr_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = _dispatch_calloc_typed(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  _os_object_retain_internal(a2);
  *v10 = a2;
  v10[1] = a4;
  v10[2] = a5;
  v12 = pthread_create(a1, a3, _os_workgroup_pthread_start, v10);
  if (v12)
  {
    _os_object_release_internal(a2, v11);
    free(v10);
  }

  return v12;
}

uint64_t _os_workgroup_pthread_start(OS_os_workgroup **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  free(a1);
  memset(&v8, 0, sizeof(v8));
  v4 = os_workgroup_join(v1, &v8);
  if (v4)
  {
    _os_workgroup_pthread_start_cold_1(v4);
  }

  v5 = (v2)(v3);
  os_workgroup_leave(v1, &v8);
  _os_object_release_internal(v1, v6);
  return v5;
}

uint64_t _wg_type_to_wi_flags(unsigned int a1)
{
  if (a1 >= 0xB)
  {
    _wg_type_to_wi_flags_cold_1();
  }

  return dword_1BB5814A8[a1];
}

uint64_t _os_workgroup_lookup_type_from_workload_id(char *a1, unsigned int *a2, _WORD *a3)
{
  if (!a1)
  {
    _os_workgroup_lookup_type_from_workload_id_cold_2();
  }

  v6 = 0;
  v7 = &dword_1E7FB13EC;
  while (strcasecmp(a1, *(v7 - 3)))
  {
    ++v6;
    v7 += 4;
    if (v6 == 4)
    {
      v8 = 0;
      result = 0;
      goto LABEL_8;
    }
  }

  result = *(v7 - 2);
  if (!*(v7 - 2))
  {
    _os_workgroup_lookup_type_from_workload_id_cold_1(v6);
  }

  v8 = *v7 & 0xFFFFFFFA | 1;
LABEL_8:
  if (v8 <= 1)
  {
    v8 = 1;
  }

  *a2 = v8;
  *a3 = result;
  return result;
}

uint64_t _dispatch_wait_for_enqueuer(unint64_t *a1)
{
  v1 = -10;
  while (1)
  {
    v2 = __ldxr(a1);
    if (v2)
    {
      break;
    }

    __wfe();
    if (__CFADD__(v1++, 1))
    {
      return __DISPATCH_WAIT_FOR_ENQUEUER__(a1);
    }
  }

  __clrex();
  return v2;
}

uint64_t __DISPATCH_WAIT_FOR_ENQUEUER__(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = 1;
    do
    {
      _pthread_yield_to_enqueuer_4dispatch();
      result = *a1;
      ++v3;
    }

    while (!*a1);
  }

  return result;
}

void dispatch_mach_hooks_install_4libxpc(void *a1)
{
  if (*a1 <= 2uLL)
  {
    dispatch_mach_hooks_install_4libxpc_cold_2(a1);
  }

  v1 = &_dispatch_mach_xpc_hooks_default;
  atomic_compare_exchange_strong_explicit(&_dispatch_mach_xpc_hooks, &v1, a1, memory_order_relaxed, memory_order_relaxed);
  if (v1 != &_dispatch_mach_xpc_hooks_default)
  {
    dispatch_mach_hooks_install_4libxpc_cold_1();
  }
}

uint64_t dispatch_mach_create(const char *a1, __objc2_class **a2, void *aBlock)
{
  v5 = _dispatch_Block_copy(aBlock);
  if (v5[2])
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  return _dispatch_mach_create(a1, a2, v5, v6, 1u);
}

uint64_t _dispatch_mach_create(const char *a1, __objc2_class **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = 4194305;
  if (a1)
  {
    v11 = _dispatch_strdup_if_mutable(a1);
    if (v11 == a1)
    {
      v9 = 4194305;
    }

    else
    {
      v9 = 6291457;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _dispatch_object_alloc(OS_dispatch_mach, 136);
  v13 = v12;
  *(v12 + 8) += 2;
  if (*(*v12 + 40) == 19)
  {
    ++*(v12 + 8);
  }

  *(v12 + 16) = -1985229329;
  *(v12 + 80) = v9;
  *(v12 + 56) = 0x19FFE0000000000;
  *(v12 + 64) = atomic_fetch_add_explicit(&_dispatch_queue_serial_numbers, 1uLL, memory_order_relaxed);
  *(v12 + 72) = v11;
  *(v12 + 116) = (8 * a5) & 0x10 | (((a5 >> 2) & 1) << 7) | *(v12 + 116) & 0xFF6F;
  v14 = off_1F3A43C60(&_dispatch_mach_type_recv, 0, 0);
  v15 = v14[29];
  *(v14 + 1) = ~v13;
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 5) = v16;
  *(v14 + 6) = a3;
  v14[29] = v15 & 0xBF | ((a5 & 1) << 6);
  if ((*(v13 + 116) & 0x80) != 0)
  {
    *(v14 + 8) |= 0x200u;
  }

  *(v13 + 88) = v14;
  v17 = off_1F3A43BA0(&_dispatch_mach_type_send, 0, 9);
  *(v17 + 1) = ~v13;
  *(v13 + 120) = v17;
  if (a2)
  {
    if ((*(a2 + 87) & 8) != 0)
    {
      _dispatch_mach_create_cold_1(a2);
    }

    if (*(a2 + 2) != 0x7FFFFFFF && atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed) <= 0)
    {
      dispatch_set_target_queue_cold_2();
    }
  }

  else
  {
    a2 = &off_1ED3F3BC0;
  }

  *(v13 + 24) = a2;
  return v13;
}

void _dispatch_mach_dispose(uint64_t *a1, _BYTE *a2)
{
  _dispatch_unote_dispose(a1[11], 0);
  a1[11] = 0;
  _dispatch_unote_dispose(a1[15], 0);
  a1[15] = 0;
  v4 = a1[16];
  if (v4)
  {
    _dispatch_unote_dispose(v4, 0);
    a1[16] = 0;
  }

  _dispatch_lane_class_dispose(a1, a2);
}

uint64_t dispatch_mach_request_no_senders(uint64_t a1)
{
  *(a1 + 116) |= 0x20u;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_notify_no_senders(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 96;
  }

  else
  {
    v2 = 32;
  }

  *(a1 + 116) = v2 | *(a1 + 116) & 0xFF9F;
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

uint64_t dispatch_mach_set_flags(uint64_t a1, char a2)
{
  *(a1 + 116) = *(a1 + 116) & 0xFF7F | ((a2 & 1) << 7);
  result = *(a1 + 56);
  if ((~result & 0x180000000000000) != 0)
  {
    dispatch_set_qos_class_floor_cold_2(result);
  }

  return result;
}

void dispatch_mach_connect(dispatch_object_t object, int a2, int a3, dispatch_object_t a4)
{
  isa = object[15].isa;
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    *(object[11].isa + 6) = a2;
  }

  *(isa + 23) = a3;
  if ((a3 - 1) <= 0xFFFFFFFD)
  {
    if (a4)
    {
      dispatch_retain(a4);
      LODWORD(a4[6].isa) = 0x40000;
      v7 = a4 + 11;
      if (LODWORD(a4[9].isa))
      {
        v7 = v7->isa;
      }

      *(isa + 24) = v7[1].isa;
    }

    *(isa + 6) = a4;
  }

  if ((WORD2(object[14].isa) & 0x20) != 0 && !*(isa + 6))
  {
    _dispatch_mach_arm_no_senders(object, 0);
  }

  v8 = atomic_fetch_and_explicit(isa + 22, 0x7FFFFFFFu, memory_order_relaxed);
  if ((v8 & 0x80000000) == 0)
  {
    dispatch_mach_connect_cold_1(v8);
  }

  dispatch_activate(object);
}

void _dispatch_mach_arm_no_senders(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 88) + 24);
  previous = 0;
  if (v3 - 1 <= 0xFFFFFFFD)
  {
    v4 = mach_port_request_notification(*MEMORY[0x1E69E9A60], v3, 70, (*(a1 + 116) & 0x40) == 0, v3, 0x15u, &previous);
    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v4)
    {
      _dispatch_bug(261, v4);
    }

    if (previous)
    {
      _dispatch_mach_arm_no_senders_cold_2(a2, previous);
    }
  }
}

void *_dispatch_mach_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, unsigned int *a5, int a6, unsigned int a7)
{
  if ((a2 & 0x200) != 0)
  {
    _dispatch_mach_merge_msg_cold_1(a1);
  }

  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) == 0)
  {
    if (a3->msgh_id != 70 || (*(115 - *(a1 + 8)) & 0x20) == 0)
    {
      v14 = _voucher_create_with_mach_msgv(&a3->msgh_bits, a5);
      if ((*&a6 & 0xFFFFFFuLL) >= 0x10FF)
      {
        v15 = 4351;
      }

      else
      {
        v15 = *&a6 & 0xFFFFFFLL;
      }

      v16 = dispatch_mach_msg_create(a3, a4, HIWORD(a2) & 1, 0);
      if ((a2 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }

      *(v16 + 56) = v15;
      *(v16 + 64) = v14;
      *(v16 + 32) = 0;
      *(v16 + 48) = -117964798;
      _dispatch_mach_handle_or_push_received_msg(v10, v16, a7);
      goto LABEL_12;
    }

    if (_dispatch_mach_msg_sender_is_kernel(a3))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = *(StatusReg + 176);
      if (v19)
      {
        *(StatusReg + 176) = v19[2];
      }

      else
      {
        v19 = _dispatch_continuation_alloc_from_heap();
      }

      v19[4] = _dispatch_mach_no_senders_invoke;
      v19[5] = v10;
      v19[3] = 0;
      *v19 = xmmword_1BB5814E0;
      (*(*v10 + 88))(v10);
    }

    else
    {
      _dispatch_mach_merge_msg_cold_2();
    }
  }

  mach_msg_destroy(a3);
  if ((a2 & 0x10000) != 0)
  {
    free(a3);
  }

LABEL_12:
  if ((*(a1 + 16) & 2) != 0 || (*(v10 + 60) & 0x1800000) == 0x800000)
  {
    return _dispatch_mach_merge_msg_cold_3(v10);
  }

  return _os_object_release_internal_n(v10, 2);
}

uint64_t _dispatch_mach_no_senders_invoke(uint64_t result)
{
  if ((*(result + 80) & 0x10000000) == 0)
  {
    v1 = *(result + 88);
    if (*(v1 + 40))
    {
      v2 = *(v1 + 40);
    }

    else
    {
      v2 = 0;
    }

    return _dispatch_client_callout4(*(v1 + 48), 13, 0, 0, v2);
  }

  return result;
}

void _dispatch_mach_handle_or_push_received_msg(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 48);
  v7 = 3;
  if (v6)
  {
    v7 = 4;
  }

  if ((v6 & 0xFFFFC000) == 0xF8F80000)
  {
    v8 = v6 & 0x3FFF;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != 2 && (*(a1 + 116) & 0x10) != 0 && ((*(_dispatch_mach_xpc_hooks + 1))(*(*(a1 + 88) + 48)) & 1) != 0)
  {
    *(a2 + 16) = -1985229329;

    dispatch_release(a2);
  }

  else
  {
    v9 = (a3 >> 8) & 0x3FFF;
    if (v9)
    {
      v10 = __clz(__rbit32(v9)) + 1;
    }

    else
    {
      v10 = (*(a1 + 84) >> 8) & 0xF;
    }

    _dispatch_lane_push(a1, a2, v10);
  }
}

void _dispatch_mach_reply_merge_msg(uint64_t a1, unsigned int a2, mach_msg_header_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = ~*(a1 + 8);
  if ((*(79 - *(a1 + 8)) & 0x10000000) != 0)
  {
    mach_msg_destroy(a3);
    if ((a2 & 0x10000) != 0)
    {
      free(a3);
    }

    v28 = 117;
  }

  else
  {
    msgh_bits = a3->msgh_bits;
    v14 = HIWORD(a3->msgh_bits) & 0x1F;
    msgh_voucher_port = a3->msgh_voucher_port;
    if ((v14 == 17 || v14 == 19) && msgh_voucher_port != 0)
    {
      if (v14 == 17)
      {
        _voucher_dealloc_mach_voucher(msgh_voucher_port);
        msgh_bits = a3->msgh_bits;
      }

      a3->msgh_voucher_port = 0;
      a3->msgh_bits = msgh_bits & 0xFFE0FFFF;
    }

    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    *(a1 + 56) = 0;
    v20 = dispatch_mach_msg_create(a3, a4, HIWORD(a2) & 1, 0);
    if ((a2 & 0x10000) == 0 && MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    *(v20 + 56) = v18;
    *(v20 + 64) = v19;
    v21 = *(a1 + 48);
    *(v20 + 32) = v21;
    *(v20 + 48) = -117964798;
    if ((*(v10 + 116) & 0x10) != 0 && v21)
    {
      v22 = (*(_dispatch_mach_xpc_hooks + 2))();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v10;
      }

      v24 = _dispatch_mach_msg_async_reply_wrap(v20, v10);
      v25 = *v23 + 88;
      v26 = __clz(__rbit32((*(v20 + 56) >> 8) & 0x3FFF));
      if (((*(v20 + 56) >> 8) & 0x3FFF) != 0)
      {
        v27 = v26 + 1;
      }

      else
      {
        v27 = 0;
      }

      (*(*v23 + 88))(v23, v24, v27);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v10, v20, a7);
    }

    v28 = 101;
  }

  v29 = *(a1 + 16);

  _dispatch_mach_reply_unregister(v10, a1, v28);
}

void _dispatch_mach_reply_unregister(void *a1, void *a2, char a3)
{
  if (*a2)
  {
    v6 = *a2 == -2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[15];
  if ((a3 & 0x20) != 0)
  {
    v9 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit((v7 + 40), &v9, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      _dispatch_unfair_lock_lock_slow(v7 + 40);
    }

    v11 = a2[8];
    v12 = a2[9];
    if (v11)
    {
      *(v11 + 72) = v12;
    }

    *v12 = v11;
    a2[9] = 0;
    if (*(v7 + 56))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 88) != 0;
    }

    v13 = *(StatusReg + 24) & 0xFFFFFFFC;
    v14 = atomic_exchange_explicit((v7 + 40), 0, memory_order_release);
    if (v14 != v13)
    {
      _dispatch_unfair_lock_unlock_slow(v7 + 40, v14);
    }
  }

  else
  {
    v8 = 0;
  }

  if (!a2[2] || (_dispatch_unote_unregister(a2, a3 & 0xF), (v15 & 1) != 0))
  {
    if ((a3 & 0x10) != 0)
    {
      if ((*(a1 + 58) & 0x10) != 0 && a2[6])
      {
        v20 = (*(_dispatch_mach_xpc_hooks + 2))();
        if (v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = a1;
        }
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v24 = 12;
      }

      else
      {
        v24 = 7;
      }

      reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(0, a2, v24);
      if (v6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = a2[7];
      if (v16)
      {
        add_explicit = atomic_fetch_add_explicit((v16 + 12), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 1)
        {
          if (add_explicit != 1)
          {
            qword_1EBC5B980 = "API MISUSE: Voucher over-release";
            __break(1u);
            return;
          }

          _voucher_xref_dispose(v16);
        }

        v18 = 0;
        reply_disconnected = 0;
        a2[7] = 0;
        if (v6)
        {
LABEL_37:
          if (reply_disconnected)
          {
            if (!v18)
            {
              _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
              if ((a3 & 0x40) == 0)
              {
                return;
              }

              goto LABEL_46;
            }

            v25 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
            v26 = *v18 + 88;
            v27 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
            if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
            {
              v28 = v27 + 1;
            }

            else
            {
              v28 = 0;
            }

            (*(*v18 + 88))(v18, v25, v28);
          }

          if ((a3 & 0x40) == 0)
          {
            return;
          }

LABEL_46:
          if (v8)
          {
            v29 = *(*a1 + 80);

            v29(a1, 0, 3);
          }

          else
          {

            _os_object_release_internal_n(a1, 2);
          }

          return;
        }
      }

      else
      {
        v18 = 0;
        reply_disconnected = 0;
        if (v6)
        {
          goto LABEL_37;
        }
      }
    }

    _dispatch_unote_dispose(a2, 1);
    goto LABEL_37;
  }

  if (a3 < 0)
  {
    v23 = *(v7 + 56);
    v22 = (v7 + 56);
    v21 = v23;
    a2[8] = v23;
    if (v23)
    {
      *(v21 + 72) = a2 + 8;
    }

    *v22 = a2;
    a2[9] = v22;
  }
}

void _dispatch_mach_send_barrier_drain_invoke(void *a1, uint64_t a2, const char *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = a1[3];
  a1[3] = -1;
  v9 = a1[1];
  if (v9 == -1)
  {
    v16 = 0;
  }

  else
  {
    v10 = StatusReg[25];
    if (((v10 >> 8) & 0xF) != 0)
    {
      v11 = 256 << ((BYTE1(v10) & 0xFu) - 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    v13 = v9 & 0xFFFFFF;
    if ((v9 & 0xFFFFFF) != 0)
    {
      v14 = v11 & 0xFFFFFF00;
      if ((v10 & 0x44000000) == 0 && (a1[1] & 0x10000000) == 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v9 & 0xFFFFFF;
      }

      if (v13 < v14)
      {
        v16 = v12;
      }
    }

    else if (v10 >> 12)
    {
      v16 = (256 << ((v10 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v16 = v11 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v17 = v16 & 0xFFFFFFFF02FFFFFFLL;
  v18 = StatusReg[4];
  if ((v18 & 0x1000000) != 0)
  {
    if (v17)
    {
LABEL_37:
      _dispatch_set_priority_and_voucher_slow(v17, v8, 6);
      goto LABEL_22;
    }

    v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_18;
  }

  if (v17)
  {
    goto LABEL_37;
  }

LABEL_18:
  if (v8 == -1)
  {
    goto LABEL_22;
  }

  if (StatusReg[28] != v8)
  {
    v17 = 0;
    goto LABEL_37;
  }

  if (v8 && atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_22:
  v19 = StatusReg[22];
  if (v19)
  {
    v20 = *(v19 + 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v20 > _dispatch_continuation_cache_limit)
  {
    _dispatch_mach_send_invoke(v6, a3, 6);
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    a1[2] = v19;
    *(a1 + 2) = v20;
    StatusReg[22] = a1;
    _dispatch_mach_send_invoke(v6, a3, 6);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_send_invoke(uint64_t a1, const char *a2, int *a3)
{
  v6 = *(a1 + 120);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24) & 0xFFFFFFFCLL;
  v9 = 0xFFFFFFFFLL;
  if ((a3 & 4) == 0)
  {
    v9 = 0x10FFFFFFFFLL;
  }

  v10 = (a3 & 2) << 35;
  if ((a3 & 2) != 0)
  {
    v11 = 0x10FFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(StatusReg + 200);
  v13 = (v12 >> 8) & 0xF;
  v14 = v12 >> 12;
  v15 = HIWORD(v12) & 0xF;
  if (v13 <= v14)
  {
    v13 = v14;
  }

  if (v13 > v15)
  {
    v15 = v13;
  }

LABEL_10:
  for (i = *(v6 + 64); ; i = v18)
  {
    if ((i & v11) != v10)
    {
      if ((a3 & 1) == 0)
      {
        return;
      }

      v18 = i;
      atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i | 0x2000000000, memory_order_acquire, memory_order_acquire);
      if (v18 == i)
      {
        return;
      }

      continue;
    }

    v17 = HIDWORD(i) & 7;
    if (v15 < v17)
    {
      v19 = *(StatusReg + 24);
      _pthread_workqueue_override_start_direct();
      v20 = *(StatusReg + 200);
      v15 = v17;
      if ((HIWORD(v20) & 0xF) < v17)
      {
        *(StatusReg + 200) = v20 & 0xFFF0FFFF | (v17 << 16);
        v15 = v17;
      }

      goto LABEL_10;
    }

    v18 = i;
    atomic_compare_exchange_strong_explicit((v6 + 64), &v18, i & 0xFFFFFFC7FFFFFFFFLL | v8, memory_order_acquire, memory_order_acquire);
    if (v18 == i)
    {
      break;
    }
  }

  _dispatch_mach_send_drain(a1, a2, a3);
}

void *_dispatch_mach_notification_merge_evt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if ((*(a1 + 32) & a3) != 0)
  {
    _dispatch_mach_send_invoke(~v3, 0x40000, 1);
  }

  return _os_object_release_internal_n(~v3, 2);
}

uint64_t _dispatch_mach_send_msg(uint64_t result, dispatch_object_t object, NSObject *a3, int a4)
{
  v5 = *(result + 120);
  isa = object[2].isa;
  v7 = isa == -1985229329;
  if (isa == -1985229329)
  {
    v8 = a4;
    v10 = result;
    if ((a4 & 0x40000) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 32) & 0xFFFFFFLL);
      v12 = 4351;
      if (v11 < 0x10FF)
      {
        v12 = v11;
      }

      if ((a4 & 4) == 0)
      {
        v11 = v12;
      }
    }

    object[7].isa = v11;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = *(StatusReg + 224);
    if (!v14 || (v15 = atomic_fetch_add_explicit(v14 + 3, 1u, memory_order_relaxed), v7 = v15 == 0, v15 > 0))
    {
      object[8].isa = v14;
      LODWORD(object[6].isa) = a4 | (((*(StatusReg + 32) & 0x300) != 0) << 18);
      dispatch_retain(object);
      v16 = __clz(__rbit32((LODWORD(object[7].isa) >> 8) & 0x3FFF));
      if (((LODWORD(object[7].isa) >> 8) & 0x3FFF) != 0)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = object + 11;
      if (LODWORD(object[9].isa))
      {
        v18 = v18->isa;
      }

      v19 = v18->isa;
      if ((v18->isa & 0x1F00) != 0x1500 || (HIDWORD(v18[1].isa) - 1) >= 0xFFFFFFFE)
      {
        isa_high = 0;
      }

      else
      {
        isa_high = HIDWORD(v18[1].isa);
      }

      HIDWORD(object[6].isa) = isa_high;
      if ((v19 & 0x1F) != 0x12 || isa_high || *(v5 + 88) || (v10[20] & 0x10000000) != 0)
      {
        if (a3)
        {
          v23 = a3;
        }

        else
        {
          v23 = object;
        }

        _dispatch_mach_send_push_and_trydrain(v10, v23, v17, (8 * (v8 & 1u)));
        if (v24)
        {
LABEL_27:
          result = object[8].isa;
          if (!result)
          {
            goto LABEL_29;
          }

          add_explicit = atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_relaxed);
          v7 = add_explicit == 1;
          if (add_explicit > 1)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }
      }

      else if ((_dispatch_mach_msg_send(v10, object, 0, 0, (8 * (v8 & 1u))) & 2) != 0)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  else
  {
    v25 = object[2].isa;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Message already enqueued";
    qword_1EBC5B9B0 = v25;
    __break(1u);
  }

  qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
  __break(1u);
LABEL_37:
  if (v7)
  {
    _voucher_xref_dispose(result);
LABEL_29:
    object[8].isa = 0;
    object[2].isa = -1985229329;
    dispatch_release(object);
    return 1;
  }

  qword_1EBC5B980 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

uint64_t dispatch_mach_send_with_result(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_1EBC5B9B0 = a4;
    __break(1u);
  }

  else
  {
    result = _dispatch_mach_send_msg(result, a2, 0, a3 & 0xFFFF0000 | 1);
    if (result)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

uint64_t _dispatch_mach_send_and_wait_for_reply(uint64_t a1, dispatch_object_t object, int a3, _BYTE *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = -2;
  *(&v61 + 1) = object[4];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  DWORD2(v63) = *(StatusReg + 24);
  isa = object[9].isa;
  v10 = object + 11;
  v11 = object + 11;
  if (isa)
  {
    v11 = v10->isa;
  }

  isa_high = HIDWORD(v11[1].isa);
  if (isa_high - 1 > 0xFFFFFFFD || (v11->isa & 0x1F00) != 0x1500)
  {
    isa_high = *(StatusReg + 64);
    if (!isa_high)
    {
      special_reply_port = thread_get_special_reply_port();
      *(StatusReg + 64) = special_reply_port;
      if (special_reply_port + 1 < 2)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_1();
      }

      isa_high = special_reply_port;
      isa = object[9].isa;
    }

    if (isa)
    {
      v10 = v10->isa;
    }

    HIDWORD(v10[1].isa) = isa_high;
    BYTE6(v60) = 1;
  }

  v51 = xmmword_1BB5814F0;
  v52 = 0;
  v53 = -1;
  v54 = 0;
  v55 = 0;
  v56 = object;
  v57 = &v58;
  v14 = _dispatch_mach_send_msg(a1, object, &v51, a3 | 4u);
  *a4 = v14;
  if (BYTE6(v60) == 1)
  {
    if (isa_high == *(StatusReg + 64))
    {
      *(StatusReg + 64) = 0;
    }

    v15 = *(*(a1 + 120) + 92);
  }

  else
  {
    v15 = 0;
  }

  if (isa_high + 1 <= 1)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_6(isa_high);
  }

  v50 = &v47;
  v48 = *(&v61 + 1);
  v16 = (*MEMORY[0x1E69E9AB8] + 0x4000) & ~*MEMORY[0x1E69E9AB8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v47 - v17);
  bzero(&v47 - v17, v19);
  LODWORD(v20) = 0;
  v21 = 0;
  if (v15 - 1 >= 0xFFFFFFFE)
  {
    v22 = 117440526;
  }

  else
  {
    v22 = 117456910;
  }

  if (v15 - 1 >= 0xFFFFFFFE)
  {
    v23 = 0;
  }

  else
  {
    v23 = v15;
  }

  v49 = a1;
  v24 = v22 & 0xFFFFFDFF | (((*(a1 + 116) >> 7) & 1) << 9);
  while (1)
  {
    v25 = mach_msg(v18, v24, 0, v16, isa_high, 0, v23);
    v26 = v25;
    if (v25 != 268451844)
    {
      break;
    }

    msgh_size = v18->msgh_size;
    if (msgh_size >= 0xFFFFFFBC)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_4(msgh_size);
    }

    if ((v24 & 4) == 0)
    {
      _dispatch_log("BUG in libdispatch client: dispatch_mach_send_and_wait_for_reply: dropped message too large to fit in memory: id = 0x%x, size = %u", v18->msgh_id, msgh_size);
      goto LABEL_42;
    }

    v20 = msgh_size + 68;
    v28 = malloc_type_malloc(msgh_size + 68, 0xB147F4AEuLL);
    v21 = v28;
    v29 = v20;
    if (!v28)
    {
      _dispatch_mach_send_and_wait_for_reply_cold_2();
      v28 = v18;
      v29 = v16;
    }

    v24 = v24 & 0xFFFFFEFB | 0x100;
    v16 = v29;
    v18 = v28;
  }

  if ((v25 - 268451842) <= 7 && ((1 << (v25 - 2)) & 0x91) != 0)
  {
    if (BYTE6(v60) == 1)
    {
      _dispatch_destruct_reply_port();
    }

    goto LABEL_34;
  }

  if (v25)
  {
    _dispatch_mach_send_and_wait_for_reply_cold_5(v25);
  }

  LODWORD(v16) = v18->msgh_size + 68;
  if (v21 && v16 < v20)
  {
    v31 = malloc_type_realloc(v21, v20, 0xB8079499uLL);
    if (v31)
    {
      v21 = v31;
      v32 = v31;
    }

    else
    {
      v32 = v18;
    }
  }

  else
  {
LABEL_42:
    v32 = v18;
  }

  v33 = 0;
  msgh_local_port = v32->msgh_local_port;
  v35 = (*(v49 + 120) + 40);
  atomic_compare_exchange_strong_explicit(v35, &v33, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v33)
  {
    _dispatch_unfair_lock_lock_slow(v35);
  }

  v36 = v63;
  if (v63)
  {
    v37 = *(&v62 + 1);
    if (*(&v62 + 1))
    {
      *(*(&v62 + 1) + 72) = v63;
    }

    *v36 = v37;
    *&v63 = 0;
  }

  v38 = *(StatusReg + 24) & 0xFFFFFFFC;
  v39 = atomic_exchange_explicit(v35, 0, memory_order_release);
  if (v39 != v38)
  {
    _dispatch_unfair_lock_unlock_slow(v35, v39);
  }

  if (BYTE6(v60) == 1)
  {
    if (v60 != msgh_local_port)
    {
      if ((msgh_local_port - 1) < 0xFFFFFFFE || v36)
      {
        _dispatch_mach_send_and_wait_for_reply_cold_3(msgh_local_port);
      }

      goto LABEL_61;
    }

    if (!v36 || *(StatusReg + 64))
    {
LABEL_61:
      _dispatch_destruct_reply_port();
      goto LABEL_62;
    }

    *(StatusReg + 64) = msgh_local_port;
  }

  else if ((msgh_local_port - 1) <= 0xFFFFFFFD && v36)
  {
    v40 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(v40 + 16) = -1985229329;
    *(v40 + 24) = &unk_1ED3F3B40;
    *(v40 + 72) = 0;
    *(v40 + 80) = 24;
    *(v40 + 100) = msgh_local_port;
    v42 = *(&v61 + 1);
    v41 = v62;
    *&v62 = 0;
    *(v40 + 56) = v61;
    *(v40 + 64) = v41;
    *(v40 + 32) = v42;
    *(v40 + 48) = -117964791;
    _dispatch_mach_handle_or_push_received_msg(v49, v40, 0);
  }

LABEL_62:
  v32->msgh_local_port = 0;
  if (*(v49 + 80) & 0x10000000 | v26)
  {
    if (!v26)
    {
      mach_msg_destroy(v32);
    }

LABEL_34:
    free(v21);
    v30 = 0;
    goto LABEL_70;
  }

  v43 = dispatch_mach_msg_create(v32, v16, v21 != 0, 0);
  v30 = v43;
  if (!v21 || v32 != v18)
  {
    if (*(v43 + 72))
    {
      v44 = *(v43 + 88);
    }

    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  *(v30 + 32) = v48;
LABEL_70:
  v45 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t dispatch_mach_send_with_result_and_wait_for_reply(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    vars0 = v6;
    vars8 = v7;
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_1EBC5B9B0 = a4;
    __break(1u);
  }

  else
  {
    v15 = 0;
    result = _dispatch_mach_send_and_wait_for_reply(result, a2, a3 & 0xFFFF0000 | 1, &v15);
    if (v15 == 1)
    {
      v11 = *(a2 + 48);
      v12 = v11 & 0x3FFF;
      v13 = 3;
      if (v11)
      {
        v13 = 4;
      }

      if ((v11 & 0xFFFFC000) == 0xF8F80000)
      {
        v11 = 0;
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v11 = 0;
      v14 = 10;
    }

    *a5 = v14;
    *a6 = v11;
  }

  return result;
}

uint64_t dispatch_mach_send_with_result_and_async_reply_4libxpc(uint64_t result, dispatch_object_t object, int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  if (a4)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Invalid send flags";
    qword_1EBC5B9B0 = a4;
    __break(1u);
    goto LABEL_16;
  }

  if ((*(result + 116) & 0x10) == 0)
  {
LABEL_16:
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: dispatch_mach_send_with_result_and_wait_for_reply is XPC only";
    __break(1u);
LABEL_17:
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Reply port needed for async send with reply";
    __break(1u);
    return result;
  }

  v9 = object + 11;
  if (LODWORD(object[9].isa))
  {
    v9 = v9->isa;
  }

  if ((HIDWORD(v9[1].isa) - 1) > 0xFFFFFFFD || (v9->isa & 0x1F00) != 0x1500)
  {
    goto LABEL_17;
  }

  result = _dispatch_mach_send_msg(result, object, 0, a3 & 0xFFFF0000 | 1);
  if (result)
  {
    isa = object[6].isa;
    v11 = isa & 0x3FFF;
    v12 = 3;
    if (isa)
    {
      v12 = 4;
    }

    if ((isa & 0xFFFFC000) == 0xF8F80000)
    {
      isa = 0;
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    isa = 0;
    v13 = 10;
  }

  *a5 = v13;
  *a6 = isa;
  return result;
}

atomic_uint *dispatch_mach_reconnect(uint64_t a1, unsigned int a2, dispatch_object_t object)
{
  v3 = object;
  v6 = *(a1 + 120);
  atomic_fetch_add_explicit((v6 + 88), 1u, memory_order_relaxed);
  if (a2 - 1 > 0xFFFFFFFD || object == 0)
  {
    v8 = 0;
    if (object == -1)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    dispatch_retain(object);
    *(v3 + 48) = 0x40000;
    v9 = v3 + 88;
    if (*(v3 + 72))
    {
      v9 = *v9;
    }

    v8 = *(v9 + 8);
  }

  *(v6 + 96) = v8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 176);
  if (v11)
  {
    *(StatusReg + 176) = v11[2];
  }

  else
  {
    v11 = _dispatch_continuation_alloc_from_heap();
  }

  v11[5] = v11;
  v11[6] = v3;
  v11[7] = a2;
  v11[3] = -1;
  v11[4] = _dispatch_mach_reconnect_invoke;
  *v11 = xmmword_1BB581500;

  return _dispatch_mach_send_push(a1, v11, 0);
}

BOOL _dispatch_mach_reconnect_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  if (*(v4 + 16))
  {
    _dispatch_unote_unregister(*(a1 + 120), 5);
    *(*(a1 + 120) + 24) = 0;
  }

  v5 = *(v4 + 92);
  if ((v5 + 1) >= 2)
  {
    v6 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(v6 + 16) = -1985229329;
    *(v6 + 24) = &unk_1ED3F3B40;
    *(v6 + 72) = 0;
    *(v6 + 80) = 24;
    *(v6 + 96) = v5;
    *(v6 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v6, 0);
    *(v4 + 92) = 0;
  }

  v7 = *(v4 + 48);
  if (v7)
  {
    _dispatch_mach_msg_not_sent(a1, v7, 0);
    *(v4 + 48) = 0;
  }

  v8 = 0;
  *(a1 + 118) &= ~1u;
  v24 = 0;
  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v9 = -112;
  }

  else
  {
    v9 = -110;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v4 + 40), &v8, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    _dispatch_unfair_lock_lock_slow(v4 + 40);
  }

  v11 = v24;
  v24 = *(v4 + 56);
  v12 = v24;
  *(v4 + 56) = v11;
  if (v12)
  {
    v12[9] = &v24;
    do
    {
      v13 = v12[8];
      v12[9] = 0;
      _dispatch_mach_reply_unregister(a1, v12, v9);
      v12 = v13;
    }

    while (v13);
    v11 = *(v4 + 56);
  }

  v14 = *(StatusReg + 24) & 0xFFFFFFFC;
  v15 = atomic_exchange_explicit((v4 + 40), 0, memory_order_release);
  if (v15 != v14)
  {
    _dispatch_unfair_lock_unlock_slow(v4 + 40, v15);
    if (v11)
    {
      return v11 == 0;
    }

LABEL_18:
    v16 = *(StatusReg + 176);
    if (v16)
    {
      v17 = *(v16 + 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = *(a2 + 56);
    v19 = *(a2 + 48);
    if (v17 > _dispatch_continuation_cache_limit)
    {
      _dispatch_continuation_free_to_cache_limit(a2);
    }

    else
    {
      *(a2 + 16) = v16;
      *(a2 + 8) = v17;
      *(StatusReg + 176) = a2;
    }

    v20 = *(a1 + 118);
    if (v19 == -1)
    {
      v19 = 0;
      v21 = v20 | 2;
      *(a1 + 118) = v21;
      if ((v21 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else if ((v20 & 2) == 0)
    {
LABEL_25:
      *(v4 + 92) = v18;
      *(v4 + 48) = v19;
LABEL_31:
      atomic_fetch_add_explicit((v4 + 88), 0xFFFFFFFF, memory_order_relaxed);
      return v11 == 0;
    }

    if ((v18 - 1) <= 0xFFFFFFFD)
    {
      v22 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
      *(v22 + 16) = -1985229329;
      *(v22 + 24) = &unk_1ED3F3B40;
      *(v22 + 72) = 0;
      *(v22 + 80) = 24;
      *(v22 + 96) = v18;
      *(v22 + 48) = -117964793;
      _dispatch_mach_handle_or_push_received_msg(a1, v22, 0);
    }

    if (v19)
    {
      _dispatch_mach_msg_not_sent(a1, v19, 0);
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  return v11 == 0;
}

atomic_uint *_dispatch_mach_send_push(atomic_uint *result, void **a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 15);
  v5 = 0xA000000000;
  if (*a2 >= 0x1000 && *a2 == &unk_1F3A434B8)
  {
    v5 = 0xB000000000;
  }

  a2[2] = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 976) = v4 + 72;
  v7 = atomic_exchange_explicit((v4 + 72), a2, memory_order_release);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  atomic_fetch_add_explicit(result + 2, v8, memory_order_relaxed);
  v9 = a3 << 32;
  if (v7)
  {
    *(v7 + 16) = a2;
    *(StatusReg + 976) = 0;
    v10 = *(v4 + 64);
    while (1)
    {
      v11 = v10;
      v12 = v9 | v10 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      if ((v10 & 0x700000000) >= v9)
      {
        v12 = v10;
      }

      if (v10 == v12)
      {
        break;
      }

      v5 = 0;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v10, v12, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    v5 = 0;
    v12 = v10;
  }

  else
  {
    *(v4 + 80) = a2;
    *(StatusReg + 976) = 0;
    v14 = *(v4 + 64);
    do
    {
      v11 = v14;
      if ((v14 & 0x700000000) >= v9)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9 | v14 & 0xFFFFFF50FFFFFFFFLL | 0x800000000;
      }

      v12 = v15 | v5;
      atomic_compare_exchange_strong_explicit((v4 + 64), &v14, v12, memory_order_release, memory_order_relaxed);
    }

    while (v14 != v11);
    if ((v11 & 0x8000000000) != 0 && result[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFE, memory_order_release) <= 2)
    {
      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
      __break(1u);
      return result;
    }
  }

LABEL_13:
  if (v11 >= 4)
  {
    if ((v11 & 0x700000000) < (v12 & 0x700000000))
    {
      _pthread_workqueue_override_start_direct_check_owner();
    }
  }

  else if ((v5 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(result, BYTE4(v12) & 7);
  }

  else
  {
    if (!v7 || *(v4 + 88) || (result[20] & 0x10000000) != 0)
    {
      v13 = *(*result + 80);
      goto LABEL_27;
    }

    if ((v11 & 0x1000000000) != 0)
    {
      v13 = *(*result + 80);
LABEL_27:

      return v13();
    }
  }

  return _os_object_release_internal_n(v3, 2);
}

uint64_t dispatch_mach_get_checkin_port(uint64_t a1)
{
  if ((*(a1 + 80) & 0x10000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 120) + 96);
  }
}

BOOL dispatch_mach_can_handoff_4libxpc()
{
  v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (*(v0 + 8) == "mach_msg")
    {
      v1 = *(v0 + 16);
      if (v1)
      {
        return *(v1 + 56) == 0;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t dispatch_mach_handoff_reply_f(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = _dispatch_mach_handoff_context(a2);
  v8 = *(v7 + 16);
  result = _dispatch_mach_handoff_set_wlh(v8, a1);
  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  *(v7 + 24) = a1;
  *v8 = 260;
  v8[4] = a4;
  v8[5] = a3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11 = *(StatusReg + 32) & 0xFFFFFFLL;
  v12 = 4351;
  if (v11 < 0x10FF)
  {
    v12 = *(StatusReg + 32) & 0xFFFFFFLL;
  }

  v13 = *(StatusReg + 224);
  if (v13 && atomic_fetch_add_explicit((v13 + 12), 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  v8[3] = v13;
  if (v11)
  {
    v14 = *(a1 + 84);
    if ((v14 & 0x40000000) != 0 || (v14 & 0xFFF) == 0)
    {
      LODWORD(v11) = __clz(__rbit32(v12 >> 8)) + 1;
      goto LABEL_13;
    }

    LODWORD(v11) = 0;
  }

  v12 = 0;
LABEL_13:
  v8[1] = v12;
  *(v7 + 32) = v11;
  *v8 = &unk_1F3A43668;
  return result;
}

unint64_t _dispatch_mach_handoff_context(unsigned int a1)
{
  v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  while (*(v2 + 8) != "mach_msg");
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_10:
    _dispatch_mach_handoff_context_cold_2();
  }

  if (*(*v3 + 40) == 515)
  {
    v3 = _dispatch_calloc_typed(1uLL, 0x50uLL, 0x10E204016CB3A18uLL);
    *(v2 + 16) = v3;
    v3[18] = 1;
  }

  else
  {
    atomic_fetch_add_explicit(v3 + 18, 1u, memory_order_relaxed);
  }

  if (*(v3 + 7))
  {
    _dispatch_mach_handoff_context_cold_1();
  }

  *(v3 + 7) = a1;
  return v2;
}

void _dispatch_mach_ipc_handoff_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v21[1] = "mach_msg";
  v21[2] = a1;
  v22 = 0;
  v23 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(a1 + 56);
  __swp(v3, (a1 + 64));
  if (v3)
  {
    if (v3)
    {
      v3 = ~v3;
    }

    else
    {
      _dispatch_sync_ipc_handoff_begin(v3, v7, a1 + 64);
    }
  }

  *(a1 + 16) = -1985229329;
  *(a1 + 56) = 0;
  v21[0] = StatusReg[23];
  StatusReg[23] = v21;
  v8 = *(a1 + 24);
  *(a1 + 24) = -1;
  v9 = *(a1 + 8);
  if (v9 == -1)
  {
    v16 = 0;
  }

  else
  {
    v10 = StatusReg[25];
    if (((v10 >> 8) & 0xF) != 0)
    {
      v11 = 256 << ((BYTE1(v10) & 0xFu) - 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    v13 = v9 & 0xFFFFFF;
    if ((v9 & 0xFFFFFF) != 0)
    {
      v14 = v11 & 0xFFFFFF00;
      if ((v10 & 0x44000000) == 0 && (*(a1 + 8) & 0x10000000) == 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v9 & 0xFFFFFF;
      }

      if (v13 < v14)
      {
        v16 = v12;
      }
    }

    else if (v10 >> 12)
    {
      v16 = (256 << ((v10 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v16 = v11 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v17 = v16 & 0xFFFFFFFF02FFFFFFLL;
  v18 = StatusReg[4];
  if ((v18 & 0x1000000) != 0)
  {
    if (v17)
    {
      goto LABEL_36;
    }

    v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_22;
  }

  if (v17)
  {
LABEL_36:
    _dispatch_set_priority_and_voucher_slow(v17, v8, 6);
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_22:
  if (v8 == -1)
  {
    goto LABEL_26;
  }

  if (StatusReg[28] != v8)
  {
    v17 = 0;
    goto LABEL_36;
  }

  if (v8 && atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    _dispatch_async_redirect_invoke_cold_1();
  }

LABEL_26:
  if ((a3 & 0x1000000) == 0)
  {
LABEL_27:
    v19 = 0;
    goto LABEL_38;
  }

LABEL_37:
  v19 = objc_autoreleasePoolPush();
LABEL_38:
  _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
  if (v19)
  {
    objc_autoreleasePoolPop(v19);
  }

  v20 = v22;
  StatusReg[23] = v21[0];
  if (v20)
  {
    _dispatch_mach_ipc_handoff_async(v21);
  }

  else if (!atomic_fetch_add_explicit((a1 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(a1);
  }

  if (v3)
  {
    _dispatch_sync_ipc_handoff_end(v3, v7);
  }
}

void *_dispatch_mach_ipc_handoff_async(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  (*(**(a1 + 24) + 88))(*(a1 + 24), v2, *(a1 + 32));
  if (v4)
  {
    _dispatch_sync_ipc_handoff_begin(v4, v3, v2 + 64);
    atomic_compare_exchange_strong_explicit((v2 + 64), &v6, ~v4, memory_order_relaxed, memory_order_relaxed);
  }

  if (!atomic_fetch_add_explicit((v2 + 72), 0xFFFFFFFF, memory_order_relaxed))
  {
    free(v2);
  }

  v7 = *(a1 + 24);

  return _os_object_release_internal(v7, v5);
}

void _dispatch_mach_msg_invoke(uint64_t a1, uint64_t a2, int a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = StatusReg[20];
  v7 = StatusReg[21];
  *(StatusReg + 10) = *v7;
  v8 = *(a1 + 48);
  v9 = v8 & 0xFFFFC000;
  v10 = 3;
  if (v8)
  {
    v10 = 4;
  }

  if (v9 == -117964800)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 == -117964800)
  {
    v12 = v8 & 0x3FFF;
  }

  else
  {
    v12 = v10;
  }

  v26 = 0;
  v27 = 0;
  v25[1] = "mach_msg";
  v25[2] = a1;
  v25[0] = StatusReg[23];
  StatusReg[23] = v25;
  v13 = *(v6 + 88);
  *(a1 + 16) = -1985229329;
  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  if (v15 == -1)
  {
    v18 = 0;
  }

  else
  {
    v16 = StatusReg[25];
    if (((v16 >> 8) & 0xF) != 0)
    {
      v17 = 256 << ((BYTE1(v16) & 0xFu) - 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v15 & 0xFFFFFF;
    if (v18)
    {
      if (v18 < (v17 & 0xFFFFFF00))
      {
        v18 = v17 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    else if (v16 >> 12)
    {
      v18 = (256 << ((v16 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v19 = v18 & 0xFFFFFFFF02FFFFFFLL;
  v20 = StatusReg[4];
  if ((v20 & 0x1000000) != 0)
  {
    if (v19)
    {
LABEL_53:
      _dispatch_set_priority_and_voucher_slow(v19, v14, 7);
      goto LABEL_24;
    }

    v19 = v20 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v19 == (v20 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_20;
  }

  if (v19)
  {
    goto LABEL_53;
  }

LABEL_20:
  if (v14 == -1)
  {
    goto LABEL_24;
  }

  if (StatusReg[28] != v14)
  {
    v19 = 0;
    goto LABEL_53;
  }

  if (v14 && atomic_fetch_add_explicit((v14 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_24:
  v21 = 0;
  *(a1 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v21 = objc_autoreleasePoolPush();
  }

  if ((a3 & 4) != 0)
  {
    _dispatch_client_callout3(*(v13 + 48), v12, a1, *(_dispatch_mach_xpc_hooks + 3));
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((*(v6 + 116) & 4) == 0)
    {
      _dispatch_mach_connect_invoke(v6);
    }

    if (v12 == 2 && (*(v6 + 80) & 0x10000000) != 0)
    {
      v24 = (a1 + 88);
      if (*(a1 + 72))
      {
        v24 = *&v24->msgh_bits;
      }

      mach_msg_destroy(v24);
      if (!v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (*(v13 + 40))
      {
        v22 = *(v13 + 40);
      }

      else
      {
        v22 = 0;
      }

      _dispatch_client_callout4(*(v13 + 48), v12, a1, v11, v22);
      if (!v21)
      {
        goto LABEL_38;
      }
    }
  }

  objc_autoreleasePoolPop(v21);
LABEL_38:
  dispatch_release(a1);
  v23 = v26;
  StatusReg[23] = v25[0];
  if (v23)
  {
    _dispatch_mach_ipc_handoff_async(v25);
  }

  StatusReg[20] = v6;
  StatusReg[21] = v7;
}

void _dispatch_mach_barrier_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(*a1 + 40);
  if (v6 == 1024)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 160);
    v9 = *(StatusReg + 168);
    *(StatusReg + 160) = *v9;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(v5 + 88);
  if ((*(v5 + 116) & 4) == 0)
  {
    if ((a3 & 0x1000000) != 0)
    {
      v29 = objc_autoreleasePoolPush();
      _dispatch_mach_connect_invoke(v5);
      objc_autoreleasePoolPop(v29);
    }

    else
    {
      _dispatch_mach_connect_invoke(v5);
    }
  }

  v11 = *(a1 + 24);
  *(a1 + 24) = -1;
  v12 = *(a1 + 8);
  if (v12 == -1)
  {
    v20 = 0;
  }

  else
  {
    v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 200);
    if (((v13 >> 8) & 0xF) != 0)
    {
      v14 = 256 << ((BYTE1(v13) & 0xFu) - 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
    v16 = v12 & 0xFFFFFF;
    if ((v12 & 0xFFFFFF) != 0)
    {
      v17 = v14 & 0xFFFFFF00;
      v18 = v12 & 0x10000000;
      if ((v13 & 0x44000000) == 0 && v18 == 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = v16;
      }

      if (v16 < v17)
      {
        v20 = v15;
      }
    }

    else if (v13 >> 12)
    {
      v20 = (256 << ((v13 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v20 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
    }
  }

  v21 = v20 & 0xFFFFFFFF02FFFFFFLL;
  v22 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = v22[4];
  if ((v23 & 0x1000000) != 0)
  {
    if (v21)
    {
LABEL_54:
      _dispatch_set_priority_and_voucher_slow(v21, v11, 6);
      goto LABEL_26;
    }

    v21 = v23 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v21 == (v23 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_22;
  }

  if (v21)
  {
    goto LABEL_54;
  }

LABEL_22:
  if (v11 == -1)
  {
    goto LABEL_26;
  }

  if (v22[28] != v11)
  {
    v21 = 0;
    goto LABEL_54;
  }

  if (v11 && atomic_fetch_add_explicit((v11 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
    return;
  }

LABEL_26:
  v24 = v22[22];
  if (v24)
  {
    v25 = *(v24 + 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  v26 = a1;
  if (v25 <= _dispatch_continuation_cache_limit)
  {
    v26 = 0;
    *(a1 + 16) = v24;
    *(a1 + 8) = v25;
    v22[22] = a1;
  }

  if ((a3 & 0x1000000) != 0)
  {
    v27 = objc_autoreleasePoolPush();
  }

  else
  {
    v27 = 0;
  }

  _dispatch_client_callout(*(a1 + 40), *(a1 + 32));
  if (*(v10 + 40))
  {
    v28 = *(v10 + 40);
  }

  else
  {
    v28 = 0;
  }

  _dispatch_client_callout4(*(v10 + 48), 6, 0, 0, v28);
  if (v27)
  {
    objc_autoreleasePoolPop(v27);
  }

  if (v26)
  {
    _dispatch_continuation_free_to_cache_limit(v26);
  }

  if (v6 == 1024)
  {
    v22[20] = v8;
    v22[21] = v9;
  }
}

uint64_t _dispatch_mach_connect_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  result = _dispatch_client_callout4(*(v2 + 48), 1, 0, 0, v3);
  *(a1 + 116) |= 4u;
  return result;
}

atomic_uint *dispatch_mach_send_barrier_f(atomic_uint *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = *(v7 + 2);
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
    v7 = result;
  }

  *v7 = 260;
  *(v7 + 4) = a3;
  *(v7 + 5) = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    *(v7 + 3) = v10;
    if (v8)
    {
      v11 = (v5[21] >> 30) & 1;
      if ((v5[21] & 0xFFF) == 0)
      {
        v11 = 1;
      }

      if (!v11)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 6) = *v7;
    *(v7 + 7) = v5;
    *v7 = &unk_1F3A434B8;
    *(v7 + 1) = v9;
    v12 = __clz(__rbit32(v9 >> 8));
    if (v9 >= 0x100)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    return _dispatch_mach_send_push(v5, v7, v13);
  }

  return result;
}

atomic_uint *dispatch_mach_send_barrier(atomic_uint *a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  result = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (!v7)
  {
    if (_dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_22:
    *v5 = 276;
    v5[5] = result;
    _dispatch_continuation_init_slow(v5, a1, 0);
    v9 = v5[1];
    goto LABEL_15;
  }

  if (_dispatch_block_special_invoke == v7)
  {
    goto LABEL_22;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = result;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
    return result;
  }

  v5[3] = v10;
  if (v8)
  {
    v11 = (a1[21] >> 30) & 1;
    if ((a1[21] & 0xFFF) == 0)
    {
      v11 = 1;
    }

    if (!v11)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v5[1] = v9;
LABEL_15:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_1F3A434B8;
  v13 = (v9 >> 8) & 0x3FFF;
  v12 = v13 == 0;
  v14 = __clz(__rbit32(v13));
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 + 1;
  }

  return _dispatch_mach_send_push(a1, v5, v15);
}

_DWORD *dispatch_mach_receive_barrier_f(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = StatusReg[22];
  if (v7)
  {
    StatusReg[22] = v7[2];
  }

  else
  {
    result = _dispatch_continuation_alloc_from_heap();
    v7 = result;
  }

  *v7 = 260;
  v7[4] = a3;
  v7[5] = a2;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
  }

  else
  {
    v7[3] = v10;
    if (!v8 || (v11 = v5[21], (v11 & 0x40000000) == 0) && (v11 & 0xFFF) != 0)
    {
      v9 = 0;
    }

    v7[1] = v9;
    v7[6] = *v7;
    v7[7] = v5;
    *v7 = &unk_1F3A43500;
    v12 = *(*v5 + 88);

    return v12(v5);
  }

  return result;
}

void *dispatch_mach_receive_barrier(atomic_uint *a1, uint64_t (**aBlock)())
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[22];
  if (v5)
  {
    StatusReg[22] = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  result = _dispatch_Block_copy(aBlock);
  v7 = aBlock[2];
  if (!v7)
  {
    if (_dispatch_block_special_invoke)
    {
      goto LABEL_5;
    }

LABEL_19:
    *v5 = 276;
    v5[5] = result;
    inited = _dispatch_continuation_init_slow(v5, a1, 0);
    goto LABEL_15;
  }

  if (_dispatch_block_special_invoke == v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  *v5 = 276;
  v5[4] = _dispatch_call_block_and_release;
  v5[5] = result;
  v8 = StatusReg[4] & 0xFFFFFFLL;
  v9 = 4351;
  if (v8 < 0x10FF)
  {
    v9 = StatusReg[4] & 0xFFFFFFLL;
  }

  v10 = StatusReg[28];
  if (v10 && atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed) <= 0)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
    __break(1u);
    return result;
  }

  v5[3] = v10;
  if (v8 && ((v11 = a1[21], (v11 & 0x40000000) != 0) || (v11 & 0xFFF) == 0))
  {
    inited = (__clz(__rbit32(v9 >> 8)) + 1);
  }

  else
  {
    inited = 0;
    v9 = 0;
  }

  v5[1] = v9;
LABEL_15:
  v5[6] = *v5;
  v5[7] = a1;
  *v5 = &unk_1F3A43500;
  v13 = *(*a1 + 88);

  return v13(a1, v5, inited);
}

atomic_uint *dispatch_mach_cancel(atomic_uint *result, const char *a2)
{
  v2 = result;
  if (result[2] == 0x7FFFFFFF || atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed) > 0)
  {
    if ((atomic_fetch_or_explicit(result + 20, 0x10000000u, memory_order_relaxed) & 0x10000000) == 0)
    {
      dispatch_mach_reconnect(result, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    return _os_object_release_internal(v2, a2);
  }

  else
  {
    qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
    __break(1u);
  }

  return result;
}

void _dispatch_mach_activate(uint64_t a1)
{
  _dispatch_lane_activate(a1);
  if ((*(a1 + 116) & 1) == 0)
  {
    v3 = 0;
    v2 = _dispatch_queue_compute_priority_and_wlh(a1, &v3);
    if (v2)
    {
      _dispatch_mach_install(a1, v3, v2);
    }
  }
}

void _dispatch_mach_install(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 116);
  *(a1 + 116) = v6 | 1;
  v7 = *(*(a1 + 120) + 88);
  if ((v7 & 0x80000000) != 0)
  {
    _dispatch_mach_install_cold_1(v7);
  }

  if (*(a1 + 84))
  {
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 84) = a3;
    if ((v4 & 0x10000000) != 0)
    {
      return;
    }
  }

  if ((v6 & 0x10) != 0 && (*(_dispatch_mach_xpc_hooks + 4))(*(v5 + 48)))
  {
    v10 = off_1F3A43CE0(&_dispatch_xpc_type_sigterm, 15, 0);
    *(v10 + 1) = ~a1;
    *(a1 + 128) = v10;
    _dispatch_unote_register(v10, a2, a3);
  }

  if (*(v5 + 24))
  {

    _dispatch_unote_register(v5, a2, a3);
  }
}

void *_dispatch_mach_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v73 = 0;
  if ((a3 & 3) == 0)
  {
    *(a1 + 16) = -1985229329;
  }

  if ((a3 & 2) != 0)
  {
    v73 = 0x40020000000001;
    v6 = a3 & 0x40000;
  }

  else
  {
    v48 = (*(a1 + 80) << 41) - 0x20000000000;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v50 = *(StatusReg + 24) & 0xFFFFFFFCLL;
    v6 = a3 & 0x40000;
    if ((a3 & 0x40000) != 0)
    {
      v51 = 0x4000000000;
    }

    else
    {
      v51 = 1;
    }

    v52 = 0xFFE00000FFFFFFFCLL;
    if ((a3 & 0x40000) == 0)
    {
      v52 = 0xFFE00040FFFFFFFCLL;
    }

    if (a3)
    {
      v53 = 0xFFE00040FFFFFFFCLL;
    }

    else
    {
      v53 = v52;
    }

    v54 = *(StatusReg + 200);
    v55 = (v54 >> 8) & 0xF;
    v56 = v54 >> 12;
    v57 = HIWORD(v54) & 0xF;
    if (v55 <= v56)
    {
      v55 = v56;
    }

    if (v55 > v57)
    {
      v57 = v55;
    }

LABEL_142:
    for (i = *(a1 + 56); ; i = v63)
    {
      while ((i & v53) != 0)
      {
        if ((a3 & 1) != 0 || (v64 = i, atomic_compare_exchange_strong_explicit((a1 + 56), &v64, i ^ v51, memory_order_acquire, memory_order_acquire), v64 == i))
        {
          v73 = 0;
          return _os_object_release_internal_n(a1, 2);
        }

        i = v64;
      }

      if ((i & 0x1000000000) != 0)
      {
        v59 = HIDWORD(i) & 7;
        if (v59 > v57)
        {
          v65 = *(StatusReg + 24);
          _pthread_workqueue_override_start_direct();
          v66 = *(StatusReg + 200);
          v57 = v59;
          if ((HIWORD(v66) & 0xF) < v59)
          {
            *(StatusReg + 200) = v66 & 0xFFF0FFFF | (v59 << 16);
            v57 = v59;
          }

          goto LABEL_142;
        }
      }

      v60 = (i >> 40) & 1;
      if (!((v48 + i) >> 53))
      {
        LODWORD(v60) = 1;
      }

      v61 = v60 ? 0x60000000000000 : 0x20000000000000;
      v62 = v50 | i & 0x7700000001 | v61;
      v63 = i;
      atomic_compare_exchange_strong_explicit((a1 + 56), &v63, v62, memory_order_acquire, memory_order_acquire);
      if (v63 == i)
      {
        break;
      }
    }

    v67 = 0x60000000000000;
    if ((a3 & 1) == 0)
    {
      v67 = v51 | 0x60000000000000;
    }

    v73 = (v62 & v67) - (i & 0x3FFE0000000000);
    v4 = a2;
    if (!v73)
    {
      return _os_object_release_internal_n(a1, 2);
    }
  }

  if (v6)
  {
    v69 = 0;
  }

  else
  {
    v7 = *(a1 + 84);
    v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = *(v8 + 200);
    if (v9)
    {
      v10 = v7 & 0xFFF;
      if ((v7 & 0xFFF) != 0)
      {
        if ((v9 & 0xFFFu) > v10)
        {
          v10 = v9 & 0xFFF;
        }

        if (v7 >> 12 <= v10 >> 8)
        {
          v11 = 0x40000000;
        }

        else
        {
          v11 = 1140912128;
        }

        v12 = v9 & 0x880F0000 | v10 | v11 & v7;
      }

      else
      {
        v13 = v9 | 0x40000000;
        if ((v9 & 0xFFF) == 0)
        {
          v13 = *(v8 + 200);
        }

        v14 = v7 >> 12;
        v12 = v13 & 0xFFFF0FFF | v7 & 0x400F000;
        if (v14 <= ((v13 >> 8) & 0xF))
        {
          v12 = v13;
        }
      }
    }

    else
    {
      v12 = v7 & 0xFFF0FFFF;
    }

    *(v8 + 200) = v12;
    v69 = v9 & 0xFFF0FFFF;
  }

  LODWORD(v15) = a3 | 8;
  if ((a3 & 0x100000) != 0 && (*(a1 + 80) & 0x400000) != 0)
  {
    atomic_fetch_and_explicit((a1 + 80), 0xFFBFFFFF, memory_order_relaxed);
  }

  if (((*(a1 + 80) << 8) & 0x3000000) != 0)
  {
    v15 = (*(a1 + 80) << 8) & 0x3000000 | a3 & 0xFCFFFFF7 | 8;
  }

  else
  {
    v15 = v15;
  }

  v68 = v15 | 0x10;
  v16 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (2)
  {
    while (2)
    {
      v17 = v15;
      v70 = v15 & 0x1000002;
      if ((v15 & 0x1000002) == 2)
      {
        _dispatch_last_resort_autorelease_pool_push(v4);
      }

      v19 = v16 + 160;
      v18 = *(v16 + 160);
      v20 = *(a1 + 120);
      v21 = *(a1 + 88);
      if ((v17 & 0x40000) == 0 && v21)
      {
        v22 = *(v16 + 232);
        v23 = v22 ? *(v22 + 24) : -4;
        v24 = v21[2] & 0xFFFFFFFFFFFFFFFCLL;
        if (v24 == -4)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24 == 0;
          v26 = v21[2] < 0;
        }

        if (!v25 && v23 != v24)
        {
          _dispatch_mach_handle_wlh_change(a1);
        }
      }

      if ((*(a1 + 116) & 1) == 0)
      {
        if ((v17 & 0x40000) != 0)
        {
          v34 = *(a1 + 24);
          goto LABEL_84;
        }

        if ((v17 & 0x10000) != 0)
        {
          v42 = *(v16 + 200);
        }

        else
        {
          v42 = 0x2000000;
        }

        v43 = *(v16 + 232);
        if (v43)
        {
          v44 = *(v43 + 24);
        }

        else
        {
          v44 = -4;
        }

        _dispatch_mach_install(a1, v44, v42);
      }

      if (!*(a1 + 48))
      {
        v28 = 0;
        goto LABEL_47;
      }

      v28 = *(a1 + 24);
      if (v18 != v28)
      {
        goto LABEL_47;
      }

      while (1)
      {
        while (1)
        {
          _dispatch_lane_serial_drain(a1, a2, v17, &v73);
          v28 = v29;
LABEL_47:
          v30 = *(a1 + 80);
          if (v28 || (v30 & 0x10000000) != 0)
          {
            break;
          }

          if (!v21[2] || (v21[2] & 3) != 0)
          {
            break;
          }

          _dispatch_unote_resume(v21);
          if (v18 == *(a1 + 24) && !v18[3] && !*(v20 + 72) && (*(v18 + 21) & 0x80000000) != 0)
          {
            if (*(v16 + 40))
            {
              v40 = *(v16 + 232);
              if (v40)
              {
                v41 = *(v40 + 24);
                if (v41 != -4 && v41 == (v21[2] & 0xFFFFFFFFFFFFFFFCLL))
                {
                  _dispatch_event_loop_drain(1);
                  if (*(a1 + 48))
                  {
                    continue;
                  }
                }
              }
            }
          }

          v30 = *(a1 + 80);
          break;
        }

        if (!*(v20 + 72))
        {
          goto LABEL_71;
        }

        if ((*(v20 + 30) & 1) != 0 && !*(v20 + 88))
        {
          goto LABEL_70;
        }

        if (*(v20 + 88))
        {
          v32 = *(v20 + 16) != 0;
        }

        else
        {
          v32 = *(a1 + 118) & 1;
        }

        if (v32 && v18 != &_dispatch_mgr_q)
        {
          if (v28)
          {
            v34 = v28;
          }

          else
          {
            v34 = &_dispatch_mgr_q;
          }

          goto LABEL_84;
        }

        _dispatch_mach_send_invoke(a1, v17, (4 * (v18 != &_dispatch_mgr_q)));
        if (v28)
        {
LABEL_71:
          if ((v30 & 0x10000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_72;
        }

        if (*(a1 + 48))
        {
          v28 = *(a1 + 24);
LABEL_70:
          if (v28)
          {
            goto LABEL_71;
          }
        }

        if (*(v20 + 72))
        {
          v28 = -1;
        }

        else
        {
          v28 = 0;
        }

        if ((v30 & 0x10000000) == 0)
        {
          goto LABEL_83;
        }

LABEL_72:
        if ((v30 & 0x80000000) == 0)
        {
          _dispatch_mach_cancel(a1);
          if ((v33 & 1) == 0)
          {
            if (v28)
            {
              v34 = v28;
            }

            else
            {
              v34 = -1;
            }

            goto LABEL_84;
          }
        }

        if ((*(a1 + 116) & 8) != 0)
        {
          goto LABEL_83;
        }

        v34 = *(a1 + 24);
        if (v18 != v34)
        {
          break;
        }

        if (*(a1 + 56) >> 55)
        {
          goto LABEL_84;
        }

        if (!*(a1 + 48))
        {
          _dispatch_mach_cancel_invoke(a1, v17);
LABEL_83:
          v34 = v28;
          goto LABEL_84;
        }
      }

      if (v28)
      {
        v34 = v28;
      }

LABEL_84:
      v4 = a2;
      if (v70 == 2)
      {
        v72 = *v19;
        *(v16 + 160) = a1;
        *(v16 + 168) = &v72;
        _dispatch_last_resort_autorelease_pool_pop(a2);
        *v19 = v72;
      }

      if ((v34 + 1) > 1)
      {
        goto LABEL_126;
      }

      v35 = v73;
      v36 = *(a1 + 56);
      while (2)
      {
        v37 = v36;
        v38 = v36 - v35;
        v39 = v38 & 0xFFFFFFF700000001;
        if (v37 >> 55)
        {
LABEL_92:
          v36 = v37;
          atomic_compare_exchange_strong_explicit((a1 + 56), &v36, v39, memory_order_release, memory_order_relaxed);
          if (v36 == v37)
          {
            if ((~v37 & 0x1800000000) == 0)
            {
              v45 = HIDWORD(v37) & 7;
              v46 = *(v16 + 200);
              if ((HIWORD(v46) & 0xF) < v45)
              {
                *(v16 + 200) = v46 & 0xFFF0FFFF | (v45 << 16);
              }
            }

            v34 = 0;
            v73 = 0;
            goto LABEL_126;
          }

          continue;
        }

        break;
      }

      if ((v37 & 0x8000000000) == 0)
      {
        if (v34)
        {
          v39 = v38 & 0xFFFFFF7700000001 | 0x8000000000;
        }

        else
        {
          v39 = v38 & 0xFFFFFFF000000001;
        }

        goto LABEL_92;
      }

      atomic_fetch_xor_explicit((a1 + 56), 0x8000000000uLL, memory_order_acquire);
      v34 = *v19;
      v15 = v68;
      if (a3)
      {
        continue;
      }

      break;
    }

    v15 = v68;
    if ((*(**v19 + 40) & 0x10000) != 0)
    {
      continue;
    }

    break;
  }

LABEL_126:
  if ((v17 & 0x40000) == 0)
  {
    *(v16 + 200) = *(v16 + 200) & 0xF0000 | v69;
  }

  if (v34)
  {
    return _dispatch_queue_invoke_finish(a1, a2, v34, v73);
  }

  return _os_object_release_internal_n(a1, 2);
}

void _dispatch_mach_wakeup(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 80);
  if ((*(a1 + 116) & 1) == 0 || *(a1 + 48))
  {
    goto LABEL_3;
  }

  if (!*(v3 + 72))
  {
    v5 = 0;
    if ((v4 & 0x10000000) == 0 || !(a3 & 0x10 | ~v4 & 0x50000000))
    {
      goto LABEL_6;
    }

    if ((*(a1 + 116) & 8) == 0)
    {
LABEL_3:
      if (*(a1 + 24) == &_dispatch_mgr_q)
      {
        v5 = &_dispatch_mgr_q;
      }

      else
      {
        v5 = 1;
      }

      goto LABEL_6;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v3 + 64) > 3u || (*(v3 + 30) & 1) != 0 && !*(v3 + 88))
  {
    goto LABEL_16;
  }

  if (*(v3 + 88))
  {
    v6 = *(v3 + 16) != 0;
  }

  else
  {
    v6 = *(a1 + 118) & 1;
  }

  v5 = &_dispatch_mgr_q;
  if (v6)
  {
    v7 = &_dispatch_mgr_q == 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_3;
  }

LABEL_6:
  _dispatch_queue_wakeup(a1, a2, a3, v5);
}

uint64_t _dispatch_xpc_sigterm_merge_evt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = ~*(a1 + 8);
  _dispatch_barrier_async_detached_f(v5, v5, _dispatch_mach_sigterm_invoke);
  v6 = *(*v5 + 80);
  v7 = __clz(__rbit32((a4 >> 8) & 0x3FFF));
  if (((a4 >> 8) & 0x3FFF) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  return v6(v5, v8, 19);
}

void _dispatch_mach_sigterm_invoke(uint64_t a1)
{
  _dispatch_unote_unregister(*(a1 + 128), 5);
  if ((*(a1 + 80) & 0x10000000) == 0)
  {
    v2 = *(a1 + 88);
    v3 = *(v2 + 48);
    if (*(v2 + 40))
    {
      v4 = *(v2 + 40);
    }

    else
    {
      v4 = 0;
    }

    _dispatch_client_callout4(v3, 11, 0, 0, v4);
  }
}

uint64_t dispatch_mach_msg_create(const void *a1, size_t a2, int a3, void *a4)
{
  if (a2 < 0x18 || (v7 = a1) == 0 && a3)
  {
    dispatch_mach_msg_create_cold_2(a2);
  }

  if (a3)
  {
    v8 = _dispatch_object_alloc(OS_dispatch_mach_msg, 96);
    *(v8 + 88) = v7;
    *(v8 + 16) = -1985229329;
    *(v8 + 24) = &unk_1ED3F3B40;
    *(v8 + 72) = a3;
    *(v8 + 80) = a2;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v9 = a2 + 88;
  if (a2 - 8 >= 0xFFFFFFFFFFFFFFA0)
  {
    dispatch_mach_msg_create_cold_1(a2);
  }

  v10 = _dispatch_object_alloc(OS_dispatch_mach_msg, v9);
  v8 = v10;
  if (v7)
  {
    memcpy((v10 + 88), v7, a2);
  }

  *(v8 + 16) = -1985229329;
  *(v8 + 24) = &unk_1ED3F3B40;
  *(v8 + 72) = 0;
  *(v8 + 80) = a2;
  if (a4)
  {
    v7 = (v8 + 88);
LABEL_12:
    *a4 = v7;
  }

  return v8;
}

void _dispatch_mach_msg_dispose(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    add_explicit = atomic_fetch_add_explicit((v2 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (add_explicit <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(add_explicit, v2);
    }

    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 72);
  if (v4 == 2)
  {
    v6 = mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 88), *(a1 + 80));
    if (v6)
    {

      _dispatch_bug(3009, v6);
    }
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 88);

    free(v5);
  }
}

uint64_t dispatch_mach_msg_get_msg(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  v2 = *(a1 + 72);
  result = a1 + 88;
  if (v2)
  {
    return *result;
  }

  return result;
}

void _dispatch_mach_msg_async_reply_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(v6 + 48);
  v8 = 3;
  if (v7)
  {
    v8 = 4;
  }

  if (v7 >> 14 == 254944)
  {
    v9 = v7 & 0x3FFF;
  }

  else
  {
    v9 = v8;
  }

  v27 = 0;
  v28 = 0;
  v26[1] = "mach_msg";
  v26[2] = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26[0] = StatusReg[23];
  StatusReg[23] = v26;
  v11 = *(v5 + 88);
  *(v6 + 16) = -1985229329;
  v13 = *(v6 + 56);
  v12 = *(v6 + 64);
  if (v13 == -1)
  {
    v16 = 0;
  }

  else
  {
    v14 = StatusReg[25];
    if (((v14 >> 8) & 0xF) != 0)
    {
      v15 = 256 << ((BYTE1(v14) & 0xFu) - 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v13 & 0xFFFFFF;
    if (v16)
    {
      if (v16 < (v15 & 0xFFFFFF00))
      {
        v16 = v15 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
      }
    }

    else if (v14 >> 12)
    {
      v16 = (256 << ((v14 >> 12) - 1)) | 0xFF;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFFF00 | StatusReg[25];
    }
  }

  v17 = v16 & 0xFFFFFFFF02FFFFFFLL;
  v18 = StatusReg[4];
  if ((v18 & 0x1000000) != 0)
  {
    if (v17)
    {
LABEL_45:
      _dispatch_set_priority_and_voucher_slow(v17, v12, 7);
      goto LABEL_21;
    }

    v17 = v18 & 0xFFFFFFFFFEFFFFFFLL;
  }

  else if (v17 == (v18 & 0xFFFFFFFF76FFFFFFLL))
  {
    goto LABEL_17;
  }

  if (v17)
  {
    goto LABEL_45;
  }

LABEL_17:
  if (v12 == -1)
  {
    goto LABEL_21;
  }

  if (StatusReg[28] != v12)
  {
    v17 = 0;
    goto LABEL_45;
  }

  if (v12 && atomic_fetch_add_explicit((v12 + 12), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    qword_1EBC5B980 = "API MISUSE: Voucher over-release";
    __break(1u);
    goto LABEL_47;
  }

LABEL_21:
  v19 = 0;
  *(v6 + 64) = 0;
  if ((a3 & 0x1000000) != 0)
  {
    v19 = objc_autoreleasePoolPush();
  }

  _dispatch_client_callout3(*(v11 + 48), v9, v6, *(_dispatch_mach_xpc_hooks + 3));
  if (v19)
  {
    objc_autoreleasePoolPop(v19);
  }

  dispatch_release(v6);
  v21 = v27;
  StatusReg[23] = v26[0];
  if (v21)
  {
    _dispatch_mach_ipc_handoff_async(v26);
  }

  v22 = *(a1 + 56);
  if (v22[2] == 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  add_explicit = atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release);
  if (add_explicit > 1)
  {
    goto LABEL_29;
  }

  if (add_explicit != 1)
  {
LABEL_47:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  _os_object_dispose(v22, v20);
LABEL_29:
  v24 = StatusReg[22];
  if (v24)
  {
    v25 = *(v24 + 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v25 > _dispatch_continuation_cache_limit)
  {
    _dispatch_continuation_free_to_cache_limit(a1);
  }

  else
  {
    *(a1 + 16) = v24;
    *(a1 + 8) = v25;
    StatusReg[22] = a1;
  }
}

uint64_t dispatch_mach_msg_get_filter_policy_id(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_4();
  }

  v2 = a1 + 88;
  if (*(a1 + 72))
  {
    v2 = *v2;
    if (!v2)
    {
      dispatch_mach_msg_get_filter_policy_id_cold_1(a1);
    }
  }

  v3 = (v2 + ((*(v2 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v3)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_2(*v3);
  }

  result = v3[1];
  if (result < 0x44)
  {
    dispatch_mach_msg_get_filter_policy_id_cold_3(result);
  }

  *a2 = v3[15];
  return result;
}

uint64_t dispatch_mig_server(uint64_t a1, uint64_t a2, unsigned int (*a3)(mach_msg_header_t *, mach_msg_header_t *))
{
  v28 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v4 = 117442818;
  v5 = a2 + 68;
  v29 = *(a1 + 88);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (&v27 - ((v6 + 83) & 0xFFFFFFFFFFFFFFF0));
  bzero(v7, v5);
  v7[1].msgh_remote_port = 0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = v7;
  bzero(v7, v5);
  v10 = 0;
  v7->msgh_size = 0;
  v11 = 1000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v13 = 117442818;
  while (1)
  {
    v14 = v7;
    v7 = v9;
    if (*(a1 + 56) >> 55)
    {
      v15 = 0;
    }

    else
    {
      v15 = (*(a1 + 80) & 0x10000000) == 0;
    }

    if (!v15 || (--v11, !v11))
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_35;
      }

      v13 &= ~2u;
      v4 &= ~2u;
    }

    v16 = mach_msg(v9, v4, v9->msgh_size, v5, *(v29 + 24), 0, 0);
    if (v16)
    {
      break;
    }

    if ((v13 & 2) == 0)
    {
LABEL_35:
      v24 = 0;
      goto LABEL_36;
    }

    v17 = voucher_create_with_mach_msg(&v9->msgh_bits);
    v18 = *(StatusReg + 224);
    if (v18 == v17)
    {
      goto LABEL_21;
    }

    *(StatusReg + 224) = v17;
    if (v17)
    {
      v19 = v17[8];
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = 0;
      if (!v18)
      {
LABEL_17:
        v20 = 0;
        goto LABEL_18;
      }
    }

    v20 = *(v18 + 32);
LABEL_18:
    if (v19 != -1 && v19 != v20)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v19);
    }

LABEL_21:
    if (v18)
    {
      add_explicit = atomic_fetch_add_explicit((v18 + 12), 0xFFFFFFFF, memory_order_relaxed);
      if (add_explicit <= 1)
      {
        _dispatch_mgr_queue_drain_cold_2(add_explicit, v18);
      }
    }

    *&v14->msgh_bits = 0;
    *&v14->msgh_remote_port = 0;
    *&v14->msgh_voucher_port = 0;
    if (!v28(v9, v14))
    {
      goto LABEL_29;
    }

    if ((v14->msgh_bits & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    msgh_remote_port = v14[1].msgh_remote_port;
    if (!msgh_remote_port)
    {
      goto LABEL_30;
    }

    if (msgh_remote_port == -305)
    {
      v14->msgh_remote_port = 0;
    }

    else
    {
LABEL_29:
      v9->msgh_remote_port = 0;
      mach_msg_destroy(v9);
    }

LABEL_30:
    v10 = 1;
    v9 = v14;
    v4 = v13;
    if (v14->msgh_remote_port)
    {
      if ((v14->msgh_bits & 0x1F) == 0x12)
      {
        v23 = 1;
      }

      else
      {
        v23 = 17;
      }

      v4 = v23 | v13;
      v9 = v14;
    }
  }

  v24 = v16;
  if ((v16 - 268435459) < 2)
  {
    _dispatch_mig_consume_unsent_message(v9);
  }

  else if (v16 != 268451842)
  {
    if (v16 == 268451843)
    {
      if (v10 & 1 | (v9->msgh_remote_port != 0))
      {
        v24 = 0;
      }

      else
      {
        v24 = 268451843;
      }
    }

    else
    {
      _dispatch_bug_mach_client("dispatch_mig_server: mach_msg() failed", v16);
    }
  }

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void _dispatch_mig_consume_unsent_message(mach_msg_header_t *a1)
{
  msgh_local_port = a1->msgh_local_port;
  if (msgh_local_port - 1 <= 0xFFFFFFFD)
  {
    v3 = (a1->msgh_bits >> 8) & 0x1F;
    if (v3 - 17 >= 2)
    {
      if (v3 != 16)
      {
        goto LABEL_10;
      }

      v4 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], msgh_local_port, 1u, -1);
    }

    else
    {
      v4 = mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
    }

    if (v4 == -301)
    {
      _dispatch_sema4_create_slow_cold_3();
    }

    if (v4)
    {
      _dispatch_bug(3179, v4);
    }
  }

LABEL_10:

  mach_msg_destroy(a1);
}

uint64_t dispatch_mach_mig_demux(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v24[1] = "mach_mig_demux";
  v24[2] = a1;
  v4 = (a4 + 88);
  if (*(a4 + 72))
  {
    v4 = *&v4->msgh_bits;
  }

  if (a3)
  {
    msgh_id = v4->msgh_id;
    while (1)
    {
      v6 = *a2;
      v7 = *(*a2 + 8);
      v8 = __OFSUB__(msgh_id, v7);
      v9 = msgh_id - v7;
      if (v9 < 0 == v8 && *(v6 + 12) > msgh_id)
      {
        break;
      }

      ++a2;
      if (!--a3)
      {
        goto LABEL_8;
      }
    }

    v12 = v6 + 40 * v9;
    if (*(v12 + 40))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v24[0] = *(StatusReg + 184);
      *(StatusReg + 184) = v24;
      v14 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](a1);
      v16 = (v24 - ((v15 + 15) & 0x1FFFFFFF0));
      bzero(v16, v15);
      msgh_remote_port = v4->msgh_remote_port;
      v16->msgh_bits = v4->msgh_bits & 0x1F;
      v16->msgh_size = 36;
      *&v16->msgh_remote_port = msgh_remote_port;
      v16->msgh_voucher_port = 0;
      v16->msgh_id = msgh_id + 100;
      (*(v12 + 40))(v4, v16);
      if ((v16->msgh_bits & 0x80000000) == 0)
      {
        v18 = v16[1].msgh_remote_port;
        if (v18 == -305)
        {
          goto LABEL_33;
        }

        if (v18)
        {
          v4->msgh_remote_port = 0;
          mach_msg_destroy(v4);
        }
      }

      if (v16->msgh_remote_port)
      {
        if ((v16->msgh_bits & 0x1F) == 0x12)
        {
          v19 = 1;
        }

        else
        {
          v19 = 17;
        }

        v20 = mach_msg(v16, v19, v16->msgh_size, 0, 0, 0, 0);
        if ((v20 - 268435459) >= 2)
        {
          if (v20)
          {
            if (v20 == -301)
            {
              _dispatch_sema4_create_slow_cold_3();
            }

            dispatch_mach_mig_demux_cold_3(v20);
          }

          goto LABEL_33;
        }

        msgh_local_port = v16->msgh_local_port;
        if (msgh_local_port - 1 > 0xFFFFFFFD)
        {
          goto LABEL_32;
        }

        v22 = (v16->msgh_bits >> 8) & 0x1F;
        if ((v22 - 17) >= 2)
        {
          if (v22 != 16)
          {
LABEL_32:
            mach_msg_destroy(v16);
            goto LABEL_33;
          }

          v23 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], msgh_local_port, 1u, -1);
        }

        else
        {
          v23 = mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
        }

        if (v23 == -301)
        {
          _dispatch_sema4_create_slow_cold_3();
        }

        if (v23)
        {
          _dispatch_bug(3179, v23);
        }

        goto LABEL_32;
      }

LABEL_33:
      *(StatusReg + 184) = v24[0];
      result = 1;
      goto LABEL_9;
    }
  }

LABEL_8:
  result = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dispatch_mach_mig_demux_get_context()
{
  v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 184;
  do
  {
    v0 = *v0;
    if (!v0)
    {
      dispatch_mach_mig_demux_get_context_cold_1();
    }
  }

  while (*(v0 + 8) != "mach_mig_demux");
  return *(v0 + 16);
}

uint64_t _dispatch_mach_msg_create_reply_disconnected(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 13;
  if (!a1)
  {
    v5 = (a2 + 24);
  }

  v6 = *v5;
  if (*v5)
  {
    if (a2 && !*(a2 + 16) && *(a2 + 30) == 1)
    {
      v8 = *(a2 + 56);
      if (v8)
      {
        add_explicit = atomic_fetch_add_explicit((v8 + 12), 0xFFFFFFFF, memory_order_relaxed);
        if (add_explicit <= 1)
        {
          _dispatch_mach_msg_dispose_cold_1(add_explicit, v8);
        }

        *(a2 + 56) = 0;
      }

      _dispatch_destruct_reply_port();
      return 0;
    }

    result = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(result + 16) = -1985229329;
    *(result + 24) = &unk_1ED3F3B40;
    *(result + 72) = 0;
    *(result + 80) = 24;
    *(result + 100) = v6;
    if (a1)
    {
      *(result + 32) = a1[4];
      v11 = a1[8];
      *(result + 56) = a1[7];
      *(result + 64) = v11;
      if (v11 && atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed) <= 0)
      {
        [OS_voucher retain];
      }
    }

    else
    {
      v12 = *(a2 + 40);
      v13 = *(a2 + 56);
      *(result + 32) = *(a2 + 48);
      *(result + 56) = v12;
      *(result + 64) = v13;
      *(a2 + 56) = 0;
    }

    v14 = a3 | 0xF8F80000;
    if (!a3)
    {
      v14 = 0;
    }

    *(result + 48) = v14;
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v15 = *(a2 + 56);
    if (!v15)
    {
      return 0;
    }

    v16 = atomic_fetch_add_explicit((v15 + 12), 0xFFFFFFFF, memory_order_relaxed);
    if (v16 <= 1)
    {
      _dispatch_mach_msg_dispose_cold_1(v16, v15);
    }

    result = 0;
    *(a2 + 56) = 0;
  }

  return result;
}

void _dispatch_destruct_reply_port()
{
  v0 = thread_destruct_special_reply_port();
  if (v0 == -301)
  {
    _dispatch_sema4_create_slow_cold_3();
  }

  if (v0)
  {

    _dispatch_bug(524, v0);
  }
}

void _dispatch_mach_send_drain(_DWORD *a1, const char *a2, int *a3)
{
  v4 = a2;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 15);
  v9 = HIDWORD(*(v8 + 64)) & 7;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    if (*(v8 + 72))
    {
      v32 = v6;
      v10 = (a3 & 0xFFFFFFF7);
      v11 = a3;
      v33 = (v8 + 72);
LABEL_4:
      v12 = *(v8 + 80);
      if (!v12)
      {
        v12 = _dispatch_wait_for_enqueuer((v8 + 80));
      }

      while (1)
      {
        v13 = v12;
        v12 = *(v12 + 16);
        *(v8 + 80) = v12;
        if (!v12)
        {
          v18 = *v33;
          while (v13 == (v18 & 0xFFFFFFFFFFFFFFF8))
          {
            v19 = v18;
            atomic_compare_exchange_strong_explicit(v33, &v19, 0, memory_order_release, memory_order_relaxed);
            v20 = v19 == v18;
            v18 = v19;
            if (v20)
            {
              goto LABEL_7;
            }
          }

          v12 = v13[2];
          if (!v12)
          {
            v12 = _dispatch_wait_for_enqueuer(v13 + 2);
          }

          *(v8 + 80) = v12;
        }

LABEL_7:
        v14 = *v13;
        if (*v13 < 0x1000)
        {
          break;
        }

        if (*(v14 + 40) != 768)
        {
          v15 = 0;
          v16 = v13;
LABEL_18:
          if (*(v8 + 88) || (a1[20] & 0x10000000) != 0)
          {
            _dispatch_mach_msg_not_sent(a1, v16, v15);
          }

          else
          {
            v17 = _dispatch_mach_msg_send(a1, v16, v15, v9, v11);
            if (!v17)
            {
              v6 = v32 | (2 * (*(a1 + 59) & 1));
LABEL_36:
              v13[2] = v12;
              if (!v12)
              {
                v21 = 0;
                atomic_compare_exchange_strong_explicit(v33, &v21, v13, memory_order_release, memory_order_relaxed);
                if (v21)
                {
                  v29 = *(v8 + 80);
                  if (!v29)
                  {
                    v30 = v6;
                    v29 = _dispatch_wait_for_enqueuer((v8 + 80));
                    v6 = v30;
                  }

                  v13[2] = v29;
                }
              }

              *(v8 + 80) = v13;
              if (*v13 >= 0x1000 && *(*v13 + 40) == 768)
              {
                v22 = *(v8 + 64);
                do
                {
                  v23 = v22;
                  v24 = v22 & 0xFFFFFFC700000000 | 0x3000000000;
                  atomic_compare_exchange_strong_explicit((v8 + 64), &v22, v24, memory_order_release, memory_order_relaxed);
                }

                while (v22 != v23);
              }

              else
              {
                v25 = *(v8 + 64);
                do
                {
                  v23 = v25;
                  v24 = v25 & 0xFFFFFFC7FFFFFFFFLL;
                  if ((v25 & 0x2800000000) == 0)
                  {
                    v24 = v25 & 0xFFFFFFD700000000 | 0x2000000000;
                  }

                  atomic_compare_exchange_strong_explicit((v8 + 64), &v25, v24, memory_order_release, memory_order_relaxed);
                }

                while (v25 != v23);
              }

              a3 = v10;
              goto LABEL_50;
            }

            v7 |= (v17 & 2) >> 1;
          }

          goto LABEL_22;
        }

        if ((a3 & 4) == 0)
        {
          goto LABEL_34;
        }

        _dispatch_continuation_pop(v13, 0, v4, a1);
LABEL_22:
        v11 = (a3 & 0xFFFFFFF7);
        if (!v12)
        {
          v11 = (a3 & 0xFFFFFFF7);
          if (*v33)
          {
            goto LABEL_4;
          }

          a3 = (a3 & 0xFFFFFFF7);
          v6 = v32;
          goto LABEL_48;
        }
      }

      if ((v14 & 1) == 0)
      {
        if (*(v8 + 16) && *(StatusReg + 160) != &_dispatch_mgr_q)
        {
          *(a1 + 59) |= 1u;
          v6 = v32 | 2;
          goto LABEL_36;
        }

        if (!_dispatch_mach_reconnect_invoke(a1, v13))
        {
LABEL_34:
          v6 = v32;
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      v16 = v13[6];
      v15 = v13[7];
      goto LABEL_18;
    }

LABEL_48:
    v26 = *(v8 + 64);
    do
    {
      v23 = v26;
      v24 = v26 & ((v26 << 26) >> 63) & 0xFFFFFFC7FFFFFFFFLL;
      atomic_compare_exchange_strong_explicit((v8 + 64), &v26, v24, memory_order_release, memory_order_relaxed);
    }

    while (v26 != v23);
LABEL_50:
    if ((v23 & 0x800000000) != 0)
    {
      v27 = HIDWORD(v23) & 7;
      v28 = *(StatusReg + 200);
      if ((HIWORD(v28) & 0xF) < v27)
      {
        *(StatusReg + 200) = v28 & 0xFFF0FFFF | (v27 << 16);
      }
    }

    v9 = HIDWORD(v24) & 7;
  }

  while (v24);
  if ((v24 & 0x1000000000) != 0)
  {
    _dispatch_mach_push_send_barrier_drain(a1, BYTE4(v24) & 7);
    return;
  }

  if (!v24 && (*(a1 + 59) & 2) != 0)
  {
    if ((a1[29] & 8) != 0)
    {
      v6 = v6;
    }

    else
    {
      v6 = v6 | 0x12;
    }
  }

  if (((v23 ^ v24) & 0x8000000000) == 0)
  {
    if (!v6)
    {
      return;
    }

LABEL_71:
    (*(*a1 + 80))(a1, (*(a1 + 59) << 31 >> 31) & v9, v6);
    return;
  }

  if (v6)
  {
    v6 = v6 | 1;
    goto LABEL_71;
  }

  if (a1[2] != 0x7FFFFFFF)
  {
    add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
    if (add_explicit <= 2)
    {
      if (add_explicit == 2)
      {
        _os_object_dispose(a1, a2);
      }

      else
      {
        qword_1EBC5B980 = "API MISUSE: Over-release of an object";
        __break(1u);
      }
    }
  }
}

void _dispatch_mach_msg_not_sent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  if ((*(a1 + 116) & 0x10) != 0 && *(a2 + 32))
  {
    v7 = (*(_dispatch_mach_xpc_hooks + 2))();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = 12;
  }

  else
  {
    v9 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v9);
  if ((v6 & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = -117964795;
  }

  *(a2 + 48) = v11;
  _dispatch_mach_handle_or_push_received_msg(a1, a2, 0);
  if (reply_disconnected)
  {
    if (v8)
    {
      v12 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, a1);
      v13 = *(*v8 + 88);
      v14 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
      if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 0;
      }

      v13(v8, v12, v15);
    }

    else
    {

      _dispatch_mach_handle_or_push_received_msg(a1, reply_disconnected, 0);
    }
  }
}

uint64_t _dispatch_mach_msg_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = a4;
  v8 = a1;
  v86 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 120);
  v10 = a2 + 88;
  if (*(a2 + 72))
  {
    v10 = *v10;
  }

  v11 = *(a2 + 64);
  v12 = *v10 & 0x1F;
  v13 = *(a2 + 52);
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  memset(v82, 0, 40);
  if (v12 == 18)
  {
    v14 = (a2 + 48);
    v5 = *(a2 + 48);
    if ((v5 & 2) == 0)
    {
      v80 = 18;
      v15 = 0;
      v16 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_38;
    }

LABEL_19:
    v25 = 0;
    goto LABEL_73;
  }

  v18 = *(a1 + 118);
  *(a1 + 118) = v18 & 0xFFFE;
  v19 = *(v9 + 48);
  if (v19)
  {
    v20 = v19 == a2;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if (*(v9 + 16) && *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
    {
      v47 = 0;
      v48 = v18 | 1;
      goto LABEL_71;
    }

    v59 = v13;
    v14 = a5;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v61 = *(StatusReg + 32) & 0xFFFFFFLL;
    if (v61 >= 0x10FF)
    {
      v61 = 4351;
    }

    *(v19 + 56) = v61;
    v62 = *(StatusReg + 224);
    if (v62 && atomic_fetch_add_explicit((v62 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
      goto LABEL_130;
    }

    *(v19 + 64) = v62;
    *(v19 + 48) = ((*(StatusReg + 32) & 0x300) != 0) << 18;
    if (!_dispatch_mach_msg_send(a1, *(v9 + 48), 0, a4, 0))
    {
      goto LABEL_125;
    }

    if ((*(v8 + 116) & 0x20) != 0)
    {
      _dispatch_mach_arm_no_senders(v8, 1);
    }

    v19 = 0;
    *(v9 + 48) = 0;
    LOBYTE(a5) = v14;
    LODWORD(v13) = v59;
  }

  v14 = (a2 + 48);
  v5 = *(a2 + 48);
  if ((v5 & 2) != 0)
  {
    goto LABEL_19;
  }

  v80 = v12;
  LOWORD(v12) = 0;
  v21 = 1;
  if (v19 != a2)
  {
    *(v10 + 8) = *(v9 + 92);
  }

  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 160) != &_dispatch_mgr_q)
  {
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((*(v10 + 2) & 0x1F) == 0)
    {
      if (_voucher_task_mach_voucher_pred != -1)
      {
        v70 = v13;
        v71 = a5;
        dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
        LODWORD(v13) = v70;
        LOBYTE(a5) = v71;
      }

      v15 = 0;
      mach_voucher = _voucher_task_mach_voucher;
      goto LABEL_32;
    }

LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  if (!*(v9 + 16))
  {
    v76 = v13;
    v59 = v9;
    LOBYTE(v9) = a5;
    v73 = v8;
    v67 = *(v8 + 120);
    *(v67 + 24) = *(v10 + 8);
    _dispatch_unote_register(v67, -4, 0x2000000u);
    if (v68)
    {
LABEL_123:
      v69 = *(v59 + 16);
      LOBYTE(a5) = v9;
      v9 = v59;
      LODWORD(v13) = v76;
      v8 = v73;
      goto LABEL_21;
    }

LABEL_130:
    _dispatch_bug(1752, 0);
    goto LABEL_123;
  }

LABEL_21:
  if (*(v9 + 30))
  {
    goto LABEL_98;
  }

  v21 = v12 | 0x81;
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_16:
  v22 = *(v11 + 48);
  if (!v22)
  {
    if ((*(v10 + 2) & 0x1F) == 0)
    {
      v74 = v21;
      v77 = v13;
      v23 = v9;
      v24 = a5;
      v15 = 0;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  *(&v82[0] + 1) = 59821818;
  *&v82[1] = v22;
  *(&v82[1] + 8) = *(v11 + 56);
  LODWORD(v82[0]) = 40;
  v15 = 32;
  if ((*(v10 + 2) & 0x1F) != 0)
  {
LABEL_29:
    v16 = 0;
    goto LABEL_35;
  }

  v74 = v21;
  v77 = v13;
  v23 = v9;
  v24 = a5;
LABEL_31:
  mach_voucher = _voucher_get_mach_voucher(v11);
  LOBYTE(a5) = v24;
  v9 = v23;
  LODWORD(v13) = v77;
  v21 = v74;
LABEL_32:
  v16 = 0;
  if (mach_voucher)
  {
    v27 = *v10;
    if ((*v10 & 0x1F0000) == 0)
    {
      *(v10 + 16) = mach_voucher;
      *v10 = v27 | 0x130000;
      v16 = 1;
    }
  }

LABEL_35:
  if (v6)
  {
    v28 = __clz(__rbit32((*(a2 + 56) >> 8) & 0x3FFF));
    v17 = v21 | 0x30;
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v17 = v21 | 0x10;
  if (v13)
  {
LABEL_37:
    v17 |= (4 * *(v8 + 116)) & 0x200;
  }

LABEL_38:
  v78 = v14;
  v79 = v9;
  if ((v5 & 4) != 0)
  {
    if (*(a3 + 30) == 1)
    {
      v29 = v15;
      v30 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      if (v13 == *(v30 + 64))
      {
        v31 = v16;
        v32 = v17;
        v33 = a5;
        *(v30 + 64) = 0;
LABEL_45:
        v34 = v13;
        _dispatch_mach_reply_waiter_register(v8, a3, v13, a2);
        LOBYTE(v17) = v32;
        v15 = v29;
        goto LABEL_46;
      }
    }

    else
    {
      v29 = v15;
    }

    v31 = v16;
    v32 = v17;
    v33 = a5;
    goto LABEL_45;
  }

  v31 = v16;
  v34 = v13;
  v33 = a5;
LABEL_46:
  v35 = *(v10 + 4);
  v83 = v10;
  *&v84 = v35;
  v36 = v82[0];
  if (!v15)
  {
    v36 = 0;
  }

  *(&v84 + 1) = v82;
  *&v85 = 0;
  *(&v85 + 1) = v36;
  v37 = *(v10 + 8);
  v38 = *(v10 + 16);
  v39 = *(v10 + 20);
  v75 = v17;
  if ((v17 & 1) != 0 && (*v10 & 0x80000000) != 0)
  {
    v40 = *(v10 + 24);
  }

  v41 = mach_msg2_internal();
  v25 = v41;
  if ((v5 & 4) != 0 && v41)
  {
    _dispatch_mach_reply_unregister(v8, a3, 36);
  }

  LOBYTE(a5) = v33;
  v9 = v79;
  LODWORD(v13) = v34;
  if (!v31)
  {
LABEL_66:
    if (v25 == 268435460)
    {
      v25 = 268435460;
      v12 = v80;
      v14 = v78;
      if ((v75 & 0x10) != 0)
      {
        if (*(v10 + 8) == -1)
        {
          *v10 = *v10 & 0xFFFFFFE0 | 0x13;
          if ((v75 & 0x80) == 0)
          {
            goto LABEL_70;
          }
        }

        else if ((v75 & 0x80) == 0)
        {
LABEL_70:
          v47 = 0;
          v48 = *(v8 + 118) | 1;
LABEL_71:
          *(v8 + 118) = v48;
LABEL_99:
          v57 = *MEMORY[0x1E69E9840];
          return v47;
        }

        _dispatch_mach_notification_set_armed(v9);
LABEL_98:
        v47 = 0;
        goto LABEL_99;
      }
    }

    else
    {
      v12 = v80;
      v14 = v78;
    }

LABEL_73:
    if (!(v5 & 4 | v25))
    {
      if (v13)
      {
        v49 = *(v8 + 88);
        if (!*(v49 + 16) || *(v49 + 24) != v13)
        {
          v50 = a5;
          _dispatch_mach_reply_kevent_register(v8, v13, a2);
          LOBYTE(a5) = v50;
        }
      }
    }

    if (v12 != 18 && *(v9 + 48) == a2 && *(v9 + 16))
    {
      v63 = a5;
      _dispatch_unote_unregister(*(v8 + 120), 5);
      LOBYTE(a5) = v63;
      *(*(v8 + 120) + 24) = 0;
      if (!v25)
      {
        goto LABEL_82;
      }
    }

    else if (!v25)
    {
LABEL_82:
      v51 = 0;
      reply_disconnected = 0;
      goto LABEL_83;
    }

    if ((*(v8 + 116) & 0x10) != 0)
    {
      v64 = a5;
      if (*(a2 + 32))
      {
        v65 = (*(_dispatch_mach_xpc_hooks + 2))();
        if (v65)
        {
          v51 = v65;
        }

        else
        {
          v51 = v8;
        }

LABEL_118:
        if (v51)
        {
          v66 = 12;
        }

        else
        {
          v66 = 7;
        }

        reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(a2, a3, v66);
        LOBYTE(a5) = v64;
LABEL_83:
        *v14 = v25;
        if (a5 & 8) != 0 && (v5)
        {
          v47 = 3;
          if (!reply_disconnected)
          {
            goto LABEL_99;
          }
        }

        else
        {
          _dispatch_mach_handle_or_push_received_msg(v8, a2, 0);
          v47 = 1;
          if (!reply_disconnected)
          {
            goto LABEL_99;
          }
        }

        if (v51)
        {
          v53 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v8);
          v54 = *v51 + 88;
          v55 = __clz(__rbit32((*(reply_disconnected + 56) >> 8) & 0x3FFF));
          if (((*(reply_disconnected + 56) >> 8) & 0x3FFF) != 0)
          {
            v56 = v55 + 1;
          }

          else
          {
            v56 = 0;
          }

          (*(*v51 + 88))(v51, v53, v56);
        }

        else
        {
          _dispatch_mach_handle_or_push_received_msg(v8, reply_disconnected, 0);
        }

        goto LABEL_99;
      }
    }

    else
    {
      v64 = a5;
    }

    v51 = 0;
    goto LABEL_118;
  }

  v42 = *(v10 + 16);
  if (v25 != 268435461 || !v42)
  {
    v43 = *v10;
    v44 = HIWORD(*v10) & 0x1F;
    v45 = v44 == 17 || v44 == 19;
    if (v45 && v42)
    {
      if (v44 == 17)
      {
        v46 = a5;
        _voucher_dealloc_mach_voucher(v42);
        LODWORD(v13) = v34;
        LOBYTE(a5) = v46;
        v9 = v79;
        v43 = *v10;
      }

      *(v10 + 16) = 0;
      *v10 = v43 & 0xFFE0FFFF;
    }

    goto LABEL_66;
  }

  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Voucher port corruption";
  qword_1EBC5B9B0 = 268435461;
  __break(1u);
LABEL_125:
  result = *(*(v9 + 48) + 64);
  if (!result)
  {
    goto LABEL_98;
  }

  add_explicit = atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit > 1)
  {
LABEL_127:
    v47 = 0;
    *(*(v9 + 48) + 64) = 0;
    goto LABEL_99;
  }

  if (add_explicit == 1)
  {
    _voucher_xref_dispose(result);
    goto LABEL_127;
  }

  qword_1EBC5B980 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

void _dispatch_mach_push_send_barrier_drain(uint64_t a1, unsigned int a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 176);
  if (v5)
  {
    *(StatusReg + 176) = v5[2];
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  v5[4] = 0;
  v5[5] = 0;
  v5[3] = -1;
  *v5 = &unk_1F3A43470;
  v5[1] = -1;

  _dispatch_lane_push(a1, v5, a2);
}

uint64_t _dispatch_mach_reply_waiter_register(uint64_t result, uint64_t a2, int a3, void *a4)
{
  *(a2 + 8) = ~result;
  *(a2 + 28) = -8;
  *(a2 + 24) = a3;
  if ((*(a2 + 30) & 1) == 0)
  {
    v5 = a4[8];
    if (v5)
    {
      if (atomic_fetch_add_explicit((v5 + 12), 1u, memory_order_relaxed) <= 0)
      {
        qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
        __break(1u);
        return result;
      }

      *(a2 + 56) = v5;
    }

    *(a2 + 40) = a4[7];
    *(a2 + 48) = a4[4];
  }

  v6 = 0;
  v7 = *(result + 120);
  v8 = (v7 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v7 + 40), &v6, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = _dispatch_unfair_lock_lock_slow(v7 + 40);
  }

  v12 = *(v7 + 56);
  v11 = (v7 + 56);
  v10 = v12;
  *(a2 + 64) = v12;
  if (v12)
  {
    *(v10 + 72) = a2 + 64;
  }

  *v11 = a2;
  *(a2 + 72) = v11;
  v13 = *(StatusReg + 24) & 0xFFFFFFFC;
  v14 = atomic_exchange_explicit(v8, 0, memory_order_release);
  if (v14 != v13)
  {

    return _dispatch_unfair_lock_unlock_slow(v8, v14);
  }

  return result;
}

void _dispatch_mach_reply_kevent_register(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = off_1F3A43CA0(&_dispatch_mach_type_reply, a2, 0);
  v6 = v5;
  *(v5 + 1) = ~a1;
  v7 = a3[8];
  if (v7)
  {
    if (atomic_fetch_add_explicit((v7 + 12), 1u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Voucher resurrection";
      __break(1u);
LABEL_44:
      v28 = *(v7 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = a1;
      goto LABEL_20;
    }

    *(v5 + 7) = v7;
  }

  v8 = 0;
  *(v5 + 10) = a3[7];
  v9 = a3[4];
  *(v6 + 48) = v9;
  v10 = *(a1 + 116);
  if ((v10 & 0x10) != 0 && v9)
  {
    v11 = (*(_dispatch_mach_xpc_hooks + 2))();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a1;
    }

    v10 = *(a1 + 116);
  }

  if ((v10 & 0x80) != 0)
  {
    *(v6 + 32) |= 0x200u;
  }

  v28 = 0;
  if (!v8 || v8 == a1)
  {
    v7 = *(a1 + 88);
    if (*(v7 + 16) >= 4uLL)
    {
      goto LABEL_44;
    }
  }

  if ((BYTE2((*v8)[1].isa) & 1) == 0)
  {
    v12 = _dispatch_queue_compute_priority_and_wlh(v8, &v28);
    if (v12)
    {
      goto LABEL_21;
    }

    v28 = -4;
    goto LABEL_20;
  }

  v28 = -4;
  v12 = 0x2000000;
  if (v8 >= &_dispatch_root_queues && v8 < &_dispatch_queue_serial_numbers)
  {
LABEL_20:
    v12 = *(v8 + 21);
  }

LABEL_21:
  v13 = *(a3 + 14);
  v14 = (__clz(__rbit32((v13 >> 8) & 0x3FFF)) << 8) + 256;
  if (((v13 >> 8) & 0x3FFF) == 0)
  {
    v14 = 0;
  }

  v15 = v14 & 0xFFFFFF00 | *(a3 + 14);
  v16 = v12 & 0x80000000;
  if ((v12 & 0xFFF) != 0)
  {
    if ((v12 & 0xFFFu) > v15)
    {
      v15 = v12 & 0xFFF;
    }

    goto LABEL_29;
  }

  if (v12 >> 12 && v15)
  {
LABEL_29:
    v17 = v15 | v16;
    goto LABEL_30;
  }

  if (!(v12 >> 12) || v15)
  {
    v28 = -4;
    v17 = 0x2000000;
  }

  else
  {
    v17 = v16 | (v12 >> 12 << 8) | 0xFF;
  }

LABEL_30:
  v18 = 0;
  v19 = *(a1 + 120);
  v20 = (v19 + 40);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit((v19 + 40), &v18, *(StatusReg + 24) & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    _dispatch_unfair_lock_lock_slow(v19 + 40);
  }

  v24 = *(v19 + 56);
  v23 = (v19 + 56);
  v22 = v24;
  *(v6 + 64) = v24;
  if (v24)
  {
    *(v22 + 72) = v6 + 64;
  }

  *v23 = v6;
  *(v6 + 72) = v23;
  v25 = *(StatusReg + 24) & 0xFFFFFFFC;
  v26 = atomic_exchange_explicit(v20, 0, memory_order_release);
  if (v26 != v25)
  {
    _dispatch_unfair_lock_unlock_slow(v20, v26);
  }

  _dispatch_unote_register(v6, v28, v17);
  if ((v27 & 1) == 0)
  {
    _dispatch_mach_reply_unregister(a1, v6, 52);
  }
}

uint64_t _dispatch_mach_msg_async_reply_wrap(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed) <= 0)
  {
    dispatch_set_target_queue_cold_2();
  }

  _dispatch_mach_msg_async_reply_wrap_cold_2(a1, a2, &v3);
  return v3;
}

void _dispatch_mach_send_push_and_trydrain(atomic_uint *a1, unint64_t a2, uint64_t a3, int *a4)
{
  v5 = *(a1 + 15);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 24);
  *(a2 + 16) = 0;
  *(StatusReg + 976) = v5 + 72;
  v8 = atomic_exchange_explicit((v5 + 72), a2, memory_order_release);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v8 + 16);
  }

  else
  {
    if (a1[2] != 0x7FFFFFFF && atomic_fetch_add_explicit(a1 + 2, 2u, memory_order_relaxed) <= 0)
    {
      qword_1EBC5B980 = "API MISUSE: Resurrection of an object";
      __break(1u);
      goto LABEL_57;
    }

    v11 = (v5 + 80);
    v10 = 3;
    v9 = 0xA000000000;
  }

  *v11 = a2;
  *(StatusReg + 976) = 0;
  if (*(v5 + 88) || (a1[20] & 0x10000000) != 0)
  {
    v23 = *(v5 + 64);
    v24 = a3 << 32;
    do
    {
      v25 = v23;
      if ((v23 & 0x700000000) >= v24)
      {
        v26 = v23;
      }

      else
      {
        v26 = v24 | v23 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v27 = v26 | v9;
      atomic_compare_exchange_strong_explicit((v5 + 64), &v23, v27, memory_order_release, memory_order_relaxed);
    }

    while (v23 != v25);
    if (((v27 ^ v25) & 0x8000000000) != 0)
    {
      v28 = v10 & 2;
    }

    else
    {
      v28 = v10;
    }

    (*(*a1 + 80))(a1, a3, v28);
    return;
  }

  v12 = v7 & 0xFFFFFFFC;
  v13 = (v5 + 64);
  if (!v8)
  {
    v18 = *v13;
    v19 = a3 << 32;
    do
    {
      v16 = v18;
      if ((v18 & 0x700000000uLL) >= v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19 | v18 & 0xFFFFFFF0FFFFFFFFLL | 0x2800000000;
      }

      v21 = v20 | v9;
      if ((v18 & 0x10FFFFFFFFLL) == 0)
      {
        v21 = v21 & 0xFFFFFFC7FFFFFFFFLL | v12;
      }

      atomic_compare_exchange_strong(v13, &v18, v21);
    }

    while (v18 != v16);
    if (((v21 ^ v16) & 0x8000000000) != 0)
    {
      v10 &= 2u;
    }

    else
    {
      v10 = v10;
    }

LABEL_26:
    if (v16 >= 4)
    {
      if ((v16 & 0x700000000uLL) < a3 << 32)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      if ((v10 & 1) == 0)
      {
        return;
      }

      if (a1[2] == 0x7FFFFFFF)
      {
        return;
      }

      add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release);
      if (add_explicit > 2)
      {
        return;
      }

      if (add_explicit == 2)
      {
        _os_object_dispose(a1, a2);
        return;
      }

LABEL_58:
      qword_1EBC5B980 = "API MISUSE: Over-release of an object";
      __break(1u);
      return;
    }

    if ((v16 & 0x1000000000) != 0)
    {
      (*(*a1 + 80))(a1, a3, v10);
      return;
    }

    if (v10 && *(v5 + 80) == a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      a4 = (a4 & 0xFFFFFFF7);
      if ((v10 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[2] == 0x7FFFFFFF || atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFE, memory_order_release) > 2)
    {
LABEL_33:

      _dispatch_mach_send_drain(a1, 0, a4);
      return;
    }

LABEL_57:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    goto LABEL_58;
  }

  v14 = *v13;
  v15 = a3 << 32;
  while (1)
  {
    v16 = v14;
    if ((v14 & 0x700000000uLL) >= v15 || (v14 & 0xFFFFFFD0FFFFFFFFLL | v15 | 0x2800000000) == v14)
    {
      break;
    }

    v17 = v14 & 0xFFFFFFC0FFFFFFFFLL | v15 & 0xFFFFFFC7FFFFFFFFLL | v12;
    if ((v14 & 0x10FFFFFFFFLL) != 0)
    {
      v17 = v14 & 0xFFFFFFD0FFFFFFFFLL | v15 | 0x2800000000;
    }

    atomic_compare_exchange_strong_explicit(v13, &v14, v17, memory_order_acquire, memory_order_acquire);
    if (v14 == v16)
    {
      goto LABEL_26;
    }
  }
}

void _dispatch_mach_handle_wlh_change(uint64_t a1)
{
  v1 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v1 & 0x400000) != 0)
  {
    if ((v1 & 0x8000000) == 0)
    {
      if ((*(a1 + 116) & 0x10) != 0)
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after xpc connection was activated");
      }

      else
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy after mach channel was connected");
      }
    }
  }

  else
  {
    if ((*(a1 + 116) & 0x10) == 0)
    {
      qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after mach channel was connected";
      __break(1u);
    }

    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after xpc connection was activated";
    __break(1u);
  }
}

void _dispatch_mach_cancel(uint64_t a1)
{
  if (*(*(a1 + 120) + 88))
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(a1 + 118) >> 1) & 1;
  }

  if ((*(a1 + 80) & 0x40000000) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    _dispatch_unote_unregister(v4, v3);
    v2 &= v5;
  }

  v6 = *(a1 + 88);
  v7 = *(v6 + 24);
  if (v7)
  {
    _dispatch_unote_unregister(*(a1 + 88), v3);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = _dispatch_object_alloc(OS_dispatch_mach_msg, 112);
    *(v9 + 16) = -1985229329;
    *(v9 + 24) = &unk_1ED3F3B40;
    *(v9 + 72) = 0;
    *(v9 + 80) = 24;
    *(v9 + 100) = v7;
    *(v9 + 48) = -117964793;
    _dispatch_mach_handle_or_push_received_msg(a1, v9, 0);
    *(v6 + 24) = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
LABEL_12:
    atomic_fetch_or_explicit((a1 + 80), 0x40000000u, memory_order_relaxed);
    return;
  }

  v10 = *(a1 + 80);
  do
  {
    v11 = v10;
    v12 = v10 & 0x3FFFFFFF | 0x80000000;
    if (v12 == v10)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit((a1 + 80), &v10, v12, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v11);
  if ((v11 & 0xA0000000) != 0)
  {
    qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt channel state";
    qword_1EBC5B9B0 = v11;
    __break(1u);
LABEL_22:
    qword_1EBC5B980 = "API MISUSE: Over-release of an object";
    __break(1u);
    return;
  }

  if (*(a1 + 8) != 0x7FFFFFFF && atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) <= 1)
  {
    goto LABEL_22;
  }
}

void _dispatch_mach_cancel_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 88);
  if ((a2 & 0x1000000) != 0)
  {
    v4 = objc_autoreleasePoolPush();
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 116) & 4) == 0)
  {
    _dispatch_mach_connect_invoke(a1);
  }

  if (*(v3 + 40))
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
  }

  _dispatch_client_callout4(*(v3 + 48), 8, 0, 0, v5);
  if (v4)
  {
    objc_autoreleasePoolPop(v4);
  }

  *(a1 + 116) |= 8u;
}